void sub_100601D08()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextView);
  v2 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = *(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v4 = 5;
    goto LABEL_7;
  }

  v4 = 10;
LABEL_7:
  v8 = v1;
  v5 = [v8 textContainer];
  v6 = [v5 maximumNumberOfLines];

  if (v6 != v4)
  {
    v7 = [v8 textContainer];
    [v7 setMaximumNumberOfLines:v4];

    [v8 invalidateIntrinsicContentSize];
  }
}

id sub_100601E20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalEntryCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10060204C()
{
  v1 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date.FormatStyle.DateStyle();
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry);
  if (!v12)
  {
    return 0;
  }

  v13 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
  swift_beginAccess();
  (*(v9 + 16))(v11, v12 + v13, v8);

  static Date.FormatStyle.DateStyle.complete.getter();
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v14 = Date.formatted(date:time:)();
  v17 = v8;

  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v18);
  (*(v9 + 8))(v11, v17);
  return v14;
}

void sub_100602354()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v41 - v7;
  v9 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry;
  v10 = *&v0[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry];
  if (!v10)
  {
    v13 = 0;
    goto LABEL_6;
  }

  v11 = sub_1000819F8();

  if (!v11)
  {
    v13 = 0;
    v10 = 0;
    v15 = *&v1[v9];
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_6:
    v16 = 0;
    v17 = 0;
    goto LABEL_9;
  }

  v12 = [v11 string];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v14;

  v15 = *&v1[v9];
  if (!v15)
  {
    goto LABEL_6;
  }

LABEL_8:
  v18 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
  swift_beginAccess();
  (*(v3 + 16))(v8, v15 + v18, v2);
  static Date.now.getter();
  v16 = sub_10048FF40(0, 0, v5);
  v17 = v19;
  v20 = *(v3 + 8);
  v20(v5, v2);
  v20(v8, v2);
LABEL_9:
  v21 = type metadata accessor for JournalEntryCollectionViewCell(0);
  v42.receiver = v1;
  v42.super_class = v21;
  v22 = objc_msgSendSuper2(&v42, "accessibilityUserInputLabels");
  if (v22)
  {
    v23 = v22;
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v41[5] = v13;
    v41[6] = v10;
    v41[7] = v16;
    v41[8] = v17;
    v25 = [v1 accessibilityLabel];
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = 0;
    v41[9] = v27;
    v41[10] = v29;
    v31 = _swiftEmptyArrayStorage;
LABEL_14:
    if (v30 <= 3)
    {
      v32 = 3;
    }

    else
    {
      v32 = v30;
    }

    v33 = v32 + 1;
    v34 = 16 * v30 + 40;
    while (1)
    {
      if (v30 == 3)
      {
        sub_1000F24EC(&unk_100AE4870, &qword_100945360);
        swift_arrayDestroy();
        v41[0] = v24;
        sub_1006AD7E8(v31);
        return;
      }

      if (v33 == ++v30)
      {
        break;
      }

      v35 = v34 + 16;
      v36 = *(&v41[1] + v34);
      v34 += 16;
      if (v36)
      {
        v37 = *(&v41[-2] + v35);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_10009BCC8(0, *(v31 + 2) + 1, 1, v31);
        }

        v39 = *(v31 + 2);
        v38 = *(v31 + 3);
        if (v39 >= v38 >> 1)
        {
          v31 = sub_10009BCC8((v38 > 1), v39 + 1, 1, v31);
        }

        *(v31 + 2) = v39 + 1;
        v40 = &v31[2 * v39];
        *(v40 + 4) = v37;
        *(v40 + 5) = v36;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100602880(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v2[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry] || (, v9 = sub_10005AAB0(4), , (v9 & 1) == 0))
  {
    v10 = [v2 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v10) = UICellConfigurationState.isEditing.getter();
    (*(v5 + 8))(v8, v4);
    if ((v10 & 1) == 0)
    {
      return [*&v3[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView] accessibilityActivate];
    }
  }

  v11 = [v3 traitCollection];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 5)
  {
    v13 = &v3[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      (*(v14 + 56))(v3, ObjectType, v14);
      swift_unknownObjectRelease();
    }

    return 1;
  }

  else
  {
    v17 = type metadata accessor for JournalEntryCollectionViewCell(0);
    v18.receiver = v3;
    v18.super_class = v17;
    return objc_msgSendSuper2(&v18, "accessibilityActivate");
  }
}

id sub_100602BB4()
{
  [*&v0[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView] layoutIfNeeded];
  [v0 invalidateIntrinsicContentSize];

  return [v0 invalidateIntrinsicContentSize];
}

uint64_t sub_100602C10()
{
  v1 = v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 56))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100602CA0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(v2, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100602D38()
{
  v1 = v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 32))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100602DD0(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    v5 = *&v2[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry];
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
      if (v6 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_5;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v7 = &v2[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate];
        if (!swift_unknownObjectWeakLoadStrong())
        {

          goto LABEL_20;
        }

        v8 = *(v7 + 1);
        ObjectType = swift_getObjectType();
        v10 = *(v8 + 16);

        LOBYTE(v8) = v10(ObjectType, v8);
        swift_unknownObjectRelease();
        if ((v8 & 1) == 0)
        {
LABEL_20:
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            v30 = "Ignoring focus toggle to asset grid, entry collection view is not focusable, so the asset grid should be focused already.";
LABEL_25:
            _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);

            goto LABEL_26;
          }

          goto LABEL_26;
        }

LABEL_14:

        return 1;
      }
    }

    goto LABEL_30;
  }

  if (static Selector.== infix(_:_:)())
  {
    v11 = *&v2[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry];
    if (v11)
    {
      v12 = *(v11 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
      if (v12 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_30;
        }
      }

      else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v13 = &v2[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v13 + 1);
        v15 = swift_getObjectType();
        v16 = *(v14 + 16);

        LOBYTE(v14) = v16(v15, v14);
        swift_unknownObjectRelease();
        if ((v14 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        v30 = "Ignoring focus toggle to timeline cell, entry collection view is focusable, so the timeline should be focused already.";
        goto LABEL_25;
      }

LABEL_26:

      return 0;
    }

LABEL_30:
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Ignoring focus toggle selector, no asset grid present!", v33, 2u);
    }

    return 0;
  }

  sub_10005D974(a2, v35);
  v18 = v36;
  if (v36)
  {
    v19 = sub_10000CA14(v35, v36);
    v20 = *(v18 - 8);
    v21 = __chkstk_darwin(v19);
    v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23, v21);
    v24 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v20 + 8))(v23, v18);
    sub_10000BA7C(v35);
  }

  else
  {
    v24 = 0;
  }

  v25 = type metadata accessor for JournalEntryCollectionViewCell(0);
  v34.receiver = v2;
  v34.super_class = v25;
  v26 = objc_msgSendSuper2(&v34, "canPerformAction:withSender:", a1, v24);
  swift_unknownObjectRelease();
  return v26;
}

void sub_1006033CC()
{
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_enforceShowCompressedAssetGrid) = 0;
  v1 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_contentStackView;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_topContentMaskView;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  v3 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetStackView;
  *(v0 + v3) = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_textStackView;
  *(v0 + v4) = [objc_allocWithZone(UIStackView) init];
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_reflectionPromptView) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_photoMemoriesBannerView) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_slimAssetView) = 0;
  v5 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView;
  type metadata accessor for CanvasGridView(0);
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextContainerView;
  *(v0 + v6) = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextView;
  type metadata accessor for TimelineTextView();
  *(v0 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_bundleTitle;
  type metadata accessor for TimelineMomentsTitleView();
  *(v0 + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_gridMargin) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_textViewMarginNoAssets) = 0x4030000000000000;
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_unsupportedEntryCellHeight) = 0x4069000000000000;
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_unsupportedEntryView) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell____lazy_storage___textMaskViewHeightConstraint) = 0;
  v9 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_chinView;
  type metadata accessor for JournalEntryCellChinView();
  *(v0 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_numCollapsedLinesWithAssets) = 5;
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_numCollapsedLinesNoAssets) = 10;
  v10 = v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_maxCellHeight;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100603670(char *a1)
{
  v2 = [a1 traitCollection];
  sub_10002FE80();
  UITraitCollection.subscript.getter();

  v3 = v5 - 3 < 0xFFFFFFFE;
  a1[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_enforceShowCompressedAssetGrid] = v3;
  *(*&a1[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView] + OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid) = v3;
  sub_100585C6C();
  return [a1 invalidateIntrinsicContentSize];
}

id sub_10060371C(const char *a1, char a2, const char *a3)
{
  v7 = v3;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a1, v10, 2u);
  }

  v11 = &v7[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(a2 & 1, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, a3, v16, 2u);
  }

  return [v7 _setNeedsNonDeferredFocusUpdate];
}

void sub_1006038A8()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry);
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssetsAndSlimAsset);
    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      sub_1000F24EC(&unk_100AD8A90, &qword_1009451C0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100940050;
      *(v11 + 32) = 0;
      if (__OFSUB__(v7, 1))
      {
        __break(1u);
      }

      else
      {
        *(v11 + 40) = v7 - 1;
        IndexPath.init(arrayLiteral:)();
        (*(v9 + 40))(v0, v4, ObjectType, v9);
        swift_unknownObjectRelease();
        (*(v2 + 8))(v4, v1);
      }
    }
  }
}

