uint64_t Logger.capabilityUpsell.unsafeMutableAddressor(uint64_t a1, uint64_t a2)
{
  if (qword_100600768 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();

  return sub_100007084(v2, static Logger.capabilityUpsell);
}

uint64_t sub_1002A7178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004BC474();
  *(v4 + 24) = sub_1004BC464();
  v6 = sub_1004BC3E4();

  return _swift_task_switch(sub_1002A7210, v6, v5);
}

uint64_t sub_1002A7210()
{

  v1 = [objc_opt_self() sharedApplication];
  sub_1004B6A44(v2);
  v4 = v3;
  sub_10003D128(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1002A9DB4(&qword_100600FD0, type metadata accessor for OpenExternalURLOptionsKey, &unk_1004C7654);
  isa = sub_1004BBC24().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002A7344@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v2 = sub_1004BBA44();
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin();
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004B7BB4();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin();
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004B7B64();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin();
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004B7CF4();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin();
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BB384();
  isa = v10[-1].isa;
  v73 = v10;
  __chkstk_darwin();
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004BAD04();
  v74 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004B7A34();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004BB9B4();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v59 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v59 - v23;
  sub_1004BB9C4();
  v25 = (*(v21 + 88))(v24, v20);
  if (v25 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v21 + 96))(v24, v20);
    v26 = *(v17 + 32);
    v26(v19, v24, v16);
    v27 = v75;
    v75[3] = v16;
    v27[4] = sub_1002A9DB4(&qword_100602950, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    v28 = sub_1000133B0(v27);
    return (v26)(v28, v19, v16);
  }

  v30 = v75;
  if (v25 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v21 + 96))(v24, v20);
    v31 = v74[4];
    v31(v15, v24, v13);
    v30[3] = v13;
    v30[4] = &protocol witness table for MusicVideo;
    v32 = sub_1000133B0(v30);
    return (v31)(v32, v15, v13);
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v21 + 96))(v24, v20);
    v33 = v73;
    v34 = *(isa + 4);
    v34(v12, v24, v73);
    v30[3] = v33;
    v30[4] = &protocol witness table for Song;
    v35 = sub_1000133B0(v30);
    return (v34)(v35, v12, v33);
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v21 + 96))(v24, v20);
    v36 = v69;
    v37 = *(v70 + 32);
    v38 = v71;
    v37(v69, v24, v71);
    v30[3] = v38;
    v39 = &unk_100602960;
    v40 = &type metadata accessor for TVEpisode;
    v41 = &protocol conformance descriptor for TVEpisode;
LABEL_13:
    v30[4] = sub_1002A9DB4(v39, v40, v41);
    v42 = sub_1000133B0(v30);
    return (v37)(v42, v36, v38);
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v21 + 96))(v24, v20);
    v36 = v66;
    v37 = *(v67 + 32);
    v38 = v68;
    v37(v66, v24, v68);
    v30[3] = v38;
    v39 = &unk_100602978;
    v40 = &type metadata accessor for UploadedAudio;
    v41 = &protocol conformance descriptor for UploadedAudio;
    goto LABEL_13;
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v21 + 96))(v24, v20);
    v36 = v60;
    v37 = *(v61 + 32);
    v38 = v62;
    v37(v60, v24, v62);
    v30[3] = v38;
    v39 = &unk_100602980;
    v40 = &type metadata accessor for UploadedVideo;
    v41 = &protocol conformance descriptor for UploadedVideo;
    goto LABEL_13;
  }

  v43 = v20;
  if (qword_100600768 != -1)
  {
    swift_once();
  }

  v44 = sub_1004B80B4();
  sub_100007084(v44, static Logger.capabilityUpsell);
  v46 = v63;
  v45 = v64;
  v47 = v65;
  (*(v63 + 16))(v65, v1, v64);
  v48 = sub_1004B8094();
  v49 = sub_1004BC994();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v71 = v50;
    v74 = swift_slowAlloc();
    v76 = v74;
    *v50 = 136315138;
    v73 = v48;
    v51 = v59;
    LODWORD(isa) = v49;
    sub_1004BB9C4();
    sub_1002A9DB4(&qword_100601E98, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
    v52 = sub_1004BD934();
    v54 = v53;
    v70 = *(v21 + 8);
    (v70)(v51, v43);
    (*(v46 + 8))(v65, v45);
    v55 = sub_100012018(v52, v54, &v76);

    v56 = v71;
    *(v71 + 1) = v55;
    v57 = v73;
    _os_log_impl(&_mh_execute_header, v73, isa, "Unknown Entry internalItem=%s", v56, 0xCu);
    sub_100004C6C(v74);

    v58 = v70;
  }

  else
  {

    (*(v46 + 8))(v47, v45);
    v58 = *(v21 + 8);
  }

  v30[4] = 0;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  return v58(v24, v43);
}

uint64_t sub_1002A7D14@<X0>(uint64_t *a1@<X8>)
{
  v98 = a1;
  v1 = sub_1004BB904();
  v87 = *(v1 - 8);
  v88 = v1;
  __chkstk_darwin();
  v86 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004BBA84();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin();
  v89 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004BAD04();
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin();
  v92 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004B7A34();
  v96 = *(v7 - 8);
  v97 = v7;
  __chkstk_darwin();
  v95 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004BB744();
  v83 = *(v9 - 8);
  v84 = v9;
  __chkstk_darwin();
  v82 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1004B7BB4();
  v71 = *(v72 - 8);
  __chkstk_darwin();
  v70 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1004B7B64();
  v74 = *(v75 - 8);
  __chkstk_darwin();
  v73 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1004B7C34();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v76 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004B7CF4();
  v80 = *(v14 - 8);
  v81 = v14;
  __chkstk_darwin();
  v79 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004BB384();
  v85 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1004BB434();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004B7644();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v69 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin();
  v28 = &v68 - v27;
  v29 = *(v24 + 16);
  v29(&v68 - v27, v99, v23, v26);
  v30 = (*(v24 + 88))(v28, v23);
  if (v30 == enum case for GenericMusicItem.album(_:))
  {
    (*(v24 + 96))(v28, v23);
    v31 = *(v20 + 32);
    v31(v22, v28, v19);
    v32 = v98;
    v98[3] = v19;
    v32[4] = &protocol witness table for Album;
    v33 = sub_1000133B0(v32);
    return (v31)(v33, v22, v19);
  }

  v35 = v98;
  if (v30 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v24 + 96))(v28, v23);
    v36 = v95;
    v37 = *(v96 + 32);
    v38 = v28;
    v39 = v97;
    v37(v95, v38, v97);
    v35[3] = v39;
    v40 = &qword_100602950;
    v41 = &type metadata accessor for MusicMovie;
    v42 = &protocol conformance descriptor for MusicMovie;
LABEL_5:
    v35[4] = sub_1002A9DB4(v40, v41, v42);
    v43 = sub_1000133B0(v35);
    v44 = v36;
    v45 = v39;
    return v37(v43, v44, v45);
  }

  if (v30 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v24 + 96))(v28, v23);
    v46 = v92;
    v37 = *(v93 + 32);
    v47 = v94;
    v37(v92, v28, v94);
    v48 = &protocol witness table for MusicVideo;
LABEL_10:
    v35[3] = v47;
    v35[4] = v48;
    v43 = sub_1000133B0(v35);
    v44 = v46;
    v45 = v47;
    return v37(v43, v44, v45);
  }

  if (v30 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v24 + 96))(v28, v23);
    v46 = v89;
    v37 = *(v90 + 32);
    v47 = v91;
    v37(v89, v28, v91);
    v48 = &protocol witness table for Playlist;
    goto LABEL_10;
  }

  if (v30 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    (*(v24 + 96))(v28, v23);
    v36 = v86;
    v37 = *(v87 + 32);
    v49 = v28;
    v39 = v88;
    v37(v86, v49, v88);
    v35[3] = v39;
    v40 = &unk_100604350;
    v41 = &type metadata accessor for Playlist.Folder;
    v42 = &protocol conformance descriptor for Playlist.Folder;
    goto LABEL_5;
  }

  if (v30 == enum case for GenericMusicItem.song(_:))
  {
    (*(v24 + 96))(v28, v23);
    v50 = *(v85 + 32);
    v50(v18, v28, v16);
    v35[3] = v16;
    v35[4] = &protocol witness table for Song;
    v51 = sub_1000133B0(v35);
    return (v50)(v51, v18, v16);
  }

  else
  {
    if (v30 == enum case for GenericMusicItem.station(_:))
    {
      (*(v24 + 96))(v28, v23);
      v46 = v82;
      v37 = *(v83 + 32);
      v47 = v84;
      v37(v82, v28, v84);
      v48 = &protocol witness table for Station;
      goto LABEL_10;
    }

    if (v30 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v80 + 32);
      v36 = v79;
      v52 = v28;
      v39 = v81;
      v37(v79, v52, v81);
      v35[3] = v39;
      v40 = &unk_100602960;
      v41 = &type metadata accessor for TVEpisode;
      v42 = &protocol conformance descriptor for TVEpisode;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v77 + 32);
      v36 = v76;
      v53 = v28;
      v39 = v78;
      v37(v76, v53, v78);
      v35[3] = v39;
      v40 = &unk_100602970;
      v41 = &type metadata accessor for TVShow;
      v42 = &protocol conformance descriptor for TVShow;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v74 + 32);
      v36 = v73;
      v54 = v28;
      v39 = v75;
      v37(v73, v54, v75);
      v35[3] = v39;
      v40 = &unk_100602978;
      v41 = &type metadata accessor for UploadedAudio;
      v42 = &protocol conformance descriptor for UploadedAudio;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v71 + 32);
      v36 = v70;
      v55 = v28;
      v39 = v72;
      v37(v70, v55, v72);
      v35[3] = v39;
      v40 = &unk_100602980;
      v41 = &type metadata accessor for UploadedVideo;
      v42 = &protocol conformance descriptor for UploadedVideo;
      goto LABEL_5;
    }

    if (qword_100600768 != -1)
    {
      swift_once();
    }

    v56 = sub_1004B80B4();
    sub_100007084(v56, static Logger.capabilityUpsell);
    v57 = v69;
    (v29)(v69, v99, v23);
    v58 = sub_1004B8094();
    v59 = sub_1004BC994();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v97 = v60;
      v99 = swift_slowAlloc();
      v100 = v99;
      *v60 = 136315138;
      sub_1002A9DB4(&unk_100609A10, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
      v61 = sub_1004BD934();
      v62 = v57;
      v64 = v63;
      v65 = *(v24 + 8);
      v65(v62, v23);
      v66 = sub_100012018(v61, v64, &v100);

      v67 = v97;
      *(v97 + 1) = v66;
      _os_log_impl(&_mh_execute_header, v58, v59, "Unsupported GenericMusicItem kind=%s", v67, 0xCu);
      sub_100004C6C(v99);
    }

    else
    {

      v65 = *(v24 + 8);
      v65(v57, v23);
    }

    v35[4] = 0;
    *v35 = 0u;
    *(v35 + 1) = 0u;
    return (v65)(v28, v23);
  }
}

uint64_t sub_1002A8B04(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, static Logger.capabilityUpsell);
  sub_100007084(v2, static Logger.capabilityUpsell);
  return sub_1004B80A4();
}

uint64_t static Logger.capabilityUpsell.getter@<X0>(uint64_t a2@<X8>)
{
  if (qword_100600768 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  v4 = sub_100007084(v3, static Logger.capabilityUpsell);
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, v4, v3);
}

void _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(uint64_t a1)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v3 = &v81 - v2;
  v4 = sub_1004B6634();
  v89 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v81 - v7;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v10 = &v81 - v9;
  v11 = sub_1004B6B04();
  v91 = *(v11 - 8);
  v12 = *(v91 + 64);
  __chkstk_darwin();
  v88 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v90 = &v81 - v13;
  if (qword_1005FFED8 != -1)
  {
    swift_once();
  }

  sub_100003ABC(&qword_100603560, &qword_1004C5240);
  UnfairLock.locked<A>(_:)(sub_10000E7D8);
  v14 = v97;
  if (!v97)
  {
    goto LABEL_8;
  }

  v15 = [v97 stringForBagKey:ICURLBagKeyMarketingItemDynamicUIUrl];
  if (!v15)
  {

    goto LABEL_8;
  }

  v86 = v3;
  v16 = v15;
  v17 = sub_1004BBE64();
  v87 = v11;
  v18 = v17;
  v20 = v19;

  *&v97 = 0x2F2F3A636973756DLL;
  *(&v97 + 1) = 0xE800000000000000;
  v99._countAndFlagsBits = v18;
  v21 = v87;
  v99._object = v20;
  sub_1004BC024(v99);

  sub_1004B6AC4();

  v22 = v91;
  if ((*(v91 + 48))(v10, 1, v21) == 1)
  {

    sub_100007214(v10, &qword_100600DE0, &unk_1004C66D0);
LABEL_8:
    if (qword_100600768 != -1)
    {
      swift_once();
    }

    v23 = sub_1004B80B4();
    sub_100007084(v23, static Logger.capabilityUpsell);
    v24 = sub_1004B8094();
    v25 = sub_1004BC984();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Could not build marketingURL", v26, 2u);
    }

    return;
  }

  v27 = *(v22 + 32);
  v84 = v22 + 32;
  v83 = v27;
  v27(v90, v10, v21);
  sub_100003ABC(&qword_100601328, &qword_1004D98B0);
  v28 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v85 = *(v89 + 72);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1004C50C0;
  v30 = v29;
  v82 = v28;
  sub_1004B6604();
  sub_1002A9B60(a1, &v97);
  if (v98[24] != 253 && v98[24] != 255 && v98[24] != 254)
  {
    sub_100052188(&v97);
  }

  sub_1004B6604();

  sub_1002A9B60(a1, &v95);
  if (v96[24] < 0xFDu)
  {
    v97 = v95;
    *v98 = *v96;
    *&v98[9] = *&v96[9];
    sub_1002A4C84();
    v33 = v30;
    if (v34)
    {
      sub_1004B6604();

      v36 = *(v30 + 2);
      v35 = *(v30 + 3);
      if (v36 >= v35 >> 1)
      {
        v33 = sub_100018238((v35 > 1), v36 + 1, 1, v30);
      }

      v37 = v82;
      *(v33 + 2) = v36 + 1;
      (*(v89 + 32))(&v33[v37 + v36 * v85], v8, v4);
    }

    else
    {
      if (qword_100600768 != -1)
      {
        swift_once();
      }

      v38 = sub_1004B80B4();
      sub_100007084(v38, static Logger.capabilityUpsell);
      sub_1002A9D4C(&v97, &v95);
      v39 = sub_1004B8094();
      v40 = sub_1004BC994();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v94 = v81;
        *v41 = 136315138;
        sub_1002A9D4C(&v95, v92);
        v42 = sub_1004BBF04();
        v44 = v43;
        sub_1002A9D84(&v95);
        v45 = sub_100012018(v42, v44, &v94);
        v33 = v30;

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v39, v40, "Missing kind for item=%s", v41, 0xCu);
        sub_100004C6C(v81);
      }

      else
      {

        sub_1002A9D84(&v95);
      }

      v37 = v82;
    }

    sub_1002A9D4C(&v97, &v95);
    if (v96[24] == 1)
    {
      v46 = v95;
      MPModelObject.bestIdentifier(for:)(2, 1);
      v48 = v47;

      if (v48)
      {
LABEL_34:
        sub_1004B6604();

        v50 = *(v33 + 2);
        v49 = *(v33 + 3);
        if (v50 >= v49 >> 1)
        {
          v33 = sub_100018238((v49 > 1), v50 + 1, 1, v33);
        }

        v32 = v90;
        sub_1002A9D84(&v97);
        *(v33 + 2) = v50 + 1;
        (*(v89 + 32))(&v33[v37 + v50 * v85], v6, v4);
        v31 = v86;
        goto LABEL_44;
      }
    }

    else
    {
      sub_100089BAC(&v95, v92);
      v51 = v93;
      sub_100009178(v92, v93);
      sub_1002A5F44(v51);
      v53 = v52;
      sub_100004C6C(v92);
      if (v53)
      {
        goto LABEL_34;
      }
    }

    if (qword_100600768 != -1)
    {
      swift_once();
    }

    v54 = sub_1004B80B4();
    sub_100007084(v54, static Logger.capabilityUpsell);
    sub_1002A9D4C(&v97, &v95);
    v55 = sub_1004B8094();
    v56 = sub_1004BC994();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v94 = v58;
      *v57 = 136315138;
      sub_1002A9D4C(&v95, v92);
      v59 = sub_1004BBF04();
      v61 = v60;
      sub_1002A9D84(&v95);
      v62 = sub_100012018(v59, v61, &v94);

      *(v57 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v55, v56, "Missing id for item=%s", v57, 0xCu);
      sub_100004C6C(v58);
    }

    else
    {

      sub_1002A9D84(&v95);
    }

    sub_1002A9D84(&v97);
    v32 = v90;
    v31 = v86;
    goto LABEL_44;
  }

  sub_100052188(&v95);
  v31 = v86;
  v32 = v90;
  v33 = v30;
LABEL_44:
  v63._rawValue = v33;
  sub_1004B6AB4(v63);

  if (qword_100600768 != -1)
  {
    swift_once();
  }

  v64 = sub_1004B80B4();
  sub_100007084(v64, static Logger.capabilityUpsell);
  v65 = sub_1004B8094();
  v66 = sub_1004BC9A4();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v97 = v68;
    *v67 = 136446210;
    swift_beginAccess();
    sub_1002A9DB4(&qword_100603C38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v69 = v87;
    v70 = sub_1004BD934();
    v72 = v32;
    v73 = sub_100012018(v70, v71, &v97);

    *(v67 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v65, v66, "Will present upsell with URL=%{public}s", v67, 0xCu);
    sub_100004C6C(v68);
    v31 = v86;
  }

  else
  {

    v69 = v87;
    v72 = v32;
  }

  v74 = v91;
  v75 = sub_1004BC4B4();
  (*(*(v75 - 8) + 56))(v31, 1, 1, v75);
  swift_beginAccess();
  v76 = v88;
  (*(v74 + 16))(v88, v72, v69);
  sub_1004BC474();
  v77 = sub_1004BC464();
  v78 = v74;
  v79 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v77;
  *(v80 + 24) = &protocol witness table for MainActor;
  v83(v80 + v79, v76, v69);
  sub_1000FD6BC(0, 0, v31, &unk_1004D98C0, v80);

  (*(v78 + 8))(v72, v69);
}

uint64_t sub_1002A99DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002A99F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002A9A38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -3 - a2;
    }
  }

  return result;
}

double sub_1002A9A88(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result = 0.0;
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 40) = -a2;
  }

  return result;
}

uint64_t sub_1002A9AC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002A9B04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002A9B98(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B6B04();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_1002A9C5C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1004B6B04() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000136EC;

  return sub_1002A7178(a1, v7, v8, v2 + v6);
}

uint64_t sub_1002A9DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1002A9DFC(uint64_t a1, uint64_t a2)
{
  result = sub_1002A9E1C(a1, a2);
  qword_100618C60 = result;
  return result;
}

id sub_1002A9E1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B6B04();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_100003ABC(&qword_10060A210, &qword_1004DB5A0) - 8);
  __chkstk_darwin();
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v54 - v7;
  __chkstk_darwin();
  v10 = &v54 - v9;
  __chkstk_darwin();
  v12 = &v54 - v11;
  __chkstk_darwin();
  v14 = &v54 - v13;
  v60 = sub_1002F1688(_swiftEmptyArrayStorage, v15);
  sub_100003ABC(&qword_10060A218, &qword_1004DB5A8);
  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v62 = *(v5 + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004C5070;
  v64 = v16;
  v57 = v17;
  v18 = v17 + v16;
  v19 = objc_opt_self();
  v20 = [v19 mainBundle];
  v21 = [v20 resourceURL];

  if (v21)
  {
    sub_1004B6A94();

    v22 = *(v3 + 56);
    v23 = v14;
    v24 = 0;
  }

  else
  {
    v22 = *(v3 + 56);
    v23 = v14;
    v24 = 1;
  }

  v63 = v22;
  v22(v23, v24, 1, v2);
  v25 = v3;
  sub_1002AD424(v14, v18);
  type metadata accessor for BundleFinder(0, v26);
  v27 = [v19 bundleForClass:swift_getObjCClassFromMetadata()];
  v28 = [v27 resourceURL];

  if (v28)
  {
    sub_1004B6A94();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v59;
  v55 = v25;
  v31 = v12;
  v32 = v12;
  v33 = v63;
  v63(v31, v29, 1, v2);
  v34 = v62;
  sub_1002AD424(v32, v18 + v62);
  v35 = [v19 mainBundle];
  v36 = [v35 bundleURL];

  sub_1004B6A94();
  v61 = (v25 + 7);
  v33(v18 + 2 * v34, 0, 1, v2);
  v65 = v60;
  sub_1002CBB50(v57);
  v37 = v65;
  v38 = v65[2];
  if (v38)
  {
    v39 = 0;
    v40 = v64 + v65;
    v64 = (v55 + 6);
    v60 = (v55 + 1);
    v55 += 4;
    v56 = "1F9AD12BundleFinder";
    v57 = v38;
    while (v39 < v37[2])
    {
      sub_10000F778(v40, v8, &qword_10060A210, &qword_1004DB5A0);
      v41 = *v64;
      if ((*v64)(v8, 1, v2) == 1)
      {
        sub_1002AD494(v8);
        v42 = 1;
      }

      else
      {
        sub_1004B6A64();
        (*v60)(v8, v2);
        v42 = 0;
      }

      v63(v10, v42, 1, v2);
      sub_10000F778(v10, v30, &qword_10060A210, &qword_1004DB5A0);
      if (v41(v30, 1, v2) == 1)
      {
        sub_1002AD494(v10);
      }

      else
      {
        v43 = v37;
        v44 = v10;
        v45 = v8;
        v46 = v58;
        (*v55)(v58, v30, v2);
        v47 = objc_allocWithZone(NSBundle);
        sub_1004B6A44(v48);
        v50 = v49;
        v51 = [v47 initWithURL:v49];

        v30 = v59;
        v52 = v46;
        v8 = v45;
        v10 = v44;
        v37 = v43;
        v38 = v57;
        (*v60)(v52, v2);
        sub_1002AD494(v10);
        if (v51)
        {

          return v51;
        }
      }

      ++v39;
      v40 += v62;
      if (v38 == v39)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_1004BD624();
  __break(1u);
  return result;
}

void variable initialization expression of Artwork.caching(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

id variable initialization expression of Artwork.decoration@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Artwork.Decoration(0);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v3 = v2[5];
  v4 = sub_1004BCEE4();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  result = [objc_opt_self() blackColor];
  *&a1[v5] = result;
  *&a1[v2[7]] = 1;
  return result;
}

id variable initialization expression of Artwork.Decoration.fillColor(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() blackColor];

  return v2;
}

id variable initialization expression of Artwork.Placeholder.background(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() secondarySystemFillColor];

  return v2;
}

uint64_t variable initialization expression of Artwork.Placeholder.tint()
{
  if (qword_100609A40 != -1)
  {
    swift_once();
  }

  v0 = qword_10060A790;
  v1 = qword_10060A790;
  return v0;
}

id variable initialization expression of Artwork.Placeholder.symbolConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() configurationWithWeight:4];

  return v2;
}

