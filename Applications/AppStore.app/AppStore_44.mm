uint64_t sub_1004DBEC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1004DBF0C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_10096D4D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FlowcaseItemLayout.Metrics();
  sub_1000056A8(v2, qword_1009CEA50);
  type metadata accessor for FlowcaseItemLayout();
  sub_1004DBEC4(&unk_100979610, &type metadata accessor for FlowcaseItemLayout, &protocol conformance descriptor for FlowcaseItemLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  if (qword_10096D4D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Separator();
  sub_1000056A8(v3, qword_1009CEA68);
  CGSize.adding(separator:in:)();
  v5 = v4;
  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 absoluteDimension:v5];
  v10 = [v8 absoluteDimension:v7];
  v11 = [objc_opt_self() sizeWithWidthDimension:v9 heightDimension:v10];

  v12 = [objc_opt_self() itemWithLayoutSize:v11];
  v13 = objc_opt_self();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007B0B70;
  *(v14 + 32) = v12;
  sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
  v15 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [v13 verticalGroupWithLayoutSize:v11 subitems:isa];

  return v17;
}

void sub_1004DC1C0(uint64_t a1, char a2, Swift::Bool a3)
{
  v4 = v3;
  v17.value.super.isa = 0;
  v17.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v17, a3);
  type metadata accessor for ArtworkView();
  sub_1004DE9F8(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = qword_100988CC0;
    v7 = Strong;
    v8 = [*(Strong + qword_100988CC0) layer];
    [v8 removeAllAnimations];

    [*&v7[v6] setImage:0];
    type metadata accessor for VideoView(0);
    sub_1004DE9F8(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  v9 = *(v4 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v11 = *&v9[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
    v12 = v9;
    v13 = v11;
    v18.value.super.isa = 0;
    v18.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v18, v14);

    v15 = *&v9[v10];
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

void *sub_1004DC3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {

      return sub_10002B894(v7, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9AF4(a3, 1, a2, v7);

      return (*(v11 + 8))(v7, v10);
    }
  }

  return result;
}

double sub_1004DC560(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = *a1;
  ObjectType = swift_getObjectType();

  return sub_1004DC670(v13, a8, a6, v8, ObjectType, a2, a3);
}

double sub_1004DC670(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int *a5, double a6, double a7)
{
  v12 = AppEvent.title.getter();
  v14 = v13;
  v15 = AppEvent.kind.getter();
  v17 = v16;
  v18 = AppEvent.subtitle.getter();
  v20 = v19;
  v21 = sub_100287254(a3);
  v22 = sub_1004DC75C(v12, v14, v15, v17, v18, v20, v21 & 1, a2, a6, a7, a4, a5);

  return v22;
}

double sub_1004DC75C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, double a9, double a10, uint64_t a11, int *a12)
{
  v82 = a5;
  v83 = a6;
  v92 = a3;
  v77 = a1;
  v78 = a2;
  v86 = type metadata accessor for AppEventCardLayout.Metrics(0);
  __chkstk_darwin(v86);
  v80 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v87);
  v81 = (v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for LabelPlaceholderCompatibility();
  v74 = *(v18 - 8);
  __chkstk_darwin(v18);
  v79 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v76 = v72 - v21;
  __chkstk_darwin(v22);
  v72[0] = v72 - v23;
  v24 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v99 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v98 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v97 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v96 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v102 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v95 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v94 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v101 = LayoutViewPlaceholder.init(representing:)();
  v25 = [a8 traitCollection];
  static Separator.thickness(compatibleWith:)();

  swift_allocObject();
  v85 = LayoutViewPlaceholder.init(representing:)();
  v26 = 0;
  v27 = 0;
  if (a7)
  {
    swift_allocObject();
    v27 = LayoutViewPlaceholder.init(representing:)();
    swift_allocObject();
    v26 = LayoutViewPlaceholder.init(representing:)();
  }

  v93 = v26;
  v84 = v27;
  v28 = [a8 traitCollection];
  v29 = [v28 preferredContentSizeCategory];
  v30 = static UIContentSizeCategory.>= infix(_:_:)();

  v100 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E3A0 != -1)
  {
    swift_once();
  }

  v91 = type metadata accessor for FontUseCase();
  sub_1000056A8(v91, qword_1009D1A60);
  v31 = a8;
  v32 = [a8 traitCollection];
  v33 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v73 = v30;
  v34 = type metadata accessor for Feature();
  v124[3] = v34;
  v90 = sub_1004DE9F8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v124[4] = v90;
  v35 = sub_1000056E0(v124);
  v36 = *(*(v34 - 8) + 104);
  v89 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v88 = v36;
  v36(v35);
  isFeatureEnabled(_:)();
  sub_100007000(v124);

  v37 = v33;
  v72[1] = ~v30;
  v38 = v72[0];
  v75 = v37;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v39 = *(v74 + 1);
  v39(v38, v18);
  if (qword_10096E3A8 != -1)
  {
    swift_once();
  }

  v74 = a12;
  sub_1000056A8(v91, qword_1009D1A78);
  v40 = [v31 traitCollection];
  v41 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v123[3] = v34;
  v123[4] = v90;
  v42 = sub_1000056E0(v123);
  v88(v42, v89, v34);
  isFeatureEnabled(_:)();
  sub_100007000(v123);
  v92 = v31;

  v43 = v41;
  v44 = v76;
  v78 = v43;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v39(v44, v18);
  if (qword_10096E3B0 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v91, qword_1009D1A90);
  v45 = [v92 traitCollection];
  v46 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v122[3] = v34;
  v122[4] = v90;
  v47 = sub_1000056E0(v122);
  v88(v47, v89, v34);
  isFeatureEnabled(_:)();
  sub_100007000(v122);

  v48 = v46;
  v49 = v79;
  v100 = v48;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v39(v49, v18);
  if (qword_10096EB98 != -1)
  {
    swift_once();
  }

  v50 = sub_1000056A8(v86, qword_1009D3058);
  v51 = v80;
  sub_100150A20(v50, v80);
  v121 = &protocol witness table for LayoutViewPlaceholder;
  v120 = v24;
  *&v119 = v99;
  v118 = &protocol witness table for LayoutViewPlaceholder;
  v117 = v24;
  v115 = &protocol witness table for LayoutViewPlaceholder;
  *&v116 = v98;
  v114 = v24;
  v112 = &protocol witness table for LayoutViewPlaceholder;
  *&v113 = v97;
  v111 = v24;
  v109 = &protocol witness table for LayoutViewPlaceholder;
  *&v110 = v96;
  v108 = v24;
  *&v107 = v102;
  sub_10002C0AC(v124, v106);
  sub_10002C0AC(v123, v105);
  sub_10002C0AC(v122, v103);
  v52 = v84;
  if (v84)
  {
    v53 = v24;
  }

  else
  {
    v53 = 0;
  }

  if (v84)
  {
    v54 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v54 = 0;
  }

  v90 = v54;
  v91 = v53;
  v55 = v93;
  if (v93)
  {
    v56 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v56 = 0;
  }

  if (v93)
  {
    v57 = v24;
  }

  else
  {
    v57 = 0;
  }

  v58 = v81;
  sub_100151060(v51, v81);
  v59 = v87;
  sub_100005A38(&v119, v58 + *(v87 + 20));
  sub_100005A38(&v116, v58 + v59[6]);
  sub_100005A38(&v113, v58 + v59[7]);
  sub_100005A38(&v110, v58 + v59[8]);
  sub_100005A38(&v107, v58 + v59[9]);
  v60 = (v58 + v59[10]);
  v61 = v94;
  *v60 = v95;
  v60[3] = v24;
  v60[4] = &protocol witness table for LayoutViewPlaceholder;
  v62 = (v58 + v59[11]);
  *v62 = v61;
  v62[3] = v24;
  v62[4] = &protocol witness table for LayoutViewPlaceholder;
  v63 = (v58 + v59[12]);
  *v63 = v101;
  v63[3] = v24;
  v63[4] = &protocol witness table for LayoutViewPlaceholder;
  sub_100005A38(v106, v58 + v59[13]);
  sub_100005A38(v105, v58 + v59[14]);
  v64 = v58 + v59[15];
  v65 = v103[1];
  *v64 = v103[0];
  *(v64 + 1) = v65;
  *(v64 + 4) = v104;
  v66 = (v58 + v59[16]);
  *v66 = v85;
  v66[3] = v24;
  v66[4] = &protocol witness table for LayoutViewPlaceholder;
  v67 = (v58 + v59[17]);
  *v67 = v52;
  v67[1] = 0;
  v68 = v90;
  v69 = v91;
  v67[2] = 0;
  v67[3] = v69;
  v67[4] = v68;
  v70 = (v58 + v59[18]);
  *v70 = v55;
  v70[1] = 0;
  v70[2] = 0;
  v70[3] = v57;
  v70[4] = v56;

  sub_100152848(v92, v58, v74, a9, a10);

  sub_1001A9220(v58);
  sub_100007000(v122);
  sub_100007000(v123);
  sub_100007000(v124);
  return a9;
}

