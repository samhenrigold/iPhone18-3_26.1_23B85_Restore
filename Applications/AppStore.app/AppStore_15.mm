uint64_t sub_1001A2520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001A2568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001A25E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001A265C(void *a1)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    swift_getObjectType();
    v2 = a1;
    dispatch thunk of AnyAvatarShowcaseDisplaying.unapply()();
  }
}

uint64_t sub_1001A2724(void *a1, uint64_t a2, uint64_t a3)
{
  v58[1] = a3;
  v62 = a1;
  v3 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v3 - 8);
  v58[0] = v58 - v4;
  v61 = type metadata accessor for ShelfBackground();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Shelf.ContentType();
  v6 = *(v63 - 8);
  __chkstk_darwin(v63);
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v58 - v10;
  v12 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v58 - v14;
  v16 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v64 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v58 - v17;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();
  v19 = v16;

  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v13 + 8))(v15, v12);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();
  v20 = v63;

  (*(v6 + 32))(v8, v11, v20);
  v21 = (*(v6 + 88))(v8, v20);
  if (v21 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v21 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v6 + 8))(v8, v20);
    swift_getKeyPath();
    v22 = v59;
    ReadOnlyLens.subscript.getter();

    v23 = sub_1001AAD64();
    (*(v60 + 8))(v22, v61);
    v24 = v62;
    if ([v62 overrideUserInterfaceStyle] != v23)
    {
      [v24 setOverrideUserInterfaceStyle:v23];
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v24)
    {
      sub_10002C0AC(v69, v67);
      v25 = v24;
      sub_10002849C(&qword_100973D50, &unk_1007B3840);
      sub_10002849C(&unk_100980530, &qword_1007B69B0);
      if (swift_dynamicCast())
      {
        sub_100177264(v65, v68);
        sub_10002A400(v68, v68[3]);
        if (dispatch thunk of SearchAdOpportunityProviding.searchAdOpportunity.getter())
        {
          SearchAdOpportunity.searchAd.getter();
        }

        swift_getObjectType();
        dispatch thunk of SearchAdDisplaying.apply(searchAd:asPartOf:)();

        sub_100007000(v68);
      }

      else
      {

        v66 = 0;
        memset(v65, 0, sizeof(v65));
        sub_10002B894(v65, &unk_100992FE0, &qword_1007BBDD0);
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v24)
    {
      swift_getObjectType();
      v26 = v24;
      dispatch thunk of AnyAvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)();
    }

    swift_getObjectType();
    v27 = swift_conformsToProtocol2();
    if (v27 && v24)
    {
      v28 = v27;
      ObjectType = swift_getObjectType();
      v30 = v19;
      v31 = *(v28 + 8);
      v32 = v24;
      v33 = v31(ObjectType, v28);
      v19 = v30;
      v34 = v33;
      v35 = (v33 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
      v36 = *(v33 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
      v37 = v35[1];
      *v35 = 0;
      v35[1] = 0;
      sub_10001F63C(v36, v37);
      [*&v34[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setUserInteractionEnabled:0];
    }

    v38 = [objc_opt_self() standardUserDefaults];
    v39 = sub_100736BE4(v38);

    if (v39)
    {
      v40 = v62;
      [v62 bounds];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v49 = [objc_opt_self() blueColor];
      v50 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
      v51 = sub_10077F3D4(v49, v42, v44, v46, v48);
      v52 = v18;
      sub_10002A400(v69, v69[3]);
      v53 = v58[0];
      dispatch thunk of ViewModel.impressionMetrics.getter();
      sub_10077EFB4(v53);
      sub_10002B894(v53, &qword_100973D30, &unk_1007B1DC0);
      v54 = [v40 contentView];
      v55 = [v54 viewWithTag:58236912];

      [v55 removeFromSuperview];
      v56 = [v40 contentView];
      [v56 addSubview:v51];

      v18 = v52;
    }
  }

  (*(v64 + 8))(v18, v19);
  return sub_100007000(v69);
}

void sub_1001A2FA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v38[-1] - v10;
  v12 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38[-1] - v14;
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16 && a1)
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    sub_10022125C(a2, a5, ObjectType, v17);
  }

  else
  {
    type metadata accessor for TodayDebugSectionBackgroundView();
    if (swift_dynamicCastClass())
    {
      sub_1005588F0(a2);
    }

    else
    {
      v19 = type metadata accessor for InteractiveSectionBackgroundView(0);
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
        v37 = v19;
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        sub_100711E80(a2, a4, a5);
        v38[3] = v37;
        v38[4] = &off_1008C29C0;
        v38[0] = v21;
        v22 = a1;
        sub_1002B52F4(v38);

        sub_10002B894(v38, &unk_10097E140, &unk_1007BD220);
      }
    }
  }

  v23 = [objc_opt_self() standardUserDefaults];
  v24 = sub_100736BE4(v23);

  if (v24)
  {
    [a1 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [objc_opt_self() redColor];
    v34 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
    v35 = sub_10077F3D4(v33, v26, v28, v30, v32);
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v13 + 8))(v15, v12);
    sub_10077EFB4(v11);
    sub_10002B894(v11, &qword_100973D30, &unk_1007B1DC0);
    v36 = [a1 viewWithTag:58236912];
    [v36 removeFromSuperview];

    [a1 addSubview:v35];
  }
}

uint64_t sub_1001A3360(double a1)
{
  v2 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v2 - 8);
  v45 = &v37 - v3;
  v48 = type metadata accessor for PageGrid.HorizontalMargins();
  v54 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v37 - v10;
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v17 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v53 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v43 = v19;
  *(v19 + 16) = xmmword_1007B23A0;
  v20 = v19 + v18;
  v56 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v55 = 16.0;
  v56 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v56 = 0x4030000000000000;
  v55 = a1;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v52 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v26 = *(v54 + 104);
  v54 += 104;
  v27 = v48;
  v26(v5);
  v47 = v26;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v56) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0;
  v44 = v8;
  PageGrid.DirectionalValue.init(_:)();
  v46 = v20;
  v50 = v16;
  v51 = v13;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v56 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v55 = 20.0;
  v56 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v56 = 0x4030000000000000;
  v55 = a1;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v5 = _Q0;
  (v26)(v5, v52, v27);
  LOBYTE(v56) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v31 = v53;
  top = UIEdgeInsetsZero.top;
  v40 = left;
  v42 = bottom;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v56 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0x4030000000000000;
  v55 = a1;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v39 = vdupq_n_s64(0x4041000000000000uLL);
  *v5 = v39;
  v33 = v47;
  v32 = v48;
  (v47)(v5, v52, v48);
  LOBYTE(v56) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v38 = 2 * v31 + v53;
  v56 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0x4030000000000000;
  v55 = a1;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v5 = v39;
  (v33)(v5, v52, v32);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v56) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v38 = 4 * v53;
  v56 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0x4030000000000000;
  v55 = a1;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v39 = vdupq_n_s64(0x404A000000000000uLL);
  *v5 = v39;
  v34 = v52;
  v35 = v48;
  (v47)(v5, v52, v48);
  LOBYTE(v56) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v56 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0x4030000000000000;
  v55 = a1;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v5 = v39;
  (v47)(v5, v34, v35);
  LOBYTE(v56) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v43;
}

uint64_t sub_1001A3D6C(char a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_1009780F8, qword_1007BD2C0);
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for AdamId();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ScreenshotsDisplayStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  if ((a1 & 1) != 0 && (MixedMediaLockup.screenshotsDisplayStyle.getter(), v14 = *(v8 + 104), v38 = enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v39 = v8 + 104, v37 = v14, v14(v10), sub_1001A4350(), v15 = dispatch thunk of static Equatable.== infix(_:_:)(), v16 = *(v8 + 8), v16(v10, v7), v16(v13, v7), (v15 & 1) == 0))
  {
    Lockup.adamId.getter();
    Lockup.bundleId.getter();
    v36[25] = v17;
    v36[24] = Lockup.icon.getter();
    v18 = Lockup.heading.getter();
    v36[22] = v19;
    v36[23] = v18;
    v20 = Lockup.title.getter();
    v36[20] = v21;
    v36[21] = v20;
    v22 = Lockup.subtitle.getter();
    v36[18] = v23;
    v36[19] = v22;
    v24 = Lockup.developerTagline.getter();
    v36[16] = v25;
    v36[17] = v24;
    v26 = Lockup.editorialTagline.getter();
    v36[14] = v27;
    v36[15] = v26;
    v28 = Lockup.editorialDescription.getter();
    v36[12] = v29;
    v36[13] = v28;
    v30 = Lockup.shortEditorialDescription.getter();
    v36[10] = v31;
    v36[11] = v30;
    v32 = Lockup.ordinal.getter();
    v36[8] = v33;
    v36[9] = v32;
    v36[7] = Lockup.rating.getter();
    v36[6] = Lockup.ratingCount.getter();
    v36[5] = v34;
    v36[4] = Lockup.buttonAction.getter();
    v36[3] = Lockup.offerDisplayProperties.getter();
    v36[2] = Lockup.clickAction.getter();
    v36[1] = Lockup.contextMenuData.getter();
    Lockup.impressionMetrics.getter();
    MixedMediaLockup.overrideLockupPosition.getter();
    MixedMediaLockup.trailers.getter();
    MixedMediaLockup.screenshots.getter();
    v37(v13, v38, v7);
    MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
    MixedMediaLockup.showMetadataInformationInLockup.getter();
    type metadata accessor for MixedMediaLockup();
    swift_allocObject();
    return MixedMediaLockup.init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:overrideLockupPosition:alignedRegionArtwork:alignedRegionVideo:trailers:screenshots:screenshotsDisplayStyle:metadataRibbonItems:searchTagRibbonItems:shouldEvenlyDistributeRibbonItems:showMetadataInformationInLockup:)();
  }

  else
  {
  }

  return v2;
}

unint64_t sub_1001A41FC()
{
  v0 = MixedMediaLockup.screenshots.getter();
  if (v0 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();

    if (v3)
    {
      return 1;
    }
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v1)
    {
      return 1;
    }
  }

  result = MixedMediaLockup.trailers.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_14:

    return 0;
  }

  v6 = result;
  v7 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v4 = Trailers.videos.getter();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

unint64_t sub_1001A4350()
{
  result = qword_100978100;
  if (!qword_100978100)
  {
    type metadata accessor for ScreenshotsDisplayStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978100);
  }

  return result;
}

char *sub_1001A43A8(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC8AppStore18RevealingImageView_isTransitioning] = 0;
  v9 = OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v10 = &v4[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkLayoutWithMetrics] = 0;
  v4[OBJC_IVAR____TtC8AppStore18RevealingImageView_sizeCategory] = 7;
  v11 = OBJC_IVAR____TtC8AppStore18RevealingImageView_pageGrid;
  v12 = type metadata accessor for PageGrid();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
  v14 = type metadata accessor for Artwork.URLTemplate();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkHandlerKey;
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  *&v4[OBJC_IVAR____TtC8AppStore18RevealingImageView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8AppStore18RevealingImageView_mirrorDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v24.receiver = v4;
  v24.super_class = type metadata accessor for RevealingImageView(0);
  v17 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView;
  v19 = *&v17[OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView];
  v20 = v17;
  [v19 setContentMode:2];
  v21 = *&v17[v18];
  v22 = v20;
  [v22 addSubview:v21];
  [v22 setClipsToBounds:1];

  return v22;
}

void sub_1001A4648(char a1)
{
  *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_isTransitioning) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((swift_isaMask & *Strong) + 0xC8))(a1 & 1);
  }
}

void sub_1001A4704(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v3 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize;
  *v6 = a1;
  *(v6 + 8) = a2;
  v7 = a3 & 1;
  *(v6 + 16) = a3 & 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*((swift_isaMask & *Strong) + 0xF8))(a1, a2, v7);
  }
}

void sub_1001A47D8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkLayoutWithMetrics) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *((swift_isaMask & *Strong) + 0x110);
    v5 = Strong;

    v3(v4);
  }
}

void sub_1001A48A8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_sizeCategory) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((swift_isaMask & *Strong) + 0x128))(a1);
  }
}

uint64_t sub_1001A4960(uint64_t a1)
{
  v3 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC8AppStore18RevealingImageView_pageGrid;
  swift_beginAccess();
  sub_1001A5ED0(a1, v1 + v6);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100031660(v1 + v6, v5, &qword_10097DBD0, &qword_1007BC750);
    (*((swift_isaMask & *v8) + 0x140))(v5);
  }

  return sub_10002B894(a1, &qword_10097DBD0, &qword_1007BC750);
}

double sub_1001A4AB4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8AppStore18RevealingImageView_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    if (v6 != Strong)
    {
      v7 = *(v4 + 8);
      swift_getObjectType();
      v8 = [*(v2 + OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView) image];
      (*(v7 + 8))();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_7:

  swift_unknownObjectRelease();
  return result;
}

void sub_1001A4BC4(void *a1)
{
  v3 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong == a1)
    {
    }

    else
    {
      v7 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView);
      v8 = Strong;
      v9 = [v7 image];
      v10 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize);
      v11 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize + 8);
      v12 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize + 16);
      v13 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkLayoutWithMetrics);
      v14 = OBJC_IVAR____TtC8AppStore18RevealingImageView_pageGrid;
      swift_beginAccess();
      sub_100031660(v1 + v14, v5, &qword_10097DBD0, &qword_1007BC750);
      v15 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_sizeCategory);

      sub_1001A5AD8(v9, v10, v11, v12, v13, v5, v15);

      sub_10002B894(v5, &qword_10097DBD0, &qword_1007BC750);
    }
  }
}

void sub_1001A4DEC()
{
  v1 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for PageGrid();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v0[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize];
  if ((v0[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize + 16] & 1) == 0 && *&v0[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkLayoutWithMetrics])
  {
    v44 = v2;
    v17 = *v15;
    v16 = v15[1];
    v18 = OBJC_IVAR____TtC8AppStore18RevealingImageView_pageGrid;
    swift_beginAccess();
    sub_100031660(&v0[v18], v10, &qword_10097DBD0, &qword_1007BC750);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10002B894(v10, &qword_10097DBD0, &qword_1007BC750);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      v19 = v0[OBJC_IVAR____TtC8AppStore18RevealingImageView_sizeCategory];
      if (v19 != 7)
      {

        v20 = v0;
        v22.n128_f64[0] = sub_100699534(v19, v21);
        v23 = v44;
        v24 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
        v25 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
        if (v19 != 6)
        {
          v25 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
        }

        if (v19 != 4)
        {
          v24 = v25;
        }

        (*(v44 + 104))(v4, *v24, v1, v22);
        (*(v23 + 32))(v7, v4, v1);
        v26 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();

        (*(v23 + 8))(v7, v1);
        v27 = v20[OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded];
        [v20 bounds];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v36 = [v20 traitCollection];
        v37 = sub_1000F1BB8(v36, v29, v31, v33, v35, v17, v16, v26, v27);
        v39 = v38;
        v41 = v40;
        v43 = v42;

        [*&v20[OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView] setFrame:{v37, v39, v41, v43}];
      }

      (*(v12 + 8))(v14, v11);
    }
  }
}

void sub_1001A5204(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v50 = a10;
  v16 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v16 - 8);
  v51 = &v46 - v17;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v49 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10002849C(&qword_100978190, &qword_1007BD3C8);
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  v24 = sub_10002849C(&qword_10097A450, qword_1007BD3D0);
  __chkstk_darwin(v24 - 8);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v46 - v28;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    if (!a1)
    {

      return;
    }

    v47 = a9;
    v48 = a1;
    v32 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    (*(v19 + 16))(v29, a8, v18);
    (*(v19 + 56))(v29, 0, 1, v18);
    v33 = *(v21 + 48);
    sub_100031660(v31 + v32, v23, &qword_10097A450, qword_1007BD3D0);
    sub_100031660(v29, &v23[v33], &qword_10097A450, qword_1007BD3D0);
    v34 = *(v19 + 48);
    if (v34(v23, 1, v18) == 1)
    {
      v35 = v48;
      v36 = v48;
      sub_10002B894(v29, &qword_10097A450, qword_1007BD3D0);
      if (v34(&v23[v33], 1, v18) == 1)
      {
        sub_10002B894(v23, &qword_10097A450, qword_1007BD3D0);
LABEL_11:
        v42 = type metadata accessor for PageGrid();
        v43 = *(v42 - 8);
        v44 = v51;
        (*(v43 + 16))(v51, v50, v42);
        (*(v43 + 56))(v44, 0, 1, v42);
        v45 = v35;
        sub_1001A5AD8(v35, *&a2, *&a3, 0, v47, v44, a11);

        sub_10002B894(v44, &qword_10097DBD0, &qword_1007BC750);
        return;
      }

LABEL_9:
      sub_10002B894(v23, &qword_100978190, &qword_1007BD3C8);

      return;
    }

    sub_100031660(v23, v26, &qword_10097A450, qword_1007BD3D0);
    v37 = v34(&v23[v33], 1, v18);
    v35 = v48;
    if (v37 == 1)
    {
      v38 = v48;
      sub_10002B894(v29, &qword_10097A450, qword_1007BD3D0);
      (*(v19 + 8))(v26, v18);
      goto LABEL_9;
    }

    v39 = v49;
    (*(v19 + 32))(v49, &v23[v33], v18);
    sub_1001A5E78();
    v46 = v35;
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    v41 = *(v19 + 8);
    v41(v39, v18);
    sub_10002B894(v29, &qword_10097A450, qword_1007BD3D0);
    v41(v26, v18);
    v35 = v48;
    sub_10002B894(v23, &qword_10097A450, qword_1007BD3D0);
    if (v40)
    {
      goto LABEL_11;
    }
  }
}

id sub_1001A5790()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingImageView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingImageView(uint64_t a1)
{
  result = qword_100978170;
  if (!qword_100978170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001A58E8(uint64_t a1)
{
  sub_1001A5A84(319, &qword_100977370, &type metadata accessor for PageGrid);
  if (v1 <= 0x3F)
  {
    sub_1001A5A84(319, &qword_100978180, &type metadata accessor for Artwork.URLTemplate);
    if (v2 <= 0x3F)
    {
      sub_1001A5A84(319, &qword_100978188, &type metadata accessor for UUID);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1001A5A84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1001A5AD8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v47 = a4;
  v15 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  *&v16 = __chkstk_darwin(v15 - 8).n128_u64[0];
  v18 = &v43 - v17;
  v19 = *(v8 + OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView);
  v44 = a1;
  v45 = v19;
  [v19 setImage:{a1, v16}];
  v46 = OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkLayoutWithMetrics;
  *(v8 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkLayoutWithMetrics) = a5;

  v20 = OBJC_IVAR____TtC8AppStore18RevealingImageView_mirrorDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *((swift_isaMask & *Strong) + 0x110);
    v43 = v20;
    swift_bridgeObjectRetain_n();
    v23(a5);
  }

  else
  {
  }

  v24 = v8 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize;
  *v24 = a2;
  *(v24 + 8) = a3;
  v25 = v47 & 1;
  *(v24 + 16) = v47 & 1;
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    (*((swift_isaMask & *v26) + 0xF8))(a2, a3, v25);
  }

  sub_100031660(a6, v18, &qword_10097DBD0, &qword_1007BC750);
  sub_1001A4960(v18);
  v28 = OBJC_IVAR____TtC8AppStore18RevealingImageView_sizeCategory;
  *(v8 + OBJC_IVAR____TtC8AppStore18RevealingImageView_sizeCategory) = a7;
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    (*((swift_isaMask & *v29) + 0x128))(a7);
  }

  v31 = v8 + OBJC_IVAR____TtC8AppStore18RevealingImageView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v31 + 8);
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(v44, ObjectType, v32);
    swift_unknownObjectRelease();
  }

  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    v36 = [v45 image];
    v37 = *v24;
    v38 = *(v24 + 8);
    v39 = *(v24 + 16);
    v40 = *(v8 + v46);
    v41 = OBJC_IVAR____TtC8AppStore18RevealingImageView_pageGrid;
    swift_beginAccess();
    sub_100031660(v8 + v41, v18, &qword_10097DBD0, &qword_1007BC750);
    v42 = *(v8 + v28);

    sub_1001A5AD8(v36, v37, v38, v39, v40, v18, v42);

    sub_10002B894(v18, &qword_10097DBD0, &qword_1007BC750);
  }

  sub_1001A4DEC();
}

unint64_t sub_1001A5E78()
{
  result = qword_100978198;
  if (!qword_100978198)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978198);
  }

  return result;
}

