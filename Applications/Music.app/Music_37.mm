double sub_100428480(void *a1)
{
  if (a1 && [a1 isLowLatencyRoute])
  {
    v3 = *(v1 + OBJC_IVAR___MusicLyricsBackgroundView_renderer);
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR___MusicLyricsBackgroundView_renderer);
    if (!v3)
    {
      return result;
    }
  }

  v4 = v3;
  dispatch thunk of Backdrop.CompositeRenderer.spectrumAnalysis.getter();

  dispatch thunk of SpectrumAnalysis.delayCount.setter();

  return result;
}

void sub_100428528(__n128 a1)
{
  v2 = type metadata accessor for MetalContext();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR___MusicLyricsBackgroundView_metalView);
  if (v6)
  {
    v7 = v6;
    Backdrop.CompositeRenderer.context.getter();
    MetalContext.device.getter();
    (*(v3 + 8))(v5, v2);
    v8 = dispatch thunk of Backdrop.CompositeRenderer.preferredFramesPerSecond(for:)();
    swift_unknownObjectRelease();
    [v7 setPreferredFramesPerSecond:v8];
  }
}

id sub_100428654(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LyricsBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10042872C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100427C14(v6, a1, v4, v5, v7);
}

void sub_1004287F0()
{
  *(v0 + OBJC_IVAR___MusicLyricsBackgroundView_metalView) = 0;
  *(v0 + OBJC_IVAR___MusicLyricsBackgroundView____lazy_storage___gradientView) = 0;
  *(v0 + OBJC_IVAR___MusicLyricsBackgroundView_renderer) = 0;
  *(v0 + OBJC_IVAR___MusicLyricsBackgroundView_playerPathSubscription) = 0;
  *(v0 + OBJC_IVAR___MusicLyricsBackgroundView_isPaused) = 1;
  *(v0 + OBJC_IVAR___MusicLyricsBackgroundView_resetDurationTask) = 0;
  v1 = v0 + OBJC_IVAR___MusicLyricsBackgroundView_crossfadeDuration;
  *v1 = 0;
  *(v1 + 4) = 1;
  v2 = v0 + OBJC_IVAR___MusicLyricsBackgroundView_defaultDuration;
  *v2 = 0;
  *(v2 + 4) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004288C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100428914()
{
  v116 = type metadata accessor for Song();
  v114 = *(v116 - 8);
  __chkstk_darwin();
  v115 = &v103 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for MusicLibrary.DownloadStatus();
  v126 = *(v1 - 8);
  v127 = v1;
  __chkstk_darwin();
  v109 = &v103 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_10010FC20(&qword_10118F510, &unk_100ECBE20);
  __chkstk_darwin();
  v107 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v125 = &v103 - v4;
  sub_10010FC20(&qword_10118F518, &unk_100ED77A0);
  __chkstk_darwin();
  v104 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v103 - v6;
  __chkstk_darwin();
  v112 = &v103 - v7;
  __chkstk_darwin();
  v113 = &v103 - v8;
  __chkstk_darwin();
  v122 = &v103 - v9;
  __chkstk_darwin();
  v123 = &v103 - v10;
  v11 = type metadata accessor for GenericMusicItem();
  v119 = *(v11 - 8);
  v120 = v11;
  __chkstk_darwin();
  v118 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for ContentRating();
  v124 = *(v117 - 8);
  __chkstk_darwin();
  v108 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&qword_1011819C0, &unk_100EBD2E0);
  __chkstk_darwin();
  v106 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v103 - v16;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v105 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v103 - v19;
  __chkstk_darwin();
  v110 = &v103 - v21;
  __chkstk_darwin();
  v23 = &v103 - v22;
  __chkstk_darwin();
  v25 = &v103 - v24;
  __chkstk_darwin();
  v27 = &v103 - v26;
  v28 = type metadata accessor for MusicVideo();
  v129 = *(v28 - 8);
  v130 = v28;
  __chkstk_darwin();
  v128 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for MusicPin.Item();
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v33 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.item.getter();
  v34 = (*(v31 + 88))(v33, v30);
  if (v34 == enum case for MusicPin.Item.album(_:) || v34 == enum case for MusicPin.Item.artist(_:))
  {
    goto LABEL_11;
  }

  if (v34 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v31 + 96))(v33, v30);
    v36 = v128;
    v35 = v129;
    v37 = v33;
    v38 = v130;
    (*(v129 + 32))(v128, v37, v130);
    v39 = v131;
    if (*(v131 + 41))
    {
      v40 = 1;
      v42 = v126;
      v41 = v127;
      goto LABEL_24;
    }

    MusicVideo.contentRating.getter();
    v50 = v124;
    v51 = v117;
    (*(v124 + 104))(v25, enum case for ContentRating.clean(_:), v117);
    (*(v50 + 56))(v25, 0, 1, v51);
    v52 = *(v14 + 48);
    sub_1000089F8(v27, v17, &unk_10118D2F0, &unk_100EBCE10);
    sub_1000089F8(v25, &v17[v52], &unk_10118D2F0, &unk_100EBCE10);
    v53 = *(v50 + 48);
    if (v53(v17, 1, v51) == 1)
    {
      sub_1000095E8(v25, &unk_10118D2F0, &unk_100EBCE10);
      sub_1000095E8(v27, &unk_10118D2F0, &unk_100EBCE10);
      v54 = v53(&v17[v52], 1, v51);
      v42 = v126;
      v41 = v127;
      if (v54 == 1)
      {
        sub_1000095E8(v17, &unk_10118D2F0, &unk_100EBCE10);
        v40 = 1;
LABEL_23:
        v35 = v129;
        v38 = v130;
        v36 = v128;
        v39 = v131;
LABEL_24:
        v68 = v125;
        if ((*(v39 + 16) & 1) == 0)
        {
          (*(v35 + 8))(v36, v38);
          if ((v40 & 1) == 0)
          {
LABEL_35:
            v48 = 0;
            return v48 & 1;
          }

          goto LABEL_29;
        }

        LODWORD(v127) = v40;
        type metadata accessor for MusicLibrary();
        static MusicLibrary.shared.getter();
        v69 = v118;
        (*(v35 + 16))(v118, v36, v38);
        v71 = v119;
        v70 = v120;
        (*(v119 + 104))(v69, enum case for GenericMusicItem.musicVideo(_:), v120);
        MusicLibrary.state(for:)();

        (*(v71 + 8))(v69, v70);
        v72 = v123;
        dispatch thunk of MusicLibrary.GenericItemState.downloadStatus.getter();

        v73 = v122;
        (*(v42 + 104))(v122, enum case for MusicLibrary.DownloadStatus.downloaded(_:), v41);
        (*(v42 + 56))(v73, 0, 1, v41);
        v74 = *(v121 + 48);
        sub_1000089F8(v72, v68, &qword_10118F518, &unk_100ED77A0);
        sub_1000089F8(v73, v68 + v74, &qword_10118F518, &unk_100ED77A0);
        v75 = *(v42 + 48);
        if (v75(v68, 1, v41) == 1)
        {
          sub_1000095E8(v73, &qword_10118F518, &unk_100ED77A0);
          sub_1000095E8(v72, &qword_10118F518, &unk_100ED77A0);
          (*(v129 + 8))(v128, v130);
          v76 = 1;
          if (v75(v68 + v74, 1, v41) == 1)
          {
LABEL_34:
            sub_1000095E8(v68, &qword_10118F518, &unk_100ED77A0);
            v39 = v131;
            if ((v127 & v76 & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_29:
            v48 = *(v39 + 42);
            return v48 & 1;
          }
        }

        else
        {
          v77 = v113;
          sub_1000089F8(v68, v113, &qword_10118F518, &unk_100ED77A0);
          if (v75(v68 + v74, 1, v41) != 1)
          {
            v78 = v68 + v74;
            v79 = v109;
            (*(v42 + 32))(v109, v78, v41);
            sub_10001C0B4(&unk_10118F520, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
            v76 = dispatch thunk of static Equatable.== infix(_:_:)();
            v80 = *(v42 + 8);
            v80(v79, v41);
            sub_1000095E8(v122, &qword_10118F518, &unk_100ED77A0);
            sub_1000095E8(v123, &qword_10118F518, &unk_100ED77A0);
            (*(v129 + 8))(v128, v130);
            v80(v77, v41);
            goto LABEL_34;
          }

          sub_1000095E8(v122, &qword_10118F518, &unk_100ED77A0);
          sub_1000095E8(v123, &qword_10118F518, &unk_100ED77A0);
          (*(v129 + 8))(v128, v130);
          (*(v42 + 8))(v77, v41);
        }

        sub_1000095E8(v68, &qword_10118F510, &unk_100ECBE20);
        v48 = 0;
        return v48 & 1;
      }
    }

    else
    {
      sub_1000089F8(v17, v23, &unk_10118D2F0, &unk_100EBCE10);
      if (v53(&v17[v52], 1, v51) != 1)
      {
        v62 = v124;
        v63 = &v17[v52];
        v64 = v108;
        (*(v124 + 32))(v108, v63, v51);
        sub_10001C0B4(&qword_1011819D0, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
        v65 = dispatch thunk of static Equatable.== infix(_:_:)();
        v66 = *(v62 + 8);
        v66(v64, v51);
        v67 = v25;
        v40 = v65;
        sub_1000095E8(v67, &unk_10118D2F0, &unk_100EBCE10);
        sub_1000095E8(v27, &unk_10118D2F0, &unk_100EBCE10);
        v66(v23, v51);
        sub_1000095E8(v17, &unk_10118D2F0, &unk_100EBCE10);
        v42 = v126;
        v41 = v127;
        goto LABEL_23;
      }

      sub_1000095E8(v25, &unk_10118D2F0, &unk_100EBCE10);
      sub_1000095E8(v27, &unk_10118D2F0, &unk_100EBCE10);
      (*(v124 + 8))(v23, v51);
      v42 = v126;
      v41 = v127;
    }

    sub_1000095E8(v17, &qword_1011819C0, &unk_100EBD2E0);
    v40 = 0;
    goto LABEL_23;
  }

  if (v34 == enum case for MusicPin.Item.playlist(_:) || v34 != enum case for MusicPin.Item.song(_:))
  {
LABEL_11:
    (*(v31 + 8))(v33, v30);
    v48 = 1;
    return v48 & 1;
  }

  (*(v31 + 96))(v33, v30);
  v44 = v114;
  v43 = v115;
  v45 = v116;
  (*(v114 + 32))(v115, v33, v116);
  if ((*(v131 + 41) & 1) == 0)
  {
    v55 = v110;
    Song.contentRating.getter();
    v56 = v124;
    v57 = v117;
    (*(v124 + 104))(v20, enum case for ContentRating.clean(_:), v117);
    (*(v56 + 56))(v20, 0, 1, v57);
    v58 = *(v14 + 48);
    v59 = v106;
    sub_1000089F8(v55, v106, &unk_10118D2F0, &unk_100EBCE10);
    sub_1000089F8(v20, v59 + v58, &unk_10118D2F0, &unk_100EBCE10);
    v60 = *(v56 + 48);
    if (v60(v59, 1, v57) == 1)
    {
      sub_1000095E8(v20, &unk_10118D2F0, &unk_100EBCE10);
      sub_1000095E8(v55, &unk_10118D2F0, &unk_100EBCE10);
      v61 = v60(v59 + v58, 1, v57);
      v47 = v127;
      if (v61 == 1)
      {
        sub_1000095E8(v59, &unk_10118D2F0, &unk_100EBCE10);
        v46 = 1;
        goto LABEL_40;
      }
    }

    else
    {
      v81 = v105;
      sub_1000089F8(v59, v105, &unk_10118D2F0, &unk_100EBCE10);
      v82 = v60(v59 + v58, 1, v57);
      v47 = v127;
      if (v82 != 1)
      {
        v83 = v124;
        v84 = v59 + v58;
        v85 = v108;
        (*(v124 + 32))(v108, v84, v57);
        sub_10001C0B4(&qword_1011819D0, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v86 = *(v83 + 8);
        v86(v85, v57);
        sub_1000095E8(v20, &unk_10118D2F0, &unk_100EBCE10);
        sub_1000095E8(v110, &unk_10118D2F0, &unk_100EBCE10);
        v86(v105, v57);
        sub_1000095E8(v59, &unk_10118D2F0, &unk_100EBCE10);
LABEL_40:
        v43 = v115;
        v45 = v116;
        if ((*(v131 + 16) & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_41:
        LODWORD(v131) = v46;
        type metadata accessor for MusicLibrary();
        static MusicLibrary.shared.getter();
        v87 = v118;
        (*(v44 + 16))(v118, v43, v45);
        v88 = v47;
        v90 = v119;
        v89 = v120;
        (*(v119 + 104))(v87, enum case for GenericMusicItem.song(_:), v120);
        MusicLibrary.state(for:)();

        (*(v90 + 8))(v87, v89);
        v91 = v112;
        dispatch thunk of MusicLibrary.GenericItemState.downloadStatus.getter();

        v92 = v126;
        v93 = v111;
        (*(v126 + 104))(v111, enum case for MusicLibrary.DownloadStatus.downloaded(_:), v88);
        (*(v92 + 56))(v93, 0, 1, v88);
        v94 = *(v121 + 48);
        v95 = v107;
        sub_1000089F8(v91, v107, &qword_10118F518, &unk_100ED77A0);
        sub_1000089F8(v93, v95 + v94, &qword_10118F518, &unk_100ED77A0);
        v96 = v44;
        v97 = *(v92 + 48);
        if (v97(v95, 1, v88) == 1)
        {
          sub_1000095E8(v93, &qword_10118F518, &unk_100ED77A0);
          sub_1000095E8(v91, &qword_10118F518, &unk_100ED77A0);
          (*(v96 + 8))(v115, v116);
          if (v97(v95 + v94, 1, v88) == 1)
          {
            sub_1000095E8(v95, &qword_10118F518, &unk_100ED77A0);
            v98 = 1;
LABEL_48:
            v48 = v131 & v98;
            return v48 & 1;
          }
        }

        else
        {
          v99 = v116;
          v100 = v104;
          sub_1000089F8(v95, v104, &qword_10118F518, &unk_100ED77A0);
          if (v97(v95 + v94, 1, v88) != 1)
          {
            v101 = v109;
            (*(v92 + 32))(v109, v95 + v94, v88);
            sub_10001C0B4(&unk_10118F520, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
            v98 = dispatch thunk of static Equatable.== infix(_:_:)();
            v102 = *(v92 + 8);
            v102(v101, v88);
            sub_1000095E8(v111, &qword_10118F518, &unk_100ED77A0);
            sub_1000095E8(v112, &qword_10118F518, &unk_100ED77A0);
            (*(v114 + 8))(v115, v99);
            v102(v100, v88);
            sub_1000095E8(v95, &qword_10118F518, &unk_100ED77A0);
            goto LABEL_48;
          }

          sub_1000095E8(v111, &qword_10118F518, &unk_100ED77A0);
          sub_1000095E8(v112, &qword_10118F518, &unk_100ED77A0);
          (*(v114 + 8))(v115, v99);
          (*(v92 + 8))(v100, v88);
        }

        sub_1000095E8(v95, &qword_10118F510, &unk_100ECBE20);
        v98 = 0;
        goto LABEL_48;
      }

      sub_1000095E8(v20, &unk_10118D2F0, &unk_100EBCE10);
      sub_1000095E8(v110, &unk_10118D2F0, &unk_100EBCE10);
      (*(v124 + 8))(v81, v57);
    }

    sub_1000095E8(v59, &qword_1011819C0, &unk_100EBD2E0);
    v46 = 0;
    goto LABEL_40;
  }

  v46 = 1;
  v47 = v127;
  if (*(v131 + 16))
  {
    goto LABEL_41;
  }

LABEL_10:
  (*(v44 + 8))(v43, v45);
  v48 = v46 & 1;
  return v48 & 1;
}

double sub_100429E44(char a1)
{
  v3 = a1 & 1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *&result = __chkstk_darwin().n128_u64[0];
  v6 = &v12 - v5;
  LODWORD(v5) = *(v1 + 16);
  *(v1 + 16) = a1;
  if (v5 != v3)
  {
    swift_beginAccess();
    *(v1 + 32) = _swiftEmptyDictionarySingleton;

    v7 = type metadata accessor for TaskPriority();
    v8 = *(*(v7 - 8) + 56);
    v8(v6, 1, 1, v7);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;

    sub_1001F4CB8(0, 0, v6, &unk_100ECBC48, v9);

    v8(v6, 1, 1, v7);
    type metadata accessor for MainActor();
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = &protocol witness table for MainActor;
    sub_1001F4CB8(0, 0, v6, &unk_100ECBC58, v11);
  }

  return result;
}

uint64_t sub_10042A018(uint64_t a1)
{
  type metadata accessor for LibraryPinsController();
  v1 = swift_allocObject();
  result = sub_10042A0E8();
  qword_101218C40 = v1;
  return result;
}

uint64_t sub_10042A054()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10042EB40, v2, v1);
}

uint64_t sub_10042A0E8()
{
  v1 = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v48 = v36 - v2;
  v3 = sub_10010FC20(&unk_101182130, &unk_100EBF5B0);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  __chkstk_darwin();
  v42 = v36 - v5;
  v6 = sub_10010FC20(&unk_101183B20, &unk_100EBDF20);
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  __chkstk_darwin();
  v43 = v36 - v8;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v10 = v36 - v9;
  v11 = sub_10010FC20(&unk_101197280, &unk_100ED5ED0);
  v12 = *(v11 - 8);
  v40 = v11;
  v41 = v12;
  __chkstk_darwin();
  v14 = v36 - v13;
  v15 = type metadata accessor for MusicRestrictions();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 24) = &_swiftEmptySetSingleton;
  v39 = v1 + 24;
  *(v1 + 32) = sub_10003C744(_swiftEmptyArrayStorage);
  *(v1 + 40) = 1;
  static MusicRestrictions.current.getter();
  v19 = MusicRestrictions.allowsExplicitContent.getter();
  v20 = *(v16 + 8);
  v20(v18, v15);
  *(v1 + 41) = v19 & 1;
  static MusicRestrictions.current.getter();
  v21 = MusicRestrictions.allowsMusicVideos.getter();
  v20(v18, v15);
  *(v1 + 42) = v21 & 1;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.pinsObserver.getter();

  v22 = dispatch thunk of MusicLibraryPinsObserver.pinsPublisher.getter();

  v49 = v22;
  sub_100027010();
  v23 = static OS_dispatch_queue.main.getter();
  v50 = v23;
  v24 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v25 = *(v24 - 8);
  v37 = *(v25 + 56);
  v38 = v25 + 56;
  v37(v10, 1, 1, v24);
  sub_10010FC20(&qword_10118BFE8, &qword_100ECBCC0);
  sub_100020674(&unk_101197290, &qword_10118BFE8, &qword_100ECBCC0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v36[1] = sub_10001C0B4(&qword_101184920, sub_100027010, &protocol conformance descriptor for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v10, &qword_101182140, &unk_100EBD2A0);

  swift_allocObject();
  swift_weakInit();
  v36[0] = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100020674(&qword_10118BFF0, &unk_101197280, &unk_100ED5ED0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v26 = v40;
  Publisher<>.sink(receiveValue:)();

  (*(v41 + 8))(v14, v26);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  NetworkMonitor.shared.unsafeMutableAddressor();

  v27 = v42;
  NetworkMonitor.$isOnline.getter();

  v28 = static OS_dispatch_queue.main.getter();
  v49 = v28;
  v37(v10, 1, 1, v24);
  sub_100020674(&qword_101184280, &unk_101182130, &unk_100EBF5B0, &protocol conformance descriptor for Published<A>.Publisher);
  v29 = v43;
  v30 = v44;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v10, &qword_101182140, &unk_100EBD2A0);

  (*(v45 + 8))(v27, v30);
  swift_allocObject();
  swift_weakInit();

  sub_100020674(&unk_101182180, &unk_101183B20, &unk_100EBDF20, v36[0]);
  v31 = v46;
  Publisher<>.sink(receiveValue:)();

  (*(v47 + 8))(v29, v31);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v32 = type metadata accessor for TaskPriority();
  v33 = v48;
  (*(*(v32 - 8) + 56))(v48, 1, 1, v32);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v1;

  sub_1001F4CB8(0, 0, v33, &unk_100ECBCD0, v34);

  return v1;
}

double sub_10042A8EC(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = &v9[-v2];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    *(v6 + 32) = _swiftEmptyDictionarySingleton;

    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    sub_1001F4CB8(0, 0, v3, &unk_100ECBD60, v8);
  }

  return result;
}

double sub_10042AA34(unsigned __int8 *a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = &v15[-v3];
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 40);
    *(Strong + 40) = v5;
    if (v5 != v8)
    {
      v9 = Strong;
      swift_beginAccess();
      *(v9 + 32) = _swiftEmptyDictionarySingleton;

      v10 = type metadata accessor for TaskPriority();
      v11 = *(*(v10 - 8) + 56);
      v11(v4, 1, 1, v10);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v9;

      sub_1001F4CB8(0, 0, v4, &unk_100ECBD48, v12);

      v11(v4, 1, 1, v10);
      type metadata accessor for MainActor();
      v13 = static MainActor.shared.getter();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = &protocol witness table for MainActor;
      sub_1001F4CB8(0, 0, v4, &unk_100ECBD58, v14);
    }
  }

  return result;
}

uint64_t sub_10042AC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v5 = type metadata accessor for MusicRestrictions();
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  sub_10010FC20(&qword_10118F4F8, &qword_100ECBCD8);
  v4[33] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_10118F500, &qword_100ECBCE0);
  v4[34] = v6;
  v4[35] = *(v6 - 8);
  v4[36] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_10118F508, &qword_100ECBCE8);
  v4[37] = v7;
  v4[38] = *(v7 - 8);
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_10042AE94, 0, 0);
}

uint64_t sub_10042AE94()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  static MusicRestrictions.updates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[40] = v4;
  *v4 = v0;
  v4[1] = sub_10042AFA0;
  v5 = v0[37];
  v6 = v0[33];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_10042AFA0()
{

  return _swift_task_switch(sub_10042B09C, 0, 0);
}

