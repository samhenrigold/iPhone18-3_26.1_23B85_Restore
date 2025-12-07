void PageTraitEnvironment.pageColumnWidth.getter()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.isRegularPad.getter();

  if (v3)
  {
    [v1 pageContainerSize];
    sub_10048F38C(v4, v5);
    PageTraitEnvironment.pageColumnMargin.getter();
  }

  else
  {
    [v1 pageMarginInsets];
    [v1 pageContainerSize];
  }
}

void PageTraitEnvironment.defaultPageMargin.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = UITraitCollection.isRegularPad.getter();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_5:
      JUScreenClassGetLandscapeWidth();
      return;
    }

    goto LABEL_10;
  }

  if (v4 >= v2)
  {
    if (v2 == 744.0)
    {
      return;
    }

    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

LABEL_10:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_5;
    }
  }
}

void sub_10048F38C(double a1, double a2)
{
  if (a2 >= a1)
  {
    if (a1 != 744.0)
    {
      JUScreenClassGetPortraitWidth();
      if (v4 < a1)
      {
        JUScreenClassGetPortraitWidth();
      }
    }
  }

  else if (a1 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v3 < a1)
    {
      JUScreenClassGetLandscapeWidth();
    }
  }
}

double PageTraitEnvironment.pageContentSize.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  [v0 pageMarginInsets];
  return v2 - v3 - v4;
}

