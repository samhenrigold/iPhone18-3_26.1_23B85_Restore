uint64_t sub_1008AA55C()
{
  v0 = type metadata accessor for UploadedVideo();
  v38 = *(v0 - 8);
  v39 = v0;
  __chkstk_darwin();
  v37 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for UploadedAudio();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin();
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TVEpisode();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin();
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicMovie();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicVideo();
  v47 = *(v10 - 8);
  v48 = v10;
  __chkstk_darwin();
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Song();
  v46 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Playlist.Entry.InternalItem();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.Entry.internalItem.getter();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v17 + 96))(v19, v16);
    (*(v7 + 32))(v9, v19, v6);
    v21 = MusicMovie.catalogID.getter();
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    if (!v23)
    {
      return 0x497972617262694CLL;
    }

    return v21;
  }

  if (v20 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v17 + 96))(v19, v16);
    v25 = v47;
    v24 = v48;
    (*(v47 + 32))(v12, v19, v48);
    v21 = MusicVideo.catalogID.getter();
    v27 = v26;
    (*(v25 + 8))(v12, v24);
  }

  else
  {
    if (v20 == enum case for Playlist.Entry.InternalItem.song(_:))
    {
      (*(v17 + 96))(v19, v16);
      v28 = v46;
      (*(v46 + 32))(v15, v19, v13);
      v21 = Song.catalogID.getter();
      v30 = v29;
      (*(v28 + 8))(v15, v13);
      if (!v30)
      {
        return 0x497972617262694CLL;
      }

      return v21;
    }

    if (v20 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
    {
      (*(v17 + 96))(v19, v16);
      v32 = v43;
      v31 = v44;
      v33 = v45;
      (*(v44 + 32))(v43, v19, v45);
      v34 = TVEpisode.catalogID.getter();
    }

    else if (v20 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
    {
      (*(v17 + 96))(v19, v16);
      v32 = v40;
      v31 = v41;
      v33 = v42;
      (*(v41 + 32))(v40, v19, v42);
      v34 = UploadedAudio.catalogID.getter();
    }

    else
    {
      if (v20 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        (*(v17 + 8))(v19, v16);
        return 0x497972617262694CLL;
      }

      (*(v17 + 96))(v19, v16);
      v32 = v37;
      v31 = v38;
      v33 = v39;
      (*(v38 + 32))(v37, v19, v39);
      v34 = UploadedVideo.catalogID.getter();
    }

    v21 = v34;
    v27 = v35;
    (*(v31 + 8))(v32, v33);
  }

  if (v27)
  {
    return v21;
  }

  return 0x497972617262694CLL;
}

uint64_t sub_1008AABF8()
{
  v1 = type metadata accessor for MusicVideo();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Song();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Track();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v0, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == enum case for Track.song(_:))
  {
    (*(v10 + 96))(v13, v9);
    (*(v6 + 32))(v8, v13, v5);
    v40 = v5;
    sub_10010FC20(&qword_1011A8020, &qword_100EED128);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_1005442F0(1, v15, v16);
    v18 = Substring.lowercased()();

    v19 = sub_1008AC654(1uLL, v15, v17);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v44 = v18;
    v40 = v19;
    v41 = v21;
    v42 = v23;
    v43 = v25;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v44._countAndFlagsBits;
    (*(v6 + 8))(v8, v5);
  }

  else if (v14 == enum case for Track.musicVideo(_:))
  {
    (*(v10 + 96))(v13, v9);
    (*(v2 + 32))(v4, v13, v1);
    v40 = v1;
    sub_10010FC20(&qword_1011A8030, &qword_100EED138);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    sub_1005442F0(1, v27, v28);
    v30 = Substring.lowercased()();

    v31 = sub_1008AC654(1uLL, v27, v29);
    v33 = v32;
    v35 = v34;
    v36 = v2;
    v38 = v37;

    v44 = v30;
    v40 = v31;
    v41 = v33;
    v42 = v35;
    v43 = v38;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v44._countAndFlagsBits;
    (*(v36 + 8))(v4, v1);
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    return 1735290739;
  }

  return countAndFlagsBits;
}

uint64_t sub_1008AB040()
{
  v1 = v0;
  v2 = type metadata accessor for MusicVideo();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Track();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin();
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for Track.song(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    v16 = Song.catalogID.getter();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    if (!v18)
    {
      return 0x497972617262694CLL;
    }

    return v16;
  }

  if (v15 == enum case for Track.musicVideo(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v3 + 32))(v5, v14, v2);
    v16 = MusicVideo.catalogID.getter();
    v20 = v19;
    (*(v3 + 8))(v5, v2);
    if (v20)
    {
      return v16;
    }
  }

  else
  {
    (*(v11 + 8))(v14, v10);
  }

  return 0x497972617262694CLL;
}

uint64_t sub_1008AB360()
{
  v0 = type metadata accessor for Song();
  v88 = *(v0 - 8);
  v89 = v0;
  __chkstk_darwin();
  v87 = &v86 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Playlist();
  v91 = *(v2 - 8);
  v92 = v2;
  __chkstk_darwin();
  v90 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MusicVideo();
  v94 = *(v4 - 8);
  v95 = v4;
  __chkstk_darwin();
  v93 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Artist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Album();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicPin.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.item.getter();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MusicPin.Item.album(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v96 = v10;
    sub_10010FC20(&qword_1011A8040, &qword_100EED148);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    sub_1005442F0(1, v19, v20);
    v22 = Substring.lowercased()();

    v23 = sub_1008AC654(1uLL, v19, v21);
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v100 = v22;
    v96 = v23;
    v97 = v25;
    v98 = v27;
    v99 = v29;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v100._countAndFlagsBits;
    (*(v11 + 8))(v13, v10);
  }

  else if (v18 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v31 = v7;
    (*(v7 + 32))(v9, v17, v6);
    v96 = v6;
    sub_10010FC20(&qword_1011A8038, &qword_100EED140);
    v32 = String.init<A>(describing:)();
    v34 = v33;
    sub_1005442F0(1, v32, v33);
    v35 = Substring.lowercased()();

    v36 = sub_1008AC654(1uLL, v32, v34);
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v100 = v35;
    v96 = v36;
    v97 = v38;
    v98 = v40;
    v99 = v42;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v100._countAndFlagsBits;
    (*(v31 + 8))(v9, v6);
  }

  else if (v18 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v15 + 96))(v17, v14);
    v43 = v93;
    v44 = v94;
    v45 = v95;
    (*(v94 + 32))(v93, v17, v95);
    v96 = v45;
    sub_10010FC20(&qword_1011A8030, &qword_100EED138);
    v46 = String.init<A>(describing:)();
    v48 = v47;
    sub_1005442F0(1, v46, v47);
    v49 = Substring.lowercased()();

    v50 = sub_1008AC654(1uLL, v46, v48);
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v100 = v49;
    v96 = v50;
    v97 = v52;
    v98 = v54;
    v99 = v56;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v100._countAndFlagsBits;
    (*(v44 + 8))(v43, v45);
  }

  else if (v18 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v58 = v90;
    v57 = v91;
    v59 = v92;
    (*(v91 + 32))(v90, v17, v92);
    v96 = v59;
    sub_10010FC20(&qword_1011A8028, &qword_100EED130);
    v60 = String.init<A>(describing:)();
    v62 = v61;
    sub_1005442F0(1, v60, v61);
    v63 = Substring.lowercased()();

    v64 = sub_1008AC654(1uLL, v60, v62);
    v66 = v65;
    v68 = v67;
    v70 = v69;

    v100 = v63;
    v96 = v64;
    v97 = v66;
    v98 = v68;
    v99 = v70;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v100._countAndFlagsBits;
    (*(v57 + 8))(v58, v59);
  }

  else if (v18 == enum case for MusicPin.Item.song(_:))
  {
    (*(v15 + 96))(v17, v14);
    v72 = v87;
    v71 = v88;
    v73 = v89;
    (*(v88 + 32))(v87, v17, v89);
    v96 = v73;
    sub_10010FC20(&qword_1011A8020, &qword_100EED128);
    v74 = String.init<A>(describing:)();
    v76 = v75;
    sub_1005442F0(1, v74, v75);
    v77 = Substring.lowercased()();

    v78 = sub_1008AC654(1uLL, v74, v76);
    v80 = v79;
    v82 = v81;
    v84 = v83;

    v100 = v77;
    v96 = v78;
    v97 = v80;
    v98 = v82;
    v99 = v84;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v100._countAndFlagsBits;
    (*(v71 + 8))(v72, v73);
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    return 0;
  }

  return countAndFlagsBits;
}

uint64_t sub_1008ABC54()
{
  v0 = type metadata accessor for Song();
  v37 = *(v0 - 8);
  v38 = v0;
  __chkstk_darwin();
  v36 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Playlist();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin();
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MusicVideo();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin();
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Artist();
  v44 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Album();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicPin.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.item.getter();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MusicPin.Item.album(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v19 = Album.catalogID.getter();
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    if (!v21)
    {
      return 0x507972617262694CLL;
    }

    return v19;
  }

  if (v18 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v22 = v44;
    (*(v44 + 32))(v9, v17, v7);
    v19 = Artist.catalogID.getter();
    v24 = v23;
    (*(v22 + 8))(v9, v7);
    if (!v24)
    {
      return 0x507972617262694CLL;
    }

    return v19;
  }

  if (v18 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v15 + 96))(v17, v14);
    v26 = v42;
    v25 = v43;
    (*(v42 + 32))(v6, v17, v43);
    v19 = MusicVideo.catalogID.getter();
    v28 = v27;
    (*(v26 + 8))(v6, v25);
  }

  else
  {
    if (v18 == enum case for MusicPin.Item.playlist(_:))
    {
      (*(v15 + 96))(v17, v14);
      v30 = v39;
      v29 = v40;
      v31 = v41;
      (*(v40 + 32))(v39, v17, v41);
      v32 = Playlist.catalogID.getter();
    }

    else
    {
      if (v18 != enum case for MusicPin.Item.song(_:))
      {
        (*(v15 + 8))(v17, v14);
        return 0x507972617262694CLL;
      }

      (*(v15 + 96))(v17, v14);
      v30 = v36;
      v29 = v37;
      v31 = v38;
      (*(v37 + 32))(v36, v17, v38);
      v32 = Song.catalogID.getter();
    }

    v19 = v32;
    v28 = v33;
    (*(v29 + 8))(v30, v31);
  }

  if (v28)
  {
    return v19;
  }

  return 0x507972617262694CLL;
}

