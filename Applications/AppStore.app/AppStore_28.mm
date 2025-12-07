id sub_10031DCD8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppSearchResultContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10031DDC0()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia) == 1)
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    return 0;
  }
}

void sub_10031DE14(void *a1)
{
  sub_100324190(a1);
}

uint64_t (*sub_10031DE4C(uint64_t **a1))()
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
  v2[4] = sub_10031A268(v2);
  return sub_1000B4CAC;
}

double sub_10031DEBC()
{
  swift_beginAccess();

  return result;
}

double sub_10031DF04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_10031DFBC()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_10031E018(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

uint64_t sub_10031E0D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchTagsRibbonView(0);
  sub_100324304(&qword_1009912D0, 255, type metadata accessor for SearchTagsRibbonView, &unk_1007B1D48);
  return NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
}

uint64_t sub_10031E184(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10031E1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10031E244(uint64_t *a1, uint64_t a2))()
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

uint64_t sub_10031E2E0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots);
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

uint64_t sub_10031E49C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_100324304(&qword_1009806B8, a2, type metadata accessor for AppSearchResultContentView, &unk_1007C7748);
  result = sub_100324304(&unk_1009806C0, v3, type metadata accessor for AppSearchResultContentView, &unk_1007C7778);
  *(a1 + 32) = result;
  return result;
}

void *sub_10031E520(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100973C90, qword_1007B55A0);
  __chkstk_darwin(v2 - 8);
  v169 = &v166 - v3;
  v4 = type metadata accessor for LockupMediaLayout.DisplayType();
  v196 = *(v4 - 8);
  v197 = v4;
  __chkstk_darwin(v4);
  v6 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v170 = &v166 - v8;
  __chkstk_darwin(v9);
  v190 = &v166 - v10;
  v11 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v166 - v12;
  v14 = sub_10002849C(&unk_10096FC10, &unk_1007B10C0);
  v194 = *(v14 - 8);
  v195 = v14;
  __chkstk_darwin(v14);
  v193 = &v166 - v15;
  v16 = type metadata accessor for SmallSearchLockupLayout();
  v204 = *(v16 - 8);
  v205 = v16;
  __chkstk_darwin(v16);
  v203 = &v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  *&v210 = *(v211 - 8);
  __chkstk_darwin(v211);
  v192 = &v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LabelPlaceholderCompatibility();
  v200 = *(v19 - 8);
  v201 = v19;
  __chkstk_darwin(v19);
  v199 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OfferButtonMetrics();
  v218 = *(v21 - 8);
  v219 = v21;
  __chkstk_darwin(v21);
  v23 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v217 = &v166 - v25;
  v221 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v216 = *(v221 - 1);
  __chkstk_darwin(v221);
  v202 = &v166 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v222 = &v166 - v28;
  v29 = sub_10002849C(&unk_1009912C0, &unk_1007B4130);
  __chkstk_darwin(v29 - 8);
  v191 = &v166 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v220 = &v166 - v32;
  v33 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v33 - 8);
  v34 = type metadata accessor for PageGrid();
  v198 = *(v34 - 8);
  __chkstk_darwin(v34);
  v215 = &v166 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ScreenshotsDisplayStyle();
  v206 = *(v36 - 8);
  v207 = v36;
  __chkstk_darwin(v36);
  v38 = &v166 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppSearchResult();
  sub_100324304(&qword_1009806D0, 255, &type metadata accessor for AppSearchResult, &protocol conformance descriptor for SearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v40 = v259[0];
  if (!v259[0])
  {
    return result;
  }

  v167 = v6;
  v41 = AppSearchResult.lockup.getter();
  v212 = v38;
  v213 = v41;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  PageGrid.init(from:breakpointOverrides:)();
  PageGrid.componentMeasuringSize(spanning:)();
  v43 = v42;
  v45 = v44;
  v173 = v40;
  v46 = dispatch thunk of AppSearchResult.shouldDisplayMedia.getter();
  v174 = v34;
  if (v46)
  {
    v189 = ScreenshotsDisplayStyle.shouldShowScreenshots.getter();
  }

  else
  {
    v189 = 0;
  }

  v47 = v210;

  v179 = Lockup.title.getter();
  v180 = v48;
  v49 = Lockup.subtitle.getter();
  v181 = v50;
  v182 = v49;
  v51 = Lockup.searchAdOpportunity.getter();

  if (v51 && (v52 = SearchAdOpportunity.searchAd.getter(), , v52))
  {
    v53 = SearchAd.advertisingText.getter();
    v183 = v54;
    v184 = v53;
  }

  else
  {
    v183 = 0;
    v184 = 0;
  }

  v55 = v211;
  v214 = MixedMediaLockup.metadataRibbonItems.getter();
  v56 = v220;
  static MetadataRibbonViewLayout.Metrics.standard.getter();
  (*(v47 + 56))(v56, 0, 1, v55);
  v209 = MixedMediaLockup.searchTagRibbonItems.getter();
  v168 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v57 = v259[5];
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v58 = v221;
  v59 = sub_1000056A8(v221, qword_1009CDC00);
  v186 = *(v216 + 16);
  v187 = v216 + 16;
  v186(v222, v59, v58);
  v60 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v171 = v13;
  v172 = a1;
  if (v60)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v61 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v61 = qword_100991028;
  }

  v62 = v219;
  v63 = sub_1000056A8(v219, v61);
  v64 = v218;
  (*(v218 + 16))(v23, v63, v62);
  (*(v64 + 32))(v217, v23, v62);
  v65 = [v57 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v185 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v188 = LayoutViewPlaceholder.init(representing:)();
  v66 = objc_opt_self();
  v177 = v66;
  v67 = [v66 preferredFontForTextStyle:UIFontTextStyleBody];
  v68 = type metadata accessor for Feature();
  v259[3] = v68;
  v69 = sub_100324304(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v259[4] = v69;
  v176 = v69;
  v70 = sub_1000056E0(v259);
  v71 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v72 = *(v68 - 8);
  v73 = *(v72 + 104);
  v178 = v72 + 104;
  v175 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v73(v70, enum case for Feature.measurement_with_labelplaceholder(_:), v68);
  isFeatureEnabled(_:)();
  sub_100007000(v259);
  v74 = v199;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v208 = v57;
  v75 = v201;
  v200 = *(v200 + 8);
  (v200)(v74, v201);
  v76 = [v66 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v258[3] = v68;
  v258[4] = v69;
  v77 = sub_1000056E0(v258);
  v73(v77, v71, v68);
  isFeatureEnabled(_:)();
  sub_100007000(v258);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v78 = v200;
  (v200)(v74, v75);
  v79 = [v177 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v257[3] = v68;
  v257[4] = v176;
  v80 = sub_1000056E0(v257);
  v73(v80, v175, v68);
  isFeatureEnabled(_:)();
  sub_100007000(v257);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v78(v74, v75);
  v81 = v214;
  if ((sub_1000AE138() & (v81 != 0)) == 1)
  {
    v82 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
    v83 = v208;
    v84 = TraitEnvironmentPlaceholder.init(traitCollection:)();
    v85 = v191;
    sub_100031660(v220, v191, &unk_1009912C0, &unk_1007B4130);
    v86 = v210;
    v87 = *(v210 + 48);
    v88 = v211;
    if (v87(v85, 1, v211) == 1)
    {
      v89 = v192;
      static MetadataRibbonViewLayout.Metrics.standard.getter();
      if (v87(v85, 1, v88) != 1)
      {
        sub_10002B894(v85, &unk_1009912C0, &unk_1007B4130);
      }
    }

    else
    {
      v89 = v192;
      (*(v86 + 32))(v192, v85, v88);
    }

    v92 = v84;
    sub_1000AD91C(v214, v89, v92, v43, v45);

    (*(v86 + 8))(v89, v88);
    v90 = v185;
    swift_allocObject();
    v91 = LayoutViewPlaceholder.init(measurements:)();
  }

  else
  {
    v90 = v185;
    swift_allocObject();
    v91 = LayoutViewPlaceholder.init(representing:)();
  }

  v93 = v91;

  v94 = v209;
  if ((sub_1000AE138() & (v94 != 0)) == 1)
  {
    sub_100046528(v94, v168 & 1, v43, v45);
    swift_allocObject();
    v95 = LayoutViewPlaceholder.init(measurements:)();
  }

  else
  {
    swift_allocObject();
    v95 = LayoutViewPlaceholder.init(representing:)();
  }

  v96 = v95;
  v186(v202, v222, v221);
  v256 = &protocol witness table for LayoutViewPlaceholder;
  v255 = v90;
  v97 = v90;
  v98 = v188;
  v254 = v188;
  v253 = 0;
  *&v251[40] = 0u;
  v252 = 0u;
  sub_10002C0AC(v259, v251);
  sub_10002C0AC(v258, &v250);
  v249 = 0;
  v247 = 0u;
  v248 = 0u;
  v246 = 0;
  v244 = 0u;
  v245 = 0u;

  v99 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v243 = &protocol witness table for LayoutViewPlaceholder;
  v242 = v97;
  v241 = v99;
  v240 = 0;
  v238 = 0u;
  v239 = 0u;
  v237 = 0;
  v235 = 0u;
  v236 = 0u;
  v234 = 0;
  v232 = 0u;
  v233 = 0u;
  v231 = 0;
  v230 = 0u;
  *&v229[40] = 0u;
  sub_10002C0AC(v257, v229);
  v228 = &protocol witness table for LayoutViewPlaceholder;
  v227 = v97;
  v225 = &protocol witness table for LayoutViewPlaceholder;
  v226 = v93;
  v224 = v97;
  v223 = v96;
  v100 = v203;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  v101 = type metadata accessor for TraitEnvironmentPlaceholder();
  v102 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v103 = swift_allocObject();
  v210 = xmmword_1007B0B70;
  *(v103 + 16) = xmmword_1007B0B70;
  v104 = v208;
  *(v103 + 32) = v208;
  v105 = v104;
  v211 = v101;
  v106 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_100324304(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v107 = v205;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v204 + 8))(v100, v107);
  sub_100007000(v257);
  sub_100007000(v258);
  sub_100007000(v259);
  (*(v218 + 8))(v217, v219);
  (*(v216 + 8))(v222, v221);
  sub_10002B894(v220, &unk_1009912C0, &unk_1007B4130);
  if ((v189 & 1) == 0)
  {

    (*(v198 + 8))(v215, v174);
    return (*(v206 + 8))(v212, v207);
  }

  v108 = v193;
  static StandardSearchResultContentViewMetrics.bottomMargin.getter();
  swift_getKeyPath();
  v109 = v172;
  ItemLayoutContext.subscript.getter();

  v110 = v259[0];
  v111 = swift_allocObject();
  *(v111 + 16) = v210;
  *(v111 + 32) = v110;
  v112 = v110;
  v113 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_1000320F0();
  v114 = v195;
  dispatch thunk of AnyDimension.rawValue(in:)();

  (*(v194 + 8))(v108, v114);
  v222 = MixedMediaLockup.alignedRegionArtwork.getter();
  v115 = MixedMediaLockup.alignedRegionVideo.getter();
  v116 = MixedMediaLockup.screenshots.getter();
  if (v116 >> 62)
  {
    v117 = v116;
    v118 = _CocoaArrayWrapper.endIndex.getter();
    v116 = v117;
    if (v118)
    {
      goto LABEL_34;
    }

LABEL_40:

    v102 = 0;
    goto LABEL_41;
  }

  if (!*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

LABEL_34:
  if ((v116 & 0xC000000000000001) != 0)
  {
    v102 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_76;
    }

    v102 = *(v116 + 32);
  }

LABEL_41:
  v119 = MixedMediaLockup.trailers.getter();
  if (v119 >> 62)
  {
    v120 = v119;
    v121 = _CocoaArrayWrapper.endIndex.getter();
    v119 = v120;
    if (v121)
    {
      goto LABEL_43;
    }

LABEL_48:

    v221 = 0;
    goto LABEL_49;
  }

  if (!*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

LABEL_43:
  if ((v119 & 0xC000000000000001) != 0)
  {
    v221 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_78;
    }

    v221 = *(v119 + 32);
  }

LABEL_49:
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v122 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v98 = v259[0];
  sub_1004BF564(v171);

  v109 = MixedMediaLockup.alignedRegionArtwork.getter();
  v112 = MixedMediaLockup.alignedRegionVideo.getter();
  v123 = MixedMediaLockup.screenshots.getter();
  if (v123 >> 62)
  {
    v124 = v123;
    v125 = _CocoaArrayWrapper.endIndex.getter();
    v123 = v124;
    v113 = v212;
    if (v125)
    {
LABEL_51:
      if ((v123 & 0xC000000000000001) == 0)
      {
        if (!*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_80;
        }

        v98 = *(v123 + 32);

        goto LABEL_54;
      }

LABEL_76:
      v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_54:

      goto LABEL_57;
    }
  }

  else
  {
    v113 = v212;
    if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }
  }

  v98 = 0;
LABEL_57:
  v126 = MixedMediaLockup.trailers.getter();
  if (v126 >> 62)
  {
    v129 = v126;
    v130 = _CocoaArrayWrapper.endIndex.getter();
    v126 = v129;
    v220 = v102;
    if (v130)
    {
LABEL_59:
      if ((v126 & 0xC000000000000001) == 0)
      {
        if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v128 = *(v126 + 32);

LABEL_62:

          goto LABEL_65;
        }

LABEL_80:
        __break(1u);
LABEL_81:
        v218 = _CocoaArrayWrapper.endIndex.getter();
        if (v98)
        {
          goto LABEL_69;
        }

        goto LABEL_82;
      }

LABEL_78:
      v128 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_62;
    }
  }

  else
  {
    v127 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v220 = v102;
    if (v127)
    {
      goto LABEL_59;
    }
  }

  v128 = 0;
LABEL_65:
  v131 = ScreenshotsDisplayStyle.shouldShowScreenshots.getter();
  v219 = v115;
  if ((v131 & 1) == 0)
  {

    v135 = v196;
    v136 = v190;
    (*(v196 + 104))(v190, enum case for LockupMediaLayout.DisplayType.none(_:), v197);
LABEL_72:
    v139 = v171;
    v140 = v198;
LABEL_104:
    type metadata accessor for LockupMediaView(0);
    v164 = sub_100079F24();
    swift_getObjectType();
    v165 = v212;
    sub_1005B8730(v222, v219, v220, v221, v139, v136, v164, v212, v43, v45);

    swift_unknownObjectRelease();

    (*(v135 + 8))(v136, v197);
    sub_10002B894(v139, &unk_1009732A0, &unk_1007B4FE0);
    (*(v140 + 8))(v215, v174);
    return (*(v206 + 8))(v165, v207);
  }

  if (v112 | v109)
  {
    v137 = v170;
    AspectRatio.init(_:_:)();

    v135 = v196;
    v138 = v197;
    (*(v196 + 104))(v137, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v197);
    v136 = v190;
    (*(v135 + 32))(v190, v137, v138);
    goto LABEL_72;
  }

  v133 = sub_1001B9B24(v98, v128, 0, 1, v132);
  v112 = v133;
  v113 = (v133 >> 62);
  if (v133 >> 62)
  {
    goto LABEL_81;
  }

  v218 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v98)
  {
LABEL_69:
    v134 = Screenshots.mediaPlatform.getter();
    goto LABEL_83;
  }

LABEL_82:
  v134 = 0;
LABEL_83:
  v141 = sub_1001B9E6C(v134);

  LODWORD(v216) = v141;
  if (v98)
  {
    v142 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v142 = 0;
  }

  v144 = v206;
  v143 = v207;
  v145 = v169;
  (*(v206 + 16))(v169, v212, v207);
  (*(v144 + 56))(v145, 0, 1, v143);
  v146 = sub_1001BA394(v142, v145);

  sub_10002B894(v145, &unk_100973C90, qword_1007B55A0);
  if (v113)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v147 = v167;
    if (result)
    {
      goto LABEL_88;
    }

LABEL_94:

    goto LABEL_95;
  }

  result = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v147 = v167;
  if (!result)
  {
    goto LABEL_94;
  }