void sub_10048F4BC(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v27 = a1;
  v25 = a2;
  v26 = a3;
  v3 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v12 = v11;
  v14 = v13;
  v15 = *(v8 + 8);
  v15(v10, v7);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v4 + 8))(v6, v3);
  v16 = v29;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v18 = v17;
  v15(v10, v7);
  v19 = ShelfLayoutContext.traitCollection.getter();
  v20 = type metadata accessor for SnapshotPageTraitEnvironment();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v22 = v18;
  *(v22 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v21[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v19;
  v28.receiver = v21;
  v28.super_class = v20;
  v23 = objc_msgSendSuper2(&v28, "init");
  (*(*(v25 + 8) + 16))(v16, v23, v27, v12, v14);
}

uint64_t sub_10048F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v24 = a5;
  v22 = a2;
  v7 = type metadata accessor for ShelfLayoutContext();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100992470, &unk_1007B45B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for ComponentPrefetchSizing();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  ItemLayoutContext.parentShelfLayoutContext.getter();
  dispatch thunk of static ArtworkPrefetchingShelfComponentView.sizingForArtworkPrefetch(in:asPartOf:)();
  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10002B894(v13, &qword_100992470, &unk_1007B45B0);
  }

  (*(v15 + 32))(v17, v13, v14);
  v19 = sub_10048FA60(v23);
  __chkstk_darwin(v19);
  *(&v22 - 2) = v17;
  sub_1000B40B8(sub_1000BDD2C, (&v22 - 4), v19);
  v21._rawValue = v20;

  if (v21._rawValue >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*((v21._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    ArtworkLoader.prefetchArtwork(using:)(v21);
  }

LABEL_6:

  return (*(v15 + 8))(v17, v14);
}

void *sub_10048FA60(uint64_t a1)
{
  v2 = type metadata accessor for Shelf.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  swift_getKeyPath();
  v24 = a1;
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v14 = *(v10 + 8);
  v13 = v10 + 8;
  v23 = v14;
  v14(v12, v9);
  v22 = *(v3 + 104);
  v22(v5, enum case for Shelf.ContentType.todayCard(_:), v2);
  v21[2] = sub_1001D74CC();
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v15(v8, v2);
  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    v21[1] = v13;
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v23(v12, v9);
    v22(v5, enum case for Shelf.ContentType.miniTodayCard(_:), v2);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    v15(v5, v2);
    v15(v8, v2);
    if ((v16 & 1) == 0)
    {
      sub_10002849C(&unk_100973200, &qword_1007B4620);
      ItemLayoutContext.typedModel<A>(as:)();
      if (v26)
      {
        sub_100005A38(&v25, v27);
        sub_10002A400(v27, v27[3]);
        v17 = dispatch thunk of ArtworkModelProtocol.artwork.getter();
        if (v17)
        {
          v18 = v17;
          sub_10002849C(&qword_100973210, qword_1007B0BB0);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_1007B0B70;
          *(v19 + 32) = v18;
          sub_100007000(v27);
          return v19;
        }

        sub_100007000(v27);
      }

      else
      {
        sub_10002B894(&v25, &unk_100990B70, &unk_1007B4628);
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10048FE50@<X0>(uint64_t *a1@<X8>)
{
  ComponentPrefetchSizing.size.getter();
  ComponentPrefetchSizing.contentMode.getter();
  result = Artwork.config(_:mode:prefersLayeredImage:)();
  *a1 = result;
  return result;
}

double sub_10048FF00(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v3 = sub_10002849C(&unk_100973B10, &qword_1007B5208);
  __chkstk_darwin(v3 - 8);
  v68 = &v68 - v4;
  v5 = sub_10002849C(&qword_100973AC0, &qword_1007B51D0);
  __chkstk_darwin(v5 - 8);
  v75 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v68 - v8;
  v10 = type metadata accessor for LegacyAppState();
  v82 = *(v10 - 8);
  v83 = v10;
  __chkstk_darwin(v10);
  v81 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AdamId();
  v79 = *(v12 - 8);
  v80 = v12;
  __chkstk_darwin(v12);
  v78 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for PageGrid.Direction();
  v14 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v68 - v17;
  v19 = type metadata accessor for PageGrid();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v68 - v24;
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  type metadata accessor for ProductTopLockup();
  sub_100496F64(&qword_100973AE8, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  ItemLayoutContext.typedModel<A>(as:)();
  v29 = v87[0];
  if (v87[0])
  {
    v74 = v9;
    v85 = v22;
    v69 = v18;
    swift_getKeyPath();
    v70 = v29;
    ItemLayoutContext.subscript.getter();

    PageGrid.containerWidth.getter();
    v30 = *(v20 + 8);
    v30(v28, v19);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.containerHeight.getter();
    v30(v25, v19);
    v31 = v69;
    v32 = v77;
    (*(v14 + 104))(v69, enum case for PageGrid.Direction.vertical(_:), v77);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.safeAreaInsets.getter();
    v71 = v19;
    v73 = v20 + 8;
    v72 = v30;
    v30(v28, v19);
    (*(v14 + 16))(v76, v31, v32);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v14 + 8))(v31, v32);
    sub_10002849C(&unk_100973AF0, &qword_1007B3960);
    v33 = *&v84;
    BaseObjectGraph.inject<A>(_:)();
    v34 = v87[0];
    swift_getObjectType();
    v35 = v78;
    v36 = v70;
    ProductTopLockup.adamId.getter();
    v77 = v34;
    dispatch thunk of AppStateController.stateMachine(forApp:)();
    (*(v79 + 8))(v35, v80);
    swift_getObjectType();
    v37 = v81;
    dispatch thunk of AppStateMachine.currentState.getter();
    v38 = sub_100495A34();
    sub_100490E28(v36, v37, a1, v33, v87, v38, v39);
    v40 = v83;
    v41 = *(v82 + 8);
    v41(v37, v83);
    dispatch thunk of AppStateMachine.currentState.getter();
    v42 = v74;
    ProductTopLockup.primaryBanner(for:)();
    v41(v37, v40);
    v43 = type metadata accessor for ProductTopLockup.PrimaryBanner();
    v44 = *(v43 - 8);
    v45 = *(v44 + 48);
    v46 = v42;
    v47 = v45(v42, 1, v43);
    v48 = 0;
    v49 = v46;
    if (v47 != 1)
    {
      v50 = v46;
      v51 = v75;
      sub_100031660(v50, v75, &qword_100973AC0, &qword_1007B51D0);
      if (v45(v51, 1, v43) == 1)
      {
        v52 = &qword_100973AC0;
        v53 = &qword_1007B51D0;
        v54 = v51;
      }

      else
      {
        v56 = v68;
        ProductTopLockup.PrimaryBanner.hideCriteria.getter();
        (*(v44 + 8))(v51, v43);
        v57 = type metadata accessor for HideCriteria();
        v58 = *(v57 - 8);
        if ((*(v58 + 48))(v56, 1, v57) != 1)
        {
          v59 = HideCriteria.isHidden.getter();
          (*(v58 + 8))(v56, v57);
          v48 = v59 ^ 1;
          goto LABEL_10;
        }

        v52 = &unk_100973B10;
        v53 = &qword_1007B5208;
        v54 = v56;
      }

      sub_10002B894(v54, v52, v53);
      v48 = 1;
    }

LABEL_10:
    if (ProductTopLockup.uber.getter() && (, ((ProductTopLockup.wantsInlineUberPresentationStyle.getter() | v48) & 1) == 0))
    {
      if (qword_10096D780 != -1)
      {
        swift_once();
      }

      v61 = qword_1009CF690;
    }

    else
    {
      if (ProductTopLockup.uber.getter())
      {

        v60 = 0.0;
LABEL_22:
        sub_10002A400(v87, v87[3]);
        v64 = v85;
        PageGrid.componentMeasuringSize(spanning:)();
        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        Measurable.measuredSize(fitting:in:)();
        v66 = v65;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v72(v64, v71);
        v55 = v60 + v66;
        sub_10002B894(v49, &qword_100973AC0, &qword_1007B51D0);
        sub_100007000(v87);
        return v55;
      }

      v60 = 0.0;
      if (v48)
      {
        goto LABEL_22;
      }

      if (qword_10096D788 != -1)
      {
        swift_once();
      }

      v61 = qword_1009CF6B8;
    }

    sub_10002A400(v61, v61[3]);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v62 = v86;
    AnyDimension.value(with:)();
    v60 = v63;

    goto LABEL_22;
  }

  return 0.0;
}

uint64_t sub_100490994(void (*a1)(void *__return_ptr, char *))
{
  v12 = a1;
  v3 = type metadata accessor for ProductTopLockup.PrimaryBanner();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100973AC0, &qword_1007B51D0);
  __chkstk_darwin(v7 - 8);
  v9 = v11 - v8;
  sub_100031660(v1, v11 - v8, &qword_100973AC0, &qword_1007B51D0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(v11, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v11[0];
  }

  return result;
}

void sub_100490B80(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProductTopLockup();
  sub_100496F64(&qword_100973AE8, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v12)
  {
    v4 = sub_10048FF00(a1, a2);
    v5 = ProductTopLockup.uber.getter();
    sub_100496188(v5, v4);

    if (ProductTopLockup.wantsInlineUberPresentationStyle.getter() & 1) != 0 && (swift_getKeyPath(), ItemLayoutContext.subscript.getter(), , v6 = UITraitCollection.isSizeClassRegular.getter(), v12, (v6) && (swift_getKeyPath(), ItemLayoutContext.subscript.getter(), , v7 = UITraitCollection.prefersAccessibilityLayouts.getter(), v12, (v7))
    {
      sub_100495A34();
      if (qword_10096E6C0 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for StaticDimension();
      sub_1000056A8(v8, qword_1009D2460);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      type metadata accessor for TraitEnvironmentPlaceholder();
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007B0B70;
      *(v9 + 32) = v12;
      v10 = v12;
      v11 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
      dispatch thunk of AnyDimension.rawValue(in:)();
    }

    else
    {
    }
  }
}

uint64_t sub_100490E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, double a4@<X4>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v8 = v7;
  v150 = a4;
  v151 = a2;
  v152 = a5;
  v13 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v13 - 8);
  v149 = &v124 - v14;
  v148 = type metadata accessor for OfferButtonSubtitlePosition();
  v143 = *(v148 - 8);
  __chkstk_darwin(v148);
  v145 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v124 - v16;
  v153 = type metadata accessor for OfferButtonMetrics();
  v142 = *(v153 - 8);
  __chkstk_darwin(v153);
  v141 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  __chkstk_darwin(v140);
  v19 = (&v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v158 = &v124 - v21;
  v156 = type metadata accessor for LabelPlaceholderCompatibility();
  v157 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10002849C(&qword_100973AC0, &qword_1007B51D0);
  __chkstk_darwin(v23 - 8);
  v25 = &v124 - v24;
  v154 = type metadata accessor for PageGrid();
  v26 = *(v154 - 8);
  __chkstk_darwin(v154);
  v28 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v159 = v28;
  ItemLayoutContext.subscript.getter();

  v29 = a1;
  ProductTopLockup.primaryBanner(for:)();
  v151 = v8;
  v160 = v8;
  v161 = a1;
  v162 = a3;
  v163 = v150;
  v30 = COERCE_DOUBLE(sub_100490994(sub_100496EDC));
  LOBYTE(a1) = v31;
  sub_10002B894(v25, &qword_100973AC0, &qword_1007B51D0);
  if (a1)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v30;
  }

  v33 = sub_100495EA8();
  if (ProductTopLockup.wantsInlineUberPresentationStyle.getter())
  {
    v130 = v26;
    v129 = v29;
    ProductTopLockup.title.getter();
    if (qword_10096D708 != -1)
    {
      swift_once();
    }

    v34 = sub_10002849C(&unk_100980410, &unk_1007CCF30);
    sub_1000056A8(v34, qword_1009CF548);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    *&v165 = v172;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    if (qword_10096D880 != -1)
    {
      swift_once();
    }

    v35 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
    sub_1000056A8(v35, qword_1009CF9D0);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v171 = v172;
    v139 = v35;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v36 = type metadata accessor for Feature();
    v173 = v36;
    v137 = sub_100496F64(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v174 = v137;
    v37 = sub_1000056E0(&v172);
    v38 = *(v36 - 8);
    v39 = *(v38 + 104);
    v136 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v138 = v36;
    v135 = v39;
    v134 = v38 + 104;
    v39(v37);
    isFeatureEnabled(_:)();
    sub_100007000(&v172);
    v40 = v155;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v41 = *(v157 + 8);
    v157 += 8;
    v133 = v41;
    v41(v40, v156);
    PageGrid.componentMeasuringSize(spanning:)();
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    sub_100079F24();
    swift_unknownObjectRelease();
    v45 = a3;
    if (qword_10096D6D8 != -1)
    {
      swift_once();
    }

    v46 = v140;
    v47 = sub_1000056A8(v140, qword_1009CF4E8);
    v48 = v158;
    sub_10049700C(v47, v158, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v150 = a7;
    *(v48 + 32) = a6;
    *(v48 + 40) = a7;
    *(v48 + 8) = left;
    *(v48 + 16) = bottom;
    v49 = a6;
    *(v48 + 24) = right;
    *v48 = 0;
    v169 = &type metadata for CGFloat;
    v170 = &protocol witness table for CGFloat;
    *&v168 = v32;
    v50 = v46[15];
    sub_100007000((v48 + v50));
    sub_100005A38(&v168, v48 + v50);
    v169 = &type metadata for CGFloat;
    v170 = &protocol witness table for CGFloat;
    *&v168 = v33;
    v51 = v46[16];
    sub_100007000((v48 + v51));
    sub_100005A38(&v168, v48 + v51);
    PageGrid.componentMeasuringSize(spanning:)();
    v53 = v52;
    v55 = v54;
    v56 = sub_100079F24();
    swift_getObjectType();
    v57 = sub_100430530(&v172, v48, v56, v53, v55);
    swift_unknownObjectRelease();
    if (v57)
    {
      PageGrid.componentMeasuringSize(spanning:)();
      sub_100079F24();
      swift_unknownObjectRelease();
      sub_10049700C(v47, v19, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
      v58 = v150;
      v19[4] = v49;
      v19[5] = v58;
      v19[1] = left;
      v19[2] = bottom;
      v19[3] = right;
      *v19 = 0.0;
      v169 = &type metadata for CGFloat;
      v170 = &protocol witness table for CGFloat;
      *&v168 = v32;
      v59 = v46[15];
      sub_100007000((v19 + v59));
      sub_100005A38(&v168, v19 + v59);
      v169 = &type metadata for CGFloat;
      v170 = &protocol witness table for CGFloat;
      *&v168 = v33;
      v60 = v46[16];
      sub_100007000((v19 + v60));
      sub_100005A38(&v168, v19 + v60);
      if (qword_10096D7F8 != -1)
      {
        swift_once();
      }

      v61 = sub_10002849C(&qword_100979010, qword_1007BE140);
      v62 = sub_1000056A8(v61, qword_1009CF838);
      v63 = *(*(v61 - 8) + 24);
      v63(v19 + v46[7], v62, v61);
      if (qword_10096D7E8 != -1)
      {
        swift_once();
      }

      v64 = sub_1000056A8(v61, qword_1009CF808);
      v63(v19 + v46[6], v64, v61);
      if (qword_10096D810 != -1)
      {
        swift_once();
      }

      v65 = sub_1000056A8(v61, qword_1009CF880);
      v63(v19 + v46[8], v65, v61);
      if (qword_10096D7B8 != -1)
      {
        swift_once();
      }

      v66 = sub_10002849C(&unk_100980420, &qword_1007E0730);
      v67 = sub_1000056A8(v66, qword_1009CF778);
      (*(*(v66 - 8) + 24))(v19 + v46[13], v67, v66);
      v169 = &type metadata for CGFloat;
      v170 = &protocol witness table for CGFloat;
      *&v168 = 0x401C000000000000;
      v68 = v158;
      sub_100496FAC(v158, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
      v69 = v46[9];
      sub_100007000((v19 + v69));
      sub_100005A38(&v168, v19 + v69);
      sub_100496F00(v19, v68);
      sub_10002A400(&v172, v173);
      if (qword_10096D710 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v34, qword_1009CF560);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v171 = v165;
      Conditional.evaluate(with:)();
      swift_unknownObjectRelease();
      dispatch thunk of LayoutTextView.font.setter();
    }

    if (qword_10096D720 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v34, qword_1009CF590);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v171 = v165;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v70 = v168;
    ProductTopLockup.developerTagline.getter();
    v71 = qword_10096D888;
    v72 = v70;
    if (v71 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v139, qword_1009CF9E8);
    swift_getKeyPath();
    v140 = v45;
    ItemLayoutContext.subscript.getter();

    v171 = v168;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v73 = v138;
    v169 = v138;
    v170 = v137;
    v74 = sub_1000056E0(&v168);
    v135(v74, v136, v73);
    isFeatureEnabled(_:)();
    sub_100007000(&v168);
    v75 = v155;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v133(v75, v156);
    v76 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v77 = LayoutViewPlaceholder.init(representing:)();
    swift_allocObject();
    v78 = LayoutViewPlaceholder.init(representing:)();
    swift_allocObject();
    v79 = LayoutViewPlaceholder.init(representing:)();
    swift_allocObject();
    v151 = LayoutViewPlaceholder.init(representing:)();
    v80 = sub_10032FEB0(0xD000000000000013, 0x80000001007FAB40, 0);
    [v80 size];

    swift_allocObject();
    v127 = LayoutViewPlaceholder.init(representing:)();
    swift_allocObject();
    v126 = LayoutViewPlaceholder.init(representing:)();
    swift_allocObject();
    v124 = LayoutViewPlaceholder.init(representing:)();
    swift_allocObject();
    v125 = LayoutViewPlaceholder.init(representing:)();
    ProductTopLockup.expandedOfferTitles.getter();
    v128 = v72;
    v132 = v77;
    v131 = v78;
    if (v82 == 1 || (v83 = v81, , !v83))
    {
      v84 = v79;
      v167 = 0;
      v166 = 0u;
      v165 = 0u;
      v90 = v158;
    }

    else
    {
      v84 = v79;
      sub_1000367E8();
      if (qword_10096DED8 != -1)
      {
        swift_once();
      }

      v85 = type metadata accessor for FontUseCase();
      sub_1000056A8(v85, qword_1009D0C08);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v86 = v165;
      static UIFont.preferredFont(forUseWith:compatibleWith:)();

      if (qword_10096D8A0 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v139, qword_1009CFA30);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v164 = v165;
      Conditional.evaluate(with:)();
      swift_unknownObjectRelease();
      v87 = v138;
      *(&v166 + 1) = v138;
      v167 = v137;
      v88 = sub_1000056E0(&v165);
      v135(v88, v136, v87);
      isFeatureEnabled(_:)();
      sub_100007000(&v165);
      v89 = v155;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v133(v89, v156);
      v90 = v158;
      v77 = v132;
      v78 = v131;
    }

    v96 = type metadata accessor for ProductLockupInlineUberLayout(0);
    v97 = v152;
    v152[3] = v96;
    v97[4] = sub_100496F64(&qword_100987128, type metadata accessor for ProductLockupInlineUberLayout, &protocol conformance descriptor for ProductLockupInlineUberLayout);
    v98 = sub_1000056E0(v97);
    sub_10049700C(v90, v98, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v99 = (v98 + v96[5]);
    v99[3] = v76;
    v99[4] = &protocol witness table for LayoutViewPlaceholder;
    *v99 = v151;
    v100 = (v98 + v96[6]);
    v100[3] = v76;
    v100[4] = &protocol witness table for LayoutViewPlaceholder;
    *v100 = v78;
    v101 = (v98 + v96[7]);
    v101[3] = v76;
    v101[4] = &protocol witness table for LayoutViewPlaceholder;
    *v101 = v84;
    v102 = (v98 + v96[10]);
    v102[3] = v76;
    v102[4] = &protocol witness table for LayoutViewPlaceholder;
    *v102 = v77;
    swift_allocObject();

    v157 = v84;

    v103 = LayoutViewPlaceholder.init(representing:)();
    v104 = (v98 + v96[8]);
    v104[3] = v76;
    v104[4] = &protocol witness table for LayoutViewPlaceholder;
    *v104 = v103;
    sub_10002C0AC(&v172, v98 + v96[9]);
    sub_10002C0AC(&v168, v98 + v96[11]);
    v105 = v98 + v96[12];
    *(v105 + 4) = 0;
    *v105 = 0u;
    *(v105 + 1) = 0u;
    if (qword_10096ECE8 != -1)
    {
      swift_once();
    }

    v106 = v153;
    v107 = sub_1000056A8(v153, qword_1009D32F8);
    v108 = v142;
    v109 = v141;
    (*(v142 + 16))(v141, v107, v106);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v110 = v143;
    v111 = v148;
    (*(v143 + 104))(v145, enum case for OfferButtonSubtitlePosition.below(_:), v148);
    (*(v110 + 56))(v149, 1, 1, v111);
    sub_100496F64(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v112 = v144;
    AccessibilityConditional.init(value:axValue:)();
    OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();
    swift_unknownObjectRelease();
    (*(v146 + 8))(v112, v147);
    (*(v108 + 8))(v109, v153);
    swift_allocObject();
    v113 = LayoutViewPlaceholder.init(representing:)();
    v114 = (v98 + v96[13]);
    v114[3] = v76;
    v114[4] = &protocol witness table for LayoutViewPlaceholder;
    *v114 = v113;
    sub_100031660(&v165, v98 + v96[14], &unk_10097E890, qword_1007B4270);
    v115 = v98 + v96[15];
    *(v115 + 4) = 0;
    *v115 = 0u;
    *(v115 + 1) = 0u;
    v116 = (v98 + v96[16]);
    v116[3] = v76;
    v116[4] = &protocol witness table for LayoutViewPlaceholder;
    *v116 = v127;
    v117 = (v98 + v96[17]);
    v117[3] = v76;
    v117[4] = &protocol witness table for LayoutViewPlaceholder;
    *v117 = v126;
    v118 = (v98 + v96[18]);
    v118[3] = v76;
    v118[4] = &protocol witness table for LayoutViewPlaceholder;
    *v118 = v124;
    v119 = (v98 + v96[19]);
    v119[3] = v76;
    v119[4] = &protocol witness table for LayoutViewPlaceholder;

    *v119 = v125;
    sub_10002B894(&v165, &unk_10097E890, qword_1007B4270);
    sub_100007000(&v168);
    sub_100496FAC(v158, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    (*(v130 + 8))(v159, v154);
    return sub_100007000(&v172);
  }

  else
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v91 = v172;
    v92 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v92)
    {
      v93 = type metadata accessor for ProductLockupAccessibilityLayout(0);
      v94 = v152;
      v152[3] = v93;
      v94[4] = sub_100496F64(&qword_100987120, type metadata accessor for ProductLockupAccessibilityLayout, &protocol conformance descriptor for ProductLockupAccessibilityLayout);
      v95 = sub_1000056E0(v94);
      sub_10049288C(v29, a3, v95, a6, a7, v32, v33);
    }

    else
    {
      v121 = type metadata accessor for ProductLockupLayout(0);
      v122 = v152;
      v152[3] = v121;
      v122[4] = sub_100496F64(&qword_100987118, type metadata accessor for ProductLockupLayout, &protocol conformance descriptor for ProductLockupLayout);
      v123 = sub_1000056E0(v122);
      sub_1004942C4(v29, a3, v123, a6, a7, v32, v33);
    }

    return (*(v26 + 8))(v159, v154);
  }
}

uint64_t sub_100492710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, double *a4@<X8>)
{
  v8 = sub_10002849C(&qword_100973AC0, &qword_1007B51D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for ProductTopLockup.PrimaryBanner();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = ProductTopLockup.uber.getter();
  if (v13)
  {
  }

  v14 = ProductTopLockup.wantsInlineUberPresentationStyle.getter();
  v15 = sub_1004965F8(v10, v13 != 0, v14 & 1, a2, a3);
  result = sub_10002B894(v10, &qword_100973AC0, &qword_1007B51D0);
  *a4 = v15;
  return result;
}

uint64_t sub_10049288C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v164 = a1;
  v144 = a3;
  v12 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v12 - 8);
  v142 = &v124 - v13;
  v140 = type metadata accessor for OfferButtonSubtitlePosition();
  v134 = *(v140 - 8);
  __chkstk_darwin(v140);
  v136 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v138 = *(v15 - 8);
  v139 = v15;
  __chkstk_darwin(v15);
  v135 = &v124 - v16;
  v137 = type metadata accessor for OfferButtonMetrics();
  v143 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v151 = &v124 - v19;
  v131 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  __chkstk_darwin(v131);
  v153 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for OfferTitleType();
  v125 = *(v129 - 8);
  __chkstk_darwin(v129);
  v124 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_10002849C(&unk_100973B20, &qword_1007B5210);
  v141 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = &v124 - v22;
  v152 = type metadata accessor for LabelPlaceholderCompatibility();
  v165 = *(v152 - 8);
  __chkstk_darwin(v152);
  *&v163 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FontUseCase();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000367E8();
  if (qword_10096D748 != -1)
  {
    swift_once();
  }

  v29 = sub_10002849C(&unk_100970ED0, &unk_1007B2390);
  sub_1000056A8(v29, qword_1009CF5E8);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v182[0] = v183[0];
  v146 = v29;
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v30 = v183[0];
  v157 = v28;
  v31 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v32 = *(v25 + 8);
  v147 = v27;
  v148 = v25 + 8;
  v158 = v24;
  v145 = v32;
  v32(v27, v24);
  ProductTopLockup.title.getter();
  v33 = qword_10096D878;
  v34 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  sub_1000056A8(v35, qword_1009CF9B8);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v181[0] = v183[0];
  v156 = v35;
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v36 = type metadata accessor for Feature();
  v183[3] = v36;
  *&v162 = sub_100496F64(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v183[4] = v162;
  v37 = sub_1000056E0(v183);
  v38 = *(v36 - 8);
  v39 = *(v38 + 104);
  v161 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v155 = v36;
  v159 = v38 + 104;
  v160 = v39;
  v39(v37);
  LOBYTE(v36) = isFeatureEnabled(_:)();
  sub_100007000(v183);
  LOBYTE(v123) = v36 & 1;
  v40 = v163;
  v132 = v34;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v41 = *(v165 + 8);
  v165 += 8;
  v154 = v41;
  v41(v40, v152);
  if (qword_10096D758 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v146, qword_1009CF618);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v181[0] = v182[0];
  v42 = v147;
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v43 = v182[0];
  v44 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v145(v42, v158);
  v130 = ProductTopLockup.developerTagline.getter();
  v45 = qword_10096D888;
  v46 = v44;
  if (v45 != -1)
  {
    swift_once();
  }

  v128 = sub_1000056A8(v156, qword_1009CF9E8);
  swift_getKeyPath();
  v127 = a2;
  ItemLayoutContext.subscript.getter();

  *&v178 = v182[0];
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v47 = v155;
  v182[3] = v155;
  v182[4] = v162;
  v48 = sub_1000056E0(v182);
  v160(v48, v161, v47);
  isFeatureEnabled(_:)();
  sub_100007000(v182);
  v49 = v163;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v50 = v152;
  v51 = v154;
  v154(v49, v152);
  v130 = ProductTopLockup.developerName.getter();
  v126 = v52;
  swift_getKeyPath();
  v53 = v46;
  ItemLayoutContext.subscript.getter();

  v174 = v181[0];
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v181[3] = v47;
  v181[4] = v162;
  v54 = sub_1000056E0(v181);
  v160(v54, v161, v47);
  v55 = isFeatureEnabled(_:)();
  sub_100007000(v181);
  LOBYTE(v123) = v55 & 1;
  v130 = v53;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v56 = v49;
  v57 = v50;
  v51(v56, v50);
  ProductTopLockup.tertiaryTitle.getter();
  if (v58)
  {
    if (qword_10096D768 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v146, qword_1009CF648);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v174 = v178;
    v59 = v147;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v60 = v178;
    v61 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    v145(v59, v158);
    v62 = qword_10096D890;
    v63 = v61;
    if (v62 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v156, qword_1009CFA00);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    *&v171 = v178;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v64 = v155;
    *(&v179 + 1) = v155;
    v180 = v162;
    v65 = sub_1000056E0(&v178);
    v160(v65, v161, v64);
    LOBYTE(v64) = isFeatureEnabled(_:)();
    sub_100007000(&v178);
    LOBYTE(v123) = v64 & 1;
    v66 = v163;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();

    v154(v66, v50);
  }

  else
  {
    v180 = 0;
    v178 = 0u;
    v179 = 0u;
  }

  v67 = v129;
  sub_1000D71CC();
  ItemLayoutContext.typedState<A>(as:)();
  swift_getKeyPath();
  StateLens<A>.subscript.getter();

  v68 = v174;
  swift_getKeyPath();
  StateLens<A>.subscript.getter();

  v69 = v175;
  if (v175)
  {
    v70 = v158;
    if (v68)
    {

      goto LABEL_31;
    }
  }

  else
  {
    v70 = v158;
  }

  v71 = ProductTopLockup.offerSubtitlesOverride.getter();
  v72 = v124;
  v73 = v125;
  if (v71)
  {
    v74 = v71;
  }

  else
  {
    if (!ProductTopLockup.offerDisplayProperties.getter())
    {
LABEL_29:
      v69 = 0;
      goto LABEL_30;
    }

    v74 = OfferDisplayProperties.subtitles.getter();
  }

  (*(v73 + 104))(v72, enum case for OfferTitleType.standard(_:), v67);
  if (!*(v74 + 16) || (v75 = sub_1003D7650(v72), (v76 & 1) == 0))
  {

    (*(v73 + 8))(v72, v67);
    goto LABEL_29;
  }

  v77 = (*(v74 + 56) + 16 * v75);
  v78 = v72;
  v148 = *v77;
  v79 = v73;
  v69 = v77[1];
  v80 = *(v79 + 8);

  v80(v78, v67);

LABEL_30:
  v57 = v152;
LABEL_31:
  if (qword_10096E110 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v70, qword_1009D12B0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v81 = v174;
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  if (qword_10096D8A8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v156, qword_1009CFA48);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  *&v168 = v174;
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v82 = v155;
  v176 = v155;
  v177 = v162;
  v83 = sub_1000056E0(&v174);
  v160(v83, v161, v82);
  LOBYTE(v82) = isFeatureEnabled(_:)();
  sub_100007000(&v174);
  LOBYTE(v123) = v82 & 1;
  v84 = v163;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v154(v84, v57);
  sub_10002A400(&v174, v176);
  if (v69)
  {
  }

  dispatch thunk of LayoutView.isHidden.setter();
  ProductTopLockup.expandedOfferTitles.getter();
  if (v85 == 1 || (v86 = v85, , !v86))
  {
    v173 = 0;
    v171 = 0u;
    v172 = 0u;
  }

  else
  {
    if (qword_10096DEC8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v158, qword_1009D0BD8);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v87 = v171;
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    if (qword_10096D898 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v156, qword_1009CFA18);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v167 = v171;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v88 = v155;
    *(&v172 + 1) = v155;
    v173 = v162;
    v89 = sub_1000056E0(&v171);
    v160(v89, v161, v88);
    LOBYTE(v88) = isFeatureEnabled(_:)();
    sub_100007000(&v171);
    LOBYTE(v123) = v88 & 1;
    v90 = v163;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v154(v90, v57);
  }

  ProductTopLockup.expandedOfferTitles.getter();
  if (v92 == 1 || (v93 = v91, , !v93))
  {
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
  }

  else
  {
    if (qword_10096DED0 != -1)
    {
      swift_once();
    }

    v94 = v57;
    sub_1000056A8(v158, qword_1009D0BF0);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v95 = v168;
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    if (qword_10096D8A0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v156, qword_1009CFA30);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v166 = v168;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v96 = v155;
    *(&v169 + 1) = v155;
    v170 = v162;
    v97 = sub_1000056E0(&v168);
    v160(v97, v161, v96);
    v98 = isFeatureEnabled(_:)();
    sub_100007000(&v168);
    LOBYTE(v123) = v98 & 1;
    v99 = v163;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v154(v99, v94);
  }

  v100 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v165 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v164 = LayoutViewPlaceholder.init(representing:)();
  v101 = *&UIEdgeInsetsZero.top;
  v162 = *&UIEdgeInsetsZero.bottom;
  v163 = v101;
  if (qword_10096D6E0 != -1)
  {
    swift_once();
  }

  v102 = sub_1000056A8(v131, qword_1009CF500);
  __chkstk_darwin(v102);
  *(&v124 - 8) = a4;
  *(&v124 - 7) = a5;
  *(&v124 - 6) = a6;
  *(&v124 - 5) = a7;
  v103 = v162;
  *(&v124 - 2) = v163;
  v123 = v103;
  sub_100496F64(&qword_1009856D8, type metadata accessor for ProductLockupAccessibilityLayout.Metrics, &protocol conformance descriptor for ProductLockupAccessibilityLayout.Metrics);
  Copyable.copyWithOverrides(in:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v104 = v167;
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v105 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v105 = qword_100991028;
  }

  v106 = v137;
  v107 = sub_1000056A8(v137, v105);
  v108 = v143;
  v109 = v133;
  (*(v143 + 16))(v133, v107, v106);

  (*(v108 + 32))(v151, v109, v106);
  v110 = *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  *&v163 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics;
  v111 = v144;
  sub_10049700C(v153, v144 + v110, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  swift_allocObject();
  v112 = LayoutViewPlaceholder.init(representing:)();
  *(v111 + 24) = v100;
  *(v111 + 32) = &protocol witness table for LayoutViewPlaceholder;
  *v111 = v112;
  sub_10002C0AC(v183, v111 + 40);
  sub_10002C0AC(v181, v111 + 80);
  sub_10002C0AC(v182, v111 + 120);
  sub_100031660(&v178, v111 + 160, &unk_10097E890, qword_1007B4270);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v113 = v134;
  v114 = v140;
  (*(v134 + 104))(v136, enum case for OfferButtonSubtitlePosition.below(_:), v140);
  (*(v113 + 56))(v142, 1, 1, v114);
  sub_100496F64(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v115 = v135;
  AccessibilityConditional.init(value:axValue:)();
  v116 = v151;
  OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();
  swift_unknownObjectRelease();
  (*(v138 + 8))(v115, v139);
  swift_allocObject();
  v117 = LayoutViewPlaceholder.init(representing:)();
  *(v111 + 224) = v100;
  *(v111 + 232) = &protocol witness table for LayoutViewPlaceholder;
  *(v111 + 200) = v117;
  *(v111 + 240) = 0u;
  *(v111 + 256) = 0u;
  *(v111 + 272) = 0;
  v118 = v176;
  v119 = v177;
  v120 = sub_10002A400(&v174, v176);
  *(v111 + 304) = v118;
  *(v111 + 312) = *(v119 + 8);
  v121 = sub_1000056E0((v111 + 280));
  (*(*(v118 - 8) + 16))(v121, v120, v118);
  sub_100031660(&v171, v111 + 320, &unk_10097E890, qword_1007B4270);
  sub_100031660(&v168, v111 + 360, &unk_10097E890, qword_1007B4270);
  *(v111 + 424) = v100;
  *(v111 + 432) = &protocol witness table for LayoutViewPlaceholder;
  *(v111 + 400) = v165;
  *(v111 + 464) = v100;
  *(v111 + 472) = &protocol witness table for LayoutViewPlaceholder;

  *(v111 + 440) = v164;
  (*(v108 + 8))(v116, v106);
  sub_100496FAC(v153, v163);
  sub_10002B894(&v168, &unk_10097E890, qword_1007B4270);
  sub_10002B894(&v171, &unk_10097E890, qword_1007B4270);
  (*(v141 + 8))(v149, v150);
  sub_10002B894(&v178, &unk_10097E890, qword_1007B4270);
  sub_100007000(v181);
  sub_100007000(v182);
  sub_100007000(v183);
  return sub_100007000(&v174);
}

uint64_t sub_1004942C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v155 = a1;
  v137 = a3;
  v12 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v12 - 8);
  v135 = v125 - v13;
  v134 = type metadata accessor for OfferButtonSubtitlePosition();
  v129 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v132 = *(v15 - 8);
  v133 = v15;
  __chkstk_darwin(v15);
  v130 = v125 - v16;
  v143 = type metadata accessor for OfferButtonMetrics();
  v136 = *(v143 - 8);
  __chkstk_darwin(v143);
  v128 = v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v142 = v125 - v19;
  v20 = type metadata accessor for OfferTitleType();
  v138 = *(v20 - 8);
  v139 = v20;
  __chkstk_darwin(v20);
  v126 = v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LabelPlaceholderCompatibility();
  v23 = *(v22 - 8);
  v153 = v22;
  v154 = v23;
  __chkstk_darwin(v22);
  v149 = v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&unk_100987150, &qword_1007CCF18);
  __chkstk_darwin(v25 - 8);
  v27 = v125 - v26;
  v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
  __chkstk_darwin(v28);
  v30 = v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v125 - v32;
  v34 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v34 - 8) + 56))(v27, 1, 1, v34);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v35 = v179[0];
  sub_10030AEE4(v179[0], v30);
  v156 = a4;
  v157 = a5;
  v158 = a6;
  v159 = a7;
  v36 = *&UIEdgeInsetsZero.bottom;
  v160 = *&UIEdgeInsetsZero.top;
  v161 = v36;
  v162 = v27;
  sub_100496F64(&qword_1009856E8, type metadata accessor for ProductLockupLayout.Metrics, &protocol conformance descriptor for ProductLockupLayout.Metrics);
  Copyable.copyWithOverrides(in:)();

  sub_100496FAC(v30, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10002B894(v27, &unk_100987150, &qword_1007CCF18);
  v150 = ProductTopLockup.title.getter();
  v145 = v37;
  swift_getKeyPath();
  v38 = a2;
  ItemLayoutContext.subscript.getter();

  v177[0] = v179[0];
  v39 = sub_10002849C(&unk_100980410, &unk_1007CCF30);
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  *&v174 = v179[0];
  v40 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v41 = type metadata accessor for Feature();
  v179[3] = v41;
  v147 = sub_100496F64(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v179[4] = v147;
  v42 = sub_1000056E0(v179);
  v43 = *(v41 - 1);
  v44 = *(v43 + 104);
  LODWORD(v152) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v148 = v41;
  v151 = v44;
  v146 = v43 + 104;
  v44(v42);
  isFeatureEnabled(_:)();
  sub_100007000(v179);
  v45 = v149;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v46 = *(v154 + 8);
  v154 += 8;
  v150 = v46;
  v46(v45, v153);
  v125[1] = v28;
  swift_getKeyPath();
  v141 = v38;
  ItemLayoutContext.subscript.getter();

  *&v174 = v177[0];
  v145 = v33;
  v140 = v39;
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v47 = v178[0];
  v144 = ProductTopLockup.developerTagline.getter();
  v127 = v48;
  v49 = qword_10096D888;
  v50 = v47;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = v40;
  v125[3] = sub_1000056A8(v40, qword_1009CF9E8);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  *&v174 = v178[0];
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v53 = v147;
  v52 = v148;
  v178[3] = v148;
  v178[4] = v147;
  v54 = sub_1000056E0(v178);
  (v151)(v54, v152, v52);
  isFeatureEnabled(_:)();
  sub_100007000(v178);
  v55 = v149;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v150(v55, v153);
  v127 = ProductTopLockup.developerName.getter();
  v125[2] = v56;
  swift_getKeyPath();
  v57 = v50;
  ItemLayoutContext.subscript.getter();

  v171[0] = v177[0];
  v144 = v51;
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v177[3] = v52;
  v177[4] = v53;
  v58 = sub_1000056E0(v177);
  (v151)(v58, v152, v52);
  isFeatureEnabled(_:)();
  sub_100007000(v177);
  v127 = v57;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v59 = v153;
  v150(v55, v153);
  ProductTopLockup.tertiaryTitle.getter();
  if (v60)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    *&v167 = v171[0];
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v61 = qword_10096D890;
    v62 = v174;
    if (v61 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v144, qword_1009CFA00);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    *&v167 = v174;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v63 = v148;
    *(&v175 + 1) = v148;
    v176 = v147;
    v64 = sub_1000056E0(&v174);
    (v151)(v64, v152, v63);
    isFeatureEnabled(_:)();
    sub_100007000(&v174);
    v65 = v149;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();

    v59 = v153;
    v150(v65, v153);
  }

  else
  {
    v176 = 0;
    v174 = 0u;
    v175 = 0u;
  }

  v66 = ProductTopLockup.offerSubtitlesOverride.getter();
  v67 = v138;
  v68 = v139;
  v69 = v126;
  if (v66)
  {
    v70 = v66;
    v71 = v144;
  }

  else
  {
    v72 = ProductTopLockup.offerDisplayProperties.getter();
    v71 = v144;
    if (!v72)
    {
      v154 = 0;
      goto LABEL_16;
    }

    v70 = OfferDisplayProperties.subtitles.getter();
    v67 = v138;
  }

  (*(v67 + 104))(v69, enum case for OfferTitleType.standard(_:), v68);
  if (*(v70 + 16) && (v73 = sub_1003D7650(v69), (v74 & 1) != 0))
  {
    v75 = (*(v70 + 56) + 16 * v73);
    v76 = v75[1];
    v154 = *v75;
    v77 = *(v67 + 8);

    v77(v69, v139);

    v72 = v76;
  }

  else
  {

    (*(v67 + 8))(v69, v68);
    v154 = 0;
    v72 = 0;
  }

LABEL_16:
  v78 = qword_10096D730;
  v141 = v72;

  if (v78 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v140, qword_1009CF5C0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  *&v164 = v171[0];
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  if (qword_10096D8A8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v71, qword_1009CFA48);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v170 = v171[0];
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v79 = v148;
  v172 = v148;
  v173 = v147;
  v80 = sub_1000056E0(v171);
  (v151)(v80, v152, v79);
  isFeatureEnabled(_:)();
  sub_100007000(v171);
  v81 = v149;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v150(v81, v59);
  sub_10002A400(v171, v172);
  dispatch thunk of LayoutView.isHidden.setter();
  ProductTopLockup.expandedOfferTitles.getter();
  if (v82 == 1 || (v83 = v82, , !v83))
  {
    v169 = 0;
    v167 = 0u;
    v168 = 0u;
  }

  else
  {
    sub_1000367E8();
    if (qword_10096DEC8 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for FontUseCase();
    sub_1000056A8(v84, qword_1009D0BD8);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v85 = v167;
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    if (qword_10096D898 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v144, qword_1009CFA18);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v170 = v167;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v86 = v148;
    *(&v168 + 1) = v148;
    v169 = v147;
    v87 = sub_1000056E0(&v167);
    (v151)(v87, v152, v86);
    isFeatureEnabled(_:)();
    sub_100007000(&v167);
    v88 = v149;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v150(v88, v153);
  }

  ProductTopLockup.expandedOfferTitles.getter();
  if (v90 == 1 || (v91 = v89, , !v91))
  {
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
  }

  else
  {
    sub_1000367E8();
    if (qword_10096DED0 != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for FontUseCase();
    sub_1000056A8(v92, qword_1009D0BF0);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v93 = v164;
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    if (qword_10096D8A0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v144, qword_1009CFA30);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v163 = v164;
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    v94 = v148;
    *(&v165 + 1) = v148;
    v166 = v147;
    v95 = sub_1000056E0(&v164);
    (v151)(v95, v152, v94);
    isFeatureEnabled(_:)();
    sub_100007000(&v164);
    v96 = v149;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v150(v96, v153);
  }

  v97 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v153 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v152 = LayoutViewPlaceholder.init(representing:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v98 = v170;
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v99 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v99 = qword_100991028;
  }

  v100 = v143;
  v101 = sub_1000056A8(v143, v99);
  v102 = v136;
  v103 = v128;
  (*(v136 + 16))(v128, v101, v100);

  (*(v102 + 32))(v142, v103, v100);
  v151 = type metadata accessor for ProductLockupLayout.Metrics;
  v104 = v137;
  sub_10049700C(v145, v137, type metadata accessor for ProductLockupLayout.Metrics);
  swift_allocObject();
  v105 = LayoutViewPlaceholder.init(representing:)();
  v106 = type metadata accessor for ProductLockupLayout(0);
  v107 = (v104 + v106[5]);
  v107[3] = v97;
  v107[4] = &protocol witness table for LayoutViewPlaceholder;
  *v107 = v105;
  sub_10002C0AC(v179, v104 + v106[6]);
  sub_10002C0AC(v177, v104 + v106[7]);
  sub_10002C0AC(v178, v104 + v106[8]);
  sub_100031660(&v174, v104 + v106[9], &unk_10097E890, qword_1007B4270);
  v108 = v104 + v106[10];
  *(v108 + 32) = 0;
  *v108 = 0u;
  *(v108 + 16) = 0u;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v109 = v129;
  v110 = v134;
  (*(v129 + 104))(v131, enum case for OfferButtonSubtitlePosition.below(_:), v134);
  (*(v109 + 56))(v135, 1, 1, v110);
  sub_100496F64(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v111 = v130;
  AccessibilityConditional.init(value:axValue:)();
  v112 = v142;
  OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();
  swift_unknownObjectRelease();
  (*(v132 + 8))(v111, v133);
  swift_allocObject();
  v113 = LayoutViewPlaceholder.init(representing:)();
  v114 = (v104 + v106[11]);
  v114[3] = v97;
  v114[4] = &protocol witness table for LayoutViewPlaceholder;
  *v114 = v113;
  v115 = v172;
  v116 = v173;
  v117 = sub_10002A400(v171, v172);
  v118 = (v104 + v106[12]);
  v118[3] = v115;
  v118[4] = *(v116 + 1);
  v119 = sub_1000056E0(v118);
  (*(*(v115 - 8) + 16))(v119, v117, v115);
  sub_100031660(&v167, v104 + v106[13], &unk_10097E890, qword_1007B4270);
  sub_100031660(&v164, v104 + v106[14], &unk_10097E890, qword_1007B4270);
  LOBYTE(v115) = ProductTopLockup.hasExpandedOffer.getter();
  v120 = (v104 + v106[17]);
  v120[3] = v97;
  v120[4] = &protocol witness table for LayoutViewPlaceholder;
  *v120 = v153;
  v121 = (v104 + v106[18]);
  v121[3] = v97;
  v121[4] = &protocol witness table for LayoutViewPlaceholder;

  *v121 = v152;
  (*(v102 + 8))(v112, v143);
  sub_10002B894(&v164, &unk_10097E890, qword_1007B4270);
  sub_10002B894(&v167, &unk_10097E890, qword_1007B4270);
  sub_10002B894(&v174, &unk_10097E890, qword_1007B4270);
  sub_100007000(v177);
  sub_100007000(v178);
  sub_100007000(v179);
  sub_100496FAC(v145, v151);
  *(v104 + v106[15]) = v115 & 1;
  v122 = (v104 + v106[16]);
  v123 = v141;
  *v122 = v154;
  v122[1] = v123;
  return sub_100007000(v171);
}

double sub_100495A34()
{
  v0 = sub_10002849C(&unk_100987160, qword_1007D53C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v33 - v1;
  v3 = type metadata accessor for ProductPageIconDimension();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v33 - v8;
  v9 = type metadata accessor for PageGrid();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductTopLockup();
  sub_100496F64(&qword_100973AE8, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v38)
  {
    return 0.0;
  }

  v34 = v4;
  v35 = v2;
  v36 = v3;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v33 = v38;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.containerWidth.getter();
  v14 = v13;
  v15 = *(v10 + 8);
  v15(v12, v9);
  JUScreenClassGetPortraitWidth();
  v17 = v16;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.containerWidth.getter();
  v19 = v18;
  v15(v12, v9);
  JUScreenClassGetPortraitWidth();
  v21 = v20;
  if (ProductTopLockup.wantsInlineUberPresentationStyle.getter())
  {
    v22 = v34;
    v23 = &enum case for ProductPageIconDimension.large(_:);
    if (v17 >= v14)
    {
      v23 = &enum case for ProductPageIconDimension.extraSmall(_:);
    }

    v24 = v36;
    (*(v34 + 104))(v6, *v23, v36);
    v25 = v37;
    (*(v22 + 32))(v37, v6, v24);
    v26 = v35;
    v27 = v33;
  }

  else
  {
    v27 = v33;
    v29 = UITraitCollection.isSizeClassRegular.getter();
    v26 = v35;
    v24 = v36;
    v22 = v34;
    v25 = v37;
    if (v29 & 1) != 0 && (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      v30 = &enum case for ProductPageIconDimension.extraLargeAccessibility(_:);
    }

    else if ((UITraitCollection.isSizeClassRegular.getter() & 1) != 0 && v21 < v19)
    {
      v30 = &enum case for ProductPageIconDimension.extraLarge(_:);
    }

    else if (v17 < v14 || (UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0)
    {
      v30 = &enum case for ProductPageIconDimension.medium(_:);
    }

    else
    {
      v30 = &enum case for ProductPageIconDimension.small(_:);
    }

    (*(v22 + 104))(v25, *v30, v24);
  }

  ProductTopLockup.iconStyle.getter();
  ProductPageIconDimension.iconSize(for:)();
  v28 = v31;

  sub_10002B894(v26, &unk_100987160, qword_1007D53C0);
  (*(v22 + 8))(v25, v24);
  return v28;
}

double sub_100495EA8()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v4 = ProductTopLockup.secondaryBanner.getter();
  if (v4)
  {
    v5 = v4;
    v6 = 0.0;
    if ((ProductTopLockup.wantsInlineUberPresentationStyle.getter() & 1) == 0)
    {
      v28 = v0;
      if (qword_10096D798 != -1)
      {
        swift_once();
      }

      sub_10002A400(qword_1009CF708, qword_1009CF720);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v7 = *&v29[0];
      AnyDimension.value(with:)();
      v6 = v8;

      v0 = v28;
    }

    v9 = ProductTopLockup.wantsInlineUberPresentationStyle.getter();
    v10 = Banner.leadingArtwork.getter();
    if (v10)
    {
    }

    Banner.buttonActions.getter();
    sub_10002849C(&qword_10096F9A8, &unk_1007DB3B0);
    v11 = Array.isNotEmpty.getter();

    if (v9)
    {
      _Q3 = xmmword_1007CFA70;
      v13 = 17.0;
      v14 = 0.0;
      v15 = 0.0;
    }

    else
    {
      v14 = 22.0;
      if (v10)
      {
        v14 = 15.0;
      }

      if (v11)
      {
        v15 = 15.0;
      }

      else
      {
        v15 = v14;
      }

      v13 = 9.0;
      if (v11)
      {
        v17 = 12.0;
      }

      else
      {
        v17 = 9.0;
      }

      __asm { FMOV            V3.2D, #15.0 }

      *&_Q3 = v17;
    }

    v29[0] = _Q3;
    v29[1] = _Q3;
    v30 = v13;
    v31 = v14;
    v32 = v13;
    v33 = v15;
    v34 = xmmword_1007B0C20;
    v35 = xmmword_1007B0C30;
    v22 = sub_100079F24();
    PageGrid.componentMeasuringSize(spanning:)();
    sub_10063EAAC(v5, v29, v22, v6, 0.0, 0.0, 0.0, v23, v24);
    v16 = v25;

    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0.0;
  }

  (*(v1 + 8))(v3, v0);
  return v16;
}

double sub_100496188(uint64_t a1, double a2)
{
  v4 = type metadata accessor for PageGrid();
  v42 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v35[-v8];
  v10 = type metadata accessor for Uber.Style();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10002849C(&unk_100973B20, &qword_1007B5210);
  __chkstk_darwin(v14);
  v17 = &v35[-v16];
  if (!a1)
  {
    return 0.0;
  }

  v37 = v15;
  v39 = v11;
  v40 = v10;
  swift_getKeyPath();

  ItemLayoutContext.subscript.getter();

  v18 = v43;
  v19 = UITraitCollection.isSizeClassCompact.getter();

  if (v19)
  {
    v20 = a2;
  }

  else
  {
    v20 = 0.0;
  }

  sub_1000D71CC();
  ItemLayoutContext.typedState<A>(as:)();
  v41 = a1;
  Uber.style.getter();
  swift_getKeyPath();
  v38 = v14;
  StateLens<A>.subscript.getter();

  v36 = v43 ^ 1;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.containerHeight.getter();
  v22 = v21;
  v23 = *(v42 + 8);
  v23(v9, v4);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v24 = v43;
  v25 = UITraitCollection.isSizeClassCompact.getter();

  if (v25)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.safeAreaInsets.getter();
    v27 = v26;
    v23(v9, v4);
    v22 = v22 - v27;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v28 = v43;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.containerWidth.getter();
  v30 = v29;
  v23(v6, v4);
  v31 = v22 - v20;
  if (v22 - v20 < 0.0)
  {
    v31 = 0.0;
  }

  sub_1001158BC(v28, v13, v36 & 1, v30, *&v31, 0);
  v33 = v32;

  (*(v39 + 8))(v13, v40);
  (*(v37 + 8))(v17, v38);
  return v33;
}

double sub_1004965F8(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v70 = a4;
  v65 = a2;
  v7 = type metadata accessor for LabelPlaceholderCompatibility();
  v67 = *(v7 - 8);
  v68 = v7;
  __chkstk_darwin(v7);
  v66 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PageGrid();
  v69 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100973AC0, &qword_1007B51D0);
  __chkstk_darwin(v12 - 8);
  v14 = (v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = v64 - v16;
  sub_100031660(a1, v64 - v16, &qword_100973AC0, &qword_1007B51D0);
  v18 = type metadata accessor for ProductTopLockup.PrimaryBanner();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_2;
  }

  sub_100031660(v17, v14, &qword_100973AC0, &qword_1007B51D0);
  v21 = (*(v19 + 88))(v14, v18);
  if (v21 != enum case for ProductTopLockup.PrimaryBanner.askToBuy(_:))
  {
    if (v21 != enum case for ProductTopLockup.PrimaryBanner.banner(_:))
    {
      (*(v19 + 8))(v14, v18);
LABEL_2:
      sub_10002B894(v17, &qword_100973AC0, &qword_1007B51D0);
      return 0.0;
    }

    v24 = a3;
    (*(v19 + 96))(v14, v18);
    v22 = *v14;
    goto LABEL_8;
  }

  (*(v19 + 96))(v14, v18);
  v22 = *v14;
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v23 = *&v72[0];
  v24 = a3;
  if (ASKBagContract.enableNewATBBannerUI.getter())
  {

LABEL_8:

    sub_10002B894(v17, &qword_100973AC0, &qword_1007B51D0);
    v25 = 0.0;
    if ((v24 & 1) == 0)
    {
      if (qword_10096D790 != -1)
      {
        swift_once();
      }

      sub_10002A400(qword_1009CF6E0, qword_1009CF6F8);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v26 = *&v72[0];
      AnyDimension.value(with:)();
      v25 = v27;
    }

    v28 = Banner.leadingArtwork.getter();
    if (v28)
    {
    }

    Banner.buttonActions.getter();
    sub_10002849C(&qword_10096F9A8, &unk_1007DB3B0);
    v29 = Array.isNotEmpty.getter();

    if (v24)
    {
      _Q3 = xmmword_1007CFA70;
      v31 = 17.0;
      v32 = 0.0;
      v33 = 0.0;
    }

    else
    {
      v32 = 22.0;
      if (v28)
      {
        v32 = 15.0;
      }

      if (v29)
      {
        v33 = 15.0;
      }

      else
      {
        v33 = v32;
      }

      v31 = 9.0;
      if (v29)
      {
        v52 = 12.0;
      }

      else
      {
        v52 = 9.0;
      }

      __asm { FMOV            V3.2D, #15.0 }

      *&_Q3 = v52;
    }

    v72[0] = _Q3;
    v72[1] = _Q3;
    v73 = v31;
    v74 = v32;
    v75 = v31;
    v76 = v33;
    v77 = xmmword_1007B0C20;
    v78 = xmmword_1007B0C30;
    v57 = sub_100079F24();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    v59 = v58;
    v61 = v60;
    (*(v69 + 8))(v11, v9);
    sub_10063EAAC(v22, v72, v57, v25, 0.0, v25, 0.0, v59, v61);
    v20 = v62;
    swift_unknownObjectRelease();

    return v20;
  }

  v64[2] = v23;
  v64[0] = Banner.message.getter();
  v64[1] = v34;
  v35 = a3 | v65;
  v36 = sub_100079F24();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v38 = v37;
  v40 = v39;
  (*(v69 + 8))(v11, v9);
  if (qword_10096DB68 != -1)
  {
    swift_once();
  }

  sub_1002020EC(&unk_100983A28, v85);
  if (v35)
  {
    sub_10002B894(v86, &qword_1009799E0, qword_1007B5950);
    memset(v86, 0, sizeof(v86));
    v87 = 0;
  }

  v70 = v22;
  sub_1000367E8();
  if (qword_10096DE40 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for FontUseCase();
  sub_1000056A8(v41, qword_1009D0A40);
  swift_getObjectType();
  v42 = [v36 traitCollection];
  v43 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  sub_1002020EC(v85, v72);
  v44 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v45 = LayoutViewPlaceholder.init(measureWith:)();
  v80 = v44;
  v81 = &protocol witness table for LayoutViewPlaceholder;
  v79 = v45;
  v46 = type metadata accessor for Feature();
  v71[3] = v46;
  v71[4] = sub_100496F64(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v47 = sub_1000056E0(v71);
  (*(*(v46 - 8) + 104))(v47, enum case for Feature.measurement_with_labelplaceholder(_:), v46);
  v48 = v43;
  isFeatureEnabled(_:)();
  sub_100007000(v71);

  v49 = v66;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v67 + 8))(v49, v68);
  swift_allocObject();
  v50 = LayoutViewPlaceholder.init(measureWith:)();
  v83 = v44;
  v84 = &protocol witness table for LayoutViewPlaceholder;
  v82 = v50;
  sub_1002F83D4(v36, v72, v38, v40);
  v20 = v51;

  swift_unknownObjectRelease();

  sub_100202148(v72);
  sub_10020219C(v85);
  sub_10002B894(v17, &qword_100973AC0, &qword_1007B51D0);
  return v20;
}

uint64_t sub_100496F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100496F64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100496FAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10049700C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_100497074(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_offerButton);
  sub_10006C234(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = sub_10002A400(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_100007000(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 addTarget:v11 action:a2 forControlEvents:64];
  swift_unknownObjectRelease();
  return result;
}

double sub_1004971CC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_offerButton);
  sub_10006C234(a1, v11);
  v3 = v12;
  if (v12)
  {
    v4 = sub_10002A400(v11, v12);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    sub_100007000(v11);
  }

  else
  {
    v9 = 0;
  }

  [v2 removeTarget:v9 action:0 forControlEvents:64];
  swift_unknownObjectRelease();
  return result;
}

id sub_100497318(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_progressView;
  v5 = *&v1[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_progressView];
  if (v5)
  {
    goto LABEL_2;
  }

  v10 = [objc_allocWithZone(type metadata accessor for InstallProgressView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = *&v2[v4];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v2[v4];
  }

  else
  {
    v12 = 0;
  }

  *&v2[v4] = v10;
  v13 = v10;

  if (v13)
  {
    [v2 addSubview:v13];
  }

  [v2 setNeedsLayout];

  v14 = *&v2[v4];
  if (v14)
  {
    v15 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_animationCompletionHandler];
    v16 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_animationCompletionHandler + 8];
    v17 = &v14[OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler];
    v18 = *&v14[OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler];
    v19 = *&v14[OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler + 8];
    *v17 = v15;
    v17[1] = v16;
    v20 = v14;
    sub_10000827C(v15, v16);
    sub_10001F63C(v18, v19);

    v21 = *&v2[v4];
    if (v21)
    {
      [v21 setClipsToBounds:1];
      v5 = *&v2[v4];
      if (v5)
      {
LABEL_2:
        v6 = v5;
        dispatch thunk of RoundedCornerView.cornerRadius.getter();
        [v6 _setCornerRadius:?];

        v7 = *&v2[v4];
        if (v7)
        {
          v8 = *&v7[OBJC_IVAR____TtC8AppStore19InstallProgressView_progress];
          *&v7[OBJC_IVAR____TtC8AppStore19InstallProgressView_progress] = a1;
          v9 = v7;
          sub_1004B18E8(v8);
        }
      }
    }
  }

  return [v2 setNeedsLayout];
}

void sub_1004974E4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_animationCompletionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_animationCompletionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_animationCompletionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_10001F63C(v4, v5);
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_progressView);
  if (v6)
  {
    v7 = *v3;
    v8 = v3[1];
    v9 = &v6[OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler];
    v10 = *&v6[OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler];
    v11 = *&v6[OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler + 8];
    *v9 = v7;
    v9[1] = v8;
    v12 = v6;
    sub_10000827C(v7, v8);
    sub_10001F63C(v10, v11);
  }
}

uint64_t sub_1004975A4@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_10002849C(&qword_100979010, qword_1007BE140);
  __chkstk_darwin(v1 - 8);
  v47 = &v37[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v37[-v4];
  __chkstk_darwin(v6);
  v8 = &v37[-v7];
  v9 = type metadata accessor for FontSource();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for OfferButtonMetrics();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v46 = &v37[-v18];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v19 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v19 = qword_100991028;
  }

  v20 = v10;
  v48 = v5;
  v21 = sub_1000056A8(v13, v19);
  (*(v14 + 16))(v16, v21, v13);
  v40 = v14;
  v41 = v13;
  (*(v14 + 32))(v46, v16, v13);
  v68[13] = &type metadata for Double;
  v68[14] = &protocol witness table for Double;
  v68[9] = &protocol witness table for Double;
  v68[10] = 0x4024000000000000;
  v68[8] = &type metadata for Double;
  v68[5] = 0x4000000000000000;
  if (qword_10096E0E0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v22, qword_1009D1220);
  v39 = *(v22 - 8);
  v45 = *(v39 + 16);
  v45(v12, v23, v22);
  v24 = *(v10 + 104);
  v25 = enum case for FontSource.useCase(_:);
  v50 = v20 + 104;
  v54 = v24;
  v24(v12);
  v53 = type metadata accessor for StaticDimension();
  v68[3] = v53;
  v68[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v68);
  v66 = v9;
  v67 = &protocol witness table for FontSource;
  v26 = sub_1000056E0(v65);
  v51 = *(v20 + 16);
  v52 = v20 + 16;
  v51(v26, v12, v9);
  StaticDimension.init(_:scaledLike:)();
  v49 = *(v20 + 8);
  v44 = v20 + 8;
  v49(v12, v9);
  v65[0] = 0x405C000000000000;
  v62[0] = 0x4044000000000000;
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  v42 = v8;
  Conditional<>.init(regularValue:compactValue:)();
  if (qword_10096E0E8 != -1)
  {
    swift_once();
  }

  v27 = sub_1000056A8(v22, qword_1009D1238);
  v45(v12, v27, v22);
  v54(v12, v25, v9);
  v66 = v53;
  v67 = &protocol witness table for StaticDimension;
  sub_1000056E0(v65);
  v63 = v9;
  v64 = &protocol witness table for FontSource;
  v28 = sub_1000056E0(v62);
  v51(v28, v12, v9);
  StaticDimension.init(_:scaledLike:)();
  v49(v12, v9);
  v62[0] = 0x405C000000000000;
  v59[0] = 0x4044000000000000;
  Conditional<>.init(regularValue:compactValue:)();
  if (qword_10096E0D0 != -1)
  {
    swift_once();
  }

  v29 = sub_1000056A8(v22, qword_1009D11F0);
  v45(v12, v29, v22);
  v54(v12, v25, v9);
  v63 = v53;
  v64 = &protocol witness table for StaticDimension;
  sub_1000056E0(v62);
  v60 = v9;
  v61 = &protocol witness table for FontSource;
  v30 = sub_1000056E0(v59);
  v51(v30, v12, v9);
  StaticDimension.init(_:scaledLike:)();
  v49(v12, v9);
  v59[0] = 0x4052000000000000;
  v56[0] = 0x4034000000000000;
  v38 = v25;
  Conditional<>.init(regularValue:compactValue:)();
  *v12 = UIFontTextStyleBody;
  *(v12 + 2) = 0;
  LODWORD(v45) = enum case for FontUseCase.preferredFont(_:);
  v39 = *(v39 + 104);
  (v39)(v12);
  v54(v12, v25, v9);
  v60 = v53;
  v61 = &protocol witness table for StaticDimension;
  sub_1000056E0(v59);
  v57 = v9;
  v58 = &protocol witness table for FontSource;
  v31 = sub_1000056E0(v56);
  v51(v31, v12, v9);
  v32 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  v33 = v49;
  v49(v12, v9);
  v34 = v46;
  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  *v12 = v32;
  *(v12 + 2) = 0;
  (v39)(v12, v45, v22);
  v54(v12, v38, v9);
  v57 = v53;
  v58 = &protocol witness table for StaticDimension;
  sub_1000056E0(v56);
  v55[3] = v9;
  v55[4] = &protocol witness table for FontSource;
  v35 = sub_1000056E0(v55);
  v51(v35, v12, v9);
  StaticDimension.init(_:scaledLike:)();
  v33(v12, v9);
  InstallPageInstallingViewLayout.Metrics.init(iconSize:ageRatingMargin:ageRatingBaselineOffset:titleSpace:titleHorizontalMargin:subtitleSpace:subtitleHorizontalMargin:descriptionSpace:descriptionHorizontalMargin:offerButtonMargin:offerButtonSize:bottomSpace:)();
  return (*(v40 + 8))(v34, v41);
}

char *sub_100497EB4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - v15;
  *&v4[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_progressView] = 0;
  v17 = &v4[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_animationCompletionHandler];
  type metadata accessor for ArtworkView();
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_iconView] = static ArtworkView.iconArtworkView.getter();
  if (qword_10096E0E0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D1220);
  v20 = *(v18 - 8);
  v52 = *(v20 + 16);
  v52(v16, v19, v18);
  v51 = *(v20 + 56);
  v51(v16, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v50 = *(v11 + 104);
  v50(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = type metadata accessor for DynamicTypeLabel();
  v49 = v10;
  v23 = v22;
  v24 = objc_allocWithZone(v22);
  *&v5[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_ageRatingView] = [objc_allocWithZone(type metadata accessor for AgeRatingBadgeView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_10096E0E8 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v18, qword_1009D1238);
  v52(v16, v25, v18);
  v51(v16, 0, 1, v18);
  v50(v13, v21, v49);
  v26 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E0D0 != -1)
  {
    swift_once();
  }

  v27 = sub_1000056A8(v18, qword_1009D11F0);
  v52(v16, v27, v18);
  v51(v16, 0, 1, v18);
  v50(v13, v21, v49);
  v28 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_descriptionLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v29 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_offerButton] = sub_1000F5284(0, v30);
  v53.receiver = v5;
  v53.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v35 setScrollEnabled:1];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_descriptionLabel;
  [*&v35[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_descriptionLabel] setTextAlignment:1];
  v37 = OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_titleLabel;
  [*&v35[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_titleLabel] setTextAlignment:1];
  v38 = OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_subtitleLabel;
  [*&v35[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_subtitleLabel] setTextAlignment:1];
  v39 = *&v35[v36];
  sub_100028BB8();
  v40 = v39;
  v41 = static UIColor.secondaryText.getter();
  [v40 setTextColor:v41];

  v42 = *&v35[v37];
  v43 = static UIColor.primaryText.getter();
  [v42 setTextColor:v43];

  v44 = *&v35[v38];
  v45 = static UIColor.tertiaryText.getter();
  [v44 setTextColor:v45];

  [v35 addSubview:*&v35[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_iconView]];
  [v35 addSubview:*&v35[v36]];
  [v35 addSubview:*&v35[v37]];
  [v35 addSubview:*&v35[v38]];
  [v35 addSubview:*&v35[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_offerButton]];
  [v35 addSubview:*&v35[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_ageRatingView]];

  return v35;
}

double sub_1004985C8(double a1, double a2)
{
  v3 = type metadata accessor for InstallPageInstallingViewLayout.Metrics();
  __chkstk_darwin(v3 - 8);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InstallPageInstallingViewLayout();
  v33 = *(v6 - 8);
  v34 = v6;
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v32[0] = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 traitCollection];
  v32[1] = v5;
  sub_1004975A4(v5);

  v10 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_iconView];
  v56 = type metadata accessor for ArtworkView();
  v57 = &protocol witness table for UIView;
  v55 = v10;
  v11 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_progressView];
  if (v11)
  {
    v12 = type metadata accessor for InstallProgressView();
    v13 = &protocol witness table for UIView;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v51 = 0;
    v52 = 0;
  }

  v50 = v11;
  v53 = v12;
  v54 = v13;
  v14 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_titleLabel];
  v48 = type metadata accessor for DynamicTypeLabel();
  v49 = &protocol witness table for UILabel;
  v46 = &protocol witness table for UILabel;
  v47 = v14;
  v15 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_subtitleLabel];
  v45 = v48;
  v43 = &protocol witness table for UILabel;
  v44 = v15;
  v16 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_descriptionLabel];
  v42 = v48;
  v41 = v16;
  v17 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_ageRatingView];
  v39 = type metadata accessor for AgeRatingBadgeView(0);
  v40 = &protocol witness table for UIView;
  v38 = v17;
  v18 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_offerButton];
  v36 = type metadata accessor for OfferButton();
  v37 = &protocol witness table for UIView;
  v35 = v18;
  v19 = v10;
  v20 = v11;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v32[0];
  InstallPageInstallingViewLayout.init(metrics:iconView:progressView:titleText:subtitleText:descriptionText:ageRatingView:offerButton:)();
  sub_100498D74(v27);
  v28 = v34;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v30 = v29;
  (*(v33 + 8))(v26, v28);
  return v30;
}

