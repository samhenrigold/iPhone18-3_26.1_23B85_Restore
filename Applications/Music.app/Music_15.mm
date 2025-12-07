id sub_1001CA04C(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v4 = &v67[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v67[-v5];
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v8 = &v67[-v7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = &unk_100EBC000;
  if (!Strong)
  {
    goto LABEL_21;
  }

  v11 = Strong;
  v12 = [Strong parentViewController];

  if (!v12)
  {
    goto LABEL_21;
  }

  type metadata accessor for NowPlayingViewController(0);
  v13 = swift_dynamicCastClass();
  if (!v13 || (v14 = (v13 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode), v15 = *(v13 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode), v15 >> 62 != 1))
  {
LABEL_20:

LABEL_21:
    v35 = static ActionBuilder.buildIf(_:)(0);
LABEL_22:
    sub_10010FC20(&unk_101183940, &unk_100EC64D0);
    inited = swift_initStackObject();
    *(inited + 16) = v10[107];
    *(inited + 32) = v35;
    v37 = inited + 32;
    v38 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1000095E8(v37, &unk_10118AB80, &qword_100EBF3B0);
    return v38;
  }

  v71 = a2;
  v78 = v12;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v76 = v14[4];
  v77 = v18;
  v19 = v14[5];
  v74 = v14[6];
  v75 = v19;
  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
    v12 = v78;
    goto LABEL_20;
  }

  v21 = v20;
  v72 = v16;
  v73 = (v15 & 0x3FFFFFFFFFFFFFFFLL);
  v22 = *(v20 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
  sub_10012BAC0(v15, v16, v17, v77, v76, v75, v74);
  v23 = v22;

  v24 = v17;
  if (!v22 || (v25 = [v23 tracklist], v23, v26 = objc_msgSend(v25, "playingItem"), v25, !v26))
  {

    v34 = v72;
    v12 = v73;
    v10 = &unk_100EBC000;
LABEL_19:

    goto LABEL_20;
  }

  v27 = [v26 metadataObject];

  v10 = &unk_100EBC000;
  if (!v27)
  {

    v34 = v72;
    v12 = v73;
    goto LABEL_19;
  }

  v12 = [v27 innermostModelObject];

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (!v28 || (v29 = v28, type metadata accessor for LyricsLoader(), (static LyricsLoader.supportsLyrics(for:)(v29) & 1) == 0) || (result = MPModelObject.bestIdentifier(for:)(3, 2u), !v31))
  {

    v34 = v73;
    goto LABEL_19;
  }

  v76 = result;
  v77 = v31;
  v32 = *&v73[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  if (v32)
  {
    v33 = v32;
    SyncedLyricsViewController.reportConcernData.getter(v90);

    if (*(&v90[0] + 1) == 1)
    {
      v70 = 0;
    }

    else
    {
      v94 = v90[0];
      v95 = v90[1];
      v96 = v90[2];
      v39 = Lyrics.ReportConcernData.dictionaryRepresentation()();
      v97 = v94;
      sub_1000095E8(&v97, &qword_1011815E0, &qword_100EBD050);
      v98 = v95;
      sub_1000095E8(&v98, &qword_1011815E0, &qword_100EBD050);
      v99 = v96;
      sub_1000095E8(&v99, &qword_1011815E0, &qword_100EBD050);
      v70 = sub_100363D38(v39);
    }

    swift_beginAccess();
    v40 = swift_unknownObjectWeakLoadStrong();
    v41 = v71;
    sub_1000089F8(v71, v92, &qword_101183998, &qword_100EBF408);
    PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)(v40, v41, 0, 0, 0, 0, v89);
    swift_beginAccess();
    v42 = swift_unknownObjectWeakLoadStrong();
    if (v42 && (v43 = v42, v44 = swift_unknownObjectWeakLoadStrong(), v43, v44))
    {
      sub_1005E0230(v6);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = type metadata accessor for MetricsEvent.Page(0);
      (*(*(v45 - 8) + 56))(v6, 1, 1, v45);
    }

    v74 = v12;
    v75 = v24;
    sub_1000089F8(v6, v4, &unk_1011838F0, &qword_100EC1070);
    MetricsReportingController.shared.unsafeMutableAddressor();
    v71 = sub_10053771C();
    v69 = v46;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v47 = qword_101218AD0;
    v68 = GroupActivitiesManager.hasJoined.getter();
    v48 = GroupActivitiesManager.participantsCount.getter();
    sub_1000095E8(v6, &unk_1011838F0, &qword_100EC1070);
    v49 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    v50 = *(v47 + v49);
    v51 = type metadata accessor for Actions.MetricsReportingContext(0);
    v52 = v51[5];
    v53 = type metadata accessor for MetricsEvent.Page(0);
    (*(*(v53 - 8) + 56))(&v8[v52], 1, 1, v53);
    v54 = v51[7];
    v55 = &v8[v51[6]];
    v56 = v51[8];
    *v8 = xmmword_100EBEF60;
    sub_10006B010(v4, &v8[v52], &unk_1011838F0, &qword_100EC1070);
    v57 = v69;
    *v55 = v71;
    *(v55 + 1) = v57;
    *&v8[v54] = 0;
    *&v8[v56] = 0;
    v58 = &v8[v51[9]];
    *v58 = v68 & 1;
    *(v58 + 1) = v48;
    *(v58 + 2) = v50;
    (*(*(v51 - 1) + 56))(v8, 0, 1, v51);
    v59 = swift_allocObject();
    v61 = v76;
    v60 = v77;
    *(v59 + 16) = v76;
    *(v59 + 24) = v60;
    *(v59 + 32) = 2;
    *(v59 + 40) = v70;
    sub_10012B828(v89, v59 + 48);
    Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)(v61, v60, 1735290739, 0xE400000000000000, 40, variable initialization expression of _NSRange.NSRangeIterator.current, 0, &unk_100EBF410, v91, v59, v8);
    static Actions.ReportConcern.action(context:)(v91, v92);

    v83 = v92[4];
    v84 = v92[5];
    v85 = v92[6];
    v86 = v93;
    v79 = v92[0];
    v80 = v92[1];
    v81 = v92[2];
    v82 = v92[3];
    v62 = static ActionBuilder.buildExpression<A, B>(_:)(&v79, &type metadata for Actions.ReportConcern.Context, (&type metadata for () + 1), &protocol witness table for Actions.ReportConcern.Context);
    v87[4] = v83;
    v87[5] = v84;
    v87[6] = v85;
    v88 = v86;
    v87[0] = v79;
    v87[1] = v80;
    v87[2] = v81;
    v87[3] = v82;
    sub_1000095E8(v87, &qword_1011839B0, &unk_100EC73E0);
    sub_10010FC20(&unk_101183940, &unk_100EC64D0);
    v63 = swift_initStackObject();
    *(v63 + 16) = xmmword_100EBC6B0;
    *(v63 + 32) = v62;
    v64 = v63 + 32;
    v65 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    v66 = v64;
    v10 = &unk_100EBC000;
    sub_1000095E8(v66, &unk_10118AB80, &qword_100EBF3B0);
    v35 = static ActionBuilder.buildIf(_:)(v65);

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void sub_1001CA980(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

uint64_t sub_1001CA9DC()
{
  [objc_opt_self() secondaryLabelColor];
  sub_1001D29B8();
  return AttributedString.subscript.setter();
}

id sub_1001CAA44()
{
  type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin();
  v2 = &v21[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___glissCoordinator;
  v4 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___glissCoordinator];
  if (v4)
  {
    v5 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___glissCoordinator];
LABEL_5:
    v19 = v4;
    return v5;
  }

  v6 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_1001D17C8(v6, v2, type metadata accessor for NowPlaying.TrackMetadata);
  v7 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_glissandoDataSource];

  result = [v0 view];
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s19GlissandoDataSourceCMa();
    sub_1001CF0F0(&unk_101183970, _s19GlissandoDataSourceCMa, &unk_100EE3CD8);
    Gliss.Coordinator.GestureConfiguration.init(hostingView:hitTest:simultaneousGestureRecognizerAllowance:)(v9, sub_1001D1830, v10, sub_1001D1838, v11, v21);
    sub_10010FC20(&unk_101189D80, &qword_100EBF3F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100EBC6B0;
    v13 = v0;
    v14 = sub_1001AFCCC();
    v15 = sub_1001CF0F0(&unk_101183980, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);
    *(v12 + 32) = v14;
    *(v12 + 40) = v15;
    v16 = objc_allocWithZone(sub_10010FC20(&unk_101189D90, &unk_100EBF3F8));
    v17 = Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(v2, v7, v21, v12);
    v18 = *&v13[v3];
    *&v13[v3] = v17;
    v5 = v17;

    v4 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1001CACC4(void *a1, uint64_t a2, double a3, double a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView;
  result = *(result + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView);
  if (!result)
  {
    __break(1u);
    goto LABEL_36;
  }

  [result frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = [v8 view];
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v18 = result;
  result = *&v8[v9];
  if (!result)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v19 = [result superview];
  [v18 convertPoint:v19 toView:{a3, a4}];
  v21 = v20;
  v23 = v22;

  v74.origin.x = v11;
  v74.origin.y = v13;
  v74.size.width = v15;
  v74.size.height = v17;
  v70.x = v21;
  v70.y = v23;
  if (CGRectContainsPoint(v74, v70))
  {

    return 1;
  }

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  result = swift_initStackObject();
  *(result + 16) = xmmword_100EBE270;
  v24 = *&v8[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl];
  if (!v24)
  {
    goto LABEL_38;
  }

  v25 = result;
  *(result + 32) = v24;
  v26 = *&v8[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomContainerView];
  if (!v26)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(result + 40) = v26;
  v66 = v8;
  v27 = *&v8[OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsStackView];
  if (!v27)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return result;
  }

  *(result + 48) = v27;
  v28 = result & 0xC000000000000001;
  v29 = result & 0xFFFFFFFFFFFFFF8;
  v30 = v24;
  v31 = v26;
  v32 = v27;
  v33 = 0;
  v68 = v25;
  do
  {
    if (v28)
    {
      v34 = sub_100062D50(v33, v25);
    }

    else
    {
      if (v33 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v34 = *(v25 + 8 * v33 + 32);
    }

    v35 = v34;
    v36 = [v34 superview];
    [a1 convertPoint:v36 toView:{a3, a4}];
    v38 = v37;
    v40 = v39;

    [v35 frame];
    v71.x = v38;
    v71.y = v40;
    if (CGRectContainsPoint(v75, v71))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v25 = v68;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v33;
  }

  while (v33 != 3);
  swift_setDeallocating();
  swift_arrayDestroy();
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
LABEL_26:
    v41 = v66;
    v42 = &selRef_trackNumber;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  v41 = v66;
  v42 = &selRef_trackNumber;
  if (_swiftEmptyArrayStorage[2])
  {
LABEL_23:

    return 0;
  }

LABEL_27:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return 1;
  }

  v44 = Strong;
  result = [v41 v42[31]];
  if (!result)
  {
    goto LABEL_41;
  }

  v45 = result;

  v46 = [v44 v42[31]];
  [v45 convertPoint:v46 toView:{a3, a4}];
  v48 = v47;
  v50 = v49;

  v51 = &v44[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  v53 = *&v44[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  v52 = *&v44[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8];
  v54 = *&v44[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16];
  if (v53 >> 62)
  {
    if (v53 >> 62 == 1)
    {
      v55 = (v53 & 0x3FFFFFFFFFFFFFFFLL);
      v56 = v52;

      [v56 frame];
      v72.x = v48;
      v72.y = v50;
      v57 = CGRectContainsPoint(v76, v72);

      swift_unknownObjectRelease();
      return !v57;
    }

    swift_unknownObjectRelease();
    return 1;
  }

  v58 = *(v51 + 5);
  v69 = *(v51 + 6);
  v60 = *(v51 + 3);
  v59 = *(v51 + 4);
  v61 = v53;
  v67 = v52;
  v62 = v54;
  v63 = v60;
  v64 = v59;

  [v67 frame];
  v73.x = v48;
  v73.y = v50;
  v65 = CGRectContainsPoint(v77, v73);

  swift_unknownObjectRelease();
  sub_10012BB6C(v53, v52, v54, v60, v59, v58, v69);
  return !v65;
}

void sub_1001CB1E4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [v4 presentationController];
    v6 = v4;
    if (v5)
    {
      v7 = v5;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = v8;
          v10 = a1;
          v11 = [v9 view];
          if (v11)
          {
            v12 = v11;
            v13 = [v4 view];

            if (v13)
            {
              [v13 isDescendantOfView:v12];
            }

            else
            {
              __break(1u);
            }

            return;
          }
        }

        else
        {
          v10 = v7;
        }

        v7 = v4;
      }

      else
      {
        v10 = v4;
      }

      v6 = v7;
    }
  }
}

void sub_1001CB3C4(uint64_t a1, void *a2)
{
  *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_videoOutput) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_presentingVideo) = 1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v7[4] = sub_1001D17B4;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1007E9F28;
  v7[3] = &unk_10109E908;
  v6 = _Block_copy(v7);
  swift_unknownObjectRetain();

  [a2 animateAlongsideTransition:0 completion:v6];
  _Block_release(v6);
}

void sub_1001CB55C(void *a1, uint64_t a2, void *a3)
{
  if (([a1 isCancelled] & 1) == 0)
  {
    *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_presentingVideo) = 0;
    *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_videoOutput) = 0;
    swift_unknownObjectRelease();
    [a3 setShowsPlaybackControls:0];
    *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_deferArtworkModeUpdates) = 0;
    v5 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
    if (v5)
    {
      v6 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
      v13 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      v7 = v5;
      if (v6)
      {
        LODWORD(v6) = [v6 state] == 2;
      }

      v8 = sub_1001BDD38();
      if (v8)
      {
        v9 = 256;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9 | v6 | 0x4000;
      v11 = v13;
      v12 = *&v13[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode];
      *&v13[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode] = v10;
      if (v12 & 0xC000) != 0x4000 || ((v6 ^ v12) & 1) != 0 || ((v8 ^ ((v12 & 0x100) >> 8)))
      {
        sub_10004C8F4();
        [v13 setNeedsLayout];
        v11 = v13;
      }
    }
  }
}

void *sub_1001CB7D0()
{
  v1 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  v2 = v1;
  return v1;
}