uint64_t sub_10042B09C()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[38] + 8))(v0[39], v0[37]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[21];
    (*(v3 + 32))(v0[32], v1, v2);
    v7 = MusicRestrictions.allowsExplicitContent.getter();
    v8 = *(v6 + 41);
    *(v6 + 41) = v7 & 1;
    if ((v7 & 1) != v8)
    {
      v9 = v0[28];
      v10 = v0[29];
      v11 = v0[21];
      *(v11 + 32) = _swiftEmptyDictionarySingleton;

      v12 = type metadata accessor for TaskPriority();
      v13 = *(v12 - 8);
      v61 = *(v13 + 56);
      v61(v10, 1, 1, v12);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v11;
      sub_1000089F8(v10, v9, &unk_101181520, &qword_100EBCC60);
      v63 = *(v13 + 48);
      LODWORD(v9) = v63(v9, 1, v12);

      v15 = v0[28];
      if (v9 == 1)
      {
        sub_1000095E8(v0[28], &unk_101181520, &qword_100EBCC60);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v13 + 8))(v15, v12);
      }

      v16 = v14[2];
      swift_unknownObjectRetain();

      if (v16)
      {
        swift_getObjectType();
        v17 = dispatch thunk of Actor.unownedExecutor.getter();
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      sub_1000095E8(v0[29], &unk_101181520, &qword_100EBCC60);
      v20 = swift_allocObject();
      *(v20 + 16) = &unk_100ECBCF0;
      *(v20 + 24) = v14;
      if (v19 | v17)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v17;
        v0[5] = v19;
      }

      v21 = v0[26];
      v22 = v0[27];
      swift_task_create();

      v61(v22, 1, 1, v12);
      type metadata accessor for MainActor();
      v23 = static MainActor.shared.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = &protocol witness table for MainActor;
      sub_1000089F8(v22, v21, &unk_101181520, &qword_100EBCC60);
      v25 = v63(v21, 1, v12);

      v26 = v0[26];
      if (v25 == 1)
      {
        sub_1000095E8(v0[26], &unk_101181520, &qword_100EBCC60);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v13 + 8))(v26, v12);
      }

      v27 = *(v24 + 16);
      swift_unknownObjectRetain();

      if (v27)
      {
        swift_getObjectType();
        v28 = dispatch thunk of Actor.unownedExecutor.getter();
        v30 = v29;
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      sub_1000095E8(v0[27], &unk_101181520, &qword_100EBCC60);
      v31 = swift_allocObject();
      *(v31 + 16) = &unk_100ECBD10;
      *(v31 + 24) = v24;
      if (v30 | v28)
      {
        v0[6] = 0;
        v0[7] = 0;
        v0[8] = v28;
        v0[9] = v30;
      }

      swift_task_create();
    }

    v32 = v0[21];
    v33 = MusicRestrictions.allowsMusicVideos.getter();
    v34 = *(v32 + 42);
    *(v32 + 42) = v33 & 1;
    if ((v33 & 1) != v34)
    {
      v35 = v0[24];
      v36 = v0[25];
      v37 = v0[21];
      *(v37 + 32) = _swiftEmptyDictionarySingleton;

      v38 = type metadata accessor for TaskPriority();
      v39 = *(v38 - 8);
      v62 = *(v39 + 56);
      v62(v36, 1, 1, v38);
      v40 = swift_allocObject();
      v40[2] = 0;
      v40[3] = 0;
      v40[4] = v37;
      sub_1000089F8(v36, v35, &unk_101181520, &qword_100EBCC60);
      v64 = *(v39 + 48);
      LODWORD(v35) = v64(v35, 1, v38);

      v41 = v0[24];
      if (v35 == 1)
      {
        sub_1000095E8(v0[24], &unk_101181520, &qword_100EBCC60);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v39 + 8))(v41, v38);
      }

      v42 = v40[2];
      swift_unknownObjectRetain();

      if (v42)
      {
        swift_getObjectType();
        v43 = dispatch thunk of Actor.unownedExecutor.getter();
        v45 = v44;
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0;
        v45 = 0;
      }

      sub_1000095E8(v0[25], &unk_101181520, &qword_100EBCC60);
      v46 = swift_allocObject();
      *(v46 + 16) = &unk_100ECBD20;
      *(v46 + 24) = v40;
      if (v45 | v43)
      {
        v0[10] = 0;
        v0[11] = 0;
        v0[12] = v43;
        v0[13] = v45;
      }

      v47 = v0[22];
      v48 = v0[23];
      swift_task_create();

      v62(v48, 1, 1, v38);
      type metadata accessor for MainActor();
      v49 = static MainActor.shared.getter();
      v50 = swift_allocObject();
      *(v50 + 16) = v49;
      *(v50 + 24) = &protocol witness table for MainActor;
      sub_1000089F8(v48, v47, &unk_101181520, &qword_100EBCC60);
      v51 = v64(v47, 1, v38);

      v52 = v0[22];
      if (v51 == 1)
      {
        sub_1000095E8(v0[22], &unk_101181520, &qword_100EBCC60);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v39 + 8))(v52, v38);
      }

      v53 = *(v50 + 16);
      swift_unknownObjectRetain();

      if (v53)
      {
        swift_getObjectType();
        v54 = dispatch thunk of Actor.unownedExecutor.getter();
        v56 = v55;
        swift_unknownObjectRelease();
      }

      else
      {
        v54 = 0;
        v56 = 0;
      }

      sub_1000095E8(v0[23], &unk_101181520, &qword_100EBCC60);
      v57 = swift_allocObject();
      *(v57 + 16) = &unk_100ECBD38;
      *(v57 + 24) = v50;
      if (v56 | v54)
      {
        v0[14] = 0;
        v0[15] = 0;
        v0[16] = v54;
        v0[17] = v56;
      }

      swift_task_create();
    }

    (*(v0[31] + 8))(v0[32], v0[30]);
    v58 = swift_task_alloc();
    v0[40] = v58;
    *v58 = v0;
    v58[1] = sub_10042AFA0;
    v59 = v0[37];
    v60 = v0[33];

    return AsyncStream.Iterator.next(isolation:)(v60, 0, 0, v59);
  }
}

uint64_t sub_10042BAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v134 = a2;
  v157 = a1;
  v155 = a3;
  v153 = type metadata accessor for Logger();
  v148 = *(v153 - 8);
  __chkstk_darwin();
  v152 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v156 = *(v158 - 8);
  __chkstk_darwin();
  v133 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = &v107 - v5;
  v116 = type metadata accessor for Song();
  v115 = *(v116 - 8);
  __chkstk_darwin();
  v113 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v107 - v7;
  v120 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  v119 = *(v120 - 8);
  __chkstk_darwin();
  v118 = &v107 - v8;
  v129 = type metadata accessor for Playlist();
  v128 = *(v129 - 8);
  __chkstk_darwin();
  v127 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for MusicVideo();
  v130 = *(v131 - 8);
  __chkstk_darwin();
  v125 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v126 = &v107 - v11;
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v112 = &v107 - v12;
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v110 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v111 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v124 = &v107 - v15;
  v122 = _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v135 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v123 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v138 = *(v139 - 8);
  __chkstk_darwin();
  v137 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v136 = &v107 - v19;
  v141 = type metadata accessor for Artist();
  v140 = *(v141 - 8);
  __chkstk_darwin();
  v142 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&qword_101188E88, &unk_100ECBD70);
  v147 = *(v21 - 8);
  __chkstk_darwin();
  v23 = &v107 - v22;
  v24 = type metadata accessor for Album();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v27 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for MusicPin.Item();
  v29 = *(v28 - 8);
  __chkstk_darwin();
  v151 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = &v107 - v31;
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v34 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v117 = &v107 - v35;
  __chkstk_darwin();
  v37 = &v107 - v36;
  __chkstk_darwin();
  v109 = &v107 - v38;
  __chkstk_darwin();
  v121 = &v107 - v39;
  __chkstk_darwin();
  v146 = &v107 - v40;
  v41 = __chkstk_darwin();
  v143 = &v107 - v42;
  v43 = *(v29 + 16);
  v145 = v29 + 16;
  v144 = v43;
  v43(v32, v157, v28, v41);
  v44 = (*(v29 + 88))(v32, v28);
  v149 = v25;
  v150 = v24;
  if (v44 == enum case for MusicPin.Item.album(_:))
  {
    (*(v29 + 96))(v32, v28);
    (*(v25 + 32))(v27, v32, v24);
    type metadata accessor for Track();
    MusicLibrarySectionedRequest.init()();
    swift_getKeyPath();
    LOBYTE(v162) = 1;
    MusicLibrarySectionedRequest<>.includeSections<A>(matching:equalTo:)();

    v108 = v28;
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    v163 = v21;
    v164 = sub_100020674(&qword_101188E90, &qword_101188E88, &unk_100ECBD70, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v45 = sub_10001C8B8(&v162);
    v46 = v147;
    (*(v147 + 16))(v45, v23, v21);
    v161 = 0;
    v159 = 0u;
    v160 = 0u;
    v37 = v146;
    MusicPlaybackIntentDescriptor.init(request:startingAt:)();
    v47 = v156;
    (*(v46 + 8))(v23, v21);
    (*(v149 + 8))(v27, v150);
    goto LABEL_13;
  }

  v48 = v154;
  if (v44 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v29 + 96))(v32, v28);
    v49 = v140;
    v50 = v142;
    v51 = v141;
    (*(v140 + 32))(v142, v32, v141);
    v52 = v136;
    Artist.pinPlayabilityStatus(isOnline:explicitContentIsAllowed:)(*(v48 + 40), *(v48 + 41), v136);
    v53 = v138;
    v54 = v137;
    v55 = v139;
    (*(v138 + 104))(v137, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v139);
    v56 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
    v57 = *(v53 + 8);
    v57(v54, v55);
    v57(v52, v55);
    if ((v56 & 1) == 0)
    {
      (*(v49 + 8))(v50, v51);
      return (*(v156 + 56))(v155, 1, 1, v158);
    }

    v58 = v49;
    v59 = Artist.id.getter();
    v61 = v60;
    swift_beginAccess();
    v62 = *(v48 + 32);
    v47 = v156;
    if (*(v62 + 16))
    {
      v63 = sub_100019C10(v59, v61);
      v65 = v64;

      v66 = v143;
      v67 = v58;
      if (v65)
      {
        v68 = *(*(v62 + 56) + v63);
        swift_endAccess();
        v69 = v142;
        v70 = v51;
        if ((v68 & 1) == 0)
        {
          v71 = v110;
          (*(v67 + 16))(v110, v142, v70);
          v72 = 1;
          (*(v67 + 56))(v71, 0, 1, v70);
          if ((*(v48 + 16) & 1) == 0)
          {
            v72 = *(v48 + 40) ^ 1;
          }

          v73 = v111;
          sub_1006FC4AC(v71, v72 & 1, v111);
          v74 = v112;
          (*(v130 + 56))(v112, 1, 1, v131);
          v75 = v109;
          sub_1006FD384(v74, v109);
          sub_1000095E8(v74, &unk_1011846B0, &unk_100ECB630);
          sub_10042EAD0(v73, _s11MusicVideosVMa);
          (*(v67 + 8))(v69, v70);
          v76 = v75;
          goto LABEL_27;
        }

        goto LABEL_23;
      }

      swift_endAccess();
      v69 = v142;
    }

    else
    {
      v69 = v50;
      swift_endAccess();

      v66 = v143;
      v67 = v58;
    }

    v70 = v51;
LABEL_23:
    (*(v67 + 16))(v135, v69, v70);
    swift_storeEnumTagMultiPayload();
    if (*(v48 + 16))
    {
      v88 = 1;
    }

    else
    {
      v88 = *(v48 + 40) ^ 1;
    }

    v90 = v149;
    v89 = v150;
    v91 = v123;
    sub_1002884E4(v135, v88 & 1, v123);
    v92 = v124;
    (*(v90 + 56))(v124, 1, 1, v89);
    v93 = v121;
    sub_100289108(v92, v121);
    sub_1000095E8(v92, &unk_101184730, &unk_100ECB920);
    sub_10042EAD0(v91, _s6AlbumsVMa);
    (*(v67 + 8))(v69, v70);
    v76 = v93;
    goto LABEL_27;
  }

  if (v44 != enum case for MusicPin.Item.musicVideo(_:))
  {
    if (v44 == enum case for MusicPin.Item.playlist(_:))
    {
      (*(v29 + 96))(v32, v28);
      (*(v128 + 32))(v127, v32, v129);
      type metadata accessor for Playlist.Entry();
      v82 = v118;
      MusicLibrarySectionedRequest.init()();
      v108 = v28;
      v101 = v120;
      MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
      v102 = v127;
      MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
      type metadata accessor for PlaylistSortingController(0);
      static PlaylistSortingController.apply(for:to:)(v102, v82);
      v163 = v101;
      v164 = sub_100020674(&qword_1011831B8, &qword_10118A3B0, &qword_100EE4B40, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
      v103 = sub_10001C8B8(&v162);
      v104 = v119;
      (*(v119 + 16))(v103, v82, v101);
      v161 = 0;
      v159 = 0u;
      v160 = 0u;
      v105 = v117;
      MusicPlaybackIntentDescriptor.init(request:startingAt:)();
      (*(v104 + 8))(v82, v101);
      (*(v128 + 8))(v102, v129);
      v47 = v156;
      (*(v156 + 56))(v105, 0, 1, v158);
      v76 = v105;
    }

    else
    {
      if (v44 != enum case for MusicPin.Item.song(_:))
      {
        (*(v156 + 56))(v155, 1, 1, v158);
        return (*(v29 + 8))(v32, v28);
      }

      v83 = *(v29 + 96);
      v108 = v28;
      v83(v32, v28);
      v84 = v115;
      v85 = v114;
      v86 = v32;
      v87 = v116;
      (*(v115 + 32))(v114, v86, v116);
      (*(v84 + 16))(v113, v85, v87);
      MusicPlaybackIntentDescriptor.init<A>(item:)();
      (*(v84 + 8))(v85, v87);
      v106 = v156;
      (*(v156 + 56))(v34, 0, 1, v158);
      v76 = v34;
      v47 = v106;
    }

    goto LABEL_14;
  }

  (*(v29 + 96))(v32, v28);
  v77 = v130;
  v78 = v126;
  v79 = v32;
  v80 = v131;
  (*(v130 + 32))(v126, v79, v131);
  (*(v77 + 16))(v125, v78, v80);
  sub_10001C0B4(&unk_101193C00, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
  MusicPlaybackIntentDescriptor.init<A>(item:)();
  (*(v77 + 8))(v78, v80);
  v47 = v156;
LABEL_13:
  (*(v47 + 56))(v37, 0, 1, v158);
  v76 = v37;
LABEL_14:
  v66 = v143;
LABEL_27:
  sub_1003FAC48(v76, v66);
  v94 = *(v47 + 48);
  if (!v94(v66, 1, v158))
  {
    v95 = v132;
    v96 = v158;
    (*(v47 + 16))(v132, v66, v158);
    v97 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v47 + 8))(v95, v96);
    [v97 setShuffleMode:v134 & 1];
  }

  if (!v94(v66, 1, v158))
  {
    v98 = v133;
    v99 = v158;
    (*(v47 + 16))(v133, v66, v158);
    v100 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v47 + 8))(v98, v99);
    [v100 setRepeatMode:0];
  }

  return sub_1003FAC48(v66, v155);
}

uint64_t sub_10042D40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_10010FC20(&unk_1011972A0, &qword_100ECBC60);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_10042D4D8, 0, 0);
}

uint64_t sub_10042D4D8()
{
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.pinsObserver.getter();

  dispatch thunk of MusicLibraryPinsObserver.pins.getter();

  v1 = swift_allocObject();
  v0[6] = v1;
  swift_weakInit();
  v2 = swift_task_alloc();
  v0[7] = v2;
  v3 = sub_100020674(&qword_1011972B0, &unk_1011972A0, &qword_100ECBC60, &protocol conformance descriptor for MusicItemCollection<A>);
  *v2 = v0;
  v2[1] = sub_10042D63C;
  v4 = v0[3];

  return Collection.asyncForEach<A>(operation:)(&unk_100ECBC70, v1, v4, (&type metadata for () + 1), v3);
}

uint64_t sub_10042D63C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10042D7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v4 = sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_10010FC20(&unk_1011929A0, &unk_100ECBC80);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_101181B20, &qword_100EBD5E0);
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v7 = type metadata accessor for Artist();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v8 = type metadata accessor for MusicPin.Item();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_10042DA04, 0, 0);
}

uint64_t sub_10042DA04()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v3 = v0[26];
    v2 = v0[27];
    v4 = v0[25];
    MusicPin.item.getter();
    v5 = (*(v3 + 88))(v2, v4);
    v7 = v0[26];
    v6 = v0[27];
    v8 = v0[25];
    if (v5 == enum case for MusicPin.Item.artist(_:))
    {
      v10 = v0[23];
      v9 = v0[24];
      v11 = v0[22];
      (*(v7 + 96))(v0[27], v0[25]);
      (*(v10 + 32))(v9, v6, v11);
      type metadata accessor for Album();
      MusicLibraryRequest.init()();
      swift_getKeyPath();
      MusicLibraryRequest.filter<A>(matching:contains:)();

      MusicLibraryRequest.includeOnlyDownloadedContent.setter();
      MusicLibraryRequest.limit.setter();
      v14 = swift_task_alloc();
      v0[29] = v14;
      *v14 = v0;
      v14[1] = sub_10042DC84;
      v15 = v0[18];
      v16 = v0[19];

      return MusicLibraryRequest.response()(v15, v16);
    }

    (*(v7 + 8))(v6, v8);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10042DC84()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_10042E0BC;
  }

  else
  {
    v2 = sub_10042DD98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10042DD98()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  MusicLibraryResponse.items.getter();
  (*(v2 + 8))(v1, v3);
  sub_100020674(&unk_10118C140, &qword_1011815C0, &unk_100EBD040, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v6 + 8))(v4, v5);
  *(v0 + 248) = *(v0 + 72);
  type metadata accessor for MainActor();
  *(v0 + 264) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10042DEE4, v8, v7);
}

uint64_t sub_10042DEE4()
{
  v1 = v0[32];
  v2 = v0[31];
  v3 = v0[28];

  LOBYTE(v1) = v2 != v1;
  v4 = Artist.id.getter();
  v6 = v5;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 32);
  *(v3 + 32) = 0x8000000000000000;
  sub_1006C64D4(v1, v4, v6, isUniquelyReferenced_nonNull_native);

  *(v3 + 32) = v9;
  swift_endAccess();

  return _swift_task_switch(sub_10042DFD8, 0, 0);
}

uint64_t sub_10042DFD8()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10042E0BC()
{
  v17 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v2 + 8))(v1, v3);
  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, static Logger.libraryView);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[30];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v0[8] = v8;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000105AC(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "updatePinnedArtistHasAlbumsCache error=%s", v9, 0xCu);
    sub_10000959C(v10);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10042E314()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10042E3A8, v2, v1);
}

uint64_t sub_10042E3A8()
{

  v1 = [objc_opt_self() defaultCenter];
  sub_10032E7E0();
  NSNotificationCenter.post<A>(_:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10042E444()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10042E4A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10042D40C(a1, v4, v5, v6);
}

uint64_t sub_10042E55C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_10042A054();
}

uint64_t sub_10042E608(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100008F30;

  return sub_10042D7B0(a1, a2, v2);
}

NSString sub_10042E6B4()
{
  result = String._bridgeToObjectiveC()();
  qword_101218C48 = result;
  return result;
}

id sub_10042E6EC()
{
  if (qword_10117F6E0 != -1)
  {
    swift_once();
  }

  v1 = qword_101218C48;

  return v1;
}

uint64_t sub_10042E760(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10042AC40(a1, v4, v5, v6);
}

uint64_t sub_10042E814()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_10042A054();
}

uint64_t sub_10042E8C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_100009740(a1, v4);
}

uint64_t sub_10042E978()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  return sub_10042E314();
}

uint64_t sub_10042EA24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_10042A054();
}

uint64_t sub_10042EAD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10042EB44(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t a4)
{
  v4 = a4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v36 - v6;
  sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  __chkstk_darwin();
  v9 = &v36 - v8;
  v10 = type metadata accessor for PlaybackIntentDescriptor(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v38 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v36 - v13;
  v15 = __chkstk_darwin();
  v17 = &v36 - v16;
  a2(v15);
  v39 = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10042EF7C(v9);
  }

  v19 = 0xD000000000000015;
  sub_1001DFD58(v9, v17);
  v41 = 0x6F74747542726142;
  v42 = 0xEA00000000003A6ELL;
  v37 = v7;
  if (v4)
  {
    if (v4 == 1)
    {
      v19 = 0xD000000000000018;
      v20 = "PlayIntentButton.sing";
    }

    else
    {
      v20 = "Header.PlaybackControls: ";
    }
  }

  else
  {
    v20 = "PlayIntentButton.shuffle";
  }

  v21._object = (v20 | 0x8000000000000000);
  v21._countAndFlagsBits = v19;
  String.append(_:)(v21);

  v22 = v41;
  v23 = v42;
  PlaybackIntentDescriptor.configure(for:)(v4);
  v24 = &v17[*(v10 + 32)];
  if (*(v24 + 24))
  {
    sub_100008FE4(&v17[*(v10 + 32)], &v41);
    v25 = v43;
    v26 = v44;
    sub_10000954C(&v41, v43);
    v40[3] = &type metadata for Player.CommandIssuerIdentity;
    v40[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v40[0] = v22;
    v40[1] = v23;

    v27 = Player.CommandIssuer.appending(_:)(v40, v25, v26);
    v29 = v28;
    sub_10000959C(v40);
    sub_10000959C(&v41);
    v43 = &type metadata for Player.CommandIssuerIdentity;
    v44 = &protocol witness table for Player.CommandIssuerIdentity;
    if (v29)
    {

      v22 = v27;
      v23 = v29;
    }
  }

  else
  {
    v43 = &type metadata for Player.CommandIssuerIdentity;
    v44 = &protocol witness table for Player.CommandIssuerIdentity;
  }

  v41 = v22;
  v42 = v23;
  sub_1003F8500(&v41, v24);
  sub_1001DFCE4(v17, v14);
  v30 = type metadata accessor for TaskPriority();
  v31 = v37;
  (*(*(v30 - 8) + 56))(v37, 1, 1, v30);
  v32 = v38;
  sub_1001DFCE4(v14, v38);
  type metadata accessor for MainActor();
  v33 = static MainActor.shared.getter();
  v34 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v32, v35 + v34);
  sub_1001F4F78(0, 0, v31, &unk_100ECA700, v35);

  sub_100188CDC(v14);
  return sub_100188CDC(v17);
}