id variable initialization expression of Artwork.Placeholder.View.contentView()
{
  v0 = objc_allocWithZone(UIImageView);

  return [v0 init];
}

id variable initialization expression of LyricsLoader.operationQueue()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setMaxConcurrentOperationCount:1];
  return v0;
}

uint64_t variable initialization expression of Lyrics.StateManager.state@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for Lyrics.StateManager.State(0);
  v3 = a1 + *(v2 + 20);
  v4 = enum case for ScenePhase.inactive(_:);
  v5 = sub_1004B8724();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v3 + *(v6 + 20)) = 0;
  *(v3 + *(v6 + 24)) = 0;
  v7 = *(v2 + 24);
  v8 = sub_1004B6CD4();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

id variable initialization expression of Lyrics.StateManager.loader(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(type metadata accessor for LyricsLoader(0, a2));

  return [v2 init];
}

id variable initialization expression of Lyrics.StateManager.lyricsReportingController()
{
  v0 = objc_allocWithZone(MPCLyricsReportingController);

  return [v0 init];
}

uint64_t variable initialization expression of Lyrics.StateManager.State.loading()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of Lyrics.StateManager.State.display@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = sub_1004B8724();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(a1 + *(result + 20)) = 0;
  *(a1 + *(result + 24)) = 0;
  return result;
}

uint64_t variable initialization expression of Lyrics.StateManager.State.Display.scenePhase@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = sub_1004B8724();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

__n128 variable initialization expression of NoticePresenter.configuration()
{
  v1 = swift_unknownObjectWeakInit();
  *(v1 + 8) = 2;
  *(v1 + 16) = 0x4024000000000000;
  result = *&NSDirectionalEdgeInsetsZero.top;
  *(v1 + 40) = *&NSDirectionalEdgeInsetsZero.bottom;
  *(v1 + 24) = result;
  return result;
}

double variable initialization expression of CarouselView.pageIndicatorHeight(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 userInterfaceIdiom];

  result = 8.0;
  if (v3 == 6)
  {
    return 10.0;
  }

  return result;
}

id variable initialization expression of CircularProgressView.trackLayer()
{
  v0 = objc_allocWithZone(CAShapeLayer);

  return [v0 init];
}

uint64_t variable initialization expression of Collaboration.Management.Model._hasNetworkConnectivity()
{
  static ApplicationCapabilities.shared.getter(v1);
  sub_100051DEC(v1);
  return BYTE1(v1[0]);
}

uint64_t variable initialization expression of Collaboration.Management.Model.$__lazy_storage_$_artworkViewModel@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003ABC(&qword_10060EF20, &qword_1004D9F00);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1002AACD8(uint64_t a1)
{
  sub_100003ABC(&qword_10060A208, &qword_1004E0AA0);
  __chkstk_darwin();
  sub_10000F778(a1, &v4 - v2, &qword_10060A208, &qword_1004E0AA0);
  return sub_1004B9024();
}

double variable initialization expression of HitMyRectButton.hitRectAdjustment@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

double variable initialization expression of ImagePicker.DummyImagePickerViewController.$__lazy_storage_$_presentationSource@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

id variable initialization expression of LoadingView.label()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

id variable initialization expression of LoadingView.activityIndicator()
{
  v0 = objc_allocWithZone(UIActivityIndicatorView);

  return [v0 initWithActivityIndicatorStyle:100];
}

uint64_t variable initialization expression of NowPlaying.TrackTitleStackView.metadata@<X0>(uint64_t a1@<X8>)
{
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();

  return sub_1002ABDC0(v2, a1);
}

double sub_1002AAF6C@<D0>(void *a1@<X0>, SEL *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = [objc_opt_self() preferredFontForTextStyle:*a1];
  v6 = [objc_opt_self() *a2];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v15 = v5;
  *(&v15 + 1) = v6;
  LOBYTE(v16) = 0;
  BYTE8(v16) = 0;
  *&v17 = 0x4040000000000000;
  *(&v17 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v18 = leading;
  *(&v18 + 1) = bottom;
  *&v19 = trailing;
  v20 = 0uLL;
  *(&v19 + 1) = 1;
  v21[0] = v5;
  v21[1] = v6;
  v22 = 0;
  v23 = 0;
  v24 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v26 = leading;
  v27 = bottom;
  v28 = trailing;
  v30 = 0;
  v31 = 0;
  v29 = 1;
  sub_1002ABE24(&v15, &v14);
  sub_1002ABE80(v21);
  v10 = v18;
  a3[2] = v17;
  a3[3] = v10;
  v11 = v20;
  a3[4] = v19;
  a3[5] = v11;
  result = *&v15;
  v13 = v16;
  *a3 = v15;
  a3[1] = v13;
  return result;
}

__n128 variable initialization expression of Gliss.Transition<>.Output.transform3D@<Q0>(uint64_t a1@<X8>)
{
  v1 = *&CATransform3DIdentity.m33;
  *(a1 + 64) = *&CATransform3DIdentity.m31;
  *(a1 + 80) = v1;
  v2 = *&CATransform3DIdentity.m43;
  *(a1 + 96) = *&CATransform3DIdentity.m41;
  *(a1 + 112) = v2;
  v3 = *&CATransform3DIdentity.m13;
  *a1 = *&CATransform3DIdentity.m11;
  *(a1 + 16) = v3;
  result = *&CATransform3DIdentity.m21;
  v5 = *&CATransform3DIdentity.m23;
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.symbol@<D0>(uint64_t a1@<X8>)
{
  sub_1003BA0D8(v6);
  v2 = v10;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v3;
  result = *&v7;
  v5 = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v5;
  return result;
}

UIFontTextStyle SymbolButton.Title.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = UIFontTextStyleSubheadline;
  *(a1 + 24) = UIFontWeightSemibold;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return UIFontTextStyleSubheadline;
}

double variable initialization expression of SymbolButton.Configuration.material@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.customView@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

id variable initialization expression of QRCodeOverlayViewController.backgroundView()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.qrCodeView(uint64_t a1, uint64_t a2)
{
  type metadata accessor for QRCodeOverlayViewController.ContainerView(0, a2);
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 init];
}

id variable initialization expression of QRCodeOverlayViewController.logoView()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  return v2;
}

id variable initialization expression of QRCodeOverlayViewController.titleLabel()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.subtitleLabelEffectView(uint64_t a1, uint64_t a2)
{
  if (qword_100609D48 != -1)
  {
    swift_once();
  }

  v2 = [objc_opt_self() effectForBlurEffect:qword_100619268];
  v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v2];

  return v3;
}

id variable initialization expression of QRCodeOverlayViewController.scrollView()
{
  v0 = objc_allocWithZone(UIScrollView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.ContainerView.overlayLayer()
{
  v0 = objc_allocWithZone(CALayer);

  return [v0 init];
}

uint64_t sub_1002AB508@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004B9094();
  *a1 = result;
  return result;
}

uint64_t sub_1002AB588@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_100003ABC(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

id sub_1002AB600(Class *a1)
{
  v1 = [objc_allocWithZone(*a1) init];
  v2 = UIView.forAutolayout.getter();

  return v2;
}

id variable initialization expression of SliderView.feedbackGenerator()
{
  v0 = objc_allocWithZone(UIImpactFeedbackGenerator);

  return [v0 initWithStyle:0];
}

id variable initialization expression of SliderView.trackLayoutGuide()
{
  v0 = objc_allocWithZone(UILayoutGuide);

  return [v0 init];
}

id variable initialization expression of SyncedLyricsViewController.Specs.glowColor(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() whiteColor];

  return v2;
}

id variable initialization expression of SliderView.remainingTrackColor(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() systemFillColor];

  return v2;
}

id variable initialization expression of SliderView.trackingColor()
{
  if (qword_100609AC0 != -1)
  {
    swift_once();
  }

  v1 = static UIColor.MusicTint.normal;

  return v1;
}

id variable initialization expression of SyncedLyricsViewController.contentView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

id variable initialization expression of SymbolButton.materialView(uint64_t a1, uint64_t a2)
{
  v6 = 1;
  v2 = type metadata accessor for SymbolButton.MaterialView(0, a2);
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v5.receiver = objc_allocWithZone(v2);
  v5.super_class = v2;
  v3 = objc_msgSendSuper2(&v5, "initWithEffect:", 0);
  sub_1003B4F64(&v6);

  return v3;
}

id variable initialization expression of SymbolButton.backgroundView()
{
  if (qword_100609DA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *&static SymbolButton.Background.clear;
  v1 = qword_100619418;
  v2 = qword_100619420;
  v3 = qword_100619428;
  v5 = type metadata accessor for SymbolButton.BackgroundView(0, v4);
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v7 = 0;
  *(v7 + 1) = 0x3FF0000000000000;
  v13.receiver = v6;
  v13.super_class = v5;
  v8 = v1;

  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003B53E0(v1, v2, v3, v0);
  sub_1003B55A0(v10, v11);

  return v9;
}

uint64_t sub_1002AB99C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double variable initialization expression of VerticalToggleSlider.packageDefinition@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id variable initialization expression of VerticalToggleSlider.blurEffect(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() effectWithBlurRadius:10.0];

  return v2;
}

void variable initialization expression of VerticalToggleSlider.growTransform(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

id variable initialization expression of WaveformPlayIndicator.colorPalette(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = [v2 tintColor];
  v4 = [v2 labelColor];
  v5 = [v4 colorWithAlphaComponent:0.35];

  v6 = [v2 labelColor];
  v7 = [v6 colorWithAlphaComponent:0.2];

  v8 = [v2 labelColor];
  v9 = [v8 colorWithAlphaComponent:0.6];

  return v3;
}

id variable initialization expression of WaveformPlayIndicator.waveform(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() zero];

  return v2;
}

uint64_t variable initialization expression of WaveformPlayIndicator.cannedAnimationAsset(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BouncyBarsAsset(0, a2);
  v2 = swift_allocObject();
  return sub_1003D137C(v2, v3);
}

uint64_t sub_1002ABCC4(uint64_t a1, uint64_t a2)
{
  result = sub_1004B71A4();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_1002ABD18(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B71B4();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1002ABDC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1002ABEE8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

Swift::Int sub_1002ABF98(uint64_t a1, uint64_t a2)
{
  sub_1004BDBA4();
  swift_getWitnessTable();
  sub_1004B71F4();
  return sub_1004BDBF4();
}

uint64_t sub_1002AC000(uint64_t a1)
{
  sub_1002ACA40(&qword_10060A1F8, type metadata accessor for UIContentSizeCategory, &unk_1004DA5E4);
  sub_1002ACA40(&qword_10060A200, type metadata accessor for UIContentSizeCategory, &unk_1004DA584);

  return sub_1004BD744();
}

uint64_t sub_1002AC0BC(uint64_t a1)
{
  sub_1002ACA40(&qword_10060A1E8, type metadata accessor for TextStyle, &unk_1004DA73C);
  sub_1002ACA40(&qword_10060A1F0, type metadata accessor for TextStyle, &unk_1004DA6DC);

  return sub_1004BD744();
}

uint64_t sub_1002AC178(uint64_t a1)
{
  sub_1002ACA40(&qword_10060A1D0, type metadata accessor for Weight, &unk_1004DA894);
  sub_1002ACA40(&qword_10060A1D8, type metadata accessor for Weight, &unk_1004DA834);
  sub_1002AD3D0();
  return sub_1004BD744();
}

uint64_t sub_1002AC240(uint64_t a1)
{
  sub_1002ACA40(&qword_10060A1C0, type metadata accessor for FeatureKey, &unk_1004DAC60);
  sub_1002ACA40(&qword_10060A1C8, type metadata accessor for FeatureKey, &unk_1004DAC00);

  return sub_1004BD744();
}

uint64_t sub_1002AC2FC(uint64_t a1)
{
  sub_1002ACA40(&qword_10060A1B0, _s3__C13AttributeNameVMa_0, &unk_1004DB554);
  sub_1002ACA40(&qword_10060A1B8, _s3__C13AttributeNameVMa_0, &unk_1004DAD58);

  return sub_1004BD744();
}

uint64_t sub_1002AC3B8(uint64_t a1)
{
  sub_1002ACA40(&qword_10060A248, _s3__C4NameVMa_1, &unk_1004DB6D0);
  sub_1002ACA40(&unk_10060A250, _s3__C4NameVMa_1, &unk_1004DB670);

  return sub_1004BD744();
}

uint64_t sub_1002AC474(uint64_t a1)
{
  sub_1002ACA40(&qword_10060A190, type metadata accessor for CAGradientLayerType, &unk_1004DB1B8);
  sub_1002ACA40(&qword_10060A198, type metadata accessor for CAGradientLayerType, &unk_1004DB158);

  return sub_1004BD744();
}

uint64_t sub_1002AC530(uint64_t a1)
{
  sub_1002ACA40(&qword_10060A1A0, type metadata accessor for InfoKey, &unk_1004DB510);
  sub_1002ACA40(&qword_10060A1A8, type metadata accessor for InfoKey, &unk_1004DAE6C);

  return sub_1004BD744();
}

uint64_t sub_1002AC5EC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1004B71E4();
}

void sub_1002AC660()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1004BDBE4(*&v1);
}

uint64_t type metadata accessor for BundleFinder(uint64_t a1, uint64_t a2)
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

__n128 sub_1002AC750(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1002AC774(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002AC794(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
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

  *(result + 128) = v3;
  return result;
}

__n128 sub_1002AC7F4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_1002AC828(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for GlowModifier(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1002ACA40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002AD3D0()
{
  result = qword_10060A1E0;
  if (!qword_10060A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060A1E0);
  }

  return result;
}

uint64_t sub_1002AD424(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060A210, &qword_1004DB5A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AD494(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060A210, &qword_1004DB5A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id Artwork.content.getter()
{
  v1 = *v0;
  sub_1002AD694(*v0, v0[1]);
  return v1;
}

id sub_1002AD694(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

void Artwork.content.setter(void *a1, void *a2)
{
  sub_1002AD70C(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
}

void sub_1002AD70C(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t Artwork.size.setter(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = result;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  return result;
}

uint64_t Artwork.decoration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Artwork(0) + 28);

  return sub_1002AD898(a1, v3);
}

uint64_t sub_1002AD898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Artwork.placeholderViewProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Artwork(0) + 36));
  result = swift_unknownObjectRelease();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double Artwork.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = xmmword_1004C5090;
  *(a1 + 64) = 0;
  v2 = type metadata accessor for Artwork(0);
  v3 = (a1 + v2[7]);
  v4 = type metadata accessor for Artwork.Decoration(0);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v5 = v4[5];
  v6 = sub_1004BCEE4();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v7 = v4[6];
  *&v3[v7] = [objc_opt_self() blackColor];
  *&v3[v4[7]] = 1;
  v8 = (a1 + v2[8]);
  result = 0.0;
  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
  v10 = (a1 + v2[9]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t static Artwork.with(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = xmmword_1004C5090;
  *(a2 + 64) = 0;
  v4 = type metadata accessor for Artwork(0);
  v5 = (a2 + v4[7]);
  v6 = type metadata accessor for Artwork.Decoration(0);
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  v7 = v6[5];
  v8 = sub_1004BCEE4();
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  v9 = v6[6];
  *&v5[v9] = [objc_opt_self() blackColor];
  *&v5[v6[7]] = 1;
  v10 = (a2 + v4[8]);
  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  v11 = (a2 + v4[9]);
  *v11 = 0;
  v11[1] = 0;
  return a1(a2);
}

char *sub_1002ADD18(uint64_t a1)
{
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002B353C(v1, v3, type metadata accessor for Artwork);
  v4 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  v5 = Artwork.View.init(configuration:)(v3);
  sub_1002B36F4(&qword_10060A488, type metadata accessor for Artwork.View, &protocol conformance descriptor for Artwork.View);
  return v5;
}

char *Artwork.View.init(configuration:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *&v1[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  *v7 = 0;
  v7[8] = -1;
  sub_1002B353C(a1, &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration], type metadata accessor for Artwork);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v8 setContentMode:4];
  v9 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  v10 = [*&v8[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] layer];
  [v10 setMinificationFilter:kCAFilterTrilinear];

  v11 = [*&v8[v9] layer];
  [v11 setMagnificationFilter:kCAFilterTrilinear];

  [*&v8[v9] setContentMode:2];
  [*&v8[v9] setClipsToBounds:1];
  [*&v8[v9] setAccessibilityIgnoresInvertColors:1];
  [v8 addSubview:*&v8[v9]];
  sub_1002AE958();
  sub_1002AF7E0();
  sub_1002AF360();

  sub_1002B4234(a1, type metadata accessor for Artwork);
  return v8;
}

void Artwork.View.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind;
  *v4 = 0;
  *(v4 + 8) = -1;
  sub_1004BD624();
  __break(1u);
}

void sub_1002AE1D8(uint64_t a1)
{
  v3 = type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  sub_1002B353C(v6, v5, type metadata accessor for Artwork);
  v7 = _s11MusicCoreUI7ArtworkV2eeoiySbAC_ACtFZ_0(v5, a1);
  sub_1002B4234(v5, type metadata accessor for Artwork);
  if (!v7)
  {
    sub_1002AE958();
    sub_1002AF7E0();
    sub_1002AF360();
    v8 = *(v3 + 36);
    v9 = *(a1 + v8);
    v10 = *&v6[v8];
    if (v9)
    {
      if (v9 == v10)
      {
        return;
      }
    }

    else if (!v10)
    {
      return;
    }

    v11 = [*&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
    if (v11)
    {
    }

    else
    {
      v12 = [v1 artworkCatalog];
      if (v12)
      {

LABEL_12:
        sub_1002AE958();
        return;
      }
    }

    if (*v6)
    {
      return;
    }

    goto LABEL_12;
  }
}

Swift::Void __swiftcall Artwork.View.invalidatePlaceholderView()()
{
  v1 = [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v1)
  {

    goto LABEL_3;
  }

  v3 = [v0 artworkCatalog];
  if (!v3)
  {
LABEL_3:
    v2 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    if (*&v0[v2])
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_7:
  sub_1002AE958();
}

double Artwork.View.typedConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_1002B353C(v1 + v3, a1, type metadata accessor for Artwork);
  return result;
}

uint64_t Artwork.View.typedConfiguration.setter(uint64_t a1)
{
  type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_1002B353C(v1 + v5, v4, type metadata accessor for Artwork);
  swift_beginAccess();
  sub_1002B35A4(a1, v1 + v5);
  swift_endAccess();
  sub_1002AE1D8(v4);
  sub_1002B4234(a1, type metadata accessor for Artwork);
  return sub_1002B4234(v4, type metadata accessor for Artwork);
}

void (*Artwork.View.typedConfiguration.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Artwork(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_1002B353C(v1 + v8, v7, type metadata accessor for Artwork);
  return sub_1002AE688;
}

void sub_1002AE688(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_1002B353C(*(*a1 + 12), v6, type metadata accessor for Artwork);
    sub_1002B353C(v7 + v4, v5, type metadata accessor for Artwork);
    swift_beginAccess();
    sub_1002B35A4(v6, v7 + v4);
    swift_endAccess();
    sub_1002AE1D8(v5);
    sub_1002B4234(v5, type metadata accessor for Artwork);
  }

  else
  {
    sub_1002B353C(v7 + v4, v6, type metadata accessor for Artwork);
    swift_beginAccess();
    sub_1002B35A4(v3, v7 + v4);
    swift_endAccess();
    sub_1002AE1D8(v6);
  }

  sub_1002B4234(v6, type metadata accessor for Artwork);
  sub_1002B4234(v3, type metadata accessor for Artwork);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

id Artwork.View.currentImage.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView) image];

  return v1;
}

uint64_t Artwork.View.imageDidChangeHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_10002F518(*v1, v1[1]);
  return v2;
}

uint64_t Artwork.View.imageDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10003CC4C(v6, v7);
}

