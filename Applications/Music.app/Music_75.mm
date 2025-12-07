uint64_t sub_100862D48()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);

  v4 = v1(v3, 1, v2);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  if (v4 == 1)
  {
    v7 = *(v0 + 264);
    type metadata accessor for Track();
    MusicItemCollection.init(arrayLiteral:)();
    if (v7(v6, 1, v5) != 1)
    {
      sub_1000095E8(*(v0 + 112), &unk_1011842D0, &qword_100ECBF00);
    }
  }

  else
  {
    (*(*(v0 + 136) + 32))(*(v0 + 160), *(v0 + 112), *(v0 + 128));
  }

  v27 = *(v0 + 56);
  v26 = *(v0 + 72);
  v8 = *(v0 + 256);
  v9 = *(v0 + 168);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v0 + 128);
  v13 = *(v0 + 136);
  v14 = *(v0 + 104);
  v23 = v10;
  v24 = v14;
  v25 = *(v13 + 32);
  v25(v9);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v13 + 16))(v10, v9, v12);

  v16 = static MainActor.shared.getter();
  v17 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v8;
  (v25)(v19 + v17, v23, v12);
  v20 = v19 + v18;
  *v20 = v27;
  *(v20 + 2) = v26;
  sub_1001F4F78(0, 0, v24, &unk_100EE5628, v19);

  (*(v13 + 8))(v9, v12);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100863048(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v6 = type metadata accessor for Playlist();
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

  return _swift_task_switch(sub_10086328C, v10, v9);
}

uint64_t sub_10086328C(__n128 a1)
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
  *(v1 + 56) = sub_1008647BC(v7, v12);
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
    v16[1] = sub_100863700;
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
    sub_1001F4F78(0, 0, v36, &unk_100EE51D0, v32);

    (*(v26 + 8))(v22, v25);

    v34 = *(v1 + 8);

    return v34();
  }
}

uint64_t sub_100863700()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 248);
  v6 = *(v1 + 240);

  return _swift_task_switch(sub_100863884, v6, v5);
}

uint64_t sub_100863884()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);

  v4 = v1(v3, 1, v2);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  if (v4 == 1)
  {
    v7 = *(v0 + 264);
    type metadata accessor for Track();
    MusicItemCollection.init(arrayLiteral:)();
    if (v7(v6, 1, v5) != 1)
    {
      sub_1000095E8(*(v0 + 112), &unk_1011842D0, &qword_100ECBF00);
    }
  }

  else
  {
    (*(*(v0 + 136) + 32))(*(v0 + 160), *(v0 + 112), *(v0 + 128));
  }

  v27 = *(v0 + 56);
  v26 = *(v0 + 72);
  v8 = *(v0 + 256);
  v9 = *(v0 + 168);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v0 + 128);
  v13 = *(v0 + 136);
  v14 = *(v0 + 104);
  v23 = v10;
  v24 = v14;
  v25 = *(v13 + 32);
  v25(v9);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v13 + 16))(v10, v9, v12);

  v16 = static MainActor.shared.getter();
  v17 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v8;
  (v25)(v19 + v17, v23, v12);
  v20 = v19 + v18;
  *v20 = v27;
  *(v20 + 2) = v26;
  sub_1001F4F78(0, 0, v24, &unk_100EE51D0, v19);

  (*(v13 + 8))(v9, v12);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100863B84(char *a1, __n128 a2)
{
  v56 = type metadata accessor for Playlist.Entry.InternalItem();
  v55 = *(v56 - 8);
  __chkstk_darwin();
  v54 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v58 = &v52 - v4;
  v60 = type metadata accessor for Playlist.Entry();
  v59 = *(v60 - 8);
  __chkstk_darwin();
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v63 = &v52 - v6;
  v64 = type metadata accessor for Track();
  v62 = *(v64 - 8);
  __chkstk_darwin();
  v57 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v67 = &v52 - v8;
  v68 = type metadata accessor for MusicVideo();
  v66 = *(v68 - 8);
  __chkstk_darwin();
  v61 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v70 = &v52 - v10;
  v71 = type metadata accessor for Song();
  v69 = *(v71 - 8);
  __chkstk_darwin();
  v65 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v13 = &v52 - v12;
  v14 = type metadata accessor for Playlist();
  v72 = *(v14 - 8);
  __chkstk_darwin();
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v18 = &v52 - v17;
  v19 = type metadata accessor for Album();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74[3] = v23;
  v74[4] = &protocol witness table for Album;
  v24 = sub_10001C8B8(v74);
  v25 = *(v20 + 32);
  v25(v24, a1, v19);
  sub_100008FE4(v74, v73);
  sub_10010FC20(&qword_10118E0B0, &qword_100ECA430);
  v26 = swift_dynamicCast();
  v27 = *(v20 + 56);
  if (v26)
  {
    v27(v18, 0, 1, v19);
    v25(v22, v18, v19);
    Album.catalogID.getter();
    (*(v20 + 8))(v22, v19);
    sub_10000959C(v74);
    return 0;
  }

  v27(v18, 1, 1, v19);
  sub_1000095E8(v18, &unk_101184730, &unk_100ECB920);
  sub_100008FE4(v74, v73);
  v29 = swift_dynamicCast();
  v30 = v72;
  v31 = *(v72 + 56);
  if (v29)
  {
    v31(v13, 0, 1, v14);
    (*(v30 + 32))(v16, v13, v14);
    Playlist.catalogID.getter();
    (*(v30 + 8))(v16, v14);
    sub_10000959C(v74);
    return 1;
  }

  v31(v13, 1, 1, v14);
  sub_1000095E8(v13, &unk_1011814D0, &qword_100EC12A0);
  sub_100008FE4(v74, v73);
  v32 = v70;
  v33 = v71;
  v34 = swift_dynamicCast();
  v35 = v69;
  v36 = *(v69 + 56);
  if (v34)
  {
    v36(v32, 0, 1, v33);
    v37 = v65;
    (*(v35 + 32))(v65, v32, v33);
    Song.catalogID.getter();
LABEL_11:
    (*(v35 + 8))(v37, v33);
    sub_10000959C(v74);
    return 2;
  }

  v36(v32, 1, 1, v33);
  sub_1000095E8(v32, &unk_101183960, &unk_100EBCF90);
  sub_100008FE4(v74, v73);
  v38 = v67;
  v33 = v68;
  v39 = swift_dynamicCast();
  v35 = v66;
  v40 = *(v66 + 56);
  if (v39)
  {
    v40(v38, 0, 1, v33);
    v37 = v61;
    (*(v35 + 32))(v61, v38, v33);
    MusicVideo.catalogID.getter();
    goto LABEL_11;
  }

  v40(v38, 1, 1, v33);
  sub_1000095E8(v38, &unk_1011846B0, &unk_100ECB630);
  sub_100008FE4(v74, v73);
  v41 = v63;
  v33 = v64;
  v42 = swift_dynamicCast();
  v35 = v62;
  v43 = *(v62 + 56);
  if (v42)
  {
    v43(v41, 0, 1, v33);
    v37 = v57;
    (*(v35 + 32))(v57, v41, v33);
    Track.catalogID.getter();
    goto LABEL_11;
  }

  v43(v41, 1, 1, v33);
  sub_1000095E8(v41, &qword_10118A530, &qword_100EC64E0);
  sub_100008FE4(v74, v73);
  v44 = v58;
  v45 = v60;
  if (swift_dynamicCast())
  {
    v46 = v59;
    (*(v59 + 56))(v44, 0, 1, v45);
    v47 = v53;
    (*(v46 + 32))(v53, v44, v45);
    v48 = v54;
    Playlist.Entry.internalItem.getter();
    v49 = v55;
    v50 = v56;
    v51 = (*(v55 + 88))(v48, v56);
    if (v51 == enum case for Playlist.Entry.InternalItem.musicVideo(_:) || v51 == enum case for Playlist.Entry.InternalItem.song(_:))
    {
      (*(v49 + 8))(v48, v50);
      Playlist.Entry.catalogID.getter();
      (*(v46 + 8))(v47, v45);
      sub_10000959C(v74);
    }

    else
    {
      (*(v46 + 8))(v47, v45);
      sub_10000959C(v74);
      (*(v49 + 8))(v48, v50);
    }

    return 0;
  }

  else
  {
    sub_10000959C(v74);
    (*(v59 + 56))(v44, 1, 1, v45);
    sub_1000095E8(v44, &qword_101191570, &qword_100ECE0B0);
    return 0;
  }
}

uint64_t sub_1008647BC(char *a1, __n128 a2)
{
  v70 = a1;
  v53 = type metadata accessor for Playlist.Entry.InternalItem();
  v52 = *(v53 - 8);
  __chkstk_darwin();
  v51 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v55 = &v50 - v3;
  v57 = type metadata accessor for Playlist.Entry();
  v56 = *(v57 - 8);
  __chkstk_darwin();
  v50 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v60 = &v50 - v5;
  v61 = type metadata accessor for Track();
  v59 = *(v61 - 8);
  __chkstk_darwin();
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v64 = &v50 - v7;
  v65 = type metadata accessor for MusicVideo();
  v63 = *(v65 - 8);
  __chkstk_darwin();
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v68 = &v50 - v9;
  v69 = type metadata accessor for Song();
  v67 = *(v69 - 8);
  __chkstk_darwin();
  v62 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v12 = &v50 - v11;
  v13 = type metadata accessor for Playlist();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v66 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v17 = &v50 - v16;
  v18 = type metadata accessor for Album();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72[3] = v13;
  v72[4] = &protocol witness table for Playlist;
  v22 = sub_10001C8B8(v72);
  v23 = *(v14 + 32);
  v23(v22, v70, v13);
  sub_100008FE4(v72, v71);
  sub_10010FC20(&qword_10118E0B0, &qword_100ECA430);
  v24 = swift_dynamicCast();
  v25 = *(v19 + 56);
  if (v24)
  {
    v25(v17, 0, 1, v18);
    (*(v19 + 32))(v21, v17, v18);
    Album.catalogID.getter();
    (*(v19 + 8))(v21, v18);
    sub_10000959C(v72);
    return 0;
  }

  v25(v17, 1, 1, v18);
  sub_1000095E8(v17, &unk_101184730, &unk_100ECB920);
  sub_100008FE4(v72, v71);
  v27 = swift_dynamicCast();
  v28 = *(v14 + 56);
  if (v27)
  {
    v28(v12, 0, 1, v13);
    v29 = v66;
    v23(v66, v12, v13);
    Playlist.catalogID.getter();
    (*(v14 + 8))(v29, v13);
    sub_10000959C(v72);
    return 1;
  }

  v28(v12, 1, 1, v13);
  sub_1000095E8(v12, &unk_1011814D0, &qword_100EC12A0);
  sub_100008FE4(v72, v71);
  v30 = v68;
  v31 = v69;
  v32 = swift_dynamicCast();
  v33 = v67;
  v34 = *(v67 + 56);
  if (v32)
  {
    v34(v30, 0, 1, v31);
    v35 = v62;
    (*(v33 + 32))(v62, v30, v31);
    Song.catalogID.getter();
LABEL_11:
    (*(v33 + 8))(v35, v31);
    sub_10000959C(v72);
    return 2;
  }

  v34(v30, 1, 1, v31);
  sub_1000095E8(v30, &unk_101183960, &unk_100EBCF90);
  sub_100008FE4(v72, v71);
  v36 = v64;
  v31 = v65;
  v37 = swift_dynamicCast();
  v33 = v63;
  v38 = *(v63 + 56);
  if (v37)
  {
    v38(v36, 0, 1, v31);
    v35 = v58;
    (*(v33 + 32))(v58, v36, v31);
    MusicVideo.catalogID.getter();
    goto LABEL_11;
  }

  v38(v36, 1, 1, v31);
  sub_1000095E8(v36, &unk_1011846B0, &unk_100ECB630);
  sub_100008FE4(v72, v71);
  v39 = v60;
  v31 = v61;
  v40 = swift_dynamicCast();
  v33 = v59;
  v41 = *(v59 + 56);
  if (v40)
  {
    v41(v39, 0, 1, v31);
    v35 = v54;
    (*(v33 + 32))(v54, v39, v31);
    Track.catalogID.getter();
    goto LABEL_11;
  }

  v41(v39, 1, 1, v31);
  sub_1000095E8(v39, &qword_10118A530, &qword_100EC64E0);
  sub_100008FE4(v72, v71);
  v42 = v55;
  v43 = v57;
  if (swift_dynamicCast())
  {
    v44 = v56;
    (*(v56 + 56))(v42, 0, 1, v43);
    v45 = v50;
    (*(v44 + 32))(v50, v42, v43);
    v46 = v51;
    Playlist.Entry.internalItem.getter();
    v47 = v52;
    v48 = v53;
    v49 = (*(v52 + 88))(v46, v53);
    if (v49 == enum case for Playlist.Entry.InternalItem.musicVideo(_:) || v49 == enum case for Playlist.Entry.InternalItem.song(_:))
    {
      (*(v47 + 8))(v46, v48);
      Playlist.Entry.catalogID.getter();
      (*(v44 + 8))(v45, v43);
      sub_10000959C(v72);
    }

    else
    {
      (*(v44 + 8))(v45, v43);
      sub_10000959C(v72);
      (*(v47 + 8))(v46, v48);
    }

    return 0;
  }

  else
  {
    sub_10000959C(v72);
    (*(v56 + 56))(v42, 1, 1, v43);
    sub_1000095E8(v42, &qword_101191570, &qword_100ECE0B0);
    return 0;
  }
}

uint64_t sub_1008653FC(uint64_t a1, uint64_t a2)
{
  v105 = a2;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v95 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = &v84 - v4;
  __chkstk_darwin();
  v94 = &v84 - v5;
  __chkstk_darwin();
  v97 = &v84 - v6;
  __chkstk_darwin();
  v99 = &v84 - v7;
  __chkstk_darwin();
  v100 = &v84 - v8;
  v101 = type metadata accessor for Playlist();
  v102 = *(v101 - 8);
  __chkstk_darwin();
  v92 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = &v84 - v10;
  __chkstk_darwin();
  v91 = &v84 - v11;
  __chkstk_darwin();
  v98 = &v84 - v12;
  __chkstk_darwin();
  v89 = &v84 - v13;
  __chkstk_darwin();
  v90 = &v84 - v14;
  v15 = type metadata accessor for MusicPropertySource();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v84 - v19;
  v21 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  v23 = v16 + 2;
  v22 = v16[2];
  v104 = a1;
  v103 = v21;
  v106 = v22;
  v22(v20, a1 + v21, v15);
  v24 = enum case for MusicPropertySource.library(_:);
  v25 = (v16 + 13);
  v26 = v16[13];
  (v26)(v18, enum case for MusicPropertySource.library(_:), v15);
  LOBYTE(v21) = static MusicPropertySource.== infix(_:_:)();
  v29 = v16[1];
  v27 = v16 + 1;
  v28 = v29;
  v29(v18, v15);
  v29(v20, v15);
  if (v21)
  {
    v30 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    LODWORD(v88) = v24;
    v31 = v105;
    swift_beginAccess();
    v106(v20, v31 + v30, v15);
    (v26)(v18, v88, v15);
    LOBYTE(v30) = static MusicPropertySource.== infix(_:_:)();
    v28(v18, v15);
    v28(v20, v15);
    if (v30)
    {
      v86 = v27;
      v87 = v28;
      v85 = v26;
      v88 = v23;
      v32 = v25;
      v33 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
      v34 = v104;
      swift_beginAccess();
      v35 = v100;
      sub_1000089F8(v34 + v33, v100, &unk_1011814D0, &qword_100EC12A0);
      v36 = v102;
      v37 = *(v102 + 48);
      v38 = v101;
      if (v37(v35, 1, v101) != 1)
      {
        v39 = v36 + 32;
        v40 = *(v36 + 32);
        v41 = v90;
        v100 = v39;
        v84 = v40;
        v40(v90, v35, v38);
        v42 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
        v43 = v37;
        v44 = v105;
        swift_beginAccess();
        v45 = v44 + v42;
        v35 = v99;
        sub_1000089F8(v45, v99, &unk_1011814D0, &qword_100EC12A0);
        if (v43(v35, 1, v38) != 1)
        {
          v78 = v89;
          v84(v89, v35, v38);
          sub_100866F00(&unk_1011A4660, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
          v79 = static MusicItem<>.==~ infix(_:_:)();
          v80 = *(v102 + 8);
          v80(v78, v38);
          v80(v41, v38);
          if (v79)
          {
            v70 = *(v104 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent) ^ *(v105 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent) ^ 1;
            return v70 & 1;
          }

          goto LABEL_34;
        }

        (*(v102 + 8))(v41, v38);
      }

      sub_1000095E8(v35, &unk_1011814D0, &qword_100EC12A0);
      v25 = v32;
      v26 = v85;
      v28 = v87;
    }
  }

  v46 = v104;
  v47 = v103;
  v106(v20, v104 + v103, v15);
  LODWORD(v99) = enum case for MusicPropertySource.catalog(_:);
  v100 = v25;
  v26(v18);
  v48 = static MusicPropertySource.== infix(_:_:)();
  v28(v18, v15);
  v28(v20, v15);
  if ((v48 & 1) == 0)
  {
    v49 = v46 + v47;
    v50 = v106;
    v106(v20, v49, v15);
    v51 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
    swift_beginAccess();
    v50(v18, v46 + v51, v15);
    sub_100866F00(&qword_10119A868, &type metadata accessor for MusicPropertySource, &protocol conformance descriptor for MusicPropertySource);
    LOBYTE(v51) = dispatch thunk of static Equatable.== infix(_:_:)();
    v28(v18, v15);
    v28(v20, v15);
    if (v51)
    {
      goto LABEL_34;
    }
  }

  v52 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  v53 = v105;
  swift_beginAccess();
  v106(v20, v53 + v52, v15);
  (v26)(v18, v99, v15);
  v54 = static MusicPropertySource.== infix(_:_:)();
  v28(v18, v15);
  v28(v20, v15);
  if ((v54 & 1) == 0)
  {
    v55 = v53 + v52;
    v56 = v106;
    v106(v20, v55, v15);
    v57 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
    swift_beginAccess();
    v56(v18, v53 + v57, v15);
    sub_100866F00(&qword_10119A868, &type metadata accessor for MusicPropertySource, &protocol conformance descriptor for MusicPropertySource);
    LOBYTE(v57) = dispatch thunk of static Equatable.== infix(_:_:)();
    v28(v18, v15);
    v28(v20, v15);
    if (v57)
    {
      goto LABEL_34;
    }
  }

  v58 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  v59 = v104;
  swift_beginAccess();
  v60 = v97;
  sub_1000089F8(v59 + v58, v97, &unk_1011814D0, &qword_100EC12A0);
  v61 = v102;
  v62 = *(v102 + 48);
  v63 = v101;
  if (v62(v60, 1, v101) == 1)
  {
    v64 = v105;
  }

  else
  {
    v65 = *(v61 + 32);
    v65(v98, v60, v63);
    v66 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    v64 = v105;
    swift_beginAccess();
    v67 = v64 + v66;
    v60 = v94;
    sub_1000089F8(v67, v94, &unk_1011814D0, &qword_100EC12A0);
    if (v62(v60, 1, v63) != 1)
    {
      v71 = v91;
      v65(v91, v60, v63);
      sub_100866F00(&unk_1011A4660, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
      v72 = v98;
      v70 = static MusicItem<>.==~ infix(_:_:)();
      v73 = *(v61 + 8);
      v73(v71, v63);
      v73(v72, v63);
      return v70 & 1;
    }

    (*(v61 + 8))(v98, v63);
  }

  sub_1000095E8(v60, &unk_1011814D0, &qword_100EC12A0);
  v68 = v96;
  sub_1000089F8(v59 + v58, v96, &unk_1011814D0, &qword_100EC12A0);
  if (v62(v68, 1, v63) == 1)
  {
    sub_1000095E8(v68, &unk_1011814D0, &qword_100EC12A0);
  }

  else
  {
    v69 = v93;
    (*(v61 + 32))(v93, v68, v63);
    if (*(v64 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID + 8))
    {

      v70 = MusicItem.contains(_:)();

      (*(v61 + 8))(v69, v63);
      return v70 & 1;
    }

    (*(v61 + 8))(v69, v63);
  }

  v74 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  v75 = v64 + v74;
  v76 = v95;
  sub_1000089F8(v75, v95, &unk_1011814D0, &qword_100EC12A0);
  if (v62(v76, 1, v63) == 1)
  {
    sub_1000095E8(v76, &unk_1011814D0, &qword_100EC12A0);
  }

  else
  {
    v77 = v92;
    (*(v61 + 32))(v92, v76, v63);
    if (*(v59 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID + 8))
    {

      v70 = MusicItem.contains(_:)();

      (*(v61 + 8))(v77, v63);
      return v70 & 1;
    }

    (*(v61 + 8))(v77, v63);
  }

  v81 = *(v64 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID + 8);
  if (!v81 || (v82 = *(v59 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID + 8)) == 0)
  {
LABEL_34:
    v70 = 0;
    return v70 & 1;
  }

  if (*(v64 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID) == *(v59 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID) && v81 == v82)
  {
    v70 = 1;
  }

  else
  {
    v70 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v70 & 1;
}

char *sub_100866288(uint64_t a1, uint64_t a2, char *a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5, int a6)
{
  LODWORD(v104) = a6;
  v103 = a4;
  v101 = a3;
  v107 = a2;
  v95 = sub_10010FC20(&unk_101191A70, &unk_100EBF360);
  __chkstk_darwin();
  v94 = &v93 - v8;
  v9 = type metadata accessor for Playlist();
  v10 = *(v9 - 8);
  v105 = v9;
  v106 = v10;
  __chkstk_darwin();
  v102 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v98 = &v93 - v12;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v97 = &v93 - v13;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v15 = &v93 - v14;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v93 - v18;
  v20 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v99 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v93 - v22;
  __chkstk_darwin();
  v25 = &v93 - v24;
  v26 = Playlist.catalogID.getter();
  v28 = v27;
  v96 = type metadata accessor for ContainerDetail.Source;
  sub_10086772C(v107, v25, type metadata accessor for ContainerDetail.Source);
  v29 = type metadata accessor for URL();
  (*(*(v29 - 8) + 56))(v19, 1, 1, v29);
  v100 = a5;
  sub_1000089F8(a5, v17, &qword_101183A20, &unk_100EBCF80);
  v30 = objc_allocWithZone(type metadata accessor for PlaylistDetailDataSource(0));
  v31 = v28;
  v32 = v105;
  v93 = v25;
  v33 = v25;
  v34 = a1;
  v35 = sub_1008075B8(v26, v31, v33, v101, v103, v19, v17);
  v35[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsToResolveArtwork] = v104;
  v36 = v106;
  v103 = *(v106 + 16);
  v104 = v106 + 16;
  v103(v15, v34, v32);
  (*(v36 + 56))(v15, 0, 1, v32);
  v37 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  v38 = v35;
  sub_10006B010(v15, &v35[v37], &unk_1011814D0, &qword_100EC12A0);
  swift_endAccess();
  v39 = v97;
  Playlist.entries.getter();
  v40 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
  swift_beginAccess();
  sub_10006B010(v39, &v38[v40], &qword_10119A808, &unk_100ED91D0);
  swift_endAccess();
  sub_10086772C(v107, v23, v96);
  v97 = v20;
  v41 = 0;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v41 = v23[*(sub_10010FC20(&qword_10118A430, &qword_100EC8F70) + 48)];
    sub_1000095E8(v23, &unk_1011926F0, &qword_100ECF890);
  }

  v38[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent] = v41;
  sub_100820758();
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_1000060E4(v42, qword_1012193F8);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  v45 = os_log_type_enabled(v43, v44);
  v46 = v102;
  v47 = v98;
  if (v45)
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "╭ Creating playlist detail data source", v48, 2u);
  }

  v103(v47, v34, v32);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  v51 = os_log_type_enabled(v49, v50);
  v101 = v34;
  if (v51)
  {
    v52 = v46;
    v53 = v47;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v111[0] = v55;
    *v54 = 136446210;
    sub_100866F00(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v32;
    v59 = v58;
    v60 = v53;
    v46 = v52;
    v61 = *(v106 + 8);
    v61(v60, v57);
    v62 = sub_1000105AC(v56, v59, v111);

    *(v54 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v49, v50, "| Playlist: %{public}s", v54, 0xCu);
    sub_10000959C(v55);
  }

  else
  {

    v61 = *(v106 + 8);
    v61(v47, v32);
  }

  v63 = v99;
  sub_10086772C(v107, v99, type metadata accessor for ContainerDetail.Source);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v111[0] = v67;
    *v66 = 136446210;
    sub_10086772C(v63, v93, type metadata accessor for ContainerDetail.Source);
    v68 = String.init<A>(describing:)();
    v69 = v63;
    v70 = v68;
    v72 = v71;
    sub_100867794(v69, type metadata accessor for ContainerDetail.Source);
    v73 = sub_1000105AC(v70, v72, v111);

    *(v66 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v64, v65, "| Source: %{public}s", v66, 0xCu);
    sub_10000959C(v67);
  }

  else
  {

    sub_100867794(v63, type metadata accessor for ContainerDetail.Source);
  }

  v74 = v101;
  v75 = v105;
  v103(v46, v101, v105);
  v76 = v38;
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v110 = v80;
    *v79 = 136446210;
    v81 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v76[v81], &v108, &unk_1011926C0, &unk_100ECF870);
    if (v109)
    {
      sub_1000095E8(&v108, &unk_1011926C0, &unk_100ECF870);
      v82 = 1;
      v83 = v94;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v108, &unk_1011926C0, &unk_100ECF870);
      v83 = v94;
      if (Strong)
      {
        v85 = [Strong traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        MusicLibrary.state<A>(for:)();

        dispatch thunk of MusicLibrary.ItemState.addStatus.getter();

        v82 = 0;
      }

      else
      {
        v82 = 1;
      }
    }

    v86 = type metadata accessor for MusicLibrary.AddStatus();
    (*(*(v86 - 8) + 56))(v83, v82, 1, v86);
    v87 = String.init<A>(describing:)();
    v89 = v88;
    v90 = v105;
    v61(v102, v105);
    v91 = sub_1000105AC(v87, v89, &v110);

    *(v79 + 4) = v91;
    _os_log_impl(&_mh_execute_header, v77, v78, "╰ Add Status: %{public}s", v79, 0xCu);
    sub_10000959C(v80);

    sub_1000095E8(v100, &qword_101183A20, &unk_100EBCF80);
    sub_100867794(v107, type metadata accessor for ContainerDetail.Source);
    v61(v101, v90);
  }

  else
  {

    sub_1000095E8(v100, &qword_101183A20, &unk_100EBCF80);
    sub_100867794(v107, type metadata accessor for ContainerDetail.Source);
    v61(v74, v75);
    v61(v46, v75);
  }

  return v76;
}

