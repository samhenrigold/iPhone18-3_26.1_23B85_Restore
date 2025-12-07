id sub_100557064(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout];

  return [v2 invalidateLayout];
}

uint64_t sub_1005570C0(uint64_t a1, unsigned __int8 *a2)
{
  v83 = sub_10002849C(&qword_10096FDD0, &qword_1007D4EC0);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v86 = &v79 - v4;
  v89 = type metadata accessor for IndexPath();
  v97 = *(v89 - 8);
  __chkstk_darwin(v89);
  v81 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v79 - v7;
  __chkstk_darwin(v8);
  v93 = &v79 - v9;
  v10 = sub_10002849C(&qword_10098BAA0, &qword_1007D4EC8);
  __chkstk_darwin(v10);
  v96 = &v79 - v11;
  v90 = sub_10002849C(&qword_10098BAA8, qword_1007D4ED0);
  v85 = *(v90 - 8);
  __chkstk_darwin(v90);
  v84 = &v79 - v12;
  v13 = *(a1 + 16);
  v14 = _swiftEmptyArrayStorage;
  v95 = v13;
  v91 = a1;
  v92 = a2;
  if (v13)
  {
    v101[0] = _swiftEmptyArrayStorage;
    sub_100144128(0, v13, 0);
    v14 = v101[0];
    v15 = (a1 + 56);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v101[0] = v14;
      v19 = v14[2];
      v18 = v14[3];

      if (v19 >= v18 >> 1)
      {
        sub_100144128((v18 > 1), v19 + 1, 1);
        v14 = v101[0];
      }

      v14[2] = v19 + 1;
      v20 = &v14[2 * v19];
      v20[4] = v17;
      v20[5] = v16;
      v15 += 5;
      --v13;
    }

    while (v13);
    a2 = v92;
  }

  v21 = *(a2 + 2);
  v22 = _swiftEmptyArrayStorage;
  v79 = v21;
  if (v21)
  {
    v101[0] = _swiftEmptyArrayStorage;
    sub_100144128(0, v21, 0);
    v22 = v101[0];
    v23 = a2 + 56;
    v24 = v21;
    do
    {
      v26 = *(v23 - 1);
      v25 = *v23;
      v101[0] = v22;
      v28 = v22[2];
      v27 = v22[3];

      if (v28 >= v27 >> 1)
      {
        sub_100144128((v27 > 1), v28 + 1, 1);
        v22 = v101[0];
      }

      v22[2] = v28 + 1;
      v29 = &v22[2 * v28];
      v29[4] = v26;
      v29[5] = v25;
      v23 += 40;
      --v24;
    }

    while (v24);
  }

  v101[0] = v22;
  v101[4] = v14;
  sub_10002849C(&unk_100977380, &qword_1007BB880);
  sub_100097060(&qword_100973110, &unk_100977380, &qword_1007BB880, &protocol conformance descriptor for [A]);
  v30 = v84;
  BidirectionalCollection<>.difference<A>(from:)();

  v31 = v96;
  (*(v85 + 16))(v96, v30, v90);
  v32 = *(v10 + 36);
  sub_100097060(&unk_10098BAB0, &qword_10098BAA8, qword_1007D4ED0, &protocol conformance descriptor for CollectionDifference<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*(v31 + v32) == v101[0])
  {
    v87 = _swiftEmptyArrayStorage;
    v100 = _swiftEmptyArrayStorage;
  }

  else
  {
    v94 = (v97 + 32);
    v100 = _swiftEmptyArrayStorage;
    v87 = _swiftEmptyArrayStorage;
    do
    {
      while (1)
      {
        v54 = dispatch thunk of Collection.subscript.read();
        v56 = *v55;
        v57 = *(v55 + 33);
        v58 = *v55;
        v59 = *(v55 + 8);
        v98 = *(v55 + 16);
        v60 = DebugMenuPage.debugSettingsProviders.getter(v58, v59, v98);
        v54(v101, 0, v60);
        dispatch thunk of Collection.formIndex(after:)();
        if (v57 == 1)
        {
          break;
        }

        IndexPath.init(item:section:)();
        v61 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_10003421C(0, v100[2] + 1, 1, v100);
        }

        v62 = v98;
        v64 = v100[2];
        v63 = v100[3];
        if (v64 >= v63 >> 1)
        {
          v75 = v98;
          v76 = sub_10003421C((v63 > 1), v64 + 1, 1, v100);
          v62 = v75;
          v100 = v76;
        }

        v65 = sub_100558640(v61, v59, v62);
        v66 = v99;
        v67 = v100;
        v100[2] = v64 + 1;
        (*(v97 + 32))(v67 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v64, v66, v89, v65);
        v31 = v96;
        dispatch thunk of Collection.endIndex.getter();
        if (*(v31 + v32) == v101[0])
        {
          goto LABEL_14;
        }
      }

      IndexPath.init(item:section:)();
      v68 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_10003421C(0, v87[2] + 1, 1, v87);
      }

      v69 = v59;
      v70 = v98;
      v72 = v87[2];
      v71 = v87[3];
      if (v72 >= v71 >> 1)
      {
        v77 = v98;
        v78 = sub_10003421C((v71 > 1), v72 + 1, 1, v87);
        v70 = v77;
        v69 = v59;
        v87 = v78;
      }

      v73 = sub_100558640(v68, v69, v70);
      v74 = v87;
      v87[2] = v72 + 1;
      (*(v97 + 32))(v74 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v72, v93, v89, v73);
      v31 = v96;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v31 + v32) != v101[0]);
  }

LABEL_14:
  result = sub_10002B894(v31, &qword_10098BAA0, &qword_1007D4EC8);
  v34 = v95;
  if (!v95)
  {
    v88 = _swiftEmptyArrayStorage;
LABEL_62:
    (*(v85 + 8))(v84, v90);
    return v87;
  }

  v35 = 0;
  v93 = (v91 + 32);
  v80 = (v97 + 32);
  v92 += 64;
  v88 = _swiftEmptyArrayStorage;
  v91 = v79 + 1;
  while (2)
  {
    if (v35 >= v34)
    {
      __break(1u);
    }

    else if (!__OFADD__(v35, 1))
    {
      v99 = v35 + 1;
      v36 = v92;
      v94 = v35;
      v37 = &v93[40 * v35];
      v38 = *(v37 + 1);
      v96 = *v37;
      v98 = v38;
      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      LODWORD(v97) = v37[32];
      v41 = v91;
      while (1)
      {
        if (!--v41)
        {
          goto LABEL_17;
        }

        v42 = *(v36 - 4);
        v43 = *(v36 - 3);
        v45 = *(v36 - 2);
        v44 = *(v36 - 1);
        v46 = *v36;
        v47 = v45 == v40 && v44 == v39;
        v48 = v47;
        if (v47)
        {
          break;
        }

        v36 += 40;
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          v49 = v98;
          if (v98)
          {
            goto LABEL_31;
          }

LABEL_37:
          if (v43)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }
      }

      v45 = v40;
      v49 = v98;
      if (!v98)
      {
        goto LABEL_37;
      }

LABEL_31:
      if (!v43)
      {
        goto LABEL_41;
      }

      result = v96;
      if (v96 == v42 && v49 == v43 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
LABEL_38:
        if (v48 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
        {
          if (v97 == v46)
          {
LABEL_17:
            v35 = v99;
            v34 = v95;
            if (v99 == v95)
            {
              goto LABEL_62;
            }

            continue;
          }
        }
      }

LABEL_40:

LABEL_41:

      IndexPath.init(item:section:)();
      v50 = v86 + *(v83 + 48);
      (*v80)();
      *v50 = v42;
      *(v50 + 8) = v43;
      *(v50 + 16) = v45;
      *(v50 + 24) = v44;
      *(v50 + 32) = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_1000341F8(0, v88[2] + 1, 1, v88);
      }

      v34 = v95;
      v35 = v99;
      v52 = v88[2];
      v51 = v88[3];
      if (v52 >= v51 >> 1)
      {
        v88 = sub_1000341F8((v51 > 1), v52 + 1, 1, v88);
      }

      v53 = v88;
      v88[2] = v52 + 1;
      result = sub_1000476A0(v86, v53 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v52, &qword_10096FDD0, &qword_1007D4EC0);
      if (v35 != v34)
      {
        continue;
      }

      goto LABEL_62;
    }

    break;
  }

  __break(1u);
  return result;
}

void sub_100557B44(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_10098BA90, &qword_1007D4EB8);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v54 - v12;
  v65 = v2;

  v13 = sub_1005570C0(v55, a1);
  v56 = v14;
  v57 = v13;
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17)
  {
    v54 = a1;
    v62 = (v5 + 32);
    v63 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView;
    v58 = (v5 + 8);

    v18 = 0;
    v60 = v10;
    v61 = v16;
    v59 = v17;
    while (1)
    {
      v19 = v64;
      if (v18 == v17)
      {
        v20 = sub_10002849C(&qword_10096FDD0, &qword_1007D4EC0);
        (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
        v66 = v17;
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        if (v18 >= *(v16 + 16))
        {
          goto LABEL_23;
        }

        v21 = v4;
        v22 = v16;
        v23 = v18;
        v24 = sub_10002849C(&qword_10096FDD0, &qword_1007D4EC0);
        v25 = *(v24 - 8);
        sub_100031660(v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, v10, &qword_10096FDD0, &qword_1007D4EC0);
        v66 = v23 + 1;
        v16 = v22;
        v4 = v21;
        (*(v25 + 56))(v10, 0, 1, v24);
      }

      sub_1000476A0(v10, v19, &unk_10098BA90, &qword_1007D4EB8);
      v26 = sub_10002849C(&qword_10096FDD0, &qword_1007D4EC0);
      if ((*(*(v26 - 8) + 48))(v19, 1, v26) == 1)
      {

        a1 = v54;
        break;
      }

      v27 = v19 + *(v26 + 48);
      v28 = *v27;
      v29 = *(v27 + 8);
      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      v32 = *(v27 + 32);
      v33 = v19;
      v34 = v4;
      (*v62)(v7, v33, v4);
      v35 = *&v65[v63];
      if (!v35)
      {
        goto LABEL_24;
      }

      v36 = v35;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v38 = [v36 cellForItemAtIndexPath:isa];

      if (v38)
      {
        type metadata accessor for GuidedSearchTokenCell();
        if (swift_dynamicCastClass())
        {
          sub_100084F00(v28, v29, v31, v30, v32);
        }

        v4 = v34;
        (*v58)(v7, v34);
      }

      else
      {
        v4 = v34;
        (*v58)(v7, v34);
      }

      v10 = v60;
      v16 = v61;
      v17 = v59;
      v18 = v66;
    }
  }

  v39 = *(v57 + 16);
  if (v39)
  {
    v40 = *&v65[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView];
    if (!v40)
    {
      goto LABEL_26;
    }

    v41 = v40;
    [v41 contentOffset];
    [v41 setContentOffset:0 animated:?];

    *(*&v65[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout] + OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) = 1;
  }

  v42 = *&v65[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView];
  if (!v42)
  {
    goto LABEL_25;
  }

  v43 = v39 != 0;
  v44 = v42;

  v45 = swift_allocObject();
  v46 = v65;
  v45[2] = v65;
  v45[3] = a1;
  v47 = v56;
  v45[4] = v57;
  v45[5] = v16;
  v45[6] = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_100558614;
  *(v48 + 24) = v45;
  v71 = sub_10006F094;
  v72 = v48;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_1000489A8;
  v70 = &unk_1008C8420;
  v49 = _Block_copy(&aBlock);
  v50 = v46;

  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v43;
  *(v52 + 24) = v51;
  v71 = sub_100558624;
  v72 = v52;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_100504C5C;
  v70 = &unk_1008C8498;
  v53 = _Block_copy(&aBlock);

  [v44 performBatchUpdates:v49 completion:v53];
  _Block_release(v53);
  _Block_release(v49);
}

void sub_10055822C()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_onSelect);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView) = 0;
  v2 = v0 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_previousLayoutWidth;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionCalculator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsScrollObserver) = 0;
  v3 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  v4 = type metadata accessor for ImpressionMetrics();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10055832C(void *a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  swift_beginAccess();
  sub_100031660(v2 + v11, v6, &qword_100973D30, &unk_1007B1DC0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &qword_100973D30, &unk_1007B1DC0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionCalculator;
    swift_beginAccess();
    if (*(v2 + v13))
    {
      swift_endAccess();

      [a1 frame];
      ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)();

      (*(v8 + 8))(v10, v7);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      swift_endAccess();
    }
  }

  if (*(v2 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsCoordinator))
  {

    dispatch thunk of NestedCollectionViewImpressionsCoordinator.register(for:at:)();
  }

  return result;
}

uint64_t sub_1005585A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

char *sub_100558660(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore31TodayDebugSectionBackgroundView_sectionTypeIndicator;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC8AppStore31TodayDebugSectionBackgroundView_sectionTypeIndicator]];
  v15 = [v14 layer];
  [v15 setZPosition:1000.0];

  return v14;
}

void sub_1005588F0(uint64_t a1)
{
  v2 = type metadata accessor for Shelf.ContentsMetadata();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v21 = type metadata accessor for TodaySectionDisplayOptions();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v7 + 8))(v9, v6);
  if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v3 + 96))(v5, v2);
    v13 = v5;
    v14 = v21;
    (*(v10 + 32))(v12, v13, v21);
    v15 = v23;
    v16 = *&v23[OBJC_IVAR____TtC8AppStore31TodayDebugSectionBackgroundView_sectionTypeIndicator];
    v17 = TodaySectionDisplayOptions.debugSectionTypeIndicatorColor.getter();
    [v16 setBackgroundColor:v17];

    sub_100558D7C();
    ShelfLayoutSpacingProvider.topPaddingValue(in:)();
    ShelfLayoutSpacingProvider.bottomPaddingValue(in:)();
    static UIEdgeInsets.vertical(top:bottom:)();
    [v15 setLayoutMargins:?];
    (*(v10 + 8))(v12, v14);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    v18 = *&v23[OBJC_IVAR____TtC8AppStore31TodayDebugSectionBackgroundView_sectionTypeIndicator];
    v19 = [objc_opt_self() clearColor];
    [v18 setBackgroundColor:v19];
  }
}

id sub_100558D14(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100558D7C()
{
  result = qword_10098BAF0;
  if (!qword_10098BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098BAF0);
  }

  return result;
}

void sub_100558DD0(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_borderColor);
  *(v1 + OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_borderColor) = a1;
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

  sub_100028BB8();
  a1 = a1;
  v4 = v7;
  v5 = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_100559118();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

double sub_100558EB0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_backgroundGradientColors);
  *(v1 + OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_backgroundGradientColors) = a1;
  if (!a1)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!v2 || (v3 = , v4 = sub_1006E21AC(v3, v2), , (v4 & 1) == 0))
  {
LABEL_6:
    sub_100559220();
  }

  return result;
}

void sub_100558F48(void *a1, __n128 a2)
{
  v11.receiver = v2;
  v11.super_class = type metadata accessor for SearchResultBackgroundView();
  objc_msgSendSuper2(&v11, "applyLayoutAttributes:", a1);
  type metadata accessor for SearchCollectionLayoutAttributes();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v2 layer];
    [v7 setCornerRadius:*(v5 + OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_cornerRadius)];

    [v2 setBackgroundColor:*(v5 + OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_backgroundColor)];
    v8 = *(v5 + OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_borderColor);
    v9 = v8;
    sub_100558DD0(v8);

    sub_100558EB0(v10);
  }
}

void sub_1005590C0(void *a1, __n128 a2, uint64_t a3, const char **a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for SearchResultBackgroundView();
  v5 = *a4;
  v6 = v7.receiver;
  objc_msgSendSuper2(&v7, v5);
  sub_100559118();
  sub_100559220();
}

void sub_100559118()
{
  v1 = [v0 layer];
  v2 = v1;
  v3 = OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_borderColor;
  v4 = 1.0;
  if (!*&v0[OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_borderColor])
  {
    v4 = 0.0;
  }

  [v1 setBorderWidth:v4];

  v5 = [v0 layer];
  v6 = *&v0[v3];
  if (v6)
  {
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  [v5 setBorderColor:v7];

  v8 = [v0 layer];
  [v8 setNeedsDisplay];
}

char *sub_100559220()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_backgroundGradientColors];
  v2 = &off_10098B000;
  if (!v1)
  {
    v5 = OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_gradientLayer;
    v6 = *&v0[OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_gradientLayer];
    if (v6)
    {
      [v6 removeFromSuperlayer];
      v7 = *&v0[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v5] = 0;

    goto LABEL_25;
  }

  v3 = OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_gradientLayer;
  v4 = *&v0[OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_gradientLayer];
  if (v4)
  {
  }

  else
  {
    v8 = objc_allocWithZone(CAGradientLayer);

    v9 = [v8 init];
    v10 = [v0 layer];
    [v10 addSublayer:v9];

    v11 = *&v0[v3];
    *&v0[v3] = v9;

    v4 = *&v0[v3];
    if (!v4)
    {
LABEL_19:

      goto LABEL_25;
    }
  }

  v12 = v4;
  v13 = [v0 layer];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v12 setFrame:{v15, v17, v19, v21}];
  v22 = *&v0[v3];
  if (!v22)
  {
    goto LABEL_19;
  }

  if (v1 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
    if (v23)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_10:
      v35 = v0;
      v38 = _swiftEmptyArrayStorage;
      v24 = v22;
      result = sub_100143FA4(0, v23 & ~(v23 >> 63), 0);
      if (v23 < 0)
      {
        __break(1u);
        return result;
      }

      v26 = 0;
      v27 = v38;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v28 = *(v1 + 8 * v26 + 32);
        }

        v29 = v28;
        v30 = [v28 CGColor];
        type metadata accessor for CGColor(0);
        v37 = v31;

        *&v36 = v30;
        v38 = v27;
        v33 = v27[2];
        v32 = v27[3];
        if (v33 >= v32 >> 1)
        {
          sub_100143FA4((v32 > 1), v33 + 1, 1);
          v0 = v35;
          v27 = v38;
        }

        ++v26;
        v27[2] = v33 + 1;
        sub_100056164(&v36, &v27[4 * v33 + 4]);
      }

      while (v23 != v26);

      v2 = &off_10098B000;
      goto LABEL_24;
    }
  }

  v24 = v22;

LABEL_24:
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 setColors:isa];

LABEL_25:
  result = *(v2[353] + v0);
  if (result)
  {
    return [result setNeedsDisplay];
  }

  return result;
}

id sub_1005595E4(void *a1, __n128 a2)
{
  *&v2[OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_borderColor] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_backgroundGradientColors] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_gradientLayer] = 0;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for SearchResultBackgroundView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_100559698(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SearchResultBackgroundView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_100559824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v141 = a3;
  v122 = type metadata accessor for OfferLabelStyle();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v119 = &v114 - v6;
  v7 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v7 - 8);
  v134 = &v114 - v8;
  v133 = type metadata accessor for OfferButtonSubtitlePosition();
  v128 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = &v114 - v10;
  v11 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v11 - 8);
  v127 = &v114 - v12;
  v13 = sub_10002849C(&qword_100975F00, &qword_1007BAA50);
  __chkstk_darwin(v13 - 8);
  v126 = &v114 - v14;
  v15 = type metadata accessor for AdamId();
  v16 = *(v15 - 8);
  v135 = v15;
  v136 = v16;
  __chkstk_darwin(v15);
  v123 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v142 = &v114 - v19;
  v20 = type metadata accessor for AppShowcaseType();
  v137 = *(v20 - 8);
  v138 = v20;
  __chkstk_darwin(v20);
  v124 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v125 = &v114 - v23;
  v24 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v24 - 8);
  v118 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v117 = &v114 - v27;
  v28 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v28 - 8);
  v30 = &v114 - v29;
  v31 = type metadata accessor for VideoControls();
  __chkstk_darwin(v31 - 8);
  __chkstk_darwin(v32);
  v33 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v33 - 8);
  v35 = &v114 - v34;
  v36 = type metadata accessor for VideoFillMode();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for VideoConfiguration();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v41 = &v114 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = AppShowcase.lockup.getter();
  v139 = a1;
  v140 = v42;
  if (AppShowcase.video.getter())
  {
    (*(v37 + 104))(v39, enum case for VideoFillMode.scaleAspectFill(_:), v36);
    Video.preview.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();

    v43 = type metadata accessor for AspectRatio();
    (*(*(v43 - 8) + 56))(v35, 0, 1, v43);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    Video.videoUrl.getter();
    v44 = type metadata accessor for URL();
    (*(*(v44 - 8) + 56))(v30, 0, 1, v44);
    v45 = v117;
    Video.templateMediaEvent.getter();
    v46 = v118;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView(0);
    sub_10055AC54(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v47 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v46, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v45, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v30, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(&v144, &qword_10096FB90, &qword_1007B2A50);
    v48 = v143;
    sub_100105720();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v50 = Strong;
      v51 = [v48 contentView];
      [v51 addSubview:v50];

      [v48 setNeedsLayout];

      (*(v115 + 8))(v41, v116);
    }

    else
    {
      (*(v115 + 8))(v41, v116);
    }
  }

  v52 = v139;
  v53 = AppShowcase.video.getter();
  if (v53)
  {
  }

  v54 = v143;
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v53 == 0;
    v57 = v55;
    [v55 setHidden:v56];
  }

  [v54 setNeedsLayout];
  v58 = v125;
  AppShowcase.type.getter();
  v59 = OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_showcaseType;
  swift_beginAccess();
  v61 = v137;
  v60 = v138;
  v62 = *(v137 + 24);
  v62(&v54[v59], v58, v138);
  swift_endAccess();
  v63 = *&v54[OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_lockupView];
  v64 = v124;
  (*(v61 + 16))(v124, &v54[v59], v60);
  v65 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_type;
  swift_beginAccess();
  v62(&v63[v65], v64, v60);
  swift_endAccess();
  sub_10029850C();
  v66 = *(v61 + 8);
  v66(v64, v60);
  [v54 setNeedsLayout];
  v66(v58, v60);
  Lockup.title.getter();
  v68 = v67;
  AppShowcase.descriptionText.getter();
  v138 = v69;
  v70 = Lockup.offerDisplayProperties.getter();
  v124 = Lockup.crossLinkTitle.getter();
  v137 = v71;
  v118 = Lockup.crossLinkSubtitle.getter();
  v73 = v72;
  Lockup.adamId.getter();
  v74 = sub_10029BA78(v52);
  v139 = Lockup.buttonAction.getter();
  v75 = *&v63[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel];
  v125 = v68;
  if (v68)
  {
    v76 = String._bridgeToObjectiveC()();
  }

  else
  {
    v76 = 0;
  }

  v77 = v126;
  [v75 setText:v76];

  v78 = *&v63[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel];
  if (v138)
  {
    v79 = String._bridgeToObjectiveC()();
  }

  else
  {
    v79 = 0;
  }

  v126 = v73;
  [v78 setText:v79];

  if (v74)
  {
    v80 = enum case for Wordmark.arcade(_:);
    v81 = type metadata accessor for Wordmark();
    v82 = *(v81 - 8);
    (*(v82 + 104))(v77, v80, v81);
    (*(v82 + 56))(v77, 0, 1, v81);
    sub_100028BB8();
    v83 = static UIColor.primaryText.getter();
    sub_100295658(v77, v83);
  }

  else
  {
    v84 = type metadata accessor for Wordmark();
    (*(*(v84 - 8) + 56))(v77, 1, 1, v84);
    sub_100295658(v77, 0);
  }

  v85 = v135;
  sub_10002B894(v77, &qword_100975F00, &qword_1007BAA50);
  v86 = sub_10002849C(&unk_100973240, qword_1007B2220);
  v87 = v127;
  (*(*(v86 - 8) + 56))(v127, 1, 1, v86);
  v88 = v128;
  v89 = v133;
  (*(v128 + 104))(v130, enum case for OfferButtonSubtitlePosition.below(_:), v133);
  (*(v88 + 56))(v134, 1, 1, v89);
  sub_10055AC54(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v90 = v129;
  AccessibilityConditional.init(value:axValue:)();
  sub_10064AFA4(v70, v139, 0, v87, v90, v141, 0, 0);
  (*(v131 + 8))(v90, v132);
  sub_10002B894(v87, &unk_100973230, &unk_1007B17E0);
  if (v137)
  {
    v91 = v85;
    v92 = v126;
    if (v126)
    {
      v93 = v123;
      (*(v136 + 16))(v123, v142, v91);
      sub_10002849C(&unk_100973AF0, &qword_1007B3960);
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v94 = v144;
      type metadata accessor for CrossLinkPresenter(0);
      swift_allocObject();
      v95 = v63;
      v96 = v93;
      v97 = &StringUserDefaultsDebugSetting;
      v98 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v96, v124, v137, v118, v92, 0, v63, &off_1008BBFC8, v94, *(&v94 + 1));
      v99 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v95[v99] = v98;

      goto LABEL_24;
    }
  }

  else
  {

    v91 = v85;
  }

  v100 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkPresenter;
  swift_beginAccess();
  *&v63[v100] = 0;

  sub_10029B160(0, 0);
  v97 = &StringUserDefaultsDebugSetting;
