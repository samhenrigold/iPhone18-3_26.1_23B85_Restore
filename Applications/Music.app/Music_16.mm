void sub_1001E6BE0(uint64_t a1)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v2 = &v9 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    type metadata accessor for MainActor();
    v6 = v4;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;
    sub_1001F4CB8(0, 0, v2, &unk_100EBF998, v8);
  }
}

uint64_t sub_1001E6D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_1001E6DCC, v6, v5);
}

uint64_t sub_1001E6DCC()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for SharingController();
  v3 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song;
  sub_10012B7A8(v1 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationSource, v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_1001E6EB4;

  return sub_1001E9440(v1 + v3, 0, v0 + 16, v2);
}

uint64_t sub_1001E6EB4()
{
  v1 = *v0;

  sub_10012BA6C(v1 + 16);
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_1001E6FE0, v3, v2);
}

uint64_t sub_1001E6FE0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001E7040(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = &v24[-v3];
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v6 = &v24[-v5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = Song.catalogID.getter();
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      swift_beginAccess();
      v13 = 0;
      v14 = *(a2 + 24);
      if (v14 != 1)
      {
        v15 = *(a2 + 56);
        v16 = *(a2 + 32);
        v27 = *(a2 + 16);
        v28 = v14;
        v29 = v16;
        v30 = *(a2 + 40);
        v31 = v15;

        v17 = Lyrics.ReportConcernData.dictionaryRepresentation()();

        v13 = sub_100363D38(v17);
      }

      sub_10012B7A8(v8 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationSource, v24);
      v18 = type metadata accessor for Actions.MetricsReportingContext(0);
      (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
      v19 = swift_allocObject();
      *(v19 + 16) = v11;
      *(v19 + 24) = v12;
      *(v19 + 32) = 2;
      *(v19 + 40) = v13;
      sub_10012B828(v24, v19 + 48);
      Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)(v11, v12, 1735290739, 0xE400000000000000, 40, variable initialization expression of _NSRange.NSRangeIterator.current, 0, &unk_100EBF410, v25, v19, v6);
      v20 = type metadata accessor for TaskPriority();
      (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
      type metadata accessor for MainActor();

      v21 = static MainActor.shared.getter();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = &protocol witness table for MainActor;
      v23 = v25[1];
      *(v22 + 32) = v25[0];
      *(v22 + 48) = v23;
      *(v22 + 64) = v25[2];
      *(v22 + 80) = v26;
      sub_10086E3AC(0, 0, v4, &unk_100EBF980, v22);
    }

    else
    {
    }
  }
}

uint64_t sub_1001E73E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[47] = a1;
  v4[48] = a4;
  type metadata accessor for MainActor();
  v4[49] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[50] = v6;
  v4[51] = v5;

  return _swift_task_switch(sub_1001E7480, v6, v5);
}

uint64_t sub_1001E7480()
{
  static Actions.ReportConcern.action(context:)(*(v0 + 384), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 416) = v1;
  v2 = sub_10010FC20(&qword_1011839B0, &unk_100EC73E0);
  *v1 = v0;
  v1[1] = sub_1001E7544;
  v3 = *(v0 + 376);

  return Action.execute(checkSupportedStatus:)(v3, 1, v2);
}

uint64_t sub_1001E7544()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = *(v2 + 48);
    *(v2 + 184) = *(v2 + 64);
    *(v2 + 168) = v5;
    *(v2 + 152) = v4;
    *(v2 + 136) = v3;
    v6 = *(v2 + 80);
    v7 = *(v2 + 96);
    v8 = *(v2 + 112);
    *(v2 + 248) = *(v2 + 128);
    *(v2 + 232) = v8;
    *(v2 + 216) = v7;
    *(v2 + 200) = v6;
    sub_1000095E8(v2 + 136, &qword_1011839B0, &unk_100EC73E0);
    v9 = *(v2 + 400);
    v10 = *(v2 + 408);
    v11 = sub_1001E7748;
  }

  else
  {
    v12 = *(v2 + 64);
    *(v2 + 288) = *(v2 + 48);
    *(v2 + 304) = v12;
    *(v2 + 256) = v3;
    *(v2 + 272) = v4;
    v13 = *(v2 + 80);
    v14 = *(v2 + 96);
    v15 = *(v2 + 112);
    *(v2 + 368) = *(v2 + 128);
    *(v2 + 336) = v14;
    *(v2 + 352) = v15;
    *(v2 + 320) = v13;
    sub_1000095E8(v2 + 256, &qword_1011839B0, &unk_100EC73E0);
    v9 = *(v2 + 400);
    v10 = *(v2 + 408);
    v11 = sub_1001E76E4;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1001E76E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E7748()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001E77AC(void *a1, void *a2)
{
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBC6B0;
  *(v4 + 56) = type metadata accessor for LyricsSharingActivityViewController.LyricsURLActivityItemProvider();
  *(v4 + 32) = a2;
  v5 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100009F78(0, &unk_101183F50, UIActivity_ptr);
  v7 = Array._bridgeToObjectiveC()().super.isa;
  [a1 _updateActivityItems:isa applicationActivities:v7];
}

uint64_t sub_1001E78A0(double a1)
{
  v2 = v1;
  v57 = type metadata accessor for Logger();
  v4 = *(v57 - 8);
  __chkstk_darwin();
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v8 = &v53 - v7;
  v9 = [objc_allocWithZone(MPCReportingLyricsViewEvent) init];
  v10 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song;
  v11 = type metadata accessor for Song();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v56 = v10;
  v13(v8, &v2[v10], v11);
  v14 = *(v12 + 56);
  v55 = v11;
  v14(v8, 0, 1, v11);
  MPCReportingLyricsViewEvent.song.setter();
  v15 = &v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsID];
  if (*&v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsID + 8])
  {

    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  [v9 setLyricsID:v16];

  [v9 setVisibleDuration:a1];
  v17 = *&v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager];
  if (v17 && *(v17 + 32))
  {

    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  [v9 setLanguage:v18];

  [v9 setDisplayType:0];
  v19 = String._bridgeToObjectiveC()();
  [v9 setFeatureName:v19];

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v20 = (*(*qword_101218AC8 + 432))();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 tracklist];

    if (v22)
    {
      v23 = [v22 playingItem];
      if (!v23)
      {

        goto LABEL_28;
      }

      v24 = v23;
      v54 = v6;
      v25 = [v23 metadataObject];
      if (v25)
      {
        v26 = v25;
        v27 = MPModelObject.bestIdentifier(for:)(3, 2u);
        v29 = v28;

        v30 = Song.catalogID.getter();
        if (v29)
        {
          if (!v31)
          {

            goto LABEL_27;
          }

          if (v27 == v30 && v29 == v31)
          {

LABEL_26:
            MPCPlayerResponseTracklist.currentPlayEvent.getter();
            v34 = v33;
            [v9 setModelPlayEvent:v33];

            goto LABEL_27;
          }

          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v32)
          {
            goto LABEL_26;
          }

LABEL_23:

LABEL_27:
          v6 = v54;
          goto LABEL_28;
        }
      }

      else
      {
        Song.catalogID.getter();
      }

      if (!v31)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

LABEL_28:
  v35 = [objc_allocWithZone(MPCLyricsReportingController) init];
  [v35 recordLyricsViewEvent:v9];

  v36 = Logger.lyrics.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v36, v57);
  v37 = v2;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v54 = v6;
    v60 = v41;
    *v40 = 136446722;
    v42 = *(v15 + 1);
    v58 = *v15;
    v59 = v42;

    sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
    v43 = String.init<A>(describing:)();
    v45 = sub_1000105AC(v43, v44, &v60);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2082;
    v46 = Double.description.getter();
    v48 = sub_1000105AC(v46, v47, &v60);

    *(v40 + 14) = v48;
    *(v40 + 22) = 2082;
    sub_1001EBE64(&unk_101183F40, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = sub_1000105AC(v49, v50, &v60);

    *(v40 + 24) = v51;
    _os_log_impl(&_mh_execute_header, v38, v39, "Recorded Sharing PAF Event with id=%{public}s; timing=%{public}ss; song=%{public}s", v40, 0x20u);
    swift_arrayDestroy();

    return (*(v4 + 8))(v54, v57);
  }

  else
  {

    return (*(v4 + 8))(v6, v57);
  }
}

uint64_t sub_1001E7F54()
{
  v1 = v0;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v14[-v4];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsVisibilityStart;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v5, &qword_101188C20, &qword_100EC2030);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1000095E8(v5, &qword_101188C20, &qword_100EC2030);
  }

  (*(v7 + 32))(v9, v5, v6);
  Date.timeIntervalSinceNow.getter();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  *(v1 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_visibleDuration) = *(v1 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_visibleDuration) - v13;
  (*(v7 + 56))(v3, 1, 1, v6);
  swift_beginAccess();
  sub_1001EBD54(v3, v1 + v10);
  return swift_endAccess();
}

id sub_1001E81F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for LyricsSharingActivityViewController(uint64_t a1)
{
  result = qword_101183EE8;
  if (!qword_101183EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E83E4(uint64_t a1)
{
  type metadata accessor for Song();
  if (v1 <= 0x3F)
  {
    sub_1001E8510(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001E8510(uint64_t a1)
{
  if (!qword_101184A60)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101184A60);
    }
  }
}

id sub_1001E858C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionViewController);
  v2 = sub_100338B0C();

  return v2;
}