LABEL_88:
  if ((v112 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_91:

    v148 = dispatch thunk of Artwork.isLandscape.getter();

    if (v148)
    {

      v135 = v196;
      v149 = v197;
      v150 = v170;
      (*(v196 + 104))(v170, enum case for LockupMediaLayout.DisplayType.landscape(_:), v197);
LABEL_103:
      v136 = v190;
      v163 = v171;
      v140 = v198;
      (*(v135 + 32))(v190, v150, v149);
      v139 = v163;
      goto LABEL_104;
    }

LABEL_95:
    v151 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v152 = v146;
    v153 = v196;
    v154 = v147;
    v155 = v147;
    v149 = v197;
    v217 = *(v196 + 104);
    (v217)(v154, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v197);
    v156 = LockupMediaLayout.DisplayType.numberOfViews.getter();
    v214 = *(v153 + 8);
    v214(v155, v149);
    if (((v218 >= v156) & v152) != 0 || (v151 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v217)(v155, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v149), v157 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v158 = v214, v214(v155, v149), ((v218 >= v157) & v216) != 0) || (v151 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v217)(v155, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v149), v159 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v158(v155, v149), v218 >= v159))
    {
    }

    else
    {
      v151 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      (v217)(v155, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v149);
      v160 = LockupMediaLayout.DisplayType.numberOfViews.getter();

      v158(v155, v149);
      if (v218 != v160)
      {
        v161 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v150 = v170;
        v162 = v170;
LABEL_102:
        (v217)(v162, v161, v149);
        v135 = v196;
        goto LABEL_103;
      }
    }

    v150 = v170;
    v162 = v170;
    v161 = v151;
    goto LABEL_102;
  }

  if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_91;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003200E8(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v12 = sub_10002849C(&unk_10096FC10, &unk_1007B10C0);
  v156 = *(v12 - 8);
  v157 = v12;
  __chkstk_darwin(v12);
  v155 = &v123 - v13;
  v14 = type metadata accessor for SmallSearchLockupLayout();
  v153 = *(v14 - 8);
  v154 = v14;
  __chkstk_darwin(v14);
  v152 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  *&v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v145 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LabelPlaceholderCompatibility();
  v149 = *(v17 - 8);
  v150 = v17;
  __chkstk_darwin(v17);
  v148 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OfferButtonMetrics();
  v163 = *(v19 - 8);
  v164 = v19;
  __chkstk_darwin(v19);
  v21 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v162 = &v123 - v23;
  v166 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v161 = *(v166 - 8);
  __chkstk_darwin(v166);
  v151 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v167 = &v123 - v26;
  v27 = sub_10002849C(&unk_1009912C0, &unk_1007B4130);
  __chkstk_darwin(v27 - 8);
  v144 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v165 = &v123 - v30;
  v31 = type metadata accessor for ScreenshotsDisplayStyle();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = (&v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v35 - 8);
  sub_10002C0AC(a1, v204);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for AppSearchResult();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v146 = v203[0];
  v147 = v34;
  AppSearchResult.lockup.getter();

  if (Lockup.icon.getter())
  {
    v141 = a2;
    v142 = v32;
    v140 = v31;
    v143 = v6;
    v37 = *&v6[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_lockupView];
    v38 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v39 = qword_10096EE80;
    v40 = *(v37 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    if (v39 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for SmallLockupLayout.Metrics();
    sub_1000056A8(v41, qword_1009D3798);
    SmallLockupLayout.Metrics.artworkSize.getter();
    [v40 contentMode];
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v40 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    v42 = *(v37 + v38);
    type metadata accessor for ArtworkView();
    sub_100324304(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v43 = v42;
    a2 = v141;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

    v32 = v142;
    v7 = v143;
    v31 = v140;
  }

  v44 = *(*&v7[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_lockupView] + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
  sub_10032A784(a1, a2);

  v45 = v147;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  if ((dispatch thunk of AppSearchResult.shouldDisplayMedia.getter() & 1) == 0 || (ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
  {

    goto LABEL_50;
  }

  v140 = v31;
  Lockup.title.getter();
  v128 = v46;
  v47 = Lockup.subtitle.getter();
  v129 = v48;
  v130 = v47;
  v49 = Lockup.searchAdOpportunity.getter();

  if (v49 && (v50 = SearchAdOpportunity.searchAd.getter(), , v50))
  {
    v51 = SearchAd.advertisingText.getter();
    v131 = v52;
    v132 = v51;
  }

  else
  {
    v131 = 0;
    v132 = 0;
  }

  v139 = MixedMediaLockup.metadataRibbonItems.getter();
  v53 = v165;
  static MetadataRibbonViewLayout.Metrics.standard.getter();
  (*(v158 + 56))(v53, 0, 1, v159);
  v138 = MixedMediaLockup.searchTagRibbonItems.getter();
  v123 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  v54 = [v7 traitCollection];
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v55 = v166;
  v56 = sub_1000056A8(v166, qword_1009CDC00);
  v134 = *(v161 + 16);
  v135 = v161 + 16;
  v134(v167, v56, v55);
  v57 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v141 = a2;
  v142 = v32;
  v143 = v7;
  if ((v57 & 1) == 0)
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v58 = qword_100991028;
    goto LABEL_23;
  }

  if (qword_10096ECB8 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = qword_100991010;
LABEL_23:
    v59 = v164;
    v60 = sub_1000056A8(v164, v58);
    v61 = v163;
    (*(v163 + 16))(v21, v60, v59);
    (*(v61 + 32))(v162, v21, v59);
    v62 = [v54 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();

    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
    SmallSearchLockupLayout.Metrics.artworkSize.getter();
    v133 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v136 = LayoutViewPlaceholder.init(representing:)();
    v63 = objc_opt_self();
    v137 = v54;
    v64 = v63;
    v126 = v63;
    v65 = [v63 preferredFontForTextStyle:UIFontTextStyleBody];
    v66 = type metadata accessor for Feature();
    v204[3] = v66;
    v67 = sub_100324304(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v204[4] = v67;
    v125 = v67;
    v68 = sub_1000056E0(v204);
    v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v70 = *(v66 - 8);
    v71 = *(v70 + 104);
    v127 = v70 + 104;
    v124 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v71(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v66);
    isFeatureEnabled(_:)();
    sub_100007000(v204);
    v72 = v148;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v73 = v150;
    v149 = *(v149 + 8);
    (v149)(v72, v150);
    v74 = [v64 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v203[3] = v66;
    v203[4] = v67;
    v75 = sub_1000056E0(v203);
    v71(v75, v69, v66);
    isFeatureEnabled(_:)();
    sub_100007000(v203);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v76 = v149;
    (v149)(v72, v73);
    v77 = [v126 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v202[3] = v66;
    v202[4] = v125;
    v78 = sub_1000056E0(v202);
    v71(v78, v124, v66);
    isFeatureEnabled(_:)();
    sub_100007000(v202);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v76(v72, v73);
    v79 = v139;
    LODWORD(v150) = sub_1000AE138() & (v79 != 0);
    if (v150 == 1)
    {
      v80 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
      v81 = v137;
      v82 = TraitEnvironmentPlaceholder.init(traitCollection:)();
      v83 = v144;
      sub_100031660(v165, v144, &unk_1009912C0, &unk_1007B4130);
      v84 = v158;
      v85 = *(v158 + 48);
      v86 = v159;
      if (v85(v83, 1, v159) == 1)
      {
        v87 = v145;
        static MetadataRibbonViewLayout.Metrics.standard.getter();
        if (v85(v83, 1, v86) != 1)
        {
          sub_10002B894(v83, &unk_1009912C0, &unk_1007B4130);
        }
      }

      else
      {
        v87 = v145;
        (*(v84 + 32))(v145, v83, v86);
      }

      v90 = v82;
      sub_1000AD91C(v139, v87, v90, a5, a6);

      (*(v84 + 8))(v87, v86);
      v88 = v133;
      swift_allocObject();
      v89 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      v88 = v133;
      swift_allocObject();
      v89 = LayoutViewPlaceholder.init(representing:)();
    }

    v91 = v89;

    v92 = v138;
    if ((sub_1000AE138() & (v92 != 0)) == 1)
    {
      sub_100046528(v92, v123 & 1, a5, a6);
      swift_allocObject();
      v93 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      swift_allocObject();
      v93 = LayoutViewPlaceholder.init(representing:)();
    }

    v94 = v93;
    v134(v151, v167, v166);
    v201 = &protocol witness table for LayoutViewPlaceholder;
    v200 = v88;
    v199 = v136;
    v198 = 0;
    *&v196[40] = 0u;
    v197 = 0u;
    sub_10002C0AC(v204, v196);
    sub_10002C0AC(v203, &v195);
    v194 = 0;
    v192 = 0u;
    v193 = 0u;
    v191 = 0;
    v189 = 0u;
    v190 = 0u;

    v159 = v94;
    v95 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
    v188 = &protocol witness table for LayoutViewPlaceholder;
    v187 = v88;
    v186 = v95;
    v185 = 0;
    v183 = 0u;
    v184 = 0u;
    v182 = 0;
    v180 = 0u;
    v181 = 0u;
    v179 = 0;
    v177 = 0u;
    v178 = 0u;
    v176 = 0;
    v175 = 0u;
    *&v174[40] = 0u;
    sub_10002C0AC(v202, v174);
    v172 = v88;
    v173 = &protocol witness table for LayoutViewPlaceholder;
    v170 = &protocol witness table for LayoutViewPlaceholder;
    v171 = v91;
    v169 = v88;
    v168 = v94;
    v96 = v152;
    SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v97 = swift_allocObject();
    v158 = xmmword_1007B0B70;
    *(v97 + 16) = xmmword_1007B0B70;
    v98 = v137;
    *(v97 + 32) = v137;
    v54 = v98;
    v99 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_100324304(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v100 = v154;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v102 = v101;

    (*(v153 + 8))(v96, v100);
    sub_100007000(v202);
    sub_100007000(v203);
    sub_100007000(v204);
    (*(v163 + 8))(v162, v164);
    (*(v161 + 8))(v167, v166);
    v103 = v155;
    static StandardSearchResultContentViewMetrics.bottomMargin.getter();
    v104 = swift_allocObject();
    *(v104 + 16) = v158;
    *(v104 + 32) = v54;
    v105 = v54;
    v106 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_1000320F0();
    v107 = v157;
    dispatch thunk of AnyDimension.rawValue(in:)();
    v109 = v108;

    (*(v156 + 8))(v103, v107);
    sub_10002B894(v165, &unk_1009912C0, &unk_1007B4130);
    v110 = v143;
    v21 = MixedMediaLockup.alignedRegionArtwork.getter();
    v111 = MixedMediaLockup.alignedRegionVideo.getter();
    v112 = MixedMediaLockup.screenshots.getter();
    if (v112 >> 62)
    {
      v114 = v112;
      v115 = _CocoaArrayWrapper.endIndex.getter();
      v112 = v114;
      v32 = v142;
      if (!v115)
      {
LABEL_40:

        v113 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v32 = v142;
      if (!*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }
    }

    if ((v112 & 0xC000000000000001) != 0)
    {
      v54 = v112;
      v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_55;
      }

      v54 = v112;
      v113 = *(v112 + 32);
    }

LABEL_41:
    v116 = MixedMediaLockup.trailers.getter();
    if (!(v116 >> 62))
    {
      if (!*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_43;
    }

    v118 = v116;
    v119 = _CocoaArrayWrapper.endIndex.getter();
    v116 = v118;
    if (!v119)
    {
      break;
    }

LABEL_43:
    if ((v116 & 0xC000000000000001) != 0)
    {
      v117 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_46;
    }

    if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v117 = *(v116 + 32);

LABEL_46:

      goto LABEL_49;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v117 = 0;
LABEL_49:
  v120 = [v110 traitCollection];
  v121.n128_f64[0] = a5;
  v122 = v147;
  sub_1005B6FA0(v21, v111, v113, v117, v120, v141, v147, v121, a6 - v102 - v109);

  v45 = v122;

  v31 = v140;
LABEL_50:

  return (*(v32 + 8))(v45, v31);
}

void sub_100321518()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots);
  v3 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *(v2 + v3);
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
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    type metadata accessor for BorderedScreenshotView(0);
    sub_100324304(&qword_100973D78, 255, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
    v9 = v8;
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
    sub_10003D614(v29);
    v10 = *&v9[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v30, v11);
  }

  while (v5 != v6);

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*(Strong + qword_100988CC0) setImage:0];
    type metadata accessor for VideoView(0);
    sub_100324304(&qword_100992450, 255, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v14 = v13;
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();

    sub_10003D614(v29);
  }

  v15 = *(v1 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_lockupView);
  v16 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v17 = *(v15 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v31, v18);

  v19 = *(v15 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
  v20 = *&v19[OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews];
  v21 = *(v20 + 16);
  if (v21)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v28 = v19;

    v22 = 32;
    do
    {
      v23 = *(v20 + v22);
      if (swift_dynamicCastClass())
      {
        v24 = v23;
        v32.value.super.isa = 0;
        v32.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v32, v25);
        type metadata accessor for ArtworkView();
        sub_100324304(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
      }

      v22 += 16;
      --v21;
    }

    while (v21);
  }

  v26 = *(v15 + v16);
  type metadata accessor for ArtworkView();
  sub_100324304(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v27 = v26;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_100321948(uint64_t a1, uint64_t a2, __n128 a3)
{
  v278 = a2;
  v4 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v4 - 8);
  v271 = &v218[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10002849C(&unk_100973C90, qword_1007B55A0);
  __chkstk_darwin(v6 - 8);
  v242 = &v218[-v7];
  v8 = type metadata accessor for AspectRatio();
  v260 = *(v8 - 8);
  __chkstk_darwin(v8);
  v250 = &v218[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v259 = &v218[-v11];
  v12 = type metadata accessor for LockupMediaLayout.Metrics();
  v246 = *(v12 - 8);
  __chkstk_darwin(v12);
  v270 = &v218[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v14 - 8);
  v249 = &v218[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v274 = &v218[-v17];
  v18 = type metadata accessor for LockupMediaLayout.DisplayType();
  v261 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v218[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v240 = &v218[-v22];
  __chkstk_darwin(v23);
  v264 = &v218[-v24];
  __chkstk_darwin(v25);
  v243 = &v218[-v26];
  __chkstk_darwin(v27);
  v273 = &v218[-v28];
  v29 = sub_10002849C(&unk_10096FC10, &unk_1007B10C0);
  v257 = *(v29 - 8);
  v258 = v29;
  __chkstk_darwin(v29);
  v256 = &v218[-v30];
  v31 = type metadata accessor for SmallSearchLockupLayout();
  v254 = *(v31 - 8);
  v255 = v31;
  __chkstk_darwin(v31);
  v253 = &v218[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v262 = *(v33 - 1);
  v263 = v33;
  __chkstk_darwin(v33);
  v245 = &v218[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v275 = type metadata accessor for LabelPlaceholderCompatibility();
  v251 = *(v275 - 8);
  __chkstk_darwin(v275);
  v36 = &v218[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = type metadata accessor for OfferButtonMetrics();
  v268 = *(v37 - 1);
  v269 = v37;
  __chkstk_darwin(v37);
  v39 = &v218[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v40);
  v267 = &v218[-v41];
  v276 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v266 = *(v276 - 8);
  __chkstk_darwin(v276);
  v252 = &v218[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v43);
  v277 = &v218[-v44];
  v45 = sub_10002849C(&unk_1009912C0, &unk_1007B4130);
  __chkstk_darwin(v45 - 8);
  v244 = &v218[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v47);
  v272 = &v218[-v48];
  v49 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v49 - 8);
  v50 = type metadata accessor for PageGrid();
  v247 = *(v50 - 8);
  v248 = v50;
  __chkstk_darwin(v50);
  v265 = &v218[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = type metadata accessor for ScreenshotsDisplayStyle();
  v280 = *(v52 - 8);
  v281 = v52;
  __chkstk_darwin(v52);
  v283 = &v218[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AppSearchResult();
  sub_100324304(&qword_1009806D0, 255, &type metadata accessor for AppSearchResult, &protocol conformance descriptor for SearchResult);
  v282 = a1;
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (!v321[0])
  {
    return result;
  }

  v241 = v20;
  v238 = v12;
  v279 = v321[0];
  AppSearchResult.lockup.getter();
  v325._rawValue = _swiftEmptyArrayStorage;

  if (Lockup.icon.getter())
  {
    if (qword_10096EE80 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for SmallLockupLayout.Metrics();
    sub_1000056A8(v55, qword_1009D3798);
    SmallLockupLayout.Metrics.artworkSize.getter();
    Artwork.config(_:mode:prefersLayeredImage:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v325._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v325._rawValue & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v239 = v8;
  v56 = MixedMediaLockup.metadataRibbonItems.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v57 = v321[0];
  v58 = sub_10032AAE8(v56, v321[0]);

  sub_100394974(v58, v59);
  v60 = v283;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  v61 = MixedMediaLockup.screenshots.getter();
  if (v61 >> 62)
  {
    v137 = _CocoaArrayWrapper.endIndex.getter();
    v60 = v283;

    if (v137)
    {
      goto LABEL_10;
    }

LABEL_52:

    goto LABEL_53;
  }

  v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v62)
  {
    goto LABEL_52;
  }

LABEL_10:
  if ((dispatch thunk of AppSearchResult.shouldDisplayMedia.getter() & 1) == 0 || (ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
  {
    goto LABEL_52;
  }

  v63 = v282;
  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  PageGrid.init(from:breakpointOverrides:)();
  PageGrid.columnWidth.getter();
  v65 = v64;
  sub_10031E520(v63);
  v67 = v66;
  v68 = Lockup.title.getter();
  v223 = v69;
  v224 = v68;
  v70 = Lockup.subtitle.getter();
  v225 = v71;
  v226 = v70;
  v72 = Lockup.searchAdOpportunity.getter();

  if (v72)
  {
    v73 = SearchAdOpportunity.searchAd.getter();

    v75 = v262;
    v74 = v263;
    if (v73)
    {
      v76 = SearchAd.advertisingText.getter();
      v227 = v77;
      v228 = v76;
    }

    else
    {
      v227 = 0;
      v228 = 0;
    }
  }

  else
  {
    v227 = 0;
    v228 = 0;
    v75 = v262;
    v74 = v263;
  }

  v236 = MixedMediaLockup.metadataRibbonItems.getter();
  v78 = v272;
  static MetadataRibbonViewLayout.Metrics.standard.getter();
  (v75[7])(v78, 0, 1, v74);
  v235 = MixedMediaLockup.searchTagRibbonItems.getter();
  v79 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v80 = v324;
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v81 = v276;
  v82 = sub_1000056A8(v276, qword_1009CDC00);
  v83 = v266 + 16;
  v84 = *(v266 + 16);
  v84(v277, v82, v81);
  v85 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v237 = v18;
  v230 = v84;
  v231 = v83;
  v219 = v79;
  if ((v85 & 1) == 0)
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v86 = qword_100991028;
    goto LABEL_27;
  }

  if (qword_10096ECB8 != -1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    v86 = qword_100991010;
LABEL_27:
    v87 = v269;
    v88 = sub_1000056A8(v269, v86);
    v89 = v268;
    (*(v268 + 16))(v39, v88, v87);
    (*(v89 + 32))(v267, v39, v87);
    v90 = [v80 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();

    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
    SmallSearchLockupLayout.Metrics.artworkSize.getter();
    v229 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v232 = LayoutViewPlaceholder.init(representing:)();
    v233 = objc_opt_self();
    v91 = [v233 preferredFontForTextStyle:UIFontTextStyleBody];
    v92 = type metadata accessor for Feature();
    v322 = v92;
    v93 = sub_100324304(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v323 = v93;
    v221 = v93;
    v94 = sub_1000056E0(v321);
    v95 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v96 = *(v92 - 8);
    v97 = *(v96 + 104);
    v222 = v96 + 104;
    v97(v94, enum case for Feature.measurement_with_labelplaceholder(_:), v92);
    v220 = v97;
    isFeatureEnabled(_:)();
    v234 = v80;
    sub_100007000(v321);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v98 = *(v251 + 8);
    v98(v36, v275);
    v99 = [v233 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v320[3] = v92;
    v320[4] = v93;
    v100 = sub_1000056E0(v320);
    v97(v100, v95, v92);
    isFeatureEnabled(_:)();
    sub_100007000(v320);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v98(v36, v275);
    v101 = [v233 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v319[3] = v92;
    v319[4] = v221;
    v102 = sub_1000056E0(v319);
    v220(v102, v95, v92);
    isFeatureEnabled(_:)();
    sub_100007000(v319);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v98(v36, v275);
    v103 = v236;
    LODWORD(v275) = sub_1000AE138() & (v103 != 0);
    if (v275 == 1)
    {
      v104 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
      v105 = v234;
      v106 = TraitEnvironmentPlaceholder.init(traitCollection:)();
      v107 = v244;
      sub_100031660(v272, v244, &unk_1009912C0, &unk_1007B4130);
      v109 = v262;
      v108 = v263;
      v110 = v262[6];
      if (v110(v107, 1, v263) == 1)
      {
        v111 = v245;
        static MetadataRibbonViewLayout.Metrics.standard.getter();
        if (v110(v107, 1, v108) != 1)
        {
          sub_10002B894(v107, &unk_1009912C0, &unk_1007B4130);
        }
      }

      else
      {
        v111 = v245;
        (v109[4])(v245, v107, v108);
      }

      v114 = v106;
      sub_1000AD91C(v236, v111, v114, v65, v67);

      (v109[1])(v111, v108);
      v112 = v229;
      swift_allocObject();
      v113 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      v112 = v229;
      swift_allocObject();
      v113 = LayoutViewPlaceholder.init(representing:)();
    }

    v115 = v113;

    v116 = v235;
    if ((sub_1000AE138() & (v116 != 0)) == 1)
    {
      sub_100046528(v116, v219 & 1, v65, v67);
      swift_allocObject();
      v117 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      swift_allocObject();
      v117 = LayoutViewPlaceholder.init(representing:)();
    }

    v118 = v117;
    v230(v252, v277, v276);
    v318 = &protocol witness table for LayoutViewPlaceholder;
    v317 = v112;
    v316 = v232;
    v315 = 0;
    *&v313[40] = 0u;
    v314 = 0u;
    sub_10002C0AC(v321, v313);
    sub_10002C0AC(v320, &v312);
    v311 = 0;
    v309 = 0u;
    v310 = 0u;
    v308 = 0;
    v306 = 0u;
    v307 = 0u;

    v263 = v118;
    v119 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
    v305 = &protocol witness table for LayoutViewPlaceholder;
    v304 = v112;
    v303 = v119;
    v302 = 0;
    v300 = 0u;
    v301 = 0u;
    v299 = 0;
    v297 = 0u;
    v298 = 0u;
    v296 = 0;
    v294 = 0u;
    v295 = 0u;
    v293 = 0;
    v292 = 0u;
    *&v291[40] = 0u;
    sub_10002C0AC(v319, v291);
    v290 = &protocol witness table for LayoutViewPlaceholder;
    v289 = v112;
    v288 = v115;
    v287 = &protocol witness table for LayoutViewPlaceholder;
    v286 = v112;
    v285 = v118;
    v120 = v253;
    SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    v121 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v122 = swift_allocObject();
    v275 = xmmword_1007B0B70;
    *(v122 + 16) = xmmword_1007B0B70;
    v123 = v234;
    *(v122 + 32) = v234;
    v124 = v123;
    v125 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_100324304(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v126 = v255;
    dispatch thunk of Measurable.measurements(fitting:in:)();

    (*(v254 + 8))(v120, v126);
    sub_100007000(v319);
    sub_100007000(v320);
    sub_100007000(v321);
    (*(v268 + 8))(v267, v269);
    (*(v266 + 8))(v277, v276);
    v80 = v256;
    static StandardSearchResultContentViewMetrics.bottomMargin.getter();
    v127 = swift_allocObject();
    *(v127 + 16) = v275;
    *(v127 + 32) = v124;
    v128 = v124;
    v39 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_1000320F0();
    v129 = v258;
    dispatch thunk of AnyDimension.rawValue(in:)();

    (*(v257 + 8))(v80, v129);
    sub_10002B894(v272, &unk_1009912C0, &unk_1007B4130);
    v130 = MixedMediaLockup.alignedRegionArtwork.getter();
    v36 = MixedMediaLockup.alignedRegionVideo.getter();
    v131 = MixedMediaLockup.screenshots.getter();
    if (v131 >> 62)
    {
      v39 = v131;
      v132 = _CocoaArrayWrapper.endIndex.getter();
      v131 = v39;
    }

    else
    {
      v132 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v133 = v273;
    v134 = v241;
    if (v132)
    {
      if ((v131 & 0xC000000000000001) != 0)
      {
        v39 = v131;
        v129 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_121;
        }

        v39 = v131;
        v129 = *(v131 + 32);
      }
    }

    else
    {

      v129 = 0;
    }

    v135 = MixedMediaLockup.trailers.getter();
    if (v135 >> 62)
    {
      v39 = v135;
      v138 = _CocoaArrayWrapper.endIndex.getter();
      v135 = v39;
      v272 = v36;
      if (!v138)
      {
LABEL_57:

        v277 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      v136 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v272 = v36;
      if (!v136)
      {
        goto LABEL_57;
      }
    }

    if ((v135 & 0xC000000000000001) != 0)
    {
      v39 = v135;
      v277 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_123:
        v142 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_71:

        goto LABEL_74;
      }

      v39 = v135;
      v277 = *(v135 + 32);
    }

LABEL_58:
    v121 = MixedMediaLockup.alignedRegionArtwork.getter();
    v80 = MixedMediaLockup.alignedRegionVideo.getter();
    v131 = MixedMediaLockup.screenshots.getter();
    if (v131 >> 62)
    {
      v39 = v131;
      v139 = _CocoaArrayWrapper.endIndex.getter();
      v131 = v39;
      if (!v139)
      {
        goto LABEL_65;
      }

LABEL_60:
      if ((v131 & 0xC000000000000001) == 0)
      {
        if (!*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_125;
        }

        v36 = v131;
        v39 = *(v131 + 32);

        goto LABEL_63;
      }

LABEL_121:
      v36 = v131;
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_63:

      goto LABEL_66;
    }

    if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_60;
    }

LABEL_65:

    v39 = 0;
LABEL_66:
    v140 = MixedMediaLockup.trailers.getter();
    if (v140 >> 62)
    {
      break;
    }

    v141 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v276 = v129;
    if (!v141)
    {
      goto LABEL_73;
    }

LABEL_68:
    if ((v140 & 0xC000000000000001) != 0)
    {
      goto LABEL_123;
    }

    if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v142 = *(v140 + 32);

      goto LABEL_71;
    }

LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
  }

  v143 = v140;
  v144 = _CocoaArrayWrapper.endIndex.getter();
  v140 = v143;
  v276 = v129;
  if (v144)
  {
    goto LABEL_68;
  }

LABEL_73:

  v142 = 0;
LABEL_74:
  if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
  {

    v142 = v261;
    v39 = v237;
    (*(v261 + 104))(v133, enum case for LockupMediaLayout.DisplayType.none(_:), v237);
LABEL_82:
    v149 = v239;
    v147 = v260;
    goto LABEL_110;
  }

  if (v80 | v121)
  {
    v151 = v243;
    AspectRatio.init(_:_:)();

    v142 = v261;
    v39 = v237;
    (*(v261 + 104))(v151, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v237);
    (*(v142 + 32))(v133, v151, v39);
    goto LABEL_82;
  }

  v146 = sub_1001B9B24(v39, v142, 0, 1, v145);
  v133 = v146;
  v147 = v146 >> 62;
  if (v146 >> 62)
  {
    goto LABEL_175;
  }

  v148 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v149 = v239;
    *&v275 = v148;
    if (v39)
    {
      v150 = Screenshots.mediaPlatform.getter();
    }

    else
    {
      v150 = 0;
    }

    LODWORD(v268) = sub_1001B9E6C(v150);

    v258 = v130;
    if (v39)
    {
      v152 = Screenshots.mediaPlatform.getter();
    }

    else
    {
      v152 = 0;
    }

    v153 = v280;
    v154 = v281;
    v155 = v242;
    (*(v280 + 16))(v242, v283, v281);
    (*(v153 + 56))(v155, 0, 1, v154);
    v134 = sub_1001BA394(v152, v155);

    sub_10002B894(v155, &unk_100973C90, qword_1007B55A0);
    if (v147)
    {
      v157 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v157 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v147 = v260;
    v130 = v258;
    if (!v157)
    {

      goto LABEL_97;
    }

    if ((v133 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_178;
      }
    }

    v158 = dispatch thunk of Artwork.isLandscape.getter();

    if ((v158 & 1) == 0)
    {
LABEL_97:
      v160 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
      v161 = v261;
      v162 = v237;
      v163 = v240;
      v269 = *(v261 + 104);
      v269(v240, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v237);
      v164 = v134;
      v165 = LockupMediaLayout.DisplayType.numberOfViews.getter();
      v267 = *(v161 + 8);
      (v267)(v163, v162);
      if (((v275 >= v165) & v164) != 0)
      {

        v159 = v243;
        v166 = v243;
        v167 = v160;
      }

      else
      {
        v168 = enum case for LockupMediaLayout.DisplayType.threeUp(_:);
        v269(v163, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v162);
        v169 = LockupMediaLayout.DisplayType.numberOfViews.getter();
        v170 = v267;
        (v267)(v163, v162);
        if (((v275 >= v169) & v268) == 0)
        {
          v171 = v163;
          v172 = enum case for LockupMediaLayout.DisplayType.twoUp(_:);
          v269(v163, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v162);
          v173 = LockupMediaLayout.DisplayType.numberOfViews.getter();
          v170(v171, v162);
          v174 = v275 < v173;
          v175 = v171;
          v133 = v273;
          if (v174)
          {
            LODWORD(v268) = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
            (v269)(v175);
            v176 = LockupMediaLayout.DisplayType.numberOfViews.getter();

            v170(v175, v162);
            if (v275 == v176)
            {
              v159 = v243;
              v177 = v243;
              v178 = v268;
            }

            else
            {
              v178 = enum case for LockupMediaLayout.DisplayType.none(_:);
              v159 = v243;
              v177 = v243;
            }
          }

          else
          {

            v159 = v243;
            v177 = v243;
            v178 = v172;
          }

          v269(v177, v178, v162);
          v39 = v162;
          v142 = v261;
          goto LABEL_108;
        }

        v159 = v243;
        v166 = v243;
        v167 = v168;
      }

      v269(v166, v167, v162);
      v39 = v162;
      v142 = v261;
      v133 = v273;
LABEL_108:
      v149 = v239;
      v147 = v260;
      v130 = v258;
      goto LABEL_109;
    }

    v142 = v261;
    v159 = v243;
    v39 = v237;
    (*(v261 + 104))(v243, enum case for LockupMediaLayout.DisplayType.landscape(_:), v237);
    v133 = v273;
LABEL_109:
    (*(v142 + 32))(v133, v159, v39);
    v134 = v241;
LABEL_110:
    v179 = sub_100079F24();
    (*(v147 + 56))(v274, 1, 1, v149);
    v262 = v179;
    v263 = [v179 traitCollection];
    v322 = &type metadata for CGFloat;
    v323 = &protocol witness table for CGFloat;
    v321[0] = 0x4021000000000000;
    sub_10002C0AC(v321, v320);
    v180 = *(v142 + 16);
    v282 = v142 + 16;
    *&v275 = v180;
    v180(v264, v133, v39);
    if (v272 | v130)
    {
      goto LABEL_129;
    }

    v182 = sub_1001B9B24(v276, v277, 0, 1, v181);
    if (!(v182 >> 62))
    {
      if (!*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_128;
      }

LABEL_113:
      if ((v182 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_175:
          v148 = _CocoaArrayWrapper.endIndex.getter();
          continue;
        }
      }

      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      goto LABEL_130;
    }

    break;
  }

  v183 = v182;
  v184 = _CocoaArrayWrapper.endIndex.getter();
  v182 = v183;
  if (v184)
  {
    goto LABEL_113;
  }

LABEL_128:

LABEL_129:
  AspectRatio.init(_:_:)();
LABEL_130:
  sub_100031660(v274, v249, &unk_1009732A0, &unk_1007B4FE0);
  LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
  sub_100007000(v321);
  v185 = v250;
  LockupMediaLayout.Metrics.mediaAspectRatio.getter();
  AspectRatio.height(fromWidth:)();
  v186 = *(v147 + 8);
  v147 += 8;
  v186(v185, v149);
  if (v272)
  {
    v134 = v142;

    Video.preview.getter();
    v187 = Artwork.config(_:mode:prefersLayeredImage:)();
    v188 = sub_100033938(0, 1, 1, _swiftEmptyArrayStorage);
    v147 = *(v188 + 2);
    v189 = *(v188 + 3);
    v190 = v147 + 1;
    if (v147 >= v189 >> 1)
    {
      goto LABEL_172;
    }

    goto LABEL_132;
  }

  if (v130)
  {

    v192 = Artwork.config(_:mode:prefersLayeredImage:)();
    v188 = sub_100033938(0, 1, 1, _swiftEmptyArrayStorage);
    v194 = *(v188 + 2);
    v193 = *(v188 + 3);
    if (v194 >= v193 >> 1)
    {
      v188 = sub_100033938((v193 > 1), v194 + 1, 1, v188);
    }

    (*(v246 + 8))(v270, v238);
    sub_10002B894(v274, &unk_1009732A0, &unk_1007B4FE0);
    *(v188 + 2) = v194 + 1;
    v195 = &v188[16 * v194];
    *(v195 + 4) = v192;
    v195[40] = 0;
    goto LABEL_180;
  }

  v196 = LockupMediaLayout.DisplayType.numberOfViews.getter();
  v198 = sub_1001B9B24(v276, v277, v196, 0, v197);
  static LockupMediaLayout.mediaSize(using:fitting:with:)();
  v156 = v198;
  if (!(v198 >> 62))
  {
    result = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_139;
    }

LABEL_179:

    (*(v246 + 8))(v270, v238);
    sub_10002B894(v274, &unk_1009732A0, &unk_1007B4FE0);
    v188 = _swiftEmptyArrayStorage;
    goto LABEL_180;
  }

LABEL_178:
  v213 = v156;
  result = _CocoaArrayWrapper.endIndex.getter();
  v156 = v213;
  if (!result)
  {
    goto LABEL_179;
  }

LABEL_139:
  v258 = v130;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v199 = 0;
  v269 = (v156 & 0xC000000000000001);
  v200 = (v142 + 88);
  LODWORD(v268) = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
  LODWORD(v260) = enum case for LockupMediaLayout.DisplayType.landscape(_:);
  v264 = (v142 + 8);
  v188 = _swiftEmptyArrayStorage;
  v266 = result;
  v267 = v156;
  while (2)
  {
    if (v269)
    {
      v190 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v190 = *(v156 + 8 * v199 + 32);
    }

    v201 = v237;
    (v275)(v134, v133, v237);
    v202 = (*v200)(v134, v201);
    if (v202 == v268)
    {
      (*v264)(v134, v201);
      goto LABEL_147;
    }

    if (v202 != v260)
    {
      v203 = dispatch thunk of Artwork.isLandscape.getter();
      (*v264)(v134, v237);
      if (v277)
      {
        goto LABEL_151;
      }

LABEL_148:
      if (!v276)
      {
        goto LABEL_162;
      }

      goto LABEL_149;
    }

LABEL_147:
    v203 = 0;
    if (!v277)
    {
      goto LABEL_148;
    }

LABEL_151:
    v187 = v277;
    v205 = Trailers.videos.getter();
    if (!(v205 >> 62))
    {
      if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_153;
      }

LABEL_161:

      if (!v276)
      {
LABEL_162:
        v204 = 0;
LABEL_163:
        type metadata accessor for Screenshots();
        v209 = v271;
        sub_10061B788(v204, v271);

        CGSize.subtracting(insets:)();
        v207 = Artwork.config(_:mode:prefersLayeredImage:)();
        sub_1001BABC8(v209, v210);
LABEL_164:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v188 = sub_100033938(0, *(v188 + 2) + 1, 1, v188);
        }

        v147 = *(v188 + 2);
        v211 = *(v188 + 3);
        if (v147 >= v211 >> 1)
        {
          v188 = sub_100033938((v211 > 1), v147 + 1, 1, v188);
        }

        ++v199;

        *(v188 + 2) = v147 + 1;
        v212 = &v188[16 * v147];
        *(v212 + 4) = v207;
        v212[40] = v203 & 1;
        v156 = v267;
        v134 = v241;
        if (v266 == v199)
        {

          (*(v246 + 8))(v270, v238);
          sub_10002B894(v274, &unk_1009732A0, &unk_1007B4FE0);
          v142 = v261;
          goto LABEL_180;
        }

        continue;
      }

      goto LABEL_149;
    }

    break;
  }

  v187 = v205;
  v208 = _CocoaArrayWrapper.endIndex.getter();
  v205 = v187;
  if (!v208)
  {
    goto LABEL_161;
  }

LABEL_153:
  if ((v205 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_156;
  }

  v189 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v189)
  {

LABEL_156:

    type metadata accessor for Artwork();
    Video.preview.getter();
    v206 = static Artwork.== infix(_:_:)();

    if (v206)
    {
      v207 = Artwork.config(_:mode:prefersLayeredImage:)();

      v133 = v273;
      goto LABEL_164;
    }

    v133 = v273;
    if (!v276)
    {
      goto LABEL_162;
    }

LABEL_149:
    v204 = Screenshots.mediaPlatform.getter();
    goto LABEL_163;
  }

  __break(1u);
LABEL_172:
  v188 = sub_100033938((v189 > 1), v190, 1, v188);
LABEL_132:

  (*(v246 + 8))(v270, v238);
  sub_10002B894(v274, &unk_1009732A0, &unk_1007B4FE0);
  *(v188 + 2) = v190;
  v191 = &v188[16 * v147];
  *(v191 + 4) = v187;
  v191[40] = 0;
  v142 = v134;
LABEL_180:
  v214 = *(v188 + 2);
  if (v214)
  {
    v321[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v215 = 32;
    do
    {

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v215 += 16;
      --v214;
    }

    while (v214);
    swift_unknownObjectRelease();

    (*(v142 + 8))(v273, v237);
    v217 = v321[0];
  }

  else
  {
    swift_unknownObjectRelease();

    (*(v142 + 8))(v133, v237);
    v217 = _swiftEmptyArrayStorage;
  }

  sub_100394974(v217, v216);
  (*(v247 + 8))(v265, v248);
  v60 = v283;
LABEL_53:
  ArtworkLoader.prefetchArtwork(using:)(v325);

  return (*(v280 + 8))(v60, v281);
}

void sub_100324098()
{
  v1 = OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  *(v0 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_preferredImageSizes) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsCalculator) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsUpdateBlock);
  *v3 = 0;
  v3[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100324190(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100324304(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v7 = v2;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v4 = v9;
        [v9 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v12 = v10;
    [v2 addSubview:v10];
  }

  sub_1001B8790(v11);

  return [v2 setNeedsLayout];
}

uint64_t sub_100324304(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10032434C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100324398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100324430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OSSignpostID();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v59 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = v5;
  __chkstk_darwin(v6);
  v60 = &v47[-v7];
  v8 = type metadata accessor for AdamId();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v47[-v13];
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v15 = Promise.__allocating_init()();
  OpenAppAction.adamId.getter();
  v16 = AdamId.numberValue.getter();
  v17 = *(v9 + 8);
  v17(v14, v8);
  if (v16)
  {
    v51 = v16;
    v58 = v4;
    v55 = v15;
    sub_10002849C(&unk_100973AF0, &qword_1007B3960);
    type metadata accessor for BaseObjectGraph();
    v54 = a2;
    inject<A, B>(_:from:)();
    swift_getObjectType();
    OpenAppAction.adamId.getter();
    v18 = dispatch thunk of AppStateController.stateMachine(forApp:)();
    swift_unknownObjectRelease();
    v17(v11, v8);
    swift_getObjectType();
    v53 = v18;
    v19 = dispatch thunk of AppStateMachine.hasCurrentBetaState.getter();
    v20 = "ActionDispatcher[ASDAppQuery]:handleOpenAppAction";
    v52 = a1;
    if (v19)
    {
      v21 = OpenAppAction.allowBetaApps.getter();
      if (v21)
      {
        v20 = "ActionDispatcher[ASDAppQuery.BetaApps]:handleOpenAppAction";
        v22 = 58;
      }

      else
      {
        v22 = 49;
      }
    }

    else
    {
      v21 = 0;
      v22 = 49;
    }

    v49 = v20;
    type metadata accessor for SignpostAggregator();
    static SignpostAggregator.log.getter();
    v25 = v60;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    v26 = static SignpostAggregator.log.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1007B0B70;
    v28 = v51;
    *(v27 + 32) = v51;
    sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
    v50 = v28;
    v29.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v30 = objc_opt_self();
    v31 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    v48 = v21 & 1;
    if ((v21 & 1) == 0)
    {
      v31 = &selRef_queryForStoreItemIDs_;
    }

    v51 = [v30 *v31];

    v32 = v61;
    (*(v61 + 16))(v59, v25, v58);
    sub_100325C90(v57, v63);
    v33 = (*(v32 + 80) + 33) & ~*(v32 + 80);
    v34 = v33 + v56;
    v35 = (((v33 + v56) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
    v37 = v22;
    v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 16) = v49;
    *(v40 + 24) = v37;
    *(v40 + 32) = 2;
    v41 = v58;
    (*(v32 + 32))(v40 + v33, v59, v58);
    *(v40 + v34) = v48;
    *(v40 + (v34 & 0xFFFFFFFFFFFFFFF8) + 8) = v52;
    sub_100325CC8(v63, v40 + v35);
    v15 = v55;
    *(v40 + v36) = v54;
    *(v40 + v38) = v15;
    v42 = v50;
    *(v40 + v39) = v50;
    aBlock[4] = sub_100325D00;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10037FE78;
    aBlock[3] = &unk_1008BE2B0;
    v43 = _Block_copy(aBlock);
    v44 = v42;

    v45 = v51;
    [v51 executeQueryWithResultHandler:v43];
    _Block_release(v43);

    swift_unknownObjectRelease();
    (*(v61 + 8))(v60, v41);
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for OSLogger();
    sub_1000056A8(v23, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100325C3C();
    swift_allocError();
    *v24 = 0;
    Promise.reject(_:)();
  }

  return v15;
}

void sub_100324B24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v45 = a7;
  v46 = a8;
  v47 = a11;
  v44 = a10;
  v13 = type metadata accessor for AdamId();
  __chkstk_darwin(v13 - 8);
  v41[1] = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v15 - 8);
  v43 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OpenableDestination();
  v42 = *(v17 - 8);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = static os_signpost_type_t.end.getter();
  type metadata accessor for SignpostAggregator();
  v22 = static SignpostAggregator.log.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  if (!a1)
  {
    goto LABEL_13;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:
    if (v45)
    {
      Action.title.getter();
      OpenAppAction.adamId.getter();
      OpenAppAction.destination.getter();
      Action.presentationStyle.getter();
      Action.actionMetrics.getter();
      type metadata accessor for OpenAppAction();
      swift_allocObject();
      v37 = OpenAppAction.init(title:adamId:allowBetaApps:destination:presentationStyle:actionMetrics:)();
      sub_1005D0478(v37, 1, v44);
      Promise.pipe(to:)();

      return;
    }

    v21 = a12;
    if (qword_10096D120 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) == 0)
  {
    v23 = v46;
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(a1 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_19:
    swift_once();
LABEL_16:
    v38 = type metadata accessor for OSLogger();
    sub_1000056A8(v38, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1E00;
    LogMessage.init(stringLiteral:)();
    v51 = sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
    aBlock = v21;
    v39 = v21;
    static LogMessage.traceableSensitive(_:)();
    sub_10003D444(&aBlock);
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100325C3C();
    swift_allocError();
    *v40 = 1;
    Promise.reject(_:)();

    return;
  }

  v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v23 = v46;
LABEL_7:
  OpenAppAction.destination.getter();
  v25 = v42;
  v26 = (*(v42 + 88))(v20, v17);
  if (v26 == enum case for OpenableDestination.app(_:))
  {
    v27 = [v24 bundleID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static ActionMetrics.notInstrumented.getter();
    sub_1001963E0(_swiftEmptyArrayStorage);
    type metadata accessor for ArcadeLaunchAttributionAction();
    swift_allocObject();
    ArcadeLaunchAttributionAction.init(bundleIdentifier:additionalMetrics:actionMetrics:)();

    v29 = v44;
    sub_1005D0460(v28, 1, v44);

    v30 = objc_opt_self();
    sub_100325C90(a9, v54);
    v31 = swift_allocObject();
    sub_100325CC8(v54, (v31 + 2));
    v31[4] = v23;
    v31[5] = v29;
    v31[6] = v47;
    v52 = sub_100325F60;
    v53 = v31;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_1003259C0;
    v51 = &unk_1008BE350;
    v32 = _Block_copy(&aBlock);

    [v30 launchApp:v24 withResultHandler:v32];

    _Block_release(v32);
  }

  else if (v26 == enum case for OpenableDestination.messages(_:))
  {
    v33 = objc_opt_self();
    sub_100325C90(a9, v54);
    v34 = swift_allocObject();
    sub_100325CC8(v54, (v34 + 2));
    v35 = v44;
    v34[4] = v23;
    v34[5] = v35;
    v34[6] = v47;
    v52 = sub_100325DEC;
    v53 = v34;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_1003259C0;
    v51 = &unk_1008BE300;
    v36 = _Block_copy(&aBlock);

    [v33 launchMessagesExtensionForApp:v24 withResultHandler:v36];

    _Block_release(v36);
  }

  else
  {

    (*(v25 + 8))(v20, v17);
  }
}

uint64_t sub_1003252E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[0] = a3;
  v27[1] = a2;
  v5 = type metadata accessor for ActionOutcome();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for OSLogger();
    sub_1000056A8(v25, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    v29 = type metadata accessor for AdamId();
    sub_1000056E0(aBlock);
    OpenAppAction.adamId.getter();
    static LogMessage.traceableSensitive(_:)();
    sub_10003D444(aBlock);
    Logger.error(_:)();

    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    sub_100325C3C();
    swift_allocError();
    v24 = 1;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v18 = v15;
    sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
    v19 = static OS_dispatch_queue.main.getter();
    sub_100325C90(v3, v32);
    v20 = swift_allocObject();
    sub_100325CC8(v32, v20 + 16);
    *(v20 + 32) = v27[0];
    v30 = sub_100325E8C;
    v31 = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    v29 = &unk_1008BE3A0;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100325E98(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v17, v18);
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for OSLogger();
    sub_1000056A8(v22, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    v29 = type metadata accessor for AdamId();
    sub_1000056E0(aBlock);
    OpenAppAction.adamId.getter();
    static LogMessage.traceableSensitive(_:)();
    sub_10003D444(aBlock);
    Logger.error(_:)();

    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    sub_100325C3C();
    swift_allocError();
    v24 = 2;
LABEL_9:
    *v23 = v24;
    return Promise.__allocating_init(error:)();
  }

  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5);
  return Promise.__allocating_init(value:)();
}

double sub_1003259C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

double sub_100325A14(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AlertActionStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v7 - 8);
  v8._object = 0x800000010080D9D0;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  localizedString(_:comment:)(v8, v9);
  v10._countAndFlagsBits = 0xD000000000000021;
  v10._object = 0x800000010080D9F0;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  localizedString(_:comment:)(v10, v11);
  static ActionMetrics.notInstrumented.getter();
  (*(v4 + 104))(v6, enum case for AlertActionStyle.normal(_:), v3);
  type metadata accessor for AlertAction();
  swift_allocObject();
  v12 = AlertAction.init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)();
  sub_1005D0490(v12, 1, a2);

  return result;
}

unint64_t sub_100325C3C()
{
  result = qword_1009806E0;
  if (!qword_1009806E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009806E0);
  }

  return result;
}

void sub_100325D00(unint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for OSSignpostID() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100324B24(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8), v2 + v8, *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100325DF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 56, 7);
}

double sub_100325E40(uint64_t a1)
{
  sub_1003252E0(a1, *(v1 + 32), *(v1 + 40));
  Promise.pipe(to:)();

  return result;
}

uint64_t sub_100325E98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100325EF4()
{
  result = qword_1009806E8;
  if (!qword_1009806E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009806E8);
  }

  return result;
}

unint64_t sub_100325F78(__n128 a1)
{
  result = qword_1009806F0;
  if (!qword_1009806F0)
  {
    type metadata accessor for SearchAdAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009806F0);
  }

  return result;
}

uint64_t sub_100325FD0(uint64_t a1, uint64_t a2)
{
  v3 = SearchAdAction.action.getter();
  v4 = sub_1005D0214(v3, 1, a2);

  return v4;
}

uint64_t sub_100326018(uint64_t a1)
{
  if (a1 != 2)
  {
    return 0;
  }

  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007B15F0;
  v2 = objc_opt_self();
  *(v1 + 32) = [v2 clearColor];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v3 = [v2 blackColor];
  v4 = [v3 colorWithAlphaComponent:0.06];

  isa = UIColor.init(light:dark:)(v4, [objc_allocWithZone(UIColor) initWithWhite:0.06667 alpha:1.0]).super.isa;
  result = v1;
  *(v1 + 40) = isa;
  return result;
}

unint64_t sub_100326148@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1003289B8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1003261A8()
{
  *&v0[OBJC_IVAR____TtC8AppStore26SearchCollectionViewLayout_backgroundCornerRadius] = 0;
  v1 = &v0[OBJC_IVAR____TtC8AppStore26SearchCollectionViewLayout_pendingPrepareObserver];
  v2 = type metadata accessor for SearchCollectionViewLayout();
  *v1 = 0;
  *(v1 + 1) = 0;
  v10.receiver = v0;
  v10.super_class = v2;
  v3 = objc_msgSendSuper2(&v10, "init");
  type metadata accessor for SearchResultBackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  type metadata accessor for SearchTransparencyView();
  v7 = swift_getObjCClassFromMetadata();
  static UICollectionReusableView.elementKind.getter();
  v8 = String._bridgeToObjectiveC()();

  [v5 registerClass:v7 forDecorationViewOfKind:v8];

  return v5;
}

double sub_100326394()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for SearchCollectionViewLayout();
  objc_msgSendSuper2(&v14, "collectionViewContentSize");
  v3 = v2;
  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 collectionView];
    if (v6 && (v7 = v6, v8 = [v6 delegate], v7, v8))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v9 = dispatch thunk of SearchResultsPresenter.transparencyLink.getter();
        if (v9)
        {
          v10 = v9;
          v11 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
          [*&v8[OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
          [*&v8[v11] pageMarginInsets];
          CGSize.subtracting(insets:)();
          sub_100273BA4(v12, 1.79769313e308, v10, v5);
        }

        swift_unknownObjectRelease();
        [v1 minimumLineSpacing];
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return v3;
}

void *sub_100326550(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v77 = sub_10002849C(&qword_100980740, &unk_1007C7B20);
  __chkstk_darwin(v77);
  v8 = &v64 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v64 - v14;
  v16 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v16 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  __chkstk_darwin(v22);
  v78 = &v64 - v23;
  v24 = sub_10032702C(a1);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = type metadata accessor for SearchCollectionViewLayout();
  v83.receiver = v4;
  v83.super_class = v31;
  result = objc_msgSendSuper2(&v83, "layoutAttributesForElementsInRect:", v24, v26, v28, v30);
  if (!result)
  {
    return result;
  }

  v33 = result;
  sub_100005744(0, &qword_1009759D0, UICollectionViewLayoutAttributes_ptr);
  v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = [v5 collectionView];
  if (!v34)
  {
    return v69;
  }

  v35 = v34;
  v36 = [v34 delegate];

  if (!v36)
  {
    return v69;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
    return v69;
  }

  v68 = v18;
  v66 = v12;
  v76 = v10;
  v64 = v36;
  v37 = [*(v36 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
  [v37 horizontalSizeClass];

  v38 = 1;
  dispatch thunk of SearchResultsPresenter.transparencyLinkIndex(columnCount:)();
  if ((v39 & 1) == 0)
  {
    IndexPath.init(item:section:)();
    v38 = 0;
  }

  v75 = *(v76 + 56);
  v76 += 56;
  v75(v78, v38, 1, v9);
  v82 = _swiftEmptyArrayStorage;
  if (v69 >> 62)
  {
    v40 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v40 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = v64;
  if (v40)
  {
    v81 = v5;
    if (v40 >= 1)
    {
      v41 = 0;
      v42 = v69;
      v72 = v69 & 0xC000000000000001;
      v73 = "backgroundCornerRadius";
      v70 = (v10 + 48);
      v71 = (v10 + 16);
      v65 = (v10 + 32);
      v79 = (v10 + 8);
      v74 = v40;
      v67 = v15;
      while (1)
      {
        if (v72)
        {
          v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v43 = *(v42 + 8 * v41 + 32);
        }

        v80 = v43;
        v44 = [v43 indexPath];
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v45 = String._bridgeToObjectiveC()();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v47 = [v81 layoutAttributesForDecorationViewOfKind:v45 atIndexPath:isa];

        if (v47)
        {
          v48 = v47;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        (*v71)(v21, v15, v9);
        v75(v21, 0, 1, v9);
        v49 = *(v77 + 48);
        sub_10022BA04(v21, v8);
        sub_10022BA04(v78, &v8[v49]);
        v50 = *v70;
        if ((*v70)(v8, 1, v9) == 1)
        {
          break;
        }

        v51 = v21;
        v52 = v68;
        sub_10022BA04(v8, v68);
        if (v50(&v8[v49], 1, v9) == 1)
        {
          sub_10002B894(v51, &unk_10097DAE0, &qword_1007B5CA0);
          v53 = v52;
          v21 = v51;
          (*v79)(v53, v9);
          v15 = v67;
          v42 = v69;
LABEL_24:
          sub_10002B894(v8, &qword_100980740, &unk_1007C7B20);
          goto LABEL_30;
        }

        v54 = v66;
        (*v65)(v66, &v8[v49], v9);
        sub_1003288F8();
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v56 = *v79;
        (*v79)(v54, v9);
        sub_10002B894(v51, &unk_10097DAE0, &qword_1007B5CA0);
        v57 = v52;
        v21 = v51;
        v56(v57, v9);
        sub_10002B894(v8, &unk_10097DAE0, &qword_1007B5CA0);
        v15 = v67;
        v42 = v69;
        if (v55)
        {
          goto LABEL_26;
        }

LABEL_30:
        v62 = v80;
        sub_1003271C4(v80);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v41;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*v79)(v15, v9);
        if (v74 == v41)
        {
          v63 = v82;
          goto LABEL_37;
        }
      }

      sub_10002B894(v21, &unk_10097DAE0, &qword_1007B5CA0);
      if (v50(&v8[v49], 1, v9) == 1)
      {
        sub_10002B894(v8, &unk_10097DAE0, &qword_1007B5CA0);
LABEL_26:
        type metadata accessor for SearchTransparencyView();
        static UICollectionReusableView.elementKind.getter();
        v58 = String._bridgeToObjectiveC()();

        v59 = IndexPath._bridgeToObjectiveC()().super.isa;
        v60 = [v81 layoutAttributesForDecorationViewOfKind:v58 atIndexPath:v59];

        if (v60)
        {
          v61 = v60;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        goto LABEL_30;
      }

      goto LABEL_24;
    }

    __break(1u);
  }

  else
  {
    v63 = _swiftEmptyArrayStorage;
LABEL_37:
    swift_unknownObjectRelease();

    sub_10002B894(v78, &unk_10097DAE0, &qword_1007B5CA0);
    return v63;
  }

  return result;
}

double sub_10032702C(double a1)
{
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 collectionView];
    if (v5 && (v6 = v5, v7 = [v5 delegate], v6, v7))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v8 = dispatch thunk of SearchResultsPresenter.transparencyLink.getter();
        if (v8)
        {
          v9 = v8;
          v10 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
          [*&v7[OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
          [*&v7[v10] pageMarginInsets];
          CGSize.subtracting(insets:)();
          sub_100273BA4(v11, 1.79769313e308, v9, v4);
        }

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return a1;
}

id sub_1003271C4(void *a1)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v35 - v12;
  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    v16 = [v1 collectionView];
    if (!v16 || (v17 = v16, v18 = [v16 delegate], v17, !v18))
    {
LABEL_14:

      goto LABEL_15;
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v35 = &protocol descriptor for UICollectionViewDelegateSearchLayout;
      v36 = v4;
      v37 = v3;
      v19 = [*&v18[OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits] traitCollection];
      [v19 horizontalSizeClass];

      dispatch thunk of SearchResultsPresenter.transparencyLinkIndex(columnCount:)();
      if (v20)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        IndexPath.init(item:section:)();
        swift_unknownObjectRelease();
        v22 = v36;
        v21 = v37;
        (*(v36 + 32))(v13, v9, v37);
        v23 = [v2 collectionView];
        if (v23 && (v24 = v23, v25 = [v23 delegate], v24, v25))
        {
          swift_getObjectType();
          if (!swift_conformsToProtocol2())
          {

            swift_unknownObjectRelease();
            (*(v22 + 8))(v13, v21);
            goto LABEL_15;
          }

          v26 = dispatch thunk of SearchResultsPresenter.transparencyLink.getter();
          if (v26)
          {
            v27 = v26;
            v28 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
            [*&v25[OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
            [*&v25[v28] pageMarginInsets];
            CGSize.subtracting(insets:)();
            sub_100273BA4(v29, 1.79769313e308, v27, v15);
          }

          swift_unknownObjectRelease();
          v32 = [v38 indexPath];
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v32) = static IndexPath.> infix(_:_:)();
          v33 = *(v22 + 8);
          v33(v6, v21);
          if (v32)
          {
            sub_100005744(0, &qword_1009759D0, UICollectionViewLayoutAttributes_ptr);
            v34 = NSCopying.makeCopy()();
            [v2 minimumLineSpacing];
            [v34 frame];
            [v34 setFrame:?];

            v33(v13, v21);
            return v34;
          }

          v33(v13, v21);
        }

        else
        {
          (*(v22 + 8))(v13, v21);
        }
      }

      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

LABEL_15:
  v30 = v38;

  return v30;
}

char *sub_100327654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v129 = a2;
  v130 = a1;
  v6 = type metadata accessor for IndexPath();
  v127 = *(v6 - 8);
  __chkstk_darwin(v6);
  v124 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100980740, &unk_1007C7B20);
  __chkstk_darwin(v8);
  v10 = &v117 - v9;
  v11 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v11 - 8);
  v125 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v126 = &v117 - v14;
  __chkstk_darwin(v15);
  v128 = &v117 - v16;
  v17 = type metadata accessor for FloatingPointRoundingRule();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v22 = type metadata accessor for SearchCollectionViewLayout();
  v132.receiver = v4;
  v132.super_class = v22;
  v23 = objc_msgSendSuper2(&v132, "layoutAttributesForItemAtIndexPath:", isa);

  if (!v23)
  {
    return 0;
  }

  v123 = v10;
  v24 = [v4 collectionView];
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = v24;
  v26 = [v4 collectionView];
  if (!v26 || (v122 = v6, v27 = v26, v28 = [v26 delegate], v27, !v28))
  {

LABEL_11:
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v120 = v28;
  v121 = v23;
  type metadata accessor for SearchCollectionLayoutAttributes();
  v29 = String._bridgeToObjectiveC()();
  v30 = IndexPath._bridgeToObjectiveC()().super.isa;
  v118 = [swift_getObjCClassFromMetadata() layoutAttributesForDecorationViewOfKind:v29 withIndexPath:v30];

  v31 = v25;
  v32 = [v31 traitCollection];
  v117 = [v32 horizontalSizeClass];

  v33 = [v31 traitCollection];
  v34 = [v33 userInterfaceIdiom];

  v119 = v31;
  if (v34)
  {
    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for StaticDimension();
    sub_1000056A8(v35, qword_1009D2430);
    v36 = [v31 traitCollection];

    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1007B0B70;
    *(v37 + 32) = v36;
    v38 = v36;
    v39 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of AnyDimension.rawValue(in:)();
    v41 = v40;
  }

  else
  {
    if (qword_10096D8F0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for StaticDimension();
    sub_1000056A8(v43, qword_1009CFAB0);
    v44 = [v31 traitCollection];

    static Dimensions.defaultRoundingRule.getter();
    StaticDimension.value(compatibleWith:rounded:)();
    v41 = v45;

    (*(v18 + 8))(v20, v17);
  }

  v47 = v120;
  v46 = v121;
  v48 = v122;
  if (v130 != 0xD000000000000022 || 0x800000010080DA90 != v129)
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v49 = v119;
    if ((v50 & 1) != 0 && v117 == 1)
    {
      goto LABEL_23;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_28;
    }

    type metadata accessor for SearchTransparencyView();
    if (static UICollectionReusableView.elementKind.getter() == v130 && v73 == v129)
    {

      v74 = v128;
    }

    else
    {
      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v74 = v128;
      if ((v80 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v81 = v127;
    (*(v127 + 16))(v74, a3, v48);
    v82 = v48;
    v83 = *(v81 + 56);
    v84 = 1;
    v83(v74, 0, 1, v82);
    v129 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_presenter;
    v130 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
    v85 = [*&v47[OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits] traitCollection];
    [v85 horizontalSizeClass];

    dispatch thunk of SearchResultsPresenter.transparencyLinkIndex(columnCount:)();
    v86 = v126;
    if ((v87 & 1) == 0)
    {
      IndexPath.init(item:section:)();
      v84 = 0;
    }

    v88 = v84;
    v89 = v122;
    v83(v86, v88, 1, v122);
    v90 = v89;
    v91 = *(v8 + 48);
    v92 = v128;
    v93 = v123;
    sub_10022BA04(v128, v123);
    sub_10022BA04(v86, v93 + v91);
    v94 = *(v127 + 48);
    if (v94(v93, 1, v89) == 1)
    {
      sub_10002B894(v86, &unk_10097DAE0, &qword_1007B5CA0);
      sub_10002B894(v92, &unk_10097DAE0, &qword_1007B5CA0);
      v95 = v94(v93 + v91, 1, v89);
      v97 = v120;
      v96 = v121;
      if (v95 == 1)
      {
        sub_10002B894(v93, &unk_10097DAE0, &qword_1007B5CA0);
LABEL_59:
        v104 = v130;
        [*&v97[v130] pageMarginInsets];
        v106 = v105;
        v107 = v118;
        [v96 frame];
        MaxY = CGRectGetMaxY(v137);
        [v4 minimumLineSpacing];
        v110 = v109;
        v111 = dispatch thunk of SearchResultsPresenter.transparencyLink.getter();
        if (v111)
        {
          v112 = v111;
          [*&v97[v104] pageContainerSize];
          [*&v97[v104] pageMarginInsets];
          CGSize.subtracting(insets:)();
          v114 = sub_100273BA4(v113, 1.79769313e308, v112, v49);
          v116 = v115;
        }

        else
        {
          v114 = 0.0;
          v116 = 0.0;
        }

        [v107 setFrame:{v106, MaxY + v110, v114, v116}];

        swift_unknownObjectRelease();
        return v107;
      }
    }

    else
    {
      v98 = v125;
      sub_10022BA04(v93, v125);
      v99 = v94(v93 + v91, 1, v90);
      v97 = v120;
      if (v99 != 1)
      {
        v100 = v127;
        v101 = v93 + v91;
        v102 = v124;
        (*(v127 + 32))(v124, v101, v90);
        sub_1003288F8();
        LODWORD(v117) = dispatch thunk of static Equatable.== infix(_:_:)();
        v103 = *(v100 + 8);
        v103(v102, v90);
        sub_10002B894(v86, &unk_10097DAE0, &qword_1007B5CA0);
        sub_10002B894(v128, &unk_10097DAE0, &qword_1007B5CA0);
        v103(v98, v90);
        v49 = v119;
        sub_10002B894(v93, &unk_10097DAE0, &qword_1007B5CA0);
        v96 = v121;
        if (v117)
        {
          goto LABEL_59;
        }

LABEL_57:
        swift_unknownObjectRelease();

        goto LABEL_53;
      }

      sub_10002B894(v86, &unk_10097DAE0, &qword_1007B5CA0);
      sub_10002B894(v128, &unk_10097DAE0, &qword_1007B5CA0);
      (*(v127 + 8))(v98, v90);
      v96 = v121;
    }

    sub_10002B894(v93, &qword_100980740, &unk_1007C7B20);
    goto LABEL_57;
  }

  v49 = v119;
  if (v117 != 1)
  {
LABEL_28:
    v65 = sub_1002BD048(a3);
    if (v65)
    {
      v52 = v65;
      [v46 frame];
      v66 = CGRectGetWidth(v135) + 24.0;
      [v46 frame];
      v67 = v41 + v41 + CGRectGetHeight(v136);
      [v46 frame];
      v69 = v68 + -12.0;
      v71 = v70 - v41;
      v63 = v118;
      [v63 setFrame:{v69, v71, v66, v67}];
      *&v63[OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_cornerRadius] = *&v4[OBJC_IVAR____TtC8AppStore26SearchCollectionViewLayout_backgroundCornerRadius];
      if (v52 != 1)
      {
        if (v52 == 2)
        {
          v64 = 0;
          goto LABEL_40;
        }

LABEL_32:
        if (v52 != 3)
        {
          v131 = v52;
          result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
          __break(1u);
          return result;
        }

        if (qword_10096E810 != -1)
        {
          swift_once();
        }

        v64 = qword_1009D28B0;
        v72 = qword_1009D28B0;
        goto LABEL_40;
      }

LABEL_39:
      v64 = [objc_opt_self() secondarySystemBackgroundColor];
      goto LABEL_40;
    }

    goto LABEL_52;
  }

LABEL_23:
  v51 = sub_1002BD048(a3);
  if (!v51)
  {
LABEL_52:
    swift_unknownObjectRelease();

LABEL_53:
    return 0;
  }

  v52 = v51;
  [v46 frame];
  Width = CGRectGetWidth(v133);
  [v46 frame];
  v55 = Width + v54 + v54;
  [v46 frame];
  v56 = v41 + v41 + CGRectGetHeight(v134);
  [v46 frame];
  v58 = v57;
  v60 = v59;
  [v46 frame];
  v62 = v58 - v61;
  v63 = v118;
  [v63 setFrame:{v62, v60 - v41, v55, v56}];
  *&v63[OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_cornerRadius] = 0;
  if (v52 == 1)
  {
    goto LABEL_39;
  }

  v64 = 0;
  if (v52 != 2)
  {
    goto LABEL_32;
  }

LABEL_40:
  v75 = *&v63[OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_backgroundColor];
  *&v63[OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_backgroundColor] = v64;

  v76 = v63;
  *&v63[OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_backgroundGradientColors] = sub_100326018(v52);

  if (v52 >= 3)
  {
    if (qword_10096E818 != -1)
    {
      swift_once();
    }

    v77 = qword_1009D28B8;
    v78 = qword_1009D28B8;
  }

  else
  {
    v77 = 0;
  }

  v79 = *&v76[OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_borderColor];
  *&v76[OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_borderColor] = v77;

  [v76 setZIndex:-1];
  swift_unknownObjectRelease();

  return v76;
}

uint64_t sub_100328560()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 delegate];

    if (v3)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        type metadata accessor for SearchResultsCollectionViewDelegate(0);
        v4 = swift_dynamicCastClass();
        if (v4)
        {
          v5 = v4;
          v6 = sub_100399024(_swiftEmptyArrayStorage);
          v7 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
          swift_beginAccess();
          *(v5 + v7) = v6;

          *(v5 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_isFirstItemFullWidth) = 2;
        }
      }

      swift_unknownObjectRelease();
    }
  }

  v14.receiver = v0;
  v14.super_class = type metadata accessor for SearchCollectionViewLayout();
  objc_msgSendSuper2(&v14, "prepareLayout");
  v8 = &v0[OBJC_IVAR____TtC8AppStore26SearchCollectionViewLayout_pendingPrepareObserver];
  v9 = *&v0[OBJC_IVAR____TtC8AppStore26SearchCollectionViewLayout_pendingPrepareObserver];
  if (v9)
  {
    v10 = v8[1];

    v9(v0);
    sub_10001F63C(v9, v10);
    v11 = *v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = v8[1];
  *v8 = 0;
  v8[1] = 0;
  return sub_10001F63C(v11, v12);
}

id sub_100328720(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchCollectionViewLayout();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10032878C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009CFAB0);
  sub_1000056A8(v4, qword_1009CFAB0);
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

unint64_t sub_1003288F8()
{
  result = qword_10098B750;
  if (!qword_10098B750)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098B750);
  }

  return result;
}

unint64_t sub_100328964()
{
  result = qword_100980748;
  if (!qword_100980748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980748);
  }

  return result;
}

unint64_t sub_1003289B8(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t MetadataRibbonView.hasContent.getter()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = sub_1004849E0(0, v2);

  return v3 & 1;
}

void MetadataRibbonView.isInsideSearchAd.setter(char a1)
{
  v3 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_isInsideSearchAd;
  swift_beginAccess();
  v1[v7] = a1;
  if (a1)
  {
    static MetadataRibbonViewLayout.Metrics.standard.getter();
    v8 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v4 + 24))(&v1[v8], v6, v3);
    swift_endAccess();
    [v1 setNeedsLayout];
    (*(v4 + 8))(v6, v3);
  }
}

id sub_100328B9C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v45 = a2;
  v4 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MetadataRibbonItemViewType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v63 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_71;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v59 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
  v60 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
  v57 = enum case for MetadataRibbonItemViewType.starRating(_:);
  v58 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
  v55 = enum case for MetadataRibbonItemViewType.divider(_:);
  v56 = enum case for MetadataRibbonItemViewType.textLabel(_:);
  v62 = a1 & 0xC000000000000001;
  v54 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
  v52 = a1;
  if (v13)
  {
    v53 = v9;
    v9 = v13;
    v14 = 0;
    v61 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = (v7 + 11);
    v51 = v7++;
    while (1)
    {
      if (v62)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          v24 = v63;
          v13 = v9;
          v9 = v53;
          v7 = v51;
          goto LABEL_35;
        }
      }

      else
      {
        if (v14 >= *(v61 + 16))
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v13 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        v16 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          goto LABEL_32;
        }
      }

      MetadataRibbonItem.viewContainerType.getter();
      v17 = (*v15)(v12, v6);
      if (v17 == v60 || v17 == v59 || v17 == v58 || v17 == v57 || v17 == v56 || v17 == v55 || v17 == v54)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v52;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {

        (*v7)(v12, v6);
      }

      ++v14;
      if (v16 == v9)
      {
        goto LABEL_33;
      }
    }
  }

  v61 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = _swiftEmptyArrayStorage;
LABEL_35:
  v25 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels;
  v26 = v49;
  swift_beginAccess();
  *&v26[v25] = v24;

  if (v13)
  {
    v53 = v13;
    v27 = 0;
    v28 = (v7 + 11);
    ++v7;
    v29 = _swiftEmptyArrayStorage;
    do
    {
      v51 = v29;
      v12 = v27;
      while (1)
      {
        if (v62)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v27 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v12 >= *(v61 + 16))
          {
            goto LABEL_70;
          }

          v27 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        MetadataRibbonItem.viewContainerType.getter();
        v30 = (*v28)(v9, v6);
        if (v30 == v60)
        {
          type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView(0);
          v31 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
          v32 = &unk_1007B0FD8;
          v33 = &unk_100970650;
          goto LABEL_60;
        }

        if (v30 == v59)
        {
          type metadata accessor for MetadataRibbonEditorsChoiceView(0);
          v31 = type metadata accessor for MetadataRibbonEditorsChoiceView;
          v32 = &unk_1007C1128;
          v33 = &unk_100972E90;
          goto LABEL_60;
        }

        if (v30 == v58)
        {
          type metadata accessor for MetadataRibbonIconWithLabelView(0);
          v31 = type metadata accessor for MetadataRibbonIconWithLabelView;
          v32 = &unk_1007B7A08;
          v33 = &unk_100970648;
          goto LABEL_60;
        }

        if (v30 == v57)
        {
          type metadata accessor for MetadataRibbonStarRatingView(0);
          v31 = type metadata accessor for MetadataRibbonStarRatingView;
          v32 = &unk_1007D8798;
          v33 = &unk_100972EA0;
          goto LABEL_60;
        }

        if (v30 == v56)
        {
          type metadata accessor for MetadataRibbonTagView(0);
          v31 = type metadata accessor for MetadataRibbonTagView;
          v32 = &unk_1007BFD50;
          v33 = &unk_100970640;
          goto LABEL_60;
        }

        if (v30 == v55)
        {
          type metadata accessor for MetadataRibbonBarView(0);
          v31 = type metadata accessor for MetadataRibbonBarView;
          v32 = &unk_1007CB2D0;
          v33 = &unk_100972E80;
          goto LABEL_60;
        }

        if (v30 == v54)
        {
          break;
        }

        (*v7)(v9, v6);
        ++v12;
        if (v27 == v53)
        {
          v29 = v51;
          goto LABEL_67;
        }
      }

      type metadata accessor for MetadataRibbonHighlightedTextView(0);
      v31 = type metadata accessor for MetadataRibbonHighlightedTextView;
      v32 = &unk_1007BFA80;
      v33 = &unk_100970638;
LABEL_60:
      v34 = sub_10032B100(v33, v31, v32);
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      dispatch thunk of MetadataRibbonItemView.apply(_:asPartOf:)();
      MetadataRibbonItem.id.getter();
      dispatch thunk of MetadataRibbonItemView.id.setter();

      v29 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_10003406C(0, v29[2] + 1, 1, v29);
      }

      v37 = v29[2];
      v36 = v29[3];
      if (v37 >= v36 >> 1)
      {
        v29 = sub_10003406C((v36 > 1), v37 + 1, 1, v29);
      }

      v29[2] = (v37 + 1);
      v38 = &v29[2 * v37];
      v38[4] = v35;
      v38[5] = v34;
      a1 = v52;
    }

    while (v27 != v53);
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

LABEL_67:
  v39 = v49;
  sub_1003296A4(v29);
  v41 = v47;
  v40 = v48;
  v42 = v46;
  (*(v47 + 16))(v46, v45, v48);
  v43 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v41 + 24))(&v39[v43], v42, v40);
  swift_endAccess();
  [v39 setNeedsLayout];
  (*(v41 + 8))(v42, v40);
  return [v39 setNeedsLayout];
}

id sub_100329528()
{
  v1 = v0;
  v2 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v6], v2);

  MetadataRibbonViewLayout.Metrics.maximumNumberOfItems.getter();
  (*(v3 + 8))(v5, v2);
  result = sub_1000477CC();
  v11 = (v10 >> 1) - v9;
  if (v10 >> 1 == v9)
  {
    goto LABEL_5;
  }

  if ((v10 >> 1) > v9)
  {
    v12 = (v8 + 16 * v9);
    do
    {
      v13 = *v12;
      v12 += 2;
      [v1 addSubview:v13];
      --v11;
    }

    while (v11);
LABEL_5:
    swift_unknownObjectRelease();
    return [v1 setNeedsLayout];
  }

  __break(1u);
  return result;
}

id sub_1003296A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = 32;
    do
    {
      [*(v4 + v6) removeFromSuperview];
      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v1 + v3) = a1;

  return sub_100329528();
}

uint64_t MetadataRibbonView.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
  swift_beginAccess();
  v4 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1003297C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
  swift_beginAccess();
  v5 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100329854(uint64_t a1, char **a2)
{
  v4 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v5 + 24))(&v9[v10], v8, v4);
  swift_endAccess();
  [v9 setNeedsLayout];
  return (*(v5 + 8))(v8, v4);
}

double MetadataRibbonView.metadataRibbonItemModels.getter()
{
  swift_beginAccess();

  return result;
}

Swift::Void __swiftcall MetadataRibbonView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v33 = type metadata accessor for LayoutRect();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MetadataRibbonViewLayout();
  v28 = *(v29 - 8);
  *&v5 = __chkstk_darwin(v29).n128_u64[0];
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46.receiver = v1;
  v46.super_class = ObjectType;
  v31 = ObjectType;
  objc_msgSendSuper2(&v46, "layoutSubviews", v5);
  v7 = *&v1[OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews];
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v11 = v7 + 40;
    while (v9 < *(v7 + 16))
    {
      v12 = *(v11 - 8);
      swift_getObjectType();
      v13 = v12;
      dispatch thunk of MetadataRibbonItemView.layoutContext.getter();
      v36 = v42;
      v37 = v43;
      v38 = v44;
      v39 = v45;
      v34 = v40;
      v35 = v41;

      if (*(&v35 + 1))
      {
        v42 = v36;
        v43 = v37;
        v44 = v38;
        v45 = v39;
        v40 = v34;
        v41 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100033284(0, v10[2] + 1, 1, v10);
        }

        v15 = v10[2];
        v14 = v10[3];
        if (v15 >= v14 >> 1)
        {
          v10 = sub_100033284((v14 > 1), v15 + 1, 1, v10);
        }

        v10[2] = v15 + 1;
        v16 = &v10[11 * v15];
        v17 = v41;
        *(v16 + 2) = v40;
        *(v16 + 3) = v17;
        v18 = v42;
        v19 = v43;
        v20 = v44;
        *(v16 + 56) = v45;
        *(v16 + 5) = v19;
        *(v16 + 6) = v20;
        *(v16 + 4) = v18;
      }

      else
      {
        sub_10002B894(&v34, &qword_100980758, &qword_1007C7BF0);
      }

      ++v9;
      v11 += 16;
      if (v8 == v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v21 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v25 + 16))(v24, &v1[v21], v27);
    v22 = v26;
    MetadataRibbonViewLayout.init(metadataRibbonItemLayoutContexts:metrics:)();
    LayoutMarginsAware<>.layoutFrame.getter();
    v23 = v30;
    MetadataRibbonViewLayout.placeChildren(relativeTo:in:)();
    (*(v32 + 8))(v23, v33);
    (*(v28 + 8))(v22, v29);
  }
}

void MetadataRibbonView.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v30 = a1;
  v28 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MetadataRibbonViewLayout();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v3;
  v6 = *(v3 + OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews);
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    v10 = v6 + 40;
    while (v8 < *(v6 + 16))
    {
      v11 = *(v10 - 8);
      swift_getObjectType();
      v12 = v11;
      dispatch thunk of MetadataRibbonItemView.layoutContext.getter();
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v36 = v42;
      v31 = v37;
      v32 = v38;

      if (*(&v32 + 1))
      {
        v39 = v33;
        v40 = v34;
        v41 = v35;
        v42 = v36;
        v37 = v31;
        v38 = v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100033284(0, v9[2] + 1, 1, v9);
        }

        v14 = v9[2];
        v13 = v9[3];
        if (v14 >= v13 >> 1)
        {
          v9 = sub_100033284((v13 > 1), v14 + 1, 1, v9);
        }

        v9[2] = v14 + 1;
        v15 = &v9[11 * v14];
        v16 = v38;
        *(v15 + 2) = v37;
        *(v15 + 3) = v16;
        v17 = v39;
        v18 = v40;
        v19 = v41;
        *(v15 + 56) = v42;
        *(v15 + 5) = v18;
        *(v15 + 6) = v19;
        *(v15 + 4) = v17;
      }

      else
      {
        sub_10002B894(&v31, &qword_100980758, &qword_1007C7BF0);
      }

      ++v8;
      v10 += 16;
      if (v7 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v20 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
    v21 = v29;
    swift_beginAccess();
    (*(v26 + 16))(v24, v21 + v20, v28);
    v22 = v23;
    MetadataRibbonViewLayout.init(metadataRibbonItemLayoutContexts:metrics:)();
    MetadataRibbonViewLayout.measurements(fitting:in:)();
    (*(v25 + 8))(v22, v27);
  }
}