LABEL_24:
  *&v63[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerDisplayProperties] = v70;

  if (v70)
  {

    v101 = v119;
    OfferDisplayProperties.offerLabelStyle.getter();
    v102 = v121;
    v103 = v120;
    v104 = v122;
    (*(v121 + 104))(v120, enum case for OfferLabelStyle.none(_:), v122);
    sub_10055AC54(&unk_100987B00, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
    v105 = dispatch thunk of static Equatable.== infix(_:_:)();
    v106 = *(v102 + 8);
    v106(v103, v104);
    v106(v101, v104);
    if ((v105 & 1) == 0)
    {

      OfferDisplayProperties.adamId.getter();
      sub_10002849C(&unk_100973AF0, &qword_1007B3960);
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      type metadata accessor for ASKBagContract();
      inject<A, B>(_:from:)();
      ASKBagContract.arePreordersCancellable.getter();

      v108 = type metadata accessor for OfferLabelPresenter();
      swift_allocObject();
      v109 = OfferLabelPresenter.init(offerDisplayProperties:adamId:appStateController:arePreordersCancellable:)();
      *(&v145 + 1) = v108;
      *&v144 = v109;
      v110 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabelPresenter;
      swift_beginAccess();

      sub_100283DDC(&v144, &v63[v110]);
      swift_endAccess();
      v111 = objc_opt_self();
      v112 = [v111 areAnimationsEnabled];
      [v111 setAnimationsEnabled:0];
      sub_10055AC54(&qword_10098BB88, type metadata accessor for AppShowcaseLockupView, &unk_1007B2B2C);
      swift_unknownObjectRetain();
      OfferLabelPresenter.view.setter();
      [v63 layoutIfNeeded];
      [v111 setAnimationsEnabled:v112];

      goto LABEL_29;
    }
  }

  v144 = 0u;
  v145 = 0u;
  v107 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabelPresenter;
  swift_beginAccess();
  sub_100283DDC(&v144, &v63[v107]);
  swift_endAccess();
  [v63 v97[41].base_meths];

LABEL_29:

  (*(v136 + 8))(v142, v91);
  [v143 v97[41].base_meths];

  return result;
}

uint64_t sub_10055AC54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10055AC9C(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  v67 = a4;
  v62 = a3;
  v60 = type metadata accessor for AspectRatio();
  v4 = *(v60 - 8);
  __chkstk_darwin(v60);
  v66 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = type metadata accessor for Artwork.Style();
  v6 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v52 = &v40[-v9];
  __chkstk_darwin(v10);
  v51 = &v40[-v11];
  v12 = type metadata accessor for AppShowcaseType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v57 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v40[-v16];
  __chkstk_darwin(v18);
  v56 = &v40[-v19];
  __chkstk_darwin(v20);
  v49 = &v40[-v21];
  v22 = Shelf.items.getter();
  v23 = *(v22 + 16);
  v58 = v22 + 32;
  v48 = (v13 + 32);
  v65 = (v13 + 88);
  v64 = enum case for AppShowcaseType.large(_:);
  v47 = enum case for AppShowcaseType.small(_:);
  v41 = enum case for AppShowcaseType.smallAlignedLeft(_:);
  v55 = (v13 + 8);
  v46 = enum case for Artwork.Style.roundedRect(_:);
  v45 = (v6 + 104);
  v44 = (v6 + 8);
  v43 = (v13 + 16);
  v42 = (v4 + 8);
  v59 = v22;

  v24 = 0;
  v50 = v17;
  v61 = v23;
  while (v24 == v23)
  {
    v75 = 0;
    v24 = v23;
    v73 = 0u;
    v74 = 0u;
LABEL_9:
    v71[0] = v73;
    v71[1] = v74;
    v72 = v75;
    if (!*(&v74 + 1))
    {
      swift_bridgeObjectRelease_n();
      return;
    }

    sub_100005A38(v71, &v70);
    sub_10002C0AC(&v70, v68);
    sub_10002849C(&qword_100973D50, &unk_1007B3840);
    type metadata accessor for AppShowcase();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v69 = 0;
    }

    sub_100007000(&v70);
    if (v69)
    {
      v25 = v62;
      [v62 pageMarginInsets];
      [v25 pageMarginInsets];
      AppShowcase.lockup.getter();
      v26 = Lockup.icon.getter();

      if (v26)
      {
        v27 = v49;
        AppShowcase.type.getter();
        v28 = v56;
        (*v48)(v56, v27, v12);
        v29 = (*v65)(v28, v12);
        v63 = v24;
        if (v29 != v64 && v29 != v47 && v29 != v41)
        {
          (*v55)(v56, v12);
        }

        v30 = v52;
        Artwork.style.getter();
        v31 = v53;
        v32 = v54;
        (*v45)(v53, v46, v54);
        v33 = v51;
        Artwork.Style.orIfUnspecified(_:)();
        v34 = *v44;
        (*v44)(v31, v32);
        v34(v30, v32);
        Artwork.Style.iconWidth(fromHeight:)();
        Artwork.config(_:mode:prefersLayeredImage:)();
        ArtworkLoader.prefetchArtwork(using:)();

        v34(v33, v32);
        v17 = v50;
        v24 = v63;
      }

      if (!AppShowcase.video.getter())
      {

        goto LABEL_3;
      }

      Video.preview.getter();

      Artwork.size.getter();
      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      AppShowcase.type.getter();
      v35 = AspectRatio.isLandscape.getter();
      v36 = v57;
      (*v43)(v57, v17, v12);
      v37 = (*v65)(v36, v12);
      if (v37 == v64)
      {
        if (v35)
        {
          goto LABEL_30;
        }

        if (qword_10096D0A0 == -1)
        {
LABEL_29:
          sub_1000056A8(v60, qword_100974548);
          AspectRatio.width(fromHeight:)();
LABEL_30:
          (*v55)(v17, v12);
          goto LABEL_31;
        }

LABEL_32:
        swift_once();
        goto LABEL_29;
      }

      if (v37 == v47 || v37 == v41)
      {
        if (qword_10096D0A0 == -1)
        {
          goto LABEL_29;
        }

        goto LABEL_32;
      }

      v38 = *v55;
      (*v55)(v17, v12);
      v38(v57, v12);
LABEL_31:
      v39 = v66;
      AspectRatio.height(fromWidth:)();
      Artwork.config(_:mode:prefersLayeredImage:)();
      ArtworkLoader.prefetchArtwork(using:)();

      (*v42)(v39, v60);
LABEL_3:
      v23 = v61;
    }
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24 >= *(v59 + 16))
    {
      goto LABEL_35;
    }

    sub_10002C0AC(v58 + 40 * v24++, &v73);
    goto LABEL_9;
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_10055B618(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for ProductDescriptionLayout.Metrics();
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProductDescriptionLayout();
  v67 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PageGrid();
  v65 = *(v9 - 8);
  v66 = v9;
  __chkstk_darwin(v9);
  v64 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_10097C3F8, &qword_1007C4210);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51 - v13;
  type metadata accessor for ProductDescription();
  sub_10055BE48(&unk_10097C380, &type metadata accessor for ProductDescription, &protocol conformance descriptor for ProductDescription);
  ItemLayoutContext.typedModel<A>(as:)();
  v15 = aBlock[0];
  if (aBlock[0])
  {
    v63 = v6;
    sub_100135E58();
    v68 = a1;
    ItemLayoutContext.typedState<A>(as:)();
    StateLens<A>.currentValue.getter();
    v16 = aBlock[0];
    v61 = v11;
    v62 = v8;
    v59 = v5;
    v60 = v12;
    v58 = v14;
    v55 = v15;
    if (LOBYTE(aBlock[0]) == 2)
    {
      ProductDescription.paragraph.getter();
      v16 = Paragraph.isCollapsed.getter();
    }

    v57 = ProductDescription.paragraph.getter();
    if (v16)
    {
      v17 = Paragraph.collapsedText.getter();
      v54 = 3;
    }

    else
    {
      v17 = Paragraph.text.getter();
      v54 = 0;
    }

    v18 = [sub_100079F24() traitCollection];
    swift_unknownObjectRelease();
    v19 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v17];
    v20 = [v17 length];
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = v18;
    *(v21 + 32) = v19;
    *(v21 + 40) = 1;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_10010279C;
    *(v22 + 24) = v21;
    v78 = sub_1001027AC;
    v79 = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    v77 = &unk_1008C85C8;
    v23 = _Block_copy(aBlock);
    v24 = v18;
    v25 = v19;

    v56 = v17;
    [v17 enumerateAttributesInRange:0 options:v20 usingBlock:{0x100000, v23}];

    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v27 = v25;
      v28 = ProductDescription.tags.getter();
      v29 = ProductDescription.numberOfTagRowsStandard.getter();
      v30 = ProductDescription.numberOfTagRowsAX.getter();
      if (ProductDescription.developerAction.getter())
      {
        v31 = Action.title.getter();
        v52 = v32;
        v53 = v31;
      }

      else
      {
        v52 = 0;
        v53 = 0;
      }

      v33 = sub_100079F24();
      swift_getKeyPath();
      v34 = v64;
      ItemLayoutContext.subscript.getter();

      PageGrid.componentMeasuringSize(spanning:)();
      (*(v65 + 8))(v34, v66);
      v35 = swift_allocObject();
      v36 = v54;
      *(v35 + 16) = v27;
      *(v35 + 24) = v36;
      v37 = type metadata accessor for LayoutViewPlaceholder();
      swift_allocObject();
      v38 = v27;
      v39 = LayoutViewPlaceholder.init(measureWith:)();
      v77 = v37;
      v78 = &protocol witness table for LayoutViewPlaceholder;
      aBlock[0] = v39;
      v40 = swift_allocObject();
      v40[2] = v28;
      v40[3] = v29;
      v40[4] = v30;
      v40[5] = v33;
      swift_allocObject();

      swift_unknownObjectRetain();
      v41 = LayoutViewPlaceholder.init(measureWith:)();
      v75[3] = v37;
      v75[4] = &protocol witness table for LayoutViewPlaceholder;
      v75[0] = v41;
      v42 = type metadata accessor for DeveloperLinkView();
      v43 = swift_allocObject();
      v44 = v52;
      v45 = v53;
      v43[2] = v42;
      v43[3] = v45;
      v43[4] = v44;
      swift_allocObject();
      v46 = LayoutViewPlaceholder.init(measureWith:)();
      v74[3] = v37;
      v74[4] = &protocol witness table for LayoutViewPlaceholder;
      v74[0] = v46;
      type metadata accessor for RibbonBarItem();
      LOBYTE(v42) = Array.isNotEmpty.getter();

      if (v42)
      {
        sub_10002C0AC(v75, v72);
      }

      else
      {
        v73 = 0;
        memset(v72, 0, sizeof(v72));
      }

      v47 = v62;
      v48 = v60;
      v49 = v58;
      sub_100129F58(v59);
      sub_10002C0AC(aBlock, &v71);
      sub_10002C0AC(v75, &v70);
      sub_10002C0AC(v74, &v69);
      ProductDescriptionLayout.init(metrics:bodyText:tagRibbon:developerLink:)();
      sub_10055BE48(&qword_10097C400, &type metadata accessor for ProductDescriptionLayout, &protocol conformance descriptor for ProductDescriptionLayout);
      v50 = v63;
      dispatch thunk of Measurable.measurements(fitting:in:)();

      swift_unknownObjectRelease();

      (*(v67 + 8))(v47, v50);
      sub_10005FD2C(v72);
      (*(v48 + 8))(v49, v61);
      sub_100007000(v74);
      sub_100007000(v75);
      sub_100007000(aBlock);
    }
  }
}

uint64_t sub_10055BE48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CrossLinkLockupLayout.Metrics.init(artworkSize:artworkMargin:subtitleSpace:numberOfLines:offerButtonSize:offerButtonMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  sub_100005A38(a1, a5 + 16);
  sub_100005A38(a2, a5 + 56);
  *(a5 + 96) = a3;
  *(a5 + 104) = a8;
  *(a5 + 112) = a9;

  return sub_100005A38(a4, a5 + 120);
}

uint64_t CrossLinkLockupLayout.init(metrics:artworkView:lockupView:crossLinkTitleText:crossLinkSubtitleText:)@<X0>(double *a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  sub_100141008(a1, (a6 + 20));
  sub_10002A400(a2, a2[3]);
  LayoutView.withMeasurements(representing:)();
  sub_100141064(a1);
  sub_100005A38(a3, (a6 + 5));
  sub_100005A38(a4, (a6 + 10));
  sub_100005A38(a5, (a6 + 15));

  return sub_100007000(a2);
}

uint64_t CrossLinkLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, uint64_t a6@<X8>)
{
  v11 = [a1 traitCollection];
  v12 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v12)
  {

    return sub_10055C118(a6, a2, a3, a4, a5);
  }

  else
  {

    return sub_10055C65C(a6, a2, a3, a4, a5);
  }
}

__n128 CrossLinkLockupLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v2;
  v3 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v3;
  v4 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v4;
  v5 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v7;
  return result;
}

uint64_t sub_10055C118@<X0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v29 = a2;
  v28 = type metadata accessor for LayoutRect();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AppStore.CenteredThreeLineTextLayout();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FloatingPointRoundingRule();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  MinY = CGRectGetMinY(v33);
  sub_10002A400(v6, *(v6 + 3));
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    v34.origin.x = a3;
    v34.origin.y = a4;
    v34.size.width = a5;
    v34.size.height = a6;
    MinX = CGRectGetMinX(v34);
    v21 = v6[20];
    v22 = v6[21];
    sub_10002A400(v6, *(v6 + 3));
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v35.origin.x = MinX;
    v35.origin.y = MinY;
    v35.size.width = v21;
    v35.size.height = v22;
    CGRectGetMaxY(v35);
    sub_10002A400(v6 + 22, *(v6 + 25));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v16 + 8))(v18, v15);
  }

  v36.origin.x = a3;
  v36.origin.y = a4;
  v36.size.width = a5;
  v36.size.height = a6;
  CGRectGetMinX(v36);
  v37.origin.x = a3;
  v37.origin.y = a4;
  v37.size.width = a5;
  v37.size.height = a6;
  CGRectGetWidth(v37);
  v38.origin.x = a3;
  v38.origin.y = a4;
  v38.size.width = a5;
  v38.size.height = a6;
  CGRectGetMaxY(v38);
  sub_10002A400(v6 + 5, *(v6 + 8));
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v39.origin.x = a3;
  v39.origin.y = a4;
  v39.size.width = a5;
  v39.size.height = a6;
  CGRectGetMaxY(v39);
  sub_10002A400(v6 + 35, *(v6 + 38));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v16 + 8))(v18, v15);
  v40.origin.x = a3;
  v40.origin.y = a4;
  v40.size.width = a5;
  v40.size.height = a6;
  CGRectGetMinX(v40);
  v41.origin.x = a3;
  v41.origin.y = a4;
  v41.size.width = a5;
  v41.size.height = a6;
  CGRectGetWidth(v41);
  CGRect.withLayoutDirection(in:relativeTo:)();
  sub_10002C0AC((v6 + 10), v32);
  sub_10002C0AC((v6 + 15), v31);
  sub_10002C0AC((v6 + 27), v30);
  AppStore.CenteredThreeLineTextLayout.init(primaryText:secondaryText:secondarySpace:numberOfLines:)();
  AppStore.CenteredThreeLineTextLayout.placeChildren(relativeTo:in:)();
  (*(v27 + 8))(v12, v28);
  LayoutRect.init(representing:)();
  return (*(v25 + 8))(v14, v26);
}

uint64_t sub_10055C65C@<X0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v30 = a2;
  v29 = type metadata accessor for LayoutRect();
  v28 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AppStore.CenteredThreeLineTextLayout();
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FloatingPointRoundingRule();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.origin.x = a3;
  v34.origin.y = a4;
  v34.size.width = a5;
  v34.size.height = a6;
  CGRectGetMinX(v34);
  sub_10002A400(v6, *(v6 + 24));
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    v35.origin.x = a3;
    v35.origin.y = a4;
    v35.size.width = a5;
    v35.size.height = a6;
    MinX = CGRectGetMinX(v35);
    v36.origin.x = a3;
    v36.origin.y = a4;
    v36.size.width = a5;
    v36.size.height = a6;
    MidY = CGRectGetMidY(v36);
    v22 = *(v6 + 160);
    v21 = *(v6 + 168);
    v23 = floor(MidY + v21 * -0.5);
    sub_10002A400(v6, *(v6 + 24));
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v37.origin.x = MinX;
    v37.origin.y = v23;
    v37.size.width = v22;
    v37.size.height = v21;
    CGRectGetMaxX(v37);
    sub_10002A400((v6 + 176), *(v6 + 200));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v16 + 8))(v18, v15);
  }

  v38.origin.x = a3;
  v38.origin.y = a4;
  v38.size.width = a5;
  v38.size.height = a6;
  CGRectGetMaxX(v38);
  v39.origin.x = a3;
  v39.origin.y = a4;
  v39.size.width = a5;
  v39.size.height = a6;
  CGRectGetMinY(v39);
  v40.origin.x = a3;
  v40.origin.y = a4;
  v40.size.width = a5;
  v40.size.height = a6;
  CGRectGetHeight(v40);
  sub_10002A400((v6 + 40), *(v6 + 64));
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v6 + 280), *(v6 + 304));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v16 + 8))(v18, v15);
  v41.origin.x = a3;
  v41.origin.y = a4;
  v41.size.width = a5;
  v41.size.height = a6;
  CGRectGetMinY(v41);
  v42.origin.x = a3;
  v42.origin.y = a4;
  v42.size.width = a5;
  v42.size.height = a6;
  CGRectGetHeight(v42);
  CGRect.withLayoutDirection(in:relativeTo:)();
  sub_10002C0AC(v6 + 80, v33);
  sub_10002C0AC(v6 + 120, v32);
  sub_10002C0AC(v6 + 216, v31);
  AppStore.CenteredThreeLineTextLayout.init(primaryText:secondaryText:secondarySpace:numberOfLines:)();
  AppStore.CenteredThreeLineTextLayout.placeChildren(relativeTo:in:)();
  (*(v28 + 8))(v12, v29);
  LayoutRect.init(representing:)();
  return (*(v26 + 8))(v14, v27);
}

uint64_t sub_10055CBAC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_10055CE24();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return EstimatedMeasurable<>.measurements(fitting:in:)(a1, a2, v10, a3, v11, v12);
}

unint64_t sub_10055CC1C()
{
  result = qword_10098BB98;
  if (!qword_10098BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098BB98);
  }

  return result;
}

uint64_t sub_10055CC78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
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

uint64_t sub_10055CCC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10055CD64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10055CDAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
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
      *(result + 160) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10055CE24()
{
  result = qword_10098BBA0;
  if (!qword_10098BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098BBA0);
  }

  return result;
}

uint64_t sub_10055CED8(double a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v6 = type metadata accessor for FontSource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for StaticDimension();
  sub_100005644(v10, a3);
  sub_1000056A8(v10, a3);
  v11 = *a4;
  *v9 = v11;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v6);
  v16[3] = v6;
  v16[4] = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v16);
  (*(v7 + 16))(v12, v9, v6);
  v13 = v11;
  StaticDimension.init(_:scaledLike:)();
  return (*(v7 + 8))(v9, v6);
}

char *sub_10055D048(double a1, double a2, double a3, double a4)
{
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v67 - v10);
  v12 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v21 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_badgeLabel;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v21] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v23 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_titleLabel;
  *&v4[v23] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_callToActionLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_tapGestureRecognizer;
  *&v4[v25] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v26 = &v4[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_selectionHandler];
  v27 = type metadata accessor for CarouselItemTextOverlay(0);
  *v26 = 0;
  *(v26 + 1) = 0;
  v71.receiver = v4;
  v71.super_class = v27;
  v28 = objc_msgSendSuper2(&v71, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v32 = v28;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v32 setOverrideUserInterfaceStyle:2];
  [v32 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v33 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_badgeLabel;
  v34 = qword_10096E3D0;
  v35 = *&v32[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_badgeLabel];
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for FontUseCase();
  v37 = sub_1000056A8(v36, qword_1009D1AF0);
  v38 = *(v36 - 8);
  v39 = *(v38 + 16);
  v39(v11, v37, v36);
  v69 = *(v38 + 56);
  v69(v11, 0, 1, v36);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*&v32[v33] setNumberOfLines:1];
  v40 = *&v32[v33];
  v41 = objc_opt_self();
  v42 = v40;
  v68 = v41;
  v43 = [v41 secondaryLabelColor];
  v44 = v33;
  v45 = v43;
  [v42 setTextColor:v43];

  v70 = v44;
  v46 = [*&v32[v44] layer];
  [v46 setCompositingFilter:kCAFilterPlusL];

  v47 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_titleLabel;
  v48 = qword_10096E3E0;
  v49 = *&v32[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_titleLabel];
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = sub_1000056A8(v36, qword_1009D1B20);
  v39(v11, v50, v36);
  v51 = v69;
  v69(v11, 0, 1, v36);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*&v32[v47] setNumberOfLines:2];
  v52 = *&v32[v47];
  v67 = v47;
  v53 = v68;
  v54 = [v68 labelColor];
  [v52 setTextColor:v54];

  v55 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_callToActionLabel;
  v56 = *&v32[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_callToActionLabel];
  *v11 = UIFontTextStyleFootnote;
  v11[1] = UIFontWeightBold;
  (*(v38 + 104))(v11, enum case for FontUseCase.preferredFontDerivative(_:), v36);
  v51(v11, 0, 1, v36);
  v57 = v56;
  v58 = UIFontTextStyleFootnote;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*&v32[v55] setNumberOfLines:1];
  v59 = *&v32[v55];
  v60 = [v53 labelColor];
  [v59 setTextColor:v60];

  v61 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_tapGestureRecognizer;
  [*&v32[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_tapGestureRecognizer] setEnabled:0];
  v62 = *&v32[v61];
  v63 = v32;
  [v62 addTarget:v63 action:"handleSelection:"];
  v64 = *&v32[v61];
  [v64 setDelegate:v63];

  [v63 addGestureRecognizer:*&v32[v61]];
  [v63 addSubview:*&v32[v70]];
  [v63 addSubview:*&v32[v67]];
  [v63 addSubview:*&v32[v55]];
  sub_10055E5BC(v65);

  return v63;
}