unint64_t _s9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyO14NavigationTypeO8rawValueAKSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C60C8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void *sub_1008AC260(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  for (i = (a1 + 48); ; i += 24)
  {
    v4 = *(i - 2);
    v5 = *(i - 1);
    v6 = *i;
    v38 = v4;
    if (v6 <= 1)
    {
      if (*i)
      {
        sub_10000988C();
        v17 = StringProtocol.capitalized.getter();
        v36 = v18;
        v37 = v17;

        v14 = 0xE500000000000000;
        v13 = 0x6F54646461;
      }

      else
      {
        sub_1008AC988(v4, v5, 0);

        v14 = 0xE400000000000000;
        v36 = v5;
        v37 = v4;
        v13 = 1684957547;
      }
    }

    else if (v6 == 2)
    {
      sub_10000988C();
      v15 = StringProtocol.capitalized.getter();
      v36 = v16;
      v37 = v15;

      v14 = 0xEA00000000006D6FLL;
      v13 = 0x72466574656C6564;
    }

    else if (v6 == 3)
    {
      v7 = 0x7473696C79616C50;
      if (v4 != 2)
      {
        v7 = 0x434174726F706552;
      }

      v8 = 0xE800000000000000;
      if (v4 != 2)
      {
        v8 = 0xEE006E7265636E6FLL;
      }

      v9 = 0x6D75626C41;
      if (v4)
      {
        v9 = 0x747369747241;
      }

      v10 = 0xE500000000000000;
      if (v4)
      {
        v10 = 0xE600000000000000;
      }

      v11 = v4 <= 1u ? v9 : v7;
      v37 = v11;
      v12 = v4 <= 1u ? v10 : v8;
      v36 = v12;
      v13 = 0x657461676976616ELL;
      v14 = 0xEA00000000006F54;
    }

    else
    {
      v14 = 0xE800000000000000;
      v37 = 0x7453657461657263;
      v36 = 0xED00006E6F697461;
      v13 = 0x6570795479616C70;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_100019C28(v13, v14);
    v22 = _swiftEmptyDictionarySingleton[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (_swiftEmptyDictionarySingleton[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v5;
        v28 = v38;
        if (v20)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1008BA5B4();
        v29 = v5;
        v28 = v38;
        if (v25)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1008B6B0C(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_100019C28(v13, v14);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_42;
      }

      v21 = v26;
      v29 = v5;
      v28 = v38;
      if (v25)
      {
LABEL_3:

        v3 = (_swiftEmptyDictionarySingleton[7] + 16 * v21);
        *v3 = v37;
        v3[1] = v36;

        sub_1008AC974(v28, v29, v6);
        goto LABEL_4;
      }
    }

    _swiftEmptyDictionarySingleton[(v21 >> 6) + 8] |= 1 << v21;
    v30 = (_swiftEmptyDictionarySingleton[6] + 16 * v21);
    *v30 = v13;
    v30[1] = v14;
    v31 = (_swiftEmptyDictionarySingleton[7] + 16 * v21);
    *v31 = v37;
    v31[1] = v36;
    sub_1008AC974(v28, v29, v6);
    v32 = _swiftEmptyDictionarySingleton[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_41;
    }

    _swiftEmptyDictionarySingleton[2] = v34;
LABEL_4:
    if (!--v1)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1008AC654(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

unint64_t sub_1008AC704()
{
  result = qword_1011A7F20;
  if (!qword_1011A7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A7F20);
  }

  return result;
}

unint64_t sub_1008AC75C()
{
  result = qword_1011A7F30;
  if (!qword_1011A7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A7F30);
  }

  return result;
}

unint64_t sub_1008AC7B4()
{
  result = qword_1011A7F38;
  if (!qword_1011A7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A7F38);
  }

  return result;
}

unint64_t sub_1008AC80C()
{
  result = qword_1011A7F40;
  if (!qword_1011A7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A7F40);
  }

  return result;
}

uint64_t sub_1008AC874(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1008AC890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1008AC8D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1008AC91C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

double sub_1008AC974(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

double sub_1008AC988(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t View.actionContextMenu(title:menu:excluding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a4;
  v39 = a1;
  v40 = a2;
  v45 = a7;
  v46 = *(a5 - 8);
  __chkstk_darwin();
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v37 - v12;
  v14 = sub_1001109D0(&qword_1011A8068, &qword_100EED170);
  v15 = sub_1008ACE84();
  v51 = a5;
  v52 = v14;
  v53 = a6;
  v54 = v15;
  v48 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v37 - v20;
  v21 = type metadata accessor for _ConditionalContent();
  v43 = *(v21 - 8);
  v44 = v21;
  v22 = __chkstk_darwin();
  v47 = &v37 - v23;
  if (a3)
  {
    v46 = v14;
    __chkstk_darwin();
    *(&v37 - 8) = a5;
    *(&v37 - 7) = a6;
    *(&v37 - 6) = OpaqueTypeConformance2;
    *(&v37 - 5) = a3;
    v24 = v40;
    *(&v37 - 4) = v39;
    *(&v37 - 3) = v24;
    *(&v37 - 2) = v41;

    v25 = v48;
    View.contextMenu<A>(menuItems:)();
    v51 = a5;
    v52 = v46;
    v53 = a6;
    v54 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = *(v17 + 16);
    v27 = v38;
    v26(v38, v19, OpaqueTypeMetadata2);
    v28 = *(v17 + 8);
    v28(v19, OpaqueTypeMetadata2);
    v26(v19, v27, OpaqueTypeMetadata2);
    v14 = v46;
    sub_1008AD104(v19, OpaqueTypeMetadata2, a5, OpaqueTypeConformance2, a6);

    v28(v19, OpaqueTypeMetadata2);
    v28(v27, OpaqueTypeMetadata2);
  }

  else
  {
    v29 = v46;
    v30 = *(v46 + 16);
    v30(v13, OpaqueTypeConformance2, a5, v22);
    (v30)(v11, v13, a5);
    v51 = a5;
    v52 = v14;
    v53 = a6;
    v54 = v48;
    v31 = swift_getOpaqueTypeConformance2();
    sub_1008AD1FC(v11, OpaqueTypeMetadata2, a5, v31, a6);
    v32 = *(v29 + 8);
    v32(v11, a5);
    v32(v13, a5);
  }

  v51 = a5;
  v52 = v14;
  v53 = a6;
  v54 = v48;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = a6;
  v33 = v44;
  swift_getWitnessTable();
  v34 = v43;
  v35 = v47;
  (*(v43 + 16))(v45, v47, v33);
  return (*(v34 + 8))(v35, v33);
}

unint64_t sub_1008ACE84()
{
  result = qword_1011A8070;
  if (!qword_1011A8070)
  {
    sub_1001109D0(&qword_1011A8068, &qword_100EED170);
    sub_1008ACF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8070);
  }

  return result;
}

unint64_t sub_1008ACF1C()
{
  result = qword_1011A8078;
  if (!qword_1011A8078)
  {
    sub_1001109D0(&qword_1011A8080, &qword_100EED178);
    sub_1008B1A7C(&qword_1011A8088, type metadata accessor for ActionMenuView, &unk_100EED208);
    sub_100020674(&qword_1011A8090, &qword_1011A8098, &qword_100EED180, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8078);
  }

  return result;
}

uint64_t type metadata accessor for ActionMenuView(uint64_t a1)
{
  result = qword_1011A81D0;
  if (!qword_1011A81D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008AD050(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{

  sub_10010FC20(&qword_1011A8080, &qword_100EED178);
  sub_1008ACF1C();
  sub_10000988C();
  return Section<>.init<A>(_:content:)();
}

uint64_t sub_1008AD104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ConditionalContent.Storage();
  v7 = __chkstk_darwin();
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1008AD1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ConditionalContent.Storage();
  v7 = __chkstk_darwin();
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v68 = a7;
  v69 = a8;
  v66 = a5;
  v67 = a6;
  v65 = a4;
  v64 = a2;
  v63 = a1;
  v73 = a9;
  v62 = *(a10 - 8);
  __chkstk_darwin();
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v59 - v16;
  v18 = sub_1001109D0(&qword_1011A8068, &qword_100EED170);
  v19 = sub_1008ACE84();
  v81 = a10;
  v82 = v18;
  v76 = v18;
  v77 = a11;
  v83 = a11;
  v84 = a12;
  v78 = a12;
  v75 = v19;
  v85 = v19;
  v86 = a13;
  v72 = a13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v23 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = v59 - v24;
  v26 = type metadata accessor for _ConditionalContent();
  v71 = *(v26 - 8);
  v27 = __chkstk_darwin();
  v70 = v59 - v28;
  if (a3)
  {
    v59[2] = v59;
    __chkstk_darwin();
    v62 = v26;
    v59[1] = &v59[-12];
    v29 = v77;
    v30 = v78;
    v59[-10] = a10;
    v59[-9] = v29;
    v60 = v21;
    v61 = v25;
    v31 = v72;
    v59[-8] = v30;
    v59[-7] = v31;
    v59[-6] = v74;
    v59[-5] = a3;
    v32 = OpaqueTypeMetadata2;
    v59[3] = v33;
    __chkstk_darwin();
    v59[-6] = a10;
    v59[-5] = v29;
    v34 = swift_allocObject();
    v35 = v69;
    *(v34 + 16) = v68;
    *(v34 + 24) = v35;

    v58 = v31;
    v36 = v75;
    v56 = v30;
    v57 = v75;
    v55 = v29;
    v37 = v76;
    View.contextMenu<A, B>(menuItems:preview:previewAction:)();

    v81 = a10;
    v82 = v37;
    v83 = v29;
    v84 = v30;
    v85 = v36;
    v86 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v60;
    v40 = *(v60 + 16);
    v41 = v61;
    v40(v61, v23, v32);
    v42 = *(v39 + 8);
    v42(v23, v32);
    v40(v23, v41, v32);
    v43 = v70;
    v44 = OpaqueTypeConformance2;
    v26 = v62;
    sub_1008AD104(v23, v32, a10, v44, v78);

    v42(v23, v32);
    v42(v41, v32);
  }

  else
  {
    v45 = v62;
    v46 = *(v62 + 16);
    v46(v17, v74, a10, v27);
    (v46)(v15, v17, a10);
    v81 = a10;
    v82 = v76;
    v47 = v78;
    v83 = v77;
    v84 = v78;
    v31 = v72;
    v85 = v75;
    v86 = v72;
    v48 = swift_getOpaqueTypeConformance2();
    v49 = v70;
    sub_1008AD1FC(v15, OpaqueTypeMetadata2, a10, v48, v47);
    v50 = *(v45 + 8);
    v51 = v15;
    v43 = v49;
    v50(v51, a10);
    v50(v17, a10);
  }

  v81 = a10;
  v82 = v76;
  v52 = v78;
  v83 = v77;
  v84 = v78;
  v85 = v75;
  v86 = v31;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = v52;
  swift_getWitnessTable();
  v53 = v71;
  (*(v71 + 16))(v73, v43, v26);
  return (*(v53 + 8))(v43, v26);
}

uint64_t sub_1008AD9B4@<X0>(uint64_t a2@<X3>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v15 - v9;
  v11(v8);
  v12 = *(v5 + 16);
  v12(v10, v7, a2);
  v13 = *(v5 + 8);
  v13(v7, a2);
  v12(a3, v10, a2);
  return (v13)(v10, a2);
}

uint64_t sub_1008ADB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  type metadata accessor for ActionMenuView.Excluding();
  sub_1008B1A7C(&qword_1011A80B0, type metadata accessor for ActionMenuView.Excluding, &unk_100EED1D0);

  *(a3 + 32) = EnvironmentObject.init()();
  *(a3 + 40) = v5;
  v6 = *(type metadata accessor for ActionMenuView(0) + 32);
  *(a3 + v6) = swift_getKeyPath();
  sub_10010FC20(&qword_1011A8288, &qword_100EED2D8);
  swift_storeEnumTagMultiPayload();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;

  v8 = static ObservableObject.environmentStore.getter();
  result = sub_10010FC20(&qword_1011A8080, &qword_100EED178);
  v10 = (a3 + *(result + 36));
  *v10 = v8;
  v10[1] = v7;
  return result;
}

uint64_t ActionMenu.menuButton<A>(title:excluding:label:onPresentationChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v47 = a6;
  v43 = a5;
  v48 = a4;
  v49 = a3;
  v40 = a2;
  v42 = a1;
  v53 = a9;
  v11 = type metadata accessor for MenuOrder();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin();
  v50 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001109D0(&qword_1011A80A0, &qword_100EED188);
  v41 = v13;
  v14 = sub_1008AE1A8();
  v59 = a8;
  v60 = v13;
  v61 = a10;
  v62 = v14;
  v15 = type metadata accessor for Menu();
  v46 = *(v15 - 8);
  __chkstk_darwin();
  v17 = v35 - v16;
  sub_1001109D0(&qword_1011A8098, &qword_100EED180);
  v38 = v15;
  v18 = type metadata accessor for ModifiedContent();
  v36 = v18;
  v45 = *(v18 - 8);
  __chkstk_darwin();
  v39 = v35 - v19;
  WitnessTable = swift_getWitnessTable();
  v35[1] = WitnessTable;
  v21 = sub_100020674(&qword_1011A8090, &qword_1011A8098, &qword_100EED180, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v57 = WitnessTable;
  v58 = v21;
  v37 = swift_getWitnessTable();
  v59 = v18;
  v60 = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v25 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = v35 - v26;
  v54 = v42;
  v55 = v40;
  v56 = v44;

  Menu.init(onPresentationChanged:content:label:)();
  type metadata accessor for ActionMenuView.Excluding();
  *(swift_allocObject() + 16) = v49;
  sub_1008B1A7C(&qword_1011A80B0, type metadata accessor for ActionMenuView.Excluding, &unk_100EED1D0);

  v28 = v39;
  v29 = v38;
  View.environmentObject<A>(_:)();

  (*(v46 + 8))(v17, v29);
  v30 = v50;
  static MenuOrder.fixed.getter();
  v31 = v36;
  View.menuOrder(_:)();
  (*(v51 + 8))(v30, v52);
  (*(v45 + 8))(v28, v31);
  v32 = *(v23 + 16);
  v32(v27, v25, OpaqueTypeMetadata2);
  v33 = *(v23 + 8);
  v33(v25, OpaqueTypeMetadata2);
  v32(v53, v27, OpaqueTypeMetadata2);
  return (v33)(v27, OpaqueTypeMetadata2);
}

unint64_t sub_1008AE1A8()
{
  result = qword_1011A80A8;
  if (!qword_1011A80A8)
  {
    sub_1001109D0(&qword_1011A80A0, &qword_100EED188);
    sub_1008B1A7C(&qword_1011A8088, type metadata accessor for ActionMenuView, &unk_100EED208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A80A8);
  }

  return result;
}

uint64_t sub_1008AE270(uint64_t a1, unint64_t a2, uint64_t a3)
{
  type metadata accessor for ActionMenuView(0);
  sub_1008B1A7C(&qword_1011A8088, type metadata accessor for ActionMenuView, &unk_100EED208);
  sub_10000988C();

  return Section<>.init<A>(_:content:)();
}

uint64_t sub_1008AE380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  type metadata accessor for ActionMenuView.Excluding();
  sub_1008B1A7C(&qword_1011A80B0, type metadata accessor for ActionMenuView.Excluding, &unk_100EED1D0);

  *(a2 + 32) = EnvironmentObject.init()();
  *(a2 + 40) = v3;
  v4 = *(type metadata accessor for ActionMenuView(0) + 32);
  *(a2 + v4) = swift_getKeyPath();
  sub_10010FC20(&qword_1011A8288, &qword_100EED2D8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1008AE464@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActionMenuView.Excluding();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_1008AE4A4(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_1011A8230, &qword_100EED258);
  v86 = *(v3 - 8);
  __chkstk_darwin();
  v85 = v71 - v4;
  v97 = sub_10010FC20(&qword_1011A8238, &qword_100EED260);
  __chkstk_darwin();
  v99 = v71 - v5;
  v98 = sub_10010FC20(&qword_1011A8240, &qword_100EED268);
  __chkstk_darwin();
  v93 = v71 - v6;
  v7 = type metadata accessor for Divider();
  v89 = *(v7 - 8);
  v90 = v7;
  __chkstk_darwin();
  v78 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A8248, &qword_100EED270);
  __chkstk_darwin();
  v91 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = v71 - v10;
  v82 = sub_10010FC20(&qword_1011A8250, &qword_100EED278);
  __chkstk_darwin();
  v87 = v71 - v11;
  v84 = type metadata accessor for MenuControlGroupStyle();
  v76 = *(v84 - 8);
  __chkstk_darwin();
  v74 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10010FC20(&qword_1011A8258, &qword_100EED280);
  v73 = *(v81 - 8);
  __chkstk_darwin();
  v72 = v71 - v13;
  v83 = sub_10010FC20(&qword_1011A8260, &qword_100EED288);
  v77 = *(v83 - 8);
  __chkstk_darwin();
  v75 = v71 - v14;
  sub_10010FC20(&qword_1011A8268, &qword_100EED290);
  __chkstk_darwin();
  v88 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = v71 - v16;
  v104 = sub_10010FC20(&qword_1011A8270, &qword_100EED298);
  __chkstk_darwin();
  v96 = v71 - v17;
  v18 = *(type metadata accessor for ActionMenuView(0) - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v20 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_10010FC20(&qword_1011A8278, &qword_100EED2A0);
  __chkstk_darwin();
  v100 = v71 - v21;
  v102 = sub_10010FC20(&qword_1011A8280, &qword_100EED2A8);
  __chkstk_darwin();
  v103 = v71 - v22;
  if (!v1[4])
  {
    type metadata accessor for ActionMenuView.Excluding();
    sub_1008B1A7C(&qword_1011A80B0, type metadata accessor for ActionMenuView.Excluding, &unk_100EED1D0);
    EnvironmentObject.error()();
    __break(1u);
    return;
  }

  v23 = v1;
  v24 = *v1;

  ActionMenu.elements(excluding:includeUnsupported:)(v25, 0);
  v27 = v26;
  v101 = v28;
  v30 = v29;

  if (!*(v27 + 16))
  {

    (v101)(v43);
    swift_storeEnumTagMultiPayload();
    sub_1008B142C();
    _ConditionalContent<>.init(storage:)();

    return;
  }

  v79 = v3;
  v80 = a1;
  v105 = v27;
  swift_getKeyPath();
  sub_1008B0FD8(v23, v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v32 = (v19 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_1008B103C(v20, v33 + v31);
  *(v33 + v32) = v27;
  swift_bridgeObjectRetain_n();
  sub_10010FC20(&qword_1011A8290, &qword_100EED2E0);
  sub_10010FC20(&qword_1011A8298, &qword_100EED2E8);
  sub_100020674(&qword_1011A82A0, &qword_1011A8290, &qword_100EED2E0, &protocol conformance descriptor for [A]);
  sub_1008B114C();
  v34 = v100;
  ForEach<>.init(_:id:content:)();
  v35 = swift_allocObject();
  *(v35 + 16) = v101;
  *(v35 + 24) = v30;
  v36 = (v34 + *(v94 + 36));
  *v36 = sub_1001D3174;
  v36[1] = v35;
  v36[2] = 0;
  v36[3] = 0;
  v37 = *(v24 + 32);

  v38 = v30;
  if ((MenuType.style.getter(v37) & 1) == 0)
  {
    v101 = v23;
    v44 = *(v27 + 16);
    v45 = *(v24 + 32);

    if (MenuType.rawValue.getter(v45, v46) == 0x7463416B63697571 && v47 == 0xEB000000006E6F69)
    {

      if (v44 <= 1)
      {
LABEL_13:
        sub_1000089F8(v34, v87, &qword_1011A8278, &qword_100EED2A0);
        swift_storeEnumTagMultiPayload();
        v58 = sub_100020674(&qword_1011A8308, &qword_1011A8258, &qword_100EED280, &protocol conformance descriptor for ControlGroup<A>);
        v59 = sub_1008B1A7C(&qword_1011A8310, &type metadata accessor for MenuControlGroupStyle, &protocol conformance descriptor for MenuControlGroupStyle);
        v105 = v81;
        v106 = v84;
        v107 = v58;
        v108 = v59;
        swift_getOpaqueTypeConformance2();
        sub_1008B131C();
        _ConditionalContent<>.init(storage:)();
        goto LABEL_14;
      }
    }

    else
    {
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v48 & 1) == 0 || v44 < 2)
      {
        goto LABEL_13;
      }
    }

    __chkstk_darwin();
    v86 = sub_1008B131C();
    v49 = v72;
    ControlGroup.init(content:)();
    v50 = v74;
    MenuControlGroupStyle.init()();
    v51 = sub_100020674(&qword_1011A8308, &qword_1011A8258, &qword_100EED280, &protocol conformance descriptor for ControlGroup<A>);
    v52 = sub_1008B1A7C(&qword_1011A8310, &type metadata accessor for MenuControlGroupStyle, &protocol conformance descriptor for MenuControlGroupStyle);
    v53 = v75;
    v54 = v81;
    v55 = v84;
    View.controlGroupStyle<A>(_:)();
    (*(v76 + 8))(v50, v55);
    (*(v73 + 8))(v49, v54);
    v56 = v77;
    v57 = v83;
    (*(v77 + 16))(v87, v53, v83);
    swift_storeEnumTagMultiPayload();
    v105 = v54;
    v106 = v55;
    v107 = v51;
    v108 = v52;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v56 + 8))(v53, v57);
LABEL_14:
    v61 = v89;
    v60 = v90;
    v62 = *(v101 + 8) == 1;
    v63 = v92;
    v71[1] = v38;
    if (v62)
    {
      v64 = v78;
      Divider.init()();
      (*(v61 + 32))(v63, v64, v60);
      v65 = 0;
    }

    else
    {
      v65 = 1;
    }

    (*(v61 + 56))(v63, v65, 1, v60);
    v66 = v95;
    v67 = v88;
    sub_1000089F8(v95, v88, &qword_1011A8268, &qword_100EED290);
    v68 = v91;
    sub_1000089F8(v63, v91, &qword_1011A8248, &qword_100EED270);
    v69 = v93;
    sub_1000089F8(v67, v93, &qword_1011A8268, &qword_100EED290);
    v70 = sub_10010FC20(&qword_1011A8318, &qword_100EED308);
    sub_1000089F8(v68, v69 + *(v70 + 48), &qword_1011A8248, &qword_100EED270);
    sub_1000095E8(v68, &qword_1011A8248, &qword_100EED270);
    sub_1000095E8(v67, &qword_1011A8268, &qword_100EED290);
    sub_1000089F8(v69, v99, &qword_1011A8240, &qword_100EED268);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_1011A82F0, &qword_1011A8240, &qword_100EED268, &protocol conformance descriptor for TupleView<A>);
    sub_100020674(&qword_1011A82F8, &qword_1011A8230, &qword_100EED258, &protocol conformance descriptor for Menu<A, B>);
    v42 = v96;
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v69, &qword_1011A8240, &qword_100EED268);
    sub_1000095E8(v63, &qword_1011A8248, &qword_100EED270);
    sub_1000095E8(v66, &qword_1011A8268, &qword_100EED290);
    v34 = v100;
    goto LABEL_18;
  }

  __chkstk_darwin();
  __chkstk_darwin();
  sub_10010FC20(&qword_1011A82B8, &qword_100EED2F0);
  sub_1008B1264();
  sub_1008B131C();
  v39 = v85;
  Menu.init(content:label:)();
  v40 = v86;
  v41 = v79;
  (*(v86 + 16))(v99, v39, v79);
  swift_storeEnumTagMultiPayload();
  sub_100020674(&qword_1011A82F0, &qword_1011A8240, &qword_100EED268, &protocol conformance descriptor for TupleView<A>);
  sub_100020674(&qword_1011A82F8, &qword_1011A8230, &qword_100EED258, &protocol conformance descriptor for Menu<A, B>);
  v42 = v96;
  _ConditionalContent<>.init(storage:)();
  (*(v40 + 8))(v39, v41);
LABEL_18:
  sub_1000089F8(v42, v103, &qword_1011A8270, &qword_100EED298);
  swift_storeEnumTagMultiPayload();
  sub_1008B142C();
  _ConditionalContent<>.init(storage:)();

  sub_1000095E8(v42, &qword_1011A8270, &qword_100EED298);
  sub_1000095E8(v34, &qword_1011A8278, &qword_100EED2A0);
}

void sub_1008AF59C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v4 = ActionType.rawValue.getter(v3);
    v6 = v5;
  }

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1008AF5E4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a4;
  v66 = type metadata accessor for ActionMenuView(0);
  __chkstk_darwin();
  v8 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = sub_10010FC20(&qword_1011A8328, &qword_100EED318);
  __chkstk_darwin();
  v10 = &v57[-v9];
  v11 = type metadata accessor for DynamicTypeSize();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin();
  v15 = &v57[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1[1];
  v67 = *a1;
  v68 = v16;
  v17 = a1[3];
  v19 = a1[4];
  v18 = a1[5];
  v69 = a1[2];
  v70 = v19;
  v62 = v17;
  v63 = v18;
  v71 = a1[6];
  if (MenuType.rawValue.getter(*(*a2 + 32), v13) == 0x7463416B63697571 && v20 == 0xEB000000006E6F69)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (*(a3 + 16) >= 2uLL)
  {
    sub_1008B1510(v15);
    v23 = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v12 + 8))(v15, v11);
    v24 = v23 ^ 1;
    v25 = v67;
    if ((v67 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v26 = a2[2];
    v27 = a2[3];
    *v8 = v25 & 0x7FFFFFFFFFFFFFFFLL;
    v8[8] = 1;
    *(v8 + 2) = v26;
    *(v8 + 3) = v27;
    sub_1008B1778(v25, v68, v69, v62, v70, v63, v71);
    sub_100030444(v26, v27);
    type metadata accessor for ActionMenuView.Excluding();
    sub_1008B1A7C(&qword_1011A80B0, type metadata accessor for ActionMenuView.Excluding, &unk_100EED1D0);
    *(v8 + 4) = EnvironmentObject.init()();
    *(v8 + 5) = v28;
    v29 = *(v66 + 32);
    *&v8[v29] = swift_getKeyPath();
    sub_10010FC20(&qword_1011A8288, &qword_100EED2D8);
    swift_storeEnumTagMultiPayload();
    sub_1008B0FD8(v8, v10);
    swift_storeEnumTagMultiPayload();
    sub_1008B1208();
    sub_1008B1A7C(&qword_1011A8088, type metadata accessor for ActionMenuView, &unk_100EED208);
    _ConditionalContent<>.init(storage:)();
    return sub_1008B17CC(v8);
  }

LABEL_11:
  v24 = 0;
  v25 = v67;
  if (v67 < 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v60 = (v24 & 1) != 0 && *(a3 + 16) > 2uLL;
  v31 = a2[2];
  v32 = a2[3];
  v61 = v31;
  sub_100030444(v31, v32);

  v68(v90, v33);
  v34 = v91;
  v35 = v92;
  sub_10000954C(v90, v91);
  v88 = (*(v35 + 8))(v34, v35);
  v89[0] = v36;
  v37 = v91;
  v38 = v92;
  sub_10000954C(v90, v91);
  v39 = (*(v38 + 24))(v37, v38);
  v40 = 0;
  v89[1] = v39;
  v89[2] = v41;
  v42 = _swiftEmptyArrayStorage;
LABEL_16:
  v43 = &v89[2 * v40];
  while (++v40 != 3)
  {
    v44 = v43 + 2;
    v45 = *v43;
    v43 += 2;
    if (v45)
    {
      v59 = v10;
      v58 = v24;
      v46 = *(v44 - 3);

      v47 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_10089C4F8(0, *(v42 + 2) + 1, 1, v42);
      }

      v49 = *(v42 + 2);
      v48 = *(v42 + 3);
      if (v49 >= v48 >> 1)
      {
        v42 = sub_10089C4F8((v48 > 1), v49 + 1, 1, v42);
      }

      *(v42 + 2) = v49 + 1;
      v50 = &v42[16 * v49];
      *(v50 + 4) = v46;
      *(v50 + 5) = v45;
      v32 = v47;
      v24 = v58;
      v10 = v59;
      goto LABEL_16;
    }
  }

  sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
  swift_arrayDestroy();
  v79[0] = v42;
  sub_10010FC20(&unk_1011A9FA0, &unk_100EEC490);
  sub_100020674(&qword_1011AAA30, &unk_1011A9FA0, &unk_100EEC490, &protocol conformance descriptor for [A]);
  v51 = BidirectionalCollection<>.joined(separator:)();
  v53 = v52;

  sub_10000959C(v90);
  LOBYTE(v73) = v67;
  *(&v73 + 1) = v95[0];
  DWORD1(v73) = *(v95 + 3);
  *(&v73 + 1) = v68;
  *&v74 = v69;
  *(&v74 + 1) = v62;
  *&v75 = v70;
  *(&v75 + 1) = v63;
  *&v76 = v71;
  BYTE8(v76) = v60;
  BYTE9(v76) = v24 & 1;
  *(&v76 + 10) = v93;
  HIWORD(v76) = v94;
  *&v77 = v61;
  *(&v77 + 1) = v32;
  *&v78 = v51;
  *(&v78 + 1) = v53;
  LOBYTE(v79[0]) = v67;
  HIDWORD(v79[0]) = *(v95 + 3);
  *(v79 + 1) = v95[0];
  v79[1] = v68;
  v79[2] = v69;
  v79[3] = v62;
  v79[4] = v70;
  v79[5] = v63;
  v79[6] = v71;
  v80 = v60;
  v81 = v24 & 1;
  v82 = v93;
  v83 = v94;
  v84 = v61;
  v85 = v32;
  v86 = v51;
  v87 = v53;
  sub_1008B1828(&v73, &v72);
  sub_1008B1860(v79);
  v54 = v76;
  v10[2] = v75;
  v10[3] = v54;
  v55 = v78;
  v10[4] = v77;
  v10[5] = v55;
  v56 = v74;
  *v10 = v73;
  v10[1] = v56;
  swift_storeEnumTagMultiPayload();
  sub_1008B1208();
  sub_1008B1A7C(&qword_1011A8088, type metadata accessor for ActionMenuView, &unk_100EED208);
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1008AFCD8(uint64_t *a1)
{
  v2 = sub_10010FC20(&qword_1011A82D0, &qword_100EED2F8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - v4;
  sub_10010FC20(&qword_1011A8320, &qword_100EED310);
  __chkstk_darwin();
  v7 = v16 - v6;
  v8 = *a1;
  if (MenuType.image.getter(*(*a1 + 32)))
  {
    __chkstk_darwin();
    v16[-2] = a1;
    __chkstk_darwin();
    v16[-2] = v9;
    v10 = v9;
    Label.init(title:icon:)();
    (*(v3 + 16))(v7, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_1011A82C8, &qword_1011A82D0, &qword_100EED2F8, &protocol conformance descriptor for Label<A, B>);
    _ConditionalContent<>.init(storage:)();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v16[0] = MenuType.title.getter(*(v8 + 32));
    v16[1] = v12;
    sub_10000988C();
    *v7 = Text.init<A>(_:)();
    *(v7 + 1) = v13;
    v7[16] = v14 & 1;
    *(v7 + 3) = v15;
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_1011A82C8, &qword_1011A82D0, &qword_100EED2F8, &protocol conformance descriptor for Label<A, B>);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1008AFFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MenuType.title.getter(*(*a1 + 32));
  sub_10000988C();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1008B004C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A8340, &qword_100EED418);
  v2 = __chkstk_darwin();
  v4 = &v15[-v3 - 8];
  (*(v0 + 8))(v16, v2);
  v5 = v17;
  v6 = v18;
  sub_10000954C(v16, v17);
  if ((*(v6 + 48))(v5, v6))
  {
    static ButtonRole.destructive.getter();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for ButtonRole();
  (*(*(v8 - 8) + 56))(v4, v7, 1, v8);
  v9 = swift_allocObject();
  v10 = v1[3];
  v9[3] = v1[2];
  v9[4] = v10;
  v11 = v1[5];
  v9[5] = v1[4];
  v9[6] = v11;
  v12 = v1[1];
  v9[1] = *v1;
  v9[2] = v12;
  __chkstk_darwin();
  *(&v14 - 2) = v1;
  *(&v14 - 1) = v16;
  sub_1008B1828(v1, v15);
  sub_10010FC20(&qword_1011A8348, &qword_100EED420);
  sub_100020674(&qword_1011A8350, &qword_1011A8348, &qword_100EED420, &protocol conformance descriptor for Label<A, B>);
  Button.init(role:action:label:)();
  return sub_10000959C(v16);
}

uint64_t ActionMenuItemStyle.buttonRole.getter@<X0>(char a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    static ButtonRole.destructive.getter();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for ButtonRole();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

void sub_1008B0320(uint64_t a1)
{
  type metadata accessor for ActionMenu();
  if (v1 <= 0x3F)
  {
    sub_10002EFE0(319);
    if (v2 <= 0x3F)
    {
      sub_1008B03DC(319);
      if (v3 <= 0x3F)
      {
        sub_1008B0470(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1008B03DC(uint64_t a1)
{
  if (!qword_1011A81E8)
  {
    type metadata accessor for ActionMenuView.Excluding();
    sub_1008B1A7C(&qword_1011A80B0, type metadata accessor for ActionMenuView.Excluding, &unk_100EED1D0);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1011A81E8);
    }
  }
}

void sub_1008B0470(uint64_t a1)
{
  if (!qword_1011A81F0)
  {
    type metadata accessor for DynamicTypeSize();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1011A81F0);
    }
  }
}

double sub_1008B04E4(__n128 *a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v3 = &v11[-v2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  sub_1008B1828(a1, v11);
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  v7 = a1[3];
  *(v6 + 64) = a1[2];
  *(v6 + 80) = v7;
  v8 = a1[5];
  *(v6 + 96) = a1[4];
  *(v6 + 112) = v8;
  v9 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v9;
  sub_100A5932C(0, 0, v3, &unk_100EED450, v6);

  return result;
}

uint64_t sub_1008B0624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_1008B0730;

  return v8();
}

uint64_t sub_1008B0730()
{
  *(*v1 + 48) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1008B090C;
  }

  else
  {
    v4 = sub_1008B088C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1008B088C()
{
  v1 = *(v0 + 16);

  v3 = *(v1 + 64);
  if (v3)
  {
    v3(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1008B090C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008B0970(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011A8358, &qword_100EED428);
  sub_10010FC20(&qword_1011A8360, &qword_100EED430);
  sub_1008B1994();
  sub_1008B1AC4();
  return Label.init(title:icon:)();
}

uint64_t sub_1008B0A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A8378, &qword_100EED438);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9[-v6];
  v10 = a1;
  v11 = a2;
  sub_10010FC20(&qword_1011A8390, &qword_100EED440);
  sub_100020674(&qword_1011A8398, &qword_1011A8390, &qword_100EED440, &protocol conformance descriptor for TupleView<A>);
  LabelGroup.init(content:)();
  v12 = *(a1 + 80);
  sub_100020674(&qword_1011A8370, &qword_1011A8378, &qword_100EED438, &protocol conformance descriptor for LabelGroup<A>);
  sub_10000988C();
  View.accessibilityLabel<A>(_:)();
  return (*(v5 + 8))(v7, v4);
}

double sub_1008B0BEC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = a2[3];
  v7 = a2[4];
  sub_10000954C(a2, v6);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  (*(v7 + 16))(v6, v7);
  if (!v8)
  {
    v6 = a2[3];
    v7 = a2[4];
    sub_10000954C(a2, v6);
LABEL_4:
    (*(v7 + 8))(v6, v7);
  }

  sub_10000988C();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = a2[3];
  v16 = a2[4];
  sub_10000954C(a2, v17);
  (*(v16 + 24))(v17, v16);
  v18 = Text.init<A>(_:)();
  v20 = v19;
  LOBYTE(v16) = v21 & 1;
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  *(a3 + 48) = v21 & 1;
  *(a3 + 56) = v22;
  sub_10021D0C0(v9, v11, v13 & 1);

  sub_10021D0C0(v18, v20, v16);

  sub_10011895C(v18, v20, v16);

  sub_10011895C(v9, v11, v13 & 1);

  return result;
}

void sub_1008B0DC4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 57);
  v6 = a2[3];
  v7 = a2[4];
  sub_10000954C(a2, v6);
  if (v5)
  {
    v8 = (*(v7 + 40))(v6, v7);
    if (v8)
    {
      v12 = v8;
      v13 = v9;
      v14 = v10;
      v15 = v11;
      goto LABEL_6;
    }

    v6 = a2[3];
    v7 = a2[4];
    sub_10000954C(a2, v6);
  }

  v12 = (*(v7 + 32))(v6, v7);
  v13 = v16;
  v14 = v17;
  v15 = v18;
  if (!v12)
  {
    v20 = 0;
    goto LABEL_8;
  }

LABEL_6:

  v20 = v12(v19);
  sub_1008B1B40(v12, v13, v14, v15);

LABEL_8:
  *a3 = v20;
}

uint64_t sub_1008B0F0C(uint64_t a1)
{
  type metadata accessor for DynamicTypeSize();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t sub_1008B0FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008B103C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008B10A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionMenuView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1008AF5E4(a1, (v2 + v6), v7, a2);
}

unint64_t sub_1008B114C()
{
  result = qword_1011A82A8;
  if (!qword_1011A82A8)
  {
    sub_1001109D0(&qword_1011A8298, &qword_100EED2E8);
    sub_1008B1208();
    sub_1008B1A7C(&qword_1011A8088, type metadata accessor for ActionMenuView, &unk_100EED208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A82A8);
  }

  return result;
}

unint64_t sub_1008B1208()
{
  result = qword_1011A82B0;
  if (!qword_1011A82B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A82B0);
  }

  return result;
}

unint64_t sub_1008B1264()
{
  result = qword_1011A82C0;
  if (!qword_1011A82C0)
  {
    sub_1001109D0(&qword_1011A82B8, &qword_100EED2F0);
    sub_100020674(&qword_1011A82C8, &qword_1011A82D0, &qword_100EED2F8, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A82C0);
  }

  return result;
}

unint64_t sub_1008B131C()
{
  result = qword_1011A82D8;
  if (!qword_1011A82D8)
  {
    sub_1001109D0(&qword_1011A8278, &qword_100EED2A0);
    sub_1008B13A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A82D8);
  }

  return result;
}

unint64_t sub_1008B13A8()
{
  result = qword_1011A82E0;
  if (!qword_1011A82E0)
  {
    sub_1001109D0(&qword_1011A82E8, &qword_100EED300);
    sub_1008B114C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A82E0);
  }

  return result;
}