void sub_1001E85CC(uint64_t isEscapingClosureAtFileLocation, unint64_t a2)
{
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Song.catalogID.getter();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1001EBFF0;
    *(v4 + 24) = v12;
    aBlock[4] = sub_1001EC788;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002B8A68;
    aBlock[3] = &unk_1010A0870;
    v7 = _Block_copy(aBlock);

    [isEscapingClosureAtFileLocation setUniversalStoreIdentifiersWithBlock:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  static ApplicationCapabilities.shared.getter(aBlock);
  sub_100014984(aBlock);
  if ((aBlock[0] & 0x10000) != 0)
  {
    (*(v5 + 16))(v7, a2, v4);
    a2 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    v14 = *(v5 + 32);
    v5 += 32;
    v14(v13 + a2, v7, v4);
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1001EBF54;
    *(v4 + 24) = v13;
    v26 = sub_1001EBE40;
    v27 = v4;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_1002B8A68;
    v25 = &unk_1010A07F8;
    v7 = _Block_copy(&v22);

    [isEscapingClosureAtFileLocation setUniversalStoreIdentifiersWithBlock:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_100009F78(0, &qword_101183F80, MPMediaLibrary_ptr);
  v15 = static MPMediaLibrary.device.getter();
  v16 = [v15 uniqueIdentifier];

  if (v16)
  {
    (*(v5 + 16))(v7, a2, v4);
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    (*(v5 + 32))(v18 + v17, v7, v4);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1001EBEB4;
    *(v19 + 24) = v18;
    v26 = sub_1001EBE50;
    v27 = v19;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_1002B8A68;
    v25 = &unk_1010A0780;
    v20 = _Block_copy(&v22);

    [isEscapingClosureAtFileLocation setLibraryIdentifiersWithDatabaseID:v16 block:v20];

    _Block_release(v20);
    v21 = swift_isEscapingClosureAtFileLocation();

    if (v21)
    {
      __break(1u);
    }
  }
}

id sub_1001E8AD8(id result, uint64_t a2, unint64_t a3)
{
  v4 = HIBYTE(a3) & 0xF;
  v5 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = v5;
  }

  if (!v6)
  {
    goto LABEL_63;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v28 = result;

    v29 = sub_1002D0E10();
    v31 = v30;

    result = v28;
    if ((v31 & 1) == 0)
    {
      v9 = v29;
      return [result setAdamID:v9];
    }

    goto LABEL_63;
  }

  if ((a3 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v32 = result;
      v4 = _StringObject.sharedUTF8.getter();
      result = v32;
    }

    v7 = *v4;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v16 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (!v4)
          {
            goto LABEL_62;
          }

          v17 = (v4 + 1);
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v19 + v18;
            if (__OFADD__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v16)
            {
LABEL_53:
              LOBYTE(v4) = 0;
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v7 == 45)
    {
      if (v5 >= 1)
      {
        v8 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (!v4)
          {
            goto LABEL_62;
          }

          v10 = (v4 + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_69;
    }

    if (v5)
    {
      v9 = 0;
      if (!v4)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v23 = *v4 - 48;
        if (v23 > 9)
        {
          break;
        }

        v24 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          break;
        }

        ++v4;
        if (!--v5)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_61;
  }

  v33[0] = a2;
  v33[1] = a3 & 0xFFFFFFFFFFFFFFLL;
  if (a2 != 43)
  {
    if (a2 == 45)
    {
      if (!v4)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (--v4)
      {
        v9 = 0;
        v13 = v33 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (v4)
    {
      v9 = 0;
      v25 = v33;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          break;
        }

        ++v25;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_61:
    v9 = 0;
    LOBYTE(v4) = 1;
LABEL_62:
    v34 = v4;
    if ((v4 & 1) == 0)
    {
      return [result setAdamID:v9];
    }

LABEL_63:
    v9 = 0;
    return [result setAdamID:v9];
  }

  if (v4)
  {
    if (--v4)
    {
      v9 = 0;
      v20 = v33 + 1;
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          break;
        }

        v22 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          break;
        }

        ++v20;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
  return result;
}

void sub_1001E8DF4(void *a1)
{
  Song.id.getter();
  v2 = String._bridgeToObjectiveC()();

  [a1 setUniversalCloudLibraryID:v2];
}

uint64_t sub_1001E8E60(void *a1)
{
  result = Song.id.getter();
  v4 = HIBYTE(v3) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    goto LABEL_63;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v31 = 0;
    v8 = sub_1002D0E10();
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      return [a1 setPersistentID:v8];
    }

    goto LABEL_63;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v5 = v29;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          v8 = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v5) = 1;
LABEL_62:
      v31 = v5;
      v26 = v5;

      if ((v26 & 1) == 0)
      {
        return [a1 setPersistentID:v8];
      }

LABEL_63:
      v8 = 0;
      return [a1 setPersistentID:v8];
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        v8 = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v30[0] = result;
  v30[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v30;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        v8 = 0;
        v12 = v30 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      v8 = 0;
      v18 = v30 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

void sub_1001E9180(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  Song.title.getter();
  v4 = String._bridgeToObjectiveC()();

  [v3 setTitle:v4];

  [v3 setArtistUploadedContent:0];
  v5 = [objc_opt_self() emptyIdentifierSet];
  v10[2] = a2;
  v6 = objc_allocWithZone(MPModelLyrics);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001EBEAC;
  *(v7 + 24) = v10;
  aBlock[4] = sub_1001EC784;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006BD7C;
  aBlock[3] = &unk_1010A0708;
  v8 = _Block_copy(aBlock);

  v9 = [v6 initWithIdentifiers:v5 block:v8];

  _Block_release(v8);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    [v3 setLyrics:v9];

    [v3 setHasVideo:0];
  }
}

id sub_1001E938C(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  [v1 setHasStoreLyrics:Song.hasLyrics.getter() & 1];
  [v1 setHasLibraryLyrics:Song.hasCustomLyrics.getter() & 1];
  [v1 setHasTimeSyncedLyrics:Song.hasTimeSyncedLyrics.getter() & 1];

  return [v1 setText:0];
}

uint64_t sub_1001E9440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[85] = a4;
  v4[84] = a3;
  v4[83] = a2;
  type metadata accessor for Locale();
  v4[86] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[87] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[88] = v5;
  v4[89] = *(v5 - 8);
  v4[90] = swift_task_alloc();
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[93] = v6;
  v4[94] = *(v6 - 8);
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v7 = type metadata accessor for Playlist();
  v4[105] = v7;
  v4[106] = *(v7 - 8);
  v4[107] = swift_task_alloc();
  v4[108] = swift_task_alloc();
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  v4[109] = swift_task_alloc();
  v8 = type metadata accessor for Song();
  v4[110] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[111] = v9;
  v4[112] = *(v9 + 64);
  v4[113] = swift_task_alloc();
  v4[114] = swift_task_alloc();
  v4[17] = v8;
  v4[18] = &protocol witness table for Song;
  v4[115] = sub_10001C8B8(v4 + 14);
  v11 = *(v10 + 16);
  v4[116] = v11;
  v4[117] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11();
  type metadata accessor for MainActor();
  v4[118] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[119] = v13;
  v4[120] = v12;

  return _swift_task_switch(sub_1001E9834, v13, v12);
}

uint64_t sub_1001E9834()
{
  v90 = v0;
  v1 = swift_allocObject();
  *(v0 + 968) = v1;
  *(v1 + 16) = _swiftEmptyArrayStorage;
  v2 = (v1 + 16);
  sub_100008FE4(v0 + 112, v0 + 192);
  *(v0 + 976) = sub_10010FC20(&unk_1011814E0, &unk_100EBF9B0);
  sub_10010FC20(&unk_101183FF0, &unk_100EBCFA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 672);
    sub_100059A8C((v0 + 232), v0 + 152);
    v4 = swift_task_alloc();
    *(v4 + 16) = v0 + 152;
    *(v4 + 24) = v3;
    v5 = sub_10012BC18(sub_10012B91C, v4, &off_101099760);

    if (v5 >> 62)
    {
      sub_100009F78(0, &unk_101183F50, UIActivity_ptr);

      v6 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100009F78(0, &unk_101183F50, UIActivity_ptr);
      v6 = v5;
    }

    sub_10012403C(v6);
    sub_10000959C((v0 + 152));
  }

  else
  {
    *(v0 + 264) = 0;
    *(v0 + 248) = 0u;
    *(v0 + 232) = 0u;
    sub_1000095E8(v0 + 232, &unk_1011814F0, &unk_100EBF9C0);
  }

  v7 = *(v0 + 888);
  sub_100008FE4(v0 + 112, v0 + 272);
  v8 = swift_dynamicCast();
  v9 = *(v7 + 56);
  if (v8)
  {
    v10 = *(v0 + 912);
    v11 = *(v0 + 888);
    v12 = *(v0 + 880);
    v13 = *(v0 + 872);
    v9(v13, 0, 1, v12);
    v14 = *(v11 + 32);
    v14(v10, v13, v12);
    type metadata accessor for LyricsLoader();
    if ((static LyricsLoader.supportsLyrics(for:)(v10) & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_1001EBB88();
    if (v15)
    {
      goto LABEL_10;
    }

    v16 = [objc_opt_self() currentTraitCollection];
    v17 = [v16 userInterfaceIdiom];

    if (v17 == 6)
    {
      goto LABEL_10;
    }

    v62 = Song.hasLyrics.getter();
    v18 = *(v0 + 912);
    if ((v62 & 1) == 0)
    {
      goto LABEL_11;
    }

    if ((Song.hasTimeSyncedLyrics.getter() & 1) == 0)
    {
LABEL_10:
      v18 = *(v0 + 912);
LABEL_11:
      (*(*(v0 + 888) + 8))(v18, *(v0 + 880));
      goto LABEL_13;
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v63 = String.init(localized:table:bundle:locale:comment:)();
    v87 = v64;
    v88 = v63;
    v65 = String._bridgeToObjectiveC()();
    v86 = [objc_opt_self() imageNamed:v65];

    if (qword_10117FC20 != -1)
    {
      swift_once();
    }

    v66 = *(v0 + 896);
    v67 = *(v0 + 888);
    v68 = *(v0 + 880);
    v83 = *(v0 + 904);
    v84 = *(v0 + 680);
    v69 = *(v0 + 672);
    v85 = qword_1012193C8;
    (*(v0 + 928))();
    sub_10012B7A8(v69, v0 + 16);
    v70 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v71 = (v66 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    v14(v72 + v70, v83, v68);
    sub_10012B828(v0 + 16, v72 + v71);
    *(v72 + ((v71 + 103) & 0xFFFFFFFFFFFFFFF8)) = v84;
    v73 = _s8ActivityCMa();
    v74 = objc_allocWithZone(v73);
    v75 = OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_image;
    *&v74[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_image] = 0;
    v76 = OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity__activityType;
    *&v74[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity__activityType] = 0;
    v77 = &v74[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_title];
    *v77 = v88;
    *(v77 + 1) = v87;
    *&v74[v75] = v86;
    *&v74[v76] = v85;
    v78 = &v74[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_performBlock];
    *v78 = sub_10012B884;
    v78[1] = v72;
    *(v0 + 640) = v74;
    *(v0 + 648) = v73;
    v79 = v85;
    objc_msgSendSuper2((v0 + 640), "init");
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v80 = *(v0 + 912);
    v81 = *(v0 + 888);
    v82 = *(v0 + 880);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (*(v81 + 8))(v80, v82);
  }

  else
  {
    v19 = *(v0 + 872);
    v9(v19, 1, 1, *(v0 + 880));
    sub_1000095E8(v19, &unk_101183960, &unk_100EBCF90);
  }

LABEL_13:
  v20 = *(v0 + 848);
  sub_100008FE4(v0 + 112, v0 + 312);
  v21 = swift_dynamicCast();
  v22 = *(v20 + 56);
  if (v21)
  {
    v23 = *(v0 + 864);
    v24 = *(v0 + 848);
    v25 = *(v0 + 840);
    v26 = *(v0 + 832);
    v27 = *(v0 + 816);
    v28 = *(v0 + 712);
    v29 = *(v0 + 704);
    v22(v26, 0, 1, v25);
    v30 = *(v24 + 32);
    *(v0 + 984) = v30;
    *(v0 + 992) = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v30(v23, v26, v25);
    Playlist.url.getter();
    v31 = *(v28 + 48);
    *(v0 + 1000) = v31;
    *(v0 + 1008) = (v28 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v31(v27, 1, v29) == 1)
    {
      sub_1000095E8(*(v0 + 816), &qword_101183A20, &unk_100EBCF80);
      v32 = swift_task_alloc();
      *(v0 + 1016) = v32;
      *v32 = v0;
      v32[1] = sub_1001EA308;
      v33 = *(v0 + 824);

      return Playlist.publish()(v33);
    }

    v35 = *(v0 + 816);
    (*(*(v0 + 848) + 8))(*(v0 + 864), *(v0 + 840));
    v36 = &qword_101183A20;
    v37 = &unk_100EBCF80;
  }

  else
  {
    v35 = *(v0 + 832);
    v22(v35, 1, 1, *(v0 + 840));
    v36 = &unk_1011814D0;
    v37 = &qword_100EC12A0;
  }

  sub_1000095E8(v35, v36, v37);
  sub_100008FE4(v0 + 112, v0 + 392);
  sub_10010FC20(&unk_101184000, &unk_100EBCFB0);
  if (swift_dynamicCast())
  {
    v38 = *(v0 + 768);
    v39 = *(v0 + 752);
    v40 = *(v0 + 744);
    v41 = *(v0 + 376);
    v42 = *(v0 + 384);
    sub_10000954C((v0 + 352), v41);
    v43 = (*(v42 + 8))(v41, v42);
    *(v0 + 1024) = v43;
    sub_10000959C((v0 + 352));
    *(v0 + 656) = v43;
    v44 = Logger.actions.unsafeMutableAddressor();
    (*(v39 + 16))(v38, v44, v40);
    sub_100008FE4(v0 + 112, v0 + 512);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 768);
      v48 = *(v0 + 752);
      v49 = *(v0 + 744);
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v89[0] = v51;
      *v50 = 136446210;
      sub_100008FE4(v0 + 512, v0 + 552);
      v52 = String.init<A>(describing:)();
      v54 = v53;
      sub_10000959C((v0 + 512));
      v55 = sub_1000105AC(v52, v54, v89);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "Requesting sharing URL and offers for item=%{public}s", v50, 0xCu);
      sub_10000959C(v51);

      (*(v48 + 8))(v47, v49);
    }

    else
    {
      v58 = *(v0 + 768);
      v59 = *(v0 + 752);
      v60 = *(v0 + 744);

      sub_10000959C((v0 + 512));
      (*(v59 + 8))(v58, v60);
    }

    v61 = swift_task_alloc();
    *(v0 + 1040) = v61;
    *v61 = v0;
    v61[1] = sub_1001EB15C;

    return Song.augmentMetadata(_:)(v0 + 656);
  }

  else
  {
    *(v0 + 384) = 0;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    sub_1000095E8(v0 + 352, &unk_101181500, &qword_100EBF9D0);
    v56 = swift_task_alloc();
    *(v0 + 1032) = v56;
    *v56 = v0;
    v56[1] = sub_1001EABA4;
    v57 = *(v0 + 808);

    return Song.shareURL.getter(v57);
  }
}

uint64_t sub_1001EA308()
{
  v1 = *v0;

  v2 = *(v1 + 960);
  v3 = *(v1 + 952);

  return _swift_task_switch(sub_1001EA428, v3, v2);
}

uint64_t sub_1001EA428()
{
  v68 = v0;
  v1 = *(v0 + 848);
  v2 = *(v0 + 840);
  v3 = *(v0 + 824);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    (*(v1 + 8))(*(v0 + 864), v2);
    v4 = &unk_1011814D0;
    v5 = &qword_100EC12A0;
    v6 = v3;
    goto LABEL_5;
  }

  v7 = *(v0 + 1000);
  v8 = *(v0 + 784);
  v9 = *(v0 + 704);
  (*(v0 + 984))(*(v0 + 856), v3, v2);
  Playlist.url.getter();
  if (v7(v8, 1, v9) == 1)
  {
    v10 = *(v0 + 864);
    v11 = *(v0 + 840);
    v12 = *(v0 + 784);
    v13 = *(*(v0 + 848) + 8);
    v13(*(v0 + 856), v11);
    v13(v10, v11);
    v4 = &qword_101183A20;
    v5 = &unk_100EBCF80;
    v6 = v12;
LABEL_5:
    sub_1000095E8(v6, v4, v5);
    sub_100008FE4(v0 + 112, v0 + 392);
    sub_10010FC20(&unk_101184000, &unk_100EBCFB0);
    if (swift_dynamicCast())
    {
      v14 = *(v0 + 768);
      v15 = *(v0 + 752);
      v16 = *(v0 + 744);
      v17 = *(v0 + 376);
      v18 = *(v0 + 384);
      sub_10000954C((v0 + 352), v17);
      v19 = (*(v18 + 8))(v17, v18);
      *(v0 + 1024) = v19;
      sub_10000959C((v0 + 352));
      *(v0 + 656) = v19;
      v20 = Logger.actions.unsafeMutableAddressor();
      (*(v15 + 16))(v14, v20, v16);
      sub_100008FE4(v0 + 112, v0 + 512);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = *(v0 + 768);
        v24 = *(v0 + 752);
        v25 = *(v0 + 744);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v67 = v27;
        *v26 = 136446210;
        sub_100008FE4(v0 + 512, v0 + 552);
        v28 = String.init<A>(describing:)();
        v30 = v29;
        sub_10000959C((v0 + 512));
        v31 = sub_1000105AC(v28, v30, &v67);

        *(v26 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v21, v22, "Requesting sharing URL and offers for item=%{public}s", v26, 0xCu);
        sub_10000959C(v27);

        (*(v24 + 8))(v23, v25);
      }

      else
      {
        v49 = *(v0 + 768);
        v50 = *(v0 + 752);
        v51 = *(v0 + 744);

        sub_10000959C((v0 + 512));
        (*(v50 + 8))(v49, v51);
      }

      v52 = swift_task_alloc();
      *(v0 + 1040) = v52;
      *v52 = v0;
      v52[1] = sub_1001EB15C;

      return Song.augmentMetadata(_:)(v0 + 656);
    }

    else
    {
      *(v0 + 384) = 0;
      *(v0 + 352) = 0u;
      *(v0 + 368) = 0u;
      sub_1000095E8(v0 + 352, &unk_101181500, &qword_100EBF9D0);
      v32 = swift_task_alloc();
      *(v0 + 1032) = v32;
      *v32 = v0;
      v32[1] = sub_1001EABA4;
      v33 = *(v0 + 808);

      return Song.shareURL.getter(v33);
    }
  }

  v35 = *(v0 + 784);
  v36 = *(v0 + 720);
  v37 = *(v0 + 712);
  v38 = *(v0 + 704);

  (*(v37 + 32))(v36, v35, v38);
  v39 = sub_100562380();
  URL._bridgeToObjectiveC()(v40);
  v42 = v41;
  [v39 setOriginalURL:v41];

  v43 = type metadata accessor for ShareActivityItemProvider(0);
  v44 = objc_allocWithZone(v43);
  v45 = v39;
  v46 = [v45 originalURL];
  if (v46)
  {
    v47 = v46;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  v65 = *(v0 + 856);
  v66 = *(v0 + 864);
  v53 = *(v0 + 848);
  v54 = *(v0 + 840);
  v55 = *(v0 + 776);
  v63 = *(v0 + 968);
  v64 = *(v0 + 720);
  v56 = *(v0 + 712);
  v57 = *(v0 + 704);
  v62 = *(v0 + 672);
  v58 = *(v0 + 664);
  (*(v56 + 56))(v55, v48, 1, v57);
  sub_10003D17C(v55, &v44[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url], &qword_101183A20, &unk_100EBCF80);
  *&v44[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_linkMetadata] = v45;
  *(v0 + 624) = v44;
  *(v0 + 632) = v43;
  v59 = objc_msgSendSuper2((v0 + 624), "init");
  sub_10012AA30(v59, v58, v63, v62);

  (*(v56 + 8))(v64, v57);
  v60 = *(v53 + 8);
  v60(v65, v54);
  v60(v66, v54);

  sub_10000959C((v0 + 112));

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1001EABA4()
{
  v1 = *v0;

  v2 = *(v1 + 960);
  v3 = *(v1 + 952);

  return _swift_task_switch(sub_1001EACC4, v3, v2);
}

uint64_t sub_1001EACC4()
{
  v39 = v0;
  v1 = *(v0 + 808);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);

  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 920);
    sub_1000095E8(*(v0 + 808), &qword_101183A20, &unk_100EBCF80);
    sub_1001EB5D4(v4);
  }

  else
  {
    v5 = *(v0 + 760);
    v6 = *(v0 + 752);
    v7 = *(v0 + 744);
    (*(*(v0 + 712) + 32))(*(v0 + 736), *(v0 + 808), *(v0 + 704));
    v8 = Logger.actions.unsafeMutableAddressor();
    (*(v6 + 16))(v5, v8, v7);
    sub_100008FE4(v0 + 112, v0 + 432);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 760);
      v12 = *(v0 + 752);
      v13 = *(v0 + 744);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v38 = v15;
      *v14 = 136446210;
      sub_100008FE4(v0 + 432, v0 + 472);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_10000959C((v0 + 432));
      v19 = sub_1000105AC(v16, v18, &v38);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "Requesting sharing URL for item=%{public}s", v14, 0xCu);
      sub_10000959C(v15);

      (*(v12 + 8))(v11, v13);
    }

    else
    {
      v20 = *(v0 + 760);
      v21 = *(v0 + 752);
      v22 = *(v0 + 744);

      sub_10000959C((v0 + 432));
      (*(v21 + 8))(v20, v22);
    }

    v23 = *(v0 + 968);
    v24 = *(v0 + 728);
    v25 = *(v0 + 712);
    v26 = *(v0 + 704);
    v36 = *(v0 + 672);
    v37 = *(v0 + 736);
    v35 = *(v0 + 664);
    v27 = *(v25 + 16);
    v27(v24);
    v28 = type metadata accessor for ShareActivityItemProvider(0);
    v29 = objc_allocWithZone(v28);
    v30 = OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url;
    (v27)(&v29[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url], v24, v26);
    (*(v25 + 56))(&v29[v30], 0, 1, v26);
    *&v29[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_linkMetadata] = 0;
    *(v0 + 592) = v29;
    *(v0 + 600) = v28;
    v31 = objc_msgSendSuper2((v0 + 592), "init");
    v32 = *(v25 + 8);
    v32(v24, v26);
    sub_10012AA30(v31, v35, v23, v36);

    v32(v37, v26);
  }

  sub_10000959C((v0 + 112));

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1001EB15C()
{
  v1 = *v0;

  v2 = *(v1 + 960);
  v3 = *(v1 + 952);

  return _swift_task_switch(sub_1001EB27C, v3, v2);
}

uint64_t sub_1001EB27C()
{
  receiver = v0[64].receiver;

  v2 = [receiver originalURL];
  if (v2)
  {
    v3 = v0[64].receiver;
    v4 = v0[50].receiver;
    super_class = v0[44].super_class;
    v6 = v0[44].receiver;
    v7 = v2;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = 1;
    v23 = *(super_class + 7);
    v23(v4, 0, 1, v6);
    sub_1000095E8(v4, &qword_101183A20, &unk_100EBCF80);
    v9 = type metadata accessor for ShareActivityItemProvider(0);
    v10 = objc_allocWithZone(v9);
    v11 = [v3 originalURL];
    if (v11)
    {
      v12 = v11;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = 0;
    }

    v13 = v0[64].receiver;
    v14 = v0[60].super_class;
    v15 = v0[49].super_class;
    v16 = v0[42].receiver;
    v17 = v0[41].super_class;
    v23(v15, v8, 1, v0[44].receiver);
    sub_10003D17C(v15, &v10[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url], &qword_101183A20, &unk_100EBCF80);
    *&v10[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_linkMetadata] = v13;
    v0[38].receiver = v10;
    v0[38].super_class = v9;
    v18 = objc_msgSendSuper2(v0 + 38, "init");
    sub_10012AA30(v18, v17, v14, v16);
  }

  else
  {
    v19 = v0[57].super_class;
    v20 = v0[50].receiver;
    (*(v0[44].super_class + 7))(v20, 1, 1, v0[44].receiver);
    sub_1000095E8(v20, &qword_101183A20, &unk_100EBCF80);
    sub_1001EB5D4(v19);

    v18 = v0[64].receiver;
  }

  sub_10000959C(&v0[7].receiver);

  v21 = v0->super_class;

  return v21();
}

uint64_t sub_1001EB5D4(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Song();
  v31[3] = v8;
  v31[4] = &protocol witness table for Song;
  v9 = sub_10001C8B8(v31);
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  v10 = Logger.actions.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v10, v4);
  sub_100008FE4(v31, v30);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v3;
    v29 = v26;
    *v13 = 136446210;
    sub_100008FE4(v30, v28);
    sub_10010FC20(&unk_1011814E0, &unk_100EBF9B0);
    v14 = String.init<A>(describing:)();
    v25 = v4;
    v15 = v14;
    v17 = v16;
    sub_10000959C(v30);
    v18 = sub_1000105AC(v15, v17, &v29);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "No sharing url for item=%{public}s", v13, 0xCu);
    sub_10000959C(v26);

    (*(v5 + 8))(v7, v25);
  }

  else
  {

    sub_10000959C(v30);
    (*(v5 + 8))(v7, v4);
  }

  Song.failureMessage.getter();
  v19 = String._bridgeToObjectiveC()();

  v20 = [objc_opt_self() alertControllerWithTitle:v19 message:0 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v21 = String._bridgeToObjectiveC()();

  v22 = [objc_opt_self() actionWithTitle:v21 style:1 handler:0];

  [v20 addAction:v22];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v20, 1, 1, 0, 0);

  return sub_10000959C(v31);
}

id sub_1001EBA0C(void *a1)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v3 = &v14 - v2;
  v4 = type metadata accessor for LyricsSharingActivityViewController.LyricsURLActivityItemProvider();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewControllerP33_84E0FBA0540C9AC5FB893F254C8A85DC29LyricsURLActivityItemProvider_snippetComponents] = a1;
  v6 = a1;
  URL.init(string:)();
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v3, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    (*(v8 + 8))(v3, v7);
    v14.receiver = v5;
    v14.super_class = v4;
    v13 = objc_msgSendSuper2(&v14, "initWithPlaceholderItem:", v12);

    return v13;
  }

  return result;
}

uint64_t sub_1001EBB88()
{
  BagProvider.shared.unsafeMutableAddressor();

  v0 = BagProvider.bag.getter();

  if (!v0)
  {
    v5 = 0u;
    v6 = 0u;
    goto LABEL_12;
  }

  ICURLBag.subscript.getter(ICURLBagKeyMusicSubscription, &v5);

  if (!*(&v6 + 1))
  {
LABEL_12:
    sub_1000095E8(&v5, &unk_101183F30, qword_100EBF960);
    return 0;
  }

  sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
  if ((swift_dynamicCast() & 1) == 0 || !v4)
  {
    return 0;
  }

  if (!*(v4 + 16) || (v1 = sub_100019C10(0xD00000000000001ALL, 0x8000000100E409A0), (v2 & 1) == 0))
  {

    return 0;
  }

  sub_10000DD18(*(v4 + 56) + 32 * v1, &v5);

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001EBCE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EBD54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EBDD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EBE64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001EBECC()
{
  v1 = type metadata accessor for Song();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1001EBF6C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Song() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1001EBFF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1001E73E8(a1, v4, v5, v1 + 32);
}

uint64_t sub_1001EC0A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1001E6D34(a1, v4, v5, v6);
}

uint64_t sub_1001EC164(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1001E3B94(a1, v4, v5, v6);
}

void sub_1001EC218(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_10011895C(a1, a2, a3 & 1);
  }
}

uint64_t sub_1001EC250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EC2D4(void *a1)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v25 - v4;
  type metadata accessor for MetricsEvent.Click(0);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 activityTitle];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = type metadata accessor for URL();
  v15 = *(*(v14 - 8) + 56);
  v15(v5, 1, 1, v14);
  v15(v3, 1, 1, v14);
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v11, v13, 2, 48, v5, 0, 0, 4, v8, 0, 0, 65280, 0, 0, 0, 0, v3, 0, 1, 2, 0, 0, 0);
  v16 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v17 = sub_10053771C();
  v19 = v18;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v20 = qword_101218AD0;
  v21 = GroupActivitiesManager.hasJoined.getter();
  v22 = GroupActivitiesManager.participantsCount.getter();
  v23 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v16) + 0xB8))(v8, v17, v19, v21 & 1, v22, *(v20 + v23));

  return sub_1001EC5BC(v8, type metadata accessor for MetricsEvent.Click);
}

uint64_t sub_1001EC5BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001EC61C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_1001E2138(a1, v4, v5, v7, v6);
}