uint64_t sub_100866F00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100866FA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  v5 = *(*v2 + 128);
  v6 = type metadata accessor for Album();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + *(*v2 + 136)) = 0;
  *(v2 + *(*v2 + 144)) = 0;
  *(v2 + *(*v2 + 152)) = 0;
  *(v2 + *(*v2 + 160)) = 0;
  v7 = *(*v2 + 168);
  *(v2 + v7) = 0;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  sub_1002190E0(a2, v2 + v5, &unk_101184730, &unk_100ECB920);
  swift_endAccess();
  v8 = sub_1008040A0();
  v9 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for GestureRecognizerHandler();
  swift_allocObject();
  v10 = sub_100009F78(0, &qword_101189DE8, UILongPressGestureRecognizer_ptr);
  *(v3 + v7) = GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(v8, sub_10086D3DC, v9, v10);

  sub_100801CC4();
  sub_1000095E8(a2, &unk_101184730, &unk_100ECB920);
  return v3;
}

uint64_t sub_1008671C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  v5 = *(*v2 + 128);
  v6 = type metadata accessor for Playlist();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + *(*v2 + 136)) = 0;
  *(v2 + *(*v2 + 144)) = 0;
  *(v2 + *(*v2 + 152)) = 0;
  *(v2 + *(*v2 + 160)) = 0;
  v7 = *(*v2 + 168);
  *(v2 + v7) = 0;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  sub_1002190E0(a2, v2 + v5, &unk_1011814D0, &qword_100EC12A0);
  swift_endAccess();
  v8 = sub_1008040A0();
  v9 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for GestureRecognizerHandler();
  swift_allocObject();
  v10 = sub_100009F78(0, &qword_101189DE8, UILongPressGestureRecognizer_ptr);
  *(v3 + v7) = GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(v8, sub_10086ABF0, v9, v10);

  sub_1008021C4();
  sub_1000095E8(a2, &unk_1011814D0, &qword_100EC12A0);
  return v3;
}

char *sub_100867410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a4;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v30 - v13;
  type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = 0;
  swift_storeEnumTagMultiPayload();
  v32 = a5;
  v17 = a5;
  v18 = a6;
  sub_1000089F8(v17, v14, &qword_101183A20, &unk_100EBCF80);
  sub_1000089F8(a6, v12, &qword_101183A20, &unk_100EBCF80);
  objc_allocWithZone(type metadata accessor for PlaylistDetailDataSource(0));

  v19 = sub_1008075B8(a1, a2, v16, a3, v31, v14, v12);
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000060E4(v20, qword_1012193F8);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v33 = v24;
    *v23 = 136446210;
    v25 = MusicItemID.description.getter();
    v27 = v26;

    v28 = sub_1000105AC(v25, v27, &v33);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Creating playlist detail data source with playlist id: %{public}s", v23, 0xCu);
    sub_10000959C(v24);
  }

  else
  {
  }

  sub_1000095E8(v18, &qword_101183A20, &unk_100EBCF80);
  sub_1000095E8(v32, &qword_101183A20, &unk_100EBCF80);
  return v19;
}

uint64_t sub_10086772C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100867794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100867834()
{
  v1 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1008679B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for IndexPath() - 8);
  return sub_10084FC48(a1, *(v3 + 16), v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a2, a3);
}

uint64_t sub_100867AA0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for IndexPath() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_10084FF48(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100867C0C()
{
  v1 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100867D70(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for IndexPath() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_10084FA10(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100867F6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&qword_1011A4718, &qword_100EE4BB0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100008F30;

  return sub_100806FD8(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_1008680AC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100557FB0(v8, a1, v4, v5, v6, v7);
}

double sub_1008681AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, double))
{
  v25 = a3;
  v26 = a4;
  v24 = a1;
  v5 = type metadata accessor for IndexPath();
  v20 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Date();
  v9 = *(v22 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v21 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v19 - v11;
  Date.init()();
  v23 = *(v4 + 88);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v8, v24, v5);
  v14 = v22;
  (*(v9 + 16))(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v22);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = (v7 + *(v9 + 80) + v15) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  (*(v6 + 32))(v17 + v15, v8, v20);
  (*(v9 + 32))(v17 + v16, v21, v14);

  sub_100534EE4(v26, v17);

  (*(v9 + 8))(v12, v14);

  return result;
}

unint64_t sub_10086843C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v3 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  if (*(v3 + 16) <= result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v4 = *(v3 + result + 32);
  if (v4 <= 4)
  {
    if (v4 > 2)
    {
      if (v4 != 3)
      {
        return *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingNoContentSection);
      }

      v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
      swift_beginAccess();
      return *(*(v2 + v6) + 16);
    }

    if (!v4)
    {
      return sub_100840F90() != 2;
    }

    if (v4 == 2)
    {

      return sub_100849C78();
    }

LABEL_40:
    v5 = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return v5;
  }

  if (v4 <= 6)
  {
    if (v4 == 5)
    {
      return *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingAddMusicSection);
    }

    else
    {
      return *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingDetailSection);
    }
  }

  if (v4 == 9)
  {
    return *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingSuggestedSongsSection);
  }

  if (v4 != 10)
  {
    goto LABEL_40;
  }

  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v7, v12, &unk_1011926C0, &unk_100ECF870);
  if (v13)
  {
    sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_isShowingRelatedContent];

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_1000089F8(v2 + v7, v12, &unk_1011926C0, &unk_100ECF870);
  if (v13)
  {
    sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v10 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
    if (v10)
    {
      v11 = sub_1006A3A7C();

      if (v11)
      {
        if (v11 >> 62)
        {
          goto LABEL_39;
        }

        v11 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_32;
      }

      goto LABEL_34;
    }
  }

  v11 = 0;
LABEL_34:
  while (1)
  {
    v5 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    v11 = _CocoaArrayWrapper.endIndex.getter();
LABEL_32:
  }

  return v5;
}

