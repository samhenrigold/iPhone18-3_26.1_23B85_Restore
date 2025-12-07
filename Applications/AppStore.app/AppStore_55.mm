uint64_t sub_10061E5D8(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
LABEL_3:
      if (qword_10096EB70 != -1)
      {
        swift_once();
      }

      v2 = &qword_10098F660;
      return *v2;
    }
  }

  else
  {
    v3 = [v1 traitCollection];
    v4 = [v3 userInterfaceStyle];

    if (v4 == 2)
    {
      goto LABEL_3;
    }
  }

  if (qword_10096EB78 != -1)
  {
    swift_once();
  }

  v2 = &qword_10098F668;
  return *v2;
}

unint64_t sub_10061E6B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008B02C8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void *sub_10061E708(void *a1, char a2)
{
  result = sub_1001C82BC(a1, a2);
  v3 = result;
  v4 = result[2];
  if (v4)
  {
    v5 = 0;
    v6 = (result + 4);
    v7 = _swiftEmptyArrayStorage;
    while (v5 < *(v3 + 16))
    {
      sub_10002C0AC(v6, &v12);
      sub_10002A400(&v12, v13);
      if (dispatch thunk of OnboardingStep.shouldShow.getter())
      {
        sub_100005A38(&v12, v11);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10014432C(0, v7[2] + 1, 1);
          v7 = v14;
        }

        v10 = v7[2];
        v9 = v7[3];
        if (v10 >= v9 >> 1)
        {
          sub_10014432C((v9 > 1), v10 + 1, 1);
          v7 = v14;
        }

        v7[2] = v10 + 1;
        result = sub_100005A38(v11, &v7[5 * v10 + 4]);
      }

      else
      {
        result = sub_100007000(&v12);
      }

      ++v5;
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_13:

    return v7;
  }

  return result;
}

Swift::Int OnboardingConfiguration.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_10061E8D4()
{
  result = qword_10098F708;
  if (!qword_10098F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098F708);
  }

  return result;
}

uint64_t sub_10061E938()
{
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  result = static UIColor.componentBackgroundStandout.getter();
  qword_1009D3010 = result;
  return result;
}