uint64_t MetadataRibbonView.isInsideSearchAd.getter()
{
  v1 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_isInsideSearchAd;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*MetadataRibbonView.isInsideSearchAd.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v8 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_isInsideSearchAd;
  v4[9] = v7;
  v4[10] = v8;
  swift_beginAccess();
  return sub_10032A504;
}

void sub_10032A504(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 48);
    if (v4[*(v3 + 80)] == 1)
    {
      v6 = *(v3 + 64);
      v5 = *(v3 + 72);
      v7 = *(v3 + 56);
      static MetadataRibbonViewLayout.Metrics.standard.getter();
      v8 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v4[v8], v5, v7);
      swift_endAccess();
      [v4 setNeedsLayout];
      (*(v6 + 8))(v5, v7);
    }
  }

  free(*(v3 + 72));

  free(v3);
}

uint64_t type metadata accessor for MetadataRibbonView(uint64_t a1)
{
  result = qword_100980788;
  if (!qword_100980788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10032A6D0(uint64_t a1)
{
  result = type metadata accessor for MetadataRibbonViewLayout.Metrics();
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

void sub_10032A784(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v20 = type metadata accessor for Artwork.Crop();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v19 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = *(v2 + OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews);
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      goto LABEL_24;
    }

    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v9)
    {
      v10 = 0;
      v22 = v9;
      v23 = v6 & 0xC000000000000001;
      v16 = v3 + 1;
      v17 = v6;
      v11 = 32;
      v18 = v7;
      do
      {
        if (v23)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *(v8 + 16))
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            v9 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }
        }

        v12 = *(v7 + 16);
        if (v10 == v12)
        {

          break;
        }

        if (v10 >= v12)
        {
          goto LABEL_23;
        }

        v3 = *(v7 + v11);
        type metadata accessor for MetadataRibbonIconWithLabelView(0);
        if (swift_dynamicCastClass())
        {
          v13 = v3;
          v14 = MetadataRibbonItem.artwork.getter();
          if (v14)
          {
            v3 = v14;
            v15 = v19;
            Artwork.crop.getter();
            Artwork.Crop.preferredContentMode.getter();
            (*v16)(v15, v20);
            Artwork.config(_:mode:prefersLayeredImage:)();
            type metadata accessor for ArtworkLoader();
            type metadata accessor for ArtworkView();
            static ArtworkLoader.handlerKey<A>(for:)();
            swift_allocObject();
            swift_unknownObjectWeakInit();

            ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

            sub_10002B894(v24, &qword_10096FB90, &qword_1007B2A50);
            v6 = v17;
            v7 = v18;
          }

          else
          {
          }

          v9 = v22;
        }

        else
        {
        }

        ++v10;
        v11 += 16;
      }

      while (v9 != v10);
    }
  }
}

