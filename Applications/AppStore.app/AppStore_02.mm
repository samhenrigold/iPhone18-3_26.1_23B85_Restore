void sub_100039A30(uint64_t result)
{
  if (*(v1 + 16) == 1)
  {
    v2 = *(v1 + 32);
    if (UITraitCollection.isSizeClassCompact.getter())
    {

      [v2 _setContinuousCornerRadius:0.0];
    }
  }
}

id sub_100039A90()
{
  v1 = *(v0 + 32);
  if (*(v0 + 16))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (*(v0 + 16))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*(v0 + 24) setAlpha:v2];

  return [v1 setAlpha:v3];
}

id sub_100039AF8()
{
  if (*(v0 + 16) == 1)
  {
    return [*(v0 + 24) setAlpha:0.0];
  }

  return result;
}

id sub_100039B28()
{
  if (*(v0 + 16) == 1)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer) setAlpha:1.0];
  }

  return result;
}

id sub_100039BA0()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

id sub_100039BC4()
{
  v1 = 1.0;
  if (*(v0 + 24))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

id sub_100039C08()
{
  v1 = 0.3;
  if (!*(v0 + 24))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

uint64_t sub_100039CB4(void *a1)
{
  v1 = [a1 navigationItem];
  v2 = [v1 leftBarButtonItems];
  v18 = v1;
  if (v2)
  {
    v3 = v2;
    sub_100039F40();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
LABEL_17:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        v6 = 0;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

          if ([v7 isSystemItem])
          {
            v10 = [v8 systemItem];

            if (v10 == 24)
            {
LABEL_33:
              i = 1;
LABEL_35:
              v1 = v18;
              goto LABEL_36;
            }
          }

          else
          {
          }

          ++v6;
        }

        while (v9 != v5);
      }
    }

    v1 = v18;
  }

  i = [v1 rightBarButtonItems];
  if (i)
  {
    sub_100039F40();
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v12 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v13 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v14 = *(v12 + 8 * v13 + 32);
        }

        v15 = v14;
        v1 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if ([v14 isSystemItem])
        {
          v16 = [v15 systemItem];

          if (v16 == 24)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }

        ++v13;
        if (v1 == i)
        {
          i = 0;
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }

LABEL_36:
  }

  return i;
}

unint64_t sub_100039F40()
{
  result = qword_100983870;
  if (!qword_100983870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100983870);
  }

  return result;
}

void sub_100039F8C(void *a1, void *a2)
{
  if ((sub_100039CB4(a1) & 1) == 0)
  {
    v4 = [a1 navigationItem];
    v5 = [v4 rightBarButtonItems];
    if (v5)
    {
      v6 = v5;
      sub_100039F40();
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    sub_100039F40();
    v8 = a2;
    v10.value.super.super.isa = a2;
    v10.is_nil = 0;
    UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v10, v11);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setRightBarButtonItems:isa];
  }
}