double sub_1001EC6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t _s14ViewControllerCMa(uint64_t a1)
{
  result = qword_101184170;
  if (!qword_101184170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001EC7D8(uint64_t a1)
{
  sub_10005BC8C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

char *sub_1001EC8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v86 = a5;
  v87 = a6;
  v68 = a4;
  v64 = a3;
  v85 = a2;
  v80 = sub_10010FC20(&unk_101182130, &unk_100EBF5B0);
  __chkstk_darwin();
  v78 = &v60 - v9;
  v77 = sub_10010FC20(&qword_101184210, &qword_100EBFAE0);
  __chkstk_darwin();
  v76 = &v60 - v10;
  v75 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  __chkstk_darwin();
  v74 = &v60 - v11;
  v12 = sub_10010FC20(&qword_101184220, &qword_100EBFAE8);
  v81 = *(v12 - 8);
  v82 = v12;
  __chkstk_darwin();
  v79 = &v60 - v13;
  v71 = sub_10010FC20(&qword_101184228, &qword_100EBFAF0);
  v70 = *(v71 - 8);
  __chkstk_darwin();
  v69 = &v60 - v14;
  _s8MetadataO4ViewVMa(0);
  __chkstk_darwin();
  v67 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v66 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v60 - v17;
  sub_10010FC20(&qword_101183AD0, &qword_100EBE4D8);
  __chkstk_darwin();
  v62 = (&v60 - v18);
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v63 = &v60 - v19;
  sub_10010FC20(&qword_101184230, &unk_100EDE0D0);
  __chkstk_darwin();
  v84 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v60 - v21;
  v23 = (v6 + qword_101184130);
  *v23 = 0;
  v23[1] = 0;
  v24 = qword_101184140;
  _s8MetadataO5ModelCMa(0);
  swift_allocObject();
  *(v6 + v24) = sub_1004F627C();
  *(v6 + qword_101184148) = 0;
  v25 = qword_101184150;
  v89 = 0;
  sub_10010FC20(&qword_101184238, &qword_100EBFAF8);
  State.init(wrappedValue:)();
  *(v7 + v25) = v88;
  v61 = qword_101184158;
  *(v7 + qword_101184158) = 1;
  *(v7 + qword_101184160) = 0;
  *(v7 + qword_101184168) = 0;
  v26 = qword_101184138;
  v27 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v72 = *(v27 - 8);
  v28 = *(v72 + 16);
  v28(v7 + v26, a1, v27);
  v29 = *v23;
  v30 = v23[1];
  v31 = v86;
  v32 = v87;
  *v23 = v86;
  v23[1] = v32;
  sub_100030444(v31, v32);
  sub_100020438(v29, v30);
  v83 = a1;
  v73 = v27;
  v28(v22, a1, v27);
  v33 = type metadata accessor for PlaylistCovers.Source(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v33 - 8) + 56))(v22, 0, 1, v33);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v22, v84, &qword_101184230, &unk_100EDE0D0);

  static Published.subscript.setter();
  sub_1000095E8(v22, &qword_101184230, &unk_100EDE0D0);
  v34 = sub_10010E580(&off_1010992B0);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v88 = v34;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v88) = 1;

  static Published.subscript.setter();
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v36 = result;
    v37 = [result isCloudLibraryEnabled];

    v38 = v85;
    if (v37)
    {
      if (qword_10117F278 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v39 = v62;
      static Published.subscript.getter(v62);

      v40 = type metadata accessor for UserProfile();
      v41 = *(v40 - 8);
      v42 = (*(v41 + 48))(v39, 1, v40);
      v43 = v63;
      if (v42 == 1)
      {
        sub_1000095E8(v39, &qword_101183AD0, &qword_100EBE4D8);
        v44 = type metadata accessor for SocialProfile();
        (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
        v45 = 0;
      }

      else
      {
        UserProfile.socialProfile.getter();
        (*(v41 + 8))(v39, v40);
        v46 = type metadata accessor for SocialProfile();
        v45 = (*(*(v46 - 8) + 48))(v43, 1, v46) != 1;
      }

      sub_1000095E8(v43, &qword_101186E00, &qword_100EC31E0);
      *(v7 + v61) = v45;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v88) = v45;

      static Published.subscript.setter();
    }

    v47 = v68;
    if (v68)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *&v88 = v64;
      *(&v88 + 1) = v47;

      static Published.subscript.setter();
    }

    v48 = v38;
    v49 = v65;
    sub_1000089F8(v48, v65, &unk_10118F670, &unk_100EC89B0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v49, v66, &unk_10118F670, &unk_100EC89B0);

    static Published.subscript.setter();
    sub_1000095E8(v49, &unk_10118F670, &unk_100EC89B0);

    sub_1004F43FC(v67);
    v50 = UIHostingController.init(rootView:)();
    v51 = qword_10117F278;
    v52 = v50;
    if (v51 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_10010FC20(&qword_101184240, &unk_100EBE598);
    v53 = v69;
    Published.projectedValue.getter();
    swift_endAccess();
    *(swift_allocObject() + 16) = v52;
    sub_100020674(&qword_101184248, &qword_101184228, &qword_100EBFAF0, &protocol conformance descriptor for Published<A>.Publisher);
    v54 = v52;
    v55 = v71;
    v56 = Publisher<>.sink(receiveValue:)();

    (*(v70 + 8))(v53, v55);
    v88 = *&v54[qword_101184150];
    v89 = v56;
    sub_10010FC20(&qword_101184250, &qword_100EBFC20);
    State.wrappedValue.setter();
    [v54 setModalInPresentation:1];
    swift_beginAccess();

    sub_10010FC20(&qword_101184258, &qword_100EC3610);
    Published.projectedValue.getter();
    swift_endAccess();

    swift_beginAccess();

    sub_10010FC20(&unk_101184260, &qword_100EDCE20);
    Published.projectedValue.getter();
    swift_endAccess();

    swift_beginAccess();

    sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
    Published.projectedValue.getter();
    swift_endAccess();

    sub_100020674(&qword_101184270, &qword_101184218, &qword_100EDE320, &protocol conformance descriptor for Published<A>.Publisher);
    sub_100020674(&qword_101184278, &qword_101184210, &qword_100EBFAE0, &protocol conformance descriptor for Published<A>.Publisher);
    sub_100020674(&qword_101184280, &unk_101182130, &unk_100EBF5B0, &protocol conformance descriptor for Published<A>.Publisher);
    v57 = v79;
    Publishers.CombineLatest3.init(_:_:_:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100020674(&qword_101184288, &qword_101184220, &qword_100EBFAE8, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
    v58 = v82;
    v59 = Publisher<>.sink(receiveValue:)();

    sub_100020438(v86, v87);
    sub_1000095E8(v85, &unk_10118F670, &unk_100EC89B0);
    (*(v72 + 8))(v83, v73);
    (*(v81 + 8))(v57, v58);
    *&v54[qword_101184148] = v59;

    return v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001ED788(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1001EFD48();
    v9 = String.trim()();

    v10 = (v9._object >> 56) & 0xF;
    if ((v9._object & 0x2000000000000000) == 0)
    {
      v10 = v9._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter(&v12);

      LOBYTE(v10) = v12 ^ 1;
    }

    [(objc_class *)v8 setEnabled:v10 & 1];

    v11 = v7;
    [v11 setModalInPresentation:{sub_1001EE6CC(v2, v3, v4, v5) & 1}];
  }
}

void sub_1001ED914()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v8.receiver = v0;
  v8.super_class = _s14ViewControllerCMa(0);
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = [v0 navigationItem];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();

  [v1 setTitle:v2];

  v3 = [v0 navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  v4 = [v0 navigationItem];
  v5 = sub_1001EFBD0();
  [v4 setLeftBarButtonItem:v5];

  v6 = [v0 navigationItem];
  v7 = sub_1001EFD48();
  [v6 setRightBarButtonItem:v7];
}

void sub_1001EDB2C(void *a1)
{
  v1 = a1;
  sub_1001ED914();
}

void sub_1001EDB74()
{
  v14.receiver = v0;
  v14.super_class = _s14ViewControllerCMa(0);
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 effectiveGeometry];

      v6 = [v5 coordinateSpace];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = 0;
      v12 = v8;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 1;
    }

    sub_1001EFA54(v12, v13, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1001EDCAC(void *a1)
{
  v1 = a1;
  sub_1001EDB74();
}

void sub_1001EDCF4(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_1001EFA54(*&a2, *&a3, 0);
  v12.receiver = v11;
  v12.super_class = _s14ViewControllerCMa(0);
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_1001EDD94(char a1)
{
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v17 - v5;
  v7 = _s14ViewControllerCMa(0);
  v17.receiver = v1;
  v17.super_class = v7;
  objc_msgSendSuper2(&v17, "viewIsAppearing:", a1 & 1);
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 window];

  if (v10)
  {

    v11 = [v10 traitCollection];
    [v11 horizontalSizeClass];

    UserInterfaceSizeClass.init(_:)();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v6, v4, &unk_101184290, &qword_100EC0E60);
    static Published.subscript.setter();

    sub_1000095E8(v6, &unk_101184290, &qword_100EC0E60);
  }

  v12 = [v1 view];
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12;
  v14 = [v12 window];

  if (v14)
  {
    sub_10010FC20(&unk_101182D80, "ʫ\n");
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100EBC6B0;
    *(v15 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v15 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    *(swift_allocObject() + 16) = v1;
    sub_100009F78(0, &unk_1011842A0, UIWindow_ptr);
    v16 = v1;
    UIView.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();
  }
}

void sub_1001EE06C(uint64_t a1, uint64_t a2, char *a3)
{
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v13 - v7;
  v9 = [a3 view];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 window];

    if (v11)
    {

      v12 = [v11 traitCollection];
      [v12 horizontalSizeClass];

      UserInterfaceSizeClass.init(_:)();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000089F8(v8, v5, &unk_101184290, &qword_100EC0E60);
      static Published.subscript.setter();

      sub_1000095E8(v8, &unk_101184290, &qword_100EC0E60);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001EE218(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1001EDD94(a3);
}

uint64_t sub_1001EE26C(char a1)
{
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s14ViewControllerCMa(0);
  v17.receiver = v1;
  v17.super_class = v5;
  objc_msgSendSuper2(&v17, "viewDidAppear:", a1 & 1);
  v6 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v7 = MetricsEvent.Page.playlistCreation.unsafeMutableAddressor();
  sub_1001F3D44(v7, v4, type metadata accessor for MetricsEvent.Page);
  v8 = sub_10053771C();
  v10 = v9;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v11 = qword_101218AD0;
  v12 = GroupActivitiesManager.hasJoined.getter();
  v13 = GroupActivitiesManager.participantsCount.getter();
  v14 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v6) + 0xA0))(v4, v8, v10, v12 & 1, v13, *(v11 + v14));

  return sub_1001F4810(v4, type metadata accessor for MetricsEvent.Page);
}

void sub_1001EE42C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1001EE26C(a3);
}

double sub_1001EE480()
{
  if (sub_1001F3DB4())
  {
    static ApplicationCapabilities.shared.getter(v9);
    v1 = v10;

    sub_100014984(v9);
    v2 = sub_10048BBDC(3, v1);
  }

  else
  {
    v2 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(v8);

  v3 = sub_100031064(3u, v8[0]);

  if ((v2 & 1) != v3)
  {
    if (v2)
    {
      *(v0 + qword_101184158) = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v8[0]) = 1;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();

      v5 = static Published.subscript.modify();
      sub_1003B37A0(&v7, 3);
      v5(v8, 0);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v6 = static Published.subscript.modify();
      sub_100195800(3u);
      v6(v8, 0);
    }
  }

  return result;
}

uint64_t sub_1001EE6CC(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v20 - v11;
  if (!a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v21);
  }

  v13 = String.trim()();

  if ((v13._object & 0x2000000000000000) != 0)
  {
    v14 = (v13._object >> 56) & 0xF;
  }

  else
  {
    v14 = v13._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!a3)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v21);

    if (!v21)
    {
      v15 = 0;
      goto LABEL_10;
    }
  }

  v15 = 1;
LABEL_10:
  (*(v10 + 16))(v12, v5 + qword_101184138, v9);
  sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v16 = dispatch thunk of Collection.distance(from:to:)();
  (*(v10 + 8))(v12, v9);
  v17 = 1;
  if (!v14 && (v15 & 1) == 0 && v16 <= 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v21);

    v18 = sub_100031064(3u, v21);

    if (v18)
    {
      if (a4 == 2)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter(&v21);

        a4 = v21;
      }

      v17 = a4 ^ *(v5 + qword_101184158);
    }

    else
    {
      v17 = 0;
    }
  }

  return v17 & 1;
}

void sub_1001EEA80()
{
  type metadata accessor for PlaylistCreation.FlowResult(0);
  __chkstk_darwin();
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1001EE6CC(0, 0, 0, 2) & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(&v7), , , , (v7 & 1) == 0))
  {
    v5 = sub_1001EEC0C();
    [v0 presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v3 = *&v0[qword_101184130];
    if (v3)
    {
      v4 = *&v0[qword_101184130 + 8];
      swift_storeEnumTagMultiPayload();

      v3(v2);
      sub_100020438(v3, v4);
      sub_1001F4810(v2, type metadata accessor for PlaylistCreation.FlowResult);
    }
  }
}

id sub_1001EEC0C()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:0];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001F4978;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  aBlock[3] = &unk_1010A0C78;
  v6 = _Block_copy(aBlock);

  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v5 style:2 handler:v6];
  _Block_release(v6);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v7 actionWithTitle:v9 style:1 handler:0];

  [v3 addAction:v8];
  [v3 addAction:v10];
  v11 = [v0 navigationItem];
  v12 = [v11 leadingItemGroups];

  sub_100009F78(0, &unk_1011842F0, UIBarButtonItemGroup_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_16;
    }
  }

  else if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = sub_1007E953C(0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v14 = *(v13 + 32);
  }

  v15 = v14;

  v16 = [v15 barButtonItems];

  sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v18 = sub_1007E90E8(0, v13);
    goto LABEL_11;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v13 + 32);
LABEL_11:
    v19 = v18;
LABEL_17:

    v20 = [v3 popoverPresentationController];
    [v20 setBarButtonItem:v19];

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1001EF1BC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlaylistCreation.FlowResult(0);
  __chkstk_darwin();
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + qword_101184130);
    v6 = *(Strong + qword_101184130 + 8);
    v7 = Strong;
    sub_100030444(v5, v6);

    if (v5)
    {
      swift_storeEnumTagMultiPayload();
      v5(v3);
      sub_100020438(v5, v6);
      sub_1001F4810(v3, type metadata accessor for PlaylistCreation.FlowResult);
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_1001EF30C()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v0 = String._bridgeToObjectiveC()();

  v1 = String._bridgeToObjectiveC()();

  v2 = [objc_opt_self() alertControllerWithTitle:v0 message:v1 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = objc_opt_self();
  v5 = [v4 actionWithTitle:v3 style:1 handler:0];

  [v2 addAction:v5];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001F4878;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  aBlock[3] = &unk_1010A0C28;
  v8 = _Block_copy(aBlock);

  v9 = [v4 actionWithTitle:v7 style:0 handler:v8];
  _Block_release(v8);

  [v2 addAction:v9];
  [v2 setPreferredAction:v9];

  return v2;
}

uint64_t sub_1001EF704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_1001EF79C, v6, v5);
}

uint64_t sub_1001EF79C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1001EF8A0;

    return sub_1001F0914();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1001EF8A0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_1001EF9E0, v4, v3);
}

uint64_t sub_1001EF9E0()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_1001EFA54(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [v3 view];
  if (v7)
  {
    v8 = v7;
    [v7 safeAreaInsets];

    UIEdgeInsets.vertical.getter();
    [v3 additionalSafeAreaInsets];
    UIEdgeInsets.vertical.getter();
    v9 = static HI.Modal.modalSize(modalType:sceneSize:canExceedSceneSize:verticalInsets:)(0, a1, a2, a3 & 1, 0);
    v11 = v10;
    [v3 preferredContentSize];
    if (v9 != v13 || v11 != v12)
    {
      [v3 setPreferredContentSize:{v9, v11}];
      v15 = [v3 navigationController];
      if (v15)
      {
        v16 = v15;
        [v15 setPreferredContentSize:{v9, v11}];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

objc_class *sub_1001EFBD0()
{
  v1 = qword_101184160;
  v2 = *(v0 + qword_101184160);
  if (v2)
  {
    v3 = *(v0 + qword_101184160);
  }

  else
  {
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    v9.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v9.is_nil = 0;
    v5.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v9, v10).super.super.isa;
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5.super.super.isa;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1001EFCF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1001EEA80();
  }
}

objc_class *sub_1001EFD48()
{
  v1 = v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v2 = qword_101184168;
  v3 = *&v0[qword_101184168];
  if (v3)
  {
    v4 = *&v0[qword_101184168];
  }

  else
  {
    sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v6 = [v1 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    if (v7 == 6)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v9 = String.init(localized:table:bundle:locale:comment:)();
      v11 = v10;
      v12 = v5;
      v13.value._countAndFlagsBits = v9;
      v13.value._object = v11;
      v19.value.super.isa = 0;
      v19.is_nil = v5;
      v20.value.super.super.isa = 0;
      v14.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v13, v19, v20, v21).super.super.isa;
      [(objc_class *)v14.super.super.isa setStyle:2];
    }

    else
    {
      v18.value.super.super.isa = v5;
      v18.is_nil = 0;
      v14.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v18, v8).super.super.isa;
    }

    v15 = *&v1[v2];
    *&v1[v2] = v14;
    v4 = v14.super.super.isa;

    v3 = 0;
  }

  v16 = v3;
  return v4;
}

double sub_1001EFFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, void *))
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a2;
  a5(0, 0, v9, a4, v12);

  return result;
}

uint64_t sub_1001F00F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  v4[9] = swift_task_alloc();
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  v4[10] = swift_task_alloc();
  type metadata accessor for MetricsEvent.Click(0);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v6;
  v4[14] = v5;

  return _swift_task_switch(sub_1001F0224, v6, v5);
}

uint64_t sub_1001F0224()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_1001F054C;

    return sub_1001F0914();
  }

  else
  {

    v4 = v0[10];
    v5 = v0[11];
    v6 = v0[9];
    v7 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = v7;
    v10 = MetricsEvent.Page.playlistCreation.unsafeMutableAddressor();
    sub_1001F3D44(v10, v6, type metadata accessor for MetricsEvent.Page);
    v11 = type metadata accessor for MetricsEvent.Page(0);
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(1701736292, 0xE400000000000000, 5, 11, v4, 0, 0, 12, v5, 0, 0, 0xFF00u, v6, 0);
    v12 = sub_10053771C();
    v14 = v13;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v15 = v0[11];
    v16 = qword_101218AD0;
    v17 = GroupActivitiesManager.hasJoined.getter();
    v18 = GroupActivitiesManager.participantsCount.getter();
    v19 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v9) + 0xB8))(v15, v12, v14, v17 & 1, v18, *(v16 + v19));

    sub_1001F4810(v15, type metadata accessor for MetricsEvent.Click);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1001F054C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return _swift_task_switch(sub_1001F068C, v4, v3);
}

uint64_t sub_1001F068C()
{

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = v4;
  v7 = MetricsEvent.Page.playlistCreation.unsafeMutableAddressor();
  sub_1001F3D44(v7, v3, type metadata accessor for MetricsEvent.Page);
  v8 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(1701736292, 0xE400000000000000, 5, 11, v1, 0, 0, 12, v2, 0, 0, 0xFF00u, v3, 0);
  v9 = sub_10053771C();
  v11 = v10;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v12 = v0[11];
  v13 = qword_101218AD0;
  v14 = GroupActivitiesManager.hasJoined.getter();
  v15 = GroupActivitiesManager.participantsCount.getter();
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v6) + 0xB8))(v12, v9, v11, v14 & 1, v15, *(v13 + v16));

  sub_1001F4810(v12, type metadata accessor for MetricsEvent.Click);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001F0914()
{
  v1[144] = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v1[145] = swift_task_alloc();
  v2 = *(sub_10010FC20(&unk_10118F670, &unk_100EC89B0) - 8);
  v1[146] = v2;
  v1[147] = *(v2 + 64);
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v3 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v1[150] = v3;
  v4 = *(v3 - 8);
  v1[151] = v4;
  v1[152] = *(v4 + 64);
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[155] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[156] = v6;
  v1[157] = v5;

  return _swift_task_switch(sub_1001F0ADC, v6, v5);
}