uint64_t sub_10032AAE8(unint64_t a1, uint64_t a2)
{
  v34 = a2;
  v33 = type metadata accessor for Artwork.Crop();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for AspectRatio();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout.Metrics();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MetadataRibbonItemViewType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  result = _swiftEmptyArrayStorage;
  if (!a1)
  {
    return result;
  }

  v42 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_4;
    }

    return _swiftEmptyArrayStorage;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  if (result >= 1)
  {
    v16 = 0;
    v39 = a1 & 0xC000000000000001;
    v38 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
    v37 = (v9 + 104);
    v17 = (v9 + 8);
    v27 = (v4 + 8);
    v26 = (v6 + 8);
    v25 = (v36 + 8);
    v35 = _swiftEmptyArrayStorage;
    v36 = a1;
    v40 = result;
    while (1)
    {
      if (v39)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      MetadataRibbonItem.viewContainerType.getter();
      (*v37)(v11, v38, v8);
      sub_10032B100(&qword_100980798, &type metadata accessor for MetadataRibbonItemViewType, &protocol conformance descriptor for MetadataRibbonItemViewType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v41[0] == v41[5] && v41[1] == v41[6])
      {
        v18 = *v17;
        (*v17)(v11, v8);
        v18(v14, v8);
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v20 = *v17;
        (*v17)(v11, v8);
        v20(v14, v8);

        if ((v19 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (MetadataRibbonItem.artwork.getter())
      {
        v21 = v28;
        static MetadataRibbonIconWithLabelViewLayout.Metrics.standard.getter();
        MetadataRibbonIconWithLabelViewLayout.Metrics.defaultArtworkHeight.getter();
        sub_10002A400(v41, v41[3]);
        AnyDimension.value(with:)();
        sub_100007000(v41);
        Artwork.size.getter();
        v22 = v30;
        AspectRatio.init(_:_:)();
        AspectRatio.width(fromHeight:)();
        (*v27)(v22, v31);
        (*v26)(v21, v29);
        v23 = v32;
        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        (*v25)(v23, v33);
        Artwork.config(_:mode:prefersLayeredImage:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v35 = v42;
        goto LABEL_7;
      }

LABEL_6:

LABEL_7:
      if (v40 == ++v16)
      {
        return v35;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10032B100(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10032B148(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_10002849C(&qword_100980990, &unk_1007C7F28);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for ComponentLayoutOptions();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_10032FDF8(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v17 = v27;
  sub_10032FDF8(&qword_100980998, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v25 = a2;
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v21 = v28;
  sub_1000476A0(v7, v28, &qword_100980990, &unk_1007C7F28);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

uint64_t sub_10032B44C(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_10002849C(&qword_100975438, &unk_1007C7EB0);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for AppStoreConfig();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_10032FDF8(&qword_100975460, &type metadata accessor for AppStoreConfig, &protocol conformance descriptor for AppStoreConfig);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v17 = v27;
  sub_10032FDF8(&qword_100975478, &type metadata accessor for AppStoreConfig, &protocol conformance descriptor for AppStoreConfig);
  v25 = a2;
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v21 = v28;
  sub_1000476A0(v7, v28, &qword_100975438, &unk_1007C7EB0);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

uint64_t sub_10032B750(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_10002849C(&qword_100980968, &qword_1007C7E38);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for VideoControls();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_10032FDF8(&unk_100988DE0, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v17 = v27;
  sub_10032FDF8(&qword_100980970, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  v25 = a2;
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v21 = v28;
  sub_1000476A0(v7, v28, &qword_100980968, &qword_1007C7E38);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

void sub_10032BA54(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    if (Strong)
    {
      type metadata accessor for ProductLockupCollectionViewCell(0);
      v4 = Strong;
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    sub_10032E3E0();
    v4 = Strong;
LABEL_9:

    goto LABEL_10;
  }

  if (Strong)
  {
    goto LABEL_8;
  }

LABEL_10:
}

void sub_10032BB24(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_1009CF410);

    if (a1)
    {
      sub_10032FDF8(&qword_100980978, type metadata accessor for ChevronView, &unk_1007C7CEC);
    }

    CompoundScrollObserver.removeChild(_:)();
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + qword_1009CF410);

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      sub_10032FDF8(&qword_100980978, type metadata accessor for ChevronView, &unk_1007C7CEC);
    }

    CompoundScrollObserver.addChild(_:)();
  }
}

uint64_t sub_10032BC8C()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ProductScrollObserver();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 24) = 1;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 32) = sub_10032FDF0;
    *(v1 + 40) = v2;
    *(v0 + 64) = v1;
  }

  return v1;
}

void sub_10032BD40(uint64_t a1, char a2, uint64_t a3, double a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10032DF68(a1, a2 & 1, a4);
  }
}

double sub_10032BDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10032C250(a4, a1, a2, a5);
  }

  return result;
}

void sub_10032BE50(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      memset(v2, 0, sizeof(v2));
      ProductDiffablePagePresenter.didSelectDeveloper(sender:)();

      sub_10002B894(v2, &unk_1009711D0, &unk_1007B1A10);
    }
  }
}

void sub_10032BEE4(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a2;
  v6 = type metadata accessor for VideoControls();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v18 = sub_10002849C(&qword_100979D68, &qword_1007C7E30);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v28 - v20;
  v22 = *(v7 + 16);
  v22(a4, a1, v6, v19);
  static VideoControls.muteUnmute.getter();
  (v22)(v11, a4, v6);
  sub_10032FDF8(&unk_100988DE0, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  dispatch thunk of SetAlgebra.intersection(_:)();
  if (dispatch thunk of SetAlgebra.isEmpty.getter())
  {
    v23 = *(v7 + 8);
    v23(v14, v6);
    v23(v17, v6);
    v24 = 1;
  }

  else
  {
    dispatch thunk of SetAlgebra.subtract(_:)();
    v23 = *(v7 + 8);
    v23(v17, v6);
    (*(v7 + 32))(v21, v14, v6);
    v24 = 0;
  }

  (*(v7 + 56))(v21, v24, 1, v6);
  sub_10002B894(v21, &qword_100979D68, &qword_1007C7E30);
  if (v31)
  {
    v25 = [v30 traitCollection];
    v26 = [v25 horizontalSizeClass];

    if (v26 == 2)
    {
      v27 = v29;
      static VideoControls.prominentPlayOnPause.getter();
      sub_10032B750(v11, v27);
      v23(v27, v6);
      v23(v11, v6);
    }
  }
}

uint64_t sub_10032C250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a3;
  v89 = a1;
  v4 = sub_10002849C(&qword_10098A2E0, &qword_1007BAEA0);
  __chkstk_darwin(v4 - 8);
  v82 = &v76 - v5;
  v87 = type metadata accessor for LegacyAppState.AppInstallationDetails();
  v90 = *(v87 - 8);
  __chkstk_darwin(v87);
  v78 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = &v76 - v8;
  v9 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v76 - v10;
  v12 = type metadata accessor for LegacyAppState();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v77 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v81 = &v76 - v16;
  __chkstk_darwin(v17);
  v84 = &v76 - v18;
  __chkstk_darwin(v19);
  v21 = &v76 - v20;
  v92 = sub_10002849C(&qword_100980980, &unk_1007C7E40);
  v85 = *(v92 - 8);
  __chkstk_darwin(v92);
  v23 = &v76 - v22;
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v80 = ASKBagContract.downloadProgressDisplayWaitTime.getter();

  inject<A, B>(_:from:)();
  v76 = ASKBagContract.downloadProgressDisplayRemainingTime.getter();

  sub_10002849C(&qword_100980988, &qword_1007C7ED0);
  BaseObjectGraph.inject<A>(_:)();
  sub_10002A400(v95, v95[3]);
  v79 = dispatch thunk of NetworkInquiry.isLikelyReachable.getter();
  sub_100007000(v95);
  v24 = sub_1000D71CC();
  v93 = v23;
  v91 = v24;
  ItemLayoutContext.typedWritableState<A>(as:)();
  swift_getObjectType();
  v25 = v21;
  dispatch thunk of AppStateMachine.currentState.getter();
  dispatch thunk of AppStateMachine.startDownloadTime.getter();
  v26 = type metadata accessor for Date();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v11, 1, v26) == 1)
  {
    sub_10002B894(v11, &qword_100979710, &qword_1007BB7C0);
    v28 = 0.0;
  }

  else
  {
    Date.timeIntervalSinceNow.getter();
    v28 = v29;
    (*(v27 + 8))(v11, v26);
  }

  swift_getKeyPath();
  WritableStateLens<A>.subscript.getter();

  v30 = v95[0];
  v31 = *(v13 + 16);
  v32 = v84;
  v31(v84, v21, v12);
  v33 = (*(v13 + 88))(v32, v12);
  v35 = v86;
  v34 = v87;
  if (v33 != enum case for LegacyAppState.downloading(_:))
  {
    if (v33 != enum case for LegacyAppState.installing(_:))
    {
      goto LABEL_12;
    }

    v40 = v77;
    v31(v77, v32, v12);
    (*(v13 + 96))(v40, v12);
    v41 = v78;
    (*(v90 + 32))(v78, v40, v34);
    v42 = v92;
    if ((v30 & 1) != 0 && (LegacyAppState.AppInstallationDetails.hasPostProcessing.getter() & 1) == 0)
    {
      v55._object = 0x800000010080DC50;
      v55._countAndFlagsBits = 0xD000000000000024;
      v56._countAndFlagsBits = 0;
      v56._object = 0xE000000000000000;
      v57 = localizedString(_:comment:)(v55, v56);
      v58 = v34;
      countAndFlagsBits = v57._countAndFlagsBits;
      object = v57._object;
      (*(v90 + 8))(v41, v58);
      goto LABEL_21;
    }

    (*(v90 + 8))(v41, v34);
LABEL_19:
    v43 = *(v13 + 8);
    v43(v25, v12);
    countAndFlagsBits = 0;
    object = 0;
    goto LABEL_22;
  }

  v36 = v80;
  v37 = v81;
  v31(v81, v32, v12);
  (*(v13 + 96))(v37, v12);
  (*(v90 + 32))(v88, v37, v34);
  if ((v79 & (v36 < -v28)) != 0)
  {
    *&v38 = COERCE_DOUBLE(LegacyAppState.estimatedTimeRemaining.getter());
    if ((v39 & 1) == 0)
    {
      v46 = *&v38;
      v47 = LegacyAppState.AppInstallationDetails.hasPostProcessing.getter();
      v42 = v92;
      if ((v47 & 1) == 0 || (v48 = LegacyAppState.AppInstallationDetails.postProcessingPhaseProgress.getter()) == 0 || (v49 = v48, v50 = [v48 completedUnitCount], v49, v51 = v50 <= 0, v34 = v87, !v51))
      {
        if ((v76 < v46) | v30 & 1)
        {
          v52 = LegacyAppState.estimatedTimeRemainingText.getter();
          v53 = v34;
          countAndFlagsBits = v52;
          object = v54;
          (*(v90 + 8))(v88, v53);
LABEL_21:
          v43 = *(v13 + 8);
          v43(v25, v12);
          goto LABEL_22;
        }
      }

      (*(v90 + 8))(v88, v34);
      goto LABEL_19;
    }
  }

  (*(v90 + 8))(v88, v34);
LABEL_12:
  v43 = *(v13 + 8);
  v43(v25, v12);
  countAndFlagsBits = 0;
  object = 0;
  v42 = v92;
LABEL_22:
  v43(v32, v12);
  swift_getKeyPath();
  WritableStateLens<A>.subscript.getter();

  if ((object != 0) == LOBYTE(v95[0]) || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    v62 = 0;
  }

  else
  {
    v60 = Strong;
    v61 = [Strong traitCollection];

    v62 = UITraitCollection.prefersAccessibilityLayouts.getter();
  }

  __chkstk_darwin(Strong);
  *(&v76 - 32) = v63;
  *(&v76 - 3) = countAndFlagsBits;
  *(&v76 - 2) = object;
  v64 = v93;
  WritableStateLens<A>.updateValue(_:)();

  if (v62)
  {
    v65 = type metadata accessor for TaskPriority();
    v66 = v82;
    (*(*(v65 - 8) + 56))(v82, 1, 1, v65);
    type metadata accessor for MainActor();

    v67 = static MainActor.shared.getter();
    v68 = swift_allocObject();
    v68[2] = v67;
    v68[3] = &protocol witness table for MainActor;
    v68[4] = v35;
    sub_100221E78(0, 0, v66, &unk_1007C7F20, v68);
  }

  else
  {
    v69 = swift_unknownObjectWeakLoadStrong();
    if (v69)
    {
      v70 = v69;
      swift_getKeyPath();
      WritableStateLens<A>.subscript.getter();

      v71 = v95[0];
      v72 = v95[1];
      swift_getKeyPath();
      WritableStateLens<A>.subscript.getter();

      v73 = v94;
      v74 = sub_100079F24();
      swift_getObjectType();
      sub_100433F8C(v71, v72, v73, v74, v70);
      swift_unknownObjectRelease();
    }
  }

  return (*(v85 + 8))(v64, v42);
}