id sub_1001CB98C(uint64_t a1, double a2, double a3)
{
  if (UIViewIgnoresTouchEvents())
  {
    return 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for PassThroughStackView();
  v7 = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    sub_100009F78(0, &qword_101181620, UIView_ptr);
    v8 = v7;
    v9 = v3;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

id sub_1001CBB04(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = (a7)(0, a6);
  return objc_msgSendSuper2(&v12, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1001CBC78(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = type metadata accessor for AudioTraitButton();
  v11.receiver = v2;
  v11.super_class = v4;
  v5 = objc_msgSendSuper2(&v11, "isHighlighted");
  v10.receiver = v2;
  v10.super_class = v4;
  objc_msgSendSuper2(&v10, "setHighlighted:", v3 & 1);
  result = [v2 isHighlighted];
  if (v5 != result)
  {
    result = [v2 alpha];
    if (v7 != 0.0)
    {
      result = [v2 isHidden];
      if ((result & 1) == 0)
      {
        v8 = [v2 isHighlighted];
        v9 = 0.5;
        if ((v8 & 1) == 0)
        {
          v9 = 1.0;
          if (*(v2 + OBJC_IVAR____TtC5Music16AudioTraitButton_isShowingDisclosure))
          {
            v9 = 0.5;
          }
        }

        return [v2 setAlpha:v9];
      }
    }
  }

  return result;
}

double sub_1001CBD68(uint64_t a1, uint64_t a2)
{
  v12.receiver = v2;
  v12.super_class = type metadata accessor for AudioTraitButton();
  objc_msgSendSuper2(&v12, "hitRect");
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v7 = *&v2[OBJC_IVAR____TtC5Music16AudioTraitButton_hitRectMinimumSize];
  v8 = CGRectGetWidth(v13);
  if (v8 > v7)
  {
    v7 = v8;
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGRectGetHeight(v14);
  CGRect.center.getter();
  v10 = v9 - v7 * 0.5;
  CGRect.center.getter();
  return v10;
}

id sub_1001CC0D8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001CC118@<X0>(char *a1@<X8>)
{
  v80 = a1;
  v2 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v69 = *(v2 - 8);
  v70 = v2;
  __chkstk_darwin();
  v68 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = v63 - v4;
  sub_10010FC20(&unk_101191A70, &unk_100EBF360);
  __chkstk_darwin();
  v71 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = v63 - v6;
  __chkstk_darwin();
  v73 = v63 - v7;
  sub_10010FC20(&unk_1011838C0, &qword_100EBD688);
  __chkstk_darwin();
  v9 = v63 - v8;
  v10 = type metadata accessor for Station();
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin();
  v74 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IndexPath();
  v77 = *(v12 - 8);
  v78 = v12;
  __chkstk_darwin();
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v63 - v15;
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v18 = v63 - v17;
  v19 = type metadata accessor for GenericMusicItem();
  v20 = *(v19 - 8);
  *&v21 = __chkstk_darwin().n128_u64[0];
  v79 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [v1 playingItem];
  if (!v23)
  {
    return (*(v20 + 56))(v80, 1, 1, v19);
  }

  v24 = v23;
  v25 = [v23 metadataObject];

  if (!v25)
  {
    return (*(v20 + 56))(v80, 1, 1, v19);
  }

  v26 = [v25 innermostModelObject];

  v27 = v26;
  GenericMusicItem.init(_:)();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {

    sub_1000095E8(v18, &unk_101189DA0, &unk_100EBF370);
    return (*(v20 + 56))(v80, 1, 1, v19);
  }

  v66 = *(v20 + 32);
  v66(v79, v18, v19);
  v29 = [v1 playingItemIndexPath];
  if (!v29)
  {

LABEL_15:
    v39 = v79;
    goto LABEL_16;
  }

  v65 = v27;
  v30 = v29;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = v77;
  v32 = v14;
  v33 = v78;
  (*(v77 + 32))(v16, v32, v78);
  v34 = [v1 items];
  v35 = [v34 sectionAtIndex:IndexPath.section.getter()];

  v36 = [v35 metadataObject];
  if (!v36)
  {
    (*(v31 + 8))(v16, v33);

    goto LABEL_15;
  }

  v37 = [v36 innermostModelObject];

  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  v39 = v79;
  if (!v38)
  {

    (*(v31 + 8))(v16, v33);
    goto LABEL_16;
  }

  if ([v38 type] != 4)
  {
    (*(v31 + 8))(v16, v33);

    goto LABEL_16;
  }

  v64 = v37;
  v40 = v76;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  v41 = v75;
  if ((*(v75 + 48))(v9, 1, v40) == 1)
  {
    (*(v31 + 8))(v16, v78);

    sub_1000095E8(v9, &unk_1011838C0, &qword_100EBD688);
LABEL_16:
    v42 = v80;
    v66(v80, v39, v19);
    return (*(v20 + 56))(v42, 0, 1, v19);
  }

  v63[0] = *(v41 + 32);
  v63[1] = v41 + 32;
  (v63[0])(v74, v9, v40);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.state(for:)();
  v43 = v41;

  v44 = v73;
  dispatch thunk of MusicLibrary.GenericItemState.addStatus.getter();

  v45 = v72;
  sub_1000089F8(v44, v72, &unk_101191A70, &unk_100EBF360);
  v46 = type metadata accessor for MusicLibrary.AddStatus();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {

    sub_1000095E8(v44, &unk_101191A70, &unk_100EBF360);
    (*(v43 + 8))(v74, v76);
    (*(v77 + 8))(v16, v78);
LABEL_26:
    v59 = v80;
    v66(v80, v39, v19);
    (*(v20 + 56))(v59, 0, 1, v19);
    return sub_1000095E8(v45, &unk_101191A70, &unk_100EBF360);
  }

  v48 = v71;
  sub_1000089F8(v45, v71, &unk_101191A70, &unk_100EBF360);
  if ((*(v47 + 88))(v48, v46) != enum case for MusicLibrary.AddStatus.unaddable(_:))
  {

    sub_1000095E8(v73, &unk_101191A70, &unk_100EBF360);
    (*(v75 + 8))(v74, v76);
    (*(v77 + 8))(v16, v78);
    (*(v47 + 8))(v48, v46);
    goto LABEL_26;
  }

  (*(v47 + 96))(v48, v46);
  v50 = v69;
  v49 = v70;
  v51 = v67;
  (*(v69 + 32))(v67, v48, v70);
  v52 = v68;
  (*(v50 + 16))(v68, v51, v49);
  v53 = (*(v50 + 88))(v52, v49);
  v54 = v73;
  if (v53 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
    v55 = v79;
    GenericMusicItem.catalogID.getter();
    v57 = v56;

    (*(v50 + 8))(v51, v49);
    sub_1000095E8(v54, &unk_101191A70, &unk_100EBF360);
    (*(v77 + 8))(v16, v78);
    v58 = v80;
    if (v57)
    {

      (*(v75 + 8))(v74, v76);
      v66(v58, v55, v19);
    }

    else
    {
      (*(v20 + 8))(v55, v19);
      (v63[0])(v58, v74, v76);
      (*(v20 + 104))(v58, enum case for GenericMusicItem.station(_:), v19);
    }

    v62 = v72;
    (*(v20 + 56))(v58, 0, 1, v19);
    return sub_1000095E8(v62, &unk_101191A70, &unk_100EBF360);
  }

  else
  {

    v60 = *(v50 + 8);
    v60(v51, v49);
    sub_1000095E8(v54, &unk_101191A70, &unk_100EBF360);
    (*(v77 + 8))(v16, v78);
    (*(v20 + 8))(v79, v19);
    v61 = v80;
    (v63[0])(v80, v74, v76);
    (*(v20 + 104))(v61, enum case for GenericMusicItem.station(_:), v19);
    (*(v20 + 56))(v61, 0, 1, v19);
    v60(v52, v49);
    return sub_1000095E8(v72, &unk_101191A70, &unk_100EBF360);
  }
}

void sub_1001CCD5C(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)()@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v149 = a4;
  v150 = a5;
  v143 = a2;
  v162 = a1;
  v9 = type metadata accessor for UUID();
  v160 = *(v9 - 8);
  __chkstk_darwin();
  v159 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v158 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v11;
  __chkstk_darwin();
  v168 = &v135 - v12;
  v153 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v157 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v13;
  __chkstk_darwin();
  v167 = &v135 - v14;
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v151 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v152 = &v135 - v16;
  __chkstk_darwin();
  v144 = &v135 - v17;
  __chkstk_darwin();
  v142 = &v135 - v18;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  *&v163 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v161 = &v135 - v20;
  __chkstk_darwin();
  v166 = &v135 - v21;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v23 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v135 - v24;
  v164 = type metadata accessor for Actions.MetricsReportingContext(0);
  v145 = *(v164 - 1);
  __chkstk_darwin();
  v146 = v26;
  v147 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v165 = (&v135 - v27);
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v29 = &v135 - v28;
  v148 = v6;
  sub_1001CC118(&v135 - v28);
  v30 = type metadata accessor for GenericMusicItem();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_1000095E8(v29, &unk_101189DA0, &unk_100EBF370);
    v181 = 0u;
    v182 = 0u;
    v183 = 0;
LABEL_11:
    sub_1000095E8(&v181, &qword_10118B990, &unk_100EBE7B0);
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0uLL;
    goto LABEL_47;
  }

  GenericMusicItem.innerMusicItem.getter(&v181);
  (*(v31 + 8))(v29, v30);
  if (!*(&v182 + 1))
  {
    goto LABEL_11;
  }

  v139 = v9;
  v140 = a6;
  sub_100059A8C(&v181, v184);
  sub_1000089F8(a3, v25, &unk_1011838F0, &qword_100EC1070);
  sub_1000089F8(v25, v23, &unk_1011838F0, &qword_100EC1070);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v141 = sub_10053771C();
  v138 = v32;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v33 = qword_101218AD0;
  LODWORD(v137) = GroupActivitiesManager.hasJoined.getter();
  v34 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v25, &unk_1011838F0, &qword_100EC1070);
  v35 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v36 = *(v33 + v35);
  v37 = v164;
  v38 = v164[5];
  v39 = type metadata accessor for MetricsEvent.Page(0);
  v40 = v165;
  (*(*(v39 - 8) + 56))(v165 + v38, 1, 1, v39);
  v41 = v37[7];
  v42 = (v40 + v37[6]);
  v43 = v37[8];
  *v40 = xmmword_100EBEF60;
  sub_10006B010(v23, v40 + v38, &unk_1011838F0, &qword_100EC1070);
  v44 = v138;
  *v42 = v141;
  v42[1] = v44;
  *(v40 + v41) = 0;
  *(v40 + v43) = 0;
  v45 = v40 + v37[9];
  *v45 = v137 & 1;
  *(v45 + 1) = v34;
  *(v45 + 2) = v36;
  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100EBC6B0;
  v137 = v46;
  sub_100008FE4(v184, v46 + 32);
  v47 = v162;
  v48 = [v162 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v141 = v181;
  v49 = v161;
  sub_1000089F8(v143, v161, &unk_10118AB20, &unk_100EBF390);
  v50 = type metadata accessor for Actions.PlaybackContext(0);
  v51 = *(v50 - 8);
  v143 = *(v51 + 48);
  v52 = v143(v49, 1, v50);
  v138 = v51 + 48;
  if (v52 == 1)
  {
    v53 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v54 = v142;
    (*(*(v53 - 8) + 56))(v142, 1, 1, v53);
    v183 = 0;
    v181 = 0u;
    v182 = 0u;
    if (qword_10117F608 != -1)
    {
      swift_once();
    }

    v55 = qword_101218AD8;
    sub_1000089F8(v54, v144, &unk_1011838E0, &unk_100EC1670);
    v136 = v55;
    v56 = UIViewController.playActivityInformation.getter();
    v135 = v57;
    v59 = v58;
    v61 = v60;
    sub_1000089F8(&v181, &v175, &unk_101183910, &unk_100EBDD00);
    if (*(&v176 + 1))
    {
      sub_100059A8C(&v175, v179);
    }

    else
    {
      *&v185 = v47;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v69 = v47;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v189, v179);
        v49 = v161;
      }

      else
      {
        v191 = 0;
        v189 = 0u;
        v190 = 0u;
        v179[0] = v69;
        v70 = v69;
        v71 = String.init<A>(reflecting:)();
        v179[3] = &type metadata for Player.CommandIssuerIdentity;
        v179[4] = &protocol witness table for Player.CommandIssuerIdentity;
        v179[0] = v71;
        v179[1] = v72;
        v49 = v161;
        if (*(&v190 + 1))
        {
          sub_1000095E8(&v189, &unk_101183910, &unk_100EBDD00);
        }
      }

      v47 = v162;
      if (*(&v176 + 1))
      {
        sub_1000095E8(&v175, &unk_101183910, &unk_100EBDD00);
      }
    }

    v73 = v56;
    v67 = v166;
    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v136, v144, v73, v135, v59, v61, v179, v166);
    sub_1000095E8(&v181, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v54, &unk_1011838E0, &unk_100EC1670);
    v74 = v143(v49, 1, v50);
    v68 = v163;
    if (v74 != 1)
    {
      sub_1000095E8(v49, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    v67 = v166;
    sub_1001D24B0(v49, v166, type metadata accessor for Actions.PlaybackContext);
    v68 = v163;
  }

  v75 = v50;
  (*(v51 + 56))(v67, 0, 1, v50);
  v76 = type metadata accessor for PlaylistContext(0);
  (*(*(v76 - 8) + 56))(v167, 1, 1, v76);
  v189 = 0u;
  v190 = 0u;
  v191 = 0;
  v192 = xmmword_100EBCEF0;
  v77 = v47;
  PresentationSource.init(viewController:position:)(v77, &v189, &v181);
  v78 = v165;
  v79 = v168;
  sub_1001D17C8(v165, v168, type metadata accessor for Actions.MetricsReportingContext);
  v80 = v145 + 56;
  (*(v145 + 56))(v79, 0, 1, v164);
  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = v78;
  v84 = v147;
  sub_1001D17C8(v83, v147, type metadata accessor for Actions.MetricsReportingContext);
  v85 = (*(v80 + 24) + 48) & ~*(v80 + 24);
  v86 = swift_allocObject();
  v87 = v150;
  *(v86 + 2) = v149;
  *(v86 + 3) = v87;
  *(v86 + 4) = v81;
  *(v86 + 5) = v82;
  v149 = v86;
  sub_1001D24B0(v84, v86 + v85, type metadata accessor for Actions.MetricsReportingContext);
  sub_100008FE4(v137 + 32, v180);

  v162 = v81;

  v161 = v82;

  sub_1000089F8(&v181, &v175, &unk_1011845E0, &unk_100EBF3A0);
  if (v178 == 1)
  {
    PresentationSource.init(viewController:position:)(v77, &v189, v179);
    if (v178 != 1)
    {
      sub_1000095E8(&v175, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v175, v179);
  }

  swift_getObjectType();
  v88 = swift_conformsToProtocol2();
  v89 = 0;
  v90 = 0;
  if (v88 && v77)
  {
    v91 = v88;
    v92 = v77;
    v89 = v77;
    v90 = v91;
  }

  v147 = v90;
  v148 = v89;
  v150 = swift_allocBox();
  v94 = v93;
  sub_1000089F8(v166, v68, &unk_10118AB20, &unk_100EBF390);
  if (v143(v68, 1, v75) == 1)
  {
    v95 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v96 = v152;
    (*(*(v95 - 8) + 56))(v152, 1, 1, v95);
    v177 = 0;
    v175 = 0u;
    v176 = 0u;
    if (qword_10117F608 != -1)
    {
      swift_once();
    }

    v97 = qword_101218AD8;
    sub_1000089F8(v96, v151, &unk_1011838E0, &unk_100EC1670);
    v98 = v97;
    v99 = UIViewController.playActivityInformation.getter();
    v101 = v100;
    v164 = v102;
    v104 = v103;
    sub_1000089F8(&v175, &v173, &unk_101183910, &unk_100EBDD00);
    if (v174)
    {
      sub_100059A8C(&v173, &v185);
    }

    else
    {
      v146 = v98;
      v172 = v77;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v105 = v77;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v169, &v185);
        v68 = v163;
      }

      else
      {
        v171 = 0;
        v169 = 0u;
        v170 = 0u;
        *&v185 = v105;
        v106 = v105;
        v107 = String.init<A>(reflecting:)();
        *&v187 = &type metadata for Player.CommandIssuerIdentity;
        *(&v187 + 1) = &protocol witness table for Player.CommandIssuerIdentity;
        *&v185 = v107;
        *(&v185 + 1) = v108;
        v68 = v163;
        if (*(&v170 + 1))
        {
          sub_1000095E8(&v169, &unk_101183910, &unk_100EBDD00);
        }
      }

      v98 = v146;
      if (v174)
      {
        sub_1000095E8(&v173, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v98, v151, v99, v101, v164, v104, &v185, v94);
    sub_1000095E8(&v175, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v152, &unk_1011838E0, &unk_100EC1670);
    if (v143(v68, 1, v75) != 1)
    {
      sub_1000095E8(v68, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_1001D24B0(v68, v94, type metadata accessor for Actions.PlaybackContext);
  }

  v109 = &v94[*(v75 + 28)];
  sub_1000089F8(v109, &v185, &unk_101183910, &unk_100EBDD00);
  if (v187)
  {
    sub_100059A8C(&v185, &v175);
  }

  else
  {
    *&v175 = v77;
    v110 = v77;
    v111 = String.init<A>(reflecting:)();
    *(&v176 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v177 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v175 = v111;
    *(&v175 + 1) = v112;
    if (v187)
    {
      sub_1000095E8(&v185, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_100EBDC20;
  *(v113 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v113 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v113 + 32) = 0x4D747865746E6F43;
  *(v113 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v175, v113 + 72);
  v114 = static Player.CommandIssuer<>.combining(_:)(v113);
  v116 = v115;

  sub_10000959C(&v175);
  *(&v176 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v177 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v175 = v114;
  *(&v175 + 1) = v116;
  sub_10006B010(&v175, v109, &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v180, &v175);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  *&v163 = String.init<A>(describing:)();
  v152 = v117;
  v164 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v180, &v173);
  sub_10012B7A8(v179, &v175);
  v118 = v158;
  sub_1000089F8(v168, v158, &unk_1011838D0, &unk_100EC0320);
  v119 = v157;
  sub_1000089F8(v167, v157, &unk_1011845D0, &unk_100EBF380);
  v120 = (*(v155 + 80) + 160) & ~*(v155 + 80);
  v121 = (v156 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
  v122 = (v121 + 15) & 0xFFFFFFFFFFFFFFF8;
  v123 = (*(v153 + 80) + v122 + 8) & ~*(v153 + 80);
  v156 = (v123 + v154 + 7) & 0xFFFFFFFFFFFFFFF8;
  v124 = (v123 + v154 + 31) & 0xFFFFFFFFFFFFFFF8;
  v125 = swift_allocObject();
  sub_100059A8C(&v173, v125 + 16);
  *(v125 + 56) = v141;
  sub_10012B828(&v175, v125 + 64);
  sub_10003D17C(v118, v125 + v120, &unk_1011838D0, &unk_100EC0320);
  *(v125 + v121) = v164;
  *(v125 + v122) = v150;
  sub_10003D17C(v119, v125 + v123, &unk_1011845D0, &unk_100EBF380);
  v126 = v125 + v156;
  v127 = v147;
  *v126 = v148;
  *(v126 + 8) = v127;
  *(v126 + 16) = 0;
  v128 = (v125 + v124);
  v129 = v149;
  *v128 = sub_1001CFB1C;
  v128[1] = v129;
  swift_unknownObjectRetain();

  v130 = v159;
  UUID.init()();
  v131 = UUID.uuidString.getter();
  v133 = v132;
  v134 = *(v160 + 8);

  v134(v130, v139);
  v193._countAndFlagsBits = v163;
  v193._object = v152;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v185, v193, v131, v133, sub_1001CFB84, v125);
  v63 = *(&v185 + 1);
  v62 = v185;
  v163 = v187;
  v64 = v186;
  v65 = v188;
  swift_unknownObjectRelease();

  sub_10012BA6C(v179);
  sub_10000959C(v180);
  sub_1000095E8(v168, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(&v181, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v167, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v166, &unk_10118AB20, &unk_100EBF390);
  sub_10000959C(v184);

  sub_1001D1908(v165, type metadata accessor for Actions.MetricsReportingContext);

  v66 = v163;
  a6 = v140;
LABEL_47:
  *a6 = v62;
  *(a6 + 8) = v63;
  *(a6 + 16) = v64;
  *(a6 + 24) = v66;
  *(a6 + 40) = v65;
}

void sub_1001CE268(uint64_t (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  v7 = __chkstk_darwin();
  v9 = v32 - v8 + 32;
  v10 = a1(v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v12 = Strong;
  v13 = [Strong playingItem];

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = [v13 metadataObject];

  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = [v14 innermostModelObject];

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16 || (v17 = v16, swift_beginAccess(), (v18 = swift_unknownObjectWeakLoadStrong()) == 0))
  {
LABEL_12:

LABEL_13:
    v29 = static ActionBuilder.buildIf(_:)(0);
    goto LABEL_14;
  }

  v19 = v18;
  v20 = [v18 view];

  if (v20)
  {
    v21 = [v20 window];

    if (v21)
    {
      v22 = [v21 windowScene];

      if (v22)
      {
        sub_1001D17C8(a5, v9, type metadata accessor for Actions.MetricsReportingContext);
        v23 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
        v24 = v15;
        v15 = v22;
        sub_1001CE6B4(v17, v15, v9, &v34);
        if (v35)
        {
          v39 = v34;
          v41 = v36;
          v42 = v37;
          v40 = v35;
          v43 = v38;
          static Actions.GoToArtist.action(context:)(&v39, v32);
          v25 = static ActionBuilder.buildExpression<A, B>(_:)(v32, &type metadata for Actions.GoToArtist.Context, (&type metadata for () + 1), &protocol witness table for Actions.GoToArtist.Context);
          v33[4] = v32[4];
          v33[5] = v32[5];
          v33[6] = v32[6];
          v33[7] = v32[7];
          v33[0] = v32[0];
          v33[1] = v32[1];
          v33[2] = v32[2];
          v33[3] = v32[3];
          sub_1000095E8(v33, &unk_101183950, &qword_100EBF3B8);
          sub_10010FC20(&unk_101183940, &unk_100EC64D0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100EBC6B0;
          *(inited + 32) = v25;
          v27 = inited + 32;
          v28 = static ActionBuilder.buildBlock(_:)();
          swift_setDeallocating();
          sub_1000095E8(v27, &unk_10118AB80, &qword_100EBF3B0);
          v29 = static ActionBuilder.buildIf(_:)(v28);

          v32[0] = v39;
          sub_1000095E8(v32, &qword_1011815E0, &qword_100EBD050);

LABEL_14:
          sub_10010FC20(&unk_101183940, &unk_100EC64D0);
          v30 = swift_initStackObject();
          *(v30 + 16) = xmmword_100EBDC20;
          *(v30 + 32) = v10;
          *(v30 + 40) = v29;
          static ActionBuilder.buildBlock(_:)();
          swift_setDeallocating();
          sub_10010FC20(&unk_10118AB80, &qword_100EBF3B0);
          swift_arrayDestroy();
          return;
        }
      }
    }

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1001CE6B4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v9 = &v35 - v8;
  v10 = type metadata accessor for Song();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v35 - v14;
  v16 = a1;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000095E8(a3, &unk_1011838D0, &unk_100EC0320);

    result = sub_1000095E8(v9, &unk_101183960, &unk_100EBCF90);
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
  }

  else
  {
    v22 = a2;
    *&v40 = a3;
    *&v39 = *(v11 + 32);
    (v39)(v15, v9, v10);
    v23 = [v16 artist];
    v24 = v23;
    if (v23)
    {
      v25 = v22;
      *&v38 = sub_100483050(v23, v16, v22);
      v27 = v26;
      v28 = [v24 name];
      if (v28)
      {
        v29 = v28;
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *&v37 = v30;

        v31 = v36;
        v24 = v37;
      }

      else
      {

        v31 = 0;
        v24 = 0;
      }

      v32 = v38;
    }

    else
    {

      v31 = 0;
      v32 = 0;
      v27 = 0;
    }

    (v39)(v13, v15, v10);
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v27;
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    *(v34 + 24) = v27;
    Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:)(v13, v31, v24, sub_1001CFCDC, v33, &unk_100EBF3C8, v34, v40, v41, v10, &protocol witness table for Song);
    v39 = v41[1];
    v40 = v41[0];
    v37 = v41[3];
    v38 = v41[2];
    result = sub_100030444(v32, v27);
    v21 = v37;
    v20 = v38;
    v19 = v39;
    v18 = v40;
  }

  *a4 = v18;
  a4[1] = v19;
  a4[2] = v20;
  a4[3] = v21;
  return result;
}

Swift::Int sub_1001CEA34()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001CEAA8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1001CEB14(uint64_t a1)
{
  sub_1001CEDBC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001CEDBC(uint64_t a1)
{
  if (!qword_101183700)
  {
    type metadata accessor for NowPlayingControlsViewController.FavoritingUpdate(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101183700);
    }
  }
}

__n128 sub_1001CEEA0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001CEECC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001CEEEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 104) = v3;
  return result;
}

uint64_t sub_1001CEF50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001CEFAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001CF034(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001CF0F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001CF13C()
{
  result = qword_101183888;
  if (!qword_101183888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183888);
  }

  return result;
}

uint64_t sub_1001CF1A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1001CF23C, 0, 0);
}

uint64_t sub_1001CF23C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  type metadata accessor for MainActor();
  sub_100030444(v3, v2);
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v3;
  v6[5] = v2;
  sub_1001F4F78(0, 0, v1, &unk_100EBF3E0, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001CF360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001CF3FC, v7, v6);
}

uint64_t sub_1001CF3FC()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    (*(v0 + 24))(v2);
  }

  **(v0 + 16) = v1 == 0;
  v3 = *(v0 + 8);

  return v3();
}

BOOL sub_1001CF480(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v2 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88))
  {
    return *(a1 + 96) == *(a2 + 96);
  }

  return 0;
}

double sub_1001CF564@<D0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v10 = a4;
  if (a5 >= 812.0)
  {
    v12 = a4 - dbl_100EBF648[a1];
    if (a5 >= 896.0)
    {
      v15 = 100.0;
    }

    else
    {
      v15 = 92.0;
    }

    v13 = 6.0;
    v14 = 48.0;
  }

  else
  {
    v12 = a4 + -88.0;
    v13 = 12.0;
    v14 = 88.0;
    v15 = 64.0;
  }

  v16 = HI.SizeClass.init(_:)();
  v58 = v13;
  if (!a1)
  {
    v20 = v10 - v14;
    if (a2)
    {
      if ([a2 userInterfaceIdiom] != 1 && v10 >= 340.0)
      {
LABEL_51:
        v21 = 0.0;
        v17 = 95.0;
        if (a5 >= 754.0)
        {
          v17 = a5 / 6.5;
        }

        v18 = 1;
        if (a5 < 754.0)
        {
          v24 = 32.0;
        }

        else
        {
          v24 = 40.0;
        }

        v23 = 66.0;
        if (a5 < 754.0)
        {
          v22 = 88.0;
        }

        else
        {
          v22 = 108.0;
        }

        v25 = 0.0;
        if (!a2)
        {
          goto LABEL_60;
        }

        goto LABEL_46;
      }
    }

    else if (v10 >= 340.0)
    {
      goto LABEL_51;
    }

    v27 = v13 + 56.0;
    v17 = Int.seconds.getter(127);
    v22 = fmin(a5 / 9.0 + a6, 157.0);
    v21 = fmin(a5 / 6.0, 150.0);
    v28 = a5 - v22 - v21;
    if (v27 > (v28 - v20) * 0.5)
    {
      v15 = v27;
    }

    else
    {
      v15 = (v28 - v20) * 0.5;
    }

    if (v28 < v20 + v15 + v17)
    {
      v29 = v28 - v17 - v27;
      if (v12 >= v29)
      {
        v20 = v29;
      }

      else
      {
        v20 = v12;
      }

      v17 = a5 - (v22 + v21 + v27 + v20);
      v15 = v27;
    }

    v18 = 0;
    v25 = 0.0;
    v23 = 66.0;
    v24 = 32.0;
    if (!a2)
    {
      goto LABEL_60;
    }

    goto LABEL_46;
  }

  if (a1 == 1)
  {
    v12 = v10 + -156.0;
    if (v16 >= 5u)
    {
      v17 = 112.0;
    }

    else
    {
      v17 = 116.0;
    }

    v18 = 1;
    v19 = a5 - (v12 + 78.0 + v17 + 76.0);
    if (v19 >= 150.0)
    {
      v21 = 0.0;
      v22 = 76.0;
      v23 = 66.0;
      v24 = 40.0;
      v15 = 78.0;
      v20 = v10 + -156.0;
      v25 = 40.0;
      if (!a2)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v20 = v12 + v19 + -150.0;
      v21 = 0.0;
      v22 = 76.0;
      v23 = 66.0;
      v24 = 40.0;
      v15 = 78.0;
      v25 = 40.0;
      if (!a2)
      {
LABEL_60:
        v51 = 20.0;
        goto LABEL_61;
      }
    }
  }

  else
  {
    v30 = v16;
    v31 = [objc_allocWithZone(_UIGrabber) init];
    [v31 intrinsicContentSize];
    v33 = v32;

    v34 = v10 * 0.5 + v33 * 0.5;
    v35 = Int.seconds.getter(56);
    if (v30 >= 5u)
    {
      v36 = 50;
    }

    else
    {
      v36 = 38;
    }

    v37 = Int.seconds.getter(v36);
    v15 = Int.seconds.getter(60);
    v38 = Int.seconds.getter(267);
    v39 = Int.seconds.getter(350);
    v40 = v38;
    v22 = v35;
    v20 = a5 - v15 - v38 - v37 - v35;
    v41 = v10 - v34 + -78.0 + -52.0;
    if (qword_10117F2C0 != -1)
    {
      v53 = v39;
      v54 = v35;
      v55 = v40;
      swift_once();
      v40 = v55;
      v22 = v54;
      v39 = v53;
    }

    v12 = v41 - (*&qword_101218760 + *&qword_101218760);
    if (v12 >= v20)
    {
      if (v20 < v12 && v39 <= v20)
      {
        v12 = v20;
      }
    }

    else
    {
      v20 = v41 - (*&qword_101218760 + *&qword_101218760);
    }

    v18 = 0;
    v23 = 56.0;
    v24 = 40.0;
    v21 = 140.0;
    v17 = 129.0;
    v42 = a5 - (v40 + v20);
    if (v42 * 0.5 > v15)
    {
      v15 = v42 * 0.5;
    }

    v25 = v42 - v15 - v22;
    v10 = v20;
    if (!a2)
    {
      goto LABEL_60;
    }
  }

LABEL_46:
  v43 = v12;
  v44 = v17;
  v45 = v15;
  v46 = v10;
  v47 = v20;
  v48 = v21;
  v49 = [a2 preferredContentSizeCategory];
  v50 = UIContentSizeCategory.isAccessibilityCategory.getter();

  v21 = v48;
  v20 = v47;
  v10 = v46;
  v15 = v45;
  v17 = v44;
  v12 = v43;
  v51 = 33.0;
  if (v50)
  {
    v24 = 50.0;
  }

  else
  {
    v51 = 20.0;
  }

  v25 = v56;
  v22 = v57;
LABEL_61:
  *a3 = v51;
  result = v58;
  *(a3 + 8) = v58;
  *(a3 + 16) = v15;
  *(a3 + 24) = v10;
  *(a3 + 32) = v20;
  *(a3 + 40) = v12;
  *(a3 + 48) = v17;
  *(a3 + 56) = v21;
  *(a3 + 64) = v18;
  *(a3 + 72) = v24;
  *(a3 + 80) = v23;
  *(a3 + 88) = v25;
  *(a3 + 96) = v22;
  return result;
}

void sub_1001CFB1C()
{
  v1 = *(type metadata accessor for Actions.MetricsReportingContext(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_1001CE268(v2, v3, v4, v5, v6);
}

uint64_t sub_1001CFB84()
{
  v1 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  v2 = (*(v1 + 80) + 160) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  return sub_10048D4C8((v0 + 16), *(v0 + 56), v0 + 64, v0 + v2, *(v0 + v3), *(v0 + v4), (v0 + v6), *(v0 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_1001CFCDC()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1001CFD08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100008F30;

  return sub_1001CF1A0(v2, v3);
}

uint64_t sub_1001CFDA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1001CF360(a1, v4, v5, v7, v6);
}

unint64_t sub_1001CFE60(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v29 = *a1 >> 62;
  v3 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v29)
  {
    goto LABEL_65;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = 0;
  v31 = OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerMinYConstraint;
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = sub_1007E91C0(v5, v2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v4 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = *(a2 + v31);
    if (v9)
    {
      sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
      v10 = v8;
      v11 = v9;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        v14 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
          goto LABEL_20;
        }

        while (1)
        {
          if (v2 >> 62)
          {
            if (v14 == _CocoaArrayWrapper.endIndex.getter())
            {
              return v5;
            }
          }

          else if (v14 == *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v5;
          }

          if ((v2 & 0xC000000000000001) != 0)
          {
            v15 = sub_1007E91C0(v14, v2);
          }

          else
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_57;
            }

            if (v14 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v15 = *(v2 + 8 * v14 + 32);
          }

          v16 = *(a2 + v31);
          if (!v16)
          {
            break;
          }

          v17 = v15;
          v18 = v16;
          v19 = static NSObject.== infix(_:_:)();

          if ((v19 & 1) == 0)
          {
            if (v5 != v14)
            {
LABEL_33:
              if ((v2 & 0xC000000000000001) != 0)
              {
                v20 = sub_1007E91C0(v5, v2);
                v21 = sub_1007E91C0(v14, v2);
              }

              else
              {
                if ((v5 & 0x8000000000000000) != 0)
                {
                  goto LABEL_62;
                }

                v22 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v5 >= v22)
                {
                  goto LABEL_63;
                }

                if (v14 >= v22)
                {
                  goto LABEL_64;
                }

                v23 = *(v2 + 32 + 8 * v14);
                v20 = *(v2 + 32 + 8 * v5);
                v21 = v23;
              }

              v3 = v21;
              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_1005024DC();
                v24 = (v2 >> 62) & 1;
              }

              else
              {
                LODWORD(v24) = 0;
              }

              v25 = v2 & 0xFFFFFFFFFFFFFF8;
              v26 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20);
              *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20) = v3;

              if ((v2 & 0x8000000000000000) != 0 || v24)
              {
                v2 = sub_1005024DC();
                v25 = v2 & 0xFFFFFFFFFFFFFF8;
                if ((v14 & 0x8000000000000000) != 0)
                {
LABEL_53:
                  __break(1u);
                  return _CocoaArrayWrapper.endIndex.getter();
                }
              }

              else if ((v14 & 0x8000000000000000) != 0)
              {
                goto LABEL_53;
              }

              if (v14 >= *(v25 + 16))
              {
                goto LABEL_61;
              }

              v27 = v25 + 8 * v14;
              v28 = *(v27 + 32);
              *(v27 + 32) = v20;

              *a1 = v2;
            }

LABEL_20:
            v6 = __OFADD__(v5++, 1);
            if (v6)
            {
              goto LABEL_60;
            }
          }

          v6 = __OFADD__(v14++, 1);
          if (v6)
          {
            goto LABEL_59;
          }
        }

        if (v5 != v14)
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v6 = __OFADD__(v5++, 1);
    if (v6)
    {
      goto LABEL_56;
    }
  }

  if (v29)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  return *(v3 + 16);
}

