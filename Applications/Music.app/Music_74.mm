uint64_t sub_100844000()
{
  v1 = *(v0 + 264);

  sub_1008395B0();

  return _swift_task_switch(sub_100844070, 0, 0);
}

uint64_t sub_100844070()
{
  sub_1004E6028(v0[18]);
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[20];
  v5 = type metadata accessor for IndexPath();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1000089F8(v2, v1, &unk_10118BCE0, &qword_100EC6450);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v7;
  sub_10003D17C(v1, v11 + v10, &unk_10118BCE0, &qword_100EC6450);

  sub_1001F4CB8(0, 0, v4, &unk_100EE4C88, v11);

  sub_1000095E8(v2, &unk_10118BCE0, &qword_100EC6450);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1008442E0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v7 = type metadata accessor for Playlist.Entry.InternalItem();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = type metadata accessor for Playlist.Entry();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  v6[19] = swift_task_alloc();
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v9 = type metadata accessor for IndexPath();
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[26] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100844514, v11, v10);
}

uint64_t sub_100844514()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[23];
    v4 = v0[24];
    v5 = v0[22];
    v6 = v0[12];
    *(Strong + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemTask) = 0;

    sub_1000089F8(v6, v5, &unk_10118BCE0, &qword_100EC6450);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      v7 = v0[22];

      sub_1000095E8(v7, &unk_10118BCE0, &qword_100EC6450);
      goto LABEL_13;
    }

    v9 = v0[24];
    v8 = v0[25];
    v10 = v0[23];
    v11 = v0[21];
    v12 = v0[19];
    v13 = v0[16];
    v14 = v0[17];
    (*(v9 + 32))(v8, v0[22], v10);
    v40 = *(v9 + 16);
    v40(v11, v8, v10);
    v39 = *(v9 + 56);
    v39(v11, 0, 1, v10);
    sub_1008596BC(v11, v12);
    sub_1000095E8(v11, &unk_10118BCE0, &qword_100EC6450);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1000095E8(v0[19], &qword_101191570, &qword_100ECE0B0);
    }

    else
    {
      if (*&v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID + 8])
      {
        (*(v0[17] + 16))(v0[18], v0[19], v0[16]);

        v15 = MusicItem.contains(_:)();
        v17 = v0[18];
        v16 = v0[19];
        v18 = v0[16];
        v19 = v0[17];
        if (v15)
        {

          v20 = *(v19 + 8);
          v20(v17, v18);
          v20(v16, v18);
        }

        else
        {
          v36 = v0[18];
          v37 = v0[19];
          v21 = v0[15];
          v35 = v0[14];
          v22 = v0[13];
          Playlist.Entry.internalItem.getter();
          sub_100866F00(&qword_1011A4748, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
          v23 = MusicItem.contains(_:)();

          (*(v35 + 8))(v21, v22);
          v24 = *(v19 + 8);
          v24(v36, v18);
          v24(v37, v18);
          if ((v23 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v25 = v0[24];
        v38 = v0[25];
        v26 = v0[23];
        v28 = v0[20];
        v27 = v0[21];
        (v40)(v27);
        v39(v27, 0, 1, v26);
        v29 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
        swift_beginAccess();
        sub_1000089F8(&v2[v29], v28, &unk_10118BCE0, &qword_100EC6450);
        swift_beginAccess();
        sub_1002190E0(v27, &v2[v29], &unk_10118BCE0, &qword_100EC6450);
        swift_endAccess();
        sub_1008174CC(v28);

        sub_1000095E8(v28, &unk_10118BCE0, &qword_100EC6450);
        sub_1000095E8(v27, &unk_10118BCE0, &qword_100EC6450);
        (*(v25 + 8))(v38, v26);
        goto LABEL_13;
      }

      (*(v0[17] + 8))(v0[19], v0[16]);
    }

LABEL_12:
    v31 = v0[24];
    v30 = v0[25];
    v32 = v0[23];
    sub_100842788();

    (*(v31 + 8))(v30, v32);
  }

LABEL_13:

  v33 = v0[1];

  return v33();
}

uint64_t sub_100844A18()
{
  v79 = type metadata accessor for Playlist.Entry();
  v73 = *(v79 - 8);
  __chkstk_darwin();
  v77 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v65 - v2;
  __chkstk_darwin();
  v76 = &v65 - v3;
  v70 = sub_10010FC20(&unk_1011A4720, &unk_100EE4BE0);
  __chkstk_darwin();
  v78 = &v65 - v4;
  v5 = type metadata accessor for MusicPropertySource();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v75 = (&v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v74 = &v65 - v8;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v10 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v12 = &v65 - v11;
  __chkstk_darwin();
  v14 = &v65 - v13;
  v15 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v65 - v17;
  v19 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
  swift_beginAccess();
  sub_1000089F8(v0 + v19, v14, &qword_10119A808, &unk_100ED91D0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1000095E8(v14, &qword_10119A808, &unk_100ED91D0);
    (*(v16 + 56))(v12, 1, 1, v15);
    v20 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
    swift_beginAccess();
    sub_1000089F8(v0 + v20, v10, &qword_10119A808, &unk_100ED91D0);
    swift_beginAccess();
    sub_1002190E0(v12, v0 + v20, &qword_10119A808, &unk_100ED91D0);
    swift_endAccess();
    sub_100841B1C(v10);
    sub_1000095E8(v10, &qword_10119A808, &unk_100ED91D0);
    return sub_1000095E8(v12, &qword_10119A808, &unk_100ED91D0);
  }

  v72 = v16;
  v22 = *(v16 + 32);
  v71 = v18;
  v22(v18, v14, v15);
  v23 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  v24 = v74;
  (*(v6 + 16))(v74, v0 + v23, v5);
  v25 = v75;
  (*(v6 + 104))(v75, enum case for MusicPropertySource.catalog(_:), v5);
  LOBYTE(v23) = static MusicPropertySource.== infix(_:_:)();
  v26 = *(v6 + 8);
  v26(v25, v5);
  v26(v24, v5);
  v27 = v15;
  if ((v23 & 1) == 0)
  {
    goto LABEL_13;
  }

  if (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) != 1)
  {
    goto LABEL_13;
  }

  v28 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_searchText + 8);
  if (!v28)
  {
    goto LABEL_13;
  }

  v29 = HIBYTE(v28) & 0xF;
  v69 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_searchText);
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v69 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v67 = v0;
    v30 = v78;
    (*(v72 + 16))(v78, v71, v15);
    v31 = *(v70 + 36);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    v70 = v28;

    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v32 = *(v30 + v31) == v81._countAndFlagsBits;
    v65 = v12;
    v66 = v10;
    if (!v32)
    {
      v74 = (v73 + 32);
      v75 = (v73 + 16);
      v68 = (v73 + 8);
      v43 = _swiftEmptyArrayStorage;
      v44 = v79;
      while (1)
      {
        v45 = dispatch thunk of Collection.subscript.read();
        v46 = v76;
        v47 = *v75;
        (*v75)(v76);
        v45(&v81, 0);
        v48 = v27;
        dispatch thunk of Collection.formIndex(after:)();
        v49 = *v74;
        (*v74)(v80, v46, v44);
        v50 = Playlist.Entry.title.getter();
        v52 = HIBYTE(v51) & 0xF;
        if ((v51 & 0x2000000000000000) == 0)
        {
          v52 = v50 & 0xFFFFFFFFFFFFLL;
        }

        if (v52)
        {
          v53 = String.insensitiveCompareString()();
          v54 = String.insensitiveCompareString()();
          v81 = v53;
          v82 = v54;
          sub_100009838();
          v55 = StringProtocol.contains<A>(_:)();

          v44 = v79;

          if (v55)
          {
            goto LABEL_27;
          }
        }

        else
        {
        }

        v56 = Playlist.Entry.artistName.getter();
        v58 = HIBYTE(v57) & 0xF;
        if ((v57 & 0x2000000000000000) == 0)
        {
          v58 = v56 & 0xFFFFFFFFFFFFLL;
        }

        if (v58)
        {
          v59 = String.insensitiveCompareString()();
          v60 = String.insensitiveCompareString()();
          v81 = v59;
          v82 = v60;
          sub_100009838();
          v61 = StringProtocol.contains<A>(_:)();

          v44 = v79;

          if (v61)
          {
LABEL_27:
            (v47)(v77, v80, v44);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v43 = sub_10049B104(0, *(v43 + 2) + 1, 1, v43);
            }

            v63 = *(v43 + 2);
            v62 = *(v43 + 3);
            v30 = v78;
            if (v63 >= v62 >> 1)
            {
              v43 = sub_10049B104((v62 > 1), v63 + 1, 1, v43);
            }

            v64 = v73;
            (*(v73 + 8))(v80, v44);
            *(v43 + 2) = v63 + 1;
            v49(&v43[((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63], v77, v44);
            goto LABEL_16;
          }
        }

        else
        {
        }

        (*v68)(v80, v44);
        v30 = v78;
LABEL_16:
        v27 = v48;
        dispatch thunk of Collection.endIndex.getter();
        if (*(v30 + v31) == v81._countAndFlagsBits)
        {
          goto LABEL_12;
        }
      }
    }

    v43 = _swiftEmptyArrayStorage;
LABEL_12:

    sub_1000095E8(v30, &unk_1011A4720, &unk_100EE4BE0);
    v81._countAndFlagsBits = v43;
    sub_10010FC20(&qword_10119F090, &qword_100EE4C40);
    sub_100020674(&qword_10119F098, &qword_10119F090, &qword_100EE4C40, &protocol conformance descriptor for [A]);
    v33 = v65;
    MusicItemCollection.init<A>(_:)();
    v34 = v72;
    (*(v72 + 56))(v33, 0, 1, v27);
    v35 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
    v36 = v67;
    swift_beginAccess();
    v37 = v66;
    sub_1000089F8(v36 + v35, v66, &qword_10119A808, &unk_100ED91D0);
    swift_beginAccess();
    sub_1002190E0(v33, v36 + v35, &qword_10119A808, &unk_100ED91D0);
    swift_endAccess();
    sub_100841B1C(v37);
    sub_1000095E8(v37, &qword_10119A808, &unk_100ED91D0);
    sub_1000095E8(v33, &qword_10119A808, &unk_100ED91D0);
    return (*(v34 + 8))(v71, v27);
  }

  else
  {
LABEL_13:
    v38 = v72;
    v39 = v12;
    v40 = v12;
    v41 = v71;
    (*(v72 + 16))(v40, v71, v15);
    (*(v38 + 56))(v39, 0, 1, v15);
    v42 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
    swift_beginAccess();
    sub_1000089F8(v0 + v42, v10, &qword_10119A808, &unk_100ED91D0);
    swift_beginAccess();
    sub_1002190E0(v39, v0 + v42, &qword_10119A808, &unk_100ED91D0);
    swift_endAccess();
    sub_100841B1C(v10);
    sub_1000095E8(v10, &qword_10119A808, &unk_100ED91D0);
    sub_1000095E8(v39, &qword_10119A808, &unk_100ED91D0);
    return (*(v38 + 8))(v41, v15);
  }
}