uint64_t sub_10032CCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10032CD74, v6, v5);
}

uint64_t sub_10032CD74()
{

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    ProductDiffablePagePresenter.reconfigureProductTopLockup()();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

double sub_10032CE00(uint64_t a1, uint64_t a2)
{
  v105 = a2;
  v2 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v2 - 8);
  v104 = &v84 - v3;
  v4 = type metadata accessor for OfferButtonSubtitlePosition();
  v99 = *(v4 - 8);
  __chkstk_darwin(v4);
  v101 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v102 = *(v6 - 8);
  v103 = v6;
  __chkstk_darwin(v6);
  v100 = &v84 - v7;
  v8 = sub_10002849C(&unk_100970170, &unk_1007BDDF0);
  __chkstk_darwin(v8 - 8);
  v97 = &v84 - v9;
  v96 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v11 - 8);
  v98 = &v84 - v12;
  v13 = sub_10002849C(&qword_100973AC8, &unk_1007C7EC0);
  __chkstk_darwin(v13 - 8);
  v15 = &v84 - v14;
  v16 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v16 - 8);
  v18 = &v84 - v17;
  v19 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v19 - 8);
  v21 = &v84 - v20;
  v22 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v22 - 8);
  v109 = &v84 - v23;
  v24 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v24 - 8);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v84 - v28;
  v30 = type metadata accessor for AspectRatio();
  v107 = *(v30 - 8);
  v108 = v30;
  __chkstk_darwin(v30);
  v106 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductTopLockup();
  sub_10032FDF8(&qword_100973AE8, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  ItemLayoutContext.typedModel<A>(as:)();
  v33 = *&v110[0];
  if (*&v110[0])
  {
    v93 = v21;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      v91 = v15;
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = swift_unknownObjectWeakLoadStrong();
      if (v37)
      {
        v84 = v18;
        v90 = v4;
        v38 = v33;
        v39 = v37;
        v40 = *(v37 + qword_1009CE4D0);

        v85 = ProductTopLockup.title.getter();
        v42 = v41;
        sub_100495A34();
        v43 = v106;
        AspectRatio.init(_:_:)();
        v92 = ProductDiffablePagePresenter.titleOfferDisplayProperties.getter();
        v87 = v38;
        v44 = v40;
        v86 = ProductTopLockup.offerAction.getter();
        v89 = v35;
        v45 = ProductDiffablePagePresenter.offerButtonMode.getter();
        v46 = OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView;
        sub_100275C3C(v85, v42);
        v48 = v107;
        v47 = v108;
        (*(v107 + 16))(v29, v43, v108);
        (*(v48 + 56))(v29, 0, 1, v47);
        v49 = *&v44[v46];
        sub_1000727A0(v29, v26);
        v50 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconAspectRatio;
        swift_beginAccess();
        sub_10032FC78(v26, v49 + v50);
        swift_endAccess();
        [v49 setNeedsLayout];
        sub_10002B894(v26, &unk_1009732A0, &unk_1007B4FE0);
        sub_10002B894(v29, &unk_1009732A0, &unk_1007B4FE0);
        v51 = &v44[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapHandler];
        v52 = *&v44[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapHandler];
        v53 = *&v44[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapHandler + 8];
        *v51 = sub_10032FC70;
        v51[1] = v36;
        swift_retain_n();
        sub_10001F63C(v52, v53);
        v54 = *&v44[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapGestureRecognizer];

        [v54 setEnabled:1];

        v55 = OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton;
        LODWORD(v85) = [*&v44[OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton] isHidden];
        *&v44[OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButtonMode] = v45;
        if (ProductOfferButtonMode.isHidden.getter())
        {
          v56 = *&v44[v55];
          v57 = 1;
          v58 = v109;
        }

        else
        {
          v59 = ProductNavigationBarMode.rawValue.getter();
          v60 = ProductNavigationBarMode.rawValue.getter();
          v56 = *&v44[v55];
          v58 = v109;
          if (v59 == v60)
          {
            v57 = 1;
          }

          else
          {
            v57 = v44[OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility + 1];
          }
        }

        v61 = v92;
        [v56 setHidden:v57];
        v62 = ProductOfferButtonMode.isDisabled.getter();
        v88 = v36;
        if (v62)
        {
          v63 = enum case for OfferStyle.disabled(_:);
          v64 = type metadata accessor for OfferStyle();
          v65 = *(v64 - 8);
          (*(v65 + 104))(v58, v63, v64);
          (*(v65 + 56))(v58, 0, 1, v64);
          if (v61)
          {
            v66 = v84;
LABEL_16:
            v68 = type metadata accessor for OfferEnvironment();
            v69 = v93;
            (*(*(v68 - 8) + 56))(v93, 1, 1, v68);
            v70 = type metadata accessor for OfferTint();
            (*(*(v70 - 8) + 56))(v66, 1, 1, v70);
            v71 = type metadata accessor for OfferLabelStyle();
            v72 = v91;
            (*(*(v71 - 8) + 56))(v91, 1, 1, v71);
            memset(v110, 0, 32);
            v73 = v66;
            v74 = dispatch thunk of OfferDisplayProperties.newOfferDisplayPropertiesChanging(titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)();
            sub_10002B894(v110, &unk_1009711D0, &unk_1007B1A10);
            sub_10002B894(v72, &qword_100973AC8, &unk_1007C7EC0);
            sub_10002B894(v73, &unk_100973AD0, &unk_1007B17C0);
            sub_10002B894(v69, &unk_100970160, &unk_1007BDDE0);
LABEL_19:
            v76 = v94;
            v77 = v96;
            (*(v94 + 104))(v95, enum case for OfferButtonPresenterViewAlignment.right(_:), v96);
            v78 = 1;
            (*(v76 + 56))(v97, 1, 1, v77);
            sub_10032FDF8(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
            v79 = v98;
            AccessibilityConditional.init(value:axValue:)();
            v80 = sub_10002849C(&unk_100973240, qword_1007B2220);
            (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
            v81 = v99;
            v82 = v90;
            (*(v99 + 104))(v101, enum case for OfferButtonSubtitlePosition.left(_:), v90);
            (*(v81 + 56))(v104, 1, 1, v82);
            sub_10032FDF8(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
            v83 = v100;
            AccessibilityConditional.init(value:axValue:)();
            sub_10064AFA4(v74, v86, 0, v79, v83, v105, 0, 0);
            (*(v102 + 8))(v83, v103);
            sub_10002B894(v79, &unk_100973230, &unk_1007B17E0);
            if ((v85 & 1) == 0)
            {
              v78 = v44[OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility + 1];
            }

            [*&v44[v55] setHidden:v78];

            sub_10002B894(v109, &qword_100973AE0, &unk_1007B17D0);
            (*(v107 + 8))(v106, v108);

            goto LABEL_22;
          }
        }

        else
        {
          v66 = v84;
          if (v61)
          {
            OfferDisplayProperties.style.getter();
            v67 = type metadata accessor for OfferStyle();
            (*(*(v67 - 8) + 56))(v58, 0, 1, v67);
            goto LABEL_16;
          }

          v75 = type metadata accessor for OfferStyle();
          (*(*(v75 - 8) + 56))(v58, 1, 1, v75);
        }

        v74 = 0;
        goto LABEL_19;
      }
    }

LABEL_22:
  }

  return result;
}

void sub_10032DBE0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v2 = [Strong collectionView];

      if (v2)
      {
        [v2 _scrollToTopIfPossible:1];
      }
    }
  }
}

void sub_10032DC80(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong collectionView];

    if (v4)
    {
      sub_100005744(0, &qword_1009704D0, UIScrollView_ptr);
      v5 = a1;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        sub_10032BC8C();
        sub_100043A7C(v5);

        [v5 safeAreaInsets];
        v8 = v7;
        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9)
        {
          v10 = *&v9[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView];
          if (v10 && v8 > 0.0)
          {
            v32 = v9;
            v11 = v10;
            [v5 bounds];
            v12 = CGRectGetHeight(v34) * -0.5;
            [*&v32[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView] frame];
            v13 = CGRectGetMinY(v35) + v12;
            [v5 contentOffset];
            v15 = v14 / v13;
            if (v14 / v13 < 0.0)
            {
              v16 = 0.0;
            }

            else
            {
              v16 = v14 / v13;
            }

            v17 = 1.0 - v16;
            [v5 contentOffset];
            v19 = v18 / v8;
            if (v19 < 0.0)
            {
              v20 = 0.0;
            }

            else
            {
              v20 = v19;
            }

            v21 = 1.0 - v20;
            sub_10002849C(&qword_100973210, qword_1007B0BB0);
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_1007B48F0;
            v23 = objc_opt_self();
            *(v22 + 32) = [v23 blackColor];
            v24 = [v23 blackColor];
            v25 = v24;
            if (v15 >= 1.0)
            {
              v26 = 0.0;
            }

            else
            {
              v26 = v17;
            }

            v27 = [v24 colorWithAlphaComponent:v26];

            *(v22 + 40) = v27;
            v28 = [v23 blackColor];
            v29 = v28;
            if (v19 >= 1.0)
            {
              v30 = 0.0;
            }

            else
            {
              v30 = v21;
            }

            v31 = [v28 colorWithAlphaComponent:v30];

            *(v22 + 48) = v31;
            *&v11[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v22;

            sub_1001C0CEC();

            v9 = v11;
          }
        }
      }
    }
  }
}