void *sub_1001D01A8()
{
  v1 = v0;
  sub_10010FC20(&qword_101189D60, &unk_100EDADC0);
  __chkstk_darwin();
  v3 = &v64 - v2;
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v64 - v8;
  v10 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
  if (v10)
  {
    v66 = &v64 - v8;
    v11 = v10;
    v12 = [v11 tracklist];
    v65 = v4;
    v13 = v12;
    v14 = [v12 playingItem];

    v15 = [v11 tracklist];
    v16 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_glissandoDataSource];
    v18 = *(v16 + 24);
    v17 = *(v16 + 32);
    sub_100030444(v18, v17);
    v19 = v15;
    v4 = v65;
    NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:)(v14, v19, v18, v17, v3);
    v20 = *(v5 + 48);
    if (v20(v3, 1, v4) == 1)
    {
      v21 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
      sub_1001D17C8(v21, v7, type metadata accessor for NowPlaying.TrackMetadata);

      v22 = v20(v3, 1, v4);
      v9 = v66;
      if (v22 != 1)
      {
        sub_1000095E8(v3, &qword_101189D60, &unk_100EDADC0);
      }
    }

    else
    {

      sub_1001D24B0(v3, v7, type metadata accessor for NowPlaying.TrackMetadata);
      v9 = v66;
    }
  }

  else
  {
    v23 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingPath];
    if (v23)
    {
      NowPlaying.TrackMetadata.init(playerPath:item:subtitled:)(v23, 0, 1, v7);
    }

    else
    {
      v24 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
      sub_1001D17C8(v24, v7, type metadata accessor for NowPlaying.TrackMetadata);
    }
  }

  sub_1001D24B0(v7, v9, type metadata accessor for NowPlaying.TrackMetadata);
  result = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl];
  if (!result)
  {
    __break(1u);
    goto LABEL_37;
  }

  v26 = v9[*(v4 + 36)];
  [result setHidden:v26 ^ 1u];
  v27 = sub_1001AFCCC();
  v28 = sub_1001C6D2C(v26 ^ 1u);
  v29 = (*((swift_isaMask & *v27) + 0xE8))(&v68);
  v31 = *(v30 + 8);
  *(v30 + 8) = v28;

  v29(&v68, 0);
  v32 = sub_1001CAA44();
  (*((swift_isaMask & *v32) + 0x158))(v9, 2, 0, 0, 254);

  v33 = OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingPath;
  v34 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingPath];
  if (!v34)
  {
    goto LABEL_16;
  }

  v35 = [v34 route];
  if (!v35)
  {
    goto LABEL_16;
  }

  v36 = v35;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v37 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlider];
    if (v37)
    {
      v38 = *&v37[OBJC_IVAR____TtC5Music12VolumeSlider_route];
      *&v37[OBJC_IVAR____TtC5Music12VolumeSlider_route] = result;
      v39 = v36;
      v40 = v37;
      sub_100726828(v38);

      v36 = v38;
      goto LABEL_15;
    }

LABEL_37:
    __break(1u);
    return result;
  }

LABEL_15:

LABEL_16:
  sub_1001C250C();
  v41 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
  if (v41)
  {
    v42 = *&v1[v33];
    v43 = v42;
    v44 = v41;
    sub_1000692A4(v42);
    sub_1001B5B98(v44);
  }

  v45 = sub_1001AB0B4();
  [v45 setNeedsUpdateConfiguration];

  v46 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___favoriteSystemButton];
  [v46 setHidden:(sub_1001BDE70() & 1) == 0];

  if (sub_1001BDE70())
  {
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v48 = [v1 traitCollection];
    v49 = [v48 preferredContentSizeCategory];

    LOBYTE(v48) = UIContentSizeCategory.isAccessibilityCategory.getter();
    if (v48)
    {
      v50 = 3;
    }

    else
    {
      v50 = 1;
    }

    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();

    *&v74 = sub_1001D1970;
    *(&v74 + 1) = v47;
    LOWORD(v75) = 257;
    *(&v75 + 1) = v50;
    *&v76 = sub_1001C68E4;
    *(&v76 + 1) = 0;
    v77 = 0uLL;
    *&v78 = sub_1001D1978;
    *(&v78 + 1) = v51;
    if (qword_10117F8A8 != -1)
    {
      swift_once();
    }

    LOBYTE(v68) = 0;
    v70 = v75;
    v71 = v76;
    v72 = v77;
    v73 = v78;
    v69 = v74;
    swift_unknownObjectWeakInit();

    sub_1001D1980(&v74, &v67);
    sub_10058B0DC(&v68);

    sub_1001D19DC(&v74);
    sub_100198CAC(&v68);
  }

  else
  {
    if (qword_10117F8A8 != -1)
    {
      swift_once();
    }

    sub_10058BB38(0, 0);
  }

  v52 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsManager];
  if (([v52 musicHapticsEnabled] & v26) == 1)
  {
    v53 = *(v9 + 2);
    if (v53)
    {
      v54 = [v53 metadataObject];
      if (v54)
      {
        v55 = v54;
        v56 = [v54 innermostModelObject];

        objc_opt_self();
        v57 = swift_dynamicCastObjCClass();
        if (v57)
        {
          v58 = [v57 identifiers];
          MPIdentifierSet.bestStoreIdentifier.getter();
          v60 = v59;

          if (v60)
          {
            v61 = String._bridgeToObjectiveC()();

            v62 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *(&v70 + 1) = sub_1001D1968;
            *&v71 = v62;
            v68 = _NSConcreteStackBlock;
            *&v69 = 1107296256;
            *(&v69 + 1) = sub_1005C3688;
            *&v70 = &unk_10109E980;
            v63 = _Block_copy(&v68);

            [v52 checkHapticTrackAvailabilityForMediaMatchingCode:v61 completionHandler:v63];
            _Block_release(v63);

            v56 = v61;
          }
        }
      }
    }
  }

  [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView] invalidateIntrinsicContentSize];
  return sub_1001D1908(v9, type metadata accessor for NowPlaying.TrackMetadata);
}

void sub_1001D0A98()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying) = 0;
  *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkViewConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView) = 0;
  *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsToken) = 0;
  *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_hapticsState) = 3;
  *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_grabberView) = 0;
  v2 = OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView;
  type metadata accessor for PassthroughView();
  *(v1 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_dismissButton) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_shouldAnimateArtworkChange) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkViewMask) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_outgoingArtwork) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionIndicatorView) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController__playingItemAudioTrait) = 9;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_buttonsStackView) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___contextSystemButton) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___favoriteSystemButton) = 0;
  v3 = OBJC_IVAR___MusicNowPlayingControlsViewController_favoritingUpdate;
  v4 = type metadata accessor for NowPlayingControlsViewController.FavoritingUpdate(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_reactionController) = 0;
  v5 = (v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_autoMixTransitionInformation);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_removeTTRSmartTransitionButtonTask) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton) = 0;
  v6 = OBJC_IVAR___MusicNowPlayingControlsViewController_attributionContainerView;
  v7 = [objc_allocWithZone(UIView) init];
  v8 = UIView.forAutolayout.getter();

  *(v1 + v6) = v8;
  v9 = OBJC_IVAR___MusicNowPlayingControlsViewController_attributionView;
  type metadata accessor for NowPlayingAttributionView();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = UIView.forAutolayout.getter();

  *(v1 + v9) = v11;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_metadataStackView) = 0;
  v12 = OBJC_IVAR___MusicNowPlayingControlsViewController_shuffleButton;
  type metadata accessor for NowPlayingShuffleButton();
  *(v1 + v12) = [swift_getObjCClassFromMetadata() buttonWithType:0];
  v13 = OBJC_IVAR___MusicNowPlayingControlsViewController_repeatButton;
  type metadata accessor for NowPlayingRepeatButton();
  *(v1 + v13) = [swift_getObjCClassFromMetadata() buttonWithType:0];
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_bottomContainerView) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsStackView) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_leftButton) = 0;
  v14 = (v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_leftButtonConfiguration);
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButton) = 0;
  v15 = (v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButtonConfiguration);
  v15[1] = 0;
  v15[2] = 0;
  *v15 = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_rightButton) = 0;
  v16 = (v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_rightButtonConfiguration);
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlider) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsStackView) = 0;
  v17 = OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl;
  type metadata accessor for NowPlayingRouteSharePlayTogetherControl();
  *(v1 + v17) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___bottomButtonsConfiguration) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___lyricsButtonStateImages) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_singIndicatorView) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_sharePlayTogetherParticipantsSubscription) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkPlaceholderLayoutGuide) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentRegularLayoutConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentExtendedLayoutConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerRegularLayoutConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerExtendedCollapsedLayoutConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideRegularConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideCollapsedConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_placeholderArtworkLayoutGuideConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController__metadataStackViewRegularConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_metadataStackViewCollapsedConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsCompactConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsRegularConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionLabelTransportControlsConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionLabelFullScreenLyricsConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_transportAccessoryButtonsCompactConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_transportAccessoryButtonsRegularConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_grabberYConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkYConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_timeControlWidthConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerMinYConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerCenterYConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerLayoutGuideHeightConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_leftButtonWidthConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsLayoutGuideHeightConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlideBottomConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsLayoutGuideHeightConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideBottomConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideTopConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideMotionBackgroundTopConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideMotionBackgroundCollapsedTopConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideExtendedTopConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideSplitViewBottomConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_routeButtonRegularLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeMaskLayer) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playerSubscriptions) = &_swiftEmptySetSingleton;
  v18 = OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsManager;
  *(v1 + v18) = [objc_opt_self() sharedManager];
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideFullBleedConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingShouldShowMotionBackground) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_deferArtworkModeUpdates) = 0;
  v19 = (v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkDidChangeHandler);
  *v19 = 0;
  v19[1] = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_isPresentingRoutePicker) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_isPresentingSharePlayTogetherSessionManagement) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_isInTakeoverMode) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_needsTopViewsUpdate) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_animationData) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_areControlsHidden) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_sessionWaitTimer) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_goToMenu) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_bindings) = _swiftEmptyArrayStorage;
  v20 = (v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_previousContentLayoutGuideFrame);
  *v20 = 0u;
  v20[1] = 0u;
  v21 = (v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_previousArtworkFrame);
  *v21 = 0u;
  v21[1] = 0u;
  v22 = (v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_previousBounds);
  *v22 = 0u;
  v22[1] = 0u;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTapGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_videoPinchGestureRecognizer) = 0;
  v23 = v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemNavigationStyle;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = -1;
  v24 = OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsController;
  type metadata accessor for TransportControlsController();
  v25 = swift_allocObject();
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0u;
  *(v1 + v24) = v25;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___mediaControls) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___leaveSessionButton) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_didAnimateReactionOnce) = 0;
  *(v25 + 96) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_reactionEffectInteraction) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitWatchdog) = 0;
  bottom = UIEdgeInsetsZero.bottom;
  HI.SizeClass.init(_:)();
  [0 userInterfaceIdiom];
  v27 = Int.seconds.getter(127);
  v28 = fmin(bottom + 0.0, 157.0);
  v29 = fmax((0.0 - v28 + 88.0) * 0.5, 68.0);
  v30 = -88.0;
  if (0.0 - v28 < v27 + v29 + -88.0)
  {
    v31 = 0.0 - v28 - v27 + -68.0;
    v30 = -88.0;
    if (v31 <= -88.0)
    {
      v30 = v31;
    }

    v29 = 68.0;
    v27 = 0.0 - (v28 + v30 + 68.0);
  }

  v32 = v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_metrics;
  *v32 = xmmword_100EBEE10;
  *(v32 + 16) = v29;
  *(v32 + 24) = 0;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0xC056000000000000;
  *(v32 + 48) = v27;
  *(v32 + 56) = 0;
  *(v32 + 64) = 0;
  *(v32 + 72) = xmmword_100EBEE20;
  *(v32 + 88) = 0;
  *(v32 + 96) = v28;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingPath) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_sharePlayTogetherSession) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_needsSharePlayTogetherTooltipPresentation) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_presentingVideo) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_videoOutput) = 0;
  v42[32] = 0;
  v33 = OBJC_IVAR___MusicNowPlayingControlsViewController_glissandoDataSource;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v34 = qword_101218AC8;
  _s19GlissandoDataSourceCMa();
  v35 = swift_allocObject();
  *(v35 + 48) = 0xED00006572757473;
  *(v35 + 16) = v34;
  *(v35 + 24) = sub_1001CA9DC;
  *(v35 + 32) = xmmword_100EBEE30;
  v36 = MPCPlayerRequestTracklistRange.neighboringItems.unsafeMutableAddressor();
  v37 = *v36;
  v38 = v36[1];
  v39 = *(*v34 + 752);

  v40 = v39(v42);
  v41.reverseCount = v37;
  v41.forwardCount = v38;
  Player.NowPlayingConfiguration.insert(_:)(v41);
  v40(v42, 0);
  *(v1 + v33) = v35;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___glissCoordinator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001D1494()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1001D1788;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_10109E868;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001CF0F0(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

uint64_t sub_1001D17C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D184C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100008F30;

  return sub_100543240(v2, v3, v5, v4, v0 + 48);
}

uint64_t sub_1001D1908(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1001D1A30()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    if ([*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsManager] isActive])
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  v1[OBJC_IVAR___MusicNowPlayingControlsViewController_hapticsState] = v2;

  return [v1 updatePlayingItemAudioTraitButton];
}

uint64_t sub_1001D1AC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10035C184(a1, v4, v5, v6);
}

unint64_t sub_1001D1C24()
{
  result = qword_10118ABB0;
  if (!qword_10118ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118ABB0);
  }

  return result;
}

unint64_t sub_1001D1C78()
{
  result = qword_101183A10;
  if (!qword_101183A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183A10);
  }

  return result;
}

uint64_t sub_1001D1CE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return sub_1001BF388(a1);
}

uint64_t sub_1001D1DB4()
{

  return swift_deallocObject();
}

uint64_t sub_1001D1F78()
{

  return swift_deallocObject();
}

id sub_1001D1FC0()
{
  v1 = v0[3];
  if (*(v1 + 80) == v0[2])
  {
    v2 = v0[4];
    *(v1 + 72) = 1;
    return [v2 startAnimation];
  }

  return result;
}

uint64_t sub_1001D1FF8()
{

  return swift_deallocObject();
}

id sub_1001D207C()
{
  result = *(*(v0 + 16) + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

uint64_t sub_1001D20B0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1001AFA20(v6, a1, v4, v5, v8, v7);
}

uint64_t sub_1001D218C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1001AEE18(a1, v4, v5, v1 + 32);
}

uint64_t sub_1001D22D0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001D2310()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1001AB554();
}

uint64_t sub_1001D23D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1001A73C0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001D249C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

uint64_t sub_1001D24B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D2518(uint64_t a1)
{
  v4 = *(_s7ContextVMa(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1001A8874(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1001D2610(uint64_t a1, uint64_t a2)
{
  v4 = _s7ContextVMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1001D2688(void *result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1001D26A0(result, a2, a3 & 1);
  }

  return v3;
}

double sub_1001D26A0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double sub_1001D26C0(void *result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1001D26D8(result, a2, a3 & 1);
  }

  return v3;
}

double sub_1001D26D8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
  }

  else
  {
  }

  return result;
}

id sub_1001D27BC(void *a1)
{
  result = *(*(v1 + 16) + *a1);
  if (result)
  {
    return [result setAlpha:?];
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D27DC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001D281C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1001D284C()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

void sub_1001D2894(void *a1, void *a2, void *a3)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1001D290C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1001BBC14();
}

unint64_t sub_1001D29B8()
{
  result = qword_101183AF8;
  if (!qword_101183AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183AF8);
  }

  return result;
}

void sub_1001D2A0C()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) removeFromSuperview];
  v2 = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton);
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton) = 0;
}

uint64_t sub_1001D2A58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1001A656C(a1, v4, v5, v7, v6);
}

uint64_t sub_1001D2B18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1001A6B58(a1, v4, v5, v7, v6);
}

uint64_t sub_1001D2E2C()
{

  return swift_deallocObject();
}

uint64_t sub_1001D2E74()
{

  return swift_deallocObject();
}

uint64_t sub_1001D2F1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1001A2B98(a1);
}

uint64_t sub_1001D2FC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1001A286C(a1);
}

void sub_1001D3268(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = &v31 - v11;
  if (a1)
  {
    if (qword_10117F5F8 != -1)
    {
      goto LABEL_27;
    }

    goto LABEL_3;
  }

  v17 = [v3 topViewController];
  if (v17)
  {
    v18 = v17;
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();

    if (v19)
    {
      Logger.init(subsystem:category:)();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Already showing Now Playing - no-op", v22, 2u);
      }

      (*(v7 + 8))(v12, v6);
      return;
    }
  }

  v23 = [v3 viewControllers];
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v24 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_12:
      v9 = 0;
      v7 = v24 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v25 = sub_10004056C(v9, v24);
          v26 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
          if (v9 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_27:
            swift_once();
LABEL_3:
            v13 = (*(*qword_101218AC8 + 528))();
            if (v13)
            {
              v14 = v13;
              v15 = objc_allocWithZone(type metadata accessor for SharePlayTogetherSessionManagementViewController(0));
              v16 = sub_10074B30C(v14);
LABEL_30:
              v32 = v16;
              [v3 pushViewController:? animated:?];
LABEL_31:
              v30 = v32;
            }

            else
            {
LABEL_22:
              Logger.init(subsystem:category:)();
              v27 = Logger.logObject.getter();
              v28 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v27, v28))
              {
                v29 = swift_slowAlloc();
                *v29 = 0;
                _os_log_impl(&_mh_execute_header, v27, v28, "Cannot push SharePlay Together session, no session found", v29, 2u);
              }

              (*(v7 + 8))(v9, v6);
            }

            return;
          }

          v25 = *(v24 + 8 * v9 + 32);
          v26 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_21;
          }
        }

        v32 = v25;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          goto LABEL_31;
        }

        ++v9;
      }

      while (v26 != v6);
    }
  }

  v16 = [objc_opt_self() musicNowPlayingViewController];
  if (v16)
  {
    goto LABEL_30;
  }

  __break(1u);
}

