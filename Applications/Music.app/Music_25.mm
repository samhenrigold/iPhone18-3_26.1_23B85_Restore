void sub_1002E47B4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningParticipantsCount);
    *&v4[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningParticipantsCount] = v2;
    sub_1002DDA94(v5);
  }
}

double sub_1002E4824(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1002DCC7C();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v2;
    if (v6[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement] == 1)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = sub_10030AD10;
      *(v8 + 24) = v7;
      v9 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementCompletionHandlers;
      swift_beginAccess();
      v10 = *&v6[v9];
      v11 = v2;

      v12 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v6[v9] = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_10006429C(0, v10[2] + 1, 1, v10);
        *&v6[v9] = v10;
      }

      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        v10 = sub_10006429C((v14 > 1), v15 + 1, 1, v10);
      }

      v10[2] = v15 + 1;
      v16 = &v10[2 * v15];
      v16[4] = sub_10018A020;
      v16[5] = v8;
      *&v6[v9] = v10;
      swift_endAccess();
    }

    else
    {
      v17 = v2;
      v5;
      v18 = v17;
      sub_1002DD040(v2);
    }
  }

  return result;
}

double sub_1002E4A30()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v2 tracklist];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  if ([v3 transitionStyle] != 1)
  {

LABEL_9:
    goto LABEL_10;
  }

  v5 = [v4 toggleTransitionsCommand];

  if (v5)
  {
    swift_unknownObjectRelease();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v0;
    *&v18 = sub_10030A9F8;
    *(&v18 + 1) = v7;
    LOWORD(v19) = 257;
    *(&v19 + 1) = 1;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = qword_10117F8A8;
    v9 = v0;
    if (v8 != -1)
    {
      swift_once();
    }

    v12[0] = 7;
    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = v22;
    v13 = v18;
    swift_unknownObjectWeakInit();

    sub_1001D1980(&v18, &v11);
    sub_10058B0DC(v12);

    sub_1001D19DC(&v18);
    sub_100198CAC(v12);
    return result;
  }

LABEL_10:
  if (qword_10117F8A8 != -1)
  {
    swift_once();
  }

  sub_10058BB38(7, 3);

  return result;
}

void sub_1002E4E50()
{
  v40.receiver = v0;
  v40.super_class = type metadata accessor for NowPlayingQueueViewController(0);
  objc_msgSendSuper2(&v40, "viewLayoutMarginsDidChange");
  v1 = sub_1002DCC7C();
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 directionalLayoutMargins];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setDirectionalLayoutMargins:{v5, v7, v9, v11}];
    v39 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
    v12 = [*&v0[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView] visibleCells];
    sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      goto LABEL_15;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
LABEL_16:

      v21 = [*&v0[v39] visibleSupplementaryViewsOfKind:_UICollectionViewListLayoutElementKindSectionHeader];
      sub_100009F78(0, &qword_10118AC60, UICollectionReusableView_ptr);
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v22 >> 62)
      {
        goto LABEL_29;
      }

      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
LABEL_30:

        v30 = [*&v0[v39] visibleSupplementaryViewsOfKind:_UICollectionViewListLayoutElementKindSectionFooter];
        v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v31 >> 62)
        {
          goto LABEL_43;
        }

        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v32)
        {
LABEL_44:

          return;
        }

LABEL_32:
        v33 = 0;
        while (1)
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            v34 = sub_1007E97B4(v33, v31);
            v35 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v34 = *(v31 + 8 * v33 + 32);
            v35 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              v32 = _CocoaArrayWrapper.endIndex.getter();
              if (!v32)
              {
                goto LABEL_44;
              }

              goto LABEL_32;
            }
          }

          v36 = v34;
          v37 = [v0 view];
          if (!v37)
          {
            goto LABEL_47;
          }

          v38 = v37;
          [v37 directionalLayoutMargins];

          [v36 directionalLayoutMargins];
          [v36 setDirectionalLayoutMargins:?];

          ++v33;
          if (v35 == v32)
          {
            goto LABEL_44;
          }
        }
      }

LABEL_18:
      v24 = 0;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = sub_1007E97B4(v24, v22);
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v25 = *(v22 + 8 * v24 + 32);
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            v23 = _CocoaArrayWrapper.endIndex.getter();
            if (!v23)
            {
              goto LABEL_30;
            }

            goto LABEL_18;
          }
        }

        v27 = v25;
        v28 = [v0 view];
        if (!v28)
        {
          goto LABEL_46;
        }

        v29 = v28;
        [v28 directionalLayoutMargins];

        [v27 directionalLayoutMargins];
        [v27 setDirectionalLayoutMargins:?];

        ++v24;
        if (v26 == v23)
        {
          goto LABEL_30;
        }
      }
    }

LABEL_4:
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = sub_1007E97A0(v15, v13);
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v16 = *(v13 + 8 * v15 + 32);
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
LABEL_15:
          v14 = _CocoaArrayWrapper.endIndex.getter();
          if (!v14)
          {
            goto LABEL_16;
          }

          goto LABEL_4;
        }
      }

      v18 = v16;
      v19 = [v0 view];
      if (!v19)
      {
        break;
      }

      v20 = v19;
      [v19 directionalLayoutMargins];

      [v18 directionalLayoutMargins];
      [v18 setDirectionalLayoutMargins:?];

      ++v15;
      if (v17 == v14)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  __break(1u);
}

void sub_1002E53E4()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for NowPlayingQueueViewController(0);
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = &v0[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_lastSeenBounds];
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  if (CGRectEqualToRect(v23, *&v0[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_lastSeenBounds]))
  {
    return;
  }

  v12 = [v0 view];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  *v11 = v15;
  *(v11 + 1) = v17;
  *(v11 + 2) = v19;
  *(v11 + 3) = v21;
  if (v0[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState] == 1)
  {
    sub_1002E555C(1);
  }
}

void sub_1002E555C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1002DEF54();
  v9 = sub_1002DEB20();
  isa = sub_1002DE42C(v9).super.isa;
  [v8 setAttributedText:isa];

  v11 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___emptyStateLabel;
  v12 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___emptyStateLabel];
  v13 = sub_1002DEB20();
  v84 = sub_1002DE968(v13);
  v85 = v14;
  v83[2] = 0x6C6F626D79737B7BLL;
  v83[3] = 0xEA00000000007D7DLL;
  v83[0] = 0;
  v83[1] = 0xE000000000000000;
  sub_100009838();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v15 = String._bridgeToObjectiveC()();

  [v12 setAccessibilityLabel:v15];

  v16 = *&v2[v11];
  if (a1)
  {
    v17 = v16;
    v18 = [v2 view];
    if (!v18)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v19 = v18;
    v20 = [v18 layoutMarginsGuide];

    [v20 layoutFrame];
    v22 = v21;
    v24 = v23;

    [v17 sizeThatFits:{v22, v24}];
    v26 = v25;
    v28 = v27;

    v29 = [v2 view];
    if (!v29)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v30 = v29;
    v31 = 0.0;
    v32 = 0.0;
    v33 = v26;
    v34 = v28;
  }

  else
  {
    [v16 frame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = [v2 view];
    if (!v43)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v30 = v43;
    v31 = v36;
    v32 = v38;
    v33 = v40;
    v34 = v42;
  }

  v44 = CGRect.centeringAlong(axes:in:)(v31, v32, v33, v34);
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v51 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v51)
  {
    __break(1u);
    goto LABEL_27;
  }

  v52 = v51;
  v53 = [v2 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  if (v84)
  {
    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v55)
    {
      v54 = 5;
    }

    else
    {
      v54 = 3;
    }
  }

  else
  {

    v54 = 5;
  }

  sub_1004357B8(v54);
  v57 = v56;

  if (v57)
  {
    return;
  }

  v58 = sub_1002DCC7C();
  v59 = [v58 collectionViewLayout];

  v60 = _UICollectionViewListLayoutElementKindSectionHeader;
  IndexPath.init(item:section:)();
  v61 = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  v62 = [v59 layoutAttributesForSupplementaryViewOfKind:v60 atIndexPath:v61];

  if (!v62)
  {
    return;
  }

  v63 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY];
  v64 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
  [*&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView] contentOffset];
  v66 = v63 - v65;
  v67 = v46 + v63 - v65;
  if (v66 < 0.0)
  {
    v46 = v67;
  }

  v68 = [v2 view];
  if (!v68)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v69 = v68;
  [v62 frame];
  [v69 convertRect:*&v2[v64] fromCoordinateSpace:?];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;

  v86.origin.x = v71;
  v86.origin.y = v73;
  v86.size.width = v75;
  v86.size.height = v77;
  MaxY = CGRectGetMaxY(v86);
  if (qword_10117F560 != -1)
  {
    v82 = MaxY;
    swift_once();
    MaxY = v82;
  }

  v79 = MaxY + *&qword_10118A8F0;
  v87.origin.x = v44;
  v87.origin.y = v46;
  v87.size.width = v48;
  v87.size.height = v50;
  MinY = CGRectGetMinY(v87);
  if (MinY > v79)
  {
    v81 = MinY;
  }

  else
  {
    v81 = v79;
  }

  [*&v2[v11] setFrame:{v44, v81, v48, v50}];
}

void sub_1002E5B54(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v23 - v8;
  v10 = [a1 state];
  v11 = sub_1002DCC7C();
  v24 = v11;
  if (v10 == 3)
  {
    [v11 endInteractiveMovement];
  }

  else if (v10 == 2)
  {
    v16 = [a1 view];
    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = v16;
    [a1 locationInView:v16];
    v19 = v18;
    v21 = v20;

    [v24 updateInteractiveMovementTargetPosition:{v19, v21}];
  }

  else
  {
    if (v10 == 1)
    {
      v12 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
      [a1 locationInView:*(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView)];
      v13 = [v24 indexPathForItemAtPoint:?];

      if (v13)
      {
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v4 + 32))(v9, v6, v3);
        v14 = *(v1 + v12);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v14 beginInteractiveMovementForItemAtIndexPath:isa];

        (*(v4 + 8))(v9, v3);
      }

      return;
    }

    [v11 cancelInteractiveMovement];
  }

  v22 = v24;
}

void sub_1002E5F10(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY);
    [a1 contentOffset];
    if (!(*&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode] >> 62))
    {
      v8 = v7;
      if (([v5 isBeingPresented] & 1) == 0)
      {
        v9 = *&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
        if (!v9)
        {
          __break(1u);
          return;
        }

        v10 = *&v9[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset];
        *&v9[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset] = v6 - v8;
        if (v6 - v8 != v10)
        {
          v11 = v9;
          sub_1001B6800();
        }
      }
    }

    swift_unknownObjectRelease();
  }

  sub_1002E7054();
  v12 = *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_initialDraggingOffset + 8);
  v13 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY;
  v14 = *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY);
  [a1 contentOffset];
  v16 = v15;
  if (v14 <= v12)
  {
    v30 = v14 - v15;
  }

  else
  {
    v17 = *(v2 + v13);
    v18 = sub_1002DCC7C();
    [v18 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v33.origin.x = v20;
    v33.origin.y = v22;
    v33.size.width = v24;
    v33.size.height = v26;
    Height = CGRectGetHeight(v33);
    v28 = 0.0;
    if (Height < v17)
    {
      v29 = *(v2 + v13);
      [*(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) frame];
      v28 = v29 - CGRectGetHeight(v34);
    }

    v30 = v16 - v28;
  }

  if (qword_10117F568 != -1)
  {
    swift_once();
  }

  v31 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_shouldPlayHapticFeedback;
  if (*&qword_10118A8F8 <= v30)
  {
    if (*(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_shouldPlayHapticFeedback))
    {
      [*(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_feedbackGenerator) impactOccurred];
      *(v2 + v31) = 0;
    }
  }

  else if ((*(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_shouldPlayHapticFeedback) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_shouldPlayHapticFeedback) = 1;
  }

  if (*(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState) == 1)
  {

    sub_1002E555C(0);
  }
}

uint64_t sub_1002E61F0(void *a1, double *a2, double a3, double a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = v4 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_initialDraggingOffset;
  v12 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY;
  sub_10030ABA8();
  if ((static ApproximatelyComparable<>.>=~ infix(_:_:)() & 1) == 0 || (dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1) != 0 || a4 >= 0.0)
  {
    v30 = *(v11 + 8);
    v31 = *(v4 + v12);
    v68 = v31;
    if ((dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1) == 0 && v30 < v31)
    {
      v68 = 0.0;
      if ((dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1) == 0 && a4 > 0.0)
      {
        [a1 frame];
        CGRectGetHeight(v74);
        if (static ApproximatelyComparable<>.>=~ infix(_:_:)())
        {
          goto LABEL_27;
        }

        goto LABEL_39;
      }
    }

    [a1 contentOffset];
    v33 = v32;
    v34 = *(v4 + v12);
    if ((dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1) != 0 || v33 >= v34)
    {
      goto LABEL_39;
    }

    [a1 contentOffset];
    v36 = v35;
    v37 = *(v4 + v12);
    v38 = sub_1002DCC7C();
    [v38 frame];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v75.origin.x = v40;
    v75.origin.y = v42;
    v75.size.width = v44;
    v75.size.height = v46;
    v47 = 0.0;
    if (CGRectGetHeight(v75) < v37)
    {
      v48 = *(v5 + v12);
      [*(v5 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) frame];
      v47 = v48 - CGRectGetHeight(v76);
    }

    if ((dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1) != 0 || v47 >= v36)
    {
      goto LABEL_39;
    }

    v69 = *(v5 + v12);
    if (static ApproximatelyComparable<>.>=~ infix(_:_:)())
    {
      if (qword_10117F568 != -1)
      {
        swift_once();
      }

      v70 = qword_10118A8F8;
      v49 = static ApproximatelyComparable<>.>=~ infix(_:_:)();
      v50 = *(v5 + v12);
      if (v49)
      {
        v51 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
        [*(v5 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) frame];
        Height = CGRectGetHeight(v77);
        v24 = 0.0;
        if (Height >= v50)
        {
          goto LABEL_38;
        }

        v25 = *(v5 + v12);
        v53 = *(v5 + v51);
LABEL_36:
        [v53 frame];
        goto LABEL_37;
      }
    }

    else
    {
      [a1 contentOffset];
      v56 = *(v5 + v12);
      v57 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
      [*(v5 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) frame];
      if (CGRectGetHeight(v78) < v56)
      {
        [*(v5 + v57) frame];
        CGRectGetHeight(v79);
      }

      if (qword_10117F568 != -1)
      {
        swift_once();
      }

      v71 = qword_10118A8F8;
      v58 = static ApproximatelyComparable<>.>=~ infix(_:_:)();
      v50 = *(v5 + v12);
      if ((v58 & 1) == 0)
      {
        [*(v5 + v57) frame];
        v59 = CGRectGetHeight(v80);
        v24 = 0.0;
        if (v59 >= v50)
        {
          goto LABEL_38;
        }

        v25 = *(v5 + v12);
        v53 = *(v5 + v57);
        goto LABEL_36;
      }
    }

    a2[1] = v50;
    goto LABEL_39;
  }

  [a1 contentOffset];
  v67 = *(v4 + v12);
  if (static ApproximatelyComparable<>.<=~ infix(_:_:)())
  {
    v13 = *(v4 + v12);
    v14 = sub_1002DCC7C();
    [v14 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v73.origin.x = v16;
    v73.origin.y = v18;
    v73.size.width = v20;
    v73.size.height = v22;
    v23 = CGRectGetHeight(v73);
    v24 = 0.0;
    if (v23 < v13)
    {
      v25 = *(v5 + v12);
      [*(v5 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) frame];
LABEL_37:
      v24 = v25 - CGRectGetHeight(*&v26);
    }

LABEL_38:
    a2[1] = v24;
    goto LABEL_39;
  }

  v54 = a2[1];
  v55 = *(v4 + v12);
  if ((dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1) == 0 && v54 < v55)
  {
LABEL_27:
    a2[1] = *(v4 + v12);
  }

LABEL_39:
  v60 = 0.0;
  if (*(v5 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_wantsPlayingItemHeader) == 1)
  {
    sub_1002F815C(1u);
    v60 = v61;
  }

  type metadata accessor for CGPoint(0);
  v72 = *a2;
  if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    return [a1 setDecelerationRate:{UIScrollViewDecelerationRateFast, v72, v9, v10}];
  }

  v63 = a2[1];
  v64 = *(v5 + v12);
  result = dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)();
  if ((result & 1) == 0 && v64 < v63)
  {
    v65 = a2[1];
    v66 = v60 + *(v5 + v12);
    result = dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)();
    if ((result & 1) == 0 && v65 < v66)
    {
      a2[1] = v60 + *(v5 + v12);
    }
  }

  return result;
}

void sub_1002E6958(char a1, double a2, double a3)
{
  v4 = v3;
  v5 = *(v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY);
  if (a1)
  {
    v6 = (v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_previousContentSize);
    *v6 = 0;
    v6[1] = 0;
    sub_1002F815C(3u);
    a3 = v5 + v7;
  }

  v8 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bottomContentInset;
  v9 = a3 + *(v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bottomContentInset);
  v10 = sub_1002DCC7C();
  [v10 safeAreaInsets];
  v12 = v11;

  v13 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
  [*(v4 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) frame];
  v14 = v5 - (v9 + v12 - CGRectGetHeight(v29));
  if (v14 <= 0.0)
  {
    v14 = 0.0;
  }

  v15 = *(v4 + v8) + v14;
  [*(v4 + v13) safeAreaInsets];
  v17 = v15 + v16;
  [*(v4 + v13) contentInset];
  if (v21 != 0.0 || v18 != 0.0 || v19 != v17 || v20 != 0.0)
  {
    [*(v4 + v13) setContentInset:{0.0, 0.0, v17, 0.0}];
    [*(v4 + v13) setScrollIndicatorInsets:{0.0, 0.0, *(v4 + v8), 0.0}];
    v22 = *(v4 + v13);
    _s22AutoPlayBackgroundViewCMa();
    v23 = v22;
    static UICollectionReusableView.reuseIdentifier.getter();
    v24 = String._bridgeToObjectiveC()();

    v25 = [v23 _visibleDecorationViewsOfKind:v24];

    if (v25)
    {
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v26 + 16))
      {
        sub_10000DD18(v26 + 32, v28);

        if (swift_dynamicCast())
        {
          sub_1002EB3C8(v27);
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002E6B90(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v26 - v12;
  type metadata accessor for CGSize(0);
  v14 = (v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_previousContentSize);
  v27 = *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_previousContentSize);
  *v26 = a1;
  *&v26[1] = a2;
  if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    *v14 = a1;
    v14[1] = a2;
    v15 = *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = v15;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v17 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v11 + 8))(v13, v10);
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = 0;
      while (*(v17 + v19 + 32))
      {
        if (v18 == ++v19)
        {
          goto LABEL_7;
        }
      }

      v21 = sub_1002DCC7C();
      v22 = [v21 collectionViewLayout];

      v23 = _UICollectionViewListLayoutElementKindSectionFooter;
      IndexPath.init(item:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v7 + 8))(v9, v6);
      v25 = [v22 layoutAttributesForSupplementaryViewOfKind:v23 atIndexPath:isa];

      if (v25)
      {
        [v25 frame];
        *(v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY) = CGRectGetMaxY(v28);
        sub_1002DD920();

        goto LABEL_9;
      }
    }

    else
    {
LABEL_7:
    }

    *(v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY) = 0;
    sub_1002DD920();
LABEL_9:
    sub_1002E6958(0, v20, a2);
    sub_1002E6EA4();
  }
}

void sub_1002E6EA4()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18[-v4];
  v6 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v7 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  sub_1004357B8(0);
  v10 = v9;

  if (v10)
  {
    v11 = 1;
    goto LABEL_6;
  }

  v12 = *(v1 + v6);
  if (!v12)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v13 = v12;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v18[15] = 0;
  v14 = NSDiffableDataSourceSnapshot.numberOfItems(inSection:)();
  (*(v3 + 8))(v5, v2);
  v11 = v14 < 1;
LABEL_6:
  v15 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didScrollToUpNext;
  if ((*(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didScrollToUpNext) & 1) == 0)
  {
    v16 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY);
    if (v16 > 0.0 || v11)
    {
      v17 = sub_1002DCC7C();
      [v17 setContentOffset:{0.0, v16}];

      *(v1 + v15) = 1;
    }
  }
}

void sub_1002E7054()
{
  v1 = v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
  swift_beginAccess();
  if ((*(v1 + 8) & 1) == 0)
  {
    v2 = sub_1002DCC7C();
    [v2 contentOffset];
    v4 = v3;

    v5 = floor(v4);
    v6 = floor(*(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY));
    v7 = v6 <= v5 ? 3 : 0;
    v8 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection);
    *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection) = v7;
    if (v7 != v8 && v6 > v5 && *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didAppearOnce) != 0)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1005E15A8(4, 1);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1002E7140(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v6 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IndexPath();
  __chkstk_darwin();
  v11 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v84 - v12;
  __chkstk_darwin();
  v15 = v84 - v14;
  __chkstk_darwin();
  v18 = v84 - v17;
  if (!a1)
  {
    goto LABEL_50;
  }

  v86 = v8;
  v87 = v16;
  v84[1] = v6;
  v19 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
  if (v19)
  {
    v20 = a1;
    v21 = [v19 isSharedListeningSession];
    v22 = a1;
    if (v21)
    {
      v23 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningParticipantsCount;
      if (*&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningParticipantsCount] >= 1)
      {

        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = *&v2[v23];
        v28 = 1;
LABEL_51:
        *a2 = v27;
        *(a2 + 8) = v24;
        *(a2 + 16) = v25;
        *(a2 + 24) = v26;
        *(a2 + 32) = v28;
        return;
      }
    }
  }

  else
  {
    v29 = a1;
    v22 = a1;
  }

  v85 = v2;
  v30 = sub_1007D38E4();
  v31 = v22;
  if (v30)
  {
    v32 = v30;
    if ([v30 isAutoPlay])
    {

      v27 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v28 = 2;
      goto LABEL_51;
    }

    v45 = [v22 representativeSectionForDisplaySection:MPCPlayerResponseTracklistDisplaySectionNextItems];

    goto LABEL_23;
  }

  v33 = [v22 playingItemIndexPath];
  if (v33)
  {
    v34 = v33;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v87 + 32))(v18, v15, v9);
    v35 = [v22 items];
    v36 = [v35 sectionAtIndex:IndexPath.section.getter()];

    v37 = [v36 metadataObject];
    if (v37)
    {
      v38 = [v37 flattenedGenericObject];

      if (v38)
      {
        v39 = [v38 anyObject];

        if (v39)
        {
          objc_opt_self();
          v40 = swift_dynamicCastObjCClass();
          if (v40)
          {
            v41 = [v40 name];
            if (v41)
            {
              v42 = v41;
              v43 = v39;
              v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v24 = v44;

              (*(v87 + 8))(v18, v9);
              v25 = 0;
              v26 = 0;
              v28 = 0;
              goto LABEL_51;
            }

            (*(v87 + 8))(v18, v9);

            goto LABEL_20;
          }
        }
      }
    }

    (*(v87 + 8))(v18, v9);
  }

LABEL_20:
  if (![v31 repeatType] || (v46 = objc_msgSend(v31, "playingItemIndexPath")) == 0)
  {
    v61 = [v31 playingItemGlobalIndex];
    v62 = v61 + 1;
    if (!__OFADD__(v61, 1))
    {
      v63 = [v31 globalItemCount];

      v27 = 0;
      v25 = 0;
      v26 = 0;
      v64 = v62 < v63;
      if (v62 < v63)
      {
        v24 = 0xE000000000000000;
      }

      else
      {
        v24 = 0;
      }

      if (v64)
      {
        v28 = 0;
      }

      else
      {
        v28 = -1;
      }

      goto LABEL_51;
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v47 = v46;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = v87;
  (*(v87 + 32))(v13, v11, v9);
  v49 = [v31 items];
  v45 = [v49 sectionAtIndex:IndexPath.section.getter()];

  (*(v48 + 8))(v13, v9);
LABEL_23:
  v50 = v45;
  v51 = v85;
  if (!v50)
  {
LABEL_49:

LABEL_50:
    v27 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v28 = -1;
    goto LABEL_51;
  }

  v52 = v50;
  v53 = [v50 metadataObject];
  v54 = [v53 flattenedGenericObject];

  v55 = [v54 anyObject];
  if (!v55)
  {
LABEL_48:

    goto LABEL_49;
  }

  objc_opt_self();
  v56 = swift_dynamicCastObjCClass();
  if (v56)
  {
    v57 = v56;
    v58 = [v56 name];
    if (v58)
    {
      v59 = v58;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v60;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v27 = String.init(localized:table:bundle:locale:comment:)();
      v24 = v69;
    }

    v70 = [v51 view];
    if (v70)
    {
      v71 = v70;
      v25 = [v70 window];

      if (v25)
      {
        v72 = [v25 windowScene];

        if (v72)
        {
          v73 = sub_1004840C8(v57, 0, v72);
LABEL_43:
          v25 = v73;
          v26 = v74;

LABEL_62:
          v83 = HIBYTE(v24) & 0xF;
          if ((v24 & 0x2000000000000000) == 0)
          {
            v83 = v27 & 0xFFFFFFFFFFFFLL;
          }

          if (v83)
          {
            v28 = 0;
            goto LABEL_51;
          }

          sub_100020438(v25, v26);

          goto LABEL_50;
        }

        goto LABEL_59;
      }

LABEL_60:

      goto LABEL_61;
    }

    goto LABEL_68;
  }

  objc_opt_self();
  v65 = swift_dynamicCastObjCClass();
  if (v65)
  {
    v66 = [v65 name];
    if (v66)
    {
      v67 = v66;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v68;

LABEL_59:
      v25 = 0;
LABEL_61:
      v26 = 0;
      goto LABEL_62;
    }

    goto LABEL_48;
  }

  objc_opt_self();
  v75 = swift_dynamicCastObjCClass();
  if (!v75)
  {

    goto LABEL_50;
  }

  v76 = v75;
  v77 = [v75 title];
  if (v77)
  {
    v78 = v77;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v79;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v27 = String.init(localized:table:bundle:locale:comment:)();
    v24 = v80;
  }

  v81 = [v51 view];
  if (v81)
  {
    v82 = v81;
    v25 = [v81 window];

    if (v25)
    {
      v72 = [v25 windowScene];

      if (v72)
      {
        v73 = sub_100483660(v76, 0, 0, v72);
        goto LABEL_43;
      }

      goto LABEL_59;
    }

    goto LABEL_60;
  }

LABEL_69:
  __break(1u);
}

double sub_1002E7A7C(uint64_t a1, id a2)
{
  v4 = [a2 tracklist];
  v5 = [v4 actionAtQueueEndCommand];

  if (v5)
  {
    v6 = [v5 supportedActions];
    sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = [objc_allocWithZone(NSNumber) initWithInteger:3];
    v24 = v8;
    __chkstk_darwin();
    v23[2] = &v24;
    LOBYTE(v6) = sub_10044AC40(sub_10030B0DC, v23, v7);

    if (v6)
    {
      v9 = [a2 tracklist];
      v10 = [v9 actionAtQueueEnd];

      *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonState) = v10 == 3;
      [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton) setNeedsUpdateConfiguration];
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonState) = 2;
  [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton) setNeedsUpdateConfiguration];
LABEL_6:
  v11 = [a2 tracklist];
  v12 = [v11 toggleTransitionsCommand];

  if (v12)
  {
    swift_unknownObjectRelease();
    v13 = [a2 tracklist];
    v14 = [v13 transitionsActive];

    v15 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState);
    *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState) = v14;
    if (v15 == v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState);
    *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState) = 2;
    if (v16 == 2)
    {
      goto LABEL_12;
    }
  }

  v17 = sub_1002931A8();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v17))
  {
    [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) setNeedsUpdateConfiguration];
  }

LABEL_12:
  v18 = [a2 tracklist];
  v19 = [v18 transitionStyle];

  v20 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionStyle);
  *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionStyle) = v19;
  if (v19 != v20)
  {
    v21 = sub_1002931A8();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v21))
    {
      [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) setNeedsUpdateConfiguration];
    }
  }

  return sub_1002E4A30();
}

void sub_1002E7DC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    sub_1004357B8(3u);
    v5 = v4;

    if ((v5 & 1) == 0)
    {
      v6 = sub_1002DCC7C();
      v7 = [v6 collectionViewLayout];

      [swift_getObjCClassFromObject() invalidationContextClass];
      swift_getObjCClassMetadata();
      sub_100009F78(0, &qword_10118AC78, UICollectionViewLayoutInvalidationContext_ptr);
      swift_dynamicCastMetatypeUnconditional();
      v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v9 = _UICollectionViewListLayoutElementKindSectionHeader;
      sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
      type metadata accessor for IndexPath();
      *(swift_allocObject() + 16) = xmmword_100EBC6B0;
      v10 = v9;
      IndexPath.init(item:section:)();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v8 invalidateSupplementaryElementsOfKind:v10 atIndexPaths:isa];

      v12 = [*(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) collectionViewLayout];
      [v12 invalidateLayoutWithContext:v8];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002E802C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v9 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (!v9)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v10 = v9;
  sub_1004357B8(5u);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    v13 = sub_1002DCC7C();
    v14 = _UICollectionViewListLayoutElementKindSectionHeader;
    IndexPath.init(item:section:)();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v4);
    v16 = [v13 supplementaryViewForElementKind:v14 atIndexPath:isa];

    if (v16)
    {
      type metadata accessor for NowPlayingQueueControlsView();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        sub_1002E9520(v17);
      }
    }
  }

  v18 = *(v2 + v8);
  if (!v18)
  {
    goto LABEL_21;
  }

  v19 = v18;
  sub_1004357B8(2u);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    v22 = sub_1002DCC7C();
    v23 = _UICollectionViewListLayoutElementKindSectionHeader;
    IndexPath.init(item:section:)();
    v24 = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v4);
    v25 = [v22 supplementaryViewForElementKind:v23 atIndexPath:v24];

    if (v25)
    {
      type metadata accessor for NowPlayingQueueHeaderView(0);
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        sub_1002E8394(v26, 2, a1);
      }
    }
  }

  v27 = *(v2 + v8);
  if (!v27)
  {
    goto LABEL_22;
  }

  v28 = v27;
  sub_1004357B8(3u);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
    v31 = sub_1002DCC7C();
    v32 = _UICollectionViewListLayoutElementKindSectionHeader;
    IndexPath.init(item:section:)();
    v33 = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v4);
    v34 = [v31 supplementaryViewForElementKind:v32 atIndexPath:v33];

    if (v34)
    {
      type metadata accessor for NowPlayingQueueHeaderView(0);
      v35 = swift_dynamicCastClass();
      if (v35)
      {
        sub_1002E8394(v35, 3, a1);
      }
    }
  }
}