void sub_10032DF68(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_10002849C(&qword_100972A80, &qword_1007C9840);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  if (!swift_weakLoadStrong())
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    HIDWORD(v30) = ProductDiffablePagePresenter.isOfferButtonHiddenByPresenter.getter();
    v33 = ProductNavigationBarMode.rawValue.getter();
    v32 = ProductNavigationBarMode.rawValue.getter();
    if (a2)
    {
      v31 = sub_100043BF4(a3);
    }

    else
    {
      v31 = 0;
    }

    v13 = qword_1009CE4D0;
    v14 = ProductOfferButtonMode.isHidden.getter();
    v15 = ProductNavigationBarMode.rawValue.getter();
    if (v15 == ProductNavigationBarMode.rawValue.getter())
    {
      v16 = [v12 navigationItem];
      v17 = [v16 rightBarButtonItems];

      if (v17)
      {
        sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
        v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v18 = 0;
      }

      *&v12[qword_1009CE4D8] = v18;
    }

    v19 = a2 ^ 1;
    v20 = *&v12[qword_1009CE4D8];
    if (v20)
    {
      if ((v14 & 1) == 0)
      {
        if (!a1)
        {
          v23 = swift_allocObject();
          *(v23 + 16) = v12;
          *(v23 + 24) = v20;

          v29 = v12;
          v20 = sub_10032FC68;
LABEL_21:
          v24 = *&v12[v13];
          v25 = v31;
          sub_1002753B4(a1, v31, v19 & 1, v20, v23);

          v26 = swift_unknownObjectWeakLoadStrong();
          if (v26)
          {
            v27 = v26;
            ProductDiffablePagePresenter.adamId.getter();
            if (swift_weakLoadStrong())
            {
              ProductDiffablePagePresenter.shareAction.getter();
            }

            sub_100434330(v33 == v32, v25, v19 & 1, (v30 & 0x100000000) == 0, v10);

            sub_10001F63C(v20, v23);

            sub_10002B894(v10, &qword_100972A80, &qword_1007C9840);
          }

          else
          {
            v28 = v33 != v32;
            sub_10001F63C(v20, v23);

            *(v4 + 48) = v28;
          }

          return;
        }

        if (a1 == 1)
        {
          v21 = [v12 navigationItem];
          sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v21 setRightBarButtonItems:isa animated:0];
        }
      }

      v20 = 0;
    }

    v23 = 0;
    goto LABEL_21;
  }
}

void sub_10032E348(void *a1)
{
  v1 = [a1 navigationItem];
  sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v1 setRightBarButtonItems:isa animated:0];
}

void sub_10032E3E0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v0 = swift_unknownObjectWeakLoadStrong();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 collectionView];

    if (v2)
    {
      v3 = *&Strong[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton];
      v4 = *&Strong[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
      if (v4)
      {
        v5 = v3;
        v6 = v4;
        if (([v6 isHidden] & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v7 = v3;
      }

      v6 = *&Strong[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel];
LABEL_12:
      v8 = v3;
      v9 = v6;
      if ([v8 isHidden])
      {
        v10 = [v9 isHidden];

        if ((v10 & 1) == 0)
        {

          v11 = v9;
          goto LABEL_20;
        }
      }

      else
      {
      }

      v11 = v9;
      if ([v11 isHidden] || (v55.receiver = v8, v55.super_class = type metadata accessor for OfferButton(), objc_msgSendSuper2(&v55, "frame"), MaxY = CGRectGetMaxY(v57), objc_msgSend(v11, "frame"), MaxY >= CGRectGetMaxY(v58)))
      {

        v11 = v8;
      }

      else
      {
      }

LABEL_20:
      v13 = v11;
      [v13 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [v13 superview];

      [v2 convertRect:v22 fromView:{v15, v17, v19, v21}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v59.origin.x = v24;
      v59.origin.y = v26;
      v59.size.width = v28;
      v59.size.height = v30;
      MinY = CGRectGetMinY(v59);
      v32 = swift_unknownObjectWeakLoadStrong();
      if (!v32)
      {
        goto LABEL_24;
      }

      v33 = v32;
      v34 = [v32 view];
      if (v34)
      {
        v35 = v34;
        type metadata accessor for InsetCollectionViewControllerContentView();
        v36 = swift_dynamicCastClass();
        if (v36)
        {
          v37 = v36;

          v38 = *(v37 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);
          if (v38)
          {
LABEL_28:
            v52 = sub_10032BC8C();
            *(v52 + 16) = MinY;
            *(v52 + 24) = 0;
            v53 = *(v52 + 32);
            if (v53)
            {
              v53(*(v52 + 48), 0, *(v52 + 56));
            }

            return;
          }

LABEL_24:
          v39 = swift_unknownObjectWeakLoadStrong();
          v40 = 0.0;
          if (v39)
          {
            v41 = v39;
            v42 = [v39 navigationController];

            if (v42)
            {
              v43 = [v42 navigationBar];

              [v43 frame];
              v45 = v44;
              v47 = v46;
              v49 = v48;
              v51 = v50;

              v60.origin.x = v45;
              v60.origin.y = v47;
              v60.size.width = v49;
              v60.size.height = v51;
              v40 = CGRectGetMaxY(v60);
            }
          }

          MinY = MinY - v40;
          goto LABEL_28;
        }
      }

      __break(1u);
      return;
    }
  }
}

uint64_t sub_10032E7AC()
{
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_10032E848(void *a1)
{
  [a1 adjustedContentInset];
  v4 = v3;
  [a1 contentOffset];
  *(v1 + OBJC_IVAR____TtC8AppStore11ChevronView_shouldAnimate) = v4 + v5 <= 0.1;

  sub_10002C6BC();
}

uint64_t sub_10032E8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v3 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  swift_weakAssign();
  swift_unknownObjectWeakAssign();
  type metadata accessor for ProductTopLockupIconFetcher();
  swift_allocObject();
  *(v3 + 40) = ProductTopLockupIconFetcher.init(artworkLoader:)();
  return v3;
}

double sub_10032E978(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for LegacyAppState();
  v120 = *(v8 - 8);
  __chkstk_darwin(v8);
  v113 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v115 = &ObjectType - v11;
  v12 = sub_10002849C(&qword_100972A80, &qword_1007C9840);
  __chkstk_darwin(v12 - 8);
  v119 = &ObjectType - v13;
  v14 = type metadata accessor for ItemLayoutContext();
  v114 = *(v14 - 8);
  v15 = *(v114 + 64);
  __chkstk_darwin(v14);
  v16 = type metadata accessor for AdamId();
  v117 = *(v16 - 8);
  v118 = v16;
  __chkstk_darwin(v16);
  v18 = &ObjectType - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductLockupCollectionViewCell(0);
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v21 = v19;
    v112 = v8;
    v116 = a3;
    type metadata accessor for ProductTopLockup();
    v121 = a2;
    sub_10032FDF8(&qword_100973AE8, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
    v22 = a1;
    ItemLayoutContext.typedModel<A>(as:)();
    v23 = v125;
    if (!v125)
    {

      return result;
    }

    if (!swift_weakLoadStrong())
    {

LABEL_54:

      return result;
    }

    v109 = v22;
    v108 = v21;
    sub_10032BA54(v21);
    sub_10002849C(&unk_100973AF0, &qword_1007B3960);
    v107 = v14;
    v24 = v116;
    BaseObjectGraph.inject<A>(_:)();
    swift_getObjectType();
    v111 = v23;
    ProductTopLockup.adamId.getter();
    v25 = dispatch thunk of AppStateController.stateMachine(forApp:)();
    v27 = v26;
    swift_unknownObjectRelease();
    (*(v117 + 8))(v18, v118);
    v28 = v121;
    sub_10032C250(v121, v25, v27, v24);
    ObjectType = swift_getObjectType();
    dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = v114;
    v31 = v107;
    (*(v114 + 16))(&ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v107);
    v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v29;
    (*(v30 + 32))(v33 + v32, &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
    *(v33 + ((v15 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v116;
    v34 = v108;

    v114 = v25;
    dispatch thunk of AppStateMachine.addStateTransitionObserver(_:action:)();

    if ((*(v4 + 48) & 1) == 0)
    {
LABEL_28:
      v57 = *&v34[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_disclosureArrow];
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      v59 = v57;
      sub_10032BB24(Strong);

      v60 = swift_allocObject();
      swift_weakInit();
      v61 = &v34[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerTapHandler];
      v62 = *&v34[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerTapHandler];
      v63 = *&v34[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerTapHandler + 8];
      *v61 = sub_10032F6B4;
      v61[1] = v60;

      sub_10001F63C(v62, v63);

      sub_10032CE00(v121, v116);
      v64 = swift_unknownObjectWeakLoadStrong();
      if (v64)
      {
        v65 = v64;
        v66 = *(v64 + qword_1009CE4D0);

        v67 = *(*&v66[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView] + OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconView);
      }

      else
      {
        v67 = 0;
      }

      dispatch thunk of ProductTopLockupIconFetcher.addIconRecipient(recipient:)();

      v68 = *&v34[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView];
      dispatch thunk of ProductTopLockupIconFetcher.addIconRecipient(recipient:)();

      dispatch thunk of ProductTopLockupIconFetcher.fetchArtwork(for:in:)();
      v69 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView;
      v70 = *&v34[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView];
      if (!v70)
      {
        goto LABEL_52;
      }

      v71 = swift_unknownObjectWeakLoadStrong();
      v72 = v70;
      if (v71)
      {
        v73 = [v71 navigationItem];
      }

      else
      {
        v73 = 0;
      }

      v74 = OBJC_IVAR____TtC8AppStore14UberHeaderView_navigationItem;
      v75 = *&v72[OBJC_IVAR____TtC8AppStore14UberHeaderView_navigationItem];
      if (v75)
      {
        v76 = v75;
        v77 = String._bridgeToObjectiveC()();
        [v76 removeObserver:v72 forKeyPath:v77 context:&unk_100974E90];

        v78 = *&v72[v74];
      }

      else
      {
        v78 = 0;
      }

      *&v72[v74] = v73;
      v79 = v73;

      v80 = *&v72[v74];
      if (v80)
      {
        v81 = v80;
        v82 = String._bridgeToObjectiveC()();
        [v81 addObserver:v72 forKeyPath:v82 options:0 context:&unk_100974E90];

        v83 = *&v72[v74];
        if (v83)
        {
          v83 = [v83 title];
          if (v83)
          {
            v84 = v83;
            v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v87 = v86;

            v88 = v87;
            v83 = v85;
          }

          else
          {
            v88 = 0;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v83 = 0;
      }

      v88 = 0;
LABEL_44:
      sub_1001136B0(v83, v88);

      v89 = *&v34[v69];
      if (v89)
      {
        v90 = swift_unknownObjectWeakLoadStrong();
        if (v90)
        {
          v91 = v90;
          v92 = *(v90 + qword_1009CE4E0);
          v93 = v89;
        }

        else
        {
          v94 = v89;
          v92 = 0;
        }

        swift_unknownObjectWeakAssign();
        sub_100113BEC();

        v95 = *&v34[v69];
        if (v95)
        {
          v96 = *(*(*(v95 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
          if (v96)
          {
            type metadata accessor for VideoView(0);
            v97 = swift_dynamicCastClass();
            if (v97)
            {
              v98 = v97;
              v99 = swift_allocObject();
              v100 = v109;
              *(v99 + 16) = v109;
              v101 = (v98 + qword_1009D21D0);
              v102 = *(v98 + qword_1009D21D0);
              v103 = *(v98 + qword_1009D21D0 + 8);
              *v101 = sub_10032F6BC;
              v101[1] = v99;
              v104 = v100;
              v105 = v96;

              sub_10001F63C(v102, v103);
              sub_1004E77F8();

              swift_unknownObjectRelease();

              goto LABEL_54;
            }
          }

          swift_unknownObjectRelease();

LABEL_53:

          goto LABEL_54;
        }
      }

LABEL_52:

      swift_unknownObjectRelease();
      goto LABEL_53;
    }

    *(v4 + 48) = 0;
    v35 = ProductDiffablePagePresenter.isOfferButtonHiddenByPresenter.getter();
    v36 = v119;
    ProductTopLockup.adamId.getter();
    v37 = v117;
    v38 = v36;
    v39 = v118;
    (*(v117 + 56))(v38, 0, 1, v118);
    if (swift_weakLoadStrong())
    {
      ProductDiffablePagePresenter.shareAction.getter();
    }

    v40 = (*(v37 + 48))(v119, 1, v39);
    v41 = v112;
    if (v40 == 1 || !*&v34[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_appStateMachine])
    {
      (*(v120 + 104))(v115, enum case for LegacyAppState.unknown(_:), v112);
    }

    else
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of AppStateMachine.currentState.getter();
      swift_unknownObjectRelease();
    }

    v42 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton;
    [*(*&v34[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton] + OBJC_IVAR____TtC8AppStore11OfferButton_imageView) setContentMode:1];
    if (v35)
    {
      v43 = 0;
    }

    else
    {
      v43 = *&v34[v42];
      v44 = v43;
    }

    v45 = *&v34[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
    v46 = v113;
    if (v45 && v34[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible] == 1)
    {
      goto LABEL_24;
    }

    (*(v120 + 16))(v113, v115, v41);
    v47 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel;
    v48 = [*&v34[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel] text];
    if (v48)
    {
      v49 = v48;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    v52 = LegacyAppState.isBuyable.getter();
    (*(v120 + 8))(v46, v41);
    if (v52)
    {
      if (v51)
      {

        v45 = *&v34[v47];
LABEL_24:
        v53 = v45;
LABEL_27:
        v122 = *&v34[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView];
        v123 = v43;
        v124 = v45;
        v54 = v122;
        [v54 setAlpha:1.0];
        [v54 setHidden:0];

        v55 = v43;
        [v55 setAlpha:1.0];
        [v55 setHidden:0];

        v56 = v45;
        sub_10002849C(&qword_100980960, &unk_1007D70E0);
        swift_arrayDestroy();
        [v56 setAlpha:1.0];
        [v56 setHidden:0];

        [v34 setNeedsLayout];
        (*(v120 + 8))(v115, v112);
        sub_10002B894(v119, &qword_100972A80, &qword_1007C9840);
        goto LABEL_28;
      }
    }

    else
    {
    }

    v45 = 0;
    goto LABEL_27;
  }

  return result;
}

double sub_10032F604(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ItemLayoutContext() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_10032BDC4(a1, a2, v8, v2 + v6, v7);
}

void sub_10032F6C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - v4;
  v34 = sub_10002849C(&qword_100980980, &unk_1007C7E40);
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
    v39 = enum case for Shelf.ContentType.productTopLockup(_:);
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
      sub_10032FDF8(&qword_100971EE8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
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
    sub_1000D71CC();
    v25 = v34;
    WritableStateLens<A>.updateValue(_:)();
    (*v32)(v24, v25);
    goto LABEL_5;
  }
}

uint64_t sub_10032FC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10032FCE8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v3;

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t sub_10032FD3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100095E9C;

  return sub_10032CCDC(a1, v4, v5, v6);
}

uint64_t sub_10032FDF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10032FE58()
{
  type metadata accessor for BundleImage();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1009809A0 = result;
  return result;
}

id sub_10032FEB0(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10096D8F8 != -1)
  {
    swift_once();
  }

  v6 = qword_1009809A0;
  v7 = a3;
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v6 withConfiguration:v7];

  result = v9;
  if (!v9)
  {
    if (qword_10096D110 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for OSLogger();
    sub_1000056A8(v11, qword_1009CE1E8);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    v15 = &type metadata for String;
    v13 = a1;
    v14 = a2;

    static LogMessage.sensitive(_:)();
    sub_10002B894(&v13, &unk_1009711D0, &unk_1007B1A10);
    Logger.error(_:)();

    v12 = objc_allocWithZone(UIImage);
    return [v12 init];
  }

  return result;
}

id sub_100330100(uint64_t a1, objc_class *a2)
{
  v22 = a2;
  v2 = type metadata accessor for Artwork.URLTemplate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Artwork.template.getter();
  Artwork.URLTemplate.rawValue.getter();
  (*(v3 + 8))(v5, v2);
  URL.init(string:)();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002B894(v8, &qword_100982460, &unk_1007B5C90);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v13 = URL.host.getter();
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      if (dispatch thunk of Artwork.isBundleImage.getter())
      {
        v17.value.super.super.isa = v22;
        v18 = Artwork.configuration(with:)(v17);
        v19 = sub_10032FEB0(v16, v15, v18);

        (*(v10 + 8))(v12, v9);
        return v19;
      }

      (*(v10 + 8))(v12, v9);
    }

    else
    {
      (*(v10 + 8))(v12, v9);
    }
  }

  return 0;
}

UIImage *_sSo7UIImageC8AppStoreE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(void *a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v11.width = 1.0;
  v11.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, v4);
  v5 = UIGraphicsGetCurrentContext();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [a1 CGColor];
    CGContextSetFillColorWithColor(v7, v8);

    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = 1.0;
    v12.size.height = 1.0;
    CGContextFillRect(v7, v12);
  }

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

uint64_t sub_100330508@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_100330564(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100330630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1003313FC(&qword_100974AF8, type metadata accessor for PlaceholderCollectionViewCell, &unk_1007C7F78);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1003306C8(uint64_t a1)
{
  v3 = type metadata accessor for Shelf.PresentationHints();
  v83 = *(v3 - 8);
  v84 = v3;
  __chkstk_darwin(v3);
  v81 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = &v75 - v6;
  v7 = type metadata accessor for ShelfLayoutContext();
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin(v7);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v75 - v10;
  v12 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v75 - v14;
  v16 = type metadata accessor for Shelf.ContentType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v77 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v75 - v20;
  __chkstk_darwin(v22);
  v85 = &v75 - v23;
  type metadata accessor for Placeholder();
  sub_1003313FC(&qword_100980A40, &type metadata accessor for Placeholder, &protocol conformance descriptor for Placeholder);
  ItemLayoutContext.typedModel<A>(as:)();
  result = v86;
  if (!v86)
  {
    return result;
  }

  v76 = v1;

  swift_getKeyPath();
  v75 = a1;
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v13 + 8))(v15, v12);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    return sub_1000CD7FC(v11);
  }

  v25 = v85;
  (*(v17 + 32))(v85, v11, v16);
  v26 = *(v17 + 16);
  v26(v21, v25, v16);
  v27 = (*(v17 + 88))(v21, v16);
  if (v27 == enum case for Shelf.ContentType.smallLockup(_:) || v27 == enum case for Shelf.ContentType.mediumLockup(_:) || v27 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    v33 = *&v76[OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_placeholderView];
    type metadata accessor for LockupPlaceholderView(0);
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = v34;
      v36 = v33;
    }

    else
    {
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    v40 = v77;
    v26(v77, v25, v16);
    v41 = OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_contentType;
    swift_beginAccess();
    (*(v17 + 24))(&v35[v41], v40, v16);
    swift_endAccess();
    v28 = v35;
    [v28 setNeedsLayout];
    (*(v17 + 8))(v40, v16);
    v42 = v78;
    ItemLayoutContext.parentShelfLayoutContext.getter();
    v43 = v82;
    ShelfLayoutContext.shelfPresentationHints.getter();
    (*(v79 + 8))(v42, v80);
    v44 = v81;
    static Shelf.PresentationHints.isAppleArcadeContext.getter();
    sub_1003313FC(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v45 = v84;
    v46 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v47 = *(v83 + 8);
    v47(v44, v45);
    v47(v43, v45);
    v28[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_wantsHeadingTextPlaceholder] = v46 & 1;
    [v28 setNeedsLayout];

    v32 = v76;
    goto LABEL_17;
  }

  if (v27 != enum case for Shelf.ContentType.videoCard(_:))
  {
    if (v27 == enum case for Shelf.ContentType.brick(_:))
    {
      v32 = v76;
      v37 = *&v76[OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_placeholderView];
      type metadata accessor for BrickPlaceholderView();
      v38 = swift_dynamicCastClass();
      if (v38)
      {
        v28 = v38;
        v39 = v37;
      }

      else
      {
        v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      }

      v58 = v78;
      ItemLayoutContext.parentShelfLayoutContext.getter();
      v59 = v82;
      ShelfLayoutContext.shelfPresentationHints.getter();
      (*(v79 + 8))(v58, v80);
      v60 = v81;
      static Shelf.PresentationHints.showSupplementaryText.getter();
      sub_1003313FC(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
      v61 = v84;
      v62 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v63 = *(v83 + 8);
      v63(v60, v61);
      v63(v59, v61);
      v28[OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] = v62 & 1;
      [v28 setNeedsLayout];
      goto LABEL_17;
    }

    if (v27 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
      goto LABEL_24;
    }

    if (v27 == enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      type metadata accessor for TodayCardPlaceholderView();
    }

    else
    {
      if (v27 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v27 == enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        type metadata accessor for MixedMediaLockupPlaceholderView(0);
        v64 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v65 = v77;
        v26(v77, v25, v16);
        v66 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_contentType;
        swift_beginAccess();
        (*(v17 + 24))(&v64[v66], v65, v16);
        swift_endAccess();
        v28 = v64;
        [v28 setNeedsLayout];
        (*(v17 + 8))(v65, v16);
        v67 = v78;
        ItemLayoutContext.parentShelfLayoutContext.getter();
        v68 = v82;
        ShelfLayoutContext.shelfPresentationHints.getter();
        (*(v79 + 8))(v67, v80);
        v69 = v81;
        static Shelf.PresentationHints.showSupplementaryText.getter();
        sub_1003313FC(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
        v70 = v84;
        LOBYTE(v66) = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v71 = *(v83 + 8);
        v71(v69, v70);
        v71(v68, v70);
        v28[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder] = v66 & 1;
        [v28 setNeedsLayout];

        goto LABEL_9;
      }

      if (v27 != enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        v32 = v76;
        if (v27 == enum case for Shelf.ContentType.posterLockup(_:))
        {
          v28 = [objc_allocWithZone(UIView) init];
          v72 = [objc_opt_self() secondarySystemBackgroundColor];
          [v28 setBackgroundColor:v72];

          v73 = [v28 layer];
          [v73 setCornerRadius:20.0];

          v74 = [v28 layer];
          [v74 setCornerCurve:kCACornerCurveContinuous];

          goto LABEL_17;
        }

        if (v27 == enum case for Shelf.ContentType.appPromotion(_:))
        {
          type metadata accessor for AppEventPlaceholderView();
          goto LABEL_35;
        }

        if (v27 != enum case for Shelf.ContentType.tagBrick(_:))
        {
          (*(v17 + 8))(v21, v16);
          v28 = 0;
          v32 = v76;
          goto LABEL_18;
        }

LABEL_24:
        v32 = v76;
        v55 = *&v76[OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_placeholderView];
        type metadata accessor for CategoryBrickPlaceholderView();
        v56 = swift_dynamicCastClass();
        if (v56)
        {
          v28 = v56;
          v57 = v55;
          goto LABEL_17;
        }

LABEL_35:
        v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        goto LABEL_17;
      }

      type metadata accessor for TodayBrickPlaceholderView(0);
    }

    v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    goto LABEL_9;
  }

  v28 = [objc_allocWithZone(UIView) init];
  v29 = [objc_opt_self() secondarySystemBackgroundColor];
  [v28 setBackgroundColor:v29];

  v30 = [v28 layer];
  [v30 setCornerRadius:20.0];

  v31 = [v28 layer];
  [v31 setCornerCurve:kCACornerCurveContinuous];

LABEL_9:
  v32 = v76;
LABEL_17:
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
LABEL_18:
  v48 = OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_placeholderView;
  [*&v32[OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_placeholderView] removeFromSuperview];
  if (v28)
  {
    v49 = v28;
    v50 = [v32 contentView];
    [v50 addSubview:v49];

    v51 = *&v32[v48];
    *&v32[v48] = v49;
    v52 = v49;

    [v32 setNeedsLayout];
  }

  else
  {
    v53 = [objc_allocWithZone(UIView) init];
    v54 = *&v32[v48];
    *&v32[v48] = v53;
  }

  return (*(v17 + 8))(v85, v16);
}

uint64_t sub_1003313FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100331458()
{
  result = qword_100980A48;
  if (!qword_100980A48)
  {
    type metadata accessor for FlowPreviewAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980A48);
  }

  return result;
}

uint64_t sub_1003314B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v5 = type metadata accessor for ActionOutcome();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowPresentationContext();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v12 = Promise.__allocating_init()();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong presentedViewController];

  if (v14)
  {

    v15 = swift_unknownObjectUnownedLoadStrong();
    sub_100331E70(v3, v44);
    v16 = swift_allocObject();
    sub_100331EA8(v44, (v16 + 2));
    v17 = v42;
    v16[3] = a1;
    v16[4] = v17;
    v16[5] = v12;
    aBlock[4] = sub_100331EE0;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008BE670;
    v18 = _Block_copy(aBlock);

    [v15 dismissViewControllerAnimated:1 completion:v18];
    _Block_release(v18);
  }

  else
  {
    v19 = v42;
    v38 = v3;
    v39 = v9;
    v40 = v7;
    v37 = v12;
    v20 = FlowPreviewAction.previewViewController.getter();
    FlowPreviewAction.presentationContext.getter();
    if (FlowPreviewAction.requiresNavigationController.getter())
    {
      type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
      v21 = type metadata accessor for StoreNavigationController();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph] = v19;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v45.receiver = v22;
      v45.super_class = v21;

      v24 = v11;
      v25 = objc_msgSendSuper2(&v45, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
      [v25 setDelegate:v25];
      sub_100005744(0, &qword_10097CD40, UIAction_ptr);
      swift_allocObject();
      v26 = swift_unknownObjectUnownedLoadStrong();
      swift_unknownObjectWeakInit();

      v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      sub_100039F8C(v20, v27);

      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1007B0B70;
      *(v28 + 32) = v20;
      sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
      v29 = v20;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v25 setViewControllers:isa];

      v31 = swift_unknownObjectUnownedLoadStrong();
      [v31 presentViewController:v25 animated:0 completion:0];

      v20 = v25;
      v11 = v24;
    }

    else
    {
      v31 = swift_unknownObjectUnownedLoadStrong();
      [v31 presentViewController:v20 animated:0 completion:0];
    }

    v32 = v39;
    v33 = v40;

    (*(v32 + 8))(v11, v8);
    v34 = v41;
    (*(v41 + 104))(v33, enum case for ActionOutcome.performed(_:), v5);
    v12 = v37;
    Promise.resolve(_:)();
    (*(v34 + 8))(v33, v5);
  }

  return v12;
}

uint64_t sub_1003319F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v6 = type metadata accessor for ActionOutcome();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FlowPresentationContext();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = FlowPreviewAction.previewViewController.getter();
  FlowPreviewAction.presentationContext.getter();
  if (FlowPreviewAction.requiresNavigationController.getter())
  {
    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v15 = type metadata accessor for StoreNavigationController();
    v29 = v10;
    v16 = v15;
    v17 = objc_allocWithZone(v15);
    v30 = a4;
    v18 = v17;
    *&v17[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph] = a3;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32.receiver = v18;
    v32.super_class = v16;

    v20 = objc_msgSendSuper2(&v32, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v20 setDelegate:v20];
    sub_100005744(0, &qword_10097CD40, UIAction_ptr);
    swift_allocObject();
    v28 = v6;
    Strong = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectWeakInit();

    v10 = v29;
    v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100039F8C(v14, v22);

    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1007B0B70;
    *(v23 + 32) = v14;
    sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
    v24 = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v20 setViewControllers:isa];

    v6 = v28;
    v26 = swift_unknownObjectUnownedLoadStrong();
    [v26 presentViewController:v20 animated:0 completion:0];

    v14 = v20;
  }

  else
  {
    v26 = swift_unknownObjectUnownedLoadStrong();
    [v26 presentViewController:v14 animated:0 completion:0];
  }

  (*(v11 + 8))(v13, v10);
  (*(v7 + 104))(v9, enum case for ActionOutcome.performed(_:), v6);
  Promise.resolve(_:)();
  return (*(v7 + 8))(v9, v6);
}

void sub_100331DD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong presentedViewController];

    if (v4)
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_100331EF4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100980A50);
  sub_1000056A8(v4, qword_100980A50);
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1640);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