uint64_t sub_1004988D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InstallPageInstallingViewLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InstallPageInstallingViewLayout();
  v33 = *(v8 - 8);
  v34 = v8;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v32[0] = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61.receiver = v1;
  v61.super_class = ObjectType;
  v32[2] = ObjectType;
  objc_msgSendSuper2(&v61, "layoutSubviews", v9);
  v11 = [v1 traitCollection];
  v32[1] = v7;
  sub_1004975A4(v7);

  v12 = *&v1[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_iconView];
  v59 = type metadata accessor for ArtworkView();
  v60 = &protocol witness table for UIView;
  v58 = v12;
  v13 = *&v1[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_progressView];
  if (v13)
  {
    v14 = type metadata accessor for InstallProgressView();
    v15 = &protocol witness table for UIView;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v54 = 0;
    v55 = 0;
  }

  v53 = v13;
  v56 = v14;
  v57 = v15;
  v16 = *&v1[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_titleLabel];
  v51 = type metadata accessor for DynamicTypeLabel();
  v52 = &protocol witness table for UILabel;
  v49 = &protocol witness table for UILabel;
  v50 = v16;
  v17 = *&v1[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_subtitleLabel];
  v48 = v51;
  v46 = &protocol witness table for UILabel;
  v47 = v17;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_descriptionLabel];
  v45 = v51;
  v44 = v18;
  v19 = *&v1[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_ageRatingView];
  v42 = type metadata accessor for AgeRatingBadgeView(0);
  v43 = &protocol witness table for UIView;
  v41 = v19;
  v20 = *&v1[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_offerButton];
  v39 = type metadata accessor for OfferButton();
  v40 = &protocol witness table for UIView;
  v38 = v20;
  v21 = v12;
  v22 = v13;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v32[0];
  InstallPageInstallingViewLayout.init(metrics:iconView:progressView:titleText:subtitleText:descriptionText:ageRatingView:offerButton:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v29 = v35;
  InstallPageInstallingViewLayout.placeChildren(relativeTo:in:)();
  [v1 frame];
  Width = CGRectGetWidth(v62);
  LayoutRect.size.getter();
  [v1 setContentSize:Width];
  (*(v36 + 8))(v29, v37);
  return (*(v33 + 8))(v28, v34);
}