unint64_t sub_1008B142C()
{
  result = qword_1011A8300;
  if (!qword_1011A8300)
  {
    sub_1001109D0(&qword_1011A8270, &qword_100EED298);
    sub_100020674(&qword_1011A82F0, &qword_1011A8240, &qword_100EED268, &protocol conformance descriptor for TupleView<A>);
    sub_100020674(&qword_1011A82F8, &qword_1011A8230, &qword_100EED258, &protocol conformance descriptor for Menu<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8300);
  }

  return result;
}

uint64_t sub_1008B1510@<X0>(void *a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A8288, &qword_100EED2D8);
  __chkstk_darwin();
  v10 = &v15 - v9;
  sub_1000089F8(v3, &v15 - v9, &qword_1011A8288, &qword_100EED2D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1008B1748@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = Image.init(uiImage:)();
  *a1 = result;
  return result;
}

double sub_1008B1778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_1008B17CC(uint64_t a1)
{
  v2 = type metadata accessor for ActionMenuView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1008B18A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

unint64_t sub_1008B18CC()
{
  result = qword_1011A8330;
  if (!qword_1011A8330)
  {
    sub_1001109D0(&qword_1011A8338, &qword_100EED3C0);
    sub_1008B142C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8330);
  }

  return result;
}

unint64_t sub_1008B1994()
{
  result = qword_1011A8368;
  if (!qword_1011A8368)
  {
    sub_1001109D0(&qword_1011A8358, &qword_100EED428);
    sub_100020674(&qword_1011A8370, &qword_1011A8378, &qword_100EED438, &protocol conformance descriptor for LabelGroup<A>);
    sub_1008B1A7C(&qword_1011A8380, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8368);
  }

  return result;
}