char *sub_1003320C8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore39InAppPurchaseShowcaseCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC8AppStore39InAppPurchaseShowcaseCollectionViewCell_lockupView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for InAppPurchaseShowcaseLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v14 = [v12 contentView];
  [v14 addSubview:*&v12[OBJC_IVAR____TtC8AppStore39InAppPurchaseShowcaseCollectionViewCell_lockupView]];

  return v12;
}

id sub_100332408()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseShowcaseCollectionViewCell(uint64_t a1)
{
  result = qword_100980A90;
  if (!qword_100980A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003324E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(v3 + OBJC_IVAR____TtC8AppStore39InAppPurchaseShowcaseCollectionViewCell_lockupView) + OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_iconView);
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v8, v4);
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v9, v5);
  type metadata accessor for ArtworkView();
  sub_10009A098();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void sub_1003325DC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for InAppPurchaseTheme();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  sub_10002C0AC(a1, v22);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for InAppPurchaseShowcase();
  if (swift_dynamicCast())
  {
    v12 = *&v2[OBJC_IVAR____TtC8AppStore39InAppPurchaseShowcaseCollectionViewCell_lockupView];
    v19 = v21;
    v13 = *(v12 + OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_iconView);
    v17 = InAppPurchaseShowcase.lockup.getter();
    v20 = [v2 backgroundColor];
    InAppPurchaseLockup.theme.getter();
    v18 = a2;
    v14 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
    swift_beginAccess();
    (*(v6 + 24))(&v13[v14], v11, v5);
    swift_endAccess();
    v15 = *(v6 + 16);
    v15(v8, &v13[v14], v5);
    sub_1002EBEE4(v8);
    v16 = *(v6 + 8);
    v16(v8, v5);
    v16(v11, v5);
    [v13 setBackgroundColor:v20];
    sub_1001BCDCC(95.0, 95.0, v17, v13, v18);
    v15(v11, &v13[v14], v5);
    sub_1002EBEE4(v11);
    v16(v11, v5);
    [v13 setNeedsLayout];
  }
}

uint64_t sub_1003328A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v86 = a6;
  v72 = a4;
  v83 = a1;
  v84 = a3;
  v6 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v6 - 8);
  v82 = &v70 - v7;
  v8 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v8 - 8);
  v81 = &v70 - v9;
  v10 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v10 - 8);
  v80 = &v70 - v11;
  v12 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v12 - 8);
  v79 = &v70 - v13;
  v14 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v14 - 8);
  v78 = &v70 - v15;
  v16 = sub_10002849C(&unk_100970E10, &qword_1007B46A0);
  __chkstk_darwin(v16 - 8);
  v71 = &v70 - v17;
  v18 = type metadata accessor for ComponentLayoutOptions();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FontSource();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for Separator.Position();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Separator();
  v73 = *(v75 - 8);
  *&v30 = __chkstk_darwin(v75).n128_u64[0];
  v32 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = [v86 traitCollection];
  (*(v27 + 104))(v29, enum case for Separator.Position.bottom(_:), v26);
  *v25 = UIFontTextStyleBody;
  (*(v23 + 104))(v25, enum case for FontSource.textStyle(_:), v22);
  v89 = type metadata accessor for StaticDimension();
  v90 = &protocol witness table for StaticDimension;
  sub_1000056E0(v88);
  v87[3] = v22;
  v87[4] = &protocol witness table for FontSource;
  v33 = sub_1000056E0(v87);
  (*(v23 + 16))(v33, v25, v22);
  v34 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v23 + 8))(v25, v22);
  v86 = v32;
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_1003335E0(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  LOBYTE(v27) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v35 = *(v19 + 8);
  v74 = v18;
  v76 = v19 + 8;
  v35(v21, v18);
  if (v27)
  {
    v36 = v73;
    v37 = v71;
    v38 = v75;
    (*(v73 + 56))(v71, 1, 1, v75);
    v39 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separator;
    v40 = v77;
    swift_beginAccess();
    sub_10005A354(v37, &v40[v39]);
    swift_endAccess();
    sub_1002B0944();
    sub_10002B894(v37, &unk_100970E10, &qword_1007B46A0);
    static ComponentLayoutOptions.fixedHeightContainer.getter();
    v41 = v74;
    v42 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v35(v21, v41);
    v43 = [v40 contentView];
    v44 = v43;
    v45 = v40;
    v46 = v38;
    if (v42)
    {
      [v43 layoutMargins];
      [v44 setLayoutMargins:?];
    }

    else
    {
      Separator.verticalOutset.getter();
      sub_10002A400(v88, v89);
      AnyDimension.value(with:)();
      [v44 layoutMargins];
      [v44 setLayoutMargins:?];

      sub_100007000(v88);
    }
  }

  else
  {
    v47 = v73;
    v48 = v71;
    v49 = v75;
    (*(v73 + 16))(v71, v86, v75);
    (*(v47 + 56))(v48, 0, 1, v49);
    v50 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separator;
    v51 = v77;
    swift_beginAccess();
    sub_10005A354(v48, &v51[v50]);
    swift_endAccess();
    sub_1002B0944();
    sub_10002B894(v48, &unk_100970E10, &qword_1007B46A0);
    v52 = [v51 contentView];
    [v52 layoutMargins];
    [v52 setLayoutMargins:?];

    static ComponentLayoutOptions.hasBackground.getter();
    v53 = v74;
    v54 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v35(v21, v53);
    v55 = v51[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout];
    v51[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = v54 & 1;
    v45 = v51;
    v46 = v49;
    v36 = v47;
    if ((v54 & 1) != v55)
    {
      v56 = *&v45[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separatorView];
      if (v56)
      {
        v57 = 1.0;
        if (v54)
        {
          v57 = 0.0;
        }

        [v56 setAlpha:v57];
      }
    }
  }

  v58 = *&v45[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView];
  v59 = sub_10002849C(&unk_100973240, qword_1007B2220);
  v60 = v78;
  (*(*(v59 - 8) + 56))(v78, 1, 1, v59);
  v61 = type metadata accessor for OfferStyle();
  v62 = v79;
  (*(*(v61 - 8) + 56))(v79, 1, 1, v61);
  v63 = type metadata accessor for OfferEnvironment();
  v64 = v80;
  (*(*(v63 - 8) + 56))(v80, 1, 1, v63);
  v65 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v66 = v81;
  (*(*(v65 - 8) + 56))(v81, 1, 1, v65);
  v67 = type metadata accessor for OfferTint();
  v68 = v82;
  (*(*(v67 - 8) + 56))(v82, 1, 1, v67);
  sub_1004F3190(v83, v58, v60, v84, 0, 0, v62, v64, v68, v66);
  sub_10002B894(v68, &unk_100973AD0, &unk_1007B17C0);
  v58[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_10070AB34();
  [v58 setNeedsLayout];
  sub_10002B894(v66, &unk_100970150, &unk_1007BDDD0);
  sub_10002B894(v64, &unk_100970160, &unk_1007BDDE0);
  sub_10002B894(v62, &qword_100973AE0, &unk_1007B17D0);
  sub_10002B894(v60, &unk_100973230, &unk_1007B17E0);
  [v45 setNeedsLayout];

  return (*(v36 + 8))(v86, v46);
}

uint64_t sub_10033347C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SmallLockupLayout.Metrics();
  sub_1000056A8(v2, qword_1009D3798);
  SmallLockupLayout.Metrics.artworkSize.getter();
  ComponentPrefetchSizing.init(size:contentMode:)();
  v3 = type metadata accessor for ComponentPrefetchSizing();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1003335E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100333628(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FontSource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Separator.Position();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Separator();
  v35 = *(v15 - 8);
  v36 = v15;
  __chkstk_darwin(v15);
  v34 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ComponentLayoutOptions();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_1003335E0(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v21 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v18 + 8))(v20, v17);
  (*(v12 + 104))(v14, enum case for Separator.Position.bottom(_:), v11);
  *v10 = UIFontTextStyleBody;
  (*(v8 + 104))(v10, enum case for FontSource.textStyle(_:), v7);
  v41 = type metadata accessor for StaticDimension();
  v42 = &protocol witness table for StaticDimension;
  sub_1000056E0(v40);
  v39[3] = v7;
  v39[4] = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v39);
  (*(v8 + 16))(v22, v10, v7);
  v23 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v8 + 8))(v10, v7);
  if (v21)
  {
    v24 = v34;
    Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
    Separator.verticalOutset.getter();
    (*(v35 + 8))(v24, v36);
    sub_10002A400(v40, v41);
    v25 = v31;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    v26 = v37;
    AnyDimension.value(in:rounded:)();
    (*(v32 + 8))(v25, v33);
    sub_100007000(v40);
  }

  else
  {
    v27 = v34;
    Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
    v26 = v37;
    Separator.height(in:)();
    (*(v35 + 8))(v27, v36);
  }

  ObjectType = swift_getObjectType();
  sub_1002B1794(v26, v38, ObjectType);
  return a1;
}

uint64_t sub_100333BD4(uint64_t a1, uint64_t a2, void *a3)
{
  v24[1] = a1;
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Separator.Position();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Separator();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for Separator.Position.bottom(_:), v8, v14);
  *v7 = UIFontTextStyleBody;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v26[3] = type metadata accessor for StaticDimension();
  v26[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v26);
  v25[3] = v4;
  v25[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v25);
  (*(v5 + 16))(v17, v7, v4);
  v18 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v5 + 8))(v7, v4);
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  ObjectType = swift_getObjectType();
  Separator.height(in:)();
  (*(v13 + 8))(v16, v12);
  sub_1002B1794(a3, v24[0], ObjectType);
  v20 = objc_opt_self();
  PageTraitEnvironment.pageColumnWidth.getter();
  v21 = [v20 absoluteDimension:?];
  v22 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v22;
}

uint64_t sub_100333F20(uint64_t a1, double a2)
{
  v3 = v2;
  v4 = type metadata accessor for DisjointStack();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  DisjointStack.init(with:)();
  DisjointStack.insert(_:at:with:)();
  sub_10002C0AC(v3 + 88, v9);
  v10[3] = type metadata accessor for Margins();
  v10[4] = &protocol witness table for Margins;
  sub_1000056E0(v10);
  Margins.init(top:left:bottom:right:child:)();
  DisjointStack.insert(_:at:with:)();
  sub_100007000(v10);
  dispatch thunk of Placeable.place(at:with:)();
  return (*(v5 + 8))(v7, v4);
}

void sub_1003340F4(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView);
  if (v4)
  {
    v5 = v4;
    dispatch thunk of RiverView.isAnimating.setter();
  }

  v6 = *(v2 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v6)
  {
    v7 = v6[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating];
    v6[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] = a1 & 1;
    if (v7 != (a1 & 1))
    {
      v8 = v6;
      sub_1004A3758();
    }
  }
}

char *sub_1003341B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_todayCard] = 0;
  v11 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for HeaderView()) init];
  v12 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer;
  type metadata accessor for TodayListCardLockupContainer();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView] = 0;
  v13 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_cardStyle;
  v14 = type metadata accessor for TodayCard.Style();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_isMediaDark] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton] = 0;
  v43[0] = sub_1000DB5A0;
  v43[1] = 0;
  v43[2] = sub_1005AB29C;
  v43[3] = 0;
  v43[4] = sub_1005AB458;
  v43[5] = 0;
  v43[6] = sub_1005AB484;
  v43[7] = 0;
  v43[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v43[9] = 0;
  v43[10] = sub_1005AB2C8;
  v43[11] = 0;
  v44 = 0x4000000000000000uLL;
  *v45 = 0;
  *&v45[8] = 0x4018000000000000;
  *&v45[16] = 0;
  v45[24] = 1;
  v15 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
  *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView] = sub_100550DDC(v43, &v44);
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 layer];
  [v17 setAllowsGroupBlending:0];

  v18 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer;
  v19 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  v20 = v16[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded];
  v21 = *&v16[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer];

  v22 = v21[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded];
  v21[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded] = v20;
  if (v20 != v22)
  {
    [v21 setNeedsLayout];
  }

  v23 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView;
  if (*(*(*&v16[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) == 1)
  {
    if (v16[v19])
    {
      v24 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v24 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v25 = v16[*v24] == 4;
  }

  else
  {
    v25 = 0;
  }

  [*&v16[v18] setHidden:v25];
  v26 = [*&v16[v18] layer];
  [v26 setZPosition:0.0];

  v27 = v16;
  v28 = [v27 contentView];
  [v28 addSubview:*&v16[v18]];

  v29 = [v27 backgroundView];
  if (v29)
  {
    v30 = v29;
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v31 = static UIColor.todayCardDefaultBackground.getter();
    [v30 setBackgroundColor:v31];
  }

  sub_100334720();
  v32 = [v27 contentView];
  [v32 addSubview:*&v16[v23]];

  v33 = [v27 contentView];
  v34 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView;
  [v33 addSubview:*&v27[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView]];

  v35 = *&v27[v34];
  sub_10033494C();
  v36 = &v35[qword_10098B7B0];
  *(v36 + 25) = *&v45[9];
  v37 = *v45;
  *v36 = v44;
  *(v36 + 1) = v37;
  [v35 setNeedsLayout];

  v38 = [v27 contentView];
  [v38 setClipsToBounds:1];

  sub_100334A10();
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007B10D0;
  *(v39 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v39 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v41[3] = ObjectType;
  v41[0] = v27;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v41);
  return v27;
}

uint64_t sub_100334720()
{
  v1 = type metadata accessor for CornerStyle();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v7 = 0;
  }

  else
  {
    v8 = v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory];
    if (*(*(*&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) == 1 && v8 == 4)
    {
      v7 = -1;
    }

    else if (v8 == 6)
    {
      v10 = [v0 traitCollection];
      v11 = UITraitCollection.prefersRightToLeftLayouts.getter();

      if (v11)
      {
        v7 = 10;
      }

      else
      {
        v7 = 5;
      }

      v6 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView;
    }

    else
    {
      v7 = 3;
    }
  }

  v12 = *&v0[v6];
  (*(v2 + 104))(v5, enum case for CornerStyle.continuous(_:), v1, v3);
  sub_10070C5EC(v5, v7, 20.0);
  if ((v7 & 0xC) != 0)
  {
    [v12 _setContinuousCornerRadius:20.0];
  }

  v13 = [v12 layer];
  [v13 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_10033494C()
{
  if (*(*(*&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) == 1)
  {
    if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (v0[*v1] == 6)
    {
      v2 = 1;
    }

    else
    {
      v3 = [v0 traitCollection];
      v4 = UITraitCollection.prefersAccessibilityLayouts.getter();

      v2 = v4 ^ 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_100334A10()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_1009752C8, &unk_1007B73C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for TodayCard.Style();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = *&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  v15 = sub_10033494C();
  v28 = v14;
  [v14 setHidden:(v15 & 1) == 0];
  v16 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_100031660(&v1[v16], v4, &qword_1009752C8, &unk_1007B73C0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002B894(v4, &qword_1009752C8, &unk_1007B73C0);
  }

  else
  {
    (*(v6 + 32))(v13, v4, v5);
    if ((sub_10033494C() & 1) != 0 && v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_isMediaDark] == 1)
    {
      (*(v6 + 104))(v10, enum case for TodayCard.Style.dark(_:), v5);
    }

    else
    {
      (*(v6 + 16))(v10, v13, v5);
    }

    v17 = v27;
    v18 = sub_10033494C();
    sub_100550798(v10, v18 & 1);
    if ((sub_10033494C() & 1) != 0 && (v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_isMediaDark] & 1) != 0 || (*(*&v28[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView] + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) & 1) == 0 && (!v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] ? (v19 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) : (v19 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory), v1[*v19] == 6))
    {
      (*(v6 + 104))(v17, enum case for TodayCard.Style.dark(_:), v5);
    }

    else
    {
      (*(v6 + 16))(v17, v13, v5);
    }

    v20 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
    if (v20)
    {
      v21 = v20;
      if (sub_10033494C())
      {
        v22 = 1;
      }

      else if (*(*&v28[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView] + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia))
      {
        v22 = 0;
      }

      else
      {
        if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
        {
          v23 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
        }

        else
        {
          v23 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
        }

        v22 = v1[*v23] == 6;
      }

      sub_100550798(v17, v22);
    }

    v24 = *(v6 + 8);
    v24(v17, v5);
    v24(v10, v5);
    v24(v13, v5);
  }

  sub_100334720();
  return [v1 setNeedsLayout];
}

__n128 sub_100334E90@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32);
  result = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets);
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

id sub_100334EB4(id result)
{
  v2 = &v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  v3 = *&v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 16];
  v5 = v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32];
  v6 = *(result + 1);
  *v2 = *result;
  *(v2 + 1) = v6;
  v7 = *(result + 32);
  v2[32] = v7;
  if (v7)
  {
    if (v5)
    {
      return result;
    }

    return [v1 setNeedsLayout];
  }

  if (v5)
  {
    return [v1 setNeedsLayout];
  }

  v4 = vceqq_f64(*(result + 1), v4);
  *&v3.f64[0] = vmovn_s32(vuzp1q_s32(vceqq_f64(*result, v3), v4));
  LOWORD(v3.f64[0]) = vminv_u16(*&v3.f64[0]);
  if ((LOBYTE(v3.f64[0]) & 1) == 0)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_100334F20()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of RiverView.isAnimating.setter();
  }

  v3 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isMotionEnabled);
    v5 = v3[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating];
    v3[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] = v4;
    if (v4 != v5)
    {
      v6 = v3;
      sub_1004A3758();
    }
  }
}

void sub_100335008(uint64_t a1)
{
  v3 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v6, &qword_10097DBD0, &qword_1007BC750);
  swift_endAccess();
  v7 = *(*(v1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  sub_100031660(v1 + v6, v5, &qword_10097DBD0, &qword_1007BC750);
  v8 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  v9 = v7;
  sub_1000315F8(v5, v7 + v8, &qword_10097DBD0, &qword_1007BC750);
  swift_endAccess();
}

void sub_100335144(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView] + qword_10098B800) = v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning];
  sub_100551D80();
  v4 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
  if (v4)
  {
    *(v4 + qword_10098B800) = v2[v3];
    sub_100551D80();
  }

  v5 = *(*&v2[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  v6 = v2[v3];
  v5[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isTransitioning] = v6;
  *(*&v5[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView] + OBJC_IVAR____TtC8AppStore18RevealingImageView_isTransitioning) = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *((swift_isaMask & *Strong) + 0xC8);
    v9 = Strong;
    v10 = v5;
    v8(v6);
  }

  v11 = [v2 contentView];
  [v11 setClipsToBounds:(v2[v3] & 1) == 0];
}

uint64_t sub_1003352E0()
{
  if (*(*(*&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) != 1)
  {
    return 1;
  }

  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v1] == 6)
  {
    return 0;
  }

  v3 = [v0 traitCollection];
  v4 = UITraitCollection.prefersAccessibilityLayouts.getter();

  return v4 & 1;
}

void sub_100335434(char a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setDragging:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  *(v4 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isDragging) = objc_msgSendSuper2(&v8, "isDragging");
  v5 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v5)
  {
    v7.receiver = v1;
    v7.super_class = ObjectType;
    v6 = v5;
    v6[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isDragging] = objc_msgSendSuper2(&v7, "isDragging");
  }
}

