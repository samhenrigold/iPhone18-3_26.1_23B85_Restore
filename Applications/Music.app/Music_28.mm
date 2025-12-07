void *sub_10033DAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v6 = (v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v8 = v28 - v7;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v12 = v28 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_10033F820(a4);
    v15 = type metadata accessor for IndexPath();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    sub_10033B470(v12);
    sub_1000095E8(v12, &unk_10118BCE0, &qword_100EC6450);
    v28[0] = *(a4 + 16);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    sub_10033F418(v14 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties, v6, type metadata accessor for MetricsPageProperties);
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v16, v18, 14, 44, v8, 0, 0, 12, v10, 0, 0, 0xFF00u, v6, 0);
    v20 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v21 = sub_10053771C();
    v23 = v22;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v24 = qword_101218AD0;
    v25 = GroupActivitiesManager.hasJoined.getter();
    v26 = GroupActivitiesManager.participantsCount.getter();
    v27 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v20) + 0xB8))(v10, v21, v23, v25 & 1, v26, *(v24 + v27));

    return sub_10033F754(v10, type metadata accessor for MetricsEvent.Click);
  }

  return result;
}

void sub_10033DF7C(uint64_t a1, char *a2)
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v4 = &aBlock[-1] - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
  __chkstk_darwin();
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&a2[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager];
  if (v12)
  {
    swift_beginAccess();
    v13 = *(v12 + 72);
    if (*(v13 + 16))
    {
      sub_10033F418(v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v11, type metadata accessor for Lyrics.TextLine);
      v14 = *&a2[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource];
      if (!v14)
      {
LABEL_12:
        __break(1u);
        return;
      }

      v15 = v14;
      dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_10033F754(v11, type metadata accessor for Lyrics.TextLine);
        sub_1000095E8(v4, &unk_10118BCE0, &qword_100EC6450);
        return;
      }

      (*(v6 + 32))(v8, v4, v5);
      sub_100339E90(v11);
      v17 = v16;
      v18 = sub_100338DE4();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v20 = [v18 layoutAttributesForItemAtIndexPath:isa];

      if (v20)
      {
        v27 = v6;
        v21 = objc_opt_self();
        v22 = swift_allocObject();
        v22[2] = a2;
        v22[3] = 0;
        v22[4] = v17;
        v23 = swift_allocObject();
        *(v23 + 16) = sub_10033F3B8;
        *(v23 + 24) = v22;
        aBlock[4] = sub_100029B6C;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100029B9C;
        aBlock[3] = &unk_1010A77A0;
        v24 = _Block_copy(aBlock);
        v25 = a2;

        [v21 performWithoutAnimation:v24];
        _Block_release(v24);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          [v20 frame];
          CGRectGetMinY(v29);
          [v20 frame];
          CGRectGetWidth(v30);
          [v20 frame];
          CGRectGetHeight(v31);

          (*(v27 + 8))(v8, v5);
          sub_10033F754(v11, type metadata accessor for Lyrics.TextLine);

          return;
        }

        __break(1u);
        goto LABEL_12;
      }

      (*(v6 + 8))(v8, v5);
      sub_10033F754(v11, type metadata accessor for Lyrics.TextLine);
    }
  }
}

uint64_t sub_10033E484(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_10033F338;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010A7660;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000296C8(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_10002489C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

void sub_10033E754(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v5 = &v76 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v76 - v10;
  __chkstk_darwin();
  v13 = &v76 - v12;
  v14 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
  __chkstk_darwin();
  v90 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager);
  if (!v16)
  {
    return;
  }

  swift_beginAccess();
  v17 = *(v16 + 72);
  if (!*(v17 + 16))
  {
    return;
  }

  v18 = v90;
  sub_10033F418(v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v90, type metadata accessor for Lyrics.TextLine);
  v19 = *(a1 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource);
  if (!v19)
  {
    goto LABEL_45;
  }

  v20 = v19;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10033F754(v18, type metadata accessor for Lyrics.TextLine);
    sub_1000095E8(v5, &unk_10118BCE0, &qword_100EC6450);
    return;
  }

  v80 = a2;
  (*(v7 + 32))(v13, v5, v6);
  v21 = sub_100338DE4();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v23 = a1;
  v24 = [v21 cellForItemAtIndexPath:isa];

  v83 = v24;
  if (!v24)
  {
    (*(v7 + 8))(v13, v6);
    sub_10033F754(v18, type metadata accessor for Lyrics.TextLine);
    return;
  }

  v87 = v9;
  v92 = v13;
  v88 = v7;
  v25 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView;
  v26 = [*(v23 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView) indexPathsForVisibleItems];
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v77 = v27;
  v28 = *(v27 + 16);
  v96 = v23;
  v91 = v25;
  if (v28)
  {
    v94 = *(v88 + 16);
    v29 = v77 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
    v93 = *(v88 + 72);
    v95 = (v88 + 16);
    v30 = (v88 + 8);
    v31 = v28;
    v86 = v6;
    v94(v11, v29, v6);
    while (1)
    {
      v32 = *(v96 + v25);
      v33 = IndexPath._bridgeToObjectiveC()().super.isa;
      v34 = [v32 cellForItemAtIndexPath:v33];

      if (v34)
      {
        _s8LineCellCMa();
        v35 = swift_dynamicCastClass();
        if (v35)
        {
          v36 = v35;
          v37 = IndexPath.item.getter();
          if (v37 >= IndexPath.item.getter() && (v38 = IndexPath.item.getter(), IndexPath.item.getter() >= v38))
          {
            [v36 setHidden:1];
          }

          else
          {
            v39 = v34;
            [v36 frame];
            [v36 setFrame:?];
            [v36 setAlpha:0.0];
          }

          v6 = v86;
          v25 = v91;
        }
      }

      (*v30)(v11, v6);
      v29 += v93;
      if (!--v31)
      {
        break;
      }

      v94(v11, v29, v6);
    }
  }

  v40 = swift_allocObject();
  v82 = v40;
  *(v40 + 16) = 0;
  v41 = (v40 + 16);
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  if (!v28)
  {

    v49 = *(v88 + 8);
    v47 = v92;
LABEL_40:
    v49(v47, v6);
    sub_10033F754(v90, type metadata accessor for Lyrics.TextLine);

    return;
  }

  v42 = v88;
  v43 = v77 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
  v78 = v41;
  swift_beginAccess();
  v45 = *(v42 + 16);
  v42 += 16;
  v44 = v45;
  v79 = &v99;
  v95 = (v42 - 8);
  v46 = *(v42 + 56);
  v47 = v92;
  v48 = v87;
  v88 = v42;
  v93 = v45;
  v89 = v46;
  v45(v87, v43, v6);
  while (1)
  {
    v50 = IndexPath.item.getter();
    if (v50 == IndexPath.item.getter())
    {
      v49 = *v95;
      (*v95)(v48, v6);
      goto LABEL_22;
    }

    v94 = v28;
    v51 = v6;
    v52 = v96;
    v53 = v91;
    v54 = *(v96 + v91);
    v55 = IndexPath._bridgeToObjectiveC()().super.isa;
    v56 = [v54 layoutAttributesForItemAtIndexPath:v55];

    if (!v56)
    {
      v49 = *v95;
      v6 = v51;
      (*v95)(v48, v51);
LABEL_36:
      v44 = v93;
      v28 = v94;
      v46 = v89;
      goto LABEL_22;
    }

    v57 = *(v52 + v53);
    v58 = v48;
    v59 = IndexPath._bridgeToObjectiveC()().super.isa;
    v60 = [v57 cellForItemAtIndexPath:v59];

    if (!v60)
    {
      v49 = *v95;
      v6 = v51;
      (*v95)(v58, v51);

      v47 = v92;
      v48 = v58;
      goto LABEL_36;
    }

    v6 = v51;
    if (qword_10117F5C0 != -1)
    {
      swift_once();
    }

    v61 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_101218A90 timingParameters:0.0];
    v62 = swift_allocObject();
    *(v62 + 16) = v60;
    *(v62 + 24) = v56;
    v101 = sub_10033F340;
    v102 = v62;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v99 = sub_10002BC98;
    v100 = &unk_1010A76D8;
    v63 = _Block_copy(&aBlock);
    v85 = v60;
    v84 = v56;

    [v61 addAnimations:v63];
    _Block_release(v63);
    v64 = swift_allocObject();
    v65 = v82;
    v64[2] = v81;
    v64[3] = v65;
    v66 = v83;
    v64[4] = v80;
    v64[5] = v66;
    v101 = sub_10033F3AC;
    v102 = v64;
    aBlock = _NSConcreteStackBlock;
    v98 = 1107296256;
    v67 = v61;
    v99 = sub_100338AB8;
    v100 = &unk_1010A7728;
    v68 = _Block_copy(&aBlock);

    v69 = v66;

    [v61 addCompletion:v68];
    _Block_release(v68);
    v70 = *(v65 + 16);
    v71 = __OFADD__(v70, 1);
    v72 = v70 + 1;
    v28 = v94;
    if (v71)
    {
      break;
    }

    *v78 = v72;
    v73 = IndexPath.item.getter();
    v74 = IndexPath.item.getter();
    v75 = v73 - v74;
    if (__OFSUB__(v73, v74))
    {
      goto LABEL_43;
    }

    v44 = v93;
    v46 = v89;
    if (v75 < 0)
    {
      v71 = __OFSUB__(0, v75);
      v75 = v74 - v73;
      if (v71)
      {
        goto LABEL_44;
      }
    }

    [v67 startAnimationAfterDelay:v75 * 0.04];

    v49 = *v95;
    v48 = v87;
    (*v95)(v87, v6);
    v47 = v92;
LABEL_22:
    v43 += v46;
    if (!--v28)
    {

      goto LABEL_40;
    }

    v44(v48, v43, v6);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

id sub_10033F260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = swift_beginAccess();
  v10 = *(a2 + 16);
  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    *(a2 + 16) = v11;
    result = swift_beginAccess();
    if (v11 == *(a3 + 16))
    {
      [*(a4 + 32) removeFromSuperview];
      return [a5 setHidden:0];
    }
  }

  return result;
}

id sub_10033F340()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v2 frame];
  [v1 setFrame:?];
  [v2 alpha];

  return [v1 setAlpha:?];
}

void sub_10033F3B8()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_100338DE4();
  [v4 setContentOffset:{v2, v3}];

  *(v1 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_didAdjustInitialContentOffset) = 1;
}

uint64_t sub_10033F418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_10033F480(uint64_t a1)
{
  v3 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10033DAB0(a1, v4, v5, v6);
}

uint64_t sub_10033F4F4(void *a1, uint64_t a2)
{
  sub_10010FC20(&qword_101184020, &unk_100EC76D0);
  __chkstk_darwin();
  v5 = &v16 - v4;
  v6 = type metadata accessor for Lyrics.TextLine(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8LineCellCMa();
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = *(v2 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource);
    if (v11)
    {
      v12 = result;
      v13 = a1;
      v14 = v11;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        return sub_1000095E8(v5, &qword_101184020, &unk_100EC76D0);
      }

      else
      {
        sub_1001EC250(v5, v9);
        *(v12 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_position) = sub_10033ABD0(v9);
        sub_1007F3A40();
        v15 = sub_10033A9D4(v9);
        if (*(v12 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state) != v15)
        {
          *(v12 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state) = v15;
          sub_1007F31FC();
        }

        return sub_10033F754(v9, type metadata accessor for Lyrics.TextLine);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10033F754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10033F820(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&qword_10118BE60, &qword_100EC7790);
  __chkstk_darwin();
  v5 = &v69 - v4;
  v75 = type metadata accessor for Lyrics.TextLine(0);
  v6 = *(v75 - 8);
  __chkstk_darwin();
  v70 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v69 - v8;
  __chkstk_darwin();
  v11 = &v69 - v10;
  __chkstk_darwin();
  v13 = &v69 - v12;
  __chkstk_darwin();
  v15 = &v69 - v14;
  v16 = swift_beginAccess();
  v17 = v1[9];
  v18 = *(v17 + 16);
  if (!v18)
  {
    goto LABEL_29;
  }

  v69 = v5;
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v73 = v15;
  v74 = v19;
  v20 = v6;
  v21 = v17 + v19;
  sub_1001EBDD4(v17 + v19, v15);
  v71 = v20;
  v72 = v13;
  v22 = *(v20 + 72);
  sub_1001EBDD4(v21 + v22 * (v18 - 1), v13);

  v23 = v18 + 1;
  while (--v23)
  {
    v24 = static Lyrics.TextLine.== infix(_:_:)(v21, a1);
    v21 += v22;
    if (v24)
    {

      goto LABEL_28;
    }
  }

  swift_beginAccess();
  v25 = v2[10];

  v26 = sub_10048C144(a1, v25);

  if ((v26 & 1) == 0)
  {
LABEL_28:
    sub_1003407A4(v72);
    v16 = sub_1003407A4(v73);
    v6 = v71;
LABEL_29:
    (*(a1 + *(v75 + 64)))(v16);
    v44 = v6;
    v45 = String.count.getter();

    v2[8] = v45;
    sub_10010FC20(&qword_10118BE68, &qword_100EC7798);
    v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_100EBC6B0;
    sub_1001EBDD4(a1, v47 + v46);
    v2[9] = v47;

    v48 = v2[6];
    if (v48)
    {
      v49 = v2[7];

      v48(v50);
      sub_100020438(v48, v49);
    }

    goto LABEL_51;
  }

  v27 = *(a1 + 16);
  v28 = *(v73 + 2);
  if (v27 >= v28)
  {
    v51 = *(v72 + 2);
    v38 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (!v38)
    {
      v53 = 0;
      v54 = _swiftEmptyArrayStorage;
      v55 = v70;
      v56 = v52 == v27;
      if (v52 >= v27)
      {
        goto LABEL_35;
      }

LABEL_33:
      v57 = v52 + 1;
      if ((v52 & 0x8000000000000000) != 0)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
      }

      else
      {
        while (1)
        {
          v59 = v2[5];
          if (v52 >= *(v59 + 16))
          {
            break;
          }

          v60 = sub_1001EBDD4(v59 + v74 + v52 * v22, v9);
          (*&v9[*(v75 + 64)])(v60);
          v61 = String.count.getter();

          v62 = v2[8];
          v38 = __OFADD__(v62, v61);
          v63 = v62 + v61;
          if (v38)
          {
            goto LABEL_60;
          }

          v2[8] = v63;
          sub_1001EBDD4(v9, v55);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_10049930C(0, v54[2] + 1, 1, v54);
          }

          v65 = v54[2];
          v64 = v54[3];
          if (v65 >= v64 >> 1)
          {
            v54 = sub_10049930C((v64 > 1), v65 + 1, 1, v54);
          }

          v54[2] = v65 + 1;
          sub_1001EC250(v55, v54 + v74 + v65 * v22);
          sub_1003407A4(v9);
          v52 = v57;
          v56 = v57 == v27;
          if (v57 < v27)
          {
            goto LABEL_33;
          }

LABEL_35:
          v58 = !v56;
          if ((v58 | v53))
          {
            swift_beginAccess();
            sub_1001240CC(v54);
            swift_endAccess();
            v66 = v2[6];
            if (v66)
            {
              goto LABEL_49;
            }

            goto LABEL_50;
          }

          v53 = 1;
          v57 = v27;
          if ((v52 & 0x8000000000000000) != 0)
          {
            goto LABEL_56;
          }
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
    }

    __break(1u);
    goto LABEL_62;
  }

  v29 = 0;
  v30 = v28 - 1;
  v31 = _swiftEmptyArrayStorage;
  v32 = v69;
  while (1)
  {
    if (v27 < v30)
    {
      v33 = v30 - 1;
      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }

      goto LABEL_17;
    }

    if ((v30 != v27) | v29 & 1)
    {
      break;
    }

    v29 = 1;
    v33 = v27;
    if ((v30 & 0x8000000000000000) != 0)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

LABEL_17:
    v34 = v2[5];
    if (v30 >= *(v34 + 16))
    {
      goto LABEL_57;
    }

    v35 = sub_1001EBDD4(v34 + v74 + v30 * v22, v11);
    (*&v11[*(v75 + 64)])(v35);
    v36 = String.count.getter();

    v37 = v2[8];
    v38 = __OFADD__(v37, v36);
    v39 = v37 + v36;
    if (v38)
    {
      goto LABEL_58;
    }

    v2[8] = v39;
    sub_1001EBDD4(v11, v32);
    v40 = v31[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v40 >= v31[3] >> 1)
    {
      v31 = sub_10049930C(isUniquelyReferenced_nonNull_native, v40 + 1, 1, v31);
    }

    v42 = v31 + v74;
    swift_arrayDestroy();
    v43 = v31[2];
    if (v22 < 0 || v22 >= v43 * v22)
    {
      swift_arrayInitWithTakeFrontToBack();
      ++v31[2];
      if (v22 > 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v22)
      {
        swift_arrayInitWithTakeBackToFront();
        ++v31[2];
LABEL_10:
        sub_1001EBDD4(v32, v42);
        goto LABEL_11;
      }

      v31[2] = v43 + 1;
    }

LABEL_11:
    sub_100340864(v32);
    sub_1003407A4(v11);
    v30 = v33;
  }

  swift_beginAccess();
  sub_1003BBB24(0, 0, v31);
  swift_endAccess();

  v66 = v2[6];
  if (!v66)
  {
    goto LABEL_50;
  }

LABEL_49:
  v67 = v2[7];

  v66(v68);
  sub_100020438(v66, v67);
LABEL_50:
  sub_1003407A4(v72);
  sub_1003407A4(v73);
LABEL_51:
  if (v2[2] >= v2[8])
  {
    sub_10034017C();
    return;
  }

LABEL_62:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10033FF60(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Lyrics.TextLine(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v22[-v8];
  swift_beginAccess();
  v10 = v2[9];
  v11 = *(v10 + 16);

  if (v11)
  {
    v12 = 0;
    while (1)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_13;
      }

      sub_1001EBDD4(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v9);
      v13 = static Lyrics.TextLine.== infix(_:_:)(v9, a1);
      sub_1003407A4(v9);
      if (v13)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_6;
      }
    }

    swift_beginAccess();
    sub_1004F401C(v12, v7);
    sub_1003407A4(v7);
    v14 = swift_endAccess();
    v15 = v2[6];
    if (v15)
    {
      v16 = v2[7];

      v15(v17);
      v14 = sub_100020438(v15, v16);
    }

    (*(a1 + *(v4 + 64)))(v14);
    v18 = String.count.getter();

    v19 = v2[8];
    v20 = __OFSUB__(v19, v18);
    v21 = v19 - v18;
    if (!v20)
    {
      v2[8] = v21;
      goto LABEL_11;
    }

LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_6:

LABEL_11:
    sub_10034017C();
  }
}