unint64_t sub_10084560C(char *a1, uint64_t a2)
{
  v121 = a2;
  v119 = a1;
  v3 = type metadata accessor for UUID();
  v130 = *(v3 - 8);
  __chkstk_darwin();
  v129 = v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v127 = v5;
  v128 = v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v137 = (v111 - v6);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v120 = v111 - v7;
  sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  __chkstk_darwin();
  v118 = (v111 - v8);
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v122 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = v111 - v10;
  __chkstk_darwin();
  v132 = v111 - v11;
  __chkstk_darwin();
  v133 = v111 - v12;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v131 = v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v136 = v111 - v14;
  v15 = type metadata accessor for Playlist.Entry.InternalItem();
  v116 = *(v15 - 8);
  v117 = v15;
  __chkstk_darwin();
  v17 = v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v19 = v111 - v18;
  v20 = type metadata accessor for Playlist();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v25 = v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v24;
  __chkstk_darwin();
  v135 = v111 - v26;
  v27 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  v134 = v2;
  sub_1000089F8(v2 + v27, &v152, &unk_1011926C0, &unk_100ECF870);
  if (v153)
  {
    sub_1000095E8(&v152, &unk_1011926C0, &unk_100ECF870);
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v152, &unk_1011926C0, &unk_100ECF870);
  v115 = Strong;
  if (!Strong)
  {
    return 0;
  }

  v113 = v25;
  v114 = v3;
  v29 = type metadata accessor for PlaylistContext(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v32 = v135;
  v111[1] = v30 + 56;
  v112 = v31;
  v31(v135, 1, 1, v29);
  v33 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  v34 = v134;
  swift_beginAccess();
  sub_1000089F8(v34 + v33, v19, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1000095E8(v19, &unk_1011814D0, &qword_100EC12A0);
    v35 = v119;
  }

  else
  {
    sub_1000095E8(v32, &unk_1011845D0, &unk_100EBF380);
    v37 = *(v21 + 32);
    v37(v23, v19, v20);
    v38 = type metadata accessor for Playlist.Entry();
    v35 = v119;
    (*(*(v38 - 8) + 16))(v32, v119, v38);
    v37((v32 + *(v29 + 20)), v23, v20);
    v112(v32, 0, 1, v29);
  }

  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100EBC6B0;
  Playlist.Entry.internalItem.getter();
  v112 = v39;
  Playlist.Entry.InternalItem.musicItem.getter((v39 + 32));
  (*(v116 + 8))(v17, v117);
  v40 = v115;
  v41 = [v115 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v119 = v152;
  v42 = v118;
  sub_100858450(v35, v118);
  v43 = v133;
  v44 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v44 - 8) + 56))(v42, 0, 1, v44);
  sub_10086772C(v42, v43, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_100867794(v42, type metadata accessor for PlaybackIntentDescriptor);
  v45 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v117 = v46 + 56;
  v118 = v47;
  (v47)(v43, 0, 1, v45);
  v48 = type metadata accessor for PlaylistDetailDataSource(0);
  v155 = &off_1010C1940;
  v154 = v48;
  v152 = v134;
  v49 = qword_10117F608;
  v134;
  if (v49 != -1)
  {
    swift_once();
  }

  v50 = qword_101218AD8;
  sub_1000089F8(v43, v132, &unk_1011838E0, &unk_100EC1670);
  v134 = v50;
  v51 = UIViewController.playActivityInformation.getter();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_1000089F8(&v152, &v144, &unk_101183910, &unk_100EBDD00);
  if (*(&v145 + 1))
  {
    sub_100059A8C(&v144, &v148);
  }

  else
  {
    *&v156 = v40;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v58 = v40;
    sub_10010FC20(&unk_101183920, &unk_100EC0330);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v159, &v148);
    }

    else
    {
      v161 = 0;
      v159 = 0u;
      v160 = 0u;
      *&v148 = v58;
      v59 = v58;
      v60 = String.init<A>(reflecting:)();
      v149 = &type metadata for Player.CommandIssuerIdentity;
      v150 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v148 = v60;
      *(&v148 + 1) = v61;
      if (*(&v160 + 1))
      {
        sub_1000095E8(&v159, &unk_101183910, &unk_100EBDD00);
      }
    }

    v40 = v115;
    if (*(&v145 + 1))
    {
      sub_1000095E8(&v144, &unk_101183910, &unk_100EBDD00);
    }
  }

  v62 = v136;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v134, v132, v51, v53, v55, v57, &v148, v136);
  sub_1000095E8(v133, &unk_1011838E0, &unk_100EC1670);
  sub_1000095E8(&v152, &unk_101183910, &unk_100EBDD00);
  v63 = type metadata accessor for Actions.PlaybackContext(0);
  v64 = *(v63 - 8);
  (*(v64 + 56))(v62, 0, 1, v63);
  v65 = type metadata accessor for IndexPath();
  v66 = *(v65 - 8);
  v67 = v120;
  (*(v66 + 16))(v120, v121, v65);
  (*(v66 + 56))(v67, 0, 1, v65);
  sub_1006A6A74(v67, &v152);
  sub_1000095E8(v67, &unk_10118BCE0, &qword_100EC6450);
  sub_10085ABE4(v137);
  sub_100008FE4(v112 + 32, v151);

  sub_1000089F8(&v152, &v144, &unk_1011845E0, &unk_100EBF3A0);
  if (v147 == 1)
  {
    v161 = 0;
    v159 = 0u;
    v160 = 0u;
    v162 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v40, &v159, &v148);
    v68 = v131;
    if (v147 != 1)
    {
      sub_1000095E8(&v144, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v144, &v148);
    v68 = v131;
  }

  swift_getObjectType();
  v69 = swift_conformsToProtocol2();
  if (v69)
  {
    v121 = v69;
    v70 = v40;
    v132 = v40;
  }

  else
  {
    v132 = 0;
    v121 = 0;
  }

  v133 = swift_allocBox();
  v72 = v71;
  sub_1000089F8(v136, v68, &unk_10118AB20, &unk_100EBF390);
  v73 = *(v64 + 48);
  if (v73(v68, 1, v63) == 1)
  {
    v74 = v123;
    (v118)(v123, 1, 1, v45);
    v146 = 0;
    v144 = 0u;
    v145 = 0u;
    sub_1000089F8(v74, v122, &unk_1011838E0, &unk_100EC1670);
    v134 = v134;
    v75 = UIViewController.playActivityInformation.getter();
    v120 = v76;
    v78 = v77;
    v80 = v79;
    sub_1000089F8(&v144, &v142, &unk_101183910, &unk_100EBDD00);
    if (v143)
    {
      sub_100059A8C(&v142, &v156);
    }

    else
    {
      v141 = v40;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v81 = v40;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v138, &v156);
        v68 = v131;
      }

      else
      {
        v140 = 0;
        v138 = 0u;
        v139 = 0u;
        *&v156 = v81;
        v82 = v81;
        v83 = String.init<A>(reflecting:)();
        *(&v157 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v158 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v156 = v83;
        *(&v156 + 1) = v84;
        v68 = v131;
        if (*(&v139 + 1))
        {
          sub_1000095E8(&v138, &unk_101183910, &unk_100EBDD00);
        }
      }

      v40 = v115;
      if (v143)
      {
        sub_1000095E8(&v142, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v134, v122, v75, v120, v78, v80, &v156, v72);
    sub_1000095E8(&v144, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v123, &unk_1011838E0, &unk_100EC1670);
    if (v73(v68, 1, v63) != 1)
    {
      sub_1000095E8(v68, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_100869470(v68, v72, type metadata accessor for Actions.PlaybackContext);
  }

  v85 = *(v63 + 28);
  sub_1000089F8(&v72[v85], &v156, &unk_101183910, &unk_100EBDD00);
  if (*(&v157 + 1))
  {
    sub_100059A8C(&v156, &v144);
    v86 = v135;
  }

  else
  {
    *&v144 = v40;
    v87 = v40;
    v88 = String.init<A>(reflecting:)();
    *(&v145 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v146 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v144 = v88;
    *(&v144 + 1) = v89;
    v86 = v135;
    if (*(&v157 + 1))
    {
      sub_1000095E8(&v156, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_100EBDC20;
  *(v90 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v90 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v90 + 32) = 0x4D747865746E6F43;
  *(v90 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v144, v90 + 72);
  v91 = static Player.CommandIssuer<>.combining(_:)(v90);
  v93 = v92;

  sub_10000959C(&v144);
  *(&v145 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v146 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v144 = v91;
  *(&v144 + 1) = v93;
  sub_10006B010(&v144, &v72[v85], &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v151, &v144);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v134 = String.init<A>(describing:)();
  v131 = v94;
  v123 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v151, &v142);
  sub_10012B7A8(&v148, &v144);
  v95 = v128;
  sub_1000089F8(v137, v128, &unk_1011838D0, &unk_100EC0320);
  v96 = v113;
  sub_1000089F8(v86, v113, &unk_1011845D0, &unk_100EBF380);
  v97 = (*(v126 + 80) + 160) & ~*(v126 + 80);
  v98 = (v127 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
  v100 = (*(v124 + 80) + v99 + 8) & ~*(v124 + 80);
  v127 = (v100 + v125 + 7) & 0xFFFFFFFFFFFFFFF8;
  v101 = (v100 + v125 + 31) & 0xFFFFFFFFFFFFFFF8;
  v102 = swift_allocObject();
  sub_100059A8C(&v142, v102 + 16);
  *(v102 + 56) = v119;
  sub_10012B828(&v144, v102 + 64);
  sub_10003D17C(v95, v102 + v97, &unk_1011838D0, &unk_100EC0320);
  *(v102 + v98) = v123;
  *(v102 + v99) = v133;
  sub_10003D17C(v96, v102 + v100, &unk_1011845D0, &unk_100EBF380);
  v103 = v102 + v127;
  v104 = v121;
  *v103 = v132;
  *(v103 + 8) = v104;
  *(v103 + 16) = 2;
  v105 = (v102 + v101);
  *v105 = variable initialization expression of Library.Context.playlistVariants;
  v105[1] = 0;
  swift_unknownObjectRetain();

  v106 = v129;
  UUID.init()();
  v107 = UUID.uuidString.getter();
  v109 = v108;
  (*(v130 + 8))(v106, v114);
  v163._countAndFlagsBits = v134;
  v163._object = v131;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v156, v163, v107, v109, sub_100217D28, v102);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v148);
  sub_10000959C(v151);

  v110 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v148 = v156;
  sub_100015BB0(&v148);
  v144 = v157;
  sub_100015BB0(&v144);

  sub_1000095E8(v137, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(&v152, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v136, &unk_10118AB20, &unk_100EBF390);
  sub_1000095E8(v135, &unk_1011845D0, &unk_100EBF380);
  return v110;
}

double sub_100846A54(__n128 a1)
{
  v2 = type metadata accessor for Playlist.Entry.InternalItem();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v102 - v6;
  v137 = sub_10010FC20(&unk_10118B970, &qword_100EC71E0);
  __chkstk_darwin();
  v145 = &v102 - v8;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v138 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v139 = &v102 - v10;
  sub_10010FC20(&qword_1011A4740, &qword_100EC31F0);
  __chkstk_darwin();
  v142 = (&v102 - v11);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v141 = &v102 - v12;
  v147 = type metadata accessor for Playlist();
  v153 = *(v147 - 8);
  __chkstk_darwin();
  v146 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v152 = *(v155 - 8);
  __chkstk_darwin();
  v149 = &v102 - v14;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v150 = &v102 - v15;
  v148 = type metadata accessor for Playlist.Entry();
  v154 = *(v148 - 8);
  v16 = *(v154 + 64);
  __chkstk_darwin();
  v135 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v144 = &v102 - v17;
  __chkstk_darwin();
  v140 = &v102 - v18;
  __chkstk_darwin();
  v151 = &v102 - v19;
  v20 = type metadata accessor for IndexPath();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v143 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v22;
  __chkstk_darwin();
  v24 = &v102 - v23;
  v25 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  v157 = v1;
  sub_1000089F8(v1 + v25, v161, &unk_1011926C0, &unk_100ECF870);
  if (v161[8])
  {
    sub_1000095E8(v161, &unk_1011926C0, &unk_100ECF870);
    return result;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v161, &unk_1011926C0, &unk_100ECF870);
  if (Strong)
  {
    v129 = v7;
    v130 = v5;
    v28 = sub_1006A6078();

    v29 = [v28 _indexPathsForPreparedItems];
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = v30;
    v32 = *(v30 + 16);
    if (v32)
    {
      v119 = v2;
      v33 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
      v34 = v157;
      v131 = v3;
      v35 = v157 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
      v108 = v157 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID;
      v132 = v25;
      v134 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playerStateCache;
      v36 = *(v21 + 80);
      v115 = ~v36;
      v133 = v31;
      v37 = v31 + ((v36 + 32) & ~v36);
      v128 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
      swift_beginAccess();
      v125 = v33;
      swift_beginAccess();
      v117 = v35;
      swift_beginAccess();
      swift_beginAccess();
      v39 = *(v21 + 16);
      v38 = v21 + 16;
      v159 = v39;
      v40 = (v38 - 8);
      v127 = (v152 + 48);
      v124 = (v152 + 16);
      v158 = *(v38 + 56);
      v123 = (v152 + 8);
      v41 = v34;
      v126 = (v154 + 32);
      v122 = (v153 + 48);
      v114 = (v153 + 32);
      v121 = v154 + 16;
      v116 = v36;
      v113 = v16 + v36;
      v42 = v132;
      v120 = (v38 + 16);
      v112 = (v38 + 40);
      v111 = (v38 + 32);
      v118 = v131 + 1;
      v131 = (v154 + 8);
      v110 = (v153 + 8);
      v156 = v38;
      v39(v24, v37, v20);
      while (1)
      {
        sub_1000089F8(v41 + v42, v160, &unk_1011926C0, &unk_100ECF870);
        if (v160[8])
        {
          sub_1000095E8(v160, &unk_1011926C0, &unk_100ECF870);
LABEL_7:
          (*v40)(v24, v20);
          goto LABEL_8;
        }

        v43 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v160, &unk_1011926C0, &unk_100ECF870);
        if (!v43)
        {
          goto LABEL_7;
        }

        v44 = sub_1006A6078();

        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v46 = [v44 cellForItemAtIndexPath:isa];

        if (!v46)
        {
          goto LABEL_21;
        }

        _s13TracklistCellCMa();
        v47 = swift_dynamicCastClass();
        v48 = v155;
        if (!v47)
        {
          break;
        }

        v49 = *(v47 + OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data + 8);
        if ((~v49 & 0xF000000000000007) == 0)
        {
          (*v40)(v24, v20);

          v41 = v157;
          goto LABEL_8;
        }

        if (v49 >> 62)
        {
          break;
        }

        v109 = v47;
        v152 = v49;
        v50 = *(v47 + OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data);
        type metadata accessor for PlaylistEntryData(0);
        v153 = v50;
        v51 = swift_dynamicCastClass();
        if (v51)
        {
          v107 = v51;
          v52 = v150;
          sub_1000089F8(v157 + v128, v150, &qword_10119A808, &unk_100ED91D0);
          if ((*v127)(v52, 1, v48))
          {
            v53 = v153;
            v54 = v152;
            v55 = sub_1004E5BF8(v153, v152);
            (*v40)(v24, v20, v55);

            sub_1004E5C14(v53, v54);
            v56 = v52;
            v57 = &qword_10119A808;
            v58 = &unk_100ED91D0;
          }

          else
          {
            (*v124)(v149, v52, v48);
            sub_1004E5BF8(v153, v152);
            sub_1000095E8(v52, &qword_10119A808, &unk_100ED91D0);
            v59 = v48;
            IndexPath.item.getter();
            v60 = v140;
            v61 = v149;
            MusicItemCollection.subscript.getter();
            (*v123)(v61, v59);
            v62 = v148;
            KeyPath = *v126;
            (KeyPath)(v151, v60, v148);
            v63 = v141;
            sub_1000089F8(v157 + v125, v141, &unk_1011814D0, &qword_100EC12A0);
            v64 = v63;
            v65 = v63;
            v66 = v147;
            if ((*v122)(v65, 1, v147) != 1)
            {
              (*v114)(v146, v64, v66);
              v68 = v151;
              sub_100848DE0(v151, v142);
              v105 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v69 = v154;
              v103 = *(v154 + 16);
              v103(v144, v68, v62);
              v159(v143, v24, v20);
              v70 = (*(v69 + 80) + 24) & ~*(v69 + 80);
              v104 = ((v113 + v70) & v115);
              v71 = swift_allocObject();
              *(v71 + 16) = v105;
              v72 = v71 + v70;
              v73 = v71;
              (KeyPath)(v72, v144, v62);
              v74 = v104 + v73;
              v104 = *v120;
              v104(v74, v143, v20);

              v75 = v142;
              sub_10026CCAC(v151, v146, v142, sub_1008694D8, v73);

              sub_1000095E8(v75, &qword_1011A4740, &qword_100EC31F0);

              v76 = v139;
              v159(v139, v24, v20);
              (*v112)(v76, 0, 1, v20);
              v77 = *(v137 + 48);
              v78 = v145;
              sub_1000089F8(v117, v145, &unk_10118BCE0, &qword_100EC6450);
              KeyPath = v77;
              sub_1000089F8(v76, v78 + v77, &unk_10118BCE0, &qword_100EC6450);
              v105 = *v111;
              if (v105(v78, 1, v20) == 1)
              {
                sub_1000095E8(v76, &unk_10118BCE0, &qword_100EC6450);
                v79 = v145;
                v80 = v105(v145 + KeyPath, 1, v20) == 1;
                v81 = v153;
                v82 = v79;
                if (!v80)
                {
LABEL_32:
                  sub_1000095E8(v82, &unk_10118B970, &qword_100EC71E0);
                  v85 = 0;
                  goto LABEL_40;
                }

                sub_1000095E8(v79, &unk_10118BCE0, &qword_100EC6450);
                v83 = v135;
LABEL_34:
                KeyPath = *(v108 + 8);
                if (KeyPath)
                {
                  v105 = *v108;
                  v103(v83, v151, v148);

                  v88 = v135;
                  if (MusicItem.contains(_:)())
                  {

                    (*v131)(v88, v148);
                    v85 = 1;
                  }

                  else
                  {
                    Playlist.Entry.internalItem.getter();
                    sub_100866F00(&qword_1011A4748, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
                    v85 = MusicItem.contains(_:)();

                    (*v118)(v129, v119);
                    (*v131)(v135, v148);
                  }

                  v81 = v153;
LABEL_40:
                  KeyPath = swift_getKeyPath();
                  v105 = swift_getKeyPath();
                  v89 = v85 & 1;
                  v160[0] = v89;
                  sub_1004E5BF8(v81, v152);
                  static Published.subscript.setter();
                  v90 = v109;
                  v91 = v109[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent];
                  v109[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent] = v89;
                  if (v89 != v91)
                  {
                    [v90 setNeedsUpdateConfiguration];
                  }

                  v92 = v130;
                  Playlist.Entry.internalItem.getter();
                  v107 = Playlist.Entry.InternalItem.id.getter();
                  v109 = v93;
                  (*v118)(v92, v119);
                  v94 = *(v157 + v134);
                  if (*(v94 + 16) && (, KeyPath = sub_100019C10(v107, v109), LODWORD(v107) = v95, , (v107 & 1) != 0))
                  {
                    v96 = *(*(v94 + 56) + 8 * KeyPath);

                    v97 = v144;
                    v103(v144, v151, v148);
                    (*(*v96 + 224))(v97);

                    v98 = sub_1004E5C14(v153, v152);
                    (*v110)(v146, v147, v98);
                    (*v131)(v151, v148);
                  }

                  else
                  {

                    v99 = v147;
                    v100 = v148;
                    v101 = sub_1004E5C14(v153, v152);
                    (*v110)(v146, v99, v101);
                    (*v131)(v151, v100);
                  }

LABEL_21:
                  (*v40)(v24, v20);
                  v41 = v157;
                  goto LABEL_8;
                }
              }

              else
              {
                v84 = v145;
                sub_1000089F8(v145, v138, &unk_10118BCE0, &qword_100EC6450);
                if (v105(v84 + KeyPath, 1, v20) == 1)
                {
                  sub_1000095E8(v139, &unk_10118BCE0, &qword_100EC6450);
                  (*v40)(v138, v20);
                  v81 = v153;
                  v82 = v145;
                  goto LABEL_32;
                }

                v86 = v143;
                v104(v143, (v145 + KeyPath), v20);
                sub_100866F00(&qword_101192840, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                LODWORD(KeyPath) = dispatch thunk of static Equatable.== infix(_:_:)();
                v87 = *v40;
                (*v40)(v86, v20);
                sub_1000095E8(v139, &unk_10118BCE0, &qword_100EC6450);
                (v87)(v138, v20);
                sub_1000095E8(v145, &unk_10118BCE0, &qword_100EC6450);
                v83 = v135;
                v81 = v153;
                if (KeyPath)
                {
                  goto LABEL_34;
                }
              }

              v85 = 0;
              goto LABEL_40;
            }

            v67 = sub_1004E5C14(v153, v152);
            (*v131)(v151, v62, v67);
            (*v40)(v24, v20);
            v56 = v64;
            v57 = &unk_1011814D0;
            v58 = &qword_100EC12A0;
          }

          sub_1000095E8(v56, v57, v58);
          v41 = v157;
        }

        else
        {

          (*v40)(v24, v20);
          v41 = v157;
        }

LABEL_8:
        v37 += v158;
        if (!--v32)
        {
          goto LABEL_47;
        }

        v159(v24, v37, v20);
      }

      goto LABEL_21;
    }

LABEL_47:
  }

  return result;
}

unint64_t sub_1008480C8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  v8 = sub_10084560C(a3, a4);

  return v8;
}

void sub_100848148(uint64_t a1, uint64_t a2)
{
  v91 = type metadata accessor for Playlist.Entry();
  v88 = *(v91 - 8);
  __chkstk_darwin();
  v90 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = &v77 - v5;
  v6 = type metadata accessor for IndexPath();
  v95 = *(v6 - 8);
  __chkstk_darwin();
  v92 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = &v77 - v8;
  __chkstk_darwin();
  v93 = &v77 - v9;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v77 - v12;
  v14 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v96 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v77 - v17;
  sub_1000089F8(a1, v13, &qword_10119A808, &unk_100ED91D0);
  v19 = *(v15 + 48);
  if (v19(v13, 1, v14) == 1)
  {
    v20 = &qword_10119A808;
    v21 = &unk_100ED91D0;
    v22 = v13;
LABEL_5:
    sub_1000095E8(v22, v20, v21);
    return;
  }

  v87 = v6;
  v23 = *(v15 + 32);
  v23(v18, v13, v14);
  sub_1000089F8(a2, v11, &qword_10119A808, &unk_100ED91D0);
  v24 = v14;
  if (v19(v11, 1, v14) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v20 = &qword_10119A808;
    v21 = &unk_100ED91D0;
    v22 = v11;
    goto LABEL_5;
  }

  v25 = v96;
  v23(v96, v11, v14);
  v26 = *(v97 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v27 = *(v26 + 16);
  if (!v27)
  {
    goto LABEL_16;
  }

  v28 = 0;
  v29 = v26 + 32;
  while (*(v29 + v28) != 2)
  {
    if (v27 == ++v28)
    {
      goto LABEL_16;
    }
  }

  v30 = sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v31 = dispatch thunk of Collection.distance(from:to:)();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v31 != dispatch thunk of Collection.distance(from:to:)())
  {
LABEL_16:
    v38 = *(v15 + 8);
    v38(v25, v24);
    v39 = v18;
    v40 = v24;
LABEL_17:
    v38(v39, v40);
    return;
  }

  v86 = v24;
  v32 = v97;
  v33 = sub_100849C78();
  v34 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v32 + v34, &v98, &unk_1011926C0, &unk_100ECF870);
  if (v99)
  {
    v35 = *(v15 + 8);
    v36 = v86;
    v35(v25, v86);
    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v98, &unk_1011926C0, &unk_100ECF870);
  if (!Strong || (v80 = v34, v42 = sub_1006A6078(), Strong, v43 = [v42 numberOfItemsInSection:v28], v42, v33 != v43))
  {
    v38 = *(v15 + 8);
    v36 = v86;
    v38(v25, v86);
LABEL_23:
    v39 = v18;
    v40 = v36;
    goto LABEL_17;
  }

  v77 = v30;
  sub_1000089F8(v97 + v80, &v98, &unk_1011926C0, &unk_100ECF870);
  v36 = v86;
  if (v99)
  {
    v35 = *(v15 + 8);
    v35(v25, v86);
LABEL_14:
    v37 = v18;
LABEL_15:
    v35(v37, v36);
    v20 = &unk_1011926C0;
    v21 = &unk_100ECF870;
    v22 = &v98;
    goto LABEL_5;
  }

  v44 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v98, &unk_1011926C0, &unk_100ECF870);
  if (!v44)
  {
    v38 = *(v15 + 8);
    v38(v25, v36);
    goto LABEL_23;
  }

  v45 = sub_1006A6078();

  v46 = [v45 _indexPathsForPreparedItems];
  v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = *(v47 + 16);
  v81 = v18;
  v84 = v48;
  if (!v48)
  {
    v85 = _swiftEmptyArrayStorage;
    v51 = v97;
LABEL_38:

    v61 = v85;
    v94 = v85[2];
    if (v94)
    {
      v62 = 0;
      v93 = (v95 + 16);
      v84 = v88 + 1;
      v63 = &unk_1011926C0;
      v88 = (v95 + 8);
      while (1)
      {
        if (v94 == v62)
        {

          v76 = *(v15 + 8);
          v76(v96, v36);
          v76(v81, v36);
          return;
        }

        if (v62 >= v61[2])
        {
          goto LABEL_60;
        }

        (*(v95 + 16))(v92, v61 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v62, v87);
        sub_1000089F8(v51 + v80, &v98, v63, &unk_100ECF870);
        if (v99)
        {

          (*v88)(v92, v87);
          v35 = *(v15 + 8);
          v35(v96, v36);
          v37 = v81;
          goto LABEL_15;
        }

        v64 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&v98, v63, &unk_100ECF870);
        if (!v64)
        {
LABEL_51:

          (*v88)(v92, v87);
          goto LABEL_52;
        }

        v65 = sub_1006A6078();

        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v67 = [v65 cellForItemAtIndexPath:isa];

        if (!v67)
        {

          goto LABEL_57;
        }

        _s13TracklistCellCMa();
        if (!swift_dynamicCastClass())
        {
          break;
        }

        v68 = IndexPath.item.getter();
        v36 = v86;
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (v68 >= dispatch thunk of Collection.distance(from:to:)())
        {
          goto LABEL_51;
        }

        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (v68 >= dispatch thunk of Collection.distance(from:to:)())
        {
          goto LABEL_51;
        }

        v69 = v63;
        v70 = v89;
        MusicItemCollection.subscript.getter();
        v71 = v90;
        MusicItemCollection.subscript.getter();
        sub_100866F00(&unk_1011A4730, &type metadata accessor for Playlist.Entry, &protocol conformance descriptor for Playlist.Entry);
        v72 = v91;
        v73 = static MusicItem<>.==~ infix(_:_:)();
        v74 = *v84;
        (*v84)(v71, v72);
        v75 = v70;
        v63 = v69;
        v74(v75, v72);
        (*v88)(v92, v87);
        ++v62;
        v51 = v97;
        v61 = v85;
        if ((v73 & 1) == 0)
        {

LABEL_52:
          v38 = *(v15 + 8);
          v38(v96, v36);
          goto LABEL_58;
        }
      }

LABEL_57:
      (*v88)(v92, v87);
      v38 = *(v15 + 8);
      v36 = v86;
      v38(v96, v86);
LABEL_58:
      v39 = v81;
      v40 = v36;
      goto LABEL_17;
    }

    v38 = *(v15 + 8);
    v38(v96, v36);
    goto LABEL_23;
  }

  v49 = 0;
  v82 = v95 + 16;
  v78 = (v95 + 8);
  v83 = (v95 + 32);
  v85 = _swiftEmptyArrayStorage;
  v50 = v93;
  v79 = v47;
  while (v49 < *(v47 + 16))
  {
    v52 = (*(v95 + 80) + 32) & ~*(v95 + 80);
    v53 = *(v95 + 72);
    v54 = v87;
    (*(v95 + 16))(v50, v47 + v52 + v53 * v49, v87);
    if (IndexPath.section.getter() == v28)
    {
      v55 = *v83;
      (*v83)(v94, v50, v54);
      v56 = v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v56;
      v98 = v56;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10066CB48(0, v56[2] + 1, 1);
        v58 = v98;
      }

      v51 = v97;
      v60 = v58[2];
      v59 = v58[3];
      if (v60 >= v59 >> 1)
      {
        sub_10066CB48((v59 > 1), v60 + 1, 1);
        v51 = v97;
        v58 = v98;
      }

      v58[2] = v60 + 1;
      v85 = v58;
      v55(v58 + v52 + v60 * v53, v94, v54);
      v18 = v81;
      v50 = v93;
      v47 = v79;
    }

    else
    {
      (*v78)(v50, v54);
      v51 = v97;
    }

    ++v49;
    v36 = v86;
    if (v84 == v49)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_100848DE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  v41 = a2;
  v38 = _s7ContextVMa(0);
  __chkstk_darwin();
  v39 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = _s7ContextV6SourceOMa(0);
  v37 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v9 = &v35[-v8];
  v10 = type metadata accessor for Playlist();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v2 + v14, v9, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000095E8(v9, &unk_1011814D0, &qword_100EC12A0);
    v15 = type metadata accessor for Tracklist.ReactionsConfiguration(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = v41;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v18 = *(sub_10010FC20(&qword_101183AD8, &qword_100EBF560) + 48);
    v19 = type metadata accessor for Playlist.Entry();
    (*(*(v19 - 8) + 16))(v7, v40, v19);
    (*(v11 + 16))(&v7[v18], v13, v10);
    swift_storeEnumTagMultiPayload();
    v20 = Playlist.hasJoinedCollaboration.getter();
    v21 = v41;
    if (v20)
    {
      v22 = sub_10082EF78();
      v23 = *(v22 + 24);
      if (v23 == 255)
      {
      }

      else
      {
        v24 = *(v22 + 16);

        sub_100252894(v7, v24, v23 & 1);
        v40 = v25;
        v36 = v26;
        v27 = ~v26;

        v28 = v24;
        v21 = v41;
        sub_1000D9134(v28, v23);
        if (v27)
        {
          v29 = v39;
          sub_10086772C(v7, v39, _s7ContextV6SourceOMa);
          (*(v37 + 56))(v29, 0, 1, v5);
          v30 = v38;
          v31 = &v29[*(v38 + 20)];
          *v31 = v40;
          v31[8] = v36;
          *&v29[v30[6]] = 0;
          v29[v30[7]] = 0;
          v29[v30[8]] = 1;
          v32 = *(v3 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___reactionController);

          sub_100867794(v7, _s7ContextV6SourceOMa);
          (*(v11 + 8))(v13, v10);
          *v21 = v32;
          v33 = type metadata accessor for Tracklist.ReactionsConfiguration(0);
          sub_100869470(v29, v21 + *(v33 + 20), _s7ContextVMa);
          return (*(*(v33 - 8) + 56))(v21, 0, 1, v33);
        }
      }
    }

    sub_100867794(v7, _s7ContextV6SourceOMa);
    (*(v11 + 8))(v13, v10);
    v15 = type metadata accessor for Tracklist.ReactionsConfiguration(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = v21;
  }

  return v16(v17, 1, 1, v15);
}

void sub_10084931C(void (**a1)(char *, uint64_t, uint64_t, uint64_t, __n128))
{
  v2 = v1;
  v54 = a1;
  v3 = type metadata accessor for Track();
  v50 = *(v3 - 8);
  __chkstk_darwin();
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = v47 - v6;
  v7 = sub_10010FC20(&qword_1011928D0, &unk_100EE4BD0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v48 = (v47 - v9);
  sub_10010FC20(&qword_1011928D8, &qword_100ECFC10);
  __chkstk_darwin();
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = v47 - v12;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v14 = v47 - v13;
  v15 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v56 = *(v15 - 8);
  __chkstk_darwin();
  v17 = v47 - v16;
  v18 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
  swift_beginAccess();
  if (*(*(v2 + v18) + 16))
  {
    v53 = v8;
    v55 = v7;
    v19 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
    swift_beginAccess();
    sub_1000089F8(v2 + v19, v14, &qword_10119A808, &unk_100ED91D0);
    v20 = *(v56 + 48);
    if (v20(v14, 1, v15) == 1)
    {
      type metadata accessor for Playlist.Entry();
      MusicItemCollection.init(arrayLiteral:)();
      v21 = v20(v14, 1, v15);
      v22 = v56;
      if (v21 != 1)
      {
        sub_1000095E8(v14, &qword_10119A808, &unk_100ED91D0);
      }
    }

    else
    {
      v22 = v56;
      (*(v56 + 32))(v17, v14, v15);
    }

    v23 = sub_1008687D8(v54, v17);
    (*(v22 + 8))(v17, v15);
    v59 = v23;
    v24 = *(v2 + v18);
    v47[1] = v50 + 16;
    v56 = *(v24 + 16);
    v25 = v53;
    v53 += 6;
    v54 = (v25 + 7);
    v52 = (v50 + 32);
    v26 = (v50 + 8);
    v49 = v24;

    v27 = 0;
    v28 = _swiftEmptyArrayStorage;
    while (1)
    {
      v29 = v55;
      v30 = v57;
      if (v27 == v56)
      {
        v31 = 1;
        v27 = v56;
      }

      else
      {
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v27 >= *(v49 + 16))
        {
          goto LABEL_28;
        }

        v51 = v27 + 1;
        v32 = v50;
        v33 = v49 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27;
        v34 = *(v55 + 48);
        v35 = v11;
        v36 = v48;
        *v48 = v27;
        (*(v32 + 16))(&v36[v34], v33, v3);
        v37 = v36;
        v11 = v35;
        v30 = v57;
        sub_10003D17C(v37, v11, &qword_1011928D0, &unk_100EE4BD0);
        v31 = 0;
        v27 = v51;
      }

      (*v54)(v11, v31, 1, v29);
      sub_10003D17C(v11, v30, &qword_1011928D8, &qword_100ECFC10);
      if ((*v53)(v30, 1, v29) == 1)
      {
        break;
      }

      v51 = *v30;
      (*v52)(v58, &v30[*(v29 + 48)], v3);
      v38 = Track.catalogID.getter();
      if (v39 && (sub_100195A08(v38, v39), v41 = v40, , v41))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1004995E0(0, *(v28 + 2) + 1, 1, v28);
        }

        v43 = *(v28 + 2);
        v42 = *(v28 + 3);
        if (v43 >= v42 >> 1)
        {
          v28 = sub_1004995E0((v42 > 1), v43 + 1, 1, v28);
        }

        (*v26)(v58, v3);
        *(v28 + 2) = v43 + 1;
        *&v28[8 * v43 + 32] = v51;
      }

      else
      {
        (*v26)(v58, v3);
      }
    }

    v44 = *(v28 + 2);
    if (!v44)
    {
LABEL_24:

      return;
    }

    while (v44 <= *(v28 + 2))
    {
      v45 = v44 - 1;
      v46 = *&v28[8 * v44 + 24];
      swift_beginAccess();
      sub_1004F42B8(v46, v5);
      (*v26)(v5, v3);
      swift_endAccess();
      sub_10084A954();
      v44 = v45;
      if (!v45)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }
}

uint64_t sub_100849A08()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v12 - v4;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v7 = v12 - v6;
  v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v7, &qword_10119A808, &unk_100ED91D0);
  if ((*(v3 + 48))(v7, 1, v2))
  {
    sub_1000095E8(v7, &qword_10119A808, &unk_100ED91D0);
  }

  else
  {
    (*(v3 + 16))(v5, v7, v2);
    sub_1000095E8(v7, &qword_10119A808, &unk_100ED91D0);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    (*(v3 + 8))(v5, v2);
    if (v12[2] != v12[1])
    {
LABEL_5:
      LOBYTE(v10) = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) ^ 1;
      return v10 & 1;
    }
  }

  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
  swift_beginAccess();
  v10 = *(*(v1 + v9) + 16);
  if (v10)
  {
    goto LABEL_5;
  }

  return v10 & 1;
}

uint64_t sub_100849C78()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin();
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v47 = &v44 - v4;
  v5 = type metadata accessor for MusicPropertySource();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin();
  v52 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v44 - v7;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v44 - v10;
  v12 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v50 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v44 - v15;
  v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
  swift_beginAccess();
  v18 = v1;
  sub_1000089F8(v1 + v17, v11, &qword_10119A808, &unk_100ED91D0);
  v19 = *(v13 + 48);
  if (v19(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &qword_10119A808, &unk_100ED91D0);
    return 0;
  }

  (*(v13 + 32))(v16, v11, v12);
  v21 = v13;
  if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) == 1)
  {
    sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v22 = dispatch thunk of Collection.distance(from:to:)();
    (*(v21 + 8))(v16, v12);
    return v22;
  }

  v45 = v13;
  v44 = v16;
  v23 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  v25 = v53;
  v24 = v54;
  (*(v53 + 16))(v8, v1 + v23, v54);
  v26 = v52;
  (*(v25 + 104))(v52, enum case for MusicPropertySource.catalog(_:), v24);
  LOBYTE(v23) = static MusicPropertySource.== infix(_:_:)();
  v27 = *(v25 + 8);
  v27(v26, v24);
  v27(v8, v24);
  if ((v23 & 1) == 0)
  {
LABEL_11:
    sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    v39 = v44;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v22 = dispatch thunk of Collection.distance(from:to:)();
    (*(v45 + 8))(v39, v12);
    return v22;
  }

  v28 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
  swift_beginAccess();
  v29 = v51;
  sub_1000089F8(v18 + v28, v51, &qword_10119A808, &unk_100ED91D0);
  if (v19(v29, 1, v12))
  {
    sub_1000095E8(v29, &qword_10119A808, &unk_100ED91D0);
    goto LABEL_11;
  }

  v30 = v45;
  v31 = v50;
  (*(v45 + 16))(v50, v29, v12);
  sub_1000095E8(v29, &qword_10119A808, &unk_100ED91D0);
  v32 = MusicItemCollection.hasNextBatch.getter();
  v33 = *(v30 + 8);
  v33(v31, v12);
  if ((v32 & 1) == 0)
  {
    goto LABEL_11;
  }

  v34 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  v35 = v47;
  sub_1000089F8(v18 + v34, v47, &unk_1011814D0, &qword_100EC12A0);
  v37 = v48;
  v36 = v49;
  if ((*(v48 + 48))(v35, 1, v49))
  {
    sub_1000095E8(v35, &unk_1011814D0, &qword_100EC12A0);
    v38 = v44;
  }

  else
  {
    v40 = v46;
    (*(v37 + 16))(v46, v35, v36);
    sub_1000095E8(v35, &unk_1011814D0, &qword_100EC12A0);
    v41 = Playlist.trackCount.getter();
    v43 = v42;
    (*(v37 + 8))(v40, v36);
    v38 = v44;
    if ((v43 & 1) == 0)
    {
      v33(v44, v12);
      return v41;
    }
  }

  sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v22 = dispatch thunk of Collection.distance(from:to:)();
  v33(v38, v12);
  return v22;
}

void sub_10084A45C()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 6)
    {
      if (v2 == ++v3)
      {
        return;
      }
    }

    v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v0[v5], &aBlock, &unk_1011926C0, &unk_100ECF870);
    if (v14)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v7 = v0;
        v8 = sub_1006A6078();

        v9 = swift_allocObject();
        *(v9 + 16) = v7;
        *(v9 + 24) = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_10086817C;
        *(v10 + 24) = v9;
        v17 = sub_10018A020;
        v18 = v10;
        aBlock = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_100029B9C;
        v16 = &unk_1010C1FA0;
        v11 = _Block_copy(&aBlock);
        v12 = v7;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