char *sub_1001D3748()
{
  ObjectType = swift_getObjectType();
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v39 = &ObjectType - v1;
  v2 = sub_10010FC20(&unk_101183D80, &qword_100EC5830);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &ObjectType - v4;
  v32 = sub_10010FC20(&qword_101182EB0, &qword_100EBE990);
  v6 = *(v32 - 8);
  __chkstk_darwin();
  v8 = &ObjectType - v7;
  v9 = sub_10010FC20(&qword_101183D90, &qword_100EBF748);
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin();
  v11 = &ObjectType - v10;
  v12 = sub_10010FC20(&qword_101183D98, &qword_100EBF750);
  v35 = *(v12 - 8);
  v36 = v12;
  __chkstk_darwin();
  v14 = &ObjectType - v13;
  v15 = sub_10010FC20(&qword_101183DA0, &qword_100EBF758);
  v37 = *(v15 - 8);
  v38 = v15;
  __chkstk_darwin();
  v17 = &ObjectType - v16;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10010E5A8(_swiftEmptyArrayStorage);
  }

  else
  {
    v18 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_subscriptions] = v18;
  v19 = &v0[OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 0;
  *&v0[OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_privacyAcknowledgementObserver] = 0;
  v20 = OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_siriActionSource;
  *&v0[v20] = [objc_allocWithZone(SiriDirectActionSource) initWithDelegate:0];
  v41.receiver = v0;
  v41.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v41, "initWithNibName:bundle:", 0, 0);
  [v21 setNavigationBarHidden:0];
  [v21 setDelegate:v21];
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  (*(*qword_101218AC8 + 456))();
  sub_100020674(&unk_1011A4650, &unk_101183D80, &qword_100EC5830, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher.filter(_:)();
  (*(v3 + 8))(v5, v2);
  sub_100020674(&qword_101182F30, &qword_101182EB0, &qword_100EBE990, &protocol conformance descriptor for Publishers.Filter<A>);
  v22 = v32;
  Publisher.map<A>(_:)();
  (*(v6 + 8))(v8, v22);
  sub_100020674(&qword_101183DA8, &qword_101183D90, &qword_100EBF748, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1001D7148();
  v23 = v34;
  Publisher<>.removeDuplicates()();
  (*(v33 + 8))(v11, v23);
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  v40 = v24;
  v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v26 = v39;
  (*(*(v25 - 8) + 56))(v39, 1, 1, v25);
  sub_100020674(&unk_101183DC0, &qword_101183D98, &qword_100EBF750, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_10001C070(&qword_101184920, &qword_101182960, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v27 = v36;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v26, &qword_101182140, &unk_100EBD2A0);

  (*(v35 + 8))(v14, v27);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&unk_101183DD0, &qword_101183DA0, &qword_100EBF758, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v28 = v38;
  Publisher<>.sink(receiveValue:)();

  (*(v37 + 8))(v17, v28);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();

  type metadata accessor for PrivacyAcknowledgementObserver();
  swift_allocObject();
  *&v21[OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_privacyAcknowledgementObserver] = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, sub_1001D71A4, v29);

  return v21;
}

void sub_1001D3F98(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = [*a1 tracklist];
    v5 = [v4 playingItem];

    v6 = v5 != 0;
    if (v5)
    {
    }

    v7 = [v3 state];
    v8 = [v3 tracklist];
    v9 = [v8 playingItem];

    if (v9)
    {
      LOBYTE(v3) = MPCPlayerResponseItem.isLiveContent.getter();
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v3 & 1;
}

void sub_1001D409C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[16];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = Strong + OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState;
    v8 = *(Strong + OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState);
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    *v7 = v2;
    *(v7 + 8) = v3;
    *(v7 + 16) = v4;
    sub_1001D4F00(v8, v9, v10);
  }
}

void sub_1001D4130(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001D418C(a1 & 1);
  }
}

void sub_1001D418C(char a1)
{
  v2 = v1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    Logger.init(subsystem:category:)();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Showing message about content restriction that should be resolved on device", v10, 2u);
    }

    (*(v5 + 8))(v7, v4);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v11 = String.init(localized:table:bundle:locale:comment:)();
    v13 = v12;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v14 = String.init(localized:table:bundle:locale:comment:)();
    v16 = v15;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v17 = String.init(localized:table:bundle:locale:comment:)();
    v19 = v18;
    v20 = objc_allocWithZone(type metadata accessor for CarPlayInformationView());
    v21 = sub_100268B8C(v11, v13, v14, v16, 0, v17, v19, sub_1001D5A14, 0, 0);
    v22 = [objc_allocWithZone(UIViewController) init];
    [v22 setView:v21];
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100EBC6C0;
    *(v23 + 32) = v22;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v24 = v22;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setViewControllers:isa];
  }

  else
  {
    v26 = [objc_allocWithZone(type metadata accessor for CarPlayTabBarController()) init];
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100EBC6C0;
    *(v27 + 32) = v26;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v28 = v26;
    v30 = Array._bridgeToObjectiveC()().super.isa;

    [v2 setViewControllers:v30];

    v29 = v30;
  }
}

void sub_1001D46CC()
{
  ObjectType = swift_getObjectType();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *&v2 = __chkstk_darwin().n128_u64[0];
  v4 = &v16 - v3;
  v16.receiver = v0;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewDidLoad", v2);
  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor:v7];

    v8 = objc_opt_self();
    v9 = [v8 sharedPrivacyInfo];
    v10 = [v9 privacyAcknowledgementRequiredForMusic];

    sub_1001D418C(v10);
    v11 = [v8 sharedPrivacyInfo];
    LOBYTE(v9) = [v11 privacyAcknowledgementRequiredForMusic];

    if ((v9 & 1) == 0)
    {
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
      type metadata accessor for MainActor();
      v13 = v0;
      v14 = static MainActor.shared.getter();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = &protocol witness table for MainActor;
      v15[4] = v13;
      sub_1001F4CB8(0, 0, v4, &unk_100EBF740, v15);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001D48F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1001D49EC, v7, v6);
}

uint64_t sub_1001D49EC()
{
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v3 = (*(*qword_101218AC8 + 728) + **(*qword_101218AC8 + 728));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1001D4B3C;

  return v3();
}

uint64_t sub_1001D4B3C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    v4 = *(v3 + 56);
    v5 = *(v3 + 64);
    v6 = sub_1001D4E14;
  }

  else
  {
    v4 = *(v3 + 56);
    v5 = *(v3 + 64);
    v6 = sub_1001D4C64;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1001D4C64()
{
  v1 = v0[10];

  if (v1)
  {
    v2 = v0[10];
    v3 = [v2 playerPath];
    v4 = [v3 isLocalDevice];

    if (v4 && [v2 state] == 2)
    {
      Logger.init(subsystem:category:)();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "viewDidLoad - pushing Now Playing", v7, 2u);
      }

      v9 = v0[4];
      v8 = v0[5];
      v10 = v0[3];

      (*(v9 + 8))(v8, v10);
      sub_1001D3268(0, 1);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001D4E14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D4EC4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1))
  {
    return a1[16] ^ a2[16] ^ 1u;
  }

  return 0;
}

void sub_1001D4F00(char a1, uint64_t a2, int a3)
{
  v6 = a1 & 1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v8 = &v19 - v7;
  v9 = &v3[OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState];
  v10 = v3[OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState];
  v11 = v10 == v6 && *&v3[OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState + 8] == a2;
  if (!v11 || ((v3[OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState + 16] ^ a3) & 1) != 0)
  {
    sub_1001D50D8(v10);
    v12 = [objc_opt_self() sharedPrivacyInfo];
    v13 = [v12 privacyAcknowledgementRequiredForMusic];

    if ((v13 & 1) == 0 && [v3 isViewLoaded] && (v9[16] & 1) == 0 && *(v9 + 1) == 2 && (a2 & 0xFFFFFFFFFFFFFFFBLL) != 2)
    {
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
      type metadata accessor for MainActor();
      v16 = v3;
      v17 = static MainActor.shared.getter();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = &protocol witness table for MainActor;
      v18[4] = v16;
      sub_1001F4CB8(0, 0, v8, &unk_100EBF768, v18);
    }
  }
}

double sub_1001D50D8(char a1)
{
  LOBYTE(v2) = a1;
  v3 = [v1 viewControllers];
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_10010FC20(&qword_101183DE8, &unk_100EBF770);
  v5 = sub_100020674(&qword_101183DF0, &qword_101183DE8, &unk_100EBF770, &protocol conformance descriptor for [A]);
  v6 = Sequence.exclude(_:)(sub_1001D691C, 0, v4, v5);

  if (v6 >> 62)
  {
    goto LABEL_16;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  v7 = v6;
  while (1)
  {

    v8 = sub_1001D5624(v7);

    if (v8 >> 62)
    {
      break;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_18;
    }

LABEL_5:
    v10 = 0;
    v11 = v2 ^ 1;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = sub_1007E90E8(v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v2 = v12;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      type metadata accessor for MusicCarPlayBarNowPlayingButtonItem();
      if (swift_dynamicCastClass())
      {
        [v2 setHidden:v11 & 1];
      }

      ++v10;
      if (v13 == v9)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:

    v7 = _bridgeCocoaArray<A>(_:)();
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (v9)
  {
    goto LABEL_5;
  }

LABEL_18:

  return result;
}

uint64_t sub_1001D5320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001D5414, v7, v6);
}

uint64_t sub_1001D5414()
{
  v1 = v0[2];

  Logger.init(subsystem:category:)();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v3, v4))
  {

    v3 = v0[2];
    goto LABEL_10;
  }

  v5 = swift_slowAlloc();
  *v5 = 67109120;
  sub_1001D6A2C();
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  if (![v6 activationState])
  {

    goto LABEL_8;
  }

  v8 = [v7 activationState];

  if (v8 == 1)
  {
LABEL_8:
    v9 = 1;
    goto LABEL_9;
  }

LABEL_5:
  v9 = 0;
LABEL_9:
  v10 = v0[2];
  *(v5 + 4) = v9;

  _os_log_impl(&_mh_execute_header, v3, v4, "playbackState updated - pushing Now Playing [animated:%{BOOL}d]", v5, 8u);

LABEL_10:
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];

  (*(v12 + 8))(v11, v13);
  sub_1001D6A2C();
  if (v14)
  {
    v15 = v14;
    if ([v14 activationState])
    {
      v16 = [v15 activationState];

      v17 = v16 == 1;
    }

    else
    {

      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  sub_1001D3268(0, v17);

  v18 = v0[1];

  return v18();
}

void *sub_1001D5624(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v4 = &qword_101181588;
    v30 = v1;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10004056C(v2, v29);
      }

      else
      {
        if (v2 >= *(v32 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v31 + 8 * v2);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject navigationItem];
      v8 = [v7 rightBarButtonItems];

      if (v8)
      {
        sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v5 = v8;
      }

      else
      {
        v9 = _swiftEmptyArrayStorage;
      }

      v10 = v9 >> 62;
      if (v9 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_42:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_42;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          v37 = v3;
          v14 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *(v14 + 24) >> 1)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

LABEL_23:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_24;
      }

      if (v12)
      {
        goto LABEL_23;
      }

      v37 = v3;
LABEL_24:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v37 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      v35 = v11;
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v10)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_29:
          if (((v16 >> 1) - v15) < v35)
          {
            goto LABEL_46;
          }

          v18 = v14 + 8 * v15 + 32;
          v34 = v2;
          if (v10)
          {
            if (v17 < 1)
            {
              goto LABEL_48;
            }

            sub_100020674(&unk_101181590, v4, &qword_100EBD020, &protocol conformance descriptor for [A]);
            v19 = v4;
            for (i = 0; i != v17; ++i)
            {
              sub_10010FC20(v19, &qword_100EBD020);
              v22 = sub_1006CAF1C(v36, i, v9, v21);
              v24 = *v23;
              (v22)(v36, 0);
              *(v18 + 8 * i) = v24;
            }
          }

          else
          {
            sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
            swift_arrayInitWithCopy();
            v19 = v4;
          }

          v1 = v30;
          v4 = v19;
          v2 = v34;
          if (v35 >= 1)
          {
            v25 = *(v14 + 16);
            v6 = __OFADD__(v25, v35);
            v26 = v25 + v35;
            if (v6)
            {
              goto LABEL_47;
            }

            *(v14 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_29;
        }
      }

      if (v35 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      v3 = v37;
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return _swiftEmptyArrayStorage;
}

void sub_1001D5A14()
{
  v0 = [objc_opt_self() defaultService];
  if (v0)
  {
    v1 = v0;
    v2 = String._bridgeToObjectiveC()();
    v4[4] = sub_1001D5B14;
    v4[5] = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_1001D5D0C;
    v4[3] = &unk_1010A00B0;
    v3 = _Block_copy(v4);
    [v1 openApplication:v2 completion:v3];
    _Block_release(v3);
  }
}

void sub_1001D5B14(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    Logger.init(subsystem:category:)();
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error dismissing Music app error=%{public}@", v8, 0xCu);
      sub_1000095E8(v9, &unk_101183D70, &unk_100EC6540);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_1001D5D0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1001D5D78()
{
  sub_1001D68A4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBE260;
  *(v0 + 32) = sub_100009F78(0, &qword_101183D48, MCDNowPlayingViewController_ptr);
  *(v0 + 40) = sub_100009F78(0, &qword_101183D50, off_10108B710);
  result = type metadata accessor for MCDSharePlayTogetherSessionViewController();
  *(v0 + 48) = result;
  off_101183C40 = v0;
  return result;
}

uint64_t sub_1001D5E10()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  if (v1)
  {
    v2 = objc_opt_self();
    v3 = [v2 configurationWithScale:1];
    v4 = [v2 configurationWithWeight:5];
    v5 = [v3 configurationByApplyingConfiguration:v4];

    v6 = [v1 imageWithSymbolConfiguration:v5];
  }

  type metadata accessor for MusicCarPlayBarButtonItem();
  swift_unknownObjectRetain();
  return UIBarButtonItem.init(title:image:target:action:menu:)();
}

void *sub_1001D5F74(char a1)
{
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE270;
  type metadata accessor for MusicCarPlayBarNowPlayingButtonItem();
  *(inited + 32) = [swift_getObjCClassFromMetadata() nowPlayingBarButtonWithTarget:v1 action:"nowPlayingButtonAction"];
  type metadata accessor for MusicCarPlayBarButtonItem();
  v12.value.super.super.isa = 0;
  v12.is_nil = 0;
  *(inited + 40) = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemFixedSpace, v12, v13);
  *(inited + 48) = sub_1001D5E10();
  specialized ContiguousArray.reserveCapacity(_:)();
  v4 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v5 = sub_1007E939C(0, inited);
  }

  else
  {
    v5 = *(inited + 32);
  }

  v6 = v5;
  if (swift_dynamicCastClass())
  {
    [v6 setHidden:(a1 & 1) == 0];
  }

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  if (v4)
  {
    v8 = sub_1007E939C(1uLL, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_20;
    }

    v8 = *(inited + 40);
  }

  v9 = v8;
  if (swift_dynamicCastClass())
  {
    [v9 setHidden:(a1 & 1) == 0];
  }

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  if (!v4)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v10 = *(inited + 48);
      goto LABEL_15;
    }

LABEL_20:
    __break(1u);
    return result;
  }

  v10 = sub_1007E939C(2uLL, inited);
LABEL_15:
  v11 = v10;

  if (swift_dynamicCastClass())
  {
    [v11 setHidden:(a1 & 1) == 0];
  }

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  return _swiftEmptyArrayStorage;
}

BOOL sub_1001D6550()
{
  if (qword_10117F318 != -1)
  {
    swift_once();
  }

  v0 = *(off_101183C40 + 2);
  v1 = (off_101183C40 + 32);
  do
  {
    v2 = v0;
    if (v0-- == 0)
    {
      break;
    }

    v4 = *v1++;
  }

  while (swift_getObjectType() != v4);
  return v2 != 0;
}

id sub_1001D66B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicCarPlayBarButtonItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 initializeBufferWithCopyOfBuffer for CarPlayRootNavigationController.PlaybackState(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CarPlayRootNavigationController.PlaybackState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
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

uint64_t storeEnumTagSinglePayload for CarPlayRootNavigationController.PlaybackState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001D68A4()
{
  v0 = sub_10010FC20(&qword_101183D58, &qword_100EBF720);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_101183D60;
    v3 = &unk_100EBF728;
  }

  else
  {
    v2 = &qword_101183990;
    v3 = &qword_100EBC750;
  }

  return sub_10010FC20(v2, v3);
}

void sub_1001D693C()
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10010E5A8(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_subscriptions) = v1;
  v2 = v0 + OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_privacyAcknowledgementObserver) = 0;
  v3 = OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_siriActionSource;
  *(v0 + v3) = [objc_allocWithZone(SiriDirectActionSource) initWithDelegate:0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001D6A2C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
  sub_10001C070(&qword_101183DE0, &qword_1011839F0, UIScene_ptr, &protocol conformance descriptor for NSObject);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
    v6 = v29;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v15)
    {
      while (1)
      {
        v16 = [v15 session];
        v17 = [v16 role];

        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {
          break;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          goto LABEL_25;
        }

        v5 = v13;
        v6 = v14;
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v15 = v24;
          v13 = v5;
          v14 = v6;
          if (v24)
          {
            continue;
          }
        }

        goto LABEL_25;
      }
    }

LABEL_25:
    sub_10005C9F8(v2);
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_25;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1001D6D4C(id a1)
{
  if (qword_10117F318 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v3 = *(off_101183C40 + 2);
    v4 = (off_101183C40 + 32);
    while (v3)
    {
      v5 = *v4++;
      --v3;
      if (swift_getObjectType() == v5)
      {
        return;
      }
    }

    v6 = [a1 navigationItem];
    v7 = [v6 rightBarButtonItems];

    if (v7)
    {
      sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    a1 = [a1 navigationItem];
    v9 = sub_1001D5F74(*(v1 + OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState));
    v10 = v9;
    if (v9 >> 62)
    {
      v1 = (v9 < 0 ? v9 : v9 & 0xFFFFFFFFFFFFFF8);
      sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
      v11 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      v1 = (v10 & 0xFFFFFFFFFFFFFF8);
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
      v11 = v10;
    }

    v19 = _swiftEmptyArrayStorage;
    if (v8 >> 62)
    {
      break;
    }

    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_32;
    }

LABEL_13:
    v17 = a1;
    v13 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v14 = sub_1007E90E8(v13, v8);
      }

      else
      {
        if (v13 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v14 = *(v8 + 8 * v13 + 32);
      }

      v15 = v14;
      a1 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        break;
      }

      type metadata accessor for MusicCarPlayBarButtonItem();
      if (swift_dynamicCastClass())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v19;
        specialized ContiguousArray._endMutation()();
      }

      ++v13;
      if (a1 == v12)
      {
        a1 = v17;
        v16 = v19;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (v12)
  {
    goto LABEL_13;
  }

LABEL_32:
  v16 = _swiftEmptyArrayStorage;
LABEL_33:

  v19 = v11;
  sub_1001240B4(v16);
  sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setRightBarButtonItems:isa];
}

uint64_t sub_1001D7094(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1001D48F8(a1, v4, v5, v6);
}

unint64_t sub_1001D7148()
{
  result = qword_101183DB0;
  if (!qword_101183DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183DB0);
  }

  return result;
}

uint64_t sub_1001D71AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1001D5320(a1, v4, v5, v6);
}

void sub_1001D72A4(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_1001DEF90, v8);
}

uint64_t sub_1001D7400(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = a4;
  v29 = a3;
  v26 = a10;
  v27 = a11;
  v13 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v17 = &v26 - v16;
  v18 = UIView.noticePresenter.getter();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  sub_1001DFCE4(a6, v15);
  sub_10012B7A8(a9, v30);
  type metadata accessor for MainActor();
  sub_1001DFD48(a8);

  v20 = static MainActor.shared.getter();
  v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v15, v24 + v21);
  *(v24 + v22) = a8;
  *(v24 + v23) = v18;
  sub_10012B828(v30, v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_1001F4CB8(0, 0, v17, v27, v24);

  return (v29)(1);
}

uint64_t sub_1001D763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  type metadata accessor for Notice(0);
  v7[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[13] = v9;
  v7[14] = v8;

  return _swift_task_switch(sub_1001D7704, v9, v8);
}

uint64_t sub_1001D7704()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = PlaybackIntentDescriptor.intent.getter();
  *(v0 + 120) = v1;
  strcpy((v0 + 16), "Swipe Action");
  *(v0 + 40) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 48) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_1001D7830;
  v3 = *(v0 + 64);

  return PlaybackController.insert(_:location:issuer:)(v1, v3, v0 + 16);
}

uint64_t sub_1001D7830()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1001D7A44;
  }

  else
  {
    sub_1000095E8(v2 + 16, &unk_101183910, &unk_100EBDD00);
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1001D797C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1001D797C()
{
  v1 = v0[9];

  if (v1)
  {
    v2 = v0[11];
    v3 = v0[9];
    Player.InsertCommand.Location.notice.getter(v2);
    (*(*v3 + 200))(v2, 0);
    sub_1001DF158(v2, type metadata accessor for Notice);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001D7A44()
{

  sub_1000095E8(v0 + 16, &unk_101183910, &unk_100EBDD00);
  v1 = sub_1003FF96C();
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v1, 1, 1, 0, 0);

  v2 = *(v0 + 8);

  return v2();
}

id sub_1001D7AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin();
  (*(v8 + 16))(&v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, a3, v10);
  v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a3;
  *(v12 + 3) = a4;
  *(v12 + 4) = a2;
  (*(v8 + 32))(&v12[v11], &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a3);
  aBlock[4] = sub_1001DC2D8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D72A4;
  aBlock[3] = &unk_1010A0150;
  v13 = _Block_copy(aBlock);
  v14 = objc_opt_self();

  v15 = [v14 contextualActionWithStyle:0 title:0 handler:v13];
  _Block_release(v13);

  if (qword_10117F320 != -1)
  {
    swift_once();
  }

  v16 = qword_101183DF8;
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

  if (v18)
  {
    v19 = [v18 imageWithTintColor:*UIColor.MusicTint.normal.unsafeMutableAddressor() renderingMode:1];
  }

  else
  {
    v19 = 0;
  }

  [v15 setImage:v19];

  if (qword_10117F328 != -1)
  {
    swift_once();
  }

  [v15 setBackgroundColor:qword_101183E00];
  v20 = v15;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v21 = String._bridgeToObjectiveC()();

  [v20 setAccessibilityLabel:v21];

  return v20;
}

id sub_1001D7F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v31[1] = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v31[0] = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin();
  v17 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, a4, v16);
  sub_10012B7A8(a3, v33);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  *(v20 + 4) = a6;
  (*(v14 + 32))(&v20[v18], v17, a4);
  *&v20[v19] = a2;
  sub_10012B828(v33, &v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8]);
  aBlock[4] = sub_1001DF1B8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D72A4;
  aBlock[3] = &unk_1010A0218;
  v21 = _Block_copy(aBlock);
  v22 = objc_opt_self();

  v23 = [v22 contextualActionWithStyle:0 title:0 handler:{v21, v31[0]}];
  _Block_release(v21);

  if (qword_10117F320 != -1)
  {
    swift_once();
  }

  v24 = qword_101183DF8;
  v25 = String._bridgeToObjectiveC()();
  v26 = [objc_opt_self() systemImageNamed:v25 withConfiguration:v24];

  [v23 setImage:v26];
  v27 = [objc_opt_self() systemBlueColor];
  [v23 setBackgroundColor:v27];

  v28 = v23;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v29 = String._bridgeToObjectiveC()();

  [v28 setAccessibilityLabel:v29];

  return v28;
}