uint64_t sub_10055D990@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  ObjectType = swift_getObjectType();
  v58 = type metadata accessor for VerticalStack();
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v4 = &v52[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v54 = &v52[-v6];
  __chkstk_darwin(v7);
  v55 = &v52[-v8];
  __chkstk_darwin(v9);
  v56 = &v52[-v10];
  v11 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v52[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v52[-v16];
  v18 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v52[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v19 + 16))(v21, &v2[v22], v18);
  HeroCarouselItemOverlay.DisplayOptions.textAlignment.getter();
  (*(v19 + 8))(v21, v18);
  v23.n128_f64[0] = (*(v12 + 104))(v14, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v11);
  sub_10055F0E4(v23);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v61 == v64)
  {
    v53 = 1;
  }

  else
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v24 = *(v12 + 8);
  v24(v14, v11);
  v24(v17, v11);

  VerticalStack.init(with:)();
  v25 = *&v2[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_badgeLabel];
  v26 = type metadata accessor for DynamicTypeLabel();
  v62 = v26;
  v63 = &protocol witness table for UILabel;
  *&v61 = v25;
  v27 = swift_allocObject();
  v28 = v4;
  v29 = ObjectType;
  *(v27 + 16) = v2;
  *(v27 + 24) = v29;
  v30 = v25;
  v31 = v2;
  v32 = v54;
  VerticalStack.adding(_:with:)();

  v33 = *(v60 + 8);
  v34 = v58;
  v33(v28, v58);
  sub_100007000(&v61);
  v35 = *&v31[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_titleLabel];
  v62 = v26;
  v63 = &protocol witness table for UILabel;
  *&v61 = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  *(v36 + 24) = v29;
  v37 = v31;
  v38 = v35;
  v39 = v55;
  VerticalStack.adding(_:with:)();

  v33(v32, v34);
  sub_100007000(&v61);
  v40 = *&v37[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_callToActionLabel];
  v62 = v26;
  v63 = &protocol witness table for UILabel;
  *&v61 = v40;
  v41 = swift_allocObject();
  v42 = ObjectType;
  *(v41 + 16) = v37;
  *(v41 + 24) = v42;
  v43 = v37;
  v44 = v40;
  v45 = v56;
  VerticalStack.adding(_:with:)();

  v33(v39, v34);
  sub_100007000(&v61);
  if (v53)
  {
    v62 = v34;
    v63 = &protocol witness table for VerticalStack;
    v46 = sub_1000056E0(&v61);
    (*(v60 + 16))(v46, v45, v34);
    static Center.Axis.horizontal.getter();
    v47 = type metadata accessor for Center();
    v48 = v57;
    v57[3] = v47;
    v48[4] = &protocol witness table for Center;
    sub_1000056E0(v48);
    Center.init(_:filling:)();
    return (v33)(v45, v34);
  }

  else
  {
    v50 = v57;
    v57[3] = v34;
    v50[4] = &protocol witness table for VerticalStack;
    v51 = sub_1000056E0(v50);
    return (*(v60 + 32))(v51, v45, v34);
  }
}

uint64_t sub_10055DFA4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v24 = a6;
  v9 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v14 + 16))(v16, a3 + v17, v13);
  HeroCarouselItemOverlay.DisplayOptions.textAlignment.getter();
  (*(v14 + 8))(v16, v13);
  HeroCarouselItemOverlay.DisplayOptions.TextAlignment.verticalStackAlignment.getter();
  (*(v10 + 8))(v12, v9);
  VerticalStack.Properties.alignment.setter();
  v18 = static VerticalStack.Edge.top.getter();
  VerticalStack.Edge.init(rawValue:)();
  VerticalStack.Edge.init(rawValue:)();
  if (VerticalStack.Edge.init(rawValue:)() != v18)
  {
    VerticalStack.Edge.init(rawValue:)();
  }

  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  if (*a5 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for StaticDimension();
  v20 = sub_1000056A8(v19, v24);
  v25[3] = v19;
  v25[4] = &protocol witness table for StaticDimension;
  v21 = sub_1000056E0(v25);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_10055E23C(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v9 + 16))(v11, a3 + v12, v8);
  HeroCarouselItemOverlay.DisplayOptions.textAlignment.getter();
  (*(v9 + 8))(v11, v8);
  HeroCarouselItemOverlay.DisplayOptions.TextAlignment.verticalStackAlignment.getter();
  (*(v5 + 8))(v7, v4);
  VerticalStack.Properties.alignment.setter();
  sub_10002849C(&qword_10097B040, qword_1007D4350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  v14 = static VerticalStack.Edge.top.getter();
  *(inited + 32) = v14;
  v15 = static VerticalStack.Edge.bottom.getter();
  *(inited + 40) = v15;
  VerticalStack.Edge.init(rawValue:)();
  VerticalStack.Edge.init(rawValue:)();
  if (VerticalStack.Edge.init(rawValue:)() != v14)
  {
    VerticalStack.Edge.init(rawValue:)();
  }

  VerticalStack.Edge.init(rawValue:)();
  if (VerticalStack.Edge.init(rawValue:)() != v15)
  {
    VerticalStack.Edge.init(rawValue:)();
  }

  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  if (qword_10096E948 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for StaticDimension();
  v17 = sub_1000056A8(v16, qword_10098BBE0);
  v24 = v16;
  v25 = &protocol witness table for StaticDimension;
  v18 = sub_1000056E0(v23);
  v19 = *(*(v16 - 8) + 16);
  v19(v18, v17, v16);
  VerticalStack.Properties.topSpacing.setter();
  if (qword_10096E950 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v16, qword_10098BBF8);
  v24 = v16;
  v25 = &protocol witness table for StaticDimension;
  v21 = sub_1000056E0(v23);
  v19(v21, v20, v16);
  return VerticalStack.Properties.bottomSpacing.setter();
}

id sub_10055E5BC(__n128 a1)
{
  v2 = v1;
  v48 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  v56 = *(v48 - 8);
  __chkstk_darwin(v48);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = &v46 - v5;
  __chkstk_darwin(v6);
  v46 = &v46 - v7;
  v8 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v50 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &v46 - v15;
  __chkstk_darwin(v16);
  v53 = &v46 - v17;
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  v21 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  v22 = *(v12 + 16);
  (v22)(v20, &v1[v21], v11);
  HeroCarouselItemOverlay.DisplayOptions.textAlignment.getter();
  v23 = *(v12 + 8);
  v23(v20, v11);
  v24 = [v1 traitCollection];
  v25 = HeroCarouselItemOverlay.DisplayOptions.TextAlignment.textAlignment(with:)();

  v54[1](v10, v55);
  v26 = *&v2[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_badgeLabel];
  v52 = v25;
  [v26 setTextAlignment:v25];
  v54 = v22;
  v55 = v21;
  v27 = &v2[v21];
  v28 = v2;
  v29 = v53;
  (v22)(v53, v27, v11);
  v30 = v46;
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v31 = v29;
  v32 = v11;
  v53 = (v12 + 8);
  v23(v31, v11);
  v33 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.badgeColor.getter();
  v34 = *(v56 + 8);
  v35 = v48;
  v56 += 8;
  v34(v30, v48);
  if (!v33)
  {
    v33 = [objc_opt_self() secondaryLabelColor];
  }

  [v26 setTextColor:v33];

  v36 = *&v28[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_titleLabel];
  [v36 setTextAlignment:v52];
  v37 = v47;
  v38 = v32;
  (v54)(v47, &v28[v55], v32);
  v39 = v49;
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v23(v37, v38);
  v40 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.titleColor.getter();
  v34(v39, v35);
  if (!v40)
  {
    v40 = [objc_opt_self() labelColor];
  }

  [v36 setTextColor:v40];

  v41 = *&v28[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_callToActionLabel];
  [v41 setTextAlignment:v52];
  v42 = v50;
  (v54)(v50, &v28[v55], v38);
  v43 = v51;
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v23(v42, v38);
  v44 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.callToActionColor.getter();
  v34(v43, v35);
  if (!v44)
  {
    v44 = [objc_opt_self() labelColor];
  }

  [v41 setTextColor:v44];

  return [v28 setNeedsLayout];
}

id sub_10055EC10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemTextOverlay(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarouselItemTextOverlay(uint64_t a1)
{
  result = qword_10098BC60;
  if (!qword_10098BC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10055ED5C(uint64_t a1)
{
  result = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
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

uint64_t sub_10055EE08(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_10000827C(a1, a2);
  sub_10000827C(a1, a2);
  sub_10001F63C(v6, v7);
  v8 = *(v2 + OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_10001F63C(a1, a2);
  }

  [v8 setEnabled:a1 != 0];

  return sub_10001F63C(a1, a2);
}

id sub_10055EEBC()
{
  v1 = v0;
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  HeroCarouselItemOverlay.displayOptions.getter();
  v6 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v3 + 24))(&v1[v6], v5, v2);
  swift_endAccess();
  sub_10055E5BC(v7);
  (*(v3 + 8))(v5, v2);
  v8 = *&v1[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_badgeLabel];
  HeroCarouselItemOverlay.badgeText.getter();
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v8 setText:v10];

  v11 = *&v1[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_titleLabel];
  HeroCarouselItemOverlay.titleText.getter();
  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v11 setText:v13];

  v14 = *&v1[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_callToActionLabel];
  v15 = HeroCarouselItemOverlay.callToActionText.getter();
  v17 = sub_100255060(v15, v16, [v1 effectiveUserInterfaceLayoutDirection]);

  [v14 setAttributedText:v17];

  return [v1 setNeedsLayout];
}

unint64_t sub_10055F0E4(__n128 a1)
{
  result = qword_10097B030;
  if (!qword_10097B030)
  {
    type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B030);
  }

  return result;
}

void sub_10055F1BC(__n128 a1)
{
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v8 = __chkstk_darwin(v7);
  (*(v10 + 104))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v8);
  (*(v4 + 104))(v6, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v3);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v11 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_badgeLabel;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v11) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_titleLabel;
  *(v1 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_callToActionLabel;
  *(v1 + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_tapGestureRecognizer;
  *(v1 + v15) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v16 = (v1 + OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_selectionHandler);
  *v16 = 0;
  v16[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall UIImageView.show(image:isAnimationPermitted:)(UIImage_optional image, Swift::Bool isAnimationPermitted)
{
  v3 = v2;
  isa = image.value.super.isa;
  if (!image.is_nil)
  {
    goto LABEL_4;
  }

  v5 = [v3 image];
  if (v5)
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v6 = 1;
LABEL_5:
  v7 = [v3 layer];
  [v7 removeAllAnimations];

  if (isa)
  {
    if (v6)
    {
      v8 = isa;
      [v3 setAlpha:0.0];
      [v3 setImage:v8];
      sub_100005744(0, &qword_100970F30, UIViewPropertyAnimator_ptr);
      v9 = static UIViewPropertyAnimator.fadeInPropertyAnimator.getter();
      v10 = swift_allocObject();
      *(v10 + 16) = v3;
      v15[4] = sub_10006038C;
      v15[5] = v10;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_100007A08;
      v15[3] = &unk_1008C8860;
      v11 = _Block_copy(v15);
      v12 = v3;

      [v9 addAnimations:v11];
      _Block_release(v11);
      [v9 startAnimation];

      return;
    }

    v13 = v3;
    v14 = isa;
  }

  else
  {
    v13 = v3;
    v14 = 0;
  }

  [v13 setImage:v14];
}

unint64_t sub_10055F664()
{
  result = qword_10098BC70;
  if (!qword_10098BC70)
  {
    sub_100005744(255, &qword_100973120, UIImageView_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098BC70);
  }

  return result;
}

id sub_10055F6CC()
{
  v1 = [v0 image];

  return v1;
}

void sub_10055F704(void *a1)
{
  [v1 setImage:a1];
}

void (*sub_10055F74C(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 image];
  return sub_10055F7A8;
}

void sub_10055F7A8(id *a1)
{
  v1 = *a1;
  [a1[1] setImage:?];
}

uint64_t sub_10055F7F4(uint64_t a1)
{
  v54 = a1;
  v59 = sub_10002849C(&qword_100979358, qword_1007BFB58);
  v64 = *(v59 - 8);
  __chkstk_darwin(v59);
  v53 = v46 - v1;
  v2 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v2 - 8);
  v65 = v46 - v3;
  v66 = type metadata accessor for PageGrid.HorizontalMargins();
  v4 = *(v66 - 8);
  __chkstk_darwin(v66);
  v6 = (v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v7 - 8);
  v67 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v46 - v10;
  __chkstk_darwin(v12);
  v14 = v46 - v13;
  __chkstk_darwin(v15);
  v17 = v46 - v16;
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v18 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v58 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v50 = v20;
  *(v20 + 16) = xmmword_1007B23A0;
  v62 = v20 + v19;
  v73 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4020000000000000;
  v71 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v57 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v26 = *(v4 + 104);
  v61 = v4 + 104;
  v63 = v26;
  v26(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v73) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v60 = v14;
  v46[0] = v11;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v73 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4024000000000000;
  v71 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v56 = v6;
  v29 = v57;
  v30 = v66;
  v63(v6, v57, v66);
  LOBYTE(v73) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v31 = v58;
  v55 = v17;
  top = UIEdgeInsetsZero.top;
  v48 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v52 = 2 * v31;
  v73 = 0x3FF8000000000000;
  v71 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v73 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v47 = vdupq_n_s64(0x4041000000000000uLL);
  v32 = v56;
  *v56 = v47;
  v33 = v63;
  v63(v32, v29, v30);
  LOBYTE(v73) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v34 = v52;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v46[1] = v34 + v31;
  v75 = 0x4000000000000000;
  v73 = 0;
  v74 = 1;
  v71 = 0x3FF0000000000000;
  v72 = 0;
  v52 = sub_1001E8728();
  v35 = v53;
  AccessibilityConditional.init(value:ax1To3Value:ax4To5Value:)();
  v36 = v59;
  AccessibilityConditional.value(for:)();
  v37 = *(v64 + 8);
  v64 += 8;
  v51 = v37;
  v37(v35, v36);
  v71 = v73;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v38 = v56;
  *v56 = v47;
  v39 = v57;
  v33(v38, v57, v66);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v73) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v75 = 0x4000000000000000;
  v40 = 4 * v58;
  v73 = 0;
  v74 = 1;
  v71 = 0x3FF0000000000000;
  v72 = 0;
  v41 = v53;
  AccessibilityConditional.init(value:ax1To3Value:ax4To5Value:)();
  v42 = v59;
  AccessibilityConditional.value(for:)();
  v51(v41, v42);
  v71 = v73;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v47 = vdupq_n_s64(0x404A000000000000uLL);
  v43 = v56;
  *v56 = v47;
  v63(v43, v39, v66);
  LOBYTE(v73) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v73 = 0x4008000000000000;
  v58 += v40;
  v75 = 0x4000000000000000;
  v70 = 0x4000000000000000;
  v71 = 0x4008000000000000;
  v68 = 0x4000000000000000;
  v69 = 0x4000000000000000;
  AccessibilityConditional.init(value:ax1Value:ax2Value:ax3Value:ax4Value:ax5Value:)();
  v44 = v59;
  AccessibilityConditional.value(for:)();
  v51(v41, v44);
  v71 = v73;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v43 = v47;
  v63(v43, v57, v66);
  LOBYTE(v73) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v50;
}

void sub_10056053C()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Artwork();
  sub_1005606C0(&qword_100975050, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v4[1])
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (*(v1 + 8))(v3, v0);
    Artwork.size.getter();
    Artwork.size.getter();
  }
}

uint64_t sub_1005606C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100560790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TransitionViewContainer(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v13.receiver = v4;
  v13.super_class = v5;
  objc_msgSendSuper2(&v13, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong superview];

    if (v8)
    {
      sub_100028004();
      v9 = v4;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          v12 = v11;
          [v9 bounds];
          [v12 setFrame:?];
        }
      }
    }
  }
}

void sub_1005608A8(void *a1)
{
  v4 = a1;
  sub_100560790(v4, v1, v2, v3);
}

id sub_100560918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TransitionViewContainer(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_10056099C()
{
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_100560A3C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_style;
  v11 = type metadata accessor for Artwork.Style();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_image] = 0;
  v12 = [objc_allocWithZone(CALayer) init];
  *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_imageLayer] = v12;
  v13 = [objc_allocWithZone(CAGradientLayer) init];
  *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_gradientLayer] = v13;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  [v14 setClipsToBounds:1];
  v15 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_imageLayer;
  [*&v14[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_imageLayer] setMasksToBounds:1];
  LODWORD(v16) = 1053609165;
  [*&v14[v15] setOpacity:v16];
  v17 = *&v14[v15];
  CATransform3DMakeRotation(&v32, -0.523598776, 0.0, 0.0, 1.0);
  [v17 setTransform:&v32];

  v18 = [v14 layer];
  [v18 addSublayer:*&v14[v15]];

  v19 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_gradientLayer;
  v20 = *&v14[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_gradientLayer];
  sub_10002849C(&qword_1009701B0, qword_1007B1800);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007B1890;
  sub_100028BB8();
  v22 = v20;
  isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.0, 0.0, 0.0).super.isa;
  v24 = [(objc_class *)isa CGColor];

  type metadata accessor for CGColor(0);
  v26 = v25;
  *(v21 + 56) = v25;
  *(v21 + 32) = v24;
  v27 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.47451, 0.47451, 0.47451, 0.5).super.isa;
  v28 = [(objc_class *)v27 CGColor];

  *(v21 + 88) = v26;
  *(v21 + 64) = v28;
  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v22 setColors:v29];

  [*&v14[v19] setStartPoint:{0.5, 0.0}];
  [*&v14[v19] setEndPoint:{0.5, 1.0}];
  v30 = [v14 layer];

  [v30 addSublayer:*&v14[v19]];
  return v14;
}

id sub_100560E80()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
  v2 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_image];
  if (v2 && (v3 = [v2 CGImage]) != 0)
  {
    v6 = v3;
    type metadata accessor for CGImage(0);
    v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
    v4 = 0;
  }

  [v1 setContents:v4];
  swift_unknownObjectRelease();
  return [v0 setNeedsLayout];
}

id sub_100560F38()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_10002849C(&unk_100987160, qword_1007D53C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for Artwork.Style();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.receiver = v0;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, "layoutSubviews", v14);
  [v0 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [*&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_gradientLayer] setFrame:?];
  if (!*&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_image])
  {
    return [*&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_imageLayer] setFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v25 = objc_opt_self();
  [v25 begin];
  v32 = v25;
  [v25 setDisableActions:1];
  v26 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_style;
  swift_beginAccess();
  sub_1005615EC(&v0[v26], v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10056165C(v11);
    v27 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
    [v27 setContinuousCorners:0];
    [v27 setCornerRadius:0.0];
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v27 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
    Artwork.Style.cornerStyle.getter();
    (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
    v29 = static CornerStyle.== infix(_:_:)();
    v30 = *(v3 + 8);
    v30(v5, v2);
    v30(v8, v2);
    [v27 setContinuousCorners:v29 & 1];
    Artwork.Style.iconCornerRadius(for:isPlaceholder:)();
    [v27 setCornerRadius:?];
    (*(v13 + 8))(v16, v12);
  }

  [v27 setBounds:{0.0, 0.0, 230.0, 230.0}];
  v34.origin.x = v18;
  v34.origin.y = v20;
  v34.size.width = v22;
  v34.size.height = v24;
  v31 = CGRectGetMaxX(v34) + -115.0 + 79.0;
  v35.origin.x = v18;
  v35.origin.y = v20;
  v35.size.width = v22;
  v35.size.height = v24;
  [v27 setPosition:{v31, CGRectGetMinY(v35) + 115.0 + 13.0}];
  return [v32 commit];
}

uint64_t type metadata accessor for BrandedAppTodayCardNoArtBackgroundView(uint64_t a1)
{
  result = qword_10098BD38;
  if (!qword_10098BD38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005614EC(uint64_t a1)
{
  sub_100561594(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100561594(uint64_t a1)
{
  if (!qword_10098BD48)
  {
    type metadata accessor for Artwork.Style();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10098BD48);
    }
  }
}

uint64_t sub_1005615EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100987160, qword_1007D53C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10056165C(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100987160, qword_1007D53C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1005616C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for InfiniteScrollFooterView();
  if (static UICollectionReusableView.elementKind.getter() == a1 && v6 == a2)
  {

    goto LABEL_11;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
LABEL_11:

    static UICollectionReusableView.defaultReuseIdentifier.getter();
    *(a3 + 24) = sub_10002849C(&qword_10097BA80, &qword_1007C38F8);
    *(a3 + 32) = sub_100097060(&unk_10097F590, &qword_10097BA80, &qword_1007C38F8, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    sub_1000056E0(a3);
    goto LABEL_12;
  }

  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001007FB9B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(a3 + 24) = sub_10002849C(&qword_10097F570, &qword_1007C6980);
    *(a3 + 32) = sub_100097060(&qword_10097F578, &qword_10097F570, &qword_1007C6980, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    sub_1000056E0(a3);
    sub_100005744(0, &qword_10097F580, UICollectionReusableView_ptr);
    swift_bridgeObjectRetain_n();
LABEL_12:
    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
    return result;
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_100561A14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for ShelfBackground();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v31 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - v13;
  v15 = type metadata accessor for ShelfLayoutContext();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v16 + 56))(v14, 1, 1, v15);
    return sub_10002B894(v14, &qword_10097F480, &unk_1007C4AB0);
  }

  v20 = Strong;
  v29 = v6;
  v30 = v8;
  v28 = a1;
  sub_10002849C(&qword_10097AB10, &qword_1007D5480);
  sub_100097060(&qword_10097AB18, &qword_10097AB10, &qword_1007D5480, &unk_1007C67E0);
  ShelfBasedCollectionViewController.shelfLayoutContext(for:)();

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10002B894(v14, &qword_10097F480, &unk_1007C4AB0);
  }

  (*(v16 + 32))(v18, v14, v15);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v21 = v30;
  ReadOnlyLens.subscript.getter();

  (*(v31 + 8))(v11, v9);
  v22 = v32;
  v23 = v29;
  if ((*(v32 + 88))(v21, v29) == enum case for ShelfBackground.color(_:))
  {
    (*(v22 + 96))(v21, v23);
    v24 = *v21;
    v25 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
    v26 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v26 - 8) + 8))(v21 + v25, v26);
    [v28 setBackgroundColor:v24];

    return (*(v16 + 8))(v18, v15);
  }

  else
  {
    (*(v16 + 8))(v18, v15);
    return (*(v22 + 8))(v21, v23);
  }
}

void sub_100561E88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for ShelfBackground();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v42 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for ShelfLayoutContext();
  v43 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100975028, &unk_1007C69C0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v37 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v37 = a1;
    v23 = qword_10097F2F8;
    swift_beginAccess();
    v24 = *&v22[v23];
    if (!v24)
    {

      return;
    }

    v25 = v24;

    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
    v26 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
    (*(v18 + 8))(v20, v17);
    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      if (__OFSUB__(v26, 1))
      {
        __break(1u);
        return;
      }

      v28 = v27;
      sub_10002849C(&qword_10097AB10, &qword_1007D5480);
      sub_100097060(&qword_10097AB18, &qword_10097AB10, &qword_1007D5480, &unk_1007C67E0);
      ShelfBasedCollectionViewController.shelfLayoutContext(for:)();

      v29 = v43;
      if ((*(v43 + 48))(v13, 1, v14) != 1)
      {
        (*(v29 + 32))(v16, v13, v14);
        ShelfLayoutContext.shelf.getter();
        swift_getKeyPath();
        v30 = v42;
        v31 = v39;
        ReadOnlyLens.subscript.getter();

        (*(v38 + 8))(v10, v31);
        v33 = v40;
        v32 = v41;
        if ((*(v40 + 88))(v30, v41) == enum case for ShelfBackground.color(_:))
        {
          (*(v33 + 96))(v30, v32);
          v34 = *v30;
          v35 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
          v36 = type metadata accessor for ShelfBackgroundStyle();
          (*(*(v36 - 8) + 8))(v30 + v35, v36);
          [v37 setBackgroundColor:v34];

          (*(v29 + 8))(v16, v14);
        }

        else
        {
          (*(v29 + 8))(v16, v14);
          (*(v33 + 8))(v30, v32);
        }

        return;
      }
    }

    else
    {
      (*(v43 + 56))(v13, 1, 1, v14);
    }

    sub_10002B894(v13, &qword_10097F480, &unk_1007C4AB0);
  }
}