uint64_t sub_100335590(double a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "_setContinuousCornerRadius:", a1);
  v8 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "_continuousCornerRadius");
  v10 = v9;
  (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
  sub_10070C5EC(v7, 3, v10);
  v11 = [v8 layer];
  [v11 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

  return (*(v5 + 8))(v7, v4);
}

void *sub_100335728()
{
  result = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton);
  if (result)
  {
    [result alpha];
    return (v2 != 0.0);
  }

  return result;
}

void sub_100335760(char a1)
{
  if (a1)
  {

    sub_1003357E0();
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton);
    *(v1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton) = 0;
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];
    }
  }
}

void sub_1003357E0()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v7 = sub_1001C66CC(14.0);
  [v7 addTarget:v0 action:"handleMuteButtonTapped" forControlEvents:64];
  v3 = [v0 contentView];
  [v3 addSubview:v7];

  v4 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton] = v7;
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

uint64_t sub_1003358E8(void *a1)
{
  if (a1)
  {
    v3 = *(*(v1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
    v4 = *&v3[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView];
    v5 = v3;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v8 = v4;
      v9 = static NSObject.== infix(_:_:)();

      v5 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void (*sub_1003359F8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100335A78;
}

void sub_100335A78(uint64_t a1, char a2)
{
  v3 = *a1;
  v8 = *(*(a1 + 8) + *(a1 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3;
    v6 = v8;
    sub_1006666C8(Strong);

    Strong = v5;
  }

  else
  {
    v7 = v8;
    sub_1006666C8(Strong);
  }
}

uint64_t sub_100335B48()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for VerticalStack();
  v83 = *(v3 - 8);
  v84 = v3;
  __chkstk_darwin(v3);
  v82 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DisjointStack();
  v80 = *(v5 - 8);
  v81 = v5;
  __chkstk_darwin(v5);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v8 - 8);
  v10 = &v80 - v9;
  v11 = type metadata accessor for PageGrid();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88.receiver = v1;
  v88.super_class = ObjectType;
  objc_msgSendSuper2(&v88, "layoutSubviews", v13);
  v16 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_100031660(&v1[v16], v10, &qword_10097DBD0, &qword_1007BC750);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v10, v11);
    if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v17 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v17 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v18 = v1[*v17];
    switch(v18)
    {
      case 7:
        sub_1003370EC(v15, v87);
        v34 = [v1 contentView];
        [v34 bounds];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;

        v43 = [v1 traitCollection];
        v44 = v82;
        sub_10040F3DC(v43, v36, v38, v40, v42);
        v45 = v84;
        dispatch thunk of Placeable.place(at:with:)();

        (*(v83 + 8))(v44, v45);
        sub_10034360C(v87);
        (*(v12 + 8))(v15, v11);
        goto LABEL_17;
      case 6:
        sub_100336C58(v15, v86);
        if (v86[13])
        {
          memcpy(v87, v86, sizeof(v87));
          v24 = [v1 contentView];
          [v24 bounds];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;

          v33 = [v1 traitCollection];
          sub_100461828(v33, v26, v28, v30, v32);

          sub_100343660(v87);
LABEL_16:
          (*(v12 + 8))(v15, v11);
          goto LABEL_17;
        }

        sub_10002B894(v86, &qword_100980BE0, qword_1007C83C8);
        sub_1003370EC(v15, v87);
        v58 = [v1 contentView];
        [v58 bounds];
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v66 = v65;

        v67 = [v1 traitCollection];
        v68 = v82;
        sub_10040F3DC(v67, v60, v62, v64, v66);
        v69 = v84;
        dispatch thunk of Placeable.place(at:with:)();

        (*(v83 + 8))(v68, v69);
        break;
      case 4:
        sub_10033658C(v15, v87);
        v19 = [v1 contentView];
        [v19 bounds];

        v20 = v15;
        v21 = v11;
        v22 = [v1 traitCollection];
        DisjointStack.init(with:)();
        DisjointStack.insert(_:at:with:)();
        sub_10002C0AC(&v87[11], &v85);
        v86[3] = type metadata accessor for Margins();
        v86[4] = &protocol witness table for Margins;
        sub_1000056E0(v86);
        Margins.init(top:left:bottom:right:child:)();
        DisjointStack.insert(_:at:with:)();
        sub_100007000(v86);
        v23 = v81;
        dispatch thunk of Placeable.place(at:with:)();

        (*(v80 + 8))(v7, v23);
        sub_1003436B4(v87);
        (*(v12 + 8))(v20, v21);
        goto LABEL_17;
      default:
        sub_1003370EC(v15, v87);
        v46 = [v1 contentView];
        [v46 bounds];
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;

        v55 = [v1 traitCollection];
        v56 = v82;
        sub_10040F3DC(v55, v48, v50, v52, v54);
        v57 = v84;
        dispatch thunk of Placeable.place(at:with:)();

        (*(v83 + 8))(v56, v57);
        break;
    }

    sub_10034360C(v87);
    goto LABEL_16;
  }

  sub_10002B894(v10, &qword_10097DBD0, &qword_1007BC750);
LABEL_17:
  if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4 && v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] == 1 && v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory] == 5)
  {
    v70 = objc_opt_self();
    v71 = swift_allocObject();
    *(v71 + 16) = v1;
    v72 = swift_allocObject();
    v73 = sub_1003435F0;
    *(v72 + 16) = sub_1003435F0;
    *(v72 + 24) = v71;
    v87[4] = sub_10006F094;
    v87[5] = v72;
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 1107296256;
    v87[2] = sub_1000489A8;
    v87[3] = &unk_1008BEAB0;
    v74 = _Block_copy(v87);
    v75 = v1;

    [v70 performWithoutAnimation:v74];
    _Block_release(v74);
    LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

    if ((v70 & 1) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  v76 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v76)
  {
    [v76 layoutIfNeeded];
  }

  [*&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer] layoutIfNeeded];
  v73 = 0;
  v71 = 0;
LABEL_25:
  v77 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton];
  if (v77)
  {
    v78 = v77;
    [v1 bounds];
    [v78 setFrame:{CGRectGetMaxX(v89) + -32.0 + -12.0, 12.0, 32.0, 32.0}];
  }

  return sub_10001F63C(v73, v71);
}

id sub_10033658C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v59 = &v57[-v10];
  v11 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v11 - 8);
  v13 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v57[-v15];
  __chkstk_darwin(v17);
  v19 = &v57[-v18];
  __chkstk_darwin(v20);
  v22 = &v57[-v21];
  v23 = a1;
  if (v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
  {
    PageGrid.safeAreaInsets.getter();
    v25 = v24;
  }

  else
  {
    v25 = *&v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  }

  v26 = v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded];
  v27 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v27 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v58 = v3[*v27];
  v62 = v3;
  v63 = [v3 traitCollection];
  v61 = v7;
  v28 = *(v7 + 16);
  v29 = (v7 + 56);
  v30 = (v7 + 48);
  if (v26 == 1)
  {
    v28(v22, v23, v6);
    (*v29)(v22, 0, 1, v6);
    sub_100031660(v22, v19, &qword_10097DBD0, &qword_1007BC750);
    if ((*v30)(v19, 1, v6) == 1)
    {
      sub_10002B894(v19, &qword_10097DBD0, &qword_1007BC750);
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v34 = v63;
    }

    else
    {
      v36 = v61;
      v37 = v59;
      (*(v61 + 32))(v59, v19, v6);
      PageGrid.horizontalDirectionalMargins.getter();
      PageGrid.horizontalDirectionalMargins.getter();
      v34 = v63;
      [v63 layoutDirection];
      NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
      left = v38;
      bottom = v39;
      right = v40;
      (*(v36 + 8))(v37, v6);
    }

    v35 = v62;
    sub_10002B894(v22, &qword_10097DBD0, &qword_1007BC750);
    if ((UITraitCollection.isSizeClassCompact.getter() & 1) == 0)
    {
      if (qword_10096E6E0 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for StaticDimension();
      sub_1000056A8(v41, qword_1009D24C0);
      type metadata accessor for TraitEnvironmentPlaceholder();
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1007B0B70;
      *(v42 + 32) = v34;
      v43 = v34;
      v44 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
      dispatch thunk of AnyDimension.rawValue(in:)();
      v25 = v45;
    }

    v46 = v25 + 20.0;
  }

  else
  {
    v28(v16, v23, v6);
    (*v29)(v16, 0, 1, v6);
    sub_100031660(v16, v13, &qword_10097DBD0, &qword_1007BC750);
    if ((*v30)(v13, 1, v6) == 1)
    {
      sub_10002B894(v13, &qword_10097DBD0, &qword_1007BC750);
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;

      v35 = v62;
    }

    else
    {
      v48 = v60;
      v47 = v61;
      (*(v61 + 32))(v60, v13, v6);
      v35 = v62;
      if (v58 != 4)
      {
        PageGrid.horizontalDirectionalMargins.getter();
        PageGrid.horizontalDirectionalMargins.getter();
      }

      v49 = v63;
      [v63 layoutDirection];
      NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
      left = v50;
      right = v51;

      (*(v47 + 8))(v48, v6);
    }

    sub_10002B894(v16, &qword_10097DBD0, &qword_1007BC750);
    bottom = 20.0;
    v46 = 20.0;
  }

  v52 = sub_10033494C();

  v53 = *&v35[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  *(a2 + 72) = type metadata accessor for HeaderView();
  *(a2 + 80) = sub_100343708(&qword_100980BE8, type metadata accessor for HeaderView, &unk_1007C8240);
  *(a2 + 48) = v53;
  v63 = *&v35[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView];
  *(a2 + 112) = type metadata accessor for TodayCardLabelsView(0);
  *(a2 + 120) = &protocol witness table for CustomLayoutView;
  *(a2 + 88) = v63;
  *a2 = v52 & 1;
  *(a2 + 8) = v46;
  *(a2 + 16) = left;
  *(a2 + 24) = bottom;
  *(a2 + 32) = right;
  *(a2 + 40) = 0x4030000000000000;
  v54 = v53;
  v55 = v63;

  return v55;
}

uint64_t sub_100336C58@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v4 && (v5 = *&v2[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView]) != 0 && *&v2[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_todayCard])
  {
    v6 = result;
    if (v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
    {

      v7 = v4;
      v8 = v5;
      PageGrid.safeAreaInsets.getter();
      v10 = v9;
    }

    else
    {
      v10 = *&v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];

      v11 = v4;
      v12 = v5;
    }

    v13 = [v3 traitCollection];
    v44 = sub_100340000(v6, v13, v10);
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [v3 traitCollection];
    v21 = sub_100343828(v6, v20);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = sub_10033494C();
    v29 = v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded];
    v43 = v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning];

    if (v29)
    {
      v30 = 272.0;
    }

    else
    {
      v30 = 177.0;
    }

    v68 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
    type metadata accessor for HeaderView();
    Measurable.placeable.getter();
    v66 = v5;
    v31 = type metadata accessor for TodayCardLabelsView(0);
    Measurable.placeable.getter();
    v32 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView];
    v63 = v31;
    v64 = &protocol witness table for CustomLayoutView;
    *&v62 = v32;
    v60 = type metadata accessor for TodayListCardLockupContainer();
    v61 = &protocol witness table for UIView;
    v33 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer];
    v58 = &protocol witness table for UIView;
    *&v59 = v4;
    v57 = v60;
    *&v56 = v33;
    v34 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v35 = *(*&v33[v34] + 16);
    if (*&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView])
    {
      *&v50 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView];
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v36 = v32;
      v37 = v33;
      Measurable.placeable.getter();
    }

    else
    {
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v38 = v32;
      v39 = v33;
    }

    v40 = v28 & 1;
    if (*&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView])
    {
      *&v47 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView];
      sub_10002849C(&qword_10097D5D0, &qword_1007C49F0);
      Measurable.placeable.getter();
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
    }

    v41 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView];
    if (v41)
    {
      v46 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView];
      type metadata accessor for RiverTodayCardBackgroundView(0);
      v42 = v41;
      Measurable.placeable.getter();
    }

    else
    {

      v49 = 0;
      v47 = 0u;
      v48 = 0u;
    }

    *a2 = v29;
    *(a2 + 1) = v43;
    *(a2 + 2) = v40;
    *(a2 + 3) = v46;
    *(a2 + 7) = BYTE4(v46);
    *(a2 + 8) = v44;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17;
    *(a2 + 32) = v19;
    *(a2 + 40) = v21;
    *(a2 + 48) = v23;
    *(a2 + 56) = v25;
    *(a2 + 64) = v27;
    *(a2 + 72) = v30;
    sub_100005A38(&v67, a2 + 80);
    sub_100005A38(&v65, a2 + 120);
    sub_100005A38(&v62, a2 + 160);
    sub_100005A38(&v59, a2 + 200);
    result = sub_100005A38(&v56, a2 + 240);
    *(a2 + 280) = v35;
    *(a2 + 288) = v53;
    *(a2 + 304) = v54;
    *(a2 + 320) = v55;
    *(a2 + 328) = v50;
    *(a2 + 344) = v51;
    *(a2 + 360) = v52;
    *(a2 + 368) = v47;
    *(a2 + 384) = v48;
    *(a2 + 400) = v49;
  }

  else
  {
    *(a2 + 400) = 0;
    *(a2 + 368) = 0u;
    *(a2 + 384) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 352) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

id sub_1003370EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v65 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v64 = &v62[-v10];
  v11 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v11 - 8);
  v13 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v66 = &v62[-v15];
  __chkstk_darwin(v16);
  v18 = &v62[-v17];
  __chkstk_darwin(v19);
  v21 = &v62[-v20];
  v22 = a1;
  if (v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
  {
    PageGrid.safeAreaInsets.getter();
    v24 = v23;
  }

  else
  {
    v24 = *&v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  }

  v69 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  v25 = v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded];
  v26 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v26 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v63 = v3[*v26];
  v27 = [v3 traitCollection];
  v67 = v7;
  v68 = v27;
  v28 = *(v7 + 16);
  v29 = (v7 + 56);
  v30 = (v7 + 48);
  if (v25 == 1)
  {
    v28(v21, v22, v6);
    (*v29)(v21, 0, 1, v6);
    sub_100031660(v21, v18, &qword_10097DBD0, &qword_1007BC750);
    if ((*v30)(v18, 1, v6) == 1)
    {
      sub_10002B894(v18, &qword_10097DBD0, &qword_1007BC750);
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v34 = v68;
    }

    else
    {
      v36 = v67;
      v37 = v64;
      (*(v67 + 32))(v64, v18, v6);
      PageGrid.horizontalDirectionalMargins.getter();
      PageGrid.horizontalDirectionalMargins.getter();
      v34 = v68;
      [v68 layoutDirection];
      NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
      left = v38;
      bottom = v39;
      right = v40;
      (*(v36 + 8))(v37, v6);
    }

    sub_10002B894(v21, &qword_10097DBD0, &qword_1007BC750);
    if ((UITraitCollection.isSizeClassCompact.getter() & 1) == 0)
    {
      if (qword_10096E6E0 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for StaticDimension();
      sub_1000056A8(v41, qword_1009D24C0);
      type metadata accessor for TraitEnvironmentPlaceholder();
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1007B0B70;
      *(v42 + 32) = v34;
      v43 = v34;
      v44 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
      dispatch thunk of AnyDimension.rawValue(in:)();
      v24 = v45;
    }

    v46 = v24 + 20.0;
  }

  else
  {
    v35 = v66;
    v28(v66, v22, v6);
    (*v29)(v35, 0, 1, v6);
    sub_100031660(v35, v13, &qword_10097DBD0, &qword_1007BC750);
    if ((*v30)(v13, 1, v6) == 1)
    {
      sub_10002B894(v13, &qword_10097DBD0, &qword_1007BC750);
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;
    }

    else
    {
      v47 = v67;
      v48 = v65;
      (*(v67 + 32))(v65, v13, v6);
      if (v63 != 4)
      {
        PageGrid.horizontalDirectionalMargins.getter();
        PageGrid.horizontalDirectionalMargins.getter();
      }

      v49 = v68;
      [v68 layoutDirection];
      NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
      left = v50;
      right = v51;

      (*(v47 + 8))(v48, v6);
    }

    sub_10002B894(v35, &qword_10097DBD0, &qword_1007BC750);
    bottom = 20.0;
    v46 = 20.0;
  }

  v52 = sub_10033494C();
  v53 = v3[v69];

  if (v53)
  {
    v54 = 272.0;
  }

  else
  {
    v54 = 177.0;
  }

  v55 = v52 & 1;
  v56 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  *(a2 + 88) = type metadata accessor for HeaderView();
  *(a2 + 96) = sub_100343708(&qword_100980BE8, type metadata accessor for HeaderView, &unk_1007C8240);
  *(a2 + 64) = v56;
  v57 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView];
  *(a2 + 128) = type metadata accessor for TodayCardLabelsView(0);
  *(a2 + 136) = &protocol witness table for CustomLayoutView;
  *(a2 + 104) = v57;
  v69 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer];
  *(a2 + 168) = type metadata accessor for TodayListCardLockupContainer();
  *(a2 + 176) = &protocol witness table for UIView;
  *(a2 + 144) = v69;
  *a2 = v53;
  *(a2 + 1) = v55;
  *(a2 + 8) = v46;
  *(a2 + 16) = left;
  *(a2 + 24) = bottom;
  *(a2 + 32) = right;
  *(a2 + 40) = 0x4030000000000000;
  *(a2 + 48) = v54;
  *(a2 + 56) = 0x405B800000000000;
  v58 = v56;
  v59 = v57;
  v60 = v69;

  return v60;
}

double sub_100337864()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&qword_1009752C8, &unk_1007B73C0);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v22[-v5];
  v23.receiver = v1;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, "prepareForReuse", v4);
  v7 = *(*&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  sub_10070CE5C();

  sub_10036AAA4();
  v8 = type metadata accessor for TodayCard.Style();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_1000315F8(v6, &v1[v9], &qword_1009752C8, &unk_1007B73C0);
  swift_endAccess();
  v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_isMediaDark] = 0;
  v10 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton] = 0;
  if (v10)
  {
    [v10 removeFromSuperview];
  }

  sub_100337AC0();
  v12 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView;
  v13 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView];
  if (v13)
  {
    v14 = v13;
    v15 = dispatch thunk of RiverView.dataSource.getter();

    swift_beginAccess();
    *(v15 + 32) = _swiftEmptyArrayStorage;

    v16 = *&v1[v12];
    if (v16)
    {
      v17 = v16;
      dispatch thunk of RiverView.flushRows()();
    }
  }

  v18 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView];
  if (v18)
  {
    v19 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors;
    swift_beginAccess();
    v20 = *&v18[v19];
    *&v18[v19] = _swiftEmptyArrayStorage;
    v21 = v18;
    sub_1004A2DB8(v20);
  }

  return result;
}

void sub_100337AC0()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (*(v0 + *v1) == 6)
  {
    if (*(*(*(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) != 1)
    {
      return;
    }

    v2 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView;
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *(v0 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v0 + v2) = 0;

    v17 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView;
    v18 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView);
    if (v18)
    {
      [v18 removeFromSuperview];
      v16 = *(v0 + v17);
    }

    else
    {
      v16 = 0;
    }

    *(v0 + v17) = 0;
  }

  else
  {
    v5 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer;
    v6 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v0 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v5) = 0;

    v8 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView;
    v9 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v0 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v0 + v8) = 0;

    v11 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView;
    v12 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView);
    if (v12)
    {
      [v12 removeFromSuperview];
      v13 = *(v0 + v11);
    }

    else
    {
      v13 = 0;
    }

    *(v0 + v11) = 0;

    v14 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView;
    v15 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView);
    if (v15)
    {
      [v15 removeFromSuperview];
      v16 = *(v0 + v14);
    }

    else
    {
      v16 = 0;
    }

    *(v0 + v14) = 0;
  }

  v19 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v19)
  {

    [v19 setHidden:1];
  }
}

id sub_100337CE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for CornerStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004EE4C4();
  v7 = *&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView];
  v8 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v9 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v9 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v10 = v0[*v9];
  v11 = sub_100287668;
  v12 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v13 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v14 = sub_1005AB608;
  v52 = v4;
  v53 = v3;
  v51 = ObjectType;
  if (v10 != 6)
  {
    if (v10 == 4)
    {
      v11 = sub_100287668;
      v12 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v14 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v13 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    }

    else
    {
      v11 = sub_1005AB2C8;
      v12 = sub_1005AB484;
      v13 = sub_1005AB458;
      v14 = sub_1005AB29C;
    }
  }

  v15 = &v7[qword_10098B7F0];
  *v15 = sub_1000DB5A0;
  v15[1] = 0;
  v15[2] = v14;
  v15[3] = 0;
  v15[4] = v13;
  v15[5] = 0;
  v15[6] = v12;
  v15[7] = 0;
  v15[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v15[9] = 0;
  v15[10] = v11;
  v15[11] = 0;

  sub_100551950();
  sub_10033494C();
  v16 = &v7[qword_10098B7B0];
  *v16 = 0x4000000000000000;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0x4018000000000000;
  *(v16 + 4) = 0;
  v16[40] = 1;
  [v7 setNeedsLayout];
  v17 = *&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  v18 = *&v17[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView];
  v19 = v0[v8];
  v20 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded;
  v18[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded] = v19;
  v21 = *&v18[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView];
  v21[OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded] = v19;
  v22 = v18;
  [v21 setNeedsLayout];
  *(*&v22[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView] + OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded) = v18[v20];
  sub_100665B04();

  v23 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer];
  v24 = v1[v8];
  v25 = v23[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded];
  v23[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded] = v24;
  if (v24 != v25)
  {
    [v23 setNeedsLayout];
  }

  v26 = 20.0;
  if (v1[v8])
  {
    v26 = 0.0;
  }

  v27 = v51;
  v55.receiver = v1;
  v55.super_class = v51;
  objc_msgSendSuper2(&v55, "_setContinuousCornerRadius:", v26);
  v54.receiver = v1;
  v54.super_class = v27;
  objc_msgSendSuper2(&v54, "_continuousCornerRadius");
  v29 = v28;
  v31 = v52;
  v30 = v53;
  (*(v52 + 104))(v6, enum case for CornerStyle.continuous(_:), v53);
  sub_10070C5EC(v6, 3, v29);
  v32 = [v17 layer];
  [v32 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

  (*(v31 + 8))(v6, v30);
  v33 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v33)
  {
    v34 = v1[v8];
    v35 = v33[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded];
    v33[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded] = v34;
    if (v34 != v35)
    {
      [v33 setNeedsLayout];
    }
  }

  v36 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView;
  v37 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
  if (v37)
  {
    v38 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    if (!v1[v8])
    {
      v38 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v39 = v1[*v38];
    v40 = sub_100287668;
    v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v43 = sub_1005AB608;
    if (v39 != 6)
    {
      if (v39 == 4)
      {
        v40 = sub_100287668;
        v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v43 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      }

      else
      {
        v40 = sub_1005AB2C8;
        v41 = sub_1005AB484;
        v42 = sub_1005AB458;
        v43 = sub_1005AB29C;
      }
    }

    v44 = &v37[qword_10098B7F0];
    *v44 = sub_1000DB5A0;
    v44[1] = 0;
    v44[2] = v43;
    v44[3] = 0;
    v44[4] = v42;
    v44[5] = 0;
    v44[6] = v41;
    v44[7] = 0;
    v44[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v44[9] = 0;
    v44[10] = v40;
    v44[11] = 0;
    v45 = v37;

    sub_100551950();

    v46 = *&v1[v36];
    if (v46)
    {
      v47 = v46;
      sub_10033494C();
      v48 = &v47[qword_10098B7B0];
      *v48 = 0x4000000000000000;
      *(v48 + 1) = 0;
      *(v48 + 2) = 0;
      *(v48 + 3) = 0x4018000000000000;
      *(v48 + 4) = 0;
      v48[40] = 1;
      [v47 setNeedsLayout];
    }
  }

  sub_100338410();
  sub_1002149C0();
  return [v1 setNeedsLayout];
}