void sub_1002AE958()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v3 = type metadata accessor for Artwork(0);
  v4 = &v2[*(v3 + 36)];
  if (*v4)
  {
    v5 = *(v4 + 1);
    v6 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v7 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
    if (v7 != 255 && (v7 & 1) != 0)
    {
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v5 + 8);
      swift_unknownObjectRetain();
      sub_1002B4294(v8, v7);
      v11 = v10(v8, ObjectType, v5);
      v12 = *v6;
      *v6 = v11;
      v13 = v6[8];
      v6[8] = 1;
      v14 = v11;
      sub_1002B1104(v12, v13);
      sub_1002B3FDC(v12, v13);
      swift_unknownObjectRelease();

      v15 = v8;
      v16 = v7;
LABEL_20:
      sub_1002B3FDC(v15, v16);
      goto LABEL_27;
    }

    v17 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    swift_unknownObjectRetain();
    v18 = [v17 image];
    if (v18)
    {
    }

    else
    {
      v35 = [v1 artworkCatalog];
      if (v35)
      {

        goto LABEL_18;
      }
    }

    if (*v2)
    {
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

LABEL_18:
    v36 = swift_getObjectType();
    v37 = (*(v5 + 8))(0, v36, v5);
    v38 = *v6;
    *v6 = v37;
    v39 = v6[8];
    v6[8] = 1;
    v40 = v37;
    sub_1002B1104(v38, v39);
    sub_1002B3FDC(v38, v39);
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v19 = &v2[*(v3 + 32)];
  v20 = *(v19 + 3);
  if (!v20)
  {
    v41 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v42 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    *v41 = 0;
    v43 = v41[8];
    v41[8] = -1;
    sub_1002B1104(v42, v43);
    v15 = v42;
    v16 = v43;
    goto LABEL_20;
  }

  v22 = *v19;
  v21 = *(v19 + 1);
  v23 = *(v19 + 2);
  v24 = *(v19 + 4);
  v25 = *(v19 + 5);
  *&v83 = *v19;
  *(&v83 + 1) = v21;
  *&v84 = v23;
  *(&v84 + 1) = v20;
  *&v85 = v24;
  *(&v85 + 1) = v25;
  v26 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v27 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v27 == 255 || (v27 & 1) != 0)
  {
    v28 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    v29 = v23;
    v30 = v20;
    v31 = v22;
    v32 = v21;
    v33 = [v28 image];
    if (v33)
    {
    }

    else
    {
      v53 = [v1 artworkCatalog];
      if (v53)
      {

        goto LABEL_26;
      }
    }

    if (*v2)
    {

      goto LABEL_27;
    }

LABEL_26:
    v54 = type metadata accessor for Artwork.Placeholder.View(0, v34);
    v55 = objc_allocWithZone(v54);
    v56 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
    v57 = objc_allocWithZone(UIImageView);
    v58 = v31;
    v80 = v32;
    v59 = v29;
    v60 = v30;
    *&v55[v56] = [v57 init];
    v61 = &v55[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
    v62 = v85;
    *(v61 + 1) = v84;
    *(v61 + 2) = v62;
    *v61 = v83;
    v81.receiver = v55;
    v81.super_class = v54;
    v63 = v58;
    v64 = v80;
    v65 = v59;
    v66 = v60;
    v67 = objc_msgSendSuper2(&v81, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v67 addSubview:*&v67[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView]];
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    sub_1002B4D34(&v86);

    v68 = v64;
    v69 = v63;
    v70 = *v26;
    *v26 = v67;
    v71 = v26[8];
    v26[8] = 0;
    v72 = v67;
    sub_1002B1104(v70, v71);
    sub_1002B3FDC(v70, v71);

    goto LABEL_27;
  }

  v44 = *v26;
  v45 = *v26 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v46 = *(v45 + 16);
  v86 = *v45;
  v87 = v46;
  v77 = *(v45 + 8);
  v78 = *v45;
  v75 = *(v45 + 24);
  v76 = *(v45 + 16);
  v73 = *(v45 + 40);
  v74 = *(v45 + 32);
  v90 = *(&v86 + 1);
  v91 = v86;
  v79 = *(&v46 + 1);
  v89 = v46;
  v88 = *(v45 + 32);
  v47 = v83;
  v48 = v85;
  *(v45 + 16) = v84;
  *(v45 + 32) = v48;
  *v45 = v47;
  sub_1002B42A8(v22, v21, v23, v20);
  sub_1002B4294(v44, v27);
  v49 = v23;
  v50 = v20;
  v51 = v22;
  v52 = v21;
  if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(&v83, &v86))
  {
    v82[0] = v78;
    v82[1] = v77;
    v82[2] = v76;
    v82[3] = v75;
    v82[4] = v74;
    v82[5] = v73;
    sub_1002B4D34(v82);
  }

  sub_1002B3FDC(v44, v27);
  sub_100007214(&v91, &qword_10060A768, &qword_1004DBB20);
  sub_100007214(&v90, &qword_10060A768, &qword_1004DBB20);
  sub_100007214(&v89, &qword_10060A770, &qword_1004DBB28);

LABEL_27:
  sub_1002B0FCC();
}

Swift::Void __swiftcall Artwork.View.layoutSubviews()()
{
  v30.receiver = v0;
  v30.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v30, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  [v0 bounds];
  v6.n128_u64[0] = v5;
  v8.n128_u64[0] = v7;
  Artwork.View.fittingImageSize(in:)(v6, v8);
  v10 = v9;
  v12 = v11;
  v13 = [v0 contentMode];
  if (v13 > 5)
  {
    if (v13 == 6)
    {
      [v0 bounds];
      MaxY = CGRectGetMaxY(v33);
      v34.origin.x = v2;
      v34.origin.y = v4;
      v34.size.width = v10;
      v34.size.height = v12;
      v4 = MaxY - CGRectGetHeight(v34);
    }

    else if (v13 == 8)
    {
      [v0 bounds];
      MaxX = CGRectGetMaxX(v31);
      v32.origin.x = v2;
      v32.origin.y = v4;
      v32.size.width = v10;
      v32.size.height = v12;
      v2 = MaxX - CGRectGetWidth(v32);
    }
  }

  v16 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  sub_1004BCD84(v2, v4, v10, v12);
  [v16 setFrame:?];
  if (v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8] != 255)
  {
    [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind] setFrame:{v2, v4, v10, v12}];
  }

  v17 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v18 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v19 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 8];
  v20 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 16];
  v21 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 24];
  [v0 bounds];
  v36.origin.x = v22;
  v36.origin.y = v23;
  v36.size.width = v24;
  v36.size.height = v25;
  v35.origin.x = v18;
  v35.origin.y = v19;
  v35.size.width = v20;
  v35.size.height = v21;
  if (!CGRectEqualToRect(v35, v36))
  {
    [v0 bounds];
    *v17 = v26;
    *(v17 + 1) = v27;
    *(v17 + 2) = v28;
    *(v17 + 3) = v29;
    sub_1002AF360();
  }

  sub_1002AF7E0();
}

void Artwork.View.fittingImageSize(in:)(__n128 a1, __n128 a2)
{
  if (a1.n128_f64[0] == 0.0 && a2.n128_f64[0] == 0.0)
  {
    v3 = [v2 artworkCatalog];
    if (v3)
    {
      v4 = v3;
      MPArtworkCatalog.originalSize.getter();
    }

    return;
  }

  sub_1004BCDF4();
  v6 = v5;
  v7 = [*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v7)
  {
    v8 = v7;
    [v7 size];
  }

  else
  {
    v10 = [v2 artworkCatalog];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    MPArtworkCatalog.originalSize.getter();
    v13 = v12;

    if (v13)
    {
      return;
    }
  }

  sub_1004BCDF4();
  if (sub_1004B70D4())
  {
    sub_1004BCDF4();
    if (vabdd_f64(v6, v9) > 0.1)
    {
      sub_1004BCDF4();
    }
  }
}

id sub_1002AF360()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 artworkCatalog];
  v4 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = v5;
  }

  v7 = Optional<A>.isArtworkVisuallyIdentical(to:)(v5, v3);

  if ((v7 & 1) == 0)
  {
    [v1 clearArtworkCatalogs];
    sub_1002B0760(0);
  }

  [v1 bounds];
  if (v9 != 0.0 || v8 != 0.0)
  {
    v10 = *v4;
    if (*v4)
    {
      sub_10000F778((v4 + 16), v48, &qword_10060A3E0, &qword_1004DB770);
      sub_10000F778(v48, &v46, &qword_10060A3E0, &qword_1004DB770);
      if (v47)
      {
        v11 = v10;

        sub_1002B40D8(&v46);
      }

      else
      {
        v13 = v10;
        sub_100007214(&v46, &qword_10060A3E0, &qword_1004DB770);
      }

      v14 = sub_1004BBE24();

      sub_10000F778(v48, &v46, &qword_10060A3E0, &qword_1004DB770);
      if (v47)
      {
        Strong = swift_weakLoadStrong();
        sub_1002B40D8(&v46);
      }

      else
      {
        sub_100007214(&v46, &qword_10060A3E0, &qword_1004DB770);
        Strong = 0;
      }

      [v10 setCacheIdentifier:v14 forCacheReference:Strong];

      swift_unknownObjectRelease();
      v16 = [v1 traitCollection];
      [v16 displayScale];
      v18 = v17;

      [v10 setDestinationScale:v18];
      v19 = v4[48];
      if (v19 == 255)
      {
        [v1 bounds];
        v21 = v20;
        v23 = v22;
      }

      else
      {
        v24 = *(v4 + 7);
        v25 = *(v4 + 5);
        v26 = v4[64];
        [v1 bounds];
        v28 = v27;
        v30 = v29;
        sub_1002B1FE8(v27, v29, v25, v19);
        v32 = v31;
        sub_1002B1FE8(v28, v30, v24, v26);
        v23 = v33;
        v21 = v32;
      }

      [v10 setFittingSize:{v21, v23}];
      [v10 setRenderHint:{objc_msgSend(v10, "renderHint") | 1}];
      v34 = [v1 artworkCatalog];
      if (v34)
      {
        v35 = v34;
        [v34 scaledFittingSize];
        v37 = v36;
        v39 = v38;

        [v10 scaledFittingSize];
        if (v37 == v41 && v39 == v40)
        {
          v42 = [v1 artworkCatalog];
          if (v42)
          {

            return sub_100007214(v48, &qword_10060A3E0, &qword_1004DB770);
          }
        }
      }

      else
      {
        [v10 scaledFittingSize];
      }

      MPArtworkCatalog.expectedRatio.getter();
      if ((v43 & 1) == 0)
      {
        [v1 setNeedsLayout];
      }

      v46 = v1;
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = ObjectType;
      MPArtworkCatalog.setDestination<A>(_:for:completion:)(&v46, 1, sub_1002B40D0, v45, ObjectType);

      return sub_100007214(v48, &qword_10060A3E0, &qword_1004DB770);
    }
  }

  result = [*&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (result)
  {

    sub_1002B0760(0);
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1002AF7E0()
{
  v1 = v0;
  sub_100003ABC(&qword_10060A760, &qword_1004DBB18);
  __chkstk_darwin();
  v91 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = (&v88 - v3);
  __chkstk_darwin();
  v101 = &v88 - v4;
  __chkstk_darwin();
  v97 = &v88 - v5;
  __chkstk_darwin();
  v94 = (&v88 - v6);
  __chkstk_darwin();
  v98 = &v88 - v7;
  __chkstk_darwin();
  v93 = &v88 - v8;
  __chkstk_darwin();
  v10 = (&v88 - v9);
  __chkstk_darwin();
  v12 = &v88 - v11;
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  __chkstk_darwin();
  v90 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v88 - v14;
  __chkstk_darwin();
  v92 = &v88 - v16;
  __chkstk_darwin();
  v18 = &v88 - v17;
  v19 = type metadata accessor for Artwork.Decoration(0);
  v104 = *(v19 - 1);
  *&v20 = __chkstk_darwin().n128_u64[0];
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  [v95 frame];
  v24 = v23;
  v26 = v25;
  v27 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v99 = type metadata accessor for Artwork(0);
  v100 = v27;
  v28 = &v27[v99[7]];
  v105 = v22;
  sub_1002B353C(v28, v22, type metadata accessor for Artwork.Decoration);
  v29 = *(v28 + v19[7]);
  [v1 bounds];
  if ((v29 & 1) != 0 && (v34 = v30, v35 = v31, v36 = v32, v37 = v33, Width = CGRectGetWidth(*&v30), v33 = v37, v32 = v36, v31 = v35, v39 = Width, v30 = v34, v24 < v39) || (v29 & 2) != 0 && v26 < CGRectGetHeight(*&v30))
  {
    v40 = v105;
    sub_10000F778(&v105[v19[5]], v18, &qword_100610D00, &qword_1004DB780);
    v41 = sub_1004BCEE4();
    v42 = (*(*(v41 - 8) + 48))(v18, 1, v41) != 1;
    sub_100007214(v18, &qword_100610D00, &qword_1004DB780);
    v43 = v42;
    v44 = 1;
    [v1 setClipsToBounds:v43];
    v45 = *(v40 + v19[6]);
  }

  else
  {
    [v1 setClipsToBounds:0];
    v45 = [objc_opt_self() clearColor];
    v44 = 0;
  }

  [v1 setBackgroundColor:v45];

  v46 = v104;
  v96 = v15;
  v103 = v44;
  if (v44)
  {
    sub_1002B353C(v105, v12, type metadata accessor for Artwork.Decoration);
    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v102 = v46[7];
  v102(v12, v47, 1, v19);
  sub_10000F778(v12, v10, &qword_10060A760, &qword_1004DBB18);
  v104 = v46[6];
  if ((v104)(v10, 1, v19) == 1)
  {
    v48 = v1;
    sub_100007214(v10, &qword_10060A760, &qword_1004DBB18);
    v49 = 0;
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v49 = *v10;
    v50 = v10[1];
    v51 = v10[2];
    v52 = v51;
    v53 = v1;
    sub_1002B4234(v10, type metadata accessor for Artwork.Decoration);
  }

  v54 = v98;
  UIView.border.setter(v49, v50, v51);
  v55 = v93;
  sub_10000F778(v12, v93, &qword_10060A760, &qword_1004DBB18);
  v56 = v104;
  if ((v104)(v55, 1, v19) == 1)
  {
    sub_100007214(v55, &qword_10060A760, &qword_1004DBB18);
    v57 = sub_1004BCEE4();
    (*(*(v57 - 8) + 56))(v92, 1, 1, v57);
  }

  else
  {
    sub_10000F778(v55 + v19[5], v92, &qword_100610D00, &qword_1004DB780);
    sub_1002B4234(v55, type metadata accessor for Artwork.Decoration);
  }

  v58 = v95;
  sub_1004BCEF4();

  sub_100007214(v12, &qword_10060A760, &qword_1004DBB18);
  if (v103)
  {
    v59 = 1;
  }

  else
  {
    sub_1002B353C(v105, v54, type metadata accessor for Artwork.Decoration);
    v59 = 0;
  }

  v60 = v94;
  v102(v54, v59, 1, v19);
  sub_10000F778(v54, v60, &qword_10060A760, &qword_1004DBB18);
  if (v56(v60, 1, v19) == 1)
  {
    v61 = v58;
    sub_100007214(v60, &qword_10060A760, &qword_1004DBB18);
    v62 = 0;
    v63 = 0;
    v64 = 0;
  }

  else
  {
    v62 = *v60;
    v63 = v60[1];
    v64 = v60[2];
    v65 = v64;
    v66 = v58;
    sub_1002B4234(v60, type metadata accessor for Artwork.Decoration);
  }

  UIView.border.setter(v62, v63, v64);
  v67 = v97;
  sub_10000F778(v54, v97, &qword_10060A760, &qword_1004DBB18);
  v68 = v104;
  if ((v104)(v67, 1, v19) == 1)
  {
    sub_100007214(v67, &qword_10060A760, &qword_1004DBB18);
    v69 = sub_1004BCEE4();
    (*(*(v69 - 8) + 56))(v96, 1, 1, v69);
  }

  else
  {
    sub_10000F778(v67 + v19[5], v96, &qword_100610D00, &qword_1004DB780);
    sub_1002B4234(v67, type metadata accessor for Artwork.Decoration);
  }

  sub_1004BCEF4();

  sub_100007214(v54, &qword_10060A760, &qword_1004DBB18);
  v70 = &v100[v99[9]];
  v74 = *v70 && (v71 = *(v70 + 1), ObjectType = swift_getObjectType(), v73 = *(v71 + 16), swift_unknownObjectRetain(), LOBYTE(v71) = v73(ObjectType, v71), swift_unknownObjectRelease(), (v71 & 1) != 0) && *&v100[v99[8] + 24] == 0;
  v75 = v101;
  if ((v103 | v74))
  {
    v76 = 1;
  }

  else
  {
    sub_1002B353C(v105, v101, type metadata accessor for Artwork.Decoration);
    v76 = 0;
  }

  v102(v75, v76, 1, v19);
  v77 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v77 != 255)
  {
    v78 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v79 = v89;
    sub_10000F778(v75, v89, &qword_10060A760, &qword_1004DBB18);
    if (v68(v79, 1, v19) == 1)
    {
      v80 = v78;
      sub_100007214(v79, &qword_10060A760, &qword_1004DBB18);
      v81 = 0;
      v82 = 0;
      v83 = 0;
    }

    else
    {
      v81 = *v79;
      v82 = v79[1];
      v83 = v79[2];
      sub_1002B4294(v78, v77);
      sub_1002B4294(v78, v77);
      v84 = v83;
      sub_1002B4234(v79, type metadata accessor for Artwork.Decoration);
    }

    UIView.border.setter(v81, v82, v83);
    v75 = v101;
    v85 = v91;
    sub_10000F778(v101, v91, &qword_10060A760, &qword_1004DBB18);
    if (v68(v85, 1, v19) == 1)
    {
      sub_100007214(v85, &qword_10060A760, &qword_1004DBB18);
      v86 = sub_1004BCEE4();
      (*(*(v86 - 8) + 56))(v90, 1, 1, v86);
    }

    else
    {
      sub_10000F778(v85 + v19[5], v90, &qword_100610D00, &qword_1004DB780);
      sub_1002B4234(v85, type metadata accessor for Artwork.Decoration);
    }

    sub_1004BCEF4();
    sub_1002B3FDC(v78, v77);
    sub_1002B3FDC(v78, v77);
  }

  sub_100007214(v75, &qword_10060A760, &qword_1004DBB18);
  return sub_1002B4234(v105, type metadata accessor for Artwork.Decoration);
}

void Artwork.View.intrinsicContentSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  if (*(v1 + 48) == 2 && *(v1 + 64) == 2)
  {
    v3.n128_u64[0] = *(v1 + 56);
    v2.n128_u64[0] = *(v1 + 40);
  }

  else
  {
    v2.n128_u64[0] = 0;
    v3.n128_u64[0] = 0;
  }

  Artwork.View.fittingImageSize(in:)(v2, v3);
}

void Artwork.View.sizeThatFits(_:)(double a1, double a2)
{
  v5 = v2 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  v8 = *(v5 + 48);
  if (v8 == 255)
  {
    v6.n128_f64[0] = a1;
    v7.n128_f64[0] = a2;
    Artwork.View.fittingImageSize(in:)(v6, v7);
  }

  else
  {
    v9 = *(v5 + 56);
    v10 = *(v5 + 40);
    v11 = *(v5 + 64);
    sub_1002B1FE8(a1, a2, v10, v8);
    sub_1002B1FE8(a1, a2, v9, v11);
  }
}

double Artwork.Size.computedSize(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6 = a4;
  sub_1002B1FE8(a5, a6, a1, a2);
  v11 = v10;
  sub_1002B1FE8(a5, a6, a3, v6);
  return v11;
}

uint64_t sub_1002B0760(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  [v2 setImage:a1];
  v3 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  if (*v3 && (v4 = *(v3 + 1)) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = [objc_opt_self() clearColor];
  }

  v6 = v5;
  [v2 setBackgroundColor:v5];

  v7 = [v2 image];
  if (v7)
  {

    goto LABEL_7;
  }

  v8 = [v1 artworkCatalog];
  if (!v8)
  {
LABEL_7:
    if (*v3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_11:
  sub_1002AE958();
LABEL_12:
  sub_1002B0FCC();
  sub_1002AF7E0();
  v9 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler];
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {
    v12 = *(v9 + 1);

    v11(v13);
    return sub_10003CC4C(v11, v12);
  }

  return result;
}

void sub_1002B08C0(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v19 = v6;
  v9 = [a2 imageRepresentation];
  if (v9)
  {
    v18 = v9;
    v10 = [v9 image];
    if (v10)
    {
      v11 = v10;
      if (([v18 isImagePrepared] & 1) == 0)
      {
        v14 = swift_allocObject();
        v14[2] = a3;
        v14[3] = v11;
        v14[4] = v8;
        aBlock[4] = sub_1002B4150;
        aBlock[5] = v14;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100207FC0;
        aBlock[3] = &unk_1005BF018;
        v15 = _Block_copy(aBlock);
        v16 = v19;
        v17 = v11;

        [v17 prepareForDisplayWithCompletionHandler:v15];

        _Block_release(v15);
        return;
      }

      v12 = v11;
      sub_1002B0760(v11);

      [v8 setNeedsLayout];
      v13 = v18;
      goto LABEL_8;
    }
  }

  sub_1002B0760(0);
  [v8 setNeedsLayout];
  v13 = v19;
LABEL_8:
}

uint64_t sub_1002B0AC4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1004BA8F4();
  v24 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004BA924();
  v11 = *(v23 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009130(0, &qword_10060E4F0, OS_dispatch_queue_ptr);
  v22 = sub_1004BCB44();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a1;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_1002B41C4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005BF068;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a3;
  v18 = a4;

  sub_1004BA914();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002B36F4(&qword_10060A738, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003ABC(&qword_10060A740, &unk_1004E6630);
  sub_1002B41D0();
  sub_1004BD2D4();
  v19 = v22;
  sub_1004BCB54();
  _Block_release(v15);

  (*(v24 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v23);
}

void sub_1002B0DAC(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = [a4 artworkCatalog];
  v9 = v8;
  if (!Strong)
  {
    if (v8)
    {

      return;
    }

LABEL_7:
    if (a2)
    {
      v11 = a2;
      sub_1002B0760(a2);
    }

    else
    {
      if (qword_100609C18 != -1)
      {
        swift_once();
      }

      v12 = sub_1004B80B4();
      sub_100007084(v12, static Logger.artwork);
      v13 = a3;
      v14 = sub_1004B8094();
      v15 = sub_1004BC984();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to prepare image: %@", v16, 0xCu);
        sub_100007214(v17, &qword_10060A750, &qword_1004DBB10);
      }

      sub_1002B0760(v13);
    }

    [a4 setNeedsLayout];
    return;
  }

  if (!v8)
  {

    return;
  }

  sub_100009130(0, &qword_10060A758, MPArtworkCatalog_ptr);
  v10 = sub_1004BCFA4();

  if (v10)
  {
    goto LABEL_7;
  }
}

void sub_1002B0FCC()
{
  v1 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v2 = v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v2 != 255)
  {
    v3 = *v1;
    v4 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    v5 = *v1;
    v6 = [v4 image];
    if (v6)
    {
    }

    else
    {
      v9 = [v0 artworkCatalog];
      if (v9)
      {

        goto LABEL_8;
      }
    }

    v7 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    if (*&v0[v7])
    {
      v8 = 1;
LABEL_11:
      [v5 setHidden:v8];
      sub_1002B3FDC(v3, v2);
      return;
    }

LABEL_8:
    v10 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
    swift_beginAccess();
    v11 = type metadata accessor for Artwork(0);
    if (*&v10[*(v11 + 32) + 24])
    {
      v8 = 0;
    }

    else
    {
      v8 = *&v10[*(v11 + 36)] == 0;
    }

    goto LABEL_11;
  }
}

void sub_1002B1104(void *a1, uint64_t a2)
{
  v3 = a2;
  v5 = &v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v6 = *&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v7 = v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v3 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1;
  }

  if (v7 == 255 || v6 == 0)
  {
    sub_1002B4294(*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind], v7);
    sub_1002B4294(a1, v3);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    if (v8)
    {
      v10 = v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
      sub_100009130(0, &qword_100611200, UIView_ptr);
      sub_1002B4294(v6, v10);
      sub_1002B4294(a1, v3);
      v11 = sub_1004BCFA4();

      if (v11)
      {
        return;
      }

      goto LABEL_16;
    }

    sub_1002B4294(*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind], v7);
    sub_1002B4294(a1, v3);
    v8 = v6;
  }

