uint64_t sub_10063C22C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  __chkstk_darwin(v5 - 8);
  v39 = &v30 - v6;
  v7 = sub_10002849C(&qword_100990408, &qword_1007DB1E0);
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_10002849C(&qword_100990410, &unk_1007DB1E8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = sub_10063CDF0();
  ItemLayoutContext.typedState<A>(as:)();
  v38 = v14;
  StateLens<A>.currentValue.getter();
  if (v42)
  {
    v31 = v9;
    v32 = v13;
    v33 = a2;
    v34 = v11;
    v36 = v10;
    v37 = v2;
    v15 = PageTabs.tabs.getter();
    v16 = v15;
    v35 = v7;
    v17 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 >> 62)
    {
LABEL_23:
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    while (1)
    {
      if (v18 == v19)
      {
        v19 = 0;
        goto LABEL_19;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      v20 = PageTab.id.getter();
      v22 = v21;
      if (v20 == PageTabs.selectedTabId.getter() && v22 == v23)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_19;
      }

      if (__OFADD__(v19++, 1))
      {
        goto LABEL_22;
      }
    }

LABEL_19:

    ItemLayoutContext.mutableState.getter();
    v26 = v31;
    v27 = WritableStateLens.init(_:)();
    __chkstk_darwin(v27);
    *(&v30 - 2) = v19;
    *(&v30 - 8) = 0;
    v28 = v35;
    WritableStateLens<A>.updateValue(_:)();
    (*(v40 + 8))(v26, v28);
    v10 = v36;
    v3 = v37;
    v11 = v34;
    v13 = v32;
  }

  else
  {
    v19 = v41;
  }

  [*(v3 + OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_segmentedControl) setSelectedSegmentIndex:v19];
  return (*(v11 + 8))(v13, v10);
}

void sub_10063C620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10002849C(&qword_100990408, &qword_1007DB1E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v27 = a5;
      swift_beginAccess();
      v18 = swift_weakLoadStrong();
      if (v18)
      {
        v19 = v18;
        v25 = v10;
        v26 = a6;
        v20 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
        BaseObjectGraph.injectIfAvailable<A>(_:)();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v15, 1, v20) == 1)
        {
          sub_10002B894(v15, &unk_100972A00, &unk_1007B3130);
        }

        else
        {
          v22 = PageTab.action.getter();
          v24 = sub_1005FA320(v22, 1, v19, v15);

          (*(v21 + 8))(v15, v20);
        }

        ItemLayoutContext.mutableState.getter();
        v23 = WritableStateLens.init(_:)();
        __chkstk_darwin(v23);
        *(&v24 - 2) = v26;
        *(&v24 - 8) = 0;
        sub_10063CDF0();
        WritableStateLens<A>.updateValue(_:)();

        (*(v25 + 8))(v12, v9);
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

uint64_t type metadata accessor for SegmentedControlCollectionViewCell(uint64_t a1)
{
  result = qword_1009903F0;
  if (!qword_1009903F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10063CA5C(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10063CB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10063CD04(&qword_1009747B0, type metadata accessor for SegmentedControlCollectionViewCell, &unk_1007DB15C);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10063CBE4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_10063CC3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore34SegmentedControlCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10063CD04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10063CD4C(uint64_t a1)
{
  v3 = *(type metadata accessor for ItemLayoutContext() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10063C620(a1, v5, v6, v7, v1 + v4, v8);
}

unint64_t sub_10063CDF0()
{
  result = qword_100990418;
  if (!qword_100990418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990418);
  }

  return result;
}

uint64_t sub_10063CE44(uint64_t result)
{
  v2 = *(v1 + 24);
  *result = *(v1 + 16);
  *(result + 8) = v2;
  return result;
}

void sub_10063CE58(uint64_t a1)
{
  v2 = type metadata accessor for PageGrid();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PageTabs();
  sub_10063CD04(&qword_100990400, &type metadata accessor for PageTabs, &protocol conformance descriptor for PageTabs);
  ItemLayoutContext.typedModel<A>(as:)();
  v6 = v29;
  if (!v29)
  {
    return;
  }

  v7 = PageTabs.tabs.getter();
  v8 = v7;
  if (v7 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v5;
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_15:

    v11 = _swiftEmptyArrayStorage;
LABEL_16:
    swift_getKeyPath();
    v18 = v28;
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    v20 = v19;
    v22 = v21;
    (*(v3 + 8))(v18, v2);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v23 = v29;
    sub_10070BBC8(v11, v20, v22);

    return;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v28 = v5;
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  v29 = _swiftEmptyArrayStorage;
  sub_100144128(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v24 = v6;
    v25 = v3;
    v26 = v2;
    v27 = a1;
    v10 = 0;
    v11 = v29;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v12 = PageTab.title.getter();
      v14 = v13;

      v29 = v11;
      v16 = v11[2];
      v15 = v11[3];
      if (v16 >= v15 >> 1)
      {
        sub_100144128((v15 > 1), v16 + 1, 1);
        v11 = v29;
      }

      ++v10;
      v11[2] = v16 + 1;
      v17 = &v11[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
    }

    while (v9 != v10);

    v2 = v26;
    v3 = v25;
    goto LABEL_16;
  }

  __break(1u);
}

unint64_t sub_10063D17C()
{
  result = qword_100990420;
  if (!qword_100990420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990420);
  }

  return result;
}

unint64_t sub_10063D1D4()
{
  result = qword_100990428;
  if (!qword_100990428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990428);
  }

  return result;
}

char *sub_10063D240(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = type metadata accessor for FontUseCase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundViewCornerRadius] = 0x403B000000000000;
  v19 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_itemLayoutContext;
  v20 = type metadata accessor for ItemLayoutContext();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_messageTextView;
  if (qword_10096DE38 != -1)
  {
    swift_once();
  }

  v22 = sub_1000056A8(v15, qword_1009D0A28);
  v23 = *(v16 + 16);
  v23(v18, v22, v15);
  v24 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v25 = objc_allocWithZone(v24);
  *&v25[qword_100989190] = _swiftEmptyArrayStorage;
  *&v25[qword_100989198] = 0;
  v54.receiver = v25;
  v54.super_class = v24;
  v46 = v24;
  v26 = objc_msgSendSuper2(&v54, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23(v14, v18, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v27 = v26;
  dispatch thunk of DynamicTypeTextView.fontUseCase.setter();
  dispatch thunk of DynamicTypeTextView.numberOfLines.setter();

  v28 = v27;
  [v28 setSelectable:1];
  v29 = v28;
  [v29 setEditable:0];
  [v29 setScrollEnabled:0];
  [v29 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v29 setContentInsetAdjustmentBehavior:2];
  v30 = objc_opt_self();
  v31 = [v30 clearColor];
  [v29 setBackgroundColor:v31];

  [v29 setDelegate:v29];
  [v29 _setInteractiveTextSelectionDisabled:1];

  (*(v16 + 8))(v18, v15);
  *&v5[v21] = v29;
  v32 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundView;
  *&v5[v32] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_bottomSeparatorView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkTintColor] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow] = 0;
  v5[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_shouldUseArcadeMetrics] = 0;
  v33 = type metadata accessor for BannerCollectionViewCell(0);
  v53.receiver = v5;
  v53.super_class = v33;
  v34 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v34 layoutMargins];
  [v35 setLayoutMargins:?];

  v36 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundView;
  [*&v34[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
  v37 = *&v34[v36];
  v38 = [v30 quaternarySystemFillColor];
  [v37 setBackgroundColor:v38];

  [*&v34[v36] _setCornerRadius:27.0];
  v39 = [v34 contentView];
  [v39 addSubview:*&v34[v36]];

  if (*&v34[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork] || *&v34[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow])
  {
    v40 = v47;
    (*(v48 + 104))(v47, enum case for DirectionalTextAlignment.leading(_:), v49);
    sub_1004F747C(v40);
  }

  else
  {
    v44 = v46;
    v52.receiver = *&v34[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_messageTextView];
    receiver = v52.receiver;
    v52.super_class = v46;
    v45 = objc_msgSendSuper2(&v52, "textAlignment");
    v51.receiver = receiver;
    v51.super_class = v44;
    objc_msgSendSuper2(&v51, "setTextAlignment:", 1);
    v50.receiver = receiver;
    v50.super_class = v44;
    if (objc_msgSendSuper2(&v50, "textAlignment") != v45)
    {
      sub_1004F6A30();
    }
  }

  v41 = [v34 contentView];

  [v41 addSubview:*&v34[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_messageTextView]];
  return v34;
}

void sub_10063D928(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkTintColor;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkTintColor);
  *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkTintColor) = a1;
  v7 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView);
  if (v4)
  {
    v5 = *(v1 + v2);
    v6 = v4;
    ArtworkView.artworkTintColor.setter();
  }
}

id sub_10063D9B0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DirectionalTextAlignment();
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork] || *&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow])
  {
    (*(v5 + 104))(v8, enum case for DirectionalTextAlignment.leading(_:), v6);
    sub_1004F747C(v8);
  }

  else
  {
    v15 = *&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_messageTextView];
    v16 = type metadata accessor for DynamicTypeLinkedTextView(0);
    v20.receiver = v15;
    v20.super_class = v16;
    v17 = objc_msgSendSuper2(&v20, "textAlignment");
    v19.receiver = v15;
    v19.super_class = v16;
    objc_msgSendSuper2(&v19, "setTextAlignment:", 1);
    v18.receiver = v15;
    v18.super_class = v16;
    if (objc_msgSendSuper2(&v18, "textAlignment") != v17)
    {
      sub_1004F6A30();
    }
  }

  v9 = *&v2[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow];
  if (v9)
  {
    if (a1)
    {
      type metadata accessor for BannerButtonRow(0);
      v10 = v9;
      v11 = a1;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = v9;
    }

    v10 = [v2 contentView];
    [v10 addSubview:v9];

LABEL_10:
  }

  return [v2 setNeedsLayout];
}

void sub_10063DBB8()
{
  sub_100005744(0, &qword_1009870A0, UIImageSymbolConfiguration_ptr);
  v1 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
  v2 = *&v0[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  v3 = *&v0[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView];
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = v1;
    v4 = v2;
    v5 = v3;
    v6 = [v4 configurationByApplyingConfiguration:v8];
    ArtworkView.preferredSymbolConfiguration.setter();
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = v1;
    v4 = v3;
    v7 = v8;
    ArtworkView.preferredSymbolConfiguration.setter();
  }

  v1 = v8;
LABEL_7:
}

uint64_t sub_10063DCD0()
{
  v1 = v0;
  v2 = type metadata accessor for Separator();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BannerCollectionViewCell(0);
  v93.receiver = v0;
  v93.super_class = v4;
  objc_msgSendSuper2(&v93, "layoutSubviews");
  v5 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [*&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundView] setFrame:{v7, v9, v11, v13}];
  v14 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork;
  v15 = *&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork];

  v16 = [v1 traitCollection];
  v17 = sub_10063E968(v15);
  v19 = v18;
  v21 = v20;

  v22 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow;
  if (*&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow] && (swift_beginAccess(), sub_100005744(0, &qword_1009811E0, UIButton_ptr), , v23 = Array.isNotEmpty.getter(), , (v23 & 1) != 0) && *&v1[v22])
  {
    *&v73 = *&v1[v22];
    type metadata accessor for BannerButtonRow(0);
    Measurable.placeable.getter();
  }

  else
  {
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
  }

  v91[0] = v88;
  v91[1] = v89;
  v92 = v90;
  v24 = *&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_messageTextView];
  [v24 setFrame:{v7, v9, v11, v13}];
  v25 = *&v1[v14];
  if (*&v1[v22])
  {
    if ((v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_shouldUseArcadeMetrics] & 1) == 0)
    {
      v26 = 15.0;
      if (v25)
      {
        v27 = 15.0;
      }

      else
      {
        v27 = 22.0;
      }

      v60 = xmmword_1007DB330;
      v28 = 9.0;
      goto LABEL_18;
    }

LABEL_13:
    v60 = xmmword_1007CFA70;
    v28 = 17.0;
    v27 = 0.0;
    v26 = 0.0;
    goto LABEL_18;
  }

  if (v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_shouldUseArcadeMetrics])
  {
    goto LABEL_13;
  }

  if (v25)
  {
    v27 = 15.0;
  }

  else
  {
    v27 = 22.0;
  }

  v60 = xmmword_1007DB340;
  v28 = 9.0;
  v26 = v27;
LABEL_18:
  v72 = v24;
  type metadata accessor for DynamicTypeLinkedTextView(0);
  Measurable.placeable.getter();
  if (*&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView])
  {
    *&v73 = *&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView];
    type metadata accessor for ArtworkView();
    Measurable.placeable.getter();
  }

  else
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
  }

  sub_1000CB084(v91, v67);
  v29 = [v1 traitCollection];
  v30 = UITraitCollection.isSizeClassCompact.getter();

  if (v30)
  {
    v31 = 1;
  }

  else
  {
    v32 = [v1 traitCollection];
    v33 = [v32 preferredContentSizeCategory];

    v31 = UIContentSizeCategory.isAccessibilityCategory.getter();
  }

  v73 = v60;
  v74 = v60;
  *&v75 = v28;
  *(&v75 + 1) = v27;
  *&v76 = v28;
  *(&v76 + 1) = v26;
  v77 = xmmword_1007B0C20;
  v78 = xmmword_1007B0C30;
  sub_100005A38(&v61, v79);
  v80[0] = v69;
  v80[1] = v70;
  v85[0] = v67[0];
  v81 = v71;
  v82 = v17;
  v83 = v19;
  v34 = v21 & 1;
  v84 = v21 & 1;
  v85[1] = v67[1];
  v86 = v68;
  v87 = v31 & 1;
  v35 = [v1 traitCollection];
  v63 = v75;
  v64 = v76;
  v65 = v77;
  v66 = v78;
  v61 = v73;
  v62 = v74;
  if (v31)
  {
    *(&v70 + 1) = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    v71 = sub_1000CB0F4();
  }

  else
  {
    *(&v70 + 1) = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    v71 = sub_1000CB030();
  }

  v36 = swift_allocObject();
  *&v69 = v36;
  sub_10002C0AC(v79, v36 + 112);
  sub_1000CB084(v80, v36 + 152);
  sub_1000CB084(v85, v36 + 216);
  v37 = v64;
  *(v36 + 48) = v63;
  *(v36 + 64) = v37;
  v38 = v66;
  *(v36 + 80) = v65;
  *(v36 + 96) = v38;
  v39 = v62;
  *(v36 + 16) = v61;
  *(v36 + 32) = v39;
  *(v36 + 192) = v17;
  *(v36 + 200) = v19;
  *(v36 + 208) = v34;
  sub_100005A38(&v69, &v61);
  sub_10002A400(&v61, *(&v62 + 1));
  dispatch thunk of Placeable.place(at:with:)();

  sub_100007000(&v61);
  v40 = *&v1[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_bottomSeparatorView];
  if (v40)
  {
    v41 = v40;
    [v1 bounds];
    v42 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
    swift_beginAccess();
    v44 = v58;
    v43 = v59;
    v45 = &v41[v42];
    v46 = v57;
    (*(v58 + 16))(v57, v45, v59);
    Separator.frame(forBoundingRect:in:)();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    (*(v44 + 8))(v46, v43);
    [v41 setFrame:{v48, v50, v52, v54}];
  }

  sub_10063F3B4(&v73);
  return sub_10002B894(v91, &unk_10097B860, &qword_1007B49E0);
}

