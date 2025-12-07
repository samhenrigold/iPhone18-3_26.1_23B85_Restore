void sub_100338410()
{
  if ((*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning) & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
    if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v2 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v2 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (*(v0 + *v2) == 6)
    {
      v3 = *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) ^ 1u;
    }

    else
    {
      v3 = 0;
    }

    [*(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView) setHidden:v3];
    v4 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView);
    if (v4)
    {
      if (*(v0 + v1))
      {
        v5 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v5 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v5) == 6)
      {
        v6 = *(v0 + v1);
      }

      else
      {
        v6 = 1;
      }

      [v4 setHidden:v6];
    }

    v7 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView);
    if (v7)
    {
      if (*(v0 + v1))
      {
        v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v8) == 6)
      {
        v9 = *(v0 + v1) | *(*(*(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia);
      }

      else
      {
        v9 = 1;
      }

      [v7 setHidden:v9 & 1];
    }

    v10 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView);
    if (v10)
    {
      if (*(v0 + v1))
      {
        v11 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v11 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v11) == 6)
      {
        v12 = *(v0 + v1) | *(*(*(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia);
      }

      else
      {
        v12 = 1;
      }

      [v10 setHidden:v12 & 1];
    }

    if (*(v0 + v1))
    {
      v13 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v13 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v14 = *(v0 + *v13);
    if (v14 == 6)
    {
      v15 = *(v0 + v1) ^ 1u;
    }

    else
    {
      v15 = (v14 == 4) & *(*(*(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia);
    }

    [*(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer) setHidden:v15];
    v16 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v16)
    {
      if (*(v0 + v1))
      {
        v17 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v17 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v17) == 6)
      {
        v18 = *(v0 + v1);
      }

      else
      {
        v18 = 1;
      }

      [v16 setHidden:v18];
    }

    v19 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView);
    v20 = (sub_10033494C() & 1) == 0;

    [v19 setHidden:v20];
  }
}

id sub_100338688(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  [v1 setNeedsLayout];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView];
  v5 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v2[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v6 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v6 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  *(v4 + qword_10098B7B8) = v2[*v6];
  sub_10055189C();
  v7 = *&v2[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
  if (v7)
  {
    if (v2[v5])
    {
      v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v7[qword_10098B7B8] = v2[*v8];
    v9 = v7;
    sub_10055189C();
  }

  v10 = *(*&v2[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  if (v2[v5])
  {
    v11 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v11 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v10[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_sizeCategory] = v2[*v11];
  v12 = v10;
  sub_10070D304();

  if (v2[v5])
  {
    v14 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v14 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  sub_1003387E4(v2[*v14], v3, v13);

  return [v2 setNeedsLayout];
}

void sub_1003387E4(unsigned __int8 a1, unsigned __int8 a2, __n128 a3)
{
  v4 = a1;
  v5 = a2;
  v6 = type metadata accessor for RiverViewStyling();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v54[-1] - v11;
  if (v4 == 7)
  {
    if (v5 == 7)
    {
      return;
    }
  }

  else if (v5 != 7)
  {
    switch(v4)
    {
      case 6:
        if (v5 == 6)
        {
          return;
        }

        break;
      case 5:
        if (v5 == 5)
        {
          return;
        }

        break;
      case 4:
        if (v5 == 4)
        {
          return;
        }

        break;
      default:
        if ((v5 - 7) <= 0xFFFFFFFC && v4 == v5)
        {
          return;
        }

        break;
    }
  }

  if (v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] == 6)
  {
    static RiverViewStyling.defaultSpeed.getter();
    static RiverViewStyling.defaultRowOffsets.getter();
    RiverViewStyling.init(itemSize:interRowSpacing:interItemSpacing:speed:rowOffsets:reverseAlternatingRows:)();
    v13 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView;
    v14 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView];
    v53 = v7;
    if (v14)
    {
      [v14 setHidden:0];
    }

    else
    {
      (*(v7 + 16))(v9, v12, v6);
      v15 = objc_allocWithZone(type metadata accessor for RiverTodayCardBackgroundView(0));
      v16 = sub_1004A23B8(v9);
      [v16 setClipsToBounds:1];
      [v3 bounds];
      CGRectGetWidth(v58);
      [v3 bounds];
      CGRectGetHeight(v59);
      [v16 bounds];
      [v16 setBounds:?];
      [v16 _setContinuousCornerRadius:20.0];
      v17 = [v16 layer];

      v18 = [v3 traitCollection];
      v19 = UITraitCollection.prefersRightToLeftLayouts.getter();

      if (v19)
      {
        v20 = 10;
      }

      else
      {
        v20 = 5;
      }

      [v17 setMaskedCorners:{v20, v53}];

      v21 = *&v3[v13];
      *&v3[v13] = v16;
      v22 = v16;

      v23 = [v3 contentView];
      [v23 addSubview:v22];
    }

    v24 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView;
    if (!*&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView])
    {
      v25 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView;
      if (!*&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView])
      {
        v26 = [objc_allocWithZone(UIView) init];
        [v26 setClipsToBounds:1];
        v27 = *&v3[v24];
        *&v3[v24] = v26;
        v28 = v26;

        v29 = [v3 contentView];
        [v29 addSubview:v28];

        type metadata accessor for RiverCardDataSource();
        v30 = swift_allocObject();
        *(v30 + 32) = _swiftEmptyArrayStorage;
        *(v30 + 16) = xmmword_1007C4950;
        *(v30 + 40) = vdupq_n_s64(0x4058C00000000000uLL);
        (*(v53 + 16))(v9, v12, v6);
        v31 = objc_allocWithZone(sub_10002849C(&qword_10097D5D0, &qword_1007C49F0));

        v32 = RiverView.init(dataSource:styling:)();
        [v32 setClipsToBounds:0];
        v33 = *&v3[v25];
        *&v3[v25] = v32;
        v34 = v32;

        [v28 addSubview:v34];
      }
    }

    v35 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer;
    if (!*&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer])
    {
      type metadata accessor for TodayListCardLockupContainer();
      v36 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v37 = v36;
      v38 = v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded];
      v39 = v36[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded];
      v36[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded] = v38;
      if (v38 != v39)
      {
        [v36 setNeedsLayout];
      }

      v40 = v37;
      v41 = [v40 layer];
      [v41 setZPosition:0.0];

      [v40 setClipsToBounds:1];
      v42 = *&v3[v35];
      *&v3[v35] = v40;
      v43 = v40;

      v44 = [v3 contentView];
      [v44 addSubview:v43];
    }

    v45 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView;
    if (!*&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView])
    {
      v54[0] = sub_1000DB5A0;
      v54[1] = 0;
      v54[2] = sub_1005AB608;
      v54[3] = 0;
      v54[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v54[5] = 0;
      v54[6] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v54[7] = 0;
      v54[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v54[9] = 0;
      v54[10] = sub_100287668;
      v54[11] = 0;
      v55 = 0x4000000000000000uLL;
      *v56 = 0;
      *&v56[8] = 0x4018000000000000;
      *&v56[16] = 0;
      v56[24] = 1;
      v46 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
      v47 = sub_100550DDC(v54, &v55);
      sub_10033494C();
      v48 = &v47[qword_10098B7B0];
      *(v48 + 25) = *&v56[9];
      v49 = *v56;
      *v48 = v55;
      *(v48 + 1) = v49;
      [v47 setNeedsLayout];
      v47[qword_10098B7B8] = v4;
      sub_10055189C();
      v50 = *&v3[v45];
      *&v3[v45] = v47;
      v51 = v47;

      v52 = [v3 contentView];
      [v52 addSubview:v51];
    }

    [v3 setNeedsLayout];
    (*(v53 + 8))(v12, v6);
  }

  else
  {

    sub_100337AC0();
  }
}

void sub_100338F5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  swift_weakAssign();
  v4 = (v2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_10001F63C(v5, v6);
  type metadata accessor for TodayListCardLockupContainer();
  sub_100343708(&qword_100980BD8, type metadata accessor for TodayListCardLockupContainer, &unk_1007C8F50);
  NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
  v7 = *(v3 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v7)
  {
    v8 = v7;
    NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
  }
}

void sub_10033908C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ImpressionsCalculator.removeAllElements()();
  }

  swift_weakAssign();
  v3 = (v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_10001F63C(v4, v5);
  type metadata accessor for TodayListCardLockupContainer();
  sub_100343708(&qword_100980BD8, type metadata accessor for TodayListCardLockupContainer, &unk_1007C8F50);
  NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)();
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v6)
  {
    v7 = v6;
    NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)();
  }
}

void sub_1003391CC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v151 = a4;
  v7 = a2;
  v159 = a1;
  v145 = type metadata accessor for StringCharacteristics();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v152 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TodayCard.Style();
  v155 = *(v9 - 8);
  v156 = v9;
  __chkstk_darwin(v9);
  v153 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for EditorialDisplayOptions();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v157 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v148 = &v130 - v13;
  v14 = sub_10002849C(&qword_1009752C8, &unk_1007B73C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v130 - v15;
  v17 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v17 - 8);
  v19 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v130 - v21;
  v23 = type metadata accessor for PageGrid();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v143 = a3;
  v25(v22, a3, v23);
  (*(v24 + 56))(v22, 0, 1, v23);
  v26 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000315F8(v22, &v4[v26], &qword_10097DBD0, &qword_1007BC750);
  swift_endAccess();
  v27 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView;
  v154 = *&v4[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  v28 = *&v154[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView];
  sub_100031660(&v4[v26], v19, &qword_10097DBD0, &qword_1007BC750);
  v29 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  v30 = v28;
  sub_1000315F8(v19, v28 + v29, &qword_10097DBD0, &qword_1007BC750);
  swift_endAccess();

  v158 = v7;
  sub_1004EAB3C(v7);
  v31 = [v4 backgroundView];
  if (v31)
  {
    v32 = v31;
    v33 = TodayCard.backgroundColor.getter();
    if (!v33)
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v33 = static UIColor.todayCardDefaultBackground.getter();
    }

    v34 = v33;
    [v32 setBackgroundColor:v33];
  }

  *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_todayCard] = v159;

  v35 = TodayCard.media.getter();
  type metadata accessor for TodayCardMediaList();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {

    *(*&v154[v27] + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) = 0;
    sub_100338410();
    return;
  }

  v37 = v36;
  v141 = v35;
  TodayCard.style.getter();
  (*(v155 + 56))(v16, 0, 1, v156);
  v38 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_1000315F8(v16, &v5[v38], &qword_1009752C8, &unk_1007B73C0);
  swift_endAccess();
  v39 = TodayCardMediaList.isMediaDark.getter();
  v40 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_isMediaDark;
  v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_isMediaDark] = v39 & 1;
  v140 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v41 = v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v169 = TodayCard.media.getter();
  type metadata accessor for TodayCardMedia();
  sub_10002849C(&qword_100972DD0, qword_1007B3FF0);
  v42 = swift_dynamicCast();
  v147 = v37;
  if (v42)
  {
    v146 = v40;
    sub_100005A38(&v166, &aBlock);
    sub_10002A400(&aBlock, v163);
    v43 = [v5 traitCollection];
    v44 = TodayCardMediaWithArtwork.video(for:)();

    if (v44)
    {
      sub_10002A400(&aBlock, v163);
      v45 = dispatch thunk of TodayCardMediaWithArtwork.artworkLayoutsWithMetrics.getter();
      if (v45)
      {
        sub_1003403C0(v44, v45, v158, v143, v151);

        if (qword_10096D350 != -1)
        {
          swift_once();
        }

        v46 = qword_1009CE710;
        v47 = *algn_1009CE718;
        v48 = TodayCardMediaList.isMediaDark.getter();
        v49 = v148;
        TodayCard.editorialDisplayOptions.getter();
        v50 = EditorialDisplayOptions.useMaterialBlur.getter();
        (*(v149 + 8))(v49, v150);
        sub_10033FB9C(v46, v47, v48 & 1, v50 & 1);

        sub_100007000(&aBlock);
        v40 = v146;
        goto LABEL_29;
      }
    }

    sub_100007000(&aBlock);
    v40 = v146;
  }

  else
  {
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    sub_10002B894(&v166, &qword_100972DD8, &qword_1007C83C0);
  }

  v169 = TodayCard.media.getter();
  if (!swift_dynamicCast())
  {
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    sub_10002B894(&v166, &qword_100972DD8, &qword_1007C83C0);
LABEL_28:
    *(*&v154[v27] + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) = 0;
    goto LABEL_29;
  }

  sub_100005A38(&v166, &aBlock);
  sub_10002A400(&aBlock, v163);
  v51 = [v5 traitCollection];
  v52 = TodayCardMediaWithArtwork.artwork(for:)();

  if (!v52)
  {
LABEL_27:
    sub_100007000(&aBlock);
    goto LABEL_28;
  }

  sub_10002A400(&aBlock, v163);
  v53 = dispatch thunk of TodayCardMediaWithArtwork.artworkLayoutsWithMetrics.getter();
  if (!v53)
  {

    goto LABEL_27;
  }

  v54 = v40;
  if (v41 == 7)
  {
    v55 = v158;
  }

  else
  {
    v55 = v41;
  }

  sub_100342140(v52, v53, v55, v143, v151);

  if (qword_10096D348 != -1)
  {
    swift_once();
  }

  v56 = qword_1009CE700;
  v57 = *algn_1009CE708;
  v58 = TodayCardMediaList.isMediaDark.getter();
  v59 = v148;
  TodayCard.editorialDisplayOptions.getter();
  v60 = EditorialDisplayOptions.useMaterialBlur.getter();
  (*(v149 + 8))(v59, v150);
  sub_10033FB9C(v56, v57, v58 & 1, v60 & 1);

  sub_100007000(&aBlock);
  v40 = v54;