uint64_t sub_1001A5ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1001A5F40()
{
  *(v0 + OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore18RevealingImageView_isTransitioning) = 0;
  v1 = OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = v0 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkLayoutWithMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore18RevealingImageView_sizeCategory) = 7;
  v3 = OBJC_IVAR____TtC8AppStore18RevealingImageView_pageGrid;
  v4 = type metadata accessor for PageGrid();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
  v6 = type metadata accessor for Artwork.URLTemplate();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkHandlerKey;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC8AppStore18RevealingImageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore18RevealingImageView_mirrorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001A6138(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticDimension();
  sub_100005644(v8, a3);
  sub_1000056A8(v8, a3);
  if (qword_10096E1E8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D1538);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v14);
  (*(v5 + 16))(v11, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001A6314()
{
  v0 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_100005644(v0, qword_1009781D0);
  sub_1000056A8(v0, qword_1009781D0);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

void sub_1001A63B0(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_accessoryView;
  v6 = *&v1[OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_accessoryView];
  *&v1[OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_accessoryView] = a1;
  v3 = a1;
  [v6 removeFromSuperview];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSubview:v5];
    [v1 setNeedsLayout];
  }
}

char *sub_1001A6458(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DirectionalTextAlignment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v18 - 8);
  v20 = &v33 - v19;
  *&v5[OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_accessoryView] = 0;
  v5[OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_sizeCategory] = 7;
  if (qword_10096E1E8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for FontUseCase();
  v22 = sub_1000056A8(v21, qword_1009D1538);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v20, v22, v21);
  (*(v23 + 56))(v20, 0, 1, v21);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  v24 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v25 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v26 = OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_label;
  *&v5[OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_label] = v25;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v27 = v25;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(v36);
  sub_10003D444(v37);
  UIView.setAutomationSemantics(_:)();

  (*(v11 + 8))(v13, v10);
  v28 = *&v5[v26];
  sub_100028BB8();
  v29 = v28;
  v30 = static UIColor.secondaryText.getter();
  [v29 setTextColor:v30];

  type metadata accessor for Accessory(0);
  swift_storeEnumTagMultiPayload();
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  [v31 addSubview:*&v31[OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_label]];
  return v31;
}

double sub_1001A68F8(double a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v11 = *(v1 + OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_accessoryView);
  if (v11)
  {
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    [v11 sizeThatFits:{v9, v10}];
    v10 = v15;
    v9 = v14;
    v8 = v13;
    v17 = v16;
    v7 = v12;
  }

  else
  {
    v17 = 0.0;
  }

  Width = CGRectGetWidth(*&v7);
  v19 = *(v1 + OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_label);
  [v19 sizeThatFits:{Width + -16.0 - v17, 1.79769313e308}];
  if (qword_10096D228 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for StaticDimension();
  sub_1000056A8(v20, qword_1009781A0);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v21 = *(v4 + 8);
  v21(v6, v3);
  [v19 firstBaselineFromTop];
  if (qword_10096D230 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v20, qword_1009781B8);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v21(v6, v3);
  [v19 lastBaselineFromBottom];
  return a1;
}

id sub_1001A6BF0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.receiver = v1;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "layoutSubviews", v5);
  LayoutMarginsAware<>.layoutFrame.getter();
  v11 = v10;
  v13 = v12;
  v14 = v8;
  v15 = v9;
  v16 = OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_accessoryView;
  v17 = *&v1[OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_accessoryView];
  if (v17)
  {
    [v17 sizeThatFits:{v8, v9}];
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v19 = 0.0;
    v21 = 0.0;
  }

  v33.origin.x = v11;
  v33.origin.y = v13;
  v33.size.width = v14;
  v33.size.height = v15;
  v22 = CGRectGetMaxX(v33) - v19;
  v34.origin.x = v11;
  v34.origin.y = v13;
  v34.size.width = v14;
  v34.size.height = v15;
  v35.origin.y = CGRectGetMidY(v34) + v21 * -0.5;
  v35.origin.x = v22;
  v31 = v19;
  v35.size.width = v19;
  v35.size.height = v21;
  CGRectIntegral(v35);
  v23 = *&v1[v16];
  if (v23)
  {
    v24 = v23;
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v24 setFrame:?];
  }

  v36.origin.x = v11;
  v36.origin.y = v13;
  v36.size.width = v14;
  v36.size.height = v15;
  v25 = CGRectGetWidth(v36) + -16.0 - v31;
  v37.origin.x = v11;
  v37.origin.y = v13;
  v37.size.width = v14;
  v37.size.height = v15;
  Height = CGRectGetHeight(v37);
  v27 = *&v1[OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_label];
  [v27 sizeThatFits:{v25, Height}];
  if (qword_10096D228 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for StaticDimension();
  sub_1000056A8(v28, qword_1009781A0);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  (*(v4 + 8))(v7, v3);
  [v27 firstBaselineFromTop];
  v38.origin.x = v11;
  v38.origin.y = v13;
  v38.size.width = v14;
  v38.size.height = v15;
  CGRectGetMinX(v38);
  v39.origin.x = v11;
  v39.origin.y = v13;
  v39.size.width = v14;
  v39.size.height = v15;
  CGRectGetMinY(v39);
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v27 setFrame:?];
}

id sub_1001A6F8C(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096D238 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
    sub_1000056A8(v6, qword_1009781D0);
    v7 = v1;
    Conditional.evaluate(with:)();

    return UILabel.alignment.setter();
  }

  return result;
}

uint64_t type metadata accessor for TodayCardActionOverlayView(uint64_t a1)
{
  result = qword_100978228;
  if (!qword_100978228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001A71DC(uint64_t a1)
{
  result = type metadata accessor for Accessory(319);
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

unint64_t sub_1001A72C0()
{
  result = qword_100978238;
  if (!qword_100978238)
  {
    type metadata accessor for TodayCardActionOverlay();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978238);
  }

  return result;
}

void sub_1001A7318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v8 = a5;
  v5[OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_sizeCategory] = a5;
  [v5 setNeedsLayout];
  sub_1000C4450(a2);
  sub_1001A63B0(v9);
  v10 = TodayCard.Style.overlayBackgroundColor.getter();
  [v6 setBackgroundColor:v10];

  v11 = [v6 traitCollection];
  if (v8 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v11 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v6 setLayoutMargins:{v13, v15, v17, 15.0}];
  v18 = *&v6[OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_label];
  TodayCardActionOverlay.action.getter();
  Action.title.getter();
  v20 = v19;

  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  [v18 setText:v21];
}

id sub_1001A75EC()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC8AppStore12AppEventView_longPressGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AppEventView(uint64_t a1)
{
  result = qword_100978330;
  if (!qword_100978330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001A778C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001A919C(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView];
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

void (*sub_1001A7928(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore16AppEventCardView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1001A798C;
}

void sub_1001A798C(uint64_t a1, char a2)
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

void sub_1001A7AB4()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  if (!CGRectIsEmpty(v13))
  {
    v1 = *&v0[OBJC_IVAR____TtC8AppStore12AppEventView_formattedDateView];
    LayoutMarginsAware<>.layoutFrame.getter();
    sub_1002C65CC(v11);
    sub_1002C97E0();
    sub_1001A927C(v11);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v14);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinY(v15);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v1 setFrame:?];
    v2 = *&v0[OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView];
    v3 = [v2 superview];
    if (v3)
    {
      v4 = v3;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v5 = v0;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        [v1 frame];
        MaxY = CGRectGetMaxY(v16);
        LayoutMarginsAware<>.layoutFrame.getter();
        v8 = CGRectGetHeight(v17) - MaxY;
        LayoutMarginsAware<>.layoutFrame.getter();
        [v2 setBounds:{0.0, 0.0, CGRectGetWidth(v18), v8}];
        [v1 frame];
        v9 = CGRectGetMaxY(v19);
        LayoutMarginsAware<>.layoutFrame.getter();
        v10 = CGRectGetHeight(v20) - v9;
        [v5 bounds];
        [v2 setCenter:{CGRectGetWidth(v21) * 0.5, v9 + v10 * 0.5}];
      }
    }
  }
}

void sub_1001A7E5C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = v61 - v5;
  v7 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  __chkstk_darwin(v7 - 8);
  v9 = v61 - v8;
  v10 = sub_10002849C(&unk_10097B3D0, "α\b");
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v61 - v12;
  sub_100005744(0, &qword_100978360, NSObject_ptr);
  v14 = *&v1[OBJC_IVAR____TtC8AppStore12AppEventView_longPressGestureRecognizer];
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return;
  }

  v62 = *&v1[OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView];
  v15 = [v62 superview];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v18 = v2;
  v61[1] = v17;
  LOBYTE(v17) = static NSObject.== infix(_:_:)();

  if ((v17 & 1) == 0)
  {
    return;
  }

  v19 = [a1 state];
  if (v19 > 3)
  {
    if ((v19 - 4) >= 2)
    {
      return;
    }

    v24 = [v62 superview];
    if (!v24)
    {
      return;
    }

    v25 = v24;
    v26 = v18;
    v27 = static NSObject.== infix(_:_:)();

    if ((v27 & 1) == 0)
    {
      return;
    }

    v28 = objc_opt_self();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = 0x3FF0000000000000;
    v68 = sub_1001A95CC;
    v69 = v29;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_100007A08;
    v67 = &unk_1008B7A18;
    v30 = _Block_copy(&aBlock);
    v31 = v26;

    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = v31;
    v68 = sub_1001A95E4;
    v69 = v32;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v33 = &unk_1008B7A68;
LABEL_30:
    v66 = sub_100504C5C;
    v67 = v33;
    v59 = _Block_copy(&aBlock);
    v60 = v31;

    [v28 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v30 options:v59 animations:0.0 completion:1.0];
    _Block_release(v59);
    _Block_release(v30);
    return;
  }

  if (v19 == 1)
  {
    v34 = v62;
    [a1 locationInView:v62];
    v35 = v18 + OBJC_IVAR____TtC8AppStore12AppEventView_initialLongPressLocation;
    *v35 = v36;
    *(v35 + 1) = v37;
    v35[16] = 0;
    v38 = [v34 superview];
    if (!v38)
    {
      return;
    }

    v39 = v38;
    v40 = v18;
    v41 = static NSObject.== infix(_:_:)();

    if ((v41 & 1) == 0)
    {
      return;
    }

    v28 = objc_opt_self();
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *(v42 + 24) = 0x3FEEB851EB851EB8;
    v68 = sub_1001A95CC;
    v69 = v42;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_100007A08;
    v67 = &unk_1008B7AB8;
    v30 = _Block_copy(&aBlock);
    v31 = v40;

    v43 = swift_allocObject();
    *(v43 + 16) = 1;
    *(v43 + 24) = v31;
    v68 = sub_1001A95E4;
    v69 = v43;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v33 = &unk_1008B7B08;
    goto LABEL_30;
  }

  if (v19 == 2)
  {
    [a1 locationInView:v62];
    v46 = (v18 + OBJC_IVAR____TtC8AppStore12AppEventView_initialLongPressLocation);
    if (*(v18 + OBJC_IVAR____TtC8AppStore12AppEventView_initialLongPressLocation + 16))
    {
      *v46 = v44;
      v46[1] = v45;
      *(v46 + 16) = 0;
    }

    else
    {
      v47 = sqrt((v45 - v46[1]) * (v45 - v46[1]) + (v44 - *v46) * (v44 - *v46));
      [v14 allowableMovement];
      if (v48 < v47)
      {

        [a1 setEnabled:0];
      }
    }

    return;
  }

  if (v19 != 3)
  {
    return;
  }

  v20 = OBJC_IVAR____TtC8AppStore12AppEventView_clickAction;
  swift_beginAccess();
  sub_100079A28(v18 + v20, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v21 = &qword_10097B3F0;
    v22 = &qword_1007B3120;
    v23 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    ObjectGraphPair.value.getter();
    v67 = ObjectType;
    aBlock = v18;
    v49 = v18;
    dispatch thunk of Action.clickSender.setter();

    ObjectGraphPair.objectGraph.getter();
    v50 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();

    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v6, 1, v50) != 1)
    {
      ObjectGraphPair.value.getter();
      v52 = ObjectGraphPair.objectGraph.getter();
      sub_1005F9AF4(aBlock, 1, v52, v6);

      (*(v11 + 8))(v13, v10);

      (*(v51 + 8))(v6, v50);
      goto LABEL_27;
    }

    (*(v11 + 8))(v13, v10);
    v21 = &unk_100972A00;
    v22 = &unk_1007B3130;
    v23 = v6;
  }

  sub_10002B894(v23, v21, v22);
LABEL_27:
  v53 = [v62 superview];
  if (v53)
  {
    v54 = v53;
    v55 = v18;
    v56 = static NSObject.== infix(_:_:)();

    if (v56)
    {
      v28 = objc_opt_self();
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = 0x3FF0000000000000;
      v68 = sub_1001A91E4;
      v69 = v57;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_100007A08;
      v67 = &unk_1008B7978;
      v30 = _Block_copy(&aBlock);
      v31 = v55;

      v58 = swift_allocObject();
      *(v58 + 16) = 0;
      *(v58 + 24) = v31;
      v68 = sub_1001A91F0;
      v69 = v58;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v33 = &unk_1008B79C8;
      goto LABEL_30;
    }
  }
}

id sub_1001A8844(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

BOOL sub_1001A88A4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  sub_100005744(0, &qword_100978360, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 1;
  }

  v8 = *&v2[OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView];
  v9 = OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupContainerView)];
  v12 = *(v8 + v9);
  if (v12)
  {
    v13 = v10;
    v14 = v11;
    [v12 bounds];
    v32.x = v13;
    v32.y = v14;
    if (CGRectContainsPoint(v35, v32))
    {
      return 0;
    }
  }

  v15 = OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC8AppStore16AppEventCardView_notifyMeButton)];
  v18 = *(v8 + v15);
  if (v18)
  {
    v19 = v16;
    v20 = v17;
    [v18 bounds];
    v33.x = v19;
    v33.y = v20;
    if (CGRectContainsPoint(v36, v33))
    {
      return 0;
    }
  }

  [a2 locationInView:v2];
  v22 = v21;
  v24 = v23;
  v25 = [v2 hitTest:0 withEvent:?];
  [v3 bounds];
  v34.x = v22;
  v34.y = v24;
  if (CGRectContainsPoint(v37, v34))
  {
    if (v25)
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();

      if (v26)
      {
        return 0;
      }
    }

    v28 = OBJC_IVAR____TtC8AppStore12AppEventView_clickAction;
    swift_beginAccess();
    sub_100079A28(&v3[v28], v7);
    v29 = sub_10002849C(&unk_10097B3D0, "α\b");
    v30 = (*(*(v29 - 8) + 48))(v7, 1, v29) != 1;
    sub_10002B894(v7, &qword_10097B3F0, &qword_1007B3120);
    return v30;
  }

  else
  {

    return 0;
  }
}

void sub_1001A8BC4(uint64_t a1)
{
  sub_1000798B8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_1001A8C94(uint64_t **a1))()
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
  v2[4] = sub_1001A7928(v2);
  return sub_1000B4CAC;
}

double sub_1001A8D18(uint64_t a1)
{
  [*(*v1 + OBJC_IVAR____TtC8AppStore12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v3);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v4);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v5);
  return 0.0;
}

CGFloat sub_1001A8D90(uint64_t a1)
{
  v2 = *v1;
  [*&v2[OBJC_IVAR____TtC8AppStore12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v4);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v5);
  [v2 bounds];
  return CGRectGetWidth(v6) * 0.5;
}

uint64_t sub_1001A8E60()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1001A919C(&unk_100978350, type metadata accessor for AppEventView, &unk_1007BD558);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1001A8ED4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1001A919C(&unk_100978350, type metadata accessor for AppEventView, &unk_1007BD558);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1001A8F60(uint64_t *a1))()
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
  sub_1001A919C(&unk_100978350, type metadata accessor for AppEventView, &unk_1007BD558);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_1001A901C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView);
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_1001A919C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1001A91F4()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC8AppStore12AppEventView_longPressGestureRecognizer) setEnabled:1];
  }

  return result;
}

uint64_t sub_1001A9220(uint64_t a1)
{
  v2 = type metadata accessor for AppEventCardLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1001A92D0()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8AppStore12AppEventView_clickAction;
  v3 = sub_10002849C(&unk_10097B3D0, "α\b");
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = &v0[OBJC_IVAR____TtC8AppStore12AppEventView_initialLongPressLocation];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v0[OBJC_IVAR____TtC8AppStore12AppEventView_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView] = [objc_allocWithZone(type metadata accessor for AppEventCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v0[OBJC_IVAR____TtC8AppStore12AppEventView_longPressGestureRecognizer] = v5;
  v16.receiver = v0;
  v16.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v6;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 setClipsToBounds:0];
  v11 = OBJC_IVAR____TtC8AppStore12AppEventView_formattedDateView;
  *(*&v10[OBJC_IVAR____TtC8AppStore12AppEventView_formattedDateView] + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_delegate + 8) = &off_1008B7900;
  swift_unknownObjectWeakAssign();
  [v10 addSubview:*&v10[v11]];
  v12 = OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView]];
  v13 = OBJC_IVAR____TtC8AppStore12AppEventView_longPressGestureRecognizer;
  [*&v10[OBJC_IVAR____TtC8AppStore12AppEventView_longPressGestureRecognizer] addTarget:v10 action:"stateChangedFor:"];
  [*&v10[v13] setMinimumPressDuration:0.1];
  [*&v10[v13] setDelegate:v10];
  [*&v10[v12] addGestureRecognizer:*&v10[v13]];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007B10D0;
  *(v14 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v14 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v10;
}

id sub_1001A9648(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;
  v14 = swift_isaMask;
  v15 = v8 + qword_100978368;
  *v15 = 0;
  v15[8] = 1;
  *(v8 + qword_100978370) = 0;
  *(v8 + qword_100978378) = 0;
  *(v8 + qword_100978380) = 0;
  *(v8 + qword_100978388) = 1;
  v16 = type metadata accessor for StackView(0, *((v14 & v13) + 0x50), a7, a8);
  v18.receiver = v8;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
}

void sub_1001A97CC()
{
  if ((v0[qword_100978368 + 8] & 1) != 0 || *&v0[qword_100978368] != 3)
  {
    return;
  }

  v1 = sub_1001A99A4();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_12:
    v5 = 0.0;
    goto LABEL_13;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v3 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v4 = 0;
  v5 = 0.0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    ++v4;
    [v6 frame];
    Width = CGRectGetWidth(v13);

    v5 = v5 + Width;
  }

  while (v3 != v4);
LABEL_13:

  [v0 frame];
  if (v5 >= CGRectGetWidth(v14))
  {
    return;
  }

  v9 = sub_1001A99A4();
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_16;
  }

LABEL_23:
  v10 = _CocoaArrayWrapper.endIndex.getter();
LABEL_16:

  if (v10 >= 2)
  {
    v11 = sub_1001A99A4();
    if (v11 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      [v0 frame];
      CGRectGetWidth(v15);
    }
  }
}

void *sub_1001A99A4()
{
  v1 = [v0 subviews];
  sub_100028004();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isHidden])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

void sub_1001A9B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StackView(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v6.receiver = v4;
  v6.super_class = v5;
  objc_msgSendSuper2(&v6, "layoutSubviews");
  sub_1001A9BD0();
  sub_1001A9D70();
  sub_1001AA064();
}

void sub_1001A9B88(void *a1)
{
  v4 = a1;
  sub_1001A9B20(v4, v1, v2, v3);
}

void sub_1001A9BD0()
{
  v17 = *&v0[qword_100978370];
  v1 = sub_1001A99A4();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_16;
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
    [v0 frame];
    [v6 sizeThatFits:{v7, v8}];
    v10 = v9;
    v12 = v11;
    if (v0[qword_100978388] == 1)
    {
      [v0 frame];
      if (v17)
      {
        if (v13 < v10)
        {
          [v0 frame];
          v10 = v15;
        }
      }

      else if (v14 < v12)
      {
        [v0 frame];
        v12 = v16;
      }
    }

    [v6 setFrame:{0.0, 0.0, v10, v12}];
  }

LABEL_16:
}