BOOL sub_100868730(uint64_t a1)
{
  v2 = IndexPath.section.getter();
  v3 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  if (v4)
  {
    v6 = (v3 + 32);
    while (1)
    {
      v7 = *v6++;
      if (v7 == 2)
      {
        break;
      }

      --v2;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    if (!v2)
    {
      return 1;
    }
  }

LABEL_7:
  v8 = IndexPath.section.getter();
  v9 = *(v3 + 16);
  if (!v9)
  {
    return 0;
  }

  while (1)
  {
    v10 = *v5++;
    if (v10 == 5)
    {
      break;
    }

    --v8;
    if (!--v9)
    {
      return 0;
    }
  }

  return v8 == 0;
}

void *sub_1008687D8(char *a1, char *a2)
{
  v103 = a2;
  v109 = a1;
  v2 = type metadata accessor for Playlist.Entry();
  v104 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v106 = &v97 - v5;
  __chkstk_darwin();
  v7 = &v97 - v6;
  v105 = sub_10010FC20(&unk_1011A4720, &unk_100EE4BE0);
  __chkstk_darwin();
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v97 - v10;
  __chkstk_darwin();
  v12 = &v97 - v11;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v14 = &v97 - v13;
  v15 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v97 - v19;
  sub_1000089F8(v109, v14, &qword_10119A808, &unk_100ED91D0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1000095E8(v14, &qword_10119A808, &unk_100ED91D0);
    (*(v16 + 16))(v18, v103, v15);
    sub_100020674(&unk_10119F050, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Sequence.makeIterator()();
    v21 = *(v105 + 36);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    v22 = (v104 + 16);
    v23 = (v104 + 8);
    v109 = _swiftEmptyArrayStorage;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      if (*&v9[v21] == v111)
      {
        break;
      }

      v24 = dispatch thunk of Collection.subscript.read();
      (*v22)(v4);
      v24(&v111, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v25 = Playlist.Entry.catalogID.getter();
      v27 = v26;
      (*v23)(v4, v2);
      if (v27)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_10049AFF8(0, *(v109 + 2) + 1, 1, v109);
        }

        v29 = *(v109 + 2);
        v28 = *(v109 + 3);
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          v107 = *(v109 + 2);
          v108 = v29 + 1;
          v33 = sub_10049AFF8((v28 > 1), v29 + 1, 1, v109);
          v29 = v107;
          v30 = v108;
          v109 = v33;
        }

        v31 = v109;
        *(v109 + 2) = v30;
        v32 = &v31[16 * v29];
        *(v32 + 4) = v25;
        *(v32 + 5) = v27;
      }
    }

    sub_1000095E8(v9, &unk_1011A4720, &unk_100EE4BE0);
    v65 = sub_100670388(v109);

    return v65;
  }

  (*(v16 + 32))(v20, v14, v15);
  v108 = sub_10010DE80(_swiftEmptyArrayStorage);
  v110 = &_swiftEmptySetSingleton;
  v99 = v16;
  v100 = *(v16 + 16);
  v101 = v16 + 16;
  v100(v12, v20, v15);
  v34 = *(v105 + 36);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  v102 = v20;
  dispatch thunk of Collection.startIndex.getter();
  v109 = (v104 + 16);
  v35 = (v104 + 8);
  while (1)
  {
    while (1)
    {
      do
      {
        dispatch thunk of Collection.endIndex.getter();
        if (*&v12[v34] == v111)
        {
          sub_1000095E8(v12, &unk_1011A4720, &unk_100EE4BE0);
          v67 = v107;
          v100(v107, v103, v15);
          v68 = *(v105 + 36);
          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          if (*(v67 + v68) == v111)
          {
LABEL_41:
            v69 = v102;
LABEL_42:
            sub_1000095E8(v67, &unk_1011A4720, &unk_100EE4BE0);
            (*(v99 + 8))(v69, v15);

            return v110;
          }

          v70 = v106;
          while (1)
          {
            while (1)
            {
              v71 = dispatch thunk of Collection.subscript.read();
              (*v109)(v70);
              v71(&v111, 0);
              dispatch thunk of Collection.formIndex(after:)();
              v72 = Playlist.Entry.catalogID.getter();
              v74 = v73;
              (*v35)(v70, v2);
              if (!v74)
              {
                goto LABEL_45;
              }

              if (!*(v108 + 16) || (v75 = sub_100019C10(v72, v74), v76 = v108, (v77 & 1) == 0))
              {
                sub_1003B3B90(&v111, v72, v74);

                goto LABEL_45;
              }

              v78 = *(*(v108 + 56) + 8 * v75);
              v79 = v78 - 1;
              if (v78 != 1)
              {
                break;
              }

              v80 = sub_100019C10(v72, v74);
              v82 = v81;

              v70 = v106;
              if (v82)
              {
                v83 = v108;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v111 = v83;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  sub_1006CAB2C();
                  v83 = v111;
                }

                v108 = v83;
                sub_100409F88(v80, v83, v85);
                goto LABEL_66;
              }

LABEL_45:
              v67 = v107;
              dispatch thunk of Collection.endIndex.getter();
              if (*(v67 + v68) == v111)
              {
                goto LABEL_41;
              }
            }

            if (__OFSUB__(v78, 1))
            {
              goto LABEL_73;
            }

            LODWORD(v105) = swift_isUniquelyReferenced_nonNull_native();
            v111 = v76;
            v86 = sub_100019C10(v72, v74);
            v88 = *(v108 + 16);
            v89 = (v87 & 1) == 0;
            v54 = __OFADD__(v88, v89);
            v90 = v88 + v89;
            if (v54)
            {
              goto LABEL_74;
            }

            if (*(v108 + 24) < v90)
            {
              break;
            }

            if (v105)
            {
              goto LABEL_60;
            }

            v105 = v86;
            LODWORD(v108) = v87;
            sub_1006CAB2C();
            v86 = v105;
            if ((v108 & 1) == 0)
            {
LABEL_63:
              v93 = v111;
              v111[(v86 >> 6) + 8] |= 1 << v86;
              v94 = (v93[6] + 16 * v86);
              *v94 = v72;
              v94[1] = v74;
              *(v93[7] + 8 * v86) = v79;
              v95 = v93[2];
              v54 = __OFADD__(v95, 1);
              v96 = v95 + 1;
              if (v54)
              {
                goto LABEL_75;
              }

              v108 = v93;
              v93[2] = v96;
              goto LABEL_65;
            }

LABEL_61:
            v92 = v86;

            v108 = v111;
            *(v111[7] + 8 * v92) = v79;
LABEL_65:
            v70 = v106;
LABEL_66:
            v67 = v107;
            v69 = v102;
            dispatch thunk of Collection.endIndex.getter();
            if (*(v67 + v68) == v111)
            {
              goto LABEL_42;
            }
          }

          LODWORD(v108) = v87;
          sub_1006C5104(v90, v105);
          v86 = sub_100019C10(v72, v74);
          v91 = v87 & 1;
          LOBYTE(v87) = v108;
          if ((v108 & 1) != v91)
          {
            goto LABEL_76;
          }

LABEL_60:
          if ((v87 & 1) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_61;
        }

        v36 = dispatch thunk of Collection.subscript.read();
        (*v109)(v7);
        v36(&v111, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v37 = Playlist.Entry.catalogID.getter();
        v39 = v38;
        (*v35)(v7, v2);
      }

      while (!v39);
      v40 = v108;
      if (!*(v108 + 16))
      {
        break;
      }

      v41 = sub_100019C10(v37, v39);
      v40 = v108;
      if ((v42 & 1) == 0)
      {
        break;
      }

      v43 = *(*(v108 + 56) + 8 * v41);
      v104 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_70;
      }

      LODWORD(v98) = swift_isUniquelyReferenced_nonNull_native();
      v111 = v40;
      v45 = sub_100019C10(v37, v39);
      v46 = *(v108 + 16);
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_71;
      }

      if (*(v108 + 24) >= v48)
      {
        if (v98)
        {
          if ((v44 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v98 = v45;
          LODWORD(v108) = v44;
          sub_1006CAB2C();
          v45 = v98;
          if ((v108 & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        LODWORD(v108) = v44;
        sub_1006C5104(v48, v98);
        v49 = sub_100019C10(v37, v39);
        if ((v108 & 1) != (v50 & 1))
        {
          goto LABEL_76;
        }

        v45 = v49;
        if ((v108 & 1) == 0)
        {
LABEL_20:
          v51 = v111;
          v111[(v45 >> 6) + 8] |= 1 << v45;
          v52 = (v51[6] + 16 * v45);
          *v52 = v37;
          v52[1] = v39;
          *(v51[7] + 8 * v45) = v104;
          v53 = v51[2];
          v54 = __OFADD__(v53, 1);
          v55 = v53 + 1;
          if (v54)
          {
            goto LABEL_72;
          }

          goto LABEL_28;
        }
      }

      v108 = v111;
      *(v111[7] + 8 * v45) = v104;
    }

    LODWORD(v104) = swift_isUniquelyReferenced_nonNull_native();
    v111 = v40;
    v57 = sub_100019C10(v37, v39);
    v58 = *(v108 + 16);
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      break;
    }

    if (*(v108 + 24) >= v60)
    {
      if (v104)
      {
        if ((v56 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v104 = v57;
        LODWORD(v108) = v56;
        sub_1006CAB2C();
        v57 = v104;
        if ((v108 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_31:

      v108 = v111;
      *(v111[7] + 8 * v57) = 1;
    }

    else
    {
      LODWORD(v108) = v56;
      sub_1006C5104(v60, v104);
      v61 = sub_100019C10(v37, v39);
      if ((v108 & 1) != (v62 & 1))
      {
        goto LABEL_76;
      }

      v57 = v61;
      if (v108)
      {
        goto LABEL_31;
      }

LABEL_27:
      v51 = v111;
      v111[(v57 >> 6) + 8] |= 1 << v57;
      v63 = (v51[6] + 16 * v57);
      *v63 = v37;
      v63[1] = v39;
      *(v51[7] + 8 * v57) = 1;
      v64 = v51[2];
      v54 = __OFADD__(v64, 1);
      v55 = v64 + 1;
      if (v54)
      {
        goto LABEL_69;
      }

LABEL_28:
      v108 = v51;
      v51[2] = v55;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100869470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008694FC(uint64_t a1)
{
  v3 = *(sub_10010FC20(&qword_10119A808, &unk_100ED91D0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_100008F30;

  return sub_10084371C(a1, v7, v8, v9, v1 + v4, v11, v12, v13);
}

double sub_100869670(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_100869688(uint64_t a1)
{
  v4 = *(sub_10010FC20(&unk_10118BCE0, &qword_100EC6450) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1008442E0(v10, a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10086978C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100008F30;

  return sub_10083F60C(a1, a2, v2);
}

uint64_t sub_100869838(uint64_t a1, char a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100008F30;

  return sub_10083EE34(a1, a2, v2);
}

uint64_t sub_10086991C(uint64_t a1)
{
  v4 = *(type metadata accessor for ContainerDetail.AttributionItem(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10069C06C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100869A84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100839924(a1, v4, v5, v6);
}

uint64_t sub_100869B38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_10083AA5C(a1, v4, v5, v7, v6);
}

uint64_t sub_100869BF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100838068(a1, v4, v5, v6);
}

uint64_t sub_100869CAC(uint64_t a1)
{
  v4 = *(sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100838B68(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100869DB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100835AF0(a1, v4, v5, v6);
}

uint64_t sub_100869E6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_10083384C(a1, v8, v9, v10, v11, v1 + v6, v12, v13);
}

uint64_t sub_100869FBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_100831F14(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t sub_10086A168(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0) - 8);
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

  return sub_100830C3C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_10086A2D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100831028(a1, v4, v5, v6);
}

uint64_t sub_10086A398(uint64_t a1)
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

  return sub_10082A640(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10086A460(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10086A4B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_10082B1E8(a1, v4, v5, v7, v6);
}

uint64_t sub_10086A57C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_100829160();
}

uint64_t sub_10086A668@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_10086A6C8()
{
  v1 = *(type metadata accessor for Playlist() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100822850(v3, v4, v0 + v2, v5);
}

uint64_t sub_10086A758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10086A848(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1008037C0(a1, v4, v5, v7, v6);
}

uint64_t sub_10086A954()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64) + v2 + 7;
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

  v6 = v3 & 0xFFFFFFFFFFFFFFF8;
  v7 = (v4 + *(v1 + 28));
  if (v7[3])
  {
    sub_10000959C(v7);
  }

  v8 = (v4 + *(v1 + 32));
  if (v8[3])
  {
    sub_10000959C(v8);
  }

  v9 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v0 + v6 + 8);
  if (v10 >= 4)
  {
  }

  v11 = v0 + v9;
  swift_unknownObjectWeakDestroy();
  v12 = *(v0 + v9 + 48);
  if (v12 != 255)
  {
    sub_10012B804(*(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), v12);
  }

  if (*(v11 + 64))
  {
  }

  if (*(v11 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10086AB2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10081B1BC(a1, v4, v5, v6);
}

uint64_t sub_10086ABF8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10010FC20(&unk_1011842D0, &qword_100ECBF00) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_1008015B0(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_10086ADA0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_1006A7330(a1, v7, v8, v9, v1 + v6, v11, v12, v13);
}

uint64_t sub_10086AF08(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return swift_deallocObject();
}

uint64_t sub_10086AF6C(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100816F10(a1, v1 + v5, v1 + v6);
}

uint64_t sub_10086B070(uint64_t a1)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100816908(a1, v1 + v5, v8, v1 + v7);
}

uint64_t sub_10086B18C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1008534B8(a1, v4, v5, v7, v6);
}

uint64_t sub_10086B24C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100008F30;

  return sub_100853850(a1, v1);
}

uint64_t sub_10086B2E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100008F30;

  return sub_1008129AC(a1, v1);
}

unint64_t sub_10086B3F0(uint64_t a1)
{
  v3 = *(type metadata accessor for Playlist.Entry() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  return sub_1008480C8(a1, *(v1 + 16), (v1 + v4), v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t sub_10086B5C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10083F3AC();
  *a1 = result;
  return result;
}

unint64_t sub_10086B5F4()
{
  result = qword_1011A4B58;
  if (!qword_1011A4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4B58);
  }

  return result;
}

id sub_10086B65C(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for Playlist.Entry.InternalItem();
  v63 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v9 = &v50 - v8;
  v10 = type metadata accessor for Playlist.Entry();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v64 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v50 - v13;
  v14 = *(type metadata accessor for IndexPath() - 8);
  __chkstk_darwin();
  v18 = __chkstk_darwin();
  if (!*(a1 + 16))
  {
    return 0;
  }

  isa = v5;
  v60 = v17;
  v61 = v11;
  v62 = v10;
  v19 = *(v14 + 16);
  v20 = *(v14 + 80);
  v21 = a1 + ((v20 + 32) & ~v20);
  v22 = &v50 - v15;
  v66 = v16;
  v19(&v50 - v15, v21, v16, v18);
  v67 = v22;
  IndexPath.section.getter();
  Array.subscript.getter(&type metadata for ContainerDetail.Section, &aBlock);
  if (aBlock != 2)
  {
    (*(v14 + 8))(v67, v66);
    return 0;
  }

  v56 = v19;
  v57 = v20;
  v58 = v14;
  v24 = v67;
  sub_10085939C(v9);
  v25 = v61;
  v26 = v62;
  if ((*(v61 + 48))(v9, 1, v62) == 1)
  {
    (*(v58 + 8))(v24, v66);
    sub_1000095E8(v9, &qword_101191570, &qword_100ECE0B0);
    return 0;
  }

  else
  {
    v27 = v25 + 32;
    v28 = v65;
    v54 = *(v25 + 32);
    v29.n128_f64[0] = v54();
    v55 = v3;
    v30 = sub_100841824(v28, v29);
    if (v30)
    {
      v31 = v30;
      v51 = ~v57;
      Playlist.Entry.internalItem.getter();
      v32 = sub_10024B50C();
      v63[1](v7, isa);
      v63 = v31;
      v33 = Playlist.Entry.supportsContainerNavigation(itemState:)() & 1;
      v34 = v33 == *(v32 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron);
      v53 = v32;
      v52 = v27;
      if (v34)
      {
        *(v32 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = v33;
      }

      else
      {
        swift_getKeyPath();
        __chkstk_darwin();
        *(&v50 - 2) = v32;
        *(&v50 - 8) = v33;
        aBlock = v32;
        sub_100866F00(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v28 = v65;
      }

      v35 = v67;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = v61;
      v36 = v62;
      v38 = v64;
      (*(v61 + 16))(v64, v28, v62);
      v39 = v60;
      v40 = v66;
      v56(v60, v35, v66);
      v41 = (*(v37 + 80) + 24) & ~*(v37 + 80);
      v42 = (v12 + v57 + v41) & v51;
      v43 = swift_allocObject();
      *(v43 + 16) = v50;
      (v54)(v43 + v41, v38, v36);
      v44 = v58;
      (*(v58 + 32))(v43 + v42, v39, v40);
      v45 = objc_opt_self();
      v72 = sub_100218654;
      v73 = v53;
      aBlock = _NSConcreteStackBlock;
      v69 = 1107296256;
      v70 = sub_100747E6C;
      v71 = &unk_1010C2B80;
      v46 = _Block_copy(&aBlock);
      swift_retain_n();

      v72 = sub_10086E39C;
      v73 = v43;
      aBlock = _NSConcreteStackBlock;
      v69 = 1107296256;
      v70 = sub_100747EBC;
      v71 = &unk_1010C2BA8;
      v47 = _Block_copy(&aBlock);

      v48 = isa;
      v49 = [v45 configurationWithIdentifier:isa previewProvider:v46 actionProvider:v47];

      _Block_release(v47);
      _Block_release(v46);

      (*(v61 + 8))(v65, v62);
      (*(v44 + 8))(v67, v66);

      return v49;
    }

    else
    {
      (*(v25 + 8))(v28, v26);
      (*(v58 + 8))(v67, v66);
      return 0;
    }
  }
}

id sub_10086BE48(void *a1, void *a2)
{
  v3 = v2;
  v72 = a2;
  sub_10010FC20(&qword_1011819F8, &qword_100EBD3E8);
  __chkstk_darwin();
  v66 = &v57 - v5;
  v6 = type metadata accessor for MusicPropertySource();
  v7 = *(v6 - 8);
  v68 = v6;
  v69 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v64 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v57 - v9;
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v11 = &v57 - v10;
  v12 = type metadata accessor for Playlist.Entry();
  v13 = *(v12 - 8);
  v70 = v12;
  v71 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v65 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v57 - v15;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v18 = &v57 - v17;
  v19 = type metadata accessor for IndexPath();
  v20 = *(v19 - 8);
  *&v21 = __chkstk_darwin().n128_u64[0];
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = [a1 identifier];
  sub_10010FC20(&unk_1011846A0, &unk_100EC8F60);
  v24 = swift_dynamicCast();
  v25 = *(v20 + 56);
  if ((v24 & 1) == 0)
  {
    v25(v18, 1, 1, v19);
    sub_1000095E8(v18, &unk_10118BCE0, &qword_100EC6450);
    return [v72 setPreferredCommitStyle:0];
  }

  v25(v18, 0, 1, v19);
  (*(v20 + 32))(v23, v18, v19);
  IndexPath.section.getter();
  Array.subscript.getter(&type metadata for ContainerDetail.Section, &aBlock);
  if (aBlock != 2)
  {
LABEL_17:
    (*(v20 + 8))(v23, v19);
    return [v72 setPreferredCommitStyle:0];
  }

  sub_10085939C(v11);
  v26 = v70;
  v27 = v71;
  if ((*(v71 + 48))(v11, 1, v70) == 1)
  {
    (*(v20 + 8))(v23, v19);
    sub_1000095E8(v11, &qword_101191570, &qword_100ECE0B0);
    return [v72 setPreferredCommitStyle:0];
  }

  v62 = *(v27 + 32);
  v63 = v27 + 32;
  v28.n128_f64[0] = v62(v16, v11, v26);
  v29 = sub_100841824(v16, v28);
  if (!v29)
  {
    (*(v27 + 8))(v16, v26);
    goto LABEL_17;
  }

  v30 = v29;
  v31 = v16;
  if ((Playlist.Entry.supportsContainerNavigation(itemState:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v32 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v3 + v32, &aBlock, &unk_1011926C0, &unk_100ECF870);
  if (v74)
  {

    sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
LABEL_16:
    (*(v71 + 8))(v31, v70);
    goto LABEL_17;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
  if (!Strong || (v34 = sub_10003169C(), Strong, (v61 = v34) == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  v35 = v66;
  v60 = v30;
  MusicLibrary.ItemState.containerLoadingSource.getter(v66);
  v37 = v68;
  v36 = v69;
  if ((*(v69 + 48))(v35, 1, v68) != 1)
  {
    v58 = *(v36 + 32);
    v59 = v36 + 32;
    v39 = v37;
    v40 = v67;
    v41 = v39;
    v58();
    (*(v71 + 16))(v65, v31, v70);
    v42 = v36;
    v43 = *(v36 + 16);
    v44 = v64;
    v45 = v40;
    v46 = v41;
    v43(v64, v45, v41);
    v47 = *(v71 + 80);
    v66 = v31;
    v48 = (v47 + 16) & ~v47;
    v49 = (v14 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = *(v42 + 80);
    v51 = v61;
    v52 = (v50 + v49 + 8) & ~v50;
    v53 = swift_allocObject();
    v54 = v53 + v48;
    v55 = v70;
    v62(v54, v65, v70);
    *(v53 + v49) = v51;
    (v58)(v53 + v52, v44, v46);
    v77 = sub_10086C9B8;
    v78 = v53;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_10002BC98;
    v76 = &unk_1010C2AE0;
    v56 = _Block_copy(&aBlock);

    [v72 addAnimations:v56];

    _Block_release(v56);

    (*(v69 + 8))(v67, v46);
    (*(v71 + 8))(v66, v55);
    return (*(v20 + 8))(v23, v19);
  }

  (*(v71 + 8))(v31, v70);
  (*(v20 + 8))(v23, v19);
  sub_1000095E8(v35, &qword_1011819F8, &qword_100EBD3E8);
  return [v72 setPreferredCommitStyle:0];
}

double sub_10086C6A8(void *a1, uint64_t a2)
{
  v3 = v2;
  IndexPath.section.getter();
  Array.subscript.getter(&type metadata for ContainerDetail.Section, v11);
  if (v11[0] > 5u)
  {
    if (v11[0] == 6)
    {
      if (*(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsDurationUpdate) == 1)
      {
        *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsDurationUpdate) = 0;
        sub_10084AC50();
      }
    }

    else if (v11[0] == 9)
    {
      v8 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsCell);
      *(v3 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsCell) = a1;
      v9 = a1;
    }
  }

  else if (v11[0])
  {
    if (v11[0] == 2)
    {
      sub_1008377B0(a2);
      v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v3 + v7, v12, &unk_1011926C0, &unk_100ECF870);
      if (v12[8])
      {
        sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
        if (Strong)
        {
          sub_1006A44A0();

          sub_100804470(a1, a2);
        }
      }
    }
  }

  else
  {
    sub_1008412FC();
  }

  return result;
}

void sub_10086C82C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v5 = IndexPath.section.getter();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >= *(v4 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (*(v4 + v5 + 32) == 2)
  {
    v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v2 + v6, v8, &unk_1011926C0, &unk_100ECF870);
    if (v8[8])
    {
      sub_1000095E8(v8, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v8, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        sub_1006A44A0();

        sub_1008681AC(a1, &unk_1010C2A50, &unk_1010C2A78, sub_10086C964);
      }
    }
  }
}

uint64_t sub_10086C9B8()
{
  v1 = *(type metadata accessor for Playlist.Entry() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for MusicPropertySource() - 8);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80)));

  return sub_100812FE8(v0 + v2, v5, v6);
}

uint64_t sub_10086CA94(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MusicVideo() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MusicPropertySource() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_100813A58(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_10086CBF4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for MusicPropertySource();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_10086CD54(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Song() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MusicPropertySource() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_1008136B0(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_10086CEB4()
{
  v1 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_10012B804(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10086CFCC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&unk_1011842D0, &qword_100ECBF00) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10002F3F4;

  return sub_100806BF0(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_10086D10C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10086D1F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10086D23C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100803108(a1, v4, v5, v7, v6);
}

uint64_t sub_10086D2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void, unint64_t, void, void, unint64_t))
{
  v11 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a5(a1, a2, a3, a4, *(v5 + 16), v5 + v12, *(v5 + v13), *(v5 + v13 + 8), v5 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_10086D3E4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10010FC20(&unk_1011842D0, &qword_100ECBF00) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  v8 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v1 + v7, 1, v8))
  {
    (*(v9 + 8))(v1 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_10086D5B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Album() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10010FC20(&unk_1011842D0, &qword_100ECBF00) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_1008012A4(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_10086D760()
{
  v1 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 16) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10086D858(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = a2(0);
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  (*(v5 + 8))(v2 + v6, v4);
  (*(v9 + 8))(v2 + v10, v8);

  return swift_deallocObject();
}

uint64_t sub_10086D9F0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = *(a2(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(a3(0) - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return a4(a1, v4 + v8, v11);
}

uint64_t sub_10086DAEC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_10086DB98(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = a2(0);
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);

  (*(v5 + 8))(v2 + v6, v4);
  (*(v9 + 8))(v2 + v10, v8);

  return swift_deallocObject();
}

uint64_t sub_10086DD10(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, __n128), double a2)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for Date() - 8);
  v8 = *(v2 + 16);
  v9 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));
  v10.n128_f64[0] = a2;

  return a1(v8, v2 + v5, v9, v10);
}

uint64_t sub_10086DE04()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_10086DFCC(void (*a1)(uint64_t, uint64_t, uint64_t, double), uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t), double a5)
{
  v11 = *(type metadata accessor for IndexPath() - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(type metadata accessor for Date() - 8);
  return sub_100804814(*(v5 + 16), v5 + v12, *(v5 + v13), *(v5 + v14), *(v5 + v15), *(v5 + v15 + 8), *(v5 + v15 + 9), a5, v5 + ((*(v16 + 80) + v15 + 10) & ~*(v16 + 80)), a1, a2, a3, a4);
}

void sub_10086E10C(uint64_t a1)
{
  type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    sub_10086E194(319);
    if (v2 <= 0x3F)
    {
      sub_10086E210(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10086E194(uint64_t a1)
{
  if (!qword_1011A4C60)
  {
    type metadata accessor for Playlist.Entry();
    sub_1001109D0(&unk_1011A46E0, &qword_100EE4B50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1011A4C60);
    }
  }
}

void sub_10086E210(uint64_t a1)
{
  if (!qword_1011A4C68)
  {
    type metadata accessor for Playlist();
    type metadata accessor for MusicPlayer.PlayabilityStatus();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1011A4C68);
    }
  }
}

uint64_t sub_10086E3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = v21 - v8;
  sub_1000089F8(a3, v21 - v8, &unk_101181520, &qword_100EBCC60);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    sub_1000095E8(v9, &unk_101181520, &qword_100EBCC60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1000095E8(a3, &unk_101181520, &qword_100EBCC60);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000095E8(a3, &unk_101181520, &qword_100EBCC60);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10086E680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v25[0] = a4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v13 = v25 - v12;
  sub_1000089F8(a3, v25 - v12, &unk_101181520, &qword_100EBCC60);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1000095E8(v13, &unk_101181520, &qword_100EBCC60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;

      sub_10010FC20(a6, a7);
      v22 = (v20 | v18);
      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_1000095E8(a3, &unk_101181520, &qword_100EBCC60);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000095E8(a3, &unk_101181520, &qword_100EBCC60);
  sub_10010FC20(a6, a7);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t PlaybackController.play<A>(_:shuffleMode:startingSing:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_100008F30;

  return sub_1008719EC(a1, a2, a3, a4, a5, a6);
}

uint64_t PlaybackController.play<A, B>(_:from:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100008F30;

  return sub_1008721A4(a1, a2, a3, a4, a5, a6, a7);
}

{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100008F30;

  return sub_1008727D0(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t PlaybackController.play(_:shuffleMode:startingSing:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100008F30;

  return sub_100872D48(a1, a2, a3, a4);
}

uint64_t PlaybackController.play<A>(_:shuffleMode:from:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_100008F30;

  return sub_100873330(a1, a2, a3, a4, a5, a6);
}

uint64_t PlaybackController.play<A>(_:shuffleMode:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100008F30;

  return sub_1008739C8(a1, a2, a3, a4, a5);
}

uint64_t PlaybackController.play<A>(from:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100008F30;

  return sub_100874000(a1, a2, a3, a4);
}

uint64_t PlaybackController.playLibraryTracks(by:playActivityFields:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_100874504(a1, a2);
}

uint64_t sub_10086EFFC()
{
  v1[4] = v0;
  v2 = sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_10010FC20(&unk_1011929A0, &unk_100ECBC80);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_101181B20, &qword_100EBD5E0);
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10086F198, 0, 0);
}

uint64_t sub_10086F198()
{
  type metadata accessor for Album();
  MusicLibraryRequest.init()();
  swift_getKeyPath();
  MusicLibraryRequest.filter<A>(matching:contains:)();

  MusicLibraryRequest.limit.setter();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_10086F290;
  v2 = v0[10];
  v3 = v0[11];

  return MusicLibraryRequest.response()(v2, v3);
}

uint64_t sub_10086F290()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10086F524;
  }

  else
  {
    v2 = sub_10086F3A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10086F3A4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v12 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  MusicLibraryResponse.items.getter();
  (*(v4 + 8))(v3, v5);
  sub_100020674(&unk_10118C140, &qword_1011815C0, &unk_100EBD040, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v9 = dispatch thunk of Collection.distance(from:to:)();
  (*(v7 + 8))(v6, v8);
  (*(v2 + 8))(v1, v12);

  v10 = v0[1];

  return v10(v9 > 0);
}

uint64_t sub_10086F524()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1(0);
}

uint64_t PlaybackController.queue<A, B>(_:at:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v10 = type metadata accessor for QueueInsertionPosition();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  type metadata accessor for Optional();
  v8[18] = swift_task_alloc();
  v8[19] = *(a4 - 8);
  v8[20] = swift_task_alloc();

  return _swift_task_switch(sub_10086F720, 0, 0);
}

uint64_t sub_10086F720()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[7];
  sub_100009F78(0, &qword_10118AB70, MPCPlaybackIntent_ptr);
  (*(v2 + 16))(v1, v6, v5);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v7 = MPCPlaybackIntent.init<A, B>(for:startingAt:)();
  v0[21] = v7;
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  v11 = v7;
  v12 = v0[8];
  sub_10086FBCC(v0[9]);
  (*(v9 + 16))(v8, v12, v10);
  v13 = sub_100875598(v8);
  v0[22] = v13;
  v0[2] = 0x4955636973754DLL;
  v0[5] = &type metadata for Player.CommandIssuerIdentity;
  v0[6] = &protocol witness table for Player.CommandIssuerIdentity;
  v0[3] = 0xE700000000000000;
  v14 = swift_task_alloc();
  v0[23] = v14;
  *v14 = v0;
  v14[1] = sub_10086F968;

  return PlaybackController.insert(_:location:issuer:)(v11, v13, (v0 + 2));
}

uint64_t sub_10086F968()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  sub_100309AD8(*(v2 + 176));
  if (v0)
  {
    v3 = sub_10086FB2C;
  }

  else
  {
    sub_1000095E8(v2 + 16, &unk_101183910, &unk_100EBDD00);
    v3 = sub_10086FAA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10086FAA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10086FB2C()
{
  sub_1000095E8(v0 + 16, &unk_101183910, &unk_100EBDD00);

  v1 = *(v0 + 8);

  return v1();
}

void sub_10086FBCC(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&qword_1011A4CE0, &unk_100EE58A8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  sub_1000089F8(a1, &v18 - v6, &qword_1011A4CE0, &unk_100EE58A8);
  v8 = type metadata accessor for MusicPlayActivityFields();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &qword_1011A4CE0, &unk_100EE58A8);
  }

  else
  {
    MusicPlayActivityFields.featureName.getter();
    v12 = v11;
    (*(v9 + 8))(v7, v8);
    if (v12)
    {
      v13 = String._bridgeToObjectiveC()();

      goto LABEL_6;
    }
  }

  v13 = 0;
LABEL_6:
  [v2 setPlayActivityFeatureName:v13];

  sub_1000089F8(a1, v5, &qword_1011A4CE0, &unk_100EE58A8);
  if (v10(v5, 1, v8) == 1)
  {
    sub_1000095E8(v5, &qword_1011A4CE0, &unk_100EE58A8);
    isa = 0;
  }

  else
  {
    v15 = MusicPlayActivityFields.recommendationData.getter();
    v17 = v16;
    (*(v9 + 8))(v5, v8);
    if (v17 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100029CA4(v15, v17);
    }
  }

  [v2 setPlayActivityRecommendationData:isa];
}

uint64_t PlaybackController.queue<A>(_:at:playActivityFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v8 = type metadata accessor for QueueInsertionPosition();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  v6[16] = swift_task_alloc();
  v6[17] = *(a4 - 8);
  v6[18] = swift_task_alloc();

  return _swift_task_switch(sub_10086FF9C, 0, 0);
}

uint64_t sub_10086FF9C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[10];
  v5 = v0[7];
  sub_100009F78(0, &qword_10118AB70, MPCPlaybackIntent_ptr);
  (*(v2 + 16))(v1, v5, v4);
  v6 = type metadata accessor for GenericMusicItem();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = MPCPlaybackIntent.init<A>(for:startingAt:)();
  v0[19] = v7;
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  v11 = v7;
  v12 = v0[8];
  sub_10086FBCC(v0[9]);
  (*(v9 + 16))(v8, v12, v10);
  v13 = sub_100875598(v8);
  v0[20] = v13;
  v0[2] = 0x4955636973754DLL;
  v0[5] = &type metadata for Player.CommandIssuerIdentity;
  v0[6] = &protocol witness table for Player.CommandIssuerIdentity;
  v0[3] = 0xE700000000000000;
  v14 = swift_task_alloc();
  v0[21] = v14;
  *v14 = v0;
  v14[1] = sub_1008701D4;

  return PlaybackController.insert(_:location:issuer:)(v11, v13, (v0 + 2));
}

uint64_t sub_1008701D4()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  sub_100309AD8(*(v2 + 160));
  if (v0)
  {
    v3 = sub_100870398;
  }

  else
  {
    sub_1000095E8(v2 + 16, &unk_101183910, &unk_100EBDD00);
    v3 = sub_100870310;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100870310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100870398()
{
  sub_1000095E8(v0 + 16, &unk_101183910, &unk_100EBDD00);

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall PlaybackController.pause()()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v2 = &v6 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v0;
  v5 = v0;
  sub_10086E680(0, 0, v2, &unk_100EE5750, v4, &qword_101184438, &unk_100ECCD30);
}

uint64_t sub_10087054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a1;
  *(v4 + 104) = a4;
  return _swift_task_switch(sub_10087056C, 0, 0);
}

uint64_t sub_10087056C()
{
  *(v0 + 40) = &type metadata for Player.PlaybackCommand;
  *(v0 + 48) = &protocol witness table for Player.PlaybackCommand;
  *(v0 + 16) = 1;
  *(v0 + 56) = 0x4955636973754DLL;
  *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 64) = 0xE700000000000000;
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_10087066C;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_10087066C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1008707D4;
  }

  else
  {
    *(v4 + 128) = a1;
    sub_1000095E8(v4 + 56, &unk_101183910, &unk_100EBDD00);
    sub_10000959C((v4 + 16));
    v5 = sub_1008707B0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1008707D4()
{
  sub_1000095E8(v0 + 56, &unk_101183910, &unk_100EBDD00);
  sub_10000959C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PlaybackController.playabilityStatus<A>(for:)@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v4 + v13))
  {

    v14 = Player.state<A>(for:)(a1, a2, a3);

    (*(*v14 + 256))(v15);

    return (*(v10 + 32))(a4, v12, v9);
  }

  else
  {
    v17 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:);
    v18 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
    (*(*(v18 - 8) + 104))(a4, v17, v18);
    return (*(v10 + 104))(a4, enum case for MusicPlayer.PlayabilityStatus.unplayable(_:), v9);
  }
}

uint64_t (*PlaybackController.onMusicAppPlayerChanged.getter())(uint64_t a1)
{
  if (qword_10117FE38 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011A4C98))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_10010FC20(&qword_1011A4CB0, qword_100EE5760);
    if (swift_dynamicCast())
    {
      *(swift_allocObject() + 16) = v2;
      return sub_100031BE4;
    }
  }

  else
  {
    sub_1000095E8(v5, &unk_101183F30, qword_100EBF960);
  }

  return 0;
}

uint64_t PlaybackController.onMusicAppPlayerChanged.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_10117FE38 != -1)
  {
    swift_once();
  }

  v6 = qword_1011A4C98;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    sub_10010FC20(&qword_1011A4CB0, qword_100EE5760);
    v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  else
  {
    v8 = 0;
  }

  objc_setAssociatedObject(v3, v6, v8, 3);
  swift_unknownObjectRelease();
  return sub_100020438(a1, a2);
}

void (*PlaybackController.onMusicAppPlayerChanged.modify(void *a1))(uint64_t **a1, char a2)
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
  v3[4] = v1;
  *v3 = PlaybackController.onMusicAppPlayerChanged.getter();
  v4[1] = v5;
  return sub_100870CE8;
}

void sub_100870CE8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    sub_100030444(**a1, v3);
    if (qword_10117FE38 != -1)
    {
      swift_once();
    }

    v5 = qword_1011A4C98;
    if (v4)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v3;
      v2[2] = sub_100875A24;
      v2[3] = v6;

      sub_10010FC20(&qword_1011A4CB0, qword_100EE5760);
      v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v7 = 0;
    }

    objc_setAssociatedObject(v2[4], v5, v7, 3);
    swift_unknownObjectRelease();
    sub_100020438(v4, v3);
    v11 = *v2;
    v12 = v2[1];
  }

  else
  {
    if (qword_10117FE38 != -1)
    {
      swift_once();
    }

    v8 = qword_1011A4C98;
    if (v4)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v4;
      *(v9 + 24) = v3;
      v2[2] = sub_100875A24;
      v2[3] = v9;

      sub_10010FC20(&qword_1011A4CB0, qword_100EE5760);
      v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v10 = 0;
    }

    objc_setAssociatedObject(v2[4], v8, v10, 3);
    swift_unknownObjectRelease();
    v11 = v4;
    v12 = v3;
  }

  sub_100020438(v11, v12);

  free(v2);
}

uint64_t PlaybackController.playerObjectWillChange.getter()
{
  if (qword_10117FE40 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011A4CA0))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for AnyCancellable();
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1000095E8(v5, &unk_101183F30, qword_100EBF960);
  }

  return 0;
}