char *sub_10061E97C(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel;
  type metadata accessor for DynamicTypeLabel();
  *&v4[v12] = DynamicTypeLabel.__allocating_init(frame:)();
  v13 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel;
  *&v4[v13] = DynamicTypeLabel.__allocating_init(frame:)();
  v14 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel;
  *&v4[v14] = DynamicTypeLabel.__allocating_init(frame:)();
  v15 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_offerButton;
  v16 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v4[v15] = sub_1000F5284(0, v17);
  v18 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_inAppPurchaseView;
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v19 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v4[v18] = sub_1002EB7C0(v11, 1);
  static CondensedSearchInAppPurchaseCardLayout.Metrics.baseMetrics.getter();
  *&v4[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_tileOffset] = 0;
  v20 = type metadata accessor for CondensedInAppPurchaseContentView(0);
  v38.receiver = v4;
  v38.super_class = v20;
  v21 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v25 = v21;
  [v25 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v26 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel;
  [v25 addSubview:*&v25[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel]];
  v27 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel;
  [v25 addSubview:*&v25[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel]];
  v28 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel;
  [v25 addSubview:*&v25[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel]];
  [v25 addSubview:*&v25[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_offerButton]];
  [v25 addSubview:*&v25[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_inAppPurchaseView]];
  v29 = *&v25[v26];
  v30 = [v25 tintColor];
  [v29 setTextColor:v30];

  [*&v25[v26] setNumberOfLines:1];
  [*&v25[v27] setNumberOfLines:1];
  v31 = *&v25[v27];
  v32 = objc_opt_self();
  v33 = v31;
  v34 = [v32 labelColor];
  [v33 setTextColor:v34];

  v35 = *&v25[v28];
  v36 = [v32 secondaryLabelColor];
  [v35 setTextColor:v36];

  sub_100621080();
  return v25;
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.layoutSubviews()()
{
  v1 = v0;
  v191 = type metadata accessor for FlankedHorizontalLayout.ViewAlignment();
  v189 = *(v191 - 8);
  __chkstk_darwin(v191);
  v190 = (v176 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v188 = v176 - v4;
  v5 = type metadata accessor for FlankedHorizontalLayout();
  v193 = *(v5 - 8);
  __chkstk_darwin(v5);
  v192 = v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for LayoutRect();
  v204 = *(v206 - 8);
  __chkstk_darwin(v206);
  v203 = v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v228 = *(v224 - 8);
  __chkstk_darwin(v224);
  v199 = v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v227 = *(v222 - 8);
  __chkstk_darwin(v222);
  v198 = v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v229 = *(v223 - 8);
  __chkstk_darwin(v223);
  v197 = v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for VerticalFlowLayout();
  v205 = *(v200 - 8);
  __chkstk_darwin(v200);
  v187 = v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v186 = v176 - v13;
  v14 = type metadata accessor for CondensedSearchInAppPurchaseCardLayout.Metrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v226 = v176 - v19;
  v20 = type metadata accessor for CondensedInAppPurchaseContentView(0);
  v257.receiver = v0;
  v257.super_class = v20;
  objc_msgSendSuper2(&v257, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v21 = [v0 traitCollection];
  v22 = UITraitCollection.prefersAccessibilityLayouts.getter();

  (*(v15 + 16))(v17, &v1[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_metrics], v14);
  v225 = v1;
  v202 = v14;
  if (v22)
  {
    CondensedSearchInAppPurchaseCardLayout.Metrics.withCornerTileOffset(_:)();
    v23 = *(v15 + 8);
    v201 = v15 + 8;
    v190 = v23;
    v23(v17, v14);
    v24 = *&v225[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v253 = type metadata accessor for InAppPurchaseView(0);
    v254 = &protocol witness table for UIView;
    v252[0] = v24;
    v25 = *&v225[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel];
    v26 = type metadata accessor for DynamicTypeLabel();
    v251 = &protocol witness table for UILabel;
    v250 = v26;
    v249[0] = v25;
    v27 = *&v225[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel];
    v248 = &protocol witness table for UILabel;
    v247 = v26;
    v246[0] = v27;
    v28 = *&v225[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel];
    v245 = &protocol witness table for UILabel;
    v244 = v26;
    v243[0] = v28;
    v29 = *&v225[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_offerButton];
    v30 = type metadata accessor for OfferButton();
    v242 = &protocol witness table for UIView;
    v241 = v30;
    v240[0] = v29;
    sub_10002849C(&qword_10096FC30, &unk_1007B10E0);
    v31 = *(type metadata accessor for VerticalFlowLayout.Child() - 8);
    v193 = *(v31 + 72);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v188 = (4 * v193);
    v33 = swift_allocObject();
    v189 = v33;
    *(v33 + 16) = xmmword_1007B5360;
    *&v221 = v33 + v32;
    v187 = v24;
    v34 = v25;
    v35 = v27;
    v36 = v28;
    v37 = v29;
    CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
    *(&v238 + 1) = &type metadata for CGFloat;
    v239 = &protocol witness table for CGFloat;
    *&v237 = v38;
    CondensedSearchInAppPurchaseCardLayout.Metrics.artworkAXBottomMargin.getter();
    LODWORD(v185) = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v194 = v229[13];
    v196 = (v229 + 13);
    v39 = v197;
    (v194)(v197);
    v209 = sub_10002849C(&unk_10098D820, &unk_1007D7290);
    v40 = v227;
    v41 = *(v227 + 72);
    v195 = *(v227 + 80);
    v42 = (v195 + 32) & ~v195;
    v207 = 3 * v41;
    v219 = v41;
    v220 = 2 * v41;
    v43 = swift_allocObject();
    v218 = xmmword_1007B1E00;
    *(v43 + 16) = xmmword_1007B1E00;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    *&v231 = v43;
    *&v217 = sub_1006219DC(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
    v216 = sub_10002849C(&unk_10098D830, &unk_1007B10F0);
    v215 = sub_1000364CC();
    v44 = v198;
    v45 = v222;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    LODWORD(v214) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v46 = v228;
    v47 = *(v228 + 104);
    v212 = (v228 + 104);
    v213 = v47;
    v48 = v199;
    v49 = v224;
    v47(v199);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v208 = *(v46 + 8);
    v228 = v46 + 8;
    v208(v48, v49);
    v50 = *(v40 + 8);
    v227 = v40 + 8;
    v211 = v50;
    v50(v44, v45);
    v51 = v229[1];
    ++v229;
    v210 = v51;
    v52 = v223;
    v51(v39, v223);
    sub_100036530(&v234);
    sub_100007000(&v237);
    v53 = v250;
    v54 = v251;
    v55 = sub_10002A400(v249, v250);
    *(&v238 + 1) = v53;
    v239 = v54[1];
    v56 = sub_1000056E0(&v237);
    (*(*(v53 - 8) + 16))(v56, v55, v53);
    CondensedSearchInAppPurchaseCardLayout.Metrics.headerTextSpace.getter();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    LODWORD(v192) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v57 = v194;
    (v194)(v39);
    v191 = v42;
    v58 = swift_allocObject();
    *(v58 + 16) = v218;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v230[0] = v58;
    v59 = v222;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v213(v48, v214, v49);
    v60 = v193;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v208(v48, v49);
    v211(v44, v59);
    v210(v39, v52);
    sub_100036530(&v231);
    sub_100007000(&v234);
    sub_100007000(&v237);
    v184 = (2 * v60);
    v61 = v247;
    v62 = v248;
    v63 = sub_10002A400(v246, v247);
    *(&v238 + 1) = v61;
    v239 = v62[1];
    v64 = sub_1000056E0(&v237);
    (*(*(v61 - 8) + 16))(v64, v63, v61);
    CondensedSearchInAppPurchaseCardLayout.Metrics.titleTextSpace.getter();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    (v57)(v39, v192, v52);
    v65 = swift_allocObject();
    *(v65 + 16) = v218;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v230[0] = v65;
    v66 = v222;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v67 = v224;
    v213(v48, v214, v224);
    v68 = v184;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v208(v48, v67);
    v211(v44, v66);
    v69 = v39;
    v70 = v39;
    v71 = v223;
    v210(v69, v223);
    sub_100036530(&v231);
    sub_100007000(&v234);
    sub_100007000(&v237);
    v193 += v68;
    v72 = v244;
    v73 = v245;
    v74 = sub_10002A400(v243, v244);
    *(&v238 + 1) = v72;
    v239 = v73[1];
    v75 = sub_1000056E0(&v237);
    (*(*(v72 - 8) + 16))(v75, v74, v72);
    CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleTextSpace.getter();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    v76 = v71;
    (v194)(v70, v192, v71);
    v77 = swift_allocObject();
    *(v77 + 16) = v218;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v230[0] = v77;
    v78 = v222;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v79 = v224;
    v213(v48, v214, v224);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v208(v48, v79);
    v211(v44, v78);
    v210(v70, v76);
    sub_100036530(&v231);
    sub_100007000(&v234);
    sub_100007000(&v237);
    CondensedSearchInAppPurchaseCardLayout.Metrics.artworkAXBottomMargin.getter();
    v236 = 0;
    v234 = 0u;
    v235 = 0u;
    (v194)(v70, v185, v76);
    v80 = swift_allocObject();
    *(v80 + 16) = v218;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    *&v231 = v80;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v213(v48, v214, v79);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v81 = v48;
    v82 = v225;
    v83 = v187;
    v208(v81, v79);
    v211(v44, v78);
    v210(v70, v76);
    sub_100036530(&v234);
    sub_100007000(&v237);
    v84 = v186;
    VerticalFlowLayout.init(expandChildrenToFit:children:)();
    sub_100007000(v240);
    sub_100007000(v243);
    sub_100007000(v246);
    sub_100007000(v249);
    sub_100007000(v252);
    v85 = v203;
    v86 = v200;
    dispatch thunk of Layout.placeChildren(relativeTo:in:)();
    (*(v204 + 8))(v85, v206);
    [v83 frame];
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v95 = [v82 traitCollection];
    LOBYTE(v85) = UITraitCollection.prefersRightToLeftLayouts.getter();

    CondensedSearchInAppPurchaseCardLayout.Metrics.tileOffset.getter();
    sub_10002A400(v252, v253);
    v96 = [v82 traitCollection];
    AnyDimension.value(with:)();
    v98 = v97;

    if (v85)
    {
      sub_100007000(v252);
      v99 = v88 - v98;
    }

    else
    {
      v99 = v88 + v98;
      sub_100007000(v252);
    }

    v175 = v205;
    [v83 setFrame:{v99, v90 + 0.0, v92, v94}];
    v190(v226, v202);
    (*(v175 + 8))(v84, v86);
  }

  else
  {
    v100 = *&v1[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v255 = *&v1[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel];
    v101 = v255;
    v256 = v100;
    v102 = *&v1[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel];
    v253 = type metadata accessor for DynamicTypeLabel();
    v254 = &protocol witness table for UILabel;
    v252[0] = v102;
    v201 = v15;
    v103 = *&v1[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel];
    v251 = &protocol witness table for UILabel;
    v250 = v253;
    v249[0] = v103;
    v182 = v5;
    v104 = *&v1[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_offerButton];
    v105 = type metadata accessor for OfferButton();
    v248 = &protocol witness table for UIView;
    v247 = v105;
    v246[0] = v104;
    v181 = v100;
    v180 = v101;
    v106 = v102;
    v107 = v103;
    v108 = v104;
    v109 = [v1 traitCollection];
    CondensedSearchInAppPurchaseCardLayout.Metrics.textTopMargin.getter();
    sub_10002A400(v243, v244);
    AnyDimension.value(with:)();
    v194 = v17;
    CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
    v178 = type metadata accessor for TraitEnvironmentPlaceholder();
    v179 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v110 = swift_allocObject();
    v221 = xmmword_1007B0B70;
    *(v110 + 16) = xmmword_1007B0B70;
    *(v110 + 32) = v109;
    v177 = v109;
    v111 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    CGFloat.rawValue(in:)();

    sub_100007000(v243);
    sub_10002849C(&qword_10096FC30, &unk_1007B10E0);
    v112 = *(type metadata accessor for VerticalFlowLayout.Child() - 8);
    v185 = *(v112 + 72);
    v113 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v114 = swift_allocObject();
    v176[1] = v114;
    *(v114 + 16) = xmmword_1007B5350;
    v226 = (v114 + v113);
    LayoutView.withLayoutMargins(_:)();
    CondensedSearchInAppPurchaseCardLayout.Metrics.headerTextSpace.getter();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    LODWORD(v186) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v115 = v229;
    v116 = v229[13];
    v184 = (v229 + 13);
    v195 = v116;
    v117 = v197;
    v118 = v223;
    v116(v197);
    v196 = sub_10002849C(&unk_10098D820, &unk_1007D7290);
    v119 = v227;
    v120 = *(v227 + 72);
    v121 = *(v227 + 80);
    v207 = 3 * v120;
    v219 = 2 * v120;
    v220 = v121;
    *&v218 = v120;
    v183 = (v121 + 32) & ~v121;
    v122 = swift_allocObject();
    v217 = xmmword_1007B1E00;
    *(v122 + 16) = xmmword_1007B1E00;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    *&v234 = v122;
    v215 = sub_1006219DC(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
    v214 = sub_10002849C(&unk_10098D830, &unk_1007B10F0);
    v216 = sub_1000364CC();
    v123 = v198;
    v124 = v222;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    LODWORD(v213) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v125 = v118;
    v126 = v228;
    v127 = *(v228 + 104);
    v211 = (v228 + 104);
    v212 = v127;
    v128 = v199;
    v129 = v224;
    v127(v199);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v130 = *(v126 + 8);
    v228 = v126 + 8;
    v210 = v130;
    v130(v128, v129);
    v131 = *(v119 + 8);
    v227 = v119 + 8;
    v209 = v131;
    v132 = v124;
    v131(v123, v124);
    v133 = v115[1];
    v229 = v115 + 1;
    v208 = v133;
    v133(v117, v125);
    sub_100036530(&v237);
    sub_100007000(v240);
    sub_100007000(v243);
    v134 = v253;
    v135 = v254;
    v136 = sub_10002A400(v252, v253);
    v244 = v134;
    v245 = v135[1];
    v137 = sub_1000056E0(v243);
    (*(*(v134 - 8) + 16))(v137, v136, v134);
    CondensedSearchInAppPurchaseCardLayout.Metrics.titleTextSpace.getter();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    v138 = v125;
    (v195)(v117, v186, v125);
    v139 = swift_allocObject();
    *(v139 + 16) = v217;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    *&v234 = v139;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v140 = v224;
    v212(v128, v213, v224);
    v141 = v185;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v210(v128, v140);
    v209(v123, v132);
    v142 = v117;
    v143 = v117;
    v144 = v138;
    v208(v142, v138);
    sub_100036530(&v237);
    sub_100007000(v240);
    sub_100007000(v243);
    v176[0] = 2 * v141;
    v145 = v250;
    v146 = v251;
    v147 = sub_10002A400(v249, v250);
    v244 = v145;
    v245 = v146[1];
    v148 = sub_1000056E0(v243);
    (*(*(v145 - 8) + 16))(v148, v147, v145);
    CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleTextSpace.getter();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    (v195)(v143, v186, v144);
    v149 = swift_allocObject();
    *(v149 + 16) = v217;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    *&v234 = v149;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v150 = v224;
    v212(v128, v213, v224);
    v151 = v176[0];
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v210(v128, v150);
    v209(v123, v132);
    v152 = v223;
    v208(v143, v223);
    sub_100036530(&v237);
    sub_100007000(v240);
    sub_100007000(v243);
    v186 = (v151 + v185);
    CondensedSearchInAppPurchaseCardLayout.Metrics.offerButtonTopMargin.getter();
    CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
    v241 = &type metadata for CGFloat;
    v242 = &protocol witness table for CGFloat;
    v240[0] = v153;
    (v195)(v143, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v152);
    v154 = swift_allocObject();
    *(v154 + 16) = v217;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    *&v237 = v154;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v155 = v224;
    v212(v128, v213, v224);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v210(v128, v155);
    v209(v123, v132);
    v208(v143, v152);
    sub_100007000(v243);
    sub_100036530(v240);
    v156 = v187;
    VerticalFlowLayout.init(expandChildrenToFit:children:)();
    CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
    v157 = swift_allocObject();
    *(v157 + 16) = v221;
    v158 = v177;
    *(v157 + 32) = v177;
    v159 = v158;
    v160 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    CGFloat.rawValue(in:)();

    CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
    v161 = swift_allocObject();
    *(v161 + 16) = v221;
    *(v161 + 32) = v159;
    v162 = v159;
    v163 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    CGFloat.rawValue(in:)();

    CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
    v164 = swift_allocObject();
    *(v164 + 16) = v221;
    *(v164 + 32) = v162;
    v229 = v162;
    v165 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    CGFloat.rawValue(in:)();

    CondensedSearchInAppPurchaseCardLayout.Metrics.artworkTrailingMargin.getter();
    sub_10002A400(v243, v244);
    AnyDimension.value(with:)();
    sub_100007000(v243);
    type metadata accessor for InAppPurchaseView(0);
    LayoutView.withLayoutMargins(_:)();
    v166 = v200;
    v241 = v200;
    v242 = &protocol witness table for VerticalFlowLayout;
    v167 = sub_1000056E0(v240);
    v168 = v205;
    (*(v205 + 16))(v167, v156, v166);
    sub_10002C0AC(v243, &v237);
    v236 = &protocol witness table for Double;
    *(&v235 + 1) = &type metadata for Double;
    *&v234 = 0;
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    v169 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
    v170 = *(v189 + 104);
    v171 = v191;
    v170(v188, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v191);
    v230[3] = type metadata accessor for ZeroDimension();
    v230[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v230);
    static ZeroDimension.zero.getter();
    v170(v190, v169, v171);
    v172 = v192;
    FlankedHorizontalLayout.init(sublayout:leadingView:leadingMargin:leadingAlignment:trailingView:trailingMargin:trailingAlignment:)();

    sub_100007000(v243);
    (*(v168 + 8))(v156, v166);
    (*(v201 + 8))(v194, v202);
    sub_100007000(v246);
    sub_100007000(v249);
    sub_100007000(v252);

    v173 = v203;
    v174 = v182;
    dispatch thunk of Layout.placeChildren(relativeTo:in:)();
    (*(v204 + 8))(v173, v206);
    (*(v193 + 8))(v172, v174);
  }
}

uint64_t type metadata accessor for CondensedInAppPurchaseContentView(uint64_t a1)
{
  result = qword_10098F778;
  if (!qword_10098F778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.prepareForReuse()()
{
  [*(v0 + OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_offerButton) setHidden:1];
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_inAppPurchaseView);

  [v1 setHidden:1];
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v4 = type metadata accessor for CondensedSearchInAppPurchaseCardLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CondensedInAppPurchaseContentView(0);
  v26.receiver = v1;
  v26.super_class = v8;
  objc_msgSendSuper2(&v26, "traitCollectionDidChange:", isa);
  if (isa)
  {
    v9 = [(objc_class *)isa preferredContentSizeCategory];
  }

  else
  {
    v9 = 0;
  }

  v10 = &selRef_setRequiresColorStatistics_;
  v11 = [v2 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v13 = &StringUserDefaultsDebugSetting;
  if (!v9)
  {

LABEL_12:
    sub_100621080();
    [v2 v13[41].base_meths];
    goto LABEL_13;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {

    v13 = &StringUserDefaultsDebugSetting;
    v10 = &selRef_setRequiresColorStatistics_;
    if (isa)
    {
      goto LABEL_14;
    }

LABEL_16:
    v20 = 2;
    goto LABEL_17;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v13 = &StringUserDefaultsDebugSetting;
  v10 = &selRef_setRequiresColorStatistics_;
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (!isa)
  {
    goto LABEL_16;
  }

LABEL_14:
  v20 = UITraitCollection.prefersAccessibilityLayouts.getter() & 1;
LABEL_17:
  v21 = [v2 v10[35]];
  v22 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v20 == 2 || ((v22 ^ v20) & 1) != 0)
  {
    v23 = *&v2[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel];
    (*(v5 + 16))(v7, &v2[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_metrics], v4);
    v24 = [v2 v10[35]];
    v25 = CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleNumberOfLines(for:)(v24);

    (*(v5 + 8))(v7, v4);
    [v23 setNumberOfLines:v25];
    [v2 v13[41].base_meths];
  }
}

id sub_100621080()
{
  v1 = v0;
  v39 = type metadata accessor for FontUseCase();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CondensedSearchInAppPurchaseCardLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel];
  v9 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v38 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_metrics;
  v10 = *(v5 + 16);
  v41 = v9;
  v42 = v5 + 16;
  v36 = v4;
  v10(v7, &v0[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_metrics], v4);
  v11 = v10;
  v34 = v10;
  CondensedSearchInAppPurchaseCardLayout.Metrics.headerFont.getter();
  v37 = *(v5 + 8);
  v35 = v5 + 8;
  v37(v7, v4);
  v12 = [v0 traitCollection];
  v13 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v14 = *(v43 + 8);
  v43 += 8;
  v40 = v14;
  v15 = v39;
  v14(v3, v39);
  [v8 setFont:v13];

  [v8 setLineBreakMode:4];
  v16 = *&v1[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel];
  v17 = v38;
  v18 = v36;
  v11(v7, &v1[v38], v36);
  CondensedSearchInAppPurchaseCardLayout.Metrics.titleFont.getter();
  v19 = v18;
  v20 = v37;
  v37(v7, v19);
  v21 = [v1 traitCollection];
  v22 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v40(v3, v15);
  [v16 setFont:v22];

  [v16 setLineBreakMode:4];
  v33 = *&v1[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel];
  v23 = &v1[v17];
  v24 = v36;
  v25 = v34;
  v34(v7, v23, v36);
  CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleFont.getter();
  v20(v7, v24);
  v26 = [v1 traitCollection];
  v27 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v40(v3, v39);
  v28 = v33;
  [v33 setFont:v27];

  v25(v7, &v1[v38], v24);
  v29 = [v1 traitCollection];
  v30 = CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleNumberOfLines(for:)(v29);

  v37(v7, v24);
  [v28 setNumberOfLines:v30];
  return [v28 setLineBreakMode:4];
}

id CondensedInAppPurchaseContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedInAppPurchaseContentView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1006215DC()
{
  type metadata accessor for InAppPurchaseSearchResult();
  sub_1006219DC(&qword_10098D9E8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v2)
  {
    InAppPurchaseSearchResult.lockup.getter();
    v1 = sub_1001BD3AC(93.0, 93.0);

    ArtworkLoader.prefetchArtwork(using:)(v1);
  }

  return result;
}

uint64_t sub_1006216B4(uint64_t a1)
{
  *(a1 + 24) = sub_1006219DC(&qword_10098F738, type metadata accessor for CondensedInAppPurchaseContentView, &protocol conformance descriptor for CondensedInAppPurchaseContentView);
  result = sub_1006219DC(&qword_10098F740, type metadata accessor for CondensedInAppPurchaseContentView, &protocol conformance descriptor for CondensedInAppPurchaseContentView);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100621788(uint64_t a1)
{
  result = type metadata accessor for CondensedSearchInAppPurchaseCardLayout.Metrics();
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

void sub_10062183C()
{
  v1 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel;
  type metadata accessor for DynamicTypeLabel();
  *(v0 + v4) = DynamicTypeLabel.__allocating_init(frame:)();
  v5 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel;
  *(v0 + v5) = DynamicTypeLabel.__allocating_init(frame:)();
  v6 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel;
  *(v0 + v6) = DynamicTypeLabel.__allocating_init(frame:)();
  v7 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_offerButton;
  v8 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v0 + v7) = sub_1000F5284(0, v9);
  v10 = OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_inAppPurchaseView;
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v11 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *(v0 + v10) = sub_1002EB7C0(v3, 1);
  static CondensedSearchInAppPurchaseCardLayout.Metrics.baseMetrics.getter();
  *(v0 + OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_tileOffset) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1006219DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100621A24(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  v4 = v3;
  v62 = a3;
  v7 = type metadata accessor for Shelf.ContentType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v54 - v12;
  __chkstk_darwin(v14);
  v16 = v54 - v15;
  __chkstk_darwin(v17);
  v19 = v54 - v18;
  Shelf.contentType.getter();
  v20 = sub_1005D8420();
  if (!v20)
  {
    return (*(v8 + 8))(v19, v7);
  }

  v56 = v13;
  v57 = v10;
  v59 = v21;
  v60 = v20;
  type metadata accessor for GenericPagePresenter();
  sub_100623E08(&qword_100970C98, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  if (dispatch thunk of ShelfPresenter.doesShelfExist(for:)())
  {
    v61 = v8;
    if (dispatch thunk of ShelfPresenter.sectionCount.getter() <= a2 || (dispatch thunk of ShelfPresenter.isShelfHidden(for:)() & 1) != 0)
    {
      v55 = 0;
    }

    else
    {
      v22 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
      if (sub_100647D24(a2))
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      v55 = v23;
    }

    v8 = v61;
  }

  else
  {
    v55 = 0;
  }

  v61 = a1;
  v24 = Shelf.isHorizontal.getter();
  v25 = *(v8 + 16);
  v25(v16, v19, v7);
  v58 = *(v8 + 88);
  v26 = v58(v16, v7);
  if (v26 == enum case for Shelf.ContentType.smallLockup(_:) || v26 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_19:
    v28 = 1;
    goto LABEL_20;
  }

  v49 = v26 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v26 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v49 || v26 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_19;
  }

  if (v26 == enum case for Shelf.ContentType.editorialCard(_:) || v26 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_17;
  }

  v28 = 1;
  if (v26 == enum case for Shelf.ContentType.brick(_:) || v26 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_20;
  }

  if (v26 == enum case for Shelf.ContentType.reviews(_:) || v26 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v26 == enum case for Shelf.ContentType.framedVideo(_:) || v26 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v26 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v26 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_20;
  }

  if (v26 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v26 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v26 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v26 == enum case for Shelf.ContentType.posterLockup(_:) || v26 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
LABEL_17:
    v28 = v24;
    goto LABEL_20;
  }

  if (v26 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v28 = v24;
    if (v26 != enum case for Shelf.ContentType.appPromotion(_:))
    {
      (*(v8 + 8))(v16, v7);
      v28 = 0;
    }
  }

LABEL_20:
  v29 = *&v4[qword_1009728F0];
  v30 = v62;
  [v62 bounds];
  [v30 safeAreaInsets];
  CGSize.subtracting(insets:)();
  v32 = v31.n128_f64[0];
  v34 = v33;
  if ((v28 & 1) != 0 || (v62 = v25, (v35 = sub_1005D8420()) == 0) || (v37 = v35, v38 = v36, [v4 pageMarginInsets], v40 = (*(v38 + 32))(0, v4, v37, v38, v39), v32 = v32 - (v40 + v41), v42 = objc_msgSend(v4, "traitCollection"), v43 = *v29, v54[0] = *(*v29 + 696), v54[1] = v43 + 696, LOBYTE(v37) = (v54[0])(v19, v42), v42, (v37 & 1) == 0))
  {
LABEL_64:
    v31.n128_u64[0] = 0;
    if (v32 > 0.0)
    {
      v31.n128_f64[0] = v32;
    }

    (*(v59 + 24))(v61, v28 & 1, v4, *&v4[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_artworkLoader], v31, v34);
    return (*(v8 + 8))(v19, v7);
  }

  v44 = v56;
  v62(v56, v19, v7);
  v45 = v58(v44, v7);
  v46 = 0;
  if (v45 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v45 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v8 + 8))(v56, v7);
    v47 = [v4 traitCollection];
    v48 = (v54[0])(v19, v47);

    if (v48)
    {
      v46 = sub_1006235A8(v55, v4, v19);
    }

    else
    {
      v46 = 1;
    }
  }

  v51 = v57;
  v62(v57, v19, v7);
  result = v58(v51, v7);
  if (result == enum case for Shelf.ContentType.annotation(_:) || result == enum case for Shelf.ContentType.productCapability(_:) || result == enum case for Shelf.ContentType.productPageLink(_:) || result == enum case for Shelf.ContentType.privacyType(_:))
  {
    if (!__OFSUB__(v46, 1))
    {
      v53 = v32 + (v46 - 1) * -30.0;
      goto LABEL_63;
    }

    __break(1u);
  }

  else
  {
    (*(v8 + 8))(v57, v7);
    result = j_j___s8AppStore20PageTraitEnvironmentPAAE16pageColumnMargin12CoreGraphics7CGFloatVvg();
    if (!__OFSUB__(v46, 1))
    {
      v53 = v32 - v31.n128_f64[0] * (v46 - 1);
LABEL_63:
      v32 = v53 / v46;
      goto LABEL_64;
    }
  }

  __break(1u);
  return result;
}

void sub_100622230()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100972A20, &unk_1007B1EC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = *&v0[qword_1009728F0];
  type metadata accessor for GenericPagePresenter();
  sub_100623E08(&qword_100970C98, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  dispatch thunk of ShelfPresenter.sectionCount.getter();
  TransientStateStore.removeAllState()();
  if (*(v5 + 112))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  v6 = &StringUserDefaultsDebugSetting;
  v7 = [v0 collectionView];
  [v7 reloadData];

  sub_100623E08(&qword_100983820, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);
  if (dispatch thunk of MetricsPagePresenter.pendingPageRender.getter())
  {
    PendingPageRender.isLayoutPending.setter();
  }

  v8 = [v1 collectionView];
  v9 = &StringUserDefaultsDebugSetting;
  if (v8)
  {
    v10 = v8;
    v11 = [v8 collectionViewLayout];

    if (v11)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15 = (v13 + OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver);
        v16 = *(v13 + OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver);
        v17 = v15[1];
        *v15 = sub_100623E50;
        v15[1] = v14;

        v18 = v17;
        v9 = &StringUserDefaultsDebugSetting;
        sub_10001F63C(v16, v18);

        v6 = &StringUserDefaultsDebugSetting;
      }

      else
      {
      }
    }
  }

  v19 = [v1 v6[50].weak_ivar_lyt];
  if (v19 && (v20 = v19, v21 = [v19 v9[51].weak_ivar_lyt], v20, v21))
  {
    type metadata accessor for BaseCollectionCompositionalLayout();
    v22 = swift_dynamicCastClass();
    if (!v22)
    {
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = type metadata accessor for IndexSet();
  (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
  sub_100055BB8(v4);

  sub_10002B894(v4, &unk_100972A20, &unk_1007B1EC0);
  v24 = dispatch thunk of MetricsPagePresenter.pageRenderMetrics.getter();
  v25 = [objc_opt_self() sharedApplication];
  v26 = [v25 launchedToTest];

  if (v26)
  {
    if (v24)
    {
      v27 = objc_opt_self();

      v28 = [v27 defaultCenter];
      type metadata accessor for PageRenderMetricsPresenter();
      v29 = static PageRenderMetricsPresenter.pageEndNotification.getter();
      [v28 addObserver:v1 selector:"ppt_pageRenderMetricsPresenterPageLoaded:" name:v29 object:v24];
    }

    else
    {
      sub_100094120();
      v30 = swift_allocError();
      sub_10021CA80(v30);
    }
  }

  else
  {
  }
}

void sub_100622690(uint64_t a1)
{
  v12 = [v1 collectionView];
  if (v12)
  {
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      while (1)
      {
        v8 = v7;
LABEL_10:
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));
        type metadata accessor for GenericPagePresenter();
        sub_100623E08(&qword_100970C98, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
        v11 = dispatch thunk of ShelfPresenter.shelf(for:)();
        sub_100621A24(v11, v10, v12);

        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(a1 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }
  }
}

double sub_100622848(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_10039E290();
    sub_100622690(v4);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v7 = v5;

    type metadata accessor for GenericPagePresenter();
    sub_100623E08(&qword_100983820, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);
    v8 = dispatch thunk of MetricsPagePresenter.pendingPageRender.getter();

    if (v8)
    {
      PendingPageRender.isLayoutPending.setter();
    }
  }

  return result;
}

void sub_10062296C(void *a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    if ([v7 numberOfSections] >= 1)
    {
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11[4] = sub_100623E58;
      v11[5] = v9;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_1006D1458;
      v11[3] = &unk_1008CC0B0;
      v10 = _Block_copy(v11);

      [a1 animateAlongsideTransition:v10 completion:0];
      _Block_release(v10);
    }
  }
}

void sub_100622AC0(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100623E60;
  *(v4 + 24) = a2;
  v6[4] = sub_10006F094;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000489A8;
  v6[3] = &unk_1008CC100;
  v5 = _Block_copy(v6);

  [v3 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

void sub_100622C0C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100622C60();
  }
}

id sub_100622C60()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  sub_100622230();
  if (**&v0[qword_1009728F0] == &off_100990560)
  {
    sub_100647F78(v14);
  }

  else
  {
    (*(v3 + 56))(v14, 1, 1, v2);
  }

  v15 = qword_10098F790;
  swift_beginAccess();
  sub_1000F4070(v14, &v0[v15]);
  result = swift_endAccess();
  if (v0[qword_10098F788] == 1)
  {
    sub_10022BA04(&v0[v15], v11);
    if ((*(v3 + 48))(v11, 1, v2) == 1)
    {
      return sub_10002B894(v11, &unk_10097DAE0, &qword_1007B5CA0);
    }

    else
    {
      (*(v3 + 32))(v5, v11, v2);
      result = [v0 collectionView];
      if (result)
      {
        v17 = result;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v17 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

        (*(v3 + 8))(v5, v2);
        (*(v3 + 56))(v8, 1, 1, v2);
        swift_beginAccess();
        sub_1000F4070(v8, &v1[v15]);
        return swift_endAccess();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_100622F98(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_10062296C(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_100623018(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v20[-v9];
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1 & 1, v13);
  if ((*(v2 + qword_10098F788) & 1) == 0)
  {
    *(v2 + qword_10098F788) = 1;
  }

  v16 = qword_10098F790;
  swift_beginAccess();
  sub_10022BA04(v2 + v16, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10002B894(v10, &unk_10097DAE0, &qword_1007B5CA0);
  }

  (*(v12 + 32))(v15, v10, v11);
  result = [v2 collectionView];
  if (result)
  {
    v18 = result;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v18 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

    (*(v12 + 8))(v15, v11);
    (*(v12 + 56))(v7, 1, 1, v11);
    swift_beginAccess();
    sub_1000F4070(v7, v2 + v16);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006232C0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100623018(a3);
}

double sub_100623314(void *a1)
{
  v1 = a1;
  sub_100048DF0(v1, v2);
  v4 = v3;

  return v4;
}

uint64_t type metadata accessor for PrivacyDetailViewController(uint64_t a1)
{
  result = qword_10098F7C0;
  if (!qword_10098F7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100623424(uint64_t a1)
{
  sub_10022B99C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1006235A8(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = v6[2];
  v13(&v29 - v11, a3, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 1;
  if (v15 != enum case for Shelf.ContentType.artwork(_:) && v15 != enum case for Shelf.ContentType.ribbonBar(_:) && v15 != enum case for Shelf.ContentType.ribbonFlow(_:) && v15 != enum case for Shelf.ContentType.paragraph(_:) && v15 != enum case for Shelf.ContentType.footnote(_:) && v15 != enum case for Shelf.ContentType.titledParagraph(_:) && v15 != enum case for Shelf.ContentType.reviewsContainer(_:) && v15 != enum case for Shelf.ContentType.reviewSummary(_:) && v15 != enum case for Shelf.ContentType.editorialLink(_:) && v15 != enum case for Shelf.ContentType.quote(_:) && v15 != enum case for Shelf.ContentType.framedArtwork(_:) && v15 != enum case for Shelf.ContentType.screenshots(_:) && v15 != enum case for Shelf.ContentType.appShowcase(_:) && v15 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v15 != enum case for Shelf.ContentType.linkableText(_:) && v15 != enum case for Shelf.ContentType.framedVideo(_:) && v15 != enum case for Shelf.ContentType.productDescription(_:) && v15 != enum case for Shelf.ContentType.banner(_:) && v15 != enum case for Shelf.ContentType.roundedButton(_:) && v15 != enum case for Shelf.ContentType.titledButtonStack(_:) && v15 != enum case for Shelf.ContentType.smallStoryCard(_:) && v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v15 != enum case for Shelf.ContentType.upsellBreakout(_:) && v15 != enum case for Shelf.ContentType.smallBreakout(_:) && v15 != enum case for Shelf.ContentType.arcadeFooter(_:) && v15 != enum case for Shelf.ContentType.editorialQuote(_:) && v15 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v15 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v15 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v15 != enum case for Shelf.ContentType.privacyHeader(_:) && v15 != enum case for Shelf.ContentType.privacyFooter(_:) && v15 != enum case for Shelf.ContentType.privacyCategory(_:) && v15 != enum case for Shelf.ContentType.privacyDefinition(_:) && v15 != enum case for Shelf.ContentType.heroCarousel(_:) && v15 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    v29 = a1;
    v17 = v6[1];
    v17(v12, v5);
    (v13)(v8, a3, v5);
    v18 = v14(v8, v5);
    if (v18 != enum case for Shelf.ContentType.annotation(_:) && v18 != enum case for Shelf.ContentType.productCapability(_:) && v18 != enum case for Shelf.ContentType.productPageLink(_:))
    {
      if (v18 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v19 = v30;
        [v30 pageContainerSize];
        v21 = v20;
        JUScreenClassGetPortraitWidth();
        if (v21 >= v22)
        {
          [v19 pageContainerSize];
          v24 = v23;
          [v19 pageContainerSize];
          if (v24 >= v25)
          {
            if (v29 <= 2)
            {
              return 2;
            }

            else
            {
              return 3;
            }
          }
        }
      }

      else
      {
        v17(v8, v5);
      }

      return 2;
    }

    [v30 pageContainerSize];
    v27 = v26;
    JUScreenClassGetPortraitWidth();
    if (v28 > v27)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

void sub_100623AEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AutomationSemantics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10098F788) = 0;
  v10 = qword_10098F790;
  v11 = type metadata accessor for IndexPath();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  type metadata accessor for PrivacyDetailDataSource(0);
  swift_allocObject();
  swift_retain_n();
  v12 = sub_1003C940C();

  v13 = sub_1003B71B8(a1, v12, a2);
  sub_100623E08(&qword_10098FDB8, type metadata accessor for PrivacyDetailViewController, &unk_1007DA830);
  v14 = v13;

  v15 = v14;
  dispatch thunk of BaseGenericPagePresenter.view.setter();
  v15[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 1;
  v16 = *&v15[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber];
  v17 = [v15 navigationItem];
  v18 = v17;
  if (v16)
  {
    v19 = 2;
  }

  else
  {
    v19 = 3;
  }

  [v17 setLargeTitleDisplayMode:v19];

  v20 = v15;
  dispatch thunk of BaseGenericPagePresenter.pageTitle.getter();
  v22 = v21;

  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  [v20 setTitle:v23];

  v24 = [v20 view];
  if (v24)
  {
    memset(v25, 0, sizeof(v25));
    static AutomationSemantics.page(name:id:)();
    sub_10002B894(v25, &unk_1009711D0, &unk_1007B1A10);
    UIView.setAutomationSemantics(_:)();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100623E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100623F64(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CollectionViewTableLayout();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100623FBC(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
  }

  else
  {
    v3 = [a1 tabBarController];
    if (!v3)
    {
LABEL_10:
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v8 = v11;
        v12 = a1;
      }

      else
      {
        v8 = [a1 navigationController];
        if (!v8)
        {
          v13 = 0;
          goto LABEL_19;
        }
      }

      goto LABEL_13;
    }
  }

  v5 = [v3 selectedViewController];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      goto LABEL_13;
    }
  }

  v9 = [v3 selectedViewController];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v8 = [v9 navigationController];

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_13:
  v13 = [v8 presentedViewController];
  if (v13)
  {
    type metadata accessor for PresentationContextViewController();
    v14 = swift_dynamicCastClass();
    if (!v14 || (v15 = [v14 presentedViewController], v13, (v13 = v15) != 0))
    {
      v16 = v13;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
      }

      goto LABEL_20;
    }
  }

LABEL_19:
  v16 = 0;
LABEL_20:
  v35[0] = v16;
  v35[1] = v13;
  v35[2] = v8;
  v35[3] = a1;
  v17 = v8;
  v18 = a1;
  v34 = v16;
  result = v13;
  v20 = result;
  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  do
  {
    if (v21 <= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v21;
    }

    v24 = v21;
    while (1)
    {
      if (v23 == v24)
      {
        __break(1u);
        return result;
      }

      v25 = v35[v24];
      if (v25)
      {
        swift_getObjectType();
        result = swift_conformsToProtocol2();
        if (result)
        {
          break;
        }
      }

      if (++v24 == 4)
      {
        goto LABEL_34;
      }
    }

    v33 = v20;
    v26 = result;
    v32 = v25;
    result = swift_isUniquelyReferenced_nonNull_native();
    v27 = v3;
    if ((result & 1) == 0)
    {
      result = sub_10003491C(0, v22[2] + 1, 1, v22);
      v22 = result;
    }

    v29 = v22[2];
    v28 = v22[3];
    if (v29 >= v28 >> 1)
    {
      result = sub_10003491C((v28 > 1), v29 + 1, 1, v22);
      v22 = result;
    }

    v21 = v24 + 1;
    v22[2] = v29 + 1;
    v30 = &v22[2 * v29];
    v30[4] = v32;
    v30[5] = v26;
    v3 = v27;
    v20 = v33;
  }

  while (v24 != 3);
LABEL_34:
  sub_10002849C(&qword_100979948, &qword_1007C0720);
  swift_arrayDestroy();
  if (v22[2])
  {
    v31 = v22[4];

    v8 = *&v31[OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_wrapperViewController];
  }

  else
  {

    if (v13)
    {

      return v13;
    }
  }

  return v8;
}

unint64_t sub_100624370(void *a1)
{
  v1 = sub_100623FBC(a1);
  if (!v1)
  {
LABEL_12:

    return a1;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_100065AF0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_4:
  v6 = __OFSUB__(v5, 1);
  result = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v4 + 8 * result + 32);
LABEL_9:
    v9 = v8;

    return v9;
  }

  __break(1u);
  return result;
}

void sub_100624488(uint64_t a1, int a2, char a3, char a4)
{
  v5 = v4;
  v47 = a2;
  v9 = sub_10002849C(&qword_1009918B0, &unk_1007DA8B0);
  __chkstk_darwin(v9 - 8);
  v49 = &v46 - v10;
  v11 = type metadata accessor for AttributedString();
  v12 = *(v11 - 1);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = *&v5[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel];
  v48 = a1;
  if (a3)
  {
    ReviewSummary.attributedBodyWithTitle.getter();
    if (a4)
    {
      v19 = [v5 traitCollection];
      v20 = UITraitCollection.isSizeClassRegular.getter();

      goto LABEL_7;
    }
  }

  else
  {
    ReviewSummary.attributedBodyWithoutTitle.getter();
    v21 = [v5 traitCollection];
    v22 = sub_1006A1914(v14, 0, v21);

    (*(v12 + 8))(v14, v11);
    v23 = [v5 traitCollection];
    v24 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v22];
    v46 = [v22 length];
    v17 = swift_allocObject();
    *(v17 + 2) = 0;
    *(v17 + 3) = v23;
    *(v17 + 4) = v24;
    v17[40] = 1;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_10010279C;
    *(v25 + 24) = v17;
    v54 = sub_1001027AC;
    v55 = v25;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_1006606C4;
    v53 = &unk_1008CC178;
    v26 = _Block_copy(&aBlock);
    v12 = v55;
    v27 = v23;
    v11 = v24;

    [v22 enumerateAttributesInRange:0 options:v46 usingBlock:{0x100000, v26}];

    _Block_release(v26);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if ((v22 & 1) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v20 = 0;
LABEL_7:
  v28 = [v5 traitCollection];
  v29 = sub_1006A1914(v17, v20 & 1, v28);

  (*(v12 + 8))(v17, v11);
  v30 = [v5 traitCollection];
  v31 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v29];
  v46 = [v29 length];
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = v30;
  *(v32 + 32) = v31;
  *(v32 + 40) = 1;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_100126854;
  *(v33 + 24) = v32;
  v54 = sub_100126848;
  v55 = v33;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_1006606C4;
  v53 = &unk_1008CC1F0;
  v34 = _Block_copy(&aBlock);
  v35 = v30;
  v11 = v31;

  [v29 enumerateAttributesInRange:0 options:v46 usingBlock:{0x100000, v34}];

  _Block_release(v34);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
    return;
  }

LABEL_8:
  sub_10059FCD8(v11);
  v36 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  v37 = *(v18 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed);
  v38 = v47;
  *(v18 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed) = v47 & 1;
  if (v38)
  {
    v39 = *(v18 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines);
  }

  else
  {
    v39 = 0;
  }

  [*(v18 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setNumberOfLines:v39];
  if (v37 != *(v18 + v36))
  {
    sub_1005A0320();
  }

  v40 = ReviewSummary.subtitle.getter();
  v41 = &v5[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitle];
  *v41 = v40;
  v41[1] = v42;

  sub_1006A0EE4();
  *&v5[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleArtwork] = ReviewSummary.subtitleArtwork.getter();

  sub_1006A0EE4();

  v43 = v49;
  ReviewSummary.subtitleArtworkAlignment.getter();
  v44 = type metadata accessor for ReviewSummary.SubtitleArtworkAlignment();
  (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  v45 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleArtworkAlignment;
  swift_beginAccess();
  sub_100624B74(v43, &v5[v45]);
  swift_endAccess();
  sub_1006A0EE4();
  sub_100624BE4(v43);
  [v5 setNeedsLayout];
}

uint64_t sub_100624B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009918B0, &unk_1007DA8B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100624BE4(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009918B0, &unk_1007DA8B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100624C54(char *a1, int *a2)
{
  v60 = sub_10002849C(&qword_100975F10, &unk_1007CE130);
  __chkstk_darwin(v60);
  v61 = &v53 - v5;
  v6 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v6 - 8);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v53 - v9;
  __chkstk_darwin(v10);
  v59 = &v53 - v11;
  v12 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v12 - 8);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = &v53 - v15;
  __chkstk_darwin(v16);
  v63 = &v53 - v17;
  v18 = type metadata accessor for Shelf.ContentType();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v54 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v24 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v53 - v26;
  v55 = v2;
  v64 = sub_10026CF10(a1, a2);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v28 = *(v25 + 8);
  v28(v27, v24);
  v29 = v19;
  v30 = (*(v19 + 88))(v23, v18);
  if (v30 == enum case for Shelf.ContentType.productRatings(_:))
  {
    v32 = v57;
    v31 = v58;
    ShelfLayoutContext.surroundingShelves.getter();
    sub_10002B894(v32, &unk_10098FFB0, qword_1007B3890);
    v33 = v59;
    sub_100094E74(v31, v59);
    v34 = (*(v25 + 48))(v33, 1, v24);
    v58 = a1;
    if (v34 == 1)
    {
      sub_10002B894(v33, &unk_10098FFB0, qword_1007B3890);
      v35 = 1;
      v36 = v29;
      v37 = v63;
    }

    else
    {
      swift_getKeyPath();
      v37 = v63;
      ReadOnlyLens.subscript.getter();

      v28(v33, v24);
      v35 = 0;
      v36 = v29;
    }

    v38 = v62;
    v39 = *(v36 + 56);
    v39(v37, v35, 1, v18);
    (*(v36 + 104))(v38, enum case for Shelf.ContentType.reviewSummary(_:), v18);
    v39(v38, 0, 1, v18);
    v40 = v61;
    v41 = *(v60 + 48);
    sub_100094EE4(v37, v61);
    sub_100094EE4(v38, v40 + v41);
    v42 = *(v36 + 48);
    if (v42(v40, 1, v18) == 1)
    {
      sub_10002B894(v38, &unk_100992460, &qword_1007B6BF0);
      sub_10002B894(v37, &unk_100992460, &qword_1007B6BF0);
      if (v42(v40 + v41, 1, v18) == 1)
      {
        sub_10002B894(v40, &unk_100992460, &qword_1007B6BF0);
LABEL_17:
        v43 = 28.0;
        v44 = 12.0;
        v45 = v58;
        v46 = 5;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v47 = v56;
    sub_100094EE4(v40, v56);
    if (v42(v40 + v41, 1, v18) == 1)
    {
      sub_10002B894(v62, &unk_100992460, &qword_1007B6BF0);
      sub_10002B894(v63, &unk_100992460, &qword_1007B6BF0);
      (*(v36 + 8))(v47, v18);
LABEL_14:
      sub_10002B894(v40, &qword_100975F10, &unk_1007CE130);
      return v64;
    }

    v48 = v40 + v41;
    v49 = v54;
    (*(v36 + 32))(v54, v48, v18);
    sub_1001D74CC();
    v50 = dispatch thunk of static Equatable.== infix(_:_:)();
    v51 = *(v36 + 8);
    v51(v49, v18);
    sub_10002B894(v62, &unk_100992460, &qword_1007B6BF0);
    sub_10002B894(v63, &unk_100992460, &qword_1007B6BF0);
    v51(v47, v18);
    sub_10002B894(v40, &unk_100992460, &qword_1007B6BF0);
    if (v50)
    {
      goto LABEL_17;
    }
  }

  else if (v30 == enum case for Shelf.ContentType.productReview(_:))
  {
    sub_1006253A0(&v64, a1);
  }

  else
  {
    if (v30 == enum case for Shelf.ContentType.productReviewAction(_:))
    {
      v43 = -24.0;
      v44 = -16.0;
      v45 = a1;
      v46 = 1;
LABEL_18:
      sub_100626450(&v64, v43, v44, v45, v46);
      return v64;
    }

    (*(v19 + 8))(v23, v18);
  }

  return v64;
}

void sub_1006253A0(unint64_t *a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = ReviewsDiffablePagePresenter.selectedSortOption.getter();

    if (v5)
    {
      v6 = ReviewsPage.SortOption.selectedActionTitle.getter();
      Strong = v7;
    }

    else
    {
      v6 = 0;
      Strong = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  v8 = sub_1005B2950(a2, v6, Strong);

  static UICollectionReusableView.elementKind.getter();
  v9 = String._bridgeToObjectiveC()();

  v39 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v8 elementKind:v9 alignment:1];

  v10 = *a1;
  v37 = *a1 >> 62;
  v38 = a1;
  if (v37)
  {
    goto LABEL_48;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  while (v11 != v12)
  {
    if (v13)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v14 = *(v10 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      v11 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_8;
    }

    v16 = [v14 elementKind];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
    {

LABEL_26:
      if (!v37)
      {
        v23 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = v39;
        if (v23)
        {
          goto LABEL_28;
        }

LABEL_45:

        *v38 = _swiftEmptyArrayStorage;
        return;
      }

      v23 = _CocoaArrayWrapper.endIndex.getter();
      v24 = v39;
      if (!v23)
      {
        goto LABEL_45;
      }

LABEL_28:
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v23 & 0x8000000000000000) == 0)
      {
        v25 = 0;
        do
        {
          if (v13)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v29 = *(v10 + 8 * v25 + 32);
          }

          v30 = v29;
          v31 = [v29 elementKind];
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;

          if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
          {

            v27 = v24;
          }

          else
          {
            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v26)
            {
              v27 = v24;
            }

            else
            {
              v27 = v30;
            }
          }

          ++v25;
          v28 = v27;

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v23 != v25);
        goto LABEL_45;
      }

      __break(1u);
      goto LABEL_50;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v12;
    if (v22)
    {
      goto LABEL_26;
    }
  }

  v39 = v39;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_22;
  }

LABEL_50:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_22:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

double sub_1006257DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = a3;
  v9 = type metadata accessor for ShelfLayoutContext();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView(0);
  if (static UICollectionReusableView.elementKind.getter() == a1 && v13 == a2)
  {

LABEL_5:
    a5[3] = sub_10002849C(&qword_1009751D0, qword_1007B7350);
    a5[4] = sub_10022AA64(&qword_10098FFA0, &qword_1009751D0, qword_1007B7350);
    sub_1000056E0(a5);

    static UICollectionReusableView.defaultReuseIdentifier.getter();
LABEL_6:
    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
    return result;
  }

  v24 = v10;
  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_5;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  if (static UICollectionReusableView.elementKind.getter() == a1 && v16 == a2)
  {

LABEL_11:
    a5[3] = sub_10002849C(&qword_100987A70, &qword_1007D0830);
    a5[4] = sub_10022AA64(&unk_10098FF90, &qword_100987A70, &qword_1007D0830);
    v23[2] = sub_1000056E0(a5);

    v23[1] = static UICollectionReusableView.defaultReuseIdentifier.getter();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = v24;
    (*(v24 + 16))(v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v9);
    v20 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    (*(v19 + 32))(v21 + v20, v12, v9);
    goto LABEL_6;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_11;
  }

  v22 = v25;

  return sub_100268C44(a1, a2, v22, a4, a5);
}

uint64_t sub_100625B2C(uint64_t a1)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ComponentSeparator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_100503F40();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

double sub_100625D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_weakLoadStrong() && (v8 = ReviewsDiffablePagePresenter.selectedSortOption.getter(), , v8))
    {
      v9 = ReviewsPage.SortOption.selectedActionTitle.getter();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    if (swift_weakLoadStrong())
    {
      v12.super.super.isa = sub_100625E54().super.super.isa;
    }

    else
    {
      v12.super.super.isa = 0;
    }

    sub_1005B1308(a6, v9, v11, v12.super.super.isa);
  }

  return result;
}

UIMenu sub_100625E54()
{
  v0 = ReviewsDiffablePagePresenter.sortActions.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_36:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        v5 = v4;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v5 >= *(v2 + 16))
            {
              goto LABEL_35;
            }

            v6 = *(v1 + 8 * v5 + 32);

            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }
          }

          Action.title.getter();
          if (v7)
          {
            break;
          }

          ++v5;
          if (v4 == v3)
          {
            goto LABEL_37;
          }
        }

        Action.id.getter();
        v8 = swift_dynamicCast();
        v9 = v25;
        if (!v8)
        {
          v9 = 0;
        }

        v23 = v9;
        if (v8)
        {
          v10 = v26;
        }

        else
        {
          v10 = 0;
        }

        if (ReviewsDiffablePagePresenter.selectedSortOption.getter())
        {
          v22 = ReviewsPage.SortOption.id.getter();
          v24 = v11;

          if (v10)
          {
            if (v24)
            {
              if (v23 == v22 && v10 == v24)
              {
              }

              else
              {
                _stringCompareWithSmolCheck(_:_:expecting:)();
              }

              goto LABEL_30;
            }

LABEL_28:

            goto LABEL_30;
          }

          if (v24)
          {
            goto LABEL_28;
          }
        }

        else if (v10)
        {
          goto LABEL_28;
        }

LABEL_30:
        sub_100005744(0, &qword_10097CD40, UIAction_ptr);
        v12 = swift_allocObject();
        swift_weakInit();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = v6;
        v21._rawValue = 0;
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      while (v4 != v3);
    }
  }

LABEL_37:

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_39;
    }

LABEL_50:

    return 0;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

LABEL_39:
  v14 = ReviewsDiffablePagePresenter.sortMenuTitle.getter();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_100005744(0, &qword_1009818C0, UIMenuElement_ptr);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100005744(0, &qword_1009818C0, UIMenuElement_ptr);
    preferredElementSize = _swiftEmptyArrayStorage;
  }

  sub_100005744(0, &qword_10097AAF0, UIMenu_ptr);
  v19._countAndFlagsBits = v16;
  v19._object = v17;
  v27.value.super.isa = 0;
  v27.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v19, 0, v27, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v21);
}

uint64_t sub_100626290()
{

  sub_10001F64C(v0 + 24);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

double sub_1006262FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for ShelfLayoutContext() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_100625D4C(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_100626398(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6[3] = sub_100005744(0, &qword_10097CD40, UIAction_ptr);
    v6[0] = a1;
    v5 = a1;
    ReviewsDiffablePagePresenter.perform(action:sender:)();

    return sub_10002B894(v6, &unk_1009711D0, &unk_1007B1A10);
  }

  return result;
}

uint64_t sub_100626450(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  v29 = a5;
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v11 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v27 - v12;
  v31 = a3;
  v32 = a2;
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  Conditional<>.init(regularValue:compactValue:)();
  v14 = objc_opt_self();
  v15 = [v14 fractionalWidthDimension:1.0];
  v16 = ShelfLayoutContext.traitCollection.getter();
  static ComponentSeparator.thickness(compatibleWith:)();
  v18 = v17;

  v19 = [v14 absoluteDimension:v18];
  v20 = [objc_opt_self() sizeWithWidthDimension:v15 heightDimension:v19];

  type metadata accessor for SeparatorSupplementaryView(0);
  static UICollectionReusableView.elementKind.getter();
  ShelfLayoutContext.traitEnvironment.getter();
  static Dimensions.defaultRoundingRule.getter();
  Conditional<>.value(in:rounded:)();
  v22 = v21;
  swift_unknownObjectRelease();
  v23 = v28;
  (*(v8 + 8))(v10, v7);
  v24 = String._bridgeToObjectiveC()();

  v25 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v20 elementKind:v24 alignment:v29 absoluteOffset:{0.0, v22}];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return (*(v11 + 8))(v13, v30);
}

void sub_100626788(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10062B4C8(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v8 = v7;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void sub_100626914()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButtonPresenter);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v3 = *(v1 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v3)
    {
      [v3 invalidate];
      v4 = *(v1 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v1 + v2) = 0;
  }
}

id sub_1006269C4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v1 setNeedsLayout];
  }

  v4 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_titleLabel];
  v5 = [v4 text];
  if (v5)
  {

    [v4 setText:0];
    [v1 setNeedsLayout];
  }

  sub_100626BD8(0, 0);
  v6 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView];
  v17.value.super.isa = 0;
  v17.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v17, v7);
  v8 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView];
  if (v8)
  {
    [v8 setHidden:1];
  }

  v9 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView];
  if (v9)
  {
    [v9 setHidden:1];
  }

  v10 = &v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction];
  v11 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction];
  v12 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction + 8];
  *v10 = 0;
  *(v10 + 1) = 0;
  sub_10001F63C(v11, v12);
  sub_10062B374();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [*&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:v6];
    [v1 setNeedsLayout];
  }

  sub_10062735C(0);
  v16[0] = 0x3FF0000000000000;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = 0x3FF0000000000000;
  v16[4] = 0;
  v16[5] = 0;
  [v1 setTransform:v16];
  [v1 setAlpha:1.0];
  return [v1 setHidden:0];
}