void sub_10084A644(uint64_t a1, uint64_t a2)
{
  if (sub_100849A08())
  {
    if (*(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingDetailSection))
    {
      return;
    }

    *(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingDetailSection) = 1;
    v3 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(a1 + v3, v9, &unk_1011926C0, &unk_100ECF870);
    if ((v10 & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v9, &unk_1011926C0, &unk_100ECF870);
      if (!Strong)
      {
        return;
      }

      v5 = sub_1006A6078();

      sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
      type metadata accessor for IndexPath();
      *(swift_allocObject() + 16) = xmmword_100EBC6B0;
      IndexPath.init(item:section:)();
      v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 insertItemsAtIndexPaths:v6.super.isa];
      goto LABEL_11;
    }

LABEL_8:
    sub_1000095E8(v9, &unk_1011926C0, &unk_100ECF870);
    return;
  }

  if (!*(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingDetailSection))
  {
    return;
  }

  *(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingDetailSection) = 0;
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v7, v9, &unk_1011926C0, &unk_100ECF870);
  if (v10)
  {
    goto LABEL_8;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v9, &unk_1011926C0, &unk_100ECF870);
  if (!v8)
  {
    return;
  }

  v5 = sub_1006A6078();

  sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
  type metadata accessor for IndexPath();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  IndexPath.init(item:section:)();
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 deleteItemsAtIndexPaths:v6.super.isa];
LABEL_11:
}

void sub_10084A954()
{
  v1 = v0;
  v23 = type metadata accessor for IndexPath();
  v2 = *(v23 - 8);
  __chkstk_darwin();
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  v5 = sub_100849C78();
  v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
  swift_beginAccess();
  v7 = *(*(v1 + v6) + 16);
  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_18:
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v24 = v8;
    v25 = 0;
    static Published.subscript.setter();
    v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v9, v26, &unk_1011926C0, &unk_100ECF870);
    if (v26[8])
    {
      sub_1000095E8(v26, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v26, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v11 = sub_1006A6078();

        v12 = [v11 indexPathsForVisibleItems];
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v14 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = 0;
          v17 = v14 + 32;
          while (*(v17 + v16) != 6)
          {
            if (v15 == ++v16)
            {
              goto LABEL_9;
            }
          }

          v18 = 0;
          v19 = *(v13 + 16);
          v22 = v2 + 16;
          v20 = v23;
          while (v19 != v18)
          {
            if (v18 >= *(v13 + 16))
            {
              __break(1u);
              goto LABEL_18;
            }

            (*(v2 + 16))(v4, v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18++, v20);
            v21 = IndexPath.section.getter();
            (*(v2 + 8))(v4, v20);
            if (v21 == v16)
            {

              sub_10084AC50();
              return;
            }
          }
        }

LABEL_9:
      }
    }

    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsDurationUpdate) = 1;
  }
}

uint64_t sub_10084AC50()
{
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v2 = &v12[-v1];
  v3 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v3, v14, &unk_1011926C0, &unk_100ECF870);
  if (v14[8])
  {
    v4 = &unk_1011926C0;
    v5 = &unk_100ECF870;
    v6 = v14;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    result = sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
    if (!Strong)
    {
      return result;
    }

    v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
    swift_beginAccess();
    sub_1000089F8(v0 + v9, v2, &qword_10119A808, &unk_100ED91D0);
    v15[0] = v2;
    v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
    swift_beginAccess();
    v13 = *(v0 + v10);
    v15[1] = &v13;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_10080686C(v15, sub_100867F64, v11);

    v6 = v2;
    v4 = &qword_10119A808;
    v5 = &unk_100ED91D0;
  }

  return sub_1000095E8(v6, v4, v5);
}

void *sub_10084AE68(uint64_t a1, double a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

unint64_t sub_10084AF0C(__n128 a1)
{
  v2 = type metadata accessor for Playlist.EditableComponents();
  v71 = *(v2 - 8);
  v72 = v2;
  __chkstk_darwin();
  v68 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D240, &unk_100EC8F50);
  __chkstk_darwin();
  v70 = &v64 - v4;
  v81 = type metadata accessor for Playlist.Variant();
  v77 = *(v81 - 8);
  __chkstk_darwin();
  v73 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10010FC20(&unk_1011A4670, &qword_100EBF808);
  __chkstk_darwin();
  v79 = &v64 - v6;
  v78 = type metadata accessor for Playlist();
  v80 = *(v78 - 8);
  __chkstk_darwin();
  v69 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v64 - v8;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v74 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v64 - v11;
  sub_10010FC20(&unk_10119EF50, &unk_100EDDF70);
  __chkstk_darwin();
  v76 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v64 - v14;
  __chkstk_darwin();
  v17 = &v64 - v16;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v19 = &v64 - v18;
  v20 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v83 = *(v20 - 8);
  __chkstk_darwin();
  v82 = &v64 - v21;
  v22 = v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState;
  v23 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  if ((v23 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
  {
    v25 = *(v22 + 8);
    v24 = *(v22 + 16);
    if ((v23 >> 62) - 1 >= 2)
    {
      if (v23 >> 62)
      {
        goto LABEL_7;
      }

      sub_10011896C(*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState), v25, v24);
    }

    result = v23;
    if ((v23 & 1) == 0)
    {
      return result;
    }

    sub_1004E5BA4(v23, v25, v24);
  }

LABEL_7:
  if ((*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) & 1) == 0)
  {
    v27 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
    swift_beginAccess();
    sub_1000089F8(v1 + v27, v19, &qword_10119A808, &unk_100ED91D0);
    v28 = v83;
    if ((*(v83 + 48))(v19, 1, v20) == 1)
    {
      v29 = &qword_10119A808;
      v30 = &unk_100ED91D0;
LABEL_10:
      sub_1000095E8(v19, v29, v30);
      return 0x3FFFFFEF8;
    }

    v31 = v1;
    v32 = v82;
    (*(v28 + 32))();
    sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v84[0] != v85)
    {
      (*(v28 + 8))(v32, v20);
      return 0x3FFFFFEF8;
    }

    if (*(v31 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent) == 1)
    {
      (*(v83 + 8))(v32, v20);
      return 0x3FFFFFEFALL;
    }

    v33 = v31;
    v34 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    v67 = v34;
    sub_1000089F8(v31 + v34, v12, &unk_1011814D0, &qword_100EC12A0);
    v35 = v80;
    v36 = *(v80 + 48);
    v37 = v78;
    v66 = v80 + 48;
    v65 = v36;
    if (v36(v12, 1, v78))
    {
      sub_1000095E8(v12, &unk_1011814D0, &qword_100EC12A0);
      v38 = v77;
      v39 = v81;
      (*(v77 + 56))(v17, 1, 1, v81);
    }

    else
    {
      (*(v35 + 16))(v9, v12, v37);
      sub_1000095E8(v12, &unk_1011814D0, &qword_100EC12A0);
      Playlist.variant.getter();
      v33 = v31;
      (*(v35 + 8))(v9, v37);
      v39 = v81;
      v38 = v77;
    }

    (*(v38 + 104))(v15, enum case for Playlist.Variant.favoriteSongs(_:), v39);
    (*(v38 + 56))(v15, 0, 1, v39);
    v40 = *(v75 + 48);
    v41 = v79;
    sub_1000089F8(v17, v79, &unk_10119EF50, &unk_100EDDF70);
    v42 = v81;
    v43 = v41;
    sub_1000089F8(v15, v41 + v40, &unk_10119EF50, &unk_100EDDF70);
    v44 = *(v38 + 48);
    if (v44(v43, 1, v42) == 1)
    {
      sub_1000095E8(v15, &unk_10119EF50, &unk_100EDDF70);
      v45 = v79;
      sub_1000095E8(v17, &unk_10119EF50, &unk_100EDDF70);
      v46 = v44(v45 + v40, 1, v42);
      v47 = v82;
      if (v46 == 1)
      {
        sub_1000095E8(v45, &unk_10119EF50, &unk_100EDDF70);
LABEL_29:
        (*(v83 + 8))(v47, v20);
        return 0x3FFFFFEFELL;
      }
    }

    else
    {
      sub_1000089F8(v43, v76, &unk_10119EF50, &unk_100EDDF70);
      if (v44(v43 + v40, 1, v42) != 1)
      {
        v51 = v77;
        v52 = v43 + v40;
        v53 = v73;
        (*(v77 + 32))(v73, v52, v42);
        sub_100866F00(&unk_1011A4680, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        v54 = v42;
        v33 = v31;
        LODWORD(v75) = dispatch thunk of static Equatable.== infix(_:_:)();
        v55 = *(v51 + 8);
        v55(v53, v54);
        sub_1000095E8(v15, &unk_10119EF50, &unk_100EDDF70);
        sub_1000095E8(v17, &unk_10119EF50, &unk_100EDDF70);
        v55(v76, v54);
        sub_1000095E8(v43, &unk_10119EF50, &unk_100EDDF70);
        v48 = v80;
        v47 = v82;
        if (v75)
        {
          goto LABEL_29;
        }

LABEL_26:
        v49 = v74;
        sub_1000089F8(v33 + v67, v74, &unk_1011814D0, &qword_100EC12A0);
        v50 = v78;
        if (v65(v49, 1, v78))
        {
          (*(v83 + 8))(v47, v20);
          sub_1000095E8(v49, &unk_1011814D0, &qword_100EC12A0);
          return 0x3FFFFFEF8;
        }

        v56 = v69;
        (*(v48 + 16))(v69, v49, v50);
        sub_1000095E8(v49, &unk_1011814D0, &qword_100EC12A0);
        v19 = v70;
        Playlist.editableComponents.getter();
        (*(v48 + 8))(v56, v50);
        v58 = v71;
        v57 = v72;
        v59 = (*(v71 + 48))(v19, 1, v72);
        v60 = v83;
        if (v59 != 1)
        {
          v61 = v68;
          static Playlist.EditableComponents.tracklist.getter();
          sub_100866F00(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
          v62 = dispatch thunk of SetAlgebra.isSuperset(of:)();
          v63 = *(v58 + 8);
          v63(v61, v57);
          (*(v60 + 8))(v82, v20);
          v63(v19, v57);
          if ((v62 & 1) == 0)
          {
            return 0x3FFFFFEFCLL;
          }

          return 0x3FFFFFEF8;
        }

        (*(v83 + 8))(v82, v20);
        v29 = &unk_10118D240;
        v30 = &unk_100EC8F50;
        goto LABEL_10;
      }

      sub_1000095E8(v15, &unk_10119EF50, &unk_100EDDF70);
      v45 = v79;
      sub_1000095E8(v17, &unk_10119EF50, &unk_100EDDF70);
      (*(v77 + 8))(v76, v42);
      v47 = v82;
    }

    sub_1000095E8(v45, &unk_1011A4670, &qword_100EBF808);
    v48 = v80;
    goto LABEL_26;
  }

  return 0x3FFFFFEF8;
}

void sub_10084BBB4()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 4)
    {
      if (v2 == ++v3)
      {
        return;
      }
    }

    v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v0[v5], &aBlock, &unk_1011926C0, &unk_100ECF870);
    if (v14)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v7 = v0;
        v8 = sub_1006A6078();

        v9 = swift_allocObject();
        *(v9 + 16) = v7;
        *(v9 + 24) = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_100867F5C;
        *(v10 + 24) = v9;
        v17 = sub_10018A020;
        v18 = v10;
        aBlock = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_100029B9C;
        v16 = &unk_1010C1ED8;
        v11 = _Block_copy(&aBlock);
        v12 = v7;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

void sub_10084BD9C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = sub_10084AF0C(a3);
  if ((v4 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEF8)
  {
    if (*(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingNoContentSection) != 1)
    {
      return;
    }

    *(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingNoContentSection) = 0;
    v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(a1 + v7, v13, &unk_1011926C0, &unk_100ECF870);
    if ((v14 & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
      if (!Strong)
      {
        return;
      }

      v9 = sub_1006A6078();

      sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
      type metadata accessor for IndexPath();
      *(swift_allocObject() + 16) = xmmword_100EBC6B0;
      IndexPath.init(item:section:)();
      v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v9 deleteItemsAtIndexPaths:v10.super.isa];
      goto LABEL_11;
    }

LABEL_8:
    sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
    return;
  }

  sub_1004E5B40(v4, v5, v6);
  if (*(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingNoContentSection))
  {
    return;
  }

  *(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingNoContentSection) = 1;
  v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v11, v13, &unk_1011926C0, &unk_100ECF870);
  if (v14)
  {
    goto LABEL_8;
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
  if (!v12)
  {
    return;
  }

  v9 = sub_1006A6078();

  sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
  type metadata accessor for IndexPath();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  IndexPath.init(item:section:)();
  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 insertItemsAtIndexPaths:v10.super.isa];
LABEL_11:
}

BOOL sub_10084C0D4()
{
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v34 = &v33 - v1;
  v2 = type metadata accessor for Playlist.EditableComponents();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin();
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Playlist();
  v39 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v8 = &v33 - v7;
  sub_10010FC20(&unk_10118D240, &unk_100EC8F50);
  __chkstk_darwin();
  v36 = &v33 - v9;
  v10 = type metadata accessor for MusicPropertySource();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v33 - v14;
  v16 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  (*(v11 + 16))(v15, v0 + v16, v10);
  (*(v11 + 104))(v13, enum case for MusicPropertySource.library(_:), v10);
  LOBYTE(v16) = static MusicPropertySource.== infix(_:_:)();
  v17 = *(v11 + 8);
  v17(v13, v10);
  v17(v15, v10);
  if (v16 & 1) == 0 || (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent))
  {
    return 0;
  }

  v18 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v0 + v18, v8, &unk_1011814D0, &qword_100EC12A0);
  v19 = v39;
  if ((*(v39 + 48))(v8, 1, v4))
  {
    v20 = &unk_1011814D0;
    v21 = &qword_100EC12A0;
LABEL_7:
    sub_1000095E8(v8, v20, v21);
    return 0;
  }

  (*(v19 + 16))(v6, v8, v4);
  sub_1000095E8(v8, &unk_1011814D0, &qword_100EC12A0);
  v8 = v36;
  Playlist.editableComponents.getter();
  (*(v19 + 8))(v6, v4);
  v23 = v37;
  v22 = v38;
  if ((*(v37 + 48))(v8, 1, v38) == 1)
  {
    v20 = &unk_10118D240;
    v21 = &unk_100EC8F50;
    goto LABEL_7;
  }

  v25 = v35;
  static Playlist.EditableComponents.tracklist.getter();
  sub_100866F00(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
  v26 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v27 = *(v23 + 8);
  v27(v25, v22);
  v27(v8, v22);
  if ((v26 & 1) != 0 && (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) & 1) == 0)
  {
    v28 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
    swift_beginAccess();
    v29 = v0 + v28;
    v30 = v34;
    sub_1000089F8(v29, v34, &qword_10119A808, &unk_100ED91D0);
    v31 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
    v32 = (*(*(v31 - 8) + 48))(v30, 1, v31) != 1;
    sub_1000095E8(v30, &qword_10119A808, &unk_100ED91D0);
    return v32;
  }

  return 0;
}

void sub_10084C6A4()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 5)
    {
      if (v2 == ++v3)
      {
        return;
      }
    }

    v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v0[v5], &aBlock, &unk_1011926C0, &unk_100ECF870);
    if (v15)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v7 = v0;
        v8 = sub_1006A6078();
        v9 = swift_allocObject();
        v9[2] = v0;
        v9[3] = Strong;
        v9[4] = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_100867F20;
        *(v10 + 24) = v9;
        v18 = sub_10018A020;
        v19 = v10;
        aBlock = _NSConcreteStackBlock;
        v15 = 1107296256;
        v16 = sub_100029B9C;
        v17 = &unk_1010C1E60;
        v11 = _Block_copy(&aBlock);
        v12 = v7;
        v13 = Strong;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

uint64_t sub_10084C8A0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for MusicLibrary.AddToPlaylistDuplicatePolicy();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for Playlist();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[19] = v8;
  v3[20] = v7;

  return _swift_task_switch(sub_10084CAA0, v8, v7);
}

uint64_t sub_10084CAA0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  sub_1000089F8(v0[5], v3, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[13];

    sub_1000095E8(v4, &unk_1011814D0, &qword_100EC12A0);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[8];
    v17 = v0[9];
    v8 = v0[7];
    v9 = v0[4];
    (*(v0[15] + 32))(v0[17], v0[13], v0[14]);
    type metadata accessor for MusicLibrary();
    v0[21] = static MusicLibrary.shared.getter();
    v0[2] = v9;
    type metadata accessor for Track();

    sub_10010FC20(&qword_10119ED90, &unk_100ECF7A0);
    sub_100020674(&qword_101192820, &qword_10119ED90, &unk_100ECF7A0, &protocol conformance descriptor for [A]);
    MusicItemCollection.init<A>(_:)();
    (*(v7 + 104))(v17, enum case for MusicLibrary.AddToPlaylistDuplicatePolicy.includeDuplicates(_:), v8);
    v10 = swift_task_alloc();
    v0[22] = v10;
    v11 = sub_100020674(&unk_10118C0A0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    *v10 = v0;
    v10[1] = sub_10084CD64;
    v12 = v0[16];
    v13 = v0[17];
    v14 = v0[12];
    v15 = v0[9];
    v16 = v0[10];

    return MusicLibrary.add<A>(_:to:duplicatePolicy:importAllowedHandler:)(v12, v14, v13, v15, 0, 0, v16, v11);
  }
}

uint64_t sub_10084CD64()
{
  v2 = *v1;
  v16 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  *(*v1 + 184) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v16, v4);
  if (v0)
  {
    v8 = v2[19];
    v9 = v2[20];
    v10 = sub_10084D1E4;
  }

  else
  {
    v12 = v2[15];
    v11 = v2[16];
    v13 = v2[14];
    v14 = *(v12 + 8);
    v2[24] = v14;
    v2[25] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v11, v13);
    v8 = v2[19];
    v9 = v2[20];
    v10 = sub_10084CF88;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_10084CF88()
{
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_10084D018;

  return sub_10081BB60();
}

uint64_t sub_10084D018()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_10084D138, v3, v2);
}

uint64_t sub_10084D138()
{
  v1 = v0[24];
  v2 = v0[17];
  v3 = v0[14];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10084D1E4()
{
  v18 = v0;

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219770);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[23];
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  if (v4)
  {
    v16 = v0[17];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v0[3] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000105AC(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to add new picker selections to playlist with error=%{public}s", v9, 0xCu);
    sub_10000959C(v10);

    (*(v7 + 8))(v16, v8);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v14 = v0[1];

  return v14();
}

double sub_10084D420()
{
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v4 = &v24 - v3;
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  *&result = __chkstk_darwin().n128_u64[0];
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    sub_1000089F8(&v0[v11], v4, &unk_1011814D0, &qword_100EC12A0);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1000095E8(v4, &unk_1011814D0, &qword_100EC12A0);
    }

    else
    {
      (*(v6 + 32))(v9, v4, v5);
      (*(v6 + 16))(v2, v9, v5);
      swift_storeEnumTagMultiPayload();
      v12 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(&v0[v12], v29, &unk_1011926C0, &unk_100ECF870);
      v25 = v9;
      if (v29[8])
      {

        sub_1000095E8(v29, &unk_1011926C0, &unk_100ECF870);
        v13 = 0;
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();

        sub_1000095E8(v29, &unk_1011926C0, &unk_100ECF870);
        v13 = Strong;
      }

      v31 = 0;
      memset(v30, 0, sizeof(v30));
      v32 = xmmword_100EBCEF0;
      PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)(v13, v30, 0, 0, 0, 0, v28);
      sub_10010FC20(&qword_1011A4710, &qword_100EE4BA8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      *(inited + 32) = v0;
      *(inited + 40) = &off_1010C1978;
      type metadata accessor for SuggestedSongsDataSource(0);
      v16 = swift_allocObject();
      v17 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_updateReceivers;
      v18 = sub_100009F78(0, &qword_101197A30, NSObject_ptr);
      v24 = v0;
      *(v16 + v17) = WeakArray.init(_:)(_swiftEmptyArrayStorage, v18);
      *(v16 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_pendingImpressionCellTags) = &_swiftEmptySetSingleton;
      *(v16 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_impressedSongs) = &_swiftEmptySetSingleton;
      *(v16 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_hasNetworkConnectivityDidChangeNotificationObserver) = 0;
      *(v16 + 16) = v10;
      sub_10086772C(v2, v16 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement, type metadata accessor for SuggestedSongsDataSource.Placement);
      sub_10012B7A8(v28, v16 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_presentationSource);

      v19 = sub_10018DB5C(inited);
      swift_setDeallocating();

      *(v16 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_updateReceivers) = WeakArray.init(_:)(v19, v18);

      swift_beginAccess();
      v27 = 0;
      Published.init(initialValue:)();
      swift_endAccess();
      static ApplicationCapabilities.shared.getter(v29);
      sub_100014984(v29);
      LOBYTE(v19) = v29[1];
      swift_beginAccess();
      v26 = v19;
      Published.init(initialValue:)();
      swift_endAccess();
      v20 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
      v21 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
      v22 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for NotificationObserver();
      swift_allocObject();

      v23 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v21, 1, 1, sub_100867F18, v22);

      sub_10012BA6C(v28);
      sub_100867794(v2, type metadata accessor for SuggestedSongsDataSource.Placement);

      *(v16 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_hasNetworkConnectivityDidChangeNotificationObserver) = v23;

      (*(v6 + 8))(v25, v5);
      *&v24[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsDataSource] = v16;
    }
  }

  return result;
}

uint64_t sub_10084DA1C(__n128 a1)
{
  v2 = type metadata accessor for Playlist.EditableComponents();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin();
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Playlist();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  sub_10010FC20(&unk_10118D240, &unk_100EC8F50);
  __chkstk_darwin();
  v32 = &v30 - v9;
  v10 = type metadata accessor for MusicPropertySource();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v30 - v14;
  v16 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  (*(v11 + 16))(v15, v1 + v16, v10);
  (*(v11 + 104))(v13, enum case for MusicPropertySource.library(_:), v10);
  LOBYTE(v16) = static MusicPropertySource.== infix(_:_:)();
  v17 = *(v11 + 8);
  v17(v13, v10);
  v17(v15, v10);
  if (v16 & 1) == 0 || (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent))
  {
    return 0;
  }

  v18 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v18, v8, &unk_1011814D0, &qword_100EC12A0);
  v20 = v35;
  v19 = v36;
  if ((*(v35 + 48))(v8, 1, v36))
  {
    v21 = &unk_1011814D0;
    v22 = &qword_100EC12A0;
LABEL_7:
    sub_1000095E8(v8, v21, v22);
    return 0;
  }

  v23 = v1;
  (*(v20 + 16))(v6, v8, v19);
  sub_1000095E8(v8, &unk_1011814D0, &qword_100EC12A0);
  v8 = v32;
  Playlist.editableComponents.getter();
  (*(v20 + 8))(v6, v19);
  v25 = v33;
  v24 = v34;
  if ((*(v33 + 48))(v8, 1, v34) == 1)
  {
    v21 = &unk_10118D240;
    v22 = &unk_100EC8F50;
    goto LABEL_7;
  }

  v27 = v31;
  static Playlist.EditableComponents.tracklist.getter();
  sub_100866F00(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
  v28 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v29 = *(v25 + 8);
  v29(v27, v24);
  v29(v8, v24);
  if (v28)
  {
    static ApplicationCapabilities.shared.getter(v37);
    sub_100014984(v37);
    if (v37[1])
    {
      static ApplicationCapabilities.shared.getter(v38);
      sub_100014984(v38);
      if ((v38[8] & 1) != 0 && *(v23 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) != 1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10084DF2C()
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v2 = &v12 - v1;
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v0 + v9, v2, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1000095E8(v2, &unk_1011814D0, &qword_100EC12A0);
  }

  (*(v4 + 32))(v8, v2, v3);
  v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel;
  if (!*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel))
  {
    type metadata accessor for MusicSuggestedSongsViewModel();
    (*(v4 + 16))(v6, v8, v3);
    *(v0 + v11) = MusicSuggestedSongsViewModel.__allocating_init(playlist:)();

    sub_10084D420();
  }

  return (*(v4 + 8))(v8, v3);
}

void sub_10084E17C()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 9)
    {
      if (v2 == ++v3)
      {
        return;
      }
    }

    v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v0[v5], &aBlock, &unk_1011926C0, &unk_100ECF870);
    if (v15)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v7 = v0;
        v8 = sub_1006A6078();
        v9 = swift_allocObject();
        v9[2] = v0;
        v9[3] = Strong;
        v9[4] = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_100867EDC;
        *(v10 + 24) = v9;
        v18 = sub_100029B94;
        v19 = v10;
        aBlock = _NSConcreteStackBlock;
        v15 = 1107296256;
        v16 = sub_100029B9C;
        v17 = &unk_1010C1DC0;
        v11 = _Block_copy(&aBlock);
        v12 = v7;
        v13 = Strong;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

void sub_10084E378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v7 = a4();
  v8 = *a5;
  if (v7)
  {
    if (*(a1 + v8))
    {
      return;
    }

    sub_10084DF2C();
    if (!*(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel))
    {
      return;
    }

    v9 = &selRef_insertItemsAtIndexPaths_;
    v10 = 1;
  }

  else
  {
    if (!*(a1 + v8))
    {
      return;
    }

    v10 = 0;
    v9 = &selRef_deleteItemsAtIndexPaths_;
  }

  *(a1 + v8) = v10;
  v11 = sub_1006A6078();
  sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
  type metadata accessor for IndexPath();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  IndexPath.init(item:section:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 *v9];
}