uint64_t sub_10042EF7C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10042EFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a2;
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v8 = &v48 - v7;
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v10 = &v48 - v9;
  v11 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v50 = &v48 - v13;
  UUID.init()();
  v14 = (v4 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_playlistCreationViewController);
  *v14 = 0;
  v14[1] = 0;
  *(v4 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_contextCompletionHandlers) = _swiftEmptyArrayStorage;
  sub_100430324(a1, v4 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_initialContext);
  v15 = [objc_allocWithZone(UINavigationController) init];
  *(v4 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_navigationController) = v15;
  v16 = type metadata accessor for PlaylistCreation.Context(0);
  v17 = (a1 + v16[7]);
  v18 = *v17;
  if (*v17)
  {
    v49 = a3;
    v48 = v17[1];
    v19 = v48;
    sub_10010FC20(&qword_10118F810, &qword_100ECF210);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100EBC6B0;
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = v19;
    *(v20 + 32) = sub_1004303F0;
    *(v20 + 40) = v21;
    v22 = v16;
    v23 = v10;
    v24 = v12;
    v25 = v11;
    v26 = a1;
    v27 = v8;
    v28 = OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_contextCompletionHandlers;
    swift_beginAccess();
    *(v4 + v28) = v20;
    v8 = v27;
    a1 = v26;
    v11 = v25;
    v12 = v24;
    v10 = v23;
    v16 = v22;
    a3 = v49;
  }

  sub_1000089F8(a1 + v16[6], v10, &unk_1011842D0, &qword_100ECBF00);
  v29 = *(v12 + 48);
  if (v29(v10, 1, v11) == 1)
  {
    type metadata accessor for Track();
    v30 = v50;
    MusicItemCollection.init(arrayLiteral:)();
    if (v29(v10, 1, v11) != 1)
    {
      sub_1000095E8(v10, &unk_1011842D0, &qword_100ECBF00);
    }
  }

  else
  {
    v31 = v50;
    (*(v12 + 32))(v50, v10, v11);
    v30 = v31;
  }

  sub_1000089F8(a1, v8, &unk_10118F670, &unk_100EC89B0);
  v32 = (a1 + v16[5]);
  v33 = *v32;
  v34 = v32[1];
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v37 = v51;
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = a3;
  objc_allocWithZone(_s14ViewControllerCMa(0));

  v38 = sub_1001EC8AC(v30, v8, v33, v34, sub_100430388, v36);
  v39 = OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_navigationController;
  v40 = *(v4 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_navigationController);
  v41 = v38;
  [v40 pushViewController:v41 animated:0];
  [*(v4 + v39) setModalPresentationStyle:2];
  v52 = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate;
  v42 = swift_dynamicCastObjCProtocolUnconditional();
  v43 = [*(v4 + v39) presentationController];
  if (v43)
  {
    v44 = v43;
    [v43 setDelegate:v42];
  }

  else
  {

    v44 = v41;
  }

  sub_100430394(a1);
  v45 = (v4 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_playlistCreationViewController);
  v46 = *(v4 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_playlistCreationViewController);
  *v45 = v41;
  v45[1] = &off_1010A0AA0;

  return v4;
}

double sub_10042F520(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_contextCompletionHandlers;
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + v7);
    __chkstk_darwin();
    v10[2] = a1;

    sub_1003C1864(sub_100430418, v10, v9);

    *(v8 + v7) = _swiftEmptyArrayStorage;

    a3(v8, a1);
  }

  return result;
}

uint64_t sub_10042F63C(uint64_t a1)
{
  v63 = a1;
  v2 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin();
  v55 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v54 - v4;
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v56 = &v54 - v5;
  v58 = sub_10010FC20(&qword_10118F818, &unk_100ECBFB0);
  __chkstk_darwin();
  v7 = &v54 - v6;
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v9 = &v54 - v8;
  v10 = type metadata accessor for Playlist.Folder();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for PlaylistCreation.Context(0);
  __chkstk_darwin();
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v1;
  v16 = v1 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_initialContext;
  swift_beginAccess();
  v59 = v16;
  sub_100430324(v16, v15);
  v17 = *(v11 + 48);
  if (v17(v15, 1, v10))
  {
    sub_100430394(v15);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    (*(v11 + 16))(v13, v15, v10);
    sub_100430394(v15);
    v18 = Playlist.Folder.id.getter();
    v19 = v20;
    (*(v11 + 8))(v13, v10);
  }

  v21 = v63;
  sub_1000089F8(v63, v9, &unk_10118F670, &unk_100EC89B0);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1000095E8(v9, &unk_10118F670, &unk_100EC89B0);
    if (!v19)
    {
      goto LABEL_16;
    }

LABEL_14:

    return 0;
  }

  v22 = Playlist.Folder.id.getter();
  v24 = v23;
  (*(v11 + 8))(v9, v10);
  if (v19)
  {
    if (!v24)
    {
      goto LABEL_14;
    }

    if (v18 == v22 && v19 == v24)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = 0;
      if ((v26 & 1) == 0)
      {
        return result;
      }
    }
  }

  else if (v24)
  {
    goto LABEL_14;
  }

LABEL_16:
  v28 = v59;
  v27 = v60;
  v29 = *(v60 + 24);
  v30 = *(v58 + 48);
  sub_1000089F8(v59 + v29, v7, &unk_1011842D0, &qword_100ECBF00);
  sub_1000089F8(v21 + v29, &v7[v30], &unk_1011842D0, &qword_100ECBF00);
  v32 = v61;
  v31 = v62;
  v33 = *(v61 + 48);
  v34 = v33(&v7[v30], 1, v62);
  v35 = v33(v7, 1, v31);
  if (v34 == 1)
  {
    if (v35 != 1)
    {
      sub_1000095E8(v7, &unk_1011842D0, &qword_100ECBF00);
    }
  }

  else
  {
    v36 = *(v32 + 32);
    if (v35 == 1)
    {
      v37 = &v7[v30];
      v38 = v56;
      v39 = v56;
    }

    else
    {
      v40 = v54;
      v36(v54, v7, v31);
      v41 = &v7[v30];
      v42 = v55;
      v36(v55, v41, v31);
      type metadata accessor for Track();
      static MusicItemCollection.+= infix(_:_:)();
      (*(v32 + 8))(v42, v31);
      v38 = v56;
      v39 = v56;
      v37 = v40;
    }

    v36(v39, v37, v31);
    (*(v32 + 56))(v38, 0, 1, v31);
    swift_beginAccess();
    sub_1004304B4(v38, v28 + *(v27 + 24));
    swift_endAccess();
  }

  v43 = (v21 + *(v27 + 28));
  v44 = *v43;
  if (*v43)
  {
    v45 = v43[1];
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    *(v46 + 24) = v45;
    v47 = OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_contextCompletionHandlers;
    v48 = v57;
    swift_beginAccess();
    v49 = *(v48 + v47);
    sub_100030444(v44, v45);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v48 + v47) = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_10049A560(0, v49[2] + 1, 1, v49);
      *(v48 + v47) = v49;
    }

    v52 = v49[2];
    v51 = v49[3];
    if (v52 >= v51 >> 1)
    {
      v49 = sub_10049A560((v51 > 1), v52 + 1, 1, v49);
    }

    v49[2] = v52 + 1;
    v53 = &v49[2 * v52];
    v53[4] = sub_100430524;
    v53[5] = v46;
    *(v48 + v47) = v49;
    swift_endAccess();
    sub_100020438(v44, v45);
  }

  return 1;
}

uint64_t sub_10042FD58()
{
  v1 = OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100430394(v0 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_initialContext);

  return swift_deallocClassInstance();
}

uint64_t sub_10042FE5C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PlaylistCreation.Context(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_10042FFA4(uint64_t a1)
{
  sub_100430030(319);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, qword_10118F7C8, &qword_1011824A0, &unk_100EBE390);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100430030(uint64_t a1)
{
  if (!qword_10118F7B8)
  {
    type metadata accessor for Playlist();
    sub_1001109D0(&qword_10118F7C0, &unk_100ECBF30);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10118F7B8);
    }
  }
}

Swift::Int sub_1004300B4()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1004302DC(&unk_1011838B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100430154(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1004302DC(&unk_1011838B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1004301DC(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1004302DC(&unk_1011838B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004302DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100430324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCreation.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100430394(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCreation.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100430450()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218C50);
  sub_1000060E4(v0, qword_101218C50);
  return static Logger.music(_:)(0xD000000000000010, 0x8000000100ECBEF0);
}

uint64_t sub_1004304B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100430558(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return v2;
}

uint64_t sub_1004305E4()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist.Entry();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Track();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7ElementV4ItemOMa(0);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004325C4(v1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v11, v2);
    Playlist.Entry.catalogID.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    if (v13)
    {
LABEL_3:

      return 0;
    }
  }

  else
  {
    (*(v7 + 32))(v9, v11, v6);
    Track.catalogID.getter();
    v16 = v15;
    (*(v7 + 8))(v9, v6);
    if (v16)
    {
      goto LABEL_3;
    }
  }

  return 1;
}

uint64_t sub_100430824()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist.Entry();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Track();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7ElementV4ItemOMa(0);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004325C4(v1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v11, v2);
    v12 = Playlist.Entry.catalogID.getter();
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0x497972617262696CLL;
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v11, v6);
    v15 = Track.catalogID.getter();
    if (v16)
    {
      v14 = v15;
    }

    else
    {
      v14 = 0x497972617262696CLL;
    }

    (*(v7 + 8))(v9, v6);
  }

  return v14;
}

uint64_t sub_100430A8C(__n128 a1)
{
  v2 = type metadata accessor for Playlist.Entry.InternalItem();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist.Entry();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7ElementV4ItemOMa(0);
  __chkstk_darwin();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1004305E4())
  {
    return 0x497972617262696CLL;
  }

  sub_1004325C4(v1, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10043251C(v11, v13);
    return 1735290739;
  }

  (*(v7 + 32))(v9, v11, v6);
  Playlist.Entry.internalItem.getter();
  v14 = (*(v3 + 88))(v5, v2);
  if (v14 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v7 + 8))(v9, v6);
    (*(v3 + 8))(v5, v2);
    return 0x6569766F6DLL;
  }

  if (v14 == enum case for Playlist.Entry.InternalItem.musicVideo(_:) || v14 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
    return 1735290739;
  }

  if (v14 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v7 + 8))(v9, v6);
    (*(v3 + 8))(v5, v2);
    return 0x646F736970457674;
  }

  else if (v14 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) || v14 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v7 + 8))(v9, v6);
    (*(v3 + 8))(v5, v2);
    return 0xD000000000000013;
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t sub_100430E7C()
{
  v1 = type metadata accessor for UploadedVideo();
  v42 = *(v1 - 8);
  v43 = v1;
  __chkstk_darwin();
  v41 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UploadedAudio();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin();
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TVEpisode();
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin();
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Song();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin();
  v50 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicVideo();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin();
  v53 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MusicMovie();
  v56 = *(v11 - 8);
  v57 = v11;
  __chkstk_darwin();
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Playlist.Entry.InternalItem();
  v15 = *(v14 - 8);
  v58 = v14;
  v59 = v15;
  __chkstk_darwin();
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Playlist.Entry();
  v18 = *(v60 - 8);
  __chkstk_darwin();
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Track();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7ElementV4ItemOMa(0);
  __chkstk_darwin();
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1004305E4())
  {
    return 0x497972617262696CLL;
  }

  sub_1004325C4(v0, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v18;
    v29 = v60;
    (*(v18 + 32))(v20, v26, v60);
    Playlist.Entry.internalItem.getter();
    v31 = v58;
    v30 = v59;
    v32 = (*(v59 + 88))(v17, v58);
    if (v32 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
    {
      (*(v30 + 96))(v17, v31);
      v34 = v56;
      v33 = v57;
      (*(v56 + 32))(v13, v17, v57);
      v35 = MusicMovie.title.getter();
      (*(v34 + 8))(v13, v33);
    }

    else
    {
      if (v32 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        (*(v30 + 96))(v17, v31);
        v37 = v53;
        v36 = v54;
        v38 = v55;
        (*(v54 + 32))(v53, v17, v55);
        v39 = MusicVideo.title.getter();
      }

      else if (v32 == enum case for Playlist.Entry.InternalItem.song(_:))
      {
        (*(v30 + 96))(v17, v31);
        v37 = v50;
        v36 = v51;
        v38 = v52;
        (*(v51 + 32))(v50, v17, v52);
        v39 = Song.title.getter();
      }

      else if (v32 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
      {
        (*(v30 + 96))(v17, v31);
        v37 = v47;
        v36 = v48;
        v38 = v49;
        (*(v48 + 32))(v47, v17, v49);
        v39 = TVEpisode.title.getter();
      }

      else if (v32 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
      {
        (*(v30 + 96))(v17, v31);
        v37 = v44;
        v36 = v45;
        v38 = v46;
        (*(v45 + 32))(v44, v17, v46);
        v39 = UploadedAudio.title.getter();
      }

      else
      {
        if (v32 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
        {
          (*(v18 + 8))(v20, v29);
          (*(v30 + 8))(v17, v31);
          return 0;
        }

        (*(v30 + 96))(v17, v31);
        v37 = v41;
        v36 = v42;
        v38 = v43;
        (*(v42 + 32))(v41, v17, v43);
        v39 = UploadedVideo.title.getter();
      }

      v35 = v39;
      (*(v36 + 8))(v37, v38);
    }

    (*(v28 + 8))(v20, v29);
  }

  else
  {
    (*(v22 + 32))(v24, v26, v21);
    v35 = Track.title.getter();
    (*(v22 + 8))(v24, v21);
  }

  return v35;
}

uint64_t sub_1004316EC()
{
  v1 = type metadata accessor for UploadedVideo();
  v40 = *(v1 - 8);
  v41 = v1;
  __chkstk_darwin();
  v39 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UploadedAudio();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin();
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Song();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin();
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicVideo();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin();
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicMovie();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin();
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Playlist.Entry.InternalItem();
  v13 = *(v12 - 8);
  v53 = v12;
  v54 = v13;
  __chkstk_darwin();
  v55 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Playlist.Entry();
  v56 = *(v15 - 8);
  v57 = v15;
  __chkstk_darwin();
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Track();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7ElementV4ItemOMa(0);
  __chkstk_darwin();
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  if ((sub_1004305E4() & 1) == 0)
  {
    sub_1004325C4(v0, v23);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v56;
      v26 = v57;
      v27 = v17;
      (*(v56 + 32))(v17, v23, v57);
      v28 = v55;
      Playlist.Entry.internalItem.getter();
      v30 = v53;
      v29 = v54;
      v31 = (*(v54 + 88))(v28, v53);
      if (v31 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
      {
        (*(v29 + 96))(v28, v30);
        v33 = v51;
        v32 = v52;
        (*(v51 + 32))(v11, v28, v52);
        v24 = MusicMovie.artistName.getter();
        (*(v33 + 8))(v11, v32);
LABEL_11:
        (*(v25 + 8))(v27, v26);
        return v24;
      }

      if (v31 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        (*(v29 + 96))(v28, v30);
        v34 = v48;
        v35 = v49;
        v36 = v50;
        (*(v49 + 32))(v48, v28, v50);
        v37 = MusicVideo.artistName.getter();
      }

      else
      {
        if (v31 != enum case for Playlist.Entry.InternalItem.song(_:))
        {
          if (v31 != enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
          {
            if (v31 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
            {
              (*(v29 + 96))(v28, v30);
              v34 = v42;
              v35 = v43;
              v36 = v44;
              (*(v43 + 32))(v42, v28, v44);
              v37 = UploadedAudio.artistName.getter();
              goto LABEL_10;
            }

            if (v31 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
            {
              (*(v29 + 96))(v28, v30);
              v34 = v39;
              v35 = v40;
              v36 = v41;
              (*(v40 + 32))(v39, v28, v41);
              v37 = UploadedVideo.artistName.getter();
              goto LABEL_10;
            }
          }

          (*(v25 + 8))(v17, v26);
          (*(v29 + 8))(v28, v30);
          return 0;
        }

        (*(v29 + 96))(v28, v30);
        v34 = v45;
        v35 = v46;
        v36 = v47;
        (*(v46 + 32))(v45, v28, v47);
        v37 = Song.artistName.getter();
      }

LABEL_10:
      v24 = v37;
      (*(v35 + 8))(v34, v36);
      goto LABEL_11;
    }

    (*(v19 + 32))(v21, v23, v18);
    v24 = Track.artistName.getter();
    (*(v19 + 8))(v21, v18);
  }

  return v24;
}

uint64_t sub_100431E88(uint64_t a1)
{
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v2 = sub_1000160B4(v5), (v3 & 1) != 0))
  {
    sub_10000DD18(*(a1 + 56) + 32 * v2, v6);
    sub_10001621C(v5);
    if (swift_dynamicCast())
    {
      return 25705;
    }
  }

  else
  {
    sub_10001621C(v5);
  }

  return 0;
}

uint64_t sub_100431F58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100430558(a1, WitnessTable);
}

uint64_t sub_100431FAC(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v24 = type metadata accessor for Playlist.Entry();
  v2 = *(v24 - 8);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Track();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7ElementV4ItemOMa(0);
  __chkstk_darwin();
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v23 - v11;
  sub_10010FC20(&qword_10118F8C8, &unk_100ECC0F0);
  __chkstk_darwin();
  v14 = &v23 - v13;
  v16 = *(v15 + 56);
  sub_1004325C4(v25, &v23 - v13);
  sub_1004325C4(v26, &v14[v16]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1004325C4(v14, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = v24;
      (*(v2 + 32))(v4, &v14[v16], v24);
      v18 = static Playlist.Entry.== infix(_:_:)();
      v19 = *(v2 + 8);
      v19(v4, v17);
      v19(v10, v17);
LABEL_9:
      sub_10043251C(v14, v20);
      return v18 & 1;
    }

    (*(v2 + 8))(v10, v24);
  }

  else
  {
    sub_1004325C4(v14, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v8, &v14[v16], v5);
      v18 = static Track.== infix(_:_:)();
      v21 = *(v6 + 8);
      v21(v8, v5);
      v20.n128_f64[0] = v21(v12, v5);
      goto LABEL_9;
    }

    (*(v6 + 8))(v12, v5);
  }

  sub_10043269C(v14);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_10043231C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010BC60(_swiftEmptyArrayStorage);
  v23 = &type metadata for String;
  *&v22 = sub_100430824();
  *(&v22 + 1) = v5;
  sub_100016270(&v22, v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C5E68(v21, 25705, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  v23 = &type metadata for Int;
  *&v22 = a2;
  sub_100016270(&v22, v21);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C5E68(v21, 0x6973736572706D69, 0xEF7865646E496E6FLL, v7);
  v9 = sub_100430A8C(v8);
  v23 = &type metadata for String;
  *&v22 = v9;
  *(&v22 + 1) = v10;
  sub_100016270(&v22, v21);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C5E68(v21, 1684957547, 0xE400000000000000, v11);
  v12 = sub_100430E7C();
  if (v13)
  {
    v23 = &type metadata for String;
    *&v22 = v12;
    *(&v22 + 1) = v13;
    sub_100016270(&v22, v21);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1006C5E68(v21, 1701667182, 0xE400000000000000, v14);
  }

  v15 = sub_1004316EC();
  if (v16)
  {
    v23 = &type metadata for String;
    *&v22 = v15;
    *(&v22 + 1) = v16;
    sub_100016270(&v22, v21);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1006C5E68(v21, 0x614E747369747261, 0xEA0000000000656DLL, v17);
  }

  v18 = sub_1003647E0(v4);

  sub_10043251C(a1, v19);
  return v18;
}

uint64_t sub_10043251C(uint64_t a1, __n128 a2)
{
  v3 = _s7ElementV4ItemOMa(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7ElementV4ItemOMa(uint64_t a1)
{
  result = qword_10118F890;
  if (!qword_10118F890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004325C4(uint64_t a1, uint64_t a2)
{
  v4 = _s7ElementV4ItemOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100432628(uint64_t a1)
{
  result = type metadata accessor for Track();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Playlist.Entry();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10043269C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10118F8C8, &unk_100ECC0F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100432704@<X0>(uint64_t a1@<X8>)
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v12 - 8);
  __chkstk_darwin();
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v5 = sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v11[0] = "Entry(identifier=";
  v11[1] = v5;
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_100437224(&qword_101187210, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10010FC20(&qword_101187218, &unk_100ECC430);
  sub_100020674(&qword_101187220, &qword_101187218, &unk_100ECC430, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *a1 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a1 + 8) = 0;
  updated = _s13UpdateContextVMa(0);
  v7 = *(updated + 24);
  v8 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = *(updated + 28);
  result = sub_10010C424(_swiftEmptyArrayStorage);
  *(a1 + v9) = result;
  return result;
}

id sub_1004329EC()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v29 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_10118AB10, L"F\v!");
  __chkstk_darwin();
  v7 = &v28 - v6;
  sub_10010FC20(&qword_10118AB00, &qword_100EC6460);
  __chkstk_darwin();
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v11 = &v28 - v10;
  _s23QueueSnapshotIdentifierOMa(0);
  __chkstk_darwin();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004371C0(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if ((EnumCaseMultiPayload - 2) >= 3)
  {
    v16 = v29;
    if (EnumCaseMultiPayload)
    {
      v18 = *&v13[*(sub_10010FC20(&qword_10118AB08, &qword_100ECC420) + 48)];
      v19 = v16;
      v20 = v4;
      (*(v16 + 32))(v4, v13, v2);
      v21 = [v18 tracklist];
      v22 = [v21 displayItems];

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v24 = [v22 itemAtIndexPath:isa];

      v25 = [v24 metadataObject];
      if (v25)
      {
        v26 = [v25 innermostModelObject];

        (*(v19 + 8))(v20, v2);
        return v26;
      }

      else
      {
        (*(v19 + 8))(v20, v2);

        return 0;
      }
    }

    else
    {
      sub_10003D17C(v13, v11, &qword_10118AB00, &qword_100EC6460);
      sub_100437D58(v11, v9);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = *v9;
      }

      else
      {
        sub_10003D17C(v9, v7, &qword_10118AB10, L"F\v!");
        v17 = SnapshotIdentifier.Lazy.object.getter(v5);
        sub_1000095E8(v7, &qword_10118AB10, L"F\v!");
      }

      v27 = [v17 innermostModelObject];

      sub_1000095E8(v11, &qword_10118AB00, &qword_100EC6460);
      return v27;
    }
  }

  return result;
}

id sub_100432DFC()
{
  v1 = v0;
  _s23QueueSnapshotIdentifierOMa(0);
  __chkstk_darwin();
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004371C0(v1, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *&v3[*(sub_10010FC20(&qword_10118AB08, &qword_100ECC420) + 48)];
    (*(v5 + 32))(v7, v3, v4);
    v9 = [v8 tracklist];
    v10 = [v9 displayItems];

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v12 = [v10 itemAtIndexPath:isa];

    (*(v5 + 8))(v7, v4);
    return v12;
  }

  else
  {
    sub_1004378FC(v3);
    return 0;
  }
}

uint64_t sub_100432FF0()
{
  v0 = sub_10010FC20(&qword_10118AB10, L"F\v!");
  __chkstk_darwin();
  v2 = v34 - v1;
  sub_10010FC20(&qword_10118AB00, &qword_100EC6460);
  __chkstk_darwin();
  v4 = (v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v6 = v34 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s23QueueSnapshotIdentifierOMa(0);
  __chkstk_darwin();
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004371C0(v34[1], v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 3)
  {
    goto LABEL_2;
  }

  if (!EnumCaseMultiPayload)
  {
    v15 = v6;
    sub_10003D17C(v12, v6, &qword_10118AB00, &qword_100EC6460);
    static ApplicationCapabilities.shared.getter(v35);
    sub_100014984(v35);
    v16 = v35[8];
    sub_100437D58(v6, v4);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = *v4;
    }

    else
    {
      sub_10003D17C(v4, v2, &qword_10118AB10, L"F\v!");
      v17 = SnapshotIdentifier.Lazy.object.getter(v0);
      sub_1000095E8(v2, &qword_10118AB10, L"F\v!");
    }

    v28 = [v17 innermostModelObject];

    swift_getObjectType();
    v29 = swift_conformsToProtocol2();
    v14 = 0;
    if (v29 && v28)
    {
      v30 = v29;
      ObjectType = swift_getObjectType();
      v14 = (*(v30 + 8))(ObjectType, v30);
    }

    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v32 = (*(*qword_101218AC8 + 528))();
    sub_1000095E8(v15, &qword_10118AB00, &qword_100EC6460);
    if (v32)
    {
    }

    else if ((v16 & 1) == 0)
    {
      return v14 & 1;
    }

LABEL_18:
    v14 = 1;
    return v14 & 1;
  }

  v18 = v8;
  v19 = *&v12[*(sub_10010FC20(&qword_10118AB08, &qword_100ECC420) + 48)];
  v20 = v10;
  (*(v18 + 32))(v10, v12, v7);
  v21 = [v19 tracklist];
  v22 = [v21 changeItemCommand];

  if (v22)
  {
    v23 = [v19 tracklist];
    v24 = [v23 displayItems];

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v26 = [v24 itemAtIndexPath:isa];

    v27 = [v22 changeToItem:v26];
    swift_unknownObjectRelease();

    (*(v18 + 8))(v20, v7);
    if (v27)
    {

      goto LABEL_18;
    }
  }

  else
  {
    (*(v18 + 8))(v20, v7);
  }

LABEL_2:
  v14 = 0;
  return v14 & 1;
}

id sub_100433508()
{
  v1 = v0;
  _s23QueueSnapshotIdentifierOMa(0);
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004371C0(v1, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *&v3[*(sub_10010FC20(&qword_10118AB08, &qword_100ECC420) + 48)];
    (*(v5 + 32))(v7, v3, v4);
    v9 = [v8 tracklist];
    v10 = [v9 displayItems];

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v12 = [v10 itemAtIndexPath:isa];

    v13 = [v8 attributionMetadataFor:v12];
    (*(v5 + 8))(v7, v4);
    return v13;
  }

  else
  {
    sub_1004378FC(v3);
    return 0;
  }
}

char *sub_1004337D0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_didUpdateAttributes];
  v11 = _s25NowPlayingQueueFooterViewCMa();
  *v10 = 0;
  *(v10 + 1) = 0;
  v12 = [objc_allocWithZone(v11) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = UIView.forAutolayout.getter();

  *&v5[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_footer] = v13;
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v43.receiver = v5;
  v43.super_class = _s17PlayingHeaderViewCMa();
  v14 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_footer;
  v16 = *&v14[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_footer];
  v17 = v14;
  [v17 addSubview:v16];
  v18 = objc_opt_self();
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBE270;
  v20 = [*&v14[v15] bottomAnchor];
  v21 = [v17 layoutMarginsGuide];
  v22 = [v21 bottomAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  *(v19 + 32) = v23;
  v24 = [*&v14[v15] leadingAnchor];
  v25 = [v17 layoutMarginsGuide];

  v26 = [v25 leadingAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];

  *(v19 + 40) = v27;
  v28 = [*&v14[v15] trailingAnchor];
  v29 = [v17 layoutMarginsGuide];

  v30 = [v29 trailingAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];

  *(v19 + 48) = v31;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:isa];

  v33 = *&v14[v15];
  v34 = [v17 traitCollection];

  v35 = sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();
  if (sub_1005C3564(v42))
  {
  }

  else
  {
    v36 = [v34 accessibilityContrast];

    if (v36 != 1)
    {
      v38 = 1;
      goto LABEL_9;
    }
  }

  v37 = [v17 traitCollection];
  UITraitCollection.subscript.getter();

  if (v42)
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v38 = 1;
  }

LABEL_9:
  [*&v33[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator] setHidden:{v38 & 1, ObjectType}];

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100EBDC20;
  *(v39 + 32) = type metadata accessor for UITraitAccessibilityContrast();
  *(v39 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  *(v39 + 48) = &type metadata for NowPlayingLayoutTypeTrait;
  *(v39 + 56) = v35;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v17;
}

id sub_100433E1C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidEndBlock];
  if (v9)
  {
    v10 = *&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidEndBlock + 8];
    v19 = v6;
    v20 = v5;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v21 = v0;

    v18 = static OS_dispatch_queue.main.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    aBlock[4] = sub_100029B6C;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010ABEF0;
    v12 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100437224(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v17 = v9;
    sub_10010FC20(&qword_101182970, &qword_100EBD250);
    sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v13 = v18;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v0 = v21;
    _Block_release(v12);

    sub_100020438(v17, v10);
    (*(v2 + 8))(v4, v1);
    (*(v19 + 8))(v8, v20);
  }

  v14 = _s14CollectionViewCMa();
  v23.receiver = v0;
  v23.super_class = v14;
  return objc_msgSendSuper2(&v23, "dealloc");
}

double sub_100434200(char a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  if (v13 && v13 != 1)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  [v2 setClipsToBounds:(v2[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement] & 1) == 0];
LABEL_7:
  if (v2[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement] & 1) == 0 && (a1)
  {
    v7 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementCompletionHandlers;
    swift_beginAccess();
    v8 = *&v2[v7];
    *&v2[v7] = _swiftEmptyArrayStorage;
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v8 + 40;
      do
      {
        v11 = *(v10 - 8);

        v11(v12);

        v10 += 16;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

id sub_1004343A8()
{
  v1 = v0;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10.receiver = v1;
  v10.super_class = _s14CollectionViewCMa();
  v3 = objc_msgSendSuper2(&v10, "beginInteractiveMovementForItemAtIndexPath:", isa);

  v4 = v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement];
  v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement] = 1;
  sub_100434200(v4);
  v5 = &v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidBeginBlock];
  v6 = *&v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidBeginBlock];
  if (v6)
  {
    v7 = *(v5 + 1);

    v6(v8);
    sub_100020438(v6, v7);
  }

  return v3;
}

uint64_t sub_10043454C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v4 = *(v13 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s14CollectionViewCMa();
  v16.receiver = v0;
  v16.super_class = v7;
  objc_msgSendSuper2(&v16, "endInteractiveMovement");
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = sub_100437D50;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010ABEA0;
  v10 = _Block_copy(aBlock);
  v11 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100437224(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v14 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v13);
}

void sub_100434858(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement);
  *(a1 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement) = 0;
  sub_100434200(v2);
  v3 = *(a1 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidEndBlock);
  if (v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidEndBlock + 8);

    v3(v5);

    sub_100020438(v3, v4);
  }
}

id sub_100434920()
{
  v1 = v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement];
  v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement] = 0;
  sub_100434200(v1);
  v6.receiver = v0;
  v6.super_class = _s14CollectionViewCMa();
  result = objc_msgSendSuper2(&v6, "cancelInteractiveMovement");
  v3 = *&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidEndBlock];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidEndBlock + 8];

    v3(v5);
    return sub_100020438(v3, v4);
  }

  return result;
}