LABEL_29:
  v61 = *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView];
  if ((sub_10033494C() & 1) != 0 && *(v40 + v5) == 1)
  {
    (*(v155 + 104))(v153, enum case for TodayCard.Style.dark(_:), v156);
  }

  else
  {
    TodayCard.style.getter();
  }

  v62 = TodayCard.heading.getter();
  v64 = v63;
  v142 = TodayCard.title.getter();
  v146 = v65;
  v66 = TodayCard.shortTitle.getter();
  v148 = v67;
  TodayCard.titleCharacteristics.getter();
  v68 = TodayCardMediaList.marketingText.getter();
  v154 = v69;
  TodayCard.editorialDisplayOptions.getter();
  v70 = v158;
  v71 = sub_1005AB608;
  v133 = v68;
  v132 = v66;
  if (v158 == 6)
  {
    v134 = sub_1000DB5A0;
    v135 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v136 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v137 = sub_100287668;
  }

  else if (v158 == 4)
  {
    v137 = sub_100287668;
    v136 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v71 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v134 = sub_1000DB5A0;
    v135 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v137 = sub_1005AB2C8;
    v136 = sub_1005AB484;
    v135 = sub_1005AB458;
    v71 = sub_1005AB29C;
    v134 = sub_1000DB5A0;
  }

  v138 = sub_10033494C();
  v61[qword_10098B7E8] = 0;
  v72 = *&v61[qword_10098B7D0];
  *(v72 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v73 = *&v61[qword_10098B7C8];
  v139 = v64;
  sub_10006E7C4(v62, v64);
  v74 = EditorialDisplayOptions.showBadgeInSmallCards.getter();
  v75 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v76 = *&v73[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (v70 != 4 || (v74 & 1) != 0)
  {
    v77 = [v76 text];
    if (v77)
    {
      v78 = v77;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v79 = static String.isNilOrEmpty(_:)();
    v80 = v79 & 1;

    if (v80 == [*&v73[v75] isHidden] || (v73[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v73[v75] setHidden:v80];
    }

    else
    {
      if ((v79 & 1) == 0)
      {
        [*&v73[v75] setAlpha:0.0];
        v130 = objc_opt_self();
        [v130 inheritedAnimationDuration];
        v82 = v81;
        v83 = swift_allocObject();
        *(v83 + 16) = v73;
        v164 = sub_1000A9214;
        v165 = v83;
        aBlock = _NSConcreteStackBlock;
        v161 = 1107296256;
        v162 = sub_100007A08;
        v163 = &unk_1008BE858;
        v131 = _Block_copy(&aBlock);
        v84 = v73;

        v85 = swift_allocObject();
        *(v85 + 16) = v84;
        v164 = sub_1000A9220;
        v165 = v85;
        aBlock = _NSConcreteStackBlock;
        v161 = 1107296256;
        v162 = sub_100504C5C;
        v163 = &unk_1008BE8A8;
        v86 = _Block_copy(&aBlock);
        v87 = v84;

        v88 = v131;
        [v130 animateWithDuration:0 delay:v131 options:v86 animations:v82 completion:0.0];
        _Block_release(v86);
        _Block_release(v88);
      }

      [*&v73[v75] setHidden:v79 & 1];
      v73[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v73 setNeedsLayout];
    }
  }

  else if (([v76 isHidden] & 1) != 0 || (v73[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*&v73[v75] setHidden:1];
  }

  else
  {
    [*&v73[v75] setHidden:1];
    v73[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v73 setNeedsLayout];
  }

  v89 = &v61[qword_10098B7F0];
  *v89 = v134;
  v89[1] = 0;
  v89[2] = v71;
  v89[3] = 0;
  v89[4] = v135;
  v89[5] = 0;
  v89[6] = v136;
  v89[7] = 0;
  v89[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v89[9] = 0;
  v89[10] = v137;
  v89[11] = 0;

  sub_100551950();
  v90 = v154;
  if (v146)
  {
    if (v158 == 4)
    {
      sub_1005531F8();
    }

    else
    {
      sub_10055321C();
    }

    v91 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
    v92 = *(v72 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
    v93 = objc_allocWithZone(NSAttributedString);
    v94 = v92;
    v95 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_100343708(&qword_100976620, type metadata accessor for Key, &unk_1007B0934);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v97 = [v93 initWithString:v95 attributes:isa];

    [v94 setAttributedText:v97];
    [*(v72 + v91) setAdjustsFontSizeToFitWidth:0];
    [*(v72 + v91) setMinimumScaleFactor:0.0];
    [*(v72 + v91) setAttributedText:0];
    if (v148 && v61[qword_10098B7C0] == 4)
    {
      v90 = v154;
      if (v158 == 4)
      {
        v98 = v142;
        v99 = v146;
        v100 = v132;
        v101 = v148;
      }

      else
      {
        v98 = v132;
        v99 = v148;
        v100 = v142;
        v101 = v146;
      }

      sub_10006E8BC(v98, v99, v100, v101);
    }

    else
    {
      sub_10006E7C4(v142, v146);
      v90 = v154;
    }
  }

  v102 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v103 = *(v72 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v104 = [v103 text];
  if (v104)
  {
    v105 = v147;
    v106 = &StringUserDefaultsDebugSetting;
  }

  else
  {
    v104 = [*(v72 + v102) attributedText];
    v106 = &StringUserDefaultsDebugSetting;
    if (!v104)
    {
      v107 = 1;
      v105 = v147;
      goto LABEL_68;
    }

    v105 = v147;
  }

  v107 = 0;
LABEL_68:
  v108 = v158;
  [v103 setHidden:v107];

  [v61 v106[41].base_meths];
  v109 = *&v61[qword_10098B7D8];
  [v109 setImage:0];
  [v109 setHidden:1];
  if (v108 != 4 && (EditorialDisplayOptions.suppressTagline.getter() & 1) == 0 && v90)
  {
    v110 = v105;
    v111 = HIBYTE(v90) & 0xF;
    if ((v90 & 0x2000000000000000) == 0)
    {
      v111 = v133 & 0xFFFFFFFFFFFFLL;
    }

    v112 = v111 == 0;
    v113 = *&v61[qword_10098B7E0];
    v114 = &v113[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    v115 = *&v113[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    goto LABEL_76;
  }

  v113 = *&v61[qword_10098B7E0];
  v114 = &v113[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  v115 = *&v113[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (v90)
  {
    v110 = v105;
    v112 = 1;
LABEL_76:
    v116 = v115;
    v90 = String._bridgeToObjectiveC()();
    v105 = v110;
    goto LABEL_78;
  }

  v116 = v115;
  v112 = 1;
LABEL_78:
  [v116 setText:v90];

  if (v112 == [*v114 isHidden] || (v113[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v114 setHidden:v112];
  }

  else
  {
    if (!v112)
    {
      [*v114 setAlpha:0.0];
      v117 = objc_opt_self();
      [v117 inheritedAnimationDuration];
      v119 = v118;
      v120 = swift_allocObject();
      *(v120 + 16) = v113;
      v164 = sub_1000A8B90;
      v165 = v120;
      aBlock = _NSConcreteStackBlock;
      v161 = 1107296256;
      v162 = sub_100007A08;
      v163 = &unk_1008BE7B8;
      v121 = _Block_copy(&aBlock);
      v122 = v113;

      v123 = swift_allocObject();
      *(v123 + 16) = v122;
      v164 = sub_1000A8B98;
      v165 = v123;
      aBlock = _NSConcreteStackBlock;
      v161 = 1107296256;
      v162 = sub_100504C5C;
      v163 = &unk_1008BE808;
      v124 = _Block_copy(&aBlock);
      v125 = v122;
      v105 = v147;

      [v117 animateWithDuration:0 delay:v121 options:v124 animations:v119 completion:0.0];
      _Block_release(v124);
      _Block_release(v121);
    }

    [*v114 setHidden:v112];
    v113[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v113 setNeedsLayout];
  }

  v126 = v153;
  sub_100550798(v153, v138 & 1);
  [v61 setNeedsLayout];

  (*(v149 + 8))(v157, v150);
  (*(v144 + 8))(v152, v145);
  sub_10033494C();
  v127 = &v61[qword_10098B7B0];
  *v127 = 0x4000000000000000;
  *(v127 + 1) = 0;
  *(v127 + 2) = 0;
  *(v127 + 3) = 0x4018000000000000;
  *(v127 + 4) = 0;
  v127[40] = 1;
  [v61 setNeedsLayout];
  (*(v155 + 8))(v126, v156);
  v128 = TodayCardMediaList.lockups.getter();
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  v129 = v151;
  inject<A, B>(_:from:)();
  sub_10036CB48(v128, aBlock, v129);

  if (v5[v140] == 6)
  {
    sub_10033A940(v159, v105, v158, v143, v129);
  }

  sub_100334720();
  sub_100337AC0();
  sub_100338410();
  sub_100334A10();
  sub_10033BEC8();
  [v5 setNeedsLayout];
}

void sub_10033A940(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v135 = a5;
  v149 = a3;
  v148 = a1;
  v139 = type metadata accessor for EditorialDisplayOptions();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v150 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for StringCharacteristics();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TodayCard.Style();
  v144 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = *(v5 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView);
  v140 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView;
  v15 = *(*(v142 + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia);
  v16 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView;
  v17 = *(v5 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView);
  v146 = a2;
  v147 = v5;
  v145 = v14;
  v143 = v10;
  if (v15)
  {
    if (v17)
    {
      v18 = v17;
      v19 = dispatch thunk of RiverView.dataSource.getter();

      swift_beginAccess();
      *(v19 + 32) = _swiftEmptyArrayStorage;
    }

    v20 = *(v6 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView);
    if (v20)
    {
      v21 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors;
      swift_beginAccess();
      v22 = *&v20[v21];
      *&v20[v21] = _swiftEmptyArrayStorage;
      v23 = v20;
      sub_1004A2DB8(v22);
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v17)
  {
    v24 = v17;
    v25 = dispatch thunk of RiverView.dataSource.getter();

    v26 = TodayCardMediaList.lockups.getter();
    swift_beginAccess();
    *(v25 + 32) = v26;

    v27 = *(v6 + v16);
    if (v27)
    {
      v28 = v27;
      v29 = dispatch thunk of RiverView.dataSource.getter();

      type metadata accessor for ArtworkLoader();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      *(v29 + 16) = aBlock;
    }
  }

  v30 = *(v6 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (!v30)
  {
    goto LABEL_36;
  }

  v23 = v30;
  v31 = TodayCardMediaList.lockups.getter();
  v32 = v31;
  aBlock = _swiftEmptyArrayStorage;
  v33 = v31 & 0xFFFFFFFFFFFFFF8;
  if (v31 >> 62)
  {
LABEL_32:
    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (v34)
    {
      goto LABEL_12;
    }

LABEL_33:
    v134 = _swiftEmptyArrayStorage;
    goto LABEL_34;
  }

  v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_33;
  }

LABEL_12:
  v35 = 0;
  v134 = _swiftEmptyArrayStorage;
  v141 = v11;
  do
  {
    v11 = v35;
    while (1)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v35 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v11 >= *(v33 + 16))
        {
          goto LABEL_31;
        }

        v35 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      if (dispatch thunk of Lockup.artwork.getter())
      {
        break;
      }

LABEL_15:
      ++v11;
      if (v35 == v34)
      {
        v11 = v141;
        goto LABEL_34;
      }
    }

    v36 = Artwork.backgroundColor.getter();

    if (!v36)
    {
      goto LABEL_15;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v134 = aBlock;
    v11 = v141;
  }

  while (v35 != v34);
LABEL_34:

  v37 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v38 = *&v23[v37];
  *&v23[v37] = v134;
  sub_1004A2DB8(v38);
  v6 = v147;
  v14 = v145;
LABEL_35:

LABEL_36:
  v39 = *(v6 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView);
  if (!v39)
  {
    goto LABEL_97;
  }

  v40 = *(*&v140[v142] + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) == 1;
  v141 = v11;
  if (v40)
  {
    if (*(v6 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_isMediaDark))
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if (*(v6 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v42 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v42 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (*(v6 + *v42) != 6)
  {
LABEL_40:
    v41 = v39;
    TodayCard.style.getter();
    goto LABEL_46;
  }

LABEL_45:
  (*(v144 + 104))(v14, enum case for TodayCard.Style.dark(_:), v11, v12);
  v43 = v39;
LABEL_46:
  v44 = TodayCard.heading.getter();
  v46 = v45;
  v134 = TodayCard.title.getter();
  v140 = v47;
  v127 = TodayCard.shortTitle.getter();
  v142 = v48;
  TodayCard.titleCharacteristics.getter();
  v49 = TodayCardMediaList.marketingText.getter();
  v148 = v50;
  TodayCard.editorialDisplayOptions.getter();
  v51 = v149;
  v52 = sub_1005AB608;
  v128 = v49;
  if (v149 == 6)
  {
    v131 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v132 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v133 = sub_100287668;
  }

  else if (v149 == 4)
  {
    v133 = sub_100287668;
    v132 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v52 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v131 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v133 = sub_1005AB2C8;
    v132 = sub_1005AB484;
    v131 = sub_1005AB458;
    v52 = sub_1005AB29C;
  }

  v129 = sub_10033494C();
  v39[qword_10098B7E8] = 0;
  v53 = *&v39[qword_10098B7D0];
  *(v53 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v54 = *&v39[qword_10098B7C8];
  v130 = v46;
  sub_10006E7C4(v44, v46);
  v55 = EditorialDisplayOptions.showBadgeInSmallCards.getter();
  v56 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v57 = *&v54[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (v51 != 4 || (v55 & 1) != 0)
  {
    v58 = [v57 text];
    if (v58)
    {
      v59 = v58;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v60 = static String.isNilOrEmpty(_:)();
    v61 = v60 & 1;

    if (v61 == [*&v54[v56] isHidden] || (v54[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v54[v56] setHidden:v61];
    }

    else
    {
      if ((v60 & 1) == 0)
      {
        [*&v54[v56] setAlpha:0.0];
        v126 = objc_opt_self();
        [v126 inheritedAnimationDuration];
        v63 = v62;
        v64 = swift_allocObject();
        *(v64 + 16) = v54;
        v155 = sub_1000A9214;
        v156 = v64;
        aBlock = _NSConcreteStackBlock;
        v152 = 1107296256;
        v153 = sub_100007A08;
        v154 = &unk_1008BE9E8;
        v125 = _Block_copy(&aBlock);
        v65 = v54;

        v66 = swift_allocObject();
        *(v66 + 16) = v65;
        v155 = sub_1000A9220;
        v156 = v66;
        aBlock = _NSConcreteStackBlock;
        v152 = 1107296256;
        v153 = sub_100504C5C;
        v154 = &unk_1008BEA38;
        v67 = _Block_copy(&aBlock);
        v68 = v65;

        v69 = v125;
        [v126 animateWithDuration:0 delay:v125 options:v67 animations:v63 completion:0.0];
        _Block_release(v67);
        _Block_release(v69);
      }

      [*&v54[v56] setHidden:v60 & 1];
      v54[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_64:
      [v54 setNeedsLayout];
    }
  }

  else
  {
    if ([v57 isHidden] & 1) == 0 && (v54[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning])
    {
      [*&v54[v56] setHidden:1];
      v54[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      goto LABEL_64;
    }

    [*&v54[v56] setHidden:1];
  }

  v70 = &v39[qword_10098B7F0];
  *v70 = sub_1000DB5A0;
  v70[1] = 0;
  v70[2] = v52;
  v70[3] = 0;
  v70[4] = v131;
  v70[5] = 0;
  v70[6] = v132;
  v70[7] = 0;
  v70[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v70[9] = 0;
  v70[10] = v133;
  v70[11] = 0;

  sub_100551950();
  v11 = v148;
  if (v140)
  {
    if (v149 == 4)
    {
      sub_1005531F8();
    }

    else
    {
      sub_10055321C();
    }

    v71 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
    v72 = *(v53 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
    v73 = objc_allocWithZone(NSAttributedString);
    v74 = v72;
    v75 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_100343708(&qword_100976620, type metadata accessor for Key, &unk_1007B0934);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v77 = [v73 initWithString:v75 attributes:isa];

    [v74 setAttributedText:v77];
    [*(v53 + v71) setAdjustsFontSizeToFitWidth:0];
    [*(v53 + v71) setMinimumScaleFactor:0.0];
    [*(v53 + v71) setAttributedText:0];
    if (v142 && v39[qword_10098B7C0] == 4)
    {
      v11 = v148;
      if (v149 == 4)
      {
        v78 = v134;
        v79 = v140;
        v80 = v127;
        v81 = v142;
      }

      else
      {
        v78 = v127;
        v79 = v142;
        v80 = v134;
        v81 = v140;
      }

      sub_10006E8BC(v78, v79, v80, v81);
    }

    else
    {
      sub_10006E7C4(v134, v140);
      v11 = v148;
    }
  }

  v82 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v83 = *(v53 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v84 = [v83 text];
  if (v84 || (v84 = [*(v53 + v82) attributedText]) != 0)
  {
    v6 = v147;

    v85 = 0;
  }

  else
  {
    v85 = 1;
    v6 = v147;
  }

  v86 = v149;
  [v83 setHidden:v85];

  [v39 setNeedsLayout];
  v87 = *&v39[qword_10098B7D8];
  [v87 setImage:0];
  [v87 setHidden:1];
  if (v86 == 4 || (EditorialDisplayOptions.suppressTagline.getter() & 1) != 0 || !v11)
  {
    v90 = *&v39[qword_10098B7E0];
    v91 = &v90[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    v92 = *&v90[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    if (v11)
    {
      v89 = 1;
      goto LABEL_88;
    }

    v93 = v92;
    v89 = 1;
  }

  else
  {
    v88 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v88 = v128 & 0xFFFFFFFFFFFFLL;
    }

    v89 = v88 == 0;
    v90 = *&v39[qword_10098B7E0];
    v91 = &v90[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    v92 = *&v90[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
LABEL_88:
    v93 = v92;
    v11 = String._bridgeToObjectiveC()();
  }

  [v93 setText:v11];

  v94 = [*v91 isHidden];
  v95 = v145;
  if (v89 == v94 || (v90[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v91 setHidden:v89];
  }

  else
  {
    if (!v89)
    {
      [*v91 setAlpha:0.0];
      v96 = objc_opt_self();
      [v96 inheritedAnimationDuration];
      v98 = v97;
      v99 = swift_allocObject();
      *(v99 + 16) = v90;
      v155 = sub_1000A9214;
      v156 = v99;
      aBlock = _NSConcreteStackBlock;
      v152 = 1107296256;
      v153 = sub_100007A08;
      v154 = &unk_1008BE948;
      v11 = _Block_copy(&aBlock);
      v100 = v90;

      v101 = swift_allocObject();
      *(v101 + 16) = v100;
      v155 = sub_1000A9220;
      v156 = v101;
      aBlock = _NSConcreteStackBlock;
      v152 = 1107296256;
      v6 = v147;
      v153 = sub_100504C5C;
      v154 = &unk_1008BE998;
      v102 = _Block_copy(&aBlock);
      v103 = v100;
      v95 = v145;

      [v96 animateWithDuration:0 delay:v11 options:v102 animations:v98 completion:0.0];
      _Block_release(v102);
      _Block_release(v11);
    }

    [*v91 setHidden:v89];
    v90[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v90 setNeedsLayout];
  }

  v104 = v141;
  sub_100550798(v95, v129 & 1);
  [v39 setNeedsLayout];

  (*(v138 + 8))(v150, v139);
  (*(v136 + 8))(v143, v137);
  sub_10033494C();
  v105 = &v39[qword_10098B7B0];
  *v105 = 0x4000000000000000;
  *(v105 + 1) = 0;
  *(v105 + 2) = 0;
  *(v105 + 3) = 0x4018000000000000;
  *(v105 + 4) = 0;
  v105[40] = 1;
  [v39 setNeedsLayout];

  (*(v144 + 8))(v95, v104);
LABEL_97:
  if (*(v6 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
  {
    return;
  }

  v106 = TodayCardMediaList.lockups.getter();
  v107 = v106;
  v108 = v106 >> 62;
  if (v106 >> 62)
  {
    if (v106 < 0)
    {
      v111 = v106;
    }

    else
    {
      v111 = v106 & 0xFFFFFFFFFFFFFF8;
    }

    v112 = _CocoaArrayWrapper.endIndex.getter();
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      goto LABEL_134;
    }

    if (v112 >= 6)
    {
      v123 = 6;
    }

    else
    {
      v123 = v112;
    }

    if ((v112 & 0x8000000000000000) == 0)
    {
      v110 = v123;
    }

    else
    {
      v110 = 6;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < v110)
    {
      goto LABEL_143;
    }

LABEL_103:
    if ((v107 & 0xC000000000000001) != 0 && v110)
    {
      type metadata accessor for Lockup();

      _ArrayBuffer._typeCheckSlowPath(_:)(0);
      if (v110 != 1)
      {
        _ArrayBuffer._typeCheckSlowPath(_:)(1);
        if (v110 != 2)
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(2);
          if (v110 != 3)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(3);
            if (v110 != 4)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(4);
              if (v110 != 5)
              {
                _ArrayBuffer._typeCheckSlowPath(_:)(5);
              }
            }
          }
        }
      }
    }

    else
    {
    }

    if (v108)
    {
      v111 = _CocoaArrayWrapper.subscript.getter();
      v11 = v113;
      v39 = v114;
      v112 = v115;

      if (v112)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v39 = 0;
      v111 = v107 & 0xFFFFFFFFFFFFFF8;
      v11 = (v107 & 0xFFFFFFFFFFFFFF8) + 32;
      v112 = (2 * v110) | 1;
      if (v112)
      {
LABEL_117:
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v118 = swift_dynamicCastClass();
        if (!v118)
        {
          swift_unknownObjectRelease();
          v118 = _swiftEmptyArrayStorage;
        }

        v119 = v118[2];

        if (!__OFSUB__(v112 >> 1, v39))
        {
          if (v119 == (v112 >> 1) - v39)
          {
            v117 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (v117)
            {
              goto LABEL_124;
            }

            v117 = _swiftEmptyArrayStorage;
LABEL_123:
            swift_unknownObjectRelease();
LABEL_124:
            v120 = *(v6 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer);
            if (v120)
            {
              type metadata accessor for ArtworkLoader();
              type metadata accessor for BaseObjectGraph();
              v121 = v120;
              v122 = v135;
              inject<A, B>(_:from:)();
              sub_10036CB48(v117, aBlock, v122);
            }

            else
            {
            }

            return;
          }

          goto LABEL_135;
        }

LABEL_134:
        __break(1u);
LABEL_135:
        swift_unknownObjectRelease_n();
      }
    }

    sub_1005E7C90(v111, v11, v39, v112);
    v117 = v116;
    goto LABEL_123;
  }

  v109 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v109 >= 6)
  {
    v110 = 6;
  }

  else
  {
    v110 = v109;
  }

  if (v109 >= v110)
  {
    goto LABEL_103;
  }

LABEL_143:
  __break(1u);
}

void sub_10033BEC8()
{
  sub_1004EB9C0();
  v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if ((v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0 && v0[*v1] == 6 && (v2 = *&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView]) != 0)
  {
    v3 = v2;
    v4 = [v0 contentView];
    sub_1005504B4();
    if (v5)
    {
      v7 = String._bridgeToObjectiveC()();
    }

    else
    {
      v7 = 0;
    }

    [v4 setAccessibilityLabel:v7];
  }

  else
  {
    v4 = [v0 contentView];
    sub_1005504B4();
    if (v6)
    {
      v7 = String._bridgeToObjectiveC()();
    }

    else
    {
      v7 = 0;
    }

    [v4 setAccessibilityLabel:v7];
  }
}

void sub_10033C024(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  v18 = &unk_100980000;
  v57 = a3;
  if ((a3 & 1) == 0)
  {
    v19 = swift_getObjectType();
    (*(a2 + 112))(v19, a2);
    v20 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    v56 = ObjectType;
    sub_1000315F8(v17, &v4[v20], &qword_10097DBD0, &qword_1007BC750);
    swift_endAccess();
    v21 = *(*&v4[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
    sub_100031660(&v4[v20], v14, &qword_10097DBD0, &qword_1007BC750);
    v22 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_pageGrid;
    swift_beginAccess();
    v23 = v21;
    v24 = v21 + v22;
    v18 = &unk_100980000;
    sub_1000315F8(v14, v24, &qword_10097DBD0, &qword_1007BC750);
    swift_endAccess();

    v4[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] = (*(a2 + 160))(v19, a2);
    sub_100340218();
    v25 = (*(a2 + 136))(v19, a2);
    sub_1004EAB3C(v25);
  }

  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    *&v4[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_todayCard] = *(v26 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_todayCard);
    v56 = a1;

    v28 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView;
    v29 = v18[368];
    v55 = *&v4[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
    v30 = *&v55[v29];
    v31 = *(*&v27[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + v29);
    v32 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100031660(&v4[v32], v11, &qword_10097DBD0, &qword_1007BC750);
    v33 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (v4[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v33 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    v34 = v4[*v33];
    v35 = v30;
    v36 = v31;
    v37 = v57;
    sub_10070C7C4(v36, v57 & 1, v11, v34);

    sub_10002B894(v11, &qword_10097DBD0, &qword_1007BC750);
    if (v37)
    {
      sub_10033C588(v27);
    }

    else
    {
      v38 = *&v4[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView];
      if (v38)
      {
        v39 = v38;
        dispatch thunk of RiverView.isAnimating.setter();
      }

      swift_unknownObjectWeakAssign();
      v40 = *&v27[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView];
      sub_1005533F0(v40);

      v41 = *&v27[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer];
      sub_10036CBF8(v41);

      [*&v27[v28] frame];
      v42 = v55;
      [v55 setFrame:?];
      [v42 setHidden:{objc_msgSend(*&v27[v28], "isHidden")}];
      v43 = *(*&v27[v28] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_gradientBlurView);
      v44 = *&v43[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_style];
      v45 = *&v43[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_style + 8];
      v46 = *&v43[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle] == 2;

      sub_10033FB9C(v44, v45, v46, [v43 isHidden] ^ 1);

      [v42 setNeedsLayout];
      v47 = *&v27[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
      if (v47)
      {
        v48 = *&v4[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
        if (v48)
        {
          v49 = v47;
          v50 = v48;
          sub_1005533F0(v49);
        }
      }

      v51 = *&v27[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer];
      if (v51)
      {
        v52 = *&v4[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer];
        if (v52)
        {
          v53 = v51;
          v54 = v52;
          sub_10036CBF8(v53);
        }
      }

      sub_10033BEC8();
    }

    [v4 setNeedsLayout];
  }
}

char *sub_10033C588(char *result)
{
  if ((*(*(*&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) & 1) == 0)
  {
    v2 = v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] ? &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory : &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (v1[*v2] == 6)
    {
      v3 = result;
      v4 = [v1 contentView];
      v5 = [v3 contentView];
      v6 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView;
      v7 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView];
      v8 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView;
      if (v7)
      {
        [v7 removeFromSuperview];
        v8 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView;
      }

      v9 = *&v1[v8];
      if (v9)
      {
        [v9 removeFromSuperview];
      }

      if (v7)
      {
        v10 = *&v1[v8];
        *&v1[v8] = v7;
        v11 = v7;

        if (v4)
        {
          [v4 addSubview:v11];
        }
      }

      if (v9)
      {
        v12 = *&v3[v6];
        *&v3[v6] = v9;
        v13 = v9;

        if (!v5)
        {
          v5 = v4;
LABEL_19:

          v15 = [v1 contentView];
          v64 = v3;
          v65 = [v3 contentView];
          v16 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView;
          v17 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView];
          v18 = v15;
          v19 = v17;
          [v19 removeFromSuperview];
          v20 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView;
          v21 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView];
          v22 = v21;
          [v22 removeFromSuperview];
          if (v17)
          {
            v23 = *&v1[v20];
            *&v1[v20] = v17;
            v24 = v1;
            v25 = v16;
            v26 = v19;

            v27 = v26;
            v16 = v25;
            [v18 addSubview:v27];
          }

          if (v21)
          {
            v28 = *&v64[v16];
            *&v64[v16] = v21;
            v29 = v64;
            v30 = v22;

            [v65 addSubview:v30];
          }

          v31 = *&v1[v20];
          v66 = v16;
          v32 = *&v64[v16];
          v33 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView;
          v34 = *&v64[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView];
          if (v34)
          {
            v35 = v31;
            v36 = v34;
            v37 = v32;
            [v36 removeFromSuperview];
            v38 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView;
            v39 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView];
            if (!v39)
            {
LABEL_26:
              if (v34)
              {
                v40 = *&v1[v38];
                *&v1[v38] = v34;
                v41 = v1;
                v42 = v34;

                if (v31)
                {
                  [v31 addSubview:v42];
                }
              }

              if (v39)
              {
                v43 = *&v64[v33];
                *&v64[v33] = v39;
                v44 = v64;
                v45 = v39;

                if (!v32)
                {
                  goto LABEL_33;
                }

                v46 = v45;
                [v32 addSubview:v46];
              }

              v45 = v32;
LABEL_33:

              v47 = [v1 contentView];
              v48 = *&v64[v66];
              v49 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView;
              v50 = *&v64[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
              if (v50)
              {
                v51 = v48;
                [v50 removeFromSuperview];
                v52 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView;
                v53 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
                if (!v53)
                {
LABEL_36:
                  if (v50)
                  {
                    v54 = *&v1[v52];
                    *&v1[v52] = v50;
                    v55 = v1;
                    v56 = v50;

                    if (v47)
                    {
                      [v47 addSubview:v56];
                    }
                  }

                  if (v53)
                  {
                    v57 = *&v64[v49];
                    *&v64[v49] = v53;
                    v58 = v64;
                    v59 = v53;

                    if (!v48)
                    {

                      goto LABEL_48;
                    }

                    v60 = v59;
                    [v48 addSubview:v60];
                  }

                  v47 = v48;
LABEL_48:

                  [v64 setNeedsLayout];

                  return [v1 setNeedsLayout];
                }
              }

              else
              {
                v63 = v48;
                v52 = v49;
                v53 = *&v1[v49];
                if (!v53)
                {
                  goto LABEL_36;
                }
              }

              [v53 removeFromSuperview];
              goto LABEL_36;
            }
          }

          else
          {
            v61 = v31;
            v62 = v32;
            v38 = v33;
            v39 = *&v1[v33];
            if (!v39)
            {
              goto LABEL_26;
            }
          }

          [v39 removeFromSuperview];
          goto LABEL_26;
        }

        v14 = v13;
        [v5 addSubview:v14];
      }

      v13 = v4;
      goto LABEL_19;
    }
  }

  return result;
}

void sub_10033CB80(void (*a1)(void), int a2, char a3, void *a4, void *a5, void (*a6)(char *, char *, uint64_t))
{
  v175 = a6;
  v185 = a5;
  v183 = a4;
  LODWORD(v184) = a2;
  v8 = type metadata accessor for TextAppearance();
  v182 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v158 - v12);
  __chkstk_darwin(v14);
  v181 = &v158 - v15;
  __chkstk_darwin(v16);
  v178 = &v158 - v17;
  __chkstk_darwin(v18);
  v177 = (&v158 - v19);
  __chkstk_darwin(v20);
  v172 = &v158 - v21;
  __chkstk_darwin(v22);
  v180 = &v158 - v23;
  v24 = type metadata accessor for EditorialDisplayOptions();
  v173 = *(v24 - 8);
  v174 = v24;
  __chkstk_darwin(v24);
  v179 = &v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PageGrid();
  v176 = *(v26 - 8);
  __chkstk_darwin(v26);
  v169 = (&v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v28 - 8);
  v170 = &v158 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v171 = &v158 - v31;
  v32 = sub_10002849C(&unk_100996820, qword_1007C7450);
  __chkstk_darwin(v32 - 8);
  v34 = &v158 - v33;
  v35 = type metadata accessor for UIView.LayoutRegion();
  __chkstk_darwin(v35);
  v38 = &v158 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v166 = v36;
    v167 = a1;
    v39 = TodayCard.media.getter();
    v40 = type metadata accessor for TodayCardMediaList();
    v41 = swift_dynamicCastClass();
    if (v41)
    {
      v158 = v26;
      v160 = v13;
      v162 = v10;
      v168 = v8;
      v165 = v39;
      v187[0] = v41;
      v42 = v41;
      v43 = TodayCardMediaWithArtwork.video(for:)();
      v161 = v42;
      v187[0] = v42;
      v159 = v40;
      v163 = TodayCardMediaWithArtwork.artwork(for:)();
      v164 = v43;
      v44 = (v43 | v163) != 0;
      if (v175)
      {
        v45 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
        v46 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
        v47 = *(v46 - 8);
        (*(v47 + 104))(v34, v45, v46);
        (*(v47 + 56))(v34, 0, 1, v46);
        static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
        sub_10002B894(v34, &unk_100996820, qword_1007C7450);
        UIView.edgeInsets(for:)();
        v49 = v48;
        (*(v166 + 8))(v38, v35);
        v50 = v184;
        v51 = v183;
      }

      else
      {
        v51 = v183;
        PageGrid.safeAreaInsets.getter();
        v49 = v55;
        v50 = v184;
      }

      v56 = v176;
      if (v44)
      {
        v57 = v185;
      }

      else
      {
        if (v50 == 6)
        {
          sub_100340000(v51, v185, v49);
          left = v58;
          right = v60;
        }

        else
        {
          v62 = v171;
          v63 = v158;
          v176[2](v171, v51, v158);
          (v56[7])(v62, 0, 1, v63);
          v64 = v62;
          v65 = v170;
          sub_100031660(v64, v170, &qword_10097DBD0, &qword_1007BC750);
          if ((v56[6])(v65, 1, v63) == 1)
          {
            sub_10002B894(v65, &qword_10097DBD0, &qword_1007BC750);
            left = UIEdgeInsetsZero.left;
            right = UIEdgeInsetsZero.right;
            v66 = v185;
          }

          else
          {
            v67 = v169;
            (v56)[4](v169, v65, v63);
            PageGrid.horizontalDirectionalMargins.getter();
            PageGrid.horizontalDirectionalMargins.getter();
            v66 = v185;
            [v185 layoutDirection];
            NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
            left = v68;
            right = v69;
            (v56[1])(v67, v63);
          }

          sub_10002B894(v171, &qword_10097DBD0, &qword_1007BC750);
          if ((UITraitCollection.isSizeClassCompact.getter() & 1) == 0)
          {
            if (qword_10096E6E0 != -1)
            {
              swift_once();
            }

            v70 = type metadata accessor for StaticDimension();
            sub_1000056A8(v70, qword_1009D24C0);
            type metadata accessor for TraitEnvironmentPlaceholder();
            sub_10002849C(&qword_100973210, qword_1007B0BB0);
            v71 = swift_allocObject();
            *(v71 + 16) = xmmword_1007B0B70;
            *(v71 + 32) = v66;
            v72 = v66;
            v73 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
            dispatch thunk of AnyDimension.rawValue(in:)();

            v50 = v184;
          }
        }

        PageGrid.columnWidth.getter();
        v75 = v74;
        TodayCard.heading.getter();
        v77 = v76;
        v78 = TodayCard.title.getter();
        v183 = v79;
        TodayCard.media.getter();
        if (swift_dynamicCastClass())
        {
          v80 = TodayCardMediaList.marketingText.getter();
          v82 = v81;
        }

        else
        {

          v80 = 0;
          v82 = 0;
        }

        v83 = sub_100287668;
        v84 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v85 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v86 = sub_1005AB608;
        v159 = v80;
        v166 = v78;
        if (v50 != 6)
        {
          if (v50 == 4)
          {
            v83 = sub_100287668;
            v84 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
            v86 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
            v85 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
          }

          else
          {
            v83 = sub_1005AB2C8;
            v84 = sub_1005AB484;
            v85 = sub_1005AB458;
            v86 = sub_1005AB29C;
          }
        }

        v199[0] = sub_1000DB5A0;
        v199[1] = 0;
        v199[2] = v86;
        v199[3] = 0;
        v199[4] = v85;
        v199[5] = 0;
        v169 = v84;
        v199[6] = v84;
        v199[7] = 0;
        v199[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v199[9] = 0;
        v167 = v83;
        v199[10] = v83;
        v199[11] = 0;
        v87 = TodayCard.editorialDisplayOptions.getter();
        __chkstk_darwin(v87);
        *(&v158 - 2) = v199;
        v88 = v185;
        v89 = UITraitCollection.modifyingTraits(_:)();
        v90 = [v88 preferredContentSizeCategory];
        sub_1000DB5A0();

        TextAppearance.init()();
        if (qword_10096E8E0 != -1)
        {
          swift_once();
        }

        v91 = qword_10098B758;
        v176 = objc_opt_self();
        v170 = v89;
        v92 = [v176 preferredFontDescriptorWithTextStyle:v91 compatibleWithTraitCollection:v89];
        v93 = [v92 fontDescriptorWithSymbolicTraits:2];
        v94 = objc_opt_self();
        if (v93)
        {
          v95 = [v94 fontWithDescriptor:v93 size:0.0];

          v92 = v93;
        }

        else
        {
          v95 = [v94 fontWithDescriptor:v92 size:0.0];
        }

        v184 = v82;

        v96 = v172;
        v97 = v177;
        TextAppearance.withFont(_:)();

        v98 = *(v182 + 8);
        v99 = v168;
        v98(v97, v168);
        TextAppearance.withNumberOfLines(_:)();
        v98(v96, v99);
        v100 = sub_100397304(_swiftEmptyArrayStorage);
        if (qword_10096E8E8 != -1)
        {
          swift_once();
        }

        v101 = qword_10098B760;
        v177 = type metadata accessor for TodayTransitioningLabelView();
        objc_allocWithZone(v177);
        v102 = sub_10006CFBC(v100, v101);
        v103 = *&v102[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
        v104 = v178;
        v171 = v77;
        v105 = v103;
        if (v77)
        {
          v106 = String._bridgeToObjectiveC()();
        }

        else
        {
          v106 = 0;
        }

        [v103 setText:v106];

        v172 = v102;
        v107 = *(v182 + 16);
        v108 = v168;
        v182 += 16;
        v175 = v107;
        v107(v104, v180, v168);
        UILabel.textAppearance.setter();
        if (qword_10096E8F0 != -1)
        {
          swift_once();
        }

        v109 = qword_10098B768;
        v110 = [v185 preferredContentSizeCategory];
        v167();

        __chkstk_darwin(v111);
        *(&v158 - 2) = v199;
        v112 = UITraitCollection.modifyingTraits(_:)();
        v113 = v160;
        TextAppearance.init()();
        v167 = v112;
        v114 = [v176 preferredFontDescriptorWithTextStyle:v109 compatibleWithTraitCollection:v112];
        v115 = objc_opt_self();
        v116 = [v115 fontWithDescriptor:v114 size:0.0];

        TextAppearance.withFont(_:)();
        v98(v113, v108);
        TextAppearance.withNumberOfLines(_:)();
        v98(v104, v108);
        v117 = sub_100397304(_swiftEmptyArrayStorage);
        if (qword_10096E8F8 != -1)
        {
          swift_once();
        }

        v118 = qword_10098B770;
        v119 = objc_allocWithZone(v177);
        v120 = sub_10006CFBC(v117, v118);
        v121 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
        v122 = *&v120[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
        v123 = v183;
        if (v183)
        {
          v124 = v122;
          v123 = String._bridgeToObjectiveC()();
        }

        else
        {
          v125 = v122;
        }

        [v122 setText:v123];

        v166 = v121;
        v126 = v178;
        v127 = v168;
        v175(v178, v181, v168);
        v128 = UILabel.textAppearance.setter();
        __chkstk_darwin(v128);
        *(&v158 - 2) = v199;
        v129 = v185;
        v130 = UITraitCollection.modifyingTraits(_:)();
        v131 = v160;
        TextAppearance.init()();
        if (qword_10096E908 != -1)
        {
          swift_once();
        }

        v132 = v75 - left;
        v133 = v176;
        v176 = v130;
        v134 = [v133 preferredFontDescriptorWithTextStyle:qword_10098B780 compatibleWithTraitCollection:v130];
        v135 = [v115 fontWithDescriptor:v134 size:0.0];

        TextAppearance.withFont(_:)();
        v98(v131, v127);
        v136 = [v129 preferredContentSizeCategory];
        v169();

        TextAppearance.withNumberOfLines(_:)();
        v98(v126, v127);
        v137 = sub_100397304(_swiftEmptyArrayStorage);
        if (qword_10096E910 != -1)
        {
          swift_once();
        }

        v138 = v132 - right;
        v139 = qword_10098B788;
        v140 = objc_allocWithZone(v177);
        v141 = sub_10006CFBC(v137, v139);
        v142 = *&v141[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
        v143 = EditorialDisplayOptions.suppressTagline.getter();
        v144 = 0;
        v145 = v166;
        if ((v143 & 1) == 0 && v184)
        {
          v144 = String._bridgeToObjectiveC()();
        }

        [v142 setText:v144];

        v146 = v162;
        v147 = v168;
        v175(v178, v162, v168);
        UILabel.textAppearance.setter();
        v148 = *&v120[v145];
        v192 = type metadata accessor for DynamicTypeLabel();
        v193 = &protocol witness table for UILabel;
        v190 = v120;
        v191 = v148;
        v194 = 0u;
        v195 = 0u;
        v196 = 0;
        v197 = v141;
        v187[0] = 0x4000000000000000;
        v187[1] = 0;
        v187[2] = 0;
        v187[3] = 0x4018000000000000;
        v187[4] = 0;
        v188 = 1;
        v189 = v172;
        v198 = 0;
        v149 = v148;
        v57 = v185;
        sub_1005AD274(v185, v186, v138, 1.79769313e308);
        sub_10002A400(v186, v186[3]);
        dispatch thunk of Placeable.measure(toFit:with:)();

        v98(v146, v147);
        v98(v181, v147);
        v98(v180, v147);
        (*(v173 + 8))(v179, v174);
        sub_10034359C(v187);
        sub_100007000(v186);
      }

      v150 = TodayCardMediaList.lockups.getter();
      if (v150 >> 62)
      {
        v151 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v151 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      type metadata accessor for TodayListCardLockupContainer();
      sub_1003692D0(v151, v57);
      if ((UITraitCollection.isSizeClassCompact.getter() & 1) == 0)
      {
        if (qword_10096E6E0 != -1)
        {
          swift_once();
        }

        v152 = type metadata accessor for StaticDimension();
        sub_1000056A8(v152, qword_1009D24C0);
        type metadata accessor for TraitEnvironmentPlaceholder();
        sub_10002849C(&qword_100973210, qword_1007B0BB0);
        v153 = swift_allocObject();
        *(v153 + 16) = xmmword_1007B0B70;
        *(v153 + 32) = v57;
        v154 = v57;
        v155 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
        dispatch thunk of AnyDimension.rawValue(in:)();
      }

      v156 = [v57 preferredContentSizeCategory];
      static UIContentSizeCategory.> infix(_:_:)();

      static UIEdgeInsets.vertical(top:bottom:)();
      v157 = [v57 preferredContentSizeCategory];
      static UIContentSizeCategory.> infix(_:_:)();

      static UIEdgeInsets.vertical(top:bottom:)();
    }

    else
    {
    }
  }

  else
  {
    v52 = v184;
    v53 = v183;
    v54 = v185;

    sub_100467918(v52, v53, v54);
  }
}

void sub_10033E09C()
{
  sub_10055069C();
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView);
  if (v1)
  {
    v2 = v1;
    sub_10055069C();
  }
}

void sub_10033E118(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v82 = a3;
  v5 = type metadata accessor for Artwork.Format();
  __chkstk_darwin(v5 - 8);
  v7 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Artwork.URLTemplate();
  __chkstk_darwin(v8 - 8);
  v78 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Artwork.Variant();
  v79 = *(v10 - 8);
  __chkstk_darwin(v10);
  v77 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100979D60, &qword_1007C0CC8);
  __chkstk_darwin(v12 - 8);
  v73 = v60 - v13;
  v81 = type metadata accessor for Artwork.Crop();
  v76 = *(v81 - 8);
  __chkstk_darwin(v81);
  v74 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v75 = v60 - v16;
  v17 = type metadata accessor for FloatingPointRoundingRule();
  v70 = *(v17 - 8);
  __chkstk_darwin(v17);
  v68 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for TodayCardArtworkLayout();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v20 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v66 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v60 - v25;
  v27 = type metadata accessor for PageGrid();
  v71 = *(v27 - 8);
  v72 = v27;
  __chkstk_darwin(v27);
  v80 = v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayCard();
  sub_100343708(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v84)
  {
    v63 = v10;
    v64 = v7;
    v29 = TodayCard.media.getter();

    type metadata accessor for TodayCardMediaList();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v31 = v30;
      v61 = v17;
      v65 = v29;
      v32 = TodayCardMediaList.lockups.getter();
      v62 = a2;
      sub_10036D830(v32);

      type metadata accessor for TodayCardGridTracker();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v33 = v84;
      sub_1006E2600();
      LODWORD(v82) = v34;
      v84 = v31;
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v35 = v83;
      v36 = TodayCardMediaWithArtwork.prefetchableArtwork(for:)();

      if (v36)
      {
        v60[2] = v33;
        if (TodayCardMediaList.artworkLayoutsWithMetrics.getter())
        {
          v60[1] = v36;
          swift_getKeyPath();
          ItemLayoutContext.subscript.getter();

          swift_getKeyPath();
          ItemLayoutContext.subscript.getter();

          v60[0] = v84;
          v37 = v82;
          v39.n128_f64[0] = sub_100699534(v82, v38);
          v40 = v66;
          v41 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
          v42 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
          if (v37 != 6)
          {
            v42 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
          }

          if (v37 != 4)
          {
            v41 = v42;
          }

          (*(v66 + 104))(v23, *v41, v21, v39);
          (*(v40 + 32))(v26, v23, v21);
          v43 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();

          (*(v40 + 8))(v26, v21);
          TodayCardArtworkSizedLayoutMetrics.sourceSizeOverride.getter();
          if (v44)
          {
            Artwork.size.getter();
          }

          v45 = v81;
          v46 = v75;
          v47 = v76;
          v48 = v73;
          TodayCardArtworkSizedLayoutMetrics.layout(for:)();
          TodayCardArtworkLayout.collapsedLayoutInsets.getter();
          CGSize.subtracting(insets:)();
          CGSize.scaled(_:)();
          v49 = v70;
          v50 = v68;
          v51 = v61;
          (*(v70 + 104))(v68, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v61);
          CGSize.rounded(_:)();
          (*(v49 + 8))(v50, v51);
          (*(v67 + 8))(v20, v69);
          TodayCardArtworkSizedLayoutMetrics.sourceCropOverride(for:)();
          v52 = *(v47 + 48);
          v53 = v52(v48, 1, v45);
          v82 = v43;
          if (v53 == 1)
          {
            Artwork.crop.getter();
            v54 = v52(v48, 1, v45);
            v55 = v45;
            if (v54 != 1)
            {
              sub_10002B894(v48, &qword_100979D60, &qword_1007C0CC8);
            }
          }

          else
          {
            (*(v47 + 32))(v46, v48, v45);
            v55 = v45;
          }

          v56 = v77;
          dispatch thunk of Artwork.bestVariant(prefersLayeredImage:)();
          Artwork.template.getter();
          v57 = v60[0];
          [v60[0] displayScale];
          (*(v47 + 16))(v74, v46, v55);
          Artwork.Variant.format.getter();
          Artwork.Variant.quality.getter();
          type metadata accessor for ArtworkLoaderConfig();
          swift_allocObject();
          v58 = ArtworkLoaderConfig.init(template:size:scale:crop:format:quality:useWideGamut:)();

          (*(v79 + 8))(v56, v63);
          (*(v47 + 8))(v46, v81);
          (*(v71 + 8))(v80, v72);
          sub_10002849C(&qword_100973210, qword_1007B0BB0);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_1007B0B70;
          *(v59 + 32) = v58;

          ArtworkLoader.prefetchArtwork(using:)(v59);
        }

        else
        {
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

void sub_10033EBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = *(*(v3 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  sub_10070CB5C(a1, v4);
}

void sub_10033EC40()
{
  v0 = type metadata accessor for MediaClickMetricsEvent.ActionType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MediaClickMetricsEvent.TargetId();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[qword_100988CE0];
    if (v9)
    {
      v14 = Strong;
      v10 = v9;
      [v10 setMuted:{objc_msgSend(v10, "isMuted") ^ 1}];
      v11 = [v10 isMuted];
      [v14 updateAudioSessionCategoryWithIsAudioOn:v11 ^ 1];
      (*(v5 + 104))(v7, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v4);
      v12 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
      if (!v11)
      {
        v12 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
      }

      (*(v1 + 104))(v3, *v12, v0);
      sub_1004E3360(v7, v3);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
    }

    else
    {
    }
  }
}

char *sub_10033EFA0()
{
  v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if ((v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0 && v0[*v1] == 6 && (v2 = *&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer]) != 0)
  {
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B0B70;
    v4 = v2;
    *(inited + 32) = [v0 contentView];
    v5 = [v4 subviews];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1003946F8(v6, v7);
    v8 = sub_1002A5EF0(inited);
  }

  else
  {
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_1007B0B70;
    *(v9 + 32) = [v0 contentView];
    v10 = [*&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer] subviews];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1003946F8(v11, v12);
    v8 = sub_1002A5EF0(v9);
  }

  return v8;
}

void sub_10033F248()
{

  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_cardStyle, &qword_1009752C8, &unk_1007B73C0);
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton);
}

uint64_t type metadata accessor for ListTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_100980B68;
  if (!qword_100980B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10033F488(uint64_t a1)
{
  sub_10033F554(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10033F554(uint64_t a1)
{
  if (!qword_100980B78)
  {
    type metadata accessor for TodayCard.Style();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100980B78);
    }
  }
}

void sub_10033F5AC(void *a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v4 = v3;
  sub_1006666C8(Strong);
}

uint64_t (*sub_10033F654(uint64_t **a1))()
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
  v2[4] = sub_1003359F8(v2);
  return sub_1000B4CAC;
}

uint64_t sub_10033F6C8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100343708(&qword_100980BD0, type metadata accessor for ListTodayCardCollectionViewCell, &unk_1007C830C);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10033F73C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100343708(&qword_100980BD0, type metadata accessor for ListTodayCardCollectionViewCell, &unk_1007C830C);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10033F7C8(uint64_t *a1))()
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
  sub_100343708(&qword_100980BD0, type metadata accessor for ListTodayCardCollectionViewCell, &unk_1007C830C);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

char *sub_10033F888(__n128 a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView;
  type metadata accessor for StoryCardMediaView(0);
  *&v2[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_gradientBlurView;
  v5 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *&v2[v4] = sub_1001DCC8C(&off_1008AF6C0);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for HeaderView();
  v6 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v7 = *&v6[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView];
  v8 = v6;
  [v8 addSubview:v7];
  [v8 addSubview:*&v8[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_gradientBlurView]];
  [v8 setClipsToBounds:1];

  return v8;
}

void sub_10033FA68()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for HeaderView();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView];
  [v1 bounds];
  [v2 setFrame:?];
  sub_10033FCCC();
  v3 = [v1 traitCollection];
  v4 = UITraitCollection.prefersRightToLeftLayouts.getter();

  v5 = *&v1[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_gradientBlurView];
  v6 = 0.174532925;
  if (v4)
  {
    v6 = -0.174532925;
  }

  v7 = *(v5 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle);
  *(v5 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle) = v6;
  if (v6 != v7)
  {
    sub_1001DD518();
  }
}

id sub_10033FB9C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_gradientBlurView);

  sub_1001DC428(a1, a2);
  if (a3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *&v9[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle] = v10;
  v12 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView;
  v13 = *&v9[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView];

  sub_100005744(0, &qword_10097FB70, UIVisualEffect_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setBackgroundEffects:isa];

  [*&v9[v12] setOverrideUserInterfaceStyle:*&v9[v11]];

  return [v9 setHidden:(a4 & 1) == 0];
}

void sub_10033FCCC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView];
  [v2 frame];
  v3 = CGRectGetHeight(v9) * 0.5 * 0.176326981;
  [v2 frame];
  v4 = ceil(v3 + CGRectGetHeight(v10));
  v5 = *&v0[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_gradientBlurView];
  [v2 frame];
  MinX = CGRectGetMinX(v11);
  [v2 frame];
  v7 = CGRectGetHeight(v12) + -145.0;
  if (v7 < 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  [v1 bounds];
  [v5 setFrame:{MinX, v8, CGRectGetWidth(v13), v4}];
  *&v5[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientStartY] = v3 / v4;
  sub_1001DD518();
  *&v5[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientEndY] = (v3 + 145.0) / v4;
  sub_1001DD518();
}

id sub_10033FE40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100340000(uint64_t a1, void *a2, double a3)
{
  v6 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for PageGrid();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_1004EDF34(v8, a2);
  sub_10002B894(v8, &qword_10097DBD0, &qword_1007BC750);
  if ((UITraitCollection.isSizeClassCompact.getter() & 1) == 0)
  {
    if (qword_10096E6E0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for StaticDimension();
    sub_1000056A8(v11, qword_1009D24C0);
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007B0B70;
    *(v12 + 32) = a2;
    v13 = a2;
    v14 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of AnyDimension.rawValue(in:)();
    a3 = v15;
  }

  return a3 + 20.0;
}

id sub_100340218()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v3 = [v0 contentView];
    [v3 setClipsToBounds:1];
  }

  [v1 setNeedsLayout];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView];
  v5 = v1[v2];
  *(v4 + qword_10098B7C0) = v5;
  if (v5 == 7)
  {
    v6 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = 7;
    v8 = &qword_10098B7C0;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory;
    *(*(v4 + qword_10098B7C8) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_10098B7D0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_10098B7E0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v5;
    v9 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
    if (!v9)
    {
      goto LABEL_9;
    }

    *(v9 + qword_10098B7C0) = v5;
    *(*(v9 + qword_10098B7C8) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v9 + qword_10098B7D0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v5;
    v6 = *(v9 + qword_10098B7E0);
    v7 = v5;
  }

  *(v6 + *v8) = v7;
LABEL_9:
  v10 = *(*&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  v10[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory] = v5;
  v11 = v10;
  sub_10070D46C();

  return [v1 setNeedsLayout];
}

uint64_t sub_1003403C0(char *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v191 = a5;
  v224 = a4;
  v225 = a3;
  v227 = a2;
  v6 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v6 - 8);
  v184 = &v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v186 = &v183 - v9;
  v10 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v10 - 8);
  v189 = &v183 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v188 = &v183 - v13;
  v229 = type metadata accessor for URL();
  v228 = *(v229 - 8);
  __chkstk_darwin(v229);
  v185 = &v183 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_10002849C(&unk_10097CCA0, &unk_1007B70F0);
  __chkstk_darwin(v218);
  v230 = &v183 - v15;
  v16 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v16 - 8);
  v187 = &v183 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v190 = &v183 - v19;
  __chkstk_darwin(v20);
  v219 = &v183 - v21;
  __chkstk_darwin(v22);
  v226 = &v183 - v23;
  v24 = type metadata accessor for Artwork.Format();
  __chkstk_darwin(v24 - 8);
  v217 = &v183 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Artwork.URLTemplate();
  __chkstk_darwin(v26 - 8);
  v213 = &v183 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for Artwork.Variant();
  v215 = *(v216 - 8);
  __chkstk_darwin(v216);
  v214 = &v183 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10002849C(&qword_100979D60, &qword_1007C0CC8);
  __chkstk_darwin(v29 - 8);
  v210 = &v183 - v30;
  v31 = type metadata accessor for Artwork.Crop();
  v233 = *(v31 - 1);
  v234 = v31;
  __chkstk_darwin(v31);
  v211 = &v183 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v212 = &v183 - v34;
  v209 = type metadata accessor for FloatingPointRoundingRule();
  v208 = *(v209 - 8);
  __chkstk_darwin(v209);
  v206 = &v183 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for TodayCardArtworkLayout();
  v205 = *(v207 - 8);
  __chkstk_darwin(v207);
  v204 = &v183 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v202 = *(v203 - 8);
  __chkstk_darwin(v203);
  v200 = &v183 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v201 = &v183 - v39;
  v40 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v40 - 8);
  v199 = &v183 - v41;
  v196 = type metadata accessor for VideoFillMode();
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v198 = &v183 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for VideoConfiguration();
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v238 = &v183 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10002849C(&qword_100979D68, &qword_1007C7E30);
  __chkstk_darwin(v44 - 8);
  v194 = &v183 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v192 = &v183 - v47;
  v48 = type metadata accessor for VideoControls();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v197 = &v183 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v232 = &v183 - v52;
  __chkstk_darwin(v53);
  v193 = &v183 - v54;
  __chkstk_darwin(v55);
  v57 = &v183 - v56;
  __chkstk_darwin(v58);
  v237 = &v183 - v59;
  __chkstk_darwin(v60);
  v62 = &v183 - v61;
  __chkstk_darwin(v63);
  v65 = &v183 - v64;
  __chkstk_darwin(v66);
  v68 = &v183 - v67;
  __chkstk_darwin(v69);
  v71 = &v183 - v70;
  v240 = a1;
  Video.playbackControls.getter();
  static VideoControls.muteUnmute.getter();
  v231 = *(v49 + 16);
  v231(v62, v71, v48);
  sub_100343708(&unk_100988DE0, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v72 = dispatch thunk of SetAlgebra.isEmpty.getter();
  v236 = v71;
  if (v72)
  {
    v73 = *(v49 + 8);
    v73(v65, v48);
    v235 = v73;
    v73(v68, v48);
    v74 = 1;
    v75 = v192;
  }

  else
  {
    dispatch thunk of SetAlgebra.subtract(_:)();
    v235 = *(v49 + 8);
    v235(v68, v48);
    v75 = v192;
    (*(v49 + 32))(v192, v65, v48);
    v74 = 0;
  }

  v76 = *(v49 + 56);
  v76(v75, v74, 1, v48);
  sub_10002B894(v75, &qword_100979D68, &qword_1007C7E30);
  v77 = v237;
  Video.autoPlayPlaybackControls.getter();
  static VideoControls.muteUnmute.getter();
  v231(v62, v77, v48);
  v78 = v193;
  dispatch thunk of SetAlgebra.intersection(_:)();
  v79 = dispatch thunk of SetAlgebra.isEmpty.getter();
  v220 = v49;
  if (v79)
  {
    v80 = v235;
    v235(v78, v48);
    v80(v57, v48);
    v81 = 1;
    v82 = v234;
    v83 = v194;
  }

  else
  {
    dispatch thunk of SetAlgebra.subtract(_:)();
    v235(v57, v48);
    v83 = v194;
    (*(v49 + 32))(v194, v78, v48);
    v81 = 0;
    v82 = v234;
  }

  v76(v83, v81, 1, v48);
  sub_10002B894(v83, &qword_100979D68, &qword_1007C7E30);
  (*(v195 + 104))(v198, enum case for VideoFillMode.scaleAspectFill(_:), v196);
  Video.preview.getter();
  Artwork.size.getter();
  v84 = v199;
  AspectRatio.init(_:_:)();

  v85 = type metadata accessor for AspectRatio();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  v86 = v231;
  v231(v232, v236, v48);
  v86(v197, v77, v48);
  Video.canPlayFullScreen.getter();
  v87 = v239;
  Video.allowsAutoPlay.getter();
  Video.looping.getter();
  VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
  Video.preview.getter();
  v88 = [v87 traitCollection];
  v89 = v225;
  v91.n128_f64[0] = sub_100699534(v225, v90);
  v92 = v202;
  v93 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v94 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v89 != 6)
  {
    v94 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v89 != 4)
  {
    v93 = v94;
  }

  v95 = v200;
  v96 = v203;
  (*(v202 + 104))(v200, *v93, v203, v91);
  v97 = v201;
  (*(v92 + 32))(v201, v95, v96);
  v98 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();
  (*(v92 + 8))(v97, v96);
  TodayCardArtworkSizedLayoutMetrics.sourceSizeOverride.getter();
  v223 = v48;
  if (v99)
  {
    Artwork.size.getter();
  }

  v100 = v210;
  v101 = v204;
  TodayCardArtworkSizedLayoutMetrics.layout(for:)();
  TodayCardArtworkLayout.collapsedLayoutInsets.getter();
  CGSize.subtracting(insets:)();
  CGSize.scaled(_:)();
  v102 = v208;
  v103 = v206;
  v104 = v209;
  (*(v208 + 104))(v206, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v209);
  CGSize.rounded(_:)();
  (*(v102 + 8))(v103, v104);
  (*(v205 + 8))(v101, v207);
  TodayCardArtworkSizedLayoutMetrics.sourceCropOverride(for:)();
  v105 = v233;
  v106 = *(v233 + 48);
  v107 = v106(v100, 1, v82);
  v231 = v98;
  v108 = v88;
  if (v107 == 1)
  {
    v109 = v212;
    Artwork.crop.getter();
    v110 = v109;
    v111 = v82;
    if (v106(v100, 1, v82) != 1)
    {
      sub_10002B894(v100, &qword_100979D60, &qword_1007C0CC8);
    }
  }

  else
  {
    v110 = v212;
    (*(v105 + 32))(v212, v100, v82);
    v111 = v82;
  }

  v112 = v214;
  dispatch thunk of Artwork.bestVariant(prefersLayeredImage:)();
  Artwork.template.getter();
  [v108 displayScale];
  v113 = v233;
  (*(v233 + 16))(v211, v110, v111);
  Artwork.Variant.format.getter();
  Artwork.Variant.quality.getter();
  type metadata accessor for ArtworkLoaderConfig();
  swift_allocObject();
  v232 = ArtworkLoaderConfig.init(template:size:scale:crop:format:quality:useWideGamut:)();

  (*(v215 + 8))(v112, v216);
  (*(v113 + 8))(v110, v234);
  v114 = *&v239[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  v233 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView;
  v231 = v114;
  v115 = *(v114 + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  v116 = v226;
  Video.videoUrl.getter();
  v117 = v228;
  v118 = *(v228 + 56);
  v119 = 1;
  v120 = v229;
  v118(v116, 0, 1, v229);
  v234 = v115;
  v217 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v122 = Strong;
    v123 = v219;
    (*(v117 + 16))(v219, Strong + qword_1009D21C8, v120);

    v119 = 0;
  }

  else
  {
    v123 = v219;
  }

  v118(v123, v119, 1, v120);
  v124 = *(v218 + 48);
  v125 = v230;
  sub_100031660(v116, v230, &qword_100982460, &unk_1007B5C90);
  v126 = v125;
  sub_100031660(v123, v125 + v124, &qword_100982460, &unk_1007B5C90);
  v127 = *(v117 + 48);
  if (v127(v126, 1, v120) == 1)
  {
    sub_10002B894(v123, &qword_100982460, &unk_1007B5C90);
    v128 = v230;
    sub_10002B894(v116, &qword_100982460, &unk_1007B5C90);
    v129 = v127(v128 + v124, 1, v120);
    v130 = v223;
    if (v129 == 1)
    {
      sub_10002B894(v128, &qword_100982460, &unk_1007B5C90);
      v131 = v231;
      goto LABEL_42;
    }
  }

  else
  {
    v132 = v190;
    sub_100031660(v126, v190, &qword_100982460, &unk_1007B5C90);
    if (v127(v126 + v124, 1, v120) != 1)
    {
      v140 = v228;
      v141 = v126 + v124;
      v142 = v185;
      (*(v228 + 32))(v185, v141, v120);
      sub_100343708(&qword_100975040, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v143 = v126;
      v144 = dispatch thunk of static Equatable.== infix(_:_:)();
      v145 = *(v140 + 8);
      v145(v142, v120);
      sub_10002B894(v123, &qword_100982460, &unk_1007B5C90);
      sub_10002B894(v226, &qword_100982460, &unk_1007B5C90);
      v145(v190, v120);
      sub_10002B894(v143, &qword_100982460, &unk_1007B5C90);
      v130 = v223;
      v131 = v231;
      if (v144)
      {
        goto LABEL_42;
      }

      goto LABEL_26;
    }

    sub_10002B894(v123, &qword_100982460, &unk_1007B5C90);
    v128 = v230;
    sub_10002B894(v116, &qword_100982460, &unk_1007B5C90);
    (*(v228 + 8))(v132, v120);
    v130 = v223;
  }

  sub_10002B894(v128, &unk_10097CCA0, &unk_1007B70F0);
  v131 = v231;
LABEL_26:
  v133 = v131;
  type metadata accessor for VideoViewManager();
  v231 = type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v134 = v241;
  Video.playbackId.getter();
  v135 = v187;
  Video.videoUrl.getter();
  v118(v135, 0, 1, v229);
  v136 = v188;
  Video.templateMediaEvent.getter();
  v137 = v189;
  Video.templateClickEvent.getter();
  v138 = type metadata accessor for TodayCardVideoView(0);
  sub_100343708(&qword_100979D58, type metadata accessor for TodayCardVideoView, &unk_1007D1B30);
  v230 = v138;
  v139 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
  sub_10002B894(v137, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v136, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v135, &qword_100982460, &unk_1007B5C90);
  sub_10002B894(&v241, &qword_10096FB90, &qword_1007B2A50);
  if (!v139)
  {
LABEL_31:

    v131 = v133;
    goto LABEL_42;
  }

  v229 = v134;
  if (*(v139 + qword_1009CE000))
  {

    goto LABEL_31;
  }

  v146 = v234;
  *(v139 + qword_1009CDFF8) = v234[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory];
  sub_1000FA22C();
  swift_unknownObjectWeakAssign();
  v147 = v217;
  v148 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v149 = v139;
  sub_1006666C8(v148);

  v150 = *&v147[v146];
  Video.preview.getter();
  Artwork.size.getter();
  v152 = v151;
  v154 = v153;

  v155 = type metadata accessor for PageGrid();
  v156 = *(v155 - 8);
  v157 = v186;
  (*(v156 + 16))(v186, v224, v155);
  (*(v156 + 56))(v157, 0, 1, v155);
  v158 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_videoView;
  v159 = swift_unknownObjectWeakLoadStrong();
  v228 = v158;
  v240 = v149;
  swift_unknownObjectWeakAssign();
  sub_1006666C8(v159);

  v160 = &v150[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize];
  *v160 = v152;
  *(v160 + 1) = v154;
  v160[16] = 0;
  v161 = swift_unknownObjectWeakLoadStrong();
  v131 = v133;
  if (v161)
  {
    v162 = v161;
    (*((swift_isaMask & *v161) + 0xE8))(v152, v154, 0);
  }

  v163 = v227;
  *&v150[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkLayoutWithMetrics] = v227;

  v164 = swift_unknownObjectWeakLoadStrong();
  if (v164)
  {
    v165 = v164;
    v166 = *((swift_isaMask & *v164) + 0xD0);
    swift_bridgeObjectRetain_n();
    v166(v163);
  }

  else
  {
  }

  v167 = v186;
  v168 = v184;
  sub_100031660(v186, v184, &qword_10097DBD0, &qword_1007BC750);
  sub_100665BDC(v168);
  v169 = v225;
  v150[OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory] = v225;
  v170 = swift_unknownObjectWeakLoadStrong();
  if (v170)
  {
    v171 = v170;
    (*((swift_isaMask & *v170) + 0x118))(v169);
  }

  v172 = swift_unknownObjectWeakLoadStrong();
  if (v172)
  {
    v173 = v172;
    v174 = swift_unknownObjectWeakLoadStrong();
    (*((swift_isaMask & *v173) + 0x150))(v174, *v160, *(v160 + 1), v160[16], v227, v167, v169);
  }

  [v150 setNeedsLayout];
  v175 = v240;

  sub_10002B894(v167, &qword_10097DBD0, &qword_1007BC750);
  type metadata accessor for ArtworkLoader();
  inject<A, B>(_:from:)();
  sub_100343708(&qword_100979D70, type metadata accessor for TodayCardVideoView, &unk_1007DDE78);
  ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  v176 = v234;
  [*&v217[v234] setHidden:0];
  [*&v176[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView] setHidden:1];

  v176[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia] = 1;
  v130 = v223;
LABEL_42:

  v177 = *&v131[v233];
  v177[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory] = v239[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v178 = v177;
  sub_10070D46C();

  v179 = swift_unknownObjectWeakLoadStrong();
  if (v179)
  {
    *(v179 + qword_100988CB8 + 8) = &off_1008BE700;
    v180 = v179;
    swift_unknownObjectWeakAssign();
  }

  sub_1002149C0();

  (*(v221 + 8))(v238, v222);
  v181 = v235;
  v235(v237, v130);
  return v181(v236, v130);
}

void sub_100342140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v147 = a5;
  v155 = a4;
  v156 = a2;
  v140 = a1;
  LODWORD(v136) = a3;
  v8 = sub_10002849C(&qword_10097A450, qword_1007BD3D0);
  __chkstk_darwin(v8 - 8);
  v123 = &v118 - v9;
  v153 = type metadata accessor for PageGrid();
  v151 = *(v153 - 8);
  __chkstk_darwin(v153);
  v121 = v10;
  v129 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for UUID();
  v131 = *(v150 - 8);
  __chkstk_darwin(v150);
  v128 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v11;
  __chkstk_darwin(v12);
  v130 = &v118 - v13;
  v124 = sub_10002849C(&qword_100979D78, &qword_1007C0D30);
  __chkstk_darwin(v124);
  v125 = &v118 - v14;
  v15 = sub_10002849C(&qword_100972638, qword_1007BDA60);
  __chkstk_darwin(v15 - 8);
  v122 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v119 = &v118 - v18;
  __chkstk_darwin(v19);
  v126 = &v118 - v20;
  __chkstk_darwin(v21);
  v127 = &v118 - v22;
  v23 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v23 - 8);
  v146 = &v118 - v24;
  v25 = type metadata accessor for Artwork.Format();
  __chkstk_darwin(v25 - 8);
  v145 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for Artwork.URLTemplate();
  v149 = *(v132 - 8);
  __chkstk_darwin(v132);
  v148 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for Artwork.Variant();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10002849C(&qword_100979D60, &qword_1007C0CC8);
  __chkstk_darwin(v29 - 8);
  v135 = &v118 - v30;
  v141 = type metadata accessor for Artwork.Crop();
  v139 = *(v141 - 8);
  __chkstk_darwin(v141);
  v137 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v138 = &v118 - v33;
  v134 = type metadata accessor for FloatingPointRoundingRule();
  v34 = *(v134 - 8);
  __chkstk_darwin(v134);
  v36 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for TodayCardArtworkLayout();
  v37 = *(v133 - 8);
  __chkstk_darwin(v133);
  v39 = &v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v45 = __chkstk_darwin(v44).n128_u64[0];
  v47 = &v118 - v46;
  v154 = v6;
  v48 = [v6 traitCollection];
  v152 = a3;
  v50.n128_f64[0] = sub_100699534(a3, v49);
  v51 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v52 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v136 != 6)
  {
    v52 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v136 != 4)
  {
    v51 = v52;
  }

  (*(v41 + 104))(v43, *v51, v40, v50);
  (*(v41 + 32))(v47, v43, v40);
  v53 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();
  (*(v41 + 8))(v47, v40);
  TodayCardArtworkSizedLayoutMetrics.sourceSizeOverride.getter();
  if (v54)
  {
    Artwork.size.getter();
  }

  TodayCardArtworkSizedLayoutMetrics.layout(for:)();
  TodayCardArtworkLayout.collapsedLayoutInsets.getter();
  CGSize.subtracting(insets:)();
  CGSize.scaled(_:)();
  v55 = v134;
  (*(v34 + 104))(v36, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v134);
  CGSize.rounded(_:)();
  (*(v34 + 8))(v36, v55);
  (*(v37 + 8))(v39, v133);
  v56 = v135;
  TodayCardArtworkSizedLayoutMetrics.sourceCropOverride(for:)();
  v57 = v139;
  v58 = *(v139 + 48);
  v59 = v141;
  v60 = v58(v56, 1, v141);
  v136 = v53;
  if (v60 == 1)
  {
    v61 = v138;
    Artwork.crop.getter();
    if (v58(v56, 1, v59) != 1)
    {
      sub_10002B894(v56, &qword_100979D60, &qword_1007C0CC8);
    }
  }

  else
  {
    v61 = v138;
    (*(v57 + 32))(v138, v56, v59);
  }

  v62 = v142;
  dispatch thunk of Artwork.bestVariant(prefersLayeredImage:)();
  Artwork.template.getter();
  [v48 displayScale];
  v63 = v48;
  (*(v57 + 16))(v137, v61, v59);
  Artwork.Variant.format.getter();
  Artwork.Variant.quality.getter();
  type metadata accessor for ArtworkLoaderConfig();
  swift_allocObject();
  v64 = ArtworkLoaderConfig.init(template:size:scale:crop:format:quality:useWideGamut:)();

  (*(v143 + 8))(v62, v144);
  (*(v57 + 8))(v61, v59);
  v145 = *&v154[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  v144 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView;
  v65 = *&v145[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView];
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  v66 = v65;
  inject<A, B>(_:from:)();
  v67 = v157;
  v143 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1006666C8(Strong);

  v147 = v66;
  v142 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView;
  v69 = *&v66[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView];
  ArtworkLoaderConfig.size.getter();
  v71 = v70;
  v73 = v72;
  v74 = [*(v69 + OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView) image];
  v75 = v151;
  v76 = v146;
  v77 = v153;
  v138 = *(v151 + 16);
  (v138)(v146, v155, v153);
  (*(v75 + 56))(v76, 0, 1, v77);
  sub_1001A5AD8(v74, v71, v73, 0, v156, v76, v152);

  v78 = v76;
  v79 = v69;
  sub_10002B894(v78, &qword_10097DBD0, &qword_1007BC750);
  v80 = *(v69 + OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded);
  v140 = v64;
  v141 = v67;
  v139 = v69;
  if (v80)
  {
    v81 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    v82 = v127;
    sub_100031660(v69 + v81, v127, &qword_100972638, qword_1007BDA60);
    v83 = v126;
    ArtworkLoaderConfig.template.getter();
    v84 = v149;
    v85 = v132;
    (*(v149 + 56))(v83, 0, 1, v132);
    v86 = *(v124 + 48);
    v87 = v125;
    sub_100031660(v82, v125, &qword_100972638, qword_1007BDA60);
    sub_100031660(v83, v87 + v86, &qword_100972638, qword_1007BDA60);
    v88 = v82;
    v89 = *(v84 + 48);
    if (v89(v87, 1, v85) == 1)
    {
      sub_10002B894(v83, &qword_100972638, qword_1007BDA60);
      sub_10002B894(v88, &qword_100972638, qword_1007BDA60);
      if (v89(v87 + v86, 1, v85) == 1)
      {
        sub_10002B894(v87, &qword_100972638, qword_1007BDA60);
        goto LABEL_20;
      }
    }

    else
    {
      v90 = v119;
      sub_100031660(v87, v119, &qword_100972638, qword_1007BDA60);
      if (v89(v87 + v86, 1, v85) != 1)
      {
        v114 = v148;
        v115 = v149;
        (*(v149 + 32))(v148, v87 + v86, v85);
        sub_100343708(&qword_100979D88, &type metadata accessor for Artwork.URLTemplate, &protocol conformance descriptor for Artwork.URLTemplate);
        v116 = dispatch thunk of static Equatable.== infix(_:_:)();
        v117 = *(v115 + 8);
        v117(v114, v85);
        sub_10002B894(v126, &qword_100972638, qword_1007BDA60);
        sub_10002B894(v127, &qword_100972638, qword_1007BDA60);
        v117(v90, v85);
        sub_10002B894(v87, &qword_100972638, qword_1007BDA60);
        v79 = v139;
        if (v116)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      sub_10002B894(v126, &qword_100972638, qword_1007BDA60);
      sub_10002B894(v127, &qword_100972638, qword_1007BDA60);
      (*(v149 + 8))(v90, v85);
    }

    sub_10002B894(v87, &qword_100979D78, &qword_1007C0D30);
    v79 = v139;
  }

LABEL_18:
  if ((*(v79 + OBJC_IVAR____TtC8AppStore18RevealingImageView_isTransitioning) & 1) == 0)
  {
    v91 = v130;
    UUID.init()();
    v92 = v131;
    v93 = *(v131 + 16);
    v94 = v128;
    v95 = v150;
    v93(v128, v91, v150);
    sub_100343708(&qword_100979D80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    AnyHashable.init<A>(_:)();
    v148 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v93(v94, v91, v95);
    (v138)(v129, v155, v153);
    v96 = (*(v92 + 80) + 24) & ~*(v92 + 80);
    v97 = (v120 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = (v97 + 23) & 0xFFFFFFFFFFFFFFF8;
    v99 = v151;
    v100 = (*(v151 + 80) + v98 + 8) & ~*(v151 + 80);
    v101 = v100 + v121;
    v102 = swift_allocObject();
    *(v102 + 16) = v148;
    v103 = *(v92 + 32);
    v103(v102 + v96, v128, v150);
    v104 = (v102 + v97);
    *v104 = v71;
    v104[1] = v73;
    *(v102 + v98) = v156;
    (*(v99 + 32))(v102 + v100, v129, v153);
    *(v102 + v101) = v152;

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(&v157, &qword_10096FB90, &qword_1007B2A50);

    v105 = v122;
    ArtworkLoaderConfig.template.getter();
    (*(v149 + 56))(v105, 0, 1, v132);
    v106 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
    v107 = v139;
    swift_beginAccess();
    sub_1000315F8(v105, v107 + v106, &qword_100972638, qword_1007BDA60);
    swift_endAccess();
    v108 = v123;
    v109 = v150;
    v103(v123, v130, v150);
    (*(v131 + 56))(v108, 0, 1, v109);
    v110 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    sub_1000315F8(v108, v107 + v110, &qword_10097A450, qword_1007BD3D0);
    swift_endAccess();
  }

LABEL_20:
  v111 = v147;
  [*&v142[v147] setHidden:0];
  [*&v111[v143] setHidden:1];

  v111[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia] = 1;

  v112 = *&v145[v144];
  v112[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory] = v154[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v113 = v112;
  sub_10070D46C();
}

uint64_t sub_100343708(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_100343750()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  v2 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView;
  result = *(v1 + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  if (result[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia] != 1)
  {
    return v0;
  }

  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v4] != 6)
  {
    v5 = [v0 traitCollection];
    v6 = v0;
    v7 = UITraitCollection.prefersAccessibilityLayouts.getter();

    result = v6;
    if ((v7 & 1) == 0)
    {
      return *(v1 + v2);
    }
  }

  return result;
}

double sub_100343828(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v16 - v13;
  (*(v5 + 16))(&v16 - v13, a1, v4, v12);
  (*(v5 + 56))(v14, 0, 1, v4);
  sub_100031660(v14, v10, &qword_10097DBD0, &qword_1007BC750);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_10002B894(v10, &qword_10097DBD0, &qword_1007BC750);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
    [a2 layoutDirection];
    NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
    (*(v5 + 8))(v7, v4);
  }

  sub_10002B894(v14, &qword_10097DBD0, &qword_1007BC750);
  return 20.0;
}

id sub_100343C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC8AppStore23CollectionTableViewCell_dataSource] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8AppStore23CollectionTableViewCell_collectionView] = 0;
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CollectionTableViewCell();
  v7 = objc_msgSendSuper2(&v9, "initWithStyle:reuseIdentifier:", a1, v6);

  return v7;
}

id sub_100343D48(void *a1)
{
  *&v1[OBJC_IVAR____TtC8AppStore23CollectionTableViewCell_dataSource] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8AppStore23CollectionTableViewCell_collectionView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CollectionTableViewCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100343E04(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CollectionTableViewCell();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100343EB8(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_100343F50@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1009CFB00;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_100343FA8(uint64_t a1)
{
  v3 = qword_1009CFB00;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100344068()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = swift_isaMask;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, "prepareForReuse");
  return (*(*((v3 & v2) + 0x58) + 88))(*((v3 & v2) + 0x50));
}

uint64_t sub_100344184@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v3);
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
  v6 = type metadata accessor for ComponentSeparator();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

char *sub_1003442F0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = *v4;
  v12 = swift_isaMask;
  v13 = qword_1009CFB00;
  v14 = type metadata accessor for ItemLayoutContext();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v15 = qword_1009CFB08;
  *&v5[v15] = (*(*((v12 & v11) + 0x58) + 72))(0.0, 0.0, 0.0, 0.0);
  v24.receiver = v5;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v20 = v16;
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v21 = [v20 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v22 = [v20 contentView];
  [v22 addSubview:*&v20[qword_1009CFB08]];

  return v20;
}

id sub_10034452C()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[qword_1009CFB08];
  [v0 bounds];
  return [v1 setFrame:?];
}

void sub_100344598(void *a1)
{
  v1 = a1;
  sub_10034452C();
}

uint64_t sub_1003445E0(double a1, double a2)
{
  type metadata accessor for ScrollablePillView(0);
  swift_dynamicCastClass();
  return CustomLayoutView.sizeThatFits(_:)();
}

double sub_100344644(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_1003445E0(a2, a3);
  v7 = v6;

  return v7;
}

void sub_100344698(void *a1)
{
  v1 = a1;
  sub_100344068();
}

id sub_1003446E0(void *a1)
{
  v1 = a1;
  v2 = sub_100344724();

  return v2;
}

void sub_1003448A0(uint64_t a1)
{
  sub_1000284E4(a1 + qword_1009CFB00);
  v2 = *(a1 + qword_1009CFB08);
}

void sub_10034492C()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = qword_1009CFB00;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = qword_1009CFB08;
  *(v1 + v6) = (*(*((v3 & v2) + 0x58) + 72))(0.0, 0.0, 0.0, 0.0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_100344A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  v9 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  TodayCard.media.getter();
  type metadata accessor for TodayCardMediaMediumLockupWithScreenshots();
  if (swift_dynamicCastClass())
  {
    v12 = sub_100344F64();
    v13 = TodayCardMediaMediumLockupWithScreenshots.mediumAdLockupWithScreenshotsBackground.getter();
    sub_1001B49C8(v13, a4);

    v14 = type metadata accessor for PageGrid();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a3, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_1000A83AC(v11, v5 + v16);
    swift_endAccess();
    sub_1004EAB3C(v8);
    v17 = [v5 backgroundView];
    if (v17)
    {
      v18 = v17;
      v19 = TodayCard.backgroundColor.getter();
      if (!v19)
      {
        sub_100028BB8();
        v19 = static UIColor.todayCardDefaultBackground.getter();
      }

      v20 = v19;
      [v18 setBackgroundColor:v19];
    }

    [v5 setNeedsLayout];
  }

  else
  {
  }

  return result;
}

double sub_100344CDC(uint64_t a1, uint64_t a2)
{
  sub_10002C0AC(a1, v6);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for TodayCard();
  if (swift_dynamicCast())
  {
    TodayCard.media.getter();

    type metadata accessor for TodayCardMediaMediumLockupWithScreenshots();
    if (swift_dynamicCastClass())
    {
      v4 = sub_100344F64();
      v5 = TodayCardMediaMediumLockupWithScreenshots.mediumAdLockupWithScreenshotsBackground.getter();
      sub_10034595C(v5, a2, v4);
    }

    else
    {
    }
  }

  return result;
}

void sub_100344DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100344F64();
  v4 = OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  v5 = *(*&v3[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkView.image.setter();

  v6 = *(*&v3[v4] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_10009A098();
  v7 = v6;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void (*sub_100344E9C(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_10002C0AC(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_100005A38(v7, v5 + 32);
  return sub_100345950;
}

id sub_100344F64()
{
  v1 = OBJC_IVAR____TtC8AppStore66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = v0;
    v6 = (*(ObjectType + 712))();
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_100344FE4(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for AutomationSemantics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC8AppStore66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView] = 0;
  v4[OBJC_IVAR____TtC8AppStore66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell_isAnimationEnabled] = 1;
  v13 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(0);
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = sub_100344F64();
  [v16 setClipsToBounds:1];

  v17 = [v14 contentView];
  [v17 addSubview:*&v14[OBJC_IVAR____TtC8AppStore66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView]];

  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v19, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(v20, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  (*(v10 + 8))(v12, v9);
  return v14;
}

id sub_100345244()
{
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_100345304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  sub_1001B2E10(a4, a5);
  return v7;
}

void sub_100345510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10002C0AC(a3, v14);
      sub_10002849C(&qword_100973D50, &unk_1007B3840);
      type metadata accessor for TodayCard();
      if (swift_dynamicCast())
      {
        TodayCard.media.getter();

        TodayCardMedia.impressionMetrics.getter();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10002B894(v6, &qword_100973D30, &unk_1007B1DC0);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          ImpressionsCalculator.addElement(_:at:)();

          (*(v8 + 8))(v10, v7);
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

id sub_1003457B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_100980CE8;
  if (!qword_100980CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10034589C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100344F64();
  sub_100772574(a1, a2);
}

uint64_t sub_100345908()
{
  v0 = sub_100344F64();
  v1 = *(*&v0[OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_isDisplayingSearchAd);

  return v1;
}

uint64_t sub_10034595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v12[3] = type metadata accessor for MediumAdLockupWithScreenshotsBackground();
  v12[4] = &protocol witness table for MediumAdLockupWithScreenshotsBackground;
  v12[0] = a1;
  sub_10002C0AC(v12, &v11);

  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  if (swift_dynamicCast())
  {
    MediumAdLockupWithScreenshotsBackground.lockup.getter();
    v6 = Lockup.icon.getter();

    if (v6)
    {
      (*(ObjectType + 168))(&v11, v7);
      sub_10003B944(&v11);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v8 = *(*(a3 + OBJC_IVAR____TtC8AppStore43MediumAdLockupWithScreenshotsBackgroundView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      type metadata accessor for ArtworkView();
      sub_10009A098();
      v9 = v8;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    else
    {
    }
  }

  return sub_100007000(v12);
}

uint64_t sub_100345B3C(double a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v8 = type metadata accessor for FontSource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E170 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D13D0);
  (*(*(v12 - 8) + 16))(v11, v13, v12);
  (*(v9 + 104))(v11, enum case for FontSource.useCase(_:), v8);
  *a3 = type metadata accessor for StaticDimension();
  *a4 = &protocol witness table for StaticDimension;
  sub_1000056E0(a5);
  v17[3] = v8;
  v17[4] = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v17);
  (*(v9 + 16))(v14, v11, v8);
  StaticDimension.init(_:scaledLike:)();
  return (*(v9 + 8))(v11, v8);
}

char *sub_100345D28(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore22SearchTransparencyView_linkedLabel;
  if (qword_10096E170 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v10, qword_1009D13D0);
  (*(v11 + 16))(v13, v15, v10);
  v16 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v5[v14] = sub_1002F5B8C(v13, 0, 0, 0);
  v17 = type metadata accessor for SearchTransparencyView();
  v26.receiver = v5;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC8AppStore22SearchTransparencyView_linkedLabel;
  v20 = *&v18[OBJC_IVAR____TtC8AppStore22SearchTransparencyView_linkedLabel];
  v21 = v18;
  [v21 addSubview:v20];
  [v21 setLayoutMargins:{0.0, 32.0, 0.0, 32.0}];
  sub_100028BB8();
  v22 = static UIColor.componentBackgroundStandout.getter();
  [v21 setBackgroundColor:v22];

  [v21 _setCornerRadius:10.0];
  v23 = *&v18[v19];
  v24 = static UIColor.secondaryText.getter();
  [v23 setTextColor:v24];

  [*&v18[v19] setTextAlignment:1];
  return v21;
}

id sub_100346270(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchTransparencyView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003462D8@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for LegacyAppState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  dispatch thunk of AppStateMachine.currentState.getter();
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 != enum case for LegacyAppState.waiting(_:))
  {
    if (v7 == enum case for LegacyAppState.purchased(_:))
    {
      (*(v4 + 96))(v6, v3);
      v10 = type metadata accessor for PurchaseType();
    }

    else
    {
      if (v7 == enum case for LegacyAppState.updatable(_:))
      {
        (*(v4 + 8))(v6, v3);
        v9 = &enum case for AdInteractionType.update(_:);
        goto LABEL_12;
      }

      if (v7 == enum case for LegacyAppState.downloadable(_:))
      {
        (*(v4 + 8))(v6, v3);
        v9 = &enum case for AdInteractionType.download(_:);
        goto LABEL_12;
      }

      if (v7 == enum case for LegacyAppState.paused(_:) || v7 == enum case for LegacyAppState.downloading(_:) || v7 == enum case for LegacyAppState.installing(_:))
      {
        (*(v4 + 96))(v6, v3);
        v8 = type metadata accessor for LegacyAppState.AppInstallationDetails();
        goto LABEL_3;
      }

      if (v7 != enum case for LegacyAppState.openable(_:))
      {
        if (v7 != enum case for LegacyAppState.buyable(_:))
        {
          if (v7 == enum case for LegacyAppState.installed(_:))
          {
            goto LABEL_7;
          }

          if (v7 != enum case for LegacyAppState.unknown(_:))
          {
            v14 = enum case for AdInteractionType.open(_:);
            v15 = type metadata accessor for AdInteractionType();
            (*(*(v15 - 8) + 104))(a2, v14, v15);
            return (*(v4 + 8))(v6, v3);
          }
        }

        v9 = &enum case for AdInteractionType.getArcade(_:);
        goto LABEL_12;
      }

      (*(v4 + 96))(v6, v3);

      v10 = type metadata accessor for OpenableDestination();
    }

    (*(*(v10 - 8) + 8))(v6, v10);
LABEL_7:
    v9 = &enum case for AdInteractionType.open(_:);
    goto LABEL_12;
  }

  (*(v4 + 96))(v6, v3);
  v8 = type metadata accessor for InstallationType();
LABEL_3:
  (*(*(v8 - 8) + 8))(v6, v8);
  v9 = &enum case for AdInteractionType.cancel(_:);
LABEL_12:
  v11 = *v9;
  v12 = type metadata accessor for AdInteractionType();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

uint64_t sub_1003466AC@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AdvertActionMetrics.PurchaseType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LegacyAppState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  dispatch thunk of AppStateMachine.currentState.getter();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for LegacyAppState.waiting(_:))
  {
    (*(v9 + 96))(v11, v8);
    v13 = type metadata accessor for InstallationType();
LABEL_3:
    (*(*(v13 - 8) + 8))(v11, v13);
    v14 = &enum case for AdInteractionType.cancel(_:);
    goto LABEL_12;
  }

  if (v12 == enum case for LegacyAppState.purchased(_:))
  {
    (*(v9 + 96))(v11, v8);
    v15 = type metadata accessor for PurchaseType();
LABEL_6:
    (*(*(v15 - 8) + 8))(v11, v15);
LABEL_7:
    v14 = &enum case for AdInteractionType.open(_:);
    goto LABEL_12;
  }

  if (v12 == enum case for LegacyAppState.updatable(_:))
  {
    (*(v9 + 8))(v11, v8);
    v14 = &enum case for AdInteractionType.update(_:);
    goto LABEL_12;
  }

  if (v12 == enum case for LegacyAppState.downloadable(_:))
  {
    (*(v9 + 8))(v11, v8);
    v14 = &enum case for AdInteractionType.download(_:);
    goto LABEL_12;
  }

  if (v12 == enum case for LegacyAppState.paused(_:) || v12 == enum case for LegacyAppState.downloading(_:) || v12 == enum case for LegacyAppState.installing(_:))
  {
    (*(v9 + 96))(v11, v8);
    v13 = type metadata accessor for LegacyAppState.AppInstallationDetails();
    goto LABEL_3;
  }

  if (v12 == enum case for LegacyAppState.openable(_:))
  {
    (*(v9 + 96))(v11, v8);

    v15 = type metadata accessor for OpenableDestination();
    goto LABEL_6;
  }

  if (v12 != enum case for LegacyAppState.buyable(_:))
  {
    if (v12 == enum case for LegacyAppState.installed(_:))
    {
      goto LABEL_7;
    }

    if (v12 != enum case for LegacyAppState.unknown(_:))
    {
      v20 = enum case for AdInteractionType.open(_:);
      v21 = type metadata accessor for AdInteractionType();
      (*(*(v21 - 8) + 104))(a2, v20, v21);
      return (*(v9 + 8))(v11, v8);
    }
  }

  v19.n128_f64[0] = (*(v5 + 104))(v7, enum case for AdvertActionMetrics.PurchaseType.standard(_:), v4);
  sub_100346C54(v19);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v23[2] == v23[0] && v23[3] == v23[1])
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v5 + 8))(v7, v4);

    if ((v22 & 1) == 0)
    {
      v14 = &enum case for AdInteractionType.getPreorder(_:);
      goto LABEL_12;
    }
  }

  v14 = &enum case for AdInteractionType.get(_:);
LABEL_12:
  v16 = *v14;
  v17 = type metadata accessor for AdInteractionType();
  return (*(*(v17 - 8) + 104))(a2, v16, v17);
}

uint64_t sub_100346BF8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_100346C54(__n128 a1)
{
  result = qword_100980DC8;
  if (!qword_100980DC8)
  {
    type metadata accessor for AdvertActionMetrics.PurchaseType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980DC8);
  }

  return result;
}

double sub_100346D70(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AspectRatio();
  v74 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  *&v15 = __chkstk_darwin(v14 - 8).n128_u64[0];
  v82 = &v74 - v16;
  v88 = a5;
  [a5 pageMarginInsets];
  v17._object = 0x80000001007FC650;
  v17._countAndFlagsBits = 0xD000000000000010;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v99 = localizedString(_:comment:)(v17, v18);
  v19 = sub_100072384(v99);
  v77 = v9;
  v78 = v8;
  v76 = v11;
  v83 = v13;
  if (v19 > 2)
  {
    if (v19 - 3 < 2)
    {
      if (qword_10096CEA8 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_1009CD920;
      goto LABEL_21;
    }

    if (v19 == 5)
    {
      if (qword_10096CEB0 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_1009CD978;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (!v19)
  {
LABEL_15:
    if (qword_10096CE90 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_1009CD818;
    goto LABEL_21;
  }

  if (v19 == 1)
  {
    if (qword_10096CE98 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_1009CD870;
  }

  else
  {
    if (qword_10096CEA0 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_1009CD8C8;
  }

LABEL_21:
  v21 = v20[4];
  *&v97[16] = v20[3];
  *&v97[32] = v21;
  v98 = *(v20 + 10);
  v22 = v20[2];
  v96 = v20[1];
  *v97 = v22;
  v95 = *v20;
  v23 = *&v97[40];
  v24 = v98;
  v86 = *&v97[24];
  v87 = *&v97[8];
  v26 = *(&v96 + 1);
  v25 = v22;
  v28 = *(&v95 + 1);
  v27 = v96;
  v29 = v95;
  sub_100072738(&v95, v92);
  v92[0] = __PAIR128__(v28, v29);
  v92[1] = __PAIR128__(v26, v27);
  *&v93[0] = v25;
  *(v93 + 8) = v87;
  *(&v93[1] + 8) = v86;
  *(&v93[2] + 1) = v23;
  v94 = v24;
  v98 = v24;
  v95 = __PAIR128__(v28, v29);
  v96 = __PAIR128__(v26, v27);
  *v97 = v93[0];
  *&v97[16] = v93[1];
  *&v97[32] = v93[2];
  v30 = v88;
  [v88 pageMarginInsets];
  v31 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v85 = sub_1000723D0(&v95);

  *&v86 = a1;
  Quote.text.getter();
  v33 = v32;
  v34 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096CED0 != -1)
  {
    swift_once();
  }

  v84 = type metadata accessor for FontUseCase();
  v35 = sub_1000056A8(v84, qword_1009CD9D0);
  v36 = [v30 traitCollection];
  v81 = v35;
  v37 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  sub_10002849C(&unk_100973960, &unk_1007B4930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v39 = qword_10096E898;
  v40 = NSParagraphStyleAttributeName;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = [qword_1009D2970 paragraphStyleWithBaseWritingDirection:-1];
  v42 = sub_100005744(0, &unk_100993000, NSParagraphStyle_ptr);
  *(inited + 40) = v41;
  *(inited + 64) = v42;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v34;
  *(inited + 80) = v37;
  v43 = NSFontAttributeName;
  v80 = v37;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0, &unk_1007B2BF0);
  swift_arrayDestroy();
  v44 = objc_allocWithZone(NSMutableAttributedString);
  v45 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_100347FB4(&qword_100976620, type metadata accessor for Key, &unk_1007B0934);
  v79 = v33;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v47 = [v44 initWithString:v45 attributes:isa];

  *&v87 = v47;
  if (v85)
  {
    v48 = v85;
    sub_100397150(_swiftEmptyArrayStorage);
    v49 = objc_allocWithZone(NSAttributedString);
    v50 = String._bridgeToObjectiveC()();
    v51 = Dictionary._bridgeToObjectiveC()().super.isa;

    v52 = [v49 initWithString:v50 attributes:v51];

    [v87 appendAttributedString:v52];
    v53 = [objc_allocWithZone(NSTextAttachment) init];
    [v53 setImage:v48];
    [(UIImage *)v48 size];
    [v53 setBounds:{0.0, -v23, v54, v55}];
    v56 = [objc_opt_self() attributedStringWithAttachment:v53];
    [v87 appendAttributedString:v56];

    sub_100072770(v92);
  }

  else
  {

    sub_100072770(v92);
  }

  v57 = v84;
  v58 = *(v84 - 8);
  v59 = v82;
  (*(v58 + 16))(v82, v81, v84);
  (*(v58 + 56))(v59, 0, 1, v57);
  v60 = type metadata accessor for Feature();
  v90 = v60;
  v61 = sub_100347FB4(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v91 = v61;
  v62 = sub_1000056E0(v89);
  v63 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v64 = *(*(v60 - 8) + 104);
  v64(v62, enum case for Feature.measurement_with_labelplaceholder(_:), v60);
  isFeatureEnabled(_:)();
  sub_100007000(v89);
  v65 = v88;
  static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  sub_10025BAF0(v59);
  if (qword_10096CEE0 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for StaticDimension();
  sub_1000056A8(v66, qword_1009CDA00);
  AnyDimension.topMargin(from:in:)();
  if (qword_10096CEE8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v66, qword_1009CDA18);
  AnyDimension.bottomMargin(from:in:)();
  v82 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v82 setMaximumNumberOfLines:0];
  Quote.credit.getter();
  if (v67)
  {
    if (qword_10096CED8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v84, qword_1009CD9E8);
    v90 = v60;
    v91 = v61;
    v68 = sub_1000056E0(v89);
    v64(v68, v63, v60);
    isFeatureEnabled(_:)();
    sub_100007000(v89);
    v69 = v88;
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

    if (qword_10096CEF0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v66, qword_1009CDA30);
    AnyDimension.topMargin(from:in:)();
    v65 = v69;
    v70 = v83;
    v71 = &StringUserDefaultsDebugSetting;
    if (qword_10096CEF8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v66, qword_1009CDA48);
    AnyDimension.bottomMargin(from:in:)();
  }

  else
  {
    v70 = v83;
    v71 = &StringUserDefaultsDebugSetting;
  }

  if (Quote.artwork.getter())
  {
    Artwork.size.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    if ((Quote.isFullWidthArtwork.getter() & 1) == 0)
    {
      [v65 v71[53].ivar_lyt];
      [v65 v71[53].ivar_lyt];
    }

    AspectRatio.height(fromWidth:)();
    if (qword_10096CF00 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v66, qword_1009CDA60);
    v72 = v75;
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();

    (*(v77 + 8))(v72, v78);
    (*(v74 + 8))(v70, v76);
  }

  else
  {
  }

  return a2;
}

id sub_100347B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for AspectRatio();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v5[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_quoteView];
  v16 = Quote.text.getter();
  sub_10007003C(v16, v17);
  v18 = Quote.credit.getter();
  sub_1000707B0(v18, v19);
  v15[OBJC_IVAR____TtC8AppStore9QuoteView_isFullWidthArtwork] = Quote.isFullWidthArtwork.getter() & 1;
  sub_100070BA0();
  if (Quote.artwork.getter())
  {
    Artwork.size.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    (*(v12 + 16))(v10, v14, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v20 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_100347F44(v10, &v15[v20]);
    swift_endAccess();
    [*&v15[OBJC_IVAR____TtC8AppStore9QuoteView_artworkView] setHidden:0];
    [v15 setNeedsLayout];
    v21 = [v6 contentView];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    LayoutMarginsAware<>.layoutFrame.getter();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v40.origin.x = v23;
    v40.origin.y = v25;
    v40.size.width = v27;
    v40.size.height = v29;
    Width = CGRectGetWidth(v40);
    AspectRatio.height(fromWidth:)();
    v32 = v31;

    (*(v12 + 8))(v14, v11);
    v33 = &v6[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_preferredArtworkSize];
    *v33 = Width;
    *(v33 + 1) = v32;
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v34 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_100347F44(v10, &v15[v34]);
    swift_endAccess();
    [*&v15[OBJC_IVAR____TtC8AppStore9QuoteView_artworkView] setHidden:1];
    [v15 setNeedsLayout];
    v35 = &v6[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_preferredArtworkSize];
    *v35 = 0;
    *(v35 + 1) = 0;
  }

  [a5 pageMarginInsets];
  v37 = v36;
  [a5 pageMarginInsets];
  return [v15 setLayoutMargins:{0.0, v37, 0.0}];
}

uint64_t sub_100347F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100347FB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100347FFC(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  v14 = a4;
  v11 = a3;
  v13 = type metadata accessor for AspectRatio();
  v4 = *(v13 - 8);
  __chkstk_darwin(v13);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Shelf.items.getter();
  v8 = *(v7 + 16);
  v15 = v7 + 32;
  v12 = (v4 + 8);
  v16 = v7;

  v9 = 0;
  while (1)
  {
    if (v9 == v8)
    {
      v24 = 0;
      v9 = v8;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_8;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *(v16 + 16))
    {
      goto LABEL_18;
    }

    sub_10002C0AC(v15 + 40 * v9++, &v22);
LABEL_8:
    v20[0] = v22;
    v20[1] = v23;
    v21 = v24;
    if (!*(&v23 + 1))
    {
      swift_bridgeObjectRelease_n();
      return;
    }

    sub_100005A38(v20, v19);
    sub_10002C0AC(v19, v17);
    sub_10002849C(&qword_100973D50, &unk_1007B3840);
    type metadata accessor for Quote();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v18 = 0;
    }

    sub_100007000(v19);
    if (v18)
    {
      if (Quote.artwork.getter())
      {
        Artwork.size.getter();
        Artwork.size.getter();
        AspectRatio.init(_:_:)();
        if ((Quote.isFullWidthArtwork.getter() & 1) == 0)
        {
          [v11 pageMarginInsets];
        }

        AspectRatio.height(fromWidth:)();
        Artwork.config(_:mode:prefersLayeredImage:)();
        ArtworkLoader.prefetchArtwork(using:)();

        (*v12)(v6, v13);
      }

      else
      {
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void (*sub_1003482E4(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore15LockupMediaView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100348348;
}

void sub_100348348(id *a1, char a2)
{
  v4 = a1[1];
  v28 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100349D78(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
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
    sub_100349D78(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
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

char *sub_1003485EC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  *&v4[OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_preferredImageSizes] = _swiftEmptyDictionarySingleton;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v17 = [v15 contentView];
  [v17 addSubview:*&v15[OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_lockupView]];

  v18 = [v15 contentView];
  [v18 addSubview:*&v15[OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots]];

  return v15;
}

id sub_1003488A4(uint64_t a1)
{
  v2 = v1;
  v34.receiver = v1;
  v34.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v34, "layoutSubviews");
  v3 = [v1 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *&v2[OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_lockupView];
  sub_1000AB0CC(v9, v11);
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v12 setFrame:?];
  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  CGRectGetMinX(v35);
  [v12 frame];
  CGRectGetMaxY(v36);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for StaticDimension();
  sub_1000056A8(v13, qword_1009D2430);
  v14 = [v2 traitCollection];
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007B0B70;
  *(v15 + 32) = v14;
  v16 = v14;
  v17 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();

  v19 = *&v12[OBJC_IVAR____TtC8AppStore14BaseLockupView_title];
  v18 = *&v12[OBJC_IVAR____TtC8AppStore14BaseLockupView_title + 8];
  v20 = *&v12[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];

  v21 = [v20 text];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = [*&v12[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel] text];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = [v2 traitCollection];
  sub_100349130(v19, v18, v23, v25, v28, v30, v31, v9, v11);

  v32 = *&v2[OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots];
  [v2 bounds];
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v32 setFrame:?];
}

id sub_100348CF4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100348DC8(void *a1)
{
  sub_100349C14(a1);
}

uint64_t (*sub_100348E00(uint64_t **a1))()
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
  v2[4] = sub_1003482E4(v2);
  return sub_1000B4CAC;
}

uint64_t sub_100348E70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100348EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100348F30(uint64_t *a1, uint64_t a2))()
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

uint64_t sub_100348FCC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots);
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

double sub_100349130(NSString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, double a8, double a9)
{
  v81 = a5;
  v82 = a6;
  v76 = a3;
  v77 = a4;
  v70 = a1;
  v11 = type metadata accessor for SmallSearchLockupLayout();
  v87 = *(v11 - 8);
  v88 = v11;
  __chkstk_darwin(v11);
  v86 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LabelPlaceholderCompatibility();
  v79 = *(v13 - 8);
  v80 = v13;
  __chkstk_darwin(v13);
  v71 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OfferButtonMetrics();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  v22 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v84 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v66 - v26;
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v28 = sub_1000056A8(v22, qword_1009CDC00);
  v29 = *(v23 + 16);
  v93 = v22;
  v73 = v29;
  v74 = v23 + 16;
  v29(v27, v28, v22);
  v30 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v85 = v23;
  if (v30)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v31 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v31 = qword_100991028;
  }

  v32 = sub_1000056A8(v15, v31);
  v33 = v16;
  (*(v16 + 16))(v18, v32, v15);
  (*(v16 + 32))(v21, v18, v15);
  v34 = [a7 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();
  v83 = v15;

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  v92 = v27;
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v35 = type metadata accessor for LayoutViewPlaceholder();
  v75 = a7;
  v36 = v35;
  swift_allocObject();
  v91 = LayoutViewPlaceholder.init(representing:)();
  v37 = objc_opt_self();

  v67 = v37;
  v38 = [v37 preferredFontForTextStyle:UIFontTextStyleBody];
  v39 = type metadata accessor for Feature();
  v78 = v21;
  v40 = v39;
  v130[3] = v39;
  *&v90 = sub_100349D78(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v130[4] = v90;
  v41 = sub_1000056E0(v130);
  v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v42 = *(v40 - 8);
  v43 = *(v42 + 104);
  v72 = v33;
  v89 = v42 + 104;
  v43(v41);
  v68 = v43;
  isFeatureEnabled(_:)();
  sub_100007000(v130);
  v44 = v71;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v45 = v80;
  v79 = *(v79 + 8);
  (v79)(v44, v80);
  v70 = UIFontTextStyleFootnote;

  v46 = [v37 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v129[3] = v40;
  v129[4] = v90;
  v47 = sub_1000056E0(v129);
  v48 = v69;
  (v43)(v47, v69, v40);
  isFeatureEnabled(_:)();
  sub_100007000(v129);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v49 = v79;
  (v79)(v44, v45);

  v50 = [v67 preferredFontForTextStyle:v70];
  v128[3] = v40;
  v128[4] = v90;
  v51 = sub_1000056E0(v128);
  v68(v51, v48, v40);
  isFeatureEnabled(_:)();
  sub_100007000(v128);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v49(v44, v45);
  sub_1000AE138();
  swift_allocObject();
  v52 = LayoutViewPlaceholder.init(representing:)();

  sub_1000AE138();
  swift_allocObject();
  v53 = LayoutViewPlaceholder.init(representing:)();
  v73(v84, v92, v93);
  v127 = &protocol witness table for LayoutViewPlaceholder;
  v126 = v36;
  v125 = v91;
  v124 = 0;
  *&v122[40] = 0u;
  v123 = 0u;
  sub_10002C0AC(v130, v122);
  sub_10002C0AC(v129, &v121);
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v117 = 0;
  v115 = 0u;
  v116 = 0u;

  v54 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v114 = &protocol witness table for LayoutViewPlaceholder;
  v113 = v36;
  v112 = v54;
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  v102 = 0;
  v101 = 0u;
  *&v100[40] = 0u;
  sub_10002C0AC(v128, v100);
  v98 = v36;
  v99 = &protocol witness table for LayoutViewPlaceholder;
  v96 = &protocol witness table for LayoutViewPlaceholder;
  v97 = v52;
  v95 = v36;
  v94 = v53;
  v55 = v86;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v56 = swift_allocObject();
  v90 = xmmword_1007B0B70;
  *(v56 + 16) = xmmword_1007B0B70;
  v57 = v75;
  *(v56 + 32) = v75;
  v58 = v57;
  v59 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_100349D78(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v60 = v88;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v87 + 8))(v55, v60);
  sub_100007000(v128);
  sub_100007000(v129);
  sub_100007000(v130);
  (*(v72 + 8))(v78, v83);
  (*(v85 + 8))(v92, v93);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for StaticDimension();
  sub_1000056A8(v61, qword_1009D2430);
  v62 = swift_allocObject();
  *(v62 + 16) = v90;
  *(v62 + 32) = v58;
  v63 = v58;
  v64 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();

  return a8;
}

id sub_100349C14(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100349D78(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    sub_100028004();
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

uint64_t sub_100349D78(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100349DC0()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v76 = v0;
  v77 = v1;
  __chkstk_darwin(v0);
  v3 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v66 - v6;
  v70 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1007B48F0;
  if (qword_10096CF10 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v4, qword_1009CDAB0);
  v73 = type metadata accessor for LocalPreferences();
  v9 = static LocalPreferences.AppStoreKit.getter();
  v10 = *(v5 + 16);
  v10(v7, v8, v4);
  v68 = type metadata accessor for BoolPreferencesDebugSetting(0);
  v11 = swift_allocObject();
  *(v11 + 56) = 0xD00000000000001BLL;
  *(v11 + 64) = 0x800000010080E160;
  *(v11 + 72) = 0;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  v74 = v10;
  v75 = v5 + 16;
  v10((v11 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key), v7, v4);
  v12 = (v11 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v12 = v9;
  v12[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  v16 = *(v77 + 8);
  v77 += 8;
  v17 = v16;
  v16(v3, v76);
  *&v80 = v13;
  *(&v80 + 1) = v15;
  AnyHashable.init<A>(_:)();
  v18 = *(v5 + 8);
  v71 = v5 + 8;
  v72 = v18;
  v18(v7, v4);

  *(v69 + 32) = v11;
  if (qword_10096CF18 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v4, qword_1009CDAC8);
  v20 = static LocalPreferences.AppStoreKit.getter();
  v21 = v74;
  v74(v7, v19, v4);
  v22 = swift_allocObject();
  *(v22 + 56) = 0xD000000000000019;
  *(v22 + 64) = 0x800000010080E180;
  *(v22 + 72) = 0;
  *(v22 + 80) = 0;
  *(v22 + 88) = 0;
  v21(v22 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v7, v4);
  v23 = (v22 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v23 = v20;
  v23[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;
  v27 = v76;
  v67 = v17;
  v17(v3, v76);
  *&v80 = v24;
  *(&v80 + 1) = v26;
  AnyHashable.init<A>(_:)();
  v72(v7, v4);

  v66 = v7;
  v28 = v69;
  *(v69 + 40) = v22;
  sub_10034A6F8();
  v29 = static NSUserDefaults.jsAdLoggingEnabledKey.getter();
  v31 = v30;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  v32 = swift_allocObject();
  *(v32 + 56) = 0xD000000000000014;
  *(v32 + 64) = 0x800000010080E1A0;
  *(v32 + 72) = 0;
  *(v32 + 80) = v29;
  *(v32 + 88) = v31;
  *(v32 + 96) = 0;
  UUID.init()();
  v33 = UUID.uuidString.getter();
  v35 = v34;
  v17(v3, v27);
  v78 = v33;
  v79 = v35;
  AnyHashable.init<A>(_:)();
  v36 = v81;
  *(v32 + 16) = v80;
  *(v32 + 32) = v36;
  *(v32 + 48) = v82;
  *(v28 + 48) = v32;
  v78 = v28;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B15F0;
  if (qword_10096CF20 != -1)
  {
    swift_once();
  }

  v38 = sub_1000056A8(v4, qword_1009CDAE0);
  v39 = static LocalPreferences.AppStoreKit.getter();
  v40 = v66;
  v41 = v74;
  v74(v66, v38, v4);
  v42 = swift_allocObject();
  *(v42 + 56) = 0xD00000000000001DLL;
  *(v42 + 64) = 0x800000010080E1C0;
  *(v42 + 72) = 0;
  *(v42 + 80) = 0;
  *(v42 + 88) = 0;
  v41(v42 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v40, v4);
  v43 = (v42 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v43 = v39;
  v43[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v44 = UUID.uuidString.getter();
  v46 = v45;
  v67(v3, v76);
  *&v80 = v44;
  *(&v80 + 1) = v46;
  AnyHashable.init<A>(_:)();
  v72(v40, v4);

  *(inited + 32) = v42;
  v69 = inited;
  if (qword_10096CF28 != -1)
  {
    swift_once();
  }

  v47 = sub_1000056A8(v4, qword_1009CDAF8);
  v48 = static LocalPreferences.AppStoreKit.getter();
  v49 = v74;
  v74(v40, v47, v4);
  v50 = swift_allocObject();
  *(v50 + 56) = 0xD000000000000029;
  *(v50 + 64) = 0x800000010080E1E0;
  *(v50 + 72) = 0;
  *(v50 + 80) = 0;
  *(v50 + 88) = 0;
  v49(v50 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v40, v4);
  v51 = (v50 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v51 = v48;
  v51[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v52 = UUID.uuidString.getter();
  v54 = v53;
  v55 = v76;
  v56 = v67;
  v67(v3, v76);
  *&v80 = v52;
  *(&v80 + 1) = v54;
  AnyHashable.init<A>(_:)();
  v72(v40, v4);

  v57 = v69;
  *(v69 + 40) = v50;
  sub_100394BD0(v57, v58);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1007B0B70;
  v60 = v78;
  type metadata accessor for DebugSection();
  v61 = swift_allocObject();
  UUID.init()();
  v62 = UUID.uuidString.getter();
  v64 = v63;
  v56(v3, v55);
  v61[2] = v62;
  v61[3] = v64;
  v61[4] = 0;
  v61[5] = 0xE000000000000000;
  v61[6] = v60;
  *(v59 + 32) = v61;
  return v59;
}

id sub_10034A6A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdsSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10034A6F8()
{
  result = qword_100980E88;
  if (!qword_100980E88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100980E88);
  }

  return result;
}

double sub_10034A744(uint64_t a1, double a2, double a3)
{
  v5 = type metadata accessor for DynamicTextAppearance();
  v37 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v34 - v9;
  __chkstk_darwin(v11);
  v13 = v34 - v12;
  __chkstk_darwin(v14);
  v15 = type metadata accessor for LabelPlaceholder();
  v38 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0 || (UITraitCollection.isSizeClassCompact.getter())
  {
    v18 = 1;
  }

  else
  {
    v35 = v3;
    v36 = v15;
    v19._object = 0x800000010080E210;
    v19._countAndFlagsBits = 0xD000000000000016;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v21 = localizedString(_:comment:)(v19, v20);
    v34[1] = v21._object;
    v34[2] = v21._countAndFlagsBits;
    DynamicTextAppearance.init()();
    if (qword_10096DF68 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for FontUseCase();
    sub_1000056A8(v22, qword_1009D0DB8);
    DynamicTextAppearance.withFontUseCase(_:)();
    v23 = *(v37 + 8);
    v23(v7, v5);
    DynamicTextAppearance.withNumberOfLines(_:)();
    v23(v10, v5);
    DynamicTextAppearance.withLineBreakMode(_:)();
    v23(v13, v5);
    LabelPlaceholder.Options.init(rawValue:)();
    LabelPlaceholder.init(_:with:where:)();
    LabelPlaceholder.measure(toFit:with:)();
    v25 = v24;
    v26 = v35;
    sub_10002A400(v35 + 16, v35[19]);
    dispatch thunk of Placeable.measure(toFit:with:)();
    v28 = v27;
    sub_10002A400(v26, v26[3]);
    AnyDimension.value(with:)();
    v30 = v29;
    (*(v38 + 8))(v17, v36);
    v18 = v28 + v25 + v30 > a2;
  }

  sub_10034AB28(v18, v39);
  sub_10002A400(v39, v39[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v32 = v31;
  sub_100007000(v39);
  return v32;
}

uint64_t sub_10034AB28@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v38 = a2;
  v6 = type metadata accessor for HorizontalStack();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for VerticalStack();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  if (a1)
  {
    VerticalStack.init(with:)();
    sub_10034B4F4(v4, &v39);
    v20 = swift_allocObject();
    v21 = v48;
    *(v20 + 144) = v47;
    *(v20 + 160) = v21;
    *(v20 + 176) = v49;
    v22 = v44;
    *(v20 + 80) = v43;
    *(v20 + 96) = v22;
    v23 = v46;
    *(v20 + 112) = v45;
    *(v20 + 128) = v23;
    v24 = v40;
    *(v20 + 16) = v39;
    *(v20 + 32) = v24;
    v25 = v42;
    *(v20 + 48) = v41;
    *(v20 + 64) = v25;
    VerticalStack.adding(_:with:)();

    v26 = *(v14 + 8);
    v26(v16, v13);
    v27 = v38;
    v38[3] = v13;
    v27[4] = &protocol witness table for VerticalStack;
    sub_1000056E0(v27);
    VerticalStack.adding(_:with:)();
    return (v26)(v19, v13);
  }

  else
  {
    HorizontalStack.init(with:)();
    sub_10034B4F4(v4, &v39);
    v29 = swift_allocObject();
    v30 = v48;
    *(v29 + 144) = v47;
    *(v29 + 160) = v30;
    *(v29 + 176) = v49;
    v31 = v44;
    *(v29 + 80) = v43;
    *(v29 + 96) = v31;
    v32 = v46;
    *(v29 + 112) = v45;
    *(v29 + 128) = v32;
    v33 = v40;
    *(v29 + 16) = v39;
    *(v29 + 32) = v33;
    v34 = v42;
    *(v29 + 48) = v41;
    *(v29 + 64) = v34;
    HorizontalStack.adding(_:with:)();

    v35 = *(v7 + 8);
    v35(v9, v6);
    v36 = v38;
    v38[3] = v6;
    v36[4] = &protocol witness table for HorizontalStack;
    sub_1000056E0(v36);
    HorizontalStack.adding(_:with:)();
    return (v35)(v12, v6);
  }
}

uint64_t sub_10034AEB0(void *a1, double a2, double a3, double a4, double a5)
{
  v54 = type metadata accessor for DisjointStack();
  v10 = *(v54 - 8);
  __chkstk_darwin(v54);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v47 - v14;
  v16 = type metadata accessor for DynamicTextAppearance();
  v50 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v47 - v20;
  __chkstk_darwin(v22);
  v24 = v47 - v23;
  __chkstk_darwin(v25);
  v26 = type metadata accessor for LabelPlaceholder();
  v51 = *(v26 - 8);
  v52 = v26;
  __chkstk_darwin(v26);
  v28 = v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v55 = a1;
  if (v29 & 1) != 0 || (UITraitCollection.isSizeClassCompact.getter())
  {
    v30 = 0;
    v31 = 1;
  }

  else
  {
    v48 = v15;
    v49 = v10;
    v32._object = 0x800000010080E210;
    v32._countAndFlagsBits = 0xD000000000000016;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v34 = localizedString(_:comment:)(v32, v33);
    v47[1] = v34._countAndFlagsBits;
    v47[0] = v34._object;
    DynamicTextAppearance.init()();
    if (qword_10096DF68 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for FontUseCase();
    sub_1000056A8(v35, qword_1009D0DB8);
    DynamicTextAppearance.withFontUseCase(_:)();
    v36 = *(v50 + 8);
    v36(v18, v16);
    v31 = 1;
    DynamicTextAppearance.withNumberOfLines(_:)();
    v36(v21, v16);
    DynamicTextAppearance.withLineBreakMode(_:)();
    v36(v24, v16);
    LabelPlaceholder.Options.init(rawValue:)();
    LabelPlaceholder.init(_:with:where:)();
    LabelPlaceholder.measure(toFit:with:)();
    v38 = v37;
    v39 = v53;
    sub_10002A400((v53 + 128), *(v53 + 152));
    dispatch thunk of Placeable.measure(toFit:with:)();
    v41 = v40;
    sub_10002A400(v39, *(v39 + 24));
    AnyDimension.value(with:)();
    v43 = v42;
    (*(v51 + 8))(v28, v52);
    if (v41 + v38 + v43 <= a4)
    {
      v31 = 0;
      v30 = *(v39 + 40) ^ 1;
    }

    else
    {
      v30 = 0;
    }

    v10 = v49;
    v15 = v48;
  }

  sub_10034AB28(v31, v56);
  DisjointStack.init(with:)();
  *(swift_allocObject() + 16) = v30 & 1;
  DisjointStack.inserting(_:at:with:)();

  v44 = *(v10 + 8);
  v45 = v54;
  v44(v12, v54);
  sub_10053F68C(v55, a2, a3, a4, a5);
  v44(v15, v45);
  return sub_100007000(v56);
}

void sub_10034B3F0(uint64_t a1, char a2)
{
  v3 = type metadata accessor for DisjointStack.EdgePosition();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v6[3] = type metadata accessor for ZeroDimension();
    v6[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v6);
    static ZeroDimension.zero.getter();
    (*(v4 + 104))(v6, enum case for DisjointStack.EdgePosition.anchored(_:), v3);
    DisjointStack.Properties.leadingEdge.setter();
  }
}

uint64_t sub_10034B5BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_10034B604(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10034B67C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10034B6C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10034B73C()
{
  result = qword_100980E90;
  if (!qword_100980E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980E90);
  }

  return result;
}

double sub_10034B790()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  if (!*(v0 + 24))
  {
    v16 = v0 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return result;
    }

    v18 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 40))(1, 0, ObjectType, v18);
    goto LABEL_8;
  }

  AppEventNotificationConfig.displayTime.getter();
  Date.init()();
  sub_1000077E4(&unk_100980FA0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v8 = dispatch thunk of static Comparable.< infix(_:_:)();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  v10 = UserNotificationsManager.hasScheduledNotification(with:)();
  v11 = v0 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    v13 = swift_getObjectType();
    (*(v12 + 40))((v8 & 1) == 0, 0, v13, v12);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v11 + 8);
    v15 = swift_getObjectType();
    (*(v14 + 32))(v10 & 1, 0, v15, v14);

LABEL_8:
    swift_unknownObjectRelease();
    return result;
  }

  return result;
}

double NotifyMeButtonPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_10034B790();
  swift_unknownObjectRelease();
  return result;
}

void (*NotifyMeButtonPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10034BB98;
}

void sub_10034BB98(uint64_t a1, char a2)
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
    sub_10034B790();
  }

  free(v3);
}

uint64_t NotifyMeButtonPresenter.__allocating_init(userNotificationsManager:notificationConfig:view:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[1] = a3;
  v9 = type metadata accessor for MetricsPipeline();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v14 = v13 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  *(v13 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v13 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v14 + 8) = a4;
  swift_unknownObjectWeakAssign();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  (*(v10 + 32))(v13 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_metricsPipeline, v12, v9);
  *(v13 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_objectGraph) = a5;
  type metadata accessor for ASKBagContract();

  inject<A, B>(_:from:)();
  *(v13 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_bag) = v21[2];
  sub_10034B790();
  sub_10034C234();
  v15 = objc_opt_self();
  v16 = [v15 defaultCenter];
  type metadata accessor for UserNotificationsManager();

  v17 = static UserNotificationsManager.userNotificationsDidChangeNotification.getter();
  [v16 addObserver:v13 selector:"userNotificationsDidChangeNotification:" name:v17 object:0];

  v18 = [v15 defaultCenter];
  [v18 addObserver:v13 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v19 = [v15 defaultCenter];
  [v19 addObserver:v13 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];

  swift_unknownObjectRelease();

  return v13;
}

uint64_t NotifyMeButtonPresenter.init(userNotificationsManager:notificationConfig:view:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22[1] = a3;
  v11 = type metadata accessor for MetricsPipeline();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v6 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  *(v6 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v6 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v15 + 8) = a4;
  swift_unknownObjectWeakAssign();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  (*(v12 + 32))(v6 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_metricsPipeline, v14, v11);
  *(v6 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_objectGraph) = a5;
  type metadata accessor for ASKBagContract();

  inject<A, B>(_:from:)();
  *(v6 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_bag) = v22[2];
  sub_10034B790();
  sub_10034C234();
  v16 = objc_opt_self();
  v17 = [v16 defaultCenter];
  type metadata accessor for UserNotificationsManager();

  v18 = static UserNotificationsManager.userNotificationsDidChangeNotification.getter();
  [v17 addObserver:v6 selector:"userNotificationsDidChangeNotification:" name:v18 object:0];

  v19 = [v16 defaultCenter];
  [v19 addObserver:v6 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v20 = [v16 defaultCenter];
  [v20 addObserver:v6 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];

  swift_unknownObjectRelease();

  return v6;
}

void sub_10034C234()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  if (*(v0 + 24))
  {
    AppEventNotificationConfig.displayTime.getter();
    (*(v3 + 32))(v11, v8, v2);
    Date.init()();
    v12 = static Date.> infix(_:_:)();
    v13 = *(v3 + 8);
    v13(v5, v2);
    if ((v12 & 1) != 0 && (v14 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer, !*(v1 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer)))
    {
      isa = Date._bridgeToObjectiveC()().super.isa;

      v16 = [objc_allocWithZone(NSTimer) initWithFireDate:isa interval:v1 target:"displayTimeReached" selector:0 userInfo:0 repeats:0.0];

      v17 = [objc_opt_self() mainRunLoop];
      [v17 addTimer:v16 forMode:NSRunLoopCommonModes];

      v13(v11, v2);
      v18 = *(v1 + v14);
      *(v1 + v14) = v16;
    }

    else
    {
      v13(v11, v2);
    }
  }
}

uint64_t NotifyMeButtonPresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_metricsPipeline;
  v3 = type metadata accessor for MetricsPipeline();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_10001F64C(v0 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view);

  return v0;
}

uint64_t NotifyMeButtonPresenter.__deallocating_deinit()
{
  NotifyMeButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall NotifyMeButtonPresenter.didTapButton(sender:)(UIButton sender)
{
  v2 = *(v1 + 24);
  if (v2 && (*(v1 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) & 1) == 0)
  {

    if (ASKBagContract.enableAppEventsServerNotifications.getter())
    {
      if (UserNotificationsManager.hasScheduledNotification(with:)())
      {
        sub_10034DBB8(v2);
      }

      else
      {
        sub_10034E008(v2);
      }
    }

    else
    {
      UserNotificationsManager.getIsAuthorized()();
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = swift_allocObject();
      v6[2].super.super.super.super.isa = v4;
      v6[3].super.super.super.super.isa = v5;
      v6[4].super.super.super.super.isa = v2;
      v6[5].super.super.super.super.isa = sender.super.super.super.super.isa;
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v2;
      v9 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
      swift_retain_n();
      v10 = sender.super.super.super.super.isa;

      v11[3] = v9;
      v11[4] = &protocol witness table for OS_dispatch_queue;
      v11[0] = static OS_dispatch_queue.main.getter();
      Promise.then(perform:orCatchError:on:)();

      sub_100007000(v11);
    }
  }
}

void sub_10034C804(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-v7];
  v9 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_12;
    }

    v11 = Strong;
    if (v9)
    {

      v12 = UserNotificationsManager.hasScheduledNotification(with:)();

      if (v12)
      {
        sub_10034DBB8(a4);
      }

      else
      {
        sub_10034E008(a4);
      }

      goto LABEL_11;
    }

    v13 = AppEventNotificationConfig.notAuthorizedAction.getter();
    if (!v13)
    {
LABEL_11:

LABEL_12:

      return;
    }

    v14 = v13;
    v15 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v8, 1, v15) == 1)
    {

      sub_10002B894(v8, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9AF4(v14, 1, v11, v8);

      (*(v16 + 8))(v8, v15);
    }
  }
}

void sub_10034CA58(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = AppEventNotificationConfig.failureAction.getter();
    if (v7)
    {
      v8 = v7;
      v9 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v4, 1, v9) == 1)
      {

        sub_10002B894(v4, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        sub_1005F9AF4(v8, 1, v6, v4);

        (*(v10 + 8))(v4, v9);
      }
    }

    else
    {
    }
  }
}

void sub_10034CC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v5 - 8);
  v7 = &v25[-v6];
  v8 = type metadata accessor for UserNotificationsManager.SchedulingResult();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    (*(v9 + 16))(v11, a1, v8);
    v14 = (*(v9 + 88))(v11, v8);
    if (v14 == enum case for UserNotificationsManager.SchedulingResult.scheduleChanged(_:) || v14 == enum case for UserNotificationsManager.SchedulingResult.scheduleAlreadyExists(_:))
    {
      v16 = AppEventNotificationConfig.scheduledAction.getter();
      if (v16)
      {
        v17 = v16;
        swift_beginAccess();
        v18 = swift_weakLoadStrong();
        if (v18)
        {
          v19 = v18;
          v20 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
          BaseObjectGraph.injectIfAvailable<A>(_:)();
          v21 = *(v20 - 8);
          if ((*(v21 + 48))(v7, 1, v20) == 1)
          {

            sub_10002B894(v7, &unk_100972A00, &unk_1007B3130);
          }

          else
          {
            sub_1005F9AF4(v17, 1, v19, v7);

            (*(v21 + 8))(v7, v20);
          }
        }

        else
        {
        }
      }
    }

    else
    {
      if (v14 != enum case for UserNotificationsManager.SchedulingResult.signInDidNotComplete(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      v22 = v13 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = *(v22 + 8);
        ObjectType = swift_getObjectType();
        (*(v23 + 32))(0, 0, ObjectType, v23);
        swift_unknownObjectRelease();
      }
    }

    *(v13 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }
}

void sub_10034CF64(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = type metadata accessor for UserNotificationsManager.SchedulingResult();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v5 + 16))(v7, a1, v4);
    v10 = (*(v5 + 88))(v7, v4);
    if (v10 != enum case for UserNotificationsManager.SchedulingResult.scheduleChanged(_:) && v10 != enum case for UserNotificationsManager.SchedulingResult.scheduleAlreadyExists(_:))
    {
      if (v10 != enum case for UserNotificationsManager.SchedulingResult.signInDidNotComplete(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      v12 = v9 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 8);
        ObjectType = swift_getObjectType();
        (*(v13 + 32))(1, 0, ObjectType, v13);
        swift_unknownObjectRelease();
      }
    }

    *(v9 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }
}

double sub_10034D134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = AppEventNotificationConfig.failureAction.getter();
    if (v12)
    {
      v13 = v12;
      swift_beginAccess();
      v14 = swift_weakLoadStrong();
      if (v14)
      {
        v15 = v14;
        v16 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
        BaseObjectGraph.injectIfAvailable<A>(_:)();
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(v8, 1, v16) == 1)
        {

          sub_10002B894(v8, &unk_100972A00, &unk_1007B3130);
        }

        else
        {
          sub_1005F9AF4(v13, 1, v15, v8);

          (*(v17 + 8))(v8, v16);
        }
      }

      else
      {
      }
    }

    v18 = v11 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      (*(v19 + 32))(a5 & 1, 0, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    *(v11 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }

  return result;
}

double sub_10034D38C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  *&result = __chkstk_darwin(v5).n128_u64[0];
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24))
  {
    v30 = v7;

    v11 = Notification.userInfo.getter();
    if (v11)
    {
      v12 = v11;
      type metadata accessor for UserNotificationsManager();
      v31 = static UserNotificationsManager.appEventIdKey.getter();
      v32 = v13;
      AnyHashable.init<A>(_:)();
      if (*(v12 + 16) && (v14 = sub_1003D78D8(aBlock), (v15 & 1) != 0))
      {
        sub_1000073E8(*(v12 + 56) + 32 * v14, v33);
        sub_10003D614(aBlock);

        if (swift_dynamicCast())
        {
          v16 = v32;
          v29 = v31;
          if (v29 == AppEventNotificationConfig.appEventId.getter() && v16 == v17)
          {
          }

          else
          {
            LODWORD(v29) = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v29 & 1) == 0)
            {
LABEL_21:

              return result;
            }
          }
        }
      }

      else
      {

        sub_10003D614(aBlock);
      }
    }

    v18 = Notification.userInfo.getter();
    if (v18)
    {
      v19 = v18;
      type metadata accessor for UserNotificationsManager();
      v31 = static UserNotificationsManager.sourceViewKey.getter();
      v32 = v20;
      AnyHashable.init<A>(_:)();
      if (*(v19 + 16) && (v21 = sub_1003D78D8(aBlock), (v22 & 1) != 0))
      {
        sub_1000073E8(*(v19 + 56) + 32 * v21, v33);
        sub_10003D614(aBlock);

        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        if (swift_dynamicCast())
        {
          v23 = v31;
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v25 = Strong;
            swift_unknownObjectRelease();

            if (v23 == v25)
            {
              goto LABEL_21;
            }
          }

          else
          {
          }
        }
      }

      else
      {

        sub_10003D614(aBlock);
      }
    }

    sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
    v26 = static OS_dispatch_queue.main.getter();
    v27 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_10034E5C0;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008BEF38;
    v28 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000077E4(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v28);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v10, v30);
  }

  return result;
}

double sub_10034D8A8(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10034B790();
  }

  return result;
}

Swift::Void __swiftcall NotifyMeButtonPresenter.tearDown()()
{
  v1 = OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

double sub_10034DBB8(uint64_t a1)
{
  v24 = type metadata accessor for MetricsFieldsContext();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = type metadata accessor for MetricsData();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v23 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 1;
  v12 = v1 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22[1] = v1;
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 32))(0, 1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  AppEventNotificationConfig.cancelScheduleClickEvent.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002B894(v8, &unk_100973A50, &unk_1007B4FD0);
  }

  else
  {
    v15 = v23;
    (*(v10 + 32))(v23, v8, v9);
    static MetricsFieldsContext.emptyContext.getter();
    MetricsPipeline.process(_:using:)();

    (*(v3 + 8))(v5, v24);
    (*(v10 + 8))(v15, v9);
  }

  swift_unknownObjectWeakLoadStrong();
  UserNotificationsManager.cancelScheduledNotification(with:from:)();
  swift_unknownObjectRelease();
  swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a1;
  v18[4] = v17;
  v19 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);

  v20 = static OS_dispatch_queue.main.getter();
  v25[3] = v19;
  v25[4] = &protocol witness table for OS_dispatch_queue;
  v25[0] = v20;
  Promise.then(perform:orCatchError:on:)();

  sub_100007000(v25);

  return result;
}

double sub_10034E008(uint64_t a1)
{
  v28 = type metadata accessor for MetricsFieldsContext();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for MetricsData();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v27 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 1;
  v12 = v1 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = v10;
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    v10 = v26;
    (*(v13 + 32))(1, 1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  AppEventNotificationConfig.scheduleClickEvent.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002B894(v8, &unk_100973A50, &unk_1007B4FD0);
  }

  else
  {
    v15 = v27;
    (*(v10 + 32))(v27, v8, v9);
    static MetricsFieldsContext.emptyContext.getter();
    MetricsPipeline.process(_:using:)();

    (*(v3 + 8))(v5, v28);
    (*(v10 + 8))(v15, v9);
  }

  swift_unknownObjectWeakLoadStrong();
  UserNotificationsManager.scheduleNotification(with:from:)();
  swift_unknownObjectRelease();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a1;
  v18[4] = v17;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = a1;
  v21[4] = v20;
  v22 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  swift_retain_n();

  v23 = static OS_dispatch_queue.main.getter();
  v29[3] = v22;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v23;
  Promise.then(perform:orCatchError:on:)();

  sub_100007000(v29);

  return result;
}

uint64_t type metadata accessor for NotifyMeButtonPresenter(uint64_t a1)
{
  result = qword_100980EE0;
  if (!qword_100980EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10034E4F8(uint64_t a1)
{
  result = type metadata accessor for MetricsPipeline();
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

void sub_10034E624()
{
  v1 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_haveFlashedScrollIndicators;
  if ((*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView);
    [v2 contentSize];
    v4 = v3;
    [v2 bounds];
    if (CGRectGetHeight(v7) < v4 || (v2 = *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardScrollView), [v2 contentSize], v6 = v5, objc_msgSend(v2, "bounds"), CGRectGetHeight(v8) < v6))
    {
      [v2 flashScrollIndicators];
      *(v0 + v1) = 1;
    }
  }
}

uint64_t sub_10034E6F0()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009CFB70);
  sub_1000056A8(v0, qword_1009CFB70);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10034E854(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmallLockupLayout.Metrics.artworkSize.setter();
  v36 = a1;
  SmallLockupLayout.Metrics.artworkMargin.setter();
  if (qword_10096DDB0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D08A8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = type metadata accessor for StaticDimension();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v14 = v3[1];
  v14(v5, v2);
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  if (qword_10096DDA8 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v6, qword_1009D0890);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v38);
  v34(v15, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v14(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  v32 = v14;
  if (qword_10096DD98 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v6, qword_1009D0860);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v38);
  v34(v18, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v32(v5, v2);
  SmallLockupLayout.Metrics.headingSpace.setter();
  v19 = v11;
  if (qword_10096DDA0 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v6, qword_1009D0878);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v24 = v32;
  v32(v5, v2);
  SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
  SmallLockupLayout.Metrics.numberOfLines.setter();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_1000056E0(v38);
  v23(v25, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v24(v5, v2);
  return SmallLockupLayout.Metrics.subtitleSpace.setter();
}

uint64_t sub_10034EE3C()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009CFB88);
  sub_1000056A8(v0, qword_1009CFB88);
  if (qword_10096D918 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CFB70);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10034EFD0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AspectRatio();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_100005644(v7, qword_1009CFBA0);
  v74 = v7;
  v75 = sub_1000056A8(v7, qword_1009CFBA0);
  v76 = v6;
  AspectRatio.init(_:_:)();
  v167 = &type metadata for Double;
  v168 = &protocol witness table for Double;
  v165 = &protocol witness table for Double;
  *&v166 = 0x4030000000000000;
  v164 = &type metadata for Double;
  *&v163 = 0x4030000000000000;
  if (qword_10096D958 != -1)
  {
    swift_once();
  }

  v8 = qword_100980FD0;
  *v3 = qword_100980FD0;
  v80 = enum case for FontSource.textStyle(_:);
  v82 = v1[13];
  v82(v3);
  v81 = type metadata accessor for StaticDimension();
  v161 = v81;
  v162 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v160);
  v158 = v0;
  v159 = &protocol witness table for FontSource;
  v9 = sub_1000056E0(&v157);
  v10 = v1[2];
  v10(v9, v3, v0);
  v11 = v8;
  StaticDimension.init(_:scaledLike:)();
  v12 = v1[1];
  v12(v3, v0);
  v158 = &type metadata for Double;
  v159 = &protocol witness table for Double;
  *&v157 = 0x4030000000000000;
  v156 = &protocol witness table for Double;
  v155 = &type metadata for Double;
  *&v154 = 0x4030000000000000;
  v13 = type metadata accessor for ZeroDimension();
  v152 = v13;
  v153 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v151);
  static ZeroDimension.zero.getter();
  v73 = v13;
  v149 = v13;
  v150 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v148);
  static ZeroDimension.zero.getter();
  v14 = qword_100980FD0;
  *v3 = qword_100980FD0;
  v86 = v1 + 13;
  (v82)(v3, v80, v0);
  v146 = v81;
  v147 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v145);
  v143 = v0;
  v144 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v142);
  v83 = v10;
  v84 = v1 + 2;
  v10(v15, v3, v0);
  v16 = v14;
  StaticDimension.init(_:scaledLike:)();
  v85 = v1 + 1;
  v79 = v12;
  v12(v3, v0);
  if (qword_10096D960 != -1)
  {
    swift_once();
  }

  v17 = qword_100980FD8;
  *v3 = qword_100980FD8;
  v18 = v80;
  v19 = v82;
  (v82)(v3, v80, v0);
  v143 = v81;
  v144 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v142);
  v140 = v0;
  v141 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(&v139);
  v21 = v83;
  v83(v20, v3, v0);
  v22 = v17;
  StaticDimension.init(_:scaledLike:)();
  v23 = v79;
  v79(v3, v0);
  v141 = &protocol witness table for Double;
  v140 = &type metadata for Double;
  *&v139 = 0x4034000000000000;
  v24 = qword_100980FD0;
  *v3 = qword_100980FD0;
  v19(v3, v18, v0);
  v25 = v81;
  v137 = v81;
  v138 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v136);
  v134 = v0;
  v135 = &protocol witness table for FontSource;
  v26 = sub_1000056E0(&v133);
  v21(v26, v3, v0);
  v27 = v24;
  StaticDimension.init(_:scaledLike:)();
  v23(v3, v0);
  v28 = v73;
  v134 = v73;
  v135 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v133);
  static ZeroDimension.zero.getter();
  v131 = v28;
  v132 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v130);
  static ZeroDimension.zero.getter();
  v128 = v28;
  v129 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v127);
  static ZeroDimension.zero.getter();
  if (qword_10096D968 != -1)
  {
    swift_once();
  }

  v29 = qword_100980FE0;
  *v3 = qword_100980FE0;
  v30 = v80;
  v31 = v82;
  (v82)(v3, v80, v0);
  v125 = v25;
  v126 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v124);
  v122 = v0;
  v123 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(&v121);
  v83(v32, v3, v0);
  v33 = v29;
  StaticDimension.init(_:scaledLike:)();
  v79(v3, v0);
  v34 = qword_100980FE0;
  *v3 = qword_100980FE0;
  v31(v3, v30, v0);
  v35 = v81;
  v122 = v81;
  v123 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v121);
  v119 = v0;
  v120 = &protocol witness table for FontSource;
  v36 = sub_1000056E0(&v118);
  v83(v36, v3, v0);
  v37 = v34;
  StaticDimension.init(_:scaledLike:)();
  v38 = v79;
  v79(v3, v0);
  v39 = qword_100980FE0;
  *v3 = qword_100980FE0;
  v31(v3, v30, v0);
  v119 = v35;
  v120 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v118);
  v116 = v0;
  v117 = &protocol witness table for FontSource;
  v40 = sub_1000056E0(&v115);
  v83(v40, v3, v0);
  v41 = v39;
  StaticDimension.init(_:scaledLike:)();
  v38(v3, v0);
  if (qword_10096D970 != -1)
  {
    swift_once();
  }

  v42 = qword_100980FE8;
  *v3 = qword_100980FE8;
  (v82)(v3, v30, v0);
  v116 = v35;
  v117 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v115);
  v113 = v0;
  v114 = &protocol witness table for FontSource;
  v43 = sub_1000056E0(&v112);
  v83(v43, v3, v0);
  v44 = v42;
  StaticDimension.init(_:scaledLike:)();
  v45 = v79;
  v79(v3, v0);
  v46 = qword_100980FE8;
  *v3 = qword_100980FE8;
  (v82)(v3, v30, v0);
  v113 = v35;
  v114 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v112);
  v110 = v0;
  v111 = &protocol witness table for FontSource;
  v47 = sub_1000056E0(&v109);
  v48 = v83;
  v83(v47, v3, v0);
  v49 = v46;
  StaticDimension.init(_:scaledLike:)();
  v45(v3, v0);
  v111 = &protocol witness table for Double;
  v110 = &type metadata for Double;
  *&v109 = 0x4032000000000000;
  v50 = v80;
  v51 = qword_100980FE8;
  *v3 = qword_100980FE8;
  (v82)(v3, v50, v0);
  v107 = v81;
  v108 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v106);
  v104 = v0;
  v105 = &protocol witness table for FontSource;
  v52 = sub_1000056E0(&v103);
  v48(v52, v3, v0);
  v53 = v48;
  v54 = v51;
  StaticDimension.init(_:scaledLike:)();
  v55 = v79;
  v79(v3, v0);
  v105 = &protocol witness table for Double;
  v104 = &type metadata for Double;
  v102 = &protocol witness table for Double;
  *&v103 = 0x4032000000000000;
  v101 = &type metadata for Double;
  *&v100 = 0x4024000000000000;
  v56 = qword_100980FE8;
  *v3 = qword_100980FE8;
  v57 = v82;
  (v82)(v3, v50, v0);
  v98 = v81;
  v99 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v97);
  v95 = v0;
  v96 = &protocol witness table for FontSource;
  v58 = sub_1000056E0(&v94);
  v53(v58, v3, v0);
  v59 = v56;
  StaticDimension.init(_:scaledLike:)();
  v55(v3, v0);
  v60 = qword_100980FE8;
  *v3 = qword_100980FE8;
  v57(v3, v50, v0);
  v61 = v81;
  v95 = v81;
  v96 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v94);
  v92 = v0;
  v93 = &protocol witness table for FontSource;
  v62 = sub_1000056E0(&v91);
  v53(v62, v3, v0);
  v63 = v60;
  StaticDimension.init(_:scaledLike:)();
  v55(v3, v0);
  v93 = &protocol witness table for Double;
  v92 = &type metadata for Double;
  *&v91 = 0x4024000000000000;
  if (qword_10096D948 != -1)
  {
    swift_once();
  }

  v64 = qword_100980FC0;
  *v3 = qword_100980FC0;
  v57(v3, v80, v0);
  v89 = v61;
  v90 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v88);
  v87[3] = v0;
  v87[4] = &protocol witness table for FontSource;
  v65 = sub_1000056E0(v87);
  v83(v65, v3, v0);
  v66 = v64;
  StaticDimension.init(_:scaledLike:)();
  v55(v3, v0);
  v67 = v75;
  (*(v77 + 32))(v75, v76, v78);
  v68 = v74;
  sub_100005A38(&v166, v67 + v74[5]);
  sub_100005A38(&v163, v67 + v68[6]);
  sub_100005A38(&v160, v67 + v68[7]);
  sub_100005A38(&v157, v67 + v68[8]);
  sub_100005A38(&v154, v67 + v68[9]);
  v69 = (v67 + v68[10]);
  *v69 = 0;
  v69[1] = 0;
  sub_100005A38(&v151, v67 + v68[11]);
  sub_100005A38(&v148, v67 + v68[12]);
  sub_100005A38(&v145, v67 + v68[13]);
  sub_100005A38(&v142, v67 + v68[14]);
  sub_100005A38(&v139, v67 + v68[15]);
  sub_100005A38(&v136, v67 + v68[16]);
  v70 = (v67 + v68[17]);
  *v70 = 0;
  v70[1] = 0;
  sub_100005A38(&v133, v67 + v68[18]);
  sub_100005A38(&v130, v67 + v68[19]);
  sub_100005A38(&v127, v67 + v68[20]);
  sub_100005A38(&v124, v67 + v68[21]);
  sub_100005A38(&v121, v67 + v68[22]);
  sub_100005A38(&v118, v67 + v68[23]);
  sub_100005A38(&v115, v67 + v68[24]);
  sub_100005A38(&v112, v67 + v68[25]);
  sub_100005A38(&v109, v67 + v68[26]);
  sub_100005A38(&v106, v67 + v68[27]);
  sub_100005A38(&v103, v67 + v68[28]);
  sub_100005A38(&v100, v67 + v68[29]);
  sub_100005A38(&v97, v67 + v68[30]);
  sub_100005A38(&v94, v67 + v68[31]);
  sub_100005A38(&v91, v67 + v68[32]);
  return sub_100005A38(&v88, v67 + v68[33]);
}

uint64_t sub_10034FE24()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AspectRatio();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_100005644(v7, qword_1009CFBB8);
  v52 = v7;
  v53 = sub_1000056A8(v7, qword_1009CFBB8);
  v54 = v6;
  AspectRatio.init(_:_:)();
  v143 = &type metadata for Double;
  v144 = &protocol witness table for Double;
  v141 = &protocol witness table for Double;
  *&v142 = 0x4034000000000000;
  v140 = &type metadata for Double;
  *&v139 = 0x4034000000000000;
  v8 = type metadata accessor for ZeroDimension();
  v137 = v8;
  v138 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v136);
  static ZeroDimension.zero.getter();
  v134 = &type metadata for Double;
  v135 = &protocol witness table for Double;
  *&v133 = 0x4034000000000000;
  v132 = &protocol witness table for Double;
  v131 = &type metadata for Double;
  *&v130 = 0x4034000000000000;
  v58 = v8;
  v128 = v8;
  v129 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v127);
  static ZeroDimension.zero.getter();
  if (qword_10096D938 != -1)
  {
    swift_once();
  }

  v9 = qword_100980FB0;
  *v3 = qword_100980FB0;
  v63 = enum case for FontSource.textStyle(_:);
  v10 = v1[13];
  v10(v3);
  v62 = type metadata accessor for StaticDimension();
  v125 = v62;
  v126 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v124);
  v122 = v0;
  v123 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v121);
  v12 = v1[2];
  v12(v11, v3, v0);
  v13 = v9;
  StaticDimension.init(_:scaledLike:)();
  v14 = v1[1];
  v14(v3, v0);
  v15 = qword_100980FB0;
  *v3 = qword_100980FB0;
  v61 = v10;
  v59 = v1 + 13;
  (v10)(v3, v63, v0);
  v122 = v62;
  v123 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v121);
  v119 = v0;
  v120 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v118);
  v60 = v1 + 2;
  v12(v16, v3, v0);
  v17 = v12;
  v18 = v15;
  StaticDimension.init(_:scaledLike:)();
  v14(v3, v0);
  v120 = &protocol witness table for Double;
  v119 = &type metadata for Double;
  *&v118 = 0x4000000000000000;
  v117 = &protocol witness table for Double;
  v116 = &type metadata for Double;
  *&v115 = 0x4034000000000000;
  v19 = v58;
  v113 = v58;
  v114 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v112);
  static ZeroDimension.zero.getter();
  if (qword_10096D940 != -1)
  {
    swift_once();
  }

  v20 = qword_100980FB8;
  *v3 = qword_100980FB8;
  v61(v3, v63, v0);
  v110 = v62;
  v111 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v109);
  v107 = v0;
  v108 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(&v106);
  v12(v21, v3, v0);
  v22 = v20;
  StaticDimension.init(_:scaledLike:)();
  v14(v3, v0);
  v107 = v19;
  v108 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v106);
  static ZeroDimension.zero.getter();
  v104 = v19;
  v105 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v103);
  static ZeroDimension.zero.getter();
  if (qword_10096D948 != -1)
  {
    swift_once();
  }

  v23 = qword_100980FC0;
  *v3 = qword_100980FC0;
  v61(v3, v63, v0);
  v101 = v62;
  v102 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v100);
  v98 = v0;
  v99 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(&v97);
  v12(v24, v3, v0);
  v25 = v23;
  StaticDimension.init(_:scaledLike:)();
  v14(v3, v0);
  v98 = v19;
  v99 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v97);
  static ZeroDimension.zero.getter();
  v95 = v19;
  v96 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v94);
  static ZeroDimension.zero.getter();
  v93 = &protocol witness table for Double;
  v92 = &type metadata for Double;
  v90 = &protocol witness table for ZeroDimension;
  *&v91 = 0x4022000000000000;
  v89 = v19;
  sub_1000056E0(&v88);
  static ZeroDimension.zero.getter();
  v26 = v1 + 1;
  v51 = v14;
  if (qword_10096D950 != -1)
  {
    swift_once();
  }

  v27 = qword_100980FC8;
  *v3 = qword_100980FC8;
  v28 = v63;
  v29 = v61;
  v61(v3, v63, v0);
  v30 = v29;
  v86 = v62;
  v87 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v85);
  v83 = v0;
  v84 = &protocol witness table for FontSource;
  v31 = sub_1000056E0(&v82);
  v17(v31, v3, v0);
  v32 = v27;
  StaticDimension.init(_:scaledLike:)();
  v33 = v51;
  v51(v3, v0);
  v57 = v26;
  v83 = v58;
  v84 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v82);
  static ZeroDimension.zero.getter();
  v34 = qword_100980FC8;
  *v3 = qword_100980FC8;
  v30(v3, v28, v0);
  v35 = v62;
  v80 = v62;
  v81 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v79);
  v77 = v0;
  v78 = &protocol witness table for FontSource;
  v36 = sub_1000056E0(&v76);
  v17(v36, v3, v0);
  v37 = v34;
  StaticDimension.init(_:scaledLike:)();
  v33(v3, v0);
  v38 = qword_100980FC8;
  *v3 = qword_100980FC8;
  v61(v3, v63, v0);
  v77 = v35;
  v78 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v76);
  v74 = v0;
  v75 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(&v73);
  v17(v39, v3, v0);
  v40 = v38;
  StaticDimension.init(_:scaledLike:)();
  v33(v3, v0);
  v41 = v58;
  v74 = v58;
  v75 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v73);
  static ZeroDimension.zero.getter();
  v71 = v41;
  v72 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v70);
  static ZeroDimension.zero.getter();
  v42 = qword_100980FC8;
  *v3 = qword_100980FC8;
  v61(v3, v63, v0);
  v68 = v62;
  v69 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v43 = sub_1000056E0(&v64);
  v17(v43, v3, v0);
  v44 = v42;
  StaticDimension.init(_:scaledLike:)();
  v33(v3, v0);
  v65 = v41;
  v66 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v64);
  static ZeroDimension.zero.getter();
  v45 = v53;
  (*(v55 + 32))(v53, v54, v56);
  v46 = v52;
  sub_100005A38(&v142, v45 + v52[5]);
  sub_100005A38(&v139, v45 + v46[6]);
  sub_100005A38(&v136, v45 + v46[7]);
  sub_100005A38(&v133, v45 + v46[8]);
  sub_100005A38(&v130, v45 + v46[9]);
  v47 = (v45 + v46[10]);
  *v47 = 0;
  v47[1] = 0;
  sub_100005A38(&v127, v45 + v46[11]);
  sub_100005A38(&v124, v45 + v46[12]);
  sub_100005A38(&v121, v45 + v46[13]);
  sub_100005A38(&v118, v45 + v46[14]);
  sub_100005A38(&v115, v45 + v46[15]);
  sub_100005A38(&v112, v45 + v46[16]);
  v48 = (v45 + v46[17]);
  *v48 = 0;
  v48[1] = 0;
  sub_100005A38(&v109, v45 + v46[18]);
  sub_100005A38(&v106, v45 + v46[19]);
  sub_100005A38(&v103, v45 + v46[20]);
  sub_100005A38(&v100, v45 + v46[21]);
  sub_100005A38(&v97, v45 + v46[22]);
  sub_100005A38(&v94, v45 + v46[23]);
  sub_100005A38(&v91, v45 + v46[24]);
  sub_100005A38(&v88, v45 + v46[25]);
  sub_100005A38(&v85, v45 + v46[26]);
  sub_100005A38(&v82, v45 + v46[27]);
  sub_100005A38(&v79, v45 + v46[28]);
  sub_100005A38(&v76, v45 + v46[29]);
  sub_100005A38(&v73, v45 + v46[30]);
  sub_100005A38(&v70, v45 + v46[31]);
  sub_100005A38(&v67, v45 + v46[32]);
  return sub_100005A38(&v64, v45 + v46[33]);
}