void sub_100626BD8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v48 - v11;
  v13 = OBJC_IVAR____TtC8AppStore16AppEventCardView_subtitleLabel;
  v14 = *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_subtitleLabel];
  if (!v14 || (v15 = [v14 text]) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  v49 = v13;
  v16 = v6;
  v17 = a1;
  v18 = v15;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (!a2)
  {

    v6 = v16;
    v13 = v49;
    v24 = *&v2[v49];
    if (v24)
    {
      goto LABEL_31;
    }

    goto LABEL_12;
  }

  if (v19 != v17 || v21 != a2)
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v16;
    v13 = v49;
    if (v23)
    {
      goto LABEL_24;
    }

LABEL_11:
    v24 = *&v2[v13];
    if (v24)
    {
      goto LABEL_31;
    }

LABEL_12:
    v25 = v2;
    if (qword_10096E3B0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for FontUseCase();
    v27 = sub_1000056A8(v26, qword_1009D1A90);
    v28 = *(v26 - 8);
    (*(v28 + 16))(v12, v27, v26);
    (*(v28 + 56))(v12, 0, 1, v26);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v29 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
    v30 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
    v2 = v25;
    v31 = *&v25[v13];
    *&v25[v13] = v30;

    v32 = *&v25[v13];
    if (v32)
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v33 = v32;
      v2 = v25;
      v34 = static UIColor.secondaryText.getter();
      [v33 setTextColor:v34];
    }

    v35 = [v2 traitCollection];
    v36 = [v35 preferredContentSizeCategory];
    v37 = static UIContentSizeCategory.>= infix(_:_:)();

    v38 = *&v2[v13];
    if (v37)
    {
      if (v38)
      {
        [v38 setNumberOfLines:0];
        v39 = *&v2[v13];
        if (v39)
        {
          v40 = [v39 layer];
          [v40 setCompositingFilter:0];

          if (*&v2[v13])
          {
            v41 = &OBJC_IVAR____TtC8AppStore16AppEventCardView_contentView;
            goto LABEL_30;
          }
        }
      }

      __break(1u);
    }

    else if (v38)
    {
      [v38 setNumberOfLines:2];
      v42 = *&v2[v13];
      if (v42)
      {
        v43 = [v42 layer];
        v41 = &OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView;
        v44 = [*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] traitCollection];
        [v44 userInterfaceStyle];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = String._bridgeToObjectiveC()();

        [v43 setCompositingFilter:v45];

        if (*&v2[v13])
        {
LABEL_30:
          [*&v2[*v41] addSubview:?];
          v24 = *&v2[v13];
          if (!v24)
          {

LABEL_35:
            [v2 setNeedsLayout];
            return;
          }

LABEL_31:
          v46 = v24;
          if (a2)
          {
            v47 = String._bridgeToObjectiveC()();
          }

          else
          {
            v47 = 0;
          }

          [v46 setText:v47];

          goto LABEL_35;
        }
      }
    }

    __break(1u);
    return;
  }

LABEL_24:
}

id sub_10062715C()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_shadowView];
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  [v1 setHidden:v3 == 2];
  v4 = [v0 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  LOBYTE(v3) = static UIContentSizeCategory.>= infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    [*&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] overrideUserInterfaceStyle];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();

    v7 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_subtitleLabel];
    if (v7)
    {
      v8 = [v7 layer];
      [v8 setCompositingFilter:v6];
    }

    v9 = [*&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel] layer];
    [v9 setCompositingFilter:v6];
  }

  if (v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_includeBorderInDarkMode] == 1)
  {
    v10 = [v0 traitCollection];
    v11 = [v10 userInterfaceStyle];

    v12 = v11 != 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_borderView];

  return [v13 setHidden:v12];
}

void sub_10062735C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButtonPresenter);
  *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButtonPresenter) = a1;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v4 = *(v2 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v4)
    {
      [v4 invalidate];
      v5 = *(v2 + v3);
    }

    else
    {
      v5 = 0;
    }

    *(v2 + v3) = 0;
  }
}