uint64_t sub_100603A60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100603AAC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SubviewsCollection();
  sub_10008D1A8(&qword_100AD27E0, &type metadata accessor for SubviewsCollection, &protocol conformance descriptor for SubviewsCollection);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v9[4] == v9[0])
  {
    v2 = type metadata accessor for Subview();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = dispatch thunk of Collection.subscript.read();
    v6 = v5;
    v7 = type metadata accessor for Subview();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_100603C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_100611C40(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_1000F24EC(&qword_100AE4290, &qword_100945270);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_100603D0C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LayoutSubviews();
  sub_10008D1A8(&qword_100AEB870, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v9[4] == v9[0])
  {
    v2 = type metadata accessor for LayoutSubview();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = dispatch thunk of Collection.subscript.read();
    v6 = v5;
    v7 = type metadata accessor for LayoutSubview();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_100603EA4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100603F00(unint64_t result)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v1 = result;
  v2 = _CocoaArrayWrapper.endIndex.getter();
  result = v1;
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(result + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_100603FA0(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.startIndex.getter();
    v9 = v8;
    v10 = __CocoaSet.endIndex.getter();
    v12 = v11;
    v13 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10000A96C(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_10000A96C(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = _HashTable.startBucket.getter();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_100611D14(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  sub_10000A96C(v7, v9, v6 != 0);
  return v16;
}

uint64_t sub_1006040D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_100611F2C(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_100604190(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1003E63BC(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1003E63BC((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = *(type metadata accessor for PendingPhotoAsset(0) - 8);
  result = sub_100617828(a1, v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, type metadata accessor for PendingPhotoAsset);
  *v1 = v3;
  return result;
}

double sub_1006042A0()
{
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  return result;
}

double *sub_100604300(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AE9D28, &qword_10095E710);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for TranscriptViewModelSegment();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v31 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(type metadata accessor for TranscriptionSegment() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = _swiftEmptyArrayStorage;
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_100004F84(v8, &qword_100AE9D28, &qword_10095E710);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1003E4DF4(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_1003E4DF4((v20 > 1), v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

double *sub_10060462C(void (*a1)(_OWORD *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v17 = *v6;
    (a1)(v16, &v17, a2);
    if (v3)
    {
      break;
    }

    if (*&v16[0])
    {
      v15 = v16[0];
      v14 = v16[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1003E5BEC(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      v9 = v15;
      if (v12 >= v11 >> 1)
      {
        v8 = sub_1003E5BEC((v11 > 1), v12 + 1, 1, v7);
        v9 = v15;
        v7 = v8;
      }

      *(v7 + 2) = v12 + 1;
      v10 = &v7[4 * v12];
      *(v10 + 2) = v9;
      *(v10 + 3) = v14;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

double *sub_10060476C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v6 = sub_1000F24EC(&qword_100AEB668, &qword_100960778);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_1000F24EC(&qword_100AD64E8, &qword_1009451B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v28 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v26 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(type metadata accessor for VisitAssetMetadata() - 8);
  v23 = v10;
  v16 = (v10 + 48);
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = _swiftEmptyArrayStorage;
  v27 = *(v15 + 72);
  v24 = v9;
  v25 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_100004F84(v8, &qword_100AEB668, &qword_100960778);
    }

    else
    {
      v19 = v26;
      sub_100021CEC(v8, v26, &qword_100AD64E8, &qword_1009451B0);
      sub_100021CEC(v19, v28, &qword_100AD64E8, &qword_1009451B0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1003E5D98(0, *(v18 + 2) + 1, 1, v18);
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1003E5D98((v20 > 1), v21 + 1, 1, v18);
      }

      *(v18 + 2) = v21 + 1;
      sub_100021CEC(v28, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, &qword_100AD64E8, &qword_1009451B0);
      v9 = v24;
      a1 = v25;
    }

    v17 += v27;
    if (!--v14)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_100604AA0(void *a1)
{
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  sub_10008D1A8(&qword_100AD1C18, type metadata accessor for MOSuggestionAssetMetadataKey, &unk_10093FA10);
  v2 = a1;
  return AnyHashable.init<A>(_:)();
}

double *sub_100604B34(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          type metadata accessor for JournalMO();
          sub_1000F24EC(&qword_100AEB678, &unk_100960790);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        type metadata accessor for JournalMO();
        do
        {
          v7 = *v6++;
          v8 = v7;
          sub_1000F24EC(&qword_100AEB678, &unk_100960790);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

double *sub_100604CF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_100199C54(0, v1, 0);
    v4 = a1 + 32;
    v2 = _swiftEmptyArrayStorage;
    do
    {
      sub_100086C04(v4, v16);
      sub_1000F24EC(&unk_100AD68B0, &unk_100945340);
      sub_1000F24EC(&qword_100AD6668, &unk_100945350);
      swift_dynamicCast();
      v20 = v2;
      v6 = *(v2 + 2);
      v5 = *(v2 + 3);
      if (v6 >= v5 >> 1)
      {
        sub_100199C54((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = sub_100186174(v17, v18);
      v10 = __chkstk_darwin(v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12, v10);
      sub_1001A69E8(v6, v12, &v20, v7, v8);
      sub_10000BA7C(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

double *sub_100604ED0(uint64_t a1)
{
  v2 = type metadata accessor for CoreSpotlightSearchSuggestionItem(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100199C54(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_100614C94(v8, v5, type metadata accessor for CoreSpotlightSearchSuggestionItem);
      v17 = v7;
      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        sub_100199C54((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_100A71788;
      v12 = sub_10001A770(&v14);
      sub_100614C94(v5, v12, type metadata accessor for CoreSpotlightSearchSuggestionItem);
      *(v7 + 2) = v11 + 1;
      sub_100018480(&v14, &v7[5 * v11 + 4]);
      sub_100614EE4(v5, type metadata accessor for CoreSpotlightSearchSuggestionItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

double *sub_100605098(uint64_t a1)
{
  v2 = type metadata accessor for CustomTokenSearchSuggestionItem(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100199C14(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_100614C94(v8, v5, type metadata accessor for CustomTokenSearchSuggestionItem);
      v17 = v7;
      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        sub_100199C14((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_100A717B0;
      v12 = sub_10001A770(&v14);
      sub_100614C94(v5, v12, type metadata accessor for CustomTokenSearchSuggestionItem);
      *(v7 + 2) = v11 + 1;
      sub_100018480(&v14, &v7[5 * v11 + 4]);
      sub_100614EE4(v5, type metadata accessor for CustomTokenSearchSuggestionItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

double *sub_100605260(uint64_t a1)
{
  v2 = type metadata accessor for CustomJournalSearchSuggestionItem(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100199C14(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_100614C94(v8, v5, type metadata accessor for CustomJournalSearchSuggestionItem);
      v17 = v7;
      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        sub_100199C14((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_100A717E8;
      v12 = sub_10001A770(&v14);
      sub_100614C94(v5, v12, type metadata accessor for CustomJournalSearchSuggestionItem);
      *(v7 + 2) = v11 + 1;
      sub_100018480(&v14, &v7[5 * v11 + 4]);
      sub_100614EE4(v5, type metadata accessor for CustomJournalSearchSuggestionItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

double *sub_100605428(uint64_t a1)
{
  v2 = type metadata accessor for CustomPlaceSearchSuggestionItem(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100199C14(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_100614C94(v8, v5, type metadata accessor for CustomPlaceSearchSuggestionItem);
      v17 = v7;
      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        sub_100199C14((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_100A71820;
      v12 = sub_10001A770(&v14);
      sub_100614C94(v5, v12, type metadata accessor for CustomPlaceSearchSuggestionItem);
      *(v7 + 2) = v11 + 1;
      sub_100018480(&v14, &v7[5 * v11 + 4]);
      sub_100614EE4(v5, type metadata accessor for CustomPlaceSearchSuggestionItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

double *sub_1006055F0(uint64_t a1)
{
  v2 = type metadata accessor for CustomActivityTypeSearchSuggestionItem(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100199C14(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_100614C94(v8, v5, type metadata accessor for CustomActivityTypeSearchSuggestionItem);
      v17 = v7;
      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        sub_100199C14((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_100A71858;
      v12 = sub_10001A770(&v14);
      sub_100614C94(v5, v12, type metadata accessor for CustomActivityTypeSearchSuggestionItem);
      *(v7 + 2) = v11 + 1;
      sub_100018480(&v14, &v7[5 * v11 + 4]);
      sub_100614EE4(v5, type metadata accessor for CustomActivityTypeSearchSuggestionItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

double *sub_1006057B8(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_10002430C(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        sub_10002430C((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 2) = v14 + 1;
      sub_10002432C(&v17, &v7[4 * v14 + 4]);
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

double *sub_1006059B8(unint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100199FA4(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      do
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (*&v13 >= *&v12 >> 1)
        {
          sub_100199FA4((*&v12 > 1uLL), *&v13 + 1, 1);
        }

        ++v10;
        v14 = sub_10008D1A8(a2, a3, a4);
        *&_swiftEmptyArrayStorage[2] = *&v13 + 1;
        v15 = &_swiftEmptyArrayStorage[2 * *&v13];
        *(v15 + 4) = v11;
        *(v15 + 5) = v14;
      }

      while (v8 != v10);
    }

    else
    {
      v16 = (a1 + 32);
      do
      {
        v17 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        v19 = *v16;
        if (*&v17 >= *&v18 >> 1)
        {
          sub_100199FA4((*&v18 > 1uLL), *&v17 + 1, 1);
        }

        v20 = sub_10008D1A8(a2, a3, a4);
        *&_swiftEmptyArrayStorage[2] = *&v17 + 1;
        v21 = &_swiftEmptyArrayStorage[2 * *&v17];
        *(v21 + 4) = v19;
        *(v21 + 5) = v20;
        ++v16;
        --v8;
      }

      while (v8);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

double *sub_100605B88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100199FA4(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v4 = *v3;
      sub_1000F24EC(&qword_100ADFAD0, &qword_100950F80);
      sub_1000F24EC(&qword_100AD6628, &qword_100945300);
      swift_dynamicCast();
      v5 = v9;
      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (*&v7 >= *&v6 >> 1)
      {
        sub_100199FA4((*&v6 > 1uLL), *&v7 + 1, 1);
        v5 = v9;
      }

      *&_swiftEmptyArrayStorage[2] = *&v7 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v7 + 4] = v5;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

double *sub_100605CC4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
          sub_1000F24EC(&qword_100AE9A00, &qword_100960770);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
        do
        {
          v7 = *v6++;
          v8 = v7;
          sub_1000F24EC(&qword_100AE9A00, &qword_100960770);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

double *sub_100605EB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      CGFloat._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t *sub_100605F60(unint64_t *result, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  if (!(a4 >> 62))
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v10 = v8;
    v8 = 0;
    goto LABEL_25;
  }

LABEL_23:
  result = _CocoaArrayWrapper.endIndex.getter();
  v8 = result;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v10 = v8;
    v8 = 0;
LABEL_25:
    *v7 = a4;
    v7[1] = v10;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 1;
    v10 = v8;
    while (v10)
    {
      v11 = __OFSUB__(v10--, 1);
      if (v11)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v10 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v12 = *(a4 + 32 + 8 * v10);
      }

      *v6 = v12;
      if (a3 == v9)
      {
        v8 = a3;
        goto LABEL_25;
      }

      ++v6;
      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_100606084(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_100032ECC;

  return v9(a2, a3);
}

uint64_t sub_100606198(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 538976288;
  v28 = 0xE400000000000000;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v13 = [a3 stringFromDate:isa];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18 = v27;
  sub_1000082B4(a2, v7, &unk_100AD4790, &unk_10093B4E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100004F84(v7, &unk_100AD4790, &unk_10093B4E0);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v26._countAndFlagsBits = 2108704;
    v26._object = 0xE300000000000000;
    v19 = Date._bridgeToObjectiveC()().super.isa;
    v20 = [a3 stringFromDate:v19];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    String.append(_:)(v26);

    (*(v9 + 8))(v11, v8);
    return v27;
  }

  return v18;
}

uint64_t sub_100606440(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Date();
  sub_10008D1A8(&qword_100AD2698, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000F24EC(&qword_100AE0D70, &unk_1009521E0);
  return dispatch thunk of static Comparable.< infix(_:_:)() & 1;
}

uint64_t sub_100606500(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for VisitAssetMetadata();
  v42 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VisitDuration(0);
  v38 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AEED20, &qword_1009457E0);
  __chkstk_darwin(v8 - 8);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v41 = &v35 - v11;
  v12 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000082B4(a1, v14, &unk_100AD4790, &unk_10093B4E0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100004F84(v14, &unk_100AD4790, &unk_10093B4E0);
    return 0;
  }

  (*(v16 + 32))(v18, v14, v15);
  v19 = v40;
  v20 = *(v40 + 16);
  if (!v20)
  {
LABEL_16:
    (*(v16 + 8))(v18, v15);
    return 0;
  }

  v35 = *(v42 + 56);
  v36 = v3;
  v35(v41, 1, 1, v3);
  v21 = v19 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v22 = *(v38 + 72);
  while (1)
  {
    sub_100614C94(v21, v7, type metadata accessor for VisitDuration);
    if ((*&v7[*(v5 + 20)])(v18))
    {
      break;
    }

    sub_100614EE4(v7, type metadata accessor for VisitDuration);
    v21 += v22;
    if (!--v20)
    {
      goto LABEL_9;
    }
  }

  v23 = v41;
  sub_100004F84(v41, &unk_100AEED20, &qword_1009457E0);
  v24 = v36;
  (*(v42 + 16))(v23, v7, v36);
  sub_100614EE4(v7, type metadata accessor for VisitDuration);
  v35(v23, 0, 1, v24);
LABEL_9:
  v25 = v41;
  v26 = v39;
  sub_1000082B4(v41, v39, &unk_100AEED20, &qword_1009457E0);
  v27 = v42;
  v28 = v36;
  if ((*(v42 + 48))(v26, 1, v36) == 1)
  {
    sub_100004F84(v25, &unk_100AEED20, &qword_1009457E0);
    (*(v16 + 8))(v18, v15);
    sub_100004F84(v26, &unk_100AEED20, &qword_1009457E0);
    return 0;
  }

  v29 = v37;
  (*(v27 + 32))(v37, v26, v28);
  v30 = VisitAssetMetadata.latitude.getter();
  if (v31)
  {
    (*(v27 + 8))(v29, v28);
LABEL_15:
    sub_100004F84(v25, &unk_100AEED20, &qword_1009457E0);
    goto LABEL_16;
  }

  v32 = v30;
  VisitAssetMetadata.longitude.getter();
  if (v33)
  {
    (*(v27 + 8))(v29, v36);
    goto LABEL_15;
  }

  VisitAssetMetadata.placeName.getter();
  (*(v27 + 8))(v29, v36);
  sub_100004F84(v25, &unk_100AEED20, &qword_1009457E0);
  (*(v16 + 8))(v18, v15);
  return v32;
}

double sub_100606AE0(uint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(unint64_t, unint64_t))
{
  _StringGuts.grow(_:)(43);

  v10._countAndFlagsBits = a1;
  v10._object = a2;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a3;
  v12._object = a4;
  String.append(_:)(v12);
  a5(0xD000000000000025, 0x80000001008FEF10);

  return result;
}

double sub_100606BC4(void *a1, void *a2, void *a3)
{
  sub_100606C74(a2);
  swift_beginAccess();
  v5 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return result;
}

double sub_100606C74(void *a1)
{
  v3 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v17 - v8;
  v10 = [a1 suggestionIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  v12 = OBJC_IVAR____TtC7Journal5Asset_suggestionId;
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100AD1420, &unk_10093C080);
  swift_endAccess();
  v13 = [a1 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
  v15 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
  swift_beginAccess();
  sub_100014318(v5, v1 + v15, &unk_100AD4790, &unk_10093B4E0);
  swift_endAccess();
  return result;
}

uint64_t sub_100606EAC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) != 0 || (a1 - 2) > 6)
  {
    v5 = &enum case for MediaViewType.song(_:);
  }

  else
  {
    v5 = *(&off_100A76190 + a1 - 2);
  }

  v6 = *v5;
  v7 = type metadata accessor for MediaViewType();
  v8 = *(*(v7 - 8) + 104);

  return v8(a3, v6, v7);
}

uint64_t sub_100606F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) > 2)
  {
    v12 = *(v5 + 56);

    return v12(a2, 1, 1, v4, v6);
  }

  else
  {
    v9 = **(&off_100A761C8 + a1 - 1);
    v10 = *(v5 + 104);
    v14 = v5;
    v10(v8, v9, v4, v6);
    (*(v14 + 32))(a2, v8, v4);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_1006070AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  if (a2)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v8[14] = v9;
  v8[15] = v11;

  return _swift_task_switch(sub_10060714C, v9, v11);
}

uint64_t sub_10060714C()
{
  if (qword_100AD0A20 != -1)
  {
    swift_once();
  }

  v4 = v1[10];
  v5 = qword_100B30F68;
  v6 = OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets;
  v7 = *(v4 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = qword_100B30F68 - v8;
    if (!__OFSUB__(qword_100B30F68, v8))
    {
      goto LABEL_5;
    }

LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v84 = _CocoaArrayWrapper.endIndex.getter();
  v9 = v5 - v84;
  if (__OFSUB__(v5, v84))
  {
    goto LABEL_77;
  }

LABEL_5:
  v10 = v1[9];
  v3 = v10[2];
  v5 = v10[4];
  v11 = v5 >> 62;
  v115 = v5 >> 62;
  v116 = v5;
  if (v3 == 1)
  {
    if (v11)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      if (v26)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v26 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
LABEL_11:
        v113 = v9;
        v0 = _swiftEmptyArrayStorage;
        goto LABEL_14;
      }
    }

    v85 = v1[6];
    v86 = type metadata accessor for SuggestionMergeConflict(v26);
    (*(*(v86 - 8) + 56))(v85, 1, 1, v86);
    goto LABEL_103;
  }

  v12 = v1[10];
  v13 = v10[3];
  v15 = *v10;
  v14 = v10[1];
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v15;
  *(v16 + 32) = v14 & 1;
  *(v16 + 40) = v3;
  *(v16 + 48) = v13;

  sub_1003A7574(v15, v14, v3, v13);
  v17 = v13;
  v18 = v3;
  v19 = sub_100049F2C();
  if (v19)
  {
    v20 = v1[11];
    sub_10053256C(v19);
    v22 = v21;

    if ((v20 & 1) == 0)
    {
      v24 = v1[6];

      v25 = type metadata accessor for SuggestionMergeConflict(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
LABEL_103:
      v110 = v1[1];

      return v110();
    }
  }

  v117 = v17;
  v113 = v9;
  v27 = swift_allocObject();
  *(v27 + 16) = &unk_1009606E8;
  *(v27 + 24) = v16;
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1009606F0;
  *(v5 + 24) = v27;

  v0 = sub_1003E5F28(0, 1, 1, _swiftEmptyArrayStorage);
  v29 = *(v0 + 2);
  v28 = *(v0 + 3);
  v2 = v29 + 1;
  if (v29 >= v28 >> 1)
  {
    goto LABEL_82;
  }

  while (1)
  {

    *(v0 + 2) = v2;
    v30 = &v0[2 * v29];
    *(v30 + 4) = &unk_1009606F8;
    *(v30 + 5) = v5;
    v11 = v115;
    v5 = v116;
LABEL_14:
    v31 = v1[10];
    v1[2] = v0;
    v117 = *(v31 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
    v114 = v3;
    v28 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v11)
    {
LABEL_78:
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = _swiftEmptyArrayStorage;
    v111 = v6;
    v112 = v4;
    if (!v29)
    {
      v32 = _swiftEmptyArrayStorage;
      goto LABEL_34;
    }

    if (v29 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_82:
    v0 = sub_1003E5F28((v28 > 1), v2, 1, v0);
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v32 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage;
    do
    {
      v34 = v1[10];
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v36 + 24) = v34;
      type metadata accessor for MultiPinMapAsset(0);
      if (swift_dynamicCastClass() && v117)
      {
        v37 = swift_allocObject();
        *(v37 + 16) = &unk_100960668;
        *(v37 + 24) = v36;
        v38 = swift_allocObject();
        *(v38 + 16) = &unk_1009606A8;
        *(v38 + 24) = v37;

        swift_unknownObjectRetain();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1003E5F28(0, *(v18 + 2) + 1, 1, v18);
        }

        v40 = *(v18 + 2);
        v39 = *(v18 + 3);
        if (v40 >= v39 >> 1)
        {
          v18 = sub_1003E5F28((v39 > 1), v40 + 1, 1, v18);
        }

        swift_unknownObjectRelease();

        *(v18 + 2) = v40 + 1;
        v41 = &v18[2 * v40];
        *(v41 + 4) = &unk_1009606B0;
        *(v41 + 5) = v38;
      }

      else
      {
        v42 = swift_allocObject();
        *(v42 + 16) = &unk_100960668;
        *(v42 + 24) = v36;
        v43 = swift_allocObject();
        *(v43 + 16) = &unk_100952210;
        *(v43 + 24) = v42;

        swift_unknownObjectRetain();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1003E5F4C(0, *(v32 + 2) + 1, 1, v32);
        }

        v45 = *(v32 + 2);
        v44 = *(v32 + 3);
        if (v45 >= v44 >> 1)
        {
          v32 = sub_1003E5F4C((v44 > 1), v45 + 1, 1, v32);
        }

        *(v32 + 2) = v45 + 1;
        v33 = &v32[3 * v45];
        *(v33 + 4) = v35;
        *(v33 + 5) = &unk_100960680;
        *(v33 + 6) = v43;
      }

      v3 = (v3 + 1);
    }

    while (v29 != v3);
  }

  else
  {
    v3 = (v5 + 32);
    v32 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage;
    do
    {
      v54 = v1[10];
      v55 = *v3;
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = v54;
      type metadata accessor for MultiPinMapAsset(0);
      if (swift_dynamicCastClass())
      {
        v57 = v117 == 0;
      }

      else
      {
        v57 = 1;
      }

      if (v57)
      {
        v58 = swift_allocObject();
        *(v58 + 16) = &unk_1009606B8;
        *(v58 + 24) = v56;
        v59 = swift_allocObject();
        *(v59 + 16) = &unk_1009606C0;
        *(v59 + 24) = v58;
        v60 = v55;

        v61 = v60;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1003E5F4C(0, *(v32 + 2) + 1, 1, v32);
        }

        v63 = *(v32 + 2);
        v62 = *(v32 + 3);
        if (v63 >= v62 >> 1)
        {
          v32 = sub_1003E5F4C((v62 > 1), v63 + 1, 1, v32);
        }

        *(v32 + 2) = v63 + 1;
        v64 = &v32[3 * v63];
        *(v64 + 4) = v61;
        *(v64 + 5) = &unk_1009606C8;
        *(v64 + 6) = v59;
      }

      else
      {
        v65 = swift_allocObject();
        *(v65 + 16) = &unk_1009606B8;
        *(v65 + 24) = v56;
        v66 = swift_allocObject();
        *(v66 + 16) = &unk_1009606D0;
        *(v66 + 24) = v65;
        v67 = v55;

        v68 = v67;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_1003E5F28(0, *(v18 + 2) + 1, 1, v18);
        }

        v71 = *(v18 + 2);
        v70 = *(v18 + 3);
        if (v71 >= v70 >> 1)
        {
          v18 = sub_1003E5F28((v70 > 1), v71 + 1, 1, v18);
        }

        *(v18 + 2) = v71 + 1;
        v53 = &v18[2 * v71];
        *(v53 + 4) = &unk_1009606D8;
        *(v53 + 5) = v66;
      }

      ++v3;
      --v29;
    }

    while (v29);
  }

LABEL_34:
  v46 = v113;
  if (v113)
  {
    v47 = v114;
    if (v113 >= 1)
    {
      v48 = *(v32 + 2);
      if (v113 < v48)
      {
        if (v115)
        {
          v49 = _CocoaArrayWrapper.endIndex.getter();
          v48 = *(v32 + 2);
        }

        else
        {
          v49 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v81 = v48 - v113;
        if ((v1[11] & 4) == 0)
        {
          v77 = v1[6];

          *v77 = v49;
          v77[1] = v81;
          v80 = type metadata accessor for SuggestionMergeConflict(0);
          goto LABEL_69;
        }

        if (__OFSUB__(v48, v81))
        {
          __break(1u);
        }

        else if ((v113 & 0x8000000000000000) == 0)
        {
          if (v48 >= v113)
          {
            if (v48 == v113)
            {
              goto LABEL_92;
            }

            sub_1006102F0(v32, (v32 + 4), 0, (2 * v113) | 1);
            v83 = v82;
            goto LABEL_91;
          }

          goto LABEL_85;
        }

        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }
  }

  else
  {
    v50 = *(v32 + 2);
    v47 = v114;
    if (v50 >= 2)
    {
      v51 = v1[6];

      v52 = type metadata accessor for SuggestionMergeConflict(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
LABEL_102:

      goto LABEL_103;
    }

    if (v50 == 1)
    {
      v3 = *(v32 + 4);
      v46 = *(v112 + v111);
      if (!(v46 >> 62))
      {
        result = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v73 = result - 1;
        if (!__OFSUB__(result, 1))
        {
          goto LABEL_61;
        }

        goto LABEL_88;
      }

LABEL_86:
      result = _CocoaArrayWrapper.endIndex.getter();
      v73 = result - 1;
      if (!__OFSUB__(result, 1))
      {
LABEL_61:
        if ((v46 & 0xC000000000000001) == 0)
        {
          if ((v73 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v73 < *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v74 = *(v46 + 8 * v73 + 32);
            v75 = v3;
            v76 = v74;
            if ((v1[11] & 2) == 0)
            {
LABEL_65:
              v77 = v1[6];

              v78 = OBJC_IVAR____TtC7Journal5Asset_type;
              v79 = type metadata accessor for AssetType();
              (*(*(v79 - 8) + 16))(v77, v3 + v78, v79);

              v80 = type metadata accessor for SuggestionMergeConflict(0);
LABEL_69:
              swift_storeEnumTagMultiPayload();
              (*(*(v80 - 8) + 56))(v77, 0, 1, v80);
              goto LABEL_102;
            }

LABEL_90:
            v88 = v1[10];
            sub_1000F24EC(&qword_100AE0D90, &qword_100952220);
            v83 = swift_allocObject();
            *(v83 + 16) = xmmword_100940080;
            v89 = swift_allocObject();
            v89[2] = v3;
            v89[3] = v88;
            v89[4] = v76;
            v90 = swift_allocObject();
            *(v90 + 16) = &unk_100960698;
            *(v90 + 24) = v89;
            *(v83 + 32) = v3;
            *(v83 + 40) = &unk_1009606A0;
            *(v83 + 48) = v90;

            v91 = v3;
LABEL_91:

            v32 = v83;
            goto LABEL_92;
          }

          __break(1u);
          return result;
        }

LABEL_89:
        v87 = v3;

        v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        if ((v1[11] & 2) == 0)
        {
          goto LABEL_65;
        }

        goto LABEL_90;
      }

LABEL_88:
      __break(1u);
      goto LABEL_89;
    }
  }

LABEL_92:
  v92 = v47 != 1;
  v1[16] = v32;
  v93 = v1[12];
  _StringGuts.grow(_:)(75);
  v94._countAndFlagsBits = 0xD000000000000024;
  v94._object = 0x80000001008FEAB0;
  String.append(_:)(v94);
  v1[3] = v92;
  v95._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v95);

  v96._countAndFlagsBits = 0xD000000000000011;
  v96._object = 0x80000001008FEAE0;
  String.append(_:)(v96);
  v1[4] = *(v18 + 2);

  v97._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v97);

  v98._object = 0x80000001008FEB00;
  v98._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v98);
  v99 = *(v32 + 2);
  v1[5] = v99;
  v100._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v100);

  v93(0, 0xE000000000000000);

  sub_1006ADDA4(v18);
  if (v99)
  {
    sub_10019A060(0, v99, 0);
    v101 = _swiftEmptyArrayStorage[2];
    v102 = (v32 + 5);
    do
    {
      v103 = _swiftEmptyArrayStorage[3];
      v118 = *v102;

      if (*&v101 >= *&v103 >> 1)
      {
        sub_10019A060((*&v103 > 1uLL), *&v101 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v101 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v101 + 4] = v118;
      v102 = (v102 + 24);
      ++*&v101;
      --v99;
    }

    while (v99);
  }

  sub_1006ADDA4(_swiftEmptyArrayStorage);
  v104 = v1[2];
  v1[17] = v104;
  v105 = v104[2];
  v1[18] = v105;
  if (!v105)
  {

    v108 = v1[6];
    v109 = type metadata accessor for SuggestionMergeConflict(0);
    (*(*(v109 - 8) + 56))(v108, 1, 1, v109);
    goto LABEL_102;
  }

  v1[19] = 0;
  v106 = v104[4];
  v1[20] = v104[5];

  v119 = (v106 + *v106);
  v107 = swift_task_alloc();
  v1[21] = v107;
  *v107 = v1;
  v107[1] = sub_1006080A8;

  return v119();
}

uint64_t sub_1006080A8()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1006081C8, v3, v2);
}

uint64_t sub_1006081C8()
{
  v1 = v0[19];
  v2 = v0[18];

  if (v1 + 1 == v2)
  {

    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_100608380;
    v5 = v0[7];
    v4 = v0[8];

    return sub_10062833C(v5, v4);
  }

  else
  {
    v7 = v0[19] + 1;
    v0[19] = v7;
    v8 = v0[17] + 16 * v7;
    v9 = *(v8 + 32);
    v0[20] = *(v8 + 40);

    v11 = (v9 + *v9);
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_1006080A8;

    return v11();
  }
}

uint64_t sub_100608380()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1006084A0, v3, v2);
}

uint64_t sub_1006084A0()
{
  v1 = *(v0 + 48);
  v2 = type metadata accessor for SuggestionMergeConflict(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100608548(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 80) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = type metadata accessor for AssetSource();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100608610, 0, 0);
}

uint64_t sub_100608610()
{
  v1 = *(v0 + 80);
  (*(*(v0 + 56) + 104))(*(v0 + 64), enum case for AssetSource.suggestionSheet(_:), *(v0 + 48));
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_100398650;
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);

  return sub_100530984(0, 0, v6, v1 & 1, v4, v5, v3);
}

uint64_t sub_1006086E4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AssetPlacement();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1006087A4, 0, 0);
}

uint64_t sub_1006087A4(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  *v2 = static AssetPlacement.maxGridCount.getter();
  (*(v3 + 104))(v2, enum case for AssetPlacement.grid(_:), v4);
  v5 = swift_task_alloc();
  v1[7] = v5;
  *v5 = v1;
  v5[1] = sub_100398968;
  v6 = v1[6];
  v7 = v1[2];
  v8 = v1[3];

  return sub_10044C1DC(0, 0, v7, v8, 0, v6, 1);
}

uint64_t sub_100608898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = type metadata accessor for AssetPlacement();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[10] = v8;
  v5[11] = v10;

  return _swift_task_switch(sub_100608990, v8, v10);
}

uint64_t sub_100608990(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v5 = v1[6];
  v4 = v1[7];
  *v2 = static AssetPlacement.maxGridCount.getter();
  (*(v3 + 104))(v2, enum case for AssetPlacement.grid(_:), v4);
  v6 = swift_task_alloc();
  v1[12] = v6;
  *v6 = v1;
  v6[1] = sub_100398CC0;
  v7 = v1[9];
  v8 = v1[4];
  v9 = v1[5];
  v11 = v1[2];
  v10 = v1[3];

  return sub_10044C1DC(v11, v10, v8, v9, v5, v7, 1);
}

uint64_t sub_100608A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[43] = a6;
  v7[44] = v6;
  v7[41] = a4;
  v7[42] = a5;
  v7[39] = a2;
  v7[40] = a3;
  v7[38] = a1;
  v7[45] = type metadata accessor for PendingPhotoAsset(0);
  v7[46] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v7[47] = v9;
  v7[48] = *(v9 - 8);
  v7[49] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v7[50] = v10;
  v7[51] = v12;

  return _swift_task_switch(sub_100608BC0, v10, v12);
}

uint64_t sub_100608BC0(__n128 a1)
{
  v3 = v1[48];
  v2 = v1[49];
  v5 = v1[46];
  v4 = v1[47];
  v7 = v1[43];
  v6 = v1[44];
  v8 = v1[42];
  v9 = v1[40];
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v11 = v10;
  v1[52] = v10;
  v12 = *(v3 + 8);
  v1[53] = v12;
  v1[54] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v2, v4);
  v1[35] = v11;
  v1[29] = 0;
  v1[31] = 0;
  v1[32] = 0;
  v1[30] = 0;
  sub_100614C94(v9, v5, type metadata accessor for PendingPhotoAsset);
  v13 = swift_task_alloc();
  v1[55] = v13;
  v13[2] = v1 + 35;
  v13[3] = v9;
  v13[4] = v1 + 29;
  v13[5] = v8;
  v13[6] = v6;
  v13[7] = v7;
  v14 = swift_task_alloc();
  v1[56] = v14;
  v15 = type metadata accessor for Asset(0);
  *v14 = v1;
  v14[1] = sub_100608D58;
  v16 = v1[38];
  v17 = v1[39];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 36, v16, v17, 0xD000000000000020, 0x80000001008FEA70, sub_100614ED4, v13, v15);
}

uint64_t sub_100608D58()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_10060AA4C;
  }

  else
  {

    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_100608E74;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100608E74(uint64_t a1)
{
  v2 = *(v1 + 288);
  *(v1 + 464) = v2;
  if (static Task<>.isCancelled.getter())
  {
    sub_100614EE4(*(v1 + 368), type metadata accessor for PendingPhotoAsset);
    type metadata accessor for CancellationError();
    sub_10008D1A8(&qword_100AE0D58, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v3 = *(v1 + 8);

    return v3();
  }

  v5 = *(v1 + 456);
  v6 = *(v1 + 424);
  v7 = *(v1 + 392);
  v8 = *(v1 + 376);
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  *(v1 + 472) = v9;
  v6(v7, v8);
  NSManagedObjectContext.performAndWait<A>(_:)();
  v10 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  if (*(v1 + 680))
  {
    v11 = *(v1 + 328);
    v12 = *(v1 + 368) + *(*(v1 + 360) + 20);
    swift_beginAccess();
    v13 = *(v11 + v10);
    v14 = swift_task_alloc();
    *(v14 + 16) = v12;

    v15 = sub_100068DDC(sub_100068DC0, v14, v13);
    *(v1 + 600) = v15;

    if (v15)
    {
      sub_1000F24EC(&unk_100AE1A40, &qword_10094C3D0);
      v16 = type metadata accessor for UUID();
      v17 = *(v16 - 8);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100940080;
      (*(v17 + 16))(v19 + v18, v15 + OBJC_IVAR____TtC7Journal5Asset_id, v16);
      v20 = sub_1004960D4(v19);
      *(v1 + 608) = v20;
      swift_setDeallocating();
      (*(v17 + 8))(v19 + v18, v16);
      swift_deallocClassInstance();
      v21 = swift_task_alloc();
      *(v1 + 616) = v21;
      *v21 = v1;
      v22 = sub_10060A63C;
LABEL_15:
      v21[1] = v22;
      v44 = *(v1 + 304);
      v43 = *(v1 + 312);

      return sub_10056824C(v44, v43, v20);
    }

    v32 = 0xD000000000000047;
    v33 = "ace placeholder asset.";
    v34 = 1;
LABEL_19:
    v45 = v33 | 0x8000000000000000;
    v46 = *(v1 + 464);
    v47 = *(v1 + 416);
    v48 = *(v1 + 368);
    swift_beginAccess();
    v50 = *(v1 + 232);
    v49 = *(v1 + 240);
    type metadata accessor for PhotoFetchError();
    v51 = swift_allocObject();
    v52 = v51;
    *(v51 + 56) = v32;
    *(v51 + 64) = v45;
    *(v51 + 72) = v34;
    *(v51 + 16) = v47;
    if (v49)
    {
      v53 = v50;
    }

    else
    {
      v53 = 0x3030302E30;
    }

    if (v49)
    {
      v54 = v49;
    }

    else
    {
      v54 = 0xE500000000000000;
    }

    *(v51 + 24) = v53;
    *(v51 + 32) = v54;
    *(v51 + 40) = 0x3030302E30;
    *(v51 + 48) = 0xE500000000000000;

    sub_100614EE4(v48, type metadata accessor for PendingPhotoAsset);

    v55 = *(v1 + 8);

    return v55(v52);
  }

  v23 = *(v1 + 360);
  v24 = *(v1 + 328);
  v25 = *(v1 + 320) + *(v23 + 20);
  *(v1 + 480) = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v26 = *(v24 + v10);
  v27 = swift_task_alloc();
  *(v27 + 16) = v25;

  v28 = sub_100068DDC(sub_100068DC0, v27, v26);
  *(v1 + 488) = v28;
  *(v1 + 496) = v5;

  if (!v28)
  {
    v35 = *(v1 + 368) + *(v23 + 20);
    v36 = *(v24 + v10);
    v37 = swift_task_alloc();
    *(v37 + 16) = v35;

    v38 = sub_100068DDC(sub_100068DC0, v37, v36);
    *(v1 + 568) = v38;

    if (v38)
    {
      sub_1000F24EC(&unk_100AE1A40, &qword_10094C3D0);
      v39 = type metadata accessor for UUID();
      v40 = *(v39 - 8);
      v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_100940080;
      (*(v40 + 16))(v42 + v41, v38 + OBJC_IVAR____TtC7Journal5Asset_id, v39);
      v20 = sub_1004960D4(v42);
      *(v1 + 576) = v20;
      swift_setDeallocating();
      (*(v40 + 8))(v42 + v41, v39);
      swift_deallocClassInstance();
      v21 = swift_task_alloc();
      *(v1 + 584) = v21;
      *v21 = v1;
      v22 = sub_10060A230;
      goto LABEL_15;
    }

    v34 = 0;
    v33 = "ivate.swiftinterface";
    v32 = 0xD00000000000004FLL;
    goto LABEL_19;
  }

  v29 = swift_task_alloc();
  *(v1 + 504) = v29;
  *v29 = v1;
  v29[1] = sub_1006095FC;
  v31 = *(v1 + 304);
  v30 = *(v1 + 312);

  return sub_100566FD4(v31, v30, v28, v2);
}

uint64_t sub_1006095FC(char a1)
{
  v2 = *v1;
  *(*v1 + 681) = a1;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);

  return _swift_task_switch(sub_100609724, v4, v3);
}

uint64_t sub_100609724()
{
  v1 = *(v0 + 681);
  v2 = *(v0 + 472);
  v3 = *(v0 + 424);
  v4 = *(v0 + 392);
  v5 = *(v0 + 376);
  sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v8 = v7;
  v3(v4, v5);
  *(v6 + 56) = &type metadata for Double;
  *(v6 + 64) = &protocol witness table for Double;
  *(v6 + 32) = v8 - v2;
  v9 = String.init(format:_:)();
  v11 = v10;
  *(v0 + 512) = v9;
  *(v0 + 520) = v10;
  swift_beginAccess();
  *(v0 + 248) = v9;
  *(v0 + 256) = v11;
  if (v1)
  {
    sub_100614EE4(*(v0 + 368), type metadata accessor for PendingPhotoAsset);
    v12 = swift_task_alloc();
    *(v0 + 560) = v12;
    *v12 = v0;
    v12[1] = sub_10060A010;
    v14 = *(v0 + 304);
    v13 = *(v0 + 312);

    return sub_10062833C(v14, v13);
  }

  else
  {
    v16 = *(v0 + 368) + *(*(v0 + 360) + 20);
    v17 = *(*(v0 + 328) + *(v0 + 480));
    v18 = swift_task_alloc();
    *(v18 + 16) = v16;

    v19 = sub_100068DDC(sub_100068DC0, v18, v17);
    *(v0 + 528) = v19;

    if (v19)
    {
      sub_1000F24EC(&unk_100AE1A40, &qword_10094C3D0);
      v20 = type metadata accessor for UUID();
      v21 = *(v20 - 8);
      v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100940080;
      (*(v21 + 16))(v23 + v22, v19 + OBJC_IVAR____TtC7Journal5Asset_id, v20);
      v24 = sub_1004960D4(v23);
      *(v0 + 536) = v24;
      swift_setDeallocating();
      (*(v21 + 8))(v23 + v22, v20);
      swift_deallocClassInstance();
      v25 = swift_task_alloc();
      *(v0 + 544) = v25;
      *v25 = v0;
      v25[1] = sub_100609BEC;
      v27 = *(v0 + 304);
      v26 = *(v0 + 312);

      return sub_10056824C(v27, v26, v24);
    }

    else
    {
      v28 = *(v0 + 520);
      v29 = *(v0 + 512);
      v30 = *(v0 + 488);
      v31 = *(v0 + 464);
      v32 = *(v0 + 416);
      v33 = *(v0 + 368);
      swift_beginAccess();
      v35 = *(v0 + 232);
      v34 = *(v0 + 240);
      type metadata accessor for PhotoFetchError();
      v36 = swift_allocObject();
      v37 = v36;
      *(v36 + 56) = 0xD000000000000046;
      *(v36 + 64) = 0x80000001008ED0F0;
      *(v36 + 72) = 0;
      *(v36 + 16) = v32;
      v38 = 0x3030302E30;
      if (v34)
      {
        v38 = v35;
      }

      v39 = 0xE500000000000000;
      if (v34)
      {
        v39 = v34;
      }

      *(v36 + 24) = v38;
      *(v36 + 32) = v39;
      *(v36 + 40) = v29;
      *(v36 + 48) = v28;

      sub_100614EE4(v33, type metadata accessor for PendingPhotoAsset);

      v40 = *(v0 + 8);

      return v40(v37);
    }
  }
}

uint64_t sub_100609BEC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[69] = v3;
  *v3 = v2;
  v3[1] = sub_100609D90;
  v4 = v1[39];
  v5 = v1[38];

  return sub_10062833C(v5, v4);
}

uint64_t sub_100609D90()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return _swift_task_switch(sub_100609EB0, v3, v2);
}

uint64_t sub_100609EB0()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v3 = *(v0 + 488);
  v4 = *(v0 + 464);
  v5 = *(v0 + 416);
  v6 = *(v0 + 368);
  swift_beginAccess();
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  type metadata accessor for PhotoFetchError();
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 56) = 0xD000000000000046;
  *(v9 + 64) = 0x80000001008ED0F0;
  *(v9 + 72) = 0;
  *(v9 + 16) = v5;
  v11 = 0x3030302E30;
  if (v7)
  {
    v11 = v8;
  }

  v12 = 0xE500000000000000;
  if (v7)
  {
    v12 = v7;
  }

  *(v9 + 24) = v11;
  *(v9 + 32) = v12;
  *(v9 + 40) = v2;
  *(v9 + 48) = v1;

  sub_100614EE4(v6, type metadata accessor for PendingPhotoAsset);

  v13 = *(v0 + 8);

  return v13(v10);
}

uint64_t sub_10060A010()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return _swift_task_switch(sub_10060A130, v3, v2);
}

uint64_t sub_10060A130()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[61];
  v4 = v0[58];
  v5 = v0[52];
  swift_beginAccess();
  v6 = v0[29];
  v7 = v0[30];
  type metadata accessor for PhotoFetchResult();
  v8 = swift_allocObject();
  v8[2] = v5;

  v9 = 0x3030302E30;
  if (v7)
  {
    v9 = v6;
  }

  v10 = 0xE500000000000000;
  if (v7)
  {
    v10 = v7;
  }

  v8[3] = v9;
  v8[4] = v10;
  v8[5] = v2;
  v8[6] = v1;

  v11 = v0[1];

  return v11(v8);
}

uint64_t sub_10060A230()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[74] = v3;
  *v3 = v2;
  v3[1] = sub_10060A3D4;
  v4 = v1[39];
  v5 = v1[38];

  return sub_10062833C(v5, v4);
}

uint64_t sub_10060A3D4()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return _swift_task_switch(sub_10060A4F4, v3, v2);
}

uint64_t sub_10060A4F4()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 416);
  v3 = *(v0 + 368);
  swift_beginAccess();
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  type metadata accessor for PhotoFetchError();
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 56) = 0xD00000000000004FLL;
  *(v6 + 64) = 0x80000001008ED0A0;
  *(v6 + 72) = 0;
  *(v6 + 16) = v2;
  if (v4)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0x3030302E30;
  }

  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  *(v6 + 24) = v8;
  *(v6 + 32) = v9;
  *(v6 + 40) = 0x3030302E30;
  *(v6 + 48) = 0xE500000000000000;

  sub_100614EE4(v3, type metadata accessor for PendingPhotoAsset);

  v10 = *(v0 + 8);

  return v10(v7);
}

uint64_t sub_10060A63C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[78] = v3;
  *v3 = v2;
  v3[1] = sub_10060A7E0;
  v4 = v1[39];
  v5 = v1[38];

  return sub_10062833C(v5, v4);
}

uint64_t sub_10060A7E0()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return _swift_task_switch(sub_10060A900, v3, v2);
}

uint64_t sub_10060A900()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 416);
  v3 = *(v0 + 368);
  swift_beginAccess();
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  type metadata accessor for PhotoFetchError();
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 56) = 0xD000000000000047;
  *(v6 + 64) = 0x80000001008ED140;
  *(v6 + 72) = 1;
  *(v6 + 16) = v2;
  if (v4)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0x3030302E30;
  }

  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  *(v6 + 24) = v8;
  *(v6 + 32) = v9;
  *(v6 + 40) = 0x3030302E30;
  *(v6 + 48) = 0xE500000000000000;

  sub_100614EE4(v3, type metadata accessor for PendingPhotoAsset);

  v10 = *(v0 + 8);

  return v10(v7);
}

uint64_t sub_10060AA4C()
{
  v1 = v0[57];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[41];

  v0[33] = 0;
  v0[34] = 0xE000000000000000;
  v0[37] = v1;
  sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
  _print_unlocked<A, B>(_:_:)();
  v5 = v0[34];
  v0[79] = v0[33];
  v0[80] = v5;
  v6 = v2 + *(v3 + 20);
  v7 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = swift_task_alloc();
  *(v9 + 16) = v6;

  v10 = sub_100068DDC(sub_100069618, v9, v8);
  v0[81] = v10;

  if (v10)
  {
    sub_1000F24EC(&unk_100AE1A40, &qword_10094C3D0);
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100940080;
    (*(v12 + 16))(v14 + v13, v10 + OBJC_IVAR____TtC7Journal5Asset_id, v11);
    v15 = sub_1004960D4(v14);
    v0[82] = v15;
    swift_setDeallocating();
    (*(v12 + 8))(v14 + v13, v11);
    swift_deallocClassInstance();
    v16 = swift_task_alloc();
    v0[83] = v16;
    *v16 = v0;
    v16[1] = sub_10060ADF0;
    v18 = v0[38];
    v17 = v0[39];

    return sub_10056824C(v18, v17, v15);
  }

  else
  {
    v20 = v0[80];
    v21 = v0[79];
    v22 = v0[52];
    v23 = v0[46];
    swift_beginAccess();
    v25 = v0[29];
    v24 = v0[30];
    type metadata accessor for PhotoFetchError();
    v26 = swift_allocObject();
    v27 = v26;
    *(v26 + 56) = v21;
    *(v26 + 64) = v20;
    *(v26 + 72) = 0;
    *(v26 + 16) = v22;
    if (v24)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0x3030302E30;
    }

    if (v24)
    {
      v29 = v24;
    }

    else
    {
      v29 = 0xE500000000000000;
    }

    *(v26 + 24) = v28;
    *(v26 + 32) = v29;
    *(v26 + 40) = 0x3030302E30;
    *(v26 + 48) = 0xE500000000000000;

    sub_100614EE4(v23, type metadata accessor for PendingPhotoAsset);

    v30 = v0[1];

    return v30(v27);
  }
}

uint64_t sub_10060ADF0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[84] = v3;
  *v3 = v2;
  v3[1] = sub_10060AF94;
  v4 = v1[39];
  v5 = v1[38];

  return sub_10062833C(v5, v4);
}

uint64_t sub_10060AF94()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return _swift_task_switch(sub_10060B0B4, v3, v2);
}

uint64_t sub_10060B0B4()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 416);
  v4 = *(v0 + 368);
  swift_beginAccess();
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  type metadata accessor for PhotoFetchError();
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 56) = v2;
  *(v7 + 64) = v1;
  *(v7 + 72) = 0;
  *(v7 + 16) = v3;
  if (v5)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0x3030302E30;
  }

  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  *(v7 + 24) = v9;
  *(v7 + 32) = v10;
  *(v7 + 40) = 0x3030302E30;
  *(v7 + 48) = 0xE500000000000000;

  sub_100614EE4(v4, type metadata accessor for PendingPhotoAsset);

  v11 = *(v0 + 8);

  return v11(v8);
}

void sub_10060B1F0(uint64_t a1, double *a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v76 = a6;
  v77 = a7;
  v75 = a5;
  v78 = a2;
  v79 = a4;
  v80 = a1;
  v73 = sub_1000F24EC(&qword_100AE0D78, &qword_1009521F0);
  v9 = *(v73 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v73);
  v72 = &v65 - v11;
  v12 = type metadata accessor for PendingPhotoAsset(0);
  v13 = v12 - 8;
  v71 = *(v12 - 8);
  v14 = *(v71 + 64);
  __chkstk_darwin(v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = [objc_allocWithZone(NSFileCoordinator) init];
  v83 = 0;
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v21 = v20;
  v22 = *(v17 + 8);
  v65 = v19;
  v68 = v16;
  v67 = v17 + 8;
  v66 = v22;
  v22(v19, v16);
  *a2 = v21;
  URL._bridgeToObjectiveC()(*(v13 + 32));
  v74 = v23;
  sub_100614C94(a3, v15, type metadata accessor for PendingPhotoAsset);
  v24 = v9;
  v69 = v9;
  v25 = *(v9 + 16);
  v26 = v72;
  v27 = v73;
  v25(v72, v80, v73);
  v28 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (*(v24 + 80) + v31 + 8) & ~*(v24 + 80);
  v33 = (v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v78;
  *(v34 + 16) = v79;
  *(v34 + 24) = v35;
  v36 = v34 + v28;
  v37 = v27;
  sub_100617828(v15, v36, type metadata accessor for PendingPhotoAsset);
  v39 = v75;
  v38 = v76;
  *(v34 + v29) = v75;
  *(v34 + v30) = v38;
  v40 = v70;
  *(v34 + v31) = v77;
  (*(v69 + 32))(v34 + v32, v26, v37);
  *(v34 + v33) = &v83;
  v41 = swift_allocObject();
  v41[2] = sub_100614F44;
  v41[3] = v34;
  aBlock[4] = sub_10029A69C;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10060ED1C;
  aBlock[3] = &unk_100A75E30;
  v42 = _Block_copy(aBlock);
  v43 = v39;

  aBlock[0] = 0;
  v44 = v74;
  [v40 coordinateReadingItemAtURL:v74 options:0 error:aBlock byAccessor:v42];
  _Block_release(v42);

  v45 = aBlock[0];
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
  }

  if (v45)
  {
    v46 = *v78;
    sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_100940080;
    v48 = v65;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v50 = v49;
    v66(v48, v68);
    *(v47 + 56) = &type metadata for Double;
    *(v47 + 64) = &protocol witness table for Double;
    *(v47 + 32) = v50 - v46;
    v51 = String.init(format:_:)();
    v53 = v52;
    v54 = v79;
    swift_beginAccess();
    *v54 = v51;
    v54[1] = v53;

    v81 = v45;
LABEL_6:
    CheckedContinuation.resume(throwing:)();
    goto LABEL_7;
  }

  v55 = v83;
  if (v83)
  {
    v56 = *v78;
    sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_100940080;
    swift_errorRetain();
    v58 = v65;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v60 = v59;
    v66(v58, v68);
    *(v57 + 56) = &type metadata for Double;
    *(v57 + 64) = &protocol witness table for Double;
    *(v57 + 32) = v60 - v56;
    v61 = String.init(format:_:)();
    v63 = v62;
    v64 = v79;
    swift_beginAccess();
    *v64 = v61;
    v64[1] = v63;

    v81 = v55;
    goto LABEL_6;
  }

LABEL_7:
}

void sub_10060B8B8(char *a1, uint64_t *a2, double *a3, void **a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v391 = a8;
  v390 = a7;
  v389 = a5;
  v397 = a1;
  v12 = sub_1000F24EC(&unk_100AD7C40, &unk_100941D20);
  __chkstk_darwin(v12 - 8);
  *&v401 = &v371[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  *&v410 = &v371[-v15];
  v409 = type metadata accessor for UTType();
  v375 = *(v409 - 8);
  __chkstk_darwin(v409);
  *&v405 = &v371[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v418 = &v371[-v18];
  __chkstk_darwin(v19);
  v398 = &v371[-v20];
  v387 = sub_1000F24EC(&unk_100AEE0A0, &unk_100943F50);
  __chkstk_darwin(v387);
  v388 = &v371[-v21];
  v386 = type metadata accessor for PhotoLibraryAssetMetadata();
  v385 = *(v386 - 8);
  __chkstk_darwin(v386);
  v376 = &v371[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v371[-v24];
  v403 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v403);
  v404 = &v371[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v420 = type metadata accessor for URL();
  v414 = *(v420 - 8);
  __chkstk_darwin(v420);
  v411 = &v371[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v379 = &v371[-v29];
  __chkstk_darwin(v30);
  *&v377 = &v371[-v31];
  __chkstk_darwin(v32);
  *&v381 = &v371[-v33];
  v413 = type metadata accessor for UUID();
  v408 = *(v413 - 8);
  __chkstk_darwin(v413);
  v395 = &v371[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v35);
  v419 = &v371[-v36];
  v417 = type metadata accessor for AssetType();
  v400 = *(v417 - 1);
  __chkstk_darwin(v417);
  v394 = &v371[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v38);
  v406 = &v371[-v39];
  v40 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v40 - 8);
  v380 = &v371[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v382 = &v371[-v43];
  __chkstk_darwin(v44);
  v396 = &v371[-v45];
  __chkstk_darwin(v46);
  v412 = &v371[-v47];
  v48 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v48 - 8);
  v378 = &v371[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v50);
  v384 = &v371[-v51];
  __chkstk_darwin(v52);
  *&v393 = &v371[-v53];
  __chkstk_darwin(v54);
  v416 = &v371[-v55];
  v56 = type metadata accessor for AssetSource();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v383 = &v371[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v59);
  *&v392 = &v371[-v60];
  __chkstk_darwin(v61);
  v399 = &v371[-v62];
  __chkstk_darwin(v63);
  v415 = &v371[-v64];
  v65 = type metadata accessor for Date();
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v68 = &v371[-((v67 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = *a3;
  sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_100940080;
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v72 = v71;
  (*(v66 + 8))(v68, v65);
  *(v70 + 56) = &type metadata for Double;
  *(v70 + 64) = &protocol witness table for Double;
  *(v70 + 32) = v72 - v69;
  v73 = String.init(format:_:)();
  v75 = v74;
  swift_beginAccess();
  *a2 = v73;
  a2[1] = v75;

  v76 = *a4;
  v77 = [v76 assetType];
  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v407 = v56;
  if (v78 != v81 || v80 != v82)
  {
    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v83)
    {
      v398 = v25;

      goto LABEL_6;
    }

    v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v191 = v190;
    if (v189 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v191 == v192)
    {
    }

    else
    {
      v216 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v216 & 1) == 0)
      {
        sub_100170130();
        v332 = swift_allocError();
        *v333 = 0;
        swift_willThrow();
LABEL_128:
        *a9 = v332;

        return;
      }
    }

    (*(v57 + 104))(v383, enum case for AssetSource.suggestionSheet(_:), v56);
    v217 = v414;
    v218 = *(v414 + 16);
    v219 = v384;
    v220 = v420;
    v416 = (v414 + 16);
    v415 = v218;
    (v218)(v384, v397, v420);
    (*(v217 + 56))(v219, 0, 1, v220);
    v221 = [v76 metadata];
    v222 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v223 = MOSuggestionAssetMetadataKeyPhotoLocalIdentifier;
    v424 = MOSuggestionAssetMetadataKeyPhotoLocalIdentifier;
    type metadata accessor for MOSuggestionAssetMetadataKey(0);
    sub_10008D1A8(&qword_100AD1C18, type metadata accessor for MOSuggestionAssetMetadataKey, &unk_10093FA10);
    v224 = v223;
    AnyHashable.init<A>(_:)();
    if (*(v222 + 16) && (v225 = sub_100361EDC(&v423), (v226 & 1) != 0))
    {
      sub_10000BA20(*(v222 + 56) + 32 * v225, &v424);
      sub_100177B94(&v423);

      v227 = swift_dynamicCast();
      v228 = v421;
      if (!v227)
      {
        v228 = 0;
      }

      v394 = v228;
      if (v227)
      {
        v229 = v422;
      }

      else
      {
        v229 = 0;
      }

      v395 = v229;
    }

    else
    {

      sub_100177B94(&v423);
      v394 = 0;
      v395 = 0;
    }

    v230 = [v76 metadata];
    v231 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v421 = MOSuggestionAssetMetadataKeyPhotoTakenDate;
    v232 = MOSuggestionAssetMetadataKeyPhotoTakenDate;
    AnyHashable.init<A>(_:)();
    if (*(v231 + 16) && (v233 = sub_100361EDC(&v423), (v234 & 1) != 0))
    {
      sub_10000BA20(*(v231 + 56) + 32 * v233, &v424);
      sub_100177B94(&v423);

      v235 = v382;
      v236 = swift_dynamicCast();
      (*(v66 + 56))(v235, v236 ^ 1u, 1, v65);
    }

    else
    {

      sub_100177B94(&v423);
      (*(v66 + 56))(v382, 1, 1, v65);
    }

    v237 = [v76 metadata];
    v238 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v421 = MOSuggestionAssetMetadataKeyPhotoBestSquareCropRect;
    v239 = MOSuggestionAssetMetadataKeyPhotoBestSquareCropRect;
    AnyHashable.init<A>(_:)();
    if (*(v238 + 16) && (v240 = sub_100361EDC(&v423), (v241 & 1) != 0))
    {
      sub_10000BA20(*(v238 + 56) + 32 * v240, &v424);
      sub_100177B94(&v423);

      sub_1000065A8(0, &qword_100AEB650, MOSuggestionAssetPhotoCropRect_ptr);
      if (swift_dynamicCast())
      {
        v242 = v421;
        [v421 cgRect];
        v393 = *&v243;
        v392 = *&v244;
        v381 = *&v245;
        v377 = *&v246;

        v247 = 0;
        v248 = v76;
LABEL_77:
        v249 = [v248 metadata];
        v250 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v421 = MOSuggestionAssetMetadataKeyPhotoBestLandscapeCropRect;
        v251 = MOSuggestionAssetMetadataKeyPhotoBestLandscapeCropRect;
        AnyHashable.init<A>(_:)();
        if (*(v250 + 16) && (v252 = sub_100361EDC(&v423), (v253 & 1) != 0))
        {
          sub_10000BA20(*(v250 + 56) + 32 * v252, &v424);
          sub_100177B94(&v423);

          sub_1000065A8(0, &qword_100AEB650, MOSuggestionAssetPhotoCropRect_ptr);
          if (swift_dynamicCast())
          {
            v254 = v421;
            [v421 cgRect];
            v256 = v255;
            v258 = v257;
            v260 = v259;
            v262 = v261;

            v263 = 0;
            v264 = v76;
LABEL_83:
            v265 = [v264 metadata];
            v266 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v421 = MOSuggestionAssetMetadataKeyPhotoBestPortraitCropRect;
            v267 = MOSuggestionAssetMetadataKeyPhotoBestPortraitCropRect;
            AnyHashable.init<A>(_:)();
            if (*(v266 + 16) && (v268 = sub_100361EDC(&v423), (v269 & 1) != 0))
            {
              sub_10000BA20(*(v266 + 56) + 32 * v268, &v424);
              sub_100177B94(&v423);

              sub_1000065A8(0, &qword_100AEB650, MOSuggestionAssetPhotoCropRect_ptr);
              v270 = swift_dynamicCast();
              v271 = v418;
              if (v270)
              {
                v272 = v421;
                [v421 cgRect];
                v274 = v273;
                v276 = v275;
                v278 = v277;
                v280 = v279;

                LODWORD(v374) = 0;
                goto LABEL_89;
              }
            }

            else
            {

              sub_100177B94(&v423);
              v271 = v418;
            }

            LODWORD(v374) = 1;
            v274 = 0.0;
            v276 = 0.0;
            v278 = 0.0;
            v280 = 0.0;
LABEL_89:
            v281 = v406;
            (v400[13])(v406, enum case for AssetType.livePhoto(_:), v417);
            v282 = v399;
            (*(v57 + 16))(v399, v383, v56);
            v283 = v419;
            UUID.init()();
            v284 = objc_allocWithZone(type metadata accessor for LivePhotoAsset(0));
            v397 = sub_100116748(v283, v281, v282);
            v285 = v378;
            sub_1000082B4(v384, v378, &unk_100AD6DD0, &qword_1009437C0);
            v286 = v414;
            v287 = v420;
            if ((*(v414 + 48))(v285, 1, v420) == 1)
            {
              sub_100004F84(v285, &unk_100AD6DD0, &qword_1009437C0);
LABEL_135:
              sub_1000082B4(v382, v380, &unk_100AD4790, &unk_10093B4E0);
              x = v393;
              y = v392;
              width = v381;
              height = v377;
              if (v247)
              {
                x = CGRectZero.origin.x;
                y = CGRectZero.origin.y;
                width = CGRectZero.size.width;
                height = CGRectZero.size.height;
              }

              v361 = NSStringFromCGRect(*&x);
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              if (v263)
              {
                v256 = CGRectZero.origin.x;
                v258 = CGRectZero.origin.y;
                v260 = CGRectZero.size.width;
                v262 = CGRectZero.size.height;
              }

              v429.origin.x = v256;
              v429.origin.y = v258;
              v429.size.width = v260;
              v429.size.height = v262;
              v362 = NSStringFromCGRect(v429);
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              if (v374)
              {
                v274 = CGRectZero.origin.x;
                v276 = CGRectZero.origin.y;
                v278 = CGRectZero.size.width;
                v280 = CGRectZero.size.height;
              }

              v430.origin.x = v274;
              v430.origin.y = v276;
              v430.size.width = v278;
              v430.size.height = v280;
              v363 = NSStringFromCGRect(v430);
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v364 = v376;
              PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
              sub_100004F84(v384, &unk_100AD6DD0, &qword_1009437C0);
              (*(v57 + 8))(v383, v407);
              sub_100004F84(v382, &unk_100AD4790, &unk_10093B4E0);
              v365 = v388;
              (*(v385 + 32))(v388, v364, v386);
              swift_storeEnumTagMultiPayload();
              sub_1000F24EC(&unk_100AEE0B0, &unk_100943F60);
              v366 = swift_allocObject();
              v367 = *(*v366 + 104);
              v368 = sub_1000F24EC(&qword_100AD5B20, qword_1009521A0);
              (*(*(v368 - 8) + 56))(v366 + v367, 1, 1, v368);
              *(v366 + *(*v366 + 112)) = xmmword_100941EE0;
              sub_100021CEC(v365, v366 + *(*v366 + 120), &unk_100AEE0A0, &unk_100943F50);
              v323 = v397;
              *&v397[OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata] = v366;
              goto LABEL_142;
            }

            v372 = v263;
            LODWORD(v373) = v247;
            (*(v286 + 32))(v379, v285, v287);
            v288 = v397;
            v289 = sub_10011446C();
            v290 = *(v289 + 2);
            v402 = v57;
            if (v290)
            {
              v291 = (*(v286 + 80) + 32) & ~*(v286 + 80);
              v378 = v289;
              v292 = v289 + v291;
              v412 = *(v286 + 72);
              v417 = v375 + 48;
              v400 = (v375 + 32);
              v396 = (v408 + 8);
              v406 = (v286 + 8);
              v293 = v420;
              v294 = *&v401;
              v295 = v411;
              v399 = v375 + 8;
              while (1)
              {
                (v415)(v295, v292, v293);
                URL.pathExtension.getter();
                static UTType.data.getter();
                v296 = *&v410;
                UTType.init(filenameExtension:conformingTo:)();
                v297 = *v417;
                v298 = v409;
                if ((*v417)(v296, 1, v409) == 1)
                {
                  sub_100004F84(v296, &unk_100AD7C40, &unk_100941D20);
                  v299 = v298;
                }

                else
                {
                  v300 = v398;
                  (*v400)(v398, v296, v298);
                  static UTType.image.getter();
                  v301 = UTType.conforms(to:)();
                  v302 = *v399;
                  (*v399)(v271, v298);
                  v302(v300, v298);
                  v299 = v298;
                  if (v301)
                  {
                    v303 = v404;
                    v295 = v411;
                    v293 = v420;
                    (v415)(v404, v411, v420);
                    type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
                    swift_storeEnumTagMultiPayload();
                    goto LABEL_104;
                  }
                }

                v295 = v411;
                URL.pathExtension.getter();
                v271 = v418;
                static UTType.data.getter();
                UTType.init(filenameExtension:conformingTo:)();
                v304 = v297(v294, 1, v299);
                v305 = v405;
                if (v304 == 1)
                {
                  v293 = v420;
                  (*v406)(v295, v420);
                  sub_100004F84(v294, &unk_100AD7C40, &unk_100941D20);
                }

                else
                {
                  (*v400)(COERCE_CGFLOAT(*&v405), v294, v299);
                  static UTType.video.getter();
                  v306 = UTType.conforms(to:)();
                  v307 = *v399;
                  (*v399)(v271, v299);
                  if (v306)
                  {
                    v307(*&v305, v299);
LABEL_103:
                    v303 = v404;
                    v293 = v420;
                    (v415)(v404, v295, v420);
                    type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
                    swift_storeEnumTagMultiPayload();
LABEL_104:
                    swift_storeEnumTagMultiPayload();
                    v309 = v419;
                    UUID.init()();
                    v310 = UUID.uuidString.getter();
                    v312 = v311;
                    (*v396)(v309, v413);
                    type metadata accessor for AssetAttachment(0);
                    v313 = swift_allocObject();
                    *(v313 + 16) = 0;
                    sub_100617828(v303, v313 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
                    v314 = (v313 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
                    *v314 = v310;
                    v314[1] = v312;
                    v315 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
                    v316 = v397;
                    swift_beginAccess();
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*((*&v316[v315] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v316[v315] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      v375 = *((*&v316[v315] & 0xFFFFFFFFFFFFFF8) + 0x10);
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    swift_endAccess();
                    (*v406)(v295, v293);
                    v294 = *&v401;
                    v271 = v418;
                    goto LABEL_94;
                  }

                  static UTType.movie.getter();
                  v308 = UTType.conforms(to:)();
                  v307(v271, v299);
                  v307(*&v305, v299);
                  if (v308)
                  {
                    goto LABEL_103;
                  }

                  v293 = v420;
                  (*v406)(v295, v420);
                }

LABEL_94:
                v292 += v412;
                if (!--v290)
                {

                  v56 = v407;
                  v57 = v402;
                  v286 = v414;
                  v288 = v397;
                  goto LABEL_122;
                }
              }
            }

            v293 = v420;
LABEL_122:
            v334 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
            swift_beginAccess();
            v335 = *&v288[v334];
            if (v335 >> 62)
            {
              if (_CocoaArrayWrapper.endIndex.getter() <= 1)
              {
                goto LABEL_124;
              }
            }

            else if (*((v335 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
            {
LABEL_124:

              sub_100170130();
              v332 = swift_allocError();
              *v336 = 0;
              swift_willThrow();

              (*(v286 + 8))(v379, v293);
              sub_100004F84(v384, &unk_100AD6DD0, &qword_1009437C0);
              (*(v57 + 8))(v383, v56);
              v337 = &v414;
LABEL_127:
              sub_100004F84(*(v337 - 32), &unk_100AD4790, &unk_10093B4E0);
              goto LABEL_128;
            }

            if (qword_100ACF938 != -1)
            {
              swift_once();
            }

            v339 = type metadata accessor for Logger();
            sub_10000617C(v339, qword_100AD3270);
            v340 = v288;
            v341 = Logger.logObject.getter();
            v342 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v341, v342))
            {
              v343 = swift_slowAlloc();
              v344 = swift_slowAlloc();
              v418 = swift_slowAlloc();
              v424 = v418;
              *v343 = 138412802;
              *(v343 + 4) = v340;
              *v344 = v340;
              *(v343 + 12) = 2080;
              v345 = v408;
              v346 = v419;
              v347 = v413;
              (*(v408 + 16))(v419, &v340[OBJC_IVAR____TtC7Journal5Asset_id], v413);
              sub_10008D1A8(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v348 = v340;
              v349 = dispatch thunk of CustomStringConvertible.description.getter();
              v351 = v350;
              (*(v345 + 8))(v346, v347);
              v352 = sub_100008458(v349, v351, &v424);

              *(v343 + 14) = v352;
              *(v343 + 22) = 2080;
              type metadata accessor for AssetAttachment(0);

              v353 = Array.description.getter();
              v355 = v354;

              v356 = sub_100008458(v353, v355, &v424);

              *(v343 + 24) = v356;
              _os_log_impl(&_mh_execute_header, v341, v342, "%@[%s] init self.sourceAttachments=%s", v343, 0x20u);
              sub_100004F84(v344, &unk_100AD4BB0, &unk_100941E50);

              swift_arrayDestroy();
            }

            (*(v414 + 8))(v379, v420);
            v57 = v402;
            v247 = v373;
            v263 = v372;
            goto LABEL_135;
          }
        }

        else
        {

          sub_100177B94(&v423);
        }

        v264 = v76;
        v263 = 1;
        v256 = 0.0;
        v258 = 0.0;
        v260 = 0.0;
        v262 = 0.0;
        goto LABEL_83;
      }
    }

    else
    {

      sub_100177B94(&v423);
    }

    v248 = v76;
    v247 = 1;
    v393 = 0.0;
    v392 = 0.0;
    v381 = 0.0;
    v377 = 0.0;
    goto LABEL_77;
  }

  v398 = v25;

LABEL_6:
  (*(v57 + 104))(v415, enum case for AssetSource.suggestionSheet(_:), v56);
  v84 = v414;
  v85 = *(v414 + 16);
  v86 = v416;
  v87 = v420;
  v376 = (v414 + 16);
  v375 = v85;
  (v85)(v416, v397, v420);
  (*(v84 + 56))(v86, 0, 1, v87);
  v88 = [v76 metadata];
  v89 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v90 = MOSuggestionAssetMetadataKeyPhotoLocalIdentifier;
  v424 = MOSuggestionAssetMetadataKeyPhotoLocalIdentifier;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  sub_10008D1A8(&qword_100AD1C18, type metadata accessor for MOSuggestionAssetMetadataKey, &unk_10093FA10);
  v91 = v90;
  AnyHashable.init<A>(_:)();
  if (*(v89 + 16) && (v92 = sub_100361EDC(&v423), (v93 & 1) != 0))
  {
    sub_10000BA20(*(v89 + 56) + 32 * v92, &v424);
    sub_100177B94(&v423);

    v94 = swift_dynamicCast();
    v95 = v421;
    if (!v94)
    {
      v95 = 0;
    }

    v397 = v95;
    if (v94)
    {
      v96 = v422;
    }

    else
    {
      v96 = 0;
    }

    v418 = v96;
  }

  else
  {

    sub_100177B94(&v423);
    v397 = 0;
    v418 = 0;
  }

  v97 = [v76 metadata];
  v98 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v421 = MOSuggestionAssetMetadataKeyPhotoTakenDate;
  v99 = MOSuggestionAssetMetadataKeyPhotoTakenDate;
  AnyHashable.init<A>(_:)();
  if (*(v98 + 16) && (v100 = sub_100361EDC(&v423), (v101 & 1) != 0))
  {
    sub_10000BA20(*(v98 + 56) + 32 * v100, &v424);
    sub_100177B94(&v423);

    v102 = v412;
    v103 = swift_dynamicCast();
    (*(v66 + 56))(v102, v103 ^ 1u, 1, v65);
  }

  else
  {

    sub_100177B94(&v423);
    (*(v66 + 56))(v412, 1, 1, v65);
  }

  v104 = [v76 metadata];
  v105 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v424 = MOSuggestionAssetMetadataKeyPhotoMomentResolution;
  v106 = MOSuggestionAssetMetadataKeyPhotoMomentResolution;
  AnyHashable.init<A>(_:)();
  if (*(v105 + 16) && (v107 = sub_100361EDC(&v423), (v108 & 1) != 0))
  {
    sub_10000BA20(*(v105 + 56) + 32 * v107, &v424);
    sub_100177B94(&v423);

    type metadata accessor for CGSize(0);
    v109 = swift_dynamicCast();
    v110 = v421;
    if (!v109)
    {
      v110 = 0;
    }

    v384 = v110;
    if (v109)
    {
      v111 = v422;
    }

    else
    {
      v111 = 0;
    }

    v383 = v111;
    v112 = v109 ^ 1;
  }

  else
  {

    sub_100177B94(&v423);
    v384 = 0;
    v383 = 0;
    v112 = 1;
  }

  LODWORD(v382) = v112;
  v113 = [v76 metadata];
  v114 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v421 = MOSuggestionAssetMetadataKeyPhotoBestSquareCropRect;
  v115 = MOSuggestionAssetMetadataKeyPhotoBestSquareCropRect;
  AnyHashable.init<A>(_:)();
  if (!*(v114 + 16) || (v116 = sub_100361EDC(&v423), (v117 & 1) == 0))
  {

    sub_100177B94(&v423);
    goto LABEL_33;
  }

  sub_10000BA20(*(v114 + 56) + 32 * v116, &v424);
  sub_100177B94(&v423);

  sub_1000065A8(0, &qword_100AEB650, MOSuggestionAssetPhotoCropRect_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    LODWORD(v380) = 1;
    v410 = 0.0;
    v409 = 0;
    v405 = 0.0;
    v401 = 0.0;
    goto LABEL_34;
  }

  v118 = v421;
  [v421 cgRect];
  v410 = v119;
  v409 = v120;
  v405 = v121;
  v401 = *&v122;

  LODWORD(v380) = 0;
LABEL_34:
  v123 = [v76 metadata];
  v124 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v421 = MOSuggestionAssetMetadataKeyPhotoBestLandscapeCropRect;
  v125 = MOSuggestionAssetMetadataKeyPhotoBestLandscapeCropRect;
  AnyHashable.init<A>(_:)();
  if (!*(v124 + 16) || (v126 = sub_100361EDC(&v423), (v127 & 1) == 0))
  {

    sub_100177B94(&v423);
    goto LABEL_39;
  }

  sub_10000BA20(*(v124 + 56) + 32 * v126, &v424);
  sub_100177B94(&v423);

  sub_1000065A8(0, &qword_100AEB650, MOSuggestionAssetPhotoCropRect_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    LODWORD(v379) = 1;
    v130 = 0.0;
    v132 = 0.0;
    v134 = 0.0;
    v136 = 0.0;
    goto LABEL_40;
  }

  v128 = v421;
  [v421 cgRect];
  v130 = v129;
  v132 = v131;
  v134 = v133;
  v136 = v135;

  LODWORD(v379) = 0;
LABEL_40:
  v137 = [v76 metadata];
  v138 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v421 = MOSuggestionAssetMetadataKeyPhotoBestPortraitCropRect;
  v139 = MOSuggestionAssetMetadataKeyPhotoBestPortraitCropRect;
  AnyHashable.init<A>(_:)();
  if (*(v138 + 16) && (v140 = sub_100361EDC(&v423), (v141 & 1) != 0))
  {
    sub_10000BA20(*(v138 + 56) + 32 * v140, &v424);
    sub_100177B94(&v423);

    sub_1000065A8(0, &qword_100AEB650, MOSuggestionAssetPhotoCropRect_ptr);
    v142 = swift_dynamicCast();
    v143 = v407;
    if (v142)
    {
      v144 = v421;
      [v421 cgRect];
      v146 = v145;
      v148 = v147;
      v150 = v149;
      v152 = v151;

      LODWORD(v378) = 0;
      goto LABEL_46;
    }
  }

  else
  {

    sub_100177B94(&v423);
    v143 = v407;
  }

  LODWORD(v378) = 1;
  v146 = 0.0;
  v148 = 0.0;
  v150 = 0.0;
  v152 = 0.0;
LABEL_46:
  v402 = v57;
  v153 = v400;
  v154 = v406;
  (v400[13])(v406, enum case for AssetType.photo(_:), v417);
  v411 = *(v57 + 16);
  v155 = v399;
  (v411)(v399, v415, v143);
  v156 = v419;
  UUID.init()();
  v157 = objc_allocWithZone(type metadata accessor for PhotoAsset(0));
  *&v157[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = 0;
  v158 = v408;
  v159 = *(v408 + 16);
  v160 = v395;
  v161 = v156;
  v162 = v413;
  v374 = v408 + 16;
  v373 = v159;
  v159(v395, v161, v413);
  v163 = v394;
  (v153[2])(v394, v154, v417);
  v164 = *&v392;
  (v411)(*&v392, v155, v143);
  v165 = v163;
  v166 = v402;
  v167 = sub_100285908(v160, v165, v164);
  v168 = *(v158 + 8);
  v408 = v158 + 8;
  v168(v419, v162);
  v170 = *(v166 + 8);
  v169 = v166 + 8;
  v411 = v170;
  (v170)(v155, v143);
  (v153[1])(v406, v417);
  v171 = v393;
  sub_1000082B4(v416, *&v393, &unk_100AD6DD0, &qword_1009437C0);
  v172 = v414;
  v173 = v420;
  if ((*(v414 + 48))(COERCE_DOUBLE(*&v171), 1, v420) == 1)
  {
    sub_100004F84(*&v171, &unk_100AD6DD0, &qword_1009437C0);
  }

  else
  {
    v174 = v381;
    (*(v172 + 32))(COERCE_DOUBLE(*&v381), COERCE_DOUBLE(*&v171), v173);
    v175 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v176 = String._bridgeToObjectiveC()();

    v177 = [v175 fileExistsAtPath:v176];

    if (v177)
    {
      sub_1000F24EC(&unk_100AD4780, &unk_100941070);
      v178 = swift_allocObject();
      *(v178 + 16) = xmmword_100941D50;
      v179 = v404;
      (v375)(v404, *&v174, v173);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v180 = v174;
      v181 = v168;
      v182 = v419;
      UUID.init()();
      v183 = UUID.uuidString.getter();
      v185 = v184;
      v181(v182, v413);
      type metadata accessor for AssetAttachment(0);
      v186 = swift_allocObject();
      *(v186 + 16) = 0;
      sub_100617828(v179, v186 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v187 = (v186 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v187 = v183;
      v187[1] = v185;
      *(v178 + 32) = v186;
      (*(v172 + 8))(COERCE_DOUBLE(*&v180), v420);
      v188 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      *&v167[v188] = v178;

      v143 = v407;
    }

    else
    {
      v417 = v168;
      v402 = v169;
      if (qword_100ACFE08 != -1)
      {
        swift_once();
      }

      v193 = type metadata accessor for Logger();
      sub_10000617C(v193, qword_100AE55E0);
      v194 = v377;
      v195 = v420;
      (v375)(*&v377, *&v174, v420);
      v196 = v167;
      v197 = Logger.logObject.getter();
      v198 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v404 = v200;
        v406 = swift_slowAlloc();
        v423 = v406;
        *v199 = 138412802;
        *(v199 + 4) = v196;
        *v200 = v196;
        *(v199 + 12) = 2080;
        v201 = v419;
        v403 = v197;
        v202 = v413;
        v373(v419, &v196[OBJC_IVAR____TtC7Journal5Asset_id], v413);
        sub_10008D1A8(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v203 = v196;
        v204 = v198;
        v205 = dispatch thunk of CustomStringConvertible.description.getter();
        v207 = v206;
        (v417)(v201, v202);
        v208 = sub_100008458(v205, v207, &v423);

        *(v199 + 14) = v208;
        *(v199 + 22) = 2080;
        sub_10008D1A8(&qword_100ADEFD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v209 = dispatch thunk of CustomStringConvertible.description.getter();
        v211 = v210;
        v212 = v194;
        v213 = *(v414 + 8);
        v213(*&v212, v195);
        v214 = sub_100008458(v209, v211, &v423);

        *(v199 + 24) = v214;
        v215 = v403;
        _os_log_impl(&_mh_execute_header, v403, v204, "%@[%s] failed init imageFile does not exist: %s", v199, 0x20u);
        sub_100004F84(v404, &unk_100AD4BB0, &unk_100941E50);

        swift_arrayDestroy();

        v213(*&v174, v195);
      }

      else
      {

        v317 = *(v414 + 8);
        v317(*&v194, v195);
        v317(*&v174, v195);
      }

      v143 = v407;
    }
  }

  v318 = v396;
  v319 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  v320 = *&v167[v319];
  if (v320 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_112;
    }

    goto LABEL_126;
  }

  if (!*((v320 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_126:

    sub_100170130();
    v332 = swift_allocError();
    *v338 = 0;
    swift_willThrow();

    sub_100004F84(v416, &unk_100AD6DD0, &qword_1009437C0);
    (v411)(v415, v143);
    v337 = &v425;
    goto LABEL_127;
  }

LABEL_112:
  sub_1000082B4(v412, v318, &unk_100AD4790, &unk_10093B4E0);
  if (v380)
  {
    v321 = CGRectZero.origin.y;
    v410 = CGRectZero.origin.x;
    v409 = *&v321;
    v322 = CGRectZero.size.height;
    v405 = CGRectZero.size.width;
    v401 = v322;
  }

  v323 = v167;
  v426.origin.x = v410;
  *&v426.origin.y = v409;
  v426.size.width = v405;
  v426.size.height = v401;
  v324 = NSStringFromCGRect(v426);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (v379)
  {
    v130 = CGRectZero.origin.x;
    v132 = CGRectZero.origin.y;
    v134 = CGRectZero.size.width;
    v136 = CGRectZero.size.height;
  }

  v427.origin.x = v130;
  v427.origin.y = v132;
  v427.size.width = v134;
  v427.size.height = v136;
  v325 = NSStringFromCGRect(v427);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (v378)
  {
    v146 = CGRectZero.origin.x;
    v148 = CGRectZero.origin.y;
    v150 = CGRectZero.size.width;
    v152 = CGRectZero.size.height;
  }

  v428.origin.x = v146;
  v428.origin.y = v148;
  v428.size.width = v150;
  v428.size.height = v152;
  v326 = NSStringFromCGRect(v428);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v327 = v398;
  PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
  sub_100004F84(v416, &unk_100AD6DD0, &qword_1009437C0);
  (v411)(v415, v407);
  sub_100004F84(v412, &unk_100AD4790, &unk_10093B4E0);
  v328 = v388;
  (*(v385 + 32))(v388, v327, v386);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&unk_100AEE0B0, &unk_100943F60);
  v329 = swift_allocObject();
  v330 = *(*v329 + 104);
  v331 = sub_1000F24EC(&qword_100AD5B20, qword_1009521A0);
  (*(*(v331 - 8) + 56))(v329 + v330, 1, 1, v331);
  *(v329 + *(*v329 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v328, v329 + *(*v329 + 120), &unk_100AEE0A0, &unk_100943F50);
  *&v323[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = v329;

LABEL_142:

  v369 = v323;
  sub_100606C74(v389);
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v370 = swift_allocObject();
  *(v370 + 16) = xmmword_100941D50;
  *(v370 + 32) = v369;
  sub_1006167D4(v390, v370);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v421 = v369;
  sub_1000F24EC(&qword_100AE0D78, &qword_1009521F0);
  CheckedContinuation.resume(returning:)();
}

uint64_t sub_10060ED1C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10060EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 400) = v13;
  *(v8 + 384) = v12;
  *(v8 + 368) = a7;
  *(v8 + 376) = a8;
  *(v8 + 352) = a5;
  *(v8 + 360) = a6;
  *(v8 + 336) = a3;
  *(v8 + 344) = a4;
  *(v8 + 328) = a2;
  v9 = *(type metadata accessor for PendingPhotoAsset(0) - 8);
  *(v8 + 408) = v9;
  *(v8 + 416) = *(v9 + 64);
  *(v8 + 424) = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();

  return _swift_task_switch(sub_10060EF28, 0, 0);
}

uint64_t sub_10060EF28(__n128 a1)
{
  v2 = *(v1 + 336);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v1 + 408);
    v33 = **(v1 + 328);
    v5 = *(v4 + 80);
    v6 = v2 + ((v5 + 32) & ~v5);
    v32 = (v5 + 40) & ~v5;
    v31 = (*(v1 + 416) + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = *(v4 + 72);
    do
    {
      v37 = v3;
      v9 = *(v1 + 440);
      v10 = *(v1 + 424);
      v11 = *(v1 + 368);
      v35 = *(v1 + 360);
      v36 = *(v1 + 432);
      v12 = *(v1 + 344);
      v34 = *(v1 + 352);
      static TaskPriority.userInitiated.getter();
      v13 = type metadata accessor for TaskPriority();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v9, 0, 1, v13);
      sub_100614C94(v6, v10, type metadata accessor for PendingPhotoAsset);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v12;
      sub_100617828(v10, v15 + v32, type metadata accessor for PendingPhotoAsset);
      *(v15 + v31) = v34;
      *(v15 + v30) = v35;
      v16 = (v15 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
      v17 = v11[1];
      v18 = v11[2];
      v19 = v11[4];
      v16[3] = v11[3];
      v16[4] = v19;
      v16[1] = v17;
      v16[2] = v18;
      *v16 = *v11;
      sub_1000082B4(v9, v36, &qword_100AD5170, &unk_100943680);
      LODWORD(v10) = (*(v14 + 48))(v36, 1, v13);

      v20 = v35;
      v21 = *(v1 + 432);
      v22 = *(v1 + 368);
      if (v10 == 1)
      {
        sub_100614E54(v22, v1 + 16);
        sub_100004F84(v21, &qword_100AD5170, &unk_100943680);
      }

      else
      {
        sub_100614E54(v22, v1 + 96);
        TaskPriority.rawValue.getter();
        (*(v14 + 8))(v21, v13);
      }

      if (v15[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = dispatch thunk of Actor.unownedExecutor.getter();
        v25 = v24;
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      type metadata accessor for PhotoFetchOutcome();

      if (v25 | v23)
      {
        v7 = v1 + 176;
        *(v1 + 176) = 0;
        *(v1 + 184) = 0;
        *(v1 + 192) = v23;
        *(v1 + 200) = v25;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v1 + 440);
      *(v1 + 208) = 1;
      *(v1 + 216) = v7;
      *(v1 + 224) = v33;
      swift_task_create();

      sub_100004F84(v8, &qword_100AD5170, &unk_100943680);
      v6 += v29;
      v3 = v37 - 1;
    }

    while (v37 != 1);
  }

  v26 = swift_task_alloc();
  *(v1 + 448) = v26;
  v27 = sub_1000F24EC(&qword_100AEB648, &unk_100960638);
  *v26 = v1;
  v26[1] = sub_10060F33C;

  return ThrowingTaskGroup.nextResult()(v1 + 312, v27);
}

uint64_t sub_10060F33C()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_10060F84C;
  }

  else
  {
    *(v2 + 464) = *(v2 + 312);
    *(v2 + 321) = *(v2 + 320);
    v3 = sub_10060F460;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10060F460()
{
  v1 = *(v0 + 321);
  if (v1 != 255)
  {
    v2 = *(v0 + 464);
    if (v1)
    {
      v3 = *(v0 + 464);
    }

    else
    {
      *(v0 + 248) = 0;
      *(v0 + 256) = 0xE000000000000000;
      _StringGuts.grow(_:)(65);
      v6 = *(v0 + 256);
      *(v0 + 232) = *(v0 + 248);
      *(v0 + 240) = v6;
      v7._countAndFlagsBits = 0x4164657472617473;
      v7._object = 0xEA00000000003D74;
      String.append(_:)(v7);
      Double.write<A>(to:)();
      v8._object = 0x80000001008FEA00;
      v8._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v8);
      v9 = v2[3];
      v10 = v2[4];

      v11._countAndFlagsBits = v9;
      v11._object = v10;
      String.append(_:)(v11);

      v12._countAndFlagsBits = 0xD000000000000018;
      v12._object = 0x80000001008FEA20;
      String.append(_:)(v12);
      v13 = v2[5];
      v14 = v2[6];

      v15._countAndFlagsBits = v13;
      v15._object = v14;
      String.append(_:)(v15);

      v16._countAndFlagsBits = 0x73646E6F63657320;
      v16._object = 0xE90000000000002ELL;
      String.append(_:)(v16);
      v18 = *(v0 + 232);
      v17 = *(v0 + 240);
      type metadata accessor for PhotoFetchResult();
      if (swift_dynamicCastClass())
      {
        v19 = *(v0 + 464);
        v20 = *(v0 + 376);
        *(v0 + 296) = 0;
        *(v0 + 304) = 0xE000000000000000;
        v21 = *(v0 + 321);
        _StringGuts.grow(_:)(49);

        *(v0 + 280) = 0xD00000000000002FLL;
        *(v0 + 288) = 0x80000001008FEA40;
        v22._countAndFlagsBits = v18;
        v22._object = v17;
        String.append(_:)(v22);

        v20(*(v0 + 280), *(v0 + 288));
        sub_100614E8C(v19, v21);

LABEL_16:
        v31 = swift_task_alloc();
        *(v0 + 448) = v31;
        v32 = sub_1000F24EC(&qword_100AEB648, &unk_100960638);
        *v31 = v0;
        v31[1] = sub_10060F33C;

        return ThrowingTaskGroup.nextResult()(v0 + 312, v32);
      }

      type metadata accessor for PhotoFetchError();
      v23 = swift_dynamicCastClass();
      v24 = *(v0 + 321);
      v25 = *(v0 + 464);
      if (v23)
      {
        v26 = *(v0 + 392);
        v27 = *(v23 + 64);
        *(v0 + 264) = *(v23 + 56);
        *(v0 + 272) = v27;
        v28 = v23;
        sub_100614EB0(v25, v24);

        v29._countAndFlagsBits = 32;
        v29._object = 0xE100000000000000;
        String.append(_:)(v29);
        v30._countAndFlagsBits = v18;
        v30._object = v17;
        String.append(_:)(v30);

        v26(*(v0 + 264), *(v0 + 272));

        v24 = *(v0 + 321);
        v25 = *(v0 + 464);
        if (*(v28 + 72) == 1)
        {
          type metadata accessor for PhotoFetchOutcome();
          sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
          ThrowingTaskGroup.cancelAll()();
        }

        sub_100614E8C(v25, v24);
      }

      else
      {
      }

      v3 = v25;
      LOBYTE(v1) = v24;
    }

    sub_100614E8C(v3, v1);
    goto LABEL_16;
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10060F868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_10060F890, 0, 0);
}

uint64_t sub_10060F890()
{
  v1 = *(v0[7] + 48);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10060F938;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];

  return sub_100608A88(0, 0, v5, v3, v4, v1);
}

uint64_t sub_10060F938(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return _swift_task_switch(sub_10060FA84, 0, 0);
  }
}

uint64_t sub_10060FAF4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10060FB60()
{

  return swift_deallocClassInstance();
}

void sub_10060FBCC(double **a1)
{
  v2 = *(sub_1000F24EC(&qword_100AD64E8, &qword_1009451B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100205098(v3);
  }

  v4 = *(v3 + 2);
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100610880(v5);
  *a1 = v3;
}

double *sub_10060FC80(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = sub_1003E7494(*(a1 + 16), 0);
  v6 = sub_1001C156C(v8, (v5 + 4), v2, a1, a2);

  if (v6 != v2)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v5;
}

void sub_10060FD24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000F24EC(&unk_100AD9A60, &unk_100941D10);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10060FDFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for DataAggregator.EntryPlace(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000F24EC(&unk_100AD4780, &unk_100941070);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

double *sub_10060FEE0(unint64_t *a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1003E7998();

    v1 = sub_100605F60(&v5, (v3 + 32), v2, v1);

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

double *sub_10060FF8C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1003E7998();

    v1 = sub_1001C21A0(&v5, (v3 + 32), v2, v1);
    sub_100014FF8(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void sub_10061003C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000F24EC(&unk_100AD4780, &unk_100941070);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100610130(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000F24EC(&qword_100ADDBE8, &unk_1009607A0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_100610218(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000F24EC(&qword_100AD6618, &qword_1009452F0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1006102F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000F24EC(&qword_100AE0D90, &qword_100952220);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        sub_1000F24EC(&qword_100AE2B50, &qword_100960700);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1006103EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000F24EC(&unk_100AE1A40, &qword_10094C3D0);
      v7 = *(type metadata accessor for UUID() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for UUID();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

double *sub_10061058C(uint64_t *a1)
{
  v2 = sub_1000F24EC(&qword_100AE4BE0, &qword_100960780);
  __chkstk_darwin(v2);
  v4 = v16 - v3;
  v5 = sub_1000F24EC(&qword_100AE4BD8, &unk_100956F40);
  __chkstk_darwin(v5 - 8);
  v7 = v16 - v6;
  v8 = *a1;
  v16[0] = a1[1];
  v16[1] = v8;
  sub_1000F24EC(&qword_100AE4BC0, &qword_100956F30);
  sub_10000B58C(&qword_100AE4BE8, &qword_100AE4BC0, &qword_100956F30, &protocol conformance descriptor for CROrderedSet<A>);
  v9 = dispatch thunk of Collection.distance(from:to:)();
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = v9;
  v11 = sub_1003E7524(v9, 0);
  v12 = *(type metadata accessor for UUID() - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  sub_1000082B4(a1, v4, &qword_100AE4BE0, &qword_100960780);
  v14 = sub_100611FEC(v7, (v11 + v13), v10);
  sub_100004F84(v7, &qword_100AE4BD8, &unk_100956F40);
  if (v14 != v10)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v11;
}

void sub_100610784(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000F24EC(&qword_100AD6660, &qword_1009607B0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        sub_1000F24EC(&qword_100AD6668, &unk_100945350);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_100610880(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000F24EC(&qword_100AD64E8, &qword_1009451B0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 2) = v5;
      }

      v7 = *(sub_1000F24EC(&qword_100AD64E8, &qword_1009451B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100610C14(v8, v9, a1, v4);
      v6[2] = 0.0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1006109C4(0, v2, 1, a1);
  }
}

void sub_1006109C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = sub_1000F24EC(&qword_100AD64E8, &qword_1009451B0);
  __chkstk_darwin(v34);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v27 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v32 = v16;
    v26 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v30 = v18;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    while (1)
    {
      sub_1000082B4(v21, v15, &qword_100AD64E8, &qword_1009451B0);
      sub_1000082B4(v18, v11, &qword_100AD64E8, &qword_1009451B0);
      v22 = Date.compare(_:)();
      sub_100004F84(v11, &qword_100AD64E8, &qword_1009451B0);
      sub_100004F84(v15, &qword_100AD64E8, &qword_1009451B0);
      if (v22 != -1)
      {
LABEL_4:
        a3 = v31 + 1;
        v18 = v30 + v26;
        v20 = v29 - 1;
        v21 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v23 = v33;
      sub_100021CEC(v21, v33, &qword_100AD64E8, &qword_1009451B0);
      swift_arrayInitWithTakeFrontToBack();
      sub_100021CEC(v23, v18, &qword_100AD64E8, &qword_1009451B0);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100610C14(unint64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v5;
  v96 = a1;
  v109 = sub_1000F24EC(&qword_100AD64E8, &qword_1009451B0);
  v105 = *(v109 - 8);
  __chkstk_darwin(v109);
  v98 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v108 = &v92 - v11;
  __chkstk_darwin(v12);
  v111 = &v92 - v13;
  __chkstk_darwin(v14);
  v110 = &v92 - v15;
  v16 = a3[1];
  if (v16 >= 1)
  {
    v93 = a4;
    v17 = 0;
    v18 = _swiftEmptyArrayStorage;
    v97 = a3;
    while (1)
    {
      v19 = v17;
      v101 = v18;
      if (v17 + 1 >= v16)
      {
        v25 = v17 + 1;
      }

      else
      {
        v106 = v16;
        v95 = v6;
        v20 = *a3;
        v21 = *(v105 + 72);
        a4 = v20 + v21 * (v17 + 1);
        v4 = v110;
        sub_1000082B4(a4, v110, &qword_100AD64E8, &qword_1009451B0);
        v22 = v111;
        sub_1000082B4(v20 + v21 * v17, v111, &qword_100AD64E8, &qword_1009451B0);
        v104 = Date.compare(_:)();
        sub_100004F84(v22, &qword_100AD64E8, &qword_1009451B0);
        sub_100004F84(v4, &qword_100AD64E8, &qword_1009451B0);
        v94 = v17;
        v23 = v17 + 2;
        v107 = v21;
        v24 = v20 + v21 * (v17 + 2);
        while (1)
        {
          v25 = v106;
          if (v106 == v23)
          {
            break;
          }

          v26 = v104 == -1;
          v27 = v110;
          sub_1000082B4(v24, v110, &qword_100AD64E8, &qword_1009451B0);
          v28 = v111;
          sub_1000082B4(a4, v111, &qword_100AD64E8, &qword_1009451B0);
          v4 = Date.compare(_:)();
          sub_100004F84(v28, &qword_100AD64E8, &qword_1009451B0);
          sub_100004F84(v27, &qword_100AD64E8, &qword_1009451B0);
          ++v23;
          v24 += v107;
          a4 += v107;
          if (((v26 ^ (v4 != -1)) & 1) == 0)
          {
            v25 = v23 - 1;
            break;
          }
        }

        a3 = v97;
        v19 = v94;
        v6 = v95;
        if (v104 == -1)
        {
          if (v25 < v94)
          {
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
            return;
          }

          if (v94 < v25)
          {
            v29 = v25;
            v4 = v107 * (v25 - 1);
            v30 = v25 * v107;
            a4 = v94 * v107;
            do
            {
              if (v19 != --v29)
              {
                v31 = *v97;
                if (!*v97)
                {
                  goto LABEL_132;
                }

                sub_100021CEC(v31 + a4, v98, &qword_100AD64E8, &qword_1009451B0);
                if (a4 < v4 || v31 + a4 >= (v31 + v30))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (a4 != v4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_100021CEC(v98, v31 + v4, &qword_100AD64E8, &qword_1009451B0);
              }

              ++v19;
              v4 -= v107;
              v30 -= v107;
              a4 += v107;
            }

            while (v19 < v29);
            v19 = v94;
            v6 = v95;
            a3 = v97;
          }
        }
      }

      v32 = a3[1];
      if (v25 >= v32)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v25, v19))
      {
        goto LABEL_124;
      }

      if (v25 - v19 >= v93)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v19, v93))
      {
        goto LABEL_125;
      }

      if (v19 + v93 >= v32)
      {
        v33 = a3[1];
      }

      else
      {
        v33 = v19 + v93;
      }

      if (v33 < v19)
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      if (v25 == v33)
      {
LABEL_32:
        v17 = v25;
        if (v25 < v19)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v94 = v19;
        v95 = v6;
        v78 = *a3;
        v79 = *(v105 + 72);
        v80 = *a3 + v79 * (v25 - 1);
        v81 = -v79;
        v82 = v19 - v25;
        v107 = v78;
        v99 = v79;
        v100 = v33;
        a4 = v78 + v25 * v79;
        do
        {
          v106 = v25;
          v102 = a4;
          v103 = v82;
          v104 = v80;
          v83 = v80;
          do
          {
            v4 = v110;
            sub_1000082B4(a4, v110, &qword_100AD64E8, &qword_1009451B0);
            v84 = v111;
            sub_1000082B4(v83, v111, &qword_100AD64E8, &qword_1009451B0);
            v85 = Date.compare(_:)();
            sub_100004F84(v84, &qword_100AD64E8, &qword_1009451B0);
            sub_100004F84(v4, &qword_100AD64E8, &qword_1009451B0);
            if (v85 != -1)
            {
              break;
            }

            if (!v107)
            {
              goto LABEL_129;
            }

            v4 = v108;
            sub_100021CEC(a4, v108, &qword_100AD64E8, &qword_1009451B0);
            swift_arrayInitWithTakeFrontToBack();
            sub_100021CEC(v4, v83, &qword_100AD64E8, &qword_1009451B0);
            v83 += v81;
            a4 += v81;
          }

          while (!__CFADD__(v82++, 1));
          v25 = v106 + 1;
          v17 = v100;
          v80 = v104 + v99;
          v82 = v103 - 1;
          a4 = v102 + v99;
        }

        while (v106 + 1 != v100);
        v19 = v94;
        v6 = v95;
        a3 = v97;
        if (v100 < v94)
        {
          goto LABEL_123;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v18 = v101;
      }

      else
      {
        v18 = sub_1003E4B80(0, *(v101 + 2) + 1, 1, v101);
      }

      a4 = *(v18 + 2);
      v34 = *(v18 + 3);
      v4 = a4 + 1;
      if (a4 >= v34 >> 1)
      {
        v18 = sub_1003E4B80((v34 > 1), a4 + 1, 1, v18);
      }

      *(v18 + 2) = v4;
      v35 = &v18[2 * a4];
      *(v35 + 4) = v19;
      *(v35 + 5) = v17;
      v36 = *v96;
      if (!*v96)
      {
        goto LABEL_133;
      }

      if (a4)
      {
        while (1)
        {
          a4 = v4 - 1;
          if (v4 >= 4)
          {
            break;
          }

          if (v4 == 3)
          {
            v37 = *(v18 + 4);
            v38 = *(v18 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_52:
            if (v40)
            {
              goto LABEL_112;
            }

            v53 = &v18[2 * v4];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_115;
            }

            v59 = &v18[2 * a4 + 4];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_118;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_119;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                a4 = v4 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v63 = &v18[2 * v4];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_66:
          if (v58)
          {
            goto LABEL_114;
          }

          v66 = &v18[2 * a4];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_117;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_73:
          v74 = a4 - 1;
          if (a4 - 1 >= v4)
          {
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (!*a3)
          {
            goto LABEL_130;
          }

          v75 = v18;
          v4 = *&v18[2 * v74 + 4];
          v76 = *&v18[2 * a4 + 5];
          sub_100611538(*a3 + *(v105 + 72) * v4, *a3 + *(v105 + 72) * *&v18[2 * a4 + 4], *a3 + *(v105 + 72) * v76, v36);
          if (v6)
          {
            goto LABEL_106;
          }

          if (v76 < v4)
          {
            goto LABEL_108;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_100204C44(v75);
          }

          if (v74 >= *(v75 + 2))
          {
            goto LABEL_109;
          }

          v77 = &v75[2 * v74];
          *(v77 + 4) = v4;
          *(v77 + 5) = v76;
          v112 = v75;
          sub_100204BB8(a4);
          v18 = v112;
          v4 = *(v112 + 2);
          if (v4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v41 = &v18[2 * v4 + 4];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_110;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_111;
        }

        v48 = &v18[2 * v4];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_113;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_116;
        }

        if (v52 >= v44)
        {
          v70 = &v18[2 * a4 + 4];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_120;
          }

          if (v39 < v73)
          {
            a4 = v4 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v16 = a3[1];
      if (v17 >= v16)
      {
        goto LABEL_95;
      }
    }
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_95:
  a4 = *v96;
  if (!*v96)
  {
    goto LABEL_134;
  }

  v4 = v18;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v87 = v4;
  }

  else
  {
LABEL_127:
    v87 = sub_100204C44(v4);
  }

  v112 = v87;
  v4 = *(v87 + 2);
  if (v4 >= 2)
  {
    while (*a3)
    {
      v88 = v87[2 * v4];
      v89 = v87;
      v90 = v87[2 * v4 + 3];
      sub_100611538(*a3 + *(v105 + 72) * *&v88, *a3 + *(v105 + 72) * *&v87[2 * v4 + 2], *a3 + *(v105 + 72) * *&v90, a4);
      if (v6)
      {
        goto LABEL_106;
      }

      if (*&v90 < *&v88)
      {
        goto LABEL_121;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_100204C44(v89);
      }

      if (v4 - 2 >= *(v89 + 2))
      {
        goto LABEL_122;
      }

      v91 = &v89[2 * v4];
      *v91 = v88;
      v91[1] = v90;
      v112 = v89;
      sub_100204BB8(v4 - 1);
      v87 = v112;
      v4 = *(v112 + 2);
      if (v4 <= 1)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_131;
  }

LABEL_106:
}

void sub_100611538(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v40 = sub_1000F24EC(&qword_100AD64E8, &qword_1009451B0);
  __chkstk_darwin(v40);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v34 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_59;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_60;
  }

  v14 = (a2 - a1) / v12;
  v45 = a1;
  v44 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v21 = a4 + v16;
    if (v16 >= 1)
    {
      v22 = -v12;
      v23 = a4 + v16;
      v36 = v22;
      v37 = a1;
      do
      {
        v34 = v21;
        v24 = a2 + v22;
        v38 = a2;
        v39 = a2 + v22;
        while (1)
        {
          if (a2 <= a1)
          {
            v45 = a2;
            v21 = v34;
            goto LABEL_56;
          }

          v25 = a3;
          v35 = v21;
          v26 = a4;
          v27 = a3 + v22;
          v28 = v23 + v22;
          v29 = v41;
          v30 = v23;
          sub_1000082B4(v23 + v22, v41, &qword_100AD64E8, &qword_1009451B0);
          v31 = v24;
          v32 = v42;
          sub_1000082B4(v31, v42, &qword_100AD64E8, &qword_1009451B0);
          v33 = Date.compare(_:)();
          sub_100004F84(v32, &qword_100AD64E8, &qword_1009451B0);
          sub_100004F84(v29, &qword_100AD64E8, &qword_1009451B0);
          if (v33 == -1)
          {
            break;
          }

          v21 = v28;
          a3 = v27;
          a4 = v26;
          if (v25 < v30 || a3 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v21 = v28;
            v24 = v39;
            a1 = v37;
          }

          else
          {
            v24 = v39;
            a1 = v37;
            if (v25 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
              v21 = v28;
            }
          }

          v23 = v21;
          v22 = v36;
          a2 = v38;
          if (v28 <= a4)
          {
            goto LABEL_54;
          }
        }

        v23 = v30;
        a3 = v27;
        a4 = v26;
        if (v25 < v38 || a3 >= v38)
        {
          a2 = v39;
          swift_arrayInitWithTakeFrontToBack();
          v22 = v36;
          a1 = v37;
        }

        else
        {
          a2 = v39;
          v22 = v36;
          a1 = v37;
          if (v25 != v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v21 = v35;
      }

      while (v23 > a4);
    }

LABEL_54:
    v45 = a2;
LABEL_56:
    v43 = v21;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a3;
    v39 = a4 + v15;
    v43 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = v41;
        sub_1000082B4(a2, v41, &qword_100AD64E8, &qword_1009451B0);
        v19 = v42;
        sub_1000082B4(a4, v42, &qword_100AD64E8, &qword_1009451B0);
        v20 = Date.compare(_:)();
        sub_100004F84(v19, &qword_100AD64E8, &qword_1009451B0);
        sub_100004F84(v18, &qword_100AD64E8, &qword_1009451B0);
        if (v20 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v12;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v44 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v45 = a1;
      }

      while (a4 < v39 && a2 < v38);
    }
  }

  sub_100204CCC(&v45, &v44, &v43);
}

void sub_100611A40(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for JournalMO();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for JournalMO();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_100611C40@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 48);
    v7 = sub_1000F24EC(&qword_100AE4290, &qword_100945270);
    return sub_1000082B4(v6 + *(*(v7 - 8) + 72) * v4, a4, &qword_100AE4290, &qword_100945270);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_100611D14(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000065A8(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000065A8(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

uint64_t sub_100611F2C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_100611FEC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v29 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  __chkstk_darwin(v7);
  v36 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AE4BD8, &unk_100956F40);
  __chkstk_darwin(v10);
  v12 = (&v29 - v11);
  v43 = a2;
  v44 = a3;
  v35 = sub_1000F24EC(&qword_100AE4BE0, &qword_100960780);
  v39 = v3;
  v40 = sub_100622844;
  v41 = &v42;
  v13 = sub_1000F24EC(&qword_100AE4BC0, &qword_100956F30);
  sub_10000B58C(&qword_100AE4BF0, &qword_100AE4BC0, &qword_100956F30, &protocol conformance descriptor for CROrderedSet<A>);
  sub_1000F24EC(&qword_100AEB670, &qword_100960788);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if ((v46 & 1) == 0)
  {
LABEL_11:
    a3 = v45[2];
    v45[0] = *v4;
    sub_10000B58C(&qword_100AE4BE8, &qword_100AE4BC0, &qword_100956F30, &protocol conformance descriptor for CROrderedSet<A>);
    v24 = v29;
    dispatch thunk of Collection.index(_:offsetBy:)();
    v25 = &qword_100AE4BE0;
    v26 = &qword_100960780;
    v27 = v4;
    v28 = v24;
LABEL_13:
    sub_100021CEC(v27, v28, v25, v26);
    return a3;
  }

  v14 = v29;
  v34 = v13;
  sub_1000082B4(v3, v12, &qword_100AE4BE0, &qword_100960780);
  v15 = *(v10 + 36);
  v16 = *v3;
  result = sub_100004F84(v3, &qword_100AE4BE0, &qword_100960780);
  *(v12 + v15) = v16;
  if (!a2)
  {
    sub_100021CEC(v12, v14, &qword_100AE4BD8, &unk_100956F40);
    return 0;
  }

  if (!a3)
  {
LABEL_12:
    v25 = &qword_100AE4BD8;
    v26 = &unk_100956F40;
    v27 = v12;
    v28 = v29;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = (v38 + 16);
    v31 = (v38 + 32);
    v18 = v12[1];
    v19 = 1;
    v33 = a3;
    v30 = v18;
    v20 = v36;
    while (*(v12 + v15) != v18)
    {
      v45[0] = *v12;
      v45[1] = v18;
      sub_10000B58C(&qword_100AE4BE8, &qword_100AE4BC0, &qword_100956F30, &protocol conformance descriptor for CROrderedSet<A>);
      dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
      v21 = dispatch thunk of Collection.subscript.read();
      v4 = a2;
      v22 = v37;
      (*v32)(v20);
      v21(v45, 0);
      a3 = v33;
      dispatch thunk of Collection.formIndex(after:)();
      (*v31)(a2, v20, v22);
      if (a3 == v19)
      {
        goto LABEL_12;
      }

      a2 = (a2 + *(v38 + 72));
      v23 = __OFADD__(v19++, 1);
      v18 = v30;
      if (v23)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    sub_100021CEC(v12, v29, &qword_100AE4BD8, &unk_100956F40);
    return v19 - 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006124A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v5 = a4;
    }

    else
    {
      v5 = a2;
    }

    v6 = type metadata accessor for UUID();
    swift_arrayInitWithCopy();
    v4 += *(*(v6 - 8) + 72) * v5;
  }

  else if (a1)
  {
    type metadata accessor for UUID();
  }

  return v4;
}

BOOL sub_100612570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetType();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SuggestionMergeConflict(0);
  __chkstk_darwin(v7);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = sub_1000F24EC(&qword_100AEB640, &qword_100960610);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v17 = (&v26 + *(v16 + 56) - v14);
  sub_100614C94(a1, &v26 - v14, type metadata accessor for SuggestionMergeConflict);
  sub_100614C94(a2, v17, type metadata accessor for SuggestionMergeConflict);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100614C94(v15, v9, type metadata accessor for SuggestionMergeConflict);
      v19 = v9[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_12;
      }

      if (*v9 == *v17)
      {
        v20 = v19 == v17[1];
        sub_100614EE4(v15, type metadata accessor for SuggestionMergeConflict);
        return v20;
      }
    }

    else
    {
      sub_100614C94(v15, v12, type metadata accessor for SuggestionMergeConflict);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v27 + 8))(v12, v4);
LABEL_12:
        sub_100004F84(v15, &qword_100AEB640, &qword_100960610);
        return 0;
      }

      v22 = v27;
      (*(v27 + 32))(v6, v17, v4);
      sub_10008D1A8(&qword_100AD5B40, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v30 == v28 && v31 == v29)
      {
        v23 = *(v22 + 8);
        v23(v6, v4);

        v23(v12, v4);
        goto LABEL_18;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v25 = *(v22 + 8);
      v25(v6, v4);

      v25(v12, v4);
      if (v24)
      {
        goto LABEL_18;
      }
    }

    sub_100614EE4(v15, type metadata accessor for SuggestionMergeConflict);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_12;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_12;
  }

LABEL_18:
  sub_100614EE4(v15, type metadata accessor for SuggestionMergeConflict);
  return 1;
}

uint64_t sub_1006129CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a3;
  v4[35] = a4;
  v4[32] = a1;
  v4[33] = a2;
  v6 = type metadata accessor for EntryDateSource();
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v4[39] = v7;
  v4[40] = *(v7 - 8);
  v4[41] = swift_task_alloc();
  v8 = type metadata accessor for SettingsKey();
  v4[42] = v8;
  v4[43] = *(v8 - 8);
  v4[44] = swift_task_alloc();
  v9 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[45] = v9;
  v4[46] = *(v9 - 8);
  v4[47] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[48] = v10;
  v11 = *(v10 - 8);
  v4[49] = v11;
  v4[50] = *(v11 + 64);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v12 = *(sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0) - 8);
  v4[53] = v12;
  v4[54] = *(v12 + 64);
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v4[63] = v13;
  v4[64] = v15;

  return _swift_task_switch(sub_100612D38, v13, v15);
}

uint64_t sub_100612D38()
{
  v1 = *(v0 + 272);
  if (v1)
  {
    v2 = *(v0 + 496);
    v3 = *(v0 + 384);
    v4 = *(v0 + 392);
    v5 = *(v0 + 280);
    v6 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleId;
    swift_beginAccess();
    v113 = v6;
    v114 = v5;
    sub_1000082B4(v5 + v6, v2, &qword_100AD1420, &unk_10093C080);
    LODWORD(v4) = (*(v4 + 48))(v2, 1, v3);
    v7 = v1;
    sub_100004F84(v2, &qword_100AD1420, &unk_10093C080);
    if (v4 == 1 || (v8 = *(v0 + 480), v9 = *(v0 + 312), v10 = *(v0 + 320), v11 = *(v0 + 280), v12 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleDate, swift_beginAccess(), sub_1000082B4(v11 + v12, v8, &unk_100AD4790, &unk_10093B4E0), v13 = *(v10 + 48), LODWORD(v9) = v13(v8, 1, v9), sub_100004F84(v8, &unk_100AD4790, &unk_10093B4E0), v9 == 1) || (v14 = *(v0 + 472), v15 = *(v0 + 312), v16 = *(v0 + 280), v17 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleEndDate, swift_beginAccess(), sub_1000082B4(v16 + v17, v14, &unk_100AD4790, &unk_10093B4E0), LODWORD(v15) = v13(v14, 1, v15), sub_100004F84(v14, &unk_100AD4790, &unk_10093B4E0), v15 == 1))
    {
      v18 = *(v0 + 488);
      v19 = *(v0 + 464);
      v101 = *(v0 + 456);
      v105 = *(v0 + 448);
      v106 = *(v0 + 440);
      v108 = *(v0 + 424);
      v109 = *(v0 + 432);
      v20 = *(v0 + 416);
      v107 = *(v0 + 400);
      v103 = *(v0 + 392);
      v104 = *(v0 + 408);
      v115 = *(v0 + 384);
      v110 = *(v0 + 368);
      v111 = *(v0 + 360);
      v112 = *(v0 + 376);
      v21 = *(v0 + 312);
      v22 = *(v0 + 320);
      v23 = *(v0 + 280);
      v24 = [v7 suggestionIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = [v7 startDate];
      v102 = v19;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = *(v22 + 56);
      v26(v19, 0, 1, v21);
      v27 = [v7 endDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v26(v101, 0, 1, v21);
      v28 = *(v103 + 16);
      v28(v18, v20, v115);
      (*(v103 + 56))(v18, 0, 1, v115);
      swift_beginAccess();
      sub_100014318(v18, v114 + v113, &qword_100AD1420, &unk_10093C080);
      swift_endAccess();
      v29 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleDate;
      swift_beginAccess();
      sub_100221D8C(v102, v23 + v29);
      swift_endAccess();
      v30 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleEndDate;
      swift_beginAccess();
      sub_100221D8C(v101, v23 + v30);
      swift_endAccess();
      v31 = swift_allocObject();
      swift_weakInit();
      v28(v104, v20, v115);
      sub_1000082B4(v102, v105, &unk_100AD4790, &unk_10093B4E0);
      sub_1000082B4(v101, v106, &unk_100AD4790, &unk_10093B4E0);
      v32 = (*(v103 + 80) + 24) & ~*(v103 + 80);
      v33 = *(v108 + 80);
      v34 = (v107 + v33 + v32) & ~v33;
      v35 = (v109 + v33 + v34) & ~v33;
      v36 = swift_allocObject();
      *(v0 + 520) = v36;
      *(v36 + 16) = v31;
      (*(v103 + 32))(v36 + v32, v104, v115);
      sub_100021CEC(v105, v36 + v34, &unk_100AD4790, &unk_10093B4E0);
      sub_100021CEC(v106, v36 + v35, &unk_100AD4790, &unk_10093B4E0);
      (*(v110 + 104))(v112, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v111);
      v37 = swift_task_alloc();
      *(v0 + 528) = v37;
      *v37 = v0;
      *(v37 + 8) = sub_100613A8C;
      v38 = *(v0 + 376);
      v39 = sub_1003A9920;
      v40 = &type metadata for () + 1;
      v41 = v36;

      return NSManagedObjectContext.perform<A>(schedule:_:)(v37, v38, v39, v41, v40);
    }

    v45 = *(v0 + 344);
    v44 = *(v0 + 352);
    v46 = *(v0 + 336);
    sub_1000065A8(0, &qword_100AE1A30, NSUserDefaults_ptr);
    v47 = static NSUserDefaults.shared.getter();
    (*(v45 + 104))(v44, enum case for SettingsKey.alwaysUseMomentDate(_:), v46);
    SettingsKey.rawValue.getter();
    (*(v45 + 8))(v44, v46);
    v48 = String._bridgeToObjectiveC()();

    LODWORD(v44) = [v47 BOOLForKey:v48];

    if (!v44 || (sub_10005AAB0(1) & 1) != 0 || (sub_10005AAB0(16) & 1) != 0)
    {
      if (sub_100554A40() == 2)
      {
        goto LABEL_21;
      }

      v49 = sub_1000819F8();
      if (v49)
      {
        v50 = v49;
        v51 = [v49 string];

        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        if ((v54 & 0x2000000000000000) == 0)
        {
          v55 = v52 & 0xFFFFFFFFFFFFLL;
          goto LABEL_20;
        }
      }

      else
      {
        v54 = 0xE000000000000000;
      }

      v55 = HIBYTE(v54) & 0xF;
LABEL_20:
      if (!v55)
      {
        v69 = [*(v0 + 272) title];
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = v71;

        v73 = HIBYTE(v72) & 0xF;
        if ((v72 & 0x2000000000000000) == 0)
        {
          v73 = v70 & 0xFFFFFFFFFFFFLL;
        }

        if (v73 && [*(v0 + 272) type] != 11)
        {
          v74 = *(v0 + 280);
          v75 = [*(v0 + 272) title];
          v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v78 = v77;

          sub_10077F5F8(v76, v78);

          *(v74 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) = 1;
          v79 = *(v74 + 24);
          v80 = swift_allocObject();
          swift_weakInit();
          *(v0 + 96) = sub_1003A9A34;
          *(v0 + 104) = v80;
          *(v0 + 64) = _NSConcreteStackBlock;
          *(v0 + 72) = 1107296256;
          *(v0 + 80) = sub_100006C7C;
          *(v0 + 88) = &unk_100A75D90;
          v81 = _Block_copy((v0 + 64));

          [v79 performBlock:v81];
          _Block_release(v81);
        }
      }

LABEL_21:
      v56 = *(*(v0 + 280) + OBJC_IVAR____TtC7Journal14EntryViewModel_prompts);
      if (v56)
      {
        v57 = [v56 string];
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        if ((v60 & 0x2000000000000000) == 0)
        {
          v61 = v58 & 0xFFFFFFFFFFFFLL;
          goto LABEL_26;
        }
      }

      else
      {
        v60 = 0xE000000000000000;
      }

      v61 = HIBYTE(v60) & 0xF;
LABEL_26:
      if (!v61)
      {
        v62 = [*(v0 + 272) writingPrompts];
        v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v64 = *(v63 + 16);
        if (!v64)
        {
          goto LABEL_34;
        }

        v37 = sub_1001C2FA4(v64);
        if ((v37 & 0x8000000000000000) != 0)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (v37 >= *(v63 + 16))
        {
LABEL_52:
          __break(1u);
          return NSManagedObjectContext.perform<A>(schedule:_:)(v37, v38, v39, v41, v40);
        }

        v65 = v63 + 16 * v37;
        v66 = *(v65 + 32);
        v67 = *(v65 + 40);

        v68 = HIBYTE(v67) & 0xF;
        if ((v67 & 0x2000000000000000) == 0)
        {
          v68 = v66 & 0xFFFFFFFFFFFFLL;
        }

        if (v68 && [*(v0 + 272) type] != 11)
        {
          v91 = objc_allocWithZone(NSAttributedString);
          v92 = String._bridgeToObjectiveC()();

          v93 = [v91 initWithString:v92];

          sub_100786300(v93);
        }

        else
        {
LABEL_34:
        }
      }

      if ([*(v0 + 272) type] != 10 || (v94 = *(v0 + 280), *(v94 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner) = 1, v95 = *(v94 + 24), v96 = swift_allocObject(), *(v96 + 16) = sub_1003A9A2C, *(v96 + 24) = v94, *(v0 + 48) = sub_100028ECC, *(v0 + 56) = v96, *(v0 + 16) = _NSConcreteStackBlock, *(v0 + 24) = 1107296256, *(v0 + 32) = sub_10001A7D4, *(v0 + 40) = &unk_100A75D68, v97 = _Block_copy((v0 + 16)), , , , objc_msgSend(v95, "performBlockAndWait:", v97), _Block_release(v97), LOBYTE(v95) = swift_isEscapingClosureAtFileLocation(), , v37 = , (v95 & 1) == 0))
      {
        v98 = swift_task_alloc();
        *(v0 + 544) = v98;
        *v98 = v0;
        v98[1] = sub_100614A1C;
        v100 = *(v0 + 256);
        v99 = *(v0 + 264);

        return sub_10062833C(v100, v99);
      }

      __break(1u);
      goto LABEL_51;
    }

    v83 = *(v0 + 296);
    v82 = *(v0 + 304);
    v84 = *(v0 + 288);
    v85 = [*(v0 + 272) startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v83 + 104))(v82, enum case for EntryDateSource.moment(_:), v84);
    v86 = swift_task_alloc();
    *(v0 + 536) = v86;
    *v86 = v0;
    v86[1] = sub_100614310;
    v87 = *(v0 + 328);
    v88 = *(v0 + 304);
    v90 = *(v0 + 256);
    v89 = *(v0 + 264);

    return sub_10078281C(v90, v89, v87, v88);
  }

  else
  {

    v42 = *(v0 + 8);

    return v42();
  }
}

void sub_100613A8C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[46] + 8))(v2[47], v2[45]);

    v3 = v2[63];
    v4 = v2[64];

    _swift_task_switch(sub_100613BE0, v3, v4);
  }
}

void sub_100613BE0()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 416);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  sub_100004F84(*(v0 + 456), &unk_100AD4790, &unk_10093B4E0);
  sub_100004F84(v1, &unk_100AD4790, &unk_10093B4E0);
  (*(v4 + 8))(v2, v3);
  v6 = *(v0 + 344);
  v5 = *(v0 + 352);
  v7 = *(v0 + 336);
  sub_1000065A8(0, &qword_100AE1A30, NSUserDefaults_ptr);
  v8 = static NSUserDefaults.shared.getter();
  (*(v6 + 104))(v5, enum case for SettingsKey.alwaysUseMomentDate(_:), v7);
  SettingsKey.rawValue.getter();
  (*(v6 + 8))(v5, v7);
  v9 = String._bridgeToObjectiveC()();

  LODWORD(v5) = [v8 BOOLForKey:v9];

  if (!v5 || (sub_10005AAB0(1) & 1) != 0 || (sub_10005AAB0(16) & 1) != 0)
  {
    if (sub_100554A40() == 2)
    {
      goto LABEL_16;
    }

    v10 = sub_1000819F8();
    if (v10)
    {
      v11 = v10;
      v12 = [v10 string];

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((v15 & 0x2000000000000000) == 0)
      {
        if ((v13 & 0xFFFFFFFFFFFFLL) != 0)
        {
          goto LABEL_16;
        }

LABEL_11:
        v16 = [*(v0 + 272) title];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v20 = v17 & 0xFFFFFFFFFFFFLL;
        }

        if (v20 && [*(v0 + 272) type] != 11)
        {
          v21 = *(v0 + 280);
          v22 = [*(v0 + 272) title];
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          sub_10077F5F8(v23, v25);

          *(v21 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) = 1;
          v26 = *(v21 + 24);
          v27 = swift_allocObject();
          swift_weakInit();
          *(v0 + 96) = sub_1003A9A34;
          *(v0 + 104) = v27;
          *(v0 + 64) = _NSConcreteStackBlock;
          *(v0 + 72) = 1107296256;
          *(v0 + 80) = sub_100006C7C;
          *(v0 + 88) = &unk_100A75D90;
          v28 = _Block_copy((v0 + 64));

          [v26 performBlock:v28];
          _Block_release(v28);
        }

LABEL_16:
        v29 = *(*(v0 + 280) + OBJC_IVAR____TtC7Journal14EntryViewModel_prompts);
        if (v29)
        {
          v30 = [v29 string];
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          if ((v33 & 0x2000000000000000) == 0)
          {
            if ((v31 & 0xFFFFFFFFFFFFLL) != 0)
            {
              goto LABEL_35;
            }

LABEL_22:
            v34 = [*(v0 + 272) writingPrompts];
            v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v36 = *(v35 + 16);
            if (!v36)
            {
              goto LABEL_29;
            }

            v37 = sub_1001C2FA4(v36);
            if ((v37 & 0x8000000000000000) != 0)
            {
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            if (v37 >= *(v35 + 16))
            {
LABEL_42:
              __break(1u);
              return;
            }

            v38 = v35 + 16 * v37;
            v39 = *(v38 + 32);
            v40 = *(v38 + 40);

            v41 = HIBYTE(v40) & 0xF;
            if ((v40 & 0x2000000000000000) == 0)
            {
              v41 = v39 & 0xFFFFFFFFFFFFLL;
            }

            if (v41 && [*(v0 + 272) type] != 11)
            {
              v51 = objc_allocWithZone(NSAttributedString);
              v52 = String._bridgeToObjectiveC()();

              v53 = [v51 initWithString:v52];

              sub_100786300(v53);
            }

            else
            {
LABEL_29:
            }

LABEL_35:
            if ([*(v0 + 272) type] != 10 || (v54 = *(v0 + 280), *(v54 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner) = 1, v55 = *(v54 + 24), v56 = swift_allocObject(), *(v56 + 16) = sub_1003A9A2C, *(v56 + 24) = v54, *(v0 + 48) = sub_100028ECC, *(v0 + 56) = v56, *(v0 + 16) = _NSConcreteStackBlock, *(v0 + 24) = 1107296256, *(v0 + 32) = sub_10001A7D4, *(v0 + 40) = &unk_100A75D68, v57 = _Block_copy((v0 + 16)), , , , objc_msgSend(v55, "performBlockAndWait:", v57), _Block_release(v57), LOBYTE(v55) = swift_isEscapingClosureAtFileLocation(), , , (v55 & 1) == 0))
            {
              v58 = swift_task_alloc();
              *(v0 + 544) = v58;
              *v58 = v0;
              v58[1] = sub_100614A1C;
              v60 = *(v0 + 256);
              v59 = *(v0 + 264);

              sub_10062833C(v60, v59);
              return;
            }

            __break(1u);
            goto LABEL_41;
          }
        }

        else
        {
          v33 = 0xE000000000000000;
        }

        if ((v33 & 0xF00000000000000) != 0)
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    if ((v15 & 0xF00000000000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v43 = *(v0 + 296);
  v42 = *(v0 + 304);
  v44 = *(v0 + 288);
  v45 = [*(v0 + 272) startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v43 + 104))(v42, enum case for EntryDateSource.moment(_:), v44);
  v46 = swift_task_alloc();
  *(v0 + 536) = v46;
  *v46 = v0;
  v46[1] = sub_100614310;
  v47 = *(v0 + 328);
  v48 = *(v0 + 304);
  v50 = *(v0 + 256);
  v49 = *(v0 + 264);

  sub_10078281C(v50, v49, v47, v48);
}

uint64_t sub_100614310()
{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 320);
  v4 = *(*v0 + 312);
  v5 = *(*v0 + 304);
  v6 = *(*v0 + 296);
  v7 = *(*v0 + 288);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = *(v1 + 512);
  v9 = *(v1 + 504);

  return _swift_task_switch(sub_1006144F0, v9, v8);
}

void sub_1006144F0()
{
  if (sub_100554A40() == 2)
  {
    goto LABEL_13;
  }

  v1 = sub_1000819F8();
  if (!v1)
  {
    v6 = 0xE000000000000000;
LABEL_7:
    if ((v6 & 0xF00000000000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v1 string];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if ((v6 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((v4 & 0xFFFFFFFFFFFFLL) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v7 = [*(v0 + 272) title];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11 && [*(v0 + 272) type] != 11)
  {
    v12 = *(v0 + 280);
    v13 = [*(v0 + 272) title];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_10077F5F8(v14, v16);

    *(v12 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) = 1;
    v17 = *(v12 + 24);
    v18 = swift_allocObject();
    swift_weakInit();
    *(v0 + 96) = sub_1003A9A34;
    *(v0 + 104) = v18;
    *(v0 + 64) = _NSConcreteStackBlock;
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_100006C7C;
    *(v0 + 88) = &unk_100A75D90;
    v19 = _Block_copy((v0 + 64));

    [v17 performBlock:v19];
    _Block_release(v19);
  }

LABEL_13:
  v20 = *(*(v0 + 280) + OBJC_IVAR____TtC7Journal14EntryViewModel_prompts);
  if (v20)
  {
    v21 = [v20 string];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if ((v24 & 0x2000000000000000) == 0)
    {
      if ((v22 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  if ((v24 & 0xF00000000000000) != 0)
  {
    goto LABEL_29;
  }

LABEL_19:
  v25 = [*(v0 + 272) writingPrompts];
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = *(v26 + 16);
  if (!v27)
  {
    goto LABEL_26;
  }

  v28 = sub_1001C2FA4(v27);
  if ((v28 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v28 >= *(v26 + 16))
  {
LABEL_36:
    __break(1u);
    return;
  }

  v29 = v26 + 16 * v28;
  v30 = *(v29 + 32);
  v31 = *(v29 + 40);

  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v32 && [*(v0 + 272) type] != 11)
  {
    v33 = objc_allocWithZone(NSAttributedString);
    v34 = String._bridgeToObjectiveC()();

    v35 = [v33 initWithString:v34];

    sub_100786300(v35);
  }

  else
  {
LABEL_26:
  }

LABEL_29:
  if ([*(v0 + 272) type] == 10)
  {
    v36 = *(v0 + 280);
    *(v36 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner) = 1;
    v37 = *(v36 + 24);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1003A9A2C;
    *(v38 + 24) = v36;
    *(v0 + 48) = sub_100028ECC;
    *(v0 + 56) = v38;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10001A7D4;
    *(v0 + 40) = &unk_100A75D68;
    v39 = _Block_copy((v0 + 16));

    [v37 performBlockAndWait:v39];
    _Block_release(v39);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if (v37)
    {
      __break(1u);
      goto LABEL_35;
    }
  }

  v40 = swift_task_alloc();
  *(v0 + 544) = v40;
  *v40 = v0;
  v40[1] = sub_100614A1C;
  v42 = *(v0 + 256);
  v41 = *(v0 + 264);

  sub_10062833C(v42, v41);
}

uint64_t sub_100614A1C()
{
  v1 = *v0;

  v2 = *(v1 + 512);
  v3 = *(v1 + 504);

  return _swift_task_switch(sub_100614B3C, v3, v2);
}

uint64_t sub_100614B3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100614C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100614CFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PendingPhotoAsset(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100032ECC;

  return sub_10060F868(a1, v10, v11, v12, v1 + v6, v13, v14, v1 + v9);
}

double sub_100614E8C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100614EA4(result, a2 & 1);
  }

  return v2;
}

double sub_100614EA4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

double sub_100614EB0(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100614EC8(result, a2 & 1);
  }

  return v2;
}

double sub_100614EC8(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
  }

  return result;
}

uint64_t sub_100614EE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100614F44(char *a1)
{
  v3 = *(type metadata accessor for PendingPhotoAsset(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1000F24EC(&qword_100AE0D78, &qword_1009521F0) - 8);
  v9 = (*(v8 + 80) + v7 + 8) & ~*(v8 + 80);
  sub_10060B8B8(a1, *(v1 + 16), *(v1 + 24), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v7), v1 + v9, *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100615084(void *a1)
{
  result = [a1 reflectionType];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100532560();
    v4 = v3;
    v5 = [a1 reflectionPrompts];
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v6 + 16))
    {

      v7 = objc_allocWithZone(NSAttributedString);
      v8 = String._bridgeToObjectiveC()();

      [v7 initWithString:v8];
    }

    else
    {
    }

    return v4;
  }

  return result;
}

double sub_10061518C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void (*a6)(unint64_t, unint64_t))
{
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v13._countAndFlagsBits = a3;
  v13._object = a4;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 2108704;
  v14._object = 0xE300000000000000;
  String.append(_:)(v14);
  if ([a5 respondsToSelector:"debugDescription"])
  {
    v15 = [a5 debugDescription];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v17;

    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  v19 = v12;
  String.append(_:)(*&v18);

  sub_100606AE0(a1, a2, 0xD000000000000012, 0x80000001008FEE10, a6);

  return result;
}

void sub_1006152DC(uint64_t a1, void *a2, void (*a3)(unint64_t, unint64_t), uint64_t a4, void (*a5)(unint64_t, unint64_t, __n128), uint64_t a6, __n128 a7)
{
  v173 = a4;
  v172 = a3;
  v162 = a2;
  v167 = type metadata accessor for VisitDuration(0);
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v161 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v171 = &v147 - v12;
  v160 = sub_1000F24EC(&qword_100AD2680, &unk_100940CC0);
  __chkstk_darwin(v160);
  v159 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v158 = &v147 - v15;
  v157 = sub_1000F24EC(&qword_100AE0D70, &unk_1009521E0);
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v154 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = v16;
  __chkstk_darwin(v17);
  v176 = &v147 - v18;
  v19 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v19 - 8);
  v165 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v147 - v22;
  v24 = type metadata accessor for Date();
  v153 = *(v24 - 8);
  __chkstk_darwin(v24);
  v151 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v185 = &v147 - v27;
  __chkstk_darwin(v28);
  v30 = &v147 - v29;
  v152 = v31;
  __chkstk_darwin(v32);
  v169 = &v147 - v33;
  v186 = sub_1000F24EC(&qword_100AD64E8, &qword_1009451B0);
  v170 = *(v186 - 8);
  __chkstk_darwin(v186);
  v180 = &v147 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v187 = &v147 - v36;
  __chkstk_darwin(v37);
  v168 = &v147 - v38;
  __chkstk_darwin(v39);
  v41 = &v147 - v40;
  v189 = type metadata accessor for VisitAssetMetadata();
  v43 = __chkstk_darwin(v189);
  v174 = &v147 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v45 = *(a1 + 16)) == 0)
  {
    a5(0xD000000000000014, 0x80000001008FEE30, v43);
    return;
  }

  v183 = v23;
  v190 = v30;
  v148 = a6;
  v149 = a5;
  v182 = *(v42 + 16);
  v46 = a1 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
  v178 = *(v42 + 72);
  v177 = (v153 + 48);
  v181 = (v153 + 32);
  v175 = (v42 + 32);
  v163 = "Visit durations = []";
  v47 = (v42 + 8);
  v184 = _swiftEmptyArrayStorage;
  v48 = v186;
  v49 = v189;
  v191 = v24;
  v179 = (v42 + 8);
  v50 = v174;
  v164 = (v42 + 16);
  do
  {
    v188 = v45;
    v182(v50, v46, v49, v43);
    v51 = v183;
    VisitAssetMetadata.visitStartTime.getter();
    if ((*v177)(v51, 1, v24) == 1)
    {
      sub_100004F84(v51, &unk_100AD4790, &unk_10093B4E0);
      v172(0xD000000000000040, v163 | 0x8000000000000000);
      (*v47)(v50, v49);
    }

    else
    {
      v52 = *v181;
      v53 = v41;
      v54 = v169;
      (*v181)(v169, v51, v24);
      v55 = *(v48 + 48);
      v56 = v168;
      v57 = v54;
      v41 = v53;
      v52(v168, v57, v24);
      (*v175)(&v56[v55], v50, v49);
      sub_100021CEC(v56, v53, &qword_100AD64E8, &qword_1009451B0);
      v58 = v184;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1003E5D98(0, *(v58 + 2) + 1, 1, v58);
      }

      v60 = *(v58 + 2);
      v59 = *(v58 + 3);
      v24 = v191;
      v47 = v179;
      if (v60 >= v59 >> 1)
      {
        v58 = sub_1003E5D98((v59 > 1), v60 + 1, 1, v58);
      }

      *(v58 + 2) = v60 + 1;
      v61 = (*(v170 + 80) + 32) & ~*(v170 + 80);
      v184 = v58;
      sub_100021CEC(v53, v58 + v61 + *(v170 + 72) * v60, &qword_100AD64E8, &qword_1009451B0);
      v48 = v186;
      v49 = v189;
      v50 = v174;
    }

    v46 += v178;
    v45 = v188 - 1;
  }

  while (v188 != 1);
  v193 = v184;

  sub_10060FBCC(&v193);

  v62 = v193;
  v63 = [objc_allocWithZone(NSDateFormatter) init];
  v64 = String._bridgeToObjectiveC()();
  v168 = v63;
  [v63 setDateFormat:v64];

  v65 = *(v62 + 2);
  if (v65)
  {
    v66 = (*(v170 + 80) + 32) & ~*(v170 + 80);
    v147 = v62;
    v67 = v62 + v66;
    v177 = *(v170 + 72);
    v150 = "MM/dd/yyyy@HH:mm:ss";
    v188 = (v153 + 8);
    v164 = (v153 + 56);
    v163 = v153 + 16;
    v170 = v65;
    v68 = _swiftEmptyArrayStorage;
    v69 = 1;
    v178 = _swiftEmptyArrayStorage;
    v70 = v181;
    v174 = -v65;
    while (1)
    {
      v184 = v68;
      v78 = v187;
      sub_1000082B4(v67, v187, &qword_100AD64E8, &qword_1009451B0);
      v79 = v180;
      sub_1000082B4(v78, v180, &qword_100AD64E8, &qword_1009451B0);
      v80 = v186;
      v81 = *(v186 + 48);
      v82 = *v70;
      v83 = v191;
      (*v70)(v190, v79, v191);
      v84 = *v179;
      (*v179)(v79 + v81, v189);
      v182 = v69;
      v183 = v67;
      if (v69 >= v170)
      {
        v87 = [v162 endDate];
        v86 = v185;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        sub_1000082B4(v177 + v67, v79, &qword_100AD64E8, &qword_1009451B0);
        v85 = *(v80 + 48);
        v86 = v185;
        v82(v185, v79, v83);
        v84(v79 + v85, v189);
      }

      v88 = v190;
      v89 = static Date.< infix(_:_:)();
      v90 = v174;
      if (v89)
      {
        sub_10008D1A8(&qword_100AD2698, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v91 = v191;
        if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
        {
          __break(1u);

          __break(1u);
          return;
        }

        v92 = *v163;
        v169 = v92;
        v93 = v158;
        (v92)(v158, v190, v91);
        v94 = v160;
        (v92)(v93 + *(v160 + 48), v86, v91);
        v95 = v159;
        sub_1000082B4(v93, v159, &qword_100AD2680, &unk_100940CC0);
        v96 = *(v94 + 48);
        v97 = v176;
        v82(v176, v95, v91);
        v98 = *v188;
        (*v188)(v95 + v96, v191);
        sub_100021CEC(v93, v95, &qword_100AD2680, &unk_100940CC0);
        v82((v97 + *(v157 + 36)), v95 + *(v94 + 48), v191);
        v99 = v191;
        v98(v95, v191);
        v100 = v165;
        (v169)(v165, v185, v99);
        (*v164)(v100, 0, 1, v99);
        v101 = sub_100606198(v190, v100, v168);
        v103 = v102;
        sub_100004F84(v100, &unk_100AD4790, &unk_10093B4E0);
        v104 = v178;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_10009BCC8(0, *(v104 + 2) + 1, 1, v104);
        }

        v106 = *(v104 + 2);
        v105 = *(v104 + 3);
        v107 = v98;
        if (v106 >= v105 >> 1)
        {
          v104 = sub_10009BCC8((v105 > 1), v106 + 1, 1, v104);
        }

        *(v104 + 2) = v106 + 1;
        v178 = v104;
        v108 = &v104[2 * v106];
        *(v108 + 4) = v101;
        *(v108 + 5) = v103;
        v109 = v180;
        sub_1000082B4(v187, v180, &qword_100AD64E8, &qword_1009451B0);
        v110 = *(v186 + 48);
        v111 = v154;
        sub_1000082B4(v176, v154, &qword_100AE0D70, &unk_1009521E0);
        v112 = (*(v156 + 80) + 16) & ~*(v156 + 80);
        v113 = swift_allocObject();
        sub_100021CEC(v111, v113 + v112, &qword_100AE0D70, &unk_1009521E0);
        v114 = (v109 + v110);
        v115 = v171;
        (*v175)(v171, v114, v189);
        v116 = (v115 + *(v167 + 20));
        *v116 = sub_1006227C8;
        v116[1] = v113;
        v107(v109, v99);
        v68 = v184;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_1003E6394(0, *(v68 + 2) + 1, 1, v68);
        }

        v117 = v190;
        v119 = *(v68 + 2);
        v118 = *(v68 + 3);
        if (v119 >= v118 >> 1)
        {
          v68 = sub_1003E6394((v118 > 1), v119 + 1, 1, v68);
        }

        sub_100004F84(v176, &qword_100AE0D70, &unk_1009521E0);
        v107(v185, v99);
        v107(v117, v99);
        sub_100004F84(v187, &qword_100AD64E8, &qword_1009451B0);
        *(v68 + 2) = v119 + 1;
        sub_100617828(v171, v68 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v119, type metadata accessor for VisitDuration);
        v70 = v181;
        v90 = v174;
      }

      else if (static Date.== infix(_:_:)())
      {
        v120 = v165;
        v121 = v191;
        (*v164)(v165, 1, 1, v191);
        v122 = sub_100606198(v88, v120, v168);
        v124 = v123;
        sub_100004F84(v120, &unk_100AD4790, &unk_10093B4E0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v178 = sub_10009BCC8(0, *(v178 + 2) + 1, 1, v178);
        }

        v126 = *(v178 + 2);
        v125 = *(v178 + 3);
        if (v126 >= v125 >> 1)
        {
          v178 = sub_10009BCC8((v125 > 1), v126 + 1, 1, v178);
        }

        v127 = v178;
        *(v178 + 2) = v126 + 1;
        v128 = &v127[2 * v126];
        *(v128 + 4) = v122;
        *(v128 + 5) = v124;
        v129 = v180;
        sub_1000082B4(v187, v180, &qword_100AD64E8, &qword_1009451B0);
        v130 = *(v186 + 48);
        v131 = v153;
        v132 = v151;
        (*(v153 + 16))(v151, v88, v121);
        v133 = (*(v131 + 80) + 16) & ~*(v131 + 80);
        v134 = swift_allocObject();
        v82((v134 + v133), v132, v121);
        v135 = (v129 + v130);
        v136 = v161;
        (*v175)(v161, v135, v189);
        v137 = (v136 + *(v167 + 20));
        *v137 = sub_100622758;
        v137[1] = v134;
        v138 = *(v131 + 8);
        (v138)(v129, v121);
        v68 = v184;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_1003E6394(0, *(v68 + 2) + 1, 1, v68);
        }

        v140 = *(v68 + 2);
        v139 = *(v68 + 3);
        if (v140 >= v139 >> 1)
        {
          v68 = sub_1003E6394((v139 > 1), v140 + 1, 1, v68);
        }

        v138();
        (v138)(v88, v121);
        sub_100004F84(v187, &qword_100AD64E8, &qword_1009451B0);
        *(v68 + 2) = v140 + 1;
        sub_100617828(v161, v68 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v140, type metadata accessor for VisitDuration);
        v70 = v181;
      }

      else
      {
        v193 = 0;
        v194 = 0xE000000000000000;
        _StringGuts.grow(_:)(61);
        v71._countAndFlagsBits = 0xD000000000000029;
        v71._object = (v150 | 0x8000000000000000);
        String.append(_:)(v71);
        sub_10008D1A8(&qword_100AE1D80, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v72 = v191;
        v73._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v73);

        v74._countAndFlagsBits = 0x20646E65203E2029;
        v74._object = 0xEE00282065746164;
        String.append(_:)(v74);
        v75._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v75);

        v76._countAndFlagsBits = 11817;
        v76._object = 0xE200000000000000;
        String.append(_:)(v76);
        v172(v193, v194);

        v77 = *v188;
        (*v188)(v86, v72);
        v77(v88, v72);
        sub_100004F84(v187, &qword_100AD64E8, &qword_1009451B0);
        v68 = v184;
      }

      v69 = v182 + 1;
      v67 = v177 + v183;
      if ((v182 + v90 + 1) == 1)
      {

        v141 = v178;
        goto LABEL_43;
      }
    }
  }

  v141 = _swiftEmptyArrayStorage;
LABEL_43:
  v193 = 0;
  v194 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v193 = 0xD000000000000014;
  v194 = 0x80000001008FEEF0;
  v192 = v141;
  sub_1000F24EC(&qword_100AD60A0, &qword_100943DB0);
  sub_10000B58C(&qword_100AD2BE0, &qword_100AD60A0, &qword_100943DB0, &protocol conformance descriptor for [A]);
  v142 = BidirectionalCollection<>.joined(separator:)();
  v144 = v143;

  v145._countAndFlagsBits = v142;
  v145._object = v144;
  String.append(_:)(v145);

  v146._countAndFlagsBits = 23818;
  v146._object = 0xE200000000000000;
  String.append(_:)(v146);
  (v149)(v193, v194);
}

uint64_t sub_1006167D4(uint64_t a1, unint64_t a2)
{
  v125 = a1;
  v3 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v102 - v4;
  v119 = sub_1000F24EC(&unk_100AEE0A0, &unk_100943F50);
  __chkstk_darwin(v119);
  v118 = (&v102 - v6);
  v117 = sub_1000F24EC(&qword_100AD5B20, qword_1009521A0);
  v7 = *(v117 - 8);
  __chkstk_darwin(v117);
  v104 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v102 - v10;
  __chkstk_darwin(v12);
  v14 = &v102 - v13;
  v15 = type metadata accessor for PhotoLibraryAssetMetadata();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v103 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v102 - v19;
  __chkstk_darwin(v21);
  v112 = &v102 - v22;
  v130 = a2;
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result >= 1)
  {
    v24 = 0;
    v115 = (v7 + 56);
    v127 = (v16 + 48);
    v128 = v130 & 0xC000000000000001;
    v122 = (v16 + 8);
    v123 = (v16 + 32);
    v105 = (v16 + 56);
    v114 = xmmword_100941EE0;
    v106 = v5;
    v116 = v11;
    v124 = v14;
    v126 = v15;
    v113 = v20;
    v129 = result;
    while (1)
    {
      if (v128)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v130 + 8 * v24 + 32);
      }

      v27 = v26;
      type metadata accessor for PhotoAsset(0);
      v28 = swift_dynamicCastClass();
      v131 = v27;
      if (v28)
      {
        v29 = v28;
        v30 = OBJC_IVAR____TtC7Journal10PhotoAsset_metadata;
        if (*(v28 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata))
        {
          goto LABEL_18;
        }

        v31 = *(v28 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
        if (v31)
        {
          v32 = [v31 assetMetaData];
          if (v32)
          {
            v33 = v32;
            v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;

            v37 = v118;
            *v118 = v34;
            v37[1] = v36;
            v15 = v126;
            v14 = v124;
            swift_storeEnumTagMultiPayload();
            sub_1000F24EC(&unk_100AEE0B0, &unk_100943F60);
            v38 = swift_allocObject();
            (*v115)(v38 + *(*v38 + 104), 1, 1, v117);
            *(v38 + *(*v38 + 112)) = v114;
            v39 = v37;
            v11 = v116;
            sub_100021CEC(v39, v38 + *(*v38 + 120), &unk_100AEE0A0, &unk_100943F50);
            *(v29 + v30) = v38;
          }
        }

        if (*(v29 + v30))
        {
LABEL_18:

          sub_100046ADC(v14);

          if ((*v127)(v14, 1, v15) != 1)
          {
            v40 = v112;
            (*v123)(v112, v14, v15);
            PhotoLibraryAssetMetadata.date.getter();
            v41 = sub_100606500(v5, v125);
            v120 = v42;
            v121 = v41;
            v44 = v43;
            v46 = v45;
            sub_100004F84(v5, &unk_100AD4790, &unk_10093B4E0);
            if (v46 == 1)
            {
              v15 = v126;
              (*v122)(v40, v126);
            }

            else
            {
              v111 = PhotoLibraryAssetMetadata.assetIdentifier.getter();
              v110 = v73;
              PhotoLibraryAssetMetadata.date.getter();
              v108 = PhotoLibraryAssetMetadata.size.getter();
              v107 = v74;
              PhotoLibraryAssetMetadata.squareCropRect.getter();
              v109 = v44;
              PhotoLibraryAssetMetadata.landscapeCropRect.getter();
              PhotoLibraryAssetMetadata.portraitCropRect.getter();
              v11 = v116;
              v5 = v106;
              v75 = v113;
              v76 = v118;
              PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
              v77 = v126;
              (*v122)(v40, v126);
              swift_storeEnumTagMultiPayload();
              sub_1000F24EC(&unk_100AEE0B0, &unk_100943F60);
              v78 = swift_allocObject();
              (*v115)(v78 + *(*v78 + 104), 1, 1, v117);
              *(v78 + *(*v78 + 112)) = v114;
              v79 = v76;
              v14 = v124;
              sub_100021CEC(v79, v78 + *(*v78 + 120), &unk_100AEE0A0, &unk_100943F50);
              *(v29 + v30) = v78;

              v15 = v77;
              v20 = v75;
            }

            goto LABEL_8;
          }
        }

        else
        {

          (*v105)(v14, 1, 1, v15);
        }

        v25 = v14;
      }

      else
      {
        type metadata accessor for LivePhotoAsset(0);
        v47 = swift_dynamicCastClass();
        if (v47)
        {
          v48 = v47;
          v49 = OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata;
          if (*(v47 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata))
          {
            goto LABEL_27;
          }

          v50 = *(v47 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
          if (v50)
          {
            v51 = [v50 assetMetaData];
            if (v51)
            {
              v52 = v51;
              v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v55 = v54;

              v56 = v118;
              *v118 = v53;
              v56[1] = v55;
              v15 = v126;
              v14 = v124;
              swift_storeEnumTagMultiPayload();
              sub_1000F24EC(&unk_100AEE0B0, &unk_100943F60);
              v57 = swift_allocObject();
              (*v115)(v57 + *(*v57 + 104), 1, 1, v117);
              *(v57 + *(*v57 + 112)) = v114;
              v58 = v56;
              v11 = v116;
              sub_100021CEC(v58, v57 + *(*v57 + 120), &unk_100AEE0A0, &unk_100943F50);
              *(v48 + v49) = v57;
            }
          }

          if (*(v48 + v49))
          {
LABEL_27:

            sub_100046ADC(v11);

            if ((*v127)(v11, 1, v15) != 1)
            {
              (*v123)(v20, v11, v15);
              PhotoLibraryAssetMetadata.date.getter();
              v80 = sub_100606500(v5, v125);
              v82 = v81;
              v121 = v83;
              v85 = v84;
              sub_100004F84(v5, &unk_100AD4790, &unk_10093B4E0);
              if (v85 == 1)
              {
                (*v122)(v20, v15);
              }

              else
              {
                v120 = v82;
                v111 = PhotoLibraryAssetMetadata.assetIdentifier.getter();
                v110 = v86;
                PhotoLibraryAssetMetadata.date.getter();
                v108 = PhotoLibraryAssetMetadata.size.getter();
                v107 = v87;
                PhotoLibraryAssetMetadata.squareCropRect.getter();
                v109 = v80;
                PhotoLibraryAssetMetadata.landscapeCropRect.getter();
                PhotoLibraryAssetMetadata.portraitCropRect.getter();
                v5 = v106;
                v11 = v116;
                v20 = v113;
                v88 = v118;
                PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
                (*v122)(v20, v126);
                swift_storeEnumTagMultiPayload();
                sub_1000F24EC(&unk_100AEE0B0, &unk_100943F60);
                v89 = swift_allocObject();
                (*v115)(v89 + *(*v89 + 104), 1, 1, v117);
                *(v89 + *(*v89 + 112)) = v114;
                sub_100021CEC(v88, v89 + *(*v89 + 120), &unk_100AEE0A0, &unk_100943F50);
                *(v48 + v49) = v89;

                v15 = v126;
              }

              v14 = v124;
              goto LABEL_8;
            }
          }

          else
          {

            (*v105)(v11, 1, 1, v15);
          }

          v25 = v11;
        }

        else
        {
          type metadata accessor for VideoAsset(0);
          v59 = swift_dynamicCastClass();
          if (!v59)
          {

            goto LABEL_8;
          }

          v60 = v59;
          v61 = OBJC_IVAR____TtC7Journal10VideoAsset_metadata;
          if (*(v59 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata))
          {
            goto LABEL_35;
          }

          v62 = *(v59 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
          if (v62)
          {
            v63 = [v62 assetMetaData];
            if (v63)
            {
              v64 = v63;
              v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v67 = v66;

              v68 = v118;
              *v118 = v65;
              v68[1] = v67;
              v15 = v126;
              v14 = v124;
              swift_storeEnumTagMultiPayload();
              sub_1000F24EC(&unk_100AEE0B0, &unk_100943F60);
              v69 = swift_allocObject();
              (*v115)(v69 + *(*v69 + 104), 1, 1, v117);
              *(v69 + *(*v69 + 112)) = v114;
              v70 = v68;
              v11 = v116;
              sub_100021CEC(v70, v69 + *(*v69 + 120), &unk_100AEE0A0, &unk_100943F50);
              *(v60 + v61) = v69;
            }
          }

          if (*(v60 + v61))
          {
LABEL_35:

            v71 = v104;
            sub_100046ADC(v104);
            v72 = v71;
            v15 = v126;

            if ((*v127)(v72, 1, v15) != 1)
            {
              v90 = v103;
              (*v123)(v103, v72, v15);
              PhotoLibraryAssetMetadata.date.getter();
              v91 = sub_100606500(v5, v125);
              v93 = v92;
              v121 = v94;
              v96 = v95;
              sub_100004F84(v5, &unk_100AD4790, &unk_10093B4E0);
              if (v96 == 1)
              {
                (*v122)(v90, v15);
              }

              else
              {
                v120 = v93;
                v111 = PhotoLibraryAssetMetadata.assetIdentifier.getter();
                v110 = v97;
                PhotoLibraryAssetMetadata.date.getter();
                v108 = PhotoLibraryAssetMetadata.size.getter();
                v107 = v98;
                v102 = PhotoLibraryAssetMetadata.squareCropRect.getter();
                v109 = v91;
                PhotoLibraryAssetMetadata.landscapeCropRect.getter();
                PhotoLibraryAssetMetadata.portraitCropRect.getter();
                v5 = v106;
                v11 = v116;
                v99 = v118;
                PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
                (*v122)(v90, v126);
                swift_storeEnumTagMultiPayload();
                sub_1000F24EC(&unk_100AEE0B0, &unk_100943F60);
                v100 = swift_allocObject();
                (*v115)(v100 + *(*v100 + 104), 1, 1, v117);
                *(v100 + *(*v100 + 112)) = v114;
                sub_100021CEC(v99, v100 + *(*v100 + 120), &unk_100AEE0A0, &unk_100943F50);
                *(v60 + v61) = v100;

                v15 = v126;
              }

              v14 = v124;
              v20 = v113;
              goto LABEL_8;
            }

            v25 = v72;
          }

          else
          {

            v101 = v104;
            (*v105)(v104, 1, 1, v15);
            v25 = v101;
          }
        }
      }

      sub_100004F84(v25, &qword_100AD5B20, qword_1009521A0);
LABEL_8:
      ++v24;
      result = v129;
      if (v129 == v24)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100617828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006178B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100032EC8;

  return sub_1006086E4(v2, v3);
}

uint64_t sub_100617948(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100032ECC;

  return sub_100608898(a1, a2, v6, v7, v8);
}

uint64_t sub_100617A08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100032EC8;

  return sub_100608548(v2, v3, v4, v6, v5);
}

void sub_100617AC4(unint64_t a1@<X0>, void *a2@<X1>, void (*a3)(unint64_t, unint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(unint64_t, unint64_t, __n128)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v1207 = a6;
  v1206 = a5;
  v1245 = a3;
  v1236 = a2;
  v1208 = a7;
  v1136 = sub_1000F24EC(&qword_100ADA888, &unk_100952410);
  __chkstk_darwin(v1136);
  v1135 = &v1067 - v9;
  v1134 = type metadata accessor for WorkoutIconAssetMetadata();
  v1253 = *(v1134 - 8);
  __chkstk_darwin(v1134);
  v1133 = &v1067 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1132 = sub_1000F24EC(&qword_100ADA8A0, &unk_100952480);
  __chkstk_darwin(v1132);
  v1131 = &v1067 - v11;
  v1130 = type metadata accessor for WorkoutRouteAssetMetadata();
  v1251 = *(v1130 - 8);
  __chkstk_darwin(v1130);
  v1129 = &v1067 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1198 = type metadata accessor for MultiPinMapAssetMetadata();
  v13 = *(v1198 - 8);
  __chkstk_darwin(v1198);
  v1194 = &v1067 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
  __chkstk_darwin(v15 - 8);
  v1197 = &v1067 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v1139 = &v1067 - v18;
  __chkstk_darwin(v19);
  v1149 = &v1067 - v20;
  __chkstk_darwin(v21);
  v1144 = &v1067 - v22;
  v1148 = sub_1000F24EC(&qword_100AD38D0, &qword_1009522B0);
  __chkstk_darwin(v1148);
  v1147 = &v1067 - v23;
  v24 = sub_1000F24EC(&unk_100AEED30, &qword_100941FB0);
  __chkstk_darwin(v24 - 8);
  v1152 = &v1067 - v25;
  v1153 = type metadata accessor for VisitAssetMetadata();
  v1199 = *(v1153 - 8);
  __chkstk_darwin(v1153);
  v1123 = &v1067 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v1122 = &v1067 - v28;
  __chkstk_darwin(v29);
  v1156 = &v1067 - v30;
  v1173 = sub_1000F24EC(&qword_100ADA8F0, &unk_100960720);
  __chkstk_darwin(v1173);
  v1172 = &v1067 - v31;
  v1171 = type metadata accessor for ContactAssetMetadata();
  v1250 = *(v1171 - 8);
  __chkstk_darwin(v1171);
  v1170 = &v1067 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000F24EC(&qword_100AD6030, &qword_100944A50);
  __chkstk_darwin(v33 - 8);
  v1165 = &v1067 - v34;
  v1164 = sub_1000F24EC(&qword_100ADA958, &unk_100960730);
  __chkstk_darwin(v1164);
  v1163 = &v1067 - v35;
  v1162 = type metadata accessor for PodcastAssetMetadata();
  v1249 = *(v1162 - 8);
  __chkstk_darwin(v1162);
  v1161 = &v1067 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1160 = sub_1000F24EC(&qword_100ADA8E0, &unk_100962D70);
  __chkstk_darwin(v1160);
  v1159 = &v1067 - v37;
  v38 = sub_1000F24EC(&qword_100ADF198, &unk_100950340);
  __chkstk_darwin(v38 - 8);
  v1181 = &v1067 - v39;
  v1158 = type metadata accessor for MusicAssetMetadata();
  v40 = *(v1158 - 8);
  __chkstk_darwin(v1158);
  v1157 = &v1067 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1190 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v1190);
  v1189 = (&v1067 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1180 = type metadata accessor for MediaViewType();
  v43 = *(v1180 - 8);
  __chkstk_darwin(v1180);
  v1183 = (&v1067 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v45);
  v1192 = &v1067 - v46;
  v47 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v47 - 8);
  v1118 = &v1067 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v1120 = &v1067 - v50;
  __chkstk_darwin(v51);
  v1119 = &v1067 - v52;
  __chkstk_darwin(v53);
  v1126 = &v1067 - v54;
  __chkstk_darwin(v55);
  v1124 = &v1067 - v56;
  __chkstk_darwin(v57);
  v1125 = &v1067 - v58;
  __chkstk_darwin(v59);
  v1127 = &v1067 - v60;
  __chkstk_darwin(v61);
  v1128 = &v1067 - v62;
  __chkstk_darwin(v63);
  v1138 = &v1067 - v64;
  __chkstk_darwin(v65);
  v1143 = &v1067 - v66;
  __chkstk_darwin(v67);
  v1142 = &v1067 - v68;
  __chkstk_darwin(v69);
  v1141 = &v1067 - v70;
  __chkstk_darwin(v71);
  v1140 = &v1067 - v72;
  __chkstk_darwin(v73);
  v1155 = &v1067 - v74;
  __chkstk_darwin(v75);
  v1151 = &v1067 - v76;
  __chkstk_darwin(v77);
  v1154 = &v1067 - v78;
  __chkstk_darwin(v79);
  v1150 = &v1067 - v80;
  __chkstk_darwin(v81);
  v1169 = &v1067 - v82;
  __chkstk_darwin(v83);
  v1174 = &v1067 - v84;
  __chkstk_darwin(v85);
  v1188 = &v1067 - v86;
  __chkstk_darwin(v87);
  v1187 = &v1067 - v88;
  __chkstk_darwin(v89);
  v1166 = &v1067 - v90;
  __chkstk_darwin(v91);
  v1232 = &v1067 - v92;
  __chkstk_darwin(v93);
  v1179 = &v1067 - v94;
  __chkstk_darwin(v95);
  v1191 = &v1067 - v96;
  __chkstk_darwin(v97);
  v1178 = &v1067 - v98;
  __chkstk_darwin(v99);
  v1204 = &v1067 - v100;
  v1219 = type metadata accessor for PendingPhotoAsset(0);
  __chkstk_darwin(v1219);
  v1218 = (&v1067 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1225 = type metadata accessor for UUID();
  v102 = *(v1225 - 8);
  __chkstk_darwin(v1225);
  v1222 = &v1067 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v104);
  v1223 = &v1067 - v105;
  v1233 = type metadata accessor for AssetSource();
  v106 = *(v1233 - 8);
  __chkstk_darwin(v1233);
  v1117 = &v1067 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v108);
  v1121 = &v1067 - v109;
  __chkstk_darwin(v110);
  v1137 = &v1067 - v111;
  __chkstk_darwin(v112);
  v1146 = &v1067 - v113;
  __chkstk_darwin(v114);
  v1145 = &v1067 - v115;
  __chkstk_darwin(v116);
  v1193 = &v1067 - v117;
  __chkstk_darwin(v118);
  v1182 = &v1067 - v119;
  __chkstk_darwin(v120);
  v1168 = &v1067 - v121;
  __chkstk_darwin(v122);
  v1186 = &v1067 - v123;
  __chkstk_darwin(v124);
  v1185 = &v1067 - v125;
  __chkstk_darwin(v126);
  v1202 = &v1067 - v127;
  __chkstk_darwin(v128);
  v1221 = &v1067 - v129;
  __chkstk_darwin(v130);
  v1224 = &v1067 - v131;
  v1231 = type metadata accessor for AssetType();
  v132 = *(v1231 - 8);
  __chkstk_darwin(v1231);
  v1220 = &v1067 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v134);
  v1240 = &v1067 - v135;
  v136 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v136 - 8);
  v1184 = &v1067 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v138);
  v1167 = &v1067 - v139;
  __chkstk_darwin(v140);
  v1177 = &v1067 - v141;
  __chkstk_darwin(v142);
  v1176 = &v1067 - v143;
  __chkstk_darwin(v144);
  v1175 = &v1067 - v145;
  __chkstk_darwin(v146);
  v1195 = &v1067 - v147;
  __chkstk_darwin(v148);
  v1201 = &v1067 - v149;
  __chkstk_darwin(v150);
  v1203 = &v1067 - v151;
  __chkstk_darwin(v152);
  v1239 = &v1067 - v153;
  v1244 = type metadata accessor for URL();
  v154 = *(v1244 - 8);
  __chkstk_darwin(v1244);
  v1196 = &v1067 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v156);
  v1200 = &v1067 - v157;
  __chkstk_darwin(v158);
  v1238 = &v1067 - v159;
  swift_retain_n();
  v1261 = _swiftEmptyArrayStorage;
  v1260 = _swiftEmptyArrayStorage;
  v1252 = a1;
  v1205 = a1 >> 62;
  if (a1 >> 62)
  {
    v160 = _CocoaArrayWrapper.endIndex.getter();
    if (v160)
    {
      goto LABEL_3;
    }

LABEL_564:
    swift_retain_n();
    v1050 = 0;
    v1047 = 0;
    v161 = 0;
    v1251 = 0;
    v1217 = 0;
    v1250 = 1;
    v1052 = v1252;
    goto LABEL_565;
  }

  v160 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v160)
  {
    goto LABEL_564;
  }

LABEL_3:
  v1246 = v160;
  if (v160 < 1)
  {
    __break(1u);
LABEL_580:
    __break(1u);
    return;
  }

  v1083 = " pending photo requests, ";
  v1230 = enum case for AssetSource.suggestionSheet(_:);
  v1229 = (v106 + 104);
  v1084 = "setType value of ";
  v1095 = enum case for AssetType.workoutIcon(_:);
  v1214 = (v132 + 104);
  v1215 = (v106 + 16);
  v1237 = (v102 + 16);
  v1213 = (v132 + 16);
  v1212 = (v102 + 8);
  v1216 = (v106 + 8);
  v1211 = (v132 + 8);
  v1094 = (v1253 + 32);
  v1085 = "StateOfMindAsset";
  v1099 = (v106 + 56);
  v1089 = "content completely missing";
  v1090 = "WorkoutIconAsset";
  v1087 = "Journaling.MotionActivityAsset";
  v1088 = "light content missing";
  v1093 = enum case for AssetType.workoutRoute(_:);
  v1086 = "MOSuggestionAssetWorkout";
  v1096 = "dark content missing";
  v1091 = "WorkoutRouteAsset";
  v1092 = (v1251 + 32);
  v1116 = (v13 + 48);
  v1113 = (v13 + 16);
  v1114 = (v13 + 8);
  v1106 = enum case for AssetType.contact(_:);
  v1105 = (v1250 + 32);
  v1104 = enum case for AssetType.podcast(_:);
  v1108 = (v43 + 56);
  v1109 = (v43 + 16);
  v1107 = (v43 + 8);
  v1103 = (v1249 + 32);
  v1102 = enum case for AssetType.music(_:);
  v1100 = "content missing album art.";
  v1101 = (v40 + 32);
  v1110 = "MOSuggestionAssetMediaItem";
  v1112 = "route and icon - ";
  v1115 = enum case for AssetType.livePhoto(_:);
  v1241 = (v154 + 56);
  v1228 = (v154 + 32);
  v1227 = (v154 + 16);
  v1226 = (v154 + 8);
  v1209 = enum case for AssetType.photo(_:);
  v1243 = "iaType value of ";
  v1242 = "EntryViewModel.Reflection";
  v1249 = v1252 & 0xC000000000000001;
  v1097 = (v1199 + 8);
  v1098 = (v1199 + 16);
  swift_retain_n();
  v1247 = 0;
  v161 = 0;
  v1251 = 0;
  v162 = 0;
  v1217 = 0;
  v163 = &selRef_sharedScheduler;
  v1111 = xmmword_100941EE0;
  v1250 = 1;
  v164 = v1246;
  v1210 = a4;
  do
  {
    if (v1249)
    {
      v177 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v177 = *(v1252 + 8 * v162 + 32);
    }

    v1253 = v177;
    v178 = [v177 assetType];
    v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v181 = v180;
    if (v179 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v181 == v182)
    {

      goto LABEL_17;
    }

    v1248 = v162;
    v184 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v184)
    {

      v162 = v1248;
LABEL_17:
      v185 = v1253;
      v186 = [v1253 v163[189]];
      objc_opt_self();
      v187 = swift_dynamicCastObjCClass();
      if (v187)
      {
        v165 = v161;
        v166 = a4;
        v167 = v185;
        v168 = sub_100615084(v187);
        v170 = v169;
        v171 = v162;
        v173 = v172;
        v175 = v174;
        swift_unknownObjectRelease();
        sub_1003A75B8(v1247, v165, v1250, v1251);

        a4 = v166;
        v161 = v170 & 1;
        v1247 = v168;
        v1250 = v173;
        v162 = v171;
        v163 = &selRef_sharedScheduler;
        v1251 = v175;
        v164 = v1246;
        goto LABEL_6;
      }

      swift_unknownObjectRelease();
      v188 = [v185 v163[189]];

      sub_10061518C(0xD000000000000019, (v1243 | 0x8000000000000000), 0xD000000000000021, (v1242 | 0x8000000000000000), v188, v1245);
      swift_unknownObjectRelease();

      goto LABEL_19;
    }

    v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v191 = v190;
    if (v189 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v191 == v192)
    {

      goto LABEL_27;
    }

    v194 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v195 = v1232;
    if (v194)
    {

      v164 = v1246;
LABEL_27:
      v196 = v1253;
      v1254 = [v1253 v163[189]];
      v197 = v1239;
      v198 = v1244;
      v199 = swift_dynamicCast();
      v200 = *v1241;
      if (v199)
      {
        v200(v197, 0, 1, v198);
        (*v1228)(v1238, v197, v198);
        v201 = v1240;
        v202 = v1231;
        (*v1214)(v1240, v1209, v1231);
        v203 = v1224;
        v204 = v1233;
        (*v1229)(v1224, v1230, v1233);
        v205 = v1223;
        UUID.init()();
        v206 = objc_allocWithZone(type metadata accessor for PlaceholderAsset(0));
        v1234 = *v1237;
        v207 = v1222;
        v1235 = v161;
        v208 = v1225;
        v1234(v1222, v205, v1225);
        v209 = v1220;
        (*v1213)(v1220, v201, v202);
        v210 = v1221;
        (*v1215)(v1221, v203, v204);
        v211 = sub_100285908(v207, v209, v210);
        v212 = v1246;
        v213 = v1210;
        (*v1216)(v203, v204);
        (*v1211)(v1240, v202);
        (*v1212)(v205, v208);
        v214 = sub_100606BC4(v211, v1236, &v1261);
        v215 = v1219;
        v216 = v1218;
        v217 = v1235;
        (v1234)(v1218 + *(v1219 + 20), &v211[OBJC_IVAR____TtC7Journal5Asset_id], v208, v214);
        v218 = v1238;
        v219 = v1244;
        (*v1227)(v216 + *(v215 + 24), v1238, v1244);
        v220 = v1253;
        *v216 = v1253;
        v221 = v220;
        sub_100604190(v216);

        v222 = v218;
        v161 = v217;
        a4 = v213;
        v163 = &selRef_sharedScheduler;
        v223 = v219;
        v164 = v212;
        (*v1226)(v222, v223);
        goto LABEL_29;
      }

      v200(v197, 1, 1, v198);
      sub_100004F84(v197, &unk_100AD6DD0, &qword_1009437C0);
      v224 = [v196 v163[189]];

      v225 = 0x7373416F746F6850;
      v226 = 5001813;
      v227 = 0xE300000000000000;
      goto LABEL_31;
    }

    v228 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v230 = v229;
    if (v228 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v230 == v231)
    {

LABEL_37:
      v233 = v1253;
      v1254 = [v1253 v163[189]];
      v234 = v1203;
      v235 = v1244;
      v236 = swift_dynamicCast();
      v237 = *v1241;
      if (v236)
      {
        v238 = v161;
        v239 = a4;
        v237(v234, 0, 1, v235);
        v240 = v234;
        v241 = v1200;
        (*v1228)(v1200, v240, v235);
        (*v1229)(v1202, v1230, v1233);
        v242 = v233;
        v243 = v1201;
        (*v1227)(v1201, v241, v235);
        v237(v243, 0, 1, v235);
        v244 = [v242 metadata];
        v245 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyPhotoLocalIdentifier);
        sub_1001E1DA0(&v1254, v245, &v1256);

        sub_100177B94(&v1254);
        if (*(&v1257 + 1))
        {
          v246 = swift_dynamicCast();
          v247 = v1258;
          if (!v246)
          {
            v247 = 0;
          }

          v1234 = v247;
          if (v246)
          {
            v248 = v1259;
          }

          else
          {
            v248 = 0;
          }
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
          v1234 = 0;
          v248 = 0;
        }

        v254 = [v1253 metadata];
        v255 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyPhotoTakenDate);
        sub_1001E1DA0(&v1254, v255, &v1256);

        sub_100177B94(&v1254);
        v164 = v1246;
        a4 = v239;
        if (*(&v1257 + 1))
        {
          v256 = type metadata accessor for Date();
          v257 = v1204;
          v258 = swift_dynamicCast();
          (*(*(v256 - 8) + 56))(v257, v258 ^ 1u, 1, v256);
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
          v259 = type metadata accessor for Date();
          (*(*(v259 - 8) + 56))(v1204, 1, 1, v259);
        }

        v161 = v238;
        v260 = [v1253 metadata];
        v261 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyPhotoBestSquareCropRect);
        sub_1001E1DA0(&v1254, v261, &v1256);

        sub_100177B94(&v1254);
        if (*(&v1257 + 1))
        {
          sub_1000065A8(0, &qword_100AEB650, MOSuggestionAssetPhotoCropRect_ptr);
          if (swift_dynamicCast())
          {
            v262 = v1258;
            [v1258 cgRect];
            v1080 = v263;
            v1081 = v264;
            v1079 = v265;
            v1082 = v266;

            *&v269 = v1079;
            *&v268 = v1080;
            v267 = 0;
            *(&v268 + 1) = v1081;
            *(&v269 + 1) = v1082;
            goto LABEL_57;
          }
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        }

        v268 = 0uLL;
        v267 = 1;
        v269 = 0uLL;
LABEL_57:
        v1262[0] = v268;
        v1262[1] = v269;
        v1263 = v267;
        v270 = [v1253 metadata];
        v271 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyPhotoBestLandscapeCropRect);
        sub_1001E1DA0(&v1254, v271, &v1256);

        sub_100177B94(&v1254);
        if (*(&v1257 + 1))
        {
          sub_1000065A8(0, &qword_100AEB650, MOSuggestionAssetPhotoCropRect_ptr);
          if (swift_dynamicCast())
          {
            v272 = v1258;
            [v1258 cgRect];
            v1080 = v273;
            v1081 = v274;
            v1079 = v275;
            v1082 = v276;

            *&v279 = v1079;
            *&v278 = v1080;
            v277 = 0;
            *(&v278 + 1) = v1081;
            *(&v279 + 1) = v1082;
            goto LABEL_62;
          }
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        }

        v278 = 0uLL;
        v277 = 1;
        v279 = 0uLL;
LABEL_62:
        v1264[0] = v278;
        v1264[1] = v279;
        v1265 = v277;
        v280 = [v1253 metadata];
        v281 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyPhotoBestPortraitCropRect);
        sub_1001E1DA0(&v1254, v281, &v1256);

        sub_100177B94(&v1254);
        if (*(&v1257 + 1))
        {
          sub_1000065A8(0, &qword_100AEB650, MOSuggestionAssetPhotoCropRect_ptr);
          if (swift_dynamicCast())
          {
            v282 = v1258;
            [v1258 cgRect];
            v1080 = v283;
            v1081 = v284;
            v1079 = v285;
            v1082 = v286;

            *&v289 = v1079;
            *&v288 = v1080;
            v287 = 0;
            *(&v288 + 1) = v1081;
            *(&v289 + 1) = v1082;
LABEL_67:
            v290 = v1253;
            v1266[0] = v288;
            v1266[1] = v289;
            v1267 = v287;
            v291 = sub_100224918(v1202, v1201, 0, v1234, v248, v1204, 0, 0, 0, 1, 0, 1, 0, 0, 1, v1262, v1264, v1266);
            sub_100606BC4(v291, v1236, &v1261);

            (*v1226)(v1200, v1244);
            goto LABEL_29;
          }
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        }

        v288 = 0uLL;
        v287 = 1;
        v289 = 0uLL;
        goto LABEL_67;
      }

      v237(v234, 1, 1, v235);
      sub_100004F84(v234, &unk_100AD6DD0, &qword_1009437C0);
      v249 = [v233 v163[189]];

      sub_10061518C(0x7373416F65646956, 0xEA00000000007465, 5001813, 0xE300000000000000, v249, v1245);

      swift_unknownObjectRelease();

      goto LABEL_75;
    }

    v232 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v232)
    {

      goto LABEL_37;
    }

    v250 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v252 = v251;
    if (v250 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v252 == v253)
    {
      v1235 = v161;

LABEL_70:
      v293 = v1253;
      v1254 = [v1253 v163[189]];
      v294 = v1195;
      v295 = v1244;
      v296 = swift_dynamicCast();
      v297 = *v1241;
      if (!v296)
      {
        v297(v294, 1, 1, v295);
        sub_100004F84(v294, &unk_100AD6DD0, &qword_1009437C0);
        v316 = [v293 v163[189]];

        v317 = 0x746F68506576694CLL;
        v318 = 0xEE0074657373416FLL;
        v319 = 5001813;
        v320 = 0xE300000000000000;
        goto LABEL_73;
      }

      v297(v294, 0, 1, v295);
      (*v1228)(v1196, v294, v295);
      v298 = v1231;
      (*v1214)(v1240, v1115, v1231);
      v299 = v1224;
      v300 = v1233;
      (*v1229)(v1224, v1230, v1233);
      v301 = v1223;
      UUID.init()();
      v302 = objc_allocWithZone(type metadata accessor for PlaceholderAsset(0));
      v1234 = *v1237;
      v303 = v1222;
      v304 = v1225;
      v1234(v1222, v301, v1225);
      v305 = v1220;
      (*v1213)(v1220, v1240, v298);
      v306 = v1221;
      (*v1215)(v1221, v299, v300);
      v307 = v306;
      v163 = &selRef_sharedScheduler;
      v308 = sub_100285908(v303, v305, v307);
      v309 = v300;
      a4 = v1210;
      (*v1216)(v299, v309);
      (*v1211)(v1240, v1231);
      (*v1212)(v301, v304);
      v310 = sub_100606BC4(v308, v1236, &v1261);
      v311 = v1219;
      v312 = v1218;
      (v1234)(v1218 + *(v1219 + 20), &v308[OBJC_IVAR____TtC7Journal5Asset_id], v304, v310);
      v313 = v1196;
      (*v1227)(v312 + *(v311 + 24), v1196, v295);
      v314 = v1253;
      *v312 = v1253;
      v315 = v314;
      sub_100604190(v312);

      (*v1226)(v313, v295);
      goto LABEL_74;
    }

    v292 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v292)
    {
      v1235 = v161;

      goto LABEL_70;
    }

    v321 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v323 = v322;
    if (v321 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v323 == v324)
    {

LABEL_81:
      v164 = v1246;
      v196 = v1253;
      v326 = [v1253 v163[189]];
      objc_opt_self();
      v327 = swift_dynamicCastObjCClass();
      if (!v327)
      {
        swift_unknownObjectRelease();
        v224 = [v196 v163[189]];

        v227 = (v1112 | 0x8000000000000000);
        v225 = 0x737341636973754DLL;
        v226 = 0xD00000000000001ALL;
LABEL_31:
        sub_10061518C(v225, 0xEA00000000007465, v226, v227, v224, v1245);

        swift_unknownObjectRelease();

        v162 = v1248;
        goto LABEL_6;
      }

      v328 = v327;
      v329 = [v327 albumArt];
      if (!v329)
      {
        sub_100606AE0(0x737341636973754DLL, 0xEA00000000007465, 0xD00000000000001ALL, (v1110 | 0x8000000000000000), v1245);

        swift_unknownObjectRelease();
        v162 = v1248;
        goto LABEL_6;
      }

      *&v1082 = v329;
      v1234 = v328;
      v330 = [v328 mediaType];
      if (v330 > 3)
      {
        if ((v330 - 6) < 3)
        {
          *&v1081 = v326;
          (*v1229)(v1182, v1230, v1233);
          v340 = v1234;
          v341 = [v1234 mediaType];
          sub_100606EAC(v341, 0, v1183);
          v342 = [v340 title];
          *&v1080 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *&v1079 = v343;

          v344 = [v340 albumTitle];
          v345 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1077 = v346;
          v1078 = v345;

          v347 = [v340 artistName];
          v348 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1075 = v349;
          v1076 = v348;

          v350 = [v340 previewURL];
          if (v350)
          {
            v351 = v350;
            v352 = v1184;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v353 = v352;
            v196 = v1253;
            v354 = 0;
          }

          else
          {
            v354 = 1;
            v353 = v1184;
          }

          (*v1241)(v353, v354, 1, v1244);
          v437 = [v196 metadata];
          v438 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyMediaThirdPartyAppeName);
          sub_1001E1DA0(&v1254, v438, &v1256);

          sub_100177B94(&v1254);
          if (*(&v1257 + 1))
          {
            v439 = swift_dynamicCast();
            v440 = v1258;
            if (!v439)
            {
              v440 = 0;
            }

            v1074 = v440;
            if (v439)
            {
              v441 = v1259;
            }

            else
            {
              v441 = 0;
            }
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
            v1074 = 0;
            v441 = 0;
          }

          v442 = [v1253 metadata];
          v443 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyMediaStartDate);
          sub_1001E1DA0(&v1254, v443, &v1256);

          sub_100177B94(&v1254);
          if (*(&v1257 + 1))
          {
            v444 = type metadata accessor for Date();
            v445 = v1166;
            v446 = swift_dynamicCast();
            (*(*(v444 - 8) + 56))(v445, v446 ^ 1u, 1, v444);
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
            v447 = type metadata accessor for Date();
            v445 = v1166;
            (*(*(v447 - 8) + 56))(v1166, 1, 1, v447);
          }

          v448 = v1234;
          v449 = [v1234 bgColor];
          v450 = [v448 bgColorVariant];
          v451 = v1165;
          sub_100606F40(v450, v1165);
          v452 = v1082;
          v453 = v1082;
          v454 = sub_100594058(v1182, v1183, v1080, v1079, v1078, v1077, v1076, v1075, v1184, v1074, v441, v452, v445, v449, v451);
          sub_100606BC4(v454, v1236, &v1261);

          swift_unknownObjectRelease();
          goto LABEL_75;
        }

        if (v330 == 5)
        {
LABEL_109:
          *&v1081 = v326;
          v374 = v1233;
          (*v1229)(v1186, v1230, v1233);
          v375 = [v1234 trackIdentifier];
          if (v375)
          {
            v376 = v375;
            *&v1080 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *&v1079 = v377;
          }

          else
          {
            *&v1080 = 0;
            *&v1079 = 0xE000000000000000;
          }

          v516 = v1241;
          v517 = v1234;
          v518 = [v1234 title];
          v519 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v521 = v520;

          v522 = [v517 previewURL];
          if (v522)
          {
            v523 = v1177;
            v524 = v522;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v525 = v523;
            v196 = v1253;
            v526 = 0;
          }

          else
          {
            v526 = 1;
            v525 = v1177;
          }

          (*v516)(v525, v526, 1, v1244);
          v527 = [v1234 artistName];
          v528 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1075 = v529;

          v530 = [v196 metadata];
          v531 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyMediaStartDate);
          sub_1001E1DA0(&v1254, v531, &v1256);

          sub_100177B94(&v1254);
          if (*(&v1257 + 1))
          {
            v532 = type metadata accessor for Date();
            v533 = v1179;
            v534 = swift_dynamicCast();
            (*(*(v532 - 8) + 56))(v533, v534 ^ 1u, 1, v532);
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
            v535 = type metadata accessor for Date();
            (*(*(v535 - 8) + 56))(v1179, 1, 1, v535);
          }

          v536 = [v1253 metadata];
          v537 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyPodcastNumberOfRepetitions);
          sub_1001E1DA0(&v1254, v537, &v1256);

          sub_100177B94(&v1254);
          v1235 = v161;
          v1077 = v521;
          v1078 = v519;
          v1076 = v528;
          if (*(&v1257 + 1))
          {
            v538 = swift_dynamicCast();
            v539 = v1258;
            if (!v538)
            {
              v539 = 0;
            }

            v1073 = v539;
            v540 = v538 ^ 1;
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
            v1073 = 0;
            v540 = 1;
          }

          LODWORD(v1072) = v540;
          v541 = [v1234 mediaType];
          sub_100606EAC(v541, 0, v1192);
          v542 = v1240;
          (*v1214)(v1240, v1104, v1231);
          v1234 = *v1215;
          v543 = v1224;
          v1234(v1224, v1186, v374);
          *&v1082 = v1082;
          v544 = v1223;
          UUID.init()();
          v545 = objc_allocWithZone(type metadata accessor for PodcastAsset(0));
          *&v545[OBJC_IVAR____TtC7Journal12PodcastAsset_metadata] = 0;
          v546 = v1222;
          v547 = v1225;
          (*v1237)(v1222, v544, v1225);
          v548 = v1220;
          (*v1213)(v1220, v542, v1231);
          v549 = v1221;
          v1234(v1221, v543, v374);
          v550 = sub_100285908(v546, v548, v549);
          v1074 = *v1212;
          v1074(v544, v547);
          v1234 = *v1216;
          (v1234)(v543, v374);
          (*v1211)(v1240, v1231);
          v551 = v1189;
          v552 = v1082;
          *v1189 = v1082;
          swift_storeEnumTagMultiPayload();
          *&v1082 = v552;
          v553 = v550;
          UUID.init()();
          v554 = UUID.uuidString.getter();
          v556 = v555;
          v1074(v544, v547);
          type metadata accessor for AssetAttachment(0);
          v557 = swift_allocObject();
          *(v557 + 16) = 0;
          sub_100617828(v551, v557 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v558 = (v557 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v558 = v554;
          v558[1] = v556;
          v559 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_100286DC0(*((*(v553 + v559) & 0xFFFFFFFFFFFFFF8) + 0x10));
          v560._countAndFlagsBits = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          DebugData.init(name:)(v560);
          swift_endAccess();
          v561 = v1177;
          sub_1000082B4(v1177, v1176, &unk_100AD6DD0, &qword_1009437C0);
          v562 = v1179;
          sub_1000082B4(v1179, v1191, &unk_100AD4790, &unk_10093B4E0);
          v563 = v1181;
          v564 = v1192;
          v565 = v1180;
          (*v1109)(v1181, v1192, v1180);
          (*v1108)(v563, 0, 1, v565);
          v566 = v1161;
          PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)();
          v567 = v1082;

          (*v1107)(v564, v565);
          sub_100004F84(v561, &unk_100AD6DD0, &qword_1009437C0);
          (v1234)(v1186, v1233);
          sub_100004F84(v562, &unk_100AD4790, &unk_10093B4E0);
          v568 = v1163;
          (*v1103)(v1163, v566, v1162);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E80, &unk_1009525A0);
          v569 = swift_allocObject();
          v570 = *(*v569 + 104);
          v571 = sub_1000F24EC(&qword_100AD2A70, &qword_100952E00);
          (*(*(v571 - 8) + 56))(v569 + v570, 1, 1, v571);
          *(v569 + *(*v569 + 112)) = v1111;
          sub_100021CEC(v568, v569 + *(*v569 + 120), &qword_100ADA958, &unk_100960730);
          *(v553 + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = v569;

          sub_100606BC4(v553, v1236, &v1261);

          swift_unknownObjectRelease();
        }

        else
        {
          if (v330 != 4)
          {
LABEL_133:
            v1254 = 0;
            v1255 = 0xE000000000000000;
            _StringGuts.grow(_:)(34);
            v429._countAndFlagsBits = 0xD000000000000020;
            v429._object = (v1100 | 0x8000000000000000);
            DefaultStringInterpolation.appendLiteral(_:)(v429);
            [v1234 mediaType];
            sub_1006042A0();
            v430._countAndFlagsBits = 0;
            v430._object = 0xE000000000000000;
            DefaultStringInterpolation.appendLiteral(_:)(v430);
            sub_100606AE0(0x737341636973754DLL, 0xEA00000000007465, v1254, v1255, v1245);

            swift_unknownObjectRelease();

            v162 = v1248;
            goto LABEL_6;
          }

LABEL_107:
          *&v1081 = v326;
          v370 = v1233;
          (*v1229)(v1185, v1230, v1233);
          v371 = [v1234 trackIdentifier];
          if (v371)
          {
            v372 = v371;
            *&v1080 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *&v1079 = v373;
          }

          else
          {
            *&v1080 = 0;
            *&v1079 = 0xE000000000000000;
          }

          v455 = v1178;
          v456 = [v1234 previewURL];
          v457 = v1241;
          if (v456)
          {
            v458 = v1175;
            v459 = v456;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v460 = v458;
            v196 = v1253;
            v461 = 0;
          }

          else
          {
            v461 = 1;
            v460 = v1175;
          }

          (*v457)(v460, v461, 1, v1244);
          v462 = v1234;
          v463 = [v1234 artistName];
          v464 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v466 = v465;

          v467 = [v462 title];
          v468 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1075 = v469;
          v1076 = v468;

          v470 = [v462 albumTitle];
          v471 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1073 = v472;
          v1074 = v471;

          v473 = [v196 metadata];
          v474 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyMusicNumberOfRepetitions);
          sub_1001E1DA0(&v1254, v474, &v1256);

          sub_100177B94(&v1254);
          if (*(&v1257 + 1))
          {
            v475 = swift_dynamicCast();
            v476 = v1258;
            if (!v475)
            {
              v476 = 0;
            }

            v1071 = v476;
            v477 = v475 ^ 1;
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
            v1071 = 0;
            v477 = 1;
          }

          LODWORD(v1070) = v477;
          v478 = [v1253 metadata];
          v479 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyMediaStartDate);
          sub_1001E1DA0(&v1254, v479, &v1256);

          sub_100177B94(&v1254);
          v1235 = v161;
          v1077 = v466;
          v1078 = v464;
          if (*(&v1257 + 1))
          {
            v480 = type metadata accessor for Date();
            v481 = swift_dynamicCast();
            (*(*(v480 - 8) + 56))(v455, v481 ^ 1u, 1, v480);
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
            v482 = type metadata accessor for Date();
            (*(*(v482 - 8) + 56))(v455, 1, 1, v482);
          }

          v483 = [v1234 mediaType];
          sub_100606EAC(v483, 0, v1192);
          v484 = v1240;
          (*v1214)(v1240, v1102, v1231);
          v1234 = *v1215;
          v485 = v1224;
          v1234(v1224, v1185, v370);
          v1072 = v1082;
          v486 = v1223;
          UUID.init()();
          v487 = objc_allocWithZone(type metadata accessor for MusicAsset(0));
          *&v487[OBJC_IVAR____TtC7Journal10MusicAsset_metadata] = 0;
          v488 = v1222;
          (*v1237)(v1222, v486, v1225);
          v489 = v1220;
          (*v1213)(v1220, v484, v1231);
          v490 = v1221;
          v1234(v1221, v485, v370);
          v1234 = sub_100285908(v488, v489, v490);
          v491 = *v1212;
          v492 = v1225;
          (*v1212)(v486, v1225);
          *&v1082 = *v1216;
          (v1082)(v485, v370);
          (*v1211)(v1240, v1231);
          v493 = v1189;
          v494 = v1072;
          *v1189 = v1072;
          swift_storeEnumTagMultiPayload();
          v1072 = v494;
          UUID.init()();
          v495 = UUID.uuidString.getter();
          v497 = v496;
          v491(v486, v492);
          type metadata accessor for AssetAttachment(0);
          v498 = swift_allocObject();
          *(v498 + 16) = 0;
          sub_100617828(v493, v498 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v499 = (v498 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v499 = v495;
          v499[1] = v497;
          v500 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          v501 = v1234;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_100286DC0(*((*(v501 + v500) & 0xFFFFFFFFFFFFFF8) + 0x10));
          v502._countAndFlagsBits = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          DebugData.init(name:)(v502);
          swift_endAccess();
          v503 = v1175;
          sub_1000082B4(v1175, v1176, &unk_100AD6DD0, &qword_1009437C0);
          v504 = v1178;
          sub_1000082B4(v1178, v1191, &unk_100AD4790, &unk_10093B4E0);
          v505 = v1181;
          v506 = v1192;
          v507 = v1180;
          (*v1109)(v1181, v1192, v1180);
          (*v1108)(v505, 0, 1, v507);
          v508 = v1157;
          MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)();
          v509 = v1072;

          (*v1107)(v506, v507);
          sub_100004F84(v503, &unk_100AD6DD0, &qword_1009437C0);
          (v1082)(v1185, v1233);
          sub_100004F84(v504, &unk_100AD4790, &unk_10093B4E0);
          v510 = v1159;
          (*v1101)(v1159, v508, v1158);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E90, &unk_1009525D0);
          v511 = swift_allocObject();
          v512 = *(*v511 + 104);
          v513 = sub_1000F24EC(&qword_100AD6F70, &unk_100962D80);
          (*(*(v513 - 8) + 56))(v511 + v512, 1, 1, v513);
          *(v511 + *(*v511 + 112)) = v1111;
          sub_100021CEC(v510, v511 + *(*v511 + 120), &qword_100ADA8E0, &unk_100962D70);
          v514 = v1234;
          *(v1234 + OBJC_IVAR____TtC7Journal10MusicAsset_metadata) = v511;
          v515 = v514;

          sub_100606BC4(v515, v1236, &v1261);

          swift_unknownObjectRelease();
        }

LABEL_179:

LABEL_180:
        v161 = v1235;
LABEL_181:
        v164 = v1246;
        v162 = v1248;
        v163 = &selRef_sharedScheduler;
        goto LABEL_6;
      }

      if (v330 == 1)
      {
        goto LABEL_107;
      }

      if (v330 == 2)
      {
        goto LABEL_109;
      }

      if (v330 != 3)
      {
        goto LABEL_133;
      }

      *&v1081 = v326;
      (*v1229)(v1168, v1230, v1233);
      v331 = [v1234 previewURL];
      if (v331)
      {
        v332 = v1167;
        v333 = v331;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v334 = v332;
        v196 = v1253;
        v335 = 0;
      }

      else
      {
        v335 = 1;
        v334 = v1167;
      }

      (*v1241)(v334, v335, 1, v1244);
      v572 = [v196 metadata];
      v573 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyPhotoLocalIdentifier);
      sub_1001E1DA0(&v1254, v573, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v574 = swift_dynamicCast();
        if (v574)
        {
          v575 = v1258;
        }

        else
        {
          v575 = 0;
        }

        if (v574)
        {
          v576 = v1259;
        }

        else
        {
          v576 = 0;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v575 = 0;
        v576 = 0;
      }

      v577 = [v1253 metadata];
      v578 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyVideoMomentDate);
      sub_1001E1DA0(&v1254, v578, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v579 = type metadata accessor for Date();
        v580 = swift_dynamicCast();
        (*(*(v579 - 8) + 56))(v195, v580 ^ 1u, 1, v579);
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v581 = type metadata accessor for Date();
        (*(*(v581 - 8) + 56))(v195, 1, 1, v581);
      }

      v164 = v1246;
      memset(v1268, 0, sizeof(v1268));
      v1269 = 1;
      v582 = sub_100224918(v1168, v1167, 0, v575, v576, v195, 0, 0, 0, 1, 0, 1, 0, 0, 1, v1268, v1268, v1268);
      sub_100606BC4(v582, v1236, &v1261);

      swift_unknownObjectRelease();
      v162 = v1248;
      goto LABEL_6;
    }

    v325 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v325)
    {

      goto LABEL_81;
    }

    v336 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v338 = v337;
    if (v336 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v338 == v339)
    {

      v162 = v1248;
      goto LABEL_99;
    }

    v355 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v162 = v1248;
    if (v355)
    {

LABEL_99:
      v356 = v1253;
      v357 = [v1253 v163[189]];
      objc_opt_self();
      v358 = swift_dynamicCastObjCClass();
      v164 = v1246;
      if (!v358)
      {
        swift_unknownObjectRelease();
        v365 = [v356 v163[189]];

        v366 = 0x41746361746E6F43;
        v367 = 0xEC00000074657373;
        v368 = 0x6567616D494955;
        v369 = 0xE700000000000000;
        goto LABEL_104;
      }

      *&v1080 = v358;
      v359 = v357;
      (*v1229)(v1193, v1230, v1233);
      v360 = [v356 metadata];
      v361 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyContactName);
      sub_1001E1DA0(&v1254, v361, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v362 = swift_dynamicCast();
        v363 = v1253;
        if (v362)
        {
          *&v1082 = v1258;
          v364 = v1259;
LABEL_116:
          *&v1081 = v364;
          v382 = [v363 metadata];
          v383 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyContactStartTime);
          sub_1001E1DA0(&v1254, v383, &v1256);

          sub_100177B94(&v1254);
          if (*(&v1257 + 1))
          {
            v384 = type metadata accessor for Date();
            v385 = v1187;
            v386 = swift_dynamicCast();
            (*(*(v384 - 8) + 56))(v385, v386 ^ 1u, 1, v384);
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
            v387 = type metadata accessor for Date();
            (*(*(v387 - 8) + 56))(v1187, 1, 1, v387);
          }

          v388 = [v1253 metadata];
          v389 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyContactEndTime);
          sub_1001E1DA0(&v1254, v389, &v1256);

          sub_100177B94(&v1254);
          if (*(&v1257 + 1))
          {
            v390 = type metadata accessor for Date();
            v391 = v1188;
            v392 = swift_dynamicCast();
            (*(*(v390 - 8) + 56))(v391, v392 ^ 1u, 1, v390);
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
            v393 = type metadata accessor for Date();
            (*(*(v393 - 8) + 56))(v1188, 1, 1, v393);
          }

          v394 = [v1253 metadata];
          v395 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyContactDuration);
          sub_1001E1DA0(&v1254, v395, &v1256);

          sub_100177B94(&v1254);
          if (*(&v1257 + 1))
          {
            v396 = swift_dynamicCast();
            v397 = v1258;
            if (!v396)
            {
              v397 = 0;
            }

            *&v1079 = v397;
            v398 = v396 ^ 1;
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
            *&v1079 = 0;
            v398 = 1;
          }

          LODWORD(v1078) = v398;
          v399 = [v1253 metadata];
          v400 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyContactNumberOfExchanges);
          sub_1001E1DA0(&v1254, v400, &v1256);

          sub_100177B94(&v1254);
          v1235 = v161;
          if (*(&v1257 + 1))
          {
            v401 = swift_dynamicCast();
            v402 = v1258;
            if (!v401)
            {
              v402 = 0;
            }

            v1077 = v402;
            v403 = v401 ^ 1;
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
            v1077 = 0;
            v403 = 1;
          }

          LODWORD(v1076) = v403;
          v1234 = v359;
          (*v1214)(v1240, v1106, v1231);
          v1075 = *v1215;
          v404 = v1224;
          v405 = v1233;
          v1075(v1224, v1193, v1233);
          swift_unknownObjectRetain();
          v406 = v1223;
          UUID.init()();
          v407 = objc_allocWithZone(type metadata accessor for ContactAsset(0));
          *&v407[OBJC_IVAR____TtC7Journal12ContactAsset_metadata] = 0;
          v408 = v1222;
          v409 = v1225;
          (*v1237)(v1222, v406, v1225);
          v410 = v1220;
          (*v1213)(v1220, v1240, v1231);
          v411 = v1221;
          v1075(v1221, v404, v405);
          v1074 = sub_100285908(v408, v410, v411);
          v412 = *v1212;
          (*v1212)(v406, v409);
          v1075 = *v1216;
          (v1075)(v404, v405);
          (*v1211)(v1240, v1231);
          v413 = v1189;
          *v1189 = v1080;
          swift_storeEnumTagMultiPayload();
          swift_unknownObjectRetain();
          UUID.init()();
          v414 = UUID.uuidString.getter();
          v416 = v415;
          v412(v406, v409);
          type metadata accessor for AssetAttachment(0);
          v417 = swift_allocObject();
          *(v417 + 16) = 0;
          sub_100617828(v413, v417 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v418 = (v417 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v418 = v414;
          v418[1] = v416;
          v419 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          v420 = v1074;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_100286DC0(*((*(v420 + v419) & 0xFFFFFFFFFFFFFF8) + 0x10));
          v421._countAndFlagsBits = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          DebugData.init(name:)(v421);
          swift_endAccess();
          v422 = v1187;
          sub_1000082B4(v1187, v1191, &unk_100AD4790, &unk_10093B4E0);
          v423 = v1188;
          sub_1000082B4(v1188, v1174, &unk_100AD4790, &unk_10093B4E0);
          v424 = v1170;
          ContactAssetMetadata.init(name:startTime:endTime:duration:numberOfExchanges:)();
          swift_unknownObjectRelease();
          (v1075)(v1193, v1233);
          sub_100004F84(v423, &unk_100AD4790, &unk_10093B4E0);
          sub_100004F84(v422, &unk_100AD4790, &unk_10093B4E0);
          v425 = v1172;
          (*v1105)(v1172, v424, v1171);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E60, &unk_100952540);
          v426 = swift_allocObject();
          v427 = *(*v426 + 104);
          v428 = sub_1000F24EC(&qword_100AD8440, &qword_100966950);
          (*(*(v428 - 8) + 56))(v426 + v427, 1, 1, v428);
          *(v426 + *(*v426 + 112)) = v1111;
          sub_100021CEC(v425, v426 + *(*v426 + 120), &qword_100ADA8F0, &unk_100960720);
          *(v420 + OBJC_IVAR____TtC7Journal12ContactAsset_metadata) = v426;

          sub_100606BC4(v420, v1236, &v1261);
          swift_unknownObjectRelease();

          goto LABEL_179;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v363 = v1253;
      }

      *&v1082 = 0;
      v364 = 0xE000000000000000;
      goto LABEL_116;
    }

    v378 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v380 = v379;
    if (v378 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v380 == v381)
    {

      goto LABEL_136;
    }

    v431 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v431)
    {

LABEL_136:
      v356 = v1253;
      v432 = [v1253 v163[189]];
      objc_opt_self();
      v433 = swift_dynamicCastObjCClass();
      v164 = v1246;
      if (!v433)
      {
        swift_unknownObjectRelease();
        v365 = [v356 v163[189]];

        v369 = 0xEA00000000006E6FLL;
        v366 = 0x7461447469736956;
        v367 = 0xE900000000000061;
        v368 = 0x697461636F4C4C43;
        goto LABEL_104;
      }

      v1078 = v433;
      v1068 = v432;
      v434 = [v356 metadata];
      v435 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewVisitMapItem);
      sub_1001E1DA0(&v1254, v435, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        sub_1000065A8(0, &qword_100AD5A90, MKMapItem_ptr);
        if (swift_dynamicCast())
        {
          v436 = v1258;
        }

        else
        {
          v436 = 0;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v436 = 0;
      }

      v587 = v1150;
      v588 = [v1253 metadata];
      v589 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewTypeOfPlace);
      sub_1001E1DA0(&v1254, v589, &v1256);

      sub_100177B94(&v1254);
      if (!*(&v1257 + 1))
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v591 = v1253;
        goto LABEL_207;
      }

      v590 = swift_dynamicCast();
      v591 = v1253;
      if (!v590)
      {
        goto LABEL_207;
      }

      if (v1258 > 2)
      {
        if (v1258 == 3)
        {
          LODWORD(v1073) = 0;
          v592 = 2;
        }

        else
        {
          if (v1258 != 4)
          {
            goto LABEL_207;
          }

          LODWORD(v1073) = 0;
          v592 = 3;
        }

LABEL_208:
        v1234 = v592;
      }

      else
      {
        if (v1258 != 1)
        {
          if (v1258 == 2)
          {
            LODWORD(v1073) = 0;
            v592 = 1;
            goto LABEL_208;
          }

LABEL_207:
          LODWORD(v1073) = 1;
          v592 = 4;
          goto LABEL_208;
        }

        LODWORD(v1073) = 0;
        v1234 = 0;
      }

      v593 = [v591 metadata];
      v594 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewPlaceName);
      sub_1001E1DA0(&v1254, v594, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v595 = swift_dynamicCast();
        v596 = v1258;
        if (!v595)
        {
          v596 = 0;
        }

        *&v1080 = v596;
        if (v595)
        {
          v597 = v1259;
        }

        else
        {
          v597 = 0;
        }

        *&v1079 = v597;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        *&v1080 = 0;
        *&v1079 = 0;
      }

      v598 = [v1253 metadata];
      v599 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewCityName);
      sub_1001E1DA0(&v1254, v599, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v600 = swift_dynamicCast();
        if (v600)
        {
          v601 = v1258;
        }

        else
        {
          v601 = 0;
        }

        if (v600)
        {
          v602 = v1259;
        }

        else
        {
          v602 = 0;
        }

        v1076 = v602;
        v1077 = v601;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v1076 = 0;
        v1077 = 0;
      }

      v603 = sub_1000A0F34(v1234);
      v1074 = v604;
      v1075 = v603;
      v605 = [v1253 metadata];
      v606 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewVisitStartTime);
      sub_1001E1DA0(&v1254, v606, &v1256);

      sub_100177B94(&v1254);
      *&v1082 = v436;
      if (*(&v1257 + 1))
      {
        v607 = type metadata accessor for Date();
        v608 = swift_dynamicCast();
        v609 = *(v607 - 8);
        (*(v609 + 56))(v587, v608 ^ 1u, 1, v607);
        if ((*(v609 + 48))(v587, 1, v607) != 1)
        {
          (*(v609 + 32))(v1169, v587, v607);
          goto LABEL_232;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v607 = type metadata accessor for Date();
        (*(*(v607 - 8) + 56))(v587, 1, 1, v607);
      }

      v610 = [v1236 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for Date();
      if ((*(*(v607 - 8) + 48))(v587, 1, v607) != 1)
      {
        sub_100004F84(v587, &unk_100AD4790, &unk_10093B4E0);
      }

LABEL_232:
      type metadata accessor for Date();
      *&v1081 = *(v607 - 8);
      v611 = *(v1081 + 56);
      v611(v1169, 0, 1, v607);
      v612 = [v1253 metadata];
      v613 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewVisitEndTime);
      sub_1001E1DA0(&v1254, v613, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v614 = v1151;
        v615 = swift_dynamicCast();
        v611(v614, v615 ^ 1u, 1, v607);
        if ((*(v1081 + 48))(v614, 1, v607) != 1)
        {
          v616 = v1154;
          (*(v1081 + 32))(v1154, v614, v607);
          goto LABEL_238;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v614 = v1151;
        v611(v1151, 1, 1, v607);
      }

      v617 = [v1236 endDate];
      v616 = v1154;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      if ((*(v1081 + 48))(v614, 1, v607) != 1)
      {
        sub_100004F84(v614, &unk_100AD4790, &unk_10093B4E0);
      }

LABEL_238:
      v611(v616, 0, 1, v607);
      v611(v1155, 1, 1, v607);
      v618 = v1078;
      [v1078 coordinate];
      [v618 coordinate];
      v619 = v1082;
      if (v1082)
      {
        v620 = [v1082 _styleAttributes];
        if (v620)
        {
          v621 = v620;
          sub_1000065A8(0, &qword_100AD5A80, GEOFeatureStyleAttributes_ptr);
          *&v1081 = NSCoding<>.toData.getter();
          v1078 = v622;
        }

        else
        {
          *&v1081 = 0;
          v1078 = 0xF000000000000000;
        }

        sub_1000065A8(0, &qword_100AD5A90, MKMapItem_ptr);
        v635 = v619;
        v636 = NSCoding<>.toData.getter();
        v1071 = v637;
        v1072 = v636;
      }

      else
      {
        *&v1081 = 0;
        v1071 = 0xF000000000000000;
        v1072 = 0;
        v1078 = 0xF000000000000000;
      }

      v638 = v1253;
      if ((v1073 & 1) == 0)
      {
        sub_100895B04(v1234, 1uLL);
      }

      v639 = [v638 metadata];
      v640 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v641 = MOSuggestionAssetMetadataKeyLocationPreviewVisitHorizontalUncertainty;
      sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewVisitHorizontalUncertainty);
      sub_1001E1DA0(&v1254, v640, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v642 = swift_dynamicCast();
        v643 = v1258;
        if (!v642)
        {
          v643 = 0;
        }

        v1073 = v643;
        v644 = v642 ^ 1;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v1073 = 0;
        v644 = 1;
      }

      LODWORD(v1070) = v644;
      v645 = [v638 metadata];
      v646 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(v641);
      sub_1001E1DA0(&v1254, v646, &v1256);

      sub_100177B94(&v1254);
      v1235 = v161;
      if (*(&v1257 + 1))
      {
        v647 = swift_dynamicCast();
        v648 = v1258;
        if (!v647)
        {
          v648 = 0;
        }

        v1069 = v648;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v1069 = 0;
      }

      v649 = *v1229;
      v650 = v1152;
      v651 = v1230;
      v652 = v1233;
      (*v1229)(v1152, v1230, v1233);
      (*v1099)(v650, 0, 1, v652);
      v653 = v1156;
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      if (v1217)
      {
        v654 = OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata;
        v655 = v1153;
        if (!*&v1217[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
        {
          v670 = v1217;
          v161 = v1235;
          goto LABEL_274;
        }

        v656 = v1217;

        v657 = v1144;
        sub_1000768B4(v1144);
        v658 = v657;

        v659 = (*v1116)(v657, 1, v1198);
        v161 = v1235;
        if (v659)
        {
          sub_100004F84(v657, &unk_100AD5B30, &unk_100941F80);
          goto LABEL_274;
        }

        v681 = v1194;
        v682 = v657;
        v683 = v1198;
        (*v1113)(v1194, v682, v1198);
        sub_100004F84(v658, &unk_100AD5B30, &unk_100941F80);
        v671 = MultiPinMapAssetMetadata.visitsData.getter();
        (*v1114)(v681, v683);
        if (!v671)
        {
LABEL_274:
          v671 = sub_10019992C(0);
        }

        sub_1000F24EC(&qword_100AD64A8, &qword_100945170);
        v672 = v1199;
        v673 = swift_allocObject();
        v674 = sub_10033CBFC(v673, 1);
        (*(v672 + 16))(v675, v1156, v655);
        v676._countAndFlagsBits = v674;
        countAndFlagsBits = DebugData.init(name:)(v676).name._countAndFlagsBits;
        sub_1001B2CEC(v671, countAndFlagsBits);

        if (*&v1217[v654])
        {

          v678 = v1149;
          sub_1000768B4(v1149);

          v679 = *v1116;
          if (!(*v1116)(v678, 1, v1198))
          {
            MultiPinMapAssetMetadata.isSlim.getter();
          }

          sub_100004F84(v1149, &unk_100AD5B30, &unk_100941F80);
          if (*&v1217[v654])
          {

            v684 = v1139;
            sub_1000768B4(v1139);

            if (v679(v684, 1, v1198))
            {
              sub_100004F84(v684, &unk_100AD5B30, &unk_100941F80);
              goto LABEL_289;
            }

            v690 = v684;
            v691 = MultiPinMapAssetMetadata.revision.getter();
            v693 = v692;
            sub_100004F84(v690, &unk_100AD5B30, &unk_100941F80);
            if (v693)
            {
              v680 = 0;
            }

            else
            {
              v680 = v691;
            }
          }

          else
          {
LABEL_289:
            v680 = 0;
          }

          v655 = v1153;
        }

        else
        {
          v680 = 0;
        }

        v164 = v1246;
        if (__OFADD__(v680, 1))
        {
          goto LABEL_580;
        }

        v694 = v1147;
        MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)();
        swift_storeEnumTagMultiPayload();
        v695 = sub_1001B2BEC(v694);
        v696 = v1217;
        sub_10004AD20(v695);

        swift_unknownObjectRelease();
        v669 = v1156;
      }

      else
      {
        v660 = v1224;
        v649(v1224, v651, v652);
        sub_1000F24EC(&qword_100AD64A8, &qword_100945170);
        v661 = v1199;
        v662 = swift_allocObject();
        v663 = sub_10033CBFC(v662, 1);
        v655 = v1153;
        (*(v661 + 16))(v664, v653, v1153);
        v665._countAndFlagsBits = v663;
        v666 = DebugData.init(name:)(v665).name._countAndFlagsBits;
        v667 = v660;
        v163 = &selRef_sharedScheduler;
        v1217 = sub_10011CEC0(v667, v666);
        v668 = v1217;
        sub_100606BC4(v668, v1236, &v1261);

        swift_unknownObjectRelease();
        v669 = v653;
        v161 = v1235;
        v164 = v1246;
      }

      sub_1003A98C8(v1234);
      (*v1097)(v669, v655);
LABEL_29:
      v162 = v1248;
      goto LABEL_6;
    }

    v583 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v585 = v584;
    if (v583 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v585 == v586)
    {
    }

    else
    {
      v623 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v623 & 1) == 0)
      {
        v685 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v687 = v686;
        v688 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v1235 = v161;
        if (v685 == v688 && v687 == v689)
        {
        }

        else
        {
          v697 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v697 & 1) == 0)
          {
            v876 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v878 = v877;
            if (v876 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v878 == v879)
            {

              goto LABEL_433;
            }

            v882 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v882)
            {

LABEL_433:
              v883 = [v1253 content];
              objc_opt_self();
              v884 = swift_dynamicCastObjCClass();
              if (!v884)
              {
                swift_unknownObjectRelease();
                v163 = &selRef_sharedScheduler;
                v293 = v1253;
                v316 = [v1253 content];
                a4 = v1210;

                v320 = 0xEA00000000006E6FLL;
                v317 = 0x4D636972656E6547;
                v318 = 0xEF74657373417061;
                v319 = 0x697461636F4C4C43;
                goto LABEL_73;
              }

              v885 = v884;
              v886 = [v1253 metadata];
              v887 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewVisitStartTime);
              sub_1001E1DA0(&v1254, v887, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                v888 = type metadata accessor for Date();
                v889 = v1125;
                v890 = swift_dynamicCast();
                v891 = *(v888 - 8);
                (*(v891 + 56))(v889, v890 ^ 1u, 1, v888);
                if ((*(v891 + 48))(v889, 1, v888) != 1)
                {
                  (*(v891 + 32))(v1127, v1125, v888);
                  goto LABEL_444;
                }
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
                v888 = type metadata accessor for Date();
                (*(*(v888 - 8) + 56))(v1125, 1, 1, v888);
              }

              v896 = [v1236 startDate];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              type metadata accessor for Date();
              if ((*(*(v888 - 8) + 48))(v1125, 1, v888) != 1)
              {
                sub_100004F84(v1125, &unk_100AD4790, &unk_10093B4E0);
              }

LABEL_444:
              type metadata accessor for Date();
              v897 = *(v888 - 8);
              v898 = *(v897 + 56);
              v898(v1127, 0, 1, v888);
              v899 = [v1253 metadata];
              v900 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewVisitEndTime);
              sub_1001E1DA0(&v1254, v900, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                v901 = v1126;
                v902 = swift_dynamicCast();
                v898(v901, v902 ^ 1u, 1, v888);
                if ((*(v897 + 48))(v901, 1, v888) != 1)
                {
                  (*(v897 + 32))(v1124, v1126, v888);
                  goto LABEL_450;
                }
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
                v898(v1126, 1, 1, v888);
              }

              v903 = [v1236 endDate];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              if ((*(v897 + 48))(v1126, 1, v888) != 1)
              {
                sub_100004F84(v1126, &unk_100AD4790, &unk_10093B4E0);
              }

LABEL_450:
              v898(v1124, 0, 1, v888);
              v898(v1191, 1, 1, v888);
              [v885 coordinate];
              [v885 coordinate];
              [v885 horizontalAccuracy];
              v904 = *v1229;
              v905 = v1152;
              v906 = v1230;
              v907 = v1233;
              (*v1229)(v1152, v1230, v1233);
              (*v1099)(v905, 0, 1, v907);
              v908 = v1122;
              VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
              v909 = v1224;
              v904(v1224, v906, v907);
              v910 = v1123;
              v911 = v1153;
              (*v1098)(v1123, v908, v1153);
              v912 = sub_10033CC64(v909, v910);
              sub_100606BC4(v912, v1236, &v1261);

              swift_unknownObjectRelease();
              (*v1097)(v908, v911);
LABEL_499:
              a4 = v1210;
              goto LABEL_180;
            }

            v892 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v894 = v893;
            if (v892 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v894 == v895)
            {

              goto LABEL_453;
            }

            v913 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v913)
            {

LABEL_453:
              v914 = [v1253 content];
              objc_opt_self();
              v915 = v914;
              *&v1082 = swift_dynamicCastObjCClass();
              if (!v1082)
              {
                swift_unknownObjectRelease();
                v163 = &selRef_sharedScheduler;
                v293 = v1253;
                v316 = [v1253 content];
                a4 = v1210;

                v317 = 0xD000000000000010;
                v923 = v1085;
                goto LABEL_519;
              }

              (*v1229)(v1121, v1230, v1233);
              v916 = type metadata accessor for Date();
              v917 = *(*(v916 - 8) + 56);
              v917(v1119, 1, 1, v916);
              v917(v1120, 1, 1, v916);
              v918 = [v1253 metadata];
              v919 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutGroupCount);
              sub_1001E1DA0(&v1254, v919, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                v920 = swift_dynamicCast();
                v921 = v1258;
                if (!v920)
                {
                  v921 = 0;
                }

                *&v1081 = v921;
                v922 = v920 ^ 1;
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
                *&v1081 = 0;
                v922 = 1;
              }

              LODWORD(v1080) = v922;
              v928 = [v1253 metadata];
              v929 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutGroupTotalTime);
              sub_1001E1DA0(&v1254, v929, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                v930 = swift_dynamicCast();
                v931 = v1258;
                if (!v930)
                {
                  v931 = 0;
                }

                *&v1079 = v931;
                v932 = v930 ^ 1;
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
                *&v1079 = 0;
                v932 = 1;
              }

              LODWORD(v1078) = v932;
              v933 = [v1253 metadata];
              v934 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutGroupStartDates);
              sub_1001E1DA0(&v1254, v934, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                sub_1000F24EC(&qword_100ADB2B8, &unk_100960760);
                v935 = swift_dynamicCast();
                v936 = v1258;
                if (!v935)
                {
                  v936 = 0;
                }

                v1077 = v936;
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
                v1077 = 0;
              }

              v937 = [v1253 metadata];
              v938 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutGroupEndDates);
              sub_1001E1DA0(&v1254, v938, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                sub_1000F24EC(&qword_100ADB2B8, &unk_100960760);
                v939 = swift_dynamicCast();
                v940 = v1258;
                if (!v939)
                {
                  v940 = 0;
                }

                v1076 = v940;
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
                v1076 = 0;
              }

              v941 = [v1253 metadata];
              v942 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutGroupAverageHeartrate);
              sub_1001E1DA0(&v1254, v942, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                v943 = swift_dynamicCast();
                v944 = v1258;
                if (!v943)
                {
                  v944 = 0;
                }

                v1075 = v944;
                v945 = v943 ^ 1;
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
                v1075 = 0;
                v945 = 1;
              }

              LODWORD(v1074) = v945;
              v946 = [v1253 metadata];
              v947 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutGroupTotalCalories);
              sub_1001E1DA0(&v1254, v947, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                v948 = swift_dynamicCast();
                v949 = v1258;
                if (!v948)
                {
                  v949 = 0;
                }

                v1073 = v949;
                v950 = v948 ^ 1;
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
                v1073 = 0;
                v950 = 1;
              }

              LODWORD(v1072) = v950;
              v951 = [v1253 metadata];
              v952 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutGroupTotalCaloriesWithUnit);
              sub_1001E1DA0(&v1254, v952, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                v953 = swift_dynamicCast();
                if (v953)
                {
                  v954 = v1258;
                }

                else
                {
                  v954 = 0;
                }

                if (v953)
                {
                  v955 = v1259;
                }

                else
                {
                  v955 = 0;
                }

                v1070 = v955;
                v1071 = v954;
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
                v1070 = 0;
                v1071 = 0;
              }

              v956 = v1240;
              v957 = v1231;
              (*v1214)(v1240, v1095, v1231);
              v1069 = *v1215;
              v958 = v1224;
              v1069(v1224, v1121, v1233);
              v1234 = v915;
              swift_unknownObjectRetain();
              v959 = v1223;
              UUID.init()();
              v960 = objc_allocWithZone(type metadata accessor for WorkoutIconAsset(0));
              *&v960[OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata] = 0;
              v961 = v1222;
              v962 = v1225;
              (*v1237)(v1222, v959, v1225);
              v963 = v1220;
              (*v1213)(v1220, v956, v957);
              v964 = v1221;
              v965 = v1233;
              v1069(v1221, v958, v1233);
              v966 = sub_100285908(v961, v963, v964);
              v967 = *v1212;
              (*v1212)(v959, v962);
              v1069 = *v1216;
              (v1069)(v958, v965);
              (*v1211)(v1240, v1231);
              v968 = v1189;
              *v1189 = v1082;
              swift_storeEnumTagMultiPayload();
              swift_unknownObjectRetain();
              UUID.init()();
              v969 = UUID.uuidString.getter();
              v971 = v970;
              v967(v959, v962);
              type metadata accessor for AssetAttachment(0);
              v972 = swift_allocObject();
              *(v972 + 16) = 0;
              sub_100617828(v968, v972 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
              v973 = (v972 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
              *v973 = v969;
              v973[1] = v971;
              v974 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
              swift_beginAccess();
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              sub_100286DC0(*((*(v966 + v974) & 0xFFFFFFFFFFFFFF8) + 0x10));
              v975._countAndFlagsBits = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              DebugData.init(name:)(v975);
              swift_endAccess();
              v976 = v1119;
              sub_1000082B4(v1119, v1191, &unk_100AD4790, &unk_10093B4E0);
              v977 = v1120;
              sub_1000082B4(v1120, v1174, &unk_100AD4790, &unk_10093B4E0);
              v978 = v1133;
              WorkoutIconAssetMetadata.init(type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:numberOfWorkouts:totalGroupWorkoutDuration:groupWorkoutStartDates:groupWorkoutEndDates:averageGroupHeartRateBPM:totalGroupWorkoutCaloriesBurnt:totalGroupWorkoutCaloriesBurntWithUnit:)();
              swift_unknownObjectRelease();
              sub_100004F84(v977, &unk_100AD4790, &unk_10093B4E0);
              sub_100004F84(v976, &unk_100AD4790, &unk_10093B4E0);
              (v1069)(v1121, v1233);
              v979 = v1135;
              (*v1094)(v1135, v978, v1134);
              swift_storeEnumTagMultiPayload();
              sub_1000F24EC(&qword_100AE0DD0, &unk_100960750);
              v980 = swift_allocObject();
              v981 = *(*v980 + 104);
              v982 = sub_1000F24EC(&qword_100AE4280, &unk_100952430);
              (*(*(v982 - 8) + 56))(v980 + v981, 1, 1, v982);
              *(v980 + *(*v980 + 112)) = v1111;
              sub_100021CEC(v979, v980 + *(*v980 + 120), &qword_100ADA888, &unk_100952410);
              *(v966 + OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata) = v980;

              sub_100606BC4(v966, v1236, &v1261);
              swift_unknownObjectRelease();

LABEL_498:
              goto LABEL_499;
            }

            v924 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v926 = v925;
            if (v924 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v926 == v927)
            {
            }

            else
            {
              v983 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v983 & 1) == 0)
              {
                v1254 = 0;
                v1255 = 0xE000000000000000;
                _StringGuts.grow(_:)(67);
                v1003._countAndFlagsBits = 0xD000000000000041;
                v1003._object = (v1083 | 0x8000000000000000);
                DefaultStringInterpolation.appendLiteral(_:)(v1003);
                v1004 = v1253;
                v1005 = [v1253 assetType];
                v1006 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v1008 = v1007;

                v1009._countAndFlagsBits = v1006;
                v1009._object = v1008;
                j___sSS6appendyySSF(v1009);

                v1010._countAndFlagsBits = 0;
                v1010._object = 0xE000000000000000;
                DefaultStringInterpolation.appendLiteral(_:)(v1010);
                a4 = v1210;
                v1245(v1254, v1255);

                goto LABEL_180;
              }
            }

            v984 = [v1253 content];
            objc_opt_self();
            v985 = swift_dynamicCastObjCClass();
            if (!v985)
            {
              goto LABEL_518;
            }

            v986 = v985;
            v987 = [v985 imageAsset];
            if (!v987)
            {
              goto LABEL_518;
            }

            v988 = v987;
            sub_1000065A8(0, &qword_100AEB658, UITraitCollection_ptr);
            v989 = sub_10084744C(1);
            v990 = [v988 imageWithTraitCollection:v989];

            if (!v990)
            {
              goto LABEL_518;
            }

            v991 = [v986 imageAsset];
            if (!v991 || (v992 = v991, v993 = sub_10084744C(2), v994 = [v992 imageWithTraitCollection:v993], v992, v993, !v994))
            {

LABEL_518:
              swift_unknownObjectRelease();
              v163 = &selRef_sharedScheduler;
              v293 = v1253;
              v316 = [v1253 content];
              a4 = v1210;

              v317 = 0xD000000000000010;
              v923 = v1084;
LABEL_519:
              v318 = (v923 | 0x8000000000000000);
              v319 = 0x6567616D494955;
              v320 = 0xE700000000000000;
LABEL_73:
              sub_10061518C(v317, v318, v319, v320, v316, v1245);

              swift_unknownObjectRelease();

LABEL_74:
              v161 = v1235;
LABEL_75:
              v164 = v1246;
              v162 = v1248;
              goto LABEL_6;
            }

            v995 = [v990 imageAsset];
            if (v995)
            {
              v996 = v995;
              v997 = sub_10084744C(1);
              [v996 registerImage:v994 withTraitCollection:v997];
            }

            (*v1229)(v1117, v1230, v1233);
            v998 = [v1253 metadata];
            v999 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyStateOfMindIdentifier);
            sub_1001E1DA0(&v1254, v999, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              v1000 = swift_dynamicCast();
              if (v1000)
              {
                v1001 = v1258;
              }

              else
              {
                v1001 = 0;
              }

              if (v1000)
              {
                v1002 = v1259;
              }

              else
              {
                v1002 = 0;
              }

              v1234 = v1002;
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
              v1001 = 0;
              v1234 = 0;
            }

            v1011 = [v1253 metadata];
            v1012 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyStateOfMindStartDate);
            sub_1001E1DA0(&v1254, v1012, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              v1013 = type metadata accessor for Date();
              v1014 = v1118;
              v1015 = swift_dynamicCast();
              (*(*(v1013 - 8) + 56))(v1014, v1015 ^ 1u, 1, v1013);
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
              v1016 = type metadata accessor for Date();
              (*(*(v1016 - 8) + 56))(v1118, 1, 1, v1016);
            }

            v1017 = [v1253 metadata];
            v1018 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyStateOfMindReflectiveInterval);
            sub_1001E1DA0(&v1254, v1018, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              v1019 = swift_dynamicCast();
              v1020 = v1258;
              if (!v1019)
              {
                v1020 = 0;
              }

              *&v1082 = v1020;
              v1021 = v1019 ^ 1;
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
              *&v1082 = 0;
              v1021 = 1;
            }

            LODWORD(v1081) = v1021;
            v1022 = [v1253 metadata];
            v1023 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyStateOfMindLabels);
            sub_1001E1DA0(&v1254, v1023, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              sub_1000F24EC(&qword_100ADB9B8, &qword_100971A80);
              v1024 = swift_dynamicCast();
              v1025 = v1258;
              if (!v1024)
              {
                v1025 = 0;
              }

              *&v1080 = v1025;
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
              *&v1080 = 0;
            }

            v1026 = [v1253 metadata];
            v1027 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyStateOfMindDomains);
            sub_1001E1DA0(&v1254, v1027, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              sub_1000F24EC(&qword_100ADB9B8, &qword_100971A80);
              v1028 = swift_dynamicCast();
              v1029 = v1258;
              if (!v1028)
              {
                v1029 = 0;
              }

              *&v1079 = v1029;
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
              *&v1079 = 0;
            }

            v1030 = [v1253 metadata];
            v1031 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyStateOfMindValenceClassification);
            sub_1001E1DA0(&v1254, v1031, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              v1032 = swift_dynamicCast();
              v1033 = v1258;
              if (!v1032)
              {
                v1033 = 0;
              }

              v1078 = v1033;
              v1034 = v1032 ^ 1;
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
              v1078 = 0;
              v1034 = 1;
            }

            v1035 = [v1253 metadata];
            v1036 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyStateOfMindAssociatedColorsLight);
            sub_1001E1DA0(&v1254, v1036, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              sub_1000F24EC(&qword_100AEB660, &unk_100960740);
              if (swift_dynamicCast())
              {
                v1037 = v1258;
                goto LABEL_549;
              }
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
            }

            v1037 = sub_1001998AC(0);