void sub_10084E514(void *a1)
{
  v3 = type metadata accessor for Song();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A46F8, &qword_100EE4B90);
  __chkstk_darwin();
  v8 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsCell);
  if (v8)
  {
    v9 = a1 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsDataSource);
    if (v10)
    {
      v53 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsDataSource;
      v54 = &v46 - v7;
      v49 = v6;
      v50 = v3;
      v11 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_pendingImpressionCellTags;
      swift_beginAccess();
      v12 = *(v10 + v11);
      v13 = v12 + 56;
      v14 = 1 << *(v12 + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(v12 + 56);
      v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      v52 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel;
      swift_bridgeObjectRetain_n();
      v59 = v8;
      v18 = a1;
      v56 = v17;
      swift_beginAccess();
      v19 = 0;
      v20 = (v14 + 63) >> 6;
      v48 = (v4 + 16);
      v57 = v18;
      v58 = v12;
      while (v16)
      {
LABEL_15:
        v22 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v23 = *(*(v12 + 48) + ((v19 << 9) | (8 * v22)));
        v24 = [v59 viewWithTag:v23];
        if (v24)
        {
          v25 = v24;
          type metadata accessor for TaggedViewResolver.View(0);
          v26 = swift_dynamicCastClass();
          if (v26)
          {
            v27 = v26;
            [v26 frame];
            v55 = v27;
            [v27 convertRect:v18 toCoordinateSpace:?];
            v29 = v28;
            v31 = v30;
            v33 = v32;
            v35 = v34;
            sub_1000089F8(v1 + v56, v60, &unk_1011926C0, &unk_100ECF870);
            if (v60[8])
            {
              sub_1000095E8(v60, &unk_1011926C0, &unk_100ECF870);
              v36 = 0.0;
            }

            else
            {
              Strong = swift_unknownObjectWeakLoadStrong();
              sub_1000095E8(v60, &unk_1011926C0, &unk_100ECF870);
              if (Strong)
              {
                v38 = [Strong view];

                if (!v38)
                {
                  goto LABEL_34;
                }

                [v38 directionalLayoutMargins];
                v36 = v39;
              }

              else
              {
                v36 = 0.0;
              }

              v18 = v57;
            }

            v61.origin.x = v29;
            v61.origin.y = v31;
            v61.size.width = v33;
            v61.size.height = v35;
            MinY = CGRectGetMinY(v61);
            [v18 bounds];
            if (MinY < CGRectGetMaxY(v62) - v36)
            {
              v41 = v53;
              if (*(v1 + v53) && (swift_beginAccess(), , v51 = v1, sub_100195918(v23), v1 = v51, swift_endAccess(), , *(v1 + v41)))
              {
                v47 = sub_10010FC20(&unk_1011A4700, &unk_100EE4B98);
                v46 = *(v47 + 48);
                v42 = v49;
                (*v48)(v49, v55 + OBJC_IVAR____TtCV5Music18TaggedViewResolver4View_song, v50);
                swift_beginAccess();

                v43 = v54;
                v44 = sub_1003B37D0(&v54[v46], v42);
                v1 = v51;
                LOBYTE(v42) = v44;
                swift_endAccess();

                *v43 = v42 & 1;
                (*(*(v47 - 8) + 56))(v43, 0, 1);
              }

              else
              {
                v45 = sub_10010FC20(&unk_1011A4700, &unk_100EE4B98);
                v43 = v54;
                (*(*(v45 - 8) + 56))(v54, 1, 1, v45);
              }

              sub_1000095E8(v43, &qword_1011A46F8, &qword_100EE4B90);
              v18 = v57;
              if (*(v1 + v52))
              {

                dispatch thunk of MusicSuggestedSongsViewModel.didImpress(_:)();
                v18 = v57;
              }
            }
          }

          v12 = v58;
        }
      }

      while (1)
      {
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v21 >= v20)
        {

          return;
        }

        v16 = *(v13 + 8 * v21);
        ++v19;
        if (v16)
        {
          v19 = v21;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
    }
  }
}

uint64_t sub_10084EB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = type metadata accessor for IndexPath();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v4[25] = *(v6 + 64);
  v4[26] = swift_task_alloc();
  v7 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v4[27] = v7;
  v8 = *(v7 - 8);
  v4[28] = v8;
  v4[29] = *(v8 + 64);
  v4[30] = swift_task_alloc();
  type metadata accessor for Locale();
  v4[31] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[32] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v4[33] = swift_task_alloc();
  v9 = type metadata accessor for Playlist();
  v4[34] = v9;
  v4[35] = *(v9 - 8);
  v4[36] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[37] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[38] = v11;
  v4[39] = v10;

  return _swift_task_switch(sub_10084ED90, v11, v10);
}

uint64_t sub_10084ED90()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[22];
  v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v4 + v5, v3, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[33];

    sub_1000095E8(v6, &unk_1011814D0, &qword_100EC12A0);

    v7 = v0[1];

    return v7();
  }

  else
  {
    (*(v0[35] + 32))(v0[36], v0[33], v0[34]);
    type metadata accessor for MusicLibrary();
    v9 = static MusicLibrary.shared.getter();
    v0[40] = v9;
    v10 = swift_task_alloc();
    v0[41] = v10;
    *v10 = v0;
    v10[1] = sub_10084EF70;
    v11 = v0[19];

    return Playlist.numberOfDuplicateTracks(_:library:)(v11, v9);
  }
}

uint64_t sub_10084EF70(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 336) = a1;

  v3 = *(v2 + 312);
  v4 = *(v2 + 304);

  return _swift_task_switch(sub_10084F0BC, v4, v3);
}

uint64_t sub_10084F0BC()
{
  if (v0[42] < 1)
  {
    v17 = swift_task_alloc();
    v0[43] = v17;
    *v17 = v0;
    v17[1] = sub_10084F828;
    v19 = v0[19];
    v18 = v0[20];

    return sub_1008501A8(v19, v18, 0);
  }

  else
  {
    v1 = v0[30];
    v32 = v0[29];
    v2 = v0[27];
    v3 = v0[28];
    v4 = v0[26];
    v39 = v0[24];
    v37 = v0[23];
    v5 = v0[22];
    v7 = v0[19];
    v6 = v0[20];
    v34 = v6;
    v38 = v7;

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v35 = *(v3 + 16);
    v35(v1, v7, v2);
    v33 = *(v39 + 16);
    v33(v4, v6, v37);
    v30 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v27 = (v32 + *(v39 + 80) + v30) & ~*(v39 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    v31 = *(v3 + 32);
    v31(v8 + v30, v1, v2);
    v39 += 32;
    v29 = *v39;
    (*v39)(v8 + v27, v4, v37);
    v9 = v5;
    v10 = String._bridgeToObjectiveC()();

    v0[6] = sub_100867814;
    v0[7] = v8;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10027D328;
    v0[5] = &unk_1010C1CA8;
    v11 = _Block_copy(v0 + 2);

    v28 = objc_opt_self();
    v36 = [v28 actionWithTitle:v10 style:0 handler:v11];
    _Block_release(v11);

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v35(v1, v38, v2);
    v33(v4, v34, v37);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    v31(v12 + v30, v1, v2);
    v29(v12 + v27, v4, v37);
    v13 = v9;
    v14 = String._bridgeToObjectiveC()();

    v0[12] = sub_100867990;
    v0[13] = v12;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_10027D328;
    v0[11] = &unk_1010C1CF8;
    v15 = _Block_copy(v0 + 8);

    v16 = [v28 actionWithTitle:v14 style:0 handler:v15];
    _Block_release(v15);

    sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    dispatch thunk of Collection.distance(from:to:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v22 = v0[35];
    v21 = v0[36];
    v23 = v0[34];
    String.init(localized:table:bundle:locale:comment:)();
    v24 = String._bridgeToObjectiveC()();

    v25 = [objc_opt_self() alertControllerWithTitle:v24 message:0 preferredStyle:1];

    [v25 addAction:v36];
    [v25 addAction:v16];
    [v25 setPreferredAction:v16];
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v25, 1, 1, 0, 0);

    (*(v22 + 8))(v21, v23);

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_10084F828()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return _swift_task_switch(sub_10084F948, v3, v2);
}

uint64_t sub_10084F948()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[35];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10084FA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return _swift_task_switch(sub_10084FA34, 0, 0);
}

uint64_t sub_10084FA34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_10084FB34;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);

    return sub_1008501A8(v4, v3, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10084FB34()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_10086E3A4, 0, 0);
}

uint64_t sub_10084FC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v27 = a4;
  v28 = a2;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v29 = *(v8 + 64);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v26 - v14;
  v26 = &v26 - v14;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v17 = &v26 - v16;
  TaskPriority.init(rawValue:)();
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(v15, a3, v11);
  v20 = v10;
  v21 = v7;
  (*(v8 + 16))(v10, v27, v7);
  v22 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v23 = (v13 + *(v8 + 80) + v22) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = v19;
  (*(v12 + 32))(&v24[v22], v26, v11);
  (*(v8 + 32))(&v24[v23], v20, v21);
  sub_10035EDD0(0, 0, v17, v31, v24);

  return sub_1000095E8(v17, &unk_101181520, &qword_100EBCC60);
}

uint64_t sub_10084FF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return _swift_task_switch(sub_10084FF6C, 0, 0);
}

uint64_t sub_10084FF6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_10085006C;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);

    return sub_1008501A8(v4, v3, 1);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10085006C()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_100850180, 0, 0);
}

uint64_t sub_1008501A8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 232) = a2;
  *(v4 + 240) = v3;
  *(v4 + 588) = a3;
  *(v4 + 224) = a1;
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  *(v4 + 248) = swift_task_alloc();
  v5 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  *(v4 + 256) = v5;
  *(v4 + 264) = *(v5 - 8);
  *(v4 + 272) = swift_task_alloc();
  v6 = type metadata accessor for Track();
  *(v4 + 280) = v6;
  *(v4 + 288) = *(v6 - 8);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = sub_10010FC20(&unk_10118C0B0, &qword_100ECFA00);
  *(v4 + 328) = swift_task_alloc();
  v7 = type metadata accessor for IndexPath();
  *(v4 + 336) = v7;
  *(v4 + 344) = *(v7 - 8);
  *(v4 + 352) = swift_task_alloc();
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  *(v4 + 360) = swift_task_alloc();
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  *(v4 + 368) = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  *(v4 + 376) = swift_task_alloc();
  v8 = type metadata accessor for Playlist();
  *(v4 + 384) = v8;
  *(v4 + 392) = *(v8 - 8);
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 424) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 432) = v10;
  *(v4 + 440) = v9;

  return _swift_task_switch(sub_100850510, v10, v9);
}

id sub_100850510()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  v4 = v0[30];
  v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v4 + v5, v3, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[47];

    sub_1000095E8(v6, &unk_1011814D0, &qword_100EC12A0);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[51];
    v10 = v0[52];
    v11 = v0[48];
    v12 = v0[49];
    v13 = v0[46];
    v14 = v0[45];
    v15 = v0[30];
    (*(v12 + 32))(v10, v0[47], v11);
    type metadata accessor for MusicLibraryPlaylistEditViewModel();
    (*(v12 + 16))(v9, v10, v11);
    v16 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
    swift_beginAccess();
    sub_1000089F8(v15 + v16, v13, &qword_10119A808, &unk_100ED91D0);
    v17 = type metadata accessor for SocialProfile();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v0[56] = type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
    sub_100020674(&unk_10119F050, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    v0[57] = MusicLibraryPlaylistEditViewModel.__allocating_init<A>(_:entries:author:library:)();
    result = [objc_opt_self() sharedCloudController];
    if (result)
    {
      v18 = result;
      [result cloudAddToPlaylistBehavior];

      dispatch thunk of MusicLibraryPlaylistEditViewModel.addInsertedEntriesToLibrary.setter();
      v20 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.beginEditing() + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.beginEditing());
      v19 = swift_task_alloc();
      v0[58] = v19;
      *v19 = v0;
      v19[1] = sub_1008508D0;

      return v20();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1008508D0()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 440);
  v4 = *(v2 + 432);
  if (v0)
  {
    v5 = sub_10085230C;
  }

  else
  {
    v5 = sub_100850A0C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100850A0C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 320);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 224);
  (*(*(v0 + 344) + 16))(*(v0 + 352), *(v0 + 232), *(v0 + 336));
  *(v0 + 200) = &_swiftEmptySetSingleton;
  (*(v4 + 16))(v1, v5, v3);
  v6 = *(v2 + 36);
  *(v0 + 584) = v6;
  *(v0 + 480) = sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*(v1 + v6) == *(v0 + 208))
  {
LABEL_2:
    sub_1000095E8(*(v0 + 328), &unk_10118C0B0, &qword_100ECFA00);

    v51 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save() + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save());
    v7 = swift_task_alloc();
    *(v0 + 552) = v7;
    *v7 = v0;
    v7[1] = sub_10085207C;
    v8 = *(v0 + 400);

    return v51(v8);
  }

  v10 = v0 + 16;
  while (1)
  {
    v13 = *(v0 + 312);
    v50 = *(v0 + 304);
    v15 = *(v0 + 280);
    v14 = *(v0 + 288);
    v52 = *(v0 + 588);
    v16 = dispatch thunk of Collection.subscript.read();
    v17 = *(v14 + 16);
    *(v0 + 488) = v17;
    *(v0 + 496) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v49 = v17;
    (v17)(v13);
    v16(v10, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*(v14 + 32))(v50, v13, v15);
    swift_beginAccess();
    *(v0 + 504) = IndexPath.item.getter();
    swift_endAccess();
    if (v52 != 1)
    {
      break;
    }

    v18 = *(v0 + 200);
    v19 = Track.id.getter();
    v21 = v20;
    if (!*(v18 + 16) || (v22 = v19, Hasher.init(_seed:)(), String.hash(into:)(), v23 = Hasher._finalize()(), v24 = -1 << *(v18 + 32), v25 = v23 & ~v24, ((*(v18 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0))
    {
LABEL_17:
      v29 = *(v0 + 304);
      v31 = *(v0 + 280);
      v30 = *(v0 + 288);

      sub_10010FC20(&qword_101193E80, &unk_100ECF120);
      v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_100EBC6B0;
      v49(v33 + v32, v29, v31);
      MusicItemCollection.init(arrayLiteral:)();
      v34 = static MusicLibrary.shared.getter();
      *(v0 + 512) = v34;
      v35 = swift_task_alloc();
      *(v0 + 520) = v35;
      *v35 = v0;
      v35[1] = sub_1008510A8;
      v36 = *(v0 + 272);

      return Playlist.numberOfDuplicateTracks(_:library:)(v36, v34);
    }

    v26 = ~v24;
    while (1)
    {
      v27 = (*(v18 + 48) + 16 * v25);
      v28 = *v27 == v22 && v27[1] == v21;
      if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v25 = (v25 + 1) & v26;
      if (((*(v18 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v11 = *(v0 + 584);
    v12 = *(v0 + 328);
    (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));

    dispatch thunk of Collection.endIndex.getter();
    v10 = v0 + 16;
    if (*(v12 + v11) == *(v0 + 208))
    {
      goto LABEL_2;
    }
  }

  v37 = *(v0 + 504);
  if (v37 == -1)
  {
    v43 = *(v0 + 248);
    v44 = type metadata accessor for Playlist.Entry();
    (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
    goto LABEL_25;
  }

  result = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();
  if (v37 < 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v38 = result;
  v39 = *(v0 + 504);
  if (v39 >= *(result + 16))
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v40 = *(v0 + 248);
  v41 = type metadata accessor for Playlist.Entry();
  v42 = *(v41 - 8);
  (*(v42 + 16))(v40, v38 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v39, v41);

  (*(v42 + 56))(v40, 0, 1, v41);
LABEL_25:
  v53 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:) + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:));
  v45 = swift_task_alloc();
  *(v0 + 536) = v45;
  *v45 = v0;
  v45[1] = sub_100851878;
  v46 = *(v0 + 304);
  v47 = *(v0 + 280);
  v48 = *(v0 + 248);

  return v53(v46, v48, v47, &protocol witness table for Track);
}

uint64_t sub_1008510A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  v5 = *(*v1 + 256);
  *(*v1 + 528) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 440);
  v7 = *(v2 + 432);

  return _swift_task_switch(sub_100851250, v7, v6);
}

uint64_t sub_100851250(__n128 a1)
{
  if (*(v1 + 528) > 0)
  {
    (*(*(v1 + 288) + 8))(*(v1 + 304), *(v1 + 280), a1);
    v2 = *(v1 + 584);
    v3 = *(v1 + 328);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v3 + v2) == *(v1 + 208))
    {
LABEL_3:
      sub_1000095E8(*(v1 + 328), &unk_10118C0B0, &qword_100ECFA00);

      v48 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save() + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save());
      v4 = swift_task_alloc();
      *(v1 + 552) = v4;
      *v4 = v1;
      v4[1] = sub_10085207C;
      v5 = *(v1 + 400);

      return v48(v5);
    }

    v7 = v1 + 16;
    while (1)
    {
      v10 = *(v1 + 312);
      v47 = *(v1 + 304);
      v12 = *(v1 + 280);
      v11 = *(v1 + 288);
      v49 = *(v1 + 588);
      v13 = dispatch thunk of Collection.subscript.read();
      v14 = *(v11 + 16);
      *(v1 + 488) = v14;
      *(v1 + 496) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v46 = v14;
      (v14)(v10);
      v13(v7, 0);
      dispatch thunk of Collection.formIndex(after:)();
      (*(v11 + 32))(v47, v10, v12);
      swift_beginAccess();
      *(v1 + 504) = IndexPath.item.getter();
      swift_endAccess();
      if (v49 != 1)
      {
        break;
      }

      v15 = *(v1 + 200);
      v16 = Track.id.getter();
      v18 = v17;
      if (!*(v15 + 16) || (v19 = v16, Hasher.init(_seed:)(), String.hash(into:)(), v20 = Hasher._finalize()(), v21 = -1 << *(v15 + 32), v22 = v20 & ~v21, ((*(v15 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0))
      {
LABEL_18:
        v26 = *(v1 + 304);
        v28 = *(v1 + 280);
        v27 = *(v1 + 288);

        sub_10010FC20(&qword_101193E80, &unk_100ECF120);
        v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_100EBC6B0;
        v46(v30 + v29, v26, v28);
        MusicItemCollection.init(arrayLiteral:)();
        v31 = static MusicLibrary.shared.getter();
        *(v1 + 512) = v31;
        v32 = swift_task_alloc();
        *(v1 + 520) = v32;
        *v32 = v1;
        v32[1] = sub_1008510A8;
        v33 = *(v1 + 272);

        return Playlist.numberOfDuplicateTracks(_:library:)(v33, v31);
      }

      v23 = ~v21;
      while (1)
      {
        v24 = (*(v15 + 48) + 16 * v22);
        v25 = *v24 == v19 && v24[1] == v18;
        if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v15 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v8 = *(v1 + 584);
      v9 = *(v1 + 328);
      (*(*(v1 + 288) + 8))(*(v1 + 304), *(v1 + 280));

      dispatch thunk of Collection.endIndex.getter();
      v7 = v1 + 16;
      if (*(v9 + v8) == *(v1 + 208))
      {
        goto LABEL_3;
      }
    }
  }

  v34 = *(v1 + 504);
  if (v34 == -1)
  {
    v40 = *(v1 + 248);
    v41 = type metadata accessor for Playlist.Entry();
    (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
    goto LABEL_26;
  }

  result = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();
  if (v34 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v35 = result;
  v36 = *(v1 + 504);
  if (v36 >= *(result + 16))
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v37 = *(v1 + 248);
  v38 = type metadata accessor for Playlist.Entry();
  v39 = *(v38 - 8);
  (*(v39 + 16))(v37, v35 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v36, v38);

  (*(v39 + 56))(v37, 0, 1, v38);
LABEL_26:
  v50 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:) + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:));
  v42 = swift_task_alloc();
  *(v1 + 536) = v42;
  *v42 = v1;
  v42[1] = sub_100851878;
  v43 = *(v1 + 304);
  v44 = *(v1 + 280);
  v45 = *(v1 + 248);

  return v50(v43, v45, v44, &protocol witness table for Track);
}

uint64_t sub_100851878()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  v3 = *(v2 + 440);
  v4 = *(v2 + 432);
  if (v0)
  {
    v5 = sub_1008525BC;
  }

  else
  {
    v5 = sub_1008519B4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008519B4(__n128 a1)
{
  v2 = Track.id.getter();
  sub_1003B3B90((v1 + 176), v2, v3);

  swift_beginAccess();
  result = IndexPath.item.modify();
  if (__OFADD__(*v5, 1))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v6 = *(v1 + 304);
  v7 = *(v1 + 280);
  v8 = *(v1 + 288);
  v9 = *(v1 + 248);
  ++*v5;
  (result)(v1 + 48, 0);
  swift_endAccess();
  sub_1000095E8(v9, &qword_101191570, &qword_100ECE0B0);
  (*(v8 + 8))(v6, v7);
  v10 = *(v1 + 584);
  v11 = *(v1 + 328);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v11 + v10) == *(v1 + 208))
  {
LABEL_3:
    sub_1000095E8(*(v1 + 328), &unk_10118C0B0, &qword_100ECFA00);

    v55 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save() + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save());
    v12 = swift_task_alloc();
    *(v1 + 552) = v12;
    *v12 = v1;
    v12[1] = sub_10085207C;
    v13 = *(v1 + 400);

    return v55(v13);
  }

  v14 = v1 + 16;
  while (1)
  {
    v17 = *(v1 + 312);
    v54 = *(v1 + 304);
    v19 = *(v1 + 280);
    v18 = *(v1 + 288);
    v56 = *(v1 + 588);
    v20 = dispatch thunk of Collection.subscript.read();
    v21 = *(v18 + 16);
    *(v1 + 488) = v21;
    *(v1 + 496) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v53 = v21;
    (v21)(v17);
    v20(v14, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*(v18 + 32))(v54, v17, v19);
    swift_beginAccess();
    *(v1 + 504) = IndexPath.item.getter();
    swift_endAccess();
    if (v56 != 1)
    {
      break;
    }

    v22 = *(v1 + 200);
    v23 = Track.id.getter();
    v25 = v24;
    if (!*(v22 + 16) || (v26 = v23, Hasher.init(_seed:)(), String.hash(into:)(), v27 = Hasher._finalize()(), v28 = -1 << *(v22 + 32), v29 = v27 & ~v28, ((*(v22 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0))
    {
LABEL_18:
      v33 = *(v1 + 304);
      v35 = *(v1 + 280);
      v34 = *(v1 + 288);

      sub_10010FC20(&qword_101193E80, &unk_100ECF120);
      v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_100EBC6B0;
      v53(v37 + v36, v33, v35);
      MusicItemCollection.init(arrayLiteral:)();
      v38 = static MusicLibrary.shared.getter();
      *(v1 + 512) = v38;
      v39 = swift_task_alloc();
      *(v1 + 520) = v39;
      *v39 = v1;
      v39[1] = sub_1008510A8;
      v40 = *(v1 + 272);

      return Playlist.numberOfDuplicateTracks(_:library:)(v40, v38);
    }

    v30 = ~v28;
    while (1)
    {
      v31 = (*(v22 + 48) + 16 * v29);
      v32 = *v31 == v26 && v31[1] == v25;
      if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v29 = (v29 + 1) & v30;
      if (((*(v22 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v15 = *(v1 + 584);
    v16 = *(v1 + 328);
    (*(*(v1 + 288) + 8))(*(v1 + 304), *(v1 + 280));

    dispatch thunk of Collection.endIndex.getter();
    v14 = v1 + 16;
    if (*(v16 + v15) == *(v1 + 208))
    {
      goto LABEL_3;
    }
  }

  v41 = *(v1 + 504);
  if (v41 == -1)
  {
    v47 = *(v1 + 248);
    v48 = type metadata accessor for Playlist.Entry();
    (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
    goto LABEL_26;
  }

  result = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();
  if (v41 < 0)
  {
    goto LABEL_30;
  }

  v42 = result;
  v43 = *(v1 + 504);
  if (v43 >= *(result + 16))
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v44 = *(v1 + 248);
  v45 = type metadata accessor for Playlist.Entry();
  v46 = *(v45 - 8);
  (*(v46 + 16))(v44, v42 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v43, v45);

  (*(v46 + 56))(v44, 0, 1, v45);
LABEL_26:
  v57 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:) + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:));
  v49 = swift_task_alloc();
  *(v1 + 536) = v49;
  *v49 = v1;
  v49[1] = sub_100851878;
  v50 = *(v1 + 304);
  v51 = *(v1 + 280);
  v52 = *(v1 + 248);

  return v57(v50, v52, v51, &protocol witness table for Track);
}

uint64_t sub_10085207C()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = v2[54];
    v4 = v2[55];
    v5 = sub_100852E84;
  }

  else
  {
    v7 = v2[49];
    v6 = v2[50];
    v8 = v2[48];
    v9 = *(v7 + 8);
    v2[71] = v9;
    v2[72] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v8);
    v3 = v2[54];
    v4 = v2[55];
    v5 = sub_1008521B8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1008521B8()
{
  v1 = v0[71];
  v2 = v0[52];
  v3 = v0[48];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];

  v1(v2, v3);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10085230C()
{
  v19 = v0;

  v1 = v0[59];
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1012186C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[52];
  v8 = v0[48];
  v7 = v0[49];
  if (v5)
  {
    v17 = v0[48];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    v0[24] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v11 = String.init<A>(describing:)();
    v16 = v6;
    v13 = sub_1000105AC(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to insert tracks in playlist with error=%{public}s", v9, 0xCu);
    sub_10000959C(v10);

    (*(v7 + 8))(v16, v17);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1008525BC()
{
  v82 = v0;
  sub_1000095E8(*(v0 + 248), &qword_101191570, &qword_100ECE0B0);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 488);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v4 = *(v0 + 280);
  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_1012186C8);
  v1(v2, v3, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 544);
  if (v8)
  {
    v77 = *(v0 + 304);
    v76 = v7;
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v12 = *(v0 + 280);
    v13 = swift_slowAlloc();
    v81[0] = swift_slowAlloc();
    *v13 = 136446722;
    v14 = Track.title.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000105AC(v14, v16, v81);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = sub_1000105AC(v19, v20, v81);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2082;
    *(v0 + 216) = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v22 = String.init<A>(describing:)();
    v24 = sub_1000105AC(v22, v23, v81);

    *(v13 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v6, v76, "Failed to insert track=%{public}s into playlist at indexPath=%{public}s with error=%{public}s", v13, 0x20u);
    swift_arrayDestroy();

    v17(v77, v12);
  }

  else
  {
    v26 = *(v0 + 296);
    v25 = *(v0 + 304);
    v27 = *(v0 + 280);
    v28 = *(v0 + 288);

    v29 = *(v28 + 8);
    v29(v26, v27);
    v29(v25, v27);
  }

  v30 = *(v0 + 584);
  v31 = *(v0 + 328);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v31 + v30) == *(v0 + 208))
  {
LABEL_7:
    sub_1000095E8(*(v0 + 328), &unk_10118C0B0, &qword_100ECFA00);

    v78 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save() + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save());
    v32 = swift_task_alloc();
    *(v0 + 552) = v32;
    *v32 = v0;
    v32[1] = sub_10085207C;
    v33 = *(v0 + 400);

    return v78(v33);
  }

  v35 = v0 + 16;
  while (1)
  {
    v38 = *(v0 + 312);
    v75 = *(v0 + 304);
    v40 = *(v0 + 280);
    v39 = *(v0 + 288);
    v79 = *(v0 + 588);
    v41 = dispatch thunk of Collection.subscript.read();
    v42 = *(v39 + 16);
    *(v0 + 488) = v42;
    *(v0 + 496) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v74 = v42;
    (v42)(v38);
    v41(v35, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*(v39 + 32))(v75, v38, v40);
    swift_beginAccess();
    *(v0 + 504) = IndexPath.item.getter();
    swift_endAccess();
    if (v79 != 1)
    {
      break;
    }

    v43 = *(v0 + 200);
    v44 = Track.id.getter();
    v46 = v45;
    if (!*(v43 + 16) || (v47 = v44, Hasher.init(_seed:)(), String.hash(into:)(), v48 = Hasher._finalize()(), v49 = -1 << *(v43 + 32), v50 = v48 & ~v49, ((*(v43 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0))
    {
LABEL_22:
      v54 = *(v0 + 304);
      v56 = *(v0 + 280);
      v55 = *(v0 + 288);

      sub_10010FC20(&qword_101193E80, &unk_100ECF120);
      v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_100EBC6B0;
      v74(v58 + v57, v54, v56);
      MusicItemCollection.init(arrayLiteral:)();
      v59 = static MusicLibrary.shared.getter();
      *(v0 + 512) = v59;
      v60 = swift_task_alloc();
      *(v0 + 520) = v60;
      *v60 = v0;
      v60[1] = sub_1008510A8;
      v61 = *(v0 + 272);

      return Playlist.numberOfDuplicateTracks(_:library:)(v61, v59);
    }

    v51 = ~v49;
    while (1)
    {
      v52 = (*(v43 + 48) + 16 * v50);
      v53 = *v52 == v47 && v52[1] == v46;
      if (v53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v50 = (v50 + 1) & v51;
      if (((*(v43 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v36 = *(v0 + 584);
    v37 = *(v0 + 328);
    (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));

    dispatch thunk of Collection.endIndex.getter();
    v35 = v0 + 16;
    if (*(v37 + v36) == *(v0 + 208))
    {
      goto LABEL_7;
    }
  }

  v62 = *(v0 + 504);
  if (v62 == -1)
  {
    v68 = *(v0 + 248);
    v69 = type metadata accessor for Playlist.Entry();
    (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
    goto LABEL_30;
  }

  result = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();
  if (v62 < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v63 = result;
  v64 = *(v0 + 504);
  if (v64 >= *(result + 16))
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v65 = *(v0 + 248);
  v66 = type metadata accessor for Playlist.Entry();
  v67 = *(v66 - 8);
  (*(v67 + 16))(v65, v63 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v64, v66);

  (*(v67 + 56))(v65, 0, 1, v66);
LABEL_30:
  v80 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:) + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:));
  v70 = swift_task_alloc();
  *(v0 + 536) = v70;
  *v70 = v0;
  v70[1] = sub_100851878;
  v71 = *(v0 + 304);
  v72 = *(v0 + 280);
  v73 = *(v0 + 248);

  return v80(v71, v73, v72, &protocol witness table for Track);
}

uint64_t sub_100852E84()
{
  v22 = v0;
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];

  (*(v2 + 8))(v1, v3);
  v4 = v0[70];
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_1012186C8);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[52];
  v11 = v0[48];
  v10 = v0[49];
  if (v8)
  {
    v20 = v0[48];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136446210;
    v0[24] = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v14 = String.init<A>(describing:)();
    v19 = v9;
    v16 = sub_1000105AC(v14, v15, &v21);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to insert tracks in playlist with error=%{public}s", v12, 0xCu);
    sub_10000959C(v13);

    (*(v10 + 8))(v19, v20);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = v0[1];

  return v17();
}

id sub_100853154()
{
  v1 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___filterKeyCommand;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___filterKeyCommand);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___filterKeyCommand);
  }

  else
  {
    sub_100009F78(0, &qword_1011A46F0, UIKeyCommand_ptr);
    v4 = v0;
    v5 = sub_100853B54();
    v6 = static UIKeyCommand.findKeyCommand(affecting:)();

    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

double sub_1008531F0()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v2 = &v17 - v1;
  v3 = type metadata accessor for MusicPropertySource();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  (*(v4 + 16))(v8, &v0[v9], v3);
  (*(v4 + 104))(v6, enum case for MusicPropertySource.catalog(_:), v3);
  LOBYTE(v9) = static MusicPropertySource.== infix(_:_:)();
  v10 = *(v4 + 8);
  v10(v6, v3);
  v10(v8, v3);
  if (v9)
  {
    sub_100844A18();
    if (v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeHighlightLeavingSearch] == 1)
    {
      v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeHighlightLeavingSearch] = 0;
      sub_100842788();
    }
  }

  else
  {
    v12 = *&v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse];
    if ((v12 & 0x8000000000000000) == 0)
    {
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
      type metadata accessor for MainActor();
      sub_100869670(v12);
      sub_100869670(v12);
      v14 = v0;
      v15 = static MainActor.shared.getter();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = &protocol witness table for MainActor;
      v16[4] = v12;
      v16[5] = v14;
      sub_10086E3AC(0, 0, v2, &unk_100EE5238, v16);
      sub_1004E6028(v12);
    }
  }

  return result;
}

uint64_t sub_1008534B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100853550, v7, v6);
}

uint64_t sub_100853550()
{
  v1 = swift_allocObject();
  *(v0 + 56) = v1;
  swift_unknownObjectWeakInit();
  v4 = (&async function pointer to dispatch thunk of MusicAutoupdatingResponse.update(waitForReload:_:) + async function pointer to dispatch thunk of MusicAutoupdatingResponse.update(waitForReload:_:));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100853640;

  return v4(1, &unk_100EE5248, v1);
}

uint64_t sub_100853640()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1008537E0;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_10085375C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10085375C()
{
  v1 = *(v0 + 24);

  if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeHighlightLeavingSearch) == 1)
  {
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeHighlightLeavingSearch) = 0;
    sub_100842788();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1008537E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100853850(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_10010FC20(&unk_1011A46C0, &qword_100EE4B38);
  v2[7] = swift_task_alloc();
  v3 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100853988, v5, v4);
}

uint64_t sub_100853988()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  if (Strong)
  {
    v5 = Strong;
    sub_1008260A0(v0[7]);

    if ((*(v3 + 48))(v4, 1, v2) != 1)
    {
      v7 = v0[9];
      v6 = v0[10];
      v9 = v0[7];
      v8 = v0[8];
      (*(v7 + 8))(v0[5], v8);
      v10 = *(v7 + 32);
      v10(v6, v9, v8);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v3 + 56))(v0[7], 1, 1, v0[8]);
  }

  v11 = v0[9];
  v12 = v0[7];
  v13 = v0[8];
  v10 = *(v11 + 32);
  v10(v0[10], v0[5], v13);
  if ((*(v11 + 48))(v12, 1, v13) != 1)
  {
    sub_1000095E8(v0[7], &unk_1011A46C0, &qword_100EE4B38);
  }