void sub_10034017C()
{
  v1 = v0;
  v56 = type metadata accessor for Lyrics.TextLine(0);
  v2 = *(v56 - 8);
  __chkstk_darwin();
  v54 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v48 - v4;
  __chkstk_darwin();
  v7 = &v48 - v6;
  __chkstk_darwin();
  v9 = &v48 - v8;
  __chkstk_darwin();
  v11 = &v48 - v10;
  __chkstk_darwin();
  v13 = &v48 - v12;
  swift_beginAccess();
  v1[10] = &_swiftEmptySetSingleton;

  swift_beginAccess();
  v14 = v1[9];
  v15 = *(v14 + 16);
  if (!v15)
  {
    v57 = v1[5];

    v44 = sub_10010FC20(&qword_101184038, &unk_100EBFA10);
    v45 = sub_100340800();
    v46 = Sequence.exclude(_:)(sub_1003408CC, 0, v44, v45);

    v47 = sub_100670070(v46);

    v1[10] = v47;

    return;
  }

  v52 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v16 = v14 + v52;
  sub_1001EBDD4(v14 + v52, v13);
  v55 = *(v2 + 72);
  v49 = v11;
  sub_1001EBDD4(v16 + v55 * (v15 - 1), v11);
  v17 = *(v13 + 2);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v48 = v13;
  LODWORD(v53) = 0;
  v20 = v1[8];
  do
  {
    if (v19 <= 0)
    {
      if ((v19 != 0) | v53 & 1)
      {
        goto LABEL_15;
      }

      v21 = 0;
      LODWORD(v53) = 1;
    }

    else
    {
      v21 = v19 - 1;
    }

    v22 = v1[5];
    if (v19 >= *(v22 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v23 = sub_1001EBDD4(v22 + v52 + v19 * v55, v9);
    v24 = &v9[*(v56 + 64)];
    v25 = *v24;
    (*v24)(v23);
    v26 = String.count.getter();

    if (__OFADD__(v20, v26))
    {
      goto LABEL_33;
    }

    if (v1[2] < v20 + v26)
    {
      goto LABEL_14;
    }

    sub_1001EBDD4(v9, v5);
    swift_beginAccess();
    sub_1003B3560(v7, v5);
    sub_1003407A4(v7);
    v27 = swift_endAccess();
    v25(v27);
    v28 = String.count.getter();

    sub_1003407A4(v9);
    v19 = v21;
    v18 = __OFADD__(v20, v28);
    v20 += v28;
  }

  while (!v18);
  __break(1u);
LABEL_14:
  sub_1003407A4(v9);
LABEL_15:
  v29 = *(v49 + 2);
  v18 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v18)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v51 = 0;
  v31 = v1[8];
  v32 = v1[5];
  v33 = *(v32 + 16) - 1;
  v50 = v32;
  v52 += v32;
  v53 = v33;
  while (v30 < v53)
  {
    v34 = v30 + 1;
    if (v30 < 0)
    {
      goto LABEL_34;
    }

LABEL_22:
    if (v30 >= *(v50 + 16))
    {
      goto LABEL_35;
    }

    v35 = v54;
    v36 = sub_1001EBDD4(v52 + v30 * v55, v54);
    v37 = (v35 + *(v56 + 64));
    v38 = *v37;
    (*v37)(v36);
    v39 = String.count.getter();

    if (__OFADD__(v31, v39))
    {
      goto LABEL_36;
    }

    if (v1[2] < v31 + v39)
    {
      goto LABEL_28;
    }

    v40 = v54;
    sub_1001EBDD4(v54, v5);
    swift_beginAccess();
    sub_1003B3560(v7, v5);
    sub_1003407A4(v7);
    v41 = swift_endAccess();
    v38(v41);
    v42 = String.count.getter();

    sub_1003407A4(v40);
    v30 = v34;
    v18 = __OFADD__(v31, v42);
    v31 += v42;
    if (v18)
    {
      __break(1u);
LABEL_28:
      sub_1003407A4(v49);
      sub_1003407A4(v48);
      v43 = v54;
      goto LABEL_31;
    }
  }

  if (!((v30 != v53) | v51 & 1))
  {
    v51 = 1;
    v34 = v53;
    if (v30 < 0)
    {
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  sub_1003407A4(v49);
  v43 = v48;
LABEL_31:
  sub_1003407A4(v43);
}

BOOL sub_1003406B0(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  (*(a1 + *(v2 + 64)))();
  v3 = String.count.getter();

  v4 = sub_1001EBB88();
  v6 = 150;
  if ((v5 & 1) == 0)
  {
    v6 = v4;
  }

  return v6 < v3;
}

uint64_t sub_100340728()
{

  sub_100020438(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1003407A4(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100340800()
{
  result = qword_101184040;
  if (!qword_101184040)
  {
    sub_1001109D0(&qword_101184038, &unk_100EBFA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184040);
  }

  return result;
}

uint64_t sub_100340864(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10118BE60, &qword_100EC7790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003408E8(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v77 = a2;
  type metadata accessor for Actions.MetricsReportingContext(0);
  __chkstk_darwin();
  v79 = v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v78 = v70 - v4;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v6 = v70 - v5;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v73 = v70 - v7;
  v70[1] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v71 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicPin.Item();
  v74 = *(v9 - 8);
  __chkstk_darwin();
  v11 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v13 = v70 - v12;
  v76 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v75 = *(v76 - 8);
  __chkstk_darwin();
  v72 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MusicPin.Action();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = v70 - v19;
  __chkstk_darwin();
  v22 = v70 - v21;
  v81 = a1;
  MusicPin.action.getter();
  v23 = (*(v16 + 88))(v22, v15);
  if (v23 == enum case for MusicPin.Action.navigate(_:))
  {
    if (qword_10117F6D8 != -1)
    {
      swift_once();
    }

    v24 = v81;
    if (sub_100428914())
    {
      sub_1003413BC(v24, v77, 0);
      LODWORD(v77) = 28;
LABEL_6:
      v25 = type metadata accessor for MusicPin();
      sub_100344AD8(&qword_101197100, &protocol conformance descriptor for MusicPin);
      v81 = MusicItem.metricsTargetIdentifier.getter(v25);
      v27 = v26;
      v28 = type metadata accessor for URL();
      v29 = v78;
      (*(*(v28 - 8) + 56))(v78, 1, 1, v28);
      sub_10010FC20(&qword_10118BE78, &unk_100ED5DE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      *(inited + 32) = MusicItem.metricsContentType.getter(v25);
      *(inited + 40) = v31;
      *(inited + 48) = 0;
      v32 = MetricsEvent.Click.ActionDetails.init(_:)(inited);
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v39 = BYTE1(v37);
      v40 = v79;
      sub_1005A5B7C(v79);
      static Actions.reportClickEvent(targetIdentifier:targetType:actionType:actionURL:actionDetails:reportingContext:)(v81, v27, 16, v77, v29, v32, v34, v36, v38, v40);
      sub_100344B1C(v32, v34, v36, v38, v39);

      sub_100344D3C(v40, type metadata accessor for Actions.MetricsReportingContext);
      return sub_1000095E8(v29, &qword_101183A20, &unk_100EBCF80);
    }

    v47 = type metadata accessor for IndexPath();
    (*(*(v47 - 8) + 56))(v6, 1, 1, v47);
    sub_100376BCC(v6, &v82);
    sub_1000095E8(v6, &unk_10118BCE0, &qword_100EC6450);
    static Alert.explicitRestrictedAlert(traitCollection:)(0, &v85);
    PresentationSource.present(_:)(&v85);
    sub_100344A84(&v85);
    return sub_10012BA6C(&v82);
  }

  else
  {
    v42 = enum case for MusicPin.Action.shuffle(_:);
    if (v23 == enum case for MusicPin.Action.play(_:) || v23 == enum case for MusicPin.Action.shuffle(_:))
    {
      result = sub_100341CD0(v81);
      if (result)
      {
        if (qword_10117F6D8 != -1)
        {
          swift_once();
        }

        MusicPin.item.getter();
        MusicPin.action.getter();
        (*(v16 + 104))(v18, v42, v15);
        v43 = static MusicPin.Action.== infix(_:_:)();
        v44 = *(v16 + 8);
        v44(v18, v15);
        v44(v20, v15);
        sub_10042BAAC(v11, v43 & 1, v13);
        (*(v74 + 8))(v11, v9);
        v45 = v75;
        v46 = v76;
        if ((*(v75 + 48))(v13, 1, v76) != 1)
        {
          v48 = v72;
          (*(v45 + 32))(v72, v13, v46);
          type metadata accessor for PlaybackIntentDescriptor(0);
          v49 = swift_allocBox();
          v51 = v50;
          v52 = v71;
          (*(v45 + 16))(v71, v48, v46);
          swift_storeEnumTagMultiPayload();
          v84 = 0;
          v82 = 0u;
          v83 = 0u;
          v53 = v80;
          v85.title.value._countAndFlagsBits = v80;
          v54 = v80;
          v55 = String.init<A>(reflecting:)();
          v85.message.value._object = &type metadata for Player.CommandIssuerIdentity;
          *&v85.style = &protocol witness table for Player.CommandIssuerIdentity;
          v85.title.value._countAndFlagsBits = v55;
          v85.title.value._object = v56;
          v57 = v54;
          PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v52, &v82, 3, 0, 0, 1, 0, 1, v51, v53, &v85);
          v58 = PlaybackIntentDescriptor.playActivityInformation.getter();
          *&v82 = v58;
          *(&v82 + 1) = v61;
          *&v83 = v59;
          *(&v83 + 1) = v60;
          if (v61)
          {
            v62._countAndFlagsBits = 0x736E69702FLL;
            v62._object = 0xE500000000000000;
            String.append(_:)(v62);
            PlaybackIntentDescriptor.playActivityInformation.setter(v82, *(&v82 + 1), v83, *(&v83 + 1));
          }

          else
          {
            v63 = v58;
            v64 = v59;
            v65 = v60;
            sub_100344C3C(v58, 0, v59, v60);
            PlaybackIntentDescriptor.playActivityInformation.setter(v63, 0, v64, v65);
            sub_100344C88(v82, *(&v82 + 1), v83, *(&v83 + 1));
          }

          v66 = type metadata accessor for TaskPriority();
          v67 = v73;
          (*(*(v66 - 8) + 56))(v73, 1, 1, v66);
          type metadata accessor for MainActor();

          v68 = static MainActor.shared.getter();
          v69 = swift_allocObject();
          v69[2] = v68;
          v69[3] = &protocol witness table for MainActor;
          v69[4] = v49;
          sub_1001F4F78(0, 0, v67, &unk_100EC77A8, v69);

          (*(v45 + 8))(v48, v46);

          LODWORD(v77) = 31;
          goto LABEL_6;
        }

        return sub_1000095E8(v13, &unk_10118CDB0, &unk_100EC0360);
      }
    }

    else
    {
      return (*(v16 + 8))(v22, v15);
    }
  }

  return result;
}

double sub_1003413BC(uint64_t a1, uint64_t a2, void *a3)
{
  v73 = a3;
  v71 = a2;
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  __chkstk_darwin();
  v69 = &v68 - v5;
  v6 = type metadata accessor for MusicPin();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v68 - v10;
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v68 - v13;
  v72 = v3;
  v15 = [v3 tabBarController];
  if (v15)
  {
    v16 = v15;
    sub_100344AD8(&qword_10118BE70, &protocol conformance descriptor for MusicPin);
    dispatch thunk of Identifiable.id.getter();
    v74 = 0xD000000000000014;
    v75 = 0x8000000100E3E560;
    String.append(_:)(aBlock);

    v17 = String._bridgeToObjectiveC()();

    v18 = [v16 tabForIdentifier:v17];

    if (v18)
    {
      if (qword_10117F750 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000060E4(v19, static Logger.libraryView);
      v20 = v18;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        aBlock._countAndFlagsBits = v24;
        *v23 = 136446210;
        v25 = v20;
        v26 = [v25 description];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = sub_1000105AC(v27, v29, &aBlock._countAndFlagsBits);

        *(v23 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v21, v22, "Selecting pin tab=%{public}s", v23, 0xCu);
        sub_10000959C(v24);
      }

      v31 = v73;
      v32 = [v20 viewController];
      sub_100342C94(v32, v72, v31, v71);

      v33 = swift_allocObject();
      *(v33 + 16) = v16;
      *(v33 + 24) = v20;
      if (v31)
      {
        v34 = swift_allocObject();
        *(v34 + 16) = sub_100344858;
        *(v34 + 24) = v33;
        v83 = sub_10018A020;
        v84 = v34;
        aBlock._countAndFlagsBits = _NSConcreteStackBlock;
        aBlock._object = 1107296256;
        v81 = sub_10002BC98;
        v82 = &unk_1010A7B10;
        v35 = _Block_copy(&aBlock);
        v36 = v20;
        v37 = v16;
        swift_unknownObjectRetain();

        [v31 addAnimations:v35];

        _Block_release(v35);
        swift_unknownObjectRelease();
        return result;
      }

      v66 = v20;
      v67 = v16;
      [v67 setSelectedTab:v66];

      goto LABEL_21;
    }
  }

  v39 = *(v7 + 16);
  v39(v14, a1, v6);
  v40 = objc_allocWithZone(_s6PinTabCMa(0));
  v39(&v40[OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin], v14, v6);
  v39(v11, v14, v6);
  sub_1007484FC(v11, &aBlock._countAndFlagsBits);
  v41 = sub_10003622C(&aBlock);
  sub_10032A8A4();
  v42 = *(v7 + 8);
  v42(v14, v6);
  v70 = sub_100327974(v41, a1);

  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_1000060E4(v43, static Logger.libraryView);
  v39(v9, a1, v6);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v74 = v47;
    *v46 = 136446210;
    sub_100344AD8(&qword_10118BB00, &protocol conformance descriptor for MusicPin);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    v42(v9, v6);
    v51 = sub_1000105AC(v48, v50, &v74);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v44, v45, "Unable to find matching tab for pin=%{public}s — Performing manual navigation…", v46, 0xCu);
    sub_10000959C(v47);
  }

  else
  {

    v42(v9, v6);
  }

  v52 = v70;
  v53 = v70;
  v55 = v72;
  v54 = v73;
  sub_100342C94(v52, v72, v73, v71);

  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v53;
  if (v54)
  {
    v57 = swift_allocObject();
    *(v57 + 16) = sub_100344850;
    *(v57 + 24) = v56;
    v78 = sub_100029B94;
    v79 = v57;
    v74 = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_10002BC98;
    v77 = &unk_1010A7A98;
    v58 = _Block_copy(&v74);
    swift_unknownObjectRetain();
    v59 = v53;
    v60 = v55;

    [v54 addAnimations:v58];

    _Block_release(v58);
    swift_unknownObjectRelease();
    return result;
  }

  v61 = v53;
  v62 = [v55 navigationController];
  if (v62)
  {
    v63 = v62;
    v64 = v69;
    UIViewController.traitOverrides.getter();
    v65 = type metadata accessor for UITraitOverrides();
    (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
    UINavigationController.push(_:traitOverrides:animated:)(v61, v64, 1);

    sub_1000095E8(v64, &unk_10119F3A0, &qword_100EC7CD0);
    return result;
  }

LABEL_21:

  return result;
}

uint64_t sub_100341CD0(void (*a1)(char *, uint64_t, uint64_t))
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v69 = v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v68 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v72 = v64 - v4;
  v76 = type metadata accessor for MusicPin.Item();
  v75 = *(v76 - 8);
  __chkstk_darwin();
  v6 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v70 = v64 - v7;
  v74 = type metadata accessor for Artist();
  v73 = *(v74 - 8);
  __chkstk_darwin();
  v71 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = v64 - v9;
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v11 = v64 - v10;
  v12 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v66 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v64 - v15;
  v17 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = v64 - v21;
  sub_100537A68(a1, v64 - v21);
  v23 = *(v18 + 16);
  v77 = v22;
  v23(v20, v22, v17);
  if ((*(v18 + 88))(v20, v17) != enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v18 + 8))(v20, v17);
    goto LABEL_13;
  }

  v24 = *(v18 + 96);
  v65 = v17;
  v24(v20, v17);
  (*(v13 + 32))(v16, v20, v12);
  v64[1] = a1;
  MusicPin.genericMusicItem.getter(v11);
  v25 = type metadata accessor for GenericMusicItem();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v11, 1, v25) == 1)
  {
    (*(v13 + 8))(v16, v12);
    sub_1000095E8(v11, &unk_101189DA0, &unk_100EBF370);
    v78 = 0u;
    v79 = 0u;
    v80 = 0;
  }

  else
  {
    GenericMusicItem.innerMusicItem.getter(&v78);
    (*(v26 + 8))(v11, v25);
    if (*(&v79 + 1))
    {
      sub_100059A8C(&v78, &v83);
      sub_100008FE4(&v83, &v78);
      sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
      v27 = v67;
      v28 = v74;
      v29 = v12;
      if (!swift_dynamicCast() || ((*(v73 + 8))(v27, v28), v30 = v66, (*(v13 + 104))(v66, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:), v29), v31 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)(), v32 = *(v13 + 8), v32(v30, v29), (v31 & 1) == 0))
      {
        v33 = type metadata accessor for IndexPath();
        v34 = v70;
        (*(*(v33 - 8) + 56))(v70, 1, 1, v33);
        sub_100376BCC(v34, &v78);
        sub_1000095E8(v34, &unk_10118BCE0, &qword_100EC6450);
        object = v83.message.value._object;
        v36 = *&v83.style;
        v37 = sub_10000954C(&v83, v83.message.value._object);
        v38 = v77;
        sub_10053A5D0(v77, v37, &v78, object, v36);
        sub_10012BA6C(&v78);
        (*(v13 + 8))(v16, v29);
        (*(v18 + 8))(v38, v65);
        sub_10000959C(&v83);
        return 0;
      }

      v32(v16, v29);
      sub_10000959C(&v83);
      goto LABEL_12;
    }

    (*(v13 + 8))(v16, v12);
  }

  sub_1000095E8(&v78, &qword_10118B990, &unk_100EBE7B0);
LABEL_12:
  v17 = v65;
LABEL_13:
  v40 = v75;
  MusicPin.item.getter();
  v41 = v76;
  if ((*(v40 + 88))(v6, v76) == enum case for MusicPin.Item.artist(_:))
  {
    (*(v40 + 96))(v6, v41);
    v42 = v73;
    v43 = v71;
    v44 = v6;
    v45 = v74;
    (*(v73 + 32))(v71, v44, v74);
    v46 = v72;
    Artist.libraryAddedDate.getter();
    (*(v42 + 8))(v43, v45);
    v47 = type metadata accessor for Date();
    LODWORD(v45) = (*(*(v47 - 8) + 48))(v46, 1, v47);
    sub_1000095E8(v46, &qword_101188C20, &qword_100EC2030);
    if (v45 == 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v48 = String.init(localized:table:bundle:locale:comment:)();
      v50 = v49;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v51 = String.init(localized:table:bundle:locale:comment:)();
      v52 = v17;
      v54 = v53;
      sub_10010FC20(&qword_10118BE80, &unk_100EC77B0);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_100EBC6B0;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v56 = String.init(localized:table:bundle:locale:comment:)();
      Alert.Action.init(id:title:role:perform:)(0, 0, v56, v57, 2, 0, 0, v81);
      v58 = v81[1];
      *(v55 + 32) = v81[0];
      *(v55 + 48) = v58;
      *(v55 + 64) = v81[2];
      *(v55 + 80) = v82;
      v85.is_nil = v55;
      v59.value._countAndFlagsBits = v48;
      v59.value._object = v50;
      v60.value._countAndFlagsBits = v51;
      v60.value._object = v54;
      v84.value.super.isa = 0;
      v84.is_nil = 0;
      v85.value = 1;
      Alert.init(title:message:image:style:preferredActionIndex:actions:)(&v83, v59, v60, v84, MusicCore_Alert_Style_alert, v85, v63);
      v61 = type metadata accessor for IndexPath();
      v62 = v70;
      (*(*(v61 - 8) + 56))(v70, 1, 1, v61);
      sub_100376BCC(v62, &v78);
      sub_1000095E8(v62, &unk_10118BCE0, &qword_100EC6450);
      PresentationSource.present(_:)(&v83);
      sub_100344A84(&v83);
      sub_10012BA6C(&v78);
      (*(v18 + 8))(v77, v52);
      return 0;
    }
  }

  else
  {
    (*(v40 + 8))(v6, v41);
  }

  (*(v18 + 8))(v77, v17);
  return 1;
}

uint64_t sub_1003428B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  type metadata accessor for PlaybackIntentDescriptor(0);
  v4[6] = swift_task_alloc();
  v4[7] = swift_projectBox();
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_10034298C, v6, v5);
}

uint64_t sub_10034298C()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  swift_beginAccess();
  sub_100344CD4(v2, v1, type metadata accessor for PlaybackIntentDescriptor);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_100342AA0;
  v4 = v0[6];

  return PlaybackController.add(_:route:)(v4, 0);
}

uint64_t sub_100342AA0()
{
  v2 = *v1;
  v2[12] = v0;

  v3 = v2[6];
  if (v0)
  {

    sub_100344D3C(v3, type metadata accessor for PlaybackIntentDescriptor);
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_100344DA4;
  }

  else
  {
    sub_100344D3C(v3, type metadata accessor for PlaybackIntentDescriptor);
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_100342C10;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100342C10()
{
  v1 = v0[12];
  v2 = v0[5];

  *v2 = v1 != 0;

  v3 = v0[1];

  return v3();
}

void sub_100342C94(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  if (a1)
  {
    UIViewController.traitOverrides.getter();
    UIViewController.traitOverrides.setter();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      *&a1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference] = *(*(a2 + OBJC_IVAR____TtC5Music25LibraryMainViewController_prefetchingController) + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_cachingReference);
    }

    if (!a3)
    {
      v17[1] = sub_100009F78(0, &qword_101184710, UIViewControllerTransition_ptr);
      v11 = [objc_allocWithZone(UIZoomTransitionOptions) init];
      UIZoomTransitionOptions.alignmentRectProvider.setter();
      v12 = v9;
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v12 + 16))(v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
      v14 = (*(v12 + 80) + 24) & ~*(v12 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      (*(v12 + 32))(v15 + v14, v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

      v16 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

      [a1 setPreferredTransition:v16];
    }
  }
}

id sub_100342F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = sub_1005A5F8C();

  v6 = sub_1005FF72C();
  return v6;
}

id sub_100342FEC(void *a1, void *a2)
{
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v10 - v5;
  result = [a1 navigationController];
  if (result)
  {
    v8 = result;
    UIViewController.traitOverrides.getter();
    v9 = type metadata accessor for UITraitOverrides();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    UINavigationController.push(_:traitOverrides:animated:)(a2, v6, 1);

    return sub_1000095E8(v6, &unk_10119F3A0, &qword_100EC7CD0);
  }

  return result;
}

id sub_100343100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v30 = a1;
  v37 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin();
  v36 = &v29 - v5;
  v42 = type metadata accessor for IndexPath();
  v34 = *(v42 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin();
  v41 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicPin();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v29 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v29 - v10;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v12 = *(v8 + 16);
  v12(v11, a1, v7);
  v13 = *(v8 + 80);
  v31 = v13 | 7;
  v14 = swift_allocObject();
  v32 = *(v8 + 32);
  v33 = v14;
  v32(v14 + ((v13 + 16) & ~v13), v11, v7);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v7);
  v16 = v34;
  (*(v34 + 16))(v41, a2, v42);
  v17 = v36;
  sub_1000089F8(v39, v36, &unk_1011838D0, &unk_100EC0320);
  v18 = (v13 + 24) & ~v13;
  v19 = v16;
  v20 = (v18 + v9 + *(v16 + 80)) & ~*(v16 + 80);
  v21 = (v35 + *(v37 + 80) + v20) & ~*(v37 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  v32(v22 + v18, v29, v7);
  (*(v19 + 32))(v22 + v20, v41, v42);
  sub_10032E8BC(v17, v22 + v21);
  v23 = objc_opt_self();
  v47 = sub_1003448DC;
  v48 = v33;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100747E6C;
  v46 = &unk_1010A7BD8;
  v24 = _Block_copy(&aBlock);

  v47 = sub_10034493C;
  v48 = v22;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100747EBC;
  v46 = &unk_1010A7C00;
  v25 = _Block_copy(&aBlock);

  v26 = isa;
  v27 = [v23 configurationWithIdentifier:isa previewProvider:v24 actionProvider:v25];

  _Block_release(v25);
  _Block_release(v24);
  return v27;
}

uint64_t sub_1003435DC(uint64_t a1)
{
  type metadata accessor for MusicPin();
  v2 = __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1, v2);
  return sub_1007350F8(v4, 1);
}

unint64_t sub_10034369C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v142 = a4;
  v167 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  v148 = *(v147 + 64);
  __chkstk_darwin();
  v149 = &v124 - v10;
  v168 = type metadata accessor for MusicPin();
  v163 = *(v168 - 8);
  __chkstk_darwin();
  v146 = v11;
  v162 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Actions.PlaybackContext(0);
  v13 = *(v12 - 8);
  v156 = v12;
  v157 = v13;
  __chkstk_darwin();
  v161 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v14;
  __chkstk_darwin();
  v165 = &v124 - v15;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v17 = &v124 - v16;
  v155 = type metadata accessor for MusicPin.Action();
  v18 = *(v155 - 8);
  __chkstk_darwin();
  v153 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v152 = &v124 - v20;
  v154 = type metadata accessor for MusicPin.Item();
  v164 = *(v154 - 8);
  __chkstk_darwin();
  v151 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v150 = &v124 - v22;
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v143 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v144 = &v124 - v24;
  __chkstk_darwin();
  v159 = (&v124 - v25);
  __chkstk_darwin();
  v160 = &v124 - v26;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v28 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v166 = &v124 - v29;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v31 = Strong;
  v132 = v17;
  v141 = v28;
  v136 = v7;
  v137 = v6;
  v32 = [Strong traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v133 = v181[0];
  if (qword_10117F6D8 != -1)
  {
    swift_once();
  }

  v134 = a5;
  v135 = v9;
  v33 = qword_101218C40;
  v34 = v151;
  MusicPin.item.getter();
  v35 = v152;
  MusicPin.action.getter();
  v36 = *(v18 + 104);
  v37 = v153;
  v127 = enum case for MusicPin.Action.shuffle(_:);
  v38 = v155;
  v128 = v18 + 104;
  v126 = v36;
  v36(v153);
  v39 = static MusicPin.Action.== infix(_:_:)();
  v40 = *(v18 + 8);
  v40(v37, v38);
  v131 = v18 + 8;
  v129 = v40;
  v40(v35, v38);
  v41 = v150;
  v130 = v33;
  sub_10042BAAC(v34, v39 & 1, v150);
  v42 = *(v164 + 8);
  v164 += 8;
  v42(v34, v154);
  v43 = v160;
  PlaybackIntentDescriptor.IntentType.init(_:)(v41, v160);
  v125 = sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v44 = swift_allocObject();
  v124 = xmmword_100EBDC20;
  *(v44 + 16) = xmmword_100EBDC20;
  v181[0] = v31;
  v45 = v31;
  v46 = String.init<A>(reflecting:)();
  *(v44 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v44 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v44 + 32) = v46;
  *(v44 + 40) = v47;
  v48 = v168;
  *(v44 + 96) = v168;
  *(v44 + 104) = &protocol witness table for MusicPin;
  v49 = sub_10001C8B8((v44 + 72));
  v139 = *(v163 + 16);
  v140 = v163 + 16;
  v139(v49, v167, v48);
  v50 = static Player.CommandIssuer<>.combining(_:)(v44);
  v52 = v51;

  v181[3] = &type metadata for Player.CommandIssuerIdentity;
  v181[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v181[0] = v50;
  v181[1] = v52;
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v53 = qword_101218AD8;
  sub_1000089F8(v43, v159, &unk_1011838E0, &unk_100EC1670);
  v138 = v53;
  v54 = UIViewController.playActivityInformation.getter();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_1000089F8(v181, &v176, &unk_101183910, &unk_100EBDD00);
  v61 = v157;
  v158 = v45;
  if (v177)
  {
    sub_100059A8C(&v176, v180);
    v62 = v141;
  }

  else
  {
    v175[0] = v45;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v64 = v45;
    sub_10010FC20(&unk_101183920, &unk_100EC0330);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v182, v180);
      v61 = v157;
      v62 = v141;
    }

    else
    {
      v184 = 0;
      v182 = 0u;
      v183 = 0u;
      v180[0] = v64;
      v65 = v64;
      v66 = String.init<A>(reflecting:)();
      v180[3] = &type metadata for Player.CommandIssuerIdentity;
      v180[4] = &protocol witness table for Player.CommandIssuerIdentity;
      v180[0] = v66;
      v180[1] = v67;
      v61 = v157;
      v62 = v141;
      if (*(&v183 + 1))
      {
        sub_1000095E8(&v182, &unk_101183910, &unk_100EBDD00);
      }
    }

    if (v177)
    {
      sub_1000095E8(&v176, &unk_101183910, &unk_100EBDD00);
    }
  }

  v68 = v166;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v138, v159, v54, v56, v58, v60, v180, v166);
  sub_1000095E8(v160, &unk_1011838E0, &unk_100EC1670);
  sub_1000095E8(v181, &unk_101183910, &unk_100EBDD00);
  v69 = v156;
  (*(v61 + 56))(v68, 0, 1, v156);
  v70 = type metadata accessor for IndexPath();
  v71 = *(v70 - 8);
  v72 = v132;
  (*(v71 + 16))(v132, v142, v70);
  (*(v71 + 56))(v72, 0, 1, v70);
  v73 = v158;
  sub_100376BCC(v72, v181);
  sub_1000095E8(v72, &unk_10118BCE0, &qword_100EC6450);
  sub_1000089F8(v181, &v176, &unk_1011845E0, &unk_100EBF3A0);
  if (v179 == 1)
  {
    v184 = 0;
    v182 = 0u;
    v183 = 0u;
    v185 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v73, &v182, v180);
    v74 = v165;
    if (v179 != 1)
    {
      sub_1000095E8(&v176, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v176, v180);
    v74 = v165;
  }

  sub_1000089F8(v166, v62, &unk_10118AB20, &unk_100EBF390);
  v75 = *(v61 + 48);
  if ((v75)(v62, 1, v69) == 1)
  {
    v159 = v75;
    v160 = (v61 + 48);
    v76 = v151;
    v77 = v167;
    MusicPin.item.getter();
    v78 = v152;
    MusicPin.action.getter();
    v79 = v153;
    v80 = v155;
    v126(v153, v127, v155);
    v81 = static MusicPin.Action.== infix(_:_:)();
    v82 = v42;
    v83 = v129;
    v129(v79, v80);
    v83(v78, v80);
    v84 = v150;
    sub_10042BAAC(v76, v81 & 1, v150);
    v82(v76, v154);
    v85 = v144;
    PlaybackIntentDescriptor.IntentType.init(_:)(v84, v144);
    v86 = swift_allocObject();
    *(v86 + 16) = v124;
    *&v176 = v73;
    v87 = v73;
    v88 = String.init<A>(reflecting:)();
    *(v86 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v86 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v86 + 32) = v88;
    *(v86 + 40) = v89;
    v90 = v168;
    *(v86 + 96) = v168;
    *(v86 + 104) = &protocol witness table for MusicPin;
    v91 = sub_10001C8B8((v86 + 72));
    v139(v91, v77, v90);
    v92 = static Player.CommandIssuer<>.combining(_:)(v86);
    v94 = v93;

    v177 = &type metadata for Player.CommandIssuerIdentity;
    v178 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v176 = v92;
    *(&v176 + 1) = v94;
    sub_1000089F8(v85, v143, &unk_1011838E0, &unk_100EC1670);
    v95 = v138;
    v96 = UIViewController.playActivityInformation.getter();
    v98 = v97;
    v100 = v99;
    v102 = v101;
    sub_1000089F8(&v176, &v173, &unk_101183910, &unk_100EBDD00);
    if (v174)
    {
      sub_100059A8C(&v173, v175);
      v61 = v157;
      v74 = v165;
    }

    else
    {
      v172 = v87;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v103 = v87;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v169, v175);
        v74 = v165;
        v61 = v157;
      }

      else
      {
        v171 = 0;
        v169 = 0u;
        v170 = 0u;
        v175[0] = v103;
        v104 = v103;
        v105 = String.init<A>(reflecting:)();
        v175[3] = &type metadata for Player.CommandIssuerIdentity;
        v175[4] = &protocol witness table for Player.CommandIssuerIdentity;
        v175[0] = v105;
        v175[1] = v106;
        v74 = v165;
        v61 = v157;
        if (*(&v170 + 1))
        {
          sub_1000095E8(&v169, &unk_101183910, &unk_100EBDD00);
        }
      }

      if (v174)
      {
        sub_1000095E8(&v173, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v95, v143, v96, v98, v100, v102, v175, v74);
    sub_1000095E8(v144, &unk_1011838E0, &unk_100EC1670);
    sub_1000095E8(&v176, &unk_101183910, &unk_100EBDD00);
    v107 = v141;
    if (v159(v141, 1, v156) != 1)
    {
      sub_1000095E8(v107, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_100314A80(v62, v74);
  }

  sub_100344AD8(&qword_10118BB00, &protocol conformance descriptor for MusicPin);
  v108 = v167;
  v109 = v168;
  v164 = dispatch thunk of CustomStringConvertible.description.getter();
  v160 = v110;
  v159 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v139(v162, v108, v109);
  sub_100344CD4(v74, v161, type metadata accessor for Actions.PlaybackContext);
  v111 = v149;
  sub_1000089F8(v134, v149, &unk_1011838D0, &unk_100EC0320);
  sub_10012B7A8(v180, &v176);
  v112 = v163;
  v113 = (*(v163 + 80) + 16) & ~*(v163 + 80);
  v114 = (v146 + *(v61 + 80) + v113) & ~*(v61 + 80);
  v115 = (v145 + *(v147 + 80) + v114) & ~*(v147 + 80);
  v116 = (v148 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
  v117 = (v116 + 103) & 0xFFFFFFFFFFFFFFF8;
  v118 = swift_allocObject();
  (*(v112 + 32))(v118 + v113, v162, v168);
  sub_100314A80(v161, v118 + v114);
  sub_10032E8BC(v111, v118 + v115);
  sub_10012B828(&v176, v118 + v116);
  *(v118 + v117) = v133;
  *(v118 + ((v117 + 15) & 0xFFFFFFFFFFFFFFF8)) = v159;

  v119 = v135;
  UUID.init()();
  v120 = UUID.uuidString.getter();
  v122 = v121;
  (*(v136 + 8))(v119, v137);
  type metadata accessor for ActionMenu();
  swift_allocObject();
  v186._countAndFlagsBits = v164;
  v186._object = v160;
  ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(v120, v122, 0, 0, 0, v186, 0, sub_10032E92C, v118);

  v63 = ActionMenu.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);

  sub_100344D3C(v165, type metadata accessor for Actions.PlaybackContext);
  sub_10012BA6C(v180);
  sub_1000095E8(v181, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v166, &unk_10118AB20, &unk_100EBF390);
  return v63;
}

id sub_100344868(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexPath() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100342F68(a1, v4, v5);
}

uint64_t sub_1003448DC()
{
  v1 = *(type metadata accessor for MusicPin() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1003435DC(v2);
}

unint64_t sub_10034493C(uint64_t a1)
{
  v3 = *(type metadata accessor for MusicPin() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_10034369C(a1, v10, v1 + v4, v1 + v7, v11);
}

uint64_t sub_100344AD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MusicPin();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100344B1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3 || a5 == 2)
  {
  }

  else if (a5 == 1)
  {
    return sub_100344B48(a1, a2, a3);
  }

  return result;
}

double sub_100344B48(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_100344B88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1003428B8(a1, v4, v5, v6);
}

void sub_100344C3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_10002D6A4(a3, a4);
  }
}