LABEL_16:
  if (v3 != -1)
  {
    [a1 removeFromSuperview];
  }

  v12 = v5[8];
  if (v12 != 255)
  {
    v13 = *v5;
    v14 = *v5;
    v15 = v14;
    if ((v12 & 1) == 0)
    {
      [v14 setClipsToBounds:1];
    }

    [v2 addSubview:v15];
    [v2 setNeedsLayout];

    sub_1002B3FDC(v13, v12);
  }
}

id CTRunRef.PartialRunView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

uint64_t (*sub_1002B1400(uint64_t **a1))()
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
  v2[4] = Artwork.View.typedConfiguration.modify(v2);
  return sub_1002B1470;
}

void sub_1002B1470(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double sub_1002B14B8@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Artwork(0);
  a1[4] = sub_1002B36F4(&qword_10060A438, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v3 = sub_1000133B0(a1);
  v4 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_1002B353C(v1 + v4, v3, type metadata accessor for Artwork);
  return result;
}

uint64_t sub_1002B1578(void *a1)
{
  type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  __chkstk_darwin();
  v6 = v10 - v5 + 40;
  sub_10001342C(a1, v10);
  sub_100003ABC(&qword_10060A730, &unk_1004DBB00);
  swift_dynamicCast();
  v7 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_1002B353C(v1 + v7, v4, type metadata accessor for Artwork);
  swift_beginAccess();
  sub_1002B35A4(v6, v1 + v7);
  swift_endAccess();
  sub_1002AE1D8(v4);
  sub_1002B4234(v6, type metadata accessor for Artwork);
  sub_1002B4234(v4, type metadata accessor for Artwork);
  return sub_100004C6C(a1);
}

void (*sub_1002B16F4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  *(v3 + 24) = type metadata accessor for Artwork(0);
  v4[4] = sub_1002B36F4(&qword_10060A438, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v5 = sub_1000133B0(v4);
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_1002B353C(v1 + v6, v5, type metadata accessor for Artwork);
  return sub_1002B17F8;
}

void sub_1002B17F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10001342C(*a1, (v2 + 5));
    sub_1002B1578(v2 + 5);
    sub_100004C6C(v2);
  }

  else
  {
    sub_1002B1578(*a1);
  }

  free(v2);
}

uint64_t sub_1002B1860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return UIContentView.supports(_:)(a1, ObjectType, a3);
}

double Artwork.Caching.reference.setter(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

uint64_t (*Artwork.Caching.reference.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return sub_1002B1944;
}

double sub_1002B1944(void *a1)
{
  swift_weakAssign();

  return result;
}

double Artwork.Caching.init(reference:identifier:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_weakInit();
  *a4 = a2;
  a4[1] = a3;
  swift_weakAssign();

  return result;
}

void Artwork.Caching.init(reference:)(void *a2@<X8>)
{
  swift_weakInit();
  swift_weakAssign();

  *a2 = 0xD00000000000001CLL;
  a2[1] = 0x8000000100507380;
}

uint64_t Artwork.Content.init(catalog:background:)(uint64_t result, void *a2)
{
  if (!result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t static Artwork.Content.__derived_struct_equals(_:_:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_100009130(0, &unk_1006111F0, NSObject_ptr);
  if (sub_1004BCFA4())
  {
    if (a2)
    {
      if (a4)
      {
        sub_100009130(0, &qword_10060DF30, UIColor_ptr);
        v6 = a4;
        v7 = a2;
        v8 = sub_1004BCFA4();

        if (v8)
        {
          return 1;
        }
      }
    }

    else if (!a4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1002B1B88(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_100009130(0, &unk_1006111F0, NSObject_ptr);
  if (sub_1004BCFA4())
  {
    if (v2)
    {
      if (v3)
      {
        sub_100009130(0, &qword_10060DF30, UIColor_ptr);
        v4 = v3;
        v5 = v2;
        v6 = sub_1004BCFA4();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Artwork.Decoration.border.getter()
{
  v1 = *v0;
  v2 = v0[2];
  return v1;
}

void Artwork.Decoration.border.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
}

id Artwork.Decoration.fillColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Artwork.Decoration(0) + 24));

  return v1;
}

void Artwork.Decoration.fillColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Artwork.Decoration(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t Artwork.Decoration.fillAxes.setter(uint64_t a1)
{
  result = type metadata accessor for Artwork.Decoration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t static Artwork.Decoration.with(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = v4[5];
  v6 = sub_1004BCEE4();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = v4[6];
  *&a2[v7] = [objc_opt_self() blackColor];
  *&a2[v4[7]] = 1;
  return a1(a2);
}

uint64_t sub_1002B1FE8(double a1, double a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    if (a1 != 1.79769313e308)
    {
      return result;
    }

    sub_1004BD404(67);
    v9._countAndFlagsBits = 0x6F69736E656D6944;
    v9._object = 0xE90000000000006ELL;
    sub_1004BC024(v9);
    v10._object = 0x8000000100507560;
    v10._countAndFlagsBits = 0xD000000000000030;
    sub_1004BC024(v10);
    v11._countAndFlagsBits = sub_1004BCE04();
    sub_1004BC024(v11);

    v12._countAndFlagsBits = 0x696C61766E49203ALL;
    v12._object = 0xEF68746469772064;
    sub_1004BC024(v12);
LABEL_10:
    result = sub_1004BD624();
    __break(1u);
    return result;
  }

  if (a4 == 1 && a2 == 1.79769313e308)
  {
    sub_1004BD404(68);
    v5._countAndFlagsBits = 0x6F69736E656D6944;
    v5._object = 0xE90000000000006ELL;
    sub_1004BC024(v5);
    v6._object = 0x8000000100507560;
    v6._countAndFlagsBits = 0xD000000000000030;
    sub_1004BC024(v6);
    v7._countAndFlagsBits = sub_1004BCE04();
    sub_1004BC024(v7);

    v8._countAndFlagsBits = 0xD000000000000010;
    v8._object = 0x80000001005075A0;
    sub_1004BC024(v8);
    goto LABEL_10;
  }

  return result;
}

BOOL static Artwork.Size.Dimension.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = *&a1 == *&a3;
    if (a4 != 1)
    {
      v4 = 0;
    }

    v5 = a4 == 2 && *&a1 == *&a3;
    if (a2 == 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    return !a4 && *&a1 == *&a3;
  }
}

uint64_t sub_1002B226C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 == 1 && v2 == v3)
      {
        return 1;
      }
    }

    else if (v4 == 2 && v2 == v3)
    {
      return 1;
    }
  }

  else if (!*(a2 + 8) && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1002B23B8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = type metadata accessor for Artwork.Decoration(0);
  sub_100007108(v10, a2);
  v11 = sub_100007084(v10, a2);
  if (qword_100609B18 != -1)
  {
    swift_once();
  }

  v12 = static UIView.Border.artwork;
  v13 = byte_100618F08;
  v14 = *a3;
  v15 = qword_100618F10;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_1004BCEE4();
  v17 = sub_100007084(v16, a4);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v9, v17, v16);
  (*(v18 + 56))(v9, 0, 1, v16);
  v19 = [objc_opt_self() blackColor];
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v15;
  result = sub_1002B3FF0(v9, v11 + v10[5]);
  *(v11 + v10[6]) = v19;
  *(v11 + v10[7]) = 1;
  return result;
}

uint64_t sub_1002B25E8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Artwork.Decoration(0);

  return sub_100007084(v4, a2);
}

uint64_t sub_1002B2660()
{
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  __chkstk_darwin();
  v1 = &v11 - v0;
  v2 = type metadata accessor for Artwork.Decoration(0);
  sub_100007108(v2, static Artwork.Decoration.round);
  v3 = sub_100007084(v2, static Artwork.Decoration.round);
  if (qword_100609B18 != -1)
  {
    swift_once();
  }

  v4 = static UIView.Border.artwork;
  v5 = byte_100618F08;
  v6 = qword_100618F10;
  v7 = qword_100618F10;
  sub_1004BCED4();
  v8 = sub_1004BCEE4();
  (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
  v9 = [objc_opt_self() blackColor];
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  result = sub_1002B3FF0(v1, v3 + v2[5]);
  *(v3 + v2[6]) = v9;
  *(v3 + v2[7]) = 1;
  return result;
}

double sub_1002B2838@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Artwork.Decoration(0);
  v7 = sub_100007084(v6, a2);
  sub_1002B353C(v7, a4, type metadata accessor for Artwork.Decoration);
  return result;
}

uint64_t Artwork.Decoration.scaled(using:compatibleWith:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = sub_1004BCE94();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v28 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = &v27 - v13;
  sub_1002B353C(v4, a3, type metadata accessor for Artwork.Decoration);
  if (*(v4 + 16) && *(a3 + 16))
  {
    v15 = *(v4 + 8);
    [a1 scaledValueForValue:a2 compatibleWithTraitCollection:*v4];
    *a3 = v16;
    *(a3 + 8) = v15 & 1;
  }

  v29 = a1;
  v30 = a2;
  v17 = type metadata accessor for Artwork.Decoration(0);
  sub_10000F778(v4 + *(v17 + 20), v9, &qword_100610D00, &qword_1004DB780);
  v18 = sub_1004BCEE4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v9, 1, v18) == 1)
  {
    return sub_100007214(v9, &qword_100610D00, &qword_1004DB780);
  }

  sub_1004BCEB4();
  (*(v19 + 8))(v9, v18);
  v22 = (*(v11 + 88))(v14, v10);
  if (v22 != enum case for UIView.Corner.Radius.value(_:))
  {
    return (*(v11 + 8))(v14, v10);
  }

  v23 = v22;
  (*(v11 + 96))(v14, v10);
  result = (v20)(a3 + *(v17 + 20), 1, v18);
  if (!result)
  {
    v24 = v14[8];
    [v29 scaledValueForValue:v30 compatibleWithTraitCollection:*v14];
    v25 = v28;
    *v28 = v26;
    *(v25 + 8) = v24;
    (*(v11 + 104))(v25, v23, v10);
    return sub_1004BCEC4();
  }

  return result;
}