void sub_1002E8394(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  sub_10010FC20(&qword_10118ABE0, aB_11);
  __chkstk_darwin();
  v9 = &v79 - v8;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v10 = *&v3[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
  if (!v10)
  {
    v27 = a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource;
    v28 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource);
    v29 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8);
    v30 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16);
    v31 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24);
    *v27 = 0u;
    *(v27 + 16) = 0u;
    v32 = *(v27 + 32);
    *(v27 + 32) = -1;
    sub_100309C54(v28, v29, v30, v31, v32);
    sub_1005701F8();
    return;
  }

  v11 = &selRef_trackNumber;
  if (a2 != 3)
  {
    v33 = a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource;
    v34 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource);
    v35 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8);
    v36 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16);
    v37 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24);
    *v33 = 0u;
    *(v33 + 16) = 0u;
    v38 = *(v33 + 32);
    *(v33 + 32) = -1;
    v39 = v10;
    sub_100309C54(v34, v35, v36, v37, v38);
    sub_1005701F8();
    v40 = sub_10056FCA8();
    [v40 setHidden:0];

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = (a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_clearButtonAction);
    v43 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_clearButtonAction);
    v44 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_clearButtonAction + 8);
    *v42 = sub_10030AA1C;
    v42[1] = v41;

    sub_100020438(v43, v44);

LABEL_10:
    v51 = [v4 traitCollection];
    sub_1001D1C24();
    sub_1001D1C78();
    UITraitCollection.subscript.getter();

    v52 = sub_1005C3564(v81[0]) ^ 1;
    v53 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton);
    [v53 setHidden:v52 & 1];
    goto LABEL_12;
  }

  v79 = a3;
  v12 = v10;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v14 = (a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title);
  *v14 = v13;
  v14[1] = v15;

  sub_1005700F4();
  v16 = [v12 tracklist];
  v80 = v3;
  sub_1002E7140(v16, v82);

  v17 = a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource;
  v18 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource);
  v19 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8);
  v20 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16);
  v21 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24);
  v22 = v82[1];
  *v17 = v82[0];
  *(v17 + 16) = v22;
  v23 = *(v17 + 32);
  *(v17 + 32) = v83;
  sub_1000089F8(v82, v81, &qword_10118ABD8, L"b\v\a");
  sub_100309C54(v18, v19, v20, v21, v23);
  sub_1005701F8();
  sub_1000095E8(v82, &qword_10118ABD8, L"b\v\a");
  v24 = sub_10056FCA8();
  [v24 setHidden:1];

  sub_1000089F8(v79, v9, &qword_10118ABE0, aB_11);
  v25 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v9, 1, v25) == 1)
  {
    sub_1000095E8(v9, &qword_10118ABE0, aB_11);
    v4 = v80;
    v11 = &selRef_trackNumber;
  }

  else
  {
    v81[0] = 2;
    NSDiffableDataSourceSnapshot.indexOfSection(_:)();
    v46 = v45;
    (*(v26 + 8))(v9, v25);
    v4 = v80;
    v11 = &selRef_trackNumber;
    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v47 = *&v4[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v47)
  {
    __break(1u);
    return;
  }

  v48 = v47;
  sub_1004357B8(2u);
  v50 = v49;

  if (v50)
  {
    goto LABEL_10;
  }

LABEL_11:
  v53 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton);
  v52 = 1;
  [v53 setHidden:1];
LABEL_12:
  sub_10056FF60();
  v54 = sub_1002931A8();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v54))
  {
    [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) setHidden:v52 & 1];
    sub_10056FF60();
  }

  v55 = [v10 v11[2]];
  v56 = sub_1002DEE20();

  if (v56)
  {
    v57 = [v10 v11[2]];
    v58 = [v57 actionAtQueueEnd];

    v59 = v58 == 3;
  }

  else
  {
    v59 = 2;
  }

  *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonState) = v59;
  [v53 setNeedsUpdateConfiguration];
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = (a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonAction);
  v62 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonAction);
  v63 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonAction + 8);
  *v61 = sub_10030AA24;
  v61[1] = v60;

  sub_100020438(v62, v63);

  v64 = [v10 v11[2]];
  v65 = [v64 transitionStyle];

  v66 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionStyle);
  *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionStyle) = v65;
  if (v65 != v66)
  {
    v67 = sub_1002931A8();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v67))
    {
      [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) setNeedsUpdateConfiguration];
    }
  }

  v68 = [v10 v11[2]];
  v69 = [v68 toggleTransitionsCommand];

  if (v69)
  {
    swift_unknownObjectRelease();
    v70 = [v10 v11[2]];
    v71 = [v70 transitionsActive];

    v72 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState);
    *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState) = v71;
    if (v72 == v71)
    {
      goto LABEL_26;
    }

LABEL_24:
    v74 = sub_1002931A8();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v74))
    {
      [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) setNeedsUpdateConfiguration];
    }

    goto LABEL_26;
  }

  v73 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState);
  *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState) = 2;
  if (v73 != 2)
  {
    goto LABEL_24;
  }

LABEL_26:

  v75 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = (a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonAction);
  v77 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonAction);
  v78 = v76[1];
  *v76 = sub_10030AA54;
  v76[1] = v75;

  sub_100020438(v77, v78);
}

void sub_1002E8BD4(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse);
    if (v3)
    {
      v4 = [v3 tracklist];
      v5 = [v4 resetCommand];

      if (v5)
      {
        v6 = [v5 clearUpNextItems];
        swift_unknownObjectRelease();
        if (v6)
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          v7 = String._bridgeToObjectiveC()();

          v8 = [objc_opt_self() alertControllerWithTitle:0 message:v7 preferredStyle:1];

          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          v9 = swift_allocObject();
          *(v9 + 16) = v6;
          v10 = v6;
          v11 = String._bridgeToObjectiveC()();

          aBlock[4] = sub_10030AA84;
          aBlock[5] = v9;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10027D328;
          aBlock[3] = &unk_1010A5E58;
          v12 = _Block_copy(aBlock);

          v13 = objc_opt_self();
          v14 = [v13 actionWithTitle:v11 style:2 handler:v12];
          _Block_release(v12);

          [v8 addAction:v14];
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          v15 = String._bridgeToObjectiveC()();

          v16 = [v13 actionWithTitle:v15 style:1 handler:0];

          [v8 addAction:v16];
          [v2 presentViewController:v8 animated:1 completion:0];

          v2 = v8;
        }
      }
    }
  }
}

double sub_1002E8FE8(uint64_t a1, void *a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = a2;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_10086E658(0, 0, v4, &unk_100EC6610, v8);

  return result;
}

uint64_t sub_1002E9110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a1;
  v4[13] = a4;
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v6;
  v4[16] = v5;

  return _swift_task_switch(sub_1002E91A8, v6, v5);
}

uint64_t sub_1002E91A8()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_100009F78(0, &qword_10118AC38, MPCPlayerCommandRequest_ptr);
  *(v0 + 16) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = &protocol witness table for MPCPlayerCommandRequest;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1002E92E8;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1002E92E8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1002E949C;
  }

  else
  {
    v4[19] = a1;
    sub_1000095E8((v4 + 7), &unk_101183910, &unk_100EBDD00);
    sub_10000959C(v4 + 2);
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1002E942C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1002E942C()
{
  v1 = v0[19];
  v2 = v0[12];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1002E949C()
{

  sub_1000095E8(v0 + 56, &unk_101183910, &unk_100EBDD00);
  sub_10000959C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

double sub_1002E9520(char *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = [v1 traitCollection];
    sub_100050078();
    v7 = UITraitCollection.subscript.getter();

    v8 = objc_opt_self();
    if (v7)
    {
      v9 = [v8 clearColor];
      [a1 setBackgroundColor:v9];

      v10 = [*&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_contentView] layer];
      [v10 setCompositingFilter:kCAFilterPlusL];
    }

    else
    {
      v19 = [v8 systemBackgroundColor];
      [a1 setBackgroundColor:v19];

      v10 = [*&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_contentView] layer];
      [v10 setCompositingFilter:0];
    }

    v20 = [v5 tracklist];
    v21 = [v20 shuffleCommand];

    if (v21)
    {
      swift_unknownObjectRelease();
      v22 = [v5 tracklist];
      v23 = [v22 shuffleType];

      v24 = &a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType];
      v25 = *&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType];
      v26 = a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType + 8];
      *v24 = v23;
      v24[8] = 0;
      if ((v26 & 1) == 0 && v23 == v25)
      {
LABEL_21:
        v29 = [v5 tracklist];
        v30 = [v29 repeatCommand];

        if (v30)
        {
          swift_unknownObjectRelease();
          v31 = [v5 tracklist];
          v32 = [v31 repeatType];

          v33 = &a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType];
          v34 = *&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType];
          v35 = a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType + 8];
          *v33 = v32;
          v33[8] = 0;
          if ((v35 & 1) == 0 && v32 == v34)
          {
LABEL_27:
            v38 = [v5 tracklist];
            v39 = sub_1002DEE20();

            if (v39)
            {
              v40 = [v5 tracklist];
              v41 = [v40 actionAtQueueEnd];

              v42 = v41 == 3;
              v43 = a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayState];
              a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayState] = v42;
              if (v43 != 2 && ((v42 ^ v43) & 1) == 0)
              {
LABEL_33:
                v45 = [v5 tracklist];
                v46 = [v45 toggleTransitionsCommand];

                if (v46)
                {
                  swift_unknownObjectRelease();
                  v47 = [v5 tracklist];
                  v48 = [v47 transitionsActive];

                  v49 = a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsActive];
                  a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsActive] = v48;
                  if (v49 != 2 && ((v48 ^ v49) & 1) == 0)
                  {
LABEL_39:
                    v51 = [v5 tracklist];
                    v52 = [v51 transitionStyle];

                    v53 = *&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionStyle];
                    *&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionStyle] = v52;
                    if (v52 != v53)
                    {
                      [*&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButton] setNeedsUpdateConfiguration];
                    }

                    sub_1002E4A30();
                    v54 = &a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleButtonAction];
                    v55 = *&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleButtonAction];
                    v56 = *&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleButtonAction + 8];
                    *v54 = sub_1002E9E7C;
                    *(v54 + 1) = 0;
                    sub_100020438(v55, v56);
                    v57 = &a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatButtonAction];
                    v58 = *&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatButtonAction];
                    v59 = *&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatButtonAction + 8];
                    *v57 = sub_1002EA050;
                    *(v57 + 1) = 0;
                    sub_100020438(v58, v59);
                    v60 = sub_100025CE0();
                    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v60))
                    {
                      if (qword_10117F5F8 != -1)
                      {
                        swift_once();
                      }

                      v61 = (*(*qword_101218AC8 + 360))();
                      v62 = [v61 route];

                      if (v62)
                      {
                        v63 = [v62 isDeviceRoute];

                        if (v63)
                        {
                          v64 = objc_opt_self();
                          v65 = [v64 standardUserDefaults];
                          v66 = [v65 isFocusModePrivateListeningEnabled];

                          if (!v66)
                          {
                            v67 = [v64 standardUserDefaults];
                            v66 = [v67 isPrivateListeningEnabled];
                          }

                          v68 = [v66 BOOLValue];

                          sub_10028F61C(v68);
                          v69 = swift_allocObject();
                          *(v69 + 16) = a1;
                          *(v69 + 24) = v4;
                          v70 = &a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButtonAction];
                          v71 = *&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButtonAction];
                          v72 = *&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButtonAction + 8];
                          *v70 = sub_10030A890;
                          *(v70 + 1) = v69;
                          v73 = a1;
                          v74 = v4;
                          sub_100020438(v71, v72);
                          goto LABEL_52;
                        }
                      }

                      v75 = a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistory];
                      a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistory] = 2;
                      if (v75 != 2)
                      {
                        v76 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButton;
                        [*&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButton] setHidden:1];
                        v77 = *&a1[v76];
                        [v77 setNeedsUpdateConfiguration];
                      }
                    }

LABEL_52:
                    v78 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v79 = &a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayButtonAction];
                    v80 = *&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayButtonAction];
                    v81 = *&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayButtonAction + 8];
                    *v79 = sub_10030B04C;
                    *(v79 + 1) = v78;

                    sub_100020438(v80, v81);

                    v82 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v83 = &a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButtonAction];
                    v84 = *&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButtonAction];
                    v85 = *(v83 + 1);
                    *v83 = sub_10030B050;
                    *(v83 + 1) = v82;

                    sub_100020438(v84, v85);

                    return result;
                  }
                }

                else
                {
                  v50 = a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsActive];
                  a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsActive] = 2;
                  if (v50 == 2)
                  {
                    goto LABEL_39;
                  }
                }

                [*&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButton] setNeedsUpdateConfiguration];
                goto LABEL_39;
              }
            }

            else
            {
              v44 = a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayState];
              a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayState] = 2;
              if (v44 == 2)
              {
                goto LABEL_33;
              }
            }

            [*&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayButton] setNeedsUpdateConfiguration];
            goto LABEL_33;
          }
        }

        else
        {
          v36 = &a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType];
          v37 = a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType + 8];
          *v36 = 0;
          v36[8] = 1;
          if (v37)
          {
            goto LABEL_27;
          }
        }

        [*&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatButton] setNeedsUpdateConfiguration];
        goto LABEL_27;
      }
    }

    else
    {
      v27 = &a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType];
      v28 = a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType + 8];
      *v27 = 0;
      v27[8] = 1;
      if (v28)
      {
        goto LABEL_21;
      }
    }

    [*&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleButton] setNeedsUpdateConfiguration];
    goto LABEL_21;
  }

  v11 = a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayState];
  a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayState] = 2;
  if (v11 != 2)
  {
    [*&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayButton] setNeedsUpdateConfiguration];
  }

  v13 = &a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType];
  v14 = a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType + 8];
  *v13 = 0;
  v13[8] = 1;
  if ((v14 & 1) == 0)
  {
    [*&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleButton] setNeedsUpdateConfiguration];
  }

  v15 = &a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType];
  v16 = a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType + 8];
  *v15 = 0;
  v15[8] = 1;
  if ((v16 & 1) == 0)
  {
    [*&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatButton] setNeedsUpdateConfiguration];
  }

  v17 = a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsActive];
  a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsActive] = 2;
  if (v17 != 2)
  {
    v18 = *&a1[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButton];

    [v18 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t sub_1002E9E9C(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1002E9F34, v3, v2);
}

uint64_t sub_1002E9F34()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0;
  *(v0 + 40) = &type metadata for Player.ShuffleCommand;
  *(v0 + 48) = &protocol witness table for Player.ShuffleCommand;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 1;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2A1C;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

double sub_1002EA070(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  sub_1001F524C(0, 0, v4, a2, v7);

  return result;
}

uint64_t sub_1002EA178(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1002EA210, v3, v2);
}

uint64_t sub_1002EA210()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0;
  *(v0 + 40) = &type metadata for Player.RepeatCommand;
  *(v0 + 48) = &protocol witness table for Player.RepeatCommand;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 1;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2A1C;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

void sub_1002EA32C(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistory) ^ 1;
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = [v5 isFocusModePrivateListeningEnabled];

  if (v6)
  {

    v7 = String._bridgeToObjectiveC()();

    v8 = String._bridgeToObjectiveC()();

    v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

    v10 = swift_allocObject();
    *(v10 + 16) = v3 & 1;
    v11 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_10030A898;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10027D328;
    aBlock[3] = &unk_1010A5D90;
    v12 = _Block_copy(aBlock);

    v13 = [objc_opt_self() actionWithTitle:v11 style:0 handler:v12];
    _Block_release(v12);

    [v9 addAction:v13];
    [a2 presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    v14 = [v4 standardUserDefaults];
    [v14 setFocusModePrivateListeningEnabled:0];

    v15 = [v4 standardUserDefaults];
    v16 = [objc_allocWithZone(NSNumber) initWithBool:v3 & 1];
    [v15 setPrivateListeningEnabled:v16];
  }
}

void sub_1002EA678(uint64_t a1, char a2)
{
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  [v4 setFocusModePrivateListeningEnabled:0];

  v5 = [v3 standardUserDefaults];
  v6 = [objc_allocWithZone(NSNumber) initWithBool:a2 & 1];
  [v5 setPrivateListeningEnabled:v6];
}

void sub_1002EA748()
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v28 - v3;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v8 = &v28 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse);
  if (v9)
  {
    v10 = v9;
    v11 = [v10 tracklist];
    v12 = [v11 actionAtQueueEnd];

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    type metadata accessor for MainActor();
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    if (v12 == 3)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    *(v15 + 16) = v14;
    *(v15 + 24) = &protocol witness table for MainActor;
    *(v15 + 32) = v16;
    if (v12 == 3)
    {
      v17 = 15;
    }

    else
    {
      v17 = 2;
    }

    sub_1001F524C(0, 0, v8, &unk_100EC65D0, v15);

    v18 = type metadata accessor for URL();
    v19 = *(*(v18 - 8) + 56);
    v19(v4, 1, 1, v18);
    v19(v2, 1, 1, v18);
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(0x79616C506F747561, 0xE800000000000000, 5, v17, v4, 0, 0, 12, v6, 0, 0, 65280, 0x7478654E7055, 0xE600000000000000, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v2, 0, 1, 2, 0, 0, 0);
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
    (*((swift_isaMask & *v20) + 0xB8))(v6, v21, v23, v25 & 1, v26, *(v24 + v27));

    sub_10030AD48(v6, type metadata accessor for MetricsEvent.Click);
  }
}

uint64_t sub_1002EAB7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 144) = a4;
  *(v4 + 96) = a1;
  type metadata accessor for MainActor();
  *(v4 + 104) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 112) = v6;
  *(v4 + 120) = v5;

  return _swift_task_switch(sub_1002EAC18, v6, v5);
}

uint64_t sub_1002EAC18()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = *(v0 + 144);
  *(v0 + 40) = &type metadata for Player.QueueEndCommand;
  *(v0 + 48) = &protocol witness table for Player.QueueEndCommand;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 1;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2D48;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

double sub_1002EAD38()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *&v1 = __chkstk_darwin().n128_u64[0];
  v3 = &v11 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse);
  if (v4)
  {
    v5 = [v4 tracklist];
    v6 = [v5 transitionStyle];

    if (v6 == 1)
    {
      if (qword_10117F8A8 != -1)
      {
        swift_once();
      }

      sub_10058BB38(7, 2);
    }
  }

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_1001F524C(0, 0, v3, &unk_100EC65C0, v9);

  return result;
}

uint64_t sub_1002EAEE4(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1002EAF7C, v3, v2);
}

uint64_t sub_1002EAF7C()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = &type metadata for Player.ToggleTransitionsCommand;
  *(v0 + 48) = &protocol witness table for Player.ToggleTransitionsCommand;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 1;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2A1C;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

double sub_1002EB08C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse);
  if (!v3)
  {
    v17 = a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource;
    v18 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource);
    v19 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8);
    v20 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16);
    v21 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24);
    *v17 = 0u;
    *(v17 + 16) = 0u;
    v22 = *(v17 + 32);
    *(v17 + 32) = -1;
    sub_100309C54(v18, v19, v20, v21, v22);
    sub_1005701F8();
    return result;
  }

  v4 = v3;
  v5 = [v4 tracklist];
  sub_1002E7140(v5, v33);

  v6 = a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource;
  v7 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource);
  v8 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8);
  v9 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16);
  v10 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24);
  v11 = v33[1];
  *v6 = v33[0];
  *(v6 + 16) = v11;
  v12 = *(v6 + 32);
  *(v6 + 32) = v34;
  sub_1000089F8(v33, &v32, &qword_10118ABD8, L"b\v\a");
  sub_100309C54(v7, v8, v9, v10, v12);
  sub_1005701F8();
  sub_1000095E8(v33, &qword_10118ABD8, L"b\v\a");
  v13 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton);
  v14 = [v13 isHidden];
  v15 = sub_1002931A8();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v15))
  {
    v16 = [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) isHidden];
  }

  else
  {
    v16 = 1;
  }

  if (v14 == [v13 isHidden])
  {
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v15))
    {
      if (v16 == [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) isHidden])
      {
        goto LABEL_8;
      }
    }

    else if (v16)
    {
      goto LABEL_8;
    }
  }

  sub_1002E7DC8();
LABEL_8:

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = (a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonAction);
  v26 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonAction);
  v27 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonAction + 8);
  *v25 = sub_10030B04C;
  v25[1] = v24;

  sub_100020438(v26, v27);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = (a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonAction);
  v30 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonAction);
  v31 = v29[1];
  *v29 = sub_10030B050;
  v29[1] = v28;

  sub_100020438(v30, v31);

  return result;
}

void sub_1002EB36C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1002EB3C8(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
  if (v3)
  {
    v4 = [v3 tracklist];
  }

  else
  {
    v4 = 0;
  }

  sub_1002E7140(v4, v10);

  if (v11 != 255)
  {
    if (v11 == 2)
    {
      v5 = vorrq_s8(v10[0], v10[1]);
      if (!*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)))
      {
        v6 = *(a1 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController22AutoPlayBackgroundView_backgroundView);
        v8 = 1;
        goto LABEL_9;
      }
    }

    sub_1000095E8(v10, &qword_10118ABD8, L"b\v\a");
  }

  v6 = *(a1 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController22AutoPlayBackgroundView_backgroundView);
  v7 = [v1 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  v8 = sub_1005C3564(v9);
LABEL_9:
  [v6 setHidden:v8 & 1];
}

void sub_1002EB520(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v86 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v85 - v9;
  v11 = [objc_allocWithZone(_UICollectionViewListLayoutSectionConfiguration) initWithAppearanceStyle:0 layoutEnvironment:a2];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v95 = sub_10030A1F0;
  v96 = v12;
  aBlock = _NSConcreteStackBlock;
  v92 = 1107296256;
  v93 = sub_1002EF004;
  v94 = &unk_1010A59D0;
  v13 = _Block_copy(&aBlock);

  [v11 setTrailingSwipeActionsConfigurationProvider:v13];
  _Block_release(v13);
  v14 = [a2 traitCollection];
  sub_100557358(v14);
  v16 = v15;

  [v11 setRowHeight:v16];
  v17 = [v3 traitCollection];
  v18 = sub_1001D1C24();
  v87 = sub_1001D1C78();
  v88 = v18;
  UITraitCollection.subscript.getter();
  if (sub_1005C3564(aBlock))
  {

    v19 = 1;
  }

  else
  {
    v20 = v11;
    v21 = [v17 accessibilityContrast];

    v22 = v21 == 1;
    v11 = v20;
    v19 = v22;
  }

  [v11 setSeparatorStyle:v19];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v95 = sub_10030A1F8;
  v96 = v23;
  aBlock = _NSConcreteStackBlock;
  v92 = 1107296256;
  v93 = sub_1002EF354;
  v94 = &unk_1010A59F8;
  v24 = _Block_copy(&aBlock);

  [v11 setSeparatorInsetProvider:v24];
  _Block_release(v24);
  if (qword_10117F920 != -1)
  {
    swift_once();
  }

  v25 = qword_1012190B8;
  v90 = [objc_allocWithZone(_UIListSeparatorConfiguration) initWithListAppearance:0];
  [v90 setColor:v25];
  v26 = [v3 traitCollection];
  sub_100050078();
  v27 = UITraitCollection.subscript.getter();

  v28 = 0;
  if (v27)
  {
    v28 = [objc_opt_self() effectCompositingColor:v25 withMode:24 alpha:1.0];
  }

  v29 = v90;
  [v90 setVisualEffect:v28];

  [v11 _setSeparatorConfiguration:v29];
  [v11 setHeaderTopPadding:0.0];
  v30 = objc_allocWithZone(_UICollectionViewListLayoutSection);
  v89 = v11;
  v31 = [v30 initWithConfiguration:v11 layoutEnvironment:a2];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  v35 = v31;
  [v35 setContentInsets:{NSDirectionalEdgeInsetsZero.top, leading, bottom, trailing}];
  v36 = [v3 traitCollection];
  [v36 displayScale];
  v38 = v37;

  v39 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v40 = *&v3[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v40)
  {
    __break(1u);
    goto LABEL_52;
  }

  v41 = v40;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v42 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v43 = *(v7 + 8);
  v43(v10, v6);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (*(v42 + 16) <= a1)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v44 = *(v42 + a1 + 32);
  v45 = 1.0 / v38;

  v41 = &selRef_setPhotosHeaderMetadata_;
  if (v44 > 1)
  {
    if ((v44 - 2) >= 2)
    {
      if (v44 != 4)
      {
        v65 = [v3 traitCollection];
        UITraitCollection.subscript.getter();

        if (aBlock)
        {
          v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v66 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
        }

LABEL_44:
        sub_1002F815C(v44);
        v76 = v75;
        v77 = objc_opt_self();
        v78 = [v77 fractionalWidthDimension:1.0];
        v79 = [v77 absoluteDimension:v76];
        v3 = [objc_opt_self() sizeWithWidthDimension:v78 heightDimension:v79];

        v80 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v3 elementKind:_UICollectionViewListLayoutElementKindSectionHeader alignment:1];
        LOBYTE(aBlock) = 2;
        v81 = sub_100309CC0();
        [v80 setPinToVisibleBounds:{FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v81) & 1u | (v44 != 4)}];
        [v80 setZIndex:v44 + 0x7FFFFFFFFFFFFFF9];
        v10 = v80;
        v82 = [v35 boundarySupplementaryItems];
        sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
        v83 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        aBlock = v83;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) < *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_45:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v35 v41[57]];

LABEL_46:
          v57 = v89;
          goto LABEL_47;
        }

LABEL_50:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_45;
      }

      LOBYTE(aBlock) = 2;
      v59 = sub_100309CC0();
      if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v59))
      {
        goto LABEL_44;
      }

      v60 = objc_opt_self();
      _s22AutoPlayBackgroundViewCMa();
      static UICollectionReusableView.reuseIdentifier.getter();
      v61 = String._bridgeToObjectiveC()();

      v62 = [v60 backgroundDecorationItemWithElementKind:v61];

      [v62 setContentInsets:{4.0, 0.0, 0.0, 0.0}];
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_100EBC6C0;
      *(v63 + 32) = v62;
      sub_100009F78(0, &unk_10118AC40, NSCollectionLayoutDecorationItem_ptr);
      v64 = v62;
      v49 = Array._bridgeToObjectiveC()().super.isa;

      [v35 setDecorationItems:v49];

LABEL_43:
      goto LABEL_44;
    }

    v46 = objc_opt_self();
    v47 = [v46 fractionalWidthDimension:1.0];
    if (qword_10117F560 != -1)
    {
      swift_once();
    }

    v48 = [v46 absoluteDimension:v45 + *&qword_10118A8F0];
    v49 = [objc_opt_self() sizeWithWidthDimension:v47 heightDimension:v48];

    v50 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v49 elementKind:_UICollectionViewListLayoutElementKindSectionFooter alignment:5];
    v51 = [v35 boundarySupplementaryItems];
    sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = v52;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

LABEL_42:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v74 = Array._bridgeToObjectiveC()().super.isa;

    v41 = &selRef_setPhotosHeaderMetadata_;
    [v35 setBoundarySupplementaryItems:v74];

    goto LABEL_43;
  }

  if (v44)
  {
    goto LABEL_44;
  }

  v53 = *&v3[v39];
  if (v53)
  {
    v54 = v53;
    v55 = v86;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    LOBYTE(aBlock) = 0;
    v56 = NSDiffableDataSourceSnapshot.numberOfItems(inSection:)();
    v43(v55, v6);
    v57 = v89;
    if (!v56)
    {
LABEL_47:

      return;
    }

    v58 = [v3 traitCollection];
    UITraitCollection.subscript.getter();

    if (aBlock && aBlock != 1)
    {

      v68 = 1.0;
    }

    else
    {
      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v67)
      {
        v68 = 1.0;
      }

      else
      {
        v68 = 2.0;
      }
    }

    v69 = objc_opt_self();
    v70 = [v69 fractionalWidthDimension:1.0];
    if (qword_10117F560 != -1)
    {
      swift_once();
    }

    v71 = [v69 absoluteDimension:v45 + v68 * *&qword_10118A8F0];
    v49 = [objc_opt_self() sizeWithWidthDimension:v70 heightDimension:v71];

    v50 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v49 elementKind:_UICollectionViewListLayoutElementKindSectionFooter alignment:5];
    v72 = [v35 boundarySupplementaryItems];
    sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v73 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = v73;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    goto LABEL_42;
  }

LABEL_52:
  __break(1u);
}