void sub_100350A74()
{
  v0 = objc_opt_self();
  if (qword_10096D940 != -1)
  {
    swift_once();
  }

  v1 = qword_100980FB8;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_100980FF8 = v2;
}

void sub_100350B50()
{
  v0 = objc_opt_self();
  if (qword_10096D950 != -1)
  {
    swift_once();
  }

  v1 = qword_100980FC8;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_100981008 = v2;
}

void sub_100350C58(uint64_t a1, void *a2, id *a3, void *a4, uint64_t a5)
{
  v8 = objc_opt_self();
  if (*a2 != -1)
  {
    swift_once();
  }

  v9 = *a3;
  v10 = [v8 _preferredFontForTextStyle:v9 weight:UIFontWeightSemibold];

  *a4 = v10;
}

void sub_100350D38(uint64_t a1, void *a2, id *a3, void *a4, uint64_t a5)
{
  v8 = objc_opt_self();
  if (*a2 != -1)
  {
    swift_once();
  }

  v9 = *a3;
  v10 = [v8 preferredFontForTextStyle:v9];

  *a4 = v10;
}

void sub_100350DD4()
{
  v0 = objc_opt_self();
  if (qword_10096D970 != -1)
  {
    swift_once();
  }

  v1 = qword_100980FE8;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_100981028 = v2;
}