LABEL_7:
  v10(v0[5], v0[10], v0[8]);

  v14 = v0[1];

  return v14();
}

id sub_100853B74(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100853BD8(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v2 = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  [v2 setSearchResultsUpdater:a1];
  v3 = [v2 searchBar];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  [v3 setPlaceholder:v4];

  v5 = [v2 searchBar];
  [v5 setReturnKeyType:9];

  [v2 setObscuresBackgroundDuringPresentation:0];
  v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v6, v10, &unk_1011926C0, &unk_100ECF870);
  if (v10[8])
  {
    sub_1000095E8(v10, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v10, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      v8 = [Strong navigationItem];

      if (v8)
      {
        [v8 setHidesSearchBarWhenScrolling:1];
        [v8 setPreferredSearchBarPlacement:2];
      }
    }
  }

  return v2;
}

uint64_t sub_100853E70(uint64_t result)
{
  v2 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching;
  if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) != (result & 1))
  {
    if (!*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching))
    {
      goto LABEL_11;
    }

    sub_1008395B0();
    v3 = (v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID);
    v4 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID + 8);
    *v3 = 0;
    v3[1] = 0;
    if (v4)
    {
      sub_100842788();
    }

    v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v5, v15, &unk_1011926C0, &unk_100ECF870);
    if (v15[8])
    {
      sub_1000095E8(v15, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v15, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v7 = [Strong contentScrollViewForEdge:1];

        if (v7)
        {
          [v7 setKeyboardDismissMode:1];
        }
      }
    }

    if ((*(v1 + v2) & 1) == 0)
    {
LABEL_11:
      v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v1 + v8, v13, &unk_1011926C0, &unk_100ECF870);
      if (v13[8])
      {
        sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
      }

      else
      {
        v9 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
        if (v9)
        {
          v10 = v9[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hideFloatingArtwork];
          v9[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hideFloatingArtwork] = 0;
          if (v10)
          {
            [*&v9[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer] setAlpha:1.0];
          }
        }
      }
    }

    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload) = 1;
    v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v11, v14, &unk_1011926C0, &unk_100ECF870);
    if (v14[8])
    {
      sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v12 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
      if (v12)
      {
        v12[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload] = 1;
      }
    }

    sub_100841720();
    return sub_100844A18();
  }

  return result;
}

uint64_t sub_10085411C()
{
  v48 = type metadata accessor for Playlist.Variant();
  v46 = *(v48 - 8);
  __chkstk_darwin();
  v42 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10010FC20(&unk_1011A4670, &qword_100EBF808);
  __chkstk_darwin();
  v47 = &v41 - v2;
  sub_10010FC20(&unk_10119EF50, &unk_100EDDF70);
  __chkstk_darwin();
  v43 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v41 - v4;
  __chkstk_darwin();
  v51 = &v41 - v5;
  v6 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v49 = *(v6 - 8);
  __chkstk_darwin();
  v44 = &v41 - v7;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v9 = &v41 - v8;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v11 = &v41 - v10;
  v12 = type metadata accessor for Playlist();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v0 + v16, v11, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v20 = *(v13 + 32);
    v41 = v12;
    v20(v15, v11, v12);
    v21 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
    swift_beginAccess();
    sub_1000089F8(v0 + v21, v9, &qword_10119A808, &unk_100ED91D0);
    v22 = v49;
    if ((*(v49 + 48))(v9, 1, v6))
    {
      sub_1000095E8(v9, &qword_10119A808, &unk_100ED91D0);
      v23 = v50;
      v24 = v51;
    }

    else
    {
      v29 = v44;
      (*(v22 + 16))(v44, v9, v6);
      sub_1000095E8(v9, &qword_10119A808, &unk_100ED91D0);
      sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      v30 = dispatch thunk of Collection.distance(from:to:)();
      (*(v22 + 8))(v29, v6);
      v23 = v50;
      v24 = v51;
      if (v30 > 0)
      {
        goto LABEL_11;
      }
    }

    v25 = sub_100853B54();
    v26 = [v25 isActive];

    if (!v26)
    {
      (*(v13 + 8))(v15, v41);
      goto LABEL_8;
    }

LABEL_11:
    Playlist.variant.getter();
    v31 = v46;
    v32 = v48;
    (*(v46 + 104))(v23, enum case for Playlist.Variant.genius(_:), v48);
    (*(v31 + 56))(v23, 0, 1, v32);
    v33 = *(v45 + 48);
    v34 = v47;
    sub_1000089F8(v24, v47, &unk_10119EF50, &unk_100EDDF70);
    v49 = v33;
    sub_1000089F8(v23, v34 + v33, &unk_10119EF50, &unk_100EDDF70);
    v35 = *(v31 + 48);
    if (v35(v34, 1, v32) == 1)
    {
      sub_1000095E8(v23, &unk_10119EF50, &unk_100EDDF70);
      sub_1000095E8(v51, &unk_10119EF50, &unk_100EDDF70);
      (*(v13 + 8))(v15, v41);
      if (v35(v34 + v49, 1, v32) == 1)
      {
        v17 = &unk_10119EF50;
        v18 = &unk_100EDDF70;
        v19 = v34;
        goto LABEL_3;
      }
    }

    else
    {
      v45 = v15;
      v36 = v43;
      sub_1000089F8(v34, v43, &unk_10119EF50, &unk_100EDDF70);
      v37 = v49;
      if (v35(v34 + v49, 1, v32) != 1)
      {
        v38 = v42;
        (*(v31 + 32))(v42, v34 + v37, v32);
        sub_100866F00(&unk_1011A4680, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        v39 = dispatch thunk of static Equatable.== infix(_:_:)();
        v40 = *(v31 + 8);
        v40(v38, v32);
        sub_1000095E8(v50, &unk_10119EF50, &unk_100EDDF70);
        sub_1000095E8(v51, &unk_10119EF50, &unk_100EDDF70);
        (*(v13 + 8))(v45, v41);
        v40(v36, v32);
        sub_1000095E8(v34, &unk_10119EF50, &unk_100EDDF70);
        v27 = v39 ^ 1;
        return v27 & 1;
      }

      sub_1000095E8(v50, &unk_10119EF50, &unk_100EDDF70);
      sub_1000095E8(v51, &unk_10119EF50, &unk_100EDDF70);
      (*(v13 + 8))(v45, v41);
      (*(v31 + 8))(v36, v32);
    }

    sub_1000095E8(v34, &unk_1011A4670, &qword_100EBF808);
    v27 = 1;
    return v27 & 1;
  }

  v17 = &unk_1011814D0;
  v18 = &qword_100EC12A0;
  v19 = v11;
LABEL_3:
  sub_1000095E8(v19, v17, v18);
LABEL_8:
  v27 = 0;
  return v27 & 1;
}

void sub_1008549A8(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearchEnabled) != (a1 & 1))
  {
    if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearchEnabled))
    {
      v2 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v1 + v2, v13, &unk_1011926C0, &unk_100ECF870);
      if (v14)
      {
        sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
        if (Strong)
        {
          v5 = sub_100853154();
          [Strong addKeyCommand:v5];
        }
      }

      sub_1000089F8(v1 + v2, v13, &unk_1011926C0, &unk_100ECF870);
      if ((v14 & 1) == 0)
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
        if (v6)
        {
          v7 = [v6 navigationItem];

          v8 = sub_100853B54();
          [v7 setSearchController:v8];
        }

        return;
      }

LABEL_15:
      sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
      return;
    }

    v3 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v3, v13, &unk_1011926C0, &unk_100ECF870);
    if (v14)
    {
      sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
      if (v9)
      {
        v10 = sub_100853154();
        [v9 removeKeyCommand:v10];
      }
    }

    sub_1000089F8(v1 + v3, v13, &unk_1011926C0, &unk_100ECF870);
    if (v14)
    {
      goto LABEL_15;
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
    if (v11)
    {
      v12 = [v11 navigationItem];

      [v12 setSearchController:0];
    }
  }
}

uint64_t sub_100854C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v4 = &v15 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v15 - v11;
  v13 = type metadata accessor for Playlist.Entry();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1000089F8(a1, v4, &unk_10118BCE0, &qword_100EC6450);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &unk_10118BCE0, &qword_100EC6450);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_10085939C(v10);
    (*(v6 + 8))(v8, v5);
    sub_1000095E8(v12, &qword_101191570, &qword_100ECE0B0);
    sub_10003D17C(v10, v12, &qword_101191570, &qword_100ECE0B0);
  }

  sub_100854F30(v12, v16);
  return sub_1000095E8(v12, &qword_101191570, &qword_100ECE0B0);
}

void sub_100854F30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a1;
  v30 = sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  __chkstk_darwin();
  v5 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v31 = *(v5 - 8);
  __chkstk_darwin();
  v23 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v33 = v19 - v7;
  __chkstk_darwin();
  v29 = v19 - v8;
  v36 = type metadata accessor for Playlist();
  v28 = *(v36 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v32 = v19 - v9;
  __chkstk_darwin();
  v21 = v19 - v10;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v22 = v19 - v11;
  v25 = type metadata accessor for Playlist.Entry.InternalItem();
  v24 = *(v25 - 8);
  __chkstk_darwin();
  v26 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v27 = v19 - v13;
  v35 = type metadata accessor for Playlist.Entry();
  v34 = *(v35 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v37 = v19 - v14;
  type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
  __chkstk_darwin();
  v15 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  v39 = v3;
  sub_1000089F8(v3 + v15, v40, &unk_1011926C0, &unk_100ECF870);
  if (v40[8])
  {
    sub_1000095E8(v40, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v40, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      v19[1] = v5;
      v20 = Strong;
      sub_10085678C(v38, a2);
      v18 = type metadata accessor for PlaybackIntentDescriptor(0);
      (*(*(v18 - 8) + 56))(a2, 0, 1, v18);

      return;
    }
  }

  v17 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
}

uint64_t sub_1008564D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v4 = &v15 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v15 - v11;
  v13 = type metadata accessor for Playlist.Entry();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1000089F8(a1, v4, &unk_10118BCE0, &qword_100EC6450);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &unk_10118BCE0, &qword_100EC6450);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_10085939C(v10);
    (*(v6 + 8))(v8, v5);
    sub_1000095E8(v12, &qword_101191570, &qword_100ECE0B0);
    sub_10003D17C(v10, v12, &qword_101191570, &qword_100ECE0B0);
  }

  sub_10085678C(v12, v15);
  return sub_1000095E8(v12, &qword_101191570, &qword_100ECE0B0);
}

uint64_t sub_10085678C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a1;
  v143 = a2;
  v141 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v142 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v151 = *(v152 - 8);
  __chkstk_darwin();
  v149 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011A46C0, &qword_100EE4B38);
  __chkstk_darwin();
  v138 = &v126 - v5;
  v140 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  v144 = *(v140 - 8);
  __chkstk_darwin();
  v139 = &v126 - v6;
  sub_10010FC20(&unk_101188910, &qword_100EBE7A0);
  __chkstk_darwin();
  v147 = &v126 - v7;
  v156 = type metadata accessor for MusicPropertySource();
  v159 = *(v156 - 8);
  __chkstk_darwin();
  v158 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v148 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v165 = &v126 - v10;
  __chkstk_darwin();
  v146 = &v126 - v11;
  __chkstk_darwin();
  v134 = &v126 - v12;
  __chkstk_darwin();
  v150 = &v126 - v13;
  v164 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v163 = *(v164 - 8);
  __chkstk_darwin();
  v155 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v154 = &v126 - v15;
  __chkstk_darwin();
  v162 = &v126 - v16;
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v157 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v136 = &v126 - v18;
  __chkstk_darwin();
  v145 = &v126 - v19;
  __chkstk_darwin();
  v133 = &v126 - v20;
  __chkstk_darwin();
  v166 = (&v126 - v21);
  v169 = type metadata accessor for Playlist.Entry();
  v171 = *(v169 - 8);
  __chkstk_darwin();
  v161 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v167 = *(v168 - 8);
  __chkstk_darwin();
  v132 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v135 = &v126 - v24;
  __chkstk_darwin();
  v153 = &v126 - v25;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v137 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = &v126 - v27;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v30 = &v126 - v29;
  v31 = type metadata accessor for Playlist();
  v32 = *(v31 - 8);
  __chkstk_darwin();
  v34 = (&v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(&v2[v35], v30, &unk_1011814D0, &qword_100EC12A0);
  v178 = v32;
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_1000095E8(v30, &unk_1011814D0, &qword_100EC12A0);
    type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
    sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError, &unk_100EE566C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  (*(v178 + 32))(v34, v30, v31);
  v37 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
  v131 = v2;
  swift_beginAccess();
  sub_1000089F8(&v2[v37], v28, &qword_10119A808, &unk_100ED91D0);
  v38 = v167;
  v39 = *(v167 + 48);
  v40 = v168;
  v129 = v167 + 48;
  v128 = v39;
  if (v39(v28, 1, v168))
  {
    sub_1000095E8(v28, &qword_10119A808, &unk_100ED91D0);
    v41 = v170;
    v42 = v166;
    goto LABEL_7;
  }

  v43 = v153;
  (*(v38 + 16))(v153, v28, v40);
  sub_1000095E8(v28, &qword_10119A808, &unk_100ED91D0);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v38 + 8))(v43, v40);
  v41 = v170;
  v42 = v166;
  if (v175 != v172)
  {
LABEL_7:
    v46 = v31;
    sub_1000089F8(v41, v42, &qword_101191570, &qword_100ECE0B0);
    v47 = v171;
    v48 = *(v171 + 48);
    v49 = v169;
    v153 = (v171 + 48);
    v166 = v48;
    if (v48(v42, 1, v169) == 1)
    {
      sub_1000095E8(v42, &qword_101191570, &qword_100ECE0B0);
      if (qword_10117F5F8 != -1)
      {
        swift_once();
      }

      v50 = v46;
      v51 = *Player.state<A>(for:)(v34, v46, &protocol witness table for Playlist);
      v52 = v155;
      (*(v51 + 256))();

      v53 = v163;
      v54 = v162;
      v55 = v164;
      (*(v163 + 104))(v162, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v164);
      v56 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
      v57 = v34;
      v58 = *(v53 + 8);
      v58(v54, v55);
      if ((v56 & 1) == 0)
      {
        v171 = type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
        sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError, &unk_100EE566C);
        v160 = swift_allocError();
        v82 = v55;
        v84 = v83;
        v85 = *(sub_10010FC20(&unk_1011A46D0, &qword_100EE4B48) + 48);
        v127 = v50;
        v86 = v178;
        (*(v178 + 16))(v84, v34, v50);
        (*(v53 + 16))(v84 + v85, v52, v82);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v58(v52, v82);
        return (*(v86 + 8))(v34, v127);
      }

      v59 = v165;
      v58(v52, v55);
      v31 = v50;
      v60 = v131;
      v61 = v169;
    }

    else
    {
      v130 = v34;
      v62 = v161;
      (*(v47 + 32))(v161, v42, v49);
      if (qword_10117F5F8 != -1)
      {
        swift_once();
      }

      v63 = Player.state<A>(for:)(v62, v49, &protocol witness table for Playlist.Entry);
      v64 = v162;
      (*(*v63 + 256))();
      v65 = v163;
      v66 = v154;
      v67 = v164;
      (*(v163 + 104))(v154, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v164);
      v68 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
      v69 = *(v65 + 8);
      v69(v66, v67);
      v69(v64, v67);
      v31 = v46;
      v59 = v165;
      if ((v68 & 1) == 0)
      {
        type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
        sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError, &unk_100EE566C);
        swift_allocError();
        v88 = v87;
        v89 = *(sub_10010FC20(&qword_1011A46A8, &qword_100EE4B08) + 48);
        v90 = v171;
        v91 = v161;
        (*(v171 + 16))(v88, v161, v49);
        *(v88 + v89) = v63;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v90 + 8))(v91, v49);
        goto LABEL_44;
      }

      (*(v171 + 8))(v161, v49);

      v57 = v130;
      v61 = v49;
      v60 = v131;
    }

    v70 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    v71 = v159;
    v72 = &v60[v70];
    v73 = v158;
    v74 = v156;
    (*(v159 + 16))(v158, v72, v156);
    v75 = (*(v71 + 88))(v73, v74);
    v76 = v157;
    if (v75 == enum case for MusicPropertySource.catalog(_:))
    {
      v77 = v60[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching] == 1;
      v130 = v57;
      if (!v77)
      {
        goto LABEL_30;
      }

      v78 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
      swift_beginAccess();
      v79 = &v60[v78];
      v80 = v137;
      sub_1000089F8(v79, v137, &qword_10119A808, &unk_100ED91D0);
      v81 = v168;
      if (v128(v80, 1, v168) == 1)
      {
        sub_1000095E8(v80, &qword_10119A808, &unk_100ED91D0);
LABEL_29:
        v76 = v157;
LABEL_30:
        v176 = v31;
        v177 = &protocol witness table for Playlist;
        v97 = sub_10001C8B8(&v175);
        (*(v178 + 16))(v97, v57, v31);
        v98 = v145;
        sub_1000089F8(v170, v145, &qword_101191570, &qword_100ECE0B0);
        if (v166(v98, 1, v61) == 1)
        {
          sub_1000095E8(v98, &qword_101191570, &qword_100ECE0B0);
          v172 = 0u;
          v173 = 0u;
          v174 = 0;
        }

        else
        {
          *(&v173 + 1) = v61;
          v174 = &protocol witness table for Playlist.Entry;
          v99 = sub_10001C8B8(&v172);
          (*(v171 + 32))(v99, v98, v61);
        }

        v100 = v151;
        v101 = v150;
        v102 = enum case for MusicPlaybackSource.catalog(_:);
        v103 = type metadata accessor for MusicPlaybackSource();
        v104 = *(v103 - 8);
        v105 = v147;
        (*(v104 + 104))(v147, v102, v103);
        (*(v104 + 56))(v105, 0, 1, v103);
        v106 = v146;
        MusicPlaybackIntentDescriptor.init(container:startingAt:playbackSource:)();
        v107 = v152;
LABEL_34:
        (*(v100 + 56))(v106, 0, 1, v107);
        sub_10003D17C(v106, v101, &unk_10118CDB0, &unk_100EC0360);
        v108 = v148;
        sub_1000089F8(v101, v148, &unk_10118CDB0, &unk_100EC0360);
        if ((*(v100 + 48))(v108, 1, v107) == 1)
        {
          sub_1000095E8(v108, &unk_10118CDB0, &unk_100EC0360);
          type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
          sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError, &unk_100EE566C);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v109 = v101;
        }

        else
        {
          v110 = v149;
          (*(v100 + 32))(v149, v108, v107);
          v111 = v142;
          (*(v100 + 16))(v142, v110, v107);
          swift_storeEnumTagMultiPayload();
          sub_1000089F8(v170, v76, &qword_101191570, &qword_100ECE0B0);
          v112 = v169;
          if (v166(v76, 1, v169) == 1)
          {
            sub_1000095E8(v76, &qword_101191570, &qword_100ECE0B0);
            v176 = v31;
            v177 = &protocol witness table for Playlist;
            v113 = sub_10001C8B8(&v175);
            (*(v178 + 16))(v113, v130, v31);
          }

          else
          {
            *(&v173 + 1) = v112;
            v174 = &protocol witness table for Playlist.Entry;
            v114 = sub_10001C8B8(&v172);
            (*(v171 + 32))(v114, v76, v112);
            sub_100059A8C(&v172, &v175);
          }

          v115 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
          v116 = v131;
          swift_beginAccess();
          sub_1000089F8(v116 + v115, &v172, &unk_1011926C0, &unk_100ECF870);
          if (BYTE8(v172))
          {
            sub_1000095E8(&v172, &unk_1011926C0, &unk_100ECF870);
            Strong = 0;
          }

          else
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            sub_1000095E8(&v172, &unk_1011926C0, &unk_100ECF870);
          }

          *(&v173 + 1) = type metadata accessor for PlaylistDetailDataSource(0);
          v174 = &off_1010C1940;
          *&v172 = v116;
          v118 = v116;
          PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v111, &v175, 3, 0, 0, 1, 0, 1, v143, Strong, &v172);
          (*(v100 + 8))(v149, v107);
          v109 = v101;
        }

        sub_1000095E8(v109, &unk_10118CDB0, &unk_100EC0360);
        goto LABEL_44;
      }

      v95 = v167;
      v96 = v135;
      (*(v167 + 32))(v135, v80, v81);
      sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v175 == v172)
      {
        (*(v95 + 8))(v96, v81);
        goto LABEL_29;
      }

      (*(v95 + 16))(v132, v96, v81);
      sub_1000089F8(v170, v133, &qword_101191570, &qword_100ECE0B0);
      sub_100020674(&unk_10119F050, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
      v106 = v134;
      v123 = v160;
      MusicPlaybackIntentDescriptor.init<A, B>(items:startingAt:)();
      if (!v123)
      {
        (*(v95 + 8))(v96, v81);
        v107 = v152;
        v100 = v151;
        v101 = v150;
        v76 = v157;
        goto LABEL_34;
      }

      (*(v95 + 8))(v96, v81);
LABEL_50:
      v44 = *(v178 + 8);
      v45 = v57;
      return v44(v45, v31);
    }

    if (v75 != enum case for MusicPropertySource.library(_:))
    {
      type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
      sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError, &unk_100EE566C);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v178 + 8))(v57, v31);
      return (*(v159 + 8))(v158, v74);
    }

    v92 = v138;
    sub_1008260A0(v138);
    v93 = v144;
    v94 = v140;
    if ((*(v144 + 48))(v92, 1, v140) == 1)
    {
      sub_1000095E8(v92, &unk_1011A46C0, &qword_100EE4B38);
      type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
      sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError, &unk_100EE566C);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_50;
    }

    v130 = v57;
    v119 = v139;
    (*(v93 + 32))(v139, v92, v94);
    MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
    v120 = v144;
    v176 = v94;
    v177 = sub_100020674(&qword_1011831B8, &qword_10118A3B0, &qword_100EE4B40, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v121 = sub_10001C8B8(&v175);
    (*(v120 + 16))(v121, v119, v94);
    v122 = v136;
    sub_1000089F8(v170, v136, &qword_101191570, &qword_100ECE0B0);
    if (v166(v122, 1, v61) == 1)
    {
      sub_1000095E8(v122, &qword_101191570, &qword_100ECE0B0);
      v172 = 0u;
      v173 = 0u;
      v174 = 0;
    }

    else
    {
      *(&v173 + 1) = v61;
      v174 = &protocol witness table for Playlist.Entry;
      v124 = sub_10001C8B8(&v172);
      (*(v171 + 32))(v124, v122, v61);
    }

    v125 = v160;
    v107 = v152;
    v100 = v151;
    v101 = v150;
    MusicPlaybackIntentDescriptor.init(request:startingAt:)();
    if (!v125)
    {
      (*(v120 + 8))(v139, v94);
      v106 = v59;
      goto LABEL_34;
    }

    (*(v120 + 8))(v139, v94);
LABEL_44:
    v44 = *(v178 + 8);
    v45 = v130;
    return v44(v45, v31);
  }

  type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
  sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError, &unk_100EE566C);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v44 = *(v178 + 8);
  v45 = v34;
  return v44(v45, v31);
}