double sub_1001A9D70()
{
  v1 = v0;
  v37 = *&v0[qword_100978370];
  sub_1001A97CC();
  v3 = v2;
  v4 = sub_1001A99A4();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v36 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v36)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v13 = [v1 traitCollection];
      v14 = UITraitCollection.prefersRightToLeftLayouts.getter();

      v8 = 0.0;
      if (v14)
      {
        [v1 bounds];
        MaxX = CGRectGetMaxX(v39);
        [v11 frame];
        v8 = MaxX - CGRectGetWidth(v40);
      }

      if (v7)
      {
        v16 = [v1 subviews];
        sub_100028004();
        v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 > *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v18 = *(v17 + 8 * v7 + 24);
        }

        v19 = v18;

        [v19 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        if (v37)
        {
          v41.origin.x = v21;
          v41.origin.y = v23;
          v41.size.width = v25;
          v41.size.height = v27;
          v8 = v3 + CGRectGetMaxY(v41);
          v9 = 0.0;
          goto LABEL_6;
        }

        v28 = [v1 traitCollection];
        v29 = UITraitCollection.prefersRightToLeftLayouts.getter();

        v30 = v21;
        v31 = v23;
        v32 = v25;
        v33 = v27;
        if (v29)
        {
          MinX = CGRectGetMinX(*&v30);
          [v11 frame];
          v8 = MinX - (v3 + CGRectGetWidth(v42));
        }

        else
        {
          v8 = v3 + CGRectGetMaxX(*&v30);
        }
      }

      else
      {
        v9 = 0.0;
        if (v37)
        {
          goto LABEL_6;
        }
      }

      v9 = v8;
      v8 = 0.0;
LABEL_6:
      [v11 frame];
      [v11 setFrame:{v9, v8}];

      ++v7;
      if (v12 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:

  return result;
}

void sub_1001AA064()
{
  v1 = v0;
  v2 = *&v0[qword_100978370];
  v3 = sub_1001A99A4();
  v4 = v3;
  if (v3 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_41:

    return;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_41;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = &selRef__setDefaultAttributes_;
    v31 = xmmword_1007B10D0;
    while (1)
    {
      v10 = (v4 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v4 + 8 * v6 + 32);
      v11 = v10;
      v12 = *&v1[qword_100978378];
      if (v12 > 2)
      {
        break;
      }

      if (!v12)
      {
        [v1 bounds];
        if (v2)
        {
          CGRectGetWidth(*&v15);
        }

        else
        {
          CGRectGetHeight(*&v15);
        }

        [v11 v7[407]];
        [v11 setFrame:{v19, v31}];
        goto LABEL_7;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          sub_10002849C(&qword_1009701B0, qword_1007B1800);
          v13 = swift_allocObject();
          *(v13 + 16) = v31;
          *(v13 + 56) = &type metadata for String;
          *(v13 + 32) = 0xD00000000000002CLL;
          *(v13 + 40) = 0x8000000100805BF0;
          print(_:separator:terminator:)();
        }

        goto LABEL_7;
      }

      if (!v2)
      {
        [v10 v7[407]];
        [v11 setFrame:{v29, v31}];
        goto LABEL_7;
      }

      v25 = [v1 traitCollection];
      v26 = UITraitCollection.prefersRightToLeftLayouts.getter();

      v9 = 0.0;
      if (v26)
      {
        goto LABEL_5;
      }

LABEL_6:
      v7 = &selRef__setDefaultAttributes_;
      [v11 frame];
      [v11 setFrame:{v9, v32, v34}];
LABEL_7:
      ++v6;

      if (v5 == v6)
      {
        goto LABEL_41;
      }
    }

    if (v12 == 3)
    {
      [v1 bounds];
      if (v2)
      {
        v24 = CGRectGetWidth(*&v20) * 0.5;
        [v11 center];
        [v11 setCenter:v24];
      }

      else
      {
        CGRectGetHeight(*&v20);
        [v11 center];
        [v11 setCenter:?];
      }

      goto LABEL_7;
    }

    if (v12 != 4)
    {
      if (v12 != 5 || v2 != 0)
      {
        goto LABEL_7;
      }

      [v1 bounds];
      CGRectGetHeight(v39);
      [v11 v7[407]];
      CGRectGetHeight(v40);
      [v11 lastBaselineFromBottom];
      goto LABEL_39;
    }

    if (!v2)
    {
      [v1 bounds];
      CGRectGetHeight(v41);
      [v11 v7[407]];
      CGRectGetHeight(v42);
LABEL_39:
      [v11 v7[407]];
      [v11 setFrame:{v30, v33, v35}];
      goto LABEL_7;
    }

    v27 = [v1 traitCollection];
    v28 = UITraitCollection.prefersRightToLeftLayouts.getter();

    v9 = 0.0;
    if (v28)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v1 bounds];
    Width = CGRectGetWidth(v37);
    [v11 frame];
    v9 = Width - CGRectGetWidth(v38);
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001AA480(double a1, double a2, double a3)
{
  v7 = [v3 subviews];
  sub_100028004();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v10 = *&v3[qword_100978370];
    v11 = sub_1001A99A4();
    v12 = v11;
    if (v11 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0.0;
    if (!v13)
    {
      goto LABEL_34;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v15 = *(v12 + 32);
    }

    v16 = v15;
    [v15 sizeThatFits:{a1, a2}];
    v19 = v18;
    v20 = v17;
    if (v3[qword_100978388] == 1)
    {
      if (v17 <= a2)
      {
        v21 = v17;
      }

      else
      {
        v21 = a2;
      }

      if (v19 <= a1)
      {
        v22 = v19;
      }

      else
      {
        v22 = a1;
      }

      if (v10)
      {
        v19 = v22;
      }

      else
      {
        v20 = v21;
      }
    }

    if (*&v3[qword_100978378] == 5)
    {
      [v16 lastBaselineFromBottom];
      v23 = a1;
      v24 = a2;
      v25 = a3;
      v27 = v26;

      v28 = v20 - v27;
      a3 = v25;
      a2 = v24;
      a1 = v23;
    }

    else
    {

      if (v19 < 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v19;
      }

      v28 = v20;
    }

    if (v28 < 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v28;
    }

    if (v10)
    {
      v30 = v20;
    }

    else
    {
      v30 = v19;
    }

    v31 = v30 + 0.0;
    if (v13 == 1)
    {
LABEL_34:

      return;
    }

    v32 = 5;
    while (1)
    {
      v35 = v32 - 4;
      if ((v12 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v36 = *(v12 + 8 * v32);
      }

      v37 = v36;
      v38 = __OFADD__(v35, 1);
      v39 = v32 - 3;
      if (v38)
      {
        break;
      }

      [v36 sizeThatFits:{a1, a2}];
      v42 = v40;
      v43 = v41;
      if (v3[qword_100978388] == 1)
      {
        if (v10)
        {
          if (v40 > a1)
          {
            v42 = a1;
          }
        }

        else if (v41 > a2)
        {
          v43 = a2;
        }
      }

      if (*&v3[qword_100978378] == 5)
      {
        [v37 lastBaselineFromBottom];
        v50 = v31;
        v44 = v14;
        v45 = a1;
        v46 = a2;
        v47 = a3;
        v49 = v48;

        v33 = v43 - v49;
        a3 = v47;
        a2 = v46;
        a1 = v45;
        v14 = v44;
        v31 = v50;
      }

      else
      {

        if (v14 <= v42)
        {
          v14 = v42;
        }

        v33 = v43;
      }

      if (v29 <= v33)
      {
        v29 = v33;
      }

      if (v10)
      {
        v34 = v43;
      }

      else
      {
        v34 = v42;
      }

      if (v34 <= 0.0)
      {
        v31 = v31 + v34;
      }

      else
      {
        v31 = v31 + v34 + a3;
      }

      ++v32;
      if (v39 == v13)
      {
        goto LABEL_34;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }
}

double sub_1001AA830(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_1001AA820(a2, a3);
  v7 = v6;

  return v7;
}

Class sub_1001AA884(void *a1)
{
  v1 = a1;
  sub_1001AA8E8();

  sub_100028004();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

id sub_1001AA8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StackView(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1001AA960()
{
  v1 = v0 + qword_100978368;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + qword_100978370) = 0;
  *(v0 + qword_100978378) = 0;
  *(v0 + qword_100978380) = 0;
  *(v0 + qword_100978388) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1001AAA4C(uint64_t a1)
{
  v1 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LargeHeroBreakoutLayout.Metrics();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PageGrid();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v9 + 8))(v11, v8);
  (*(v2 + 104))(v4, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v1);
  sub_1003ADB84(v4, v7);
  (*(v2 + 8))(v4, v1);
  ShelfLayoutContext.traitEnvironment.getter();
  type metadata accessor for LargeHeroBreakoutLayout();
  sub_1001AAD1C(&unk_100982470, &type metadata accessor for LargeHeroBreakoutLayout, &protocol conformance descriptor for LargeHeroBreakoutLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v13 = v12;
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v16);
  return v13;
}

uint64_t sub_1001AAD1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001AAD64()
{
  v1 = v0;
  v2 = type metadata accessor for ShelfBackground();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ShelfBackgroundStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v29 - v12;
  (*(v3 + 16))(v5, v1, v2, v11);
  v14 = (*(v3 + 88))(v5, v2);
  if (v14 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v3 + 96))(v5, v2);

    v15 = &qword_100978420;
    v16 = qword_1007BF850;
    goto LABEL_5;
  }

  if (v14 == enum case for ShelfBackground.color(_:))
  {
    (*(v3 + 96))(v5, v2);

    v15 = &qword_100972A40;
    v16 = &unk_1007B3750;
LABEL_5:
    v17 = sub_10002849C(v15, v16);
    v18 = *(v7 + 32);
    v18(v13, v5 + *(v17 + 48), v6);
    v18(v9, v13, v6);
    goto LABEL_7;
  }

  if (v14 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v3 + 96))(v5, v2);

    v21 = sub_10002849C(&qword_100978418, qword_1007BD670);
    v22 = v21[12];
    v29 = v21[16];
    v30 = v22;
    v23 = *(v7 + 32);
    v23(v13, v5 + v21[20], v6);
    v24 = type metadata accessor for ShelfBackgroundGradientLocation();
    v25 = *(*(v24 - 8) + 8);
    v25(v5 + v29, v24);
    v25(v5 + v30, v24);
    v23(v9, v13, v6);
  }

  else if (v14 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v3 + 96))(v5, v2);
    v26 = sub_10002849C(&qword_100978410, &unk_1007C3880);
    v27 = *(v7 + 32);
    v27(v13, v5 + *(v26 + 48), v6);
    v28 = type metadata accessor for ShelfBackgroundMaterialGradientColors();
    (*(*(v28 - 8) + 8))(v5, v28);
    v27(v9, v13, v6);
  }

  else
  {
    (*(v7 + 104))(v13, enum case for ShelfBackgroundStyle.automatic(_:), v6);
    (*(v3 + 8))(v5, v2);
    (*(v7 + 32))(v9, v13, v6);
  }

LABEL_7:
  v19 = (*(v7 + 88))(v9, v6);
  if (v19 == enum case for ShelfBackgroundStyle.dark(_:))
  {
    return 2;
  }

  if (v19 == enum case for ShelfBackgroundStyle.light(_:))
  {
    return 1;
  }

  if (v19 != enum case for ShelfBackgroundStyle.automatic(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  return 0;
}

char *sub_1001AB21C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentDidChangeHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{a1, a2, a3, a4}];
  *&v4[OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentedControl] = v10;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SegmentedControlView();
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = *&v11[OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentedControl];
  v13 = v11;
  [v13 addSubview:v12];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v13;
}

id sub_1001AB5D4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SegmentedControlView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_1001AB67C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = type metadata accessor for DisjointStack();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  DisjointStack.init(with:)();
  DisjointStack.insert(_:at:with:)();
  sub_10002C0AC(v4 + 88, v12);
  v13[3] = type metadata accessor for Margins();
  v13[4] = &protocol witness table for Margins;
  sub_1000056E0(v13);
  Margins.init(top:left:bottom:right:child:)();
  DisjointStack.insert(_:at:with:)();
  sub_100007000(v13);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_1001AB858()
{
  v0 = type metadata accessor for DisjointStack.EdgePosition();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ZeroDimension();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  DisjointStack.Properties.topEdge.setter();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v6(v3, v5, v0);
  DisjointStack.Properties.leadingEdge.setter();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v6(v3, v5, v0);
  DisjointStack.Properties.bottomEdge.setter();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v6(v3, v5, v0);
  return DisjointStack.Properties.trailingEdge.setter();
}

uint64_t sub_1001ABA00()
{
  v0 = type metadata accessor for DisjointStack.EdgePosition();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ZeroDimension();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  DisjointStack.Properties.bottomEdge.setter();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v6(v3, v5, v0);
  DisjointStack.Properties.leadingEdge.setter();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v6(v3, v5, v0);
  return DisjointStack.Properties.trailingEdge.setter();
}

uint64_t sub_1001ABB74(__n128 a1)
{
  DisjointStack.init(with:)();
  DisjointStack.insert(_:at:with:)();
  sub_10002C0AC(v1 + 88, &v3);
  v4[3] = type metadata accessor for Margins();
  v4[4] = &protocol witness table for Margins;
  sub_1000056E0(v4);
  Margins.init(top:left:bottom:right:child:)();
  DisjointStack.insert(_:at:with:)();
  return sub_100007000(v4);
}

__n128 sub_1001ABC60(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1001ABC84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001ABCCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1001ABD3C@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1001ABD68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001ABE88();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_1001ABDC0()
{
  result = qword_100978460;
  if (!qword_100978460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978460);
  }

  return result;
}

unint64_t sub_1001ABE18()
{
  result = qword_100978468;
  if (!qword_100978468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978468);
  }

  return result;
}

unint64_t sub_1001ABE88()
{
  result = qword_100978470;
  if (!qword_100978470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978470);
  }

  return result;
}

uint64_t sub_1001ABEDC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001ABF30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001ABF90(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v78 = a1;
  v3 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v3 - 8);
  v82 = &v67 - v4;
  v5 = type metadata accessor for PageGrid.HorizontalMargins();
  v75 = v5;
  v86 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  v8 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v67 - v11;
  v73 = &v67 - v11;
  __chkstk_darwin(v13);
  v15 = &v67 - v14;
  v87 = &v67 - v14;
  __chkstk_darwin(v16);
  v83 = &v67 - v17;
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v18 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v80 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v72 = v20;
  *(v20 + 16) = xmmword_1007B23A0;
  v74 = v20 + v19;
  v89 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v21 = *(v8 + 16);
  v22 = a1;
  v23 = v88;
  v21(v15, v22, v88);
  v84 = v8 + 16;
  v24 = v81;
  v21(v12, v81, v23);
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v30 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v31 = *(v86 + 104);
  v86 += 104;
  v79 = v31;
  v77 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v31(v7, enum case for PageGrid.HorizontalMargins.absolute(_:), v5);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v89) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v89 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v33 = v87;
  v34 = v73;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v89 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v35 = v78;
  v36 = v88;
  v76 = v21;
  v21(v33, v78, v88);
  v21(v34, v24, v36);
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v79(v7, v30, v75);
  LOBYTE(v89) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v89 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v38 = v80;
  top = UIEdgeInsetsZero.top;
  v71 = left;
  v39 = v87;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v68 = 2 * v38;
  v89 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v40 = v35;
  v41 = v88;
  v42 = v76;
  v76(v39, v40, v88);
  v43 = v34;
  v44 = v81;
  v42(v34, v81, v41);
  v69 = vdupq_n_s64(0x4041000000000000uLL);
  v67 = v7;
  *v7 = v69;
  v45 = v75;
  v46 = v79;
  v79(v7, v77, v75);
  LOBYTE(v89) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v89 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v47 = v68;
  v48 = v87;
  v49 = v67;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v68 = v47 + v80;
  v89 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = v48;
  v51 = v88;
  v52 = v76;
  v76(v50, v78, v88);
  v52(v43, v44, v51);
  *v49 = v69;
  v53 = v49;
  v46(v49, v77, v45);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v89) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v89 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v54 = v87;
  v55 = v73;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v68 = 4 * v80;
  v89 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = v54;
  v57 = v88;
  v58 = v76;
  v76(v56, v78, v88);
  v58(v55, v81, v57);
  v69 = vdupq_n_s64(0x404A000000000000uLL);
  *v53 = v69;
  v59 = v75;
  v79(v53, v77, v75);
  LOBYTE(v89) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v89 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v60 = v68;
  v61 = v87;
  v62 = v73;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v80 += v60;
  v89 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v63 = v61;
  v64 = v88;
  v65 = v76;
  v76(v63, v78, v88);
  v65(v62, v81, v64);
  *v53 = v69;
  v79(v53, v77, v59);
  LOBYTE(v89) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v89 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v72;
}

unint64_t sub_1001ACA34()
{
  result = qword_100974BA8;
  if (!qword_100974BA8)
  {
    type metadata accessor for InformationRibbonCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974BA8);
  }

  return result;
}

double sub_1001ACA8C()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ShelfLayoutContext();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096E6F8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  sub_1000056A8(v8, qword_1009D2508);
  v9 = ShelfLayoutContext.traitCollection.getter();
  static BadgeViewRibbonLayout.estimatedHeight(fitting:using:with:)();
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  return v11;
}

double sub_1001ACC8C()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096E6F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  sub_1000056A8(v4, qword_1009D2508);
  v5 = ShelfLayoutContext.traitCollection.getter();
  static BadgeViewRibbonLayout.estimatedHeight(fitting:using:with:)();
  v7 = v6;

  return v7;
}

void sub_1001ACDF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25[0] = a2;
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProductReviewAction.ReviewAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ProductReviewAction();
  sub_1001AD320(v12);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v25[1])
  {
    ProductReviewAction.action.getter();
    v13 = (*(v9 + 88))(v11, v8);
    if (v13 == enum case for ProductReviewAction.ReviewAction.tapToRate(_:))
    {
      (*(v9 + 96))(v11, v8);
      v14 = *v11;
      type metadata accessor for ProductTapToRateView(0);
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      sub_1002DC534(v15);
      v16 = *&v2[OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_productTapToRateView];
      if (v16)
      {
        swift_getKeyPath();
        v17 = v16;
        ItemLayoutContext.subscript.getter();

        PageGrid.columnCount.getter();
        v19 = v18;
        (*(v5 + 8))(v7, v4);
        sub_10069E558(v14, v19 == 1.0, v25[0]);
      }
    }

    else
    {
      if (v13 != enum case for ProductReviewAction.ReviewAction.writeAReview(_:))
      {
        (*(v9 + 8))(v11, v8);
        goto LABEL_10;
      }

      (*(v9 + 96))(v11, v8);
      type metadata accessor for ProductReviewActionsView(0);
      v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      sub_1002DC540(v20);
      v21 = *&v2[OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_productReviewActionsView];
      if (v21)
      {
        v22 = v21;
        v23 = ProductWriteAReview.writeReviewAction.getter();
        v24 = ProductWriteAReview.supportAction.getter();
        sub_100079F24();
        sub_1005A9F08(v23, v24, v25[0]);

        swift_unknownObjectRelease();
      }
    }

LABEL_10:
    [v3 setNeedsLayout];
  }
}

uint64_t sub_1001AD174@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1001AD1D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1001AD29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t sub_1001AD320(__n128 a1)
{
  result = qword_100978478;
  if (!qword_100978478)
  {
    type metadata accessor for ProductReviewAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978478);
  }

  return result;
}

uint64_t sub_1001AD378()
{
  sub_10001F64C(v0 + 16);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

double sub_1001AD3E0@<D0>(uint64_t a3@<X8>)
{
  type metadata accessor for CondensedSearchEditorialBackgroundView();
  if (static UICollectionReusableView.matchesItemElementKind(_:)())
  {

    static UICollectionReusableView.defaultReuseIdentifier.getter();
    *(a3 + 24) = sub_10002849C(&qword_100978570, qword_1007BD9C8);
    *(a3 + 32) = sub_1001AD4B4();
    sub_1000056E0(a3);
    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1001AD4B4()
{
  result = qword_100978578;
  if (!qword_100978578)
  {
    sub_10002D1A8(&qword_100978570, qword_1007BD9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978578);
  }

  return result;
}

id sub_1001AD518(uint64_t a1)
{
  v36[1] = *v1;
  v2 = type metadata accessor for PageGrid();
  v37 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v5 - 8);
  v7 = v36 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v36 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = 0.0;
  if (!Strong)
  {
    goto LABEL_10;
  }

  v17 = Strong;
  v36[0] = v2;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_8;
  }

  sub_1002733FC(v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v14, v7, v8);
    ItemLayoutContext.indexPath.getter();
    v18 = static IndexPath.> infix(_:_:)();
    v19 = *(v9 + 8);
    v19(v11, v8);
    if (v18)
    {
      v16 = sub_10027384C(v17);
      swift_unknownObjectRelease();

      v19(v14, v8);
      goto LABEL_9;
    }

    v19(v14, v8);
    swift_unknownObjectRelease();
LABEL_8:

    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  sub_10002B894(v7, &unk_10097DAE0, &qword_1007B5CA0);
LABEL_9:
  v2 = v36[0];
LABEL_10:
  v20 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{0.0, v16}];
  v21 = objc_opt_self();
  v22 = [v21 fractionalWidthDimension:1.0];
  v23 = [v21 fractionalHeightDimension:1.0];
  v24 = [objc_opt_self() sizeWithWidthDimension:v22 heightDimension:v23];

  type metadata accessor for CondensedSearchEditorialBackgroundView();
  v25 = v24;
  static UICollectionReusableView.makeItemScopedElementKind(in:uniquify:)();
  v26 = v20;
  v27 = String._bridgeToObjectiveC()();

  v28 = [objc_opt_self() supplementaryItemWithLayoutSize:v25 elementKind:v27 containerAnchor:v26];

  type metadata accessor for AppEventSearchResult();
  sub_1001ADD60();
  ItemLayoutContext.typedModel<A>(as:)();
  if (v38)
  {
    v29 = sub_1001EA6E4();

    v30 = v29 + -10.0;
  }

  else
  {
    v30 = -10.0;
  }

  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  PageGrid.horizontalMargins.getter();
  v32 = v31;
  v34 = v33;
  (*(v37 + 8))(v4, v2);
  [v28 setContentInsets:{v30, v32 + -10.0, -10.0, v34 + -10.0}];
  [v28 setZIndex:-1];

  return v28;
}