UIColor sub_100350E84()
{
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v0 = objc_opt_self();
  result.super.isa = UIColor.init(light:dark:)([v0 whiteColor], objc_msgSend(v0, "secondarySystemBackgroundColor")).super.isa;
  qword_100981030 = result.super.isa;
  return result;
}

id sub_100350F18()
{
  result = [objc_opt_self() blackColor];
  qword_100981038 = result;
  return result;
}

uint64_t sub_100350F54()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIButton.Configuration();
  sub_100005644(v4, qword_100981040);
  sub_1000056A8(v4, qword_100981040);
  static UIButton.Configuration.plain()();
  UIButton.Configuration.contentInsets.setter();
  v5 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle3 scale:2];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  (*(v1 + 104))(v3, enum case for SystemImage.squareAndArrowUp(_:), v0);
  static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  return UIButton.Configuration.image.setter();
}

id sub_1003510D4()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = UITraitCollection.isSizeClassCompact.getter();

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView];
    [v10 contentSize];
    v12 = v11;
    [v10 bounds];
    v9 = v12 <= CGRectGetHeight(v51);
  }

  [*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardScrollView] setAlwaysBounceVertical:v9];
  v13 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardContentView];
  v14 = [v1 traitCollection];
  v15 = UITraitCollection.isSizeClassRegular.getter();

  if (v15)
  {
    if (qword_10096D9C0 != -1)
    {
      swift_once();
    }

    v16 = &qword_100981038;
  }

  else
  {
    if (qword_10096D9B8 != -1)
    {
      swift_once();
    }

    v16 = &qword_100981030;
  }

  [v13 setBackgroundColor:*v16];
  v17 = [v1 traitCollection];
  UITraitCollection.isSizeClassRegular.getter();

  v18 = enum case for CornerStyle.continuous(_:);
  v19 = *(v3 + 104);
  v19(v6, enum case for CornerStyle.continuous(_:), v2);
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  v20 = *(v3 + 8);
  v20(v6, v2);
  v19(v6, v18, v2);
  dispatch thunk of ShadowView.setCorner(radius:style:)();
  v20(v6, v2);
  v19(v6, v18, v2);
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  v20(v6, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    [Strong _setCornerRadius:26.0];
  }

  v23 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_kindLabel];
  v24 = [v1 traitCollection];
  v25 = UITraitCollection.isSizeClassRegular.getter();

  if (v25)
  {
    if (qword_10096D978 != -1)
    {
      swift_once();
    }

    v26 = &qword_100980FF0;
  }

  else
  {
    if (qword_10096D998 != -1)
    {
      swift_once();
    }

    v26 = &qword_100981010;
  }

  [v23 setFont:*v26];
  v27 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_titleLabel];
  v28 = [v1 traitCollection];
  v29 = UITraitCollection.isSizeClassRegular.getter();

  if (v29)
  {
    if (qword_10096D980 != -1)
    {
      swift_once();
    }

    v30 = &qword_100980FF8;
  }

  else
  {
    if (qword_10096D9A0 != -1)
    {
      swift_once();
    }

    v30 = &qword_100981018;
  }

  [v27 setFont:*v30];
  v31 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_detailLabel];
  v32 = [v1 traitCollection];
  v33 = UITraitCollection.isSizeClassRegular.getter();

  if (v33)
  {
    if (qword_10096D988 != -1)
    {
      swift_once();
    }

    v34 = &qword_100981000;
  }

  else
  {
    if (qword_10096D9A8 != -1)
    {
      swift_once();
    }

    v34 = &qword_100981020;
  }

  [v31 setFont:*v34];
  v35 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel];
  if (v35)
  {
    v36 = v35;
    v37 = [v1 traitCollection];
    v38 = UITraitCollection.isSizeClassRegular.getter();

    if (v38)
    {
      if (qword_10096D990 != -1)
      {
        swift_once();
      }

      v39 = &qword_100981008;
    }

    else
    {
      if (qword_10096D9B0 != -1)
      {
        swift_once();
      }

      v39 = &qword_100981028;
    }

    [v36 setFont:*v39];
  }

  v40 = [v1 traitCollection];
  v41 = UITraitCollection.isSizeClassRegular.getter();

  v42 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_gradientBlurView;
  v43 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_gradientBlurView];
  if (v41)
  {
    if (v43)
    {
      [v43 setHidden:1];
    }

    sub_100353534();
    sub_100355870();
  }

  else
  {
    if (v43 || (v47 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView()), v48 = sub_100251D00(0), sub_100357DEC(v48), v48, (v49 = *&v1[v42]) != 0) && ([v49 setUserInteractionEnabled:0], (v43 = *&v1[v42]) != 0))
    {
      [v43 setHidden:0];
    }

    v44 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView];
    if (v44)
    {
      [v44 setHidden:1];
    }

    v45 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentBackgroundBlurView];
    if (v45)
    {
      [v45 setHidden:1];
    }
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1003517F4()
{
  v1 = v0;
  v2 = type metadata accessor for SmallLockupLayout.Metrics();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v46 = v2;
  if ((v8 & 1) == 0)
  {

    goto LABEL_8;
  }

  v9 = UITraitCollection.isSizeClassCompact.getter();

  if ((v9 & 1) == 0)
  {
LABEL_8:
    v16 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView];
    v17 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_detailLabel];
    [v16 addSubview:{v17, v46}];
    v18 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton];
    [v16 addSubview:v18];
    [v16 addSubview:*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_separatorView]];
    v13 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView];
    [v16 addSubview:v13];
    v19 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel;
    if (*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel])
    {
      [v16 addSubview:?];
    }

    v20 = *(v18 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_style);
    *(v18 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_style) = 1;
    if (v20 == 1)
    {
      v21 = v6;
    }

    else
    {
      v21 = v6;
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        sub_1004ABCF0();
      }
    }

    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v23 = static UIColor.primaryText.getter();
    v24 = [v23 colorWithAlphaComponent:0.7];

    [v17 setTextColor:v24];
    v25 = *&v1[v19];
    if (!v25)
    {
      v29 = v21;
      v28 = &selRef_setRequiresColorStatistics_;
      v30 = &selRef__setDefaultAttributes_;
      goto LABEL_23;
    }

    v26 = v25;
    v27 = static UIColor.primaryText.getter();
    [v26 setTextColor:v27];
    v28 = &selRef_setRequiresColorStatistics_;
    goto LABEL_22;
  }

  v10 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView];
  v11 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_detailLabel];
  [v10 addSubview:v11];
  v12 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton];
  [v10 addSubview:v12];
  [v10 addSubview:*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_separatorView]];
  v13 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView];
  [v10 addSubview:v13];
  v14 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel;
  if (*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel])
  {
    [v10 addSubview:?];
  }

  v15 = *(v12 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_style);
  *(v12 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_style) = 2;
  if (v15 > 1)
  {
    v21 = v6;
  }

  else
  {
    v21 = v6;
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      sub_1004ABCF0();
    }
  }

  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v32 = static UIColor.primaryText.getter();
  [v11 setTextColor:v32];

  v33 = *&v1[v14];
  v28 = &selRef_setRequiresColorStatistics_;
  if (v33)
  {
    v26 = v33;
    v27 = static UIColor.secondaryText.getter();
    [v26 setTextColor:v27];
LABEL_22:
    v30 = &selRef__setDefaultAttributes_;

    v29 = v21;
    goto LABEL_23;
  }

  v29 = v21;
  v30 = &selRef__setDefaultAttributes_;