id sub_1001D8328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v69 = a6;
  v65 = a5;
  v64 = a3;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v67 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a4;
  v63 = *(a4 - 8);
  __chkstk_darwin();
  v61 = v11;
  v62 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v58 = *(v60 - 8);
  __chkstk_darwin();
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10010FC20(&qword_101183E28, &unk_100ED1910);
  v57 = *(v59 - 8);
  __chkstk_darwin();
  v55 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v54 - v14;
  v15 = type metadata accessor for MusicLibrary.RemoveAction();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&unk_101193E60, &qword_100EBF810);
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v54 - v23;
  static MusicLibraryAction<>.remove.getter();
  v25 = v69;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v16 + 8))(v18, v15);
  (*(v20 + 32))(v22, v24, v19);
  LODWORD(v24) = (*(v20 + 88))(v22, v19);
  v26 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  v27 = v22;
  v28 = v25;
  (*(v20 + 8))(v27, v19);
  v29 = v68;
  v30 = v24 == v26;
  v31 = a1;
  if (!v30)
  {
    v32 = v56;
    static MusicLibraryAction<>.removeDownload.getter();
    v33 = v54;
    v34 = v60;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v58 + 8))(v32, v34);
    v35 = v57;
    v36 = v55;
    v37 = v59;
    (*(v57 + 32))(v55, v33, v59);
    LODWORD(v34) = (*(v35 + 88))(v36, v37);
    (*(v35 + 8))(v36, v37);
    if (v34 != v26)
    {
      return 0;
    }
  }

  sub_10012B7A8(v64, v71);
  v38 = v63;
  v39 = v62;
  (*(v63 + 16))(v62, v31, v29);
  v40 = (*(v38 + 80) + 136) & ~*(v38 + 80);
  v41 = (v61 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v65;
  *(v42 + 2) = v29;
  *(v42 + 3) = v43;
  *(v42 + 4) = v28;
  sub_10012B828(v71, (v42 + 40));
  (*(v38 + 32))(&v42[v40], v39, v29);
  *&v42[v41] = a2;
  aBlock[4] = sub_1001DFAF0;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D72A4;
  aBlock[3] = &unk_1010A0448;
  v44 = _Block_copy(aBlock);
  v45 = objc_opt_self();

  v46 = [v45 contextualActionWithStyle:0 title:0 handler:v44];
  _Block_release(v44);

  if (qword_10117F320 != -1)
  {
    swift_once();
  }

  v47 = qword_101183DF8;
  v48 = String._bridgeToObjectiveC()();
  v49 = [objc_opt_self() systemImageNamed:v48 withConfiguration:v47];

  [v46 setImage:v49];
  v50 = [objc_opt_self() systemRedColor];
  [v46 setBackgroundColor:v50];

  v51 = v46;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v52 = String._bridgeToObjectiveC()();

  [v51 setAccessibilityLabel:v52];

  return v51;
}

double sub_1001D8B8C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v24 = a4;
  v25 = a3;
  v11 = *(a7 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v14 = &v22 - v13;
  v15 = UIView.noticePresenter.getter();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  (*(v11 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a6, a7);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v17;
  *(v19 + 3) = &protocol witness table for MainActor;
  v20 = v23;
  *(v19 + 4) = a7;
  *(v19 + 5) = v20;
  *(v19 + 6) = a5;
  (*(v11 + 32))(&v19[v18], &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a7);
  *&v19[(v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = v15;
  sub_1001F4CB8(0, 0, v14, &unk_100EBF7E8, v19);

  (v25)(1);

  return result;
}

uint64_t sub_1001D8DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  type metadata accessor for Locale();
  v8[9] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v8[10] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = type metadata accessor for Notice.Variant(0);
  v8[15] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v8[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[17] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[18] = v11;
  v8[19] = v10;

  return _swift_task_switch(sub_1001D8F88, v11, v10);
}

uint64_t sub_1001D8F88()
{
  v1 = v0[7];
  v2 = v0[5];
  sub_1001DF0E4(v1, v1);
  v3 = *(v1 - 8);
  swift_allocObject();
  v4 = static Array._adoptStorage(_:count:)();
  v0[20] = v4;
  (*(v3 + 16))(v5, v2, v1);
  v6 = type metadata accessor for Array();
  v0[2] = v4;
  v7 = swift_task_alloc();
  v0[21] = v7;
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_1001D9110;
  v9 = v0[7];
  v10 = v0[8];

  return MusicLibrary.add<A, B>(_:)(v0 + 2, v6, v9, WitnessTable, v10);
}

uint64_t sub_1001D9110(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v4 = *(v3 + 144);
    v5 = *(v3 + 152);
    v6 = sub_1001D9388;
  }

  else
  {

    v4 = *(v3 + 144);
    v5 = *(v3 + 152);
    v6 = sub_1001D9260;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1001D9260()
{
  v1 = v0[6];

  if (v1)
  {
    v3 = v0[15];
    v2 = v0[16];
    v4 = v0[6];
    swift_storeEnumTagMultiPayload();
    static Notice.variant(_:)(v3, v2);
    sub_1001DF158(v3, type metadata accessor for Notice.Variant);
    (*(*v4 + 200))(v2, 0);
    sub_1001DF158(v2, type metadata accessor for Notice);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001D9388()
{
  v25 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  v4 = Logger.actions.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[22];
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[11];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v0[3] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v24);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to add item=%s", v11, 0xCu);
    sub_10000959C(v12);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[11];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[6];
  if (v19)
  {
    v20 = v0[15];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    *v20 = String.init(localized:table:bundle:locale:comment:)();
    v20[1] = v21;
    swift_storeEnumTagMultiPayload();
    (*(*v19 + 192))(v20, 1);

    sub_1001DF158(v20, type metadata accessor for Notice.Variant);
  }

  else
  {
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1001D967C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a6;
  v32 = a4;
  v33 = a3;
  v14 = *(a8 - 8);
  v15 = *(v14 + 64);
  v30 = a9;
  v31 = a10;
  __chkstk_darwin();
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v18 = &v28 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v14 + 16))(v16, a5, a8);
  sub_10012B7A8(a7, v34);
  type metadata accessor for MainActor();

  v28 = a2;
  v20 = static MainActor.shared.getter();
  v21 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = v20;
  *(v24 + 3) = &protocol witness table for MainActor;
  v26 = v30;
  v25 = v31;
  *(v24 + 4) = a8;
  *(v24 + 5) = v26;
  *(v24 + 6) = v25;
  (*(v14 + 32))(&v24[v21], v16, a8);
  *&v24[v22] = v29;
  sub_10012B828(v34, &v24[v23]);
  *&v24[(v23 + 103) & 0xFFFFFFFFFFFFFFF8] = v28;
  sub_1001F4CB8(0, 0, v18, &unk_100EBF7F8, v24);

  return (v33)(1);
}

uint64_t sub_1001D98FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[83] = v16;
  v8[82] = v15;
  v8[81] = a8;
  v8[80] = a7;
  v8[79] = a6;
  v8[78] = a5;
  v8[77] = a4;
  type metadata accessor for Locale();
  v8[84] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v8[85] = swift_task_alloc();
  v8[86] = type metadata accessor for Notice.Variant(0);
  v8[87] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[88] = v10;
  v8[89] = *(v10 - 8);
  v8[90] = swift_task_alloc();
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  v8[91] = swift_task_alloc();
  v8[92] = *(a8 - 8);
  v8[93] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[94] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[95] = v12;
  v8[96] = v11;

  return _swift_task_switch(sub_1001D9B28, v12, v11);
}

uint64_t sub_1001D9B28()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 728);
  v3 = *(v0 + 664);
  v4 = *(v0 + 656);
  v5 = *(v0 + 648);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  (*(*(v0 + 736) + 16))(v1, *(v0 + 616), v5);
  sub_10012B7A8(v6, v0 + 464);
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);

  Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v1, v7, v0 + 464, v2, v5, v4, v3, (v0 + 560));
  static Actions.Download.action(context:)((v0 + 560), v0 + 16);

  v9 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v9;
  *(v0 + 224) = *(v0 + 112);
  v10 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v10;
  v11 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v11;
  v12 = swift_task_alloc();
  *(v0 + 776) = v12;
  v13 = sub_10010FC20(&unk_101193E50, &qword_100EBF800);
  *v12 = v0;
  v12[1] = sub_1001D9CEC;

  return Action.execute(checkSupportedStatus:)(v13, 1, v13);
}

uint64_t sub_1001D9CEC()
{
  v2 = *v1;
  *(*v1 + 784) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    *(v2 + 240) = *(v2 + 128);
    *(v2 + 256) = v3;
    v4 = *(v2 + 160);
    v5 = *(v2 + 176);
    v6 = *(v2 + 192);
    v7 = *(v2 + 224);
    *(v2 + 320) = *(v2 + 208);
    *(v2 + 336) = v7;
    *(v2 + 288) = v5;
    *(v2 + 304) = v6;
    *(v2 + 272) = v4;
    sub_1000095E8(v2 + 240, &unk_101193E50, &qword_100EBF800);
    v8 = *(v2 + 768);
    v9 = *(v2 + 760);
    v10 = sub_1001D9F2C;
  }

  else
  {
    *(v2 + 352) = *(v2 + 128);
    *(v2 + 368) = v3;
    v11 = *(v2 + 160);
    v12 = *(v2 + 176);
    v13 = *(v2 + 192);
    v14 = *(v2 + 224);
    *(v2 + 432) = *(v2 + 208);
    *(v2 + 448) = v14;
    *(v2 + 400) = v12;
    *(v2 + 416) = v13;
    *(v2 + 384) = v11;
    sub_1000095E8(v2 + 352, &unk_101193E50, &qword_100EBF800);
    v8 = *(v2 + 768);
    v9 = *(v2 + 760);
    v10 = sub_1001D9E78;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1001D9E78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D9F2C()
{
  v26 = v0;
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];

  v4 = Logger.actions.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[98];
    v8 = v0[90];
    v9 = v0[89];
    v10 = v0[88];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    v0[76] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v25);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to download item=%s", v11, 0xCu);
    sub_10000959C(v12);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v16 = v0[90];
    v17 = v0[89];
    v18 = v0[88];

    (*(v17 + 8))(v16, v18);
  }

  v19 = UIView.noticePresenter.getter();
  if (v19)
  {
    v20 = v19;
    v21 = v0[87];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    *v21 = String.init(localized:table:bundle:locale:comment:)();
    v21[1] = v22;
    swift_storeEnumTagMultiPayload();
    (*(*v20 + 192))(v21, 1);

    sub_1001DF158(v21, type metadata accessor for Notice.Variant);
  }

  else
  {
  }

  v23 = v0[1];

  return v23();
}

double sub_1001DA254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = a7;
  v31 = a3;
  v14 = *(a8 - 8);
  v15 = *(v14 + 64);
  v29 = a9;
  v30 = a10;
  __chkstk_darwin();
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v18 = &v28 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_10012B7A8(a5, v32);
  (*(v14 + 16))(v16, a6, a8);
  type metadata accessor for MainActor();

  v20 = static MainActor.shared.getter();
  v21 = (*(v14 + 80) + 152) & ~*(v14 + 80);
  v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = v20;
  *(v23 + 3) = &protocol witness table for MainActor;
  v25 = v29;
  v24 = v30;
  *(v23 + 4) = a8;
  *(v23 + 5) = v25;
  *(v23 + 6) = v24;
  sub_10012B828(v32, (v23 + 56));
  (*(v14 + 32))(&v23[v21], v16, a8);
  *&v23[v22] = v28;
  v26 = &v23[(v22 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v26 = v31;
  v26[1] = a4;
  sub_1001F4CB8(0, 0, v18, &unk_100EBF850, v23);

  return result;
}

uint64_t sub_1001DA4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v14;
  *(v8 + 56) = v13;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  type metadata accessor for MainActor();
  *(v8 + 80) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001DA574, v10, v9);
}

uint64_t sub_1001DA574()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 48) == 0xFF;
  sub_100009F78(0, &qword_101183E20, UIAlertController_ptr);
  v9 = sub_1003FCD9C(v6, v5, v8, v3, v2, v1);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v9, 1, 1, 0, 0);

  v4(1);
  v10 = v0[1];

  return v10();
}