void sub_100858450(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v82[1] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v84 = v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v98 = *(v102 - 8);
  __chkstk_darwin();
  v83 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10010FC20(&unk_1011A4690, &unk_100EE4AF8);
  v90 = *(v91 - 8);
  __chkstk_darwin();
  v95 = v82 - v5;
  v101 = type metadata accessor for MusicPropertySource();
  v100 = *(v101 - 8);
  __chkstk_darwin();
  v99 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v92 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = v82 - v8;
  __chkstk_darwin();
  v94 = v82 - v9;
  __chkstk_darwin();
  v103 = v82 - v10;
  v104 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v11 = *(v104 - 1);
  __chkstk_darwin();
  v13 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = v82 - v14;
  v16 = type metadata accessor for Playlist.Entry.InternalItem();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v87 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = v82 - v19;
  __chkstk_darwin();
  v21 = v82 - v20;
  v105 = a1;
  Playlist.Entry.internalItem.getter();
  v22 = Playlist.Entry.InternalItem.id.getter();
  v24 = v23;
  v25 = *(v17 + 8);
  v96 = v16;
  v88 = v17 + 8;
  v86 = v25;
  v25(v21, v16);
  v26 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playerStateCache;
  v27 = v113;
  swift_beginAccess();
  v28 = *&v27[v26];
  if (*(v28 + 16) && (, v29 = sub_100019C10(v22, v24), v31 = v30, , (v31 & 1) != 0))
  {
    v32 = *(*(v28 + 56) + 8 * v29);

    v34 = v105;
  }

  else
  {

    v34 = v105;
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Playlist.Entry();
    v33 = Player.state<A>(for:)(v34, v35, &protocol witness table for Playlist.Entry);
    v32 = v33;
  }

  (*(*v32 + 256))(v33);
  v36 = v104;
  (*(v11 + 104))(v13, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v104);
  v37 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v38 = *(v11 + 8);
  v38(v13, v36);
  v38(v15, v36);
  if ((v37 & 1) == 0)
  {
    type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
    sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError, &unk_100EE566C);
    swift_allocError();
    v50 = v34;
    v52 = v51;
    v53 = *(sub_10010FC20(&qword_1011A46A8, &qword_100EE4B08) + 48);
    v54 = type metadata accessor for Playlist.Entry();
    (*(*(v54 - 8) + 16))(v52, v50, v54);
    *(v52 + v53) = v32;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v39 = v98;
  v40 = v103;
  v104 = *(v98 + 56);
  (v104)(v103, 1, 1, v102);
  v41 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  v42 = v113;
  swift_beginAccess();
  v43 = v100;
  v44 = &v42[v41];
  v45 = v99;
  v46 = v101;
  (*(v100 + 16))(v99, v44, v101);
  v47 = (*(v43 + 88))(v45, v46);
  if (v47 == enum case for MusicPropertySource.catalog(_:))
  {
    Playlist.Entry.internalItem.getter();
    sub_100866F00(&qword_1011A46B8, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
    v48 = v94;
    v49 = v97;
    MusicPlaybackIntentDescriptor.init<A>(item:)();
    sub_1000095E8(v40, &unk_10118CDB0, &unk_100EC0360);
    if (v49)
    {

      return;
    }

    v57 = v48;
    goto LABEL_23;
  }

  if (v47 != enum case for MusicPropertySource.library(_:))
  {
    type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
    sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError, &unk_100EE566C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1000095E8(v40, &unk_10118CDB0, &unk_100EC0360);
    (*(v100 + 8))(v99, v101);
    return;
  }

  type metadata accessor for Track();
  MusicLibraryRequest.init()();
  v55 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  v56 = v113;
  swift_beginAccess();
  sub_1000089F8(&v56[v55], &v109, &unk_1011926C0, &unk_100ECF870);
  if (v110)
  {
    sub_1000095E8(&v109, &unk_1011926C0, &unk_100ECF870);
LABEL_19:
    type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    goto LABEL_20;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v109, &unk_1011926C0, &unk_100ECF870);
  if (!Strong)
  {
    goto LABEL_19;
  }

  v59 = [Strong traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

LABEL_20:
  v60 = v91;
  v61 = v95;
  MusicLibraryRequest.library.setter();
  MusicLibraryRequest.includeNonLibraryAddedContent.setter();
  swift_getKeyPath();
  v62 = v87;
  v63 = v60;
  Playlist.Entry.internalItem.getter();
  v64 = Playlist.Entry.InternalItem.id.getter();
  v66 = v65;
  v86(v62, v96);
  v109 = v64;
  v110 = v66;
  MusicLibraryRequest.filter<A>(matching:equalTo:)();

  v111 = v63;
  v112 = sub_100020674(&qword_1011A46B0, &unk_1011A4690, &unk_100EE4AF8, &protocol conformance descriptor for MusicLibraryRequest<A>);
  v67 = sub_10001C8B8(&v109);
  v68 = v90;
  (*(v90 + 16))(v67, v61, v63);
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v57 = v89;
  v69 = v97;
  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  if (v69)
  {

    (*(v68 + 8))(v61, v63);
    sub_1000095E8(v103, &unk_10118CDB0, &unk_100EC0360);
    return;
  }

  (*(v68 + 8))(v61, v63);
  sub_1000095E8(v103, &unk_10118CDB0, &unk_100EC0360);
  v39 = v98;
LABEL_23:
  v70 = v102;
  (v104)(v57, 0, 1, v102);
  v71 = v57;
  v72 = v103;
  sub_10003D17C(v71, v103, &unk_10118CDB0, &unk_100EC0360);
  v73 = v92;
  sub_1000089F8(v72, v92, &unk_10118CDB0, &unk_100EC0360);
  if ((*(v39 + 48))(v73, 1, v70) == 1)
  {
    sub_1000095E8(v73, &unk_10118CDB0, &unk_100EC0360);
    type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
    sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError, &unk_100EE566C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1000095E8(v72, &unk_10118CDB0, &unk_100EC0360);
  }

  else
  {
    v74 = v83;
    (*(v39 + 32))(v83, v73, v70);
    v75 = v84;
    (*(v39 + 16))(v84, v74, v70);
    swift_storeEnumTagMultiPayload();
    v76 = type metadata accessor for Playlist.Entry();
    v111 = v76;
    v112 = &protocol witness table for Playlist.Entry;
    v77 = sub_10001C8B8(&v109);
    (*(*(v76 - 8) + 16))(v77, v105, v76);
    v78 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    v79 = v113;
    swift_beginAccess();
    sub_1000089F8(&v79[v78], &v106, &unk_1011926C0, &unk_100ECF870);
    if (BYTE8(v106))
    {
      sub_1000095E8(&v106, &unk_1011926C0, &unk_100ECF870);
      v80 = 0;
    }

    else
    {
      v80 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v106, &unk_1011926C0, &unk_100ECF870);
    }

    *(&v107 + 1) = type metadata accessor for PlaylistDetailDataSource(0);
    v108 = &off_1010C1940;
    *&v106 = v113;
    v81 = v113;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v75, &v109, 3, 0, 0, 1, 0, 1, v85, v80, &v106);

    (*(v39 + 8))(v74, v70);
    sub_1000095E8(v72, &unk_10118CDB0, &unk_100EC0360);
  }
}

uint64_t sub_10085939C@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v19 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v9 + 32;
    while (*(v12 + v11) != 2)
    {
      if (v10 == ++v11)
      {
        goto LABEL_5;
      }
    }

    v16 = v1;
    if (IndexPath.section.getter() == v11)
    {
      v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
      swift_beginAccess();
      sub_1000089F8(v16 + v17, v4, &qword_10119A808, &unk_100ED91D0);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_1000095E8(v4, &qword_10119A808, &unk_100ED91D0);
      }

      else
      {
        (*(v6 + 32))(v8, v4, v5);
        v18 = IndexPath.item.getter();
        sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (v18 < dispatch thunk of Collection.distance(from:to:)())
        {
          IndexPath.item.getter();
          MusicItemCollection.subscript.getter();
          (*(v6 + 8))(v8, v5);
          v13 = 0;
          goto LABEL_7;
        }

        (*(v6 + 8))(v8, v5);
      }
    }
  }

  else
  {
LABEL_5:
    IndexPath.section.getter();
  }

  v13 = 1;
LABEL_7:
  v14 = type metadata accessor for Playlist.Entry();
  return (*(*(v14 - 8) + 56))(a1, v13, 1, v14);
}

uint64_t sub_1008596BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v5 = &v22 - v4;
  v6 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v23 = *(v6 - 8);
  __chkstk_darwin();
  v22 = &v22 - v7;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v9, &unk_10118BCE0, &qword_100EC6450);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000095E8(v9, &unk_10118BCE0, &qword_100EC6450);
LABEL_8:
    v19 = 1;
    v18 = v24;
    goto LABEL_9;
  }

  (*(v11 + 32))(v13, v9, v10);
  v14 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
  swift_beginAccess();
  sub_1000089F8(v2 + v14, v5, &qword_10119A808, &unk_100ED91D0);
  v15 = v23;
  if ((*(v23 + 48))(v5, 1, v6) == 1)
  {
    (*(v11 + 8))(v13, v10);
    sub_1000095E8(v5, &qword_10119A808, &unk_100ED91D0);
    goto LABEL_8;
  }

  v16 = v22;
  (*(v15 + 32))(v22, v5, v6);
  v17 = IndexPath.item.getter();
  sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v17 >= dispatch thunk of Collection.distance(from:to:)())
  {
    (*(v15 + 8))(v16, v6);
    (*(v11 + 8))(v13, v10);
    goto LABEL_8;
  }

  IndexPath.item.getter();
  v18 = v24;
  MusicItemCollection.subscript.getter();
  (*(v15 + 8))(v16, v6);
  (*(v11 + 8))(v13, v10);
  v19 = 0;
LABEL_9:
  v20 = type metadata accessor for Playlist.Entry();
  return (*(*(v20 - 8) + 56))(v18, v19, 1, v20);
}

unint64_t sub_100859B24@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_5:
    IndexPath.section.getter();
LABEL_6:
    v8 = type metadata accessor for Track();
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }

  v6 = 0;
  v7 = v4 + 32;
  while (*(v7 + v6) != 3)
  {
    if (v5 == ++v6)
    {
      goto LABEL_5;
    }
  }

  v10 = v2;
  if (IndexPath.section.getter() != v6)
  {
    goto LABEL_6;
  }

  v11 = IndexPath.item.getter();
  v12 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
  swift_beginAccess();
  if (v11 >= *(*(v2 + v12) + 16))
  {
    goto LABEL_6;
  }

  result = IndexPath.item.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v14 = *(v10 + v12);
    if (result < *(v14 + 16))
    {
      v15 = type metadata accessor for Track();
      v16 = *(v15 - 8);
      (*(v16 + 16))(a2, v14 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v13, v15);
      return (*(v16 + 56))(a2, 0, 1, v15);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100859CF8@<X0>(void *a1@<X8>)
{
  v82 = a1;
  v74 = type metadata accessor for Playlist.Variant();
  v77 = *(v74 - 8);
  __chkstk_darwin();
  v70 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10010FC20(&unk_1011A4670, &qword_100EBF808);
  __chkstk_darwin();
  v78 = &v69 - v3;
  sub_10010FC20(&unk_10119EF50, &unk_100EDDF70);
  __chkstk_darwin();
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v69 - v5;
  __chkstk_darwin();
  v76 = &v69 - v6;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v71 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v79 = &v69 - v8;
  __chkstk_darwin();
  v80 = &v69 - v9;
  v10 = type metadata accessor for MusicPropertySource();
  v81 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v14 = &v69 - v13;
  v15 = type metadata accessor for Playlist();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v19, v14, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1000095E8(v14, &unk_1011814D0, &qword_100EC12A0);
    v20 = type metadata accessor for MetricsEvent.Page(0);
    return (*(*(v20 - 8) + 56))(v82, 1, 1, v20);
  }

  (*(v16 + 32))(v18, v14, v15);
  v22 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  v23 = v81;
  (*(v81 + 16))(v12, v1 + v22, v10);
  v24 = (*(v23 + 88))(v12, v10);
  v25 = v15;
  if (v24 == enum case for MusicPropertySource.catalog(_:))
  {
    v26 = v1;
    v27 = v16;
    v28 = Playlist.catalogID.getter();
    if (v29)
    {
      v30 = v29;
      v81 = v28;
    }

    else
    {
      v81 = Playlist.id.getter();
      v30 = v43;
    }

    v44 = v80;
    v45 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sourceURL;
    swift_beginAccess();
    v46 = v26 + v45;
    v47 = v79;
    sub_1000089F8(v46, v79, &qword_101183A20, &unk_100EBCF80);
    v48 = type metadata accessor for URL();
    v49 = *(v48 - 8);
    v50 = *(v49 + 48);
    if (v50(v47, 1, v48) == 1)
    {
      Playlist.url.getter();
      (*(v27 + 8))(v18, v25);
      if (v50(v47, 1, v48) != 1)
      {
        sub_1000095E8(v47, &qword_101183A20, &unk_100EBCF80);
      }
    }

    else
    {
      (*(v27 + 8))(v18, v25);
      (*(v49 + 32))(v44, v47, v48);
      (*(v49 + 56))(v44, 0, 1, v48);
    }

    v51 = v82;
    MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v81, v30, 0x7473696C79616C50, 0xE800000000000000, v44, 0, 0, 0, v82, 1, 0, 0, 2);
    v52 = type metadata accessor for MetricsEvent.Page(0);
    v53 = *(*(v52 - 8) + 56);
    v54 = v51;
    return v53(v54, 0, 1, v52);
  }

  if (v24 != enum case for MusicPropertySource.library(_:))
  {
    (*(v16 + 8))(v18, v15);
    v42 = type metadata accessor for MetricsEvent.Page(0);
    (*(*(v42 - 8) + 56))(v82, 1, 1, v42);
    return (*(v23 + 8))(v12, v10);
  }

  v80 = v15;
  v81 = v16;
  v31 = v76;
  Playlist.variant.getter();
  v32 = v77;
  v33 = v74;
  v34 = v75;
  (*(v77 + 104))(v75, enum case for Playlist.Variant.favoriteSongs(_:), v74);
  (*(v32 + 56))(v34, 0, 1, v33);
  v35 = *(v73 + 48);
  v36 = v78;
  sub_1000089F8(v31, v78, &unk_10119EF50, &unk_100EDDF70);
  sub_1000089F8(v34, v36 + v35, &unk_10119EF50, &unk_100EDDF70);
  v37 = *(v32 + 48);
  if (v37(v36, 1, v33) == 1)
  {
    sub_1000095E8(v34, &unk_10119EF50, &unk_100EDDF70);
    v38 = v78;
    sub_1000095E8(v31, &unk_10119EF50, &unk_100EDDF70);
    v39 = v37(v38 + v35, 1, v33);
    v40 = v80;
    if (v39 == 1)
    {
      sub_1000095E8(v38, &unk_10119EF50, &unk_100EDDF70);
      v41 = v82;
LABEL_22:
      v63 = Playlist.catalogID.getter();
      if (v64)
      {
        v65 = v63;
      }

      else
      {
        v65 = 0x657469726F766146;
      }

      if (v64)
      {
        v66 = v64;
      }

      else
      {
        v66 = 0xED000073676E6F53;
      }

      (*(v81 + 8))(v18, v40);
      v67 = type metadata accessor for URL();
      v68 = v71;
      (*(*(v67 - 8) + 56))(v71, 1, 1, v67);
      MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v65, v66, 0x7473696C79616C50, 0xE800000000000000, v68, 0, 0, 0, v41, 1, 0, 0, 2);
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  v55 = v72;
  sub_1000089F8(v36, v72, &unk_10119EF50, &unk_100EDDF70);
  if (v37(v36 + v35, 1, v33) == 1)
  {
    sub_1000095E8(v75, &unk_10119EF50, &unk_100EDDF70);
    v38 = v78;
    sub_1000095E8(v76, &unk_10119EF50, &unk_100EDDF70);
    (*(v77 + 8))(v55, v33);
    v40 = v80;
LABEL_19:
    sub_1000095E8(v38, &unk_1011A4670, &qword_100EBF808);
    v41 = v82;
    goto LABEL_20;
  }

  v57 = v55;
  v58 = v77;
  v59 = v36 + v35;
  v60 = v70;
  (*(v77 + 32))(v70, v59, v33);
  sub_100866F00(&unk_1011A4680, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
  v61 = dispatch thunk of static Equatable.== infix(_:_:)();
  v62 = *(v58 + 8);
  v62(v60, v33);
  sub_1000095E8(v75, &unk_10119EF50, &unk_100EDDF70);
  sub_1000095E8(v76, &unk_10119EF50, &unk_100EDDF70);
  v62(v57, v33);
  sub_1000095E8(v36, &unk_10119EF50, &unk_100EDDF70);
  v41 = v82;
  v40 = v80;
  if (v61)
  {
    goto LABEL_22;
  }

LABEL_20:
  v56 = MetricsEvent.Page.libraryPlaylistDetail.unsafeMutableAddressor();
  sub_10086772C(v56, v41, type metadata accessor for MetricsEvent.Page);
  (*(v81 + 8))(v18, v40);
LABEL_29:
  v52 = type metadata accessor for MetricsEvent.Page(0);
  v53 = *(*(v52 - 8) + 56);
  v54 = v41;
  return v53(v54, 0, 1, v52);
}

unint64_t sub_10085A8A8()
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v2 = &v14 - v1;
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBEF50;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 0x7365746F6ELL;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "locationType");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = 0x656E6961746E6F43;
  *(inited + 104) = 0xEF6C696174654472;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 1684957547;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = 0x7473696C79616C70;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0xD000000000000010;
  *(inited + 216) = &type metadata for Int;
  *(inited + 184) = 0x8000000100E4E2D0;
  *(inited + 192) = 0;
  v8 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
  swift_arrayDestroy();
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v0 + v9, v2, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000095E8(v2, &unk_1011814D0, &qword_100EC12A0);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v10 = Playlist.name.getter();
    v18 = &type metadata for String;
    *&v17 = v10;
    *(&v17 + 1) = v11;
    sub_100016270(&v17, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v8;
    sub_1006C5E68(v16, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    (*(v4 + 8))(v6, v3);
    return v15;
  }

  return v8;
}

uint64_t sub_10085ABFC@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  v34 = a2;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v4 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v30[-v5];
  __chkstk_darwin();
  v8 = &v30[-v7];
  v9 = type metadata accessor for MetricsEvent.Page(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100859CF8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &unk_1011838F0, &qword_100EC1070);
    v13 = type metadata accessor for Actions.MetricsReportingContext(0);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    sub_100869470(v8, v12, type metadata accessor for MetricsEvent.Page);
    sub_10086772C(v12, v6, type metadata accessor for MetricsEvent.Page);
    v15 = *(v10 + 56);
    v15(v6, 0, 1, v9);
    sub_10010FC20(&unk_1011927C0, &unk_100ED6A50);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100EBC6B0;
    *(v16 + 32) = sub_10085A8A8();
    sub_1000089F8(v6, v4, &unk_1011838F0, &qword_100EC1070);
    MetricsReportingController.shared.unsafeMutableAddressor();
    v17 = sub_10053771C();
    v32 = v18;
    v33 = v17;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v19 = qword_101218AD0;
    v31 = GroupActivitiesManager.hasJoined.getter();
    v20 = GroupActivitiesManager.participantsCount.getter();
    sub_1000095E8(v6, &unk_1011838F0, &qword_100EC1070);
    sub_100867794(v12, type metadata accessor for MetricsEvent.Page);
    v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    v22 = *(v19 + v21);
    v23 = type metadata accessor for Actions.MetricsReportingContext(0);
    v24 = v23[5];
    v15(a1 + v24, 1, 1, v9);
    v25 = v23[7];
    v26 = (a1 + v23[6]);
    v27 = v23[8];
    *a1 = v34;
    sub_10006B010(v4, a1 + v24, &unk_1011838F0, &qword_100EC1070);
    v28 = v32;
    *v26 = v33;
    v26[1] = v28;
    *(a1->n128_u64 + v25) = v16;
    *(a1->n128_u64 + v27) = 0;
    v29 = a1 + v23[9];
    *v29 = v31 & 1;
    *(v29 + 1) = v20;
    *(v29 + 2) = v22;
    return (*(*(v23 - 1) + 56))(a1, 0, 1, v23);
  }
}