unint64_t sub_100498D74(__n128 a1)
{
  result = qword_1009871E0;
  if (!qword_1009871E0)
  {
    type metadata accessor for InstallPageInstallingViewLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009871E0);
  }

  return result;
}

uint64_t sub_100498DCC(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView);
    v4 = *&v3[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView];
    v5 = v3;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      sub_100028004();
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

void sub_100498E84(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView);
  v3 = *&v2[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1004999A4(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v6 = v2;
    v7 = [v5 superview];
    if (v7)
    {
      v8 = v7;
      sub_100028004();
      v9 = v3;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          v12 = v11;
          [v11 removeFromSuperview];
        }
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = v2;
  }

  swift_unknownObjectWeakAssign();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v16 = v14;
    [v3 addSubview:v14];
  }

  sub_1001B8790(v15);
  [v3 setNeedsLayout];
}

void (*sub_100499020(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100499094;
}

void sub_100499094(uint64_t a1, char a2)
{
  v4 = *a1;
  v32 = *(*(a1 + 8) + *(a1 + 16));
  v5 = *&v32[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView];
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1004999A4(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
      v8 = v4;
      v9 = v32;
      v10 = [v7 superview];
      if (v10)
      {
        v11 = v10;
        sub_100028004();
        v12 = v5;
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          v14 = swift_unknownObjectWeakLoadStrong();
          if (v14)
          {
            v15 = v14;
            [v14 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v8 = v4;
      v23 = v32;
    }

    swift_unknownObjectWeakAssign();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v27 = v25;
      [v5 addSubview:v25];
    }

    sub_1001B8790(v26);
    [v5 setNeedsLayout];

    v28 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_1004999A4(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
      v16 = v32;
      v17 = [v7 superview];
      if (v17)
      {
        v18 = v17;
        sub_100028004();
        v19 = v5;
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            [v21 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v24 = v32;
    }

    swift_unknownObjectWeakAssign();
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v31 = v29;
      [v5 addSubview:v29];
    }

    sub_1001B8790(v30);
    [v5 setNeedsLayout];

    v28 = v32;
  }
}

char *sub_100499384(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView] = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{a1, a2, a3, a4}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  v9 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v13 = v9;
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v14 = [v13 contentView];
  [v14 addSubview:*&v13[OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView]];

  return v13;
}

id sub_10049965C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t (*sub_1004996F8(uint64_t **a1))()
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
  v2[4] = sub_100499020(v2);
  return sub_1000B4CAC;
}

uint64_t sub_100499768(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1004997BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100499828(uint64_t *a1, uint64_t a2))()
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

uint64_t sub_1004999A4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100499B5C()
{
  ObjectType = swift_getObjectType();
  v29 = ObjectType;
  v37 = type metadata accessor for LayoutRect();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ChartOrCategoryBrickContext();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_10002849C(&qword_100987258, qword_1007CFD20);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for PlaceholderBrick();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44.receiver = v0;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, "layoutSubviews", v14, v29);
  v17 = enum case for ChartOrCategoryBrickStyle.tile(_:);
  v18 = type metadata accessor for ChartOrCategoryBrickStyle();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v11, v17, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  PlaceholderBrick.init(style:title:badge:artworks:)();
  *(&v42 + 1) = v12;
  v43 = &protocol witness table for PlaceholderBrick;
  v20 = sub_1000056E0(&v41);
  (*(v13 + 16))(v20, v16, v12);
  v21 = [v0 traitCollection];
  sub_10002C0AC(&v41, v39);
  ChartOrCategoryBrickContext.init(model:fontStyles:in:)();
  sub_100007000(&v41);
  v22 = v31;
  (*(v4 + 16))(v30, v8, v31);
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v23 = *&v0[OBJC_IVAR____TtC8AppStore28CategoryBrickPlaceholderView_artworkPlaceholder];
  v24 = type metadata accessor for ArtworkView();
  v38[4] = &protocol witness table for UIView;
  v38[3] = v24;
  v38[0] = v23;
  v45 = 0u;
  v46 = 0u;
  v47 = 1;
  v25 = v23;
  v26 = v32;
  ChartOrCategoryBrickCollectionViewCellLayout.init(context:badgeTextView:titleTextView:artworkView:textExclusionRect:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v27 = v33;
  ChartOrCategoryBrickCollectionViewCellLayout.placeChildren(relativeTo:in:)();
  (*(v36 + 8))(v27, v37);
  (*(v34 + 8))(v26, v35);
  (*(v4 + 8))(v8, v22);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_10049A134(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v48 = a2;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v11 - 8);
  v45 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = _swiftEmptyArrayStorage;
    v37 = ObjectType;
    if (!i)
    {
      goto LABEL_11;
    }

    aBlock[0] = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      break;
    }

    v16 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(a1 + 8 * v16 + 32);
      }

      ++v16;
      v18 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackCategoryButton());

      sub_1005CD930(v17, a3, a4);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (i != v16);
    v14 = aBlock[0];
LABEL_11:
    v36 = v8;
    v19 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_categoryViews;
    ObjectType = v43;
    *&v43[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_categoryViews] = v14;

    v20 = [ObjectType traitCollection];
    v21 = [v20 preferredContentSizeCategory];

    LOBYTE(v20) = UIContentSizeCategory.isAccessibilityCategory.getter();
    sub_10049B2C4(v20 & 1);
    v8 = *&ObjectType[v19];
    if (v8 >> 62)
    {
      a3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      a3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!a3)
    {
LABEL_25:

      v27 = v43;
      [v43 setNeedsLayout];
      [v27 layoutIfNeeded];
      sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
      v28 = static OS_dispatch_queue.main.getter();
      v29 = swift_allocObject();
      v30 = v37;
      *(v29 + 16) = v27;
      *(v29 + 24) = v30;
      aBlock[4] = sub_10049BB9C;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008C4B80;
      v31 = _Block_copy(aBlock);
      v32 = v27;

      v33 = v38;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10049BBA4(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
      sub_1000079A4();
      v34 = v40;
      v35 = v36;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v31);

      (*(v42 + 8))(v34, v35);
      return (*(v39 + 8))(v33, v41);
    }

    a4 = 0;
    v46 = v8 & 0xFFFFFFFFFFFFFF8;
    v47 = v8 & 0xC000000000000001;
    v22 = &unk_10098D000;
    v44 = v8;
    while (1)
    {
      if (v47)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a4 >= *(v46 + 16))
        {
          goto LABEL_27;
        }

        v23 = *(v8 + 8 * a4 + 32);
      }

      ObjectType = v23;
      v24 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      ArcadeDownloadPackCategory.artwork.getter();
      Artwork.config(_:mode:prefersLayeredImage:)();

      ArcadeDownloadPackCategory.artwork.getter();
      v25 = Artwork.artwork.getter();

      if (v25)
      {
        a1 = v22;
        v26 = *&ObjectType[v22[368]];
        Artwork.style.getter();
        ArtworkView.style.setter();
        [v26 setContentMode:Artwork.contentMode.getter()];
        ArtworkLoaderConfig.size.getter();
        ArtworkView.imageSize.setter();
        if (!Artwork.backgroundColor.getter())
        {
          sub_100005744(0, &qword_100970180, UIColor_ptr);
          static UIColor.placeholderBackground.getter();
        }

        ArtworkView.backgroundColor.setter();

        v22 = a1;
        v8 = v44;
      }

      type metadata accessor for ArtworkView();
      sub_10049BBA4(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      ++a4;
      if (v24 == a3)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  __break(1u);
  return result;
}

void sub_10049A824(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_categoryViews);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    v14 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v14)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = type metadata accessor for ArcadeDownloadPackCategoryButton();
      v19.receiver = v6;
      v19.super_class = v8;
      v9 = objc_msgSendSuper2(&v19, "isSelected");
      v18.receiver = v6;
      v18.super_class = v8;
      objc_msgSendSuper2(&v18, "setEnabled:", (v9 | a1) & 1);
      v10 = *&v6[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_titleLabel];
      v17.receiver = v6;
      v17.super_class = v8;
      if (objc_msgSendSuper2(&v17, "isEnabled"))
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.4;
      }

      [v10 setAlpha:{v11, v14}];
      v12 = *&v6[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_artworkView];
      v16.receiver = v6;
      v16.super_class = v8;
      if (objc_msgSendSuper2(&v16, "isEnabled"))
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.4;
      }

      [v12 setAlpha:v13];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_18:
}

double sub_10049A9D8(uint64_t a1, void *a2)
{
  v19 = a1;
  v20 = a2;
  v3 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for ImpressionMetrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_categoryViews);
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v12 = 0;
    v21 = v10 & 0xFFFFFFFFFFFFFF8;
    v22 = v10 & 0xC000000000000001;
    v13 = (v7 + 48);
    v17 = (v7 + 8);
    v18 = (v7 + 32);
    while (1)
    {
      if (v22)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v21 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v7 = v14;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      ArcadeDownloadPackCategory.impressionMetrics.getter();
      if ((*v13)(v5, 1, v6) == 1)
      {

        sub_100453E30(v5);
      }

      else
      {
        (*v18)(v9, v5, v6);
        [v7 bounds];
        [v20 convertRect:v7 fromCoordinateSpace:?];
        ImpressionsCalculator.addElement(_:at:)();

        (*v17)(v9, v6);
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  return result;
}

char *sub_10049AC60(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_firstColumn;
  *&v4[v10] = [objc_allocWithZone(UIStackView) init];
  v11 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_secondColumn;
  v12 = [objc_allocWithZone(UIStackView) init];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_categoryViews] = _swiftEmptyArrayStorage;
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007B15F0;
  v14 = *&v4[v10];
  *(v13 + 32) = v14;
  *(v13 + 40) = v12;
  v15 = objc_allocWithZone(UIStackView);
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v16 = v14;
  v17 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v15 initWithArrangedSubviews:isa];

  *&v4[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_contentView] = v19;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v41 = ObjectType;
  v20 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007B10D0;
  v22 = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v21 + 32) = v22;
  *(v21 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43 = ObjectType;
  v42[0] = v20;
  v23 = v20;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v42);
  v24 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_firstColumn;
  [*&v23[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_firstColumn] setAxis:1];
  [*&v23[v24] setSpacing:50.0];
  [*&v23[v24] setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_secondColumn;
  [*&v23[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_secondColumn] setAxis:1];
  [*&v23[v25] setSpacing:50.0];
  [*&v23[v25] setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_contentView;
  [*&v23[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_contentView] setDistribution:1];
  [*&v23[v26] setAlignment:1];
  [*&v23[v26] setAxis:0];
  [*&v23[v26] setSpacing:8.0];
  [v23 addSubview:*&v23[v26]];
  [*&v23[v26] setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007BB060;
  v29 = [*&v23[v26] leftAnchor];
  v30 = [v23 leftAnchor];

  v31 = [v29 constraintEqualToAnchor:v30];
  *(v28 + 32) = v31;
  v32 = [*&v23[v26] rightAnchor];
  v33 = [v23 rightAnchor];

  v34 = [v32 constraintEqualToAnchor:v33];
  *(v28 + 40) = v34;
  *(v28 + 48) = sub_10049B1A4();
  v35 = [*&v23[v26] bottomAnchor];
  v36 = [v23 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v28 + 56) = v37;
  sub_100005744(0, &qword_1009766E0, NSLayoutConstraint_ptr);
  v38 = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:v38];

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007B10D0;
  *(v39 + 32) = v22;
  *(v39 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43 = v41;
  v42[0] = v23;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v42);
  return v23;
}

id sub_10049B1A4()
{
  v1 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_contentView] topAnchor];
    v5 = [v0 topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:150.0];

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

double sub_10049B2C4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_secondColumn);
  [v2 setHidden:a1 & 1];
  v30 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_firstColumn);
  v4 = [v3 arrangedSubviews];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_13;
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
          goto LABEL_12;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v8 removeFromSuperview];

      ++v7;
      if (v10 == i)
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

  v11 = [v2 arrangedSubviews];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      [v15 removeFromSuperview];

      ++v14;
      if (v17 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v18 = *(v30 + OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_categoryViews);
  if (a1)
  {
    if (v18 >> 62)
    {
      goto LABEL_63;
    }

    for (k = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = _CocoaArrayWrapper.endIndex.getter())
    {
      v32 = v3;

      if (!k)
      {
        break;
      }

      v3 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v20 = *(v18 + 8 * v3 + 32);
        }

        v21 = v20;
        v22 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          break;
        }

        [v32 addArrangedSubview:v20];

        ++v3;
        if (v22 == k)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      ;
    }

LABEL_53:
  }

  else
  {
    if (v18 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23)
    {
      v24 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v25 = *(v18 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_60;
        }

        if (v24)
        {
          v28 = v2;
        }

        else
        {
          v28 = v3;
        }

        [v28 addArrangedSubview:v26];

        ++v24;
      }

      while (v27 != v23);
    }
  }

  return result;
}

double sub_10049B6CC(char *a1)
{
  v2 = sub_10049B1A4();
  [v2 setConstant:0.0];

  [*&a1[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_firstColumn] setSpacing:8.0];
  [*&a1[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_secondColumn] setSpacing:8.0];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

  return result;
}

double sub_10049B884()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;
  if (v3 != [*&v0[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_secondColumn] isHidden])
  {
    [*&v0[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_contentView] layoutIfNeeded];
    v5 = *&v0[OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_categoryViews];
    if (v5 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!i)
      {
        break;
      }

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
            goto LABEL_18;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setNeedsLayout];
        [v9 invalidateIntrinsicContentSize];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
  }

  return result;
}

double sub_10049BB20()
{
  [*(*v0 + OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_contentView) systemLayoutSizeFittingSize:?];
  v2 = v1;
  v3 = sub_10049B1A4();
  [v3 constant];

  return v2;
}

uint64_t sub_10049BBA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10049BBEC()
{
  v1 = [*(v0 + 16) superview];
  [v1 invalidateIntrinsicContentSize];
}

void sub_10049BC44()
{
  v1 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_firstColumn;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_secondColumn;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  *(v0 + OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore34ArcadeDownloadPackCategoryListView_categoryViews) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

_BYTE *sub_10049BD08(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  isEscapingClosureAtFileLocation = type metadata accessor for DirectionalTextAlignment();
  v7 = *(isEscapingClosureAtFileLocation - 8);
  __chkstk_darwin(isEscapingClosureAtFileLocation);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v4[OBJC_IVAR____TtC8AppStore14CountBadgeView_size] = a1 & 1;
  if ((a1 & 1) == 0)
  {
    if (qword_10096E370 != -1)
    {
      swift_once();
    }

    v17 = qword_1009D19D0;
    goto LABEL_7;
  }

  if (qword_10096E378 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v17 = qword_1009D19E8;
LABEL_7:
    v18 = sub_1000056A8(v10, v17);
    (*(v11 + 16))(v13, v18, v10);
    (*(v11 + 32))(v16, v13, v10);
    v19 = *(v11 + 56);
    v11 += 56;
    v19(v16, 0, 1, v10);
    v20 = *(v7 + 104);
    v7 += 104;
    v20(v9, enum case for DirectionalTextAlignment.none(_:), isEscapingClosureAtFileLocation);
    v21 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
    *&v4[OBJC_IVAR____TtC8AppStore14CountBadgeView_countLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
    v22 = type metadata accessor for CountBadgeView();
    v39.receiver = v4;
    v39.super_class = v22;
    v23 = objc_msgSendSuper2(&v39, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v35);
    v24 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 2) = v23;
    v9[24] = a1 & 1;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10049C888;
    *(v10 + 24) = v9;
    aBlock[4] = sub_10006F094;
    v38 = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000489A8;
    aBlock[3] = &unk_1008C4CB0;
    v16 = _Block_copy(aBlock);
    v13 = v38;
    v4 = v23;

    [v24 performWithoutAnimation:v16];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v25 = objc_opt_self();
  v26 = [v25 redColor];
  [v4 setBackgroundColor:v26];

  v27 = OBJC_IVAR____TtC8AppStore14CountBadgeView_countLabel;
  v28 = *&v4[OBJC_IVAR____TtC8AppStore14CountBadgeView_countLabel];
  if (v36)
  {
    v29 = v28;
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v31 = v28;
    v30 = 0;
  }

  [v28 setText:v30];

  v32 = *&v4[v27];
  v33 = [v25 whiteColor];
  [v32 setTextColor:v33];

  [v4 addSubview:*&v4[v27]];
  [v4 setUserInteractionEnabled:0];

  return v4;
}

id sub_10049C2CC(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC8AppStore14CountBadgeView_countLabel];
  v5 = [v4 text];
  if (a2)
  {
    if (v5)
    {

      v6 = String._bridgeToObjectiveC()();

LABEL_9:
      [v4 setText:v6];

      return [v2 setNeedsLayout];
    }

    v14 = String._bridgeToObjectiveC()();

    [v4 setText:v14];

    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    v23 = sub_10049C8D4;
    v24 = v16;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100007A08;
    v22 = &unk_1008C4DA0;
    v9 = _Block_copy(&v19);
    v17 = v2;

    [v15 animateWithDuration:4 delay:v9 options:0 animations:0.2 completion:0.0];
  }

  else
  {
    if (!v5)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    v23 = sub_10049C8AC;
    v24 = v8;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100007A08;
    v22 = &unk_1008C4D00;
    v9 = _Block_copy(&v19);
    v10 = v2;

    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v23 = sub_10049C8B4;
    v24 = v11;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100504C5C;
    v22 = &unk_1008C4D50;
    v12 = _Block_copy(&v19);
    v13 = v10;

    [v7 animateWithDuration:4 delay:v9 options:v12 animations:0.2 completion:0.0];
    _Block_release(v12);
  }

  _Block_release(v9);
  return [v2 setNeedsLayout];
}

id sub_10049C7B8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CountBadgeView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10049C834()
{
  result = qword_1009872E8;
  if (!qword_1009872E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009872E8);
  }

  return result;
}

id sub_10049C888()
{
  v1 = 9.0;
  if (*(v0 + 24))
  {
    v1 = 12.0;
  }

  return [*(v0 + 16) _setContinuousCornerRadius:v1];
}

id sub_10049C8D4()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

void sub_10049C914()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore14CountBadgeView_countLabel);
  v2 = [v1 text];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = String.count.getter();

    if (v4 >= 2)
    {
      [v1 sizeThatFits:{0.0, 0.0}];
    }
  }
}