LABEL_549:
            v1038 = sub_100605CC4(v1037);

            v1039 = [v1253 metadata];
            v1040 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyStateOfMindAssociatedColorsDark);
            sub_1001E1DA0(&v1254, v1040, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              sub_1000F24EC(&qword_100AEB660, &unk_100960740);
              if (swift_dynamicCast())
              {
                v1041 = v1258;
LABEL_554:
                v1042 = sub_100605CC4(v1041);

                v1043 = v990;
                v1044 = v994;
                v1045 = sub_10019CD80(v1117, v990, v994, v1001, v1234, v1118, v1082, v1081, v1080, v1079, v1078, v1034, v1038, v1042);
                sub_100606BC4(v1045, v1236, &v1261);
                swift_unknownObjectRelease();

                goto LABEL_498;
              }
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
            }

            v1041 = sub_1001998AC(0);
            goto LABEL_554;
          }
        }

        v698 = [v1253 v163[189]];
        objc_opt_self();
        v699 = swift_dynamicCastObjCClass();
        v700 = v1233;
        if (v699)
        {
          v701 = v699;
          v702 = [v699 imageAsset];
          if (!v702 || (v703 = v702, sub_1000065A8(0, &qword_100AEB658, UITraitCollection_ptr), v704 = sub_10084744C(1), v705 = [v703 imageWithTraitCollection:v704], v703, v704, !v705))
          {
            v706 = [v1253 v163[189]];

            sub_10061518C(0xD00000000000001ELL, (v1090 | 0x8000000000000000), 0xD000000000000015, (v1089 | 0x8000000000000000), v706, v1245);
            swift_unknownObjectRelease();

            v705 = 0;
          }

          v707 = a4;
          v708 = [v701 imageAsset];
          if (v708 && (v709 = v708, sub_1000065A8(0, &qword_100AEB658, UITraitCollection_ptr), v710 = sub_10084744C(2), v711 = [v709 imageWithTraitCollection:v710], v709, v710, (v1234 = v711) != 0))
          {
            swift_unknownObjectRelease();
            v712 = v1253;
            a4 = v707;
          }

          else
          {
            v833 = v1253;
            v834 = [v1253 v163[189]];

            sub_10061518C(0xD00000000000001ELL, (v1090 | 0x8000000000000000), 0xD000000000000014, (v1088 | 0x8000000000000000), v834, v1245);
            swift_unknownObjectRelease();
            v712 = v833;
            a4 = v707;
            swift_unknownObjectRelease();

            v1234 = 0;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v712 = v1253;
          v835 = [v1253 v163[189]];

          sub_10061518C(0xD00000000000001ELL, (v1090 | 0x8000000000000000), 0xD00000000000001ALL, (v1087 | 0x8000000000000000), v835, v1245);
          swift_unknownObjectRelease();

          v1234 = 0;
          v705 = 0;
        }

        v836 = [v712 metadata];
        v837 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyMotionActivityType);
        sub_1001E1DA0(&v1254, v837, &v1256);

        sub_100177B94(&v1254);
        if (*(&v1257 + 1))
        {
          if (swift_dynamicCast())
          {
            *&v1082 = v1258;
            v838 = v1259;
            goto LABEL_402;
          }
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        }

        *&v1082 = 0;
        v838 = 0xE000000000000000;