uint64_t sub_1006273F0()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009D3028);
  sub_1000056A8(v0, qword_1009D3028);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100627554(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmallLockupLayout.Metrics.artworkSize.setter();
  v46 = a1;
  SmallLockupLayout.Metrics.artworkMargin.setter();
  if (qword_10096DD98 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D0860);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = type metadata accessor for StaticDimension();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_1000056E0(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  SmallLockupLayout.Metrics.headingSpace.setter();
  if (qword_10096DDA0 != -1)
  {
    swift_once();
  }

  v42 = sub_1000056A8(v6, qword_1009D0878);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v54);
  v44(v17, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v49(v5, v2);
  SmallLockupLayout.Metrics.titleRegularSpace.setter();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v54);
  v21 = v44;
  v44(v20, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22 = v49;
  v49(v5, v2);
  SmallLockupLayout.Metrics.titleMediumSpace.setter();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_1000056E0(v54);
  v21(v26, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22(v5, v2);
  SmallLockupLayout.Metrics.titleShortSpace.setter();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_1000056E0(v54);
  v21(v28, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22(v5, v2);
  SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
  if (qword_10096DDB0 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_1000056A8(v45, qword_1009D08A8);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v54);
  v21(v32, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v49(v5, v2);
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  if (qword_10096DDA8 != -1)
  {
    swift_once();
  }

  v33 = sub_1000056A8(v29, qword_1009D0890);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_1000056E0(v54);
  v37 = v44;
  v44(v36, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v38 = v49;
  v49(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  SmallLockupLayout.Metrics.numberOfLines.setter();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(v54);
  v37(v39, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v38(v5, v2);
  return SmallLockupLayout.Metrics.subtitleSpace.setter();
}

uint64_t sub_100627DA8()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009D3040);
  sub_1000056A8(v0, qword_1009D3040);
  if (qword_10096EB88 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3028);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100627F0C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = type metadata accessor for AspectRatio();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_100005644(v6, qword_1009D3058);
  v28 = v6;
  v31 = sub_1000056A8(v6, qword_1009D3058);
  v56 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  *&v55 = 0x4030000000000000;
  v29 = v5;
  AspectRatio.init(_:_:)();
  v53 = &type metadata for Double;
  v54 = &protocol witness table for Double;
  *&v52 = 0x4024000000000000;
  if (qword_10096E3A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for FontUseCase();
  v8 = sub_1000056A8(v7, qword_1009D1A60);
  v38 = *(*(v7 - 8) + 16);
  v38(v3, v8, v7);
  v9 = enum case for FontSource.useCase(_:);
  v35 = v1[13];
  v35(v3, enum case for FontSource.useCase(_:), v0);
  v34 = type metadata accessor for StaticDimension();
  v50 = v34;
  v51 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v49);
  v47 = v0;
  v48 = &protocol witness table for FontSource;
  v10 = sub_1000056E0(&v46);
  v11 = v1[2];
  v37 = v1 + 2;
  v33 = v11;
  v11(v10, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v13 = v1[1];
  v12 = v1 + 1;
  v36 = v13;
  v13(v3, v0);
  if (qword_10096E3A8 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v7, qword_1009D1A78);
  v38(v3, v14, v7);
  v35(v3, v9, v0);
  v47 = v34;
  v48 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v46);
  v44 = v0;
  v45 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v43);
  v33(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v36(v3, v0);
  v27 = v12;
  if (qword_10096E3B0 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v7, qword_1009D1A90);
  v38(v3, v26, v7);
  v25 = v9;
  v16 = v35;
  v35(v3, v9, v0);
  v17 = v34;
  v44 = v34;
  v45 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v43);
  v41 = v0;
  v42 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(&v40);
  v19 = v33;
  v33(v18, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v36(v3, v0);
  v38(v3, v26, v7);
  v16(v3, v25, v0);
  v41 = v17;
  v42 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v40);
  v39[3] = v0;
  v39[4] = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v39);
  v19(v20, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v36(v3, v0);
  v21 = v31;
  sub_100005A38(&v55, v31);
  v22 = v28;
  (*(v30 + 32))(v21 + v28[5], v29, v32);
  sub_100005A38(&v52, v21 + v22[6]);
  sub_100005A38(&v49, v21 + v22[7]);
  sub_100005A38(&v46, v21 + v22[8]);
  sub_100005A38(&v43, v21 + v22[9]);
  return sub_100005A38(&v40, v21 + v22[10]);
}

UIColor sub_100628504()
{
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v0 = objc_opt_self();
  result.super.isa = UIColor.init(light:dark:)([v0 whiteColor], objc_msgSend(v0, "secondarySystemBackgroundColor")).super.isa;
  qword_1009D3070 = result.super.isa;
  return result;
}

id sub_100628598()
{
  v1 = v0;
  v2 = type metadata accessor for SmallLockupLayout.Metrics();
  v78 = *(v2 - 8);
  v79 = v2;
  __chkstk_darwin(v2);
  v77 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Separator.Position();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Separator();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 traitCollection];
  v14 = [v13 preferredContentSizeCategory];
  v15 = static UIContentSizeCategory.>= infix(_:_:)();

  v16 = OBJC_IVAR____TtC8AppStore16AppEventCardView_gradientBlurView;
  v17 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_gradientBlurView];
  if (v15)
  {
    v73 = v5;
    v74 = v12;
    v75 = v9;
    v76 = v8;
    if (v17)
    {
      [v17 setHidden:1];
    }

    v18 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_titleLabel];
    [v18 setNumberOfLines:{0, v73}];
    v19 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_contentView];
    [v19 addSubview:v18];
    v20 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel];
    [v20 setNumberOfLines:0];
    v21 = [v20 layer];
    [v21 setCompositingFilter:0];

    [v19 addSubview:v20];
    v22 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_subtitleLabel];
    if (v22)
    {
      v23 = v22;
      [v23 setNumberOfLines:0];
      v24 = [v23 layer];
      [v24 setCompositingFilter:0];

      [v19 addSubview:v23];
    }

    v25 = OBJC_IVAR____TtC8AppStore16AppEventCardView_separatorView;
    v26 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_separatorView];
    if (v26 || (((*(v73 + 104))(v7, enum case for Separator.Position.top(_:), v4), v80[3] = type metadata accessor for ZeroDimension(), v80[4] = &protocol witness table for ZeroDimension, sub_1000056E0(v80), static ZeroDimension.zero.getter(), v27 = v74, Separator.init(position:leadingInset:trailingInset:verticalOutset:)(), v28 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}], v29 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator, swift_beginAccess(), v30 = *(v75 + 40), v31 = v28, v30(&v28[v29], v27, v76), swift_endAccess(), v31, (v32 = *&v1[v25]) == 0) ? (v33 = 0) : (objc_msgSend(v32, "removeFromSuperview"), v33 = *&v1[v25]), *&v1[v25] = v31, v54 = v31, v33, objc_msgSend(v19, "addSubview:", v54), v54, objc_msgSend(v1, "setNeedsLayout"), v54, (v26 = *&v1[v25]) != 0))
    {
      [v26 setHidden:0];
    }

    v55 = OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView;
    v56 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView];
    if (v56)
    {
      v57 = qword_10096EB90;
      v58 = v56;
      if (v57 != -1)
      {
        swift_once();
      }

      v59 = v79;
      v60 = sub_1000056A8(v79, qword_1009D3040);
      v62 = v77;
      v61 = v78;
      (*(v78 + 16))(v77, v60, v59);
      v63 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v61 + 24))(&v58[v63], v62, v59);
      swift_endAccess();
      [v58 setNeedsLayout];

      (*(v61 + 8))(v62, v59);
      v64 = *&v1[v55];
      if (v64)
      {
        [v64 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
      }
    }
  }

  else
  {
    if (v17)
    {
      goto LABEL_10;
    }

    v50 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
    v51 = sub_100251D00(0);
    v52 = *&v1[v16];
    if (v52)
    {
      [v52 removeFromSuperview];
      v53 = *&v1[v16];
    }

    else
    {
      v53 = 0;
    }

    *&v1[v16] = v51;
    v66 = v51;

    v67 = *&v1[v16];
    if (v67)
    {
      v68 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView];
      v69 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton];
      if (v69)
      {
        v70 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton];
      }

      else
      {
        v70 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_titleLabel];
        v69 = 0;
      }

      v71 = v69;
      [v68 insertSubview:v67 belowSubview:v70];
    }

    [v1 setNeedsLayout];

    v72 = *&v1[v16];
    if (v72)
    {
      [v72 setUserInteractionEnabled:0];
      v17 = *&v1[v16];
      if (v17)
      {
LABEL_10:
        [v17 setHidden:0];
      }
    }

    v34 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_titleLabel];
    [v34 setNumberOfLines:1];
    v35 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView];
    [v35 addSubview:v34];
    v36 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel];
    [v36 setNumberOfLines:1];
    [v35 addSubview:v36];
    v37 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_subtitleLabel];
    if (v37)
    {
      v38 = v37;
      [v38 setNumberOfLines:2];
      [v35 addSubview:v38];
    }

    v39 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_separatorView];
    if (v39)
    {
      [v39 setHidden:1];
    }

    v40 = OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView;
    v41 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView];
    if (v41)
    {
      v42 = qword_10096EB88;
      v43 = v41;
      if (v42 != -1)
      {
        swift_once();
      }

      v44 = v79;
      v45 = sub_1000056A8(v79, qword_1009D3028);
      v47 = v77;
      v46 = v78;
      (*(v78 + 16))(v77, v45, v44);
      v48 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v46 + 24))(&v43[v48], v47, v44);
      swift_endAccess();
      [v43 setNeedsLayout];

      (*(v46 + 8))(v47, v44);
      v49 = *&v1[v40];
      if (v49)
      {
        [v49 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
      }
    }

    sub_10062715C();
  }

  return [v1 setNeedsLayout];
}

double sub_100628E24(void *a1, void *a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [a2 preferredContentSizeCategory];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      sub_100628598();
    }
  }

  return result;
}

id sub_100628F40(void *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  result = [a2 userInterfaceStyle];
  if (v5 != result)
  {
    sub_10062715C();

    return [a1 setNeedsLayout];
  }

  return result;
}

id sub_100629040()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupTapGestureRecognizer];
  if (v2)
  {
    [v2 removeTarget:v0 action:0];
  }

  v3 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButtonPresenter];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v5 = *(v3 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v5)
    {
      [v5 invalidate];
      v5 = *(v3 + v4);
    }

    *(v3 + v4) = 0;
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

id sub_100629278()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView];
  if (v1)
  {
    v2 = qword_10096EBA0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    [v3 setBackgroundColor:qword_1009D3070];
    [*&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_contentView] addSubview:v3];
    v4 = [objc_allocWithZone(UITapGestureRecognizer) init];
    v5 = OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupTapGestureRecognizer;
    v6 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupTapGestureRecognizer];
    *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupTapGestureRecognizer] = v4;

    result = *&v0[v5];
    if (!result || ([result setDelegate:v0], (result = *&v0[v5]) == 0) || (result = objc_msgSend(result, "addTarget:action:", v0, "handleTapWithGestureRecognizer:"), !*&v0[v5]))
    {
      __break(1u);
      return result;
    }

    [v3 addGestureRecognizer:?];
    v8 = [v0 traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v10)
    {
      v11 = *&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_separatorView];
      if (v11)
      {
        v12 = v11;
        [v12 setHidden:0];
      }
    }
  }

  return [v0 setNeedsLayout];
}

id sub_100629440()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = type metadata accessor for SmallLockupLayout.Metrics();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView];
  if (v10)
  {
    v11 = v10;
    v12 = [v1 traitCollection];
    v13 = [v12 preferredContentSizeCategory];
    v14 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v14)
    {
      if (qword_10096EB90 != -1)
      {
        swift_once();
      }

      v15 = sub_1000056A8(v5, qword_1009D3040);
      (*(v6 + 16))(v9, v15, v5);
      v16 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v11[v16], v9, v5);
      swift_endAccess();
      v17 = 16.0;
    }

    else
    {
      if (qword_10096EB88 != -1)
      {
        swift_once();
      }

      v18 = sub_1000056A8(v5, qword_1009D3028);
      (*(v6 + 16))(v9, v18, v5);
      v19 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v11[v19], v9, v5);
      swift_endAccess();
      v17 = 4.0;
    }

    v20 = v11;
    [v20 setNeedsLayout];
    (*(v6 + 8))(v9, v5);
    [v20 setLayoutMargins:{v17, 0.0, v17, 0.0}];

    v21 = *&v20[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel];
    v22 = qword_10096DDA0;
    v23 = v20;
    v24 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for FontUseCase();
    v26 = sub_1000056A8(v25, qword_1009D0878);
    v27 = *(v25 - 8);
    v28 = *(v27 + 16);
    v28(v4, v26, v25);
    v29 = *(v27 + 56);
    v29(v4, 0, 1, v25);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    v30 = *&v23[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
    if (qword_10096DDA8 != -1)
    {
      swift_once();
    }

    v31 = sub_1000056A8(v25, qword_1009D0890);
    v28(v4, v31, v25);
    v29(v4, 0, 1, v25);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    v32 = qword_10096EBA0;
    v33 = v23;
    if (v32 != -1)
    {
      swift_once();
    }

    [v33 setBackgroundColor:qword_1009D3070];

    v34 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView];
    if (v34)
    {
      v35 = v34;
      [v35 addSubview:v33];
    }
  }

  return [v1 setNeedsLayout];
}

void (*sub_10062997C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore16AppEventCardView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1006299D0;
}

void sub_1006299D0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_10062B374();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_10062B374();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_100629AE8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventCardLayout(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v8);
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_100629FBC(v10);
  AppEventCardLayout.placeChildren(relativeTo:in:)(v1, v6, v12, v14, v16, v18);
  (*(v4 + 8))(v6, v3);
  v19 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_gradientBlurView];
  if (v19)
  {
    v20 = *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView];
    v21 = v19;
    [v20 frame];
    if (CGRectGetHeight(v49) > 0.0)
    {
      [v20 frame];
      Height = CGRectGetHeight(v50);
      [v20 frame];
      v23 = CGRectGetHeight(v51);
      [*&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel] frame];
      v24 = Height - (v23 - CGRectGetMinY(v52));
      v25 = (v24 + -50.0) / Height;
      v26 = (v24 + 30.0) / Height;
      v27 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY] = v25;
      v28 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView;
      v29 = [*&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v31 = v30;

      v32 = *&v21[v27];
      v33 = [*&v21[v28] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v34 = [*&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v35 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY] = v25;
      v36 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView;
      v37 = [*&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v39 = v38;

      v40 = *&v21[v35];
      v41 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v39, v40}];

      sub_100250FB4(v26);
      v42 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY] = v26;
      v43 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v45 = v44;

      v46 = *&v21[v42];
      v47 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v45, v46}];
    }

    sub_1001A9220(v10);
  }

  else
  {
    sub_1001A9220(v10);
  }
}

id sub_100629FBC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AppEventCardLayout.Metrics(0);
  __chkstk_darwin(v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EB98 != -1)
  {
    v59 = v4;
    swift_once();
    v4 = v59;
  }

  v7 = sub_1000056A8(v4, qword_1009D3058);
  v76 = v6;
  sub_100150A20(v7, v6);
  v8 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_shadowView);
  v103 = type metadata accessor for ShadowView();
  v104 = &protocol witness table for UIView;
  v82 = v8;
  *&v102 = v8;
  v9 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_contentView);
  v100 = type metadata accessor for RoundedCornerView();
  v101 = &protocol witness table for UIView;
  v98 = &protocol witness table for UIView;
  *&v99 = v9;
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_borderView);
  v97 = v100;
  v80 = v10;
  v81 = v9;
  *&v96 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView);
  v12 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v94 = v12;
  v95 = &protocol witness table for UIView;
  v79 = v11;
  *&v93 = v11;
  v13 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView);
  v91 = type metadata accessor for ArtworkView();
  v92 = &protocol witness table for UIView;
  v78 = v13;
  *&v90 = v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v72 = type metadata accessor for VideoView(0);
    v71 = &protocol witness table for UIView;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v77 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_gradientBlurView);
  if (v77)
  {
    v70 = type metadata accessor for MediaOverlayGradientBlurView();
    v69 = &protocol witness table for UIView;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v75 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton);
  if (v75)
  {
    v68 = type metadata accessor for NotifyMeButton();
    v67 = &protocol witness table for UIView;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v15 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel);
  v16 = type metadata accessor for DynamicTypeLabel();
  v17 = &protocol witness table for UILabel;
  v88 = v16;
  v89 = &protocol witness table for UILabel;
  v73 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_titleLabel);
  v74 = v15;
  v86 = &protocol witness table for UILabel;
  *&v87 = v15;
  v85 = v16;
  *&v84 = v73;
  v18 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_subtitleLabel);
  v19 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_separatorView);
  if (v19)
  {
    v65 = type metadata accessor for SeparatorView(0);
    v66 = &protocol witness table for UIView;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  v83 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView);
  v20 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView);
  if (v20)
  {
    v63 = type metadata accessor for SmallLockupView(0);
    v64 = &protocol witness table for UIView;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  if (v83)
  {
    v21 = v12;
  }

  else
  {
    v21 = 0;
  }

  if (v83)
  {
    v22 = &protocol witness table for UIView;
  }

  else
  {
    v22 = 0;
  }

  v61 = v22;
  v62 = v21;
  if (!v18)
  {
    v16 = 0;
    v17 = 0;
  }

  sub_100151060(v76, a1);
  v23 = type metadata accessor for AppEventCardLayout(0);
  sub_100005A38(&v102, a1 + v23[5]);
  sub_100005A38(&v99, a1 + v23[6]);
  sub_100005A38(&v96, a1 + v23[7]);
  sub_100005A38(&v93, a1 + v23[8]);
  sub_100005A38(&v90, a1 + v23[9]);
  v24 = (a1 + v23[10]);
  *v24 = Strong;
  v24[1] = 0;
  v25 = v71;
  v26 = v72;
  v24[2] = 0;
  v24[3] = v26;
  v24[4] = v25;
  v27 = (a1 + v23[11]);
  v28 = v77;
  *v27 = v77;
  v27[1] = 0;
  v29 = v69;
  v30 = v70;
  v27[2] = 0;
  v27[3] = v30;
  v27[4] = v29;
  v31 = (a1 + v23[12]);
  v32 = v75;
  *v31 = v75;
  v31[1] = 0;
  v33 = v67;
  v34 = v68;
  v31[2] = 0;
  v31[3] = v34;
  v31[4] = v33;
  sub_100005A38(&v87, a1 + v23[13]);
  sub_100005A38(&v84, a1 + v23[14]);
  v35 = (a1 + v23[15]);
  *v35 = v18;
  v35[1] = 0;
  v35[2] = 0;
  v35[3] = v16;
  v35[4] = v17;
  v36 = (a1 + v23[16]);
  *v36 = v19;
  v36[1] = 0;
  v38 = v65;
  v37 = v66;
  v36[2] = 0;
  v36[3] = v38;
  v36[4] = v37;
  v39 = (a1 + v23[17]);
  *v39 = v83;
  v39[1] = 0;
  v40 = v61;
  v41 = v62;
  v39[2] = 0;
  v39[3] = v41;
  v39[4] = v40;
  v42 = (a1 + v23[18]);
  *v42 = v20;
  v42[1] = 0;
  v44 = v63;
  v43 = v64;
  v42[2] = 0;
  v42[3] = v44;
  v42[4] = v43;
  v45 = v20;
  v46 = v82;
  v47 = v81;
  v48 = v80;
  v49 = v79;
  v50 = v78;
  v51 = v28;
  v52 = v32;
  v53 = v74;
  v54 = v73;
  v55 = v18;
  v56 = v19;
  v57 = v83;

  return v57;
}

void sub_10062A688()
{
  v1 = v0;
  v2 = type metadata accessor for AutomationSemantics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton;
  if (!*&v0[OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton])
  {
    v7 = [objc_allocWithZone(type metadata accessor for NotifyMeButton()) init];
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    sub_10003D444(v12);
    sub_10003D444(v13);
    UIView.setAutomationSemantics(_:)();
    (*(v3 + 8))(v5, v2);
    [v7 addTarget:v1 action:"notifyMeButtonTapped:" forControlEvents:64];
    v8 = v7[OBJC_IVAR____TtC8AppStore14NotifyMeButton_style];
    v7[OBJC_IVAR____TtC8AppStore14NotifyMeButton_style] = 0;
    if (v8)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        sub_1004ABCF0();
      }
    }

    else
    {
    }

    [*&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] addSubview:v7];
    v10 = *&v1[v6];
    *&v1[v6] = v7;
    v11 = v7;

    [v1 setNeedsLayout];
  }
}

uint64_t (*sub_10062A8CC(void *a1))()
{
  v2 = OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButtonPresenter;
  a1[2] = OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButtonPresenter;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_10062A924;
}

double sub_10062A924(void *a1, char a2)
{
  if (a2)
  {

    sub_10062735C(v2);
  }

  else
  {
    v4 = a1[1];
    v3 = a1[2];
    v5 = *(v4 + v3);
    *(v4 + v3) = *a1;
    if (!v5)
    {
      return result;
    }

    v6 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v7 = *(v5 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v5 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(v5 + v6) = 0;
  }

  return result;
}

id sub_10062A9CC(char a1, char a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton];
  if (v4)
  {
    v4[OBJC_IVAR____TtC8AppStore14NotifyMeButton_isActive] = a1 & 1;
    v6 = v4;
    sub_1004ACDC0();
    sub_1004ACEC4(a2 & 1);
  }

  return [v3 setNeedsLayout];
}

void sub_10062AA4C(char a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    sub_10062A688();
  }

  v5 = *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton];
  if (v5)
  {
    v6 = v5;
    v17 = v6;
    if (a2)
    {
      if ((a1 & 1) == 0)
      {
        if ([v6 isHidden])
        {
          [v17 setAlpha:0.0];
          [v17 setHidden:0];
        }
      }

      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v17;
      v9 = a1 & 1;
      *(v8 + 24) = a1 & 1;
      v22 = sub_100039BC4;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_100007A08;
      v21 = &unk_1008CC328;
      v10 = _Block_copy(&aBlock);
      v11 = v17;

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v9;
      *(v13 + 32) = v12;
      v22 = sub_10062B4B8;
      v23 = v13;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_100504C5C;
      v21 = &unk_1008CC3A0;
      v14 = _Block_copy(&aBlock);
      v15 = v11;

      [v7 animateWithDuration:v10 animations:v14 completion:0.3];

      _Block_release(v14);
      _Block_release(v10);
    }

    else
    {
      if (a1)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      [v6 setHidden:a1 & 1];
      [v17 setAlpha:v16];
      [v2 setNeedsLayout];
    }
  }
}

void sub_10062AD04(int a1, id a2, char a3, uint64_t a4)
{
  [a2 setHidden:a3 & 1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setNeedsLayout];
  }
}

uint64_t (*sub_10062AE9C(uint64_t **a1))()
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
  v2[4] = sub_10062997C(v2);
  return sub_1000B4CAC;
}

uint64_t (*sub_10062AF20(void *a1))()
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
  v2[4] = sub_10062A8CC(v2);
  return sub_1000C2700;
}

uint64_t sub_10062AF9C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10062B4C8(&unk_100990090, v1, type metadata accessor for AppEventCardView, &unk_1007DAA04);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_10062B010(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10062B4C8(&unk_100990090, v5, type metadata accessor for AppEventCardView, &unk_1007DAA04);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_10062B09C(uint64_t *a1))()
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

  v4 = v2;
  *a1 = v2;
  sub_10062B4C8(&unk_100990090, v3, type metadata accessor for AppEventCardView, &unk_1007DAA04);
  *(v4 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10062B158(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView);
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

id sub_10062B2CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView);
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v2 = OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupTapGestureRecognizer;
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupTapGestureRecognizer);
  if (v3)
  {
    [v3 removeTarget:v0 action:0];
    v4 = *(v0 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v2) = 0;

  result = *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_separatorView);
  if (result)
  {

    return [result setHidden:1];
  }

  return result;
}

void sub_10062B374()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10062B4C8(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v2 = [v8 superview];
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView);
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v5 = v4;
      v6 = static NSObject.== infix(_:_:)();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v7 = swift_unknownObjectWeakLoadStrong();
      if (!v7)
      {
        return;
      }

      v8 = v7;
      [v7 removeFromSuperview];
    }
  }
}

uint64_t sub_10062B4C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char *sub_10062B510()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  v91 = v2;
  v92 = v3;
  __chkstk_darwin(v2);
  v90 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v5 - 8);
  *&v94 = &v82 - v6;
  v93 = type metadata accessor for AutomationSemantics();
  v89 = *(v93 - 1);
  __chkstk_darwin(v93);
  v85 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DirectionalTextAlignment();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v82 - v13;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_gradientBlurView] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_separatorView] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupTapGestureRecognizer] = 0;
  v15 = &v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction];
  *v15 = 0;
  v15[1] = 0;
  v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_includeBorderInDarkMode] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButtonPresenter] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_shadowView] = [objc_allocWithZone(type metadata accessor for ShadowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for RoundedCornerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_contentView] = v16;
  v17 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] = v17;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_10096E3A8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D1A78);
  v20 = *(v18 - 8);
  v87 = *(v20 + 16);
  v87(v14, v19, v18);
  v86 = *(v20 + 56);
  (v86)(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v9 + 104);
  v84 = v9 + 104;
  v22(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v23 = type metadata accessor for DynamicTypeLabel();
  v24 = objc_allocWithZone(v23);
  v83 = v8;
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E3A0 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v18, qword_1009D1A60);
  v87(v14, v25, v18);
  (v86)(v14, 0, 1, v18);
  v22(v11, v21, v83);
  v26 = objc_allocWithZone(v23);
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v27 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC8AppStore16AppEventCardView_borderView] = v27;
  v100.receiver = v1;
  v100.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v29 = OBJC_IVAR____TtC8AppStore16AppEventCardView_contentView;
  v30 = *&v28[OBJC_IVAR____TtC8AppStore16AppEventCardView_contentView];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v31 = v28;
  v32 = v30;
  v33 = v85;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v96);
  sub_10003D444(&v98);
  UIView.setAutomationSemantics(_:)();

  v34 = *(v89 + 8);
  v35 = v93;
  v34(v33, v93);
  v89 = v29;
  v36 = *&v28[v29];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v37 = v36;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v96);
  sub_10003D444(&v98);
  UIView.setAutomationSemantics(_:)();

  v34(v33, v35);
  ObjCClassFromMetadata = OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView;
  v38 = *&v31[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v39 = v38;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v96);
  sub_10003D444(&v98);
  UIView.setAutomationSemantics(_:)();

  v34(v33, v35);
  v87 = OBJC_IVAR____TtC8AppStore16AppEventCardView_titleLabel;
  v40 = *&v31[OBJC_IVAR____TtC8AppStore16AppEventCardView_titleLabel];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v41 = v40;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v96);
  sub_10003D444(&v98);
  UIView.setAutomationSemantics(_:)();

  v34(v33, v35);
  v86 = OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel;
  v42 = *&v31[OBJC_IVAR____TtC8AppStore16AppEventCardView_kindLabel];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v43 = v42;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v96);
  sub_10003D444(&v98);
  UIView.setAutomationSemantics(_:)();

  v34(v33, v35);
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v31 setClipsToBounds:0];
  v44 = OBJC_IVAR____TtC8AppStore16AppEventCardView_shadowView;
  v45 = qword_10096DA88;
  v46 = *&v31[OBJC_IVAR____TtC8AppStore16AppEventCardView_shadowView];
  if (v45 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Shadow();
  v48 = sub_1000056A8(v47, qword_1009CFDF8);
  v49 = *(v47 - 8);
  v50 = v94;
  (*(v49 + 16))(v94, v48, v47);
  (*(v49 + 56))(v50, 0, 1, v47);
  dispatch thunk of ShadowView.shadow.setter();

  v51 = *&v31[v44];
  dispatch thunk of ShadowView.shouldAnimateBoundsChange.setter();

  v52 = *&v31[v44];
  v53 = v91;
  v54 = v92;
  v55 = *(v92 + 104);
  v56 = v90;
  LODWORD(v94) = enum case for CornerStyle.continuous(_:);
  v93 = v55;
  v55(v90);
  v57 = v52;
  dispatch thunk of ShadowView.setCorner(radius:style:)();

  v92 = *(v54 + 8);
  (v92)(v56, v53);
  v58 = *&v31[v44];
  v59 = [v31 traitCollection];
  v60 = [v59 userInterfaceStyle];

  [v58 setHidden:v60 == 2];
  [v31 addSubview:*&v31[v44]];
  v61 = v89;
  v62 = qword_10096EBA0;
  v63 = *&v28[v89];
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = qword_1009D3070;
  [v63 setBackgroundColor:qword_1009D3070];

  v65 = *&v28[v61];
  (v93)(v56, v94, v53);
  v66 = v65;
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();

  (v92)(v56, v53);
  [v31 addSubview:*&v28[v61]];
  v67 = OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView;
  [*&v28[v61] addSubview:*&v31[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView]];
  [*&v31[v67] addSubview:*(ObjCClassFromMetadata + v31)];
  v68 = *(v87 + v31);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v69 = v68;
  v70 = static UIColor.primaryText.getter();
  [v69 setTextColor:v70];

  v71 = *&v86[v31];
  v72 = static UIColor.secondaryText.getter();
  [v71 setTextColor:v72];

  v73 = OBJC_IVAR____TtC8AppStore16AppEventCardView_borderView;
  v74 = *&v31[OBJC_IVAR____TtC8AppStore16AppEventCardView_borderView];
  v75 = v64;
  dispatch thunk of RoundedCornerView.borderColor.setter();

  v76 = *&v31[v73];
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  [*&v31[v73] setUserInteractionEnabled:0];
  [*&v31[v73] setHidden:1];
  v77 = *&v31[v73];
  (v93)(v56, v94, v53);
  v78 = v77;
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();

  (v92)(v56, v53);
  [v31 addSubview:*&v31[v73]];
  sub_100628598();
  sub_10062715C();
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v79 = swift_allocObject();
  v94 = xmmword_1007B10D0;
  *(v79 + 16) = xmmword_1007B10D0;
  *(v79 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v79 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v80 = swift_allocObject();
  *(v80 + 16) = v94;
  *(v80 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v80 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v31;
}

void sub_10062C2F4()
{
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_gradientBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupTapGestureRecognizer) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_includeBorderInDarkMode) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButtonPresenter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL sub_10062C3E0(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction] != 0;
    }

    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v8 = v7;
    v9 = v2;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupViewTappedAction] != 0;
  }

  else
  {

    return 0;
  }
}