double sub_10063E3CC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  swift_getObjectType();
  v8[5] = a2;
  Measurable.placeable.getter();
  sub_10002A400(v8, v8[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v6 = v5;
  sub_100007000(v8);
  return v6;
}

void sub_10063E48C(uint64_t a1, double a2, double a3)
{
  v6 = Banner.buttonActions.getter();
  v7 = 0;
  v8 = *(v6 + 16);
  v9 = _swiftEmptyArrayStorage;
LABEL_2:
  v10 = 16 * v7 + 32;
  while (1)
  {
    if (v8 == v7)
    {

      sub_100146340(a1, v9, a2, a3);

      return;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    v11 = v10 + 16;
    ++v7;

    v12 = Action.title.getter();
    v14 = v13;

    v10 = v11;
    if (v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100033E38(0, *(v9 + 2) + 1, 1, v9);
      }

      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      if (v16 >= v15 >> 1)
      {
        v9 = sub_100033E38((v15 > 1), v16 + 1, 1, v9);
      }

      *(v9 + 2) = v16 + 1;
      v17 = &v9[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
      goto LABEL_2;
    }
  }

  __break(1u);
}

id sub_10063E5F4()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for BannerCollectionViewCell(0);
  objc_msgSendSuper2(&v9, "prepareForReuse");
  sub_10063F468(0);
  sub_10063D928(0);
  v1 = *&v0[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  *&v0[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = 0;

  sub_10063DBB8();
  v2 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_bottomSeparatorView;
  v3 = *&v0[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_bottomSeparatorView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v5 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow;
  v6 = *&v0[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow];
  if (v6)
  {
    [v6 removeFromSuperview];
    v7 = *&v0[v5];
  }

  else
  {
    v7 = 0;
  }

  *&v0[v5] = 0;

  sub_10063D9B0(v6);
  return [*&v0[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
}

id sub_10063E744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BannerCollectionViewCell(uint64_t a1)
{
  result = qword_100990460;
  if (!qword_100990460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10063E89C(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10063E968(uint64_t result)
{
  v1 = result;
  if (result)
  {
    sub_100005744(0, &qword_1009870A0, UIImageSymbolConfiguration_ptr);

    v2 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
    if ((dispatch thunk of Artwork.isLocalImage.getter() & 1) == 0)
    {

      return 0x4042000000000000;
    }

    v3 = v2;
    if (dispatch thunk of Artwork.isSystemImage.getter())
    {
      v4 = static SystemImage.load(artwork:with:includePrivateImages:)();
    }

    else
    {
      if ((dispatch thunk of Artwork.isBundleImage.getter() & 1) == 0)
      {

LABEL_12:

        return 0x4042000000000000;
      }

      v4 = sub_100330100(v1, v2);
    }

    v5 = v4;

    if (v5)
    {
      [v5 size];
      v7 = v6;

      return v7;
    }

    goto LABEL_12;
  }

  return result;
}

double sub_10063EAAC(uint64_t a1, __int128 *a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v80 = a3;
  v76 = a2;
  v10 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v70[-v11];
  v13 = type metadata accessor for FontUseCase();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v70[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_10002849C(&unk_100973B10, &qword_1007B5208);
  __chkstk_darwin(v17 - 8);
  v19 = &v70[-v18];
  Banner.hideCriteria.getter();
  v20 = type metadata accessor for HideCriteria();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10002B894(v19, &unk_100973B10, &qword_1007B5208);
  }

  else
  {
    v22 = HideCriteria.isHidden.getter();
    (*(v21 + 8))(v19, v20);
    v23 = 0.0;
    if (v22)
    {
      return v23;
    }
  }

  v24 = v80;
  [v80 pageMarginInsets];
  static UIEdgeInsets.+ infix(_:_:)();
  CGSize.subtracting(insets:)();
  if (qword_10096DE38 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v13, qword_1009D0A28);
  v26 = *(v14 + 16);
  v26(v16, v25, v13);
  v27 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v28 = objc_allocWithZone(v27);
  *&v28[qword_100989190] = _swiftEmptyArrayStorage;
  *&v28[qword_100989198] = 0;
  v101.receiver = v28;
  v101.super_class = v27;
  v29 = objc_msgSendSuper2(&v101, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v26(v12, v16, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  v30 = v29;
  dispatch thunk of DynamicTypeTextView.fontUseCase.setter();
  dispatch thunk of DynamicTypeTextView.numberOfLines.setter();

  v31 = v30;
  [v31 setSelectable:1];
  v32 = v31;
  [v32 setEditable:0];
  [v32 setScrollEnabled:0];
  [v32 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v32 setContentInsetAdjustmentBehavior:2];
  v33 = [objc_opt_self() clearColor];
  [v32 setBackgroundColor:v33];

  [v32 setDelegate:v32];
  [v32 _setInteractiveTextSelectionDisabled:1];

  (*(v14 + 8))(v16, v13);
  v34 = v32;
  Banner.message.getter();
  v35 = String._bridgeToObjectiveC()();

  [v34 setText:v35];

  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  v74 = v34;
  v37 = Banner.leadingArtwork.getter();
  v38 = [v24 traitCollection];
  v39 = sub_10063E968(v37);
  v73 = v40;
  v71 = v41;

  Banner.buttonActions.getter();
  sub_10002849C(&qword_10096F9A8, &unk_1007DB3B0);
  v42 = Array.isNotEmpty.getter();

  v43 = 0;
  v44 = 0;
  if (v42)
  {

    v43 = sub_10063F460;
    v44 = a1;
  }

  v72 = v39;
  v78 = v44;
  v79 = v43;
  v77 = [v24 traitCollection];
  *(&v82 + 1) = &type metadata for DynamicSizePlaceholder;
  v45 = sub_10063F360();
  *&v83 = v45;
  *&v81 = sub_10063F358;
  *(&v81 + 1) = v36;
  v75 = v36;

  if (!Banner.leadingArtwork.getter())
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v50 = v78;
    v49 = v79;
    if (v42)
    {
      goto LABEL_10;
    }

LABEL_12:
    v45 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    goto LABEL_13;
  }

  v46 = type metadata accessor for EmptyPlaceable();
  swift_allocObject();
  v47 = EmptyPlaceable.init()();
  v48 = sub_10063F408();
  v50 = v78;
  v49 = v79;
  if ((v42 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v51 = &type metadata for DynamicSizePlaceholder;
  v52 = v50;
  v53 = v49;
LABEL_13:
  sub_10000827C(v49, v50);
  v54 = v77;
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v55 = 1;
  }

  else
  {
    v56 = [v54 preferredContentSizeCategory];
    v55 = UIContentSizeCategory.isAccessibilityCategory.getter();
  }

  v57 = v76[3];
  v92 = v76[2];
  v93 = v57;
  v58 = v76[5];
  v94 = v76[4];
  v95 = v58;
  v59 = v76[1];
  v90 = *v76;
  v91 = v59;
  sub_100005A38(&v81, v96);
  v97[0] = v47;
  v97[1] = 0;
  v97[2] = 0;
  v97[3] = v46;
  v97[4] = v48;
  v61 = v72;
  v60 = v73;
  v97[5] = v72;
  v97[6] = v73;
  v62 = v71 & 1;
  v98 = v71 & 1;
  v99[0] = v53;
  v99[1] = v52;
  v99[2] = 0;
  v99[3] = v51;
  v99[4] = v45;
  v100 = v55 & 1;
  v63 = [v80 traitCollection];
  v83 = v92;
  v84 = v93;
  v85 = v94;
  v86 = v95;
  v81 = v90;
  v82 = v91;
  if (v55)
  {
    v88 = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    v89 = sub_1000CB0F4();
  }

  else
  {
    v88 = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    v89 = sub_1000CB030();
  }

  v64 = swift_allocObject();
  *&v87 = v64;
  sub_10002C0AC(v96, v64 + 112);
  sub_1000CB084(v97, v64 + 152);
  sub_1000CB084(v99, v64 + 216);
  v65 = v84;
  *(v64 + 48) = v83;
  *(v64 + 64) = v65;
  v66 = v86;
  *(v64 + 80) = v85;
  *(v64 + 96) = v66;
  v67 = v82;
  *(v64 + 16) = v81;
  *(v64 + 32) = v67;
  *(v64 + 192) = v61;
  *(v64 + 200) = v60;
  *(v64 + 208) = v62;
  sub_100005A38(&v87, &v81);
  sub_10002A400(&v81, *(&v82 + 1));
  dispatch thunk of Placeable.measure(toFit:with:)();

  sub_100007000(&v81);
  CGSize.adding(outsets:)();
  v23 = v68;

  sub_10001F63C(v79, v78);

  sub_10063F3B4(&v90);
  return v23;
}

unint64_t sub_10063F360()
{
  result = qword_100990470;
  if (!qword_100990470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990470);
  }

  return result;
}

unint64_t sub_10063F408()
{
  result = qword_1009768B0;
  if (!qword_1009768B0)
  {
    type metadata accessor for EmptyPlaceable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009768B0);
  }

  return result;
}

id sub_10063F468(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DirectionalTextAlignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork;
  *&v2[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork] = a1;

  v9 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView;
  v10 = *&v2[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView];
  if (*&v2[v8])
  {
    if (!v10)
    {
      v11 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v12 = *&v2[v9];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v2[v9];
      }

      else
      {
        v13 = 0;
      }

      *&v2[v9] = v11;
      v18 = v11;

      if (v18)
      {
        v19 = [v2 contentView];
        [v19 addSubview:v18];
      }

      [v2 setNeedsLayout];

      if (*&v2[v8])
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v10)
    {
      [v10 removeFromSuperview];
      v14 = *&v2[v9];
    }

    else
    {
      v14 = 0;
    }

    *&v2[v9] = 0;

    [v2 setNeedsLayout];
  }

  if (*&v2[v8])
  {
LABEL_17:
    (*(v5 + 104))(v7, enum case for DirectionalTextAlignment.leading(_:), v4);
    sub_1004F747C(v7);
    goto LABEL_18;
  }

LABEL_10:
  if (*&v2[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow])
  {
    goto LABEL_17;
  }

  v15 = *&v2[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_messageTextView];
  v16 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v23.receiver = v15;
  v23.super_class = v16;
  v17 = objc_msgSendSuper2(&v23, "textAlignment");
  v22.receiver = v15;
  v22.super_class = v16;
  objc_msgSendSuper2(&v22, "setTextAlignment:", 1);
  v21.receiver = v15;
  v21.super_class = v16;
  if (objc_msgSendSuper2(&v21, "textAlignment") != v17)
  {
    sub_1004F6A30();
  }

LABEL_18:
  sub_10063DBB8();
  return [v2 setNeedsLayout];
}

void sub_10063F710()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundViewCornerRadius) = 0x403B000000000000;
  v9 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_messageTextView;
  if (qword_10096DE38 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v5, qword_1009D0A28);
  v13 = *(v6 + 16);
  v13(v8, v12, v5);
  v14 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v15 = objc_allocWithZone(v14);
  *&v15[qword_100989190] = _swiftEmptyArrayStorage;
  *&v15[qword_100989198] = 0;
  v22.receiver = v15;
  v22.super_class = v14;
  v16 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v17 = v16;
  dispatch thunk of DynamicTypeTextView.fontUseCase.setter();
  dispatch thunk of DynamicTypeTextView.numberOfLines.setter();

  v18 = v17;
  [v18 setSelectable:1];
  v19 = v18;
  [v19 setEditable:0];
  [v19 setScrollEnabled:0];
  [v19 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v19 setContentInsetAdjustmentBehavior:2];
  v20 = [objc_opt_self() clearColor];
  [v19 setBackgroundColor:v20];

  [v19 setDelegate:v19];
  [v19 _setInteractiveTextSelectionDisabled:1];

  (*(v6 + 8))(v8, v5);
  *(v1 + v11) = v19;
  v21 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundView;
  *(v1 + v21) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_bottomSeparatorView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkTintColor) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkSymbolConfiguration) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_shouldUseArcadeMetrics) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 sub_10063FB40(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10063FB6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10063FBB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10063FC20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10063FC68(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_10063FCE8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v53 = type metadata accessor for _VerticalFlowLayout.ExclusionCondition();
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for _VerticalFlowLayout.Child.HorizontalAlignment();
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for _VerticalFlowLayout.Child.Placement();
  v7 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for _VerticalFlowLayout.Child();
  v9 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a2;
  _VerticalFlowLayout.init(expandChildrenToFit:children:)();
  v59 = v2;
  v13 = *(v2 + 120);
  v45 = *(v13 + 16);
  if (v45)
  {
    v14 = 0;
    v15 = v13 + 32;
    v56 = (v11 + 8);
    v43 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
    v42 = (v7 + 104);
    v41 = (v5 + 104);
    v40 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
    v39 = v55 + 8;
    v38 = (v5 + 8);
    v37 = (v7 + 8);
    v36 = (v9 + 8);
    v35 = xmmword_1007B10D0;
    v44 = v13;
    v16 = v48;
    while (v14 < *(v13 + 16))
    {
      *v64 = v14;
      sub_10064095C(v15, &v64[8]);
      if (*&v65[8])
      {
        v25 = *v64;
        *v64 = *&v64[8];
        *&v64[16] = *v65;
        *v65 = *&v65[8];
        *&v65[16] = *&v65[24];
        *&v65[32] = *&v65[40];
        *&v65[48] = v66;
        v26 = 24;
        if (!v25)
        {
          v26 = 64;
        }

        v27 = 40;
        if (v25)
        {
          v27 = 0;
        }

        sub_10002A400((v59 + v27), *(v59 + v26));
        v28 = v57;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v30 = v29;
        v31 = *v56;
        (*v56)(v28, v58);
        v32 = 0;
        if (v25 == *(v13 + 16) - 1)
        {
          sub_10002A400((v59 + 80), *(v59 + 104));
          v33 = v57;
          j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
          AnyDimension.value(in:rounded:)();
          v32 = v34;
          v31(v33, v58);
        }

        ++v14;
        v17 = v49;
        (*v42)(v16, v43, v49);
        v18 = v50;
        v19 = v51;
        (*v41)(v50, v40, v51);
        v63[3] = &type metadata for CGFloat;
        v63[4] = &protocol witness table for CGFloat;
        v63[0] = v30;
        v62[3] = &type metadata for CGFloat;
        v62[4] = &protocol witness table for CGFloat;
        v62[0] = v32;
        sub_10002849C(&unk_10097E8A0, &unk_1007B5940);
        v20 = v55;
        v21 = swift_allocObject();
        *(v21 + 16) = v35;
        static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
        v61 = v21;
        sub_1000ED7E4();
        sub_10002849C(&unk_10097E8B0, &unk_1007BD010);
        sub_1000ED83C();
        v22 = v52;
        v23 = v53;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v24 = v46;
        static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
        (*(v20 + 8))(v22, v23);
        (*v38)(v18, v19);
        (*v37)(v16, v17);
        sub_100036530(v62);
        sub_100007000(v63);
        _VerticalFlowLayout.addChild(_:)();
        (*v36)(v24, v47);
        sub_100640994(v64);
        v15 += 80;
        v13 = v44;
        if (v45 != v14)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_100640480(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for _VerticalFlowLayout();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10063FCE8(a1, v16);
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v30 = v16;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)();
  v17 = *(v5 + 120);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + 32;
    do
    {
      sub_10064095C(v19, v39);
      sub_100129CF0(&v41, &v36);
      if (v37)
      {
        sub_100005A38(&v36, v38);
        sub_10002A400(v39, v40);
        dispatch thunk of LayoutView.frame.getter();
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        sub_10002A400(v38, v38[3]);
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        (*(v12 + 8))(v14, v11);
        v42.origin.x = v21;
        v42.origin.y = v23;
        v42.size.width = v25;
        v42.size.height = v27;
        CGRectGetWidth(v42);
        v43.origin.x = v21;
        v43.origin.y = v23;
        v43.size.width = v25;
        v43.size.height = v27;
        CGRectGetHeight(v43);
        v44.origin.x = v33;
        v44.origin.y = v34;
        v44.size.width = v35;
        v44.size.height = a5;
        CGRectGetMidX(v44);
        v45.origin.x = v21;
        v45.origin.y = v23;
        v45.size.width = v25;
        v45.size.height = v27;
        CGRectGetMinY(v45);
        sub_10002A400(v39, v40);
        dispatch thunk of LayoutView.frame.setter();
        sub_100640994(v39);
        sub_100007000(v38);
      }

      else
      {
        sub_100640994(v39);
        sub_100036530(&v36);
      }

      v19 += 80;
      --v18;
    }

    while (v18);
  }

  return (*(v31 + 8))(v30, v32);
}

void sub_100640824(uint64_t a1, double a2, double a3)
{
  v5 = type metadata accessor for _VerticalFlowLayout();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v3 + 120) + 16))
  {
    sub_10063FCE8(a1, &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    _VerticalFlowLayout.measurements(fitting:in:)();
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t Badge.enrich(objectGraph:)(uint64_t a1)
{
  v59 = a1;
  v1 = type metadata accessor for ShelvesIntent();
  v57 = *(v1 - 8);
  v58 = v1;
  __chkstk_darwin(v1);
  v3 = v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v4 - 8);
  v6 = v53 - v5;
  v7 = type metadata accessor for URL();
  v60 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BadgeType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100990478, &qword_1007DB4F8);
  v14 = Promise.__allocating_init()();
  Badge.type.getter();
  if ((*(v11 + 88))(v13, v10) == enum case for BadgeType.friendsPlaying(_:))
  {
    v15 = Badge.content.getter();
    v16 = BadgeContentKeyNumberOfAvatarsToDisplay.getter();
    if (*(v15 + 16))
    {
      v18 = sub_1000072B8(v16, v17);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }

      sub_1000073E8(*(v15 + 56) + 32 * v18, &v61);

      sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v21 = v65;
      v22 = [v65 integerValue];

      v23 = Badge.content.getter();
      v24 = BadgeContentKeyNumberOfFriendsBeforeTruncation.getter();
      if (*(v23 + 16))
      {
        v55 = v22;
        v56 = sub_1000072B8(v24, v25);
        v27 = v26;

        if (v27)
        {
          sub_1000073E8(*(v23 + 56) + 32 * v56, &v61);

          if (swift_dynamicCast())
          {
            v28 = v65;
            v29 = [v65 integerValue];

            v30 = Badge.content.getter();
            v31 = BadgeContentKeyAdamId.getter();
            if (*(v30 + 16))
            {
              v56 = v29;
              v33 = sub_1000072B8(v31, v32);
              v35 = v34;

              if (v35)
              {
                sub_1000073E8(*(v30 + 56) + 32 * v33, &v61);

                if (swift_dynamicCast())
                {
                  v36 = v65;
                  v37 = v66;
                  v61 = 0;
                  v62 = 0xE000000000000000;
                  _StringGuts.grow(_:)(91);
                  v38._countAndFlagsBits = 0xD000000000000059;
                  v38._object = 0x800000010081E690;
                  String.append(_:)(v38);
                  v39._countAndFlagsBits = v36;
                  v39._object = v37;
                  String.append(_:)(v39);

                  URL.init(string:)();

                  v40 = v60;
                  if ((*(v60 + 48))(v6, 1, v7) != 1)
                  {
                    (*(v40 + 32))(v9, v6, v7);
                    type metadata accessor for ArtworkLoader();
                    v53[1] = type metadata accessor for BaseObjectGraph();
                    inject<A, B>(_:from:)();
                    v54 = v61;
                    sub_10002849C(&qword_100990480, &qword_1007DB500);
                    v42 = (sub_10002849C(&qword_1009829C0, &qword_1007CA2F0) - 8);
                    v43 = (*(*v42 + 80) + 32) & ~*(*v42 + 80);
                    v44 = swift_allocObject();
                    *(v44 + 16) = xmmword_1007B10D0;
                    v45 = v44 + v43;
                    v46 = v42[14];
                    v61 = 0xD000000000000015;
                    v62 = 0x800000010081E6F0;
                    AnyHashable.init<A>(_:)();
                    (*(v40 + 16))(v45 + v46, v9, v7);
                    sub_100397E24(v44);
                    swift_setDeallocating();
                    sub_10002B894(v45, &qword_1009829C0, &qword_1007CA2F0);
                    swift_deallocClassInstance();
                    ShelvesIntent.init(requests:)();
                    type metadata accessor for JSIntentDispatcher();
                    inject<A, B>(_:from:)();
                    sub_100641A3C();
                    v47 = v58;
                    dispatch thunk of JSIntentDispatcher.dispatch<A>(intent:with:fileID:)();
                    v48 = swift_allocObject();
                    swift_weakInit();
                    v49 = swift_allocObject();
                    v49[2] = v48;
                    v49[3] = 0xD000000000000015;
                    v49[4] = 0x800000010081E6F0;
                    v49[5] = v14;
                    v50 = v54;
                    v49[6] = v55;
                    v49[7] = v50;
                    v49[8] = v56;
                    v51 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);

                    v52 = static OS_dispatch_queue.main.getter();
                    v63 = v51;
                    v64 = &protocol witness table for OS_dispatch_queue;
                    v61 = v52;
                    Promise.then(perform:orCatchError:on:)();

                    (*(v57 + 8))(v3, v47);
                    (*(v60 + 8))(v9, v7);
                    sub_100007000(&v61);
                    return v14;
                  }

                  sub_10002B894(v6, &qword_100982460, &unk_1007B5C90);
                }

                goto LABEL_16;
              }

              goto LABEL_15;
            }

            goto LABEL_14;
          }

LABEL_16:
          v61 = 0;
          Promise.resolve(_:)();
          return v14;
        }

LABEL_15:

        goto LABEL_16;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v61 = 0;
  Promise.resolve(_:)();
  (*(v11 + 8))(v13, v10);
  return v14;
}

double sub_100641214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  countAndFlagsBits = a8;
  object = a7;
  v12 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v12 - 8);
  v55 = v45 - v13;
  v14 = type metadata accessor for BadgeStyle();
  __chkstk_darwin(v14 - 8);
  v54 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BadgeLeadingValue();
  __chkstk_darwin(v16 - 8);
  v53 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_100990490, qword_1007DB508);
  __chkstk_darwin(v18 - 8);
  v56 = v45 - v19;
  v20 = type metadata accessor for BadgeType();
  __chkstk_darwin(v20 - 8);
  v21 = type metadata accessor for AvatarShowcaseLayoutConfiguration();
  __chkstk_darwin(v21 - 8);
  v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v25 = ShelfBatch.shelves.getter();
    v57 = a3;
    v58 = a4;

    AnyHashable.init<A>(_:)();
    if (*(v25 + 16) && (sub_1003D78D8(v59), (v26 & 1) != 0))
    {

      sub_10003D614(v59);

      v27 = Shelf.items.getter();

      v28 = sub_10067BE44(v27);

      if (v28)
      {
        v29 = v28 >> 62;
        if (v28 >> 62)
        {
LABEL_34:
          v30 = _CocoaArrayWrapper.endIndex.getter();
          if (v30 >= 1)
          {
LABEL_7:
            v46 = v30;
            if (v30 < a6)
            {
              a6 = v30;
            }

            AvatarShowcaseLayoutConfiguration.init(width:visibleWidth:)();
            v48 = type metadata accessor for AvatarShowcaseView(0);
            v31 = objc_allocWithZone(v48);
            v47 = sub_1004F508C(a6, v23);
            v59[0] = _swiftEmptyArrayStorage;
            v49 = a5;
            if (v29)
            {
              v29 = v28 & 0xFFFFFFFFFFFFFF8;
              a6 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v29 = v28 & 0xFFFFFFFFFFFFFF8;
              a6 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v32 = 0;
            a5 = v28 & 0xC000000000000001;
            v50 = _swiftEmptyArrayStorage;
            while (a6 != v32)
            {
              if (a5)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
                v33 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
                  goto LABEL_32;
                }
              }

              else
              {
                if (v32 >= *(v29 + 16))
                {
                  goto LABEL_33;
                }

                v33 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
LABEL_32:
                  __break(1u);
LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }
              }

              v23 = dispatch thunk of GameCenterPlayer.artwork.getter();

              ++v32;
              if (v23)
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v50 = v59[0];
                v32 = v33;
              }
            }

            v34 = v47;
            sub_1004F53FC(v50, object);

            v35 = countAndFlagsBits;
            if (v46 <= countAndFlagsBits)
            {
              v37 = 0x800000010081E730;
              v36 = 0xD00000000000001DLL;
              v35 = v46;
            }

            else
            {
              v36 = 0xD000000000000021;
              v37 = 0x800000010081E750;
            }

            v38._countAndFlagsBits = 0;
            v38._object = 0xE000000000000000;
            v39 = localizedStringWithCount(_:count:comment:)(*&v36, v35, v38);
            countAndFlagsBits = v39._countAndFlagsBits;
            object = v39._object;
            Badge.id.getter();
            Badge.type.getter();
            Badge.key.getter();
            v50 = Badge.heading.getter();
            v46 = v40;
            v45[3] = Badge.longCaption.getter();
            v45[2] = v41;
            sub_10002849C(&qword_100988670, qword_1007D1340);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1007B10D0;
            *(inited + 32) = BadgeContentKeyNativeContentView.getter();
            *(inited + 72) = v48;
            *(inited + 40) = v43;
            *(inited + 48) = v34;
            v48 = v34;
            v47 = sub_100398EF4(inited);
            swift_setDeallocating();
            sub_10002B894(inited + 32, &unk_100982880, &unk_1007DEC80);
            Badge.leadingValue.getter();
            Badge.style.getter();
            v45[1] = Badge.accessibilityTitle.getter();
            v45[0] = v44;
            Badge.accessibilityCaption.getter();
            Badge.clickAction.getter();
            Badge.artwork.getter();
            Badge.impressionMetrics.getter();
            type metadata accessor for Badge();
            swift_allocObject();
            v59[0] = Badge.init(id:type:key:heading:caption:longCaption:content:leadingValue:style:accessibilityTitle:accessibilityCaption:clickAction:artwork:trailingArtwork:isMonochrome:impressionMetrics:)();

            Promise.resolve(_:)();

            goto LABEL_13;
          }
        }

        else
        {
          v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30 >= 1)
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {

      sub_10003D614(v59);
    }

    v59[0] = 0;
    Promise.resolve(_:)();
LABEL_13:
  }

  return result;
}

double sub_10064196C(uint64_t a1)
{
  sub_10002849C(&qword_1009701B0, qword_1007B1800);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007B10D0;
  swift_getErrorValue();
  *(v1 + 56) = v4;
  v2 = sub_1000056E0((v1 + 32));
  (*(*(v4 - 8) + 16))(v2);
  print(_:separator:terminator:)();

  return result;
}

unint64_t sub_100641A3C()
{
  result = qword_100990488;
  if (!qword_100990488)
  {
    type metadata accessor for ShelvesIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990488);
  }

  return result;
}

uint64_t sub_100641AB8(uint64_t a1, void *a2, uint64_t a3)
{
  v126 = a3;
  v128 = a2;
  v122 = type metadata accessor for FlowAnimationBehavior();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for FlowPresentationContext();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v6 - 8);
  v115 = &v110 - v7;
  v125 = type metadata accessor for ActionOutcome();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v9 - 8);
  v111 = &v110 - v10;
  v11 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v11);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&unk_1009796F0, &unk_1007BA400);
  __chkstk_darwin(v14 - 8);
  v113 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v110 - v17;
  v19 = type metadata accessor for FlowDestination(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v114 = (&v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v24 = (&v110 - v23);
  __chkstk_darwin(v25);
  v27 = &v110 - v26;
  v112 = sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v127 = Promise.__allocating_init()();

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(a1, &aBlock, v18);
  v28 = *(v20 + 48);
  v29 = v28(v18, 1, v19);
  v129 = v27;
  if (v29 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v28(v18, 1, v19) != 1)
    {
      sub_10002B894(v18, &unk_1009796F0, &unk_1007BA400);
    }
  }

  else
  {
    sub_10013A05C(v18, v27);
  }

  FlowAction.presentationContext.getter();
  v30 = *(v11 + 20);
  v130 = v13;
  FlowAction.animationBehavior.getter();
  v31 = v128;
  v32 = [v128 presentedViewController];
  v119 = v30;
  if (!v32)
  {
    goto LABEL_8;
  }

  v33 = v32;
  if ([v32 isBeingDismissed])
  {

LABEL_8:
    v34 = v31;
    goto LABEL_9;
  }

  v131 = v33;
  sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
  v45 = v33;
  sub_10002849C(&qword_100978EF8, &qword_1007BECE8);
  v46 = swift_dynamicCast();
  v110 = v45;
  if (v46)
  {
    sub_100177264(v132, &aBlock);
    v47 = *(&v135 + 1);
    v48 = v136;
    sub_10002A400(&aBlock, *(&v135 + 1));
    v49 = v129;
    if ((*(v48 + 8))(v129, v47, v48))
    {
      sub_100118188(v49, v24);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v50 = v130;
        if (*v24)
        {
          v51 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);

          v52 = v111;
          v53 = v126;
          BaseObjectGraph.injectIfAvailable<A>(_:)();
          v54 = *(v51 - 8);
          v55 = (*(v54 + 48))(v52, 1, v51);
          v56 = v127;
          if (v55 == 1)
          {

            sub_10013B6D8(v50, type metadata accessor for FlowPresentationHints);
            sub_10013B6D8(v49, type metadata accessor for FlowDestination);
            sub_10002B894(v52, &unk_100972A00, &unk_1007B3130);
LABEL_62:
            sub_100007000(&aBlock);
            return v56;
          }

          sub_1005FA0B0(v109, 1, v53, v52);

          (*(v54 + 8))(v52, v51);
          Promise.pipe(to:)();

LABEL_61:
          sub_10013B6D8(v50, type metadata accessor for FlowPresentationHints);
          sub_10013B6D8(v49, type metadata accessor for FlowDestination);
          goto LABEL_62;
        }
      }

      else
      {
        sub_10013B6D8(v24, type metadata accessor for FlowDestination);
        v50 = v130;
      }

      v106 = v124;
      v107 = v123;
      v108 = v125;
      (*(v124 + 104))(v123, enum case for ActionOutcome.performed(_:), v125);
      v56 = v127;
      Promise.resolve(_:)();

      (*(v106 + 8))(v107, v108);
      goto LABEL_61;
    }

    sub_100007000(&aBlock);
    v45 = v110;
  }

  else
  {
    v133 = 0;
    memset(v132, 0, sizeof(v132));
    sub_10002B894(v132, &unk_100986B90, &qword_1007BECF0);
  }

  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  v90 = v126;
  inject<A, B>(_:from:)();
  v91 = v45;
  v92 = v129;
  v93 = sub_100642D68(v91, v129, aBlock);
  v94 = v127;
  if ((v93 & 1) == 0)
  {
    v100 = v110;
    v101 = v128;
    v102 = [v101 presentedViewController];
    if (v102)
    {
      do
      {
        v34 = v102;

        v102 = [v34 presentedViewController];
        v101 = v34;
      }

      while (v102);
    }

    else
    {
      v34 = v101;
    }

    v31 = v128;
LABEL_9:
    v35 = [v31 traitCollection];
    v36 = v31;
    v37 = sub_10040BB0C();

    if (v37)
    {
      v38 = [v36 traitCollection];
      v39 = sub_1003C8A6C(a1, v38, v126);

      if (v39)
      {
        v40 = v39;
        goto LABEL_28;
      }
    }

    else
    {
      v41 = sub_100623FBC(v36);
      v42 = v36;
      if (v41)
      {
        *&v132[0] = v41;
        sub_100005744(0, &qword_100975960, UINavigationController_ptr);
        sub_10002849C(&qword_100975968, &unk_1007BA420);
        v43 = swift_dynamicCast();
        v44 = v115;
        if ((v43 & 1) == 0)
        {
          *&v136 = 0;
          aBlock = 0u;
          v135 = 0u;
        }
      }

      else
      {
        *&v136 = 0;
        aBlock = 0u;
        v135 = 0u;
        v44 = v115;
      }

      v57 = [v42 traitCollection];

      dispatch thunk of Action.clickSender.getter();
      v58 = v113;
      sub_100462678(a1, v132, v113);
      if (v28(v58, 1, v19) == 1)
      {
        v59 = v114;
        swift_storeEnumTagMultiPayload();
        v60 = v59;
        if (v28(v58, 1, v19) != 1)
        {
          sub_10002B894(v58, &unk_1009796F0, &unk_1007BA400);
        }
      }

      else
      {
        v60 = v114;
        sub_10013A05C(v58, v114);
      }

      v61 = FlowAction.referrerUrl.getter();
      v63 = v62;
      FlowAction.referrerData.getter();
      sub_1003C1668(v60, v57, v61, v63, v44, &aBlock, v126, 1);
      v39 = v64;

      sub_10002B894(v44, &unk_1009767C0, &unk_1007B1880);
      sub_10013B6D8(v60, type metadata accessor for FlowDestination);
      v40 = v39;
      sub_10002B894(&aBlock, &unk_100981880, &unk_1007BECD0);
      v36 = v128;
      if (v39)
      {
LABEL_28:
        v65 = v129;
        v66 = [v36 traitCollection];
        v67 = v116;
        sub_10065DB50(v116);

        v68 = FlowPresentationContext.presentationStyle.getter();
        v70 = v69;
        (*(v117 + 8))(v67, v118);
        if ((v70 & 1) == 0)
        {
          [v40 setModalPresentationStyle:v68];
        }

        aBlock = xmmword_100975F30;
        v135 = xmmword_100975F40;
        v136 = xmmword_100975F50;
        v137 = xmmword_100975F60;
        v138 = xmmword_100975F70;
        v71 = qword_100975F80;
        v139 = qword_100975F80;
        v72 = BYTE8(xmmword_100975F50);
        v56 = v127;
        if (BYTE8(xmmword_100975F50) != 255)
        {
          v73 = aBlock;
          v75 = v135;
          v74 = *&v136;
          v76 = v137;
          v77 = v138;
          v78 = aBlock;
          v79 = [v40 popoverPresentationController];
          if (v79)
          {
            v80 = v79;
            if (v72)
            {
              sub_100357ED0(&aBlock, v132);
              v81 = v80;
              [v81 setSourceView:v73];
              [v81 setSourceRect:{*(&v73 + 1), v75, v74}];
              sub_10002B894(&aBlock, &unk_10097F520, &unk_1007BA430);
            }

            else
            {
              [v79 setBarButtonItem:v73];
            }

            [v80 setPopoverLayoutMargins:{v76, v77}];
            [v80 setPermittedArrowDirections:v71];
          }

          else
          {
            if (qword_10096D120 != -1)
            {
              swift_once();
            }

            v83 = type metadata accessor for OSLogger();
            sub_1000056A8(v83, qword_1009CE218);
            sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
            type metadata accessor for LogMessage();
            *(swift_allocObject() + 16) = xmmword_1007B10D0;
            LogMessage.init(stringLiteral:)();
            Logger.warning(_:)();
          }

          sub_10002B894(&aBlock, &unk_10097F520, &unk_1007BA430);
        }

        v84 = v121;
        v85 = v120;
        v86 = v122;
        (*(v121 + 16))(v120, &v130[v119], v122);
        v87 = (*(v84 + 88))(v85, v86);
        if (v87 == enum case for FlowAnimationBehavior.infer(_:))
        {
          v88 = 1;
          v89 = v125;
LABEL_54:
          [v34 presentViewController:v40 animated:v88 completion:0];
          v103 = v124;
          v104 = v123;
          (*(v124 + 104))(v123, enum case for ActionOutcome.performed(_:), v89);
          Promise.resolve(_:)();

          (*(v103 + 8))(v104, v89);
          sub_10013B6D8(v130, type metadata accessor for FlowPresentationHints);
          v82 = v65;
          goto LABEL_55;
        }

        v89 = v125;
        if (v87 != enum case for FlowAnimationBehavior.never(_:))
        {
          if (v87 == enum case for FlowAnimationBehavior.always(_:))
          {
            v88 = 1;
            goto LABEL_54;
          }

          (*(v84 + 8))(v85, v86);
        }

        v88 = 0;
        goto LABEL_54;
      }
    }

    (*(v124 + 104))(v123, enum case for ActionOutcome.unsupported(_:), v125);
    v56 = Promise.__allocating_init(value:)();

    sub_10013B6D8(v130, type metadata accessor for FlowPresentationHints);
    v82 = v129;
LABEL_55:
    sub_10013B6D8(v82, type metadata accessor for FlowDestination);
    return v56;
  }

  v95 = swift_allocObject();
  v96 = v128;
  v95[2] = a1;
  v95[3] = v96;
  v95[4] = v90;
  v95[5] = v94;
  *&v136 = sub_100642F94;
  *(&v136 + 1) = v95;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v135 = sub_100007A08;
  *(&v135 + 1) = &unk_1008CCCE0;
  v97 = _Block_copy(&aBlock);

  v98 = v96;

  v99 = v110;
  [v110 dismissViewControllerAnimated:1 completion:v97];
  _Block_release(v97);

  sub_10013B6D8(v130, type metadata accessor for FlowPresentationHints);
  sub_10013B6D8(v92, type metadata accessor for FlowDestination);
  return v94;
}

uint64_t sub_100642D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100118188(a2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 39)
  {
    if (EnumCaseMultiPayload != 40 && EnumCaseMultiPayload != 41 && EnumCaseMultiPayload != 42)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 10)
  {

    v15 = *(sub_10002849C(&qword_100983590, &qword_1007CAEC8) + 64);
    v16 = type metadata accessor for ShareSheetAction.ShareSheetStyle();
    (*(*(v16 - 8) + 8))(&v9[v15], v16);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 19)
  {
LABEL_9:
    sub_10013B6D8(v9, type metadata accessor for FlowDestination);
LABEL_10:
    v13 = 0;
    return v13 & 1;
  }

  if (EnumCaseMultiPayload != 28)
  {
LABEL_13:
    sub_10013B6D8(v9, type metadata accessor for FlowDestination);
    v13 = 1;
    return v13 & 1;
  }

  sub_100118248(v9, v6);
  type metadata accessor for ArticleContainerViewController();
  v11 = swift_dynamicCastClass() == 0;
  v12 = static ResilientDeepLinkController.preventDismissingArticlesForFlowUrl(_:bag:)();
  sub_10002B894(v6, &qword_100982460, &unk_1007B5C90);
  v13 = v11 | v12 ^ 1;
  return v13 & 1;
}