uint64_t sub_1001F0ADC()
{
  v1 = *(v0 + 1152);
  v2 = qword_101184140;
  *(v0 + 1264) = qword_101184140;
  *(v0 + 1272) = *&v1[v2];
  *(v0 + 1048) = 0;
  *(v0 + 1016) = 0u;
  *(v0 + 1032) = 0u;
  *(v0 + 1056) = xmmword_100EBCEF0;

  PresentationSource.init(viewController:position:)(v1, v0 + 1016, v0 + 920);
  v3 = swift_task_alloc();
  *(v0 + 1280) = v3;
  *v3 = v0;
  v3[1] = sub_1001F0BCC;

  return sub_1004F475C(v0 + 920, 1);
}

uint64_t sub_1001F0BCC(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 1290) = a1;

  sub_10012BA6C(v3 + 920);
  v4 = *(v2 + 1256);
  v5 = *(v2 + 1248);

  return _swift_task_switch(sub_1001F0D20, v5, v4);
}

uint64_t sub_1001F0D20()
{
  v1 = *(v0 + 1290);

  if (v1 == 1)
  {
    v81 = *(v0 + 1232);
    v2 = *(v0 + 1208);
    v3 = *(v0 + 1200);
    v75 = *(v0 + 1192);
    v4 = *(v0 + 1152);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1288) = 1;

    static Published.subscript.setter();
    v5 = sub_1001EFD48();
    [(objc_class *)v5 setEnabled:0];

    v6 = sub_1001EFBD0();
    [(objc_class *)v6 setEnabled:0];

    v79 = *(v2 + 16);
    v79(v81, v4 + qword_101184138, v3);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter((v0 + 1128));

    v80 = *(v0 + 1136);
    v82 = *(v0 + 1128);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter((v0 + 1289));

    v78 = *(v0 + 1289);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(v75);

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter((v0 + 424));

    v7 = *(v0 + 520);
    v8 = *(v0 + 536);
    *(v0 + 384) = v7;
    *(v0 + 400) = v8;
    v9 = *(v0 + 552);
    *(v0 + 416) = v9;
    v10 = *(v0 + 456);
    v11 = *(v0 + 472);
    *(v0 + 320) = v10;
    *(v0 + 336) = v11;
    v13 = *(v0 + 488);
    v12 = *(v0 + 504);
    *(v0 + 352) = v13;
    *(v0 + 368) = v12;
    v15 = *(v0 + 424);
    v14 = *(v0 + 440);
    *(v0 + 288) = v15;
    *(v0 + 304) = v14;
    *(v0 + 248) = v7;
    *(v0 + 264) = v8;
    *(v0 + 280) = v9;
    *(v0 + 184) = v10;
    *(v0 + 200) = v11;
    *(v0 + 216) = v13;
    *(v0 + 232) = v12;
    *(v0 + 152) = v15;
    *(v0 + 168) = v14;
    if (sub_1000D8FCC((v0 + 152)) == 1 || (v16 = *(v0 + 264), *(v0 + 112) = *(v0 + 248), *(v0 + 128) = v16, *(v0 + 144) = *(v0 + 280), v17 = *(v0 + 200), *(v0 + 48) = *(v0 + 184), *(v0 + 64) = v17, v18 = *(v0 + 232), *(v0 + 80) = *(v0 + 216), *(v0 + 96) = v18, v19 = *(v0 + 168), *(v0 + 16) = *(v0 + 152), *(v0 + 32) = v19, PlaylistCovers.CarouselItem.cover.getter((v0 + 688)), v20 = *(v0 + 768), *(v0 + 624) = *(v0 + 752), *(v0 + 640) = v20, v21 = *(v0 + 800), *(v0 + 656) = *(v0 + 784), *(v0 + 672) = v21, v22 = *(v0 + 704), *(v0 + 560) = *(v0 + 688), *(v0 + 576) = v22, v23 = *(v0 + 736), *(v0 + 592) = *(v0 + 720), *(v0 + 608) = v23, sub_1000D8FA0((v0 + 560)) == 1) || (v24 = *(v0 + 584), v25 = *(v0 + 592), v26 = *(v0 + 600), v27 = *(v0 + 608), v28 = *(v0 + 616), v29 = *(v0 + 624), v30 = *(v0 + 632), sub_1001F43A0(v24, v25, v26, v27, v28, v29, v30), sub_1000095E8(v0 + 688, &unk_1011842B8, &qword_100EBFE38), !v25))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter((v0 + 1144));

      v74 = *(v0 + 1144);
      v45 = v74;
      v77 = 0;
    }

    else
    {
      *(v0 + 1072) = v24;
      *(v0 + 1080) = v25;
      *(v0 + 1088) = v26;
      *(v0 + 1096) = v27;
      *(v0 + 1104) = v28;
      *(v0 + 1112) = v29;
      *(v0 + 1120) = v30;
      v31 = v25;
      v32 = v26;
      v33 = v27;
      v34 = v28;
      v35 = v29;
      v36 = v30;
      PlaylistCovers.Recipe.init(from:)((v0 + 1072), (v0 + 816));
      v37 = PlaylistCovers.Recipe.rawJSONRepresentation()();
      if (!v38)
      {
        object = v37._object;
        log = v37._countAndFlagsBits;
        sub_1001F4410(v0 + 816);
        v64 = objc_allocWithZone(type metadata accessor for PlaylistCovers.ArtworkToken());

        v77 = PlaylistCovers.ArtworkToken.init(coverRepresentation:playlistTitle:)(v0 + 1072, v82, v80);
        v65 = v77;
        v74 = 0;
        goto LABEL_12;
      }

      v76 = v24;
      sub_1001F4410(v0 + 816);
      if (qword_10117F6E8 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000060E4(v39, qword_101218C50);
      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v73 = v30;
        v42 = swift_slowAlloc();
        loga = v40;
        v43 = swift_slowAlloc();
        *v42 = 138543362;
        swift_errorRetain();
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v44;
        *v43 = v44;
        _os_log_impl(&_mh_execute_header, loga, v41, "Failed to encode recipe with error=%{public}@", v42, 0xCu);
        sub_1000095E8(v43, &unk_101183D70, &unk_100EC6540);

        sub_1001F4464(v76, v25, v26, v27, v28, v29, v73);
      }

      else
      {
        sub_1001F4464(v76, v25, v26, v27, v28, v29, v30);
      }

      v74 = 0;
      v77 = 0;
    }

    object = 0;
    log = 0;
LABEL_12:
    v46 = *(v0 + 1232);
    v47 = *(v0 + 1224);
    v67 = v47;
    v68 = *(v0 + 1216);
    v48 = *(v0 + 1208);
    v49 = *(v0 + 1200);
    v66 = v49;
    v50 = *(v0 + 1192);
    v51 = *(v0 + 1184);
    v52 = *(v0 + 1176);
    v53 = *(v0 + 1168);
    v54 = *(v0 + 1160);
    v69 = *(v0 + 1152);
    static TaskPriority.userInitiated.getter();
    v55 = type metadata accessor for TaskPriority();
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    v79(v47, v46, v49);
    v56 = v51;
    sub_1000089F8(v50, v51, &unk_10118F670, &unk_100EC89B0);
    v57 = (*(v48 + 80) + 73) & ~*(v48 + 80);
    v58 = (v68 + *(v53 + 80) + v57) & ~*(v53 + 80);
    v59 = (v52 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    *(v60 + 32) = v82;
    *(v60 + 40) = v80;
    *(v60 + 48) = v74;
    *(v60 + 56) = log;
    *(v60 + 64) = object;
    *(v60 + 72) = v78;
    (*(v48 + 32))(v60 + v57, v67, v66);
    sub_1001F4144(v56, v60 + v58);
    *(v60 + v59) = v69;
    *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v77;
    v61 = v69;
    sub_10035EB10(0, 0, v54, &unk_100EBFE28, v60);

    sub_1000095E8(v0 + 288, &qword_1011842B0, &qword_100EBFE30);
    sub_1000095E8(v54, &unk_101181520, &qword_100EBCC60);
    sub_1000095E8(v50, &unk_10118F670, &unk_100EC89B0);
    (*(v48 + 8))(v46, v66);
  }

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_1001F15BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v19;
  *(v8 + 112) = v20;
  *(v8 + 88) = v18;
  *(v8 + 336) = v17;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *(v8 + 120) = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011842C8, &qword_100EBFE40);
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for Playlist();
  *(v8 + 152) = v10;
  v11 = *(v10 - 8);
  *(v8 + 160) = v11;
  *(v8 + 168) = *(v11 + 64);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  v12 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  *(v8 + 200) = v12;
  v13 = *(v12 - 8);
  *(v8 + 208) = v13;
  *(v8 + 216) = *(v13 + 64);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  *(v8 + 248) = swift_task_alloc();
  sub_10010FC20(&unk_10118C170, &qword_100EBD778);
  *(v8 + 256) = swift_task_alloc();
  v14 = sub_10010FC20(&qword_1011842E0, &qword_100EBFE48);
  *(v8 + 264) = v14;
  *(v8 + 272) = *(v14 - 8);
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1001F18C0, 0, 0);
}

uint64_t sub_1001F18C0()
{
  v34 = v0;
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 88);
  v6 = [*(v0 + 64) CGImage];
  v7 = type metadata accessor for Curator();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = *(v3 + 16);
  *(v0 + 288) = v8;
  *(v0 + 296) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9 = v5;
  v10 = v8;
  v8(v2, v9, v4);
  (*(v3 + 56))(v2, 0, 1, v4);
  sub_100020674(&unk_10118C0A0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  static MusicLibraryPlaylistRequest.creatingPlaylist<A>(name:description:userImage:coverArtworkRecipe:isPublic:isVisible:curator:tracks:folder:)();

  sub_1000095E8(v2, &unk_1011842D0, &qword_100ECBF00);
  sub_1000095E8(v1, &unk_10118C170, &qword_100EBD778);
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OS_dispatch_queue.asyncAfter(_:block:)(sub_1001F44D4, v12, 0.5);

  if (qword_10117F6E8 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 240);
  v14 = *(v0 + 200);
  v15 = *(v0 + 88);
  v16 = type metadata accessor for Logger();
  *(v0 + 304) = sub_1000060E4(v16, qword_101218C50);
  v10(v13, v15, v14);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 240);
  v21 = *(v0 + 200);
  v22 = *(v0 + 208);
  if (v19)
  {
    v23 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v23 = 136446210;
    sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    *(v0 + 40) = dispatch thunk of Collection.distance(from:to:)();
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v27 = *(v22 + 8);
    v27(v20, v21);
    v28 = sub_1000105AC(v24, v26, &v33);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "Sending playlist creation request with %{public}s song(s)", v23, 0xCu);
    sub_10000959C(v32);
  }

  else
  {

    v27 = *(v22 + 8);
    v27(v20, v21);
  }

  *(v0 + 312) = v27;
  v29 = swift_task_alloc();
  *(v0 + 320) = v29;
  *v29 = v0;
  v29[1] = sub_1001F1D6C;
  v30 = *(v0 + 144);

  return MusicLibraryPlaylistRequest.response<>()(v30);
}

uint64_t sub_1001F1D6C()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1001F22CC;
  }

  else
  {
    v2 = sub_1001F1E80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F1E80()
{
  v53 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  MusicLibraryPlaylistResponse.item.getter();
  (*(v6 + 8))(v5, v7);
  v50 = *(v4 + 16);
  v50(v2, v1, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[23];
  v12 = v0[19];
  v13 = v0[20];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v52 = v15;
    *v14 = 136446210;
    v16 = Playlist.description.getter();
    v18 = v17;
    v51 = *(v13 + 8);
    v51(v11, v12);
    v19 = sub_1000105AC(v16, v18, &v52);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received playlist response, playlist=%{public}s", v14, 0xCu);
    sub_10000959C(v15);
  }

  else
  {

    v51 = *(v13 + 8);
    v51(v11, v12);
  }

  v42 = v0[36];
  v20 = v0[29];
  v21 = v0[26];
  v46 = v20;
  v22 = v0[24];
  v23 = v0[25];
  v24 = v0[22];
  v44 = v24;
  v45 = v0[21];
  v26 = v0[19];
  v25 = v0[20];
  v43 = v26;
  v27 = v0[15];
  v48 = v27;
  v49 = v22;
  v47 = v0[14];
  v41 = v0[13];
  v28 = v0[11];
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  v50(v24, v22, v26);
  v30 = v20;
  v31 = v23;
  v42(v30, v28, v23);
  type metadata accessor for MainActor();
  v32 = v41;
  v33 = static MainActor.shared.getter();
  v34 = (*(v25 + 80) + 40) & ~*(v25 + 80);
  v35 = (v45 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (*(v21 + 80) + v35 + 8) & ~*(v21 + 80);
  v37 = swift_allocObject();
  *(v37 + 2) = v33;
  *(v37 + 3) = &protocol witness table for MainActor;
  *(v37 + 4) = v32;
  (*(v25 + 32))(&v37[v34], v44, v43);
  *&v37[v35] = v47;
  (*(v21 + 32))(&v37[v36], v46, v31);
  v38 = v47;
  sub_1001F4CB8(0, 0, v48, &unk_100EBFE68, v37);

  v51(v49, v43);
  (*(v0[34] + 8))(v0[35], v0[33]);

  v39 = v0[1];

  return v39();
}

uint64_t sub_1001F22CC()
{
  v27 = v0;
  (*(v0 + 288))(*(v0 + 224), *(v0 + 88), *(v0 + 200));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 328);
    v4 = *(v0 + 224);
    v5 = *(v0 + 200);
    v25 = *(v0 + 312);
    v6 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v6 = 136446466;
    sub_100020674(&qword_1011842E8, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    v25(v4, v5);
    v10 = sub_1000105AC(v7, v9, &v26);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v0 + 16) = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000105AC(v11, v12, &v26);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Didn't receive a playlist response with tracks=%{public}s. Error=%{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = *(v0 + 312);
    v15 = *(v0 + 224);
    v16 = *(v0 + 200);

    v14(v15, v16);
  }

  v17 = *(v0 + 120);
  v18 = *(v0 + 104);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  type metadata accessor for MainActor();
  v20 = v18;
  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v20;
  sub_1001F4CB8(0, 0, v17, &unk_100EBFE58, v22);

  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

  v23 = *(v0 + 8);

  return v23();
}

void sub_1001F2684(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
    [v3 startAnimating];
    v4 = [v2 navigationItem];
    v5 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v3];
    [v4 setRightBarButtonItem:v5];
  }
}

uint64_t sub_1001F2764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[8] = type metadata accessor for PlaylistCreation.FlowResult(0);
  v7[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[10] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001F2830, v9, v8);
}

uint64_t sub_1001F2830()
{
  v1 = v0[4];

  v2 = *(v1 + qword_101184130);
  if (v2)
  {
    v3 = v0[9];
    v4 = v0[6];
    v5 = v0[5];
    v6 = *(v1 + qword_101184130 + 8);
    v7 = sub_10010FC20(&unk_10118A3A0, &qword_100EDF1B0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 64);
    v10 = type metadata accessor for Playlist();
    (*(*(v10 - 8) + 16))(v3, v5, v10);
    *(v3 + v8) = v4;
    sub_100030444(v2, v6);
    v11 = v4;
    sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
    sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    *(v3 + v9) = dispatch thunk of Collection.distance(from:to:)();
    swift_storeEnumTagMultiPayload();
    v2(v3);
    sub_100020438(v2, v6);
    sub_1001F4810(v3, type metadata accessor for PlaylistCreation.FlowResult);
  }

  if (qword_10117F6E8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000060E4(v12, qword_101218C50);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Dismissing playlist creation sheet", v15, 2u);
  }

  v16 = v0[4];

  [v16 dismissViewControllerAnimated:1 completion:0];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001F2AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  type metadata accessor for MainActor();
  *(v4 + 40) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001F2B84, v6, v5);
}

uint64_t sub_1001F2B84()
{
  v1 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = 0;

  static Published.subscript.setter();
  v2 = sub_1001EFBD0();
  [(objc_class *)v2 setEnabled:1];

  v3 = [v1 navigationItem];
  v4 = sub_1001EFD48();
  [v3 setRightBarButtonItem:v4];

  v5 = *&v1[qword_101184168];
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;

  static Published.subscript.getter(v0 + 2);

  v7 = String.trim()();

  v8 = (v7._object >> 56) & 0xF;
  if ((v7._object & 0x2000000000000000) == 0)
  {
    v8 = v7._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  [v6 setEnabled:v8 != 0];

  v9 = sub_1001EF30C();
  [v1 presentViewController:v9 animated:1 completion:0];

  v10 = v0[1];

  return v10();
}

void sub_1001F2D88(void *a1)
{
  v1 = a1;
  sub_1001EEA80();
}

void sub_1001F2DD0(char *a1)
{
  type metadata accessor for PlaylistCreation.FlowResult(0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *&a1[qword_101184130];
  if (v4)
  {
    v5 = *&a1[qword_101184130 + 8];
    swift_storeEnumTagMultiPayload();
    v6 = a1;
    sub_100030444(v4, v5);
    v4(v3);
    sub_100020438(v4, v5);

    sub_1001F4810(v3, type metadata accessor for PlaylistCreation.FlowResult);
  }
}

void sub_1001F2F24()
{
  sub_100020438(*(v0 + qword_101184130), *(v0 + qword_101184130 + 8));
  v1 = qword_101184138;
  v2 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_101184168);
}

id sub_1001F3008()
{
  v2.receiver = v0;
  v2.super_class = _s14ViewControllerCMa(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001F3040(uint64_t a1)
{
  sub_100020438(*(a1 + qword_101184130), *(a1 + qword_101184130 + 8));
  v2 = qword_101184138;
  v3 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_101184168);
}

void sub_1001F313C(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v24 - v6;
  __chkstk_darwin();
  v9 = &v24 - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v11 = Strong, v12 = sub_10003169C(), v11, v12))
  {
    sub_1000089F8(a2, v9, &unk_10118F670, &unk_100EC89B0);
    v13 = type metadata accessor for PlaylistCreation.Context(0);
    v14 = v13[6];
    v15 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
    (*(*(v15 - 8) + 56))(&v9[v14], 1, 1, v15);
    v16 = &v9[v13[5]];
    *v16 = 0;
    *(v16 + 1) = 0;
    v17 = &v9[v13[7]];
    *v17 = sub_1001F3CB8;
    v17[1] = v12;
    swift_storeEnumTagMultiPayload();
    sub_1001F3D44(v9, v7, type metadata accessor for AppInterfaceContext.Activity);
    sub_1001F3D44(v7, v5, type metadata accessor for AppInterfaceContext.Activity);
    v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_100115BB4(v5, v19 + v18);

    sub_100706900(v7, sub_100137E88, v19);

    sub_1001F4810(v7, type metadata accessor for AppInterfaceContext.Activity);
    sub_1001F4810(v9, type metadata accessor for AppInterfaceContext.Activity);
  }

  else
  {
    if (qword_10117F6E8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000060E4(v20, qword_101218C50);
    v25 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v25, v21, "Failed to create playlist: missing interface context", v22, 2u);
    }

    v23 = v25;
  }
}