char *sub_10003A0DC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v12 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v50 - v13;
  v15 = OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView;
  type metadata accessor for TodayCardLockupView();
  *&v6[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView;
  type metadata accessor for ArtworkView();
  *&v6[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v6[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_pageTraits] = 0;
  v17 = [objc_opt_self() effectWithStyle:16];
  v18 = objc_allocWithZone(UIVisualEffectView);
  v51 = v17;
  v19 = [v18 initWithEffect:v17];
  *&v6[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundEffectView] = v19;
  v52.receiver = v6;
  v52.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v21 = OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView;
  v22 = *&v20[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView];
  v23 = v20;
  [v22 setAccessibilityIgnoresInvertColors:1];
  [*&v20[v21] setContentMode:2];
  [v23 addSubview:*&v20[v21]];
  v24 = OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundEffectView;
  [*&v23[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundEffectView] _setContinuousCornerRadius:20.0];
  [v23 addSubview:*&v23[v24]];
  v25 = OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView;
  [*(*&v23[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v23[v25] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v23[v25] + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v26 = *&v23[v25];
  v27 = objc_opt_self();
  v28 = v26;
  sub_10003D9F8([v27 whiteColor]);

  v29 = qword_10096DD28;
  v30 = *(*&v23[v25] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for FontUseCase();
  v32 = sub_1000056A8(v31, qword_1009D0710);
  v33 = *(v31 - 8);
  (*(v33 + 16))(v14, v32, v31);
  (*(v33 + 56))(v14, 0, 1, v31);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v34 = *(*&v23[v25] + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel);
  v35 = [v27 whiteColor];
  [v34 setTextColor:v35];

  v36 = *(*&v23[v25] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  sub_100028BB8();
  v37 = v36;
  v38 = static UIColor.secondaryText.getter();
  v39 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v40 = [v38 resolvedColorWithTraitCollection:v39];

  [v37 setTextColor:v40];
  v41 = *(*&v23[v25] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  v42 = [v27 whiteColor];
  [v41 setTintColor:v42];

  v43 = *(*&v23[v25] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
  v44 = [v27 whiteColor];
  [v43 setTextColor:v44];

  v45 = *(*&v23[v25] + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkTitleLabel);
  v46 = [v27 whiteColor];
  [v45 setTextColor:v46];

  v47 = *(*&v23[v25] + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkSubtitleLabel);
  v48 = [v27 whiteColor];
  [v47 setTextColor:v48];

  [v23 addSubview:*&v23[v25]];
  return v23;
}

id sub_10003A6CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  [v2 bounds];
  ArtworkView.frame.setter();
  v4 = *&v2[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundEffectView];
  [v3 bounds];
  [v4 setFrame:?];
  v5 = *&v3[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView];
  [v3 bounds];

  CGRect.subtracting(insets:)();
  return [v5 setFrame:?];
}

void sub_10003A82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v88 = a2;
  v7 = type metadata accessor for Artwork.Crop();
  v77 = *(v7 - 8);
  v78 = v7;
  __chkstk_darwin(v7);
  v76 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v9 - 8);
  v72 = &v71 - v10;
  v11 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v11 - 8);
  v84 = &v71 - v12;
  v13 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v13 - 8);
  v83 = &v71 - v14;
  v15 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v15 - 8);
  v82 = &v71 - v16;
  v17 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v17 - 8);
  v81 = &v71 - v18;
  v19 = sub_10002849C(&unk_100970170, &unk_1007BDDF0);
  __chkstk_darwin(v19 - 8);
  v21 = &v71 - v20;
  v22 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v79 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v25 - 8);
  v80 = &v71 - v26;
  v27 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v27 - 8);
  v29 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  v85 = a3;
  inject<A, B>(_:from:)();
  v30 = v89;
  CondensedAdLockupWithIconBackground.backgroundArtwork.getter();
  v31 = [v3 traitCollection];
  sub_10003B5FC(v88, v31);
  v32 = Artwork.config(_:mode:prefersLayeredImage:)();

  v33 = *&v3[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView];
  v88 = a1;
  CondensedAdLockupWithIconBackground.backgroundArtwork.getter();
  Artwork.style.getter();
  v75 = v29;
  ArtworkView.style.setter();
  [v33 setContentMode:Artwork.contentMode.getter()];
  ArtworkLoaderConfig.size.getter();
  ArtworkView.imageSize.setter();
  if (!Artwork.backgroundColor.getter())
  {
    sub_100028BB8();
    static UIColor.placeholderBackground.getter();
  }

  ArtworkView.backgroundColor.setter();

  [v33 setContentMode:2];
  v34 = type metadata accessor for ArtworkView();
  v35 = sub_10003B998(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v86 = v32;
  v87 = v30;
  v73 = v35;
  v74 = v34;
  ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  v36 = *&v4[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView];
  [*&v36[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:0];
  v37 = CondensedAdLockupWithIconBackground.lockup.getter();
  v38 = *(v23 + 104);
  v38(v79, enum case for OfferButtonPresenterViewAlignment.right(_:), v22);
  v38(v21, enum case for OfferButtonPresenterViewAlignment.left(_:), v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  sub_10003B998(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v39 = v80;
  AccessibilityConditional.init(value:axValue:)();
  v40 = sub_10002849C(&unk_100973240, qword_1007B2220);
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  v41 = type metadata accessor for OfferStyle();
  v42 = v81;
  (*(*(v41 - 8) + 56))(v81, 1, 1, v41);
  v43 = type metadata accessor for OfferEnvironment();
  v44 = v82;
  (*(*(v43 - 8) + 56))(v82, 1, 1, v43);
  v45 = type metadata accessor for OfferTint();
  v46 = v83;
  (*(*(v45 - 8) + 56))(v83, 1, 1, v45);
  v47 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v48 = v84;
  (*(*(v47 - 8) + 56))(v84, 1, 1, v47);
  sub_1004F3190(v37, v36, v39, v85, 0, 0, v42, v44, v46, v48);
  v36[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 1;
  sub_100776DD8();
  [v36 setNeedsLayout];
  sub_100776DD8();

  sub_10002B894(v48, &unk_100970150, &unk_1007BDDD0);
  sub_10002B894(v46, &unk_100973AD0, &unk_1007B17C0);
  sub_10002B894(v44, &unk_100970160, &unk_1007BDDE0);
  sub_10002B894(v42, &qword_100973AE0, &unk_1007B17D0);
  sub_10002B894(v39, &unk_100973230, &unk_1007B17E0);
  v49 = *&v36[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
  if (v49)
  {
    v50 = objc_opt_self();
    v51 = v49;
    v52 = [v50 whiteColor];
    [v51 setTextColor:v52];
  }

  v53 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
  v54 = *&v36[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
  if (v54)
  {
    v55 = objc_opt_self();
    v56 = v54;
    v57 = [v55 whiteColor];
    [v56 setTextColor:v57];

    v58 = *&v36[v53];
    if (v58)
    {
      v59 = qword_10096DD58;
      v60 = v58;
      if (v59 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for FontUseCase();
      v62 = sub_1000056A8(v61, qword_1009D07A0);
      v63 = *(v61 - 8);
      v64 = v72;
      (*(v63 + 16))(v72, v62, v61);
      (*(v63 + 56))(v64, 0, 1, v61);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

      v65 = *&v36[v53];
      if (v65)
      {
        [v65 setAccessibilityIgnoresInvertColors:1];
      }
    }
  }

  CondensedAdLockupWithIconBackground.lockup.getter();
  v66 = Lockup.icon.getter();

  if (v66)
  {
    swift_beginAccess();
    v67 = v76;
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v77 + 8))(v67, v78);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v68 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v69 = *&v36[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v69 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    [*&v36[v68] setContentMode:1];
    v70 = *&v36[v68];
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

double sub_10003B5FC(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for OfferButtonMetrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v21[-v8 - 8];
  PageGrid.columnWidth.getter();
  v11 = v10;
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  sub_10003B8E8(&xmmword_1009D3ED0, v26);
  if (qword_10096EFE8 != -1)
  {
    swift_once();
  }

  sub_10003B8E8(&xmmword_1009D4040, v25);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v12 = v25;
  }

  else
  {
    v12 = v26;
  }

  sub_10003B8E8(v12, v21);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v13 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v13 = qword_100991028;
  }

  v14 = sub_1000056A8(v3, v13);
  (*(v4 + 16))(v6, v14, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v24 & 1) == 0 && v22 == 0.0 && v23 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v16 = v15;
    OfferButtonMetrics.minimumSize.getter();
    v22 = v16;
    v23 = v17;
    v24 = 0;
  }

  v18 = _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v21, a2, v11);
  (*(v4 + 8))(v9, v3, v18);
  sub_10003B944(v21);
  sub_10003B944(v25);
  sub_10003B944(v26);
  return v11;
}

uint64_t sub_10003B998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10003B9E0()
{
  v1 = OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView;
  type metadata accessor for TodayCardLockupView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView;
  type metadata accessor for ArtworkView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_pageTraits) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10003BA9C(uint64_t a1, uint64_t a2)
{
  sub_10002C0AC(a1, v9);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for CondensedAdLockupWithIconBackground();
  if (swift_dynamicCast())
  {
    CondensedAdLockupWithIconBackground.backgroundArtwork.getter();
    v5 = [v2 traitCollection];
    sub_10003B5FC(a2, v5);
    Artwork.config(_:mode:prefersLayeredImage:)();

    type metadata accessor for ArtworkView();
    sub_10003B998(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    CondensedAdLockupWithIconBackground.lockup.getter();
    v6 = Lockup.icon.getter();

    if (v6)
    {
      if (qword_10096D418 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v7, qword_1009CE960);
      SmallLockupLayout.Metrics.artworkSize.getter();
      Artwork.config(_:mode:prefersLayeredImage:)();
      v8 = *(*&v2[OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }

  return result;
}

unint64_t sub_10003BCF4()
{
  result = qword_1009701B8;
  if (!qword_1009701B8)
  {
    type metadata accessor for ShareSheetAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009701B8);
  }

  return result;
}

uint64_t sub_10003BD54(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v28 = a1;
  v30 = type metadata accessor for FlowOrigin();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FlowAnimationBehavior();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowPresentationContext();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - v16;
  v18 = type metadata accessor for FlowPage();
  __chkstk_darwin(v18);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  (*(v20 + 104))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.shareSheet(_:));
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = type metadata accessor for ReferrerData();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v33 = type metadata accessor for ShareSheetAction();
  v32 = v28;

  static ActionMetrics.notInstrumented.getter();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.infer(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v27);
  (*(v2 + 104))(v29, enum case for FlowOrigin.inapp(_:), v30);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v23 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v24 = sub_1005D01FC(v23, 1, v31);

  return v24;
}

uint64_t sub_10003C224(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10003C2D0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10003C3F8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10003C4A0()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_1009701C0);
  sub_1000056A8(v4, qword_1009701C0);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

id sub_10003C5F4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(ADTrackingTransparency) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

BOOL sub_10003C660()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((ASKBagContract.enablePersonalizedAdsPrivacyNotice.getter() & 1) == 0 || (ASKBagContract.enablePersonalizedAdsPrivacyNoticeHighlightedOption.getter() & 1) == 0)
  {
    return 0;
  }

  v4 = ASKBagContract.personalizedAdsPrivacyNoticeEnabledRegions.getter();
  static Locale.current.getter();
  v5 = Locale.regionCode.getter();
  v7 = v6;
  v8 = *(v1 + 8);
  v9 = v8(v3, v0);
  if (!v7)
  {
    goto LABEL_8;
  }

  v19 = v5;
  v20 = v7;
  __chkstk_darwin(v9);
  *&v18[-16] = &v19;
  v10 = sub_10003C224(sub_10003D6A0, &v18[-32], v4);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = ASKBagContract.personalizedAdsPrivacyNoticeHighlightedOptionEnabledRegions.getter();
  static Locale.current.getter();
  v12 = Locale.regionCode.getter();
  v14 = v13;
  v15 = v8(v3, v0);
  if (!v14)
  {
LABEL_8:

    return 0;
  }

  v19 = v12;
  v20 = v14;
  __chkstk_darwin(v15);
  *&v18[-16] = &v19;
  v16 = sub_10003C224(sub_10003D6A0, &v18[-32], v11);

  return (v16 & 1) != 0;
}

uint64_t sub_10003C89C()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (static ResilientDeepLinkController.hasResilientDeepLinks(bag:)())
  {
    if (qword_10096CE60 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  if ([objc_opt_self() ams_shieldSignInOrCreateFlows])
  {
    if (qword_10096CE60 == -1)
    {
LABEL_6:
      v5 = type metadata accessor for OSLogger();
      sub_1000056A8(v5, qword_1009701C0);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();
LABEL_7:

      return 0;
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  v7 = sub_10003C5F4();
  v8 = [v7 shouldPresentPersonalizedAdsOnboarding];

  if (!v8)
  {
    if (qword_10096CE60 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for OSLogger();
    sub_1000056A8(v16, qword_1009701C0);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    v17 = [*(v0 + 24) shouldPresentPersonalizedAdsOnboarding];
    v19[3] = &type metadata for Bool;
    LOBYTE(v19[0]) = v17;
    static LogMessage.safe(_:)();
    sub_10003D444(v19);
    Logger.info(_:)();
    goto LABEL_7;
  }

  v9 = ASKBagContract.enablePersonalizedAdsPrivacyNotice.getter();
  v10 = ASKBagContract.personalizedAdsPrivacyNoticeEnabledRegions.getter();
  static Locale.current.getter();
  v11 = Locale.regionCode.getter();
  v13 = v12;
  v14 = (*(v2 + 8))(v4, v1);
  if (!v13)
  {

    if (v9)
    {
      return 1;
    }

LABEL_16:
    if (qword_10096CE60 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v19[0] = v11;
  v19[1] = v13;
  __chkstk_darwin(v14);
  *&v18[-16] = v19;
  v15 = sub_10003C224(sub_10003D560, &v18[-32], v10);

  if (((v9 | v15) & 1) == 0)
  {
    goto LABEL_16;
  }

  return 1;
}

uint64_t sub_10003CEC4()
{
  v1 = sub_10003C5F4();
  v2 = [v1 latestVersionForPersonalizedAdsConsent];

  [*(v0 + 24) setAcknowledgedVersionForPersonalizedAds:v2];
  if (qword_10096CE60 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for OSLogger();
  sub_1000056A8(v3, qword_1009701C0);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  v4 = [*(v0 + 24) acknowledgedVersionForPersonalizedAds];
  v6[3] = &type metadata for Int;
  v6[0] = v4;
  static LogMessage.safe(_:)();
  sub_10003D444(v6);
  Logger.info(_:)();
}

uint64_t sub_10003D078()
{

  sub_10003D614(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for AdPrivacyOnboardingStep.ButtonsStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_10003D194()
{
  result = qword_100970288;
  if (!qword_100970288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100970288);
  }

  return result;
}

Swift::Int sub_10003D244(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003D2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003D57C(&qword_1009702A0, &unk_1007B19C8);

  return OnboardingStep.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10003D310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003D370(uint64_t a1, uint64_t a2)
{
  v5 = sub_10003D57C(&qword_1009702A0, &unk_1007B19C8);

  return static OnboardingStep.== infix(_:_:)(a1, a2, v2, v5);
}

uint64_t sub_10003D444(uint64_t a1)
{
  v2 = sub_10002849C(&unk_1009711D0, &unk_1007B1A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003D508(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10003D57C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AdPrivacyOnboardingStep();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003D5BC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10003D6DC(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticDimension();
  sub_100005644(v8, a3);
  sub_1000056A8(v8, a3);
  if (qword_10096DD08 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D06B0);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v14);
  (*(v5 + 16))(v11, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  return (*(v5 + 8))(v7, v4);
}

void sub_10003D8D0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *&v2[*a2];
  *&v2[*a2] = a1;
  if (v4)
  {
    v5 = a1;
    [v4 removeFromSuperview];
    v6 = *&v2[v3];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = v6;
    [v2 addSubview:v7];
  }

LABEL_4:
}

uint64_t sub_10003D978(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_title);
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_title);
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_title + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_10003E7B4();
LABEL_11:
}

void sub_10003D9F8(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor);
  *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_100005744(0, &qword_100970180, UIColor_ptr);
  a1 = a1;
  v4 = v7;
  v5 = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_10003E7B4();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

void sub_10003DAE8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine);
  if (v3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine + 8);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v5 = dispatch thunk of AppStateMachine.hasCurrentBetaState.getter();
    v6 = *(v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp);
    *(v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp) = v5 & 1;
    if ((v5 & 1) != v6)
    {
      sub_10003E7B4();
    }

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v3;
    v8[4] = v4;
    swift_unknownObjectRetain();

    dispatch thunk of AppStateMachine.addStateTransitionObserver(_:action:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = *(v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp);
    *(v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp) = 0;
    if (v9 == 1)
    {

      sub_10003E7B4();
    }
  }
}

void sub_10003DC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_getObjectType();
    v7 = dispatch thunk of AppStateMachine.hasCurrentBetaState.getter();
    v8 = v6[OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp];
    v6[OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp] = v7 & 1;
    if ((v7 & 1) != v8)
    {
      sub_10003E7B4();
    }
  }
}

char *sub_10003DD10(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v75 = type metadata accessor for AutomationSemantics();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v79 - 8);
  __chkstk_darwin(v79);
  v13 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v14 - 8);
  v16 = v68 - v15;
  v17 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  type metadata accessor for ArtworkView();
  *&v4[v17] = static ArtworkView.iconArtworkView.getter();
  v18 = OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel;
  if (qword_10096DD68 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D07D0);
  v21 = *(v19 - 8);
  v22 = v21 + 16;
  v80 = *(v21 + 16);
  v80(v16, v20, v19);
  v24 = *(v21 + 56);
  v23 = v21 + 56;
  v78 = v24;
  v24(v16, 0, 1, v19);
  v25 = *(v11 + 104);
  v76 = v11 + 104;
  v77 = enum case for DirectionalTextAlignment.none(_:);
  v25(v13);
  v26 = type metadata accessor for DynamicTypeLabel();
  v27 = objc_allocWithZone(v26);
  *&v4[v18] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel] = 0;
  v28 = OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel;
  if (qword_10096DD08 != -1)
  {
    swift_once();
  }

  v29 = sub_1000056A8(v19, qword_1009D06B0);
  v80(v16, v29, v19);
  v78(v16, 0, 1, v19);
  (v25)(v13, v77, v79);
  v30 = objc_allocWithZone(v26);
  *&v4[v28] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v71 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
  v31 = v13;
  v72 = v25;
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v70 = sub_1000056A8(v19, qword_1009D0710);
  v80(v16, v70, v19);
  v32 = v78;
  v78(v16, 0, 1, v19);
  v33 = v77;
  v68[1] = v23;
  v34 = v79;
  v68[0] = v22;
  v35 = v72;
  (v72)(v31, v77, v79);
  v36 = objc_allocWithZone(v26);
  v69 = v26;
  *&v4[v71] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel] = 0;
  v37 = v34;
  v38 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel;
  v80(v16, v70, v19);
  v32(v16, 0, 1, v19);
  v35(v31, v33, v37);
  v39 = objc_allocWithZone(v69);
  *&v5[v38] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v40 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v40] = sub_1000F5284(0, v42);
  v43 = &v5[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabelPresenter];
  *v43 = 0u;
  v43[1] = 0u;
  v44 = &v5[OBJC_IVAR____TtC8AppStore14BaseLockupView_title];
  *v44 = 0;
  v44[1] = 0;
  v45 = OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor;
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  *&v5[v45] = static UIColor.primaryText.getter();
  v46 = &v5[OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine];
  *v46 = 0;
  v46[1] = 0;
  v5[OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp] = 0;
  v47 = type metadata accessor for BaseLockupView();
  v83.receiver = v5;
  v83.super_class = v47;
  v48 = objc_msgSendSuper2(&v83, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v52 = v48;
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v52 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v53 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  [v52 addSubview:*&v52[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView]];
  v54 = OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel;
  v55 = *&v52[OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [v52 addSubview:*&v52[v54]];
  v56 = OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel;
  v57 = *&v52[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [v52 addSubview:*&v52[v56]];
  v58 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
  v59 = *&v52[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
  v60 = static UIColor.secondaryText.getter();
  [v59 setTextColor:v60];

  v61 = *&v52[v58];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [v52 addSubview:*&v52[v58]];
  v62 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel;
  [*&v52[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:1];
  v63 = *&v52[v62];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [*&v52[v62] setText:0];
  [*&v52[v62] setHidden:1];
  [v52 addSubview:*&v52[v62]];
  [v52 addSubview:*&v52[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton]];
  v64 = *&v52[v53];
  memset(v82, 0, sizeof(v82));
  memset(v81, 0, sizeof(v81));
  v65 = v64;
  v66 = v73;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(v81);
  sub_10003D444(v82);
  UIView.setAutomationSemantics(_:)();

  (*(v74 + 8))(v66, v75);
  return v52;
}

id sub_10003E600(uint64_t a1, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = v2;
    dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();

    swift_unknownObjectRelease();
  }

  v5.receiver = v2;
  v5.super_class = type metadata accessor for BaseLockupView();
  return objc_msgSendSuper2(&v5, "dealloc");
}

id sub_10003E7B4()
{
  if (*&v0[OBJC_IVAR____TtC8AppStore14BaseLockupView_title + 8])
  {
    if (v0[OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp] == 1)
    {

      v1 = sub_10003E9F4();
      v2 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v1];

      v3 = objc_allocWithZone(NSMutableAttributedString);
      v4 = String._bridgeToObjectiveC()();

      v5 = [v3 initWithString:v4];

      v6 = *&v0[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor];
      if (v6)
      {
        v7 = v6;
        [v5 addAttribute:NSForegroundColorAttributeName value:v7 range:{0, objc_msgSend(v5, "length")}];
      }

      [v2 appendAttributedString:v5];
      [*&v0[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel] setAttributedText:v2];
    }

    else
    {
      v13 = *&v0[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel];

      [v13 setAttributedText:0];
      v14 = String._bridgeToObjectiveC()();

      [v13 setText:v14];

      [v13 setTextColor:*&v0[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor]];
    }

    v10 = "setNeedsLayout";
    v11 = v0;
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel];
    [v9 setAttributedText:0];
    v10 = "setText:";
    v11 = v9;
    v8 = 0;
  }

  return [v11 v10];
}

id sub_10003E9F4()
{
  v1 = type metadata accessor for FloatingPointRoundingRule();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSMutableAttributedString) init];
  v6 = sub_10032FEB0(0xD000000000000014, 0x80000001007FB350, 0);
  if (qword_10096CE68 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for StaticDimension();
  sub_1000056A8(v7, qword_1009702A8);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v9 = v8;
  v10 = *(v2 + 8);
  v30 = v1;
  v10(v4, v1);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096DD08 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  sub_1000056A8(v11, qword_1009D06B0);
  v12 = [v0 traitCollection];
  v13 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v29 = v13;
  [v13 capHeight];
  v15 = floor((v14 - v9) * 0.5);
  v16 = [objc_allocWithZone(NSTextAttachment) init];
  v17 = [objc_opt_self() systemYellowColor];
  v18 = [v6 imageWithTintColor:v17];
  v28 = v6;
  v19 = v18;

  [v16 setImage:v19];
  [v16 setBounds:{0.0, v15, v9, v9}];
  sub_100005744(0, &qword_100989250, NSMutableAttributedString_ptr);
  v20 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v16];
  [v5 appendAttributedString:v20];
  if (qword_10096CE70 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v7, qword_1009702C0);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v22 = v21;
  v10(v4, v30);
  v23 = [objc_allocWithZone(NSTextAttachment) init];
  [v23 setBounds:{0.0, 0.0, v22, 0.0}];
  v24 = [objc_allocWithZone(UIImage) init];
  [v23 setImage:v24];

  v25 = [objc_opt_self() attributedStringWithAttachment:v23];
  [v5 appendAttributedString:v25];

  return v5;
}

id sub_10003EE6C(char a1, uint64_t a2)
{
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
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
    sub_10003D8B8(v20);
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
    [result setHidden:{1, v10}];
    result = *(v2 + v13);
    if (result)
    {

      return [result setText:0];
    }
  }

  return result;
}

void sub_10003F12C()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
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
  sub_10003D8C4(v15);
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

void sub_10003F3D4(id a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for BaseLockupView();
  objc_msgSendSuper2(&v11, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    if (*(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp) == 1)
    {
      sub_10003E7B4();
    }

    return;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    return;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }
}

void sub_10003F628()
{
  v50 = type metadata accessor for DirectionalTextAlignment();
  v1 = *(v50 - 8);
  __chkstk_darwin(v50);
  v3 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v4 - 8);
  v6 = v41 - v5;
  v7 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  type metadata accessor for ArtworkView();
  *(v0 + v7) = static ArtworkView.iconArtworkView.getter();
  v8 = OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel;
  if (qword_10096DD68 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D07D0);
  v11 = *(v9 - 8);
  v12 = v11 + 16;
  v51 = *(v11 + 16);
  v51(v6, v10, v9);
  v15 = *(v11 + 56);
  v13 = v11 + 56;
  v14 = v15;
  v15(v6, 0, 1, v9);
  v16 = *(v1 + 104);
  v46 = enum case for DirectionalTextAlignment.none(_:);
  v48 = v1 + 104;
  v45 = v16;
  (v16)(v3);
  v49 = type metadata accessor for DynamicTypeLabel();
  v17 = objc_allocWithZone(v49);
  *(v0 + v8) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *(v0 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel) = 0;
  v18 = OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel;
  if (qword_10096DD08 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v9, qword_1009D06B0);
  v20 = v12;
  v51(v6, v19, v9);
  v47 = v13;
  v43 = v14;
  v14(v6, 0, 1, v9);
  v45(v3, v46, v50);
  v21 = objc_allocWithZone(v49);
  v22 = v3;
  v23 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v44 = v0;
  *(v0 + v18) = v23;
  v42 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v41[0] = sub_1000056A8(v9, qword_1009D0710);
  v41[1] = v20;
  v51(v6, v41[0], v9);
  v24 = v43;
  v43(v6, 0, 1, v9);
  v25 = v46;
  v26 = v50;
  v27 = v45;
  v45(v22, v46, v50);
  v28 = objc_allocWithZone(v49);
  v29 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v30 = v44;
  *(v44 + v42) = v29;
  *(v30 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel) = 0;
  v31 = v26;
  v32 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel;
  v51(v6, v41[0], v9);
  v24(v6, 0, 1, v9);
  v27(v22, v25, v31);
  v33 = objc_allocWithZone(v49);
  *(v30 + v32) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v34 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
  v35 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v30 + v34) = sub_1000F5284(0, v36);
  v37 = (v30 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabelPresenter);
  *v37 = 0u;
  v37[1] = 0u;
  v38 = (v30 + OBJC_IVAR____TtC8AppStore14BaseLockupView_title);
  *v38 = 0;
  v38[1] = 0;
  v39 = OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor;
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  *(v30 + v39) = static UIColor.primaryText.getter();
  v40 = (v30 + OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine);
  *v40 = 0;
  v40[1] = 0;
  *(v30 + OBJC_IVAR____TtC8AppStore14BaseLockupView_isBetaApp) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10003FC3C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 setUserInteractionEnabled:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10003FDF4(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v36.receiver = v2;
  v36.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v36, "viewDidAppear:", v3 & 1);
  v4 = *&v2[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_contextViewController];
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8AppStore33PresentationContextViewController_hasPresentedViewController;
    if ((v2[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_hasPresentedViewController] & 1) == 0)
    {
      v6 = v4;
      v7 = [v6 popoverPresentationController];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 sourceView];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 window];
          if (v11)
          {
            v12 = v11;
            v13 = [v10 superview];
            if (v13)
            {
              v14 = v13;
              [v10 frame];
              [v14 convertRect:v12 toCoordinateSpace:?];
              v16 = v15;
              v18 = v17;
              v20 = v19;
              v22 = v21;
            }

            else
            {
              v16 = 0.0;
              v18 = 0.0;
              v20 = 0.0;
              v22 = 0.0;
            }

            v23 = [v2 view];
            [v8 setSourceView:v23];

            [v8 sourceRect];
            v25 = v24;
            v27 = v26;
            v29 = v28;
            v31 = v30;
            v37.origin.x = v16;
            v37.origin.y = v18;
            v37.size.width = v20;
            v37.size.height = v22;
            MinX = CGRectGetMinX(v37);
            v33 = v16;
            v34 = MinX;
            v38.origin.x = v33;
            v38.origin.y = v18;
            v38.size.width = v20;
            v38.size.height = v22;
            MinY = CGRectGetMinY(v38);
            v39.origin.x = v25;
            v39.origin.y = v27;
            v39.size.width = v29;
            v39.size.height = v31;
            v40 = CGRectOffset(v39, v34, MinY);
            [v8 setSourceRect:{v40.origin.x, v40.origin.y, v40.size.width, v40.size.height}];

            v8 = v10;
          }

          else
          {
            v12 = v10;
          }

          v8 = v12;
        }
      }

      [v2 presentViewController:v6 animated:v2[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_animatedContext] completion:0];

      v2[v5] = 1;
    }
  }
}