LABEL_23:
  v34 = [v1 v28[35]];
  v35 = UITraitCollection.isSizeClassCompact.getter();
  v36 = v46;
  if (v35)
  {
    v37 = [v34 preferredContentSizeCategory];
    v38 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v38)
    {
      v39 = &OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView;
      goto LABEL_28;
    }
  }

  else
  {
  }

  v39 = &OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView;
LABEL_28:
  [*&v1[*v39] v30[361]];
  v40 = [v1 v28[35]];
  v41 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v41)
  {
    if (qword_10096D920 != -1)
    {
      swift_once();
    }

    v42 = qword_1009CFB88;
  }

  else
  {
    if (qword_10096D918 != -1)
    {
      swift_once();
    }

    v42 = qword_1009CFB70;
  }

  v43 = sub_1000056A8(v36, v42);
  (*(v3 + 16))(v29, v43, v36);
  v44 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v13[v44], v29, v36);
  swift_endAccess();
  [v13 setNeedsLayout];
  return (*(v3 + 8))(v29, v36);
}

void sub_100351E5C()
{
  v1 = [*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView] traitCollection];
  [v1 userInterfaceStyle];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = String._bridgeToObjectiveC()();

  v2 = [*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_separatorView] layer];
  [v2 setCompositingFilter:v15];

  v3 = [*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_kindLabel] layer];
  [v3 setCompositingFilter:v15];

  v4 = [*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_detailLabel] layer];
  [v4 setCompositingFilter:v15];

  v5 = *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView];
  v6 = [*(v5 + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) layer];
  [v6 setCompositingFilter:v15];

  v7 = [*(*(v5 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton) + OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel) layer];
  [v7 setCompositingFilter:v15];

  v8 = *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton];
  if (v8)
  {
    v9 = [v8 imageView];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 layer];

      [v11 setCompositingFilter:v15];
    }
  }

  if (v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_includeBorderInDarkMode] == 1)
  {
    v12 = [v0 traitCollection];
    v13 = [v12 userInterfaceStyle];

    v14 = v13 != 2;
  }

  else
  {
    v14 = 1;
  }

  [*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_borderView] setHidden:v14];
  sub_1004ABCF0();
}