uint64_t sub_1008B1A7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1008B1AC4()
{
  result = qword_1011A8388;
  if (!qword_1011A8388)
  {
    sub_1001109D0(&qword_1011A8360, &qword_100EED430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8388);
  }

  return result;
}

double sub_1008B1B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1008B1B8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_1008B0624(a1, v4, v5, v1 + 32);
}

UIMenu_optional __swiftcall ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  ActionMenuBuilder.menu(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v5 = v4;
  v7 = v6;
  preferredElementSize = _swiftEmptyArrayStorage;
  ActionMenu.elements(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v10 = v9;

  v11 = *(v10 + 16);
  if (v11)
  {
    v39 = v7;
    v41 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = 32;
    v13 = v11;
    do
    {
      v14 = *(v10 + v12);
      v15 = *(v10 + v12 + 16);
      v16 = *(v10 + v12 + 32);
      v43 = *(v10 + v12 + 48);
      v42[1] = v15;
      v42[2] = v16;
      v42[0] = v14;
      sub_1008B2DC0(v42, &title._object);
      v17._rawValue = excluding._rawValue;
      sub_1008B1FD4(v5, v11, v17, includeUnsupported);
      sub_1008B2E1C(v42);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 += 56;
      --v13;
    }

    while (v13);

    v18 = v41;
    v7 = v39;
    preferredElementSize = _swiftEmptyArrayStorage;
  }

  else
  {

    v18 = _swiftEmptyArrayStorage;
  }

  v19 = 0;
  title._object = _swiftEmptyArrayStorage;
  v20 = v18[2];
  while (v20 != v19)
  {
    if (v19 >= v18[2])
    {
      __break(1u);
LABEL_28:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_29;
      }

LABEL_15:
      v24 = *(v5 + 32);
      title._countAndFlagsBits = MenuType.title.getter(*(v5 + 32));
      v26 = v25;
      v27 = MenuType.image.getter(v24);
      v28 = (MenuType.style.getter(v24) & 1) == 0;
      if (v19)
      {
        v30 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v30 = *((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (MenuType.rawValue.getter(v24, v29) == 0x7463416B63697571 && v31 == 0xEB000000006E6F69)
      {

        if (v30 <= 1)
        {
          goto LABEL_25;
        }

LABEL_24:
        v33 = 1;
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) != 0 && v30 >= 2)
        {
          goto LABEL_24;
        }

LABEL_25:
        v33 = 2;
      }

      sub_100009F78(0, &qword_1011A7DA8, UIMenu_ptr);
      v34._countAndFlagsBits = title._countAndFlagsBits;
      v34._object = v26;
      v45.value.super.isa = v27;
      v45.is_nil = 0;
      v35.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v34, 0, v45, v28, v33, preferredElementSize, v38).super.super.isa;

      goto LABEL_30;
    }

    v21 = v18[v19++ + 4];
    if (v21)
    {
      v22 = v21;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((title._object & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((title._object & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      preferredElementSize = title._object;
    }
  }

  v7(v23);
  v19 = preferredElementSize >> 62;
  if (preferredElementSize >> 62)
  {
    goto LABEL_28;
  }

  if (*((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_29:

  v35.super.super.isa = 0;
LABEL_30:
  isa = v35.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v36;
  return result;
}

id sub_1008B1FD4(uint64_t a1, uint64_t a2, Swift::OpaquePointer excluding, char a4)
{
  v6 = *v4;
  if (*v4 < 0)
  {
    v15 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v16 = ActionMenu.uiMenu(excluding:includeUnsupported:)(excluding, a4 & 1);
    v17 = v16;
    if (v16)
    {
      v18 = v16;
      _StringGuts.grow(_:)(20);

      v93 = 0xD000000000000012;
      v94 = 0x8000000100E5A9C0;
      String.append(_:)(v15[1]);
      if (qword_1011A6B58 != -1)
      {
        swift_once();
      }

      v93 = qword_1011AFC00;
      v94 = *algn_1011AFC08;

      v19._countAndFlagsBits = 46;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);

      v20._countAndFlagsBits = 0xD000000000000012;
      v20._object = 0x8000000100E5A9C0;
      String.append(_:)(v20);

      v21 = String._bridgeToObjectiveC()();

      [v18 setAccessibilityIdentifier:v21];
    }

    return v17;
  }

  v86 = v4[5];
  v87 = v4[6];
  v10 = v4[3];
  v9 = v4[4];
  v84 = v4[1];
  v85 = v4[2];
  v84(&v93, a1, a2, excluding._rawValue);
  v13 = MenuType.rawValue.getter(*(a1 + 32), v11) == 0x7463416B63697571 && v12 == 0xEB000000006E6F69;
  v91 = v6;
  if (v13)
  {

    if (a4)
    {
LABEL_16:
      v24 = 0;
LABEL_17:
      v25 = v95;
      v26 = v96;
      sub_10000954C(&v93, v95);
      v27 = (*(v26 + 32))(v25, v26);
      v89 = v28;
      v30 = v29;
      v90 = v31;
      goto LABEL_18;
    }
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14 & 1) == 0 || (a4)
    {
      goto LABEL_16;
    }
  }

  if (a2 < 2)
  {
    goto LABEL_16;
  }

  v22 = [objc_opt_self() currentTraitCollection];
  v23 = [v22 preferredContentSizeCategory];

  LOBYTE(v22) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v22)
  {
    goto LABEL_16;
  }

  v42 = v95;
  v43 = v96;
  sub_10000954C(&v93, v95);
  v44 = (*(v43 + 40))(v42, v43);
  v90 = v47;
  if (!v44)
  {
    v24 = 1;
    goto LABEL_17;
  }

  v27 = v44;
  v30 = v46;
  v89 = v45;
  v24 = 1;
LABEL_18:
  v32 = v10();
  if (v33 == 1)
  {
    v34 = 0;
  }

  else
  {
    sub_10089840C(v32, v33);
    v34 = 1;
  }

  v35 = v95;
  v36 = v96;
  sub_10000954C(&v93, v95);
  v37 = (*(v36 + 48))(v35, v36);
  v38 = v34 | 2;
  if ((v37 & 1) == 0)
  {
    v38 = v34;
  }

  v83 = v38;
  if (a2 <= 2)
  {
    v24 = 0;
  }

  v39 = v95;
  v40 = v96;
  sub_10000954C(&v93, v95);
  if (v24 != 1)
  {
    goto LABEL_31;
  }

  (*(v40 + 16))(v39, v40);
  if (!v41)
  {
    v39 = v95;
    v40 = v96;
    sub_10000954C(&v93, v95);
LABEL_31:
    (*(v40 + 8))(v39, v40);
  }

  v48 = v10;
  v49 = v95;
  v50 = v96;
  sub_10000954C(&v93, v95);
  (*(v50 + 24))(v49, v50);
  v88 = v30;
  v51 = v9;
  if (v27)
  {

    v30(v52);
  }

  sub_100009F78(0, &qword_1011A7D90, UIAction_ptr);
  v53 = v95;
  v54 = v96;
  sub_10000954C(&v93, v95);
  v55 = (*(v54 + 56))(v53, v54);
  v56 = swift_allocObject();
  v56[2] = v91;
  v56[3] = v84;
  v56[4] = v85;
  v56[5] = v48;
  v56[6] = v51;
  v56[7] = v86;
  v56[8] = v87;

  v82 = v56;
  v81 = v55;
  v57 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v58 = v95;
  v59 = v96;
  sub_10000954C(&v93, v95);
  v60 = *(v59 + 8);
  v17 = v57;
  v60(v58, v59);
  v92[0] = v61;
  v62 = v95;
  v63 = v96;
  sub_10000954C(&v93, v95);
  v64 = (*(v63 + 24))(v62, v63);
  v65 = 0;
  v92[1] = v64;
  v92[2] = v66;
  v67 = _swiftEmptyArrayStorage;
LABEL_35:
  v68 = &v92[2 * v65];
  while (++v65 != 3)
  {
    v69 = v68 + 2;
    v70 = *v68;
    v68 += 2;
    if (v70)
    {
      v71 = *(v69 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_10089C4F8(0, *(v67 + 2) + 1, 1, v67);
      }

      v73 = *(v67 + 2);
      v72 = *(v67 + 3);
      if (v73 >= v72 >> 1)
      {
        v67 = sub_10089C4F8((v72 > 1), v73 + 1, 1, v67);
      }

      *(v67 + 2) = v73 + 1;
      v74 = &v67[16 * v73];
      *(v74 + 4) = v71;
      *(v74 + 5) = v70;
      goto LABEL_35;
    }
  }

  sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
  swift_arrayDestroy();
  sub_10010FC20(&unk_1011A9FA0, &unk_100EEC490);
  sub_1008B2E78();
  BidirectionalCollection<>.joined(separator:)();

  v75 = String._bridgeToObjectiveC()();

  [v17 setAccessibilityLabel:{v75, 0, v83, v81, sub_1008B2E70, v82}];

  _StringGuts.grow(_:)(20);

  v76._countAndFlagsBits = ActionType.rawValue.getter(v91);
  String.append(_:)(v76);

  if (qword_1011A6B58 != -1)
  {
    swift_once();
  }

  v77._countAndFlagsBits = 46;
  v77._object = 0xE100000000000000;
  String.append(_:)(v77);

  v78._countAndFlagsBits = 0xD000000000000012;
  v78._object = 0x8000000100E5A9C0;
  String.append(_:)(v78);

  v79 = String._bridgeToObjectiveC()();

  [v17 setAccessibilityIdentifier:v79];
  sub_1008B1B40(v27, v89, v88, v90);

  sub_10000959C(&v93);
  return v17;
}

UIMenu_optional __swiftcall ActionMenu.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v3 = v2;
  ActionMenu.elements(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v8 = v7;
  v9 = v6;
  v10 = *(v7 + 16);
  preferredElementSize = _swiftEmptyArrayStorage;
  if (v10)
  {
    v42 = v6;
    v45 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = 32;
    v13 = v10;
    do
    {
      v14 = *(v8 + v12);
      v15 = *(v8 + v12 + 16);
      v16 = *(v8 + v12 + 32);
      v47 = *(v8 + v12 + 48);
      v46[1] = v15;
      v46[2] = v16;
      v46[0] = v14;
      sub_1008B2DC0(v46, v44);
      v17._rawValue = excluding._rawValue;
      sub_1008B1FD4(v2, v10, v17, includeUnsupported);
      sub_1008B2E1C(v46);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 += 56;
      --v13;
    }

    while (v13);

    v18 = v45;
    v9 = v42;
    preferredElementSize = _swiftEmptyArrayStorage;
  }

  else
  {

    v18 = _swiftEmptyArrayStorage;
  }

  v19 = 0;
  v44[0] = _swiftEmptyArrayStorage;
  v20 = v18[2];
  while (v20 != v19)
  {
    if (v19 >= v18[2])
    {
      __break(1u);
LABEL_28:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_29;
      }

LABEL_15:
      v24 = *(v2 + 32);
      v25 = MenuType.title.getter(*(v2 + 32));
      v27 = v26;
      v29 = *(v3 + 40);
      v28 = *(v3 + 48);

      v30 = MenuType.image.getter(v24);
      v31 = (MenuType.style.getter(v24) & 1) == 0;
      if (!includeUnsupported)
      {
        if (v19)
        {
          v43 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v43 = *((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (MenuType.rawValue.getter(v24, v32) == 0x7463416B63697571 && v33 == 0xEB000000006E6F69)
        {

          goto LABEL_23;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v34)
        {
LABEL_23:
          if (v43 > 1)
          {
            v35 = 1;
LABEL_26:
            sub_100009F78(0, &qword_1011A7DA8, UIMenu_ptr);
            v36._countAndFlagsBits = v25;
            v36._object = v27;
            v37.value._countAndFlagsBits = v29;
            v37.value._object = v28;
            v49.value.super.isa = v30;
            v49.is_nil = 0;
            v38.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v36, v37, v49, v31, v35, preferredElementSize, v41).super.super.isa;

            goto LABEL_30;
          }
        }
      }

      v35 = 2;
      goto LABEL_26;
    }

    v21 = v18[v19++ + 4];
    if (v21)
    {
      v22 = v21;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      preferredElementSize = v44[0];
    }
  }

  v9(v23);
  v19 = preferredElementSize >> 62;
  if (preferredElementSize >> 62)
  {
    goto LABEL_28;
  }

  if (*((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_29:

  v38.super.super.isa = 0;
LABEL_30:
  isa = v38.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v39;
  return result;
}

double sub_1008B2B58(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = *(a2 + 16);
  *(v7 + 32) = *a2;
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a2 + 32);
  *(v7 + 80) = *(a2 + 48);
  sub_100A5932C(0, 0, v4, &unk_100EED468, v7);

  return result;
}

uint64_t sub_1008B2CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1003EF7D4;

  return v8();
}

unint64_t sub_1008B2E78()
{
  result = qword_1011AAA30;
  if (!qword_1011AAA30)
  {
    sub_1001109D0(&unk_1011A9FA0, &unk_100EEC490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAA30);
  }

  return result;
}

uint64_t sub_1008B2EDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_1008B2CB8(a1, v4, v5, v1 + 32);
}

uint64_t static ActionMenu.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void ActionMenuBuilder.menu(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v144 = type metadata accessor for UUID();
  v6 = *(v144 - 8);
  __chkstk_darwin();
  v143 = v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = 0;
  v147 = 0xE000000000000000;
  v8._countAndFlagsBits = 8254;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = v2[1];
  v148[0] = *v2;
  v148[1] = v9;
  v148[2] = v2[2];
  _print_unlocked<A, B>(_:_:)();
  v10 = v146;
  v11 = v147;
  v12 = sub_10089C4F8(0, 1, 1, _swiftEmptyArrayStorage);
  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v16 = swift_allocObject();
    *(v12 + 16) = v15;
    v17 = v12 + 16 * v14;
    *(v17 + 32) = v10;
    *(v17 + 40) = v11;
    v16[2] = v12;
    v18 = (v16 + 2);
    v19 = (*(v3 + 32))();

    v20 = sub_1008BC4F0(v19, v16 + 2, a1, a2 & 1);

    if (!*(v20 + 16))
    {
      if (!*(*v18 + 16))
      {
        __break(1u);
        goto LABEL_100;
      }

      sub_1008BCD0C(1, 1, 0xD00000000000001CLL, 0x8000000100E5A9E0);
    }

    v125 = v16;
    *&v148[0] = v20;
    v124 = v20;

    sub_1008BC144(v148);
    v123[1] = 0;
    v14 = 0x654D6E6F69746341;
    v128 = *&v148[0];
    sub_10010FC20(&qword_1011A83C8, &qword_100EED470);
    inited = swift_initStackObject();
    v138 = xmmword_100EBC6B0;
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = 0;
    v11 = inited + 32;
    v22 = *(v3 + 16);
    v16 = *(v3 + 24);

    v10 = v143;
    UUID.init()();
    v15 = UUID.uuidString.getter();
    v24 = v23;
    v25 = v6[1];
    v142 = v6 + 1;
    v140 = v25;
    v25(v10, v144);
    v139 = type metadata accessor for ActionMenu();
    v26 = swift_allocObject();
    *(v26 + 88) = 0;
    *(v26 + 96) = 0;
    *(v26 + 16) = v15;
    *(v26 + 24) = v24;
    *(v26 + 32) = 0;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    strcpy(v148, "ActionMenu: ");
    BYTE13(v148[0]) = 0;
    HIWORD(v148[0]) = -5120;

    v12 = v148;
    v141 = v22;
    v27._countAndFlagsBits = v22;
    v27._object = v16;
    String.append(_:)(v27);

    v28 = *(&v148[0] + 1);
    *(v26 + 56) = *&v148[0];
    *(v26 + 64) = v28;
    *(v26 + 80) = _swiftEmptyArrayStorage;
    *(v26 + 72) = 1;
    *(inited + 40) = v26;
    v6 = sub_1008BCDE8(inited);
    swift_setDeallocating();
    a1 = v128;
    sub_1008BCEDC(inited + 32);
    v127 = *(a1 + 16);
    if (!v127)
    {
      break;
    }

    v3 = 0;
    v126 = a1 + 32;
    a2 = 56;
    while (1)
    {
      v13 = *(a1 + 16);
      if (v3 >= v13)
      {
        break;
      }

      v29 = (v126 + 56 * v3);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[2];
      v11 = v29[3];
      v10 = v29[4];
      v33 = v29[5];
      v14 = v29[6];
      if (*v29 < 0)
      {
        v34 = *((v30 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        if ((v34 - 1) >= 0xA)
        {
          if (!*((v30 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
          {
            goto LABEL_9;
          }

          if (v34 == 11)
          {
            v12 = 4;
          }

          else
          {
            v12 = 6;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = byte_100EED90A[v30];
      }

      v15 = v6[2];
      v135 = v30;
      v136 = v31;
      v137 = v32;
      v35 = v33;
      sub_1008B1778(v30, v31, v32, v11, v10, v33, v14);
      v36 = v35;
      v134 = v14;
      if (!v15 || (v15 = v12, v37 = sub_1008B636C(v12), v36 = v35, (v38 & 1) == 0))
      {
        v131 = v3;
        v133 = v10;
        v132 = v12;
        if ((v12 - 1) >= 0xA)
        {
          if (v12)
          {
            v44 = v36;
            v45 = v11;
            v47 = 0;
            if (v12 == 11)
            {
              v46 = 4;
            }

            else
            {
              v46 = 6;
            }

            goto LABEL_24;
          }

          sub_1008BCF44(v135, v136, v137, v11, v10, v36, v14);
          goto LABEL_8;
        }

        v44 = v36;
        v45 = v11;
        v46 = 0;
        v47 = 1;
LABEL_24:
        v48 = sub_10010FC20(&unk_1011A7E80, &unk_100EEC4F0);
        v49 = swift_allocObject();
        *(v49 + 16) = v138;
        v50 = v136;
        *(v49 + 32) = v135;
        *(v49 + 40) = v50;
        *(v49 + 48) = v137;
        *(v49 + 56) = v45;
        v51 = v133;
        *(v49 + 64) = v133;
        *(v49 + 72) = v44;
        v52 = v134;
        *(v49 + 80) = v134;

        v129 = v45;
        v53 = v45;
        v14 = v52;
        v130 = v44;
        sub_1008B1778(v135, v136, v137, v53, v51, v44, v52);
        v54 = v143;
        UUID.init()();
        v55 = UUID.uuidString.getter();
        v57 = v56;
        v140(v54, v144);
        v58 = swift_allocObject();
        *(v58 + 88) = 0;
        *(v58 + 96) = 0;
        *(v58 + 16) = v55;
        *(v58 + 24) = v57;
        v59 = v132;
        *(v58 + 32) = v132;
        *(v58 + 40) = 0;
        *(v58 + 48) = 0;
        strcpy(v148, "ActionMenu: ");
        BYTE13(v148[0]) = 0;
        HIWORD(v148[0]) = -5120;
        v60._countAndFlagsBits = v141;
        v60._object = v16;
        String.append(_:)(v60);

        v61 = *(&v148[0] + 1);
        *(v58 + 56) = *&v148[0];
        *(v58 + 64) = v61;
        *(v58 + 80) = v49;
        *(v58 + 72) = 1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v148[0] = v6;
        sub_1008B9628(v58, v59, isUniquelyReferenced_nonNull_native);
        v6 = *&v148[0];
        if (*(*&v148[0] + 16))
        {
          v63 = sub_1008B636C(v46);
          if (v64)
          {
LABEL_40:
            v12 = *(v6[7] + 8 * v63);

            swift_beginAccess();
            v15 = *(v12 + 80);
            v85 = swift_isUniquelyReferenced_nonNull_native();
            *(v12 + 80) = v15;
            a1 = v128;
            v11 = v129;
            if ((v85 & 1) == 0)
            {
              v15 = sub_10089C604(0, *(v15 + 16) + 1, 1, v15);
              *(v12 + 80) = v15;
            }

            v10 = *(v15 + 16);
            v86 = *(v15 + 24);
            if (v10 >= v86 >> 1)
            {
              v15 = sub_10089C604((v86 > 1), v10 + 1, 1, v15);
            }

            *(v15 + 16) = v10 + 1;
            a2 = 56;
            v87 = v15 + 56 * v10;
            *(v87 + 32) = v58 | 0x8000000000000000;
            *(v87 + 40) = 0u;
            *(v87 + 56) = 0u;
            *(v87 + 72) = 0u;
            *(v12 + 80) = v15;
            swift_endAccess();

            sub_1008BCF44(v135, v136, v137, v11, v133, v130, v14);

            v3 = v131;
            goto LABEL_9;
          }
        }

        while (2)
        {
          while (2)
          {
            v65 = swift_allocObject();
            *(v65 + 16) = v138;
            *(v65 + 32) = v58 | 0x8000000000000000;
            *(v65 + 40) = 0u;
            *(v65 + 56) = 0u;
            *(v65 + 72) = 0u;

            v66 = v143;
            UUID.init()();
            v67 = UUID.uuidString.getter();
            v69 = v68;
            v140(v66, v144);
            v58 = swift_allocObject();
            *(v58 + 88) = 0;
            *(v58 + 96) = 0;
            *(v58 + 16) = v67;
            *(v58 + 24) = v69;
            *(v58 + 32) = v46;
            *(v58 + 40) = 0;
            *(v58 + 48) = 0;
            strcpy(v148, "ActionMenu: ");
            BYTE13(v148[0]) = 0;
            HIWORD(v148[0]) = -5120;
            v70._countAndFlagsBits = v141;
            v70._object = v16;
            String.append(_:)(v70);

            v71 = *(&v148[0] + 1);
            *(v58 + 56) = *&v148[0];
            *(v58 + 64) = v71;
            *(v58 + 80) = v65;
            *(v58 + 72) = 1;

            v72 = swift_isUniquelyReferenced_nonNull_native();
            *&v148[0] = v6;
            v73 = sub_1008B636C(v46);
            v75 = v6[2];
            v76 = (v74 & 1) == 0;
            v77 = __OFADD__(v75, v76);
            v78 = v75 + v76;
            if (v77)
            {
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              if (v6[2])
              {
                v94 = sub_1008B636C(0);
                if (v95)
                {
                  v11 = *(v6[7] + 8 * v94);
                  v96 = *(v48 + 80);

                  v97 = v143;
                  UUID.init()();
                  v98 = UUID.uuidString.getter();
                  v100 = v99;
                  v140(v97, v144);
                  v101 = swift_allocObject();
                  *(v101 + 88) = 0;
                  *(v101 + 96) = 0;
                  *(v101 + 16) = v98;
                  *(v101 + 24) = v100;
                  *(v101 + 32) = 6;
                  *(v101 + 40) = 0;
                  *(v101 + 48) = 0;
                  strcpy(v148, "ActionMenu: ");
                  BYTE13(v148[0]) = 0;
                  HIWORD(v148[0]) = -5120;

                  v102._countAndFlagsBits = v141;
                  v102._object = v16;
                  String.append(_:)(v102);

                  v103 = *(&v148[0] + 1);
                  *(v101 + 56) = *&v148[0];
                  *(v101 + 64) = v103;
                  *(v101 + 80) = v96;
                  *(v101 + 72) = 1;
                  v20 = v101 | 0x8000000000000000;
                  swift_beginAccess();
                  v18 = *(v11 + 80);
                  v104 = swift_isUniquelyReferenced_nonNull_native();
                  *(v11 + 80) = v18;
                  if (v104)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_101;
                }

                goto LABEL_68;
              }

              goto LABEL_93;
            }

            v79 = v74;
            if (v6[3] < v78)
            {
              sub_1008B6DCC(v78, v72);
              v73 = sub_1008B636C(v46);
              if ((v79 & 1) != (v80 & 1))
              {
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);

                __break(1u);
                return;
              }

              goto LABEL_31;
            }

            if (v72)
            {
LABEL_31:
              v6 = *&v148[0];
              if (v79)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v81 = v73;
              sub_1008BA72C();
              v73 = v81;
              v6 = *&v148[0];
              if (v79)
              {
LABEL_32:
                *(v6[7] + 8 * v73) = v58;

                if (v47)
                {
                  continue;
                }

LABEL_37:
                if (v6[2])
                {
                  v63 = sub_1008B636C(0);
                  if (v84)
                  {
                    v14 = v134;
                    goto LABEL_40;
                  }
                }

                continue;
              }
            }

            break;
          }

          v6[(v73 >> 6) + 8] |= 1 << v73;
          *(v6[6] + v73) = v46;
          *(v6[7] + 8 * v73) = v58;
          v82 = v6[2];
          v77 = __OFADD__(v82, 1);
          v83 = v82 + 1;
          if (v77)
          {
            goto LABEL_60;
          }

          v6[2] = v83;
          if ((v47 & 1) == 0)
          {
            goto LABEL_37;
          }

          continue;
        }
      }

      v14 = v11;
      v12 = *(v6[7] + 8 * v37);
      swift_beginAccess();
      v15 = *(v12 + 80);

      v39 = swift_isUniquelyReferenced_nonNull_native();
      *(v12 + 80) = v15;
      v11 = v10;
      if ((v39 & 1) == 0)
      {
        v15 = sub_10089C604(0, *(v15 + 16) + 1, 1, v15);
        *(v12 + 80) = v15;
      }

      v10 = *(v15 + 16);
      v40 = *(v15 + 24);
      v41 = v137;
      v42 = v136;
      if (v10 >= v40 >> 1)
      {
        v88 = sub_10089C604((v40 > 1), v10 + 1, 1, v15);
        v42 = v136;
        v41 = v137;
        v15 = v88;
      }

      *(v15 + 16) = v10 + 1;
      a2 = 56;
      v43 = (v15 + 56 * v10);
      v43[4] = v135;
      v43[5] = v42;
      v43[6] = v41;
      v43[7] = v14;
      v43[8] = v11;
      v43[9] = v35;
      v43[10] = v134;
      *(v12 + 80) = v15;
      swift_endAccess();

LABEL_8:
      a1 = v128;
LABEL_9:
      if (++v3 == v127)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_88:
    v12 = sub_10089C4F8((v13 > 1), v15, 1, v12);
  }

LABEL_53:

  if (!v6[2])
  {
    goto LABEL_97;
  }

  v89 = sub_1008B636C(12);
  if (v90)
  {
    v48 = *(v6[7] + 8 * v89);
    swift_beginAccess();
    if (*(*(v48 + 80) + 16) <= 2uLL)
    {
      v91 = v6[2];

      if (v91)
      {
        sub_1008B636C(6);
        if ((v92 & 1) == 0)
        {
          goto LABEL_61;
        }

        swift_beginAccess();

        sub_1008A6144(v93);
        swift_endAccess();
        while (1)
        {

LABEL_68:
          if (!v6[2])
          {
            break;
          }

          v108 = sub_1008B636C(6);
          if ((v109 & 1) == 0)
          {
            break;
          }

          v18 = *(v6[7] + 8 * v108);
          swift_beginAccess();
          v110 = *(v18 + 10);
          v20 = *(v110 + 16);
          if (!v20)
          {
            break;
          }

          v11 = 0;
          v111 = 32;
          while (v11 < *(v110 + 16))
          {
            v113 = *(v110 + v111);
            if (v113 < 0)
            {
              v18 = 0xE800000000000000;
              switch(*((v113 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
              {
                case 1:
                  v18 = 0xEB000000006E6F69;
                  goto LABEL_73;
                case 2:
                  v18 = 0xE300000000000000;
                  goto LABEL_73;
                case 3:
                  v18 = 0xE700000000000000;
                  goto LABEL_73;
                case 6:
                  v18 = 0xEA00000000006E6FLL;
                  goto LABEL_73;
                case 7:
                  v18 = 0xE500000000000000;
                  goto LABEL_73;
                case 8:
                  v18 = 0xE900000000000067;
                  goto LABEL_73;
                case 9:
                  v18 = 0xE90000000000006ELL;
                  goto LABEL_73;
                case 0xA:
                  v18 = 0xEB00000000657669;
                  goto LABEL_73;
                case 0xB:
                  v18 = 0xEC00000074726F53;
                  goto LABEL_73;
                case 0xC:

                  goto LABEL_90;
                default:
LABEL_73:
                  v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v112 & 1) == 0)
                  {
                    goto LABEL_74;
                  }

LABEL_90:

                  if (v6[2])
                  {
                    sub_1008B636C(6);
                    if (v114)
                    {
                      swift_beginAccess();

                      sub_1008B49E0(v11, v148);
                      swift_endAccess();
                      sub_1008B2E1C(v148);
                    }
                  }

                  break;
              }

              goto LABEL_93;
            }

LABEL_74:
            ++v11;
            v111 += 56;
            if (v20 == v11)
            {

              goto LABEL_94;
            }
          }

LABEL_100:
          __break(1u);
LABEL_101:
          v18 = sub_10089C604(0, *(v18 + 2) + 1, 1, v18);
          *(v11 + 80) = v18;
LABEL_64:
          v106 = *(v18 + 2);
          v105 = *(v18 + 3);
          if (v106 >= v105 >> 1)
          {
            v18 = sub_10089C604((v105 > 1), v106 + 1, 1, v18);
          }

          *(v18 + 2) = v106 + 1;
          v107 = &v18[56 * v106];
          *(v107 + 4) = v20;
          *(v107 + 40) = 0u;
          *(v107 + 56) = 0u;
          *(v107 + 72) = 0u;
          *(v11 + 80) = v18;
          swift_endAccess();
        }
      }

LABEL_93:
    }
  }

LABEL_94:
  if (v6[2] && (sub_1008B636C(0), (v115 & 1) != 0))
  {
  }

  else
  {
LABEL_97:
    v116 = v143;
    UUID.init()();
    v117 = UUID.uuidString.getter();
    v119 = v118;
    v140(v116, v144);
    v120 = swift_allocObject();
    *(v120 + 88) = 0;
    *(v120 + 96) = 0;
    *(v120 + 16) = v117;
    *(v120 + 24) = v119;
    *(v120 + 32) = 0;
    *(v120 + 40) = 0;
    *(v120 + 48) = 0;
    strcpy(v145, "ActionMenu: ");
    BYTE5(v145[1]) = 0;
    HIWORD(v145[1]) = -5120;
    v121._countAndFlagsBits = v141;
    v121._object = v16;
    String.append(_:)(v121);

    v122 = v145[1];
    *(v120 + 56) = v145[0];
    *(v120 + 64) = v122;
    *(v120 + 80) = v124;
    *(v120 + 72) = 1;
  }
}

void ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(uint64_t *__return_ptr a1@<X8>, Swift::String a2@<0:X2, 8:X3>, uint64_t a3@<X0>, void *a4@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>)
{
  strcpy(v15, "ActionMenu: ");
  BYTE5(v15[1]) = 0;
  HIWORD(v15[1]) = -5120;
  if (a2._object)
  {
    object = a2._object;
  }

  else
  {

    a2._countAndFlagsBits = a3;
    object = a4;
  }

  v12._countAndFlagsBits = a2._countAndFlagsBits;
  v12._object = object;
  String.append(_:)(v12);

  v13 = v15[0];
  v14 = v15[1];
  *a1 = a3;
  a1[1] = a4;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = a5;
  a1[5] = a6;
}

double sub_1008B4248@<D0>(void *a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[6];
  v57 = a1[5];
  if (((1 << v6) & 0xF8FFFFD7FFE7FLL) == 0)
  {
    v56 = a1[1];
    v40 = a3;
    if (((1 << v6) & 0x700000000180) != 0)
    {
      v41 = sub_100898654();
      v42 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v41);
    }

    else
    {
      v48 = sub_100898600();
      v42 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v48);
    }

    a3 = v40;
    v7 = v56;
    if ((v42 & 1) == 0)
    {
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall != 1)
      {
        goto LABEL_40;
      }

      _StringGuts.grow(_:)(29);

      v49._countAndFlagsBits = ActionType.rawValue.getter(v6);
      String.append(_:)(v49);

      v50._object = 0x8000000100E5AAC0;
      v50._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v50);
      v16 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_10089C4F8(0, *(v16 + 2) + 1, 1, v16);
        *a2 = v16;
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      v20 = v19 + 1;
      if (v19 < v18 >> 1)
      {
        goto LABEL_39;
      }

LABEL_6:
      v16 = sub_10089C4F8((v18 > 1), v19 + 1, 1, v16);
      *a2 = v16;
      goto LABEL_39;
    }
  }

  if (!sub_1009F9398(v6, a3))
  {
    v54 = a2;
    v55 = v7;
    v53 = v8;
    v21 = v9();
    if (v22 == 1)
    {
      v23._countAndFlagsBits = ActionType.rawValue.getter(v6);
      String.append(_:)(v23);

      v24 = *a2;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v24;
      if ((v25 & 1) == 0)
      {
        v24 = sub_10089C4F8(0, *(v24 + 2) + 1, 1, v24);
        *a2 = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_10089C4F8((v26 > 1), v27 + 1, 1, v24);
        *a2 = v24;
      }

      *(v24 + 2) = v27 + 1;
      v28 = &v24[16 * v27];
      *(v28 + 4) = 0x20939CE22020;
      *(v28 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v55;
      a5[2] = v53;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v57;
      a5[6] = v11;
    }

    else
    {
      v29 = v21;
      v30 = v22;
      if ((a4 & 1) == 0)
      {
        v43._countAndFlagsBits = ActionType.rawValue.getter(v6);
        String.append(_:)(v43);

        v44._countAndFlagsBits = 2108704;
        v44._object = 0xE300000000000000;
        String.append(_:)(v44);
        if (!v30)
        {
          sub_10089840C(v29, 0);
          v30 = 0xE700000000000000;
          v29 = 0x6E776F6E6B6E75;
        }

        v45._countAndFlagsBits = v29;
        v45._object = v30;
        String.append(_:)(v45);

        v16 = *v54;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *v54 = v16;
        if ((v46 & 1) == 0)
        {
          v16 = sub_10089C4F8(0, *(v16 + 2) + 1, 1, v16);
          *v54 = v16;
        }

        v19 = *(v16 + 2);
        v47 = *(v16 + 3);
        v20 = v19 + 1;
        if (v19 >= v47 >> 1)
        {
          v16 = sub_10089C4F8((v47 > 1), v19 + 1, 1, v16);
          *v54 = v16;
        }

        goto LABEL_39;
      }

      _StringGuts.grow(_:)(44);

      v31._countAndFlagsBits = ActionType.rawValue.getter(v6);
      String.append(_:)(v31);

      v32._countAndFlagsBits = 0xD000000000000022;
      v32._object = 0x8000000100E5AA90;
      String.append(_:)(v32);
      if (!v30)
      {
        sub_10089840C(v29, 0);
        v30 = 0xE700000000000000;
        v29 = 0x6E776F6E6B6E75;
      }

      v33._countAndFlagsBits = v29;
      v33._object = v30;
      String.append(_:)(v33);

      v34 = *v54;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      *v54 = v34;
      if ((v35 & 1) == 0)
      {
        v34 = sub_10089C4F8(0, *(v34 + 2) + 1, 1, v34);
        *v54 = v34;
      }

      v37 = *(v34 + 2);
      v36 = *(v34 + 3);
      if (v37 >= v36 >> 1)
      {
        v34 = sub_10089C4F8((v36 > 1), v37 + 1, 1, v34);
        *v54 = v34;
      }

      *(v34 + 2) = v37 + 1;
      v38 = &v34[16 * v37];
      *(v38 + 4) = 0x20939CE22020;
      *(v38 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v55;
      a5[2] = v8;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v57;
      a5[6] = v11;
    }

    return result;
  }

  _StringGuts.grow(_:)(17);

  v14._countAndFlagsBits = ActionType.rawValue.getter(v6);
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x756C637865202D20;
  v15._object = 0xEB00000000646564;
  String.append(_:)(v15);
  v16 = *a2;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v16;
  if ((v17 & 1) == 0)
  {
    v16 = sub_10089C4F8(0, *(v16 + 2) + 1, 1, v16);
    *a2 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  v20 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    goto LABEL_6;
  }

LABEL_39:
  *(v16 + 2) = v20;
  v52 = &v16[16 * v19];
  *(v52 + 4) = 544743456;
  *(v52 + 5) = 0xE400000000000000;
LABEL_40:
  *a5 = 0xF000000000000000;
  result = 0.0;
  *(a5 + 1) = 0u;
  *(a5 + 3) = 0u;
  *(a5 + 5) = 0u;
  return result;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v17 = swift_allocObject();
  *(v17 + 88) = 0;
  *(v17 + 96) = 0;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v21, "ActionMenu: ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v18._countAndFlagsBits = a6;
  v18._object = a2;
  String.append(_:)(v18);

  v19 = v21[1];
  *(v17 + 56) = v21[0];
  *(v17 + 64) = v19;
  *(v17 + 80) = a8;
  *(v17 + 72) = a9 & 1;
  return v17;
}

uint64_t sub_1008B49E0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1008BC0A4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 48);
    v13 = *(v9 + 16);
    v12 = *(v9 + 32);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v12;
    *(a2 + 48) = v11;
  }

  return result;
}

uint64_t sub_1008B4A9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1008BC0E0(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1008B4B28@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1008BC0F4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_1008BDE58(&v5[2 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, Swift::String a6, uint64_t a7, char a8)
{
  v9 = v8;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  strcpy(v16, "ActionMenu: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (a6._object)
  {
    object = a6._object;
  }

  else
  {
    object = a2;

    a6._countAndFlagsBits = a1;
  }

  v13._countAndFlagsBits = a6._countAndFlagsBits;
  v13._object = object;
  String.append(_:)(v13);

  v14 = v16[1];
  *(v9 + 56) = v16[0];
  *(v9 + 64) = v14;
  *(v9 + 80) = a7;
  *(v9 + 72) = a8 & 1;
  return v9;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v22, "ActionMenu: ");
  BYTE5(v22[1]) = 0;
  HIWORD(v22[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v18._countAndFlagsBits = a6;
  v18._object = a2;
  String.append(_:)(v18);

  v19 = v22[1];
  *(v17 + 56) = v22[0];
  *(v17 + 64) = v19;
  *(v17 + 72) = a8 & 1;
  *(v17 + 96) = a10;
  *(v17 + 80) = _swiftEmptyArrayStorage;
  *(v17 + 88) = a9;
  return v17;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, Swift::String a6, char a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  strcpy(v19, "ActionMenu: ");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  if (a6._object)
  {
    object = a6._object;
  }

  else
  {
    object = a2;

    a6._countAndFlagsBits = a1;
  }

  v14._countAndFlagsBits = a6._countAndFlagsBits;
  v14._object = object;
  String.append(_:)(v14);

  v15 = v19[1];
  *(v10 + 56) = v19[0];
  *(v10 + 64) = v15;
  *(v10 + 72) = a7 & 1;
  v16 = *(v10 + 88);
  v17 = *(v10 + 96);
  *(v10 + 88) = a8;
  *(v10 + 96) = a9;

  sub_100020438(v16, v17);

  *(v10 + 80) = _swiftEmptyArrayStorage;
  return v10;
}

uint64_t MetricsEvent.Dialog.message.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void ActionMenu.elements(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v52 = 0;
  v53 = 0xE000000000000000;
  v4._countAndFlagsBits = 8254;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v61 = v2;
  type metadata accessor for ActionMenu();
  _print_unlocked<A, B>(_:_:)();
  v5 = 0;
  v6 = 0xE000000000000000;
  v7 = sub_10089C4F8(0, 1, 1, _swiftEmptyArrayStorage);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v10 = (v9 + 1);
  if (v9 >= v8 >> 1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v11 = swift_allocObject();
    *(v7 + 2) = v10;
    v12 = &v7[16 * v9];
    *(v12 + 4) = v5;
    *(v12 + 5) = v6;
    *(v11 + 16) = v7;
    v48 = (v11 + 16);
    v13 = *(v3 + 88);
    if (v13)
    {
      v14 = *(v3 + 96);

      v16 = v13(v15);
      sub_100020438(v13, v14);
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
    }

    swift_beginAccess();
    v44 = v3;
    v52 = v16;

    sub_1008A6144(v17);
    v9 = v52;
    v60 = &_swiftEmptySetSingleton;
    v18 = *(v52 + 2);

    v47 = v18;
    if (!v18)
    {
      break;
    }

    v19 = 0;
    v5 = 0;
    v7 = (v9 + 40);
    v10 = _swiftEmptyArrayStorage;
    v46 = v9;
    while (1)
    {
      v8 = *(v9 + 16);
      if (v19 >= v8)
      {
        break;
      }

      v51 = v19;
      v21 = *(v7 - 1);
      v20 = *v7;
      v6 = *(v7 + 1);
      v3 = *(v7 + 2);
      v22 = *(v7 + 3);
      v23 = *(v7 + 4);
      v24 = *(v7 + 5);
      v52 = v21;
      v53 = v20;
      v54 = v6;
      v55 = v3;
      v56 = v22;
      v57 = v23;
      v58 = v24;
      sub_1008B1778(v21, v20, v6, v3, v22, v23, v24);
      if (sub_1008B531C(&v52, v48, a1, a2 & 1, &v60))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v10;
        v45 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100899F00(0, *(v10 + 2) + 1, 1);
          v10 = v59;
        }

        v26 = v6;
        v27 = v20;
        v28 = v3;
        v29 = v22;
        v30 = v23;
        v31 = v24;
        v32 = v21;
        v34 = *(v10 + 2);
        v33 = *(v10 + 3);
        v35 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          sub_100899F00((v33 > 1), v34 + 1, 1);
          v35 = v34 + 1;
          v32 = v21;
          v31 = v24;
          v30 = v23;
          v29 = v22;
          v28 = v3;
          v27 = v20;
          v26 = v6;
          v10 = v59;
        }

        *(v10 + 2) = v35;
        v36 = &v10[56 * v34];
        *(v36 + 4) = v32;
        *(v36 + 5) = v27;
        *(v36 + 6) = v26;
        *(v36 + 7) = v28;
        *(v36 + 8) = v29;
        *(v36 + 9) = v30;
        *(v36 + 10) = v31;
        v5 = v45;
      }

      else
      {
        sub_1008BCF44(v21, v20, v6, v3, v22, v23, v24);
      }

      v19 = v51 + 1;
      v7 += 56;
      v9 = v46;
      if (v47 == v51 + 1)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    v7 = sub_10089C4F8((v8 > 1), v10, 1, v7);
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_17:
  v37 = v10;

  if (a2)
  {
    v38 = v10;
    v39 = v48;
    sub_1008BCA1C(v38, v48, &v60);
    v41 = v40;

    v37 = v41;
    v42 = v44;
    if (*(v37 + 2))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v42 = v44;
    v39 = v48;
    if (*(v37 + 2))
    {
      goto LABEL_23;
    }
  }

  if (!*(*v39 + 2))
  {
    __break(1u);
    return;
  }

  sub_1008BCD0C(1, 1, 0xD00000000000001CLL, 0x8000000100E5A9E0);
LABEL_23:
  if (*(v42 + 72) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1008BC0A4(v37);
    }

    v43 = *(v37 + 2);
    v52 = v37 + 32;
    v53 = v43;
    sub_1008BC1D8(&v52, sub_1008BE030, sub_1008BE014);
  }
}

uint64_t sub_1008B531C(uint64_t *a1, char **a2, uint64_t a3, char a4, uint64_t *a5)
{
  v5 = *a1;
  if (*a1 < 0)
  {
    return 1;
  }

  v6 = a1[3];
  if (((1 << v5) & 0xF8FFFFD7FFE7FLL) != 0)
  {
LABEL_3:
    v10 = sub_1009F9398(v5, a3);
    if (v10)
    {
      _StringGuts.grow(_:)(17);

      v11._countAndFlagsBits = ActionType.rawValue.getter(v5);
      String.append(_:)(v11);

      v12 = 0x756C637865202D20;
      v13 = 0xEB00000000646564;
      goto LABEL_5;
    }

    v22 = v6(v10);
    if (v23 == 1)
    {
      if (a4)
      {
        ActionType.mutuallyExclusiveActions.getter(v5);
        if (!v24)
        {
          v24 = &_swiftEmptySetSingleton;
        }

        sub_1008B58F4(v24);
        sub_1009938F0(v5);
      }

      v25._countAndFlagsBits = ActionType.rawValue.getter(v5);
      String.append(_:)(v25);

      v14 = 0x20939CE22020;
      v15 = 0xA600000000000000;
      v16 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_10089C4F8(0, *(v16 + 2) + 1, 1, v16);
        *a2 = v16;
      }

      v19 = *(v16 + 2);
      v27 = *(v16 + 3);
      v20 = v19 + 1;
      if (v19 < v27 >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v28 = v23;
      v29 = v22;
      if (a4 & 1) == 0 || (v30 = *a5, , v31 = sub_10096A060(v5, v30), , (v31))
      {
        v32._countAndFlagsBits = ActionType.rawValue.getter(v5);
        String.append(_:)(v32);

        v33._countAndFlagsBits = 2108704;
        v33._object = 0xE300000000000000;
        String.append(_:)(v33);
        if (v28)
        {
          v34 = v29;
        }

        else
        {
          sub_10089840C(v29, 0);
          v28 = 0xE700000000000000;
          v34 = 0x6E776F6E6B6E75;
        }

        v38 = v28;
        String.append(_:)(*&v34);

        v14 = 544743456;
        v15 = 0xE400000000000000;
        v16 = *a2;
        v39 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v16;
        if ((v39 & 1) == 0)
        {
          v16 = sub_10089C4F8(0, *(v16 + 2) + 1, 1, v16);
          *a2 = v16;
        }

        v19 = *(v16 + 2);
        v18 = *(v16 + 3);
        v20 = v19 + 1;
        if (v19 < v18 >> 1)
        {
          result = 0;
          goto LABEL_31;
        }

LABEL_47:
        v16 = sub_10089C4F8((v18 > 1), v20, 1, v16);
        result = 0;
        goto LABEL_48;
      }

      ActionType.mutuallyExclusiveActions.getter(v5);
      if (!v41)
      {
        v41 = &_swiftEmptySetSingleton;
      }

      sub_1008B58F4(v41);
      _StringGuts.grow(_:)(44);

      v42._countAndFlagsBits = ActionType.rawValue.getter(v5);
      String.append(_:)(v42);

      v43._countAndFlagsBits = 0xD000000000000022;
      v43._object = 0x8000000100E5AA90;
      String.append(_:)(v43);
      if (v28)
      {
        v44 = v29;
      }

      else
      {
        sub_10089840C(v29, 0);
        v28 = 0xE700000000000000;
        v44 = 0x6E776F6E6B6E75;
      }

      v48 = v28;
      String.append(_:)(*&v44);

      v14 = 0x20939CE22020;
      v15 = 0xA600000000000000;
      v16 = *a2;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v16;
      if ((v49 & 1) == 0)
      {
        v16 = sub_10089C4F8(0, *(v16 + 2) + 1, 1, v16);
        *a2 = v16;
      }

      v19 = *(v16 + 2);
      v27 = *(v16 + 3);
      v20 = v19 + 1;
      if (v19 < v27 >> 1)
      {
LABEL_18:
        result = 1;
        goto LABEL_31;
      }
    }

    v16 = sub_10089C4F8((v27 > 1), v20, 1, v16);
    result = 1;
LABEL_48:
    *a2 = v16;
    goto LABEL_31;
  }

  v35 = a3;
  if (((1 << v5) & 0x700000000180) != 0)
  {
    v36 = sub_100898654();
    v37 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v36);
    a3 = v35;
    if (v37)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v45 = sub_100898600();
    v46 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v45);
    a3 = v35;
    if (v46)
    {
      goto LABEL_3;
    }
  }

  if (qword_1011A70E8 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    _StringGuts.grow(_:)(29);

    v47._countAndFlagsBits = ActionType.rawValue.getter(v5);
    String.append(_:)(v47);

    v13 = 0x8000000100E5AAC0;
    v12 = 0xD000000000000017;
LABEL_5:
    String.append(_:)(*&v12);
    v14 = 544743456;
    v15 = 0xE400000000000000;
    v16 = *a2;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v16;
    if ((v17 & 1) == 0)
    {
      v16 = sub_10089C4F8(0, *(v16 + 2) + 1, 1, v16);
      *a2 = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    v20 = v19 + 1;
    if (v19 < v18 >> 1)
    {
      result = 0;
LABEL_31:
      *(v16 + 2) = v20;
      v40 = &v16[16 * v19];
      *(v40 + 4) = v14;
      *(v40 + 5) = v15;
      return result;
    }

    goto LABEL_47;
  }

  return 0;
}

void sub_1008B58F4(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1009FFD28(&v10, *(*(a1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1008B59D0(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);

  if (v7)
  {
    v9 = 0;
    v23 = (v3 + 16);
    v10 = (v3 + 8);
    v11 = (v6 + 40);
    *&v8 = 136446210;
    v20 = v8;
    v21 = v10;
    v22 = v7;
    while (v9 < *(v6 + 16))
    {
      v12 = *v11;
      v24 = *(v11 - 1);
      if (qword_1011A6758 != -1)
      {
        swift_once();
      }

      v13 = sub_1000060E4(v2, qword_1011A83B0);
      (*v23)(v5, v13, v2);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = v2;
        v18 = v6;
        v19 = swift_slowAlloc();
        v25 = v19;
        *v16 = v20;
        *(v16 + 4) = sub_100010678(v24, v12, &v25);
        _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s", v16, 0xCu);
        sub_10000959C(v19);
        v6 = v18;
        v2 = v17;
        v7 = v22;

        v10 = v21;
      }

      (*v10)(v5, v2);
      ++v9;
      v11 += 2;
      if (v7 == v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

uint64_t ActionMenu.append(_:)(__int128 *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 80) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_10089C604(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + 80) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_10089C604((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  v7 = &v3[56 * v6];
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  *(v7 + 10) = *(a1 + 6);
  *(v7 + 3) = v9;
  *(v7 + 4) = v10;
  *(v7 + 2) = v8;
  *(v1 + 80) = v3;
  swift_endAccess();
  return sub_1008B2DC0(a1, v12);
}

Swift::Void __swiftcall ActionMenu.append(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  swift_beginAccess();

  sub_1008A6144(v1);
  swift_endAccess();
}

void *ActionMenu.deinit()
{

  sub_100020438(*(v0 + 88), *(v0 + 96));
  return v0;
}

uint64_t ActionMenu.__deallocating_deinit()
{

  sub_100020438(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

double sub_1008B5E40@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t sub_1008B5E50()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t ActionMenu.Item.menuItemConfiguring.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ActionMenu.Item.execute.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t (*ActionMenuItemImage.init(systemName:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  return sub_1008BCFB4;
}

uint64_t sub_1008B5FF8(uint64_t a1, uint64_t a2)
{

  return Image.init(systemName:)();
}

uint64_t (*ActionMenuItemImage.init(uiImage:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_1008BD018;
}

uint64_t sub_1008B60D8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    return Image.init(uiImage:)();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008B61B8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  if (v1)
  {
    return Image.init(uiImage:)();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008B621C(uint64_t a1, uint64_t a2)
{

  return Image.init(_internalSystemName:)();
}

id sub_1008B626C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() *a3];

  return v5;
}

uint64_t sub_1008B62C4(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1008B62F0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011A83B0);
  sub_1000060E4(v0, qword_1011A83B0);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1008B636C(uint64_t a1)
{
  Hasher.init(_seed:)();
  MenuType.rawValue.getter(a1, v2);
  String.hash(into:)();

  v3 = Hasher._finalize()();

  return sub_1008B6584(a1, v3);
}

unint64_t sub_1008B63F4(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1008BD148(&qword_1011A8548, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1008B6960(a1, v2);
}

unint64_t sub_1008B6478(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1006BF5E8(a1, v4, &qword_1011AB020, UIView_ptr);
}

unint64_t sub_1008B64C8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1006BF5E8(a1, v4, &qword_1011A8538, MPCPlayerPath_ptr);
}

unint64_t sub_1008B6518(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 + 1);
  v2 = Hasher._finalize()();
  return sub_1006BF6B4(a1, v2);
}

unint64_t sub_1008B6584(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x6C6576654C706F74;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x7463416B63697571;
          v7 = 0xEB000000006E6F69;
          break;
        case 2:
          v7 = 0xE300000000000000;
          v8 = 7368564;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x7972617262696CLL;
          break;
        case 4:
          v8 = 0x7473696C79616C70;
          break;
        case 5:
          v8 = 0x6B63616279616C70;
          break;
        case 6:
          v8 = 0x697461676976616ELL;
          v7 = 0xEA00000000006E6FLL;
          break;
        case 7:
          v7 = 0xE500000000000000;
          v8 = 0x6574736174;
          break;
        case 8:
          v8 = 0x6E6974726F706572;
          v7 = 0xE900000000000067;
          break;
        case 9:
          v7 = 0xE90000000000006ELL;
          v8 = 0x6F697463416E6970;
          break;
        case 0xA:
          v8 = 0x7463757274736564;
          v7 = 0xEB00000000657669;
          break;
        case 0xB:
          v8 = 0x7473696C79616C70;
          v7 = 0xEC00000074726F53;
          break;
        case 0xC:
          v7 = 0xE400000000000000;
          v8 = 1867804519;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x6C6576654C706F74;
      switch(a1)
      {
        case 1:
          v9 = 0xEB000000006E6F69;
          if (v8 == 0x7463416B63697571)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 2:
          v9 = 0xE300000000000000;
          if (v8 != 7368564)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 3:
          v9 = 0xE700000000000000;
          if (v8 != 0x7972617262696CLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 4:
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 5:
          if (v8 != 0x6B63616279616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 6:
          v9 = 0xEA00000000006E6FLL;
          if (v8 != 0x697461676976616ELL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 7:
          v9 = 0xE500000000000000;
          if (v8 != 0x6574736174)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 8:
          v9 = 0xE900000000000067;
          if (v8 != 0x6E6974726F706572)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 9:
          v9 = 0xE90000000000006ELL;
          if (v8 != 0x6F697463416E6970)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 10:
          v10 = 0x7463757274736564;
          v9 = 0xEB00000000657669;
          goto LABEL_38;
        case 11:
          v9 = 0xEC00000074726F53;
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 12:
          v9 = 0xE400000000000000;
          if (v8 != 1867804519)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        default:
LABEL_38:
          if (v8 != v10)
          {
            goto LABEL_40;
          }

LABEL_39:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_40:
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1008B6960(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1008BD148(&qword_1011A8550, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void sub_1008B6B0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A8620, &qword_100EED8E8);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1008B6DCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A8648, &qword_100EED900);
  v31 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v31 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      v15 = Hasher._finalize()();
      v16 = -1 << *(v7 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v16) >> 6;
        while (++v18 != v27 || (v26 & 1) == 0)
        {
          v28 = v18 == v27;
          if (v18 == v27)
          {
            v18 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v18);
          if (v29 != -1)
          {
            v19 = __clz(__rbit64(~v29)) + (v18 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + v19) = v24;
      *(*(v7 + 56) + 8 * v19) = v25;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1008B71C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A8628, &qword_100EED8F0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_100016270((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_1000160F8(v23, &v37);
        sub_10000DD18(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_100016270(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1008B747C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A8610, &qword_100EED8D8);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

void sub_1008B76FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A8608, &qword_100EED8D0);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1008B79A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10010FC20(&qword_1011A7728, &qword_100EEAA18);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1008BD148(&qword_1011A8548, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1008B7D6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&unk_1011A85F0, &unk_100EED8B8);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_100016270(v21, v33);
      }

      else
      {
        sub_10000DD18(v21, v33);
        v22 = v20;
      }

      v23 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      sub_100016270(v33, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1008B7FE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v42 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  __chkstk_darwin();
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10010FC20(&qword_1011A85D8, &qword_100EED8A8);
  v43 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v38 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v44 = (v7 + 32);
    v18 = v10 + 64;
    v41 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v45 = *(v7 + 72);
      v25 = v24 + v45 * v23;
      if (v43)
      {
        (*v44)(v46, v25, v6);
        v26 = *(v9 + 56);
        v27 = *(v42 + 72);
        sub_1008BDD2C(v26 + v27 * v23, v47);
      }

      else
      {
        (*v39)(v46, v25, v6);
        v28 = *(v9 + 56);
        v27 = *(v42 + 72);
        sub_1008BDDF4(v28 + v27 * v23, v47);
      }

      sub_1008BD148(&qword_1011A8548, &protocol conformance descriptor for UUID);
      v29 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v11 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v44)((*(v11 + 48) + v45 * v19), v46, v6);
      sub_1008BDD2C(v47, *(v11 + 56) + v27 * v19);
      ++*(v11 + 16);
      v7 = v40;
      v9 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1008B8434(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A85C8, &qword_100EFD380);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_100016270(v24, v35);
      }

      else
      {
        sub_10000DD18(v24, v35);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_100016270(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1008B86EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A8540, &unk_100EED820);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      v23 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1008B895C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = sub_10010FC20(&qword_1011A85A0, &qword_100EED870);
  v5 = *(v53 - 8);
  __chkstk_darwin();
  v52 = &v41 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10010FC20(&qword_1011A85A8, &qword_100EED878);
  v48 = v4;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      sub_1008BD148(&qword_1011A8548, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1008B8DF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A8578, &qword_100EED848);
  v46 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v43 = v3;
    v44 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v45 = v5;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v49 = *(*(v5 + 48) + v20);
      v21 = *(v5 + 56) + 56 * v20;
      v48 = *v21;
      v23 = *(v21 + 8);
      v22 = *(v21 + 16);
      v25 = *(v21 + 24);
      v24 = *(v21 + 32);
      v26 = *(v21 + 40);
      v27 = *(v21 + 48);
      if ((v46 & 1) == 0)
      {
        v28 = v23;
        v29 = v22;
        v30 = v25;
        v31 = v24;
        v32 = v26;
        v33 = v27;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v49 + 1);
      v34 = Hasher._finalize()();
      v35 = -1 << *(v7 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v13 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v15 = v27;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v13 + 8 * v37);
          if (v41 != -1)
          {
            v14 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v36) & ~*(v13 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v15 = v27;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v49;
      v16 = *(v7 + 56) + 56 * v14;
      *v16 = v48;
      *(v16 + 8) = v23;
      *(v16 + 16) = v22;
      *(v16 + 24) = v25;
      *(v16 + 32) = v24;
      *(v16 + 40) = v26;
      *(v16 + 48) = v15;
      ++*(v7 + 16);
      v5 = v45;
      v11 = v47;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v19 = v44[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v47 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v46)
    {
      v42 = 1 << *(v5 + 32);
      if (v42 >= 64)
      {
        bzero(v44, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v44 = -1 << v42;
      }

      *(v5 + 16) = 0;
    }

    v3 = v43;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1008B90F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = type metadata accessor for SocialProfile();
  v5 = *(v46 - 8);
  __chkstk_darwin();
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10010FC20(&qword_1011A8530, &unk_100EED810);
  v43 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if (v43)
      {
        (*v44)(v45, v28, v46);
      }

      else
      {
        (*v40)(v45, v28, v46);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1008B9478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10001FD3C(a3, a4, sub_10000F930);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1008B6B0C(v18, a5 & 1);
      v13 = sub_10001FD3C(a3, a4, sub_10000F930);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1008BA5B4();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

void sub_1008B9628(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1008B636C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1008B6DCC(v14, a3 & 1);
      v9 = sub_1008B636C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1008BA72C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_1008B9774(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001FD3C(a2, a3, sub_10000F930);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1008B76FC(v16, a4 & 1);
      v11 = sub_10001FD3C(a2, a3, sub_10000F930);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1008BAB78();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1008B9918(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1008B63F4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1008BACE8();
      goto LABEL_7;
    }

    sub_1008B79A4(v17, a3 & 1);
    v23 = sub_1008B63F4(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1008BA320(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

_OWORD *sub_1008B9AE4(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1008B6478(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1008BAF5C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1008B7D6C(v13, a3 & 1);
    v8 = sub_1008B6478(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_100009F78(0, &qword_1011AB020, UIView_ptr);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_10000959C(v19);

    return sub_100016270(a1, v19);
  }

  else
  {
    sub_1006C7BCC(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1008B9C34(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1008B63F4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1008BB0DC();
      goto LABEL_7;
    }

    sub_1008B7FE4(v17, a3 & 1);
    v24 = sub_1008B63F4(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1008BA3D8(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8) + 72) * v14;

  return sub_1008BDD90(a1, v22);
}

void sub_1008B9E1C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001FD3C(a2, a3, sub_10000F930);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1008BB3E0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1008B8434(v16, a4 & 1);
    v11 = sub_10001FD3C(a2, a3, sub_10000F930);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000959C(v22);

    sub_100016270(a1, v22);
  }

  else
  {
    sub_1006C77C0(v11, a2, a3, a1, v21);
  }
}

void sub_1008B9F94(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1008B64C8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1008B86EC(v13, a3 & 1);
      v8 = sub_1008B64C8(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100009F78(0, &qword_1011A8538, MPCPlayerPath_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1008BB6D4();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    swift_unknownObjectRelease();
    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  v21 = a2;
}

uint64_t sub_1008BA110(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1008B63F4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1008BB838();
      goto LABEL_7;
    }

    sub_1008B895C(v17, a3 & 1);
    v28 = sub_1008B63F4(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1008BA4B4(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_10010FC20(&qword_1011A85A0, &qword_100EED870);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1008BA320(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1008BA3D8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  result = sub_1008BDD2C(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1008BA4B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_10010FC20(&qword_1011A85A0, &qword_100EED870);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void sub_1008BA5B4()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A8620, &qword_100EED8E8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1008BA72C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A8648, &qword_100EED900);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1008BA888()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A8628, &qword_100EED8F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1000160F8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000DD18(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_100016270(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1008BAA2C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A8610, &qword_100EED8D8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1008BAB78()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A8608, &qword_100EED8D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1008BACE8()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  __chkstk_darwin();
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A7728, &qword_100EEAA18);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v33 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v35 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v34;
        v20 = *(v34 + 72) * v18;
        v22 = v31;
        v21 = v32;
        (*(v34 + 16))(v31, *(v3 + 48) + v20, v32);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v33;
        (*(v19 + 32))(*(v33 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v25 = v23;
        v13 = v35;
      }

      while (v35);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v27;
        v5 = v33;
        goto LABEL_18;
      }

      v17 = *(v28 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1008BAF5C()
{
  v1 = v0;
  sub_10010FC20(&unk_1011A85F0, &unk_100EED8B8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_10000DD18(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100016270(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1008BB0DC()
{
  v1 = v0;
  v35 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  __chkstk_darwin();
  v34 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UUID();
  v36 = *(v33 - 8);
  __chkstk_darwin();
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A85D8, &qword_100EED8A8);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v30 = v36 + 32;
    v31 = v36 + 16;
    v16 = v32;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v36;
        v22 = *(v36 + 72) * v20;
        v23 = v33;
        (*(v36 + 16))(v16, *(v4 + 48) + v22, v33);
        v24 = v34;
        v25 = *(v35 + 72) * v20;
        sub_1008BDDF4(*(v4 + 56) + v25, v34);
        v26 = v37;
        (*(v21 + 32))(*(v37 + 48) + v22, v16, v23);
        sub_1008BDD2C(v24, *(v26 + 56) + v25);
        v14 = v38;
      }

      while (v38);
    }

    v18 = v10;
    v6 = v37;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v28;
        goto LABEL_18;
      }

      v19 = *(v29 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1008BB3E0()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A85C8, &qword_100EFD380);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000DD18(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100016270(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void sub_1008BB584()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A85B0, &qword_100EED880);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1008BB6D4()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A8540, &unk_100EED820);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1008BB838()
{
  v1 = v0;
  v41 = sub_10010FC20(&qword_1011A85A0, &qword_100EED870);
  v44 = *(v41 - 8);
  __chkstk_darwin();
  v40 = &v30 - v2;
  v39 = type metadata accessor for UUID();
  v43 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A85A8, &qword_100EED878);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1008BBB94()
{
  sub_10010FC20(&qword_1011A8578, &qword_100EED848);
  v30 = v0;
  v1 = *v0;
  v31 = static _DictionaryStorage.copy(original:)();
  if (*(v1 + 16))
  {
    v2 = (v31 + 64);
    v3 = ((1 << *(v31 + 32)) + 63) >> 6;
    if (v31 != v1 || v2 >= v1 + 64 + 8 * v3)
    {
      memmove(v2, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v31 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = *(v1 + 56) + 56 * v14;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        v20 = *(v15 + 32);
        v21 = *(v15 + 40);
        v22 = *(v15 + 48);
        *(*(v31 + 48) + v14) = *(*(v1 + 48) + v14);
        v23 = *(v31 + 56) + 56 * v14;
        *v23 = v16;
        *(v23 + 8) = v17;
        *(v23 + 16) = v18;
        *(v23 + 24) = v19;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        *(v23 + 48) = v22;
        v24 = v17;
        v25 = v18;
        v26 = v19;
        v27 = v20;
        v28 = v21;
        v29 = v22;
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v31;
  }
}

void sub_1008BBD50()
{
  v1 = v0;
  v35 = type metadata accessor for SocialProfile();
  v37 = *(v35 - 8);
  __chkstk_darwin();
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A8530, &unk_100EED810);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

uint64_t sub_1008BBFD0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_10089CF3C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_100014824(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

void sub_1008BC144(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100AA5028(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = v2 + 32;
  v4[1] = v3;
  sub_1008BC1D8(v4, sub_1008BE030, sub_1008BE014);
  *a1 = v2;
}

void sub_1008BC1D8(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), void (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = _minimumMergeRunLength(_:)(v6);
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      if (v6 <= 1)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v6 / 2;
      }

      v11[0] = v9 + 4;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      v10[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    a3(0, v6, 1, a1);
  }
}

uint64_t sub_1008BC2E0(void *(*a1)(void *__return_ptr), uint64_t a2, void (*a3)(void *__return_ptr, void *))
{
  v4 = a1(v29);
  a3(v26, v4);
  v5 = v30;
  v6 = v31;
  sub_10000954C(v29, v30);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = v8;
  v10 = v27;
  v11 = v28;
  sub_10000954C(v26, v27);
  if (v7 == (*(v11 + 8))(v10, v11) && v9 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v16 = v30;
  v17 = v31;
  sub_10000954C(v29, v30);
  v18 = (*(v17 + 24))(v16, v17);
  v20 = v19;
  v21 = v27;
  v22 = v28;
  sub_10000954C(v26, v27);
  v23 = (*(v22 + 24))(v21, v22);
  if (v20)
  {
    if (v24)
    {
      if (v18 == v23 && v20 == v24)
      {

        v15 = 1;
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (!v24)
    {
      v15 = 1;
      goto LABEL_18;
    }

    v15 = 0;
  }

LABEL_18:
  sub_10000959C(v26);
  sub_10000959C(v29);
  return v15 & 1;
}

char *sub_1008BC4F0(uint64_t a1, char **a2, uint64_t a3, int a4)
{
  v29 = a4;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = (a1 + 40);
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v8[5];
    v12 = *v8;
    LOBYTE(v25[0]) = *(v8 - 8);
    v25[1] = v12;
    v21 = *(v8 + 3);
    v26 = *(v8 + 1);
    v27 = v21;
    v28 = v11;

    sub_1008B4248(v25, a2, a3, v29 & 1, v23);
    if (v4)
    {
      break;
    }

    if (*&v23[0] >> 60 != 15)
    {
      v22 = v23[0];
      v19 = v23[2];
      v20 = v23[1];
      v13 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10089C604(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      v16 = v22;
      if (v15 >= v14 >> 1)
      {
        v17 = sub_10089C604((v14 > 1), v15 + 1, 1, v9);
        v16 = v22;
        v9 = v17;
      }

      *(v9 + 2) = v15 + 1;
      v10 = &v9[56 * v15];
      *(v10 + 2) = v16;
      *(v10 + 3) = v20;
      *(v10 + 4) = v19;
      *(v10 + 10) = v13;
    }

    v8 += 7;
    if (!--v5)
    {
      return v9;
    }
  }

  return v9;
}

char *sub_1008BC6F0(char *result, int64_t a2)
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

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
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

    v4 = sub_10089CF3C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10099C27C(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1008BC7B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A8620, &qword_100EED8E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10001FD3C(v5, v6, sub_10000F930);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1008BC8D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A85C8, &qword_100EFD380);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v13, &qword_1011A8618, &qword_100EED8E0);
      v5 = v13;
      v6 = v14;
      result = sub_10001FD3C(v13, v14, sub_10000F930);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100016270(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_1008BCA1C(uint64_t result, char **a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result + 40;
    v6 = _swiftEmptyArrayStorage;
    v26 = *(result + 16);
    v24 = result + 40;
    do
    {
      v25 = v6;
      v7 = (v5 + 56 * v4);
      for (i = v4; ; ++i)
      {
        if (i >= v3)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_23;
        }

        v9 = *(v7 - 1);
        v34 = v7[4];
        v10 = v7[5];
        v32 = v7[2];
        v33 = v7[3];
        v30 = *v7;
        v31 = v7[1];
        if (v9 < 0)
        {
          break;
        }

        v29 = v10;

        _StringGuts.grow(_:)(49);

        v11._countAndFlagsBits = ActionType.rawValue.getter(v9);
        String.append(_:)(v11);

        v12._object = 0x8000000100E5AA60;
        v12._countAndFlagsBits = 0xD00000000000002BLL;
        String.append(_:)(v12);
        v13 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v13;
        v15 = i + 1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = sub_10089C4F8(0, *(v13 + 2) + 1, 1, v13);
          *a2 = v13;
        }

        v17 = *(v13 + 2);
        v16 = *(v13 + 3);
        if (v17 >= v16 >> 1)
        {
          v13 = sub_10089C4F8((v16 > 1), v17 + 1, 1, v13);
          *a2 = v13;
        }

        *(v13 + 2) = v17 + 1;
        v18 = &v13[16 * v17];
        *(v18 + 4) = 544743456;
        *(v18 + 5) = 0xE400000000000000;
        v19 = *a3;

        v20 = sub_10096A060(v9, v19);

        v3 = v26;
        v4 = i + 1;
        v10 = v29;
        if ((v20 & 1) == 0)
        {
          goto LABEL_15;
        }

        sub_1008BCF44(v9, v30, v31, v32, v33, v34, v29);
        v7 += 7;
        if (v15 == v26)
        {
          return;
        }
      }

LABEL_15:
      v6 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100899F00(0, v25[2] + 1, 1);
        v6 = v25;
      }

      v5 = v24;
      v22 = v6[2];
      v21 = v6[3];
      if (v22 >= v21 >> 1)
      {
        sub_100899F00((v21 > 1), v22 + 1, 1);
        v6 = v25;
      }

      v6[2] = v22 + 1;
      v23 = &v6[7 * v22];
      v23[4] = v9;
      v23[5] = v30;
      v23[6] = v31;
      v23[7] = v32;
      v23[8] = v33;
      v23[9] = v34;
      v23[10] = v10;
    }

    while (v4 != v3);
  }
}

void sub_1008BCD0C(uint64_t result, int64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_10089C4F8(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  sub_10099C320(result, a2, 1, a3, a4);
  *v4 = v6;
}