void sub_10049CA18(void *a1, unint64_t a2)
{
  v286 = a2;
  v247 = type metadata accessor for AutomationSemantics();
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v243 = &v233 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v244 = &v233 - v6;
  __chkstk_darwin(v7);
  v245 = &v233 - v8;
  v266 = type metadata accessor for PlatformSelectorViewLayout.Metrics();
  v265 = *(v266 - 8);
  __chkstk_darwin(v266);
  v267 = &v233 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlatformSelectorViewLayout();
  v271 = *(v10 - 8);
  __chkstk_darwin(v10);
  v270 = &v233 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = type metadata accessor for DirectionalTextAlignment();
  v261 = *(v262 - 8);
  __chkstk_darwin(v262);
  v263 = &v233 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v13 - 8);
  v260 = &v233 - v14;
  v269 = type metadata accessor for BadgeDisplayStyle();
  v268 = *(v269 - 8);
  __chkstk_darwin(v269);
  v259 = &v233 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v264 = &v233 - v17;
  __chkstk_darwin(v18);
  v258 = &v233 - v19;
  v257 = type metadata accessor for FloatingPointRoundingRule();
  v256 = *(v257 - 8);
  __chkstk_darwin(v257);
  v255 = &v233 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = type metadata accessor for PageGrid();
  v253 = *(v254 - 8);
  __chkstk_darwin(v254);
  v252 = &v233 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for ProductMedia.DescriptionPlacement();
  v250 = *(v251 - 8);
  __chkstk_darwin(v251);
  v249 = &v233 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = type metadata accessor for Shelf.ContentType();
  v275 = *(v281 - 8);
  __chkstk_darwin(v281);
  v235 = &v233 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = sub_10002849C(&qword_100975F10, &unk_1007CE130);
  __chkstk_darwin(v274);
  v276 = &v233 - v24;
  v25 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v272 = *(v25 - 8);
  __chkstk_darwin(v25);
  v273 = &v233 - v26;
  v27 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  __chkstk_darwin(v27);
  v29 = &v233 - v28;
  v30 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v30 - 8);
  v32 = &v233 - v31;
  v33 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v33 - 8);
  v242 = (&v233 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v37 = &v233 - v36;
  __chkstk_darwin(v38);
  v282 = &v233 - v39;
  type metadata accessor for ProductMedia();
  sub_10049FC48(&qword_1009717E8, &type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
  v40 = a1;
  ItemLayoutContext.typedModel<A>(as:)();
  v41 = v290;
  if (!v290)
  {
    return;
  }

  v240 = v37;
  v238 = v10;
  v42 = sub_100079F24();
  v43 = *(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph);
  *(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph) = v286;

  sub_10057A438(v43, v44);

  *(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits) = v42;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v45 = *(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_flowLayout);
  ObjectType = swift_getObjectType();
  v285 = v42;
  [v42 pageMarginInsets];
  [v45 setSectionInset:?];

  v284 = v2;
  sub_10057A32C(v46, v47);
  v48 = ProductMedia.platform.getter();
  v49 = ProductMedia.allPlatforms.getter();
  v241 = ProductMedia.platformDescription.getter();
  v277 = v50;
  v278 = v41;
  v248 = ProductMedia.allPlatformsDescription.getter();
  v280 = v51;
  v234 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v52 = swift_allocObject();
  v233 = xmmword_1007B0B70;
  *(v52 + 16) = xmmword_1007B0B70;
  *(v52 + 32) = v48;
  v283 = v48;

  v286 = v49;
  v236 = sub_1006E1F58(v49, v52);

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100094E74(&v29[*(v27 + 48)], v32);
  v53 = v272;
  v54 = (v272[6])(v32, 1, v25);
  v279 = v40;
  if (v54 == 1)
  {
    sub_10002B894(v29, &unk_10098FFB0, qword_1007B3890);
    sub_10002B894(v32, &unk_10098FFB0, qword_1007B3890);
    v55 = v25;
    v56 = v275;
    v57 = v282;
    v58 = v281;
    v239 = *(v275 + 7);
    v239(v282, 1, 1, v281);
  }

  else
  {
    swift_getKeyPath();
    v57 = v282;
    ReadOnlyLens.subscript.getter();

    v53[1](v32, v25);
    v55 = v25;
    v56 = v275;
    v58 = v281;
    v239 = *(v275 + 7);
    v239(v57, 0, 1, v281);
    sub_10002B894(v29, &unk_10098FFB0, qword_1007B3890);
  }

  swift_getKeyPath();
  v59 = v273;
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  v60 = v240;
  ReadOnlyLens.subscript.getter();

  v53[1](v59, v55);
  v61 = v60;
  v239(v60, 0, 1, v58);
  v62 = v274[12];
  v63 = v276;
  sub_100031660(v57, v276, &unk_100992460, &qword_1007B6BF0);
  sub_100031660(v60, v63 + v62, &unk_100992460, &qword_1007B6BF0);
  v64 = v57;
  v65 = *(v56 + 6);
  v66 = v65(v63, 1, v58);
  v281 = v286 >> 62;
  if (v66 == 1)
  {
    sub_10002B894(v61, &unk_100992460, &qword_1007B6BF0);
    sub_10002B894(v57, &unk_100992460, &qword_1007B6BF0);
    v67 = v65(v63 + v62, 1, v58);
    v68 = v284;
    if (v67 == 1)
    {
      sub_10002B894(v63, &unk_100992460, &qword_1007B6BF0);
LABEL_21:
      LODWORD(v282) = 0;
      v80 = 1;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  v64 = v242;
  sub_100031660(v63, v242, &unk_100992460, &qword_1007B6BF0);
  v69 = v65(v63 + v62, 1, v58);
  v68 = v284;
  if (v69 == 1)
  {
    sub_10002B894(v61, &unk_100992460, &qword_1007B6BF0);
    sub_10002B894(v282, &unk_100992460, &qword_1007B6BF0);
    v70 = *(v56 + 1);
    v56 = (v56 + 8);
    v70(v64, v58);
LABEL_10:
    sub_10002B894(v63, &qword_100975F10, &unk_1007CE130);
    v71 = v283;
    goto LABEL_11;
  }

  v77 = v235;
  (*(v56 + 4))(v235, v63 + v62, v58);
  sub_10049FC48(&qword_100972720, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v78 = dispatch thunk of static Equatable.== infix(_:_:)();
  v79 = *(v56 + 1);
  v56 = (v56 + 8);
  v79(v77, v58);
  sub_10002B894(v61, &unk_100992460, &qword_1007B6BF0);
  sub_10002B894(v282, &unk_100992460, &qword_1007B6BF0);
  v79(v64, v58);
  sub_10002B894(v63, &unk_100992460, &qword_1007B6BF0);
  v71 = v283;
  if (v78)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (!v281)
  {
    v72 = v286;
    v73 = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73)
    {
      goto LABEL_13;
    }

LABEL_23:

    *&v290 = v71;
    goto LABEL_24;
  }

  v72 = v286;
  v73 = _CocoaArrayWrapper.endIndex.getter();
  if (!v73)
  {
    goto LABEL_23;
  }

LABEL_13:
  v74 = v73 - 1;
  if (__OFSUB__(v73, 1))
  {
    __break(1u);
  }

  else if ((v72 & 0xC000000000000001) == 0)
  {
    if ((v74 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v74 < *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v75 = *(v72 + 8 * v74 + 32);

      *&v290 = v71;
      if (v75)
      {
        goto LABEL_18;
      }

LABEL_24:

      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_89;
  }

  v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  *&v290 = v71;
  if (!v75)
  {
    goto LABEL_24;
  }

LABEL_18:
  *&v287 = v75;
  type metadata accessor for MediaPlatform();
  sub_10049FC48(&qword_100975F18, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
  v76 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v76)
  {
    goto LABEL_21;
  }

LABEL_25:
  v80 = 0;
  LODWORD(v282) = v236 ^ 1;
LABEL_26:
  v81 = v249;
  ProductMedia.descriptionPlacement(when:)();
  v82 = (*(v250 + 88))(v81, v251);
  LODWORD(v276) = v80;
  if (v82 != enum case for ProductMedia.DescriptionPlacement.top(_:))
  {
    v86 = v266;
    if (v82 != enum case for ProductMedia.DescriptionPlacement.bottom(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    v87 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView;
    v88 = *(v68 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView);
    if (v88)
    {
      [v88 removeFromSuperview];
      v89 = *(v68 + v87);
    }

    else
    {
      v89 = 0;
    }

    *(v68 + v87) = 0;

    [v68 setNeedsLayout];
    v275 = type metadata accessor for PlatformSelectorView();
    swift_getKeyPath();
    v128 = v252;
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (*(v253 + 8))(v128, v254);
    if (v282)
    {
      if (qword_10096CFC8 != -1)
      {
        swift_once();
      }

      [qword_1009738D0 size];
    }

    else
    {
      if (v281)
      {
        v129 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v129 = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v129 > 1)
      {
        type metadata accessor for MediaPlatform();
        v130 = swift_allocObject();
        *(v130 + 16) = v233;
        *(v130 + 32) = v283;

        v131 = static MediaPlatform.systemImages(platforms:)();

        goto LABEL_63;
      }
    }

    type metadata accessor for MediaPlatform();
    v131 = static MediaPlatform.systemImages(platforms:)();
LABEL_63:

    if (qword_10096CFD0 != -1)
    {
      swift_once();
    }

    v132 = sub_1000056A8(v86, qword_1009738D8);
    PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.getter();
    sub_10002A400(&v290, *(&v291 + 1));
    v133 = v255;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v135 = v134;
    (*(v256 + 8))(v133, v257);
    sub_1000CAA9C(v131, v135);
    sub_100007000(&v290);
    if (v131 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    v136 = v262;

    v137 = v285;
    static BadgeDisplayStyle.style(forBadgeCount:pageTraits:indentForBadges:)();
    v138 = sub_1000CA78C(v131, v137);

    v274 = v138;
    v139 = static PlatformSelectorViewLayout.makeFullPlatformString(descriptiveText:badgeString:metrics:style:in:)();
    if (qword_10096DE48 != -1)
    {
      swift_once();
    }

    v140 = type metadata accessor for FontUseCase();
    v141 = sub_1000056A8(v140, qword_1009D0A58);
    v142 = *(v140 - 8);
    v143 = v260;
    (*(v142 + 16))(v260, v141, v140);
    (*(v142 + 56))(v143, 0, 1, v140);
    (*(v261 + 104))(v263, enum case for DirectionalTextAlignment.none(_:), v136);
    v144 = type metadata accessor for DynamicTypeLabel();
    v145 = objc_allocWithZone(v144);
    v146 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
    [v146 setAttributedText:v139];
    v273 = v139;
    if (qword_10096CFC8 != -1)
    {
      swift_once();
    }

    v279 = qword_1009738D0;
    [qword_1009738D0 size];
    v147 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v148 = LayoutViewPlaceholder.init(representing:)();
    (*(v265 + 16))(v267, v132, v86);
    v149 = v268;
    v150 = v259;
    v151 = v269;
    (*(v268 + 16))(v264, v259, v269);
    *(&v291 + 1) = v144;
    v292 = &protocol witness table for UILabel;
    *&v290 = v146;
    *(&v288 + 1) = v147;
    v289 = &protocol witness table for LayoutViewPlaceholder;
    *&v287 = v148;
    v152 = v146;

    v153 = v270;
    PlatformSelectorViewLayout.init(metrics:style:descriptionLabel:accessoryImageView:)();
    [v285 pageMarginInsets];
    CGSize.subtracting(insets:)();
    sub_10049FC48(&qword_100975F28, &type metadata accessor for PlatformSelectorViewLayout, &protocol conformance descriptor for PlatformSelectorViewLayout);
    v116 = v238;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    CGSize.adding(outsets:)();
    v155 = v154;
    v157 = v156;

    (v271[1])(v153, v116);
    (*(v149 + 8))(v150, v151);
    v122 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView;
    v123 = v284;
    v158 = *(v284 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView);
    if (v158)
    {
      [v158 setFrame:{0.0, 0.0, v155, v157}];
      v125 = v283;
      v121 = &OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView;
      goto LABEL_78;
    }

    v126 = [objc_allocWithZone(v275) initWithFrame:{0.0, 0.0, v155, v157}];
    v127 = *(v123 + v122);
    v121 = &OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView;
    if (!v127)
    {
      v116 = 0;
      goto LABEL_77;
    }

    goto LABEL_74;
  }

  v83 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView;
  v84 = *(v68 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView);
  v56 = v266;
  if (v84)
  {
    [v84 removeFromSuperview];
    v85 = *(v68 + v83);
  }

  else
  {
    v85 = 0;
  }

  *(v68 + v83) = 0;

  [v68 setNeedsLayout];
  v64 = type metadata accessor for PlatformSelectorView();
  swift_getKeyPath();
  v90 = v252;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v253 + 8))(v90, v254);
  if (v282)
  {
    if (qword_10096CFC8 == -1)
    {
LABEL_35:
      [qword_1009738D0 size];
      goto LABEL_40;
    }

LABEL_89:
    swift_once();
    goto LABEL_35;
  }

  if (v281)
  {
    v91 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v91 = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v91 > 1)
  {
    type metadata accessor for MediaPlatform();
    v92 = swift_allocObject();
    *(v92 + 16) = v233;
    *(v92 + 32) = v283;

    v93 = static MediaPlatform.systemImages(platforms:)();

    goto LABEL_41;
  }

LABEL_40:
  type metadata accessor for MediaPlatform();
  v93 = static MediaPlatform.systemImages(platforms:)();
LABEL_41:

  if (qword_10096CFD0 != -1)
  {
    swift_once();
  }

  v94 = sub_1000056A8(v56, qword_1009738D8);
  PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.getter();
  sub_10002A400(&v290, *(&v291 + 1));
  v95 = v255;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v97 = v96;
  (*(v256 + 8))(v95, v257);
  sub_1000CAA9C(v93, v97);
  sub_100007000(&v290);
  if (v93 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v98 = v262;

  v99 = v285;
  static BadgeDisplayStyle.style(forBadgeCount:pageTraits:indentForBadges:)();
  v100 = sub_1000CA78C(v93, v99);

  v275 = v100;
  v101 = static PlatformSelectorViewLayout.makeFullPlatformString(descriptiveText:badgeString:metrics:style:in:)();
  if (qword_10096DE48 != -1)
  {
    swift_once();
  }

  v273 = v64;
  v102 = type metadata accessor for FontUseCase();
  v103 = sub_1000056A8(v102, qword_1009D0A58);
  v104 = *(v102 - 8);
  v105 = v260;
  (*(v104 + 16))(v260, v103, v102);
  (*(v104 + 56))(v105, 0, 1, v102);
  (*(v261 + 104))(v263, enum case for DirectionalTextAlignment.none(_:), v98);
  v106 = type metadata accessor for DynamicTypeLabel();
  v107 = objc_allocWithZone(v106);
  v108 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  [v108 setAttributedText:v101];
  v274 = v101;
  if (qword_10096CFC8 != -1)
  {
    swift_once();
  }

  v279 = qword_1009738D0;
  [qword_1009738D0 size];
  v109 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v110 = LayoutViewPlaceholder.init(representing:)();
  (*(v265 + 16))(v267, v94, v56);
  v111 = v268;
  v112 = v258;
  v113 = v269;
  (*(v268 + 16))(v264, v258, v269);
  *(&v291 + 1) = v106;
  v292 = &protocol witness table for UILabel;
  *&v290 = v108;
  *(&v288 + 1) = v109;
  v289 = &protocol witness table for LayoutViewPlaceholder;
  *&v287 = v110;
  v114 = v108;

  v115 = v270;
  PlatformSelectorViewLayout.init(metrics:style:descriptionLabel:accessoryImageView:)();
  [v285 pageMarginInsets];
  CGSize.subtracting(insets:)();
  sub_10049FC48(&qword_100975F28, &type metadata accessor for PlatformSelectorViewLayout, &protocol conformance descriptor for PlatformSelectorViewLayout);
  v116 = v238;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  CGSize.adding(outsets:)();
  v118 = v117;
  v120 = v119;

  (v271[1])(v115, v116);
  (*(v111 + 8))(v112, v113);
  v121 = &OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView;
  v122 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView;
  v123 = v284;
  v124 = *(v284 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView);
  if (!v124)
  {
    v126 = [objc_allocWithZone(v273) initWithFrame:{0.0, 0.0, v118, v120}];
    v127 = *(v123 + v122);
    if (!v127)
    {
      v116 = 0;
      goto LABEL_77;
    }

LABEL_74:
    [v127 removeFromSuperview];
    v116 = *(v123 + v122);
LABEL_77:
    v125 = v283;
    *(v123 + v122) = v126;
    v159 = v126;

    v160 = [v123 contentView];
    [v160 addSubview:v159];

    [v123 setNeedsLayout];
    goto LABEL_78;
  }

  [v124 setFrame:{0.0, 0.0, v118, v120}];
  v125 = v283;
LABEL_78:
  v275 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView;
  v161 = *(v123 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView);
  v162 = v286;
  if (!v161)
  {
    goto LABEL_123;
  }

  type metadata accessor for PlatformSelectorView();
  v163 = swift_dynamicCastClass();
  if (!v163)
  {
    goto LABEL_123;
  }

  v164 = v163;
  if (v282)
  {
    goto LABEL_93;
  }

  if (v281)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 1)
    {
      goto LABEL_83;
    }

LABEL_93:

    v165 = 0;
    goto LABEL_94;
  }

  if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
  {
    goto LABEL_93;
  }

LABEL_83:
  v162 = swift_allocObject();
  *(v162 + 16) = v233;
  *(v162 + 32) = v125;

  v165 = 1;
LABEL_94:
  v273 = v161;
  v166 = sub_1000CAB9C(v162);

  if (v165)
  {
    v167 = v241;
  }

  else
  {
    v167 = v248;
  }

  v169 = &v164[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_text];
  *v169 = v167;
  v169[1] = v168;

  v170 = _swiftEmptyArrayStorage;
  *&v290 = _swiftEmptyArrayStorage;
  v171 = *(v166 + 2);
  v274 = v164;
  if (v171)
  {
    v172 = 0;
    v173 = v166 + 56;
    v270 = v171 - 1;
    v170 = _swiftEmptyArrayStorage;
    v271 = (v166 + 56);
    do
    {
      v272 = v170;
      v174 = &v173[32 * v172];
      v164 = v172;
      while (1)
      {
        if (v164 >= *(v166 + 2))
        {
          __break(1u);
          goto LABEL_131;
        }

        v175 = String._bridgeToObjectiveC()();
        v176 = [objc_opt_self() _systemImageNamed:v175];

        if (v176)
        {
          break;
        }

LABEL_101:
        ++v164;
        v174 += 32;
        if (v171 == v164)
        {
          v164 = v274;
          v170 = v272;
          goto LABEL_113;
        }
      }

      if (qword_10096CFC0 != -1)
      {
        swift_once();
      }

      v177 = [v176 imageWithTintColor:qword_1009CDD58];

      if (!v177)
      {
        goto LABEL_101;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v290 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v290 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v172 = v164 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v170 = v290;
      v178 = v270 == v164;
      v164 = v274;
      v173 = v271;
    }

    while (!v178);
  }

LABEL_113:
  v179 = OBJC_IVAR____TtC8AppStore20PlatformSelectorView_images;
  *&v164[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_images] = v170;

  v180 = *&v164[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_accessoryImageView];
  if (v282)
  {
    if (qword_10096CFC8 != -1)
    {
      swift_once();
    }

    v181 = v279;
  }

  else
  {
    v181 = 0;
  }

  [v180 setImage:v181];

  v182 = *&v164[v179];
  if (v182)
  {
    if (v182 >> 62)
    {
LABEL_131:
      v183 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v183 = *((v182 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v183 = 0;
  }

  *&v164[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_numberOfBadges] = v183;
  v184 = v285;
  *&v164[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_pageTraits] = v285;
  swift_unknownObjectRelease();
  v185 = swift_unknownObjectRetain();
  sub_1000C9724(v185, v186);
  [v184 pageMarginInsets];
  [v164 setLayoutMargins:?];
  [v164 setNeedsLayout];
  v290 = 0u;
  v291 = 0u;
  v287 = 0u;
  v288 = 0u;
  v187 = v243;
  static AutomationSemantics.productPage(elementName:id:parentId:)();
  sub_10002B894(&v287, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v290, &unk_1009711D0, &unk_1007B1A10);
  *&v290 = v166;
  *(&v290 + 1) = sub_1000CA47C;
  *&v291 = 0;

  sub_10002849C(&qword_1009872F0, qword_1007CFF28);
  sub_10049FB60();
  v188 = BidirectionalCollection<>.joined(separator:)();
  v190 = v189;

  *(&v291 + 1) = &type metadata for String;
  *&v290 = v188;
  *(&v290 + 1) = v190;
  v191 = v244;
  AutomationSemantics.attribute(key:value:)();
  LOBYTE(v116) = v246 + 8;
  v121 = *(v246 + 8);
  v192 = v247;
  (v121)(v187, v247);
  sub_10002B894(&v290, &unk_1009711D0, &unk_1007B1A10);
  *&v290 = v166;
  *(&v290 + 1) = sub_1000CA488;
  *&v291 = 0;
  v193 = BidirectionalCollection<>.joined(separator:)();
  v195 = v194;

  *(&v291 + 1) = &type metadata for String;
  *&v290 = v193;
  *(&v290 + 1) = v195;
  v196 = v245;
  AutomationSemantics.attribute(key:value:)();
  (v121)(v191, v192);
  sub_10002B894(&v290, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  (v121)(v196, v192);
  v125 = v283;
  v123 = v284;
  v162 = v286;
LABEL_123:
  v197 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView;
  v198 = *(v123 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView);
  if (!v198 || (type metadata accessor for PlatformSelectorView(), (v199 = swift_dynamicCastClass()) == 0))
  {

    goto LABEL_166;
  }

  v121 = v199;
  v273 = v197;
  if (v282)
  {
    goto LABEL_133;
  }

  if (v281)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 1)
    {
      goto LABEL_128;
    }

LABEL_133:

    v200 = 0;
    goto LABEL_134;
  }

  if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
  {
    goto LABEL_133;
  }

LABEL_128:
  v162 = swift_allocObject();
  *(v162 + 16) = v233;
  *(v162 + 32) = v125;

  v200 = 1;
LABEL_134:
  v272 = v198;
  v197 = sub_1000CAB9C(v162);

  if (v200)
  {
    v201 = v241;
  }

  else
  {
    v201 = v248;
  }

  if (v200)
  {
    v162 = v277;
  }

  else
  {
    v162 = v280;
  }

  v202 = (v121 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_text);
  *v202 = v201;
  v202[1] = v162;

  v203 = _swiftEmptyArrayStorage;
  *&v290 = _swiftEmptyArrayStorage;
  v204 = *(v197 + 2);
  v274 = v121;
  if (v204)
  {
    v205 = 0;
    v206 = v197 + 56;
    v271 = (v204 - 1);
    v203 = _swiftEmptyArrayStorage;
    v116 = UICubicTimingParameters_ptr;
    v123 = &selRef_numberOfSegments;
    v277 = v197 + 56;
    do
    {
      v280 = v203;
      v125 = &v206[32 * v205];
      v121 = v205;
      while (1)
      {
        if (v121 >= *(v197 + 2))
        {
          __break(1u);
          goto LABEL_176;
        }

        v162 = *(v125 - 2);

        v207 = String._bridgeToObjectiveC()();
        v208 = [objc_opt_self() _systemImageNamed:v207];

        if (v208)
        {
          break;
        }

LABEL_144:
        v121 = (v121 + 1);
        v125 += 32;
        if (v204 == v121)
        {
          v121 = v274;
          v203 = v280;
          goto LABEL_156;
        }
      }

      if (qword_10096CFC0 != -1)
      {
        swift_once();
      }

      v209 = [v208 imageWithTintColor:qword_1009CDD58];

      if (!v209)
      {
        goto LABEL_144;
      }

      v162 = &v290;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v290 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v290 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v205 = (v121 + 1);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v203 = v290;
      v178 = v271 == v121;
      v121 = v274;
      v206 = v277;
    }

    while (!v178);
  }

LABEL_156:
  v210 = OBJC_IVAR____TtC8AppStore20PlatformSelectorView_images;
  *(v121 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_images) = v203;

  v211 = *(v121 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_accessoryImageView);
  if (v282)
  {
    v123 = v284;
    if (qword_10096CFC8 != -1)
    {
      swift_once();
    }

    v212 = v279;
  }

  else
  {
    v212 = 0;
    v123 = v284;
  }

  [v211 setImage:v212];

  v213 = *(v121 + v210);
  if (v213)
  {
    if (v213 >> 62)
    {
      goto LABEL_208;
    }

    v214 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
    v214 = 0;
  }

  while (1)
  {
    *(v121 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_numberOfBadges) = v214;
    v215 = v285;
    *(v121 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_pageTraits) = v285;
    swift_unknownObjectRelease();
    v216 = swift_unknownObjectRetain();
    sub_1000C9724(v216, v217);
    [v215 pageMarginInsets];
    [v121 setLayoutMargins:?];
    [v121 setNeedsLayout];
    v290 = 0u;
    v291 = 0u;
    v287 = 0u;
    v288 = 0u;
    v218 = v243;
    static AutomationSemantics.productPage(elementName:id:parentId:)();
    sub_10002B894(&v287, &unk_1009711D0, &unk_1007B1A10);
    sub_10002B894(&v290, &unk_1009711D0, &unk_1007B1A10);
    *&v290 = v197;
    *(&v290 + 1) = sub_1000CA47C;
    *&v291 = 0;

    sub_10002849C(&qword_1009872F0, qword_1007CFF28);
    sub_10049FB60();
    v219 = BidirectionalCollection<>.joined(separator:)();
    v221 = v220;

    *(&v291 + 1) = &type metadata for String;
    *&v290 = v219;
    *(&v290 + 1) = v221;
    v116 = v244;
    AutomationSemantics.attribute(key:value:)();
    v121 = *(v246 + 8);
    v222 = v247;
    (v121)(v218, v247);
    sub_10002B894(&v290, &unk_1009711D0, &unk_1007B1A10);
    *&v290 = v197;
    *(&v290 + 1) = sub_1000CA488;
    *&v291 = 0;
    v223 = BidirectionalCollection<>.joined(separator:)();
    v225 = v224;

    *(&v291 + 1) = &type metadata for String;
    *&v290 = v223;
    *(&v290 + 1) = v225;
    v226 = v245;
    AutomationSemantics.attribute(key:value:)();
    (v121)(v116, v222);
    sub_10002B894(&v290, &unk_1009711D0, &unk_1007B1A10);
    UIView.setAutomationSemantics(_:)();

    (v121)(v226, v222);
    v125 = v283;
    v162 = v286;
    v197 = v273;
LABEL_166:
    if (v281)
    {
LABEL_176:
      v227 = _CocoaArrayWrapper.endIndex.getter();
      if (!v227)
      {
LABEL_177:

        goto LABEL_178;
      }
    }

    else
    {
      v227 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v227)
      {
        goto LABEL_177;
      }
    }

    if ((v162 & 0xC000000000000001) != 0)
    {

      v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      *&v290 = v125;
      if (!v121)
      {
        goto LABEL_178;
      }

LABEL_171:
      *&v287 = v121;
      type metadata accessor for MediaPlatform();
      sub_10049FC48(&qword_100975F18, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);

      LOBYTE(v116) = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v276)
      {
        v162 = v286;
        goto LABEL_181;
      }

      if (v116)
      {
        v228 = 1;
        goto LABEL_193;
      }

LABEL_190:
      *(v123 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
      sub_10057B5A4();
LABEL_195:
      v232 = *&v197[v123] != 0;
      goto LABEL_199;
    }

    if (!*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      v230 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_186:

      *&v290 = v125;
      if (v230)
      {
        *&v287 = v230;
        type metadata accessor for MediaPlatform();
        sub_10049FC48(&qword_100975F18, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
        v228 = dispatch thunk of static Equatable.== infix(_:_:)();

        if ((v116 & 1) == 0)
        {
          v231 = 0;
          goto LABEL_194;
        }
      }

      else
      {

        if ((v116 & 1) == 0)
        {
          goto LABEL_197;
        }

        v228 = 0;
      }

LABEL_193:
      v231 = *(v275 + v123) != 0;
LABEL_194:
      *(v123 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = v231;
      sub_10057B5A4();
      if ((v228 & 1) == 0)
      {
        goto LABEL_198;
      }

      goto LABEL_195;
    }

    v121 = *(v162 + 32);

    *&v290 = v125;
    if (v121)
    {
      goto LABEL_171;
    }

LABEL_178:
    if (!v276)
    {

      goto LABEL_190;
    }

    if (!v227)
    {
      break;
    }

    LOBYTE(v116) = 0;
LABEL_181:
    v229 = v227 - 1;
    if (__OFSUB__(v227, 1))
    {
      goto LABEL_204;
    }

    if ((v162 & 0xC000000000000001) != 0)
    {
      goto LABEL_205;
    }

    if ((v229 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v229 < *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v230 = *(v162 + 8 * v229 + 32);

      goto LABEL_186;
    }

    __break(1u);
LABEL_208:
    v214 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_197:
  *(v123 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
  sub_10057B5A4();
LABEL_198:
  v232 = 0;
LABEL_199:
  *(v123 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider) = v232;
  sub_10057B5B8();
  [v123 setNeedsLayout];

  swift_unknownObjectRelease();
}

uint64_t sub_10049FA28@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &unk_1009731E0, &unk_1007B0B60);
}

uint64_t sub_10049FA94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_10049FB60()
{
  result = qword_1009872F8;
  if (!qword_1009872F8)
  {
    sub_10002D1A8(&qword_1009872F0, qword_1007CFF28);
    sub_10049FBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009872F8);
  }

  return result;
}

unint64_t sub_10049FBE4()
{
  result = qword_100987300;
  if (!qword_100987300)
  {
    sub_10002D1A8(&qword_100987308, &unk_1007D0880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987300);
  }

  return result;
}

uint64_t sub_10049FC48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10049FC90()
{
  v0 = type metadata accessor for FontSource();
  v57 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v56 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v45 - v7;
  v9 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  __chkstk_darwin(v9 - 8);
  v49 = v45 - v10;
  v11 = type metadata accessor for InAppPurchaseLockupViewLayout.Metrics();
  sub_100005644(v11, qword_1009D1F00);
  v45[2] = sub_1000056A8(v11, qword_1009D1F00);
  if (qword_10096E510 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v3, qword_1009D1F18);
  v13 = *(v4 + 16);
  v13(v8, v12, v3);
  InAppPurchaseIconLayout.Metrics.overallSize.getter();
  v15 = v14;
  v17 = v16;
  v18 = *(v4 + 8);
  v18(v8, v3);
  v75 = v15;
  v76 = v17;
  v19 = v56;
  v13(v56, v12, v3);
  InAppPurchaseIconLayout.Metrics.overallSize.getter();
  v21 = v20;
  v23 = v22;
  v18(v19, v3);
  v74[0] = v21;
  v74[1] = v23;
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for CGSize(0);
  Conditional<>.init(regularValue:compactValue:)();
  v77 = &type metadata for Double;
  v78 = &protocol witness table for Double;
  v75 = 0x402E000000000000;
  if (qword_10096DCE8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for FontUseCase();
  v47 = sub_1000056A8(v24, qword_1009D0650);
  v25 = *(v24 - 8);
  v54 = *(v25 + 16);
  v55 = v25 + 16;
  v54(v2, v47, v24);
  v48 = enum case for FontSource.useCase(_:);
  v26 = v57;
  v27 = v57 + 104;
  v53 = *(v57 + 104);
  v53(v2);
  v56 = type metadata accessor for StaticDimension();
  v74[3] = v56;
  v74[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v74);
  v72 = v0;
  v73 = &protocol witness table for FontSource;
  v28 = sub_1000056E0(v71);
  v29 = *(v26 + 16);
  v29(v28, v2, v0);
  v50 = v29;
  StaticDimension.init(_:scaledLike:)();
  v52 = *(v26 + 8);
  v52(v2, v0);
  v54(v2, v47, v24);
  v30 = v48;
  (v53)(v2, v48, v0);
  v72 = v56;
  v73 = &protocol witness table for StaticDimension;
  sub_1000056E0(v71);
  v69 = v0;
  v70 = &protocol witness table for FontSource;
  v31 = sub_1000056E0(v68);
  v29(v31, v2, v0);
  v32 = v54;
  StaticDimension.init(_:scaledLike:)();
  v52(v2, v0);
  v51 = v24;
  v32(v2, v47, v24);
  v45[1] = v27;
  (v53)(v2, v30, v0);
  v69 = v56;
  v70 = &protocol witness table for StaticDimension;
  sub_1000056E0(v68);
  v66 = v0;
  v67 = &protocol witness table for FontSource;
  v33 = sub_1000056E0(v65);
  v47 = v26 + 16;
  v50(v33, v2, v0);
  StaticDimension.init(_:scaledLike:)();
  v57 = v26 + 8;
  v52(v2, v0);
  if (qword_10096DCF0 != -1)
  {
    swift_once();
  }

  v34 = v51;
  v46 = sub_1000056A8(v51, qword_1009D0668);
  v35 = v54;
  v54(v2, v46, v34);
  v36 = v48;
  v37 = v53;
  v53(v2);
  v66 = v56;
  v67 = &protocol witness table for StaticDimension;
  sub_1000056E0(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v38 = sub_1000056E0(v62);
  v50(v38, v2, v0);
  StaticDimension.init(_:scaledLike:)();
  v52(v2, v0);
  v35(v2, v46, v51);
  v37(v2, v36, v0);
  v39 = v56;
  v63 = v56;
  v64 = &protocol witness table for StaticDimension;
  sub_1000056E0(v62);
  v60 = v0;
  v61 = &protocol witness table for FontSource;
  v40 = sub_1000056E0(v59);
  v41 = v50;
  v50(v40, v2, v0);
  StaticDimension.init(_:scaledLike:)();
  v42 = v52;
  v52(v2, v0);
  v54(v2, v46, v51);
  (v53)(v2, v36, v0);
  v60 = v39;
  v61 = &protocol witness table for StaticDimension;
  sub_1000056E0(v59);
  v58[3] = v0;
  v58[4] = &protocol witness table for FontSource;
  v43 = sub_1000056E0(v58);
  v41(v43, v2, v0);
  StaticDimension.init(_:scaledLike:)();
  v42(v2, v0);
  return InAppPurchaseLockupViewLayout.Metrics.init(iconSize:iconMargin:titlePrimaryLineSpace:titleSecondaryLineSpace:subtitleLineSpace:descriptionPrimaryLineSpace:descriptionSecondaryLineSpace:offerButtonMargin:offerButtonSize:isHeightConstrained:)();
}

uint64_t sub_1004A04D4()
{
  v0 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  sub_100005644(v0, qword_1009D1F18);
  sub_1000056A8(v0, qword_1009D1F18);
  return InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
}

uint64_t sub_1004A0534()
{
  v0 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_100005644(v0, qword_100987310);
  sub_1000056A8(v0, qword_100987310);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

id sub_1004A05D0()
{
  v1 = v0;
  v2 = type metadata accessor for InAppPurchaseTheme();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v39 - v6;
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v13 = *&v0[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_iconView];
  v14 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  v15 = *(v3 + 16);
  v15(v12, &v1[v14], v2);
  v16 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v3 + 24))(v13 + v16, v12, v2);
  swift_endAccess();
  v15(v9, (v13 + v16), v2);
  sub_1002EBEE4(v9);
  v17 = *(v3 + 8);
  v17(v9, v2);
  v41 = v17;
  v17(v12, v2);
  v42 = v1;
  v18 = &v1[v14];
  v19 = v39;
  v20 = v40;
  v15(v39, v18, v2);
  (*(v3 + 104))(v20, enum case for InAppPurchaseTheme.spotlight(_:), v2);
  sub_1004A2280(&unk_100970E30, &type metadata accessor for InAppPurchaseTheme, &protocol conformance descriptor for InAppPurchaseTheme);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v45 == v43 && v46 == v44)
  {
    v21 = v20;
    v22 = v41;
    v41(v21, v2);
    v22(v19, v2);

LABEL_5:
    v26 = v42;
    v27 = *&v42[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_titleLabel];
    v28 = [v42 tintColor];
    [v27 setTextColor:v28];

    v29 = *&v26[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel];
    if (v29)
    {
      v30 = [v26 tintColor];
      [v29 setTextColor:v30];
    }

    v31 = *&v26[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_descriptionLabel];
    v32 = [v26 tintColor];
    [v31 setTextColor:v32];
    goto LABEL_11;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v24 = v20;
  v25 = v41;
  v41(v24, v2);
  v25(v19, v2);

  if (v23)
  {
    goto LABEL_5;
  }

  v26 = v42;
  v33 = *&v42[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_titleLabel];
  sub_100028BB8();
  v34 = static UIColor.primaryText.getter();
  [v33 setTextColor:v34];

  v35 = *&v26[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel];
  if (v35)
  {
    v36 = static UIColor.primaryText.getter();
    [v35 setTextColor:v36];
  }

  v37 = *&v26[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_descriptionLabel];
  v32 = static UIColor.secondaryText.getter();
  [v37 setTextColor:v32];
LABEL_11:

  return [v26 setNeedsLayout];
}

char *sub_1004A0A78(int a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DirectionalTextAlignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_theme;
  v15 = enum case for InAppPurchaseTheme.infer(_:);
  v16 = type metadata accessor for InAppPurchaseTheme();
  (*(*(v16 - 8) + 104))(&v2[v14], v15, v16);
  v2[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_isHeightConstrained] = 0;
  if (qword_10096E510 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v11, qword_1009D1F18);
  InAppPurchaseIconLayout.Metrics.mainIconDimension.getter();
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v17 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  v54 = a1;
  *&v2[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_iconView] = sub_1002EB7C0(v13, a1 & 1);
  if (qword_10096DCE8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D0650);
  v20 = *(v18 - 8);
  v21 = *(v20 + 16);
  v53 = v19;
  v59 = v21;
  (v21)(v10);
  v58 = *(v20 + 56);
  v58(v10, 0, 1, v18);
  v22 = *(v5 + 104);
  v57 = enum case for DirectionalTextAlignment.none(_:);
  v56 = v22;
  v22(v7);
  v23 = type metadata accessor for DynamicTypeLabel();
  v24 = objc_allocWithZone(v23);
  *&v2[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096DCF0 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v18, qword_1009D0668);
  v59(v10, v25, v18);
  v58(v10, 0, 1, v18);
  v56(v7, v57, v4);
  v26 = objc_allocWithZone(v23);
  *&v2[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_descriptionLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v27 = objc_allocWithZone(type metadata accessor for OfferButton());
  v29 = sub_1000F5284(0, v28);
  v30 = 0;
  *&v2[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_offerButton] = v29;
  if (v54)
  {
    v59(v10, v53, v18);
    v58(v10, 0, 1, v18);
    v56(v7, v57, v4);
    v31 = objc_allocWithZone(v23);
    v30 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  }

  *&v2[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel] = v30;
  v32 = type metadata accessor for InAppPurchaseLockupView(0);
  v61.receiver = v2;
  v61.super_class = v32;
  v33 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v37 = v33;
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_10096E518 != -1)
  {
    swift_once();
  }

  v38 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_1000056A8(v38, qword_100987310);
  v60 = v37;
  v39 = v37;
  Conditional.evaluate(with:)();

  v40 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_titleLabel;
  UILabel.alignment.setter();
  v41 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel;
  if (*&v39[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel])
  {
    UILabel.alignment.setter();
  }

  v42 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_descriptionLabel;
  UILabel.alignment.setter();
  v43 = *&v39[v42];
  sub_100028BB8();
  v44 = v43;
  v45 = static UIColor.secondaryText.getter();
  [v44 setTextColor:v45];

  v46 = *&v39[v40];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [v39 addSubview:*&v39[v40]];
  v47 = *&v39[v42];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [v39 addSubview:*&v39[v42]];
  [v39 addSubview:*&v39[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_offerButton]];
  [v39 addSubview:*&v39[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_iconView]];
  v48 = *&v39[v41];
  if (v48)
  {
    v49 = v48;
    dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();
    [v39 addSubview:v49];
  }

  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1007B10D0;
  *(v50 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v50 + 40) = &protocol witness table for UITraitLayoutDirection;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v39;
}

void sub_1004A12F0()
{
  v1 = v0;
  v2 = type metadata accessor for InAppPurchaseTheme();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for InAppPurchaseLockupView(0);
  v21.receiver = v0;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "tintColorDidChange");
  v10 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  (*(v3 + 16))(v8, &v1[v10], v2);
  (*(v3 + 104))(v5, enum case for InAppPurchaseTheme.spotlight(_:), v2);
  sub_1004A2280(&unk_100970E30, &type metadata accessor for InAppPurchaseTheme, &protocol conformance descriptor for InAppPurchaseTheme);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v20[3] == v20[1] && v20[4] == v20[2])
  {
    v11 = *(v3 + 8);
    v11(v5, v2);
    v11(v8, v2);
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v13 = *(v3 + 8);
    v13(v5, v2);
    v13(v8, v2);

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  v14 = *&v1[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_titleLabel];
  v15 = [v1 tintColor];
  [v14 setTextColor:v15];

  v16 = *&v1[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel];
  if (v16)
  {
    v17 = [v1 tintColor];
    [v16 setTextColor:v17];
  }

  v18 = *&v1[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_descriptionLabel];
  v19 = [v1 tintColor];
  [v18 setTextColor:v19];
}

uint64_t sub_1004A1658()
{
  v1 = v0;
  v44 = type metadata accessor for LayoutRect();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for InAppPurchaseLockupViewLayout();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InAppPurchaseLockupViewLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for InAppPurchaseLockupView(0);
  v49.receiver = v1;
  v49.super_class = v10;
  objc_msgSendSuper2(&v49, "layoutSubviews");
  if (qword_10096E508 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v4, qword_1009D1F00);
  v38 = v5;
  v12 = *(v5 + 16);
  v12(v9, v11, v4);
  v13 = *&v1[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_offerButton];
  v36 = v10;
  LayoutMarginsAware<>.layoutFrame.getter();
  v14 = &v13[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  if (v13[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v15 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(&v13[v15], &v46);
    sub_10002A400(&v46, v47);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v17 = v16;
    v19 = v18;
    sub_100007000(&v46);
    *v14 = v17;
    *(v14 + 1) = v19;
    v14[16] = 0;
  }

  InAppPurchaseLockupViewLayout.Metrics.offerButtonSize.setter();
  InAppPurchaseLockupViewLayout.Metrics.isHeightConstrained.setter();
  v12(v37, v9, v4);
  v20 = *&v1[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_iconView];
  v47 = type metadata accessor for InAppPurchaseView(0);
  v48 = &protocol witness table for UIView;
  v46 = v20;
  v21 = *&v1[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_titleLabel];
  v22 = type metadata accessor for DynamicTypeLabel();
  v45[18] = v22;
  v45[19] = &protocol witness table for UILabel;
  v45[15] = v21;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel];
  if (v23)
  {
    v24 = &protocol witness table for UILabel;
    v25 = v22;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v45[11] = 0;
    v45[12] = 0;
  }

  v45[10] = v23;
  v45[13] = v25;
  v45[14] = v24;
  v26 = *&v1[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_descriptionLabel];
  v45[9] = &protocol witness table for UILabel;
  v45[8] = v22;
  v45[5] = v26;
  v27 = type metadata accessor for OfferButton();
  v45[4] = &protocol witness table for UIView;
  v45[3] = v27;
  v45[0] = v13;
  v28 = v20;
  v29 = v21;
  v30 = v23;
  v31 = v26;
  v32 = v13;
  v33 = v39;
  InAppPurchaseLockupViewLayout.init(metrics:iconView:titleText:subtitleText:descriptionText:offerButton:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v34 = v41;
  InAppPurchaseLockupViewLayout.placeChildren(relativeTo:in:)();
  (*(v43 + 8))(v34, v44);
  (*(v40 + 8))(v33, v42);
  return (*(v38 + 8))(v9, v4);
}

id sub_1004A1CFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseLockupView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseLockupView(uint64_t a1)
{
  result = qword_100987358;
  if (!qword_100987358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004A1E44(uint64_t a1)
{
  result = type metadata accessor for InAppPurchaseTheme();
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

double sub_1004A1F00(void *a1, double a2, double a3)
{
  v4 = type metadata accessor for OfferButtonMetrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for InAppPurchaseLockupViewLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E508 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v11, qword_1009D1F00);
  (*(v12 + 16))(v14, v15, v11);
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

  v18 = sub_1000056A8(v4, v17);
  (*(v5 + 16))(v7, v18, v4);

  (*(v5 + 32))(v10, v7, v4);
  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  InAppPurchaseLockupViewLayout.Metrics.offerButtonSize.setter();
  type metadata accessor for InAppPurchaseLockupViewLayout();
  sub_1004A2280(&qword_100986CC0, &type metadata accessor for InAppPurchaseLockupViewLayout, &protocol conformance descriptor for InAppPurchaseLockupViewLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v20 = v19;
  (*(v5 + 8))(v10, v4);
  (*(v12 + 8))(v14, v11);
  return v20;
}

uint64_t sub_1004A2280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004A22C8(void *a1)
{
  if (qword_10096E518 != -1)
  {
    swift_once();
  }

  v2 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_1000056A8(v2, qword_100987310);
  v3 = a1;
  Conditional.evaluate(with:)();

  UILabel.alignment.setter();
  if (*&v3[OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel])
  {
    UILabel.alignment.setter();
  }

  return UILabel.alignment.setter();
}

char *sub_1004A23B8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] = 0;
  v4 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer;
  *&v2[v4] = [objc_allocWithZone(CALayer) init];
  v5 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshView;
  *&v2[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshTransforms;
  type metadata accessor for TodayCardMeshTransforms();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *&v2[v6] = v7;
  v8 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_riverViewStyling;
  v67 = type metadata accessor for RiverViewStyling();
  v69 = *(v67 - 8);
  (*(v69 + 16))(&v2[v8], a1, v67);
  v9 = sub_1004A58D8(0.0, 0.0, 1.0, 0.0);
  v10 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_leftMaskLayer;
  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_leftMaskLayer] = v9;
  v11 = v10;
  v64 = v10;
  v12 = sub_1004A58D8(1.0, 0.0, 0.0, 0.0);
  v70 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_rightMaskLayer;
  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_rightMaskLayer] = v12;
  v13 = sub_1004A58D8(0.0, 0.0, 0.0, 1.0);
  v14 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topMaskLayer;
  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topMaskLayer] = v13;
  v15 = sub_1004A58D8(0.0, 1.0, 0.0, 0.0);
  v65 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomMaskLayer;
  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomMaskLayer] = v15;
  v16 = *&v2[v14];
  v17 = *&v2[v11];
  v18 = objc_allocWithZone(CAGradientLayer);
  v19 = v16;
  v20 = v17;
  v21 = [v18 init];
  [v21 setType:kCAGradientLayerAxial];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007B15F0;
  sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
  *(v22 + 32) = NSNumber.init(floatLiteral:)(0.25);
  *(v22 + 40) = NSNumber.init(floatLiteral:)(0.75);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 setLocations:isa];

  [v21 setStartPoint:{0.0, 0.0}];
  [v21 setEndPoint:{1.0, 1.0}];
  [v19 setMask:v20];
  [v21 setMask:v19];

  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topLeftGradientLayer] = v21;
  v24 = *&v2[v14];
  v25 = *&v2[v70];
  v26 = objc_allocWithZone(CAGradientLayer);
  v27 = v24;
  v28 = v25;
  v29 = [v26 init];
  [v29 setType:kCAGradientLayerAxial];
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1007B15F0;
  *(v30 + 32) = NSNumber.init(floatLiteral:)(0.25);
  *(v30 + 40) = NSNumber.init(floatLiteral:)(0.75);
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v29 setLocations:v31];

  [v29 setStartPoint:{1.0, 0.0}];
  [v29 setEndPoint:{0.0, 1.0}];
  [v27 setMask:v28];
  [v29 setMask:v27];

  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topRightGradientLayer] = v29;
  v32 = *&v2[v65];
  v33 = *&v2[v64];
  v34 = objc_allocWithZone(CAGradientLayer);
  v35 = v32;
  v36 = v33;
  v37 = [v34 init];
  [v37 setType:kCAGradientLayerAxial];
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1007B15F0;
  *(v38 + 32) = NSNumber.init(floatLiteral:)(0.25);
  *(v38 + 40) = NSNumber.init(floatLiteral:)(0.75);
  v39 = Array._bridgeToObjectiveC()().super.isa;

  [v37 setLocations:v39];

  [v37 setStartPoint:{0.0, 1.0}];
  [v37 setEndPoint:{1.0, 0.0}];
  [v35 setMask:v36];
  [v37 setMask:v35];

  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomLeftGradientLayer] = v37;
  v40 = *&v2[v65];
  v41 = *&v2[v70];
  v42 = objc_allocWithZone(CAGradientLayer);
  v43 = v40;
  v44 = v41;
  v45 = [v42 init];
  [v45 setType:kCAGradientLayerAxial];
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1007B15F0;
  *(v46 + 32) = NSNumber.init(floatLiteral:)(0.25);
  *(v46 + 40) = NSNumber.init(floatLiteral:)(0.75);
  v47 = Array._bridgeToObjectiveC()().super.isa;

  [v45 setLocations:v47];

  [v45 setStartPoint:{1.0, 1.0}];
  [v45 setEndPoint:{0.0, 0.0}];
  [v43 setMask:v44];
  [v45 setMask:v43];

  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomRightGradientLayer] = v45;
  *&v2[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_overlayLayer] = sub_1004A5B04();
  v72.receiver = v2;
  v72.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v72, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 whiteColor];
  [v50 setBackgroundColor:v51];

  v52 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshView;
  [v50 addSubview:*&v50[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshView]];
  v53 = [*&v50[v52] layer];

  v54 = sub_100246F70();

  [v53 setMeshTransform:v54];

  v55 = [*&v50[v52] layer];
  v56 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer;
  [v55 addSublayer:*&v50[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer]];

  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topLeftGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topRightGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomLeftGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomRightGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_overlayLayer]];
  v50[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] = 1;
  v57 = objc_opt_self();
  v58 = [v57 defaultCenter];
  [v58 addObserver:v50 selector:"reduceMotionStatusDidChange:" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  v59 = [v57 defaultCenter];
  [v59 addObserver:v50 selector:"willEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

  v60 = [v57 defaultCenter];
  [v60 addObserver:v50 selector:"didEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1007B10D0;
  *(v61 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v61 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v71[3] = ObjectType;
  v71[0] = v50;
  v62 = v50;
  UIView.registerForTraitChanges(_:target:action:)();

  swift_unknownObjectRelease();

  (*(v69 + 8))(a1, v67);
  sub_100007000(v71);
  return v62;
}

void sub_1004A2DB8(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();

  LOBYTE(a1) = sub_1006E21AC(v4, a1);

  if (a1)
  {
    return;
  }

  v5 = *&v1[v3];
  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_1004A2ECC();
    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v1[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] == 1 && (v6 = [v1 window]) != 0 && (v6, (objc_msgSend(v1, "isHidden") & 1) == 0) && !UIAccessibilityIsReduceMotionEnabled())
  {
    sub_1004A3194();
    sub_1004A2ECC();
    sub_1004A3C4C();
    sub_1004A41C4();
    sub_1004A4308();
    sub_1004A3E44();
  }

  else
  {
    sub_1004A3194();
  }
}

uint64_t sub_1004A2ECC()
{
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007CFF90;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topLeftGradientLayer];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topRightGradientLayer];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomLeftGradientLayer];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomRightGradientLayer];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer];
  *(inited + 64) = v6;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshView];
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  *(inited + 72) = [v7 layer];
  *(inited + 80) = [v0 layer];
  v13 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  for (i = *(inited + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v15 = i;
    [i removeAllAnimations];

    if (v13)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_23;
      }

      v16 = *(inited + 40);
    }

    v17 = v16;
    [v16 removeAllAnimations];

    if (v13)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_23;
      }

      v18 = *(inited + 48);
    }

    v19 = v18;
    [v18 removeAllAnimations];

    if (v13)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_23;
      }

      v20 = *(inited + 56);
    }

    v21 = v20;
    [v20 removeAllAnimations];

    if (v13)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_23;
      }

      v22 = *(inited + 64);
    }

    v23 = v22;
    [v22 removeAllAnimations];

    if (v13)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
      {
        goto LABEL_23;
      }

      v24 = *(inited + 72);
    }

    v25 = v24;
    [v24 removeAllAnimations];

    if (v13)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 7uLL)
    {
      v26 = *(inited + 80);
      goto LABEL_22;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
  v27 = v26;
  [v26 removeAllAnimations];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_1004A3194()
{
  v2 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
    {
      return;
    }

LABEL_3:
    v4 = *(v0 + OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topLeftGradientLayer);
    swift_beginAccess();
    v5 = *(v0 + v2);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v42 = v4;
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v6 = *(v5 + 32);
      v7 = v4;
      v8 = v6;
    }

    v9 = v8;
    swift_endAccess();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    inited = swift_initStackObject();
    v46 = xmmword_1007B15F0;
    *(inited + 16) = xmmword_1007B15F0;
    v1 = &selRef_loadView;
    *(inited + 32) = [v9 CGColor];
    v11 = [v9 colorWithAlphaComponent:0.0];
    v12 = [v11 CGColor];

    *(inited + 40) = v12;
    sub_1002A4E98(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setColors:isa];

    v14 = *(v0 + OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topRightGradientLayer);
    swift_beginAccess();
    v15 = *(v0 + v2);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v43 = v14;
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        goto LABEL_24;
      }

      v16 = *(v15 + 40);
      v17 = v14;
      v18 = v16;
    }

    v19 = v18;
    swift_endAccess();
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1007B15F0;
    *(v20 + 32) = [v19 CGColor];
    v21 = [v19 colorWithAlphaComponent:0.0];
    v22 = [v21 CGColor];

    *(v20 + 40) = v22;
    sub_1002A4E98(v20);
    swift_setDeallocating();
    swift_arrayDestroy();
    v23 = Array._bridgeToObjectiveC()().super.isa;

    [v14 setColors:v23];

    v4 = *(v0 + OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomLeftGradientLayer);
    swift_beginAccess();
    v24 = *(v0 + v2);
    if ((v24 & 0xC000000000000001) == 0)
    {
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        __break(1u);
        goto LABEL_26;
      }

      v25 = *(v24 + 48);
      v26 = v4;
      v27 = v25;
      goto LABEL_12;
    }