void sub_1000400A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_contextViewController];
  *&v3[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_contextViewController] = 0;

  v3[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_hasPresentedViewController] = 0;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v3;
  aBlock[4] = sub_1000404AC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008B19F8;
  v9 = _Block_copy(aBlock);
  sub_10000827C(a2, a3);
  v10 = v3;

  v11.receiver = v10;
  v11.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v11, "dismissViewControllerWithTransition:completion:", a1, v9);
  _Block_release(v9);
}

void sub_1000401D0(void (*a1)(uint64_t), uint64_t a2, char *a3)
{
  if (a1)
  {

    a1(v6);
    sub_10001F63C(a1, a2);
  }

  v7 = [a3 presentedViewController];
  if (v7)
  {
LABEL_4:

    return;
  }

  if (a3[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_isPresentingActivityViewController])
  {
    return;
  }

  v8 = *&a3[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_dismissOverride];
  if (!v8)
  {
    v11 = [a3 presentingViewController];
    if (!v11)
    {
      return;
    }

    v12 = v11;
    [v11 dismissViewControllerAnimated:0 completion:0];
    v7 = v12;
    goto LABEL_4;
  }

  v9 = *&a3[OBJC_IVAR____TtC8AppStore33PresentationContextViewController_dismissOverride + 8];

  v8(v10);

  sub_10001F63C(v8, v9);
}

id sub_1000403F4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PresentationContextViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000404B8@<X0>(char *a1@<X8>)
{
  v70 = a1;
  v1 = type metadata accessor for ArcadePageUrls();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v65 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for EditorialPageKey();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v59 - v6;
  v8 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v8 - 8);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v59 - v11;
  __chkstk_darwin(v12);
  v60 = &v59 - v13;
  __chkstk_darwin(v14);
  v62 = &v59 - v15;
  __chkstk_darwin(v16);
  v18 = &v59 - v17;
  __chkstk_darwin(v19);
  v61 = &v59 - v20;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for StoreTab.Identifier();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  StoreTab.identifier.getter();
  v32 = (*(v29 + 88))(v31, v28);
  if (v32 == enum case for StoreTab.Identifier.today(_:))
  {
    StoreTab.url.getter();
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_10002B894(v23, &qword_100982460, &unk_1007B5C90);
      v33 = type metadata accessor for FlowDestination(0);
      return (*(*(v33 - 8) + 56))(v70, 1, 1, v33);
    }

    v37 = *(v25 + 32);
    v37(v27, v23, v24);
    v36 = v70;
    v37(v70, v27, v24);
    v35 = type metadata accessor for FlowDestination(0);
    goto LABEL_9;
  }

  if (v32 == enum case for StoreTab.Identifier.games(_:) || v32 == enum case for StoreTab.Identifier.apps(_:))
  {
    goto LABEL_17;
  }

  if (v32 != enum case for StoreTab.Identifier.updates(_:))
  {
    if (v32 == enum case for StoreTab.Identifier.search(_:))
    {
      v36 = v70;
      *v70 = 0;
      v35 = type metadata accessor for FlowDestination(0);
      goto LABEL_9;
    }

    if (v32 == enum case for StoreTab.Identifier.arcade(_:))
    {
      v40 = StoreTab.editorialPageUrls.getter();
      v41 = *(v68 + 104);
      v41(v7, enum case for EditorialPageKey.subscriber(_:), v69);
      if (*(v40 + 16) && (v42 = sub_1003D7798(v7), (v43 & 1) != 0))
      {
        (*(v25 + 16))(v18, *(v40 + 56) + *(v25 + 72) * v42, v24);
        v44 = *(v68 + 8);
        v44(v7, v69);

        v45 = *(v25 + 56);
        v45(v18, 0, 1, v24);
        v46 = v61;
        (*(v25 + 32))(v61, v18, v24);
        v45(v46, 0, 1, v24);
      }

      else
      {

        v44 = *(v68 + 8);
        v44(v7, v69);
        v45 = *(v25 + 56);
        v45(v18, 1, 1, v24);
        v46 = v61;
        StoreTab.url.getter();
        if ((*(v25 + 48))(v18, 1, v24) != 1)
        {
          sub_10002B894(v18, &qword_100982460, &unk_1007B5C90);
        }
      }

      v48 = StoreTab.editorialPageUrls.getter();
      v49 = v59;
      v41(v59, enum case for EditorialPageKey.nonSubscriber(_:), v69);
      v50 = v49;
      v51 = v62;
      if (*(v48 + 16) && (v52 = sub_1003D7798(v50), (v53 & 1) != 0))
      {
        v54 = v60;
        (*(v25 + 16))(v60, *(v48 + 56) + *(v25 + 72) * v52, v24);
        v44(v50, v69);

        v45(v54, 0, 1, v24);
        (*(v25 + 32))(v51, v54, v24);
        v45(v51, 0, 1, v24);
      }

      else
      {

        v44(v50, v69);
        v55 = v60;
        v45(v60, 1, 1, v24);
        StoreTab.url.getter();
        if ((*(v25 + 48))(v55, 1, v24) != 1)
        {
          sub_10002B894(v55, &qword_100982460, &unk_1007B5C90);
        }
      }

      sub_1000417F0(v46, v63);
      sub_1000417F0(v51, v64);
      v56 = v65;
      ArcadePageUrls.init(subscriberUrl:nonSubscriberUrl:)();
      sub_10002B894(v51, &qword_100982460, &unk_1007B5C90);
      sub_10002B894(v46, &qword_100982460, &unk_1007B5C90);
      v57 = *(sub_10002849C(&qword_1009703B8, &qword_1007CAF10) + 48);
      v36 = v70;
      *v70 = 0;
      (*(v66 + 32))(&v36[v57], v56, v67);
      v35 = type metadata accessor for FlowDestination(0);
      goto LABEL_9;
    }

    if (v32 != enum case for StoreTab.Identifier.featured(_:))
    {
      v58 = type metadata accessor for FlowDestination(0);
      (*(*(v58 - 8) + 56))(v70, 1, 1, v58);
      return (*(v29 + 8))(v31, v28);
    }

LABEL_17:
    sub_10002849C(&unk_10097CCB0, &qword_1007B7100);
    v47 = v70;
    *v70 = 0;
    StoreTab.url.getter();
    v35 = type metadata accessor for FlowDestination(0);
    swift_storeEnumTagMultiPayload();
    v38 = *(*(v35 - 8) + 56);
    v39 = v47;
    return v38(v39, 0, 1, v35);
  }

  v35 = type metadata accessor for FlowDestination(0);
  v36 = v70;
LABEL_9:
  swift_storeEnumTagMultiPayload();
  v38 = *(*(v35 - 8) + 56);
  v39 = v36;
  return v38(v39, 0, 1, v35);
}

uint64_t sub_100040EAC()
{
  v59 = type metadata accessor for NavigationTab();
  v1 = *(v59 - 8);
  __chkstk_darwin(v59);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StoreTab.Identifier();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_10002849C(&unk_1009703C0, &qword_1007B1A68);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  v12 = type metadata accessor for SystemImage();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v58 - v17;
  v61 = v0;
  StoreTab.imageIdentifier.getter();
  if (v19)
  {

    SystemImage.init(rawValue:)();
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_10002B894(v11, &unk_1009703C0, &qword_1007B1A68);
      v20 = static SystemImage.loadIfExists(_:with:includePrivateImages:)();
    }

    else
    {

      (*(v13 + 32))(v18, v11, v12);
      v20 = static SystemImage.load(_:with:)();
      (*(v13 + 8))(v18, v12);
    }
  }

  else
  {
    v20 = 0;
  }

  StoreTab.identifier.getter();
  v21 = (*(v62 + 88))(v8, v63);
  if (v21 == enum case for StoreTab.Identifier.today(_:))
  {
    StoreTab.title.getter();
    if (!v22)
    {
      v23._object = 0x80000001007FB580;
      v23._countAndFlagsBits = 0xD000000000000010;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      localizedString(_:comment:)(v23, v24);
    }

    if (v20)
    {
      v25 = v20;
    }

    else
    {
      (*(v13 + 104))(v15, enum case for SystemImage.docTextImage(_:), v12);
      v25 = static SystemImage.load(_:with:)();
      (*(v13 + 8))(v15, v12);
    }

    v32 = &enum case for NavigationTab.today(_:);
LABEL_34:
    v47 = v59;
    (*(v1 + 104))(v3, *v32, v59);
    v48 = v20;
    v49 = NavigationTab.intValue.getter();
    (*(v1 + 8))(v3, v47);
    v50 = objc_allocWithZone(UITabBarItem);
    v51 = String._bridgeToObjectiveC()();

    v52 = [v50 initWithTitle:v51 image:v25 tag:v49];

    v53 = v60;
    StoreTab.identifier.getter();
    v46 = UITabBarItem.withAXIdentifier(_:)();

    (*(v62 + 8))(v53, v63);
    return v46;
  }

  if (v21 == enum case for StoreTab.Identifier.games(_:))
  {
    StoreTab.title.getter();
    if (!v26)
    {
      v27._object = 0x80000001007FB560;
      v27._countAndFlagsBits = 0xD000000000000010;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      localizedString(_:comment:)(v27, v28);
    }

    if (v20)
    {
      v25 = v20;
    }

    else
    {
      (*(v13 + 104))(v15, enum case for SystemImage.rocketFill(_:), v12);
      v25 = static SystemImage.load(_:with:)();
      (*(v13 + 8))(v15, v12);
    }

    v32 = &enum case for NavigationTab.games(_:);
    goto LABEL_34;
  }

  if (v21 == enum case for StoreTab.Identifier.apps(_:))
  {
LABEL_17:
    StoreTab.title.getter();
    if (!v29)
    {
      v30._countAndFlagsBits = 0x5449545F45474150;
      v30._object = 0xEF535050415F454CLL;
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      localizedString(_:comment:)(v30, v31);
    }

    if (v20)
    {
      v25 = v20;
    }

    else
    {
      (*(v13 + 104))(v15, enum case for SystemImage.app3Stack3DFill(_:), v12);
      v25 = static SystemImage.load(_:with:)();
      (*(v13 + 8))(v15, v12);
    }

    v32 = &enum case for NavigationTab.apps(_:);
    goto LABEL_34;
  }

  if (v21 == enum case for StoreTab.Identifier.updates(_:))
  {
    StoreTab.title.getter();
    if (!v33)
    {
      v34._countAndFlagsBits = 0xD000000000000012;
      v34._object = 0x80000001007FB540;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      localizedString(_:comment:)(v34, v35);
    }

    v36 = sub_10032FEB0(0x5473657461647055, 0xEE006E6F63496261, 0);
    v37 = [v36 _imageThatSuppressesAccessibilityHairlineThickening];

    v38 = v59;
    (*(v1 + 104))(v3, enum case for NavigationTab.updates(_:), v59);
    v39 = NavigationTab.intValue.getter();
    (*(v1 + 8))(v3, v38);
    v40 = objc_allocWithZone(UITabBarItem);
    v41 = String._bridgeToObjectiveC()();

    v42 = [v40 initWithTitle:v41 image:v37 tag:v39];

    v43 = v60;
  }

  else
  {
    if (v21 != enum case for StoreTab.Identifier.search(_:))
    {
      if (v21 == enum case for StoreTab.Identifier.arcade(_:))
      {
        StoreTab.title.getter();
        if (!v55)
        {
          v56._countAndFlagsBits = 0xD000000000000011;
          v56._object = 0x80000001007FB520;
          v57._countAndFlagsBits = 0;
          v57._object = 0xE000000000000000;
          localizedString(_:comment:)(v56, v57);
        }

        if (v20)
        {
          v25 = v20;
        }

        else
        {
          (*(v13 + 104))(v15, enum case for SystemImage.joystickcontrollerFill(_:), v12);
          v25 = static SystemImage.load(_:with:)();
          (*(v13 + 8))(v15, v12);
        }

        v32 = &enum case for NavigationTab.arcade(_:);
        goto LABEL_34;
      }

      if (v21 != enum case for StoreTab.Identifier.featured(_:))
      {

        (*(v62 + 8))(v8, v63);
        return 0;
      }

      goto LABEL_17;
    }

    v44 = v59;
    (*(v1 + 104))(v3, enum case for NavigationTab.search(_:), v59);
    v45 = NavigationTab.intValue.getter();
    (*(v1 + 8))(v3, v44);
    v42 = [objc_allocWithZone(UITabBarItem) initWithTabBarSystemItem:8 tag:v45];
    v43 = v60;
  }

  StoreTab.identifier.getter();
  v46 = UITabBarItem.withAXIdentifier(_:)();

  (*(v62 + 8))(v43, v63);
  return v46;
}

uint64_t sub_1000417F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100041888()
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
LABEL_7:
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
      goto LABEL_7;
    }
  }
}

id sub_1000419F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnapshotPageTraitEnvironment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void UIViewController.pageContainerSize.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

id UIViewController.snapshotPageTraitEnvironment.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = type metadata accessor for SnapshotPageTraitEnvironment();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v8 = v2;
  *(v8 + 1) = v4;
  *&v7[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, "init");
}

void sub_100041CDC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationController];

    if (v3)
    {
      v4 = [v3 navigationBar];

      [v4 frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v16.origin.x = v6;
      v16.origin.y = v8;
      v16.size.width = v10;
      v16.size.height = v12;
      CGRectGetMaxY(v16);
    }
  }

  v13 = *(v0 + 32);
  if (v13)
  {
    v14 = swift_unknownObjectWeakLoadStrong();
    v15 = v13;
    sub_1001125E8(v14);
  }
}

void sub_100041DF8()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 48);

    v2(v4, 1.0, 0.0);
    sub_10001F63C(v2, v3);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong navigationController];

    if (v7)
    {
      v8 = [v7 navigationBar];

      [v8 _setTitleOpacity:1.0];
    }
  }

  *(v1 + 88) = 0;
}

void sub_100041EBC(void *a1, void *a2)
{
  v32 = a2;
  v4 = type metadata accessor for Uber.Style();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_1009704D8, &qword_1007B1B68);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_10002849C(&qword_1009704E0, qword_1007B1B70);
  __chkstk_darwin(v10 - 8);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = *(v2 + 32);
  v33 = v2;
  *(v2 + 32) = a1;
  a1;

  if (a1)
  {
    Uber.style.getter();
    v19 = *(v5 + 56);
    v19(v17, 0, 1, v4);
  }

  else
  {
    v19 = *(v5 + 56);
    v19(v17, 1, 1, v4);
  }

  (*(v5 + 104))(v14, enum case for Uber.Style.inline(_:), v4);
  v19(v14, 0, 1, v4);
  v20 = *(v7 + 48);
  sub_10004389C(v17, v9);
  sub_10004389C(v14, &v9[v20]);
  v21 = *(v5 + 48);
  if (v21(v9, 1, v4) == 1)
  {
    sub_10002B894(v14, &qword_1009704E0, qword_1007B1B70);
    sub_10002B894(v17, &qword_1009704E0, qword_1007B1B70);
    if (v21(&v9[v20], 1, v4) == 1)
    {
      sub_10002B894(v9, &qword_1009704E0, qword_1007B1B70);
      goto LABEL_13;
    }
  }

  else
  {
    v22 = v31;
    sub_10004389C(v9, v31);
    if (v21(&v9[v20], 1, v4) != 1)
    {
      v26 = v30;
      (*(v5 + 32))(v30, &v9[v20], v4);
      sub_10004390C();
      v27 = v22;
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v5 + 8);
      v29(v26, v4);
      sub_10002B894(v14, &qword_1009704E0, qword_1007B1B70);
      sub_10002B894(v17, &qword_1009704E0, qword_1007B1B70);
      v29(v27, v4);
      sub_10002B894(v9, &qword_1009704E0, qword_1007B1B70);
      if (v28)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    sub_10002B894(v14, &qword_1009704E0, qword_1007B1B70);
    sub_10002B894(v17, &qword_1009704E0, qword_1007B1B70);
    (*(v5 + 8))(v22, v4);
  }

  sub_10002B894(v9, &qword_1009704D8, &qword_1007B1B68);
LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    sub_100041CDC();
    (*((swift_isaMask & *v24) + 0x1A8))(v25, 0);
  }

LABEL_13:
  sub_1000423A0(v32);
}

void sub_1000423A0(void *a1)
{
  v3 = type metadata accessor for Uber.Style();
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_1009704D8, &qword_1007B1B68);
  __chkstk_darwin(v6);
  v8 = &v72 - v7;
  v9 = sub_10002849C(&qword_1009704E0, qword_1007B1B70);
  __chkstk_darwin(v9 - 8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  __chkstk_darwin(v15);
  v17 = &v72 - v16;
  if (!*(v1 + 32))
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  v20 = [Strong collectionView];

  if (!v20)
  {
    return;
  }

  sub_100043850();
  v21 = a1;
  v77 = v6;
  v22 = v14;
  v23 = v17;
  v24 = v1;
  v25 = v11;
  v26 = v5;
  v27 = v8;
  v28 = v21;
  v29 = static NSObject.== infix(_:_:)();

  v76 = v28;
  v30 = v27;
  v31 = v26;
  v32 = v25;
  v33 = v24;
  v34 = v23;
  v35 = v22;
  v36 = v77;
  if ((v29 & 1) == 0 || *(v33 + 88) != 1)
  {
    return;
  }

  [v76 contentOffset];
  v38 = v37;
  v39 = *(v33 + 32);
  if (v39)
  {
    v40 = swift_unknownObjectWeakLoadStrong();
    v41 = v39;
    sub_1001125E8(v40);
    v43 = v42;

    v44 = v38 / v43;
    if (v38 / v43 >= 1.0)
    {
      v44 = 1.0;
    }
  }

  else
  {
    v44 = v37 / 0.0;
    v45 = 1.0;
    if (v37 / 0.0 >= 1.0)
    {
      goto LABEL_13;
    }
  }

  if (v44 < 0.0)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = v44;
  }

LABEL_13:
  v46 = *(v33 + 40);
  if (v46)
  {
    v47 = *(v33 + 48);

    v46(v48, v45, 0.0);
    sub_10001F63C(v46, v47);
  }

  v49 = *(v33 + 72);
  v50 = v79;
  if (!v49)
  {
    goto LABEL_26;
  }

  v51 = *(v33 + 80);
  v52 = *(v33 + 32);
  v75 = *(v33 + 72);
  v73 = v31;
  v74 = v51;
  if (v52)
  {
    sub_10000827C(v49, v51);

    Uber.style.getter();

    v53 = v78;
    v54 = *(v78 + 56);
    v54(v34, 0, 1, v50);
  }

  else
  {
    v53 = v78;
    v55 = *(v78 + 56);
    v72 = v32;
    v54 = v55;
    v55(v34, 1, 1, v79);
    v32 = v72;
  }

  (*(v53 + 104))(v35, enum case for Uber.Style.inline(_:), v50);
  v54(v35, 0, 1, v50);
  v56 = v50;
  v57 = *(v36 + 48);
  sub_10004389C(v34, v30);
  sub_10004389C(v35, v30 + v57);
  v58 = *(v53 + 48);
  if (v58(v30, 1, v56) == 1)
  {
    sub_10002B894(v35, &qword_1009704E0, qword_1007B1B70);
    sub_10002B894(v34, &qword_1009704E0, qword_1007B1B70);
    if (v58(v30 + v57, 1, v56) == 1)
    {
      sub_10002B894(v30, &qword_1009704E0, qword_1007B1B70);
      v60 = v75;
LABEL_28:
      if (v45 >= 0.5)
      {
        v65 = 0.35;
      }

      else
      {
        v65 = 0.2;
      }

      v59.n128_u64[0] = 1.0;
      if (v45 < 0.5)
      {
        v59.n128_f64[0] = 0.0;
      }

      v66 = v74;
      v67 = v60;
      v60(v59, v65);
      sub_100042F8C(v76, *&v65, 0, v45);
      sub_10001F63C(v67, v66);
      goto LABEL_34;
    }
  }

  else
  {
    sub_10004389C(v30, v32);
    if (v58(v30 + v57, 1, v56) != 1)
    {
      v61 = v78;
      v62 = v30 + v57;
      v63 = v73;
      (*(v78 + 32))(v73, v62, v56);
      sub_10004390C();
      LODWORD(v77) = dispatch thunk of static Equatable.== infix(_:_:)();
      v64 = *(v61 + 8);
      v64(v63, v56);
      sub_10002B894(v35, &qword_1009704E0, qword_1007B1B70);
      sub_10002B894(v34, &qword_1009704E0, qword_1007B1B70);
      v64(v32, v56);
      sub_10002B894(v30, &qword_1009704E0, qword_1007B1B70);
      v60 = v75;
      if (v77)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    sub_10002B894(v35, &qword_1009704E0, qword_1007B1B70);
    sub_10002B894(v34, &qword_1009704E0, qword_1007B1B70);
    (*(v78 + 8))(v32, v56);
  }

  sub_10002B894(v30, &qword_1009704D8, &qword_1007B1B68);
  v60 = v75;
LABEL_25:
  sub_10001F63C(v60, v74);
LABEL_26:
  sub_100042F8C(v76, 0, 1, v45);
LABEL_34:
  v68 = swift_unknownObjectWeakLoadStrong();
  if (v68)
  {
    v69 = v68;
    v70 = [v68 navigationController];

    if (v70)
    {
      v71 = [v70 navigationBar];

      [v71 _setTitleOpacity:v45];
    }
  }
}

uint64_t sub_100042AAC(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v10 = type metadata accessor for Uber.Style();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_1009704D8, &qword_1007B1B68);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  v17 = sub_10002849C(&qword_1009704E0, qword_1007B1B70);
  __chkstk_darwin(v17 - 8);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v36 - v21;
  __chkstk_darwin(v23);
  v25 = v36 - v24;
  if (a4 > a2)
  {
    goto LABEL_2;
  }

  if (fabs(a6) <= 0.4)
  {
    v36[1] = v6;
    if (*(v6 + 32))
    {

      Uber.style.getter();

      v27 = *(v11 + 56);
      v27(v25, 0, 1, v10);
    }

    else
    {
      v27 = *(v11 + 56);
      v27(v36 - v24, 1, 1, v10);
    }

    (*(v11 + 104))(v22, enum case for Uber.Style.inline(_:), v10);
    v27(v22, 0, 1, v10);
    v28 = *(v14 + 48);
    sub_10004389C(v25, v16);
    sub_10004389C(v22, &v16[v28]);
    v29 = *(v11 + 48);
    if (v29(v16, 1, v10) == 1)
    {
      sub_10002B894(v22, &qword_1009704E0, qword_1007B1B70);
      sub_10002B894(v25, &qword_1009704E0, qword_1007B1B70);
      if (v29(&v16[v28], 1, v10) == 1)
      {
        sub_10002B894(v16, &qword_1009704E0, qword_1007B1B70);
        v26 = 0;
        return v26 & 1;
      }

      goto LABEL_12;
    }

    sub_10004389C(v16, v19);
    if (v29(&v16[v28], 1, v10) == 1)
    {
      sub_10002B894(v22, &qword_1009704E0, qword_1007B1B70);
      sub_10002B894(v25, &qword_1009704E0, qword_1007B1B70);
      (*(v11 + 8))(v19, v10);
LABEL_12:
      sub_10002B894(v16, &qword_1009704D8, &qword_1007B1B68);
      goto LABEL_13;
    }

    (*(v11 + 32))(v13, &v16[v28], v10);
    sub_10004390C();
    v34 = dispatch thunk of static Equatable.== infix(_:_:)();
    v35 = *(v11 + 8);
    v35(v13, v10);
    sub_10002B894(v22, &qword_1009704E0, qword_1007B1B70);
    sub_10002B894(v25, &qword_1009704E0, qword_1007B1B70);
    v35(v19, v10);
    sub_10002B894(v16, &qword_1009704E0, qword_1007B1B70);
    if (v34)
    {
LABEL_2:
      v26 = 0;
      return v26 & 1;
    }
  }

LABEL_13:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v32 = [Strong traitCollection];

    LOBYTE(v31) = UITraitCollection.prefersAccessibilityLayouts.getter();
    v26 = v31 ^ 1;
  }

  else
  {
    v26 = 1;
  }

  return v26 & 1;
}

uint64_t sub_100042F8C(void *a1, uint64_t a2, char a3, double a4)
{
  v9 = type metadata accessor for Uber.Style();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_1009704D8, &qword_1007B1B68);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = sub_10002849C(&qword_1009704E0, qword_1007B1B70);
  __chkstk_darwin(v15 - 8);
  v45 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v43 - v22;
  if (a3)
  {
    [a1 _verticalVelocity];
    v25 = v24;
  }

  else
  {
    v25 = *&a2;
  }

  v26 = *(v4 + 32);
  v46 = v4;
  if (v26)
  {

    Uber.style.getter();

    v27 = *(v10 + 56);
    v27(v23, 0, 1, v9);
  }

  else
  {
    v27 = *(v10 + 56);
    v27(v23, 1, 1, v9);
  }

  (*(v10 + 104))(v19, enum case for Uber.Style.inline(_:), v9);
  v27(v19, 0, 1, v9);
  v28 = *(v12 + 48);
  sub_10004389C(v23, v14);
  sub_10004389C(v19, &v14[v28]);
  v29 = *(v10 + 48);
  if (v29(v14, 1, v9) != 1)
  {
    v33 = v45;
    sub_10004389C(v14, v45);
    if (v29(&v14[v28], 1, v9) != 1)
    {
      v36 = &v14[v28];
      v37 = v44;
      (*(v10 + 32))(v44, v36, v9);
      sub_10004390C();
      v38 = v33;
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v10 + 8);
      v40(v37, v9);
      sub_10002B894(v19, &qword_1009704E0, qword_1007B1B70);
      sub_10002B894(v23, &qword_1009704E0, qword_1007B1B70);
      v40(v38, v9);
      result = sub_10002B894(v14, &qword_1009704E0, qword_1007B1B70);
      v31 = v46;
      if (v39)
      {
        goto LABEL_16;
      }

LABEL_13:
      v34 = *(v31 + 40);
      if (!v34)
      {
        return result;
      }

      v35 = 48;
      goto LABEL_18;
    }

    sub_10002B894(v19, &qword_1009704E0, qword_1007B1B70);
    sub_10002B894(v23, &qword_1009704E0, qword_1007B1B70);
    (*(v10 + 8))(v33, v9);
    v31 = v46;
LABEL_12:
    result = sub_10002B894(v14, &qword_1009704D8, &qword_1007B1B68);
    goto LABEL_13;
  }

  sub_10002B894(v19, &qword_1009704E0, qword_1007B1B70);
  sub_10002B894(v23, &qword_1009704E0, qword_1007B1B70);
  v30 = v29(&v14[v28], 1, v9);
  v31 = v46;
  if (v30 != 1)
  {
    goto LABEL_12;
  }

  result = sub_10002B894(v14, &qword_1009704E0, qword_1007B1B70);
LABEL_16:
  v34 = *(v31 + 56);
  if (!v34)
  {
    return result;
  }

  v35 = 64;
LABEL_18:
  v41 = *(v31 + v35);

  v34(v42, a4, v25);
  return sub_10001F63C(v34, v41);
}

void sub_100043470(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  if (*(v4 + 32))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong collectionView];

      if (v12)
      {
        sub_100043850();
        v13 = a1;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          [v13 contentSize];
          v16 = v15;
          v18 = v17;
          [v13 frame];
          if ((sub_100042AAC(v16, v18, v19, v20, a3, a4) & 1) != 0 && *(a2 + 8) > 0.0)
          {
            [v13 contentInset];
            v22 = v21;
            [v13 _systemContentInset];
            v24 = v23;
            v25 = swift_unknownObjectWeakLoadStrong();
            v26 = 0.0;
            MaxY = 0.0;
            if (v25)
            {
              v28 = v25;
              v29 = [v25 navigationController];

              if (v29)
              {
                v30 = [v29 navigationBar];

                [v30 frame];
                v32 = v31;
                v34 = v33;
                v36 = v35;
                v38 = v37;

                v51.origin.x = v32;
                v51.origin.y = v34;
                v51.size.width = v36;
                v51.size.height = v38;
                MaxY = CGRectGetMaxY(v51);
              }
            }

            v39 = *(v5 + 32);
            if (v39)
            {
              v40 = swift_unknownObjectWeakLoadStrong();
              v41 = v39;
              sub_1001125E8(v40);
              v43 = v42;

              v44 = *(v5 + 32);
              if (v44)
              {
                v26 = *(v44 + OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset);
              }
            }

            else
            {
              v43 = 0.0;
            }

            v45 = v43 + v26 - v24;
            v46 = *(a2 + 8);
            if (v45 >= 0.0)
            {
              if (v46 > v45)
              {
                return;
              }
            }

            else
            {
              if (v46 > 0.0)
              {
                return;
              }

              v45 = 0.0;
            }

            if (a4 >= 0.0)
            {
              v47 = 0.07;
            }

            else
            {
              v47 = 0.5;
            }

            v48 = v45 * v47;
            v49 = v45 - MaxY;
            if (v46 <= v48)
            {
              v50 = -(v22 + v24);
            }

            else
            {
              v50 = v49;
            }

            *(a2 + 8) = v50;
          }
        }
      }
    }
  }
}

uint64_t sub_1000436F0()
{
  sub_10001F64C(v0 + 16);

  sub_10001F63C(*(v0 + 40), *(v0 + 48));
  sub_10001F63C(*(v0 + 56), *(v0 + 64));
  sub_10001F63C(*(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

unint64_t sub_100043850()
{
  result = qword_1009704D0;
  if (!qword_1009704D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009704D0);
  }

  return result;
}

uint64_t sub_10004389C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009704E0, qword_1007B1B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004390C()
{
  result = qword_1009704E8;
  if (!qword_1009704E8)
  {
    type metadata accessor for Uber.Style();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009704E8);
  }

  return result;
}

uint64_t sub_100043964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 88) = 1;
  *(a2 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return a2;
}

uint64_t sub_100043A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  (*(a2 + 8))(v8, a1);
  v4 = v9;
  v5 = v10;
  sub_10002A400(v8, v9);
  v6 = a3(v4, v5);
  sub_100007000(v8);
  return v6;
}

uint64_t sub_100043A7C(void *a1)
{
  if (*(v1 + 24))
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  else
  {
    v2 = *(v1 + 16);
    [a1 _verticalVelocity];
    v5 = v4;
    [a1 _systemContentInset];
    v7 = v6;
    [a1 contentInset];
    v9 = v7 + v8;
    [a1 contentOffset];
    *(v1 + 48) = v9 + v10 >= v2;
    *(v1 + 56) = v5;
  }

  v11 = ProductNavigationBarMode.rawValue.getter();
  result = ProductNavigationBarMode.rawValue.getter();
  if (v11 != result)
  {
    v13 = *(v1 + 32);
    if (v13)
    {
      return v13(*(v1 + 48), 1, *(v1 + 56));
    }
  }

  return result;
}