char *sub_10062C520(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon1;
  type metadata accessor for ArtworkView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v9] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v11 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon2;
  *&v4[v11] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon3;
  *&v4[v12] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon4;
  *&v4[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_iconCount] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for CollectionLockupArtwork();
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon1]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon2]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon3]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon4]];

  return v18;
}

uint64_t sub_10062C8C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_iconCount);
  switch(v2)
  {
    case 3:

      return sub_10062CC64(a1);
    case 2:

      return sub_10062C9E8(a1);
    case 1:
      type metadata accessor for ArtworkView();
      LayoutView.withMeasurements(representing:)();
      sub_10002A400(v4, v4[3]);
      Measurable.placeable.getter();
      return sub_100007000(v4);
    default:

      return sub_10062CFA8(a1);
  }
}

uint64_t sub_10062C9E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for DisjointStack();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  DisjointStack.init(with:)();
  v12[0] = *(v1 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon1);
  type metadata accessor for ArtworkView();
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v13, v14);
  Measurable.placeable.getter();
  DisjointStack.inserting(_:at:with:)();
  sub_100007000(v12);
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_100007000(v13);
  v12[0] = *(v1 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon2);
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v13, v14);
  Measurable.placeable.getter();
  a1[3] = v3;
  a1[4] = &protocol witness table for DisjointStack;
  sub_1000056E0(a1);
  DisjointStack.inserting(_:at:with:)();
  sub_100007000(v12);
  v10(v9, v3);
  return sub_100007000(v13);
}

uint64_t sub_10062CC64@<X0>(uint64_t *a1@<X8>)
{
  v16 = a1;
  v2 = type metadata accessor for DisjointStack();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  DisjointStack.init(with:)();
  v17[0] = *(v1 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon1);
  type metadata accessor for ArtworkView();
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v18, v19);
  Measurable.placeable.getter();
  DisjointStack.inserting(_:at:with:)();
  sub_100007000(v17);
  v12 = *(v3 + 8);
  v12(v5, v2);
  sub_100007000(v18);
  v17[0] = *(v1 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon2);
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v18, v19);
  Measurable.placeable.getter();
  DisjointStack.inserting(_:at:with:)();
  sub_100007000(v17);
  v12(v8, v2);
  sub_100007000(v18);
  v17[0] = *(v1 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon3);
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v18, v19);
  Measurable.placeable.getter();
  v13 = v16;
  v16[3] = v2;
  v13[4] = &protocol witness table for DisjointStack;
  sub_1000056E0(v13);
  DisjointStack.inserting(_:at:with:)();
  sub_100007000(v17);
  v12(v11, v2);
  return sub_100007000(v18);
}

uint64_t sub_10062CFA8@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v3 = type metadata accessor for HorizontalStack();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v26 = type metadata accessor for VerticalStack();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v27 = &v23 - v13;
  VerticalStack.init(with:)();
  HorizontalStack.init(with:)();
  v14 = *(v2 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon1);
  v23 = v2;
  v30[0] = v14;
  type metadata accessor for ArtworkView();
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v33, v34);
  Measurable.placeable.getter();
  HorizontalStack.adding(_:with:)();
  sub_100007000(v30);
  v15 = *(v4 + 8);
  v15(v6, v3);
  sub_100007000(v33);
  v33[0] = *(v2 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon2);
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v30, v31);
  Measurable.placeable.getter();
  v34 = v3;
  v35 = &protocol witness table for HorizontalStack;
  sub_1000056E0(v33);
  HorizontalStack.adding(_:with:)();
  sub_100007000(v29);
  v15(v9, v3);
  sub_100007000(v30);
  VerticalStack.adding(_:with:)();
  v16 = *(v28 + 8);
  v28 += 8;
  v24 = v16;
  v16(v11, v26);
  sub_100007000(v33);
  HorizontalStack.init(with:)();
  v17 = v23;
  v30[0] = *(v23 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon3);
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v33, v34);
  Measurable.placeable.getter();
  HorizontalStack.adding(_:with:)();
  sub_100007000(v30);
  v15(v6, v3);
  sub_100007000(v33);
  v30[0] = *(v17 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon4);
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v33, v34);
  Measurable.placeable.getter();
  v31 = v3;
  v32 = &protocol witness table for HorizontalStack;
  sub_1000056E0(v30);
  HorizontalStack.adding(_:with:)();
  sub_100007000(v29);
  v15(v9, v3);
  sub_100007000(v33);
  v18 = v26;
  v34 = v26;
  v35 = &protocol witness table for VerticalStack;
  sub_1000056E0(v33);
  v19 = v27;
  VerticalStack.adding(_:with:)();
  v24(v19, v18);
  sub_100007000(v30);
  static Center.Axis.neither.getter();
  v20 = type metadata accessor for Center();
  v21 = v25;
  v25[3] = v20;
  v21[4] = &protocol witness table for Center;
  sub_1000056E0(v21);
  return Center.init(_:filling:)();
}

void sub_10062D4DC(unint64_t a1, char *a2)
{
  v26 = a2;
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  v25 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Artwork.Crop();
  v6 = *(v24 - 8);
  *&v7 = __chkstk_darwin(v24).n128_u64[0];
  v23 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 setNeedsLayout];
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = 0;
    v19 = &v2[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon4];
    v21 = &v2[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon3];
    v18 = &v2[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon2];
    v20 = &v2[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon1];
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = a1 & 0xC000000000000001;
    v22 = (v6 + 8);
    while (v28)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      if (v10 > 1)
      {
        v12 = v21;
        if (v10 == 2 || (v12 = v19, v10 == 3))
        {
LABEL_15:
          v13 = *v12;
          v14 = v23;
          Artwork.crop.getter();
          v15 = Artwork.Crop.preferredContentMode.getter();
          (*v22)(v14, v24);
          Artwork.config(_:mode:prefersLayeredImage:)();
          Artwork.style.getter();
          ArtworkView.style.setter();
          v16 = v13;
          [v16 setContentMode:Artwork.contentMode.getter()];
          ArtworkLoaderConfig.size.getter();
          ArtworkView.imageSize.setter();
          if (!Artwork.backgroundColor.getter())
          {
            sub_100028BB8();
            static UIColor.placeholderBackground.getter();
          }

          ArtworkView.backgroundColor.setter();
          [v16 setContentMode:v15];

          v6 = type metadata accessor for ArtworkView();
          sub_10009A098();
          v2 = v26;
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
        }
      }

      else
      {
        v12 = v20;
        if (!v10)
        {
          goto LABEL_15;
        }

        v12 = v18;
        if (v10 == 1)
        {
          goto LABEL_15;
        }
      }

      ++v10;
      if (v11 == i)
      {
        return;
      }
    }

    if (v10 >= *(v27 + 16))
    {
      goto LABEL_20;
    }

    v11 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }
}

id sub_10062D844(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CollectionLockupArtwork();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_10062D908(uint64_t a1, double a2, double a3)
{
  sub_10062C8C0(v6);
  sub_10002A400(v6, v6[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v4 = v3;
  sub_100007000(v6);
  return v4;
}

uint64_t sub_10062D9F8(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DisjointStack.EdgePosition();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  *v11 = a1;
  v12 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v13 = *(v8 + 104);
  (v13)(v11, enum case for DisjointStack.EdgePosition.anchored(_:), v7, v9);
  DisjointStack.Properties.topEdge.setter();
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  *v11 = a1;
  v13(v11, v12, v7);
  return DisjointStack.Properties.leadingEdge.setter();
}

void sub_10062DB6C()
{
  v1 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon1;
  type metadata accessor for ArtworkView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon2;
  *(v0 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v4 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon3;
  *(v0 + v4) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v5 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon4;
  *(v0 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_iconCount) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10062DC8C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  *&v2[OBJC_IVAR____TtC8AppStore21GalleryViewController_artworkLoader] = v13;
  *&v2[OBJC_IVAR____TtC8AppStore21GalleryViewController_artwork] = a1;
  v4 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v4 setSectionInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v4 setMinimumInteritemSpacing:0.0];
  [v4 setMinimumLineSpacing:0.0];
  [v4 setScrollDirection:1];
  v12.receiver = v2;
  v12.super_class = type metadata accessor for GalleryViewController();
  v5 = objc_msgSendSuper2(&v12, "initWithCollectionViewLayout:", v4);
  v6 = [v5 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 setContentInsetAdjustmentBehavior:2];
  }

  v8 = v5;
  v9 = [v8 navigationItem];
  v10 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v8 action:"dismissFrom:"];

  [v9 setRightBarButtonItem:v10];

  return v8;
}

id sub_10062DEBC()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 barHideOnTapGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for GalleryViewController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_10062E074(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for GalleryViewController();
  v7 = *a4;
  v8 = v9.receiver;
  objc_msgSendSuper2(&v9, v7, a3);
  ArtworkLoader.isOccluded.setter();
}

void sub_10062E0FC(void *a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for GalleryViewController();
  v5 = *a3;
  v6 = v7.receiver;
  objc_msgSendSuper2(&v7, v5);
  ArtworkLoader.isOccluded.setter();
}

void sub_10062E16C(uint64_t a1)
{
  v25.receiver = v1;
  v25.super_class = type metadata accessor for GalleryViewController();
  objc_msgSendSuper2(&v25, "viewDidLoad");
  v2 = [v1 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 setHidesBarsOnTap:1];
  }

  v4 = [v1 navigationController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 barHideOnTapGestureRecognizer];

    [v6 addTarget:v1 action:"tapStateChangedOn:"];
  }

  v7 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v1 action:"swipeStateChangedOn:"];
  [v7 setDirection:8];
  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 addGestureRecognizer:v7];

    v10 = [v1 collectionView];
    if (v10)
    {
      if (qword_10096EBA8 != -1)
      {
        v24 = v10;
        swift_once();
        v10 = v24;
      }

      v11 = v10;
      [v10 setBackgroundColor:qword_1009900F0];
    }

    v12 = [v1 collectionView];
    if (v12)
    {
      v13 = v12;
      [v12 setAllowsSelection:0];
    }

    v14 = [v1 collectionView];
    if (v14)
    {
      v15 = v14;
      [v14 setAlwaysBounceHorizontal:1];
    }

    v16 = [v1 collectionView];
    if (v16)
    {
      v17 = v16;
      [v16 setShowsHorizontalScrollIndicator:0];
    }

    v18 = [v1 collectionView];
    if (v18)
    {
      v19 = v18;
      [v18 setPagingEnabled:1];
    }

    v20 = [v1 collectionView];
    if (v20)
    {
      v21 = v20;
      type metadata accessor for ArtworkCollectionViewCell(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      static UICollectionReusableView.defaultReuseIdentifier.getter();
      v23 = String._bridgeToObjectiveC()();

      [v21 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v23];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10062E4A0(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for GalleryViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 collectionViewLayout];

    [v5 invalidateLayout];
  }

  v6 = [v1 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsLayout];
  }
}

id sub_10062E63C(void *a1)
{
  result = [a1 state];
  if (result == 3)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v7[4] = sub_10062F348;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100007A08;
    v7[3] = &unk_1008CC440;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v3 animateWithDuration:v5 animations:UINavigationControllerHideShowBarDuration];
    _Block_release(v5);
    return [v6 setNeedsStatusBarAppearanceUpdate];
  }

  return result;
}

void sub_10062E760(void *a1)
{
  v2 = [a1 navigationController];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 isNavigationBarHidden];

  v5 = [a1 collectionView];
  if (v4)
  {
    if (!v5)
    {
      return;
    }

    if (qword_10096EBB0 != -1)
    {
      v8 = v5;
      swift_once();
      v5 = v8;
    }

    v6 = &qword_1009900F8;
  }

  else
  {
    if (!v5)
    {
      return;
    }

    if (qword_10096EBA8 != -1)
    {
      v9 = v5;
      swift_once();
      v5 = v9;
    }

    v6 = &qword_1009900F0;
  }

  v7 = v5;
  [v5 setBackgroundColor:*v6];
}

void sub_10062E910()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isNavigationBarHidden];

    if ((v3 & 1) == 0)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v0;
      v10[4] = sub_10062F340;
      v10[5] = v5;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_100007A08;
      v10[3] = &unk_1008CC3F0;
      v6 = _Block_copy(v10);
      v7 = v0;

      [v4 animateWithDuration:v6 animations:UINavigationControllerHideShowBarDuration];
      _Block_release(v6);
      v8 = [v7 navigationController];
      if (v8)
      {
        v9 = v8;
        [v8 setNavigationBarHidden:1 animated:1];
      }

      [v7 setNeedsStatusBarAppearanceUpdate];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10062EA98(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v2 = v1;
    if (qword_10096EBB0 != -1)
    {
      swift_once();
      v1 = v2;
    }

    [v1 setBackgroundColor:qword_1009900F8];
  }
}

unint64_t sub_10062EBFC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for ArtworkCollectionViewCell(0);
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v5 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v7 = [a1 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:isa];

  v8 = swift_dynamicCastClassUnconditional();
  v9 = OBJC_IVAR____TtC8AppStore25ArtworkCollectionViewCell_artworkView;
  [*&v8[OBJC_IVAR____TtC8AppStore25ArtworkCollectionViewCell_artworkView] setContentMode:1];
  v10 = *(v2 + OBJC_IVAR____TtC8AppStore21GalleryViewController_artwork);
  result = IndexPath.item.getter();
  if ((v10 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    __break(1u);
    return result;
  }

LABEL_5:
  v12 = v7;
  [v8 frame];
  CGRectGetWidth(v24);
  [v8 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v25.origin.x = v14;
  v25.origin.y = v16;
  v25.size.width = v18;
  v25.size.height = v20;
  CGRectGetHeight(v25);
  Artwork.size.getter();
  Artwork.size.getter();
  Artwork.size.getter();
  [*&v8[v9] contentMode];
  Artwork.config(_:mode:prefersLayeredImage:)();
  v21 = *&v8[v9];
  Artwork.style.getter();
  ArtworkView.style.setter();
  [v21 setContentMode:Artwork.contentMode.getter()];
  ArtworkLoaderConfig.size.getter();
  ArtworkView.imageSize.setter();
  if (!Artwork.backgroundColor.getter())
  {
    sub_100028BB8();
    static UIColor.placeholderBackground.getter();
  }

  ArtworkView.backgroundColor.setter();

  v22 = *&v8[v9];
  type metadata accessor for ArtworkView();
  sub_10009A098();
  v23 = v22;
  ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

  return v8;
}

double sub_10062F358(void *a1, uint64_t a2, void *a3, double a4)
{
  v82 = a2;
  v89 = type metadata accessor for TitledParagraphLayout();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for TitledParagraphLayout.Metrics();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v75[0] = v75 - v10;
  __chkstk_darwin(v11);
  v84 = v75 - v12;
  v80 = type metadata accessor for LabelPlaceholderCompatibility();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TitledParagraphStyle();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v77 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v75 - v18;
  v90 = a1;
  v20 = dispatch thunk of TitledParagraph.text.getter();
  v92 = a3;
  v21 = [a3 traitCollection];
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v20];
  v91 = [v20 length];
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = v21;
  *(v23 + 32) = v22;
  *(v23 + 40) = 1;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100126854;
  *(v24 + 24) = v23;
  v104 = sub_100126848;
  v105 = v24;
  aBlock = _NSConcreteStackBlock;
  v101 = 1107296256;
  v102 = sub_1006606C4;
  v103 = &unk_1008CC610;
  v25 = _Block_copy(&aBlock);
  v26 = v21;
  v27 = v22;

  [v20 enumerateAttributesInRange:0 options:v91 usingBlock:{0x100000, v25}];

  _Block_release(v25);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_7;
  }

  v91 = v27;
  TitledParagraph.style.getter();
  v28 = v77;
  v15[13](v77, enum case for TitledParagraphStyle.detail(_:), v14);
  sub_1006312CC(&qword_1009786A0, &type metadata accessor for TitledParagraphStyle, &protocol conformance descriptor for TitledParagraphStyle);
  v29 = v19;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v97[0] && v101 == v97[1])
  {
    v76 = 1;
  }

  else
  {
    v76 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v30 = v92;
  v31 = v15[1];
  v31(v28, v14);
  v31(v29, v14);

  TitledParagraph.primarySubtitle.getter();
  v75[2] = TitledParagraph.secondarySubtitle.getter();
  v75[1] = v32;
  v77 = v91;
  v15 = [v30 traitCollection];
  sub_1000367E8();
  if (qword_10096DE20 != -1)
  {
    goto LABEL_23;
  }

LABEL_7:
  v33 = type metadata accessor for FontUseCase();
  sub_1000056A8(v33, qword_1009D09E0);
  v90 = v15;
  v34 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v35 = type metadata accessor for Feature();
  v103 = v35;
  v36 = sub_1006312CC(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v104 = v36;
  v37 = sub_1000056E0(&aBlock);
  v38 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v39 = *(*(v35 - 1) + 104);
  v39(v37, enum case for Feature.measurement_with_labelplaceholder(_:), v35);
  v40 = v34;
  isFeatureEnabled(_:)();
  sub_100007000(&aBlock);
  v41 = v78;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v42 = v79[1];
  v43 = v80;
  v42(v41, v80);
  v98 = v35;
  v99 = v36;
  v44 = sub_1000056E0(v97);
  v39(v44, v38, v35);
  v45 = v40;
  isFeatureEnabled(_:)();
  sub_100007000(v97);
  v79 = v45;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v42(v41, v43);
  v46 = 0;
  v47 = v76;
  if ((v76 & 1) == 0)
  {
    v46 = static TitledParagraphLayout.isMultiColumn(compatibleWith:)();
  }

  v48 = swift_allocObject();
  *(v48 + 16) = v46 & 1;
  v49 = v92;
  *(v48 + 24) = v81;
  *(v48 + 32) = v49;
  v50 = v82;
  *(v48 + 40) = v91;
  *(v48 + 48) = v50;
  v51 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v52 = v77;
  swift_unknownObjectRetain();
  v53 = LayoutViewPlaceholder.init(measureWith:)();
  v96[3] = v51;
  v96[4] = &protocol witness table for LayoutViewPlaceholder;
  v96[0] = v53;
  v54 = v87;
  v55 = v85;
  v56 = v84;
  if (v46)
  {
    if (qword_10096D660 != -1)
    {
      swift_once();
    }

    v57 = sub_1000056A8(v54, qword_1009CF358);
    v58 = *(v55 + 16);
    v58(v56, v57, v54);
    sub_1002DBD10(v49, a4);
    TitledParagraphLayout.Metrics.columnWidth.setter();
    [v49 pageMarginInsets];
    TitledParagraphLayout.Metrics.columnMargin.setter();
  }

  else
  {
    if (v47)
    {
      if (qword_10096D668 != -1)
      {
        swift_once();
      }

      v59 = qword_1009CF370;
    }

    else
    {
      if (qword_10096D658 != -1)
      {
        swift_once();
      }

      v59 = qword_1009CF340;
    }

    v60 = sub_1000056A8(v54, v59);
    v58 = *(v55 + 16);
    v61 = v75[0];
    v58(v75[0], v60, v54);
    (*(v55 + 32))(v56, v61, v54);
  }

  v58(v83, v56, v54);
  v62 = v103;
  v63 = v104;
  v64 = sub_10002A400(&aBlock, v103);
  v95[3] = v62;
  v95[4] = *(v63 + 1);
  v65 = sub_1000056E0(v95);
  (*(*(v62 - 1) + 16))(v65, v64, v62);
  v66 = v98;
  v67 = v99;
  v68 = sub_10002A400(v97, v98);
  v94[3] = v66;
  v94[4] = *(v67 + 8);
  v69 = sub_1000056E0(v94);
  (*(*(v66 - 8) + 16))(v69, v68, v66);
  sub_10002C0AC(v96, v93);
  v70 = v86;
  TitledParagraphLayout.init(metrics:allowsMultiColumn:primaryText:secondaryText:bodyText:)();
  sub_1006312CC(&unk_1009901A0, &type metadata accessor for TitledParagraphLayout, &protocol conformance descriptor for TitledParagraphLayout);
  v71 = v89;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v73 = v72;

  (*(v88 + 8))(v70, v71);
  (*(v55 + 8))(v56, v54);
  sub_100007000(v96);
  sub_100007000(v97);
  sub_100007000(&aBlock);
  return v73;
}

uint64_t sub_10062FFEC()
{
  sub_10002849C(&qword_100975780, &qword_1007BA178);
  sub_100135EAC();
  WritableStateLens<A>.updateValue(_:)();
  return 3;
}

uint64_t sub_100630064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for StaticDimension();
  sub_1000056A8(v7, qword_1009D2460);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return v9;
}