id sub_1001DA680(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v81 = a4;
  v80 = a3;
  v83 = a2;
  v75 = type metadata accessor for MusicLibrary.DownloadAction();
  v73 = *(v75 - 8);
  __chkstk_darwin();
  v71 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10010FC20(&qword_101183E08, &unk_100ED18D0);
  v72 = *(v74 - 8);
  __chkstk_darwin();
  v70 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = &v66 - v7;
  v79 = type metadata accessor for MusicLibrary.AddAction();
  v82 = *(v79 - 8);
  __chkstk_darwin();
  v77 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10010FC20(&unk_101193E20, &qword_100EBF7D0);
  v84 = *(v78 - 8);
  __chkstk_darwin();
  v68 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v66 - v10;
  __chkstk_darwin();
  v12 = &v66 - v11;
  __chkstk_darwin();
  v14 = &v66 - v13;
  v15 = type metadata accessor for Playlist.EditableComponents();
  v76 = *(v15 - 8);
  __chkstk_darwin();
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D240, &unk_100EC8F50);
  __chkstk_darwin();
  v19 = &v66 - v18;
  v20 = type metadata accessor for Playlist.Entry.InternalItem();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.Entry.internalItem.getter();
  Playlist.Entry.InternalItem.musicItem.getter(v86);
  (*(v21 + 8))(v23, v20);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&qword_101183E10, &unk_100ECEFB0);
  if (!swift_dynamicCast())
  {
    memset(v85, 0, sizeof(v85));
    sub_1000095E8(v85, &qword_101183E18, &qword_100EBF7D8);
    return 0;
  }

  sub_1000D8F88(v85, &v87);
  *&v85[0] = _swiftEmptyArrayStorage;
  v24 = v80;
  v25 = sub_1001DB1AC(a1, v83, v80, v81);
  v26 = v25;
  if (v25)
  {
    v27 = v25;
    Playlist.editableComponents.getter();
    v28 = v76;
    if ((*(v76 + 48))(v19, 1, v15) == 1)
    {

      sub_1000095E8(v19, &unk_10118D240, &unk_100EC8F50);
    }

    else
    {
      static Playlist.EditableComponents.tracklist.getter();
      sub_1001DF5CC(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
      v30 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v31 = *(v28 + 8);
      v31(v17, v15);
      v31(v19, v15);
      if (v30)
      {
        v32 = v27;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v85[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v85[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        goto LABEL_24;
      }

      v24 = v80;
    }
  }

  v83 = v26;
  sub_10000954C(&v87, v88);
  v33 = v77;
  static MusicLibraryAction<>.add.getter();
  v34 = v79;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  v35 = v82 + 8;
  v80 = *(v82 + 8);
  v80(v33, v34);
  v36 = v24;
  v37 = v84;
  v38 = v78;
  v76 = *(v84 + 32);
  (v76)(v12, v14, v78);
  v66 = *(v37 + 88);
  v39 = v66(v12, v38);
  v40 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  v41 = *(v37 + 8);
  v84 = v37 + 8;
  v41(v12, v38);
  v42 = v88;
  if (v39 == v40)
  {
    v43 = v89;
    v44 = sub_10000954C(&v87, v88);
    sub_1001D7AFC(v44, v36, v42, v43);
  }

  else
  {
    v82 = v35;
    sub_10000954C(&v87, v88);
    v45 = v71;
    static MusicLibraryAction<>.download.getter();
    v46 = v69;
    v47 = v75;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v73 + 8))(v45, v47);
    v48 = v72;
    v49 = v70;
    v50 = v74;
    (*(v72 + 32))(v70, v46, v74);
    v51 = (*(v48 + 88))(v49, v50);
    (*(v48 + 8))(v49, v50);
    v52 = v88;
    if (v51 != v40)
    {
      sub_10000954C(&v87, v88);
      v56 = v77;
      static MusicLibraryAction<>.add.getter();
      v57 = v67;
      v58 = v79;
      MusicLibrary.supportedStatus<A, B>(for:action:)();
      v80(v56, v58);
      v59 = v68;
      v60 = v78;
      (v76)(v68, v57, v78);
      v61 = v66(v59, v60);
      v41(v59, v60);
      if (v83)
      {
        v62 = v61 == v40;
        v26 = v83;
        if (!v62)
        {
          v63 = v83;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v85[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v85[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_24;
    }

    v54 = v89;
    v53 = v90;
    v55 = sub_10000954C(&v87, v88);
    sub_1001D7F10(v55, v36, v81, v52, v54, v53);
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v85[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v85[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v26 = v83;
LABEL_24:
  sub_100009F78(0, &unk_1011A49F0, UIContextualAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v65 = [objc_opt_self() configurationWithActions:isa];

  [v65 _setSwipeActionsStyle:1];
  sub_10000959C(&v87);
  return v65;
}

id sub_1001DB1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v101 = a4;
  v102 = a3;
  v103 = a2;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v93 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v92 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Playlist.Entry();
  v88 = *(v89 - 8);
  __chkstk_darwin();
  v85 = v7;
  v97 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Playlist();
  v84 = *(v86 - 8);
  __chkstk_darwin();
  v83 = v8;
  v96 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Playlist.Variant();
  v100 = *(v99 - 8);
  __chkstk_darwin();
  v81 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_10010FC20(&unk_1011A4670, &qword_100EBF808);
  __chkstk_darwin();
  v91 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = &v80 - v11;
  sub_10010FC20(&unk_10119EF50, &unk_100EDDF70);
  __chkstk_darwin();
  v80 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v90 = &v80 - v13;
  __chkstk_darwin();
  v94 = &v80 - v14;
  __chkstk_darwin();
  v82 = &v80 - v15;
  __chkstk_darwin();
  v17 = &v80 - v16;
  __chkstk_darwin();
  v19 = &v80 - v18;
  v20 = type metadata accessor for Playlist.EditableComponents();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D240, &unk_100EC8F50);
  __chkstk_darwin();
  v25 = &v80 - v24;
  v26 = type metadata accessor for Playlist.Entry.InternalItem();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v29 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a1;
  Playlist.Entry.internalItem.getter();
  Playlist.Entry.InternalItem.musicItem.getter(&v105);
  (*(v27 + 8))(v29, v26);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&qword_101183E10, &unk_100ECEFB0);
  if (!swift_dynamicCast())
  {
    memset(v106, 0, sizeof(v106));
    sub_1000095E8(v106, &qword_101183E18, &qword_100EBF7D8);
    return 0;
  }

  sub_1000D8F88(v106, &v107);
  v30 = [objc_opt_self() isRunningInStoreDemoMode];
  v31 = v103;
  if (v30)
  {
    goto LABEL_14;
  }

  Playlist.editableComponents.getter();
  if ((*(v21 + 48))(v25, 1, v20) == 1)
  {
    sub_1000095E8(v25, &unk_10118D240, &unk_100EC8F50);
    v32 = v95;
  }

  else
  {
    static Playlist.EditableComponents.tracklist.getter();
    sub_1001DF5CC(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
    v34 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v35 = *(v21 + 8);
    v35(v23, v20);
    v35(v25, v20);
    v32 = v95;
    if (v34)
    {
      LODWORD(v95) = enum case for Playlist.Variant.favoriteSongs(_:);
      goto LABEL_16;
    }
  }

  Playlist.variant.getter();
  v36 = enum case for Playlist.Variant.favoriteSongs(_:);
  v37 = v100;
  v38 = v99;
  (*(v100 + 104))(v17, enum case for Playlist.Variant.favoriteSongs(_:), v99);
  (*(v37 + 56))(v17, 0, 1, v38);
  v39 = *(v98 + 48);
  sub_1001DF3B4(v19, v32);
  sub_1001DF3B4(v17, v32 + v39);
  v40 = *(v37 + 48);
  if (v40(v32, 1, v38) == 1)
  {
    sub_1000095E8(v17, &unk_10119EF50, &unk_100EDDF70);
    sub_1000095E8(v19, &unk_10119EF50, &unk_100EDDF70);
    if (v40(v32 + v39, 1, v38) == 1)
    {
      sub_1000095E8(v32, &unk_10119EF50, &unk_100EDDF70);
      v31 = v103;
      LODWORD(v95) = v36;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v41 = v82;
  sub_1001DF3B4(v32, v82);
  if (v40(v32 + v39, 1, v38) == 1)
  {
    sub_1000095E8(v17, &unk_10119EF50, &unk_100EDDF70);
    sub_1000095E8(v19, &unk_10119EF50, &unk_100EDDF70);
    (*(v100 + 8))(v41, v38);
LABEL_13:
    sub_1000095E8(v32, &unk_1011A4670, &qword_100EBF808);
    goto LABEL_14;
  }

  LODWORD(v95) = v36;
  v47 = v100;
  v48 = v81;
  (*(v100 + 32))(v81, v32 + v39, v38);
  sub_1001DF5CC(&unk_1011A4680, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
  v49 = v41;
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v47 + 8);
  v51(v48, v38);
  sub_1000095E8(v17, &unk_10119EF50, &unk_100EDDF70);
  sub_1000095E8(v19, &unk_10119EF50, &unk_100EDDF70);
  v51(v49, v38);
  sub_1000095E8(v32, &unk_10119EF50, &unk_100EDDF70);
  v31 = v103;
  if (v50)
  {
LABEL_16:
    v52 = v84;
    v53 = v86;
    (*(v84 + 16))(v96, v31, v86);
    v54 = v88;
    v55 = v89;
    (*(v88 + 16))(v97, v87, v89);
    sub_10012B7A8(v101, v106);
    sub_1001DF424(&v107, &v105);
    v56 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v57 = (v83 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (*(v54 + 80) + v57 + 8) & ~*(v54 + 80);
    v59 = (v85 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    (*(v52 + 32))(v60 + v56, v96, v53);
    *(v60 + v57) = v102;
    (*(v54 + 32))(v60 + v58, v97, v55);
    sub_10012B828(v106, v60 + v59);
    sub_1000D8F88(&v105, (v60 + ((v59 + 103) & 0xFFFFFFFFFFFFFFF8)));
    aBlock[4] = sub_1001DF488;
    aBlock[5] = v60;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D72A4;
    aBlock[3] = &unk_1010A0290;
    v61 = _Block_copy(aBlock);
    v62 = objc_opt_self();

    v63 = [v62 contextualActionWithStyle:0 title:0 handler:v61];
    _Block_release(v61);

    v64 = v94;
    Playlist.variant.getter();
    v65 = v100;
    v66 = v90;
    v67 = v99;
    (*(v100 + 104))(v90, v95, v99);
    (*(v65 + 56))(v66, 0, 1, v67);
    v68 = *(v98 + 48);
    v69 = v91;
    sub_1001DF3B4(v64, v91);
    sub_1001DF3B4(v66, v69 + v68);
    v70 = *(v65 + 48);
    if (v70(v69, 1, v67) == 1)
    {
      sub_1000095E8(v66, &unk_10119EF50, &unk_100EDDF70);
      sub_1000095E8(v64, &unk_10119EF50, &unk_100EDDF70);
      if (v70(v69 + v68, 1, v67) == 1)
      {
        sub_1000095E8(v69, &unk_10119EF50, &unk_100EDDF70);
LABEL_23:
        if (qword_10117F320 != -1)
        {
          swift_once();
        }

        v75 = qword_101183DF8;
        v76 = String._bridgeToObjectiveC()();

        v77 = [objc_opt_self() systemImageNamed:v76 withConfiguration:v75];

        [v63 setImage:v77];
        v78 = [objc_opt_self() systemRedColor];
        [v63 setBackgroundColor:v78];

        v46 = v63;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v79 = String._bridgeToObjectiveC()();

        [v46 setAccessibilityLabel:v79];

        goto LABEL_26;
      }
    }

    else
    {
      v71 = v80;
      sub_1001DF3B4(v69, v80);
      if (v70(v69 + v68, 1, v67) != 1)
      {
        v72 = v100;
        v73 = v81;
        (*(v100 + 32))(v81, v69 + v68, v67);
        sub_1001DF5CC(&unk_1011A4680, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v74 = *(v72 + 8);
        v74(v73, v67);
        sub_1000095E8(v66, &unk_10119EF50, &unk_100EDDF70);
        sub_1000095E8(v94, &unk_10119EF50, &unk_100EDDF70);
        v74(v71, v67);
        sub_1000095E8(v69, &unk_10119EF50, &unk_100EDDF70);
        goto LABEL_23;
      }

      sub_1000095E8(v66, &unk_10119EF50, &unk_100EDDF70);
      sub_1000095E8(v94, &unk_10119EF50, &unk_100EDDF70);
      (*(v100 + 8))(v71, v67);
    }

    sub_1000095E8(v69, &unk_1011A4670, &qword_100EBF808);
    goto LABEL_23;
  }

LABEL_14:
  v42 = v108;
  v43 = v109;
  v44 = v110;
  v45 = sub_10000954C(&v107, v108);
  v46 = sub_1001D8328(v45, v102, v101, v42, v43, v44);
LABEL_26:
  sub_10000959C(&v107);
  return v46;
}

void sub_1001DC318(__n128 a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v149 = a9;
  v133 = a8;
  v146 = a7;
  v144 = a5;
  v143 = a4;
  v109 = a3;
  v116 = type metadata accessor for MusicLibrary.RemoveAction();
  v114 = *(v116 - 8);
  __chkstk_darwin();
  v112 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10010FC20(&unk_101193E60, &qword_100EBF810);
  v113 = *(v115 - 8);
  __chkstk_darwin();
  v111 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v110 = &v108 - v13;
  v126 = type metadata accessor for Playlist();
  v125 = *(v126 - 8);
  __chkstk_darwin();
  v123 = v14;
  v124 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for Playlist.Entry.InternalItem();
  v121 = *(v122 - 8);
  __chkstk_darwin();
  v120 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for Playlist.Entry();
  v130 = *(v131 - 8);
  __chkstk_darwin();
  v127 = v16;
  v129 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v18 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v150 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Playlist.Variant();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v118 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10010FC20(&unk_1011A4670, &qword_100EBF808);
  __chkstk_darwin();
  v142 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v108 - v25;
  sub_10010FC20(&unk_10119EF50, &unk_100EDDF70);
  __chkstk_darwin();
  v117 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v141 = &v108 - v28;
  __chkstk_darwin();
  v145 = &v108 - v29;
  __chkstk_darwin();
  v31 = &v108 - v30;
  __chkstk_darwin();
  v33 = &v108 - v32;
  __chkstk_darwin();
  v35 = &v108 - v34;
  v147 = a6;
  Playlist.variant.getter();
  v36 = *(v21 + 104);
  v137 = enum case for Playlist.Variant.favoriteSongs(_:);
  v136 = v21 + 104;
  v135 = v36;
  v36(v33);
  v37 = *(v21 + 56);
  v134 = v21 + 56;
  v132 = v37;
  v37(v33, 0, 1, v20);
  v140 = v23;
  v38 = *(v23 + 48);
  sub_1001DF3B4(v35, v26);
  sub_1001DF3B4(v33, &v26[v38]);
  v39 = *(v21 + 48);
  v40 = v39(v26, 1, v20);
  v148 = v18;
  v119 = v21;
  v139 = v21 + 48;
  v138 = v39;
  v128 = v20;
  if (v40 == 1)
  {
    sub_1000095E8(v33, &unk_10119EF50, &unk_100EDDF70);
    sub_1000095E8(v35, &unk_10119EF50, &unk_100EDDF70);
    v41 = v39(&v26[v38], 1, v20);
    v42 = v133;
    if (v41 == 1)
    {
      sub_1000095E8(v26, &unk_10119EF50, &unk_100EDDF70);
LABEL_11:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v133 = String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v52 = v130;
      v53 = v129;
      v54 = v131;
      (*(v130 + 16))(v129, v42, v131);
      v55 = (*(v52 + 80) + 24) & ~*(v52 + 80);
      v56 = (v127 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = swift_allocObject();
      *(v57 + 16) = v146;
      (*(v52 + 32))(v57 + v55, v53, v54);
      v58 = v109;
      *(v57 + v56) = v109;

      v59 = v58;
      v60 = String._bridgeToObjectiveC()();

      v157 = sub_1001DF6FC;
      v158 = v57;
      aBlock = _NSConcreteStackBlock;
      v154 = 1107296256;
      v155 = sub_10027D328;
      v156 = &unk_1010A0380;
      v61 = _Block_copy(&aBlock);

      v62 = [objc_opt_self() actionWithTitle:v60 style:2 handler:v61];
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  sub_1001DF3B4(v26, v31);
  if (v39(&v26[v38], 1, v20) == 1)
  {
    sub_1000095E8(v33, &unk_10119EF50, &unk_100EDDF70);
    sub_1000095E8(v35, &unk_10119EF50, &unk_100EDDF70);
    (*(v21 + 8))(v31, v20);
    v42 = v133;
LABEL_6:
    sub_1000095E8(v26, &unk_1011A4670, &qword_100EBF808);
    goto LABEL_7;
  }

  v48 = &v26[v38];
  v49 = v118;
  (*(v21 + 32))(v118, v48, v20);
  sub_1001DF5CC(&unk_1011A4680, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v21 + 8);
  v51(v49, v20);
  sub_1000095E8(v33, &unk_10119EF50, &unk_100EDDF70);
  sub_1000095E8(v35, &unk_10119EF50, &unk_100EDDF70);
  v51(v31, v20);
  sub_1000095E8(v26, &unk_10119EF50, &unk_100EDDF70);
  v42 = v133;
  if (v50)
  {
    goto LABEL_11;
  }

LABEL_7:
  v43 = v120;
  Playlist.Entry.internalItem.getter();
  v44 = v121;
  v45 = v122;
  v46 = (*(v121 + 88))(v43, v122);
  v47 = v147;
  if (v46 == enum case for Playlist.Entry.InternalItem.musicMovie(_:) || v46 == enum case for Playlist.Entry.InternalItem.musicVideo(_:) || v46 == enum case for Playlist.Entry.InternalItem.song(_:) || v46 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:) || v46 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v46 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v133 = String.init(localized:table:bundle:locale:comment:)();
    v109 = v63;
    (*(v44 + 8))(v43, v45);
  }

  else
  {
    (*(v44 + 8))(v43, v45);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v133 = String.init(localized:table:bundle:locale:comment:)();
    v109 = v107;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v122 = String.init(localized:table:bundle:locale:comment:)();
  v121 = v64;
  v65 = v130;
  v66 = v129;
  v67 = v131;
  (*(v130 + 16))(v129, v42, v131);
  v68 = v125;
  v69 = v124;
  v70 = v126;
  (*(v125 + 16))(v124, v47, v126);
  v71 = (*(v65 + 80) + 24) & ~*(v65 + 80);
  v72 = (v127 + *(v68 + 80) + v71) & ~*(v68 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = v146;
  (*(v65 + 32))(v73 + v71, v66, v67);
  (*(v68 + 32))(v73 + v72, v69, v70);

  v60 = String._bridgeToObjectiveC()();

  v157 = sub_1001DF614;
  v158 = v73;
  aBlock = _NSConcreteStackBlock;
  v154 = 1107296256;
  v155 = sub_10027D328;
  v156 = &unk_1010A02E0;
  v61 = _Block_copy(&aBlock);

  v62 = [objc_opt_self() actionWithTitle:v60 style:2 handler:v61];
LABEL_16:
  v74 = v62;
  _Block_release(v61);

  v75 = *(v149 + 48) == 0xFF;
  v76 = v74;
  v77 = String._bridgeToObjectiveC()();

  v78 = [objc_opt_self() alertControllerWithTitle:0 message:v77 preferredStyle:v75];

  [v78 addAction:v76];
  v133 = v76;

  v79 = v145;
  Playlist.variant.getter();
  v80 = v141;
  v81 = v128;
  v135(v141, v137, v128);
  v132(v80, 0, 1, v81);
  v82 = *(v140 + 48);
  v83 = v142;
  sub_1001DF3B4(v79, v142);
  sub_1001DF3B4(v80, v83 + v82);
  v84 = v138;
  if (v138(v83, 1, v81) != 1)
  {
    v86 = v117;
    sub_1001DF3B4(v83, v117);
    if (v84(v83 + v82, 1, v81) != 1)
    {
      v88 = v119;
      v89 = v118;
      (*(v119 + 32))(v118, v83 + v82, v81);
      sub_1001DF5CC(&unk_1011A4680, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
      v90 = dispatch thunk of static Equatable.== infix(_:_:)();
      v91 = *(v88 + 8);
      v91(v89, v81);
      sub_1000095E8(v80, &unk_10119EF50, &unk_100EDDF70);
      sub_1000095E8(v145, &unk_10119EF50, &unk_100EDDF70);
      v91(v86, v81);
      sub_1000095E8(v83, &unk_10119EF50, &unk_100EDDF70);
      v87 = &selRef__replacePlaceholderViewWithView_;
      v85 = &selRef__replacePlaceholderViewWithView_;
      if ((v90 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    sub_1000095E8(v80, &unk_10119EF50, &unk_100EDDF70);
    sub_1000095E8(v79, &unk_10119EF50, &unk_100EDDF70);
    (*(v119 + 8))(v86, v81);
LABEL_21:
    sub_1000095E8(v83, &unk_1011A4670, &qword_100EBF808);
    v87 = &selRef__replacePlaceholderViewWithView_;
    v85 = &selRef__replacePlaceholderViewWithView_;
    goto LABEL_25;
  }

  sub_1000095E8(v80, &unk_10119EF50, &unk_100EDDF70);
  sub_1000095E8(v79, &unk_10119EF50, &unk_100EDDF70);
  if (v84(v83 + v82, 1, v81) != 1)
  {
    goto LABEL_21;
  }

  sub_1000095E8(v83, &unk_10119EF50, &unk_100EDDF70);
  v85 = &selRef__replacePlaceholderViewWithView_;
LABEL_23:
  sub_10000954C(a10, a10[3]);
  v92 = v112;
  static MusicLibraryAction<>.remove.getter();
  v93 = v110;
  v94 = v116;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v114 + 8))(v92, v94);
  v95 = v113;
  v96 = v111;
  v97 = v115;
  (*(v113 + 32))(v111, v93, v115);
  v98 = (*(v95 + 88))(v96, v97);
  v99 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  v100 = v96;
  v87 = &selRef__replacePlaceholderViewWithView_;
  (*(v95 + 8))(v100, v97);
  if (v98 == v99)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_10012B7A8(v149, &aBlock);
    sub_1001DF424(a10, &v152);
    v101 = swift_allocObject();
    sub_10012B828(&aBlock, v101 + 16);
    sub_1000D8F88(&v152, (v101 + 112));
    *(v101 + 160) = v146;

    v102 = String._bridgeToObjectiveC()();

    v151[4] = sub_1001DF6EC;
    v151[5] = v101;
    v151[0] = _NSConcreteStackBlock;
    v151[1] = 1107296256;
    v151[2] = sub_10027D328;
    v151[3] = &unk_1010A0330;
    v103 = _Block_copy(v151);

    v104 = [objc_opt_self() actionWithTitle:v102 style:2 handler:v103];
    _Block_release(v103);

    [v78 v85[33]];
  }

LABEL_25:
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v105 = String._bridgeToObjectiveC()();

  v106 = [objc_opt_self() v87[28]];

  [v78 v85[33]];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v78, 1, 1, 0, 0);
  v143(1);
}

double sub_1001DD9EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for Playlist.Entry();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v12 = &v20 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(v10, a3, v7);
  type metadata accessor for MainActor();

  v14 = a4;
  v15 = static MainActor.shared.getter();
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = v15;
  *(v18 + 3) = &protocol witness table for MainActor;
  *(v18 + 4) = a2;
  (*(v8 + 32))(&v18[v16], v10, v7);
  *&v18[v17] = v14;
  sub_10086E3AC(0, 0, v12, &unk_100EBF820, v18);

  return result;
}

uint64_t sub_1001DDC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v6[3] = type metadata accessor for Notice.Variant(0);
  v6[4] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v6[5] = swift_task_alloc();
  v6[6] = type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[8] = v8;
  v9 = type metadata accessor for Playlist.Entry();
  *v8 = v6;
  v8[1] = sub_1001DDD48;

  return MusicLibrary.undoFavorite<A>(_:)(a5, v9, &protocol witness table for Playlist.Entry);
}

uint64_t sub_1001DDD48()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1001DDFBC;
  }

  else
  {
    v4 = sub_1001DDEA4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1001DDEA4()
{

  v1 = UIView.noticePresenter.getter();
  if (v1)
  {
    v2 = v1;
    v4 = v0[4];
    v3 = v0[5];
    swift_storeEnumTagMultiPayload();
    static Notice.variant(_:)(v4, v3);
    sub_1001DF158(v4, type metadata accessor for Notice.Variant);
    (*(*v2 + 200))(v3, 0);

    sub_1001DF158(v3, type metadata accessor for Notice);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001DDFBC()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1001DE034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a2;
  v5 = type metadata accessor for Playlist();
  v21 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist.Entry();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v13 = &v21 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v9 + 16))(v11, a3, v8);
  (*(v6 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v5);
  type metadata accessor for MainActor();
  v15 = v24;

  v16 = static MainActor.shared.getter();
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = (v10 + *(v6 + 80) + v17) & ~*(v6 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v16;
  *(v19 + 3) = &protocol witness table for MainActor;
  *(v19 + 4) = v15;
  (*(v9 + 32))(&v19[v17], v11, v8);
  (*(v6 + 32))(&v19[v18], v22, v21);
  sub_1001F4CB8(0, 0, v13, &unk_100EBF840, v19);

  return result;
}

uint64_t sub_1001DE30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v9 = type metadata accessor for Playlist();
  v6[5] = v9;
  v6[6] = *(v9 - 8);
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for Playlist.Entry();
  v6[8] = v10;
  v6[9] = *(v10 - 8);
  v6[10] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v6[11] = v11;
  v6[12] = *(v11 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v12 = swift_task_alloc();
  v6[16] = v12;
  *v12 = v6;
  v12[1] = sub_1001DE4EC;

  return MusicLibrary.remove(_:from:)(a5, a6);
}

uint64_t sub_1001DE4EC()
{
  *(*v1 + 136) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1001DE6C8;
  }

  else
  {
    v4 = sub_1001DE648;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1001DE648()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001DE6C8()
{
  v51 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v46 = v0[7];
  v8 = v0[4];
  v44 = v0[5];
  v9 = v0[3];

  v10 = Logger.actions.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v10, v3);
  (*(v6 + 16))(v4, v9, v5);
  (*(v7 + 16))(v46, v8, v44);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v45 = v0[12];
    v47 = v0[11];
    v48 = v0[13];
    v43 = v12;
    v14 = v0[9];
    v13 = v0[10];
    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[6];
    v41 = v0[5];
    v42 = v0[17];
    v18 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v18 = 136446722;
    v19 = Playlist.Entry.description.getter();
    v21 = v20;
    (*(v14 + 8))(v13, v15);
    v22 = sub_1000105AC(v19, v21, &v50);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = Playlist.description.getter();
    v25 = v24;
    (*(v17 + 8))(v16, v41);
    v26 = sub_1000105AC(v23, v25, &v50);

    *(v18 + 14) = v26;
    *(v18 + 22) = 2082;
    v0[2] = v42;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v27 = String.init<A>(describing:)();
    v29 = sub_1000105AC(v27, v28, &v50);

    *(v18 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v11, v43, "Failed to remove entry=%{public}s from playlist=%{public}s with error=%{public}s", v18, 0x20u);
    swift_arrayDestroy();

    (*(v45 + 8))(v48, v47);
  }

  else
  {
    v30 = v0[12];
    v49 = v0[13];
    v32 = v0[10];
    v31 = v0[11];
    v33 = v11;
    v35 = v0[8];
    v34 = v0[9];
    v36 = v0[6];
    v37 = v0[7];
    v38 = v0[5];

    (*(v36 + 8))(v37, v38);
    (*(v34 + 8))(v32, v35);
    (*(v30 + 8))(v49, v31);
  }

  v39 = v0[1];

  return v39();
}

double sub_1001DEA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v8 = v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10012B7A8(a2, v14);
  sub_1001DF424(a3, v13);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_10012B828(v14, v11 + 32);
  sub_1000D8F88(v13, (v11 + 128));
  *(v11 + 176) = a4;
  sub_1001F4CB8(0, 0, v8, &unk_100EBF830, v11);

  return result;
}

uint64_t sub_1001DEBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001DEC54, v8, v7);
}

uint64_t sub_1001DEC54()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = sub_10000954C(v2, v4);
  v8 = *(v3 + 48) == 0xFF;
  sub_100009F78(0, &qword_101183E20, UIAlertController_ptr);
  v9 = sub_1003FCD9C(v7, v1, v8, v4, v5, v6);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v9, 1, 1, 0, 0);

  v10 = v0[1];

  return v10();
}

id sub_1001DED54()
{
  result = [objc_opt_self() configurationWithWeight:5];
  qword_101183DF8 = result;
  return result;
}

void sub_1001DED94()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_1001DEE5C;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10003640C;
  v3[3] = &unk_1010A0178;
  v1 = _Block_copy(v3);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_101183E00 = v2;
}

id sub_1001DEE5C(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
LABEL_4:
    if (v3 + 1 >= 2 && v3 == 1)
    {
      v4 = objc_allocWithZone(UIColor);
      v5 = 0.89;
      v6 = 0.9;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 == 2)
  {
    if (v3 + 1 < 2)
    {
      v4 = objc_allocWithZone(UIColor);
      v5 = 0.11;
      v6 = 0.12;
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = objc_allocWithZone(UIColor);
      v5 = 0.15;
      v6 = 0.16;
      goto LABEL_12;
    }
  }

  else if (v2 == 1)
  {
    goto LABEL_4;
  }

LABEL_11:
  v4 = objc_allocWithZone(UIColor);
  v5 = 0.93;
  v6 = 0.94;
LABEL_12:

  return [v4 initWithRed:v5 green:v5 blue:v6 alpha:1.0];
}

uint64_t sub_1001DEFA8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100008F30;

  return sub_1001D8DD8(a1, v7, v8, v9, v1 + v6, v10, v4, v5);
}

uint64_t sub_1001DF0E4(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_10010FC20(&qword_101183990, &qword_100EBC750);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t sub_1001DF158(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001DF1B8(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, __n128), uint64_t a4)
{
  v5 = (*(*(v4[2] - 8) + 80) + 40) & ~*(*(v4[2] - 8) + 80);
  v6 = (*(*(v4[2] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001D967C(a1, a2, a3, a4, v4 + v5, *(v4 + v6), v4 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8), v4[2], v4[3], v4[4]);
}

uint64_t sub_1001DF250(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v7 + 103) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100008F30;

  return sub_1001D98FC(a1, v8, v9, v1 + v5, v10, v1 + v7, v11, v4);
}

uint64_t sub_1001DF3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10119EF50, &unk_100EDDF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DF424(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1001DF488(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(type metadata accessor for Playlist() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for Playlist.Entry() - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1001DC318(v15, a1, a2, a3, a4, v4 + v10, *(v4 + v11), (v4 + v13), v4 + v14, (v4 + ((v14 + 103) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001DF5CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1001DF614(uint64_t a1)
{
  v3 = *(type metadata accessor for Playlist.Entry() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Playlist() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1001DE034(a1, v7, v1 + v4, v8);
}

double sub_1001DF6FC(uint64_t a1)
{
  v3 = *(type metadata accessor for Playlist.Entry() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001DD9EC(a1, v5, v1 + v4, v6);
}

uint64_t sub_1001DF79C(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Entry() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_1001DDC10(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1001DF8CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[22];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1001DEBB8(a1, v4, v5, (v1 + 4), (v1 + 16), v6);
}

uint64_t sub_1001DF990(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist.Entry() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_1001DE30C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1001DFB80(uint64_t a1)
{
  v3 = v1[4];
  v4 = (*(*(v3 - 8) + 80) + 152) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100008F30;

  return sub_1001DA4C0(a1, v8, v9, (v1 + 7), v1 + v4, v7, v10, v11);
}

uint64_t sub_1001DFCE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1001DFD48(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

uint64_t sub_1001DFD58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DFDBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_1001D763C(a1, v10, v11, v1 + v6, v12, v13, v1 + v9);
}

uint64_t sub_1001DFF04()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for MusicPlaybackIntentDescriptor();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  else
  {
  }

  v6 = (v4 + *(v1 + 28));
  if (v6[3])
  {
    sub_10000959C(v6);
  }

  v7 = (v4 + *(v1 + 32));
  if (v7[3])
  {
    sub_10000959C(v7);
  }

  v8 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v3);
  if (v9 >= 4)
  {
  }

  v10 = v0 + v8;
  swift_unknownObjectWeakDestroy();
  v11 = *(v0 + v8 + 48);
  if (v11 != 255)
  {
    sub_10012B804(*(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), v11);
  }

  if (*(v10 + 64))
  {
  }

  if (*(v10 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001E00C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10002F3F4;

  return sub_1001D763C(a1, v10, v11, v1 + v6, v12, v13, v1 + v9);
}

double sub_1001E02A8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v49 - v5;
  v7 = [v1 activityType];
  if (!v7)
  {
    *(a1 + 24) = &type metadata for String;
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    return result;
  }

  v9 = v7;
  v53 = swift_allocBox();
  v11 = v10;
  v12 = type metadata accessor for URL();
  v50 = *(v12 - 8);
  v13 = *(v50 + 56);
  v49 = v11;
  v13(v11, 1, 1, v12);
  v14 = sub_10010C578(_swiftEmptyArrayStorage);
  v15 = [v2 activityType];
  v51 = v9;
  v52 = a1;
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v14;
    sub_1006C56AC(0x3130343035, 0xE500000000000000, 0x6763737469, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v37 = aBlock;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v37;
    v34 = 0x7463737469;
    v32 = 0xD000000000000012;
    v33 = 0x8000000100E40AA0;
    v35 = 0xE500000000000000;
LABEL_20:
    sub_1006C56AC(v32, v33, v34, v35, v31);
    goto LABEL_21;
  }

LABEL_8:
  v58._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = sub_10044CF74(v58);
  if (v23 != 4)
  {
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v14;
    sub_1006C56AC(0x3130343035, 0xE500000000000000, 0x6763737469, 0xE500000000000000, v24);
    v25 = aBlock;
    v26 = "sharing_tt_lyrics";
    if (v23 != 2)
    {
      v26 = "Item:)";
    }

    v27 = "sharing_ig_lyrics";
    if (!v23)
    {
      v27 = "sharing_sc_lyrics";
    }

    if (v23 <= 1)
    {
      v28 = v27;
    }

    else
    {
      v28 = v26;
    }

    v29 = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v25;
    sub_1006C56AC(0xD000000000000011, v28 | 0x8000000000000000, 0x7463737469, 0xE500000000000000, v29);
    v30 = aBlock;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v30;
    v32 = 0x636973756DLL;
    v33 = 0xE500000000000000;
    v34 = 7368801;
    v35 = 0xE300000000000000;
    goto LABEL_20;
  }

LABEL_21:
  v38 = dispatch_semaphore_create(0);
  v39 = *&v2[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewControllerP33_84E0FBA0540C9AC5FB893F254C8A85DC29LyricsURLActivityItemProvider_snippetComponents];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v41 = swift_allocObject();
  *(v41 + 16) = v53;
  *(v41 + 24) = v38;
  v56 = sub_1001EBCDC;
  v57 = v41;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v55 = sub_1001E08A0;
  *(&v55 + 1) = &unk_1010A0550;
  v42 = _Block_copy(&aBlock);

  v43 = v38;

  [v39 URLWithAdditionalParameters:isa completion:v42];
  _Block_release(v42);

  OS_dispatch_semaphore.wait()();
  v44 = v49;
  swift_beginAccess();
  sub_1000089F8(v44, v6, &qword_101183A20, &unk_100EBCF80);
  v45 = v50;
  if ((*(v50 + 48))(v6, 1, v12) == 1)
  {
    sub_1000095E8(v6, &qword_101183A20, &unk_100EBCF80);
    aBlock = 0u;
    v55 = 0u;
    v46 = v51;
    v47 = v52;
    *(v52 + 3) = &type metadata for String;

    *v47 = 0;
    v47[1] = 0xE000000000000000;
    if (*(&v55 + 1))
    {
      sub_1000095E8(&aBlock, &unk_101183F30, qword_100EBF960);
    }
  }

  else
  {
    *(&v55 + 1) = v12;
    v48 = sub_10001C8B8(&aBlock);
    (*(v45 + 32))(v48, v6, v12);

    sub_100016270(&aBlock, v52);
  }

  return result;
}

Swift::Int sub_1001E0840(uint64_t a1, uint64_t a2)
{
  v3 = swift_projectBox();
  swift_beginAccess();
  sub_1001EBCE4(a1, v3);
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_1001E08A0(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  }

  else
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  v6(v5);

  return sub_1000095E8(v5, &qword_101183A20, &unk_100EBCF80);
}

void sub_1001E0B14(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LyricsSharingActivityViewController(0);
  objc_msgSendSuper2(&v5, "setTransitioningDelegate:", a1);
  v3 = *&v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionViewController];
  v4 = [v1 transitioningDelegate];
  swift_unknownObjectRelease();
  if (v4)
  {
    swift_unknownObjectRelease();
  }

  v3[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_needsCustomTransition] = v4 != 0;
}

double sub_1001E0BC4(char a1)
{
  v2 = v1;
  [v1 setAllowsCustomPresentationStyle:1];
  [v1 setModalPresentationStyle:2];
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBF880;
  type metadata accessor for ActivityType(0);
  v6 = v5;
  *(v4 + 32) = UIActivityTypeAirDrop;
  *(v4 + 56) = v5;
  *(v4 + 64) = UIActivityTypeCopyToPasteboard;
  *(v4 + 120) = v5;
  *(v4 + 88) = v5;
  *(v4 + 96) = UIActivityTypeMessage;
  v7 = qword_10117FC28;
  v8 = UIActivityTypeCopyToPasteboard;
  v9 = UIActivityTypeAirDrop;
  v10 = UIActivityTypeMessage;
  if (v7 != -1)
  {
    swift_once();
  }

  v11 = qword_1012193D0;
  *(v4 + 152) = v6;
  *(v4 + 128) = v11;
  v12 = qword_10117FC30;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_1012193D8;
  *(v4 + 184) = v6;
  *(v4 + 160) = v14;
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  *(v4 + 216) = v6;
  *(v4 + 192) = v16;
  v17 = String._bridgeToObjectiveC()();
  *(v4 + 248) = v6;
  *(v4 + 224) = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setIncludedActivityTypes:isa];

  sub_10010FC20(&qword_101181538, &unk_100ECF030);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBDC20;
  *(v19 + 32) = v8;
  *(v19 + 40) = UIActivityTypeSharePlay;
  v20 = UIActivityTypeSharePlay;
  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v1 setExcludedActivityTypes:v21];

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100EBDC20;
  *(v22 + 32) = v13;
  *(v22 + 88) = v6;
  *(v22 + 56) = v6;
  *(v22 + 64) = v15;
  v23 = Array._bridgeToObjectiveC()().super.isa;

  [v1 setActivityTypeOrder:v23];

  [v1 setCustomViewController:*&v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionViewController]];
  [v1 setPhotosHeaderMetadata:*&v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata]];
  sub_1001E5300();
  sub_1001E581C();
  if (a1)
  {
    sub_1001E3A18();
    v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_needsLyricsReporting] = 1;
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    *&v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_backgroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationDidEnterBackgroundNotification, 0, 1, 1, sub_1001EC2B4, v25);

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    *&v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_foregroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillEnterForegroundNotification, 0, 1, 1, sub_1001EC2BC, v26);

    v27 = UIPresentationControllerPresentationTransitionDidEndNotification;
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    *&v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v27, 0, 1, 1, sub_1001EC2C4, v28);

    v29 = UIPresentationControllerDismissalTransitionDidEndNotification;
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    *&v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_dismissalObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v29, 0, 1, 1, sub_1001EC2CC, v30);
  }

  return result;
}

void sub_1001E1164(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsVisibilityStart;
    swift_beginAccess();
    sub_1000089F8(&v11[v12], v5, &qword_101188C20, &qword_100EC2030);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000095E8(v5, &qword_101188C20, &qword_100EC2030);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      Date.timeIntervalSinceNow.getter();
      v14 = v13;
      (*(v7 + 8))(v9, v6);
      *&v11[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_visibleDuration] = *&v11[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_visibleDuration] - v14;
      (*(v7 + 56))(v3, 1, 1, v6);
      swift_beginAccess();
      sub_1001EBD54(v3, &v11[v12]);
      swift_endAccess();
    }
  }
}

void sub_1001E13DC(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v3 = &v8[-v2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    Date.init()();
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    v7 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsVisibilityStart;
    swift_beginAccess();
    sub_1001EBD54(v3, v5 + v7);
    swift_endAccess();
  }
}

void sub_1001E14F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_isVisible) != 1)
    {

      return;
    }

    v3 = Strong;
    Notification.object.getter();
    if (*(&v19 + 1))
    {
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }

      v4 = v21;
      v5 = v3;
      if (static NSObject.== infix(_:_:)())
      {

        return;
      }

      v8 = [v5 view];

      if (!v8)
      {
        __break(1u);
        return;
      }

      v9 = [v8 window];

      if (!v9)
      {
        goto LABEL_24;
      }

      v10 = [v9 windowScene];

      if (!v10)
      {
        goto LABEL_24;
      }

      v11 = [v10 delegate];

      if (v11)
      {
        v21 = v11;
        sub_10010FC20(&unk_101184050, &unk_100EBFA30);
        sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
        if (swift_dynamicCast())
        {
          v12 = *(*sub_10000954C(&v18, *(&v19 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

          sub_10000959C(&v18);
          if (v12)
          {
            v13 = (*(v12 + 32) & 0x7FFFFFFFFFFFFFFFLL);

            v14 = [v4 presentingViewController];
            if (v14)
            {
              v15 = v14;
              v16 = v13;
              v17 = static NSObject.== infix(_:_:)();

              if (v17)
              {
                sub_1001E7F54();

                return;
              }

              goto LABEL_25;
            }
          }

LABEL_24:

LABEL_25:
          return;
        }

        v20 = 0;
        v18 = 0u;
        v19 = 0u;
      }

      else
      {

        v20 = 0;
        v18 = 0u;
        v19 = 0u;
      }

      v6 = &unk_101184EA0;
      v7 = &unk_100EBFA20;
    }

    else
    {

      v6 = &unk_101183F30;
      v7 = qword_100EBF960;
    }

    sub_1000095E8(&v18, v6, v7);
  }
}

void sub_1001E1804(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v3 = &v22 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_isVisible) == 1)
    {
      Notification.object.getter();
      if (!*(&v23 + 1))
      {

        v20 = &unk_101183F30;
        v21 = qword_100EBF960;
        goto LABEL_21;
      }

      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      if (swift_dynamicCast())
      {
        v6 = v25;
        v7 = [v5 view];
        if (!v7)
        {
          __break(1u);
          return;
        }

        v8 = v7;
        v9 = [v7 window];

        if (!v9)
        {
          goto LABEL_23;
        }

        v10 = [v9 windowScene];

        if (!v10)
        {
          goto LABEL_23;
        }

        v11 = [v10 delegate];

        if (v11)
        {
          v25 = v11;
          sub_10010FC20(&unk_101184050, &unk_100EBFA30);
          sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
          if (swift_dynamicCast())
          {
            if (*(&v23 + 1))
            {
              v12 = *(*sub_10000954C(&v22, *(&v23 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

              sub_10000959C(&v22);
              if (v12)
              {
                v13 = (*(v12 + 32) & 0x7FFFFFFFFFFFFFFFLL);

                v14 = [v6 presentingViewController];
                if (v14)
                {
                  v15 = v14;
                  v16 = v13;
                  v17 = static NSObject.== infix(_:_:)();

                  if (v17)
                  {
                    Date.init()();

                    v18 = type metadata accessor for Date();
                    (*(*(v18 - 8) + 56))(v3, 0, 1, v18);
                    v19 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsVisibilityStart;
                    swift_beginAccess();
                    sub_1001EBD54(v3, v5 + v19);
                    swift_endAccess();
                    goto LABEL_15;
                  }

                  goto LABEL_24;
                }
              }

LABEL_23:

LABEL_24:
              return;
            }
          }

          else
          {
            v24 = 0;
            v22 = 0u;
            v23 = 0u;
          }
        }

        else
        {

          v24 = 0;
          v22 = 0u;
          v23 = 0u;
        }

        v20 = &unk_101184EA0;
        v21 = &unk_100EBFA20;
LABEL_21:
        sub_1000095E8(&v22, v20, v21);
        return;
      }
    }

LABEL_15:
  }
}

void sub_1001E1BFC(char a1)
{
  v2 = v1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = &v38 - v4;
  type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  v6 = type metadata accessor for LyricsSharingActivityViewController(0);
  v40.receiver = v2;
  v40.super_class = v6;
  objc_msgSendSuper2(&v40, "viewIsAppearing:", a1 & 1);
  v7 = [v2 presentingViewController];
  if (!v7 || (v8 = v7, type metadata accessor for NowPlayingViewController(0), v9 = swift_dynamicCastClass(), v8, !v9))
  {
    v10 = [v2 view];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 window];

      if (v12)
      {
        if (*&v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_windowBackgroundView])
        {
        }

        else
        {
          v39 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_windowBackgroundView;
          type metadata accessor for LyricsBackgroundView();
          v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v14 = *&v13[OBJC_IVAR___MusicLyricsBackgroundView_renderer];
          if (v14)
          {
            v15 = v14;
            dispatch thunk of Backdrop.CompositeRenderer.isBehindLyrics.setter();
          }

          v16 = [objc_allocWithZone(UIView) init];
          v17 = v12;
          [v17 bounds];
          [v16 setFrame:?];
          [v16 setAutoresizingMask:18];
          v18 = v13;
          [v17 bounds];
          [v18 setFrame:?];
          [v18 setAutoresizingMask:18];

          [v16 addSubview:v18];
          v19 = objc_allocWithZone(type metadata accessor for BackdropView());
          v20 = sub_100453A34();
          UIView.traitOverrides.getter();
          sub_100050078();
          dispatch thunk of UIMutableTraits.subscript.setter();
          UIView.traitOverrides.setter();
          [v17 bounds];
          [v20 setFrame:?];
          [v20 setAutoresizingMask:18];
          [v16 addSubview:v20];
          v21 = [objc_allocWithZone(UIView) init];
          [v17 bounds];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;

          [v21 setFrame:{v23, v25, v27, v29}];
          [v21 setAutoresizingMask:18];
          v30 = [objc_opt_self() blackColor];
          [v21 setBackgroundColor:v30];

          [v16 addSubview:v21];
          [v17 insertSubview:v16 atIndex:0];
          v31 = *&v2[v39];
          *&v2[v39] = v16;
          v32 = v16;

          v33 = type metadata accessor for TaskPriority();
          (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
          v34 = swift_allocObject();
          swift_unknownObjectWeakInit();
          type metadata accessor for MainActor();
          v35 = v18;

          v36 = static MainActor.shared.getter();
          v37 = swift_allocObject();
          v37[2] = v36;
          v37[3] = &protocol witness table for MainActor;
          v37[4] = v34;
          v37[5] = v35;

          sub_10086E3AC(0, 0, v5, &unk_100EBFA48, v37);

          v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_isVisible] = 1;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1001E2138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_10010FC20(&unk_101195200, &qword_100EBFA50);
  v5[7] = swift_task_alloc();
  sub_10010FC20(&unk_101184060, &qword_100EBDF50);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for Song();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  v5[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_1001E22D4, v8, v7);
}

uint64_t sub_1001E22D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_5;
  }

  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = Strong;
  (*(v5 + 16))(v3, Strong + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song, v4);

  Song.artwork.getter();
  (*(v5 + 8))(v3, v4);
  v7 = type metadata accessor for Artwork();
  v0[16] = v7;
  v8 = *(v7 - 8);
  v0[17] = v8;
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    v9 = v0[12];

    sub_1000095E8(v9, &unk_101188920, &qword_100EBCC50);
LABEL_5:
    v10 = v0[6];
    v11 = *(v10 + OBJC_IVAR___MusicLyricsBackgroundView_renderer);
    if (v11)
    {
      v12 = v11;
      dispatch thunk of Backdrop.CompositeRenderer.setImage(_:animated:)();

      v10 = v0[6];
    }

    if (*(v10 + OBJC_IVAR___MusicLyricsBackgroundView_isPaused) == 1)
    {
      v13 = *(v10 + OBJC_IVAR___MusicLyricsBackgroundView_metalView);
      if (v13)
      {
        v14 = v13;
        [v14 setNeedsDisplay];
      }
    }

    v15 = v0[1];

    return v15();
  }

  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[6];
  [v19 frame];
  Width = CGRectGetWidth(v31);
  [v19 frame];
  Height = CGRectGetHeight(v32);
  v22 = type metadata accessor for Artwork.CropStyle();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v23 = type metadata accessor for Artwork.ImageFormat();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = swift_task_alloc();
  v0[18] = v24;
  *v24 = v0;
  v24[1] = sub_1001E2630;
  v25 = v0[7];
  v26 = v0[8];
  v27.n128_u64[0] = 1.0;
  v28.n128_f64[0] = Width;
  v29.n128_f64[0] = Height;

  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v26, v25, 0, 0, v28, v29, v27);
}