double sub_100642F94()
{
  sub_100641AB8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  Promise.pipe(to:)();

  return result;
}

unint64_t sub_100642FDC()
{
  result = qword_100974CB8;
  if (!qword_100974CB8)
  {
    type metadata accessor for EditorialStoryCardCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974CB8);
  }

  return result;
}

double sub_100643034()
{
  v0 = type metadata accessor for AspectRatio();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ShelfLayoutContext();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v8 + 8))(v10, v7);
  ShelfLayoutContext.traitEnvironment.getter();
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_10096E598 != -1)
    {
      swift_once();
    }

    v14 = qword_100988398;
  }

  else
  {
    if (qword_10096E590 != -1)
    {
      swift_once();
    }

    v14 = qword_100988380;
  }

  v15 = sub_1000056A8(v0, v14);
  (*(v1 + 16))(v3, v15, v0);
  (*(v1 + 32))(v6, v3, v0);
  AspectRatio.height(fromWidth:)();
  v17 = v16;
  (*(v1 + 8))(v6, v0);
  swift_unknownObjectRelease();
  (*(v11 + 8))(v13, v20);
  return round(v17);
}

double sub_10064336C()
{
  v0 = type metadata accessor for AspectRatio();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v8 + 8))(v10, v7);
  ShelfLayoutContext.traitEnvironment.getter();
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_10096E598 != -1)
    {
      swift_once();
    }

    v11 = qword_100988398;
  }

  else
  {
    if (qword_10096E590 != -1)
    {
      swift_once();
    }

    v11 = qword_100988380;
  }

  v12 = sub_1000056A8(v0, v11);
  (*(v1 + 16))(v3, v12, v0);
  (*(v1 + 32))(v6, v3, v0);
  AspectRatio.height(fromWidth:)();
  v14 = v13;
  (*(v1 + 8))(v6, v0);
  swift_unknownObjectRelease();
  return round(v14);
}

uint64_t sub_10064361C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10013DAA8(v7);
  v8 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  (*(*(v8 - 8) + 48))(v4, 1, v8);
  sub_10013DAA8(v4);
  a1[3] = type metadata accessor for SpacerDimension();
  a1[4] = sub_10021CA28(v9);
  sub_1000056E0(a1);
  return SpacerDimension.init(constant:)();
}

void sub_1006437A0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v3 - 8);
  v33 = &v30 - v4;
  v5 = type metadata accessor for OfferButtonSubtitlePosition();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for OfferButtonMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v30 - v18;
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v17);
  v20 = [v1 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v21 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v21 = qword_100991028;
  }

  v22 = sub_1000056A8(v12, v21);
  (*(v13 + 16))(v15, v22, v12);

  (*(v13 + 32))(v19, v15, v12);
  (*(v6 + 104))(v8, enum case for OfferButtonSubtitlePosition.below(_:), v5);
  (*(v6 + 56))(v33, 1, 1, v5);
  sub_100140F54();
  AccessibilityConditional.init(value:axValue:)();
  OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();
  v24 = v23;
  v26 = v25;
  (*(v31 + 8))(v11, v32);
  (*(v13 + 8))(v19, v12);
  v27 = [v1 layer];
  v28 = v27;
  if (v24 >= v26)
  {
    v29 = v26;
  }

  else
  {
    v29 = v24;
  }

  [v27 setCornerRadius:v29 * 0.5];
}

char *sub_100643CF0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder;
  type metadata accessor for ArtworkView();
  v12 = static ArtworkView.iconArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *&v5[v11] = v12;
  v13 = OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder;
  type metadata accessor for Placeholder();
  v14 = static Placeholder.headingTitleText.getter();
  v16 = sub_10025084C(v14, v15, UIFontTextStyleFootnote);

  *&v5[v13] = v16;
  v17 = OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder;
  v18 = static Placeholder.titleText.getter();
  v20 = sub_10025084C(v18, v19, UIFontTextStyleBody);

  *&v5[v17] = v20;
  v21 = OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder;
  type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder]];

  return v26;
}

uint64_t sub_100643F28@<X0>(uint64_t *a1@<X8>)
{
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  sub_10003B8E8(&xmmword_1009D3ED0, v101);
  v71 = *(v1 + OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder);
  [v71 sizeThatFits:{0.0, 0.0}];
  v101[34] = v3;
  v101[35] = v4;
  v102 = 0;
  sub_10003B8E8(v101, v100);
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder);
  v99 = &protocol witness table for UIView;
  v98 = type metadata accessor for ArtworkView();
  v97[0] = v5;
  v96 = 0;
  memset(v95, 0, sizeof(v95));
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder);
  v94 = &protocol witness table for UILabel;
  v93 = sub_100005744(0, &qword_100986BF0, UILabel_ptr);
  v92[0] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder);
  v91[4] = &protocol witness table for UILabel;
  v91[3] = v93;
  v91[0] = v7;
  v8 = objc_allocWithZone(UILabel);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v90 = &protocol witness table for UILabel;
  v89 = v93;
  v88[0] = [v8 init];
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v83 = 0;
  memset(v82, 0, sizeof(v82));
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  v72 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  a1[3] = &type metadata for TodayCardLockupLayout;
  a1[4] = sub_1006455F4();
  v12 = swift_allocObject();
  *a1 = v12;
  sub_10003B8E8(v100, v79);
  BYTE8(v79[47]) = 0;
  v13 = v98;
  v14 = v99;
  sub_10002A400(v97, v98);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v70 - v17;
  v71 = v71;
  LayoutView.nilIfHidden()();
  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v13;
    v78 = v14;
    v20 = sub_1000056E0(&v76);
    (*(v19 + 32))(v20, v18, v13);
  }

  *(&v79[22] + 8) = v76;
  *(&v79[23] + 8) = v77;
  *(&v79[24] + 1) = v78;
  sub_100645648(v95, v73);
  v21 = v74;
  if (v74)
  {
    v22 = v75;
    sub_10002A400(v73, v74);
    v23 = type metadata accessor for Optional();
    v24 = *(v23 - 8);
    __chkstk_darwin(v23);
    v26 = &v70 - v25;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v27 = *(v21 - 8);
    if ((*(v27 + 48))(v26, 1, v21) == 1)
    {
      (*(v24 + 8))(v26, v23);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v21;
      v78 = v22;
      v28 = sub_1000056E0(&v76);
      (*(v27 + 32))(v28, v26, v21);
    }

    sub_100007000(v73);
  }

  else
  {
    sub_1006456B8(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[25] = v76;
  v79[26] = v77;
  *&v79[27] = v78;
  sub_100645648(v92, v73);
  v29 = v74;
  if (v74)
  {
    v30 = v75;
    sub_10002A400(v73, v74);
    v31 = type metadata accessor for Optional();
    v32 = *(v31 - 8);
    __chkstk_darwin(v31);
    v34 = &v70 - v33;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v35 = *(v29 - 8);
    if ((*(v35 + 48))(v34, 1, v29) == 1)
    {
      (*(v32 + 8))(v34, v31);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v29;
      v78 = v30;
      v36 = sub_1000056E0(&v76);
      (*(v35 + 32))(v36, v34, v29);
    }

    sub_100007000(v73);
  }

  else
  {
    sub_1006456B8(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  *(&v79[27] + 8) = v76;
  *(&v79[28] + 8) = v77;
  *(&v79[29] + 1) = v78;
  sub_10002C0AC(v91, &v79[30]);
  v37 = v89;
  v38 = v90;
  sub_10002A400(v88, v89);
  v39 = type metadata accessor for Optional();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v70 - v41;
  LayoutTextView.nilIfHiddenOrHasNoContent()();
  v43 = *(v37 - 8);
  if ((*(v43 + 48))(v42, 1, v37) == 1)
  {
    (*(v40 + 8))(v42, v39);
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v37;
    v78 = v38;
    v44 = sub_1000056E0(&v76);
    (*(v43 + 32))(v44, v42, v37);
  }

  *(&v79[32] + 8) = v76;
  *(&v79[33] + 8) = v77;
  *(&v79[34] + 1) = v78;
  sub_100645648(v86, v73);
  v45 = v74;
  if (v74)
  {
    v46 = v75;
    sub_10002A400(v73, v74);
    v47 = type metadata accessor for Optional();
    v48 = *(v47 - 8);
    __chkstk_darwin(v47);
    v50 = &v70 - v49;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v51 = *(v45 - 8);
    if ((*(v51 + 48))(v50, 1, v45) == 1)
    {
      (*(v48 + 8))(v50, v47);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v45;
      v78 = v46;
      v52 = sub_1000056E0(&v76);
      (*(v51 + 32))(v52, v50, v45);
    }

    sub_100007000(v73);
  }

  else
  {
    sub_1006456B8(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[35] = v76;
  v79[36] = v77;
  *&v79[37] = v78;
  sub_100645648(v84, &v79[37] + 8);
  sub_100645648(v82, v73);
  v53 = v74;
  if (v74)
  {
    v54 = v75;
    sub_10002A400(v73, v74);
    v55 = type metadata accessor for Optional();
    v56 = *(v55 - 8);
    __chkstk_darwin(v55);
    v58 = &v70 - v57;
    LayoutTextView.nilIfHasNoContent()();
    v59 = *(v53 - 8);
    if ((*(v59 + 48))(v58, 1, v53) == 1)
    {
      (*(v56 + 8))(v58, v55);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v53;
      v78 = v54;
      v60 = sub_1000056E0(&v76);
      (*(v59 + 32))(v60, v58, v53);
    }

    sub_100007000(v73);
  }

  else
  {
    sub_1006456B8(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[40] = v76;
  v79[41] = v77;
  *&v79[42] = v78;
  sub_100645648(v80, v73);
  v61 = v74;
  if (v74)
  {
    v62 = v75;
    sub_10002A400(v73, v74);
    v63 = type metadata accessor for Optional();
    v64 = *(v63 - 8);
    __chkstk_darwin(v63);
    v66 = &v70 - v65;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v67 = *(v61 - 8);
    if ((*(v67 + 48))(v66, 1, v61) == 1)
    {
      sub_1006456B8(v80);
      sub_1006456B8(v82);
      sub_1006456B8(v86);
      sub_1006456B8(v95);
      sub_10003B944(v100);
      sub_100007000(v91);
      sub_1006456B8(v92);
      sub_1006456B8(v84);
      (*(v64 + 8))(v66, v63);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v61;
      v78 = v62;
      v68 = sub_1000056E0(&v76);
      (*(v67 + 32))(v68, v66, v61);
      sub_1006456B8(v80);
      sub_1006456B8(v82);
      sub_1006456B8(v86);
      sub_1006456B8(v95);
      sub_10003B944(v100);
      sub_100007000(v91);
      sub_1006456B8(v92);
      sub_1006456B8(v84);
    }

    sub_100007000(v73);
  }

  else
  {
    sub_1006456B8(v80);
    sub_1006456B8(v82);
    sub_1006456B8(v86);
    sub_1006456B8(v95);
    sub_10003B944(v100);
    sub_100007000(v91);
    sub_1006456B8(v92);
    sub_1006456B8(v84);
    sub_1006456B8(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  *(&v79[42] + 8) = v76;
  *(&v79[43] + 8) = v77;
  *(&v79[44] + 1) = v78;
  *&v79[45] = v71;
  *(&v79[45] + 8) = v76;
  *(&v79[46] + 1) = v72;
  *&v79[47] = &protocol witness table for UIView;
  memcpy((v12 + 16), v79, 0x2F9uLL);
  sub_10003B944(v101);
  sub_100007000(v88);
  return sub_100007000(v97);
}

double sub_100644F2C(double a1)
{
  v3 = type metadata accessor for OfferButtonMetrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v20[-v8 - 8];
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  if (qword_10096EFE8 != -1)
  {
    swift_once();
  }

  v10 = [v1 traitCollection];
  [v1 layoutMargins];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v11 = &xmmword_1009D4040;
  }

  else
  {
    v11 = &xmmword_1009D3ED0;
  }

  sub_10003B8E8(v11, v20);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v12 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v12 = qword_100991028;
  }

  v13 = sub_1000056A8(v3, v12);
  (*(v4 + 16))(v6, v13, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v23 & 1) == 0 && v21 == 0.0 && v22 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v15 = v14;
    OfferButtonMetrics.minimumSize.getter();
    v21 = v15;
    v22 = v16;
    v23 = 0;
  }

  v17 = _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v20, v10, a1);

  (*(v4 + 8))(v9, v3);
  sub_10003B944(v20);
  return v17;
}

double sub_100645224()
{
  v1 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v1 - 8);
  v26 = &v24 - v2;
  v3 = type metadata accessor for OfferButtonSubtitlePosition();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v24 - v8;
  v10 = type metadata accessor for OfferButtonMetrics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v24 - v16;
  v27 = v0;
  v18 = [v0 traitCollection];
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

  v20 = sub_1000056A8(v10, v19);
  (*(v11 + 16))(v13, v20, v10);

  (*(v11 + 32))(v17, v13, v10);
  (*(v4 + 104))(v6, enum case for OfferButtonSubtitlePosition.below(_:), v3);
  (*(v4 + 56))(v26, 1, 1, v3);
  sub_100140F54();
  AccessibilityConditional.init(value:axValue:)();
  OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();
  v22 = v21;
  (*(v7 + 8))(v9, v25);
  (*(v11 + 8))(v17, v10);
  return v22;
}

unint64_t sub_1006455F4()
{
  result = qword_100990508;
  if (!qword_100990508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990508);
  }

  return result;
}

uint64_t sub_100645648(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097E890, qword_1007B4270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006456B8(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10097E890, qword_1007B4270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100645720()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder;
  type metadata accessor for ArtworkView();
  v3 = static ArtworkView.iconArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder;
  type metadata accessor for Placeholder();
  v5 = static Placeholder.headingTitleText.getter();
  v7 = sub_10025084C(v5, v6, UIFontTextStyleFootnote);

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder;
  v9 = static Placeholder.titleText.getter();
  v11 = sub_10025084C(v9, v10, UIFontTextStyleBody);

  *(v1 + v8) = v11;
  v12 = OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder;
  type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1006458EC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, unint64_t *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, __n128)@<X6>, uint64_t a8@<X8>)
{
  v225 = a7;
  v221 = a6;
  v222 = a2;
  v227 = a8;
  v215 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v215);
  v205 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v198 = &v182 - v15;
  v16 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v213 = *(v16 - 8);
  v214 = v16;
  __chkstk_darwin(v16);
  v220 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v210 = &v182 - v19;
  v20 = sub_10002849C(&qword_1009794E0, &unk_1007C4840);
  __chkstk_darwin(v20 - 8);
  v219 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v218 = &v182 - v23;
  __chkstk_darwin(v24);
  v209 = &v182 - v25;
  __chkstk_darwin(v26);
  v208 = &v182 - v27;
  v28 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v28 - 8);
  v204 = &v182 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v203 = &v182 - v31;
  __chkstk_darwin(v32);
  v197 = &v182 - v33;
  __chkstk_darwin(v34);
  v196 = &v182 - v35;
  v36 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v211 = *(v36 - 8);
  __chkstk_darwin(v36);
  v202 = &v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v201 = &v182 - v39;
  __chkstk_darwin(v40);
  v200 = &v182 - v41;
  __chkstk_darwin(v42);
  v217 = &v182 - v43;
  __chkstk_darwin(v44);
  v195 = &v182 - v45;
  __chkstk_darwin(v46);
  v194 = &v182 - v47;
  __chkstk_darwin(v48);
  v193 = &v182 - v49;
  __chkstk_darwin(v50);
  v207 = &v182 - v51;
  v52 = sub_10002849C(&unk_100984380, &qword_1007C4850);
  __chkstk_darwin(v52 - 8);
  v184 = &v182 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v186 = &v182 - v55;
  __chkstk_darwin(v56);
  v189 = &v182 - v57;
  __chkstk_darwin(v58);
  v192 = &v182 - v59;
  __chkstk_darwin(v60);
  v191 = &v182 - v61;
  __chkstk_darwin(v62);
  v185 = &v182 - v63;
  __chkstk_darwin(v64);
  v188 = &v182 - v65;
  __chkstk_darwin(v66);
  v187 = &v182 - v67;
  __chkstk_darwin(v68);
  v190 = &v182 - v69;
  __chkstk_darwin(v70);
  v216 = &v182 - v71;
  __chkstk_darwin(v72);
  v206 = &v182 - v73;
  v74 = type metadata accessor for ShelfBackground();
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v77 = &v182 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __chkstk_darwin(v78);
  v81 = &v182 - v80;
  v223 = v8;
  a3(0, v79);
  v224 = a4;
  v226 = a5;
  v82 = a5;
  v83 = v221;
  sub_10064889C(a4, v82, v221);
  v84 = dispatch thunk of ShelfPresenter.doesShelfExist(for:)();
  v85 = 0;
  if (v84)
  {
    v85 = dispatch thunk of ShelfPresenter.shelf(for:)();
  }

  v228 = v85;
  v212 = v36;
  dispatch thunk of ShelfPresenter.eyebrow(for:)();
  v87 = v86;
  if (v86)
  {
  }

  v199 = v87;
  dispatch thunk of ShelfPresenter.subtitle(for:)();
  v89 = v88;
  if (v88)
  {
  }

  dispatch thunk of ShelfPresenter.background(for:)();
  (*(v75 + 104))(v77, enum case for ShelfBackground.interactive(_:), v74);
  v90 = static ShelfBackground.== infix(_:_:)();
  v91 = *(v75 + 8);
  v91(v77, v74);
  v91(v81, v74);
  v92 = v222;
  v94 = v224;
  v93 = v225;
  v95 = v226;
  v96 = v83;
  v97 = sub_100647550(a1, v222, v225, v224, v226, v83);
  v98 = sub_100647324(a1, v92, v93, v94, v95, v96);
  if (v90)
  {
    sub_1001EE328(v89 != 0, v227);

    return;
  }

  v99 = v89;
  v183 = v89;
  if (v97)
  {
    if (v228)
    {

      v100 = Shelf.header.getter();

      v101 = v200;
      v102 = v216;
      if (v100)
      {
        ShelfHeader.configuration.getter();

        v103 = 0;
      }

      else
      {
        v103 = 1;
      }
    }

    else
    {
      v103 = 1;
      v101 = v200;
      v102 = v216;
    }

    v108 = type metadata accessor for ShelfHeader.Configuration();
    v109 = *(v108 - 8);
    (*(v109 + 56))(v102, v103, 1, v108);
    v110 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
    v225 = *(v110 - 1);
    (*(v225 + 7))(v218, 1, 1, v110);
    v226 = v110;
    if (v99)
    {
      v111 = (v109 + 48);
      if (v97 == 1)
      {
        v112 = v191;
        sub_100031660(v102, v191, &unk_100984380, &qword_1007C4850);
        if ((*v111)(v112, 1, v108) == 1)
        {
          sub_10002B894(v112, &unk_100984380, &qword_1007C4850);
          v113 = 0;
        }

        else
        {
          v113 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v109 + 8))(v112, v108);
        }

        v121 = v212;
        v122 = v203;
        sub_100512504(v113, v217);

        if (qword_10096E7C0 != -1)
        {
          swift_once();
        }

        v123 = qword_1009D27A8;
      }

      else
      {
        v116 = v192;
        sub_100031660(v102, v192, &unk_100984380, &qword_1007C4850);
        if ((*v111)(v116, 1, v108) == 1)
        {
          sub_10002B894(v116, &unk_100984380, &qword_1007C4850);
          v117 = 0;
        }

        else
        {
          v117 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v109 + 8))(v116, v108);
        }

        v121 = v212;
        v122 = v203;
        sub_100512504(v117, v217);

        if (qword_10096E7B0 != -1)
        {
          swift_once();
        }

        v123 = qword_1009D2778;
      }

      v124 = sub_1000056A8(v121, v123);
      sub_1003FAE20(v124, v101, type metadata accessor for TitleHeaderView.TextConfiguration);
      if (qword_10096E770 != -1)
      {
        swift_once();
      }

      v125 = 0;
      v126 = qword_1009D26B8;
      v127 = v122;
    }

    else
    {
      if (v97 == 1)
      {
        v114 = v189;
        sub_100031660(v102, v189, &unk_100984380, &qword_1007C4850);
        if ((*(v109 + 48))(v114, 1, v108) == 1)
        {
          sub_10002B894(v114, &unk_100984380, &qword_1007C4850);
          v115 = 0;
        }

        else
        {
          v115 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v109 + 8))(v114, v108);
        }

        v121 = v212;
        v122 = v203;
        sub_100512504(v115, v217);

        if (qword_10096E7B8 != -1)
        {
          swift_once();
        }

        v125 = 1;
        v126 = qword_1009D2790;
      }

      else
      {
        v118 = (v109 + 48);
        if (v199)
        {
          v119 = v186;
          sub_100031660(v102, v186, &unk_100984380, &qword_1007C4850);
          if ((*v118)(v119, 1, v108) == 1)
          {
            sub_10002B894(v119, &unk_100984380, &qword_1007C4850);
            v120 = 0;
          }

          else
          {
            v120 = ShelfHeader.Configuration.eyebrowColor.getter();
            (*(v109 + 8))(v119, v108);
          }

          v121 = v212;
          v122 = v203;
          sub_10051250C(v120, v217);

          if (qword_10096E7A8 != -1)
          {
            swift_once();
          }

          v125 = 1;
          v126 = qword_1009D2760;
        }

        else
        {
          v143 = v184;
          sub_100031660(v102, v184, &unk_100984380, &qword_1007C4850);
          if ((*v118)(v143, 1, v108) == 1)
          {
            sub_10002B894(v143, &unk_100984380, &qword_1007C4850);
            v144 = 0;
          }

          else
          {
            v144 = ShelfHeader.Configuration.eyebrowColor.getter();
            (*(v109 + 8))(v143, v108);
          }

          v121 = v212;
          v122 = v203;
          sub_100512504(v144, v217);

          if (qword_10096E7A0 != -1)
          {
            swift_once();
          }

          v125 = 1;
          v126 = qword_1009D2748;
        }
      }

      v127 = v101;
    }

    LODWORD(v224) = v99 != 0;
    v165 = sub_1000056A8(v121, v126);
    sub_1003FAE20(v165, v127, type metadata accessor for TitleHeaderView.TextConfiguration);
    (*(v211 + 56))(v122, v125, 1, v121);
    v166 = v217;
    v167 = v201;
    sub_1003FAE20(v217, v201, type metadata accessor for TitleHeaderView.TextConfiguration);
    v168 = v202;
    sub_1003FAE20(v101, v202, type metadata accessor for TitleHeaderView.TextConfiguration);
    v169 = v101;
    v170 = v204;
    sub_100031660(v122, v204, &qword_1009794E8, &unk_1007C18C0);
    v171 = v218;
    sub_100031660(v218, v219, &qword_1009794E0, &unk_1007C4840);
    v173 = v213;
    v172 = v214;
    (*(v213 + 104))(v220, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v214);
    sub_100028BB8();
    v174 = static UIColor.defaultLine.getter();

    sub_10002B894(v171, &qword_1009794E0, &unk_1007C4840);
    sub_10002B894(v122, &qword_1009794E8, &unk_1007C18C0);
    sub_1001EFF9C(v169);
    sub_1001EFF9C(v166);
    sub_10002B894(v216, &unk_100984380, &qword_1007C4850);
    v175 = v215;
    v176 = *(v215 + 32);
    v177 = v167;
    v160 = v205;
    sub_1001EFEC4(v177, v205, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1001EFEC4(v168, v160 + v175[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1001EFE54(v170, v160 + v175[6]);
    *(v160 + v175[7]) = 0;
    *(v160 + v176) = 0;
    *(v160 + v175[9]) = v224;
    *(v160 + v175[14]) = 0x4030000000000000;
    *(v160 + v175[12]) = 0;
    *(v160 + v175[13]) = v174;
    v178 = v219;
    (*(v173 + 32))(v160 + v175[11], v220, v172);
    v180 = v225;
    v179 = v226;
    if ((*(v225 + 6))(v178, 1, v226) == 1)
    {
      sub_10002B894(v178, &qword_1009794E0, &unk_1007C4840);
      if (v183)
      {
        v181 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
      }

      else
      {
        v181 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
      }

      (*(v180 + 13))(v160 + v175[10], *v181, v179);
    }

    else
    {
      (*(v180 + 4))(v160 + v175[10], v178, v179);
    }

    goto LABEL_101;
  }

  LODWORD(v226) = v98;
  if (v228)
  {

    v104 = Shelf.header.getter();

    v105 = v193;
    v106 = v206;
    if (v104)
    {
      ShelfHeader.configuration.getter();

      v107 = 0;
    }

    else
    {
      v107 = 1;
    }
  }

  else
  {
    v107 = 1;
    v105 = v193;
    v106 = v206;
  }

  v128 = type metadata accessor for ShelfHeader.Configuration();
  v129 = *(v128 - 8);
  (*(v129 + 56))(v106, v107, 1, v128);
  v130 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v224 = *(v130 - 1);
  v225 = v130;
  (v224[7])(v208, 1, 1);
  v131 = (v129 + 48);
  if (v199)
  {
    if (v99)
    {
      v132 = v190;
      sub_100031660(v106, v190, &unk_100984380, &qword_1007C4850);
      if ((*v131)(v132, 1, v128) == 1)
      {
        sub_10002B894(v132, &unk_100984380, &qword_1007C4850);
        v133 = 0;
      }

      else
      {
        v133 = ShelfHeader.Configuration.eyebrowColor.getter();
        (*(v129 + 8))(v132, v128);
      }

      v138 = v212;
      v139 = v196;
      sub_100512504(v133, v207);

      if (qword_10096E798 != -1)
      {
        swift_once();
      }

      v140 = qword_1009D2730;
LABEL_68:
      v145 = sub_1000056A8(v138, v140);
      sub_1003FAE20(v145, v105, type metadata accessor for TitleHeaderView.TextConfiguration);
      if (qword_10096E770 != -1)
      {
        swift_once();
      }

      v146 = 0;
      v147 = qword_1009D26B8;
      v148 = v139;
      goto LABEL_84;
    }

    v136 = v187;
    sub_100031660(v106, v187, &unk_100984380, &qword_1007C4850);
    if ((*v131)(v136, 1, v128) == 1)
    {
      sub_10002B894(v136, &unk_100984380, &qword_1007C4850);
      v137 = 0;
    }

    else
    {
      v137 = ShelfHeader.Configuration.eyebrowColor.getter();
      (*(v129 + 8))(v136, v128);
    }

    v138 = v212;
    v139 = v196;
    sub_100512504(v137, v207);

    if (qword_10096E780 != -1)
    {
      swift_once();
    }

    v146 = 1;
    v147 = qword_1009D26E8;
  }

  else
  {
    if (v99)
    {
      v134 = v188;
      sub_100031660(v106, v188, &unk_100984380, &qword_1007C4850);
      if ((*v131)(v134, 1, v128) == 1)
      {
        sub_10002B894(v134, &unk_100984380, &qword_1007C4850);
        v135 = 0;
      }

      else
      {
        v135 = ShelfHeader.Configuration.eyebrowColor.getter();
        (*(v129 + 8))(v134, v128);
      }

      v138 = v212;
      v139 = v196;
      sub_100512504(v135, v207);

      if (qword_10096E790 != -1)
      {
        swift_once();
      }

      v140 = qword_1009D2718;
      goto LABEL_68;
    }

    v141 = v185;
    sub_100031660(v106, v185, &unk_100984380, &qword_1007C4850);
    if ((*v131)(v141, 1, v128) == 1)
    {
      sub_10002B894(v141, &unk_100984380, &qword_1007C4850);
      v142 = 0;
    }

    else
    {
      v142 = ShelfHeader.Configuration.eyebrowColor.getter();
      (*(v129 + 8))(v141, v128);
    }

    v138 = v212;
    v139 = v196;
    sub_100512504(v142, v207);

    if (qword_10096E778 != -1)
    {
      swift_once();
    }

    v146 = 1;
    v147 = qword_1009D26D0;
  }

  v148 = v105;
LABEL_84:
  LODWORD(v223) = v99 != 0;
  v149 = sub_1000056A8(v138, v147);
  sub_1003FAE20(v149, v148, type metadata accessor for TitleHeaderView.TextConfiguration);
  (*(v211 + 56))(v139, v146, 1, v138);
  v150 = v207;
  v151 = v194;
  sub_1003FAE20(v207, v194, type metadata accessor for TitleHeaderView.TextConfiguration);
  v152 = v195;
  sub_1003FAE20(v105, v195, type metadata accessor for TitleHeaderView.TextConfiguration);
  v153 = v197;
  sub_100031660(v139, v197, &qword_1009794E8, &unk_1007C18C0);
  v154 = v208;
  sub_100031660(v208, v209, &qword_1009794E0, &unk_1007C4840);
  v155 = v213;
  v156 = v214;
  (*(v213 + 104))(v210, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v214);
  sub_100028BB8();
  v222 = static UIColor.defaultLine.getter();

  sub_10002B894(v154, &qword_1009794E0, &unk_1007C4840);
  sub_10002B894(v139, &qword_1009794E8, &unk_1007C18C0);
  sub_1001EFF9C(v105);
  sub_1001EFF9C(v150);
  sub_10002B894(v206, &unk_100984380, &qword_1007C4850);
  v157 = v215;
  v158 = *(v215 + 32);
  v159 = v151;
  v160 = v198;
  sub_1001EFEC4(v159, v198, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFEC4(v152, v160 + v157[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFE54(v153, v160 + v157[6]);
  *(v160 + v157[7]) = v226 & 1;
  *(v160 + v158) = 0;
  *(v160 + v157[9]) = v223;
  *(v160 + v157[14]) = 0x4030000000000000;
  *(v160 + v157[12]) = 0;
  *(v160 + v157[13]) = v222;
  v161 = v209;
  (*(v155 + 32))(v160 + v157[11], v210, v156);
  v163 = v224;
  v162 = v225;
  if ((v224[6])(v161, 1, v225) == 1)
  {
    sub_10002B894(v161, &qword_1009794E0, &unk_1007C4840);
    if (v183)
    {
      v164 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v164 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (v163[13])(v160 + v157[10], *v164, v162);
  }

  else
  {
    (v163[4])(v160 + v157[10], v161, v162);
  }

LABEL_101:
  sub_1001EFEC4(v160, v227, type metadata accessor for TitleHeaderView.Style);
}

void *sub_1006472CC()
{

  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_100647324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a2;
  v26 = a6;
  v10 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for Shelf.ContentType();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0, v15);
  sub_10064889C(a4, a5, v26);
  v18 = a1;
  dispatch thunk of ShelfPresenter.contentType(for:)();
  v19 = sub_1005D8420();
  v21 = v20;
  (*(v14 + 8))(v17, v13);
  if (v19)
  {
    if (v18 < 1)
    {
      v22 = 1;
    }

    else
    {
      dispatch thunk of ShelfPresenter.contentType(for:)();
      v22 = 0;
    }

    (*(v14 + 56))(v12, v22, 1, v13);
    v23 = (*(v21 + 96))(v12, v25, v19, v21);
    sub_10002B894(v12, &unk_100992460, &qword_1007B6BF0);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_100647550(uint64_t a1, void *a2, uint64_t (*a3)(void, __n128), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v70 = a2;
  v11 = sub_10002849C(&qword_10098CB20, &qword_1007D61F0);
  __chkstk_darwin(v11);
  v72 = &v63 - v12;
  v13 = type metadata accessor for ShelfBackground();
  v71 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v74 = &v63 - v19;
  v23 = __chkstk_darwin(v20);
  v73 = &v63 - v24;
  if (a1 >= 1)
  {
    v67 = v22;
    v68 = v21;
    a3(0, v23);
    sub_10064889C(a4, a5, a6);
    if (dispatch thunk of ShelfPresenter.sectionCount.getter() >= 1)
    {
      v25 = v73;
      dispatch thunk of ShelfPresenter.background(for:)();
      v26 = v74;
      dispatch thunk of ShelfPresenter.background(for:)();
      v27 = v25;
      v28 = *(v11 + 48);
      v30 = v71;
      v29 = v72;
      v31 = v71[2];
      v31(v72, v27, v13);
      v69 = v28;
      v31((v29 + v28), v26, v13);
      v32 = v30[11];
      v33 = v32(v29, v13);
      if (v33 == enum case for ShelfBackground.color(_:))
      {
        v34 = v33;
        v35 = v68;
        v31(v68, v29, v13);
        v64 = v30[12];
        v64(v35, v13);
        v65 = *v35;
        v63 = sub_10002849C(&qword_100972A40, &unk_1007B3750);
        v66 = *(v63 + 48);
        if (v32(v29 + v69, v13) == v34)
        {
          v36 = v67;
          v31(v67, &v72[v69], v13);
          v64(v36, v13);
          v37 = *v36;
          v64 = *(v63 + 48);
          v38 = v70;
          v39 = [v70 traitCollection];
          v40 = v65;
          v41 = [v65 resolvedColorWithTraitCollection:v39];

          v42 = [v38 traitCollection];
          v43 = [v37 resolvedColorWithTraitCollection:v42];

          sub_100028BB8();
          LOBYTE(v42) = static NSObject.== infix(_:_:)();

          v44 = v69;
          if ((v42 & 1) == 0)
          {
            v59 = v71[1];
            v59(v74, v13);
            v59(v73, v13);
            v60 = type metadata accessor for ShelfBackgroundStyle();
            v61 = *(*(v60 - 8) + 8);
            v61(v64 + v36, v60);
            v61(v68 + v66, v60);
            v62 = v72;
            v59(&v72[v44], v13);
            v59(v62, v13);
            return 2;
          }

          v45 = type metadata accessor for ShelfBackgroundStyle();
          v46 = *(*(v45 - 8) + 8);
          v46(v64 + v36, v45);
          v46(v68 + v66, v45);
        }

        else
        {
          v47 = type metadata accessor for ShelfBackgroundStyle();
          (*(*(v47 - 8) + 8))(v35 + v66, v47);
        }

        v30 = v71;
        v29 = v72;
      }

      v48 = enum case for ShelfBackground.none(_:);
      v49 = v30[13];
      v49(v15, enum case for ShelfBackground.none(_:), v13);
      v50 = sub_10064889C(&qword_100981230, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = v30[1];
      v52(v15, v13);
      if ((v51 & 1) == 0)
      {
        v49(v15, v48, v13);
        v53 = static ShelfBackground.== infix(_:_:)();
        v52(v15, v13);
        if (v53)
        {
          v52(v74, v13);
          v52(v73, v13);
LABEL_14:
          v52((v29 + v69), v13);
          v52(v29, v13);
          return 2;
        }
      }

      v71 = v50;
      v49(v15, v48, v13);
      v54 = v73;
      v55 = static ShelfBackground.== infix(_:_:)();
      v52(v15, v13);
      if (v55)
      {
        v49(v15, v48, v13);
        v56 = v74;
        v57 = dispatch thunk of static Equatable.== infix(_:_:)();
        v52(v15, v13);
        v52(v56, v13);
        v52(v54, v13);
        if ((v57 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v52(v74, v13);
        v52(v54, v13);
      }

      sub_10002B894(v29, &qword_10098CB20, &qword_1007D61F0);
    }
  }

  return 0;
}

BOOL sub_100647DB4(uint64_t a1, uint64_t (*a2)(void, __n128), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = type metadata accessor for Shelf.ContentType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v20 - v15;
  a2(0, v14);
  sub_10064889C(a3, a4, a5);
  dispatch thunk of ShelfPresenter.contentType(for:)();
  (*(v10 + 32))(v12, v16, v9);
  v17 = (*(v10 + 88))(v12, v9);
  if (v17 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v18 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  }

  else if (v17 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v18 = type metadata accessor for InformationRibbonCollectionViewCell(0);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    v18 = 0;
  }

  return v18 != 0;
}

uint64_t sub_100647F78@<X0>(uint64_t a1@<X8>)
{
  v52 = type metadata accessor for IndexPath();
  v2 = *(v52 - 8);
  __chkstk_darwin(v52);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Shelf.ContentType();
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v33 - v8;
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  __chkstk_darwin(v12);
  v50 = &v33 - v13;
  v14 = type metadata accessor for GenericPagePresenter();
  v42 = sub_10064889C(&qword_100970C98, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  v43 = v14;
  result = dispatch thunk of ShelfPresenter.sectionCount.getter();
  if (result < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (result)
    {
      v47 = v11;
      v36 = a1;
      v16 = 0;
      v46 = enum case for Shelf.ContentType.privacyType(_:);
      v45 = (v5 + 104);
      v48 = (v5 + 8);
      v39 = (v5 + 32);
      v38 = (v5 + 88);
      v37 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
      v34 = enum case for Shelf.ContentType.informationRibbon(_:);
      v35 = v2;
      v17 = (v2 + 8);
      v49 = result;
      v44 = v4;
      while (1)
      {
        if (dispatch thunk of BaseShelfPresenter.doesShelfExist(for:)())
        {
          dispatch thunk of BaseShelfPresenter.contentType(for:)();
          v18 = v47;
          (*v45)(v47, v46, v51);
          sub_10064889C(&qword_100971EE8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v53 == v55 && v54 == v56)
          {
            v19 = 1;
          }

          else
          {
            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v20 = *v48;
          v21 = v18;
          v22 = v51;
          (*v48)(v21, v51);
          v20(v50, v22);

          v23 = v44;
          if ((v19 & 1) != 0 && v16 < dispatch thunk of ShelfPresenter.sectionCount.getter() && (dispatch thunk of ShelfPresenter.isShelfHidden(for:)() & 1) == 0)
          {
            v33 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
            v24 = v40;
            dispatch thunk of ShelfPresenter.contentType(for:)();
            v25 = v41;
            v26 = v24;
            v27 = v51;
            (*v39)(v41, v26, v51);
            v28 = (*v38)(v25, v27);
            v29 = 1;
            if (v28 == v37 || v28 == v34)
            {
              break;
            }

            result = (v20)(v41, v51);
            if (v33 < 0)
            {
              __break(1u);
              goto LABEL_26;
            }

            v29 = v33;
            if (v33)
            {
              break;
            }
          }
        }

LABEL_4:
        if (++v16 == v49)
        {
          v32 = 1;
          a1 = v36;
          v2 = v35;
          return (*(v2 + 56))(a1, v32, 1, v52);
        }
      }

      v30 = 0;
      while (1)
      {
        IndexPath.init(item:section:)();
        dispatch thunk of BaseShelfPresenter.model(at:)();
        sub_10002849C(&qword_100973D50, &unk_1007B3840);
        type metadata accessor for PrivacyType();
        if (swift_dynamicCast())
        {
          v31 = PrivacyType.wantsScrollFocus.getter();

          if (v31)
          {
            break;
          }
        }

        (*v17)(v23, v52);
        if (v29 == ++v30)
        {
          goto LABEL_4;
        }
      }

      v2 = v35;
      a1 = v36;
      (*(v35 + 32))(v36, v23, v52);
      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    return (*(v2 + 56))(a1, v32, 1, v52);
  }

  return result;
}

void sub_100648560(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  dispatch thunk of BaseShelfPresenter.contentType(for:)();
  (*(v6 + 104))(v8, enum case for Shelf.ContentType.privacyCategory(_:), v5);
  sub_10064889C(&qword_100971EE8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v20 == v19)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);
  }

  else
  {
    v17 = a2;
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v14 = *(v6 + 8);
    v14(v8, v5);
    v14(v11, v5);

    if ((v13 & 1) == 0)
    {
      sub_1006458EC(a1, v17, &type metadata accessor for GenericPagePresenter, &qword_100970C98, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter, &type metadata accessor for GenericPagePresenter, v18);
      return;
    }
  }

  if (qword_10096D3A8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for TitleHeaderView.Style(0);
  v16 = sub_1000056A8(v15, qword_1009CE848);
  sub_1003FAE20(v16, v18, type metadata accessor for TitleHeaderView.Style);
}

uint64_t type metadata accessor for PrivacyDetailDataSource(uint64_t a1)
{
  result = qword_100990538;
  if (!qword_100990538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10064889C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1006488FC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for AppStoreEngagementEvent();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppStoreEngagementManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  (*(v4 + 104))(v6, enum case for AppStoreEngagementEvent.didSubscribeToArcade(_:), v3);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  AppStoreEngagementManager.recordEngagement(event:resultHandler:)();

  (*(v4 + 8))(v6, v3);

  type metadata accessor for InAppMessagesManager();
  inject<A, B>(_:from:)();
  sub_100293000();

  return result;
}

uint64_t sub_100648AEC(uint64_t a1, uint64_t (*a2)(__n128), void *a3)
{
  v6 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  result = a2(v7);
  if (result)
  {
    v11 = result;
    v12 = *(v3 + *a3);
    v13 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v9, 1, v13) == 1)
    {

      return sub_10002B894(v9, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9AF4(v11, 1, v12, v9);

      return (*(v14 + 8))(v9, v13);
    }
  }

  return result;
}

double sub_100648C88(uint64_t (*a1)(__n128))
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = a1(v4);
  if (v7)
  {
    v8 = v7;
    v9 = *(v1 + OBJC_IVAR____TtC8AppStore27MarketingItemViewController_objectGraph);
    v10 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {

      sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9AF4(v8, 1, v9, v6);

      (*(v11 + 8))(v6, v10);
    }
  }

  return sub_1006488FC(&OBJC_IVAR____TtC8AppStore27MarketingItemViewController_objectGraph, &unk_1008CCDE8, sub_10064AD70);
}

double sub_100648E3C(uint64_t (*a1)(__n128))
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = a1(v4);
  if (v7)
  {
    v8 = v7;
    v9 = *(v1 + OBJC_IVAR____TtC8AppStore21DynamicViewController_objectGraph);
    v10 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {

      sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9AF4(v8, 1, v9, v6);

      (*(v11 + 8))(v6, v10);
    }
  }

  return sub_1006488FC(&OBJC_IVAR____TtC8AppStore21DynamicViewController_objectGraph, &unk_1008CCDC0, sub_10064AD4C);
}

void sub_10064903C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + *a3);
      v10 = Strong;

      v11 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {

        sub_10002B894(v7, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        sub_1005F9AF4(a1, 1, v9, v7);

        (*(v12 + 8))(v7, v11);
      }
    }
  }
}

void sub_1006491F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002849C(qword_1009908C0, &unk_1007CA170);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_10002849C(&unk_100986010, &qword_1007DB8A0);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100056164(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100056164(v29, v30);
    v14 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_100056164(v30, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1006494C0()
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
  qword_1009D3168 = type metadata accessor for OSLogger();
  unk_1009D3170 = &protocol witness table for OSLogger;
  sub_1000056E0(qword_1009D3150);
  return OSLogger.init(subsystem:category:)();
}

void sub_100649604(uint64_t a1, uint64_t (*a2)(__n128))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100648E3C(a2);
  }
}

void sub_100649660(uint64_t a1, uint64_t (*a2)(__n128))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100648AEC(&OBJC_IVAR____TtC8AppStore21DynamicViewController_requestInfo, a2, &OBJC_IVAR____TtC8AppStore21DynamicViewController_objectGraph);
  }
}

void *sub_1006496CC(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v12 = Strong;
  v13 = sub_10064A9AC(a1, a3, a4, a5, a6);
  v14 = v13;

  return v13;
}

void sub_100649910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = type metadata accessor for URL();
  __chkstk_darwin(v6 - 8);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_100649AA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore21DynamicViewController_referrer);

  return v1;
}

id sub_100649BC8()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore21DynamicViewController_gridView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_100649C1C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore21DynamicViewController_gridView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

void (*sub_100649CDC(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1005A409C(v2);
  return sub_1000BD370;
}

void *sub_100649D4C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = sub_10064A9AC(a1, a2, a3, a4, a5);
  v6 = v5;
  return v5;
}

uint64_t sub_100649D78(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10064AD94(&qword_1009908E8, v5, type metadata accessor for DynamicViewController, &unk_1007DB7F0);

  return DynamicViewControllerDisplaying.loadGrid(primaryIcon:remainingIcons:)(a1, a2, ObjectType, v6);
}

uint64_t sub_100649E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v5 = sub_10064AD94(&qword_1009908E8, v4, type metadata accessor for DynamicViewController, &unk_1007DB7F0);

  return a3(ObjectType, v5);
}