id sub_100434BB4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidBeginBlock];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidEndBlock];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_shouldRecognizePanGestureBlock];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementCompletionHandlers] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement] = 0;
  v8.receiver = v1;
  v8.super_class = _s14CollectionViewCMa();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

unint64_t sub_100434D24()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_10118AB00, &qword_100EC6460);
  __chkstk_darwin();
  v8 = &v43 - v7;
  _s23QueueSnapshotIdentifierOMa(0);
  __chkstk_darwin();
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004371C0(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = *v10;
      v44 = 0;
      v45 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v46 = v44;
      v47 = v45;
      v13 = "ntifier.remainingSongs(count=";
      v14 = 0xD000000000000028;
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v44 = 0;
        v45 = 0xE000000000000000;
        _StringGuts.grow(_:)(36);

        v46 = 0xD000000000000021;
        v47 = 0x8000000100E4A4D0;
        Hasher.init(_seed:)();
        sub_10043538C(&v44);
        v44 = Hasher._finalize()();
        goto LABEL_10;
      }

      v12 = *v10;
      v44 = 0;
      v45 = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      v46 = v44;
      v47 = v45;
      v13 = "playerResponseItem";
      v14 = 0xD00000000000002DLL;
    }

    v21 = v13 | 0x8000000000000000;
    String.append(_:)(*&v14);
    v44 = v12;
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 0x3D68736168202CLL;
    v23._object = 0xE700000000000000;
    String.append(_:)(v23);
    Hasher.init(_seed:)();
    sub_10043538C(&v44);
    v44 = Hasher._finalize()();
LABEL_10:
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    return v46;
  }

  if (EnumCaseMultiPayload)
  {
    v26 = *(v10 + *(sub_10010FC20(&qword_10118AB08, &qword_100ECC420) + 48));
    (*(v3 + 32))(v5, v10, v2);
    v27 = [v26 tracklist];
    v28 = [v27 displayItems];

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v30 = [v28 itemAtIndexPath:isa];

    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(72);
    v46 = v44;
    v47 = v45;
    v31._countAndFlagsBits = 0xD000000000000035;
    v31._object = 0x8000000100E4A500;
    String.append(_:)(v31);
    sub_100437224(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 0x3D6D65746920;
    v33._object = 0xE600000000000000;
    String.append(_:)(v33);
    v34 = [v30 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38._countAndFlagsBits = v35;
    v38._object = v37;
    String.append(_:)(v38);

    v39._countAndFlagsBits = 0x3D6873616820;
    v39._object = 0xE600000000000000;
    String.append(_:)(v39);
    Hasher.init(_seed:)();
    sub_10043538C(&v44);
    v44 = Hasher._finalize()();
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    v41._countAndFlagsBits = 41;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);

    v20 = v46;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_10003D17C(v10, v8, &qword_10118AB00, &qword_100EC6460);
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v46 = v44;
    v47 = v45;
    v15._countAndFlagsBits = 0xD000000000000031;
    v15._object = 0x8000000100E4A540;
    String.append(_:)(v15);
    v16._countAndFlagsBits = SnapshotIdentifier.description.getter(v6);
    String.append(_:)(v16);

    v17._countAndFlagsBits = 0x3D6873616820;
    v17._object = 0xE600000000000000;
    String.append(_:)(v17);
    Hasher.init(_seed:)();
    sub_10043538C(&v44);
    v44 = Hasher._finalize()();
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 41;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20 = v46;
    sub_1000095E8(v8, &qword_10118AB00, &qword_100EC6460);
  }

  return v20;
}

uint64_t sub_10043538C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_10118AB00, &qword_100EC6460);
  __chkstk_darwin();
  v10 = &v23 - v9;
  _s23QueueSnapshotIdentifierOMa(0);
  __chkstk_darwin();
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004371C0(v2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v17 = *(v12 + *(sub_10010FC20(&qword_10118AB08, &qword_100ECC420) + 48));
      (*(v5 + 32))(v7, v12, v4);
      v18 = [v17 tracklist];
      v19 = [v18 displayItems];

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v21 = [v19 itemAtIndexPath:isa];

      v22 = [v21 contentItemIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      String.hash(into:)();

      String.hash(into:)();

      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      sub_10003D17C(v12, v10, &qword_10118AB00, &qword_100EC6460);
      SnapshotIdentifier.hash(into:)(a1, v8, v14, v15);
      String.hash(into:)();
      return sub_1000095E8(v10, &qword_10118AB00, &qword_100EC6460);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      Hasher._combine(_:)(*v12);
    }

    return String.hash(into:)();
  }
}

Swift::Int sub_100435730()
{
  Hasher.init(_seed:)();
  sub_10043538C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100435774(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10043538C(v2);
  return Hasher._finalize()();
}

uint64_t sub_1004357B8(unsigned __int8 a1)
{
  v2 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - v4;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v6 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v3 + 8))(v5, v2);
  v7 = v6;
  v8 = *(v6 + 16);
  v9 = 0;
  if (v8)
  {
    while (*(v7 + 32 + v9) != a1)
    {
      if (v8 == ++v9)
      {
        v9 = 0;
        break;
      }
    }
  }

  return v9;
}

uint64_t sub_1004358E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + qword_10118F958);
  if (!v3)
  {
    return 0;
  }

  v5 = *(v2 + qword_10118F958 + 8);

  v6 = v3(v2, a2);
  sub_100020438(v3, v5);
  return v6 & 1;
}

uint64_t sub_100435960(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *&a1[qword_10118F958];
  if (v9)
  {
    v10 = *&a1[qword_10118F958 + 8];
    v11 = a1;
    sub_100030444(v9, v10);
    v12 = v9(v11, v8);
    sub_100020438(v9, v10);
  }

  else
  {
    v12 = 0;
  }

  (*(v6 + 8))(v8, v5);
  return v12 & 1;
}

void sub_100435A9C(void *a1, uint64_t a2, uint64_t a3)
{
  _s14CollectionViewCMa();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = *(v3 + qword_10118F960);
    if (v8)
    {
      v9 = *(v3 + qword_10118F960 + 8);
      v10 = *(v7 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement);
      v11 = a1;
      sub_100030444(v8, v9);
      v8(v3, a2, a3, (v10 & 1) == 0);
      sub_100020438(v8, v9);
    }
  }
}

uint64_t sub_100435B8C(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v21 - v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  _s14CollectionViewCMa();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *&a1[qword_10118F960];
    if (v14)
    {
      v15 = *&a1[qword_10118F960 + 8];
      v16 = *(v13 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement);
      v17 = a3;
      v18 = a1;
      sub_100030444(v14, v15);
      v14(v18, v12, v10, (v16 & 1) == 0);
      sub_100020438(v14, v15);
    }
  }

  v19 = *(v8 + 8);
  v19(v10, v7);
  return (v19)(v12, v7);
}

uint64_t sub_100435D40()
{
  sub_100020438(*(v0 + qword_10118F958), *(v0 + qword_10118F958 + 8));
  v1 = *(v0 + qword_10118F960);
  v2 = *(v0 + qword_10118F960 + 8);

  return sub_100020438(v1, v2);
}

id sub_100435DA4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100435DDC(uint64_t a1)
{
  sub_100020438(*(a1 + qword_10118F958), *(a1 + qword_10118F958 + 8));
  v2 = *(a1 + qword_10118F960);
  v3 = *(a1 + qword_10118F960 + 8);

  return sub_100020438(v2, v3);
}

uint64_t sub_100435E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(_s10DataSourceCMa(0));
  v4 = &v3[qword_10118F958];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[qword_10118F960];
  *v5 = 0;
  *(v5 + 1) = 0;
  return UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
}

char *sub_100435EAC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController22AutoPlayBackgroundView_backgroundView;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBC6D0;
  v12 = objc_opt_self();
  v13 = [v12 blackColor];
  v14 = [v13 colorWithAlphaComponent:0.1];

  *(v11 + 32) = v14;
  v15 = [v12 blackColor];
  v16 = [v15 colorWithAlphaComponent:0.0];

  *(v11 + 40) = v16;
  static Gradient.vertical(colors:locations:interpolations:)(v11, 0, 0, v46);

  v17 = objc_allocWithZone(type metadata accessor for Gradient.View());
  *&v5[v10] = Gradient.View.init(configuration:)(v46);
  v45.receiver = v5;
  v45.super_class = _s22AutoPlayBackgroundViewCMa();
  v18 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController22AutoPlayBackgroundView_backgroundView;
  v20 = *&v18[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController22AutoPlayBackgroundView_backgroundView];
  v21 = v18;
  v22 = v20;
  v23 = v21;
  v24 = UIView.forAutolayout.getter();

  [v23 addSubview:v24];
  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100EC3620;
  v27 = [*&v18[v19] leadingAnchor];
  v28 = [v23 leadingAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v26 + 32) = v29;
  v30 = [*&v18[v19] trailingAnchor];
  v31 = [v23 trailingAnchor];

  v32 = [v30 constraintEqualToAnchor:v31];
  *(v26 + 40) = v32;
  v33 = [*&v18[v19] topAnchor];
  v34 = [v23 topAnchor];

  v35 = [v33 constraintEqualToAnchor:v34];
  *(v26 + 48) = v35;
  v36 = [*&v18[v19] heightAnchor];
  v37 = [v36 constraintEqualToConstant:150.0];

  LODWORD(v38) = 1144750080;
  v39 = [v37 withPriority:v38];

  *(v26 + 56) = v39;
  v40 = [*&v18[v19] bottomAnchor];
  v41 = [v23 bottomAnchor];

  v42 = [v40 constraintLessThanOrEqualToAnchor:v41];
  *(v26 + 64) = v42;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints:isa];

  return v23;
}

unint64_t sub_1004363A0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100437C6C(*a1);
  *a2 = result;
  return result;
}

char *sub_1004363E8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView____lazy_storage___topPaddingConstraint] = 0;
  *&v4[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView____lazy_storage___bottomPaddingConstraint] = 0;
  v10 = [objc_allocWithZone(UIView) init];
  v11 = UIView.forAutolayout.getter();

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_10117F920 != -1)
  {
    swift_once();
  }

  [v11 setBackgroundColor:qword_1012190B8];
  *&v5[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator] = v11;
  v39.receiver = v5;
  v39.super_class = _s25NowPlayingQueueFooterViewCMa();
  v38 = v11;
  v12 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator;
  v14 = *&v12[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator];
  v15 = v12;
  [v15 addSubview:v14];
  v16 = objc_opt_self();
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100EC3620;
  *(v17 + 32) = sub_10043692C();
  *(v17 + 40) = sub_1004369F4();
  v18 = [*&v12[v13] leadingAnchor];
  v19 = [v15 layoutMarginsGuide];
  v20 = [v19 leadingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v17 + 48) = v21;
  v22 = [*&v12[v13] trailingAnchor];
  v23 = [v15 layoutMarginsGuide];

  v24 = [v23 trailingAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];

  *(v17 + 56) = v25;
  v26 = [*&v12[v13] heightAnchor];
  v27 = [v15 traitCollection];

  [v27 displayScale];
  v29 = v28;

  v30 = [v26 constraintEqualToConstant:1.0 / v29];
  *(v17 + 64) = v30;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 activateConstraints:isa];

  v32 = [*&v12[v13] layer];
  v33 = [v15 traitCollection];
  v34 = sub_100050078();
  LOBYTE(v17) = UITraitCollection.subscript.getter();

  v35 = 0;
  if (v17)
  {
    v35 = kCAFilterPlusL;
  }

  [v32 setCompositingFilter:v35];

  swift_unknownObjectRelease();
  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100EBC6B0;
  *(v36 + 32) = &type metadata for HasAnimatedBackgroundTrait;
  *(v36 + 40) = v34;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v15;
}

id sub_10043692C()
{
  v1 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView____lazy_storage___topPaddingConstraint;
  v2 = *&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView____lazy_storage___topPaddingConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView____lazy_storage___topPaddingConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator] topAnchor];
    v5 = [v0 topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1004369F4()
{
  v1 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView____lazy_storage___bottomPaddingConstraint;
  v2 = *&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView____lazy_storage___bottomPaddingConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView____lazy_storage___bottomPaddingConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator] bottomAnchor];
    v5 = [v0 bottomAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    LODWORD(v7) = 1144750080;
    v8 = [v6 withPriority:v7];

    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_100436BA0(uint64_t a1)
{
  sub_100436C28();
  if (v1 <= 0x3F)
  {
    sub_100436CD8(319);
    if (v2 <= 0x3F)
    {
      sub_100436D5C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100436C28()
{
  if (!qword_10118FAA8)
  {
    sub_100436C70(0);
    if (!v1)
    {
      atomic_store(v0, &qword_10118FAA8);
    }
  }
}

void sub_100436C70(uint64_t a1)
{
  if (!qword_10118FAB0)
  {
    v2 = sub_100009F78(255, qword_101186D10, MPModelPlaylistEntry_ptr);
    v5 = type metadata accessor for SnapshotIdentifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_10118FAB0);
    }
  }
}

void sub_100436CD8(uint64_t a1)
{
  if (!qword_10118FAB8)
  {
    type metadata accessor for IndexPath();
    sub_100009F78(255, &qword_10118D500, MPCPlayerResponse_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10118FAB8);
    }
  }
}

void *sub_100436D5C()
{
  result = qword_10118FAC0;
  if (!qword_10118FAC0)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_10118FAC0);
  }

  return result;
}