uint64_t sub_10085B028(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v3 + v4, v6, &unk_1011926C0, &unk_100ECF870);
  swift_beginAccess();
  sub_1002190E0(a1, v3 + v4, &unk_1011926C0, &unk_100ECF870);
  swift_endAccess();
  sub_100814FF8(v6);
  sub_1000095E8(a1, &unk_1011926C0, &unk_100ECF870);
  return sub_1000095E8(v6, &unk_1011926C0, &unk_100ECF870);
}

uint64_t sub_10085B0FC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID);

  return v1;
}

uint64_t sub_10085B184@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
  swift_beginAccess();
  return sub_1000089F8(v3 + v4, a1, &unk_10118BCE0, &qword_100EC6450);
}

uint64_t sub_10085B2F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  v5 = type metadata accessor for MusicPropertySource();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_10085B380()
{
  v0 = *AccessibilityIdentifier.playlistView.unsafeMutableAddressor();

  return v0;
}

uint64_t sub_10085B3D0()
{
  if (qword_10117F700 != -1)
  {
    swift_once();
  }

  v0 = qword_101218CB8;

  return v0;
}

unint64_t sub_10085B4A4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  if ((v1 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    return 0;
  }

  if ((v1 >> 62) > 2)
  {
    LOBYTE(v1) = 1;
  }

  return v1 & 1;
}

void sub_10085B734(uint64_t a1)
{
  if (ActionType.rawValue.getter(a1) == 0x62694C6F54646461 && v2 == 0xEC00000079726172)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      return;
    }
  }

  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isPendingLocalAddAction) = 1;
}

void sub_10085B7C8(uint64_t a1)
{
  if (ActionType.rawValue.getter(a1) == 0x62694C6F54646461 && v2 == 0xEC00000079726172)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      return;
    }
  }

  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isPendingLocalAddAction) = 0;
  if (sub_10081FE6C())
  {

    sub_10082920C();
  }
}

uint64_t sub_10085B8A8()
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v2 = &v15 - v1;
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0x7473696C79616C50;
  v18 = 0xEF286C6961746544;
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v0 + v7, v2, &unk_1011814D0, &qword_100EC12A0);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000095E8(v2, &unk_1011814D0, &qword_100EC12A0);
    v8._object = 0x8000000100E58950;
    v8._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v8);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v16._countAndFlagsBits = 3826793;
    v16._object = 0xE300000000000000;
    Playlist.id.getter();
    v9 = MusicItemID.description.getter();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    String.append(_:)(v16);

    (*(v4 + 8))(v6, v3);
  }

  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return v17;
}

uint64_t sub_10085BB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100866F00(&qword_101190E60, &type metadata accessor for Playlist.Entry, &protocol conformance descriptor for Playlist.Entry);

  return MusicLibraryMappingItem<>.mappingID.getter(a1, a2, v4);
}

uint64_t sub_10085BBF4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1(0);
  (*(*(v8 - 8) + 16))(a4, v4, v8);
  v9 = enum case for MusicLibraryMapping.ItemContent.fetchedCatalogItem<A>(_:);
  v10 = sub_10010FC20(a2, a3);
  v11 = *(*(v10 - 8) + 104);

  return v11(a4, v9, v10);
}

uint64_t sub_10085BCD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100866F00(&unk_1011A4BD0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);

  return MusicLibraryMappingItem<>.mappingID.getter(a1, a2, v4);
}

uint64_t sub_10085BD6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v7 = v4;
  (*(*(a1 - 8) + 16))(a4, v7, a1);
  v9 = enum case for MusicLibraryMapping.ItemContent.fetchedCatalogItem<A>(_:);
  v10 = sub_10010FC20(a2, a3);
  v11 = *(*(v10 - 8) + 104);

  return v11(a4, v9, v10);
}

void sub_10085BE50(uint64_t a1)
{
  sub_10003920C(319, &qword_1011A44D8, &qword_1011A44E0, &qword_100EE47A0);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &qword_1011A44E8, &qword_1011A44F0, &qword_100EE47A8);
    if (v2 <= 0x3F)
    {
      sub_10003920C(319, &qword_1011A44F8, &unk_1011A4500, &unk_100EE47B0);
      if (v3 <= 0x3F)
      {
        sub_10003920C(319, &unk_10118A4F0, &unk_1011A4510, &qword_100EC5CC0);
        if (v4 <= 0x3F)
        {
          sub_10003920C(319, &unk_101192440, &qword_1011A4520, &qword_100EE47C0);
          if (v5 <= 0x3F)
          {
            sub_10003920C(319, &qword_1011A4528, &qword_1011A4530, &qword_100EE47C8);
            if (v6 <= 0x3F)
            {
              sub_10085C5D8(319, &unk_1011A4538, &unk_101184790, UICollectionViewListCell_ptr, type metadata accessor for TracklistFooter.ViewModel);
              if (v7 <= 0x3F)
              {
                sub_10003920C(319, &qword_1011A4548, &unk_1011A4550, &unk_100EE47D0);
                if (v8 <= 0x3F)
                {
                  sub_10085C5D8(319, &qword_101192460, &unk_101184750, UICollectionViewCell_ptr, type metadata accessor for RelatedContentSpacing.Data);
                  if (v9 <= 0x3F)
                  {
                    sub_10003920C(319, &unk_101192470, &unk_1011A4560, &qword_100ECF5E0);
                    if (v10 <= 0x3F)
                    {
                      sub_10085C650(319, &unk_101192480, &type metadata accessor for IndexPath, &type metadata accessor for Optional);
                      if (v11 <= 0x3F)
                      {
                        sub_10085C650(319, &qword_1011A4570, &type metadata accessor for Artwork, &type metadata accessor for Optional);
                        if (v12 <= 0x3F)
                        {
                          sub_10085C650(319, &qword_10119EDA0, &type metadata accessor for Playlist, &type metadata accessor for Optional);
                          if (v13 <= 0x3F)
                          {
                            type metadata accessor for MusicPropertySource();
                            if (v14 <= 0x3F)
                            {
                              sub_10085C650(319, &qword_1011814C0, &type metadata accessor for URL, &type metadata accessor for Optional);
                              if (v15 <= 0x3F)
                              {
                                sub_10085C650(319, &qword_1011A4578, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails, &type metadata accessor for Optional);
                                if (v16 <= 0x3F)
                                {
                                  sub_10003920C(319, &unk_1011A4580, &qword_10118C2B0, &qword_100ECDEF0);
                                  if (v17 <= 0x3F)
                                  {
                                    swift_updateClassMetadata2();
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
            }
          }
        }
      }
    }
  }
}

void sub_10085C5D8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_100009F78(255, a3, a4);
    a5(255);
    v7 = type metadata accessor for UICollectionView.CellRegistration();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_10085C650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10085C718(uint64_t a1)
{
  type metadata accessor for Playlist.Collaboration();
  if (v1 <= 0x3F)
  {
    sub_10085C650(319, &unk_1011A45F8, &type metadata accessor for Playlist.Collaborator, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10085C7CC()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101219770);
  sub_1000060E4(v0, qword_101219770);
  return static Logger.music(_:)(0x7473696C79616C50, 0xEF676E6974696445);
}

void sub_10085C83C(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  v3 = v5;
  *a2 = v4;
  *(a2 + 8) = v3;
}

uint64_t sub_10085C8C4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_10085C948@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10085C9C8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_10085CA44@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t sub_10085CAC0(uint64_t a1, uint64_t *a2)
{
  sub_10010FC20(&unk_101192700, &qword_100EC06A0);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_1000089F8(a1, &v8 - v5, &unk_101192700, &qword_100EC06A0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v6, v4, &unk_101192700, &qword_100EC06A0);

  static Published.subscript.setter();
  return sub_1000095E8(v6, &unk_101192700, &qword_100EC06A0);
}

double sub_10085CBF0@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10085CC70(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_10085CCEC(uint64_t *a1)
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10059F0BC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10085CD94(v5);
  *a1 = v3;
}

void sub_10085CD94(uint64_t *a1)
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
      sub_10085D184(v8, v9, a1, v4);
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
    sub_10085CEC0(0, v2, 1, a1);
  }
}

void sub_10085CEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for IndexPath();
  __chkstk_darwin();
  v39 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v29 - v10;
  v12 = __chkstk_darwin();
  v42 = &v29 - v13;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v40 = *(v11 + 16);
    v41 = v11 + 16;
    v15 = *(v11 + 72);
    v16 = (v11 + 8);
    v37 = (v11 + 32);
    v38 = v14;
    v17 = (v14 + v15 * (a3 - 1));
    v36 = -v15;
    v18 = a1 - a3;
    v30 = v15;
    v19 = v14 + v15 * a3;
LABEL_5:
    v34 = v17;
    v35 = a3;
    v32 = v19;
    v33 = v18;
    v20 = v17;
    while (1)
    {
      v21 = v42;
      v22 = v40;
      (v40)(v42, v19, v8, v12);
      v23 = v43;
      v22(v43, v20, v8);
      sub_100866F00(&unk_1011A48D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = dispatch thunk of static Comparable.< infix(_:_:)();
      v25 = *v16;
      (*v16)(v23, v8);
      v25(v21, v8);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v17 = &v34[v30];
        v18 = v33 - 1;
        v19 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v26 = *v37;
      v27 = v39;
      (*v37)(v39, v19, v8);
      swift_arrayInitWithTakeFrontToBack();
      v26(v20, v27, v8);
      v20 += v36;
      v19 += v36;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10085D184(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v119 = a1;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v124 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v131 = &v116 - v11;
  __chkstk_darwin();
  v137 = &v116 - v12;
  v13 = __chkstk_darwin();
  v136 = &v116 - v14;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_94:
    v18 = *v119;
    if (!*v119)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v17 = sub_10059F01C(v17);
    }

    v139 = v17;
    v112 = *(v17 + 2);
    if (v112 >= 2)
    {
      while (*a3)
      {
        v113 = *&v17[16 * v112];
        v114 = *&v17[16 * v112 + 24];
        sub_10085DBAC(*a3 + v9[9] * v113, *a3 + v9[9] * *&v17[16 * v112 + 16], *a3 + v9[9] * v114, v18);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v114 < v113)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_10059F01C(v17);
        }

        if (v112 - 2 >= *(v17 + 2))
        {
          goto LABEL_120;
        }

        v115 = &v17[16 * v112];
        *v115 = v113;
        *(v115 + 1) = v114;
        v139 = v17;
        sub_10059EF90(v112 - 1);
        v17 = v139;
        v112 = *(v139 + 2);
        if (v112 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v16 = 0;
  v134 = (v9 + 1);
  v135 = v9 + 2;
  v133 = (v9 + 4);
  v17 = _swiftEmptyArrayStorage;
  v121 = v9;
  v138 = v8;
  v117 = a3;
  while (1)
  {
    v18 = v16;
    v122 = v17;
    if (v16 + 1 >= v15)
    {
      v31 = v16 + 1;
    }

    else
    {
      v129 = v15;
      v118 = v5;
      v19 = *a3;
      v20 = v9[9];
      v21 = v16;
      v120 = v16;
      v22 = &v19[v20 * (v16 + 1)];
      v23 = v8;
      v24 = v9[2];
      v25 = v136;
      v24(v136, v22, v23, v13);
      v26 = &v19[v20 * v21];
      v27 = v137;
      v128 = v24;
      (v24)(v137, v26, v23);
      v127 = sub_100866F00(&unk_1011A48D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      LODWORD(v130) = dispatch thunk of static Comparable.< infix(_:_:)();
      v28 = v9[1];
      v28(v27, v23);
      v126 = v28;
      v28(v25, v23);
      v29 = v120 + 2;
      v132 = v20;
      v30 = &v19[v20 * (v120 + 2)];
      while (1)
      {
        v31 = v129;
        if (v129 == v29)
        {
          break;
        }

        v32 = v136;
        v33 = v9;
        v34 = v138;
        v35 = v128;
        (v128)(v136, v30, v138);
        v36 = v137;
        v35(v137, v22, v34);
        v37 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v38 = v126;
        (v126)(v36, v34);
        v39 = v34;
        v9 = v33;
        v38(v32, v39);
        ++v29;
        v30 += v132;
        v22 += v132;
        if ((v130 & 1) != v37)
        {
          v31 = v29 - 1;
          break;
        }
      }

      v5 = v118;
      v17 = v122;
      v8 = v138;
      a3 = v117;
      v18 = v120;
      if (v130)
      {
        if (v31 < v120)
        {
          goto LABEL_123;
        }

        if (v120 < v31)
        {
          v40 = v31;
          v41 = v132 * (v31 - 1);
          v42 = v31 * v132;
          v129 = v31;
          v43 = v120;
          v44 = v120 * v132;
          do
          {
            if (v43 != --v40)
            {
              v46 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v130 = *v133;
              v130(v124, &v46[v44], v138);
              if (v44 < v41 || &v46[v44] >= &v46[v42])
              {
                v45 = v138;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v45 = v138;
                if (v44 != v41)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v130(&v46[v41], v124, v45);
              v9 = v121;
              v17 = v122;
            }

            ++v43;
            v41 -= v132;
            v42 -= v132;
            v44 += v132;
          }

          while (v43 < v40);
          v5 = v118;
          v8 = v138;
          v18 = v120;
          v31 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v31 < v47)
    {
      if (__OFSUB__(v31, v18))
      {
        goto LABEL_122;
      }

      if (v31 - v18 < v116)
      {
        if (__OFADD__(v18, v116))
        {
          goto LABEL_124;
        }

        if (v18 + v116 >= v47)
        {
          v48 = a3[1];
        }

        else
        {
          v48 = v18 + v116;
        }

        if (v48 < v18)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v31 != v48)
        {
          break;
        }
      }
    }

    v49 = v31;
    if (v31 < v18)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_100498FCC(0, *(v17 + 2) + 1, 1, v17);
    }

    v51 = *(v17 + 2);
    v50 = *(v17 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v17 = sub_100498FCC((v50 > 1), v51 + 1, 1, v17);
    }

    *(v17 + 2) = v52;
    v53 = &v17[16 * v51];
    *(v53 + 4) = v18;
    *(v53 + 5) = v49;
    v18 = *v119;
    if (!*v119)
    {
      goto LABEL_131;
    }

    v125 = v49;
    if (v51)
    {
      while (1)
      {
        v54 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v55 = *(v17 + 4);
          v56 = *(v17 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_52:
          if (v58)
          {
            goto LABEL_110;
          }

          v71 = &v17[16 * v52];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_113;
          }

          v77 = &v17[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_117;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v52 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v81 = &v17[16 * v52];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_66:
        if (v76)
        {
          goto LABEL_112;
        }

        v84 = &v17[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_115;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_73:
        v92 = v54 - 1;
        if (v54 - 1 >= v52)
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

        v93 = *&v17[16 * v92 + 32];
        v94 = *&v17[16 * v54 + 40];
        sub_10085DBAC(*a3 + v9[9] * v93, *a3 + v9[9] * *&v17[16 * v54 + 32], *a3 + v9[9] * v94, v18);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v94 < v93)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_10059F01C(v17);
        }

        if (v92 >= *(v17 + 2))
        {
          goto LABEL_107;
        }

        v95 = &v17[16 * v92];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        v139 = v17;
        sub_10059EF90(v54);
        v17 = v139;
        v52 = *(v139 + 2);
        v8 = v138;
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v17[16 * v52 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_108;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_109;
      }

      v66 = &v17[16 * v52];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_111;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_114;
      }

      if (v70 >= v62)
      {
        v88 = &v17[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_118;
        }

        if (v57 < v91)
        {
          v54 = v52 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v15 = a3[1];
    v16 = v125;
    if (v125 >= v15)
    {
      goto LABEL_94;
    }
  }

  v118 = v5;
  v96 = *a3;
  v97 = v9[9];
  v132 = v9[2];
  v98 = v96 + v97 * (v31 - 1);
  v99 = -v97;
  v120 = v18;
  v100 = v18 - v31;
  v130 = v96;
  v123 = v97;
  v101 = v96 + v31 * v97;
  v125 = v48;
LABEL_85:
  v128 = v98;
  v129 = v31;
  v126 = v101;
  v127 = v100;
  v102 = v98;
  while (1)
  {
    v103 = v136;
    v104 = v132;
    (v132)(v136, v101, v8);
    v105 = v137;
    v104(v137, v102, v138);
    sub_100866F00(&unk_1011A48D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v106 = dispatch thunk of static Comparable.< infix(_:_:)();
    v107 = *v134;
    v108 = v105;
    v8 = v138;
    (*v134)(v108, v138);
    v107(v103, v8);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v31 = v129 + 1;
      v98 = &v128[v123];
      v100 = v127 - 1;
      v101 = &v126[v123];
      v49 = v125;
      if (v129 + 1 != v125)
      {
        goto LABEL_85;
      }

      v5 = v118;
      a3 = v117;
      v9 = v121;
      v17 = v122;
      v18 = v120;
      if (v125 < v120)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v130)
    {
      break;
    }

    v109 = *v133;
    v110 = v131;
    (*v133)(v131, v101, v8);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v8);
    v102 += v99;
    v101 += v99;
    if (__CFADD__(v100++, 1))
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

void sub_10085DBAC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = type metadata accessor for IndexPath();
  v8 = *(v50 - 8);
  __chkstk_darwin();
  v48 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v47 = &v38 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_63;
  }

  v49 = a3;
  v14 = (a2 - a1) / v12;
  v53 = a1;
  v52 = a4;
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

    v25 = a4 + v16;
    if (v16 >= 1)
    {
      v26 = -v12;
      v41 = a4;
      v42 = (v8 + 16);
      v39 = (v8 + 8);
      v40 = a1;
      v27 = a4 + v16;
      v28 = v49;
      v43 = v26;
      do
      {
        v38 = v25;
        v29 = a2 + v26;
        v45 = a2 + v26;
        v46 = v25;
        v44 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v53 = a2;
            v25 = v38;
            goto LABEL_59;
          }

          v31 = v28;
          v49 = v28 + v26;
          v32 = v27 + v26;
          v33 = *v42;
          v34 = v47;
          v35 = v50;
          (*v42)(v47, v27 + v26, v50);
          v36 = v48;
          v33(v48, v29, v35);
          sub_100866F00(&unk_1011A48D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          LOBYTE(v33) = dispatch thunk of static Comparable.< infix(_:_:)();
          v37 = *v39;
          (*v39)(v36, v35);
          v37(v34, v35);
          if (v33)
          {
            break;
          }

          v28 = v49;
          if (v31 < v27 || v49 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v45;
            a1 = v40;
          }

          else
          {
            v29 = v45;
            a1 = v40;
            if (v31 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = v32;
          v27 = v32;
          v30 = v32 > v41;
          v26 = v43;
          a2 = v44;
          if (!v30)
          {
            v25 = v46;
            goto LABEL_58;
          }
        }

        v28 = v49;
        if (v31 < v44 || v49 >= v44)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v40;
        }

        else
        {
          a2 = v45;
          a1 = v40;
          if (v31 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v25 = v46;
        v26 = v43;
      }

      while (v27 > v41);
    }

LABEL_58:
    v53 = a2;
LABEL_59:
    v51 = v25;
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

    v46 = a4 + v15;
    v51 = a4 + v15;
    if (v15 >= 1 && a2 < v49)
    {
      v44 = *(v8 + 16);
      v45 = v8 + 16;
      v42 = v12;
      v43 = (v8 + 8);
      do
      {
        v18 = v47;
        v19 = v50;
        v20 = v44;
        (v44)(v47, a2, v50);
        v21 = v48;
        v20(v48, a4, v19);
        sub_100866F00(&unk_1011A48D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        LOBYTE(v20) = dispatch thunk of static Comparable.< infix(_:_:)();
        v22 = *v43;
        (*v43)(v21, v19);
        v22(v18, v19);
        if (v20)
        {
          v23 = v42;
          if (a1 < a2 || a1 >= &v42[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v23;
        }

        else
        {
          v23 = v42;
          v24 = &v42[a4];
          if (a1 < a4 || a1 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v52 = v24;
          a4 += v23;
        }

        a1 += v23;
        v53 = a1;
      }

      while (a4 < v46 && a2 < v49);
    }
  }

  sub_10085E2BC(&v53, &v52, &v51, &type metadata accessor for IndexPath);
}

uint64_t sub_10085E1B4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10010FC20(&unk_10118D180, &qword_100EC8EC0);
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

uint64_t sub_10085E2BC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10085E3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v60 = (&v54 - v5);
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin();
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v54 - v8;
  __chkstk_darwin();
  v61 = (&v54 - v10);
  v11 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v54 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v54 - v14;
  __chkstk_darwin();
  v16 = &v54 - v15;
  v17 = type metadata accessor for MusicVideo();
  v63[3] = v17;
  v63[4] = &protocol witness table for MusicVideo;
  v18 = sub_10001C8B8(v63);
  (*(*(v17 - 8) + 16))(v18, a2, v17);
  v19 = *(v12 + 16);
  v58 = a1;
  v19(v16, a1, v11);
  v20 = (*(v12 + 88))(v16, v11);
  if (v20 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v12 + 96))(v16, v11);
    v21 = v59;
    v22 = *(v59 + 32);
    v23 = v61;
    v22(v61, v16, v6);
    v24 = *(v21 + 16);
    v24(v9, v23, v6);
    v25 = (*(v21 + 88))(v9, v6);
    v26 = v6;
    if (v25 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v42 = v61;
      if (v25 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v64);
        sub_100014984(v64);
        v43 = v42;
        if ((BYTE8(v64[0]) & 1) == 0)
        {
          v44 = type metadata accessor for TaskPriority();
          v45 = v60;
          (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
          sub_100008FE4(v63, v62);
          v46 = swift_allocObject();
          *(v46 + 16) = 0;
          *(v46 + 24) = 0;
          sub_100059A8C(v62, v46 + 32);
          sub_1001F4CB8(0, 0, v45, &unk_100EE55A0, v46);

          (*(v21 + 8))(v42, v26);
          return sub_10000959C(v63);
        }
      }

      else
      {
        (*(v21 + 8))(v9, v26);
        v43 = v42;
      }

      v47 = type metadata accessor for TaskPriority();
      (*(*(v47 - 8) + 56))(v60, 1, 1, v47);
      v48 = v26;
      v49 = v55;
      v24(v55, v43, v48);
      sub_10012B7A8(v56, v62);
      type metadata accessor for MainActor();
      v50 = static MainActor.shared.getter();
      v51 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = v50;
      *(v52 + 24) = &protocol witness table for MainActor;
      v22((v52 + v51), v49, v48);
      sub_10012B828(v62, v52 + ((v7 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v60, &unk_100EE5598, v52);

      (*(v21 + 8))(v61, v48);
      return sub_10000959C(v63);
    }

    v27 = type metadata accessor for TaskPriority();
    v28 = v60;
    (*(*(v27 - 8) + 56))(v60, 1, 1, v27);
    sub_100008FE4(v63, v64);
    type metadata accessor for MainActor();
    v29 = static MainActor.shared.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v64, v30 + 32);
    sub_1001F4CB8(0, 0, v28, &unk_100EE55A8, v30);

    (*(v21 + 8))(v61, v6);
  }

  else if (v20 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v31 = *(v12 + 8);
    (v31)(v16, v11);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000060E4(v32, qword_101218F08);
    v33 = v57;
    v19(v57, v58, v11);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v60 = v31;
      v37 = v36;
      v61 = swift_slowAlloc();
      *&v64[0] = v61;
      *v37 = 136315138;
      v19(v54, v33, v11);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      (v60)(v33, v11);
      v41 = sub_1000105AC(v38, v40, v64);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unknown playabilityStatus=%s", v37, 0xCu);
      sub_10000959C(v61);
    }

    else
    {

      (v31)(v33, v11);
    }
  }

  return sub_10000959C(v63);
}

uint64_t sub_10085EBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v60 = (&v54 - v5);
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin();
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v54 - v8;
  __chkstk_darwin();
  v61 = (&v54 - v10);
  v11 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v54 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v54 - v14;
  __chkstk_darwin();
  v16 = &v54 - v15;
  v17 = type metadata accessor for Track();
  v63[3] = v17;
  v63[4] = &protocol witness table for Track;
  v18 = sub_10001C8B8(v63);
  (*(*(v17 - 8) + 16))(v18, a2, v17);
  v19 = *(v12 + 16);
  v58 = a1;
  v19(v16, a1, v11);
  v20 = (*(v12 + 88))(v16, v11);
  if (v20 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v12 + 96))(v16, v11);
    v21 = v59;
    v22 = *(v59 + 32);
    v23 = v61;
    v22(v61, v16, v6);
    v24 = *(v21 + 16);
    v24(v9, v23, v6);
    v25 = (*(v21 + 88))(v9, v6);
    v26 = v6;
    if (v25 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v42 = v61;
      if (v25 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v64);
        sub_100014984(v64);
        v43 = v42;
        if ((BYTE8(v64[0]) & 1) == 0)
        {
          v44 = type metadata accessor for TaskPriority();
          v45 = v60;
          (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
          sub_100008FE4(v63, v62);
          v46 = swift_allocObject();
          *(v46 + 16) = 0;
          *(v46 + 24) = 0;
          sub_100059A8C(v62, v46 + 32);
          sub_1001F4CB8(0, 0, v45, &unk_100EE55B8, v46);

          (*(v21 + 8))(v42, v26);
          return sub_10000959C(v63);
        }
      }

      else
      {
        (*(v21 + 8))(v9, v26);
        v43 = v42;
      }

      v47 = type metadata accessor for TaskPriority();
      (*(*(v47 - 8) + 56))(v60, 1, 1, v47);
      v48 = v26;
      v49 = v55;
      v24(v55, v43, v48);
      sub_10012B7A8(v56, v62);
      type metadata accessor for MainActor();
      v50 = static MainActor.shared.getter();
      v51 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = v50;
      *(v52 + 24) = &protocol witness table for MainActor;
      v22((v52 + v51), v49, v48);
      sub_10012B828(v62, v52 + ((v7 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v60, &unk_100EE55B0, v52);

      (*(v21 + 8))(v61, v48);
      return sub_10000959C(v63);
    }

    v27 = type metadata accessor for TaskPriority();
    v28 = v60;
    (*(*(v27 - 8) + 56))(v60, 1, 1, v27);
    sub_100008FE4(v63, v64);
    type metadata accessor for MainActor();
    v29 = static MainActor.shared.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v64, v30 + 32);
    sub_1001F4CB8(0, 0, v28, &unk_100EE55C0, v30);

    (*(v21 + 8))(v61, v6);
  }

  else if (v20 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v31 = *(v12 + 8);
    (v31)(v16, v11);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000060E4(v32, qword_101218F08);
    v33 = v57;
    v19(v57, v58, v11);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v60 = v31;
      v37 = v36;
      v61 = swift_slowAlloc();
      *&v64[0] = v61;
      *v37 = 136315138;
      v19(v54, v33, v11);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      (v60)(v33, v11);
      v41 = sub_1000105AC(v38, v40, v64);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unknown playabilityStatus=%s", v37, 0xCu);
      sub_10000959C(v61);
    }

    else
    {

      (v31)(v33, v11);
    }
  }

  return sub_10000959C(v63);
}

uint64_t sub_10085F3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v60 = (&v54 - v5);
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin();
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v54 - v8;
  __chkstk_darwin();
  v61 = (&v54 - v10);
  v11 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v54 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v54 - v14;
  __chkstk_darwin();
  v16 = &v54 - v15;
  v17 = type metadata accessor for Album();
  v63[3] = v17;
  v63[4] = &protocol witness table for Album;
  v18 = sub_10001C8B8(v63);
  (*(*(v17 - 8) + 16))(v18, a2, v17);
  v19 = *(v12 + 16);
  v58 = a1;
  v19(v16, a1, v11);
  v20 = (*(v12 + 88))(v16, v11);
  if (v20 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v12 + 96))(v16, v11);
    v21 = v59;
    v22 = *(v59 + 32);
    v23 = v61;
    v22(v61, v16, v6);
    v24 = *(v21 + 16);
    v24(v9, v23, v6);
    v25 = (*(v21 + 88))(v9, v6);
    v26 = v6;
    if (v25 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v42 = v61;
      if (v25 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v64);
        sub_100014984(v64);
        v43 = v42;
        if ((BYTE8(v64[0]) & 1) == 0)
        {
          v44 = type metadata accessor for TaskPriority();
          v45 = v60;
          (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
          sub_100008FE4(v63, v62);
          v46 = swift_allocObject();
          *(v46 + 16) = 0;
          *(v46 + 24) = 0;
          sub_100059A8C(v62, v46 + 32);
          sub_1001F4CB8(0, 0, v45, &unk_100EE55D0, v46);

          (*(v21 + 8))(v42, v26);
          return sub_10000959C(v63);
        }
      }

      else
      {
        (*(v21 + 8))(v9, v26);
        v43 = v42;
      }

      v47 = type metadata accessor for TaskPriority();
      (*(*(v47 - 8) + 56))(v60, 1, 1, v47);
      v48 = v26;
      v49 = v55;
      v24(v55, v43, v48);
      sub_10012B7A8(v56, v62);
      type metadata accessor for MainActor();
      v50 = static MainActor.shared.getter();
      v51 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = v50;
      *(v52 + 24) = &protocol witness table for MainActor;
      v22((v52 + v51), v49, v48);
      sub_10012B828(v62, v52 + ((v7 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v60, &unk_100EE55C8, v52);

      (*(v21 + 8))(v61, v48);
      return sub_10000959C(v63);
    }

    v27 = type metadata accessor for TaskPriority();
    v28 = v60;
    (*(*(v27 - 8) + 56))(v60, 1, 1, v27);
    sub_100008FE4(v63, v64);
    type metadata accessor for MainActor();
    v29 = static MainActor.shared.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v64, v30 + 32);
    sub_1001F4CB8(0, 0, v28, &unk_100EE55D8, v30);

    (*(v21 + 8))(v61, v6);
  }

  else if (v20 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v31 = *(v12 + 8);
    (v31)(v16, v11);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000060E4(v32, qword_101218F08);
    v33 = v57;
    v19(v57, v58, v11);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v60 = v31;
      v37 = v36;
      v61 = swift_slowAlloc();
      *&v64[0] = v61;
      *v37 = 136315138;
      v19(v54, v33, v11);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      (v60)(v33, v11);
      v41 = sub_1000105AC(v38, v40, v64);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unknown playabilityStatus=%s", v37, 0xCu);
      sub_10000959C(v61);
    }

    else
    {

      (v31)(v33, v11);
    }
  }

  return sub_10000959C(v63);
}

uint64_t sub_10085FC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v60 = (&v54 - v5);
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin();
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v54 - v8;
  __chkstk_darwin();
  v61 = (&v54 - v10);
  v11 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v54 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v54 - v14;
  __chkstk_darwin();
  v16 = &v54 - v15;
  v17 = type metadata accessor for Song();
  v63[3] = v17;
  v63[4] = &protocol witness table for Song;
  v18 = sub_10001C8B8(v63);
  (*(*(v17 - 8) + 16))(v18, a2, v17);
  v19 = *(v12 + 16);
  v58 = a1;
  v19(v16, a1, v11);
  v20 = (*(v12 + 88))(v16, v11);
  if (v20 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v12 + 96))(v16, v11);
    v21 = v59;
    v22 = *(v59 + 32);
    v23 = v61;
    v22(v61, v16, v6);
    v24 = *(v21 + 16);
    v24(v9, v23, v6);
    v25 = (*(v21 + 88))(v9, v6);
    v26 = v6;
    if (v25 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v42 = v61;
      if (v25 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v64);
        sub_100014984(v64);
        v43 = v42;
        if ((BYTE8(v64[0]) & 1) == 0)
        {
          v44 = type metadata accessor for TaskPriority();
          v45 = v60;
          (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
          sub_100008FE4(v63, v62);
          v46 = swift_allocObject();
          *(v46 + 16) = 0;
          *(v46 + 24) = 0;
          sub_100059A8C(v62, v46 + 32);
          sub_1001F4CB8(0, 0, v45, &unk_100EE5588, v46);

          (*(v21 + 8))(v42, v26);
          return sub_10000959C(v63);
        }
      }

      else
      {
        (*(v21 + 8))(v9, v26);
        v43 = v42;
      }

      v47 = type metadata accessor for TaskPriority();
      (*(*(v47 - 8) + 56))(v60, 1, 1, v47);
      v48 = v26;
      v49 = v55;
      v24(v55, v43, v48);
      sub_10012B7A8(v56, v62);
      type metadata accessor for MainActor();
      v50 = static MainActor.shared.getter();
      v51 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = v50;
      *(v52 + 24) = &protocol witness table for MainActor;
      v22((v52 + v51), v49, v48);
      sub_10012B828(v62, v52 + ((v7 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v60, &unk_100EE5580, v52);

      (*(v21 + 8))(v61, v48);
      return sub_10000959C(v63);
    }

    v27 = type metadata accessor for TaskPriority();
    v28 = v60;
    (*(*(v27 - 8) + 56))(v60, 1, 1, v27);
    sub_100008FE4(v63, v64);
    type metadata accessor for MainActor();
    v29 = static MainActor.shared.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v64, v30 + 32);
    sub_1001F4CB8(0, 0, v28, &unk_100EE5590, v30);

    (*(v21 + 8))(v61, v6);
  }

  else if (v20 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v31 = *(v12 + 8);
    (v31)(v16, v11);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000060E4(v32, qword_101218F08);
    v33 = v57;
    v19(v57, v58, v11);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v60 = v31;
      v37 = v36;
      v61 = swift_slowAlloc();
      *&v64[0] = v61;
      *v37 = 136315138;
      v19(v54, v33, v11);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      (v60)(v33, v11);
      v41 = sub_1000105AC(v38, v40, v64);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unknown playabilityStatus=%s", v37, 0xCu);
      sub_10000959C(v61);
    }

    else
    {

      (v31)(v33, v11);
    }
  }

  return sub_10000959C(v63);
}

uint64_t sub_100860424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v59 = (&v53 - v5);
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin();
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v53 - v8;
  __chkstk_darwin();
  v60 = (&v53 - v10);
  v11 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v53 - v14;
  __chkstk_darwin();
  v16 = &v53 - v15;
  v17 = type metadata accessor for TVEpisode();
  v62[3] = v17;
  v62[4] = sub_100866F00(&unk_1011996E0, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v18 = sub_10001C8B8(v62);
  (*(*(v17 - 8) + 16))(v18, a2, v17);
  v19 = *(v12 + 16);
  v19(v16, a1, v11);
  v20 = (*(v12 + 88))(v16, v11);
  if (v20 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v12 + 96))(v16, v11);
    v21 = v58;
    v22 = *(v58 + 32);
    v23 = v60;
    v22(v60, v16, v6);
    v24 = *(v21 + 16);
    v24(v9, v23, v6);
    v25 = (*(v21 + 88))(v9, v6);
    v26 = v6;
    if (v25 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v41 = v60;
      if (v25 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v63);
        sub_100014984(v63);
        v42 = v41;
        if ((BYTE8(v63[0]) & 1) == 0)
        {
          v43 = type metadata accessor for TaskPriority();
          v44 = v59;
          (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
          sub_100008FE4(v62, v61);
          v45 = swift_allocObject();
          *(v45 + 16) = 0;
          *(v45 + 24) = 0;
          sub_100059A8C(v61, v45 + 32);
          sub_1001F4CB8(0, 0, v44, &unk_100EE5570, v45);

          (*(v21 + 8))(v41, v26);
          return sub_10000959C(v62);
        }
      }

      else
      {
        (*(v21 + 8))(v9, v26);
        v42 = v41;
      }

      v46 = type metadata accessor for TaskPriority();
      (*(*(v46 - 8) + 56))(v59, 1, 1, v46);
      v47 = v26;
      v48 = v55;
      v24(v55, v42, v47);
      sub_10012B7A8(v56, v61);
      type metadata accessor for MainActor();
      v49 = static MainActor.shared.getter();
      v50 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = &protocol witness table for MainActor;
      v22((v51 + v50), v48, v47);
      sub_10012B828(v61, v51 + ((v7 + v50 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v59, &unk_100EE5568, v51);

      (*(v21 + 8))(v60, v47);
      return sub_10000959C(v62);
    }

    v27 = type metadata accessor for TaskPriority();
    v28 = v59;
    (*(*(v27 - 8) + 56))(v59, 1, 1, v27);
    sub_100008FE4(v62, v63);
    type metadata accessor for MainActor();
    v29 = static MainActor.shared.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v63, v30 + 32);
    sub_1001F4CB8(0, 0, v28, &unk_100EE5578, v30);

    (*(v21 + 8))(v60, v6);
  }

  else if (v20 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v31 = *(v12 + 8);
    v31(v16, v11);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000060E4(v32, qword_101218F08);
    v33 = v57;
    v19(v57, a1, v11);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v63[0] = v60;
      *v36 = 136315138;
      v59 = v31;
      v19(v54, v33, v11);
      v37 = String.init<A>(describing:)();
      v39 = v38;
      (v59)(v33, v11);
      v40 = sub_1000105AC(v37, v39, v63);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unknown playabilityStatus=%s", v36, 0xCu);
      sub_10000959C(v60);
    }

    else
    {

      v31(v33, v11);
    }
  }

  return sub_10000959C(v62);
}

uint64_t sub_100860C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v59 = (&v53 - v5);
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin();
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v53 - v8;
  __chkstk_darwin();
  v60 = (&v53 - v10);
  v11 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v53 - v14;
  __chkstk_darwin();
  v16 = &v53 - v15;
  v17 = type metadata accessor for MusicMovie();
  v62[3] = v17;
  v62[4] = sub_100866F00(&unk_10118AB60, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v18 = sub_10001C8B8(v62);
  (*(*(v17 - 8) + 16))(v18, a2, v17);
  v19 = *(v12 + 16);
  v19(v16, a1, v11);
  v20 = (*(v12 + 88))(v16, v11);
  if (v20 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v12 + 96))(v16, v11);
    v21 = v58;
    v22 = *(v58 + 32);
    v23 = v60;
    v22(v60, v16, v6);
    v24 = *(v21 + 16);
    v24(v9, v23, v6);
    v25 = (*(v21 + 88))(v9, v6);
    v26 = v6;
    if (v25 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v41 = v60;
      if (v25 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v63);
        sub_100014984(v63);
        v42 = v41;
        if ((BYTE8(v63[0]) & 1) == 0)
        {
          v43 = type metadata accessor for TaskPriority();
          v44 = v59;
          (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
          sub_100008FE4(v62, v61);
          v45 = swift_allocObject();
          *(v45 + 16) = 0;
          *(v45 + 24) = 0;
          sub_100059A8C(v61, v45 + 32);
          sub_1001F4CB8(0, 0, v44, &unk_100EE5550, v45);

          (*(v21 + 8))(v41, v26);
          return sub_10000959C(v62);
        }
      }

      else
      {
        (*(v21 + 8))(v9, v26);
        v42 = v41;
      }

      v46 = type metadata accessor for TaskPriority();
      (*(*(v46 - 8) + 56))(v59, 1, 1, v46);
      v47 = v26;
      v48 = v55;
      v24(v55, v42, v47);
      sub_10012B7A8(v56, v61);
      type metadata accessor for MainActor();
      v49 = static MainActor.shared.getter();
      v50 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = &protocol witness table for MainActor;
      v22((v51 + v50), v48, v47);
      sub_10012B828(v61, v51 + ((v7 + v50 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v59, &unk_100EE5548, v51);

      (*(v21 + 8))(v60, v47);
      return sub_10000959C(v62);
    }

    v27 = type metadata accessor for TaskPriority();
    v28 = v59;
    (*(*(v27 - 8) + 56))(v59, 1, 1, v27);
    sub_100008FE4(v62, v63);
    type metadata accessor for MainActor();
    v29 = static MainActor.shared.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v63, v30 + 32);
    sub_1001F4CB8(0, 0, v28, &unk_100EE5558, v30);

    (*(v21 + 8))(v60, v6);
  }

  else if (v20 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v31 = *(v12 + 8);
    v31(v16, v11);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000060E4(v32, qword_101218F08);
    v33 = v57;
    v19(v57, a1, v11);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v63[0] = v60;
      *v36 = 136315138;
      v59 = v31;
      v19(v54, v33, v11);
      v37 = String.init<A>(describing:)();
      v39 = v38;
      (v59)(v33, v11);
      v40 = sub_1000105AC(v37, v39, v63);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unknown playabilityStatus=%s", v36, 0xCu);
      sub_10000959C(v60);
    }

    else
    {

      v31(v33, v11);
    }
  }

  return sub_10000959C(v62);
}

uint64_t sub_1008614CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v60 = (&v54 - v5);
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin();
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v54 - v8;
  __chkstk_darwin();
  v61 = (&v54 - v10);
  v11 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v54 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v54 - v14;
  __chkstk_darwin();
  v16 = &v54 - v15;
  v17 = type metadata accessor for Playlist.Entry();
  v63[3] = v17;
  v63[4] = &protocol witness table for Playlist.Entry;
  v18 = sub_10001C8B8(v63);
  (*(*(v17 - 8) + 16))(v18, a2, v17);
  v19 = *(v12 + 16);
  v58 = a1;
  v19(v16, a1, v11);
  v20 = (*(v12 + 88))(v16, v11);
  if (v20 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v12 + 96))(v16, v11);
    v21 = v59;
    v22 = *(v59 + 32);
    v23 = v61;
    v22(v61, v16, v6);
    v24 = *(v21 + 16);
    v24(v9, v23, v6);
    v25 = (*(v21 + 88))(v9, v6);
    v26 = v6;
    if (v25 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v42 = v61;
      if (v25 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v64);
        sub_100014984(v64);
        v43 = v42;
        if ((BYTE8(v64[0]) & 1) == 0)
        {
          v44 = type metadata accessor for TaskPriority();
          v45 = v60;
          (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
          sub_100008FE4(v63, v62);
          v46 = swift_allocObject();
          *(v46 + 16) = 0;
          *(v46 + 24) = 0;
          sub_100059A8C(v62, v46 + 32);
          sub_1001F4CB8(0, 0, v45, &unk_100ED1BA8, v46);

          (*(v21 + 8))(v42, v26);
          return sub_10000959C(v63);
        }
      }

      else
      {
        (*(v21 + 8))(v9, v26);
        v43 = v42;
      }

      v47 = type metadata accessor for TaskPriority();
      (*(*(v47 - 8) + 56))(v60, 1, 1, v47);
      v48 = v26;
      v49 = v55;
      v24(v55, v43, v48);
      sub_10012B7A8(v56, v62);
      type metadata accessor for MainActor();
      v50 = static MainActor.shared.getter();
      v51 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = v50;
      *(v52 + 24) = &protocol witness table for MainActor;
      v22((v52 + v51), v49, v48);
      sub_10012B828(v62, v52 + ((v7 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v60, &unk_100ED1BA0, v52);

      (*(v21 + 8))(v61, v48);
      return sub_10000959C(v63);
    }

    v27 = type metadata accessor for TaskPriority();
    v28 = v60;
    (*(*(v27 - 8) + 56))(v60, 1, 1, v27);
    sub_100008FE4(v63, v64);
    type metadata accessor for MainActor();
    v29 = static MainActor.shared.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v64, v30 + 32);
    sub_1001F4CB8(0, 0, v28, &unk_100ED1BB0, v30);

    (*(v21 + 8))(v61, v6);
  }

  else if (v20 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v31 = *(v12 + 8);
    (v31)(v16, v11);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000060E4(v32, qword_101218F08);
    v33 = v57;
    v19(v57, v58, v11);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v60 = v31;
      v37 = v36;
      v61 = swift_slowAlloc();
      *&v64[0] = v61;
      *v37 = 136315138;
      v19(v54, v33, v11);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      (v60)(v33, v11);
      v41 = sub_1000105AC(v38, v40, v64);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unknown playabilityStatus=%s", v37, 0xCu);
      sub_10000959C(v61);
    }

    else
    {

      (v31)(v33, v11);
    }
  }

  return sub_10000959C(v63);
}