void *sub_1001ADA44(uint64_t a1)
{
  v2 = sub_10002849C(&unk_1009804F0, &unk_1007B3800);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-1] - v3;
  v5 = type metadata accessor for ItemBackground();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18[-1] - v10;
  sub_10002849C(&qword_10096FB18, &unk_1007B0F10);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v19)
  {
    sub_10002B894(v18, &unk_10096FB20, &qword_1007B3850);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_6;
  }

  sub_10002A400(v18, v19);
  dispatch thunk of ItemBackgroundProviding.itemBackground.getter();
  sub_100007000(v18);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_6:
    sub_10002B894(v4, &unk_1009804F0, &unk_1007B3800);
    return _swiftEmptyArrayStorage;
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v8, v11, v5);
  v12 = (*(v6 + 88))(v8, v5);
  v13 = *(v6 + 8);
  if (v12 == enum case for ItemBackground.condensedSearch(_:))
  {
    v13(v8, v5);
    v14 = sub_1001AD518(a1);
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1007B0B70;
    *(v15 + 32) = v14;
    v13(v11, v5);
    return v15;
  }

  v13(v11, v5);
  v13(v8, v5);
  return _swiftEmptyArrayStorage;
}

unint64_t sub_1001ADD60()
{
  result = qword_100973DC0;
  if (!qword_100973DC0)
  {
    type metadata accessor for AppEventSearchResult();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973DC0);
  }

  return result;
}

void sub_1001ADDB8()
{
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B48F0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 blackColor];
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.4];

  *(v0 + 40) = v3;
  v4 = [v1 blackColor];
  v5 = [v4 colorWithAlphaComponent:0.0];

  *(v0 + 48) = v5;
  qword_100978580 = v0;
}

UIColor sub_1001ADEBC()
{
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B48F0;
  sub_100028BB8();
  *(v0 + 32) = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.43137, 0.43137, 0.43137, 0.6);
  *(v0 + 40) = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.35294, 0.35294, 0.35294, 0.5);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.27146, 0.2665, 0.26659, 0.2).super.isa;
  *(v0 + 48) = result;
  qword_100978588 = v0;
  return result;
}

char *sub_1001ADFA4()
{
  v2 = OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_colors;
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_colors);
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {

    sub_100144108(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_41;
    }

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

      v7 = v6;
      [v6 _luminance];
      v9 = v8;

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_100144108((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      _swiftEmptyArrayStorage[v11 + 4] = v9;
    }
  }

  v12 = _swiftEmptyArrayStorage[2];
  if (!v12)
  {

LABEL_26:
    if (qword_10096D248 != -1)
    {
      swift_once();
    }

    v22 = &qword_100978588;
    v23 = 0x3FE3333333333333;
LABEL_29:
    v24 = *&v23;
    goto LABEL_30;
  }

  if (v12 <= 3)
  {
    v13 = 0;
    v1 = 0.0;
LABEL_20:
    v16 = v12 - v13;
    v17 = &_swiftEmptyArrayStorage[v13 + 4];
    do
    {
      v18 = *v17++;
      v1 = v1 + v18;
      --v16;
    }

    while (v16);
    goto LABEL_22;
  }

  v13 = v12 & 0x7FFFFFFFFFFFFFFCLL;
  v14 = &_swiftEmptyArrayStorage[6];
  v1 = 0.0;
  v15 = v12 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v1 = v1 + *(v14 - 2) + *(v14 - 1) + *v14 + v14[1];
    v14 += 4;
    v15 -= 4;
  }

  while (v15);
  if (v12 != v13)
  {
    goto LABEL_20;
  }

LABEL_22:

  if (v1 <= 0.0)
  {
    goto LABEL_26;
  }

  v19 = *(v0 + v2);
  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_25;
  }

LABEL_41:
  v20 = _CocoaArrayWrapper.endIndex.getter();
LABEL_25:
  v21 = v1 / v20;
  if (v21 == 0.0)
  {
    goto LABEL_26;
  }

  if (v21 < COERCE_DOUBLE(1) || v21 >= 0.83)
  {
    if (qword_10096D240 != -1)
    {
      swift_once();
    }

    v22 = &qword_100978580;
    v23 = 0x3FE6666666666666;
    goto LABEL_29;
  }

  v24 = 0.2;
  if (qword_10096D240 != -1)
  {
    swift_once();
  }

  v22 = &qword_100978580;
LABEL_30:
  v25 = *v22;

  v26 = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v26[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v25;

  sub_1001C0CEC();
  sub_1001C0B48(&off_1008AF348);
  v27 = v26;
  v28 = [v27 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 1.0}];

  v29 = [v27 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 0.0}];

  v30 = [v27 layer];
  [v30 setMask:0];

  v31 = [v27 layer];

  [v31 setCompositingFilter:kCAFilterPlusD];
  [v27 setAlpha:v24];

  return v27;
}

id sub_1001AE5B0()
{
  sub_100086480();
  v1 = OBJC_IVAR____TtC8AppStore28MultiAppFallbackGradientView_overlayGradientView;
  [*&v0[OBJC_IVAR____TtC8AppStore28MultiAppFallbackGradientView_overlayGradientView] removeFromSuperview];
  v2 = sub_1001ADFA4();
  v3 = *&v0[v1];
  *&v0[v1] = v2;
  v4 = v2;

  [v0 addSubview:v4];
  [v0 setNeedsLayout];

  return [v0 setNeedsDisplay];
}

char *sub_1001AE690(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_sourceView] = a1;
  v5 = *&a1[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView];
  v6 = type metadata accessor for RevealingImageMirrorView(0);
  v21.receiver = objc_allocWithZone(v6);
  v21.super_class = v6;
  v7 = a1;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  if (qword_10096DBE0 != -1)
  {
    swift_once();
  }

  v20[4] = *&byte_1009D01E0[64];
  v20[5] = *&byte_1009D01E0[80];
  v20[6] = *&byte_1009D01E0[96];
  v20[7] = *&byte_1009D01E0[112];
  v20[0] = *byte_1009D01E0;
  v20[1] = *&byte_1009D01E0[16];
  v20[2] = *&byte_1009D01E0[32];
  v20[3] = *&byte_1009D01E0[48];
  [v10 setTransform:v20];

  v11 = &v8[OBJC_IVAR____TtC8AppStore18RevealingImageView_mirrorDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v11 + 1) = &off_1008C2888;
  swift_unknownObjectWeakAssign();
  sub_1001A4BC4(Strong);

  *&v2[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingImageView] = v9;
  v13 = *&v7[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView];
  v14 = objc_allocWithZone(type metadata accessor for RevealingVideoMirrorView(0));
  *&v2[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingVideoView] = sub_100667554(v13);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = *&v15[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingImageView];
  v17 = v15;
  [v17 addSubview:v16];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingVideoView]];
  [v17 setClipsToBounds:1];

  return v17;
}

id sub_1001AE940(char *a1, char a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = sub_10002849C(&qword_100972638, qword_1007BDA60);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v27 - v12;
  if ((a2 & 1) == 0)
  {
    v28 = a4;
    [a1 frame];
    [v5 setFrame:?];
    v14 = *&v5[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingImageView];
    v15 = *&a1[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingImageView];
    [v15 frame];
    [v14 setFrame:?];
    [v14 setHidden:{objc_msgSend(v15, "isHidden")}];
    v16 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_10007FF30(&v15[v16], v13);
    v17 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_1001AEE58(v13, v14 + v17);
    swift_endAccess();
    v18 = [*&v15[OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView] image];
    if (v18)
    {
      v19 = &v15[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize];
      if ((v15[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize + 16] & 1) != 0 || (v20 = *&v15[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkLayoutWithMetrics]) == 0)
      {
      }

      else
      {
        v21 = *v19;
        v27 = v19[1];
        v22 = v18;

        v23 = v22;
        sub_1001A5AD8(v22, v21, v27, 0, v20, a3, v28);
      }
    }

    v24 = *&v5[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingVideoView];
    v25 = *&a1[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingVideoView];
    [v25 frame];
    [v24 setFrame:?];
    [v24 setHidden:{objc_msgSend(v25, "isHidden")}];
  }

  return [v5 setHidden:{objc_msgSend(a1, "isHidden", v11)}];
}

id sub_1001AEBD0()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingImageView];
  [v0 bounds];
  MidX = CGRectGetMidX(v14);
  v3 = OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_sourceView;
  [*&v0[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_sourceView] frame];
  v4 = MidX - CGRectGetWidth(v15) * 0.5;
  [v0 bounds];
  MinX = CGRectGetMinX(v16);
  [*&v0[v3] frame];
  Width = CGRectGetWidth(v17);
  [*&v0[v3] frame];
  [v1 setFrame:{v4, MinX, Width, CGRectGetHeight(v18)}];
  v7 = *&v0[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingVideoView];
  [v0 bounds];
  v8 = CGRectGetMidX(v19);
  [*&v0[v3] frame];
  v9 = v8 - CGRectGetWidth(v20) * 0.5;
  [v0 bounds];
  v10 = CGRectGetMinX(v21);
  [*&v0[v3] frame];
  v11 = CGRectGetWidth(v22);
  [*&v0[v3] frame];
  return [v7 setFrame:{v9, v10, v11, CGRectGetHeight(v23)}];
}

uint64_t sub_1001AEE58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100972638, qword_1007BDA60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AEEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  if (!a1)
  {
    v14 = type metadata accessor for UIButton.Configuration();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    goto LABEL_5;
  }

  UIButton.configuration.getter();
  v12 = type metadata accessor for UIButton.Configuration();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_5:
    sub_1001AF7BC(v11);
    static UIButton.Configuration.gray()();
    goto LABEL_6;
  }

  (*(v13 + 32))(a2, v11, v12);
LABEL_6:
  (*(v6 + 104))(v8, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v5);
  UIButton.Configuration.cornerStyle.setter();
  v15 = objc_opt_self();
  v16 = [v15 systemBlueColor];
  UIButton.Configuration.baseForegroundColor.setter();
  sub_100028BB8();
  UIColor.init(light:dark:)([v15 whiteColor], objc_msgSend(v15, "tertiarySystemGroupedBackgroundColor"));
  UIButton.Configuration.baseBackgroundColor.setter();
  return UIButton.Configuration.contentInsets.setter();
}

uint64_t sub_1001AF164()
{
  v0._object = 0x8000000100805E70;
  v0._countAndFlagsBits = 0xD000000000000016;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  return localizedString(_:comment:)(v0, v1)._countAndFlagsBits;
}

double sub_1001AF188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50[1] = a1;
  v7 = sub_10002849C(&qword_100975048, "b,\b");
  __chkstk_darwin(v7 - 8);
  v50[0] = v50 - v8;
  v56 = type metadata accessor for FontSource();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FontUseCase();
  v60 = *(v11 - 8);
  __chkstk_darwin(v11);
  v51 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v59 = v50 - v14;
  v15 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for AttributedString();
  v57 = *(v16 - 8);
  v58 = v16;
  __chkstk_darwin(v16);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v19 - 8);
  v53 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = v50 - v23;
  v25 = *(a4 + 16);
  v61 = a3;
  v62 = a4;
  v26 = a4;
  v27 = v4;
  v52 = v25;
  v28 = (v25)(a3, v26, v22);
  UIButton.configuration.getter();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v63 = v27;
  v29 = [v27 traitCollection];
  v30 = String.count.getter();
  v55 = v18;
  if (v29 && (UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0)
  {
    if (v30 < 9)
    {
LABEL_4:
      v31 = v60;
      if (qword_10096E0F0 != -1)
      {
        swift_once();
      }

      v32 = qword_1009D1250;
      goto LABEL_11;
    }
  }

  else if (v30 <= 6)
  {
    goto LABEL_4;
  }

  v31 = v60;
  if (qword_10096E0F8 != -1)
  {
    swift_once();
  }

  v32 = qword_1009D1268;
LABEL_11:
  v33 = sub_1000056A8(v11, v32);
  v34 = *(v31 + 16);
  v35 = v51;
  v34(v51, v33, v11);

  v36 = v59;
  (*(v31 + 32))(v59, v35, v11);
  v34(v10, v36, v11);
  v37 = v54;
  v38 = v56;
  (*(v54 + 104))(v10, enum case for FontSource.useCase(_:), v56);
  v39 = [v63 traitCollection];
  isa = FontSource.font(compatibleWith:)(v39).super.isa;

  (*(v37 + 8))(v10, v38);
  v64 = isa;
  sub_1001469E0();
  v41 = isa;
  v42 = v55;
  AttributedString.subscript.setter();
  v43 = type metadata accessor for UIButton.Configuration();
  v44 = (*(*(v43 - 8) + 48))(v24, 1, v43);
  v46 = v57;
  v45 = v58;
  if (!v44)
  {
    v47 = v50[0];
    (*(v57 + 16))(v50[0], v42, v58);
    (*(v46 + 56))(v47, 0, 1, v45);
    UIButton.Configuration.attributedTitle.setter();
  }

  v48 = v52(v61, v62);
  sub_100146A44(v24, v53);
  UIButton.configuration.setter();

  (*(v31 + 8))(v36, v11);
  (*(v46 + 8))(v42, v45);
  sub_1001AF7BC(v24);
  return result;
}

uint64_t sub_1001AF7BC(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1001AF824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v55 = *(v5 - 8);
  v56 = v5;
  __chkstk_darwin(v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 launchedToTest];

  if (v16)
  {
    sub_1000076C0();
    v56 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    v18[2] = a1;
    v19 = a1;
    v20 = ObjectType;
    v21 = v58;
    v18[3] = v58;
    v18[4] = v20;
    v65 = sub_1001B09D8;
    v66 = v18;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_100007A08;
    v64 = &unk_1008B7DE0;
    v22 = _Block_copy(&aBlock);
    v23 = v59;
    v24 = v22;
    sub_10000827C(v19, v21);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10002D150();
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v25 = v56;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v23 + 8))(v10, v8);
    (*(v12 + 8))(v14, v11);
    return result;
  }

  v51 = v7;
  v54 = v11;
  v26 = *&v3[OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph];
  v52 = v8;
  v53 = v12;
  v27 = a1;
  v28 = ObjectType;
  v29 = v58;
  v30 = v59;
  if (v26)
  {
    v31 = v14;
    v32 = v3;
    type metadata accessor for ASKBagContract();

    BaseObjectGraph.inject<A>(_:)();
    v33 = static ResilientDeepLinkController.hasResilientDeepLinks(bag:)();

    if (v33)
    {
      sub_1000076C0();
      v34 = v28;
      v35 = static OS_dispatch_queue.main.getter();
      v36 = swift_allocObject();
      v36[2] = v27;
      v36[3] = v29;
      v36[4] = v34;
      v65 = sub_1001B0620;
      v66 = v36;
      aBlock = _NSConcreteStackBlock;
      v62 = 1107296256;
      v63 = sub_100007A08;
      v64 = &unk_1008B7D90;
      v37 = _Block_copy(&aBlock);
      sub_10000827C(v27, v29);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10002D150();
      sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
      sub_1000079A4();
      v38 = v52;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v37);

      (*(v59 + 8))(v10, v38);
      (*(v53 + 8))(v31, v54);
      return result;
    }

    v30 = v59;
    v3 = v32;
    v14 = v31;
  }

  if (!qword_100978608 && (byte_100978600 & 1) == 0)
  {
    byte_100978600 = 1;
    sub_1000076C0();
    v40 = v55;
    v39 = v56;
    v41 = *(v55 + 104);
    v50 = v10;
    v42 = v51;
    v41(v51, enum case for DispatchQoS.QoSClass.default(_:), v56);
    v59 = static OS_dispatch_queue.global(qos:)();
    (*(v40 + 8))(v42, v39);
    v43 = swift_allocObject();
    v43[2] = v27;
    v43[3] = v29;
    v43[4] = v3;
    v43[5] = v28;
    v65 = sub_1001B0614;
    v66 = v43;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_100007A08;
    v64 = &unk_1008B7D40;
    v44 = _Block_copy(&aBlock);
    sub_10000827C(v27, v29);
    v45 = v3;
    static DispatchQoS.unspecified.getter();
    v60 = _swiftEmptyArrayStorage;
    sub_10002D150();
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_1000079A4();
    v46 = v50;
    v47 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v48 = v59;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v44);

    (*(v30 + 8))(v46, v47);
    (*(v53 + 8))(v14, v54);
  }

  return result;
}

uint64_t sub_1001AFF54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v12 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  if ([v15 locationServicesEnabled] && !objc_msgSend(v15, "authorizationStatus"))
  {
    sub_1000076C0();
    v20 = static OS_dispatch_queue.main.getter();
    v21 = a3;
    v24 = a3;
    v16 = v20;
    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = a2;
    v22[4] = v21;
    v22[5] = a4;
    v30 = sub_1001B06C0;
    v31 = v22;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100007A08;
    v29 = &unk_1008B7E80;
    v18 = _Block_copy(&aBlock);
    sub_10000827C(a1, a2);
    v23 = v24;
  }

  else
  {
    sub_1000076C0();
    v16 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = a4;
    v30 = sub_1001B09D8;
    v31 = v17;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100007A08;
    v29 = &unk_1008B7E30;
    v18 = _Block_copy(&aBlock);
    sub_10000827C(a1, a2);
  }

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v25);
  return sub_1001B02E0();
}

uint64_t sub_1001B02E0()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000076C0();
  v8 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1001B06B4;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008B7EA8;
  v9 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_1001B0538(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = off_100978610;
  v5 = qword_100978618;
  off_100978610 = a1;
  qword_100978618 = a2;
  sub_10000827C(a1, a2);
  sub_10001F63C(v4, v5);
  if (!qword_100978608)
  {
    v6 = [objc_allocWithZone(CLLocationManager) init];
    v7 = qword_100978608;
    qword_100978608 = v6;
    v8 = v6;

    [v8 setDelegate:a3];
    [v8 requestWhenInUseAuthorization];
  }
}

uint64_t sub_1001B0624()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001B0664()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1();
  }

  v2 = off_100978610;
  v3 = qword_100978618;
  off_100978610 = 0;
  qword_100978618 = 0;

  return sub_10001F63C(v2, v3);
}

void sub_1001B06CC()
{
  v0 = off_100978610;
  if (off_100978610)
  {
    v1 = qword_100978618;

    v0(v2);
    sub_10001F63C(v0, v1);
    v3 = off_100978610;
  }

  else
  {
    v3 = 0;
  }

  v4 = qword_100978618;
  off_100978610 = 0;
  qword_100978618 = 0;
  sub_10001F63C(v3, v4);
  v5 = qword_100978608;
  qword_100978608 = 0;
}