double PlaybackController.playerObjectWillChange.setter(id value)
{
  if (qword_10117FE40 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v1, qword_1011A4CA0, value, 1);

  return result;
}

double (*PlaybackController.playerObjectWillChange.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = PlaybackController.playerObjectWillChange.getter();
  return sub_100871084;
}

double sub_100871084(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v4 = qword_10117FE40;

    if (v4 != -1)
    {
      swift_once();
    }

    objc_setAssociatedObject(a1[1], qword_1011A4CA0, v3, 1);
  }

  else
  {
    if (qword_10117FE40 != -1)
    {
      swift_once();
    }

    objc_setAssociatedObject(a1[1], qword_1011A4CA0, v3, 1);
  }

  return result;
}

void sub_100871168(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = PlaybackController.onMusicAppPlayerChanged.getter();
    if (v4)
    {
      v6 = v4;
      v7 = v5;
      PlaybackController.musicPlayer.getter();
      v6();
      sub_100020438(v6, v7);
    }
  }
}

uint64_t sub_100871218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100008F30;

  return sub_1008721A4(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_10087130C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100008F30;

  return sub_1008727D0(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_100871400(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100874504(a1, a2);
}

uint64_t sub_1008714B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100008F30;

  return PlaybackController.queue<A, B>(_:at:playActivityFields:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_100871598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100008F30;

  return PlaybackController.queue<A>(_:at:playActivityFields:)(a1, a2, a3, a4, a5);
}

double sub_100871660()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v2 = &v8 - v1;
  v3 = *v0;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v6 = v3;
  sub_10086E680(0, 0, v2, &unk_100EE5880, v5, &qword_101184438, &unk_100ECCD30);

  return result;
}

void (*sub_10087179C(void *a1))(void *a1)
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
  v2[4] = PlaybackController.onMusicAppPlayerChanged.modify(v2);
  return sub_100260668;
}

uint64_t sub_100871834(uint64_t a1)
{
  sub_10010FC20(&qword_1011A4CF0, &qword_100EE58F0);
  __chkstk_darwin();
  v3 = &v9 - v2;
  v4 = type metadata accessor for ShuffleMode();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a1, 1, v4) != 1)
  {
    sub_1000089F8(a1, v3, &qword_1011A4CF0, &qword_100EE58F0);
    v7 = (*(v5 + 88))(v3, v4);
    if (v7 == enum case for ShuffleMode.off(_:))
    {
      v6 = 0;
      goto LABEL_9;
    }

    if (v7 == enum case for ShuffleMode.items(_:))
    {
      v6 = 1;
      goto LABEL_9;
    }

    if (v7 == enum case for ShuffleMode.containers(_:))
    {
      v6 = 2;
      goto LABEL_9;
    }

    (*(v5 + 8))(v3, v4);
  }

  v6 = 0;
LABEL_9:
  sub_1000095E8(a1, &qword_1011A4CF0, &qword_100EE58F0);
  return v6;
}

uint64_t sub_1008719EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 200) = a5;
  *(v6 + 208) = a6;
  *(v6 + 184) = a2;
  *(v6 + 192) = a4;
  *(v6 + 352) = a3;
  *(v6 + 176) = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *(v6 + 216) = swift_task_alloc();
  sub_10010FC20(&qword_1011A4CF0, &qword_100EE58F0);
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  *(v6 + 240) = swift_task_alloc();
  v8 = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v6 + 248) = v8;
  v9 = *(v8 - 8);
  *(v6 + 256) = v9;
  *(v6 + 264) = *(v9 + 64);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  sub_10010FC20(&unk_101188910, &qword_100EBE7A0);
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = *(a5 - 8);
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  v10 = type metadata accessor for MusicPlaybackIntentDescriptor();
  *(v6 + 320) = v10;
  *(v6 + 328) = *(v10 - 8);
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();

  return _swift_task_switch(sub_100871C6C, 0, 0);
}

uint64_t sub_100871C6C()
{
  v38 = v0;
  v1 = *(*(v0 + 296) + 16);
  v1(*(v0 + 312), *(v0 + 176), *(v0 + 200));
  sub_10010FC20(&qword_101182C48, &unk_100ECEFD0);
  if (swift_dynamicCast())
  {
    v34 = v1;
    v2 = *(v0 + 288);
    sub_100188D80((v0 + 56), v0 + 16);
    sub_100008FE4(v0 + 16, v0 + 136);
    v3 = type metadata accessor for MusicPlaybackSource();
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    MusicPlaybackIntentDescriptor.init(container:startingAt:playbackSource:)();
    sub_10000959C((v0 + 16));
  }

  else
  {
    v4 = *(v0 + 304);
    v5 = *(v0 + 200);
    v6 = *(v0 + 176);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_1000095E8(v0 + 56, &qword_101182C40, &unk_100EBE7C0);
    v1(v4, v6, v5);
    MusicPlaybackIntentDescriptor.init<A>(item:)();
    v34 = v1;
    (*(*(v0 + 328) + 32))(*(v0 + 344), *(v0 + 336), *(v0 + 320));
  }

  v7 = *(v0 + 344);
  v8 = *(v0 + 320);
  v9 = *(v0 + 328);
  v33 = v8;
  v31 = *(v0 + 272);
  v32 = *(v0 + 256);
  v28 = *(v0 + 280);
  v29 = *(v0 + 248);
  v10 = *(v0 + 240);
  v30 = *(v0 + 216);
  v11 = *(v0 + 200);
  v27 = *(v0 + 352);
  v12 = *(v0 + 192);
  v25 = *(v0 + 184);
  v26 = *(v0 + 224);
  v23 = *(v0 + 208);
  v24 = *(v0 + 176);
  v13 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  sub_10086FBCC(v12);

  (*(v9 + 16))(v10, v7, v8);
  swift_storeEnumTagMultiPayload();
  *(v0 + 120) = v11;
  *(v0 + 128) = *(v23 + 8);
  v14 = sub_10001C8B8((v0 + 96));
  v34(v14, v24, v11);
  sub_1000089F8(v25, v26, &qword_1011A4CF0, &qword_100EE58F0);
  v15 = sub_100871834(v26);
  *(&v36 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v37 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v35 = 0x4955636973754DLL;
  *(&v35 + 1) = 0xE700000000000000;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v10, v0 + 96, 3, 0, v15, v16 & 1, 0, 1, v28, 0, &v35);
  *(v28 + *(v29 + 36)) = v27 & 1;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v30, 1, 1, v17);
  sub_1001DFCE4(v28, v31);
  type metadata accessor for MainActor();
  v18 = static MainActor.shared.getter();
  v19 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v31, v20 + v19);
  sub_1001F4F78(0, 0, v30, &unk_100EE5928, v20);

  sub_10087595C(v28, type metadata accessor for PlaybackIntentDescriptor);
  (*(v9 + 8))(v7, v33);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1008721A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v7[14] = swift_task_alloc();
  v7[15] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v7[16] = swift_task_alloc();
  v9 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v7[17] = v9;
  v7[18] = *(v9 + 64);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  type metadata accessor for Optional();
  v7[21] = swift_task_alloc();
  v7[22] = *(a5 - 8);
  v7[23] = swift_task_alloc();
  v10 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v7[24] = v10;
  v7[25] = *(v10 - 8);
  v7[26] = swift_task_alloc();

  return _swift_task_switch(sub_1008723D4, 0, 0);
}

uint64_t sub_1008723D4()
{
  v28 = v0;
  v1 = v0[21];
  v2 = v0[10];
  v3 = v0[7];
  (*(v0[22] + 16))(v0[23], v0[8], v0[11]);
  v4 = *(v2 - 8);
  v26 = *(v4 + 16);
  v26(v1, v3, v2);
  (*(v4 + 56))(v1, 0, 1, v2);
  MusicPlaybackIntentDescriptor.init<A, B>(items:startingAt:)();
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[24];
  v25 = v5;
  v8 = v0[16];
  v23 = v0[19];
  v24 = v0[17];
  v21 = v0[20];
  v22 = v0[14];
  v9 = v0[9];
  v10 = v0[10];
  v19 = v0[12];
  v20 = v0[7];
  v11 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  sub_10086FBCC(v9);

  (*(v5 + 16))(v8, v6, v7);
  swift_storeEnumTagMultiPayload();
  v0[5] = v10;
  v0[6] = *(v19 + 8);
  v12 = sub_10001C8B8(v0 + 2);
  v26(v12, v20, v10);
  v27[3] = &type metadata for Player.CommandIssuerIdentity;
  v27[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v27[0] = 0x4955636973754DLL;
  v27[1] = 0xE700000000000000;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v8, (v0 + 2), 3, 0, 0, 1, 0, 1, v21, 0, v27);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v22, 1, 1, v13);
  sub_1001DFCE4(v21, v23);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v23, v16 + v15);
  sub_1001F4F78(0, 0, v22, &unk_100EE5920, v16);

  sub_10087595C(v21, type metadata accessor for PlaybackIntentDescriptor);
  (*(v25 + 8))(v6, v7);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1008727D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v7[18] = a2;
  v7[19] = a3;
  v7[17] = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v7[24] = swift_task_alloc();
  v7[25] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v7[26] = swift_task_alloc();
  v8 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v7[27] = v8;
  v7[28] = *(v8 + 64);
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  sub_10010FC20(&unk_101188910, &qword_100EBE7A0);
  v7[31] = swift_task_alloc();
  v9 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v7[32] = v9;
  v7[33] = *(v9 - 8);
  v7[34] = swift_task_alloc();

  return _swift_task_switch(sub_1008729A8, 0, 0);
}

uint64_t sub_1008729A8()
{
  v31 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v24 = v1;
  v25 = v0[30];
  v29 = v0[31];
  v27 = v0[29];
  v28 = v0[27];
  v23 = v0[26];
  v4 = v0[23];
  v26 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v22 = v0[19];
  v9 = v0[17];
  v8 = v0[18];
  v0[5] = v6;
  v0[6] = v4;
  v10 = sub_10001C8B8(v0 + 2);
  (*(*(v6 - 8) + 16))(v10, v8, v6);
  v0[10] = v7;
  v0[11] = v5;
  v11 = sub_10001C8B8(v0 + 7);
  v12 = *(*(v7 - 8) + 16);
  v12(v11, v9, v7);
  v13 = type metadata accessor for MusicPlaybackSource();
  (*(*(v13 - 8) + 56))(v29, 1, 1, v13);
  MusicPlaybackIntentDescriptor.init(container:startingAt:playbackSource:)();
  v14 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  sub_10086FBCC(v22);

  (*(v1 + 16))(v23, v2, v3);
  swift_storeEnumTagMultiPayload();
  v0[15] = v7;
  v0[16] = *(v5 + 8);
  v15 = sub_10001C8B8(v0 + 12);
  v12(v15, v9, v7);
  v30[3] = &type metadata for Player.CommandIssuerIdentity;
  v30[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v30[0] = 0x4955636973754DLL;
  v30[1] = 0xE700000000000000;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v23, (v0 + 12), 3, 0, 0, 1, 0, 1, v25, 0, v30);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v26, 1, 1, v16);
  sub_1001DFCE4(v25, v27);
  type metadata accessor for MainActor();
  v17 = static MainActor.shared.getter();
  v18 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v27, v19 + v18);
  sub_1001F4F78(0, 0, v26, &unk_100EE5918, v19);

  sub_10087595C(v25, type metadata accessor for PlaybackIntentDescriptor);
  (*(v24 + 8))(v2, v3);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100872D48(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a4;
  *(v4 + 200) = a3;
  *(v4 + 56) = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *(v4 + 80) = swift_task_alloc();
  sub_10010FC20(&qword_1011A4CF0, &qword_100EE58F0);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  *(v4 + 104) = swift_task_alloc();
  v5 = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v4 + 112) = v5;
  v6 = *(v5 - 8);
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 + 64);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  v7 = type metadata accessor for GenericMusicItem();
  *(v4 + 152) = v7;
  *(v4 + 160) = *(v7 - 8);
  *(v4 + 168) = swift_task_alloc();
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  *(v4 + 176) = v8;
  *(v4 + 184) = *(v8 - 8);
  *(v4 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_100872F7C, 0, 0);
}

uint64_t sub_100872F7C()
{
  v29 = v0;
  v1 = *(*(v0 + 160) + 16);
  v1(*(v0 + 168), *(v0 + 56), *(v0 + 152));
  MusicPlaybackIntentDescriptor.init(item:)();
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v27 = v4;
  v5 = *(v0 + 152);
  v25 = *(v0 + 136);
  v26 = *(v0 + 120);
  v23 = *(v0 + 112);
  v6 = *(v0 + 104);
  v20 = *(v0 + 88);
  v21 = *(v0 + 144);
  v24 = *(v0 + 80);
  v22 = *(v0 + 200);
  v7 = *(v0 + 72);
  v19 = *(v0 + 64);
  v18 = *(v0 + 56);
  v8 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  sub_10086FBCC(v7);

  (*(v2 + 16))(v6, v3, v4);
  swift_storeEnumTagMultiPayload();
  *(v0 + 40) = v5;
  *(v0 + 48) = sub_100568AEC();
  v9 = sub_10001C8B8((v0 + 16));
  v1(v9, v18, v5);
  sub_1000089F8(v19, v20, &qword_1011A4CF0, &qword_100EE58F0);
  v10 = sub_100871834(v20);
  v28[3] = &type metadata for Player.CommandIssuerIdentity;
  v28[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v28[0] = 0x4955636973754DLL;
  v28[1] = 0xE700000000000000;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v6, v0 + 16, 3, 0, v10, v11 & 1, 0, 1, v21, 0, v28);
  *(v21 + *(v23 + 36)) = v22 & 1;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v24, 1, 1, v12);
  sub_1001DFCE4(v21, v25);
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v25, v15 + v14);
  sub_1001F4F78(0, 0, v24, &unk_100EE5908, v15);

  sub_10087595C(v21, type metadata accessor for PlaybackIntentDescriptor);
  (*(v2 + 8))(v3, v27);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100873330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v6[13] = swift_task_alloc();
  sub_10010FC20(&qword_1011A4CF0, &qword_100EE58F0);
  v6[14] = swift_task_alloc();
  v6[15] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v6[16] = swift_task_alloc();
  v8 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v6[17] = v8;
  v6[18] = *(v8 + 64);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  v6[21] = swift_task_alloc();
  v6[22] = *(a5 - 8);
  v6[23] = swift_task_alloc();
  v9 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_100873590, 0, 0);
}

uint64_t sub_100873590()
{
  v30 = v0;
  v1 = v0[21];
  v2 = v0[7];
  (*(v0[22] + 16))(v0[23], v0[9], v0[11]);
  v3 = type metadata accessor for GenericMusicItem();
  v4 = *(v3 - 8);
  v28 = *(v4 + 16);
  v28(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  MusicPlaybackIntentDescriptor.init<A>(items:startingAt:)();
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[24];
  v27 = v5;
  v8 = v0[16];
  v25 = v0[19];
  v26 = v0[17];
  v22 = v0[14];
  v23 = v0[20];
  v24 = v0[13];
  v9 = v0[10];
  v20 = v0[7];
  v21 = v0[8];
  v10 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  sub_10086FBCC(v9);

  (*(v5 + 16))(v8, v6, v7);
  swift_storeEnumTagMultiPayload();
  v0[5] = v3;
  v0[6] = sub_100568AEC();
  v11 = sub_10001C8B8(v0 + 2);
  v28(v11, v20, v3);
  sub_1000089F8(v21, v22, &qword_1011A4CF0, &qword_100EE58F0);
  v12 = sub_100871834(v22);
  v29[3] = &type metadata for Player.CommandIssuerIdentity;
  v29[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v29[0] = 0x4955636973754DLL;
  v29[1] = 0xE700000000000000;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v8, (v0 + 2), 3, 0, v12, v13 & 1, 0, 1, v23, 0, v29);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v24, 1, 1, v14);
  sub_1001DFCE4(v23, v25);
  type metadata accessor for MainActor();
  v15 = static MainActor.shared.getter();
  v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v25, v17 + v16);
  sub_1001F4F78(0, 0, v24, &unk_100EE5900, v17);

  sub_10087595C(v23, type metadata accessor for PlaybackIntentDescriptor);
  (*(v27 + 8))(v6, v7);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1008739C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v5[7] = swift_task_alloc();
  sub_10010FC20(&qword_1011A4CF0, &qword_100EE58F0);
  v5[8] = swift_task_alloc();
  v5[9] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5[10] = swift_task_alloc();
  v7 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v5[11] = v7;
  v5[12] = *(v7 + 64);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 - 8);
  v5[17] = swift_task_alloc();
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_100873C28, 0, 0);
}

uint64_t sub_100873C28()
{
  v26 = v0;
  v1 = v0[15];
  (*(v0[16] + 16))(v0[17], v0[2], v0[5]);
  v2 = type metadata accessor for GenericMusicItem();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  MusicPlaybackIntentDescriptor.init<A>(items:startingAt:)();
  v4 = v0[18];
  v3 = v0[19];
  v22 = v0[20];
  v5 = v0[10];
  v20 = v0[13];
  v21 = v0[11];
  v6 = v0[8];
  v18 = v0[14];
  v19 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  v9 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  sub_10086FBCC(v8);

  (*(v3 + 16))(v5, v22, v4);
  swift_storeEnumTagMultiPayload();
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_1000089F8(v7, v6, &qword_1011A4CF0, &qword_100EE58F0);
  v10 = sub_100871834(v6);
  v25[3] = &type metadata for Player.CommandIssuerIdentity;
  v25[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v25[0] = 0x4955636973754DLL;
  v25[1] = 0xE700000000000000;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, v23, 3, 0, v10, v11 & 1, 0, 1, v18, 0, v25);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v19, 1, 1, v12);
  sub_1001DFCE4(v18, v20);
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v20, v15 + v14);
  sub_1001F4F78(0, 0, v19, &unk_100EE58F8, v15);

  sub_10087595C(v18, type metadata accessor for PlaybackIntentDescriptor);
  (*(v3 + 8))(v22, v4);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100874000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[18] = swift_task_alloc();
  v5 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v4[19] = v5;
  v4[20] = *(v5 + 64);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v6 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_100874198, 0, 0);
}

uint64_t sub_100874198()
{
  v29 = v0;
  v1 = *(v0 + 96);
  v27 = *(v0 + 112);
  *(v0 + 40) = v27;
  v2 = sub_10001C8B8((v0 + 16));
  v3 = *(*(v27 - 8) + 16);
  v3(v2, v1);
  MusicPlaybackIntentDescriptor.init(stationSeed:)();
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  *&v27 = v4;
  v6 = *(v0 + 184);
  v26 = v5;
  v7 = *(v0 + 144);
  v24 = *(v0 + 168);
  v25 = *(v0 + 152);
  v22 = *(v0 + 176);
  v23 = *(v0 + 128);
  v8 = *(v0 + 112);
  v20 = *(v0 + 120);
  v9 = *(v0 + 104);
  v21 = *(v0 + 96);
  v10 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  sub_10086FBCC(v9);

  v11 = v5;
  v12 = v6;
  (*(v4 + 16))(v7, v11, v6);
  swift_storeEnumTagMultiPayload();
  *(v0 + 80) = v8;
  *(v0 + 88) = *(v20 + 8);
  v13 = sub_10001C8B8((v0 + 56));
  (v3)(v13, v21, v8);
  v28[3] = &type metadata for Player.CommandIssuerIdentity;
  v28[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v28[0] = 0x4955636973754DLL;
  v28[1] = 0xE700000000000000;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v7, v0 + 56, 3, 0, 0, 1, 0, 1, v22, 0, v28);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v23, 1, 1, v14);
  sub_1001DFCE4(v22, v24);
  type metadata accessor for MainActor();
  v15 = static MainActor.shared.getter();
  v16 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v24, v17 + v16);
  sub_1001F4F78(0, 0, v23, &unk_100EE58E8, v17);

  sub_10087595C(v22, type metadata accessor for PlaybackIntentDescriptor);
  (*(v27 + 8))(v26, v12);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100874504(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v2[6] = swift_task_alloc();
  v3 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v2[7] = v3;
  v2[8] = *(v3 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  v2[11] = swift_task_alloc();
  _s11MusicVideosV5ScopeOMa(0);
  v2[12] = swift_task_alloc();
  _s11MusicVideosVMa(0);
  v2[13] = swift_task_alloc();
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  v2[14] = swift_task_alloc();
  v2[15] = _s6AlbumsV5ScopeOMa(0);
  v2[16] = swift_task_alloc();
  _s6AlbumsVMa(0);
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_100874830, 0, 0);
}

uint64_t sub_100874830()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v8 = v0[2];
  v9 = *(v4 + 56);
  v0[27] = v9;
  v0[28] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v1, 1, 1, v3);
  v10 = type metadata accessor for Artist();
  v0[29] = v10;
  v11 = *(v10 - 8);
  v0[30] = v11;
  v12 = *(v11 + 16);
  v0[31] = v12;
  v0[32] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v6, v8, v10);
  swift_storeEnumTagMultiPayload();
  sub_1002884E4(v6, 0, v5);
  v13 = type metadata accessor for Album();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_100289108(v7, v2);
  sub_1000095E8(v7, &unk_101184730, &unk_100ECB920);
  sub_10087595C(v5, _s6AlbumsVMa);
  v14 = *(v4 + 48);
  v0[33] = v14;
  v0[34] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v15 = v14(v2, 1, v3);
  v16 = v0[25];
  if (v15 == 1)
  {
    sub_1000095E8(v0[25], &unk_10118CDB0, &unk_100EC0360);
    sub_100875908();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    sub_1000095E8(v0[26], &unk_10118CDB0, &unk_100EC0360);

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[22];
    v21 = v0[18];
    v22 = v0[19];
    v23 = *(v22 + 32);
    v0[35] = v23;
    v0[36] = (v22 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v23(v20, v16, v21);
    v24 = swift_task_alloc();
    v0[37] = v24;
    *v24 = v0;
    v24[1] = sub_100874BDC;

    return sub_10086EFFC();
  }
}