uint64_t sub_1001F34C4(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  sub_10010FC20(&unk_1011841F0, &qword_100ECF040);
  __chkstk_darwin();
  v4 = (&v42 - v3);
  v5 = type metadata accessor for AppInterfaceContext.Activity(0);
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin();
  v42 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v42 - v7;
  __chkstk_darwin();
  v43 = &v42 - v9;
  v10 = type metadata accessor for Playlist();
  v47 = *(v10 - 8);
  v48 = v10;
  __chkstk_darwin();
  v44 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v42 - v12;
  type metadata accessor for PlaylistCreation.FlowResult(0);
  __chkstk_darwin();
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v42 - v16;
  sub_1001F3D44(a1, &v42 - v16, type metadata accessor for PlaylistCreation.FlowResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1001F4810(v17, type metadata accessor for PlaylistCreation.FlowResult);
  if (EnumCaseMultiPayload != 2)
  {
    sub_1001F3D44(a1, v15, type metadata accessor for PlaylistCreation.FlowResult);
    if (swift_getEnumCaseMultiPayload())
    {
      return sub_1001F4810(v15, type metadata accessor for PlaylistCreation.FlowResult);
    }

    else
    {

      v20 = v47;
      v21 = v48;
      v22 = v13;
      (*(v47 + 32))(v13, v15, v48);
      sub_1007041B4(v13, 0, 0, v4);
      v23 = v46;
      if ((*(v46 + 48))(v4, 1, v5) == 1)
      {
        sub_1000095E8(v4, &unk_1011841F0, &qword_100ECF040);
        if (qword_10117F6E8 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_1000060E4(v24, qword_101218C50);
        v25 = v44;
        (*(v20 + 16))(v44, v22, v21);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = v20;
          v30 = swift_slowAlloc();
          v49 = v30;
          *v28 = 136446210;
          sub_1001F3CC0();
          v31 = dispatch thunk of CustomStringConvertible.description.getter();
          v32 = v22;
          v34 = v33;
          v35 = *(v29 + 8);
          v35(v25, v21);
          v36 = sub_1000105AC(v31, v34, &v49);

          *(v28 + 4) = v36;
          _os_log_impl(&_mh_execute_header, v26, v27, "Failed to generate navigation activity to playlist=%{public}s", v28, 0xCu);
          sub_10000959C(v30);

          return (v35)(v32, v21);
        }

        else
        {

          v41 = *(v20 + 8);
          v41(v25, v21);
          return (v41)(v22, v21);
        }
      }

      else
      {
        v37 = v43;
        sub_100115BB4(v4, v43);
        sub_1001F3D44(v37, v8, type metadata accessor for AppInterfaceContext.Activity);
        v38 = v42;
        sub_1001F3D44(v8, v42, type metadata accessor for AppInterfaceContext.Activity);
        v39 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v40 = swift_allocObject();
        *(v40 + 16) = 0;
        *(v40 + 24) = 0;
        sub_100115BB4(v38, v40 + v39);
        sub_100706900(v8, sub_100139B24, v40);

        sub_1001F4810(v8, type metadata accessor for AppInterfaceContext.Activity);
        sub_1001F4810(v37, type metadata accessor for AppInterfaceContext.Activity);
        return (*(v20 + 8))(v22, v21);
      }
    }
  }

  return result;
}

double sub_1001F3B0C@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t sub_1001F3B88(uint64_t a1, uint64_t *a2)
{
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_1000089F8(a1, &v8 - v5, &unk_10118F670, &unk_100EC89B0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v6, v4, &unk_10118F670, &unk_100EC89B0);

  static Published.subscript.setter();
  return sub_1000095E8(v6, &unk_10118F670, &unk_100EC89B0);
}

unint64_t sub_1001F3CC0()
{
  result = qword_101184200;
  if (!qword_101184200)
  {
    type metadata accessor for Playlist();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184200);
  }

  return result;
}

uint64_t sub_1001F3D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F3DB4()
{
  sub_10010FC20(&qword_101183AD0, &qword_100EBE4D8);
  __chkstk_darwin();
  v1 = (&v10 - v0);
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v3 = &v10 - v2;
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
    v6 = type metadata accessor for SocialProfile();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  UserProfile.socialProfile.getter();
  (*(v5 + 8))(v1, v4);
  v7 = type metadata accessor for SocialProfile();
  v8 = 1;
  if ((*(*(v7 - 8) + 48))(v3, 1, v7) == 1)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_1000095E8(v3, &qword_101186E00, &qword_100EC31E0);
  return v8;
}

void sub_1001F4038(__n128 a1)
{
  v2 = v1;
  v3 = (v1 + qword_101184130);
  *v3 = 0;
  v3[1] = 0;
  v4 = qword_101184140;
  _s8MetadataO5ModelCMa(0);
  swift_allocObject();
  *(v1 + v4) = sub_1004F627C();
  *(v1 + qword_101184148) = 0;
  v5 = qword_101184150;
  sub_10010FC20(&qword_101184238, &qword_100EBFAF8);
  State.init(wrappedValue:)();
  *(v2 + v5) = v6;
  *(v2 + qword_101184158) = 1;
  *(v2 + qword_101184160) = 0;
  *(v2 + qword_101184168) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001F4144(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F41B4(uint64_t a1)
{
  sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  v11 = v1[2];
  v10 = v1[3];
  v3 = v1[5];
  v9 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1001F15BC(a1, v11, v10, v9, v3, v4, v5, v6);
}

void sub_1001F43A0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (a2)
  {
    v11 = a2;
    v12 = a3;
    v13 = a4;
    v14 = a5;
    v15 = a6;

    v16 = a7;
  }
}

void sub_1001F4464(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (a2)
  {
  }
}

uint64_t sub_1001F44DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1001F2AEC(a1, v4, v5, v6);
}

uint64_t sub_1001F4590(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_1001F2764(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_1001F475C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1001F00F0(a1, v4, v5, v6);
}

uint64_t sub_1001F4810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001F48C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1001EF704(a1, v4, v5, v6);
}

uint64_t sub_1001F4988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v25 = *(a1 + 16);
  sub_100015C04(0, v1, 0);
  v2 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v4 = v25;
  v5 = a1;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v5 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v2 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_27;
    }

    v10 = *(v5 + 36);
    if (*(*(v5 + 48) + result))
    {
      v11 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v11 = 0x487972617262696CLL;
    }

    if (*(*(v5 + 48) + result))
    {
      v12 = 0xEF72656461654877;
    }

    else
    {
      v12 = 0xED00007265646165;
    }

    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v23 = *(v5 + 36);
      v24 = result;
      sub_100015C04((v13 > 1), v14 + 1, 1);
      v4 = v25;
      v5 = a1;
      v10 = v23;
      result = v24;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = v11;
    v15[5] = v12;
    v7 = 1 << *(v5 + 32);
    if (result >= v7)
    {
      goto LABEL_28;
    }

    v16 = *(v2 + 8 * v8);
    if ((v16 & v9) == 0)
    {
      goto LABEL_29;
    }

    if (v10 != *(v5 + 36))
    {
      goto LABEL_30;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v7 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v8 << 6;
      v19 = v8 + 1;
      v20 = (a1 + 64 + 8 * v8);
      while (v19 < (v7 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1000D8F7C(result, v10, 0);
          v4 = v25;
          v5 = a1;
          v7 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1000D8F7C(result, v10, 0);
      v4 = v25;
      v5 = a1;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v4)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1001F4CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10002086C(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001CBE0(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_10001CBE0(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001CBE0(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001F4F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10002086C(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001CBE0(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_10010FC20(&qword_101184430, &unk_100ED67A0);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_10001CBE0(a3);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001CBE0(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_10010FC20(&qword_101184430, &unk_100ED67A0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001F524C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10002086C(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001CBE0(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_10010FC20(&qword_101184438, &unk_100ECCD30);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_10001CBE0(a3);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001CBE0(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_10010FC20(&qword_101184438, &unk_100ECCD30);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001F5520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10002086C(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001CBE0(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_10010FC20(&unk_101184450, &qword_100EC01D0);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_10001CBE0(a3);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001CBE0(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_10010FC20(&unk_101184450, &qword_100EC01D0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001F57F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10002086C(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001CBE0(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_10010FC20(&qword_101184448, &qword_100EC01B0);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_10001CBE0(a3);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001CBE0(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_10010FC20(&qword_101184448, &qword_100EC01B0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001F5AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10002086C(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001CBE0(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_10010FC20(&qword_101184440, &qword_100EC0190);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_10001CBE0(a3);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001CBE0(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_10010FC20(&qword_101184440, &qword_100EC0190);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001F5D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10002086C(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001CBE0(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_10001CBE0(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001CBE0(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001F6054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10002086C(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001CBE0(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_10010FC20(&qword_101184460, &qword_100EDACF0);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_10001CBE0(a3);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001CBE0(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_10010FC20(&qword_101184460, &qword_100EDACF0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001F6328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10002086C(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001CBE0(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_10001CBE0(a3);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001CBE0(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t UnifiedMessages.Placement.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101099788, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t UnifiedMessages.Placement.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F4E6E657473696CLL;
  }

  else
  {
    return 0x487972617262696CLL;
  }
}

uint64_t sub_1001F66AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F4E6E657473696CLL;
  }

  else
  {
    v3 = 0x487972617262696CLL;
  }

  if (v2)
  {
    v4 = 0xED00007265646165;
  }

  else
  {
    v4 = 0xEF72656461654877;
  }

  if (*a2)
  {
    v5 = 0x6F4E6E657473696CLL;
  }

  else
  {
    v5 = 0x487972617262696CLL;
  }

  if (*a2)
  {
    v6 = 0xEF72656461654877;
  }

  else
  {
    v6 = 0xED00007265646165;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001F676C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1001F6808(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1001F6890(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1001F6928(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101099788, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1001F6988(uint64_t *a1@<X8>)
{
  v2 = 0x487972617262696CLL;
  if (*v1)
  {
    v2 = 0x6F4E6E657473696CLL;
  }

  v3 = 0xED00007265646165;
  if (*v1)
  {
    v3 = 0xEF72656461654877;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int NSFileManager.Failure.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1001F6A3C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

id sub_1001F6A7C()
{
  result = [objc_allocWithZone(type metadata accessor for UnifiedMessages.Coordinator(0)) init];
  static UnifiedMessages.Coordinator.shared = result;
  return result;
}

uint64_t *UnifiedMessages.Coordinator.shared.unsafeMutableAddressor()
{
  if (qword_10117F330 != -1)
  {
    swift_once();
  }

  return &static UnifiedMessages.Coordinator.shared;
}

id static UnifiedMessages.Coordinator.shared.getter()
{
  if (qword_10117F330 != -1)
  {
    swift_once();
  }

  v1 = static UnifiedMessages.Coordinator.shared;

  return v1;
}

uint64_t UnifiedMessages.Coordinator.isEnabled.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001F6C0C;

  return sub_1001F9864();
}

uint64_t sub_1001F6C0C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

double property wrapper backing initializer of UnifiedMessages.Coordinator.inlineBubbleTipRequests(uint64_t a1)
{
  sub_10010FC20(&unk_101184320, &qword_100EBFEF0);
  Published.init(initialValue:)();
  return result;
}

uint64_t sub_1001F6D58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_1001F6DCC(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6572676F72506E69;
      v6 = 0xEA00000000007373;
    }

    else
    {
      v5 = 0x6574656C706D6F63;
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E776F6E6B6E75;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x8000000100E3BEB0;
    }
  }

  v7 = 0x6572676F72506E69;
  v8 = 0xEA00000000007373;
  if (*(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState) != 2)
  {
    v7 = 0x6574656C706D6F63;
    v8 = 0xE900000000000064;
  }

  v9 = 0xD00000000000001ELL;
  v10 = 0x8000000100E3BEB0;
  if (*(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState))
  {
    v9 = 0x6E776F6E6B6E75;
    v10 = 0xE700000000000000;
  }

  if (*(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState) <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (*(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState) <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {

    return;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    return;
  }

  if (*(v1 + v3) > 1u || *(v1 + v3))
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      v18 = 0x6572676F72506E69;
      v19 = 0xEA00000000007373;
      if (*(v1 + v3) != 2)
      {
        v18 = 0x6574656C706D6F63;
        v19 = 0xE900000000000064;
      }

      v20 = 0xE700000000000000;
      if (*(v1 + v3))
      {
        v21 = 0x6E776F6E6B6E75;
      }

      else
      {
        v21 = 0xD00000000000001ELL;
      }

      if (!*(v1 + v3))
      {
        v20 = 0x8000000100E3BEB0;
      }

      if (*(v1 + v3) <= 1u)
      {
        v22 = v21;
      }

      else
      {
        v22 = v18;
      }

      osloga = v22;
      if (*(v1 + v3) <= 1u)
      {
        v23 = v20;
      }

      else
      {
        v23 = v19;
      }

      v24 = v1;
      if (qword_10117F338 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000060E4(v25, qword_101184300);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v28 = 136315394;
        v29 = 0x6572676F72506E69;
        v30 = 0xEA00000000007373;
        if (v2 != 2)
        {
          v29 = 0x6574656C706D6F63;
          v30 = 0xE900000000000064;
        }

        v31 = 0xE700000000000000;
        if (v2)
        {
          v32 = 0x6E776F6E6B6E75;
        }

        else
        {
          v32 = 0xD00000000000001ELL;
        }

        if (!v2)
        {
          v31 = 0x8000000100E3BEB0;
        }

        if (v2 <= 1u)
        {
          v33 = v32;
        }

        else
        {
          v33 = v29;
        }

        if (v2 <= 1u)
        {
          v34 = v31;
        }

        else
        {
          v34 = v30;
        }

        v35 = sub_1000105AC(v33, v34, &v49);

        *(v28 + 4) = v35;
        *(v28 + 12) = 2080;
        *(v28 + 14) = sub_1000105AC(osloga, v23, &v49);
        _os_log_impl(&_mh_execute_header, v26, v27, "💬 mliState changing from %s -> %s", v28, 0x16u);
        swift_arrayDestroy();

        v36 = v24;
      }

      else
      {

        v36 = v24;
      }

      v37 = *(v36 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_userDefaults);
      if (v37)
      {
        v38 = String._bridgeToObjectiveC()();
        UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

        v39 = String._bridgeToObjectiveC()();

        [v37 setObject:v38 forKey:v39];
      }

      v40 = [objc_opt_self() defaultStore];
      v41 = String._bridgeToObjectiveC()();

      UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

      v42 = String._bridgeToObjectiveC()();

      [v40 setString:v41 forKey:v42];

      v43 = *(v36 + v3);
      if (v2 == 2)
      {
        if (v43 != 3)
        {
          return;
        }
      }

      else if (v2 != 1 || v43 != 2)
      {
        return;
      }

      v44 = sub_10031FB40(v2, v43);
      v45 = *(v36 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_engagement);
      sub_100363FA8(v44);
      oslog = Dictionary._bridgeToObjectiveC()().super.isa;

      v46 = [v45 enqueueData:oslog];

      goto LABEL_75;
    }
  }

  else
  {
  }

  if (qword_10117F338 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000060E4(v15, qword_101184300);
  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v16, "💬 GDPR acceptance required before retrieving mliState.", v17, 2u);
  }

LABEL_75:
}

uint64_t UnifiedMessages.Coordinator.publishEngagementEvent(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = sub_10000954C(a1, v2);

  return sub_1001F94D4(v4, v1, v2, v3);
}

char *sub_1001F7504()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10010FC20(&qword_101184468, &qword_100EC0210);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v29 - v4;
  v6 = &v0[OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_serviceType];
  *v6 = 0x636973756DLL;
  v6[1] = 0xE500000000000000;
  v7 = OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_bag;
  v8 = objc_allocWithZone(AMSProcessInfo);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithBundleIdentifier:v9];

  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() bagForProfile:v11 profileVersion:v12 processInfo:v10];

  *&v0[v7] = v13;
  v14 = OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_observedPlacements;
  *&v0[v14] = sub_10010ED84(&off_1010998D0);
  *&v0[OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_privacyAcknowledgementObserver] = 0;
  v15 = OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_userDefaults;
  UnifiedMessages.groupDefaultsSuiteName.unsafeMutableAddressor();
  v16 = objc_allocWithZone(NSUserDefaults);

  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 initWithSuiteName:v17];

  *&v0[v15] = v18;
  *&v0[OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_accountDidChangeObserver] = 0;
  v19 = OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator__inlineBubbleTipRequests;
  v31 = sub_10010C68C(_swiftEmptyArrayStorage);
  sub_10010FC20(&unk_101184320, &qword_100EBFEF0);
  Published.init(initialValue:)();
  (*(v3 + 32))(&v0[v19], v5, v2);
  v20 = [objc_allocWithZone(AMSEngagement) initWithBag:*&v0[v7]];
  *&v0[OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_engagement] = v20;
  v0[OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState] = 0;
  v30.receiver = v0;
  v30.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v30, "init");
  v22 = [objc_opt_self() sharedPrivacyInfo];
  LODWORD(v2) = [v22 privacyAcknowledgementRequiredForMusic];

  if (v2)
  {
    if (qword_10117F338 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000060E4(v23, qword_101184300);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "💬 GDPR has not been accepted; prevent setup and observing for messages.", v26, 2u);
    }

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for PrivacyAcknowledgementObserver();
    swift_allocObject();
    *&v21[OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_privacyAcknowledgementObserver] = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, sub_1001FAA50, v27);
  }

  else
  {
    sub_1001F7AB8();
  }

  return v21;
}

double sub_1001F7964(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_10117F338 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000060E4(v2, qword_101184300);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "💬 GDPR has been acknowledged, start setup.", v5, 2u);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      sub_1001F7AB8();
    }

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      *&v8[OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_privacyAcknowledgementObserver] = 0;
    }
  }

  return result;
}

double sub_1001F7AB8()
{
  v1 = v0;
  v2 = ICActiveUserIdentityDidChangeNotification;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 defaultIdentityStore];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_accountDidChangeObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v4, v5, 1, 1, sub_1001FAA58, v6);

  v7 = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_engagement);
  v8 = sub_1001F4988(*(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_observedPlacements));
  sub_10066FFD8(v8);

  isa = Set._bridgeToObjectiveC()().super.isa;

  v10 = String._bridgeToObjectiveC()();
  [v7 addObserver:v1 placements:isa serviceType:v10];

  return sub_1001F7C74();
}

double sub_1001F7C74()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultStore];
  UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 stringForKey:v3];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_userDefaults);
  if (v8)
  {

    v9 = String._bridgeToObjectiveC()();

    v10 = [v8 stringForKey:v9];

    if (v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v12;
    }

    else
    {
      v11 = 0;
      v8 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (qword_10117F338 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000060E4(v13, qword_101184300);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v47 = v11;
  if (os_log_type_enabled(v14, v15))
  {
    v46 = v1;
    v16 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v16 = 136315394;

    sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
    v17 = String.init<A>(describing:)();
    v19 = sub_1000105AC(v17, v18, &v50);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v48 = v5;
    v49 = v7;

    v20 = String.init<A>(describing:)();
    v22 = sub_1000105AC(v20, v21, &v50);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "💬 mliState UserDefaults: %s, NSUbiquitousKeyValueStore: %s", v16, 0x16u);
    swift_arrayDestroy();

    v1 = v46;
  }

  if (v8)
  {
    v23 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v23 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {

      v51._countAndFlagsBits = v11;
      v51._object = v8;
      v24 = sub_1001FA7A4(v51);
      if (v24 == 4)
      {

        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v49 = v8;
          v50 = v28;
          *v27 = 136315138;
          v48 = v47;

          sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
          v29 = String.init<A>(describing:)();
          v31 = sub_1000105AC(v29, v30, &v50);

          *(v27 + 4) = v31;
          _os_log_impl(&_mh_execute_header, v25, v26, "💬 UserDefaults mliState=%s is not a valid mliState value", v27, 0xCu);
          sub_10000959C(v28);
        }

        goto LABEL_29;
      }

      v39 = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState);
      *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState) = v24;
      sub_1001F6DCC(v39);

      return result;
    }
  }

  if (!v7)
  {
LABEL_33:
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "💬 Setting mliState=unknown", v42, 2u);
    }

    v43 = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState);
    *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState) = 1;
    sub_1001F6DCC(v43);
    return result;
  }

  v32 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v32 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {

    goto LABEL_33;
  }

  swift_bridgeObjectRetain_n();
  v52._countAndFlagsBits = v5;
  v52._object = v7;
  v33 = sub_1001FA7A4(v52);
  if (v33 == 4)
  {

    v25 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v25, v34))
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_30;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v48 = v36;
    *v35 = 136315138;
    v37 = sub_1000105AC(v5, v7, &v48);

    *(v35 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v25, v34, "💬 NSUbiquitousKeyValueStore mliState=%s is not a valid mliState value", v35, 0xCu);
    sub_10000959C(v36);

LABEL_29:

LABEL_30:

    return result;
  }

  v44 = v33;

  v45 = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState);
  *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState) = v44;
  sub_1001F6DCC(v45);

  return result;
}

void sub_1001F82E8(uint64_t a1, uint64_t a2)
{
  if (qword_10117F338 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101184300);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "💬 Active user changed, resetting mliState", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_userDefaults);
    v8 = Strong;
    v9 = v7;

    if (v7)
    {
      UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

      v10 = String._bridgeToObjectiveC()();

      [v9 removeObjectForKey:v10];
    }
  }
}

double UnifiedMessages.Coordinator.engagement(_:didUpdate:placement:serviceType:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v4;
  v11[5] = a3;
  v11[6] = a4;
  v11[7] = a2;
  v12 = a2;
  v13 = v4;

  sub_1001F4CB8(0, 0, v9, &unk_100EBFF00, v11);

  return result;
}

uint64_t sub_1001F8578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = swift_task_alloc();
  v7[10] = v8;
  *v8 = v7;
  v8[1] = sub_1001F8620;

  return sub_1001F9864();
}

uint64_t sub_1001F8620(char a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1001F8720, 0, 0);
}

uint64_t sub_1001F8720()
{
  v35 = v0;
  if (*(v0 + 88) != 1)
  {
    if (qword_10117F338 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000060E4(v6, qword_101184300);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_24;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "💬 Unified Messages are disabled; preventing the engagement request from displaying.", v9, 2u);
    goto LABEL_23;
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  v3._countAndFlagsBits = v2;
  v3._object = v1;
  v4 = _findStringSwitchCase(cases:string:)(&off_101099788, v3);

  if (!v4)
  {
    v5 = 0;
    goto LABEL_10;
  }

  if (v4 != 1)
  {
    if (qword_10117F338 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000060E4(v26, qword_101184300);

    v7 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v7, v27))
    {
      goto LABEL_24;
    }

    v29 = *(v0 + 56);
    v28 = *(v0 + 64);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1000105AC(v29, v28, &v34);
    _os_log_impl(&_mh_execute_header, v7, v27, "💬 Could not create Placement enum for placement string %s", v30, 0xCu);
    sub_10000959C(v31);

LABEL_23:

LABEL_24:

    goto LABEL_25;
  }

  v5 = 1;
LABEL_10:
  if (qword_10117F338 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000060E4(v10, qword_101184300);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1000105AC(v14, v13, &v34);
    _os_log_impl(&_mh_execute_header, v11, v12, "💬 Received pushed message for %s", v15, 0xCu);
    sub_10000959C(v16);
  }

  if (!*(v0 + 72))
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 56);
      v19 = *(v0 + 64);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1000105AC(v20, v19, &v34);
      _os_log_impl(&_mh_execute_header, v17, v18, "💬 Request is nil so removing %s", v21, 0xCu);
      sub_10000959C(v22);
    }
  }

  v23 = *(v0 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v23;
  v25 = static Published.subscript.modify();
  sub_10040764C(v23, v5);
  v25(v0 + 16, 0);

LABEL_25:
  v32 = *(v0 + 8);

  return v32();
}

uint64_t UnifiedMessages.Coordinator.engagement(_:handle:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  return sub_1001F8D64(a1, a2, a3, a4, "💬 Dialogs without a specified placement are not supported.");
}

{
  return sub_1001F8D64(a1, a2, a3, a4, "💬 Full sheets are not supported.");
}

uint64_t sub_1001F8D64(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, const char *a5)
{
  if (qword_10117F338 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, qword_101184300);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a5, v10, 2u);
  }

  sub_1001F9D4C();
  v11 = swift_allocError();
  a3(0, v11);
}