void sub_1001B0758(int a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1000076C0();
    v10 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_1001B06CC;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008B7ED0;
    v11 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10002D150();
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v11);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1001B0A04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001B0A4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001B0A9C(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for TimingCurve();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100982E40, &qword_1007BC540);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v40.a = 1.0;
  v41 = v2[4];
  v12 = *(v5 + 104);
  v32 = enum case for TimingCurve.easeInOut(_:);
  v36 = v4;
  v34 = v5 + 104;
  v31 = v12;
  v12(v7);
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  v13 = *(v9 + 8);
  v35 = v8;
  v33 = v9 + 8;
  v30 = v13;
  v13(v11, v8);
  CGAffineTransformMakeScale(&v40, v40.a, v40.a);
  v38 = *&v40.a;
  v39 = *&v40.c;
  tx = v40.tx;
  ty = v40.ty;
  v16 = sub_1001B1B48(v2[2], a1);
  v37 = v2;
  v17 = *v2;
  if (*v2 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_12;
    }
  }

  if (v18 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v19 = 0;
  v20 = *(v37 + 24);
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v21 = *(v17 + 8 * v19 + 32);
    }

    v22 = v21;
    *&v40.a = v38;
    *&v40.c = v39;
    v40.tx = tx;
    v40.ty = ty;
    [v21 setTransform:&v40];
    if (v20)
    {
      [v22 _setContinuousCornerRadius:v16];
    }

    ++v19;
  }

  while (v18 != v19);
LABEL_12:
  v40.a = 1.0;
  v41 = 0;
  v31(v7, v32, v36);
  Interpolator.init(fromValue:toValue:curve:)();
  v23 = v35;
  Interpolator.value(forInput:)();
  v30(v11, v23);
  a = v40.a;
  v25 = v37[1];
  if (v25 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (!v26)
    {
      return;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      return;
    }
  }

  if (v26 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  for (i = 0; i != v26; ++i)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v28 = *(v25 + 8 * i + 32);
    }

    v29 = v28;
    [v28 setAlpha:a];
  }
}

void sub_1001B0E9C()
{
  v1 = objc_opt_self();
  v2 = *v0;
  v19 = v0[1];
  v20 = v2;
  v3 = v0[2];
  v4 = swift_allocObject();
  v5 = *(v0 + 1);
  *(v4 + 16) = *v0;
  *(v4 + 32) = v5;
  *(v4 + 48) = v0[4];
  v17 = sub_1001B1A80;
  v18 = v4;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100007A08;
  v16 = &unk_1008B80D8;
  v6 = _Block_copy(&aBlock);
  sub_1001B1A88(&v20, v12);
  sub_1001B1A88(&v19, v12);
  v7 = v3;

  v8 = swift_allocObject();
  v9 = *(v0 + 1);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v9;
  *(v8 + 48) = v0[4];
  v17 = sub_1001B1B40;
  v18 = v8;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100504C5C;
  v16 = &unk_1008B8128;
  v10 = _Block_copy(&aBlock);
  sub_1001B1A88(&v20, v12);
  sub_1001B1A88(&v19, v12);
  v11 = v7;

  [v1 animateWithDuration:v6 animations:v10 completion:0.15];
  _Block_release(v10);
  _Block_release(v6);
}

void sub_1001B1084(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = 0;
  v4 = *(a1 + 24);
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v13[1] = 0;
    v13[2] = 0;
    v13[0] = 0x3FF0000000000000;
    v13[3] = 0x3FF0000000000000;
    v13[4] = 0;
    v13[5] = 0;
    [v5 setTransform:v13];
    if (v4)
    {
      [v6 _setContinuousCornerRadius:0.0];
    }

    ++v3;
  }

  while (v2 != v3);
LABEL_12:
  v7 = a1[1];
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    [v10 setAlpha:1.0];
  }
}

void sub_1001B1224(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 >> 62)
  {
    v9 = a2;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v9;
    v3 = v10;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 24);
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v5)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
        if (v5)
        {
LABEL_10:
          v7 = v6;
          v8 = [v6 layer];
          [v8 setMaskedCorners:15];

          v6 = v8;
        }
      }

      ++v4;

      if (v3 == v4)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1001B1328()
{
  v1 = *v0;
  if (*v0 >> 62)
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
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v6[1] = 0;
      v6[2] = 0;
      v6[0] = 0x3FF0000000000000;
      v6[3] = 0x3FF0000000000000;
      v6[4] = 0;
      v6[5] = 0;
      [v4 setTransform:v6];
    }

    while (v2 != v3);
  }
}

void sub_1001B140C(unint64_t a1, unint64_t a2, double a3, double a4)
{
  v35 = type metadata accessor for TimingCurve();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100982E40, &qword_1007BC540);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  if (a1 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_11:
    v24 = enum case for TimingCurve.easeInOut(_:);
    v22 = *(v7 + 104);
    goto LABEL_12;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v14 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v32 = a2;
  v15 = 0;
  v16 = a1;
  v33 = a1 & 0xC000000000000001;
  v34 = enum case for TimingCurve.easeInOut(_:);
  v17 = v7 + 104;
  v18 = (v11 + 8);
  v30 = v17 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v31 = v11;
  do
  {
    v23 = v14;
    if (v33)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v16 + 8 * v15 + 32);
    }

    v20 = v19;
    ++v15;
    [v19 frame];
    Height = CGRectGetHeight(v38);
    v36.a = 0.0;
    v37 = Height * a4;
    v22 = *v17;
    (*v17)(v9, v34, v35);
    Interpolator.init(fromValue:toValue:curve:)();
    Interpolator.value(forInput:)();
    (*v18)(v13, v10);
    CGAffineTransformMakeTranslation(&v36, 0.0, v36.a);
    [v20 setTransform:&v36];

    v14 = v23;
  }

  while (v23 != v15);
  v11 = v31;
  a2 = v32;
  v24 = v34;
LABEL_12:
  v36.a = 1.0;
  v37 = 0.0;
  v22(v9, v24, v35);
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  (*(v11 + 8))(v13, v10);
  a = v36.a;
  if (a2 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (!v26)
    {
      return;
    }
  }

  else
  {
    v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      return;
    }
  }

  if (v26 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  for (i = 0; i != v26; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v28 = *(a2 + 8 * i + 32);
    }

    v29 = v28;
    [v28 setAlpha:a];
  }
}

void sub_1001B17DC(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v5 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    v12[1] = 0;
    v12[2] = 0;
    v12[0] = 0x3FF0000000000000;
    v12[3] = 0x3FF0000000000000;
    v12[4] = 0;
    v12[5] = 0;
    [v6 setTransform:v12];
  }

  while (v4 != v5);
LABEL_10:
  if (a2 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
LABEL_21:
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(a2 + 8 * i + 32);
    }

    v11 = v10;
    [v10 setAlpha:1.0];
  }
}

void sub_1001B195C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v7[4] = sub_1001B1A74;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100007A08;
  v7[3] = &unk_1008B8088;
  v6 = _Block_copy(v7);

  [v4 animateWithDuration:v6 animations:0.15];
  _Block_release(v6);
}

uint64_t sub_1001B1A88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009711F0, &unk_1007B2720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B1AF8()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_1001B1B48(void *a1, double a2)
{
  v3 = type metadata accessor for TimingCurve();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100982E40, &qword_1007BC540);
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v14 - v10;
  if ([a1 userInterfaceIdiom] == 1)
  {
    v12 = 0x4040000000000000;
  }

  else
  {
    [a1 displayCornerRadius];
  }

  v15 = *&v12;
  v14 = 0x4034000000000000;
  (*(v4 + 104))(v6, enum case for TimingCurve.easeInOut(_:), v3);
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  (*(v8 + 8))(v11, v7);
  return v15;
}

double sub_1001B1DA0(void *a1)
{
  v3 = type metadata accessor for TitledParagraphLayout();
  v107 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TitledParagraphLayout.Metrics();
  v106 = *(v6 - 8);
  __chkstk_darwin(v6);
  v105 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v95 = v88 - v9;
  __chkstk_darwin(v10);
  v110 = v88 - v11;
  v103 = type metadata accessor for LabelPlaceholderCompatibility();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for PageGrid();
  v99 = *(v100 - 1);
  __chkstk_darwin(v100);
  v98 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TitledParagraphStyle();
  v97 = *(v14 - 8);
  __chkstk_darwin(v14);
  v96 = (v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v109 = (v88 - v17);
  v18 = sub_10002849C(&qword_100978688, &qword_1007BDC00);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v88 - v20;
  type metadata accessor for TitledParagraph();
  sub_1001B2D48(&unk_100978690, &type metadata accessor for TitledParagraph, &protocol conformance descriptor for TitledParagraph);
  ItemLayoutContext.typedModel<A>(as:)();
  v22 = aBlock;
  if (!aBlock)
  {
    return 0.0;
  }

  v92 = v5;
  v93 = v6;
  v94 = v3;
  sub_100135EAC();
  ItemLayoutContext.typedState<A>(as:)();
  StateLens<A>.currentValue.getter();
  (*(v19 + 8))(v21, v18);
  LODWORD(v90) = aBlock;
  v23 = dispatch thunk of TitledParagraph.text.getter();
  swift_getKeyPath();
  v91 = a1;
  ItemLayoutContext.subscript.getter();

  v24 = v115[0];
  v25 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v23];
  v26 = [v23 length];
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = v24;
  *(v27 + 32) = v25;
  *(v27 + 40) = 1;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_10010279C;
  *(v28 + 24) = v27;
  v122 = sub_1001027AC;
  v123 = v28;
  aBlock = _NSConcreteStackBlock;
  v119 = 1107296256;
  v120 = sub_1006606C4;
  v121 = &unk_1008B81A0;
  v29 = _Block_copy(&aBlock);
  v30 = v24;
  v108 = v25;

  [v23 enumerateAttributesInRange:0 options:v26 usingBlock:{0x100000, v29}];

  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    TitledParagraph.style.getter();
    v32 = v97;
    v33 = v96;
    (v97[13])(v96, enum case for TitledParagraphStyle.detail(_:), v14);
    sub_1001B2D48(&qword_1009786A0, &type metadata accessor for TitledParagraphStyle, &protocol conformance descriptor for TitledParagraphStyle);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v34 = v22;
    if (aBlock == v115[0] && v119 == v115[1])
    {
      v89 = 1;
    }

    else
    {
      v89 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v36 = v100;
    v37 = v90;
    v38 = v32[1];
    v38(v33, v14);
    v38(v109, v14);

    if (v37)
    {
      if (qword_10096D650 != -1)
      {
        swift_once();
      }

      v39 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
      sub_1000056A8(v39, qword_1009CF328);
      v115[0] = sub_100079F24();
      Conditional.evaluate(with:)();
      swift_unknownObjectRelease();
      v96 = aBlock;
    }

    else
    {
      v96 = 0;
    }

    TitledParagraph.primarySubtitle.getter();
    v97 = v34;
    v90 = TitledParagraph.secondarySubtitle.getter();
    v88[1] = v40;
    v91 = v108;
    v41 = sub_100079F24();
    swift_getKeyPath();
    v42 = v98;
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    v1 = v43;
    (*(v99 + 8))(v42, v36);
    v109 = v41;
    isEscapingClosureAtFileLocation = [v41 traitCollection];
    sub_1000367E8();
    if (qword_10096DE20 == -1)
    {
      goto LABEL_14;
    }
  }

  swift_once();
LABEL_14:
  v44 = type metadata accessor for FontUseCase();
  sub_1000056A8(v44, qword_1009D09E0);
  v100 = isEscapingClosureAtFileLocation;
  v45 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v46 = type metadata accessor for Feature();
  v121 = v46;
  v47 = sub_1001B2D48(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v122 = v47;
  v48 = sub_1000056E0(&aBlock);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(*(v46 - 1) + 104);
  v50(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v46);
  v51 = v45;
  isFeatureEnabled(_:)();
  sub_100007000(&aBlock);
  v52 = v101;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v53 = v102[1];
  v54 = v103;
  v53(v52, v103);
  v116 = v46;
  v117 = v47;
  v55 = sub_1000056E0(v115);
  v50(v55, v49, v46);
  v56 = v51;
  isFeatureEnabled(_:)();
  sub_100007000(v115);
  v102 = v56;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v53(v52, v54);
  v57 = 0;
  v58 = v89;
  if ((v89 & 1) == 0)
  {
    v57 = static TitledParagraphLayout.isMultiColumn(compatibleWith:)();
  }

  v59 = swift_allocObject();
  *(v59 + 16) = v57 & 1;
  v60 = v109;
  *(v59 + 24) = v104;
  *(v59 + 32) = v60;
  v61 = v96;
  *(v59 + 40) = v108;
  *(v59 + 48) = v61;
  v62 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v63 = v91;
  swift_unknownObjectRetain();
  v64 = LayoutViewPlaceholder.init(measureWith:)();
  v114[3] = v62;
  v114[4] = &protocol witness table for LayoutViewPlaceholder;
  v114[0] = v64;
  v65 = v107;
  v66 = v93;
  v67 = v92;
  v68 = v110;
  v108 = v63;
  if (v57)
  {
    v69 = v106;
    if (qword_10096D660 != -1)
    {
      swift_once();
    }

    v70 = sub_1000056A8(v66, qword_1009CF358);
    v71 = *(v69 + 16);
    v71(v68, v70, v66);
    sub_1002DBD10(v60, v1);
    TitledParagraphLayout.Metrics.columnWidth.setter();
    [v60 pageMarginInsets];
    TitledParagraphLayout.Metrics.columnMargin.setter();
  }

  else
  {
    v69 = v106;
    if (v58)
    {
      if (qword_10096D668 != -1)
      {
        swift_once();
      }

      v72 = qword_1009CF370;
    }

    else
    {
      if (qword_10096D658 != -1)
      {
        swift_once();
      }

      v72 = qword_1009CF340;
    }

    v73 = sub_1000056A8(v66, v72);
    v71 = *(v69 + 16);
    v74 = v95;
    v71(v95, v73, v66);
    (*(v69 + 32))(v68, v74, v66);
  }

  v71(v105, v68, v66);
  v75 = v69;
  v76 = v121;
  v77 = v122;
  v78 = sub_10002A400(&aBlock, v121);
  v113[3] = v76;
  v113[4] = *(v77 + 1);
  v79 = sub_1000056E0(v113);
  (*(*(v76 - 1) + 16))(v79, v78, v76);
  v80 = v116;
  v81 = v117;
  v82 = sub_10002A400(v115, v116);
  v112[3] = v80;
  v112[4] = *(v81 + 8);
  v83 = sub_1000056E0(v112);
  (*(*(v80 - 8) + 16))(v83, v82, v80);
  sub_10002C0AC(v114, v111);
  TitledParagraphLayout.init(metrics:allowsMultiColumn:primaryText:secondaryText:bodyText:)();
  sub_1001B2D48(&unk_1009901A0, &type metadata accessor for TitledParagraphLayout, &protocol conformance descriptor for TitledParagraphLayout);
  v84 = v94;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v35 = v85;

  v86 = v108;
  swift_unknownObjectRelease();

  (*(v65 + 8))(v67, v84);
  (*(v75 + 8))(v110, v66);
  sub_100007000(v114);
  sub_100007000(v115);
  sub_100007000(&aBlock);
  return v35;
}

uint64_t sub_1001B2D48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1001B2D90(double a1, double a2)
{
  if (a2 >= a1)
  {
    JUScreenClassGetPortraitWidth();
    if (v4 < a1)
    {
      JUScreenClassGetPortraitWidth();
    }
  }

  else
  {
    JUScreenClassGetLandscapeWidth();
    if (v3 < a1)
    {
      JUScreenClassGetLandscapeWidth();
    }
  }

  return 2.0;
}

double sub_1001B2E10(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for OfferButtonMetrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v23[-v9];
  v11 = PageGrid.columnWidth.getter();
  v13 = v12;
  v14 = (*(v2 + 168))(v28, v11);
  (*(v2 + 176))(v27, v14);
  (*(v2 + 312))(a2);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v15 = v27;
  }

  else
  {
    v15 = v28;
  }

  sub_10003B8E8(v15, v23);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v16 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v16 = qword_100991028;
  }

  v17 = sub_1000056A8(v4, v16);
  (*(v5 + 16))(v7, v17, v4);
  (*(v5 + 32))(v10, v7, v4);
  if ((v26 & 1) == 0 && v24 == 0.0 && v25 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v19 = v18;
    OfferButtonMetrics.minimumSize.getter();
    v24 = v19;
    v25 = v20;
    v26 = 0;
  }

  v21 = _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v23, a2, v13);
  (*(v5 + 8))(v10, v4, v21);
  sub_10003B944(v23);
  sub_10003B944(v27);
  sub_10003B944(v28);
  return v13;
}

uint64_t sub_1001B30D8(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    return 0;
  }

  v3 = Screenshots.artwork.getter();

  if (a1 < 0)
  {
    goto LABEL_10;
  }

  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result > a1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result <= a1)
  {
LABEL_10:

    return 0;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v5 = *(v3 + 8 * a1 + 32);

LABEL_8:

    return v5;
  }

  __break(1u);
  return result;
}

void sub_1001B31B0(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      v9 = a1;
      if ((dispatch thunk of Artwork.isPortrait.getter() & 1) != 0 && (v10 = [v9 CGImage]) != 0)
      {
        v11 = v10;
        [v9 scale];
        v13 = [objc_allocWithZone(UIImage) initWithCGImage:v11 scale:2 orientation:v12];
      }

      else
      {
        v13 = v9;
      }

      v14 = *&v8[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
      v15 = v13;
      v16 = v14;
      v18.is_nil = (a2 & 1) == 0;
      v18.value.super.isa = v13;
      ArtworkView.setImage(image:animated:)(v18, v17);

      v8 = v15;
    }
  }
}