unint64_t sub_1006301FC()
{
  result = qword_100990188;
  if (!qword_100990188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990188);
  }

  return result;
}

unint64_t sub_100630254()
{
  result = qword_100990190;
  if (!qword_100990190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990190);
  }

  return result;
}

void sub_1006302A8(void *a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_10002849C(&qword_100978688, &qword_1007BDC00);
  sub_100135EAC();
  StateLens<A>.currentValue.getter();
  if (v10 == 1)
  {
    if (qword_10096D650 != -1)
    {
      swift_once();
    }

    v8 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
    sub_1000056A8(v8, qword_1009CF328);
    swift_unknownObjectRetain();
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  sub_10062F358(a1, v9, a5, a2);
}

void sub_1006303D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v112 = a3;
  v113 = a2;
  v118 = a1;
  v110 = type metadata accessor for Paragraph.Alignment();
  v117 = *(v110 - 8);
  __chkstk_darwin(v110);
  v105 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v106 = &v102 - v9;
  __chkstk_darwin(v10);
  v104 = &v102 - v11;
  __chkstk_darwin(v12);
  v103 = &v102 - v13;
  v14 = sub_10002849C(&qword_10097C3F0, &qword_1007C4208);
  __chkstk_darwin(v14 - 8);
  v109 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v107 = &v102 - v17;
  __chkstk_darwin(v18);
  v108 = &v102 - v19;
  __chkstk_darwin(v20);
  v115 = &v102 - v21;
  v111 = type metadata accessor for ComponentLayoutOptions();
  v22 = *(v111 - 8);
  __chkstk_darwin(v111);
  v24 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TitledParagraphStyle();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v32 = &v102 - v31;
  v114 = a5;
  v33 = [a5 snapshotPageTraitEnvironment];
  v34 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_pageTraits;
  *&v5[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_pageTraits] = v33;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*&v5[v34])
  {
    [v5 setNeedsLayout];
  }

  v116 = v5;
  swift_unknownObjectRelease();
  TitledParagraph.style.getter();
  (*(v26 + 104))(v28, enum case for TitledParagraphStyle.detail(_:), v25);
  sub_1006312CC(&qword_1009786A0, &type metadata accessor for TitledParagraphStyle, &protocol conformance descriptor for TitledParagraphStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v125 && v120 == v126)
  {
    v35 = 1;
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v36 = *(v26 + 8);
  v36(v28, v25);
  v36(v32, v25);

  v37 = v116;
  v116[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_useDetailPageStyling] = v35 & 1;
  sub_1002DAA90();
  v38 = *&v37[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_separatorView];
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_1006312CC(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v39 = v111;
  v40 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v22 + 8))(v24, v39);
  [v38 setHidden:v40 & 1];
  sub_10002849C(&qword_100975780, &qword_1007BA178);
  sub_100135EAC();
  WritableStateLens<A>.currentValue.getter();
  v41 = aBlock;
  if (qword_10096D650 != -1)
  {
    swift_once();
  }

  v42 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  sub_1000056A8(v42, qword_1009CF328);
  v43 = v114;
  v125 = v114;
  swift_unknownObjectRetain();
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v44 = v118;
  v45 = aBlock + 1;
  if (__OFADD__(aBlock, 1))
  {
    __break(1u);
    goto LABEL_56;
  }

  type metadata accessor for TitledParagraphCollectionViewCell(0);
  [v37 frame];
  v47 = v46;
  sub_10062F358(v44, v45, v43, v48);
  if (v47 < v49)
  {
    v50 = v41;
  }

  else
  {
    v50 = 0;
  }

  if ((v50 & 1) == 0)
  {
    v72 = dispatch thunk of TitledParagraph.text.getter();
    v73 = [v43 traitCollection];
    v74 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v72];
    v75 = [v72 length];
    v76 = swift_allocObject();
    *(v76 + 16) = 0;
    *(v76 + 24) = v73;
    *(v76 + 32) = v74;
    *(v76 + 40) = 1;
    v77 = swift_allocObject();
    *(v77 + 16) = sub_10010279C;
    *(v77 + 24) = v76;
    v123 = sub_1001027AC;
    v124 = v77;
    aBlock = _NSConcreteStackBlock;
    v120 = 1107296256;
    v121 = sub_1006606C4;
    v122 = &unk_1008CC520;
    v78 = _Block_copy(&aBlock);
    v79 = v73;
    v80 = v74;

    [v72 enumerateAttributesInRange:0 options:v75 usingBlock:{0x100000, v78}];

    _Block_release(v78);
    LOBYTE(v72) = swift_isEscapingClosureAtFileLocation();

    if (v72)
    {
LABEL_57:
      __break(1u);
      return;
    }

    v71 = v107;
    v60 = *&v37[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_bodyTextView];
    v81 = v110;
    (*(v117 + 56))(v107, 1, 1, v110);
    v82 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
    v83 = v60[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
    v60[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 0;
    v115 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel;
    v84 = *&v60[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
    v85 = v80;
    [v84 setNumberOfLines:0];
    if (v83 != v60[v82])
    {
      sub_1005A0320();
    }

    v67 = v85;
    sub_10059FCD8(v85);
    v60[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
    v86 = v109;
    sub_10027D5B8(v71, v109);
    v87 = v117;
    v70 = &StringUserDefaultsDebugSetting;
    if ((*(v117 + 48))(v86, 1, v81) == 1)
    {
      sub_100574EB4(v86);
      goto LABEL_46;
    }

    v92 = v106;
    (*(v87 + 32))(v106, v86, v81);
    v93 = v105;
    (*(v87 + 16))(v105, v92, v81);
    v94 = (*(v87 + 88))(v93, v81);
    if (v94 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v94 == enum case for Paragraph.Alignment.center(_:))
      {
        v95 = 1;
        goto LABEL_45;
      }

      if (v94 == enum case for Paragraph.Alignment.right(_:))
      {
        v95 = 2;
        goto LABEL_45;
      }

      if (v94 == enum case for Paragraph.Alignment.justified(_:))
      {
        v95 = 3;
        goto LABEL_45;
      }

      if (v94 == enum case for Paragraph.Alignment.localized(_:))
      {
        v95 = 4;
        goto LABEL_45;
      }

      (*(v87 + 8))(v105, v81);
    }

    v95 = 0;
LABEL_45:
    [*&v60[v115] setTextAlignment:v95];
    (*(v87 + 8))(v106, v81);
    goto LABEL_46;
  }

  v51 = dispatch thunk of TitledParagraph.collapsedText.getter();
  v52 = [v43 traitCollection];
  v53 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v51];
  v54 = [v51 length];
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = v52;
  *(v55 + 32) = v53;
  *(v55 + 40) = 1;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_100126854;
  *(v56 + 24) = v55;
  v123 = sub_100126848;
  v124 = v56;
  aBlock = _NSConcreteStackBlock;
  v120 = 1107296256;
  v121 = sub_1006606C4;
  v122 = &unk_1008CC598;
  v57 = _Block_copy(&aBlock);
  v58 = v52;
  v59 = v53;

  [v51 enumerateAttributesInRange:0 options:v54 usingBlock:{0x100000, v57}];

  _Block_release(v57);
  LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

  if (v51)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v37 = v116;
  v60 = *&v116[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_bodyTextView];
  v61 = v110;
  (*(v117 + 56))(v115, 1, 1, v110);
  v62 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  v63 = v60[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
  v60[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 1;
  v64 = *&v60[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  v65 = *&v60[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
  v66 = v59;
  [v65 setNumberOfLines:v64];
  if (v63 != v60[v62])
  {
    sub_1005A0320();
  }

  v67 = v66;
  sub_10059FCD8(v66);
  v60[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  v68 = v108;
  sub_10027D5B8(v115, v108);
  v69 = v117;
  v70 = &StringUserDefaultsDebugSetting;
  if ((*(v117 + 48))(v68, 1, v61) != 1)
  {
    v88 = v103;
    (*(v69 + 32))(v103, v68, v61);
    v89 = v104;
    (*(v69 + 16))(v104, v88, v61);
    v90 = (*(v69 + 88))(v89, v61);
    if (v90 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v90 == enum case for Paragraph.Alignment.center(_:))
      {
        v91 = 1;
        goto LABEL_42;
      }

      if (v90 == enum case for Paragraph.Alignment.right(_:))
      {
        v91 = 2;
        goto LABEL_42;
      }

      if (v90 == enum case for Paragraph.Alignment.justified(_:))
      {
        v91 = 3;
        goto LABEL_42;
      }

      if (v90 == enum case for Paragraph.Alignment.localized(_:))
      {
        v91 = 4;
        goto LABEL_42;
      }

      (*(v69 + 8))(v104, v61);
    }

    v91 = 0;
LABEL_42:
    [v65 setTextAlignment:v91];
    (*(v69 + 8))(v88, v61);
    v71 = v115;
    goto LABEL_46;
  }

  sub_100574EB4(v68);
  v71 = v115;
LABEL_46:
  [v60 v70[41].base_meths];

  sub_100574EB4(v71);
  v96 = *&v37[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  TitledParagraph.primarySubtitle.getter();
  if (v97)
  {
    v98 = String._bridgeToObjectiveC()();
  }

  else
  {
    v98 = 0;
  }

  [v96 setText:v98];

  v99 = *&v37[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
  TitledParagraph.secondarySubtitle.getter();
  if (v100)
  {
    v101 = String._bridgeToObjectiveC()();
  }

  else
  {
    v101 = 0;
  }

  [v99 setText:v101];

  [v37 v70[41].base_meths];
}

uint64_t sub_1006312CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100631334@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = type metadata accessor for FontSource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10002849C(&qword_100979010, qword_1007BE140);
  __chkstk_darwin(v5 - 8);
  v52 = &v49 - v6;
  v7 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  __chkstk_darwin(v7 - 8);
  v53 = &v49 - v8;
  UITraitCollection.prefersAccessibilityLayouts.getter();
  UITraitCollection.prefersAccessibilityLayouts.getter();
  v96 = vdupq_n_s64(0x405A400000000000uLL);
  v93 = vdupq_n_s64(0x4056000000000000uLL);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for CGSize(0);
  Conditional<>.init(regularValue:compactValue:)();
  v96.i64[0] = 0x402E000000000000;
  v93.i64[0] = 0x402C000000000000;
  Conditional<>.init(regularValue:compactValue:)();
  *v4 = UIFontTextStyleBody;
  v62 = enum case for FontSource.textStyle(_:);
  v60 = v2[13];
  v61 = v2 + 13;
  v60(v4);
  v97 = type metadata accessor for StaticDimension();
  v98 = &protocol witness table for StaticDimension;
  v9 = v97;
  v57 = v97;
  sub_1000056E0(v96.i64);
  v94 = v1;
  v95 = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v93.i64);
  v58 = v2[2];
  v58(v10, v4, v1);
  v59 = v2 + 2;
  v11 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  v12 = v2[1];
  v55 = v2 + 1;
  v12(v4, v1);
  v13 = v12;
  v56 = v12;
  *v4 = v11;
  v14 = v62;
  v15 = v60;
  (v60)(v4, v62, v1);
  v94 = v9;
  v95 = &protocol witness table for StaticDimension;
  v50 = sub_1000056E0(v93.i64);
  v91 = v1;
  v92 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v90);
  v17 = v58;
  v58(v16, v4, v1);
  v18 = v11;
  v51 = v18;
  StaticDimension.init(_:scaledLike:)();
  v13(v4, v1);
  *v4 = v18;
  v15(v4, v14, v1);
  v19 = v15;
  v20 = v57;
  v91 = v57;
  v92 = &protocol witness table for StaticDimension;
  sub_1000056E0(v90);
  v88 = v1;
  v89 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v87);
  v17(v21, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v22 = v56;
  v56(v4, v1);
  *v4 = v51;
  v23 = v62;
  v19(v4, v62, v1);
  v88 = v20;
  v89 = &protocol witness table for StaticDimension;
  sub_1000056E0(v87);
  v85 = v1;
  v86 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v84);
  v58(v24, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v22(v4, v1);
  *v4 = UIFontTextStyleFootnote;
  v25 = v60;
  (v60)(v4, v23, v1);
  v85 = v20;
  v86 = &protocol witness table for StaticDimension;
  sub_1000056E0(v84);
  v82 = v1;
  v83 = &protocol witness table for FontSource;
  v26 = sub_1000056E0(v81);
  v27 = v58;
  v58(v26, v4, v1);
  v28 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  v29 = v56;
  v56(v4, v1);
  *v4 = v28;
  v25(v4, v62, v1);
  v82 = v57;
  v83 = &protocol witness table for StaticDimension;
  sub_1000056E0(v81);
  v79 = v1;
  v80 = &protocol witness table for FontSource;
  v30 = sub_1000056E0(v78);
  v27(v30, v4, v1);
  v31 = v28;
  StaticDimension.init(_:scaledLike:)();
  v29(v4, v1);
  *v4 = v31;
  v32 = v60;
  (v60)(v4, v62, v1);
  v33 = v57;
  v79 = v57;
  v80 = &protocol witness table for StaticDimension;
  sub_1000056E0(v78);
  v76 = v1;
  v77 = &protocol witness table for FontSource;
  v34 = sub_1000056E0(v75);
  v35 = v58;
  v58(v34, v4, v1);
  v36 = v31;
  StaticDimension.init(_:scaledLike:)();
  v56(v4, v1);
  *v4 = v36;
  v37 = v62;
  v32(v4, v62, v1);
  v76 = v33;
  v77 = &protocol witness table for StaticDimension;
  sub_1000056E0(v75);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v38 = sub_1000056E0(v72);
  v35(v38, v4, v1);
  v39 = v36;
  StaticDimension.init(_:scaledLike:)();
  v40 = v56;
  v56(v4, v1);
  *v4 = v39;
  (v60)(v4, v37, v1);
  v73 = v33;
  v74 = &protocol witness table for StaticDimension;
  v50 = sub_1000056E0(v72);
  v70 = v1;
  v71 = &protocol witness table for FontSource;
  v41 = sub_1000056E0(v69);
  v35(v41, v4, v1);
  v42 = v39;
  v51 = v42;
  StaticDimension.init(_:scaledLike:)();
  v40(v4, v1);
  *v4 = v42;
  v43 = v62;
  v44 = v60;
  (v60)(v4, v62, v1);
  v70 = v33;
  v71 = &protocol witness table for StaticDimension;
  sub_1000056E0(v69);
  v67 = v1;
  v68 = &protocol witness table for FontSource;
  v45 = sub_1000056E0(v66);
  v46 = v58;
  v58(v45, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v40(v4, v1);
  *v4 = v51;
  v44(v4, v43, v1);
  v67 = v57;
  v68 = &protocol witness table for StaticDimension;
  sub_1000056E0(v66);
  v64 = v1;
  v65 = &protocol witness table for FontSource;
  v47 = sub_1000056E0(v63);
  v46(v47, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v40(v4, v1);
  v64 = type metadata accessor for ZeroDimension();
  v65 = &protocol witness table for ZeroDimension;
  sub_1000056E0(v63);
  static ZeroDimension.zero.getter();
  return MediumLockupLayout.Metrics.init(artworkSize:artworkMargin:headingSpace:titleSpace:titleWithHeadingRegularSpace:titleWithHeadingShortSpace:subtitleRegularSpace:subtitleShortSpace:tertiaryTitleRegularSpace:tertiaryTitleShortSpace:offerTextRegularSpace:offerTextShortSpace:offerButtonTopMargin:offerButtonBottomMargin:offerButtonSize:layoutMargins:)();
}

void sub_100631CEC(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_avatarShowcase] = a1;
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

uint64_t sub_100631DB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v24 - v6;
  v8 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v26 = type metadata accessor for MediumLockupLayout.Metrics();
  v24 = *(v26 - 8);
  *&v12 = __chkstk_darwin(v26).n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 traitCollection];
  v16 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v16)
  {
    if (qword_10096D670 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Separator();
    v18 = sub_1000056A8(v17, qword_1009CF3B8);
    v19 = *(*(v17 - 8) + 16);
    v20 = v30;

    return v19(v20, v18, v17);
  }

  else
  {
    v22 = [a1 traitCollection];
    sub_100631334(v14);

    MediumLockupLayout.Metrics.artworkSize.getter();
    v31 = a1;
    Conditional.evaluate(with:)();
    (*(v9 + 8))(v11, v8);
    MediumLockupLayout.Metrics.artworkMargin.getter();
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    (*(v28 + 8))(v5, v29);
    (*(v25 + 8))(v7, v27);
    if (qword_10096D670 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Separator();
    sub_1000056A8(v23, qword_1009CF3B8);
    Separator.withLeadingInset(_:)();
    return (*(v24 + 8))(v14, v26);
  }
}

id sub_100632200(char a1, uint64_t a2)
{
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel);
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
    sub_10003D8D0(v20, &OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel);
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

void sub_1006324B0()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel);
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
  sub_10003D8D0(v15, &OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel);
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

char *sub_100632760(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v14 - 8);
  v16 = v61 - v15;
  v17 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_itemLayoutContext;
  v18 = type metadata accessor for ItemLayoutContext();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  *&v5[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_avatarShowcase] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  v19 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabel;
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for FontUseCase();
  v21 = sub_1000056A8(v20, qword_1009D0710);
  v22 = *(v20 - 8);
  v23 = *(v22 + 16);
  v68 = v21;
  v70 = v22 + 16;
  v71 = v23;
  (v23)(v16);
  v25 = *(v22 + 56);
  v24 = v22 + 56;
  v67 = v25;
  v25(v16, 0, 1, v20);
  v26 = enum case for DirectionalTextAlignment.none(_:);
  v65 = *(v11 + 104);
  v66 = v11 + 104;
  v65(v13);
  v27 = v10;
  v64 = type metadata accessor for DynamicTypeLabel();
  v28 = objc_allocWithZone(v64);
  *&v5[v19] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v29 = &v5[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabelPresenter];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separatorView] = 0;
  v30 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separator;
  v31 = type metadata accessor for Separator();
  (*(*(v31 - 8) + 56))(&v5[v30], 1, 1, v31);
  type metadata accessor for ArtworkView();
  *&v5[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_artworkView] = static ArtworkView.iconArtworkView.getter();
  v63 = v5;
  if (qword_10096DD08 != -1)
  {
    swift_once();
  }

  v32 = sub_1000056A8(v20, qword_1009D06B0);
  v71(v16, v32, v20);
  v33 = v67;
  v67(v16, 0, 1, v20);
  v61[1] = v24;
  v62 = v27;
  v34 = v65;
  (v65)(v13, v26, v27);
  v35 = v64;
  v36 = objc_allocWithZone(v64);
  v37 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v38 = v63;
  *&v63[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_titleLabel] = v37;
  v71(v16, v68, v20);
  v33(v16, 0, 1, v20);
  v34(v13, v26, v62);
  v39 = objc_allocWithZone(v35);
  *&v38[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v40 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v38[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerButton] = sub_1000F5284(0, v41);
  v72.receiver = v38;
  v72.super_class = ObjectType;
  v42 = objc_msgSendSuper2(&v72, "initWithFrame:", a1, a2, a3, a4);
  v43 = [v42 contentView];
  [v43 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v44 = [v42 contentView];
  [v44 addSubview:*&v42[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_artworkView]];

  v45 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_titleLabel;
  v46 = *&v42[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_titleLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v47 = [v42 contentView];
  [v47 addSubview:*&v42[v45]];

  v48 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_subtitleLabel;
  v49 = *&v42[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_subtitleLabel];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v50 = v49;
  v51 = static UIColor.secondaryText.getter();
  [v50 setTextColor:v51];

  v52 = *&v42[v48];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v53 = v42;
  v54 = [v53 contentView];
  [v54 addSubview:*&v42[v48]];

  v55 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerButton;
  swift_unknownObjectWeakAssign();

  v56 = [v53 contentView];
  [v56 addSubview:*&v53[v55]];

  v57 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabel;
  [*&v53[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabel] _setTextColorFollowsTintColor:1];
  [*&v53[v57] setText:0];
  [*&v53[v57] setHidden:1];
  v58 = *&v53[v57];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v59 = [v53 contentView];
  [v59 addSubview:*&v53[v57]];

  return v53;
}

double sub_100632EFC()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - v4;
  v6 = type metadata accessor for MediumLockupLayout.Metrics();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 traitCollection];
  sub_100631334(v10);

  MediumLockupLayout.Metrics.artworkSize.getter();
  (*(v7 + 8))(v10, v6);
  v13[1] = v1;
  Conditional.evaluate(with:)();
  (*(v3 + 8))(v5, v2);
  return *&v13[2];
}

id sub_1006330C8()
{
  v1 = sub_10002849C(&unk_100970E10, &qword_1007B46A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = type metadata accessor for Separator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_10005A3C4(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10002B894(v3, &unk_100970E10, &qword_1007B46A0);
    result = *&v0[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separatorView];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v13 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separatorView;
    v14 = *&v0[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separatorView];
    if (v14)
    {
      (*(v5 + 16))(v7, v10, v4);
      v15 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v16 = *(v5 + 24);
      v17 = v14;
      v16(&v14[v15], v7, v4);
      swift_endAccess();
      v18 = v17;
      [v18 setNeedsLayout];
      v19 = *(v5 + 8);
      v19(v7, v4);
      [v18 setHidden:0];

      return (v19)(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v20 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v21 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v5 + 40);
      v22 = v20;
      v28(&v20[v21], v7, v4);
      swift_endAccess();

      v23 = *&v0[v13];
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *&v0[v13];
      }

      else
      {
        v24 = 0;
      }

      *&v0[v13] = v22;
      v25 = v22;

      v26 = [v0 contentView];
      [v26 addSubview:v25];

      [v0 setNeedsLayout];
      return (*(v5 + 8))(v10, v4);
    }
  }

  return result;
}

uint64_t sub_1006334AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v73 = type metadata accessor for LayoutRect();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for MediumLockupLayout();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MediumLockupLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v79 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v68 - v9;
  v11 = type metadata accessor for Separator();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109.receiver = v1;
  v109.super_class = ObjectType;
  v75 = ObjectType;
  objc_msgSendSuper2(&v109, "layoutSubviews", v13);
  v16 = [v1 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v105 = v18;
  v106 = v20;
  v107 = v22;
  v108 = v24;
  v25 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separatorView];
  v76 = v10;
  v77 = v6;
  v78 = v5;
  if (v25)
  {
    v26 = v25;
    if ([v26 isHidden])
    {
    }

    else
    {
      v27 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v12 + 16);
      v28(v15, &v26[v27], v11);
      Separator.frame(forBoundingRect:in:)();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v68 = *(v12 + 8);
      v68(v15, v11);
      [v26 setFrame:{v30, v32, v34, v36}];
      v37 = &v26[v27];
      v5 = v78;
      v28(v15, v37, v11);
      v10 = v76;
      v6 = v77;
      CGRect.inset(bySeparator:in:)();

      v68(v15, v11);
    }
  }

  v38 = [v1 traitCollection];
  sub_100631334(v10);

  v39 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerButton];
  v40 = &v39[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  if (v39[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v41 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(&v39[v41], v102);
    sub_10002A400(v102, v103);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v43 = v42;
    v45 = v44;
    sub_100007000(v102);
    *v40 = v43;
    *(v40 + 1) = v45;
    v40[16] = 0;
  }

  MediumLockupLayout.Metrics.offerButtonSize.setter();
  (*(v6 + 16))(v79, v10, v5);
  v46 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_artworkView];
  v103 = type metadata accessor for ArtworkView();
  v104 = &protocol witness table for UIView;
  v102[0] = v46;
  v47 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel];
  if (v47)
  {
    v48 = type metadata accessor for DynamicTypeLabel();
    v49 = &protocol witness table for UILabel;
    v50 = v47;
  }

  else
  {
    v50 = 0;
    v48 = 0;
    v49 = 0;
    v98 = 0;
    v99 = 0;
  }

  v97 = v50;
  v100 = v48;
  v101 = v49;
  v51 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_titleLabel];
  v52 = type metadata accessor for DynamicTypeLabel();
  v95 = v52;
  v96 = &protocol witness table for UILabel;
  v93 = &protocol witness table for UILabel;
  v94 = v51;
  v53 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_subtitleLabel];
  v92 = v52;
  v91 = v53;
  v54 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (v54)
  {
    v55 = &protocol witness table for UILabel;
    v56 = v52;
  }

  else
  {
    v56 = 0;
    v55 = 0;
    v87 = 0;
    v88 = 0;
  }

  v85 = &protocol witness table for UILabel;
  v86 = v54;
  v89 = v56;
  v90 = v55;
  v57 = *&v1[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabel];
  v84 = v52;
  v83 = v57;
  v81 = type metadata accessor for OfferButton();
  v82 = &protocol witness table for UIView;
  v80 = v39;
  v58 = v47;
  v59 = v51;
  v60 = v53;
  v61 = v54;
  v62 = v57;
  v63 = v39;
  v64 = v46;
  v65 = v70;
  MediumLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:)();
  v66 = v69;
  MediumLockupLayout.placeChildren(relativeTo:in:)();
  (*(v71 + 8))(v66, v73);
  sub_1006342F0(&qword_10097B058, type metadata accessor for MediumLockupCollectionViewCell, &unk_1007C2BC0);
  AvatarShowcaseDisplaying.placeAvatarShowcase()();
  (*(v72 + 8))(v65, v74);
  return (*(v77 + 8))(v76, v78);
}