BOOL _s11MusicCoreUI7ArtworkV7CachingV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (v3 = sub_1004BD9C4(), result = 0, (v3 & 1) != 0))
  {
    Strong = swift_weakLoadStrong();
    v6 = swift_weakLoadStrong();
    if (Strong)
    {
      if (v6)
      {
        v7 = v6;

        return Strong == v7;
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s11MusicCoreUI7ArtworkV4SizeV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if (a2 == 1)
    {
      result = 0;
      if (a6 != 1)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (a6 != 2)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (a6)
    {
      return result;
    }
  }

  if (*&a1 == *&a5)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        if (a8 == 1 && *&a3 == *&a7)
        {
          return 1;
        }
      }

      else if (a8 == 2 && *&a3 == *&a7)
      {
        return 1;
      }
    }

    else if (!a8 && *&a3 == *&a7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL _s11MusicCoreUI7ArtworkV10DecorationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1004BCEE4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  __chkstk_darwin();
  v35 = &v32 - v8;
  v9 = sub_100003ABC(&qword_10060A778, &qword_1004DBB30);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v12 = a1[2];
  v13 = a2[2];
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v33 = v4;
    v34 = v7;
    v15 = *a1;
    v14 = a1[1];
    v32 = v5;
    v16 = a1;
    v18 = *a2;
    v17 = a2[1];
    v19 = v13;
    v37 = v14 & 1;
    v20 = v17 & 1;
    a1 = v16;
    v36 = v20;
    v21 = v18;
    v5 = v32;
    v4 = v33;
    v22 = static UIView.Border.__derived_struct_equals(_:_:)(v15, v14 & 1, v12, v21, v20, v19);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v34 = v7;
    if (v13)
    {
      return 0;
    }
  }

  v23 = type metadata accessor for Artwork.Decoration(0);
  v24 = *(v23 + 20);
  v25 = *(v9 + 48);
  sub_10000F778(a1 + v24, v11, &qword_100610D00, &qword_1004DB780);
  sub_10000F778(a2 + v24, &v11[v25], &qword_100610D00, &qword_1004DB780);
  v26 = *(v5 + 48);
  if (v26(v11, 1, v4) != 1)
  {
    v27 = v35;
    sub_10000F778(v11, v35, &qword_100610D00, &qword_1004DB780);
    if (v26(&v11[v25], 1, v4) != 1)
    {
      v28 = v34;
      (*(v5 + 32))(v34, &v11[v25], v4);
      sub_1002B36F4(&qword_10060A780, &type metadata accessor for UIView.Corner, &protocol conformance descriptor for UIView.Corner);
      v29 = sub_1004BBD84();
      v30 = *(v5 + 8);
      v30(v28, v4);
      v30(v27, v4);
      sub_100007214(v11, &qword_100610D00, &qword_1004DB780);
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v27, v4);
LABEL_11:
    sub_100007214(v11, &qword_10060A778, &qword_1004DBB30);
    return 0;
  }

  if (v26(&v11[v25], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_100007214(v11, &qword_100610D00, &qword_1004DB780);
LABEL_13:
  sub_100009130(0, &unk_1006111F0, NSObject_ptr);
  if (sub_1004BCFA4())
  {
    return *(a1 + *(v23 + 28)) == *(a2 + *(v23 + 28));
  }

  return 0;
}

BOOL _s11MusicCoreUI7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = a1[1];
    v6 = *(a2 + 8);
    sub_100009130(0, &unk_1006111F0, NSObject_ptr);
    v7 = v6;
    v8 = v4;
    if (sub_1004BCFA4())
    {
      if (v5)
      {
        if (v6)
        {
          sub_100009130(0, &qword_10060DF30, UIColor_ptr);
          v9 = v7;
          v10 = v5;
          v11 = sub_1004BCFA4();

          if ((v11 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_9;
        }

LABEL_20:

        return 0;
      }

      if (!v6)
      {

        goto LABEL_9;
      }
    }

    goto LABEL_20;
  }

  if (v4)
  {
    return 0;
  }

LABEL_9:
  sub_10000F778((a1 + 2), &v43, &qword_10060A3E0, &qword_1004DB770);
  sub_10000F778(a2 + 16, &v46, &qword_10060A3E0, &qword_1004DB770);
  if (!v44)
  {
    if (!v47)
    {
      sub_100007214(&v43, &qword_10060A3E0, &qword_1004DB770);
      goto LABEL_15;
    }

LABEL_22:
    sub_100007214(&v43, &qword_10060A788, &qword_1004DBB38);
    return 0;
  }

  sub_10000F778(&v43, v42, &qword_10060A3E0, &qword_1004DB770);
  if (!v47)
  {
    sub_1002B40D8(v42);
    goto LABEL_22;
  }

  sub_1002B4358(&v46, v41);
  v12 = _s11MusicCoreUI7ArtworkV7CachingV23__derived_struct_equalsySbAE_AEtFZ_0(v42, v41);
  sub_1002B40D8(v41);
  sub_1002B40D8(v42);
  sub_100007214(&v43, &qword_10060A3E0, &qword_1004DB770);
  if (!v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13 == 255)
  {
    if (v14 != 255)
    {
      return 0;
    }
  }

  else if (v14 == 255 || (_s11MusicCoreUI7ArtworkV4SizeV23__derived_struct_equalsySbAE_AEtFZ_0(a1[5], v13, a1[7], *(a1 + 64), *(a2 + 40), v14, *(a2 + 56), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v16 = type metadata accessor for Artwork(0);
  if (!_s11MusicCoreUI7ArtworkV10DecorationV23__derived_struct_equalsySbAE_AEtFZ_0((a1 + v16[7]), (a2 + v16[7])))
  {
    return 0;
  }

  v17 = v16[8];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = *(a1 + v17 + 16);
  v21 = *(a1 + v17 + 24);
  v23 = *(a1 + v17 + 32);
  v22 = *(a1 + v17 + 40);
  v24 = a2 + v17;
  v26 = *v24;
  v25 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v30 = *(v24 + 32);
  v29 = *(v24 + 40);
  if (v21)
  {
    if (v28)
    {
      v43 = *v24;
      v44 = v25;
      v45 = v27;
      v46 = v28;
      v47 = v30;
      v48 = v29;
      v42[0] = v18;
      v42[1] = v19;
      v42[2] = v20;
      v42[3] = v21;
      v42[4] = v23;
      v42[5] = v22;
      v36 = v26;
      v31 = v26;
      v32 = v19;
      v37 = v25;
      v39 = v27;
      v33 = v20;
      sub_1002B42A8(v31, v25, v27, v28);
      sub_1002B42A8(v18, v32, v33, v21);
      v34 = _s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(v42, &v43);

      sub_1002B4300(v18, v32, v33, v21);
      if (v34)
      {
        return *(a2 + v16[9]) == *(a1 + v16[9]);
      }

      return 0;
    }

LABEL_33:
    v38 = *(v24 + 8);
    v40 = *(v24 + 16);
    v35 = v20;
    sub_1002B42A8(*v24, v38, v27, v28);
    sub_1002B42A8(v18, v19, v35, v21);
    sub_1002B4300(v18, v19, v35, v21);
    sub_1002B4300(v26, v38, v40, v28);
    return 0;
  }

  if (v28)
  {
    goto LABEL_33;
  }

  return *(a2 + v16[9]) == *(a1 + v16[9]);
}

uint64_t sub_1002B353C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002B35A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B3670(uint64_t a1)
{
  *(a1 + 8) = sub_1002B36F4(&qword_10060A430, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  result = sub_1002B36F4(&qword_10060A438, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002B36F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002B3784(uint64_t a1)
{
  result = sub_1002B36F4(&qword_10060A488, type metadata accessor for Artwork.View, &protocol conformance descriptor for Artwork.View);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002B37F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for Artwork.Decoration(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1002B38BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for Artwork.Decoration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002B3960(uint64_t a1)
{
  sub_100029A78(319, &qword_10060A4F8, &type metadata for Artwork.Content);
  if (v1 <= 0x3F)
  {
    sub_100029A78(319, &qword_10060A500, &type metadata for Artwork.Caching);
    if (v2 <= 0x3F)
    {
      sub_100029A78(319, &qword_10060A508, &type metadata for Artwork.Size);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Artwork.Decoration(319);
        if (v4 <= 0x3F)
        {
          sub_100029A78(319, &qword_10060A510, &type metadata for Artwork.Placeholder);
          if (v5 <= 0x3F)
          {
            sub_1002B3A84(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1002B3A84(uint64_t a1)
{
  if (!qword_10060A518)
  {
    sub_100003B68(&unk_10060A520, &unk_1004DB960);
    v1 = sub_1004BD174();
    if (!v2)
    {
      atomic_store(v1, &qword_10060A518);
    }
  }
}

uint64_t sub_1002B3AF0(uint64_t a1)
{
  result = type metadata accessor for Artwork(319);
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

uint64_t sub_1002B3C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1002B3CE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_1002B3DAC(uint64_t a1)
{
  sub_100029A78(319, &unk_100610E60, &type metadata for UIView.Border);
  if (v1 <= 0x3F)
  {
    sub_1002B3E80(319);
    if (v2 <= 0x3F)
    {
      sub_100009130(319, &qword_10060DF30, UIColor_ptr);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UIAxis(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002B3E80(uint64_t a1)
{
  if (!qword_10060A6F8)
  {
    sub_1004BCEE4();
    v1 = sub_1004BD174();
    if (!v2)
    {
      atomic_store(v1, &qword_10060A6F8);
    }
  }
}

__n128 sub_1002B3ED8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1002B3EEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002B3F34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Artwork.Size.Dimension(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_1002B3FDC(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_1002B3FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B4060()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002B4098()
{

  return swift_deallocObject();
}

uint64_t sub_1002B4108()
{

  return swift_deallocObject();
}

uint64_t sub_1002B415C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002B4174()
{

  return swift_deallocObject();
}

unint64_t sub_1002B41D0()
{
  result = qword_10060A748;
  if (!qword_10060A748)
  {
    sub_100003B68(&qword_10060A740, &unk_1004E6630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060A748);
  }

  return result;
}

uint64_t sub_1002B4234(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1002B4294(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

id sub_1002B42A8(id result, void *a2, void *a3, void *a4)
{
  if (a4)
  {
    v5 = result;
    v6 = a3;
    v7 = a4;
    v8 = v5;

    return a2;
  }

  return result;
}

void sub_1002B4300(void *a1, void *a2, void *a3, void *a4)
{
  if (a4)
  {
  }
}

void Artwork.Placeholder.View.typedConfiguration.setter(uint64_t *a1)
{
  sub_1002B9688(a1);
  v4 = *a1;
  sub_100007214(&v4, &qword_10060A768, &qword_1004DBB20);
  v3 = a1[1];
  sub_100007214(&v3, &qword_10060A768, &qword_1004DBB20);
  v2 = a1[2];
  sub_100007214(&v2, &qword_10060A770, &qword_1004DBB28);
}

void *Artwork.Placeholder.tint.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id sub_1002B44A0(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() tertiaryLabelColor];
  qword_10060A790 = result;
  return result;
}

__n128 static Artwork.Placeholder.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a3@<X8>)
{
  v5 = [objc_opt_self() secondarySystemFillColor];
  if (qword_100609A40 != -1)
  {
    swift_once();
  }

  v6 = qword_10060A790;
  v7 = objc_opt_self();
  v8 = v6;
  *&v12 = v5;
  *(&v12 + 1) = v6;
  v13 = 0;
  v14 = [v7 configurationWithWeight:4];
  v15 = xmmword_1004D9AE0;
  a1(&v12);
  v9 = v13;
  v10 = v14;
  result = v15;
  *a3 = v12;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = result;
  return result;
}

id Artwork.Placeholder.preferredSymbolConfiguration(in:)(double a1, double a2, uint64_t a3, uint64_t a4)
{
  if (a1 > a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (a2 < a1)
  {
    a1 = a2;
  }

  if (v5 * *(v4 + 32) >= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = v5 * *(v4 + 32);
  }

  v7 = *(v4 + 24);
  v8 = [objc_opt_self() configurationWithPointSize:v6];
  v9 = [v7 configurationByApplyingConfiguration:v8];

  return v9;
}

void Artwork.Placeholder.image(with:graphicsFormat:)(uint64_t a1, double a2, double a3)
{
  v4 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a1 format:{a2, a3}];
  v5 = *v3;
  v18 = v3[1];
  v19 = v5;
  v6 = v3[2];
  v7 = v3[3];
  v16 = 0;
  v17 = v6;
  v8 = swift_allocObject();
  v9 = *(v3 + 1);
  *(v8 + 16) = *v3;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v3 + 2);
  *(v8 + 64) = &v16;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1002B981C;
  *(v10 + 24) = v8;
  aBlock[4] = sub_100124268;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011FE68;
  aBlock[3] = &unk_1005BF0E0;
  v11 = _Block_copy(aBlock);
  sub_10000F778(&v19, v14, &qword_10060A768, &qword_1004DBB20);
  sub_10000F778(&v18, v14, &qword_10060A768, &qword_1004DBB20);
  sub_10000F778(&v17, v14, &qword_10060A770, &qword_1004DBB28);
  v12 = v7;

  v13 = [v4 imageWithActions:v11];

  _Block_release(v11);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_1002B48A0(void *a1, uint64_t a2, void **a3)
{
  v6 = [a1 format];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  [v15 setFill];

  v16 = objc_opt_self();
  v17 = [v16 bezierPathWithRect:{v8, v10, v12, v14}];
  [v17 fill];

  if (*a2)
  {
    v18 = *a2;
    [v18 setFill];
    v19 = [v16 bezierPathWithRect:{v8, v10, v12, v14}];
    [v19 fill];
  }

  if (v12 > v14)
  {
    v20 = v12;
  }

  else
  {
    v20 = v14;
  }

  if (v14 >= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v14;
  }

  v22 = v20 * *(a2 + 32);
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(a2 + 24);
  v25 = [objc_opt_self() configurationWithPointSize:v23];
  v26 = [v24 configurationByApplyingConfiguration:v25];

  v27 = *(a2 + 16);
  if (v27)
  {
    v28 = [v27 imageWithSymbolConfiguration:v26];
    if (v28)
    {
      v29 = v28;
      if (*(a2 + 8))
      {
        v30 = [v28 imageWithTintColor:?];

        v29 = v30;
      }

      [v29 size];
      v32 = v31;
      v33 = [objc_opt_self() mainScreen];
      [v33 scale];

      sub_1004BCD94();
      [v29 drawInRect:v32];
    }
  }

  v34 = [a1 currentImage];

  v35 = *a3;
  *a3 = v34;
}

char *Artwork.Placeholder.View.init(configuration:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = *a1;
  v17 = a1[1];
  v18 = v5;
  v6 = a1[3];
  v16 = a1[2];
  v7 = &v1[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  v8 = *(a1 + 2);
  v9 = *(a1 + 1);
  *v7 = *a1;
  *(v7 + 1) = v9;
  *(v7 + 2) = v8;
  sub_10000F778(&v18, v19, &qword_10060A768, &qword_1004DBB20);
  sub_10000F778(&v17, v19, &qword_10060A768, &qword_1004DBB20);
  sub_10000F778(&v16, v19, &qword_10060A770, &qword_1004DBB28);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v10 = v6;
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = *(v11 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView);
  v13 = v11;
  [v13 addSubview:v12];
  memset(v19, 0, sizeof(v19));
  sub_1002B4D34(v19);
  sub_100007214(&v18, &qword_10060A768, &qword_1004DBB20);
  sub_100007214(&v17, &qword_10060A768, &qword_1004DBB20);
  sub_100007214(&v16, &qword_10060A770, &qword_1004DBB28);

  return v13;
}

void sub_1002B4D34(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 24);
  v5 = &v1[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v11 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (*v5)
  {
    v12 = v8;
    v13 = v9;
    v14 = v6;
    v15 = v7;
  }

  else
  {
    v16 = objc_opt_self();
    v12 = v8;
    v17 = v9;
    v14 = v6;
    v15 = [v16 clearColor];
    v7 = 0;
  }

  v18 = v7;
  [v2 setBackgroundColor:v15];

  v19 = *&v2[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  [v19 setHidden:v8 == 0];
  [v19 setImage:v12];
  [v19 setTintColor:v14];
  [v19 setAlpha:v10];
  v20 = [v2 superview];
  if (!v20)
  {
    goto LABEL_16;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

  v21 = *(a1 + 16);
  v22 = v21;
  v23 = v22;
  if (!v8)
  {
    if (!v21)
    {
      goto LABEL_13;
    }

LABEL_15:
    [v2 setNeedsLayout];
    goto LABEL_16;
  }

  if (!v21)
  {
    goto LABEL_15;
  }

  sub_100009130(0, &qword_10060F560, UIImage_ptr);
  v24 = v12;
  v25 = sub_1004BCFA4();

  if ((v25 & 1) == 0 || !*(a1 + 24))
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v11 != *(a1 + 32))
  {
    goto LABEL_15;
  }

  sub_100009130(0, &unk_1006110C0, UIImageSymbolConfiguration_ptr);
  v26 = v9;
  v27 = v4;
  v28 = sub_1004BCFA4();

  if ((v28 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
}

void Artwork.Placeholder.View.init(coder:)()
{
  v1 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  sub_1004BD624();
  __break(1u);
}

id Artwork.Placeholder.View.typedConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v11 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v11;
  *(a1 + 32) = *(v3 + 32);
  v7 = v4;
  v8 = v5;
  v9 = v6;

  return v11;
}

void (*Artwork.Placeholder.View.typedConfiguration.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1E0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  *(v3 + 464) = v1;
  *(v3 + 472) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  *(v4 + 48) = *v6;
  *(v4 + 56) = v8;
  v4 += 48;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v11;
  v12 = v9;
  v13 = v10;
  v14 = v7;
  v15 = v8;
  return sub_1002B5200;
}

void sub_1002B5200(char **a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 58) + *(*a1 + 59));
  if (a2)
  {
    v4 = *(v2 + 4);
    v5 = *(v2 + 5);
    v6 = *(v2 + 3);
    v7 = v6;
    *(v2 + 19) = v4;
    *(v2 + 20) = v5;
    *(v2 + 18) = v6;
    *(v2 + 49) = *(v2 + 18);
    v8 = v2[39];
    v2[51] = v2[38];
    v10 = *(v3 + 1);
    v9 = *(v3 + 2);
    *v2 = *v3;
    *(v2 + 1) = v10;
    *(v2 + 2) = v9;
    v11 = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v35 = v3[4];
    v36 = v3[3];
    v34 = v3[5];
    v2[46] = *v2;
    v14 = *(v2 + 5);
    *(v3 + 1) = v4;
    *(v3 + 2) = v14;
    *v3 = v7;
    sub_10000F778((v2 + 49), (v2 + 57), &qword_10060A768, &qword_1004DBB20);
    sub_10000F778((v2 + 50), (v2 + 57), &qword_10060A768, &qword_1004DBB20);
    sub_10000F778((v2 + 51), (v2 + 57), &qword_10060A770, &qword_1004DBB28);
    v15 = v8;
    sub_10000F778((v2 + 49), (v2 + 57), &qword_10060A768, &qword_1004DBB20);
    sub_10000F778((v2 + 50), (v2 + 57), &qword_10060A768, &qword_1004DBB20);
    sub_10000F778((v2 + 51), (v2 + 57), &qword_10060A770, &qword_1004DBB28);
    v16 = v15;
    if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0((v2 + 36), v2))
    {
      v2[30] = v11;
      v2[31] = v12;
      v2[32] = v13;
      v2[33] = v36;
      v2[34] = v35;
      v2[35] = v34;
      sub_1002B4D34((v2 + 30));
    }

    sub_100007214((v2 + 46), &qword_10060A768, &qword_1004DBB20);
    v2[47] = v2[1];
    sub_100007214((v2 + 47), &qword_10060A768, &qword_1004DBB20);
    v17 = v2[3];
    v2[48] = v2[2];
    sub_100007214((v2 + 48), &qword_10060A770, &qword_1004DBB28);

    sub_100007214((v2 + 49), &qword_10060A768, &qword_1004DBB20);
    sub_100007214((v2 + 50), &qword_10060A768, &qword_1004DBB20);
    sub_100007214((v2 + 51), &qword_10060A770, &qword_1004DBB28);

    v18 = v2[6];
    v19 = v2[7];
    v20 = v2[8];
  }

  else
  {
    v21 = *(v2 + 4);
    *(v2 + 9) = *(v2 + 3);
    *(v2 + 10) = v21;
    v23 = *(v2 + 3);
    v22 = *(v2 + 4);
    *(v2 + 11) = *(v2 + 5);
    v24 = *v3;
    v25 = *(v3 + 2);
    *(v2 + 13) = *(v3 + 1);
    *(v2 + 14) = v25;
    *(v2 + 12) = v24;
    v26 = v3[1];
    v37 = *v3;
    v27 = v3[2];
    v28 = v3[3];
    v29 = v3[4];
    v30 = v3[5];
    v2[54] = v2[24];
    v31 = v2[21];
    v2[45] = v2[20];
    *(v2 + 55) = *(v2 + 9);
    v32 = *(v2 + 5);
    *(v3 + 1) = v22;
    *(v3 + 2) = v32;
    *v3 = v23;
    sub_10000F778((v2 + 55), (v2 + 57), &qword_10060A768, &qword_1004DBB20);
    sub_10000F778((v2 + 56), (v2 + 57), &qword_10060A768, &qword_1004DBB20);
    sub_10000F778((v2 + 45), (v2 + 57), &qword_10060A770, &qword_1004DBB28);
    v20 = v31;
    if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0((v2 + 18), (v2 + 24)))
    {
      v2[12] = v37;
      v2[13] = v26;
      v2[14] = v27;
      v2[15] = v28;
      v2[16] = v29;
      v2[17] = v30;
      sub_1002B4D34((v2 + 12));
    }

    sub_100007214((v2 + 54), &qword_10060A768, &qword_1004DBB20);
    v2[53] = v2[25];
    sub_100007214((v2 + 53), &qword_10060A768, &qword_1004DBB20);
    v33 = v2[27];
    v2[52] = v2[26];
    sub_100007214((v2 + 52), &qword_10060A770, &qword_1004DBB28);

    sub_100007214((v2 + 55), &qword_10060A768, &qword_1004DBB20);
    sub_100007214((v2 + 56), &qword_10060A768, &qword_1004DBB20);
    sub_100007214((v2 + 45), &qword_10060A770, &qword_1004DBB28);
  }

  free(v2);
}

Swift::Void __swiftcall Artwork.Placeholder.View.layoutSubviews()()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  v2 = &v0[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 2);
  v8 = v5;
  v9 = v3;
  v10 = v4;
  [v0 bounds];
  if (v11 > v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v12 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = v6 * v13;
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = [objc_opt_self() configurationWithPointSize:v16];
  v18 = [v8 configurationByApplyingConfiguration:v17];

  [v1 setPreferredSymbolConfiguration:v18];
  [v1 setContentMode:4];
  [v0 bounds];
  [v1 sizeThatFits:{v19, v20}];
  sub_1004BCD84(0.0, 0.0, v21, v22);
  [v1 setFrame:?];
}

id sub_1002B5874@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v11 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v11;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v3 + 32);
  v7 = v5;
  v8 = v6;
  v9 = v4;

  return v11;
}

void sub_1002B5900(__int128 *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = v1;
  v4 = a1[2];
  sub_1002B9688(&v2);
  v5 = v2;
  sub_100007214(&v5, &qword_10060A768, &qword_1004DBB20);
  v6 = *(&v2 + 1);
  sub_100007214(&v6, &qword_10060A768, &qword_1004DBB20);
  v7 = v3;
  sub_100007214(&v7, &qword_10060A770, &qword_1004DBB28);
}

void (*sub_1002B59A4(uint64_t **a1))(void *a1)
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
  v2[4] = Artwork.Placeholder.View.typedConfiguration.modify(v2);
  return sub_1002B1470;
}

id sub_1002B5A14@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for Artwork.Placeholder;
  a1[4] = sub_1002B9E1C();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v5 = *v4;
  v12 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  *(v3 + 16) = *v4;
  *(v3 + 24) = v12;
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;
  *(v3 + 48) = *(v4 + 32);
  v8 = v6;
  v9 = v7;
  v10 = v5;

  return v12;
}

uint64_t sub_1002B5AD0(void *a1)
{
  sub_10001342C(a1, v6);
  sub_100003ABC(&qword_10060A730, &unk_1004DBB00);
  swift_dynamicCast();
  v7 = v3;
  v8 = v4;
  v9 = v5;
  sub_1002B9688(&v7);
  v10 = v7;
  sub_100007214(&v10, &qword_10060A768, &qword_1004DBB20);
  v11 = *(&v7 + 1);
  sub_100007214(&v11, &qword_10060A768, &qword_1004DBB20);
  v12 = v8;
  sub_100007214(&v12, &qword_10060A770, &qword_1004DBB28);

  return sub_100004C6C(a1);
}

void (*sub_1002B5BC4(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x158uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[42] = v1;
  v3[21] = &type metadata for Artwork.Placeholder;
  v3[22] = sub_1002B9E1C();
  v5 = swift_allocObject();
  v4[18] = v5;
  v6 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *(v5 + 16) = *v6;
  *(v5 + 24) = v8;
  *(v5 + 32) = v9;
  *(v5 + 40) = v10;
  *(v5 + 48) = *(v6 + 32);
  v11 = v9;
  v12 = v10;
  v13 = v7;
  v14 = v8;
  return sub_1002B5CC0;
}

void sub_1002B5CC0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10001342C(v2 + 144, v2 + 184);
    sub_10001342C(v2 + 184, v2 + 224);
    sub_100003ABC(&qword_10060A730, &unk_1004DBB00);
    swift_dynamicCast();
    v3 = *(v2 + 112);
    *v2 = *(v2 + 96);
    *(v2 + 16) = v3;
    *(v2 + 32) = *(v2 + 128);
    sub_1002B9688(v2);
    *(v2 + 328) = *v2;
    sub_100007214(v2 + 328, &qword_10060A768, &qword_1004DBB20);
    *(v2 + 320) = *(v2 + 8);
    sub_100007214(v2 + 320, &qword_10060A768, &qword_1004DBB20);
    *(v2 + 312) = *(v2 + 16);
    sub_100007214(v2 + 312, &qword_10060A770, &qword_1004DBB28);

    sub_100004C6C((v2 + 184));
  }

  else
  {
    sub_10001342C(v2 + 144, v2 + 184);
    sub_100003ABC(&qword_10060A730, &unk_1004DBB00);
    swift_dynamicCast();
    v4 = *(v2 + 112);
    *(v2 + 48) = *(v2 + 96);
    *(v2 + 64) = v4;
    *(v2 + 80) = *(v2 + 128);
    sub_1002B9688((v2 + 48));
    *(v2 + 304) = *(v2 + 48);
    sub_100007214(v2 + 304, &qword_10060A768, &qword_1004DBB20);
    *(v2 + 296) = *(v2 + 56);
    sub_100007214(v2 + 296, &qword_10060A768, &qword_1004DBB20);
    *(v2 + 288) = *(v2 + 64);
    sub_100007214(v2 + 288, &qword_10060A770, &qword_1004DBB28);
  }

  sub_100004C6C((v2 + 144));

  free(v2);
}

char *sub_1002B5EA4(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  v11[0] = *v2;
  v11[1] = v3;
  v11[2] = v2[2];
  v12 = v11[0];
  v4 = *(&v3 + 1);
  v13 = v3;
  v5 = objc_allocWithZone(type metadata accessor for Artwork.Placeholder.View(a1, a2));
  sub_10000F778(&v12, v10, &qword_10060A768, &qword_1004DBB20);
  sub_10000F778(&v12 + 8, v10, &qword_10060A768, &qword_1004DBB20);
  sub_10000F778(&v13, v10, &qword_10060A770, &qword_1004DBB28);
  v6 = v4;
  v7 = Artwork.Placeholder.View.init(configuration:)(v11);
  sub_1002B9F1C(&qword_10060A808, v8, type metadata accessor for Artwork.Placeholder.View, &protocol conformance descriptor for Artwork.Placeholder.View);
  return v7;
}

id sub_1002B5F9C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v9 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v9;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v2;

  return v9;
}

BOOL sub_1002B6004(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8);
}

double sub_1002B604C(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = [v2 blackColor];
  v4 = [v3 colorWithAlphaComponent:0.1];

  v5 = [v2 whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.12];

  v7 = sub_1004BBE24();
  v8 = [objc_opt_self() _systemImageNamed:v7];

  v9 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.nowPlaying = v4;
  unk_100618CD0 = v6;
  qword_100618CD8 = v8;
  unk_100618CE0 = v9;
  result = 0.46;
  xmmword_100618CE8 = xmmword_1004D9AF0;
  return result;
}

uint64_t *Artwork.Placeholder.nowPlaying.unsafeMutableAddressor()
{
  if (qword_100609A48 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.nowPlaying;
}

id static Artwork.Placeholder.nowPlaying.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A48 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.nowPlaying;
  v2 = unk_100618CD0;
  v4 = qword_100618CD8;
  v3 = unk_100618CE0;
  v10 = unk_100618CE0;
  *a1 = static Artwork.Placeholder.nowPlaying;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618CE8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double sub_1002B626C(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = [v2 secondarySystemFillColor];
  v4 = [v2 secondaryLabelColor];
  v5 = sub_1004BBE24();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  v7 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.miniPlayer = v3;
  unk_100618D00 = v4;
  qword_100618D08 = v6;
  unk_100618D10 = v7;
  result = 0.46;
  xmmword_100618D18 = xmmword_1004D9AF0;
  return result;
}

uint64_t *Artwork.Placeholder.miniPlayer.unsafeMutableAddressor()
{
  if (qword_100609A50 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.miniPlayer;
}

id static Artwork.Placeholder.miniPlayer.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A50 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.miniPlayer;
  v2 = unk_100618D00;
  v4 = qword_100618D08;
  v3 = unk_100618D10;
  v10 = unk_100618D10;
  *a1 = static Artwork.Placeholder.miniPlayer;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618D18;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

void static Artwork.Placeholder.device(representing:basedOn:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = v6;
  v11 = [v8 _symbolImageForRoute:a1];
  v12 = v11;
  if (!v6)
  {
    v19 = qword_100609A40;
    v20 = v11;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = qword_10060A790;
    goto LABEL_12;
  }

  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 secondaryLabelColor];
  sub_100009130(0, &qword_10060DF30, UIColor_ptr);
  v17 = sub_1004BCFA4();

  if (v17)
  {

    v18 = [v13 labelColor];
LABEL_11:
    v21 = v18;
LABEL_12:
    v25 = v21;
    goto LABEL_13;
  }

  v22 = v14;
  v23 = [v13 tertiaryLabelColor];
  v24 = sub_1004BCFA4();

  if (v24)
  {

    v18 = [v13 secondaryLabelColor];
    goto LABEL_11;
  }

  v25 = v22;
  v26 = [v13 quaternaryLabelColor];
  v27 = sub_1004BCFA4();

  if (v27)
  {

    v18 = [v13 tertiaryLabelColor];
    goto LABEL_11;
  }

LABEL_13:
  v28 = *(a2 + 40);
  v29 = *(a2 + 24);
  v30 = [objc_opt_self() configurationWithHierarchicalColor:v25];
  v31 = [v29 configurationByApplyingConfiguration:v30];

  *a3 = v7;
  a3[1] = v6;
  a3[2] = v12;
  a3[3] = v31;
  a3[4] = 0x3FE0000000000000;
  a3[5] = v28;
}

id sub_1002B66D8()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_100609A40 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10060A790;
  static Artwork.Placeholder.music = v3;
  unk_100618D30 = qword_10060A790;
  qword_100618D38 = v1;
  unk_100618D40 = v2;
  xmmword_100618D48 = xmmword_1004D9B00;

  return v4;
}

uint64_t *Artwork.Placeholder.music.unsafeMutableAddressor()
{
  if (qword_100609A58 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.music;
}

id static Artwork.Placeholder.music.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A58 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.music;
  v2 = unk_100618D30;
  v4 = qword_100618D38;
  v3 = unk_100618D40;
  v10 = unk_100618D40;
  *a1 = static Artwork.Placeholder.music;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618D48;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_1002B68E8()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:5];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_100609A40 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10060A790;
  static Artwork.Placeholder.musicVideo = v3;
  unk_100618D60 = qword_10060A790;
  qword_100618D68 = v1;
  unk_100618D70 = v2;
  xmmword_100618D78 = xmmword_1004D9AE0;

  return v4;
}

uint64_t *Artwork.Placeholder.musicVideo.unsafeMutableAddressor()
{
  if (qword_100609A60 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.musicVideo;
}

id static Artwork.Placeholder.musicVideo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A60 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.musicVideo;
  v2 = unk_100618D60;
  v4 = qword_100618D68;
  v3 = unk_100618D70;
  v10 = unk_100618D70;
  *a1 = static Artwork.Placeholder.musicVideo;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618D78;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_1002B6B08()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:5];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_100609A40 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10060A790;
  static Artwork.Placeholder.tv = v3;
  unk_100618D90 = qword_10060A790;
  qword_100618D98 = v1;
  unk_100618DA0 = v2;
  xmmword_100618DA8 = xmmword_1004D9AE0;

  return v4;
}

uint64_t *Artwork.Placeholder.tv.unsafeMutableAddressor()
{
  if (qword_100609A68 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.tv;
}

id static Artwork.Placeholder.tv.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A68 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.tv;
  v2 = unk_100618D90;
  v4 = qword_100618D98;
  v3 = unk_100618DA0;
  v10 = unk_100618DA0;
  *a1 = static Artwork.Placeholder.tv;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618DA8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_1002B6D10()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:4];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_100609A40 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10060A790;
  static Artwork.Placeholder.microphone = v3;
  unk_100618DC0 = qword_10060A790;
  qword_100618DC8 = v1;
  unk_100618DD0 = v2;
  xmmword_100618DD8 = xmmword_1004D9AF0;

  return v4;
}

uint64_t *Artwork.Placeholder.microphone.unsafeMutableAddressor()
{
  if (qword_100609A70 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.microphone;
}

id static Artwork.Placeholder.microphone.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A70 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.microphone;
  v2 = unk_100618DC0;
  v4 = qword_100618DC8;
  v3 = unk_100618DD0;
  v10 = unk_100618DD0;
  *a1 = static Artwork.Placeholder.microphone;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618DD8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_1002B6F28()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_100609A40 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10060A790;
  static Artwork.Placeholder.person = v3;
  unk_100618DF0 = qword_10060A790;
  qword_100618DF8 = v1;
  unk_100618E00 = v2;
  xmmword_100618E08 = xmmword_1004D9AE0;

  return v4;
}

uint64_t *Artwork.Placeholder.person.unsafeMutableAddressor()
{
  if (qword_100609A78 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.person;
}

id static Artwork.Placeholder.person.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A78 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.person;
  v2 = unk_100618DF0;
  v4 = qword_100618DF8;
  v3 = unk_100618E00;
  v10 = unk_100618E00;
  *a1 = static Artwork.Placeholder.person;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618E08;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double sub_1002B7144()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.newPlaylist = [objc_opt_self() secondarySystemFillColor];
  unk_100618E20 = 0;
  qword_100618E28 = v1;
  unk_100618E30 = v2;
  result = 0.5;
  xmmword_100618E38 = xmmword_1004D9AE0;
  return result;
}

uint64_t *Artwork.Placeholder.newPlaylist.unsafeMutableAddressor()
{
  if (qword_100609A80 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.newPlaylist;
}

id static Artwork.Placeholder.newPlaylist.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A80 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.newPlaylist;
  v2 = unk_100618E20;
  v4 = qword_100618E28;
  v3 = unk_100618E30;
  v10 = unk_100618E30;
  *a1 = static Artwork.Placeholder.newPlaylist;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618E38;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double static Artwork.Placeholder.playlist(ofType:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100003ABC(&qword_10060A7B8, &qword_1004DBB60);
  __chkstk_darwin();
  v5 = v14 - v4;
  v6 = sub_1004BB914();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MPModelPlaylistType.variant.getter(a1, v5);
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    (*(v7 + 104))(v9, enum case for Playlist.Variant.regular(_:), v6);
    if (v10(v5, 1, v6) != 1)
    {
      sub_100007214(v5, &qword_10060A7B8, &qword_1004DBB60);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  v11 = sub_1002B9850(v9, v14);
  (*(v7 + 8))(v9, v6, v11);
  v12 = v14[1];
  *a2 = v14[0];
  a2[1] = v12;
  result = *&v15;
  a2[2] = v15;
  return result;
}

double static Artwork.Placeholder.playlist(withVariant:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1002B9850(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

id sub_1002B7528()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:4];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_100609A40 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10060A790;
  static Artwork.Placeholder.radio = v3;
  unk_100618E50 = qword_10060A790;
  qword_100618E58 = v1;
  unk_100618E60 = v2;
  xmmword_100618E68 = xmmword_1004D9B00;

  return v4;
}

uint64_t *Artwork.Placeholder.radio.unsafeMutableAddressor()
{
  if (qword_100609A88 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.radio;
}

id static Artwork.Placeholder.radio.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A88 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.radio;
  v2 = unk_100618E50;
  v4 = qword_100618E58;
  v3 = unk_100618E60;
  v10 = unk_100618E60;
  *a1 = static Artwork.Placeholder.radio;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618E68;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

__n128 Artwork.Placeholder.withSolidBackgroundColor()@<Q0>(__n128 *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v22 = *(v2 + 32);
  if (*v2)
  {
    v8 = objc_opt_self();
    v9 = v6;
    v10 = v7;
    v11 = v4;
    v12 = v5;
    v13 = [v8 secondarySystemFillColor];
    sub_100009130(0, &qword_10060DF30, UIColor_ptr);
    v14 = sub_1004BCFA4();

    if (v14)
    {
      if (qword_100609A90 != -1)
      {
        swift_once();
      }

      v15 = qword_10060A798;
LABEL_11:
      v4 = v15;

      goto LABEL_12;
    }

    v19 = [v8 tertiarySystemFillColor];
    v20 = sub_1004BCFA4();

    if (v20)
    {
      if (qword_100609A98 != -1)
      {
        swift_once();
      }

      v15 = qword_10060A7A0;
      goto LABEL_11;
    }
  }

  else
  {
    v16 = v6;
    v17 = v7;
    v18 = v5;
  }

LABEL_12:
  a2->n128_u64[0] = v4;
  a2->n128_u64[1] = v5;
  a2[1].n128_u64[0] = v6;
  a2[1].n128_u64[1] = v7;
  result = v22;
  a2[2] = v22;
  return result;
}

id Artwork.Placeholder.withBackground(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(v2 + 8);
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = *(v2 + 32);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return a1;
}

id Artwork.Placeholder.withScaleFactor(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 40);
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 8);
  v11 = *v2;
  *a1 = *v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = a2;
  *(a1 + 40) = v3;
  v7 = v4;
  v8 = v5;
  v9 = v6;

  return v11;
}

id Artwork.Placeholder.withTint(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *v2;
  *a2 = *v2;
  *(a2 + 8) = a1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = *(v2 + 32);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return a1;
}

void sub_1002B7A78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(UIColor);
  v10[4] = a2;
  v10[5] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100399BF8;
  v10[3] = a3;
  v8 = _Block_copy(v10);
  v9 = [v7 initWithDynamicProvider:v8];
  _Block_release(v8);

  *a4 = v9;
}

id sub_1002B7B4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 userInterfaceStyle];
  sub_100009130(0, &qword_10060DF30, UIColor_ptr);
  if (v9 == 2)
  {
    v10 = a2;
    v11 = a2;
    v12 = a3;
  }

  else
  {
    v10 = a4;
    v11 = a4;
    v12 = a5;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v10, v11, v12, 1.0);
}

double sub_1002B7D20()
{
  sub_100003ABC(&qword_10060F580, &qword_1004E2FE0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004C50A0;
  *(v1 + 32) = sub_1004BBE64();
  *(v1 + 40) = v2;
  isa = sub_1004BC284().super.isa;

  v4 = objc_opt_self();
  v5 = [v4 propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v5];
  v6 = 1.0;
  if (isa)
  {
    if ([v0 hasVideo])
    {
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1004C50A0;
      *(v7 + 32) = sub_1004BBE64();
      *(v7 + 40) = v8;
      v9 = sub_1004BC284().super.isa;

      v10 = [v4 propertySetWithProperties:v9];

      v11 = [v0 hasLoadedValuesForPropertySet:v10];
      if (!v11)
      {
        return 1.77777778;
      }

      v12 = [v0 artworkCatalog];
      if (!v12)
      {
        return 1.77777778;
      }

      v13 = v12;
      v14 = COERCE_DOUBLE(MPArtworkCatalog.expectedRatio.getter());
      v16 = v15;

      if (v16)
      {
        return 1.77777778;
      }

      v6 = 0.5625;
      if (v14 >= 1.0)
      {
        return 1.77777778;
      }
    }
  }

  return v6;
}

id MPModelPlaylist.artworkPlaceholderImage.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    v1 = [v0 type];

    return sub_1002B9BA8(v1, 0);
  }

  else
  {
    v3 = sub_1004BBE24();
    v4 = [objc_opt_self() _systemImageNamed:v3];

    return v4;
  }
}

void MPModelObject.artworkPlaceholder.getter(void *a1@<X8>)
{
  sub_100003ABC(&qword_10060A7B8, &qword_1004DBB60);
  __chkstk_darwin();
  v3 = v26 - v2;
  v4 = sub_1004BB914();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      if ([v11 hasLoadedValueForKey:MPModelPropertyPlaylistType])
      {
        MPModelPlaylistType.variant.getter([v12 type], v3);
        v13 = *(v5 + 48);
        if (v13(v3, 1, v4) == 1)
        {
          (*(v5 + 104))(v7, enum case for Playlist.Variant.regular(_:), v4);
          if (v13(v3, 1, v4) != 1)
          {
            sub_100007214(v3, &qword_10060A7B8, &qword_1004DBB60);
          }
        }

        else
        {
          (*(v5 + 32))(v7, v3, v4);
        }

        v15 = sub_1002B9850(v7, v26);
        (*(v5 + 8))(v7, v4, v15);
        goto LABEL_17;
      }
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        if (qword_100609A70 != -1)
        {
          swift_once();
        }

        v14 = &static Artwork.Placeholder.microphone;
        goto LABEL_32;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (qword_100609A78 != -1)
        {
          swift_once();
        }

        v14 = &static Artwork.Placeholder.person;
        goto LABEL_32;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        if (qword_100609A68 != -1)
        {
          swift_once();
        }

        v14 = &static Artwork.Placeholder.tv;
        goto LABEL_32;
      }
    }

LABEL_29:
    if (qword_100609A58 != -1)
    {
      swift_once();
    }

    v14 = &static Artwork.Placeholder.music;
LABEL_32:
    v20 = *v14;
    v21 = v14[1];
    v19 = v14[2];
    v22 = v14[3];
    v16 = v14[4];
    v17 = v14[5];
    v23 = v19;
    v18 = v22;
    v24 = v20;
    v25 = v21;
    goto LABEL_33;
  }

  v9 = [v8 anyObject];
  if (!v9)
  {
    goto LABEL_29;
  }

  v10 = v9;
  MPModelObject.artworkPlaceholder.getter(v26);

LABEL_17:
  v16 = v26[4];
  v17 = v26[5];
  v19 = v26[2];
  v18 = v26[3];
  v20 = v26[0];
  v21 = v26[1];
LABEL_33:
  *a1 = v20;
  a1[1] = v21;
  a1[2] = v19;
  a1[3] = v18;
  a1[4] = v16;
  a1[5] = v17;
}

id MusicItem.artworkPlaceholder.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v129 = a2;
  v92 = sub_1004BB744();
  v89 = *(v92 - 8);
  __chkstk_darwin();
  v91 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1004B7A34();
  v90 = *(v95 - 8);
  __chkstk_darwin();
  v94 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1004B7C94();
  v93 = *(v98 - 8);
  __chkstk_darwin();
  v97 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1004B7CF4();
  v96 = *(v101 - 8);
  __chkstk_darwin();
  v100 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1004B7C34();
  v99 = *(v105 - 8);
  __chkstk_darwin();
  v104 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1004BB904();
  v103 = *(v110 - 8);
  __chkstk_darwin();
  v109 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060A7B8, &qword_1004DBB60);
  __chkstk_darwin();
  v108 = &v88 - v9;
  v116 = sub_1004BB914();
  v115 = *(v116 - 8);
  __chkstk_darwin();
  v102 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v88 - v11;
  v114 = sub_1004BBA84();
  v106 = *(v114 - 8);
  __chkstk_darwin();
  v113 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v88 - v13;
  v119 = sub_1004BAD04();
  v112 = *(v119 - 8);
  __chkstk_darwin();
  v118 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1004B7B14();
  v117 = *(v122 - 8);
  __chkstk_darwin();
  v121 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1004BB6F4();
  v120 = *(v125 - 8);
  __chkstk_darwin();
  v124 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004B7C44();
  v123 = *(v17 - 8);
  __chkstk_darwin();
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004BB204();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1004BB564();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin();
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v31;
  (*(v31 + 16))(v30, v126, a1, v28);
  if (swift_dynamicCast())
  {
    (*(v25 + 8))(v27, v24);
    v32 = a1;
LABEL_5:
    (*(v128 + 8))(v30, v32);
    if (qword_100609A70 != -1)
    {
      swift_once();
    }

    v33 = &static Artwork.Placeholder.microphone;
    goto LABEL_18;
  }

  v32 = a1;
  if (swift_dynamicCast())
  {
    (*(v21 + 8))(v23, v20);
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    (*(v123 + 8))(v19, v17);
  }

  else
  {
    v35 = v124;
    v34 = v125;
    if (swift_dynamicCast())
    {
      v36 = v120;
    }

    else
    {
      v35 = v121;
      v34 = v122;
      if (!swift_dynamicCast())
      {
        v48 = v118;
        v47 = v119;
        if (swift_dynamicCast())
        {
          v49 = v30;
          if (qword_100609A60 != -1)
          {
            swift_once();
          }

          v37 = static Artwork.Placeholder.musicVideo;
          v38 = unk_100618D60;
          v40 = qword_100618D68;
          v50 = unk_100618D70;
          v126 = xmmword_100618D78;
          v51 = *(v112 + 8);
          v52 = static Artwork.Placeholder.musicVideo;
          v53 = v38;
          v54 = v40;
          v42 = v50;
          v51(v48, v47);
          result = (*(v128 + 8))(v49, v32);
          goto LABEL_19;
        }

        v55 = v111;
        v56 = v114;
        if (swift_dynamicCast())
        {
          v57 = v106;
          (*(v106 + 32))(v113, v55, v56);
          v58 = v108;
          sub_1004BB934();
          v59 = v115;
          v60 = *(v115 + 48);
          v61 = v116;
          if (v60(v58, 1, v116) == 1)
          {
            v62 = v107;
            (*(v59 + 104))(v107, enum case for Playlist.Variant.regular(_:), v61);
            if (v60(v58, 1, v61) != 1)
            {
              sub_100007214(v58, &qword_10060A7B8, &qword_1004DBB60);
            }
          }

          else
          {
            v62 = v107;
            (*(v59 + 32))(v107, v58, v61);
          }

          v70 = sub_1002B9850(v62, v130);
          (*(v59 + 8))(v62, v61, v70);
          (*(v57 + 8))(v113, v56);
        }

        else
        {
          v63 = v109;
          v64 = v110;
          v65 = swift_dynamicCast();
          v66 = v116;
          v67 = v115;
          if (!v65)
          {
            v71 = v104;
            v72 = v105;
            if (swift_dynamicCast())
            {
              v73 = v130;
            }

            else
            {
              v71 = v100;
              v72 = v101;
              if (swift_dynamicCast())
              {
                v73 = &v127;
              }

              else
              {
                v71 = v97;
                v72 = v98;
                if (swift_dynamicCast())
                {
                  v73 = &v125;
                }

                else
                {
                  v71 = v94;
                  v72 = v95;
                  if (!swift_dynamicCast())
                  {
                    v74 = v91;
                    v75 = v92;
                    if (swift_dynamicCast())
                    {
                      v76 = v30;
                      if (qword_100609A88 != -1)
                      {
                        swift_once();
                      }

                      v37 = static Artwork.Placeholder.radio;
                      v38 = unk_100618E50;
                      v40 = qword_100618E58;
                      v77 = unk_100618E60;
                      v126 = xmmword_100618E68;
                      v78 = *(v89 + 8);
                      v79 = static Artwork.Placeholder.radio;
                      v80 = v38;
                      v81 = v40;
                      v42 = v77;
                      v78(v74, v75);
                      result = (*(v128 + 8))(v76, v32);
                    }

                    else
                    {
                      v82 = v30;
                      if (qword_100609A58 != -1)
                      {
                        swift_once();
                      }

                      v37 = static Artwork.Placeholder.music;
                      v38 = unk_100618D30;
                      v40 = qword_100618D38;
                      v83 = unk_100618D40;
                      v126 = xmmword_100618D48;
                      v84 = *(v128 + 8);
                      v85 = static Artwork.Placeholder.music;
                      v86 = v38;
                      v87 = v40;
                      v42 = v83;
                      result = v84(v82, v32);
                    }

                    goto LABEL_19;
                  }

                  v73 = &v122;
                }
              }
            }

            (*(*(v73 - 32) + 8))(v71, v72);
            (*(v128 + 8))(v30, v32);
            if (qword_100609A68 != -1)
            {
              swift_once();
            }

            v33 = &static Artwork.Placeholder.tv;
            goto LABEL_18;
          }

          v68 = v102;
          (*(v115 + 104))(v102, enum case for Playlist.Variant.folder(_:), v116);
          v69 = sub_1002B9850(v68, v130);
          (*(v67 + 8))(v68, v66, v69);
          (*(v103 + 8))(v63, v64);
        }

        result = (*(v128 + 8))(v30, v32);
        v45 = v131;
        v40 = v130[2];
        v42 = v130[3];
        v37 = v130[0];
        v38 = v130[1];
        goto LABEL_20;
      }

      v36 = v117;
    }

    (*(v36 + 8))(v35, v34);
  }

  (*(v128 + 8))(v30, v32);
  if (qword_100609A78 != -1)
  {
    swift_once();
  }

  v33 = &static Artwork.Placeholder.person;
LABEL_18:
  v37 = *v33;
  v38 = v33[1];
  v40 = v33[2];
  v39 = v33[3];
  v126 = *(v33 + 2);
  v41 = v40;
  v42 = v39;
  v43 = v37;
  result = v38;
LABEL_19:
  v45 = v126;
LABEL_20:
  v46 = v129;
  *v129 = v37;
  v46[1] = v38;
  v46[2] = v40;
  v46[3] = v42;
  *(v46 + 2) = v45;
  return result;
}

BOOL _s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_100009130(0, &qword_10060DF30, UIColor_ptr);
    v6 = v5;
    v7 = v4;
    v8 = sub_1004BCFA4();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_100009130(0, &qword_10060DF30, UIColor_ptr);
    v11 = v10;
    v12 = v9;
    v13 = sub_1004BCFA4();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    sub_100009130(0, &qword_10060F560, UIImage_ptr);
    v16 = v15;
    v17 = v14;
    v18 = sub_1004BCFA4();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  sub_100009130(0, &unk_1006111F0, NSObject_ptr);
  if ((sub_1004BCFA4() & 1) != 0 && *(a1 + 32) == *(a2 + 32))
  {
    return *(a1 + 40) == *(a2 + 40);
  }

  return 0;
}

void sub_1002B9688(uint64_t *a1)
{
  v3 = (v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v20 = *v3;
  v21 = v4;
  v22 = v3[2];
  v5 = *(v3 + 1);
  v15 = *v3;
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v25 = v20;
  v8 = *a1;
  v17 = a1[1];
  v18 = v8;
  v9 = a1[3];
  v10 = *(v3 + 4);
  v11 = *(v3 + 5);
  v16 = a1[2];
  v12 = *(a1 + 1);
  *v3 = *a1;
  v3[1] = v12;
  v3[2] = *(a1 + 2);
  sub_10000F778(&v18, v19, &qword_10060A768, &qword_1004DBB20);
  sub_10000F778(&v17, v19, &qword_10060A768, &qword_1004DBB20);
  sub_10000F778(&v16, v19, &qword_10060A770, &qword_1004DBB28);
  v13 = v9;
  if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(a1, &v20))
  {
    v19[0] = v15;
    v19[1] = v5;
    v19[2] = v6;
    v19[3] = v7;
    v19[4] = v10;
    v19[5] = v11;
    sub_1002B4D34(v19);
  }

  sub_100007214(&v25, &qword_10060A768, &qword_1004DBB20);
  v24 = *(&v20 + 1);
  sub_100007214(&v24, &qword_10060A768, &qword_1004DBB20);
  v14 = *(&v21 + 1);
  v23 = v21;
  sub_100007214(&v23, &qword_10060A770, &qword_1004DBB28);
}

uint64_t sub_1002B9838(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1002B9850@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004BB914();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = v20 - v9;
  v11 = enum case for Playlist.Variant.folder(_:);
  (*(v5 + 104))(v20 - v9, enum case for Playlist.Variant.folder(_:), v4, v8);
  sub_1002B9F1C(&qword_10060A878, 255, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
  sub_1004BC244();
  sub_1004BC244();
  v12 = *(v5 + 8);
  v12(v10, v4);
  v13 = 0;
  if (v20[1] != v20[0])
  {
    if (qword_100609A40 != -1)
    {
      swift_once();
    }

    v13 = qword_10060A790;
    v14 = qword_10060A790;
  }

  (*(v5 + 16))(v7, a1, v4);
  v15 = (*(v5 + 88))(v7, v4);
  if (v15 != enum case for Playlist.Variant.smart(_:) && v15 != enum case for Playlist.Variant.genius(_:) && v15 != v11)
  {
    v12(v7, v4);
  }

  v16 = sub_1004BBE24();

  v17 = [objc_opt_self() _systemImageNamed:v16];

  v18 = [objc_opt_self() configurationWithWeight:3];
  *a2 = [objc_opt_self() secondarySystemFillColor];
  *(a2 + 8) = v13;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  result = 0.4;
  *(a2 + 32) = xmmword_1004D9B00;
  return result;
}

id sub_1002B9BA8(uint64_t a1, char a2)
{
  v2 = sub_1004BBE24();
  v3 = [objc_opt_self() _systemImageNamed:v2];

  return v3;
}

unint64_t sub_1002B9C80()
{
  result = qword_10060A7C0;
  if (!qword_10060A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060A7C0);
  }

  return result;
}

uint64_t sub_1002B9CD4(uint64_t a1, uint64_t a2)
{
  result = sub_1002B9F1C(&qword_10060A808, a2, type metadata accessor for Artwork.Placeholder.View, &protocol conformance descriptor for Artwork.Placeholder.View);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002B9D98(uint64_t a1)
{
  *(a1 + 8) = sub_1002B9DC8();
  result = sub_1002B9E1C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1002B9DC8()
{
  result = qword_10060A840;
  if (!qword_10060A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060A840);
  }

  return result;
}

unint64_t sub_1002B9E1C()
{
  result = qword_10060A848;
  if (!qword_10060A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060A848);
  }

  return result;
}

uint64_t sub_1002B9E70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1002B9EB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002B9F1C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

__n128 CAPackageDefinition.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
  result = *(v1 + 56);
  *(a1 + 32) = result;
  return result;
}

__n128 NowPlaying.TrackTitleStackView.Label.Attributes.marquee.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  result = *(a1 + 32);
  *(v1 + 56) = result;
  return result;
}

uint64_t CAPackageDefinition.size.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 80) = result;
  *(v3 + 88) = a2;
  *(v3 + 96) = a3 & 1;
  return result;
}