double sub_1004DD270(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MetricsPipeline();
  v168 = *(v6 - 8);
  v169 = v6;
  __chkstk_darwin(v6);
  v167 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v8 - 8);
  v164 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v163 = &v145 - v11;
  v12 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v12 - 8);
  v161 = &v145 - v13;
  v14 = type metadata accessor for VideoControls();
  __chkstk_darwin(v14 - 8);
  v159 = &v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v158 = &v145 - v17;
  v18 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v18 - 8);
  v157 = &v145 - v19;
  v155 = type metadata accessor for VideoFillMode();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v156 = &v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for VideoConfiguration();
  v160 = *(v162 - 8);
  __chkstk_darwin(v162);
  v166 = &v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v22 - 8);
  v145 = &v145 - v23;
  v24 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v24 - 8);
  v148 = &v145 - v25;
  v26 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v26 - 8);
  v151 = &v145 - v27;
  v28 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v28 - 8);
  v152 = &v145 - v29;
  v30 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v30 - 8);
  v149 = &v145 - v31;
  v32 = sub_10002849C(&unk_100970170, &unk_1007BDDF0);
  __chkstk_darwin(v32 - 8);
  v34 = &v145 - v33;
  v35 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v146 = *(v35 - 8);
  __chkstk_darwin(v35);
  v147 = &v145 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v37 - 8);
  v150 = &v145 - v38;
  v39 = type metadata accessor for MediaOverlayStyle();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v145 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = AppEvent.kind.getter();
  sub_100626BC0(v43, v44);
  v45 = AppEvent.title.getter();
  sub_100626BCC(v45, v46);
  v47 = AppEvent.subtitle.getter();
  sub_100626BD8(v47, v48);
  v49 = *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView];
  AppEvent.mediaOverlayStyle.getter();
  v50 = MediaOverlayStyle.userInterfaceStyle.getter();
  (*(v40 + 8))(v42, v39);
  v153 = v49;
  [v49 setOverrideUserInterfaceStyle:v50];
  sub_10062715C();
  v170 = a2;
  v171 = a1;
  if ((sub_100287254(a2) & 1) == 0)
  {
    v61 = OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView;
    v62 = *&v3[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView];
    v56 = v3;
    if (v62)
    {
      [v62 removeFromSuperview];
      v63 = *&v3[v61];
    }

    else
    {
      v63 = 0;
    }

    v64 = v166;
    *&v3[v61] = 0;

    sub_100629440();
    v65 = &v3[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction];
    v66 = *&v3[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction];
    v67 = *&v3[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction + 8];
    *v65 = 0;
    *(v65 + 1) = 0;
    goto LABEL_47;
  }

  v51 = OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView;
  if (!*&v3[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView])
  {
    v52 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_10062B2CC();
    v53 = *&v3[v51];
    *&v3[v51] = v52;
    v54 = v52;

    sub_100629278();
  }

  v55 = OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView;
  v56 = v3;
  if (!*&v3[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView])
  {
    v57 = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v58 = *&v3[v55];
    if (v58)
    {
      [v58 removeFromSuperview];
      v59 = v3;
      v60 = *&v3[v55];
    }

    else
    {
      v59 = v3;
      v60 = 0;
    }

    *&v59[v55] = v57;
    v68 = v57;

    sub_100629440();
    v56 = v59;
  }

  v69 = *&v56[v51];
  if (v69)
  {
    [v69 setHidden:0];
  }

  v70 = *&v56[v55];
  if (v70)
  {
    [v70 setHidden:0];
    v71 = *&v56[v55];
    if (v71)
    {
      v165 = v56;
      v72 = v71;
      v73 = AppEvent.lockup.getter();
      v74 = v146;
      v75 = *(v146 + 104);
      v75(v147, enum case for OfferButtonPresenterViewAlignment.right(_:), v35);
      v75(v34, enum case for OfferButtonPresenterViewAlignment.left(_:), v35);
      (*(v74 + 56))(v34, 0, 1, v35);
      sub_1004DE9F8(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
      v76 = v150;
      AccessibilityConditional.init(value:axValue:)();
      v77 = sub_10002849C(&unk_100973240, qword_1007B2220);
      (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
      v78 = type metadata accessor for OfferStyle();
      v79 = v149;
      (*(*(v78 - 8) + 56))(v149, 1, 1, v78);
      v80 = type metadata accessor for OfferEnvironment();
      v81 = v152;
      (*(*(v80 - 8) + 56))(v152, 1, 1, v80);
      v82 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
      v83 = v151;
      (*(*(v82 - 8) + 56))(v151, 1, 1, v82);
      v84 = type metadata accessor for OfferTint();
      v85 = v148;
      (*(*(v84 - 8) + 56))(v148, 1, 1, v84);
      sub_1004F3190(v73, v72, v76, v170, 0, 0, v79, v81, v85, v83);
      sub_10002B894(v85, &unk_100973AD0, &unk_1007B17C0);
      v72[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
      sub_10070AB34();
      [v72 setNeedsLayout];
      v86 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
      v87 = *&v72[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
      if (v87)
      {
        [v87 setHidden:1];
        v88 = *&v72[v86];
        if (v88)
        {
          [v88 setText:0];
        }
      }

      v89 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
      v90 = *&v72[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
      if (v90)
      {
        if (([v90 isHidden] & 1) == 0)
        {
          v91 = *&v72[v89];
          if (v91)
          {
            if ([v91 hasContent])
            {
              v92 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
              [*&v72[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
              [*&v72[v92] setText:0];
            }
          }
        }
      }

      v93 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel;
      if ([*&v72[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel] isHidden])
      {

        sub_10002B894(v151, &unk_100970150, &unk_1007BDDD0);
        sub_10002B894(v152, &unk_100970160, &unk_1007BDDE0);
        sub_10002B894(v79, &qword_100973AE0, &unk_1007B17D0);
        sub_10002B894(v150, &unk_100973230, &unk_1007B17E0);
        v56 = v165;
        v94 = *&v165[v55];
        if (!v94)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v95 = [*&v72[v93] hasContent];
        v56 = v165;
        if (v95)
        {
          v96 = *&v72[v89];
          if (v96)
          {
            [v96 setHidden:1];
            v97 = *&v72[v89];
            if (v97)
            {
              [v97 setText:0];
            }
          }

          v98 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
          [*&v72[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
          [*&v72[v98] setText:0];

          sub_10002B894(v151, &unk_100970150, &unk_1007BDDD0);
          sub_10002B894(v152, &unk_100970160, &unk_1007BDDE0);
          sub_10002B894(v79, &qword_100973AE0, &unk_1007B17D0);
          sub_10002B894(v150, &unk_100973230, &unk_1007B17E0);
        }

        else
        {

          sub_10002B894(v151, &unk_100970150, &unk_1007BDDD0);
          sub_10002B894(v152, &unk_100970160, &unk_1007BDDE0);
          sub_10002B894(v79, &qword_100973AE0, &unk_1007B17D0);
          sub_10002B894(v150, &unk_100973230, &unk_1007B17E0);
        }

        v94 = *&v56[v55];
        if (!v94)
        {
          goto LABEL_43;
        }
      }

      v99 = *(v94 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
      if (!v99)
      {
        goto LABEL_39;
      }

      v100 = qword_10096DD98;
      v101 = v99;
      if (v100 != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for FontUseCase();
      v103 = sub_1000056A8(v102, qword_1009D0860);
      v104 = *(v102 - 8);
      v105 = v145;
      (*(v104 + 16))(v145, v103, v102);
      (*(v104 + 56))(v105, 0, 1, v102);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

      v94 = *&v56[v55];
      if (v94)
      {
LABEL_39:
        v106 = *(v94 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
        if (v106)
        {
          v107 = qword_10096DDB0;
          v108 = v106;
          if (v107 != -1)
          {
            swift_once();
          }

          v109 = type metadata accessor for FontUseCase();
          v110 = sub_1000056A8(v109, qword_1009D08A8);
          v111 = *(v109 - 8);
          v112 = v145;
          (*(v111 + 16))(v145, v110, v109);
          (*(v111 + 56))(v112, 0, 1, v109);
          dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
        }
      }
    }
  }

LABEL_43:
  AppEvent.lockup.getter();
  v113 = Lockup.clickAction.getter();

  if (v113)
  {
    v114 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v115 = swift_allocObject();
    v116 = v170;
    v115[2] = v114;
    v115[3] = v116;
    v115[4] = v113;
    v113 = swift_allocObject();
    *(v113 + 16) = sub_1004DE9EC;
    *(v113 + 24) = v115;

    v117 = sub_10041D558;
  }

  else
  {
    v117 = 0;
  }

  v64 = v166;
  v118 = &v56[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction];
  v66 = *&v56[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction];
  v67 = *&v56[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction + 8];
  *v118 = v117;
  v118[1] = v113;
LABEL_47:
  sub_10001F63C(v66, v67);
  if (AppEvent.moduleVideo.getter())
  {
    (*(v154 + 104))(v156, enum case for VideoFillMode.scaleAspectFill(_:), v155);
    Video.preview.getter();
    Artwork.size.getter();
    v119 = v157;
    AspectRatio.init(_:_:)();

    v120 = type metadata accessor for AspectRatio();
    (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
    Video.playbackControls.getter();
    v165 = v56;
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v121 = v161;
    Video.videoUrl.getter();
    v122 = type metadata accessor for URL();
    (*(*(v122 - 8) + 56))(v121, 0, 1, v122);
    v123 = v163;
    Video.templateMediaEvent.getter();
    v124 = v164;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView(0);
    sub_1004DE9F8(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v125 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v124, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v123, &unk_100973A50, &unk_1007B4FD0);
    v126 = v121;
    v56 = v165;
    sub_10002B894(v126, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(v172, &qword_10096FB90, &qword_1007B2A50);
    sub_10062B374();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v128 = Strong;
      [v153 insertSubview:Strong aboveSubview:*&v56[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView]];
      [v56 setNeedsLayout];

      (*(v160 + 8))(v64, v162);
    }

    else
    {
      (*(v160 + 8))(v64, v162);
    }
  }

  else
  {
    sub_10062B374();
    swift_unknownObjectWeakAssign();
    v129 = swift_unknownObjectWeakLoadStrong();
    if (v129)
    {
      v130 = v129;
      [v153 insertSubview:v129 aboveSubview:*&v56[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView]];
      [v56 setNeedsLayout];
    }
  }

  type metadata accessor for UserNotificationsManager();
  type metadata accessor for BaseObjectGraph();
  v131 = v170;
  inject<A, B>(_:from:)();
  v132 = v172[0];

  v133 = AppEvent.notificationConfig.getter();
  type metadata accessor for NotifyMeButtonPresenter(0);
  v134 = swift_allocObject();
  v135 = v134 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  *(v134 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v134 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v134 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v135 + 8) = &off_1008CC2D0;
  swift_unknownObjectWeakAssign();
  *(v134 + 16) = v132;
  *(v134 + 24) = v133;
  v166 = v133;

  v136 = v56;
  v137 = v167;
  v138 = v169;
  inject<A, B>(_:from:)();
  (*(v168 + 32))(v134 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_metricsPipeline, v137, v138);
  *(v134 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_objectGraph) = v131;
  type metadata accessor for ASKBagContract();

  inject<A, B>(_:from:)();
  *(v134 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_bag) = v172[5];
  sub_10034B790();
  sub_10034C234();
  v139 = objc_opt_self();
  v140 = [v139 defaultCenter];

  v141 = static UserNotificationsManager.userNotificationsDidChangeNotification.getter();
  [v140 addObserver:v134 selector:"userNotificationsDidChangeNotification:" name:v141 object:0];

  v142 = [v139 defaultCenter];
  [v142 addObserver:v134 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v143 = [v139 defaultCenter];
  [v143 addObserver:v134 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];

  sub_10062735C(v134);
  v136[OBJC_IVAR____TtC8AppStore16AppEventCardView_includeBorderInDarkMode] = AppEvent.includeBorderInDarkMode.getter() & 1;
  sub_10062715C();

  return result;
}

uint64_t sub_1004DE9F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004DEA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = type metadata accessor for SmallLockupLayout.Metrics();
  v45 = *(v11 - 1);
  v46 = v11;
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for Artwork.Crop();
  v48 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[3] = a4;
  v51[4] = a5;
  v18 = sub_1000056E0(v51);
  (*(*(a4 - 8) + 16))(v18, a1, a4);
  sub_10002C0AC(v51, v50);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for AppEvent();
  if (!swift_dynamicCast())
  {
    return sub_100007000(v51);
  }

  v19 = v49;
  if (qword_10096EB98 != -1)
  {
    swift_once();
  }

  v47 = v15;
  v44 = a2;
  v20 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_1000056A8(v20, qword_1009D3058);
  AspectRatio.height(fromWidth:)();
  v21 = AppEvent.moduleVideo.getter();
  v43 = v19;
  if (v21)
  {
    Video.preview.getter();

    v22 = v48;
LABEL_8:
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v22 + 8))(v17, v47);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v24 = *(a3 + OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v24 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      type metadata accessor for VideoView(0);
      sub_1004DE9F8(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    else
    {
      type metadata accessor for ArtworkView();
      sub_1004DE9F8(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    v22 = v48;
    goto LABEL_14;
  }

  v23 = AppEvent.moduleArtwork.getter();
  v22 = v48;
  if (v23)
  {

    goto LABEL_8;
  }

LABEL_14:
  v27 = *(a3 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView);
  if (v27)
  {
    v28 = v27;
    AppEvent.lockup.getter();
    v29 = dispatch thunk of Lockup.artwork.getter();

    if (v29)
    {
      v30 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
      swift_beginAccess();
      v32 = v45;
      v31 = v46;
      (*(v45 + 16))(v13, &v28[v30], v46);
      SmallLockupLayout.Metrics.artworkSize.getter();
      (*(v32 + 8))(v13, v31);
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      v45 = *(v22 + 8);
      (v45)(v17, v47);
      v33 = Artwork.config(_:mode:prefersLayeredImage:)();
      v42 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
      v34 = *&v28[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
      v46 = v28;
      v35 = v34;
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v35 setContentMode:Artwork.contentMode.getter()];
      v48 = v33;
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v36 = v42;
      v37 = *&v28[v42];
      Artwork.crop.getter();
      v38 = Artwork.Crop.preferredContentMode.getter();
      (v45)(v17, v47);
      [v37 setContentMode:v38];

      v28 = *&v28[v36];
      v39 = v46;

      type metadata accessor for ArtworkView();
      sub_1004DE9F8(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }

  else
  {
  }

  return sub_100007000(v51);
}

void *sub_1004DF178(double a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for Artwork.Crop();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _swiftEmptyArrayStorage;
  if (qword_10096EB98 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_1000056A8(v8, qword_1009D3058);
  AspectRatio.height(fromWidth:)();
  if (AppEvent.moduleVideo.getter())
  {
    Video.preview.getter();
  }

  else if (!AppEvent.moduleArtwork.getter())
  {
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  Artwork.crop.getter();
  Artwork.Crop.preferredContentMode.getter();
  (*(v5 + 8))(v7, v4);
  Artwork.config(_:mode:prefersLayeredImage:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v9 = v17;
LABEL_9:
  AppEvent.lockup.getter();
  v10 = dispatch thunk of Lockup.artwork.getter();

  if (v10)
  {
    v11 = [a3 traitCollection];
    v12 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v12)
    {
      if (qword_10096EB90 != -1)
      {
        swift_once();
      }

      v13 = qword_1009D3040;
    }

    else
    {
      if (qword_10096EB88 != -1)
      {
        swift_once();
      }

      v13 = qword_1009D3028;
    }

    v14 = type metadata accessor for SmallLockupLayout.Metrics();
    sub_1000056A8(v14, v13);
    SmallLockupLayout.Metrics.artworkSize.getter();
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v5 + 8))(v7, v4);
    Artwork.config(_:mode:prefersLayeredImage:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v17;
  }

  else
  {
  }

  return v9;
}

uint64_t type metadata accessor for VideoView(uint64_t a1)
{
  result = qword_100988D20;
  if (!qword_100988D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004DF598(uint64_t a1)
{
  sub_1004E6944(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      type metadata accessor for VideoConfiguration();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1004DF750()
{
  v1 = v0;
  v2 = type metadata accessor for VideoConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_1009D2200;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = VideoConfiguration.allowsAutoPlay.getter();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1004DF87C()
{
  v1 = v0;
  v2 = qword_100988CE0;
  v3 = *(v0 + qword_100988CE0);
  if (v3 || (sub_1004E053C(), (v3 = *(v0 + v2)) != 0))
  {
    v4 = v3;
    v5 = dispatch thunk of VideoPlayer.shouldBePlaying.getter();

    if ((v5 & 1) == 0)
    {
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = *(v1 + v2);
      if (v7)
      {
        swift_retain_n();
        v8 = v7;
        if ([v8 isMuted] & 1) != 0 && ((*((swift_isaMask & *v1) + qword_1009D2210 + 752))())
        {

          sub_1004BB7B4(sub_1004E94DC, v6);

LABEL_12:

          return;
        }
      }

      else
      {
        swift_retain_n();
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = *(Strong + qword_100988CE0);

        [v11 play];

        return;
      }

      goto LABEL_12;
    }
  }
}

uint64_t sub_1004DFA48()
{
  type metadata accessor for RoundedCornerView();
  v0 = method lookup function for RoundedCornerView();

  return v0();
}

void sub_1004DFA90(uint64_t a1)
{
  type metadata accessor for RoundedCornerView();
  v2 = method lookup function for RoundedCornerView();
  v2(a1);

  sub_1004E5878();
}

uint64_t (*sub_1004DFAF0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  type metadata accessor for RoundedCornerView();
  v5 = method lookup function for RoundedCornerView();
  *(v4 + 40) = v5(v4);
  return sub_1004DFB90;
}

void sub_1004DFB90(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1004E5878();
  }

  free(v3);
}

double sub_1004DFBEC(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_100988CB0 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v3 = *(v2 + qword_100988CE0);
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC8AppStore15VideoMirrorView_videoLayer);
      v6 = v3;
      [v5 setPlayer:v6];
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1004DFC98()
{
  v1 = *(v0 + qword_100988CE0);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 currentItem];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 tracks];

  sub_100005744(0, &unk_100988E80, AVPlayerItemTrack_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 assetTrack];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 mediaType];

        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
        if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
        {

LABEL_23:
          i = 1;
          goto LABEL_24;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      ++v7;
      if (v10 == i)
      {
        i = 0;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_24:

  return i;
}

uint64_t sub_1004DFED0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = type metadata accessor for VideoConfiguration();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VideoControls();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + qword_1009D21D0);
  if (v12)
  {
    v29[0] = v9;
    v29[1] = a1;
    v13 = *(v1 + qword_1009D21D0 + 8);

    v14 = dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter();
    v15 = qword_1009D2200;
    v16 = (v4 + 16);
    v17 = (v4 + 8);
    if (v14)
    {
      swift_beginAccess();
      v18 = v2 + v15;
      v19 = v30;
      (*v16)(v6, v18, v30);
      VideoConfiguration.autoPlayPlaybackControls.getter();
    }

    else
    {
      swift_beginAccess();
      v25 = v2 + v15;
      v19 = v30;
      (*v16)(v6, v25, v30);
      VideoConfiguration.playbackControls.getter();
    }

    (*v17)(v6, v19);
    v26 = dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter();
    v12(v11, v26 & 1);
    sub_10001F63C(v12, v13);
    return (*(v8 + 8))(v11, v29[0]);
  }

  else
  {
    v20 = dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter();
    v21 = qword_1009D2200;
    v22 = (v4 + 16);
    if (v20)
    {
      swift_beginAccess();
      v23 = v2 + v21;
      v24 = v30;
      (*v22)(v6, v23, v30);
      VideoConfiguration.autoPlayPlaybackControls.getter();
    }

    else
    {
      swift_beginAccess();
      v28 = v2 + v21;
      v24 = v30;
      (*v22)(v6, v28, v30);
      VideoConfiguration.playbackControls.getter();
    }

    return (*(v4 + 8))(v6, v24);
  }
}

uint64_t sub_1004E01F8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for VideoPlayerState();
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + qword_100988CE0);
  if (v8)
  {
    v14 = v4;
    v9 = v8;
    dispatch thunk of VideoPlayer.state.getter();

    return (*(v14 + 32))(a1, v7, v3);
  }

  else
  {
    v11 = enum case for VideoPlayerState.unknown(_:);
    v12 = *(v4 + 104);

    return v12(a1, v11, v3, v5);
  }
}

uint64_t sub_1004E032C(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for VideoConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = qword_1009D2200;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_1004E805C(&unk_100988E70, &type metadata accessor for VideoConfiguration, &protocol conformance descriptor for VideoConfiguration);
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_1004E77F8();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void sub_1004E053C()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004E1D9C();
  v6 = qword_100988CE0;
  v7 = *(v0 + qword_100988CE0);
  if (v7 || (((*(v3 + 16))(v5, v0 + qword_1009D21C8, v2), v8 = objc_allocWithZone(type metadata accessor for VideoPlayer()), v9 = VideoPlayer.init(with:)(), (v10 = *(v0 + v6)) == 0) ? (v12 = 0) : (v11 = v10, dispatch thunk of VideoPlayer.delegate.setter(), v11, v12 = *(v1 + v6)), *(v1 + v6) = v9, v13 = v9, v12, sub_1004E3D80(), v13, (v7 = *(v1 + v6)) != 0))
  {
    v14 = v7;
    dispatch thunk of VideoPlayer.startPreloading()();
  }
}

void sub_1004E069C(char a1)
{
  if (a1)
  {
    v2 = *(v1 + qword_100988CE8);
    if (v2)
    {
      v7[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      v7[5] = 0;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_100235C48;
      v7[3] = &unk_1008C6390;
      v3 = _Block_copy(v7);
      v4 = v2;
      [v4 exitFullScreenAnimated:0 completionHandler:v3];
      _Block_release(v3);
    }

    v5 = *(v1 + qword_100988CE0);
    if (v5)
    {
      v6 = v5;
      dispatch thunk of VideoPlayer.releaseAssets()();
    }
  }

  else
  {
    *(v1 + qword_100988D18) = 1;
  }
}

void sub_1004E079C()
{
  v1 = qword_100988CE8;
  v2 = *(v0 + qword_100988CE8);
  if (v2)
  {
    v3 = [v2 view];
  }

  else
  {
    v3 = 0;
  }

  [v3 removeFromSuperview];

  v4 = *(v0 + v1);
  *(v0 + v1) = 0;
}

uint64_t sub_1004E081C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v39 = a1;
  v5 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v5 - 8);
  v40 = &v37 - v6;
  v7 = sub_10002849C(&qword_100988E60, &qword_1007D1C38);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_10002849C(&qword_100988E68, qword_1007D1C40);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = type metadata accessor for MetricsData();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031660(v3 + qword_1009D2198, v15, &unk_100973A50, &unk_1007B4FD0);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v38 = a3;
    (*(v17 + 32))(v19, v15, v16);
    v21 = qword_100988CE0;
    v22 = *(v3 + qword_100988CE0);
    if (!v22)
    {
      (*(v17 + 8))(v19, v16);
      v20 = 1;
      a3 = v38;
      return (*(v17 + 56))(a3, v20, 1, v16);
    }

    v23 = v3;
    v24 = v22;
    v25 = dispatch thunk of VideoPlayer.playerItem.getter();
    if (v25)
    {
      v26 = *(v23 + v21);
      if (v26)
      {
        v27 = [v26 currentItem];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 asset];

          v30 = String._bridgeToObjectiveC()();
          v31 = [v29 statusOfValueForKey:v30 error:0];

          if (v31 == 2)
          {
            [v25 duration];
            [v25 currentTime];
            CMTimeGetSeconds(&time);

LABEL_12:
            v32 = type metadata accessor for MediaMetricsEvent.ActionType();
            v33 = *(v32 - 8);
            (*(v33 + 16))(v12, v39, v32);
            (*(v33 + 56))(v12, 0, 1, v32);
            v34 = type metadata accessor for MediaMetricsEvent.ActionContext();
            (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
            v35 = v40;
            dispatch thunk of VideoPlayer.videoUrl.getter();
            a3 = v38;
            static MediaMetricsEvent.fillIn(template:actionType:actionDetails:actionContext:url:duration:position:)();

            sub_10002B894(v35, &qword_100982460, &unk_1007B5C90);
            sub_10002B894(v9, &qword_100988E60, &qword_1007D1C38);
            sub_10002B894(v12, &qword_100988E68, qword_1007D1C40);
            (*(v17 + 8))(v19, v16);
            v20 = 0;
            return (*(v17 + 56))(a3, v20, 1, v16);
          }
        }
      }
    }

    v37 = 0;
    goto LABEL_12;
  }

  sub_10002B894(v15, &unk_100973A50, &unk_1007B4FD0);
  v20 = 1;
  return (*(v17 + 56))(a3, v20, 1, v16);
}

uint64_t sub_1004E0DA8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10002849C(&unk_100988DF0, &qword_1007D1C00);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for MediaMetricsEvent.ActionType();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for MediaMetricsEvent.ActionType.stop(_:), v12, v14);
  if (a2)
  {
    v17 = enum case for MediaMetricsEvent.ActionDetails.complete(_:);
    v18 = type metadata accessor for MediaMetricsEvent.ActionDetails();
    (*(*(v18 - 8) + 104))(v8, v17, v18);
  }

  else
  {
    v18 = type metadata accessor for MediaMetricsEvent.ActionDetails();
    if (a1)
    {
      v19 = &enum case for MediaMetricsEvent.ActionDetails.pause(_:);
    }

    else
    {
      v19 = &enum case for MediaMetricsEvent.ActionDetails.autopause(_:);
    }

    (*(*(v18 - 8) + 104))(v8, *v19, v18);
  }

  type metadata accessor for MediaMetricsEvent.ActionDetails();
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  sub_1004E946C(v8, v11);
  sub_1004E081C(v16, v11, a3);
  sub_10002B894(v11, &unk_100988DF0, &qword_1007D1C00);
  return (*(v13 + 8))(v16, v12);
}

id sub_1004E1028()
{
  v1 = qword_100988CF8;
  result = [*&v0[qword_100988CF8] isHidden];
  if ((result & 1) == 0)
  {
    v3 = *&v0[v1];
    [v0 bounds];
    [v3 sizeThatFits:{v4, v5}];
    v7 = v6;
    v9 = v8;

    v10 = &v0[qword_1009D21B8];
    if (v0[qword_1009D21B8 + 16])
    {
      [v0 bounds];
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
      MidX = CGRectGetMidX(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      MidY = CGRectGetMidY(v20);
    }

    else
    {
      MidX = *v10;
      MidY = v10[1];
    }

    v17 = *&v0[v1];

    return [v17 setFrame:{MidX - v7 * 0.5, MidY - v9 * 0.5, v7, v9}];
  }

  return result;
}

uint64_t sub_1004E1178()
{
  v1 = v0;
  v94 = type metadata accessor for VideoControls();
  v2 = *(v94 - 8);
  __chkstk_darwin(v94);
  v4 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v96 = &v84 - v6;
  v7 = type metadata accessor for VideoPlayerState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v85 = &v84 - v12;
  __chkstk_darwin(v13);
  v86 = &v84 - v14;
  __chkstk_darwin(v15);
  v92 = &v84 - v16;
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  v22 = __chkstk_darwin(v20);
  v23 = &v84 - v21;
  v24 = qword_100988D18;
  v25 = v1[qword_100988D18];
  v89 = v8;
  v87 = v26;
  if (v25 == 1)
  {
    v91 = v2;
    v27 = *&v1[qword_100988CE0];
    if (v27)
    {
      v28 = v27;
      dispatch thunk of VideoPlayer.state.getter();

      (*(v8 + 32))(v23, v19, v7);
      v29 = *(v8 + 104);
    }

    else
    {
      v29 = *(v8 + 104);
      v29(&v84 - v21, enum case for VideoPlayerState.unknown(_:), v7, v22);
    }

    v32 = v92;
    (v29)(v92, enum case for VideoPlayerState.paused(_:), v7);
    v33 = static VideoPlayerState.== infix(_:_:)();
    v34 = *(v8 + 8);
    v34(v32, v7);
    v34(v23, v7);
    if (v33)
    {
      v1[v24] = 0;
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = sub_1004E9464;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    v2 = v91;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v35 = qword_100988CE0;
  v36 = *&v1[qword_100988CE0];
  v88 = v7;
  v95 = v31;
  v90 = qword_100988CE0;
  if (!v36)
  {
    v43 = v2;
    v48 = 0;
    v49 = &v1[qword_1009D21E8];
    v50 = v1[qword_1009D21E8] ^ 1;
    goto LABEL_22;
  }

  v37 = [v36 currentItem];
  if (v37)
  {
    v38 = v4;
    v39 = v2;
    v40 = v37;
    [v37 currentTime];
    CMTime.init(seconds:preferredTimescale:)(0.0, 1000000000);
    v41 = static CMTime.== infix(_:_:)();

    v2 = v39;
    v4 = v38;
    v31 = v95;
    v42 = *&v1[v35];
    if (v42)
    {
      goto LABEL_13;
    }

LABEL_17:
    v43 = v2;
    v45 = 0;
    goto LABEL_18;
  }

  v41 = 1;
  v42 = *&v1[v35];
  if (!v42)
  {
    goto LABEL_17;
  }

LABEL_13:
  v43 = v2;
  v44 = v42;
  v45 = dispatch thunk of VideoPlayer.isLoading.getter();

  v46 = *&v1[v35];
  if (!v46)
  {
LABEL_18:
    v48 = 0;
    goto LABEL_19;
  }

  v47 = v46;
  v48 = dispatch thunk of VideoPlayer.isPlaying.getter();

LABEL_19:
  v49 = &v1[qword_1009D21E8];
  v51 = v1[qword_1009D21E8] | v48;
  v52 = v51 | v41;
  v50 = v51 ^ 1;
  if ((v52 & 1) == 0 && (v45 & 1) == 0)
  {
    v48 = 0;
    v50 = v1[qword_100988CD8];
  }

LABEL_22:
  v53 = v1[qword_100988CC8];
  v93 = v30;
  sub_1004E1A14(v50 & 1, v53, v30, v31);
  v54 = v96;
  sub_1004DFED0(v96);
  static VideoControls.prominentPlay.getter();
  sub_1004E805C(&unk_100988DE0, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  v55 = v94;
  v56 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v59 = *(v43 + 8);
  v57 = v43 + 8;
  v58 = v59;
  v59(v4, v55);
  if (v56)
  {
    v60 = v48 ^ 1;
  }

  else
  {
    static VideoControls.prominentPlayOnPause.getter();
    v61 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v58(v4, v55);
    if (v61)
    {
      v62 = *&v1[v90];
      v91 = v57;
      if (v62)
      {
        v63 = v62;
        v64 = v85;
        dispatch thunk of VideoPlayer.state.getter();

        v65 = v88;
        v66 = v89;
        v67 = v86;
        (*(v89 + 32))(v86, v64, v88);
        v68 = *(v66 + 104);
      }

      else
      {
        v65 = v88;
        v66 = v89;
        v68 = *(v89 + 104);
        v67 = v86;
        (v68)(v86, enum case for VideoPlayerState.unknown(_:), v88);
      }

      v69 = v92;
      v86 = v68;
      (v68)(v92, enum case for VideoPlayerState.paused(_:), v65);
      v70 = static VideoPlayerState.== infix(_:_:)();
      v71 = *(v66 + 8);
      v71(v69, v65);
      v71(v67, v65);
      if (v70)
      {
        v60 = 1;
        v55 = v94;
        v54 = v96;
      }

      else
      {
        v72 = *&v1[v90];
        if (v72)
        {
          v73 = v72;
          v74 = v84;
          dispatch thunk of VideoPlayer.state.getter();

          (*(v89 + 32))(v87, v74, v65);
          v54 = v96;
          v75 = v86;
        }

        else
        {
          v75 = v86;
          (v86)(v87, enum case for VideoPlayerState.unknown(_:), v65);
          v54 = v96;
        }

        v76 = v92;
        (v75)(v92, enum case for VideoPlayerState.ended(_:), v65);
        v77 = v87;
        v60 = static VideoPlayerState.== infix(_:_:)();
        v71(v76, v65);
        v71(v77, v65);
        v55 = v94;
      }
    }

    else
    {
      v60 = 0;
      v54 = v96;
    }
  }

  v78 = v60 & ~*v49;
  v79 = objc_opt_self();
  v80 = swift_allocObject();
  *(v80 + 16) = v1;
  *(v80 + 24) = v78 & 1;
  aBlock[4] = sub_1004E9430;
  aBlock[5] = v80;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C6368;
  v81 = _Block_copy(aBlock);
  v82 = v1;

  [v79 animateWithDuration:4 delay:v81 options:0 animations:0.2 completion:0.0];
  _Block_release(v81);
  sub_10001F63C(v93, v95);
  return (v58)(v54, v55);
}

void sub_1004E1A14(char a1, char a2, uint64_t (*a3)(), uint64_t a4)
{
  if (a2)
  {
    v8 = a1 & 1;
    if (a1)
    {
      v9 = 0.2;
    }

    else
    {
      v9 = 0.5;
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = v8;
    v27 = sub_1004E9424;
    v28 = v10;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100007A08;
    v26 = &unk_1008C62A0;
    v11 = _Block_copy(&v23);
    v12 = v4;

    if (a3)
    {
      v27 = a3;
      v28 = a4;
      v23 = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_100504C5C;
      v26 = &unk_1008C6318;
      a3 = _Block_copy(&v23);
    }

    v13 = objc_opt_self();
    [v13 animateWithDuration:4 delay:v11 options:a3 animations:v9 completion:0.0];
    _Block_release(a3);
    _Block_release(v11);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v8;
    v27 = sub_1004E9514;
    v28 = v14;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100007A08;
    v26 = &unk_1008C62F0;
    v15 = _Block_copy(&v23);
    v16 = v12;

    [v13 animateWithDuration:4 delay:v15 options:0 animations:0.2 completion:0.0];
    _Block_release(v15);
  }

  else
  {
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = a1 & 1;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1004E9418;
    *(v19 + 24) = v18;
    v27 = sub_10006F094;
    v28 = v19;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1000489A8;
    v26 = &unk_1008C6250;
    v20 = _Block_copy(&v23);
    v21 = v4;

    [v17 performWithoutAnimation:v20];
    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1004E1D9C()
{
  v1 = qword_100988CE8;
  if (*&v0[qword_100988CE8])
  {
    return;
  }

  v2 = [objc_allocWithZone(type metadata accessor for AppStoreVideoPlayerViewController()) init];
  [v2 setShowsPlaybackControls:0];
  [v2 setAllowsVideoFrameAnalysis:0];
  [v2 setUpdatesNowPlayingInfoCenter:0];
  [v2 setCanPausePlaybackWhenExitingFullScreen:0];
  [v2 setPreferredUnobscuredArea:*&v0[qword_1009D21C0]];
  [v2 setShowsMinimalPlaybackControlsWhenEmbeddedInline:1];
  [v2 setDelegate:v0];
  v3 = v2;
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 setClipsToBounds:1];

  v6 = [v3 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6;
  v8 = [v0 backgroundColor];
  if (!v8)
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v8 = static UIColor.placeholderBackground.getter();
  }

  [v7 setBackgroundColor:v8];

  [v3 setModalPresentationStyle:5];
  [v3 setCanToggleVideoGravityWhenEmbeddedInline:0];
  v9 = [v3 view];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 layer];

  type metadata accessor for RoundedCornerView();
  v12 = method lookup function for RoundedCornerView();
  v12();
  [v11 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

  v13 = [v3 view];
  if (!v13)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  [v0 bounds];
  [v14 setFrame:?];

  v15 = *&v0[qword_100988CE0];
  if (v15)
  {
    v16 = v15;
    [v16 _setDisallowsVideoLayerDisplayCompositing:1];
    [v3 setPlayer:v16];
  }

  v17 = [v3 view];
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  [v0 insertSubview:v17 atIndex:0];

  v19 = *&v0[v1];
  *&v0[v1] = v3;

  sub_1004E77F8();
  v20 = [v3 view];

  if (!v20)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v21 = [v20 layer];

  [v21 setAllowsGroupBlending:0];
}

id sub_1004E2164()
{
  v1 = v0;
  v2 = type metadata accessor for VideoControls();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_1009D21E8] == 1)
  {
    v7 = *&v0[qword_100988CE8];
    if (v7)
    {
      [v7 setShowsPlaybackControls:{1, v4}];
    }
  }

  else
  {
    v8 = *&v0[qword_100988CE0];
    if (v8 && (v9 = v8, v10 = dispatch thunk of VideoPlayer.isPlaying.getter(), v9, (v10 & 1) != 0))
    {
      v11 = qword_100988CE8;
      v12 = *&v1[qword_100988CE8];
      if (v12)
      {
        v13 = v12;
        sub_1004DFED0(v6);
        v14 = VideoControls.containsInlineControls.getter();
        (*(v3 + 8))(v6, v2);
        [v13 setShowsPlaybackControls:v14 & 1];

        v15 = *&v1[v11];
        if (v15)
        {
          [v15 flashPlaybackControlsWithDuration:5.0];
        }
      }
    }

    else
    {
      v16 = *&v1[qword_100988CE8];
      if (v16)
      {
        [v16 setShowsPlaybackControls:{0, v4}];
      }
    }
  }

  return [v1 accessibilityUpdatePlayerControllerControls];
}

void sub_1004E2320()
{
  v1 = v0;
  if (qword_10096E640 != -1)
  {
    swift_once();
  }

  v2 = *&qword_100988C80;
  v3 = *algn_100988C88;
  v4 = *&qword_100988C90;
  v5 = unk_100988C98;
  v6 = &v0[qword_1009D21B0];
  v7 = *&v0[qword_1009D21B0];
  v8 = *&v0[qword_1009D21B0 + 16];
  v9 = [v0 traitCollection];
  v10 = UITraitCollection.prefersRightToLeftLayouts.getter();

  v11 = *&v1[qword_100988CE8];
  if (v11)
  {
    v12 = 8;
    if (v10)
    {
      v13 = 24;
    }

    else
    {
      v13 = 8;
    }

    if ((v10 & 1) == 0)
    {
      v12 = 24;
    }

    v14 = v3 + *&v6[v13];
    v15 = v5 + *&v6[v12];
    v16 = objc_opt_self();
    v17 = v11;
    v18 = [v16 valueWithUIEdgeInsets:{v2 + v7, v14, v4 + v8, v15}];
    [v17 setOverrideLayoutMarginsWhenEmbeddedInline:v18];
  }
}

void sub_1004E24B8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_1009D21E8] != 1)
  {
LABEL_4:
    [v1 frame];
    v15 = [objc_opt_self() mainScreen];
    [v15 scale];

    CGSize.scaled(_:)();
    v13 = v16;
    v14 = v17;
    goto LABEL_6;
  }

  sub_100031660(&v0[qword_1009D21A8], aBlock, &unk_100988E00, qword_1007B5FC0);
  if (v37)
  {
    sub_10002A400(aBlock, v37);
    v12 = dispatch thunk of NetworkInquiry.isConstrained.getter();
    sub_100007000(aBlock);
    v13 = 0.0;
    v14 = 0.0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  sub_10002B894(aBlock, &unk_100988E00, qword_1007B5FC0);
  v13 = 0.0;
  v14 = 0.0;
LABEL_6:
  v18 = qword_100988CE0;
  v19 = *&v1[qword_100988CE0];
  if (!v19 || (v20 = v19, v21 = dispatch thunk of VideoPlayer.playerItem.getter(), v20, !v21) || (([v21 preferredMaximumResolution], v23 = v22, v25 = v24, v21, v23 == v13) ? (v26 = v25 == v14) : (v26 = 0), !v26))
  {
    sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
    (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
    v27 = static OS_dispatch_queue.global(qos:)();
    (*(v9 + 8))(v11, v8);
    v28 = *&v1[v18];
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v13;
    *(v29 + 32) = v14;
    v38 = sub_1004E940C;
    v39 = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    v37 = &unk_1008C61D8;
    v30 = _Block_copy(aBlock);
    v31 = v28;
    static DispatchQoS.unspecified.getter();
    v35 = _swiftEmptyArrayStorage;
    sub_1004E805C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v34 + 8))(v4, v2);
    (*(v32 + 8))(v7, v33);
  }
}

void sub_1004E29B0(uint64_t a1)
{
  v3 = type metadata accessor for VideoPlaybackFailure();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7, a1, v3, v5);
  if ((*(v4 + 88))(v7, v3) == enum case for VideoPlaybackFailure.videoDecodersUnavailable(_:))
  {
    (*(v4 + 96))(v7, v3);
    v8 = *v7;
    v9 = [objc_opt_self() defaultCenter];
    v10 = static NSNotificationName.VideoDecoderUnavailable.getter();
    sub_10002849C(&unk_10097E340, &unk_1007C9830);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B1890;
    v17 = static VideoDecoderUnavailableUserInfoKey.playbackId.getter();
    v18 = v12;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for AnyHashable;
    v13 = swift_allocObject();
    *(inited + 72) = v13;
    sub_10003D4AC(v1 + qword_1009D21D8, v13 + 16);
    v17 = static VideoDecoderUnavailableUserInfoKey.error.getter();
    v18 = v14;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = sub_10002849C(&unk_100988E50, &qword_1007D1C30);
    *(inited + 144) = v8;
    v15 = v8;
    sub_100397CE8(inited);
    swift_setDeallocating();
    sub_10002849C(&unk_1009827A0, &unk_1007B2F90);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 postNotificationName:v10 object:0 userInfo:isa];
  }

  else
  {
    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1004E2CA0()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v28 = &v27 - v5;
  v6 = type metadata accessor for VideoConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = qword_1009D2200;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v14(v12, &v1[v13], v6);
  v15 = VideoConfiguration.roundedCorners.getter();
  v16 = *(v7 + 8);
  v16(v12, v6);
  if ((v15 & 1) == 0)
  {
    [v1 _continuousCornerRadius];
    if (v20 == 0.0)
    {
      [v1 _cornerRadius];
      v21 = v30;
      if (v22 == 0.0)
      {
        v23 = v29;
        v24 = v31;
        (*(v30 + 104))(v29, enum case for CornerStyle.arc(_:), v31);
        goto LABEL_12;
      }

      [v1 _cornerRadius];
      v25 = enum case for CornerStyle.arc(_:);
    }

    else
    {
      [v1 _continuousCornerRadius];
      v25 = enum case for CornerStyle.continuous(_:);
      v21 = v30;
    }

    v23 = v29;
    v24 = v31;
    (*(v21 + 104))(v29, v25, v31);
    goto LABEL_12;
  }

  v14(v9, &v1[v13], v6);
  VideoConfiguration.deviceCornerRadiusFactor.getter();
  v18 = v17;
  v16(v9, v6);
  if (v18)
  {
    v19 = &enum case for CornerStyle.arc(_:);
  }

  else
  {
    [*&v1[qword_100988CC0] frame];
    v19 = &enum case for CornerStyle.continuous(_:);
  }

  v21 = v30;
  v24 = v31;
  v23 = v28;
  (*(v30 + 104))(v28, *v19, v31);
LABEL_12:
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  return (*(v21 + 8))(v23, v24);
}

void sub_1004E3018()
{
  v1 = v0;
  v2 = qword_100988CE0;
  v3 = *(v0 + qword_100988CE0);
  if (v3)
  {
    v4 = v3;
    v5 = dispatch thunk of VideoPlayer.shouldBePlaying.getter();

    v6 = *(v1 + v2);
    if (v6)
    {
      v7 = v6;
      dispatch thunk of VideoPlayer.delegate.setter();

      v6 = *(v1 + v2);
    }

    *(v1 + v2) = 0;

    sub_1004E3D80();
    if (v5)
    {
      sub_1004E053C();
      v8 = *((swift_isaMask & *v1) + qword_1009D2210 + 712);

      v8();
    }
  }

  else
  {

    sub_1004E3D80();
  }
}

void sub_1004E3134()
{
  v1 = type metadata accessor for MediaClickMetricsEvent.ActionType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MediaClickMetricsEvent.TargetId();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[qword_100988CE0];
  if (v9)
  {
    v10 = v9;
    [v10 setMuted:{objc_msgSend(v10, "isMuted") ^ 1}];
    v11 = [v10 isMuted];
    [v0 updateAudioSessionCategoryWithIsAudioOn:v11 ^ 1];
    (*(v6 + 104))(v8, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v5);
    v12 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
    if (!v11)
    {
      v12 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
    }

    (*(v2 + 104))(v4, *v12, v1);
    sub_1004E3360(v8, v4);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_1004E3360(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v70 = a2;
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v74 = &v62 - v4;
  v5 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v5 - 8);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100988E10, &qword_1007D1C08);
  __chkstk_darwin(v7 - 8);
  v71 = &v62 - v8;
  v9 = sub_10002849C(&qword_100988E18, &qword_1007D1C10);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - v10;
  v12 = sub_10002849C(&qword_100988E20, &qword_1007D1C18);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - v13;
  v15 = sub_10002849C(&qword_100988E28, &qword_1007D1C20);
  __chkstk_darwin(v15 - 8);
  v17 = &v62 - v16;
  v76 = type metadata accessor for ActionMetrics();
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v68 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v75 = &v62 - v20;
  v21 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v21 - 8);
  v23 = &v62 - v22;
  v24 = type metadata accessor for MetricsData();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031660(v2 + qword_1009D21A0, v23, &unk_100973A50, &unk_1007B4FD0);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v28 = &unk_100973A50;
    v29 = &unk_1007B4FD0;
    v30 = v23;
LABEL_3:
    sub_10002B894(v30, v28, v29);
    return;
  }

  (*(v25 + 32))(v27, v23, v24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v25 + 8))(v27, v24);
    return;
  }

  v32 = Strong;
  v33 = qword_100988CE0;
  v34 = *(v2 + qword_100988CE0);
  if (!v34)
  {
    (*(v25 + 8))(v27, v24);

    return;
  }

  v35 = v2;
  v66 = v34;
  v36 = dispatch thunk of VideoPlayer.playerItem.getter();
  v67 = v32;
  v65 = v2;
  if (!v36)
  {
    goto LABEL_14;
  }

  v37 = v36;
  v38 = *(v35 + v33);
  if (!v38 || (v39 = [v38 currentItem]) == 0 || (v40 = v39, v41 = objc_msgSend(v39, "asset"), v40, v42 = String._bridgeToObjectiveC()(), v43 = objc_msgSend(v41, "statusOfValueForKey:error:", v42, 0), v41, v42, v43 != 2))
  {

LABEL_14:
    v64 = 0.0;
    v63 = 1;
    goto LABEL_15;
  }

  [v37 currentTime];
  Seconds = CMTimeGetSeconds(&time);

  v63 = 0;
  v64 = Seconds;
LABEL_15:
  sub_10002849C(&unk_100988E30, &qword_1007D1C28);
  v62 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  v45 = enum case for MediaClickMetricsEvent.TargetType.button(_:);
  v46 = type metadata accessor for MediaClickMetricsEvent.TargetType();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v17, v45, v46);
  (*(v47 + 56))(v17, 0, 1, v46);
  v48 = type metadata accessor for MediaClickMetricsEvent.TargetId();
  v49 = *(v48 - 8);
  (*(v49 + 16))(v14, v69, v48);
  (*(v49 + 56))(v14, 0, 1, v48);
  v50 = type metadata accessor for MediaClickMetricsEvent.ActionType();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v11, v70, v50);
  (*(v51 + 56))(v11, 0, 1, v50);
  LODWORD(v51) = *(v65 + qword_1009D21E8);
  v52 = type metadata accessor for MediaClickMetricsEvent.ActionContext();
  v53 = *(v52 - 8);
  v54 = &enum case for MediaClickMetricsEvent.ActionContext.fullscreen(_:);
  if (!v51)
  {
    v54 = &enum case for MediaClickMetricsEvent.ActionContext.inline(_:);
  }

  v55 = v71;
  (*(*(v52 - 8) + 104))(v71, *v54, v52);
  (*(v53 + 56))(v55, 0, 1, v52);
  static MediaClickMetricsEvent.fillIn(template:targetType:targetId:actionType:actionContext:position:)();
  sub_10002B894(v55, &qword_100988E10, &qword_1007D1C08);
  sub_10002B894(v11, &qword_100988E18, &qword_1007D1C10);
  sub_10002B894(v14, &qword_100988E20, &qword_1007D1C18);
  sub_10002B894(v17, &qword_100988E28, &qword_1007D1C20);
  ScalarDictionary.init()();
  v56 = v75;
  ActionMetrics.init(data:custom:)();
  v57 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v58 = v74;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v59 = *(v57 - 8);
  if ((*(v59 + 48))(v58, 1, v57) == 1)
  {

    (*(v73 + 8))(v56, v76);
    (*(v25 + 8))(v27, v24);
    v28 = &unk_100972A00;
    v29 = &unk_1007B3130;
    v30 = v58;
    goto LABEL_3;
  }

  type metadata accessor for BlankAction();
  v60 = v73;
  (*(v73 + 16))(v68, v56, v76);
  v61 = BlankAction.__allocating_init(actionMetrics:)();
  sub_1005FA048(v61, 1, v67, v58);

  (*(v60 + 8))(v75, v76);
  (*(v25 + 8))(v27, v24);
  (*(v59 + 8))(v58, v57);
}

void sub_1004E3D80()
{
  v1 = v0;
  v2 = type metadata accessor for VideoConfiguration();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_100988CE0;
  v8 = *&v0[qword_100988CE0];
  if (v8)
  {
    sub_1004E805C(&unk_100988E40, type metadata accessor for VideoView, &unk_1007D1AD0);
    v9 = v8;
    v10 = v0;
    dispatch thunk of VideoPlayer.delegate.setter();

    v11 = *&v0[v7];
    if (v11)
    {
      v12 = qword_1009D2200;
      swift_beginAccess();
      (*(v3 + 16))(v6, &v10[v12], v2);
      v13 = v11;
      VideoConfiguration.looping.getter();
      (*(v3 + 8))(v6, v2);
      dispatch thunk of VideoPlayer.shouldLoopPlayback.setter();

      v14 = *&v1[v7];
      if (v14)
      {
        [v14 _setDisallowsVideoLayerDisplayCompositing:1];
      }
    }
  }

  v15 = *&v1[qword_100988CE8];
  if (v15)
  {
    [v15 setPlayer:{*&v1[v7], v4}];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = *(Strong + OBJC_IVAR____TtC8AppStore15VideoMirrorView_videoLayer);
    v18 = *&v1[v7];
    [v17 setPlayer:v18];

    swift_unknownObjectRelease();
  }

  v19 = qword_100988D00;
  if (v1[qword_100988D00] == 1)
  {
    [v1 updateAudioSessionCategoryWithIsAudioOn:1];
    v20 = *&v1[v7];
    if (v20)
    {
      [v20 setMuted:0];
    }

    v1[v19] = 0;
  }
}

id sub_1004E3FEC(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for VideoView(0);
  v1 = objc_msgSendSuper2(&v3, "backgroundColor");

  return v1;
}

void sub_1004E4048(char *a1, uint64_t a2, void *a3)
{
  v5 = *&a1[qword_100988CE8];
  v6 = a3;
  v7 = a1;
  if (v5)
  {
    v5 = [v5 view];
  }

  [v5 setBackgroundColor:a3];

  v8.receiver = a1;
  v8.super_class = type metadata accessor for VideoView(0);
  objc_msgSendSuper2(&v8, "setBackgroundColor:", a3);
}

id sub_1004E40F8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for VideoView(0);
  return objc_msgSendSuper2(&v2, "frame");
}

void sub_1004E413C(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for VideoView(0);
  v20.receiver = a1;
  v20.super_class = v10;
  v11 = a1;
  objc_msgSendSuper2(&v20, "frame");
  v13 = v12;
  v15 = v14;
  v19.receiver = v11;
  v19.super_class = v10;
  objc_msgSendSuper2(&v19, "setFrame:", a2, a3, a4, a5);
  [v11 frame];
  v18 = v17 == v13 && v16 == v15;
  if (!v18 && (*(v11 + qword_100988CD0) & 1) == 0)
  {
    sub_1004E24B8();
  }
}

void sub_1004E4224(uint64_t a1)
{
  v1 = ASKDeviceTypeGetCurrent();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v6 = 8.0;
  if (v2 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v4 != v5)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v6 = 8.0;
    }

    else
    {
      v6 = 6.0;
    }
  }

  qword_100988C80 = *&v6;
  *algn_100988C88 = v6;
  qword_100988C90 = *&v6;
  unk_100988C98 = *&v6;
}

char *sub_1004E42E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v67 = a6;
  v68 = a5;
  v69 = a4;
  v70 = a3;
  v62 = type metadata accessor for AutomationSemantics();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for URL();
  v63 = *(v66 - 8);
  __chkstk_darwin(v66);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v57 - v15;
  v59 = v7;
  v17 = objc_allocWithZone(v7);
  swift_weakInit();
  *&v17[qword_100988CA8 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v17[qword_100988CB0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v17[qword_100988CB8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = qword_100988CC0;
  *&v17[v18] = [objc_allocWithZone(UIImageView) init];
  v17[qword_100988CC8] = 0;
  v17[qword_100988CD0] = 0;
  v17[qword_100988CD8] = 0;
  *&v17[qword_100988CE0] = 0;
  *&v17[qword_100988CE8] = 0;
  v19 = qword_100988CF0;
  type metadata accessor for AutoPlayVideoSettingsManager();
  *&v17[v19] = static AutoPlayVideoSettingsManager.shared.getter();
  v20 = qword_100988CF8;
  *&v17[v20] = [objc_allocWithZone(type metadata accessor for PlayButton()) init];
  v21 = a2;
  v22 = &v17[qword_1009D21B0];
  v23 = *&UIEdgeInsetsZero.bottom;
  *v22 = *&UIEdgeInsetsZero.top;
  v22[1] = v23;
  v24 = &v17[qword_1009D21B8];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  *&v17[qword_1009D21C0] = 1;
  v17[qword_100988D00] = 0;
  v25 = &v17[qword_1009D21D0];
  *v25 = 0;
  v25[1] = 0;
  *&v17[qword_1009D21E0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v17[qword_1009D21E8] = 0;
  v17[qword_1009D21F0] = 0;
  swift_unknownObjectWeakInit();
  v17[qword_100988D08] = 0;
  v17[qword_1009D2208] = 0;
  *&v17[qword_100988D10] = 0;
  v17[qword_100988D18] = 0;
  swift_beginAccess();
  v65 = a7;
  swift_weakAssign();
  v64 = a1;
  sub_10003D4AC(a1, &v17[qword_1009D21D8]);
  v26 = URL.scheme.getter();
  v28 = v27;
  v29 = static Artwork.URLTemplate.resourceScheme.getter();
  v58 = a2;
  if (!v28)
  {

    v31 = v66;
    v32 = v63;
    goto LABEL_9;
  }

  if (v26 == v29 && v28 == v30)
  {

    v31 = v66;
    v32 = v63;
    goto LABEL_7;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v31 = v66;
  v32 = v63;
  if ((v33 & 1) == 0)
  {
LABEL_9:
    (*(v32 + 16))(&v17[qword_1009D21C8], v21, v31);
    goto LABEL_10;
  }

LABEL_7:
  v34 = [objc_opt_self() mainBundle];
  URL.lastPathComponent.getter();
  v35 = String._bridgeToObjectiveC()();

  v36 = [v34 URLForResource:v35 withExtension:0];

  if (!v36)
  {
    goto LABEL_9;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = *(v32 + 32);
  v37(v16, v13, v31);
  v37(&v17[qword_1009D21C8], v16, v31);
LABEL_10:
  v38 = v32;
  sub_100031660(v69, &v17[qword_1009D2198], &unk_100973A50, &unk_1007B4FD0);
  sub_100031660(v68, &v17[qword_1009D21A0], &unk_100973A50, &unk_1007B4FD0);
  v39 = qword_1009D2200;
  v40 = type metadata accessor for VideoConfiguration();
  v41 = *(v40 - 8);
  (*(v41 + 16))(&v17[v39], v70, v40);
  sub_100031660(v67, &v17[qword_1009D21A8], &unk_100988E00, qword_1007B5FC0);
  v73.receiver = v17;
  v73.super_class = v59;
  v42 = objc_msgSendSuper2(&v73, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v42 setClipsToBounds:0];
  v43 = qword_100988CC0;
  [*&v42[qword_100988CC0] setUserInteractionEnabled:0];
  [*&v42[v43] setClipsToBounds:1];
  [v42 addSubview:*&v42[v43]];
  v44 = objc_opt_self();
  v45 = [v44 defaultCenter];
  v46 = static NSNotificationName.AutoPlayVideoSettingsDidChange.getter();
  [v45 addObserver:v42 selector:"didChangeAutoPlayVideoSetting" name:v46 object:0];

  v47 = [v44 defaultCenter];
  [v47 addObserver:v42 selector:"handleMediaServicesReset" name:AVAudioSessionMediaServicesWereResetNotification object:0];

  v48 = qword_100988CF8;
  [*&v42[qword_100988CF8] setHidden:1];
  v49 = *&v42[v48];
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = &v49[OBJC_IVAR____TtC8AppStore10PlayButton_tapActionBlock];
  v52 = *&v49[OBJC_IVAR____TtC8AppStore10PlayButton_tapActionBlock];
  v53 = *&v49[OBJC_IVAR____TtC8AppStore10PlayButton_tapActionBlock + 8];
  *v51 = sub_1000FA7C8;
  v51[1] = v50;
  v54 = v49;

  sub_10001F63C(v52, v53);

  memset(v72, 0, sizeof(v72));
  memset(v71, 0, sizeof(v71));
  v55 = v60;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v71, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(v72, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();
  (*(v61 + 8))(v55, v62);
  [v42 addSubview:*&v42[v48]];
  sub_1004E77F8();

  sub_10002B894(v67, &unk_100988E00, qword_1007B5FC0);
  sub_10002B894(v68, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v69, &unk_100973A50, &unk_1007B4FD0);
  (*(v41 + 8))(v70, v40);
  (*(v38 + 8))(v58, v66);
  sub_10003D614(v64);

  return v42;
}

void sub_1004E4BC0(uint64_t a1)
{
  v45 = type metadata accessor for VideoConfiguration();
  v1 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &ObjectType - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for VideoControls();
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  __chkstk_darwin(v3);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &ObjectType - v8;
  v10 = type metadata accessor for MediaClickMetricsEvent.ActionType();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MediaClickMetricsEvent.TargetId();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v41 = v1;
    (*((swift_isaMask & *Strong) + qword_1009D2210 + 712))();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      ObjectType = swift_getObjectType();
      sub_1004E805C(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v19 = v18;
      v40 = v9;
      v20 = v6;
      v21 = v13;
      v22 = v19;
      dispatch thunk of VideoViewDelegate.userInitiatedPlay(for:)();

      v13 = v21;
      v6 = v20;
      v9 = v40;
      swift_unknownObjectRelease();
    }

    (*(v14 + 104))(v16, enum case for MediaClickMetricsEvent.TargetId.play(_:), v13);
    v23 = v13;
    v25 = v46;
    v24 = v47;
    (*(v46 + 104))(v12, enum case for MediaClickMetricsEvent.ActionType.play(_:), v47);
    sub_1004E3360(v16, v12);
    (*(v25 + 8))(v12, v24);
    v26 = (*(v14 + 8))(v16, v23);
    if ((*((swift_isaMask & *v18) + qword_1009D2210 + 752))(v26))
    {
      v27 = dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter();
      v28 = qword_1009D2200;
      v29 = (v41 + 16);
      v30 = (v41 + 8);
      if (v27)
      {
        swift_beginAccess();
        v31 = v18 + v28;
        v32 = v44;
        (*v29)(v44, v31, v45);
        VideoConfiguration.autoPlayPlaybackControls.getter();
      }

      else
      {
        swift_beginAccess();
        v33 = v18 + v28;
        v32 = v44;
        (*v29)(v44, v33, v45);
        VideoConfiguration.playbackControls.getter();
      }

      (*v30)(v32, v45);
      static VideoControls.muteUnmute.getter();
      sub_1004E805C(&unk_100988DE0, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
      v34 = v42;
      v35 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v36 = *(v43 + 8);
      v36(v6, v34);
      v36(v9, v34);
      if (v35)
      {
        v37 = *(v18 + qword_100988CE0);
        if (v37)
        {
          v38 = v37;
          [v18 updateAudioSessionCategoryWithIsAudioOn:1];
          [v38 setMuted:0];

          v18 = v38;
        }

        else
        {
          *(v18 + qword_100988D00) = 1;
        }
      }
    }
  }
}

void sub_1004E51CC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + qword_100988CE0);

    [v3 play];
  }
}

void sub_1004E5244()
{
  v1 = v0;
  v0[qword_1009D21F0] = 0;
  v2 = qword_1009D21E8;
  [v0 setUserInteractionEnabled:(v0[qword_1009D21E8] & 1) == 0];
  v3 = [v0 backgroundColor];
  if (!v3)
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v3 = static UIColor.placeholderBackground.getter();
  }

  v10 = v3;
  v4 = *&v0[qword_100988CE8];
  if (v4)
  {
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      if (v1[v2] == 1)
      {
        v7 = [objc_opt_self() clearColor];
      }

      else
      {
        v7 = v10;
      }

      v8 = v7;
      [v6 setBackgroundColor:v7];
    }
  }

  sub_1004E77F8();
  if ((v1[v2] & 1) == 0)
  {
    v9 = *&v1[qword_100988CE0];
    if (v9)
    {
      [v9 setMuted:(v1[qword_100988D08] & 1) == 0];
    }
  }

  sub_1004E24B8();
  [v1 setNeedsLayout];
}

void sub_1004E53D0(void *a1)
{
  v1 = a1;
  sub_1004E77F8();
}

uint64_t sub_1004E5418()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for VideoView(0);
  objc_msgSendSuper2(&v14, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[qword_100988CE8];
  if (v9)
  {
    v10 = [v9 view];
  }

  else
  {
    v10 = 0;
  }

  [v10 setFrame:{v2, v4, v6, v8}];

  v11 = *&v0[qword_100988CC0];
  [v11 frame];
  [v11 setFrame:?];
  v15.origin.x = v2;
  v15.origin.y = v4;
  v15.size.width = v6;
  v15.size.height = v8;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v2;
  v16.origin.y = v4;
  v16.size.width = v6;
  v16.size.height = v8;
  [v11 setCenter:{MidX, CGRectGetMidY(v16)}];
  sub_1004E1028();
  return sub_1004E2CA0();
}

void sub_1004E5568(void *a1)
{
  v1 = a1;
  sub_1004E5418();
}

void sub_1004E55B0(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + qword_100988CE0);
      v4 = Strong;
      v5 = v3;

      if (v3)
      {
        dispatch thunk of VideoPlayer.releaseAssets()();
      }
    }
  }
}