uint64_t sub_100874BDC(char a1)
{
  v4 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v5 = sub_100875424;
  }

  else
  {
    *(v4 + 312) = a1 & 1;
    v5 = sub_100874D08;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100874D08()
{
  v52 = v0;
  if (*(v0 + 312) == 1)
  {
    v1 = *(v0 + 216);
    v2 = *(v0 + 208);
    v3 = *(v0 + 176);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    sub_1000095E8(v2, &unk_10118CDB0, &unk_100EC0360);
    (*(v5 + 16))(v2, v3, v4);
    v1(v2, 0, 1, v4);
  }

  else
  {
    v13 = *(v0 + 264);
    v14 = *(v0 + 232);
    v15 = *(v0 + 240);
    v16 = *(v0 + 192);
    v17 = *(v0 + 144);
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *(v0 + 88);
    (*(v0 + 248))(v19, *(v0 + 16), v14);
    (*(v15 + 56))(v19, 0, 1, v14);
    sub_1006FC4AC(v19, 0, v18);
    v21 = type metadata accessor for MusicVideo();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    sub_1006FD384(v20, v16);
    sub_1000095E8(v20, &unk_1011846B0, &unk_100ECB630);
    sub_10087595C(v18, _s11MusicVideosVMa);
    if (v13(v16, 1, v17) == 1)
    {
      v9 = *(v0 + 176);
      v11 = *(v0 + 144);
      v10 = *(v0 + 152);
      sub_1000095E8(*(v0 + 192), &unk_10118CDB0, &unk_100EC0360);
      sub_100875908();
      swift_allocError();
      *v22 = 0;
      goto LABEL_7;
    }

    (*(v0 + 280))(*(v0 + 168), *(v0 + 192), *(v0 + 144));
    v38 = Artist.trackCount.getter();
    if ((v39 & 1) != 0 || v38 < 1)
    {
      (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));
    }

    else
    {
      v40 = *(v0 + 280);
      v41 = *(v0 + 216);
      v42 = *(v0 + 208);
      v43 = *(v0 + 168);
      v44 = *(v0 + 144);
      sub_1000095E8(v42, &unk_10118CDB0, &unk_100EC0360);
      v40(v42, v43, v44);
      v41(v42, 0, 1, v44);
    }
  }

  v6 = *(v0 + 264);
  v7 = *(v0 + 184);
  v8 = *(v0 + 144);
  sub_1000089F8(*(v0 + 208), v7, &unk_10118CDB0, &unk_100EC0360);
  if (v6(v7, 1, v8) == 1)
  {
    v9 = *(v0 + 176);
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    sub_1000095E8(*(v0 + 184), &unk_10118CDB0, &unk_100EC0360);
    sub_100875908();
    swift_allocError();
    *v12 = 1;
LABEL_7:
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
    sub_1000095E8(*(v0 + 208), &unk_10118CDB0, &unk_100EC0360);

    v23 = *(v0 + 8);
    goto LABEL_9;
  }

  v47 = *(v0 + 208);
  v46 = *(v0 + 176);
  v24 = *(v0 + 160);
  v26 = *(v0 + 144);
  v25 = *(v0 + 152);
  v27 = *(v0 + 80);
  v48 = *(v0 + 72);
  v45 = *(v0 + 56);
  v28 = *(v0 + 48);
  v30 = *(v0 + 24);
  v29 = *(v0 + 32);
  (*(v0 + 280))(v24);
  v31 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
  sub_10086FBCC(v30);

  (*(v25 + 16))(v28, v24, v26);
  swift_storeEnumTagMultiPayload();
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v51[3] = &type metadata for Player.CommandIssuerIdentity;
  v51[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v51[0] = 0x4955636973754DLL;
  v51[1] = 0xE700000000000000;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v28, v49, 3, 0, 0, 1, 0, 1, v27, 0, v51);
  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
  sub_1001DFCE4(v27, v48);
  type metadata accessor for MainActor();
  v33 = static MainActor.shared.getter();
  v34 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v48, v35 + v34);
  sub_1001F4F78(0, 0, v29, &unk_100ECA700, v35);

  sub_10087595C(v27, type metadata accessor for PlaybackIntentDescriptor);
  v36 = *(v25 + 8);
  v36(v24, v26);
  v36(v46, v26);
  sub_1000095E8(v47, &unk_10118CDB0, &unk_100EC0360);

  v23 = *(v0 + 8);
LABEL_9:

  return v23();
}

uint64_t sub_100875424()
{
  (*(v0[19] + 8))(v0[22], v0[18]);
  sub_1000095E8(v0[26], &unk_10118CDB0, &unk_100EC0360);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100875598(uint64_t a1)
{
  v2 = type metadata accessor for QueueInsertionPosition();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 == enum case for QueueInsertionPosition.afterCurrentEntry(_:))
  {
    goto LABEL_8;
  }

  if (v7 == enum case for QueueInsertionPosition.endOfQueue(_:))
  {
    v8 = 2;
LABEL_8:
    (*(v3 + 8))(a1, v2);
    return v8;
  }

  if (v7 == enum case for QueueInsertionPosition.afterLastContainer(_:))
  {
    v8 = 3;
    goto LABEL_8;
  }

  if (v7 == enum case for QueueInsertionPosition.endOfTracklist(_:))
  {
    v8 = 1;
    goto LABEL_8;
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v10._object = 0x8000000100E58CB0;
  v10._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v10);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100875798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10087054C(a1, v4, v5, v6);
}

uint64_t sub_10087584C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10087054C(a1, v4, v5, v6);
}

unint64_t sub_100875908()
{
  result = qword_1011A4CE8;
  if (!qword_1011A4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4CE8);
  }

  return result;
}

uint64_t sub_10087595C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1008759D0()
{
  result = qword_1011A4CF8;
  if (!qword_1011A4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4CF8);
  }

  return result;
}

id sub_100875A4C()
{
  result = sub_100875A6C();
  qword_1012197E8 = result;
  return result;
}

id sub_100875A6C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(sub_10010FC20(&qword_1011A4F88, "ZA\v") - 8);
  __chkstk_darwin();
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v48 - v5;
  __chkstk_darwin();
  v8 = &v48 - v7;
  __chkstk_darwin();
  v55 = &v48 - v9;
  __chkstk_darwin();
  v11 = &v48 - v10;
  v54 = sub_10001E0D8(_swiftEmptyArrayStorage);
  sub_10010FC20(&unk_1011A4F90, "ZA\v");
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v56 = *(v3 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBE260;
  v58 = v12;
  v51 = v13;
  v14 = v13 + v12;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = [v16 resourceURL];

  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 0;
  }

  else
  {
    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 1;
  }

  v57 = v18;
  v18(v19, v20, 1, v0);
  sub_100027A08(v11, v14);
  type metadata accessor for BundleFinder();
  v21 = [v15 bundleForClass:swift_getObjCClassFromMetadata()];
  v22 = [v21 resourceURL];

  if (v22)
  {
    v23 = v55;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v55;
  }

  v25 = (v1 + 56);
  v26 = v57;
  v57(v23, v24, 1, v0);
  v49 = v1;
  v27 = v56;
  sub_100027A08(v23, v14 + v56);
  v28 = [v15 mainBundle];
  v29 = [v28 bundleURL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v25;
  v26(v14 + 2 * v27, 0, 1, v0);
  v59 = v54;
  sub_10001EBDC(v51);
  v30 = v59;
  v31 = v59[2];
  v32 = v53;
  if (v31)
  {
    v33 = 0;
    v34 = v58 + v59;
    v58 = (v49 + 6);
    v54 = (v49 + 1);
    v49 += 4;
    v50 = "00292A8024B0AC2712BundleFinder";
    v51 = v31;
    while (v33 < v30[2])
    {
      sub_1008764AC(v34, v6);
      v35 = *v58;
      if ((*v58)(v6, 1, v0) == 1)
      {
        sub_100028AA0(v6);
        v36 = 1;
      }

      else
      {
        URL.appendingPathComponent(_:)();
        (*v54)(v6, v0);
        v36 = 0;
      }

      v57(v8, v36, 1, v0);
      sub_1008764AC(v8, v32);
      if (v35(v32, 1, v0) == 1)
      {
        sub_100028AA0(v8);
      }

      else
      {
        v37 = v30;
        v38 = v8;
        v39 = v6;
        v40 = v52;
        (*v49)(v52, v32, v0);
        v41 = objc_allocWithZone(NSBundle);
        URL._bridgeToObjectiveC()(v42);
        v44 = v43;
        v45 = [v41 initWithURL:v43];

        v32 = v53;
        v46 = v40;
        v6 = v39;
        v8 = v38;
        v30 = v37;
        v31 = v51;
        (*v54)(v46, v0);
        sub_100028AA0(v8);
        if (v45)
        {

          return v45;
        }
      }

      ++v33;
      v34 += v56;
      if (v31 == v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1008760B4()
{
  type metadata accessor for TimelinesDriver();
  swift_allocObject();
  return sub_10087DAC8();
}

void *variable initialization expression of TimelinesDriver.liveBlocking@<X0>(void *a1@<X8>)
{
  __asm { FMOV            V1.4S, #1.0 }

  v8[2] = 0u;
  v8[3] = _Q1;
  v8[4] = xmmword_100EE5A20;
  v8[5] = xmmword_100EE5A30;
  v8[6] = xmmword_100EE5A40;
  v8[7] = xmmword_100EE5A50;
  v8[8] = xmmword_100EE5A60;
  v8[9] = xmmword_100EE5A70;
  v8[10] = xmmword_100EE5A80;
  v8[11] = xmmword_100EE5A90;
  v8[12] = xmmword_100EE5AA0;
  v8[13] = xmmword_100EE5AB0;
  v8[14] = xmmword_100EE5AC0;
  v8[15] = xmmword_100EE5AD0;
  v8[16] = xmmword_100EE5AE0;
  v8[17] = xmmword_100EE5AF0;
  v8[18] = xmmword_100EE5B00;
  v8[19] = xmmword_100EE5B10;
  *&v8[20] = 0x3F0000003F000000;
  *(&v8[20] + 1) = 1067450368;
  v8[21] = xmmword_100EE5B20;
  v8[22] = xmmword_100EE5B30;
  v8[23] = xmmword_100EE5B40;
  v8[24] = xmmword_100EE5B50;
  v8[25] = xmmword_100EE5B60;
  v8[26] = 0x400000003EA66666uLL;
  v8[27] = _Q1;
  v8[28] = xmmword_100EE5B70;
  v8[29] = 0x400000003F000000uLL;
  v8[30] = xmmword_100EE5B80;
  v8[31] = xmmword_100EE5B90;
  v8[32] = xmmword_100EE5BA0;
  v8[33] = xmmword_100EE5BB0;
  v8[34] = xmmword_100EE5BC0;
  v8[35] = xmmword_100EE5BD0;
  v8[36] = xmmword_100EE5BE0;
  v8[37] = xmmword_100EE5BF0;
  v8[38] = xmmword_100EE5C00;
  v8[39] = xmmword_100EE5C10;
  v8[40] = xmmword_100EE5C20;
  memset(&v8[41], 0, 32);
  sub_1008762C8(v8);
  return memcpy(a1, v8, 0x2B1uLL);
}

double variable initialization expression of Layer.scale()
{
  __asm { FMOV            V0.2S, #1.0 }

  return result;
}

uint64_t getEnumTagSinglePayload for Lyrics.AudioAttribute(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Lyrics.AudioAttribute(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_100876398(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 688))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008763B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 680) = 0;
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

  *(result + 688) = v3;
  return result;
}

uint64_t sub_1008764AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A4F88, "ZA\v");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_100876524@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  __asm { FMOV            V1.4S, #1.0 }

  *(a1 + 32) = 0u;
  *(a1 + 48) = _Q1;
  *(a1 + 64) = xmmword_100EE5A20;
  *(a1 + 80) = xmmword_100EE5A30;
  *(a1 + 96) = xmmword_100EE5A40;
  *(a1 + 112) = xmmword_100EE5A50;
  *(a1 + 128) = xmmword_100EE5A60;
  *(a1 + 144) = xmmword_100EE5A70;
  *(a1 + 160) = xmmword_100EE5A80;
  *(a1 + 176) = xmmword_100EE5A90;
  *(a1 + 192) = xmmword_100EE5AA0;
  *(a1 + 208) = xmmword_100EE5AB0;
  *(a1 + 224) = xmmword_100EE5AC0;
  *(a1 + 240) = xmmword_100EE5AD0;
  *(a1 + 256) = xmmword_100EE5AE0;
  *(a1 + 272) = xmmword_100EE5AF0;
  *(a1 + 288) = xmmword_100EE5B00;
  *(a1 + 304) = xmmword_100EE5B10;
  *(a1 + 320) = 0x3F0000003F000000;
  *(a1 + 328) = 1067450368;
  *(a1 + 336) = xmmword_100EE5B20;
  *(a1 + 352) = xmmword_100EE5B30;
  *(a1 + 368) = xmmword_100EE5B40;
  *(a1 + 384) = xmmword_100EE5B50;
  *(a1 + 400) = xmmword_100EE5B60;
  *(a1 + 416) = 0x400000003EA66666;
  *(a1 + 424) = 0;
  *(a1 + 432) = _Q1;
  *(a1 + 448) = xmmword_100EE5B70;
  *(a1 + 464) = 0x400000003F000000;
  *(a1 + 472) = 0;
  *(a1 + 480) = xmmword_100EE5B80;
  *(a1 + 496) = xmmword_100EE5B90;
  *(a1 + 512) = xmmword_100EE5BA0;
  *(a1 + 528) = xmmword_100EE5BB0;
  *(a1 + 544) = xmmword_100EE5BC0;
  *(a1 + 560) = xmmword_100EE5BD0;
  *(a1 + 576) = xmmword_100EE5BE0;
  *(a1 + 592) = xmmword_100EE5BF0;
  *(a1 + 608) = xmmword_100EE5C00;
  *(a1 + 624) = xmmword_100EE5C10;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 640) = xmmword_100EE5C20;
  return result;
}

BOOL sub_1008766C0(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _sSo18FullSphereUniformsa7PanacheE2eeoiySbAB_ABtFZ_0(v4, __dst);
}

uint64_t sub_100876798(char a1)
{
  result = 0x756F72676B636162;
  switch(a1)
  {
    case 1:
      v3 = 0x756C6F736572;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
    case 2:
      return 0x726F6C6F63;
    case 3:
      return 0x30726F6C6F63;
    case 4:
      return 0x31726F6C6F63;
    case 5:
      return 0x32726F6C6F63;
    case 6:
      return 0x33726F6C6F63;
    case 7:
      return 0x34726F6C6F63;
    case 8:
      return 0x6E69617267;
    case 9:
      return 0x65646146706F74;
    case 10:
      return 0x4F65646146706F74;
    case 11:
      return 0x5065646146706F74;
    case 12:
      v3 = 0x617275746173;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
    case 13:
      return 0x74736172746E6F63;
    case 14:
      return 0x657265687073;
    case 15:
      return 0x656C616373;
    case 16:
      return 0x74657366666FLL;
    case 17:
      return 0x7373656E74666F73;
    case 18:
    case 19:
    case 20:
      return 0x746867694C6D6972;
    case 21:
      return 0xD000000000000012;
    case 22:
      return 0xD000000000000010;
    case 23:
      return 0xD000000000000013;
    case 24:
      return 0xD000000000000011;
    case 25:
      return 0x736944726F6C6F63;
    case 26:
    case 30:
    case 34:
    case 38:
    case 42:
    case 46:
      return 0x676953726F6C6F63;
    case 27:
    case 31:
    case 35:
    case 39:
    case 43:
    case 47:
      return 0x727053726F6C6F63;
    case 28:
    case 32:
    case 36:
    case 40:
    case 44:
    case 48:
      return 0x776F50726F6C6F63;
    case 29:
      return 0x736944726F6C6F63;
    case 33:
      return 0x736944726F6C6F63;
    case 37:
      return 0x736944726F6C6F63;
    case 41:
      return 0x736944726F6C6F63;
    case 45:
      return 0x736944726F6C6F63;
    case 49:
      return 0x647574696C706D61;
    case 50:
      return 0x636E657571657266;
    case 51:
      v4 = 1702257015;
      goto LABEL_78;
    case 52:
      return 0x6465657073;
    case 53:
      return 0x646165727073;
    case 54:
      return 0x7265776F70;
    case 55:
      return 0x30726F6C6F636762;
    case 56:
      return 0x31726F6C6F636762;
    case 57:
      return 0x32726F6C6F636762;
    case 58:
      return 0x33726F6C6F636762;
    case 59:
      return 0x74696C706D616762;
    case 60:
      return 0x6575716572666762;
    case 61:
      return 0x74657366666F6762;
    case 62:
      return 0x64656570736762;
    case 63:
      return 0x696C686769686762;
    case 64:
      return 0xD000000000000010;
    case 65:
      return 0x656D656E69666572;
    case 66:
      return 0x73736572676F7270;
    case 67:
      return 0x6769537472617473;
    case 68:
      return 0x776F507472617473;
    case 69:
      return 0x616D676953646E65;
    case 70:
      return 0x7265776F50646E65;
    case 71:
      v5 = 1701077350;
      goto LABEL_14;
    case 72:
      return 0x30657474656C6170;
    case 73:
      return 0x31657474656C6170;
    case 74:
      return 0x32657474656C6170;
    case 75:
      return 0x33657474656C6170;
    case 76:
      return 0x34657474656C6170;
    case 77:
      return 0x35657474656C6170;
    case 80:
      return 0xD000000000000010;
    case 81:
      return 0x656870536F726568;
    case 82:
      return 0x6C6163536F726568;
    case 83:
      v4 = 1869768040;
LABEL_78:
      result = v4 | 0x7366664F00000000;
      break;
    case 84:
      result = 0x4C6D69526F726568;
      break;
    case 85:
      result = 0x506D69526F726568;
      break;
    case 86:
      result = 0x6F6C61486F726568;
      break;
    case 87:
      result = 0x6D6769536F726568;
      break;
    case 88:
      v5 = 1869768040;
LABEL_14:
      result = v5 | 0x65776F5000000000;
      break;
    case 89:
      result = 0x766157646E656C62;
      break;
    case 90:
      result = 0x62724F646E656C62;
      break;
    case 91:
      result = 0x726548646E656C62;
      break;
    case 92:
      result = 0x636142646E656C62;
      break;
    case 93:
      result = 0xD000000000000014;
      break;
    case 94:
      result = 0x666552646E656C62;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100877084(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100876798(*a1);
  v5 = v4;
  if (v3 == sub_100876798(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10087710C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100876798(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100877170(uint64_t a1)
{
  sub_100876798(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int sub_1008771C4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100876798(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100877224@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100878FEC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100877254@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100876798(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100877288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100878FEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008772BC(uint64_t a1)
{
  v2 = sub_100878F98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008772F8(uint64_t a1)
{
  v2 = sub_100878F98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FullSphereUniforms.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_1011A50C0, &unk_100EE5CF8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v12 - v7;
  sub_10000954C(a1, a1[3]);
  sub_100878F98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v3[1];
  v13 = 0;
  v9 = sub_10010FC20(&qword_1011A50D0, &qword_100EE6E20);
  v10 = sub_10087C6A8(&qword_1011A50D8, &protocol conformance descriptor for SIMD4<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v13 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[3];
    v13 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[4];
    v13 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[5];
    v13 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[6];
    v13 = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[7];
    v13 = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[8];
    v13 = 7;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[1] = v9;
    v12[2] = v10;
    LOBYTE(v14) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 16;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 17;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 19;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 20;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 21;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 22;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 23;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 24;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 25;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 26;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 27;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 28;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 29;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 30;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 31;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 32;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 33;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 34;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 35;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 36;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 37;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 38;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 39;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 40;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 41;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 42;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 43;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 44;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 45;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 46;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 47;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 48;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 49;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 50;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 51;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 52;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 53;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 54;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[21];
    v13 = 55;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[22];
    v13 = 56;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[23];
    v13 = 57;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[24];
    v13 = 58;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 59;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 60;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 61;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 62;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 63;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 64;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[27];
    v13 = 65;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 66;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 67;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 68;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 69;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 70;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 71;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[30];
    v13 = 72;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[31];
    v13 = 73;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[32];
    v13 = 74;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[33];
    v13 = 75;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[34];
    v13 = 76;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[35];
    v13 = 77;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[36];
    v13 = 78;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[37];
    v13 = 79;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[38];
    v13 = 80;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 81;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 82;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 83;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 84;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 85;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 86;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 87;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 88;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 89;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 90;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 91;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 92;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 93;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 94;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void *FullSphereUniforms.init(from:)@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_100879040(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x2B0uLL);
  }

  return result;
}

BOOL _sSo18FullSphereUniformsa7PanacheE2eeoiySbAB_ABtFZ_0(float32x4_t *a1, float32x4_t *a2)
{
  v2 = vmovn_s32(vceqq_f32(a1[1], a2[1]));
  return (v2.i16[0] & v2.i16[1] & 1) != 0
      && (v2.i16[2] & v2.i16[3] & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[2], a2[2]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[3], a2[3]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[4], a2[4]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[5], a2[5]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[6], a2[6]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[7], a2[7]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[8], a2[8]))) & 1) != 0
      && a1[9].f32[0] == a2[9].f32[0]
      && a1[9].f32[1] == a2[9].f32[1]
      && a1[9].f32[2] == a2[9].f32[2]
      && a1[9].f32[3] == a2[9].f32[3]
      && a1[10].f32[0] == a2[10].f32[0]
      && a1[10].f32[1] == a2[10].f32[1]
      && a1[10].f32[2] == a2[10].f32[2]
      && a1[10].f32[3] == a2[10].f32[3]
      && a1[11].f32[0] == a2[11].f32[0]
      && a1[11].f32[1] == a2[11].f32[1]
      && a1[11].f32[2] == a2[11].f32[2]
      && a1[11].f32[3] == a2[11].f32[3]
      && a1[12].f32[0] == a2[12].f32[0]
      && a1[12].f32[1] == a2[12].f32[1]
      && a1[12].f32[2] == a2[12].f32[2]
      && a1[12].f32[3] == a2[12].f32[3]
      && a1[13].f32[0] == a2[13].f32[0]
      && a1[13].f32[1] == a2[13].f32[1]
      && a1[13].f32[2] == a2[13].f32[2]
      && a1[13].f32[3] == a2[13].f32[3]
      && a1[14].f32[0] == a2[14].f32[0]
      && a1[14].f32[1] == a2[14].f32[1]
      && a1[14].f32[2] == a2[14].f32[2]
      && a1[14].f32[3] == a2[14].f32[3]
      && a1[15].f32[0] == a2[15].f32[0]
      && a1[15].f32[1] == a2[15].f32[1]
      && a1[15].f32[2] == a2[15].f32[2]
      && a1[15].f32[3] == a2[15].f32[3]
      && a1[16].f32[0] == a2[16].f32[0]
      && a1[16].f32[1] == a2[16].f32[1]
      && a1[16].f32[2] == a2[16].f32[2]
      && a1[16].f32[3] == a2[16].f32[3]
      && a1[17].f32[0] == a2[17].f32[0]
      && a1[17].f32[1] == a2[17].f32[1]
      && a1[17].f32[2] == a2[17].f32[2]
      && a1[17].f32[3] == a2[17].f32[3]
      && a1[18].f32[0] == a2[18].f32[0]
      && a1[18].f32[1] == a2[18].f32[1]
      && a1[18].f32[2] == a2[18].f32[2]
      && a1[18].f32[3] == a2[18].f32[3]
      && a1[19].f32[0] == a2[19].f32[0]
      && a1[19].f32[1] == a2[19].f32[1]
      && a1[19].f32[2] == a2[19].f32[2]
      && a1[19].f32[3] == a2[19].f32[3]
      && a1[20].f32[0] == a2[20].f32[0]
      && a1[20].f32[1] == a2[20].f32[1]
      && a1[20].f32[2] == a2[20].f32[2]
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[21], a2[21]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[22], a2[22]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[23], a2[23]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[24], a2[24]))) & 1) != 0
      && a1[25].f32[0] == a2[25].f32[0]
      && a1[25].f32[1] == a2[25].f32[1]
      && a1[25].f32[2] == a2[25].f32[2]
      && a1[25].f32[3] == a2[25].f32[3]
      && a1[26].f32[0] == a2[26].f32[0]
      && a1[26].f32[1] == a2[26].f32[1]
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[27], a2[27]))) & 1) != 0
      && a1[28].f32[0] == a2[28].f32[0]
      && a1[28].f32[1] == a2[28].f32[1]
      && a1[28].f32[2] == a2[28].f32[2]
      && a1[28].f32[3] == a2[28].f32[3]
      && a1[29].f32[0] == a2[29].f32[0]
      && a1[29].f32[1] == a2[29].f32[1]
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[30], a2[30]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[31], a2[31]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[32], a2[32]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[33], a2[33]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[34], a2[34]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[35], a2[35]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[36], a2[36]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[37], a2[37]))) & 1) != 0
      && (vminv_u16(vmovn_s32(vceqq_f32(a1[38], a2[38]))) & 1) != 0
      && a1[39].f32[0] == a2[39].f32[0]
      && a1[39].f32[1] == a2[39].f32[1]
      && a1[39].f32[2] == a2[39].f32[2]
      && a1[39].f32[3] == a2[39].f32[3]
      && a1[40].f32[0] == a2[40].f32[0]
      && a1[40].f32[1] == a2[40].f32[1]
      && a1[40].f32[2] == a2[40].f32[2]
      && a1[40].f32[3] == a2[40].f32[3]
      && a1[41].f32[0] == a2[41].f32[0]
      && a1[41].f32[1] == a2[41].f32[1]
      && a1[41].f32[2] == a2[41].f32[2]
      && a1[41].f32[3] == a2[41].f32[3]
      && a1[42].f32[0] == a2[42].f32[0]
      && a1[42].f32[1] == a2[42].f32[1];
}