void sub_10035217C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DirectionalTextAlignment();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v39 - v12;
  v14 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel;
  v15 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel];
  if (!v15 || (v16 = [v15 text]) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  v40 = v7;
  v17 = v3;
  v18 = a1;
  v19 = v16;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (!a2)
  {

    v3 = v17;
    v7 = v40;
    if (*&v3[v14])
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v20 != v18 || v22 != a2)
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v3 = v17;
    v7 = v40;
    if (v24)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (*&v3[v14])
    {
LABEL_12:

LABEL_34:
      [v3 setNeedsLayout];
      return;
    }

LABEL_14:
    v25 = type metadata accessor for FontUseCase();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    (*(v7 + 104))(v9, enum case for DirectionalTextAlignment.none(_:), v6);
    v26 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
    v27 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
    v28 = [v3 traitCollection];
    v29 = UITraitCollection.isSizeClassRegular.getter();

    if (v29)
    {
      if (qword_10096D990 != -1)
      {
        swift_once();
      }

      v30 = &qword_100981008;
    }

    else
    {
      if (qword_10096D9B0 != -1)
      {
        swift_once();
      }

      v30 = &qword_100981028;
    }

    [v27 setFont:*v30];
    if (a2)
    {
      v31 = String._bridgeToObjectiveC()();
    }

    else
    {
      v31 = 0;
    }

    [v27 setText:v31];

    v32 = *&v3[v14];
    *&v3[v14] = v27;
    v33 = v27;

    v34 = [v3 traitCollection];
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      v35 = UITraitCollection.isSizeClassCompact.getter();

      if (v35)
      {
        [*&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView] addSubview:v33];
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        v36 = v33;
        v37 = static UIColor.secondaryText.getter();
LABEL_33:
        v38 = v37;
        [v36 setTextColor:v37];

        goto LABEL_34;
      }
    }

    else
    {
    }

    [*&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView] addSubview:v33];
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v36 = v33;
    v37 = static UIColor.primaryText.getter();
    goto LABEL_33;
  }