char *sub_100649FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC8AppStore21DynamicViewController_dynamicDelegate] = 0;
  *&v6[OBJC_IVAR____TtC8AppStore21DynamicViewController_gridPresenter] = 0;
  v13 = &v6[OBJC_IVAR____TtC8AppStore21DynamicViewController_gridView];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v6[OBJC_IVAR____TtC8AppStore21DynamicViewController_objectGraph] = a5;
  *&v6[OBJC_IVAR____TtC8AppStore21DynamicViewController_requestInfo] = a2;
  v14 = &v6[OBJC_IVAR____TtC8AppStore21DynamicViewController_referrer];
  *v14 = a3;
  *(v14 + 1) = a4;
  type metadata accessor for ArtworkLoader();

  BaseObjectGraph.inject<A>(_:)();
  *&v6[OBJC_IVAR____TtC8AppStore21DynamicViewController_artworkLoader] = v38;
  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();
  v15 = ASKBagContract.amsBag.getter();

  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v37.receiver = v6;
  v37.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v37, "initWithBag:URL:", v15, v17);
  swift_unknownObjectRelease();

  sub_100412FA8();
  v20 = v19;
  BaseObjectGraph.inject<A>(_:)();
  v21 = v38;
  v22 = [v38 ams_activeiTunesAccount];

  [v20 setAccount:v22];
  if (DynamicUIRequestInfo.metricsOverlay.getter())
  {
    v23.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v23.super.isa = 0;
  }

  [v20 setMetricsOverlay:v23.super.isa];

  [v20 setAnonymousMetrics:1];
  v24 = DynamicUIRequestInfo.clientOptions.getter();
  if (v24)
  {
    sub_1006491F4(v24);

    v25.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v25.super.isa = 0;
  }

  [v20 setClientOptions:v25.super.isa];

  v26 = v20;
  static ASKBootstrapV2.appStoreTokenServiceClient.getter();
  v27 = String._bridgeToObjectiveC()();

  [v26 setMediaClientIdentifier:v27];

  type metadata accessor for ArcadeSubscriptionManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v31 = objc_allocWithZone(type metadata accessor for DynamicViewControllerDelegate());
  v32 = DynamicViewControllerDelegate.init(subscriptionManager:purchaseSuccessHandler:purchaseFailureHandler:carrierLinkSuccessHandler:carrierLinkFailureHandler:didDismissHandler:contentViewConstructor:)();

  v33 = OBJC_IVAR____TtC8AppStore21DynamicViewController_dynamicDelegate;
  *&v26[OBJC_IVAR____TtC8AppStore21DynamicViewController_dynamicDelegate] = v32;
  swift_unknownObjectRelease();
  [v26 setDelegate:{*&v26[v33], v28, sub_10064A5C8, v29, sub_10064A5F8, v30}];
  type metadata accessor for AutoPlayVideoSettingsManager();
  v34 = static AutoPlayVideoSettingsManager.shared.getter();
  [v26 setMediaContentDelegate:v34];

  v35 = type metadata accessor for URL();
  (*(*(v35 - 8) + 8))(a1, v35);
  return v26;
}