float32x2_t sub_100878BD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(a1 + 332);
  v4 = *(a1 + 424);
  v5 = *(a1 + 472);
  v6 = *(a1 + 680);
  v7 = vdupq_lane_s32(*&a3, 0).u64[0];
  v8 = vmulq_n_f32(*(a1 + 16), *&a3);
  v9 = vmulq_n_f32(*(a1 + 32), *&a3);
  v10 = vmulq_n_f32(*(a1 + 48), *&a3);
  v11 = vmulq_n_f32(*(a1 + 64), *&a3);
  v12 = vmulq_n_f32(*(a1 + 80), *&a3);
  v13 = vmulq_n_f32(*(a1 + 96), *&a3);
  v14 = vmulq_n_f32(*(a1 + 112), *&a3);
  v15 = *(a1 + 144);
  v16 = vmulq_n_f32(*(a1 + 128), *&a3);
  v17 = *(a1 + 328) * *&a3;
  v18 = vmulq_n_f32(*(a1 + 336), *&a3);
  v19 = vmulq_n_f32(*(a1 + 352), *&a3);
  v20 = vmulq_n_f32(*(a1 + 368), *&a3);
  v21 = vmulq_n_f32(*(a1 + 384), *&a3);
  v22 = *(a1 + 448);
  v23 = vmulq_n_f32(*(a1 + 432), *&a3);
  v24 = vmulq_n_f32(*(a1 + 480), *&a3);
  v25 = vmulq_n_f32(*(a1 + 496), *&a3);
  v26 = vmulq_n_f32(*(a1 + 512), *&a3);
  v27 = vmulq_n_f32(*(a1 + 528), *&a3);
  v28 = vmulq_n_f32(*(a1 + 544), *&a3);
  v29 = vmulq_n_f32(*(a1 + 560), *&a3);
  v30 = vmulq_n_f32(*(a1 + 576), *&a3);
  v31 = vmulq_n_f32(*(a1 + 592), *&a3);
  *a2 = *a1;
  *(a2 + 16) = v8;
  v32 = *(a1 + 624);
  v33 = vmulq_n_f32(*(a1 + 608), *&a3);
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  *(a2 + 80) = v12;
  *(a2 + 96) = v13;
  *(a2 + 112) = v14;
  *(a2 + 128) = v16;
  *(a2 + 144) = vmulq_n_f32(v15, *&a3);
  v34 = vmulq_n_f32(*(a1 + 176), *&a3);
  *(a2 + 160) = vmulq_n_f32(*(a1 + 160), *&a3);
  *(a2 + 176) = v34;
  v35 = vmulq_n_f32(*(a1 + 208), *&a3);
  *(a2 + 192) = vmulq_n_f32(*(a1 + 192), *&a3);
  *(a2 + 208) = v35;
  v36 = vmulq_n_f32(*(a1 + 240), *&a3);
  *(a2 + 224) = vmulq_n_f32(*(a1 + 224), *&a3);
  *(a2 + 240) = v36;
  v37 = vmulq_n_f32(*(a1 + 272), *&a3);
  *(a2 + 256) = vmulq_n_f32(*(a1 + 256), *&a3);
  *(a2 + 272) = v37;
  v38 = vmulq_n_f32(*(a1 + 304), *&a3);
  *(a2 + 288) = vmulq_n_f32(*(a1 + 288), *&a3);
  *(a2 + 304) = v38;
  *(a2 + 320) = vmul_f32(*(a1 + 320), v7);
  *(a2 + 328) = v17;
  *(a2 + 332) = v3;
  *(a2 + 336) = v18;
  *(a2 + 352) = v19;
  *(a2 + 368) = v20;
  *(a2 + 384) = v21;
  *(a2 + 400) = vmulq_n_f32(*(a1 + 400), *&a3);
  *(a2 + 416) = vmul_f32(*(a1 + 416), v7);
  *(a2 + 424) = v4;
  *(a2 + 432) = v23;
  *(a2 + 448) = vmulq_n_f32(v22, *&a3);
  *(a2 + 464) = vmul_f32(*(a1 + 464), v7);
  *(a2 + 472) = v5;
  *(a2 + 480) = v24;
  *(a2 + 496) = v25;
  *(a2 + 512) = v26;
  *(a2 + 528) = v27;
  *(a2 + 544) = v28;
  *(a2 + 560) = v29;
  *(a2 + 576) = v30;
  *(a2 + 592) = v31;
  *(a2 + 608) = v33;
  *(a2 + 624) = vmulq_n_f32(v32, *&a3);
  v39 = vmulq_n_f32(*(a1 + 640), *&a3);
  v40 = vmulq_n_f32(*(a1 + 656), *&a3);
  *(a2 + 640) = v39;
  *(a2 + 656) = v40;
  result = vmul_f32(*(a1 + 672), v7);
  *(a2 + 672) = result;
  *(a2 + 680) = v6;
  return result;
}

float32x2_t sub_100878D84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = vaddq_f32(*(a1 + 16), *(a2 + 16));
  v4 = vaddq_f32(*(a1 + 32), *(a2 + 32));
  v5 = vaddq_f32(*(a1 + 48), *(a2 + 48));
  v6 = vaddq_f32(*(a1 + 64), *(a2 + 64));
  v7 = vaddq_f32(*(a1 + 80), *(a2 + 80));
  v8 = vaddq_f32(*(a1 + 96), *(a2 + 96));
  v9 = vaddq_f32(*(a1 + 112), *(a2 + 112));
  v10 = *(a1 + 144);
  v11 = vaddq_f32(*(a1 + 128), *(a2 + 128));
  v12 = *(a1 + 328) + *(a2 + 328);
  v13 = vaddq_f32(*(a1 + 336), *(a2 + 336));
  v14 = vaddq_f32(*(a1 + 352), *(a2 + 352));
  v15 = vaddq_f32(*(a1 + 368), *(a2 + 368));
  v16 = vaddq_f32(*(a1 + 384), *(a2 + 384));
  v17 = *(a1 + 448);
  v18 = *(a2 + 448);
  v19 = vaddq_f32(*(a1 + 432), *(a2 + 432));
  v20 = vaddq_f32(*(a1 + 480), *(a2 + 480));
  v21 = vaddq_f32(*(a1 + 496), *(a2 + 496));
  v22 = vaddq_f32(*(a1 + 512), *(a2 + 512));
  v23 = vaddq_f32(*(a1 + 528), *(a2 + 528));
  v24 = vaddq_f32(*(a1 + 544), *(a2 + 544));
  v25 = vaddq_f32(*(a1 + 560), *(a2 + 560));
  v26 = vaddq_f32(*(a1 + 576), *(a2 + 576));
  v27 = vaddq_f32(*(a1 + 592), *(a2 + 592));
  v28 = *(a1 + 624);
  v29 = *(a2 + 624);
  v30 = vaddq_f32(*(a1 + 608), *(a2 + 608));
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = v4;
  *(a3 + 48) = v5;
  v31 = *(a1 + 332);
  v32 = *(a1 + 424);
  v33 = *(a1 + 472);
  v34 = *(a1 + 680);
  *(a3 + 64) = v6;
  *(a3 + 80) = v7;
  *(a3 + 96) = v8;
  *(a3 + 112) = v9;
  v35 = *(a2 + 160);
  v36 = vaddq_f32(v10, *(a2 + 144));
  *(a3 + 128) = v11;
  *(a3 + 144) = v36;
  v37 = vaddq_f32(*(a1 + 160), v35);
  v38 = *(a2 + 192);
  v39 = vaddq_f32(*(a1 + 176), *(a2 + 176));
  *(a3 + 160) = v37;
  *(a3 + 176) = v39;
  v40 = vaddq_f32(*(a1 + 192), v38);
  v41 = *(a2 + 224);
  v42 = vaddq_f32(*(a1 + 208), *(a2 + 208));
  *(a3 + 192) = v40;
  *(a3 + 208) = v42;
  v43 = vaddq_f32(*(a1 + 224), v41);
  v44 = *(a2 + 256);
  v45 = vaddq_f32(*(a1 + 240), *(a2 + 240));
  *(a3 + 224) = v43;
  *(a3 + 240) = v45;
  v46 = vaddq_f32(*(a1 + 256), v44);
  v47 = *(a2 + 288);
  v48 = vaddq_f32(*(a1 + 272), *(a2 + 272));
  *(a3 + 256) = v46;
  *(a3 + 272) = v48;
  v49 = vaddq_f32(*(a1 + 304), *(a2 + 304));
  *(a3 + 288) = vaddq_f32(*(a1 + 288), v47);
  *(a3 + 304) = v49;
  *(a3 + 320) = vadd_f32(*(a1 + 320), *(a2 + 320));
  *(a3 + 328) = v12;
  *(a3 + 332) = v31;
  *(a3 + 336) = v13;
  *(a3 + 352) = v14;
  *(a3 + 368) = v15;
  *(a3 + 384) = v16;
  *(a3 + 400) = vaddq_f32(*(a1 + 400), *(a2 + 400));
  *(a3 + 416) = vadd_f32(*(a1 + 416), *(a2 + 416));
  *(a3 + 424) = v32;
  *(a3 + 432) = v19;
  *(a3 + 448) = vaddq_f32(v17, v18);
  *(a3 + 464) = vadd_f32(*(a1 + 464), *(a2 + 464));
  *(a3 + 472) = v33;
  *(a3 + 480) = v20;
  *(a3 + 496) = v21;
  *(a3 + 512) = v22;
  *(a3 + 528) = v23;
  *(a3 + 544) = v24;
  *(a3 + 560) = v25;
  *(a3 + 576) = v26;
  *(a3 + 592) = v27;
  *(a3 + 608) = v30;
  *(a3 + 624) = vaddq_f32(v28, v29);
  v50 = vaddq_f32(*(a1 + 656), *(a2 + 656));
  *(a3 + 640) = vaddq_f32(*(a1 + 640), *(a2 + 640));
  *(a3 + 656) = v50;
  result = vadd_f32(*(a1 + 672), *(a2 + 672));
  *(a3 + 672) = result;
  *(a3 + 680) = v34;
  return result;
}

unint64_t sub_100878F98()
{
  result = qword_1011A50C8;
  if (!qword_1011A50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A50C8);
  }

  return result;
}

unint64_t sub_100878FEC(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x5F)
  {
    return 95;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100879040@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10010FC20(&qword_1011A5100, &unk_100EE6AD0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v101 - v7;
  sub_10000954C(a1, a1[3]);
  sub_100878F98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v189 = 0uLL;
  sub_10010FC20(&qword_1011A50D0, &qword_100EE6E20);
  v191 = 0;
  sub_10087C6A8(&qword_1011A5108, &protocol conformance descriptor for SIMD4<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v187 = v188;
  v191 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v186 = v188;
  v191 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v185 = v188;
  v191 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v184 = v188;
  v191 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v183 = v188;
  v191 = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v182 = v188;
  v191 = 6;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v181 = v188;
  v191 = 7;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v180 = v188;
  LOBYTE(v188) = 8;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  LOBYTE(v188) = 9;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v188) = 10;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  LOBYTE(v188) = 11;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  LOBYTE(v188) = 12;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  LOBYTE(v188) = 13;
  KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v19;
  LOBYTE(v188) = 14;
  KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v21;
  LOBYTE(v188) = 15;
  KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v23;
  LOBYTE(v188) = 16;
  KeyedDecodingContainer.decode(_:forKey:)();
  v190 = v25;
  LOBYTE(v188) = 17;
  KeyedDecodingContainer.decode(_:forKey:)();
  v179 = v26;
  LOBYTE(v188) = 18;
  KeyedDecodingContainer.decode(_:forKey:)();
  v178 = v27;
  LOBYTE(v188) = 19;
  KeyedDecodingContainer.decode(_:forKey:)();
  v177 = v28;
  LOBYTE(v188) = 20;
  KeyedDecodingContainer.decode(_:forKey:)();
  v176 = v29;
  LOBYTE(v188) = 21;
  KeyedDecodingContainer.decode(_:forKey:)();
  v175 = v30;
  LOBYTE(v188) = 22;
  KeyedDecodingContainer.decode(_:forKey:)();
  v174 = v31;
  LOBYTE(v188) = 23;
  KeyedDecodingContainer.decode(_:forKey:)();
  v173 = v32;
  LOBYTE(v188) = 24;
  KeyedDecodingContainer.decode(_:forKey:)();
  v172 = v33;
  LOBYTE(v188) = 25;
  KeyedDecodingContainer.decode(_:forKey:)();
  v171 = v34;
  LOBYTE(v188) = 26;
  KeyedDecodingContainer.decode(_:forKey:)();
  v170 = v35;
  LOBYTE(v188) = 27;
  KeyedDecodingContainer.decode(_:forKey:)();
  v169 = v36;
  LOBYTE(v188) = 28;
  KeyedDecodingContainer.decode(_:forKey:)();
  v168 = v37;
  LOBYTE(v188) = 29;
  KeyedDecodingContainer.decode(_:forKey:)();
  v167 = v38;
  LOBYTE(v188) = 30;
  KeyedDecodingContainer.decode(_:forKey:)();
  v166 = v39;
  LOBYTE(v188) = 31;
  KeyedDecodingContainer.decode(_:forKey:)();
  v165 = v40;
  LOBYTE(v188) = 32;
  KeyedDecodingContainer.decode(_:forKey:)();
  v164 = v41;
  LOBYTE(v188) = 33;
  KeyedDecodingContainer.decode(_:forKey:)();
  v163 = v42;
  LOBYTE(v188) = 34;
  KeyedDecodingContainer.decode(_:forKey:)();
  v162 = v43;
  LOBYTE(v188) = 35;
  KeyedDecodingContainer.decode(_:forKey:)();
  v161 = v44;
  LOBYTE(v188) = 36;
  KeyedDecodingContainer.decode(_:forKey:)();
  v160 = v45;
  LOBYTE(v188) = 37;
  KeyedDecodingContainer.decode(_:forKey:)();
  v159 = v46;
  LOBYTE(v188) = 38;
  KeyedDecodingContainer.decode(_:forKey:)();
  v158 = v47;
  LOBYTE(v188) = 39;
  KeyedDecodingContainer.decode(_:forKey:)();
  v157 = v48;
  LOBYTE(v188) = 40;
  KeyedDecodingContainer.decode(_:forKey:)();
  v156 = v49;
  LOBYTE(v188) = 41;
  KeyedDecodingContainer.decode(_:forKey:)();
  v155 = v50;
  LOBYTE(v188) = 42;
  KeyedDecodingContainer.decode(_:forKey:)();
  v154 = v51;
  LOBYTE(v188) = 43;
  KeyedDecodingContainer.decode(_:forKey:)();
  v153 = v52;
  LOBYTE(v188) = 44;
  KeyedDecodingContainer.decode(_:forKey:)();
  v152 = v53;
  LOBYTE(v188) = 45;
  KeyedDecodingContainer.decode(_:forKey:)();
  v151 = v54;
  LOBYTE(v188) = 46;
  KeyedDecodingContainer.decode(_:forKey:)();
  v150 = v55;
  LOBYTE(v188) = 47;
  KeyedDecodingContainer.decode(_:forKey:)();
  v149 = v56;
  LOBYTE(v188) = 48;
  KeyedDecodingContainer.decode(_:forKey:)();
  v148 = v57;
  LOBYTE(v188) = 49;
  KeyedDecodingContainer.decode(_:forKey:)();
  v147 = v58;
  LOBYTE(v188) = 50;
  KeyedDecodingContainer.decode(_:forKey:)();
  v146 = v59;
  LOBYTE(v188) = 51;
  KeyedDecodingContainer.decode(_:forKey:)();
  v145 = v60;
  LOBYTE(v188) = 52;
  KeyedDecodingContainer.decode(_:forKey:)();
  v144 = v61;
  LOBYTE(v188) = 53;
  KeyedDecodingContainer.decode(_:forKey:)();
  v143 = v62;
  LOBYTE(v188) = 54;
  KeyedDecodingContainer.decode(_:forKey:)();
  v142 = v63;
  v191 = 55;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v141 = v188;
  v191 = 56;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v140 = v188;
  v191 = 57;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v139 = v188;
  v191 = 58;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v138 = v188;
  LOBYTE(v188) = 59;
  KeyedDecodingContainer.decode(_:forKey:)();
  v137 = v64;
  LOBYTE(v188) = 60;
  KeyedDecodingContainer.decode(_:forKey:)();
  v135 = v65;
  LOBYTE(v188) = 61;
  KeyedDecodingContainer.decode(_:forKey:)();
  v134 = v66;
  LOBYTE(v188) = 62;
  KeyedDecodingContainer.decode(_:forKey:)();
  v132 = v67;
  LOBYTE(v188) = 63;
  KeyedDecodingContainer.decode(_:forKey:)();
  v130 = v68;
  LOBYTE(v188) = 64;
  KeyedDecodingContainer.decode(_:forKey:)();
  v136 = v69;
  v191 = 65;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v133 = v188;
  LOBYTE(v188) = 66;
  KeyedDecodingContainer.decode(_:forKey:)();
  v131 = v70;
  LOBYTE(v188) = 67;
  KeyedDecodingContainer.decode(_:forKey:)();
  v129 = v71;
  LOBYTE(v188) = 68;
  KeyedDecodingContainer.decode(_:forKey:)();
  v128 = v72;
  LOBYTE(v188) = 69;
  KeyedDecodingContainer.decode(_:forKey:)();
  v127 = v73;
  LOBYTE(v188) = 70;
  KeyedDecodingContainer.decode(_:forKey:)();
  v126 = v74;
  LOBYTE(v188) = 71;
  KeyedDecodingContainer.decode(_:forKey:)();
  v125 = v75;
  v191 = 72;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v124 = v188;
  v191 = 73;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v123 = v188;
  v191 = 74;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v122 = v188;
  v191 = 75;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v121 = v188;
  v191 = 76;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v120 = v188;
  v191 = 77;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v119 = v188;
  v191 = 78;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v118 = v188;
  v191 = 79;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v117 = v188;
  v191 = 80;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v116 = v188;
  LOBYTE(v188) = 81;
  KeyedDecodingContainer.decode(_:forKey:)();
  v115 = v76;
  LOBYTE(v188) = 82;
  KeyedDecodingContainer.decode(_:forKey:)();
  v114 = v77;
  LOBYTE(v188) = 83;
  KeyedDecodingContainer.decode(_:forKey:)();
  v113 = v78;
  LOBYTE(v188) = 84;
  KeyedDecodingContainer.decode(_:forKey:)();
  v112 = v79;
  LOBYTE(v188) = 85;
  KeyedDecodingContainer.decode(_:forKey:)();
  v111 = v80;
  LOBYTE(v188) = 86;
  KeyedDecodingContainer.decode(_:forKey:)();
  v110 = v81;
  LOBYTE(v188) = 87;
  KeyedDecodingContainer.decode(_:forKey:)();
  v109 = v82;
  LOBYTE(v188) = 88;
  KeyedDecodingContainer.decode(_:forKey:)();
  v108 = v83;
  LOBYTE(v188) = 89;
  KeyedDecodingContainer.decode(_:forKey:)();
  v107 = v84;
  LOBYTE(v188) = 90;
  KeyedDecodingContainer.decode(_:forKey:)();
  v106 = v85;
  LOBYTE(v188) = 91;
  KeyedDecodingContainer.decode(_:forKey:)();
  v105 = v86;
  LOBYTE(v188) = 92;
  KeyedDecodingContainer.decode(_:forKey:)();
  v104 = v87;
  LOBYTE(v188) = 93;
  KeyedDecodingContainer.decode(_:forKey:)();
  v103 = v88;
  LOBYTE(v188) = 94;
  KeyedDecodingContainer.decode(_:forKey:)();
  v102 = v89;
  (*(v6 + 8))(v8, v5);
  result = sub_10000959C(a1);
  v91 = v185;
  *(a2 + 32) = v186;
  *(a2 + 48) = v91;
  v92 = v183;
  *(a2 + 64) = v184;
  *(a2 + 80) = v92;
  v93 = v181;
  *(a2 + 96) = v182;
  *(a2 + 112) = v93;
  *(a2 + 128) = v180;
  *(a2 + 144) = v10;
  *(a2 + 148) = v12;
  *(a2 + 152) = v14;
  *(a2 + 156) = v16;
  *(a2 + 160) = v18;
  *(a2 + 164) = v20;
  *(a2 + 168) = v22;
  *(a2 + 172) = v24;
  LODWORD(v93) = v179;
  *(a2 + 176) = v190;
  *(a2 + 180) = v93;
  LODWORD(v93) = v177;
  *(a2 + 184) = v178;
  *(a2 + 188) = v93;
  LODWORD(v93) = v175;
  *(a2 + 192) = v176;
  *(a2 + 196) = v93;
  LODWORD(v93) = v173;
  *(a2 + 200) = v174;
  *(a2 + 204) = v93;
  LODWORD(v93) = v171;
  *(a2 + 208) = v172;
  *(a2 + 212) = v93;
  LODWORD(v93) = v169;
  *(a2 + 216) = v170;
  *(a2 + 220) = v93;
  LODWORD(v93) = v167;
  *(a2 + 224) = v168;
  *(a2 + 228) = v93;
  LODWORD(v93) = v165;
  *(a2 + 232) = v166;
  *(a2 + 236) = v93;
  LODWORD(v93) = v163;
  *(a2 + 240) = v164;
  *(a2 + 244) = v93;
  LODWORD(v93) = v161;
  *(a2 + 248) = v162;
  *(a2 + 252) = v93;
  *(a2 + 256) = v160;
  *(a2 + 260) = v159;
  *(a2 + 264) = v158;
  *(a2 + 268) = v157;
  *(a2 + 272) = v156;
  *(a2 + 276) = v155;
  *(a2 + 280) = v154;
  *(a2 + 284) = v153;
  *(a2 + 288) = v152;
  *(a2 + 292) = v151;
  *(a2 + 296) = v150;
  *(a2 + 300) = v149;
  *(a2 + 304) = v148;
  *(a2 + 308) = v147;
  *(a2 + 312) = v146;
  *(a2 + 316) = v145;
  *(a2 + 320) = v144;
  *(a2 + 324) = v143;
  *(a2 + 328) = v142;
  v94 = v140;
  *(a2 + 336) = v141;
  *(a2 + 352) = v94;
  v95 = v138;
  *(a2 + 368) = v139;
  *(a2 + 384) = v95;
  *(a2 + 400) = v137;
  *(a2 + 404) = v135;
  *(a2 + 408) = v134;
  *(a2 + 412) = v132;
  *(a2 + 416) = v130;
  v96 = v187;
  *a2 = v189;
  *(a2 + 16) = v96;
  *(a2 + 332) = 0;
  *(a2 + 420) = v136;
  *(a2 + 424) = 0;
  *(a2 + 432) = v133;
  *(a2 + 448) = v131;
  *(a2 + 452) = v129;
  *(a2 + 456) = v128;
  *(a2 + 460) = v127;
  *(a2 + 464) = v126;
  *(a2 + 468) = v125;
  *(a2 + 472) = 0;
  v97 = v123;
  *(a2 + 480) = v124;
  *(a2 + 496) = v97;
  v98 = v121;
  *(a2 + 512) = v122;
  *(a2 + 528) = v98;
  v99 = v119;
  *(a2 + 544) = v120;
  *(a2 + 560) = v99;
  v100 = v117;
  *(a2 + 576) = v118;
  *(a2 + 592) = v100;
  *(a2 + 608) = v116;
  *(a2 + 624) = v115;
  *(a2 + 628) = v114;
  *(a2 + 632) = v113;
  *(a2 + 636) = v112;
  *(a2 + 640) = v111;
  *(a2 + 644) = v110;
  *(a2 + 648) = v109;
  *(a2 + 652) = v108;
  *(a2 + 656) = v107;
  *(a2 + 660) = v106;
  *(a2 + 664) = v105;
  *(a2 + 668) = v104;
  *(a2 + 672) = v103;
  *(a2 + 676) = v102;
  *(a2 + 680) = 0;
  return result;
}

uint64_t sub_10087A7A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6974756C6F736572 && a2 == 0xEA00000000006E6FLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x726F6C6F63 && a2 == 0xE500000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x30726F6C6F63 && a2 == 0xE600000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x31726F6C6F63 && a2 == 0xE600000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x32726F6C6F63 && a2 == 0xE600000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x33726F6C6F63 && a2 == 0xE600000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x34726F6C6F63 && a2 == 0xE600000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6E69617267 && a2 == 0xE500000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x65646146706F74 && a2 == 0xE700000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x4F65646146706F74 && a2 == 0xED00007465736666
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x5065646146706F74 && a2 == 0xEC0000007265776FLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6974617275746173 && a2 == 0xEA00000000006E6FLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x74736172746E6F63 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x657265687073 && a2 == 0xE600000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x656C616373 && a2 == 0xE500000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x74657366666FLL && a2 == 0xE600000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x7373656E74666F73 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x746867694C6D6972 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x746867694C6D6972 && a2 == 0xED0000616D676953
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x746867694C6D6972 && a2 == 0xED00007265776F50
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0xD000000000000012 && 0x8000000100E58DE0 == a2
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0xD000000000000010 && 0x8000000100E58E00 == a2
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0xD000000000000013 && 0x8000000100E58E20 == a2
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0xD000000000000011 && 0x8000000100E58E40 == a2
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x736944726F6C6F63 && a2 == 0xEA00000000003074
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x676953726F6C6F63 && a2 == 0xEB0000000030616DLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x727053726F6C6F63 && a2 == 0xEC00000030646165
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x776F50726F6C6F63 && a2 == 0xEB00000000307265
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x736944726F6C6F63 && a2 == 0xEA00000000003174
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x676953726F6C6F63 && a2 == 0xEB0000000031616DLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x727053726F6C6F63 && a2 == 0xEC00000031646165
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x776F50726F6C6F63 && a2 == 0xEB00000000317265
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x736944726F6C6F63 && a2 == 0xEA00000000003274
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x676953726F6C6F63 && a2 == 0xEB0000000032616DLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x727053726F6C6F63 && a2 == 0xEC00000032646165
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x776F50726F6C6F63 && a2 == 0xEB00000000327265
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x736944726F6C6F63 && a2 == 0xEA00000000003374
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x676953726F6C6F63 && a2 == 0xEB0000000033616DLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x727053726F6C6F63 && a2 == 0xEC00000033646165
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x776F50726F6C6F63 && a2 == 0xEB00000000337265
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x736944726F6C6F63 && a2 == 0xEA00000000003474
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x676953726F6C6F63 && a2 == 0xEB0000000034616DLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x727053726F6C6F63 && a2 == 0xEC00000034646165
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x776F50726F6C6F63 && a2 == 0xEB00000000347265
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x736944726F6C6F63 && a2 == 0xEA00000000003574
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x676953726F6C6F63 && a2 == 0xEB0000000035616DLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x727053726F6C6F63 && a2 == 0xEC00000035646165
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x776F50726F6C6F63 && a2 == 0xEB00000000357265
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x647574696C706D61 && a2 == 0xE900000000000065
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x636E657571657266 && a2 == 0xE900000000000079
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x7366664F65766177 && a2 == 0xEA00000000007465
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6465657073 && a2 == 0xE500000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x646165727073 && a2 == 0xE600000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x7265776F70 && a2 == 0xE500000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x30726F6C6F636762 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x31726F6C6F636762 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x32726F6C6F636762 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x33726F6C6F636762 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x74696C706D616762 && a2 == 0xEB00000000656475
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6575716572666762 && a2 == 0xEB0000000079636ELL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x74657366666F6762 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x64656570736762 && a2 == 0xE700000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x696C686769686762 && a2 == 0xEB00000000746867
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0xD000000000000010 && 0x8000000100E59000 == a2
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x656D656E69666572 && a2 == 0xEF726F6C6F43746ELL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x73736572676F7270 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6769537472617473 && a2 == 0xEA0000000000616DLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x776F507472617473 && a2 == 0xEA00000000007265
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x616D676953646E65 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x7265776F50646E65 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x65776F5065646166 && a2 == 0xE900000000000072
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x30657474656C6170 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x31657474656C6170 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x32657474656C6170 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x33657474656C6170 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x34657474656C6170 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x35657474656C6170 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x756F72676B636162 && a2 == 0xEF7472617453646ELL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x756F72676B636162 && a2 == 0xED0000646E45646ELL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0xD000000000000010 && 0x8000000100E590B0 == a2
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x656870536F726568 && a2 == 0xEA00000000006572
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6C6163536F726568 && a2 == 0xE900000000000065
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x7366664F6F726568 && a2 == 0xEA00000000007465
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x4C6D69526F726568 && a2 == 0xEC00000074686769
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x506D69526F726568 && a2 == 0xEC0000007265776FLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6F6C61486F726568 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x6D6769536F726568 && a2 == 0xE900000000000061
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x65776F506F726568 && a2 == 0xE900000000000072
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x766157646E656C62 && a2 == 0xE900000000000065
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x62724F646E656C62 && a2 == 0xE800000000000000
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x726548646E656C62 && a2 == 0xE90000000000006FLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x636142646E656C62 && a2 == 0xEF646E756F72676BLL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0xD000000000000014 && 0x8000000100E59150 == a2
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || a1 == 0x666552646E656C62 && a2 == 0xEF746E656D656E69
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return swift_getKeyPath();
  }

  sub_10087C654();
  swift_allocError();
  *v5 = 1;
  return swift_willThrow();
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xA2)
  {
    goto LABEL_17;
  }

  if (a2 + 94 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 94) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 94;
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

      return (*a1 | (v4 << 8)) - 94;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 94;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x5F;
  v8 = v6 - 95;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 94 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 94) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xA2)
  {
    v4 = 0;
  }

  if (a2 > 0xA1)
  {
    v5 = ((a2 - 162) >> 8) + 1;
    *result = a2 + 94;
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
    *result = a2 + 94;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10087C550()
{
  result = qword_1011A50E0;
  if (!qword_1011A50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A50E0);
  }

  return result;
}