id sub_1004E5630(char *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = 0.0;
    if (a2)
    {
      *&v5 = 1.0;
    }

    [*(Strong + OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer) setOpacity:v5];
    swift_unknownObjectRelease();
  }

  v6 = 0.0;
  if (a2)
  {
    v6 = 1.0;
  }

  [*&a1[qword_100988CC0] setAlpha:v6];

  return [a1 layoutSubviews];
}

id sub_1004E56F0(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = 0.0;
    if (a2)
    {
      *&v5 = 1.0;
    }

    [*(Strong + OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer) setOpacity:v5];
    swift_unknownObjectRelease();
  }

  v6 = *(a1 + qword_100988CC0);
  v7 = 0.0;
  if (a2)
  {
    v7 = 1.0;
  }

  return [v6 setAlpha:v7];
}

void sub_1004E57A8(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    v5 = dispatch thunk of VideoPlayer.playerItem.getter();
    [v5 setPreferredMaximumResolution:{a2, a3}];
  }
}

void sub_1004E5818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + qword_1009D21E8) = 0;
    sub_1004E5244();
  }
}

void sub_1004E5878()
{
  type metadata accessor for RoundedCornerView();
  v1 = method lookup function for RoundedCornerView();
  v1();
  v2 = UIRectCorner.caCornerMask.getter();
  v3 = [v0 layer];
  [v3 setMaskedCorners:v2];

  dispatch thunk of RoundedCornerView.updateBorder()();
  v4 = *&v0[qword_100988CE8];
  if (v4)
  {
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 layer];

      [v7 setMaskedCorners:v2];
    }
  }

  v8 = [*&v0[qword_100988CC0] layer];
  [v8 setMaskedCorners:v2];
}