uint64_t sub_1005624D8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  v13 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OSLogger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v80 = v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v79 - v22;
  v24 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v24 - 8);
  v84 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v83 = v79 - v27;
  __chkstk_darwin(v28);
  v82 = v79 - v29;
  *&v31 = __chkstk_darwin(v30).n128_u64[0];
  v33 = v79 - v32;
  v97.receiver = v5;
  v97.super_class = ObjectType;
  v89 = ObjectType;
  objc_msgSendSuper2(&v97, "frame", v31);
  IsEmpty = CGRectIsEmpty(v98);
  v90 = v5;
  v91 = v19;
  v87 = v14;
  v86 = v15;
  v85 = v17;
  if (IsEmpty || (v96.receiver = v5, v96.super_class = v89, objc_msgSendSuper2(&v96, "frame"), v36 == a3) && v35 == a4)
  {
    v37 = v82;
    (*(v19 + 56))(v82, 1, 1, v18);
    goto LABEL_14;
  }

  v38 = [v5 indexPathsForVisibleItems];
  v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v94 = v39;

  sub_100569254(&v94);

  v14 = v94;
  v17 = *(v94 + 16);
  if (!v17)
  {
LABEL_12:

    v37 = v82;
    (*(v91 + 56))(v82, 1, 1, v18);
    v5 = v90;
LABEL_13:
    v14 = v87;
    v15 = v86;
    v33 = v79[1];
    v17 = v85;
LABEL_14:
    v81 = v18;
    sub_1000476A0(v37, v33, &unk_10097DAE0, &qword_1007B5CA0);
    if (qword_10096D118 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v5 = 0;
  v88 = v94 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
  v33 = (v91 + 8);
  v40 = v90;
  while (v5 < *(v14 + 16))
  {
    v15 = v18;
    (*(v91 + 16))(v23, v88 + *(v91 + 72) * v5, v18);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v42 = [v40 cellForItemAtIndexPath:isa];

    if (v42)
    {
      [v40 bounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      [v42 frame];
      v100.origin.x = v51;
      v100.origin.y = v52;
      v100.size.width = v53;
      v100.size.height = v54;
      v99.origin.x = v44;
      v99.origin.y = v46;
      v99.size.width = v48;
      v99.size.height = v50;
      v55 = CGRectContainsRect(v99, v100);

      if (v55)
      {

        v56 = v91;
        v37 = v82;
        v18 = v15;
        (*(v91 + 32))(v82, v23, v15);
        (*(v56 + 56))(v37, 0, 1, v15);
        v5 = v40;
        goto LABEL_13;
      }
    }

    ++v5;
    v18 = v15;
    (*v33)(v23, v15);
    if (v17 == v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_15:
  v57 = sub_1000056A8(v14, qword_1009CE200);
  (*(v15 + 16))(v17, v57, v14);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5360;
  LogMessage.init(stringLiteral:)();
  type metadata accessor for CGSize(0);
  v59 = v58;
  *(&v95 + 1) = v58;
  *&v94 = a3;
  *(&v94 + 1) = a4;
  static LogMessage.safe(_:)();
  sub_10002B894(&v94, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  v93.receiver = v5;
  v93.super_class = v89;
  objc_msgSendSuper2(&v93, "frame");
  *(&v95 + 1) = v59;
  *&v94 = v60;
  *(&v94 + 1) = v61;
  static LogMessage.safe(_:)();
  sub_10002B894(&v94, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v62._countAndFlagsBits = 0x6E696C6C6F726373;
  v62._object = 0xED0000206F742067;
  LogMessage.StringInterpolation.appendLiteral(_:)(v62);
  v63 = v33;
  v64 = v33;
  v65 = v83;
  sub_100031660(v64, v83, &unk_10097DAE0, &qword_1007B5CA0);
  v66 = v91;
  v67 = *(v91 + 48);
  v68 = v81;
  if (v67(v65, 1, v81) == 1)
  {
    sub_10002B894(v65, &unk_10097DAE0, &qword_1007B5CA0);
    v94 = 0u;
    v95 = 0u;
  }

  else
  {
    *(&v95 + 1) = v68;
    v69 = sub_1000056E0(&v94);
    (*(v66 + 32))(v69, v65, v68);
  }

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v94, &unk_1009711D0, &unk_1007B1A10);
  v70._countAndFlagsBits = 46;
  v70._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v70);
  LogMessage.init(stringInterpolation:)();
  v71 = v87;
  v72 = v85;
  Logger.info(_:)();

  (*(v86 + 8))(v72, v71);
  v73 = v90;
  v92.receiver = v90;
  v92.super_class = v89;
  objc_msgSendSuper2(&v92, "setFrame:", a1, a2, a3, a4);
  v74 = v84;
  sub_100031660(v63, v84, &unk_10097DAE0, &qword_1007B5CA0);
  if (v67(v74, 1, v68) == 1)
  {
    sub_10002B894(v63, &unk_10097DAE0, &qword_1007B5CA0);
  }

  else
  {
    v75 = v91;
    v76 = v80;
    (*(v91 + 32))(v80, v74, v68);
    [v73 layoutIfNeeded];
    v77 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v73 scrollToItemAtIndexPath:v77 atScrollPosition:1 animated:0];

    (*(v75 + 8))(v76, v68);
    v74 = v63;
  }

  return sub_10002B894(v74, &unk_10097DAE0, &qword_1007B5CA0);
}

id sub_100562F28()
{
  ObjectType = swift_getObjectType();
  if (qword_10096D118 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OSLogger();
  sub_1000056A8(v2, qword_1009CE200);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v5[0] = ObjectType;
  static LogMessage.safe(_:)();
  sub_10002B894(v5, &unk_1009711D0, &unk_1007B1A10);
  MetatypeMetadata = &type metadata for String;
  strcpy(v5, "reloadData()");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  static LogMessage.safe(_:)();
  sub_10002B894(v5, &unk_1009711D0, &unk_1007B1A10);
  Logger.info(_:)();

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "reloadData");
}

void sub_100563248(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = UIContentSizeCategoryAccessibilityMedium;
  v4 = UIContentSizeCategoryAccessibilityExtraLarge;
  if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v5 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v8 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    static UIContentSizeCategory.<= infix(_:_:)();
  }
}

char *sub_1005633B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  *(v2 + qword_10098BD50) = 0;
  *(v2 + qword_1009D29E0) = 0;
  *(v2 + qword_10098BD58) = 0;
  makeNetworkInquiry()();
  v6 = qword_10098BD68;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = qword_10098BD70;
  v9 = type metadata accessor for TimeZone();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  *(v3 + qword_10098BD80) = 0;
  v10 = v3 + qword_10098BD88;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v3 + qword_10098BD90) = 0;
  type metadata accessor for AdvertRotationControllerProvider();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_10098BD78) = v17;

  v11 = sub_1003BC69C(a1, a2);
  v12 = *&v11[qword_1009CF410];

  CompoundScrollObserver.addChild(_:)();

  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007B1890;
  *(v13 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v13 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v13 + 48) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v13 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  if (sub_1001DFF18())
  {

LABEL_4:
    type metadata accessor for TodayDebugViews();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v15 + 71) = 0;
    *(v15 + 56) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 24) = 0u;
    swift_unknownObjectWeakAssign();
    *&v11[qword_10098BD90] = v15;

    return v11;
  }

  v14 = sub_1001DFF3C();

  if (v14)
  {
    goto LABEL_4;
  }

  return v11;
}

id sub_1005636A8()
{
  v1 = qword_10098BD80;
  v2 = *(v0 + qword_10098BD80);
  if (v2)
  {
    v3 = *(v0 + qword_10098BD80);
  }

  else
  {
    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"didLongPressTitleWithGestureRecognizer:"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10056372C()
{
  v1 = v0;
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, "viewDidLoad");
  v2 = type metadata accessor for Feature.iOS();
  v27[3] = v2;
  v27[4] = sub_10056F08C(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v3 = sub_1000056E0(v27);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v2);
  LOBYTE(v2) = isFeatureEnabled(_:)();
  sub_100007000(v27);
  if ((v2 & 1) == 0)
  {
    v4 = [v1 view];
    if (!v4)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v5 = v4;
    [v4 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v6 = [v1 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

    goto LABEL_16;
  }

  *(v8 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = 0;

  [v1 setClearsSelectionOnViewWillAppear:0];
  v9 = [v1 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 _setEdgesAllowingScrollAccessoriesExtendedToBoundingPath:14];
  }

  v11 = [v1 collectionView];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() sharedApplication];
    v14 = [v13 launchedToTest];

    [v12 setDelaysContentTouches:v14];
  }

  if ((byte_100994178 & 1) == 0)
  {
    v15 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v15 setMinimumLineHeight:13.0];
    [v15 setMaximumLineHeight:13.0];
    sub_10002849C(&unk_100973960, &unk_1007B4930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B1890;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v17 = sub_100005744(0, &unk_100976610, NSMutableParagraphStyle_ptr);
    *(inited + 40) = v15;
    *(inited + 64) = v17;
    *(inited + 72) = NSBaselineOffsetAttributeName;
    v18 = objc_allocWithZone(NSNumber);
    v19 = NSParagraphStyleAttributeName;
    v20 = v15;
    v21 = NSBaselineOffsetAttributeName;
    v22 = [v18 initWithDouble:2.0];
    *(inited + 104) = sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
    *(inited + 80) = v22;
    sub_100397150(inited);
    swift_setDeallocating();
    sub_10002849C(&unk_100970EC0, &unk_1007B2BF0);
    swift_arrayDestroy();
    sub_100005744(0, &qword_1009846D0, NSString_ptr);
    v23 = NSString.init(stringLiteral:)();
    type metadata accessor for Key(0);
    sub_10056F08C(&qword_100976620, type metadata accessor for Key, &unk_1007B0934);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v23 boundingRectWithSize:1 options:isa attributes:0 context:{1.79769313e308, 1.79769313e308}];

    v25 = [objc_allocWithZone(NSTextStorage) init];
    byte_100994178 = 1;
  }

  if (*&v1[qword_10098BD90])
  {

    sub_10023FAD4(v26);
  }
}

void sub_100563BD0(void *a1)
{
  v1 = a1;
  sub_10056372C();
}

uint64_t sub_100563C18(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong layer];
    CATransform3DMakeScale(&v13, 1.0, 1.0, 1.0);
    [v11 setTransform:&v13];

    swift_unknownObjectWeakAssign();
  }

  (*(v5 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v4);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  (*(v5 + 8))(v8, v4);
  return sub_10056586C();
}

void sub_100563DD4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100563C18(a3);
}

uint64_t sub_100563E28()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "as_viewWillBecomeFullyVisible", v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong layer];
    CATransform3DMakeScale(&v11, 1.0, 1.0, 1.0);
    [v9 setTransform:&v11];

    swift_unknownObjectWeakAssign();
  }

  (*(v3 + 104))(v6, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v2);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  return (*(v3 + 8))(v6, v2);
}

void sub_100563FD0(void *a1)
{
  v1 = a1;
  sub_100563E28();
}

id sub_100564040()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&unk_100996820, qword_1007C7450);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for UIView.LayoutRegion();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews", v8);
  if (*&v0[qword_10098BD90])
  {

    sub_100240748();
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
  v14 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
  sub_10002B894(v5, &unk_100996820, qword_1007C7450);
  UIView.directionalEdgeInsets(for:)();
  v17 = v16;

  result = (*(v7 + 8))(v10, v6);
  v18 = &v1[qword_10098BD88];
  v19 = *&v1[qword_10098BD88];
  v20 = v1[qword_10098BD88 + 8];
  *v18 = v17;
  *(v18 + 8) = 0;
  if ((v20 & 1) != 0 || v17 != v19)
  {
    result = [v1 view];
    if (result)
    {
      v21 = result;
      [result bounds];

      sub_10056F08C(&qword_10098C398, type metadata accessor for TodayDiffablePageViewController, &unk_1007C67E0);
      return ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
    }

LABEL_10:
    __break(1u);
  }

  return result;
}

void sub_100564350(void *a1)
{
  v1 = a1;
  sub_100564040();
}

void sub_1005643AC(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  (*(v9 + 8))(v11, v8);
}

void sub_1005644F4(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  (*(v11 + 8))(v13, v10);
}

void sub_100564630(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for Shelf.ContentType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10002849C(&qword_100975F10, &unk_1007CE130);
  __chkstk_darwin(v87);
  v13 = &v66 - v12;
  v75 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v14 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v66 - v15;
  v16 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v16 - 8);
  v96 = &v66 - v17;
  v18 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v18 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v66 - v22;
  __chkstk_darwin(v24);
  v93 = &v66 - v25;
  v26 = type metadata accessor for IndexPath();
  v89 = *(v26 - 8);
  v90 = v26;
  __chkstk_darwin(v26);
  v78 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v95 = &v66 - v29;
  v103.receiver = v4;
  v103.super_class = ObjectType;
  v88 = ObjectType;
  objc_msgSendSuper2(&v103, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v4 isViewLoaded])
  {
    v30 = [v4 collectionView];
    if (!v30)
    {
      goto LABEL_31;
    }

    v31 = v30;
    aBlock = 0x3FF0000000000000;
    v98 = 0;
    v99 = 0;
    v100 = 0x3FF0000000000000;
    v101 = 0;
    v102 = 0;
    [v30 setTransform:&aBlock];

    v32 = [v4 collectionView];
    if (v32)
    {
      v72 = v20;
      v33 = v32;
      v34 = [v32 indexPathsForSelectedItems];

      if (v34)
      {
        v86 = v4;
        v67 = a1;
        v35 = v90;
        v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v85 = *(v36 + 16);
        if (!v85)
        {
          v77 = _swiftEmptyArrayStorage;
LABEL_26:

          if (v77[2])
          {
            v62 = v77;
            v63 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v64 = swift_allocObject();
            *(v64 + 16) = v63;
            *(v64 + 24) = v62;
            v101 = sub_10056F084;
            v102 = v64;
            aBlock = _NSConcreteStackBlock;
            v98 = 1107296256;
            v99 = sub_1006D1458;
            v100 = &unk_1008C8A90;
            v65 = _Block_copy(&aBlock);

            [v67 animateAlongsideTransition:0 completion:v65];
            _Block_release(v65);
          }

          else
          {
          }

          return;
        }

        v37 = 0;
        v83 = v89 + 16;
        v71 = (v14 + 8);
        v82 = (v10 + 56);
        v81 = enum case for Shelf.ContentType.todayCard(_:);
        v80 = (v10 + 104);
        v68 = (v10 + 32);
        v70 = (v10 + 8);
        v73 = (v89 + 8);
        v76 = (v89 + 32);
        v77 = _swiftEmptyArrayStorage;
        v38 = v96;
        v94 = v23;
        v84 = v36;
        v79 = (v10 + 48);
        while (1)
        {
          if (v37 >= *(v36 + 16))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            return;
          }

          v39 = v9;
          v40 = v13;
          v41 = v39;
          v42 = (*(v89 + 80) + 32) & ~*(v89 + 80);
          v91 = *(v89 + 72);
          v92 = v42;
          (*(v89 + 16))(v95, v36 + v42 + v91 * v37, v35);
          sub_10056F08C(&qword_10098C398, type metadata accessor for TodayDiffablePageViewController, &unk_1007C67E0);
          ShelfBasedCollectionViewController.itemLayoutContext(at:)();
          v43 = type metadata accessor for ItemLayoutContext();
          v44 = *(v43 - 8);
          if ((*(v44 + 48))(v38, 1, v43) == 1)
          {
            sub_10002B894(v38, &unk_1009731E0, &unk_1007B0B60);
            v45 = 1;
            v46 = v93;
          }

          else
          {
            swift_getKeyPath();
            v47 = v74;
            ItemLayoutContext.subscript.getter();

            (*(v44 + 8))(v96, v43);
            swift_getKeyPath();
            v46 = v93;
            v48 = v75;
            ReadOnlyLens.subscript.getter();

            (*v71)(v47, v48);
            v45 = 0;
          }

          v49 = *v82;
          v50 = v41;
          (*v82)(v46, v45, 1, v41);
          (*v80)(v23, v81, v41);
          v49(v23, 0, 1, v41);
          v51 = *(v87 + 48);
          v13 = v40;
          sub_100031660(v46, v40, &unk_100992460, &qword_1007B6BF0);
          sub_100031660(v23, v40 + v51, &unk_100992460, &qword_1007B6BF0);
          v52 = *v79;
          if ((*v79)(v40, 1, v50) == 1)
          {
            break;
          }

          v53 = v72;
          sub_100031660(v13, v72, &unk_100992460, &qword_1007B6BF0);
          if (v52(&v13[v51], 1, v50) == 1)
          {
            sub_10002B894(v94, &unk_100992460, &qword_1007B6BF0);
            sub_10002B894(v46, &unk_100992460, &qword_1007B6BF0);
            (*v70)(v53, v50);
            v9 = v50;
LABEL_8:
            sub_10002B894(v13, &qword_100975F10, &unk_1007CE130);
            v35 = v90;
            v38 = v96;
            goto LABEL_9;
          }

          v54 = v69;
          (*v68)(v69, &v13[v51], v50);
          sub_10056F08C(&qword_100972720, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
          v55 = dispatch thunk of static Equatable.== infix(_:_:)();
          v56 = *v70;
          (*v70)(v54, v50);
          sub_10002B894(v94, &unk_100992460, &qword_1007B6BF0);
          sub_10002B894(v93, &unk_100992460, &qword_1007B6BF0);
          v56(v53, v50);
          sub_10002B894(v13, &unk_100992460, &qword_1007B6BF0);
          v35 = v90;
          v38 = v96;
          v9 = v50;
          if (v55)
          {
            goto LABEL_20;
          }

LABEL_9:
          (*v73)(v95, v35);
          v23 = v94;
LABEL_10:
          ++v37;
          v36 = v84;
          if (v85 == v37)
          {
            goto LABEL_26;
          }
        }

        sub_10002B894(v23, &unk_100992460, &qword_1007B6BF0);
        sub_10002B894(v46, &unk_100992460, &qword_1007B6BF0);
        v9 = v50;
        if (v52(&v13[v51], 1, v50) == 1)
        {
          sub_10002B894(v13, &unk_100992460, &qword_1007B6BF0);
          v35 = v90;
          v38 = v96;
LABEL_20:
          v57 = *v76;
          (*v76)(v78, v95, v35);
          v58 = v77;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v58;
          v23 = v94;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100144554(0, v58[2] + 1, 1);
            v58 = aBlock;
          }

          v61 = v58[2];
          v60 = v58[3];
          if (v61 >= v60 >> 1)
          {
            sub_100144554((v60 > 1), v61 + 1, 1);
            v58 = aBlock;
          }

          v58[2] = v61 + 1;
          v77 = v58;
          v57(v58 + v92 + v61 * v91, v78, v35);
          goto LABEL_10;
        }

        goto LABEL_8;
      }
    }
  }
}

void sub_1005651C4(void *a1, uint64_t a2, uint64_t a3)
{
  if (([a1 isCancelled] & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong collectionView];
      if (v6)
      {
        v7 = v6;
        v8 = *(a3 + 16);
        if (v8)
        {
          v9 = *(type metadata accessor for IndexPath() - 8);
          v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
          v11 = *(v9 + 72);
          do
          {
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            [v7 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

            v13 = IndexPath._bridgeToObjectiveC()().super.isa;
            v14 = [v7 cellForItemAtIndexPath:v13];

            if (v14)
            {
              [v14 setHidden:1];
            }

            v10 += v11;
            --v8;
          }

          while (v8);
        }
      }

      else
      {
        v7 = v5;
      }
    }
  }
}

void sub_100565354(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100564630(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_1005653D4(void *a1)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v1 = v8.receiver;
  objc_msgSendSuper2(&v8, "viewSafeAreaInsetsDidChange");
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 safeAreaInsets];
      v7 = v6;

      [v3 verticalScrollIndicatorInsets];
      [v3 setVerticalScrollIndicatorInsets:v7];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1005654B8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = ASKDeviceTypeGetCurrent();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      v17 = UICollectionView;
      goto LABEL_9;
    }
  }

  v17 = type metadata accessor for TodayDiffablePageViewController.ResizableCollectionView();
LABEL_9:
  v18 = objc_allocWithZone(v17);

  return [v18 initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];
}

uint64_t sub_1005655D4()
{
  v1 = v0;
  v2 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v1 + v10, v14, &unk_10097F510, &unk_1007B2700);
  if (v15)
  {
    sub_10002C0AC(v14, v13);
    sub_10002B894(v14, &unk_10097F510, &unk_1007B2700);
    sub_10002A400(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v6);
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v7 + 8))(v9, v6);
    sub_100007000(v13);
  }

  else
  {
    sub_10002B894(v14, &unk_10097F510, &unk_1007B2700);
  }

  dispatch thunk of DiffablePagePresenter.appEnteredWhileAppeared()();
  sub_10056586C();
  (*(v3 + 104))(v5, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.appDidForeground(_:), v2);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10056586C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v1 - 8);
  v71 = v1;
  __chkstk_darwin(v1);
  v68 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v4 - 8);
  v76 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = type metadata accessor for Date();
  v78 = *(v9 - 8);
  __chkstk_darwin(v9);
  v74 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v58 - v12;
  v13 = sub_10002849C(&qword_100979718, &qword_1007C0310);
  __chkstk_darwin(v13 - 8);
  v77 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  v18 = type metadata accessor for TimeZone();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v72 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v24 = qword_10098BD70;
  swift_beginAccess();
  v75 = v24;
  v25 = &v0[v24];
  v26 = v19;
  sub_100031660(v25, v17, &qword_100979718, &qword_1007C0310);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v27 = v0;
    v28 = v78;
    v29 = v9;
    sub_10002B894(v17, &qword_100979718, &qword_1007C0310);
LABEL_5:
    if (qword_10096D118 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for OSLogger();
    sub_1000056A8(v34, qword_1009CE200);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    v35 = v76;
    Date.init()();
    (*(v28 + 56))(v35, 0, 1, v29);
    v36 = qword_10098BD68;
    swift_beginAccess();
    sub_1000315F8(v35, v27 + v36, &qword_100979710, &qword_1007BB7C0);
    swift_endAccess();
    v37 = v77;
    static TimeZone.current.getter();
LABEL_8:
    (*(v26 + 56))(v37, 0, 1, v18);
    v38 = v75;
    swift_beginAccess();
    sub_1000315F8(v37, v27 + v38, &qword_100979718, &qword_1007C0310);
    return swift_endAccess();
  }

  v65 = *(v19 + 32);
  v65(v23, v17, v18);
  v30 = qword_10098BD68;
  swift_beginAccess();
  sub_100031660(&v0[v30], v8, &qword_100979710, &qword_1007BB7C0);
  v28 = v78;
  v31 = (*(v78 + 48))(v8, 1, v9);
  v32 = v9;
  v33 = v23;
  v27 = v0;
  if (v31 == 1)
  {
    v29 = v9;
    (*(v26 + 8))(v33, v18);
    sub_10002B894(v8, &qword_100979710, &qword_1007BB7C0);
    goto LABEL_5;
  }

  v63 = v30;
  v40 = *(v28 + 32);
  v41 = v73;
  v64 = v32;
  v62 = v28 + 32;
  v61 = v40;
  (v40)(v73, v8);
  sub_10002A400(&v0[qword_10098BD60], *&v0[qword_10098BD60 + 24]);
  if (dispatch thunk of NetworkInquiry.isLikelyReachable.getter())
  {
    static TimeZone.current.getter();
    Date.init()();
    sub_10056F08C(&unk_100979730, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v60 = v26 + 32;
    if ((v42 & 1) != 0 && !sub_10056EA58(v41, v74))
    {
      if (qword_10096D118 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for OSLogger();
      sub_1000056A8(v54, qword_1009CE200);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();
    }

    else
    {
      if (qword_10096D118 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for OSLogger();
      sub_1000056A8(v43, qword_1009CE200);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      v44 = [v0 collectionView];
      if (v44)
      {
        v45 = v44;
        [v44 _scrollToTopIfPossible:0];
      }

      sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
      v59 = static OS_dispatch_queue.main.getter();
      v46 = swift_allocObject();
      *(v46 + 16) = v27;
      aBlock[4] = sub_10056EA20;
      aBlock[5] = v46;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008C89F0;
      v47 = _Block_copy(aBlock);
      v48 = v27;

      v49 = v66;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      v58 = sub_10056F08C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
      sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
      v50 = v68;
      v51 = v71;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v52 = v59;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v47);

      (*(v70 + 8))(v50, v51);
      (*(v67 + 8))(v49, v69);
      v28 = v78;
    }

    v55 = v64;
    (*(v28 + 8))(v41, v64);
    (*(v26 + 8))(v33, v18);
    v56 = v76;
    v61(v76, v74, v55);
    (*(v28 + 56))(v56, 0, 1, v55);
    v57 = v63;
    swift_beginAccess();
    sub_1000315F8(v56, v27 + v57, &qword_100979710, &qword_1007BB7C0);
    swift_endAccess();
    v37 = v77;
    v65(v77, v72, v18);
    goto LABEL_8;
  }

  if (qword_10096D118 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for OSLogger();
  sub_1000056A8(v53, qword_1009CE200);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  (*(v28 + 8))(v41, v64);
  return (*(v26 + 8))(v33, v18);
}

void sub_1005666BC(void *a1)
{
  v1 = a1;
  sub_1005655D4();
}

uint64_t sub_100566704()
{
  v1 = v0;
  v2 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v1 + v10, v14, &unk_10097F510, &unk_1007B2700);
  if (v15)
  {
    sub_10002C0AC(v14, v13);
    sub_10002B894(v14, &unk_10097F510, &unk_1007B2700);
    sub_10002A400(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v6);
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v7 + 8))(v9, v6);
    sub_100007000(v13);
  }

  else
  {
    sub_10002B894(v14, &unk_10097F510, &unk_1007B2700);
  }

  dispatch thunk of DiffablePagePresenter.appExitedWhileAppeared()();
  (*(v3 + 104))(v5, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.appWillBackground(_:), v2);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  return (*(v3 + 8))(v5, v2);
}