void sub_1002EC380(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IndexPath();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  __chkstk_darwin();
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v49 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v48 - v8;
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  __chkstk_darwin();
  v11 = &v48 - v10;
  v12 = _s23QueueSnapshotIdentifierOMa(0);
  v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  __chkstk_darwin();
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v48 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v48 = v3;
  v18 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v54 = Strong;
  v19 = *&Strong[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v19;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((*(v55 + 48))(v11, 1, v12) == 1)
  {

    sub_1000095E8(v11, &unk_10118AAF0, &qword_100EC6458);
LABEL_5:
    sub_100009F78(0, &unk_1011A49F0, UIContextualAction_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [objc_opt_self() configurationWithActions:isa];

    return;
  }

  v22 = v16;
  sub_100309144(v11, v16, _s23QueueSnapshotIdentifierOMa);
  v23 = sub_100432DFC();
  v24 = [v23 remove];

  if (v24)
  {

LABEL_8:
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1003090DC(v22, v14, _s23QueueSnapshotIdentifierOMa);
    v26 = v50;
    v27 = v51;
    v28 = v52;
    (*(v51 + 16))(v50, v56, v52);
    v29 = (*(v55 + 80) + 24) & ~*(v55 + 80);
    v30 = (v13 + *(v27 + 80) + v29) & ~*(v27 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    sub_100309144(v14, v31 + v29, _s23QueueSnapshotIdentifierOMa);
    (*(v27 + 32))(v31 + v30, v26, v28);
    aBlock[4] = sub_10030A200;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D72A4;
    aBlock[3] = &unk_1010A5A48;
    v32 = _Block_copy(aBlock);
    v33 = objc_opt_self();

    v34 = [v33 contextualActionWithStyle:1 title:0 handler:v32];
    _Block_release(v32);

    v35 = [objc_opt_self() configurationWithWeight:5];
    v36 = String._bridgeToObjectiveC()();
    v37 = [objc_opt_self() systemImageNamed:v36 withConfiguration:v35];

    [v34 setImage:v37];
    v38 = v34;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v39 = String._bridgeToObjectiveC()();

    [v38 setAccessibilityLabel:v39];

    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100EBC6C0;
    *(v40 + 32) = v38;
    sub_100009F78(0, &unk_1011A49F0, UIContextualAction_ptr);
    v41 = v38;
    v42 = Array._bridgeToObjectiveC()().super.isa;

    [objc_opt_self() configurationWithActions:v42];

    sub_10030AD48(v22, _s23QueueSnapshotIdentifierOMa);
    return;
  }

  v43 = *&v54[v18];
  if (v43)
  {
    v44 = v43;
    v45 = IndexPath.safeSection.getter();
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
    v46 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v49 + 8))(v9, v7);
    if ((v45 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v45 < *(v46 + 16))
    {
      v47 = *(v46 + v45 + 32);

      v22 = v16;
      if (v47)
      {
        sub_10030AD48(v16, _s23QueueSnapshotIdentifierOMa);

        goto LABEL_5;
      }

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

void sub_1002ECBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v94 = a7;
  v95 = a6;
  v91 = a4;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v79[1] = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v10 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  __chkstk_darwin();
  v93 = v79 - v11;
  v90 = type metadata accessor for DispatchWorkItemFlags();
  v89 = *(v90 - 1);
  __chkstk_darwin();
  v87 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DispatchQoS();
  v86 = *(v88 - 8);
  __chkstk_darwin();
  v85 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for IndexPath();
  v83 = *(v84 - 8);
  __chkstk_darwin();
  v81 = v14;
  v82 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = v79 - v17;
  v92 = _s23QueueSnapshotIdentifierOMa(0);
  v19 = *(v92 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v22 = Strong;
  v79[0] = v10;
  v80 = a3;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1003090DC(v95, v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), _s23QueueSnapshotIdentifierOMa);
  v24 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v95 = v25;
  sub_100309144(v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, _s23QueueSnapshotIdentifierOMa);
  v26 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v27 = *&v22[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v27)
  {
    goto LABEL_27;
  }

  v28 = v22;
  v29 = v27;
  v30 = v94;
  v31 = IndexPath.safeSection.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v32 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v16 + 8))(v18, v15);
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v31 >= *(v32 + 16))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v33 = *(v32 + v31 + 32);

  if (v33 <= 1)
  {
    v39 = v28;
    if (!v33)
    {
      v40 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
      swift_beginAccess();
      v41 = *&v28[v40];
      v42 = v83;
      v43 = v82;
      v44 = v84;
      (*(v83 + 16))(v82, v30, v84);
      v45 = (*(v42 + 80) + 40) & ~*(v42 + 80);
      v46 = (v81 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = swift_allocObject();
      *(v47 + 2) = v39;
      *(v47 + 3) = sub_10030A4C8;
      *(v47 + 4) = v95;
      (*(v42 + 32))(&v47[v45], v43, v44);
      v48 = &v47[v46];
      v49 = v91;
      *v48 = v80;
      v48[1] = v49;
      v100 = sub_10030A584;
      v101 = v47;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v98 = sub_10002BC98;
      v99 = &unk_1010A5B60;
      v50 = _Block_copy(&aBlock);
      v51 = v41;
      v52 = v39;

      v53 = v85;
      static DispatchQoS.unspecified.getter();
      *v96 = _swiftEmptyArrayStorage;
      sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10010FC20(&qword_101182970, &qword_100EBD250);
      sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
      v54 = v87;
      v55 = v90;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v50);

      (*(v89 + 8))(v54, v55);
      (*(v86 + 8))(v53, v88);
LABEL_22:

      return;
    }

LABEL_21:

    goto LABEL_22;
  }

  if ((v33 - 2) >= 3)
  {
    goto LABEL_21;
  }

  v34 = *&v28[v26];
  if (!v34)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = v93;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v37 = (*(v19 + 48))(v36, 1, v92);
  v38 = v80;
  if (v37 == 1)
  {

    sub_1000095E8(v36, &unk_10118AAF0, &qword_100EC6458);
    return;
  }

  v56 = sub_100432DFC();
  sub_10030AD48(v36, _s23QueueSnapshotIdentifierOMa);
  if (!v56)
  {
    goto LABEL_21;
  }

  v57 = [v56 remove];
  if (!v57)
  {

    goto LABEL_21;
  }

  v58 = v57;
  v59 = *&v28[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
  if (v59 && [v59 isSharedListeningSession] && ((v60 = &v28[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__hasSeenSharedListeningQueueItemRemoveAlert], swift_beginAccess(), v61 = *(v60 + 2), v62 = v60[24], aBlock = *v60, v98 = v61, LOBYTE(v99) = v62, v63 = sub_10010FC20(&qword_10118AC50, &qword_100EC65A0), UserDefault.wrappedValue.getter(v63, v96), v96[0] == 2) || (v96[0] & 1) == 0))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v93 = v60;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v92 = v63;
    v64 = String._bridgeToObjectiveC()();

    v65 = String._bridgeToObjectiveC()();

    v94 = [objc_opt_self() alertControllerWithTitle:v64 message:v65 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v66 = swift_allocObject();
    v67 = v91;
    *(v66 + 16) = v80;
    *(v66 + 24) = v67;

    v68 = String._bridgeToObjectiveC()();

    v100 = sub_10026765C;
    v101 = v66;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v90 = &v98;
    v98 = sub_10027D328;
    v99 = &unk_1010A5AC0;
    v69 = _Block_copy(&aBlock);

    v70 = objc_opt_self();
    v71 = [v70 actionWithTitle:v68 style:1 handler:v69];
    _Block_release(v69);

    [v94 addAction:v71];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v72 = swift_allocObject();
    v72[2] = v28;
    v72[3] = sub_10030A4C8;
    v72[4] = v95;
    v72[5] = v58;
    v72[6] = v80;
    v72[7] = v67;
    v73 = v28;

    v74 = v58;
    v75 = String._bridgeToObjectiveC()();

    v100 = sub_10030A574;
    v101 = v72;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v98 = sub_10027D328;
    v99 = &unk_1010A5B10;
    v76 = _Block_copy(&aBlock);

    v77 = [v70 actionWithTitle:v75 style:2 handler:v76];
    _Block_release(v76);

    v78 = v94;
    [v94 addAction:v77];

    [v73 presentViewController:v78 animated:1 completion:0];
    v96[0] = 1;
    swift_beginAccess();
    UserDefault.wrappedValue.setter(v96, v92);
    swift_endAccess();
  }

  else
  {
    sub_1002EE3A4(v28, sub_10030A4C8, v95, v58, v38, v91);
  }
}

void sub_1002ED9EC(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_10118ABE0, aB_11);
  __chkstk_darwin();
  v4 = &v18[-v3];
  v5 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v18[-v7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
    if (v11)
    {
      v12 = v11;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      sub_10010FC20(&qword_10118AC10, &qword_100EC6570);
      v13 = *(_s23QueueSnapshotIdentifierOMa(0) - 8);
      v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100EBC6B0;
      sub_1003090DC(a2, v15 + v14, _s23QueueSnapshotIdentifierOMa);
      NSDiffableDataSourceSnapshot.deleteItems(_:)(v15);

      (*(v6 + 32))(v4, v8, v5);
      (*(v6 + 56))(v4, 0, 1, v5);
      v16 = &v10[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext];
      swift_beginAccess();
      updated = _s13UpdateContextVMa(0);
      sub_10006B010(v4, &v16[*(updated + 24)], &qword_10118ABE0, aB_11);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1002EDCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v13 = *(v20 - 8);
  __chkstk_darwin();
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002F4E14(256, a2, a3);
  sub_1002EDFCC();
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  aBlock[4] = sub_10030B05C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010A5BB0;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v21 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v20);
}

void sub_1002EDFCC()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__historyResponse);
  if (!v5)
  {
    return;
  }

  v6 = objc_allocWithZone(MPMutableSectionedCollection);
  v7 = v5;
  v8 = [v6 init];
  v9 = [v7 results];
  if (!v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v9 sectionAtIndex:0];

  [v8 appendSection:v11];
  swift_unknownObjectRelease();
  v12 = [v7 results];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v13 = v12;
  isa = [v12 itemsInSectionAtIndex:0];

  if (!isa)
  {
    sub_100009F78(0, qword_101186D10, MPModelPlaylistEntry_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v8 appendItems:isa];

  IndexPath.item.getter();
  IndexPath.init(item:section:)();
  v15 = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  [v8 removeItemAtIndexPath:v15];

  v16 = [objc_allocWithZone(MPModelLibraryPlaylistEditChangeRequest) init];
  [v16 setShouldCreatePlaylist:0];
  sub_100305FB0();
  v18 = v17;
  [v16 setPlaylist:v17];

  [v16 setPlaylistEntries:v8];
  v27 = UIScreen.Dimensions.size.getter;
  v28 = 0;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1002F982C;
  v26 = &unk_1010A5BD8;
  v19 = _Block_copy(&aBlock);
  v27 = UIScreen.Dimensions.size.getter;
  v28 = 0;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1002F982C;
  v26 = &unk_1010A5C00;
  v20 = _Block_copy(&aBlock);
  v21 = [v16 newOperationWithLocalPersistenceResponseHandler:v19 completeResponseHandler:v20];
  _Block_release(v20);
  _Block_release(v19);
  v22 = [objc_opt_self() preferredQueue];
  [v22 addOperation:v21];
}

double sub_1002EE3A4(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v14 = *(v27 - 8);
  __chkstk_darwin();
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
  swift_beginAccess();
  v18 = *&a1[v17];
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = v26;
  v19[7] = a6;
  aBlock[4] = sub_10030A66C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010A5C50;
  v20 = _Block_copy(aBlock);
  v21 = v18;
  v22 = a1;

  v23 = a4;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v28 + 8))(v13, v11);
  (*(v14 + 8))(v16, v27);

  return result;
}

uint64_t sub_1002EE6CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v13 = *(v27 - 8);
  __chkstk_darwin();
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v17 = &v25 - v16;
  sub_1002F4E14(257, a2, a3);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a4;
  v20 = a4;
  sub_10086E658(0, 0, v17, &unk_100EC65B0, v19);

  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v26;
  *(v22 + 24) = a6;
  aBlock[4] = sub_10026765C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010A5CC8;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v28 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v27);
}

uint64_t sub_1002EEACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a1;
  *(v4 + 104) = a4;
  return _swift_task_switch(sub_1002EEAEC, 0, 0);
}

uint64_t sub_1002EEAEC()
{
  *(v0 + 112) = type metadata accessor for MainActor();
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002EEB84, v2, v1);
}

uint64_t sub_1002EEB84()
{

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1002EEC1C, 0, 0);
}

uint64_t sub_1002EEC1C(uint64_t a1)
{
  *(v1 + 128) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002EECA8, v3, v2);
}

uint64_t sub_1002EECA8()
{

  *(v0 + 136) = qword_101218AD8;

  return _swift_task_switch(sub_1002EED1C, 0, 0);
}

uint64_t sub_1002EED1C()
{
  v1 = *(v0 + 104);
  v2 = sub_100009F78(0, &qword_10118AC38, MPCPlayerCommandRequest_ptr);
  *(v0 + 16) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = &protocol witness table for MPCPlayerCommandRequest;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_1002EEE20;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1002EEE20(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_1002EEF88;
  }

  else
  {
    *(v4 + 160) = a1;
    sub_1000095E8(v4 + 56, &unk_101183910, &unk_100EBDD00);
    sub_10000959C((v4 + 16));
    v5 = sub_1002EEF64;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002EEF88()
{
  sub_1000095E8(v0 + 56, &unk_101183910, &unk_100EBDD00);
  sub_10000959C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

id sub_1002EF004(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = v7(v6);

  (*(v4 + 8))(v6, v3);

  return v8;
}

void sub_1002EF110(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_10117F860 != -1)
    {
      swift_once();
    }

    if (qword_10117F850 != -1)
    {
      swift_once();
    }

    v4 = IndexPath.item.getter();
    v5 = sub_1002DCC7C();
    v6 = [v5 numberOfItemsInSection:IndexPath.section.getter()];

    if (__OFSUB__(v6, 1))
    {
      __break(1u);
    }

    else
    {
      if (v4 != v6 - 1)
      {
        v17 = v3;
        v18 = [v17 view];
        if (v18)
        {
          v19 = v18;
          [v18 directionalLayoutMargins];

          v20 = [v17 view];
          if (v20)
          {
            [v20 directionalLayoutMargins];

            return;
          }

          goto LABEL_17;
        }

LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      v7 = [v3 view];
      if (v7)
      {
        v8 = v7;
        [v7 frame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        v21.origin.x = v10;
        v21.origin.y = v12;
        v21.size.width = v14;
        v21.size.height = v16;
        CGRectGetWidth(v21);

        return;
      }
    }

    __break(1u);
    goto LABEL_16;
  }
}

double sub_1002EF354(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = v7(v6);

  (*(v4 + 8))(v6, v3);
  return v8;
}

void sub_1002EF478()
{
  v1 = v0;
  sub_1002DCC7C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(_s10DataSourceCMa(0));
  v3 = &v2[qword_10118F958];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v2[qword_10118F960];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = v5;

  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v6[qword_10118F958];
  v9 = *&v6[qword_10118F958];
  v10 = *&v6[qword_10118F958 + 8];
  *v8 = sub_10030A12C;
  v8[1] = v7;

  sub_100020438(v9, v10);

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = &v6[qword_10118F960];
  v13 = *&v6[qword_10118F960];
  v14 = *&v6[qword_10118F960 + 8];
  *v12 = sub_10030A134;
  v12[1] = v11;

  sub_100020438(v13, v14);

  v15 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource) = v6;
}

char *sub_1002EF670(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v83 = a1;
  sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  __chkstk_darwin();
  v82 = &v81 - v6;
  sub_10010FC20(&qword_1011888C0, &qword_100EC2FA0);
  __chkstk_darwin();
  v8 = &v81 - v7;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  _s23QueueSnapshotIdentifierOMa(0);
  __chkstk_darwin();
  v10 = (&v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    while (1)
    {
LABEL_25:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_26:
      v84 = 0;
      v85 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      v80._object = 0x8000000100E45E60;
      v80._countAndFlagsBits = 0xD000000000000020;
      String.append(_:)(v80);
      _print_unlocked<A, B>(_:_:)();
    }
  }

  v12 = Strong;
  sub_1003090DC(a3, v10, _s23QueueSnapshotIdentifierOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v33 = *v10;
      v34 = type metadata accessor for NowPlayingQueueRepeatCell();
      v35 = static UICollectionReusableView.reuseIdentifier.getter();
      v37 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v34, a2, v35, v36, v34);

      v19 = v37;
      v38 = [v12 view];
      if (!v38)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v39 = v38;
      [v38 directionalLayoutMargins];

      [v19 directionalLayoutMargins];
      [v19 setDirectionalLayoutMargins:?];

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v40._countAndFlagsBits = 0x6E69746165706552;
      v40._object = 0xEA00000000002067;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v40);
      v84 = v33;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v41._countAndFlagsBits = 0x73676E6F5320;
      v41._object = 0xE600000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v41);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      v42 = String.init(localized:table:bundle:locale:comment:)();
      v43 = &v19[OBJC_IVAR____TtC5Music25NowPlayingQueueRepeatCell_text];
      *v43 = v42;
      v43[1] = v44;

      sub_100294FA4();
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v14 = *v10;
        v15 = type metadata accessor for NowPlayingQueueRemainingSongsCell();
        v16 = static UICollectionReusableView.reuseIdentifier.getter();
        v18 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v15, a2, v16, v17, v15);

        v19 = v18;
        v20 = [v12 view];
        if (v20)
        {
          v21 = v20;
          [v20 directionalLayoutMargins];

          [v19 directionalLayoutMargins];
          [v19 setDirectionalLayoutMargins:?];

          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v22._countAndFlagsBits = 0;
          v22._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
          v84 = v14;
          String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
          v23._countAndFlagsBits = 0x6F532065726F4D20;
          v23._object = 0xEB0000000073676ELL;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
          String.LocalizationValue.init(stringInterpolation:)();
          static Locale.current.getter();
          v24 = String.init(localized:table:bundle:locale:comment:)();
          v25 = &v19[OBJC_IVAR____TtC5Music33NowPlayingQueueRemainingSongsCell_text];
          *v25 = v24;
          v25[1] = v26;

          v27 = *&v19[OBJC_IVAR____TtC5Music33NowPlayingQueueRemainingSongsCell_label];

          v28 = v27;
          v29 = String._bridgeToObjectiveC()();

          [v28 setText:v29];

          return v19;
        }

        goto LABEL_22;
      }

      v45 = type metadata accessor for NowPlayingQueueAddCell();
      v46 = static UICollectionReusableView.reuseIdentifier.getter();
      v48 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v45, a2, v46, v47, v45);

      v49 = v48;
      v50 = [v12 view];
      if (!v50)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v51 = v50;
      [v50 directionalLayoutMargins];

      [v49 directionalLayoutMargins];
      [v49 setDirectionalLayoutMargins:?];

      v19 = v49;
      UICollectionViewCell.configurationUpdateHandler.setter();
    }

    return v19;
  }

  if (!EnumCaseMultiPayload)
  {
    v30 = sub_1004329EC();
    if (v30)
    {
      v31 = v30;
      sub_1002F6544(a2, v30);
      v19 = v32;
    }

    else
    {
      v56 = type metadata accessor for NowPlayingQueueCell(0);
      v57 = static UICollectionReusableView.reuseIdentifier.getter();
      v59 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v56, a2, v57, v58, v56);

      v60 = v59;
      v61 = [v12 view];
      if (!v61)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v62 = v61;
      [v61 layoutMargins];
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;

      [v60 setLayoutMargins:{v64, v66, v68, v70}];
      v60[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isDisabled] = 1;
      v71 = *&v60[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView];
      UIInterfaceGetContentDisabledAlpha();
      [v71 setAlpha:?];

      v19 = v60;
      static UIBackgroundConfiguration.clear()();
      v72 = type metadata accessor for UIBackgroundConfiguration();
      (*(*(v72 - 8) + 56))(v8, 0, 1, v72);
      UICollectionViewCell.backgroundConfiguration.setter();
      *&v19[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_title] = xmmword_100EC61F0;

      sub_100553944();
      v73 = v82;
      AttributedString.init(stringLiteral:)();
      v74 = type metadata accessor for AttributedString();
      (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
      v75 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitle;
      swift_beginAccess();
      sub_100309BE4(v73, &v19[v75]);
      swift_endAccess();
      v76 = [v19 traitCollection];
      v77 = [v76 preferredContentSizeCategory];

      LOBYTE(v76) = UIContentSizeCategory.isAccessibilityCategory.getter();
      sub_100555BBC(v76 & 1);
      sub_1000095E8(v73, &qword_101180C90, &unk_100EBC730);
      v78 = *&v19[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artwork];
      *&v19[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artwork] = 0;

      sub_100553DD0();
    }

    sub_1000095E8(v10, &qword_10118AB00, &qword_100EC6460);
    return v19;
  }

  v52 = sub_1004329EC();
  if (!v52)
  {
    goto LABEL_26;
  }

  v53 = v52;
  sub_1002F6544(a2, v52);
  v19 = v54;

  v55 = type metadata accessor for IndexPath();
  (*(*(v55 - 8) + 8))(v10, v55);
  return v19;
}

uint64_t sub_1002F0150()
{
  sub_10010FC20(&qword_1011888C0, &qword_100EC2FA0);
  __chkstk_darwin();
  v1 = &v9 - v0;
  v2 = type metadata accessor for UIBackgroundConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIBackgroundConfiguration.clear()();
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isExpanded.getter())
  {
    v6 = [objc_opt_self() whiteColor];
    v7 = [v6 colorWithAlphaComponent:0.05];

    UIBackgroundConfiguration.backgroundColor.setter();
  }

  (*(v3 + 16))(v1, v5, v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  UICollectionViewCell.backgroundConfiguration.setter();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1002F0338(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v10 = Strong;
  sub_1002F6DA8(a2, a3, a4, a1);
  v12 = v11;

  return v12;
}

id sub_1002F03D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  __chkstk_darwin();
  v4 = &v28 - v3;
  v31 = _s23QueueSnapshotIdentifierOMa(0);
  v5 = *(v31 - 8);
  __chkstk_darwin();
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v30 = &v28 - v7;
  v8 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - v10;
  v12 = IndexPath.section.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v13 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  result = (*(v9 + 8))(v11, v8);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v12 >= *(v13 + 16))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v15 = *(v13 + v12 + 32);

  if (v15)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v16 = result;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
    if ((*(v5 + 48))(v4, 1, v31) == 1)
    {

      sub_1000095E8(v4, &unk_10118AAF0, &qword_100EC6458);
    }

    else
    {
      v17 = v30;
      sub_100309144(v4, v30, _s23QueueSnapshotIdentifierOMa);
      v18 = sub_100432DFC();
      if (v18)
      {
        v19 = v18;
        v20 = v29;
        sub_1003090DC(v17, v29, _s23QueueSnapshotIdentifierOMa);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v21 = *(v20 + *(sub_10010FC20(&qword_10118AB08, &qword_100ECC420) + 48));
          v22 = type metadata accessor for IndexPath();
          (*(*(v22 - 8) + 8))(v20, v22);
          v23 = sub_1002DCC7C();
          IndexPath.section.getter();
          v24 = dispatch thunk of UICollectionViewDiffableDataSource.collectionView(_:numberOfItemsInSection:)();

          if (v24 >= 2)
          {
            v25 = [v21 tracklist];
            v26 = [v25 reorderCommand];

            if (v26)
            {
              v27 = [v26 canMoveItem:v19];
              swift_unknownObjectRelease();

              sub_10030AD48(v17, _s23QueueSnapshotIdentifierOMa);
              return v27;
            }
          }

          sub_10030AD48(v17, _s23QueueSnapshotIdentifierOMa);
        }

        else
        {
          sub_10030AD48(v17, _s23QueueSnapshotIdentifierOMa);

          sub_10030AD48(v20, _s23QueueSnapshotIdentifierOMa);
        }
      }

      else
      {
        sub_10030AD48(v17, _s23QueueSnapshotIdentifierOMa);
      }
    }
  }

  return 0;
}

void sub_1002F0888(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v66 = a4;
  v70 = a3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v67 = &v61 - v6;
  v7 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v68 = &v61 - v9;
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  __chkstk_darwin();
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v61 - v12;
  v14 = _s23QueueSnapshotIdentifierOMa(0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v69 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v61 - v17;
  __chkstk_darwin();
  v72 = &v61 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v71 = Strong;
  v64 = v8;
  v65 = v7;
  v63 = a2;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
  v21 = *(v15 + 48);
  if (v21(v13, 1, v14) == 1)
  {

    sub_1000095E8(v13, &unk_10118AAF0, &qword_100EC6458);
    goto LABEL_11;
  }

  v22 = v13;
  v23 = v72;
  sub_100309144(v22, v72, _s23QueueSnapshotIdentifierOMa);
  sub_1003090DC(v23, v18, _s23QueueSnapshotIdentifierOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10030AD48(v23, _s23QueueSnapshotIdentifierOMa);

    v28 = v18;
LABEL_9:
    sub_10030AD48(v28, _s23QueueSnapshotIdentifierOMa);
    goto LABEL_11;
  }

  v24 = *&v18[*(sub_10010FC20(&qword_10118AB08, &qword_100ECC420) + 48)];
  v25 = type metadata accessor for IndexPath();
  (*(*(v25 - 8) + 8))(v18, v25);
  v26 = sub_100432DFC();
  if (v26)
  {
    v62 = v26;
    v27 = v24;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
    if (v21(v11, 1, v14) == 1)
    {
      sub_10030AD48(v23, _s23QueueSnapshotIdentifierOMa);

      sub_1000095E8(v11, &unk_10118AAF0, &qword_100EC6458);
      goto LABEL_11;
    }

    v32 = v69;
    sub_100309144(v11, v69, _s23QueueSnapshotIdentifierOMa);
    v33 = sub_100432DFC();
    if (v33)
    {
      v34 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
      v35 = *&v71[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
      if (v35)
      {
        v36 = v33;
        v37 = v35;
        v38 = v68;
        dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

        v39 = IndexPath.item.getter();
        v40 = IndexPath.item.getter();
        v41 = [v27 tracklist];
        v42 = [v41 reorderCommand];

        v43 = v40 < v39;
        v44 = v64;
        v45 = v65;
        if (v43)
        {
          if (v42)
          {
            v46 = [v42 moveItem:v62 beforeItem:v36];
            swift_unknownObjectRelease();
          }

          else
          {
            v46 = 0;
          }

          v47 = v46;
          NSDiffableDataSourceSnapshot.moveItem(_:beforeItem:)();
        }

        else
        {
          if (v42)
          {
            v46 = [v42 moveItem:v62 afterItem:v36];
            swift_unknownObjectRelease();
          }

          else
          {
            v46 = 0;
          }

          v48 = v46;
          NSDiffableDataSourceSnapshot.moveItem(_:afterItem:)();
        }

        if (!v46)
        {
          swift_beginAccess();
          v52 = swift_unknownObjectWeakLoadStrong();
          if (v52)
          {
            v53 = v52;
            v54 = sub_1002DCC7C();

            [v54 reloadData];
          }

          else
          {
          }

          (*(v44 + 8))(v38, v45);
          sub_10030AD48(v32, _s23QueueSnapshotIdentifierOMa);
          v60 = v72;
          goto LABEL_38;
        }

        v49 = *&v71[v34];
        if ((v66 & 1) == 0)
        {
          v50 = v72;
          if (v49)
          {
            v51 = v49;
            dispatch thunk of UICollectionViewDiffableDataSource.applySnapshotUsingReloadData(_:completion:)();
            goto LABEL_35;
          }

LABEL_41:
          __break(1u);
          return;
        }

        v50 = v72;
        if (v49)
        {
          v51 = v49;
          dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
LABEL_35:

          v55 = type metadata accessor for TaskPriority();
          v56 = v67;
          (*(*(v55 - 8) + 56))(v67, 1, 1, v55);
          type metadata accessor for MainActor();
          v57 = v46;
          v58 = static MainActor.shared.getter();
          v59 = swift_allocObject();
          v59[2] = v58;
          v59[3] = &protocol witness table for MainActor;
          v59[4] = v57;
          sub_10086E658(0, 0, v56, &unk_100EC6598, v59);

          (*(v44 + 8))(v38, v45);
          sub_10030AD48(v32, _s23QueueSnapshotIdentifierOMa);
          v60 = v50;
LABEL_38:
          sub_10030AD48(v60, _s23QueueSnapshotIdentifierOMa);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_41;
    }

    sub_10030AD48(v32, _s23QueueSnapshotIdentifierOMa);
    v28 = v23;
    goto LABEL_9;
  }

  sub_10030AD48(v23, _s23QueueSnapshotIdentifierOMa);

LABEL_11:
  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    v31 = sub_1002DCC7C();

    [v31 reloadData];
  }
}

uint64_t sub_1002F1118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a1;
  v4[13] = a4;
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v6;
  v4[16] = v5;

  return _swift_task_switch(sub_1002F11B0, v6, v5);
}

uint64_t sub_1002F11B0()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_100009F78(0, &qword_10118AC38, MPCPlayerCommandRequest_ptr);
  *(v0 + 16) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = &protocol witness table for MPCPlayerCommandRequest;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1002F12F0;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1002F12F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_10030B040;
  }

  else
  {
    v4[19] = a1;
    sub_1000095E8((v4 + 7), &unk_101183910, &unk_100EBDD00);
    sub_10000959C(v4 + 2);
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_10030B058;
  }

  return _swift_task_switch(v7, v5, v6);
}

void sub_1002F1434(unint64_t a1@<X8>)
{
  v189 = type metadata accessor for IndexPath();
  v186 = *(v189 - 8);
  __chkstk_darwin();
  v187 = &v176 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v2;
  __chkstk_darwin();
  v188 = &v176 - v3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = &v176 - v4;
  v197 = type metadata accessor for DispatchTime();
  v6 = *(v197 - 8);
  __chkstk_darwin();
  v196 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  __chkstk_darwin();
  v9 = (&v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v195 = (&v176 - v10);
  v11 = _s23QueueSnapshotIdentifierOMa(0);
  v207 = *(v11 - 8);
  __chkstk_darwin();
  v191 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v190 = &v176 - v13;
  __chkstk_darwin();
  v206 = &v176 - v14;
  __chkstk_darwin();
  v16 = &v176 - v15;
  __chkstk_darwin();
  v194 = &v176 - v17;
  __chkstk_darwin();
  v193 = &v176 - v18;
  v184 = v19;
  __chkstk_darwin();
  v203 = &v176 - v20;
  v217 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v201 = *(v217 - 8);
  __chkstk_darwin();
  v22 = &v176 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v176 - v23;
  sub_100309E04();
  v25 = sub_100309644(&unk_10118AC00, _s23QueueSnapshotIdentifierOMa, &unk_100ECC3D8);
  v216 = v24;
  v209 = v11;
  v202 = v25;
  NSDiffableDataSourceSnapshot.init()();
  if (qword_10117F5F8 != -1)
  {
LABEL_99:
    swift_once();
  }

  v26 = (*(*qword_101218AC8 + 360))();
  v27 = [v26 route];

  v198 = v16;
  if (v27 && (v28 = [v27 isDeviceRoute], v27, v28) && (v29 = *&v215[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__historyResponse]) != 0)
  {
    v30 = v29;
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109A260);
    v234 = _swiftEmptyArrayStorage;
    v31 = [v30 results];
    if (!v31)
    {
      goto LABEL_128;
    }

    v32 = v31;
    v33 = swift_allocObject();
    *(v33 + 16) = v30;
    *(v33 + 24) = &v234;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_10030A0EC;
    *(v34 + 24) = v33;
    v200 = v33;
    v231 = sub_10030A0F4;
    v232 = v34;
    aBlock = _NSConcreteStackBlock;
    v228 = 1107296256;
    v229 = sub_1002DCBA0;
    v230 = &unk_1010A5980;
    v35 = _Block_copy(&aBlock);
    v36 = v30;

    [v32 enumerateItemIdentifiersInSectionAtIndex:0 usingBlock:v35];

    _Block_release(v35);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if (v32)
    {
      __break(1u);
      goto LABEL_126;
    }

    v16 = v234;
    LOBYTE(aBlock) = 0;

    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v199 = sub_10030A0EC;
  }

  else
  {
    v199 = 0;
    v200 = 0;
  }

  v37 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_wantsPlayingItemHeader;
  if (v215[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_wantsPlayingItemHeader] == 1)
  {
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109A288);
  }

  LOBYTE(aBlock) = 2;
  v208 = sub_100309CC0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v208))
  {
    if ((v215[v37] & 1) != 0 || (v38 = [objc_opt_self() currentTraitCollection], v39 = objc_msgSend(v38, "userInterfaceIdiom"), v38, v39 == 6))
    {
      NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109A2B0);
    }
  }

  v40 = *&v215[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
  if (!v40)
  {
    v138 = 0;
    v134 = 0;
    v135 = v217;
    v136 = v201;
    v139 = v216;
LABEL_114:
    v158 = v200;
    v159 = v199;
    (*(v136 + 32))(a1, v139, v135);
    sub_100020438(v159, v158);
    sub_100020438(v138, v134);
    return;
  }

  v237 = 0;
  v236 = 0;
  v235 = 0;
  v221 = v40;
  v41 = [v221 tracklist];
  v42 = [v41 displayItems];

  v43 = [v42 allSections];
  sub_100009F78(0, &qword_10118D430, NSString_ptr);
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v192 = v5;
  if (v44 >> 62)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
    if (v45)
    {
      goto LABEL_18;
    }

LABEL_101:

    v214 = 0;
    v140 = v192;
    goto LABEL_102;
  }

  v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v45)
  {
    goto LABEL_101;
  }