void sub_1004E59B4(void *a1, double a2)
{
  v3 = a1;
  sub_1004E5B04(&selRef__setCornerRadius_, &selRef__cornerRadius, a2);
}

id sub_1004E5A40(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VideoView(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1004E5A84(void *a1, double a2)
{
  v3 = a1;
  sub_1004E5B04(&selRef__setContinuousCornerRadius_, &selRef__continuousCornerRadius, a2);
}

id sub_1004E5B04(SEL *a1, SEL *a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for VideoView(0);
  objc_msgSendSuper2(&v12, *a1, a3);
  v7 = *&v3[qword_100988CE8];
  if (v7)
  {
    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      [v3 *a2];
      [v9 *a1];
    }
  }

  v10 = *&v3[qword_100988CC0];
  [v3 *a2];
  return [v10 *a1];
}

void sub_1004E5BCC(uint64_t a1, uint64_t a2)
{
  v5 = qword_100988D10;
  v6 = *&v2[qword_100988D10];
  if (!v6 || [v6 phase] == 3 || (v7 = *&v2[v5]) != 0 && objc_msgSend(v7, "phase") == 4)
  {
    v8 = sub_10066D4C4(a1);
    if (v8)
    {
      v9 = *&v2[v5];
      *&v2[v5] = v8;
      v10 = v8;

      [v10 locationInView:v2];
      v11 = [v2 hitTest:a2 withEvent:?];
      if (v11)
      {
        v12 = v11;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v13 = v12;
        v14 = v2;
        v15 = v2;
        v16 = static NSObject.== infix(_:_:)();

        if ((v16 & 1) == 0)
        {
          sub_100005744(0, &qword_100981660, UITouch_ptr);
          sub_10008DB40();
          v17 = v13;
          isa = Set._bridgeToObjectiveC()().super.isa;
          [v17 touchesBegan:isa withEvent:a2];
        }

        v2 = v14;
      }

      sub_100005744(0, &qword_100981660, UITouch_ptr);
      sub_10008DB40();
      v19.super.isa = Set._bridgeToObjectiveC()().super.isa;
      v21.super_class = type metadata accessor for VideoView(0);
      objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v19.super.isa, a2, v20.receiver, v20.super_class, v2, v21.super_class, v22.receiver, v22.super_class);
    }

    else
    {
      sub_100005744(0, &qword_100981660, UITouch_ptr);
      sub_10008DB40();
      v19.super.isa = Set._bridgeToObjectiveC()().super.isa;
      v22.super_class = type metadata accessor for VideoView(0);
      objc_msgSendSuper2(&v22, "touchesBegan:withEvent:", v19.super.isa, a2, v20.receiver, v20.super_class, v21.receiver, v21.super_class, v2, v22.super_class);
    }
  }

  else
  {
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v19.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v20.super_class = type metadata accessor for VideoView(0);
    objc_msgSendSuper2(&v20, "touchesBegan:withEvent:", v19.super.isa, a2, v2, v20.super_class, v21.receiver, v21.super_class, v22.receiver, v22.super_class);
  }
}

double sub_1004E5E58(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100005744(0, &qword_100981660, UITouch_ptr);
  sub_10008DB40();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = a1;
  sub_1004E5BCC(v6, a4);

  return result;
}

void sub_1004E5F20(uint64_t a1, uint64_t a2, SEL *a3)
{
  v7 = qword_100988D10;
  v8 = *&v3[qword_100988D10];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if ((sub_100296044(v9, a1) & 1) == 0)
  {

LABEL_8:
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v19.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v21.super_class = type metadata accessor for VideoView(0);
    objc_msgSendSuper2(&v21, *a3, v19.super.isa, a2, v20.receiver, v20.super_class, v3, v21.super_class);
    goto LABEL_11;
  }

  v10 = *&v3[v7];
  *&v3[v7] = 0;

  [v9 locationInView:v3];
  v11 = [v3 hitTest:a2 withEvent:?];
  if (v11)
  {
    v12 = v11;
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v13 = v12;
    v14 = v3;
    v15 = v3;
    v16 = static NSObject.== infix(_:_:)();

    if ((v16 & 1) == 0)
    {
      sub_100005744(0, &qword_100981660, UITouch_ptr);
      sub_10008DB40();
      v17 = v13;
      isa = Set._bridgeToObjectiveC()().super.isa;
      [v17 *a3];

      v9 = v17;
    }

    v3 = v14;
  }

  else
  {
    v13 = v9;
  }

  sub_100005744(0, &qword_100981660, UITouch_ptr);
  sub_10008DB40();
  v19.super.isa = Set._bridgeToObjectiveC()().super.isa;
  v20.super_class = type metadata accessor for VideoView(0);
  objc_msgSendSuper2(&v20, *a3, v19.super.isa, a2, v3, v20.super_class, v21.receiver, v21.super_class);
LABEL_11:
}

double sub_1004E6150(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_100005744(0, &qword_100981660, UITouch_ptr);
  sub_10008DB40();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  sub_1004E5F20(v8, a4, a5);

  return result;
}

void sub_1004E6200(void *a1)
{
  v1 = a1;
  sub_1004E3018();
}

void sub_1004E6248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setShowsPlaybackControls:1];
  }
}

void sub_1004E62A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((swift_isaMask & *Strong) + qword_1009D2210 + 712))();
  }
}

void sub_1004E634C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1004E849C(a4);

  swift_unknownObjectRelease();
}

void sub_1004E63C8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_1004E8640(a4);
}

uint64_t sub_1004E6484(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *&a1[qword_100988CE0];
  if (v3)
  {
    v5 = a1;
    v6 = v3;
    v7 = a3();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1004E6520()
{
  swift_weakDestroy();
  sub_10001F64C(v0 + qword_100988CA8);
  sub_10001F64C(v0 + qword_100988CB0);
  sub_10001F64C(v0 + qword_100988CB8);

  sub_10002B894(v0 + qword_1009D2198, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v0 + qword_1009D21A0, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v0 + qword_1009D21A8, &unk_100988E00, qword_1007B5FC0);

  v1 = qword_1009D21C8;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10001F63C(*(v0 + qword_1009D21D0), *(v0 + qword_1009D21D0 + 8));
  sub_10003D614(v0 + qword_1009D21D8);
  sub_10001F64C(v0 + qword_1009D21E0);
  swift_unknownObjectWeakDestroy();
  v3 = qword_1009D2200;
  v4 = type metadata accessor for VideoConfiguration();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + qword_100988D10);
}

id sub_1004E6714()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004E674C(uint64_t a1)
{
  swift_weakDestroy();
  sub_10001F64C(a1 + qword_100988CA8);
  sub_10001F64C(a1 + qword_100988CB0);
  sub_10001F64C(a1 + qword_100988CB8);

  sub_10002B894(a1 + qword_1009D2198, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(a1 + qword_1009D21A0, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(a1 + qword_1009D21A8, &unk_100988E00, qword_1007B5FC0);

  v2 = qword_1009D21C8;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  sub_10001F63C(*(a1 + qword_1009D21D0), *(a1 + qword_1009D21D0 + 8));
  sub_10003D614(a1 + qword_1009D21D8);
  sub_10001F64C(a1 + qword_1009D21E0);
  swift_unknownObjectWeakDestroy();
  v4 = qword_1009D2200;
  v5 = type metadata accessor for VideoConfiguration();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + qword_100988D10);
}

void sub_1004E6944(uint64_t a1)
{
  if (!qword_100988DB8)
  {
    type metadata accessor for MetricsData();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100988DB8);
    }
  }
}

double sub_1004E6A0C(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_1004E6A6C(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_100988CA0;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

double sub_1004E6B54(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1009D21E0;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_1004E6BC0(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = qword_1009D21E0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1004E6C60;
}

void sub_1004E6C60(uint64_t a1, char a2)
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
  }

  free(v3);
}

void sub_1004E6CEC()
{
  v1 = *(v0 + qword_100988CE0);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of VideoPlayer.restart()();
  }
}

uint64_t sub_1004E6D8C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1009D2200;
  swift_beginAccess();
  v4 = type metadata accessor for VideoConfiguration();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void (*sub_1004E6E18(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = type metadata accessor for VideoConfiguration();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = qword_1009D2200;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_1004E6F70;
}

void sub_1004E6F70(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_1004E032C(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_1004E032C(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1004E7028@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10002849C(&unk_100988DF0, &qword_1007D1C00);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for MediaMetricsEvent.ActionType();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for MediaMetricsEvent.ActionType.play(_:), v7, v9);
  if (a1)
  {
    v12 = type metadata accessor for MediaMetricsEvent.ActionDetails();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  else
  {
    v13 = enum case for MediaMetricsEvent.ActionDetails.autoplay(_:);
    v14 = type metadata accessor for MediaMetricsEvent.ActionDetails();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v6, v13, v14);
    (*(v15 + 56))(v6, 0, 1, v14);
  }

  sub_1004E081C(v11, v6, a2);
  sub_10002B894(v6, &unk_100988DF0, &qword_1007D1C00);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1004E7280@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10002849C(&unk_100988DF0, &qword_1007D1C00);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for MediaMetricsEvent.ActionType();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for MediaMetricsEvent.ActionType.seek(_:), v5, v7);
  v10 = enum case for MediaMetricsEvent.ActionDetails.autostart(_:);
  v11 = type metadata accessor for MediaMetricsEvent.ActionDetails();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v4, v10, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  sub_1004E081C(v9, v4, a1);
  sub_10002B894(v4, &unk_100988DF0, &qword_1007D1C00);
  return (*(v6 + 8))(v9, v5);
}

void sub_1004E7474(double a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1004E805C(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    dispatch thunk of VideoViewDelegate.playbackWillEnd(in:videoView:)();
    swift_unknownObjectRelease();
  }
}

double sub_1004E7548()
{
  v1 = v0 + qword_100988CB8;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E75EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(v3 + qword_100988CE0);
  if (!v4)
  {
    return 0;
  }

  v6 = v4;
  LOBYTE(a3) = a3();

  return a3 & 1;
}

void sub_1004E76E8()
{
  v1 = *(v0 + qword_100988CE0);
  if (v1)
  {
    v2 = v1;
    if (dispatch thunk of VideoPlayer.shouldBePlaying.getter())
    {
      [v2 pause];
    }
  }
}

uint64_t sub_1004E77F8()
{
  v1 = v0;
  v2 = type metadata accessor for VideoControls();
  v74 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v68 - v6;
  v7 = type metadata accessor for VideoFillMode();
  v78 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VideoConfiguration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v70 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  v16 = *(v0 + qword_100988CE0);
  if (v16)
  {
    v17 = v9;
    v18 = v11;
    v19 = qword_1009D2200;
    swift_beginAccess();
    v20 = v1 + v19;
    v11 = v18;
    (*(v18 + 16))(v15, v20, v10);
    v21 = v16;
    VideoConfiguration.looping.getter();
    (*(v11 + 8))(v15, v10);
    dispatch thunk of VideoPlayer.shouldLoopPlayback.setter();

    v9 = v17;
  }

  v68 = v4;
  v77 = v2;
  v75 = qword_100988CE8;
  v22 = *(v1 + qword_100988CE8);
  if (v22)
  {
    v23 = v9;
    v24 = v11;
    v25 = qword_1009D2200;
    swift_beginAccess();
    v26 = v1 + v25;
    v11 = v24;
    (*(v24 + 16))(v15, v26, v10);
    v27 = v22;
    v28 = VideoConfiguration.canPlayFullScreen.getter();
    (*(v11 + 8))(v15, v10);
    [v27 setAllowsEnteringFullScreen:v28 & 1];

    v9 = v23;
  }

  v76 = *(v1 + qword_100988CC0);
  v29 = qword_1009D2200;
  swift_beginAccess();
  v30 = (v11 + 16);
  v72 = *(v11 + 16);
  v72(v15, &v29[v1], v10);
  VideoConfiguration.fillMode.getter();
  v31 = *(v11 + 8);
  v73 = v11 + 8;
  v71 = v31;
  v31(v15, v10);
  v32 = VideoFillMode.contentMode.getter();
  v33 = v78[1];
  v33(v9, v7);
  [v76 setContentMode:v32];
  v34 = *(v1 + v75);
  if (v34)
  {
    v72(v15, &v29[v1], v10);
    v78 = v34;
    VideoConfiguration.fillMode.getter();
    v71(v15, v10);
    v35 = VideoFillMode.videoGravity.getter();
    v33(v9, v7);
    v36 = v78;
    [v78 setVideoGravity:v35 forLayoutClass:0];
  }

  v69 = v10;
  v78 = v30;
  v76 = v29;
  sub_1004DFED0(v79);
  sub_1004E805C(&unk_100988DE0, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  v37 = v68;
  v38 = v77;
  dispatch thunk of SetAlgebra.init()();
  sub_1004E805C(&qword_100980970, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = v74 + 8;
  v41 = *(v74 + 8);
  v41(v37, v38);
  [v1 setUserInteractionEnabled:(v39 & 1) == 0];
  v42 = *(v1 + qword_100988CF8);
  static VideoControls.prominentPlay.getter();
  v43 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v41(v37, v38);
  if (v43)
  {
    v44 = v41;
    v45 = 0;
  }

  else
  {
    static VideoControls.prominentPlayOnPause.getter();
    v46 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v44 = v41;
    v41(v37, v38);
    v45 = v46 ^ 1;
  }

  v47 = v76;
  [v42 setHidden:{v45 & 1, v68}];

  v48 = v75;
  v49 = *(v1 + v75);
  if (v49)
  {
    v50 = v49;
    [v50 setShowsPlaybackControls:VideoControls.containsInlineControls.getter() & 1];

    v47 = v76;
    v51 = *(v1 + v48);
    if (v51)
    {
      v74 = v40;
      v52 = *((swift_isaMask & *v1) + qword_1009D2210 + 752);
      v53 = v51;
      v54 = (v52() & 1) != 0 ? 1 : *(v1 + qword_1009D2208);
      [v53 setShowsMinimalPlaybackControlsWhenEmbeddedInline:v54];

      v55 = *(v1 + v48);
      v47 = v76;
      if (v55)
      {
        v56 = v55;
        static VideoControls.muteUnmute.getter();
        v57 = v77;
        v58 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v44(v37, v57);
        if (v58)
        {
          v59 = 1;
        }

        else
        {
          v59 = *(v1 + qword_1009D21E8);
        }

        [v56 setPlaybackControlsIncludeVolumeControls:v59];
      }
    }
  }

  sub_1004E1178();
  v60 = &v47[v1];
  v61 = v69;
  v62 = v70;
  v72(v70, v60, v69);
  v63 = VideoConfiguration.roundedCorners.getter();
  v71(v62, v61);
  if (v63)
  {
    v64 = v79;
    v65 = v77;
    v66 = v44;
    if ((*(v1 + qword_1009D21E8) & 1) == 0)
    {
      type metadata accessor for ArtworkView();
      static ArtworkView.iconBorderColor.getter();
      dispatch thunk of RoundedCornerView.borderColor.setter();
      static ArtworkView.iconBorderWidth.getter();
    }
  }

  else
  {
    v64 = v79;
    v65 = v77;
    v66 = v44;
  }

  dispatch thunk of RoundedCornerView.borderWidth.setter();
  sub_1004E2CA0();
  sub_1004E2164();
  sub_1004E2320();
  return v66(v64, v65);
}

uint64_t sub_1004E805C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004E80A4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1004E805C(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    dispatch thunk of VideoViewDelegate.videoDidChangeState(to:for:)();
    swift_unknownObjectRelease();
  }

  v3 = v1 + qword_100988CB8;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = sub_1004E805C(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    (*(v4 + 16))(a1, v1, v6, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  sub_1004E2164();
  return sub_1004E1178();
}

void sub_1004E8208()
{
  v1 = v0;
  v2 = type metadata accessor for VideoConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v6 = qword_1009D2200;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v6, v2);
    VideoConfiguration.looping.getter();
    (*(v3 + 8))(v5, v2);
    sub_1004E805C(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    dispatch thunk of VideoViewDelegate.videoDidPlayToEnd(isLooping:videoView:)();
    swift_unknownObjectRelease();
  }

  if (*(v1 + qword_1009D21E8) == 1)
  {
    v7 = *(v1 + qword_100988CE8);
    if (v7)
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1004E8494;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100235C48;
      aBlock[3] = &unk_1008C6070;
      v9 = _Block_copy(aBlock);
      v10 = v7;

      [v10 exitFullScreenAnimated:1 completionHandler:v9];
      _Block_release(v9);
    }
  }
}

void sub_1004E849C(void *a1)
{
  v3 = v1 + qword_100988CA8;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v1 + qword_1009D21F0) = 1;
  v13 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v14 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1006D1458;
  v12 = &unk_1008C6098;
  v6 = _Block_copy(&v9);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_1004E900C;
  v14 = v7;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1006D1458;
  v12 = &unk_1008C60C0;
  v8 = _Block_copy(&v9);

  [a1 animateAlongsideTransition:v6 completion:v8];
  _Block_release(v8);
  _Block_release(v6);
}

void sub_1004E8640(uint64_t a1)
{
  v2 = v1;
  v48 = type metadata accessor for VideoConfiguration();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VideoControls();
  v49 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = v43 - v9;
  v10 = type metadata accessor for MediaClickMetricsEvent.ActionType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MediaClickMetricsEvent.TargetId();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        [v2 updateAudioSessionCategoryWithIsAudioOn:{1, v16}];
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v14);
        v19 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
LABEL_17:
        (*(v11 + 104))(v13, *v19, v10);
        v32 = v18;
        v33 = v13;
LABEL_27:
        sub_1004E3360(v32, v33);
        (*(v11 + 8))(v13, v10);
        (*(v15 + 8))(v18, v14);
        return;
      case 4:
        v36 = *(v2 + qword_100988CE0);
        if (v36)
        {
          v37 = [v36 isMuted] ^ 1;
        }

        else
        {
          v37 = 0;
        }

        *(v2 + qword_100988D08) = v37;
        *(v2 + qword_1009D21E8) = 1;
        sub_1004E5244();
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.fullscreen(_:), v14);
        (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.enterFullscreen(_:), v10);
        v32 = v18;
        v33 = v13;
        goto LABEL_27;
      case 5:
        *(v2 + qword_1009D21E8) = 0;
        sub_1004E5244();
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.inline(_:), v14);
        (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.exitFullscreen(_:), v10);
        sub_1004E3360(v18, v13);
        (*(v11 + 8))(v13, v10);
        (*(v15 + 8))(v18, v14);
        v20 = v2 + qword_100988CA8;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v21 = *(v20 + 1);
          ObjectType = swift_getObjectType();
          (*(v21 + 16))(ObjectType, v21);
          swift_unknownObjectRelease();
        }

        break;
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return;
      }

      [v2 updateAudioSessionCategoryWithIsAudioOn:{0, v16}];
      (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v14);
      v19 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
      goto LABEL_17;
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_1004E805C(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      dispatch thunk of VideoViewDelegate.userInitiatedPause(for:)();
      swift_unknownObjectRelease();
    }

    (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.pause(_:), v14);
    (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.pause(_:), v10);
    sub_1004E3360(v18, v13);
    (*(v11 + 8))(v13, v10);
    v34 = (*(v15 + 8))(v18, v14);
    if (((*((swift_isaMask & *v2) + qword_1009D2210 + 752))(v34) & 1) == 0)
    {
      [v2 updateAudioSessionCategoryWithIsAudioOn:0];
      v35 = *(v2 + qword_100988CE0);
      if (v35)
      {
        [v35 setMuted:1];
      }
    }
  }

  else
  {
    v44 = v6;
    v23 = v2;
    v24 = v2 + qword_1009D21E0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43[1] = *(v24 + 1);
      swift_getObjectType();
      sub_1004E805C(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      dispatch thunk of VideoViewDelegate.userInitiatedPlay(for:)();
      swift_unknownObjectRelease();
    }

    (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.play(_:), v14);
    (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.play(_:), v10);
    sub_1004E3360(v18, v13);
    (*(v11 + 8))(v13, v10);
    v25 = (*(v15 + 8))(v18, v14);
    if (((*((swift_isaMask & *v23) + qword_1009D2210 + 752))(v25) & 1) == 0)
    {
      v26 = dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter();
      v27 = qword_1009D2200;
      v28 = (v45 + 16);
      v29 = (v45 + 8);
      if (v26)
      {
        swift_beginAccess();
        v30 = v48;
        (*v28)(v5, &v23[v27], v48);
        v31 = v46;
        VideoConfiguration.autoPlayPlaybackControls.getter();
      }

      else
      {
        swift_beginAccess();
        v30 = v48;
        (*v28)(v5, &v23[v27], v48);
        v31 = v46;
        VideoConfiguration.playbackControls.getter();
      }

      v38 = v44;
      (*v29)(v5, v30);
      v39 = v47;
      static VideoControls.muteUnmute.getter();
      sub_1004E805C(&unk_100988DE0, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
      v40 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v41 = *(v49 + 8);
      v41(v39, v38);
      v41(v31, v38);
      if (v40)
      {
        [v23 updateAudioSessionCategoryWithIsAudioOn:1];
        v42 = *&v23[qword_100988CE0];
        if (v42)
        {
          [v42 setMuted:0];
        }
      }
    }
  }
}