void sub_100566994(void *a1)
{
  v1 = a1;
  sub_100566704();
}

uint64_t sub_1005669DC@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_10056F08C(&qword_10098C398, type metadata accessor for TodayDiffablePageViewController, &unk_1007C67E0);
  v2 = ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter();
  v20[3] = swift_getObjectType();
  v20[0] = v2;
  v3 = ShelfBasedCollectionViewController.collectionElementsObserver.getter();
  v21[3] = swift_getObjectType();
  v21[0] = v3;
  sub_1000073E8(v20, v18);
  sub_100056164(v18, v17);
  sub_10002849C(&unk_10097F4D0, &qword_1007B13E0);
  if (swift_dynamicCast() && v16)
  {
    v15 = v16;
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100034090(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100034090((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v15;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_1000073E8(v21, v18);
  sub_100056164(v18, v17);
  sub_10002849C(&unk_10097F4D0, &qword_1007B13E0);
  if (swift_dynamicCast() && v16)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100034090(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v16;
    if (v8 >= v7 >> 1)
    {
      v14 = sub_100034090((v7 > 1), v8 + 1, 1, v4);
      v9 = v16;
      v4 = v14;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  type metadata accessor for TodayCardGridTracker();
  BaseObjectGraph.inject<A>(_:)();
  v10 = v19;
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  v11 = type metadata accessor for TodayPageLayoutSectionProvider(0);
  *(swift_allocObject() + qword_10097D500) = v10;
  sub_10002C0AC(v18, v17);
  sub_10002C0AC(v17, &v16);

  v12 = BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)();
  sub_100007000(v17);
  result = sub_100007000(v18);
  a1[3] = v11;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v12;
  return result;
}

unint64_t sub_100566D30@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for TodayPageShelfLayoutSpacingProvider;
  result = sub_100558D7C();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100566D64()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  type metadata accessor for TodayPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_10056F08C(&qword_10098C3B0, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_10056F08C(&qword_10098C3B8, type metadata accessor for TodayPageShelfSupplementaryProvider, &unk_1007C37A0);

  return v2;
}

id sub_100566E64()
{
  v1 = v0;
  swift_getObjectType();
  sub_10073A350();
  type metadata accessor for CompoundCollectionElementsObserver();
  if (swift_dynamicCastClass())
  {
    v2 = CompoundCollectionElementsObserver.removingChildren(where:)();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = CompoundCollectionElementsObserver.init(children:)();
  }

  sub_10002849C(&qword_1009717B0, &unk_1007B2A00);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007B1890;
  sub_10002849C(&qword_10098C3A0, &unk_1007D54E0);
  swift_allocObject();
  swift_retain_n();

  v4 = SearchAdsCollectionElementsObserver.init(presenter:advertControllerProvider:)();
  v5 = sub_100097060(&qword_10098C3A8, &qword_10098C3A0, &unk_1007D54E0, &protocol conformance descriptor for SearchAdsCollectionElementsObserver<A, B>);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_10056F08C(&qword_10098C398, type metadata accessor for TodayDiffablePageViewController, &unk_1007C67E0);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();

  result = [v1 collectionView];
  if (result)
  {
    type metadata accessor for SearchImpressionsCollectionElementsObserver();
    swift_allocObject();
    *(v3 + 48) = SearchImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:advertRotationControllerProvider:objectGraph:collectionView:)();
    *(v3 + 56) = &protocol witness table for ImpressionsCollectionElementsObserver;
    CompoundCollectionElementsObserver.addChildren(_:)(v3);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005670FC(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10098C390, &unk_1007D54D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100729370(a1);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v3 + 96))(v5, v2);
    sub_10056E844();
  }

  else if (v6 == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    AdvertRotationControllerProvider.viewControllerWillBeReloaded()();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void *sub_100567274(double a1, double a2)
{
  v3 = v2;
  v4 = type metadata accessor for PageGrid.Direction();
  v85 = *(v4 - 8);
  __chkstk_darwin(v4);
  v84 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v79 - v7;
  v9 = type metadata accessor for PageGrid();
  v83 = *(v9 - 8);
  __chkstk_darwin(v9);
  v86 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_100996820, qword_1007C7450);
  __chkstk_darwin(v11 - 8);
  v13 = &v79 - v12;
  v14 = type metadata accessor for UIView.LayoutRegion();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TitleHeaderView.Style(0);
  *&v19 = __chkstk_darwin(v18 - 8).n128_u64[0];
  v87 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v2 traitCollection];
  v22 = UITraitCollection.isSizeClassRegular.getter();

  if (v22)
  {
    v82 = *&v3[qword_1009CF3E0];
    TodayDiffablePagePresenter.pageLongTitle.getter();
    v23 = Optional<A>.isNotNilAndNotEmpty.getter();

    if (v23)
    {
      v24 = qword_10098BD58;
      v25 = *&v3[qword_10098BD58];
      v26 = 0.0;
      v81 = v15;
      if (v25)
      {
        [v25 sizeToFit];
        v27 = *&v3[v24];
        v28 = 0.0;
        if (v27)
        {
          [v27 frame];
          v26 = v29;
          v28 = v30;
        }
      }

      else
      {
        v28 = 0.0;
      }

      result = [v3 view];
      if (result)
      {
        v32 = result;
        v79 = v26;
        v80 = v9;
        v33 = [result traitCollection];

        sub_1001EF8B4(v33, v87);
        result = [v3 view];
        if (result)
        {
          v34 = result;
          v35 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
          v36 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
          v37 = *(v36 - 8);
          (*(v37 + 104))(v13, v35, v36);
          (*(v37 + 56))(v13, 0, 1, v36);
          static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
          sub_10002B894(v13, &unk_100996820, qword_1007C7450);
          UIView.edgeInsets(for:)();

          (*(v81 + 8))(v17, v14);
          v38 = v85;
          (*(v85 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v4);
          (*(v38 + 16))(v84, v8, v4);
          v39 = 0.0;
          sub_10069F96C(0.0);
          v40 = v86;
          PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
          (*(v38 + 8))(v8, v4);
          if ((sub_10006230C() & 1) == 0)
          {
            sub_100274060();
            v39 = v41;
          }

          PageGrid.horizontalMargins.getter();
          v43 = v42;
          PageGrid.horizontalMargins.getter();
          v45 = v44;
          v46 = [v3 traitCollection];
          v47 = UITraitCollection.isSizeClassCompact.getter();

          if (v47)
          {
            v48 = TodayDiffablePagePresenter.pageTitle.getter();
          }

          else
          {
            v48 = TodayDiffablePagePresenter.pageLongTitle.getter();
          }

          v85 = v48;
          v50 = v49;
          v51 = [v3 traitCollection];
          v52 = UITraitCollection.isSizeClassCompact.getter();

          if (v52)
          {
            v53 = TodayDiffablePagePresenter.pageTitleDetail.getter();
            v55 = v54;
          }

          else
          {
            v53 = 0;
            v55 = 0;
          }

          v56 = [v3 traitCollection];
          v57 = UITraitCollection.isSizeClassCompact.getter();

          if (v57)
          {
            v58 = TodayDiffablePagePresenter.pageShortTitleDetail.getter();
            v60 = v59;
          }

          else
          {
            v58 = 0;
            v60 = 0;
          }

          PageGrid.containerWidth.getter();
          v62 = v61;
          PageGrid.containerHeight.getter();
          v64 = v63;
          result = [v3 view];
          if (result)
          {
            v65 = result;
            v66 = v87;
            sub_10056A810(0, 0, 0, v85, v50, 0, v53, v55, v62, v64, v79, v28, v39, v43, 0.0, v45, v58, v60, 2, v87, 0, v65);
            v68 = v67;

            v69 = objc_opt_self();
            v70 = [v69 fractionalWidthDimension:1.0];
            v71 = [v69 absoluteDimension:v68];
            v72 = [objc_opt_self() sizeWithWidthDimension:v70 heightDimension:v71];

            v73 = v72;
            v74 = String._bridgeToObjectiveC()();
            v75 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v73 elementKind:v74 alignment:1];

            v76 = v75;
            PageGrid.horizontalDirectionalMargins.getter();
            [v76 setContentInsets:?];

            v77 = sub_10056D85C();
            sub_10002849C(&qword_100973210, qword_1007B0BB0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1007B0B70;
            *(inited + 32) = v76;
            v88 = v77;
            sub_1003945AC(inited, xmmword_1007B0B70);

            (*(v83 + 8))(v40, v80);
            sub_10056E7E4(v66, type metadata accessor for TitleHeaderView.Style);
            return v88;
          }

          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }
  }

  return sub_10056D85C();
}

double sub_100567B94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  ObjectType = swift_getObjectType();
  if (a1 == 0xD000000000000039 && 0x80000001007FB9D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = ObjectType;
    a3[3] = sub_10002849C(&qword_10097A550, qword_1007C1908);
    a3[4] = sub_100097060(&qword_10097A558, &qword_10097A550, qword_1007C1908, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    sub_1000056E0(a3);
    type metadata accessor for TitleHeaderView(0);

    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
  }

  else
  {

    return sub_1005616C4(a1, a2, a3);
  }

  return result;
}

void sub_100567D44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v50[-v10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if ((sub_10006230C() & 1) == 0)
    {
      v14 = v13;
      sub_100274060();
    }

    static UIEdgeInsets.vertical(top:bottom:)();
    [a1 setLayoutMargins:?];
    *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_allowsAccessibilityLayouts) = 0;
    [a1 setNeedsLayout];
    v15 = *&v13[qword_10098BD58];
    v16 = v15;
    sub_1003F02B0(v15);
    v17 = (a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabelNumberOfLines);
    *v17 = sub_100113508;
    v17[1] = 0;

    v18 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel);
    [v18 setNumberOfLines:2];
    v19 = (a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorInset);
    v20 = *&UIEdgeInsetsZero.bottom;
    *v19 = *&UIEdgeInsetsZero.top;
    v19[1] = v20;
    [a1 setNeedsLayout];
    v21 = v13;
    v22 = [v21 traitCollection];

    sub_1001EF8B4(v22, v11);

    sub_10056E77C(v11, v8, type metadata accessor for TitleHeaderView.Style);
    (*((swift_isaMask & *a1) + 0x1C8))(v8);
    v23 = [v21 traitCollection];

    v24 = UITraitCollection.isSizeClassCompact.getter();
    if (v24)
    {
      v25 = v21;

      TodayDiffablePagePresenter.pageTitle.getter();
      v27 = v26;

      if (v27)
      {
        v28 = String._bridgeToObjectiveC()();
      }

      else
      {
        v28 = 0;
      }

      [v18 setText:v28];

      v32 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel);
      if (v32)
      {

        v33 = v32;
        TodayDiffablePagePresenter.pageTitleDetail.getter();
        v35 = v34;

        if (v35)
        {
          v36 = String._bridgeToObjectiveC()();
        }

        else
        {
          v36 = 0;
        }

        [v33 setText:v36];
      }

      v39 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel);
      if (v39)
      {

        v40 = v39;

        TodayDiffablePagePresenter.pageShortTitleDetail.getter();
        v42 = v41;

        if (v42)
        {
          v43 = String._bridgeToObjectiveC()();
        }

        else
        {
          v43 = 0;
        }

        [v40 setText:v43];
      }

      else
      {
      }
    }

    else
    {

      TodayDiffablePagePresenter.pageLongTitle.getter();
      v30 = v29;

      if (v30)
      {
        v31 = String._bridgeToObjectiveC()();
      }

      else
      {
        v31 = 0;
      }

      [v18 setText:v31];

      v37 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel);
      if (v37)
      {
        [v37 setText:0];
      }

      v38 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel);
      if (v38)
      {
        [v38 setText:0];
      }
    }

    [v18 setAllowsDefaultTighteningForTruncation:1];
    [a1 setNeedsLayout];
    if (sub_1001DFF60() & 1) == 0 || (v44 = [a1 gestureRecognizers]) != 0 && (v45 = v44, sub_100005744(0, &unk_100993110, UIGestureRecognizer_ptr), v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v45, v47 = sub_1005636A8(), v51 = v47, __chkstk_darwin(v47), *&v50[-16] = &v51, v48 = sub_10003D668(sub_10056E704, &v50[-32], v46), v47, , (v48))
    {
      sub_10056E7E4(v11, type metadata accessor for TitleHeaderView.Style);
    }

    else
    {
      v49 = sub_1005636A8();
      [a1 addGestureRecognizer:v49];

      sub_10056E7E4(v11, type metadata accessor for TitleHeaderView.Style);
    }
  }
}

uint64_t sub_10056837C(uint64_t a1)
{
  v37 = sub_10002849C(&unk_10097CCA0, &unk_1007B70F0);
  __chkstk_darwin(v37);
  v3 = &v32 - v2;
  v4 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v4 - 8);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v35 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  sub_10056E77C(a1, v14, type metadata accessor for FlowDestination);
  if (swift_getEnumCaseMultiPayload() != 20)
  {
    sub_10056E7E4(v14, type metadata accessor for FlowDestination);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v34 = *(v16 + 32);
  v34(v20, v14, v15);
  DiffablePagePresenter.pageUrl.getter();
  (*(v16 + 16))(v8, v20, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  v21 = *(v37 + 48);
  sub_100031660(v11, v3, &qword_100982460, &unk_1007B5C90);
  v37 = v21;
  sub_100031660(v8, &v3[v21], &qword_100982460, &unk_1007B5C90);
  v22 = *(v16 + 48);
  if (v22(v3, 1, v15) != 1)
  {
    v33 = v20;
    v24 = v36;
    sub_100031660(v3, v36, &qword_100982460, &unk_1007B5C90);
    v25 = v37;
    if (v22(&v3[v37], 1, v15) != 1)
    {
      v28 = &v3[v25];
      v29 = v35;
      v34(v35, v28, v15);
      sub_10056F08C(&qword_100975040, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v30 = v24;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v16 + 8);
      v31(v29, v15);
      sub_10002B894(v8, &qword_100982460, &unk_1007B5C90);
      sub_10002B894(v11, &qword_100982460, &unk_1007B5C90);
      v31(v33, v15);
      v31(v30, v15);
      sub_10002B894(v3, &qword_100982460, &unk_1007B5C90);
      return v23 & 1;
    }

    sub_10002B894(v8, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(v11, &qword_100982460, &unk_1007B5C90);
    v26 = *(v16 + 8);
    v26(v33, v15);
    v26(v24, v15);
    goto LABEL_8;
  }

  sub_10002B894(v8, &qword_100982460, &unk_1007B5C90);
  sub_10002B894(v11, &qword_100982460, &unk_1007B5C90);
  (*(v16 + 8))(v20, v15);
  if (v22(&v3[v37], 1, v15) != 1)
  {
LABEL_8:
    sub_10002B894(v3, &unk_10097CCA0, &unk_1007B70F0);
    goto LABEL_9;
  }

  sub_10002B894(v3, &qword_100982460, &unk_1007B5C90);
  v23 = 1;
  return v23 & 1;
}

double sub_100568918(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchTime();
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  TodayDiffablePagePresenter.feedPreviewUrl.getter();
  if (v16)
  {
    v30 = v6;
    if ([a1 state] == 1)
    {
      v17 = [objc_opt_self() generalPasteboard];
      v18 = String._bridgeToObjectiveC()();

      [v17 setString:v18];

      v19 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1];
      [v19 prepare];
      [v19 impactOccurred];
      sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
      v28 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v27 = v2;
      v29 = *(v9 + 8);
      v29(v11, v32);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      aBlock[4] = sub_10056F038;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008C8A40;
      v21 = _Block_copy(aBlock);
      v26 = v19;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10056F08C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v22 = v31;
      v25 = v5;
      sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
      sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
      v23 = v27;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v24 = v28;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v21);

      (*(v22 + 8))(v4, v23);
      (*(v30 + 8))(v8, v25);
      v29(v14, v32);
    }

    else
    {
    }
  }

  return result;
}

void sub_100568E18(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100568918(v4);
}

double sub_100568E80()
{

  sub_100007000((v0 + qword_10098BD60));
  sub_10002B894(v0 + qword_10098BD68, &qword_100979710, &qword_1007BB7C0);
  sub_10002B894(v0 + qword_10098BD70, &qword_100979718, &qword_1007C0310);

  return result;
}

double sub_100568F50(uint64_t a1)
{

  sub_100007000((a1 + qword_10098BD60));
  sub_10002B894(a1 + qword_10098BD68, &qword_100979710, &qword_1007BB7C0);
  sub_10002B894(a1 + qword_10098BD70, &qword_100979718, &qword_1007C0310);

  return result;
}