__n128 CAPackageDefinition.init(name:bundle:transform:states:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a4 + 16);
  *(a6 + 24) = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 40) = v6;
  result = *(a4 + 32);
  *(a6 + 56) = result;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 72) = a5;
  *(a6 + 96) = 1;
  return result;
}

double CAPackageDefinition.scaled(byX:y:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v21 = *v3;
  v22 = *(v3 + 16);
  v20[0] = *(v3 + 72);
  *(v20 + 9) = *(v3 + 81);
  v13 = *(v3 + 40);
  v15 = *(v3 + 24);
  CGAffineTransformMakeScale(&t1, a2, a3);
  v7 = *&t1.a;
  v8 = *&t1.c;
  v9 = *&t1.tx;
  *&t1.a = v15;
  *&t1.c = v13;
  t1.tx = v5;
  t1.ty = v6;
  *&t2.a = v7;
  *&t2.c = v8;
  *&t2.tx = v9;
  CGAffineTransformConcat(&v18, &t1, &t2);
  tx = v18.tx;
  ty = v18.ty;
  v14 = *&v18.c;
  v16 = *&v18.a;
  sub_1002BA0E0(v3, &t1);
  *a1 = v21;
  *(a1 + 16) = v22;
  *(a1 + 40) = v14;
  *(a1 + 24) = v16;
  *(a1 + 56) = tx;
  *(a1 + 64) = ty;
  *(a1 + 72) = v20[0];
  result = *(v20 + 9);
  *(a1 + 81) = *(v20 + 9);
  return result;
}