void sub_1001F8EA0(void *a1, int a2, void *a3, void *a4, void *aBlock, const char *a6)
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_1001FA7F0(v10, a6);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_1001F9030@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1001F9070()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101184300);
  sub_1000060E4(v0, qword_101184300);
  return static Logger.music(_:)(0x4D64656966696E55, 0xEF73656761737365);
}

void sub_1001F90E0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_1001F9160(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1001F91D8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1001F92CC;

  return v5(v2 + 32);
}

uint64_t sub_1001F92CC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001F93E0(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1001FAAB4;

  return v5(v2 + 16);
}

uint64_t sub_1001F94D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = *(a2 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_engagement);
  v12 = (*(a4 + 24))(a3, a4);
  sub_100363FA8(v12);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return (*(v7 + 8))(v10, a3);
}

uint64_t sub_1001F9640(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1001F9734;

  return v5(v2 + 16);
}

uint64_t sub_1001F9734()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001F9880()
{
  v1 = JSBridge.shared.unsafeMutableAddressor();
  v2 = *v1;
  *(v0 + 288) = *v1;
  v3 = *((swift_isaMask & *v2) + 0xE0);
  v2;
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  *v4 = v0;
  v4[1] = sub_1001F99C4;

  return v6(v0 + 144);
}

uint64_t sub_1001F99C4()
{
  v1 = *(*v0 + 288);

  return _swift_task_switch(sub_1001F9AD8, 0, 0);
}

uint64_t sub_1001F9AD8()
{
  v1 = v0[20];
  v2 = OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isUnifiedMessagesEnabled;
  swift_beginAccess();
  v3 = *(v1 + v2);
  static ApplicationCapabilities.shared.getter((v0 + 2));
  v4 = v0[6];

  sub_100014984((v0 + 2));
  v5 = sub_10048BBDC(10, v4);

  if (qword_10117F338 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101184300);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = v3;
    *(v9 + 8) = 1024;
    *(v9 + 10) = v5 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "💬 Are Unified Messages enabled?: %{BOOL}d, %{BOOL}d", v9, 0xEu);
  }

  sub_1001FAA60((v0 + 18));
  v10 = v0[1];

  return v10(v3 & v5);
}

uint64_t sub_1001F9C78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_1001F8578(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1001F9D4C()
{
  result = qword_101184330;
  if (!qword_101184330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184330);
  }

  return result;
}

unint64_t sub_1001F9DA4()
{
  result = qword_101184338;
  if (!qword_101184338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184338);
  }

  return result;
}

unint64_t sub_1001F9DFC()
{
  result = qword_101184340;
  if (!qword_101184340)
  {
    sub_1001109D0(&qword_101184348, &qword_100EBFFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184340);
  }

  return result;
}

uint64_t type metadata accessor for UnifiedMessages.Coordinator(uint64_t a1)
{
  result = qword_101184410;
  if (!qword_101184410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001F9EC4(uint64_t a1)
{
  sub_1001F9F94(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001F9F94(uint64_t a1)
{
  if (!qword_101184420)
  {
    sub_1001109D0(&unk_101184320, &qword_100EBFEF0);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_101184420);
    }
  }
}

uint64_t getEnumTagSinglePayload for MetricsEvent.Page.DisplayType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MetricsEvent.Page.DisplayType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1001FA0D8()
{
  result = qword_101184428;
  if (!qword_101184428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184428);
  }

  return result;
}

uint64_t sub_1001FA12C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_1001FA1E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_1001FA29C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F93E0(a1, v4);
}

uint64_t sub_1001FA354(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009740(a1, v4);
}

uint64_t sub_1001FA40C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F9640(a1, v4);
}

uint64_t sub_1001FA4C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_1001FA57C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009648(a1, v4);
}

uint64_t sub_1001FA634(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_100009648(a1, v4);
}

uint64_t sub_1001FA6EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F93E0(a1, v4);
}

unint64_t sub_1001FA7A4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101099850, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001FA7F0(uint64_t a1, const char *a2)
{
  if (qword_10117F338 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_101184300);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 2u);
  }

  sub_1001F9D4C();
  swift_allocError();
  v8 = _convertErrorToNSError(_:)();
  (*(a1 + 16))(a1, 0, v8);
}

uint64_t sub_1001FA92C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001FA97C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_1001F8578(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1001FAAB8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_10066C920(0, v4, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = (a3 + 40);
    while (1)
    {
      v8 = *v7;
      v16 = *(v7 - 1);
      v17 = v8;
      a1(&v18, &v16);
      if (v3)
      {
        break;
      }

      v9 = v18;
      v10 = v19;
      v11 = v20;
      v21 = v6;
      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        sub_10066C920((v12 > 1), v13 + 1, 1);
        v6 = v21;
      }

      v6[2] = v13 + 1;
      v14 = &v6[3 * v13];
      v14[4] = v9;
      v7 += 16;
      *(v14 + 40) = v10;
      v14[6] = v11;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1001FABE4(void *(*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v11[1] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = (a3 + 32);
    while (1)
    {
      v9 = *v8++;
      v10 = v9;
      a1(v11, &v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1001FACD0(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v5)
  {
    return;
  }

  v19 = _swiftEmptyArrayStorage;
  sub_10066CDA4(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v19;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v7 < v5)
    {
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_17;
      }

      v17 = a3 + v7;
      a1(&v18, &v17);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v18;
      v19 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_10066CDA4((v13 > 1), v14 + 1, 1);
        v8 = v19;
      }

      v8[2] = v14 + 1;
      v8[v14 + 4] = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v7)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
}

uint64_t sub_1001FAE44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryArtistFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

_BYTE *sub_1001FAE8C(char *a1, int a2)
{
  v3 = v2;
  LODWORD(v87) = a2;
  v77 = a1;
  ObjectType = swift_getObjectType();
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v83 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v82 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v76 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = &v71 - v7;
  __chkstk_darwin();
  v78 = &v71 - v8;
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v79 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicFavoriteStatus();
  v74 = *(v10 - 8);
  v75 = v10;
  __chkstk_darwin();
  v73 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v71 - v12;
  v14 = type metadata accessor for Artist();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_viewHasAppeared] = 0;
  v18 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___globalHeaderRegistration;
  v19 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v20 = *(*(v19 - 8) + 56);
  v20(&v3[v18], 1, 1, v19);
  v20(&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___headerRegistration], 1, 1, v19);
  v21 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___albumGridCellRegistration;
  v22 = sub_10010FC20(&qword_101184578, &qword_100EC02B8);
  (*(*(v22 - 8) + 56))(&v3[v21], 1, 1, v22);
  v23 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___albumListCellRegistration;
  v24 = sub_10010FC20(&qword_101184588, &unk_100EC02C0);
  (*(*(v24 - 8) + 56))(&v3[v23], 1, 1, v24);
  v25 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___musicVideoGridCellRegistration;
  v26 = sub_10010FC20(&unk_101193A80, &unk_100ED1360);
  (*(*(v26 - 8) + 56))(&v3[v25], 1, 1, v26);
  v27 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___musicVideoListCellRegistration;
  v28 = sub_10010FC20(&unk_101193A90, &qword_100EC02D0);
  (*(*(v28 - 8) + 56))(&v3[v27], 1, 1, v28);
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView] = 0;
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___contextBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistResponse] = 0;
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistResponseSubscription] = 0;
  v29 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_prefetchingController;
  v30 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v3[v29] = sub_10003AAD8(0xD000000000000023, 0x8000000100E416D0);
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistHeader] = 0;
  v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent] = 0;
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_dragDropController] = 0;
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___searchController] = 0;
  v31 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___actionMetricsReportingContext;
  v32 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v32 - 8) + 56))(&v3[v31], 1, 1, v32);
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_sortBinding] = 0;
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___favoriteBarButtonItem] = 0;
  v33 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  v34 = v15;
  v72 = v15;
  v35 = *(v15 + 16);
  v36 = v77;
  v71 = v14;
  v35(&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist], v77, v14);
  v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_onlyShowDownloaded] = v87;
  swift_beginAccess();
  v35(v17, &v3[v33], v14);
  Artist.favoriteStatus.getter();
  v84 = *(v34 + 8);
  v85 = v34 + 8;
  v84(v17, v14);
  v37 = v73;
  v38 = v74;
  v39 = v75;
  (*(v74 + 104))(v73, enum case for MusicFavoriteStatus.favorited(_:), v75);
  LOBYTE(v17) = static MusicFavoriteStatus.== infix(_:_:)();
  v40 = *(v38 + 8);
  v40(v37, v39);
  v40(v13, v39);
  v41 = v76;
  v42 = &v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState];
  v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState] = v17 & 1;
  v43 = *(sub_10010FC20(&qword_101184608, &qword_100EC0340) + 28);
  v44 = sub_10010FC20(&qword_101184610, &qword_100EC0348);
  (*(*(v44 - 8) + 56))(&v42[v43], 1, 1, v44);
  v45 = v78;
  v46 = v71;
  v35(v78, v36, v71);
  swift_storeEnumTagMultiPayload();
  v47 = v79;
  v48 = v45;
  LOBYTE(v45) = v87;
  sub_1002884E4(v48, v87, v79);
  sub_10010FC20(&qword_101184618, &unk_100EC0350);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController] = sub_1003A1E94(v47);
  v49 = v83;
  v35(v83, v36, v46);
  (*(v72 + 56))(v49, 0, 1, v46);
  v50 = v82;
  sub_1006FC4AC(v49, v45, v82);
  sub_10010FC20(&unk_101184620, &unk_100ED14C0);
  swift_allocObject();
  v51 = sub_1003A18B4(v50);
  v52 = v81;
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController] = v51;
  v35(v52, v36, v46);
  swift_storeEnumTagMultiPayload();
  sub_100217D58(v52, v41, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v55 = 0x8000000100E41720;
      sub_100217EB4(v52, _s6AlbumsV5ScopeOMa);
      v54 = 0xD000000000000010;
    }

    else
    {
      sub_100217EB4(v52, _s6AlbumsV5ScopeOMa);
      v55 = 0xED00007365726E65;
      v54 = 0x477972617262694CLL;
    }

    v52 = v41;
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v55 = 0x8000000100E41700;
      sub_100217EB4(v52, _s6AlbumsV5ScopeOMa);
      v52 = v41;
      v56 = ObjectType;
      v54 = 0xD000000000000013;
      goto LABEL_12;
    }

    v54 = 0xD000000000000013;
    if (EnumCaseMultiPayload == 3)
    {
      v54 = 0x417972617262694CLL;
      v55 = 0xED0000736D75626CLL;
    }

    else
    {
      v55 = 0x8000000100E41740;
    }
  }

  v56 = ObjectType;
LABEL_12:
  v57 = v84;
  sub_100217EB4(v52, _s6AlbumsV5ScopeOMa);
  _s23LayoutVariantControllerCMa();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_layoutVariantController] = sub_10059A684(v54, v55, 0);
  v88.receiver = v3;
  v88.super_class = v56;
  v58 = objc_msgSendSuper2(&v88, "initWithNibName:bundle:", 0, 0);
  v59 = [v58 navigationItem];
  [v59 setLargeTitleDisplayMode:2];

  v60 = [v58 navigationItem];
  if (qword_10117FD78 != -1)
  {
    swift_once();
  }

  v61 = qword_1011A3E68;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  objc_setAssociatedObject(v60, v61, isa, 3);

  v63 = [v58 navigationItem];
  [v63 setBackButtonDisplayMode:2];

  v64 = [v58 navigationItem];
  Artist.name.getter();
  v65 = String._bridgeToObjectiveC()();

  [v64 setBackButtonTitle:v65];

  UIViewController.playActivityFeatureIdentifier.setter(1);
  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v66 = swift_allocObject();
  v87 = xmmword_100EBC6B0;
  *(v66 + 16) = xmmword_100EBC6B0;
  v67 = sub_100217F14();
  *(v66 + 32) = &type metadata for LibraryFilterTrait;
  *(v66 + 40) = v67;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v68 = swift_allocObject();
  *(v68 + 16) = v87;
  v69 = sub_100137E8C();
  *(v68 + 32) = &type metadata for MusicLibraryTrait;
  *(v68 + 40) = v69;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  v57(v36, v46);
  return v58;
}

uint64_t sub_1001FBB04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  _s6AlbumsVMa(0);
  *&v3 = __chkstk_darwin().n128_u64[0];
  v108 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117.receiver = v0;
  v117.super_class = ObjectType;
  objc_msgSendSuper2(&v117, "viewDidLoad", v3);
  v5 = sub_1001FC874();
  v6 = *(v5 + 64);
  *(v5 + 64) = 0;
  if (v6 == 1)
  {
    sub_10043EAB8();
  }

  v7 = sub_1001FC918();
  v8 = v7;
  v9 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView;
  v10 = *&v0[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView];
  v11 = &unk_101184000;
  if (*(v10 + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56) == 1)
  {
    v105 = v7;
    v106 = ObjectType;
    v107 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView;
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = sub_100219540;
LABEL_7:
    v104 = v13;
    v15 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
    v16 = v10;
    v17 = [v15 init];
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    v19 = objc_opt_self();
    v20 = [v19 fractionalWidthDimension:1.0];
    v21 = [v19 estimatedDimension:65.0];
    v22 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v21];

    UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

    v23 = String._bridgeToObjectiveC()();

    v24 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v22 elementKind:v23 alignment:1];

    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100EBC6C0;
    *(v25 + 32) = v24;
    sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v26 = v24;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v17 setBoundarySupplementaryItems:isa];

    v28 = *(v18 + 16);
    *(v18 + 16) = v26;

    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = 0u;
    *(v30 + 40) = 0u;
    *(v30 + 56) = 0u;
    *(v30 + 72) = v104;
    *(v30 + 80) = v12;
    *(v30 + 88) = v18;
    v31 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v122 = sub_100219088;
    v123 = v30;
    aBlock = _NSConcreteStackBlock;
    v119 = 1107296256;
    v120 = sub_1005A63A8;
    v121 = &unk_1010A15A0;
    v32 = _Block_copy(&aBlock);

    v33 = [v31 initWithSectionProvider:v32 configuration:v17];

    _Block_release(v32);

    ObjectType = v106;
    v9 = v107;
    v11 = &unk_101184000;
    v8 = v105;
    goto LABEL_9;
  }

  v14 = *(*&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_layoutVariantController] + 32);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_100219080;
  if (v14)
  {
    v105 = v8;
    v106 = ObjectType;
    v107 = v9;
    goto LABEL_7;
  }

  v34 = v10;
  v33 = sub_10059B450(v34, 1, sub_100219080, v12);