double sub_1004E9014(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_10096E568 != -1)
    {
      swift_once();
    }

    v17[0] = qword_1009880E0;
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = AVAudioSessionCategoryPlayback;
    v10[5] = AVAudioSessionModeDefault;
    v10[6] = 0;
    v22 = sub_1004E9510;
    v23 = v10;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v11 = &unk_1008C6160;
  }

  else
  {
    if (qword_10096E568 != -1)
    {
      swift_once();
    }

    v17[0] = qword_1009880E0;
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = AVAudioSessionCategoryPlayback;
    v12[5] = AVAudioSessionModeDefault;
    v12[6] = 1;
    v22 = sub_100007D18;
    v23 = v12;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v11 = &unk_1008C6110;
  }

  v20 = sub_100007A08;
  v21 = v11;
  v13 = _Block_copy(&aBlock);
  v14 = AVAudioSessionCategoryPlayback;
  v15 = AVAudioSessionModeDefault;
  static DispatchQoS.unspecified.getter();
  v17[1] = _swiftEmptyArrayStorage;
  sub_1004E805C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);

  return result;
}

uint64_t sub_1004E93BC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

id sub_1004E9434()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + qword_100988CF8) setAlpha:v1];
}

uint64_t sub_1004E946C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100988DF0, &qword_1007D1C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004E9568()
{
  v0 = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
  sub_1004E9AF8(&qword_100974850, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007BC71C);
  sub_1004E9AF8(&qword_100974858, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007BC5F8);
  sub_1004E9AF8(&qword_100974860, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007BC6D4);
  return v0;
}

uint64_t sub_1004E9634()
{
  type metadata accessor for TodayCard();
  sub_1004E9AF8(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v2)
  {
    return 0;
  }

  TodayCard.media.getter();
  v0 = TodayCardMedia.kind.getter();

  result = 0;
  if (v0 > 6)
  {
    if (v0 == 7)
    {
      return type metadata accessor for GridTodayBrickCollectionViewCell(0);
    }

    else if (v0 == 8)
    {
      return type metadata accessor for VideoTodayBrickCollectionViewCell(0);
    }
  }

  else if (v0)
  {
    if (v0 == 1)
    {
      return type metadata accessor for BrandedAppTodayBrickCollectionViewCell(0);
    }
  }

  else
  {
    return type metadata accessor for TodayBrickCollectionViewCellWithBackground(0);
  }

  return result;
}

uint64_t sub_1004E9740()
{
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v16 - v5;
  v7 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for Shelf.ContentType.smallStoryCard(_:), v0);
  sub_1004E9AF8(&qword_100971EE8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v13 = *(v1 + 8);
    v13(v3, v0);
    v13(v6, v0);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_1004E9634();
  if (result)
  {
    v15 = result;
    sub_1004E9AF8(&qword_100974850, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007BC71C);
    sub_1004E9AF8(&qword_100974858, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007BC5F8);
    sub_1004E9AF8(&qword_100974860, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007BC6D4);
    return v15;
  }

  return result;
}

uint64_t sub_1004E9AF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004E9B40()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCaption2;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightBold];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = UIFontTextStyleFootnote;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightBold];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v1;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightBold];

  if (v6)
  {
    qword_1009D2220 = v2;
    *algn_1009D2228 = v4;
    qword_1009D2230 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1004E9C58()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle3;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightRegular];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = UIFontTextStyleBody;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightRegular];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v1;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightRegular];

  if (v6)
  {
    qword_1009D2238 = v2;
    unk_1009D2240 = v4;
    qword_1009D2248 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1004E9D70()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle3;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightBold];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v1;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightBold];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v3;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightBold];

  if (v6)
  {
    qword_1009D2250 = v2;
    *algn_1009D2258 = v4;
    qword_1009D2260 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1004E9E7C()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleFootnote;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = UIFontTextStyleSubheadline;
  v4 = [v0 preferredFontForTextStyle:v3];

  v5 = UIFontTextStyleBody;
  v6 = [v0 preferredFontForTextStyle:v5];

  qword_1009D2268 = v2;
  unk_1009D2270 = v4;
  qword_1009D2278 = v6;
}

id sub_1004E9F68(uint64_t a1)
{
  v57 = a1;
  v1 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v1 - 8);
  v56 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = v45 - v4;
  v5 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v5 - 8);
  v54 = v45 - v6;
  v7 = type metadata accessor for VideoControls();
  __chkstk_darwin(v7 - 8);
  v50 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = v45 - v10;
  v11 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v11 - 8);
  v48 = v45 - v12;
  v13 = type metadata accessor for VideoFillMode();
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v47 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VideoConfiguration();
  v52 = *(v15 - 8);
  v53 = v15;
  __chkstk_darwin(v15);
  v51 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Uber.Style();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v45 - v22;
  v24 = type metadata accessor for Uber.AssetType();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  Uber.assetType.getter();
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 != enum case for Uber.AssetType.artwork(_:))
  {
    if (v28 == enum case for Uber.AssetType.video(_:))
    {
      if (Uber.video.getter())
      {
        type metadata accessor for VideoViewManager();
        BaseObjectGraph.inject<A>(_:)();
        v45[1] = v60[0];
        (*(v46 + 104))(v47, enum case for VideoFillMode.scaleAspectFill(_:), v13);
        Video.preview.getter();
        Artwork.size.getter();
        v31 = v48;
        AspectRatio.init(_:_:)();

        v32 = type metadata accessor for AspectRatio();
        (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
        Video.playbackControls.getter();
        Video.autoPlayPlaybackControls.getter();
        Video.canPlayFullScreen.getter();
        Video.allowsAutoPlay.getter();
        Video.looping.getter();
        v33 = v51;
        VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
        Video.playbackId.getter();
        v34 = v54;
        Video.videoUrl.getter();
        v35 = type metadata accessor for URL();
        (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
        v36 = v55;
        Video.templateMediaEvent.getter();
        v37 = v56;
        Video.templateClickEvent.getter();
        type metadata accessor for VideoView(0);
        sub_1004EA8C0(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
        v38 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
        sub_10002B894(v37, &unk_100973A50, &unk_1007B4FD0);
        sub_10002B894(v36, &unk_100973A50, &unk_1007B4FD0);
        sub_10002B894(v34, &qword_100982460, &unk_1007B5C90);
        sub_10002B894(v60, &qword_10096FB90, &qword_1007B2A50);
        if (v38)
        {
          v39 = v38;
          Video.preview.getter();
          v40 = Artwork.backgroundColor.getter();

          [v39 setBackgroundColor:v40];

          (*(v52 + 8))(v33, v53);
        }

        else
        {
          (*(v52 + 8))(v33, v53);
        }

        return v38;
      }
    }

    else if (v28 != enum case for Uber.AssetType.icon(_:))
    {
      (*(v25 + 8))(v27, v24);
    }

    return 0;
  }

  v29 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  Uber.style.getter();
  (*(v18 + 104))(v20, enum case for Uber.Style.inline(_:), v17);
  sub_1004EA8C0(&qword_100973B50, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v60[0] == v58 && v60[1] == v59)
  {
    v30 = *(v18 + 8);
    v30(v20, v17);
    v30(v23, v17);
  }

  else
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v42 = *(v18 + 8);
    v42(v20, v17);
    v42(v23, v17);

    if ((v41 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  [v29 setContentMode:2];
LABEL_11:
  v38 = v29;
  if (!Uber.artwork.getter() || (v43 = Artwork.backgroundColor.getter(), , !v43))
  {
    if (Uber.compactArtwork.getter())
    {
      v43 = Artwork.backgroundColor.getter();
    }

    else
    {
      v43 = 0;
    }
  }

  [v38 setBackgroundColor:v43];

  return v38;
}

uint64_t sub_1004EA8C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004EA908(char a1)
{
  v3 = a1 & 1;
  result = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded);
  *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) = a1;
  if (result == v3)
  {
    return result;
  }

  v5 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory);
  if (v5 != 7)
  {
    v6 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory);
    if (v6 != 7)
    {
      switch(v5)
      {
        case 6:
          if (v6 == 6)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        case 5:
          if (v6 == 5)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        case 4:
          if (v6 == 4)
          {
            goto LABEL_20;
          }

LABEL_16:
          if (a1)
          {
            v7 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory);
          }

          else
          {
            v7 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory);
          }

          v8 = result;
          (*((swift_isaMask & *v1) + 0x1D0))(v7);
          result = v8;
          goto LABEL_20;
      }

      if (v5 != v6 || (v6 - 7) >= 0xFDu)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_20:
  v9 = *((swift_isaMask & *v1) + 0x1C8);

  return v9(result);
}

uint64_t sub_1004EAA64@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10097DBD0, &qword_1007BC750);
}

uint64_t sub_1004EAACC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10097DBD0, &qword_1007BC750);
  return swift_endAccess();
}

uint64_t sub_1004EAB3C(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory);
  *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory) = a1;
  if (*(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) & 1) != 0 || ((*((swift_isaMask & *v1) + 0x138))())
  {
    v4 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (*(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) != 7)
    {
      goto LABEL_7;
    }

    v5 = 7;
  }

  else
  {
    v4 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    v5 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory);
  }

  *(v1 + v4) = a1;
  (*((swift_isaMask & *v1) + 0x1D8))(v5);
LABEL_7:
  v6 = *((swift_isaMask & *v1) + 0x1D0);

  return v6(v3);
}

__n128 sub_1004EACA8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32);
  result = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets);
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_1004EACC8(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets;
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

void sub_1004EACE8()
{
  v1 = [v0 backgroundView];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v2 bounds];
  Width = CGRectGetWidth(v17);
  v10 = [v2 subviews];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_4:
      if (v12 < 1)
      {
        __break(1u);
        return;
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
        [v14 setFrame:{v4, v6, Width, v8}];
      }
    }
  }
}

void sub_1004EAE8C()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = 0;
  }

  else
  {
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceStyle];

    v1 = v3 == 2;
  }

  v4 = [v0 layer];
  v5 = v4;
  v6 = 0.0;
  v7 = 1.0;
  if (!v1)
  {
    v7 = 0.0;
  }

  [v4 setBorderWidth:v7];

  v8 = [v0 layer];
  if (v1)
  {
    v9 = [objc_opt_self() systemWhiteColor];
    v10 = [v9 colorWithAlphaComponent:0.1];

    v11 = [v10 CGColor];
    v6 = 20.0;
  }

  else
  {
    v11 = 0;
  }

  [v8 setBorderColor:v11];

  v12 = [v0 layer];
  [v12 setCornerRadius:v6];

  v13 = [v0 layer];
  [v13 setNeedsDisplay];
}

id sub_1004EB068()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) == 4)
  {
    v1 = [v0 contentView];
    [v1 setClipsToBounds:1];
  }

  return [v0 setNeedsLayout];
}

void sub_1004EB0E4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    (*((swift_isaMask & *v3) + 0xE0))(v8);
    v10 = (*(a2 + 160))(ObjectType, a2);
    v11 = *(v3 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory);
    *(v3 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) = v10;
    (*((swift_isaMask & *v3) + 0x1D8))(v11);
    v12 = (*(a2 + 136))(ObjectType, a2);
    sub_1004EAB3C(v12);
  }
}

void sub_1004EB284()
{
  swift_getObjectType();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1004EEDF4;
  *(v4 + 24) = v3;
  v7[4] = sub_10006F094;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000489A8;
  v7[3] = &unk_1008C65B0;
  v5 = _Block_copy(v7);
  v6 = v0;
  v1;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_1004EB418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  (*(v5 + 56))(v13, 0, 1, v4);
  (*((swift_isaMask & *v2) + 0xE0))(v13);
  type metadata accessor for TodayCardGridTracker();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  sub_1006E2600();
  sub_1004EAB3C(v14);
  type metadata accessor for TodayCard();
  sub_1004EEDAC(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  v15 = ItemLayoutContext.typedModel<A>(as:)();
  v16 = v20;
  if (v20)
  {
    (*((swift_isaMask & *v2) + 0xD8))(v15);
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {

      sub_10002B894(v10, &qword_10097DBD0, &qword_1007BC750);
    }

    else
    {
      (*(v5 + 32))(v7, v10, v4);
      if (*(v2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
      {
        v17 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v17 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v18 = *(v2 + *v17);
      if (v18 == 7)
      {
        (*(v5 + 8))(v7, v4);
      }

      else
      {
        (*((swift_isaMask & *v2) + 0x1E0))(v16, v18, v7, a2);
        [v2 setNeedsLayout];

        (*(v5 + 8))(v7, v4);
      }
    }
  }

  else
  {
  }
}

uint64_t sub_1004EB808(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakAssign();
  v5 = (*((swift_isaMask & *v2) + 0x268))(a1, a2);
  v7 = v6;
  v8 = (v2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = v5;
  v8[1] = v7;
  sub_10000827C(v5, v7);
  result = sub_10001F63C(v9, v10);
  if (v5)
  {
    v5(result);
    return sub_10001F63C(v5, v7);
  }

  return result;
}

uint64_t sub_1004EB920()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ImpressionsCalculator.removeAllElements()();
  }

  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  *v1 = 0;
  v1[1] = 0;
  return sub_10001F63C(v2, v3);
}

id sub_1004EB9C0()
{
  [v0 setAccessibilityTraits:UIAccessibilityTraitButton];
  [v0 setIsAccessibilityElement:0];
  v1 = [v0 contentView];
  [v1 setIsAccessibilityElement:1];

  v2 = [v0 contentView];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v11 = sub_1004EEDA4;
  v12 = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1004ED208;
  v10 = &unk_1008C6538;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v2 setAutomationElementsBlock:v4];
  _Block_release(v4);

  v6 = type metadata accessor for Feature.iOS();
  v10 = v6;
  v11 = sub_1004EEDAC(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v7 = sub_1000056E0(v9);
  (*(*(v6 - 8) + 104))(v7, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v6);
  LOBYTE(v6) = isFeatureEnabled(_:)();
  result = sub_100007000(v9);
  if ((v6 & 1) == 0)
  {
    return [v5 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  return result;
}

void sub_1004EBBD4(uint64_t a1, __objc2_class_ro *a2, char a3, uint64_t a4, NSString *a5)
{
  if (a3)
  {
    sub_1004674A4(a2, a4, a5);
  }

  else
  {
    sub_100467918(a2, a4, a5);
  }
}

double sub_1004EBBF0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PageGrid();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayCardGridTracker();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  sub_1006E2600();
  v8 = v7;
  type metadata accessor for TodayCard();
  sub_1004EEDAC(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  ItemLayoutContext.typedModel<A>(as:)();
  v9 = v16;
  if (v16)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v10 = v16;
    v11 = (*(v2 + 528))(v9, v8, 0, v6, v16, 0);
  }

  else
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v12 = v16;
    sub_100467918(v8, v6, v16);
    v11 = v13;
  }

  (*(v4 + 8))(v6, v3);
  return v11;
}

void sub_1004EBE78(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for PageGrid();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a3, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  (*((swift_isaMask & *v3) + 0xE0))(v8);
  sub_1004EAB3C(a2);
  v11 = [v3 backgroundView];
  if (v11)
  {
    v12 = v11;
    v13 = TodayCard.backgroundColor.getter();
    if (!v13)
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v13 = static UIColor.todayCardDefaultBackground.getter();
    }

    v14 = v13;
    [v12 setBackgroundColor:v13];
  }
}

uint64_t sub_1004EC024()
{
  v1 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0xD8))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10002B894(v3, &qword_10097DBD0, &qword_1007BC750);
  }

  (*(v5 + 32))(v8, v3, v4);
  if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v10 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v10 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v11 = *(v0 + *v10);
  if (v11 != 7)
  {
    v12 = [v0 traitCollection];
    sub_100699674(v11, v12);
  }

  return (*(v5 + 8))(v8, v4);
}

void *sub_1004EC290(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v54[1] = swift_getObjectType();
  v10 = type metadata accessor for CornerStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v14 - 8);
  v16 = v54 - v15;
  v17 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_itemLayoutContext;
  v18 = type metadata accessor for ItemLayoutContext();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] = 0;
  v19 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  v20 = type metadata accessor for PageGrid();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory] = 7;
  v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] = 7;
  v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning] = 0;
  v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isMotionEnabled] = 1;
  v21 = &v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v21[32] = 1;
  swift_weakInit();
  v22 = &v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock];
  v23 = type metadata accessor for ShadowView();
  *v22 = 0;
  v22[1] = 0;
  v24 = [objc_allocWithZone(v23) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_shadowView] = v24;
  v25 = type metadata accessor for BaseTodayCardCollectionViewCell(0);
  v55.receiver = v5;
  v55.super_class = v25;
  v26 = objc_msgSendSuper2(&v55, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v32 = [v30 layer];
  [v32 setAllowsGroupOpacity:0];

  v33 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_shadowView;
  v34 = qword_10096DA38;
  v35 = *(v30 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_shadowView);
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Shadow();
  v37 = sub_1000056A8(v36, qword_1009CFD08);
  v38 = *(v36 - 8);
  (*(v38 + 16))(v16, v37, v36);
  (*(v38 + 56))(v16, 0, 1, v36);
  dispatch thunk of ShadowView.shadow.setter();

  v39 = *(v30 + v33);
  (*(v11 + 104))(v13, enum case for CornerStyle.continuous(_:), v10);
  v40 = v39;
  dispatch thunk of ShadowView.setCorner(radius:style:)();

  (*(v11 + 8))(v13, v10);
  [v30 insertSubview:*(v30 + v33) atIndex:0];
  v41 = [objc_allocWithZone(UIView) init];
  [v30 setBackgroundView:v41];

  v42 = [v30 backgroundView];
  [v42 setClipsToBounds:0];

  v43 = [v30 backgroundView];
  [v43 _setContinuousCornerRadius:20.0];

  v44 = [v30 backgroundView];
  if (v44)
  {
    v45 = v44;
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v46 = static UIColor.todayCardDefaultBackground.getter();
    [v45 setBackgroundColor:v46];
  }

  v47 = [v30 contentView];
  v48 = [v47 layer];

  [v48 setAllowsGroupBlending:0];
  v49 = [v30 contentView];
  [v49 setClipsToBounds:1];

  v50 = [v30 backgroundView];
  if (v50)
  {
    v51 = [v50 layer];

    [v51 setAllowsGroupBlending:0];
  }

  (*((swift_isaMask & *v30) + 0x278))();
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1007B10D0;
  *(v52 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v52 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v30;
}

void sub_1004EC9FC()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for BaseTodayCardCollectionViewCell(0);
  objc_msgSendSuper2(&v8, "layoutSubviews");
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    [v0 bounds];
    ImpressionsCalculator.viewBounds.setter();
  }

  v2 = *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_shadowView);
  [v1 bounds];
  [v2 setFrame:?];
  v3 = [v1 sendSubviewToBack:v2];
  (*((swift_isaMask & *v1) + 0x1A8))(v3);
  v4 = v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock;
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 1);

    v5(v7);
    sub_10001F63C(v5, v6);
  }
}