void *sub_10064A600(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  type metadata accessor for UpsellGridPresenter();
  swift_allocObject();

  UpsellGridPresenter.init(objectGraph:contentDictionary:)();
  v11 = objc_allocWithZone(type metadata accessor for UpsellGridView());
  v12 = sub_100451C5C(0);
  [v12 setFrame:{a2, a3, a4, a5}];
  v13 = sub_10064AD94(&unk_1009908D8, 255, type metadata accessor for UpsellGridView, &unk_1007CDB00);
  v14 = (v6 + OBJC_IVAR____TtC8AppStore27MarketingItemViewController_gridView);
  swift_beginAccess();
  v15 = *v14;
  *v14 = v12;
  v14[1] = v13;
  v20 = v12;

  sub_10064AD94(&unk_10098D190, 255, type metadata accessor for MarketingItemViewController, &unk_1007D6730);
  swift_unknownObjectRetain();
  UpsellGridPresenter.view.setter();
  dispatch thunk of BasePresenter.didLoad()();
  if (qword_10096D110 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for OSLogger();
  sub_1000056A8(v16, qword_1009CE1E8);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  type metadata accessor for CGRect(0);
  v21[3] = v17;
  v18 = swift_allocObject();
  v21[0] = v18;
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  static LogMessage.safe(_:)();
  sub_10002B894(v21, &unk_1009711D0, &unk_1007B1A10);
  Logger.info(_:)();

  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  if (CGRectIsEmpty(v22))
  {
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }

  return *v14;
}

void *sub_10064A9AC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  type metadata accessor for UpsellGridPresenter();
  swift_allocObject();

  UpsellGridPresenter.init(objectGraph:contentDictionary:)();
  v11 = objc_allocWithZone(type metadata accessor for UpsellGridView());
  v12 = sub_100451C5C(0);
  [v12 setFrame:{a2, a3, a4, a5}];
  v13 = sub_10064AD94(&unk_1009908D8, 255, type metadata accessor for UpsellGridView, &unk_1007CDB00);
  v14 = (v6 + OBJC_IVAR____TtC8AppStore21DynamicViewController_gridView);
  swift_beginAccess();
  v15 = *v14;
  *v14 = v12;
  v14[1] = v13;
  v21 = v12;

  sub_10064AD94(&unk_1009908B0, v16, type metadata accessor for DynamicViewController, &unk_1007DB7A8);
  swift_unknownObjectRetain();
  UpsellGridPresenter.view.setter();
  dispatch thunk of BasePresenter.didLoad()();
  if (qword_10096D110 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for OSLogger();
  sub_1000056A8(v17, qword_1009CE1E8);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  type metadata accessor for CGRect(0);
  v22[3] = v18;
  v19 = swift_allocObject();
  v22[0] = v19;
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  static LogMessage.safe(_:)();
  sub_10002B894(v22, &unk_1009711D0, &unk_1007B1A10);
  Logger.info(_:)();

  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  if (CGRectIsEmpty(v23))
  {
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }

  return *v14;
}

uint64_t sub_10064AD94(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_10064ADDC(uint64_t a1)
{
  if (qword_10096EBB8 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_1009D3150, qword_1009D3168);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_1000056E0(v4);
  (*(*(v3 - 8) + 16))(v1);
  static LogMessage.safe(_:)();
  sub_10002B894(v4, &unk_1009711D0, &unk_1007B1A10);
  Logger.error(_:)();

  return result;
}

id sub_10064AFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v9 = v8;
  v91 = a8;
  v92 = a7;
  v97 = a5;
  v98 = a4;
  v89 = a3;
  v88 = sub_10002849C(&qword_100990900, qword_1007DB998);
  __chkstk_darwin(v88);
  v90 = v78 - v13;
  v14 = type metadata accessor for OfferType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v100 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for ArcadeState();
  v94 = *(v95 - 1);
  __chkstk_darwin(v95);
  v18 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v101 = *(v19 - 8);
  v102 = v19;
  v20 = *(v101 + 64);
  __chkstk_darwin(v19);
  v99 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v96 = v78 - v22;
  v23 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23 - 8);
  *&v29 = __chkstk_darwin(v26).n128_u64[0];
  if (a1 && a2)
  {
    v81 = v28;
    v85 = v78 - v27;
    v84 = a2;
    v83 = v15;
    v87 = v14;
    *&v9[OBJC_IVAR____TtC8AppStore11OfferButton_displayProperties] = a1;
    swift_retain_n();

    v110 = 0;
    v108 = 0u;
    v109 = 0u;
    v30 = OBJC_IVAR____TtC8AppStore11OfferButton_presenter;
    swift_beginAccess();
    v80 = v30;
    sub_1006535D4(&v108, &v9[v30]);
    swift_endAccess();
    swift_weakAssign();
    type metadata accessor for ArcadeSubscriptionManager();
    v78[3] = type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v31 = v108;
    ArcadeSubscriptionManager.removeSubscriptionStateActions(for:)();
    v32 = OfferDisplayProperties.isArcadeOffer.getter();
    v93 = a1;
    v86 = v31;
    if (v32)
    {
      v33 = swift_allocObject();
      v82 = v9;
      v79 = v33;
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      v78[1] = v34;
      swift_weakInit();
      v78[2] = a6;
      sub_100031660(v98, v85, &unk_100973230, &unk_1007B17E0);
      v35 = v101;
      v36 = v102;
      v37 = v96;
      (*(v101 + 16))(v96, v97, v102);
      v38 = (*(v24 + 80) + 56) & ~*(v24 + 80);
      v39 = (v25 + *(v35 + 80) + v38) & ~*(v35 + 80);
      v40 = swift_allocObject();
      v41 = v79;
      *(v40 + 2) = v34;
      *(v40 + 3) = v41;
      v42 = v84;
      *(v40 + 4) = v93;
      *(v40 + 5) = v42;
      *(v40 + 6) = v89;
      sub_10065368C(v85, &v40[v38]);
      (*(v35 + 32))(&v40[v39], v37, v36);
      v43 = &v40[v39 + v20];
      *v43 = v92 & 1;
      v43[1] = v91 & 1;

      ArcadeSubscriptionManager.addSubscriptionStateObserver(_:action:)();
      v9 = v82;
      a1 = v93;

      v31 = v86;
    }

    ArcadeSubscriptionManager.subscriptionState.getter();
    v44 = v31;
    v45 = ArcadeState.isSubscribed.getter();
    (*(v94 + 8))(v18, v95);
    v46 = v100;
    OfferDisplayProperties.offerType.getter();
    if (!sub_10064C380(v46, a1, v45 & 1))
    {

      return (*(v83 + 8))(v46, v87);
    }

    v47 = v101 + 16;
    v48 = *(v101 + 16);
    v48(v99, v97, v102);
    sub_100031660(v98, v81, &unk_100973230, &unk_1007B17E0);
    v49 = *(v88 + 48);
    v50 = v83;
    v51 = v90;
    v52 = v46;
    v53 = v87;
    (*(v83 + 16))(v90, v52, v87);
    *(v51 + v49) = v45 & 1;
    v54 = (*(v50 + 88))(v51, v53);
    if (v54 == enum case for OfferType.app(_:))
    {
LABEL_7:
      (*(v50 + 8))(v51, v53);
      sub_10002849C(&unk_100973AF0, &qword_1007B3960);
      inject<A, B>(_:from:)();
      v97 = v104;
      v98 = v103;
      sub_10002849C(&qword_100972A88, &qword_1007B3968);
      inject<A, B>(_:from:)();
      v106 = type metadata accessor for Restrictions();
      v107 = &protocol witness table for Restrictions;
      inject<A, B>(_:from:)();
      v48(v96, v99, v102);
      v55 = v81;
      sub_100031660(v81, v85, &unk_100973230, &unk_1007B17E0);
      type metadata accessor for ASKBagContract();
      inject<A, B>(_:from:)();
      ASKBagContract.arePreordersCancellable.getter();

      v56 = type metadata accessor for AppOfferButtonPresenter();
      swift_allocObject();

      v57 = AppOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:appStoreInstallStateMonitor:restrictions:subtitlePosition:alignment:hasCompactRedownloads:arePreordersCancellable:includeBetaApps:)();
      sub_10002B894(v55, &unk_100973230, &unk_1007B17E0);
      (*(v101 + 8))(v99, v102);
      *(&v109 + 1) = v56;
      v110 = &protocol witness table for AppOfferButtonPresenter;
      *&v108 = v57;
LABEL_20:
      v68 = objc_opt_self();
      v69 = [v68 areAnimationsEnabled];
      [v68 setAnimationsEnabled:0];
      v70 = OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled;
      v9[OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled] = 0;
      [v9 setHidden:0];
      sub_100653644(&qword_100990908, type metadata accessor for OfferButton, &unk_1007DB8E0);
      sub_100047650(&v108, *(&v109 + 1));
      swift_unknownObjectRetain();
      dispatch thunk of OfferButtonPresenter.view.setter();
      [v68 setAnimationsEnabled:v69];

      (*(v50 + 8))(v100, v87);
      v9[v70] = 1;
      sub_10002C0AC(&v108, v105);
      v71 = v80;
      swift_beginAccess();
      sub_1006535D4(v105, &v9[v71]);
      swift_endAccess();
      return sub_100007000(&v108);
    }

    v94 = v47;
    v95 = v48;
    if (v54 == enum case for OfferType.inAppPurchase(_:))
    {
      v82 = v9;
      sub_10002B894(v81, &unk_100973230, &unk_1007B17E0);
      v59 = v102;
      (*(v101 + 8))(v99, v102);
      if (OfferDisplayProperties.isStreamlinedBuy.getter())
      {
        sub_10002849C(&unk_100973AF0, &qword_1007B3960);
        inject<A, B>(_:from:)();
        type metadata accessor for Restrictions();
        inject<A, B>(_:from:)();
        v95(v96, v97, v59);
        sub_100031660(v98, v85, &unk_100973230, &unk_1007B17E0);
        v60 = type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
        swift_allocObject();

        v61 = StreamlinedInAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)();
        v62 = &protocol witness table for StreamlinedInAppPurchaseOfferButtonPresenter;
      }

      else
      {
        sub_10002849C(&unk_100973AF0, &qword_1007B3960);
        inject<A, B>(_:from:)();
        type metadata accessor for Restrictions();
        inject<A, B>(_:from:)();
        v95(v96, v97, v59);
        sub_100031660(v98, v85, &unk_100973230, &unk_1007B17E0);
        v60 = type metadata accessor for InAppPurchaseOfferButtonPresenter();
        swift_allocObject();

        v61 = InAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)();
        v62 = &protocol witness table for InAppPurchaseOfferButtonPresenter;
      }

      *(&v109 + 1) = v60;
      v110 = v62;
      *&v108 = v61;
      v50 = v83;
      (*(v83 + 8))(v90, v87);
      v9 = v82;
      goto LABEL_20;
    }

    v63 = v101;
    v64 = v102;
    v65 = v99;
    if (v54 == enum case for OfferType.arcade(_:))
    {
      sub_10002B894(v81, &unk_100973230, &unk_1007B17E0);
      (*(v63 + 8))(v65, v64);
      v95(v96, v97, v64);
      sub_100031660(v98, v85, &unk_100973230, &unk_1007B17E0);
      v66 = type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
      swift_allocObject();

      v67 = ArcadeSubscriptionOfferButtonPresenter.init(displayProperties:buttonAction:subscribedButtonAction:subtitlePosition:asPartOf:alignment:)();
      *(&v109 + 1) = v66;
      v110 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;
      *&v108 = v67;
    }

    else
    {
      if (v54 != enum case for OfferType.arcadeApp(_:))
      {
        sub_10002849C(&unk_100973AF0, &qword_1007B3960);
        inject<A, B>(_:from:)();
        v97 = v104;
        v98 = v103;
        sub_10002849C(&qword_100972A88, &qword_1007B3968);
        inject<A, B>(_:from:)();
        v106 = type metadata accessor for Restrictions();
        v107 = &protocol witness table for Restrictions;
        inject<A, B>(_:from:)();
        v72 = v102;
        v95(v96, v65, v102);
        v73 = v81;
        sub_100031660(v81, v85, &unk_100973230, &unk_1007B17E0);
        type metadata accessor for ASKBagContract();
        inject<A, B>(_:from:)();
        ASKBagContract.arePreordersCancellable.getter();

        v74 = type metadata accessor for AppOfferButtonPresenter();
        swift_allocObject();

        v75 = AppOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:appStoreInstallStateMonitor:restrictions:subtitlePosition:alignment:hasCompactRedownloads:arePreordersCancellable:includeBetaApps:)();
        sub_10002B894(v73, &unk_100973230, &unk_1007B17E0);
        (*(v101 + 8))(v99, v72);
        *(&v109 + 1) = v74;
        v110 = &protocol witness table for AppOfferButtonPresenter;
        *&v108 = v75;
        sub_10002B894(v90, &qword_100990900, qword_1007DB998);
        v50 = v83;
        goto LABEL_20;
      }

      v50 = v83;
      v48 = v95;
      if (v45)
      {
        goto LABEL_7;
      }

      sub_10002B894(v81, &unk_100973230, &unk_1007B17E0);
      (*(v101 + 8))(v99, v102);
      type metadata accessor for OfferStateAction();
      if (swift_dynamicCastClass())
      {
        OfferStateAction.subscribePageAction.getter();
      }

      v95(v96, v97, v102);
      sub_100031660(v98, v85, &unk_100973230, &unk_1007B17E0);
      v76 = type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
      swift_allocObject();

      v77 = ArcadeSubscriptionOfferButtonPresenter.init(displayProperties:buttonAction:subscribedButtonAction:subtitlePosition:asPartOf:alignment:)();
      *(&v109 + 1) = v76;
      v110 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;

      *&v108 = v77;
    }

    v50 = v83;
    (*(v83 + 8))(v51, v87);
    goto LABEL_20;
  }

  return [v9 setHidden:{1, v29}];
}

void (*sub_10064C224(uint64_t *a1))(uint64_t a1, char a2, double a3)
{
  a1[2] = v1;
  v3 = [v1 accessibilityLabel];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_10064C2AC;
}

void sub_10064C2AC(uint64_t a1, char a2, double a3)
{
  v4 = *(a1 + 8);
  if (a2)
  {
    if (v4)
    {

      v5 = String._bridgeToObjectiveC()();
    }

    else
    {
      v5 = 0;
    }

    [*(a1 + 16) setAccessibilityLabel:v5];
  }

  else if (v4)
  {
    v5 = String._bridgeToObjectiveC()();

    [*(a1 + 16) setAccessibilityLabel:v5];
  }

  else
  {
    v5 = 0;
    [*(a1 + 16) setAccessibilityLabel:0];
  }
}

BOOL sub_10064C380(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_10002849C(&qword_100990900, qword_1007DB998);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC8AppStore11OfferButton_presenter;
  swift_beginAccess();
  sub_100031660(v3 + v9, &v19, &qword_1009741F8, qword_1007B5EA8);
  if (!v20)
  {
    sub_10002B894(&v19, &qword_1009741F8, qword_1007B5EA8);
    return 1;
  }

  sub_100005A38(&v19, v21);
  v10 = *(v6 + 48);
  v11 = type metadata accessor for OfferType();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a1, v11);
  v8[v10] = a3 & 1;
  v13 = (*(v12 + 88))(v8, v11);
  if (v13 == enum case for OfferType.app(_:))
  {
    goto LABEL_3;
  }

  if (v13 == enum case for OfferType.inAppPurchase(_:))
  {
    if (OfferDisplayProperties.isStreamlinedBuy.getter())
    {
      v16 = type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
    }

    else
    {
      v16 = type metadata accessor for InAppPurchaseOfferButtonPresenter();
    }

    v14 = v16;
    (*(v12 + 8))(v8, v11);
    goto LABEL_12;
  }

  if (v13 == enum case for OfferType.arcade(_:))
  {
    goto LABEL_9;
  }

  if (v13 != enum case for OfferType.arcadeApp(_:))
  {
    v14 = type metadata accessor for AppOfferButtonPresenter();
    sub_10002B894(v8, &qword_100990900, qword_1007DB998);
    goto LABEL_12;
  }

  if (a3)
  {
LABEL_3:
    (*(v12 + 8))(v8, v11);
    v14 = type metadata accessor for AppOfferButtonPresenter();
  }

  else
  {
LABEL_9:
    (*(v12 + 8))(v8, v11);
    v14 = type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
  }

LABEL_12:
  sub_10002A400(v21, v21[3]);
  DynamicType = swift_getDynamicType();
  sub_100007000(v21);
  return DynamicType != v14;
}

void sub_10064C644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v77 = a8;
  v78 = a7;
  v71 = a6;
  v73 = a5;
  v83 = a4;
  v10 = sub_10002849C(&qword_100990900, qword_1007DB998);
  __chkstk_darwin(v10);
  v76 = v65 - v11;
  v12 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v12 - 8);
  v75 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v80 = v65 - v15;
  v79 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v81 = *(v79 - 8);
  __chkstk_darwin(v79);
  v74 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v65 - v18;
  v20 = type metadata accessor for OfferType();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v84 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ArcadeState();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v82 = Strong;
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (!v28)
    {

      return;
    }

    v29 = v28;
    v72 = v20;
    ArcadeStateChange.newState.getter();
    v30 = ArcadeState.isSubscribed.getter();
    (*(v24 + 8))(v26, v23);
    v31 = v84;
    v32 = v83;
    OfferDisplayProperties.offerType.getter();
    if (!sub_10064C380(v31, v32, v30 & 1))
    {

      (*(v21 + 8))(v31, v72);
      return;
    }

    v68 = v29;
    v69 = a10;
    v67 = a9;
    v33 = v81 + 16;
    v34 = *(v81 + 16);
    v66 = v19;
    v35 = v79;
    v34(v19, v77, v79);
    sub_100031660(v78, v80, &unk_100973230, &unk_1007B17E0);
    v36 = *(v10 + 48);
    v37 = v76;
    v38 = v31;
    v39 = v72;
    (*(v21 + 16))(v76, v38, v72);
    *(v37 + v36) = v30 & 1;
    v70 = v21;
    v40 = (*(v21 + 88))(v37, v39);
    if (v40 != enum case for OfferType.app(_:))
    {
      v65[0] = v34;
      v65[1] = v33;
      if (v40 == enum case for OfferType.inAppPurchase(_:))
      {
        sub_10002B894(v80, &unk_100973230, &unk_1007B17E0);
        (*(v81 + 8))(v19, v35);
        if (OfferDisplayProperties.isStreamlinedBuy.getter())
        {
          sub_10002849C(&unk_100973AF0, &qword_1007B3960);
          type metadata accessor for BaseObjectGraph();
          inject<A, B>(_:from:)();
          type metadata accessor for Restrictions();
          inject<A, B>(_:from:)();
          (v65[0])(v74, v77, v35);
          sub_100031660(v78, v75, &unk_100973230, &unk_1007B17E0);
          v46 = type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
          swift_allocObject();

          v47 = StreamlinedInAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)();
          v48 = &protocol witness table for StreamlinedInAppPurchaseOfferButtonPresenter;
        }

        else
        {
          sub_10002849C(&unk_100973AF0, &qword_1007B3960);
          type metadata accessor for BaseObjectGraph();
          inject<A, B>(_:from:)();
          type metadata accessor for Restrictions();
          inject<A, B>(_:from:)();
          (v65[0])(v74, v77, v35);
          sub_100031660(v78, v75, &unk_100973230, &unk_1007B17E0);
          v46 = type metadata accessor for InAppPurchaseOfferButtonPresenter();
          swift_allocObject();

          v47 = InAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)();
          v48 = &protocol witness table for InAppPurchaseOfferButtonPresenter;
        }

        v91 = v46;
        v92 = v48;
        v90 = v47;
        v45 = v70;
        (*(v70 + 8))(v76, v72);
        goto LABEL_16;
      }

      v49 = v81;
      v50 = v80;
      if (v40 == enum case for OfferType.arcade(_:))
      {
        sub_10002B894(v80, &unk_100973230, &unk_1007B17E0);
        (*(v49 + 8))(v19, v35);
        (v65[0])(v74, v77, v35);
        sub_100031660(v78, v75, &unk_100973230, &unk_1007B17E0);
        v51 = type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
        swift_allocObject();

        v52 = ArcadeSubscriptionOfferButtonPresenter.init(displayProperties:buttonAction:subscribedButtonAction:subtitlePosition:asPartOf:alignment:)();
        v91 = v51;
        v92 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;
        v90 = v52;
        v45 = v70;
        (*(v70 + 8))(v37, v72);
        goto LABEL_16;
      }

      if (v40 != enum case for OfferType.arcadeApp(_:))
      {
        sub_10002849C(&unk_100973AF0, &qword_1007B3960);
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        v78 = v85;
        v77 = v86;
        sub_10002849C(&qword_100972A88, &qword_1007B3968);
        inject<A, B>(_:from:)();
        v88 = type metadata accessor for Restrictions();
        v89 = &protocol witness table for Restrictions;
        inject<A, B>(_:from:)();
        (v65[0])(v74, v19, v35);
        sub_100031660(v50, v75, &unk_100973230, &unk_1007B17E0);
        type metadata accessor for ASKBagContract();
        inject<A, B>(_:from:)();
        ASKBagContract.arePreordersCancellable.getter();

        v61 = type metadata accessor for AppOfferButtonPresenter();
        swift_allocObject();

        v62 = AppOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:appStoreInstallStateMonitor:restrictions:subtitlePosition:alignment:hasCompactRedownloads:arePreordersCancellable:includeBetaApps:)();
        sub_10002B894(v50, &unk_100973230, &unk_1007B17E0);
        (*(v81 + 8))(v19, v79);
        v91 = v61;
        v92 = &protocol witness table for AppOfferButtonPresenter;
        v90 = v62;
        sub_10002B894(v37, &qword_100990900, qword_1007DB998);
        goto LABEL_6;
      }

      v39 = v72;
      v34 = v65[0];
      if ((v30 & 1) == 0)
      {
        sub_10002B894(v80, &unk_100973230, &unk_1007B17E0);
        (*(v81 + 8))(v66, v35);
        if (v73)
        {
          type metadata accessor for OfferStateAction();
          v58 = swift_dynamicCastClass();
          v59 = v72;
          v60 = v65[0];
          if (v58)
          {
            OfferStateAction.subscribePageAction.getter();
            v35 = v79;
          }

          v60(v74, v77, v35);
        }

        else
        {
          v59 = v72;
          (v65[0])(v74, v77, v35);
        }

        sub_100031660(v78, v75, &unk_100973230, &unk_1007B17E0);
        v63 = type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
        swift_allocObject();

        v64 = ArcadeSubscriptionOfferButtonPresenter.init(displayProperties:buttonAction:subscribedButtonAction:subtitlePosition:asPartOf:alignment:)();
        v91 = v63;
        v92 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;

        v90 = v64;
        v45 = v70;
        (*(v70 + 8))(v76, v59);
        goto LABEL_16;
      }
    }

    (*(v70 + 8))(v37, v39);
    sub_10002849C(&unk_100973AF0, &qword_1007B3960);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v78 = v86;
    sub_10002849C(&qword_100972A88, &qword_1007B3968);
    inject<A, B>(_:from:)();
    v88 = type metadata accessor for Restrictions();
    v89 = &protocol witness table for Restrictions;
    inject<A, B>(_:from:)();
    v41 = v66;
    v34(v74, v66, v35);
    v42 = v80;
    sub_100031660(v80, v75, &unk_100973230, &unk_1007B17E0);
    type metadata accessor for ASKBagContract();
    inject<A, B>(_:from:)();
    ASKBagContract.arePreordersCancellable.getter();

    v43 = type metadata accessor for AppOfferButtonPresenter();
    swift_allocObject();

    v44 = AppOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:appStoreInstallStateMonitor:restrictions:subtitlePosition:alignment:hasCompactRedownloads:arePreordersCancellable:includeBetaApps:)();
    sub_10002B894(v42, &unk_100973230, &unk_1007B17E0);
    (*(v81 + 8))(v41, v79);
    v91 = v43;
    v92 = &protocol witness table for AppOfferButtonPresenter;
    v90 = v44;
LABEL_6:
    v45 = v70;
LABEL_16:
    v53 = objc_opt_self();
    v54 = [v53 areAnimationsEnabled];
    [v53 setAnimationsEnabled:0];
    v55 = OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled;
    v56 = v68;
    *(v68 + OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled) = 0;
    [v56 setHidden:0];
    sub_100653644(&qword_100990908, type metadata accessor for OfferButton, &unk_1007DB8E0);
    sub_100047650(&v90, v91);
    swift_unknownObjectRetain();
    dispatch thunk of OfferButtonPresenter.view.setter();
    [v53 setAnimationsEnabled:v54];

    (*(v45 + 8))(v84, v72);
    *(v56 + v55) = 1;
    sub_10002C0AC(&v90, v87);
    v57 = OBJC_IVAR____TtC8AppStore11OfferButton_presenter;
    swift_beginAccess();
    sub_1006535D4(v87, v56 + v57);
    swift_endAccess();

    sub_100007000(&v90);
  }
}

uint64_t sub_10064D6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v8 = v7;
  v78 = a5;
  v83 = a3;
  v84 = a4;
  v81 = a1;
  v82 = a2;
  v79 = type metadata accessor for OfferButtonPresenterViewTheme();
  v76 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TextConfigurationTheme();
  __chkstk_darwin(v11 - 8);
  v75 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v13 - 8);
  v74 = &v64 - v14;
  v15 = type metadata accessor for OfferEnvironment();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  v22 = type metadata accessor for OfferButtonMetrics();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v65 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v64 = &v64 - v26;
  __chkstk_darwin(v27);
  v66 = &v64 - v28;
  __chkstk_darwin(v29);
  v69 = &v64 - v30;
  __chkstk_darwin(v31);
  v88 = &v64 - v32;
  __chkstk_darwin(v33);
  v70 = &v64 - v34;
  v35 = type metadata accessor for TextConfiguration();
  v72 = *(v35 - 8);
  v73 = v35;
  __chkstk_darwin(v35);
  v71 = &v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v38 = __chkstk_darwin(v37).n128_u64[0];
  v67 = &v64 - v39;
  [v8 setSelected:{0, v38}];
  v80 = a6;
  OfferButtonPresenterViewTheme.environment.getter();
  v87 = [v8 traitCollection];
  v85 = v8;
  v68 = v8[OBJC_IVAR____TtC8AppStore11OfferButton_includeTopPadding];
  v40 = *(v16 + 104);
  v40(v18, enum case for OfferEnvironment.arcadeProductPage(_:), v15);
  LOBYTE(a6) = static OfferEnvironment.== infix(_:_:)();
  v41 = *(v16 + 8);
  v41(v18, v15);
  v86 = v41;
  if (a6)
  {
    if (qword_10096ECE8 != -1)
    {
      swift_once();
    }

    v42 = qword_1009D32F8;
LABEL_13:
    v44 = sub_1000056A8(v22, v42);
    v45 = v69;
    (*(v23 + 16))(v69, v44, v22);
LABEL_14:
    v46 = v88;
    goto LABEL_15;
  }

  v40(v18, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v15);
  v43 = static OfferEnvironment.== infix(_:_:)();
  v41(v18, v15);
  if (v43)
  {
    if (qword_10096ECE0 != -1)
    {
      swift_once();
    }

    v42 = qword_1009D32E0;
    goto LABEL_13;
  }

  if (OfferEnvironment.isArcadeEnvironment.getter())
  {
    if (qword_10096ECD8 != -1)
    {
      swift_once();
    }

    v42 = qword_1009D32C8;
    goto LABEL_13;
  }

  v40(v18, enum case for OfferEnvironment.navigationBar(_:), v15);
  v53 = static OfferEnvironment.== infix(_:_:)();
  v86(v18, v15);
  if (v53)
  {
    if (qword_10096ECF0 != -1)
    {
      swift_once();
    }

    v54 = sub_1000056A8(v22, qword_100991070);
    v45 = v69;
    (*(v23 + 16))(v69, v54, v22);
    goto LABEL_14;
  }

  v55 = String.count.getter();
  if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
  {
    if (v55 < 7)
    {
      goto LABEL_24;
    }

LABEL_29:
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      v57 = v69;
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v58 = qword_100991010;
    }

    else
    {
      v57 = v69;
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v58 = qword_100991028;
    }

    v61 = sub_1000056A8(v22, v58);
    v62 = v64;
    (*(v23 + 16))(v64, v61, v22);
    v63 = v66;
    (*(v23 + 32))(v66, v62, v22);
    v45 = v57;
    Copyable.copyWithOverrides(in:)();
    (*(v23 + 8))(v63, v22);
    goto LABEL_14;
  }

  if (v55 > 8)
  {
    goto LABEL_29;
  }

LABEL_24:
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v46 = v88;
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v56 = qword_100991010;
  }

  else
  {
    v46 = v88;
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v56 = qword_100991028;
  }

  v59 = sub_1000056A8(v22, v56);
  v60 = v65;
  (*(v23 + 16))(v65, v59, v22);
  v45 = v69;
  (*(v23 + 32))(v69, v60, v22);
LABEL_15:
  v47 = *(v23 + 32);
  v47(v46, v45, v22);
  if (v68 != 2)
  {
    OfferButtonMetrics.includeTopPadding.setter();
    v46 = v88;
  }

  v86(v21, v15);
  v47(v70, v46, v22);
  sub_100031660(v78, v74, &unk_100970150, &unk_1007BDDD0);
  (*(v76 + 16))(v77, v80, v79);

  TextConfigurationTheme.init(from:)();
  v48 = v67;
  TextConfiguration.init(metrics:text:subtitleText:subtitlePosition:theme:)();
  v50 = v71;
  v49 = v72;
  v51 = v73;
  (*(v72 + 16))(v71, v48, v73);
  sub_10064F960(v50, v85, &type metadata accessor for TextConfiguration, &protocol witness table for TextConfiguration, &unk_1008CCF58, sub_100653844, &unk_1008CCF70);
  return (*(v49 + 8))(v48, v51);
}

uint64_t sub_10064E140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v8 = v7;
  v70 = a5;
  v75 = a3;
  v76 = a4;
  v73 = a1;
  v74 = a2;
  v71 = type metadata accessor for OfferButtonPresenterViewTheme();
  v68 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TextConfigurationTheme();
  __chkstk_darwin(v11 - 8);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v13 - 8);
  v66 = &v56 - v14;
  v15 = type metadata accessor for OfferEnvironment();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v56 - v20;
  v22 = type metadata accessor for OfferButtonMetrics();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v56 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v60 = &v56 - v26;
  __chkstk_darwin(v27);
  v61 = &v56 - v28;
  __chkstk_darwin(v29);
  v62 = &v56 - v30;
  v31 = type metadata accessor for TextConfiguration();
  v64 = *(v31 - 8);
  v65 = v31;
  __chkstk_darwin(v31);
  v63 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v34 = __chkstk_darwin(v33).n128_u64[0];
  v57 = &v56 - v35;
  [v8 setSelected:{0, v34}];
  v72 = a6;
  OfferButtonPresenterViewTheme.environment.getter();
  v59 = [v8 traitCollection];
  v77 = v8;
  v58 = v8[OBJC_IVAR____TtC8AppStore11OfferButton_includeTopPadding];
  v36 = *(v16 + 104);
  v36(v18, enum case for OfferEnvironment.arcadeProductPage(_:), v15);
  LOBYTE(a6) = static OfferEnvironment.== infix(_:_:)();
  v37 = *(v16 + 8);
  v37(v18, v15);
  v78 = v37;
  if (a6)
  {
    if (qword_10096ECE8 != -1)
    {
      swift_once();
    }

    v38 = qword_1009D32F8;
LABEL_13:
    v40 = sub_1000056A8(v22, v38);
    v41 = v60;
    (*(v23 + 16))(v60, v40, v22);
    v42 = v61;
    v43 = v59;
    goto LABEL_14;
  }

  v36(v18, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v15);
  v39 = static OfferEnvironment.== infix(_:_:)();
  v37(v18, v15);
  if (v39)
  {
    if (qword_10096ECE0 != -1)
    {
      swift_once();
    }

    v38 = qword_1009D32E0;
    goto LABEL_13;
  }

  if (OfferEnvironment.isArcadeEnvironment.getter())
  {
    if (qword_10096ECD8 != -1)
    {
      swift_once();
    }

    v38 = qword_1009D32C8;
    goto LABEL_13;
  }

  v36(v18, enum case for OfferEnvironment.navigationBar(_:), v15);
  v50 = static OfferEnvironment.== infix(_:_:)();
  v78(v18, v15);
  if (v50)
  {
    v41 = v60;
    v42 = v61;
    v43 = v59;
    if (qword_10096ECF0 != -1)
    {
      swift_once();
    }

    v51 = sub_1000056A8(v22, qword_100991070);
    (*(v23 + 16))(v41, v51, v22);
  }

  else
  {
    v43 = v59;
    v52 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v41 = v60;
    v42 = v61;
    if (v52)
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v53 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v53 = qword_100991028;
    }

    v54 = sub_1000056A8(v22, v53);
    v55 = v56;
    (*(v23 + 16))(v56, v54, v22);
    (*(v23 + 32))(v41, v55, v22);
  }