uint64_t type metadata accessor for MediumLockupCollectionViewCell(uint64_t a1)
{
  result = qword_1009901D8;
  if (!qword_1009901D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100633D74(uint64_t a1)
{
  sub_10005A300(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_10005A300(319, &unk_100970DF0, &type metadata accessor for Separator);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100633EBC(uint64_t a1, uint64_t a2)
{
  ArtworkView.isImageHidden.setter();
  type metadata accessor for ArtworkView();
  sub_1006342F0(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_100633F54(uint64_t a1)
{
  result = sub_1006342F0(&qword_1009901E8, type metadata accessor for MediumLockupCollectionViewCell, &unk_1007DAC10);
  *(a1 + 8) = result;
  return result;
}

double sub_100633FAC(void *a1, double a2, double a3)
{
  v4 = type metadata accessor for MediumLockupLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OfferButtonMetrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v23 - v14;
  v16 = [a1 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v17 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v17 = qword_100991028;
  }

  v18 = sub_1000056A8(v8, v17);
  (*(v9 + 16))(v11, v18, v8);

  (*(v9 + 32))(v15, v11, v8);
  v19 = [a1 traitCollection];
  sub_100631334(v7);

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  MediumLockupLayout.Metrics.offerButtonSize.setter();
  type metadata accessor for MediumLockupLayout();
  sub_1006342F0(&qword_1009739C0, &type metadata accessor for MediumLockupLayout, &protocol conformance descriptor for MediumLockupLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v21 = v20;
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v15, v8);
  return v21;
}

uint64_t sub_1006342F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100634338()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_avatarShowcase) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel) = 0;
  v11 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabel;
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D0710);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v8, v13, v12);
  (*(v14 + 56))(v8, 0, 1, v12);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v15 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v11) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v16 = (v1 + OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabelPresenter);
  *v16 = 0u;
  v16[1] = 0u;
  *(v1 + OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separatorView) = 0;
  v17 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separator;
  v18 = type metadata accessor for Separator();
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1006346A4()
{
  v0 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v79 - v1;
  v89 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v89 - 8);
  __chkstk_darwin(v89);
  v83 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AspectRatio();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageGrid.Direction();
  v85 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v79 - v10;
  v12 = type metadata accessor for PageGrid();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v79 - v17;
  type metadata accessor for FramedArtwork();
  sub_1006355D8(&qword_100990200, &type metadata accessor for FramedArtwork, &protocol conformance descriptor for FramedMedia);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!aBlock[0])
  {
    return 0.0;
  }

  v81 = v3;
  v82 = v2;

  v19 = FramedMedia.isFullWidth.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v20 = (v13 + 8);
  if (v19)
  {
    PageGrid.componentMeasuringSize(spanning:)();
    v22 = v21;
    (*v20)(v18, v12);
  }

  else
  {
    PageGrid.containerWidth.getter();
    v24 = *v20;
    (*v20)(v18, v12);
    v80 = v24;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.containerHeight.getter();
    v24(v15, v12);
    v25 = v85;
    (*(v85 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v7);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.safeAreaInsets.getter();
    v26 = v80;
    v80(v15, v12);
    (*(v25 + 16))(v84, v11, v7);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v25 + 8))(v11, v7);
    PageGrid.componentMeasuringSize(spanning:)();
    v22 = v27;
    v26(v18, v12);
  }

  v28 = FramedArtwork.artwork.getter();
  v29 = v89;
  if (v28)
  {
    Artwork.size.getter();
    v30 = v86;
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    v32 = v31;
    (*(v87 + 8))(v30, v88);
    v33 = FramedMedia.isFullWidth.getter();

    if (v22 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v22;
    }

    if (v33)
    {
      v34 = v32;
    }

    v23 = v34 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v35 = FramedMedia.caption.getter();
  v36 = [v35 length];

  if (v36 < 1)
  {

    return v23;
  }

  v37 = 0.0;
  CGSize.subtracting(insets:)();
  FramedMedia.ordinal.getter();
  v38 = &qword_10096E000;
  if (v39)
  {
    if (qword_10096E228 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for FontUseCase();
    sub_1000056A8(v40, qword_1009D15F8);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v41 = type metadata accessor for Feature();
    v92 = v41;
    v93 = sub_1006355D8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v42 = sub_1000056E0(aBlock);
    (*(*(v41 - 8) + 104))(v42, enum case for Feature.measurement_with_labelplaceholder(_:), v41);
    isFeatureEnabled(_:)();
    sub_100007000(aBlock);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    swift_unknownObjectRelease();

    v43 = v83;
    if (qword_10096E690 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for StaticDimension();
    sub_1000056A8(v44, qword_1009D2368);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v46 = v45;
    swift_unknownObjectRelease();
    v47 = *(v81 + 8);
    v47(v43, v29);
    if (qword_10096E6A0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v44, qword_1009D2398);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v49 = v48;
    swift_unknownObjectRelease();
    v47(v43, v29);
    v50 = v46 + v49;
    if (qword_10096E698 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v44, qword_1009D2380);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v52 = v51;
    swift_unknownObjectRelease();
    v47(v43, v29);
    v37 = v50 + v52;
    v38 = &qword_10096E000;
  }

  v53 = FramedMedia.caption.getter();

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v54 = v95;
  v55 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v53];
  v56 = [v53 length];
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *(v57 + 24) = v54;
  *(v57 + 32) = v55;
  *(v57 + 40) = 1;
  v58 = swift_allocObject();
  v58[2] = sub_10010279C;
  v58[3] = v57;
  v93 = sub_1001027AC;
  v94 = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  v92 = &unk_1008CC758;
  v59 = _Block_copy(aBlock);
  v60 = v54;
  v61 = v55;

  [v53 enumerateAttributesInRange:0 options:v56 usingBlock:{0x100000, v59}];

  _Block_release(v59);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
    goto LABEL_37;
  }

  v62 = qword_10096E220;
  v58 = v61;
  if (v62 != -1)
  {
LABEL_37:
    swift_once();
  }

  v63 = type metadata accessor for FontUseCase();
  v64 = sub_1000056A8(v63, qword_1009D15E0);
  v65 = *(v63 - 8);
  v66 = v82;
  (*(v65 + 16))(v82, v64, v63);
  (*(v65 + 56))(v66, 0, 1, v63);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v67 = type metadata accessor for Feature();
  v92 = v67;
  v93 = sub_1006355D8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v68 = sub_1000056E0(aBlock);
  (*(*(v67 - 8) + 104))(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  isFeatureEnabled(_:)();
  sub_100007000(aBlock);
  static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  v70 = v69;

  swift_unknownObjectRelease();
  sub_10025BAF0(v66);
  if (qword_10096E690 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for StaticDimension();
  sub_1000056A8(v71, qword_1009D2368);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  AnyDimension.topMargin(from:in:)();
  v73 = v72;
  swift_unknownObjectRelease();
  v74 = v70 + v73;
  if (v38[211] != -1)
  {
    swift_once();
  }

  sub_1000056A8(v71, qword_1009D2380);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  AnyDimension.bottomMargin(from:in:)();
  v76 = v75;
  swift_unknownObjectRelease();

  v77 = v74 + v76;
  if (v37 > v74 + v76)
  {
    v77 = v37;
  }

  return v23 + v77;
}

uint64_t sub_1006355D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100635620(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  v3 = *(v1 + 48);
  if (v3 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    Hasher._combine(_:)(v7);
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
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

      (*(*v6 + 104))(a1);
    }
  }
}

uint64_t sub_100635730()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_10063579C()
{
  Hasher.init(_seed:)();
  sub_100635620(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100635804(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100635620(v2);
  return Hasher._finalize()();
}

unint64_t sub_100635854()
{
  result = qword_1009902C8;
  if (!qword_1009902C8)
  {
    type metadata accessor for DebugSection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009902C8);
  }

  return result;
}

uint64_t sub_1006358A8(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];

  return sub_1006E1A84(v6, v7);
}

double sub_100635984()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PrivacyCategory();
  sub_100635B80(&qword_100977780, &type metadata accessor for PrivacyCategory, &protocol conformance descriptor for PrivacyCategory);
  ItemLayoutContext.typedModel<A>(as:)();
  v4 = v10;
  if (!v10)
  {
    return 0.0;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v1 + 8))(v3, v0);
  v5 = sub_100079F24();
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  v10 = sub_10037A62C(v4, v5);
  type metadata accessor for LayoutViewPlaceholder();
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v7 = v6;

  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_100635B80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CappedSizeDynamicTypeLabel(uint64_t a1)
{
  result = qword_1009902D8;
  if (!qword_1009902D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100635C60(void *a1)
{
  v3 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for FontUseCase();
  v7 = *(v6 - 8);
  *&result = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[qword_1009902D0];
  *&v1[qword_1009902D0] = a1;
  v22 = v11;
  if (!a1)
  {
    if (!v11)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (!v11)
  {
    v20 = a1;
    goto LABEL_14;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v14 != v15)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v18 = a1;

    if (v17)
    {

      v19 = v22;

      return result;
    }

LABEL_14:
    dispatch thunk of DynamicTypeLabel.fontUseCase.getter();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_10025BAF0(v5);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      dispatch thunk of DynamicTypeLabel.updateFont(to:)();
      [v1 setNeedsLayout];

      (*(v7 + 8))(v10, v6);
    }

    return result;
  }

  return result;
}

id sub_100635F14()
{
  v1 = *(v0 + qword_1009902D0);
  if (v1)
  {
    type metadata accessor for DynamicTypeLabel();
    v2 = method lookup function for DynamicTypeLabel();
    v3 = v1;
    v4 = v2();
    v5 = [v4 preferredContentSizeCategory];

    LOBYTE(v4) = static UIContentSizeCategory.> infix(_:_:)();
    if (v4)
    {
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1007B15F0;
      *(v6 + 32) = v2();
      v7 = objc_opt_self();
      *(v6 + 40) = [v7 traitCollectionWithPreferredContentSizeCategory:v3];
      sub_10025BAA4();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v9 = [v7 traitCollectionWithTraitsFromCollections:isa];

      return v9;
    }
  }

  type metadata accessor for DynamicTypeLabel();
  v11 = method lookup function for DynamicTypeLabel();

  return v11();
}

id sub_1006360FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CappedSizeDynamicTypeLabel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100636198(uint64_t a1)
{
  v2 = type metadata accessor for PageGrid();
  v55 = *(v2 - 8);
  __chkstk_darwin(v2);
  v54 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Shelf.ContentsMetadata();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v6 = *(v49 - 8);
  __chkstk_darwin(v49);
  v8 = &v42 - v7;
  v9 = type metadata accessor for ProductMediaMetadata();
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(v9);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = type metadata accessor for AspectRatio();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v50 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v42 - v21;
  type metadata accessor for ProductMediaItem();
  sub_10063690C(&qword_100972AC0, &type metadata accessor for ProductMediaItem, &protocol conformance descriptor for ProductMediaItem);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v57)
  {
    v44 = a1;
    if (ProductMediaItem.screenshot.getter())
    {
      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      v23 = *(v18 + 56);
      v23(v13, 0, 1, v17);
      (*(v18 + 32))(v16, v13, v17);
      v23(v16, 0, 1, v17);
      v24 = (*(v18 + 48))(v16, 1, v17);
    }

    else
    {
      v43 = v6;
      v45 = v2;
      v25 = *(v18 + 56);
      v26 = 1;
      v25(v13, 1, 1, v17);
      if (ProductMediaItem.video.getter())
      {
        Video.preview.getter();

        Artwork.size.getter();
        AspectRatio.init(_:_:)();

        v26 = 0;
      }

      v25(v16, v26, 1, v17);
      v27 = *(v18 + 48);
      if (v27(v13, 1, v17) != 1)
      {
        sub_100072810(v13);
      }

      v2 = v45;
      v6 = v43;
      v24 = v27(v16, 1, v17);
    }

    if (v24 == 1)
    {

      return sub_100072810(v16);
    }

    v45 = v2;
    (*(v18 + 32))(v56, v16, v17);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    v28 = v51;
    v29 = v49;
    ReadOnlyLens.subscript.getter();

    (*(v6 + 8))(v8, v29);
    v31 = v52;
    v30 = v53;
    if ((*(v52 + 88))(v28, v53) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v31 + 96))(v28, v30);
      v32 = v46;
      v33 = v47;
      v34 = v28;
      v35 = v48;
      (*(v47 + 32))(v46, v34, v48);
      v36 = ProductMediaMetadata.hasPortraitPhoneMedia.getter();
      (*(v33 + 8))(v32, v35);
      v37 = v50;
      v38 = v56;
      v39 = v45;
      if ((v36 & 1) != 0 && (AspectRatio.isPortrait.getter() & 1) == 0)
      {
        AspectRatio.inverted.getter();
LABEL_18:
        swift_getKeyPath();
        v40 = v54;
        ItemLayoutContext.subscript.getter();

        PageGrid.columnWidth.getter();
        (*(v55 + 8))(v40, v39);
        AspectRatio.height(fromWidth:)();

        v41 = *(v18 + 8);
        v41(v37, v17);
        return (v41)(v38, v17);
      }
    }

    else
    {
      (*(v31 + 8))(v28, v30);
      v37 = v50;
      v38 = v56;
      v39 = v45;
    }

    (*(v18 + 16))(v37, v38, v17);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_10063690C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100636954(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PerformanceTestCase();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v71 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v70 = &v61 - v14;
  __chkstk_darwin(v15);
  v69 = &v61 - v16;
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v61 - v22;
  v24 = [v3 collectionView];
  if (v24)
  {
    v61 = v9;
    v67 = a2;
    v25 = ObjectType;
    v73 = v24;
    sub_10002C0AC(a2, v78);
    v65 = v3;
    v26 = *(v11 + 16);
    v26(v23, a1, v10);
    v62 = v26;
    sub_10002C0AC(v78, v77);
    v26(v19, v23, v10);
    v72 = a1;
    v27 = *(v11 + 80);
    v66 = v19;
    v28 = (v27 + 64) & ~v27;
    v64 = v12 + 7;
    v74 = v11;
    v29 = swift_allocObject();
    v30 = v23;
    v31 = v25;
    v63 = v25;
    v32 = v29;
    sub_100005A38(v78, v29 + 16);
    *(v32 + 56) = v73;
    v33 = v30;
    v34 = *(v11 + 32);
    v34(v32 + v28, v33, v10);
    v68 = v32;
    *(v32 + ((v12 + 7 + v28) & 0xFFFFFFFFFFFFFFF8)) = v31;
    sub_10002C0AC(v67, v76);
    v35 = v69;
    v36 = v62;
    v62(v69, v72, v10);
    v37 = swift_allocObject();
    sub_100005A38(v76, (v37 + 2));
    v67 = v37;
    v34(v37 + ((v27 + 56) & ~v27), v35, v10);
    v38 = v70;
    v36(v70, v72, v10);
    v39 = v71;
    v36(v71, v38, v10);
    v40 = (v27 + 24) & ~v27;
    v41 = (v64 + v40) & 0xFFFFFFFFFFFFFFF8;
    v42 = v10;
    v43 = swift_allocObject();
    v44 = v65;
    *(v43 + 16) = v65;
    v34(v43 + v40, v38, v42);
    v45 = v63;
    *(v43 + v41) = v63;
    v46 = v73;
    v47 = v44;
    v48 = v45;
    LOBYTE(v45) = sub_100637A7C(v47, v39, v45);
    v49 = v74 + 8;
    v50 = *(v74 + 8);
    v50(v39, v42);
    if (v45)
    {
      v73 = v46;
      v74 = v49;
      if (qword_10096D140 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for OSLogger();
      sub_1000056A8(v51, qword_1009CE278);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v52._object = 0x8000000100807A40;
      v52._countAndFlagsBits = 0xD000000000000010;
      LogMessage.StringInterpolation.appendLiteral(_:)(v52);
      v75[3] = swift_getMetatypeMetadata();
      v75[0] = v48;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10003D444(v75);
      v53._countAndFlagsBits = 0xD000000000000025;
      v53._object = 0x8000000100807A60;
      LogMessage.StringInterpolation.appendLiteral(_:)(v53);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v54 = v73;
      v55 = v66;
      sub_1006371FC(v77, v73, v66, v48);

      v50(v55, v42);
      sub_100007000(v77);
    }

    else
    {
      v57 = v67;
      v50(v66, v42);
      sub_100007000(v77);
      if (qword_10096D140 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for OSLogger();
      sub_1000056A8(v58, qword_1009CE278);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      type metadata accessor for ReadyObserver();
      v59 = swift_allocObject();
      v60 = v68;
      v59[2] = sub_100639004;
      v59[3] = v60;
      v59[4] = sub_1006390E0;
      v59[5] = v57;
      v59[6] = sub_100639224;
      v59[7] = v43;
      swift_beginAccess();

      objc_setAssociatedObject(v47, &unk_10097A040, v59, 0x301);
      swift_endAccess();
    }
  }

  else
  {
    sub_10002A400(a2, a2[3]);
    dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
  }

  return result;
}

uint64_t sub_1006371FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v42 = a4;
  v38 = a1;
  v39 = a3;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for PerformanceTestCase();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v35);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTimeInterval();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for DispatchTime();
  v14 = *(v34 - 8);
  __chkstk_darwin(v34);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v37 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v13 = 300;
  (*(v11 + 104))(v13, enum case for DispatchTimeInterval.milliseconds(_:), v10);
  DispatchTime.advanced(by:)();
  (*(v11 + 8))(v13, v10);
  v20 = *(v14 + 8);
  v36 = v14 + 8;
  v21 = v34;
  v20(v16, v34);
  sub_10002C0AC(v38, v49);
  v22 = v35;
  (*(v7 + 16))(v9, v39, v35);
  v23 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_100005A38(v49, v25 + 16);
  v26 = v41;
  *(v25 + 56) = v41;
  (*(v7 + 32))(v25 + v23, v9, v22);
  *(v25 + v24) = v42;
  aBlock[4] = sub_1006393B8;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008CC898;
  v27 = _Block_copy(aBlock);
  v28 = v26;

  v29 = v40;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  v31 = v43;
  v30 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v32 = v37;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v27);

  (*(v47 + 8))(v31, v30);
  (*(v45 + 8))(v29, v46);
  return (v20)(v19, v21);
}

void sub_100637764(void *a1, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_100637A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = type metadata accessor for PaginatedPagePresenterState();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = (&v32 - v10);
  v12 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v13 = qword_1009CF3E8;
  if (*(a1 + qword_1009CF3E8) != 1 || *(a1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController) && (type metadata accessor for JULoadingViewController(), swift_dynamicCastClass()) || (ArtworkLoader.isFetchingAssets.getter() & 1) != 0)
  {
    v35 = 0;
  }

  else
  {
    v33 = a2;
    dispatch thunk of DiffablePagePresenter.paginationState.getter();
    v31 = v34;
    if ((*(v6 + 88))(v8, v34) == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
    {
      (*(v6 + 96))(v8, v31);
      sub_100007000(v8);
      v35 = 0;
    }

    else
    {
      (*(v6 + 8))(v8, v31);
      v35 = 1;
    }
  }

  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for OSLogger();
  v32 = sub_1000056A8(v33, qword_1009CE278);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2074736554;
  v14._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v15 = PerformanceTestCase.name.getter();
  MetatypeMetadata = &type metadata for String;
  v36[0] = v15;
  v36[1] = v16;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v36);
  v17._object = 0x8000000100807A90;
  v17._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  MetatypeMetadata = swift_getMetatypeMetadata();
  v36[0] = a3;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v36);
  v18._countAndFlagsBits = 0x646165527369202CLL;
  v18._object = 0xEB00000000203A79;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  MetatypeMetadata = &type metadata for Bool;
  LOBYTE(v36[0]) = v35;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v36);
  v19._countAndFlagsBits = 0xD000000000000015;
  v19._object = 0x8000000100807AB0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  v20 = *(a1 + v13);
  MetatypeMetadata = &type metadata for Bool;
  LOBYTE(v36[0]) = v20;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v36);
  v21._object = 0x8000000100807AD0;
  v21._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  v22 = sub_10002849C(&qword_100979948, &qword_1007C0720);
  MetatypeMetadata = sub_10002849C(&unk_100979950, qword_1007C0728);
  v36[0] = v22;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v36);
  v23._countAndFlagsBits = 0xD000000000000014;
  v23._object = 0x8000000100807AF0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  v24 = ArtworkLoader.isFetchingAssets.getter();
  MetatypeMetadata = &type metadata for Bool;
  LOBYTE(v36[0]) = v24 & 1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v36);
  v25._countAndFlagsBits = 0xD000000000000018;
  v25._object = 0x8000000100807B10;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  dispatch thunk of DiffablePagePresenter.paginationState.getter();
  v26 = v34;
  v27 = (*(v6 + 88))(v11, v34);
  v28 = enum case for PaginatedPagePresenterState.preparingNextPage(_:);
  if (v27 == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
  {
    (*(v6 + 96))(v11, v26);
    sub_100007000(v11);
  }

  else
  {
    (*(v6 + 8))(v11, v26);
  }

  MetatypeMetadata = &type metadata for Bool;
  LOBYTE(v36[0]) = v27 == v28;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v36);
  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return v35;
}