void sub_1001B32E8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
  v5 = *(a1 + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
  ArtworkView.image.setter();

  if (*(v2 + 24))
  {
    v6 = *(a1 + v4);
    type metadata accessor for ArtworkView();
    sub_1001B6B3C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);

    v7 = v6;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

uint64_t sub_1001B33E0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001B3454()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = Screenshots.artwork.getter();

  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

void sub_1001B350C(double a1, double a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1001B35A0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for RiverRowLayoutStyle.screenshots(_:);
  v3 = type metadata accessor for RiverRowLayoutStyle();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1001B3614@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001B30D8(a1);
  *a2 = result;
  return result;
}

id sub_1001B363C()
{
  type metadata accessor for BorderedScreenshotView(0);
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_1001B3688()
{
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B15F0;
  *(v0 + 32) = [objc_allocWithZone(UIColor) initWithRed:0.768627451 green:0.768627451 blue:0.768627451 alpha:1.0];
  result = [objc_allocWithZone(UIColor) initWithRed:0.129411765 green:0.129411765 blue:0.129411765 alpha:1.0];
  *(v0 + 40) = result;
  qword_1009786A8 = v0;
  return result;
}

uint64_t sub_1001B3790@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return sub_10003B8E8(a2, v5);
}

char *sub_1001B37F0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v10 - 8);
  v12 = v67 - v11 + 16;
  v13 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v14 = type metadata accessor for GradientView();
  *&v4[v13] = [objc_allocWithZone(v14) init];
  v15 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  *&v4[v15] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_riverView] = 0;
  v16 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  *&v4[v16] = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView;
  *&v4[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView;
  *&v4[v18] = [objc_allocWithZone(v14) init];
  *&v4[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView] = 0;
  v19 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  *&v4[v19] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_isAnimationEnabled] = 1;
  v4[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_isMotionEnabled] = 1;
  v20 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  v68.receiver = v4;
  v68.super_class = v20;
  v21 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  [v21 setClipsToBounds:1];
  [v21 _setContinuousCornerRadius:20.0];
  v22 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v23 = qword_10096D250;
  v24 = *&v21[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView];
  if (v23 != -1)
  {
    swift_once();
  }

  *&v24[OBJC_IVAR____TtC8AppStore12GradientView_colors] = qword_1009786A8;

  sub_1001C0CEC();

  [v21 addSubview:*&v21[v22]];
  v25 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  [*&v21[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView] setClipsToBounds:1];
  v26 = [*&v21[v25] layer];
  v27 = String._bridgeToObjectiveC()();
  [v26 setCompositingFilter:v27];

  [*&v21[v25] setAlpha:0.75];
  [v21 addSubview:*&v21[v25]];
  v28 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  [*&v21[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer] addSubview:*&v21[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView]];
  [*&v21[v28] addSubview:*&v21[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView]];
  v29 = [*&v21[v28] layer];
  v30 = String._bridgeToObjectiveC()();
  [v29 setCompositingFilter:v30];

  [v21 addSubview:*&v21[v28]];
  v31 = sub_1001B4140();
  [v21 addSubview:v31];

  v32 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  [*(*&v21[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v32] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v32] + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v33 = *(ObjectType + 168);
  v34 = *&v21[v32];
  v33(v67);
  v35 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_1001B6AE0(v67, v34 + v35);
  swift_endAccess();

  v36 = *(ObjectType + 176);
  v37 = *&v21[v32];
  v36(v67);
  v38 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_1001B6AE0(v67, v37 + v38);
  swift_endAccess();

  v39 = qword_10096DAB0;
  v40 = *(*&v21[v32] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Shadow();
  v42 = sub_1000056A8(v41, qword_1009CFE70);
  v43 = *(v41 - 8);
  (*(v43 + 16))(v12, v42, v41);
  (*(v43 + 56))(v12, 0, 1, v41);
  ArtworkView.shadow.setter();

  v44 = *&v21[v32];
  v45 = objc_opt_self();
  v46 = v44;
  sub_10003D9F8([v45 whiteColor]);

  v47 = *(*&v21[v32] + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel);
  v48 = [v45 whiteColor];
  [v47 setTextColor:v48];

  v49 = *(*&v21[v32] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  sub_100028BB8();
  v50 = v49;
  v51 = static UIColor.secondaryText.getter();
  v52 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v53 = [v51 resolvedColorWithTraitCollection:v52];

  [v50 setTextColor:v53];
  v54 = *(*&v21[v32] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  v55 = [v45 whiteColor];
  [v54 setTintColor:v55];

  v56 = *(*&v21[v32] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
  v57 = [v45 whiteColor];
  [v56 setTextColor:v57];

  v58 = *(*&v21[v32] + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkTitleLabel);
  v59 = [v45 whiteColor];
  [v58 setTextColor:v59];

  v60 = *(*&v21[v32] + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkSubtitleLabel);
  v61 = [v45 whiteColor];
  [v60 setTextColor:v61];

  v62 = [*&v21[v32] traitCollection];
  [v62 userInterfaceStyle];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = String._bridgeToObjectiveC()();

  v64 = [*(*&v21[v32] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) layer];
  [v64 setCompositingFilter:v63];

  [v21 addSubview:*&v21[v32]];
  return v21;
}

char *sub_1001B4140()
{
  v1 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = v0;
    v6 = (*(ObjectType + 160))();
    v7 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
    v8 = sub_1001DCC8C(v6);
    v9 = *(v0 + v1);
    *(v5 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1001B4264()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView);
  v2 = [v0 traitCollection];
  [v0 bounds];
  v4.n128_u64[0] = v3;
  v6.n128_u64[0] = v5;
  v7 = (*((swift_isaMask & *v0) + 0x140))(v2, v4, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v1 setLayoutMargins:{v7, v9, v11, v13}];
  [v0 bounds];
  [v1 sizeThatFits:{v14, v15}];
  v17 = v16;
  [v0 bounds];
  MinX = CGRectGetMinX(v23);
  [v0 bounds];
  MinY = CGRectGetMinY(v24);
  [v0 bounds];
  Width = CGRectGetWidth(v25);

  return [v1 setFrame:{MinX, MinY, Width, v17}];
}

void sub_1001B43E4(uint64_t a1)
{
  v2 = type metadata accessor for AspectRatio();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v6 = Screenshots.artwork.getter();
  if (v6 >> 62)
  {
    v9 = v6;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v6 = v9;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v7 = dispatch thunk of Artwork.isPortrait.getter();
  Artwork.size.getter();
  AspectRatio.init(_:_:)();
  v8 = (v3 + 8);
  if (v7)
  {
    AspectRatio.height(fromWidth:)();
  }

  else
  {
    AspectRatio.width(fromHeight:)();
  }

  (*v8)(v5, v2);
}

void sub_1001B459C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView);
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView);
  [v1 bounds];
  [v4 setFrame:?];
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView);
  [v1 bounds];
  [v5 setFrame:?];
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer);
  [v1 bounds];
  [v6 setFrame:?];
  v7 = sub_1001B4140();
  [v1 bounds];
  [v7 setFrame:?];

  v8 = *(v1 + OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_riverView);
  if (v8)
  {
    v9 = v8;
    v10 = *(dispatch thunk of RiverView.dataSource.getter() + 16);

    [v1 bounds];
    v12 = v11;
    v14 = v13;
    v15 = [v1 window];
    v16 = v15;
    if (v15)
    {
      [v15 bounds];
      v18 = v17;
      v20 = v19;

      v21 = v18;
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v23 = (*(ObjectType + 296))(v10, v21, v22, v16 == 0, v12, v14);
    v25 = v24;

    dispatch thunk of RiverView.setItemSize(size:)();
    v37 = v25 * 0.866 + v23 * 0.5 * 0.5;
    CGAffineTransformMakeRotation(&v39, 1.04719755);
    b = v39.b;
    c = v39.c;
    a = v39.a;
    d = v39.d;
    ty = v39.ty;
    tx = v39.tx;
    [v3 bounds];
    static UIEdgeInsets.horizontal(left:right:)();
    CGRect.adding(outsets:)();
    v39.a = a;
    v39.b = b;
    v39.c = c;
    v39.d = d;
    v39.tx = tx;
    v39.ty = ty;
    CGRectApplyAffineTransform(v40, &v39);
    v29 = v9;
    [v29 bounds];
    [v29 setBounds:?];
    [v1 bounds];
    v31 = v30;
    v32 = dispatch thunk of RiverView.interRowSpacing.getter();
    v34.n128_u64[0] = v33;
    (*((swift_isaMask & *v1) + 0x158))(v32, v31, v37, v34);
    [v29 setCenter:?];
    v39.a = a;
    v39.b = b;
    v39.c = c;
    v39.d = d;
    v39.tx = tx;
    v39.ty = ty;
    [v29 setTransform:&v39];
  }
}

void sub_1001B49C8(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v7 - 8);
  v136 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Artwork.Crop();
  v133 = *(v9 - 8);
  v134 = v9;
  __chkstk_darwin(v9);
  v132 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v11 - 8);
  v131 = &v131 - v12;
  v13 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v13 - 8);
  v145 = &v131 - v14;
  v15 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v15 - 8);
  v144 = &v131 - v16;
  v17 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v17 - 8);
  v143 = &v131 - v18;
  v19 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v19 - 8);
  v142 = &v131 - v20;
  v21 = sub_10002849C(&unk_100970170, &unk_1007BDDF0);
  __chkstk_darwin(v21 - 8);
  v140 = &v131 - v22;
  v23 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v138 = *(v23 - 8);
  __chkstk_darwin(v23);
  v139 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v25 - 8);
  v141 = &v131 - v26;
  v27 = type metadata accessor for RiverViewStyling();
  v150 = *(v27 - 8);
  v151 = v27;
  __chkstk_darwin(v27);
  v29 = &v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v149 = &v131 - v31;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  v147 = a2;
  inject<A, B>(_:from:)();
  v152 = v155[0];
  type metadata accessor for MediumDiagonalRiverCardDataSource();
  v32 = swift_allocObject();
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0u;
  *(v32 + 48) = 0;
  *(v32 + 56) = 5;
  v148 = v32;
  v153 = a1;
  MediumAdLockupWithScreenshotsBackground.riverSpeed.getter();
  v34 = v33;
  v35 = ObjectType + 184;
  v36 = *(ObjectType + 184);
  v36();
  v135 = ObjectType;
  v36();
  if (v34)
  {
    static RiverViewStyling.todayTabSpeed.getter();
  }

  static RiverViewStyling.defaultRowOffsets.getter();
  v37 = v149;
  RiverViewStyling.init(itemSize:interRowSpacing:interItemSpacing:speed:rowOffsets:reverseAlternatingRows:)();
  (*(v150 + 16))(v29, v37, v151);
  v38 = sub_10002849C(&qword_1009787E8, &unk_1007BDE00);
  v39 = objc_allocWithZone(v38);

  v40 = RiverView.init(dataSource:styling:)();
  [v40 setHidden:0];
  v41 = v153;
  v42 = MediumAdLockupWithScreenshotsBackground.screenshots.getter();
  if (v42 >> 62)
  {
    v41 = v42;
    v44 = _CocoaArrayWrapper.endIndex.getter();
    v42 = v41;
    if (v44)
    {
      goto LABEL_5;
    }

LABEL_10:

    v43 = 0;
    goto LABEL_11;
  }

  if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v42 & 0xC000000000000001) != 0)
  {
    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_57:
      swift_once();
LABEL_30:
      v86 = type metadata accessor for FontUseCase();
      v87 = sub_1000056A8(v86, qword_1009D07A0);
      v88 = *(v86 - 8);
      v89 = v131;
      (*(v88 + 16))(v131, v87, v86);
      (*(v88 + 56))(v89, 0, 1, v86);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

      v90 = *(v38 + v35);
      if (v90)
      {
        [v90 setAccessibilityIgnoresInvertColors:1];
      }

      goto LABEL_32;
    }

    v43 = *(v42 + 32);
  }

LABEL_11:
  *(dispatch thunk of RiverView.dataSource.getter() + 24) = v152;

  *(dispatch thunk of RiverView.dataSource.getter() + 48) = v147;

  *(dispatch thunk of RiverView.dataSource.getter() + 16) = v43;
  v146 = v43;

  dispatch thunk of RiverView.isAnimating.setter();
  [v40 setHidden:0];
  v45 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_riverView;
  v154 = v3;
  v46 = *&v3[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_riverView];
  if (v46)
  {
    v47 = v40;
    v48 = v46;
    v49 = v47;
    v50 = v48;
    LOBYTE(v47) = static NSObject.== infix(_:_:)();

    if ((v47 & 1) == 0)
    {
      dispatch thunk of RiverView.cleanUp()();
      [v50 removeFromSuperview];
    }
  }

  else
  {
    v51 = v40;
  }

  v52 = v154;
  v53 = *&v154[v45];
  *&v154[v45] = v40;
  v54 = v40;

  v55 = *&v52[v45];
  v137 = v54;
  if (!v55)
  {

    v55 = v46;
    goto LABEL_21;
  }

  if (v46)
  {
    v56 = v54;
    v57 = v46;
    v58 = v55;
    v59 = static NSObject.== infix(_:_:)();

    if (v59)
    {

      v55 = v58;
LABEL_21:
      v60 = v154;
      goto LABEL_25;
    }

    v60 = v154;
    v54 = v56;
  }

  else
  {
    v61 = v55;
    v57 = 0;
    v60 = v154;
  }

  [*&v60[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView] addSubview:v55];