LABEL_14:
  v44 = *(v23 + 32);
  v44(v42, v41, v22);
  if (v58 != 2)
  {
    OfferButtonMetrics.includeTopPadding.setter();
  }

  v78(v21, v15);
  v44(v62, v42, v22);
  sub_100031660(v70, v66, &unk_100970150, &unk_1007BDDD0);
  (*(v68 + 16))(v69, v72, v71);

  TextConfigurationTheme.init(from:)();
  v45 = v57;
  TextConfiguration.init(metrics:symbolName:subtitleText:subtitlePosition:theme:)();
  v47 = v63;
  v46 = v64;
  v48 = v65;
  (*(v64 + 16))(v63, v45, v65);
  sub_10064F960(v47, v77, &type metadata accessor for TextConfiguration, &protocol witness table for TextConfiguration, &unk_1008CCF58, sub_100653844, &unk_1008CCF70);
  return (*(v46 + 8))(v45, v48);
}

uint64_t sub_10064E9CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v5 - 8);
  v36 = v33 - v6;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AdamId();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  v37 = result;
  if (!result)
  {
    return result;
  }

  v35 = v8;
  type metadata accessor for OfferStateAction();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_10;
  }

  v33[0] = v12;
  sub_10002849C(&unk_100973AF0, &qword_1007B3960);
  BaseObjectGraph.inject<A>(_:)();
  v33[1] = v58;
  sub_100031660(a2, &v58, &unk_1009711D0, &unk_1007B1A10);
  v34 = v7;
  if (*(&v59 + 1))
  {
    sub_10002849C(&qword_100975C68, &qword_1007BA910);
    if (swift_dynamicCast())
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_10002B894(&v58, &unk_1009711D0, &unk_1007B1A10);
  }

  swift_getObjectType();
  OfferStateAction.adamId.getter();
  dispatch thunk of AppStateController.stateMachine(forApp:)();
  (*(v33[0] + 8))(v14, v11);
LABEL_9:
  OfferStateAction.preferredAction(for:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = v34;
LABEL_10:

  [v3 bounds];
  LOBYTE(v58) = 1;
  *&v40 = v3;
  *(&v40 + 1) = v16;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  *&v42 = v19;
  BYTE8(v42) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v43 = _Q0;
  v44 = _Q0;
  v45 = 15;
  sub_1000076C0();
  v25 = v3;
  *v10 = static OS_dispatch_queue.main.getter();
  v26 = v35;
  (*(v35 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v27 = _dispatchPreconditionTest(_:)();
  result = (*(v26 + 8))(v10, v7);
  if (v27)
  {
    v48 = xmmword_100975F50;
    v49 = xmmword_100975F60;
    v50 = xmmword_100975F70;
    v46 = xmmword_100975F30;
    v47 = xmmword_100975F40;
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v52 = v40;
    v53 = v41;
    v58 = xmmword_100975F30;
    v59 = xmmword_100975F40;
    v61 = xmmword_100975F60;
    v62 = xmmword_100975F70;
    v51 = qword_100975F80;
    v57 = v45;
    v63 = qword_100975F80;
    v60 = xmmword_100975F50;
    sub_100031660(&v46, v38, &unk_10097F520, &unk_1007BA430);
    xmmword_100975F50 = v54;
    xmmword_100975F60 = v55;
    xmmword_100975F70 = v56;
    qword_100975F80 = v57;
    xmmword_100975F30 = v52;
    xmmword_100975F40 = v53;
    sub_10002B894(&v58, &unk_10097F520, &unk_1007BA430);
    v28 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    sub_10019DADC(&v40, v38);
    v29 = v36;
    v30 = v37;
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v31 = *(v28 - 8);
    if ((*(v31 + 48))(v29, 1, v28) == 1)
    {

      sub_10002B894(v29, &unk_100972A00, &unk_1007B3130);
    }

    else
    {

      sub_1005F9AF4(v32, 1, v30, v29);

      (*(v31 + 8))(v29, v28);
    }

    v38[2] = xmmword_100975F50;
    v38[3] = xmmword_100975F60;
    v38[4] = xmmword_100975F70;
    v39 = qword_100975F80;
    v38[0] = xmmword_100975F30;
    v38[1] = xmmword_100975F40;
    xmmword_100975F30 = v46;
    xmmword_100975F40 = v47;
    xmmword_100975F50 = v48;
    xmmword_100975F60 = v49;
    xmmword_100975F70 = v50;
    qword_100975F80 = v51;
    sub_10002B894(v38, &unk_10097F520, &unk_1007BA430);

    return sub_10019DB38(&v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10064EFB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomationSemantics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v13 - v9;
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  static AutomationSemantics.offerButton(id:parentId:)();
  sub_10002B894(v13, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v14, &unk_1009711D0, &unk_1007B1A10);
  *(&v15 + 1) = &type metadata for String;
  *&v14 = a1;
  *(&v14 + 1) = a2;

  AutomationSemantics.attribute(key:value:)();
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_10002B894(&v14, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();
  return (v11)(v10, v4);
}

id sub_10064F17C(char a1)
{
  v2 = a1 & 1;
  ObjectType = swift_getObjectType();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  if (objc_msgSendSuper2(&v7, "isEnabled") != v2)
  {
    sub_1000F6E50(v2, v4);
  }

  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "setEnabled:", v2);
}

uint64_t sub_10064F1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v14 - 8);
  v16 = &v21 - v15;
  v17 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a5, v17);
  v19.n128_f64[0] = (*(v18 + 56))(v16, 0, 1, v17);
  sub_10064D6F4(a1, a2, a3, a4, v16, a8, v19);
  return sub_10002B894(v16, &unk_100970150, &unk_1007BDDD0);
}

void sub_10064F34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  v12 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v13.n128_f64[0] = (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_10064D6F4(a1, a2, 0, 0, v11, a5, v13);
  sub_10002B894(v11, &unk_100970150, &unk_1007BDDD0);
  v14 = String._bridgeToObjectiveC()();
  [v5 accessibilityShowText:v14];
}

uint64_t sub_10064F484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a5, v15);
  v17.n128_f64[0] = (*(v16 + 56))(v14, 0, 1, v15);
  sub_10064E140(a1, a2, a3, a4, v14, a6, v17);
  return sub_10002B894(v14, &unk_100970150, &unk_1007BDDD0);
}

uint64_t sub_10064F5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v10.n128_f64[0] = (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10064E140(a1, a2, 0, 0, v8, a3, v10);
  return sub_10002B894(v8, &unk_100970150, &unk_1007BDDD0);
}

uint64_t sub_10064F744()
{
  v1 = [v0 accessibilityLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10064F7AC(double a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v3 setAccessibilityLabel:v4];
}

void (*sub_10064F818(uint64_t **a1))(void *a1)
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
  v2[4] = sub_10064C224(v2);
  return sub_1000BD370;
}

uint64_t sub_10064F960(uint64_t a1, char *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v13 = a3(0);
  v55 = v13;
  v56 = a4;
  v14 = sub_1000056E0(v54);
  (*(*(v13 - 8) + 32))(v14, a1, v13);
  v15 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
  swift_beginAccess();
  sub_10002C0AC(&a2[v15], v52);
  sub_10002A400(v52, v53);
  DynamicType = swift_getDynamicType();
  sub_10002A400(v54, v55);
  v17 = swift_getDynamicType();
  sub_10002A400(v54, v55);
  v18 = [a2 traitCollection];
  LOBYTE(a4) = dispatch thunk of OfferButtonConfiguration.isEqual(to:with:)();

  if (a4)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1006533A8(&a2[v15], v54, v19);
  swift_endAccess();
  v51.receiver = a2;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "frame");
  if (CGRectIsEmpty(v57))
  {
    sub_10002C0AC(&a2[v15], aBlock);
    sub_10002A400(aBlock, v46);
    v20 = dispatch thunk of OfferButtonConfiguration.shouldReapply(sizeChanged:)();
    sub_100007000(aBlock);
    if (v20)
    {
      if (DynamicType != v17)
      {
        sub_1000F4BF0();
      }

      goto LABEL_28;
    }
  }

  v42 = a7;
  sub_10002C0AC(&a2[v15], aBlock);
  sub_10002A400(aBlock, v46);
  if (dispatch thunk of OfferButtonConfiguration.preferDisabledAnimations(whenUpdatingFrom:)())
  {
    v21 = a2[OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled];
    sub_100007000(aBlock);
    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_100007000(aBlock);
  }

  sub_10002C0AC(&a2[v15], aBlock);
  sub_10002A400(aBlock, v46);
  v22 = dispatch thunk of OfferButtonConfiguration.alwaysDisableAnimations(whenUpdatingFrom:)();
  sub_100007000(aBlock);
  if (v22)
  {
LABEL_11:
    v23 = objc_opt_self();
    [v23 begin];
    v43 = 1;
    [v23 setDisableActions:1];
    goto LABEL_13;
  }

  v43 = 0;
LABEL_13:
  sub_10002A400(v52, v53);
  sub_100653644(&qword_1009741F0, type metadata accessor for OfferButton, &unk_1007B5D98);
  dispatch thunk of OfferButtonConfiguration.unapply<A>(to:)();
  if (DynamicType != v17)
  {
    sub_1000F4BF0();
  }

  sub_10002A400(v54, v55);
  dispatch thunk of OfferButtonConfiguration.apply<A>(to:)();
  if (a2[OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled] != 1)
  {
    [a2 setNeedsLayout];
    v50.receiver = a2;
    v50.super_class = ObjectType;
    objc_msgSendSuper2(&v50, "invalidateIntrinsicContentSize");
    v37 = &a2[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
    *v37 = 0;
    *(v37 + 1) = 0;
    v37[16] = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v39 = Strong;
      [Strong setNeedsLayout];
    }

    if (!v43)
    {
      goto LABEL_28;
    }

LABEL_27:
    [objc_opt_self() commit];
    goto LABEL_28;
  }

  sub_10002A400(v52, v53);
  dispatch thunk of OfferButtonConfiguration.size(in:)();
  v25 = v24;
  v27 = v26;
  sub_10002A400(v54, v55);
  dispatch thunk of OfferButtonConfiguration.size(in:)();
  v30 = v27 == v29 && v25 == v28;
  v31 = swift_unknownObjectWeakLoadStrong();
  if (!v31)
  {
    v31 = [a2 superview];
  }

  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = v30;
  *(v32 + 32) = v31;
  v33 = objc_opt_self();
  v34 = a2;
  v35 = v31;
  if ([v33 areAnimationsEnabled])
  {
    v47 = a6;
    v48 = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    v46 = v42;
    v36 = _Block_copy(aBlock);

    [v33 animateWithDuration:v36 animations:0.3];

    _Block_release(v36);
    if (!v43)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  [v34 setNeedsLayout];
  if (v30)
  {
    [v34 layoutIfNeeded];
  }

  else
  {
    v49.receiver = v34;
    v49.super_class = ObjectType;
    objc_msgSendSuper2(&v49, "invalidateIntrinsicContentSize");
    v41 = &v34[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
    *v41 = 0;
    *(v41 + 1) = 0;
    v41[16] = 1;
    [v35 setNeedsLayout];
    [v35 layoutIfNeeded];
  }

  if (v43)
  {
    goto LABEL_27;
  }

LABEL_28:
  sub_100007000(v52);
  return sub_100007000(v54);
}

uint64_t sub_10064FFB4(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for IndeterminateProgressConfiguration();
  v44 = v5;
  v45 = &protocol witness table for IndeterminateProgressConfiguration;
  v43[0] = a1;
  v6 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
  swift_beginAccess();
  sub_10002C0AC(&a2[v6], v41);
  sub_10002A400(v41, v42);
  DynamicType = swift_getDynamicType();
  sub_10002A400(v43, v5);
  v8 = swift_getDynamicType();
  sub_10002A400(v43, v44);
  v9 = [a2 traitCollection];
  LOBYTE(a1) = dispatch thunk of OfferButtonConfiguration.isEqual(to:with:)();

  if (a1)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1006533A8(&a2[v6], v43, v10);
  swift_endAccess();
  v40.receiver = a2;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, "frame");
  if (CGRectIsEmpty(v46))
  {
    sub_10002C0AC(&a2[v6], aBlock);
    sub_10002A400(aBlock, v35);
    v11 = dispatch thunk of OfferButtonConfiguration.shouldReapply(sizeChanged:)();
    sub_100007000(aBlock);
    if (v11)
    {
      if (DynamicType != v8)
      {
        sub_1000F4BF0();
      }

      goto LABEL_28;
    }
  }

  sub_10002C0AC(&a2[v6], aBlock);
  sub_10002A400(aBlock, v35);
  if (dispatch thunk of OfferButtonConfiguration.preferDisabledAnimations(whenUpdatingFrom:)())
  {
    v12 = a2[OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled];
    sub_100007000(aBlock);
    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_100007000(aBlock);
  }

  sub_10002C0AC(&a2[v6], aBlock);
  sub_10002A400(aBlock, v35);
  v13 = dispatch thunk of OfferButtonConfiguration.alwaysDisableAnimations(whenUpdatingFrom:)();
  sub_100007000(aBlock);
  if (v13)
  {
LABEL_11:
    v14 = objc_opt_self();
    [v14 begin];
    v33 = 1;
    [v14 setDisableActions:1];
    goto LABEL_13;
  }

  v33 = 0;
LABEL_13:
  sub_10002A400(v41, v42);
  sub_100653644(&qword_1009741F0, type metadata accessor for OfferButton, &unk_1007B5D98);
  dispatch thunk of OfferButtonConfiguration.unapply<A>(to:)();
  if (DynamicType != v8)
  {
    sub_1000F4BF0();
  }

  sub_10002A400(v43, v44);
  dispatch thunk of OfferButtonConfiguration.apply<A>(to:)();
  if (a2[OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled] != 1)
  {
    [a2 setNeedsLayout];
    v39.receiver = a2;
    v39.super_class = ObjectType;
    objc_msgSendSuper2(&v39, "invalidateIntrinsicContentSize");
    v28 = &a2[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
    *v28 = 0;
    *(v28 + 1) = 0;
    v28[16] = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      [Strong setNeedsLayout];
    }

    if (!v33)
    {
      goto LABEL_28;
    }

LABEL_27:
    [objc_opt_self() commit];
    goto LABEL_28;
  }

  sub_10002A400(v41, v42);
  dispatch thunk of OfferButtonConfiguration.size(in:)();
  v16 = v15;
  v18 = v17;
  sub_10002A400(v43, v44);
  dispatch thunk of OfferButtonConfiguration.size(in:)();
  v21 = v18 == v20 && v16 == v19;
  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
    v22 = [a2 superview];
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = v21;
  *(v23 + 32) = v22;
  v24 = objc_opt_self();
  v25 = a2;
  v26 = v22;
  if ([v24 areAnimationsEnabled])
  {
    v36 = sub_100653844;
    v37 = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    v35 = &unk_1008CCED0;
    v27 = _Block_copy(aBlock);

    [v24 animateWithDuration:v27 animations:0.3];

    _Block_release(v27);
    if (!v33)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  [v25 setNeedsLayout];
  if (v21)
  {
    [v25 layoutIfNeeded];
  }

  else
  {
    v38.receiver = v25;
    v38.super_class = ObjectType;
    objc_msgSendSuper2(&v38, "invalidateIntrinsicContentSize");
    v32 = &v25[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
    *v32 = 0;
    *(v32 + 1) = 0;
    v32[16] = 1;
    [v26 setNeedsLayout];
    [v26 layoutIfNeeded];
  }

  if (v33)
  {
    goto LABEL_27;
  }

LABEL_28:
  sub_100007000(v41);
  return sub_100007000(v43);
}

id sub_1006505CC(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v5 = v4;
  v58 = a3;
  v67 = a1;
  v68 = type metadata accessor for OfferButtonPresenterViewTheme();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v69 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100973240, qword_1007B2220);
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin(v8);
  v65 = &v54 - v9;
  v10 = type metadata accessor for OfferEnvironment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = type metadata accessor for OfferButtonMetrics();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v56 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v55 = &v54 - v21;
  __chkstk_darwin(v22);
  v57 = &v54 - v23;
  __chkstk_darwin(v24);
  v60 = &v54 - v25;
  __chkstk_darwin(v26);
  v61 = &v54 - v27;
  __chkstk_darwin(v28);
  v62 = &v54 - v29;
  v70 = a2;
  OfferButtonPresenterViewTheme.environment.getter();
  v71 = v5;
  v59 = [v5 traitCollection];
  v30 = *(v11 + 104);
  v30(v13, enum case for OfferEnvironment.arcadeProductPage(_:), v10);
  LOBYTE(a2) = static OfferEnvironment.== infix(_:_:)();
  v31 = *(v11 + 8);
  v31(v13, v10);
  if (a2)
  {
    if (qword_10096ECE8 != -1)
    {
      swift_once();
    }

    v32 = sub_1000056A8(v17, qword_1009D32F8);
    v33 = v60;
    (*(v18 + 16))(v60, v32, v17);

    goto LABEL_14;
  }

  v30(v13, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v10);
  v34 = static OfferEnvironment.== infix(_:_:)();
  v54 = v31;
  v31(v13, v10);
  if (v34)
  {
    if (qword_10096ECE0 != -1)
    {
      swift_once();
    }

    v35 = qword_1009D32E0;
LABEL_13:
    v36 = sub_1000056A8(v17, v35);
    v33 = v60;
    (*(v18 + 16))(v60, v36, v17);

    v31 = v54;
    goto LABEL_14;
  }

  if (OfferEnvironment.isArcadeEnvironment.getter())
  {
    if (qword_10096ECD8 != -1)
    {
      swift_once();
    }

    v35 = qword_1009D32C8;
    goto LABEL_13;
  }

  v30(v13, enum case for OfferEnvironment.navigationBar(_:), v10);
  v42 = static OfferEnvironment.== infix(_:_:)();
  v31 = v54;
  v54(v13, v10);
  if (v42)
  {
    v43 = v59;
    v33 = v60;
    if (qword_10096ECF0 != -1)
    {
      swift_once();
    }

    v44 = sub_1000056A8(v17, qword_100991070);
    (*(v18 + 16))(v33, v44, v17);
  }

  else
  {
    v45 = v59;
    v46 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v33 = v60;
    if (v58)
    {
      if (v46)
      {
        if (qword_10096ECB8 != -1)
        {
          swift_once();
        }

        v47 = qword_100991010;
      }

      else
      {
        if (qword_10096ECC0 != -1)
        {
          swift_once();
        }

        v47 = qword_100991028;
      }

      v49 = sub_1000056A8(v17, v47);
      v50 = v55;
      (*(v18 + 16))(v55, v49, v17);
      v51 = v57;
      (*(v18 + 32))(v57, v50, v17);
      Copyable.copyWithOverrides(in:)();

      (*(v18 + 8))(v51, v17);
    }

    else
    {
      if (v46)
      {
        if (qword_10096ECB8 != -1)
        {
          swift_once();
        }

        v48 = qword_100991010;
      }

      else
      {
        if (qword_10096ECC0 != -1)
        {
          swift_once();
        }

        v48 = qword_100991028;
      }

      v52 = sub_1000056A8(v17, v48);
      v53 = v56;
      (*(v18 + 16))(v56, v52, v17);

      (*(v18 + 32))(v33, v53, v17);
    }
  }

LABEL_14:
  v37 = *(v18 + 32);
  v38 = v61;
  v37(v61, v33, v17);
  v31(v16, v10);
  v37(v62, v38, v17);
  (*(v63 + 16))(v65, v67, v64);
  (*(v66 + 16))(v69, v70, v68);
  type metadata accessor for IndeterminateProgressConfiguration();
  swift_allocObject();
  IndeterminateProgressConfiguration.init(metrics:alignment:theme:)();

  v40 = v71;
  sub_10064FFB4(v39, v71);

  return [v40 accessibilityShowLoading];
}

void sub_100650E70(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v85 = a3;
  v109 = a2;
  v6 = a4.n128_f64[0];
  v94 = type metadata accessor for OfferButtonPresenterViewTheme();
  v107 = *(v94 - 8);
  __chkstk_darwin(v94);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100973240, qword_1007B2220);
  v105 = *(v9 - 8);
  __chkstk_darwin(v9);
  v106 = &v81 - v10;
  v11 = type metadata accessor for OfferEnvironment();
  v103 = *(v11 - 8);
  v104 = v11;
  __chkstk_darwin(v11);
  v92 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v81 - v14;
  v101 = type metadata accessor for OfferButtonMetrics();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v83 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v82 = &v81 - v18;
  __chkstk_darwin(v19);
  v84 = &v81 - v20;
  __chkstk_darwin(v21);
  v93 = &v81 - v22;
  __chkstk_darwin(v23);
  v95 = &v81 - v24;
  __chkstk_darwin(v25);
  v96 = &v81 - v26;
  v102 = type metadata accessor for ProgressConfiguration();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v97 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v98 = &v81 - v29;
  v30 = type metadata accessor for AdamId();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10002849C(&qword_1009908F8, &qword_1007DB990);
  __chkstk_darwin(v34 - 8);
  v36 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v108 = &v81 - v38;
  v110 = v4;
  v39 = *&v4[OBJC_IVAR____TtC8AppStore11OfferButton_displayProperties];
  if (v39)
  {
    v87 = v9;
    v88 = v8;
    v89 = a1;
    Strong = swift_weakLoadStrong();
    v91 = v15;
    v90 = v39;
    if (Strong)
    {
      sub_10002849C(&unk_100973AF0, &qword_1007B3960);

      BaseObjectGraph.injectIfAvailable<A>(_:)();

      if (v111)
      {
        swift_getObjectType();
        OfferDisplayProperties.adamId.getter();
        dispatch thunk of AppStateController.stateMachine(forApp:)();
        swift_unknownObjectRelease();
        (*(v31 + 8))(v33, v30);
        swift_getObjectType();
        v41 = v108;
        dispatch thunk of AppStateMachine.currentState.getter();
        swift_unknownObjectRelease();
        v42 = type metadata accessor for LegacyAppState();
        (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
        goto LABEL_7;
      }
    }

    else
    {
    }

    v42 = type metadata accessor for LegacyAppState();
    v41 = v108;
    (*(*(v42 - 8) + 56))(v108, 1, 1, v42);
LABEL_7:
    v43 = v103;
    sub_100031660(v41, v36, &qword_1009908F8, &qword_1007DB990);
    type metadata accessor for LegacyAppState();
    v44 = *(v42 - 8);
    v45 = (*(v44 + 48))(v36, 1, v42);
    v46 = v92;
    if (v45 == 1)
    {
      sub_10002B894(v36, &qword_1009908F8, &qword_1007DB990);
    }

    else
    {
      if ((*(v44 + 88))(v36, v42) == enum case for LegacyAppState.installing(_:))
      {
        (*(v44 + 96))(v36, v42);
        v47 = type metadata accessor for LegacyAppState.AppInstallationDetails();
        (*(*(v47 - 8) + 8))(v36, v47);
        v48 = 1;
        goto LABEL_13;
      }

      (*(v44 + 8))(v36, v42);
    }

    v48 = 0;
LABEL_13:
    v86 = v48;
    v49 = v110;
    sub_1000F479C(v48);
    OfferButtonPresenterViewTheme.environment.getter();
    v103 = [v49 traitCollection];
    v50 = v43[13];
    v51 = v104;
    v50(v46, enum case for OfferEnvironment.arcadeProductPage(_:), v104);
    v52 = static OfferEnvironment.== infix(_:_:)();
    v53 = v43[1];
    v53(v46, v51);
    if (v52)
    {
      if (qword_10096ECE8 != -1)
      {
        swift_once();
      }

      v54 = qword_1009D32F8;
      v55 = v101;
    }

    else
    {
      v50(v46, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v51);
      v56 = static OfferEnvironment.== infix(_:_:)();
      v53(v46, v51);
      if (v56)
      {
        v55 = v101;
        if (qword_10096ECE0 != -1)
        {
          swift_once();
        }

        v54 = qword_1009D32E0;
      }

      else
      {
        v57 = OfferEnvironment.isArcadeEnvironment.getter();
        v55 = v101;
        if ((v57 & 1) == 0)
        {
          v50(v46, enum case for OfferEnvironment.navigationBar(_:), v51);
          v69 = static OfferEnvironment.== infix(_:_:)();
          v53(v46, v51);
          if (v69)
          {
            v61 = v107;
            v59 = v99;
            if (qword_10096ECF0 != -1)
            {
              swift_once();
            }

            v70 = sub_1000056A8(v55, qword_100991070);
            v60 = v93;
            (*(v59 + 16))(v93, v70, v55);
          }

          else
          {
            v71 = UITraitCollection.prefersAccessibilityLayouts.getter();
            v61 = v107;
            v59 = v99;
            if (v85)
            {
              if (v71)
              {
                v72 = v93;
                if (qword_10096ECB8 != -1)
                {
                  swift_once();
                }

                v73 = qword_100991010;
              }

              else
              {
                v72 = v93;
                if (qword_10096ECC0 != -1)
                {
                  swift_once();
                }

                v73 = qword_100991028;
              }

              v76 = sub_1000056A8(v55, v73);
              v77 = v82;
              (*(v59 + 16))(v82, v76, v55);
              v78 = v84;
              (*(v59 + 32))(v84, v77, v55);
              v60 = v72;
              Copyable.copyWithOverrides(in:)();

              (*(v59 + 8))(v78, v55);
            }

            else
            {
              if (v71)
              {
                v74 = v93;
                if (qword_10096ECB8 != -1)
                {
                  swift_once();
                }

                v75 = qword_100991010;
              }

              else
              {
                v74 = v93;
                if (qword_10096ECC0 != -1)
                {
                  swift_once();
                }

                v75 = qword_100991028;
              }

              v79 = sub_1000056A8(v55, v75);
              v80 = v83;
              (*(v59 + 16))(v83, v79, v55);

              (*(v59 + 32))(v74, v80, v55);
              v60 = v74;
            }
          }

          goto LABEL_26;
        }

        if (qword_10096ECD8 != -1)
        {
          swift_once();
        }

        v54 = qword_1009D32C8;
      }
    }

    v58 = sub_1000056A8(v55, v54);
    v59 = v99;
    v60 = v93;
    (*(v99 + 16))(v93, v58, v55);

    v61 = v107;
LABEL_26:
    v62 = *(v59 + 32);
    v63 = v95;
    v62(v95, v60, v55);
    v53(v91, v51);
    v62(v96, v63, v55);
    (*(v105 + 16))(v106, v89, v87);
    (*(v61 + 16))(v88, v109, v94);
    v64 = v98;
    ProgressConfiguration.init(metrics:progress:alignment:theme:isInstalling:)();
    v65 = v100;
    v66 = v97;
    v67 = v102;
    (*(v100 + 16))(v97, v64, v102);
    v68 = v110;
    sub_10064F960(v66, v110, &type metadata accessor for ProgressConfiguration, &protocol witness table for ProgressConfiguration, &unk_1008CCF08, sub_100653844, &unk_1008CCF20);
    (*(v65 + 8))(v64, v67);
    [v68 setSelected:0];
    [v68 accessibilityShowProgress:v6];

    sub_10002B894(v108, &qword_1009908F8, &qword_1007DB990);
  }
}

void sub_100651CB4(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v148 = a3;
  v183 = a1;
  v6 = type metadata accessor for RedownloadConfiguration();
  v173 = *(v6 - 8);
  v174 = v6;
  __chkstk_darwin(v6);
  v171 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v172 = &v144 - v9;
  v10 = type metadata accessor for OfferButtonPresenterViewTheme();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TextConfigurationTheme();
  __chkstk_darwin(v14 - 8);
  v170 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for OfferStyle();
  v168 = *(v169 - 8);
  __chkstk_darwin(v169);
  v166 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v165 = &v144 - v18;
  v19 = sub_10002849C(&unk_100973240, qword_1007B2220);
  v180 = *(v19 - 8);
  v181 = v19;
  __chkstk_darwin(v19);
  v182 = &v144 - v20;
  v186 = type metadata accessor for OfferEnvironment();
  v176 = *(v186 - 8);
  __chkstk_darwin(v186);
  v178 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v185 = &v144 - v23;
  __chkstk_darwin(v24);
  v177 = &v144 - v25;
  v179 = type metadata accessor for OfferButtonMetrics();
  v184 = *(v179 - 8);
  __chkstk_darwin(v179);
  v146 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v145 = &v144 - v28;
  __chkstk_darwin(v29);
  v147 = &v144 - v30;
  __chkstk_darwin(v31);
  v163 = &v144 - v32;
  __chkstk_darwin(v33);
  v164 = &v144 - v34;
  __chkstk_darwin(v35);
  v167 = &v144 - v36;
  __chkstk_darwin(v37);
  v149 = &v144 - v38;
  __chkstk_darwin(v39);
  v156 = &v144 - v40;
  __chkstk_darwin(v41);
  v155 = &v144 - v42;
  __chkstk_darwin(v43);
  v157 = &v144 - v44;
  __chkstk_darwin(v45);
  v158 = &v144 - v46;
  v162 = type metadata accessor for PausedConfiguration();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v159 = &v144 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v160 = &v144 - v49;
  v50 = type metadata accessor for AdamId();
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v53 = &v144 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10002849C(&qword_1009908F8, &qword_1007DB990);
  __chkstk_darwin(v54 - 8);
  v56 = &v144 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v187 = &v144 - v58;
  v59 = *&v4[OBJC_IVAR____TtC8AppStore11OfferButton_displayProperties];
  if (v59)
  {
    v152 = v13;
    v153 = v11;
    v154 = v10;
    v175 = a2;
    v60 = v4;
    if (swift_weakLoadStrong())
    {
      sub_10002849C(&unk_100973AF0, &qword_1007B3960);

      BaseObjectGraph.inject<A>(_:)();

      swift_getObjectType();
      OfferDisplayProperties.adamId.getter();
      dispatch thunk of AppStateController.stateMachine(forApp:)();
      swift_unknownObjectRelease();
      (*(v51 + 8))(v53, v50);
      swift_getObjectType();
      v61 = v187;
      dispatch thunk of AppStateMachine.currentState.getter();
      swift_unknownObjectRelease();
      v62 = type metadata accessor for LegacyAppState();
      (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
    }

    else
    {
      v62 = type metadata accessor for LegacyAppState();
      v61 = v187;
      (*(*(v62 - 8) + 56))(v187, 1, 1, v62);
    }

    sub_100031660(v61, v56, &qword_1009908F8, &qword_1007DB990);
    type metadata accessor for LegacyAppState();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v56, 1, v62) == 1)
    {
      sub_10002B894(v56, &qword_1009908F8, &qword_1007DB990);
      v64 = 0;
    }

    else
    {
      v64 = LegacyAppState.isPaused.getter();
      (*(v63 + 8))(v56, v62);
    }

    v65 = v60;
    v66 = v185;
    v151 = v59;
    v67 = objc_opt_self();
    [v67 begin];
    v150 = v67;
    [v67 setDisableActions:1];
    v68 = v175;
    v69 = (v176 + 104);
    v70 = (v176 + 8);
    v71 = v177;
    v176 += 8;
    if (v64)
    {
      OfferButtonPresenterViewTheme.environment.getter();
      v185 = [v65 traitCollection];
      v72 = *v69;
      v73 = v186;
      (*v69)(v66, enum case for OfferEnvironment.arcadeProductPage(_:), v186);
      v74 = static OfferEnvironment.== infix(_:_:)();
      v75 = *v70;
      v75(v66, v73);
      v144 = v65;
      if (v74)
      {
        v76 = v68;
        if (qword_10096ED00 != -1)
        {
          swift_once();
        }

        v77 = v179;
        v78 = sub_1000056A8(v179, qword_1009D3310);
        v79 = v184;
        v80 = v156;
        (*(v184 + 16))(v156, v78, v77);

        v81 = v79;
        v82 = v186;
      }

      else
      {
        v72(v66, enum case for OfferEnvironment.navigationBar(_:), v73);
        v96 = static OfferEnvironment.== infix(_:_:)();
        v75(v66, v73);
        v82 = v73;
        if (v96 & 1) != 0 && (v97 = type metadata accessor for Feature(), v188[3] = v97, v188[4] = sub_100653644(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature), v98 = sub_1000056E0(v188), (*(*(v97 - 8) + 104))(v98, enum case for Feature.glass_offer_button_2025A(_:), v97), LOBYTE(v97) = isFeatureEnabled(_:)(), sub_100007000(v188), (v97))
        {
          v76 = v68;
          if (qword_10096ECF8 != -1)
          {
            swift_once();
          }

          v77 = v179;
          v99 = sub_1000056A8(v179, qword_100991088);
          v100 = v184;
          v80 = v156;
          (*(v184 + 16))(v156, v99, v77);

          v81 = v100;
        }

        else
        {
          if (UITraitCollection.prefersAccessibilityLayouts.getter())
          {
            v77 = v179;
            v76 = v68;
            if (qword_10096ECD0 != -1)
            {
              swift_once();
            }

            v103 = qword_100991058;
          }

          else
          {
            v77 = v179;
            v76 = v68;
            if (qword_10096ECC8 != -1)
            {
              swift_once();
            }

            v103 = qword_100991040;
          }

          v106 = sub_1000056A8(v77, v103);
          v107 = v184;
          v108 = v149;
          (*(v184 + 16))(v149, v106, v77);

          v81 = v107;
          v80 = v156;
          (*(v107 + 32))(v156, v108, v77);
        }
      }

      v109 = *(v81 + 32);
      v110 = v155;
      v109(v155, v80, v77);
      v111 = v157;
      v109(v157, v110, v77);
      v75(v71, v82);
      v109(v158, v111, v77);
      (*(v180 + 16))(v182, v183, v181);
      v112 = v165;
      v113 = v76;
      OfferButtonPresenterViewTheme.style.getter();
      v114 = v168;
      v115 = v166;
      v116 = v169;
      (*(v168 + 104))(v166, enum case for OfferStyle.disabled(_:), v169);
      static OfferStyle.== infix(_:_:)();
      v117 = *(v114 + 8);
      v117(v115, v116);
      v117(v112, v116);
      (*(v153 + 16))(v152, v113, v154);
      TextConfigurationTheme.init(from:)();
      v118 = v160;
      PausedConfiguration.init(metrics:alignment:isDisabled:theme:isProductPage:)();
      v119 = v161;
      v120 = v159;
      v121 = v162;
      (*(v161 + 16))(v159, v118, v162);
      v65 = v144;
      sub_10064F960(v120, v144, &type metadata accessor for PausedConfiguration, &protocol witness table for PausedConfiguration, &unk_1008CCE18, sub_1006535C4, &unk_1008CCE30);
      (*(v119 + 8))(v118, v121);
      v122 = &selRef_accessibilityShowPaused;
    }

    else
    {
      OfferButtonPresenterViewTheme.environment.getter();
      v83 = [v65 traitCollection];
      v84 = *v69;
      v85 = v186;
      (*v69)(v66, enum case for OfferEnvironment.arcadeProductPage(_:), v186);
      v86 = static OfferEnvironment.== infix(_:_:)();
      v87 = *v70;
      (*v70)(v66, v85);
      if (v86)
      {
        if (qword_10096ECE8 != -1)
        {
          swift_once();
        }

        v88 = v179;
        v89 = sub_1000056A8(v179, qword_1009D32F8);
        v90 = v184;
        v91 = v163;
        (*(v184 + 16))(v163, v89, v88);

        v92 = v154;
        v93 = v186;
        v94 = v87;
        v95 = v175;
      }

      else
      {
        v84(v66, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v85);
        v101 = static OfferEnvironment.== infix(_:_:)();
        (v87)(v66, v85);
        v94 = v87;
        if (v101)
        {
          v91 = v163;
          if (qword_10096ECE0 != -1)
          {
            swift_once();
          }

          v88 = v179;
          v102 = sub_1000056A8(v179, qword_1009D32E0);
          v90 = v184;
          (*(v184 + 16))(v91, v102, v88);

          v92 = v154;
          v93 = v186;
          v95 = v175;
        }

        else
        {
          v104 = v83;
          if (OfferEnvironment.isArcadeEnvironment.getter())
          {
            v91 = v163;
            v95 = v175;
            if (qword_10096ECD8 != -1)
            {
              swift_once();
            }

            v88 = v179;
            v105 = sub_1000056A8(v179, qword_1009D32C8);
            v90 = v184;
            (*(v184 + 16))(v91, v105, v88);

            v92 = v154;
            v93 = v186;
          }

          else
          {
            v177 = v94;
            v124 = v185;
            v123 = v186;
            v84(v185, enum case for OfferEnvironment.navigationBar(_:), v186);
            v125 = static OfferEnvironment.== infix(_:_:)();
            v126 = v124;
            v94 = v177;
            v127 = v123;
            (v177)(v126, v123);
            v95 = v175;
            if (v125)
            {
              v93 = v127;
              v92 = v154;
              v88 = v179;
              if (qword_10096ECF0 != -1)
              {
                swift_once();
              }

              v128 = sub_1000056A8(v88, qword_100991070);
              v90 = v184;
              v91 = v163;
              (*(v184 + 16))(v163, v128, v88);
            }

            else
            {
              v129 = UITraitCollection.prefersAccessibilityLayouts.getter();
              v92 = v154;
              v88 = v179;
              if (v148)
              {
                if (v129)
                {
                  v130 = v184;
                  v93 = v127;
                  if (qword_10096ECB8 != -1)
                  {
                    swift_once();
                  }

                  v131 = qword_100991010;
                }

                else
                {
                  v130 = v184;
                  v93 = v127;
                  if (qword_10096ECC0 != -1)
                  {
                    swift_once();
                  }

                  v131 = qword_100991028;
                }

                v133 = sub_1000056A8(v88, v131);
                v134 = v145;
                (*(v130 + 16))(v145, v133, v88);
                v135 = v147;
                (*(v130 + 32))(v147, v134, v88);
                v91 = v163;
                Copyable.copyWithOverrides(in:)();
                v90 = v184;

                (*(v90 + 8))(v135, v88);
              }

              else
              {
                if (v129)
                {
                  v90 = v184;
                  v93 = v127;
                  if (qword_10096ECB8 != -1)
                  {
                    swift_once();
                  }

                  v132 = qword_100991010;
                }

                else
                {
                  v90 = v184;
                  v93 = v127;
                  if (qword_10096ECC0 != -1)
                  {
                    swift_once();
                  }

                  v132 = qword_100991028;
                }

                v136 = sub_1000056A8(v88, v132);
                v137 = v146;
                (*(v90 + 16))(v146, v136, v88);

                v91 = v163;
                (*(v90 + 32))(v163, v137, v88);
              }

              v94 = v177;
            }
          }
        }
      }

      v138 = *(v90 + 32);
      v139 = v164;
      v138(v164, v91, v88);
      (v94)(v178, v93);
      v138(v167, v139, v88);
      (*(v180 + 16))(v182, v183, v181);
      (*(v153 + 16))(v152, v95, v92);
      v140 = v172;
      RedownloadConfiguration.init(metrics:alignment:theme:)();
      v142 = v173;
      v141 = v174;
      v143 = v171;
      (*(v173 + 16))(v171, v140, v174);
      sub_10064F960(v143, v65, &type metadata accessor for RedownloadConfiguration, &protocol witness table for RedownloadConfiguration, &unk_1008CCE68, sub_100653844, &unk_1008CCE80);
      (*(v142 + 8))(v140, v141);
      v122 = &selRef_accessibilityShowRedownload;
    }

    [v65 *v122];
    [v150 commit];

    sub_10002B894(v187, &qword_1009908F8, &qword_1007DB990);
  }
}