unint64_t sub_10087C5A8()
{
  result = qword_1011A50E8;
  if (!qword_1011A50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A50E8);
  }

  return result;
}

unint64_t sub_10087C600()
{
  result = qword_1011A50F0;
  if (!qword_1011A50F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A50F0);
  }

  return result;
}

unint64_t sub_10087C654()
{
  result = qword_1011A50F8;
  if (!qword_1011A50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A50F8);
  }

  return result;
}

uint64_t sub_10087C6A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_1011A50D0, &qword_100EE6E20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BlendingTimelinesDriver.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for TimelinesDriver();
  v1 = swift_allocObject();
  sub_10087DAC8();
  *(v0 + 16) = v1;
  v2 = swift_allocObject();
  sub_10087DAC8();
  *(v0 + 24) = v2;
  *(v0 + 32) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  return v0;
}

uint64_t BlendingTimelinesDriver.init()(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for TimelinesDriver();
  v3 = swift_allocObject();
  sub_10087DAC8();
  *(v2 + 16) = v3;
  v4 = swift_allocObject();
  sub_10087DAC8();
  *(v2 + 24) = v4;
  *(v2 + 32) = 0x3FF0000000000000;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  return v2;
}

double BlendingTimelinesDriver.a.getter()
{
  swift_beginAccess();

  return result;
}

double BlendingTimelinesDriver.a.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

double BlendingTimelinesDriver.b.getter()
{
  swift_beginAccess();

  return result;
}

double BlendingTimelinesDriver.b.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  return result;
}

void BlendingTimelinesDriver.blendStart.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
}

void *BlendingTimelinesDriver.blocking(at:)(uint64_t a1)
{
  *&v2 = __chkstk_darwin().n128_u64[0];
  v4 = v3;
  swift_beginAccess();

  TimelinesDriver.blocking(at:)(v13, v2);

  swift_beginAccess();

  TimelinesDriver.blocking(at:)(__src, v2);

  memcpy(v19, __src, 0x2B1uLL);
  if (sub_10087DCC8(v19) == 1 || (memcpy(v20, v19, sizeof(v20)), memcpy(__dst, v13, 0x2B1uLL), sub_10087DCC8(__dst) == 1))
  {
    v5 = v13;
  }

  else
  {
    memcpy(v18, __dst, sizeof(v18));
    swift_beginAccess();
    v6 = 1.0;
    if ((*(v1 + 48) & 1) == 0)
    {
      v7 = v2 - *(v1 + 40);
      swift_beginAccess();
      v8 = v7 / *(v1 + 32);
      v6 = 0.0;
      if (v8 >= 0.0)
      {
        v6 = fmin(v8, 1.0);
      }
    }

    v9 = 1.0 - v6;
    *&v9 = 1.0 - v6;
    *&v10 = sub_100878BD8(v18, v15, v9);
    *&v10 = v6;
    sub_100878BD8(v20, v16, v10);
    sub_100878D84(v15, v16, v12);
    sub_1008762C8(v12);
    v5 = v12;
  }

  memcpy(v21, v5, sizeof(v21));
  return memcpy(v4, v21, 0x2B1uLL);
}

uint64_t BlendingTimelinesDriver.deinit()
{

  return v0;
}

uint64_t BlendingTimelinesDriver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_10087CF38()
{
  swift_beginAccess();
  v1 = *(v0 + 720);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    v5 = 0.0;
    do
    {
      v6 = *(v4 + 48 * v3 + 40);
      v7 = *(v6 + 16);
      v8 = 0.0;
      if (v7)
      {
        v9 = (v6 + 32);
        do
        {
          v10 = *v9;
          v9 += 6;
          v8 = v8 + v10;
          --v7;
        }

        while (v7);
      }

      ++v3;
      if (v5 <= v8)
      {
        v5 = v8;
      }
    }

    while (v3 != v2);
  }

  else
  {
    v5 = 0.0;
  }

  *(v0 + 728) = v5;
}

double TimelinesDriver.tracks.getter()
{
  swift_beginAccess();

  return result;
}

void TimelinesDriver.tracks.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 720) = a1;

  sub_10087CF38();
}

void (*TimelinesDriver.tracks.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10087D0A8;
}

void sub_10087D0A8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_10087CF38();
  }
}

void TimelinesDriver.scrubTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 744) = a1;
  *(v2 + 752) = a2 & 1;
}

void TimelinesDriver.loopAt.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 760) = a1;
  *(v2 + 768) = a2 & 1;
}