LABEL_25:
  v38 = *&v60[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView];
  [*(v38 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
  v62 = MediumAdLockupWithScreenshotsBackground.lockup.getter();
  v63 = v138;
  v64 = *(v138 + 104);
  v64(v139, enum case for OfferButtonPresenterViewAlignment.right(_:), v23);
  v65 = v140;
  v64(v140, enum case for OfferButtonPresenterViewAlignment.left(_:), v23);
  (*(v63 + 56))(v65, 0, 1, v23);
  sub_1001B6B3C(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v66 = v141;
  AccessibilityConditional.init(value:axValue:)();
  v67 = sub_10002849C(&unk_100973240, qword_1007B2220);
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  v68 = type metadata accessor for OfferStyle();
  v69 = v142;
  (*(*(v68 - 8) + 56))(v142, 1, 1, v68);
  v70 = type metadata accessor for OfferEnvironment();
  v71 = v143;
  (*(*(v70 - 8) + 56))(v143, 1, 1, v70);
  v72 = type metadata accessor for OfferTint();
  v73 = v144;
  (*(*(v72 - 8) + 56))(v144, 1, 1, v72);
  v74 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v75 = v145;
  (*(*(v74 - 8) + 56))(v145, 1, 1, v74);
  sub_1004F3190(v62, v38, v66, v147, 0, 0, v69, v71, v73, v75);
  *(v38 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) = 1;
  sub_100776DD8();
  [(objc_class *)v38 setNeedsLayout];
  sub_100776DD8();

  sub_10002B894(v75, &unk_100970150, &unk_1007BDDD0);
  sub_10002B894(v73, &unk_100973AD0, &unk_1007B17C0);
  sub_10002B894(v71, &unk_100970160, &unk_1007BDDE0);
  sub_10002B894(v69, &qword_100973AE0, &unk_1007B17D0);
  sub_10002B894(v66, &unk_100973230, &unk_1007B17E0);
  v76 = *(v38 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
  if (v76)
  {
    v77 = objc_opt_self();
    v78 = v76;
    v79 = [v77 whiteColor];
    [v78 setTextColor:v79];
  }

  v35 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
  v80 = *(v38 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
  if (v80)
  {
    v81 = objc_opt_self();
    v82 = v80;
    v83 = [v81 whiteColor];
    [v82 setTextColor:v83];

    v84 = *(v38 + v35);
    if (v84)
    {
      v85 = qword_10096DD58;
      v41 = v84;
      if (v85 == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_57;
    }
  }

LABEL_32:
  if (!v146)
  {
    goto LABEL_45;
  }

  v91 = Screenshots.artwork.getter();

  if (!(v91 >> 62))
  {
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

LABEL_44:

    goto LABEL_45;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_44;
  }

LABEL_35:
  if ((v91 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v92 = Artwork.backgroundColor.getter();

  if (v92)
  {
    v93 = UIColor.isDark.getter();

    if (v93)
    {
      v94 = 2;
    }

    else
    {
      v94 = 1;
    }

    goto LABEL_46;
  }

LABEL_45:
  v94 = 2;
LABEL_46:
  v95 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v96 = *(v38 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v97 = objc_opt_self();
  v98 = v96;
  v99 = [v97 systemGray5Color];
  v100 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v94];
  v101 = [v99 resolvedColorWithTraitCollection:v100];

  v102 = [v101 colorWithAlphaComponent:0.35];
  ArtworkView.backgroundColor.setter();

  MediumAdLockupWithScreenshotsBackground.lockup.getter();
  v103 = Lockup.icon.getter();

  if (v103)
  {
    (*(v135 + 168))(v155, v104);
    sub_10003B944(v155);
    v105 = v132;
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v133 + 8))(v105, v134);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v106 = *(v38 + v95);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v106 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    [*(v38 + v95) setContentMode:1];
    v107 = *(v38 + v95);
    type metadata accessor for ArtworkView();
    sub_1001B6B3C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v108 = v107;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  v109 = MediumAdLockupWithScreenshotsBackground.backgroundColor.getter();
  if (v109)
  {
    v110 = v109;
    v111 = MediumAdLockupWithScreenshotsBackground.secondaryTextColor.getter();
    v112 = v154;
    v113 = *&v154[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView];
    if (v111)
    {
      v114 = v111;
      [*&v154[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView] setBackgroundColor:v111];
      v115 = [v113 layer];
      [v115 setCompositingFilter:0];

      v116 = *&v112[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView];
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_1007B15F0;
      *(v117 + 32) = [v110 colorWithAlphaComponent:0.4];
      *(v117 + 40) = v110;
      *&v116[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v117;
      v118 = v110;

      sub_1001C0CEC();
      sub_1001C0B48(&off_1008AF4A0);
      v119 = [v116 layer];
      [v119 setCompositingFilter:0];
    }

    else
    {
      v120 = MediumAdLockupWithScreenshotsBackground.backgroundColor.getter();
      [v113 setBackgroundColor:v120];

      v121 = [v113 layer];
      [v121 setCompositingFilter:0];

      v122 = *&v154[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView];
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v123 = swift_allocObject();
      *(v123 + 16) = xmmword_1007B15F0;
      v124 = [v97 whiteColor];
      v125 = [v124 colorWithAlphaComponent:0.4];

      *(v123 + 32) = v125;
      *(v123 + 40) = [v97 clearColor];
      *&v122[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v123;

      sub_1001C0CEC();
      sub_1001C0B48(&off_1008AF4D0);
      v112 = v154;
      v114 = [v122 layer];
      v119 = String._bridgeToObjectiveC()();
      [v114 setCompositingFilter:v119];
    }

    v126 = sub_1001B4140();
    v127 = v110;
    v128 = sub_1001DDCA4(v110);
    v130 = v129;

    sub_1001DC508(2, v128, v130);

    [v112 setNeedsLayout];

    (*(v150 + 8))(v149, v151);
  }

  else
  {
    (*(v150 + 8))(v149, v151);
  }
}

id sub_1001B5E8C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1001B5FDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for PageGrid();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MediumAdLockupWithScreenshotsBackground();
  sub_1001B6B3C(&qword_1009787F0, &type metadata accessor for MediumAdLockupWithScreenshotsBackground, &protocol conformance descriptor for MediumAdLockupWithScreenshotsBackground);
  ItemLayoutContext.typedModel<A>(as:)();
  v9 = v37[0];
  if (v37[0])
  {
    v10 = MediumAdLockupWithScreenshotsBackground.screenshots.getter();
    v11 = v10;
    if (v10 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_4:
        v32 = a2;
        v33 = v5;
        v34 = v6;
        v35 = v9;
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = v3;
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_27;
          }

          v12 = v3;
          v13 = *(v11 + 32);
        }

        v36 = v13;
        v14 = Screenshots.artwork.getter();

        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        v15 = v37[0];
        sub_1001B2E10(v8, v37[0]);
        v17 = v16;

        v18 = v33;
        v19 = *(v34 + 8);
        v19(v8, v33);
        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        PageGrid.columnWidth.getter();
        v21 = v20;
        v19(v8, v18);
        v22 = [objc_opt_self() mainScreen];
        [v22 bounds];
        v24 = v23;
        v26 = v25;

        (*(v12 + 296))(v36, v24, v26, 0, v17, v21);
        if (v14 >> 62)
        {
          v27 = _CocoaArrayWrapper.endIndex.getter();
          if (v27)
          {
LABEL_9:
            v37[0] = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            if ((v27 & 0x8000000000000000) == 0)
            {
              v28 = 0;
              do
              {
                if ((v14 & 0xC000000000000001) != 0)
                {
                  specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                }

                dispatch thunk of Artwork.isPortrait.getter();
                ++v28;
                Artwork.config(_:mode:prefersLayeredImage:)();

                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              while (v27 != v28);

              v29 = v37[0];
LABEL_21:
              v38 = v29;
              MediumAdLockupWithScreenshotsBackground.lockup.getter();
              v30 = Lockup.icon.getter();

              if (!v30)
              {
LABEL_24:
                ArtworkLoader.prefetchArtwork(using:)(v29);

                return;
              }

              (*(v12 + 176))(v37, v31);
              sub_10003B944(v37);
              Artwork.config(_:mode:prefersLayeredImage:)();

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
LABEL_23:
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v29 = v38;
                goto LABEL_24;
              }

LABEL_28:
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              goto LABEL_23;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          v27 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v27)
          {
            goto LABEL_9;
          }
        }

        v29 = _swiftEmptyArrayStorage;
        goto LABEL_21;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }
}

void sub_1001B6500(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v7 - 8);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 16))
  {

    v10 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v10 = 0;
  }

  type metadata accessor for Screenshots();
  sub_10061B788(v10, v9);

  sub_100617A0C(v9);
  swift_beginAccess();
  dispatch thunk of Artwork.isPortrait.getter();
  Artwork.config(_:mode:prefersLayeredImage:)();
  v11 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
  v12 = *(a2 + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
  Artwork.style.getter();
  ArtworkView.style.setter();

  v13 = *(a2 + v11);
  [v13 setContentMode:Artwork.contentMode.getter()];

  v14 = *(a2 + v11);
  ArtworkView.imageSize.setter();

  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  v15 = Screenshots.artwork.getter();

  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_15:

LABEL_16:
    v18 = 2;
    goto LABEL_17;
  }

LABEL_7:
  if ((v15 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v16 = Artwork.backgroundColor.getter();

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = UIColor.isDark.getter();

  if (v17)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

LABEL_17:
  v19 = *(a2 + v11);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 systemGray5Color];
  v23 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v18];
  v24 = [v22 resolvedColorWithTraitCollection:v23];

  v25 = [v24 colorWithAlphaComponent:0.35];
  ArtworkView.backgroundColor.setter();

  if (*(v3 + 24))
  {
    type metadata accessor for ArtworkLoader();
    v26 = *(a2 + v11);
    type metadata accessor for ArtworkView();

    v27 = v26;
    static ArtworkLoader.handlerKey<A>(for:)();

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = a1;

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(v30, &qword_10096FB90, &qword_1007B2A50);
  }
}

void sub_1001B6980()
{
  v1 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v2 = type metadata accessor for GradientView();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_riverView) = 0;
  v4 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView;
  *(v0 + v6) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView) = 0;
  v7 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_isAnimationEnabled) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001B6B3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001B6B84()
{
  v0 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = type metadata accessor for AspectRatio();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for LockupMediaLayout.DisplayType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LockupMediaLayout.Metrics();
  sub_100005644(v9, qword_1009787F8);
  sub_1000056A8(v9, qword_1009787F8);
  v11[4] = &type metadata for CGFloat;
  v11[5] = &protocol witness table for CGFloat;
  v11[1] = 0x4021000000000000;
  (*(v6 + 104))(v8, enum case for LockupMediaLayout.DisplayType.none(_:), v5);
  AspectRatio.init(_:_:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
}

uint64_t sub_1001B6DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for AspectRatio();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for LockupMediaLayout.DisplayType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  v12 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v12 - 8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = v20 - v17;
  v22[3] = &type metadata for CGFloat;
  v22[4] = &protocol witness table for CGFloat;
  v22[0] = 0x4021000000000000;
  (*(v4 + 16))(v20 - v17, a1, v3, v16);
  (*(v4 + 56))(v18, 0, 1, v3);
  (*(v6 + 104))(v11, enum case for LockupMediaLayout.DisplayType.none(_:), v5);
  sub_10002C0AC(v22, v21);
  (*(v6 + 16))(v8, v11, v5);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    AspectRatio.init(_:_:)();
  }

  sub_100031660(v18, v14, &unk_1009732A0, &unk_1007B4FE0);
  LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
  (*(v6 + 8))(v11, v5);
  sub_10002B894(v18, &unk_1009732A0, &unk_1007B4FE0);
  return sub_100007000(v22);
}

uint64_t sub_1001B70FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v23 = a3;
  v7 = type metadata accessor for LockupMediaLayout.DisplayType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10002849C(&unk_100973C90, qword_1007B55A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21[-v12];
  v22 = sub_1001B9E6C(a1);
  v14 = type metadata accessor for ScreenshotsDisplayStyle();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a2, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = sub_1001BA394(a1, v13);
  sub_10002B894(v13, &unk_100973C90, qword_1007B55A0);
  v17 = *(v8 + 16);
  v17(v10, v4, v7);
  v18 = (*(v8 + 88))(v10, v7);
  if (v18 != enum case for LockupMediaLayout.DisplayType.oneUp(_:))
  {
    if (v18 == enum case for LockupMediaLayout.DisplayType.twoUp(_:) || v18 == enum case for LockupMediaLayout.DisplayType.threeUp(_:))
    {
      if (v16)
      {
        goto LABEL_11;
      }

      if (v22)
      {
        goto LABEL_9;
      }
    }

    else if (((v18 == enum case for LockupMediaLayout.DisplayType.fourUp(_:)) & v16) != 0)
    {
      goto LABEL_11;
    }

    v17(v23, v4, v7);
    return (*(v8 + 8))(v10, v7);
  }

  if (v16)
  {
LABEL_11:
    (*(v8 + 8))(v10, v7);
    v19 = &enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    return (*(v8 + 104))(v23, *v19, v7);
  }

  if (v22)
  {
LABEL_9:
    (*(v8 + 8))(v10, v7);
    v19 = &enum case for LockupMediaLayout.DisplayType.threeUp(_:);
    return (*(v8 + 104))(v23, *v19, v7);
  }

  (*(v8 + 104))(v23, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v7);
  return (*(v8 + 8))(v10, v7);
}

id sub_1001B7430()
{
  v1 = sub_10002849C(&qword_100978860, "@N\b");
  __chkstk_darwin(v1);
  *&v0[OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews] = _swiftEmptyArrayStorage;
  type metadata accessor for BorderedScreenshotView(0);
  ViewRecycler.init()();
  sub_1001B96FC();
  ReusePool.init(recycler:limit:)();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView] = 0;
  v2 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
  if (qword_10096D258 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for LockupMediaLayout.Metrics();
  v4 = sub_1000056A8(v3, qword_1009787F8);
  (*(*(v3 - 8) + 16))(&v0[v2], v4, v3);
  v5 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayConfiguration;
  if (qword_10096EB50 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v7 = sub_1000056A8(v6, qword_1009D2FE8);
  sub_1001BAB00(v7, &v0[v5], v8);
  *&v0[OBJC_IVAR____TtC8AppStore15LockupMediaView_platform] = 0;
  v9 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayStyle;
  v10 = enum case for ScreenshotsDisplayStyle.standard(_:);
  v11 = type metadata accessor for ScreenshotsDisplayStyle();
  (*(*(v11 - 8) + 104))(&v0[v9], v10, v11);
  v14.receiver = v0;
  v14.super_class = type metadata accessor for LockupMediaView(0);
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v12;
}

void (*sub_1001B76E8(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore15LockupMediaView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1001B773C;
}

void sub_1001B773C(id *a1, char a2)
{
  v4 = a1[1];
  v28 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1001BAE24(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v7 = v28;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100028004();
        v10 = v4;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v28;
    }

    swift_unknownObjectWeakAssign();
    v24 = swift_unknownObjectWeakLoadStrong();
    v26 = a1[1];
    if (v24)
    {
      v27 = v24;
      [a1[1] addSubview:v24];
    }

    sub_1001B8790(v25);
    [v26 setNeedsLayout];

    v23 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_1001BAE24(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100028004();
      v16 = v4;
      v17 = static NSObject.== infix(_:_:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v21 = a1[1];
  if (v19)
  {
    v22 = v19;
    [a1[1] addSubview:v19];
  }

  sub_1001B8790(v20);
  [v21 setNeedsLayout];
  v23 = v28;
LABEL_21:
}

void *sub_1001B79D8()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v4 = *(v0 + OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView);
  if (v4)
  {
    v5 = v4;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v6 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 >> 62)
  {
    sub_100028004();

    v8 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100028004();
    v8 = v7;
  }

  sub_1003946F8(v8, v9);
  return _swiftEmptyArrayStorage;
}

void sub_1001B7B88(__n128 a1)
{
  v2 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  swift_beginAccess();
  v22 = v1;
  v6 = *(v1 + v5);
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayConfiguration;

    swift_beginAccess();
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v12 = v10;
      ++v9;
      sub_1001BAB00(v22 + v8, v4, v11);
      v13 = &v12[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      sub_1001BAB64(v4, v13, v14);
      swift_endAccess();
      v15 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
      v16 = *&v12[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
      dispatch thunk of RoundedCornerView.borderWidth.setter();

      v17 = *&v12[v15];
      v18 = *(v13 + 48);
      v19 = v17;
      v20 = v18;
      dispatch thunk of RoundedCornerView.borderColor.setter();

      [v12 setNeedsLayout];
      sub_1001BABC8(v4, v21);
    }

    while (v7 != v9);
  }
}

void sub_1001B7D8C(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayConfiguration;
    v25 = v7 & 0xC000000000000001;
    v26 = OBJC_IVAR____TtC8AppStore15LockupMediaView_platform;

    swift_beginAccess();
    v10 = 0;
    do
    {
      if (v25)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      *&v11[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform] = *(v2 + v26);
      swift_retain_n();

      sub_100617504(v13);

      sub_1001BAB00(v2 + v9, v5, v14);
      v15 = &v12[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      sub_1001BAB64(v5, v15, v16);
      swift_endAccess();
      v17 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
      v18 = *&v12[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
      dispatch thunk of RoundedCornerView.borderWidth.setter();

      v19 = *&v12[v17];
      v20 = *(v15 + 48);
      v21 = v19;
      v22 = v20;
      dispatch thunk of RoundedCornerView.borderColor.setter();

      [v12 setNeedsLayout];
      sub_1001BABC8(v5, v23);
    }

    while (v8 != v10);
  }
}

uint64_t sub_1001B7FD8()
{
  v16 = type metadata accessor for LayoutRect();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LockupMediaLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LockupMediaLayout();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LockupMediaView(0);
  v17.receiver = v0;
  v17.super_class = v12;
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v13 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v13], v4);
  v14 = sub_1001B79D8();
  sub_1002A5990(v14);

  LockupMediaLayout.init(metrics:mediaViews:)();
  [v0 bounds];
  LockupMediaLayout.placeChildren(relativeTo:in:)();
  (*(v1 + 8))(v3, v16);
  return (*(v9 + 8))(v11, v8);
}

double sub_1001B8298(__n128 a1, double a2)
{
  v3 = v2;
  v4 = type metadata accessor for LockupMediaLayout();
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  __chkstk_darwin(v4);
  v48 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ScreenshotsDisplayStyle();
  v7 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LockupMediaLayout.DisplayType();
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v41 = &v38 - v13;
  v14 = type metadata accessor for LockupMediaLayout.Metrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  v40 = &v38 - v19;
  v21 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
  swift_beginAccess();
  v22 = *(v15 + 16);
  v22(v20, v3 + v21, v14);
  v39 = v14;
  v22(v17, v3 + v21, v14);
  LockupMediaLayout.Metrics.displayType.getter();
  v23 = *(v15 + 8);
  v43 = v15 + 8;
  v44 = v23;
  v23(v17, v14);
  v24 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayStyle;
  v38 = v3;
  swift_beginAccess();
  v25 = v3 + v24;
  v26 = v42;
  v27 = v45;
  (*(v7 + 16))(v42, v25, v45);

  sub_1001B70FC(v28, v26, v41);

  (*(v7 + 8))(v26, v27);
  (*(v46 + 8))(v11, v47);
  v29 = v40;
  LockupMediaLayout.Metrics.displayType.setter();
  v30 = v39;
  v22(v17, v29, v39);
  v31 = sub_1001B79D8();
  sub_1002A5990(v31);

  v32 = v48;
  LockupMediaLayout.init(metrics:mediaViews:)();
  sub_1001BAE24(&qword_1009788A8, &type metadata accessor for LockupMediaLayout, &protocol conformance descriptor for LockupMediaLayout);
  v33 = v32;
  v34 = v49;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v36 = v35;
  (*(v50 + 8))(v33, v34);
  v44(v29, v30);
  return v36;
}

void sub_1001B8790(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LockupMediaLayout.DisplayType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LockupMediaLayout.Metrics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v2[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView])
  {

    sub_1001B8E28();
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v15 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
    swift_beginAccess();
    (*(v11 + 16))(v13, &v2[v15], v10);
    LockupMediaLayout.Metrics.displayType.getter();
    (*(v11 + 8))(v13, v10);
    v16 = LockupMediaLayout.DisplayType.numberOfViews.getter();
    (*(v7 + 8))(v9, v6);
    if (__OFSUB__(v16, 1))
    {
      goto LABEL_32;
    }

    v17 = (v16 - 1) & ~((v16 - 1) >> 63);
  }

  else
  {
    v18 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
    swift_beginAccess();
    (*(v11 + 16))(v13, &v2[v18], v10);
    LockupMediaLayout.Metrics.displayType.getter();
    (*(v11 + 8))(v13, v10);
    v17 = LockupMediaLayout.DisplayType.numberOfViews.getter();
    (*(v7 + 8))(v9, v6);
  }

  v19 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  v41 = OBJC_IVAR____TtC8AppStore15LockupMediaView_platform;
  v20 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  swift_beginAccess();
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v21 = *&v2[v19];
        if (v21 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter() == v17)
          {
            return;
          }
        }

        else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) == v17)
        {
          return;
        }

        v22 = *&v2[v19];
        if (!(v22 >> 62))
        {
          break;
        }

        if (_CocoaArrayWrapper.endIndex.getter() >= v17)
        {
          goto LABEL_21;
        }

LABEL_15:
        swift_beginAccess();
        sub_10002849C(&qword_1009788A0, &unk_1007BDFA0);
        ReusePool.dequeue(or:)();
        swift_endAccess();
        v23 = v42;
        *&v42[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform] = *&v2[v41];
        swift_retain_n();

        sub_100617504(v24);

        sub_1001BAB00(&v2[v20], v5, v25);
        v26 = &v23[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration];
        swift_beginAccess();
        sub_1001BAB64(v5, v26, v27);
        swift_endAccess();
        v28 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
        v29 = *&v23[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
        dispatch thunk of RoundedCornerView.borderWidth.setter();

        v30 = *&v23[v28];
        v31 = *(v26 + 48);
        v32 = v30;
        v33 = v31;
        dispatch thunk of RoundedCornerView.borderColor.setter();

        [v23 setNeedsLayout];
        sub_1001BABC8(v5, v34);
        swift_beginAccess();
        v35 = v23;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v2[v19] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v19] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        [v2 addSubview:v35];
      }

      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) < v17)
      {
        goto LABEL_15;
      }

LABEL_21:
      swift_beginAccess();
      v36 = *&v2[v19];
      if (!(v36 >> 62))
      {
        break;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_23;
      }

LABEL_10:
      swift_endAccess();
    }

    if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_23:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v2[v19] = v36;
    if (v36 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v36 = sub_100549964();
    }

    v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      break;
    }

    v39 = v38 - 1;
    v40 = *((v36 & 0xFFFFFFFFFFFFFF8) + 8 * v39 + 0x20);
    *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) = v39;
    *&v2[v19] = v36;
    swift_endAccess();
    v42 = v40;
    swift_beginAccess();
    sub_10002849C(&qword_1009788A0, &unk_1007BDFA0);
    ReusePool.recycle(_:)();
    swift_endAccess();
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

id sub_1001B8DE8@<X0>(void *a1@<X8>)
{
  type metadata accessor for BorderedScreenshotView(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void sub_1001B8E28()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;

    return;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v9 = v2;

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      swift_beginAccess();
      sub_10002849C(&qword_1009788A0, &unk_1007BDFA0);
      ReusePool.recycle(_:)();
      swift_endAccess();
      v8 = *&v7[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
      ArtworkView.image.setter();
    }

    while (v4 != v5);

    v2 = v9;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1001B8FAC()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotsDisplayStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001B8E28();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + qword_100988CE8);
    if (v8)
    {
      aBlock[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100235C48;
      aBlock[3] = &unk_1008B8240;
      v9 = _Block_copy(aBlock);
      v10 = v8;
      [v10 exitFullScreenAnimated:0 completionHandler:v9];
      _Block_release(v9);
    }

    v11 = *&v7[qword_100988CE0];
    if (v11)
    {
      v12 = v11;
      dispatch thunk of VideoPlayer.releaseAssets()();

      v7 = v12;
    }
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_1001BAE24(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v15 = [v14 superview];
    if (!v15)
    {
LABEL_12:

      goto LABEL_13;
    }

    v16 = v15;
    sub_100028004();
    v17 = v1;
    v18 = static NSObject.== infix(_:_:)();

    if (v18)
    {
      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        v14 = v19;
        [v19 removeFromSuperview];
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v22 = v20;
    [v1 addSubview:v20];
  }

  sub_1001B8790(v21);
  [v1 setNeedsLayout];
  v23 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
  v24 = *&v1[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
  if (v24)
  {
    [v24 removeFromSuperview];
    v25 = *&v1[v23];
  }

  else
  {
    v25 = 0;
  }

  *&v1[v23] = 0;

  [v1 setNeedsLayout];
  (*(v3 + 104))(v5, enum case for ScreenshotsDisplayStyle.standard(_:), v2);
  v26 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v3 + 24))(&v1[v26], v5, v2);
  swift_endAccess();
  [v1 setNeedsLayout];
  return (*(v3 + 8))(v5, v2);
}

id sub_1001B9354()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockupMediaView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LockupMediaView(uint64_t a1)
{
  result = qword_100978848;
  if (!qword_100978848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B9528(uint64_t a1)
{
  sub_1001B968C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LockupMediaLayout.Metrics();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ScreenshotDisplayConfiguration(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ScreenshotsDisplayStyle();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1001B968C(uint64_t a1)
{
  if (!qword_100978858)
  {
    sub_10002D1A8(&qword_100978860, "@N\b");
    sub_1001B96FC();
    v1 = type metadata accessor for ReusePool();
    if (!v2)
    {
      atomic_store(v1, &qword_100978858);
    }
  }
}

unint64_t sub_1001B96FC()
{
  result = qword_100978868;
  if (!qword_100978868)
  {
    sub_10002D1A8(&qword_100978860, "@N\b");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978868);
  }

  return result;
}

void sub_1001B9770(void *a1)
{
  sub_1001BA9DC();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [v1 addSubview:Strong];
  }

  sub_1001B8790(v3);
  [v1 setNeedsLayout];
}

uint64_t (*sub_1001B9800(uint64_t **a1))()
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
  v2[4] = sub_1001B76E8(v2);
  return sub_1000B4CAC;
}

uint64_t sub_1001B9870(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1001B98C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1001B9930(uint64_t *a1, uint64_t a2))()
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

uint64_t sub_1001B99CC(void *a1)
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
  sub_100028004();
  v4 = v1;
  v5 = static NSObject.== infix(_:_:)();

  return v5 & 1;
}

void *sub_1001B9B24(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v9 = Trailers.videos.getter();
  if (v9 >> 62)
  {
    v25 = v9;
    v26 = _CocoaArrayWrapper.endIndex.getter();
    v9 = v25;
    if (v26)
    {
      goto LABEL_4;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v9 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    Video.preview.getter();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v5 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_10:
    if (!a1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a1)
  {
LABEL_11:
    v10 = Screenshots.artwork.getter();
    sub_100394550(v10, v11);
  }

LABEL_12:
  v12 = _swiftEmptyArrayStorage;
  if (a4)
  {
    return v12;
  }

  a1 = _swiftEmptyArrayStorage >> 62;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() <= a3)
    {
      return v12;
    }
  }

  else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) <= a3)
  {
    return v12;
  }

  if (a3 < 0)
  {
    goto LABEL_49;
  }

  if (a1)
  {
    if (_swiftEmptyArrayStorage < 0)
    {
      a4 = _swiftEmptyArrayStorage;
    }

    else
    {
      a4 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      goto LABEL_51;
    }

    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 < a3)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0 || !a3)
  {

    if (!a1)
    {
      goto LABEL_29;
    }

LABEL_32:

    a4 = _CocoaArrayWrapper.subscript.getter();
    a1 = v17;
    a3 = v18;
    if (v18)
    {
      goto LABEL_34;
    }

LABEL_33:
    sub_1005E7A8C(a4, v16, a1, a3);
    v20 = v19;

LABEL_40:
    swift_unknownObjectRelease();
    return v20;
  }

  type metadata accessor for Artwork();

  v14 = 0;
  do
  {
    v15 = v14 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v14);
    v14 = v15;
  }

  while (a3 != v15);
  if (a1)
  {
    goto LABEL_32;
  }