LABEL_18:
  v179 = v22;
  v178 = a1;
  v225 = MPCPlayerResponseTracklistDisplaySectionNextItems;
  v226 = (v44 & 0xC000000000000001);
  swift_beginAccess();
  v214 = 0;
  v211 = 0;
  a1 = 0;
  v46 = 0;
  v212 = v44 & 0xFFFFFFFFFFFFFF8;
  v222 = MPCPlayerResponseTracklistDisplaySectionUpNextItems;
  v205 = &v229;
  v180 = (v207 + 48);
  v220 = MPCPlayerResponseTracklistDisplaySectionAutoPlayItems;
  v219 = MPCPlayerResponseTracklistDisplaySectionPreviousItems;
  v183 = "rResponseItem8q16^B24";
  v182 = (v6 + 8);
  v181 = MSVAutoBugCaptureDomainMediaRemote;
  *(&v47 + 1) = 2;
  v204 = xmmword_100EBC6B0;
  *&v47 = 138412290;
  v177 = v47;
  *&v47 = 136315138;
  v176 = v47;
  v218 = v9;
  v224 = v44;
  v223 = v45;
  do
  {
    while (1)
    {
      if (v226)
      {
        v48 = sub_1007E9374(v46, v44);
      }

      else
      {
        if (v46 >= *(v212 + 16))
        {
          goto LABEL_95;
        }

        v48 = *(v44 + 8 * v46 + 32);
      }

      v49 = v48;
      v9 = (v46 + 1);
      if (__OFADD__(v46, 1))
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v49;
      v50 = String._bridgeToObjectiveC()();

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
      if (v51 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v53 == v54)
      {

        v73 = 3;
        goto LABEL_55;
      }

      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v55)
      {

        v73 = 3;
        goto LABEL_55;
      }

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;
      if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v59)
      {

        v73 = 2;
        goto LABEL_55;
      }

      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v60)
      {

        v73 = 2;
        goto LABEL_55;
      }

      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v62;
      if (v61 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v63)
      {

        goto LABEL_50;
      }

      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        break;
      }

LABEL_50:
      v74 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      v75 = sub_1005192B8(3u, v74);

      if (v75)
      {
        v73 = 4;
      }

      else
      {
        v76 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
        v77 = sub_1005192B8(2u, v76);

        if (v77)
        {
          v73 = 4;
        }

        else
        {
          v73 = 3;
        }
      }

LABEL_55:
      sub_10010FC20(&unk_10118AC18, &unk_100EC6578);
      v78 = swift_allocObject();
      *(v78 + 16) = v204;
      v213 = v73;
      *(v78 + 32) = v73;
      NSDiffableDataSourceSnapshot.appendSections(_:)(v78);

      v233 = _swiftEmptyArrayStorage;
      v79 = v221;
      v80 = [v221 tracklist];
      v81 = [v80 displayItems];

      v22 = v235;
      v6 = swift_allocObject();
      *(v6 + 16) = &v235;
      *(v6 + 24) = v79;
      *(v6 + 32) = &v233;
      *(v6 + 40) = &v237;
      v210 = v79;
      sub_100020438(v214, v211);
      a1 = swift_allocObject();
      *(a1 + 16) = sub_10030A094;
      *(a1 + 24) = v6;
      v231 = sub_10030A0A0;
      v232 = a1;
      aBlock = _NSConcreteStackBlock;
      v228 = 1107296256;
      v229 = sub_1002F4338;
      v230 = &unk_1010A58B8;
      v5 = _Block_copy(&aBlock);

      [v81 enumerateItemsInSectionAtIndex:v22 usingBlock:v5];

      _Block_release(v5);
      LOBYTE(v81) = swift_isEscapingClosureAtFileLocation();

      if (v81)
      {
        goto LABEL_96;
      }

      LOBYTE(aBlock) = 2;
      v82 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v208);
      v5 = v206;
      if (v82)
      {
        if (v213 == 2)
        {
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          v83 = v233;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v233 = v83;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v83 = sub_100499770(0, v83[2] + 1, 1, v83);
            v233 = v83;
          }

          v86 = v83[2];
          v85 = v83[3];
          a1 = v86 + 1;
          v87 = v207;
          if (v86 >= v85 >> 1)
          {
            v132 = sub_100499770((v85 > 1), v86 + 1, 1, v83);
            v87 = v207;
            v83 = v132;
          }

          v83[2] = a1;
          sub_100309144(v203, v83 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v86, _s23QueueSnapshotIdentifierOMa);
          v233 = v83;
          swift_endAccess();
        }

        v88 = v235 + 1;
        if (__OFADD__(v235, 1))
        {
          goto LABEL_98;
        }

        v89 = [v210 tracklist];
        v90 = [v89 displayItems];

        v91 = [v90 numberOfSections];
        if (v88 == v91)
        {
          v92 = v195;
          sub_1002F3850(v210, &v237, v215, &v236, v195);
          if ((*v180)(v92, 1, v209) == 1)
          {
            sub_1000095E8(v92, &unk_10118AAF0, &qword_100EC6458);
          }

          else
          {
            v93 = v6;
            v94 = v193;
            sub_100309144(v92, v193, _s23QueueSnapshotIdentifierOMa);
            sub_1003090DC(v94, v194, _s23QueueSnapshotIdentifierOMa);
            swift_beginAccess();
            v95 = v233;
            v96 = swift_isUniquelyReferenced_nonNull_native();
            v233 = v95;
            if ((v96 & 1) == 0)
            {
              v95 = sub_100499770(0, v95[2] + 1, 1, v95);
              v233 = v95;
            }

            v98 = v95[2];
            v97 = v95[3];
            a1 = v98 + 1;
            v99 = v207;
            v6 = v93;
            if (v98 >= v97 >> 1)
            {
              v133 = sub_100499770((v97 > 1), v98 + 1, 1, v95);
              v99 = v207;
              v95 = v133;
            }

            v95[2] = a1;
            sub_100309144(v194, v95 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v98, _s23QueueSnapshotIdentifierOMa);
            v233 = v95;
            swift_endAccess();
            sub_10030AD48(v193, _s23QueueSnapshotIdentifierOMa);
          }
        }
      }

      if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1)
      {
        swift_beginAccess();
        a1 = v233;

        v100 = Set.init(minimumCapacity:)();
        aBlock = v100;
        v101 = *(a1 + 16);
        if (v101)
        {
          v214 = v6;
          v22 = (a1 + ((*(v207 + 80) + 32) & ~*(v207 + 80)));
          v102 = *(v207 + 72);
          v103 = v198;
          do
          {
            sub_1003090DC(v22, v103, _s23QueueSnapshotIdentifierOMa);
            sub_1003B40A4(v5, v103);
            sub_10030AD48(v5, _s23QueueSnapshotIdentifierOMa);
            v22 += v102;
            --v101;
          }

          while (v101);

          v104 = aBlock;
          v6 = v214;
        }

        else
        {
          v105 = v100;

          v104 = v105;
        }

        v106 = v104[2];

        if (v106 != v233[2])
        {
          if (qword_10117F938 != -1)
          {
            swift_once();
          }

          v107 = type metadata accessor for Logger();
          sub_1000060E4(v107, qword_1012190C8);
          v108 = v16;
          v109 = Logger.logObject.getter();
          v110 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            *v111 = v177;
            *(v111 + 4) = v108;
            *v112 = v49;
            v113 = v108;
            _os_log_impl(&_mh_execute_header, v109, v110, "[NowPlayingQueueViewController] Found duplicates in section %@, we're about to crash 😭", v111, 0xCu);
            sub_1000095E8(v112, &unk_101183D70, &unk_100EC6540);
          }

          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            v117 = swift_slowAlloc();
            aBlock = v117;
            *v116 = v176;

            v118 = Array.description.getter();
            v120 = v119;

            v121 = sub_1000105AC(v118, v120, &aBlock);

            *(v116 + 4) = v121;
            _os_log_impl(&_mh_execute_header, v114, v115, "[NowPlayingQueueViewController] Items: %s", v116, 0xCu);
            sub_10000959C(v117);
          }

          v122 = dispatch_semaphore_create(0);
          v214 = objc_opt_self();
          v123 = String._bridgeToObjectiveC()();
          v124 = String._bridgeToObjectiveC()();
          a1 = String._bridgeToObjectiveC()();
          sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
          v125 = swift_allocObject();
          *(v125 + 16) = v204;
          v126 = [v210 tracklist];
          v127 = [v126 displayItems];

          *(v125 + 56) = sub_10010FC20(&qword_10118AC28, &qword_100EC6588);
          *(v125 + 32) = v127;
          isa = Array._bridgeToObjectiveC()().super.isa;

          v129 = swift_allocObject();
          *(v129 + 16) = v122;
          v231 = sub_10030A0C8;
          v232 = v129;
          aBlock = _NSConcreteStackBlock;
          v228 = 1107296256;
          v229 = sub_10002BC98;
          v230 = &unk_1010A5908;
          v130 = _Block_copy(&aBlock);
          v5 = v232;
          v22 = v122;

          [v214 snapshotWithDomain:v181 type:v123 subType:v124 context:a1 triggerThresholdValues:0 events:isa completion:v130];
          _Block_release(v130);

          v131 = v196;
          static DispatchTime.distantFuture.getter();
          OS_dispatch_semaphore.wait(timeout:)();

          (*v182)(v131, v197);
        }
      }

      swift_beginAccess();
      LOBYTE(aBlock) = v213;

      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      if (__OFADD__(v235, 1))
      {
        goto LABEL_97;
      }

      ++v235;
      a1 = 1;
      v214 = sub_10030A094;
      v211 = v6;
      v46 = v9;
      v44 = v224;
      if (v9 == v223)
      {

        v137 = 1;
        v138 = sub_10030A094;
        v45 = v6;
        a1 = v178;
        v139 = v216;
        v140 = v192;
        v22 = v179;
        goto LABEL_106;
      }
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();

    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;
    if (v64 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v66 == v67)
    {

      v68 = v223;
    }

    else
    {
      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v68 = v223;
      if ((v69 & 1) == 0)
      {

        goto LABEL_40;
      }
    }

    v70 = [v221 tracklist];
    v71 = [v70 displayItems];

    v6 = [v71 numberOfItemsInSection:v235];
    if (v6 >= 1)
    {
      v236 = 1;
    }

LABEL_40:
    v44 = v224;
    if (__OFADD__(v235, 1))
    {
      goto LABEL_94;
    }

    ++v235;
    ++v46;
    v72 = v9 == v68;
    v9 = v218;
  }

  while (!v72);

  v140 = v192;
  v22 = v179;
  if (a1)
  {
    v137 = 1;
    a1 = v178;
    v139 = v216;
    v138 = v214;
    v45 = v211;
    goto LABEL_106;
  }

  a1 = v178;
  v45 = v211;
LABEL_102:
  v141 = v216;
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109A2D8);
  sub_1002F3850(v221, &v237, v215, &v236, v9);
  v142 = v207;
  if ((*(v207 + 48))(v9, 1, v209) == 1)
  {
    sub_1000095E8(v9, &unk_10118AAF0, &qword_100EC6458);
    v137 = 0;
  }

  else
  {
    v143 = v190;
    sub_100309144(v9, v190, _s23QueueSnapshotIdentifierOMa);
    sub_10010FC20(&qword_10118AC10, &qword_100EC6570);
    v144 = (*(v142 + 80) + 32) & ~*(v142 + 80);
    v145 = swift_allocObject();
    *(v145 + 16) = xmmword_100EBC6B0;
    sub_1003090DC(v143, v145 + v144, _s23QueueSnapshotIdentifierOMa);
    LOBYTE(aBlock) = 6;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    sub_10030AD48(v143, _s23QueueSnapshotIdentifierOMa);
    v137 = 1;
  }

  v139 = v141;
  v138 = v214;
LABEL_106:
  LOBYTE(aBlock) = 2;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v208))
  {
    v146 = type metadata accessor for TaskPriority();
    (*(*(v146 - 8) + 56))(v140, 1, 1, v146);
    type metadata accessor for MainActor();
    v147 = v221;
    v148 = v215;
    v149 = static MainActor.shared.getter();
    v150 = swift_allocObject();
    *(v150 + 16) = v149;
    *(v150 + 24) = &protocol witness table for MainActor;
    *(v150 + 32) = v147;
    *(v150 + 40) = v148;
    v139 = v216;
    *(v150 + 48) = v137;
    sub_1001F4CB8(0, 0, v140, &unk_100EC6568, v150);
  }

  v151 = *&v215[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v151)
  {
    goto LABEL_127;
  }

  v152 = v45;
  v153 = v151;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  LOBYTE(aBlock) = 3;
  v154 = v217;
  NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v155 & 1) != 0 || (LOBYTE(aBlock) = 3, v156 = NSDiffableDataSourceSnapshot.indexOfSection(_:)(), (v157))
  {
    v136 = v201;
    (*(v201 + 8))(v22, v154);

    goto LABEL_112;
  }

  v226 = v156;
  LOBYTE(aBlock) = 3;
  v160 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  v161 = *(v160 + 16);
  if (!v161)
  {
    v136 = v201;
    (*(v201 + 8))(v22, v154);

    v139 = v216;
LABEL_112:
    v134 = v152;
LABEL_113:
    v135 = v217;
    goto LABEL_114;
  }

  v162 = *(v207 + 80);
  sub_1003090DC(v160 + ((v162 + 32) & ~v162) + *(v207 + 72) * (v161 - 1), v191, _s23QueueSnapshotIdentifierOMa);

  LOBYTE(aBlock) = 3;
  v163 = NSDiffableDataSourceSnapshot.numberOfItems(inSection:)();
  LOBYTE(aBlock) = 3;
  v164 = NSDiffableDataSourceSnapshot.numberOfItems(inSection:)();
  if (!__OFSUB__(v164, 1))
  {
    v136 = v201;
    v134 = v152;
    if (((v164 - 1) & 0x8000000000000000) == 0 && (v163 == 1 || v164 == 1) && v163 != v164)
    {
      v165 = v188;
      IndexPath.init(item:section:)();
      v166 = type metadata accessor for TaskPriority();
      (*(*(v166 - 8) + 56))(v140, 1, 1, v166);
      v179 = v22;
      v214 = v138;
      v167 = v186;
      (*(v186 + 16))(v187, v165, v189);
      sub_1003090DC(v191, v206, _s23QueueSnapshotIdentifierOMa);
      type metadata accessor for MainActor();
      v226 = v215;
      v168 = static MainActor.shared.getter();
      v169 = (*(v167 + 80) + 40) & ~*(v167 + 80);
      v170 = a1;
      v171 = (v185 + v169 + 7) & 0xFFFFFFFFFFFFFFF8;
      v172 = (v162 + v171 + 8) & ~v162;
      v173 = swift_allocObject();
      v173[2] = v168;
      v173[3] = &protocol witness table for MainActor;
      v136 = v201;
      v173[4] = v226;
      v174 = v173 + v169;
      v134 = v152;
      v175 = v189;
      (*(v167 + 32))(v174, v187, v189);
      *(v173 + v171) = v163;
      a1 = v170;
      sub_100309144(v206, v173 + v172, _s23QueueSnapshotIdentifierOMa);
      sub_1001F4CB8(0, 0, v192, &unk_100EC6558, v173);

      (*(v167 + 8))(v188, v175);
      v138 = v214;
      sub_10030AD48(v191, _s23QueueSnapshotIdentifierOMa);
      (*(v136 + 8))(v179, v217);
    }

    else
    {

      sub_10030AD48(v191, _s23QueueSnapshotIdentifierOMa);
      (*(v136 + 8))(v22, v217);
    }

    v139 = v216;
    goto LABEL_113;
  }

LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

id sub_1002F35EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v7 = *(_s23QueueSnapshotIdentifierOMa(0) - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v18 - v10;
  IndexPath.init(item:section:)();
  result = [a4 results];
  if (result)
  {
    sub_10010FC20(&qword_10118AB10, L"F\v!");
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_10118AB00, &qword_100EC6460);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1003090DC(v11, v9, _s23QueueSnapshotIdentifierOMa);
    v13 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_100499770(0, v13[2] + 1, 1, v13);
      *a5 = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      *a5 = sub_100499770((v15 > 1), v16 + 1, 1, v13);
    }

    sub_10030AD48(v11, _s23QueueSnapshotIdentifierOMa);
    v17 = *a5;
    v17[2] = v16 + 1;
    return sub_100309144(v9, v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, _s23QueueSnapshotIdentifierOMa);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002F3850@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char **a4@<X3>, void *a5@<X8>)
{
  v51 = a5;
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  __chkstk_darwin();
  v49 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v11 = (&v49 - v10);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = (&v49 - v13);
  v15 = [a1 tracklist];
  v16 = [v15 playingItemGlobalIndex];

  swift_beginAccess();
  v17 = &v16[*a2];
  if (__OFADD__(v16, *a2))
  {
    __break(1u);
    goto LABEL_27;
  }

  v50 = a4;
  a4 = &selRef_trackNumber;
  v18 = [a1 tracklist];
  v16 = [v18 globalItemCount];

  v19 = v16 - v17;
  if (__OFSUB__(v16, v17))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = (v19 - 1);
  if (__OFSUB__(v19, 1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1002F3E6C(a3, v14);
  v17 = &selRef_trackNumber;
  v20 = [a1 tracklist];
  v21 = [v20 repeatType];

  if (v21 == 2)
  {
    v22 = [a1 tracklist];
    v23 = [v22 globalItemCount];

    if (v23)
    {
      v24 = [a1 tracklist];
      v25 = [v24 globalItemCount];

      sub_1000095E8(v14, &unk_10118AAF0, &qword_100EC6458);
      v26 = v51;
      *v51 = v25;
      v27 = _s23QueueSnapshotIdentifierOMa(0);
LABEL_15:
      swift_storeEnumTagMultiPayload();
      return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    }

    sub_10003D17C(v14, v11, &unk_10118AAF0, &qword_100EC6458);
    v42 = _s23QueueSnapshotIdentifierOMa(0);
    v43 = *(v42 - 8);
    if ((*(v43 + 48))(v11, 1, v42) == 1)
    {
      v40 = v11;
      goto LABEL_18;
    }

    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_10030AD48(v11, _s23QueueSnapshotIdentifierOMa);
      goto LABEL_19;
    }

    v45 = *v11;
    v46 = v51;
    *v51 = v45;
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v46, 0, 1, v42);
  }

  swift_beginAccess();
  a4 = &v16[*a2];
  if (!__OFADD__(*a2, v16))
  {
    if (qword_10117F5F8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_9:
  v28 = (*(*qword_101218AC8 + 736))();
  v30 = v29;
  Player.NowPlayingConfiguration.tracklistRange.getter(v28, v29, v31);
  v33 = v32;

  if (v33 >= a4)
  {
    goto LABEL_13;
  }

  v34 = [a1 v17[2]];
  v35 = [v34 playingItemGlobalIndex];

  if (v35 || (v36 = v50, swift_beginAccess(), *v36 != 1))
  {
    sub_1000095E8(v14, &unk_10118AAF0, &qword_100EC6458);
    v26 = v51;
    *v51 = v16;
    v27 = _s23QueueSnapshotIdentifierOMa(0);
    goto LABEL_15;
  }

  v37 = v14;
  v14 = v49;
  sub_10003D17C(v37, v49, &unk_10118AAF0, &qword_100EC6458);
  v38 = _s23QueueSnapshotIdentifierOMa(0);
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v14, 1, v38) == 1)
  {
LABEL_13:
    v40 = v14;
LABEL_18:
    sub_1000095E8(v40, &unk_10118AAF0, &qword_100EC6458);
LABEL_19:
    v44 = _s23QueueSnapshotIdentifierOMa(0);
    return (*(*(v44 - 8) + 56))(v51, 1, 1, v44);
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10030AD48(v14, _s23QueueSnapshotIdentifierOMa);
    goto LABEL_19;
  }

  v47 = *v14;
  v48 = v51;
  *v51 = v47;
  swift_storeEnumTagMultiPayload();
  return (*(v39 + 56))(v48, 0, 1, v38);
}

void sub_1002F3E6C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19[-v6];
  v8 = *(a1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v19[15] = 3;
  NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if ((v10 & 1) == 0)
  {
    v19[12] = 3;
    goto LABEL_6;
  }

  v19[14] = 2;
  NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if ((v11 & 1) == 0)
  {
    v19[13] = 2;
LABEL_6:
    v12 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = v13 - 1;
      v15 = v12;
      v16 = _s23QueueSnapshotIdentifierOMa(0);
      v17 = *(v16 - 8);
      sub_1003090DC(v15 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14, a2, _s23QueueSnapshotIdentifierOMa);

      (*(v5 + 8))(v7, v4);
      (*(v17 + 56))(a2, 0, 1, v16);
      return;
    }
  }

  (*(v5 + 8))(v7, v4);
  v18 = _s23QueueSnapshotIdentifierOMa(0);
  (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}

uint64_t sub_1002F40E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, void *a7)
{
  v10 = *(_s23QueueSnapshotIdentifierOMa(0) - 8);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v22 - v13;
  v15 = *(sub_10010FC20(&qword_10118AB08, &qword_100ECC420) + 48);
  IndexPath.init(item:section:)();
  *&v14[v15] = a5;
  swift_storeEnumTagMultiPayload();
  sub_1003090DC(v14, v12, _s23QueueSnapshotIdentifierOMa);
  swift_beginAccess();
  v16 = *a6;
  v17 = a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_100499770(0, v16[2] + 1, 1, v16);
    *a6 = v16;
  }

  v20 = v16[2];
  v19 = v16[3];
  if (v20 >= v19 >> 1)
  {
    v16 = sub_100499770((v19 > 1), v20 + 1, 1, v16);
    *a6 = v16;
  }

  v16[2] = v20 + 1;
  sub_100309144(v12, v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v20, _s23QueueSnapshotIdentifierOMa);
  swift_endAccess();
  sub_10030AD48(v14, _s23QueueSnapshotIdentifierOMa);
  result = swift_beginAccess();
  if (__OFADD__(*a7, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a7;
  }

  return result;
}

void sub_1002F4338(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1002F439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 72) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v7 = type metadata accessor for IndexPath();
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 - 8);
  *(v6 + 48) = swift_task_alloc();
  *(v6 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F44A0, v9, v8);
}

uint64_t sub_1002F44A0()
{
  v1 = *(v0 + 16);

  v2 = [v1 tracklist];
  v3 = [v2 playingItemIndexPath];

  if (!v3)
  {
LABEL_10:
    if ((*(v0 + 72) & 1) == 0)
    {
LABEL_15:
      v26 = [*(v0 + 16) tracklist];
      v27 = [v26 repeatType];

      v21 = v27 == 0;
      goto LABEL_16;
    }

LABEL_11:
    v21 = 0;
LABEL_16:
    v28 = *(v0 + 24);
    v29 = *(v28 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState);
    *(v28 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState) = v21;
    sub_1002DE24C(v29);
    goto LABEL_17;
  }

  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v7 + 32))(v4, v5, v6);
  v9 = [v8 tracklist];
  v10 = [v9 items];

  v11 = [v10 sectionAtIndex:IndexPath.section.getter()];
  v12 = [v11 metadataObject];

  if (!v12 || (v13 = [v12 flattenedGenericObject], v12, !v13) || (v14 = objc_msgSend(v13, "anyObject"), v13, !v14))
  {
LABEL_9:
    (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));
    goto LABEL_10;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    goto LABEL_9;
  }

  v16 = v15;
  v17 = [*(v0 + 16) tracklist];
  v18 = [v17 items];

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20 = [v18 itemAtIndexPath:isa];

  LOBYTE(isa) = [v20 isAutoPlay];
  if (isa)
  {
    (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));
    goto LABEL_14;
  }

  v22 = [v16 type];
  v23 = *(v0 + 56);
  v24 = *(v0 + 32);
  v25 = *(v0 + 40);
  if (v22 == 4)
  {
    (*(v25 + 8))(*(v0 + 56), *(v0 + 32));
LABEL_14:

    if ((*(v0 + 72) & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v32 = *(v0 + 24);
  v33 = *(v32 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState);
  *(v32 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState) = 0;
  sub_1002DE24C(v33);

  (*(v25 + 8))(v23, v24);
LABEL_17:

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002F481C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_10010FC20(&unk_10118ABC0, &unk_100EC03E0);
  v7[6] = swift_task_alloc();
  v8 = type metadata accessor for UICellAccessory.ReorderOptions();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v9 = type metadata accessor for UICellAccessory.DisplayedState();
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = _s23QueueSnapshotIdentifierOMa(0);
  v7[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[15] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F49D8, v11, v10);
}

uint64_t sub_1002F49D8()
{

  v1 = sub_1002DCC7C();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [v1 cellForItemAtIndexPath:isa];

  if (v3)
  {
    type metadata accessor for NowPlayingQueueCell(0);
    if (!swift_dynamicCastClass())
    {
LABEL_13:

      goto LABEL_14;
    }

    if (v0[4] >= 2)
    {
      v4 = sub_100432DFC();
      if (v4)
      {
        v5 = v4;
        sub_1003090DC(v0[5], v0[14], _s23QueueSnapshotIdentifierOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v7 = v0[14];
        if (EnumCaseMultiPayload == 1)
        {
          v8 = *(v7 + *(sub_10010FC20(&qword_10118AB08, &qword_100ECC420) + 48));
          v9 = type metadata accessor for IndexPath();
          (*(*(v9 - 8) + 8))(v7, v9);
          v10 = [v8 tracklist];
          v11 = [v10 reorderCommand];

          if (v11)
          {
            v12 = [v11 canMoveItem:v5];
            swift_unknownObjectRelease();
            if (v12)
            {
              v13 = v0[11];
              v14 = v0[12];
              v24 = v14;
              v15 = v0[10];
              v25 = v15;
              v26 = v13;
              v27 = v0[9];
              v28 = v0[8];
              v29 = v0[7];
              v16 = v0[6];
              sub_10010FC20(&unk_101184740, &qword_100ED5D60);
              type metadata accessor for UICellAccessory();
              *(swift_allocObject() + 16) = xmmword_100EBC6B0;
              (*(v13 + 104))(v14, enum case for UICellAccessory.DisplayedState.always(_:), v15);
              *v16 = 0x403C000000000000;
              v17 = enum case for UICellAccessory.LayoutDimension.custom(_:);
              v18 = type metadata accessor for UICellAccessory.LayoutDimension();
              v19 = *(v18 - 8);
              (*(v19 + 104))(v16, v17, v18);
              (*(v19 + 56))(v16, 0, 1, v18);
              v20 = v3;
              UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
              static UICellAccessory.reorder(displayed:options:)();
              (*(v28 + 8))(v27, v29);
              (*(v26 + 8))(v24, v25);
              UICollectionViewListCell.accessories.setter();

LABEL_12:
              goto LABEL_13;
            }
          }
        }

        else
        {

          sub_10030AD48(v7, _s23QueueSnapshotIdentifierOMa);
        }
      }
    }

    v21 = v3;
    UICollectionViewListCell.accessories.setter();
    goto LABEL_12;
  }

LABEL_14:

  v22 = v0[1];

  return v22();
}

void sub_1002F4E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v4 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
  swift_beginAccess();
  v13 = *v12;
  *v11 = *v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v13)
  {
    swift_beginAccess();
    v15 = *(_s13UpdateContextVMa(0) + 28);
    sub_100030444(a2, a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v12 + v15);
    *(v12 + v15) = 0x8000000000000000;
    sub_1006C5FE0(a1 & 0x1FF, a2, a3, a1, isUniquelyReferenced_nonNull_native);
    *(v12 + v15) = v18;
    swift_endAccess();
    if ((*(v12 + 8) & 1) == 0)
    {
      sub_1002F4FE0();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002F4FE0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v1 - 8);
  v73 = v1;
  __chkstk_darwin();
  v70 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchQoS();
  v69 = *(v71 - 8);
  __chkstk_darwin();
  v68 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118ABE0, aB_11);
  __chkstk_darwin();
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v60 - v5;
  v75 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v7 = *(v75 - 8);
  v8 = v7[8];
  __chkstk_darwin();
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v74 = &v60 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = v0;
  v14 = &v0[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext];
  swift_beginAccess();
  v15 = *v14;
  *v13 = *v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v14[8] = 1;
  updated = _s13UpdateContextVMa(0);
  v18 = *&v14[*(updated + 28)];
  v19 = v76;
  if (!*(v18 + 16))
  {
    goto LABEL_13;
  }

  v20 = updated;
  v21 = sub_1006CCC5C();
  if ((v22 & 1) == 0)
  {
    v28 = *&v14[*(v20 + 28)];
    if (*(v28 + 16))
    {
      v29 = sub_1006CCC5C();
      if (v30)
      {
        v31 = (*(v28 + 56) + 24 * v29);
        v63 = *v31;
        v24 = v31[1];
        v25 = *(v31 + 1);
        v26 = *(v31 + 2);
        swift_beginAccess();
        sub_100030444(v25, v26);
        sub_100030444(v25, v26);
        v27 = 0;
        goto LABEL_11;
      }

      v32 = *&v14[*(v20 + 28)];
      if (*(v32 + 16))
      {
        v33 = sub_1006CCC5C();
        if (v34)
        {
          v35 = (*(v32 + 56) + 24 * v33);
          v63 = *v35;
          v24 = v35[1];
          v25 = *(v35 + 1);
          v26 = *(v35 + 2);
          swift_beginAccess();
          sub_100030444(v25, v26);
          sub_100030444(v25, v26);
          v27 = 2;
          goto LABEL_11;
        }
      }
    }

LABEL_13:
    v14[8] = 0;
    return;
  }

  v23 = (*(v18 + 56) + 24 * v21);
  v63 = *v23;
  v24 = v23[1];
  v25 = *(v23 + 1);
  v26 = *(v23 + 2);
  swift_beginAccess();
  sub_100030444(v25, v26);
  sub_100030444(v25, v26);
  v27 = 1;
LABEL_11:
  sub_1004077DC(0, 1, 0, v27);
  swift_endAccess();
  v60 = swift_allocObject();
  *(v60 + 16) = v19;
  v36 = v19[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didScrollToUpNext] & v24;
  v61 = swift_allocObject();
  *(v61 + 16) = v36 & 1;
  v65 = v25;
  v64 = v26;
  v62 = v24;
  v37 = v19;
  if (v25)
  {
    v38 = sub_100030444(v25, v26);
    v25(v38);
    sub_100020438(v25, v26);
  }

  sub_1000089F8(&v14[*(v20 + 24)], v6, &qword_10118ABE0, aB_11);
  v39 = v7[6];
  v40 = v75;
  if (v39(v6, 1, v75) == 1)
  {
    v41 = v7;
    v42 = v74;
    sub_1002F1434(v74);
    v40 = v75;
    if (v39(v6, 1, v75) != 1)
    {
      sub_1000095E8(v6, &qword_10118ABE0, aB_11);
    }
  }

  else
  {
    v41 = v7;
    v43 = v7[4];
    v42 = v74;
    v43(v74, v6, v40);
  }

  v44 = v66;
  (v41[7])(v66, 1, 1, v40);
  swift_beginAccess();
  sub_10006B010(v44, &v14[*(v20 + 24)], &qword_10118ABE0, aB_11);
  swift_endAccess();
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v45 = v40;
  v66 = static OS_dispatch_queue.main.getter();
  v46 = v67;
  (v41[2])(v67, v42, v40);
  v47 = (*(v41 + 80) + 56) & ~*(v41 + 80);
  v48 = swift_allocObject();
  v49 = v76;
  v50 = v61;
  *(v48 + 16) = v76;
  *(v48 + 24) = v50;
  *(v48 + 32) = v63;
  *(v48 + 33) = v62;
  v51 = v64;
  *(v48 + 40) = v65;
  *(v48 + 48) = v51;
  (v41[4])(v48 + v47, v46, v45);
  v52 = (v48 + ((v8 + v47 + 7) & 0xFFFFFFFFFFFFFFF8));
  v53 = v60;
  *v52 = sub_100309D2C;
  v52[1] = v53;
  aBlock[4] = sub_100309D34;
  aBlock[5] = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010A5750;
  v54 = _Block_copy(aBlock);
  v55 = v49;

  v56 = v68;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
  v57 = v70;
  v58 = v73;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v59 = v66;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v54);

  sub_100020438(v65, v64);

  (*(v72 + 8))(v57, v58);
  (*(v69 + 8))(v56, v71);
  (v41[1])(v74, v75);
}