double sub_1006533A8(uint64_t *a1, uint64_t *a2, __n128 result)
{
  if (a1 != a2)
  {
    v3 = a1[3];
    v4 = a2[3];
    if (v3 == v4)
    {
      v11 = *(v3 - 8);
      if ((*(v11 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v12 = *(v11 + 24);

        v12(result);
      }
    }

    else
    {
      a1[3] = v4;
      a1[4] = a2[4];
      v5 = *(v3 - 8);
      v6 = *(v4 - 8);
      v7 = v6;
      v8 = *(v6 + 80);
      if ((*(v5 + 82) & 2) != 0)
      {
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(result);
        }
      }

      else
      {
        (*(v5 + 32))(v16, result);
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v7 + 16))(a1, a2, v4);
        }

        (*(v5 + 8))(v16, v3);
      }
    }
  }

  return result.n128_f64[0];
}

uint64_t sub_1006535D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009741F8, qword_1007B5EA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100653644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10065368C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1006536FC(uint64_t a1)
{
  v3 = *(sub_10002849C(&unk_100973230, &unk_1007B17E0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_10002849C(&unk_1009701A0, &unk_1007B17F0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));
  sub_10064C644(a1, v1[2], v1[3], v1[4], v1[5], v1[6], v1 + v4, v7, *(v7 + *(v6 + 64)), *(v7 + *(v6 + 64) + 1));
}

void sub_100653848(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_1004428F4, v8);
}

uint64_t sub_10065391C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100990910);
  sub_1000056A8(v4, qword_100990910);
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

uint64_t sub_100653A88()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_100990928);
  sub_1000056A8(v4, qword_100990928);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

char *sub_100653BDC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_allowBatchUpdates) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_flowPreviewing) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_isPresentingForgotSignInDetails) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_pendingRefresh) = 0;
  v5 = OBJC_IVAR____TtC8AppStore21AccountViewController_compoundScrollObserver;
  v6 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v2 + v5) = CompoundScrollObserver.init(children:)();
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_authenticating) = 0;
  v7 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_activityIndicator) = v7;
  v8 = [objc_allocWithZone(UIRefreshControl) init];
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_refreshControl) = v8;
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_presenter) = a1;
  type metadata accessor for ImpressionsCalculator();

  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_impressionsCoordinator) = ImpressionsScrollObserver.init(_:)();
  v9 = [objc_allocWithZone(UICollectionViewLayout) init];

  v10 = sub_1000659FC(v9, a2);

  v34[3] = type metadata accessor for AccountPresenter();
  v34[4] = &protocol witness table for BasePresenter;
  v34[0] = a1;
  v11 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  v12 = v10;
  sub_1003C89B0(v34, v10 + v11);
  swift_endAccess();
  v12[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 0;
  v13 = &selRef__setDefaultAttributes_;
  v14 = [v12 navigationItem];
  [v14 setLargeTitleDisplayMode:2];

  sub_10065D9D0(&qword_1009909D8, v15, type metadata accessor for AccountViewController, &unk_1007DBA28);
  v16 = v12;
  dispatch thunk of AccountPresenter.view.setter();
  v17 = [v16 navigationItem];
  dispatch thunk of AccountPresenter.title.getter();
  if (v18)
  {
    v19 = String._bridgeToObjectiveC()();
    v13 = &selRef__setDefaultAttributes_;
  }

  else
  {
    v19 = 0;
  }

  [v17 setTitle:v19];

  v20 = [v16 v13[432]];
  v21 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:*&v16[OBJC_IVAR____TtC8AppStore21AccountViewController_activityIndicator]];
  [v20 setLeftBarButtonItem:v21];

  v22 = [v16 v13[432]];
  v23 = [v22 leftBarButtonItem];

  if (v23)
  {
    v24 = OBJC_IVAR____TtC8AppStore21AccountViewController_authenticating;
    swift_beginAccess();
    [v23 setHidden:(v16[v24] & 1) == 0];
  }

  v25 = *&v16[OBJC_IVAR____TtC8AppStore21AccountViewController_refreshControl];
  v26 = v16;
  [v25 addTarget:v26 action:"refreshControlValueChanged" forControlEvents:4096];
  v27 = sub_10065D9D0(&qword_1009909E0, 255, &type metadata accessor for AccountPresenter, &protocol conformance descriptor for AccountPresenter);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = a1;
  v29[4] = v27;

  v30 = sub_10065CA50(a1, v26, sub_1002EA09C, v29, a2);

  v31 = *&v26[OBJC_IVAR____TtC8AppStore21AccountViewController_flowPreviewing];
  *&v26[OBJC_IVAR____TtC8AppStore21AccountViewController_flowPreviewing] = v30;

  v32 = *&v26[OBJC_IVAR____TtC8AppStore21AccountViewController_compoundScrollObserver];

  CompoundScrollObserver.addChild(_:)();

  return v26;
}

void sub_100654134()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v38 = sub_10002849C(&qword_100990A98, &qword_1007DBBA8);
  v2 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &ObjectType - v3;
  v5 = type metadata accessor for AccountViewController();
  v43.receiver = v0;
  v43.super_class = v5;
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 systemBackgroundColor];
  [v7 setBackgroundColor:v9];

  v10 = [v1 collectionView];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v8 systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = [v1 collectionView];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  [v13 setAlwaysBounceVertical:1];

  v15 = [v1 collectionView];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  [v15 setRefreshControl:*&v1[OBJC_IVAR____TtC8AppStore21AccountViewController_refreshControl]];

  v17 = [v1 collectionView];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  [v17 setDelegate:v1];

  v19 = sub_100655410();
  v20 = *&v1[OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource] = v19;

  v21 = [v1 collectionView];
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v21;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v25 = ObjectType;
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  v26 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v41 = sub_10065DA18;
  v42 = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002E9BD4;
  v40 = &unk_1008CD448;
  v27 = _Block_copy(aBlock);

  v28 = [v26 initWithSectionProvider:v27];
  _Block_release(v27);

  [v22 setCollectionViewLayout:v28];

  dispatch thunk of AccountPresenter.onApplySnapshot.getter();
  v29 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.main.getter();
  v40 = v29;
  v41 = &protocol witness table for OS_dispatch_queue;
  aBlock[0] = v30;
  sub_10002849C(&qword_100990AA0, qword_1007DBBB0);
  sub_10065DA20();
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v2 + 8))(v4, v38);
  sub_100007000(aBlock);
  dispatch thunk of BasePresenter.didLoad()();
  v31 = *&v1[OBJC_IVAR____TtC8AppStore21AccountViewController_flowPreviewing];
  if (!v31)
  {
    return;
  }

  v32 = objc_allocWithZone(UIContextMenuInteraction);
  v33 = v31;
  v34 = [v32 initWithDelegate:v33];
  v35 = [v1 collectionView];
  if (!v35)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v36 = v35;
  [v35 addInteraction:v34];
}

void *sub_1006548B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v47 = a1;
  v3 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100990A48, &qword_1007DBAE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_10002849C(&qword_100990A50, &qword_1007DBAE8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v14 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for UICollectionLayoutListConfiguration();
  v18 = *(v48 - 8);
  v19 = __chkstk_darwin(v48);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v14, v19);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v22 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  UIListSeparatorConfiguration.topSeparatorInsets.setter();
  v22(v52, 0);
  v23 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  UIListSeparatorConfiguration.bottomSeparatorInsets.setter();
  v23(v52, 0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v25 = Strong, v26 = *(Strong + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource), v27 = v26, v25, !v26))
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_10;
  }

  dispatch thunk of ModelMappedDiffableDataSource.sectionModel(at:)();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_10:
    sub_10002B894(v9, &qword_100990A48, &qword_1007DBAE0);
    goto LABEL_11;
  }

  (*(v11 + 32))(v13, v9, v10);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v28 = v51;
  if (!v51)
  {
    goto LABEL_12;
  }

  v29 = v50;

  v30 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v30 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    v31 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:);
  }

  else
  {
LABEL_12:
    v31 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:);
  }

  (*(v42 + 104))(v41, *v31, v43);
  UICollectionLayoutListConfiguration.headerMode.setter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v36 = v51;
  if (!v51)
  {
    goto LABEL_18;
  }

  v37 = v50;

  v38 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v38 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    v39 = &enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:);
  }

  else
  {
LABEL_18:
    v39 = &enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:);
  }

  (*(v45 + 104))(v44, *v39, v46);
  UICollectionLayoutListConfiguration.footerMode.setter();

  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  (*(v11 + 8))(v13, v10);
LABEL_11:
  sub_100005744(0, &unk_100990AB0, NSCollectionLayoutSection_ptr);
  v32 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  [v32 contentInsets];
  v34 = v33;
  [v32 contentInsets];
  [v32 setContentInsets:{v34, 16.0}];
  (*(v18 + 8))(v21, v48);
  return v32;
}