uint64_t sub_100861CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v60 = (&v54 - v5);
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin();
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v54 - v8;
  __chkstk_darwin();
  v61 = (&v54 - v10);
  v11 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v54 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v54 - v14;
  __chkstk_darwin();
  v16 = &v54 - v15;
  v17 = type metadata accessor for Playlist();
  v63[3] = v17;
  v63[4] = &protocol witness table for Playlist;
  v18 = sub_10001C8B8(v63);
  (*(*(v17 - 8) + 16))(v18, a2, v17);
  v19 = *(v12 + 16);
  v58 = a1;
  v19(v16, a1, v11);
  v20 = (*(v12 + 88))(v16, v11);
  if (v20 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v12 + 96))(v16, v11);
    v21 = v59;
    v22 = *(v59 + 32);
    v23 = v61;
    v22(v61, v16, v6);
    v24 = *(v21 + 16);
    v24(v9, v23, v6);
    v25 = (*(v21 + 88))(v9, v6);
    v26 = v6;
    if (v25 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v42 = v61;
      if (v25 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v64);
        sub_100014984(v64);
        v43 = v42;
        if ((BYTE8(v64[0]) & 1) == 0)
        {
          v44 = type metadata accessor for TaskPriority();
          v45 = v60;
          (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
          sub_100008FE4(v63, v62);
          v46 = swift_allocObject();
          *(v46 + 16) = 0;
          *(v46 + 24) = 0;
          sub_100059A8C(v62, v46 + 32);
          sub_1001F4CB8(0, 0, v45, &unk_100EE4B60, v46);

          (*(v21 + 8))(v42, v26);
          return sub_10000959C(v63);
        }
      }

      else
      {
        (*(v21 + 8))(v9, v26);
        v43 = v42;
      }

      v47 = type metadata accessor for TaskPriority();
      (*(*(v47 - 8) + 56))(v60, 1, 1, v47);
      v48 = v26;
      v49 = v55;
      v24(v55, v43, v48);
      sub_10012B7A8(v56, v62);
      type metadata accessor for MainActor();
      v50 = static MainActor.shared.getter();
      v51 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = v50;
      *(v52 + 24) = &protocol witness table for MainActor;
      v22((v52 + v51), v49, v48);
      sub_10012B828(v62, v52 + ((v7 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v60, &unk_100EE4B58, v52);

      (*(v21 + 8))(v61, v48);
      return sub_10000959C(v63);
    }

    v27 = type metadata accessor for TaskPriority();
    v28 = v60;
    (*(*(v27 - 8) + 56))(v60, 1, 1, v27);
    sub_100008FE4(v63, v64);
    type metadata accessor for MainActor();
    v29 = static MainActor.shared.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v64, v30 + 32);
    sub_1001F4CB8(0, 0, v28, &unk_100EE4B68, v30);

    (*(v21 + 8))(v61, v6);
  }

  else if (v20 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v31 = *(v12 + 8);
    (v31)(v16, v11);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000060E4(v32, qword_101218F08);
    v33 = v57;
    v19(v57, v58, v11);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v60 = v31;
      v37 = v36;
      v61 = swift_slowAlloc();
      *&v64[0] = v61;
      *v37 = 136315138;
      v19(v54, v33, v11);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      (v60)(v33, v11);
      v41 = sub_1000105AC(v38, v40, v64);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unknown playabilityStatus=%s", v37, 0xCu);
      sub_10000959C(v61);
    }

    else
    {

      (v31)(v33, v11);
    }
  }

  return sub_10000959C(v63);
}

uint64_t sub_10086250C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v3[13] = swift_task_alloc();
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v4 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v3[18] = *(v5 + 64);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = type metadata accessor for Album();
  v3[22] = v6;
  v7 = *(v6 - 8);
  v3[23] = v7;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = *(v7 + 16);
  v3[26] = v8;
  v3[27] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8();
  v3[28] = type metadata accessor for MainActor();
  v3[29] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[30] = v10;
  v3[31] = v9;

  return _swift_task_switch(sub_100862750, v10, v9);
}

uint64_t sub_100862750(__n128 a1)
{
  PresentationSource.windowScene.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 delegate];

    if (v4 && (*(v1 + 80) = v4, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
    {
      v5 = *(v1 + 40);
      if (v5)
      {
        v6 = *(*sub_10000954C((v1 + 16), v5) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

        sub_10000959C((v1 + 16));
        goto LABEL_9;
      }
    }

    else
    {
      *(v1 + 48) = 0;
      *(v1 + 16) = 0u;
      *(v1 + 32) = 0u;
    }

    sub_1000095E8(v1 + 16, &unk_101184EA0, &unk_100EBFA20);
  }

  v6 = 0;
LABEL_9:
  *(v1 + 256) = v6;
  v7 = *(v1 + 192);
  v8 = *(v1 + 128);
  v9 = *(v1 + 136);
  v10 = *(v1 + 120);
  v11 = *(v1 + 96);
  v12.n128_f64[0] = (*(v1 + 208))(v7, *(v1 + 200), *(v1 + 176));
  *(v1 + 56) = sub_100863B84(v7, v12);
  *(v1 + 64) = v13;
  *(v1 + 72) = v14;
  sub_1000089F8(v11, v10, &unk_1011842D0, &qword_100ECBF00);
  v15 = *(v9 + 48);
  *(v1 + 264) = v15;
  *(v1 + 272) = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v15(v10, 1, v8) == 1)
  {
    sub_1000095E8(*(v1 + 120), &unk_1011842D0, &qword_100ECBF00);
    v16 = swift_task_alloc();
    *(v1 + 280) = v16;
    *v16 = v1;
    v16[1] = sub_100862BC4;
    v18 = *(v1 + 176);
    v19 = *(v1 + 112);

    return MusicPlaylistAddable.tracks.getter(v19, v18, v17);
  }

  else
  {
    (*(*(v1 + 184) + 8))(*(v1 + 200), *(v1 + 176));

    v39 = *(v1 + 56);
    v38 = *(v1 + 72);
    v21 = *(v1 + 256);
    v22 = *(v1 + 168);
    v24 = *(v1 + 144);
    v23 = *(v1 + 152);
    v25 = *(v1 + 128);
    v26 = *(v1 + 136);
    v27 = *(v1 + 104);
    v35 = v23;
    v36 = v27;
    v37 = *(v26 + 32);
    v37(v22);
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
    (*(v26 + 16))(v23, v22, v25);

    v29 = static MainActor.shared.getter();
    v30 = (*(v26 + 80) + 40) & ~*(v26 + 80);
    v31 = (v24 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v32[2] = v29;
    v32[3] = &protocol witness table for MainActor;
    v32[4] = v21;
    (v37)(v32 + v30, v35, v25);
    v33 = v32 + v31;
    *v33 = v39;
    *(v33 + 2) = v38;
    sub_1001F4F78(0, 0, v36, &unk_100EE5628, v32);

    (*(v26 + 8))(v22, v25);

    v34 = *(v1 + 8);

    return v34();
  }
}

uint64_t sub_100862BC4()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 248);
  v6 = *(v1 + 240);

  return _swift_task_switch(sub_100862D48, v6, v5);
}