double sub_1002F5978(char *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
  swift_beginAccess();
  v9 = *&a1[v8];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  aBlock[4] = sub_100309DFC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010A57F0;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = a1;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v4, v2);
  (*(v5 + 8))(v7, v15);

  return result;
}

void sub_1002F5C6C(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
  swift_beginAccess();
  *(v1 + 8) = 0;
  if (*(*(v1 + *(_s13UpdateContextVMa(0) + 28)) + 16))
  {
    sub_1002F4FE0();
  }
}

void sub_1002F5CD4(char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v83 = a7;
  v84 = a8;
  v85 = a2;
  v86 = a6;
  v87 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v10 = *(v87 - 8);
  __chkstk_darwin();
  v12 = &v82 - v11;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118ABE0, aB_11);
  *&v17 = __chkstk_darwin().n128_u64[0];
  v19 = &v82 - v18;
  v20 = [a1 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_37;
  }

  v21 = v20;
  v22 = a3;
  v23 = [v20 window];

  if (v23)
  {
    v24 = [v23 windowScene];

    if (v24)
    {
      v25 = [v24 activationState];

      if (v25 == 2)
      {
        v26 = v85;
        swift_beginAccess();
        *(v26 + 16) = 0;
      }
    }
  }

  if (v22 == 1)
  {
    v89[0] = 2;
    v27 = sub_100309CC0();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v27))
    {
      v28 = v87;
      (*(v10 + 16))(v19, v86, v87);
      (*(v10 + 56))(v19, 0, 1, v28);
      sub_1002E802C(v19);
      sub_1000095E8(v19, &qword_10118ABE0, aB_11);
    }

    else
    {
      v29 = *&a1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
      if (!v29)
      {
LABEL_40:
        __break(1u);
        return;
      }

      v30 = v29;
      sub_1004357B8(3u);
      v32 = v31;

      if ((v32 & 1) == 0)
      {
        v82 = sub_1002DCC7C();
        v33 = _UICollectionViewListLayoutElementKindSectionHeader;
        IndexPath.init(item:section:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v14 + 8))(v16, v13);
        v35 = v82;
        v36 = [v82 supplementaryViewForElementKind:v33 atIndexPath:isa];

        if (v36)
        {
          type metadata accessor for NowPlayingQueueHeaderView(0);
          v37 = swift_dynamicCastClass();
          if (v37)
          {
            sub_1002EB08C(v37);
          }
        }
      }
    }

    v38 = sub_1002DCC7C();
    _s22AutoPlayBackgroundViewCMa();
    static UICollectionReusableView.reuseIdentifier.getter();
    v39 = String._bridgeToObjectiveC()();

    v40 = [v38 _visibleDecorationViewsOfKind:v39];

    if (v40)
    {
      v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v41 + 16))
      {
        sub_10000DD18(v41 + 32, v89);

        if (swift_dynamicCast())
        {
          v42 = v88;
          sub_1002EB3C8(v88);
        }
      }

      else
      {
      }

      goto LABEL_20;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_20:
  v43 = sub_1002DCC7C();
  [v43 contentSize];
  v45 = v44;

  sub_1002E6958(1, v46, v45);
  if (v22)
  {
    v47 = 0;
  }

  else
  {
    v47 = a1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection] == 3;
  }

  v48 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
  v49 = [*&a1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView] collectionViewLayout];
  [v49 collectionViewContentSize];
  v51 = v50;

  [*&a1[v48] contentOffset];
  v53 = v52;
  v55 = v54;
  (*(v10 + 16))(v12, v86, v87);
  if (v47)
  {
    v56 = v85;
    swift_beginAccess();
    *(v56 + 16) = 0;
    v57 = *&a1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
    if (v57)
    {
      v58 = swift_allocObject();
      v59 = v83;
      v60 = v84;
      v58[2] = a1;
      v58[3] = v59;
      v58[4] = v60;
      v61 = v57;
      v62 = a1;

      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      (*(v10 + 8))(v12, v87);
      v63 = [*&a1[v48] collectionViewLayout];
      [v63 collectionViewContentSize];
      v65 = v64;

      v66 = v65 - v51;
      *&v62[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY] = v66 + *&v62[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY];
      sub_1002DD920();
      [*&a1[v48] setContentOffset:{v53, v55 + v66}];
      return;
    }

    goto LABEL_38;
  }

  v67 = *&a1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v67)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  swift_beginAccess();
  v68 = swift_allocObject();
  v69 = v83;
  v70 = v84;
  v68[2] = a1;
  v68[3] = v69;
  v68[4] = v70;
  v71 = a1;

  v72 = v67;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  (*(v10 + 8))(v12, v87);
  v73 = [*&a1[v48] collectionViewLayout];
  [v73 collectionViewContentSize];
  v75 = v74;

  v76 = v75 + *&v71[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bottomContentInset];
  [*&a1[v48] safeAreaInsets];
  v78 = v76 + v77;
  [*&a1[v48] frame];
  v79 = v78 - CGRectGetHeight(v90);
  if (v79 >= 0.0)
  {
    if (v79 >= v55)
    {
      return;
    }
  }

  else
  {
    v79 = 0.0;
    if (v55 <= 0.0)
    {
      return;
    }
  }

  if (vabdd_f64(v55, v79) >= 1.0)
  {
    v80 = *&v71[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY];
    v81 = v55 - (v55 - v79);
    if (v80 <= v81)
    {
      v80 = v81;
    }

    [*&a1[v48] setContentOffset:1 animated:{0.0, v80}];
  }
}

uint64_t sub_1002F64D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_1002DCC7C();
  [v3 contentSize];
  v5 = v4;
  v7 = v6;

  sub_1002E6B90(v5, v7);
  return a2();
}

void sub_1002F6544(uint64_t a1, void *a2)
{
  v3 = v2;
  v48 = a2;
  sub_10010FC20(&qword_1011888C0, &qword_100EC2FA0);
  __chkstk_darwin();
  v6 = &v48 - v5;
  v7 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v48 - v9;
  v11 = type metadata accessor for NowPlayingQueueCell(0);
  v12 = static UICollectionReusableView.reuseIdentifier.getter();
  v14 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v11, a1, v12, v13, v11);

  v49[0]._countAndFlagsBits = 0;
  v49[0]._object = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v49[0]._countAndFlagsBits = 0xD00000000000001ELL;
  v49[0]._object = 0x8000000100E45BD0;
  v15 = *&v3[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v15)
  {
    goto LABEL_29;
  }

  v16 = v15;
  v17 = IndexPath.section.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v18 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v8 + 8))(v10, v7);
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v17 >= *(v18 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v19 = *(v18 + v17 + 32);

  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v20 = 0xE600000000000000;
      v21 = 0x7478654E7075;
    }

    else
    {
      v20 = 0xE800000000000000;
      if (v19 == 4)
      {
        v21 = 0x79616C506F747561;
      }

      else
      {
        v21 = 0x736C6F72746E6F63;
      }
    }
  }

  else if (v19)
  {
    if (v19 == 1)
    {
      v20 = 0xE700000000000000;
      v21 = 0x676E6979616C70;
    }

    else
    {
      v20 = 0xE500000000000000;
      v21 = 0x6575657571;
    }
  }

  else
  {
    v20 = 0xE700000000000000;
    v21 = 0x79726F74736968;
  }

  v22 = v20;
  String.append(_:)(*&v21);

  v23._countAndFlagsBits = 93;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v50 = AccessibilityIdentifier.init(name:)(v49[0]);
  v24 = UIView.withAccessibilityIdentifier(_:)(v50.rawValue._countAndFlagsBits, v50.rawValue._object, v50.name._countAndFlagsBits, v50.name._object);

  v25 = v24;
  v26 = [v3 view];
  if (!v26)
  {
    goto LABEL_30;
  }

  v27 = v26;
  [v26 layoutMargins];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  [v25 setLayoutMargins:{v29, v31, v33, v35}];
  sub_1002E3428(a1, v48);
  v37 = v36;
  v25[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isDisabled] = v36 & 1;
  v38 = *&v25[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView];
  v39 = 1.0;
  if (v37)
  {
    UIInterfaceGetContentDisabledAlpha();
  }

  [v38 setAlpha:{v39, v48}];

  type metadata accessor for Artwork.Caching.Reference();
  v40 = swift_dynamicCastClass();
  if (v40)
  {
    swift_unknownObjectRetain();
  }

  *&v25[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkCachingReference] = v40;

  *(*&v25[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerView] + OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_cachingReference) = v40;

  v41 = v25;
  static UIBackgroundConfiguration.clear()();
  v42 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v42 - 8) + 56))(v6, 0, 1, v42);
  UICollectionViewCell.backgroundConfiguration.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  UICollectionViewCell.configurationUpdateHandler.setter();

  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (v43)
  {
    v44 = v43;
    v45 = &selRef_configureCell_forSong_;
LABEL_26:
    [v3 *v45];
    sub_1004F26A8(&v49[0]._countAndFlagsBits);

    sub_1000095E8(v49, &qword_1011A3DD0, &unk_100EC03F0);
    return;
  }

  objc_opt_self();
  v46 = swift_dynamicCastObjCClass();
  if (v46)
  {
    v44 = v46;
    v45 = &selRef_configureCell_forTVEpisode_;
    goto LABEL_26;
  }

  objc_opt_self();
  v47 = swift_dynamicCastObjCClass();
  if (v47)
  {
    v44 = v47;
    v45 = &selRef_configureCell_forMovie_;
    goto LABEL_26;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1002F6B34(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_1011888C0, &qword_100EC2FA0);
  __chkstk_darwin();
  v5 = &v16 - v4;
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIBackgroundConfiguration.clear()();
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isExpanded.getter())
  {
    v10 = [objc_opt_self() whiteColor];
    v11 = [v10 colorWithAlphaComponent:0.05];

    UIBackgroundConfiguration.backgroundColor.setter();
  }

  else if (UICellConfigurationState.isReordering.getter())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      sub_1002DDE0C();
    }

    UIBackgroundConfiguration.customView.setter();
    v15 = [a1 layer];
    [v15 setMasksToBounds:0];
  }

  (*(v7 + 16))(v5, v9, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  UICollectionViewCell.backgroundConfiguration.setter();
  return (*(v7 + 8))(v9, v6);
}

void sub_1002F6DA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v112 = a4;
  sub_10010FC20(&qword_10118ABE0, aB_11);
  __chkstk_darwin();
  v10 = &v110 - v9;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v12 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v13 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v113 = *(v13 - 8);
  v114 = v13;
  __chkstk_darwin();
  v15 = &v110 - v14;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v16 == a2)
  {

LABEL_15:
    v35 = _s25NowPlayingQueueFooterViewCMa();
    v36 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v35, a1, a2, a3, 0x46676E6963617053, 0xED00007265746F6FLL, v35);
    v37 = [v5 view];
    if (!v37)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v38 = v37;
    [v37 directionalLayoutMargins];

    [v36 directionalLayoutMargins];
    [v36 setDirectionalLayoutMargins:?];
    v39 = v5;
    v40 = [v5 traitCollection];
    v41 = sub_1001D1C24();
    sub_1001D1C78();
    v112 = v41;
    UITraitCollection.subscript.getter();

    v111 = 0x746361706D6F63;
    if (v117 && v117 != 1)
    {
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
LABEL_22:

        v43 = IndexPath.section.getter();
        v44 = sub_1002DCC7C();
        v45 = [v44 numberOfSections];

        if (__OFSUB__(v45, 1))
        {
          __break(1u);
        }

        else
        {
          if (v43 == v45 - 1)
          {
            v46 = 1;
            v45 = v39;
          }

          else
          {
            v45 = v39;
            v47 = [v39 traitCollection];
            UITraitCollection.subscript.getter();
            if (sub_1005C3564(v116))
            {

              v46 = 0;
            }

            else
            {
              v48 = [v47 accessibilityContrast];

              v46 = v48 != 1;
            }
          }

          [*&v36[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator] setHidden:v46];
          if (qword_10117F560 == -1)
          {
LABEL_29:
            v49 = *&qword_10118A8F0;
            v50 = sub_10043692C();
            [v50 setConstant:v49];

            v51 = *&v45[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
            if (!v51)
            {
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            v52 = v51;
            v53 = IndexPath.safeSection.getter();
            dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
            v54 = v114;
            v55 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
            (*(v113 + 8))(v15, v54);
            if ((v53 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v53 < *(v55 + 16))
            {
              v56 = *(v55 + v53 + 32);

              if (!v56)
              {
                v58 = [v39 traitCollection];
                UITraitCollection.subscript.getter();

                if (v115)
                {
                  if (v115 != 1)
                  {

                    goto LABEL_33;
                  }

                  v111 = 0x72616C75676572;
                }

                v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v59 & 1) == 0)
                {
                  v57 = sub_1004369F4();
                  [v57 setConstant:-v49];
                  goto LABEL_34;
                }
              }

LABEL_33:
              v57 = sub_1004369F4();
              [v57 setConstant:-0.0];
LABEL_34:

              return;
            }

            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }
        }

        swift_once();
        goto LABEL_29;
      }
    }

    [v36 directionalLayoutMargins];
    [v36 setDirectionalLayoutMargins:?];
    goto LABEL_22;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    goto LABEL_15;
  }

  v110 = v12;
  v111 = v5;
  v19 = *&v5[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v19)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v20 = v10;
  v21 = v19;
  v22 = IndexPath.safeSection.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v23 = v114;
  v24 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v113 + 8))(v15, v23);
  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_61;
  }

  if (v22 >= *(v24 + 16))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v25 = *(v24 + v22 + 32);

  if (v25 <= 2)
  {
    if (!v25)
    {
      v67 = type metadata accessor for NowPlayingHistoryHeaderView();
      v68 = static UICollectionReusableView.reuseIdentifier.getter();
      v70 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v67, a1, a2, a3, v68, v69, v67);

      v71 = v70;
      v72 = [v111 view];
      if (v72)
      {
        v73 = v72;
        [v72 directionalLayoutMargins];

        [v71 directionalLayoutMargins];
        [v71 setDirectionalLayoutMargins:?];

        v30 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v31 = &v71[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButtonAction];
        v32 = *&v71[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButtonAction];
        v33 = *&v71[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButtonAction + 8];
        v34 = sub_100309D14;
        goto LABEL_47;
      }

      goto LABEL_68;
    }

    if (v25 != 1)
    {
      v83 = v20;
      v84 = type metadata accessor for NowPlayingQueueHeaderView(0);
      v85 = static UICollectionReusableView.reuseIdentifier.getter();
      v87 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v84, a1, a2, a3, v85, v86, v84);

      v88 = v87;
      v89 = v111;
      v90 = [v111 view];
      if (v90)
      {
        v91 = v90;
        [v90 directionalLayoutMargins];

        [v88 directionalLayoutMargins];
        [v88 setDirectionalLayoutMargins:?];
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v92 = String.init(localized:table:bundle:locale:comment:)();
        v93 = &v88[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title];
        *v93 = v92;
        v93[1] = v94;

        sub_1005700F4();
        v95 = &v88[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
        v96 = *&v88[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
        v97 = *&v88[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8];
        v98 = *&v88[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16];
        v99 = *&v88[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24];
        *v95 = 0u;
        *(v95 + 1) = 0u;
        v100 = v95[32];
        v95[32] = -1;
        sub_100309C54(v96, v97, v98, v99, v100);
        sub_1005701F8();
        v101 = [v89 view];
        if (v101)
        {
          v102 = v101;
          [v101 directionalLayoutMargins];

          [v88 directionalLayoutMargins];
          [v88 setDirectionalLayoutMargins:?];

          (*(v113 + 56))(v83, 1, 1, v114);
          sub_1002E8394(v88, 2, v83);
          sub_1000095E8(v83, &qword_10118ABE0, aB_11);
          return;
        }

        goto LABEL_72;
      }

      goto LABEL_70;
    }

    v26 = _s17PlayingHeaderViewCMa();
    v27 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v26, a1, a2, a3, 0x48676E6979616C50, 0xED00007265646165, v26);
    v28 = [v111 view];
    if (v28)
    {
      v29 = v28;
      [v28 directionalLayoutMargins];

      [v27 directionalLayoutMargins];
      [v27 setDirectionalLayoutMargins:?];

      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = &v27[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_didUpdateAttributes];
      v32 = *&v27[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_didUpdateAttributes];
      v33 = *&v27[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_didUpdateAttributes + 8];
      v34 = sub_100309CB8;
LABEL_47:
      *v31 = v34;
      *(v31 + 1) = v30;

      sub_100020438(v32, v33);

      return;
    }

    goto LABEL_66;
  }

  if (v25 != 3)
  {
    if (v25 != 4)
    {
      v103 = type metadata accessor for NowPlayingQueueControlsView();
      v104 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v103, a1, a2, a3, 0x736C6F72746E6F43, 0xEE00726564616548, v103);
      [v104 setInsetsLayoutMarginsFromSafeArea:{0, v110}];
      v105 = [v111 view];
      if (v105)
      {
        v106 = v105;
        [v105 directionalLayoutMargins];

        [v104 directionalLayoutMargins];
        [v104 setDirectionalLayoutMargins:?];

        sub_1002E9520(v104);
        return;
      }

      goto LABEL_71;
    }

    v60 = type metadata accessor for NowPlayingAutoPlayHeaderView();
    v61 = static UICollectionReusableView.reuseIdentifier.getter();
    v63 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v60, a1, a2, a3, v61, v62, v60);

    v64 = v63;
    v65 = [v111 view];
    if (v65)
    {
      v66 = v65;
      [v65 directionalLayoutMargins];

      [v64 directionalLayoutMargins];
      [v64 setDirectionalLayoutMargins:?];

      return;
    }

    goto LABEL_67;
  }

  v74 = v20;
  v75 = type metadata accessor for NowPlayingQueueHeaderView(0);
  v76 = static UICollectionReusableView.reuseIdentifier.getter();
  v78 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v75, a1, a2, a3, v76, v77, v75);

  v79 = v78;
  v80 = [v111 view];
  if (!v80)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v81 = v80;
  [v80 directionalLayoutMargins];

  [v79 directionalLayoutMargins];
  [v79 setDirectionalLayoutMargins:?];

  v118 = 2;
  v82 = sub_100309CC0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v82))
  {
    (*(v113 + 56))(v74, 1, 1, v114);
    sub_1002E8394(v79, 3, v74);
    sub_1000095E8(v74, &qword_10118ABE0, aB_11);
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v107 = String.init(localized:table:bundle:locale:comment:)();
    v108 = &v79[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title];
    *v108 = v107;
    v108[1] = v109;

    sub_1005700F4();
    sub_1002EB08C(v79);
  }
}

void sub_1002F7C30(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v3 = String._bridgeToObjectiveC()();

    v4 = [objc_opt_self() alertControllerWithTitle:0 message:v3 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v6 = v2;
    v7 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_100309D1C;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10027D328;
    aBlock[3] = &unk_1010A5660;
    v8 = _Block_copy(aBlock);

    v9 = objc_opt_self();
    v10 = [v9 actionWithTitle:v7 style:2 handler:v8];
    _Block_release(v8);

    [v4 addAction:v10];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v9 actionWithTitle:v11 style:1 handler:0];

    [v4 addAction:v12];
    [v6 presentViewController:v4 animated:1 completion:0];
  }
}

void sub_1002F7FBC()
{
  v0 = [objc_allocWithZone(MPSectionedCollection) init];
  sub_1003070E4(v0);
}

void sub_1002F800C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      [a1 frame];
      MinY = CGRectGetMinY(v14);
      v8 = sub_1002DCC7C();
      [v8 contentOffset];
      v10 = v9;

      if (!(*&v6[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode] >> 62) && ([v6 isBeingPresented] & 1) == 0)
      {
        v11 = *&v6[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
        if (!v11)
        {
          __break(1u);
          return;
        }

        v12 = *&v11[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset];
        *&v11[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset] = MinY - v10;
        if (MinY - v10 != v12)
        {
          v13 = v11;
          sub_1001B6800();
        }
      }

      swift_unknownObjectRelease();
    }

    if (v4[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState] == 1)
    {
      sub_1002E555C(0);
    }
  }
}

void sub_1002F815C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v141[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  *&v8 = __chkstk_darwin().n128_u64[0];
  if (a1 > 1u)
  {
    if (a1 - 2 >= 2)
    {
      if (a1 == 4)
      {
        v9 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_autoPlayHeaderSizingView;
        v10 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_autoPlayHeaderSizingView];
        if (v10)
        {
          v11 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_autoPlayHeaderSizingView];
        }

        else
        {
          type metadata accessor for NowPlayingAutoPlayHeaderView();
          v60 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v61 = *&v2[v9];
          *&v2[v9] = v60;
          v11 = v60;

          v62 = [v2 view];
          if (!v62)
          {
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v63 = v62;
          [v62 addSubview:v11];

          [v11 setHidden:1];
          v64 = sub_1002DCC7C();
          [v64 frame];
          v66 = v65;
          v68 = v67;
          v70 = v69;
          v72 = v71;

          v145.origin.x = v66;
          v145.origin.y = v68;
          v145.size.width = v70;
          v145.size.height = v72;
          [v11 setFrame:{0.0, 0.0, CGRectGetWidth(v145), 100.0}];

          v10 = 0;
        }

        v73 = v10;
        v14 = v11;
        v74 = [v2 view];
        if (v74)
        {
          v75 = v74;
          [v74 layoutMargins];
          v77 = v76;
          v79 = v78;
          v81 = v80;
          v83 = v82;

          [v14 setLayoutMargins:{v77, v79, v81, v83}];
          [v14 layoutIfNeeded];

          v84 = sub_1002DCC7C();
          [v84 frame];
          v86 = v85;
          v88 = v87;
          v90 = v89;
          v92 = v91;

          v146.origin.x = v86;
          v146.origin.y = v88;
          v146.size.width = v90;
          v146.size.height = v92;
          [v14 systemLayoutSizeFittingSize:{CGRectGetWidth(v146), INFINITY}];

LABEL_49:
          return;
        }

LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if (qword_10117F558 == -1)
      {
        return;
      }

LABEL_52:
      swift_once();
      return;
    }

LABEL_7:
    v12 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_headerSizingView;
    v13 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_headerSizingView];
    if (v13)
    {
      v14 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_headerSizingView];
    }

    else
    {
      type metadata accessor for NowPlayingQueueHeaderView(0);
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v16 = *&v2[v12];
      *&v2[v12] = v15;
      v14 = v15;

      v17 = [v2 view];
      if (!v17)
      {
        goto LABEL_55;
      }

      v18 = v17;
      [v17 addSubview:v14];

      [v14 setHidden:1];
      v19 = sub_1002DCC7C();
      [v19 frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v144.origin.x = v21;
      v144.origin.y = v23;
      v144.size.width = v25;
      v144.size.height = v27;
      [v14 setFrame:{0.0, 0.0, CGRectGetWidth(v144), 100.0}];

      v13 = 0;
    }

    v28 = v13;
    v29 = [v2 view];
    if (v29)
    {
      v30 = v29;
      [v29 layoutMargins];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      [v14 setLayoutMargins:{v32, v34, v36, v38}];
      if (!a1)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v50 = String.init(localized:table:bundle:locale:comment:)();
        v51 = &v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title];
        *v51 = v50;
        v51[1] = v52;

        sub_1005700F4();
        v53 = &v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
        v54 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
        v55 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8];
        v56 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16];
        v57 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24];
        *v53 = 0u;
        *(v53 + 1) = 0u;
        v58 = v53[32];
        v53[32] = -1;
        sub_100309C54(v54, v55, v56, v57, v58);
        sub_1005701F8();
        [*&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton] setHidden:1];
        sub_10056FF60();
        v59 = sub_1002931A8();
        if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v59))
        {
          [*&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton] setHidden:1];
          sub_10056FF60();
        }

        goto LABEL_48;
      }

      if (a1 != 3)
      {
        if (a1 == 2)
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v39 = String.init(localized:table:bundle:locale:comment:)();
          v40 = &v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title];
          *v40 = v39;
          v40[1] = v41;

          sub_1005700F4();
          v42 = &v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
          v43 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
          v44 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8];
          v45 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16];
          v46 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24];
          *v42 = 0u;
          *(v42 + 1) = 0u;
          v47 = v42[32];
          v42[32] = -1;
          sub_100309C54(v43, v44, v45, v46, v47);
          sub_1005701F8();
        }

        goto LABEL_48;
      }

      if (v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState] != 1)
      {
LABEL_38:
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v95 = String.init(localized:table:bundle:locale:comment:)();
        v96 = &v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title];
        *v96 = v95;
        v96[1] = v97;

        sub_1005700F4();
        v98 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
        if (v98)
        {
          v140 = v5;
          v99 = v98;
          v100 = [v99 tracklist];
          sub_1002E7140(v100, v142);

          v101 = &v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
          v102 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
          v103 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8];
          v104 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16];
          v105 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24];
          v106 = v143;
          v107 = v142[1];
          *v101 = v142[0];
          *(v101 + 1) = v107;
          v108 = v101[32];
          v101[32] = v106;
          sub_1000089F8(v142, v141, &qword_10118ABD8, L"b\v\a");
          v109 = v108;
          v110 = v99;
          sub_100309C54(v102, v103, v104, v105, v109);
          sub_1005701F8();
          sub_1000095E8(v142, &qword_10118ABD8, L"b\v\a");
          sub_1002E7A7C(v14, v99);
          v111 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
          if (!v111)
          {
LABEL_58:
            __break(1u);
            return;
          }

          v112 = v111;
          sub_1004357B8(3u);
          v114 = v113;

          v115 = v140;
          if ((v114 & 1) == 0)
          {
            v116 = sub_1002DCC7C();
            v117 = _UICollectionViewListLayoutElementKindSectionHeader;
            IndexPath.init(item:section:)();
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            (*(v115 + 8))(v7, v4);
            v119 = [v116 supplementaryViewForElementKind:v117 atIndexPath:isa];

            if (v119)
            {
              type metadata accessor for NowPlayingQueueHeaderView(0);
              v120 = swift_dynamicCastClass();
              if (!v120)
              {

                goto LABEL_48;
              }

              v121 = v120;
              v122 = [*(v120 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton) titleLabel];
              if (v122)
              {
                v123 = v122;
                [v122 setPreferredMaxLayoutWidth:0.0];
              }

              v124 = *(v121 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel);
              [v124 setPreferredMaxLayoutWidth:0.0];
            }
          }
        }

        else
        {
          v125 = &v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
          v126 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
          v127 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8];
          v128 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16];
          v129 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24];
          *v125 = 0u;
          *(v125 + 1) = 0u;
          v130 = v125[32];
          v125[32] = -1;
          sub_100309C54(v126, v127, v128, v129, v130);
          sub_1005701F8();
        }

LABEL_48:
        [v14 layoutIfNeeded];
        v131 = sub_1002DCC7C();
        [v131 frame];
        v133 = v132;
        v135 = v134;
        v137 = v136;
        v139 = v138;

        v147.origin.x = v133;
        v147.origin.y = v135;
        v147.size.width = v137;
        v147.size.height = v139;
        [v14 systemLayoutSizeFittingSize:{CGRectGetWidth(v147), INFINITY}];
        goto LABEL_49;
      }

      v49 = [v2 traitCollection];
      sub_1001D1C24();
      sub_1001D1C78();
      UITraitCollection.subscript.getter();

      if (LOBYTE(v142[0]))
      {
        v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v94)
        {

          return;
        }

        goto LABEL_38;
      }

LABEL_35:

      return;
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  v48 = [v1 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  if (LOBYTE(v142[0]) && LOBYTE(v142[0]) != 1)
  {
    goto LABEL_35;
  }

  v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v93 & 1) == 0 && qword_10117F550 != -1)
  {
    goto LABEL_52;
  }
}

void sub_1002F8DC0(uint64_t a1)
{
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  *&v2 = __chkstk_darwin().n128_u64[0];
  v4 = &v23 - v3;
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = v5;
  v7 = [v5 window];

  v8 = [v7 windowScene];
  if (!v8)
  {
    return;
  }

  v9 = *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v9)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v10 = v9;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v11 = _s23QueueSnapshotIdentifierOMa(0);
  if ((*(*(v11 - 8) + 48))(v4, 1, v11) == 1)
  {
    sub_1000095E8(v4, &unk_10118AAF0, &qword_100EC6458);
  }

  else
  {
    v12 = sub_1004329EC();
    sub_10030AD48(v4, _s23QueueSnapshotIdentifierOMa);
    if (v12)
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13 && (v14 = v13, (v15 = [v13 album]) != 0))
      {

        v16 = v12;
        v17 = sub_1004843F8();

        if ((v17 & 1) != 0 && (v18 = [v14 album]) != 0)
        {
          v19 = v18;
          v20 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
          MPModelObject.bestIdentifier(for:)(*v20, 0);
          v22 = v21;

          if (v22)
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
}

void sub_1002F9024(uint64_t a1)
{
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  *&v2 = __chkstk_darwin().n128_u64[0];
  v4 = &v21 - v3;
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  v7 = [v5 window];

  if (!v7)
  {
    return;
  }

  v8 = [v7 windowScene];

  if (!v8)
  {
    return;
  }

  v9 = *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v9)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = v9;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v11 = _s23QueueSnapshotIdentifierOMa(0);
  if ((*(*(v11 - 8) + 48))(v4, 1, v11) == 1)
  {

    sub_1000095E8(v4, &unk_10118AAF0, &qword_100EC6458);
    return;
  }

  v12 = sub_1004329EC();
  sub_10030AD48(v4, _s23QueueSnapshotIdentifierOMa);
  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13 || (v14 = v13, (v15 = [v13 album]) == 0))
    {

      return;
    }

    v16 = v15;
    v17 = v12;
    v18 = sub_100483660(v16, v14, 0, v8);
    v20 = v19;

    if (v18)
    {
      v18();

      sub_100020438(v18, v20);
      return;
    }
  }
}