uint64_t sub_10063804C(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v48 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PerformanceTestCase();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v55 = &v46 - v10;
  __chkstk_darwin(v11);
  v49 = &v46 - v12;
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  sub_10002C0AC(a2, v61);
  v19 = *(v7 + 16);
  v19(v18, a1, v6);
  sub_10002C0AC(v61, v60);
  v53 = v15;
  v19(v15, v18, v6);
  v20 = *(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v56;
  sub_100005A38(v61, v21 + 24);
  v54 = v7;
  v47 = *(v7 + 32);
  v52 = v21;
  v47(v21 + ((v20 + 64) & ~v20), v18, v6);
  sub_10002C0AC(v51, v59);
  v22 = v49;
  v23 = v48;
  v19(v49, v48, v6);
  v24 = swift_allocObject();
  sub_100005A38(v59, v24 + 16);
  v51 = v24;
  v25 = v24 + ((v20 + 56) & ~v20);
  v26 = v47;
  v47(v25, v22, v6);
  v27 = v55;
  v19(v55, v23, v6);
  v28 = v57;
  v19(v57, v27, v6);
  v29 = (v20 + 24) & ~v20;
  v30 = (v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v56;
  *(v31 + 16) = v56;
  v26(v31 + v29, v55, v6);
  v33 = v28;
  v34 = ObjectType;
  *(v31 + v30) = ObjectType;
  v35 = v32;
  if (sub_100638B48(v35, v33, v34))
  {
    v56 = v35;
    if (qword_10096D140 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for OSLogger();
    sub_1000056A8(v36, qword_1009CE278);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v37._object = 0x8000000100807A40;
    v37._countAndFlagsBits = 0xD000000000000010;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    v58[3] = swift_getMetatypeMetadata();
    v58[0] = v34;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v58);
    v38._countAndFlagsBits = 0xD000000000000025;
    v38._object = 0x8000000100807A60;
    LogMessage.StringInterpolation.appendLiteral(_:)(v38);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v39 = v53;
    sub_100638804(v56, v60, v53);
  }

  else
  {
    v40 = v51;
    if (qword_10096D140 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for OSLogger();
    sub_1000056A8(v41, qword_1009CE278);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    type metadata accessor for ReadyObserver();
    v42 = swift_allocObject();
    v43 = v52;
    v42[2] = sub_100638F84;
    v42[3] = v43;
    v42[4] = sub_1001FE008;
    v42[5] = v40;
    v42[6] = sub_100638FEC;
    v42[7] = v31;
    swift_beginAccess();

    objc_setAssociatedObject(v35, &unk_10097A040, v42, 0x301);
    swift_endAccess();

    v39 = v53;
  }

  sub_100007000(v60);
  v44 = *(v54 + 8);
  v44(v39, v6);
  return (v44)(v57, v6);
}

void sub_100638804(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  if (*(a1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex + 8))
  {
    goto LABEL_11;
  }

  v7 = *(a1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex);
  v8 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers;
  v9 = *(a1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers);
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 >= v10)
  {
LABEL_11:
    sub_10002A400(a2, a2[3]);
    dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
    return;
  }

  v11 = *(a1 + v8);
  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_8;
  }

  if (v7 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v12 = *(v11 + 8 * v7 + 32);
LABEL_8:
  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSLogger();
  sub_1000056A8(v13, qword_1009CE278);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2074736554;
  v14._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v15 = PerformanceTestCase.name.getter();
  v21 = &type metadata for String;
  v20[0] = v15;
  v20[1] = v16;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v20);
  v17._countAndFlagsBits = 0xD00000000000002BLL;
  v17._object = 0x800000010081E330;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v21 = type metadata accessor for TopChartDiffableSegmentViewController(0);
  v20[0] = v12;
  v18 = v12;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v20);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100636954(a3, a2);
}

uint64_t sub_100638B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for TopChartsDiffablePagePresenter.SegmentPresentersState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_overlayViewController) && (type metadata accessor for JULoadingViewController(), swift_dynamicCastClass()))
  {
    v10 = 0;
  }

  else
  {
    TopChartsDiffablePagePresenter.segmentPresentersState.getter();
    v10 = TopChartsDiffablePagePresenter.SegmentPresentersState.isComplete.getter();
    (*(v7 + 8))(v9, v6);
  }

  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for OSLogger();
  v22[1] = sub_1000056A8(v11, qword_1009CE278);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x2074736554;
  v12._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  v13 = PerformanceTestCase.name.getter();
  MetatypeMetadata = &type metadata for String;
  v23[0] = v13;
  v23[1] = v14;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v23);
  v15._object = 0x8000000100807A90;
  v15._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  MetatypeMetadata = swift_getMetatypeMetadata();
  v23[0] = a3;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v23);
  v16._countAndFlagsBits = 0x646165527369202CLL;
  v16._object = 0xEB00000000203A79;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  MetatypeMetadata = &type metadata for Bool;
  LOBYTE(v23[0]) = v10 & 1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v23);
  v17._object = 0x800000010081C520;
  v17._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v18 = sub_10002849C(&qword_100979948, &qword_1007C0720);
  MetatypeMetadata = sub_10002849C(&unk_100979950, qword_1007C0728);
  v23[0] = v18;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v23);
  v19._countAndFlagsBits = 0xD00000000000001ALL;
  v19._object = 0x800000010081E2F0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  MetatypeMetadata = v6;
  sub_1000056E0(v23);
  TopChartsDiffablePagePresenter.segmentPresentersState.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v23);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return v10 & 1;
}

void sub_100638F84()
{
  v1 = *(type metadata accessor for PerformanceTestCase() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  sub_100638804(v2, (v0 + 24), v3);
}

uint64_t sub_10063901C()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  sub_100007000((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1006390E0(uint64_t a1)
{
  v3 = *(type metadata accessor for PerformanceTestCase() - 8);
  v4 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1001FDAD0(a1, (v1 + 16), v4);
}

uint64_t sub_100639154()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10063923C(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PerformanceTestCase() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_1006392E0()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100007000((v0 + 16));

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1006393D0(uint64_t (*a1)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PerformanceTestCase() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v1 + 56);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + 16, v4, v1 + v3, v5);
}

char *sub_100639478(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore30SearchActionCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC8AppStore30SearchActionCollectionViewCell_actionContentView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for SearchActionContentView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for SearchActionCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v18 = [v16 contentView];
  [v18 addSubview:*&v16[OBJC_IVAR____TtC8AppStore30SearchActionCollectionViewCell_actionContentView]];

  return v16;
}

id sub_100639864()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchActionCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchActionCollectionViewCell(uint64_t a1)
{
  result = qword_100990358;
  if (!qword_100990358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10063999C(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v4, a3);
  type metadata accessor for ArtworkView();
  sub_100639A8C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_100639A8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100639AD4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v24 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007B0B70;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B15F0;
  type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0x6574616C756D6953;
  *(v7 + 64) = 0xEF65676E61684320;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_100639DF8;
  *(v7 + 112) = 0;
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v5, v2);
  v26 = v8;
  v27 = v10;
  AnyHashable.init<A>(_:)();
  *(v6 + 32) = v7;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v14 = swift_allocObject();
  v14[7] = 0x6C6C412077656956;
  v14[8] = 0xE800000000000000;
  v14[10] = 0;
  v14[11] = 0;
  v14[9] = 0;
  v14[12] = sub_10063B254;
  v14[13] = v13;

  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;

  v18 = v24;
  v11(v5, v24);
  v26 = v15;
  v27 = v17;
  AnyHashable.init<A>(_:)();

  *(v6 + 40) = v14;
  type metadata accessor for DebugSection();
  v19 = swift_allocObject();
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  v11(v5, v18);
  v19[2] = v20;
  v19[3] = v22;
  v19[4] = 0;
  v19[5] = 0xE000000000000000;
  v19[6] = v6;
  result = v25;
  *(v25 + 32) = v19;
  return result;
}

void sub_100639DF8()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 postNotificationName:ASDAppCapabilitiesDidChangeNotification object:0];
}

void sub_100639E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10063B25C(a3);
  }
}

uint64_t sub_100639EC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v121 = a2;
  v3 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v3 - 8);
  v132 = v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for UUID();
  v133 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessibilityMetadata();
  __chkstk_darwin(v6 - 8);
  v120 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Shelf.ContentsMetadata();
  v116 = *(v118 - 8);
  __chkstk_darwin(v118);
  v119 = v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Shelf.PresentationHints();
  __chkstk_darwin(v114);
  v117 = v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for ShelfBackground();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v115 = v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for ShelfHorizontalScrollTargetBehavior();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v113 = v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strategy = type metadata accessor for IncompleteShelfFetchStrategy();
  v106 = *(Strategy - 8);
  __chkstk_darwin(Strategy);
  v127 = v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v13 - 8);
  v123 = v99 - v14;
  v15 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v15 - 8);
  v126 = v99 - v16;
  v17 = sub_10002849C(&qword_10097BA20, &unk_1007C37E0);
  __chkstk_darwin(v17 - 8);
  v125 = v99 - v18;
  v19 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v19 - 8);
  v108 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v124 = v99 - v22;
  v23 = type metadata accessor for ShelfHeader.Configuration();
  __chkstk_darwin(v23 - 8);
  v102 = v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&qword_1009903A0, &qword_1007DB090);
  __chkstk_darwin(v25 - 8);
  v100 = v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v101 = v99 - v28;
  v29 = sub_10002849C(&qword_1009903A8, &unk_1007DB098);
  __chkstk_darwin(v29 - 8);
  v31 = v99 - v30;
  v32 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v32 - 8);
  v34 = v99 - v33;
  v35 = type metadata accessor for Shelf.ContentType();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = *a1;
  v39 = a1[1];
  v144 = 0;
  v142 = 0u;
  v143 = 0u;
  v40 = *(v36 + 104);
  v103 = v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40();
  v41 = *(v36 + 56);
  v104 = v34;
  v41(v34, 1, 1, v35);
  v42 = type metadata accessor for ShelfMarker();
  v43 = *(*(v42 - 8) + 56);
  v105 = v31;
  v43(v31, 1, 1, v42);
  *&v136 = 0;
  *(&v136 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  *&v136 = 0xD000000000000018;
  *(&v136 + 1) = 0x800000010081E410;
  v44 = objc_opt_self();
  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 isCapableOfAction:0 capability:v45];

  if (v46)
  {
    v47 = 7562585;
  }

  else
  {
    v47 = 28494;
  }

  if (v46)
  {
    v48 = 0xE300000000000000;
  }

  else
  {
    v48 = 0xE200000000000000;
  }

  v49 = v48;
  String.append(_:)(*&v47);

  v139 = v136;
  *&v136 = 0x203A6E65704FLL;
  *(&v136 + 1) = 0xE600000000000000;
  v50 = String._bridgeToObjectiveC()();
  v51 = [v44 isCapableOfAction:3 capability:v50];

  if (v51)
  {
    v52 = 7562585;
  }

  else
  {
    v52 = 28494;
  }

  if (v51)
  {
    v53 = 0xE300000000000000;
  }

  else
  {
    v53 = 0xE200000000000000;
  }

  v54 = v53;
  String.append(_:)(*&v52);

  v99[1] = v136;
  v140 = v136;
  v99[0] = *(&v136 + 1);
  *&v136 = 0x203A657461647055;
  *(&v136 + 1) = 0xE800000000000000;
  v99[5] = v38;
  v99[4] = v39;
  v55 = String._bridgeToObjectiveC()();
  v56 = [v44 isCapableOfAction:1 capability:v55];

  if (v56)
  {
    v57 = 7562585;
  }

  else
  {
    v57 = 28494;
  }

  v58 = v123;
  if (v56)
  {
    v59 = 0xE300000000000000;
  }

  else
  {
    v59 = 0xE200000000000000;
  }

  v60 = v59;
  String.append(_:)(*&v57);

  v99[3] = v136;
  v141 = v136;
  v99[2] = *(&v136 + 1);
  v145 = _swiftEmptyArrayStorage;
  sub_1001442CC(0, 3, 0);
  v61 = v145;

  v62 = v130;
  UUID.init()();
  v63 = UUID.uuidString.getter();
  v65 = v64;
  v66 = *(v133 + 8);
  v133 += 8;
  v122 = v66;
  v66(v62, v131);
  v134 = v63;
  v135 = v65;
  AnyHashable.init<A>(_:)();
  static ActionMetrics.notInstrumented.getter();
  v67 = type metadata accessor for ImpressionMetrics();
  v68 = *(v67 - 8);
  v129 = *(v68 + 56);
  v128 = v68 + 56;
  v129(v58, 1, 1, v67);
  v69 = type metadata accessor for Action();
  swift_allocObject();
  v70 = Action.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)();
  v145 = v61;
  v72 = v61[2];
  v71 = v61[3];
  if (v72 >= v71 >> 1)
  {
    sub_1001442CC((v71 > 1), v72 + 1, 1);
    v61 = v145;
  }

  v137 = v69;
  v73 = sub_10063BA9C(&qword_100992FB0, &type metadata accessor for Action, &protocol conformance descriptor for Action);
  v138 = v73;
  *&v136 = v70;
  v61[2] = v72 + 1;
  sub_100005A38(&v136, &v61[5 * v72 + 4]);

  v74 = v130;
  UUID.init()();
  v75 = UUID.uuidString.getter();
  v77 = v76;
  v122(v74, v131);
  v134 = v75;
  v135 = v77;
  AnyHashable.init<A>(_:)();
  static ActionMetrics.notInstrumented.getter();
  v129(v58, 1, 1, v67);
  swift_allocObject();
  v78 = Action.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)();
  v145 = v61;
  v80 = v61[2];
  v79 = v61[3];
  v81 = v58;
  if (v80 >= v79 >> 1)
  {
    v97 = v78;
    sub_1001442CC((v79 > 1), v80 + 1, 1);
    v78 = v97;
    v81 = v58;
    v61 = v145;
  }

  v137 = v69;
  v138 = v73;
  *&v136 = v78;
  v61[2] = v80 + 1;
  sub_100005A38(&v136, &v61[5 * v80 + 4]);

  v82 = v130;
  UUID.init()();
  v83 = UUID.uuidString.getter();
  v85 = v84;
  v122(v82, v131);
  v134 = v83;
  v135 = v85;
  AnyHashable.init<A>(_:)();
  static ActionMetrics.notInstrumented.getter();
  v129(v81, 1, 1, v67);
  swift_allocObject();
  v86 = Action.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)();
  v145 = v61;
  v87 = v81;
  v89 = v61[2];
  v88 = v61[3];
  if (v89 >= v88 >> 1)
  {
    v98 = v86;
    sub_1001442CC((v88 > 1), v89 + 1, 1);
    v86 = v98;
    v61 = v145;
  }

  v137 = v69;
  v138 = v73;
  *&v136 = v86;
  v61[2] = v89 + 1;
  sub_100005A38(&v136, &v61[5 * v89 + 4]);
  swift_arrayDestroy();
  v90 = type metadata accessor for ShelfHeader.ArtworkType();
  v91 = *(*(v90 - 8) + 56);
  v91(v101, 1, 1, v90);
  v91(v100, 1, 1, v90);

  ShelfHeader.Configuration.init(eyebrowColor:eyebrowImageColor:titleColor:titleImageColor:subtitleColor:accessoryColor:includeSeparator:includeTrailingArtwork:prefersShelfHeader:)();
  type metadata accessor for ShelfHeader();
  swift_allocObject();
  v133 = ShelfHeader.init(eyebrow:eyebrowArtwork:eyebrowArtworkSize:eyebrowArtworkType:eyebrowAction:eyebrowTrailingArtwork:title:titleArtwork:titleArtworkType:titleAction:subtitle:trailingArtwork:accessoryAction:configuration:)();
  v92 = type metadata accessor for URL();
  v93 = *(*(v92 - 8) + 56);
  v93(v124, 1, 1, v92);
  v94 = type metadata accessor for ShelfFooterStyle();
  (*(*(v94 - 8) + 56))(v125, 1, 1, v94);
  v95 = type metadata accessor for Date();
  (*(*(v95 - 8) + 56))(v126, 1, 1, v95);
  v129(v87, 1, 1, v67);
  v93(v108, 1, 1, v92);
  (*(v106 + 104))(v127, enum case for IncompleteShelfFetchStrategy.onPageLoad(_:), Strategy);
  (*(v109 + 104))(v113, enum case for ShelfHorizontalScrollTargetBehavior.viewAligned(_:), v110);
  (*(v111 + 104))(v115, enum case for ShelfBackground.none(_:), v112);
  sub_10002849C(&qword_1009903B0, &qword_1007DB0A8);
  swift_allocObject();
  AsyncEvent.init()();
  *&v136 = _swiftEmptyArrayStorage;
  sub_10063BA9C(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  sub_10002849C(&qword_10097DB30, qword_1007DB0B0);
  sub_10063BAE4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v116 + 104))(v119, enum case for Shelf.ContentsMetadata.none(_:), v118);
  AccessibilityMetadata.init(label:roleDescription:)();
  type metadata accessor for Shelf();
  swift_allocObject();
  result = Shelf.init(id:contentType:placeholderContentType:marker:items:header:url:mergeWhenFetched:batchGroup:fetchStrategy:footerTitle:footerAction:footerStyle:isHidden:isHorizontal:horizontalScrollTargetBehavior:isPersonalized:rowsPerColumn:background:onShouldRemoveModel:removeModelEvents:presentationHints:contentsMetadata:nextPreferredContentRefreshDate:impressionMetrics:refreshUrl:pageChangeMetrics:accessibilityMetadata:)();
  *v121 = result;
  return result;
}

id sub_10063B1FC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppCapabilitiesSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10063B25C(uint64_t a1)
{
  v46 = a1;
  v1 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin(v1);
  v45 = &v33 - v2;
  v3 = sub_10002849C(&qword_100990398, qword_1007DFCC0);
  __chkstk_darwin(v3 - 8);
  v44 = &v33 - v4;
  v5 = type metadata accessor for PageMetrics();
  __chkstk_darwin(v5 - 8);
  v43 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for FlowOrigin();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for FlowAnimationBehavior();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for FlowPresentationContext();
  v9 = *(v34 - 8);
  __chkstk_darwin(v34);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - v17;
  v19 = type metadata accessor for FlowPage();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  *&v51 = 0xD00000000000001ELL;
  *(&v51 + 1) = "utomatic";

  sub_100639EC4(&v51, v54);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  *&v51 = 0xD00000000000001CLL;
  *(&v51 + 1) = "uses-non-webkit-browser-engine";

  sub_100639EC4(&v51, v54);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  swift_arrayDestroy();
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  (*(v20 + 104))(v22, enum case for FlowPage.page(_:), v19);
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = type metadata accessor for ReferrerData();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v49 = 0u;
  v50 = 0u;
  static ActionMetrics.notInstrumented.getter();
  (*(v9 + 104))(v38, enum case for FlowPresentationContext.infer(_:), v34);
  (*(v36 + 104))(v40, enum case for FlowAnimationBehavior.infer(_:), v37);
  (*(v39 + 104))(v42, enum case for FlowOrigin.inapp(_:), v41);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v25 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v51 = 0u;
  v52 = 0u;
  static PageMetrics.notInstrumented.getter();
  v26 = type metadata accessor for JSONContext();
  (*(*(v26 - 8) + 56))(v44, 1, 1, v26);
  v27 = type metadata accessor for GenericPage();
  swift_allocObject();
  v28 = GenericPage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)();
  *(&v52 + 1) = v27;
  *&v51 = v28;
  FlowAction.setPageData(_:)();
  sub_10003D444(&v51);
  type metadata accessor for BaseObjectGraph();
  v30 = v45;
  v29 = v46;
  v31 = v48;
  inject<A, B>(_:from:)();
  sub_1005F9C8C(v25, 1, v29, v30);

  return (*(v47 + 8))(v30, v31);
}

uint64_t sub_10063BA9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10063BAE4()
{
  result = qword_10097DB38;
  if (!qword_10097DB38)
  {
    sub_10002D1A8(&qword_10097DB30, qword_1007DB0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DB38);
  }

  return result;
}

char *sub_10063BB48(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_isFirstSetup] = 1;
  v12 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_segmentedControl] = v12;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_segmentedControl]];

  return v17;
}

double sub_10063BE68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v35 = type metadata accessor for ItemLayoutContext();
  v38 = *(v35 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v35);
  v34 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PageTabs();
  sub_10063CD04(&qword_100990400, &type metadata accessor for PageTabs, &protocol conformance descriptor for PageTabs);
  v39 = a1;
  ItemLayoutContext.typedModel<A>(as:)();
  v7 = v45;
  if (v45)
  {
    v33 = *(v3 + OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_segmentedControl);
    [v33 removeAllSegments];
    v8 = PageTabs.tabs.getter();
    v9 = v8;
    v37 = v3;
    v25 = v7;
    if (v8 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v11 = 0;
      v31 = v9 & 0xFFFFFFFFFFFFFF8;
      v32 = v9 & 0xC000000000000001;
      v27 = v5 + 7;
      v28 = v38 + 16;
      v26 = v38 + 32;
      v29 = i;
      v30 = v9;
      v12 = v35;
      while (v32)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        v44 = v13;
        v43 = sub_1001C0570();
        v14 = PageTab.title.getter();
        v41 = v15;
        v42 = v14;
        v16 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v17 = swift_allocObject();
        swift_weakInit();
        v18 = swift_allocObject();
        swift_weakInit();
        v19 = v38;
        v20 = *(v38 + 16);
        v40 = v5;
        v5 = v34;
        v20(v34, v39, v12);
        v21 = (*(v19 + 80) + 40) & ~*(v19 + 80);
        v22 = (v27 + v21) & 0xFFFFFFFFFFFFFFF8;
        v23 = swift_allocObject();
        *(v23 + 2) = v16;
        *(v23 + 3) = v17;
        *(v23 + 4) = v18;
        v9 = v30;
        (*(v19 + 32))(&v23[v21], v5, v12);
        *&v23[v22] = v11;
        v24 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        [v33 insertSegmentWithAction:v24 atIndex:v11 animated:{0, v25, v26}];

        ++v11;
        if (v44 == v29)
        {
          goto LABEL_15;
        }
      }

      if (v11 >= *(v31 + 16))
      {
        goto LABEL_13;
      }

      v5 = *(v9 + 8 * v11 + 32);

      v13 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    sub_10063C22C(v25, v39);
  }

  return result;
}