void sub_100436DE4(uint64_t a1)
{
  sub_100009F78(319, &qword_101182960, OS_dispatch_queue_ptr);
  if (v1 <= 0x3F)
  {
    sub_100436E98(319);
    if (v2 <= 0x3F)
    {
      sub_100436EFC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100436E98(uint64_t a1)
{
  if (!qword_10118FB58)
  {
    sub_1001109D0(&qword_10118AB38, &qword_100ECC1E0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10118FB58);
    }
  }
}

void sub_100436EFC(uint64_t a1)
{
  if (!qword_10118FB60)
  {
    sub_100436F60();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_10118FB60);
    }
  }
}

unint64_t sub_100436F60()
{
  result = qword_10118FB68;
  if (!qword_10118FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FB68);
  }

  return result;
}

uint64_t sub_100436FB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100437010(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100437088()
{
  result = qword_10118FBA0;
  if (!qword_10118FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FBA0);
  }

  return result;
}

unint64_t sub_100437124()
{
  result = qword_10118FBB8;
  if (!qword_10118FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FBB8);
  }

  return result;
}

uint64_t sub_1004371C0(uint64_t a1, uint64_t a2)
{
  v4 = _s23QueueSnapshotIdentifierOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100437224(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100437274(char *a1, char *a2)
{
  v60 = a1;
  v61 = a2;
  v2 = type metadata accessor for IndexPath();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin();
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v56 - v5;
  sub_10010FC20(&qword_10118AB00, &qword_100EC6460);
  __chkstk_darwin();
  v57 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v56 - v8;
  _s23QueueSnapshotIdentifierOMa(0);
  __chkstk_darwin();
  v11 = (&v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v13 = (&v56 - v12);
  __chkstk_darwin();
  v15 = &v56 - v14;
  __chkstk_darwin();
  v17 = &v56 - v16;
  sub_10010FC20(&qword_10118FBC8, &qword_100ECC428);
  __chkstk_darwin();
  v19 = &v56 - v18;
  v21 = &v56 + *(v20 + 56) - v18;
  sub_1004371C0(v60, &v56 - v18);
  sub_1004371C0(v61, v21);
  v61 = v19;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v56 = v6;
    v60 = v4;
    v25 = v58;
    v26 = v59;
    if (EnumCaseMultiPayload)
    {
      v23 = v61;
      sub_1004371C0(v61, v15);
      v28 = *(sub_10010FC20(&qword_10118AB08, &qword_100ECC420) + 48);
      v29 = *&v15[v28];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = *&v21[v28];
        v31 = v29;
        v32 = *(v25 + 32);
        v32(v56, v15, v26);
        v32(v60, v21, v26);
        v57 = v31;
        v33 = [v31 tracklist];
        v34 = [v33 displayItems];

        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v36 = [v34 itemAtIndexPath:isa];

        v37 = [v36 contentItemIdentifier];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41 = v30;
        v42 = [v30 tracklist];
        v43 = [v42 displayItems];

        v44 = IndexPath._bridgeToObjectiveC()().super.isa;
        v45 = [v43 itemAtIndexPath:v44];

        v46 = [v45 contentItemIdentifier];
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        if (v38 == v47 && v40 == v49)
        {
          v27 = 1;
        }

        else
        {
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v53 = v61;

        v54 = *(v25 + 8);
        v54(v60, v26);
        v54(v56, v26);
        v52 = v53;
        goto LABEL_24;
      }

      (*(v25 + 8))(v15, v26);
    }

    else
    {
      v23 = v61;
      sub_1004371C0(v61, v17);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_10003D17C(v17, v9, &qword_10118AB00, &qword_100EC6460);
        v50 = v57;
        sub_10003D17C(v21, v57, &qword_10118AB00, &qword_100EC6460);
        v51 = sub_100009F78(0, qword_101186D10, MPModelPlaylistEntry_ptr);
        v27 = static SnapshotIdentifier.== infix(_:_:)(v9, v50, v51);
        sub_1000095E8(v50, &qword_10118AB00, &qword_100EC6460);
        sub_1000095E8(v9, &qword_10118AB00, &qword_100EC6460);
        goto LABEL_21;
      }

      sub_1000095E8(v17, &qword_10118AB00, &qword_100EC6460);
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v23 = v61;
    sub_1004371C0(v61, v13);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v24 = *v13;
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v23 = v61;
  if (EnumCaseMultiPayload == 3)
  {
    sub_1004371C0(v61, v11);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v24 = *v11;
LABEL_11:
      v27 = v24 == *v21;
LABEL_21:
      v52 = v23;
LABEL_24:
      sub_1004378FC(v52);
      return v27 & 1;
    }

    goto LABEL_19;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_19:
    sub_1000095E8(v23, &qword_10118FBC8, &qword_100ECC428);
    v27 = 0;
    return v27 & 1;
  }

  sub_1004378FC(v23);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_1004378FC(uint64_t a1)
{
  v2 = _s23QueueSnapshotIdentifierOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100437958(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_footer];
  v3 = [a1 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();
  if (sub_1005C3564(v8))
  {
  }

  else
  {
    v4 = [v3 accessibilityContrast];

    if (v4 != 1)
    {
      v6 = 1;
      goto LABEL_9;
    }
  }

  v5 = [a1 traitCollection];
  UITraitCollection.subscript.getter();

  if (v7)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v6 = 1;
  }

LABEL_9:
  [*&v2[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator] setHidden:v6 & 1];
}

void sub_100437B04()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController22AutoPlayBackgroundView_backgroundView;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100EBC6D0;
  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.1];

  *(v3 + 32) = v6;
  v7 = [v4 blackColor];
  v8 = [v7 colorWithAlphaComponent:0.0];

  *(v3 + 40) = v8;
  static Gradient.vertical(colors:locations:interpolations:)(v3, 0, 0, v10);

  v9 = objc_allocWithZone(type metadata accessor for Gradient.View());
  *(v1 + v2) = Gradient.View.init(configuration:)(v10);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100437C6C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

double sub_100437C7C(char *a1)
{
  v2 = [*&a1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator] layer];
  v3 = [a1 traitCollection];
  sub_100050078();
  v4 = UITraitCollection.subscript.getter();

  if (v4)
  {
    v5 = kCAFilterPlusL;
  }

  else
  {
    v5 = 0;
  }

  [v2 setCompositingFilter:v5];

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_100437D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118AB00, &qword_100EC6460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for WidgetMusicItem(uint64_t a1)
{
  result = qword_10118FC28;
  if (!qword_10118FC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100437E44(uint64_t a1)
{
  sub_100030850(319, &qword_10118F6F0, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      sub_100030850(319, &qword_10118FC38, &type metadata for WidgetMusicItem.Kind, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100030850(319, &qword_10118FC40, &type metadata for MusicItemID, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100030850(319, &qword_10118FC48, &type metadata for TextBadge, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            sub_1001E8510(319);
            if (v6 <= 0x3F)
            {
              sub_100030850(319, &qword_10118FC50, &type metadata for WidgetMusicItem.ContainerTrack, &type metadata accessor for Array);
              if (v7 <= 0x3F)
              {
                sub_100030850(319, &qword_10118FC58, &type metadata for WidgetMusicItem.ArtworkColor, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for ArtworkImage.Placeholder(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1004380B0(319);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1004380B0(uint64_t a1)
{
  if (!qword_10118FC60)
  {
    sub_1001109D0(&unk_10118FC68, &qword_100ECC468);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_10118FC60);
    }
  }
}

uint64_t sub_100438124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10043816C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s11ContentSortV6OptionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ContentSortV6OptionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100438318(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = sub_10010FC20(&qword_10118FE28, &unk_100EDF710);
  v3[9] = swift_task_alloc();
  sub_10010FC20(&qword_10118FE30, &qword_100ED77B0);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[14] = v6;
  v3[15] = v5;

  return _swift_task_switch(sub_10043849C, v6, v5);
}

uint64_t sub_10043849C()
{
  type metadata accessor for InternalMusicPlayer();
  v0[16] = static InternalMusicPlayer.localDevice.getter();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_100438554;
  v2 = v0[12];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v2, v3, v5, v4);
}

uint64_t sub_100438554()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_100438A30;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_100438698;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100438698()
{
  v1 = v0[12];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  v6 = v0[6];

  v7 = *(v6 + 56);
  v7(v1, 0, 1, v5);
  (*(v6 + 104))(v2, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v5);
  v7(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_1000089F8(v1, v3, &qword_10118FE30, &qword_100ED77B0);
  sub_1000089F8(v2, v3 + v8, &qword_10118FE30, &qword_100ED77B0);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = v0[12];
    v11 = v0[5];
    sub_1000095E8(v0[11], &qword_10118FE30, &qword_100ED77B0);
    sub_1000095E8(v10, &qword_10118FE30, &qword_100ED77B0);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      sub_1000095E8(v0[9], &qword_10118FE30, &qword_100ED77B0);
      v12 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v13 = v0[5];
  sub_1000089F8(v0[9], v0[10], &qword_10118FE30, &qword_100ED77B0);
  v14 = v9(v3 + v8, 1, v13);
  v16 = v0[11];
  v15 = v0[12];
  v17 = v0[10];
  if (v14 == 1)
  {
    v18 = v0[5];
    v19 = v0[6];
    sub_1000095E8(v0[11], &qword_10118FE30, &qword_100ED77B0);
    sub_1000095E8(v15, &qword_10118FE30, &qword_100ED77B0);
    (*(v19 + 8))(v17, v18);
LABEL_6:
    sub_1000095E8(v0[9], &qword_10118FE28, &unk_100EDF710);
    v12 = 0;
    goto LABEL_8;
  }

  v26 = v0[9];
  v21 = v0[6];
  v20 = v0[7];
  v22 = v0[5];
  (*(v21 + 32))(v20, v3 + v8, v22);
  sub_10043D844(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus, &protocol conformance descriptor for MusicPlayer.PlayabilityStatus);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v21 + 8);
  v23(v20, v22);
  sub_1000095E8(v16, &qword_10118FE30, &qword_100ED77B0);
  sub_1000095E8(v15, &qword_10118FE30, &qword_100ED77B0);
  v23(v17, v22);
  sub_1000095E8(v26, &qword_10118FE30, &qword_100ED77B0);
LABEL_8:

  v24 = v0[1];

  return v24(v12 & 1);
}

uint64_t sub_100438A30()
{
  v1 = v0[12];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  v6 = v0[6];

  v7 = *(v6 + 56);
  v7(v1, 1, 1, v5);
  (*(v6 + 104))(v2, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v5);
  v7(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_1000089F8(v1, v3, &qword_10118FE30, &qword_100ED77B0);
  sub_1000089F8(v2, v3 + v8, &qword_10118FE30, &qword_100ED77B0);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = v0[12];
    v11 = v0[5];
    sub_1000095E8(v0[11], &qword_10118FE30, &qword_100ED77B0);
    sub_1000095E8(v10, &qword_10118FE30, &qword_100ED77B0);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      sub_1000095E8(v0[9], &qword_10118FE30, &qword_100ED77B0);
      v12 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v13 = v0[5];
  sub_1000089F8(v0[9], v0[10], &qword_10118FE30, &qword_100ED77B0);
  v14 = v9(v3 + v8, 1, v13);
  v16 = v0[11];
  v15 = v0[12];
  v17 = v0[10];
  if (v14 == 1)
  {
    v18 = v0[5];
    v19 = v0[6];
    sub_1000095E8(v0[11], &qword_10118FE30, &qword_100ED77B0);
    sub_1000095E8(v15, &qword_10118FE30, &qword_100ED77B0);
    (*(v19 + 8))(v17, v18);
LABEL_6:
    sub_1000095E8(v0[9], &qword_10118FE28, &unk_100EDF710);
    v12 = 0;
    goto LABEL_8;
  }

  v26 = v0[9];
  v21 = v0[6];
  v20 = v0[7];
  v22 = v0[5];
  (*(v21 + 32))(v20, v3 + v8, v22);
  sub_10043D844(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus, &protocol conformance descriptor for MusicPlayer.PlayabilityStatus);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v21 + 8);
  v23(v20, v22);
  sub_1000095E8(v16, &qword_10118FE30, &qword_100ED77B0);
  sub_1000095E8(v15, &qword_10118FE30, &qword_100ED77B0);
  v23(v17, v22);
  sub_1000095E8(v26, &qword_10118FE30, &qword_100ED77B0);
LABEL_8:

  v24 = v0[1];

  return v24(v12 & 1);
}

unint64_t sub_100438DF0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10043CF60(*a1);
  *a2 = result;
  return result;
}

void sub_100438E20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1735290739;
  v5 = 0xE900000000000065;
  v6 = 0x646F736970457674;
  if (v2 != 6)
  {
    v6 = 0x766F4D636973756DLL;
    v5 = 0xEA00000000006569;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E6F6974617473;
  if (v2 != 4)
  {
    v8 = 0x646956636973756DLL;
    v7 = 0xEA00000000006F65;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x747369747261;
  if (v2 != 2)
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6D75626C61;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100438FCC()
{
  result = qword_10118FCF0;
  if (!qword_10118FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FCF0);
  }

  return result;
}

uint64_t sub_100439020(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_10118FE18, &qword_100ECC7A0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_10000954C(a1, a1[3]);
  sub_10043D79C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[15] = 0;
  sub_10043CA78();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v11) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v11) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v11) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004391F8()
{
  v1 = 25705;
  v2 = 0x614E747369747261;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100439268@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10043CFAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100439290(uint64_t a1)
{
  v2 = sub_10043D79C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004392CC(uint64_t a1)
{
  v2 = sub_10043D79C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100439308@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10043D10C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_100439370(void *a1, double a2, double a3, double a4)
{
  v9 = sub_10010FC20(&qword_10118FE00, &qword_100ECC790);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v14 - v11;
  sub_10000954C(a1, a1[3]);
  sub_10043D748();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  HIBYTE(v14) = 0;
  sub_100282B9C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = a3;
    HIBYTE(v14) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = a4;
    HIBYTE(v14) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100439560()
{
  v1 = 0x6E65657267;
  if (*v0 != 1)
  {
    v1 = 1702194274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579570;
  }
}

uint64_t sub_1004395A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10043D410(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1004395D0(uint64_t a1)
{
  v2 = sub_10043D748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10043960C(uint64_t a1)
{
  v2 = sub_10043D748();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100439648(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_10043D524(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
    *(a1 + 2) = v6;
  }
}

uint64_t sub_100439698()
{
  v0._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 8236;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8236;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 93;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 91;
}

void sub_10043975C(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10066C750(0, v3, 0);
    v4 = 32;
    do
    {
      v5 = *(a1 + v4);
      v6 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      v8 = v5;
      if (v6 >= v7 >> 1)
      {
        sub_10066C750((v7 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      _swiftEmptyArrayStorage[v6 + 4] = v5;
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  v9 = *(type metadata accessor for WidgetMusicItem(0) + 104);

  *(v1 + v9) = _swiftEmptyArrayStorage;
}

unint64_t sub_100439864()
{
  v1 = v0;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v3 = &v67 - v2;
  v71 = 0xD000000000000010;
  v72 = 0x8000000100E4A5F0;
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  strcpy(&v67, "supertitle: ");
  HIWORD(v67._object) = -4864;
  object = v0->_object;
  v70._countAndFlagsBits = v0->_countAndFlagsBits;
  v70._object = object;

  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 2108450;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0x22203A656C746974;
  v67._object = 0xE800000000000000;
  String.append(_:)(v0[1]);
  v7._countAndFlagsBits = 2108450;
  v7._object = 0xE300000000000000;
  String.append(_:)(v7);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v67._countAndFlagsBits = 0x656C746974627573;
  v67._object = 0xEB0000000022203ALL;
  v8 = v0[2]._object;
  v70._countAndFlagsBits = v0[2]._countAndFlagsBits;
  v70._object = v8;

  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 2108450;
  v10._object = 0xE300000000000000;
  String.append(_:)(v10);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0x22203A6C7275;
  v67._object = 0xE600000000000000;
  v11 = type metadata accessor for WidgetMusicItem(0);
  type metadata accessor for URL();
  sub_10043D844(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 2108450;
  v13._object = 0xE300000000000000;
  String.append(_:)(v13);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  strcpy(&v70, "artworkImage: ");
  HIBYTE(v70._object) = -18;
  v14 = *(&v0->_countAndFlagsBits + v11[25]);
  if (v14)
  {
    [v14 size];
    v16._object = v15;
  }

  else
  {
    v16 = 0;
  }

  v67 = v16;
  LOBYTE(v68) = v14 == 0;
  sub_10010FC20(&qword_10118FDD8, &qword_100ECC770);
  v17._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 8236;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  String.append(_:)(v70);

  v67._countAndFlagsBits = 0x22203A646E696BLL;
  v67._object = 0xE700000000000000;
  LOBYTE(v70._countAndFlagsBits) = *(&v1->_countAndFlagsBits + v11[8]);
  sub_10010FC20(&qword_10118FDE0, &qword_100ECC778);
  v19._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 2108450;
  v20._object = 0xE300000000000000;
  String.append(_:)(v20);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0x203A44496D657469;
  v67._object = 0xE900000000000022;
  v21._countAndFlagsBits = MusicItemID.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 2108450;
  v22._object = 0xE300000000000000;
  String.append(_:)(v22);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(&v67, "catalogID: ");
  BYTE5(v67._object) = 0;
  HIWORD(v67._object) = -5120;
  v23 = (&v1->_countAndFlagsBits + v11[10]);
  v24 = v23[1];
  v70._countAndFlagsBits = *v23;
  v70._object = v24;

  sub_10010FC20(&unk_1011A49A0, &qword_100ECF970);
  v25._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 2108450;
  v26._object = 0xE300000000000000;
  String.append(_:)(v26);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(&v67, "siriRepID: ");
  BYTE5(v67._object) = 0;
  HIWORD(v67._object) = -5120;
  String.append(_:)(*(v1 + v11[11]));
  v27._countAndFlagsBits = 2108450;
  v27._object = 0xE300000000000000;
  String.append(_:)(v27);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v67._countAndFlagsBits = 0xD000000000000012;
  v67._object = 0x8000000100E4A610;
  v28 = (&v1->_countAndFlagsBits + v11[12]);
  v29 = v28[1];
  v70._countAndFlagsBits = *v28;
  v70._object = v29;

  v30._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v30);

  v31._countAndFlagsBits = 2108450;
  v31._object = 0xE300000000000000;
  String.append(_:)(v31);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v67._countAndFlagsBits = 0xD000000000000015;
  v67._object = 0x8000000100E4A630;
  v32 = (&v1->_countAndFlagsBits + v11[13]);
  v33 = v32[1];
  v70._countAndFlagsBits = *v32;
  v70._object = v33;

  v34._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v34);

  v35._countAndFlagsBits = 2108450;
  v35._object = 0xE300000000000000;
  String.append(_:)(v35);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v67._countAndFlagsBits = 0xD000000000000015;
  v67._object = 0x8000000100E4A650;
  v36 = (&v1->_countAndFlagsBits + v11[14]);
  v37 = v36[1];
  v70._countAndFlagsBits = *v36;
  v70._object = v37;

  v38._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v38);

  v39._countAndFlagsBits = 2108450;
  v39._object = 0xE300000000000000;
  String.append(_:)(v39);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0x203A736567646162;
  v67._object = 0xE900000000000022;
  v40._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v40);

  v41._countAndFlagsBits = 2108450;
  v41._object = 0xE300000000000000;
  String.append(_:)(v41);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(&v67, "isPlayable: ");
  BYTE5(v67._object) = 0;
  HIWORD(v67._object) = -5120;
  if (*(&v1->_countAndFlagsBits + v11[16]))
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (*(&v1->_countAndFlagsBits + v11[16]))
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  v44 = v43;
  String.append(_:)(*&v42);

  v45._countAndFlagsBits = 8236;
  v45._object = 0xE200000000000000;
  String.append(_:)(v45);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  strcpy(&v67, "releaseDate: ");
  HIBYTE(v67._object) = -18;
  sub_1000089F8(v1 + v11[17], v3, &qword_101188C20, &qword_100EC2030);
  v46._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v46);

  v47._countAndFlagsBits = 2108450;
  v47._object = 0xE300000000000000;
  String.append(_:)(v47);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v67._countAndFlagsBits = 0xD000000000000013;
  v67._object = 0x8000000100E4A670;
  sub_1000089F8(v1 + v11[18], v3, &qword_101188C20, &qword_100EC2030);
  v48._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v48);

  v49._countAndFlagsBits = 2108450;
  v49._object = 0xE300000000000000;
  String.append(_:)(v49);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0x22203A65726E6567;
  v67._object = 0xE800000000000000;
  v50 = (&v1->_countAndFlagsBits + v11[19]);
  v51 = v50[1];
  v70._countAndFlagsBits = *v50;
  v70._object = v51;

  v52._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 2108450;
  v53._object = 0xE300000000000000;
  String.append(_:)(v53);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v67._countAndFlagsBits = 0xD000000000000017;
  v67._object = 0x8000000100E4A690;
  v70._countAndFlagsBits = *(*(&v1->_countAndFlagsBits + v11[20]) + 16);
  v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v54);

  v55._countAndFlagsBits = 8236;
  v55._object = 0xE200000000000000;
  String.append(_:)(v55);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v70._countAndFlagsBits = 0xD000000000000012;
  v70._object = 0x8000000100E4A6B0;
  v56 = v1 + v11[21];
  v57 = *(v56 + 2);
  v58 = v56[24];
  v67 = *v56;
  v68 = v57;
  v69 = v58;
  sub_10010FC20(&qword_10118FDE8, &qword_100ECC780);
  v59._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v59);

  v60._countAndFlagsBits = 8236;
  v60._object = 0xE200000000000000;
  String.append(_:)(v60);
  String.append(_:)(v70);

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v70._countAndFlagsBits = 0xD000000000000011;
  v70._object = 0x8000000100E4A6D0;
  v61 = v1 + v11[22];
  v62 = *(v61 + 2);
  v63 = v61[24];
  v67 = *v61;
  v68 = v62;
  v69 = v63;
  v64._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v64);

  String.append(_:)(v70);

  v65._countAndFlagsBits = 41;
  v65._object = 0xE100000000000000;
  String.append(_:)(v65);
  return v71;
}

void sub_10043A444()
{
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v45 = &v36 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v2 = &v36 - v1;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetMusicItem(0);
  sub_100006080(v11, qword_101218C90);
  v12 = sub_1000060E4(v11, qword_101218C90);
  URL.init(string:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    __break(1u);
  }

  else
  {
    v40 = 0x8000000100E4A7D0;
    v41 = 0x8000000100E4A7B0;
    (*(v8 + 32))(v10, v6, v7);
    v44 = [objc_allocWithZone(UIImage) init];
    v13 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
    (*(*(v13 - 8) + 56))(v4, 1, 11, v13);
    v14 = MusicItemID.init(stringLiteral:)();
    v37 = v15;
    v38 = v14;
    v16 = type metadata accessor for Date();
    v17 = v10;
    v43 = v10;
    v18 = v16;
    v19 = *(*(v16 - 8) + 56);
    v42 = v7;
    v39 = v2;
    v19(v2, 1, 1, v16);
    v20 = v45;
    v19(v45, 1, 1, v18);
    v21 = v11[25];
    *(v12 + v21) = 0;
    *(v12 + v11[26]) = _swiftEmptyArrayStorage;
    *v12 = xmmword_100ECC440;
    v22 = v41;
    *(v12 + 16) = 0xD000000000000018;
    *(v12 + 24) = v22;
    *(v12 + 32) = 0xD000000000000010;
    *(v12 + 40) = v40;
    (*(v8 + 16))(v12 + v11[7], v17, v7);
    v23 = v4;
    sub_10043E440(v4, v12 + v11[23], type metadata accessor for ArtworkImage.Placeholder);
    *(v12 + v11[24]) = 0x3FF0000000000000;
    *(v12 + v11[8]) = 8;
    v24 = (v12 + v11[9]);
    v25 = v37;
    *v24 = v38;
    v24[1] = v25;
    v26 = (v12 + v11[10]);
    *v26 = 0;
    v26[1] = 0;
    v27 = (v12 + v11[11]);
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v28 = (v12 + v11[12]);
    *v28 = 0;
    v28[1] = 0;
    v29 = (v12 + v11[13]);
    *v29 = 0;
    v29[1] = 0;
    v30 = (v12 + v11[14]);
    *v30 = 0;
    v30[1] = 0;
    *(v12 + v11[15]) = _swiftEmptyArrayStorage;
    *(v12 + v11[16]) = 0;
    v31 = v39;
    sub_1000089F8(v39, v12 + v11[17], &qword_101188C20, &qword_100EC2030);
    sub_1000089F8(v20, v12 + v11[18], &qword_101188C20, &qword_100EC2030);
    v32 = (v12 + v11[19]);
    *v32 = 0;
    v32[1] = 0;
    *(v12 + v11[20]) = _swiftEmptyArrayStorage;
    v33 = v12 + v11[21];
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    *(v33 + 24) = 1;
    v34 = v12 + v11[22];
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    *(v34 + 24) = 1;
    sub_10043975C(_swiftEmptyArrayStorage);
    sub_1000095E8(v20, &qword_101188C20, &qword_100EC2030);
    sub_1000095E8(v31, &qword_101188C20, &qword_100EC2030);
    sub_10043C9C4(v23, type metadata accessor for ArtworkImage.Placeholder);
    (*(v8 + 8))(v43, v42);
    v35 = *(v12 + v21);
    *(v12 + v21) = v44;
  }
}

unint64_t sub_10043A9A0(char a1)
{
  result = 0x7469747265707573;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 7107189;
      break;
    case 4:
      result = 1684957547;
      break;
    case 5:
      result = 0x44496D657469;
      break;
    case 6:
      result = 0x49676F6C61746163;
      break;
    case 7:
      result = 0x4970655269726973;
      break;
    case 8:
    case 16:
      result = 0x656E6961746E6F63;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x736567646162;
      break;
    case 12:
      result = 0x626179616C507369;
      break;
    case 13:
      result = 0x44657361656C6572;
      break;
    case 14:
    case 17:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x65726E6567;
      break;
    case 18:
      result = 0x756F72676B636162;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0xD00000000000001BLL;
      break;
    case 21:
      result = 0x49656C6261646F63;
      break;
    case 22:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10043ABFC(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_10118FD78, &qword_100ECC768);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - v7;
  sub_10000954C(a1, a1[3]);
  sub_10043C558();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v20) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = type metadata accessor for WidgetMusicItem(0);
    LOBYTE(v20) = 3;
    type metadata accessor for URL();
    sub_10043D844(&qword_10118FD80, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20) = *(v3 + v9[8]);
    v23 = 4;
    sub_10043CA24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = (v3 + v9[9]);
    v12 = *v10;
    v11 = v10[1];
    *&v20 = v12;
    *(&v20 + 1) = v11;
    v23 = 5;
    sub_10043CA78();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = *(v3 + v9[10]);
    v23 = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(v3 + v9[12]);
    v23 = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = *(v3 + v9[13]);
    v23 = 9;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v20 = *(v3 + v9[15]);
    v23 = 11;
    sub_10010FC20(&qword_10118FD20, &qword_100ECC750);
    sub_10043CACC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v20) = 13;
    type metadata accessor for Date();
    sub_10043D844(&qword_10118F0E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = 14;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v20 = *(v3 + v9[20]);
    v23 = 16;
    sub_10010FC20(&qword_10118FD38, &qword_100ECC758);
    sub_10043CBA4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = (v3 + v9[21]);
    v14 = *(v13 + 2);
    v15 = *(v13 + 24);
    v20 = *v13;
    v21 = v14;
    v22 = v15;
    v23 = 17;
    sub_10043CC7C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = (v3 + v9[22]);
    v17 = *(v16 + 2);
    v18 = *(v16 + 24);
    v20 = *v16;
    v21 = v17;
    v22 = v18;
    v23 = 18;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = 19;
    type metadata accessor for ArtworkImage.Placeholder(0);
    sub_10043D844(&qword_10118FDC0, type metadata accessor for ArtworkImage.Placeholder, &protocol conformance descriptor for ArtworkImage.Placeholder);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v20 = *(v3 + v9[24]);
    v23 = 20;
    sub_100282B9C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v20 = *(v3 + v9[25]);
    v23 = 21;
    sub_10041E680();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v20 = *(v3 + v9[26]);
    v23 = 22;
    sub_10010FC20(&qword_10118FD60, &qword_100ECC760);
    sub_10043CCD0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10043B390(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v80 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v81 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v83 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v76 - v5;
  v7 = type metadata accessor for URL();
  v84 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_10118FCF8, &qword_100ECC748);
  v85 = *(v10 - 8);
  v86 = v10;
  __chkstk_darwin();
  v12 = &v76 - v11;
  v13 = type metadata accessor for WidgetMusicItem(0);
  __chkstk_darwin();
  v15 = (&v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v88 = a1;
  sub_10000954C(a1, v16);
  sub_10043C558();
  v87 = v12;
  v17 = v89;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    v89 = v17;
    sub_10000959C(v88);
    v22 = 0;
LABEL_4:

    return;
  }

  v76 = v6;
  v77 = v7;
  v19 = v85;
  v18 = v86;
  v78 = v13;
  v79 = v15;
  LOBYTE(v90) = 0;
  v20 = v87;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v79;
  *v79 = v21;
  *(v23 + 1) = v24;
  LOBYTE(v90) = 1;
  *(v23 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v23 + 3) = v25;
  LOBYTE(v90) = 2;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v89 = 0;
  *(v23 + 4) = v26;
  *(v23 + 5) = v27;
  LOBYTE(v90) = 3;
  sub_10043D844(&qword_10118FD08, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v28 = v77;
  v29 = v89;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v89 = v29;
  if (v29)
  {
    (*(v19 + 8))(v20, v18);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    LODWORD(v81) = 0;
    LODWORD(v82) = 0;
    LODWORD(v83) = 0;
    LODWORD(v85) = 0;
    LODWORD(v86) = 0;
    LODWORD(v87) = 0;
    v33 = 0;
    v34 = 0;
LABEL_12:
    sub_10000959C(v88);

    v38 = v34;
    if ((v30 & 1) == 0)
    {
      v39 = 0;
      v40 = 0;
      v22 = 0;
      if (!v31)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }

    v22 = 0;
    v40 = 0;
    v39 = 0;
LABEL_27:
    (*(v84 + 8))(v79 + v78[7], v77);
    if ((v31 & 1) == 0)
    {
LABEL_14:
      v41 = v78;
      v42 = v79;
      if (v32)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }

LABEL_28:
    v41 = v78;
    v42 = v79;

    if (v32)
    {
LABEL_15:

      if ((v81 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }

LABEL_29:
    if (!v81)
    {
LABEL_16:
      if (v82)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }

LABEL_30:

    if (v82)
    {
LABEL_17:

      if ((v83 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_32;
    }

LABEL_31:
    if (!v83)
    {
LABEL_18:
      if (v85)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }

LABEL_32:

    if (v85)
    {
LABEL_19:

      if ((v86 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!v86)
    {
LABEL_20:
      if (v87)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }

LABEL_34:

    if (v87)
    {
LABEL_21:
      sub_1000095E8(v42 + v41[17], &qword_101188C20, &qword_100EC2030);
      if ((v33 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }

LABEL_35:
    if (!v33)
    {
LABEL_22:
      if (v38)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }

LABEL_36:
    sub_1000095E8(v42 + v41[18], &qword_101188C20, &qword_100EC2030);
    if (v38)
    {
LABEL_23:

      if ((v39 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_38;
    }

LABEL_37:
    if (!v39)
    {
LABEL_24:
      if (!v40)
      {
        goto LABEL_4;
      }

LABEL_39:
      sub_10043C9C4(v42 + v41[23], type metadata accessor for ArtworkImage.Placeholder);
      goto LABEL_4;
    }

LABEL_38:

    if ((v40 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  v35 = v78;
  (*(v84 + 32))(&v23[v78[7]], v9, v28);
  v93 = 4;
  sub_10043C5AC();
  v36 = v89;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v89 = v36;
  if (v36)
  {
    (*(v19 + 8))(v87, v18);
LABEL_11:
    v31 = 0;
    v32 = 0;
    LODWORD(v81) = 0;
    LODWORD(v82) = 0;
    LODWORD(v83) = 0;
    LODWORD(v85) = 0;
    LODWORD(v86) = 0;
    LODWORD(v87) = 0;
    v33 = 0;
    v34 = 0;
    v30 = 1;
    goto LABEL_12;
  }

  v23[v35[8]] = v90;
  v93 = 5;
  sub_10043C600();
  v37 = v89;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v37)
  {
    v89 = v37;
    (*(v19 + 8))(v87, v86);
    goto LABEL_11;
  }

  v43 = *(&v90 + 1);
  v44 = &v23[v35[9]];
  *v44 = v90;
  *(v44 + 1) = v43;
  v93 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v23[v35[10]] = v90;
  LOBYTE(v90) = 7;
  v45 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = &v23[v78[11]];
  *v46 = v45;
  v46[1] = v47;
  v93 = 8;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v89 = 0;
  *(v79 + v78[12]) = v90;
  v93 = 9;
  v48 = v89;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v89 = v48;
  if (v48)
  {
    (*(v19 + 8))(v87, v86);
    LODWORD(v83) = 0;
    LODWORD(v85) = 0;
    LODWORD(v86) = 0;
    LODWORD(v87) = 0;
    v33 = 0;
    v34 = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    LODWORD(v81) = 1;
    LODWORD(v82) = 1;
    goto LABEL_12;
  }

  *(v79 + v78[13]) = v90;
  LOBYTE(v90) = 10;
  v49 = v89;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v89 = v49;
  if (v49)
  {
    (*(v19 + 8))(v87, v86);
    LODWORD(v85) = 0;
    LODWORD(v86) = 0;
    LODWORD(v87) = 0;
    v33 = 0;
    v34 = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    LODWORD(v81) = 1;
    LODWORD(v82) = 1;
    LODWORD(v83) = 1;
    goto LABEL_12;
  }

  v52 = (v79 + v78[14]);
  *v52 = v50;
  v52[1] = v51;
  sub_10010FC20(&qword_10118FD20, &qword_100ECC750);
  v93 = 11;
  sub_10043C654();
  v53 = v89;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v89 = v53;
  if (v53)
  {
    (*(v19 + 8))(v87, v86);
    LODWORD(v86) = 0;
    LODWORD(v87) = 0;
    v33 = 0;
    v34 = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    LODWORD(v81) = 1;
    LODWORD(v82) = 1;
    LODWORD(v83) = 1;
    LODWORD(v85) = 1;
    goto LABEL_12;
  }

  *(v79 + v78[15]) = v90;
  LOBYTE(v90) = 12;
  v54 = KeyedDecodingContainer.decode(_:forKey:)();
  v89 = 0;
  *(v79 + v78[16]) = v54 & 1;
  type metadata accessor for Date();
  LOBYTE(v90) = 13;
  sub_10043D844(&qword_10118F0D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v55 = v89;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v89 = v55;
  if (v55)
  {
    (*(v19 + 8))(v87, v86);
    LODWORD(v87) = 0;
    v33 = 0;
    v34 = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    LODWORD(v81) = 1;
    LODWORD(v82) = 1;
    LODWORD(v83) = 1;
    LODWORD(v85) = 1;
    LODWORD(v86) = 1;
    goto LABEL_12;
  }

  sub_10041E7D4(v76, v79 + v78[17]);
  LOBYTE(v90) = 14;
  v56 = v89;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v89 = v56;
  if (v56)
  {
    (*(v19 + 8))(v87, v86);
    v33 = 0;
    v34 = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    LODWORD(v81) = 1;
    LODWORD(v82) = 1;
    LODWORD(v83) = 1;
    LODWORD(v85) = 1;
    LODWORD(v86) = 1;
    LODWORD(v87) = 1;
    goto LABEL_12;
  }

  sub_10041E7D4(v83, v79 + v78[18]);
  LOBYTE(v90) = 15;
  v57 = v89;
  v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v89 = v57;
  if (v57)
  {
    (*(v19 + 8))(v87, v86);
    v34 = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    LODWORD(v81) = 1;
    LODWORD(v82) = 1;
    LODWORD(v83) = 1;
    LODWORD(v85) = 1;
    LODWORD(v86) = 1;
    LODWORD(v87) = 1;
    v33 = 1;
    goto LABEL_12;
  }

  v60 = (v79 + v78[19]);
  *v60 = v58;
  v60[1] = v59;
  sub_10010FC20(&qword_10118FD38, &qword_100ECC758);
  v93 = 16;
  sub_10043C72C();
  v61 = v89;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v89 = v61;
  if (v61)
  {
    (*(v19 + 8))(v87, v86);
    v30 = 1;
    v31 = 1;
    v32 = 1;
    LODWORD(v81) = 1;
    LODWORD(v82) = 1;
    LODWORD(v83) = 1;
    LODWORD(v85) = 1;
    LODWORD(v86) = 1;
    LODWORD(v87) = 1;
    v33 = 1;
    v34 = 1;
    goto LABEL_12;
  }

  *(v79 + v78[20]) = v90;
  v93 = 17;
  sub_10043C804();
  v62 = v89;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v89 = v62;
  if (v62 || (v63 = v91, v64 = v92, v65 = v79 + v78[21], *v65 = v90, *(v65 + 2) = v63, v65[24] = v64, v93 = 18, v66 = v89, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v89 = v66) != 0) || (v67 = v91, v68 = v92, v69 = v79 + v78[22], *v69 = v90, *(v69 + 2) = v67, v69[24] = v68, LOBYTE(v90) = 19, sub_10043D844(&qword_10118FD58, type metadata accessor for ArtworkImage.Placeholder, &protocol conformance descriptor for ArtworkImage.Placeholder), v70 = v89, KeyedDecodingContainer.decode<A>(_:forKey:)(), (v89 = v70) != 0))
  {
    (*(v19 + 8))(v87, v86);
    sub_10000959C(v88);
    v40 = 0;
    v22 = 0;
LABEL_58:

    v39 = 1;
    v38 = 1;
    v33 = 1;
    LODWORD(v87) = 1;
    LODWORD(v86) = 1;
    LODWORD(v85) = 1;
    LODWORD(v83) = 1;
    LODWORD(v82) = 1;
    LODWORD(v81) = 1;
    v32 = 1;
    LOBYTE(v31) = 1;
    goto LABEL_27;
  }

  sub_10043C858(v81, v79 + v78[23]);
  v93 = 20;
  sub_100282AE0();
  v71 = v89;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v89 = v71;
  if (v71 || (*(v79 + v78[24]) = v90, v93 = 21, sub_10041E62C(), v72 = v89, KeyedDecodingContainer.decode<A>(_:forKey:)(), (v89 = v72) != 0))
  {
    (*(v19 + 8))(v87, v86);
    sub_10000959C(v88);
    v22 = 0;
    v40 = 1;
    goto LABEL_58;
  }

  v22 = v90;
  *(v79 + v78[25]) = v90;
  sub_10010FC20(&qword_10118FD60, &qword_100ECC760);
  v93 = 22;
  sub_10043C8BC();
  v73 = v89;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v89 = v73;
  if (v73)
  {
    (*(v19 + 8))(v87, v86);
    sub_10000959C(v88);
    v40 = 1;
    goto LABEL_58;
  }

  v74 = v78[26];
  (*(v19 + 8))(v87, v86);
  v75 = v79;
  *(v79 + v74) = v90;
  sub_10043E440(v75, v82, type metadata accessor for WidgetMusicItem);
  sub_10000959C(v88);
  sub_10043C9C4(v75, type metadata accessor for WidgetMusicItem);
}

uint64_t sub_10043C474@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10043DD14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10043C4A8(uint64_t a1)
{
  v2 = sub_10043C558();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10043C4E4(uint64_t a1)
{
  v2 = sub_10043C558();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10043C558()
{
  result = qword_10118FD00;
  if (!qword_10118FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD00);
  }

  return result;
}

unint64_t sub_10043C5AC()
{
  result = qword_10118FD10;
  if (!qword_10118FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD10);
  }

  return result;
}

unint64_t sub_10043C600()
{
  result = qword_10118FD18;
  if (!qword_10118FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD18);
  }

  return result;
}

unint64_t sub_10043C654()
{
  result = qword_10118FD28;
  if (!qword_10118FD28)
  {
    sub_1001109D0(&qword_10118FD20, &qword_100ECC750);
    sub_10043C6D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD28);
  }

  return result;
}

unint64_t sub_10043C6D8()
{
  result = qword_10118FD30;
  if (!qword_10118FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD30);
  }

  return result;
}

unint64_t sub_10043C72C()
{
  result = qword_10118FD40;
  if (!qword_10118FD40)
  {
    sub_1001109D0(&qword_10118FD38, &qword_100ECC758);
    sub_10043C7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD40);
  }

  return result;
}

unint64_t sub_10043C7B0()
{
  result = qword_10118FD48;
  if (!qword_10118FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD48);
  }

  return result;
}

unint64_t sub_10043C804()
{
  result = qword_10118FD50;
  if (!qword_10118FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD50);
  }

  return result;
}

uint64_t sub_10043C858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10043C8BC()
{
  result = qword_10118FD68;
  if (!qword_10118FD68)
  {
    sub_1001109D0(&qword_10118FD60, &qword_100ECC760);
    sub_10043C940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD68);
  }

  return result;
}

unint64_t sub_10043C940()
{
  result = qword_10118FD70;
  if (!qword_10118FD70)
  {
    sub_1001109D0(&unk_10118FC68, &qword_100ECC468);
    sub_10041E62C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD70);
  }

  return result;
}

uint64_t sub_10043C9C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10043CA24()
{
  result = qword_10118FD88;
  if (!qword_10118FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD88);
  }

  return result;
}

unint64_t sub_10043CA78()
{
  result = qword_10118FD90;
  if (!qword_10118FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD90);
  }

  return result;
}

unint64_t sub_10043CACC()
{
  result = qword_10118FD98;
  if (!qword_10118FD98)
  {
    sub_1001109D0(&qword_10118FD20, &qword_100ECC750);
    sub_10043CB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD98);
  }

  return result;
}

unint64_t sub_10043CB50()
{
  result = qword_10118FDA0;
  if (!qword_10118FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FDA0);
  }

  return result;
}

unint64_t sub_10043CBA4()
{
  result = qword_10118FDA8;
  if (!qword_10118FDA8)
  {
    sub_1001109D0(&qword_10118FD38, &qword_100ECC758);
    sub_10043CC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FDA8);
  }

  return result;
}

unint64_t sub_10043CC28()
{
  result = qword_10118FDB0;
  if (!qword_10118FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FDB0);
  }

  return result;
}

unint64_t sub_10043CC7C()
{
  result = qword_10118FDB8;
  if (!qword_10118FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FDB8);
  }

  return result;
}

unint64_t sub_10043CCD0()
{
  result = qword_10118FDC8;
  if (!qword_10118FDC8)
  {
    sub_1001109D0(&qword_10118FD60, &qword_100ECC760);
    sub_10043CD54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FDC8);
  }

  return result;
}

unint64_t sub_10043CD54()
{
  result = qword_10118FDD0;
  if (!qword_10118FDD0)
  {
    sub_1001109D0(&unk_10118FC68, &qword_100ECC468);
    sub_10041E680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FDD0);
  }

  return result;
}

uint64_t sub_10043CDD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMusicItem(0);
  v5 = v4[9];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v10 = v4[10], v11 = (a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v14 = v13[1], v12) ? (v15 = v14 == 0) : (v15 = 1), !v15 && (*v11 == *v13 ? (v23 = v12 == v14) : (v23 = 0), v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)) || ((v16 = v4[11], v17 = *(a1 + v16), v18 = *(a1 + v16 + 8), v19 = (a2 + v16), v17 == *v19) ? (v20 = v18 == v19[1]) : (v20 = 0), v20 || (v21 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v21 & 1) != 0)))
  {
    v24 = v4[12];
    v25 = (a1 + v24);
    v26 = *(a1 + v24 + 8);
    v27 = (a2 + v24);
    v28 = v27[1];
    if (v26)
    {
      if (v28)
      {
        v29 = *v25 == *v27 && v26 == v28;
        if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v28)
    {
      return 1;
    }

    v30 = v4[13];
    v31 = (a1 + v30);
    v32 = *(a1 + v30 + 8);
    v33 = (a2 + v30);
    v34 = v33[1];
    result = (v32 | v34) == 0;
    if (v32)
    {
      v35 = v34 == 0;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      return result;
    }

    if (*v31 != *v33 || v32 != v34)
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 1;
  }

  return result;
}

unint64_t sub_10043CF60(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109AD60, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10043CFAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_10043D10C(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10010FC20(&qword_10118FE08, &qword_100ECC798);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21 - v7;
  sub_10000954C(a1, a1[3]);
  sub_10043D79C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000959C(a1);
  }

  else
  {
    v26 = 0;
    sub_10043C600();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v27;
    v25 = v28;
    LOBYTE(v27) = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v11;
    v21 = v10;
    v22 = v9;
    LOBYTE(v27) = 2;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = v13;
    LOBYTE(v27) = 3;
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    v16 = v12;
    v17 = v25;

    v18 = v24;

    v19 = v23;

    sub_10000959C(a1);

    v20 = v21;
    *a2 = v22;
    a2[1] = v17;
    a2[2] = v20;
    a2[3] = v18;
    a2[4] = v16;
    a2[5] = v19;
    a2[6] = v15;
  }
}

uint64_t sub_10043D410(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_10043D524(void *a1)
{
  v2 = sub_10010FC20(&qword_10118FDF0, &qword_100ECC788);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - v4;
  sub_10000954C(a1, a1[3]);
  sub_10043D748();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9 = 0;
  sub_100282AE0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v10;
  v9 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000959C(a1);
  return v6;
}

unint64_t sub_10043D748()
{
  result = qword_10118FDF8;
  if (!qword_10118FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FDF8);
  }

  return result;
}

unint64_t sub_10043D79C()
{
  result = qword_10118FE10;
  if (!qword_10118FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE10);
  }

  return result;
}

unint64_t sub_10043D7F0()
{
  result = qword_10118FE20;
  if (!qword_10118FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE20);
  }

  return result;
}

uint64_t sub_10043D844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for WidgetMusicItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetMusicItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10043DA00()
{
  result = qword_10118FE38;
  if (!qword_10118FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE38);
  }

  return result;
}