void sub_100344C88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100029CA4(a3, a4);
  }
}

uint64_t sub_100344CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100344D3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for ArtworkSmartTransition.Data(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkSmartTransition.Data(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkSmartTransition.Data(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

id sub_100344EF4()
{
  result = [v0 transitionInfo];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    started = MPCNowPlayingContentItemTransitionInfoKeyStartTime.getter();
    if (*(v3 + 16))
    {
      v6 = sub_100019C10(started, v5);
      v8 = v7;

      if (v8)
      {
        sub_10000DD18(*(v3 + 56) + 32 * v6, v10);

        if (swift_dynamicCast())
        {
          return v9;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_100345008(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  return sub_1006B9530(*a1, *a2) & ~(v2 ^ v4) & ~(v3 ^ v5) & 1;
}

Swift::Int sub_100345068()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100345140(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100345204(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003452D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003457E4(*a1);
  *a2 = result;
  return result;
}

void sub_100345308(unint64_t *a1@<X8>)
{
  v2 = 0xEE00657261757153;
  v3 = 0x6F54657261757173;
  v4 = 0xD000000000000012;
  v5 = 0x8000000100E3C510;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000016;
    v5 = 0x8000000100E3C530;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x8000000100E3C4F0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

id sub_10034539C()
{
  v1 = [v0 transitionInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = MPCNowPlayingContentItemTransitionInfoKeyStyle.getter();
  if (!*(v3 + 16))
  {

    goto LABEL_7;
  }

  v6 = sub_100019C10(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  sub_10000DD18(*(v3 + 56) + 32 * v6, v12);

  sub_100345730();
  if (swift_dynamicCast())
  {
    v9 = [v11 integerValue];

    return v9;
  }

  return 0;
}

uint64_t sub_1003454C8()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218A98);
  sub_1000060E4(v0, qword_101218A98);
  return static Logger.music(_:)(0x6172547472616D53, 0xEF6E6F697469736ELL);
}

void sub_100345538(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() animationWithKeyPath:v8];

  v10 = v9;
  [v10 setDuration:3.0];
  v11 = (a1 & 1) == 0;
  if (a1)
  {
    v12 = &type metadata for Int;
  }

  else
  {
    v12 = &type metadata for Double;
  }

  v13 = 0x3FF3333333333333;
  if (!v11)
  {
    v13 = 1;
  }

  v21 = v12;
  v20[0] = v13;
  if (v11)
  {
    v14 = &type metadata for Int;
  }

  else
  {
    v14 = &type metadata for Double;
  }

  if (v11)
  {
    v15 = COERCE_DOUBLE(1);
  }

  else
  {
    v15 = 0.75;
  }

  sub_10000954C(v20, v12);
  v16 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10000959C(v20);
  [v10 setFromValue:{v16, v20[0]}];
  swift_unknownObjectRelease();
  v21 = v14;
  *v20 = v15;
  sub_10000954C(v20, v14);
  v17 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10000959C(v20);
  [v10 setToValue:v17];
  swift_unknownObjectRelease();
  sub_100030444(a3, a4);
  CAAnimation.completion.setter(a3, a4);

  v18 = [a2 layer];
  v19 = String._bridgeToObjectiveC()();
  [v18 addAnimation:v10 forKey:v19];
}

unint64_t sub_100345730()
{
  result = qword_101189A20;
  if (!qword_101189A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101189A20);
  }

  return result;
}

unint64_t sub_100345790()
{
  result = qword_10118BE88;
  if (!qword_10118BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118BE88);
  }

  return result;
}

unint64_t sub_1003457E4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109A6C8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

char *sub_100345830(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a1;
  v27 = a3;
  v30 = *v5;
  v8 = sub_10010FC20(&qword_10118BAF0, &qword_100EC7338);
  v9 = *(v8 - 8);
  v31 = v8;
  v32 = v9;
  __chkstk_darwin();
  v11 = v25 - v10;
  sub_10010FC20(&unk_101197210, &unk_100ED5E70);
  __chkstk_darwin();
  v13 = v25 - v12;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource_token;
  v15 = type metadata accessor for NSNotificationCenter.ObservationToken();
  v16 = *(v15 - 8);
  v28 = *(v16 + 56);
  v29 = v16 + 56;
  v28(&v5[v14], 1, 1, v15);
  v17 = &v5[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource____lazy_storage___pinsObserver];
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  *v17 = 0;
  *(v17 + 24) = xmmword_100EC78D0;
  type metadata accessor for MusicPin();
  sub_10034D788(&qword_101197100, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  MusicItemCollection.init(arrayLiteral:)();
  swift_unknownObjectWeakAssign();
  v5[32] = a2;
  *(v5 + 5) = v27;
  *(v5 + 6) = a4;
  v25[1] = a4;

  sub_100345C40(v33);
  sub_1000095E8(v33, &qword_10118D380, &qword_100EBDE20);
  v18 = [objc_opt_self() defaultCenter];
  type metadata accessor for LibraryPinsController();
  sub_10032E7E0();
  NSNotificationCenter.BaseMessageIdentifier.init<A>()();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v21 = v30;
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  sub_100020674(&qword_10118BAF8, &qword_10118BAF0, &qword_100EC7338, &protocol conformance descriptor for NSNotificationCenter.BaseMessageIdentifier<A>);
  v22 = v31;
  NSNotificationCenter.addObserver<A, B>(of:for:using:)();

  (*(v32 + 8))(v11, v22);
  v28(v13, 0, 1, v15);
  v23 = OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource_token;
  swift_beginAccess();
  sub_10006B010(v13, &v5[v23], &unk_101197210, &unk_100ED5E70);
  swift_endAccess();
  return v5;
}

double sub_100345C40@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource____lazy_storage___pinsObserver;
  swift_beginAccess();
  sub_1000089F8(v1 + v3, &v7, &qword_10118BFE0, &qword_100EC79B0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000095E8(&v7, &qword_10118BFE0, &qword_100EC79B0);
    v4 = sub_1003463C0(v1);
    *(a1 + 24) = type metadata accessor for AnyCancellable();
    *(a1 + 32) = &protocol witness table for AnyCancellable;
    *a1 = v4;
    sub_1000089F8(a1, &v7, &qword_10118D380, &qword_100EBDE20);
    swift_beginAccess();
    sub_10006B010(&v7, v1 + v3, &qword_10118BFE0, &qword_100EC79B0);
    swift_endAccess();
  }

  else
  {
    result = *&v7;
    v6 = v8;
    *a1 = v7;
    *(a1 + 16) = v6;
    *(a1 + 32) = v9;
  }

  return result;
}

double sub_100345D60(uint64_t a1, uint64_t a2)
{
  v49 = type metadata accessor for MusicPin();
  v2 = *(v49 - 8);
  __chkstk_darwin();
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v43 - v4;
  v6 = sub_10010FC20(&qword_10118BF90, &qword_100EC7958);
  __chkstk_darwin();
  v8 = &v43 - v7;
  v9 = sub_10010FC20(&unk_1011972A0, &qword_100ECBC60);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v43 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v17 = Strong;
  v50 = v6;
  swift_beginAccess();
  v18 = swift_weakLoadStrong();
  v19 = _swiftEmptyArrayStorage;
  if (!v18)
  {
    goto LABEL_15;
  }

  v20 = v18;
  v48 = v2;
  v43 = v17;
  v45 = v14;
  v21 = OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource_pins;
  swift_beginAccess();
  v44 = v10;
  v22 = *(v10 + 16);
  v23 = v20 + v21;
  v24 = v45;
  v22(v45, v23, v9);

  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v46 = _swiftEmptyArrayStorage;
  v52 = _swiftEmptyArrayStorage;
  v22(v12, v24, v9);
  sub_100020674(&qword_10118BF98, &unk_1011972A0, &qword_100ECBC60, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v25 = *(v50 + 36);
  swift_beginAccess();
  v26 = sub_100020674(&qword_1011972B0, &unk_1011972A0, &qword_100ECBC60, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v8[v25] == v51[0])
  {
    goto LABEL_14;
  }

  v27 = (v48 + 2);
  ++v48;
  v46 = _swiftEmptyArrayStorage;
  do
  {
    while (1)
    {
      v28 = dispatch thunk of Collection.subscript.read();
      v29 = *v27;
      v30 = v49;
      (*v27)(v5);
      v28(v51, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v31 = swift_weakLoadStrong();
      if (!v31)
      {
        (*v48)(v5, v30);
        break;
      }

      v32 = v31;
      v33 = v25;
      v50 = type metadata accessor for GridView.Base.ViewModel();
      v34 = v8;
      v35 = v26;
      v36 = v9;
      v37 = v47;
      (v29)(v47, v5, v30);
      v38 = v37;
      v9 = v36;
      v26 = v35;
      v8 = v34;
      v25 = v33;
      v39 = sub_10034AFE8(v38, sub_10034D3F8, v32);
      (*v48)(v5, v30);
      if (!v39)
      {
        break;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v46 = v52;
      dispatch thunk of Collection.endIndex.getter();
      v24 = v45;
      if (*&v8[v33] == v51[0])
      {
        goto LABEL_14;
      }
    }

    dispatch thunk of Collection.endIndex.getter();
  }

  while (*&v8[v25] != v51[0]);
  v24 = v45;
LABEL_14:
  sub_1000095E8(v8, &qword_10118BF90, &qword_100EC7958);
  (*(v44 + 8))(v24, v9);
  swift_weakDestroy();
  v17 = v43;
  v19 = v46;
LABEL_15:
  v40 = *(v17 + 16);
  *(v17 + 16) = v19;
  v41 = *(v17 + 40);
  v42 = v19;

  v41(v40, v42);

  return result;
}

uint64_t sub_1003463C0(uint64_t a1)
{
  v12[1] = a1;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v2 = v12 - v1;
  v3 = sub_10010FC20(&unk_101197280, &unk_100ED5ED0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v12 - v5;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.pinsObserver.getter();

  v7 = dispatch thunk of MusicLibraryPinsObserver.pinsPublisher.getter();

  v12[3] = v7;
  sub_100027010();
  v8 = static OS_dispatch_queue.main.getter();
  v12[2] = v8;
  v9 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  sub_10010FC20(&qword_10118BFE8, &qword_100ECBCC0);
  sub_100020674(&unk_101197290, &qword_10118BFE8, &qword_100ECBCC0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_10034D788(&qword_101184920, sub_100027010, &protocol conformance descriptor for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v2, &qword_101182140, &unk_100EBD2A0);

  swift_allocObject();
  swift_weakInit();
  sub_100020674(&qword_10118BFF0, &unk_101197280, &unk_100ED5ED0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v10 = Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t sub_1003466D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&unk_1011972A0, &qword_100ECBC60);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(v4 + 16);
    v11(v8, a1, v3);
    v12 = OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource_pins;
    swift_beginAccess();
    v11(v6, v10 + v12, v3);
    swift_beginAccess();
    (*(v4 + 24))(v10 + v12, v8, v3);
    swift_endAccess();
    sub_1003468B0(v6);

    v13 = *(v4 + 8);
    v13(v6, v3);
    return (v13)(v8, v3);
  }

  return result;
}

double sub_1003468B0(char *a1)
{
  v99 = a1;
  v107 = sub_10010FC20(&qword_10118BF90, &qword_100EC7958);
  __chkstk_darwin();
  v3 = &v83 - v2;
  v103 = type metadata accessor for MusicPin.Action();
  v88 = *(v103 - 8);
  __chkstk_darwin();
  v102 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v83 - v5;
  v113 = type metadata accessor for MusicPin();
  v90 = *(v113 - 8);
  __chkstk_darwin();
  v109 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v112 = &v83 - v7;
  __chkstk_darwin();
  v105 = &v83 - v8;
  __chkstk_darwin();
  v110 = &v83 - v9;
  v104 = sub_10010FC20(&qword_10118BFF8, &qword_100EC79B8);
  __chkstk_darwin();
  v108 = &v83 - v10;
  sub_10010FC20(&qword_10118C000, &qword_100EC79C0);
  __chkstk_darwin();
  v94 = &v83 - v11;
  v96 = sub_10010FC20(&qword_10118C008, &qword_100EC79C8);
  __chkstk_darwin();
  v106 = &v83 - v12;
  v97 = sub_10010FC20(&qword_10118C010, &unk_100EC79D0);
  __chkstk_darwin();
  v93 = (&v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v95 = &v83 - v14;
  v15 = sub_10010FC20(&unk_1011972A0, &qword_100ECBC60);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v98 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v83 - v18;
  v20 = OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource_pins;
  v100 = v1;
  swift_beginAccess();
  v21 = *(v16 + 16);
  v21(v19, v1 + v20, v15);
  v22 = sub_100020674(&qword_1011972B0, &unk_1011972A0, &qword_100ECBC60, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v23 = dispatch thunk of Collection.distance(from:to:)();
  v89 = v16;
  v24 = *(v16 + 8);
  v92 = v16 + 8;
  v91 = v24;
  v24(v19, v15);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v25 = v21;
  v26 = v23 == dispatch thunk of Collection.distance(from:to:)();
  v27 = v100;
  v111 = v22;
  if (!v26)
  {
    goto LABEL_16;
  }

  v84 = v20;
  v28 = v95;
  v21(v95, v100 + v20, v15);
  v29 = v28 + *(v97 + 52);
  v86 = v16 + 16;
  v85 = v21;
  v21(v29, v99, v15);
  v30 = v93;
  sub_1000089F8(v28, v93, &qword_10118C010, &unk_100EC79D0);
  v31 = v94;
  sub_10003D17C(v30, v94, &qword_10118C000, &qword_100EC79C0);
  v99 = *(v89 + 32);
  (v99)(v19, v31, v15);
  sub_100020674(&qword_10118BF98, &unk_1011972A0, &qword_100ECBC60, &protocol conformance descriptor for MusicItemCollection<A>);
  v32 = v106;
  dispatch thunk of Sequence.makeIterator()();
  sub_10003D17C(v30 + *(v97 + 52), v31, &qword_10118C000, &qword_100EC79C0);
  v33 = v96;
  v34 = (v32 + *(v96 + 52));
  (v99)(v19, v31, v15);
  v99 = v34;
  dispatch thunk of Sequence.makeIterator()();
  v89 = *(v33 + 56);
  *(v32 + v89) = 0;
  v35 = *(v107 + 36);
  dispatch thunk of Collection.endIndex.getter();
  v36 = v32;
  if (*(v32 + v35) == v114[0])
  {
LABEL_4:
    sub_1000095E8(v95, &qword_10118C010, &unk_100EC79D0);
    *(v36 + v89) = 1;
    sub_1000095E8(v36, &qword_10118C008, &qword_100EC79C8);
    return result;
  }

  v38 = (v90 + 16);
  v97 = v90 + 32;
  v96 = v88 + 8;
  v87 = v19;
  v94 = v35;
  v93 = (v90 + 16);
  while (1)
  {
    v41 = dispatch thunk of Collection.subscript.read();
    v42 = *v38;
    v43 = v110;
    (*v38)(v110);
    v41(v114, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v44 = *(v107 + 36);
    v45 = v99;
    dispatch thunk of Collection.endIndex.getter();
    if (*&v45[v44] == v114[0])
    {
      (*(v90 + 8))(v43, v113);
      goto LABEL_4;
    }

    v46 = dispatch thunk of Collection.subscript.read();
    v47 = v105;
    v48 = v113;
    v42(v105);
    v46(v114, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v49 = *(v104 + 48);
    v50 = *v97;
    v51 = v108;
    (*v97)(v108, v110, v48);
    v50(v51 + v49, v47, v48);
    sub_10034D788(&qword_101197100, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
    sub_10034D788(qword_1011972F0, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
    if ((static MusicItem<>.==~ infix(_:_:)() & 1) == 0)
    {
      break;
    }

    v52 = v101;
    MusicPin.action.getter();
    v53 = v102;
    MusicPin.action.getter();
    sub_10034D788(qword_10118C018, &type metadata accessor for MusicPin.Action, &protocol conformance descriptor for MusicPin.Action);
    v54 = v103;
    v55 = dispatch thunk of static Equatable.== infix(_:_:)();
    v56 = *v96;
    (*v96)(v53, v54);
    v56(v52, v54);
    if ((v55 & 1) == 0)
    {
      break;
    }

    v57 = MusicPin.title.getter();
    v59 = v58;
    if (v57 == MusicPin.title.getter() && v59 == v60)
    {

      sub_1000095E8(v51, &qword_10118BFF8, &qword_100EC79B8);
      v40 = v94;
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1000095E8(v51, &qword_10118BFF8, &qword_100EC79B8);
      v19 = v87;
      v40 = v94;
      if ((v39 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v36 = v106;
    dispatch thunk of Collection.endIndex.getter();
    v38 = v93;
    if (*(v36 + v40) == v114[0])
    {
      goto LABEL_4;
    }
  }

  sub_1000095E8(v51, &qword_10118BFF8, &qword_100EC79B8);
  v19 = v87;
LABEL_15:
  sub_1000095E8(v106, &qword_10118C008, &qword_100EC79C8);
  sub_1000095E8(v95, &qword_10118C010, &unk_100EC79D0);
  v27 = v100;
  v25 = v85;
  v20 = v84;
LABEL_16:
  v61 = v27 + v20;
  v62 = v98;
  v25(v98, v61, v15);
  swift_weakInit();
  v63 = _swiftEmptyArrayStorage;
  v115 = _swiftEmptyArrayStorage;
  v25(v19, v62, v15);
  sub_100020674(&qword_10118BF98, &unk_1011972A0, &qword_100ECBC60, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v64 = *(v107 + 36);
  swift_beginAccess();
  dispatch thunk of Collection.endIndex.getter();
  v65 = v27;
  v66 = v112;
  if (*&v3[v64] == v114[0])
  {
    goto LABEL_28;
  }

  v67 = (v90 + 16);
  v110 = (v90 + 8);
  while (2)
  {
    while (1)
    {
      v68 = dispatch thunk of Collection.subscript.read();
      v69 = *v67;
      (*v67)(v66);
      v68(v114, 0);
      dispatch thunk of Collection.formIndex(after:)();
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        break;
      }

      v71 = Strong;
      type metadata accessor for GridView.Base.ViewModel();
      v72 = v3;
      v73 = v113;
      v74 = v15;
      v75 = v63;
      v76 = v109;
      (v69)(v109, v112, v113);
      v77 = v76;
      v78 = v73;
      v3 = v72;
      v66 = v112;
      v79 = sub_10034AFE8(v77, sub_10034D7D4, v71);
      v80 = v78;
      v63 = v75;
      v15 = v74;
      (*v110)(v66, v80);
      if (!v79)
      {
        goto LABEL_20;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v63 = v115;
      dispatch thunk of Collection.endIndex.getter();
      v65 = v100;
      v62 = v98;
      if (*&v3[v64] == v114[0])
      {
        goto LABEL_28;
      }
    }

    (*v110)(v66, v113);
LABEL_20:
    dispatch thunk of Collection.endIndex.getter();
    if (*&v3[v64] != v114[0])
    {
      continue;
    }

    break;
  }

  v65 = v100;
  v62 = v98;
LABEL_28:
  sub_1000095E8(v3, &qword_10118BF90, &qword_100EC7958);
  v91(v62, v15);
  swift_weakDestroy();
  v81 = *(v65 + 16);
  *(v65 + 16) = v63;
  v82 = *(v65 + 40);

  v82(v81, v63);

  return result;
}

void sub_10034781C(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v33 = &v31 - v3;
  v4 = type metadata accessor for MusicPin.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicPin.Action();
  v35 = *(v8 - 8);
  v36 = v8;
  __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for MusicPin() - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin();
  v15 = &v31 - v14;
  v37 = v11;
  v38 = v16;
  v31 = *(v11 + 16);
  v31(&v31 - v14, a1, v13);
  MusicPin.action.getter();
  MusicPin.item.getter();
  v17 = (*(v5 + 88))(v7, v4);
  v18 = enum case for MusicPin.Item.musicVideo(_:);
  (*(v5 + 8))(v7, v4);
  if (v17 == v18)
  {
    (*(v35 + 8))(v10, v36);
LABEL_3:
    sub_100347CB4(v15, v34);
    (*(v37 + 8))(v15, v38);
    return;
  }

  v20 = v35;
  v19 = v36;
  v21 = (*(v35 + 88))(v10, v36);
  if (v21 == enum case for MusicPin.Action.navigate(_:))
  {
    v23 = v37;
    v22 = v38;
    (*(v37 + 8))(v15, v38);
    v24 = type metadata accessor for TaskPriority();
    v25 = v33;
    (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
    v26 = v32;
    (v31)(v32, a1, v22);
    type metadata accessor for MainActor();
    v27 = v34;

    v28 = static MainActor.shared.getter();
    v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = &protocol witness table for MainActor;
    (*(v23 + 32))(v30 + v29, v26, v22);
    *(v30 + ((v12 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    sub_1001F4CB8(0, 0, v25, &unk_100EC7990, v30);
  }

  else
  {
    if (v21 == enum case for MusicPin.Action.play(_:) || v21 == enum case for MusicPin.Action.shuffle(_:))
    {
      goto LABEL_3;
    }

    (*(v37 + 8))(v15, v38);
    (*(v20 + 8))(v10, v19);
  }
}

void sub_100347CB4(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v52 = type metadata accessor for MusicPin();
  v3 = *(v52 - 8);
  __chkstk_darwin();
  v49 = v4;
  v51 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v50 = v46 - v5;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v46[2] = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v46[1] = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v48 = v46 - v8;
  v9 = type metadata accessor for Artist();
  v47 = *(v9 - 8);
  __chkstk_darwin();
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MusicPin.Item();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v46 - v16;
  v54 = a1;
  MusicPin.item.getter();
  v18 = v12;
  v19 = *(v13 + 88);
  v20 = v19(v17, v12);
  if (v20 == enum case for MusicPin.Item.album(_:))
  {
    goto LABEL_2;
  }

  v33 = v20;
  if (v20 != enum case for MusicPin.Item.artist(_:))
  {
    if (v20 == enum case for MusicPin.Item.musicVideo(_:) || v20 == enum case for MusicPin.Item.playlist(_:) || v20 == enum case for MusicPin.Item.song(_:))
    {
      goto LABEL_2;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_19;
  }

  v46[0] = v18;
  MusicPin.item.getter();
  v18 = v46[0];
  v34 = v19(v15, v46[0]);
  v35 = v13;
  if (v34 != v33)
  {
LABEL_19:
    (*(v35 + 8))(v15, v18);
    goto LABEL_2;
  }

  (*(v13 + 96))(v15, v18);
  v36 = v47;
  (*(v47 + 32))(v11, v15, v9);
  v37 = v48;
  Artist.libraryAddedDate.getter();
  v18 = v46[0];
  (*(v36 + 8))(v11, v9);
  v38 = type metadata accessor for Date();
  v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
  sub_1000095E8(v37, &qword_101188C20, &qword_100EC2030);
  if (v39 != 1)
  {
LABEL_2:
    (*(v13 + 8))(v17, v18);
    v21 = type metadata accessor for TaskPriority();
    v22 = v50;
    (*(*(v21 - 8) + 56))(v50, 1, 1, v21);
    v24 = v51;
    v23 = v52;
    (*(v3 + 16))(v51, v54, v52);
    type metadata accessor for MainActor();
    v25 = v53;

    v26 = static MainActor.shared.getter();
    v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v28 = (v49 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = &protocol witness table for MainActor;
    (*(v3 + 32))(v29 + v27, v24, v23);
    *(v29 + v28) = v25;
    sub_1001F4CB8(0, 0, v22, &unk_100EC79A0, v29);

    goto LABEL_3;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v40 = String._bridgeToObjectiveC()();

  v41 = [objc_opt_self() alertControllerWithTitle:0 message:v40 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v42 = String._bridgeToObjectiveC()();

  v43 = [objc_opt_self() actionWithTitle:v42 style:1 handler:0];

  [v41 addAction:v43];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = Strong;
    [Strong presentViewController:v41 animated:1 completion:0];
  }

  (*(v13 + 8))(v17, v46[0]);
LABEL_3:
  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    v32 = [v30 navigationController];

    if (v32)
    {
      type metadata accessor for CarPlayRootNavigationController();
      if (swift_dynamicCastClass())
      {
        sub_1001D3268(0, 1);
      }
    }
  }
}

uint64_t sub_10034848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[40] = a4;
  v5[41] = a5;
  type metadata accessor for Locale();
  v5[42] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v5[43] = swift_task_alloc();
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v5[44] = v6;
  v5[45] = *(v6 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5[48] = swift_task_alloc();
  type metadata accessor for PlaybackIntentDescriptor(0);
  v5[49] = swift_task_alloc();
  v7 = type metadata accessor for MusicPin.Action();
  v5[50] = v7;
  v5[51] = *(v7 - 8);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v8 = type metadata accessor for MusicPin.Item();
  v5[54] = v8;
  v5[55] = *(v8 - 8);
  v5[56] = swift_task_alloc();
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  v5[57] = swift_task_alloc();
  v9 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5[58] = v9;
  v5[59] = *(v9 - 8);
  v5[60] = swift_task_alloc();
  v10 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v5[61] = v10;
  v5[62] = *(v10 - 8);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[66] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[67] = v12;
  v5[68] = v11;

  return _swift_task_switch(sub_100348804, v12, v11);
}

uint64_t sub_100348804()
{
  v73 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  sub_100537A68(*(v0 + 320), *(v0 + 520));
  (*(v3 + 104))(v1, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v2);
  v4 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v5 = *(v3 + 8);
  *(v0 + 552) = v5;
  *(v0 + 560) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if ((v4 & 1) == 0)
  {

LABEL_7:
    v17 = *(v0 + 496);
    v16 = *(v0 + 504);
    v18 = *(v0 + 488);
    (*(v17 + 16))(v16, *(v0 + 520), v18);
    v19 = (*(v17 + 88))(v16, v18);
    v20 = *(v0 + 504);
    if (v19 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
    {
      v22 = *(v0 + 360);
      v21 = *(v0 + 368);
      v23 = *(v0 + 352);
      (*(*(v0 + 496) + 96))(*(v0 + 504), *(v0 + 488));
      (*(v22 + 32))(v21, v20, v23);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v25 = Strong;
        v26 = [Strong traitCollection];
      }

      else
      {
        v26 = 0;
      }

      sub_1005384B8(v26, v0 + 184);

      v40 = *(v0 + 240);
      if (v40)
      {
        v41 = *(v0 + 520);
        v42 = *(v0 + 488);
        v44 = *(v0 + 360);
        v43 = *(v0 + 368);
        v45 = *(v0 + 352);
        v46 = *(v0 + 248);
        v47 = *(v0 + 200);
        *(v0 + 112) = *(v0 + 184);
        *(v0 + 128) = v47;
        *(v0 + 144) = *(v0 + 216);
        *(v0 + 160) = *(v0 + 232);
        *(v0 + 168) = v40;
        *(v0 + 176) = v46;
        v48 = swift_unknownObjectWeakLoadStrong();
        *(v0 + 256) = 0u;
        *(v0 + 272) = 0u;
        *(v0 + 288) = 0;
        *(v0 + 296) = 255;
        *(v0 + 304) = 0;
        PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)(v48, v0 + 256, 0, 0, 0, 0, v0 + 16);
        PresentationSource.present(_:)((v0 + 112));
        sub_1000095E8(v0 + 184, &qword_10118BFD0, &unk_100ED1B90);
        sub_10012BA6C(v0 + 16);
        (*(v44 + 8))(v43, v45);
LABEL_20:
        v5(v41, v42);

        v55 = *(v0 + 8);

        return v55();
      }

      (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));
    }

    else
    {
      v5(*(v0 + 504), *(v0 + 488));
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v49 = String._bridgeToObjectiveC()();

    v50 = [objc_opt_self() alertControllerWithTitle:0 message:v49 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v51 = String._bridgeToObjectiveC()();

    v52 = [objc_opt_self() actionWithTitle:v51 style:0 handler:0];

    [v50 addAction:v52];
    v53 = swift_unknownObjectWeakLoadStrong();
    v41 = *(v0 + 520);
    v42 = *(v0 + 488);
    if (v53)
    {
      v54 = v53;
      [v53 presentViewController:v50 animated:1 completion:0];
    }

    goto LABEL_20;
  }

  v62 = v5;
  if (qword_10117F6D8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 472);
  v7 = *(v0 + 448);
  v8 = *(v0 + 440);
  v64 = *(v0 + 432);
  v65 = *(v0 + 464);
  v10 = *(v0 + 416);
  v9 = *(v0 + 424);
  v11 = *(v0 + 400);
  v12 = *(v0 + 408);
  v63 = *(v0 + 456);
  MusicPin.item.getter();
  MusicPin.action.getter();
  (*(v12 + 104))(v10, enum case for MusicPin.Action.shuffle(_:), v11);
  v13 = static MusicPin.Action.== infix(_:_:)();
  v14 = *(v12 + 8);
  v14(v10, v11);
  v14(v9, v11);
  sub_10042BAAC(v7, v13 & 1, v63);
  (*(v8 + 8))(v7, v64);
  if ((*(v6 + 48))(v63, 1, v65) == 1)
  {
    v15 = *(v0 + 456);

    sub_1000095E8(v15, &unk_10118CDB0, &unk_100EC0360);
    v5 = v62;
    goto LABEL_7;
  }

  v28 = *(v0 + 472);
  v27 = *(v0 + 480);
  v29 = *(v0 + 464);
  v30 = *(v0 + 384);
  v31 = *(v0 + 392);
  v32 = *(v0 + 328);
  (*(v28 + 32))(v27, *(v0 + 456), v29);
  (*(v28 + 16))(v30, v27, v29);
  swift_storeEnumTagMultiPayload();
  v67 = 0;
  memset(v66, 0, sizeof(v66));
  v33 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 312) = v32;

  v71 = &type metadata for Player.CommandIssuerIdentity;
  v72 = &protocol witness table for Player.CommandIssuerIdentity;
  v68 = String.init<A>(reflecting:)();
  v69 = v34;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v30, v66, 3, 1, 0, 1, 0, 1, v31, v33, &v68);
  v35 = PlaybackIntentDescriptor.playActivityInformation.getter();
  v68 = v35;
  v69 = v38;
  v70 = v36;
  v71 = v37;
  if (v38)
  {
    v39._countAndFlagsBits = 0x736E69702FLL;
    v39._object = 0xE500000000000000;
    String.append(_:)(v39);
    PlaybackIntentDescriptor.playActivityInformation.setter(v68, v69, v70, v71);
  }

  else
  {
    v57 = v35;
    v58 = v36;
    v59 = v37;
    sub_100344C3C(v35, 0, v36, v37);
    PlaybackIntentDescriptor.playActivityInformation.setter(v57, 0, v58, v59);
    sub_100344C88(v57, 0, v58, v59);
  }

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v60 = swift_task_alloc();
  *(v0 + 568) = v60;
  *v60 = v0;
  v60[1] = sub_100349040;
  v61 = *(v0 + 392);

  return PlaybackController.add(_:route:)(v61, 0);
}

uint64_t sub_100349040()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 544);
    v4 = *(v2 + 536);
    v5 = sub_10034D7D0;
  }

  else
  {
    v3 = *(v2 + 544);
    v4 = *(v2 + 536);
    v5 = sub_10034916C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10034916C()
{
  v1 = v0[69];
  v2 = v0[65];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[58];
  v6 = v0[59];
  v7 = v0[49];

  sub_100188CDC(v7);
  (*(v6 + 8))(v4, v5);
  v1(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003492BC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v7 = type metadata accessor for MusicPin.Item();
  v6[33] = v7;
  v6[34] = *(v7 - 8);
  v6[35] = swift_task_alloc();
  v8 = type metadata accessor for MusicPin();
  v6[36] = v8;
  v6[37] = *(v8 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v6[40] = v9;
  v6[41] = *(v9 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[44] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[45] = v11;
  v6[46] = v10;

  return _swift_task_switch(sub_100349480, v11, v10);
}

uint64_t sub_100349480()
{
  if (qword_10117F6D8 != -1)
  {
    swift_once();
  }

  if (sub_100428914())
  {
    v1 = *(*(v0 + 256) + 32);
    v2 = swift_task_alloc();
    *(v0 + 376) = v2;
    *v2 = v0;
    v2[1] = sub_100349640;

    return sub_100349E5C(v1);
  }

  else
  {

    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0;
    *(v0 + 184) = 0u;
    *(v0 + 224) = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)(Strong, v0 + 184, 0, 0, 0, 0, v0 + 16);
    static Alert.explicitRestrictedAlert(traitCollection:)(0, v0 + 112);
    PresentationSource.present(_:)((v0 + 112));
    sub_100344A84(v0 + 112);
    sub_10012BA6C(v0 + 16);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100349640(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 384) = a1;
  *(v4 + 392) = v1;

  v5 = *(v3 + 368);
  v6 = *(v3 + 360);
  if (v1)
  {
    v7 = sub_100349AE4;
  }

  else
  {
    v7 = sub_100349784;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100349784()
{
  v37 = v0;
  v1 = v0[48];

  if (v1)
  {
    v2 = v0[48];
    Strong = swift_unknownObjectWeakLoadStrong();
    [v2 setPlayActivityFeatureNameSourceViewController:Strong];

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4 && (v5 = v4, v6 = [v4 navigationController], v5, v6))
    {
      [v6 pushViewController:v2 animated:1];
    }

    else
    {
    }
  }

  else
  {
    v7 = v0[39];
    v8 = v0[36];
    v9 = v0[37];
    v10 = v0[31];
    Logger.init(subsystem:category:)();
    (*(v9 + 16))(v7, v10, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[43];
    v15 = v0[40];
    v16 = v0[41];
    v17 = v0[39];
    v19 = v0[36];
    v18 = v0[37];
    if (v13)
    {
      v35 = v0[40];
      v21 = v0[34];
      v20 = v0[35];
      log = v11;
      v22 = v0[33];
      v31 = v0[36];
      v23 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v23 = 136446210;
      v34 = v14;
      MusicPin.item.getter();
      sub_10034D788(&qword_101186690, &type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v12;
      v26 = v25;
      (*(v21 + 8))(v20, v22);
      (*(v18 + 8))(v17, v31);
      v27 = sub_1000105AC(v24, v26, &v36);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, log, v30, "Unable to navigate to pinned item=%{public}s", v23, 0xCu);
      sub_10000959C(v33);

      (*(v16 + 8))(v34, v35);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
      (*(v16 + 8))(v14, v15);
    }
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_100349AE4()
{
  v35 = v0;
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = v0[31];

  Logger.init(subsystem:category:)();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v31 = v0[41];
    v32 = v0[40];
    v33 = v0[42];
    v7 = v0[37];
    v8 = v0[38];
    v9 = v0[35];
    v28 = v0[36];
    v29 = v0[49];
    v10 = v0[33];
    v11 = v0[34];
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v12 = 136446466;
    v30 = v6;
    MusicPin.item.getter();
    sub_10034D788(&qword_101186690, &type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v8, v28);
    v16 = sub_1000105AC(v13, v15, &v34);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v0[30] = v29;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v17 = String.init<A>(describing:)();
    v19 = sub_1000105AC(v17, v18, &v34);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v5, v30, "Error navigating to pinned item=%{public}s error=%{public}s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v21 = v0[41];
    v20 = v0[42];
    v22 = v0[40];
    v24 = v0[37];
    v23 = v0[38];
    v25 = v0[36];

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_100349E5C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 312) = a1;
  sub_10010FC20(&unk_101192990, &unk_100ECFED0);
  *(v2 + 24) = swift_task_alloc();
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  *(v2 + 32) = swift_task_alloc();
  v3 = type metadata accessor for Song();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  v4 = type metadata accessor for Playlist();
  *(v2 + 72) = v4;
  *(v2 + 80) = *(v4 - 8);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = _s6AlbumsV5ScopeOMa(0);
  *(v2 + 120) = swift_task_alloc();
  v5 = type metadata accessor for Artist();
  *(v2 + 128) = v5;
  *(v2 + 136) = *(v5 - 8);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  v6 = type metadata accessor for MusicPropertySource();
  *(v2 + 160) = v6;
  *(v2 + 168) = *(v6 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v7 = type metadata accessor for Album();
  *(v2 + 192) = v7;
  *(v2 + 200) = *(v7 - 8);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  v8 = type metadata accessor for MusicPin.Item();
  *(v2 + 240) = v8;
  *(v2 + 248) = *(v8 - 8);
  *(v2 + 256) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 264) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 272) = v10;
  *(v2 + 280) = v9;

  return _swift_task_switch(sub_10034A220, v10, v9);
}

uint64_t sub_10034A220(__n128 a1)
{
  v3 = *(v1 + 248);
  v2 = *(v1 + 256);
  v4 = *(v1 + 240);
  MusicPin.item.getter();
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == enum case for MusicPin.Item.album(_:))
  {
    v6 = *(v1 + 256);
    v8 = *(v1 + 240);
    v7 = *(v1 + 248);
    v9 = *(v1 + 224);
    v10 = *(v1 + 232);
    v12 = *(v1 + 192);
    v11 = *(v1 + 200);
    v54 = *(v1 + 184);
    v56 = *(v1 + 216);
    v58 = *(v1 + 176);
    v60 = v10;
    v14 = *(v1 + 160);
    v13 = *(v1 + 168);
    v61 = *(v1 + 312);

    (*(v7 + 96))(v6, v8);
    (*(v11 + 32))(v10, v6, v12);
    v15 = *(v11 + 16);
    v16 = v9;
    v15(v9, v10, v12);
    v17 = v54;
    (*(v13 + 104))(v54, enum case for MusicPropertySource.library(_:), v14);
    v15(v56, v16, v12);
    (*(v13 + 16))(v58, v54, v14);
    _s10DataSourceCMa_1(0);
    swift_allocObject();
    v18 = sub_10078B958(v56, v61, v58);
    v19 = objc_allocWithZone(type metadata accessor for MCDItemDetailViewController());
    v20 = sub_1007934B0(v18, v19);
LABEL_3:
    v62 = v20;
    (*(v13 + 8))(v17, v14);
    v21 = *(v11 + 8);
    v21(v16, v12);
    v21(v60, v12);
LABEL_8:

    v36 = *(v1 + 8);

    return v36(v62);
  }

  if (v5 == enum case for MusicPin.Item.artist(_:))
  {
    v22 = *(v1 + 256);
    v23 = *(v1 + 240);
    v24 = *(v1 + 248);
    v26 = *(v1 + 144);
    v25 = *(v1 + 152);
    v27 = *(v1 + 128);
    v28 = *(v1 + 136);
    v29 = *(v1 + 120);
    v63 = *(v1 + 312);

    (*(v24 + 96))(v22, v23);
    (*(v28 + 32))(v25, v22, v27);
    v30 = *(v28 + 16);
    v30(v26, v25, v27);
    v30(v29, v26, v27);
    swift_storeEnumTagMultiPayload();
    v31 = objc_allocWithZone(type metadata accessor for CarPlayAlbumsViewController(0));
    v62 = sub_1004217FC(v29, v63);
    v32 = *(v28 + 8);
    v32(v26, v27);
    v32(v25, v27);
    goto LABEL_8;
  }

  if (v5 == enum case for MusicPin.Item.musicVideo(_:))
  {
    goto LABEL_7;
  }

  if (v5 == enum case for MusicPin.Item.playlist(_:))
  {
    v38 = *(v1 + 256);
    v40 = *(v1 + 240);
    v39 = *(v1 + 248);
    v57 = *(v1 + 184);
    v59 = *(v1 + 176);
    v14 = *(v1 + 160);
    v13 = *(v1 + 168);
    v41 = *(v1 + 96);
    v42 = *(v1 + 104);
    v60 = v42;
    v11 = *(v1 + 80);
    v55 = *(v1 + 88);
    v12 = *(v1 + 72);
    v64 = *(v1 + 312);

    (*(v39 + 96))(v38, v40);
    (*(v11 + 32))(v42, v38, v12);
    v43 = *(v11 + 16);
    v16 = v41;
    v43(v41, v42, v12);
    v17 = v57;
    (*(v13 + 104))(v57, enum case for MusicPropertySource.library(_:), v14);
    v43(v55, v16, v12);
    (*(v13 + 16))(v59, v57, v14);
    _s10DataSourceCMa_0(0);
    swift_allocObject();
    v44 = sub_1006365C8(v55, v64, v59);
    v45 = objc_allocWithZone(type metadata accessor for MCDItemDetailViewController());
    v20 = sub_10079349C(v44, v45);
    goto LABEL_3;
  }

  if (v5 != enum case for MusicPin.Item.song(_:))
  {
LABEL_7:
    v33 = *(v1 + 256);
    v34 = *(v1 + 240);
    v35 = *(v1 + 248);

    (*(v35 + 8))(v33, v34);
    v62 = 0;
    goto LABEL_8;
  }

  v46 = *(v1 + 256);
  v47 = *(v1 + 64);
  v48 = *(v1 + 40);
  v49 = *(v1 + 48);
  (*(*(v1 + 248) + 96))(v46, *(v1 + 240));
  (*(v49 + 32))(v47, v46, v48);
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v50 = swift_allocObject();
  *(v1 + 288) = v50;
  *(v50 + 16) = xmmword_100EBC6C0;
  sub_10010FC20(&qword_10118BFD8, &qword_100ECFF40);
  *(v50 + 32) = static PartialMusicProperty<A>.albums.getter();
  v51 = swift_task_alloc();
  *(v1 + 296) = v51;
  *v51 = v1;
  v51[1] = sub_10034A8FC;
  v52 = *(v1 + 56);
  v53 = *(v1 + 40);

  return dispatch thunk of MusicPropertyContainer.with(_:)(v52, v50, v53, &protocol witness table for Song);
}

uint64_t sub_10034A8FC()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_10034AE88;
  }

  else
  {
    v5 = sub_10034AA54;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10034AA54()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);

  Song.albums.getter();
  v5 = *(v2 + 8);
  v5(v1, v3);
  v6 = sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v4, 1, v6);
  v9 = *(v0 + 192);
  v10 = *(v0 + 200);
  if (v8 == 1)
  {
    v11 = *(v0 + 32);
    v12 = *(v0 + 24);
    v5(*(v0 + 64), *(v0 + 40));
    sub_1000095E8(v12, &unk_101192990, &unk_100ECFED0);
    (*(v10 + 56))(v11, 1, 1, v9);
LABEL_5:
    sub_1000095E8(*(v0 + 32), &unk_101184730, &unk_100ECB920);
    v33 = 0;
    goto LABEL_7;
  }

  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  sub_10034DA18(v14);
  (*(v7 + 8))(v13, v6);
  if ((*(v10 + 48))(v14, 1, v9) == 1)
  {
    v5(*(v0 + 64), *(v0 + 40));
    goto LABEL_5;
  }

  v15 = *(v0 + 232);
  v16 = *(v0 + 208);
  v29 = v5;
  v30 = *(v0 + 200);
  v17 = *(v0 + 192);
  v26 = *(v0 + 184);
  v27 = *(v0 + 224);
  v18 = *(v0 + 168);
  v28 = *(v0 + 176);
  v19 = *(v0 + 160);
  v31 = *(v0 + 40);
  v32 = *(v0 + 64);
  v34 = *(v0 + 312);
  (*(v30 + 32))(v16, *(v0 + 32), v17);
  v20 = *(v30 + 16);
  v20(v15, v16, v17);
  (*(v18 + 104))(v26, enum case for MusicPropertySource.library(_:), v19);
  v20(v27, v15, v17);
  (*(v18 + 16))(v28, v26, v19);
  _s10DataSourceCMa_1(0);
  swift_allocObject();
  v21 = sub_10078B958(v27, v34, v28);
  v22 = objc_allocWithZone(type metadata accessor for MCDItemDetailViewController());
  v33 = sub_1007934B0(v21, v22);
  (*(v18 + 8))(v26, v19);
  v23 = *(v30 + 8);
  v23(v15, v17);
  v23(v16, v17);
  v29(v32, v31);
LABEL_7:

  v24 = *(v0 + 8);

  return v24(v33);
}

uint64_t sub_10034AE88()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10034AFE8(char *a1, uint64_t a2, uint64_t a3)
{
  v230 = a3;
  v227 = a2;
  sub_10010FC20(&qword_10118BFA0, &qword_100EC7960);
  __chkstk_darwin();
  v225 = &v189 - v4;
  v223 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image();
  v222 = *(v223 - 8);
  __chkstk_darwin();
  v224 = &v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GridView.Base.ViewModel.ImageConfiguration();
  __chkstk_darwin();
  v226 = &v189 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v196 = &v189 - v7;
  v207 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v206 = *(v207 - 8);
  __chkstk_darwin();
  v205 = &v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v204 = &v189 - v9;
  v235 = type metadata accessor for MusicPin.Action();
  v237 = *(v235 - 8);
  __chkstk_darwin();
  v236 = &v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v213 = &v189 - v11;
  sub_10010FC20(&qword_10118BFA8, &qword_100EC7968);
  __chkstk_darwin();
  v221 = &v189 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v242 = (&v189 - v13);
  __chkstk_darwin();
  v218 = &v189 - v14;
  __chkstk_darwin();
  v239 = &v189 - v15;
  v231 = type metadata accessor for MusicPin();
  v229 = *(v231 - 8);
  __chkstk_darwin();
  v220 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = v16;
  __chkstk_darwin();
  v193 = &v189 - v17;
  v214 = type metadata accessor for Logger();
  v194 = *(v214 - 8);
  __chkstk_darwin();
  v215 = &v189 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for MusicVideo();
  v202 = *(v203 - 8);
  __chkstk_darwin();
  v201 = &v189 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for Song();
  v191 = *(v192 - 8);
  __chkstk_darwin();
  v190 = &v189 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for Playlist();
  v198 = *(v199 - 8);
  __chkstk_darwin();
  v197 = &v189 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for Artist();
  v211 = *(v212 - 8);
  __chkstk_darwin();
  v195 = &v189 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v208 = &v189 - v23;
  v210 = type metadata accessor for Album();
  v209 = *(v210 - 8);
  __chkstk_darwin();
  v25 = &v189 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for MusicPin.Item();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v200 = &v189 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v217 = &v189 - v29;
  __chkstk_darwin();
  v189 = &v189 - v30;
  __chkstk_darwin();
  v32 = &v189 - v31;
  v241 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape();
  v238 = *(v241 - 8);
  __chkstk_darwin();
  v34 = &v189 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder();
  v36 = *(v35 - 8);
  __chkstk_darwin();
  v38 = &v189 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v40 = &v189 - v39;
  v240 = a1;
  MusicPin.item.getter();
  v41 = v27;
  v232 = *(v27 + 88);
  v233 = v27 + 88;
  v42 = v232(v32, v26);
  v244 = v34;
  v245 = v35;
  v246 = v38;
  v243 = v40;
  v234 = v27;
  v216 = enum case for MusicPin.Item.album(_:);
  v228 = v26;
  if (v42 == enum case for MusicPin.Item.album(_:))
  {
    v194 = *(v27 + 96);
    (v194)(v32, v26);
    v43 = v209;
    v44 = v32;
    v45 = v210;
    (*(v209 + 32))(v25, v44, v210);
    Album.artwork.getter();
    *v38 = 0;
    v38[8] = 0;
    v46 = v36;
    (*(v36 + 104))(v38, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.cpuiPlaceholder(_:), v35);
    v215 = Album.title.getter();
    v214 = v47;
    (*(v43 + 8))(v25, v45);
    v48 = *(sub_10010FC20(&qword_10118BFB0, &qword_100EC7970) + 48);
    *v34 = 0;
    v34[8] = 1;
    v49 = type metadata accessor for RoundedCornerStyle();
    (*(*(v49 - 8) + 56))(&v34[v48], 1, 1, v49);
    v50 = v241;
    (*(v238 + 104))(v34, enum case for GridView.Base.ViewModel.ImageConfiguration.Shape.rounded(_:), v241);
    v51 = enum case for MusicPin.Item.artist(_:);
    v52 = v26;
    v53 = v46;
    v54 = v240;
LABEL_9:
    v59 = v237;
    goto LABEL_14;
  }

  v55 = v42;
  v209 = v36;
  if (v42 == enum case for MusicPin.Item.artist(_:))
  {
    v56 = v32;
    v194 = *(v41 + 96);
    (v194)(v32, v228);
    v57 = v208;
    (*(v211 + 32))(v208, v56, v212);
    sub_10010FC20(&unk_10118F200, &unk_100ECB940);
    swift_allocObject();
    MusicAttributeProperty.init(_:)();
    Artist.subscript.getter();

    v50 = v241;
    v81 = v238;
    v83 = v244;
    v82 = v245;
    v84 = sub_10010FC20(&qword_101180CB0, &unk_100ECAA10);
    v85 = *(v84 + 48);
    v86 = v246;
    v87 = &v246[*(v84 + 64)];
    *v246 = 0xD000000000000010;
    *(v86 + 1) = 0x8000000100E3CE70;
    v88 = type metadata accessor for Image.Scale();
    (*(*(v88 - 8) + 56))(&v86[v85], 1, 1, v88);
    *v87 = 0;
    v87[8] = 1;
    v89 = v209;
    (*(v209 + 104))(v86, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.systemImage(_:), v82);
    v215 = Artist.name.getter();
    v214 = v90;
    (*(v211 + 8))(v57, v212);
    (*(v81 + 104))(v83, enum case for GridView.Base.ViewModel.ImageConfiguration.Shape.circle(_:), v50);
    v51 = v55;
    v53 = v89;
    v54 = v240;
    v52 = v228;
    goto LABEL_9;
  }

  LODWORD(v210) = enum case for MusicPin.Item.artist(_:);
  v58 = v246;
  v59 = v237;
  if (v42 == enum case for MusicPin.Item.musicVideo(_:))
  {
    v60 = v228;
    v194 = *(v41 + 96);
    (v194)(v32, v228);
    v61 = v202;
    v62 = v201;
    v63 = v32;
    v64 = v203;
    (*(v202 + 32))(v201, v63, v203);
    MusicVideo.artwork.getter();
    v65 = sub_10010FC20(&qword_101180CB0, &unk_100ECAA10);
    v66 = *(v65 + 48);
    v67 = &v58[*(v65 + 64)];
    strcpy(v58, "music.note.tv");
    *(v58 + 7) = -4864;
    v68 = type metadata accessor for Image.Scale();
    (*(*(v68 - 8) + 56))(&v58[v66], 1, 1, v68);
    *v67 = 0;
    v67[8] = 1;
    v53 = v209;
    (*(v209 + 104))(v58, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.systemImage(_:), v245);
    v215 = MusicVideo.title.getter();
    v214 = v69;
    (*(v61 + 8))(v62, v64);
    v70 = *(sub_10010FC20(&qword_10118BFB0, &qword_100EC7970) + 48);
    v71 = v244;
    *v244 = 0;
    *(v71 + 8) = 1;
  }

  else
  {
    if (v42 == enum case for MusicPin.Item.playlist(_:))
    {
      v60 = v228;
      v194 = *(v41 + 96);
      (v194)(v32, v228);
      v72 = v198;
      v73 = v197;
      v74 = v32;
      v75 = v199;
      (*(v198 + 32))(v197, v74, v199);
      Playlist.artwork.getter();
      v76 = sub_10010FC20(&qword_101180CB0, &unk_100ECAA10);
      v77 = *(v76 + 48);
      v78 = &v58[*(v76 + 64)];
      *v58 = 0x6F6E2E636973756DLL;
      *(v58 + 1) = 0xEF7473696C2E6574;
      v79 = type metadata accessor for Image.Scale();
      (*(*(v79 - 8) + 56))(&v58[v77], 1, 1, v79);
      *v78 = 0;
      v78[8] = 1;
      v53 = v209;
      (*(v209 + 104))(v58, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.systemImage(_:), v245);
      v215 = Playlist.name.getter();
      v214 = v80;
      (*(v72 + 8))(v73, v75);
    }

    else
    {
      if (v42 != enum case for MusicPin.Item.song(_:))
      {
        v169 = v41;
        v170 = v215;
        Logger.init(subsystem:category:)();
        v171 = v229;
        v172 = v193;
        v173 = v240;
        v174 = v231;
        (*(v229 + 16))(v193, v240, v231);
        v175 = Logger.logObject.getter();
        v176 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v175, v176))
        {
          v177 = swift_slowAlloc();
          v244 = v177;
          v246 = swift_slowAlloc();
          v247 = v246;
          *v177 = 136446210;
          v178 = v189;
          LODWORD(v245) = v176;
          MusicPin.item.getter();
          sub_10034D788(&qword_101186690, &type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);
          v179 = v228;
          v180 = dispatch thunk of CustomStringConvertible.description.getter();
          v182 = v181;
          v183 = *(v169 + 8);
          v183(v178, v179);
          v184 = *(v171 + 8);
          v185 = v231;
          v184(v172, v231);
          v186 = sub_1000105AC(v180, v182, &v247);

          v187 = v244;
          *(v244 + 4) = v186;
          _os_log_impl(&_mh_execute_header, v175, v245, "Unsupported Pin item encountered: %{public}s", v187, 0xCu);
          sub_10000959C(v246);

          v184(v240, v185);
          (*(v194 + 8))(v215, v214);
        }

        else
        {

          v188 = *(v171 + 8);
          v188(v173, v174);
          v188(v172, v174);
          (*(v194 + 8))(v170, v214);
          v183 = *(v169 + 8);
          v179 = v228;
        }

        v183(v32, v179);
        return 0;
      }

      v60 = v228;
      v194 = *(v41 + 96);
      (v194)(v32, v228);
      v91 = v191;
      v92 = v190;
      v93 = v32;
      v94 = v192;
      (*(v191 + 32))(v190, v93, v192);
      Song.artwork.getter();
      v95 = sub_10010FC20(&qword_101180CB0, &unk_100ECAA10);
      v96 = *(v95 + 48);
      v97 = &v58[*(v95 + 64)];
      *v58 = 0x6F6E2E636973756DLL;
      *(v58 + 1) = 0xEA00000000006574;
      v98 = type metadata accessor for Image.Scale();
      (*(*(v98 - 8) + 56))(&v58[v96], 1, 1, v98);
      *v97 = 0;
      v97[8] = 1;
      v53 = v209;
      (*(v209 + 104))(v58, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.systemImage(_:), v245);
      v215 = Song.title.getter();
      v214 = v99;
      (*(v91 + 8))(v92, v94);
    }

    v70 = *(sub_10010FC20(&qword_10118BFB0, &qword_100EC7970) + 48);
    v71 = v244;
    *v244 = 0;
    *(v71 + 8) = 1;
  }

  v100 = type metadata accessor for RoundedCornerStyle();
  v101 = v71 + v70;
  v52 = v60;
  (*(*(v100 - 8) + 56))(v101, 1, 1, v100);
  v50 = v241;
  (*(v238 + 104))(v71, enum case for GridView.Base.ViewModel.ImageConfiguration.Shape.rounded(_:), v241);
  v54 = v240;
  v51 = v210;
LABEL_14:
  v102 = v217;
  MusicPin.item.getter();
  v103 = v232(v102, v52);
  v104 = v235;
  LODWORD(v210) = v51;
  if (v103 == v216 || v103 == v51)
  {
    goto LABEL_21;
  }

  if (v103 != enum case for MusicPin.Item.musicVideo(_:))
  {
    if (v103 != enum case for MusicPin.Item.playlist(_:) && v103 != enum case for MusicPin.Item.song(_:))
    {
      v117 = type metadata accessor for GridView.Base.ViewModel.Accessory();
      v118 = v52;
      v114 = v218;
      (*(*(v117 - 8) + 56))(v218, 1, 1, v117);
      v115 = *(v234 + 8);
      v115(v102, v118);
      goto LABEL_30;
    }

LABEL_21:
    v115 = *(v234 + 8);
    v115(v102, v52);
    v119 = v213;
    MusicPin.action.getter();
    v120 = (*(v59 + 88))(v119, v104);
    if (v120 == enum case for MusicPin.Action.navigate(_:))
    {
      v121 = type metadata accessor for GridView.Base.ViewModel.Accessory();
      v122 = v242;
      (*(*(v121 - 8) + 56))(v242, 1, 1, v121);
    }

    else
    {
      v122 = v242;
      if (v120 == enum case for MusicPin.Action.play(_:))
      {
        v123 = sub_10010FC20(&qword_10118BFC8, &qword_100EC7980);
        v124 = *(v123 + 48);
        v125 = v242 + *(v123 + 64);
        v126 = 0x6C69662E79616C70;
        v127 = 0xE90000000000006CLL;
      }

      else
      {
        if (v120 != enum case for MusicPin.Action.shuffle(_:))
        {
          v134 = type metadata accessor for GridView.Base.ViewModel.Accessory();
          (*(*(v134 - 8) + 56))(v122, 1, 1, v134);
          (*(v59 + 8))(v213, v104);
          goto LABEL_29;
        }

        v128 = sub_10010FC20(&qword_10118BFC8, &qword_100EC7980);
        v124 = *(v128 + 48);
        v125 = v242 + *(v128 + 64);
        v126 = 0x656C6666756873;
        v127 = 0xE700000000000000;
      }

      *v242 = v126;
      v242[1] = v127;
      v129 = type metadata accessor for Image.Scale();
      (*(*(v129 - 8) + 56))(v242 + v124, 1, 1, v129);
      *v125 = 0;
      v125[8] = 1;
      v130 = enum case for GridView.Base.ViewModel.Accessory.symbol(_:);
      v131 = type metadata accessor for GridView.Base.ViewModel.Accessory();
      v132 = *(v131 - 8);
      (*(v132 + 104))(v242, v130, v131);
      v133 = v131;
      v122 = v242;
      (*(v132 + 56))(v242, 0, 1, v133);
      v104 = v235;
    }

LABEL_29:
    v114 = v218;
    sub_10003D17C(v122, v218, &qword_10118BFA8, &qword_100EC7968);
    goto LABEL_30;
  }

  v105 = sub_10010FC20(&qword_10118BFC8, &qword_100EC7980);
  v209 = v53;
  v106 = v52;
  v107 = *(v105 + 48);
  v108 = v218;
  v109 = &v218[*(v105 + 64)];
  *v218 = 0x6C69662E79616C70;
  *(v108 + 1) = 0xE90000000000006CLL;
  v110 = type metadata accessor for Image.Scale();
  (*(*(v110 - 8) + 56))(&v108[v107], 1, 1, v110);
  *v109 = 0;
  v109[8] = 1;
  v111 = enum case for GridView.Base.ViewModel.Accessory.symbol(_:);
  v112 = type metadata accessor for GridView.Base.ViewModel.Accessory();
  v113 = *(v112 - 8);
  (*(v113 + 104))(v108, v111, v112);
  v114 = v108;
  (*(v113 + 56))(v108, 0, 1, v112);
  v59 = v237;
  v115 = *(v234 + 8);
  v116 = v106;
  v53 = v209;
  v115(v102, v116);
LABEL_30:
  sub_10003D17C(v114, v239, &qword_10118BFA8, &qword_100EC7968);
  v135 = v236;
  MusicPin.action.getter();
  v136 = (*(v59 + 88))(v135, v104);
  if (v136 == enum case for MusicPin.Action.navigate(_:))
  {
    v137 = v229;
    if (qword_10117F6D8 != -1)
    {
      swift_once();
    }

    LODWORD(v242) = sub_100428914() ^ 1;
  }

  else if (v136 == enum case for MusicPin.Action.play(_:) || v136 == enum case for MusicPin.Action.shuffle(_:))
  {
    v138 = v53;
    v139 = v228;
    v140 = v204;
    sub_100537A68(v54, v204);
    v141 = v206;
    v142 = v205;
    v143 = v207;
    (*(v206 + 104))(v205, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v207);
    sub_10034D788(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus, &protocol conformance descriptor for MusicPlayer.PlayabilityStatus);
    v144 = dispatch thunk of static Equatable.== infix(_:_:)();
    v145 = *(v141 + 8);
    v145(v142, v143);
    v145(v140, v143);
    if (v144)
    {
      v146 = v200;
      MusicPin.item.getter();
      v147 = v232(v146, v139);
      v53 = v138;
      if (v147 == v210)
      {
        (v194)(v146, v139);
        v148 = v211;
        v149 = v195;
        v150 = v212;
        (*(v211 + 32))(v195, v146, v212);
        v151 = v196;
        Artist.libraryAddedDate.getter();
        (*(v148 + 8))(v149, v150);
        v152 = type metadata accessor for Date();
        LODWORD(v242) = (*(*(v152 - 8) + 48))(v151, 1, v152) == 1;
        sub_1000095E8(v151, &qword_101188C20, &qword_100EC2030);
      }

      else
      {
        v115(v146, v139);
        LODWORD(v242) = 0;
      }

      v137 = v229;
      v50 = v241;
    }

    else
    {
      LODWORD(v242) = 1;
      v137 = v229;
      v50 = v241;
      v53 = v138;
    }
  }

  else
  {
    (*(v59 + 8))(v236, v104);
    LODWORD(v242) = 0;
    v137 = v229;
  }

  v153 = MusicPin.id.getter();
  v236 = v154;
  v237 = v153;
  v155 = *(sub_10010FC20(&qword_10118BFB8, &qword_100EC7978) + 48);
  v156 = v224;
  sub_1000089F8(v243, v224, &unk_101188920, &qword_100EBCC50);
  v157 = v245;
  (*(v53 + 16))(v156 + v155, v246, v245);
  (*(v53 + 56))(v156 + v155, 0, 1, v157);
  (*(v222 + 104))(v156, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.artwork(_:), v223);
  v158 = v238;
  v159 = v225;
  (*(v238 + 16))(v225, v244, v50);
  (*(v158 + 56))(v159, 0, 1, v50);
  GridView.Base.ViewModel.ImageConfiguration.init(image:shape:isTallArtwork:)();
  v160 = v239;
  sub_1000089F8(v239, v221, &qword_10118BFA8, &qword_100EC7968);
  v161 = v220;
  v162 = v53;
  v163 = v231;
  (*(v137 + 16))(v220, v54, v231);
  v164 = (*(v137 + 80) + 32) & ~*(v137 + 80);
  v165 = swift_allocObject();
  v166 = v230;
  *(v165 + 16) = v227;
  *(v165 + 24) = v166;
  (*(v137 + 32))(v165 + v164, v161, v163);
  v167 = GridView.Base.ViewModel.__allocating_init(id:title:subtitle:imageConfiguration:accessory:allowsTouches:disabledAppearance:action:)();
  (*(v137 + 8))(v240, v163);
  sub_1000095E8(v160, &qword_10118BFA8, &qword_100EC7968);
  (*(v158 + 8))(v244, v241);
  (*(v162 + 8))(v246, v245);
  sub_1000095E8(v243, &unk_101188920, &qword_100EBCC50);
  return v167;
}

uint64_t sub_10034D108()
{

  swift_unknownObjectWeakDestroy();

  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource_token, &unk_101197210, &unk_100ED5E70);
  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource____lazy_storage___pinsObserver, &qword_10118BFE0, &qword_100EC79B0);
  v1 = OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource_pins;
  v2 = sub_10010FC20(&unk_1011972A0, &qword_100ECBC60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s14PinsDataSourceCMa(uint64_t a1)
{
  result = qword_10118BED0;
  if (!qword_10118BED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10034D25C(uint64_t a1)
{
  sub_100329A50(319);
  if (v1 <= 0x3F)
  {
    sub_10034D35C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10034D35C(uint64_t a1)
{
  if (!qword_10118BEE0)
  {
    type metadata accessor for MusicPin();
    sub_10034D788(&qword_101197100, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
    v1 = type metadata accessor for MusicItemCollection();
    if (!v2)
    {
      atomic_store(v1, &qword_10118BEE0);
    }
  }
}

uint64_t sub_10034D468(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicPin() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1003492BC(v10, a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10034D588()
{
  v1 = type metadata accessor for MusicPin();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10034D660(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicPin() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10034848C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10034D788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10034D7D8(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_10034D888()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(*v0 + 128);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_10034D9A8()
{
  sub_10034D888();

  return swift_deallocClassInstance();
}

uint64_t sub_10034DA78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  sub_10010FC20(a1, a2);
  sub_100020674(a3, a1, a2, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v17[4] == v17[0])
  {
    v10 = a4(0);
    return (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  }

  else
  {
    v12 = dispatch thunk of Collection.subscript.read();
    v14 = v13;
    v15 = a4(0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(a5, v14, v15);
    v12(v17, 0);
    return (*(v16 + 56))(a5, 0, 1, v15);
  }
}

uint64_t sub_10034DFAC()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v0 = Album.title.getter();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    return Album.title.getter();
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v5 = String.init(localized:table:bundle:locale:comment:)();
  if (Album.trackCount.getter() > 1)
  {
    return v5;
  }

  v6 = Album.representativeTrackTitle.getter();
  if (!v7)
  {
    return v5;
  }

  v8 = v6;

  return v8;
}

uint64_t sub_10034E12C()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v0 = Album.artistName.getter();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {

    return Album.artistName.getter();
  }

  else
  {
    Album.isCompilation.getter();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }
}

uint64_t sub_10034E2C4()
{
  sub_10010FC20(&qword_101183AD0, &qword_100EBE4D8);
  __chkstk_darwin();
  v1 = &v8[-v0];
  v2 = Playlist.isOwner.getter();
  if (v2 == 2 || (v2 & 1) == 0)
  {
    return 0;
  }

  static ApplicationCapabilities.shared.getter(v8);
  sub_100014984(v8);
  if (v8[96] == 2)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  if (qword_10117F278 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v1);

  v4 = type metadata accessor for UserProfile();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_1000095E8(v1, &qword_101183AD0, &qword_100EBE4D8);
    return 0;
  }

  v7 = UserProfile.name.getter();
  (*(v5 + 8))(v1, v4);
  return v7;
}

uint64_t sub_10034E548()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v0 = Artist.name.getter();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {

    return Artist.name.getter();
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }
}

uint64_t sub_10034E6A8()
{
  sub_10010FC20(&unk_101182940, &qword_100EBE250);
  v0 = type metadata accessor for Playlist.Variant();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBCED0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Playlist.Variant.regular(_:), v0);
  v6(v5 + v2, enum case for Playlist.Variant.smart(_:), v0);
  v6(v5 + 2 * v2, enum case for Playlist.Variant.genius(_:), v0);
  v6(v5 + 3 * v2, enum case for Playlist.Variant.favoriteSongs(_:), v0);
  v6(v5 + 4 * v2, enum case for Playlist.Variant.subscribed(_:), v0);
  v6(v5 + 5 * v2, enum case for Playlist.Variant.personalMix(_:), v0);
  v7 = sub_10010DF7C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_101218AB0 = v7;
  return result;
}

uint64_t sub_10034E888()
{
  sub_10010FC20(&unk_101182940, &qword_100EBE250);
  v0 = type metadata accessor for Playlist.Variant();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBF880;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Playlist.Variant.regular(_:), v0);
  v6(v5 + v2, enum case for Playlist.Variant.smart(_:), v0);
  v6(v5 + 2 * v2, enum case for Playlist.Variant.genius(_:), v0);
  v6(v5 + 3 * v2, enum case for Playlist.Variant.favoriteSongs(_:), v0);
  v6(v5 + 4 * v2, enum case for Playlist.Variant.subscribed(_:), v0);
  v6(v5 + 5 * v2, enum case for Playlist.Variant.personalMix(_:), v0);
  v6(v5 + 6 * v2, enum case for Playlist.Variant.folder(_:), v0);
  v7 = sub_10010DF7C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_101218AB8 = v7;
  return result;
}

uint64_t Playlist.numberOfDuplicateTracks(_:library:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Playlist();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for MusicLibrary.AddToPlaylistAction();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_10034EBAC, 0, 0);
}

uint64_t sub_10034EBAC()
{
  v1 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v0[2] == v0[3])
  {

    v2 = v0[1];

    return v2(0);
  }

  else
  {
    static MusicLibraryAction<>.add(to:)();
    v4 = swift_task_alloc();
    v0[14] = v4;
    v5 = sub_100020674(&unk_10118C0A0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    *v4 = v0;
    v4[1] = sub_10034ED7C;
    v6 = v0[13];
    v7 = v0[11];
    v8 = v0[5];

    return MusicLibrary.duplicateCount<A, B>(for:action:)(v8, v6, v1, v7, v5, &protocol witness table for MusicLibrary.AddToPlaylistAction, &protocol witness table for MusicLibrary.AddToPlaylistAction, &protocol witness table for Track);
  }
}

uint64_t sub_10034ED7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[15] = v1;

  (*(v4[12] + 8))(v4[13], v4[11]);
  if (v1)
  {

    return _swift_task_switch(sub_10034EF34, 0, 0);
  }

  else
  {

    v6 = v5[1];

    return v6(a1);
  }
}

uint64_t sub_10034EF34()
{
  v24 = v0;
  if (qword_10117F6E8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_101218C50);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[15];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  if (v8)
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = Playlist.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000105AC(v14, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v18 = String.init<A>(describing:)();
    v20 = sub_1000105AC(v18, v19, &v23);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to retrieve duplicate tracks count for playlist=%{public}s with error=%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = v0[1];

  return v21(0);
}

uint64_t Playlist.addTracks(_:duplicatePolicy:duplicateCount:presentationSource:presentNotice:mpModel:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 624) = v7;
  *(v8 + 616) = a7;
  *(v8 + 985) = a6;
  *(v8 + 608) = a5;
  *(v8 + 984) = a4;
  *(v8 + 600) = a3;
  *(v8 + 592) = a2;
  *(v8 + 584) = a1;
  type metadata accessor for Locale();
  *(v8 + 632) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  *(v8 + 640) = swift_task_alloc();
  v9 = type metadata accessor for MusicLibrary.AddToPlaylistError();
  *(v8 + 648) = v9;
  *(v8 + 656) = *(v9 - 8);
  *(v8 + 664) = swift_task_alloc();
  v10 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  *(v8 + 672) = v10;
  v11 = *(v10 - 8);
  *(v8 + 680) = v11;
  *(v8 + 688) = *(v11 + 64);
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = sub_10010FC20(&unk_10118C0B0, &qword_100ECFA00);
  *(v8 + 712) = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  *(v8 + 720) = swift_task_alloc();
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = type metadata accessor for Notice.Variant(0);
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = type metadata accessor for Notice(0);
  *(v8 + 776) = swift_task_alloc();
  *(v8 + 784) = swift_task_alloc();
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = swift_task_alloc();
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  *(v8 + 808) = swift_task_alloc();
  *(v8 + 816) = swift_task_alloc();
  v12 = type metadata accessor for Track();
  *(v8 + 824) = v12;
  *(v8 + 832) = *(v12 - 8);
  *(v8 + 840) = swift_task_alloc();
  *(v8 + 848) = swift_task_alloc();
  v13 = type metadata accessor for MusicLibrary.AddToPlaylistDuplicatePolicy();
  *(v8 + 856) = v13;
  *(v8 + 864) = *(v13 - 8);
  *(v8 + 872) = swift_task_alloc();
  v14 = type metadata accessor for Playlist();
  *(v8 + 880) = v14;
  v15 = *(v14 - 8);
  *(v8 + 888) = v15;
  *(v8 + 896) = *(v15 + 64);
  *(v8 + 904) = swift_task_alloc();
  *(v8 + 912) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 920) = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 928) = v17;
  *(v8 + 936) = v16;

  return _swift_task_switch(sub_10034F664, v17, v16);
}

uint64_t sub_10034F664()
{
  v0[118] = sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v0[58] == v0[59])
  {

    if (qword_10117F6E8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000060E4(v1, qword_101218C50);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "No tracks to add to playlist.", v4, 2u);
    }

    v5 = v0[1];

    return v5();
  }

  else
  {
    type metadata accessor for MusicLibrary();
    v0[119] = static MusicLibrary.shared.getter();
    v7 = swift_task_alloc();
    v0[120] = v7;
    v8 = sub_100020674(&unk_10118C0A0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    v0[121] = v8;
    *v7 = v0;
    v7[1] = sub_10034F9FC;
    v9 = v0[114];
    v10 = v0[84];
    v11 = v0[78];
    v12 = v0[74];
    v13 = v0[73];

    return MusicLibrary.add<A>(_:to:duplicatePolicy:importAllowedHandler:)(v9, v13, v11, v12, 0, 0, v10, v8);
  }
}

uint64_t sub_10034F9FC()
{
  v2 = *v1;
  *(*v1 + 976) = v0;

  if (v0)
  {
    v3 = *(v2 + 936);
    v4 = *(v2 + 928);
    v5 = sub_100350BE8;
  }

  else
  {

    v3 = *(v2 + 936);
    v4 = *(v2 + 928);
    v5 = sub_10034FB20;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_10034FB20()
{
  v1 = v0;
  v2 = *(v0 + 985);

  if (v2 != 1)
  {
    (*(*(v0 + 888) + 8))(*(v0 + 912), *(v0 + 880));
    goto LABEL_61;
  }

  v3 = *(v0 + 872);
  v4 = *(v0 + 864);
  v5 = *(v0 + 856);
  v6 = *(v0 + 592);
  v7 = *(v0 + 984);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v8 = dispatch thunk of Collection.distance(from:to:)();
  (*(v4 + 16))(v3, v6, v5);
  v9 = (*(v4 + 88))(v3, v5);
  v10 = enum case for MusicLibrary.AddToPlaylistDuplicatePolicy.skipDuplicates(_:);
  (*(v4 + 8))(v3, v5);
  if (v9 == v10 && (v7 & 1) == 0)
  {
    v11 = v1[75];
    v12 = __OFSUB__(v8, v11);
    v8 -= v11;
    if (v12)
    {
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }
  }

  v128 = v8;
  v13 = v1[77];
  v134 = v1;
  if (!v13)
  {
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (dispatch thunk of Collection.distance(from:to:)() == 1)
    {
      v19 = v1[104];
      v20 = v1[103];
      v21 = v1[101];
      sub_10034DA78(&unk_1011841D0, &qword_100EC5DB0, &qword_1011913B0, &type metadata accessor for Track, v21);
      if ((*(v19 + 48))(v21, 1, v20) != 1)
      {
        v74 = v1[104];
        v75 = v1[103];
        v76 = v1[101];
        v125 = Track.id.getter();
        v22 = v77;
        (*(v74 + 8))(v76, v75);
LABEL_36:
        v78 = v128;
        if (Playlist.hasActiveCollaboration.getter())
        {
          v126 = v22;
          v79 = v1 + 54;
          v80 = v1[104];
          v81 = v1[89];
          v82 = v1[88];
          (*(v1[85] + 16))(v1[87], v1[73], v1[84]);
          dispatch thunk of Sequence.makeIterator()();
          v83 = 0;
          v84 = *(v82 + 36);
          v130 = (v80 + 8);
          v132 = (v80 + 16);
          while (1)
          {
            dispatch thunk of Collection.endIndex.getter();
            if (*(v81 + v84) == v1[69])
            {
              break;
            }

            v86 = v1[105];
            v87 = v1[103];
            v88 = dispatch thunk of Collection.subscript.read();
            (*v132)(v86);
            v88(v79, 0);
            dispatch thunk of Collection.formIndex(after:)();
            Track.catalogID.getter();
            v90 = v89;
            (*v130)(v86, v87);
            if (v90)
            {

              v85 = 0;
            }

            else
            {
              v85 = 1;
            }

            v12 = __OFADD__(v83, v85);
            v83 += v85;
            v1 = v134;
            if (v12)
            {
              __break(1u);
              goto LABEL_65;
            }
          }

          sub_1000095E8(v1[89], &unk_10118C0B0, &qword_100ECFA00);
          v78 = v128 - v83;
          if (__OFSUB__(v128, v83))
          {
            goto LABEL_66;
          }

          v22 = v126;
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong || (v92 = Strong, v93 = UIViewController.noticePresenter.getter(), v92, !v93))
        {
          (*(v1[111] + 8))(v1[114], v1[110]);

          goto LABEL_61;
        }

        v127 = v22;
        v94 = v1[94];
        v95 = v1[91];
        v96 = sub_10010FC20(&unk_10118C0C0, &qword_100EC7A78);
        v97 = *(v96 + 48);
        *v94 = Playlist.name.getter();
        v94[1] = v98;
        Playlist.artworkViewModel.getter(v95);
        v99 = type metadata accessor for ArtworkImage.ViewModel(0);
        v100 = (*(*(v99 - 8) + 48))(v95, 1, v99);
        v101 = v1[91];
        v133 = v93;
        if (v100 == 1)
        {
          sub_1000095E8(v101, &unk_10118A5E0, &unk_100EBCD90);
          v102 = type metadata accessor for Artwork();
          (*(*(v102 - 8) + 56))(v94 + v97, 1, 1, v102);
        }

        else
        {
          v103 = type metadata accessor for Artwork();
          v104 = *(v103 - 8);
          (*(v104 + 16))(v94 + v97, v101, v103);
          sub_10035AF54(v101, type metadata accessor for ArtworkImage.ViewModel);
          (*(v104 + 56))(v94 + v97, 0, 1, v103);
        }

        v105 = v1[97];
        v106 = v1[94];
        *(v106 + *(v96 + 64)) = v78;
        swift_storeEnumTagMultiPayload();
        static Notice.variant(_:)(v106, v105);
        sub_10035AF54(v106, type metadata accessor for Notice.Variant);
        PresentationSource.windowScene.getter();
        if (v107)
        {
          v108 = v107;
          v109 = [v107 delegate];

          if (v109 && (v1[68] = v109, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
          {
            v110 = v1[47];
            if (v110)
            {
              v129 = *(*sub_10000954C(v1 + 44, v110) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

              sub_10000959C(v1 + 44);
LABEL_59:
              v131 = v1[114];
              v111 = v1[113];
              v112 = v1[112];
              v113 = v1[111];
              v114 = v1[110];
              v115 = v1[98];
              v116 = v1[97];
              v117 = v134[96];
              (*(v113 + 16))(v111);
              v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
              v119 = (v112 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
              v120 = swift_allocObject();
              (*(v113 + 32))(v120 + v118, v111, v114);
              v121 = (v120 + v119);
              *v121 = v125;
              v121[1] = v127;
              *(v120 + ((v119 + 23) & 0xFFFFFFFFFFFFFFF8)) = v129;
              sub_10035AEF0(v116, v115);
              v122 = *(v117 + 32);
              v1 = v134;
              v123 = (v115 + v122);
              sub_100020438(*(v115 + v122), *(v115 + v122 + 8));
              *v123 = sub_10035AE54;
              v123[1] = v120;
              (*(*v133 + 200))(v115, 0);

              (*(v113 + 8))(v131, v114);
              v73 = v115;
LABEL_60:
              sub_10035AF54(v73, type metadata accessor for Notice);
              goto LABEL_61;
            }
          }

          else
          {
            v1[48] = 0;
            *(v1 + 22) = 0u;
            *(v1 + 23) = 0u;
          }

          sub_1000095E8((v1 + 44), &unk_101184EA0, &unk_100EBFA20);
        }

        v129 = 0;
        goto LABEL_59;
      }

      sub_1000095E8(v1[101], &qword_10118A530, &qword_100EC64E0);
    }

    v125 = 0;
    v22 = 0;
    goto LABEL_36;
  }

  v14 = v13;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() != 1)
  {
    v18 = 0;
    goto LABEL_17;
  }

  v15 = v1[104];
  v16 = v1[103];
  v17 = v1[102];
  sub_10034DA78(&unk_1011841D0, &qword_100EC5DB0, &qword_1011913B0, &type metadata accessor for Track, v17);
  if ((*(v15 + 48))(v17, 1, v16) == 1)
  {
    sub_1000095E8(v1[102], &qword_10118A530, &qword_100EC64E0);
    v18 = 0;
    goto LABEL_17;
  }

  v23 = v1[106];
  (*(v1[104] + 32))(v23, v1[102], v1[103]);
  v24 = [objc_opt_self() kindWithVariants:3];
  v25 = swift_task_alloc();
  *(v25 + 16) = v23;
  v26 = objc_allocWithZone(MPIdentifierSet);
  v27 = String._bridgeToObjectiveC()();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_10035AFC0;
  *(v28 + 24) = v25;
  v1[42] = sub_1002CF914;
  v1[43] = v28;
  v1[38] = _NSConcreteStackBlock;
  v1[39] = 1107296256;
  v1[40] = sub_10006BD7C;
  v1[41] = &unk_1010A8070;
  v29 = _Block_copy(v1 + 38);

  v18 = [v26 initWithSource:v27 modelKind:v24 block:v29];

  v30 = v29;
  v1 = v134;
  _Block_release(v30);

  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
LABEL_67:
    __break(1u);
    return;
  }

  v31 = v134[106];
  v32 = v134[104];
  v33 = v134[103];

  (*(v32 + 8))(v31, v33);
LABEL_17:
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    v36 = UIViewController.noticePresenter.getter();

    if (v36)
    {
      v37 = v1[95];
      v38 = v1[92];
      v39 = sub_10010FC20(&unk_10118C0C0, &qword_100EC7A78);
      v40 = *(v39 + 48);
      *v37 = Playlist.name.getter();
      v37[1] = v41;
      Playlist.artworkViewModel.getter(v38);
      v42 = type metadata accessor for ArtworkImage.ViewModel(0);
      v43 = (*(*(v42 - 8) + 48))(v38, 1, v42);
      v44 = v1[92];
      if (v43 == 1)
      {
        sub_1000095E8(v1[92], &unk_10118A5E0, &unk_100EBCD90);
        v45 = type metadata accessor for Artwork();
        (*(*(v45 - 8) + 56))(v37 + v40, 1, 1, v45);
      }

      else
      {
        v46 = type metadata accessor for Artwork();
        v47 = *(v46 - 8);
        (*(v47 + 16))(v37 + v40, v44, v46);
        sub_10035AF54(v44, type metadata accessor for ArtworkImage.ViewModel);
        (*(v47 + 56))(v37 + v40, 0, 1, v46);
      }

      v48 = v1[99];
      v49 = v1[95];
      *(v49 + *(v39 + 64)) = v128;
      swift_storeEnumTagMultiPayload();
      static Notice.variant(_:)(v49, v48);
      sub_10035AF54(v49, type metadata accessor for Notice.Variant);
      PresentationSource.windowScene.getter();
      if (v50)
      {
        v51 = v50;
        v52 = [v50 delegate];

        if (v52 && (v1[72] = v52, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
        {
          v53 = v1[52];
          if (v53)
          {
            v54 = *(*sub_10000954C(v1 + 49, v53) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

            sub_10000959C(v1 + 49);
LABEL_31:
            v55 = v1[111];
            v56 = v1[110];
            v57 = v1[90];
            v58 = v14;
            dispatch thunk of LegacyModelObjectConvertible.init(_:)();
            v59 = (*(v55 + 48))(v57, 1, v56);
            v60 = v1[100];
            v61 = v1[99];
            if (v59 == 1)
            {
              v62 = v1[90];

              sub_1000095E8(v62, &unk_1011814D0, &qword_100EC12A0);
              sub_10035AEF0(v61, v60);
            }

            else
            {
              v63 = v1[96];
              sub_1000095E8(v1[90], &unk_1011814D0, &qword_100EC12A0);
              v64 = swift_allocObject();
              v64[2] = v58;
              v64[3] = v18;
              v64[4] = v54;
              sub_10035AEF0(v61, v60);
              v65 = (v60 + *(v63 + 32));
              v66 = *v65;
              v67 = v65[1];
              v18 = v18;
              v68 = v58;
              sub_100020438(v66, v67);
              *v65 = sub_10035AFB4;
              v65[1] = v64;
            }

            v69 = v1[114];
            v70 = v1[111];
            v71 = v1[110];
            v72 = v1[100];
            (*(*v36 + 200))(v72, 0);

            (*(v70 + 8))(v69, v71);
            v73 = v72;
            goto LABEL_60;
          }
        }

        else
        {
          v1[53] = 0;
          *(v1 + 49) = 0u;
          *(v1 + 51) = 0u;
        }

        sub_1000095E8((v1 + 49), &unk_101184EA0, &unk_100EBFA20);
      }

      v54 = 0;
      goto LABEL_31;
    }
  }

  (*(v1[111] + 8))(v1[114], v1[110]);

LABEL_61:

  v124 = v1[1];

  v124();
}

uint64_t sub_100350BE8()
{
  v54 = v0;
  v1 = v0[122];

  v0[60] = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v2 = (*(v0[82] + 88))(v0[83], v0[81]);
  if (v2 != enum case for MusicLibrary.AddToPlaylistError.duplicates(_:))
  {
    if (v2 == enum case for MusicLibrary.AddToPlaylistError.noItemsToAdd(_:))
    {

      if (qword_10117F6E8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000060E4(v20, qword_101218C50);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "No tracks to add to playlist.", v23, 2u);
      }

LABEL_9:

      goto LABEL_16;
    }

    (*(v0[82] + 8))(v0[83], v0[81]);
LABEL_11:

    if (qword_10117F6E8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000060E4(v24, qword_101218C50);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    v26 = os_log_type_enabled(v21, v25);
    v27 = v0[122];
    if (v26)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v53[0] = v29;
      *v28 = 136446210;
      v0[61] = v27;
      swift_errorRetain();
      v30 = String.init<A>(describing:)();
      v32 = sub_1000105AC(v30, v31, v53);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v21, v25, "Failed to add tracks to playlist with error=%{public}s", v28, 0xCu);
      sub_10000959C(v29);

      goto LABEL_17;
    }

    goto LABEL_9;
  }

  v49 = v0[113];
  v3 = v0[111];
  v39 = v0[87];
  v43 = v0[86];
  v45 = v0[112];
  v4 = v0[85];
  v37 = v0[110];
  v38 = v0[84];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[78];
  v50 = v0[76];
  v9 = v0[73];

  (*(v6 + 96))(v5, v7);
  v51 = *v5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v47 = *(v3 + 16);
  v47(v49, v8, v37);
  v52 = v4;
  v46 = *(v4 + 16);
  v46(v39, v9, v38);
  sub_10012B7A8(v50, (v0 + 2));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v45 + *(v4 + 80) + v10) & ~*(v4 + 80);
  v12 = (v43 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = v10;
  v13 = swift_allocObject();
  v44 = *(v3 + 32);
  v44(v13 + v10, v49, v37);
  v41 = *(v52 + 32);
  v41(v13 + v11, v39, v38);
  *(v13 + v12) = v51;
  sub_10012B828((v0 + 2), v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = String._bridgeToObjectiveC()();

  v0[30] = sub_10035AB40;
  v0[31] = v13;
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_10027D328;
  v0[29] = &unk_1010A7F80;
  v15 = _Block_copy(v0 + 26);

  v40 = objc_opt_self();
  v48 = [v40 actionWithTitle:v14 style:0 handler:v15];
  _Block_release(v15);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v47(v49, v8, v37);
  v46(v39, v9, v38);
  sub_10012B7A8(v50, (v0 + 14));
  v16 = swift_allocObject();
  v44(v16 + v42, v49, v37);
  v41(v16 + v11, v39, v38);
  *(v16 + v12) = v51;
  sub_10012B828((v0 + 14), v16 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = String._bridgeToObjectiveC()();

  v0[36] = sub_10035AD10;
  v0[37] = v16;
  v0[32] = _NSConcreteStackBlock;
  v0[33] = 1107296256;
  v0[34] = sub_10027D328;
  v0[35] = &unk_1010A7FD0;
  v18 = _Block_copy(v0 + 32);

  v19 = [v40 actionWithTitle:v17 style:0 handler:v18];
  _Block_release(v18);

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  dispatch thunk of Collection.distance(from:to:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v33 = String._bridgeToObjectiveC()();

  v34 = [objc_opt_self() alertControllerWithTitle:v33 message:0 preferredStyle:1];

  [v34 addAction:v48];
  [v34 addAction:v19];
  [v34 setPreferredAction:v19];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v34, 1, 1, 0, 0);

LABEL_16:

LABEL_17:

  v35 = v0[1];

  return v35();
}

void sub_1003516D4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Track();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10035B198;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1001EBE40;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B8A68;
  aBlock[3] = &unk_1010A8110;
  v11 = _Block_copy(aBlock);

  [a1 setUniversalStoreIdentifiersWithBlock:v11];
  _Block_release(v11);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

void sub_1003518EC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Track();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v47[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Track.catalogID.getter();
  if (v9)
  {
    v10 = HIBYTE(v9) & 0xF;
    v11 = v8 & 0xFFFFFFFFFFFFLL;
    if ((v9 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(v9) & 0xF;
    }

    else
    {
      v12 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {

      goto LABEL_69;
    }

    if ((v9 & 0x1000000000000000) != 0)
    {
      v15 = sub_1002D0E10();
      v44 = v43;

      if ((v44 & 1) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    if ((v9 & 0x2000000000000000) != 0)
    {
      v47[0] = v8;
      v47[1] = v9 & 0xFFFFFFFFFFFFFFLL;
      if (v8 == 43)
      {
        if (v10)
        {
          v11 = v10 - 1;
          if (v10 != 1)
          {
            v15 = 0;
            v34 = v47 + 1;
            while (1)
            {
              v35 = *v34 - 48;
              if (v35 > 9)
              {
                break;
              }

              v36 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                break;
              }

              v15 = v36 + v35;
              if (__OFADD__(v36, v35))
              {
                break;
              }

              ++v34;
              if (!--v11)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_67;
        }

        goto LABEL_78;
      }

      if (v8 != 45)
      {
        if (v10)
        {
          v15 = 0;
          v39 = v47;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              break;
            }

            v41 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v41 + v40;
            if (__OFADD__(v41, v40))
            {
              break;
            }

            v39 = (v39 + 1);
            if (!--v10)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

      if (v10)
      {
        v11 = v10 - 1;
        if (v10 != 1)
        {
          v15 = 0;
          v28 = v47 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v30 - v29;
            if (__OFSUB__(v30, v29))
            {
              break;
            }

            ++v28;
            if (!--v11)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_67;
      }
    }

    else
    {
      if ((v8 & 0x1000000000000000) != 0)
      {
        v13 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v13 = _StringObject.sharedUTF8.getter();
        v11 = v45;
      }

      v14 = *v13;
      if (v14 == 43)
      {
        if (v11 >= 1)
        {
          if (--v11)
          {
            v15 = 0;
            if (v13)
            {
              v31 = v13 + 1;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  goto LABEL_67;
                }

                v33 = 10 * v15;
                if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                {
                  goto LABEL_67;
                }

                v15 = v33 + v32;
                if (__OFADD__(v33, v32))
                {
                  goto LABEL_67;
                }

                ++v31;
                if (!--v11)
                {
                  goto LABEL_68;
                }
              }
            }

            goto LABEL_66;
          }

          goto LABEL_67;
        }

        goto LABEL_77;
      }

      if (v14 != 45)
      {
        if (v11)
        {
          v15 = 0;
          if (v13)
          {
            while (1)
            {
              v37 = *v13 - 48;
              if (v37 > 9)
              {
                goto LABEL_67;
              }

              v38 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                goto LABEL_67;
              }

              v15 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                goto LABEL_67;
              }

              ++v13;
              if (!--v11)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_66;
        }

LABEL_67:
        v15 = 0;
        LOBYTE(v11) = 1;
LABEL_68:
        v48 = v11;
        v42 = v11;

        if ((v42 & 1) == 0)
        {
LABEL_70:
          [a1 setAdamID:v15];
          return;
        }

LABEL_69:
        v15 = 0;
        goto LABEL_70;
      }

      if (v11 >= 1)
      {
        if (--v11)
        {
          v15 = 0;
          if (v13)
          {
            v16 = v13 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_67;
              }

              v18 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                goto LABEL_67;
              }

              v15 = v18 - v17;
              if (__OFSUB__(v18, v17))
              {
                goto LABEL_67;
              }

              ++v16;
              if (!--v11)
              {
                goto LABEL_68;
              }
            }
          }

LABEL_66:
          LOBYTE(v11) = 0;
          goto LABEL_68;
        }

        goto LABEL_67;
      }

      __break(1u);
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return;
  }

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000060E4(v19, qword_101219770);
  (*(v5 + 16))(v7, a2, v4);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v47[0] = v23;
    *v22 = 136315138;
    sub_10035B208(&qword_101181A08, &type metadata accessor for Track, &protocol conformance descriptor for Track);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v5 + 8))(v7, v4);
    v27 = sub_1000105AC(v24, v26, v47);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Catalog ID not present on track=%s.", v22, 0xCu);
    sub_10000959C(v23);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100351E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for MusicLibrary.AddToPlaylistDuplicatePolicy();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[10] = v10;
  v7[11] = v9;

  return _swift_task_switch(sub_100351F48, v10, v9);
}

uint64_t sub_100351F48()
{
  (*(v0[7] + 104))(v0[8], enum case for MusicLibrary.AddToPlaylistDuplicatePolicy.includeDuplicates(_:), v0[6]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_100352014;
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return Playlist.addTracks(_:duplicatePolicy:duplicateCount:presentationSource:presentNotice:mpModel:)(v5, v2, v3, 0, v4, 1, 0);
}

uint64_t sub_100352014()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return _swift_task_switch(sub_100352198, v6, v5);
}

uint64_t sub_100352198()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_100352200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a4;
  v34 = a7;
  v31 = a5;
  v32 = a6;
  v30 = a3;
  v8 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v28 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v26 - v11;
  v29 = &v26 - v11;
  v13 = type metadata accessor for Playlist();
  v27 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v18 = &v26 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v14 + 16))(v16, a2, v13);
  (*(v9 + 16))(v12, v30, v8);
  sub_10012B7A8(v31, v35);
  type metadata accessor for MainActor();
  v20 = static MainActor.shared.getter();
  v21 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v22 = (v15 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = &protocol witness table for MainActor;
  (*(v14 + 32))(v24 + v21, v16, v27);
  (*(v9 + 32))(v24 + v22, v29, v28);
  *(v24 + v23) = v33;
  sub_10012B828(v35, v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_1001F4CB8(0, 0, v18, v34, v24);

  return result;
}

uint64_t sub_100352500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for MusicLibrary.AddToPlaylistDuplicatePolicy();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[10] = v10;
  v7[11] = v9;

  return _swift_task_switch(sub_1003525F8, v10, v9);
}

uint64_t sub_1003525F8()
{
  (*(v0[7] + 104))(v0[8], enum case for MusicLibrary.AddToPlaylistDuplicatePolicy.skipDuplicates(_:), v0[6]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1003526C4;
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return Playlist.addTracks(_:duplicatePolicy:duplicateCount:presentationSource:presentNotice:mpModel:)(v5, v2, v3, 0, v4, 1, 0);
}

uint64_t sub_1003526C4()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return _swift_task_switch(sub_10035B748, v6, v5);
}

uint64_t sub_100352848(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Logger();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for Playlist.Folder();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_100352A18, 0, 0);
}

uint64_t sub_100352A18()
{
  sub_10035B208(&qword_10118C1A0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  sub_10035B208(&unk_1011828D0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  if (static MusicItem<>.==~ infix(_:_:)())
  {

    v1 = v0[1];

    return v1(2);
  }

  else
  {
    v0[27] = sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v3 = swift_allocObject();
    v0[28] = v3;
    *(v3 + 16) = xmmword_100EBC6C0;
    v0[29] = sub_10010FC20(&qword_10118C1A8, &qword_100EC7AE8);
    *(v3 + 32) = static PartialMusicProperty<A>.parent.getter();
    v4 = sub_10035B208(&qword_10118C1B0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    v0[30] = v4;
    v5 = swift_task_alloc();
    v0[31] = v5;
    *v5 = v0;
    v5[1] = sub_100352CC8;
    v6 = v0[19];
    v7 = v0[13];

    return dispatch thunk of MusicPropertyContainer.with(_:)(v6, v3, v7, v4);
  }
}

uint64_t sub_100352CC8()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1003530E4;
  }

  else
  {

    v2 = sub_100352DE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100352DE4()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[19];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[7];
  Playlist.Folder.parent.getter();
  v7 = v5[1];
  v0[33] = v7;
  v0[34] = (v5 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v4);
  v8 = v5[2];
  v0[35] = v8;
  v0[36] = (v5 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v6, v4);
  v9 = v5[7];
  v0[37] = v9;
  v0[38] = (v5 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v2, 0, 1, v4);
  v0[39] = sub_10035B208(&qword_10118C1B8, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  LOBYTE(v3) = static Optional<A>.==~ infix(_:_:)();
  sub_1000095E8(v2, &unk_10118F670, &unk_100EC89B0);
  sub_1000095E8(v1, &unk_10118F670, &unk_100EC89B0);
  if (v3)
  {

    v10 = v0[1];

    return v10(1);
  }

  else
  {
    v9(v0[24], 1, 1, v0[13]);
    v12 = swift_allocObject();
    v0[40] = v12;
    *(v12 + 16) = xmmword_100EBC6C0;
    *(v12 + 32) = static PartialMusicProperty<A>.parent.getter();
    v13 = swift_task_alloc();
    v0[41] = v13;
    *v13 = v0;
    v13[1] = sub_100353470;
    v14 = v0[30];
    v15 = v0[17];
    v16 = v0[13];

    return dispatch thunk of MusicPropertyContainer.with(_:)(v15, v12, v16, v14);
  }
}

uint64_t sub_1003530E4()
{
  v35 = v0;
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];

  v8 = Logger.musicKit.unsafeMutableAddressor();
  (*(v6 + 16))(v4, v8, v5);
  (*(v3 + 16))(v1, v7, v2);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[18];
    v13 = v0[13];
    v12 = v0[14];
    v30 = v0[32];
    v31 = v0[10];
    v32 = v0[9];
    v33 = v0[12];
    v14 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v14 = 136446466;
    sub_10035B208(&unk_10118C180, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000105AC(v15, v17, &v34);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[5] = v30;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v19 = String.init<A>(describing:)();
    v21 = sub_1000105AC(v19, v20, &v34);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to retrieve parent for folder=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v22 = v0[18];
    v23 = v0[13];
    v24 = v0[14];
    v25 = v0[12];
    v26 = v0[9];
    v27 = v0[10];

    (*(v24 + 8))(v22, v23);
    (*(v27 + 8))(v25, v26);
  }

  v28 = v0[1];

  return v28(3);
}

uint64_t sub_100353470()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_100353980;
  }

  else
  {

    v2 = sub_10035358C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10035358C()
{
  v1 = v0[33];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[14];
  Playlist.Folder.parent.getter();
  v1(v5, v6);
  sub_10035B128(v2, v3);
  sub_1000089F8(v3, v4, &unk_10118F670, &unk_100EC89B0);
  v8 = *(v7 + 48);
  v0[43] = v8;
  if (v8(v4, 1, v6) == 1)
  {
LABEL_6:
    v26 = v0[24];
    sub_1000095E8(v0[23], &unk_10118F670, &unk_100EC89B0);
    v34 = 4;
LABEL_8:
    sub_1000095E8(v26, &unk_10118F670, &unk_100EC89B0);

    v27 = v0[1];

    return v27(v34);
  }

  else
  {
    v9 = &unk_10118F670;
    v10 = &unk_100EC89B0;
    while (1)
    {
      v35 = v0[37];
      v11 = v0[35];
      v13 = v0[24];
      v12 = v0[25];
      v14 = v9;
      v15 = v0[22];
      v16 = v10;
      v17 = v0[13];
      v18 = v0[8];
      sub_1000095E8(v0[23], v14, v16);
      sub_1000089F8(v13, v12, v14, v16);
      v11(v15, v18, v17);
      v35(v15, 0, 1, v17);
      v10 = v16;
      LOBYTE(v16) = static Optional<A>.==~ infix(_:_:)();
      v19 = v15;
      v9 = v14;
      sub_1000095E8(v19, v14, v10);
      sub_1000095E8(v12, v14, v10);
      if (v16)
      {
        v34 = 0;
        v26 = v0[24];
        goto LABEL_8;
      }

      v20 = v0[24];
      v21 = v0[13];
      if (!(v0[43])(v20, 1, v21))
      {
        break;
      }

      (v0[37])(v0[21], 1, 1, v21);
      v22 = v0[43];
      v24 = v0[23];
      v23 = v0[24];
      v25 = v0[13];
      sub_10035B128(v0[21], v23);
      sub_1000089F8(v23, v24, v14, v10);
      if (v22(v24, 1, v25) == 1)
      {
        goto LABEL_6;
      }
    }

    (v0[35])(v0[15], v20, v21);
    v29 = swift_allocObject();
    v0[44] = v29;
    *(v29 + 16) = xmmword_100EBC6C0;
    *(v29 + 32) = static PartialMusicProperty<A>.parent.getter();
    v30 = swift_task_alloc();
    v0[45] = v30;
    *v30 = v0;
    v30[1] = sub_100353CB4;
    v31 = v0[30];
    v32 = v0[16];
    v33 = v0[13];

    return dispatch thunk of MusicPropertyContainer.with(_:)(v32, v29, v33, v31);
  }
}

uint64_t sub_100353980()
{
  v26 = v0;

  v1 = v0[42];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = Logger.musicKit.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[24];
    v9 = v0[25];
    v10 = v0[10];
    v23 = v0[9];
    v24 = v0[11];
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v11 = 136446466;
    swift_beginAccess();
    sub_1000089F8(v8, v9, &unk_10118F670, &unk_100EC89B0);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v25);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    v0[6] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000105AC(v15, v16, &v25);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to retrieve parent for folder=%{public}s with error=%{public}s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v24, v23);
  }

  else
  {
    v8 = v0[24];
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];

    (*(v19 + 8))(v18, v20);
  }

  sub_1000095E8(v8, &unk_10118F670, &unk_100EC89B0);

  v21 = v0[1];

  return v21(3);
}

uint64_t sub_100353CB4()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  (*(v2 + 264))(*(v2 + 120), *(v2 + 104));

  if (v0)
  {
    v3 = sub_1003541D4;
  }

  else
  {
    v3 = sub_100353E40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100353E40()
{
  v1 = v0[33];
  v2 = v0[16];
  v3 = v0[13];
  Playlist.Folder.parent.getter();
  v1(v2, v3);
  v4 = &unk_100EC89B0;
  while (1)
  {
    v5 = v0[43];
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[13];
    sub_10035B128(v0[21], v6);
    sub_1000089F8(v6, v7, &unk_10118F670, v4);
    if (v5(v7, 1, v8) == 1)
    {
      v19 = v0[24];
      sub_1000095E8(v0[23], &unk_10118F670, &unk_100EC89B0);
      v28 = 4;
      goto LABEL_8;
    }

    v27 = v0[37];
    v9 = v0[35];
    v11 = v0[24];
    v10 = v0[25];
    v12 = v4;
    v13 = v0[22];
    v14 = v0[13];
    v15 = v0[8];
    sub_1000095E8(v0[23], &unk_10118F670, v12);
    sub_1000089F8(v11, v10, &unk_10118F670, v12);
    v9(v13, v15, v14);
    v27(v13, 0, 1, v14);
    LOBYTE(v9) = static Optional<A>.==~ infix(_:_:)();
    v16 = v13;
    v4 = v12;
    sub_1000095E8(v16, &unk_10118F670, v12);
    sub_1000095E8(v10, &unk_10118F670, v12);
    if (v9)
    {
      break;
    }

    v17 = v0[24];
    v18 = v0[13];
    if (!(v0[43])(v17, 1, v18))
    {
      (v0[35])(v0[15], v17, v18);
      v22 = swift_allocObject();
      v0[44] = v22;
      *(v22 + 16) = xmmword_100EBC6C0;
      *(v22 + 32) = static PartialMusicProperty<A>.parent.getter();
      v23 = swift_task_alloc();
      v0[45] = v23;
      *v23 = v0;
      v23[1] = sub_100353CB4;
      v24 = v0[30];
      v25 = v0[16];
      v26 = v0[13];

      return dispatch thunk of MusicPropertyContainer.with(_:)(v25, v22, v26, v24);
    }

    (v0[37])(v0[21], 1, 1, v18);
  }

  v28 = 0;
  v19 = v0[24];
LABEL_8:
  sub_1000095E8(v19, &unk_10118F670, &unk_100EC89B0);

  v20 = v0[1];

  return v20(v28);
}

uint64_t sub_1003541D4(__n128 a1)
{
  v27 = v1;
  v2 = v1[46];
  v4 = v1[10];
  v3 = v1[11];
  v5 = v1[9];
  v6 = Logger.musicKit.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v1[24];
    v10 = v1[25];
    v11 = v1[10];
    v24 = v1[9];
    v25 = v1[11];
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v12 = 136446466;
    swift_beginAccess();
    sub_1000089F8(v9, v10, &unk_10118F670, &unk_100EC89B0);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v26);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    v1[6] = v2;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v16 = String.init<A>(describing:)();
    v18 = sub_1000105AC(v16, v17, &v26);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to retrieve parent for folder=%{public}s with error=%{public}s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v25, v24);
  }

  else
  {
    v9 = v1[24];
    v20 = v1[10];
    v19 = v1[11];
    v21 = v1[9];

    (*(v20 + 8))(v19, v21);
  }

  sub_1000095E8(v9, &unk_10118F670, &unk_100EC89B0);

  v22 = v1[1];

  return v22(3);
}

uint64_t sub_100354500(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Logger();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for Playlist.Folder();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v5 = type metadata accessor for Playlist();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v6 = type metadata accessor for Playlist.Folder.Item();
  v2[29] = v6;
  v2[30] = *(v6 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1003547A8, 0, 0);
}

uint64_t sub_1003547A8()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  (*(v2 + 16))(v1, v0[5], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 != enum case for Playlist.Folder.Item.folder(_:))
  {
    v20 = v0[30];
    v21 = v0[31];
    v22 = v0[29];
    if (v4 == enum case for Playlist.Folder.Item.playlist(_:))
    {
      v23 = v0[28];
      v24 = v0[23];
      v25 = v0[24];
      v26 = v0[22];
      v27 = v0[10];
      v28 = v0[11];
      v29 = v0[4];
      (*(v20 + 96))(v0[31], v22);
      (*(v25 + 32))(v23, v21, v24);
      sub_1000089F8(v29, v26, &unk_10118F670, &unk_100EC89B0);
      v30 = *(v28 + 48);
      v0[32] = v30;
      v0[33] = (v28 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v30(v26, 1, v27) == 1)
      {
        sub_10010FC20(&qword_101183990, &qword_100EBC750);
        v31 = swift_allocObject();
        v0[39] = v31;
        *(v31 + 16) = xmmword_100EBC6C0;
        sub_10010FC20(&unk_10118C1C0, &qword_100ED92A0);
        *(v31 + 32) = static PartialMusicProperty<A>.parent.getter();
        v32 = swift_task_alloc();
        v0[40] = v32;
        *v32 = v0;
        v32[1] = sub_100355690;
        v16 = v0[26];
LABEL_7:
        v17 = v0[23];
        v19 = &protocol witness table for Playlist;
        v18 = v31;
        goto LABEL_8;
      }

      v35 = v0[22];
      v36 = v0[17];
      v37 = v0[10];
      v38 = v0[11];
      v39 = *(v38 + 32);
      v0[34] = v39;
      v0[35] = (v38 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v39(v36, v35, v37);
      v40 = Playlist.id.getter();
      v42 = v41;
      if (v40 == Playlist.Folder.id.getter() && v42 == v43)
      {
      }

      else
      {
        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v44 & 1) == 0)
        {
          sub_10010FC20(&qword_101183990, &qword_100EBC750);
          v31 = swift_allocObject();
          v0[36] = v31;
          *(v31 + 16) = xmmword_100EBC6C0;
          sub_10010FC20(&unk_10118C1C0, &qword_100ED92A0);
          *(v31 + 32) = static PartialMusicProperty<A>.parent.getter();
          v49 = swift_task_alloc();
          v0[37] = v49;
          *v49 = v0;
          v49[1] = sub_100354E7C;
          v16 = v0[27];
          goto LABEL_7;
        }
      }

      v45 = v0[28];
      v46 = v0[23];
      v47 = v0[24];
      (*(v0[11] + 8))(v0[17], v0[10]);
      (*(v47 + 8))(v45, v46);
    }

    else
    {
      (*(v20 + 8))(v0[31], v22);
    }

    v48 = v0[1];

    return v48(0);
  }

  v5 = v0[31];
  v6 = v0[19];
  v7 = v0[15];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[4];
  (*(v0[30] + 96))(v5, v0[29]);
  v11 = *(v9 + 32);
  v11(v7, v5, v8);
  sub_1000089F8(v10, v6, &unk_10118F670, &unk_100EC89B0);
  v12 = *(v9 + 48);
  v0[42] = v12;
  v0[43] = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v12(v6, 1, v8) == 1)
  {
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v13 = swift_allocObject();
    v0[45] = v13;
    *(v13 + 16) = xmmword_100EBC6C0;
    sub_10010FC20(&qword_10118C1A8, &qword_100EC7AE8);
    *(v13 + 32) = static PartialMusicProperty<A>.parent.getter();
    v14 = sub_10035B208(&qword_10118C1B0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    v15 = swift_task_alloc();
    v0[46] = v15;
    *v15 = v0;
    v15[1] = sub_100355FE8;
    v16 = v0[13];
    v17 = v0[10];
    v18 = v13;
    v19 = v14;
LABEL_8:

    return dispatch thunk of MusicPropertyContainer.with(_:)(v16, v18, v17, v19);
  }

  v11(v0[14], v0[19], v0[10]);
  v33 = swift_task_alloc();
  v0[44] = v33;
  *v33 = v0;
  v33[1] = sub_100355D68;
  v34 = v0[14];

  return sub_100352848(v34);
}

uint64_t sub_100354E7C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_100355284;
  }

  else
  {
    v2 = sub_100354FAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100354FAC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 216);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = *(v0 + 80);
  Playlist.parent.getter();
  v7 = *(v4 + 8);
  v7(v2, v3);
  if (v1(v5, 1, v6) == 1)
  {
    v8 = *(v0 + 224);
    v9 = *(v0 + 184);
    v10 = *(v0 + 168);
    (*(*(v0 + 88) + 8))(*(v0 + 136), *(v0 + 80));
    v7(v8, v9);
    sub_1000095E8(v10, &unk_10118F670, &unk_100EC89B0);
  }

  else
  {
    v20 = *(v0 + 224);
    v11 = *(v0 + 184);
    v13 = *(v0 + 128);
    v12 = *(v0 + 136);
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    (*(v0 + 272))(v13, *(v0 + 168), v15);
    sub_10035B208(&qword_10118C1A0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    sub_10035B208(&unk_1011828D0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    v16 = static MusicItem<>.==~ infix(_:_:)();
    v17 = *(v14 + 8);
    v17(v13, v15);
    v17(v12, v15);
    v7(v20, v11);
    if (v16)
    {
      v21 = 0;
      goto LABEL_6;
    }
  }

  v21 = 1;
LABEL_6:

  v18 = *(v0 + 8);

  return v18(v21);
}

uint64_t sub_100355284()
{
  v40 = v0;
  (*(v0[11] + 8))(v0[17], v0[10]);
  v1 = v0[38];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  v9 = Logger.musicKit.unsafeMutableAddressor();
  (*(v7 + 16))(v6, v9, v8);
  (*(v4 + 16))(v3, v2, v5);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v34 = v11;
    v13 = v0[24];
    v12 = v0[25];
    v14 = v0[23];
    v37 = v0[8];
    v38 = v0[28];
    v35 = v0[7];
    v36 = v0[6];
    v15 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v15 = 136446466;
    sub_10035B208(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_1000105AC(v16, v18, &v39);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    v0[3] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v21 = String.init<A>(describing:)();
    v23 = sub_1000105AC(v21, v22, &v39);

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v10, v34, "Failed to retrieve parent for playlist=%{public}s with error=%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v37, v36);
    v19(v38, v14);
  }

  else
  {
    v24 = v0[28];
    v26 = v0[24];
    v25 = v0[25];
    v27 = v0[23];
    v29 = v0[7];
    v28 = v0[8];
    v30 = v0[6];

    v31 = *(v26 + 8);
    v31(v25, v27);
    (*(v29 + 8))(v28, v30);
    v31(v24, v27);
  }

  v32 = v0[1];

  return v32(0);
}

uint64_t sub_100355690()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_10035596C;
  }

  else
  {

    v2 = sub_1003557AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003557AC()
{
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[20];
  v7 = v0[10];
  Playlist.parent.getter();
  v8 = *(v5 + 8);
  v8(v3, v4);
  v8(v2, v4);
  v11 = v1(v6, 1, v7) != 1;
  sub_1000095E8(v6, &unk_10118F670, &unk_100EC89B0);

  v9 = v0[1];

  return v9(v11);
}

uint64_t sub_10035596C()
{
  v40 = v0;

  v1 = v0[41];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  v9 = Logger.musicKit.unsafeMutableAddressor();
  (*(v7 + 16))(v6, v9, v8);
  (*(v4 + 16))(v3, v2, v5);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v34 = v11;
    v13 = v0[24];
    v12 = v0[25];
    v14 = v0[23];
    v37 = v0[8];
    v38 = v0[28];
    v35 = v0[7];
    v36 = v0[6];
    v15 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v15 = 136446466;
    sub_10035B208(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_1000105AC(v16, v18, &v39);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    v0[3] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v21 = String.init<A>(describing:)();
    v23 = sub_1000105AC(v21, v22, &v39);

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v10, v34, "Failed to retrieve parent for playlist=%{public}s with error=%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v37, v36);
    v19(v38, v14);
  }

  else
  {
    v24 = v0[28];
    v26 = v0[24];
    v25 = v0[25];
    v27 = v0[23];
    v29 = v0[7];
    v28 = v0[8];
    v30 = v0[6];

    v31 = *(v26 + 8);
    v31(v25, v27);
    (*(v29 + 8))(v28, v30);
    v31(v24, v27);
  }

  v32 = v0[1];

  return v32(0);
}

uint64_t sub_100355D68(char a1)
{
  *(*v1 + 384) = a1;

  return _swift_task_switch(sub_100355E68, 0, 0);
}

uint64_t sub_100355E68()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 120);
  v3 = *(v0 + 80);
  v4 = *(*(v0 + 88) + 8);
  v4(*(v0 + 112), v3);
  v4(v2, v3);

  v5 = *(v0 + 8);

  return v5(v1 > 3);
}

uint64_t sub_100355FE8()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1003562C0;
  }

  else
  {

    v2 = sub_100356104;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100356104()
{
  v1 = v0[42];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  Playlist.Folder.parent.getter();
  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  v10 = v1(v2, 1, v5) != 1;
  sub_1000095E8(v2, &unk_10118F670, &unk_100EC89B0);

  v8 = v0[1];

  return v8(v10);
}

uint64_t sub_1003562C0()
{
  v39 = v0;
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[6];
  v7 = v0[7];

  v8 = Logger.musicKit.unsafeMutableAddressor();
  (*(v7 + 16))(v5, v8, v6);
  (*(v3 + 16))(v2, v1, v4);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v33 = v0[47];
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];
    v36 = v0[9];
    v37 = v0[15];
    v34 = v0[7];
    v35 = v0[6];
    v14 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v14 = 136446466;
    sub_10035B208(&unk_10118C180, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_1000105AC(v15, v17, &v38);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    v0[2] = v33;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000105AC(v20, v21, &v38);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to retrieve parent for folder=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v34 + 8))(v36, v35);
    v18(v37, v13);
  }

  else
  {
    v23 = v0[15];
    v25 = v0[11];
    v24 = v0[12];
    v27 = v0[9];
    v26 = v0[10];
    v28 = v0[6];
    v29 = v0[7];

    v30 = *(v25 + 8);
    v30(v24, v26);
    (*(v29 + 8))(v27, v28);
    v30(v23, v26);
  }

  v31 = v0[1];

  return v31(0);
}

uint64_t sub_1003566B8(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = type metadata accessor for Notice(0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_10118C158, &qword_100EC7AD0);
  v3[42] = v5;
  v3[43] = *(v5 - 8);
  v3[44] = swift_task_alloc();
  v6 = sub_10010FC20(&unk_10118C160, &qword_100EC7AD8);
  v3[45] = v6;
  v3[46] = *(v6 - 8);
  v3[47] = swift_task_alloc();
  v7 = type metadata accessor for Playlist.Folder();
  v3[48] = v7;
  v8 = *(v7 - 8);
  v3[49] = v8;
  v3[50] = *(v8 + 64);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = type metadata accessor for Notice.Variant(0);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[68] = v9;
  v3[69] = *(v9 - 8);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v10 = sub_10010FC20(&qword_1011842C8, &qword_100EBFE40);
  v3[74] = v10;
  v3[75] = *(v10 - 8);
  v3[76] = swift_task_alloc();
  sub_10010FC20(&unk_10118C170, &qword_100EBD778);
  v3[77] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_1011842E0, &qword_100EBFE48);
  v3[78] = v11;
  v3[79] = *(v11 - 8);
  v3[80] = swift_task_alloc();
  v12 = type metadata accessor for Playlist();
  v3[81] = v12;
  v3[82] = *(v12 - 8);
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v13 = type metadata accessor for Playlist.Folder.Item();
  v3[86] = v13;
  v3[87] = *(v13 - 8);
  v3[88] = swift_task_alloc();
  sub_10010FC20(&unk_10118B980, &qword_100ECA530);
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[93] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[94] = v15;
  v3[95] = v14;

  return _swift_task_switch(sub_100356CB0, v15, v14);
}

uint64_t sub_100356CB0()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  (*(v2 + 16))(v1, *(v0 + 288), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for Playlist.Folder.Item.folder(_:))
  {
    v5 = *(v0 + 704);
    v6 = *(v0 + 440);
    v7 = *(v0 + 384);
    v8 = *(v0 + 392);
    (*(*(v0 + 696) + 96))(v5, *(v0 + 688));
    (*(v8 + 32))(v6, v5, v7);
    static MusicLibraryPlaylistRequest.editing<>(_:name:description:userImage:parent:)();
    v9 = swift_task_alloc();
    *(v0 + 784) = v9;
    *v9 = v0;
    v9[1] = sub_1003581EC;
    v10 = *(v0 + 352);

    return MusicLibraryPlaylistRequest.response<>()(v10);
  }

  if (v4 == enum case for Playlist.Folder.Item.playlist(_:))
  {
    v11 = *(v0 + 704);
    v12 = *(v0 + 680);
    v13 = *(v0 + 656);
    v14 = *(v0 + 648);
    v15 = *(v0 + 616);
    (*(*(v0 + 696) + 96))(v11, *(v0 + 688));
    (*(v13 + 32))(v12, v11, v14);
    v16 = type metadata accessor for Curator();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    static MusicLibraryPlaylistRequest.editing<>(_:name:description:userImage:isPublic:isVisible:curator:parent:)();
    sub_1000095E8(v15, &unk_10118C170, &qword_100EBD778);
    v17 = swift_task_alloc();
    *(v0 + 768) = v17;
    *v17 = v0;
    v17[1] = sub_100357624;
    v18 = *(v0 + 608);

    return MusicLibraryPlaylistRequest.response<>()(v18);
  }

  v19 = *(v0 + 736);
  v20 = *(v0 + 704);
  v21 = *(v0 + 696);
  v22 = *(v0 + 688);
  v23 = *(v0 + 296);
  v24 = *(v0 + 304);

  (*(v24 + 56))(v19, 1, 1, v23);
  (*(v21 + 8))(v20, v22);
  v25 = *(v0 + 712);
  v26 = *(v0 + 296);
  v27 = *(v0 + 304);
  sub_1000089F8(*(v0 + 736), v25, &unk_10118B980, &qword_100ECA530);
  if ((*(v27 + 48))(v25, 1, v26) != 1)
  {
    v32 = *(v0 + 280);
    sub_10035AEF0(*(v0 + 712), *(v0 + 328));
    sub_1000089F8(v32, v0 + 112, &unk_1011845E0, &unk_100EBF3A0);
    if (*(v0 + 176) == 1)
    {
      v33 = *(v0 + 736);
      sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
      sub_1000095E8(v33, &unk_10118B980, &qword_100ECA530);
      v30 = &unk_1011845E0;
      v31 = &unk_100EBF3A0;
      v29 = v0 + 112;
      goto LABEL_29;
    }

    v34 = *(v0 + 496);
    v35 = *(v0 + 384);
    v36 = *(v0 + 392);
    v37 = *(v0 + 272);
    sub_10012B828(v0 + 112, v0 + 16);
    sub_1000089F8(v37, v34, &unk_10118F670, &unk_100EC89B0);
    if ((*(v36 + 48))(v34, 1, v35) == 1)
    {
      sub_1000095E8(*(v0 + 496), &unk_10118F670, &unk_100EC89B0);
      goto LABEL_25;
    }

    v38 = *(v0 + 328);
    v39 = *(v0 + 312);
    v65 = *(*(v0 + 392) + 32);
    v65(*(v0 + 424), *(v0 + 496), *(v0 + 384));
    sub_10035AFC8(v38, v39);
    PresentationSource.windowScene.getter();
    v41 = *(v0 + 328);
    if (v40)
    {
      v42 = v40;
      v43 = [v40 delegate];

      sub_10035AF54(v41, type metadata accessor for Notice);
      if (v43 && (*(v0 + 248) = v43, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
      {
        v44 = *(v0 + 232);
        if (v44)
        {
          v64 = *(*sub_10000954C((v0 + 208), v44) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

          sub_10000959C((v0 + 208));
LABEL_24:
          v45 = *(v0 + 416);
          v47 = *(v0 + 392);
          v46 = *(v0 + 400);
          v48 = *(v0 + 384);
          v49 = *(v0 + 320);
          v50 = *(v0 + 312);
          v62 = *(v0 + 296);
          v63 = *(v0 + 328);
          v65(v45, *(v0 + 424), v48);
          v51 = (*(v47 + 80) + 16) & ~*(v47 + 80);
          v52 = (v46 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
          v53 = swift_allocObject();
          v65(v53 + v51, v45, v48);
          *(v53 + v52) = v64;
          sub_10035AEF0(v50, v49);
          v54 = (v49 + *(v62 + 32));
          sub_100020438(*v54, v54[1]);
          *v54 = sub_10035B02C;
          v54[1] = v53;
          sub_10035AEF0(v49, v63);
LABEL_25:
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v56 = Strong;
            v57 = UIViewController.noticePresenter.getter();

            if (v57)
            {
              (*(*v57 + 200))(*(v0 + 328), 0);
            }
          }

          v58 = *(v0 + 736);
          v59 = *(v0 + 328);
          sub_10012BA6C(v0 + 16);
          sub_10035AF54(v59, type metadata accessor for Notice);
          v30 = &unk_10118B980;
          v31 = &qword_100ECA530;
          v29 = v58;
          goto LABEL_29;
        }
      }

      else
      {
        *(v0 + 240) = 0;
        *(v0 + 208) = 0u;
        *(v0 + 224) = 0u;
      }

      sub_1000095E8(v0 + 208, &unk_101184EA0, &unk_100EBFA20);
    }

    else
    {
      sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    }

    v64 = 0;
    goto LABEL_24;
  }

  v28 = *(v0 + 712);
  sub_1000095E8(*(v0 + 736), &unk_10118B980, &qword_100ECA530);
  v29 = v28;
  v30 = &unk_10118B980;
  v31 = &qword_100ECA530;
LABEL_29:
  sub_1000095E8(v29, v30, v31);

  v60 = *(v0 + 8);

  return v60(0);
}

uint64_t sub_100357624()
{
  v2 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v3 = v2[95];
    v4 = v2[94];
    v5 = sub_100358DB0;
  }

  else
  {
    (*(v2[75] + 8))(v2[76], v2[74]);
    v3 = v2[95];
    v4 = v2[94];
    v5 = sub_10035775C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10035775C()
{
  v97 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 672);
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = *(v0 + 584);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v8 = *(v0 + 536);
  v9 = *(v0 + 272);

  v10 = Logger.musicKit.unsafeMutableAddressor();
  (*(v6 + 16))(v5, v10, v7);
  (*(v3 + 16))(v2, v1, v4);
  sub_1000089F8(v9, v8, &unk_10118F670, &unk_100EC89B0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 672);
  v15 = *(v0 + 656);
  v16 = *(v0 + 648);
  v17 = *(v0 + 584);
  v18 = *(v0 + 552);
  v19 = *(v0 + 544);
  v20 = *(v0 + 536);
  if (v13)
  {
    v83 = *(v0 + 528);
    v84 = v12;
    v21 = swift_slowAlloc();
    v96[0] = swift_slowAlloc();
    *v21 = 136446466;
    sub_10035B208(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v87 = v17;
    v90 = v19;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v94 = *(v15 + 8);
    v94(v14, v16);
    v25 = sub_1000105AC(v22, v24, v96);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    sub_1000089F8(v20, v83, &unk_10118F670, &unk_100EC89B0);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    sub_1000095E8(v20, &unk_10118F670, &unk_100EC89B0);
    v29 = sub_1000105AC(v26, v28, v96);

    *(v21 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v11, v84, "Moved playlist=%{public}s to parent=%{public}s", v21, 0x16u);
    swift_arrayDestroy();

    (*(v18 + 8))(v87, v90);
  }

  else
  {

    sub_1000095E8(v20, &unk_10118F670, &unk_100EC89B0);
    v94 = *(v15 + 8);
    v94(v14, v16);
    (*(v18 + 8))(v17, v19);
  }

  v30 = *(v0 + 520);
  v31 = *(v0 + 384);
  v32 = *(v0 + 392);
  sub_1000089F8(*(v0 + 272), v30, &unk_10118F670, &unk_100EC89B0);
  v33 = (*(v32 + 48))(v30, 1, v31);
  v34 = *(v0 + 520);
  if (v33 == 1)
  {
    sub_1000095E8(*(v0 + 520), &unk_10118F670, &unk_100EC89B0);
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v37 = *(v0 + 384);
    v38 = *(v0 + 392);
    v35 = Playlist.Folder.name.getter();
    v36 = v39;
    (*(v38 + 8))(v34, v37);
  }

  v40 = *(v0 + 728);
  v85 = *(v0 + 648);
  v88 = *(v0 + 680);
  v41 = *(v0 + 640);
  v42 = *(v0 + 632);
  v43 = *(v0 + 624);
  v44 = *(v0 + 464);
  v45 = *(v0 + 304);
  v91 = *(v0 + 296);
  v93 = *(v0 + 736);
  *v44 = v35;
  v44[1] = v36;
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v44, v40);
  sub_10035AF54(v44, type metadata accessor for Notice.Variant);
  (*(v42 + 8))(v41, v43);
  v94(v88, v85);
  (*(v45 + 56))(v40, 0, 1, v91);
  sub_10035B0B8(v40, v93);
  v46 = *(v0 + 712);
  v47 = *(v0 + 296);
  v48 = *(v0 + 304);
  sub_1000089F8(*(v0 + 736), v46, &unk_10118B980, &qword_100ECA530);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    v49 = *(v0 + 712);
    sub_1000095E8(*(v0 + 736), &unk_10118B980, &qword_100ECA530);
    v50 = v49;
    v51 = &unk_10118B980;
    v52 = &qword_100ECA530;
    goto LABEL_27;
  }

  v53 = *(v0 + 280);
  sub_10035AEF0(*(v0 + 712), *(v0 + 328));
  sub_1000089F8(v53, v0 + 112, &unk_1011845E0, &unk_100EBF3A0);
  if (*(v0 + 176) == 1)
  {
    v54 = *(v0 + 736);
    sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    sub_1000095E8(v54, &unk_10118B980, &qword_100ECA530);
    v51 = &unk_1011845E0;
    v52 = &unk_100EBF3A0;
    v50 = v0 + 112;
    goto LABEL_27;
  }

  v55 = *(v0 + 496);
  v56 = *(v0 + 384);
  v57 = *(v0 + 392);
  v58 = *(v0 + 272);
  sub_10012B828(v0 + 112, v0 + 16);
  sub_1000089F8(v58, v55, &unk_10118F670, &unk_100EC89B0);
  if ((*(v57 + 48))(v55, 1, v56) == 1)
  {
    sub_1000095E8(*(v0 + 496), &unk_10118F670, &unk_100EC89B0);
    goto LABEL_23;
  }

  v59 = *(v0 + 328);
  v60 = *(v0 + 312);
  v95 = *(*(v0 + 392) + 32);
  v95(*(v0 + 424), *(v0 + 496), *(v0 + 384));
  sub_10035AFC8(v59, v60);
  PresentationSource.windowScene.getter();
  v62 = *(v0 + 328);
  if (!v61)
  {
    sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    goto LABEL_21;
  }

  v63 = v61;
  v64 = [v61 delegate];

  sub_10035AF54(v62, type metadata accessor for Notice);
  if (!v64 || (*(v0 + 248) = v64, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) == 0))
  {
    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    goto LABEL_19;
  }

  v65 = *(v0 + 232);
  if (!v65)
  {
LABEL_19:
    sub_1000095E8(v0 + 208, &unk_101184EA0, &unk_100EBFA20);
LABEL_21:
    v92 = 0;
    goto LABEL_22;
  }

  v92 = *(*sub_10000954C((v0 + 208), v65) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C((v0 + 208));
LABEL_22:
  v66 = *(v0 + 416);
  v68 = *(v0 + 392);
  v67 = *(v0 + 400);
  v69 = *(v0 + 384);
  v70 = *(v0 + 320);
  v71 = *(v0 + 312);
  v86 = *(v0 + 296);
  v89 = *(v0 + 328);
  v95(v66, *(v0 + 424), v69);
  v72 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v73 = (v67 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v95(v74 + v72, v66, v69);
  *(v74 + v73) = v92;
  sub_10035AEF0(v71, v70);
  v75 = (v70 + *(v86 + 32));
  sub_100020438(*v75, v75[1]);
  *v75 = sub_10035B02C;
  v75[1] = v74;
  sub_10035AEF0(v70, v89);
LABEL_23:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v77 = Strong;
    v78 = UIViewController.noticePresenter.getter();

    if (v78)
    {
      (*(*v78 + 200))(*(v0 + 328), 0);
    }
  }

  v79 = *(v0 + 736);
  v80 = *(v0 + 328);
  sub_10012BA6C(v0 + 16);
  sub_10035AF54(v80, type metadata accessor for Notice);
  v51 = &unk_10118B980;
  v52 = &qword_100ECA530;
  v50 = v79;
LABEL_27:
  sub_1000095E8(v50, v51, v52);

  v81 = *(v0 + 8);

  return v81(1);
}

uint64_t sub_1003581EC()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v3 = v2[95];
    v4 = v2[94];
    v5 = sub_10035983C;
  }

  else
  {
    (*(v2[43] + 8))(v2[44], v2[42]);
    v3 = v2[95];
    v4 = v2[94];
    v5 = sub_100358320;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100358320()
{
  v101 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 512);
  v6 = *(v0 + 432);
  v5 = *(v0 + 440);
  v7 = *(v0 + 384);
  v8 = *(v0 + 392);
  v9 = *(v0 + 272);

  v10 = Logger.musicKit.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v10, v3);
  (*(v8 + 16))(v6, v5, v7);
  sub_1000089F8(v9, v4, &unk_10118F670, &unk_100EC89B0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 576);
  v15 = *(v0 + 552);
  v16 = *(v0 + 544);
  if (v13)
  {
    v87 = *(v0 + 528);
    v86 = *(v0 + 512);
    v95 = v12;
    v17 = *(v0 + 432);
    v18 = *(v0 + 384);
    v19 = *(v0 + 392);
    v97 = *(v0 + 576);
    v20 = swift_slowAlloc();
    v100[0] = swift_slowAlloc();
    *v20 = 136446466;
    sub_10035B208(&unk_10118C180, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v90 = v16;
    v23 = v22;
    v24 = *(v19 + 8);
    v24(v17, v18);
    v25 = sub_1000105AC(v21, v23, v100);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2082;
    sub_1000089F8(v86, v87, &unk_10118F670, &unk_100EC89B0);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    sub_1000095E8(v86, &unk_10118F670, &unk_100EC89B0);
    v29 = sub_1000105AC(v26, v28, v100);

    *(v20 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v11, v95, "Moved folder=%{public}s to parent=%{public}s", v20, 0x16u);
    swift_arrayDestroy();

    (*(v15 + 8))(v97, v90);
  }

  else
  {
    v30 = *(v0 + 512);
    v31 = *(v0 + 432);
    v32 = *(v0 + 384);
    v33 = *(v0 + 392);

    sub_1000095E8(v30, &unk_10118F670, &unk_100EC89B0);
    v24 = *(v33 + 8);
    v24(v31, v32);
    (*(v15 + 8))(v14, v16);
  }

  v34 = *(v0 + 504);
  v35 = *(v0 + 384);
  v36 = *(v0 + 392);
  sub_1000089F8(*(v0 + 272), v34, &unk_10118F670, &unk_100EC89B0);
  v37 = (*(v36 + 48))(v34, 1, v35);
  v38 = *(v0 + 504);
  v96 = v24;
  if (v37 == 1)
  {
    sub_1000095E8(v38, &unk_10118F670, &unk_100EC89B0);
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v41 = *(v0 + 384);
    v39 = Playlist.Folder.name.getter();
    v40 = v42;
    v24(v38, v41);
  }

  v98 = *(v0 + 736);
  v43 = *(v0 + 720);
  v44 = *(v0 + 456);
  v88 = *(v0 + 384);
  v91 = *(v0 + 440);
  v45 = *(v0 + 368);
  v46 = *(v0 + 376);
  v47 = *(v0 + 360);
  v48 = *(v0 + 304);
  v93 = *(v0 + 296);
  *v44 = v39;
  v44[1] = v40;
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v44, v43);
  sub_10035AF54(v44, type metadata accessor for Notice.Variant);
  (*(v45 + 8))(v46, v47);
  v96(v91, v88);
  (*(v48 + 56))(v43, 0, 1, v93);
  sub_10035B0B8(v43, v98);
  v49 = *(v0 + 712);
  v50 = *(v0 + 296);
  v51 = *(v0 + 304);
  sub_1000089F8(*(v0 + 736), v49, &unk_10118B980, &qword_100ECA530);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    v52 = *(v0 + 712);
    sub_1000095E8(*(v0 + 736), &unk_10118B980, &qword_100ECA530);
    v53 = v52;
    v54 = &unk_10118B980;
    v55 = &qword_100ECA530;
    goto LABEL_27;
  }

  v56 = *(v0 + 280);
  sub_10035AEF0(*(v0 + 712), *(v0 + 328));
  sub_1000089F8(v56, v0 + 112, &unk_1011845E0, &unk_100EBF3A0);
  if (*(v0 + 176) == 1)
  {
    v57 = *(v0 + 736);
    sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    sub_1000095E8(v57, &unk_10118B980, &qword_100ECA530);
    v54 = &unk_1011845E0;
    v55 = &unk_100EBF3A0;
    v53 = v0 + 112;
    goto LABEL_27;
  }

  v58 = *(v0 + 496);
  v59 = *(v0 + 384);
  v60 = *(v0 + 392);
  v61 = *(v0 + 272);
  sub_10012B828(v0 + 112, v0 + 16);
  sub_1000089F8(v61, v58, &unk_10118F670, &unk_100EC89B0);
  if ((*(v60 + 48))(v58, 1, v59) == 1)
  {
    sub_1000095E8(*(v0 + 496), &unk_10118F670, &unk_100EC89B0);
    goto LABEL_23;
  }

  v62 = *(v0 + 328);
  v63 = *(v0 + 312);
  v99 = *(*(v0 + 392) + 32);
  v99(*(v0 + 424), *(v0 + 496), *(v0 + 384));
  sub_10035AFC8(v62, v63);
  PresentationSource.windowScene.getter();
  v65 = *(v0 + 328);
  if (!v64)
  {
    sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    goto LABEL_21;
  }

  v66 = v64;
  v67 = [v64 delegate];

  sub_10035AF54(v65, type metadata accessor for Notice);
  if (!v67 || (*(v0 + 248) = v67, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) == 0))
  {
    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    goto LABEL_19;
  }

  v68 = *(v0 + 232);
  if (!v68)
  {
LABEL_19:
    sub_1000095E8(v0 + 208, &unk_101184EA0, &unk_100EBFA20);
LABEL_21:
    v94 = 0;
    goto LABEL_22;
  }

  v94 = *(*sub_10000954C((v0 + 208), v68) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C((v0 + 208));
LABEL_22:
  v69 = *(v0 + 416);
  v71 = *(v0 + 392);
  v70 = *(v0 + 400);
  v72 = *(v0 + 384);
  v73 = *(v0 + 320);
  v74 = *(v0 + 312);
  v89 = *(v0 + 296);
  v92 = *(v0 + 328);
  v99(v69, *(v0 + 424), v72);
  v75 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v76 = (v70 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v99(v77 + v75, v69, v72);
  *(v77 + v76) = v94;
  sub_10035AEF0(v74, v73);
  v78 = (v73 + *(v89 + 32));
  sub_100020438(*v78, v78[1]);
  *v78 = sub_10035B02C;
  v78[1] = v77;
  sub_10035AEF0(v73, v92);
LABEL_23:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v80 = Strong;
    v81 = UIViewController.noticePresenter.getter();

    if (v81)
    {
      (*(*v81 + 200))(*(v0 + 328), 0);
    }
  }

  v82 = *(v0 + 736);
  v83 = *(v0 + 328);
  sub_10012BA6C(v0 + 16);
  sub_10035AF54(v83, type metadata accessor for Notice);
  v54 = &unk_10118B980;
  v55 = &qword_100ECA530;
  v53 = v82;
LABEL_27:
  sub_1000095E8(v53, v54, v55);

  v84 = *(v0 + 8);

  return v84(1);
}

uint64_t sub_100358DB0()
{
  v95 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = *(v0 + 568);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v8 = *(v0 + 488);
  v9 = *(v0 + 272);

  v10 = Logger.musicKit.unsafeMutableAddressor();
  (*(v6 + 16))(v5, v10, v7);
  (*(v3 + 16))(v2, v1, v4);
  sub_1000089F8(v9, v8, &unk_10118F670, &unk_100EC89B0);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v78 = *(v0 + 776);
    v91 = *(v0 + 680);
    v79 = v12;
    v13 = *(v0 + 664);
    v14 = *(v0 + 656);
    v15 = *(v0 + 648);
    v86 = *(v0 + 624);
    v89 = *(v0 + 640);
    v82 = *(v0 + 568);
    v84 = *(v0 + 632);
    v80 = *(v0 + 552);
    v81 = *(v0 + 544);
    v16 = *(v0 + 528);
    v77 = *(v0 + 488);
    v17 = swift_slowAlloc();
    v94[0] = swift_slowAlloc();
    *v17 = 136446722;
    sub_10035B208(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v14 + 8);
    v21(v13, v15);
    v22 = sub_1000105AC(v18, v20, v94);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    sub_1000089F8(v77, v16, &unk_10118F670, &unk_100EC89B0);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    sub_1000095E8(v77, &unk_10118F670, &unk_100EC89B0);
    v26 = sub_1000105AC(v23, v25, v94);

    *(v17 + 14) = v26;
    *(v17 + 22) = 2082;
    *(v0 + 264) = v78;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v27 = String.init<A>(describing:)();
    v29 = sub_1000105AC(v27, v28, v94);

    *(v17 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v11, v79, "Failed to move playlist=%{public}s to parent=%{public}s with error=%{public}s", v17, 0x20u);
    swift_arrayDestroy();

    (*(v80 + 8))(v82, v81);
    (*(v84 + 8))(v89, v86);
    v21(v91, v15);
  }

  else
  {
    v30 = *(v0 + 664);
    v31 = v11;
    v32 = *(v0 + 656);
    v33 = *(v0 + 648);
    v90 = *(v0 + 640);
    v92 = *(v0 + 680);
    v34 = *(v0 + 632);
    v87 = *(v0 + 624);
    v35 = *(v0 + 568);
    v36 = *(v0 + 552);
    v37 = *(v0 + 544);
    v38 = *(v0 + 488);

    sub_1000095E8(v38, &unk_10118F670, &unk_100EC89B0);
    v39 = *(v32 + 8);
    v39(v30, v33);
    (*(v36 + 8))(v35, v37);
    (*(v34 + 8))(v90, v87);
    v39(v92, v33);
  }

  (*(*(v0 + 304) + 56))(*(v0 + 736), 1, 1, *(v0 + 296));
  v40 = *(v0 + 712);
  v41 = *(v0 + 296);
  v42 = *(v0 + 304);
  sub_1000089F8(*(v0 + 736), v40, &unk_10118B980, &qword_100ECA530);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    v43 = *(v0 + 712);
    sub_1000095E8(*(v0 + 736), &unk_10118B980, &qword_100ECA530);
    v44 = v43;
    v45 = &unk_10118B980;
    v46 = &qword_100ECA530;
    goto LABEL_24;
  }

  v47 = *(v0 + 280);
  sub_10035AEF0(*(v0 + 712), *(v0 + 328));
  sub_1000089F8(v47, v0 + 112, &unk_1011845E0, &unk_100EBF3A0);
  if (*(v0 + 176) == 1)
  {
    v48 = *(v0 + 736);
    sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    sub_1000095E8(v48, &unk_10118B980, &qword_100ECA530);
    v45 = &unk_1011845E0;
    v46 = &unk_100EBF3A0;
    v44 = v0 + 112;
    goto LABEL_24;
  }

  v49 = *(v0 + 496);
  v50 = *(v0 + 384);
  v51 = *(v0 + 392);
  v52 = *(v0 + 272);
  sub_10012B828(v0 + 112, v0 + 16);
  sub_1000089F8(v52, v49, &unk_10118F670, &unk_100EC89B0);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    sub_1000095E8(*(v0 + 496), &unk_10118F670, &unk_100EC89B0);
    goto LABEL_20;
  }

  v53 = *(v0 + 328);
  v54 = *(v0 + 312);
  v93 = *(*(v0 + 392) + 32);
  v93(*(v0 + 424), *(v0 + 496), *(v0 + 384));
  sub_10035AFC8(v53, v54);
  PresentationSource.windowScene.getter();
  v56 = *(v0 + 328);
  if (!v55)
  {
    sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    goto LABEL_18;
  }

  v57 = v55;
  v58 = [v55 delegate];

  sub_10035AF54(v56, type metadata accessor for Notice);
  if (!v58 || (*(v0 + 248) = v58, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) == 0))
  {
    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    goto LABEL_16;
  }

  v59 = *(v0 + 232);
  if (!v59)
  {
LABEL_16:
    sub_1000095E8(v0 + 208, &unk_101184EA0, &unk_100EBFA20);
LABEL_18:
    v88 = 0;
    goto LABEL_19;
  }

  v88 = *(*sub_10000954C((v0 + 208), v59) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C((v0 + 208));
LABEL_19:
  v60 = *(v0 + 416);
  v62 = *(v0 + 392);
  v61 = *(v0 + 400);
  v63 = *(v0 + 384);
  v64 = *(v0 + 320);
  v65 = *(v0 + 312);
  v83 = *(v0 + 296);
  v85 = *(v0 + 328);
  v93(v60, *(v0 + 424), v63);
  v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v67 = (v61 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v93(v68 + v66, v60, v63);
  *(v68 + v67) = v88;
  sub_10035AEF0(v65, v64);
  v69 = (v64 + *(v83 + 32));
  sub_100020438(*v69, v69[1]);
  *v69 = sub_10035B02C;
  v69[1] = v68;
  sub_10035AEF0(v64, v85);
LABEL_20:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v71 = Strong;
    v72 = UIViewController.noticePresenter.getter();

    if (v72)
    {
      (*(*v72 + 200))(*(v0 + 328), 0);
    }
  }

  v73 = *(v0 + 736);
  v74 = *(v0 + 328);
  sub_10012BA6C(v0 + 16);
  sub_10035AF54(v74, type metadata accessor for Notice);
  v45 = &unk_10118B980;
  v46 = &qword_100ECA530;
  v44 = v73;
LABEL_24:
  sub_1000095E8(v44, v45, v46);

  v75 = *(v0 + 8);

  return v75(0);
}

uint64_t sub_10035983C()
{
  v94 = v0;
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v90 = *(v0 + 480);
  v4 = *(v0 + 440);
  v5 = *(v0 + 408);
  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 272);

  v9 = Logger.musicKit.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v9, v3);
  (*(v6 + 16))(v5, v4, v7);
  sub_1000089F8(v8, v90, &unk_10118F670, &unk_100EC89B0);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v91 = v10;
  if (os_log_type_enabled(v10, v11))
  {
    v76 = *(v0 + 792);
    v79 = *(v0 + 552);
    v82 = *(v0 + 544);
    v85 = *(v0 + 560);
    v12 = *(v0 + 528);
    v75 = *(v0 + 480);
    v88 = *(v0 + 440);
    v13 = *(v0 + 408);
    v15 = *(v0 + 384);
    v14 = *(v0 + 392);
    v80 = *(v0 + 376);
    v77 = *(v0 + 368);
    v78 = *(v0 + 360);
    v16 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v16 = 136446722;
    sub_10035B208(&unk_10118C180, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_1000105AC(v17, v19, v93);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    sub_1000089F8(v75, v12, &unk_10118F670, &unk_100EC89B0);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    sub_1000095E8(v75, &unk_10118F670, &unk_100EC89B0);
    v25 = sub_1000105AC(v22, v24, v93);

    *(v16 + 14) = v25;
    *(v16 + 22) = 2082;
    *(v0 + 256) = v76;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v26 = String.init<A>(describing:)();
    v28 = sub_1000105AC(v26, v27, v93);

    *(v16 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v91, v11, "Failed to move folder=%{public}s to parent=%{public}s with error=%{public}s", v16, 0x20u);
    swift_arrayDestroy();

    (*(v79 + 8))(v85, v82);
    (*(v77 + 8))(v80, v78);
    v20(v88, v15);
  }

  else
  {
    v29 = *(v0 + 552);
    v83 = *(v0 + 544);
    v86 = *(v0 + 560);
    v30 = *(v0 + 480);
    v89 = *(v0 + 440);
    v31 = *(v0 + 408);
    v33 = *(v0 + 384);
    v32 = *(v0 + 392);
    v34 = *(v0 + 368);
    v35 = *(v0 + 376);
    v36 = *(v0 + 360);

    sub_1000095E8(v30, &unk_10118F670, &unk_100EC89B0);
    v37 = *(v32 + 8);
    v37(v31, v33);
    (*(v29 + 8))(v86, v83);
    (*(v34 + 8))(v35, v36);
    v37(v89, v33);
  }

  (*(*(v0 + 304) + 56))(*(v0 + 736), 1, 1, *(v0 + 296));
  v38 = *(v0 + 712);
  v39 = *(v0 + 296);
  v40 = *(v0 + 304);
  sub_1000089F8(*(v0 + 736), v38, &unk_10118B980, &qword_100ECA530);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    v41 = *(v0 + 712);
    sub_1000095E8(*(v0 + 736), &unk_10118B980, &qword_100ECA530);
    v42 = v41;
    v43 = &unk_10118B980;
    v44 = &qword_100ECA530;
    goto LABEL_24;
  }

  v45 = *(v0 + 280);
  sub_10035AEF0(*(v0 + 712), *(v0 + 328));
  sub_1000089F8(v45, v0 + 112, &unk_1011845E0, &unk_100EBF3A0);
  if (*(v0 + 176) == 1)
  {
    v46 = *(v0 + 736);
    sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    sub_1000095E8(v46, &unk_10118B980, &qword_100ECA530);
    v43 = &unk_1011845E0;
    v44 = &unk_100EBF3A0;
    v42 = v0 + 112;
    goto LABEL_24;
  }

  v47 = *(v0 + 496);
  v48 = *(v0 + 384);
  v49 = *(v0 + 392);
  v50 = *(v0 + 272);
  sub_10012B828(v0 + 112, v0 + 16);
  sub_1000089F8(v50, v47, &unk_10118F670, &unk_100EC89B0);
  if ((*(v49 + 48))(v47, 1, v48) == 1)
  {
    sub_1000095E8(*(v0 + 496), &unk_10118F670, &unk_100EC89B0);
    goto LABEL_20;
  }

  v51 = *(v0 + 328);
  v52 = *(v0 + 312);
  v92 = *(*(v0 + 392) + 32);
  v92(*(v0 + 424), *(v0 + 496), *(v0 + 384));
  sub_10035AFC8(v51, v52);
  PresentationSource.windowScene.getter();
  v54 = *(v0 + 328);
  if (!v53)
  {
    sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    goto LABEL_18;
  }

  v55 = v53;
  v56 = [v53 delegate];

  sub_10035AF54(v54, type metadata accessor for Notice);
  if (!v56 || (*(v0 + 248) = v56, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) == 0))
  {
    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    goto LABEL_16;
  }

  v57 = *(v0 + 232);
  if (!v57)
  {
LABEL_16:
    sub_1000095E8(v0 + 208, &unk_101184EA0, &unk_100EBFA20);
LABEL_18:
    v87 = 0;
    goto LABEL_19;
  }

  v87 = *(*sub_10000954C((v0 + 208), v57) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C((v0 + 208));
LABEL_19:
  v58 = *(v0 + 416);
  v60 = *(v0 + 392);
  v59 = *(v0 + 400);
  v61 = *(v0 + 384);
  v62 = *(v0 + 320);
  v63 = *(v0 + 312);
  v81 = *(v0 + 296);
  v84 = *(v0 + 328);
  v92(v58, *(v0 + 424), v61);
  v64 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v65 = (v59 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v92(v66 + v64, v58, v61);
  *(v66 + v65) = v87;
  sub_10035AEF0(v63, v62);
  v67 = (v62 + *(v81 + 32));
  sub_100020438(*v67, v67[1]);
  *v67 = sub_10035B02C;
  v67[1] = v66;
  sub_10035AEF0(v62, v84);
LABEL_20:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v69 = Strong;
    v70 = UIViewController.noticePresenter.getter();

    if (v70)
    {
      (*(*v70 + 200))(*(v0 + 328), 0);
    }
  }

  v71 = *(v0 + 736);
  v72 = *(v0 + 328);
  sub_10012BA6C(v0 + 16);
  sub_10035AF54(v72, type metadata accessor for Notice);
  v43 = &unk_10118B980;
  v44 = &qword_100ECA530;
  v42 = v71;
LABEL_24:
  sub_1000095E8(v42, v43, v44);

  v73 = *(v0 + 8);

  return v73(0);
}

uint64_t sub_10035A2B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v44 = type metadata accessor for Logger();
  v46 = *(v44 - 8);
  __chkstk_darwin();
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v5 = &v43 - v4;
  v6 = type metadata accessor for Playlist();
  v47 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v10 = &v43 - v9;
  v11 = type metadata accessor for Playlist.Folder();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Playlist.Folder.Item();
  v15 = *(v48 - 8);
  __chkstk_darwin();
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {

    v36 = *(v12 + 32);
    v36(v14, v10, v11);
    v36(v17, v14, v11);
    v37 = &enum case for Playlist.Folder.Item.folder(_:);
LABEL_7:
    v39 = v48;
    (*(v15 + 104))(v17, *v37, v48);
    v40 = v49;
    (*(v15 + 32))(v49, v17, v39);
    v41 = 0;
    return (*(v15 + 56))(v40, v41, 1, v39);
  }

  sub_1000095E8(v10, &unk_10118F670, &unk_100EC89B0);
  v19 = v18;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  v20 = v47;
  if ((*(v47 + 48))(v5, 1, v6) != 1)
  {

    v38 = *(v20 + 32);
    v38(v8, v5, v6);
    v38(v17, v8, v6);
    v37 = &enum case for Playlist.Folder.Item.playlist(_:);
    goto LABEL_7;
  }

  sub_1000095E8(v5, &unk_1011814D0, &qword_100EC12A0);
  v21 = Logger.musicKit.unsafeMutableAddressor();
  v23 = v45;
  v22 = v46;
  v24 = v44;
  (*(v46 + 16))(v45, v21, v44);
  v25 = v19;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v50 = v29;
    *v28 = 136446210;
    v30 = v25;
    v31 = [v30 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_1000105AC(v32, v34, &v50);

    *(v28 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "Failed to convert MPModelPlaylist=%{public}s to Playlist.Folder.Item", v28, 0xCu);
    sub_10000959C(v29);

    (*(v46 + 8))(v45, v24);
  }

  else
  {

    (*(v22 + 8))(v23, v24);
  }

  v41 = 1;
  v39 = v48;
  v40 = v49;
  return (*(v15 + 56))(v40, v41, 1, v39);
}

double sub_10035A8A0@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t sub_10035A91C(uint64_t a1, uint64_t *a2)
{
  sub_10010FC20(&qword_101183AD0, &qword_100EBE4D8);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_1000089F8(a1, &v8 - v5, &qword_101183AD0, &qword_100EBE4D8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v6, v4, &qword_101183AD0, &qword_100EBE4D8);

  static Published.subscript.setter();
  return sub_1000095E8(v6, &qword_101183AD0, &qword_100EBE4D8);
}

char *sub_10035AA4C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&unk_10118A390, &unk_100F11FE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10035AB60()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v9 = v0 + v8;
  swift_unknownObjectWeakDestroy();
  v10 = *(v0 + v8 + 48);
  if (v10 != 255)
  {
    sub_10012B804(*(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), v10);
  }

  if (*(v9 + 64))
  {
  }

  if (*(v9 + 80))
  {
  }

  return swift_deallocObject();
}

double sub_10035AD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for Playlist() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0) - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100352200(a1, v3 + v8, v3 + v11, *(v3 + v12), v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8), a2, a3);
}

double sub_10035AE54()
{
  v1 = *(type metadata accessor for Playlist() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  return sub_10049E884(v0 + v2, v6, v7, v8);
}

uint64_t sub_10035AEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035AF54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10035AFC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_10035B02C()
{
  v1 = *(type metadata accessor for Playlist.Folder() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10049DFE4(v0 + v2, v3);
}

uint64_t sub_10035B0B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118B980, &qword_100ECA530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035B128(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10035B198(void *a1)
{
  v3 = *(type metadata accessor for Track() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1003518EC(a1, v4);
}

uint64_t sub_10035B208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10035B250(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100008F30;

  return sub_100352500(a1, v12, v13, v1 + v6, v1 + v9, v14, v1 + v11);
}

uint64_t sub_10035B3F0()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v9 = v0 + v8;
  swift_unknownObjectWeakDestroy();
  v10 = *(v0 + v8 + 48);
  if (v10 != 255)
  {
    sub_10012B804(*(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), v10);
  }

  if (*(v9 + 64))
  {
  }

  if (*(v9 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10035B5A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10002F3F4;

  return sub_100351E50(a1, v12, v13, v1 + v6, v1 + v9, v14, v1 + v11);
}

id sub_10035B75C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 0.75;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_10118C2B8 = result;
  return result;
}

id sub_10035B7A0()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:40.0 damping:12.0 initialVelocity:{0.0, 0.0}];
  qword_10118C2C0 = result;
  return result;
}

char *sub_10035B7EC()
{
  v1 = OBJC_IVAR____TtC5Music17SingIndicatorView____lazy_storage___gradientView;
  v2 = *&v0[OBJC_IVAR____TtC5Music17SingIndicatorView____lazy_storage___gradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music17SingIndicatorView____lazy_storage___gradientView];
  }

  else
  {
    v4 = v0;
    v5 = [v0 traitCollection];
    v6 = [v5 accessibilityContrast];

    if (v6 == 1)
    {
      v7 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
    }

    else
    {
      v7 = [objc_opt_self() whiteColor];
    }

    v8 = v7;
    v9 = objc_allocWithZone(type metadata accessor for LineProgressGradientView());
    v10 = LineProgressGradientView.init(color:featherWidth:direction:frame:)(v8, 0, 24.0, 0.0, 0.0, 0.0, 0.0);
    v11 = *&v4[v1];
    *&v4[v1] = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

uint64_t sub_10035B8EC()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10035B984, v3, v2);
}

uint64_t sub_10035B984()
{
  [*(v0 + 16) bounds];
  CGRectGetWidth(v10);
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() animationWithKeyPath:v1];
  *(v0 + 48) = v2;

  v3 = v2;
  [v3 setDuration:3.0];
  if (qword_10117F5E0 != -1)
  {
    swift_once();
  }

  [v3 setTimingFunction:qword_10118C2B8];

  isa = CGPoint._bridgeToObjectiveC()().super.isa;
  [v3 setFromValue:isa];

  v5 = CGPoint._bridgeToObjectiveC()().super.isa;
  [v3 setToValue:v5];

  v6 = sub_10035B7EC();
  *(v0 + 56) = [v6 layer];

  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_10035BB8C;

  return CALayer.addAsyncAnimation(_:forKey:)(v3, 0x6E6F697469736F70, 0xE800000000000000);
}

uint64_t sub_10035BB8C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_10035BCCC, v4, v3);
}