LABEL_22:
    v44 = v4;
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
    v28 = v27;
    swift_endAccess();
    v29 = swift_initStackObject();
    *(v29 + 16) = v46;
    *(v29 + 32) = [v28 v1[347]];
    v30 = [v28 colorWithAlphaComponent:0.0];
    v31 = [v30 v1[347]];

    *(v29 + 40) = v31;
    sub_1002A4E98(v29);
    swift_setDeallocating();
    swift_arrayDestroy();
    v32 = Array._bridgeToObjectiveC()().super.isa;

    [v4 setColors:v32];

    v14 = *(v0 + OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomRightGradientLayer);
    swift_beginAccess();
    v33 = *(v0 + v2);
    if ((v33 & 0xC000000000000001) == 0)
    {
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
      {
        v34 = *(v33 + 56);
        v35 = v14;
        v36 = v34;
LABEL_15:
        v37 = v36;
        swift_endAccess();
        v38 = swift_initStackObject();
        *(v38 + 16) = v46;
        *(v38 + 32) = [v37 v1[347]];
        v39 = [v37 colorWithAlphaComponent:0.0];
        v40 = [v39 v1[347]];

        *(v38 + 40) = v40;
        sub_1002A4E98(v38);
        swift_setDeallocating();
        swift_arrayDestroy();
        v41 = Array._bridgeToObjectiveC()().super.isa;

        [v14 setColors:v41];

        return;
      }

LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    v45 = v14;
    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_15;
  }

  if (_CocoaArrayWrapper.endIndex.getter() >= 4)
  {
    goto LABEL_3;
  }
}