uint64_t sub_100043B7C()
{
  sub_10001F63C(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

double sub_100043BF4(double a1)
{
  v1 = type metadata accessor for TimingCurve();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_1009705D8, &qword_1007B1C60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  v11 = 0.3;
  v10 = 0x3FA999999999999ALL;
  (*(v2 + 104))(v4, enum case for TimingCurve.linear(_:), v1);
  Interpolator.init(fromValue:toValue:curve:)();
  Interpolator.value(forInput:)();
  (*(v6 + 8))(v8, v5);
  return v11;
}

double sub_100043E18()
{
  type metadata accessor for RoundedButton();
  sub_100043ED8(&qword_1009705E8, &type metadata accessor for RoundedButton, &protocol conformance descriptor for RoundedButton);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v3)
  {
    return 0.0;
  }

  v0 = sub_100079F24();
  v1 = sub_10074943C(v3, v0);

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_100043ED8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100043F38(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemViews] = _swiftEmptyArrayStorage;
  static SearchTagsRibbonViewLayout.Metrics.standard.getter();
  *&v6[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels] = 0;
  v6[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_shouldEvenlyDistribute] = 2;
  v6[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_isInsideSearchAd] = 0;
  *&v6[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_impressionsCalculator] = 0;
  v12 = &v6[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_impressionsUpdateBlock];
  *v12 = 0;
  v12[1] = 0;
  v20.receiver = v6;
  v20.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_10096CE78 != -1)
  {
    swift_once();
  }

  [v17 setMaximumContentSizeCategory:qword_1009705F0];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007B10D0;
  *(v18 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v18 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v17;
}

uint64_t sub_10004416C(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000441A4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemViews;
  v5 = *&v2[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemViews];
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = 32;
    do
    {
      [*(v5 + v7) removeFromSuperview];
      v7 += 16;
      --v6;
    }

    while (v6);
  }

  *&v2[v4] = a1;

  v8 = *&v2[v4];

  result = SearchTagsRibbonViewLayout.Metrics.maximumNumberOfItems.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(v8 + 16) >= result)
    {
      v10 = result;
    }

    else
    {
      v10 = *(v8 + 16);
    }

    if (result)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v8 + 32);
      do
      {
        v13 = *v12;
        v12 += 2;
        [v2 addSubview:v13];
        --v10;
      }

      while (v10);
    }

    swift_unknownObjectRelease();

    return [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1000442B4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for LayoutRect();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchTagsRibbonViewLayout.Metrics();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100970658, &unk_1007B1DD0);
  __chkstk_darwin(v8 - 8);
  v52 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v55 = sub_10002849C(&qword_10096FC60, &unk_1007B12A0);
  v13 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v39 - v14;
  v15 = type metadata accessor for SearchTagsRibbonViewLayout();
  v43 = *(v15 - 8);
  v44 = v15;
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v39 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57.receiver = v2;
  v57.super_class = ObjectType;
  v46 = ObjectType;
  objc_msgSendSuper2(&v57, "layoutSubviews", v16);
  v49 = v2;
  v18 = *&v2[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemViews];
  v19 = *(v18 + 16);

  v53 = v19;
  if (v19)
  {
    v21 = 0;
    v50 = v13;
    v51 = (v13 + 48);
    v22 = v18 + 40;
    v56 = _swiftEmptyArrayStorage;
    v23 = &unk_1007B1DD0;
    while (v21 < *(v18 + 16))
    {
      v24 = *(v22 - 8);
      swift_getObjectType();
      v25 = v24;
      v26 = v23;
      v27 = v52;
      dispatch thunk of MetadataRibbonItemView.searchLayoutContext.getter();
      v28 = v27;
      v23 = v26;
      sub_1000476A0(v28, v12, &qword_100970658, v26);

      if ((*v51)(v12, 1, v55) == 1)
      {
        result = sub_10002B894(v12, &qword_100970658, v26);
      }

      else
      {
        sub_1000476A0(v12, v54, &qword_10096FC60, &unk_1007B12A0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_1000333D0(0, v56[2] + 1, 1, v56);
        }

        v30 = v56[2];
        v29 = v56[3];
        if (v30 >= v29 >> 1)
        {
          v56 = sub_1000333D0((v29 > 1), v30 + 1, 1, v56);
        }

        v31 = v56;
        v56[2] = v30 + 1;
        result = sub_1000476A0(v54, v31 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v30, &qword_10096FC60, &unk_1007B12A0);
      }

      ++v21;
      v22 += 16;
      if (v53 == v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v56 = _swiftEmptyArrayStorage;
LABEL_13:

    v32 = v49;
    (*(v41 + 16))(v40, &v49[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metrics], v42);
    v33 = v39;
    SearchTagsRibbonViewLayout.init(searchTagsRibbonItemLayoutContexts:metrics:shouldEvenlyDistribute:)();
    LayoutMarginsAware<>.layoutFrame.getter();
    v34 = v45;
    SearchTagsRibbonViewLayout.placeChildren(relativeTo:in:)();
    (*(v47 + 8))(v34, v48);
    v35 = &v32[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_impressionsUpdateBlock];
    swift_beginAccess();
    v36 = *v35;
    if (*v35)
    {
      v37 = *(v35 + 1);
      swift_endAccess();

      v36(v38);
      sub_10001F63C(v36, v37);
      return (*(v43 + 8))(v33, v44);
    }

    else
    {
      (*(v43 + 8))(v33, v44);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1000448B8(uint64_t a1, double a2, double a3)
{
  v32 = a1;
  v29 = type metadata accessor for SearchTagsRibbonViewLayout.Metrics();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SearchTagsRibbonViewLayout();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100970658, &unk_1007B1DD0);
  __chkstk_darwin(v6 - 8);
  v35 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v38 = sub_10002849C(&qword_10096FC60, &unk_1007B12A0);
  v11 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v25 - v12;
  v31 = v3;
  v13 = *(v3 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemViews);
  v14 = *(v13 + 16);

  v36 = v14;
  if (v14)
  {
    v16 = 0;
    v33 = v11;
    v34 = (v11 + 48);
    v17 = v13 + 40;
    v39 = _swiftEmptyArrayStorage;
    while (v16 < *(v13 + 16))
    {
      v18 = *(v17 - 8);
      swift_getObjectType();
      v19 = v18;
      v20 = v35;
      dispatch thunk of MetadataRibbonItemView.searchLayoutContext.getter();
      sub_1000476A0(v20, v10, &qword_100970658, &unk_1007B1DD0);

      if ((*v34)(v10, 1, v38) == 1)
      {
        result = sub_10002B894(v10, &qword_100970658, &unk_1007B1DD0);
      }

      else
      {
        sub_1000476A0(v10, v37, &qword_10096FC60, &unk_1007B12A0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_1000333D0(0, v39[2] + 1, 1, v39);
        }

        v22 = v39[2];
        v21 = v39[3];
        if (v22 >= v21 >> 1)
        {
          v39 = sub_1000333D0((v21 > 1), v22 + 1, 1, v39);
        }

        v23 = v39;
        v39[2] = v22 + 1;
        result = sub_1000476A0(v37, v23 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v22, &qword_10096FC60, &unk_1007B12A0);
      }

      ++v16;
      v17 += 16;
      if (v36 == v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
LABEL_13:

    (*(v27 + 16))(v26, v31 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metrics, v29);
    v24 = v25;
    SearchTagsRibbonViewLayout.init(searchTagsRibbonItemLayoutContexts:metrics:shouldEvenlyDistribute:)();
    SearchTagsRibbonViewLayout.measurements(fitting:in:)();
    return (*(v28 + 8))(v24, v30);
  }

  return result;
}

id sub_100044DF8(unint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v6 = a2;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for MetadataRibbonItemViewType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_shouldEvenlyDistribute) = v6;
  v12 = _swiftEmptyArrayStorage;
  *&v42 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v37)
  {
    while (1)
    {
      v29[1] = a3;
      v30 = v4;
      v13 = 0;
      v38 = a1;
      v40 = a1 & 0xFFFFFFFFFFFFFF8;
      v41 = a1 & 0xC000000000000001;
      v4 = (v9 + 88);
      a1 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
      v14 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
      v15 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
      LODWORD(v39) = enum case for MetadataRibbonItemViewType.starRating(_:);
      v35 = enum case for MetadataRibbonItemViewType.divider(_:);
      v36 = enum case for MetadataRibbonItemViewType.textLabel(_:);
      v31 = (v9 + 8);
      v32 = v11;
      v34 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
      while (v41)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        a3 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          v4 = v30;
          *(v30 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels) = v42;

          v11 = 0;
          v8 = 0;
          v12 = _swiftEmptyArrayStorage;
          v23 = v38;
          while (1)
          {
            if (v41)
            {
              v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              a3 = (v11 + 1);
              if (__OFADD__(v11, 1))
              {
                goto LABEL_47;
              }
            }

            else
            {
              if (v11 >= *(v40 + 16))
              {
                goto LABEL_48;
              }

              v24 = *(v23 + 8 * v11 + 32);

              a3 = (v11 + 1);
              if (__OFADD__(v11, 1))
              {
                goto LABEL_47;
              }
            }

            v43 = v24;
            sub_10004523C(&v43, v4, &v42);

            if (v42)
            {
              v39 = v42;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v12 = sub_10003406C(0, *(v12 + 2) + 1, 1, v12);
              }

              a1 = *(v12 + 2);
              v25 = *(v12 + 3);
              v26 = v39;
              if (a1 >= v25 >> 1)
              {
                v27 = sub_10003406C((v25 > 1), a1 + 1, 1, v12);
                v26 = v39;
                v12 = v27;
              }

              *(v12 + 2) = a1 + 1;
              *(v12 + a1 + 2) = v26;
            }

            ++v11;
            if (a3 == v9)
            {
              goto LABEL_51;
            }
          }
        }

LABEL_8:
        v12 = v9;
        MetadataRibbonItem.viewContainerType.getter();
        v16 = (*v4)(v11, v8);
        if (v16 == a1 || v16 == v14 || v16 == v15 || v16 == v39 || v16 == v36 || v16 == v35 || v16 == v34)
        {
          v12 = &v42;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v11 = v32;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {

          (*v31)(v11, v8);
        }

        ++v13;
        v9 = v37;
        if (a3 == v37)
        {
          goto LABEL_32;
        }
      }

      if (v13 < *(v40 + 16))
      {
        break;
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v37 = _CocoaArrayWrapper.endIndex.getter();
      if (!v37)
      {
        goto LABEL_50;
      }
    }

    v9 = *(v38 + 8 * v13 + 32);

    a3 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      goto LABEL_31;
    }

    goto LABEL_8;
  }

LABEL_50:
  *(v4 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels) = v12;

LABEL_51:
  sub_1000441A4(v12);
  return [v4 setNeedsLayout];
}

uint64_t sub_10004523C@<X0>(uint64_t *a1@<X0>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = type metadata accessor for LabelPlaceholder();
  v70 = *(v7 - 8);
  v71 = v7;
  __chkstk_darwin(v7);
  v69 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DynamicTextAppearance();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v65 = &v55 - v11;
  __chkstk_darwin(v12);
  v67 = &v55 - v13;
  v14 = sub_10002849C(&qword_10096FB98, &unk_1007B10B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v55 - v15;
  v17 = *a1;
  result = sub_1002CC3DC();
  if (result)
  {
    v20 = result;
    v21 = v19;
    v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    dispatch thunk of MetadataRibbonItemView.apply(_:asPartOf:)();
    MetadataRibbonItem.id.getter();
    dispatch thunk of MetadataRibbonItemView.id.setter();
    MetadataRibbonItem.itemType.getter();
    v23 = type metadata accessor for MetadataRibbonItemType();
    (*(*(v23 - 8) + 56))(v16, 0, 1, v23);
    dispatch thunk of MetadataRibbonItemView.itemType.setter();
    v59 = dispatch thunk of MetadataRibbonItem.maxCharacterCount.getter();
    v25 = v24;
    v26 = [a3 traitCollection];
    v62 = v21;
    v63 = a4;
    v60 = v22;
    v61 = v20;
    if (v25)
    {
    }

    else
    {
      v55 = v26;
      v56 = v25;
      v57 = a3;
      v58 = v17;
      v27 = v64;
      DynamicTextAppearance.init()();
      static CustomTextStyle<>.metadataRibbon.getter();
      if (qword_10096EE50 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for MetadataRibbonTextStyle();
      v29 = sub_1000056A8(v28, qword_1009D36F8);
      v73 = v28;
      v74 = sub_100047608(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
      v30 = sub_1000056E0(v72);
      (*(*(v28 - 8) + 16))(v30, v29, v28);
      v31 = v65;
      DynamicTextAppearance.withCustomTextStyle(_:)();
      v32 = v66;
      v33 = *(v66 + 8);
      v34 = v68;
      v33(v27, v68);
      sub_100007000(v72);
      v35 = v67;
      DynamicTextAppearance.withNumberOfLines(_:)();
      v33(v31, v34);
      v36._countAndFlagsBits = 77;
      v36._object = 0xE100000000000000;
      String.init(repeating:count:)(v36, v59);
      (*(v32 + 16))(v31, v35, v34);
      LabelPlaceholder.Options.init(rawValue:)();
      v37 = v69;
      LabelPlaceholder.init(_:with:where:)();
      v38 = v55;
      LabelPlaceholder.measure(toFit:with:)();

      (*(v70 + 8))(v37, v71);
      v33(v35, v34);
      v21 = v62;
      a4 = v63;
      a3 = v57;
      v22 = v60;
    }

    dispatch thunk of MetadataRibbonItemView.labelMaxWidth.setter();
    v59 = dispatch thunk of MetadataRibbonItem.truncationLegibilityCharacterCountThreshold.getter();
    v40 = v39;
    v41 = [a3 traitCollection];
    if (v40)
    {
    }

    else
    {
      v57 = v41;
      LODWORD(v58) = v40;
      v42 = v64;
      DynamicTextAppearance.init()();
      static CustomTextStyle<>.metadataRibbon.getter();
      if (qword_10096EE50 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for MetadataRibbonTextStyle();
      v44 = sub_1000056A8(v43, qword_1009D36F8);
      v73 = v43;
      v74 = sub_100047608(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
      v45 = sub_1000056E0(v72);
      (*(*(v43 - 8) + 16))(v45, v44, v43);
      v46 = v65;
      DynamicTextAppearance.withCustomTextStyle(_:)();
      v47 = v66;
      v48 = *(v66 + 8);
      v49 = v42;
      v50 = v68;
      v48(v49, v68);
      sub_100007000(v72);
      v51 = v67;
      DynamicTextAppearance.withNumberOfLines(_:)();
      v48(v46, v50);
      v52._countAndFlagsBits = 77;
      v52._object = 0xE100000000000000;
      String.init(repeating:count:)(v52, v59);
      (*(v47 + 16))(v46, v51, v50);
      LabelPlaceholder.Options.init(rawValue:)();
      v53 = v69;
      LabelPlaceholder.init(_:with:where:)();
      v54 = v57;
      LabelPlaceholder.measure(toFit:with:)();

      (*(v70 + 8))(v53, v71);
      v48(v51, v50);
      v21 = v62;
      a4 = v63;
      v22 = v60;
    }

    dispatch thunk of MetadataRibbonItemView.truncationLegibilityThreshold.setter();
    dispatch thunk of MetadataRibbonItem.allowsTruncation.getter();
    result = dispatch thunk of MetadataRibbonItemView.allowsTruncation.setter();
    *a4 = v22;
    a4[1] = v21;
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

uint64_t sub_100045A48(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  v3 = sub_1004849E0(v2, 0);

  return v3 & 1;
}

void sub_100045AB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v2 - 8);
  v4 = v38 - v3;
  v5 = type metadata accessor for ImpressionMetrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      v13 = *&v10[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels];
      if (v13)
      {
        v44 = v8;
        v40 = v10;
        v14 = *&v10[OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemViews];
        v15 = *(v14 + 16);

        v49 = v15;
        if (v15)
        {
          v16 = 0;
          v17 = v13 & 0xFFFFFFFFFFFFFF8;
          if (v13 >= 0)
          {
            v18 = v13 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v18 = v13;
          }

          v38[1] = v18;
          v45 = (v6 + 48);
          v46 = v13 & 0xFFFFFFFFFFFFFF8;
          v41 = (v6 + 8);
          v42 = (v6 + 32);
          v19 = 32;
          v47 = v13 & 0xC000000000000001;
          v48 = v13 >> 62;
          v39 = v4;
          v43 = v13;
          while (v16 < *(v14 + 16))
          {
            v20 = *(v14 + v19);
            if (v48)
            {
              if (v16 == _CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_24;
              }
            }

            else if (v16 == *(v17 + 16))
            {
              goto LABEL_24;
            }

            if (v47)
            {
              v37 = v20;
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v16 >= *(v17 + 16))
              {
                goto LABEL_29;
              }

              v21 = v20;
            }

            dispatch thunk of MetadataRibbonItem.impressionMetrics.getter();
            if ((*v45)(v4, 1, v5) == 1)
            {

              sub_10002B894(v4, &qword_100973D30, &unk_1007B1DC0);
            }

            else
            {
              v22 = v44;
              (*v42)(v44, v4, v5);
              if ([v20 isHidden])
              {
                (*v41)(v22, v5);
              }

              else
              {
                [v20 frame];
                v24 = v23;
                v26 = v25;
                v28 = v27;
                v30 = v29;
                v31 = v5;
                v32 = v14;
                v33 = v12;
                v34 = v40;
                v35 = [v40 superview];
                v36 = v34;
                v12 = v33;
                v14 = v32;
                v5 = v31;
                v4 = v39;
                [v36 convertRect:v35 toView:{v24, v26, v28, v30}];

                ImpressionsCalculator.addElement(_:at:)();

                (*v41)(v22, v5);
              }
            }

            ++v16;
            v19 += 16;
            v17 = v46;
            if (v49 == v16)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
        }

        else
        {
LABEL_24:
        }
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

uint64_t type metadata accessor for SearchTagsRibbonView(uint64_t a1)
{
  result = qword_100970628;
  if (!qword_100970628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004601C(uint64_t a1)
{
  result = type metadata accessor for SearchTagsRibbonViewLayout.Metrics();
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

double sub_1000460E4()
{
  swift_beginAccess();

  return result;
}

double sub_10004612C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1000461E4()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_100046240(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

void (*sub_100046300(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return sub_100046448;
}

uint64_t sub_1000463A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  return NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
}

uint64_t sub_1000463F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)();
}

uint64_t sub_10004645C(void *a1)
{
  sub_10002A400(a1, a1[3]);
  v2 = UIMutableTraits.preferredContentSizeCategory.getter();
  if (qword_10096CE78 != -1)
  {
    swift_once();
  }

  v3 = qword_1009705F0;
  if (static UIContentSizeCategory.< infix(_:_:)())
  {
    v3;
  }

  sub_100047650(a1, a1[3]);
  return UIMutableTraits.preferredContentSizeCategory.setter();
}

uint64_t sub_100046528(unint64_t a1, int a2, double a3, double a4)
{
  v104 = a2;
  v5 = type metadata accessor for SearchTagsRibbonViewLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v103 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchTagsRibbonViewLayout();
  v106 = *(v7 - 8);
  __chkstk_darwin(v7);
  v105 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for LabelPlaceholder();
  v9 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for DynamicTextAppearance();
  v11 = *(v123 - 8);
  __chkstk_darwin(v123);
  v13 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v122 = &v97 - v15;
  __chkstk_darwin(v16);
  v121 = &v97 - v17;
  v135 = sub_10002849C(&qword_10096FC60, &unk_1007B12A0);
  v120 = *(v135 - 1);
  __chkstk_darwin(v135);
  v133 = (&v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v119 = &v97 - v20;
  __chkstk_darwin(v21);
  v136 = &v97 - v22;
  v127 = type metadata accessor for MetadataRibbonItemViewType();
  v23 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetadataRibbonItem();
  v128 = a1;
  result = Array.isNotEmpty.getter();
  if (result)
  {
    v118 = UITraitCollection.modifyingTraits(_:)();
    if (v128 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v102 = v7;
    if (result)
    {
      if (result >= 1)
      {
        v26 = 0;
        v116 = v128 & 0xC000000000000001;
        v115 = (v23 + 88);
        v98 = (v23 + 8);
        v113 = (v11 + 8);
        v112 = (v11 + 16);
        v111 = (v9 + 8);
        v27 = _swiftEmptyArrayStorage;
        v114 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v109 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v108 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v107 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v101 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v100 = enum case for MetadataRibbonItemViewType.divider(_:);
        v99 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v110 = v13;
        v117 = result;
        while (1)
        {
          if (v116)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v28 = *(v128 + 8 * v26 + 32);
          }

          v29 = v126;
          MetadataRibbonItem.viewContainerType.getter();
          v30 = (*v115)(v29, v127);
          v131 = v27;
          v132 = v26;
          if (v30 == v114)
          {
            break;
          }

          if (v30 == v109)
          {
            v31 = type metadata accessor for MetadataRibbonEditorsChoiceView(0);
            v32 = type metadata accessor for MetadataRibbonEditorsChoiceView;
            v33 = &unk_1007C1128;
            v34 = &unk_100972E90;
            goto LABEL_24;
          }

          if (v30 == v108)
          {
            v31 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
            v32 = type metadata accessor for MetadataRibbonIconWithLabelView;
            v33 = &unk_1007B7A08;
            v34 = &unk_100970648;
            goto LABEL_24;
          }

          if (v30 == v107)
          {
            v31 = type metadata accessor for MetadataRibbonStarRatingView(0);
            v32 = type metadata accessor for MetadataRibbonStarRatingView;
            v33 = &unk_1007D8798;
            v34 = &unk_100972EA0;
            goto LABEL_24;
          }

          if (v30 == v101)
          {
            v31 = type metadata accessor for MetadataRibbonTagView(0);
            v32 = type metadata accessor for MetadataRibbonTagView;
            v33 = &unk_1007BFD50;
            v34 = &unk_100970640;
            goto LABEL_24;
          }

          if (v30 == v100)
          {
            v31 = type metadata accessor for MetadataRibbonBarView(0);
            v32 = type metadata accessor for MetadataRibbonBarView;
            v33 = &unk_1007CB2D0;
            v34 = &unk_100972E80;
            goto LABEL_24;
          }

          if (v30 == v99)
          {
            v31 = type metadata accessor for MetadataRibbonHighlightedTextView(0);
            v32 = type metadata accessor for MetadataRibbonHighlightedTextView;
            v33 = &unk_1007BFA80;
            v34 = &unk_100970638;
            goto LABEL_24;
          }

          (*v98)(v126, v127);
LABEL_37:
          if (v117 == ++v26)
          {
            goto LABEL_41;
          }
        }

        v31 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView(0);
        v32 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
        v33 = &unk_1007B0FD8;
        v34 = &unk_100970650;
LABEL_24:
        v35 = sub_100047608(v34, v32, v33);
        v36 = swift_allocObject();
        v36[2] = v31;
        v36[3] = v35;
        v36[4] = v28;
        v37 = type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();

        v38 = LayoutViewPlaceholder.init(measureWith:)();
        v39 = v136;
        v40 = v135[20];
        MetadataRibbonItem.id.getter();
        *(v39 + 64) = v37;
        *(v39 + 72) = &protocol witness table for LayoutViewPlaceholder;
        *(v39 + 40) = v38;
        *(v39 + 80) = dispatch thunk of static MetadataRibbonItemView.shouldForceIntrinsicSizeDuringLayout.getter() & 1;
        MetadataRibbonItem.itemType.getter();
        v41 = type metadata accessor for MetadataRibbonItemType();
        (*(*(v41 - 8) + 56))(v39 + v40, 0, 1, v41);
        v42 = dispatch thunk of MetadataRibbonItem.maxCharacterCount.getter();
        v44 = v43;
        v45 = 0;
        v46 = 0;
        v134 = v28;
        if ((v43 & 1) == 0)
        {
          v47 = v42;
          DynamicTextAppearance.init()();
          static CustomTextStyle<>.metadataRibbon.getter();
          if (qword_10096EE50 != -1)
          {
            swift_once();
          }

          v48 = type metadata accessor for MetadataRibbonTextStyle();
          v49 = sub_1000056A8(v48, qword_1009D36F8);
          v138 = v48;
          v139 = sub_100047608(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
          v50 = sub_1000056E0(&v137);
          (*(*(v48 - 8) + 16))(v50, v49, v48);
          v51 = v122;
          DynamicTextAppearance.withCustomTextStyle(_:)();
          v52 = *v113;
          v53 = v123;
          (*v113)(v13, v123);
          sub_100007000(&v137);
          v54 = v121;
          DynamicTextAppearance.withNumberOfLines(_:)();
          v52(v51, v53);
          v55._countAndFlagsBits = 77;
          v55._object = 0xE100000000000000;
          String.init(repeating:count:)(v55, v47);
          (*v112)(v51, v54, v53);
          LabelPlaceholder.Options.init(rawValue:)();
          v56 = v124;
          LabelPlaceholder.init(_:with:where:)();
          LabelPlaceholder.measure(toFit:with:)();
          v46 = v57;
          (*v111)(v56, v125);
          v52(v54, v53);
        }

        v58 = v136 + v135[24];
        *v58 = v46;
        *(v58 + 8) = v44 & 1;
        v59 = dispatch thunk of MetadataRibbonItem.truncationLegibilityCharacterCountThreshold.getter();
        v61 = v60;
        if ((v60 & 1) == 0)
        {
          v62 = v59;
          DynamicTextAppearance.init()();
          static CustomTextStyle<>.metadataRibbon.getter();
          if (qword_10096EE50 != -1)
          {
            swift_once();
          }

          v63 = type metadata accessor for MetadataRibbonTextStyle();
          v64 = sub_1000056A8(v63, qword_1009D36F8);
          v138 = v63;
          v139 = sub_100047608(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
          v65 = sub_1000056E0(&v137);
          (*(*(v63 - 8) + 16))(v65, v64, v63);
          v66 = v122;
          DynamicTextAppearance.withCustomTextStyle(_:)();
          v67 = *v113;
          v68 = v123;
          (*v113)(v13, v123);
          sub_100007000(&v137);
          v69 = v121;
          DynamicTextAppearance.withNumberOfLines(_:)();
          v67(v66, v68);
          v70._countAndFlagsBits = 77;
          v70._object = 0xE100000000000000;
          String.init(repeating:count:)(v70, v62);
          (*v112)(v66, v69, v68);
          LabelPlaceholder.Options.init(rawValue:)();
          v71 = v124;
          LabelPlaceholder.init(_:with:where:)();
          LabelPlaceholder.measure(toFit:with:)();
          v45 = v72;
          (*v111)(v71, v125);
          v67(v69, v68);
        }

        v73 = v135;
        v74 = v136;
        v75 = v136 + v135[28];
        v76 = v135[32];
        *v75 = v45;
        *(v75 + 8) = v61 & 1;
        *(v74 + v76) = dispatch thunk of MetadataRibbonItem.allowsTruncation.getter();
        v77 = v119;
        sub_100047598(v74, v119);
        v78 = *(v77 + 80);
        v79 = v73[20];
        v80 = v73[24];
        v130 = *(v77 + v80);
        v129 = *(v77 + v80 + 8);
        v81 = v73[28];
        v82 = *(v77 + v81);
        v83 = *(v77 + v81 + 8);
        v84 = v73[32];
        v85 = *(v77 + v84);
        v86 = v133;
        v87 = v133 + v80;
        v88 = v133 + v81;
        v89 = *(v77 + 16);
        *v133 = *v77;
        v86[1] = v89;
        *(v86 + 4) = *(v77 + 32);
        sub_100005A38((v77 + 40), v86 + 40);
        *(v86 + 80) = v78;
        sub_1000476A0(v77 + v79, v86 + v79, &qword_10096FB98, &unk_1007B10B0);
        *v87 = v130;
        v87[8] = v129;
        *v88 = v82;
        v88[8] = v83;
        *(v86 + v84) = v85;
        v27 = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1000333D0(0, v27[2] + 1, 1, v27);
        }

        v26 = v132;
        v91 = v27[2];
        v90 = v27[3];
        v13 = v110;
        if (v91 >= v90 >> 1)
        {
          v27 = sub_1000333D0((v90 > 1), v91 + 1, 1, v27);
        }

        v27[2] = v91 + 1;
        sub_1000476A0(v133, v27 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v91, &qword_10096FC60, &unk_1007B12A0);
        sub_10002B894(v136, &qword_10096FC60, &unk_1007B12A0);
        goto LABEL_37;
      }

      __break(1u);
    }

    else
    {
LABEL_41:
      static SearchTagsRibbonViewLayout.Metrics.standard.getter();
      v92 = v105;
      SearchTagsRibbonViewLayout.init(searchTagsRibbonItemLayoutContexts:metrics:shouldEvenlyDistribute:)();
      type metadata accessor for TraitEnvironmentPlaceholder();
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_1007B0B70;
      v94 = v118;
      *(v93 + 32) = v118;
      v95 = v94;
      v96 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
      SearchTagsRibbonViewLayout.measurements(fitting:in:)();

      return (*(v106 + 8))(v92, v102);
    }
  }

  return result;
}

uint64_t sub_100047598(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10096FC60, &unk_1007B12A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100047608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100047650(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000476A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10002849C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_100047708()
{
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemViews) = _swiftEmptyArrayStorage;
  static SearchTagsRibbonViewLayout.Metrics.standard.getter();
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_shouldEvenlyDistribute) = 2;
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_isInsideSearchAd) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_impressionsCalculator) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_1000477D0(uint64_t a1, int a2)
{
  v5 = type metadata accessor for AspectRatio();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShareSheetData.Metadata();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = _swiftEmptyArrayStorage;
  ShareSheetData.metadata.getter();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 != enum case for ShareSheetData.Metadata.article(_:))
  {
    LODWORD(v110) = a2;
    v45 = a1;
    if (v13 == enum case for ShareSheetData.Metadata.product(_:))
    {
      v111 = v6;
      v112 = v5;
      (*(v10 + 96))(v12, v9);
      v46 = *v12;
      sub_10002849C(&unk_100993620, qword_1007BB0F0);
      inited = swift_initStackObject();
      v107 = xmmword_1007B10D0;
      *(inited + 16) = xmmword_1007B10D0;
      v48 = UIActivityTypeSaveToNotes;
      *(inited + 32) = UIActivityTypeSaveToNotes;
      v49 = v48;
      sub_1000836E4(inited);
      v51 = v50;
      swift_setDeallocating();
      sub_100048924(inited + 32);
      v52 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

      v53 = sub_100714990(v2, a1, v51);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v108 = v53;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v109 = v46;
      v54 = ShareSheetProductMetadata.icon.getter();
      v55 = swift_initStackObject();
      *(v55 + 16) = v107;
      *(v55 + 32) = v49;
      v56 = v55 + 32;
      sub_1000836E4(v55);
      v58 = v57;
      swift_setDeallocating();
      sub_100048924(v56);
      v59 = type metadata accessor for ArtworkActivityItemProvider();
      v60 = objc_allocWithZone(v59);
      v61 = OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_imageBox;
      v118 = 0;
      sub_10002849C(&qword_100970660, &unk_1007B1DF0);
      swift_allocObject();
      *&v60[v61] = Box.init(value:)();
      *&v60[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artwork] = v54;
      *&v60[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkLoader] = v45;

      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      AspectRatio.isSquare.getter();
      (*(v111 + 8))(v8, v112);
      Artwork.size.getter();
      CGSize.fitting(_:mode:)();
      *&v60[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)();
      if (qword_10096E4E0 != -1)
      {
        swift_once();
      }

      v62 = qword_100986E48;

      sub_100048834(v58, v62);
      *&v60[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_excludedActivityTypes] = v63;
      v60[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = v110 & 1;
      v64 = [objc_allocWithZone(UIImage) init];
      v116.receiver = v60;
      v116.super_class = v59;
      v65 = objc_msgSendSuper2(&v116, "initWithPlaceholderItem:", v64);

      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1007B0B70;
      *(v66 + 32) = *&v65[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkConfig];
      v67 = v65;

      ArtworkLoader.prefetchArtwork(using:)(v66);

      v68 = v67;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v28 = v120;
      v69 = ShareSheetProductMetadata.notesMetadata.getter();
      v70 = v108;
      if (!v69)
      {

        return v28;
      }

      v71 = v69;
      v72 = type metadata accessor for NotesMetadataActivityItemProvider();
      v73 = objc_allocWithZone(v72);
      *&v73[OBJC_IVAR____TtC8AppStore33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata] = xmmword_1007B1DE0;
      *&v73[OBJC_IVAR____TtC8AppStore33NotesMetadataActivityItemProvider_metadata] = v71;

      v74 = String._bridgeToObjectiveC()();
      v115.receiver = v73;
      v115.super_class = v72;
      v75 = objc_msgSendSuper2(&v115, "initWithPlaceholderItem:", v74);

      v76 = v75;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_38;
    }

    if (v13 != enum case for ShareSheetData.Metadata.appEvent(_:))
    {
      (*(v10 + 8))(v12, v9);
      return _swiftEmptyArrayStorage;
    }

    v112 = v5;
    (*(v10 + 96))(v12, v9);
    v77 = *v12;
    v78 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

    v79 = sub_100714990(v2, a1, _swiftEmptySetSingleton);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v110 = v79;
    v111 = v6;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v80 = ShareSheetAppEventMetadata.text.getter();
    v82 = v81;
    v83 = type metadata accessor for TextActivityItemProvider();
    v84 = objc_allocWithZone(v83);
    v85 = &v84[OBJC_IVAR____TtC8AppStore24TextActivityItemProvider_text];
    *v85 = v80;
    v85[1] = v82;
    v86 = qword_10096D1A0;

    if (v86 != -1)
    {
      swift_once();
    }

    v87 = qword_1009766E8;

    sub_100048834(_swiftEmptySetSingleton, v87);
    *&v84[OBJC_IVAR____TtC8AppStore24TextActivityItemProvider_excludedActivityTypes] = v88;
    v89 = String._bridgeToObjectiveC()();

    v119.receiver = v84;
    v119.super_class = v83;
    v90 = objc_msgSendSuper2(&v119, "initWithPlaceholderItem:", v89);

    v27 = v90;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v28 = v120;
    v91 = ShareSheetAppEventMetadata.artwork.getter();
    if (v91)
    {
      v92 = v91;
      v109 = v77;
      sub_10002849C(&unk_100993620, qword_1007BB0F0);
      v93 = swift_initStackObject();
      *(v93 + 16) = xmmword_1007B10D0;
      v94 = UIActivityTypeSaveToNotes;
      *(v93 + 32) = UIActivityTypeSaveToNotes;
      v95 = v94;
      sub_1000836E4(v93);
      v108 = v96;
      swift_setDeallocating();
      sub_100048924(v93 + 32);
      v97 = type metadata accessor for ArtworkActivityItemProvider();
      v98 = objc_allocWithZone(v97);
      v99 = OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_imageBox;
      v118 = 0;
      sub_10002849C(&qword_100970660, &unk_1007B1DF0);
      swift_allocObject();

      *&v98[v99] = Box.init(value:)();
      *&v98[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artwork] = v92;
      *&v98[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkLoader] = a1;

      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      AspectRatio.isSquare.getter();
      (*(v111 + 8))(v8, v112);
      Artwork.size.getter();
      CGSize.fitting(_:mode:)();
      *&v98[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)();
      if (qword_10096E4E0 != -1)
      {
        swift_once();
      }

      v100 = qword_100986E48;

      sub_100048834(v108, v100);
      *&v98[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_excludedActivityTypes] = v101;
      v98[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
      v102 = [objc_allocWithZone(UIImage) init];
      v117.receiver = v98;
      v117.super_class = v97;
      v103 = objc_msgSendSuper2(&v117, "initWithPlaceholderItem:", v102);

      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_1007B0B70;
      *(v104 + 32) = *&v103[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkConfig];
      v105 = v103;

      ArtworkLoader.prefetchArtwork(using:)(v104);

      v44 = v105;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      goto LABEL_37;
    }

LABEL_39:

    return v28;
  }

  v112 = v5;
  (*(v10 + 96))(v12, v9);
  v14 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

  v15 = sub_100714990(v2, a1, _swiftEmptySetSingleton);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v110 = v15;
  v111 = v6;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v16 = ShareSheetArticleMetadata.text.getter();
  v18 = v17;
  v19 = type metadata accessor for TextActivityItemProvider();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC8AppStore24TextActivityItemProvider_text];
  *v21 = v16;
  v21[1] = v18;
  v22 = qword_10096D1A0;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_1009766E8;

  sub_100048834(_swiftEmptySetSingleton, v23);
  *&v20[OBJC_IVAR____TtC8AppStore24TextActivityItemProvider_excludedActivityTypes] = v24;
  v25 = String._bridgeToObjectiveC()();

  v114.receiver = v20;
  v114.super_class = v19;
  v26 = objc_msgSendSuper2(&v114, "initWithPlaceholderItem:", v25);

  v27 = v26;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v28 = v120;
  v29 = ShareSheetArticleMetadata.artwork.getter();
  if (!v29)
  {
    goto LABEL_39;
  }

  v30 = v29;
  sub_10002849C(&unk_100993620, qword_1007BB0F0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1007B10D0;
  v32 = UIActivityTypeSaveToNotes;
  *(v31 + 32) = UIActivityTypeSaveToNotes;
  v33 = v32;
  sub_1000836E4(v31);
  v109 = v34;
  swift_setDeallocating();
  sub_100048924(v31 + 32);
  v35 = type metadata accessor for ArtworkActivityItemProvider();
  v36 = objc_allocWithZone(v35);
  v37 = OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_imageBox;
  v118 = 0;
  sub_10002849C(&qword_100970660, &unk_1007B1DF0);
  swift_allocObject();

  *&v36[v37] = Box.init(value:)();
  *&v36[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artwork] = v30;
  *&v36[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkLoader] = a1;

  Artwork.size.getter();
  AspectRatio.init(_:_:)();
  AspectRatio.isSquare.getter();
  (*(v111 + 8))(v8, v112);
  Artwork.size.getter();
  CGSize.fitting(_:mode:)();
  *&v36[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkConfig] = Artwork.config(_:mode:prefersLayeredImage:)();
  if (qword_10096E4E0 != -1)
  {
    swift_once();
  }

  v38 = qword_100986E48;

  sub_100048834(v109, v38);
  *&v36[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_excludedActivityTypes] = v39;
  v36[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
  v40 = [objc_allocWithZone(UIImage) init];
  v113.receiver = v36;
  v113.super_class = v35;
  v41 = objc_msgSendSuper2(&v113, "initWithPlaceholderItem:", v40);

  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1007B0B70;
  *(v42 + 32) = *&v41[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkConfig];
  v43 = v41;

  ArtworkLoader.prefetchArtwork(using:)(v42);

  v44 = v43;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

LABEL_37:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_38:

  return v120;
}

void sub_100048834(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_1000818C0(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100048924(uint64_t a1)
{
  type metadata accessor for ActivityType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000489D0(uint64_t a1, uint64_t a2)
{
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v3 = [v2 collectionView];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for SeparatorSupplementaryView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = String._bridgeToObjectiveC()();
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v7 = String._bridgeToObjectiveC()();

    [v4 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v6 withReuseIdentifier:v7];
  }
}

void sub_100048AB4(void *a1)
{
  v2 = a1;
  sub_1000489D0(v2, v1);
}

double sub_100048AFC()
{
  v1 = [v0 traitCollection];
  static Separator.thickness(compatibleWith:)();
  v3 = v2;

  return v3;
}

void sub_100048B4C(uint64_t a1)
{
  v3 = sub_10002849C(&qword_100970D40, &qword_1007B1FC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Uber.Style();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (dispatch thunk of BaseGenericPagePresenter.uber.getter())
  {
    (*(v7 + 104))(v9, enum case for Uber.Style.above(_:), v6);
    v10 = type metadata accessor for Uber.AssetType();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    type metadata accessor for Uber();
    swift_allocObject();
    swift_retain_n();
    v11 = Uber.init(style:assetType:artwork:compactArtwork:video:compactVideo:iconArtwork:title:)();
    v12 = *&v1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber];
    *&v1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber] = v11;

    sub_1001868CC(v12);
  }

  v13 = [v1 collectionView];
  sub_100450038(a1, v13);

  sub_100049E9C();
}

double sub_100048D94(void *a1)
{
  v1 = a1;
  sub_100048DF0(v1, v2);
  v4 = v3;

  return v4;
}

id sub_100048DF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  [v2 pageContainerSize];
  v6 = v5;
  v7 = [v2 traitCollection];
  v8 = UITraitCollection.isRegularPad.getter();

  if ((v8 & 1) != 0 && v6 > 672.0)
  {
    return sub_100041CD0();
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "pageMarginInsets");
}

id sub_100048ED0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (a2 == 0xD000000000000039 && 0x80000001007FB9D0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v9 = String._bridgeToObjectiveC()();
    type metadata accessor for SeparatorSupplementaryView(0);
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v10 = String._bridgeToObjectiveC()();

    v11.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v12 = [a1 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:v11.super.isa];
  }

  else
  {
    v13 = String._bridgeToObjectiveC()();
    v11.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15.receiver = v4;
    v15.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v15, "collectionView:viewForSupplementaryElementOfKind:atIndexPath:", a1, v13, v11.super.isa);
  }

  return v12;
}

id sub_100049038(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  v16 = sub_100048ED0(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

void sub_100049178(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34[1] = a5;
  v35 = a1;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for ComponentSeparator.Position();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v36 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ComponentSeparator();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v34[0] = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v34 - v17;
  if (a3 == 0xD000000000000039 && 0x80000001007FB9D0 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (type metadata accessor for SeparatorSupplementaryView(0), (v19 = swift_dynamicCastClass()) != 0))
  {
    v20 = v19;
    (*(v11 + 104))(v36, enum case for ComponentSeparator.Position.top(_:), v10);
    v35 = a2;
    [v6 pageContainerSize];
    v22 = v21;
    v23 = [v6 traitCollection];
    v24 = UITraitCollection.isRegularPad.getter();

    if ((v24 & 1) != 0 && v22 > 672.0)
    {
      sub_100041CD0();
    }

    else
    {
      v39.receiver = v6;
      v39.super_class = ObjectType;
      objc_msgSendSuper2(&v39, "pageMarginInsets");
    }

    [v6 pageContainerSize];
    v28 = v27;
    v29 = [v6 traitCollection];
    v30 = UITraitCollection.isRegularPad.getter();

    if ((v30 & 1) != 0 && v28 > 672.0)
    {
      sub_100041CD0();
    }

    else
    {
      v38.receiver = v6;
      v38.super_class = ObjectType;
      objc_msgSendSuper2(&v38, "pageMarginInsets");
    }

    ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
    v31 = v34[0];
    (*(v14 + 16))(v34[0], v18, v13);
    v32 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_separator;
    swift_beginAccess();
    (*(v14 + 24))(v20 + v32, v31, v13);
    swift_endAccess();
    sub_100503F40();

    v33 = *(v14 + 8);
    v33(v31, v13);
    v33(v18, v13);
  }

  else
  {
    v25 = String._bridgeToObjectiveC()();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v40.receiver = v6;
    v40.super_class = ObjectType;
    objc_msgSendSuper2(&v40, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", v35, a2, v25, isa);
  }
}

uint64_t sub_1000495BC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a3;
  v17 = a4;
  v18 = a1;
  sub_100049178(v16, v17, v13, v15, v12);

  return (*(v10 + 8))(v12, v9);
}

uint64_t type metadata accessor for VersionHistoryViewController(uint64_t a1)
{
  result = qword_100970690;
  if (!qword_100970690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100049784()
{
  v1 = type metadata accessor for ShelfBackground();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v5);
  v8 = (&v34 - v7);
  v9 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v10 = *(v0 + qword_1009728F0);
  v11 = (*((swift_isaMask & *v0) + 0x4D8))(v6);
  v12 = sub_100055A98(v11);
  if (v12)
  {
    v13 = v12;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v9 = v35;
  }

  v14 = sub_1000555E8(v0, v10);
  if (v14)
  {
    v15 = v14;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v9 = v35;
  }

  type metadata accessor for GenericPagePresenter();
  sub_10005623C(&qword_100970C98, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() < 1)
  {
    goto LABEL_14;
  }

  dispatch thunk of ShelfPresenter.background(for:)();
  if ((*(v2 + 88))(v8, v1) != enum case for ShelfBackground.color(_:))
  {
    (*(v2 + 8))(v8, v1);
    goto LABEL_14;
  }

  (*(v2 + 96))(v8, v1);

  v16 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
  v17 = type metadata accessor for ShelfBackgroundStyle();
  (*(*(v17 - 8) + 8))(v8 + v16, v17);
  v18 = objc_opt_self();
  v19 = [v18 fractionalWidthDimension:1.0];
  v20 = [v18 absoluteDimension:2000.0];
  v21 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v20];

  v22 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v21 elementKind:v22 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v23 setExtendsBoundary:0];
  v8 = v23;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v9 = v35;
LABEL_14:
    if (dispatch thunk of ShelfPresenter.sectionCount.getter() < 1)
    {
      break;
    }

    if (!__OFSUB__(dispatch thunk of ShelfPresenter.sectionCount.getter(), 1))
    {
      dispatch thunk of ShelfPresenter.background(for:)();
      if ((*(v2 + 88))(v4, v1) == enum case for ShelfBackground.color(_:))
      {
        (*(v2 + 96))(v4, v1);

        v24 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
        v25 = type metadata accessor for ShelfBackgroundStyle();
        (*(*(v25 - 8) + 8))(v4 + v24, v25);
        v26 = objc_opt_self();
        v27 = [v26 fractionalWidthDimension:1.0];
        v28 = [v26 absoluteDimension:2000.0];
        v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

        v30 = String._bridgeToObjectiveC()();
        v31 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v29 elementKind:v30 alignment:5 absoluteOffset:{0.0, 2000.0}];

        [v31 setExtendsBoundary:0];
        v32 = v31;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        return v35;
      }

      else
      {
        (*(v2 + 8))(v4, v1);
      }

      return v9;
    }

    __break(1u);
LABEL_23:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return v9;
}

void sub_100049E9C()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v9 = [v1 collectionViewLayout];

    if (v9)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = v3;
        v5 = v9;
        v6 = [v4 configuration];
        sub_100005744(0, &qword_100970CA8, UICollectionViewCompositionalLayoutConfiguration_ptr);
        v7 = NSCopying.makeCopy()();

        sub_100049784();
        sub_100005744(0, &qword_10097F460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v7 setBoundarySupplementaryItems:isa];

        [v4 setConfiguration:v7];
      }
    }
  }
}

void sub_10004A020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = type metadata accessor for IndexPath();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IndexSet();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_100972A20, &unk_1007B1EC0);
  *&v13 = __chkstk_darwin(v12 - 8).n128_u64[0];
  v54 = &v46 - v14;
  v15 = [v3 collectionView];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 collectionViewLayout];

    [v17 invalidateLayout];
  }

  v53 = *&v4[qword_1009728F0];
  v18 = [v4 collectionView];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 collectionViewLayout];

    if (v20)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        goto LABEL_8;
      }
    }

    v18 = 0;
  }