LABEL_9:
  [v8 setCollectionViewLayout:v33];

  v35 = *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_prefetchingController];
  [*&v1[v9] setPrefetchDataSource:v35];
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = ObjectType;
  v38 = (v35 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkMetricsProvider);
  v39 = *(v35 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkMetricsProvider);
  v40 = *(v35 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkMetricsProvider + 8);
  *v38 = sub_10021908C;
  v38[1] = v37;

  sub_100020438(v39, v40);

  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = (v35 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v43 = *(v35 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v44 = v42[1];
  *v42 = sub_100219094;
  v42[1] = v41;

  sub_100020438(v43, v44);

  v116 = _swiftEmptyArrayStorage;
  sub_1001FE264();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  static ApplicationCapabilities.shared.getter(&aBlock);
  sub_100014984(&aBlock);
  if (v119)
  {
    type metadata accessor for MusicLibrary();
    v46 = [v1 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    static MusicLibrary.shared.getter();
    LOBYTE(v46) = static MusicLibrary.== infix(_:_:)();

    if (v46)
    {
      sub_1001FE348();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v45 = sub_1001FE648();
    }
  }

  v47 = [v1 navigationItem];
  sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
  v48 = Array._bridgeToObjectiveC()().super.isa;

  [v47 setRightBarButtonItems:v48 animated:0];

  v49 = *&v1[v9];
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = &v49[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v52 = *&v49[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v53 = *&v49[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate + 8];
  *v51 = sub_10021909C;
  v51[1] = v50;
  v54 = v49;

  sub_100020438(v52, v53);

  v55 = *&v1[v11[150]];
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = *(v55 + 16);
  v58 = *(v55 + 24);
  *(v55 + 16) = sub_1002190A4;
  *(v55 + 24) = v56;

  sub_100020438(v57, v58);

  v59 = *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController];
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = v59[4];
  v62 = v59[5];
  v59[4] = sub_1002190B0;
  v59[5] = v60;

  sub_100020438(v61, v62);

  v63 = *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController];
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = *(v63 + 32);
  v66 = *(v63 + 40);
  *(v63 + 32) = sub_1002190B8;
  *(v63 + 40) = v64;

  sub_100020438(v65, v66);

  v67 = *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___searchController];
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = *(v67 + 88);
  v70 = *(v67 + 96);
  *(v67 + 88) = sub_1002190C0;
  *(v67 + 96) = v68;

  sub_100020438(v69, v70);

  type metadata accessor for Whitetail.Binding();
  v71 = v59[6];
  v72 = *(*v71 + 96);
  swift_beginAccess();
  v73 = v108;
  sub_100217D58(v71 + v72, v108, _s6AlbumsVMa);
  sub_100288A9C();
  sub_100217EB4(v73, _s6AlbumsVMa);
  UIScreen.Dimensions.size.getter();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = v9;
  v82 = v81;
  v115[3] = &type metadata for UserDefaultsKeyValueTrigger;
  v115[4] = &protocol witness table for UserDefaultsKeyValueTrigger;
  v83 = swift_allocObject();
  v115[0] = v83;
  v83[2] = v75;
  v83[3] = v77;
  v83[4] = v79;
  v83[5] = v82;
  v84 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_sortBinding] = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v115, 0, sub_1002190C8, v84);

  v85 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v109[3] = v85;
  v86 = sub_10001C8B8(v109);
  sub_100200938(v86);
  v110[3] = v85;
  v87 = sub_10001C8B8(v110);
  sub_100200BBC(v87);
  v111[3] = sub_10010FC20(&qword_101184578, &qword_100EC02B8);
  v88 = sub_10001C8B8(v111);
  sub_100200E44(v88);
  v112[3] = sub_10010FC20(&qword_101184588, &unk_100EC02C0);
  v89 = sub_10001C8B8(v112);
  sub_1002010BC(v89);
  v113[3] = sub_10010FC20(&unk_101193A80, &unk_100ED1360);
  v90 = sub_10001C8B8(v113);
  sub_10020135C(v90);
  v114[3] = sub_10010FC20(&unk_101193A90, &qword_100EC02D0);
  v91 = sub_10001C8B8(v114);
  sub_1002015D4(v91);
  swift_arrayDestroy();
  v92 = *&v1[v80];
  v93 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v94 = swift_allocObject();
  *(v94 + 24) = 0u;
  *(v94 + 40) = 0u;
  *(v94 + 56) = 0u;
  *(v94 + 72) = 0u;
  *(v94 + 88) = 1;
  *(v94 + 96) = 0;
  v95 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v96 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v96 - 8) + 56))(v94 + v95, 1, 1, v96);
  *(v94 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v94 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v94 + 16) = v92;
  *(v94 + 24) = sub_1002190D0;
  *(v94 + 32) = v93;
  *(v94 + 40) = 0;
  v97 = *(v94 + 56);
  v98 = *(v94 + 64);
  *(v94 + 64) = 0;
  *(v94 + 48) = 0;
  *(v94 + 56) = 0;
  v99 = v92;
  swift_retain_n();
  sub_100020438(v97, v98);
  v100 = *(v94 + 72);
  v101 = *(v94 + 80);
  *(v94 + 72) = 0;
  *(v94 + 80) = 0;
  sub_100020438(v100, v101);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_dragDropController] = v94;

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  return sub_1002027C8();
}

uint64_t sub_1001FC874()
{
  v1 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0, v3);

    *&v0[v1] = v2;
  }

  return v2;
}

id sub_1001FC918()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView];
LABEL_6:
    v45 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600, UICollectionViewCompositionalLayout_ptr);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v47.receiver = v16;
    v47.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v47, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v46.receiver = v27;
    v46.super_class = v14;
    objc_msgSendSuper2(&v46, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.libraryArtistsDetailView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];
      v41 = v38[2];
      v42 = v38[3];

      v43 = UIView.withAccessibilityIdentifier(_:)(v39, v40, v41, v42);

      v44 = *&v1[v10];
      *&v1[v10] = v43;
      v12 = v43;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1001FCD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&unk_1011846F0, &qword_100EC03A8);
  __chkstk_darwin();
  v7 = &v20 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = 0.0;
  if (Strong)
  {
    v10 = Strong;
    v11 = IndexPath.section.getter();
    v12 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = sub_1001FCF68(v11, v7);
    sub_1000095E8(v7, &unk_1011846F0, &qword_100EC03A8);
    if (v13 == 2)
    {
    }

    else
    {
      v14 = sub_1001FC918();
      v15 = v14[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

      if ((v15 & 1) != 0 || *(*&v10[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_layoutVariantController] + 32) == 1)
      {
        v16 = [objc_opt_self() currentTraitCollection];
        [v16 displayScale];

        if (v13)
        {
          return 85.3333333;
        }

        else
        {
          return 64.0;
        }
      }

      else
      {
        v17 = *&v10[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView];
        v18 = sub_100189858();

        v9 = v18(a1, a2);
      }
    }
  }

  return v9;
}

uint64_t sub_1001FCF68(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_101184718, &qword_100EC03D0);
  __chkstk_darwin();
  v5 = &v26 - v4;
  sub_10010FC20(&unk_101184720, &qword_100EC03D8);
  __chkstk_darwin();
  v7 = &v26 - v6;
  sub_10010FC20(&unk_1011846F0, &qword_100EC03A8);
  __chkstk_darwin();
  v9 = &v26 - v8;
  v10 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_100205144(v14))
  {
    return 2;
  }

  sub_1000089F8(a2, v9, &unk_1011846F0, &qword_100EC03A8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000095E8(v9, &unk_1011846F0, &qword_100EC03A8);
    v15 = sub_1001FFA80();
    v16 = sub_1001FFC7C();
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  sub_100217DC0(v9, v13, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
  sub_1000089F8(v13, v7, &unk_101184720, &qword_100EC03D8);
  v19 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v7, 1, v19) == 1)
  {
    sub_1000095E8(v7, &unk_101184720, &qword_100EC03D8);
    v21 = 0;
  }

  else
  {
    v22 = MusicLibrarySectionedResponse.isEmpty.getter(v19);
    (*(v20 + 8))(v7, v19);
    v21 = !v22;
  }

  sub_1000089F8(&v13[*(v10 + 20)], v5, &qword_101184718, &qword_100EC03D0);
  v23 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v5, 1, v23) == 1)
  {
    sub_100217EB4(v13, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
    sub_1000095E8(v5, &qword_101184718, &qword_100EC03D0);
    if (v21)
    {
      return 2 * (a1 != 0);
    }

    return 2;
  }

  v25 = MusicLibrarySectionedResponse.isEmpty.getter(v23);
  sub_100217EB4(v13, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
  (*(v24 + 8))(v5, v23);
  v16 = !v25;
  if (!v21)
  {
LABEL_18:
    if (v16)
    {
      if (a1)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    return 2;
  }

LABEL_4:
  if (!v16)
  {
    return 2 * (a1 != 0);
  }

  if (a1 == 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  if (a1)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1001FD3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v96 = a2;
  v98 = a1;
  sub_10010FC20(&unk_101181600, &unk_100EBD070);
  __chkstk_darwin();
  v90 = &v83 - v5;
  v6 = sub_10010FC20(&qword_101193AF0, &unk_100EC0370);
  v88 = *(v6 - 8);
  v89 = v6;
  __chkstk_darwin();
  v87 = &v83 - v7;
  sub_10010FC20(&qword_101184718, &qword_100EC03D0);
  __chkstk_darwin();
  v92 = &v83 - v8;
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v95 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = &v83 - v10;
  sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  __chkstk_darwin();
  v86 = &v83 - v11;
  v12 = sub_10010FC20(&qword_1011846D8, &unk_100EC0390);
  v85 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v83 - v13;
  sub_10010FC20(&unk_101184720, &qword_100EC03D8);
  __chkstk_darwin();
  v16 = &v83 - v15;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v91 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = &v83 - v18;
  sub_10010FC20(&unk_1011846F0, &qword_100EC03A8);
  __chkstk_darwin();
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v83 - v21;
  v23 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v97 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v27 = Strong;
  sub_1000089F8(v98, v99, &unk_101183F30, qword_100EBF960);
  if (!v99[3])
  {

    sub_1000095E8(v99, &unk_101183F30, qword_100EBF960);
    (*(v24 + 56))(v22, 1, 1, v23);
    goto LABEL_6;
  }

  v98 = a4;
  v28 = swift_dynamicCast();
  v29 = *(v24 + 56);
  v29(v22, v28 ^ 1u, 1, v23);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {

    a4 = v98;
LABEL_6:
    v30 = &unk_1011846F0;
    v31 = &qword_100EC03A8;
    v32 = v22;
LABEL_7:
    sub_1000095E8(v32, v30, v31);
LABEL_8:
    v33 = type metadata accessor for Artwork();
    return (*(*(v33 - 8) + 56))(a4, 1, 1, v33);
  }

  v84 = v16;
  v35 = v27;
  v36 = v97;
  sub_100217DC0(v22, v97, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
  v37 = IndexPath.section.getter();
  sub_100217D58(v36, v20, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
  v29(v20, 0, 1, v23);
  v38 = sub_1001FCF68(v37, v20);
  sub_1000095E8(v20, &unk_1011846F0, &qword_100EC03A8);
  if (v38 == 2)
  {
    sub_100217EB4(v36, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);

    a4 = v98;
    goto LABEL_8;
  }

  v83 = v35;
  if (v38)
  {
    v39 = v97;
    v40 = v92;
    sub_1000089F8(v97 + *(v23 + 20), v92, &qword_101184718, &qword_100EC03D0);
    v41 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
    v42 = *(v41 - 8);
    v43 = (*(v42 + 48))(v40, 1, v41);
    a4 = v98;
    if (v43 == 1)
    {
      sub_1000095E8(v40, &qword_101184718, &qword_100EC03D0);
      v44 = type metadata accessor for MusicVideo();
      v45 = v94;
      (*(*(v44 - 8) + 56))(v94, 1, 1, v44);
      v46 = v95;
LABEL_29:
      sub_1000089F8(v45, v46, &unk_1011846B0, &unk_100ECB630);
      type metadata accessor for MusicVideo();
      v75 = *(v44 - 8);
      if ((*(v75 + 48))(v46, 1, v44) != 1)
      {
        MusicVideo.artwork.getter();

        sub_1000095E8(v45, &unk_1011846B0, &unk_100ECB630);
        sub_100217EB4(v39, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
        return (*(v75 + 8))(v46, v44);
      }

      sub_1000095E8(v45, &unk_1011846B0, &unk_100ECB630);
      sub_100217EB4(v39, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
      v32 = v46;
      v30 = &unk_1011846B0;
      v31 = &unk_100ECB630;
      goto LABEL_7;
    }

    v53 = MusicLibrarySectionedResponse.sections.getter();
    (*(v42 + 8))(v40, v41);
    v99[0] = _swiftEmptyArrayStorage;
    v54 = *(v53 + 16);
    if (v54)
    {
      v55 = v89;
      v56 = *(v88 + 16);
      v57 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v93 = v53;
      v58 = v53 + v57;
      v59 = *(v88 + 72);
      v60 = (v88 + 8);
      v61 = v90;
      v62 = v87;
      do
      {
        v56(v62, v58, v55);
        MusicLibrarySection.items.getter();
        (*v60)(v62, v55);
        sub_1001240F8(v61);
        v58 += v59;
        --v54;
      }

      while (v54);

      v63 = v99[0];
      v39 = v97;
    }

    else
    {

      v63 = _swiftEmptyArrayStorage;
    }

    result = IndexPath.item.getter();
    v45 = v94;
    v46 = v95;
    if ((result & 0x8000000000000000) == 0)
    {
      v73 = result;
      if (result < v63[2])
      {
        v44 = type metadata accessor for MusicVideo();
        v74 = *(v44 - 8);
        (*(v74 + 16))(v45, v63 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v73, v44);

        (*(v74 + 56))(v45, 0, 1, v44);
        a4 = v98;
        goto LABEL_29;
      }

      goto LABEL_42;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v47 = v97;
  v48 = v84;
  sub_1000089F8(v97, v84, &unk_101184720, &qword_100EC03D8);
  v49 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v48, 1, v49) == 1)
  {
    sub_1000095E8(v48, &unk_101184720, &qword_100EC03D8);
    v51 = type metadata accessor for Album();
    v52 = v93;
    (*(*(v51 - 8) + 56))(v93, 1, 1, v51);
  }

  else
  {
    v64 = MusicLibrarySectionedResponse.sections.getter();
    (*(v50 + 8))(v48, v49);
    v99[0] = _swiftEmptyArrayStorage;
    v65 = *(v64 + 16);
    if (v65)
    {
      v66 = v86;
      v67 = *(v85 + 16);
      v68 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v95 = v64;
      v69 = v64 + v68;
      v70 = *(v85 + 72);
      v71 = (v85 + 8);
      do
      {
        v67(v14, v69, v12);
        MusicLibrarySection.items.getter();
        (*v71)(v14, v12);
        sub_100124960(v66);
        v69 += v70;
        --v65;
      }

      while (v65);

      v72 = v99[0];
    }

    else
    {

      v72 = _swiftEmptyArrayStorage;
    }

    result = IndexPath.item.getter();
    v52 = v93;
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_41;
    }

    v76 = result;
    v47 = v97;
    if (result >= v72[2])
    {
LABEL_43:
      __break(1u);
      return result;
    }

    v51 = type metadata accessor for Album();
    v77 = *(v51 - 8);
    (*(v77 + 16))(v52, v72 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v76, v51);

    (*(v77 + 56))(v52, 0, 1, v51);
  }

  v78 = v91;
  sub_1000089F8(v52, v91, &unk_101184730, &unk_100ECB920);
  type metadata accessor for Album();
  v79 = *(v51 - 8);
  v80 = (*(v79 + 48))(v78, 1, v51);
  v81 = v98;
  if (v80 == 1)
  {

    sub_1000095E8(v52, &unk_101184730, &unk_100ECB920);
    sub_100217EB4(v47, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
    sub_1000095E8(v78, &unk_101184730, &unk_100ECB920);
    v82 = type metadata accessor for Artwork();
    return (*(*(v82 - 8) + 56))(v81, 1, 1, v82);
  }

  else
  {
    Album.artwork.getter();

    sub_1000095E8(v52, &unk_101184730, &unk_100ECB920);
    sub_100217EB4(v47, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
    return (*(v79 + 8))(v78, v51);
  }
}

id sub_1001FE264()
{
  v1 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___contextBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___contextBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___contextBarButtonItem);
  }

  else
  {
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = v0;
    v7 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_100217E54, v4, v6);

    v8 = *(v0 + v1);
    *(v5 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

objc_class *sub_1001FE348()
{
  sub_10010FC20(&unk_101184950, &qword_100EC05E0);
  __chkstk_darwin();
  v2 = &v21 - v1;
  v3 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___favoriteBarButtonItem;
  v4 = *(v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___favoriteBarButtonItem);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___favoriteBarButtonItem);
  }

  else
  {
    v6 = (v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState);
    swift_beginAccess();
    v7 = sub_10010FC20(&qword_101184608, &qword_100EC0340);
    sub_1000089F8(&v6[*(v7 + 28)], v2, &unk_101184950, &qword_100EC05E0);
    v8 = sub_10010FC20(&qword_101184610, &qword_100EC0348);
    if ((*(*(v8 - 8) + 48))(v2, 1, v8) == 1)
    {
      sub_1000095E8(v2, &unk_101184950, &qword_100EC05E0);
      v9 = *v6;
    }

    else
    {
      v9 = v2[*(v8 + 32)];
      sub_1000095E8(v2, &qword_101184610, &qword_100EC0348);
    }

    swift_endAccess();
    sub_100216128(v9, v24);
    v10 = v24[0];
    v11 = v24[2];
    v22 = v24[1];
    v23 = v24[3];
    v12 = v24[4];
    v21 = v24[5];
    v13 = v24[6];
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = v10;

    v15 = v0;
    v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

    v17 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v22, v11, v10, 0, v16, 0, v23, v12, v21, v13);

    v18 = *(v15 + v3);
    *(v15 + v3) = v17;
    v5 = v17;

    v4 = 0;
  }

  v19 = v4;
  return v5;
}

double sub_1001FE648()
{
  v1 = v0;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v32 = &v29 - v2;
  v33 = sub_10010FC20(&qword_1011848E8, &qword_100EC0578);
  v31 = *(v33 - 8);
  __chkstk_darwin();
  v30 = &v29 - v3;
  v4 = sub_10010FC20(&unk_1011848F0, &unk_100EC0580);
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin();
  v34 = &v29 - v5;
  v6 = type metadata accessor for Artist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_101181B18, &unk_100EBD5D0);
  v37 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v29 - v11;
  MusicLibraryRequest.init()();
  MusicLibraryRequest.ignoreExplicitContentRestrictions.setter();
  swift_getKeyPath();
  sub_10010FC20(&qword_101184900, &qword_100EC8D50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBC6B0;
  v14 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  swift_beginAccess();
  (*(v7 + 16))(v9, v1 + v14, v6);
  v15 = Artist.id.getter();
  v17 = v16;
  (*(v7 + 8))(v9, v6);
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  MusicLibraryRequest.filter<A>(matching:memberOf:)();

  sub_100020674(&unk_101184908, &qword_101181B18, &unk_100EBD5D0, &protocol conformance descriptor for MusicLibraryRequest<A>);
  v18 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  v19 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistResponse;
  swift_beginAccess();
  *(v1 + v19) = v18;

  swift_beginAccess();
  v20 = *(v1 + v19);
  if (v20)
  {
    swift_endAccess();

    v21 = v30;
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();

    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v22 = static OS_dispatch_queue.main.getter();
    v38 = v22;
    v23 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v24 = v32;
    (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
    sub_100020674(&qword_101184918, &qword_1011848E8, &qword_100EC0578, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1000206BC();
    v26 = v33;
    v25 = v34;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v24, &qword_101182140, &unk_100EBD2A0);

    (*(v31 + 8))(v21, v26);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&qword_101184928, &unk_1011848F0, &unk_100EC0580, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v27 = v36;
    v20 = Publisher<>.sink(receiveValue:)();

    (*(v35 + 8))(v25, v27);
    (*(v37 + 8))(v12, v10);
  }

  else
  {
    (*(v37 + 8))(v12, v10);
    swift_endAccess();
  }

  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistResponseSubscription) = v20;

  return result;
}

void sub_1001FEC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0)
    {
LABEL_9:

      return;
    }

    v7 = sub_1001FC918();
    v8 = *&v6[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView];
    if (*(v8 + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56) == 1)
    {
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
    }

    else
    {
      v10 = *(*&v6[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_layoutVariantController] + 32);
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      if ((v10 & 1) == 0)
      {
        v30 = v8;
        v29 = sub_10059B450(v30, 1, sub_100219540, v9);

        goto LABEL_8;
      }
    }

    v11 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
    v12 = v8;
    v13 = [v11 init];
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    v15 = objc_opt_self();
    v16 = [v15 fractionalWidthDimension:1.0];
    v17 = [v15 estimatedDimension:65.0];
    v18 = [objc_opt_self() sizeWithWidthDimension:v16 heightDimension:v17];

    UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

    v19 = String._bridgeToObjectiveC()();

    v20 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v18 elementKind:v19 alignment:1];

    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100EBC6C0;
    *(v21 + 32) = v20;
    sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v22 = v20;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 setBoundarySupplementaryItems:isa];

    v24 = *(v14 + 16);
    *(v14 + 16) = v22;

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = 0u;
    *(v26 + 40) = 0u;
    *(v26 + 56) = 0u;
    *(v26 + 72) = sub_100219540;
    *(v26 + 80) = v9;
    *(v26 + 88) = v14;
    v27 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    aBlock[4] = sub_100219568;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005A63A8;
    aBlock[3] = &unk_1010A16E0;
    v28 = _Block_copy(aBlock);

    v29 = [v27 initWithSectionProvider:v28 configuration:v13];

    _Block_release(v28);

LABEL_8:

    sub_100189E04(v29);

    goto LABEL_9;
  }
}