unint64_t sub_10043DA58()
{
  result = qword_10118FE40;
  if (!qword_10118FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE40);
  }

  return result;
}

unint64_t sub_10043DAB0()
{
  result = qword_10118FE48;
  if (!qword_10118FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE48);
  }

  return result;
}

unint64_t sub_10043DB08()
{
  result = qword_10118FE50;
  if (!qword_10118FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE50);
  }

  return result;
}

unint64_t sub_10043DB60()
{
  result = qword_10118FE58;
  if (!qword_10118FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE58);
  }

  return result;
}

unint64_t sub_10043DBB8()
{
  result = qword_10118FE60;
  if (!qword_10118FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE60);
  }

  return result;
}

unint64_t sub_10043DC10()
{
  result = qword_10118FE68;
  if (!qword_10118FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE68);
  }

  return result;
}

unint64_t sub_10043DC68()
{
  result = qword_10118FE70;
  if (!qword_10118FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE70);
  }

  return result;
}

unint64_t sub_10043DCC0()
{
  result = qword_10118FE78;
  if (!qword_10118FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE78);
  }

  return result;
}

uint64_t sub_10043DD14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469747265707573 && a2 == 0xEA0000000000656CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44496D657469 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49676F6C61746163 && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4970655269726973 && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xEF44496D65744972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100E4A6F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100E4A710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x736567646162 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x626179616C507369 && a2 == 0xEA0000000000656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100E3C6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xEF736B6361725472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100E4A730 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100E4A750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000100E4A770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x49656C6261646F63 && a2 == 0xEC0000006567616DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000100E4A790 == a2)
  {

    return 22;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

uint64_t sub_10043E440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10043E4A8()
{
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v1 = &v4 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  result = AccessibilityString.init(_:tableName:bundle:comment:)(v1, 0, 0, 0);
  qword_101218CA8 = result;
  unk_101218CB0 = v3;
  return result;
}

uint64_t sub_10043E568()
{
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v1 = &v4 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  result = AccessibilityString.init(_:tableName:bundle:comment:)(v1, 0, 0, 0);
  qword_101218CB8 = result;
  unk_101218CC0 = v3;
  return result;
}

uint64_t sub_10043E630()
{
  v0 = qword_10118FE80;

  return v0;
}

double sub_10043E674(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 contentScrollViewForEdge:1];

      if (v7)
      {
        [v7 setKeyboardDismissMode:1];
      }
    }

    if (([*(v4 + 32) hidesNavigationBarDuringPresentation] & 1) == 0)
    {
      v8 = [objc_opt_self() currentDevice];
      v9 = [v8 userInterfaceIdiom];

      if (v9 != 6)
      {
        v10 = swift_unknownObjectWeakLoadStrong();
        v11 = v10;
        if (v10)
        {
          v12 = [v10 navigationItem];

          v13 = [v12 largeTitleDisplayMode];
        }

        else
        {
          v13 = 0;
        }

        *(v4 + 16) = v13;
        *(v4 + 24) = v11 == 0;
        v14 = swift_unknownObjectWeakLoadStrong();
        if (v14)
        {
          v15 = v14;
          v16 = [v14 navigationItem];

          [v16 setLargeTitleDisplayMode:2];
        }
      }
    }

    v17 = *(v4 + 72);
    if (v17)
    {
      v18 = *(v4 + 80);

      v17(v4);
      sub_100020438(v17, v18);
    }
  }

  return result;
}