LABEL_402:
        *&v1081 = v838;
        v839 = [v1253 metadata];
        v840 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyMotionActivityTypeEnum);
        sub_1001E1DA0(&v1254, v840, &v1256);

        sub_100177B94(&v1254);
        if (*(&v1257 + 1))
        {
          if (swift_dynamicCast())
          {
            *&v1080 = v1258;
            v841 = v1259;
            goto LABEL_407;
          }
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        }

        *&v1080 = 0;
        v841 = 0xE000000000000000;
LABEL_407:
        *&v1079 = v841;
        v842 = [v1253 metadata];
        v843 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyMotionActivityTypeLocalized);
        sub_1001E1DA0(&v1254, v843, &v1256);

        sub_100177B94(&v1254);
        if (*(&v1257 + 1))
        {
          if (swift_dynamicCast())
          {
            v1078 = v1258;
            v844 = v1259;
            goto LABEL_412;
          }
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        }

        v1078 = 0;
        v844 = 0xE000000000000000;
LABEL_412:
        v1077 = v844;
        v845 = v1253;
        v846 = [v1253 metadata];
        v847 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyMotionActivityNumberOfSteps);
        sub_1001E1DA0(&v1254, v847, &v1256);

        sub_100177B94(&v1254);
        if (*(&v1257 + 1))
        {
          if (swift_dynamicCast())
          {
            v848 = v1258;
LABEL_417:
            (*v1229)(v1137, v1230, v700);
            v1254 = v848;
            v849 = dispatch thunk of CustomStringConvertible.description.getter();
            v851 = v850;
            v852 = [v845 metadata];
            v853 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyMotionActivityStartDate);
            sub_1001E1DA0(&v1254, v853, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              v854 = type metadata accessor for Date();
              v855 = v1138;
              v856 = swift_dynamicCast() ^ 1;
              v857 = v855;
              v845 = v1253;
              (*(*(v854 - 8) + 56))(v857, v856, 1, v854);
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
              v858 = type metadata accessor for Date();
              (*(*(v858 - 8) + 56))(v1138, 1, 1, v858);
            }

            v859 = [v845 metadata];
            v860 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyMotionActivityEndDate);
            sub_1001E1DA0(&v1254, v860, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              v861 = type metadata accessor for Date();
              v862 = v1128;
              v863 = swift_dynamicCast();
              (*(*(v861 - 8) + 56))(v862, v863 ^ 1u, 1, v861);
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
              v864 = type metadata accessor for Date();
              v862 = v1128;
              (*(*(v864 - 8) + 56))(v1128, 1, 1, v864);
            }

            v865 = v705;
            v866 = v705;
            v867 = v1234;
            v868 = v1234;
            v869 = sub_10020EB14(v1137, v865, v867, v1082, v1081, v1080, v1079, v1078, v1077, v849, v851, v1138, v862);
            sub_100606BC4(v869, v1236, &v1261);

            v164 = v1246;
            v162 = v1248;
            v161 = v1235;
            goto LABEL_6;
          }
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        }

        v848 = 0;
        goto LABEL_417;
      }
    }

    v356 = v1253;
    v624 = [v1253 v163[189]];
    objc_opt_self();
    v625 = swift_dynamicCastObjCClass();
    v164 = v1246;
    if (!v625)
    {
      swift_unknownObjectRelease();
      v365 = [v356 v163[189]];

      v366 = 0xD000000000000011;
      v368 = 0xD000000000000018;
      v367 = (v1096 | 0x8000000000000000);
      v369 = (v1091 | 0x8000000000000000);
LABEL_104:
      sub_10061518C(v366, v367, v368, v369, v365, v1245);

      swift_unknownObjectRelease();
LABEL_19:

      goto LABEL_6;
    }

    v1234 = v624;
    *&v1082 = v625;
    v626 = [v625 route];
    *&v1081 = v626;
    v1235 = v161;
    if (v626)
    {
      v627 = v626;
      (*v1229)(v1145, v1230, v1233);
      v628 = [v627 locationReadings];
      sub_1000065A8(0, &unk_100AD2BF0, CLLocation_ptr);
      v629 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v630 = [v356 metadata];
      v631 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutType);
      sub_1001E1DA0(&v1254, v631, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v632 = swift_dynamicCast();
        if (v632)
        {
          v633 = v1258;
        }

        else
        {
          v633 = 0;
        }

        if (v632)
        {
          v634 = v1259;
        }

        else
        {
          v634 = 0;
        }

        v1076 = v634;
        v1077 = v633;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v1076 = 0;
        v1077 = 0;
      }

      v713 = [v1253 metadata];
      v714 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutDuration);
      sub_1001E1DA0(&v1254, v714, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        if (swift_dynamicCast())
        {
          v1075 = v1258;
          goto LABEL_317;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
      }

      v1075 = 0;
LABEL_317:
      v715 = [v1253 metadata];
      v716 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutWorkoutStartTime);
      sub_1001E1DA0(&v1254, v716, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v717 = type metadata accessor for Date();
        v718 = v1140;
        v719 = swift_dynamicCast();
        (*(*(v717 - 8) + 56))(v718, v719 ^ 1u, 1, v717);
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v720 = type metadata accessor for Date();
        (*(*(v720 - 8) + 56))(v1140, 1, 1, v720);
      }

      v721 = [v1253 metadata];
      v722 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutWorkoutEndTime);
      sub_1001E1DA0(&v1254, v722, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v723 = type metadata accessor for Date();
        v724 = v1141;
        v725 = swift_dynamicCast();
        (*(*(v723 - 8) + 56))(v724, v725 ^ 1u, 1, v723);
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v726 = type metadata accessor for Date();
        (*(*(v726 - 8) + 56))(v1141, 1, 1, v726);
      }

      v727 = [v1253 metadata];
      v728 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutAverageHeartRate);
      sub_1001E1DA0(&v1254, v728, &v1256);

      sub_100177B94(&v1254);
      v1078 = v629;
      if (*(&v1257 + 1))
      {
        v729 = swift_dynamicCast();
        v730 = v1258;
        if (!v729)
        {
          v730 = 0;
        }

        v1074 = v730;
        v731 = v729 ^ 1;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v1074 = 0;
        v731 = 1;
      }

      LODWORD(v1073) = v731;
      v732 = v1253;
      v733 = [v1253 metadata];
      v734 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutCaloriesBurnt);
      sub_1001E1DA0(&v1254, v734, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v735 = swift_dynamicCast();
        v736 = v1258;
        if (!v735)
        {
          v736 = 0;
        }

        v1072 = v736;
        v737 = v735 ^ 1;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v1072 = 0;
        v737 = 1;
      }

      LODWORD(v1071) = v737;
      v738 = [v732 metadata];
      v739 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutCaloriesBurntWithUnit);
      sub_1001E1DA0(&v1254, v739, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v740 = swift_dynamicCast();
        if (v740)
        {
          v741 = v1258;
        }

        else
        {
          v741 = 0;
        }

        if (v740)
        {
          v742 = v1259;
        }

        else
        {
          v742 = 0;
        }

        v1069 = v742;
        v1070 = v741;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v1069 = 0;
        v1070 = 0;
      }

      v743 = [v732 metadata];
      v744 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutTotalDistanceWithUnit);
      sub_1001E1DA0(&v1254, v744, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        if (swift_dynamicCast())
        {
          *&v1080 = v1258;
          v745 = v1259;
LABEL_347:
          *&v1079 = v745;
          v746 = v1240;
          v747 = v1231;
          (*v1214)(v1240, v1093, v1231);
          v1068 = *v1215;
          v748 = v1224;
          v1068(v1224, v1145, v1233);
          v749 = v1223;
          UUID.init()();
          v750 = objc_allocWithZone(type metadata accessor for WorkoutRouteAsset(0));
          *&v750[OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata] = 0;
          v751 = v1222;
          v752 = v749;
          v753 = v1225;
          (*v1237)(v1222, v752, v1225);
          v754 = v1220;
          (*v1213)(v1220, v746, v747);
          v755 = v1221;
          v756 = v1233;
          v1068(v1221, v748, v1233);
          v757 = sub_100285908(v751, v754, v755);
          (*v1212)(v1223, v753);
          v1067 = *v1216;
          v1067(v748, v756);
          (*v1211)(v1240, v1231);
          v758 = v1140;
          sub_1000082B4(v1140, v1191, &unk_100AD4790, &unk_10093B4E0);
          v759 = v1141;
          sub_1000082B4(v1141, v1174, &unk_100AD4790, &unk_10093B4E0);
          v1068 = v757;
          v760 = v1129;
          WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)();
          v1067(v1145, v1233);
          sub_100004F84(v759, &unk_100AD4790, &unk_10093B4E0);
          sub_100004F84(v758, &unk_100AD4790, &unk_10093B4E0);
          v761 = v1131;
          (*v1092)(v1131, v760, v1130);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E20, &unk_100962DF0);
          v762 = swift_allocObject();
          v763 = *(*v762 + 104);
          v764 = sub_1000F24EC(&qword_100AD5B28, &unk_10094FA90);
          (*(*(v764 - 8) + 56))(v762 + v763, 1, 1, v764);
          *(v762 + *(*v762 + 112)) = v1111;
          sub_100021CEC(v761, v762 + *(*v762 + 120), &qword_100ADA8A0, &unk_100952480);
          v765 = v1068;
          *(v1068 + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = v762;

          sub_100606BC4(v765, v1236, &v1261);

          v161 = v1235;
          v164 = v1246;
          v162 = v1248;
          v163 = &selRef_sharedScheduler;
          v356 = v1253;
          goto LABEL_348;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
      }

      *&v1080 = 0;
      v745 = 0xE000000000000000;
      goto LABEL_347;
    }