uint64_t sub_1001E2630(uint64_t a1)
{
  v4 = *v2;
  (*v2)[19] = v1;

  if (v1)
  {
    v5 = v4[8];
    sub_1000095E8(v4[7], &unk_101195200, &qword_100EBFA50);
    sub_1000095E8(v5, &unk_101184060, &qword_100EBDF50);
    v6 = v4[14];
    v7 = v4[15];
    v8 = sub_1001E28F8;
  }

  else
  {
    v9 = v4[16];
    v10 = v4[17];
    v11 = v4[12];
    v12 = v4[7];
    v13 = v4[8];
    v4[20] = a1;
    sub_1000095E8(v12, &unk_101195200, &qword_100EBFA50);
    sub_1000095E8(v13, &unk_101184060, &qword_100EBDF50);
    (*(v10 + 8))(v11, v9);
    v6 = v4[14];
    v7 = v4[15];
    v8 = sub_1001E27DC;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1001E27DC()
{
  v1 = v0[20];

  v2 = v0[6];
  v3 = *(v2 + OBJC_IVAR___MusicLyricsBackgroundView_renderer);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of Backdrop.CompositeRenderer.setImage(_:animated:)();

    v2 = v0[6];
  }

  if (*(v2 + OBJC_IVAR___MusicLyricsBackgroundView_isPaused) == 1)
  {
    v5 = *(v2 + OBJC_IVAR___MusicLyricsBackgroundView_metalView);
    if (v5)
    {
      v6 = v5;
      [v6 setNeedsDisplay];
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001E28F8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[12];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

id sub_1001E2A04(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for LyricsSharingActivityViewController(0);
  objc_msgSendSuper2(&v4, "viewDidDisappear:", a1 & 1);
  result = [*&v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_windowBackgroundView] removeFromSuperview];
  if (v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_needsLyricsReporting] == 1)
  {
    sub_1001E7F54();
    return sub_1001E78A0(*&v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_visibleDuration]);
  }

  return result;
}

void sub_1001E2AFC(void *a1)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v4 = &v84 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Lyrics.TextLine(0);
  v94 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v84 - v12;
  __chkstk_darwin();
  v15 = &v84 - v14;
  v16 = type metadata accessor for LyricsSharingActivityViewController(0);
  v97.receiver = v1;
  v97.super_class = v16;
  objc_msgSendSuper2(&v97, "_prepareActivity:", a1);
  _s8ActivityCMa();
  if (!swift_dynamicCastClass())
  {
    v88 = v4;
    v89 = v8;
    v93 = v1;
    v90 = v6;
    sub_1001EC2D4(a1);
    v17 = [a1 activityType];
    if (v17)
    {
      v18 = v17;
      v91 = v13;
      v92 = v5;
      v19 = v15;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
      if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
      {

        v15 = v19;
        v13 = v91;
        v5 = v92;
      }

      else
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();

        v15 = v19;
        v13 = v91;
        v5 = v92;
      }
    }

    v24 = v93;
    sub_1001E78A0(0.0);

    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      v27 = a1;
      v28 = [v26 messageComposeViewController];
      if (v28)
      {
        v29 = v28;
        v30 = *&v24[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager];
        if (!v30)
        {

          return;
        }

        swift_beginAccess();
        v31 = *(v30 + 72);
        if (*(v31 + 16))
        {
          v32 = v94;
          v86 = (v94[80] + 32) & ~v94[80];
          v87 = v30;
          v33 = v31 + v86;
          sub_1001EBDD4(v31 + v86, v15);
          v34 = *(v31 + 16);
          if (v34)
          {
            v92 = v5;
            v35 = *(v32 + 9);
            sub_1001EBDD4(v33 + v35 * (v34 - 1), v13);

            v94 = v29;
            v36 = [v29 contentURLs];
            if (v36)
            {
              v37 = v36;
              v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (*(v38 + 16))
              {
                v85 = v27;

                v39 = v88;
                URL.init(string:)();
                v40 = v90;

                v41 = v92;
                if ((*(v40 + 48))(v39, 1, v92) == 1)
                {

                  sub_1001EC5BC(v13, type metadata accessor for Lyrics.TextLine);
                  sub_1001EC5BC(v15, type metadata accessor for Lyrics.TextLine);
                  sub_1000095E8(v39, &qword_101183A20, &unk_100EBCF80);
                  return;
                }

                v91 = v13;
                v84 = v15;
                (*(v40 + 32))(v89, v39, v41);
                v88 = sub_100564124();
                v43 = *(v87 + 72);
                v44 = *(v43 + 16);
                if (v44)
                {
                  v45 = &v11[*(v9 + 64)];
                  v46 = v43 + v86;

                  v47 = 0;
                  v48 = 0xE000000000000000;
                  do
                  {
                    sub_1001EBDD4(v46, v11);
                    v95 = v47;
                    v96 = v48;
                    v49 = *v45;

                    v51._countAndFlagsBits = v49(v50);
                    String.append(_:)(v51);

                    v52._countAndFlagsBits = 10;
                    v52._object = 0xE100000000000000;
                    String.append(_:)(v52);

                    v47 = v95;
                    v48 = v96;
                    sub_1001EC5BC(v11, type metadata accessor for Lyrics.TextLine);
                    v46 += v35;
                    --v44;
                  }

                  while (v44);
                }

                String.trim()();

                v53 = String._bridgeToObjectiveC()();
                v54 = v88;
                [v88 setSelectedText:v53];

                URL._bridgeToObjectiveC()(v55);
                v57 = v56;
                [v54 setURL:v56];

                URL._bridgeToObjectiveC()(v58);
                v60 = v59;
                [v54 setOriginalURL:v59];

                v61 = [objc_allocWithZone(LPLyricExcerptMetadata) init];
                v62 = String._bridgeToObjectiveC()();

                [v61 setLyrics:v62];

                v63 = v84;
                isa = Double._bridgeToObjectiveC()().super.super.isa;
                [v61 setStartTime:isa];

                v65 = Double._bridgeToObjectiveC()().super.super.isa;
                [v61 setEndTime:v65];

                v66 = [v54 specialization];
                if (v66)
                {
                  v67 = v66;
                  objc_opt_self();
                  v68 = swift_dynamicCastObjCClass();
                  if (v68)
                  {
                    v69 = v67;
                    BagProvider.shared.unsafeMutableAddressor();

                    v70 = BagProvider.bag.getter();

                    if (!v70 || (v71 = [v70 stringForBagKey:ICURLBagKeyStoreFrontID], v70, !v71))
                    {
                      v71 = 0;
                    }

                    [v68 setStoreFrontIdentifier:v71];

                    [v68 setLyricExcerpt:v61];
                    v72 = Array._bridgeToObjectiveC()().super.isa;
                    [v68 setOffers:v72];

                    v73 = [*&v93[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata] image];
                    [v68 setArtwork:v73];
                  }
                }

                else
                {
                  v68 = 0;
                }

                v74 = v94;
                [v94 setBody:0];
                v75 = [v54 dataRepresentation];
                v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v78 = v77;

                v79 = Data._bridgeToObjectiveC()().super.isa;
                sub_10002C064(v76, v78);
                v80 = v89;
                URL._bridgeToObjectiveC()(v81);
                v83 = v82;
                [v74 addRichLinkData:v79 withWebpageURL:v82];

                (*(v90 + 8))(v80, v92);
                sub_1001EC5BC(v91, type metadata accessor for Lyrics.TextLine);
                v42 = v63;
                goto LABEL_38;
              }
            }

            else
            {
            }

            sub_1001EC5BC(v13, type metadata accessor for Lyrics.TextLine);
            v42 = v15;
LABEL_38:
            sub_1001EC5BC(v42, type metadata accessor for Lyrics.TextLine);
            return;
          }

          sub_1001EC5BC(v15, type metadata accessor for Lyrics.TextLine);
        }

        else
        {
        }
      }
    }
  }
}