__n128 CAPackageDefinition.with(size:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, __n128 *a4@<X8>)
{
  v8 = v4[3];
  v16 = v4[2];
  v17 = v8;
  v18 = v4[4];
  v9 = v4[1];
  v14 = *v4;
  v15 = v9;
  v10 = a3 & 1;
  v13[0] = a3 & 1;
  sub_1002BA0E0(v4, v13);
  v11 = v17;
  a4[2] = v16;
  a4[3] = v11;
  a4[4] = v18;
  result = v15;
  *a4 = v14;
  a4[1] = result;
  a4[5].n128_u64[0] = a1;
  a4[5].n128_u64[1] = a2;
  a4[6].n128_u8[0] = v10;
  return result;
}

uint64_t sub_1002BA1AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t sub_1002BA218(uint64_t a1, uint64_t a2)
{
  _s16PackageDataCacheCMa(0, a2);
  swift_allocObject();
  result = sub_1002BA8B0();
  qword_10060A880 = result;
  return result;
}

double sub_1002BA258(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1004BA8F4();
  v23 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1004BA924();
  v13 = *(v22 - 8);
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + 24);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  v17[6] = a2;
  aBlock[4] = sub_1002BB5E8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005BF2C8;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  sub_10003E428(a1, a2);
  sub_1004BA914();
  v24 = _swiftEmptyArrayStorage;
  sub_1002BB66C(&qword_10060A738, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003ABC(&qword_10060A740, &unk_1004E6630);
  sub_1000F96D4(&qword_10060A748, &qword_10060A740, &unk_1004E6630);
  sub_1004BD2D4();
  sub_1004BCB54();
  _Block_release(v18);

  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);

  return result;
}

uint64_t sub_1002BA54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();

  sub_10003E428(a4, a5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1002BB1D4(a4, a5, a2, a3, isUniquelyReferenced_nonNull_native, v11);

  *(a1 + 16) = v13;
  return swift_endAccess();
}

void sub_1002BA608(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13 = xmmword_1004D9B10;
  v6 = *(v3 + 24);
  v7 = swift_allocObject();
  v7[2] = &v13;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1002BB650;
  *(v8 + 24) = v7;
  v12[4] = sub_1000E6038;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100008224;
  v12[3] = &unk_1005BF340;
  v9 = _Block_copy(v12);
  v10 = v6;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;
    sub_10003F3CC(v13, *(&v13 + 1));
    sub_100004D7C(v11, *(&v11 + 1));
  }
}

uint64_t sub_1002BA7B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (*(v8 + 16))
  {

    v9 = sub_1003740CC(a3, a4);
    if (v10)
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v12 = *v11;
      v13 = v11[1];
      sub_10003E428(*v11, v13);
    }

    else
    {
      v12 = 0;
      v13 = 0xF000000000000000;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = *a1;
  v15 = a1[1];
  *a1 = v12;
  a1[1] = v13;
  return sub_100004D7C(v14, v15);
}

uint64_t sub_1002BA870()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002BA8B0()
{
  v10 = sub_1004BCB34();
  v1 = *(v10 - 8);
  __chkstk_darwin();
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BCAF4();
  __chkstk_darwin();
  sub_1004BA924();
  __chkstk_darwin();
  *(v0 + 16) = sub_1002CF908(_swiftEmptyArrayStorage);
  v4 = sub_100009130(0, &qword_10060E4F0, OS_dispatch_queue_ptr);
  v8[1] = "AF216PackageDataCache";
  v8[2] = v4;
  sub_1004BA914();
  v11 = _swiftEmptyArrayStorage;
  sub_1002BB66C(&qword_10060A970, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003ABC(&qword_10060A978, &unk_1004DBD50);
  sub_1000F96D4(&qword_10060A980, &qword_10060A978, &unk_1004DBD50);
  sub_1004BD2D4();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  v5 = sub_1004BCB74();
  v6 = v9;
  *(v9 + 24) = v5;
  return v6;
}

id CAPackage.init(definition:)(uint64_t a1, uint64_t a2)
{
  v41 = sub_1004B6B04();
  v4 = *(v41 - 8);
  __chkstk_darwin();
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v38 - v7;
  if (qword_100609AA0 != -1)
  {
    swift_once();
  }

  v42 = v2;
  v9 = qword_10060A880;
  v11 = *a1;
  v10 = *(a1 + 8);
  sub_1002BA608(*a1, v10);
  if (v13 >> 60 == 15)
  {
    v39 = v4;
    v14 = *(a1 + 16);
    v40 = a1;
    v15 = v14;
    v16 = sub_1004BBE24();
    v17 = sub_1004BBE24();
    v18 = [v15 URLForResource:v16 withExtension:v17];

    if (!v18)
    {
      [objc_allocWithZone(NSError) initWithDomain:NSURLErrorDomain code:-1002 userInfo:0];
      swift_willThrow();
      sub_1002BB46C(v40);

      return v9;
    }

    sub_1004B6A94();

    v19 = v39;
    v20 = v41;
    (*(v39 + 32))(v8, v6, v41);
    v21 = v42;
    v22 = sub_1004B6B24();
    if (v21)
    {
      (*(v19 + 8))(v8, v20);

      v24 = v40;
LABEL_12:
      sub_1002BB46C(v24);
      return v9;
    }

    v31 = v22;
    v42 = 0;
    v32 = v23;
    sub_1002BA258(v22, v23, v11, v10);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = v32;
    isa = sub_1004B6B64().super.isa;
    v43 = 0;
    v9 = [ObjCClassFromMetadata packageWithData:isa type:kCAPackageTypeArchive options:0 error:&v43];

    if (!v9)
    {
      v9 = v43;
      sub_1004B69B4();

      swift_willThrow();
      sub_100004D90(v31, v34);
      sub_1002BB46C(v40);
      (*(v39 + 8))(v8, v20);
      return v9;
    }

    v36 = *(v39 + 8);
    v37 = v43;
    v36(v8, v20);

    sub_100004D90(v31, v34);
    a1 = v40;
  }

  else
  {
    v25 = v12;
    v26 = v13;
    v27 = swift_getObjCClassFromMetadata();
    v28 = sub_1004B6B64().super.isa;
    v43 = 0;
    v9 = [v27 packageWithData:v28 type:kCAPackageTypeArchive options:0 error:&v43];

    if (!v9)
    {
      v9 = v43;
      sub_1004B69B4();

      swift_willThrow();
      sub_100004D7C(v25, v26);
      v24 = a1;
      goto LABEL_12;
    }

    v29 = v43;
    sub_100004D7C(v25, v26);
  }

  sub_1002BB46C(a1);
  return v9;
}

id sub_1002BB03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_100609A20 != -1)
  {
    v7 = a1;
    v8 = a2;
    v9 = a4;
    v10 = a3;
    swift_once();
    a1 = v7;
    a2 = v8;
    a3 = v10;
    a4 = v9;
  }

  v5 = qword_100618C60;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v5;
  *(a4 + 24) = 0x3FF0000000000000;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0x3FF0000000000000;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = a3;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 1;

  return v5;
}

id static CAPackageDefinition.skipBackward.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v6 = qword_100618C60;
  CGAffineTransformMakeScale(&v7, -1.0, 1.0);
  v2 = *&v7.a;
  v3 = *&v7.c;
  v4 = *&v7.tx;
  *a1 = 0x4264726177726F46;
  *(a1 + 8) = 0xEF647261776B6361;
  *(a1 + 16) = v6;
  *(a1 + 24) = v2;
  *(a1 + 40) = v3;
  *(a1 + 56) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = &off_1005BE2E8;
  *(a1 + 96) = 1;

  return v6;
}

void sub_1002BB1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_1003740CC(a3, a4);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 < v19 || (a5 & 1) != 0)
    {
      sub_1003744D4(v19, a5 & 1);
      v14 = sub_1003740CC(a3, a4);
      if ((v20 & 1) != (v23 & 1))
      {
LABEL_18:
        sub_1004BDAA4();
        __break(1u);
        return;
      }
    }

    else
    {
      v22 = v14;
      sub_100374E44();
      v14 = v22;
    }
  }

  v24 = *v7;
  if (v20)
  {
    v25 = (v24[7] + 16 * v14);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    sub_100004D90(v26, v27);
    return;
  }

  v24[(v14 >> 6) + 8] |= 1 << v14;
  v28 = (v24[6] + 16 * v14);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v14);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v18 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v4 || (sub_1004BD9C4() & 1) != 0)
  {
    sub_100009130(0, &unk_1006111F0, NSObject_ptr);
    if (sub_1004BCFA4() & 1) != 0 && (sub_1004BCA84() & 1) != 0 && (sub_1003296E8(*(a1 + 9), *(a2 + 72)))
    {
      if (a1[12])
      {
        if (*(a2 + 96))
        {
          return 1;
        }
      }

      else if ((*(a2 + 96) & 1) == 0 && a1[10] == *(a2 + 80) && a1[11] == *(a2 + 88))
      {
        return 1;
      }
    }
  }

  return 0;
}

__n128 sub_1002BB49C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1002BB4C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1002BB510(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002BB5A0()
{

  sub_100004D90(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1002BB5F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002BB610()
{

  return swift_deallocObject();
}

uint64_t sub_1002BB66C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id CoreAnimationPackageView.init(definition:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController] = 0;
  v4 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  v5 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v5;
  v4[96] = *(a1 + 96);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v7 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v7;
  v8 = sub_1002BA0E0(a1, v13);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for CoreAnimationPackageView(v8, v9);
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1002BBF80();
  CoreAnimationPackageView.reset()();
  sub_100009130(0, &unk_1006110B0, UITraitCollection_ptr);
  sub_1004BCB94();
  sub_1004BCF24();
  swift_unknownObjectRelease();

  sub_1002BB46C(a1);

  return v10;
}

double sub_1002BB8CC(uint64_t *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  swift_beginAccess();
  v5 = *(v4 + 5);
  *&v27[48] = *(v4 + 4);
  v28 = v5;
  v29 = v4[96];
  v6 = *(v4 + 1);
  v26 = *v4;
  *v27 = v6;
  v7 = *(v4 + 3);
  *&v27[16] = *(v4 + 2);
  *&v27[32] = v7;
  v8 = *a1;
  v9 = a1[1];
  if (v26 == *a1 || (sub_1004BD9C4() & 1) != 0)
  {
    sub_100009130(0, &unk_1006111F0, NSObject_ptr);
    sub_1002BA0E0(&v26, v16);
    if (sub_1004BCFA4() & 1) != 0 && (v16[0] = *&v27[8], v16[1] = *&v27[24], v16[2] = *&v27[40], v10 = *(a1 + 5), v20 = *(a1 + 3), v21 = v10, v22 = *(a1 + 7), (sub_1004BCA84()))
    {
      v11 = sub_1003296E8(*&v27[56], a1[9]);
      sub_1002BB46C(&v26);
      if (v11)
      {
        if (v29)
        {
          if (a1[12])
          {
            return result;
          }
        }

        else if ((a1[12] & 1) == 0 && *&v28 == *(a1 + 10))
        {
          result = *(&v28 + 1);
          if (*(&v28 + 1) == *(a1 + 11))
          {
            return result;
          }
        }
      }
    }

    else
    {
      sub_1002BB46C(&v26);
    }
  }

  v13 = *v4 == *&v8 && *(v4 + 1) == v9;
  if (!v13 && (sub_1004BD9C4() & 1) == 0)
  {
    sub_1002BBF80();
  }

  v14 = *(v4 + 40);
  v23 = *(v4 + 24);
  v24 = v14;
  v25 = *(v4 + 56);
  v15 = *(a1 + 5);
  v17 = *(a1 + 3);
  v18 = v15;
  v19 = *(a1 + 7);
  if ((sub_1004BCA84() & 1) == 0)
  {
    [v2 setNeedsLayout];
  }

  CoreAnimationPackageView.reset()();
  return result;
}

__n128 CoreAnimationPackageView.definition.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  sub_1002BA0E0(&v11, &v10);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t CoreAnimationPackageView.definition.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v5;
  v6 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v6;
  v18[0] = v12[0];
  v18[1] = v5;
  v18[2] = v13;
  v18[3] = v6;
  v18[4] = v15;
  v18[5] = v4;
  v19 = v17;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_1002BA0E0(v12, v11);
  sub_1002BA0E0(a1, v11);
  sub_1002BB46C(v18);
  sub_1002BB8CC(v12);
  sub_1002BB46C(v12);
  return sub_1002BB46C(a1);
}

void (*CoreAnimationPackageView.definition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 312);
  *(v3 + 856) = v1;
  v6 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  *(v3 + 864) = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  *(v4 + 16) = v7[1];
  *(v4 + 32) = v9;
  *v4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  *(v4 + 96) = *(v7 + 96);
  *(v4 + 64) = v11;
  *(v4 + 80) = v12;
  *(v4 + 48) = v10;
  v14 = v7[4];
  v13 = v7[5];
  v15 = v7[3];
  *(v4 + 408) = *(v7 + 96);
  v5[4] = v14;
  v5[5] = v13;
  v5[3] = v15;
  v16 = *v7;
  v17 = v7[2];
  v5[1] = v7[1];
  v5[2] = v17;
  *v5 = v16;
  sub_1002BA0E0(v4, v4 + 416);
  return sub_1002BBD44;
}