void TimelinesDriver.blocking(at:)(void *a1@<X8>, double a2@<D0>)
{
  swift_beginAccess();
  memcpy(__dst, (v2 + 16), 0x2B1uLL);
  memcpy(__src, (v2 + 16), 0x2B1uLL);
  if (sub_10087DCC8(__src) == 1)
  {
    v5 = __dst;
LABEL_61:
    memcpy(v56, v5, 0x2B1uLL);
    memcpy(a1, v56, 0x2B1uLL);
    return;
  }

  memcpy(v55, __src, sizeof(v55));
  swift_beginAccess();
  if (*(v2 + 752))
  {
    swift_beginAccess();
    if (a2 - *(v2 + 712) < 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = a2 - *(v2 + 712);
    }

    swift_beginAccess();
    if (*(v2 + 768))
    {
      if (*(v2 + 728) < v6)
      {
        v6 = *(v2 + 728);
      }
    }

    else
    {
      v7 = *(v2 + 760);
      v8 = *(v2 + 728);
      if (v6 >= v7 || v6 >= v8)
      {
        v6 = v7 + fmod(v6, v8 - v7);
      }
    }
  }

  else
  {
    v6 = *(v2 + 744);
  }

  swift_beginAccess();
  *(v2 + 736) = v6;
  swift_beginAccess();
  v10 = *(v2 + 720);
  v45 = *(v10 + 16);
  if (!v45)
  {
LABEL_60:
    memcpy(v54, v55, 0x2B0uLL);
    sub_1008762C8(v54);
    v5 = v54;
    goto LABEL_61;
  }

  v41 = a1;
  v44 = v10 + 32;

  v42 = (v2 + 736);
  swift_beginAccess();
  v11 = 0;
  v43 = v10;
  while (v11 < *(v10 + 16))
  {
    v49 = v11;
    v12 = v44 + 48 * v11;
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    LOBYTE(v15) = *(v12 + 32);
    v16 = *(v12 + 40);
    v17 = *(v16 + 16);
    v50 = *v12;
    v51 = v16;
    v52 = *(v12 + 8);
    v46 = v14;
    v47 = v13;
    v48 = v15;
    if (v17)
    {
      v18 = *v42;

      v19 = 0;
      v20 = 0;
      v21 = 0.0;
      v22 = v16;
      while (v20 < *(v22 + 16))
      {
        v25 = v15;
        v26 = v14;
        v27 = v13;
        v28 = v22 + v19;
        v29 = *(v22 + v19 + 32);
        v13 = *(v22 + v19 + 48);
        v14 = *(v22 + v19 + 56);
        v15 = *(v22 + v19 + 64);
        v30 = v21 + v29;
        if (v21 <= v18)
        {
          v31 = *(v28 + 40);
          v32 = *(v28 + 44);
          if ((v17 == 1 || v18 <= v30) && v25 != 0xFF)
          {
            if (v15 != 255)
            {
              LOBYTE(v56[0]) = v32;
              v27 = sub_100881B24(v27, v26, v25, v31 | (v32 << 32), v13, v14, v15, (v18 - v21) / v29);
              v26 = v33;
              v25 = v34;
            }

            sub_10087A7A4(v50, v52);
            if (v25 > 1u)
            {
              if (v25 == 2)
              {
                v35 = &unk_1011A5118;
                v36 = &unk_100EE84D0;
              }

              else
              {
                v35 = &unk_1011A5110;
                v36 = &unk_100EE6AE0;
              }

              sub_10010FC20(v35, v36);
              if (swift_dynamicCastClass())
              {
                v56[1] = v26;
LABEL_57:
                v56[0] = v27;
LABEL_58:
                swift_setAtWritableKeyPath();

                v10 = v43;
                v38 = v49;
                goto LABEL_20;
              }
            }

            else if (v25)
            {
              sub_10010FC20(&qword_1011A5120, &unk_100EE6AF0);
              if (swift_dynamicCastClass())
              {
                goto LABEL_57;
              }
            }

            else
            {
              sub_10010FC20(&qword_1011A5128, &unk_100EE84E0);
              if (swift_dynamicCastClass())
              {
                LODWORD(v56[0]) = v27;
                goto LABEL_58;
              }
            }

            sub_10087C654();
            swift_allocError();
            *v37 = 0;
            swift_willThrow();
            sub_10010FC20(&qword_1011A5130, &qword_100EE6B00);
            v23 = swift_allocObject();
            *(v23 + 16) = xmmword_100EBDC20;
            *(v23 + 56) = &type metadata for String;
            *(v23 + 32) = 0xD000000000000014;
            *(v23 + 40) = 0x8000000100E59260;
            swift_getErrorValue();
            *(v23 + 88) = v53;
            v24 = sub_10001C8B8((v23 + 64));
            (*(*(v53 - 8) + 16))(v24);
            print(_:separator:terminator:)();

            v22 = v51;
          }
        }

        v19 += 48;
        ++v20;
        v21 = v30;
        if (!--v17)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
      break;
    }

LABEL_44:
    if (v48 <= 1)
    {
      v10 = v43;
      v38 = v49;
      if (v48)
      {
        sub_10087A7A4(v50, v52);
        sub_10010FC20(&qword_1011A5120, &unk_100EE6AF0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_55;
        }

        v56[0] = v47;
      }

      else
      {
        sub_10087A7A4(v50, v52);
        sub_10010FC20(&qword_1011A5128, &unk_100EE84E0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_55;
        }

        LODWORD(v56[0]) = v47;
      }

      goto LABEL_54;
    }

    v10 = v43;
    v38 = v49;
    sub_10087A7A4(v50, v52);
    if (v48 == 2)
    {
      v39 = &unk_1011A5118;
      v40 = &unk_100EE84D0;
    }

    else
    {
      v39 = &unk_1011A5110;
      v40 = &unk_100EE6AE0;
    }

    sub_10010FC20(v39, v40);
    if (swift_dynamicCastClass())
    {
      v56[0] = v47;
      v56[1] = v46;
LABEL_54:
      swift_setAtWritableKeyPath();
    }

LABEL_55:

LABEL_20:
    v11 = v38 + 1;
    if (v11 == v45)
    {

      a1 = v41;
      goto LABEL_60;
    }
  }

  __break(1u);
}

uint64_t TimelinesDriver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10087DAC8()
{
  __asm { FMOV            V1.4S, #1.0 }

  v7[2] = 0u;
  v7[3] = _Q1;
  v7[4] = xmmword_100EE5A20;
  v7[5] = xmmword_100EE5A30;
  v7[6] = xmmword_100EE5A40;
  v7[7] = xmmword_100EE5A50;
  v7[8] = xmmword_100EE5A60;
  v7[9] = xmmword_100EE5A70;
  v7[10] = xmmword_100EE5A80;
  v7[11] = xmmword_100EE5A90;
  v7[12] = xmmword_100EE5AA0;
  v7[13] = xmmword_100EE5AB0;
  v7[14] = xmmword_100EE5AC0;
  v7[15] = xmmword_100EE5AD0;
  v7[16] = xmmword_100EE5AE0;
  v7[17] = xmmword_100EE5AF0;
  v7[18] = xmmword_100EE5B00;
  v7[19] = xmmword_100EE5B10;
  *&v7[20] = 0x3F0000003F000000;
  *(&v7[20] + 1) = 1067450368;
  v7[21] = xmmword_100EE5B20;
  v7[22] = xmmword_100EE5B30;
  v7[23] = xmmword_100EE5B40;
  v7[24] = xmmword_100EE5B50;
  v7[25] = xmmword_100EE5B60;
  v7[26] = 0x400000003EA66666uLL;
  v7[27] = _Q1;
  v7[28] = xmmword_100EE5B70;
  v7[29] = 0x400000003F000000uLL;
  v7[30] = xmmword_100EE5B80;
  v7[31] = xmmword_100EE5B90;
  v7[32] = xmmword_100EE5BA0;
  v7[33] = xmmword_100EE5BB0;
  v7[34] = xmmword_100EE5BC0;
  v7[35] = xmmword_100EE5BD0;
  v7[36] = xmmword_100EE5BE0;
  v7[37] = xmmword_100EE5BF0;
  v7[38] = xmmword_100EE5C00;
  v7[39] = xmmword_100EE5C10;
  v7[40] = xmmword_100EE5C20;
  memset(&v7[41], 0, 32);
  sub_1008762C8(v7);
  memcpy((v0 + 16), v7, 0x2B1uLL);
  *(v0 + 712) = CACurrentMediaTime();
  *(v0 + 720) = _swiftEmptyArrayStorage;
  *(v0 + 728) = 0;
  *(v0 + 744) = 0;
  *(v0 + 736) = 0;
  *(v0 + 752) = 1;
  *(v0 + 760) = 0;
  *(v0 + 768) = 1;
  return v0;
}

uint64_t sub_10087DCC8(uint64_t a1)
{
  if (*(a1 + 688))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

char *PanacheView.__allocating_init(center:library:delegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_10087F82C(a1, a2, a3, a4, a5, v12, v5, ObjectType);
}

char *PanacheView.init(center:library:delegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  return sub_10087F8A4(a1, a2, a3, a4, a5, v5, v11);
}

id sub_10087DEF8()
{
  v1 = OBJC_IVAR____TtC7Panache11PanacheView____lazy_storage___metalView;
  v2 = *(v0 + OBJC_IVAR____TtC7Panache11PanacheView____lazy_storage___metalView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Panache11PanacheView____lazy_storage___metalView);
  }

  else
  {
    v4 = sub_10087DF58();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10087DF58()
{
  v1 = [objc_allocWithZone(MTKView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v1 setDelegate:*(v0 + OBJC_IVAR____TtC7Panache11PanacheView_metalViewDelegate)];
  [v1 setDevice:*(v0 + OBJC_IVAR____TtC7Panache11PanacheView_metalCenter)];
  [v1 setColorPixelFormat:80];
  [v1 setPreferredFramesPerSecond:120];
  [v1 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  v2 = [v1 layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  GenericRGB = CGColorCreateGenericRGB(0.0, 1.0, 1.0, 1.0);
  [v3 setBackgroundColor:GenericRGB];

  return v1;
}

id PanacheView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PanacheView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *PanacheView.__allocating_init<A>(center:library:driver:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for PanacheMetalViewDelegate(0, a6, a7, a4);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = sub_10087FEF8(a1, a2, v13, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = objc_allocWithZone(type metadata accessor for PanacheView());
  v17 = sub_10087F8A4(a1, a2, v13, a4, v14, v15, v16);
  (*(*(a6 - 8) + 8))(a5, a6);
  return v17;
}

double sub_10087E334(uint64_t a1)
{
  *(v1 + *((swift_isaMask & *v1) + 0x78)) = a1;

  return result;
}

uint64_t sub_10087E368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = type metadata accessor for MainActor();
  v8[4] = static MainActor.shared.getter();
  type metadata accessor for LitSphereRenderer();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = a7;
  swift_unknownObjectRetain();
  v14 = swift_task_alloc();
  v8[5] = v14;
  *v14 = v8;
  v14[1] = sub_10087E47C;

  return sub_100889108(a5, a6, v13, a8);
}

uint64_t sub_10087E47C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_10087E694;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_10087E5FC;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_10087E5FC()
{
  v1 = v0[7];
  v2 = v0[2];

  *(v2 + *((swift_isaMask & *v2) + 0x78)) = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_10087E694()
{

  if (qword_1011A4DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1012197F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "error creating renderer %@", v4, 0xCu);
    sub_1000095E8(v5, &qword_1011A54B0, &qword_100EE6CA0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10087E840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&qword_1011A54B8, &qword_100EE6CA8);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000208DC(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000095E8(v10, &qword_1011A54B8, &qword_100EE6CA8);
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

      sub_1000095E8(a3, &qword_1011A54B8, &qword_100EE6CA8);

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

  sub_1000095E8(a3, &qword_1011A54B8, &qword_100EE6CA8);
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

double sub_10087EB30()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return result;
}

void sub_10087ED70(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = a1;
  sub_10087EBC0(v5);
}

void sub_10087EE48(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = [a1 currentRenderPassDescriptor];
  if (!v4)
  {
    type metadata accessor for PanacheMetalViewDelegate.Error(0, *(v3 + 80), *(v3 + 88), v5);
    swift_getWitnessTable();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    return;
  }

  v6 = v4;
  v7 = [v4 colorAttachments];
  v8 = [v7 objectAtIndexedSubscript:0];

  if (!v8)
  {
    goto LABEL_19;
  }

  v10 = [v8 texture];
  if (!v10)
  {

    goto LABEL_19;
  }

  v11 = v10;
  if ([v10 width] <= 0 || objc_msgSend(v11, "height") < 1)
  {

    swift_unknownObjectRelease();
LABEL_19:
    type metadata accessor for PanacheMetalViewDelegate.Error(0, *(v3 + 80), *(v3 + 88), v9);
    swift_getWitnessTable();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();

    return;
  }

  v12 = [*(v1 + *((swift_isaMask & *v1) + 0x60) + 8) commandBuffer];
  if (!v12)
  {
    sub_10088002C();
    swift_allocError();
    *v30 = 4;
    swift_willThrow();

LABEL_22:
    swift_unknownObjectRelease();
    return;
  }

  v13 = v12;
  v14 = String._bridgeToObjectiveC()();
  [v13 setLabel:v14];

  v15 = [v13 renderCommandEncoderWithDescriptor:v6];
  if (!v15)
  {
    sub_10088002C();
    swift_allocError();
    *v31 = 5;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v35 = v15;
  v16 = CACurrentMediaTime();
  v36 = v1;
  v33 = *(v3 + 80);
  v34 = *(v3 + 88);
  (*(v34 + 8))(__src);
  v17 = v1;
  v18 = sub_10087DCC8(__src);
  v19 = *v1;
  v20 = swift_isaMask;
  if (v18 != 1)
  {
    memcpy(__dst, __src, 0x2B0uLL);
    if (*(v17 + *((swift_isaMask & v19) + 0x78)))
    {
      swift_getObjectType();
      type metadata accessor for FullSphereUniforms(0);
      sub_10088C0C4();
      v17 = v36;
      v22 = v21;

      v23 = [swift_unknownObjectRetain() contents];
      v24 = v22;
      sub_10087F420(v23, __dst, a1, v16);

      swift_unknownObjectRelease();
      v19 = *v36;
      v20 = swift_isaMask;
    }
  }

  v25 = *(v17 + *((v20 & v19) + 0x78));
  if (v25)
  {

    [a1 bounds];
    [v35 setRenderPipelineState:v25[2]];
    [v35 setVertexBuffer:v25[3] offset:0 atIndex:0];
    [v35 setFragmentBuffer:v25[4] offset:0 atIndex:0];
    [v35 drawPrimitives:4 vertexStart:0 vertexCount:4];
  }

  [v35 endEncoding];
  v26 = [a1 currentDrawable];
  if (v26)
  {
    [v13 presentDrawable:v26];
    [v13 commit];

    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for PanacheMetalViewDelegate.Error(0, v33, v34, v27);
    swift_getWitnessTable();
    swift_allocError();
    *v32 = 2;
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

float sub_10087F420(float *a1, const void *a2, void *a3, double a4)
{
  memcpy(a1, a2, 0x2B0uLL);
  v7 = a4;
  *a1 = v7;
  [a3 drawableSize];
  *&v8 = v8;
  v22 = LODWORD(v8);
  [a3 drawableSize];
  v10 = v9;
  v21 = v10;
  [a3 drawableSize];
  v12 = v11;
  [a3 drawableSize];
  v14 = v12 / v13;
  __asm { FMOV            V1.4S, #1.0 }

  *&_Q1 = __PAIR64__(LODWORD(v21), v22);
  result = v14;
  *(&_Q1 + 2) = result;
  *(a1 + 2) = _Q1;
  return result;
}

Swift::Int MPCPlaybackEngine.Option.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10087F584(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSDirectionalEdgeInsets.Edge.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

void sub_10087F5CC(void *a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100880080();
}

id sub_10087F698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PanacheMetalViewDelegate(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

double sub_10087F708(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(*(*((v3 & v2) + 0x50) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x70)]);

  return result;
}

char *sub_10087F82C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, __n128 a6, uint64_t a7, uint64_t a8)
{
  v13 = objc_allocWithZone(type metadata accessor for PanacheView());

  return sub_10087F8A4(a1, a2, a3, a4, a5, v13, v14);
}

char *sub_10087F8A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6, __n128 a7)
{
  *&a6[OBJC_IVAR____TtC7Panache11PanacheView____lazy_storage___metalView] = 0;
  v8 = &a6[OBJC_IVAR____TtC7Panache11PanacheView_metalCenter];
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  *&a6[OBJC_IVAR____TtC7Panache11PanacheView_library] = a4;
  *&a6[OBJC_IVAR____TtC7Panache11PanacheView_metalViewDelegate] = a5;
  v29.receiver = a6;
  v29.super_class = type metadata accessor for PanacheView();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v28 = a3;
  swift_unknownObjectRetain();
  v9 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = sub_10087DEF8();
  [v9 addSubview:v10];

  v11 = OBJC_IVAR____TtC7Panache11PanacheView____lazy_storage___metalView;
  [*&v9[OBJC_IVAR____TtC7Panache11PanacheView____lazy_storage___metalView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = objc_opt_self();
  sub_10010FC20(&qword_1011A54C0, &qword_100EE6CD8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100EBDC10;
  v13 = [*&v9[v11] topAnchor];
  v14 = [v9 topAnchor];

  v15 = [v13 constraintEqualToAnchor:v14];
  *(v12 + 32) = v15;
  v16 = [*&v9[v11] bottomAnchor];
  v17 = [v9 bottomAnchor];

  v18 = [v16 constraintEqualToAnchor:v17];
  *(v12 + 40) = v18;
  v19 = [*&v9[v11] leftAnchor];
  v20 = [v9 leftAnchor];

  v21 = [v19 constraintEqualToAnchor:v20];
  *(v12 + 48) = v21;
  v22 = [*&v9[v11] rightAnchor];
  v23 = [v9 rightAnchor];

  v24 = [v22 constraintEqualToAnchor:v23];
  *(v12 + 56) = v24;
  sub_100880244();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v9;
}

id sub_10087FC34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_isaMask;
  sub_10010FC20(&qword_1011A54B8, &qword_100EE6CA8);
  v13 = __chkstk_darwin();
  v15 = &v29 - v14;
  *&v5[*((v12 & v11) + 0x78)] = 0;
  v16 = &v5[*((swift_isaMask & *v5) + 0x60)];
  *v16 = a1;
  *(v16 + 1) = a2;
  *(v16 + 2) = a3;
  *&v5[*((swift_isaMask & *v5) + 0x68)] = a4;
  v17 = *((v12 & v11) + 0x50);
  (*(*(v17 - 8) + 16))(&v5[*((swift_isaMask & *v5) + 0x70)], a5, v17, v13);
  v19 = type metadata accessor for PanacheMetalViewDelegate(0, v17, *((v12 & v11) + 0x58), v18);
  v29.receiver = v5;
  v29.super_class = v19;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v20 = a3;
  swift_unknownObjectRetain();
  v21 = objc_msgSendSuper2(&v29, "init");
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
  type metadata accessor for MainActor();
  v23 = v21;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = v20;
  swift_unknownObjectRetain();
  v25 = v23;
  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v25;
  v27[5] = a1;
  v27[6] = a2;
  v27[7] = v24;
  v27[8] = a4;
  sub_10087E840(0, 0, v15, &unk_100EE6CB8, v27);

  return v25;
}

uint64_t sub_10087FF64(uint64_t a1)
{
  result = swift_checkMetadataState();
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

unint64_t sub_10088002C()
{
  result = qword_1011A6470;
  if (!qword_1011A6470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A6470);
  }

  return result;
}

uint64_t sub_1008800B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F3F4;

  return sub_10087E368(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10088018C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_100009648(a1, v4);
}

unint64_t sub_100880244()
{
  result = qword_1011A54C8[0];
  if (!qword_1011A54C8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1011A54C8);
  }

  return result;
}

void Track.apply(_:time:)(uint64_t a1, double a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  LOBYTE(v5) = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v6 + 16);
  if (v7)
  {
    v9 = (v6 + 64);
    v10 = 0.0;
    while (1)
    {
      v11 = v5;
      v12 = v4;
      v13 = v3;
      v14 = *(v9 - 4);
      v3 = *(v9 - 2);
      v4 = *(v9 - 1);
      v5 = *v9;
      if (v10 <= a2 && (v7 == 1 || v10 + v14 >= a2) && v11 != 0xFF)
      {
        break;
      }

      v9 += 6;
      v10 = v10 + v14;
      if (!--v7)
      {
        goto LABEL_11;
      }
    }

    if (v5 != 255)
    {
      v13 = sub_100881B24(v13, v12, v11, *(v9 - 6) | (*(v9 - 20) << 32), v3, v4, v5, (a2 - v10) / v14);
      v12 = v15;
      v11 = v16;
    }

    sub_100882048(a1, *v2, *(v2 + 8), v13, v12, v11);
  }

  else
  {
LABEL_11:
    sub_100882048(a1, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32));
  }
}

void sub_100880534(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656E696C656D6974 && a2 == 0xE900000000000073)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1008805C4(uint64_t a1)
{
  v2 = sub_1008821FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100880600(uint64_t a1)
{
  v2 = sub_1008821FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100880640(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v3 = 0;
      v4 = a1 + 64;
      v5 = 1 << *(a1 + 32);
      v6 = -1;
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      v7 = v6 & *(a1 + 64);
      v8 = (v5 + 63) >> 6;
      v86 = a1;
      while (v7)
      {
        v9 = __clz(__rbit64(v7));
        v87 = (v7 - 1) & v7;
LABEL_13:
        v12 = v9 | (v3 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        v16 = *(a1 + 56) + 24 * v12;
        v17 = *v16;
        v18 = *(v16 + 8);
        v88 = *(v16 + 16);

        v19 = sub_10000F8B8(v14, v15);
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          goto LABEL_105;
        }

        v22 = *(v2 + 56) + 24 * v19;
        v23 = *v22;
        v24 = *(*v22 + 16);
        if (v24 != *(v17 + 16))
        {
          goto LABEL_105;
        }

        v25 = *(v22 + 8);
        v26 = *(v22 + 16);
        if (v24 && v23 != v17)
        {
          v85 = *(*v22 + 16);
          v74 = *(v22 + 16);
          v75 = v2;
          v27 = *(v23 + 56);
          v81 = *(v23 + 48);
          v79 = *(v23 + 64);
          v28 = *(v23 + 72);
          v29 = *(v17 + 48);
          v77 = *(v17 + 56);
          v30 = *(v17 + 64);
          v31 = *(v17 + 72);
          v32 = *(v23 + 32) == *(v17 + 32) && *(v23 + 40) == *(v17 + 40);
          if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v83 = v17 + 32;
            v84 = v23 + 32;

            v33 = 1;
            v34 = v85;
            v35 = v81;
            v36 = v77;
            v37 = v79;
            while (1)
            {
              if (v37 > 1u)
              {
                if (v37 == 2)
                {
                  if (v30 != 2)
                  {
                    goto LABEL_104;
                  }

                  if (*&v35 != *&v29)
                  {
                    goto LABEL_104;
                  }

                  v40.i64[0] = v35;
                  v40.i64[1] = v27;
                  v41.i64[0] = v29;
                  v41.i64[1] = v36;
                  v42 = vmovn_s32(vceqq_f32(v40, v41));
                  if ((v42.i8[2] & 1) == 0 || (v42.i8[4] & 1) == 0)
                  {
                    goto LABEL_104;
                  }
                }

                else
                {
                  if (v30 != 3)
                  {
                    goto LABEL_104;
                  }

                  v43.i64[1] = v27;
                  v44.i64[1] = v36;
                  v43.i64[0] = v35;
                  v44.i64[0] = v29;
                  if ((vminv_u16(vmovn_s32(vceqq_f32(v43, v44))) & 1) == 0)
                  {
                    goto LABEL_104;
                  }
                }
              }

              else
              {
                if (v37)
                {
                  if (v30 != 1 || *&v35 != *&v29)
                  {
                    goto LABEL_104;
                  }

                  v38 = *(&v35 + 1);
                  v39 = *(&v29 + 1);
                }

                else
                {
                  if (v30)
                  {
                    goto LABEL_104;
                  }

                  v38 = *&v35;
                  v39 = *&v29;
                }

                if (v38 != v39)
                {
                  goto LABEL_104;
                }
              }

              v45 = *(v28 + 16);
              if (v45 != *(v31 + 16))
              {
                goto LABEL_104;
              }

              if (v45 && v28 != v31)
              {
                break;
              }

LABEL_85:
              if (v33 == v34)
              {

                v2 = v75;
                v7 = v87;
                v26 = v74;
                goto LABEL_95;
              }

              if (v33 >= *(v23 + 16))
              {
                goto LABEL_108;
              }

              if (v33 >= *(v17 + 16))
              {
                goto LABEL_109;
              }

              v60 = v33 + 1;
              v61 = v84 + 48 * v33;
              v35 = *(v61 + 16);
              v27 = *(v61 + 24);
              v37 = *(v61 + 32);
              v28 = *(v61 + 40);
              v62 = v83 + 48 * v33;
              v29 = *(v62 + 16);
              v36 = *(v62 + 24);
              v30 = *(v62 + 32);
              v31 = *(v62 + 40);
              v63 = *v61 == *v62 && *(v61 + 8) == *(v62 + 8);
              v33 = v60;
              if (!v63)
              {
                v80 = v4;
                v82 = v17;
                v76 = v60;
                v78 = v23;
                v64 = v31;
                v65 = v8;
                v66 = *(v61 + 40);
                v67 = *(v61 + 24);
                v68 = v29;
                v69 = *(v61 + 16);
                v70 = v36;
                v71 = *(v61 + 32);
                v72 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v37 = v71;
                v36 = v70;
                v35 = v69;
                v29 = v68;
                v27 = v67;
                v28 = v66;
                v8 = v65;
                v31 = v64;
                v23 = v78;
                v4 = v80;
                v17 = v82;
                v34 = v85;
                v33 = v76;
                if ((v72 & 1) == 0)
                {
                  goto LABEL_104;
                }
              }
            }

            if (*(v28 + 32) == *(v31 + 32))
            {
              v46 = 0;
              do
              {
                v47 = *(v28 + v46 + 64);
                v48 = *(v28 + v46 + 48);
                v49 = *(v28 + v46 + 40);
                v50 = *(v31 + v46 + 64);
                v51 = *(v31 + v46 + 48);
                v52 = *(v31 + v46 + 40);
                if (*(v28 + v46 + 44) == 1)
                {
                  if (v49 == 0.0)
                  {
                    if (v52 == 0.0)
                    {
                      v54 = *(v31 + v46 + 44);
                    }

                    else
                    {
                      LOBYTE(v54) = 0;
                    }

                    if ((v54 & 1) == 0)
                    {
                      break;
                    }
                  }

                  else
                  {
                    if (v52 == 0.0)
                    {
                      v53 = 0;
                    }

                    else
                    {
                      v53 = *(v31 + v46 + 44);
                    }

                    if ((v53 & 1) == 0)
                    {
                      break;
                    }
                  }
                }

                else if ((*(v31 + v46 + 44) & 1) != 0 || v49 != v52)
                {
                  break;
                }

                if (v47 == 255)
                {
                  if (v50 != 255)
                  {
                    break;
                  }
                }

                else
                {
                  if (v50 == 255)
                  {
                    break;
                  }

                  if (*(v28 + v46 + 64) > 1u)
                  {
                    if (v47 == 2)
                    {
                      if (v50 != 2)
                      {
                        break;
                      }

                      v56 = vceq_f32(*(v28 + v46 + 48), v51);
                      if ((v56.i32[0] & v56.i32[1] & 1) == 0 || (vmovn_s32(vceqq_f32(*(v28 + v46 + 48), *(v31 + v46 + 48))).i32[1] & 1) == 0)
                      {
                        break;
                      }
                    }

                    else
                    {
                      if (v50 != 3)
                      {
                        break;
                      }

                      if (*&v48 != v51.f32[0])
                      {
                        break;
                      }

                      v57 = vmovn_s32(vceqq_f32(*(v28 + v46 + 48), *(v31 + v46 + 48)));
                      if ((v57.i8[2] & 1) == 0 || (v57.i8[4] & 1) == 0 || (v57.i8[6] & 1) == 0)
                      {
                        break;
                      }
                    }
                  }

                  else
                  {
                    if (*(v28 + v46 + 64))
                    {
                      if (v50 != 1 || *&v48 != v51.f32[0])
                      {
                        break;
                      }

                      LODWORD(v55) = HIDWORD(*(v28 + v46 + 48));
                      *&v51 >>= 32;
                    }

                    else
                    {
                      if (*(v31 + v46 + 64))
                      {
                        break;
                      }

                      LODWORD(v55) = *(v28 + v46 + 48);
                    }

                    if (v55 != v51.f32[0])
                    {
                      break;
                    }
                  }
                }

                if (!--v45)
                {
                  goto LABEL_85;
                }

                v58 = v28 + v46;
                v59 = v31 + v46;
                v46 += 48;
              }

              while (*(v58 + 80) == *(v59 + 80));
            }

LABEL_104:
          }

LABEL_105:

          return;
        }

        v7 = v87;
LABEL_95:
        a1 = v86;
        if (v26)
        {
          if ((v88 & 1) == 0)
          {
            return;
          }
        }

        else
        {
          v73 = v88;
          if (v25 != v18)
          {
            v73 = 1;
          }

          if (v73)
          {
            return;
          }
        }
      }

      v10 = v3;
      while (1)
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v3 >= v8)
        {
          return;
        }

        v11 = *(v4 + 8 * v3);
        ++v10;
        if (v11)
        {
          v9 = __clz(__rbit64(v11));
          v87 = (v11 - 1) & v11;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
    }
  }
}

uint64_t PanacheScene.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A5550, &qword_100EE6DA8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v9 - v6;
  sub_10000954C(a1, a1[3]);
  sub_1008821FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_10010FC20(&qword_1011A5560, &qword_100EE6DB0);
  sub_100888C7C(&qword_1011A5568, sub_100882250, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

Swift::Int PanacheScene.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  _s7Panache0A5SceneV4hash4intoys6HasherVz_tF_0(v3, a1);
  return Hasher._finalize()();
}

void *sub_100880E40@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10088542C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int sub_100880E88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  _s7Panache0A5SceneV4hash4intoys6HasherVz_tF_0(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100880ED8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  _s7Panache0A5SceneV4hash4intoys6HasherVz_tF_0(v4, v2);
  return Hasher._finalize()();
}

uint64_t Timeline.loopAt.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t sub_100880F6C()
{
  if (*v0)
  {
    return 0x7441706F6F6CLL;
  }

  else
  {
    return 0x736B63617274;
  }
}

void sub_100880F98(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736B63617274 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7441706F6F6CLL && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_10088106C(uint64_t a1)
{
  v2 = sub_1008855E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008810A8(uint64_t a1)
{
  v2 = sub_1008855E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static Timeline.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((sub_100881150(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && *&a2 == *&a5;
  }

  return (a6 & 1) != 0;
}

uint64_t sub_100881150(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2)
    {
      return 1;
    }

    v3 = a2;
    v4 = a1;
    if (a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 48)
    {
      v6 = *(v4 + i + 48);
      v7 = *(v4 + i + 56);
      v8 = *(v4 + i + 64);
      v9 = *(v4 + i + 72);
      v10 = *(v3 + i + 48);
      v11 = *(v3 + i + 56);
      v12 = *(v3 + i + 64);
      v13 = *(v3 + i + 72);
      if (*(v4 + i + 32) != *(v3 + i + 32) || *(v4 + i + 40) != *(v3 + i + 40))
      {
        v15 = *(v4 + i + 72);
        v16 = v12;
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v12 = v16;
        v9 = v15;
        v3 = a2;
        v4 = a1;
        if ((v17 & 1) == 0)
        {
          break;
        }
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          if (v12 != 2)
          {
            return 0;
          }

          result = 0;
          if (*&v6 != *&v10)
          {
            return result;
          }

          v19.i64[0] = v6;
          v19.i64[1] = v7;
          v20.i64[0] = v10;
          v20.i64[1] = v11;
          v21 = vmovn_s32(vceqq_f32(v19, v20));
          if ((v21.i8[2] & 1) == 0 || (v21.i8[4] & 1) == 0)
          {
            return result;
          }
        }

        else
        {
          if (v12 != 3)
          {
            return 0;
          }

          v22.i64[1] = v7;
          v23.i64[1] = v11;
          v22.i64[0] = v6;
          v23.i64[0] = v10;
          if ((vminv_u16(vmovn_s32(vceqq_f32(v22, v23))) & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v8)
      {
        if (v12 != 1 || *&v6 != *&v10 || *(&v6 + 1) != *(&v10 + 1))
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v12 || *&v6 != *&v10)
        {
          return result;
        }
      }

      if ((sub_10088132C(v9, v13) & 1) == 0)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10088132C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    if (*(a1 + 32) == *(a2 + 32))
    {
      for (i = 0; ; i += 48)
      {
        v4 = *(a1 + i + 64);
        v5 = *(a1 + i + 48);
        v6 = *(a1 + i + 40);
        v7 = *(a2 + i + 64);
        v8 = *(a2 + i + 48);
        v9 = *(a2 + i + 44);
        v10 = *(a2 + i + 40);
        if (*(a1 + i + 44) == 1)
        {
          if (v6 == 0.0)
          {
            if (v10 != 0.0)
            {
              LOBYTE(v9) = 0;
            }

            if ((v9 & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            if (v10 == 0.0)
            {
              v9 = 0;
            }

            if (v9 != 1)
            {
              return 0;
            }
          }
        }

        else
        {
          if (v6 != v10)
          {
            LOBYTE(v9) = 1;
          }

          if (v9)
          {
            return 0;
          }
        }

        if (v4 == 255)
        {
          if (v7 != 255)
          {
            return 0;
          }
        }

        else
        {
          if (v7 == 255)
          {
            return 0;
          }

          if (*(a1 + i + 64) > 1u)
          {
            if (v4 == 2)
            {
              if (v7 != 2)
              {
                return 0;
              }

              v4 = 0;
              if (*&v5 != *&v8)
              {
                return v4;
              }

              v13 = vmovn_s32(vceqq_f32(*(a1 + i + 48), *(a2 + i + 48)));
              if ((v13.i8[2] & 1) == 0 || (v13.i8[4] & 1) == 0)
              {
                return v4;
              }
            }

            else if (v7 != 3 || (vminv_u16(vmovn_s32(vceqq_f32(*(a1 + i + 48), *(a2 + i + 48)))) & 1) == 0)
            {
              return 0;
            }
          }

          else if (*(a1 + i + 64))
          {
            if (v7 != 1 || *&v5 != *&v8 || *(&v5 + 1) != *(&v8 + 1))
            {
              return 0;
            }
          }

          else if (*(a2 + i + 64) || *&v5 != *&v8)
          {
            return v4;
          }
        }

        if (!--v2)
        {
          return 1;
        }

        v4 = 0;
        v11 = a1 + i;
        v12 = a2 + i;
        if (*(v11 + 80) != *(v12 + 80))
        {
          return v4;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t Timeline.encode(to:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v12 = a3;
  v7 = sub_10010FC20(&qword_1011A5578, &qword_100EE6DB8);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v12 - v9;
  sub_10000954C(a1, a1[3]);
  sub_1008855E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_10010FC20(&qword_1011A5588, &qword_100EE6DC0);
  sub_100888BB0(&qword_1011A5590, sub_10088563C, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

void Timeline.hash(into:)(uint64_t a1, uint64_t a2, Swift::UInt64 a3, char a4)
{
  sub_100884BBC(a1, a2);
  if (a4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    Hasher._combine(_:)(v6);
  }
}

Swift::Int Timeline.hashValue.getter(uint64_t a1, Swift::UInt64 a2, char a3)
{
  Hasher.init(_seed:)();
  sub_100884BBC(v8, a1);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    Hasher._combine(_:)(v6);
  }

  return Hasher._finalize()();
}