LABEL_29:
  a4 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
  v16 = (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 32;
  a3 = (2 * a3) | 1;
  if ((a3 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_34:
  v5 = v16;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = _swiftEmptyArrayStorage;
  }

  v22 = v21[2];

  if (__OFSUB__(a3 >> 1, a1))
  {
    goto LABEL_52;
  }

  if (v22 != (a3 >> 1) - a1)
  {
LABEL_53:
    swift_unknownObjectRelease();
    v16 = v5;
    goto LABEL_33;
  }

  v23 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  v12 = v23;
  if (!v23)
  {
    v20 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

  return v12;
}

uint64_t sub_1001B9E6C(uint64_t a1)
{
  v2 = type metadata accessor for AppPlatform();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100978888, &qword_1007BDF90);
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  v7 = sub_10002849C(&qword_100978890, &qword_1007BDF98);
  __chkstk_darwin(v7 - 8);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = ASKDeviceTypeGetCurrent();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {

LABEL_9:
    v22 = 0;
    return v22 & 1;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v22 = 0;
  if ((v21 & 1) == 0)
  {
    if (a1)
    {
      MediaPlatform.appPlatform.getter();
      v23 = v36;
      v24 = *(v36 + 56);
      v24(v14, 0, 1, v2);
    }

    else
    {
      v23 = v36;
      v24 = *(v36 + 56);
      v24(v14, 1, 1, v2);
    }

    (*(v23 + 104))(v11, enum case for AppPlatform.watch(_:), v2);
    v24(v11, 0, 1, v2);
    v26 = *(v4 + 48);
    sub_100031660(v14, v6, &qword_100978890, &qword_1007BDF98);
    sub_100031660(v11, &v6[v26], &qword_100978890, &qword_1007BDF98);
    v27 = *(v23 + 48);
    if (v27(v6, 1, v2) == 1)
    {
      sub_10002B894(v11, &qword_100978890, &qword_1007BDF98);
      sub_10002B894(v14, &qword_100978890, &qword_1007BDF98);
      if (v27(&v6[v26], 1, v2) == 1)
      {
        sub_10002B894(v6, &qword_100978890, &qword_1007BDF98);
        goto LABEL_9;
      }
    }

    else
    {
      v28 = v35;
      sub_100031660(v6, v35, &qword_100978890, &qword_1007BDF98);
      if (v27(&v6[v26], 1, v2) != 1)
      {
        v29 = v34;
        (*(v23 + 32))(v34, &v6[v26], v2);
        sub_1001BAE24(&qword_100978898, &type metadata accessor for AppPlatform, &protocol conformance descriptor for AppPlatform);
        v30 = v28;
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *(v23 + 8);
        v32(v29, v2);
        sub_10002B894(v11, &qword_100978890, &qword_1007BDF98);
        sub_10002B894(v14, &qword_100978890, &qword_1007BDF98);
        v32(v30, v2);
        sub_10002B894(v6, &qword_100978890, &qword_1007BDF98);
        v22 = v31 ^ 1;
        return v22 & 1;
      }

      sub_10002B894(v11, &qword_100978890, &qword_1007BDF98);
      sub_10002B894(v14, &qword_100978890, &qword_1007BDF98);
      (*(v23 + 8))(v28, v2);
    }

    sub_10002B894(v6, &qword_100978888, &qword_1007BDF90);
    v22 = 1;
  }

  return v22 & 1;
}

uint64_t sub_1001BA394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotsDisplayStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100978880, &qword_1007BDF88);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_10002849C(&unk_100973C90, qword_1007B55A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  if ((sub_1001B9E6C(a1) & 1) == 0)
  {
    v19 = 0;
    return v19 & 1;
  }

  (*(v5 + 104))(v16, enum case for ScreenshotsDisplayStyle.fourScreenshots(_:), v4);
  (*(v5 + 56))(v16, 0, 1, v4);
  v17 = *(v8 + 48);
  sub_100031660(a2, v10, &unk_100973C90, qword_1007B55A0);
  sub_100031660(v16, &v10[v17], &unk_100973C90, qword_1007B55A0);
  v18 = *(v5 + 48);
  if (v18(v10, 1, v4) != 1)
  {
    sub_100031660(v10, v13, &unk_100973C90, qword_1007B55A0);
    if (v18(&v10[v17], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v10[v17], v4);
      sub_1001BAE24(&qword_100978100, &type metadata accessor for ScreenshotsDisplayStyle, &protocol conformance descriptor for ScreenshotsDisplayStyle);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v5 + 8);
      v20(v7, v4);
      sub_10002B894(v16, &unk_100973C90, qword_1007B55A0);
      v20(v13, v4);
      sub_10002B894(v10, &unk_100973C90, qword_1007B55A0);
      return v19 & 1;
    }

    sub_10002B894(v16, &unk_100973C90, qword_1007B55A0);
    (*(v5 + 8))(v13, v4);
    goto LABEL_8;
  }

  sub_10002B894(v16, &unk_100973C90, qword_1007B55A0);
  if (v18(&v10[v17], 1, v4) != 1)
  {
LABEL_8:
    sub_10002B894(v10, &qword_100978880, &qword_1007BDF88);
    v19 = 0;
    return v19 & 1;
  }

  sub_10002B894(v10, &unk_100973C90, qword_1007B55A0);
  v19 = 1;
  return v19 & 1;
}

void sub_1001BA78C()
{
  v1 = sub_10002849C(&qword_100978860, "@N\b");
  __chkstk_darwin(v1);
  *(v0 + OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews) = _swiftEmptyArrayStorage;
  type metadata accessor for BorderedScreenshotView(0);
  ViewRecycler.init()();
  sub_1001B96FC();
  ReusePool.init(recycler:limit:)();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView) = 0;
  v2 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
  if (qword_10096D258 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for LockupMediaLayout.Metrics();
  v4 = sub_1000056A8(v3, qword_1009787F8);
  (*(*(v3 - 8) + 16))(v0 + v2, v4, v3);
  v5 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayConfiguration;
  if (qword_10096EB50 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v7 = sub_1000056A8(v6, qword_1009D2FE8);
  sub_1001BAB00(v7, v0 + v5, v8);
  *(v0 + OBJC_IVAR____TtC8AppStore15LockupMediaView_platform) = 0;
  v9 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayStyle;
  v10 = enum case for ScreenshotsDisplayStyle.standard(_:);
  v11 = type metadata accessor for ScreenshotsDisplayStyle();
  (*(*(v11 - 8) + 104))(v0 + v9, v10, v11);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001BA9DC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1001BAE24(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v2 = [v7 superview];
    if (v2)
    {
      v3 = v2;
      sub_100028004();
      v4 = v0;
      v5 = static NSObject.== infix(_:_:)();

      if ((v5 & 1) == 0)
      {
        return;
      }

      v6 = swift_unknownObjectWeakLoadStrong();
      if (!v6)
      {
        return;
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }
  }
}

uint64_t sub_1001BAB00(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BAB64(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BABC8(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1001BAC24(objc_class *a1, uint64_t a2)
{
  v4 = sub_1001B79D8();
  if (v4 >> 62)
  {
    v16 = v4;
    v17 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v16;
    if (v17 > a2)
    {
LABEL_3:
      v5 = (v4 + 8 * a2);
      v6 = v4 & 0xC000000000000001;
      if ((v4 & 0xC000000000000001) == 0)
      {
        if (a2 < 0)
        {
          __break(1u);
        }

        else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
        {
          v7 = v5[4];
          goto LABEL_7;
        }

        __break(1u);
        return;
      }

      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
      v18 = v7;
      type metadata accessor for VideoView(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;

        v10 = qword_100988CC0;
        v11 = [*(v9 + qword_100988CC0) layer];
        [v11 removeAllAnimations];

        [*(v9 + v10) setImage:a1];
      }

      else
      {

        if (v6)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v12 = v5[4];
        }

        v18 = v12;

        type metadata accessor for BorderedScreenshotView(0);
        v13 = swift_dynamicCastClass();
        if (!v13)
        {
          goto LABEL_15;
        }

        v10 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
        v9 = v13;
        v14 = *(v13 + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
        v20.value.super.isa = a1;
        v20.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v20, v15);
      }

      [*(v9 + v10) setNeedsDisplay];
LABEL_15:

      return;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    goto LABEL_3;
  }
}

uint64_t sub_1001BAE24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1001BAE6C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v4 = *(v15 - 8);
  __chkstk_darwin(v15);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v7);
  v11 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v7);
  aBlock[4] = sub_1001BCDB4;
  aBlock[5] = v14[1];
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008B8268;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v15);

  return result;
}

uint64_t sub_1001BB1A8()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001BB4DC();
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  aBlock[4] = sub_1001BCDBC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008B82B8;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_1001BB43C()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_100005744(0, &qword_100978968, UIApplicationShortcutItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v0 setShortcutItems:isa];
}

void *sub_1001BB4DC()
{
  v1 = v0;
  v2._object = 0x8000000100806200;
  v2._countAndFlagsBits = 0xD000000000000013;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  localizedString(_:comment:)(v2, v3);
  v4 = objc_opt_self();
  v5 = [v4 iconWithType:5];
  v6 = objc_allocWithZone(UIApplicationShortcutItem);
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v6 initWithType:v7 localizedTitle:v8 localizedSubtitle:0 icon:v5 userInfo:0];

  v10 = v9;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v11 = [*(v1 + 16) ams_activeiTunesAccount];
  v44 = v10;
  if (v11)
  {
    v12 = v11;
    if (([v11 ams_isManagedAppleID] & 1) == 0)
    {
      v13 = objc_allocWithZone(SBSApplicationShortcutSystemPrivateIcon);
      v14 = String._bridgeToObjectiveC()();
      v15 = [v13 initWithSystemImageName:v14];

      v16._object = 0x80000001008062A0;
      v16._countAndFlagsBits = 0xD000000000000013;
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      localizedString(_:comment:)(v16, v17);
      v18 = [objc_allocWithZone(UIApplicationShortcutIcon) initWithSBSApplicationShortcutIcon:v15];
      v19 = objc_allocWithZone(UIApplicationShortcutItem);
      v20 = String._bridgeToObjectiveC()();
      v21 = String._bridgeToObjectiveC()();

      v22 = [v19 initWithType:v20 localizedTitle:v21 localizedSubtitle:0 icon:v18 userInfo:0];

      v23 = v22;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v24._countAndFlagsBits = 0xD000000000000014;
  v24._object = 0x8000000100806220;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  localizedString(_:comment:)(v24, v25);
  v26 = [v4 iconWithType:28];
  v27 = objc_allocWithZone(UIApplicationShortcutItem);
  v28 = String._bridgeToObjectiveC()();
  v29 = String._bridgeToObjectiveC()();

  v30 = [v27 initWithType:v28 localizedTitle:v29 localizedSubtitle:0 icon:v26 userInfo:0];

  v31 = v30;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v32 = objc_allocWithZone(SBSApplicationShortcutSystemPrivateIcon);
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 initWithSystemImageName:v33];

  v35._countAndFlagsBits = 0xD000000000000016;
  v35._object = 0x8000000100806260;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  localizedString(_:comment:)(v35, v36);
  v37 = [objc_allocWithZone(UIApplicationShortcutIcon) initWithSBSApplicationShortcutIcon:v34];
  v38 = objc_allocWithZone(UIApplicationShortcutItem);
  v39 = String._bridgeToObjectiveC()();
  v40 = String._bridgeToObjectiveC()();

  v41 = [v38 initWithType:v39 localizedTitle:v40 localizedSubtitle:0 icon:v37 userInfo:0];

  v42 = v41;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001BBA90()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1001BBAEC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008AFBE8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001BBB38(void *a1)
{
  v70 = type metadata accessor for FinanceType();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v60[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = type metadata accessor for NavigationTab();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v83 = &v60[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = type metadata accessor for FlowOrigin();
  v75 = *(v79 - 8);
  __chkstk_darwin(v79);
  v82 = &v60[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = type metadata accessor for FlowAnimationBehavior();
  v74 = *(v78 - 8);
  __chkstk_darwin(v78);
  v81 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = type metadata accessor for FlowPresentationContext();
  v73 = *(v77 - 8);
  __chkstk_darwin(v77);
  v80 = &v60[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v7 - 8);
  v84 = &v60[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10002849C(&unk_100982AA0, qword_1007C0320);
  __chkstk_darwin(v9 - 8);
  v11 = &v60[-v10];
  v12 = type metadata accessor for SearchOrigin();
  v67 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v15 - 8);
  v17 = &v60[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v86 = &v60[-v19];
  v20 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v20 - 8);
  v22 = &v60[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v85 = &v60[-v24];
  v76 = type metadata accessor for FlowPage();
  v25 = *(v76 - 1);
  *&v26 = __chkstk_darwin(v76).n128_u64[0];
  v28 = &v60[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = [a1 type];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v92._countAndFlagsBits = v30;
  v92._object = v32;
  v33 = sub_1001BBAEC(v92);
  if (v33 <= 1)
  {
    v64 = v14;
    v40 = v68;
    v65 = v11;
    v41 = v69;
    v42 = v70;
    v91 = 0;
    v89 = 0u;
    v90 = 0u;
    if (v33)
    {
      (*(v25 + 104))(v28, enum case for FlowPage.finance(_:), v76);
      (*(v41 + 104))(v40, enum case for FinanceType.redeem(_:), v42);
      v57 = v85;
      FinanceType.url.getter();
      (*(v41 + 8))(v40, v42);
      v58 = type metadata accessor for URL();
      (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
      v59 = type metadata accessor for ReferrerData();
      (*(*(v59 - 8) + 56))(v86, 1, 1, v59);
      v87 = 0u;
      v88 = 0u;
      static ActionMetrics.notInstrumented.getter();
      (*(v73 + 104))(v80, enum case for FlowPresentationContext.infer(_:), v77);
      (*(v74 + 104))(v81, enum case for FlowAnimationBehavior.infer(_:), v78);
      (*(v75 + 104))(v82, enum case for FlowOrigin.inapp(_:), v79);
      static FlowActionPresentation.stackPush.getter();
      type metadata accessor for FlowAction();
      swift_allocObject();
      return FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    }

    else
    {
      v43 = *(v25 + 104);
      v66 = v28;
      v43(v28, enum case for FlowPage.search(_:), v76);
      v44 = type metadata accessor for URL();
      v45 = *(*(v44 - 8) + 56);
      v45(v85, 1, 1, v44);
      v46 = type metadata accessor for ReferrerData();
      v47 = *(*(v46 - 8) + 56);
      v47(v86, 1, 1, v46);
      v76 = "oller";
      v45(v22, 1, 1, v44);
      (*(v67 + 104))(v64, enum case for SearchOrigin.quickAction(_:), v12);
      v48 = type metadata accessor for SearchEntity();
      (*(*(v48 - 8) + 56))(v65, 1, 1, v48);
      static ActionMetrics.notInstrumented.getter();
      v47(v17, 1, 1, v46);
      v49 = type metadata accessor for SearchAction();
      swift_allocObject();
      v50 = SearchAction.init(title:term:url:origin:source:entity:spellCheckEnabled:excludedTerms:originatingTerm:prefixTerm:guidedSearchTokens:guidedSearchOptimizationTerm:actionMetrics:referrerData:)();
      *(&v88 + 1) = v49;
      *&v87 = v50;
      static ActionMetrics.notInstrumented.getter();
      (*(v73 + 104))(v80, enum case for FlowPresentationContext.infer(_:), v77);
      (*(v74 + 104))(v81, enum case for FlowAnimationBehavior.infer(_:), v78);
      (*(v75 + 104))(v82, enum case for FlowOrigin.inapp(_:), v79);
      static FlowActionPresentation.stackPush.getter();
      type metadata accessor for FlowAction();
      swift_allocObject();
      v51 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
      (*(v71 + 104))(v83, enum case for NavigationTab.search(_:), v72);
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1007B0B70;
      *(v52 + 32) = v51;

      static ActionMetrics.notInstrumented.getter();
      type metadata accessor for TabChangeAction();
      swift_allocObject();
      v53 = TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)();

      return v53;
    }
  }

  else
  {
    if (v33 == 2)
    {
      (*(v71 + 104))(v83, enum case for NavigationTab.today(_:), v72);
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1007B0B70;
      v91 = 0;
      v89 = 0u;
      v90 = 0u;
      (*(v25 + 104))(v28, enum case for FlowPage.account(_:), v76);
      v55 = type metadata accessor for URL();
      (*(*(v55 - 8) + 56))(v85, 1, 1, v55);
      v56 = type metadata accessor for ReferrerData();
      (*(*(v56 - 8) + 56))(v86, 1, 1, v56);
      v87 = 0u;
      v88 = 0u;
      static ActionMetrics.notInstrumented.getter();
      (*(v73 + 104))(v80, enum case for FlowPresentationContext.infer(_:), v77);
      (*(v74 + 104))(v81, enum case for FlowAnimationBehavior.infer(_:), v78);
      (*(v75 + 104))(v82, enum case for FlowOrigin.inapp(_:), v79);
      static FlowActionPresentation.stackPush.getter();
      type metadata accessor for FlowAction();
      swift_allocObject();
      *(v54 + 32) = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
      static ActionMetrics.notInstrumented.getter();
      type metadata accessor for TabChangeAction();
      swift_allocObject();
    }

    else
    {
      result = 0;
      if (v33 != 3)
      {
        return result;
      }

      (*(v71 + 104))(v83, enum case for NavigationTab.today(_:), v72);
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_1007B15F0;
      v91 = 0;
      v89 = 0u;
      v90 = 0u;
      v71 = *(v25 + 104);
      v66 = v28;
      (v71)(v28, enum case for FlowPage.account(_:), v76);
      v69 = type metadata accessor for URL();
      v35 = *(v69 - 8);
      v68 = *(v35 + 56);
      v70 = v35 + 56;
      (v68)(v85, 1, 1, v69);
      v65 = type metadata accessor for ReferrerData();
      v36 = *(v65 - 8);
      v64 = *(v36 + 56);
      v67 = v36 + 56;
      v64(v86, 1, 1, v65);
      v87 = 0u;
      v88 = 0u;
      static ActionMetrics.notInstrumented.getter();
      v63 = enum case for FlowPresentationContext.infer(_:);
      v73 = *(v73 + 104);
      (v73)();
      v62 = enum case for FlowAnimationBehavior.infer(_:);
      v74 = *(v74 + 104);
      (v74)();
      v61 = enum case for FlowOrigin.inapp(_:);
      v75 = *(v75 + 104);
      (v75)(v82);
      static FlowActionPresentation.stackPush.getter();
      type metadata accessor for FlowAction();
      swift_allocObject();
      v37 = v86;
      v38 = v66;
      v39 = v85;
      *(v72 + 32) = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
      v91 = 0;
      v89 = 0u;
      v90 = 0u;
      (v71)(v38, enum case for FlowPage.purchases(_:), v76);
      (v68)(v39, 1, 1, v69);
      v64(v37, 1, 1, v65);
      v87 = 0u;
      v88 = 0u;
      static ActionMetrics.notInstrumented.getter();
      (v73)(v80, v63, v77);
      (v74)(v81, v62, v78);
      (v75)(v82, v61, v79);
      static FlowActionPresentation.stackPush.getter();
      swift_allocObject();
      *(v72 + 40) = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
      static ActionMetrics.notInstrumented.getter();
      type metadata accessor for TabChangeAction();
      swift_allocObject();
    }

    return TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)();
  }
}

void sub_1001BCDCC(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v6 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Artwork.Style();
  v9 = *(v37 - 8);
  __chkstk_darwin(v37);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = Lockup.icon.getter();
  if (v18)
  {
  }

  v38 = v14;
  v33 = v9;
  v19 = Lockup.icon.getter();
  if (!v19)
  {
    InAppPurchaseLockup.parent.getter();
    v20 = Lockup.icon.getter();

    if (!v20)
    {
      goto LABEL_11;
    }

    if (a4)
    {
      goto LABEL_5;
    }

LABEL_10:

    Artwork.config(_:mode:prefersLayeredImage:)();
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_1000C36CC(&v40);
    goto LABEL_11;
  }

  v20 = v19;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_5:
  v36 = v8;
  v21 = *(a4 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);

  [v21 contentMode];
  Artwork.config(_:mode:prefersLayeredImage:)();
  v22 = *(a4 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
  Artwork.style.getter();
  ArtworkView.style.setter();
  [v22 setContentMode:Artwork.contentMode.getter()];
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

  v8 = v36;
LABEL_11:
  InAppPurchaseLockup.parent.getter();
  v23 = Lockup.icon.getter();

  if (!v23)
  {
LABEL_18:

    return;
  }

  if (!v18)
  {

    goto LABEL_18;
  }

  v32 = v20;
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  Artwork.style.getter();
  v24 = v33;
  v25 = v37;
  (*(v33 + 104))(v11, enum case for Artwork.Style.roundedRect(_:), v37);
  v26 = v11;
  Artwork.Style.orIfUnspecified(_:)();
  v27 = *(v24 + 8);
  v27(v26, v25);
  v27(v17, v25);
  InAppPurchaseIconLayout.Metrics.tileIconWidth.getter();
  InAppPurchaseIconLayout.Metrics.tileIconWidth.getter();
  Artwork.Style.iconHeight(fromWidth:)();
  if (a4)
  {
    v28 = a4;
    v29 = v27;
    v36 = v8;
    v30 = v28;
    [*(v28 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_tileIconArtworkView) contentMode];
    Artwork.config(_:mode:prefersLayeredImage:)();
    v31 = *(v30 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_tileIconArtworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v31 setContentMode:Artwork.contentMode.getter()];
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

    v29(v38, v37);
    (*(v34 + 8))(v36, v35);
  }

  else
  {
    Artwork.config(_:mode:prefersLayeredImage:)();
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_1000C36CC(&v40);
    v27(v38, v25);
    (*(v34 + 8))(v8, v35);
  }
}

void *sub_1001BD3AC(double a1, double a2)
{
  v2 = type metadata accessor for Artwork.Style();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  __chkstk_darwin(v9);
  v19 = &v18 - v10;
  v20 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  if (Lockup.icon.getter())
  {
    Artwork.config(_:mode:prefersLayeredImage:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v13 = v21;
  }

  InAppPurchaseLockup.parent.getter();
  v14 = Lockup.icon.getter();

  if (v14)
  {
    InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
    Artwork.style.getter();
    (*(v3 + 104))(v5, enum case for Artwork.Style.roundedRect(_:), v2);
    v15 = v19;
    Artwork.Style.orIfUnspecified(_:)();
    v16 = *(v3 + 8);
    v16(v5, v2);
    v16(v8, v2);
    InAppPurchaseIconLayout.Metrics.tileIconWidth.getter();
    InAppPurchaseIconLayout.Metrics.tileIconWidth.getter();
    Artwork.Style.iconHeight(fromWidth:)();
    Artwork.config(_:mode:prefersLayeredImage:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v16(v15, v2);
    (*(v18 + 8))(v12, v20);
    return v21;
  }

  return v13;
}