LABEL_348:
    v766 = [v1082 icon];
    if (v766)
    {
      v767 = v766;
      v768 = v1233;
      (*v1229)(v1146, v1230, v1233);
      v769 = [v356 metadata];
      v770 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutType);
      sub_1001E1DA0(&v1254, v770, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v771 = swift_dynamicCast();
        v772 = v1258;
        if (!v771)
        {
          v772 = 0;
        }

        *&v1080 = v772;
        if (v771)
        {
          v773 = v1259;
        }

        else
        {
          v773 = 0;
        }

        *&v1079 = v773;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        *&v1080 = 0;
        *&v1079 = 0;
      }

      v774 = [v1253 metadata];
      v775 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutDuration);
      sub_1001E1DA0(&v1254, v775, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        if (swift_dynamicCast())
        {
          v1078 = v1258;
          goto LABEL_364;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
      }

      v1078 = 0;
LABEL_364:
      v776 = [v1253 metadata];
      v777 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutWorkoutStartTime);
      sub_1001E1DA0(&v1254, v777, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v778 = type metadata accessor for Date();
        v779 = v1142;
        v780 = swift_dynamicCast();
        (*(*(v778 - 8) + 56))(v779, v780 ^ 1u, 1, v778);
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v781 = type metadata accessor for Date();
        (*(*(v781 - 8) + 56))(v1142, 1, 1, v781);
      }

      v782 = [v1253 metadata];
      v783 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutWorkoutEndTime);
      sub_1001E1DA0(&v1254, v783, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v784 = type metadata accessor for Date();
        v785 = v1143;
        v786 = swift_dynamicCast();
        (*(*(v784 - 8) + 56))(v785, v786 ^ 1u, 1, v784);
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v787 = type metadata accessor for Date();
        (*(*(v787 - 8) + 56))(v1143, 1, 1, v787);
      }

      v788 = [v1253 metadata];
      v789 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutAverageHeartRate);
      sub_1001E1DA0(&v1254, v789, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v790 = swift_dynamicCast();
        v791 = v1258;
        if (!v790)
        {
          v791 = 0;
        }

        v1077 = v791;
        v792 = v790 ^ 1;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v1077 = 0;
        v792 = 1;
      }

      LODWORD(v1076) = v792;
      v793 = [v1253 metadata];
      v794 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutCaloriesBurnt);
      sub_1001E1DA0(&v1254, v794, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v795 = swift_dynamicCast();
        v796 = v1258;
        if (!v795)
        {
          v796 = 0;
        }

        v1075 = v796;
        v797 = v795 ^ 1;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v1075 = 0;
        v797 = 1;
      }

      LODWORD(v1074) = v797;
      v798 = [v1253 metadata];
      v799 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutCaloriesBurntWithUnit);
      sub_1001E1DA0(&v1254, v799, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v800 = swift_dynamicCast();
        if (v800)
        {
          v801 = v1258;
        }

        else
        {
          v801 = 0;
        }

        if (v800)
        {
          v802 = v1259;
        }

        else
        {
          v802 = 0;
        }

        v1072 = v802;
        v1073 = v801;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
        v1072 = 0;
        v1073 = 0;
      }

      v803 = [v1253 metadata];
      v804 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutTotalDistanceWithUnit);
      sub_1001E1DA0(&v1254, v804, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        if (swift_dynamicCast())
        {
          *&v1082 = v1258;
          v805 = v1259;
LABEL_394:
          *&v1081 = v805;
          v806 = v1240;
          (*v1214)(v1240, v1095, v1231);
          v1071 = *v1215;
          v807 = v1224;
          (v1071)(v1224, v1146, v768);
          v1070 = v767;
          v808 = v1223;
          UUID.init()();
          v809 = objc_allocWithZone(type metadata accessor for WorkoutIconAsset(0));
          *&v809[OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata] = 0;
          v810 = v1222;
          v811 = v1225;
          (*v1237)(v1222, v808, v1225);
          v812 = v1220;
          (*v1213)(v1220, v806, v1231);
          v813 = v1221;
          (v1071)(v1221, v807, v768);
          v1069 = sub_100285908(v810, v812, v813);
          v814 = *v1212;
          (*v1212)(v808, v811);
          v1071 = *v1216;
          v1071(v807, v768);
          (*v1211)(v1240, v1231);
          v815 = v1189;
          v816 = v1070;
          *v1189 = v1070;
          swift_storeEnumTagMultiPayload();
          v1070 = v816;
          UUID.init()();
          v817 = UUID.uuidString.getter();
          v819 = v818;
          v814(v808, v811);
          type metadata accessor for AssetAttachment(0);
          v820 = swift_allocObject();
          *(v820 + 16) = 0;
          sub_100617828(v815, v820 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v821 = (v820 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v821 = v817;
          v821[1] = v819;
          v822 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          v823 = v1069;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_100286DC0(*((*(v823 + v822) & 0xFFFFFFFFFFFFFF8) + 0x10));
          v824._countAndFlagsBits = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          DebugData.init(name:)(v824);
          swift_endAccess();
          v825 = v1142;
          sub_1000082B4(v1142, v1191, &unk_100AD4790, &unk_10093B4E0);
          v826 = v1143;
          sub_1000082B4(v1143, v1174, &unk_100AD4790, &unk_10093B4E0);
          v827 = v1133;
          WorkoutIconAssetMetadata.init(type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:numberOfWorkouts:totalGroupWorkoutDuration:groupWorkoutStartDates:groupWorkoutEndDates:averageGroupHeartRateBPM:totalGroupWorkoutCaloriesBurnt:totalGroupWorkoutCaloriesBurntWithUnit:)();
          v828 = v1070;

          v1071(v1146, v1233);
          sub_100004F84(v826, &unk_100AD4790, &unk_10093B4E0);
          sub_100004F84(v825, &unk_100AD4790, &unk_10093B4E0);
          v829 = v1135;
          (*v1094)(v1135, v827, v1134);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0DD0, &unk_100960750);
          v830 = swift_allocObject();
          v831 = *(*v830 + 104);
          v832 = sub_1000F24EC(&qword_100AE4280, &unk_100952430);
          (*(*(v832 - 8) + 56))(v830 + v831, 1, 1, v832);
          *(v830 + *(*v830 + 112)) = v1111;
          sub_100021CEC(v829, v830 + *(*v830 + 120), &qword_100ADA888, &unk_100952410);
          *(v823 + OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata) = v830;

          sub_100606BC4(v823, v1236, &v1261);

          swift_unknownObjectRelease();
          goto LABEL_179;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
      }

      *&v1082 = 0;
      v805 = 0xE000000000000000;
      goto LABEL_394;
    }

    if (!v1081)
    {
      v1254 = 0;
      v1255 = 0xE000000000000000;
      _StringGuts.grow(_:)(35);
      v870._countAndFlagsBits = 0xD000000000000021;
      v870._object = (v1086 | 0x8000000000000000);
      DefaultStringInterpolation.appendLiteral(_:)(v870);
      v871 = [v356 v163[189]];
      if ([v871 respondsToSelector:"debugDescription"])
      {
        v872 = [v871 debugDescription];
        swift_unknownObjectRelease();
        v873 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v875 = v874;
      }

      else
      {
        swift_unknownObjectRelease();
        v873 = 0;
        v875 = 0xE000000000000000;
      }

      v880._countAndFlagsBits = v873;
      v880._object = v875;
      j___sSS6appendyySSF(v880);

      v881._countAndFlagsBits = 0;
      v881._object = 0xE000000000000000;
      DefaultStringInterpolation.appendLiteral(_:)(v881);
      sub_100606AE0(0xD000000000000011, (v1096 | 0x8000000000000000), v1254, v1255, v1245);

      swift_unknownObjectRelease();

      goto LABEL_181;
    }

    swift_unknownObjectRelease();

LABEL_6:
    ++v162;
  }

  while (v164 != v162);
  v1046 = v1252;
  if (v1217)
  {
    v1047 = v1247;
    if (*&v1217[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
    {

      v1048 = v1197;
      sub_1000768B4(v1197);

      v1049 = v1198;
      if ((*v1116)(v1048, 1, v1198))
      {
        sub_100004F84(v1048, &unk_100AD5B30, &unk_100941F80);
        v1050 = 0;
      }

      else
      {
        v1051 = v1194;
        (*v1113)(v1194, v1048, v1049);
        sub_100004F84(v1048, &unk_100AD5B30, &unk_100941F80);
        v1050 = MultiPinMapAssetMetadata.visitsData.getter();
        (*v1114)(v1051, v1049);
      }
    }

    else
    {
      v1050 = 0;
    }
  }

  else
  {
    v1050 = 0;
    v1217 = 0;
    v1047 = v1247;
  }

  v1052 = v1046;
LABEL_565:
  sub_1006152DC(v1050, v1236, v1245, a4, v1206, v1207, v176);
  v1054 = v1053;

  swift_beginAccess();
  v1055 = v1261;
  sub_1006167D4(v1054, v1261);
  v1056 = sub_100603F00(v1052);
  if (!v1056)
  {
    v1257 = 0u;
    v1256 = 0u;
    goto LABEL_574;
  }

  v1057 = v1056;
  v1058 = [v1056 metadata];

  v1059 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100604AA0(MOSuggestionAssetMetadataKeyTransferID);
  sub_1001E1DA0(&v1254, v1059, &v1256);

  sub_100177B94(&v1254);
  if (!*(&v1257 + 1))
  {
LABEL_574:
    sub_100004F84(&v1256, &qword_100AD13D0, &unk_100942DB0);
    v1061 = 0;
    v1062 = 0;
    goto LABEL_575;
  }

  v1060 = swift_dynamicCast();
  if (v1060)
  {
    v1061 = v1254;
  }

  else
  {
    v1061 = 0;
  }

  if (v1060)
  {
    v1062 = v1255;
  }

  else
  {
    v1062 = 0;
  }

LABEL_575:
  v1063 = v1260;
  if (v1205)
  {
    v1064 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1064 = *((v1252 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v1065 = v1208;
  *v1208 = v1047;
  v1065[1] = v161;
  v1066 = v1251;
  v1065[2] = v1250;
  v1065[3] = v1066;
  v1065[4] = v1055;
  v1065[5] = v1063;
  v1065[6] = v1054;
  v1065[7] = v1064;
  v1065[8] = v1061;
  v1065[9] = v1062;
}