LABEL_19:
}

void sub_10035262C(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureRecognizer;
  if (*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureRecognizer])
  {
    [v1 removeGestureRecognizer:?];
    v4 = *&v1[v3];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v3] = a1;
  v5 = a1;

  if (a1)
  {
    v6 = v5;
    [v6 addTarget:v1 action:"dismissTapGestureRecognized:"];
    [v6 setDelegate:v1];

    [v1 addGestureRecognizer:v6];
  }
}

void sub_100352718()
{
  if (*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureActionBlock])
  {
    v1 = [objc_allocWithZone(UITapGestureRecognizer) init];

    sub_10035262C(v1);
  }

  else
  {
    v2 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureRecognizer;
    if (*&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureRecognizer])
    {
      [v0 removeGestureRecognizer:?];
      v3 = *&v0[v2];
    }

    else
    {
      v3 = 0;
    }

    *&v0[v2] = 0;
  }
}

void sub_1003527B8(void *a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v8 = *a2;
  if (*(v4 + *a2))
  {
    [*(v4 + *a3) removeGestureRecognizer:?];
    v9 = *(v4 + v8);
  }

  else
  {
    v9 = 0;
  }

  *(v4 + v8) = a1;
  v10 = a1;

  if (a1)
  {
    v11 = *a4;
    v12 = v10;
    [v12 addTarget:v4 action:v11];
    [v12 setDelegate:v4];

    [*(v4 + *a3) addGestureRecognizer:v12];
  }
}