void sub_1004A3758()
{
  if (v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] == 1 && (v1 = [v0 window]) != 0 && (v1, (objc_msgSend(v0, "isHidden") & 1) == 0) && !UIAccessibilityIsReduceMotionEnabled())
  {
    v5 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer];
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 animationForKey:v6];

    if (v7)
    {
    }

    else
    {
      sub_1004A3194();
      sub_1004A2ECC();
      sub_1004A3C4C();
      sub_1004A41C4();
      sub_1004A4308();
    }

    sub_1004A3E44();
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 animationForKey:v3];

    if (v4)
    {

      sub_1004A4048();
    }
  }
}

id sub_1004A38D4()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshView];
  [v0 bounds];
  v2 = -CGRectGetMidY(v24);
  [v0 bounds];
  Width = CGRectGetWidth(v25);
  [v0 bounds];
  Height = CGRectGetHeight(v26);
  [v1 setFrame:{0.0, v2, Width, Height + Height}];
  v5 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer];
  [v0 bounds];
  [v5 frame];
  [v5 setFrame:?];
  [v0 bounds];
  MidY = CGRectGetMidY(v27);
  [v5 frame];
  [v5 setFrame:{0.0, MidY}];
  [v0 bounds];
  v7 = CGRectGetWidth(v28);
  [v0 bounds];
  v8 = CGRectGetHeight(v29);
  v9 = hypot(v7, v8) * 1.2;
  [v0 bounds];
  v10 = CGRectGetWidth(v30);
  v11 = v10 + v10;
  if (v11 > v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  [v0 bounds];
  v13 = CGRectGetHeight(v31);
  v14 = v13 + v13;
  if (v14 > v9)
  {
    v9 = v14;
  }

  [v0 bounds];
  v15 = (v12 - CGRectGetWidth(v32)) * -0.5;
  [v0 bounds];
  v16 = (v9 - CGRectGetHeight(v33)) * -0.5;
  [*&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topRightGradientLayer] setFrame:{v15, v16, v12, v9}];
  v17 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topLeftGradientLayer;
  [*&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topLeftGradientLayer] setFrame:{v15, v16, v12, v9}];
  [*&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomLeftGradientLayer] setFrame:{v15, v16, v12, v9}];
  [*&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomRightGradientLayer] setFrame:{v15, v16, v12, v9}];
  [*&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_overlayLayer] setFrame:{v15, v16, v12, v9}];
  v18 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topMaskLayer];
  [*&v0[v17] bounds];
  [v18 setFrame:?];
  v19 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomMaskLayer];
  [*&v0[v17] bounds];
  [v19 setFrame:?];
  v20 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_leftMaskLayer];
  [*&v0[v17] bounds];
  [v20 setFrame:?];
  v21 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_rightMaskLayer];
  [*&v0[v17] bounds];
  return [v21 setFrame:?];
}

void sub_1004A3C4C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(CABasicAnimation) init];
  v3 = String._bridgeToObjectiveC()();
  [v2 setKeyPath:v3];

  v4 = sub_100246F70();
  [v2 setFromValue:v4];

  v5 = sub_100246FD0();
  [v2 setToValue:v5];

  v6 = v2;
  [v6 setDuration:3.5];
  [v6 setAutoreverses:1];
  LODWORD(v7) = 2139095039;
  [v6 setRepeatCount:v7];
  v8 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v9) = 1054280253;
  LODWORD(v10) = 1056293519;
  LODWORD(v11) = 1.0;
  v12 = [v8 initWithControlPoints:v9 :0.0 :v10 :v11];
  [v6 setTimingFunction:v12];

  v13 = [*(v1 + OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshView) layer];
  v14 = String._bridgeToObjectiveC()();
  [v13 addAnimation:v6 forKey:v14];
}

void sub_1004A3E44()
{
  v1 = [v0 layer];
  [v1 speed];
  v3 = v2;

  if (v3 != 1.0)
  {
    v4 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 animationForKey:v5];

    if (v6)
    {

      v7 = [v0 layer];
      [v7 timeOffset];
      v9 = v8;

      v10 = [v0 layer];
      LODWORD(v11) = 1.0;
      [v10 setSpeed:v11];

      v12 = [v0 layer];
      [v12 setTimeOffset:0.0];

      v13 = [v0 layer];
      [v13 setBeginTime:0.0];

      v14 = [v0 layer];
      [v14 convertTime:0 fromLayer:CACurrentMediaTime()];
      v16 = v15;

      v17 = [v0 layer];
      [v17 setBeginTime:v16 - v9];
    }
  }
}

void sub_1004A4048()
{
  v1 = [v0 layer];
  [v1 speed];
  v3 = v2;

  if (v3 != 0.0)
  {
    v4 = *&v0[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 animationForKey:v5];

    if (v6)
    {

      v7 = [v0 layer];
      [v7 convertTime:0 fromLayer:CACurrentMediaTime()];
      v9 = v8;

      v10 = [v0 layer];
      [v10 setSpeed:0.0];

      v11 = [v0 layer];
      [v11 setTimeOffset:v9];
    }
  }
}

void sub_1004A41C4()
{
  v1 = [objc_allocWithZone(CABasicAnimation) init];
  v2 = String._bridgeToObjectiveC()();
  [v1 setKeyPath:v2];

  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v1 setToValue:isa];

  v4 = v1;
  [v4 setDuration:20.0];
  LODWORD(v5) = 2139095039;
  [v4 setRepeatCount:v5];

  v6 = *(v0 + OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer);
  v7 = String._bridgeToObjectiveC()();
  [v6 addAnimation:v4 forKey:v7];
}

void sub_1004A4308()
{
  v4 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v101 = v0;
  v5 = *&v0[v4];
  if (v5 >> 62)
  {
    goto LABEL_155;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:
    v6 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_riverViewStyling;
    v7 = v101;
    RiverViewStyling.speed.getter();
    v9 = v8;
    RiverViewStyling.itemSize.getter();
    v11 = v10;
    v12 = &v101[v6];
    RiverViewStyling.interItemSpacing.getter();
    v14 = v13;
    v15 = *&v101[v4];
    if (!(v15 >> 62))
    {
      v7 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v7 >> 1;
      goto LABEL_5;
    }

    v97 = _CocoaArrayWrapper.endIndex.getter();
    if (v97 < -1)
    {
      __break(1u);
LABEL_159:
      if (v6 < 0)
      {
        v1 = v6;
      }

      else
      {
        v1 = v16;
      }

      v97 = _CocoaArrayWrapper.endIndex.getter();
      if (v97 < 0)
      {
        __break(1u);
        goto LABEL_181;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= v12)
      {
        goto LABEL_7;
      }

LABEL_164:
      __break(1u);
LABEL_165:
      v30 = _CocoaArrayWrapper.endIndex.getter();
      if (v30 >= v12)
      {
        goto LABEL_26;
      }

LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    while (1)
    {
      v7 = v97;
      v12 = v97 / 2;
LABEL_5:
      swift_beginAccess();
      v6 = *&v101[v4];
      v16 = v6 & 0xFFFFFFFFFFFFFF8;
      v2 = v6 >> 62;
      if (v6 >> 62)
      {
        goto LABEL_159;
      }

      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < v12)
      {
        goto LABEL_164;
      }

LABEL_7:
      if ((v6 & 0xC000000000000001) != 0 && v7 + 1 > 2)
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);

        v17 = 0;
        do
        {
          v18 = v17 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v17);
          v17 = v18;
        }

        while (v12 != v18);
        if (!v2)
        {
LABEL_12:
          v19 = 0;
          v20 = v6 & 0xFFFFFFFFFFFFFF8;
          v1 = v20 + 32;
          v21 = (2 * v12) | 1;
          goto LABEL_15;
        }
      }

      else
      {

        if (!v2)
        {
          goto LABEL_12;
        }
      }

      v20 = _CocoaArrayWrapper.subscript.getter();
      v1 = v22;
      v19 = v23;
      v21 = v24;
LABEL_15:
      swift_endAccess();
      if ((v21 & 1) == 0)
      {
        goto LABEL_16;
      }

      v3 = type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v26 = swift_dynamicCastClass();
      if (!v26)
      {
        swift_unknownObjectRelease();
        v26 = _swiftEmptyArrayStorage;
      }

      v27 = v26[2];

      if (__OFSUB__(v21 >> 1, v19))
      {
        __break(1u);
LABEL_177:
        swift_unknownObjectRelease();
LABEL_16:
        sub_1005E7C78(v20, v1, v19, v21);
        v7 = v25;
        goto LABEL_23;
      }

      if (v27 != (v21 >> 1) - v19)
      {
        goto LABEL_177;
      }

      v7 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v7)
      {
        goto LABEL_24;
      }

      v7 = _swiftEmptyArrayStorage;
LABEL_23:
      swift_unknownObjectRelease();
LABEL_24:
      v104 = v7;
      v28 = *&v101[v4];
      if (v28 >> 62)
      {
        goto LABEL_165;
      }

      v29 = v28 & 0xFFFFFFFFFFFFFF8;
      v30 = *(v29 + 16);
      if (v30 < v12)
      {
        goto LABEL_166;
      }