uint64_t sub_10035BCCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10035BD38()
{
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10035BDD0, v3, v2);
}

uint64_t sub_10035BDD0()
{

  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 animationWithKeyPath:v1];

  v4 = v3;
  [v4 setDuration:2.0];
  if (qword_10117F5E0 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 16);
  v6 = qword_10118C2B8;
  [v4 setTimingFunction:qword_10118C2B8];

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v4 setFromValue:isa];

  v8 = Int._bridgeToObjectiveC()().super.super.isa;
  [v4 setToValue:v8];

  v9 = String._bridgeToObjectiveC()();
  v10 = [v2 animationWithKeyPath:v9];

  v11 = v10;
  [v11 setDuration:2.0];
  [v11 setTimingFunction:v6];

  v12 = Double._bridgeToObjectiveC()().super.super.isa;
  [v11 setFromValue:v12];

  v13 = Int._bridgeToObjectiveC()().super.super.isa;
  [v11 setToValue:v13];

  v14 = objc_opt_self();
  [v14 begin];
  [v14 setDisableActions:1];
  v15 = sub_10035B7EC();
  v16 = [v15 layer];

  v17 = String._bridgeToObjectiveC()();
  [v16 addAnimation:v4 forKey:v17];

  v18 = *(v5 + OBJC_IVAR____TtC5Music17SingIndicatorView_singIndicatorLabel);
  v19 = [v18 layer];
  v20 = String._bridgeToObjectiveC()();
  [v19 addAnimation:v11 forKey:v20];

  v21 = [*(v5 + OBJC_IVAR____TtC5Music17SingIndicatorView____lazy_storage___gradientView) layer];
  [v21 setOpacity:0.0];

  v22 = [v18 layer];
  [v22 setShadowOpacity:0.0];

  [v14 commit];
  v23 = *(v0 + 8);

  return v23();
}