id sub_1004ECC90(void *a1, void *a2)
{
  [a1 frame];
  [a2 setFrame:?];
  v4 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  v5 = sub_1004EA908(*(a1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded));
  v6 = (*((swift_isaMask & *a1) + 0x138))(v5);
  v7 = (*((swift_isaMask & *a2) + 0x140))(v6 & 1);
  v8 = (*((swift_isaMask & *a1) + 0x150))(v7);
  (*((swift_isaMask & *a2) + 0x158))(v8 & 1);
  v9 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v10 = *(a2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory);
  *(a2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) = *(a1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory);
  (*((swift_isaMask & *a2) + 0x1D8))(v10);
  if (*(a1 + v4))
  {
    v11 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_1004EAB3C(*(a1 + v11));
  v13 = (*((swift_isaMask & *a1) + 0x190))(v12);
  (*((swift_isaMask & *a2) + 0x198))(v13 & 1);
  v14 = sub_1004EEDAC(&unk_100988FF0, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007D1FAC);
  (*((swift_isaMask & *a2) + 0x1E8))(a1, v14, 0);

  return [a2 layoutIfNeeded];
}

_BYTE *sub_1004ECFAC(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded];
  v8 = type metadata accessor for BaseTodayCardCollectionViewCell(0);
  if (v7)
  {
    v12.receiver = v3;
    v12.super_class = v8;
    return objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  }

  else
  {
    v13.receiver = v3;
    v13.super_class = v8;
    result = objc_msgSendSuper2(&v13, "hitTest:withEvent:", a1, a2, a3);
    if (result)
    {
      v10 = result;
      [v3 bounds];
      v14.x = a2;
      v14.y = a3;
      if (!CGRectContainsPoint(v15, v14))
      {
        return v10;
      }

      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      if (static NSObject.== infix(_:_:)())
      {
        return v10;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return v10;
      }

      type metadata accessor for SearchAdTransparencyLabel(0);
      if (swift_dynamicCastClass())
      {
        return v10;
      }

      else
      {

        v11 = v3;
        return v3;
      }
    }
  }

  return result;
}

char *sub_1004ED174(void *a1)
{
  v1 = [a1 contentView];
  v2 = [v1 subviews];

  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_1002A5EF0(v3);

  return v4;
}

Class sub_1004ED208(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

id sub_1004ED284()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTodayCardCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BaseTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_100988FB8;
  if (!qword_100988FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004ED3B0(uint64_t a1)
{
  sub_1001890DC(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_1001890DC(319, &qword_100977370, &type metadata accessor for PageGrid);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1004ED540()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  return *(v0 + *v1);
}

double sub_1004ED5F8@<D0>(uint64_t a1@<X8>)
{
  (*((swift_isaMask & *v1) + 0x170))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1004ED7E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &unk_1009731E0, &unk_1007B0B60);
}

uint64_t sub_1004ED84C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &unk_1009731E0, &unk_1007B0B60);
  return swift_endAccess();
}

uint64_t sub_1004ED920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

double sub_1004EDA7C(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_1004EDADC(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

uint64_t sub_1004EDB74()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_1004EDBD0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

uint64_t sub_1004EDDE8(void *a1)
{
  a1[3] = sub_1004EEDAC(&qword_100988FC8, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007D1ED4);
  a1[4] = sub_1004EEDAC(&qword_100988FD0, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007D1F04);
  a1[5] = sub_1004EEDAC(&qword_100974810, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007D1F34);
  a1[6] = sub_1004EEDAC(&qword_100988FD8, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007D1EA4);
  a1[7] = sub_1004EEDAC(&qword_100988FE0, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007D1E04);
  a1[8] = sub_1004EEDAC(&qword_100988FE8, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007D1E7C);
  result = sub_1004EEDAC(&qword_100974820, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007D1F64);
  a1[9] = result;
  return result;
}

uint64_t sub_1004EDF34(uint64_t a1, void *a2)
{
  v4 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031660(a1, v6, &qword_10097DBD0, &qword_1007BC750);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &qword_10097DBD0, &qword_1007BC750);
  }

  (*(v8 + 32))(v10, v6, v7);
  PageGrid.horizontalDirectionalMargins.getter();
  PageGrid.horizontalDirectionalMargins.getter();
  [a2 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1004EE154(uint64_t result, char a2)
{
  if (result)
  {

    TodayCard.media.getter();
    v3 = TodayCardMedia.kind.getter();

    if (v3 <= 6)
    {
      if (v3 > 3)
      {
        if (v3 == 4)
        {

          v4 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell(0);
          v5 = &unk_1009877F8;
          v6 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell;
          goto LABEL_37;
        }

        if (v3 != 5)
        {
          goto LABEL_16;
        }

        if (a2 == 4)
        {
          goto LABEL_35;
        }

        v8 = type metadata accessor for RiverTodayCardCollectionViewCell(0);
        goto LABEL_36;
      }

      if (v3 >= 2)
      {
        if (v3 != 2)
        {
          if (v3 != 3)
          {
            goto LABEL_32;
          }

LABEL_16:

          v4 = type metadata accessor for MultiAppFallbackCardCollectionViewCell(0);
          v5 = &unk_1009877E0;
          v6 = type metadata accessor for MultiAppFallbackCardCollectionViewCell;
          goto LABEL_37;
        }

        if (a2 == 4)
        {
          TodayCard.media.getter();
          type metadata accessor for TodayCardMediaList();
          if (swift_dynamicCastClass())
          {
            v7 = TodayCardMediaList.hasMedia.getter();

            if (v7)
            {
              v4 = type metadata accessor for ListTodayCardCollectionViewCell(0);
              v5 = &unk_100980BB8;
              v6 = type metadata accessor for ListTodayCardCollectionViewCell;
              goto LABEL_37;
            }
          }

          else
          {
          }

LABEL_35:
          v8 = type metadata accessor for MultiAppFallbackCardCollectionViewCell(0);
          goto LABEL_36;
        }

        v8 = type metadata accessor for ListTodayCardCollectionViewCell(0);
LABEL_36:
        v4 = v8;
        v5 = &unk_100988FF0;
        v6 = type metadata accessor for BaseTodayCardCollectionViewCell;
        goto LABEL_37;
      }

LABEL_21:

      v4 = type metadata accessor for StoryCardCollectionViewCell(0);
      v5 = &unk_100979D48;
      v6 = type metadata accessor for StoryCardCollectionViewCell;
      goto LABEL_37;
    }

    if (v3 > 10)
    {
      switch(v3)
      {
        case 11:

          v4 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell(0);
          v5 = &unk_1009877D0;
          v6 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell;
          goto LABEL_37;
        case 12:

          v4 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(0);
          v5 = &unk_1009877C8;
          v6 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell;
          goto LABEL_37;
        case 13:

          v4 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell(0);
          v5 = &unk_1009877C0;
          v6 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell;
          goto LABEL_37;
      }
    }

    else
    {
      switch(v3)
      {
        case 7:

          v4 = type metadata accessor for GridTodayCardCollectionViewCell(0);
          v5 = &unk_1009877E8;
          v6 = type metadata accessor for GridTodayCardCollectionViewCell;
          goto LABEL_37;
        case 8:
          goto LABEL_21;
        case 10:

          v4 = type metadata accessor for AppEventTodayCardCollectionViewCell(0);
          v5 = &unk_1009877D8;
          v6 = type metadata accessor for AppEventTodayCardCollectionViewCell;
LABEL_37:
          sub_1004EEDAC(v5, v6, &unk_1007D1FAC);
          return v4;
      }
    }

LABEL_32:

    return 0;
  }

  return result;
}

id sub_1004EE4C4()
{
  v1 = v0;
  v2 = type metadata accessor for PageGrid();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v42 - v14;
  v16 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  v17 = *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_shadowView);
  if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) != 1)
  {
    [v17 setHidden:{0, v13}];
    v22 = [v0 backgroundView];
    if (v22)
    {
      v23 = v22;
      [v22 _setContinuousCornerRadius:20.0];
    }

    v24 = [v1 contentView];
    [v24 _setContinuousCornerRadius:20.0];

    (*((swift_isaMask & *v1) + 0xD8))();
    if ((*(v3 + 48))(v11, 1, v2))
    {
      v21 = v11;
      goto LABEL_10;
    }

    (*(v3 + 16))(v5, v11, v2);
    sub_10002B894(v11, &qword_10097DBD0, &qword_1007BC750);
    if (*(v1 + v16))
    {
      v34 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v34 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v35 = *(v1 + *v34);
    v36 = [v1 traitCollection];
    if (v35 != 4)
    {
      PageGrid.horizontalDirectionalMargins.getter();
      PageGrid.horizontalDirectionalMargins.getter();
    }

    [v36 layoutDirection];
    NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
    v27 = v37;
    v29 = v38;
    v31 = v39;
    v33 = v40;

    (*(v3 + 8))(v5, v2);
LABEL_18:
    [v1 setLayoutMargins:{v27, v29, v31, v33}];
    return [v1 setNeedsLayout];
  }

  [v17 setHidden:{1, v13}];
  v18 = [v0 backgroundView];
  if (v18)
  {
    v19 = v18;
    [v18 _setContinuousCornerRadius:0.0];
  }

  v20 = [v1 contentView];
  [v20 _setContinuousCornerRadius:0.0];

  (*((swift_isaMask & *v1) + 0xD8))();
  if (!(*(v3 + 48))(v15, 1, v2))
  {
    (*(v3 + 16))(v8, v15, v2);
    sub_10002B894(v15, &qword_10097DBD0, &qword_1007BC750);
    v25 = [v1 traitCollection];
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
    [v25 layoutDirection];
    NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    (*(v3 + 8))(v8, v2);
    goto LABEL_18;
  }

  v21 = v15;
LABEL_10:
  sub_10002B894(v21, &qword_10097DBD0, &qword_1007BC750);
  return [v1 setNeedsLayout];
}

uint64_t sub_1004EE9F4(uint64_t a1, char a2, void *a3)
{
  v6 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for PageGrid();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031660(a1, v8, &qword_10097DBD0, &qword_1007BC750);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10002B894(v8, &qword_10097DBD0, &qword_1007BC750);
  }

  (*(v10 + 32))(v12, v8, v9);
  if (a2 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [a3 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  return (*(v10 + 8))(v12, v9);
}

void sub_1004EEC30()
{
  v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) = 0;
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  v4 = type metadata accessor for PageGrid();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isMotionEnabled) = 1;
  v5 = v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 1;
  swift_weakInit();
  v6 = (v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  *v6 = 0;
  v6[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004EEDAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004EEE04()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D22D0);
  sub_1000056A8(v4, qword_1009D22D0);
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

uint64_t sub_1004EF4D8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  sub_1004F09C8(v14, v13, v7, v6);

  return (*(v11 + 8))(v13, v10);
}

id sub_1004EF718()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100982AA0, qword_1007C0320);
  __chkstk_darwin(v2 - 8);
  v4 = &v65 - v3;
  v5 = SearchAction.term.getter();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return 0;
  }

  v74 = v5;
  v9 = objc_opt_self();
  if (qword_10096EAA8 != -1)
  {
    swift_once();
  }

  v10 = qword_1009D2D70;
  v11 = [*(v1 + OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_pageTraits) traitCollection];
  v12 = [v9 preferredFontForTextStyle:v10 compatibleWithTraitCollection:v11];

  SearchAction.entity.getter();
  v13 = type metadata accessor for SearchEntity();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {
    sub_10002B894(v4, &unk_100982AA0, qword_1007C0320);
    v15 = Action.title.getter();
    if (v16)
    {
      v17 = v15;

      v74 = v17;
    }
  }

  else
  {
    v74 = sub_1004EFF28(v74, v7);
    (*(v14 + 8))(v4, v13);
  }

  v72 = sub_10002849C(&unk_100973960, &unk_1007B4930);
  inited = swift_initStackObject();
  v71 = xmmword_1007B1890;
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = NSForegroundColorAttributeName;
  v20 = qword_10096EC80;
  v70 = NSForegroundColorAttributeName;
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_1009D3298;
  v22 = sub_100005744(0, &qword_100970180, UIColor_ptr);
  *(inited + 40) = v21;
  v69 = v22;
  *(inited + 64) = v22;
  *(inited + 72) = NSFontAttributeName;
  v23 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  *(inited + 104) = v23;
  *(inited + 80) = v12;
  v24 = v21;
  v68 = NSFontAttributeName;
  v73 = v12;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0, &unk_1007B2BF0);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(NSMutableAttributedString);
  v26 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10006F0F0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = [v25 initWithString:v26 attributes:isa];

  v29 = SearchAction.prefixTerm.getter();
  if (v30)
  {
    v66 = v29;
    v67 = v30;
    v31 = v28;
    v32 = v73;
    v33 = swift_initStackObject();
    *(v33 + 16) = v71;
    v34 = v70;
    *(v33 + 32) = v70;
    v35 = qword_10096EC78;
    v36 = v34;
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = qword_1009D3290;
    *(v33 + 40) = qword_1009D3290;
    v38 = v68;
    *(v33 + 64) = v69;
    *(v33 + 72) = v38;
    *(v33 + 104) = v23;
    *(v33 + 80) = v32;
    v39 = v38;
    v40 = v32;
    v41 = v37;
    sub_100397150(v33);
    swift_setDeallocating();
    swift_arrayDestroy();
    v74 = Dictionary._bridgeToObjectiveC()().super.isa;

    v65 = v31;
    v42 = [v31 string];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v79 = v43;
    v80 = v45;
    v77 = 9994466;
    v78 = 0xA300000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    sub_10007FED4();
    v46 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v48 = v47;

    v79 = v46;
    v80 = v48;
    v77 = 96;
    v78 = 0xE100000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    v49 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v51 = v50;

    v79 = v49;
    v80 = v51;
    v77 = 10060002;
    v78 = 0xA300000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v52 = String._bridgeToObjectiveC()();

    v79 = v66;
    v80 = v67;
    v76 = 0xE100000000000000;
    v77 = 9994466;
    v78 = 0xA300000000000000;
    v75 = 39;
    v53 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v55 = v54;

    v79 = v53;
    v80 = v55;
    v77 = 96;
    v78 = 0xE100000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    v56 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v58 = v57;

    v79 = v56;
    v80 = v58;
    v76 = 0xE100000000000000;
    v77 = 10060002;
    v28 = v65;
    v78 = 0xA300000000000000;
    v75 = 39;
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v59 = String._bridgeToObjectiveC()();

    v60 = [v52 rangeOfString:v59 options:1];
    v62 = v61;

    v63 = v74;
    [v28 addAttributes:v74 range:{v60, v62}];
  }

  v64 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v28];

  return v64;
}

uint64_t sub_1004EFF28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = 0xD000000000000020;
  v7 = type metadata accessor for SearchEntity();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v3, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for SearchEntity.developers(_:))
  {
    v13 = "Search.ResultsTitle.InStories";
LABEL_9:
    sub_10002849C(&unk_100984010, &qword_1007BCDD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    v15 = sub_1001962CC(inited);
    swift_setDeallocating();
    sub_10002B894(inited + 32, &unk_100989050, &qword_1007CB9D0);
    v16._object = (v13 | 0x8000000000000000);
    v16._countAndFlagsBits = v6;
    countAndFlagsBits = localizedString(_:with:)(v16, v15)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v12 == enum case for SearchEntity.stories(_:))
  {
    v13 = "Search.ResultsTitle.InArcade";
    v6 = 0xD00000000000001DLL;
    goto LABEL_9;
  }

  if (v12 == enum case for SearchEntity.arcade(_:))
  {
    v13 = "Search.ResultsTitle.InWatch";
    v6 = 0xD00000000000001CLL;
    goto LABEL_9;
  }

  if (v12 == enum case for SearchEntity.watch(_:))
  {
    v13 = "must be handled.";
    v6 = 0xD00000000000001BLL;
    goto LABEL_9;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1004F0214(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHintsCollectionViewDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1004F02C8(uint64_t a1)
{
  result = Action.artwork.getter();
  if (result)
  {
    dispatch thunk of Artwork.systemImageName.getter();
    v3 = v2;

    if (v3)
    {
      v4 = qword_10096EC98;

      if (v4 != -1)
      {
        swift_once();
      }

      v5 = [objc_opt_self() configurationWithTextStyle:qword_1009D32B0];
      v6 = static SystemImage.load(_:with:includePrivateImages:)();

      if (qword_10096EC90 != -1)
      {
        swift_once();
      }

      v7 = [v6 imageWithTintColor:qword_1009D32A8];
      swift_bridgeObjectRelease_n();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1004F040C(void *a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchHintCollectionViewCell();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = a1;
    IndexPath.item.getter();
    v14 = dispatch thunk of SearchHintsPresenter.hint(at:)();
    v15 = sub_1004EF718();
    if (v15)
    {
      v16 = v15;
      v32 = v13;
      v17 = OBJC_IVAR____TtC8AppStore28SearchHintCollectionViewCell_hintView;
      v18 = *(v2 + OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_pageTraits);
      v19 = *&v12[OBJC_IVAR____TtC8AppStore28SearchHintCollectionViewCell_hintView];
      v33 = v8;
      v20 = v19;
      [v18 pageMarginInsets];
      [v20 setLayoutMargins:?];

      v21 = *&v12[v17];
      *(v21 + OBJC_IVAR____TtC8AppStore14SearchHintView_showSeparator) = 1;
      [*(v21 + OBJC_IVAR____TtC8AppStore14SearchHintView_separatorView) setHidden:0];
      v22 = *&v12[v17];
      v23 = v16;
      v24 = v22;
      v25 = sub_1004F02C8(v14);
      [*&v24[OBJC_IVAR____TtC8AppStore14SearchHintView_titleLabel] setAttributedText:v23];
      v26 = *&v24[OBJC_IVAR____TtC8AppStore14SearchHintView_iconImage];
      *&v24[OBJC_IVAR____TtC8AppStore14SearchHintView_iconImage] = v25;
      v27 = v25;

      sub_1005EA968(v28, v29, v30);
      [v24 setNeedsLayout];

      v31 = v33;

      Action.impressionMetrics.getter();

      if ((*(v31 + 48))(v6, 1, v7) == 1)
      {

        sub_10002B894(v6, &qword_100973D30, &unk_1007B1DC0);
      }

      else
      {
        (*(v31 + 32))(v10, v6, v7);
        if (*(v2 + OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_impressionsCalculator))
        {

          [v12 frame];
          ImpressionsCalculator.addElement(_:at:)();
        }

        else
        {
        }

        (*(v31 + 8))(v10, v7);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1004F07B8()
{
  v1 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for ImpressionMetrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = IndexPath.item.getter();
  result = dispatch thunk of SearchHintsPresenter.resultCount.getter();
  if (v8 < result)
  {
    IndexPath.item.getter();
    dispatch thunk of SearchHintsPresenter.hint(at:)();
    Action.impressionMetrics.getter();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      return sub_10002B894(v3, &qword_100973D30, &unk_1007B1DC0);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      if (*(v0 + OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_impressionsCalculator))
      {

        ImpressionsCalculator.removeElement(_:)();
      }

      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

void sub_1004F09C8(void *a1, uint64_t a2, char a3, char a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(IndexPath.item.getter(), 1))
  {
    __break(1u);
  }

  else
  {
    IndexPath.section.getter();
    IndexPath.init(item:section:)();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v10, v7);
    v12 = [a1 cellForItemAtIndexPath:isa];

    if (v12)
    {
      type metadata accessor for SearchHintCollectionViewCell();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = *(v13 + OBJC_IVAR____TtC8AppStore28SearchHintCollectionViewCell_hintView);
        *(v14 + OBJC_IVAR____TtC8AppStore14SearchHintView_showSeparator) = a3;
        [*(v14 + OBJC_IVAR____TtC8AppStore14SearchHintView_separatorView) setHidden:a4 & 1];
      }
    }
  }
}

double sub_1004F0B50(void *a1)
{
  IndexPath.item.getter();
  dispatch thunk of SearchHintsPresenter.hint(at:)();
  v3 = sub_1004EF718();

  if (!v3)
  {
    return 0.0;
  }

  [a1 frame];
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_pageTraits);
  swift_unknownObjectRetain();
  sub_1005EB9BC(v3, v6);
  type metadata accessor for LayoutViewPlaceholder();
  dispatch thunk of Measurable.measurements(fitting:in:)();

  swift_unknownObjectRelease();
  return v5;
}

double sub_1004F0C60()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_titleLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_captionLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView] setImage:0];
  *&v0[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon] = 0;

  return result;
}

uint64_t sub_1004F0D04()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ProductCapabilityLayout.Metrics();
  sub_100005644(v4, qword_1009D22E8);
  v30 = sub_1000056A8(v4, qword_1009D22E8);
  v40[8] = &type metadata for Double;
  v40[9] = &protocol witness table for Double;
  v40[5] = 0x4030000000000000;
  if (qword_10096E030 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1010);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v11 = v1 + 13;
  v29 = v1[13];
  v29(v3, enum case for FontSource.useCase(_:), v0);
  v28 = type metadata accessor for StaticDimension();
  v40[3] = v28;
  v40[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v40);
  v38 = v0;
  v39 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v37);
  v27 = v1[2];
  v27(v12, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v13 = v1[1];
  v25 = v1 + 1;
  v26 = v13;
  v13(v3, v0);
  if (qword_10096E038 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v5, qword_1009D1028);
  v22[0] = v8;
  v22[1] = v9;
  v8(v3, v14, v5);
  v15 = v29;
  v29(v3, v10, v0);
  v24 = v11;
  v16 = v28;
  v38 = v28;
  v39 = &protocol witness table for StaticDimension;
  sub_1000056E0(v37);
  v23 = v10;
  v35 = v0;
  v36 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v34);
  v18 = v27;
  v27(v17, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v19 = v26;
  v26(v3, v0);
  (v22[0])(v3, v14, v5);
  v15(v3, v23, v0);
  v35 = v16;
  v36 = &protocol witness table for StaticDimension;
  sub_1000056E0(v34);
  v32 = v0;
  v33 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v31);
  v18(v20, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v19(v3, v0);
  v33 = &protocol witness table for Double;
  v32 = &type metadata for Double;
  v31[0] = 0;
  return ProductCapabilityLayout.Metrics.init(iconSize:iconMargin:titleSpace:captionTopSpace:captionBottomSpace:bottomSpace:)();
}

uint64_t sub_1004F118C()
{
  v0 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_100005644(v0, qword_100989060);
  sub_1000056A8(v0, qword_100989060);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

void sub_1004F1228()
{
  v0 = [objc_opt_self() systemFontOfSize:30.0];
  v1 = [objc_opt_self() configurationWithFont:v0];

  qword_100989078 = v1;
}

char *sub_1004F12A0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DirectionalTextAlignment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v17 - 8);
  v19 = &v49 - v18;
  v20 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_itemLayoutContext;
  v21 = type metadata accessor for ItemLayoutContext();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView;
  *&v5[v22] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconPositioningView;
  *&v5[v23] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_titleLabel;
  if (qword_10096E030 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v10, qword_1009D1010);
  v26 = *(v11 + 16);
  v26(v19, v25, v10);
  (*(v11 + 56))(v19, 0, 1, v10);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v27 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v24] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v28 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_captionLabel;
  if (qword_10096E038 != -1)
  {
    swift_once();
  }

  v29 = sub_1000056A8(v10, qword_1009D1028);
  v30 = v49;
  v26(v49, v29, v10);
  v31 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v5[v28] = sub_1002F5B8C(v30, 0, 0, 1);
  *&v5[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon] = 0;
  v52.receiver = v5;
  v52.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 contentView];
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v34 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView;
  [*&v32[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView] setContentMode:1];
  [*&v32[v34] setAccessibilityIgnoresInvertColors:1];
  v35 = qword_10096E680;
  v36 = *&v32[v34];
  if (v35 != -1)
  {
    swift_once();
  }

  [v36 setPreferredSymbolConfiguration:qword_100989078];

  v37 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_captionLabel;
  v38 = *&v32[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_captionLabel];
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 systemGrayColor];
  [v40 setTextColor:v41];

  v42 = qword_10096E678;
  v43 = *&v32[v37];
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_1000056A8(v44, qword_100989060);
  v51 = v32;
  Conditional.evaluate(with:)();

  UILabel.alignment.setter();
  v45 = [v32 contentView];
  [v45 addSubview:*&v32[v34]];

  v46 = [v32 contentView];
  [v46 addSubview:*&v32[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_titleLabel]];

  v47 = [v32 contentView];
  [v47 addSubview:*&v32[v37]];

  return v32;
}