void sub_1002BBD44(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  v4 = *a1 + 520;
  v5 = (*(v2 + 856) + *(v2 + 864));
  v6 = *(*a1 + 328);
  if (a2)
  {
    *(v2 + 624) = *v3;
    *(v2 + 640) = v6;
    *(v2 + 720) = *(v3 + 96);
    v7 = *(v3 + 80);
    *(v2 + 688) = *(v3 + 64);
    *(v2 + 704) = v7;
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 656) = v11;
    *(v2 + 672) = v8;
    v12 = *v5;
    v13 = v5[1];
    *(v2 + 136) = v5[2];
    *(v2 + 120) = v13;
    *(v2 + 104) = v12;
    v14 = v5[3];
    v15 = v5[4];
    v16 = v5[5];
    *(v2 + 200) = *(v5 + 96);
    *(v2 + 184) = v16;
    *(v2 + 168) = v15;
    *(v2 + 152) = v14;
    v17 = *v5;
    v18 = v5[2];
    *(v4 + 16) = v5[1];
    *(v4 + 32) = v18;
    *v4 = v17;
    v19 = v5[3];
    v20 = v5[5];
    v21 = *(v5 + 96);
    *(v4 + 64) = v5[4];
    *(v4 + 80) = v20;
    *(v4 + 48) = v19;
    *(v4 + 96) = v21;
    v5[1] = v9;
    v5[2] = v11;
    *v5 = v10;
    v22 = *(v3 + 48);
    v23 = *(v3 + 64);
    v24 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v23;
    v5[5] = v24;
    v5[3] = v22;
    sub_1002BA0E0(v2 + 624, v2 + 728);
    sub_1002BA0E0(v2 + 624, v2 + 728);
    sub_1002BA0E0(v2 + 104, v2 + 728);
    sub_1002BB46C(v4);
    sub_1002BB8CC((v2 + 104));
    sub_1002BB46C(v2 + 104);
    sub_1002BB46C(v2 + 624);
    v25 = *(v3 + 80);
    *(v2 + 480) = *(v3 + 64);
    *(v2 + 496) = v25;
    *(v2 + 512) = *(v3 + 96);
    v26 = *(v3 + 16);
    *(v2 + 416) = *v3;
    *(v2 + 432) = v26;
    v27 = *(v3 + 48);
    *(v2 + 448) = *(v3 + 32);
    *(v2 + 464) = v27;
    v28 = v2 + 416;
  }

  else
  {
    *v4 = *v3;
    *(v4 + 16) = v6;
    *(v4 + 96) = *(v3 + 96);
    v29 = *(v3 + 80);
    *(v4 + 64) = *(v3 + 64);
    *(v4 + 80) = v29;
    v30 = *(v3 + 48);
    v32 = *v3;
    v31 = *(v3 + 16);
    v33 = *(v3 + 32);
    *(v4 + 32) = v33;
    *(v4 + 48) = v30;
    v34 = *v5;
    v35 = v5[2];
    *(v2 + 224) = v5[1];
    *(v2 + 240) = v35;
    *(v2 + 208) = v34;
    v36 = v5[3];
    v37 = v5[4];
    v38 = v5[5];
    *(v2 + 304) = *(v5 + 96);
    *(v2 + 272) = v37;
    *(v2 + 288) = v38;
    *(v2 + 256) = v36;
    v39 = *v5;
    v40 = v5[2];
    *(v2 + 432) = v5[1];
    *(v2 + 448) = v40;
    *(v2 + 416) = v39;
    v41 = v5[3];
    v42 = v5[5];
    v43 = *(v5 + 96);
    *(v2 + 480) = v5[4];
    *(v2 + 496) = v42;
    *(v2 + 464) = v41;
    *(v2 + 512) = v43;
    v5[1] = v31;
    v5[2] = v33;
    *v5 = v32;
    v44 = *(v3 + 48);
    v45 = *(v3 + 64);
    v46 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v45;
    v5[5] = v46;
    v5[3] = v44;
    sub_1002BA0E0(v2 + 208, v2 + 624);
    sub_1002BA0E0(v4, v2 + 624);
    sub_1002BB46C(v2 + 416);
    sub_1002BB8CC((v2 + 208));
    sub_1002BB46C(v2 + 208);
    v28 = v4;
  }

  sub_1002BB46C(v28);

  free(v2);
}

void sub_1002BBF80()
{
  v1 = v0;
  sub_100009130(0, &qword_10060AA00, CAPackage_ptr);
  v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v52[4] = *(v2 + 4);
  v52[5] = v3;
  v53 = v2[96];
  v4 = *(v2 + 1);
  v52[0] = *v2;
  v52[1] = v4;
  v5 = *(v2 + 3);
  v52[2] = *(v2 + 2);
  v52[3] = v5;
  sub_1002BA0E0(v52, v46);
  v7 = CAPackage.init(definition:)(v52, v6);
  v27 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package] = v7;
  v28 = v7;

  v29 = [v28 rootLayer];
  if (v29)
  {
    v30 = *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer] = v29;
    v31 = v29;
    [v30 removeFromSuperlayer];

    v32 = [objc_allocWithZone(CAStateController) initWithLayer:v31];
    v33 = *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController] = v32;

    [v31 removeFromSuperlayer];
    [v31 setGeometryFlipped:{objc_msgSend(v28, "isGeometryFlipped")}];
    v34 = [v1 layer];
    [v34 addSublayer:v31];

    v35 = [v1 layer];
    [v35 bounds];

    sub_1004BCDD4();
    [v31 setPosition:?];
    sub_1002BD418();
  }

  else
  {
    sub_1002BE0B0();
    v36 = swift_allocError();
    swift_willThrow();

    if (qword_100609AB0 != -1)
    {
      swift_once();
    }

    v8 = sub_1004B80B4();
    sub_100007084(v8, qword_100618E80);
    v9 = v1;
    swift_errorRetain();
    v10 = sub_1004B8094();
    v11 = sub_1004BC994();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 136446466;
      v14 = *(v2 + 3);
      v15 = *(v2 + 5);
      v49 = *(v2 + 4);
      v50 = v15;
      v16 = *(v2 + 1);
      v46[0] = *v2;
      v46[1] = v16;
      v17 = *(v2 + 3);
      v19 = *v2;
      v18 = *(v2 + 1);
      v47 = *(v2 + 2);
      v48 = v17;
      v20 = *(v2 + 5);
      v42 = v49;
      v43 = v20;
      v38 = v19;
      v39 = v18;
      v45[0] = v13;
      v51 = v2[96];
      v44 = v2[96];
      v40 = v47;
      v41 = v14;
      sub_1002BA0E0(v46, v37);
      v21 = sub_1004BBF04();
      v23 = sub_1002C4260(v21, v22, v45);

      *(v12 + 4) = v23;
      *(v12 + 12) = 2082;
      *&v38 = v36;
      swift_errorRetain();
      sub_100003ABC(&qword_10060F8C0, &qword_1004E23A0);
      v24 = sub_1004BBF04();
      v26 = sub_1002C4260(v24, v25, v45);

      *(v12 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to load CAPackage with definition=%{public}s. Error=%{public}s", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1002BC3E8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    if (a2)
    {
      v8 = v7 == a1 && v6 == a2;
      if (v8 || (sub_1004BD9C4() & 1) != 0)
      {
        return;
      }
    }

    v9 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    v10 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    if (!v10)
    {
      return;
    }

    v11 = v10;

    v12 = sub_1004BBE24();
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v9 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    v13 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    if (!v13)
    {
      return;
    }

    v11 = v13;
    v12 = 0;
  }

  v14 = [v11 stateWithName:v12];

  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController);
    if (v15)
    {
      v16 = *v9;
      v17 = objc_opt_self();
      v18 = v16;
      v19 = v15;
      v20 = v14;
      v21 = [v17 areAnimationsEnabled];
      v22 = 0.0;
      if (v21)
      {
        *&v22 = 1.0;
      }

      [v19 setState:v20 ofLayer:v18 transitionSpeed:v22];
    }
  }
}

uint64_t CoreAnimationPackageView.stateName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double CoreAnimationPackageView.stateName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_1002BC3E8(v6, v7);

  return result;
}

void (*CoreAnimationPackageView.stateName.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_1002BC700;
}

void sub_1002BC700(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_1002BC3E8(v9, v8);
  }

  else
  {
    sub_1002BC3E8(v9, v8);
  }

  free(v2);
}

void *CoreAnimationPackageView.foregroundColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CoreAnimationPackageView.foregroundColor.setter(id a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v4)
    {
      sub_100009130(0, &qword_10060DF30, UIColor_ptr);
      a1 = a1;
      v5 = v4;
      v6 = sub_1004BCFA4();

      if (v6)
      {

        v4 = v5;
LABEL_9:

        return;
      }
    }

    else
    {
      a1 = a1;
    }

LABEL_8:
    sub_1002BD418();

    goto LABEL_9;
  }

  if (v4)
  {
    goto LABEL_8;
  }
}

void (*CoreAnimationPackageView.foregroundColor.modify(uint64_t *a1))(id a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1002BC958;
}

void sub_1002BC958(id a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (v3)
    {
      if (v8)
      {
        sub_100009130(0, &qword_10060DF30, UIColor_ptr);
        v5 = v3;
        v9 = v8;
        v10 = sub_1004BCFA4();

        if (v10)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v5 = 0;
    }

    sub_1002BD418();

    v5 = v8;
    goto LABEL_11;
  }

  v4 = v3;
  CoreAnimationPackageView.foregroundColor.setter(v3);
  v5 = v2[3];
LABEL_11:

LABEL_12:

  free(v2);
}

Swift::Void __swiftcall CoreAnimationPackageView.reset()()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  swift_beginAccess();
  v2 = *(v1 + 72);
  if (v2[2])
  {
    v4 = v2[4];
    v3 = v2[5];
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = v4;
  v5[1] = v3;
  sub_1002BC3E8(v6, v7);

  v8 = *(v1 + 72);
  v9 = *(v8 + 16);
  if (v9)
  {
    sub_1002BD8B8(v8, v8 + 32, 1, (2 * v9) | 1);
    v8 = v11;
  }

  else
  {
  }

  v10 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates;
  swift_beginAccess();
  *(v0 + v10) = v8;
}

Swift::Void __swiftcall CoreAnimationPackageView.set(stateName:forSublayer:)(Swift::String stateName, Swift::String forSublayer)
{
  v3 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
  if (!v3)
  {
    return;
  }

  object = forSublayer._object;
  countAndFlagsBits = forSublayer._countAndFlagsBits;
  v6 = [v3 sublayers];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  sub_100009130(0, &qword_10060A9C8, CALayer_ptr);
  v8 = sub_1004BC2A4();

  v30 = v2;
  if (v8 >> 62)
  {
LABEL_32:
    v9 = sub_1004BD6A4();
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_33:

    return;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_33;
  }

LABEL_5:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_1004BD484();
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_19:
        __break(1u);
        return;
      }
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v11 = *(v8 + 8 * v10 + 32);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_19;
      }
    }

    v31 = v11;
    v13 = [v11 name];
    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = countAndFlagsBits;
    v15 = object;
    v16 = v13;
    v17 = sub_1004BBE64();
    v19 = v18;

    object = v15;
    if (v17 == v14 && v19 == v15)
    {
      break;
    }

    countAndFlagsBits = v14;
    v21 = sub_1004BD9C4();

    if (v21)
    {
      goto LABEL_22;
    }

LABEL_6:

    ++v10;
    if (v12 == v9)
    {
      goto LABEL_33;
    }
  }

LABEL_22:

  v22 = sub_1004BBE24();
  v23 = [v31 stateWithName:v22];

  if (v23)
  {
    v24 = *(v30 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController);
    if (v24)
    {
      v25 = objc_opt_self();
      v26 = v24;
      v27 = v23;
      v31 = v31;
      v28 = [v25 areAnimationsEnabled];
      v29 = 0.0;
      if (v28)
      {
        *&v29 = 1.0;
      }

      [v26 setState:v27 ofLayer:v31 transitionSpeed:v29];
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.advanceState()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates;
  swift_beginAccess();
  if (!*(*(v0 + v1) + 16))
  {
    v2 = v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
    swift_beginAccess();
    *(v0 + v1) = *(v2 + 72);
  }

  swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3[2])
  {
    v5 = v3[4];
    v4 = v3[5];

    sub_1002BDF30(0, 1);
    swift_endAccess();
    v6 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];
    *v6 = v5;
    v6[1] = v4;
    sub_1002BC3E8(v7, v8);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.startCyclingThroughStates(with:)(Swift::Double with)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer;
  v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer);
  if (!v4 || ([v4 timeInterval], v5 != with))
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = sub_1002BE028;
    v12[5] = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1000C81CC;
    v12[3] = &unk_1005BF390;
    v8 = _Block_copy(v12);

    v9 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:with];
    _Block_release(v8);
    v10 = *(v1 + v3);
    *(v1 + v3) = v9;
    v11 = v9;
    [v10 invalidate];
  }
}

void sub_1002BD0D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    CoreAnimationPackageView.advanceState()();
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.stopCyclingThroughStates()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer;
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer))
  {
    CoreAnimationPackageView.reset()();
    v2 = *(v0 + v1);
    v3 = v2;
    *(v0 + v1) = 0;
    [v2 invalidate];
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.layoutSubviews()()
{
  v23.receiver = v2;
  v23.super_class = type metadata accessor for CoreAnimationPackageView(v0, v1);
  objc_msgSendSuper2(&v23, "layoutSubviews");
  v3 = *&v2[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer];
  if (v3)
  {
    v4 = &v2[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
    swift_beginAccess();
    if (v4[96])
    {
      v5 = v3;
      v6 = [v2 layer];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
    }

    else
    {
      v8 = *(v4 + 10);
      v10 = *(v4 + 11);
      v11 = v3;
    }

    [v3 bounds];
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
    v16 = CGRectGetWidth(v24);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    if (v16 / CGRectGetHeight(v25) >= v8 / v10)
    {
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      v17 = v10 / CGRectGetHeight(v27);
    }

    else
    {
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v17 = v8 / CGRectGetWidth(v26);
    }

    CGAffineTransformMakeScale(&v20, v17, v17);
    v18 = *(v4 + 40);
    *&t2.a = *(v4 + 24);
    *&t2.c = v18;
    *&t2.tx = *(v4 + 56);
    CGAffineTransformConcat(&v21, &v20, &t2);
    t2 = v21;
    CATransform3DMakeAffineTransform(&v20, &t2);
    [v3 setTransform:&v20];
    v19 = [v2 layer];
    [v19 bounds];

    sub_1004BCDD4();
    [v3 setPosition:?];
  }
}

void sub_1002BD418()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  if (v1)
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v1;
      v26 = v4;
      v6 = [v5 publishedObjectNames];
      v7 = sub_1004BC2A4();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 32;
        v11 = &type metadata for String;
        v24 = v5;
        v25 = v2;
        while (v9 < *(v7 + 16))
        {
          sub_100004DE4(v10, v31);
          sub_100004DE4(v31, v30);
          if (swift_dynamicCast())
          {
            v12 = sub_1004BBE24();

            v13 = [v5 publishedObjectWithName:v12];

            if (v13)
            {
              sub_1004BD284();
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
            }

            v30[0] = v28;
            v30[1] = v29;
            if (*(&v29 + 1))
            {
              sub_100009130(0, &qword_10060A9C8, CALayer_ptr);
              if (swift_dynamicCast())
              {
                v14 = v11;
                objc_opt_self();
                v15 = swift_dynamicCastObjCClass();
                if (v15)
                {
                  v16 = v15;
                  v17 = [v2 traitCollection];
                  v18 = [v26 resolvedColorWithTraitCollection:v17];

                  v19 = [v18 CGColor];
                  [v16 setFillColor:v19];

                  v2 = v25;
                }

                else
                {
                  v20 = v27;
                  v21 = [v2 traitCollection];
                  v22 = [v26 resolvedColorWithTraitCollection:v21];

                  v23 = [v22 CGColor];
                  [v20 setBackgroundColor:v23];

                  v2 = v25;
                }

                v11 = v14;
                v5 = v24;
              }
            }

            else
            {
              sub_1002BE048(v30);
            }
          }

          ++v9;
          sub_100004C6C(v31);
          v10 += 32;
          if (v8 == v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
      }
    }
  }
}

id CoreAnimationPackageView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CoreAnimationPackageView(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1002BD8B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      sub_100003ABC(&qword_10060F580, &qword_1004E2FE0);
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

void sub_1002BD990(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      sub_100003ABC(&qword_10060A9F8, &unk_1004DBD90);
      v7 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
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
        type metadata accessor for PlaylistCurators.Curator(0);
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

void sub_1002BDB34(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  if (v1)
  {
    v2 = a1;
    v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v1;
      v26 = v4;
      v6 = [v5 publishedObjectNames];
      v7 = sub_1004BC2A4();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 32;
        v11 = &type metadata for String;
        v24 = v5;
        v25 = v2;
        while (v9 < *(v7 + 16))
        {
          sub_100004DE4(v10, v31);
          sub_100004DE4(v31, v30);
          if (swift_dynamicCast())
          {
            v12 = sub_1004BBE24();

            v13 = [v5 publishedObjectWithName:v12];

            if (v13)
            {
              sub_1004BD284();
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
            }

            v30[0] = v28;
            v30[1] = v29;
            if (*(&v29 + 1))
            {
              sub_100009130(0, &qword_10060A9C8, CALayer_ptr);
              if (swift_dynamicCast())
              {
                v14 = v11;
                objc_opt_self();
                v15 = swift_dynamicCastObjCClass();
                if (v15)
                {
                  v16 = v15;
                  v17 = [v2 traitCollection];
                  v18 = [v26 resolvedColorWithTraitCollection:v17];

                  v19 = [v18 CGColor];
                  [v16 setFillColor:v19];

                  v2 = v25;
                }

                else
                {
                  v20 = v27;
                  v21 = [v2 traitCollection];
                  v22 = [v26 resolvedColorWithTraitCollection:v21];

                  v23 = [v22 CGColor];
                  [v20 setBackgroundColor:v23];

                  v2 = v25;
                }

                v11 = v14;
                v5 = v24;
              }
            }

            else
            {
              sub_1002BE048(v30);
            }
          }

          ++v9;
          sub_100004C6C(v31);
          v10 += 32;
          if (v8 == v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
      }
    }
  }
}

void sub_1002BDE74()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController) = 0;
  sub_1004BD624();
  __break(1u);
}

unint64_t sub_1002BDF30(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1003BEC84(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1001330CC(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1002BDFF0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002BE030(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002BE048(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100611260, &unk_1004DBDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002BE0B0()
{
  result = qword_10060AA08;
  if (!qword_10060AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AA08);
  }

  return result;
}

unint64_t sub_1002BE11C()
{
  result = qword_10060AA10;
  if (!qword_10060AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AA10);
  }

  return result;
}

id sub_1002BE170()
{
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v1 = qword_100618C60;
  static NSBundle.musicCoreUIBundle = qword_100618C60;

  return v1;
}

uint64_t *NSBundle.musicCoreUIBundle.unsafeMutableAddressor()
{
  if (qword_100609AA8 != -1)
  {
    swift_once();
  }

  return &static NSBundle.musicCoreUIBundle;
}

id static NSBundle.musicCoreUIBundle.getter()
{
  if (qword_100609AA8 != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.musicCoreUIBundle;

  return v1;
}

double MusicLibrary.ActionableState.updateSymbolConfiguration(from:)(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v5 = a3;
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v8 = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + v8[13]) = vdupq_n_s64(0x4040000000000000uLL);
  sub_1004BCED4();
  v9 = sub_1004BCEE4();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_1002BE588(v7, a1 + v8[9]);
  v10 = a1 + v8[10];
  if (*v10)
  {
    v11 = *&UIEdgeInsetsZero.bottom;
    *(v10 + 8) = *&UIEdgeInsetsZero.top;
    *(v10 + 24) = v11;
  }

  *(a1 + 112) = 0;
  objc_storeStrong((a1 + 24), UIFontTextStyleBody);
  *(a1 + 48) = xmmword_1004D9B20;
  if (!(v5 >> 14))
  {

    *a1 = xmmword_1004D9B80;
    *(a1 + 48) = 7;
    goto LABEL_20;
  }

  if (v5 >> 14 != 1)
  {
    if (a2 | v5 ^ 0x8000)
    {
      if (v5 == 0x8000 && a2 == 1)
      {

        v18 = xmmword_1004D9B40;
      }

      else
      {

        v18 = xmmword_1004D9B30;
      }

      goto LABEL_19;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
LABEL_20:
    sub_1002BE5F8(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48));
    *(v10 + 48) = 0;
    result = 0.0;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = 0u;
    return result;
  }

  if ((v5 & 0x100) != 0)
  {

    v18 = xmmword_1004D9B50;
LABEL_19:
    *a1 = v18;
    goto LABEL_20;
  }

  v13 = *v10;
  if (*v10 && (type metadata accessor for CircularProgressView(0, v12), (v14 = swift_dynamicCastClass()) != 0))
  {
    v15 = v14;
    v16 = v13;
  }

  else
  {
    v20 = objc_allocWithZone(type metadata accessor for CircularProgressView(0, v12));
    v15 = CircularProgressView.init(size:)(26.0, 26.0);
  }

  CircularProgressView.setState(_:animated:)(a2, v5 & 1, 1);
  sub_1002BE638(*(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
  *(a1 + 200) = xmmword_1004C5080;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;

  *a1 = xmmword_1004D9B60;
  *(a1 + 56) = 1;
  v21 = UIFontTextStyleFootnote;

  *(a1 + 24) = v21;
  sub_1002BE5F8(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48));
  *v10 = v15;
  v22 = *&UIEdgeInsetsZero.top;
  *(v10 + 24) = *&UIEdgeInsetsZero.bottom;
  *(v10 + 8) = v22;
  result = 1.0;
  *(v10 + 40) = xmmword_1004D9B70;
  return result;
}

uint64_t sub_1002BE588(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1002BE5F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
  }
}

double sub_1002BE638(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1002BE67C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_100618E80);
  sub_100007084(v2, qword_100618E80);
  sub_1002BE6F8(0, v3);
  OS_os_log.init(musicCategory:)(0x726F43636973754DLL, 0xEB00000000495565);
  return sub_1004B80C4();
}

unint64_t sub_1002BE6F8(uint64_t a1, uint64_t a2)
{
  result = qword_10060AA18;
  if (!qword_10060AA18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10060AA18);
  }

  return result;
}

uint64_t ArtworkImageViewModelAttributeProviding.cropStyle.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1004BB5B4();
  v2 = sub_1004BB634();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1002BE7B4@<X0>(void (*a1)(__n128)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = sub_1004BB6C4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100007214(v7, &unk_10060EBE0, &unk_1004DBE60);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    (*(v9 + 16))(a3, v12, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    a2();
    (*(v9 + 8))(v12, v8);
    v17 = sub_1004BB634();
    (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
    return (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
  }
}