void sub_1002F9274(uint64_t a2@<X8>)
{
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  __chkstk_darwin();
  v7 = &v37[-v6 - 8];
  v8 = *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (v8)
  {
    v9 = v8;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v10 = _s23QueueSnapshotIdentifierOMa(0);
    if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
    {
      sub_1000095E8(v7, &unk_10118AAF0, &qword_100EC6458);
LABEL_7:
      v17 = 1;
LABEL_19:
      v35 = type metadata accessor for PlaybackIntentDescriptor(0);
      (*(*(v35 - 8) + 56))(a2, v17, 1, v35);
      return;
    }

    v11 = sub_1004329EC();
    sub_10030AD48(v7, _s23QueueSnapshotIdentifierOMa);
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = [objc_allocWithZone(MPModelLibraryRequest) init];
    v13 = [objc_opt_self() deviceMediaLibrary];
    [v12 setMediaLibrary:v13];

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v14 = objc_opt_self();
      v15 = v12;
      v16 = [v14 kindWithVariants:3];
LABEL_18:
      v27 = v16;
      [v12 setItemKind:v27];

      v28 = [objc_opt_self() emptyPropertySet];
      [v12 setItemProperties:v28];

      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_100EBC6C0;
      *(v29 + 32) = [v11 identifiers];
      sub_100009F78(0, &qword_101192200, MPIdentifierSet_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v12 setAllowedItemIdentifiers:isa];

      [v12 setFilteringOptions:{objc_msgSend(v12, "filteringOptions") | 4}];
      v31 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
      [v31 setRequest:v12];

      v32 = [objc_allocWithZone(MPCPlaybackIntent) init];
      [v32 setTracklistToken:v31];
      [v32 setTracklistSource:3];
      v33 = String._bridgeToObjectiveC()();
      [v32 setPlayActivityFeatureName:v33];

      *v5 = v32;
      swift_storeEnumTagMultiPayload();
      v41 = 0;
      memset(v40, 0, sizeof(v40));
      v38 = &_s18NowPlayingUISourceON;
      v39 = &off_10109D788;
      v37[0] = 1;
      v34 = v32;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, v40, 3, 0, 0, 1, 0, 1, a2, 0, v37);

      v17 = 0;
      goto LABEL_19;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v18 = objc_opt_self();
      v19 = v12;
      v20 = [v18 standardUserDefaults];
      v21 = NSUserDefaults.showAllTVShows.getter();

      if (v21)
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

LABEL_17:
      v16 = [objc_opt_self() kindWithVariants:v22];
      goto LABEL_18;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v23 = objc_opt_self();
      v24 = v12;
      v25 = [v23 standardUserDefaults];
      v26 = NSUserDefaults.showAllTVShows.getter();

      if (v26)
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1002F982C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  v5(a2, a3);
}

void sub_1002F992C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (v8)
  {
    v9 = v8;
    sub_1004357B8(v3);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      v12 = sub_1002DCC7C();
      v13 = _UICollectionViewListLayoutElementKindSectionHeader;
      IndexPath.init(item:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v5 + 8))(v7, v4);
      v15 = [v12 supplementaryViewForElementKind:v13 atIndexPath:isa];

      if (v15 && (v18[1] = v15, sub_100009F78(0, &qword_10118AC60, UICollectionReusableView_ptr), sub_10010FC20(&unk_10118AC68, &qword_100EC6600), (swift_dynamicCast() & 1) != 0))
      {
        if (*(&v20 + 1))
        {
          sub_100059A8C(&v19, v22);
          v16 = v23;
          v17 = v24;
          sub_10000954C(v22, v23);
          (*(v17 + 8))(v16, v17);
          sub_10000959C(v22);
          return;
        }
      }

      else
      {
        v21 = 0;
        v19 = 0u;
        v20 = 0u;
      }

      sub_1000095E8(&v19, &qword_10118AC58, &qword_100EC65F8);
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_1002F9B78@<D0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_canPresentTooltip) == 1)
    {
      v7 = Strong;
      sub_1002F992C(5, a2);
      if (v8 || (sub_1002F992C(3, a2), v8) || (sub_1002F992C(2, a2), v6 = v7, v8))
      {
        v18 = v8;
        v19 = 0u;
        v20 = 0u;
        v21 = 2;
        PresentationSource.Position.init(source:permittedArrowDirections:)(&v18, 15, v10);
        v14[0] = v10[0];
        v14[1] = v10[1];
        v15 = v11;
        v16 = v12;
        v17 = v13;
        *&result = PresentationSource.init(viewController:position:)(v7, v14, a3).n128_u64[0];
        return result;
      }
    }
  }

  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 64) = 1;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

double sub_1002F9EC0(uint64_t a1, double a2, double a3)
{
  _s14CollectionViewCMa();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    if (*(v6 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement) == 1 && *(v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY) > a3)
    {
      a2 = 0.0;
      if (*(v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection) != 3)
      {
        [v6 contentOffset];
        return v7;
      }
    }

    else
    {
      v8 = v6;
      v9 = v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
      swift_beginAccess();
      if (*(v9 + 8) == 1)
      {
        [v8 contentOffset];
        return v7;
      }
    }
  }

  return a2;
}

void sub_1002FA024(uint64_t a1@<X1>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v4 = v3;
  v81 = a2;
  v78 = a1;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v71 = &v67 - v6;
  v77 = _s23QueueSnapshotIdentifierOMa(0);
  v7 = *(v77 - 8);
  __chkstk_darwin();
  v70 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  __chkstk_darwin();
  v74 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v67 - v10;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  v79 = v12;
  v80 = v13;
  __chkstk_darwin();
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = &v67 - v15;
  __chkstk_darwin();
  v75 = &v67 - v16;
  v17 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v67 - v19;
  sub_10010FC20(&unk_10118B910, L"b\v\a");
  __chkstk_darwin();
  v22 = &v67 - v21;
  v23 = *(v4 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dragDropController);
  if (v23)
  {
    v24 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
    swift_beginAccess();
    sub_1000089F8(v23 + v24, v22, &unk_10118B910, L"b\v\a");
    v25 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
    if ((*(*(v25 - 8) + 48))(v22, 1, v25) != 1)
    {
      sub_1000095E8(v22, &unk_10118B910, L"b\v\a");
      (*(v80 + 16))(a3, v81, v79);
      return;
    }
  }

  else
  {
    v26 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
    (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
  }

  v76 = a3;
  sub_1000095E8(v22, &unk_10118B910, L"b\v\a");
  v27 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v28 = *(v4 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (!v28)
  {
    goto LABEL_33;
  }

  v29 = v28;
  v30 = IndexPath.section.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v31 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v18 + 8))(v20, v17);
  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v30 >= *(v31 + 16))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v32 = *(v31 + v30 + 32);

  if (!v32)
  {
    IndexPath.section.getter();
    IndexPath.init(item:section:)();
    return;
  }

  v33 = *(v4 + v27);
  v34 = v76;
  v35 = v78;
  if (!v33)
  {
    goto LABEL_34;
  }

  v36 = v33;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v37 = *(v7 + 48);
  if (v37(v11, 1, v77) != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10030AD48(v11, _s23QueueSnapshotIdentifierOMa);
      goto LABEL_19;
    }

    v38 = sub_10010FC20(&qword_10118AB08, &qword_100ECC420);
    v39 = *&v11[*(v38 + 48)];
    v40 = v11;
    v41 = v79;
    v68 = *(v80 + 32);
    v69 = v80 + 32;
    v68(v75, v40, v79);
    v42 = *(v4 + v27);
    if (v42)
    {
      v43 = v42;
      v44 = v74;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      if (v37(v44, 1, v77) == 1)
      {
        v45 = v80;
        (*(v80 + 8))(v75, v41);

        v46 = &unk_10118AAF0;
        v47 = &qword_100EC6458;
        v48 = v44;
LABEL_17:
        sub_1000095E8(v48, v46, v47);
LABEL_27:
        v34 = v76;
        goto LABEL_28;
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v50 = v75;
      if (EnumCaseMultiPayload != 1)
      {
        v45 = v80;
        (*(v80 + 8))(v75, v41);

        sub_10030AD48(v44, _s23QueueSnapshotIdentifierOMa);
        goto LABEL_27;
      }

      v81 = v38;

      v68(v73, v44, v41);
      v51 = v39;
      v52 = [v39 tracklist];
      v53 = [v52 reorderCommand];

      if (!v53)
      {

        v45 = v80;
        v66 = *(v80 + 8);
        v66(v73, v41);
        v66(v50, v41);
        goto LABEL_27;
      }

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v55 = IndexPath._bridgeToObjectiveC()().super.isa;
      v56 = [v53 limitedDisplayIndexPathForMovingIndexPath:isa toProprosedIndexPath:v55];

      v57 = v72;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = v80;
      v58 = *(v81 + 48);
      v59 = v70;
      (*(v80 + 16))(v70, v57, v41);
      *(v59 + v58) = v51;
      swift_storeEnumTagMultiPayload();
      v60 = *(v4 + v27);
      if (v60)
      {
        v61 = v51;
        v62 = v60;
        v63 = v71;
        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

        swift_unknownObjectRelease();
        sub_10030AD48(v59, _s23QueueSnapshotIdentifierOMa);
        v64 = *(v45 + 8);
        v64(v72, v41);
        v64(v73, v41);
        v64(v75, v41);
        v65 = (*(v45 + 48))(v63, 1, v41);
        v35 = v78;
        if (v65 != 1)
        {
          v68(v76, v63, v41);
          return;
        }

        v46 = &unk_10118BCE0;
        v47 = &qword_100EC6450;
        v48 = v63;
        goto LABEL_17;
      }

LABEL_36:
      __break(1u);
      return;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1000095E8(v11, &unk_10118AAF0, &qword_100EC6458);
LABEL_19:
  v41 = v79;
  v45 = v80;
LABEL_28:
  (*(v45 + 16))(v34, v35, v41);
}

void sub_1002FAB38(void *a1, uint64_t a2)
{
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  __chkstk_darwin();
  v5 = &v14 - v4;
  v6 = _s23QueueSnapshotIdentifierOMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (v10)
  {
    v11 = v10;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000095E8(v5, &unk_10118AAF0, &qword_100EC6458);
    }

    else
    {
      sub_100309144(v5, v9, _s23QueueSnapshotIdentifierOMa);
      if (sub_100432FF0())
      {
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v13 = [a1 cellForItemAtIndexPath:isa];

        sub_10030AD48(v9, _s23QueueSnapshotIdentifierOMa);
        if (v13)
        {
          type metadata accessor for NowPlayingQueueCell(0);
          swift_dynamicCastClass();
        }
      }

      else
      {
        sub_10030AD48(v9, _s23QueueSnapshotIdentifierOMa);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002FAE94(unint64_t a1, void (**a2)(char *, uint64_t, uint64_t))
{
  v3 = v2;
  v194 = a1;
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v196 = &v158 - v5;
  v6 = type metadata accessor for Song();
  v172 = *(v6 - 8);
  __chkstk_darwin();
  v185 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v189 = &v158 - v8;
  v9 = type metadata accessor for MusicVideo();
  v171 = *(v9 - 8);
  __chkstk_darwin();
  v180 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v195 = &v158 - v11;
  v197 = type metadata accessor for Track();
  v184 = *(v197 - 8);
  __chkstk_darwin();
  v187 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_10010FC20(&qword_10118AB10, L"F\v!");
  __chkstk_darwin();
  v177 = &v158 - v13;
  v192 = type metadata accessor for IndexPath();
  v170 = *(v192 - 8);
  __chkstk_darwin();
  v191 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_10010FC20(&qword_10118AB00, &qword_100EC6460);
  __chkstk_darwin();
  v179 = (&v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v190 = &v158 - v16;
  v175 = sub_10010FC20(&unk_10118AB90, &qword_100EC64E8);
  v174 = *(v175 - 1);
  __chkstk_darwin();
  v173 = &v158 - v17;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v161 = &v158 - v18;
  sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  __chkstk_darwin();
  v164 = &v158 - v19;
  v163 = type metadata accessor for PlaybackIntentDescriptor(0);
  v162 = *(v163 - 8);
  __chkstk_darwin();
  v165 = &v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v168 = *(v169 - 8);
  __chkstk_darwin();
  v22 = &v158 - v21;
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  __chkstk_darwin();
  v166 = &v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v158 - v24;
  v193 = _s23QueueSnapshotIdentifierOMa(0);
  v182 = *(v193 - 1);
  __chkstk_darwin();
  v27 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v158 - v28;
  __chkstk_darwin();
  v31 = &v158 - v30;
  __chkstk_darwin();
  v33 = &v158 - v32;
  v183 = a2;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v194 deselectItemAtIndexPath:isa animated:1];

  v35 = *(v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse);
  if (v35)
  {
    v186 = v9;
    v188 = v6;
    v176 = v33;
    v36 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
    v167 = v3;
    v37 = *(v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
    if (!v37)
    {
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v160 = v35;
    v38 = v35;
    v39 = v37;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v40 = *(v182 + 48);
    if (v40(v25, 1, v193) == 1)
    {

      sub_1000095E8(v25, &unk_10118AAF0, &qword_100EC6458);
      return;
    }

    v194 = v40;
    v159 = v38;
    v41 = v25;
    v42 = v176;
    sub_100309144(v41, v176, _s23QueueSnapshotIdentifierOMa);
    swift_storeEnumTagMultiPayload();
    v43 = sub_100437274(v42, v31);
    sub_10030AD48(v31, _s23QueueSnapshotIdentifierOMa);
    if (v43)
    {
      v44 = *(v167 + v36);
      if (v44)
      {
        LOBYTE(v205) = 2;
        v45 = v44;
        v46 = v173;
        UICollectionViewDiffableDataSource.snapshot(for:)();

        v47 = v175;
        v36 = NSDiffableDataSourceSectionSnapshot.items.getter();
        v174[1](v46, v47);
        v205 = _swiftEmptyArrayStorage;
        v48 = *(v36 + 16);
        v49 = v196;
        v50 = v189;
        if (v48)
        {
          v51 = (*(v182 + 80) + 32) & ~*(v182 + 80);
          v173 = v36;
          v52 = v36 + v51;
          v175 = (v170 + 32);
          v174 = (v170 + 8);
          v194 = _swiftEmptyArrayStorage;
          v36 = *(v182 + 72);
          v183 = v36;
          while (1)
          {
            sub_1003090DC(v52, v29, _s23QueueSnapshotIdentifierOMa);
            sub_1003090DC(v29, v27, _s23QueueSnapshotIdentifierOMa);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if ((EnumCaseMultiPayload - 2) >= 3)
            {
              break;
            }

            sub_10030AD48(v29, _s23QueueSnapshotIdentifierOMa);
LABEL_10:
            v52 += v36;
            if (!--v48)
            {

              v78 = v194;
              if (!(v194 >> 62))
              {
                goto LABEL_36;
              }

LABEL_62:
              v73 = _CocoaArrayWrapper.endIndex.getter();
              v79 = v73;
              if (!v73)
              {
                goto LABEL_63;
              }

LABEL_37:
              v80 = 0;
              v192 = v78 & 0xC000000000000001;
              v191 = (v78 & 0xFFFFFFFFFFFFFF8);
              v179 = (v171 + 48);
              v175 = (v171 + 32);
              LODWORD(v174) = enum case for Track.musicVideo(_:);
              v182 = v184 + 104;
              v38 = (v184 + 56);
              v81 = (v172 + 48);
              v178 = (v172 + 32);
              LODWORD(v177) = enum case for Track.song(_:);
              v181 = (v184 + 48);
              v193 = _swiftEmptyArrayStorage;
              v183 = (v184 + 32);
              v194 = v78;
              v190 = v79;
              v173 = (v172 + 48);
              while (2)
              {
                if (v192)
                {
                  v73 = sub_1007E97C8(v80, v78);
                }

                else
                {
                  if (v80 >= *(v191 + 2))
                  {
                    goto LABEL_97;
                  }

                  v73 = *(v78 + 8 * v80 + 32);
                }

                v83 = v73;
                v84 = v80 + 1;
                if (__OFADD__(v80, 1))
                {
                  __break(1u);
LABEL_97:
                  __break(1u);
LABEL_98:
                  __break(1u);
                  goto LABEL_99;
                }

                if ([v73 hasVideo])
                {
                  v85 = v83;
                  v86 = v186;
                  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
                  if ((*v179)(v50, 1, v86) == 1)
                  {
                    sub_1000095E8(v50, &unk_1011846B0, &unk_100ECB630);
                    v49 = v196;
                    goto LABEL_48;
                  }

                  v36 = v50;
                  v92 = *v175;
                  v93 = v180;
                  (*v175)(v180, v50, v86);
                  v82 = v195;
                  v92(v195, v93, v86);
                  v81 = v173;
                  v91 = v174;
                  v49 = v196;
LABEL_51:
                  v94 = v197;
                  (*v182)(v82, v91, v197);
                  (*v38)(v82, 0, 1, v94);
                  if ((*v181)(v82, 1, v94) != 1)
                  {
                    v95 = *v183;
                    (*v183)(v187, v82, v197);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v193 = sub_100499798(0, v193[2] + 1, 1, v193);
                    }

                    v78 = v194;
                    v97 = v193[2];
                    v96 = v193[3];
                    if (v97 >= v96 >> 1)
                    {
                      v193 = sub_100499798((v96 > 1), v97 + 1, 1, v193);
                    }

                    v98 = v193;
                    v193[2] = v97 + 1;
                    v73 = (v95)(v98 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v97, v187, v197);
                    v49 = v196;
LABEL_40:
                    ++v80;
                    if (v84 == v190)
                    {
                      goto LABEL_64;
                    }

                    continue;
                  }
                }

                else
                {
LABEL_48:
                  v87 = v188;
                  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
                  if ((*v81)(v49, 1, v87) != 1)
                  {
                    v36 = v178;
                    v88 = *v178;
                    v89 = v185;
                    (*v178)(v185, v49, v87);
                    v82 = v195;
                    v90 = v89;
                    v50 = v189;
                    v88(v195, v90, v87);
                    v91 = v177;
                    goto LABEL_51;
                  }

                  sub_1000095E8(v49, &unk_101183960, &unk_100EBCF90);
                  v82 = v195;
                  (*v38)(v195, 1, 1, v197);
                }

                break;
              }

              v73 = sub_1000095E8(v82, &qword_10118A530, &qword_100EC64E0);
              v78 = v194;
              goto LABEL_40;
            }
          }

          v54 = v192;
          v55 = v191;
          if (EnumCaseMultiPayload)
          {
            v60 = *&v27[*(sub_10010FC20(&qword_10118AB08, &qword_100ECC420) + 48)];
            (*v175)(v55, v27, v54);
            v61 = [v60 tracklist];
            v62 = [v61 displayItems];

            v63 = IndexPath._bridgeToObjectiveC()().super.isa;
            v64 = [v62 itemAtIndexPath:v63];

            v65 = [v64 metadataObject];
            if (!v65)
            {

              (*v174)(v55, v54);
              sub_10030AD48(v29, _s23QueueSnapshotIdentifierOMa);
              v49 = v196;
              v50 = v189;
LABEL_25:
              v36 = v183;
              goto LABEL_10;
            }

            v66 = [v65 innermostModelObject];

            (*v174)(v55, v54);
            v49 = v196;
            v50 = v189;
          }

          else
          {
            v56 = v190;
            sub_10003D17C(v27, v190, &qword_10118AB00, &qword_100EC6460);
            v57 = v56;
            v58 = v179;
            sub_1000089F8(v57, v179, &qword_10118AB00, &qword_100EC6460);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v59 = *v58;
            }

            else
            {
              v67 = v177;
              sub_10003D17C(v58, v177, &qword_10118AB10, L"F\v!");
              v59 = SnapshotIdentifier.Lazy.object.getter(v178);
              sub_1000095E8(v67, &qword_10118AB10, L"F\v!");
            }

            v66 = [v59 innermostModelObject];

            sub_1000095E8(v190, &qword_10118AB00, &qword_100EC6460);
          }

          sub_10030AD48(v29, _s23QueueSnapshotIdentifierOMa);
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v194 = v205;
          }

          else
          {
          }

          goto LABEL_25;
        }

        v78 = _swiftEmptyArrayStorage;
        if (_swiftEmptyArrayStorage >> 62)
        {
          goto LABEL_62;
        }

LABEL_36:
        v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v79)
        {
          goto LABEL_37;
        }

LABEL_63:
        v193 = _swiftEmptyArrayStorage;
LABEL_64:

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v105 = Strong;
          v106 = swift_allocObject();
          *(v106 + 16) = v160;
          v107 = v159;
          sub_100650B10(v105, v193, sub_100309BDC, v106);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v103 = v176;
        goto LABEL_68;
      }

      goto LABEL_102;
    }

    if (sub_100432FF0())
    {
      v68 = *(v167 + v36);
      if (!v68)
      {
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v69 = v68;
      v70 = IndexPath.section.getter();
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
      v71 = v169;
      v72 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      v73 = (*(v168 + 8))(v22, v71);
      if ((v70 & 0x8000000000000000) != 0)
      {
        goto LABEL_98;
      }

      if (v70 >= *(v72 + 16))
      {
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      v74 = *(v72 + v70 + 32);

      if (v74 > 1)
      {
        if ((v74 - 2) < 3)
        {
          v75 = *(v167 + v36);
          if (!v75)
          {
LABEL_104:
            __break(1u);
            return;
          }

          v76 = v75;
          v77 = v166;
          dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

          if ((v194)(v77, 1, v193) == 1)
          {
            sub_10030AD48(v176, _s23QueueSnapshotIdentifierOMa);

            sub_1000095E8(v77, &unk_10118AAF0, &qword_100EC6458);
            return;
          }

          v36 = sub_100432DFC();
          sub_10030AD48(v77, _s23QueueSnapshotIdentifierOMa);
          v38 = v176;
          if (v36)
          {
            v113 = qword_10117F5F8;
            v73 = v36;
            if (v113 == -1)
            {
LABEL_78:
              v207 = &type metadata for Player.ChangeCommand;
              v208 = &protocol witness table for Player.ChangeCommand;
              v205 = v36;
              v114 = *(*qword_101218AC8 + 760);
              v115 = v73;
              v116 = v114(&v205);
              sub_10000959C(&v205);
              if (v116)
              {
                v117 = v167;
                v118 = *(v167 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY);
                v119 = sub_1002DCC7C();
                [v119 setContentOffset:0 animated:{0.0, v118}];

                *(v117 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection) = 3;
                sub_10010FC20(&unk_10118ABA0, &qword_100ECF240);
                v120 = swift_allocObject();
                *(v120 + 16) = xmmword_100EBC6B0;
                *(v120 + 56) = &type metadata for Player.ChangeCommand;
                *(v120 + 64) = &protocol witness table for Player.ChangeCommand;
                *(v120 + 32) = v36;
                v207 = &type metadata for Player.PlaybackCommand;
                v208 = &protocol witness table for Player.PlaybackCommand;
                LOBYTE(v205) = 0;
                v202 = &type metadata for Player.PlaybackCommand;
                v203 = &protocol witness table for Player.PlaybackCommand;
                LOBYTE(v201) = 0;
                v121 = v115;
                LOBYTE(v117) = v114(&v201);
                sub_10000959C(&v201);
                if (v117)
                {
                  sub_100008FE4(&v205, &v201);
                  v123 = *(v120 + 16);
                  v122 = *(v120 + 24);
                  if (v123 >= v122 >> 1)
                  {
                    v120 = sub_1004997C0((v122 > 1), v123 + 1, 1, v120);
                  }

                  sub_100309A88(&v201, v202);
                  v124 = __chkstk_darwin();
                  v126 = &v158 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
                  (*(v127 + 16))(v126, v124);
                  v128 = *v126;
                  v199 = &type metadata for Player.PlaybackCommand;
                  v200 = &protocol witness table for Player.PlaybackCommand;
                  LOBYTE(v198) = v128;
                  *(v120 + 16) = v123 + 1;
                  sub_100059A8C(&v198, v120 + 40 * v123 + 32);
                  sub_10000959C(&v201);
                }

                v129 = v161;
                sub_10000959C(&v205);
                v130 = type metadata accessor for TaskPriority();
                (*(*(v130 - 8) + 56))(v129, 1, 1, v130);
                type metadata accessor for MainActor();
                v131 = static MainActor.shared.getter();
                v132 = swift_allocObject();
                v132[2] = v131;
                v132[3] = &protocol witness table for MainActor;
                v132[4] = v120;
                sub_1001F57F4(0, 0, v129, &unk_100EC6508, v132);

                v103 = v38;
                goto LABEL_68;
              }

              sub_10030AD48(v38, _s23QueueSnapshotIdentifierOMa);

              goto LABEL_74;
            }

LABEL_100:
            v156 = v73;
            swift_once();
            v73 = v156;
            goto LABEL_78;
          }

          v112 = v176;
LABEL_73:
          sub_10030AD48(v112, _s23QueueSnapshotIdentifierOMa);
LABEL_74:

          return;
        }

LABEL_72:
        v112 = v176;
        goto LABEL_73;
      }

      if (v74)
      {
        goto LABEL_72;
      }

      v108 = v164;
      sub_1002F9274(v164);
      v109 = (*(v162 + 48))(v108, 1, v163);
      v110 = v176;
      v111 = v159;
      if (v109 == 1)
      {
        sub_10030AD48(v176, _s23QueueSnapshotIdentifierOMa);

        sub_1000095E8(v108, &qword_1011848A0, &unk_100EC64F0);
        return;
      }

      sub_100309144(v108, v165, type metadata accessor for PlaybackIntentDescriptor);
      v133 = PlaybackIntentDescriptor.intent.getter();
      v134 = Player.InsertCommand.init(location:playbackIntent:)(0, v133);
      v136 = v135;
      if (qword_10117F5F8 != -1)
      {
        v157 = v134;
        swift_once();
        v134 = v157;
      }

      v207 = &type metadata for Player.InsertCommand;
      v208 = &protocol witness table for Player.InsertCommand;
      v205 = v134;
      v206 = v136;
      v137 = *(*qword_101218AC8 + 760);
      v138 = v134;
      sub_1001DFD48(v136);
      v139 = v137(&v205);
      sub_10000959C(&v205);
      if (v139)
      {
        v140 = v167;
        v141 = *(v167 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY);
        v142 = sub_1002DCC7C();
        [v142 setContentOffset:1 animated:{0.0, v141}];

        *(v140 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection) = 3;
        sub_10010FC20(&unk_10118ABA0, &qword_100ECF240);
        v143 = swift_allocObject();
        *(v143 + 16) = xmmword_100EBDC20;
        *(v143 + 56) = &type metadata for Player.InsertCommand;
        *(v143 + 64) = &protocol witness table for Player.InsertCommand;
        *(v143 + 32) = v138;
        *(v143 + 40) = v136;
        *(v143 + 96) = &type metadata for Player.ChangeCommand;
        *(v143 + 104) = &protocol witness table for Player.ChangeCommand;
        *(v143 + 72) = 1;
        v207 = &type metadata for Player.PlaybackCommand;
        v208 = &protocol witness table for Player.PlaybackCommand;
        LOBYTE(v205) = 0;
        v202 = &type metadata for Player.PlaybackCommand;
        v203 = &protocol witness table for Player.PlaybackCommand;
        LOBYTE(v201) = 0;
        v144 = v138;
        sub_1001DFD48(v136);
        LOBYTE(v140) = v137(&v201);
        sub_10000959C(&v201);
        if (v140)
        {
          sub_100008FE4(&v205, &v201);
          v146 = *(v143 + 16);
          v145 = *(v143 + 24);
          if (v146 >= v145 >> 1)
          {
            v143 = sub_1004997C0((v145 > 1), v146 + 1, 1, v143);
          }

          sub_100309A88(&v201, v202);
          v147 = __chkstk_darwin();
          v149 = &v158 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v150 + 16))(v149, v147);
          v151 = *v149;
          v199 = &type metadata for Player.PlaybackCommand;
          v200 = &protocol witness table for Player.PlaybackCommand;
          LOBYTE(v198) = v151;
          *(v143 + 16) = v146 + 1;
          sub_100059A8C(&v198, v143 + 40 * v146 + 32);
          sub_10000959C(&v201);
        }

        sub_10000959C(&v205);
        v152 = type metadata accessor for TaskPriority();
        v153 = v161;
        (*(*(v152 - 8) + 56))(v161, 1, 1, v152);
        type metadata accessor for MainActor();
        v154 = static MainActor.shared.getter();
        v155 = swift_allocObject();
        v155[2] = v154;
        v155[3] = &protocol witness table for MainActor;
        v155[4] = v143;
        sub_1001F57F4(0, 0, v153, &unk_100EC6518, v155);

        sub_100309AD8(v136);
        sub_10030AD48(v165, type metadata accessor for PlaybackIntentDescriptor);
        v103 = v176;
      }

      else
      {

        sub_100309AD8(v136);
        sub_10030AD48(v165, type metadata accessor for PlaybackIntentDescriptor);
        v103 = v110;
      }
    }

    else
    {
      static ApplicationCapabilities.shared.getter(&v205);
      sub_100014984(&v205);
      if (v206)
      {
        goto LABEL_72;
      }

      v99 = v176;
      v100 = sub_1004329EC();
      v101 = v159;
      if (!v100)
      {
        sub_10030AD48(v99, _s23QueueSnapshotIdentifierOMa);

        return;
      }

      v201 = v100;
      v204 = 1;
      v102 = v100;
      static SubscriptionUpsellPresenter.present(for:)(&v201);

      sub_100309980(&v201);
      v103 = v99;
    }

LABEL_68:
    sub_10030AD48(v103, _s23QueueSnapshotIdentifierOMa);
  }
}

uint64_t sub_1002FCDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v6;
  v4[11] = v5;

  return _swift_task_switch(sub_1002FCE84, v6, v5);
}

uint64_t sub_1002FCE84()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = &_s18NowPlayingUISourceON;
  *(v0 + 48) = &off_10109D788;
  *(v0 + 16) = 1;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1002FCF80;
  v2 = *(v0 + 64);

  return PlaybackController.perform(_:route:intent:issuer:)(v2, 0, 0, v0 + 16);
}

uint64_t sub_1002FCF80(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1002FD130;
  }

  else
  {
    v4[13] = a1;
    sub_1000095E8((v4 + 2), &unk_101183910, &unk_100EBDD00);
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1002FD0C4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1002FD0C4()
{
  v1 = *(v0 + 104);

  **(v0 + 56) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002FD130()
{

  sub_1000095E8(v0 + 16, &unk_101183910, &unk_100EBDD00);
  **(v0 + 56) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002FD1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v6;
  v4[11] = v5;

  return _swift_task_switch(sub_1002FD248, v6, v5);
}

uint64_t sub_1002FD248()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = &_s18NowPlayingUISourceON;
  *(v0 + 48) = &off_10109D788;
  *(v0 + 16) = 1;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1002FD344;
  v2 = *(v0 + 64);

  return PlaybackController.perform(_:route:intent:issuer:)(v2, 0, 0, v0 + 16);
}

uint64_t sub_1002FD344(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_10030B03C;
  }

  else
  {
    v4[13] = a1;
    sub_1000095E8((v4 + 2), &unk_101183910, &unk_100EBDD00);
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_10030B044;
  }

  return _swift_task_switch(v7, v5, v6);
}