double sub_10043E844(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 88);
    v5 = *(Strong + 96);
    sub_100030444(v6, v5);

    if (v6)
    {
      v7 = a1 + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text;
      v8 = *(a1 + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
      v9 = *(v7 + 8);

      v6(v8, v9);
      sub_100020438(v6, v5);
    }
  }

  return result;
}

double sub_10043E8F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (([*(Strong + 32) hidesNavigationBarDuringPresentation] & 1) == 0)
    {
      v5 = [objc_opt_self() currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (v6 != 6 && (*(v4 + 24) & 1) == 0)
      {
        v7 = *(v4 + 16);
        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          v9 = v8;
          v10 = [v8 navigationItem];

          [v10 setLargeTitleDisplayMode:v7];
        }
      }
    }

    v11 = *(v4 + 88);
    if (v11)
    {
      v12 = *(v4 + 96);

      v11(0, 0);
      sub_100020438(v11, v12);
    }

    v13 = *(v4 + 104);
    if (v13)
    {
      v14 = *(v4 + 112);

      v13(v4);
      sub_100020438(v13, v14);
    }
  }

  return result;
}

id sub_10043EA50()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 128);
  }

  else
  {
    sub_10043F470();
    v3 = v0;
    v4 = static UIKeyCommand.findKeyCommand(affecting:)();
    v5 = *(v0 + 128);
    *(v3 + 128) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_10043EAB8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v4 = (v0 + 64);
    if (*(v0 + 64))
    {
      goto LABEL_11;
    }

    v3 = 0;
    goto LABEL_7;
  }

  v2 = Strong;
  v3 = [Strong navigationItem];

  v4 = (v0 + 64);
  if ((*(v0 + 64) & 1) == 0)
  {
LABEL_7:
    [*(v0 + 32) setActive:0];
    if (v3)
    {
      [v3 setSearchController:0];
      goto LABEL_9;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_14;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

  [v3 setSearchController:*(v0 + 32)];
LABEL_9:
  [v3 setPreferredSearchBarPlacement:2];
  v5 = swift_unknownObjectWeakLoadStrong();
  v15 = v3;
  if (v5)
  {
    v6 = [v5 traitCollection];

    v7 = [v6 userInterfaceIdiom];
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  [v15 setHidesSearchBarWhenScrolling:v8];

LABEL_14:
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = sub_10043EA50();
    [v10 removeKeyCommand:v11];
  }

  if (*v4 == 1)
  {
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = sub_10043EA50();
      [v13 addKeyCommand:v14];
    }
  }
}

char *sub_10043ECA4(char *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = &result[*a4];
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 1);
    v7 = result;
    sub_100030444(v5, v6);
    v5(v7);

    return sub_100020438(v5, v6);
  }

  return result;
}

id sub_10043EE14(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  *v3 = 0;
  v3[1] = 0;

  result = [a1 setText:0];
  v5 = *(v1 + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_didCancel);
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_didCancel + 8);

    v5(v1);

    return sub_100020438(v5, v6);
  }

  return result;
}

id sub_10043EFBC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LibrarySearchController.BarDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10043F084()
{
  swift_unknownObjectWeakDestroy();

  sub_100020438(*(v0 + 72), *(v0 + 80));
  sub_100020438(*(v0 + 88), *(v0 + 96));
  sub_100020438(*(v0 + 104), *(v0 + 112));

  return v0;
}

uint64_t sub_10043F0DC()
{
  sub_10043F084();

  return swift_deallocClassInstance();
}

uint64_t sub_10043F158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  swift_unknownObjectWeakInit();
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 1;
  v6 = type metadata accessor for LibrarySearchController.BarDelegate();
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = [objc_allocWithZone(v6) init];
  *(v3 + 128) = 0;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  swift_unknownObjectWeakAssign();
  v7 = *(v3 + 120);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = &v7[OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_didBeginEditing];
  v10 = *&v7[OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_didBeginEditing];
  v11 = *&v7[OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_didBeginEditing + 8];
  *v9 = sub_10043F458;
  v9[1] = v8;
  v12 = v7;

  sub_100020438(v10, v11);

  v13 = *(v3 + 120);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = &v13[OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_textDidChange];
  v16 = *&v13[OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_textDidChange];
  v17 = *&v13[OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_textDidChange + 8];
  *v15 = sub_10043F460;
  v15[1] = v14;
  v18 = v13;

  sub_100020438(v16, v17);

  v19 = *(v3 + 120);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = v19;

  v22 = &v21[OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_didCancel];
  v23 = *&v21[OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_didCancel];
  v24 = *&v21[OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_didCancel + 8];
  *v22 = sub_10043F468;
  v22[1] = v20;

  sub_100020438(v23, v24);

  [*(v3 + 32) setObscuresBackgroundDuringPresentation:0];
  v25 = [*(v3 + 32) searchBar];
  [v25 setDelegate:*(v3 + 120)];

  v26 = [*(v3 + 32) searchBar];
  [v26 setReturnKeyType:9];

  if (a2)
  {
    v27 = [*(v3 + 32) searchBar];
    v28 = String._bridgeToObjectiveC()();

    [v27 setPlaceholder:v28];
  }

  sub_10043EAB8();
  return v3;
}

unint64_t sub_10043F470()
{
  result = qword_1011A46F0;
  if (!qword_1011A46F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011A46F0);
  }

  return result;
}

void sub_10043F4BC(void *a1)
{
  sub_10010FC20(&qword_1011901E0, &unk_100ECF200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  v4 = *&v1[OBJC_IVAR____TtC5Music32LyricsSharingAnimationController_sourceViewController];
  *(inited + 32) = v4;
  v5 = v4;
  v6 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v6)
  {
    v7 = v6;
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = v8;
      inited = sub_10049A584(1, 2, 1, inited);
      *(inited + 16) = 2;
      *(inited + 48) = v7;
      *(inited + 56) = v9;
    }

    else
    {
    }
  }

  sub_10028D0DC(inited, 0);
  v11 = v10;

  v40.receiver = v1;
  v40.super_class = type metadata accessor for LyricsSharingAnimationController();
  v12 = objc_msgSendSuper2(&v40, "interruptibleAnimatorForTransition:", a1);
  swift_unknownObjectRelease();
  if (v11 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_14;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
  }

  v14 = 0;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = sub_1007E9A10(v14, v11);
    }

    else
    {
      v15 = *(v11 + 8 * v14 + 32);
    }

    ++v14;
    v16 = [a1 containerView];
    [*(v15 + 32) bounds];
    [v16 convertRect:*(v15 + 32) fromCoordinateSpace:?];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [*(v15 + 32) setTranslatesAutoresizingMaskIntoConstraints:1];
    [*(v15 + 32) setFrame:{v18, v20, v22, v24}];
    v25 = [a1 containerView];
    [v25 addSubview:*(v15 + 32)];
  }

  while (v13 != v14);
LABEL_14:
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_10043FF44;
  v39 = v26;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10002BC98;
  v37 = &unk_1010AC368;
  v27 = _Block_copy(&aBlock);

  [v1 setNoninteractiveAnimations:v27];
  _Block_release(v27);
  v28 = swift_allocObject();
  *(v28 + 16) = v11;
  v38 = sub_10043FF4C;
  v39 = v28;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_1005C3688;
  v37 = &unk_1010AC3B8;
  v29 = _Block_copy(&aBlock);

  [v1 setNoninteractiveCompletion:v29];
  _Block_release(v29);
  v30 = *&v1[OBJC_IVAR____TtC5Music32LyricsSharingAnimationController_stampAnimator];
  v31 = swift_allocObject();
  *(v31 + 16) = v11;
  *(v31 + 24) = a1;
  v38 = sub_10043FF54;
  v39 = v31;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10002BC98;
  v37 = &unk_1010AC408;
  v32 = _Block_copy(&aBlock);
  v33 = v30;
  swift_unknownObjectRetain();

  [v33 addAnimations:v32];
  _Block_release(v32);

  v1[OBJC_IVAR____TtC5Music32LyricsSharingAnimationController_didPrepareAnimations] = 1;
}

void sub_10043F98C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC5Music32LyricsSharingAnimationController_stampAnimator);

    [v3 startAnimationAfterDelay:0.1];
  }
}

void sub_10043FA0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 >= 1)
  {
    v4 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = sub_1007E9A10(v4, a2);
        v6 = v5[5];
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v5 = *(a2 + 8 * v4 + 32);

        v6 = v5[5];
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      v7 = v6[7];
      if (v7)
      {
        v8 = v6[8];

        sub_100030444(v7, v8);
        v7(v5);
        sub_100020438(v7, v8);
      }

      else
      {
      }

      (*(*v5 + 264))(v6, 1);
      v9 = v6[13];
      if (v9)
      {
        v10 = v6[14];

        v9(1, v5);

        sub_100020438(v9, v10);
        goto LABEL_6;
      }

LABEL_5:

LABEL_6:
      if (v3 == ++v4)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_10043FBA4(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_1007E9A10(v5, a1);
        v7 = *(v6 + 40);
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);

        v7 = *(v6 + 40);
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      v8 = v7[5];
      if (v8)
      {
        v9 = v7[6];
        sub_100030444(v7[5], v9);

        v10 = v8(v6);
        v12 = v11;
        v14 = v13;
        v16 = v15;
        sub_100020438(v8, v9);
        v17 = v7[11];
        if (v17)
        {
          v18 = v7[12];

          v17(v6);
          sub_100020438(v17, v18);
        }

        (*(*v6 + 256))(v7);
        v19 = v7[4];
        v20 = *(v6 + 32);
        v21 = v19;
        v22 = [a2 containerView];
        [v21 convertRect:v22 toCoordinateSpace:{v10, v12, v14, v16}];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;

        UIView.untransformedFrame.setter(v24, v26, v28, v30);

        goto LABEL_6;
      }

LABEL_5:

LABEL_6:
      if (v4 == ++v5)
      {
        return;
      }
    }
  }

  __break(1u);
}

id sub_10043FEA0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LyricsSharingAnimationController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10043FF64()
{
  result = qword_101190200;
  if (!qword_101190200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190200);
  }

  return result;
}

unint64_t sub_10043FFBC()
{
  result = qword_101190208;
  if (!qword_101190208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190208);
  }

  return result;
}

unint64_t sub_100440014()
{
  result = qword_101190210;
  if (!qword_101190210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190210);
  }

  return result;
}

unint64_t sub_10044006C()
{
  result = qword_101190218;
  if (!qword_101190218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190218);
  }

  return result;
}

uint64_t sub_10044012C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100006080(v0, qword_101218CC8);
  sub_1000060E4(v0, qword_101218CC8);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1004401B0()
{
  *(v0 + 112) = type metadata accessor for MainActor();
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100440248, v2, v1);
}

uint64_t sub_100440248()
{

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1004402E0, 0, 0);
}

uint64_t sub_1004402E0(uint64_t a1)
{
  *(v1 + 128) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044036C, v3, v2);
}

uint64_t sub_10044036C()
{

  *(v0 + 136) = qword_101218AD8;

  return _swift_task_switch(sub_1004403E0, 0, 0);
}

uint64_t sub_1004403E0()
{
  *(v0 + 40) = &type metadata for Player.PlaybackCommand;
  *(v0 + 48) = &protocol witness table for Player.PlaybackCommand;
  *(v0 + 16) = 3;
  *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 56) = 0xD000000000000017;
  *(v0 + 64) = 0x8000000100E4AB50;
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1004404E4;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1004404E4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1004407DC;
  }

  else
  {
    *(v4 + 152) = a1;
    sub_100440B1C(v4 + 56);
    sub_10000959C((v4 + 16));
    v5 = sub_100440620;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100440620()
{
  v15 = v0;
  v1 = v0[19];
  if (qword_10117F710 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1011901E8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[12] = v1;
    v8 = v3;
    sub_10010FC20(&qword_101184438, &unk_100ECCD30);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000105AC(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Toggled playback with status: %{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  static IntentResult.result<>()();
  v12 = v0[1];

  return v12();
}

uint64_t sub_1004407DC()
{
  v12 = v0;
  sub_100440B1C((v0 + 7));
  sub_10000959C(v0 + 2);
  if (qword_10117F710 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1011901E8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[12] = 0;
    sub_10010FC20(&qword_101184438, &unk_100ECCD30);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000105AC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Toggled playback with status: %{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  static IntentResult.result<>()();
  v9 = v0[1];

  return v9();
}

uint64_t sub_100440990@<X0>(uint64_t a1@<X8>)
{
  if (qword_10117F708 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1000060E4(v2, qword_101218CC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100440A38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return sub_100440190(a1);
}

uint64_t sub_100440AD0(uint64_t a1)
{
  v2 = sub_10043FFBC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100440B1C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101183910, &unk_100EBDD00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100440B84()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011901E8);
  sub_1000060E4(v0, qword_1011901E8);
  return static Logger.music(_:)(0xD000000000000017, 0x8000000100ECCCE0);
}

id sub_100440BE8(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_100446558, v4);

  return v5;
}

void sub_100440C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t *GroupActivitiesManager.suggestionProvider.unsafeMutableAddressor()
{
  if (qword_10117F718 != -1)
  {
    swift_once();
  }

  return &static GroupActivitiesManager.suggestionProvider;
}

id static GroupActivitiesManager.suggestionProvider.getter()
{
  if (qword_10117F718 != -1)
  {
    swift_once();
  }

  v1 = static GroupActivitiesManager.suggestionProvider;

  return v1;
}

uint64_t sub_100440DA4()
{
  v1[54] = v0;
  v2 = type metadata accessor for Logger();
  v1[55] = v2;
  v1[56] = *(v2 - 8);
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  v1[59] = swift_task_alloc();
  v3 = type metadata accessor for Playlist();
  v1[60] = v3;
  v1[61] = *(v3 - 8);
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v4 = type metadata accessor for Album();
  v1[64] = v4;
  v1[65] = *(v4 - 8);
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();

  return _swift_task_switch(sub_100440F78, 0, 0);
}

uint64_t sub_100440F78()
{
  v55 = v0;
  sub_100442468(*(v0 + 432), v0 + 16);
  if (*(v0 + 64) != 1)
  {
    v5 = *(v0 + 472);
    v6 = *(v0 + 16);
    GenericMusicItem.init(_:)();
    v7 = type metadata accessor for GenericMusicItem();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 48))(v5, 1, v7);
    v10 = *(v0 + 472);
    if (v9 == 1)
    {
      sub_1000095E8(*(v0 + 472), &unk_101189DA0, &unk_100EBF370);
      *(v0 + 112) = 0u;
      *(v0 + 128) = 0u;
      *(v0 + 144) = 0;
    }

    else
    {
      GenericMusicItem.innerMusicItem.getter((v0 + 112));
      (*(v8 + 8))(v10, v7);
      if (*(v0 + 136))
      {
        sub_100059A8C((v0 + 112), v0 + 72);
        sub_100008FE4(v0 + 72, v0 + 192);
        sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
        sub_10010FC20(&unk_101184000, &unk_100EBCFB0);
        if (swift_dynamicCast())
        {
          sub_100059A8C((v0 + 232), v0 + 152);
          v12 = *(v0 + 176);
          v13 = *(v0 + 184);
          sub_10000954C((v0 + 152), v12);
          v11 = (*(v13 + 8))(v12, v13);

          sub_10000959C((v0 + 72));
          sub_10000959C((v0 + 152));
          goto LABEL_23;
        }

        v33 = *(v0 + 464);
        v34 = *(v0 + 440);
        v35 = *(v0 + 448);
        *(v0 + 232) = 0u;
        *(v0 + 248) = 0u;
        *(v0 + 264) = 0;
        sub_1000095E8(v0 + 232, &unk_101181500, &qword_100EBF9D0);
        v36 = Logger.groupActivities.unsafeMutableAddressor();
        (*(v35 + 16))(v33, v36, v34);
        sub_100008FE4(v0 + 72, v0 + 272);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        v39 = os_log_type_enabled(v37, v38);
        v40 = *(v0 + 464);
        v42 = *(v0 + 440);
        v41 = *(v0 + 448);
        if (v39)
        {
          v53 = *(v0 + 464);
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v54 = v44;
          *v43 = 136446210;
          sub_100008FE4(v0 + 272, v0 + 312);
          v45 = String.init<A>(describing:)();
          v47 = v46;
          sub_10000959C((v0 + 272));
          v48 = sub_1000105AC(v45, v47, &v54);

          *(v43 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v37, v38, "MusicKit item=%{public}s does not conform to LinkPresentationMetadataProviding", v43, 0xCu);
          sub_10000959C(v44);

          (*(v41 + 8))(v53, v42);
        }

        else
        {

          sub_10000959C((v0 + 272));
          (*(v41 + 8))(v40, v42);
        }

        v32 = (v0 + 72);
        goto LABEL_21;
      }
    }

    v15 = *(v0 + 448);
    v14 = *(v0 + 456);
    v16 = *(v0 + 440);
    sub_1000095E8(v0 + 112, &qword_10118B990, &unk_100EBE7B0);
    v17 = Logger.groupActivities.unsafeMutableAddressor();
    (*(v15 + 16))(v14, v17, v16);
    v18 = v6;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 448);
    v22 = *(v0 + 456);
    v24 = *(v0 + 440);
    if (v21)
    {
      v52 = *(v0 + 440);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v54 = v26;
      *v25 = 136446210;
      v27 = [v18 humanDescription];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v22;
      v30 = v29;

      v31 = sub_1000105AC(v28, v30, &v54);

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v19, v20, "Could not convert MPModelObject=%{public}s to MusicKit item", v25, 0xCu);
      sub_10000959C(v26);

      (*(v23 + 8))(v51, v52);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    goto LABEL_22;
  }

  sub_100059A8C((v0 + 16), v0 + 352);
  sub_100008FE4(v0 + 352, v0 + 392);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 528);
    v2 = *(v0 + 520);
    v3 = *(v0 + 512);
    (*(v2 + 32))(v1, *(v0 + 536), v3);
    v4 = sub_1005645CC();
LABEL_8:
    v11 = v4;
    (*(v2 + 8))(v1, v3);
    sub_10000959C((v0 + 352));
    sub_10000959C((v0 + 392));
    goto LABEL_23;
  }

  if (swift_dynamicCast())
  {
    v1 = *(v0 + 496);
    v3 = *(v0 + 480);
    v2 = *(v0 + 488);
    (*(v2 + 32))(v1, *(v0 + 504), v3);
    v4 = sub_100562380();
    goto LABEL_8;
  }

  sub_10000959C((v0 + 352));
  v32 = (v0 + 392);
LABEL_21:
  sub_10000959C(v32);
LABEL_22:
  v11 = 0;
LABEL_23:

  v49 = *(v0 + 8);

  return v49(v11);
}

uint64_t sub_100441600(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  v2[21] = swift_task_alloc();
  v3 = type metadata accessor for Playlist();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v4 = type metadata accessor for Album();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_10044176C, 0, 0);
}