uint64_t sub_1004F1944()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v37 = type metadata accessor for LayoutRect();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ProductCapabilityLayout();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProductCapabilityLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v34 - v12;
  v51.receiver = v1;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "layoutSubviews", v11);
  v35 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon];
  v15 = qword_10096E670;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v6, qword_1009D22E8);
  v38 = v7;
  v17 = *(v7 + 16);
  v17(v13, v16, v6);
  if (v14)
  {
    v18 = qword_10096E680;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = static SystemImage.load(artwork:with:includePrivateImages:)();
    if (v19)
    {
      v20 = v19;
      [v19 size];
    }
  }

  ProductCapabilityLayout.Metrics.iconSize.setter();

  v17(v9, v13, v6);
  v21 = *&v1[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconPositioningView];
  v49 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v50 = &protocol witness table for UIView;
  v48 = v21;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_titleLabel];
  v46 = sub_100005744(0, &qword_100986BF0, UILabel_ptr);
  v47 = &protocol witness table for UILabel;
  v45 = v22;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_captionLabel];
  v43 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v44 = &protocol witness table for UIView;
  v42 = v23;
  v24 = v21;
  v25 = v22;
  v26 = v23;
  v27 = v39;
  ProductCapabilityLayout.init(metrics:iconView:titleText:captionText:)();
  v28 = [v1 contentView];
  LayoutMarginsAware<>.layoutFrame.getter();

  ProductCapabilityLayout.placeChildren(relativeTo:in:)();
  (*(v36 + 8))(v4, v37);
  if (!*&v1[v35])
  {
    goto LABEL_16;
  }

  v29 = qword_10096E680;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = static SystemImage.load(artwork:with:includePrivateImages:)();
  if (!v30)
  {

LABEL_16:
    v31 = *&v1[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView];
    [v31 frame];
    [v31 setFrame:?];
    goto LABEL_17;
  }

  v31 = *&v1[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView];
  v32 = v30;
  [v30 size];
  [v31 frame];
  [v31 setFrame:?];

LABEL_17:
  [v24 center];
  [v31 setCenter:?];
  (*(v40 + 8))(v27, v41);
  return (*(v38 + 8))(v13, v6);
}

id sub_1004F1FC8(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096E678 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
    sub_1000056A8(v6, qword_100989060);
    v7 = v1;
    Conditional.evaluate(with:)();

    return UILabel.alignment.setter();
  }

  return result;
}

uint64_t type metadata accessor for ProductCapabilityCell(uint64_t a1)
{
  result = qword_1009890A8;
  if (!qword_1009890A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004F2268(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1004F2318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100005744(0, &qword_100973120, UIImageView_ptr);
  sub_1000D0150();
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

double sub_1004F2388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, __n128 a6, double a7)
{
  v54 = a4;
  v52 = a3;
  v50 = a1;
  v62 = type metadata accessor for ProductCapabilityLayout();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = type metadata accessor for ProductCapabilityLayout.Metrics();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v57 = &v46[-v11];
  v12 = type metadata accessor for LabelPlaceholderCompatibility();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = &v46[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v46[-v16];
  v53 = type metadata accessor for LayoutViewPlaceholder();
  v55 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v18 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v19 = qword_10096E030;

  if (v19 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for FontUseCase();
  sub_1000056A8(v48, qword_1009D1010);
  v63 = a5;
  v20 = [a5 traitCollection];
  v49 = v18;
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v21 = type metadata accessor for Feature();
  v72[3] = v21;
  v22 = sub_1004F2BB4(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v72[4] = v22;
  v23 = sub_1000056E0(v72);
  v24 = *(*(v21 - 8) + 104);
  v47 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v24(v23);
  isFeatureEnabled(_:)();
  sub_100007000(v72);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v25 = *(v13 + 8);
  v25(v17, v12);
  if (v52)
  {
    v50 = LinkableText.plainText.getter();
  }

  else
  {
    v50 = 0;
  }

  v52 = v12;
  if (qword_10096E038 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v48, qword_1009D1028);
  v26 = [v63 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v70 = v21;
  v71 = v22;
  v27 = sub_1000056E0(&v69);
  (v24)(v27, v47, v21);
  isFeatureEnabled(_:)();
  sub_100007000(&v69);
  v28 = v51;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v25(v28, v52);
  if (qword_10096E670 != -1)
  {
    swift_once();
  }

  v29 = v60;
  v30 = sub_1000056A8(v60, qword_1009D22E8);
  v31 = v58;
  v32 = *(v58 + 16);
  v33 = v57;
  v32(v57, v30, v29);
  if (v54)
  {
    v34 = qword_10096E680;

    if (v34 != -1)
    {
      swift_once();
    }

    v35 = static SystemImage.load(artwork:with:includePrivateImages:)();
    if (v35)
    {
      v36 = v35;
      [v35 size];
    }
  }

  ProductCapabilityLayout.Metrics.iconSize.setter();
  v32(v56, v33, v29);
  v67 = v53;
  v68 = &protocol witness table for LayoutViewPlaceholder;
  v66 = v55;
  sub_10002C0AC(v72, v65);
  v37 = v70;
  v38 = v71;
  v39 = sub_10002A400(&v69, v70);
  v64[3] = v37;
  v64[4] = *(v38 + 8);
  v40 = sub_1000056E0(v64);
  (*(*(v37 - 8) + 16))(v40, v39, v37);

  v41 = v59;
  ProductCapabilityLayout.init(metrics:iconView:titleText:captionText:)();
  sub_1004F2BB4(&qword_1009890C0, &type metadata accessor for ProductCapabilityLayout, &protocol conformance descriptor for ProductCapabilityLayout);
  v42 = v62;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v44 = v43;

  (*(v61 + 8))(v41, v42);
  (*(v31 + 8))(v33, v29);
  sub_100007000(v72);
  sub_100007000(&v69);
  return v44;
}

uint64_t sub_1004F2BB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004F2BFC()
{
  v1 = v0;
  v2 = type metadata accessor for FontUseCase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_itemLayoutContext;
  v13 = type metadata accessor for ItemLayoutContext();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconPositioningView;
  *(v1 + v15) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_titleLabel;
  if (qword_10096E030 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v2, qword_1009D1010);
  v18 = *(v3 + 16);
  v18(v11, v17, v2);
  (*(v3 + 56))(v11, 0, 1, v2);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v19 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v16) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v20 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_captionLabel;
  if (qword_10096E038 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v2, qword_1009D1028);
  v22 = v25;
  v18(v25, v21, v2);
  v23 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *(v1 + v20) = sub_1002F5B8C(v22, 0, 0, 1);
  *(v1 + OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1004F2FDC(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel];
  v6 = [v5 text];
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = v6;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v9 != a1 || v11 != a2)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return result;
    }

LABEL_10:
    a2 = String._bridgeToObjectiveC()();
LABEL_12:
    [v5 setText:a2];

    v14 = [v5 text];
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v16 = static String.isNilOrEmpty(_:)();

    [v5 setHidden:v16 & 1];

    [v2 setNeedsLayout];
    return result;
  }

  return result;
}

uint64_t sub_1004F3190(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v136 = a7;
  LODWORD(v137) = a6;
  v134 = a5;
  v143 = a4;
  v138 = a3;
  v135 = a10;
  v127 = type metadata accessor for TertiaryIconPlacement();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AdamId();
  v141 = *(v14 - 8);
  v142 = v14;
  __chkstk_darwin(v14);
  v130 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v140 = &v124 - v17;
  __chkstk_darwin(v18);
  v128 = &v124 - v19;
  v144 = type metadata accessor for OfferLabelStyle();
  v139 = *(v144 - 8);
  __chkstk_darwin(v144);
  v133 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v132 = &v124 - v22;
  v23 = sub_10002849C(&qword_100973AC8, &unk_1007C7EC0);
  __chkstk_darwin(v23 - 8);
  v131 = &v124 - v24;
  v25 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v25 - 8);
  v27 = &v124 - v26;
  v28 = type metadata accessor for OfferButtonSubtitlePosition();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v129 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v31 - 8);
  v33 = &v124 - v32;
  v34 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v146 = *(v34 - 8);
  v147 = v34;
  __chkstk_darwin(v34);
  v148 = &v124 - v35;
  v145 = a1;
  v36 = Lockup.heading.getter();
  if (v37)
  {
    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
      v124 = a8;
      sub_100028BB8();
      v39 = static UIColor.primaryText.getter();
      sub_10003EE6C(1, v39);

      v40 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
      if (v40)
      {
        v41 = v40;
        v42 = String._bridgeToObjectiveC()();

        [v41 setText:v42];
      }

      else
      {
      }

      a8 = v124;
      goto LABEL_13;
    }
  }

  v43 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
  v44 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
  if (v44)
  {
    [v44 setHidden:1];
    v45 = *&a2[v43];
    if (v45)
    {
      [v45 setText:0];
    }
  }

LABEL_13:
  v46 = Lockup.title.getter();
  sub_10003D978(v46, v47);
  v48 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel];
  Lockup.ordinal.getter();
  if (v49)
  {
    v50 = String._bridgeToObjectiveC()();
  }

  else
  {
    v50 = 0;
  }

  [v48 setText:v50];

  sub_100031660(v135, v33, &unk_100970150, &unk_1007BDDD0);
  v52 = v146;
  v51 = v147;
  if ((*(v146 + 48))(v33, 1, v147) == 1)
  {
    sub_10002B894(v33, &unk_100970150, &unk_1007BDDD0);
    v53 = *(v29 + 104);
    v53(v129, enum case for OfferButtonSubtitlePosition.below(_:), v28);
    v53(v27, enum case for OfferButtonSubtitlePosition.right(_:), v28);
    (*(v29 + 56))(v27, 0, 1, v28);
    sub_1004F4330(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    AccessibilityConditional.init(value:axValue:)();
  }

  else
  {
    (*(v52 + 32))(v148, v33, v51);
  }

  v54 = v144;
  v55 = v139;
  v56 = Lockup.offerDisplayProperties.getter();
  v57 = v136;
  if (!v56)
  {
    goto LABEL_24;
  }

  v58 = type metadata accessor for OfferStyle();
  if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
  {
    v59 = type metadata accessor for OfferEnvironment();
    if ((*(*(v59 - 8) + 48))(a8, 1, v59) == 1)
    {
      v60 = type metadata accessor for OfferTint();
      if ((*(*(v60 - 8) + 48))(a9, 1, v60) == 1)
      {

LABEL_24:
        v61 = Lockup.offerDisplayProperties.getter();
        goto LABEL_26;
      }
    }
  }

  v62 = v131;
  (*(v55 + 56))(v131, 1, 1, v54);
  v149 = 0u;
  v150 = 0u;
  v61 = dispatch thunk of OfferDisplayProperties.newOfferDisplayPropertiesChanging(titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)();

  sub_10002B894(&v149, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(v62, &qword_100973AC8, &unk_1007C7EC0);
LABEL_26:

  v63 = Lockup.buttonAction.getter();
  v64 = Lockup.includeBetaApps.getter();
  sub_10064AFA4(v61, v63, 0, v138, v148, v143, v137 & 1, v64 & 1);

  sub_10002849C(&unk_100973AF0, &qword_1007B3960);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v139 = *(&v149 + 1);
  v144 = v149;
  if (v61)
  {
    v65 = v61;
    v66 = v132;
    OfferDisplayProperties.offerLabelStyle.getter();
    v67 = v133;
    (*(v55 + 104))(v133, enum case for OfferLabelStyle.none(_:), v54);
    sub_1004F4330(&unk_100987B00, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
    v68 = dispatch thunk of static Equatable.== infix(_:_:)();
    v69 = *(v55 + 8);
    v69(v67, v54);
    v69(v66, v54);
    if ((v68 & 1) == 0)
    {

      OfferDisplayProperties.adamId.getter();
      type metadata accessor for ASKBagContract();
      swift_unknownObjectRetain();
      inject<A, B>(_:from:)();
      ASKBagContract.arePreordersCancellable.getter();

      v72 = type metadata accessor for OfferLabelPresenter();
      swift_allocObject();
      v73 = OfferLabelPresenter.init(offerDisplayProperties:adamId:appStateController:arePreordersCancellable:)();
      *(&v150 + 1) = v72;
      *&v149 = v73;
      v74 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabelPresenter;
      swift_beginAccess();

      sub_100283DDC(&v149, &a2[v74]);
      swift_endAccess();
      [*&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel] frame];
      v152.origin.x = 0.0;
      v152.origin.y = 0.0;
      v152.size.width = 0.0;
      v152.size.height = 0.0;
      v61 = v65;
      if (CGRectEqualToRect(v151, v152))
      {
        v75 = objc_opt_self();
        v76 = [v75 areAnimationsEnabled];
        [v75 setAnimationsEnabled:0];
        sub_1004F4330(&qword_1009890C8, type metadata accessor for BaseLockupView, &unk_1007D20E0);
        swift_unknownObjectRetain();
        OfferLabelPresenter.view.setter();
        [a2 layoutIfNeeded];
        [v75 setAnimationsEnabled:v76];
      }

      else
      {
        sub_1004F4330(&qword_1009890C8, type metadata accessor for BaseLockupView, &unk_1007D20E0);
        swift_unknownObjectRetain();
        OfferLabelPresenter.view.setter();
      }

      goto LABEL_34;
    }

    v61 = v65;
  }

  v149 = 0u;
  v150 = 0u;
  v70 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabelPresenter;
  swift_beginAccess();
  sub_100283DDC(&v149, &a2[v70]);
  swift_endAccess();
  v71 = sub_1004F2FDC(0, 0);
LABEL_34:
  v77 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
  v78 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
  v79 = &selRef_loadView;
  if (v78 && ([v78 isHidden] & 1) == 0 && (v80 = *&a2[v77]) != 0)
  {
    v81 = [v80 hasContent];
  }

  else
  {
    v81 = 0;
  }

  v82 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabelPresenter;
  swift_beginAccess();
  sub_100031660(&a2[v82], &v149, &unk_1009711D0, &unk_1007B1A10);
  v83 = *(&v150 + 1);
  LODWORD(v143) = *(&v150 + 1) != 0;
  sub_10002B894(&v149, &unk_1009711D0, &unk_1007B1A10);
  v84 = Lockup.tertiaryTitle.getter();
  if (!v85)
  {
LABEL_45:
    v87 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
    v88 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
    if (v88)
    {
      [v88 setHidden:1];
      v89 = *&a2[v87];
      if (v89)
      {
        [v89 setText:0];
      }
    }

    goto LABEL_54;
  }

  if (v83)
  {
    v86 = v81;
  }

  else
  {
    v86 = 0;
  }

  if (v86)
  {

    goto LABEL_45;
  }

  v138 = v84;
  v90 = v85;
  sub_10003F12C();
  Lockup.tertiaryTitleIcons.getter();
  v91 = Array.isNotEmpty.getter();

  v92 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
  if (v91)
  {
    if (v92)
    {
      v137 = v92;
      v93 = Lockup.tertiaryTitleIcons.getter();
      v94 = v125;
      Lockup.tertiaryIconPlacement.getter();
      v95 = v137;
      sub_1005D4DD8(v93, v138, v90, v94);

      v96 = v94;
      v79 = &selRef_loadView;
      (*(v126 + 8))(v96, v127);
      goto LABEL_54;
    }
  }

  else if (v92)
  {
    v97 = v92;
    v98 = String._bridgeToObjectiveC()();

    [v97 setText:v98];

    v79 = &selRef_loadView;
    goto LABEL_54;
  }

LABEL_54:
  v99 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
  Lockup.subtitle.getter();
  if (v100)
  {
    v101 = String._bridgeToObjectiveC()();
  }

  else
  {
    v101 = 0;
  }

  [v99 setText:v101];

  v102 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
  v103 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
  if (v103)
  {
    v104 = [v103 isHidden];
    v105 = v146;
    if ((v104 & 1) != 0 || (v106 = *&a2[v102]) == 0)
    {
      v107 = 0;
    }

    else
    {
      v107 = [v106 v79[161]];
    }
  }

  else
  {
    v107 = 0;
    v105 = v146;
  }

  if (![v99 v79[161]])
  {
    goto LABEL_69;
  }

  if (v107)
  {
    if (v83)
    {
      v108 = 1;
    }

    else
    {
      v108 = v81;
    }

    if (v108)
    {
LABEL_69:
      v109 = 1;
      goto LABEL_72;
    }
  }

  else
  {
    v109 = v143;
    if (v81)
    {
      goto LABEL_72;
    }
  }

  v109 = 0;
LABEL_72:
  [v99 setHidden:v109];
  v110 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
  if (Lockup.icon.getter())
  {

    v111 = v134;
  }

  else
  {
    v111 = 1;
  }

  [v110 setHidden:v111 & 1];
  v112 = Lockup.includeBetaApps.getter();
  if (v61 && (v112 & 1) != 0)
  {
    v113 = v130;
    OfferDisplayProperties.adamId.getter();
    (*(v141 + 32))(v140, v113, v142);
    swift_getObjectType();
    v114 = dispatch thunk of AppStateController.stateMachine(forApp:)();
    v116 = v115;
    v117 = &a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine];
    if (*&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();
      swift_unknownObjectRelease();
    }

    *v117 = v114;
    *(v117 + 1) = v116;
    swift_unknownObjectRetain();
    v118 = swift_unknownObjectRelease();
    sub_10003DAE8(v118, v119);
    swift_unknownObjectRelease();
    (*(v141 + 8))(v140, v142);
  }

  else
  {
    v120 = &a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine];
    if (*&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();
      swift_unknownObjectRelease();
    }

    *v120 = 0;
    *(v120 + 1) = 0;
    v121 = swift_unknownObjectRelease();
    sub_10003DAE8(v121, v122);
  }

  [a2 setNeedsLayout];
  swift_unknownObjectRelease();

  return (*(v105 + 8))(v148, v147);
}

uint64_t sub_1004F4330(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004F4378()
{
  v33 = type metadata accessor for UUID();
  v0 = *(v33 - 8);
  __chkstk_darwin(v33);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v29 = &v27 - v8;
  v32 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v30 = swift_allocObject();
  v31 = xmmword_1007B0B70;
  *(v30 + 16) = xmmword_1007B0B70;
  type metadata accessor for LocalPreferences();
  static LocalPreferences.placeholderDisableShelfHydration.getter();
  v10 = static LocalPreferences.AppStoreKit.getter();
  v11 = *(v4 + 16);
  v11(v6, v9, v3);
  type metadata accessor for BoolPreferencesDebugSetting(0);
  v12 = swift_allocObject();
  *(v12 + 56) = 0xD000000000000017;
  *(v12 + 64) = 0x8000000100817C60;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  v11((v12 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key), v6, v3);
  v13 = (v12 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v13 = v10;
  v13[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  v17 = *(v0 + 8);
  v27 = v0 + 8;
  v28 = v17;
  v18 = v33;
  v17(v2, v33);
  v34 = v14;
  v35 = v16;
  AnyHashable.init<A>(_:)();
  v19 = *(v4 + 8);
  v19(v6, v3);

  v19(v29, v3);
  v20 = v30;
  *(v30 + 32) = v12;
  v21 = swift_allocObject();
  *(v21 + 16) = v31;
  type metadata accessor for DebugSection();
  v22 = swift_allocObject();
  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  v28(v2, v18);
  v22[2] = v23;
  v22[3] = v25;
  v22[4] = 0;
  v22[5] = 0xE000000000000000;
  v22[6] = v20;
  *(v21 + 32) = v22;
  return v21;
}

id sub_1004F46E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfPlaceholderSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1004F473C(uint64_t a1, void *a2)
{
  v3 = v2;
  v54 = a2;
  v4 = sub_10002849C(&unk_100987AF0, &unk_1007C6DA8);
  __chkstk_darwin(v4 - 8);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v52 - v8;
  v10 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v10 - 8);
  v12 = v52 - v11;
  v13 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v13 - 8);
  v15 = v52 - v14;
  v16 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v16 - 8);
  v18 = v52 - v17;
  v19 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v19 - 8);
  v21 = v52 - v20;
  v22 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v22 - 8);
  v24 = v52 - v23;
  type metadata accessor for Lockup();
  sub_1004F5034();
  ItemLayoutContext.typedModel<A>(as:)();
  v26 = v55[0];
  if (v55[0])
  {
    v53 = v6;
    v27 = *&v2[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView];
    v28 = sub_10002849C(&unk_100973240, qword_1007B2220);
    (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
    v29 = type metadata accessor for OfferStyle();
    (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
    v30 = type metadata accessor for OfferEnvironment();
    (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
    v31 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
    (*(*(v31 - 8) + 56))(v15, 1, 1, v31);
    v32 = type metadata accessor for OfferTint();
    (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
    sub_1004F3190(v26, v27, v24, v54, 0, 0, v21, v18, v12, v15);
    sub_10002B894(v12, &unk_100973AD0, &unk_1007B17C0);
    v27[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v27 setNeedsLayout];
    sub_10002B894(v15, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v18, &unk_100970160, &unk_1007BDDE0);
    sub_10002B894(v21, &qword_100973AE0, &unk_1007B17D0);
    sub_10002B894(v24, &unk_100973230, &unk_1007B17E0);
    v33 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
    v34 = *&v27[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
    v35 = Lockup.subtitleTextColor.getter();
    if (!v35)
    {
      sub_100028BB8();
      v35 = static UIColor.secondaryText.getter();
    }

    v36 = v35;
    [v34 setTextColor:v35];

    v37 = [*&v27[v33] layer];
    Lockup.subtitleTextFilter.getter();
    v38 = type metadata accessor for TitleEffectFilterType();
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);
    if (v40(v9, 1, v38) == 1)
    {
      sub_10002B894(v9, &unk_100987AF0, &unk_1007C6DA8);
    }

    else
    {
      TitleEffectFilterType.compositingFilter.getter();
      (*(v39 + 8))(v9, v38);
      v41 = v56;
      if (v56)
      {
        v42 = sub_10002A400(v55, v56);
        v52[1] = v52;
        v43 = *(v41 - 8);
        v54 = v3;
        v44 = v43;
        v45 = __chkstk_darwin(v42);
        v47 = v52 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v44 + 16))(v47, v45);
        v48 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v44 + 8))(v47, v41);
        v3 = v54;
        sub_100007000(v55);
LABEL_9:
        [v37 setCompositingFilter:v48];

        swift_unknownObjectRelease();
        v49 = [v27 layer];
        v50 = v53;
        Lockup.subtitleTextFilter.getter();
        v51 = v40(v50, 1, v38) == 1;
        sub_10002B894(v50, &unk_100987AF0, &unk_1007C6DA8);
        [v49 setAllowsGroupBlending:v51];

        [v3 setNeedsLayout];

        return result;
      }
    }

    v48 = 0;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1004F4E94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1004F4EF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_1004F4FB8()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = *(*&v0[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v4, v2);
}

unint64_t sub_1004F5034()
{
  result = qword_100974480;
  if (!qword_100974480)
  {
    type metadata accessor for Lockup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974480);
  }

  return result;
}