void sub_1001E3574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v31 = a3;
  v32 = a4;
  v30[0] = type metadata accessor for Lyrics.TextLine(0);
  v8 = *(v30[0] - 8);
  __chkstk_darwin();
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101184020, &unk_100EC76D0);
  __chkstk_darwin();
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v30 - v13;
  v15 = sub_1001EBB88();
  if (v16)
  {
    v17 = 150;
  }

  else
  {
    v17 = v15;
  }

  sub_1000089F8(a2, v14, &qword_101184020, &unk_100EC76D0);
  type metadata accessor for LyricsSelectionManager();
  v18 = swift_allocObject();
  v18[6] = 0;
  v18[7] = 0;
  v18[8] = 0;
  v18[9] = _swiftEmptyArrayStorage;
  v18[10] = &_swiftEmptySetSingleton;
  v18[2] = v17;
  v19 = v32;
  v18[3] = v31;
  v18[4] = v19;
  v18[5] = a1;
  sub_1000089F8(v14, v12, &qword_101184020, &unk_100EC76D0);
  if ((*(v8 + 48))(v12, 1, v30[0]) == 1)
  {

    sub_1000095E8(v12, &qword_101184020, &unk_100EC76D0);
    v33[0] = a1;
    v20 = sub_10010FC20(&qword_101184038, &unk_100EBFA10);
    v21 = sub_100029908(&qword_101184040, &qword_101184038, &unk_100EBFA10);
    v22 = Sequence.exclude(_:)(sub_1003408CC, 0, v20, v21);
    v23 = sub_100670070(v22);

    sub_1000095E8(v14, &qword_101184020, &unk_100EC76D0);
    swift_beginAccess();
    v18[10] = v23;
  }

  else
  {
    sub_1001EC250(v12, v10);

    sub_10033F820(v10);
    sub_1001EC5BC(v10, type metadata accessor for Lyrics.TextLine);
    sub_1000095E8(v14, &qword_101184020, &unk_100EC76D0);
  }

  v24 = swift_allocObject();
  v25 = v30[1];
  swift_unknownObjectWeakInit();
  v26 = v18[6];
  v27 = v18[7];
  v18[6] = sub_1001EC248;
  v18[7] = v24;

  sub_100020438(v26, v27);

  v28 = *(v25 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionViewController);
  *&v28[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager] = v18;
  swift_retain_n();
  v29 = v28;

  if ([v29 isViewLoaded])
  {
    sub_10033A430();
  }

  *(v25 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager) = v18;

  *(v25 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_leadingSilence) = a5;
  sub_1001E5300();
  sub_1001E581C();
}

void sub_1001E3998(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001E5300();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_1001E581C();
  }
}

double sub_1001E3A18()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v2 = &v10 - v1;
  v3 = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  v4 = *(v0 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsLoader);
  *(v0 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsLoader) = v3;

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;

  sub_1001F4CB8(0, 0, v2, &unk_100EBF9E0, v8);

  return result;
}

uint64_t sub_1001E3B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a4;
  type metadata accessor for Locale();
  v4[39] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[40] = swift_task_alloc();
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  v4[41] = swift_task_alloc();
  sub_10010FC20(&unk_101184010, &qword_100EBF9E8);
  v4[42] = swift_task_alloc();
  sub_10010FC20(&qword_101189A10, &unk_100EBF9F0);
  v4[43] = swift_task_alloc();
  sub_10010FC20(&qword_101184020, &unk_100EC76D0);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[47] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[48] = v6;
  v4[49] = v5;

  return _swift_task_switch(sub_1001E3D7C, v6, v5);
}

uint64_t sub_1001E3D7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[50] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsLoader);
    v0[51] = v3;
    if (v3)
    {
      v4 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song;
      v0[52] = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song;
      v5 = *((swift_isaMask & *v3) + 0x70);
      v3;
      v10 = (v5 + *v5);
      v6 = swift_task_alloc();
      v0[53] = v6;
      *v6 = v0;
      v6[1] = sub_1001E3FD0;

      return v10(v2 + v4);
    }

    v8 = v0[50];
    sub_1001E4B54(0);
    sub_1001EC218(0, 0, 255);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001E3FD0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 432) = a1;
  *(v6 + 440) = a2;
  *(v6 + 448) = v3;

  if (v3)
  {
    v7 = *(v6 + 384);
    v8 = *(v6 + 392);
    v9 = sub_1001E4A60;
  }

  else
  {

    *(v6 + 456) = a3;
    v7 = *(v6 + 384);
    v8 = *(v6 + 392);
    v9 = sub_1001E4104;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1001E4104()
{
  v1 = *(v0 + 456);

  if ((v1 & 1) == 0)
  {
    v23 = *(v0 + 432);
    v22 = *(v0 + 440);
    v24 = *(v0 + 400);
    sub_1001E4B54(0);
    sub_1001EC218(v23, v22, v1 & 1);

    goto LABEL_28;
  }

  v2 = *(v0 + 432);
  if (!*(v2 + 56))
  {
    v25 = *(v0 + 440);
    v26 = *(v0 + 400);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v27 = String._bridgeToObjectiveC()();

    v28 = [objc_opt_self() alertControllerWithTitle:0 message:v27 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    v30 = v26;
    v31 = String._bridgeToObjectiveC()();

    *(v0 + 200) = sub_1001EC230;
    *(v0 + 208) = v29;
    *(v0 + 168) = _NSConcreteStackBlock;
    *(v0 + 176) = 1107296256;
    *(v0 + 184) = sub_10027D328;
    *(v0 + 192) = &unk_1010A0A50;
    v32 = _Block_copy((v0 + 168));

    v33 = [objc_opt_self() actionWithTitle:v31 style:0 handler:v32];
    _Block_release(v32);

    [v28 addAction:v33];
    *(v0 + 144) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 152) = xmmword_100EBCEF0;
    v34 = v30;
    PresentationSource.init(viewController:position:)(v34, v0 + 112, v0 + 16);
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v28, 1, 1, 0, 0);

    sub_10011895C(v2, v25, 1);
    sub_10012BA6C(v0 + 16);
    goto LABEL_28;
  }

  v3 = *(v0 + 368);
  v4 = *(v2 + 24);
  v5 = (*(v0 + 400) + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsID);
  *v5 = *(v2 + 16);
  v5[1] = v4;

  v6 = type metadata accessor for Lyrics.TextLine(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v3, 1, 1, v6);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v8 = (*(*qword_101218AC8 + 432))();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 tracklist];

    if (v10)
    {
      if ((MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter() & 1) == 0 || (v11 = [v10 playingItem]) == 0)
      {

        goto LABEL_21;
      }

      v12 = v11;
      v13 = [v11 metadataObject];
      if (v13)
      {
        v14 = v13;
        v70 = v12;
        v69 = MPModelObject.bestIdentifier(for:)(3, 2u);
        v16 = v15;

        v17 = v16;
        v18 = Song.catalogID.getter();
        if (v16)
        {
          v12 = v70;
          if (!v19)
          {

            goto LABEL_21;
          }

          if (v69 == v18 && v17 == v19)
          {
          }

          else
          {
            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v21 & 1) == 0)
            {

              goto LABEL_21;
            }
          }

          goto LABEL_37;
        }

        v12 = v70;
        if (v19)
        {
LABEL_34:

          goto LABEL_21;
        }
      }

      else
      {
        Song.catalogID.getter();
        if (v63)
        {
          goto LABEL_34;
        }
      }

LABEL_37:
      v64 = *(v0 + 368);
      [v12 duration];
      static Date.timeIntervalSinceReferenceDate.getter();
      v65.n128_f64[0] = v73 + (v65.n128_f64[0] - v71) * v74;
      if (v65.n128_f64[0] >= v72)
      {
        v65.n128_f64[0] = v72;
      }

      v65.n128_f64[0] = fmax(v65.n128_f64[0], 0.0);
      (*(*v2 + 448))(1, v65);

      sub_1000095E8(v64, &qword_101184020, &unk_100EC76D0);
      v66 = *(v0 + 360);
      if (*(v0 + 240))
      {
        sub_10010FC20(&qword_101184030, &qword_100EBFA08);
        v67 = swift_dynamicCast() ^ 1;
        v68 = v66;
      }

      else
      {
        sub_1000095E8(v0 + 216, &qword_101184028, &qword_100EBFA00);
        v68 = v66;
        v67 = 1;
      }

      v7(v68, v67, 1, v6);
      sub_10003D17C(*(v0 + 360), *(v0 + 368), &qword_101184020, &unk_100EC76D0);
    }
  }

LABEL_21:
  v35 = *(v0 + 336);
  v36 = *(v2 + 48);
  v37 = sub_1000089F8(*(v0 + 368), *(v0 + 352), &qword_101184020, &unk_100EC76D0);
  (*(*v2 + 232))(v37);
  v38 = type metadata accessor for Locale.Language();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v35, 1, v38) == 1)
  {
    v40 = *(v0 + 336);
    v41 = &unk_101184010;
    v42 = &qword_100EBF9E8;
  }

  else
  {
    v43 = *(v0 + 336);
    v44 = *(v0 + 344);
    Locale.Language.languageCode.getter();
    (*(v39 + 8))(v43, v38);
    v45 = type metadata accessor for Locale.LanguageCode();
    v46 = *(v45 - 8);
    v47 = (*(v46 + 48))(v44, 1, v45);
    v48 = *(v0 + 344);
    if (v47 != 1)
    {
      v51 = Locale.LanguageCode.identifier.getter();
      v50 = v52;
      (*(v46 + 8))(v48, v45);
      v49 = v51;
      goto LABEL_27;
    }

    v41 = &qword_101189A10;
    v42 = &unk_100EBF9F0;
    v40 = *(v0 + 344);
  }

  sub_1000095E8(v40, v41, v42);
  v49 = 0;
  v50 = 0;
LABEL_27:
  v54 = *(v0 + 432);
  v53 = *(v0 + 440);
  v55 = *(v0 + 400);
  v56 = *(v0 + 368);
  v57 = *(v0 + 352);
  v58 = *(v0 + 328);
  sub_1001E3574(v36, v57, v49, v50, *(v2 + OBJC_IVAR____TtC7LyricsX6Lyrics_leadingSilence));

  sub_1000095E8(v57, &qword_101184020, &unk_100EC76D0);
  Date.init()();
  v59 = type metadata accessor for Date();
  (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
  v60 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsVisibilityStart;
  swift_beginAccess();
  sub_1001EBD54(v58, v55 + v60);
  swift_endAccess();
  sub_1001E5300();
  sub_10011895C(v54, v53, 1);

  sub_1000095E8(v56, &qword_101184020, &unk_100EC76D0);
LABEL_28:

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1001E4A60()
{
  v1 = v0[56];
  v2 = v0[50];
  v3 = v0[51];

  swift_errorRetain();
  sub_1001E4B54(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001E4B54(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  if (!v2)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = String._bridgeToObjectiveC()();

LABEL_13:
    v21 = String._bridgeToObjectiveC()();

    v22 = [objc_opt_self() alertControllerWithTitle:v11 message:v21 preferredStyle:1];

    v15 = v22;
    goto LABEL_14;
  }

  v3 = _convertErrorToNSError(_:)();
  v4 = [v3 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if ([v3 code] != -3005)
  {
LABEL_12:

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = 0;
    goto LABEL_13;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  v15 = v14;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  v17 = v1;
  v18 = String._bridgeToObjectiveC()();

  v33 = sub_1001EC15C;
  v34 = v16;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10027D328;
  v32 = &unk_1010A09D8;
  v19 = _Block_copy(&aBlock);

  v20 = [objc_opt_self() actionWithTitle:v18 style:0 handler:v19];
  _Block_release(v19);

  [v15 addAction:v20];
LABEL_14:
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  v24 = v1;
  v25 = String._bridgeToObjectiveC()();

  v33 = sub_1001EC758;
  v34 = v23;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10027D328;
  v32 = &unk_1010A0988;
  v26 = _Block_copy(&aBlock);

  v27 = [objc_opt_self() actionWithTitle:v25 style:0 handler:v26];
  _Block_release(v26);

  [v15 addAction:v27];
  [v15 setPreferredAction:v27];
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v37 = xmmword_100EBCEF0;
  PresentationSource.init(viewController:position:)(v24, v35, &aBlock);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v15, 1, 1, 0, 0);

  return sub_10012BA6C(&aBlock);
}

void sub_1001E5270(int a1, id a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v3 = v2;
    LSApplicationWorkspace.openRestrictions()();
  }
}

double sub_1001E5300()
{
  v1 = v0;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v2 = *(v0 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager);
  if (v2)
  {
    swift_beginAccess();
    v3 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata;
    v4 = *(v0 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata);
    if (*(*(v2 + 72) + 16))
    {

      v5 = v4;
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v6);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v7._object = 0x8000000100E40CA0;
      v7._countAndFlagsBits = 0xD000000000000011;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v7);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v8 = String._bridgeToObjectiveC()();

      [v5 setTitle:v8];

      v9 = *(v0 + v3);
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v11._countAndFlagsBits = 543584032;
      v11._object = 0xE400000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v12._countAndFlagsBits = 0x7463617261686320;
      v12._object = 0xED00002973287265;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v13 = String._bridgeToObjectiveC()();

      [v9 setSummary:v13];
    }

    else
    {

      v18 = v4;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v19 = String._bridgeToObjectiveC()();

      [v18 setTitle:v19];

      v20 = *(v1 + v3);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v21 = String._bridgeToObjectiveC()();

      [v20 setSummary:v21];
    }
  }

  else
  {
    v14 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata;
    v15 = *(v0 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v16 = String._bridgeToObjectiveC()();

    [v15 setTitle:v16];

    [*(v0 + v14) setSummary:0];
  }

  return result;
}

void sub_1001E581C()
{
  v1 = v0;
  v130 = type metadata accessor for DispatchWorkItemFlags();
  v129 = *(v130 - 8);
  __chkstk_darwin();
  v127 = &v124 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for DispatchQoS();
  v126 = *(v128 - 8);
  __chkstk_darwin();
  v125 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v145 = &v124 - v4;
  v143 = type metadata accessor for Lyrics.TextLine(0);
  v144 = *(v143 - 8);
  __chkstk_darwin();
  v133 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = (&v124 - v6);
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v154 = _swiftEmptyArrayStorage;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  v9 = v8;
  v10 = String._bridgeToObjectiveC()();
  v11 = objc_opt_self();
  v12 = [v11 systemImageNamed:v10];

  if (qword_10117FC28 != -1)
  {
    swift_once();
  }

  v13 = qword_1012193D0;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = _s8ActivityCMa();
  v16 = objc_allocWithZone(v15);
  v17 = OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_image;
  *&v16[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_image] = 0;
  v18 = OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity__activityType;
  *&v16[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity__activityType] = 0;
  v19 = &v16[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_title];
  *v19 = v7;
  v19[1] = v9;
  *&v16[v17] = v12;
  *&v16[v18] = v13;
  v20 = &v16[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_performBlock];
  *v20 = sub_1001EBDC4;
  v20[1] = v14;
  v153.receiver = v16;
  v153.super_class = v15;
  v21 = v13;
  v22 = objc_msgSendSuper2(&v153, "init");
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v131 = v22;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v23 = swift_allocObject();
  v140 = v1;
  v24 = &v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_reportConcernData];
  v25 = *&v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_reportConcernData + 40];
  *(v23 + 16) = *&v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_reportConcernData];
  v26 = *(v24 + 8);
  *(v23 + 24) = v26;
  v27 = *(v24 + 24);
  *(v23 + 40) = v27;
  v134 = v23;
  *(v23 + 56) = v25;
  if (v26 != 1)
  {
    v28 = *&v140[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager];
    if (v28)
    {
      v142 = v27;
      swift_beginAccess();
      v29 = *(v28 + 72);
      v30 = *(v29 + 16);
      if (v30)
      {
        v28 = *(v29 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + v144[9] * (v30 - 1) + *(v143 + 52));
      }

      else
      {
        v28 = 0;
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = v134;
    *(v134 + 48) = v28;
    *(v32 + 56) = v31;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33 = String.init(localized:table:bundle:locale:comment:)();
  v35 = v34;
  v36 = String._bridgeToObjectiveC()();
  v37 = [v11 systemImageNamed:v36];

  if (qword_10117FC30 != -1)
  {
    swift_once();
  }

  v38 = qword_1012193D8;
  v39 = swift_allocObject();
  v40 = v140;
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  *(v41 + 24) = v134;
  v42 = objc_allocWithZone(v15);
  v43 = OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_image;
  *&v42[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_image] = 0;
  v44 = OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity__activityType;
  *&v42[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity__activityType] = 0;
  v45 = &v42[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_title];
  *v45 = v33;
  v45[1] = v35;
  *&v42[v43] = v37;
  *&v42[v44] = v38;
  v46 = &v42[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_performBlock];
  *v46 = sub_1001EBDCC;
  v46[1] = v41;
  v152.receiver = v42;
  v152.super_class = v15;

  v47 = v38;
  v48 = objc_msgSendSuper2(&v152, "init");
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v139 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager;
  v49 = *&v40[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager];
  if (!v49 || (swift_beginAccess(), v50 = *(v49 + 72), (v51 = *(v50 + 16)) == 0))
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    sub_100009F78(0, &unk_101183F50, UIActivity_ptr);
    v81 = Array._bridgeToObjectiveC()().super.isa;

    [v40 _updateActivityItems:isa applicationActivities:v81];

    return;
  }

  v124 = v48;
  v52 = v144;
  v53 = v50 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
  sub_1001EBDD4(v53, v132);
  sub_1001EBDD4(v53 + v52[9] * (v51 - 1), v133);
  v138 = &v40[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song];
  v136 = &v40[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationSource];
  v135 = "exclamationmark.bubble";
  v137 = v49;

  v54 = 0;
  v55 = 0;
  do
  {
    LODWORD(v144) = v54;
    LODWORD(v143) = *(&off_1010993F0 + v55 + 32);
    *&v142 = Song.title.getter();
    v141 = v56;
    v57 = Song.artistName.getter();
    v59 = v58;
    strcpy(&aBlock, "apple:track:");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v60 = Song.catalogID.getter();
    v62 = v137;
    if (!v61)
    {
      v60 = Song.id.getter();
    }

    String.append(_:)(*&v60);

    v63 = aBlock;
    Song.artwork.getter();
    v64 = *(v62 + 72);
    v65 = *&v40[v139];
    if (v65)
    {
      v66 = *(v65 + 24);
      v67 = *(v65 + 32);
    }

    else
    {
      v66 = 0;
      v67 = 0;
    }

    sub_10012B7A8(v136, &aBlock);

    v68 = [v40 traitCollection];
    [v68 displayScale];
    v70 = v69;

    v71 = type metadata accessor for ShareLyricsStoryActivity(0);
    v72 = objc_allocWithZone(v71);
    static Logger.music(_:)(0xD000000000000018, v135 | 0x8000000000000000);
    v73 = &v72[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_language];
    *v73 = 0;
    v73[1] = 0;
    v74 = &v72[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_title];
    v75 = v141;
    *v74 = v142;
    v74[1] = v75;
    v76 = &v72[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_subtitle];
    *v76 = v57;
    v76[1] = v59;
    *&v72[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_contentIdentifier] = v63;
    v77 = v145;
    sub_1000089F8(v145, &v72[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_artwork], &unk_101188920, &qword_100EBCC50);
    v72[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_socialNetwork] = v143;
    *&v72[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_lines] = v64;
    *v73 = v66;
    v73[1] = v67;
    sub_10012B7A8(&aBlock, &v72[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_presentationSource]);
    *&v72[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_displayScale] = v70;
    v146.receiver = v72;
    v146.super_class = v71;
    v78 = objc_msgSendSuper2(&v146, "init");
    sub_10012BA6C(&aBlock);
    sub_1000095E8(v77, &unk_101188920, &qword_100EBCC50);
    v79 = v78;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v54 = 1;
    v55 = &_mh_execute_header.magic + 1;
    v40 = v140;
  }

  while ((v144 & 1) == 0);
  v145 = v154;
  v82 = [objc_opt_self() kindWithVariants:1];
  __chkstk_darwin();
  v83 = v138;
  v122 = v138;
  v84 = objc_allocWithZone(MPIdentifierSet);
  v85 = String._bridgeToObjectiveC()();
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1001EBE38;
  *(v86 + 24) = &v124 - 4;
  v150 = sub_1001EBE40;
  v151 = v86;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v148 = sub_10006BD7C;
  v149 = &unk_1010A0618;
  v87 = _Block_copy(&aBlock);

  v88 = [v84 initWithSource:v85 modelKind:v82 block:v87];

  _Block_release(v87);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_39;
  }

  __chkstk_darwin();
  v122 = v83;
  v90 = objc_allocWithZone(MPModelSong);
  v91 = swift_allocObject();
  *(v91 + 16) = sub_1001EBE48;
  *(v91 + 24) = &v124 - 4;
  v150 = sub_1001EBE50;
  v151 = v91;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v148 = sub_10006BD7C;
  v149 = &unk_1010A0668;
  v92 = _Block_copy(&aBlock);

  v93 = [v90 initWithIdentifiers:v88 block:v92];

  _Block_release(v92);

  v94 = swift_isEscapingClosureAtFileLocation();

  if (v94)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v95 = v140;
  v96 = *&v140[v139];
  if (v96 && *(v96 + 32))
  {

    v97 = v133;
    v98 = v132;
    goto LABEL_36;
  }

  v99 = static Locale.preferredLanguages.getter();
  v97 = v133;
  v98 = v132;
  if (!*(v99 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_36:
  v100 = *&v95[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_leadingSilence];
  v101 = *v98 - v100;
  v102 = *(v97 + 8) - v100;
  v103 = objc_allocWithZone(MPStoreLyricsSnippetURLComponents);
  v104 = v93;
  v105 = String._bridgeToObjectiveC()();

  v106 = [v103 initWithSong:v104 language:v105 startTime:v101 endTime:v102];
  v144 = v104;

  if (v106)
  {
    v107 = v106;
    v108 = sub_1001EBA0C(v107);
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v109 = static OS_dispatch_queue.main.getter();
    v110 = swift_allocObject();
    v110[2] = v95;
    v110[3] = v108;
    v110[4] = v145;
    v150 = sub_1001EBE58;
    v151 = v110;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v148 = sub_10002BC98;
    v149 = &unk_1010A06B8;
    v111 = _Block_copy(&aBlock);
    v112 = v95;
    v113 = v108;

    v114 = v125;
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_1001EBE64(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970, &qword_100EBD250);
    sub_100029908(&qword_101183F70, &qword_101182970, &qword_100EBD250);
    v115 = v127;
    v116 = v130;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v111);

    (*(v129 + 8))(v115, v116);
    (*(v126 + 8))(v114, v128);
    sub_1001EC5BC(v133, type metadata accessor for Lyrics.TextLine);
    sub_1001EC5BC(v132, type metadata accessor for Lyrics.TextLine);

    return;
  }

LABEL_41:
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  *&aBlock = 0xD00000000000002BLL;
  *(&aBlock + 1) = 0x8000000100E40BF0;
  v117 = [v144 description];
  v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v120 = v119;

  v121._countAndFlagsBits = v118;
  v121._object = v120;
  String.append(_:)(v121);

  v123 = 0;
  v122 = 518;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}