uint64_t type metadata accessor for TodayDiffablePageViewController(uint64_t a1)
{
  result = qword_10098BDC0;
  if (!qword_10098BDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100569078(uint64_t a1)
{
  sub_1005691AC(319, &qword_10098BDD0, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_1005691AC(319, &unk_10098BDD8, &type metadata accessor for TimeZone);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1005691AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_100569254(uint64_t *a1)
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1002B6F64(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1005692FC(v5);
  *a1 = v3;
}

void sub_1005692FC(uint64_t *a1)
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
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1005696EC(v8, v9, a1, v4);
      v6[2] = 0;

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
    sub_100569428(0, v2, 1, a1);
  }
}

void sub_100569428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for IndexPath();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14 = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_10056F08C(&qword_10098C388, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1005696EC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16 = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_1002B6D90(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_10056A114(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1002B6D90(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_1002B6D04(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_10056F08C(&qword_10098C388, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_100034940(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_100034940((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_10056A114(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1002B6D90(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_1002B6D04(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_10056F08C(&qword_10098C388, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_10056A114(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for IndexPath();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_10056F08C(&qword_10098C388, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          LOBYTE(v34) = dispatch thunk of static Comparable.< infix(_:_:)();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        (v45)(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_10056F08C(&qword_10098C388, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        LOBYTE(v21) = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= &v43[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = &v43[a4];
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_10056A708(&v54, &v53, &v52);
}

uint64_t sub_10056A708(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for IndexPath();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

id sub_10056A810(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, char *a18, char *a19, uint64_t a20, char a21, void *a22)
{
  v342 = a8;
  v296 = a7;
  v336 = a6;
  v337 = a5;
  v331 = a4;
  v332 = a2;
  v305 = a3;
  v333 = a1;
  v328 = a9;
  v329 = a10;
  v348 = a20;
  v24 = type metadata accessor for AspectRatio();
  v303 = *(v24 - 8);
  v304 = v24;
  __chkstk_darwin(v24);
  v302 = v295 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = type metadata accessor for FontSource();
  v299 = *(v301 - 8);
  __chkstk_darwin(v301);
  v298 = v295 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = type metadata accessor for StaticDimension();
  v358 = *(v343 - 8);
  __chkstk_darwin(v343);
  v300 = v295 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = type metadata accessor for TitleHeaderLayout.AccessoryHorizontalAlignment();
  v323 = *(v325 - 8);
  __chkstk_darwin(v325);
  v324 = v295 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v320 = *(v29 - 8);
  v321 = v29;
  __chkstk_darwin(v29);
  v322 = v295 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v317 = *(v31 - 8);
  v318 = v31;
  __chkstk_darwin(v31);
  v319 = v295 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = type metadata accessor for TitleHeaderLayout();
  v330 = *(v327 - 8);
  __chkstk_darwin(v327);
  v326 = v295 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TitleHeaderLayout.Child();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v310 = v295 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v355 = v295 - v38;
  __chkstk_darwin(v39);
  v354 = v295 - v40;
  __chkstk_darwin(v41);
  v346 = v295 - v42;
  v43 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v43 - 8);
  v308 = v295 - v44;
  v45 = type metadata accessor for LabelPlaceholderCompatibility();
  v339 = *(v45 - 8);
  v340 = v45;
  __chkstk_darwin(v45);
  v338 = v295 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for CharacterSet();
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = v295 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v307 = *(v51 - 1);
  __chkstk_darwin(v51);
  v347 = v295 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v311 = v295 - v54;
  __chkstk_darwin(v55);
  v57 = v295 - v56;
  v58 = sub_10002849C(&unk_100984360, &unk_1007D54C0);
  v59 = *(v58 - 8);
  v315 = v58;
  v316 = v59;
  __chkstk_darwin(v58);
  v297 = v295 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v351 = v295 - v62;
  __chkstk_darwin(v63);
  v350 = v295 - v64;
  __chkstk_darwin(v65);
  v309 = v295 - v66;
  __chkstk_darwin(v67);
  v353 = v295 - v68;
  __chkstk_darwin(v69);
  v352 = v295 - v70;
  __chkstk_darwin(v71);
  v345 = v295 - v72;
  __chkstk_darwin(v73);
  v306 = v295 - v74;
  *&v76 = __chkstk_darwin(v75).n128_u64[0];
  v78 = v295 - v77;
  v335 = a22;
  v79 = [a22 traitCollection];
  v356 = v34;
  v357 = v35;
  v344 = v78;
  v349 = v51;
  v341 = v79;
  v334 = v47;
  v313 = v50;
  v314 = v48;
  if (!v332)
  {
    v92 = *(v35 + 56);
    v92(v78, 1, 1, v34);
    v93 = v343;
    goto LABEL_23;
  }

  v80 = v332;
  v81 = v348;
  sub_10056E77C(v348, v57, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v79 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  *&v394 = v333;
  *(&v394 + 1) = v80;

  static CharacterSet.excessiveLeading.getter();
  sub_10007FED4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v83 = v82;
  (*(v48 + 8))(v50, v47);

  v84 = 0;
  if ((v83 & 1) == 0)
  {
    [v79 lineHeight];
    v86 = ceil(v85 * 1.3);
    if ((*&v86 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v86 > -9.22337204e18)
    {
      if (v86 >= 9.22337204e18)
      {
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v84 = v86;
      goto LABEL_7;
    }

    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

LABEL_7:
  v295[1] = v84;
  v312 = v57;
  if (!v305)
  {
    goto LABEL_15;
  }

  v295[0] = v79;

  dispatch thunk of Artwork.systemImageName.getter();
  if (v87 && (v88 = [objc_opt_self() configurationWithFont:v295[0]], v89 = String._bridgeToObjectiveC()(), , v90 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v89, v88), v89, v88, v51 = v349, v90))
  {
    [v90 size];
    type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v91 = LayoutViewPlaceholder.init(representing:)();
  }

  else
  {
    v94 = v51[6];
    v95 = type metadata accessor for FontUseCase();
    v96 = v298;
    (*(*(v95 - 8) + 16))(v298, v81 + v94, v95);
    v97 = v299;
    v98 = v301;
    (*(v299 + 104))(v96, enum case for FontSource.useCase(_:), v301);
    *(&v395 + 1) = v98;
    v396 = &protocol witness table for FontSource;
    v99 = sub_1000056E0(&v394);
    (*(v97 + 16))(v99, v96, v98);

    v100 = v300;
    StaticDimension.init(_:scaledLike:)();
    (*(v97 + 8))(v96, v98);
    StaticDimension.rawValue(in:)();
    Artwork.size.getter();
    v101 = v302;
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(fitting:)();

    (*(v303 + 8))(v101, v304);
    (*(v358 + 8))(v100, v343);
    type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v91 = LayoutViewPlaceholder.init(representing:)();
  }

  v79 = v295[0];
  if (v91)
  {
    *(&v395 + 1) = type metadata accessor for LayoutViewPlaceholder();
    v396 = &protocol witness table for LayoutViewPlaceholder;
    v332 = v91;
    *&v394 = v91;
  }

  else
  {
LABEL_15:
    v332 = 0;
    v396 = 0;
    v394 = 0u;
    v395 = 0u;
  }

  v393 = 0;
  v391 = 0u;
  v392 = 0u;
  v390 = 0;
  v388 = 0u;
  v389 = 0u;
  v102 = type metadata accessor for Feature();
  v386 = v102;
  v387 = sub_10056F08C(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v103 = sub_1000056E0(v385);
  (*(*(v102 - 8) + 104))(v103, enum case for Feature.measurement_with_labelplaceholder(_:), v102);
  v104 = v79;

  v105 = v104;
  isFeatureEnabled(_:)();
  sub_100007000(v385);
  v106 = v338;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v339 + 8))(v106, v340);
  sub_100031660(&v394, v384, &qword_100975610, &qword_1007B5690);
  v107 = v386;
  v108 = v387;
  v109 = sub_10002A400(v385, v386);
  v382 = v107;
  v383 = *(v108 + 8);
  v110 = sub_1000056E0(v381);
  (*(*(v107 - 8) + 16))(v110, v109, v107);
  v111 = v349;
  v112 = v312;
  v113 = *&v312[v349[8]];
  v379 = &type metadata for Float;
  v380 = &protocol witness table for Float;
  v378 = v113;
  v114 = v349[9];
  v115 = v343;
  v376 = v343;
  v377 = &protocol witness table for StaticDimension;
  v116 = sub_1000056E0(v375);
  v117 = *(v358 + 16);
  v117(v116, &v112[v114], v115);
  v118 = v111[10];
  v373 = v115;
  v374 = &protocol witness table for StaticDimension;
  v119 = sub_1000056E0(v372);
  v117(v119, &v112[v118], v115);
  sub_100031660(&v391, &v366, &unk_10097E890, qword_1007B4270);
  v120 = *(&v367 + 1);
  if (*(&v367 + 1))
  {
    v121 = v368;
    v122 = sub_10002A400(&v366, *(&v367 + 1));
    *(&v370 + 1) = v120;
    v371 = *(v121 + 8);
    v123 = sub_1000056E0(&v369);
    (*(*(v120 - 8) + 16))(v123, v122, v120);
    sub_100007000(&v366);
  }

  else
  {
    sub_10002B894(&v366, &unk_10097E890, qword_1007B4270);
    v369 = 0u;
    v370 = 0u;
    v371 = 0;
  }

  v124 = v306;
  sub_100031660(&v388, v363, &unk_10097E890, qword_1007B4270);
  v125 = v364;
  if (v364)
  {
    v126 = v365;
    v127 = sub_10002A400(v363, v364);
    *(&v367 + 1) = v125;
    v368 = *(v126 + 8);
    v128 = sub_1000056E0(&v366);
    (*(*(v125 - 8) + 16))(v128, v127, v125);
    sub_100007000(v363);
  }

  else
  {
    sub_10002B894(v363, &unk_10097E890, qword_1007B4270);
    v366 = 0u;
    v367 = 0u;
    v368 = 0;
  }

  v129 = v349;
  v130 = v312;
  sub_10002C0AC(&v312[v349[12]], v363);
  sub_10002C0AC(v130 + v129[13], v362);
  v361 = &protocol witness table for Double;
  v360 = &type metadata for Double;
  v359 = 0x4020000000000000;
  TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();

  sub_10002B894(&v388, &unk_10097E890, qword_1007B4270);
  v51 = v129;
  sub_10002B894(&v391, &unk_10097E890, qword_1007B4270);
  sub_10056E7E4(v130, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100007000(v385);

  sub_10002B894(&v394, &qword_100975610, &qword_1007B5690);
  v34 = v356;
  v92 = *(v357 + 56);
  v92(v124, 0, 1, v356);
  sub_1000476A0(v124, v344, &unk_100984360, &unk_1007D54C0);
  v79 = v341;
  v93 = v343;
LABEL_23:
  v131 = v337;
  if (!v342)
  {
LABEL_26:
    v92(v345, 1, 1, v34);
    v396 = 0;
    v394 = 0u;
    v395 = 0u;
    v391 = 0u;
    v392 = 0u;
    v393 = 0;
    goto LABEL_27;
  }

  v132 = type metadata accessor for TitleHeaderView.Style(0);
  v133 = v308;
  sub_100031660(v348 + *(v132 + 24), v308, &qword_1009794E8, &unk_1007C18C0);
  if ((*(v307 + 48))(v133, 1, v51) == 1)
  {
    sub_10002B894(v133, &qword_1009794E8, &unk_1007C18C0);
    goto LABEL_26;
  }

  sub_10022A9A0(v133, v311);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v137 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  *&v394 = v296;
  *(&v394 + 1) = v342;

  v138 = v313;
  static CharacterSet.excessiveLeading.getter();
  sub_10007FED4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v140 = v139;
  (*(v314 + 8))(v138, v334);

  v141 = 0;
  if (v140)
  {
LABEL_37:
    v145 = v137;
    if (*(v348 + *(v132 + 36)) == 2)
    {
      v312 = a18;
      v332 = a17;
      v146 = type metadata accessor for Feature();
      v307 = v141;
      v147 = v146;
      *(&v395 + 1) = v146;
      v308 = sub_10056F08C(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v396 = v308;
      v148 = sub_1000056E0(&v394);
      v149 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v150 = *(*(v147 - 8) + 104);
      v333 = v92;
      v150(v148, enum case for Feature.measurement_with_labelplaceholder(_:), v147);
      v151 = v145;

      v152 = v151;
      isFeatureEnabled(_:)();
      sub_100007000(&v394);
      v153 = v338;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v154 = v340;
      v155 = *(v339 + 8);
      v155(v153, v340);
      *(&v392 + 1) = v147;
      v393 = v308;
      v156 = sub_1000056E0(&v391);
      v150(v156, v149, v147);
      v57 = v334;
      v93 = v343;

      v157 = v152;
      isFeatureEnabled(_:)();
      sub_100007000(&v391);
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();

      v155(v153, v154);
      v131 = v337;
      sub_10056E7E4(v311, type metadata accessor for TitleHeaderView.TextConfiguration);

      v333(v345, 1, 1, v356);
      v51 = v349;
      v79 = v341;
LABEL_28:
      v342 = type metadata accessor for TitleHeaderView.Style(0);
      v333 = (v348 + v342[5]);
      sub_10056E77C(v333, v347, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100005744(0, &qword_1009730E0, UIFont_ptr);
      v337 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
      if (!v131)
      {
        goto LABEL_43;
      }

      v134 = v93;
      v48 = v331;
      *&v388 = v331;
      *(&v388 + 1) = v131;

      v50 = v313;
      static CharacterSet.excessiveLeading.getter();
      sub_10007FED4();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      v136 = v135;
      (*(v314 + 8))(v50, v57);

      if (v136)
      {
LABEL_42:
        v93 = v134;
        if (!v336)
        {
          goto LABEL_50;
        }

LABEL_43:
        v334 = a19;

        dispatch thunk of Artwork.systemImageName.getter();
        if (v160 && (v161 = [objc_opt_self() configurationWithFont:v337], v162 = String._bridgeToObjectiveC()(), , v163 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v162, v161), v162, v51 = v349, v161, v163))
        {
          [v163 size];
          type metadata accessor for LayoutViewPlaceholder();
          swift_allocObject();
          v164 = LayoutViewPlaceholder.init(representing:)();
        }

        else
        {
          v165 = v93;
          v166 = v333;
          v167 = v51[6];
          v168 = type metadata accessor for FontUseCase();
          v169 = v166 + v167;
          v93 = v165;
          v170 = v298;
          (*(*(v168 - 8) + 16))(v298, v169, v168);
          v171 = v299;
          v172 = v301;
          (*(v299 + 104))(v170, enum case for FontSource.useCase(_:), v301);
          *(&v389 + 1) = v172;
          v390 = &protocol witness table for FontSource;
          v173 = sub_1000056E0(&v388);
          (*(v171 + 16))(v173, v170, v172);

          v174 = v300;
          StaticDimension.init(_:scaledLike:)();
          (*(v171 + 8))(v170, v172);
          StaticDimension.rawValue(in:)();
          Artwork.size.getter();
          v175 = v302;
          AspectRatio.init(_:_:)();
          AspectRatio.maxSize(fitting:)();

          (*(v303 + 8))(v175, v304);
          (*(v358 + 8))(v174, v93);
          type metadata accessor for LayoutViewPlaceholder();
          swift_allocObject();
          v164 = LayoutViewPlaceholder.init(representing:)();
        }

        if (v164)
        {
          v176 = type metadata accessor for LayoutViewPlaceholder();
          v390 = &protocol witness table for LayoutViewPlaceholder;
          *(&v389 + 1) = v176;
          v336 = v164;
          *&v388 = v164;
        }

        else
        {
LABEL_50:
          v336 = 0;
          v390 = 0;
          v388 = 0u;
          v389 = 0u;
        }

        v177 = type metadata accessor for Feature();
        v386 = v177;
        v387 = sub_10056F08C(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v178 = sub_1000056E0(v385);
        (*(*(v177 - 8) + 104))(v178, enum case for Feature.measurement_with_labelplaceholder(_:), v177);

        v179 = v337;
        isFeatureEnabled(_:)();
        sub_100007000(v385);
        v180 = v338;
        v337 = v179;
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        LabelPlaceholderCompatibility.layoutTextView.getter();
        (*(v339 + 8))(v180, v340);
        sub_100031660(&v388, v384, &qword_100975610, &qword_1007B5690);
        v181 = v386;
        v182 = v387;
        v183 = sub_10002A400(v385, v386);
        v382 = v181;
        v383 = *(v182 + 8);
        v184 = sub_1000056E0(v381);
        (*(*(v181 - 8) + 16))(v184, v183, v181);
        v185 = v349;
        v186 = v347;
        v187 = *(v347 + v349[8]);
        v379 = &type metadata for Float;
        v380 = &protocol witness table for Float;
        v378 = v187;
        v188 = v349[9];
        v376 = v93;
        v377 = &protocol witness table for StaticDimension;
        v189 = sub_1000056E0(v375);
        v190 = *(v358 + 16);
        v190(v189, v186 + v188, v93);
        v191 = v185[10];
        v373 = v93;
        v374 = &protocol witness table for StaticDimension;
        v192 = sub_1000056E0(v372);
        v190(v192, v186 + v191, v93);
        sub_100031660(&v394, &v366, &unk_10097E890, qword_1007B4270);
        v193 = *(&v367 + 1);
        if (*(&v367 + 1))
        {
          v194 = v368;
          v195 = sub_10002A400(&v366, *(&v367 + 1));
          *(&v370 + 1) = v193;
          v371 = *(v194 + 8);
          v196 = sub_1000056E0(&v369);
          (*(*(v193 - 8) + 16))(v196, v195, v193);
          sub_100007000(&v366);
        }

        else
        {
          sub_10002B894(&v366, &unk_10097E890, qword_1007B4270);
          v369 = 0u;
          v370 = 0u;
          v371 = 0;
        }

        v197 = v350;
        v198 = v348;
        sub_100031660(&v391, v363, &unk_10097E890, qword_1007B4270);
        v199 = v364;
        if (v364)
        {
          v200 = v365;
          v201 = sub_10002A400(v363, v364);
          *(&v367 + 1) = v199;
          v368 = *(v200 + 8);
          v202 = sub_1000056E0(&v366);
          (*(*(v199 - 8) + 16))(v202, v201, v199);
          sub_100007000(v363);
        }

        else
        {
          sub_10002B894(v363, &unk_10097E890, qword_1007B4270);
          v366 = 0u;
          v367 = 0u;
          v368 = 0;
        }

        v203 = v351;
        v204 = v349;
        v205 = v347;
        sub_10002C0AC(v347 + v349[12], v363);
        sub_10002C0AC(v205 + v204[13], v362);
        v361 = &protocol witness table for Double;
        v360 = &type metadata for Double;
        v359 = 0x4020000000000000;
        TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
        sub_100007000(v385);
        sub_10002B894(&v388, &qword_100975610, &qword_1007B5690);
        v206 = *(v198 + v342[9]);
        sub_10002849C(&qword_1009812E8, &qword_1007C9B00);
        v358 = *(v316 + 72);
        v207 = (*(v316 + 80) + 32) & ~*(v316 + 80);
        if (v206)
        {
          if (v206 != 1)
          {
            v236 = v358;
            v343 = swift_allocObject();
            v237 = v343 + v207;
            sub_100031660(v344, v343 + v207, &unk_100984360, &unk_1007D54C0);
            v238 = v356;
            v239 = v357;
            (*(v357 + 16))(v237 + v236, v346, v356);
            (*(v239 + 56))(v237 + v236, 0, 1, v238);
            v240 = v309;
            sub_100031660(v237, v309, &unk_100984360, &unk_1007D54C0);
            v241 = v297;
            sub_1000476A0(v240, v297, &unk_100984360, &unk_1007D54C0);
            v242 = *(v239 + 48);
            v243 = (v239 + 32);
            v244 = v242(v241, 1, v238);
            v355 = (v239 + 32);
            if (v244 == 1)
            {
              sub_10002B894(v241, &unk_100984360, &unk_1007D54C0);
              v245 = _swiftEmptyArrayStorage;
            }

            else
            {
              v246 = *v243;
              (*v243)(v310, v241, v238);
              v245 = _swiftEmptyArrayStorage;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v245 = sub_100033A68(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
              }

              v248 = *(v245 + 2);
              v247 = *(v245 + 3);
              if (v248 >= v247 >> 1)
              {
                v245 = sub_100033A68((v247 > 1), v248 + 1, 1, v245);
              }

              *(v245 + 2) = v248 + 1;
              v249 = &v245[((*(v357 + 80) + 32) & ~*(v357 + 80)) + *(v357 + 72) * v248];
              v238 = v356;
              v246(v249, v310, v356);
              v241 = v297;
            }

            v250 = v309;
            sub_100031660(v237 + v358, v309, &unk_100984360, &unk_1007D54C0);
            sub_1000476A0(v250, v241, &unk_100984360, &unk_1007D54C0);
            if (v242(v241, 1, v238) == 1)
            {
              sub_10002B894(v241, &unk_100984360, &unk_1007D54C0);
              v235 = v348;
              v79 = v344;
            }

            else
            {
              v251 = v238;
              v252 = *v355;
              (*v355)(v310, v241, v251);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v235 = v348;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v245 = sub_100033A68(0, *(v245 + 2) + 1, 1, v245);
              }

              v79 = v344;
              v255 = *(v245 + 2);
              v254 = *(v245 + 3);
              if (v255 >= v254 >> 1)
              {
                v245 = sub_100033A68((v254 > 1), v255 + 1, 1, v245);
              }

              *(v245 + 2) = v255 + 1;
              v252(&v245[((*(v357 + 80) + 32) & ~*(v357 + 80)) + *(v357 + 72) * v255], v310, v356);
            }

            swift_setDeallocating();
            swift_arrayDestroy();
LABEL_94:
            swift_deallocClassInstance();
            v57 = v326;
            if (a11 == 0.0 && a12 == 0.0)
            {
              v256 = 0;
              v257 = 0;
              v258 = 0;
              *&v389 = 0;
              *(&v388 + 1) = 0;
            }

            else
            {
              v257 = type metadata accessor for LayoutViewPlaceholder();
              swift_allocObject();
              v256 = LayoutViewPlaceholder.init(representing:)();
              v258 = &protocol witness table for LayoutViewPlaceholder;
            }

            *&v388 = v256;
            *(&v389 + 1) = v257;
            v390 = v258;
            sub_100031660(&v388, v385, &qword_100975610, &qword_1007B5690);
            v259 = v342;
            v260 = *(v235 + v342[14]);
            v384[3] = &type metadata for CGFloat;
            v384[4] = &protocol witness table for CGFloat;
            v384[0] = v260;
            (*(v317 + 16))(v319, v235 + v342[10], v318);
            (*(v320 + 16))(v322, v235 + v259[11], v321);
            (*(v323 + 104))(v324, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v325);
            TitleHeaderLayout.init(accessoryView:accessoryMargin:accessoryVerticalAlignment:accessoryHorizontalAlignment:children:childrenHorizontalAlignment:allowsAccessibilityLayouts:)();
            CGSize.subtracting(insets:)();
            sub_10056F08C(&unk_1009812F0, &type metadata accessor for TitleHeaderLayout, &protocol conformance descriptor for TitleHeaderLayout);
            v48 = v327;
            dispatch thunk of Measurable.measurements(fitting:in:)();
            v385[0] = v261;
            v385[1] = v262;
            CGSize.add(outsets:)();
            if (JUScreenClassGetMain() != 1)
            {

              (*(v330 + 8))(v57, v48);
              (*(v357 + 8))(v346, v356);
              sub_10056E7E4(v347, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10002B894(&v391, &unk_10097E890, qword_1007B4270);
              sub_10002B894(&v394, &unk_10097E890, qword_1007B4270);
              sub_10002B894(v345, &unk_100984360, &unk_1007D54C0);
              sub_10002B894(v79, &unk_100984360, &unk_1007D54C0);
              return sub_10002B894(&v388, &qword_100975610, &qword_1007B5690);
            }

            v263 = v356;
            v51 = v357;
            v50 = v341;
            if (qword_10096E760 != -1)
            {
              swift_once();
            }

            v264 = sub_1000056A8(v349, qword_1009D2688);
            if (sub_1003FA6EC(v333, v264))
            {

              (*(v330 + 8))(v57, v48);
              (*(v51 + 1))(v346, v263);
              sub_10056E7E4(v347, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10002B894(&v391, &unk_10097E890, qword_1007B4270);
              sub_10002B894(&v394, &unk_10097E890, qword_1007B4270);
              sub_10002B894(v345, &unk_100984360, &unk_1007D54C0);
              sub_10002B894(v79, &unk_100984360, &unk_1007D54C0);
              return sub_10002B894(&v388, &qword_100975610, &qword_1007B5690);
            }

            if (qword_10096E768 == -1)
            {
LABEL_105:
              v265 = sub_1000056A8(v349, qword_1009D26A0);
              sub_1003FA6EC(v333, v265);

              (*(v330 + 8))(v57, v48);
              (*(v51 + 1))(v346, v356);
              sub_10056E7E4(v347, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10002B894(&v391, &unk_10097E890, qword_1007B4270);
              sub_10002B894(&v394, &unk_10097E890, qword_1007B4270);
              sub_10002B894(v345, &unk_100984360, &unk_1007D54C0);
              sub_10002B894(v79, &unk_100984360, &unk_1007D54C0);
              return sub_10002B894(&v388, &qword_100975610, &qword_1007B5690);
            }

LABEL_120:
            swift_once();
            goto LABEL_105;
          }

          v208 = v358;
          v343 = swift_allocObject();
          v209 = v343 + v207;
          sub_100031660(v344, v343 + v207, &unk_100984360, &unk_1007D54C0);
          v211 = v356;
          v210 = v357;
          (*(v357 + 16))(v209 + v208, v346, v356);
          v212 = *(v210 + 56);
          v210 += 56;
          v212(v209 + v208, 0, 1, v211);
          sub_100031660(v345, v209 + 2 * v208, &unk_100984360, &unk_1007D54C0);
          v213 = (v210 - 8);
          v354 = (v210 - 24);
          v214 = v211;
          v215 = _swiftEmptyArrayStorage;
          v216 = 3;
          v352 = v209;
          do
          {
            v217 = v353;
            sub_100031660(v209, v353, &unk_100984360, &unk_1007D54C0);
            sub_1000476A0(v217, v203, &unk_100984360, &unk_1007D54C0);
            if ((*v213)(v203, 1, v214) == 1)
            {
              sub_10002B894(v203, &unk_100984360, &unk_1007D54C0);
            }

            else
            {
              v218 = *v354;
              (*v354)(v355, v203, v214);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v215 = sub_100033A68(0, *(v215 + 2) + 1, 1, v215);
              }

              v220 = *(v215 + 2);
              v219 = *(v215 + 3);
              if (v220 >= v219 >> 1)
              {
                v215 = sub_100033A68((v219 > 1), v220 + 1, 1, v215);
              }

              *(v215 + 2) = v220 + 1;
              v214 = v356;
              v218(&v215[((*(v357 + 80) + 32) & ~*(v357 + 80)) + *(v357 + 72) * v220], v355, v356);
              v203 = v351;
            }

            v209 += v358;
            --v216;
          }

          while (v216);
        }

        else
        {
          v221 = v358;
          v222 = 2 * v358;
          v343 = swift_allocObject();
          v223 = v343 + v207;
          sub_100031660(v344, v343 + v207, &unk_100984360, &unk_1007D54C0);
          sub_100031660(v345, v223 + v221, &unk_100984360, &unk_1007D54C0);
          v225 = v356;
          v224 = v357;
          (*(v357 + 16))(v223 + v222, v346, v356);
          v226 = *(v224 + 56);
          v224 += 56;
          v226(v223 + v222, 0, 1, v225);
          v227 = (v224 - 8);
          v355 = (v224 - 24);
          v228 = v225;
          v229 = _swiftEmptyArrayStorage;
          v230 = 3;
          v353 = v223;
          do
          {
            v231 = v352;
            sub_100031660(v223, v352, &unk_100984360, &unk_1007D54C0);
            sub_1000476A0(v231, v197, &unk_100984360, &unk_1007D54C0);
            if ((*v227)(v197, 1, v228) == 1)
            {
              sub_10002B894(v197, &unk_100984360, &unk_1007D54C0);
            }

            else
            {
              v232 = *v355;
              (*v355)(v354, v197, v228);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v229 = sub_100033A68(0, *(v229 + 2) + 1, 1, v229);
              }

              v234 = *(v229 + 2);
              v233 = *(v229 + 3);
              if (v234 >= v233 >> 1)
              {
                v229 = sub_100033A68((v233 > 1), v234 + 1, 1, v229);
              }

              *(v229 + 2) = v234 + 1;
              v228 = v356;
              v232(&v229[((*(v357 + 80) + 32) & ~*(v357 + 80)) + *(v357 + 72) * v234], v354, v356);
              v197 = v350;
            }

            v223 += v358;
            --v230;
          }

          while (v230);
        }

        swift_setDeallocating();
        swift_arrayDestroy();
        v235 = v348;
        v79 = v344;
        goto LABEL_94;
      }

      [v337 lineHeight];
      v159 = ceil(v158 * 1.3);
      if ((*&v159 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v159 > -9.22337204e18)
        {
          if (v159 < 9.22337204e18)
          {
            goto LABEL_42;
          }

LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      goto LABEL_116;
    }

    v396 = 0;
    v394 = 0u;
    v395 = 0u;
    v393 = 0;
    v391 = 0u;
    v392 = 0u;
    v390 = 0;
    v388 = 0u;
    v389 = 0u;
    v266 = type metadata accessor for Feature();
    v386 = v266;
    v387 = sub_10056F08C(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v267 = sub_1000056E0(v385);
    (*(*(v266 - 8) + 104))(v267, enum case for Feature.measurement_with_labelplaceholder(_:), v266);

    v268 = v137;
    isFeatureEnabled(_:)();
    sub_100007000(v385);
    v269 = v338;
    v342 = v268;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    (*(v339 + 8))(v269, v340);
    sub_100031660(&v394, v384, &qword_100975610, &qword_1007B5690);
    v270 = v386;
    v271 = v387;
    v272 = sub_10002A400(v385, v386);
    v382 = v270;
    v383 = *(v271 + 8);
    v273 = sub_1000056E0(v381);
    (*(*(v270 - 8) + 16))(v273, v272, v270);
    v274 = v349;
    v275 = v311;
    v276 = *(v311 + v349[8]);
    v379 = &type metadata for Float;
    v380 = &protocol witness table for Float;
    v378 = v276;
    v277 = v349[9];
    v376 = v93;
    v377 = &protocol witness table for StaticDimension;
    v278 = sub_1000056E0(v375);
    v279 = v93;
    v280 = *(v358 + 16);
    v280(v278, v275 + v277, v279);
    v281 = v274[10];
    v373 = v279;
    v374 = &protocol witness table for StaticDimension;
    v282 = sub_1000056E0(v372);
    v280(v282, v275 + v281, v279);
    sub_100031660(&v391, &v366, &unk_10097E890, qword_1007B4270);
    v283 = *(&v367 + 1);
    if (*(&v367 + 1))
    {
      v284 = v368;
      v285 = sub_10002A400(&v366, *(&v367 + 1));
      *(&v370 + 1) = v283;
      v371 = *(v284 + 8);
      v286 = sub_1000056E0(&v369);
      (*(*(v283 - 8) + 16))(v286, v285, v283);
      sub_100007000(&v366);
    }

    else
    {
      sub_10002B894(&v366, &unk_10097E890, qword_1007B4270);
      v369 = 0u;
      v370 = 0u;
      v371 = 0;
    }

    v287 = v357;
    sub_100031660(&v388, v363, &unk_10097E890, qword_1007B4270);
    v288 = v364;
    if (v364)
    {
      v289 = v365;
      v290 = sub_10002A400(v363, v364);
      *(&v367 + 1) = v288;
      v368 = *(v289 + 8);
      v291 = sub_1000056E0(&v366);
      (*(*(v288 - 8) + 16))(v291, v290, v288);
      sub_100007000(v363);
    }

    else
    {
      sub_10002B894(v363, &unk_10097E890, qword_1007B4270);
      v366 = 0u;
      v367 = 0u;
      v368 = 0;
    }

    v292 = v349;
    v293 = v311;
    sub_10002C0AC(v311 + v349[12], v363);
    sub_10002C0AC(v293 + v292[13], v362);
    v361 = &protocol witness table for Double;
    v360 = &type metadata for Double;
    v359 = 0x4020000000000000;
    v294 = v345;
    TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
    sub_10002B894(&v388, &unk_10097E890, qword_1007B4270);
    sub_10002B894(&v391, &unk_10097E890, qword_1007B4270);
    sub_10002B894(&v394, &qword_100975610, &qword_1007B5690);
    sub_10056E7E4(v293, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100007000(v385);

    v51 = v292;
    (*(v287 + 56))(v294, 0, 1, v356);
    v396 = 0;
    v394 = 0u;
    v395 = 0u;
    v391 = 0u;
    v392 = 0u;
    v393 = 0;
    v79 = v341;
    v93 = v343;
    v131 = v337;
LABEL_27:
    v57 = v334;
    goto LABEL_28;
  }

  result = [v137 lineHeight];
  v144 = ceil(v143 * 1.3);
  if ((*&v144 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_122;
  }

  if (v144 <= -9.22337204e18)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v144 < 9.22337204e18)
  {
    v141 = v144;
    goto LABEL_37;
  }

LABEL_123:
  __break(1u);
  return result;
}

void *sub_10056D85C()
{
  v1 = v0;
  v102 = type metadata accessor for ShelfBackground();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v95 = (&v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v92 = (&v88 - v4);
  v5 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v98 = *(v5 - 8);
  v99 = v5;
  __chkstk_darwin(v5);
  v94 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v91 = &v88 - v8;
  v9 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v96 = &v88 - v13;
  v14 = type metadata accessor for ShelfLayoutContext();
  v103 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v93 = &v88 - v18;
  v19 = sub_10002849C(&qword_100975028, &unk_1007C69C0);
  v104 = *(v19 - 8);
  __chkstk_darwin(v19);
  v101 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v88 - v22;
  v24 = type metadata accessor for PaginatedPagePresenterState();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = _swiftEmptyArrayStorage;
  dispatch thunk of DiffablePagePresenter.paginationState.getter();
  v28 = (*(v25 + 88))(v27, v24);
  v97 = v16;
  if (v28 == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
  {
    v90 = v14;
    (*(v25 + 96))(v27, v24);
    sub_100007000(v27);
    v29 = [v0 traitCollection];
    if (qword_10096E6C0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for StaticDimension();
    sub_1000056A8(v30, qword_1009D2460);
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1007B0B70;
    *(v31 + 32) = v29;
    v32 = v29;
    v33 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of AnyDimension.rawValue(in:)();
    v35 = v34;

    v36 = objc_opt_self();
    v37 = [v36 fractionalWidthDimension:1.0];
    v38 = [v36 absoluteDimension:v35];
    v39 = [objc_opt_self() sizeWithWidthDimension:v37 heightDimension:v38];

    type metadata accessor for InfiniteScrollFooterView();
    v40 = v39;
    static UICollectionReusableView.elementKind.getter();
    v41 = String._bridgeToObjectiveC()();

    v42 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v40 elementKind:v41 alignment:5];

    v43 = v42;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v44 = v105;
    v14 = v90;
  }

  else
  {
    (*(v25 + 8))(v27, v24);
    v44 = _swiftEmptyArrayStorage;
  }

  v45 = qword_10097F2F8;
  swift_beginAccess();
  v46 = *&v1[v45];
  if (v46)
  {
    v47 = v46;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v48 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
    v49 = *(v104 + 8);
    v104 += 8;
    v49(v23, v19);
    if (v48 > 0)
    {
      sub_10002849C(&qword_10097AB10, &qword_1007D5480);
      sub_100097060(&qword_10097AB18, &qword_10097AB10, &qword_1007D5480, &unk_1007C67E0);
      ShelfBasedCollectionViewController.shelfLayoutContext(for:)();
      v50 = v103;
      if ((*(v103 + 48))(v11, 1, v14) != 1)
      {
        v88 = v44;
        v89 = v49;
        v90 = v19;
        v58 = v97;
        (*(v50 + 32))(v97, v11, v14);
        v59 = v94;
        ShelfLayoutContext.shelf.getter();
        swift_getKeyPath();
        v60 = v14;
        v61 = v95;
        v62 = v99;
        ReadOnlyLens.subscript.getter();

        (*(v98 + 8))(v59, v62);
        v63 = v100;
        v51 = v102;
        if ((*(v100 + 88))(v61, v102) == enum case for ShelfBackground.color(_:))
        {
          (*(v63 + 96))(v61, v51);

          v64 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
          v65 = type metadata accessor for ShelfBackgroundStyle();
          (*(*(v65 - 8) + 8))(v61 + v64, v65);
          v66 = objc_opt_self();
          v67 = [v66 fractionalWidthDimension:1.0];
          v68 = [v66 absoluteDimension:2000.0];
          v69 = [objc_opt_self() sizeWithWidthDimension:v67 heightDimension:v68];

          v70 = String._bridgeToObjectiveC()();
          v71 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v69 elementKind:v70 alignment:1 absoluteOffset:{0.0, -2000.0}];

          [v71 setExtendsBoundary:0];
          v72 = v71;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v14 = v60;
          (*(v103 + 8))(v97, v60);
          v44 = v105;
          v19 = v90;
          v49 = v89;
        }

        else
        {
          (*(v50 + 8))(v58, v60);
          (*(v63 + 8))(v61, v51);
          v14 = v60;
          v19 = v90;
          v49 = v89;
          v44 = v88;
        }

        goto LABEL_13;
      }

      sub_10002B894(v11, &qword_10097F480, &unk_1007C4AB0);
    }

    v51 = v102;
LABEL_13:
    v52 = *&v1[v45];
    if (v52)
    {
      v53 = v52;
      v54 = v101;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v55 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
      v49(v54, v19);
      if (v55 > 0)
      {
        sub_10002849C(&qword_10097AB10, &qword_1007D5480);
        v56 = v103;
        sub_100097060(&qword_10097AB18, &qword_10097AB10, &qword_1007D5480, &unk_1007C67E0);
        v57 = v96;
        ShelfBasedCollectionViewController.shelfLayoutContext(for:)();
        if ((*(v56 + 48))(v57, 1, v14) == 1)
        {
          sub_10002B894(v57, &qword_10097F480, &unk_1007C4AB0);
        }

        else
        {
          v73 = v93;
          (*(v56 + 32))(v93, v57, v14);
          v74 = v91;
          ShelfLayoutContext.shelf.getter();
          swift_getKeyPath();
          v75 = v92;
          v76 = v99;
          ReadOnlyLens.subscript.getter();

          (*(v98 + 8))(v74, v76);
          v77 = v100;
          if ((*(v100 + 88))(v75, v51) == enum case for ShelfBackground.color(_:))
          {
            (*(v77 + 96))(v75, v51);

            v78 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
            v79 = type metadata accessor for ShelfBackgroundStyle();
            (*(*(v79 - 8) + 8))(v75 + v78, v79);
            v80 = objc_opt_self();
            v81 = [v80 fractionalWidthDimension:1.0];
            v82 = [v80 absoluteDimension:2000.0];
            v83 = [objc_opt_self() sizeWithWidthDimension:v81 heightDimension:v82];

            v84 = String._bridgeToObjectiveC()();
            v85 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v83 elementKind:v84 alignment:5 absoluteOffset:{0.0, 2000.0}];

            [v85 setExtendsBoundary:0];
            v86 = v85;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            (*(v103 + 8))(v73, v14);
            return v105;
          }

          else
          {
            (*(v56 + 8))(v73, v14);
            (*(v77 + 8))(v75, v51);
          }
        }
      }
    }
  }

  return v44;
}

uint64_t sub_10056E77C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10056E7E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10056E844()
{
  v1 = v0;
  swift_getObjectType();
  [v0 setTitle:0];
  TodayDiffablePagePresenter.tabTitle.getter();
  if (v2)
  {
    result = [v0 tabBarItem];
    if (!result)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = String._bridgeToObjectiveC()();

    [v4 setTitle:v5];
  }

  v6 = [v0 navigationItem];
  TodayDiffablePagePresenter.pageTitle.getter();
  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v6 setTitle:v8];

  v9 = [v1 navigationItem];
  sub_10073D660();

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  [result bounds];

  sub_10056F08C(&qword_10098C398, type metadata accessor for TodayDiffablePageViewController, &unk_1007C67E0);

  return ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
}

BOOL sub_10056EA58(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v67 = a1;
  v2 = type metadata accessor for DateComponents();
  v70 = *(v2 - 8);
  v71 = v2;
  __chkstk_darwin(v2);
  v65 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v54 - v5;
  v6 = type metadata accessor for Calendar.Identifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar();
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for Calendar.Identifier.gregorian(_:), v6, v11);
  Calendar.init(identifier:)();
  (*(v7 + 8))(v9, v6);
  v14 = sub_10002849C(&qword_10098C3C0, &unk_1007D54F0);
  v15 = type metadata accessor for Calendar.Component();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v61 = 3 * v17;
  v62 = v14;
  v19 = swift_allocObject();
  v59 = xmmword_1007B1E00;
  *(v19 + 16) = xmmword_1007B1E00;
  v20 = *(v16 + 104);
  v60 = enum case for Calendar.Component.year(_:);
  v20(v19 + v18);
  v58 = enum case for Calendar.Component.month(_:);
  v20(v19 + v18 + v17);
  v63 = 2 * v17;
  v57 = enum case for Calendar.Component.day(_:);
  v20(v19 + v18 + 2 * v17);
  sub_100082EBC(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v21 = v66;
  Calendar.dateComponents(_:from:)();
  v22 = v21;

  v23 = DateComponents.year.getter();
  if (v24 & 1) != 0 || (v25 = v23, v67 = DateComponents.month.getter(), (v26) || (v27 = DateComponents.day.getter(), (v28))
  {
    (*(v70 + 8))(v22, v71);
    (*(v68 + 8))(v13, v69);
    return 0;
  }

  v55 = v27;
  v56 = v25;
  v30 = swift_allocObject();
  v62 = v13;
  v31 = v30;
  *(v30 + 16) = v59;
  v32 = v30 + v18;
  (v20)(v30 + v18, v60, v15);
  (v20)(v32 + v17, v58, v15);
  (v20)(v32 + v63, v57, v15);
  sub_100082EBC(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  v33 = v62;
  swift_deallocClassInstance();
  v34 = v65;
  Calendar.dateComponents(_:from:)();

  v35 = DateComponents.year.getter();
  if (v36)
  {
    v37 = v71;
    v38 = v33;
    v39 = *(v70 + 8);
    v39(v34, v71);
    v39(v22, v37);
    (*(v68 + 8))(v38, v69);
    return 0;
  }

  v40 = v35;
  v41 = DateComponents.month.getter();
  if (v42)
  {
    v43 = v71;
    v44 = *(v70 + 8);
    v44(v34, v71);
    v44(v22, v43);
    (*(v68 + 8))(v62, v69);
    return 0;
  }

  v45 = v41;
  v46 = DateComponents.day.getter();
  v48 = v47;
  v49 = *(v70 + 8);
  v50 = v34;
  v51 = v71;
  v49(v50, v71);
  v49(v22, v51);
  (*(v68 + 8))(v62, v69);
  if (v48)
  {
    return 0;
  }

  return v56 < v40 || v67 < v45 || v55 < v46;
}

id sub_10056F038()
{
  v1 = *(v0 + 16);
  [v1 prepare];

  return [v1 impactOccurred];
}

uint64_t sub_10056F08C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void AppPromotionDetailPageContentLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.detailLabelTopSpace.setter(__int128 *a1)
{
  sub_100007000((v1 + 280));

  return sub_100005A38(a1, v1 + 280);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.inlineLearnMoreLabelTopSpace.setter(__int128 *a1)
{
  sub_100007000((v1 + 400));

  return sub_100005A38(a1, v1 + 400);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.inlineLearnMoreLabelBottomSpace.setter(__int128 *a1)
{
  sub_100007000((v1 + 440));

  return sub_100005A38(a1, v1 + 440);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.separatorViewBottomSpace.setter(__int128 *a1)
{
  sub_100007000((v1 + 480));

  return sub_100005A38(a1, v1 + 480);
}

uint64_t sub_10056F3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097B860, &qword_1007B49E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 AppPromotionDetailPageContentLayout.init(metrics:primaryContentContainer:secondaryContentContainer:availabilityLabelView:kindLabel:titleLabel:subtitleView:learnMoreButton:detailLabel:inlineLearnMoreLabel:separatorView:lockupView:showInlineLearnMore:includeSubtitle:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15)
{
  *(a9 + 848) = 0u;
  *(a9 + 864) = 0u;
  *(a9 + 816) = 0u;
  *(a9 + 832) = 0u;
  *(a9 + 800) = 0u;
  memcpy(a9, __src, 0x208uLL);
  sub_100005A38(a2, a9 + 520);
  sub_100005A38(a3, a9 + 560);
  sub_100005A38(a4, a9 + 600);
  sub_100005A38(a5, a9 + 640);
  sub_100005A38(a6, a9 + 680);
  sub_100005A38(a7, a9 + 720);
  sub_10056F3C4(a8, a9 + 840);
  sub_100005A38(a10, a9 + 760);
  sub_10056F3C4(a11, a9 + 800);
  v22 = *(a12 + 16);
  *(a9 + 880) = *a12;
  *(a9 + 896) = v22;
  *(a9 + 912) = *(a12 + 32);
  result = *a13;
  v24 = *(a13 + 16);
  *(a9 + 920) = *a13;
  *(a9 + 936) = v24;
  *(a9 + 952) = *(a13 + 32);
  *(a9 + 960) = a14;
  *(a9 + 961) = a15;
  return result;
}

CGFloat AppPromotionDetailPageContentLayout.measure(toFit:with:)(void *a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v7 = a1;
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v8 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v8)
    {
      sub_10057164C(v7, *(v4 + 960), v11);
      sub_10002A400(v11, v12);
      dispatch thunk of Placeable.measure(toFit:with:)();
      sub_100007000(v11);
      return a2;
    }
  }

  else
  {
  }

  if (UITraitCollection.isSizeClassCompact.getter())
  {
    sub_10056F770(v7, v11, 0.0, 0.0, a2, a3);
  }

  else
  {
    sub_100570178(v7, v11, 0.0, 0.0, a2, a3);
  }

  sub_10002A400(v11, v12);
  dispatch thunk of Placeable.measure(toFit:with:)();
  a2 = v9;
  sub_100007000(v11);
  return a2;
}

uint64_t sub_10056F770@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v90 = a2;
  v91 = type metadata accessor for DisjointStack();
  v87 = *(v91 - 8);
  __chkstk_darwin(v91);
  v85 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v76 - v15;
  __chkstk_darwin(v16);
  v89 = &v76 - v17;
  v94 = type metadata accessor for Margins();
  v88 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for VerticalStack();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  __chkstk_darwin(v26);
  v28 = &v76 - v27;
  __chkstk_darwin(v29);
  v80 = &v76 - v30;
  __chkstk_darwin(v31);
  v81 = &v76 - v32;
  __chkstk_darwin(v33);
  v83 = &v76 - v34;
  __chkstk_darwin(v35);
  v84 = &v76 - v36;
  __chkstk_darwin(v37);
  v95 = &v76 - v38;
  VerticalStack.init(with:)();
  sub_100572FE4(v7, v101);
  v39 = swift_allocObject();
  memcpy((v39 + 16), v101, 0x3C2uLL);
  *(v39 + 984) = a1;
  v40 = a1;
  VerticalStack.adding(_:with:)();
  v41 = v19;

  v43 = v20 + 8;
  v42 = *(v20 + 8);
  v42(v22, v41);
  sub_10002C0AC(v7 + 680, v101);
  sub_1000CB084(v101, &v96);
  v82 = v20;
  if (v97)
  {
    sub_100005A38(&v96, &v98);
    VerticalStack.adding(_:with:)();
    sub_100007000(&v98);
    sub_1000CC370(v101);
    v42(v25, v41);
  }

  else
  {
    sub_1000CC370(v101);
    sub_1000CC370(&v96);
    (*(v20 + 32))(v28, v25, v41);
  }

  sub_100572FE4(v7, v101);
  v44 = swift_allocObject();
  memcpy((v44 + 16), v101, 0x3C2uLL);
  *(v44 + 984) = v40;
  v45 = v40;
  v46 = v80;
  VerticalStack.adding(_:with:)();

  v42(v28, v41);
  sub_100572FE4(v7, v101);
  v47 = swift_allocObject();
  memcpy((v47 + 16), v101, 0x3C2uLL);
  *(v47 + 984) = v45;
  v48 = v45;
  v49 = v81;
  VerticalStack.adding(_:with:)();

  v42(v46, v41);
  sub_100572FE4(v7, v101);
  v50 = swift_allocObject();
  memcpy((v50 + 16), v101, 0x3C2uLL);
  *(v50 + 984) = v48;
  sub_1000CB084(v7 + 840, &v96);
  v51 = v42;
  v79 = v48;
  if (v97)
  {
    sub_100005A38(&v96, &v98);
    v52 = v48;
    v53 = v83;
    VerticalStack.adding(_:with:)();

    sub_100007000(&v98);
    v42(v49, v41);
    v54 = v82;
  }

  else
  {
    v55 = v48;

    sub_1000CC370(&v96);
    v54 = v82;
    v53 = v83;
    (*(v82 + 32))(v83, v49, v41);
  }

  sub_1000CB084(v7 + 880, &v98);
  v56 = v84;
  if (v99)
  {
    sub_100005A38(&v98, v101);
    VerticalStack.adding(_:with:)();
    sub_100007000(v101);
    v51(v53, v41);
  }

  else
  {
    sub_1000CC370(&v98);
    (*(v54 + 32))(v56, v53, v41);
  }

  v57 = v95;
  sub_1000CB084(v7 + 920, &v98);
  v77 = v51;
  v78 = v43;
  v92 = v41;
  if (v99)
  {
    sub_100005A38(&v98, v101);
    VerticalStack.adding(_:with:)();
    sub_100007000(v101);
    v51(v56, v41);
  }

  else
  {
    sub_1000CC370(&v98);
    (*(v54 + 32))(v57, v56, v41);
  }

  v58 = v54;
  sub_10002A400((v7 + 80), *(v7 + 104));
  AnyDimension.value(with:)();
  sub_10002C0AC(v7 + 600, v101);
  v59 = v93;
  Margins.init(insets:child:)();
  v60 = v85;
  DisjointStack.init(with:)();
  v61 = v94;
  v101[3] = v94;
  v101[4] = &protocol witness table for Margins;
  v62 = sub_1000056E0(v101);
  v63 = v88;
  (*(v88 + 16))(v62, v59, v61);
  v64 = v86;
  DisjointStack.inserting(_:at:with:)();
  v65 = v87;
  v66 = *(v87 + 8);
  v67 = v91;
  v66(v60, v91);
  sub_100007000(v101);
  v68 = v92;
  v101[3] = v92;
  v101[4] = &protocol witness table for VerticalStack;
  v69 = sub_1000056E0(v101);
  (*(v58 + 16))(v69, v95, v68);
  v70 = v89;
  DisjointStack.inserting(_:at:with:)();
  v66(v64, v67);
  sub_100007000(v101);
  v99 = v67;
  v100 = &protocol witness table for DisjointStack;
  v71 = sub_1000056E0(&v98);
  (*(v65 + 16))(v71, v70, v67);
  v72 = v94;
  v101[3] = v94;
  v101[4] = &protocol witness table for Margins;
  sub_1000056E0(v101);
  Margins.init(insets:child:)();
  v102.origin.x = a3;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  CGRectGetWidth(v102);
  v73 = type metadata accessor for Resize();
  v74 = v90;
  v90[3] = v73;
  v74[4] = &protocol witness table for Resize;
  sub_1000056E0(v74);
  Resize.init(_:size:)();
  v66(v70, v67);
  (*(v63 + 8))(v93, v72);
  return v77(v95, v92);
}

uint64_t sub_100570178@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v134 = a2;
  v13 = type metadata accessor for Resize.Rule();
  v113 = *(v13 - 8);
  v114 = v13;
  __chkstk_darwin(v13);
  v116 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v110 - v16;
  __chkstk_darwin(v17);
  v112 = &v110 - v18;
  __chkstk_darwin(v19);
  v111 = (&v110 - v20);
  v21 = type metadata accessor for Margins.Placements();
  v130 = *(v21 - 8);
  v131 = v21;
  __chkstk_darwin(v21);
  v129 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for Margins();
  v128 = *(v132 - 8);
  __chkstk_darwin(v132);
  v127 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Pin.Edge();
  v122 = *(v24 - 8);
  v123 = v24;
  __chkstk_darwin(v24);
  v124 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for Pin();
  v133 = *(v135 - 8);
  __chkstk_darwin(v135);
  v138 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for VerticalStack();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v120 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v121 = &v110 - v31;
  __chkstk_darwin(v32);
  v139 = &v110 - v33;
  __chkstk_darwin(v34);
  v141 = &v110 - v35;
  __chkstk_darwin(v36);
  v38 = &v110 - v37;
  __chkstk_darwin(v39);
  v136 = (&v110 - v40);
  __chkstk_darwin(v41);
  v117 = &v110 - v42;
  __chkstk_darwin(v43);
  v137 = &v110 - v44;
  __chkstk_darwin(v45);
  v118 = &v110 - v46;
  __chkstk_darwin(v47);
  v119 = &v110 - v48;
  __chkstk_darwin(v49);
  v140 = &v110 - v50;
  VerticalStack.init(with:)();
  sub_100572FE4(v6, v147);
  v51 = swift_allocObject();
  memcpy((v51 + 16), v147, 0x3C2uLL);
  *(v51 + 984) = a1;
  v52 = a1;
  VerticalStack.adding(_:with:)();

  v53 = v28;
  v56 = v28[1];
  v54 = (v28 + 1);
  v55 = v56;
  (v56)(v38, v27);
  sub_100572FE4(v6, v147);
  v57 = swift_allocObject();
  memcpy((v57 + 16), v147, 0x3C2uLL);
  *(v57 + 984) = v52;
  v58 = v52;
  v59 = v117;
  v60 = v58;
  v61 = v136;
  VerticalStack.adding(_:with:)();
  v62 = v27;

  (v56)(v61, v27);
  sub_10002C0AC((v7 + 85), v147);
  sub_1000CB084(v147, &v142);
  v136 = v53;
  if (v143)
  {
    sub_100005A38(&v142, &v144);
    VerticalStack.adding(_:with:)();
    sub_100007000(&v144);
    sub_1000CC370(v147);
    (v55)(v59, v27);
  }

  else
  {
    sub_1000CC370(v147);
    sub_1000CC370(&v142);
    v53[4](v137, v59, v27);
  }

  sub_100572FE4(v7, v147);
  v63 = swift_allocObject();
  memcpy((v63 + 16), v147, 0x3C2uLL);
  *(v63 + 984) = v60;
  v64 = v60;
  v65 = v118;
  v66 = v137;
  VerticalStack.adding(_:with:)();

  (v55)(v66, v27);
  sub_100572FE4(v7, v147);
  v67 = swift_allocObject();
  memcpy((v67 + 16), v147, 0x3C2uLL);
  *(v67 + 984) = v64;
  v68 = v64;
  v69 = v119;
  VerticalStack.adding(_:with:)();

  (v55)(v65, v62);
  sub_100572FE4(v7, v147);
  v70 = swift_allocObject();
  memcpy((v70 + 16), v147, 0x3C2uLL);
  *(v70 + 984) = v68;
  sub_1000CB084((v7 + 105), &v142);
  v137 = v68;
  if (v143)
  {
    sub_100005A38(&v142, &v144);
    v71 = v68;
    v72 = v140;
    VerticalStack.adding(_:with:)();
    v73 = v72;

    sub_100007000(&v144);
    (v55)(v69, v62);
    v74 = v141;
    v75 = v136;
  }

  else
  {
    v76 = v68;

    sub_1000CC370(&v142);
    v75 = v136;
    v73 = v140;
    v136[4](v140, v69, v62);
    v74 = v141;
  }

  v77 = v75[2];
  v77(v74, v73, v62);
  sub_100572FE4(v7, v147);
  v78 = swift_allocObject();
  memcpy((v78 + 16), v147, 0x3C2uLL);
  sub_1000CB084((v7 + 110), &v142);
  if (v143)
  {
    sub_100005A38(&v142, &v144);
    VerticalStack.add(_:with:)();

    sub_100007000(&v144);
  }

  else
  {

    sub_1000CC370(&v142);
  }

  sub_1000CB084((v7 + 115), &v144);
  v79 = v121;
  v80 = v77;
  if (v145)
  {
    sub_100005A38(&v144, v147);
    VerticalStack.add(_:with:)();
    sub_100007000(v147);
  }

  else
  {
    sub_1000CC370(&v144);
  }

  v81 = v120;
  VerticalStack.init(with:)();
  sub_1000CB084((v7 + 110), &v144);
  if (v145)
  {
    sub_100005A38(&v144, v147);
    VerticalStack.adding(_:with:)();
    sub_100007000(v147);
    (v55)(v81, v62);
  }

  else
  {
    sub_1000CC370(&v144);
    v136[4](v79, v81, v62);
  }

  v82 = v139;
  sub_1000CB084((v7 + 115), &v144);
  v125 = v55;
  v126 = v54;
  if (v145)
  {
    sub_100005A38(&v144, v147);
    VerticalStack.adding(_:with:)();
    v82 = v139;
    sub_100007000(v147);
    (v55)(v79, v62);
  }

  else
  {
    sub_1000CC370(&v144);
    v136[4](v82, v79, v62);
  }

  v147[3] = v62;
  v147[4] = &protocol witness table for VerticalStack;
  v83 = sub_1000056E0(v147);
  v77(v83, v82, v62);
  (*(v122 + 104))(v124, enum case for Pin.Edge.bottomEdge(_:), v123);
  v145 = v62;
  v146 = &protocol witness table for VerticalStack;
  v84 = sub_1000056E0(&v144);
  v77(v84, v140, v62);
  Pin.init(_:to:of:)();
  v148.origin.x = a3;
  v148.origin.y = a4;
  v148.size.width = a5;
  v148.size.height = a6;
  CGRectGetWidth(v148);
  v147[3] = v62;
  v147[4] = &protocol witness table for VerticalStack;
  v85 = sub_1000056E0(v147);
  v86 = v141;
  v80(v85, v141, v62);
  v87 = v127;
  Margins.init(insets:child:)();
  measuringBoundingRect(toFit:)();
  sub_10057312C(&qword_10098C3D0, &type metadata accessor for Margins, &protocol conformance descriptor for Margins);
  v88 = v129;
  v137 = v80;
  v89 = v132;
  dispatch thunk of PrimitiveLayout.layout(relativeTo:with:)();
  sub_10057312C(&qword_10098C3D8, &type metadata accessor for Margins.Placements, &protocol conformance descriptor for Margins.Placements);
  v90 = v131;
  dispatch thunk of PlacementSequence.measure.getter();
  v92 = v91;
  (*(v130 + 8))(v88, v90);
  (*(v128 + 8))(v87, v89);
  v93 = floor(v92);
  v94 = *v7;
  if (*v7 >= v93)
  {
    v99 = v135;
    v145 = v135;
    v146 = &protocol witness table for Pin;
    v100 = sub_1000056E0(&v144);
    v101 = v133;
    (*(v133 + 16))(v100, v138, v99);
    v147[3] = v89;
    v147[4] = &protocol witness table for Margins;
    sub_1000056E0(v147);
    Margins.init(insets:child:)();
    v137 = v62;
    v102 = v111;
    *(v111 + 3) = &type metadata for CGFloat;
    *(v102 + 4) = &protocol witness table for CGFloat;
    *v102 = v94;
    v103 = v114;
    v104 = *(v113 + 104);
    v104(v102, enum case for Resize.Rule.replaced(_:), v114);
    v105 = enum case for Resize.Rule.unchanged(_:);
    v104(v112, enum case for Resize.Rule.unchanged(_:), v103);
    v104(v115, v105, v103);
    v104(v116, v105, v103);
    v106 = type metadata accessor for Resize();
    v107 = v134;
    v134[3] = v106;
    v107[4] = &protocol witness table for Resize;
    sub_1000056E0(v107);
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
    (*(v101 + 8))(v138, v135);
    v108 = v137;
    v109 = v125;
    (v125)(v139, v137);
    (v109)(v141, v108);
    return (v109)(v140, v108);
  }

  else
  {
    v147[3] = v62;
    v147[4] = &protocol witness table for VerticalStack;
    v95 = sub_1000056E0(v147);
    (v137)(v95, v86, v62);
    v96 = v134;
    v134[3] = v89;
    v96[4] = &protocol witness table for Margins;
    sub_1000056E0(v96);
    Margins.init(insets:child:)();
    (*(v133 + 8))(v138, v135);
    v97 = v125;
    (v125)(v139, v62);
    (v97)(v86, v62);
    return (v97)(v140, v62);
  }
}

uint64_t AppPromotionDetailPageContentLayout.place(at:with:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = a1;
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v12 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v12)
    {

      return sub_100571320(v11, a2, a3, a4, a5);
    }
  }

  else
  {
  }

  v14 = UITraitCollection.isSizeClassCompact.getter();
  sub_10002A400((v6 + 520), *(v6 + 544));
  dispatch thunk of Placeable.place(at:with:)();
  if (v14)
  {
    sub_10056F770(v11, v15, a2, a3, a4, a5);
  }

  else
  {
    sub_100570178(v11, v15, a2, a3, a4, a5);
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    CGRectGetMinX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    CGRectGetMinY(v18);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    CGRectGetWidth(v19);
  }

  sub_10002A400(v15, v15[3]);
  dispatch thunk of Placeable.place(at:with:)();
  return sub_100007000(v15);
}

uint64_t sub_100571320(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MinX = CGRectGetMinX(*&a2);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  MinY = CGRectGetMinY(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  Width = CGRectGetWidth(v21);
  v14 = *v5;
  sub_10002A400((v5 + 520), *(v5 + 544));
  dispatch thunk of Placeable.place(at:with:)();
  sub_100571EA4(a1, v19);
  sub_10002A400(v19, v19[3]);
  dispatch thunk of Placeable.place(at:with:)();
  v22.origin.x = MinX;
  v22.origin.y = MinY;
  v22.size.width = Width;
  v22.size.height = v14;
  CGRectGetMaxY(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetWidth(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetHeight(v24);
  v25.origin.x = MinX;
  v25.origin.y = MinY;
  v25.size.width = Width;
  v25.size.height = v14;
  CGRectGetMaxY(v25);
  v15 = *(v5 + 960);
  if ((v15 & 1) == 0)
  {
    sub_10057164C(a1, 1, v17);
    sub_10002A400(v17, v18);
    dispatch thunk of Placeable.place(at:with:)();
    sub_100007000(v17);
  }

  sub_10057164C(a1, v15, v17);
  sub_10002A400((v5 + 560), *(v5 + 584));
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400(v17, v18);
  dispatch thunk of Placeable.place(at:with:)();
  sub_100007000(v17);
  return sub_100007000(v19);
}

uint64_t sub_100571598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002A400((a2 + 240), *(a2 + 264));
  AnyDimension.value(with:)();
  VerticalStack.Properties.topSpacing.setter();
  return VerticalStack.Properties.shouldSkip.setter();
}

uint64_t sub_10057164C@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v58 = a2;
  v62 = a3;
  v6 = type metadata accessor for VerticalStack();
  v65 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v57[-v10];
  __chkstk_darwin(v12);
  v14 = &v57[-v13];
  __chkstk_darwin(v15);
  v63 = &v57[-v16];
  __chkstk_darwin(v17);
  v64 = &v57[-v18];
  __chkstk_darwin(v19);
  v59 = &v57[-v20];
  __chkstk_darwin(v21);
  v60 = &v57[-v22];
  *&v24 = __chkstk_darwin(v23).n128_u64[0];
  v26 = &v57[-v25];
  v27 = [a1 preferredContentSizeCategory];
  if (qword_10096E958 != -1)
  {
    swift_once();
  }

  v28 = static UIContentSizeCategory.>= infix(_:_:)();

  VerticalStack.init(with:)();
  if (v28)
  {
    sub_10002C0AC(v4 + 680, v69);
  }

  else
  {
    memset(v69, 0, 40);
  }

  v61 = v26;
  sub_1000CB084(v69, &v70);
  if (v71)
  {
    sub_100005A38(&v70, &v72);
    VerticalStack.adding(_:with:)();
    sub_100007000(&v72);
    sub_1000CC370(v69);
    v29 = v65;
    (*(v65 + 8))(v8, v6);
  }

  else
  {
    sub_1000CC370(v69);
    sub_1000CC370(&v70);
    v29 = v65;
    (*(v65 + 32))(v11, v8, v6);
  }

  sub_100572FE4(v4, v69);
  v30 = swift_allocObject();
  memcpy((v30 + 16), v69, 0x3C2uLL);
  *(v30 + 978) = v28 & 1;
  *(v30 + 984) = a1;
  v31 = a1;
  VerticalStack.adding(_:with:)();

  v32 = *(v29 + 8);
  v32(v11, v6);
  sub_100572FE4(v4, v69);
  v33 = swift_allocObject();
  memcpy((v33 + 16), v69, 0x3C2uLL);
  *(v33 + 984) = v31;
  v34 = v31;
  VerticalStack.adding(_:with:)();

  v66 = v32;
  v32(v14, v6);
  v35 = v58;
  if (v58)
  {
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
  }

  else
  {
    sub_1000CB084(v4 + 840, &v72);
  }

  v37 = v59;
  v36 = v60;
  sub_100572FE4(v4, v69);
  v38 = swift_allocObject();
  memcpy((v38 + 16), v69, 0x3C2uLL);
  *(v38 + 984) = v34;
  sub_1000CB084(&v72, &v67);
  if (v68)
  {
    sub_100005A38(&v67, &v70);
    v39 = v34;
    v40 = v63;
    VerticalStack.adding(_:with:)();

    sub_100007000(&v70);
    sub_1000CC370(&v72);
    v66(v40, v6);
    v41 = v65;
    if (v35)
    {
LABEL_14:
      sub_1000CB084(v4 + 800, &v72);
      goto LABEL_17;
    }
  }

  else
  {
    v42 = v34;

    sub_1000CC370(&v72);
    sub_1000CC370(&v67);
    v41 = v65;
    (*(v65 + 32))(v64, v63, v6);
    if (v35)
    {
      goto LABEL_14;
    }
  }

  v74 = 0;
  v72 = 0u;
  v73 = 0u;
LABEL_17:
  sub_100572FE4(v4, v69);
  v43 = swift_allocObject();
  memcpy((v43 + 16), v69, 0x3C2uLL);
  *(v43 + 984) = v34;
  sub_1000CB084(&v72, &v67);
  if (v68)
  {
    sub_100005A38(&v67, &v70);
    v44 = v34;
    v45 = v64;
    VerticalStack.adding(_:with:)();

    sub_100007000(&v70);
    sub_1000CC370(&v72);
    v66(v45, v6);
  }

  else
  {
    v46 = v34;

    sub_1000CC370(&v72);
    sub_1000CC370(&v67);
    (*(v41 + 32))(v37, v64, v6);
  }

  sub_100572FE4(v4, v69);
  v47 = swift_allocObject();
  memcpy((v47 + 16), v69, 0x3C2uLL);
  *(v47 + 984) = v34;
  sub_1000CB084(v4 + 880, &v70);
  if (v71)
  {
    sub_100005A38(&v70, &v72);
    v48 = v34;
    VerticalStack.adding(_:with:)();

    sub_100007000(&v72);
    v49 = v37;
    v50 = v66;
    v66(v49, v6);
  }

  else
  {
    v51 = v34;

    sub_1000CC370(&v70);
    (*(v41 + 32))(v36, v37, v6);
    v50 = v66;
  }

  sub_1000CB084(v4 + 920, &v72);
  v52 = v61;
  if (*(&v73 + 1))
  {
    sub_100005A38(&v72, v69);
    VerticalStack.adding(_:with:)();
    sub_100007000(v69);
    v50(v36, v6);
  }

  else
  {
    sub_1000CC370(&v72);
    (*(v41 + 32))(v52, v36, v6);
  }

  v69[3] = v6;
  v69[4] = &protocol witness table for VerticalStack;
  v53 = sub_1000056E0(v69);
  (*(v41 + 16))(v53, v52, v6);
  v54 = type metadata accessor for Margins();
  v55 = v62;
  v62[3] = v54;
  v55[4] = &protocol witness table for Margins;
  sub_1000056E0(v55);
  Margins.init(insets:child:)();
  return (v50)(v52, v6);
}

uint64_t sub_100571EA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v4;
  v75 = a2;
  v72 = type metadata accessor for Resize.Rule();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v68 = (&v56 - v9);
  __chkstk_darwin(v10);
  v67 = (&v56 - v11);
  __chkstk_darwin(v12);
  v65 = (&v56 - v13);
  v14 = type metadata accessor for DisjointStack();
  v63 = *(v14 - 8);
  v64 = v14;
  __chkstk_darwin(v14);
  v62 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Resize();
  v73 = *(v16 - 8);
  v74 = v16;
  __chkstk_darwin(v16);
  v71 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for VerticalStack();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  __chkstk_darwin(v25);
  v57 = &v56 - v26;
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v61 = &v56 - v29;
  v30 = [a1 preferredContentSizeCategory];
  if (qword_10096E958 != -1)
  {
    swift_once();
  }

  v31 = static UIContentSizeCategory.>= infix(_:_:)();

  VerticalStack.init(with:)();
  sub_100572FE4(v5, v81);
  v32 = swift_allocObject();
  memcpy((v32 + 16), v81, 0x3C2uLL);
  *(v32 + 984) = a1;
  v33 = a1;
  VerticalStack.adding(_:with:)();

  v60 = v19;
  v36 = *(v19 + 8);
  v34 = v19 + 8;
  v35 = v36;
  v36(v21, v18);
  sub_100572FE4(v5, v81);
  v37 = swift_allocObject();
  *(v37 + 16) = (v31 & 1) == 0;
  memcpy((v37 + 24), v81, 0x3C2uLL);
  *(v37 + 992) = v33;
  v38 = v33;
  v39 = v57;
  VerticalStack.adding(_:with:)();

  v36(v24, v18);
  v66 = v5;
  v40 = v39;
  if (v31)
  {
    memset(v81, 0, 40);
  }

  else
  {
    sub_10002C0AC(v5 + 680, v81);
  }

  sub_1000CB084(v81, &v76);
  v41 = v60;
  v42 = v61;
  v58 = v35;
  v59 = v34;
  if (v77)
  {
    sub_100005A38(&v76, v78);
    VerticalStack.adding(_:with:)();
    sub_100007000(v78);
    sub_1000CC370(v81);
    v35(v40, v18);
  }

  else
  {
    sub_1000CC370(v81);
    sub_1000CC370(&v76);
    (*(v41 + 32))(v42, v40, v18);
  }

  v43 = v62;
  DisjointStack.init(with:)();
  v79 = v18;
  v80 = &protocol witness table for VerticalStack;
  v44 = sub_1000056E0(v78);
  (*(v41 + 16))(v44, v42, v18);
  v45 = v64;
  v81[3] = v64;
  v81[4] = &protocol witness table for DisjointStack;
  sub_1000056E0(v81);
  DisjointStack.inserting(_:at:with:)();
  (*(v63 + 8))(v43, v45);
  sub_100007000(v78);
  v46 = v65;
  *v65 = sub_100572824;
  v46[1] = 0;
  v64 = v18;
  v47 = *(v70 + 104);
  v48 = v72;
  v47(v46, enum case for Resize.Rule.recalculated(_:), v72);
  v49 = enum case for Resize.Rule.unchanged(_:);
  v47(v67, enum case for Resize.Rule.unchanged(_:), v48);
  v47(v68, v49, v48);
  v47(v69, v49, v48);
  v50 = v71;
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  v51 = v74;
  v79 = v74;
  v80 = &protocol witness table for Resize;
  v52 = sub_1000056E0(v78);
  v53 = v73;
  (*(v73 + 16))(v52, v50, v51);
  v81[3] = type metadata accessor for Margins();
  v81[4] = &protocol witness table for Margins;
  sub_1000056E0(v81);
  Margins.init(insets:child:)();
  v54 = v75;
  v75[3] = v51;
  v54[4] = &protocol witness table for Resize;
  sub_1000056E0(v54);
  Resize.init(_:size:)();
  (*(v53 + 8))(v50, v51);
  return v58(v42, v64);
}

uint64_t sub_100572668(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    sub_10002A400(a3 + 20, a3[23]);
    AnyDimension.value(with:)();
  }

  return VerticalStack.Properties.bottomSpacing.setter();
}

uint64_t sub_1005726F0(uint64_t a1, void (*a2)(void *))
{
  v3 = type metadata accessor for DisjointStack.EdgePosition();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7[3] = &type metadata for Double;
  v7[4] = &protocol witness table for Double;
  *v7 = 0;
  v8 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v9 = *(v4 + 104);
  (v9)(v7, enum case for DisjointStack.EdgePosition.anchored(_:), v3, v5);
  a2(v7);
  v7[3] = &type metadata for Double;
  v7[4] = &protocol witness table for Double;
  *v7 = 0;
  v9(v7, v8, v3);
  return DisjointStack.Properties.leadingEdge.setter();
}

uint64_t sub_10057282C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  VerticalStack.Properties.shouldSkip.setter();
  if (a3)
  {
    sub_10002A400((a2 + 240), *(a2 + 264));
    AnyDimension.value(with:)();
  }

  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_1005728D8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10002A400(a2 + 50, a2[53]);
  AnyDimension.value(with:)();
  VerticalStack.Properties.topSpacing.setter();
  sub_10002A400(a2 + 55, a2[58]);
  AnyDimension.value(with:)();
  return VerticalStack.Properties.bottomSpacing.setter();
}

uint64_t sub_1005729A8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10002A400(a2 + 60, a2[63]);
  AnyDimension.value(with:)();
  return VerticalStack.Properties.bottomSpacing.setter();
}

uint64_t sub_100572A28(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10002A400(a2 + 5, a2[8]);
  AnyDimension.value(with:)();
  return VerticalStack.Properties.bottomSpacing.setter();
}

uint64_t sub_100572AA8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10002A400(a2 + 20, a2[23]);
  AnyDimension.value(with:)();
  return VerticalStack.Properties.bottomSpacing.setter();
}

uint64_t sub_100572B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VerticalStack.Properties.shouldSkip.setter();
  sub_10002A400((a2 + 240), *(a2 + 264));
  AnyDimension.value(with:)();
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_100572BC8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10002A400(a2 + 35, a2[38]);
  AnyDimension.value(with:)();
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_100572C48(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10002A400(a2 + 40, a2[43]);
  AnyDimension.value(with:)();
  VerticalStack.Properties.topSpacing.setter();
  sub_10002A400(a2 + 45, a2[48]);
  AnyDimension.value(with:)();
  return VerticalStack.Properties.bottomSpacing.setter();
}

uint64_t sub_100572D28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 962))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100572D70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 952) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 960) = 0;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 962) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 962) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100572EC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 520))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100572F10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 504) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 520) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 520) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10057312C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100573188(void *a1)
{
  if (*v1 == *a1)
  {
    v2 = v1;
    if (static AnyHashable.== infix(_:_:)())
    {
      type metadata accessor for ActionDebugSetting();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v4 = result;
      v5 = *(result + 56) == v2[7] && *(result + 64) == v2[8];
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = v4[10];
        v7 = v2[10];
        if (v6)
        {
          if (!v7 || (v4[9] != v2[9] || v6 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }

LABEL_16:
          v8 = v4[11];
          if (v8)
          {

            v10 = v8(v9);
            v12 = v11;
            v13 = v2[11];
            if (v13)
            {
              v14 = v10;
              v15 = v13();
              v17 = v16;
              if (v12)
              {
                if (v16)
                {
                  if (v14 != v15 || v12 != v16)
                  {
                    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    return v21 & 1;
                  }

                  goto LABEL_32;
                }

                goto LABEL_28;
              }

LABEL_25:

              if (!v17)
              {
                return 1;
              }

              goto LABEL_29;
            }

            if (v11)
            {
LABEL_28:

LABEL_29:

              return 0;
            }
          }

          else
          {
            v18 = v2[11];

            if (v18)
            {
              v18(v19);
              v17 = v20;
              goto LABEL_25;
            }
          }

LABEL_32:

          return 1;
        }

        if (!v7)
        {
          goto LABEL_16;
        }
      }
    }
  }

  return 0;
}

double sub_100573398(uint64_t a1, __n128 a2)
{
  AnyHashable.hash(into:)();
  String.hash(into:)();
  if (*(v2 + 80))
  {
    Hasher._combine(_:)(1u);
    v3 = String.hash(into:)();
    v4 = *(v2 + 88);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v4 = *(v2 + 88);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  v4(v3);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_8;
  }

LABEL_7:
  Hasher._combine(_:)(0);
LABEL_8:

  return result;
}