LABEL_8:
  v52 = v18;
  v21 = *(a1 + 16);
  v22 = _swiftEmptyArrayStorage;
  if (v21)
  {
    v47 = v11;
    v48 = a2;
    v49 = a3;
    v50 = v4;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100144228(0, v21, 0);
    v22 = aBlock[0];
    v23 = v57 + 16;
    v57 = *(v57 + 16);
    v24 = *(v23 + 64);
    v51 = a1;
    v25 = a1 + ((v24 + 32) & ~v24);
    v26 = *(v23 + 56);
    v27 = (v23 - 8);
    do
    {
      v28 = v58;
      v29 = v59;
      (v57)(v58, v25, v59);
      v30 = IndexPath.section.getter();
      (*v27)(v28, v29);
      aBlock[0] = v22;
      v32 = v22[2];
      v31 = v22[3];
      if (v32 >= v31 >> 1)
      {
        sub_100144228((v31 > 1), v32 + 1, 1);
        v22 = aBlock[0];
      }

      v22[2] = v32 + 1;
      v22[v32 + 4] = v30;
      v25 += v26;
      --v21;
    }

    while (v21);
    v4 = v50;
    a1 = v51;
    a2 = v48;
    a3 = v49;
    v11 = v47;
  }

  sub_10005623C(&qword_1009729B0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v33 = v56;
  dispatch thunk of SetAlgebra.init()();
  v34 = v22[2];
  v35 = v11;
  if (v34)
  {
    v36 = v22 + 4;
    do
    {
      v37 = *v36++;
      aBlock[6] = v37;
      dispatch thunk of SetAlgebra.insert(_:)();
      --v34;
    }

    while (v34);
  }

  v39 = v54;
  v38 = v55;
  (*(v55 + 32))(v54, v35, v33);
  (*(v38 + 56))(v39, 0, 1, v33);
  sub_100055BB8(v39);

  sub_10002B894(v39, &unk_100972A20, &unk_1007B1EC0);
  v40 = [v4 collectionView];
  if (v40)
  {
    v41 = v40;
    v42 = swift_allocObject();
    v42[2] = a2;
    v42[3] = a3;
    v42[4] = v4;
    v42[5] = a1;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_100055FC0;
    *(v43 + 24) = v42;
    aBlock[4] = sub_100055FCC;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000489A8;
    aBlock[3] = &unk_1008B1B18;
    v44 = _Block_copy(aBlock);
    v45 = v4;

    [v41 performBatchUpdates:v44 completion:0];
    _Block_release(v44);
  }
}