id sub_1004F508C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC8AppStore18AvatarShowcaseView_artworkLoader] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore18AvatarShowcaseView_maxPlayersToShow] = a1;
  v6 = OBJC_IVAR____TtC8AppStore18AvatarShowcaseView_layoutConfiguration;
  v7 = type metadata accessor for AvatarShowcaseLayoutConfiguration();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v3[v6], a2, v7);
  AvatarShowcaseLayoutConfiguration.visibleWidth.getter();
  v10 = v9 * a1;
  AvatarShowcaseLayoutConfiguration.overlappedWidth.getter();
  v12 = v10 + v11;
  AvatarShowcaseLayoutConfiguration.width.getter();
  v14 = v13;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for AvatarShowcaseView(0);
  v15 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, v12, v14);
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 clearColor];
  [v17 setBackgroundColor:v18];

  (*(v8 + 8))(a2, v7);
  return v17;
}

void sub_1004F5270(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC8AppStore18AvatarShowcaseView_artworkLoader] = a1;

  if (!a1)
  {
    return;
  }

  v4 = [v2 subviews];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_4:
      if (v6 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v6; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v5 + 8 * i + 32);
        }

        v9 = v8;
        type metadata accessor for ArtworkView();
        if (swift_dynamicCastClass())
        {
          sub_10009A098();
          ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
        }
      }
    }
  }
}

void sub_1004F53FC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v6 - 8);
  v59 = &v51 - v7;
  v58 = type metadata accessor for CornerStyle();
  v8 = *(v58 - 8);
  __chkstk_darwin(v58);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004F5A50();

  v57 = a2;
  sub_1004F5270(v11);
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (*&v3[OBJC_IVAR____TtC8AppStore18AvatarShowcaseView_maxPlayersToShow] >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = *&v3[OBJC_IVAR____TtC8AppStore18AvatarShowcaseView_maxPlayersToShow];
  }

  AvatarShowcaseLayoutConfiguration.visibleWidth.getter();
  v15 = v14 * v13;
  AvatarShowcaseLayoutConfiguration.overlappedWidth.getter();
  v17 = v15 + v16;
  [v3 frame];
  v19 = v18;
  v21 = v20;
  [v3 frame];
  [v3 setFrame:{v19, v21, v17}];
  if (v13 < 0)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    return;
  }

  v60 = a1;
  if (v13)
  {
    v52 = v60 & 0xC000000000000001;
    if ((v60 & 0xC000000000000001) != 0 || v13 <= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v56 = sub_100005744(0, &qword_100970180, UIColor_ptr);
      v22 = 0;
      v55 = (v8 + 104);
      v54 = enum case for CornerStyle.arc(_:);
      v53 = (v8 + 8);
      v51 = v13;
      while (1)
      {
        AvatarShowcaseLayoutConfiguration.width.getter();
        v25 = v24;
        AvatarShowcaseLayoutConfiguration.overlappedWidth.getter();
        v27 = (v25 - v26) * v22;
        AvatarShowcaseLayoutConfiguration.width.getter();
        v29 = v28;
        AvatarShowcaseLayoutConfiguration.width.getter();
        v31 = v30;
        v8 = type metadata accessor for ArtworkView();
        v32 = [objc_allocWithZone(v8) initWithFrame:{v27, 0.0, v29, v31}];
        static UIColor.placeholderBackground.getter();
        ArtworkView.backgroundColor.setter();
        AvatarShowcaseLayoutConfiguration.width.getter();
        v33 = v58;
        (*v55)(v10, v54, v58);
        ArtworkView.setCorner(radius:style:)();
        (*v53)(v10, v33);
        if (qword_10096DA58 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Shadow();
        v35 = sub_1000056A8(v34, qword_1009CFD68);
        v36 = *(v34 - 8);
        v37 = v59;
        (*(v36 + 16))(v59, v35, v34);
        v38 = *(v36 + 56);
        a1 = v36 + 56;
        v38(v37, 0, 1, v34);
        ArtworkView.shadow.setter();
        v39 = [v3 traitCollection];
        LOBYTE(v37) = UITraitCollection.prefersRightToLeftLayouts.getter();

        v40 = [v3 subviews];
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = v41 >> 62;
        if (v37)
        {
          if (v42)
          {
            v43 = _CocoaArrayWrapper.endIndex.getter();
            if (!v43)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v43)
            {
              goto LABEL_11;
            }
          }

          v44 = __OFSUB__(v43, 1);
          v45 = v43 - 1;
          if (v44)
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            v12 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }

          if ((v41 & 0xC000000000000001) == 0)
          {
            if ((v45 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v45 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v46 = *(v41 + 8 * v45 + 32);
LABEL_29:
            v47 = v46;
            goto LABEL_30;
          }
        }

        else
        {
          if (v42)
          {
            if (!_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_11:

              [v3 addSubview:v32];
              v23 = 0;
              if (!v52)
              {
                goto LABEL_34;
              }

              goto LABEL_12;
            }
          }

          else if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_11;
          }

          if ((v41 & 0xC000000000000001) == 0)
          {
            if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v46 = *(v41 + 32);
            goto LABEL_29;
          }
        }

        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_30:
        v48 = v47;

        v23 = v48;
        v49 = [v3 traitCollection];
        v50 = UITraitCollection.prefersRightToLeftLayouts.getter();

        if (v50)
        {
          [v3 insertSubview:v32 aboveSubview:{v23, v51}];
        }

        else
        {
          [v3 insertSubview:v32 belowSubview:{v23, v51}];
        }

        if (!v52)
        {
LABEL_34:

          goto LABEL_13;
        }

LABEL_12:
        specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
        ++v22;
        AvatarShowcaseLayoutConfiguration.width.getter();
        AvatarShowcaseLayoutConfiguration.width.getter();
        Artwork.config(using:)();
        sub_10009A098();
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

        if (v51 == v22)
        {
          return;
        }
      }
    }

    goto LABEL_47;
  }
}

void sub_1004F5A50()
{
  *&v0[OBJC_IVAR____TtC8AppStore18AvatarShowcaseView_artworkLoader] = 0;

  v1 = [v0 subviews];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

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
    [v5 removeFromSuperview];
  }

LABEL_10:
}

id sub_1004F5BA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarShowcaseView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AvatarShowcaseView(uint64_t a1)
{
  result = qword_100989128;
  if (!qword_100989128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004F5CA8(uint64_t a1)
{
  result = type metadata accessor for AvatarShowcaseLayoutConfiguration();
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

uint64_t sub_1004F5D9C()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_1009D2340);
  sub_1000056A8(v4, qword_1009D2340);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

id sub_1004F6054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC8AppStore24UpsellGridViewController_gridView];
  v7 = *&v3[OBJC_IVAR____TtC8AppStore24UpsellGridViewController_artworkLoader];
  result = [v3 view];
  if (result)
  {
    v9 = result;
    [result bounds];
    v11 = v10;
    v13 = v12;

    *(v6 + OBJC_IVAR____TtC8AppStore14UpsellGridView_primaryIcon) = a1;

    v14 = OBJC_IVAR____TtC8AppStore14UpsellGridView_remainingIcons;
    swift_beginAccess();
    *(v6 + v14) = a2;

    *(v6 + OBJC_IVAR____TtC8AppStore14UpsellGridView_artworkLoader) = v7;

    return sub_10045222C(v11, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1004F6230(uint64_t a1)
{
  if (qword_10096E688 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_1009D2340);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_1000056E0(v5);
  (*(*(v4 - 8) + 16))(v2);
  static LogMessage.safe(_:)();
  sub_10003D444(v5);
  Logger.error(_:)();

  return result;
}

uint64_t sub_1004F6454(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UpsellGridViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for DynamicTypeLinkedTextView(uint64_t a1)
{
  result = qword_1009891A0;
  if (!qword_1009891A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1004F6538(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_1004F664C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

double sub_1004F6770@<D0>(uint64_t (*a1)(void *, __n128)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v16 = a1;
  v4 = *(a2 + 16);
  if (v4)
  {
    v14 = a3;
    v5 = (a2 + 72);
    while (1)
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      v15[0] = v6;
      v15[1] = v7;
      v15[2] = v8;
      v15[3] = v9;
      v15[4] = v10;
      v15[5] = v11;

      v12 = v16(v15);
      if (v3)
      {
        break;
      }

      if (v12)
      {
        goto LABEL_7;
      }

      v5 += 6;

      if (!--v4)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
LABEL_7:
        a3 = v14;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_9:
    *a3 = v6;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
    a3[4] = v10;
    a3[5] = v11;
  }

  return result;
}

id sub_1004F68BC(void *a1)
{
  v3.receiver = a1;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, "textColor");

  return v1;
}

void sub_1004F6914(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v6 = a1;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v15, "textColor");
  v14.receiver = v6;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "setTextColor:", v7);
  v13.receiver = v6;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, "textColor");
  if (v9)
  {
    v10 = v9;
    if (v8)
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v11 = v8;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else if (!v8)
  {
    goto LABEL_10;
  }

  sub_1004F6A30();
  v11 = v8;
LABEL_9:

LABEL_10:
}

void sub_1004F6A30()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v61 - v3;
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of DynamicTypeTextView.fontUseCase.getter();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002B894(v4, &qword_100972ED0, &unk_1007B17B0);
    return;
  }

  (*(v6 + 32))(v8, v4, v5);
  v9 = *&v0[qword_100989198];
  if (v9)
  {
    v65 = v6;
    v66 = v5;
    v10 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);

    v11 = dispatch thunk of DynamicTypeTextView.traitCollectionForFontUseCases.getter();
    v64 = v8;
    v12 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    v13 = *&v0[qword_100989190];
    v85.receiver = v0;
    v85.super_class = ObjectType;
    v71 = v13;

    v14 = objc_msgSendSuper2(&v85, "textAlignment");
    v15 = dispatch thunk of DynamicTypeTextView.lineBreakMode.getter();
    v67 = v0;
    v84.receiver = v0;
    v84.super_class = ObjectType;
    v70 = ObjectType;
    v16 = objc_msgSendSuper2(&v84, "textColor");
    if (v16)
    {
      v17 = v16;
      v18 = [objc_allocWithZone(NSMutableParagraphStyle) init];
      [v18 setAlignment:v14];
      [v18 setLineBreakMode:v15];
      sub_10002849C(&unk_100973960, &unk_1007B4930);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007B1890;
      *(inited + 32) = NSParagraphStyleAttributeName;
      v20 = sub_100005744(0, &unk_100976610, NSMutableParagraphStyle_ptr);
      *(inited + 40) = v18;
      *(inited + 64) = v20;
      *(inited + 72) = NSFontAttributeName;
      *(inited + 104) = v10;
      *(inited + 80) = v12;
      v21 = NSParagraphStyleAttributeName;
      v22 = v18;
      v23 = NSFontAttributeName;
      v24 = v12;
      v25 = sub_100397150(inited);
      swift_setDeallocating();
      sub_10002849C(&unk_100970EC0, &unk_1007B2BF0);
      swift_arrayDestroy();
      v78 = sub_100005744(0, &qword_100970180, UIColor_ptr);
      *&aBlock = v17;
      sub_100056164(&aBlock, v82);
      v62 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = v25;
      sub_100051368(v82, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
      v83 = v81;

      sub_100005744(0, &qword_100989250, NSMutableAttributedString_ptr);
      v69 = v24;
      v63 = v9;
      v27 = dispatch thunk of StyledText.asAttributedString(using:)();
      v28._rawValue = v83;

      isa = NSAttributedString.init(attributedString:defaultAttributes:)(v27, v28).super.isa;
      v30 = v22;
      v31 = isa;
      v32 = [(objc_class *)v31 fullRange];
      [(objc_class *)v31 addAttribute:v21 value:v30 range:v32, v33];
      v61 = v30;

      v68 = swift_allocObject();
      *(v68 + 16) = 0;
      *&v82[0] = 0;
      v34 = *(v71 + 16);
      v73 = NSLinkAttributeName;
      if (v34)
      {
        v72 = NSUnderlineStyleAttributeName;
        v35 = v71 + 72;
        do
        {
          v36 = *(v35 - 24);
          v74 = *(v35 - 8);

          v75 = v36;

          v37 = sub_1004F81C4(v82, v31);
          v38 = String._bridgeToObjectiveC()();
          v39 = [v37 rangeOfString:v38 options:4];
          v41 = v40;

          if (v39 != NSNotFound.getter())
          {
            v42 = String._bridgeToObjectiveC()();
            [(objc_class *)v31 addAttribute:v73 value:v42 range:v39, v41];

            if (UIAccessibilityButtonShapesEnabled())
            {
              v43 = Int._bridgeToObjectiveC()().super.super.isa;
              [(objc_class *)v31 addAttribute:v72 value:v43 range:v39, v41];
            }
          }

          v35 += 48;

          --v34;
        }

        while (v34);
      }

      v44 = [(objc_class *)v31 fullRange];
      v46 = v45;
      v47 = v31;
      v48 = swift_allocObject();
      v49 = v71;
      v48[2] = v70;
      v48[3] = v49;
      v50 = v69;
      v48[4] = v68;
      v48[5] = v50;
      v48[6] = &v83;
      v48[7] = v47;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_1004F8984;
      *(v51 + 24) = v48;
      v79 = sub_1002CA5FC;
      v80 = v51;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v77 = sub_1006607C0;
      v78 = &unk_1008C66D8;
      v52 = _Block_copy(&aBlock);
      v53 = v50;

      [(objc_class *)v47 enumerateAttribute:v73 inRange:v44 options:v46 usingBlock:0, v52];
      _Block_release(v52);
      LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

      if ((v52 & 1) == 0)
      {
        v54 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v47];

        v55 = *&v82[0];

        v56 = v67;
        [v67 setAttributedText:v54];

        dispatch thunk of StyledText.plainText.getter();
        String.languageAwareOutsets(whenUsedWith:)();
        v58 = v57;
        v60 = v59;

        [v56 setTextContainerInset:{v58, 0.0, v60, 0.0}];

        (*(v65 + 8))(v64, v66);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }
}

id sub_1004F7344(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "textAlignment");
}

void sub_1004F7384(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v10, "textAlignment");
  v9.receiver = v6;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setTextAlignment:", a3);
  v8.receiver = v6;
  v8.super_class = ObjectType;
  if (objc_msgSendSuper2(&v8, "textAlignment") != v7)
  {
    sub_1004F6A30();
  }
}

uint64_t sub_1004F7424()
{
  type metadata accessor for DynamicTypeTextView();
  v0 = method lookup function for DynamicTypeTextView();

  return v0();
}

uint64_t sub_1004F747C(char *a1)
{
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  type metadata accessor for DynamicTypeTextView();
  v9 = method lookup function for DynamicTypeTextView();
  v9();
  (*(v3 + 16))(v5, a1, v2);
  v10 = method lookup function for DynamicTypeTextView();
  v11 = v10(v5);
  (v9)(v11);
  sub_1004F8DBC(&qword_100989258, &type metadata accessor for DirectionalTextAlignment, &protocol conformance descriptor for DirectionalTextAlignment);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v3 + 8);
  v13(v5, v2);
  if ((v12 & 1) == 0)
  {
    sub_1004F6A30();
  }

  v13(a1, v2);
  return (v13)(v8, v2);
}

void (*sub_1004F7684(void *a1))(uint64_t a1, char a2)
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
  *v3 = v1;
  v5 = type metadata accessor for DirectionalTextAlignment();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  type metadata accessor for DynamicTypeTextView();
  v9 = method lookup function for DynamicTypeTextView();
  v9();
  return sub_1004F77B0;
}

void sub_1004F77B0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1004F747C(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1004F747C(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_1004F7864(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "tintColorDidChange");
  sub_1004F6A30();
}

void sub_1004F78BC(uint64_t a1, uint64_t a2)
{
  *&v2[qword_100989198] = a1;

  v4 = qword_100989190;
  *&v2[qword_100989190] = a2;

  if (*(*&v2[v4] + 16))
  {
    v5 = &UIAccessibilityTraitLink;
  }

  else
  {
    v5 = &UIAccessibilityTraitStaticText;
  }

  [v2 setAccessibilityTraits:*v5];

  sub_1004F6A30();
}

id sub_1004F7970()
{
  [v0 setAttributedText:0];
  *&v0[qword_100989198] = 0;

  v1 = qword_100989190;
  *&v0[qword_100989190] = _swiftEmptyArrayStorage;

  if (*(*&v0[v1] + 16))
  {
    v2 = &UIAccessibilityTraitLink;
  }

  else
  {
    v2 = &UIAccessibilityTraitStaticText;
  }

  [v0 setAccessibilityTraits:*v2];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;

  return [v0 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
}

void sub_1004F7A34(void *a1)
{
  v1 = a1;
  sub_1004F6A30();
}

void sub_1004F7A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + qword_100989190);
    v9 = Strong;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(Strong);
  *(&v16 - 2) = a2;
  sub_1004F6770(sub_1004F8E08, v8, &v17);

  v10 = v18;
  if (v18)
  {
    v11 = v17;
    v13 = v19;
    v12 = v20;
    v14 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v6, 1, v14) == 1)
    {
      v22 = v11;
      v23 = v10;
      sub_1001964F0(&v22);

      v24 = v21;
      sub_1001964F0(&v24);
      sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9AF4(v13, 1, v12, v6);
      v22 = v11;
      v23 = v10;
      sub_1001964F0(&v22);

      v24 = v21;
      sub_1001964F0(&v24);

      (*(v15 + 8))(v6, v14);
    }
  }
}

id sub_1004F7CE8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_1004F89D4(v9, v10);

  return v12;
}

BOOL sub_1004F7D7C()
{
  v1 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + qword_100989190);
  v5 = v4[2];
  if (v5)
  {
    v6 = v4[6];
    v7 = v4[7];
    v8 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);

    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {

      sub_10002B894(v3, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9AF4(v6, 1, v7, v3);

      (*(v9 + 8))(v3, v8);
    }
  }

  return v5 != 0;
}

BOOL sub_1004F7F4C(void *a1)
{
  v1 = a1;
  v2 = sub_1004F7D7C();

  return v2;
}

uint64_t sub_1004F7F80()
{
  Action.id.getter();
  v0 = AnyHashable.description.getter();
  v2 = v1;
  sub_10003D614(v7);
  v3 = URL.host.getter();
  if (v4)
  {
    if (v0 == v3 && v4 == v2)
    {

      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1004F805C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v15 = 0x2F3A6E6F69746361;
  v16 = 0xE90000000000002FLL;

  Action.id.getter();
  v10._countAndFlagsBits = AnyHashable.description.getter();
  String.append(_:)(v10);

  result = sub_10003D614(v14);
  v12 = v15;
  v13 = v16;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v12;
  a5[5] = v13;
  return result;
}

id sub_1004F8120(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v5 = [objc_opt_self() configurationWithFont:a2 scale:1];
    swift_beginAccess();
    v6 = *v3;
    *v3 = v5;
    v4 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v4;
}

id sub_1004F81C4(void **a1, id a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a1;
  }

  else
  {
    v5 = [a2 string];
    if (!v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = String._bridgeToObjectiveC()();
    }

    v6 = [objc_allocWithZone(NSString) initWithString:v5];

    swift_beginAccess();
    v7 = *a1;
    *a1 = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1004F8298(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, id a10)
{
  v16 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v16 - 8);
  v18 = v48 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006C234(a1, &v56);
  if (!v59)
  {
    sub_10002B894(&v56, &unk_1009711D0, &unk_1007B1A10);
    return;
  }

  v51 = a3;
  if (swift_dynamicCast())
  {
    URL.init(string:)();

    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_10002B894(v18, &qword_100982460, &unk_1007B5C90);
      return;
    }

    v23 = (*(v20 + 32))(v22, v18, v19);
    __chkstk_darwin(v23);
    v48[-2] = v22;
    v24.n128_f64[0] = sub_1004F6770(sub_1004F89B4, a6, &v56);
    if (!v57)
    {
      goto LABEL_19;
    }

    v49 = a2;
    v50 = v57;
    v25 = v56;
    v26 = v58;
    v27 = v59;
    v28 = Action.artwork.getter();
    if (v28)
    {
      v29 = v28;
      v48[0] = v25;
      v48[1] = v26;
      v48[2] = v27;

      v30 = sub_1004F8120(a7, a8);
      if (dispatch thunk of Artwork.isSystemImage.getter())
      {
        v31 = static SystemImage.load(artwork:with:includePrivateImages:)();
        v32 = v49;
      }

      else
      {
        v33 = dispatch thunk of Artwork.isBundleImage.getter();
        v32 = v49;
        if ((v33 & 1) == 0)
        {
          *&v53[0] = v48[0];
          *(&v53[0] + 1) = v50;
          sub_1001964F0(v53);

          v54 = v60;
          sub_1001964F0(&v54);

          goto LABEL_19;
        }

        v31 = sub_100330100(v29, v30);
      }

      if (v31)
      {
        v34 = v31;
        v35 = *a9;
        v61[0] = v60;
        v55 = &type metadata for String;
        v54 = v60;
        sub_100056164(&v54, v53);

        sub_10019D860(v61, &v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v35;
        sub_100051368(v53, NSLinkAttributeName, isUniquelyReferenced_nonNull_native);
        v37 = objc_allocWithZone(NSMutableAttributedString);
        v38 = String._bridgeToObjectiveC()();
        v39 = [v37 initWithString:v38];

        v40 = [objc_opt_self() textAttachmentWithImage:v34];
        v41 = [objc_opt_self() attributedStringWithAttachment:v40];

        [v39 appendAttributedString:v41];
        type metadata accessor for Key(0);
        sub_1004F8DBC(&qword_100976620, type metadata accessor for Key, &unk_1007B0934);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v43 = [v39 fullRange];
        [v39 addAttributes:isa range:{v43, v44}];

        v45 = __OFADD__(v32, v51);
        v46 = v32 + v51;
        v47 = v48[0];
        if (v45)
        {
          __break(1u);
          return;
        }

        [a10 insertAttributedString:v39 atIndex:v46];

        *&v54 = v47;
        *(&v54 + 1) = v50;
        sub_1001964F0(&v54);

        sub_1001964F0(v61);

        goto LABEL_19;
      }

      *&v53[0] = v48[0];
      *(&v53[0] + 1) = v50;
      sub_1001964F0(v53);
    }

    else
    {
      *&v53[0] = v25;
      *(&v53[0] + 1) = v50;
      sub_1001964F0(v53);
    }

    v54 = v60;
    sub_1001964F0(&v54);
LABEL_19:
    (*(v20 + 8))(v22, v19, v24);
  }
}