LABEL_26:
      swift_beginAccess();
      v7 = *&v101[v4];
      v29 = v7 & 0xFFFFFFFFFFFFFF8;
      v4 = v7 >> 62;
      if (!(v7 >> 62))
      {
        v31 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31 >= v12)
        {
          if (v31 >= v30)
          {
LABEL_29:
            if ((v7 & 0xC000000000000001) == 0 || v12 == v30)
            {

              if (!v4)
              {
                goto LABEL_36;
              }
            }

            else
            {
              if (v12 >= v30)
              {
                __break(1u);
                goto LABEL_178;
              }

              sub_100005744(0, &qword_100970180, UIColor_ptr);

              v32 = v12;
              do
              {
                v33 = v32 + 1;
                _ArrayBuffer._typeCheckSlowPath(_:)(v32);
                v32 = v33;
              }

              while (v30 != v33);
              if (!v4)
              {
LABEL_36:
                v7 &= 0xFFFFFFFFFFFFFF8uLL;
                v1 = v7 + 32;
                v30 = (2 * v30) | 1;
                goto LABEL_39;
              }
            }

            v7 = _CocoaArrayWrapper.subscript.getter();
            v1 = v34;
            v12 = v35;
            v30 = v36;
LABEL_39:
            swift_endAccess();
            if ((v30 & 1) == 0)
            {
LABEL_40:
              sub_1005E7C78(v7, v1, v12, v30);
              v38 = v37;
              goto LABEL_47;
            }

            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v39 = swift_dynamicCastClass();
            if (!v39)
            {
              swift_unknownObjectRelease();
              v39 = _swiftEmptyArrayStorage;
            }

            v40 = v39[2];

            if (__OFSUB__(v30 >> 1, v12))
            {
LABEL_178:
              __break(1u);
            }

            else if (v40 == (v30 >> 1) - v12)
            {
              v38 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (!v38)
              {
                v38 = _swiftEmptyArrayStorage;
LABEL_47:
                swift_unknownObjectRelease();
              }

              v103 = v38;
              sub_1004A51CC(2);
              sub_1004A51CC(2);
              v12 = *&v101[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topLeftGradientLayer];
              v30 = v104;
              v3 = (v104 & 0xFFFFFFFFFFFFFF8);
              if (!(v104 >> 62))
              {
                v2 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_50:
                v4 = v30 & 0xC000000000000001;
                v98 = v12;
                v102 = v3;
                if (!v2)
                {
LABEL_71:
                  v50 = (v11 + v14) / v9;
                  v51 = (v50 + v50) * 0.15;
                  v52 = _swiftEmptyArrayStorage[2];
                  if (v52)
                  {
                    specialized ContiguousArray.reserveCapacity(_:)();
                    v53 = 5;
                    v54 = v30;
                    do
                    {
                      v55 = _swiftEmptyArrayStorage[v53];
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      v53 += 2;
                      --v52;
                    }

                    while (v52);
                  }

                  else
                  {

                    v54 = v30;
                  }

                  v1 = 0xEE006E6F6974616DLL;
                  v56 = sub_1004A5F80(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, v50 * 0.5);

                  v57 = String._bridgeToObjectiveC()();
                  [v98 addAnimation:v56 forKey:v57];

                  v99 = *&v101[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_topRightGradientLayer];
                  if (v2)
                  {
                    v58 = 0;
                    while (1)
                    {
                      if (v4)
                      {
                        v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        v60 = v58 + 1;
                        if (__OFADD__(v58, 1))
                        {
                          goto LABEL_148;
                        }
                      }

                      else
                      {
                        if (v58 >= v3[2])
                        {
                          goto LABEL_149;
                        }

                        v59 = *(v54 + 8 * v58 + 32);
                        v60 = v58 + 1;
                        if (__OFADD__(v58, 1))
                        {
                          goto LABEL_148;
                        }
                      }

                      if (v58)
                      {
                        v1 = v59;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_100144208(0, _swiftEmptyArrayStorage[2] + 1, 1);
                        }

                        v62 = _swiftEmptyArrayStorage[2];
                        v61 = _swiftEmptyArrayStorage[3];
                        v63 = v1;
                        if (v62 >= v61 >> 1)
                        {
                          sub_100144208((v61 > 1), v62 + 1, 1);
                          v63 = v1;
                        }

                        _swiftEmptyArrayStorage[2] = v62 + 1;
                        v64 = &_swiftEmptyArrayStorage[2 * v62];
                        v64[4] = v58;
                        v64[5] = v63;
                        v3 = v102;
                        if (v60 == v2)
                        {
                          break;
                        }

                        v58 = v60;
                      }

                      else
                      {

                        ++v58;
                        if (v60 == v2)
                        {
                          break;
                        }
                      }
                    }
                  }

                  v1 = _swiftEmptyArrayStorage[2];
                  if (v1)
                  {
                    specialized ContiguousArray.reserveCapacity(_:)();
                    v65 = 5;
                    v66 = v99;
                    do
                    {
                      v67 = _swiftEmptyArrayStorage[v65];
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      v65 += 2;
                      --v1;
                    }

                    while (v1);
                  }

                  else
                  {

                    v66 = v99;
                  }

                  v68 = sub_1004A5F80(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, v50 + v50 * 0.5);

                  v69 = String._bridgeToObjectiveC()();
                  [v66 addAnimation:v68 forKey:v69];

                  v70 = *&v101[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomLeftGradientLayer];
                  if (v103 >> 62)
                  {
                    v2 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v2 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  v4 = v103 & 0xC000000000000001;
                  v100 = v70;
                  if (v2)
                  {
                    v1 = 0;
                    v3 = (v103 + 32);
                    do
                    {
                      v71 = v1;
                      if (v4)
                      {
                        v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        v72 = v103 & 0xFFFFFFFFFFFFFF8;
                        v74 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_154;
                        }
                      }

                      else
                      {
                        v72 = v103 & 0xFFFFFFFFFFFFFF8;
                        if (v1 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_150;
                        }

                        v73 = v3[v1];
                        v74 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_154;
                        }
                      }

                      if (v1)
                      {

                        if (v74 == v2)
                        {
                          break;
                        }

                        if (v4)
                        {
                          v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        }

                        else
                        {
                          if (v74 >= *(v72 + 16))
                          {
                            goto LABEL_150;
                          }

                          v75 = v3[v74];
                        }

                        v73 = v75;
                        v1 = v74 | 1;
                      }

                      else
                      {
                        v1 = v74;
                        v74 = v71;
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_100144208(0, _swiftEmptyArrayStorage[2] + 1, 1);
                      }

                      v77 = _swiftEmptyArrayStorage[2];
                      v76 = _swiftEmptyArrayStorage[3];
                      if (v77 >= v76 >> 1)
                      {
                        sub_100144208((v76 > 1), v77 + 1, 1);
                      }

                      _swiftEmptyArrayStorage[2] = v77 + 1;
                      v78 = &_swiftEmptyArrayStorage[2 * v77];
                      v78[4] = v74;
                      v78[5] = v73;
                    }

                    while (v1 != v2);
                  }

                  v79 = _swiftEmptyArrayStorage[2];
                  if (v79)
                  {
                    specialized ContiguousArray.reserveCapacity(_:)();
                    v1 = 40;
                    do
                    {
                      v80 = *(_swiftEmptyArrayStorage + v1);
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      v1 += 16;
                      --v79;
                    }

                    while (v79);
                  }

                  v81 = sub_1004A5F80(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, 0.0);

                  v82 = String._bridgeToObjectiveC()();
                  [v100 addAnimation:v81 forKey:v82];

                  v83 = *&v101[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_bottomRightGradientLayer];
                  v84 = v103 & 0xFFFFFFFFFFFFFF8;
                  if (v2)
                  {
                    v3 = _swiftEmptyArrayStorage;
                    v85 = 0;
                    while (1)
                    {
                      if (v4)
                      {
                        v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        v87 = v85 + 1;
                        if (__OFADD__(v85, 1))
                        {
                          goto LABEL_151;
                        }
                      }

                      else
                      {
                        if (v85 >= *(v84 + 16))
                        {
                          goto LABEL_152;
                        }

                        v86 = *(v103 + 8 * v85 + 32);
                        v87 = v85 + 1;
                        if (__OFADD__(v85, 1))
                        {
                          goto LABEL_151;
                        }
                      }

                      if (v85)
                      {
                        v1 = v86;
                        v101 = v83;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_100144208(0, _swiftEmptyArrayStorage[2] + 1, 1);
                        }

                        v89 = _swiftEmptyArrayStorage[2];
                        v88 = _swiftEmptyArrayStorage[3];
                        v90 = v1;
                        if (v89 >= v88 >> 1)
                        {
                          sub_100144208((v88 > 1), v89 + 1, 1);
                          v90 = v1;
                        }

                        _swiftEmptyArrayStorage[2] = v89 + 1;
                        v91 = &_swiftEmptyArrayStorage[2 * v89];
                        v91[4] = v85;
                        v91[5] = v90;
                        v84 = v103 & 0xFFFFFFFFFFFFFF8;
                        if (v87 == v2)
                        {
                          break;
                        }

                        v85 = v87;
                      }

                      else
                      {

                        ++v85;
                        if (v87 == v2)
                        {
                          break;
                        }
                      }
                    }
                  }

                  v92 = _swiftEmptyArrayStorage[2];
                  if (v92)
                  {
                    specialized ContiguousArray.reserveCapacity(_:)();
                    v93 = 5;
                    do
                    {
                      v94 = _swiftEmptyArrayStorage[v93];
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      v93 += 2;
                      --v92;
                    }

                    while (v92);
                  }

                  v95 = sub_1004A5F80(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, v50 + 0.0);

                  v96 = String._bridgeToObjectiveC()();
                  [v83 addAnimation:v95 forKey:v96];

                  return;
                }

                v41 = 0;
                v42 = v30 + 32;
                while (1)
                {
                  if (v4)
                  {
                    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v41 >= v3[2])
                    {
                      goto LABEL_147;
                    }

                    v43 = *(v42 + 8 * v41);
                  }

                  v44 = v43;
                  v45 = v41 + 1;
                  if (__OFADD__(v41, 1))
                  {
                    goto LABEL_153;
                  }

                  if (v41)
                  {

                    if (v45 == v2)
                    {
                      goto LABEL_71;
                    }

                    if (v4)
                    {
                      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v45 >= v3[2])
                      {
LABEL_147:
                        __break(1u);
LABEL_148:
                        __break(1u);
LABEL_149:
                        __break(1u);
LABEL_150:
                        __break(1u);
LABEL_151:
                        __break(1u);
LABEL_152:
                        __break(1u);
LABEL_153:
                        __break(1u);
LABEL_154:
                        __break(1u);
LABEL_155:
                        if (_CocoaArrayWrapper.endIndex.getter() < 4)
                        {
                          return;
                        }

                        goto LABEL_3;
                      }

                      v46 = *(v42 + 8 * v45);
                    }

                    v44 = v46;
                    v1 = v45 | 1;
                  }

                  else
                  {
                    v1 = v41 + 1;
                    v45 = v41;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_100144208(0, _swiftEmptyArrayStorage[2] + 1, 1);
                  }

                  v48 = _swiftEmptyArrayStorage[2];
                  v47 = _swiftEmptyArrayStorage[3];
                  if (v48 >= v47 >> 1)
                  {
                    sub_100144208((v47 > 1), v48 + 1, 1);
                  }

                  _swiftEmptyArrayStorage[2] = v48 + 1;
                  v49 = &_swiftEmptyArrayStorage[2 * v48];
                  v49[4] = v45;
                  v49[5] = v44;
                  v41 = v1;
                  v3 = v102;
                  if (v1 == v2)
                  {
                    goto LABEL_71;
                  }
                }
              }

LABEL_174:
              v2 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_50;
            }

            swift_unknownObjectRelease();
            goto LABEL_40;
          }

LABEL_172:
          __break(1u);
        }

        __break(1u);
        goto LABEL_174;
      }

LABEL_167:
      if ((v7 & 0x8000000000000000) != 0)
      {
        v1 = v7;
      }

      else
      {
        v1 = v29;
      }

      v97 = _CocoaArrayWrapper.endIndex.getter();
      if (v97 >= v12)
      {
        if (_CocoaArrayWrapper.endIndex.getter() >= v30)
        {
          goto LABEL_29;
        }

        goto LABEL_172;
      }

LABEL_181:
      __break(1u);
    }
  }
}

void sub_1004A51CC(uint64_t a1)
{
  v5 = v1;
  v7 = *v5;
  v8 = *v5 >> 62;
  if (!v8)
  {
    if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      return;
    }

LABEL_3:
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      if (v8)
      {
        if (v7 < 0)
        {
          v2 = v7;
        }

        else
        {
          v2 = v7 & 0xFFFFFFFFFFFFFF8;
        }

        v3 = _CocoaArrayWrapper.endIndex.getter();
        if (_CocoaArrayWrapper.endIndex.getter() < 0)
        {
          goto LABEL_54;
        }

        if (v3 >= a1)
        {
          v12 = a1;
        }

        else
        {
          v12 = v3;
        }

        if (v3 < 0)
        {
          v12 = a1;
        }

        v11 = a1 == 0;
        if (a1)
        {
          v3 = v12;
        }

        else
        {
          v3 = 0;
        }

        v9 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 >= a1)
        {
          v10 = a1;
        }

        else
        {
          v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v11 = a1 == 0;
        if (a1)
        {
          v3 = v10;
        }

        else
        {
          v3 = 0;
        }
      }

      if (v9 >= v3)
      {
        if ((v7 & 0xC000000000000001) != 0 && v3)
        {
          sub_100005744(0, &qword_100970180, UIColor_ptr);

          v13 = 0;
          do
          {
            v14 = v13 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v13);
            v13 = v14;
          }

          while (v3 != v14);
          if (!v8)
          {
LABEL_30:
            v7 &= 0xFFFFFFFFFFFFFF8uLL;
            v2 = v7 + 32;
            v3 = (2 * v3) | 1;
            v8 = 0;
            if (v11)
            {
              goto LABEL_38;
            }

            v15 = *(v7 + 16);
            if (v15 < 0)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }
        }

        else
        {

          if (!v8)
          {
            goto LABEL_30;
          }
        }

        v7 = _CocoaArrayWrapper.subscript.getter();
        v2 = v16;
        v8 = v17;
        v3 = v18;
        if (v11)
        {
          goto LABEL_38;
        }

        v15 = _CocoaArrayWrapper.endIndex.getter();
        if (v15 < 0)
        {
LABEL_37:
          sub_1004A6B10(0, a1, sub_100399C40, &qword_100970180, UIColor_ptr);
LABEL_38:
          v4 = *v5;
          if ((v3 & 1) == 0)
          {
            swift_unknownObjectRetain();
LABEL_40:
            sub_1005E7C78(v7, v2, v8, v3);
            v20 = v19;
            goto LABEL_47;
          }

          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v21 = swift_dynamicCastClass();
          if (!v21)
          {
            swift_unknownObjectRelease();
            v21 = _swiftEmptyArrayStorage;
          }

          v22 = v21[2];

          if (!__OFSUB__(v3 >> 1, v8))
          {
            if (v22 == (v3 >> 1) - v8)
            {
              v20 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (v20)
              {
LABEL_48:
                sub_1003946E0(v20, v23);
                swift_unknownObjectRelease();
                *v5 = v4;
                return;
              }

              v20 = _swiftEmptyArrayStorage;
LABEL_47:
              swift_unknownObjectRelease();
              goto LABEL_48;
            }

            goto LABEL_56;
          }

LABEL_55:
          __break(1u);
LABEL_56:
          swift_unknownObjectRelease();
          goto LABEL_40;
        }

LABEL_36:
        if (v15 < a1)
        {
          __break(1u);
          return;
        }

        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (_CocoaArrayWrapper.endIndex.getter() > a1)
  {
    goto LABEL_3;
  }
}

uint64_t sub_1004A5510(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t type metadata accessor for RiverTodayCardBackgroundView(uint64_t a1)
{
  result = qword_100987408;
  if (!qword_100987408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004A5804(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for RiverViewStyling();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_1004A58D8(double a1, double a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B15F0;
  sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
  *(v9 + 32) = NSNumber.init(floatLiteral:)(0.25);
  *(v9 + 40) = NSNumber.init(floatLiteral:)(0.75);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setLocations:isa];

  [v8 setStartPoint:{a1, a2}];
  [v8 setEndPoint:{a3, a4}];
  sub_10002849C(&qword_1009701B0, qword_1007B1800);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007B1890;
  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  v14 = [v13 CGColor];

  type metadata accessor for CGColor(0);
  v16 = v15;
  *(v11 + 56) = v15;
  *(v11 + 32) = v14;
  v17 = [v12 clearColor];
  v18 = [v17 CGColor];

  *(v11 + 88) = v16;
  *(v11 + 64) = v18;
  v19 = Array._bridgeToObjectiveC()().super.isa;

  [v8 setColors:v19];

  return v8;
}

char *sub_1004A5B04()
{
  v0 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B48F0;
  v2 = objc_opt_self();
  *(inited + 32) = [v2 blackColor];
  v3 = [v2 blackColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  *(inited + 40) = v4;
  v5 = [v2 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.0];

  *(inited + 48) = v6;
  v35 = _swiftEmptyArrayStorage;
  result = sub_100143FA4(0, 3, 0);
  v8 = _swiftEmptyArrayStorage;
  v9 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
      __break(1u);
      return result;
    }

    v10 = *(inited + 32);
  }

  v11 = v10;
  v12 = [v10 CGColor];
  type metadata accessor for CGColor(0);
  v14 = v13;
  v34 = v13;

  *&v33 = v12;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_100143FA4((v15 > 1), v16 + 1, 1);
    v8 = v35;
  }

  v8[2] = v16 + 1;
  sub_100056164(&v33, &v8[4 * v16 + 4]);
  if (v9)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v17 = *(inited + 40);
  }

  v18 = v17;
  v19 = [v17 CGColor];
  v34 = v14;

  *&v33 = v19;
  v35 = v8;
  v21 = v8[2];
  v20 = v8[3];
  if (v21 >= v20 >> 1)
  {
    sub_100143FA4((v20 > 1), v21 + 1, 1);
    v8 = v35;
  }

  v8[2] = v21 + 1;
  sub_100056164(&v33, &v8[4 * v21 + 4]);
  if (v9)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v22 = *(inited + 48);
  }

  v23 = v22;
  v24 = [v22 CGColor];
  v34 = v14;

  *&v33 = v24;
  v35 = v8;
  v26 = v8[2];
  v25 = v8[3];
  if (v26 >= v25 >> 1)
  {
    sub_100143FA4((v25 > 1), v26 + 1, 1);
    v8 = v35;
  }

  v8[2] = v26 + 1;
  sub_100056164(&v33, &v8[4 * v26 + 4]);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setColors:isa];

  v28 = swift_allocObject();
  *(v28 + 16) = v32;
  sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
  *(v28 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v28 + 40) = NSNumber.init(floatLiteral:)(0.4);
  *(v28 + 48) = NSNumber.init(floatLiteral:)(1.0);
  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v0 setLocations:v29];

  [v0 setStartPoint:{0.0, 1.0}];
  [v0 setEndPoint:{1.0, 0.0}];
  v30 = v0;
  LODWORD(v31) = 1045220557;
  [v30 setOpacity:v31];
  [v30 setCompositingFilter:kCAFilterPlusD];

  return v30;
}

id sub_1004A5F80(unint64_t a1, double a2, double a3, double a4)
{
  v7 = a1;
  v64 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_69;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = &v71;
    v68 = v7;
    if (i)
    {
      v67 = (v7 & 0xC000000000000001);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v10 = *(v7 + 32);
      }

      v72[0] = v10;
      v70 = _swiftEmptyArrayStorage;
      if (!v10)
      {
        v63 = _swiftEmptyArrayStorage;
LABEL_12:
        sub_1004A6860(v9 + 32);
        v13 = 0;
        v70 = _swiftEmptyArrayStorage;
        v66 = v7 & 0xFFFFFFFFFFFFFF8;
        v65 = i;
        while (1)
        {
          if (v67)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v13 >= *(v66 + 16))
            {
              goto LABEL_66;
            }

            v14 = *(v7 + 8 * v13 + 32);
          }

          v15 = v14;
          v16 = (v13 + 1);
          if (__OFADD__(v13, 1))
          {
            break;
          }

          sub_10002849C(&qword_10096FC98, &unk_1007B12E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1007B1890;
          sub_10002849C(&qword_100973210, qword_1007B0BB0);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1007B15F0;
          *(v18 + 32) = [v15 CGColor];
          v19 = [v15 colorWithAlphaComponent:0.0];
          v20 = [v19 CGColor];

          *(v18 + 40) = v20;
          *(inited + 32) = v18;
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1007B15F0;
          *(v21 + 32) = [v15 CGColor];
          v22 = [v15 colorWithAlphaComponent:0.0];
          v23 = [v22 CGColor];

          v7 = v68;
          *(v21 + 40) = v23;
          *(inited + 40) = v21;

          sub_1003945DC(inited);
          ++v13;
          if (v16 == v65)
          {
            i = _swiftEmptyArrayStorage;
            v12 = v63;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v11 = v10;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_9:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v63 = v70;
        goto LABEL_12;
      }

LABEL_74:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_9;
    }

    v72[0] = 0;
    sub_1004A6860(v72);
    v12 = _swiftEmptyArrayStorage;
    i = _swiftEmptyArrayStorage;
LABEL_20:
    if (v12 >> 62)
    {
      v62 = v12;
      v9 = _CocoaArrayWrapper.endIndex.getter();
      v12 = v62;
    }

    else
    {
      v9 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      v24 = v12;
      v70 = _swiftEmptyArrayStorage;
      sub_1001441C8(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        goto LABEL_73;
      }

      v67 = _swiftEmptyArrayStorage;
      v25 = 0;
      v26 = v24;
      v27 = v24 & 0xC000000000000001;
      v28 = v24;
      do
      {
        if (v27)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v29 = *(v26 + 8 * v25 + 32);
        }

        v30 = v29;
        sub_10002849C(&qword_100973210, qword_1007B0BB0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1007B15F0;
        *(v31 + 32) = [v30 CGColor];
        v32 = [v30 colorWithAlphaComponent:0.0];
        v33 = [v32 CGColor];

        *(v31 + 40) = v33;
        v35 = _swiftEmptyArrayStorage[2];
        v34 = _swiftEmptyArrayStorage[3];
        if (v35 >= v34 >> 1)
        {
          sub_1001441C8((v34 > 1), v35 + 1, 1);
        }

        ++v25;
        _swiftEmptyArrayStorage[2] = v35 + 1;
        _swiftEmptyArrayStorage[v35 + 4] = v31;
        v26 = v28;
      }

      while (v9 != v25);

      v7 = v68;
    }

    else
    {
    }

    sub_1003945DC(_swiftEmptyArrayStorage);
    v36 = v64 ? _CocoaArrayWrapper.endIndex.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a3 = a2 + a3;
    v37 = _swiftEmptyArrayStorage[2];
    if (!v37)
    {
      break;
    }

    v69 = v36;
    v38 = sub_100033F44(0, 1, 1, _swiftEmptyArrayStorage);
    for (j = 0; j != v37; ++j)
    {
      if (j)
      {
        v40 = a3 * (j >> 1) + a2;
      }

      else
      {
        v40 = a3 * (j >> 1);
      }

      v42 = *(v38 + 2);
      v41 = *(v38 + 3);
      v7 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v38 = sub_100033F44((v41 > 1), v42 + 1, 1, v38);
      }

      *(v38 + 2) = v7;
      *&v38[8 * v42 + 32] = v40;
    }

LABEL_47:
    v70 = _swiftEmptyArrayStorage;
    sub_1001441A8(0, v7, 0);
    v43 = *(v38 + 2);
    if (v43)
    {
      a2 = *(v38 + 4);
      v45 = _swiftEmptyArrayStorage[2];
      v44 = _swiftEmptyArrayStorage[3];
      if (v45 >= v44 >> 1)
      {
        sub_1001441A8((v44 > 1), v45 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v45 + 1;
      *&_swiftEmptyArrayStorage[v45 + 4] = a2;
      v46 = v7 - 1;
      if (v7 == 1)
      {
LABEL_51:

        v47 = v69;
        goto LABEL_52;
      }

      v51 = 0;
      v52 = v43 - 1;
      while (v52 != v51)
      {
        if ((v51 + 1) >= *(v38 + 2))
        {
          goto LABEL_68;
        }

        a2 = *&v38[8 * v51 + 40];
        v70 = _swiftEmptyArrayStorage;
        v53 = _swiftEmptyArrayStorage[3];
        v7 = v45 + v51 + 2;
        if (v51 + 1 + v45 >= v53 >> 1)
        {
          sub_1001441A8((v53 > 1), v45 + v51 + 2, 1);
        }

        _swiftEmptyArrayStorage[2] = v7;
        *&_swiftEmptyArrayStorage[v45 + 5 + v51++] = a2 + a4;
        if (v46 == v51)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v7 = _swiftEmptyArrayStorage[2];
  if (v7)
  {
    v69 = v36;
    v38 = _swiftEmptyArrayStorage;
    goto LABEL_47;
  }

  v61 = v36;

  v47 = v61;
LABEL_52:
  v48 = a3 * v47 + a4;
  v49 = _swiftEmptyArrayStorage[2];
  if (v49)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v50 = 4;
    do
    {
      [objc_allocWithZone(NSNumber) initWithDouble:*&_swiftEmptyArrayStorage[v50] / v48];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v50;
      --v49;
    }

    while (v49);
  }

  v54 = String._bridgeToObjectiveC()();
  v55 = [objc_opt_self() animationWithKeyPath:v54];

  sub_1002A5064(_swiftEmptyArrayStorage);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v55 setValues:isa];

  sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
  v57 = Array._bridgeToObjectiveC()().super.isa;

  [v55 setKeyTimes:v57];

  v58 = v55;
  [v58 setDuration:v48];
  LODWORD(v59) = 2139095039;
  [v58 setRepeatCount:v59];
  [v58 setCalculationMode:kCAAnimationLinear];
  [v58 setRemovedOnCompletion:0];

  return v58;
}

uint64_t sub_1004A6860(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100973268, &qword_1007B4680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004A68C8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 88 * result;
  sub_10002849C(&qword_10096FD40, qword_1007CFFF0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 88 * a3;
  v13 = (v7 + 32 + 88 * a2);
  if (result != v13 || result >= v13 + 88 * v12)
  {
    result = memmove(result, v13, 88 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A69E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_100005744(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A6B10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5;
    v8 = a4;
    v11 = a3;
    v9 = a2;
    v10 = a1;
    v12 = *v7;
    v13 = *v7 >> 62;
    if (!v13)
    {
      result = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v9)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v9, v10))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10 - v9;
  if (__OFSUB__(0, v9 - v10))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (!v17)
  {
    v11(result, 1);
    return sub_1004A69E0(v10, v9, 0, v8, v6);
  }

LABEL_16:
  __break(1u);
  return result;
}

char *sub_1004A6C04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1004A6D30(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_100399C40();

  return sub_1004A6C04(v7, v6, 1, v4);
}

unint64_t sub_1004A6E1C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_10002849C(&unk_10097A950, &qword_1007B1320);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A6F34(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_1004A700C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ArtworkView();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A710C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_100399C40();

  return sub_1004A700C(v5, v3, 0);
}

void sub_1004A71E4()
{
  *(v0 + OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating) = 0;
  v1 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_gradientBackingLayer;
  *(v0 + v1) = [objc_allocWithZone(CALayer) init];
  v2 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_meshTransforms;
  type metadata accessor for TodayCardMeshTransforms();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v0 + v3) = v4;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}