uint64_t sub_10044176C()
{
  sub_100442468(*(v0 + 160), v0 + 16);
  if (*(v0 + 64) == 1)
  {

    sub_100059A8C((v0 + 16), v0 + 72);
    sub_100008FE4(v0 + 72, v0 + 112);
    sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
    if (swift_dynamicCast())
    {
      (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 232), *(v0 + 208));
      v1 = swift_task_alloc();
      *(v0 + 240) = v1;
      *v1 = v0;
      v1[1] = sub_100441B58;
      v2 = *(v0 + 152);

      return Album.shareURL.getter(v2);
    }

    if (swift_dynamicCast())
    {
      (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 200), *(v0 + 176));
      v12 = swift_task_alloc();
      *(v0 + 248) = v12;
      *v12 = v0;
      v12[1] = sub_100441D0C;
      v13 = *(v0 + 152);

      return Playlist.shareURL.getter(v13);
    }

    v16 = *(v0 + 152);
    sub_10000959C((v0 + 72));
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    sub_10000959C((v0 + 112));
    goto LABEL_16;
  }

  v4 = *(v0 + 168);
  v5 = *(v0 + 16);
  *(v0 + 256) = v5;
  v6 = v5;
  GenericMusicItem.init(_:)();
  v7 = type metadata accessor for GenericMusicItem();
  *(v0 + 264) = v7;
  v8 = *(v7 - 8);
  *(v0 + 272) = v8;
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    v9 = *(v0 + 168);
    v10 = *(v0 + 152);

    sub_1000095E8(v9, &unk_101189DA0, &unk_100EBF370);
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
LABEL_16:

    v18 = *(v0 + 8);

    return v18();
  }

  v14 = swift_task_alloc();
  *(v0 + 280) = v14;
  *v14 = v0;
  v14[1] = sub_100441EC0;
  v15 = *(v0 + 152);

  return GenericMusicItem.shareURL.getter(v15);
}

uint64_t sub_100441B58()
{

  return _swift_task_switch(sub_100441C54, 0, 0);
}

uint64_t sub_100441C54()
{
  (*(v0[27] + 8))(v0[28], v0[26]);
  sub_10000959C(v0 + 9);
  sub_10000959C(v0 + 14);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100441D0C()
{

  return _swift_task_switch(sub_100441E08, 0, 0);
}

uint64_t sub_100441E08()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  sub_10000959C(v0 + 9);
  sub_10000959C(v0 + 14);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100441EC0()
{

  return _swift_task_switch(sub_100441FBC, 0, 0);
}

uint64_t sub_100441FBC()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 168);

  (*(v2 + 8))(v3, v1);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t GroupActivitiesManager.SuggestionProvider.Item.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = type metadata accessor for Album();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v25 - v12;
  sub_100442468(v1, v31);
  if (v33 == 1)
  {

    sub_100059A8C(v31, &v29);
    sub_100008FE4(&v29, v28);
    sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
    if (swift_dynamicCast())
    {
      (*(v9 + 32))(v11, v13, v8);
      v26 = 0x202D206D75626C41;
      v27 = 0xE800000000000000;
      v14._countAndFlagsBits = Album.title.getter();
      String.append(_:)(v14);

      v15 = v26;
      (*(v9 + 8))(v11, v8);
    }

    else if (swift_dynamicCast())
    {
      (*(v3 + 32))(v5, v7, v2);
      v26 = 0x7473696C79616C50;
      v27 = 0xEB00000000202D20;
      v22._countAndFlagsBits = Playlist.name.getter();
      String.append(_:)(v22);

      v15 = v26;
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v26 = 0;
      v27 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);
      v23._object = 0x8000000100E4ABD0;
      v23._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v23);
      _print_unlocked<A, B>(_:_:)();
      v15 = v26;
    }

    sub_10000959C(&v29);
    sub_10000959C(v28);
  }

  else
  {
    v16 = *&v31[0];
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v29 = 0xD000000000000013;
    v30 = 0x8000000100E4ABB0;
    v17 = [v16 humanDescription];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    return v29;
  }

  return v15;
}

uint64_t GroupActivitiesManager.SuggestionProvider.registerItem(_:intent:)(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v32 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Logger.groupActivities.unsafeMutableAddressor();
  (*(v9 + 16))(v11, v12, v8);
  sub_100442468(a1, v37);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v33 = a1;
    v18 = v17;
    *&v35[0] = v17;
    *v16 = 136446210;
    v19 = GroupActivitiesManager.SuggestionProvider.Item.debugDescription.getter();
    v34 = v7;
    v20 = a2;
    v21 = v3;
    v23 = v22;
    sub_100442874(v37);
    v24 = sub_1000105AC(v19, v23, v35);
    v3 = v21;
    a2 = v20;
    v7 = v34;

    *(v16 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "[Suggestion] will suggest item=%{public}s", v16, 0xCu);
    sub_10000959C(v18);
    a1 = v33;

    (*(v9 + 8))(v11, v32);
  }

  else
  {

    sub_100442874(v37);
    (*(v9 + 8))(v11, v8);
  }

  sub_100442468(a1, v37);
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  sub_100442468(a1, v35);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = v35[1];
  *(v26 + 32) = v35[0];
  *(v26 + 48) = v27;
  *(v26 + 64) = v35[2];
  *(v26 + 80) = v36;
  *(v26 + 88) = a2;
  *(v26 + 96) = v3;
  v28 = a2;
  v29 = v3;
  v38 = sub_1001F4CB8(0, 0, v7, &unk_100ECCD48, v26);
  v30 = v29 + OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_pendingRegistration;
  swift_beginAccess();
  if (*(v30 + 56))
  {

    Task.cancel()();
  }

  swift_beginAccess();
  sub_10006B010(v37, v30, &qword_101190228, &qword_100ECCD50);
  return swift_endAccess();
}

uint64_t sub_1004428A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = type metadata accessor for Logger();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v6[22] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[23] = v8;
  *v8 = v6;
  v8[1] = sub_1004429D0;

  return sub_100440DA4();
}

uint64_t sub_1004429D0(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_100442AD0, 0, 0);
}

uint64_t sub_100442AD0(uint64_t a1, __n128 a2)
{
  v35 = v2;
  v3 = *(v2 + 192);
  if (v3)
  {
    if (static Task<>.isCancelled.getter())
    {
    }

    else
    {
      v21 = *(v2 + 176);
      v23 = *(v2 + 136);
      v22 = *(v2 + 144);
      v24 = *(v2 + 128);
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
      sub_100442468(v24, v2 + 72);
      type metadata accessor for MainActor();
      v26 = v23;
      v27 = v22;
      v28 = v3;
      v29 = static MainActor.shared.getter();
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = &protocol witness table for MainActor;
      *(v30 + 32) = v23;
      *(v30 + 40) = v27;
      v31 = *(v2 + 88);
      *(v30 + 48) = *(v2 + 72);
      *(v30 + 64) = v31;
      *(v30 + 80) = *(v2 + 104);
      *(v30 + 96) = *(v2 + 120);
      *(v30 + 104) = v28;
      sub_1001F4CB8(0, 0, v21, &unk_100ECCF30, v30);
    }
  }

  else
  {
    v5 = *(v2 + 160);
    v4 = *(v2 + 168);
    v6 = *(v2 + 152);
    v7 = *(v2 + 128);
    v8 = Logger.groupActivities.unsafeMutableAddressor();
    (*(v5 + 16))(v4, v8, v6);
    sub_100442468(v7, v2 + 16);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v2 + 160);
    v12 = *(v2 + 168);
    v14 = *(v2 + 152);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v16;
      *v15 = 136446210;
      v17 = GroupActivitiesManager.SuggestionProvider.Item.debugDescription.getter();
      v19 = v18;
      sub_100442874(v2 + 16);
      v20 = sub_1000105AC(v17, v19, &v34);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "[Suggestion] Couldn't build metadata for item=%{public}s", v15, 0xCu);
      sub_10000959C(v16);
    }

    else
    {

      sub_100442874(v2 + 16);
    }

    (*(v13 + 8))(v12, v14);
  }

  v32 = *(v2 + 8);

  return v32();
}

uint64_t sub_100442DB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[11];
  v7 = v1[12];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1004428A4(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_100442E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[41] = a6;
  v7[42] = a7;
  v7[39] = a4;
  v7[40] = a5;
  v8 = type metadata accessor for Logger();
  v7[43] = v8;
  v7[44] = *(v8 - 8);
  v7[45] = swift_task_alloc();
  sub_10010FC20(&qword_1011902F0, &qword_100ECCF38);
  v7[46] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[47] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100442FA4, v10, v9);
}

uint64_t sub_100442FA4()
{

  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 368);
  v2 = *(v0 + 312);
  v3 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = GroupActivitiesManager.itemProvider(with:metadata:)(v2, v1);
  sub_1000095E8(*(v0 + 368), &qword_1011902F0, &qword_100ECCF38);
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v5 = *(v0 + 320) + OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_pendingRegistration;
    swift_beginAccess();
    if (*(v5 + 56))
    {
      v6 = *(v0 + 328);
      sub_100442468(v5, v0 + 152);
      if (sub_100445FD4(v0 + 152, v6))
      {
        v7 = *(v0 + 336);
        sub_100442468(*(v0 + 328), v0 + 16);
        *(v0 + 72) = v4;
        *(v0 + 80) = v7;
        v8 = v4;
        v9 = v7;
        sub_10044339C(v0 + 16);

        sub_100446300(v0 + 16);
        sub_100442874(v0 + 152);
        goto LABEL_9;
      }

      sub_100442874(v0 + 152);
    }
  }

LABEL_9:
  v10 = *(v0 + 320);
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v11 = v10 + OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_pendingRegistration;
  swift_beginAccess();
  if (*(v11 + 56))
  {

    Task.cancel()();
  }

  swift_beginAccess();
  sub_10006B010(v0 + 88, v11, &qword_101190228, &qword_100ECCD50);
  swift_endAccess();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10044339C(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_100442468(a1, v21);
  if (v22 == 1)
  {

    sub_1004462C8(a1, v20);
    v7 = OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_containerItemSuggestion;
    swift_beginAccess();
    sub_10006B010(v20, v1 + v7, &qword_101190238, &qword_100ECCD58);
    swift_endAccess();
    sub_10000959C(v21);
  }

  else
  {
    sub_100442874(v21);
    sub_1004462C8(a1, v20);
    v8 = OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_playingItemSuggestion;
    swift_beginAccess();
    sub_10006B010(v20, v1 + v8, &qword_101190238, &qword_100ECCD58);
    swift_endAccess();
  }

  v9 = Logger.groupActivities.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v9, v3);
  sub_1004462C8(a1, v20);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21[0] = v13;
    *v12 = 136446210;
    v14 = GroupActivitiesManager.SuggestionProvider.Item.debugDescription.getter();
    v16 = v15;
    sub_100446300(v20);
    v17 = sub_1000105AC(v14, v16, v21);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Suggestion] Storing suggestion item=%{public}s", v12, 0xCu);
    sub_10000959C(v13);
  }

  else
  {

    sub_100446300(v20);
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Void __swiftcall GroupActivitiesManager.SuggestionProvider.removePlayingItemSuggestion()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = Logger.groupActivities.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "[Suggestion] Removing playing item suggestion", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v10 = OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_playingItemSuggestion;
  swift_beginAccess();
  sub_10006B010(v12, v1 + v10, &qword_101190238, &qword_100ECCD58);
  swift_endAccess();
}

Swift::Void __swiftcall GroupActivitiesManager.SuggestionProvider.removeSuggestedItem(from:)(UIViewController from)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v59[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v59[-v7];
  __chkstk_darwin();
  v10 = &v59[-v9];
  v11 = v1 + OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_pendingRegistration;
  swift_beginAccess();
  if (*(v11 + 56))
  {
    sub_100442468(v11, &v63);
    if (v66)
    {
      v12 = *(&v65 + 1);
      sub_10000959C(&v63);
      sub_100009F78(0, &qword_101197A30, NSObject_ptr);
      if (static NSObject.== infix(_:_:)())
      {
        v13 = Logger.groupActivities.unsafeMutableAddressor();
        (*(v4 + 16))(v10, v13, v3);
        v14 = v4;
        v15 = from.super.super.isa;
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *&v63 = v61;
          *v18 = 136446210;
          v19 = v15;
          v20 = [(objc_class *)v19 description];
          v62 = v3;
          v21 = v20;
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v17;
          v24 = v23;

          v25 = sub_1000105AC(v22, v24, &v63);

          *(v18 + 4) = v25;
          _os_log_impl(&_mh_execute_header, v16, v60, "[Suggestion] Removing pending suggestion for containerVC=%{public}s", v18, 0xCu);
          sub_10000959C(v61);

          (*(v14 + 8))(v10, v62);
        }

        else
        {

          (*(v14 + 8))(v10, v3);
        }

        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
        v63 = 0u;
        if (*(v11 + 56))
        {

          Task.cancel()();
        }

        swift_beginAccess();
        v48 = &qword_101190228;
        v49 = &qword_100ECCD50;
LABEL_32:
        sub_10006B010(&v63, v11, v48, v49);
        swift_endAccess();
        return;
      }
    }

    else
    {
      sub_100442874(&v63);
    }
  }

  v11 = v1 + OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_containerItemSuggestion;
  swift_beginAccess();
  if (*(v11 + 56))
  {
    sub_100442468(v11, &v63);
    v71 = v66;
    v68 = v63;
    v69 = v64;
    v70 = v65;
    if (v66 == 1)
    {
      v26 = *(&v70 + 1);
      sub_10000959C(&v68);

      if (v26 == from.super.super.isa)
      {
        if (*(v11 + 56))
        {
          sub_100442468(v11, &v63);
          v27 = GroupActivitiesManager.SuggestionProvider.Item.debugDescription.getter();
          v29 = v28;
          sub_100442874(&v63);
        }

        else
        {
          v27 = 0;
          v29 = 0;
        }

        v50 = Logger.groupActivities.unsafeMutableAddressor();
        (*(v4 + 16))(v8, v50, v3);

        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = v4;
          v55 = swift_slowAlloc();
          *&v68 = v55;
          *v53 = 136446210;
          *&v63 = v27;
          *(&v63 + 1) = v29;
          sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
          v56 = String.init<A>(describing:)();
          v58 = sub_1000105AC(v56, v57, &v68);

          *(v53 + 4) = v58;
          _os_log_impl(&_mh_execute_header, v51, v52, "[Suggestion] Removing music suggested item=%{public}s)", v53, 0xCu);
          sub_10000959C(v55);

          (*(v54 + 8))(v8, v3);
        }

        else
        {

          (*(v4 + 8))(v8, v3);
        }

        v67 = 0;
        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
        v63 = 0u;
        swift_beginAccess();
        v48 = &qword_101190238;
        v49 = &qword_100ECCD58;
        goto LABEL_32;
      }
    }

    else
    {
      sub_100442874(&v68);
    }
  }

  v30 = Logger.groupActivities.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v30, v3);
  v31 = from.super.super.isa;
  v32 = v1;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v33, v34))
  {

    (*(v4 + 8))(v6, v3);
    return;
  }

  v61 = v4;
  v62 = v3;
  v35 = swift_slowAlloc();
  v72 = swift_slowAlloc();
  *v35 = 136446466;
  v36 = v31;
  v37 = [(objc_class *)v36 description];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = sub_1000105AC(v38, v40, &v72);

  *(v35 + 4) = v41;
  *(v35 + 12) = 2082;
  if (!*(v11 + 56))
  {
    goto LABEL_20;
  }

  sub_100442468(v11, &v63);
  v71 = v66;
  v68 = v63;
  v69 = v64;
  v70 = v65;
  if (v66 != 1)
  {
    sub_100442874(&v68);
LABEL_20:
    v42 = 0;
    goto LABEL_21;
  }

  v42 = *(&v70 + 1);
  sub_10000959C(&v68);
LABEL_21:
  v43 = v62;
  v44 = v61;
  *&v63 = v42;
  sub_10010FC20(&qword_101190248, &qword_100ECCD60);
  v45 = String.init<A>(describing:)();
  v47 = sub_1000105AC(v45, v46, &v72);

  *(v35 + 14) = v47;
  _os_log_impl(&_mh_execute_header, v33, v34, "[Suggestion] Failed to remove containerVC=%{public}s; active container=%{public}s", v35, 0x16u);
  swift_arrayDestroy();

  (v44[1])(v6, v43);
}

id GroupActivitiesManager.SuggestionProvider.activityItemsConfiguration.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_playingItemSuggestion;
  swift_beginAccess();
  sub_100445F64(v0 + v5, &v42);
  if (*(&v45 + 1))
  {
    v49 = v44;
    v50 = v45;
    v51 = v46;
    v47 = v42;
    v48 = v43;
  }

  else
  {
    v6 = OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_containerItemSuggestion;
    swift_beginAccess();
    sub_100445F64(v0 + v6, &v47);
    if (*(&v45 + 1))
    {
      sub_1000095E8(&v42, &qword_101190238, &qword_100ECCD58);
    }
  }

  if (*(&v50 + 1))
  {
    v52[2] = v49;
    v53 = v50;
    v54 = v51;
    v52[0] = v47;
    v52[1] = v48;
    v7 = Logger.groupActivities.unsafeMutableAddressor();
    (*(v2 + 16))(v4, v7, v1);
    sub_1004462C8(v52, &v47);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v41[0] = v11;
      *v10 = 136315138;
      sub_1004462C8(&v47, &v42);
      v12 = String.init<A>(describing:)();
      v14 = v13;
      sub_100446300(&v47);
      v15 = sub_1000105AC(v12, v14, v41);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "[Suggestion] System is picking up suggestion=%s", v10, 0xCu);
      sub_10000959C(v11);
    }

    else
    {

      sub_100446300(&v47);
    }

    (*(v2 + 8))(v4, v1);
    v23 = sub_100446128();
    if (v23)
    {
      v24 = v23;
      v25 = v23;
    }

    else
    {
      v26 = *(&v53 + 1);
      sub_100009F78(0, &qword_101190250, NSURL_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_1004462C8(v52, &v47);
      v28 = swift_allocObject();
      v29 = v50;
      *(v28 + 48) = v49;
      *(v28 + 64) = v29;
      *(v28 + 80) = v51;
      v30 = v48;
      *(v28 + 16) = v47;
      *(v28 + 32) = v30;
      *&v44 = sub_100446330;
      *(&v44 + 1) = v28;
      *&v42 = _NSConcreteStackBlock;
      *(&v42 + 1) = 1107296256;
      *&v43 = sub_100440BE8;
      *(&v43 + 1) = &unk_1010AC4A0;
      v31 = _Block_copy(&v42);
      v25 = v26;

      [v25 registerObjectOfClass:ObjCClassFromMetadata visibility:0 loadHandler:v31];
      _Block_release(v31);
      v24 = 0;
    }

    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100EBC6C0;
    *(v32 + 32) = v25;
    v33 = objc_allocWithZone(UIActivityItemsConfiguration);
    sub_100009F78(0, &unk_101181540, NSItemProvider_ptr);
    v34 = v24;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v22 = [v33 initWithItemProviders:isa];

    sub_1004462C8(v52, &v47);
    v36 = swift_allocObject();
    v37 = v50;
    *(v36 + 48) = v49;
    *(v36 + 64) = v37;
    *(v36 + 80) = v51;
    v38 = v48;
    *(v36 + 16) = v47;
    *(v36 + 32) = v38;
    *&v44 = sub_100446398;
    *(&v44 + 1) = v36;
    *&v42 = _NSConcreteStackBlock;
    *(&v42 + 1) = 1107296256;
    *&v43 = sub_100444C08;
    *(&v43 + 1) = &unk_1010AC4F0;
    v39 = _Block_copy(&v42);

    [v22 setMetadataProvider:v39];
    _Block_release(v39);

    sub_100446300(v52);
  }

  else
  {
    sub_1000095E8(&v47, &qword_101190238, &qword_100ECCD58);
    v16 = sub_100446128();
    if (v16)
    {
      v17 = v16;
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100EBC6C0;
      *(v18 + 32) = v17;
      v19 = objc_allocWithZone(UIActivityItemsConfiguration);
      sub_100009F78(0, &unk_101181540, NSItemProvider_ptr);
      v20 = v17;
      v21 = Array._bridgeToObjectiveC()().super.isa;

      v22 = [v19 initWithItemProviders:v21];
    }

    else
    {
      return 0;
    }
  }

  return v22;
}