uint64_t sub_10004A57C(uint64_t a1)
{
  if (qword_10096D118 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OSLogger();
  sub_1000056A8(v2, qword_1009CE200);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1E00;
  v8 = sub_10002849C(&qword_100970CA0, &unk_1007B1EF8);
  v7[0] = v1;
  v3 = v1;
  static LogMessage.safe(_:)();
  sub_10002B894(v7, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v8 = v6;
  v4 = sub_1000056E0(v7);
  (*(*(v6 - 8) + 16))(v4);
  static LogMessage.sensitive(_:)();
  sub_10002B894(v7, &unk_1009711D0, &unk_1007B1A10);
  Logger.error(_:)();
}

void sub_10004A7AC()
{
  v1 = *&v0[qword_1009728F0];

  *(v1 + 80) = 1;

  sub_100049E9C();
}

void sub_10004A80C()
{
  v1 = [v0 collectionView];
  sub_10004B018(v1);

  sub_100049E9C();
}

uint64_t sub_10004A954(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for ImpressionMetrics();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_10002B894(a1, &qword_100973D30, &unk_1007B1DC0);
    v14 = sub_1003D7340(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10005383C();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1000504FC(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_10002B894(v8, &qword_100973D30, &unk_1007B1DC0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_100051640(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_10004ABA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_10005192C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1000072B8(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_100053F00();
        v16 = v18;
      }

      result = sub_100050A08(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_10004ACAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100056164(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_100051CAC(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_10002B894(a1, &unk_1009711D0, &unk_1007B1A10);
    sub_1000DAD74(a2, a3, v9);

    return sub_10002B894(v9, &unk_1009711D0, &unk_1007B1A10);
  }

  return result;
}

uint64_t sub_10004AD7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10005280C(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for BadgeType();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1003D79C8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10005536C(&type metadata accessor for BadgeType, &unk_100982850, &unk_1007B1F50);
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for BadgeType();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100051048(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for BadgeType();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

void sub_10004AF60(void (*a1)(void), uint64_t a2, void *a3)
{
  a1();
  v4 = [a3 collectionView];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for IndexPath();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v5 deleteItemsAtIndexPaths:isa];
  }
}

void sub_10004B018(void *a1)
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  *(v1 + 80) = 0;
  if (a1)
  {
    v28 = a1;
    v13 = [v28 numberOfSections];
    type metadata accessor for GenericPagePresenter();
    sub_10005623C(&qword_100970C98, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
    v14 = dispatch thunk of ShelfPresenter.sectionCount.getter();
    if (v13 < v14)
    {
      v15 = v14;
      if (__OFSUB__(v14, v13))
      {
        __break(1u);
        goto LABEL_13;
      }

      if (v14 - v13 >= 1)
      {
        v27 = v4;
        sub_10005623C(&qword_1009729B0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
        dispatch thunk of SetAlgebra.init()();
        do
        {
          aBlock[6] = v13;
          dispatch thunk of SetAlgebra.insert(_:)();
          ++v13;
        }

        while (v15 != v13);
        v16 = v27;
        v17 = *(v27 + 32);
        v17(v12, v9, v3);
        v18 = objc_opt_self();
        (*(v16 + 16))(v6, v12, v3);
        v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v28;
        v17((v20 + v19), v6, v3);
        v21 = swift_allocObject();
        *(v21 + 16) = sub_100056100;
        *(v21 + 24) = v20;
        aBlock[4] = sub_100056288;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000489A8;
        aBlock[3] = &unk_1008B1B90;
        v22 = _Block_copy(aBlock);
        v23 = v28;

        [v18 performWithoutAnimation:v22];
        _Block_release(v22);

        (*(v16 + 8))(v12, v3);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    v25 = v28;
  }
}

uint64_t sub_10004B414()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for ImpressionMetrics();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = *(v0 + 16);
  v12 = type metadata accessor for GenericPagePresenter();
  v44 = sub_10005623C(&qword_100970C98, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  result = dispatch thunk of ShelfPresenter.sectionCount.getter();
  if (result < 0)
  {
    goto LABEL_21;
  }

  if (result)
  {
    v14 = 0;
    v42 = result;
    v43 = (v40 + 48);
    v41 = (v40 + 32);
    v38 = v4;
    v39 = (v40 + 16);
    v33 = v40 + 40;
    v34 = (v40 + 8);
    v36 = v11;
    v37 = v10;
    v35 = v12;
    do
    {
      dispatch thunk of ShelfPresenter.shelf(for:)();
      Shelf.impressionMetrics.getter();
      if ((*v43)(v4, 1, v5) == 1)
      {

        sub_10002B894(v4, &qword_100973D30, &unk_1007B1DC0);
      }

      else
      {
        v15 = *v41;
        (*v41)(v10, v4, v5);
        swift_beginAccess();
        v16 = v7;
        v17 = v5;
        (*v39)(v7, v10, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *(v1 + 56);
        v19 = v45;
        v20 = v1;
        *(v1 + 56) = 0x8000000000000000;
        v22 = sub_1003D7340(v14);
        v23 = v19[2];
        v24 = (v21 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v26 = v21;
        if (v19[3] >= v25)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10005383C();
          }
        }

        else
        {
          sub_10004D058(v25, isUniquelyReferenced_nonNull_native);
          v27 = sub_1003D7340(v14);
          if ((v26 & 1) != (v28 & 1))
          {
            goto LABEL_22;
          }

          v22 = v27;
        }

        v7 = v16;
        v29 = v45;
        if (v26)
        {
          v5 = v17;
          (*(v40 + 40))(v45[7] + *(v40 + 72) * v22, v16, v17);
        }

        else
        {
          v45[(v22 >> 6) + 8] |= 1 << v22;
          *(v29[6] + 8 * v22) = v14;
          v5 = v17;
          v15((v29[7] + *(v40 + 72) * v22), v16, v17);
          v30 = v29[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_20;
          }

          v29[2] = v32;
        }

        v1 = v20;
        *(v20 + 56) = v29;

        swift_endAccess();

        v10 = v37;
        (*v34)(v37, v5);
        v4 = v38;
      }

      ++v14;
      result = v42;
    }

    while (v42 != v14);
  }

  return result;
}

uint64_t sub_10004B848(uint64_t a1, uint64_t a2)
{
  v45 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v33[-v3];
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v4 - 8);
  v43 = &v33[-v5];
  v48 = type metadata accessor for ImpressionMetrics();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v39 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v38 = &v33[-v9];
  v10 = type metadata accessor for IndexSet.Index();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10002849C(&qword_100970C78, &qword_1007B1EE0);
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  IndexSet.makeIterator()();
  swift_beginAccess();
  type metadata accessor for IndexSet();
  sub_10005623C(&qword_100970C80, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v46 = (v11 + 8);
  v36 = v6 + 16;
  v35 = v6 + 32;
  v34 = (v6 + 8);
  v42 = (v6 + 56);
  v40 = v6;
  ++v41;
  v37 = v10;
  while (1)
  {
    v18 = v47;
    dispatch thunk of Collection.endIndex.getter();
    sub_10005623C(&qword_100970C88, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v46)(v18, v10);
    if (v19)
    {
      break;
    }

    v20 = dispatch thunk of Collection.subscript.read();
    v22 = *v21;
    v20(v49, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v23 = *(a2 + 56);
    if (*(v23 + 16))
    {
      v24 = sub_1003D7340(v22);
      if (v25)
      {
        v26 = v39;
        v27 = v40;
        v28 = *(v23 + 56) + *(v40 + 72) * v24;
        v29 = v48;
        (*(v40 + 16))(v39, v28, v48);
        v30 = *(v27 + 32);
        v31 = v38;
        v30(v38, v26, v29);
        if (*(a2 + 112))
        {

          ImpressionsCalculator.removeElement(_:)();
        }

        (*v34)(v31, v48);
        v10 = v37;
      }
    }

    v16 = v43;
    (*v42)(v43, 1, 1, v48);
    swift_beginAccess();
    sub_10004A954(v16, v22);
    swift_endAccess();
    v50 = v22;
    AnyHashable.init<A>(_:)();
    v17 = v44;
    StatePath.init(component:)();
    TransientStateStore.removeState(at:recursively:)();
    (*v41)(v17, v45);
  }

  return sub_10002B894(v15, &qword_100970C78, &qword_1007B1EE0);
}

uint64_t sub_10004BDE0(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v19 - v3;
  v23 = type metadata accessor for IndexSet.Index();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100970C78, &qword_1007B1EE0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  IndexSet.makeIterator()();
  type metadata accessor for IndexSet();
  sub_10005623C(&qword_100970C80, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v10 = (v4 + 8);
  for (i = (v2 + 8); ; (*i)(v17, v21))
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_10005623C(&qword_100970C88, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v12 = v23;
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v10)(v6, v12);
    if (v13)
    {
      break;
    }

    v14 = dispatch thunk of Collection.subscript.read();
    v16 = *v15;
    v14(v24, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v24[6] = v16;
    AnyHashable.init<A>(_:)();
    v17 = v20;
    StatePath.init(component:)();
    TransientStateStore.removeState(at:recursively:)();
  }

  return sub_10002B894(v9, &qword_100970C78, &qword_1007B1EE0);
}

void sub_10004C124(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10002849C(&unk_100982990, &qword_1007CA2D0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56) + 40 * v20;
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 32);
      v35 = *(v21 + 16);
      v36 = *v21;
      v24 = static Hasher._hash(seed:_:)();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v36;
      *(v16 + 16) = v35;
      *(v16 + 32) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v33)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_10004C3A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10002849C(&unk_100982750, &unk_1007B1F10);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_100056164(v22, v36);
      }

      else
      {
        sub_1000073E8(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_100056164(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_10004C678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AdamId();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10002849C(&qword_100970CD0, &qword_1007B1F38);
  v41 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_10005623C(&qword_100970CD8, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_10004CA38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10002849C(&qword_1009827B0, &qword_1007B1F08);
  v37 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 24 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(*(v5 + 56) + 8 * v20);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23);
      if (v24 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v24;
      }

      Hasher._combine(_:)(*&v26);
      v27 = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
}

void sub_10004CD10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Accessory(0);
  v43 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_10002849C(&qword_100970D18, &qword_1007B1F78);
  v44 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v8;
  v11 = v9;
  if (*(v8 + 16))
  {
    v41 = v3;
    v42 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = v9 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v43 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v44)
      {
        sub_1000561D8(v25, v7);
        v26 = *(v10 + 56);
        v27 = v7;
        v28 = *(v26 + 8 * v23);
      }

      else
      {
        sub_100056174(v25, v7);
        v29 = *(*(v10 + 56) + 8 * v23);
        v27 = v7;
        v28 = v29;
      }

      Hasher.init(_seed:)();
      v30 = v27;
      sub_1000C3AEC(v45);
      v31 = Hasher._finalize()();
      v32 = -1 << *(v11 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_1000561D8(v30, *(v11 + 48) + v24 * v19);
      *(*(v11 + 56) + 8 * v19) = v28;
      v7 = v30;
      ++*(v11 + 16);
      v10 = v42;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_10004D058(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = type metadata accessor for ImpressionMetrics();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10002849C(&qword_100970C90, &qword_1007B1EE8);
  v38 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
      }

      v26 = static Hasher._hash(seed:_:)();
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      (*v16)((*(v9 + 56) + v24 * v18), v39, v40);
      ++*(v9 + 16);
      v5 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_10004D3A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10002849C(a3, a4);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      v24 = static Hasher._hash(seed:_:)();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_10004D60C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10002849C(&qword_100970CB0, &qword_1007CA220);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_100056164(v24, v35);
      }

      else
      {
        sub_1000073E8(v24, v35);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_100056164(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_10004D8C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10002849C(&qword_100982810, &unk_1007CA1D0);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10004DB84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10002849C(&qword_100970CC8, &qword_1007B1F30);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10004DE24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AdPlacementType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10002849C(&qword_100970CC0, &unk_1007B1F20);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v43 = v8;
    v44 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v40)
      {
        (*v41)(v43, v25, v44);
        v45 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v37)(v43, v25, v44);
        v45 = *(*(v9 + 56) + 16 * v23);
      }

      sub_10005623C(&qword_100970CB8, &type metadata accessor for AdPlacementType, &protocol conformance descriptor for AdPlacementType);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v38;
        v9 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v38;
      v9 = v39;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v42 * v19), v43, v44);
      *(*(v11 + 56) + 16 * v19) = v45;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_10004E204(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10002849C(&unk_100982970, &unk_1007B1FB0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_10004E468(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10002849C(&qword_100970D30, &qword_1007B1FA8);
  v46 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v43 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v5;
    v17 = v15 & *(v9 + 64);
    v18 = (v14 + 63) >> 6;
    v44 = (v6 + 16);
    v45 = v6;
    v47 = (v6 + 32);
    v19 = v10 + 64;
    v49 = v16;
    v50 = v8;
    v20 = v6;
    while (v17)
    {
      v25 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v28 = v25 | (v12 << 6);
      v29 = *(v9 + 48);
      v48 = *(v20 + 72);
      v30 = v29 + v48 * v28;
      if (v46)
      {
        (*v47)(v50, v30, v49);
      }

      else
      {
        (*v44)(v50, v30, v49);
      }

      v31 = (*(v9 + 56) + 16 * v28);
      v33 = *v31;
      v32 = v31[1];
      sub_10005623C(&qword_100970D38, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v34 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v35 = -1 << *(v11 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v22 = v45;
        v23 = v50;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v19 + 8 * v37);
          if (v41 != -1)
          {
            v21 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v21 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v22 = v45;
      v23 = v50;
LABEL_7:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      (*v47)((*(v11 + 48) + v48 * v21), v23, v49);
      v24 = (*(v11 + 56) + 16 * v21);
      *v24 = v33;
      v24[1] = v32;
      ++*(v11 + 16);
      v20 = v22;
    }

    v26 = v12;
    while (1)
    {
      v12 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v18)
      {
        break;
      }

      v27 = v13[v12];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v17 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v42 = 1 << *(v9 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v13, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v42;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_10004E85C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10002849C(&qword_100970CE0, &qword_1007B1F40);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10004EB04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10002849C(&qword_1009827E0, &qword_1007CA1A0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_10003D4AC(v23, &v37);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      v27 = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_10004EDB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10002849C(&qword_100970D50, &qword_1007B1FD0);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10004F058(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10002849C(&qword_100970D00, &qword_1007CA210);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v35 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v34 & 1) == 0)
      {

        v23 = v22;
      }

      type metadata accessor for Artwork();
      sub_10005623C(&qword_100970D08, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v33;
      v12 = v35;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10004F338(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AdamId();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10002849C(&qword_100970D48, &qword_1007B1FC8);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10005623C(&qword_100970CD8, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_10004F714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10002849C(&qword_100970D20, &unk_1007B1F90);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      v21 = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_10004F978(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10002849C(a3, a4);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v34 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v23;
      }

      v25 = static Hasher._hash(seed:_:)();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
}

void sub_10004FBD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = type metadata accessor for AdamId();
  v5 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10002849C(&qword_100970D58, &qword_1007B1FD8);
  v43 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if (v43)
      {
        (*v44)(v45, v28, v46);
      }

      else
      {
        (*v40)(v45, v28, v46);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_10004FF58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for BadgeType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10002849C(&unk_100982850, &unk_1007B1F50);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10005623C(&qword_100970CF8, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_100050334(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_1000504FC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for ImpressionMetrics() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}