void sub_1002FD584(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1002F9024(a2);
  }
}

void sub_1002FD678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v554 = a6;
  v568 = a5;
  v579 = a4;
  v6 = type metadata accessor for UploadedVideo();
  v503 = *(v6 - 8);
  v504 = v6;
  __chkstk_darwin();
  v502 = &v494[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UploadedAudio();
  v513 = *(v8 - 8);
  v514 = v8;
  __chkstk_darwin();
  v512 = &v494[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v571 = type metadata accessor for MusicMovie();
  v570 = *(v571 - 8);
  __chkstk_darwin();
  v569 = &v494[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for TVEpisode();
  v523 = *(v11 - 8);
  v524 = v11;
  __chkstk_darwin();
  v522 = &v494[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for MusicVideo();
  v545 = *(v13 - 8);
  v546 = v13;
  __chkstk_darwin();
  v544 = &v494[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for UUID();
  v561 = *(v15 - 8);
  __chkstk_darwin();
  v560 = &v494[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v556 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v508 = &v494[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v518 = &v494[-v18];
  __chkstk_darwin();
  v576 = &v494[-v19];
  __chkstk_darwin();
  v528 = &v494[-v20];
  __chkstk_darwin();
  v550 = &v494[-v21];
  __chkstk_darwin();
  v559 = &v494[-v22];
  v551 = v23;
  __chkstk_darwin();
  v538 = &v494[-v24];
  v555 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v507 = &v494[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v517 = &v494[-v26];
  __chkstk_darwin();
  v575 = &v494[-v27];
  __chkstk_darwin();
  v527 = &v494[-v28];
  __chkstk_darwin();
  v549 = &v494[-v29];
  __chkstk_darwin();
  v558 = &v494[-v30];
  v557 = v31;
  __chkstk_darwin();
  v537 = &v494[-v32];
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v498 = &v494[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v506 = &v494[-v34];
  __chkstk_darwin();
  v505 = &v494[-v35];
  __chkstk_darwin();
  v516 = &v494[-v36];
  __chkstk_darwin();
  v547 = &v494[-v37];
  __chkstk_darwin();
  v574 = &v494[-v38];
  __chkstk_darwin();
  v515 = &v494[-v39];
  __chkstk_darwin();
  v526 = &v494[-v40];
  __chkstk_darwin();
  v535 = &v494[-v41];
  __chkstk_darwin();
  v548 = &v494[-v42];
  __chkstk_darwin();
  v525 = &v494[-v43];
  __chkstk_darwin();
  v536 = &v494[-v44];
  v45 = type metadata accessor for Song();
  v533 = *(v45 - 8);
  v534 = v45;
  __chkstk_darwin();
  v532 = &v494[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v496 = &v494[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v497 = &v494[-v48];
  __chkstk_darwin();
  v500 = &v494[-v49];
  __chkstk_darwin();
  v501 = &v494[-v50];
  __chkstk_darwin();
  v542 = &v494[-v51];
  __chkstk_darwin();
  v543 = &v494[-v52];
  __chkstk_darwin();
  v510 = &v494[-v53];
  __chkstk_darwin();
  v511 = &v494[-v54];
  __chkstk_darwin();
  v530 = &v494[-v55];
  __chkstk_darwin();
  v531 = &v494[-v56];
  __chkstk_darwin();
  v520 = &v494[-v57];
  __chkstk_darwin();
  v521 = &v494[-v58];
  __chkstk_darwin();
  v581 = &v494[-v59];
  __chkstk_darwin();
  v582 = &v494[-v60];
  v583 = type metadata accessor for Actions.PlaybackContext(0);
  v580 = *(v583 - 8);
  __chkstk_darwin();
  v62 = &v494[-((v61 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v562 = type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context(0);
  v563 = *(v562 - 8);
  __chkstk_darwin();
  v565 = &v494[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v564 = v63;
  __chkstk_darwin();
  v65 = &v494[-v64];
  v566 = sub_10010FC20(&qword_10118AB30, &unk_100EC64A0);
  v552 = *(v566 - 1);
  __chkstk_darwin();
  v495 = &v494[-((v66 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v499 = &v494[-v67];
  __chkstk_darwin();
  v541 = &v494[-v68];
  __chkstk_darwin();
  v509 = &v494[-v69];
  __chkstk_darwin();
  v529 = &v494[-v70];
  __chkstk_darwin();
  v519 = &v494[-v71];
  v553 = v72;
  __chkstk_darwin();
  v584 = &v494[-v73];
  v577 = type metadata accessor for GenericMusicItem();
  v578 = *(v577 - 8);
  __chkstk_darwin();
  v540._rawValue = &v494[-((v74 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v567 = &v494[-v75];
  __chkstk_darwin();
  v77 = &v494[-v76];
  v78 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v79 = *(v78 - 8);
  __chkstk_darwin();
  v81 = &v494[-v80];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v83 = Strong;
  v539 = v15;
  v572 = v62;
  v573 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v84 = *(Strong + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (!v84)
  {
    __break(1u);
LABEL_175:
    __break(1u);
    return;
  }

  v85 = v84;
  v86 = IndexPath.section.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v87 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v79 + 8))(v81, v78);
  if ((v86 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_172;
  }

  if (v86 >= *(v87 + 16))
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v88 = *(v87 + v86 + 32);

  if (v88)
  {
    v89 = 0;
    v90 = &off_10109A378;
  }

  else
  {
    sub_100009F78(0, &qword_10118AB70, MPCPlaybackIntent_ptr);
    (*(v578 + 2))(v77, v579, v577);
    v91 = MPCPlaybackIntent.init(for:)();
    v92 = v91;
    v89 = v91;
    v90 = _swiftEmptyArrayStorage;
  }

  v540._rawValue = v90;
  v93 = v573;
  v573 = v89;
  v94 = *&v93[v83];
  if (!v94)
  {
    goto LABEL_175;
  }

  v95 = v562;
  sub_1003090DC(v568, v65 + *(v562 + 20), _s23QueueSnapshotIdentifierOMa);
  v96 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *v65 = v94;
  v97 = (v65 + *(v95 + 24));
  *v97 = sub_100309364;
  v97[1] = v96;
  v98 = v584;
  sub_1003090DC(v65, v584, type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context);
  v99 = v565;
  sub_1003090DC(v65, v565, type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context);
  v100 = (*(v563 + 80) + 16) & ~*(v563 + 80);
  v568 = v83;
  v101 = swift_allocObject();
  sub_100309144(v99, v101 + v100, type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context);
  sub_100309144(v65, v99, type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context);
  v102 = swift_allocObject();
  sub_100309144(v99, v102 + v100, type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context);
  v103 = v566;
  v98[v566[9]] = 21;
  *&v98[v103[11]] = 0x4014000000000000;
  v104 = &v98[v103[10]];
  *v104 = sub_10030936C;
  v104[1] = v101;
  v105 = &v98[v103[12]];
  *v105 = &unk_100EC64B8;
  v105[1] = v102;
  v106 = &v98[v103[13]];
  *v106 = &unk_100EC64C0;
  v106[1] = 0;
  v77 = v582;
  PlaybackIntentDescriptor.IntentType.init(_:)(v573, v582);
  *(&v600 + 1) = &_s18NowPlayingUISourceON;
  *&v601 = &off_10109D788;
  LOBYTE(v599) = 1;
  v107 = qword_10117F608;
  v83 = v568;
  v108 = v94;
  if (v107 != -1)
  {
LABEL_173:
    swift_once();
  }

  v109 = qword_101218AD8;
  sub_1000089F8(v77, v581, &unk_1011838E0, &unk_100EC1670);
  v568 = v109;
  v110 = UIViewController.playActivityInformation.getter();
  v112 = v111;
  v114 = v113;
  v116 = v115;
  sub_1000089F8(&v599, &v591, &unk_101183910, &unk_100EBDD00);
  v117 = v572;
  if (*(&v592 + 1))
  {
    sub_100059A8C(&v591, &v595);
  }

  else
  {
    *&v607 = v83;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v118 = v83;
    sub_10010FC20(&unk_101183920, &unk_100EC0330);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v610, &v595);
    }

    else
    {
      v612 = 0;
      v610 = 0u;
      v611 = 0u;
      *&v595 = v118;
      v119 = v118;
      v120 = String.init<A>(reflecting:)();
      v596 = &type metadata for Player.CommandIssuerIdentity;
      v597 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v595 = v120;
      *(&v595 + 1) = v121;
      if (*(&v611 + 1))
      {
        sub_1000095E8(&v610, &unk_101183910, &unk_100EBDD00);
      }
    }

    if (*(&v592 + 1))
    {
      sub_1000095E8(&v591, &unk_101183910, &unk_100EBDD00);
    }
  }

  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v568, v581, v110, v112, v114, v116, &v595, v117);

  sub_1000095E8(v582, &unk_1011838E0, &unk_100EC1670);
  sub_1000095E8(&v599, &unk_101183910, &unk_100EBDD00);
  v122 = v578;
  v123 = v567;
  v124 = v577;
  (*(v578 + 2))(v567, v579, v577);
  v125 = (*(v122 + 11))(v123, v124);
  v566 = v83;
  if (v125 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v122 + 12))(v123, v124);
    v126 = v570;
    v127 = v569;
    v128 = v123;
    v129 = v571;
    (*(v570 + 32))(v569, v128, v571);
    sub_10010FC20(&unk_101183900, &unk_100EC1680);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_100EBC6B0;
    *(v130 + 56) = v129;
    *(v130 + 64) = sub_100309644(&unk_10118AB60, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    v131 = sub_10001C8B8((v130 + 32));
    (*(v126 + 16))(v131, v127, v129);
    v132 = [v83 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v582 = v599;
    v133 = v574;
    sub_1003090DC(v117, v574, type metadata accessor for Actions.PlaybackContext);
    (*(v580 + 7))(v133, 0, 1, v583);
    v134 = type metadata accessor for PlaylistContext(0);
    (*(*(v134 - 8) + 56))(v575, 1, 1, v134);
    v601 = 0u;
    v602 = 0u;
    v599 = 0u;
    v600 = 0u;
    v603 = 1;
    v604 = 0;
    v606 = 0;
    v605 = 0;
    v135 = v576;
    sub_1003090DC(v554, v576, type metadata accessor for Actions.MetricsReportingContext);
    v136 = type metadata accessor for Actions.MetricsReportingContext(0);
    (*(*(v136 - 8) + 56))(v135, 0, 1, v136);
    v137 = v541;
    sub_1000089F8(v584, v541, &qword_10118AB30, &unk_100EC64A0);
    v138 = (*(v552 + 80) + 16) & ~*(v552 + 80);
    v139 = swift_allocObject();
    sub_10003D17C(v137, &v139[v138], &qword_10118AB30, &unk_100EC64A0);
    sub_100008FE4(v130 + 32, v598);

    sub_1000089F8(&v599, &v591, &unk_1011845E0, &unk_100EBF3A0);
    if (v594 == 1)
    {
      v612 = 0;
      v610 = 0u;
      v611 = 0u;
      v613 = xmmword_100EBCEF0;
      PresentationSource.init(viewController:position:)(v83, &v610, &v595);
      v140 = v547;
      if (v594 != 1)
      {
        sub_1000095E8(&v591, &unk_1011845E0, &unk_100EBF3A0);
      }
    }

    else
    {
      sub_10012B828(&v591, &v595);
      v140 = v547;
    }

    swift_getObjectType();
    v156 = swift_conformsToProtocol2();
    v157 = v583;
    v581 = v139;
    if (v156)
    {
      v577 = v156;
      v158 = v83;
      v578 = v83;
    }

    else
    {
      v578 = 0;
      v577 = 0;
    }

    v579 = swift_allocBox();
    v174 = v173;
    sub_1000089F8(v574, v140, &unk_10118AB20, &unk_100EBF390);
    v175 = *(v580 + 6);
    if (v175(v140, 1, v157) == 1)
    {
      v176 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
      v177 = v543;
      (*(*(v176 - 8) + 56))(v543, 1, 1, v176);
      v593 = 0;
      v591 = 0u;
      v592 = 0u;
      sub_1000089F8(v177, v542, &unk_1011838E0, &unk_100EC1670);
      v580 = v568;
      v178 = UIViewController.playActivityInformation.getter();
      v180 = v179;
      v182 = v181;
      v184 = v183;
      sub_1000089F8(&v591, &v589, &unk_101183910, &unk_100EBDD00);
      if (v590)
      {
        sub_100059A8C(&v589, &v607);
      }

      else
      {
        v588 = v83;
        sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
        v202 = v83;
        sub_10010FC20(&unk_101183920, &unk_100EC0330);
        if (swift_dynamicCast())
        {
          sub_100059A8C(&v585, &v607);
          v157 = v583;
        }

        else
        {
          v587 = 0;
          v585 = 0u;
          v586 = 0u;
          *&v607 = v202;
          v232 = v202;
          v233 = String.init<A>(reflecting:)();
          *(&v608 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v609 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v607 = v233;
          *(&v607 + 1) = v234;
          v157 = v583;
          if (*(&v586 + 1))
          {
            sub_1000095E8(&v585, &unk_101183910, &unk_100EBDD00);
          }
        }

        v83 = v566;
        if (v590)
        {
          sub_1000095E8(&v589, &unk_101183910, &unk_100EBDD00);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v580, v542, v178, v180, v182, v184, &v607, v174);
      sub_1000095E8(&v591, &unk_101183910, &unk_100EBDD00);
      sub_1000095E8(v543, &unk_1011838E0, &unk_100EC1670);
      v235 = v547;
      if (v175(v547, 1, v157) != 1)
      {
        sub_1000095E8(v235, &unk_10118AB20, &unk_100EBF390);
      }
    }

    else
    {
      sub_100309144(v140, v174, type metadata accessor for Actions.PlaybackContext);
    }

    v236 = &v174[*(v157 + 28)];
    sub_1000089F8(v236, &v607, &unk_101183910, &unk_100EBDD00);
    if (*(&v608 + 1))
    {
      sub_100059A8C(&v607, &v591);
      v237 = v551;
    }

    else
    {
      *&v591 = v83;
      v238 = v83;
      v239 = String.init<A>(reflecting:)();
      *(&v592 + 1) = &type metadata for Player.CommandIssuerIdentity;
      v593 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v591 = v239;
      *(&v591 + 1) = v240;
      v237 = v551;
      if (*(&v608 + 1))
      {
        sub_1000095E8(&v607, &unk_101183910, &unk_100EBDD00);
      }
    }

    sub_10010FC20(&unk_101183930, &unk_100EC1690);
    v241 = swift_allocObject();
    *(v241 + 16) = xmmword_100EBDC20;
    *(v241 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v241 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v241 + 32) = 0x4D747865746E6F43;
    *(v241 + 40) = 0xEB00000000756E65;
    sub_100008FE4(&v591, v241 + 72);
    v242 = static Player.CommandIssuer<>.combining(_:)(v241);
    v244 = v243;

    sub_10000959C(&v591);
    *(&v592 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v593 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v591 = v242;
    *(&v591 + 1) = v244;
    sub_10006B010(&v591, v236, &unk_101183910, &unk_100EBDD00);
    sub_100008FE4(v598, &v591);
    sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
    v583 = String.init<A>(describing:)();
    v580 = v245;
    v568 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008FE4(v598, &v589);
    sub_10012B7A8(&v595, &v591);
    v246 = v559;
    sub_1000089F8(v576, v559, &unk_1011838D0, &unk_100EC0320);
    v247 = v558;
    sub_1000089F8(v575, v558, &unk_1011845D0, &unk_100EBF380);
    v248 = (*(v556 + 80) + 160) & ~*(v556 + 80);
    v249 = (v237 + v248 + 7) & 0xFFFFFFFFFFFFFFF8;
    v250 = (v249 + 15) & 0xFFFFFFFFFFFFFFF8;
    v251 = (*(v555 + 80) + v250 + 8) & ~*(v555 + 80);
    v252 = (v251 + v557 + 7) & 0xFFFFFFFFFFFFFFF8;
    v253 = (v251 + v557 + 31) & 0xFFFFFFFFFFFFFFF8;
    v254 = swift_allocObject();
    sub_100059A8C(&v589, v254 + 16);
    *(v254 + 56) = v582;
    sub_10012B828(&v591, v254 + 64);
    sub_10003D17C(v246, v254 + v248, &unk_1011838D0, &unk_100EC0320);
    *(v254 + v249) = v568;
    *(v254 + v250) = v579;
    sub_10003D17C(v247, v254 + v251, &unk_1011845D0, &unk_100EBF380);
    v255 = v254 + v252;
    v256 = v577;
    *v255 = v578;
    *(v255 + 8) = v256;
    *(v255 + 16) = 1;
    v257 = (v254 + v253);
    v258 = v581;
    *v257 = sub_10030B048;
    v257[1] = v258;
    swift_unknownObjectRetain();

    v259 = v560;
    UUID.init()();
    v260 = UUID.uuidString.getter();
    v262 = v261;
    (*(v561 + 8))(v259, v539);
    v614._countAndFlagsBits = v583;
    v614._object = v580;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v607, v614, v260, v262, sub_10021953C, v254);
    swift_unknownObjectRelease();
    sub_10012BA6C(&v595);
    sub_10000959C(v598);

    ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v540, 0);

    v595 = v607;
    sub_100015BB0(&v595);
    v591 = v608;
    sub_100015BB0(&v591);

    sub_1000095E8(v576, &unk_1011838D0, &unk_100EC0320);
    sub_1000095E8(&v599, &unk_1011845E0, &unk_100EBF3A0);
    sub_1000095E8(v575, &unk_1011845D0, &unk_100EBF380);
    sub_1000095E8(v574, &unk_10118AB20, &unk_100EBF390);
    (*(v570 + 8))(v569, v571);
LABEL_170:
    sub_10030AD48(v572, type metadata accessor for Actions.PlaybackContext);
    sub_1000095E8(v584, &qword_10118AB30, &unk_100EC64A0);
    return;
  }

  if (v125 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v122 + 12))(v123, v124);
    v142 = v544;
    v141 = v545;
    v143 = v123;
    v144 = v546;
    (*(v545 + 32))(v544, v143, v546);
    sub_10010FC20(&unk_101183900, &unk_100EC1680);
    v145 = swift_allocObject();
    *(v145 + 16) = xmmword_100EBC6B0;
    *(v145 + 56) = v144;
    *(v145 + 64) = &protocol witness table for MusicVideo;
    v146 = sub_10001C8B8((v145 + 32));
    (*(v141 + 16))(v146, v142, v144);
    v147 = [v83 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v582 = v599;
    v148 = v548;
    sub_1003090DC(v117, v548, type metadata accessor for Actions.PlaybackContext);
    (*(v580 + 7))(v148, 0, 1, v583);
    v149 = type metadata accessor for PlaylistContext(0);
    (*(*(v149 - 8) + 56))(v549, 1, 1, v149);
    v601 = 0u;
    v602 = 0u;
    v599 = 0u;
    v600 = 0u;
    v603 = 1;
    v604 = 0;
    v606 = 0;
    v605 = 0;
    v150 = v550;
    sub_1003090DC(v554, v550, type metadata accessor for Actions.MetricsReportingContext);
    v151 = type metadata accessor for Actions.MetricsReportingContext(0);
    (*(*(v151 - 8) + 56))(v150, 0, 1, v151);
    v152 = v529;
    sub_1000089F8(v584, v529, &qword_10118AB30, &unk_100EC64A0);
    v153 = (*(v552 + 80) + 16) & ~*(v552 + 80);
    v154 = swift_allocObject();
    sub_10003D17C(v152, &v154[v153], &qword_10118AB30, &unk_100EC64A0);
    sub_100008FE4(v145 + 32, v598);

    sub_1000089F8(&v599, &v591, &unk_1011845E0, &unk_100EBF3A0);
    if (v594 == 1)
    {
      v612 = 0;
      v610 = 0u;
      v611 = 0u;
      v613 = xmmword_100EBCEF0;
      PresentationSource.init(viewController:position:)(v83, &v610, &v595);
      v155 = v535;
      if (v594 != 1)
      {
        sub_1000095E8(&v591, &unk_1011845E0, &unk_100EBF3A0);
      }
    }

    else
    {
      sub_10012B828(&v591, &v595);
      v155 = v535;
    }

    swift_getObjectType();
    v185 = swift_conformsToProtocol2();
    v186 = v583;
    v581 = v154;
    if (v185)
    {
      v577 = v185;
      v187 = v83;
      v578 = v83;
    }

    else
    {
      v578 = 0;
      v577 = 0;
    }

    v579 = swift_allocBox();
    v204 = v203;
    sub_1000089F8(v548, v155, &unk_10118AB20, &unk_100EBF390);
    v205 = *(v580 + 6);
    if (v205(v155, 1, v186) == 1)
    {
      v206 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
      v207 = v531;
      (*(*(v206 - 8) + 56))(v531, 1, 1, v206);
      v593 = 0;
      v591 = 0u;
      v592 = 0u;
      sub_1000089F8(v207, v530, &unk_1011838E0, &unk_100EC1670);
      v580 = v568;
      v208 = UIViewController.playActivityInformation.getter();
      v210 = v209;
      v212 = v211;
      v214 = v213;
      sub_1000089F8(&v591, &v589, &unk_101183910, &unk_100EBDD00);
      if (v590)
      {
        sub_100059A8C(&v589, &v607);
      }

      else
      {
        v588 = v83;
        sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
        v263 = v83;
        sub_10010FC20(&unk_101183920, &unk_100EC0330);
        if (swift_dynamicCast())
        {
          sub_100059A8C(&v585, &v607);
          v186 = v583;
        }

        else
        {
          v587 = 0;
          v585 = 0u;
          v586 = 0u;
          *&v607 = v263;
          v293 = v263;
          v294 = String.init<A>(reflecting:)();
          *(&v608 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v609 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v607 = v294;
          *(&v607 + 1) = v295;
          v186 = v583;
          if (*(&v586 + 1))
          {
            sub_1000095E8(&v585, &unk_101183910, &unk_100EBDD00);
          }
        }

        v83 = v566;
        if (v590)
        {
          sub_1000095E8(&v589, &unk_101183910, &unk_100EBDD00);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v580, v530, v208, v210, v212, v214, &v607, v204);
      sub_1000095E8(&v591, &unk_101183910, &unk_100EBDD00);
      sub_1000095E8(v531, &unk_1011838E0, &unk_100EC1670);
      v296 = v535;
      if (v205(v535, 1, v186) != 1)
      {
        sub_1000095E8(v296, &unk_10118AB20, &unk_100EBF390);
      }
    }

    else
    {
      sub_100309144(v155, v204, type metadata accessor for Actions.PlaybackContext);
    }

    v297 = &v204[*(v186 + 28)];
    sub_1000089F8(v297, &v607, &unk_101183910, &unk_100EBDD00);
    if (*(&v608 + 1))
    {
      sub_100059A8C(&v607, &v591);
      v298 = v551;
    }

    else
    {
      *&v591 = v83;
      v299 = v83;
      v300 = String.init<A>(reflecting:)();
      *(&v592 + 1) = &type metadata for Player.CommandIssuerIdentity;
      v593 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v591 = v300;
      *(&v591 + 1) = v301;
      v298 = v551;
      if (*(&v608 + 1))
      {
        sub_1000095E8(&v607, &unk_101183910, &unk_100EBDD00);
      }
    }

    sub_10010FC20(&unk_101183930, &unk_100EC1690);
    v302 = swift_allocObject();
    *(v302 + 16) = xmmword_100EBDC20;
    *(v302 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v302 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v302 + 32) = 0x4D747865746E6F43;
    *(v302 + 40) = 0xEB00000000756E65;
    sub_100008FE4(&v591, v302 + 72);
    v303 = static Player.CommandIssuer<>.combining(_:)(v302);
    v305 = v304;

    sub_10000959C(&v591);
    *(&v592 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v593 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v591 = v303;
    *(&v591 + 1) = v305;
    sub_10006B010(&v591, v297, &unk_101183910, &unk_100EBDD00);
    sub_100008FE4(v598, &v591);
    sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
    v583 = String.init<A>(describing:)();
    v580 = v306;
    v576 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008FE4(v598, &v589);
    sub_10012B7A8(&v595, &v591);
    v307 = v559;
    sub_1000089F8(v550, v559, &unk_1011838D0, &unk_100EC0320);
    v308 = v558;
    sub_1000089F8(v549, v558, &unk_1011845D0, &unk_100EBF380);
    v309 = (*(v556 + 80) + 160) & ~*(v556 + 80);
    v310 = (v298 + v309 + 7) & 0xFFFFFFFFFFFFFFF8;
    v311 = (v310 + 15) & 0xFFFFFFFFFFFFFFF8;
    v312 = (*(v555 + 80) + v311 + 8) & ~*(v555 + 80);
    v313 = (v312 + v557 + 7) & 0xFFFFFFFFFFFFFFF8;
    v314 = (v312 + v557 + 31) & 0xFFFFFFFFFFFFFFF8;
    v315 = swift_allocObject();
    sub_100059A8C(&v589, v315 + 16);
    *(v315 + 56) = v582;
    sub_10012B828(&v591, v315 + 64);
    sub_10003D17C(v307, v315 + v309, &unk_1011838D0, &unk_100EC0320);
    *(v315 + v310) = v576;
    *(v315 + v311) = v579;
    sub_10003D17C(v308, v315 + v312, &unk_1011845D0, &unk_100EBF380);
    v316 = v315 + v313;
    v317 = v577;
    *v316 = v578;
    *(v316 + 8) = v317;
    *(v316 + 16) = 1;
    v318 = (v315 + v314);
    v319 = v581;
    *v318 = sub_10030B048;
    v318[1] = v319;
    swift_unknownObjectRetain();

    v320 = v560;
    UUID.init()();
    v321 = UUID.uuidString.getter();
    v323 = v322;
    (*(v561 + 8))(v320, v539);
    v615._countAndFlagsBits = v583;
    v615._object = v580;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v607, v615, v321, v323, sub_10021953C, v315);
    swift_unknownObjectRelease();
    sub_10012BA6C(&v595);
    sub_10000959C(v598);

    ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v540, 0);

    v595 = v607;
    sub_100015BB0(&v595);
    v591 = v608;
    sub_100015BB0(&v591);

    sub_1000095E8(v550, &unk_1011838D0, &unk_100EC0320);
    sub_1000095E8(&v599, &unk_1011845E0, &unk_100EBF3A0);
    sub_1000095E8(v549, &unk_1011845D0, &unk_100EBF380);
    sub_1000095E8(v548, &unk_10118AB20, &unk_100EBF390);
    (*(v545 + 8))(v544, v546);
    goto LABEL_170;
  }

  if (v125 == enum case for GenericMusicItem.song(_:))
  {
    (*(v122 + 12))(v123, v124);
    v160 = v532;
    v159 = v533;
    v161 = v123;
    v162 = v534;
    (*(v533 + 32))(v532, v161, v534);
    sub_10010FC20(&unk_101183900, &unk_100EC1680);
    v163 = swift_allocObject();
    *(v163 + 16) = xmmword_100EBC6B0;
    *(v163 + 56) = v162;
    *(v163 + 64) = &protocol witness table for Song;
    v164 = sub_10001C8B8((v163 + 32));
    (*(v159 + 16))(v164, v160, v162);
    v165 = [v83 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v582 = v599;
    v166 = v536;
    sub_1003090DC(v117, v536, type metadata accessor for Actions.PlaybackContext);
    (*(v580 + 7))(v166, 0, 1, v583);
    v167 = type metadata accessor for PlaylistContext(0);
    (*(*(v167 - 8) + 56))(v537, 1, 1, v167);
    v601 = 0u;
    v602 = 0u;
    v599 = 0u;
    v600 = 0u;
    v603 = 1;
    v604 = 0;
    v606 = 0;
    v605 = 0;
    v168 = v538;
    sub_1003090DC(v554, v538, type metadata accessor for Actions.MetricsReportingContext);
    v169 = type metadata accessor for Actions.MetricsReportingContext(0);
    (*(*(v169 - 8) + 56))(v168, 0, 1, v169);
    v170 = v519;
    sub_1000089F8(v584, v519, &qword_10118AB30, &unk_100EC64A0);
    v171 = (*(v552 + 80) + 16) & ~*(v552 + 80);
    v581 = swift_allocObject();
    sub_10003D17C(v170, &v581[v171], &qword_10118AB30, &unk_100EC64A0);
    sub_100008FE4(v163 + 32, v598);

    sub_1000089F8(&v599, &v591, &unk_1011845E0, &unk_100EBF3A0);
    if (v594 == 1)
    {
      v612 = 0;
      v610 = 0u;
      v611 = 0u;
      v613 = xmmword_100EBCEF0;
      PresentationSource.init(viewController:position:)(v83, &v610, &v595);
      v172 = v525;
      if (v594 != 1)
      {
        sub_1000095E8(&v591, &unk_1011845E0, &unk_100EBF3A0);
      }
    }

    else
    {
      sub_10012B828(&v591, &v595);
      v172 = v525;
    }

    swift_getObjectType();
    v215 = swift_conformsToProtocol2();
    v216 = v583;
    if (v215)
    {
      v577 = v215;
      v217 = v83;
      v578 = v83;
    }

    else
    {
      v578 = 0;
      v577 = 0;
    }

    v579 = swift_allocBox();
    v265 = v264;
    sub_1000089F8(v536, v172, &unk_10118AB20, &unk_100EBF390);
    v266 = *(v580 + 6);
    if (v266(v172, 1, v216) == 1)
    {
      v267 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
      v268 = v521;
      (*(*(v267 - 8) + 56))(v521, 1, 1, v267);
      v593 = 0;
      v591 = 0u;
      v592 = 0u;
      sub_1000089F8(v268, v520, &unk_1011838E0, &unk_100EC1670);
      v580 = v568;
      v269 = UIViewController.playActivityInformation.getter();
      v271 = v270;
      v273 = v272;
      v275 = v274;
      sub_1000089F8(&v591, &v589, &unk_101183910, &unk_100EBDD00);
      if (v590)
      {
        sub_100059A8C(&v589, &v607);
      }

      else
      {
        v588 = v83;
        sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
        v324 = v83;
        sub_10010FC20(&unk_101183920, &unk_100EC0330);
        if (swift_dynamicCast())
        {
          sub_100059A8C(&v585, &v607);
          v216 = v583;
        }

        else
        {
          v587 = 0;
          v585 = 0u;
          v586 = 0u;
          *&v607 = v324;
          v340 = v324;
          v341 = String.init<A>(reflecting:)();
          *(&v608 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v609 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v607 = v341;
          *(&v607 + 1) = v342;
          v216 = v583;
          if (*(&v586 + 1))
          {
            sub_1000095E8(&v585, &unk_101183910, &unk_100EBDD00);
          }
        }

        v83 = v566;
        if (v590)
        {
          sub_1000095E8(&v589, &unk_101183910, &unk_100EBDD00);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v580, v520, v269, v271, v273, v275, &v607, v265);
      sub_1000095E8(&v591, &unk_101183910, &unk_100EBDD00);
      sub_1000095E8(v521, &unk_1011838E0, &unk_100EC1670);
      v343 = v525;
      if (v266(v525, 1, v216) != 1)
      {
        sub_1000095E8(v343, &unk_10118AB20, &unk_100EBF390);
      }
    }

    else
    {
      sub_100309144(v172, v265, type metadata accessor for Actions.PlaybackContext);
    }

    v344 = &v265[*(v216 + 28)];
    sub_1000089F8(v344, &v607, &unk_101183910, &unk_100EBDD00);
    if (*(&v608 + 1))
    {
      sub_100059A8C(&v607, &v591);
      v345 = v551;
    }

    else
    {
      *&v591 = v83;
      v346 = v83;
      v347 = String.init<A>(reflecting:)();
      *(&v592 + 1) = &type metadata for Player.CommandIssuerIdentity;
      v593 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v591 = v347;
      *(&v591 + 1) = v348;
      v345 = v551;
      if (*(&v608 + 1))
      {
        sub_1000095E8(&v607, &unk_101183910, &unk_100EBDD00);
      }
    }

    sub_10010FC20(&unk_101183930, &unk_100EC1690);
    v349 = swift_allocObject();
    *(v349 + 16) = xmmword_100EBDC20;
    *(v349 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v349 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v349 + 32) = 0x4D747865746E6F43;
    *(v349 + 40) = 0xEB00000000756E65;
    sub_100008FE4(&v591, v349 + 72);
    v350 = static Player.CommandIssuer<>.combining(_:)(v349);
    v352 = v351;

    sub_10000959C(&v591);
    *(&v592 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v593 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v591 = v350;
    *(&v591 + 1) = v352;
    sub_10006B010(&v591, v344, &unk_101183910, &unk_100EBDD00);
    sub_100008FE4(v598, &v591);
    sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
    v583 = String.init<A>(describing:)();
    v580 = v353;
    v576 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008FE4(v598, &v589);
    sub_10012B7A8(&v595, &v591);
    v354 = v559;
    sub_1000089F8(v538, v559, &unk_1011838D0, &unk_100EC0320);
    v355 = v558;
    sub_1000089F8(v537, v558, &unk_1011845D0, &unk_100EBF380);
    v356 = (*(v556 + 80) + 160) & ~*(v556 + 80);
    v357 = (v345 + v356 + 7) & 0xFFFFFFFFFFFFFFF8;
    v358 = (v357 + 15) & 0xFFFFFFFFFFFFFFF8;
    v359 = (*(v555 + 80) + v358 + 8) & ~*(v555 + 80);
    v360 = (v359 + v557 + 7) & 0xFFFFFFFFFFFFFFF8;
    v361 = (v359 + v557 + 31) & 0xFFFFFFFFFFFFFFF8;
    v362 = swift_allocObject();
    sub_100059A8C(&v589, v362 + 16);
    *(v362 + 56) = v582;
    sub_10012B828(&v591, v362 + 64);
    sub_10003D17C(v354, v362 + v356, &unk_1011838D0, &unk_100EC0320);
    *(v362 + v357) = v576;
    *(v362 + v358) = v579;
    sub_10003D17C(v355, v362 + v359, &unk_1011845D0, &unk_100EBF380);
    v363 = v362 + v360;
    v364 = v577;
    *v363 = v578;
    *(v363 + 8) = v364;
    *(v363 + 16) = 1;
    v365 = (v362 + v361);
    v366 = v581;
    *v365 = sub_1003098C4;
    v365[1] = v366;
    swift_unknownObjectRetain();

    v367 = v560;
    UUID.init()();
    v368 = UUID.uuidString.getter();
    v370 = v369;
    (*(v561 + 8))(v367, v539);
    v616._countAndFlagsBits = v583;
    v616._object = v580;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v607, v616, v368, v370, sub_10021953C, v362);
    swift_unknownObjectRelease();
    sub_10012BA6C(&v595);
    sub_10000959C(v598);

    ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v540, 0);

    v595 = v607;
    sub_100015BB0(&v595);
    v591 = v608;
    sub_100015BB0(&v591);

    sub_1000095E8(v538, &unk_1011838D0, &unk_100EC0320);
    sub_1000095E8(&v599, &unk_1011845E0, &unk_100EBF3A0);
    sub_1000095E8(v537, &unk_1011845D0, &unk_100EBF380);
    sub_1000095E8(v536, &unk_10118AB20, &unk_100EBF390);
    (*(v533 + 8))(v532, v534);
    goto LABEL_170;
  }

  if (v125 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    (*(v122 + 12))(v123, v124);
    v189 = v522;
    v188 = v523;
    v190 = v123;
    v191 = v524;
    (*(v523 + 32))(v522, v190, v524);
    sub_10010FC20(&unk_101183900, &unk_100EC1680);
    v192 = swift_allocObject();
    *(v192 + 16) = xmmword_100EBC6B0;
    *(v192 + 56) = v191;
    *(v192 + 64) = sub_100309644(&unk_1011996E0, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    v193 = sub_10001C8B8((v192 + 32));
    (*(v188 + 16))(v193, v189, v191);
    v194 = [v83 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v582 = v599;
    v195 = v526;
    sub_1003090DC(v117, v526, type metadata accessor for Actions.PlaybackContext);
    (*(v580 + 7))(v195, 0, 1, v583);
    v196 = type metadata accessor for PlaylistContext(0);
    (*(*(v196 - 8) + 56))(v527, 1, 1, v196);
    v601 = 0u;
    v602 = 0u;
    v599 = 0u;
    v600 = 0u;
    v603 = 1;
    v604 = 0;
    v606 = 0;
    v605 = 0;
    v197 = v528;
    sub_1003090DC(v554, v528, type metadata accessor for Actions.MetricsReportingContext);
    v198 = type metadata accessor for Actions.MetricsReportingContext(0);
    (*(*(v198 - 8) + 56))(v197, 0, 1, v198);
    v199 = v509;
    sub_1000089F8(v584, v509, &qword_10118AB30, &unk_100EC64A0);
    v200 = (*(v552 + 80) + 16) & ~*(v552 + 80);
    v581 = swift_allocObject();
    sub_10003D17C(v199, &v581[v200], &qword_10118AB30, &unk_100EC64A0);
    sub_100008FE4(v192 + 32, v598);

    sub_1000089F8(&v599, &v591, &unk_1011845E0, &unk_100EBF3A0);
    if (v594 == 1)
    {
      v612 = 0;
      v610 = 0u;
      v611 = 0u;
      v613 = xmmword_100EBCEF0;
      PresentationSource.init(viewController:position:)(v83, &v610, &v595);
      v201 = v515;
      if (v594 != 1)
      {
        sub_1000095E8(&v591, &unk_1011845E0, &unk_100EBF3A0);
      }
    }

    else
    {
      sub_10012B828(&v591, &v595);
      v201 = v515;
    }

    swift_getObjectType();
    v276 = swift_conformsToProtocol2();
    v277 = v583;
    if (v276)
    {
      v577 = v276;
      v278 = v83;
      v578 = v83;
    }

    else
    {
      v578 = 0;
      v577 = 0;
    }

    v579 = swift_allocBox();
    v326 = v325;
    sub_1000089F8(v526, v201, &unk_10118AB20, &unk_100EBF390);
    v327 = *(v580 + 6);
    if (v327(v201, 1, v277) == 1)
    {
      v328 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
      v329 = v511;
      (*(*(v328 - 8) + 56))(v511, 1, 1, v328);
      v593 = 0;
      v591 = 0u;
      v592 = 0u;
      sub_1000089F8(v329, v510, &unk_1011838E0, &unk_100EC1670);
      v580 = v568;
      v330 = UIViewController.playActivityInformation.getter();
      v332 = v331;
      v334 = v333;
      v336 = v335;
      sub_1000089F8(&v591, &v589, &unk_101183910, &unk_100EBDD00);
      if (v590)
      {
        sub_100059A8C(&v589, &v607);
      }

      else
      {
        v588 = v83;
        sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
        v371 = v83;
        sub_10010FC20(&unk_101183920, &unk_100EC0330);
        if (swift_dynamicCast())
        {
          sub_100059A8C(&v585, &v607);
          v277 = v583;
        }

        else
        {
          v587 = 0;
          v585 = 0u;
          v586 = 0u;
          *&v607 = v371;
          v387 = v371;
          v388 = String.init<A>(reflecting:)();
          *(&v608 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v609 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v607 = v388;
          *(&v607 + 1) = v389;
          v277 = v583;
          if (*(&v586 + 1))
          {
            sub_1000095E8(&v585, &unk_101183910, &unk_100EBDD00);
          }
        }

        v83 = v566;
        if (v590)
        {
          sub_1000095E8(&v589, &unk_101183910, &unk_100EBDD00);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v580, v510, v330, v332, v334, v336, &v607, v326);
      sub_1000095E8(&v591, &unk_101183910, &unk_100EBDD00);
      sub_1000095E8(v511, &unk_1011838E0, &unk_100EC1670);
      v390 = v515;
      if (v327(v515, 1, v277) != 1)
      {
        sub_1000095E8(v390, &unk_10118AB20, &unk_100EBF390);
      }
    }

    else
    {
      sub_100309144(v201, v326, type metadata accessor for Actions.PlaybackContext);
    }

    v391 = &v326[*(v277 + 28)];
    sub_1000089F8(v391, &v607, &unk_101183910, &unk_100EBDD00);
    if (*(&v608 + 1))
    {
      sub_100059A8C(&v607, &v591);
      v392 = v551;
    }

    else
    {
      *&v591 = v83;
      v393 = v83;
      v394 = String.init<A>(reflecting:)();
      *(&v592 + 1) = &type metadata for Player.CommandIssuerIdentity;
      v593 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v591 = v394;
      *(&v591 + 1) = v395;
      v392 = v551;
      if (*(&v608 + 1))
      {
        sub_1000095E8(&v607, &unk_101183910, &unk_100EBDD00);
      }
    }

    sub_10010FC20(&unk_101183930, &unk_100EC1690);
    v396 = swift_allocObject();
    *(v396 + 16) = xmmword_100EBDC20;
    *(v396 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v396 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v396 + 32) = 0x4D747865746E6F43;
    *(v396 + 40) = 0xEB00000000756E65;
    sub_100008FE4(&v591, v396 + 72);
    v397 = static Player.CommandIssuer<>.combining(_:)(v396);
    v399 = v398;

    sub_10000959C(&v591);
    *(&v592 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v593 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v591 = v397;
    *(&v591 + 1) = v399;
    sub_10006B010(&v591, v391, &unk_101183910, &unk_100EBDD00);
    sub_100008FE4(v598, &v591);
    sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
    v583 = String.init<A>(describing:)();
    v580 = v400;
    v576 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008FE4(v598, &v589);
    sub_10012B7A8(&v595, &v591);
    v401 = v559;
    sub_1000089F8(v528, v559, &unk_1011838D0, &unk_100EC0320);
    v402 = v558;
    sub_1000089F8(v527, v558, &unk_1011845D0, &unk_100EBF380);
    v403 = (*(v556 + 80) + 160) & ~*(v556 + 80);
    v404 = (v392 + v403 + 7) & 0xFFFFFFFFFFFFFFF8;
    v405 = (v404 + 15) & 0xFFFFFFFFFFFFFFF8;
    v406 = (*(v555 + 80) + v405 + 8) & ~*(v555 + 80);
    v407 = (v406 + v557 + 7) & 0xFFFFFFFFFFFFFFF8;
    v408 = (v406 + v557 + 31) & 0xFFFFFFFFFFFFFFF8;
    v409 = swift_allocObject();
    sub_100059A8C(&v589, v409 + 16);
    *(v409 + 56) = v582;
    sub_10012B828(&v591, v409 + 64);
    sub_10003D17C(v401, v409 + v403, &unk_1011838D0, &unk_100EC0320);
    *(v409 + v404) = v576;
    *(v409 + v405) = v579;
    sub_10003D17C(v402, v409 + v406, &unk_1011845D0, &unk_100EBF380);
    v410 = v409 + v407;
    v411 = v577;
    *v410 = v578;
    *(v410 + 8) = v411;
    *(v410 + 16) = 1;
    v412 = (v409 + v408);
    v413 = v581;
    *v412 = sub_10030B048;
    v412[1] = v413;
    swift_unknownObjectRetain();

    v414 = v560;
    UUID.init()();
    v415 = UUID.uuidString.getter();
    v417 = v416;
    (*(v561 + 8))(v414, v539);
    v617._countAndFlagsBits = v583;
    v617._object = v580;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v607, v617, v415, v417, sub_10021953C, v409);
    swift_unknownObjectRelease();
    sub_10012BA6C(&v595);
    sub_10000959C(v598);

    ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v540, 0);

    v595 = v607;
    sub_100015BB0(&v595);
    v591 = v608;
    sub_100015BB0(&v591);

    sub_1000095E8(v528, &unk_1011838D0, &unk_100EC0320);
    sub_1000095E8(&v599, &unk_1011845E0, &unk_100EBF3A0);
    sub_1000095E8(v527, &unk_1011845D0, &unk_100EBF380);
    sub_1000095E8(v526, &unk_10118AB20, &unk_100EBF390);
    (*(v523 + 8))(v522, v524);
    goto LABEL_170;
  }

  if (v125 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    (*(v122 + 12))(v123, v124);
    v219 = v512;
    v218 = v513;
    v220 = v123;
    v221 = v514;
    (*(v513 + 32))(v512, v220, v514);
    sub_10010FC20(&unk_101183900, &unk_100EC1680);
    v222 = swift_allocObject();
    *(v222 + 16) = xmmword_100EBC6B0;
    *(v222 + 56) = v221;
    *(v222 + 64) = sub_100309644(&qword_101181A58, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
    v223 = sub_10001C8B8((v222 + 32));
    (*(v218 + 16))(v223, v219, v221);
    v224 = [v83 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v582 = v599;
    v225 = v516;
    sub_1003090DC(v117, v516, type metadata accessor for Actions.PlaybackContext);
    (*(v580 + 7))(v225, 0, 1, v583);
    v226 = type metadata accessor for PlaylistContext(0);
    (*(*(v226 - 8) + 56))(v517, 1, 1, v226);
    v601 = 0u;
    v602 = 0u;
    v599 = 0u;
    v600 = 0u;
    v603 = 1;
    v604 = 0;
    v606 = 0;
    v605 = 0;
    v227 = v518;
    sub_1003090DC(v554, v518, type metadata accessor for Actions.MetricsReportingContext);
    v228 = type metadata accessor for Actions.MetricsReportingContext(0);
    (*(*(v228 - 8) + 56))(v227, 0, 1, v228);
    v229 = v499;
    sub_1000089F8(v584, v499, &qword_10118AB30, &unk_100EC64A0);
    v230 = (*(v552 + 80) + 16) & ~*(v552 + 80);
    v581 = swift_allocObject();
    sub_10003D17C(v229, &v581[v230], &qword_10118AB30, &unk_100EC64A0);
    sub_100008FE4(v222 + 32, v598);

    sub_1000089F8(&v599, &v591, &unk_1011845E0, &unk_100EBF3A0);
    if (v594 == 1)
    {
      v612 = 0;
      v610 = 0u;
      v611 = 0u;
      v613 = xmmword_100EBCEF0;
      PresentationSource.init(viewController:position:)(v83, &v610, &v595);
      v231 = v505;
      if (v594 != 1)
      {
        sub_1000095E8(&v591, &unk_1011845E0, &unk_100EBF3A0);
      }
    }

    else
    {
      sub_10012B828(&v591, &v595);
      v231 = v505;
    }

    swift_getObjectType();
    v337 = swift_conformsToProtocol2();
    v338 = v583;
    if (v337)
    {
      v577 = v337;
      v339 = v83;
      v578 = v83;
    }

    else
    {
      v578 = 0;
      v577 = 0;
    }

    v579 = swift_allocBox();
    v373 = v372;
    sub_1000089F8(v516, v231, &unk_10118AB20, &unk_100EBF390);
    v374 = *(v580 + 6);
    if (v374(v231, 1, v338) == 1)
    {
      v375 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
      v376 = v501;
      (*(*(v375 - 8) + 56))(v501, 1, 1, v375);
      v593 = 0;
      v591 = 0u;
      v592 = 0u;
      sub_1000089F8(v376, v500, &unk_1011838E0, &unk_100EC1670);
      v580 = v568;
      v377 = UIViewController.playActivityInformation.getter();
      v379 = v378;
      v381 = v380;
      v383 = v382;
      sub_1000089F8(&v591, &v589, &unk_101183910, &unk_100EBDD00);
      if (v590)
      {
        sub_100059A8C(&v589, &v607);
      }

      else
      {
        v588 = v83;
        sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
        v418 = v83;
        sub_10010FC20(&unk_101183920, &unk_100EC0330);
        if (swift_dynamicCast())
        {
          sub_100059A8C(&v585, &v607);
          v338 = v583;
        }

        else
        {
          v587 = 0;
          v585 = 0u;
          v586 = 0u;
          *&v607 = v418;
          v431 = v418;
          v432 = String.init<A>(reflecting:)();
          *(&v608 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v609 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v607 = v432;
          *(&v607 + 1) = v433;
          v338 = v583;
          if (*(&v586 + 1))
          {
            sub_1000095E8(&v585, &unk_101183910, &unk_100EBDD00);
          }
        }

        v83 = v566;
        if (v590)
        {
          sub_1000095E8(&v589, &unk_101183910, &unk_100EBDD00);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v580, v500, v377, v379, v381, v383, &v607, v373);
      sub_1000095E8(&v591, &unk_101183910, &unk_100EBDD00);
      sub_1000095E8(v501, &unk_1011838E0, &unk_100EC1670);
      v434 = v505;
      if (v374(v505, 1, v338) != 1)
      {
        sub_1000095E8(v434, &unk_10118AB20, &unk_100EBF390);
      }
    }

    else
    {
      sub_100309144(v231, v373, type metadata accessor for Actions.PlaybackContext);
    }

    v435 = &v373[*(v338 + 28)];
    sub_1000089F8(v435, &v607, &unk_101183910, &unk_100EBDD00);
    if (*(&v608 + 1))
    {
      sub_100059A8C(&v607, &v591);
      v436 = v551;
    }

    else
    {
      *&v591 = v83;
      v437 = v83;
      v438 = String.init<A>(reflecting:)();
      *(&v592 + 1) = &type metadata for Player.CommandIssuerIdentity;
      v593 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v591 = v438;
      *(&v591 + 1) = v439;
      v436 = v551;
      if (*(&v608 + 1))
      {
        sub_1000095E8(&v607, &unk_101183910, &unk_100EBDD00);
      }
    }

    sub_10010FC20(&unk_101183930, &unk_100EC1690);
    v440 = swift_allocObject();
    *(v440 + 16) = xmmword_100EBDC20;
    *(v440 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v440 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v440 + 32) = 0x4D747865746E6F43;
    *(v440 + 40) = 0xEB00000000756E65;
    sub_100008FE4(&v591, v440 + 72);
    v441 = static Player.CommandIssuer<>.combining(_:)(v440);
    v443 = v442;

    sub_10000959C(&v591);
    *(&v592 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v593 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v591 = v441;
    *(&v591 + 1) = v443;
    sub_10006B010(&v591, v435, &unk_101183910, &unk_100EBDD00);
    sub_100008FE4(v598, &v591);
    sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
    v583 = String.init<A>(describing:)();
    v580 = v444;
    v576 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008FE4(v598, &v589);
    sub_10012B7A8(&v595, &v591);
    v445 = v559;
    sub_1000089F8(v518, v559, &unk_1011838D0, &unk_100EC0320);
    v446 = v558;
    sub_1000089F8(v517, v558, &unk_1011845D0, &unk_100EBF380);
    v447 = (*(v556 + 80) + 160) & ~*(v556 + 80);
    v448 = (v436 + v447 + 7) & 0xFFFFFFFFFFFFFFF8;
    v449 = (v448 + 15) & 0xFFFFFFFFFFFFFFF8;
    v450 = (*(v555 + 80) + v449 + 8) & ~*(v555 + 80);
    v451 = (v450 + v557 + 7) & 0xFFFFFFFFFFFFFFF8;
    v452 = (v450 + v557 + 31) & 0xFFFFFFFFFFFFFFF8;
    v453 = swift_allocObject();
    sub_100059A8C(&v589, v453 + 16);
    *(v453 + 56) = v582;
    sub_10012B828(&v591, v453 + 64);
    sub_10003D17C(v445, v453 + v447, &unk_1011838D0, &unk_100EC0320);
    *(v453 + v448) = v576;
    *(v453 + v449) = v579;
    sub_10003D17C(v446, v453 + v450, &unk_1011845D0, &unk_100EBF380);
    v454 = v453 + v451;
    v455 = v577;
    *v454 = v578;
    *(v454 + 8) = v455;
    *(v454 + 16) = 1;
    v456 = (v453 + v452);
    v457 = v581;
    *v456 = sub_10030B048;
    v456[1] = v457;
    swift_unknownObjectRetain();

    v458 = v560;
    UUID.init()();
    v459 = UUID.uuidString.getter();
    v461 = v460;
    (*(v561 + 8))(v458, v539);
    v618._countAndFlagsBits = v583;
    v618._object = v580;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v607, v618, v459, v461, sub_10021953C, v453);
    swift_unknownObjectRelease();
    sub_10012BA6C(&v595);
    sub_10000959C(v598);

    ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v540, 0);

    v595 = v607;
    sub_100015BB0(&v595);
    v591 = v608;
    sub_100015BB0(&v591);

    sub_1000095E8(v518, &unk_1011838D0, &unk_100EC0320);
    sub_1000095E8(&v599, &unk_1011845E0, &unk_100EBF3A0);
    sub_1000095E8(v517, &unk_1011845D0, &unk_100EBF380);
    sub_1000095E8(v516, &unk_10118AB20, &unk_100EBF390);
    (*(v513 + 8))(v512, v514);
    goto LABEL_170;
  }

  if (v125 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v122 + 12))(v123, v124);
    v280 = v502;
    v279 = v503;
    v281 = v123;
    v282 = v504;
    (*(v503 + 32))(v502, v281, v504);
    sub_10010FC20(&unk_101183900, &unk_100EC1680);
    v283 = swift_allocObject();
    *(v283 + 16) = xmmword_100EBC6B0;
    *(v283 + 56) = v282;
    *(v283 + 64) = sub_100309644(&unk_10118AB40, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
    v284 = sub_10001C8B8((v283 + 32));
    (*(v279 + 16))(v284, v280, v282);
    v285 = [v83 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v582 = v599;
    v286 = v506;
    sub_1003090DC(v117, v506, type metadata accessor for Actions.PlaybackContext);
    (*(v580 + 7))(v286, 0, 1, v583);
    v287 = type metadata accessor for PlaylistContext(0);
    (*(*(v287 - 8) + 56))(v507, 1, 1, v287);
    v601 = 0u;
    v602 = 0u;
    v599 = 0u;
    v600 = 0u;
    v603 = 1;
    v604 = 0;
    v606 = 0;
    v605 = 0;
    v288 = v508;
    sub_1003090DC(v554, v508, type metadata accessor for Actions.MetricsReportingContext);
    v289 = type metadata accessor for Actions.MetricsReportingContext(0);
    (*(*(v289 - 8) + 56))(v288, 0, 1, v289);
    v290 = v495;
    sub_1000089F8(v584, v495, &qword_10118AB30, &unk_100EC64A0);
    v291 = (*(v552 + 80) + 16) & ~*(v552 + 80);
    v581 = swift_allocObject();
    sub_10003D17C(v290, &v581[v291], &qword_10118AB30, &unk_100EC64A0);
    sub_100008FE4(v283 + 32, v598);

    sub_1000089F8(&v599, &v591, &unk_1011845E0, &unk_100EBF3A0);
    if (v594 == 1)
    {
      v612 = 0;
      v610 = 0u;
      v611 = 0u;
      v613 = xmmword_100EBCEF0;
      PresentationSource.init(viewController:position:)(v83, &v610, &v595);
      v292 = v498;
      if (v594 != 1)
      {
        sub_1000095E8(&v591, &unk_1011845E0, &unk_100EBF3A0);
      }
    }

    else
    {
      sub_10012B828(&v591, &v595);
      v292 = v498;
    }

    swift_getObjectType();
    v384 = swift_conformsToProtocol2();
    v385 = v583;
    if (v384)
    {
      v577 = v384;
      v386 = v83;
      v578 = v83;
    }

    else
    {
      v578 = 0;
      v577 = 0;
    }

    v579 = swift_allocBox();
    v420 = v419;
    sub_1000089F8(v506, v292, &unk_10118AB20, &unk_100EBF390);
    v421 = *(v580 + 6);
    if (v421(v292, 1, v385) == 1)
    {
      v422 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
      v423 = v497;
      (*(*(v422 - 8) + 56))(v497, 1, 1, v422);
      v593 = 0;
      v591 = 0u;
      v592 = 0u;
      sub_1000089F8(v423, v496, &unk_1011838E0, &unk_100EC1670);
      v580 = v568;
      v424 = UIViewController.playActivityInformation.getter();
      v426 = v425;
      v428 = v427;
      v430 = v429;
      sub_1000089F8(&v591, &v589, &unk_101183910, &unk_100EBDD00);
      if (v590)
      {
        sub_100059A8C(&v589, &v607);
      }

      else
      {
        v588 = v83;
        sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
        v462 = v83;
        sub_10010FC20(&unk_101183920, &unk_100EC0330);
        if (swift_dynamicCast())
        {
          sub_100059A8C(&v585, &v607);
          v385 = v583;
        }

        else
        {
          v587 = 0;
          v585 = 0u;
          v586 = 0u;
          *&v607 = v462;
          v463 = v462;
          v464 = String.init<A>(reflecting:)();
          *(&v608 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v609 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v607 = v464;
          *(&v607 + 1) = v465;
          v385 = v583;
          if (*(&v586 + 1))
          {
            sub_1000095E8(&v585, &unk_101183910, &unk_100EBDD00);
          }
        }

        v83 = v566;
        if (v590)
        {
          sub_1000095E8(&v589, &unk_101183910, &unk_100EBDD00);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v580, v496, v424, v426, v428, v430, &v607, v420);
      sub_1000095E8(&v591, &unk_101183910, &unk_100EBDD00);
      sub_1000095E8(v497, &unk_1011838E0, &unk_100EC1670);
      v466 = v498;
      if (v421(v498, 1, v385) != 1)
      {
        sub_1000095E8(v466, &unk_10118AB20, &unk_100EBF390);
      }
    }

    else
    {
      sub_100309144(v292, v420, type metadata accessor for Actions.PlaybackContext);
    }

    v467 = &v420[*(v385 + 28)];
    sub_1000089F8(v467, &v607, &unk_101183910, &unk_100EBDD00);
    if (*(&v608 + 1))
    {
      sub_100059A8C(&v607, &v591);
      v468 = v551;
    }

    else
    {
      *&v591 = v83;
      v469 = v83;
      v470 = String.init<A>(reflecting:)();
      *(&v592 + 1) = &type metadata for Player.CommandIssuerIdentity;
      v593 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v591 = v470;
      *(&v591 + 1) = v471;
      v468 = v551;
      if (*(&v608 + 1))
      {
        sub_1000095E8(&v607, &unk_101183910, &unk_100EBDD00);
      }
    }

    sub_10010FC20(&unk_101183930, &unk_100EC1690);
    v472 = swift_allocObject();
    *(v472 + 16) = xmmword_100EBDC20;
    *(v472 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v472 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v472 + 32) = 0x4D747865746E6F43;
    *(v472 + 40) = 0xEB00000000756E65;
    sub_100008FE4(&v591, v472 + 72);
    v473 = static Player.CommandIssuer<>.combining(_:)(v472);
    v475 = v474;

    sub_10000959C(&v591);
    *(&v592 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v593 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v591 = v473;
    *(&v591 + 1) = v475;
    sub_10006B010(&v591, v467, &unk_101183910, &unk_100EBDD00);
    sub_100008FE4(v598, &v591);
    sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
    v583 = String.init<A>(describing:)();
    v580 = v476;
    v576 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008FE4(v598, &v589);
    sub_10012B7A8(&v595, &v591);
    v477 = v559;
    sub_1000089F8(v508, v559, &unk_1011838D0, &unk_100EC0320);
    v478 = v558;
    sub_1000089F8(v507, v558, &unk_1011845D0, &unk_100EBF380);
    v479 = (*(v556 + 80) + 160) & ~*(v556 + 80);
    v480 = (v468 + v479 + 7) & 0xFFFFFFFFFFFFFFF8;
    v481 = (v480 + 15) & 0xFFFFFFFFFFFFFFF8;
    v482 = (*(v555 + 80) + v481 + 8) & ~*(v555 + 80);
    v483 = (v482 + v557 + 7) & 0xFFFFFFFFFFFFFFF8;
    v484 = (v482 + v557 + 31) & 0xFFFFFFFFFFFFFFF8;
    v485 = swift_allocObject();
    sub_100059A8C(&v589, v485 + 16);
    *(v485 + 56) = v582;
    sub_10012B828(&v591, v485 + 64);
    sub_10003D17C(v477, v485 + v479, &unk_1011838D0, &unk_100EC0320);
    *(v485 + v480) = v576;
    *(v485 + v481) = v579;
    sub_10003D17C(v478, v485 + v482, &unk_1011845D0, &unk_100EBF380);
    v486 = v485 + v483;
    v487 = v577;
    *v486 = v578;
    *(v486 + 8) = v487;
    *(v486 + 16) = 1;
    v488 = (v485 + v484);
    v489 = v581;
    *v488 = sub_10030B048;
    v488[1] = v489;
    swift_unknownObjectRetain();

    v490 = v560;
    UUID.init()();
    v491 = UUID.uuidString.getter();
    v493 = v492;
    (*(v561 + 8))(v490, v539);
    v619._countAndFlagsBits = v583;
    v619._object = v580;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v607, v619, v491, v493, sub_100217D28, v485);
    swift_unknownObjectRelease();
    sub_10012BA6C(&v595);
    sub_10000959C(v598);

    ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v540, 0);

    v595 = v607;
    sub_100015BB0(&v595);
    v591 = v608;
    sub_100015BB0(&v591);

    sub_1000095E8(v508, &unk_1011838D0, &unk_100EC0320);
    sub_1000095E8(&v599, &unk_1011845E0, &unk_100EBF3A0);
    sub_1000095E8(v507, &unk_1011845D0, &unk_100EBF380);
    sub_1000095E8(v506, &unk_10118AB20, &unk_100EBF390);
    (*(v503 + 8))(v502, v504);
    goto LABEL_170;
  }

  sub_10030AD48(v117, type metadata accessor for Actions.PlaybackContext);
  sub_1000095E8(v584, &qword_10118AB30, &unk_100EC64A0);
  (*(v122 + 1))(v123, v124);
}