void sub_1003528B8()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureActionBlock))
  {
    sub_1003527B8([objc_allocWithZone(UITapGestureRecognizer) init], &OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureRecognizer, &OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView, &selRef_lockupTapGestureRecognized_);
  }

  else
  {
    v1 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureRecognizer;
    if (*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureRecognizer))
    {
      [*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView) removeGestureRecognizer:?];
      v2 = *(v0 + v1);
    }

    else
    {
      v2 = 0;
    }

    *(v0 + v1) = 0;
  }
}

void sub_10035296C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a3 & 1;
  v8 = type metadata accessor for Artwork.Crop();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkViewSize];
  v17 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkViewSize];
  v18 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkViewSize + 8];
  v19 = v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkViewSize + 16];
  *v16 = *&a1;
  v16[1] = *&a2;
  *(v16 + 16) = v7;
  if ((a3 & 1) == 0)
  {
    if ((v19 & 1) != 0 || (v17 == *&a1 ? (v20 = v18 == *&a2) : (v20 = 0), !v20))
    {
      if ((*&a1 != 0.0 || *&a2 != 0.0) && (v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_isCollapsing] & 1) == 0 && *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mainArtwork] && *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkLoader] != 0)
      {
        v22 = v13;
        v23 = v3;
        v24 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView];
        swift_retain_n();
        swift_retain_n();
        v25 = Artwork.backgroundColor.getter();
        if (!v25)
        {
          sub_100005744(0, &qword_100970180, UIColor_ptr);
          v25 = static UIColor.placeholderBackground.getter();
        }

        v26 = v25;
        [v24 setBackgroundColor:v25];

        v27 = [v23 traitCollection];
        v28 = UITraitCollection.isSizeClassRegular.getter();

        if (v28)
        {
          if (qword_10096D930 != -1)
          {
            swift_once();
          }

          v29 = v22;
          v30 = qword_1009CFBB8;
        }

        else
        {
          if (qword_10096D928 != -1)
          {
            swift_once();
          }

          v29 = v22;
          v30 = qword_1009CFBA0;
        }

        v31 = sub_1000056A8(v29, v30);
        sub_100357FA8(v31, v15);
        [v23 bounds];
        AspectRatio.height(fromWidth:)();
        [v23 bounds];
        Artwork.crop.getter();
        v32 = Artwork.Crop.preferredContentMode.getter();
        (*(v9 + 8))(v11, v8);
        Artwork.config(_:mode:prefersLayeredImage:)();
        [*&v23[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView] setContentMode:v32];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v34 = Strong;
          type metadata accessor for VideoView(0);
          sub_100357838(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
        }

        else
        {
          sub_100005744(0, &qword_100973120, UIImageView_ptr);
          sub_1000D0150();
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
        }

        sub_100358070(v15, type metadata accessor for AppEventDetailPageLayout.Metrics);
      }
    }
  }
}

double sub_100352DC4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupArtwork);
  *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupArtwork) = a1;
  if (a1)
  {
    if (v2)
    {
      type metadata accessor for Artwork();
      sub_100357838(&unk_1009811F0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      swift_retain_n();
      v3 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    v4 = *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkLoader);

    sub_100392960(v5, v4);

LABEL_9:

    return result;
  }

  if (v2)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_100352F00(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoBackgroundColor;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoBackgroundColor);
  *(v1 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoBackgroundColor) = a1;
  v7 = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v1 + v2);
    [v5 setBackgroundColor:v6];
  }
}

id sub_100352F9C()
{
  [*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_formattedDateView) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_kindLabel) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_titleLabel) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_detailLabel) setAlpha:0.0];
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel);
  if (v1)
  {
    [v1 setAlpha:0.0];
  }

  v2 = *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton);
  if (v2)
  {
    [v2 setAlpha:0.0];
  }

  [*(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton) setAlpha:0.0];
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_separatorView);

  return [v3 setAlpha:0.0];
}

void sub_1003530A8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MediaOverlayStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v8 = *(v4 + 16);
  v8(v6, v1 + v7, v3);
  sub_100357838(&qword_100978AF0, &type metadata accessor for MediaOverlayStyle, &protocol conformance descriptor for MediaOverlayStyle);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if ((v9 & 1) == 0)
  {
    v11 = *(v2 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView);
    v8(v6, v2 + v7, v3);
    v12 = MediaOverlayStyle.userInterfaceStyle.getter();
    v10(v6, v3);
    [v11 setOverrideUserInterfaceStyle:v12];
    v13 = *(v2 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView);
    v8(v6, v2 + v7, v3);
    v14 = MediaOverlayStyle.userInterfaceStyle.getter();
    v10(v6, v3);
    [v13 setOverrideUserInterfaceStyle:v14];
    v15 = *(v2 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_formattedDateView);
    v8(v6, v2 + v7, v3);
    v16 = MediaOverlayStyle.inverseUserInterfaceStyle.getter();
    v10(v6, v3);
    [v15 setOverrideUserInterfaceStyle:v16];
    v17 = *(v2 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentBackgroundBlurView);
    if (v17)
    {
      v8(v6, v2 + v7, v3);
      v18 = v17;
      v19 = MediaOverlayStyle.userInterfaceStyle.getter();
      v10(v6, v3);
      [v18 setOverrideUserInterfaceStyle:v19];
    }

    sub_100351E5C();
  }
}

void sub_10035338C()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView];
    v6 = Strong;
    [v3 setHidden:1];
    v6[qword_1009D2208] = 1;
    *&v6[qword_100988CA8 + 8] = &off_1008BF048;
    swift_unknownObjectWeakAssign();
    v4 = [v0 traitCollection];
    UITraitCollection.isSizeClassRegular.getter();

    [v6 _setCornerRadius:26.0];
    [*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView] insertSubview:v6 aboveSubview:v3];
    sub_1003527B8([objc_allocWithZone(UITapGestureRecognizer) init], &OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoTapGestureRecognizer, &OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView, &selRef_videoTapGestureRecognized_);
    v5 = [v1 traitCollection];
    LOBYTE(v3) = UITraitCollection.isSizeClassRegular.getter();

    if (v3)
    {
      sub_100353534();
    }

    [v1 setNeedsLayout];
  }
}

id sub_100353534()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView;
    if (!*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView] || (type metadata accessor for VideoMirrorView(), !swift_dynamicCastClass()))
    {
      v10 = *&CATransform3DIdentity.m33;
      v52 = *&CATransform3DIdentity.m31;
      v53 = v10;
      v11 = *&CATransform3DIdentity.m43;
      v54 = *&CATransform3DIdentity.m41;
      v55 = v11;
      v12 = *&CATransform3DIdentity.m13;
      v48 = *&CATransform3DIdentity.m11;
      v49 = v12;
      v13 = *&CATransform3DIdentity.m23;
      v50 = *&CATransform3DIdentity.m21;
      v51 = v13;
      objc_allocWithZone(type metadata accessor for VideoMirrorView());
      v14 = v3;
      v15 = sub_10075DCD8(v3, &v48, 1.0, 0.0);
      v16 = *&v1[v4];
      if (v16)
      {
        [v16 removeFromSuperview];
        v17 = *&v1[v4];
      }

      else
      {
        v17 = 0;
      }

      *&v1[v4] = v15;
      v44 = v15;

      [*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView] insertSubview:v44 atIndex:0];
      [v1 setNeedsLayout];

      goto LABEL_22;
    }
  }

  v5 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView];
  v6 = [v5 isHidden];
  v7 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView;
  v8 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView];
  if (v6)
  {
    if (!v8)
    {
      v9 = 0;
LABEL_17:
      *&v1[v7] = 0;

      [v1 setNeedsLayout];
      goto LABEL_23;
    }

LABEL_16:
    [v8 removeFromSuperview];
    v9 = *&v1[v7];
    goto LABEL_17;
  }

  if (v8)
  {
    type metadata accessor for VideoMirrorView();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_16;
    }
  }

  v18 = type metadata accessor for MirrorView();
  v19 = objc_allocWithZone(v18);
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer;
  v21 = objc_allocWithZone(CALayer);
  v22 = v5;
  *&v19[v20] = [v21 init];
  v23 = v22;
  *&v19[OBJC_IVAR____TtC8AppStore10MirrorView_imageKVOContext] = 0;
  v19[OBJC_IVAR____TtC8AppStore10MirrorView_imageObserversAdded] = 0;
  swift_unknownObjectWeakAssign();
  *&v19[OBJC_IVAR____TtC8AppStore10MirrorView_contentsScaleFactor] = 0x3FF0000000000000;
  *&v19[OBJC_IVAR____TtC8AppStore10MirrorView_contentsVerticalOffset] = 0;
  v47.receiver = v19;
  v47.super_class = v18;
  v24 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v24 setClipsToBounds:1];
  [v24 setUserInteractionEnabled:0];
  v25 = OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer;
  [*&v24[OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
  LODWORD(v26) = 1.0;
  [*&v24[v25] setOpacity:v26];
  [*&v24[v25] setAnchorPoint:{0.5, 0.5}];
  v27 = qword_10096D2F8;
  v28 = *&v24[v25];
  if (v27 != -1)
  {
    swift_once();
  }

  sub_10002849C(&unk_10097A780, &unk_1007CC250);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v28 setActions:isa];

  v30 = *&v24[v25];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 mainScreen];
  [v33 scale];
  v35 = v34;

  [v32 setContentsScale:v35];
  [*&v24[v25] setMasksToBounds:1];
  v36 = *&v24[v25];
  v37 = *&CATransform3DIdentity.m33;
  v52 = *&CATransform3DIdentity.m31;
  v53 = v37;
  v38 = *&CATransform3DIdentity.m43;
  v54 = *&CATransform3DIdentity.m41;
  v55 = v38;
  v39 = *&CATransform3DIdentity.m13;
  v48 = *&CATransform3DIdentity.m11;
  v49 = v39;
  v40 = *&CATransform3DIdentity.m23;
  v50 = *&CATransform3DIdentity.m21;
  v51 = v40;
  [v36 setTransform:&v48];
  sub_1001DA558();
  v41 = [v24 layer];

  [v41 addSublayer:*&v24[v25]];
  v42 = *&v1[v7];
  if (v42)
  {
    [v42 removeFromSuperview];
    v43 = *&v1[v7];
  }

  else
  {
    v43 = 0;
  }

  *&v1[v7] = v24;
  v44 = v24;

  [*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView] insertSubview:v44 atIndex:0];
  [v1 setNeedsLayout];
LABEL_22:

LABEL_23:
  v45 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView];
  if (v45)
  {
    [v45 setHidden:0];
  }

  return [v1 setNeedsLayout];
}

void (*sub_100353A78(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100353ACC;
}

void sub_100353ACC(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_1003578C8();
    swift_unknownObjectWeakAssign();
    sub_10035338C();
  }

  else
  {
    v2 = *a1;
    sub_1003578C8();
    swift_unknownObjectWeakAssign();
    sub_10035338C();
  }
}

uint64_t sub_100353B50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v232 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v190 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LayoutRect();
  v234 = *(v6 - 1);
  v235 = v6;
  __chkstk_darwin(v6);
  v233 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppEventDetailPageLayout(0);
  __chkstk_darwin(v8);
  v10 = (&v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  __chkstk_darwin(v11);
  v237 = &v190 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v190 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v190 - v18;
  v271.receiver = v1;
  v271.super_class = ObjectType;
  objc_msgSendSuper2(&v271, "layoutSubviews", v17);
  [v1 bounds];
  result = CGRectIsEmpty(v272);
  if ((result & 1) == 0)
  {
    v193 = v5;
    v194 = v3;
    LayoutMarginsAware<>.layoutFrame.getter();
    v236 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_videoView;
    Strong = swift_unknownObjectWeakLoadStrong();
    v21 = [v1 traitCollection];
    v22 = UITraitCollection.isSizeClassRegular.getter();

    if (v22)
    {
      if (qword_10096D930 != -1)
      {
        swift_once();
      }

      v23 = qword_1009CFBB8;
    }

    else
    {
      if (qword_10096D928 != -1)
      {
        swift_once();
      }

      v23 = qword_1009CFBA0;
    }

    v24 = sub_1000056A8(v11, v23);
    sub_100357FA8(v24, v15);
    *&v15[*(v11 + 40)] = vdupq_n_s64(0x4046000000000000uLL);
    if (qword_10096D9C8 != -1)
    {
      swift_once();
    }

    v229 = ObjectType;
    v25 = type metadata accessor for UIButton.Configuration();
    sub_1000056A8(v25, qword_100981040);
    swift_beginAccess();
    v26 = UIButton.Configuration.image.getter();
    v231 = v19;
    if (v26)
    {
      v27 = v26;
      v28 = v11;
      swift_endAccess();
      swift_beginAccess();
      v29 = UIButton.Configuration.preferredSymbolConfigurationForImage.getter();
      if (v29)
      {
        v30 = v29;
        swift_endAccess();
        v31 = [v27 imageWithConfiguration:v30];
        [v31 size];
        v32 = &v15[v28[17]];
        *v32 = v33;
        *(v32 + 1) = v34;
        [v31 contentInsets];
        v269 = &type metadata for CGFloat;
        v270 = &protocol witness table for CGFloat;
        *&v268 = v35;
        v36 = v28[20];
        sub_100007000(&v15[v36]);
        sub_100005A38(&v268, &v15[v36]);
        v37 = [v1 traitCollection];
        LODWORD(v228) = UITraitCollection.prefersRightToLeftLayouts.getter();

        [v31 contentInsets];
        v39 = v38;
        v41 = v40;
        v269 = &type metadata for CGFloat;
        v270 = &protocol witness table for CGFloat;

        if (v228)
        {
          *&v268 = v41;
        }

        else
        {
          *&v268 = v39;
        }

        v42 = v28[19];
        sub_100007000(&v15[v42]);
        sub_100005A38(&v268, &v15[v42]);
        v19 = v231;
      }

      else
      {
        swift_endAccess();
      }

      v11 = v28;
    }

    else
    {
      swift_endAccess();
    }

    v43 = [v1 traitCollection];
    v44 = UITraitCollection.isSizeClassCompact.getter();

    if (v44)
    {
      if (Strong)
      {
        v269 = &type metadata for Double;
        v270 = &protocol witness table for Double;

        *&v268 = 0x404E000000000000;
        v45 = *(v11 + 44);
        sub_100007000(&v15[v45]);
        sub_100005A38(&v268, &v15[v45]);
      }
    }

    else
    {
    }

    v192 = v11;
    sub_10035800C(v15, v19);
    sub_100357FA8(v19, v237);
    v46 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shadowView];
    v269 = type metadata accessor for ShadowView();
    v270 = &protocol witness table for UIView;
    v227 = v46;
    *&v268 = v46;
    v47 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardContentView];
    v266 = type metadata accessor for RoundedCornerView();
    v267 = &protocol witness table for UIView;
    *&v265 = v47;
    v48 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_borderView];
    v264 = &protocol witness table for UIView;
    v263 = v266;
    v225 = v48;
    v226 = v47;
    *&v262 = v48;
    v49 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentContainerView];
    v50 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v261 = &protocol witness table for UIView;
    v260 = v50;
    *&v259 = v49;
    v51 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaContainerView];
    v258 = &protocol witness table for UIView;
    v257 = v50;
    v223 = v51;
    v224 = v49;
    *&v256 = v51;
    v52 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkView];
    v53 = sub_100005744(0, &qword_100973120, UIImageView_ptr);
    v255 = &protocol witness table for UIView;
    v254 = v53;
    v222 = v52;
    *&v253 = v52;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v209 = type metadata accessor for VideoView(0);
      v217 = &protocol witness table for UIView;
    }

    else
    {
      Strong = 0;
      v209 = 0;
      v217 = 0;
    }

    v228 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_gradientBlurView;
    v221 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_gradientBlurView];
    if (v221)
    {
      v54 = type metadata accessor for MediaOverlayGradientBlurView();
      v215 = &protocol witness table for UIView;
    }

    else
    {
      v54 = 0;
      v215 = 0;
    }

    v220 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaReplicationView];
    if (v220)
    {
      v212 = type metadata accessor for MirrorView();
      v211 = &protocol witness table for UIView;
    }

    else
    {
      v211 = 0;
      v212 = 0;
    }

    v55 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_overlayContentContainerView];
    v56 = type metadata accessor for OverlayContentContainerView();
    v252 = &protocol witness table for UIView;
    v251 = v56;
    *&v250 = v55;
    v57 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_contentBackgroundBlurView];
    v218 = v55;
    v219 = v57;
    if (v57)
    {
      v205 = sub_100005744(0, &qword_10097E628, UIVisualEffectView_ptr);
      v204 = &protocol witness table for UIView;
    }

    else
    {
      v204 = 0;
      v205 = 0;
    }

    v216 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_formattedDateView];
    v58 = v216;
    v59 = type metadata accessor for AppPromotionFormattedDateView();
    v249 = &protocol witness table for UIView;
    v248 = v59;
    *&v247 = v58;
    v203 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton];
    v60 = sub_100005744(0, &qword_1009811E0, UIButton_ptr);
    v197 = v60;
    v214 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_kindLabel];
    v61 = v214;
    v62 = type metadata accessor for DynamicTypeLabel();
    v63 = &protocol witness table for UILabel;
    v245 = v62;
    v246 = &protocol witness table for UILabel;
    v243 = &protocol witness table for UILabel;
    *&v244 = v61;
    v213 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_titleLabel];
    v191 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton;
    v64 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_shareButton];
    v198 = v64;
    v242 = v62;
    v240 = &protocol witness table for UILabel;
    *&v241 = v213;
    if (v64)
    {
      v65 = v60;
    }

    else
    {
      v65 = 0;
    }

    if (v64)
    {
      v66 = &protocol witness table for UIView;
    }

    else
    {
      v66 = 0;
    }

    v199 = v66;
    v200 = v65;
    v210 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_detailLabel];
    v239 = v62;
    *&v238 = v210;
    v67 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_requirementsLabel];
    if (v67)
    {
      v68 = v62;
    }

    else
    {
      v68 = 0;
    }

    if (!v67)
    {
      v63 = 0;
    }

    v201 = v63;
    v202 = v68;
    v69 = v10 + v8[23];
    v208 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButton];
    v70 = v208;
    *(v69 + 3) = type metadata accessor for NotifyMeButton();
    *(v69 + 4) = &protocol witness table for UIView;
    v71 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_separatorView];
    *v69 = v70;
    v72 = v10 + v8[24];
    *(v72 + 3) = v50;
    *(v72 + 4) = &protocol witness table for UIView;
    *v72 = v71;
    v206 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView];
    v73 = v206;
    v207 = v71;
    v74 = v10 + v8[25];
    *(v74 + 3) = type metadata accessor for SmallLockupView(0);
    *(v74 + 4) = &protocol witness table for UIView;
    *v74 = v73;
    v195 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_isCollapsing;
    v196 = v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_isCollapsing];
    sub_10035800C(v237, v10);
    sub_100005A38(&v268, v10 + v8[5]);
    sub_100005A38(&v265, v10 + v8[6]);
    sub_100005A38(&v262, v10 + v8[7]);
    sub_100005A38(&v259, v10 + v8[8]);
    sub_100005A38(&v256, v10 + v8[9]);
    sub_100005A38(&v253, v10 + v8[10]);
    v75 = v10 + v8[11];
    *v75 = Strong;
    *(v75 + 1) = 0;
    v76 = v209;
    *(v75 + 2) = 0;
    *(v75 + 3) = v76;
    *(v75 + 4) = v217;
    v77 = v10 + v8[12];
    v78 = v220;
    v79 = v221;
    *v77 = v221;
    *(v77 + 1) = 0;
    *(v77 + 2) = 0;
    *(v77 + 3) = v54;
    *(v77 + 4) = v215;
    v80 = v10 + v8[13];
    *v80 = v78;
    *(v80 + 1) = 0;
    v81 = v211;
    v82 = v212;
    *(v80 + 2) = 0;
    *(v80 + 3) = v82;
    *(v80 + 4) = v81;
    sub_100005A38(&v250, v10 + v8[14]);
    v83 = v10 + v8[15];
    v84 = v219;
    *v83 = v219;
    *(v83 + 1) = 0;
    v85 = v204;
    v86 = v205;
    *(v83 + 2) = 0;
    *(v83 + 3) = v86;
    *(v83 + 4) = v85;
    sub_100005A38(&v247, v10 + v8[16]);
    v87 = v10 + v8[17];
    v88 = v203;
    *v87 = v203;
    *(v87 + 3) = v197;
    *(v87 + 4) = &protocol witness table for UIView;
    sub_100005A38(&v244, v10 + v8[18]);
    sub_100005A38(&v241, v10 + v8[19]);
    v89 = v10 + v8[20];
    v90 = v198;
    *v89 = v198;
    *(v89 + 1) = 0;
    v91 = v199;
    v92 = v200;
    *(v89 + 2) = 0;
    *(v89 + 3) = v92;
    *(v89 + 4) = v91;
    sub_100005A38(&v238, v10 + v8[21]);
    v93 = v10 + v8[22];
    *v93 = v67;
    *(v93 + 1) = 0;
    v94 = v201;
    v95 = v202;
    *(v93 + 2) = 0;
    *(v93 + 3) = v95;
    *(v93 + 4) = v94;
    *(v10 + v8[26]) = v196;
    v96 = v67;
    v97 = v227;
    v98 = v226;
    v99 = v225;
    v100 = v224;
    v225 = v223;
    v237 = v222;
    Strong = v218;
    v224 = v216;
    v226 = v88;
    v101 = v214;
    v102 = v213;
    v103 = v210;
    v104 = v208;
    v105 = v207;
    v227 = v206;
    v106 = v79;
    v107 = v78;
    v108 = v84;
    v109 = v90;
    LayoutMarginsAware<>.layoutFrame.getter();
    v110 = v233;
    AppEventDetailPageLayout.placeChildren(relativeTo:in:)(v1, v111, v112, v113, v114);
    v234[1](v110, v235);
    v115 = *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardScrollView];
    [v100 bounds];
    [v115 setContentSize:{v116, v117}];
    [v1 bounds];
    [v115 setBounds:{0.0, 0.0}];
    [v1 bounds];
    v118 = CGRectGetWidth(v273) * 0.5;
    [v1 bounds];
    Height = CGRectGetHeight(v274);
    v235 = v115;
    [v115 setCenter:{v118, Height * 0.5}];
    v120 = *&v1[v228];
    if (v120 && (v1[v195] & 1) == 0)
    {
      v121 = v101;
      v122 = v120;
      [v122 frame];
      v123 = CGRectGetHeight(v275);
      v124 = [v1 traitCollection];
      v125 = UITraitCollection.prefersAccessibilityLayouts.getter();

      if (v125)
      {
        if (*&v1[v191])
        {
          v121 = *&v1[v191];
        }

        else
        {
          v121 = v224;
        }
      }

      v126 = v121;
      v234 = v126;
      [v225 frame];
      v127 = CGRectGetHeight(v276);
      [v126 frame];
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v135 = v134;

      v277.origin.x = v129;
      v277.origin.y = v131;
      v277.size.width = v133;
      v277.size.height = v135;
      v136 = v123 - (v127 - CGRectGetMinY(v277));
      v137 = (v136 + -100.0) / v123;
      v138 = (v136 + 30.0) / v123;
      v139 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v122[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY] = v137;
      v140 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView;
      v141 = [*&v122[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v143 = v142;

      v144 = *&v122[v139];
      v145 = [*&v122[v140] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v143, v144}];

      v146 = [*&v122[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v143, v144}];

      v147 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v122[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY] = v137;
      v148 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView;
      v149 = [*&v122[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v151 = v150;

      v152 = *&v122[v147];
      v153 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v151, v152}];

      sub_100250FB4(v138);
      v154 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v122[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY] = v138;
      v155 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v157 = v156;

      v158 = *&v122[v154];
      v159 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v157, v158}];
    }

    v160 = [v1 traitCollection];
    v161 = UITraitCollection.isSizeClassRegular.getter();

    if (v161)
    {
      v234 = v10;
      [v227 frame];
      MaxY = CGRectGetMaxY(v278);
      v163 = v231;
      sub_10002A400(&v231[*(v192 + 128)], *&v231[*(v192 + 128) + 24]);
      v164 = v193;
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v166 = v165;
      (*(v232 + 8))(v164, v194);
      v167 = Strong;
      [Strong bounds];
      [v167 setContentSize:{CGRectGetWidth(v279), MaxY + v166 * 0.8}];
      v168 = [v1 traitCollection];
      v169 = UITraitCollection.isSizeClassCompact.getter();

      if (v169)
      {
        v170 = 1;
      }

      else
      {
        [v167 contentSize];
        v176 = v175;
        [v167 bounds];
        v170 = v176 <= CGRectGetHeight(v280);
      }

      v174 = v237;
      [v235 setAlwaysBounceVertical:v170];
      v10 = v234;
    }

    else
    {
      v171 = Strong;
      [Strong bounds];
      [v171 setContentSize:{v172, v173}];
      v163 = v231;
      v174 = v237;
    }

    [v174 bounds];
    sub_10035296C(v177, v178, 0);
    v179 = swift_unknownObjectWeakLoadStrong();
    if (v179)
    {
      v180 = v179;
      v181 = [v1 traitCollection];
      v182 = UITraitCollection.isSizeClassCompact.getter();

      if ((v182 & 1) == 0)
      {
        sub_100358070(v10, type metadata accessor for AppEventDetailPageLayout);

        return sub_100358070(v163, type metadata accessor for AppEventDetailPageLayout.Metrics);
      }

      [v226 frame];
      v184 = v183;
      [v180 frame];
      v186.f64[0] = v185 + -53.0;
      v187 = &v180[qword_1009D21B0];
      v188 = *&v180[qword_1009D21B0];
      v189 = *&v180[qword_1009D21B0 + 16];
      *v187 = xmmword_1007C8990;
      *(v187 + 2) = *&v186.f64[0];
      *(v187 + 3) = v184 + 25.0;
      v186.f64[1] = v184 + 25.0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(xmmword_1007C8990, v188), vceqq_f64(v186, v189)))) & 1) == 0)
      {
        sub_1004E2320();
      }
    }

    sub_100358070(v10, type metadata accessor for AppEventDetailPageLayout);
    return sub_100358070(v163, type metadata accessor for AppEventDetailPageLayout.Metrics);
  }

  return result;
}