id sub_100654F14(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002849C(&qword_100977FB8, &unk_1007C4330);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock[-1] - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {
      dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

      v9 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v4, 1, v9) == 1)
      {
        sub_10002B894(v4, &qword_100977FB8, &unk_1007C4330);
      }

      else
      {
        ReadOnlyLens.value.getter();
        (*(v10 + 8))(v4, v9);
        sub_10002849C(&qword_100973D50, &unk_1007B3840);
        type metadata accessor for AccountPresenter.UpdatesLockupItem();
        if (swift_dynamicCast())
        {
          v11 = aBlock[9];
          swift_beginAccess();
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;

            LOBYTE(v13) = dispatch thunk of AccountPresenter.canUninstall(_:)();

            if (v13)
            {
              v14._object = 0x800000010081EBA0;
              v14._countAndFlagsBits = 0xD000000000000015;
              v15._countAndFlagsBits = 0;
              v15._object = 0xE000000000000000;
              localizedString(_:comment:)(v14, v15);
              v16 = swift_allocObject();
              swift_beginAccess();
              v17 = swift_unknownObjectWeakLoadStrong();
              swift_unknownObjectWeakInit();

              v18 = swift_allocObject();
              *(v18 + 16) = v16;
              *(v18 + 24) = v11;

              v19 = String._bridgeToObjectiveC()();

              aBlock[4] = sub_10065DB0C;
              aBlock[5] = v18;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100653848;
              aBlock[3] = &unk_1008CD4C0;
              v20 = _Block_copy(aBlock);
              v21 = [objc_opt_self() contextualActionWithStyle:1 title:v19 handler:v20];

              _Block_release(v20);

              sub_10002849C(&qword_100973210, qword_1007B0BB0);
              v22 = swift_allocObject();
              *(v22 + 16) = xmmword_1007B0B70;
              *(v22 + 32) = v21;
              sub_100005744(0, &unk_100990AC0, UIContextualAction_ptr);
              v23 = v21;
              isa = Array._bridgeToObjectiveC()().super.isa;

              v25 = [objc_opt_self() configurationWithActions:isa];

              [v25 setPerformsFirstActionWithFullSwipe:0];

              return v25;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10065536C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    dispatch thunk of AccountPresenter.uninstall(_:)();
  }

  return (a3)(0);
}

id sub_100655410()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&qword_100990A20, &qword_1007DBAC0);
  v84 = *(v2 - 8);
  v85 = v2;
  __chkstk_darwin(v2);
  v69 = v3;
  v70 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = v64 - v5;
  v6 = sub_10002849C(&qword_100990A28, &qword_1007DBAC8);
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin(v6);
  v67 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v7;
  __chkstk_darwin(v8);
  v86 = v64 - v9;
  v81 = sub_10002849C(&unk_100990A30, &qword_1007DBAD0);
  v73 = *(v81 - 8);
  __chkstk_darwin(v81);
  v76 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v10;
  __chkstk_darwin(v11);
  v13 = v64 - v12;
  v80 = sub_10002849C(&qword_100972CF8, &qword_1007B3DF8);
  v72 = *(v80 - 8);
  __chkstk_darwin(v80);
  v75 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v68 = v64 - v16;
  __chkstk_darwin(v17);
  v19 = v64 - v18;
  v65 = v20;
  __chkstk_darwin(v21);
  v23 = v64 - v22;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005744(0, &qword_100978E10, UICollectionViewCell_ptr);
  v77 = v23;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = v19;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for AccountActionSectionFooterView();
  v79 = v13;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v26 = ObjectType;
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  type metadata accessor for AccountDetailCollectionViewCell(0);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  v27 = v86;
  UICollectionView.CellRegistration.init(handler:)();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v26;
  type metadata accessor for UpdatesLockupCollectionViewCell(0);
  v30 = v87;
  UICollectionView.CellRegistration.init(handler:)();
  result = [v1 collectionView];
  ObjectType = result;
  if (result)
  {
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = v82;
    v34 = *(v82 + 16);
    v35 = v67;
    v64[1] = v1;
    v36 = v83;
    v34(v67, v27);
    v37 = v84;
    v38 = v85;
    v39 = v70;
    (*(v84 + 16))(v70, v30, v85);
    v40 = v33;
    v41 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v42 = (v66 + *(v37 + 80) + v41) & ~*(v37 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v32;
    (*(v40 + 32))(v43 + v41, v35, v36);
    (*(v37 + 32))(v43 + v42, v39, v38);
    v44 = objc_allocWithZone(sub_10002849C(&qword_100990A40, &qword_1007DBAD8));
    ObjectType = ModelMappedDiffableDataSource.init(collectionView:cellProvider:)();
    v70 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = v72;
    v46 = *(v72 + 16);
    v47 = v68;
    v48 = v80;
    v46(v68, v77, v80);
    v49 = v73;
    (*(v73 + 16))(v76, v79, v81);
    v46(v75, v78, v48);
    v50 = *(v45 + 80);
    v51 = (v50 + 16) & ~v50;
    v52 = (v65 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (*(v49 + 80) + v52 + 8) & ~*(v49 + 80);
    v54 = (v71 + v50 + v53) & ~v50;
    v55 = swift_allocObject();
    v56 = *(v45 + 32);
    v57 = v47;
    v58 = v80;
    v56(v55 + v51, v57, v80);
    *(v55 + v52) = v70;
    v59 = v55 + v53;
    v60 = v81;
    (*(v49 + 32))(v59, v76, v81);
    v61 = v58;
    v56(v55 + v54, v75, v58);
    v62 = ObjectType;

    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

    (*(v84 + 8))(v87, v85);
    (*(v82 + 8))(v86, v83);
    (*(v49 + 8))(v79, v60);
    v63 = *(v45 + 8);
    v63(v78, v61);
    v63(v77, v61);

    return v62;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100655D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10002849C(&qword_100990A48, &qword_1007DBAE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for UIListContentConfiguration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    static UIListContentConfiguration.groupedHeader()();
    v18 = *&v17[OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource];
    v26 = a1;
    if (v18)
    {
      v19 = v18;
      IndexPath.section.getter();
      dispatch thunk of ModelMappedDiffableDataSource.sectionModel(at:)();
    }

    else
    {
      v20 = sub_10002849C(&qword_100990A50, &qword_1007DBAE8);
      (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    }

    sub_100031660(v11, v8, &qword_100990A48, &qword_1007DBAE0);
    v21 = sub_10002849C(&qword_100990A50, &qword_1007DBAE8);
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v8, 1, v21) == 1)
    {
      sub_10002B894(v8, &qword_100990A48, &qword_1007DBAE0);
    }

    else
    {
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      (*(v22 + 8))(v8, v21);
    }

    UIListContentConfiguration.text.setter();
    v27[3] = v12;
    v27[4] = &protocol witness table for UIListContentConfiguration;
    v23 = sub_1000056E0(v27);
    (*(v13 + 16))(v23, v15, v12);
    v24 = v26;
    UICollectionViewCell.contentConfiguration.setter();
    [v17 pageMarginInsets];
    [v24 setLayoutMargins:?];

    sub_10002B894(v11, &qword_100990A48, &qword_1007DBAE0);
    return (*(v13 + 8))(v15, v12);
  }

  return result;
}

char *sub_1006560A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for UIListContentConfiguration.TextProperties.TextAlignment();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100990A70, &qword_1007DBB70);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = sub_10002849C(&qword_100990A48, &qword_1007DBAE0);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  v23 = type metadata accessor for UIListContentConfiguration();
  v50 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = result;
    v48 = v23;
    static UIListContentConfiguration.groupedFooter()();
    v28 = *&v27[OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource];
    v49 = a1;
    v47 = v27;
    if (v28)
    {
      v29 = v28;
      IndexPath.section.getter();
      dispatch thunk of ModelMappedDiffableDataSource.sectionModel(at:)();
    }

    else
    {
      v30 = sub_10002849C(&qword_100990A50, &qword_1007DBAE8);
      (*(*(v30 - 8) + 56))(v22, 1, 1, v30);
    }

    sub_100031660(v22, v19, &qword_100990A48, &qword_1007DBAE0);
    v31 = sub_10002849C(&qword_100990A50, &qword_1007DBAE8);
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    if (v33(v19, 1, v31) == 1)
    {
      sub_10002B894(v19, &qword_100990A48, &qword_1007DBAE0);
      v34 = type metadata accessor for AccountPresenter.Section.Identifier();
      (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
      sub_10002B894(v13, &unk_100990A70, &qword_1007DBB70);
    }

    else
    {
      v43 = v33;
      ReadOnlyLens.value.getter();
      (*(v32 + 8))(v19, v31);
      AccountPresenter.Section.identifier.getter();

      v35 = type metadata accessor for AccountPresenter.Section.Identifier();
      v36 = *(v35 - 8);
      (*(v36 + 56))(v13, 0, 1, v35);
      sub_10065CE28(v13, v10);
      if ((*(v36 + 88))(v10, v35) == enum case for AccountPresenter.Section.Identifier.userInfo(_:))
      {
        (*(v45 + 104))(v44, enum case for UIListContentConfiguration.TextProperties.TextAlignment.center(_:), v46);
        v37 = UIListContentConfiguration.textProperties.modify();
        UIListContentConfiguration.TextProperties.alignment.setter();
        v37(v51, 0);
      }

      else
      {
        (*(v36 + 8))(v10, v35);
      }

      v33 = v43;
    }

    sub_100031660(v22, v16, &qword_100990A48, &qword_1007DBAE0);
    if (v33(v16, 1, v31) == 1)
    {
      sub_10002B894(v16, &qword_100990A48, &qword_1007DBAE0);
    }

    else
    {
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      (*(v32 + 8))(v16, v31);
    }

    v38 = v49;
    UIListContentConfiguration.text.setter();
    v39 = v48;
    v51[3] = v48;
    v51[4] = &protocol witness table for UIListContentConfiguration;
    v40 = sub_1000056E0(v51);
    v41 = v50;
    (*(v50 + 16))(v40, v25, v39);
    UICollectionViewCell.contentConfiguration.setter();
    v42 = v47;
    [v47 pageMarginInsets];
    [v38 setLayoutMargins:?];

    sub_10002B894(v22, &qword_100990A48, &qword_1007DBAE0);
    return (*(v41 + 8))(v25, v39);
  }

  return result;
}

char *sub_10065673C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10002849C(&qword_100990A48, &qword_1007DBAE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = *&result[OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource];
    if (v17)
    {
      v18 = v17;
      IndexPath.section.getter();
      dispatch thunk of ModelMappedDiffableDataSource.sectionModel(at:)();
    }

    else
    {
      v19 = sub_10002849C(&qword_100990A50, &qword_1007DBAE8);
      (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    }

    sub_100031660(v14, v11, &qword_100990A48, &qword_1007DBAE0);
    v20 = sub_10002849C(&qword_100990A50, &qword_1007DBAE8);
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (v22(v11, 1, v20) == 1)
    {
      sub_10002B894(v11, &qword_100990A48, &qword_1007DBAE0);
      v23 = 0uLL;
    }

    else
    {
      swift_getKeyPath();
      v32 = v8;
      ReadOnlyLens.subscript.getter();
      v8 = v32;

      v31 = v33;
      (*(v21 + 8))(v11, v20);
      v23 = v31;
    }

    *&a1[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_text] = v23;

    sub_1007434FC();
    sub_100031660(v14, v8, &qword_100990A48, &qword_1007DBAE0);
    if (v22(v8, 1, v20) == 1)
    {
      sub_10002B894(v8, &qword_100990A48, &qword_1007DBAE0);
      v24 = 0;
      v25 = 0;
    }

    else
    {
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      v26 = v33;
      if (v33)
      {
        v27 = *(&v33 + 1);
        v25 = swift_allocObject();
        *(v25 + 16) = v26;
        *(v25 + 24) = v27;
        v24 = sub_10041D558;
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      (*(v21 + 8))(v8, v20);
    }

    v28 = &a1[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_buttonAction];
    v29 = *&a1[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_buttonAction];
    v30 = *&a1[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_buttonAction + 8];
    *v28 = v24;
    *(v28 + 1) = v25;
    sub_10001F63C(v29, v30);
    [v16 pageMarginInsets];
    [a1 setLayoutMargins:?];
    a1[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_isCentered] = 1;
    sub_1007434FC();

    return sub_10002B894(v14, &qword_100990A48, &qword_1007DBAE0);
  }

  return result;
}

uint64_t sub_100656B58@<X0>(uint64_t (**a1)()@<X8>)
{
  result = AccountPresenter.Section.footerButtonHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_100055FCC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_100656BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_10002849C(&qword_100977FB8, &unk_1007C4330);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v10 = Strong;
  v11 = *(Strong + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource);
  v12 = v11;

  if (!v11)
  {
    goto LABEL_10;
  }

  dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

  v13 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_10002B894(v8, &qword_100977FB8, &unk_1007C4330);
    goto LABEL_10;
  }

  ReadOnlyLens.value.getter();
  (*(v14 + 8))(v8, v13);
  sub_100005A38(v22, v23);
  sub_10002C0AC(v23, v22);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for AccountPresenter.AccountDetailItem();
  if (!swift_dynamicCast())
  {
    type metadata accessor for AccountPresenter.UpdatesLockupItem();
    if (swift_dynamicCast())
    {

      sub_10002C0AC(v23, v21);
      type metadata accessor for UpdatesLockupCollectionViewCell(0);
      v16 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_10002B894(v21, &unk_10097DBE0, &unk_1007BCA00);
      goto LABEL_8;
    }

    while (1)
    {
LABEL_10:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  sub_10002C0AC(v23, v21);
  type metadata accessor for AccountDetailCollectionViewCell(0);
  v15 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_10002B894(v21, &unk_10097DBE0, &unk_1007BCA00);
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  v16 = v15;
  _StringGuts.grow(_:)(19);

  v20[1] = 0xD000000000000011;
  v20[2] = 0x800000010081EB30;
  sub_10002A400(v23, v23[3]);
  dispatch thunk of ComponentModel.id.getter();
  v17._countAndFlagsBits = AnyHashable.description.getter();
  String.append(_:)(v17);

  sub_10003D614(v21);
  v18 = String._bridgeToObjectiveC()();

  [v16 setAccessibilityIdentifier:v18];

LABEL_8:
  sub_100007000(v22);
  sub_100007000(v23);
  return v16;
}

uint64_t sub_100656FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[2] = a7;
  v32 = a1;
  v11 = sub_10002849C(&qword_100990A48, &qword_1007DBAE0);
  __chkstk_darwin(v11 - 8);
  v13 = v30 - v12;
  v14 = sub_10002849C(&qword_100990A50, &qword_1007DBAE8);
  v31 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v30 - v15;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v17 == a3)
  {

    goto LABEL_13;
  }

  v30[1] = a8;
  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
LABEL_13:
    sub_100005744(0, &qword_100978E10, UICollectionViewCell_ptr);
    return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v20 == a3)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v25 = *(Strong + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource), v26 = Strong, v27 = v25, v26, !v25))
  {
    (*(v31 + 56))(v13, 1, 1, v14);
    goto LABEL_21;
  }

  IndexPath.section.getter();
  dispatch thunk of ModelMappedDiffableDataSource.sectionModel(at:)();

  v28 = v31;
  if ((*(v31 + 48))(v13, 1, v14) == 1)
  {
LABEL_21:
    sub_10002B894(v13, &qword_100990A48, &qword_1007DBAE0);
    goto LABEL_13;
  }

  (*(v28 + 32))(v16, v13, v14);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  if (!v33)
  {
    (*(v28 + 8))(v16, v14);
    goto LABEL_13;
  }

  sub_10001F63C(v33, v34);
  type metadata accessor for AccountActionSectionFooterView();
  v29 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v28 + 8))(v16, v14);
  return v29;
}

void sub_100657368(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v174 = type metadata accessor for AccountPresenter.AccountDetailItem.Accessory();
  v171 = *(v174 - 8);
  __chkstk_darwin(v174);
  v155 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v154 = &v147 - v8;
  v9 = sub_10002849C(&unk_100990A58, &unk_1007DBB28);
  __chkstk_darwin(v9 - 8);
  v11 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v162 = &v147 - v13;
  __chkstk_darwin(v14);
  v165 = &v147 - v15;
  __chkstk_darwin(v16);
  v161 = &v147 - v17;
  __chkstk_darwin(v18);
  v170 = &v147 - v19;
  __chkstk_darwin(v20);
  v164 = &v147 - v21;
  v22 = sub_10002849C(&qword_100984340, qword_1007C0830);
  __chkstk_darwin(v22 - 8);
  v173 = (&v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = (&v147 - v25);
  __chkstk_darwin(v27);
  v172 = (&v147 - v28);
  __chkstk_darwin(v29);
  v169 = &v147 - v30;
  v31 = type metadata accessor for AccountPresenter.AccountDetailItem.TitleStyle();
  v167 = *(v31 - 8);
  v168 = v31;
  __chkstk_darwin(v31);
  v166 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for SystemImage();
  v153 = *(v156 - 8);
  __chkstk_darwin(v156);
  v152 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for Artwork.Style();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v147 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10002849C(&qword_100990A68, &qword_1007DBB38);
  __chkstk_darwin(v35 - 8);
  v37 = &v147 - v36;
  v38 = type metadata accessor for AccountPresenter.AccountDetailItem.ImageConfiguration();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v147 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v163 = &v147 - v43;
  sub_10002C0AC(a3, v177);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for AccountPresenter.AccountDetailItem();
  if (swift_dynamicCast())
  {
    v151 = v26;
    v44 = v176;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_69;
    }

    v150 = v38;
    v157 = Strong;
    [Strong pageMarginInsets];
    [a1 setLayoutMargins:?];
    v46 = AccountPresenter.AccountDetailItem.accessoryMargin.getter();
    v47 = &a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryMargin];
    *v47 = v46;
    v47[8] = v48 & 1;
    v49 = AccountPresenter.AccountDetailItem.disabled.getter();
    v50 = a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_disabled];
    a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_disabled] = v49 & 1;
    v148 = v11;
    v175 = v44;
    if ((v49 & 1) != v50)
    {
      v51 = v49;
      [*&a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel] setEnabled:(v49 & 1) == 0];
      [*&a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel] setEnabled:(v51 & 1) == 0];
      [a1 setUserInteractionEnabled:(v51 & 1) == 0];
      [a1 setNeedsDisplay];
    }

    AccountPresenter.AccountDetailItem.title.getter();
    v52 = *&a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel];
    if (v53)
    {
      v54 = String._bridgeToObjectiveC()();
    }

    else
    {
      v54 = 0;
    }

    v149 = v52;
    [v52 setText:v54];

    [a1 setNeedsLayout];
    AccountPresenter.AccountDetailItem.subtitle.getter();
    v55 = *&a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel];
    if (v56)
    {
      v57 = String._bridgeToObjectiveC()();
    }

    else
    {
      v57 = 0;
    }

    v58 = v39;
    v59 = v150;
    [v55 setText:v57];

    if (sub_1006C4E1C())
    {
      [a1 setNeedsLayout];
    }

    AccountPresenter.AccountDetailItem.detail.getter();
    v60 = *&a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_detailLabel];
    if (v61)
    {
      v62 = String._bridgeToObjectiveC()();
    }

    else
    {
      v62 = 0;
    }

    [v60 setText:v62];

    v63 = AccountPresenter.AccountDetailItem.shouldShowFullTitle.getter();
    v64 = a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldShowFullTitle];
    a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldShowFullTitle] = v63 & 1;
    if ((v63 & 1) != v64)
    {
      [a1 setNeedsLayout];
    }

    AccountPresenter.AccountDetailItem.image.getter();
    v65 = (*(v39 + 48))(v37, 1, v59);
    v66 = v171;
    v67 = v169;
    if (v65 == 1)
    {
      sub_10002B894(v37, &qword_100990A68, &qword_1007DBB38);
    }

    else
    {
      v68 = v163;
      (*(v39 + 32))();
      (*(v39 + 16))(v41, v68, v59);
      v69 = (*(v39 + 88))(v41, v59);
      if (v69 == enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.image(_:))
      {
        (*(v39 + 96))(v41, v59);
        v70 = *v41;
        v71 = *(v41 + 3);
        v72 = v70;
        ArtworkView.image.setter();
        [a1 setNeedsLayout];
        ArtworkView.imageSize.setter();
        ArtworkView.frameUpdatesImageSize.setter();
        a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldResizeImage] = 1;
        v73 = &a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight];
        *v73 = v71;
        v73[8] = 0;
        (*(v159 + 104))(v158, enum case for Artwork.Style.unadorned(_:), v160);
        ArtworkView.style.setter();
        dispatch thunk of RoundedCornerView.borderWidth.setter();
        v74 = [objc_opt_self() clearColor];
        dispatch thunk of RoundedCornerView.borderColor.setter();

        (*(v39 + 8))(v68, v59);
      }

      else if (v69 == enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.profileImage(_:))
      {
        (*(v39 + 96))(v41, v59);
        v75 = *v41;
        v178.width = 56.0;
        v178.height = 56.0;
        UIGraphicsBeginImageContextWithOptions(v178, 0, 0.0);
        [v75 drawInRect:{0.0, 0.0, 56.0, 56.0}];
        v76 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        v77 = v39;
        v78 = v76;
        ArtworkView.image.setter();
        [a1 setNeedsLayout];

        ArtworkView.frameUpdatesImageSize.setter();
        a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
        v79 = &a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight];
        *v79 = 0x4030000000000000;
        v79[8] = 0;
        (*(v159 + 104))(v158, enum case for Artwork.Style.round(_:), v160);
        ArtworkView.style.setter();
        v80 = [a1 traitCollection];
        static Separator.thickness(compatibleWith:)();

        dispatch thunk of RoundedCornerView.borderWidth.setter();
        v81 = [objc_opt_self() separatorColor];
        dispatch thunk of RoundedCornerView.borderColor.setter();

        (*(v77 + 8))(v163, v59);
      }

      else
      {
        if (v69 != enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.systemImage(_:))
        {
LABEL_73:
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return;
        }

        (*(v39 + 96))(v41, v59);
        v82 = v153;
        v83 = v152;
        (*(v153 + 32))();
        ArtworkView.frameUpdatesImageSize.setter();
        a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
        v84 = &a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight];
        *v84 = 0x4026000000000000;
        v84[8] = 0;
        dispatch thunk of RoundedCornerView.borderWidth.setter();
        v85 = [objc_opt_self() clearColor];
        dispatch thunk of RoundedCornerView.borderColor.setter();
        v86 = [objc_opt_self() configurationWithPointSize:48.0];
        v87 = v83;
        v88 = static SystemImage.load(_:with:)();

        v89 = v88;
        ArtworkView.image.setter();
        [a1 setNeedsLayout];

        (*(v82 + 8))(v87, v156);
        (*(v58 + 8))(v163, v59);
      }
    }

    v90 = v166;
    AccountPresenter.AccountDetailItem.titleStyle.getter();
    v91 = (*(v167 + 88))(v90, v168);
    v92 = v174;
    v93 = v170;
    if (v91 == enum case for AccountPresenter.AccountDetailItem.TitleStyle.action(_:))
    {
      v94 = [v157 collectionView];
      if (v94)
      {
        v95 = v94;
        v96 = [v94 tintColor];

        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_72;
    }

    if (v91 == enum case for AccountPresenter.AccountDetailItem.TitleStyle.primary(_:))
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v97 = static UIColor.primaryText.getter();
    }

    else
    {
      if (v91 != enum case for AccountPresenter.AccountDetailItem.TitleStyle.secondary(_:))
      {
LABEL_72:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        goto LABEL_73;
      }

      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v97 = static UIColor.secondaryText.getter();
    }

    v96 = v97;
LABEL_35:
    [v149 setTextColor:v96];

    v98 = v164;
    AccountPresenter.AccountDetailItem.accessory.getter();
    v99 = (v66 + 48);
    v100 = *(v66 + 48);
    if (v100(v98, 1, v92) == 1)
    {
      sub_10002B894(v98, &unk_100990A58, &unk_1007DBB28);
      v101 = type metadata accessor for Accessory(0);
      (*(*(v101 - 8) + 56))(v67, 1, 1, v101);
    }

    else
    {
      sub_100658978(v67);
      (*(v66 + 8))(v98, v92);
    }

    v102 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph;
    v103 = v157;
    v104 = *&v157[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];

    v168 = v103;
    sub_1006C51F4(v67, v104);

    sub_10002B894(v67, &qword_100984340, qword_1007C0830);
    v105 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView;
    v106 = *&a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView];
    if (!v106)
    {
      goto LABEL_52;
    }

    v107 = v106;
    AccountPresenter.AccountDetailItem.accessory.getter();
    if (v100(v93, 1, v92) == 1)
    {
      sub_10002B894(v93, &unk_100990A58, &unk_1007DBB28);
      v108 = type metadata accessor for Accessory(0);
      (*(*(v108 - 8) + 56))(v172, 1, 1, v108);
    }

    else
    {
      v109 = v93;
      v110 = v172;
      sub_100658978(v172);
      (*(v66 + 8))(v109, v92);
      v111 = type metadata accessor for Accessory(0);
      if ((*(*(v111 - 8) + 48))(v110, 1, v111) != 1)
      {
        v112 = 0;
LABEL_44:
        sub_10002B894(v172, &qword_100984340, qword_1007C0830);
        [v107 setHidden:v112];

        v113 = *&a1[v105];
        if (v113)
        {
          v114 = v113;
          v115 = v161;
          AccountPresenter.AccountDetailItem.accessory.getter();
          if (v100(v115, 1, v92) == 1)
          {
            sub_10002B894(v115, &unk_100990A58, &unk_1007DBB28);
            v116 = 0;
          }

          else
          {
            v117 = v154;
            (*(v66 + 16))(v154, v115, v92);
            if ((*(v66 + 88))(v117, v92) == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
            {
              (*(v66 + 96))(v117, v92);
              v116 = *(v117 + 3);

              v118 = v66;
              v119 = v92;
              (*(v118 + 8))(v161, v92);
            }

            else
            {
              v120 = *(v66 + 8);
              v119 = v92;
              v120(v117, v92);
              v116 = 0;
              v120(v161, v92);
            }

            v92 = v119;
            v66 = v171;
          }

          [v114 setTintColor:v116];
        }

LABEL_52:
        v121 = v165;
        AccountPresenter.AccountDetailItem.secondaryAccessory.getter();
        if (v100(v121, 1, v92) == 1)
        {
          sub_10002B894(v121, &unk_100990A58, &unk_1007DBB28);
          v122 = type metadata accessor for Accessory(0);
          v123 = v151;
          (*(*(v122 - 8) + 56))(v151, 1, 1, v122);
        }

        else
        {
          v124 = v151;
          sub_100658978(v151);
          v123 = v124;
          (*(v66 + 8))(v121, v92);
        }

        v125 = v168;
        v126 = *&v157[v102];

        sub_1006C5624(v123, v126);

        sub_10002B894(v123, &qword_100984340, qword_1007C0830);
        v127 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessoryView;
        v128 = *&a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessoryView];
        if (!v128)
        {
LABEL_68:

LABEL_69:

          return;
        }

        v129 = v100;
        v130 = v66;
        v131 = v128;
        v132 = v162;
        AccountPresenter.AccountDetailItem.secondaryAccessory.getter();
        v172 = v99;
        if (v129(v132, 1, v92) == 1)
        {
          sub_10002B894(v132, &unk_100990A58, &unk_1007DBB28);
          v133 = type metadata accessor for Accessory(0);
          (*(*(v133 - 8) + 56))(v173, 1, 1, v133);
          v134 = v130;
        }

        else
        {
          v135 = v132;
          v136 = v173;
          sub_100658978(v173);
          v134 = v130;
          (*(v130 + 8))(v135, v92);
          v137 = type metadata accessor for Accessory(0);
          v138 = v136;
          v125 = v168;
          if ((*(*(v137 - 8) + 48))(v138, 1, v137) != 1)
          {
            v139 = 0;
LABEL_61:
            sub_10002B894(v173, &qword_100984340, qword_1007C0830);
            [v131 setHidden:v139];

            v140 = *&a1[v127];
            v141 = v174;
            if (v140)
            {
              v142 = v140;
              v143 = v148;
              AccountPresenter.AccountDetailItem.secondaryAccessory.getter();
              if (v129(v143, 1, v141) == 1)
              {
                sub_10002B894(v143, &unk_100990A58, &unk_1007DBB28);
                v144 = 0;
              }

              else
              {
                v145 = v155;
                (*(v134 + 16))(v155, v143, v141);
                if ((*(v134 + 88))(v145, v141) == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
                {
                  (*(v134 + 96))(v145, v141);
                  v144 = *(v145 + 3);

                  (*(v134 + 8))(v143, v141);
                }

                else
                {
                  v146 = *(v134 + 8);
                  v146(v145, v141);
                  v144 = 0;
                  v146(v143, v141);
                }
              }

              [v142 setTintColor:v144];
            }

            goto LABEL_68;
          }
        }

        v139 = 1;
        goto LABEL_61;
      }
    }

    v112 = 1;
    goto LABEL_44;
  }
}

uint64_t sub_100658978@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccountPresenter.AccountDetailItem.Accessory();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.badge(_:) || v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.label(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = v8[1];
    *a1 = *v8;
    a1[1] = v10;
    v11 = type metadata accessor for Accessory(0);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  if (v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
  {
    (*(v5 + 96))(v8, v4);
    v12 = *v8;
    v13 = v8[3];
    v19 = *(v8 + 1);

    *a1 = v12;
    *(a1 + 1) = v19;
    v11 = type metadata accessor for Accessory(0);
    goto LABEL_6;
  }

  v15 = enum case for AccountPresenter.AccountDetailItem.Accessory.chevron(_:);
  v16 = v9;
  v17 = type metadata accessor for Accessory(0);
  v18 = v17;
  if (v16 == v15)
  {
    swift_storeEnumTagMultiPayload();
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  else
  {
    (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    return (*(v5 + 8))(v8, v4);
  }
}

void sub_100658C68(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a3, v44);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for AccountPresenter.UpdatesLockupItem();
  if (swift_dynamicCast())
  {
    v10 = v43;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v42 = a1;
      if (qword_10096EBC0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for StaticDimension();
      sub_1000056A8(v13, qword_100990910);
      v14 = v12;
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v16 = v15;

      v17 = *(v7 + 8);
      v17(v9, v6);
      [v14 pageMarginInsets];
      v19 = v18;
      v20 = v14;
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v22 = v21;

      v17(v9, v6);
      [v20 pageMarginInsets];
      v24 = v23;
      v25 = AccountPresenter.UpdatesLockupItem.lockup.getter();
      v26 = *&v20[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
      v27 = v20;

      v28 = [v27 traitCollection];
      v29 = [v28 horizontalSizeClass];

      if (v29 == 1)
      {
        v30 = AccountPresenter.UpdatesLockupItem.isCollapsed.getter();
      }

      else
      {
        v30 = 1;
      }

      v31 = v42;
      v32 = [v27 snapshotPageTraitEnvironment];

      sub_1003ABCA4(v25, v26, v30 & 1, 0, v32, v16, v19, v22, v24);

      swift_unknownObjectRelease();
      v33 = *&v31[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView];
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v10;
      *(v35 + 24) = v34;
      v36 = (v33 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
      v37 = *(v33 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
      v38 = *(v33 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler + 8);
      *v36 = sub_10065CE20;
      v36[1] = v35;
      swift_retain_n();

      sub_10001F63C(v37, v38);
      v39 = *(v33 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton);

      [v39 setUserInteractionEnabled:1];

      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v40 = static UIColor.tableViewCellBackground.getter();
      [v31 setBackgroundColor:v40];
    }

    else
    {
    }
  }
}