void sub_1001FF0F0(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1001FC918();
    v6 = *&v4[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView];
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (a1)
    {
      v8 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
      v9 = v6;
      v10 = [v8 init];
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = objc_opt_self();
      v13 = [v12 fractionalWidthDimension:1.0];
      v14 = [v12 estimatedDimension:65.0];
      v15 = [objc_opt_self() sizeWithWidthDimension:v13 heightDimension:v14];

      UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

      v16 = String._bridgeToObjectiveC()();

      v17 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v15 elementKind:v16 alignment:1];

      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100EBC6C0;
      *(v18 + 32) = v17;
      sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
      v19 = v17;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v10 setBoundarySupplementaryItems:isa];

      v21 = *(v11 + 16);
      *(v11 + 16) = v19;

      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = 0u;
      *(v23 + 40) = 0u;
      *(v23 + 56) = 0u;
      *(v23 + 72) = sub_100219540;
      *(v23 + 80) = v7;
      *(v23 + 88) = v11;
      v24 = objc_allocWithZone(UICollectionViewCompositionalLayout);
      aBlock[4] = sub_100219568;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005A63A8;
      aBlock[3] = &unk_1010A1690;
      v25 = _Block_copy(aBlock);

      v26 = [v24 initWithSectionProvider:v25 configuration:v10];

      _Block_release(v25);
    }

    else
    {
      v27 = v6;
      v26 = sub_10059B450(v27, 1, sub_100219540, v7);
    }

    sub_100189E04(v26);
  }
}

void sub_1001FF4E4(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v3 = &v27[-v2];
  sub_10010FC20(&qword_101184718, &qword_100EC03D0);
  __chkstk_darwin();
  v5 = &v27[-v4];
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v7 = &v27[-v6];
  sub_10010FC20(&unk_101184720, &qword_100EC03D8);
  __chkstk_darwin();
  v9 = &v27[-v8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_prefetchingController);
    RequestResponse.Revision.content.getter(v7);
    v13 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
    if ((*(*(v13 - 8) + 48))(v7, 1, v13) == 1)
    {
      sub_1000095E8(v7, &unk_1011846E0, &qword_100EC8E40);
      v14 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
      (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    }

    else
    {
      v15 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
      v16 = *(v15 - 8);
      (*(v16 + 16))(v9, v7, v15);
      sub_1000095E8(v7, &unk_101184700, &unk_100EC03C0);
      (*(v16 + 56))(v9, 0, 1, v15);
    }

    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v3);

    v17 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
    if ((*(*(v17 - 8) + 48))(v3, 1, v17) == 1)
    {
      sub_1000095E8(v3, &unk_1011846C0, &unk_100ED13F0);
      v18 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
      (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    }

    else
    {
      v19 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
      v20 = *(v19 - 8);
      (*(v20 + 16))(v5, v3, v19);
      sub_1000095E8(v3, &unk_10118D1E0, &unk_100EC03B0);
      (*(v20 + 56))(v5, 0, 1, v19);
    }

    v21 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
    v28[3] = v21;
    v22 = sub_10001C8B8(v28);
    sub_10003D17C(v9, v22, &unk_101184720, &qword_100EC03D8);
    sub_10003D17C(v5, v22 + *(v21 + 20), &qword_101184718, &qword_100EC03D0);
    v23 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
    swift_beginAccess();
    sub_10006B010(v28, v12 + v23, &unk_101183F30, qword_100EBF960);
    swift_endAccess();
    v24 = sub_1001FC918();
    [v24 reloadData];

    v25 = sub_1001FFA80() || sub_1001FFC7C();
    v26 = v11[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent];
    v11[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent] = v25;
    sub_10020980C(v26);
  }
}

BOOL sub_1001FFA80()
{
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v1 = &v10 - v0;
  v2 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &unk_1011846E0, &qword_100EC8E40);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_101184700, &unk_100EC03C0);
    v8 = MusicLibrarySectionedResponse.isEmpty.getter(v2);
    (*(v3 + 8))(v5, v2);
    return !v8;
  }
}

BOOL sub_1001FFC7C()
{
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v1 = &v10 - v0;
  v2 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &unk_1011846C0, &unk_100ED13F0);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_10118D1E0, &unk_100EC03B0);
    v8 = MusicLibrarySectionedResponse.isEmpty.getter(v2);
    (*(v3 + 8))(v5, v2);
    return !v8;
  }
}

void sub_1001FFE78(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v3 = &v27[-v2];
  sub_10010FC20(&qword_101184718, &qword_100EC03D0);
  __chkstk_darwin();
  v5 = &v27[-v4];
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v7 = &v27[-v6];
  sub_10010FC20(&unk_101184720, &qword_100EC03D8);
  __chkstk_darwin();
  v9 = &v27[-v8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_prefetchingController);
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v7);

    v13 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
    if ((*(*(v13 - 8) + 48))(v7, 1, v13) == 1)
    {
      sub_1000095E8(v7, &unk_1011846E0, &qword_100EC8E40);
      v14 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
      (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    }

    else
    {
      v15 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
      v16 = *(v15 - 8);
      (*(v16 + 16))(v9, v7, v15);
      sub_1000095E8(v7, &unk_101184700, &unk_100EC03C0);
      (*(v16 + 56))(v9, 0, 1, v15);
    }

    RequestResponse.Revision.content.getter(v3);
    v17 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
    if ((*(*(v17 - 8) + 48))(v3, 1, v17) == 1)
    {
      sub_1000095E8(v3, &unk_1011846C0, &unk_100ED13F0);
      v18 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
      (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    }

    else
    {
      v19 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
      v20 = *(v19 - 8);
      (*(v20 + 16))(v5, v3, v19);
      sub_1000095E8(v3, &unk_10118D1E0, &unk_100EC03B0);
      (*(v20 + 56))(v5, 0, 1, v19);
    }

    v21 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
    v28[3] = v21;
    v22 = sub_10001C8B8(v28);
    sub_10003D17C(v9, v22, &unk_101184720, &qword_100EC03D8);
    sub_10003D17C(v5, v22 + *(v21 + 20), &qword_101184718, &qword_100EC03D0);
    v23 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
    swift_beginAccess();
    sub_10006B010(v28, v12 + v23, &unk_101183F30, qword_100EBF960);
    swift_endAccess();
    v24 = sub_1001FC918();
    [v24 reloadData];

    v25 = sub_1001FFA80() || sub_1001FFC7C();
    v26 = v11[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent];
    v11[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent] = v25;
    sub_10020980C(v26);
  }
}

void sub_100200420(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s6AlbumsVMa(0);
  __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController);
    v33 = v5;
    v13 = Strong;

    if (a2)
    {
      v14 = a1;
    }

    else
    {
      v14 = 0;
    }

    v32 = v14;
    if (a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v16 = v7;
    v17 = a1;
    v18 = *(v12 + 48);
    v19 = *(*v18 + 96);
    swift_beginAccess();
    v20 = v18 + v19;
    a1 = v17;
    v7 = v16;
    sub_100217D58(v20, v10, _s6AlbumsVMa);
    v21 = &v10[*(v8 + 28)];

    v5 = v33;
    *v21 = v32;
    *(v21 + 1) = v15;
    sub_100378808(v10);
  }

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = *(v22 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController);
    v24 = v22;

    if (a2)
    {
      v25 = a2;
    }

    else
    {
      a1 = 0;
      v25 = 0xE000000000000000;
    }

    v26 = *(v23 + 48);
    v27 = *(*v26 + 96);
    swift_beginAccess();
    sub_100217D58(v26 + v27, v7, _s11MusicVideosVMa);
    v28 = &v7[*(v5 + 32)];

    *v28 = a1;
    *(v28 + 1) = v25;
    sub_100377E84(v7);
  }

  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    [v29 setNeedsUpdateContentUnavailableConfiguration];
  }
}

void sub_1002006EC(uint64_t a1)
{
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v2 = &v14[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [objc_opt_self() standardUserDefaults];
    v8 = *(*&v6[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController] + 48);
    v9 = *(*v8 + 96);
    swift_beginAccess();
    sub_100217D58(v8 + v9, v4, _s6AlbumsVMa);
    sub_100288A9C();
    sub_100217EB4(v4, _s6AlbumsVMa);
    sub_100110448();
    sub_10011049C();
    NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, v14);

    v10 = v14[0];
    if ((v14[0] & 0xFF00) != 0x200)
    {
      v11 = *(*&v6[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController] + 48);
      v12 = *(*v11 + 96);
      swift_beginAccess();
      sub_100217D58(v11 + v12, v2, _s11MusicVideosVMa);
      sub_1006FCB18(v10 & 0x1FF);
      sub_100377E84(v2);
    }
  }
}

uint64_t sub_100200938@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___globalHeaderRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C540, &qword_100EC0500);
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C540, &qword_100EC0500);
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);

  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C540, &qword_100EC0500);
  return swift_endAccess();
}

uint64_t sub_100200BBC@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C540, &qword_100EC0500);
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C540, &qword_100EC0500);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C540, &qword_100EC0500);
  return swift_endAccess();
}

uint64_t sub_100200E44@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10119F3B0, &unk_100EC0400);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___albumGridCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10119F3B0, &unk_100EC0400);
  v8 = sub_10010FC20(&qword_101184578, &qword_100EC02B8);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10119F3B0, &unk_100EC0400);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  type metadata accessor for Album();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10119F3B0, &unk_100EC0400);
  return swift_endAccess();
}

uint64_t sub_1002010BC@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_10010FC20(&qword_101192A50, &unk_100EC0460);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v14[-v6];
  v8 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___albumListCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v7, &qword_101192A50, &unk_100EC0460);
  v9 = sub_10010FC20(&qword_101184588, &unk_100EC02C0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1000095E8(v7, &qword_101192A50, &unk_100EC0460);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for Album();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v10 + 16))(v5, a1, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v8, &qword_101192A50, &unk_100EC0460);
  return swift_endAccess();
}

uint64_t sub_10020135C@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011847E0, &unk_100EC0490);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___musicVideoGridCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_1011847E0, &unk_100EC0490);
  v8 = sub_10010FC20(&unk_101193A80, &unk_100ED1360);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_1011847E0, &unk_100EC0490);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  type metadata accessor for MusicVideo();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_1011847E0, &unk_100EC0490);
  return swift_endAccess();
}

uint64_t sub_1002015D4@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_10010FC20(&qword_1011847E8, &unk_100ED1570);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v14[-v6];
  v8 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___musicVideoListCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v7, &qword_1011847E8, &unk_100ED1570);
  v9 = sub_10010FC20(&unk_101193A90, &qword_100EC02D0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1000095E8(v7, &qword_1011847E8, &unk_100ED1570);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for MusicVideo();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v10 + 16))(v5, a1, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v8, &qword_1011847E8, &unk_100ED1570);
  return swift_endAccess();
}

unint64_t sub_100201874(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181600, &unk_100EBD070);
  __chkstk_darwin();
  v107 = v103 - v3;
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v113 = v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_101193AF0, &unk_100EC0370);
  v106 = *(v5 - 8);
  __chkstk_darwin();
  v7 = v103 - v6;
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v128 = v103 - v8;
  v9 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v118 = *(v9 - 8);
  v119 = v9;
  __chkstk_darwin();
  v117 = v103 - v10;
  v11 = type metadata accessor for MusicVideo();
  v126 = *(v11 - 8);
  v127 = v11;
  __chkstk_darwin();
  v112 = v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = v103 - v13;
  __chkstk_darwin();
  v125 = v103 - v14;
  sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  __chkstk_darwin();
  v16 = v103 - v15;
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v110 = v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v124 = v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = v103 - v19;
  v20 = sub_10010FC20(&qword_1011846D8, &unk_100EC0390);
  v105 = *(v20 - 8);
  __chkstk_darwin();
  v22 = v103 - v21;
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v24 = v103 - v23;
  v25 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v115 = *(v25 - 8);
  v116 = v25;
  __chkstk_darwin();
  v114 = v103 - v26;
  v27 = type metadata accessor for Album();
  v121 = *(v27 - 8);
  v122 = v27;
  __chkstk_darwin();
  v109 = v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = v103 - v29;
  __chkstk_darwin();
  v120 = v103 - v30;
  sub_10010FC20(&unk_1011846F0, &qword_100EC03A8);
  __chkstk_darwin();
  v32 = v103 - v31;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v34 = result;
  v103[1] = a1;
  v35 = IndexPath.section.getter();
  v36 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
  (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
  v37 = sub_1001FCF68(v35, v32);
  v38 = v34;
  sub_1000095E8(v32, &unk_1011846F0, &qword_100EC03A8);
  if (v37 == 2)
  {
LABEL_3:

    return 0;
  }

  v104 = v34;
  if (v37)
  {
    v39 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController;
    v38 = v104;
    RequestResponse.Controller.revision.getter();
    v40 = v128;
    RequestResponse.Revision.content.getter(v128);

    v41 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
    {
      sub_1000095E8(v40, &unk_1011846C0, &unk_100ED13F0);
      goto LABEL_3;
    }

    v123 = v39;
    v45 = v117;
    v46 = v118;
    v47 = v119;
    (*(v118 + 16))(v117, v40, v119);
    sub_1000095E8(v40, &unk_10118D1E0, &unk_100EC03B0);
    v48 = MusicLibrarySectionedResponse.sections.getter();
    (*(v46 + 8))(v45, v47);
    v129 = _swiftEmptyArrayStorage;
    v49 = *(v48 + 16);
    if (v49)
    {
      v50 = *(v106 + 16);
      v51 = *(v106 + 80);
      v128 = v48;
      v52 = v48 + ((v51 + 32) & ~v51);
      v53 = *(v106 + 72);
      v54 = (v106 + 8);
      v55 = v107;
      do
      {
        v50(v7, v52, v5);
        MusicLibrarySection.items.getter();
        (*v54)(v7, v5);
        sub_1001240F8(v55);
        v52 += v53;
        --v49;
      }

      while (v49);

      v56 = v129;
    }

    else
    {

      v56 = _swiftEmptyArrayStorage;
    }

    result = IndexPath.item.getter();
    v70 = v126;
    v69 = v127;
    v72 = v124;
    v71 = v125;
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(v56 + 2))
      {
        v73 = *(v126 + 16);
        v74 = v111;
        v73(v111, &v56[((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * result], v127);

        (*(v70 + 32))(v71, v74, v69);
        v75 = *(*&v123[v104] + 48);
        v76 = *(*v75 + 96);
        swift_beginAccess();
        v77 = v75 + v76;
        v78 = v113;
        sub_100217D58(v77, v113, _s11MusicVideosVMa);
        sub_1006FCD38(v72);
        sub_100217EB4(v78, _s11MusicVideosVMa);
        v79 = type metadata accessor for MusicPlaybackIntentDescriptor();
        v80 = *(v79 - 8);
        if ((*(v80 + 48))(v72, 1, v79) == 1)
        {
          sub_1000095E8(v72, &unk_10118CDB0, &unk_100EC0360);
          v81 = 0;
        }

        else
        {
          v81 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
          (*(v80 + 8))(v72, v79);
        }

        v82 = sub_10079A5F8(v81);
        v83 = sub_100797240(&off_101099970, v82);

        v84 = v112;
        v73(v112, v71, v69);
        v85 = sub_10079C240(v83, v84);

        (*(v70 + 8))(v71, v69);
        return v85;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v42 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController;
  v43 = v104;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v24);

  v44 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
  if ((*(*(v44 - 8) + 48))(v24, 1, v44) == 1)
  {
    sub_1000095E8(v24, &unk_1011846E0, &qword_100EC8E40);

    return 0;
  }

  v128 = v42;
  v57 = v114;
  v58 = v115;
  v59 = v116;
  (*(v115 + 16))(v114, v24, v116);
  sub_1000095E8(v24, &unk_101184700, &unk_100EC03C0);
  v60 = MusicLibrarySectionedResponse.sections.getter();
  (*(v58 + 8))(v57, v59);
  v61 = v60;
  v129 = _swiftEmptyArrayStorage;
  v62 = *(v60 + 16);
  if (v62)
  {
    v63 = *(v105 + 16);
    v64 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v127 = v61;
    v65 = v61 + v64;
    v66 = *(v105 + 72);
    v67 = (v105 + 8);
    do
    {
      v63(v22, v65, v20);
      MusicLibrarySection.items.getter();
      (*v67)(v22, v20);
      sub_100124960(v16);
      v65 += v66;
      --v62;
    }

    while (v62);

    v68 = v129;
  }

  else
  {

    v68 = _swiftEmptyArrayStorage;
  }

  result = IndexPath.item.getter();
  v87 = v122;
  v86 = v123;
  v89 = v120;
  v88 = v121;
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

  if (result >= *(v68 + 2))
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v90 = *(v121 + 16);
  v91 = v108;
  v90(v108, &v68[((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * result], v122);

  (*(v88 + 32))(v89, v91, v87);
  v92 = *(*(v104 + v128) + 48);
  v93 = *(*v92 + 96);
  swift_beginAccess();
  v94 = v92 + v93;
  v95 = v110;
  sub_100217D58(v94, v110, _s6AlbumsVMa);
  sub_100288ABC(v86);
  sub_100217EB4(v95, _s6AlbumsVMa);
  v96 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v97 = *(v96 - 8);
  if ((*(v97 + 48))(v86, 1, v96) == 1)
  {
    sub_1000095E8(v86, &unk_10118CDB0, &unk_100EC0360);
    v98 = 0;
  }

  else
  {
    v98 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v97 + 8))(v86, v96);
  }

  v99 = sub_100799E1C(v98);
  v100 = sub_100797240(&off_101099948, v99);

  v101 = v109;
  v90(v109, v89, v87);
  v102 = sub_10079BA94(v100, v101);

  (*(v88 + 8))(v89, v87);
  return v102;
}