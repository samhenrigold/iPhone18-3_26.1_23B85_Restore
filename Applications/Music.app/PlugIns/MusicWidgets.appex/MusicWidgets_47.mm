unint64_t sub_1004B4DA4()
{
  result = qword_1006F9240;
  if (!qword_1006F9240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F9240);
  }

  return result;
}

unint64_t sub_1004B4DF0()
{
  result = qword_1006F8C00;
  if (!qword_1006F8C00)
  {
    sub_100010324(&qword_1006F8BF8, &unk_1005A63D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F8C00);
  }

  return result;
}

id Optional<A>.isArtworkVisuallyIdentical(to:)(uint64_t a1, id a2)
{
  if (a2)
  {
    if (a1)
    {
      return [a2 isArtworkVisuallyIdenticalToCatalog:a1];
    }

    return 0;
  }

  return !a1;
}

uint64_t MPCPlaybackIntentOptions.debugDescription.getter(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1004A8180(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1004A8180((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x656D6D4979616C70;
  *(v5 + 5) = 0xEF796C6574616964;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1004A8180(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1004A8180((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6575517465736572;
    *(v8 + 5) = 0xEA00000000006575;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1004A8180(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1004A8180((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x4E70556F54646461;
    *(v11 + 5) = 0xEF64616548747865;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1004A8180(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_1004A8180((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x4E70556F54646461;
  *(v14 + 5) = 0xEF6C696154747865;
  if ((a1 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1004A8180(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_1004A8180((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x5074726174736572;
    *(v17 + 5) = 0xEF6B63616279616CLL;
  }

LABEL_31:
  sub_100009DCC(&qword_1006F8BF0, &qword_1005A6530);
  sub_1004B53A8();
  v18 = sub_100572798();
  v20 = v19;

  v22._countAndFlagsBits = v18;
  v22._object = v20;
  sub_100572A98(v22);

  v23._countAndFlagsBits = 93;
  v23._object = 0xE100000000000000;
  sub_100572A98(v23);
  return 91;
}

__C::MPMediaLibraryFilteringOptions __swiftcall MPMediaLibraryFilteringOptions.init(_:)(NSNumber_optional a1)
{
  if (a1.value.super.super.isa)
  {
    isa = a1.value.super.super.isa;
    v2 = [(objc_class *)a1.value.super.super.isa unsignedIntegerValue];

    a1.value.super.super.isa = v2;
  }

  return a1.value.super.super.isa;
}

id static PropertySetCombinator.buildBlock(_:)(unint64_t a1)
{
  v2 = [objc_opt_self() emptyPropertySet];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v2 = v2;
    v4 = v2;
    v11 = v2;
    if (!v3)
    {
      break;
    }

    v5 = 0;
    v6 = v2;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v2 = sub_100573F58();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v2 = *(a1 + 8 * v5 + 32);
      }

      v7 = v2;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v4 = [v6 propertySetByCombiningWithPropertySet:v2];

      ++v5;
      v6 = v4;
      if (v8 == v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v10 = v2;
    v3 = sub_100574178();
    v2 = v10;
  }

LABEL_12:

  return v4;
}

unint64_t sub_1004B53A8()
{
  result = qword_1006F8C08;
  if (!qword_1006F8C08)
  {
    sub_100010324(&qword_1006F8BF0, &qword_1005A6530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F8C08);
  }

  return result;
}

uint64_t GenericMusicItem.innerMusicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v124 = a1;
  v72 = sub_10056DA88();
  v71 = *(v72 - 8);
  __chkstk_darwin();
  v70 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10056DA38();
  v74 = *(v75 - 8);
  __chkstk_darwin();
  v73 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10056DB08();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v76 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10056DB68();
  v80 = *(v81 - 8);
  __chkstk_darwin();
  v79 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_10056DBC8();
  v83 = *(v84 - 8);
  __chkstk_darwin();
  v82 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100571F08();
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v85 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_100571A68();
  v89 = *(v90 - 8);
  __chkstk_darwin();
  v88 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10056D9E8();
  v92 = *(v93 - 8);
  __chkstk_darwin();
  v91 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1005718C8();
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_100572308();
  v98 = *(v99 - 8);
  __chkstk_darwin();
  v97 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1005722D8();
  v101 = *(v102 - 8);
  __chkstk_darwin();
  v100 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005713A8();
  v104 = *(v12 - 8);
  v105 = v12;
  __chkstk_darwin();
  v103 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10056D8D8();
  v107 = *(v14 - 8);
  v108 = v14;
  __chkstk_darwin();
  v106 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100571BA8();
  v110 = *(v16 - 8);
  v111 = v16;
  __chkstk_darwin();
  v109 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10056D9A8();
  v113 = *(v18 - 8);
  v114 = v18;
  __chkstk_darwin();
  v112 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100571E88();
  v116 = *(v20 - 8);
  v117 = v20;
  __chkstk_darwin();
  v115 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10056D978();
  v119 = *(v22 - 8);
  v120 = v22;
  __chkstk_darwin();
  v118 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10056DB18();
  v121 = *(v24 - 8);
  v122 = v24;
  __chkstk_darwin();
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100571CF8();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100571B78();
  v32 = *(v31 - 8);
  __chkstk_darwin();
  v34 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10056D438();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin();
  v39 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v39, v123, v35, v37);
  v40 = (*(v36 + 88))(v39, v35);
  if (v40 == enum case for GenericMusicItem.album(_:))
  {
    (*(v36 + 96))(v39, v35);
    v41 = *(v32 + 32);
    v41(v34, v39, v31);
    v42 = v124;
    v124[3] = v31;
    v42[4] = &protocol witness table for Album;
    v43 = sub_10002AB7C(v42);
    return (v41)(v43, v34, v31);
  }

  v45 = v124;
  if (v40 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v36 + 96))(v39, v35);
    v46 = *(v28 + 32);
    v46(v30, v39, v27);
    v45[3] = v27;
    v45[4] = &protocol witness table for Artist;
    v47 = sub_10002AB7C(v45);
    return (v46)(v47, v30, v27);
  }

  if (v40 == enum case for GenericMusicItem.composer(_:))
  {
    (*(v36 + 96))(v39, v35);
    v48 = v122;
    v49 = *(v121 + 32);
    v49(v26, v39, v122);
    v45[3] = v48;
    v45[4] = sub_1004B7B9C(&qword_1006F8C58, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
    v50 = sub_10002AB7C(v45);
    v51 = v26;
    return (v49)(v50, v51, v48);
  }

  if (v40 == enum case for GenericMusicItem.creditArtist(_:))
  {
    (*(v36 + 96))(v39, v35);
    v52 = v118;
    v49 = *(v119 + 32);
    v48 = v120;
    v49(v118, v39, v120);
    v45[3] = v48;
    v53 = &unk_1006F8C50;
    v54 = &type metadata accessor for CreditArtist;
    v55 = &protocol conformance descriptor for CreditArtist;
LABEL_9:
    v45[4] = sub_1004B7B9C(v53, v54, v55);
    v50 = sub_10002AB7C(v45);
    v51 = v52;
    return (v49)(v50, v51, v48);
  }

  v56 = v124;
  if (v40 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v36 + 96))(v39, v35);
    v57 = v115;
    v58 = *(v116 + 32);
    v59 = v117;
    v58(v115, v39, v117);
    v60 = &protocol witness table for Curator;
LABEL_13:
    v56[3] = v59;
    v56[4] = v60;
LABEL_17:
    v64 = sub_10002AB7C(v56);
    return (v58)(v64, v57, v59);
  }

  if (v40 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v36 + 96))(v39, v35);
    v57 = v112;
    v58 = *(v113 + 32);
    v59 = v114;
    v58(v112, v39, v114);
    v56[3] = v59;
    v61 = &unk_1006F8C48;
    v62 = &type metadata accessor for EditorialItem;
    v63 = &protocol conformance descriptor for EditorialItem;
LABEL_16:
    v56[4] = sub_1004B7B9C(v61, v62, v63);
    goto LABEL_17;
  }

  if (v40 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v36 + 96))(v39, v35);
    v57 = v109;
    v58 = *(v110 + 32);
    v59 = v111;
    v58(v109, v39, v111);
    v60 = &protocol witness table for Genre;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v36 + 96))(v39, v35);
    v57 = v106;
    v58 = *(v107 + 32);
    v59 = v108;
    v58(v106, v39, v108);
    v56[3] = v59;
    v61 = &unk_1006F8C40;
    v62 = &type metadata accessor for MusicMovie;
    v63 = &protocol conformance descriptor for MusicMovie;
    goto LABEL_16;
  }

  if (v40 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v36 + 96))(v39, v35);
    v59 = v105;
    v58 = *(v104 + 32);
    v57 = v103;
    v58(v103, v39, v105);
    v60 = &protocol witness table for MusicVideo;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v101 + 32);
    v57 = v100;
    v59 = v102;
    v58(v100, v39, v102);
    v60 = &protocol witness table for Playlist;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.radioShow(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v98 + 32);
    v57 = v97;
    v59 = v99;
    v58(v97, v39, v99);
    v60 = &protocol witness table for RadioShow;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.recordLabel(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v95 + 32);
    v57 = v94;
    v59 = v96;
    v58(v94, v39, v96);
    v60 = &protocol witness table for RecordLabel;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.socialProfile(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v92 + 32);
    v57 = v91;
    v59 = v93;
    v58(v91, v39, v93);
    v56[3] = v59;
    v61 = &unk_1006F8C38;
    v62 = &type metadata accessor for SocialProfile;
    v63 = &protocol conformance descriptor for SocialProfile;
    goto LABEL_16;
  }

  if (v40 == enum case for GenericMusicItem.song(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v89 + 32);
    v57 = v88;
    v59 = v90;
    v58(v88, v39, v90);
    v60 = &protocol witness table for Song;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.station(_:))
  {
    (*(v36 + 96))(v39, v35);
    v65 = *(v86 + 32);
    v66 = v85;
    v67 = v87;
    v65(v85, v39, v87);
    v45[3] = v67;
    v45[4] = &protocol witness table for Station;
    v68 = sub_10002AB7C(v45);
    return (v65)(v68, v66, v67);
  }

  else
  {
    if (v40 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v83 + 32);
      v52 = v82;
      v48 = v84;
      v49(v82, v39, v84);
      v45[3] = v48;
      v53 = &unk_1006F8C30;
      v54 = &type metadata accessor for TVEpisode;
      v55 = &protocol conformance descriptor for TVEpisode;
      goto LABEL_9;
    }

    if (v40 == enum case for GenericMusicItem.tvSeason(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v80 + 32);
      v52 = v79;
      v48 = v81;
      v49(v79, v39, v81);
      v45[3] = v48;
      v53 = &unk_1006F8C28;
      v54 = &type metadata accessor for TVSeason;
      v55 = &protocol conformance descriptor for TVSeason;
      goto LABEL_9;
    }

    if (v40 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v77 + 32);
      v52 = v76;
      v48 = v78;
      v49(v76, v39, v78);
      v45[3] = v48;
      v53 = &unk_1006F8C20;
      v54 = &type metadata accessor for TVShow;
      v55 = &protocol conformance descriptor for TVShow;
      goto LABEL_9;
    }

    if (v40 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v74 + 32);
      v52 = v73;
      v48 = v75;
      v49(v73, v39, v75);
      v45[3] = v48;
      v53 = &unk_1006F8C18;
      v54 = &type metadata accessor for UploadedAudio;
      v55 = &protocol conformance descriptor for UploadedAudio;
      goto LABEL_9;
    }

    if (v40 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v71 + 32);
      v52 = v70;
      v48 = v72;
      v49(v70, v39, v72);
      v45[3] = v48;
      v53 = &unk_1006F8C10;
      v54 = &type metadata accessor for UploadedVideo;
      v55 = &protocol conformance descriptor for UploadedVideo;
      goto LABEL_9;
    }

    v69 = (v36 + 8);
    if (v40 == enum case for GenericMusicItem.other(_:))
    {
      result = (*v69)(v39, v35);
      v45[4] = 0;
      *v45 = 0u;
      *(v45 + 1) = 0u;
    }

    else
    {
      v124[4] = 0;
      *v45 = 0u;
      *(v45 + 1) = 0u;
      return (*v69)(v39, v35);
    }
  }

  return result;
}

uint64_t GenericMusicItem.catalogID.getter()
{
  v0 = sub_10056DB08();
  v38 = *(v0 - 8);
  v39 = v0;
  __chkstk_darwin();
  v37 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10056DB68();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin();
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10056DBC8();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin();
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100571A68();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin();
  v46 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005722D8();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin();
  v49 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005713A8();
  v53 = *(v10 - 8);
  v54 = v10;
  __chkstk_darwin();
  v52 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10056D8D8();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin();
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100571CF8();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100571B78();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10056D438();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin();
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v57, v23, v25);
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 != enum case for GenericMusicItem.album(_:))
  {
    if (v28 == enum case for GenericMusicItem.artist(_:))
    {
      (*(v24 + 96))(v27, v23);
      (*(v16 + 32))(v18, v27, v15);
      v29 = sub_100571CB8();
      (*(v16 + 8))(v18, v15);
      return v29;
    }

    if (v28 != enum case for GenericMusicItem.composer(_:) && v28 != enum case for GenericMusicItem.curator(_:) && v28 != enum case for GenericMusicItem.editorialItem(_:) && v28 != enum case for GenericMusicItem.genre(_:))
    {
      if (v28 == enum case for GenericMusicItem.musicMovie(_:))
      {
        (*(v24 + 96))(v27, v23);
        v31 = v55;
        v30 = v56;
        (*(v55 + 32))(v14, v27, v56);
        v29 = sub_10056D8C8();
        (*(v31 + 8))(v14, v30);
        return v29;
      }

      if (v28 == enum case for GenericMusicItem.musicVideo(_:))
      {
        (*(v24 + 96))(v27, v23);
        v32 = v52;
        v33 = v53;
        v34 = v54;
        (*(v53 + 32))(v52, v27, v54);
        v35 = sub_100571348();
LABEL_15:
        v29 = v35;
        (*(v33 + 8))(v32, v34);
        return v29;
      }

      if (v28 == enum case for GenericMusicItem.playlist(_:))
      {
        (*(v24 + 96))(v27, v23);
        v32 = v49;
        v33 = v50;
        v34 = v51;
        (*(v50 + 32))(v49, v27, v51);
        v35 = sub_100572158();
        goto LABEL_15;
      }

      if (v28 != enum case for GenericMusicItem.radioShow(_:) && v28 != enum case for GenericMusicItem.recordLabel(_:) && v28 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v28 == enum case for GenericMusicItem.song(_:))
        {
          (*(v24 + 96))(v27, v23);
          v32 = v46;
          v33 = v47;
          v34 = v48;
          (*(v47 + 32))(v46, v27, v48);
          v35 = sub_100571998();
          goto LABEL_15;
        }

        if (v28 != enum case for GenericMusicItem.station(_:))
        {
          if (v28 == enum case for GenericMusicItem.tvEpisode(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v43;
            v33 = v44;
            v34 = v45;
            (*(v44 + 32))(v43, v27, v45);
            v35 = sub_10056DBB8();
            goto LABEL_15;
          }

          if (v28 == enum case for GenericMusicItem.tvSeason(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v40;
            v33 = v41;
            v34 = v42;
            (*(v41 + 32))(v40, v27, v42);
            v35 = sub_10056DB58();
            goto LABEL_15;
          }

          if (v28 == enum case for GenericMusicItem.tvShow(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v37;
            v33 = v38;
            v34 = v39;
            (*(v38 + 32))(v37, v27, v39);
            v35 = sub_10056DAF8();
            goto LABEL_15;
          }
        }
      }
    }

    (*(v24 + 8))(v27, v23);
    return 0;
  }

  (*(v24 + 96))(v27, v23);
  (*(v20 + 32))(v22, v27, v19);
  v29 = sub_100571AC8();
  (*(v20 + 8))(v22, v19);
  return v29;
}

uint64_t Playlist.Entry.InternalItem.musicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100572208();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = sub_10056D8D8();
    a1[3] = v10;
    v11 = &unk_1006F8C40;
    v12 = &type metadata accessor for MusicMovie;
    v13 = &protocol conformance descriptor for MusicMovie;
LABEL_3:
    v14 = sub_1004B7B9C(v11, v12, v13);
LABEL_8:
    a1[4] = v14;
    v15 = sub_10002AB7C(a1);
    return (*(*(v10 - 8) + 32))(v15, v8, v10);
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = sub_1005713A8();
    a1[3] = v10;
    v14 = &protocol witness table for MusicVideo;
    goto LABEL_8;
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = sub_100571A68();
    a1[3] = v10;
    v14 = &protocol witness table for Song;
    goto LABEL_8;
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = sub_10056DBC8();
    a1[3] = v10;
    v11 = &unk_1006F8C30;
    v12 = &type metadata accessor for TVEpisode;
    v13 = &protocol conformance descriptor for TVEpisode;
    goto LABEL_3;
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = sub_10056DA38();
    a1[3] = v10;
    v11 = &unk_1006F8C18;
    v12 = &type metadata accessor for UploadedAudio;
    v13 = &protocol conformance descriptor for UploadedAudio;
    goto LABEL_3;
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = sub_10056DA88();
    a1[3] = v10;
    v11 = &unk_1006F8C10;
    v12 = &type metadata accessor for UploadedVideo;
    v13 = &protocol conformance descriptor for UploadedVideo;
    goto LABEL_3;
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_100573ED8(42);

  v17 = 0xD000000000000028;
  v18 = 0x80000001005BCE70;
  sub_1004B7B9C(&qword_1006F8C60, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
  v19._countAndFlagsBits = sub_100574408();
  sub_100572A98(v19);

  result = sub_1005740F8();
  __break(1u);
  return result;
}

uint64_t Artist.pinPlayabilityStatus(isOnline:explicitContentIsAllowed:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100571C58();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_100571C78();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_100571C98();
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v15 = sub_100571CA8();
  if (v16)
  {
    if ((a1 & 1) == 0)
    {
      if ((a2 & 1) == 0)
      {
        if (v11 <= 0)
        {
          if (v14 <= 0)
          {
            goto LABEL_36;
          }

          goto LABEL_20;
        }

LABEL_27:
        v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.networkUnavailable(_:);
        goto LABEL_28;
      }

      goto LABEL_22;
    }
  }

  else if ((a1 & 1) == 0)
  {
    if (a2)
    {
LABEL_22:
      if (v14 <= 0)
      {
        goto LABEL_27;
      }

LABEL_23:
      v17 = &enum case for MusicPlayer.PlayabilityStatus.playable(_:);
      goto LABEL_30;
    }

    if (v11 >= 1 && !v15)
    {
      goto LABEL_27;
    }

    if (v14 < 1 || v15)
    {
      if (v15 <= 0)
      {
LABEL_36:
        v20 = sub_1005713F8();
        v21 = *(*(v20 - 8) + 104);
        if (v8 < 1)
        {
          v28 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
        }

        else
        {
          v28 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:);
        }

        v23 = *v28;
        v22 = a3;
        goto LABEL_29;
      }

      goto LABEL_23;
    }

LABEL_20:
    v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:);
LABEL_28:
    v19 = *v18;
    v20 = sub_1005713F8();
    v21 = *(*(v20 - 8) + 104);
    v22 = a3;
    v23 = v19;
LABEL_29:
    v21(v22, v23, v20);
    v17 = &enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    goto LABEL_30;
  }

  if (!v8)
  {
    v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
    goto LABEL_28;
  }

  v17 = &enum case for MusicPlayer.PlayabilityStatus.playable(_:);
  if ((a2 & 1) == 0 && v11 <= 0)
  {
    goto LABEL_20;
  }

LABEL_30:
  v24 = *v17;
  v25 = sub_100571418();
  v26 = *(*(v25 - 8) + 104);

  return v26(a3, v24, v25);
}

uint64_t MusicPin.Action.symbolName.getter()
{
  v1 = v0;
  v2 = sub_10056D858();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MusicPin.Action.navigate(_:))
  {
    return 0;
  }

  if (v7 == enum case for MusicPin.Action.play(_:))
  {
    return 0x6C69662E79616C70;
  }

  if (v7 != enum case for MusicPin.Action.shuffle(_:))
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return 0x656C6666756873;
}

uint64_t sub_1004B7B34(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F8C68, &qword_1005A6448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004B7B9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004B7BFC(uint64_t (*a1)(__n128))
{
  v39 = sub_10056CD98();
  v2 = *(v39 - 8);
  __chkstk_darwin();
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10056C968();
  v34 = *(v36 - 8);
  __chkstk_darwin();
  v33 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10056C988();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin();
  v32 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = v31 - v8;
  sub_100009DCC(&qword_1006F8AA8, &qword_1005A5E50);
  __chkstk_darwin();
  v10 = v31 - v9;
  sub_100009DCC(&qword_1006F8AB0, &qword_1005A5E58);
  __chkstk_darwin();
  v12 = v31 - v11;
  v13 = sub_10056C538();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F8C68, &qword_1005A6448);
  v17 = __chkstk_darwin();
  v19 = v31 - v18;
  a1(v17);
  if (v20)
  {
    v21 = sub_10056CAA8();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
LABEL_6:
    sub_1004B7B34(v19);
    return 0;
  }

  v31[1] = v4;
  if (qword_1006F7F18 != -1)
  {
    swift_once();
  }

  v22 = sub_10056CD08();
  sub_10000C49C(v22, static Calendar.musicDefaultCalendar);
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (*(v2 + 56))(v10, 1, 1, v39);
  sub_10056C528();
  sub_10056CCB8();
  (*(v14 + 8))(v16, v13);
  v23 = sub_10056CAA8();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v19, 1, v23) == 1)
  {
    goto LABEL_6;
  }

  v26 = v32;
  sub_10056C688();
  v27 = v33;
  sub_10056C958();
  v28 = v35;
  sub_10056C948();
  (*(v34 + 8))(v27, v36);
  v29 = v38;
  v30 = *(v37 + 8);
  v30(v26, v38);
  sub_10056CCD8();
  sub_10056C978();
  sub_1004B7B9C(&qword_1006F8C70, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  sub_10056CA88();
  v30(v28, v29);
  (*(v24 + 8))(v19, v23);
  return v40;
}

uint64_t sub_1004B8264(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1004B0DB8(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

void sub_1004B82F4(NSObject *a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X3>, void (**a5)(uint64_t, uint64_t *, NSObject *, __n128)@<X4>, int a6@<W5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  LODWORD(v735) = a6;
  v723 = a5;
  v725 = a4;
  v716 = a3;
  v720 = a2;
  v19 = a14;
  v718 = a13;
  v714 = a11;
  v713 = a10;
  v703 = sub_100009DCC(&qword_1006F8A18, &qword_1005A5C70);
  v702 = *(v703 - 8);
  __chkstk_darwin();
  v701 = v630 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v704 = v630 - v21;
  swift_getAssociatedTypeWitness();
  v715 = a15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v731 = sub_1005741F8();
  *&v666 = v731[-1];
  __chkstk_darwin();
  v740 = (v630 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v730 = (v630 - v25);
  v26 = sub_100574208();
  WitnessTable = swift_getWitnessTable();
  v695 = sub_1005740A8();
  *&v665 = *(v695 - 8);
  __chkstk_darwin();
  v738 = v630 - v27;
  v685 = *(v26 - 8);
  __chkstk_darwin();
  v699 = v630 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v680 = v630 - v29;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v682 = sub_100573C28();
  v664 = *(v682 - 8);
  __chkstk_darwin();
  v692 = (v630 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v732 = (v630 - v31);
  v736 = v26;
  sub_100573C28();
  __chkstk_darwin();
  v687 = v630 - v32;
  v675 = sub_100009DCC(&qword_1006F8E48, &qword_1005A6520);
  __chkstk_darwin();
  v743 = (v630 - v33);
  v739 = AssociatedTypeWitness;
  v676 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  *&v726 = v630 - v34;
  v35 = a1;
  v686 = swift_checkMetadataState();
  v667 = *(v686 - 8);
  __chkstk_darwin();
  v672 = v630 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v684 = v630 - v37;
  v673 = *(a14 - 1);
  __chkstk_darwin();
  v660 = v630 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v662 = v630 - v39;
  __chkstk_darwin();
  v661 = v630 - v40;
  __chkstk_darwin();
  v671 = v630 - v41;
  __chkstk_darwin();
  v679 = v630 - v42;
  __chkstk_darwin();
  v694 = v630 - v43;
  __chkstk_darwin();
  v724 = (v630 - v44);
  __chkstk_darwin();
  v742 = (v630 - v45);
  v744 = sub_10056CE18();
  v727 = *(v744 - 8);
  __chkstk_darwin();
  v683 = v630 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v677 = v630 - v47;
  __chkstk_darwin();
  v670 = v630 - v48;
  __chkstk_darwin();
  v669 = v630 - v49;
  __chkstk_darwin();
  v668 = v630 - v50;
  __chkstk_darwin();
  v681 = v630 - v51;
  __chkstk_darwin();
  v663 = v630 - v52;
  __chkstk_darwin();
  v712 = v630 - v53;
  __chkstk_darwin();
  v700 = v630 - v54;
  __chkstk_darwin();
  v56 = v630 - v55;
  __chkstk_darwin();
  v689 = v630 - v57;
  __chkstk_darwin();
  v709 = v630 - v58;
  __chkstk_darwin();
  *&v707 = v630 - v59;
  __chkstk_darwin();
  v708 = (v630 - v60);
  __chkstk_darwin();
  v688 = v630 - v61;
  __chkstk_darwin();
  v698 = v630 - v62;
  __chkstk_darwin();
  v697 = v630 - v63;
  __chkstk_darwin();
  v690 = v630 - v64;
  __chkstk_darwin();
  v710 = v630 - v65;
  __chkstk_darwin();
  v711 = v630 - v66;
  __chkstk_darwin();
  v733 = v630 - v67;
  __chkstk_darwin();
  v741 = v630 - v68;
  __chkstk_darwin();
  *&v728 = v630 - v69;
  v705 = sub_100009DCC(&qword_1006F8E50, &qword_1005A6528);
  v674 = *(v705 - 8);
  __chkstk_darwin();
  v678 = v630 - v70;
  *a9 = 0;
  v71 = type metadata accessor for AIDiffingUpdate(0);
  v72 = v71[6];
  _s14MusicUtilities15AIDiffingUpdateV18deletedSectionsSet10Foundation05IndexG0Vvpfi_0();
  v722 = v71[7];
  _s14MusicUtilities15AIDiffingUpdateV18deletedSectionsSet10Foundation05IndexG0Vvpfi_0();
  v73 = v71[8];
  *(a9 + v73) = _swiftEmptyArrayStorage;
  v74 = (a9 + v71[9]);
  *v74 = 0;
  v74[1] = _swiftEmptyArrayStorage;
  v706 = v74;
  v75 = (a9 + v71[10]);
  *v75 = 0;
  v75[1] = _swiftEmptyArrayStorage;
  v717 = v75;
  v76 = (a9 + v71[11]);
  *v76 = 0;
  v76[1] = _swiftEmptyArrayStorage;
  v719 = v71[12];
  *(a9 + v719) = _swiftEmptyArrayStorage;
  *(a9 + 8) = a7;
  *(a9 + 16) = a8;
  v737 = a9;
  if (!v35)
  {
    sub_1000E672C(a7, a8);
    sub_1000F3E14(a12, v718);
    sub_1000F3E14(v713, v714);
    sub_1000F3E14(a7, a8);

LABEL_14:

    *v737 = 1;
    return;
  }

  v696 = a12;
  if (!v720)
  {
    sub_1000E672C(a7, a8);
    sub_1000F3E14(v696, v718);
    sub_1000F3E14(v713, v714);
    sub_1000F3E14(a7, a8);
LABEL_13:

    goto LABEL_14;
  }

  v659 = v73;
  v656 = AssociatedConformanceWitness;
  sub_1000E672C(a7, a8);

  v77 = sub_100572DC8();
  v78 = v35;
  v79 = v718;
  v80 = v696;
  if (v77 <= 0 || (v643 = v77, v691 = v78, v81 = sub_100572DC8(), v81 < 1))
  {

    sub_1000F3E14(v80, v79);
    sub_1000F3E14(v713, v714);
    sub_1000F3E14(a7, a8);

    goto LABEL_13;
  }

  TupleTypeMetadata3 = v81;
  v647 = v72;
  v652 = v56;
  if (qword_1006F7F48 != -1)
  {
    goto LABEL_370;
  }

  while (1)
  {
    v83 = sub_10056DF88();
    v84 = sub_10000C49C(v83, qword_1006F8C78);

    v729 = v84;
    v85 = sub_10056DF68();
    v86 = sub_100573448();

    v87 = os_log_type_enabled(v85, v86);
    v721 = v19;
    v658 = TupleTypeMetadata3;
    if (v87)
    {
      v88 = swift_slowAlloc();
      v748 = swift_slowAlloc();
      *v88 = 136315394;
      v89 = sub_100574758();
      v91 = sub_1004C2954(v89, v90, &v748);

      *(v88 + 4) = v91;
      *(v88 + 12) = 2080;
      v92 = sub_100572D38();
      v94 = sub_1004C2954(v92, v93, &v748);

      *(v88 + 14) = v94;
      v19 = v721;
      _os_log_impl(&_mh_execute_header, v85, v86, "Building update for section with item type %s, visible index paths: %s", v88, 0x16u);
      swift_arrayDestroy();
    }

    v646 = a8;
    v95 = v713;
    v642 = a7;
    if (v713)
    {
      v96 = swift_allocObject();
      v97 = v715;
      v96[2] = v19;
      v96[3] = v97;
      v98 = v714;
      v96[4] = v95;
      v96[5] = v98;
      v99 = sub_1004C8A58;
    }

    else
    {
      v96 = swift_allocObject();
      v97 = v715;
      v96[2] = v19;
      v96[3] = v97;
      v99 = sub_1004C880C;
      v98 = v714;
    }

    v100 = swift_allocObject();
    v100[2] = v19;
    v100[3] = v97;
    v100[4] = v99;
    v100[5] = v96;
    v650 = v100;
    sub_1000E672C(v95, v98);
    v756 = sub_100499220(_swiftEmptyArrayStorage);
    v755 = &_swiftEmptySetSingleton;
    v748 = v691;
    __chkstk_darwin();
    v630[-4] = v19;
    v630[-3] = v97;
    v630[-2] = &v755;
    v101 = sub_100572E38();
    v102 = swift_getWitnessTable();
    sub_1004AB3E4(sub_1004C8884, &v630[-6], v101, &type metadata for String, &type metadata for Never, v102, &protocol witness table for Never, v103);
    v649 = v104;
    v746[0] = v720;
    swift_getWitnessTable();
    sub_100572BC8();
    v746[0] = v748;
    __chkstk_darwin();
    v630[-4] = v105;
    v630[-3] = v97;
    v630[-2] = &v756;
    __chkstk_darwin();
    v630[-4] = v106;
    v630[-3] = v97;
    v630[-2] = sub_1004C88A8;
    v630[-1] = v107;
    v108 = sub_100574168();
    v754[1] = v102;
    v109 = swift_getWitnessTable();
    sub_1004AB3E4(sub_1004C88B4, &v630[-6], v108, &type metadata for String, &type metadata for Never, v109, &protocol witness table for Never, v110);
    v112 = v111;
    v113 = v649;

    v114 = v755;
    if (v755[2] != *(v113 + 16))
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v170 = sub_10056DF68();
      v171 = sub_100573438();

      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        v748 = v173;
        *v172 = 136446210;
        v174 = sub_100572D38();
        v176 = v175;

        v177 = sub_1004C2954(v174, v176, &v748);

        *(v172 + 4) = v177;
        v178 = "Found duplicate sections in old items, falling back to reload data. Sections: %{public}s";
LABEL_66:
        _os_log_impl(&_mh_execute_header, v170, v171, v178, v172, 0xCu);
        sub_100010474(v173);

        sub_1000F3E14(v696, v718);
        sub_1000F3E14(v713, v714);
        sub_1000F3E14(v642, v646);
LABEL_68:

        *v737 = 1;
        goto LABEL_69;
      }

LABEL_67:

      sub_1000F3E14(v696, v718);
      sub_1000F3E14(v713, v714);
      sub_1000F3E14(v642, v646);

      goto LABEL_68;
    }

    if (v112[2] != v658)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v170 = sub_10056DF68();
      v171 = sub_100573438();

      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        v748 = v173;
        *v172 = 136446210;
        v179 = sub_100572D38();
        v181 = v180;

        v182 = sub_1004C2954(v179, v181, &v748);

        *(v172 + 4) = v182;
        v178 = "Found duplicate sections in new items, falling back to reload data. Sections: %{public}s";
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    v632 = v112;
    v748 = v112;
    v746[0] = v113;
    sub_100009DCC(&qword_1006F8BF0, &qword_1005A6530);
    sub_100010BC0(&qword_1006F8C08, &qword_1006F8BF0, &qword_1005A6530, &protocol conformance descriptor for [A]);
    sub_100572788();
    v634 = sub_10049931C(_swiftEmptyArrayStorage);
    v754[0] = v634;
    v753 = &_swiftEmptySetSingleton;
    v19 = v721;
    v637 = swift_getAssociatedConformanceWitness();
    v115 = sub_10056DD08();
    swift_getTupleTypeMetadata2();
    v116 = sub_100572D88();
    v117 = sub_1004B1430(v116, &type metadata for Int, v115, &protocol witness table for Int);
    v118 = v115;

    v657 = v117;
    v752 = v117;
    v119 = sub_100572D88();
    v120 = sub_1004B1430(v119, &type metadata for Int, v115, &protocol witness table for Int);

    v751 = v120;
    v748 = v716;

    sub_1004C4F00(&v748);
    v630[1] = 0;
    v633 = v114;
    a8 = v748;
    v121 = v748[2];
    v122 = v728;
    v655 = v118;
    v654 = v121;
    if (v121)
    {
      a7 = 0;
      *&v653 = v748 + ((*(v727 + 80) + 32) & ~*(v727 + 80));
      v658 = (v727 + 16);
      v123 = (v727 + 8);
      v644 = v715 + 40;
      v636 = (v676 + 16);
      v641 = v667 + 8;
      v635 = (v676 + 8);
      v638 = (v715 + 32);
      v639 = (v673 + 8);
      TupleTypeMetadata3 = v736;
      v640 = (v727 + 8);
      v648 = v748;
      while (1)
      {
        if (a7 >= *(a8 + 16))
        {
          goto LABEL_360;
        }

        v124 = *(v727 + 16);
        v124(v122, v653 + *(v727 + 72) * a7, v744);
        if (sub_10056CDF8() < v725)
        {
          (*v123)(v122, v744);
        }

        else
        {
          a8 = v739;
          if ((v735 & 1) != 0 || sub_10056CDF8() <= v723)
          {
            v125 = v733;
            v126 = v744;
            v124(v733, v122, v744);
            v127 = v741;
            v128 = v125;
            v118 = v655;
            sub_1004C2EFC(v741, v128);
            v651 = *v123;
            (v651)(v127, v126);
            v746[0] = sub_10056CDF8();
            TupleTypeMetadata3 = &type metadata for Int;
            v19 = &protocol witness table for Int;
            sub_100572708();
            if (v749)
            {
              sub_1003B7408(v748, v749);
            }

            else
            {
              v129 = sub_10056CDF8();
              sub_100572D88();
              v748 = sub_10056DCD8();
              v749 = v130;
              v746[0] = v129;
              sub_1005726E8();
              sub_100572718();
              v131 = sub_10056CDF8();
              v132 = sub_10056CDE8();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v748 = v754[0];
              v134 = v132;
              TupleTypeMetadata3 = &type metadata for Int;
              sub_1004C4954(v134, v131, isUniquelyReferenced_nonNull_native);
              v634 = v748;
              v754[0] = v748;
            }

            v746[0] = sub_10056CDF8();
            sub_100572708();
            if (v749)
            {
              sub_1003B7408(v748, v749);
            }

            else
            {
              v135 = sub_10056CDF8();
              sub_100572D88();
              v748 = sub_10056DCD8();
              v749 = v136;
              v746[0] = v135;
              sub_1005726E8();
              sub_100572718();
            }

            if (__OFSUB__(sub_10056CDF8(), v725))
            {
              goto LABEL_368;
            }

            sub_100572E48();
            v746[0] = sub_10056CDF8();
            sub_100572708();
            v137 = v749;
            if (v749)
            {
              v645 = sub_100574028();
            }

            else
            {
              v645 = 0;
            }

            v750 = sub_10056CDF8();
            sub_1005726E8();
            v138 = sub_1005726F8();
            if (*(v139 + 8))
            {
              v140 = v684;
              (*(v715 + 40))(v721);
              v747 = sub_10056CDE8();
              v141 = v686;
              v142 = sub_1005732E8();
              v143 = v726;
              (*v636)(v726);
              v142(v746, 0);
              v144 = v140;
              v118 = v655;
              v145 = v141;
              v146 = v739;
              (*v641)(v144, v145);
              sub_10056DCF8();
              v147 = v143;
              v122 = v728;
              (*v635)(v147, v146);
            }

            v138(&v748, 0);
            v746[0] = sub_10056CDF8();
            v657 = v752;
            sub_100572708();
            if (v749)
            {
              v148 = sub_100574028();

              v19 = v721;
              if (v137 && v645 == v148)
              {
LABEL_344:

                swift_bridgeObjectRelease_n();

                swift_bridgeObjectRelease_n();

                v610 = sub_10056DF68();
                v611 = sub_100573438();
                if (os_log_type_enabled(v610, v611))
                {
                  v612 = swift_slowAlloc();
                  *v612 = 0;
                  _os_log_impl(&_mh_execute_header, v610, v611, "Found duplicate in old visible items, falling back to reload data.", v612, 2u);
                }

                sub_1000F3E14(v696, v718);

                sub_1000F3E14(v713, v714);
                sub_1000F3E14(v642, v646);
                (*v639)(v742, v19);
                (v651)(v122, v744);
                (*(v674 + 8))(v678, v705);
                *v737 = 1;

LABEL_352:

LABEL_69:

                return;
              }
            }

            else
            {
              v19 = v721;
              if (!v137)
              {
                goto LABEL_344;
              }
            }

            v149 = (*(v715 + 32))(v19);
            if (*(v756 + 16) && (sub_1004B0CCC(v149, v150), (v151 & 1) != 0))
            {

              sub_100572E48();
              v152 = sub_10056CDE8();
              v153 = *(v715 + 40);
              v154 = v684;
              v153(v19);
              v155 = v686;
              v156 = sub_1005731C8();
              v157 = *v641;
              v158 = v154;
              v118 = v655;
              (*v641)(v158, v155);
              v159 = v152 < v156;
              v160 = v122;
              if (v159)
              {
                v746[0] = sub_10056CDF8();
                sub_100572708();
                v645 = v749;
                if (v749)
                {
                  v631 = sub_100574028();
                }

                else
                {
                  v631 = 0;
                }

                v750 = sub_10056CDF8();
                v161 = sub_1005726F8();
                if (*(v162 + 8))
                {
                  v163 = v684;
                  v630[0] = v161;
                  (v153)(v721, v715);
                  v747 = sub_10056CDE8();
                  v164 = v686;
                  v165 = sub_1005732E8();
                  v166 = v726;
                  v167 = v739;
                  (*v636)(v726);
                  v165(v746, 0);
                  v157(v163, v164);
                  v118 = v655;
                  sub_10056DCF8();
                  (*v635)(v166, v167);
                  (v630[0])(&v748, 0);
                }

                else
                {
                  v161(&v748, 0);
                  v118 = v655;
                }

                v746[0] = sub_10056CDF8();
                sub_100572708();
                if (v749)
                {
                  v168 = sub_100574028();

                  v160 = v728;
                  if (v645 && v631 == v168)
                  {
LABEL_353:

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();

                    v625 = sub_10056DF68();
                    v626 = sub_100573438();
                    if (os_log_type_enabled(v625, v626))
                    {
                      v627 = swift_slowAlloc();
                      *v627 = 0;
                      _os_log_impl(&_mh_execute_header, v625, v626, "Found duplicate in new visible items, falling back to reload data.", v627, 2u);
                    }

                    sub_1000F3E14(v696, v718);

                    sub_1000F3E14(v713, v714);
                    sub_1000F3E14(v642, v646);
                    v628 = *v639;
                    v629 = v721;
                    (*v639)(v724, v721);
                    v628(v742, v629);
                    (v651)(v728, v744);
                    (*(v674 + 8))(v678, v705);

                    *v737 = 1;

                    return;
                  }
                }

                else
                {
                  v160 = v728;
                  if (!v645)
                  {
                    goto LABEL_353;
                  }
                }
              }

              v169 = *v639;
              v19 = v721;
              (*v639)(v724, v721);
              v169(v742, v19);
              v123 = v640;
              (v651)(v160, v744);
              TupleTypeMetadata3 = v736;
              v122 = v160;
            }

            else
            {

              (*v639)(v742, v19);
              v123 = v640;
              (v651)(v122, v744);
              TupleTypeMetadata3 = v736;
            }
          }

          else
          {
            (*v123)(v122, v744);
          }

          a8 = v648;
        }

        if (v654 == ++a7)
        {
          goto LABEL_71;
        }
      }
    }

    TupleTypeMetadata3 = v736;
LABEL_71:

    swift_getTupleTypeMetadata2();
    v183 = sub_100572D88();
    v184 = sub_1004B1430(v183, &type metadata for Int, TupleTypeMetadata3, &protocol witness table for Int);

    a7 = v657 + 64;
    v185 = *(v657 + 64);
    v750 = v184;
    v186 = 1 << *(v657 + 32);
    v187 = -1;
    if (v186 < 64)
    {
      v187 = ~(-1 << v186);
    }

    a8 = v187 & v185;
    v188 = (v186 + 63) >> 6;
    v724 = (v685 + 56);

    v189 = 0;
    while (1)
    {
      v190 = v705;
      if (!a8)
      {
        break;
      }

      v191 = v118;
      TupleTypeMetadata3 = v189;
LABEL_81:
      v192 = __clz(__rbit64(a8)) | (TupleTypeMetadata3 << 6);
      v193 = *(*(v657 + 48) + 8 * v192);
      a8 &= a8 - 1;
      v194 = (*(v657 + 56) + 16 * v192);
      v195 = *v194;
      v196 = v194[1];
      v742 = v193;
      v746[0] = v193;
      v197 = v195;

      v198 = v191;
      sub_100572708();
      v199 = v749;
      if (v749)
      {
        *&v726 = v630;
        *&v728 = v748;
        v735 = v197;
        v746[0] = v197;
        v746[1] = v196;
        v733 = v196;
        __chkstk_darwin();
        v200 = v715;
        v630[-12] = v721;
        v630[-11] = v200;
        v201 = v650;
        v630[-10] = sub_1004C884C;
        v630[-9] = v201;
        v202 = v718;
        v630[-8] = v696;
        v630[-7] = v202;
        v630[-6] = v203;
        v630[-5] = v199;
        v630[-4] = v754;
        v204 = v742;
        v205 = v737;
        v630[-3] = v742;
        v630[-2] = v205;
        swift_getWitnessTable();
        v206 = v687;
        v118 = v655;
        sub_100572778();
        (*v724)(v206, 0, 1, v736);
        v748 = v204;
        sub_1005726E8();
        sub_100572718();

        v19 = v721;

        v189 = TupleTypeMetadata3;
      }

      else
      {

        v189 = TupleTypeMetadata3;
        v19 = v721;
        v118 = v198;
      }
    }

    while (1)
    {
      TupleTypeMetadata3 = v189 + 1;
      if (__OFADD__(v189, 1))
      {
        goto LABEL_359;
      }

      if (TupleTypeMetadata3 >= v188)
      {
        break;
      }

      a8 = *(a7 + 8 * TupleTypeMetadata3);
      ++v189;
      if (a8)
      {
        v191 = v118;
        goto LABEL_81;
      }
    }

    v207 = v743;
    (*(v674 + 16))(v743, v678, v190);
    v208 = *(v675 + 36);
    v209 = sub_100010BC0(&qword_1006F8E58, &qword_1006F8E50, &qword_1005A6528, &protocol conformance descriptor for CollectionDifference<A>);
    sub_1005731B8();
    sub_100573208();
    if (*(v207 + v208) != v748)
    {
      *&v210 = 134349056;
      v728 = v210;
      *&v210 = 134349312;
      v726 = v210;
      v733 = v208;
      do
      {
        a7 = v19;
        v19 = v209;
        v390 = sub_1005732E8();
        v392 = *v391;
        v393 = *(v391 + 16);
        v394 = *(v391 + 24);
        TupleTypeMetadata3 = *(v391 + 32);
        v395 = *(v391 + 33);
        v396 = *v391;
        v735 = *(v391 + 8);
        v742 = v393;
        v397 = MPCPlaybackEngine.Configuration.options.getter(v396, v735, v393);
        v390(&v748, 0, v397);
        v209 = v19;
        sub_100573218();
        a8 = v392 + v725;
        v398 = __OFADD__(v392, v725);
        if (v395)
        {
          if (v398)
          {
            goto LABEL_365;
          }

          if ((TupleTypeMetadata3 & 1) == 0)
          {
            v404 = v392 + v725;
            v405 = v394 + v725;
            if (__OFADD__(v394, v725))
            {
              goto LABEL_372;
            }

            v406 = sub_10056DF68();
            v407 = sub_100573448();
            if (os_log_type_enabled(v406, v407))
            {
              v408 = swift_slowAlloc();
              *v408 = v726;
              *(v408 + 4) = v404;
              *(v408 + 12) = 2050;
              *(v408 + 14) = v405;
              _os_log_impl(&_mh_execute_header, v406, v407, "[Remove] Moving section from %{public}ld to %{public}ld", v408, 0x16u);
            }

            v409 = *&v737[v659];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v409 = sub_1004A84A4(0, *(v409 + 2) + 1, 1, v409);
            }

            v411 = *(v409 + 2);
            v410 = *(v409 + 3);
            if (v411 >= v410 >> 1)
            {
              v409 = sub_1004A84A4((v410 > 1), v411 + 1, 1, v409);
            }

            sub_1004C8978();
            *(v409 + 2) = v411 + 1;
            v412 = &v409[16 * v411];
            *(v412 + 4) = v404;
            *(v412 + 5) = v405;
LABEL_226:
            *&v737[v659] = v409;
            v19 = v721;
            goto LABEL_196;
          }

          v19 = a7;
          v399 = sub_10056DF68();
          v400 = sub_100573448();
          if (os_log_type_enabled(v399, v400))
          {
            v401 = swift_slowAlloc();
            *v401 = v728;
            *(v401 + 4) = a8;
            _os_log_impl(&_mh_execute_header, v399, v400, "Deleting section %{public}ld", v401, 0xCu);
            v19 = v721;
          }
        }

        else
        {
          if (v398)
          {
            goto LABEL_366;
          }

          if ((TupleTypeMetadata3 & 1) == 0)
          {
            v413 = v392 + v725;
            v414 = v394 + v725;
            if (__OFADD__(v394, v725))
            {
              goto LABEL_373;
            }

            v415 = sub_10056DF68();
            v416 = sub_100573448();
            if (os_log_type_enabled(v415, v416))
            {
              v417 = swift_slowAlloc();
              *v417 = v726;
              *(v417 + 4) = v414;
              *(v417 + 12) = 2050;
              *(v417 + 14) = v413;
              _os_log_impl(&_mh_execute_header, v415, v416, "[Insert] Moving section from %{public}ld to %{public}ld", v417, 0x16u);
            }

            v409 = *&v737[v659];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v409 = sub_1004A84A4(0, *(v409 + 2) + 1, 1, v409);
            }

            v419 = *(v409 + 2);
            v418 = *(v409 + 3);
            if (v419 >= v418 >> 1)
            {
              v409 = sub_1004A84A4((v418 > 1), v419 + 1, 1, v409);
            }

            sub_1004C8978();
            *(v409 + 2) = v419 + 1;
            v420 = &v409[16 * v419];
            *(v420 + 4) = v414;
            *(v420 + 5) = v413;
            goto LABEL_226;
          }

          v19 = a7;
          v399 = sub_10056DF68();
          v402 = sub_100573448();
          if (os_log_type_enabled(v399, v402))
          {
            v403 = swift_slowAlloc();
            *v403 = v728;
            *(v403 + 4) = a8;
            _os_log_impl(&_mh_execute_header, v399, v402, "Inserting section %{public}ld", v403, 0xCu);
            v19 = v721;
          }
        }

        sub_10056CD28(a8);
        sub_1004C8978();
LABEL_196:
        v389 = v743;
        sub_100573208();
      }

      while (*(v389 + v733) != v748);
    }

    sub_1004C8980(v743);
    v211 = sub_10049931C(_swiftEmptyArrayStorage);
    v213 = (v750 + 64);
    v212 = *(v750 + 64);
    v214 = 1 << *(v750 + 32);
    v215 = -1;
    v747 = v211;
    if (v214 < 64)
    {
      v215 = ~(-1 << v214);
    }

    v659 = v215 & v212;
    v635 = ((v214 + 63) >> 6);
    v216 = TupleTypeMetadata2;
    v640 = (TupleTypeMetadata2 - 8);
    v655 = (v685 + 16);
    v658 = (v685 + 32);
    v639 = (v664 + 32);
    v644 = v715 + 32;
    v724 = (v666 + 16);
    v723 = (v666 + 32);
    v743 = (v727 + 16);
    v742 = (v727 + 8);
    v722 = (v676 + 8);
    v637 = (v665 + 8);
    v645 = (v673 + 8);
    v638 = (v685 + 8);
    v641 = v750;

    v217 = 0;
    *&v218 = 134349312;
    v665 = v218;
    *&v218 = 136446210;
    v666 = v218;
    *&v218 = 136446466;
    v653 = v218;
    a8 = v739;
    TupleTypeMetadata3 = v736;
    v219 = v738;
    v220 = v732;
    v636 = v213;
LABEL_88:
    a7 = v692;
    v221 = v659;
    if (v659)
    {
      v654 = v217;
      v222 = v217;
      goto LABEL_98;
    }

    v223 = v635 <= v217 + 1 ? v217 + 1 : v635;
    v224 = v223 - 1;
LABEL_94:
    v222 = v217 + 1;
    if (!__OFADD__(v217, 1))
    {
      break;
    }

LABEL_358:
    __break(1u);
LABEL_359:
    __break(1u);
LABEL_360:
    __break(1u);
LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
LABEL_365:
    __break(1u);
LABEL_366:
    __break(1u);
LABEL_367:
    __break(1u);
LABEL_368:
    __break(1u);
LABEL_369:
    __break(1u);
LABEL_370:
    swift_once();
  }

  if (v222 >= v635)
  {
    v659 = 0;
    v233 = 1;
    v654 = v224;
    goto LABEL_99;
  }

  v221 = v213[v222];
  ++v217;
  if (!v221)
  {
    goto LABEL_94;
  }

  v654 = v222;
LABEL_98:
  v659 = (v221 - 1) & v221;
  v225 = __clz(__rbit64(v221)) | (v222 << 6);
  v226 = *(*(v641 + 48) + 8 * v225);
  v227 = v685;
  v228 = v680;
  (*(v685 + 16))(v680, *(v641 + 56) + *(v685 + 72) * v225, TupleTypeMetadata3);
  v229 = TupleTypeMetadata2;
  v230 = *(TupleTypeMetadata2 + 48);
  v231 = v692;
  *v692 = v226;
  v232 = *(v227 + 32);
  v216 = v229;
  v232(v231 + v230, v228, TupleTypeMetadata3);
  a7 = v231;
  v233 = 0;
LABEL_99:
  v234 = *(v216 - 8);
  (*(v234 + 56))(a7, v233, 1, v216);
  (*v639)(v220, a7, v682);
  if ((*(v234 + 48))(v220, 1, v216) == 1)
  {

    v421 = 0;
    v710 = (v715 + 40);
    v422 = *(v715 + 32);
    v730 = (v667 + 8);
    v711 = (v673 + 16);
    v719 = v727 + 32;
    *&v423 = 134350594;
    v707 = v423;
    v424 = v643;
    v425 = v646;
    v722 = v422;
    while (1)
    {
      if (v421 >= v424)
      {
        goto LABEL_375;
      }

      v427 = (v421 + 1);
      if (__OFADD__(v421, 1))
      {
        goto LABEL_376;
      }

      v428 = v679;
      sub_100572E48();
      v429 = v422(v19, v715);
      v431 = v756;
      if (!*(v756 + 16))
      {
        (*v645)(v428, v19);

LABEL_229:
        v426 = v718;
        goto LABEL_230;
      }

      v432 = sub_1004B0CCC(v429, v430);
      v434 = v433;

      if ((v434 & 1) == 0)
      {
        (*v645)(v679, v19);
        goto LABEL_229;
      }

      v723 = (v421 + 1);
      v435 = *(*(v431 + 7) + 8 * v432);
      v436 = v715;
      v437 = *(v715 + 40);
      v437(v19, v715);
      v740 = v435;
      sub_100572E48();
      v438 = v684;
      v437(v19, v436);
      v439 = v686;
      v440 = sub_1005731C8();
      v441 = *v730;
      (*v730)(v438, v439);
      v442 = sub_1005731C8();
      v738 = v440;
      v443 = __OFSUB__(v442, v440);
      v444 = v442 - v440;
      if (v443)
      {
        goto LABEL_377;
      }

      v445 = v661;
      if (v444 < 0)
      {
        v443 = __OFSUB__(0, v444);
        v444 = -v444;
        if (v443)
        {
          goto LABEL_380;
        }
      }

      v736 = v442;
      swift_beginAccess();
      v724 = v747;
      v446 = sub_1004B8264(v740, v747);
      v448 = v447;
      swift_endAccess();
      if (v448)
      {
        v449 = 0;
      }

      else
      {
        v449 = v446;
      }

      v739 = v444 + v449;
      if (__OFADD__(v444, v449))
      {
        goto LABEL_378;
      }

      v737 = sub_1005731C8();
      v450 = *v711;
      v451 = v721;
      (*v711)(v445, v679, v721);
      v452 = v662;
      v708 = v450;
      v450(v662, v671, v451);
      v453 = sub_10056DF68();
      v454 = sub_100573448();
      v455 = os_log_type_enabled(v453, v454);
      *&v728 = v441;
      v709 = v431;
      if (v455)
      {
        v456 = swift_slowAlloc();
        v735 = swift_slowAlloc();
        v745 = v735;
        *v456 = v707;
        *(v456 + 4) = v421;
        *(v456 + 12) = 2082;
        WitnessTable = v453;
        LODWORD(v733) = v454;
        v457 = v722;
        v458 = v722(v451, v715);
        v459 = v445;
        v461 = v460;
        v462 = *v645;
        (*v645)(v459, v451);
        v463 = sub_1004C2954(v458, v461, &v745);

        *(v456 + 14) = v463;
        *(v456 + 22) = 2050;
        *(v456 + 24) = v740;
        *(v456 + 32) = 2080;
        v464 = v662;
        v465 = v457(v451, v715);
        v467 = v466;
        *&v726 = v462;
        v462(v464, v451);
        v468 = sub_1004C2954(v465, v467, &v745);

        *(v456 + 34) = v468;
        *(v456 + 42) = 2050;
        *(v456 + 44) = v444;
        *(v456 + 52) = 2050;
        *(v456 + 54) = v739;
        *(v456 + 62) = 2082;
        v748 = sub_1004B8264(v740, v724);
        LOBYTE(v749) = v469 & 1;
        sub_100009DCC(&qword_1006F8E68, &qword_1005A6538);
        v470 = sub_100572978();
        v472 = sub_1004C2954(v470, v471, &v745);

        *(v456 + 64) = v472;
        v473 = WitnessTable;
        _os_log_impl(&_mh_execute_header, WitnessTable, v733, "Section %{public}ld(%{public}s) mapped to section %{public}ld(%s): difference=%{public}ld adjustedDifference=%{public}ld diffAdjustmentMap=%{public}s", v456, 0x48u);
        swift_arrayDestroy();

        v436 = v715;
      }

      else
      {

        v474 = *v645;
        (*v645)(v452, v451);
        *&v726 = v474;
        v474(v445, v451);
      }

      v748 = _swiftEmptyArrayStorage;
      v475 = v738;
      if (v736 > v738)
      {
        v475 = v736;
      }

      v476 = (v475 - 1);
      if (__OFSUB__(v475, 1))
      {
        goto LABEL_379;
      }

      swift_beginAccess();
      isa = _swiftEmptyArrayStorage[2];
      if (isa >= v739)
      {
        v561 = _swiftEmptyArrayStorage;
        v527 = v683;
        goto LABEL_307;
      }

      v735 = v421 + v725;
      v478 = __OFADD__(v421, v725);
      LODWORD(v736) = v478;
      v479 = v740;
      if (v737 >= v738)
      {
        v479 = v421;
      }

      v732 = (v479 + v725);
      v480 = __OFADD__(v479, v725);
      LODWORD(v733) = v480;
      WitnessTable = &_swiftEmptyArrayStorage[2];
      v731 = _swiftEmptyArrayStorage;
      do
      {
        while (1)
        {
          if (v476 < 0)
          {

            v613 = v660;
            v614 = v679;
            v708(v660, v679, v451);
            v615 = sub_10056DF68();
            v616 = sub_100573438();
            if (os_log_type_enabled(v615, v616))
            {
              v617 = swift_slowAlloc();
              v618 = swift_slowAlloc();
              v745 = v618;
              *v617 = v666;
              v619 = v722(v451, v436);
              v621 = v620;
              v622 = v726;
              (v726)(v613, v451);
              v623 = sub_1004C2954(v619, v621, &v745);

              *(v617 + 4) = v623;
              _os_log_impl(&_mh_execute_header, v615, v616, "We ran out of items while trying to build index paths for section with identifier %{public}s", v617, 0xCu);
              sub_100010474(v618);

              sub_1000F3E14(v696, v718);

              sub_1000F3E14(v713, v714);
              sub_1000F3E14(v642, v646);
              v622(v671, v451);
              (v728)(v672, v686);
              v622(v614, v451);
            }

            else
            {

              sub_1000F3E14(v696, v718);

              sub_1000F3E14(v713, v714);
              sub_1000F3E14(v642, v646);
              v624 = v726;
              (v726)(v613, v451);
              v624(v671, v451);
              (v728)(v672, v686);
              v624(v614, v451);
            }

            (*(v674 + 8))(v678, v705);

            goto LABEL_193;
          }

          if (v736)
          {
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
LABEL_374:
            __break(1u);
LABEL_375:
            __break(1u);
LABEL_376:
            __break(1u);
LABEL_377:
            __break(1u);
LABEL_378:
            __break(1u);
LABEL_379:
            __break(1u);
LABEL_380:
            __break(1u);

            __break(1u);
            return;
          }

          sub_10056CDD8();
          v481 = v753;
          v482 = *(v753 + 2);
          v740 = v476;
          if (v482)
          {
            sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v483 = sub_100572738();
            v484 = -1 << v481[32];
            v485 = v483 & ~v484;
            if ((*&v481[((v485 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v485))
            {
              v486 = ~v484;
              v487 = *(v727 + 72);
              v488 = *(v727 + 16);
              while (1)
              {
                v489 = v741;
                v488(v741, *(v481 + 6) + v487 * v485, v744);
                sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v490 = sub_1005727E8();
                v491 = *v742;
                (*v742)(v489, v744);
                if (v490)
                {
                  break;
                }

                v485 = (v485 + 1) & v486;
                if (((*&v481[((v485 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v485) & 1) == 0)
                {
                  goto LABEL_266;
                }
              }

              v509 = v663;
              v510 = v712;
              v488(v663, v712, v744);
              v511 = sub_10056DF68();
              v512 = sub_100573448();
              if (os_log_type_enabled(v511, v512))
              {
                v513 = swift_slowAlloc();
                v514 = swift_slowAlloc();
                v745 = v514;
                *v513 = v666;
                sub_1004C8A8C(&qword_1006F8E60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v515 = v744;
                v516 = sub_100574408();
                v518 = v517;
                v491(v509, v515);
                v519 = sub_1004C2954(v516, v518, &v745);

                *(v513 + 4) = v519;
                _os_log_impl(&_mh_execute_header, v511, v512, "%{public}s contained in the visible index paths set, skipping", v513, 0xCu);
                sub_100010474(v514);

                v491(v510, v515);
              }

              else
              {

                v526 = v744;
                v491(v509, v744);
                v491(v510, v526);
              }

              v451 = v721;
              v527 = v683;
              v493 = v740;
              goto LABEL_297;
            }
          }

LABEL_266:
          if (v733)
          {
            goto LABEL_374;
          }

          v492 = v681;
          v493 = v740;
          sub_10056CDD8();
          v494 = (*(v727 + 80) + 32) & ~*(v727 + 80);
          if (v737 < v738)
          {
            break;
          }

          v503 = *v717;
          v502 = v717[1];
          v504 = v502 + v494;
          v505 = *(v502 + 16);
          if (*v717)
          {

            sub_1004C6E80(v492, v504, v505, (v503 + 16), v503 + 32);
            v507 = v506;

            if (v507)
            {
              goto LABEL_299;
            }

            v508 = *v743;
          }

          else
          {
            if (!v505)
            {
              goto LABEL_299;
            }

            v523 = *(v727 + 72);
            v508 = *(v727 + 16);
            while (1)
            {
              v524 = v741;
              v508(v741, v504, v744);
              sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
              v525 = sub_1005727E8();
              (*v742)(v524, v744);
              if (v525)
              {
                break;
              }

              v504 += v523;
              if (!--v505)
              {
                goto LABEL_299;
              }
            }

            v493 = v740;
          }

          v528 = v669;
          v508(v669, v492, v744);
          v529 = sub_10056DF68();
          v543 = sub_100573448();
          if (!os_log_type_enabled(v529, v543))
          {
LABEL_295:

            v549 = *v742;
            v550 = v744;
            (*v742)(v528, v744);
            v549(v712, v550);
            v549(v492, v550);
            goto LABEL_296;
          }

          v531 = swift_slowAlloc();
          v544 = v528;
          v533 = swift_slowAlloc();
          v745 = v533;
          *v531 = v666;
          sub_1004C8A8C(&qword_1006F8E60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v534 = v744;
          v545 = sub_100574408();
          v547 = v546;
          v538 = *v742;
          (*v742)(v544, v534);
          v548 = sub_1004C2954(v545, v547, &v745);

          *(v531 + 4) = v548;
          v540 = v543;
          v541 = v529;
          v542 = "%{public}s contained in the deleted index paths set, skipping";
LABEL_294:
          _os_log_impl(&_mh_execute_header, v541, v540, v542, v531, 0xCu);
          sub_100010474(v533);

          v538(v712, v534);
          v538(v681, v534);
          v493 = v740;
LABEL_296:
          v451 = v721;
          v527 = v683;
LABEL_297:
          v476 = v493 - 1;
          isa = WitnessTable->isa;
          v436 = v715;
          if (WitnessTable->isa >= v739)
          {
            goto LABEL_306;
          }
        }

        v496 = *v706;
        v495 = v706[1];
        v497 = v495 + v494;
        v498 = *(v495 + 16);
        if (*v706)
        {

          sub_1004C6E80(v492, v497, v498, (v496 + 16), v496 + 32);
          v500 = v499;

          if ((v500 & 1) == 0)
          {
            v501 = *v743;
LABEL_289:
            v528 = v668;
            v501(v668, v492, v744);
            v529 = sub_10056DF68();
            v530 = sub_100573448();
            if (!os_log_type_enabled(v529, v530))
            {
              goto LABEL_295;
            }

            v531 = swift_slowAlloc();
            v532 = v528;
            v533 = swift_slowAlloc();
            v745 = v533;
            *v531 = v666;
            sub_1004C8A8C(&qword_1006F8E60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v534 = v744;
            v535 = sub_100574408();
            v537 = v536;
            v538 = *v742;
            (*v742)(v532, v534);
            v539 = sub_1004C2954(v535, v537, &v745);

            *(v531 + 4) = v539;
            v540 = v530;
            v541 = v529;
            v542 = "%{public}s contained in the inserted index paths set, skipping";
            goto LABEL_294;
          }
        }

        else if (v498)
        {
          v520 = *(v727 + 72);
          v501 = *(v727 + 16);
          while (1)
          {
            v521 = v741;
            v501(v741, v497, v744);
            sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v522 = sub_1005727E8();
            (*v742)(v521, v744);
            if (v522)
            {
              break;
            }

            v497 += v520;
            if (!--v498)
            {
              goto LABEL_299;
            }
          }

          v493 = v740;
          goto LABEL_289;
        }

LABEL_299:
        (*v743)(v670, v492, v744);
        v551 = v731;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v551 = sub_1004A828C(0, v551[2].isa + 1, 1, v551);
        }

        v451 = v721;
        v436 = v715;
        v552 = v712;
        v553 = v740;
        v555 = v551[2].isa;
        v554 = v551[3].isa;
        if (v555 >= v554 >> 1)
        {
          v551 = sub_1004A828C((v554 > 1), v555 + 1, 1, v551);
        }

        v551[2].isa = (v555 + 1);
        v556 = v551 + 2;
        v557 = v727;
        v558 = v551 + v494 + *(v727 + 72) * v555;
        v559 = v744;
        (*(v727 + 32))(v558, v670, v744);
        v731 = v551;
        v748 = v551;
        v560 = *(v557 + 8);
        v560(v552, v559);
        v560(v681, v559);
        v476 = v553 - 1;
        WitnessTable = v551 + 2;
        isa = v551[2].isa;
      }

      while (v556->isa < v739);
      v527 = v683;
LABEL_306:
      v561 = v731;
LABEL_307:
      v731 = v561;

      if (v737 >= v738)
      {
        if (isa)
        {
          v578 = 0;
          v579 = *(v727 + 72);
          v580 = (*(v727 + 80) + 32) & ~*(v727 + 80);
          v581 = v731 + v580;
          v582 = *(v727 + 16);
          v740 = (v731 + v580);
          v582(v527, v731 + v580, v744);
          while (1)
          {
            v584 = *v717;
            v583 = v717[1];
            v585 = v583 + v580;
            v586 = *(v583 + 16);
            if (*v717)
            {

              sub_1004C6E80(v527, v585, v586, (v584 + 16), v584 + 32);
              v588 = v587;
              v590 = v589;

              if (v588)
              {
                v527 = v683;
                goto LABEL_336;
              }

              v527 = v683;
            }

            else if (v586)
            {
              while (1)
              {
                v591 = v741;
                v582(v741, v585, v744);
                sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v592 = sub_1005727E8();
                (*v742)(v591, v744);
                if (v592)
                {
                  break;
                }

                v585 += v579;
                if (!--v586)
                {
                  v590 = 0;
                  v581 = v740;
                  goto LABEL_336;
                }
              }

              v581 = v740;
            }

            else
            {
              v590 = 0;
LABEL_336:
              sub_1004C6864(v527, v590);
            }

            v578 = (v578 + 1);
            (*v742)(v527, v744);
            if (v578 == isa)
            {
              break;
            }

            v582(v527, (v581 + v579 * v578), v744);
          }
        }

        v593 = sub_10056DF68();
        v604 = sub_100573448();
        if (os_log_type_enabled(v593, v604))
        {
          v595 = swift_slowAlloc();
          v596 = swift_slowAlloc();
          v745 = v596;
          *v595 = v666;

          v605 = sub_100572D38();
          v607 = v606;

          v608 = sub_1004C2954(v605, v607, &v745);

          *(v595 + 4) = v608;
          v601 = v604;
          v602 = v593;
          v603 = "Non visible adjustment: deleting %{public}s";
LABEL_342:
          _os_log_impl(&_mh_execute_header, v602, v601, v603, v595, 0xCu);
          sub_100010474(v596);
        }
      }

      else
      {
        if (isa)
        {
          v562 = 0;
          v563 = *(v727 + 72);
          v564 = (*(v727 + 80) + 32) & ~*(v727 + 80);
          v565 = v731 + v564;
          v566 = *(v727 + 16);
          v567 = v677;
          v740 = (v731 + v564);
          v566(v677, v731 + v564, v744);
          while (1)
          {
            v569 = *v706;
            v568 = v706[1];
            v570 = v568 + v564;
            v571 = *(v568 + 16);
            if (*v706)
            {

              sub_1004C6E80(v567, v570, v571, (v569 + 16), v569 + 32);
              v573 = v572;
              v575 = v574;

              if (v573)
              {
                v567 = v677;
                goto LABEL_321;
              }

              v567 = v677;
            }

            else if (v571)
            {
              while (1)
              {
                v576 = v741;
                v566(v741, v570, v744);
                sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v577 = sub_1005727E8();
                (*v742)(v576, v744);
                if (v577)
                {
                  break;
                }

                v570 += v563;
                if (!--v571)
                {
                  v575 = 0;
                  v565 = v740;
                  goto LABEL_321;
                }
              }

              v565 = v740;
            }

            else
            {
              v575 = 0;
LABEL_321:
              sub_1004C6864(v567, v575);
            }

            v562 = (v562 + 1);
            (*v742)(v567, v744);
            if (v562 == isa)
            {
              break;
            }

            v566(v567, (v565 + v563 * v562), v744);
          }
        }

        v593 = sub_10056DF68();
        v594 = sub_100573448();
        if (os_log_type_enabled(v593, v594))
        {
          v595 = swift_slowAlloc();
          v596 = swift_slowAlloc();
          v745 = v596;
          *v595 = v666;

          v597 = sub_100572D38();
          v599 = v598;

          v600 = sub_1004C2954(v597, v599, &v745);

          *(v595 + 4) = v600;
          v601 = v594;
          v602 = v593;
          v603 = "Non visible adjustment: inserting %{public}s";
          goto LABEL_342;
        }
      }

      v19 = v721;
      v609 = v726;
      (v726)(v671, v721);
      (v728)(v672, v686);
      v609(v679, v19);

      v425 = v646;
      v426 = v718;
      v422 = v722;
      v427 = v723;
LABEL_230:
      v424 = v643;
      v421 = v427;
      if (v427 == v643)
      {

        sub_1000F3E14(v696, v426);

        sub_1000F3E14(v713, v714);

        sub_1000F3E14(v642, v425);

        (*(v674 + 8))(v678, v705);

        goto LABEL_352;
      }
    }
  }

  v235 = *v220;
  (*v658)(v699, v220 + *(v216 + 48), TupleTypeMetadata3);
  v733 = v235;
  if (__OFSUB__(v235, v725))
  {
    goto LABEL_367;
  }

  sub_100572E48();
  v236 = (*(v715 + 32))(v19);
  v238 = *(v756 + 16);
  v664 = v756;
  if (v238 && (v239 = sub_1004B0CCC(v236, v237), (v240 & 1) != 0))
  {
    v241 = *(*(v664 + 56) + 8 * v239);

    v242 = swift_isUniquelyReferenced_nonNull_native();
    v748 = v747;
    v687 = v241;
    sub_1004C4954(0, v241, v242);
    LODWORD(v726) = 0;
    v747 = v748;
  }

  else
  {

    v687 = 0;
    LODWORD(v726) = 1;
  }

  (*v655)(v219, v699, TupleTypeMetadata3);
  v243 = *(v695 + 36);
  a7 = WitnessTable;
  sub_1005731B8();
  sub_100573208();
  if (sub_1005741E8())
  {
LABEL_87:
    (*v637)(v219, v695);
    (*v645)(v694, v19);
    (*v638)(v699, TupleTypeMetadata3);
    v216 = TupleTypeMetadata2;
    v213 = v636;
    v217 = v654;
    goto LABEL_88;
  }

  v675 = v687 + v725;
  v244 = __OFADD__(v687, v725);
  LODWORD(v676) = v244;
  v735 = v243;
  while (1)
  {
    v248 = sub_1005732E8();
    v249 = v730;
    v250 = v731;
    (*v724)(v730);
    v248(&v748, 0);
    sub_100573218();
    v251 = v740;
    (*v723)(v740, v249, v250);
    LODWORD(v248) = swift_getEnumCaseMultiPayload();
    v252 = *v251;
    sub_100010324(&qword_1006F8E68, &qword_1005A6538);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v253 = v251 + *(TupleTypeMetadata3 + 64);
    v254 = *v253;
    a8 = v253[8];
    v255 = v754[0];
    v256 = *(v754[0] + 16);
    if (v248 != 1)
    {
      if (v256)
      {
        v259 = sub_1004B0DB8(v733);
        if (v260)
        {
          v256 = *(*(v255 + 56) + 8 * v259);
        }

        else
        {
          v256 = 0;
        }
      }

      if (__OFADD__(v252, v256))
      {
        __break(1u);
LABEL_357:
        __break(1u);
        goto LABEL_358;
      }

      a7 = v740 + *(TupleTypeMetadata3 + 48);
      if (v726)
      {
        v275 = sub_10056DF68();
        v276 = sub_100573448();
        v277 = os_log_type_enabled(v275, v276);
        TupleTypeMetadata3 = v736;
        if (v277)
        {
          v278 = swift_slowAlloc();
          *v278 = v665;
          *(v278 + 4) = v733;
          *(v278 + 12) = 2050;
          *(v278 + 14) = v252;
          goto LABEL_144;
        }

LABEL_145:

        a8 = v739;
        v219 = v738;
        v220 = v732;
        goto LABEL_113;
      }

      *&v728 = v740 + *(TupleTypeMetadata3 + 48);
      if (a8)
      {
        v280 = sub_1004BED64(&v748, v687);
        if (*(v279 + 8))
        {
          (v280)(&v748, 0);
          a7 = v698;
        }

        else
        {
          a7 = v698;
          if (__OFADD__(*v279, 1))
          {
            goto LABEL_369;
          }

          ++*v279;
          (v280)(&v748, 0);
        }

        if (v676)
        {
          goto LABEL_363;
        }

        sub_10056CDD8();
        v343 = *v706;
        v342 = v706[1];
        v344 = v342 + ((*(v727 + 80) + 32) & ~*(v727 + 80));
        v345 = *(v342 + 16);
        if (*v706)
        {

          sub_1004C6E80(a7, v344, v345, (v343 + 16), v343 + 32);
          v347 = v346;
          v349 = v348;

          if ((v347 & 1) == 0)
          {
            goto LABEL_185;
          }
        }

        else
        {
          if (v345)
          {
            v368 = *(v727 + 72);
            v369 = *(v727 + 16);
            do
            {
              v370 = v741;
              v371 = v744;
              v369(v741, v344, v744);
              sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
              v372 = sub_1005727E8();
              (*v742)(v370, v371);
              if (v372)
              {
                goto LABEL_185;
              }

              v344 += v368;
            }

            while (--v345);
          }

          v349 = 0;
        }

        sub_1004C6864(a7, v349);
LABEL_185:
        v373 = v688;
        (*v743)(v688, a7, v744);
        v374 = sub_10056DF68();
        v375 = sub_100573448();
        if (os_log_type_enabled(v374, v375))
        {
          v376 = swift_slowAlloc();
          v377 = swift_slowAlloc();
          v748 = v377;
          *v376 = v666;
          sub_1004C8A8C(&qword_1006F8E60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v378 = v744;
          v379 = sub_100574408();
          v381 = v380;
          v382 = *v742;
          (*v742)(v373, v378);
          v383 = sub_1004C2954(v379, v381, &v748);

          *(v376 + 4) = v383;
          _os_log_impl(&_mh_execute_header, v374, v375, "Inserting item %{public}s", v376, 0xCu);
          sub_100010474(v377);
          v19 = v721;

          v382(v698, v378);
        }

        else
        {

          v384 = *v742;
          v385 = v744;
          (*v742)(v373, v744);
          v384(a7, v385);
        }

        a8 = v739;
        TupleTypeMetadata3 = v736;
        v219 = v738;
        v220 = v732;
        goto LABEL_112;
      }

      v282 = v711;
      sub_10056CDD8();
      if (v676)
      {
        goto LABEL_362;
      }

      v283 = v710;
      sub_10056CDD8();
      v284 = *v743;
      v285 = v690;
      v286 = v282;
      v287 = v744;
      (*v743)(v690, v286, v744);
      v288 = v697;
      v284(v697, v283, v287);
      v289 = sub_10056DF68();
      v290 = sub_100573448();
      if (os_log_type_enabled(v289, v290))
      {
        v291 = swift_slowAlloc();
        v651 = swift_slowAlloc();
        v748 = v651;
        *v291 = v653;
        sub_1004C8A8C(&qword_1006F8E60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v292 = v744;
        v293 = sub_100574408();
        v294 = v285;
        v296 = v295;
        v297 = *v742;
        (*v742)(v294, v292);
        v298 = sub_1004C2954(v293, v296, &v748);

        *(v291 + 4) = v298;
        *(v291 + 12) = 2082;
        v299 = v697;
        v300 = sub_100574408();
        v302 = v301;
        v297(v299, v292);
        v303 = sub_1004C2954(v300, v302, &v748);

        *(v291 + 14) = v303;
        _os_log_impl(&_mh_execute_header, v289, v290, "[Insert] Moving item %{public}s to %{public}s", v291, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v297 = *v742;
        v350 = v288;
        v351 = v744;
        (*v742)(v350, v744);
        v297(v285, v351);
      }

      a8 = v739;
      v219 = v738;
      v220 = v732;
      v352 = *(v703 + 48);
      v353 = v704;
      v354 = v744;
      v284(v704, v711, v744);
      v284(&v353[v352], v710, v354);
      v355 = *&v737[v719];
      v356 = swift_isUniquelyReferenced_nonNull_native();
      v19 = v721;
      if ((v356 & 1) == 0)
      {
        v355 = sub_1004A82B4(0, v355[2] + 1, 1, v355);
      }

      v358 = v355[2];
      v357 = v355[3];
      if (v358 >= v357 >> 1)
      {
        v355 = sub_1004A82B4((v357 > 1), v358 + 1, 1, v355);
      }

      v245 = v744;
      v297(v710, v744);
      v297(v711, v245);
      v355[2] = v358 + 1;
      v246 = v355 + ((*(v702 + 80) + 32) & ~*(v702 + 80)) + *(v702 + 72) * v358;
      v247 = &v732;
      goto LABEL_111;
    }

    if (v256)
    {
      v257 = sub_1004B0DB8(v733);
      if (v258)
      {
        v256 = *(*(v255 + 56) + 8 * v257);
      }

      else
      {
        v256 = 0;
      }
    }

    if (__OFADD__(v252, v256))
    {
      goto LABEL_357;
    }

    if (v726)
    {
      break;
    }

    v262 = sub_1004BED64(&v748, v687);
    if (*(v261 + 8) != 1)
    {
      if (__OFSUB__(*v261, 1))
      {
        goto LABEL_361;
      }

      --*v261;
    }

    (v262)(&v748, 0);
    *&v728 = v740 + *(TupleTypeMetadata3 + 48);
    if (a8)
    {
      goto LABEL_130;
    }

    v19 = v707;
    sub_10056CDD8();
    if (v676)
    {
      goto LABEL_364;
    }

    v304 = v709;
    sub_10056CDD8();
    v305 = v744;
    v306 = *v743;
    v307 = v689;
    (*v743)(v689, v19, v744);
    v308 = v652;
    v306(v652, v304, v305);
    v309 = sub_10056DF68();
    v310 = sub_100573448();
    if (os_log_type_enabled(v309, v310))
    {
      v311 = swift_slowAlloc();
      v651 = swift_slowAlloc();
      v748 = v651;
      *v311 = v653;
      sub_1004C8A8C(&qword_1006F8E60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v648 = v309;
      v312 = v744;
      v313 = sub_100574408();
      LODWORD(v647) = v310;
      v315 = v314;
      v316 = *v742;
      (*v742)(v307, v312);
      v317 = v313;
      v19 = v707;
      v318 = sub_1004C2954(v317, v315, &v748);

      *(v311 + 4) = v318;
      *(v311 + 12) = 2082;
      v319 = sub_100574408();
      v321 = v320;
      v316(v308, v312);
      v322 = sub_1004C2954(v319, v321, &v748);

      *(v311 + 14) = v322;
      v323 = v648;
      _os_log_impl(&_mh_execute_header, v648, v647, "[Remove] Moving item %{public}s to %{public}s", v311, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v316 = *v742;
      v359 = v308;
      v360 = v744;
      (*v742)(v359, v744);
      v316(v307, v360);
    }

    v219 = v738;
    v220 = v732;
    v361 = *(v703 + 48);
    v362 = v701;
    v363 = v744;
    v306(v701, v19, v744);
    v306(&v362[v361], v709, v363);
    v355 = *&v737[v719];
    v364 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v721;
    a8 = v739;
    if ((v364 & 1) == 0)
    {
      v355 = sub_1004A82B4(0, v355[2] + 1, 1, v355);
    }

    v366 = v355[2];
    v365 = v355[3];
    if (v366 >= v365 >> 1)
    {
      v355 = sub_1004A82B4((v365 > 1), v366 + 1, 1, v355);
    }

    v367 = v744;
    v316(v709, v744);
    v316(v707, v367);
    v355[2] = v366 + 1;
    v246 = v355 + ((*(v702 + 80) + 32) & ~*(v702 + 80)) + *(v702 + 72) * v366;
    v247 = &v729;
LABEL_111:
    sub_1004C89E8(*(v247 - 32), v246);
    *&v737[v719] = v355;
    TupleTypeMetadata3 = v736;
LABEL_112:
    a7 = v728;
LABEL_113:
    (*v722)(a7, a8);
    a7 = WitnessTable;
    sub_100573208();
    if (sub_1005741E8())
    {
      goto LABEL_87;
    }
  }

  a7 = v740 + *(TupleTypeMetadata3 + 48);
  if (!a8)
  {
    v275 = sub_10056DF68();
    v276 = sub_100573448();
    v281 = os_log_type_enabled(v275, v276);
    TupleTypeMetadata3 = v736;
    if (v281)
    {
      v278 = swift_slowAlloc();
      *v278 = v665;
      *(v278 + 4) = v733;
      *(v278 + 12) = 2050;
      *(v278 + 14) = v254;
LABEL_144:
      _os_log_impl(&_mh_execute_header, v275, v276, "Skipping insert for [%{public}ld,%{public}ld]", v278, 0x16u);
    }

    goto LABEL_145;
  }

  *&v728 = v740 + *(TupleTypeMetadata3 + 48);
LABEL_130:
  v263 = v708;
  sub_10056CDD8();
  v264 = sub_1004B09D8(v263, v753);
  v265 = v739;
  v266 = v738;
  if (v264)
  {
    v268 = *v717;
    v267 = v717[1];
    v269 = v267 + ((*(v727 + 80) + 32) & ~*(v727 + 80));
    v270 = *(v267 + 16);
    if (*v717)
    {

      sub_1004C6E80(v263, v269, v270, (v268 + 16), v268 + 32);
      v272 = v271;
      v274 = v273;

      if ((v272 & 1) == 0)
      {
        goto LABEL_158;
      }
    }

    else
    {
      if (v270)
      {
        v324 = *(v727 + 72);
        v325 = *(v727 + 16);
        do
        {
          v326 = v741;
          v327 = v744;
          v325(v741, v269, v744);
          sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v328 = sub_1005727E8();
          (*v742)(v326, v327);
          if (v328)
          {
            goto LABEL_158;
          }

          v269 += v324;
        }

        while (--v270);
      }

      v274 = 0;
    }

    sub_1004C6864(v263, v274);
LABEL_158:
    v329 = v700;
    (*v743)(v700, v263, v744);
    v330 = sub_10056DF68();
    v331 = sub_100573448();
    if (os_log_type_enabled(v330, v331))
    {
      v332 = swift_slowAlloc();
      v333 = swift_slowAlloc();
      v748 = v333;
      *v332 = v666;
      sub_1004C8A8C(&qword_1006F8E60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v334 = v744;
      v335 = sub_100574408();
      v337 = v336;
      v338 = *v742;
      (*v742)(v329, v334);
      v339 = sub_1004C2954(v335, v337, &v748);

      *(v332 + 4) = v339;
      _os_log_impl(&_mh_execute_header, v330, v331, "Deleting item %{public}s", v332, 0xCu);
      sub_100010474(v333);
      v19 = v721;

      v338(v708, v334);
    }

    else
    {

      v340 = *v742;
      v341 = v744;
      (*v742)(v329, v744);
      v340(v263, v341);
    }

    a8 = v739;
    TupleTypeMetadata3 = v736;
    v219 = v738;
    v220 = v732;
    goto LABEL_112;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v386 = sub_10056DF68();
  v387 = sub_100573428();
  if (os_log_type_enabled(v386, v387))
  {
    v388 = swift_slowAlloc();
    *v388 = 0;
    _os_log_impl(&_mh_execute_header, v386, v387, "Tried to delete an index path from the visible items diff that is not present in the visible index paths set. The visible index paths are likely not consecutive and the diff would be inconsistent, bailing and reloading data.", v388, 2u);
    v265 = v739;
  }

  sub_1000F3E14(v696, v718);

  sub_1000F3E14(v713, v714);
  sub_1000F3E14(v642, v646);
  (*v637)(v266, v695);
  (*v645)(v694, v19);
  (*v638)(v699, v736);
  (*(v674 + 8))(v678, v705);
  (*v742)(v263, v744);
  *v737 = 1;
  (*v722)(v728, v265);

LABEL_193:
}

uint64_t sub_1004BEADC@<X0>(_BYTE *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1005727E8();
  *a5 = result & 1;
  return result;
}

uint64_t sub_1004BEBC4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 32);
  v7 = v6(a1, a2);
  sub_1004C31DC(&v11, v7, v8);

  result = v6(a1, a2);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t sub_1004BEC84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 32);
  v10 = v9(a4, a5);
  v12 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a3;
  *a3 = 0x8000000000000000;
  sub_1004C4A78(a1, v10, v12, isUniquelyReferenced_nonNull_native);

  *a3 = v15;

  return v9(a4, a5);
}

uint64_t (*sub_1004BED64(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1004C6498(v4, a2);
  return sub_1004BEDDC;
}

uint64_t (*sub_1004BEDE0(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_1004C6540(v8, a2, a3, a4);
  return sub_1004C8B70;
}

void sub_1004BEE70(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1004BEEBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __n128), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v37 = a8;
  v19 = sub_10056CE18();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin();
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a3(a1, a2, v21);
  if ((v24 & 1) == 0 || !a5)
  {
    return v24 & 1;
  }

  if (a5(a1, a2) & 1) != 0 || (v35 = v20, v36 = a7, swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), v25 = sub_10056DCE8(), (v26))
  {
    sub_1000F3E14(a5, a6);
    return v24 & 1;
  }

  v27 = *a9;
  v28 = *(*a9 + 16);
  if (v28)
  {
    v29 = v25;
    v30 = sub_1004B0DB8(a10);
    if (v31)
    {
      v28 = *(*(v27 + 56) + 8 * v30);
    }

    else
    {
      v28 = 0;
    }

    v25 = v29;
  }

  v32 = __OFADD__(v25, v28);
  result = v25 + v28;
  if (!v32)
  {
    sub_10056CDD8();
    type metadata accessor for AIDiffingUpdate(0);
    sub_1004C665C(v23);
    sub_1000F3E14(a5, a6);
    (*(v35 + 8))(v23, v19);
    return v24 & 1;
  }

  __break(1u);
  return result;
}

void UICollectionView.calculateAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(uint64_t, uint64_t *, NSObject *, __n128)@<X3>, char a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{

  v20 = [v14 indexPathsForVisibleItems];
  sub_10056CE18();
  v21 = sub_100572D28();

  sub_1000E672C(a6, a7);
  sub_1000E672C(a8, a10);
  sub_1000E672C(a11, a12);
  sub_1004B82F4(a1, a2, v21, a3, a4, a5 & 1, a6, a7, a9, a8, a10, a11, a12, a13, a14);
}

uint64_t UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t, uint64_t *, NSObject *, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a4;
  v55 = a7;
  v56 = a8;
  v52 = a5;
  v57 = a9;
  v58 = a3;
  v47 = a1;
  v48 = a2;
  v53 = a10;
  v54 = a6;
  v11 = *(a11 - 8);
  __chkstk_darwin();
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _DiffableSection(0, a11, v14, v15);
  v59 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin();
  v21 = &v47 - v20;
  v22 = *(v11 + 16);
  v22(v13, v47, a11, v19);
  v23 = v21;
  v60 = v21;
  *v21 = 0;
  *(v21 + 1) = 0xE000000000000000;
  v24 = *(v11 + 32);
  v24(&v23[*(v16 + 44)], v13, a11);
  (v22)(v13, v48, a11);
  *v18 = 0;
  *(v18 + 1) = 0xE000000000000000;
  v25 = &v18[*(v16 + 44)];
  v49 = v18;
  v24(v25, v13, a11);
  sub_100574418();
  v26 = v59;
  swift_allocObject();
  v27 = sub_100572D48();
  v28 = *(v26 + 16);
  v28(v29, v60, v16);
  sub_10049A6AC(v27, v16);
  v31 = v30;
  swift_allocObject();
  v32 = sub_100572D48();
  v28(v33, v18, v16);
  sub_10049A6AC(v32, v16);
  v35 = v34;
  v36 = [v50 indexPathsForVisibleItems];
  sub_10056CE18();
  v37 = sub_100572D28();

  v39 = v51;
  v38 = v52;
  sub_1000E672C(v51, v52);
  v40 = v54;
  v41 = v55;
  sub_1000E672C(v54, v55);
  v42 = v56;
  v43 = v53;
  sub_1000E672C(v56, v53);
  WitnessTable = swift_getWitnessTable();
  sub_1004B82F4(v31, v35, v37, v58, v58, 0, v39, v38, v57, v40, v41, v42, v43, v16, WitnessTable);
  v45 = *(v59 + 8);
  v45(v49, v16);
  return v45(v60, v16);
}

uint64_t UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(NSObject *a1, uint64_t a2, uint64_t a3, void (**a4)(uint64_t, uint64_t *, NSObject *, __n128), int a5, int a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(void), uint64_t a15, void (*a16)(uint64_t), uint64_t a17, void *a18, uint64_t a19)
{
  v39 = a3;
  v33 = a7;
  v34 = a8;
  v45 = a6;
  v38 = a5;
  v30 = a1;
  v43 = a15;
  v44 = a14;
  v42 = a16;
  v40 = a4;
  v41 = a17;
  v35 = a19;
  v36 = a18;
  v31 = a10;
  v32 = a2;
  v37 = *(type metadata accessor for AIDiffingUpdate(0) - 8);
  __chkstk_darwin();
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  v22 = [v19 indexPathsForVisibleItems];
  sub_10056CE18();
  v23 = sub_100572D28();

  v24 = v33;
  v25 = v34;
  sub_1000E672C(v33, v34);
  v26 = v31;
  sub_1000E672C(v31, a11);
  sub_1000E672C(a12, a13);
  sub_1004B82F4(v30, v32, v23, v39, v40, v38 & 1, v24, v25, v21, v26, a11, a12, a13, v36, v35);
  sub_100009DCC(&qword_1006F8C90, &unk_1005A6460);
  v27 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10057B510;
  sub_1004C27C0(v21, v28 + v27);
  UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v28, v45, v44, v43, v42, v41);

  return sub_1004C2824(v21);
}

uint64_t UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(uint64_t a1, int a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v165 = a4;
  v162 = a3;
  v159 = a2;
  v10 = sub_10056CD68();
  v160 = *(v10 - 8);
  __chkstk_darwin();
  v158 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AIDiffingUpdate(0);
  v13 = *(v12 - 1);
  __chkstk_darwin();
  v15 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v155 - v16;
  v161 = v6;
  swift_unknownObjectWeakInit();
  if (qword_1006F7F48 != -1)
  {
    swift_once();
  }

  v18 = sub_10056DF88();
  v19 = sub_10000C49C(v18, qword_1006F8C78);

  v164 = v19;
  v20 = sub_10056DF68();
  v21 = sub_100573448();
  v22 = os_log_type_enabled(v20, v21);
  v166 = a6;
  v163 = a5;
  if (v22)
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v20, v21, "applyUpdates called with %ld updates", v23, 0xCu);
  }

  else
  {
  }

  v172 = swift_allocBox();
  v179 = v24;
  _s14MusicUtilities15AIDiffingUpdateV18deletedSectionsSet10Foundation05IndexG0Vvpfi_0();
  v168 = swift_allocBox();
  v178 = v25;
  _s14MusicUtilities15AIDiffingUpdateV18deletedSectionsSet10Foundation05IndexG0Vvpfi_0();
  v26 = swift_allocObject();
  v167 = v26;
  *(v26 + 16) = _swiftEmptyArrayStorage;
  v177 = (v26 + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v176 = v27 + 16;
  v173 = v27;
  *(v27 + 24) = _swiftEmptyArrayStorage;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v175 = v28 + 16;
  v174 = v28;
  *(v28 + 24) = _swiftEmptyArrayStorage;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v171 = v29;
  *(v29 + 24) = _swiftEmptyArrayStorage;
  v30 = swift_allocObject();
  v170 = v30;
  *(v30 + 16) = _swiftEmptyArrayStorage;
  v31 = (v30 + 16);
  v32 = a1;
  v33 = *(a1 + 16);
  v169 = v32;
  if (v33 == 1)
  {
    sub_1004C27C0(v32 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v17);
    if (*v17 == 1)
    {
      sub_1004C10F4(v32, v186, v162, v34, v165, v163, v166);
      sub_1004C2824(v17);
      swift_unknownObjectWeakDestroy();
LABEL_39:

      v149 = 0;
      v15 = 0;
      goto LABEL_40;
    }

    v72 = *(v160 + 24);
    v72(v179, &v17[v12[6]], v10);
    v72(v178, &v17[v12[7]], v10);
    *v177 = *&v17[v12[8]];

    v73 = &v17[v12[9]];
    v74 = *v73;
    v75 = v73[1];
    v76 = v173;
    *(v173 + 16) = v74;
    *(v76 + 24) = v75;

    v77 = &v17[v12[10]];
    v78 = *v77;
    v79 = v77[1];
    v80 = v174;
    *(v174 + 16) = v78;
    *(v80 + 24) = v79;

    v81 = &v17[v12[11]];
    v82 = v81[1];
    v83 = v31;
    v84 = v171;
    *(v171 + 16) = *v81;
    *(v84 + 24) = v82;

    v85 = *&v17[v12[12]];

    sub_1004C2824(v17);
    v157 = v83;
    *v83 = v85;

    v86 = v172;
    v87 = v168;
    v88 = v163;
    v89 = v165;
    v90 = v170;
    v91 = v162;
  }

  else
  {
    if (v33)
    {
      v35 = v15 + 8;
      v36 = v169 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v37 = *(v13 + 72);
      do
      {
        sub_1004C27C0(v36, v15);
        if (*v15 == 1)
        {
          goto LABEL_38;
        }

        sub_10056CD48();
        sub_10056CD48();

        sub_1004B3A34(v39);
        sub_1004C765C(*&v35[v12[9]]);
        sub_1004C765C(*&v35[v12[10]]);
        sub_1004C765C(*&v35[v12[11]]);

        sub_1004B3B20(v40);
        sub_1004C2824(v15);
        v36 += v37;
      }

      while (--v33);
    }

    v41 = sub_10056DF68();
    v42 = sub_100573448();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Final update:", v43, 2u);
    }

    v44 = sub_10056DF68();
    v45 = sub_100573448();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      aBlock = v156;
      *v46 = 136315138;
      v47 = v179;
      swift_beginAccess();
      v48 = v160;
      v49 = v158;
      (*(v160 + 16))(v158, v47, v10);
      sub_1004C8A8C(&qword_1006F8CA0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      v50 = sub_100574408();
      v52 = v51;
      (*(v48 + 8))(v49, v10);
      v53 = sub_1004C2954(v50, v52, &aBlock);

      *(v46 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v44, v45, " - Inserted sections: %s", v46, 0xCu);
      sub_100010474(v156);
    }

    v54 = sub_10056DF68();
    v55 = sub_100573448();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      aBlock = v156;
      *v56 = 136315138;
      v57 = v178;
      swift_beginAccess();
      v58 = v160;
      v59 = v158;
      (*(v160 + 16))(v158, v57, v10);
      sub_1004C8A8C(&qword_1006F8CA0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      v60 = sub_100574408();
      v62 = v61;
      (*(v58 + 8))(v59, v10);
      v63 = sub_1004C2954(v60, v62, &aBlock);

      *(v56 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v54, v55, " - Deleted sections: %s", v56, 0xCu);
      sub_100010474(v156);
    }

    v64 = sub_10056DF68();
    v65 = sub_100573448();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      aBlock = v67;
      *v66 = 136315138;
      swift_beginAccess();

      sub_100009DCC(&qword_1006F8C98, &unk_1005A6470);
      v68 = sub_100572D38();
      v70 = v69;

      v71 = sub_1004C2954(v68, v70, &aBlock);

      *(v66 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v64, v65, " - Section move pairs: %s", v66, 0xCu);
      sub_100010474(v67);
    }

    else
    {
    }

    v92 = sub_10056DF68();
    v93 = sub_100573448();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      aBlock = v95;
      *v94 = 136315138;
      swift_beginAccess();
      sub_10056CE18();

      v96 = sub_100572D38();
      v98 = v97;

      v99 = sub_1004C2954(v96, v98, &aBlock);

      *(v94 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v92, v93, " - Inserted index paths: %s", v94, 0xCu);
      sub_100010474(v95);
    }

    v100 = sub_10056DF68();
    v101 = sub_100573448();

    v102 = os_log_type_enabled(v100, v101);
    v157 = v31;
    if (v102)
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      aBlock = v104;
      *v103 = 136315138;
      swift_beginAccess();
      sub_10056CE18();

      v105 = sub_100572D38();
      v107 = v106;

      v108 = sub_1004C2954(v105, v107, &aBlock);

      *(v103 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v100, v101, " - Deleted index paths: %s", v103, 0xCu);
      sub_100010474(v104);
    }

    v90 = v170;

    v109 = sub_10056DF68();
    v110 = sub_100573448();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      aBlock = v112;
      *v111 = 136315138;
      swift_beginAccess();
      sub_10056CE18();

      v113 = sub_100572D38();
      v115 = v114;

      v116 = sub_1004C2954(v113, v115, &aBlock);

      *(v111 + 4) = v116;
      _os_log_impl(&_mh_execute_header, v109, v110, " - Updated index paths: %s", v111, 0xCu);
      sub_100010474(v112);
    }

    v117 = sub_10056DF68();
    v118 = sub_100573448();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      aBlock = v120;
      *v119 = 136315138;
      swift_beginAccess();

      sub_100009DCC(&qword_1006F8A18, &qword_1005A5C70);
      v121 = sub_100572D38();
      v123 = v122;

      v124 = sub_1004C2954(v121, v123, &aBlock);

      *(v119 + 4) = v124;
      _os_log_impl(&_mh_execute_header, v117, v118, " - Item move pairs: %s", v119, 0xCu);
      sub_100010474(v120);
    }

    else
    {
    }

    v87 = v168;
    v91 = v162;
    v89 = v165;
    v84 = v171;
    v86 = v172;
    v88 = v163;
  }

  isEscapingClosureAtFileLocation = swift_allocObject();
  v126 = v161;
  v127 = v169;
  *(isEscapingClosureAtFileLocation + 16) = v161;
  *(isEscapingClosureAtFileLocation + 24) = v127;
  *(isEscapingClosureAtFileLocation + 32) = v87;
  *(isEscapingClosureAtFileLocation + 40) = v86;
  *(isEscapingClosureAtFileLocation + 48) = v167;
  v128 = v174;
  *(isEscapingClosureAtFileLocation + 56) = v173;
  *(isEscapingClosureAtFileLocation + 64) = v128;
  *(isEscapingClosureAtFileLocation + 72) = v90;
  *(isEscapingClosureAtFileLocation + 80) = v91;
  *(isEscapingClosureAtFileLocation + 88) = v89;
  *(isEscapingClosureAtFileLocation + 96) = v84;
  v129 = v166;
  *(isEscapingClosureAtFileLocation + 104) = v88;
  *(isEscapingClosureAtFileLocation + 112) = v129;
  if (v159)
  {

    v130 = v166;
    sub_1000E672C(v88, v166);
    sub_1000E672C(v91, v89);
    v131 = v91;
    v132 = v126;
    v133 = [v132 indexPathsForVisibleItems];
    sub_10056CE18();
    v134 = v89;
    v135 = sub_100572D28();

    v136 = sub_1004C7A00(v135);

    v137 = swift_allocObject();
    v137[2] = v169;
    v137[3] = v132;
    v138 = v179;
    v137[4] = v178;
    v137[5] = v138;
    v139 = v176;
    v137[6] = v177;
    v137[7] = v139;
    v140 = v157;
    v137[8] = v175;
    v137[9] = v140;
    v137[10] = v136;
    v137[11] = v131;
    v137[12] = v134;
    v141 = swift_allocObject();
    *(v141 + 16) = sub_1004C7BA0;
    *(v141 + 24) = v137;
    v184 = sub_10019CED8;
    v185 = v141;
    aBlock = _NSConcreteStackBlock;
    v181 = 1107296256;
    v142 = v163;
    v182 = sub_1001D41F8;
    v183 = &unk_1006AE578;
    v179 = _Block_copy(&aBlock);

    sub_1000E672C(v131, v165);
    v143 = v132;

    v144 = swift_allocObject();
    v145 = v171;
    *(v144 + 2) = v143;
    *(v144 + 3) = v145;
    *(v144 + 4) = v142;
    *(v144 + 5) = v130;
    v184 = sub_1004C7BA8;
    v185 = v144;
    aBlock = _NSConcreteStackBlock;
    v181 = 1107296256;
    v182 = sub_10044E8C8;
    v183 = &unk_1006AE5C8;
    v146 = _Block_copy(&aBlock);
    v88 = v185;

    sub_1000E672C(v142, v130);
    v147 = v143;

    v148 = v179;
    [v147 performBatchUpdates:v179 completion:v146];
    _Block_release(v146);
    _Block_release(v148);

    swift_unknownObjectWeakDestroy();

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    v149 = 0;
    v15 = 0;
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_40;
    }

    __break(1u);
  }

  v179 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 2) = sub_1004C7960;
  *(v15 + 3) = isEscapingClosureAtFileLocation;
  v150 = swift_allocObject();
  v149 = sub_1000E23F0;
  *(v150 + 16) = sub_1000E23F0;
  *(v150 + 24) = v15;
  v184 = sub_10019CB74;
  v185 = v150;
  aBlock = _NSConcreteStackBlock;
  v181 = 1107296256;
  v182 = sub_1001D41F8;
  v183 = &unk_1006AE500;
  v151 = _Block_copy(&aBlock);
  v178 = v185;

  sub_1000E672C(v88, v166);
  sub_1000E672C(v162, v165);
  v152 = v161;

  [v179 performWithoutAnimation:v151];
  _Block_release(v151);

  swift_unknownObjectWeakDestroy();
  v153 = swift_isEscapingClosureAtFileLocation();

  if (v153)
  {
    __break(1u);
LABEL_38:
    sub_1004C10F4(v169, v186, v162, v38, v165, v163, v166);
    swift_unknownObjectWeakDestroy();
    sub_1004C2824(v15);
    goto LABEL_39;
  }

LABEL_40:

  return sub_1000F3E14(v149, v15);
}

uint64_t UICollectionView.performAIDiff<A>(oldItems:newItems:sectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:completion:)(uint64_t a1, uint64_t a2, void (**a3)(uint64_t, uint64_t *, NSObject *, __n128), int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, __int128 a14)
{
  v27 = a8;
  v25 = a6;
  v26 = a7;
  v24 = a5;
  v30 = a4;
  v28 = a12;
  v29 = a11;
  v23 = a14;
  v17 = *(type metadata accessor for AIDiffingUpdate(0) - 8);
  __chkstk_darwin();
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(a1, a2, a3, v24, v25, v26, v27, a9, v19, a10, a14);
  sub_100009DCC(&qword_1006F8C90, &unk_1005A6460);
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10057B510;
  sub_1004C27C0(v19, v21 + v20);
  UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v21, v30, 0, 0, v29, v28);

  return sub_1004C2824(v19);
}

void sub_1004C10F4(uint64_t a1, uint64_t a2, void (*a3)(void), __n128 a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v25 = a7;
  v10 = *(type metadata accessor for AIDiffingUpdate(0) - 8);
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006F7F48 != -1)
  {
    swift_once();
  }

  v13 = sub_10056DF88();
  sub_10000C49C(v13, qword_1006F8C78);
  v14 = sub_10056DF68();
  v15 = sub_100573448();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Found update with needsReloadData=true, reloading", v16, 2u);
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = *(v10 + 72);
    do
    {
      sub_1004C27C0(v18, v12);
      v21 = *(v12 + 1);
      v20 = *(v12 + 2);
      sub_1000E672C(v21, v20);
      v22 = sub_1004C2824(v12);
      if (v21)
      {
        v21(v22);
        sub_1000F3E14(v21, v20);
      }

      v18 += v19;
      --v17;
    }

    while (v17);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    [Strong reloadData];
  }

  if (a3)
  {
    a3();
  }

  if (a6)
  {
    a6(1);
  }
}

void sub_1004C1338(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_10056CD68();
  v18 = swift_projectBox();
  v19 = swift_projectBox();
  v20 = a5 + 16;
  v21 = a6 + 16;
  v22 = a8 + 16;
  v23 = [a1 indexPathsForVisibleItems];
  sub_10056CE18();
  v24 = sub_100572D28();

  v25 = sub_1004C7A00(v24);

  v26 = swift_allocObject();
  v26[2] = a2;
  v26[3] = a1;
  v26[4] = v18;
  v26[5] = v19;
  v26[6] = v20;
  v26[7] = v21;
  v26[8] = a7 + 16;
  v26[9] = v22;
  v26[10] = v25;
  v26[11] = a9;
  v26[12] = a10;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1004C8B50;
  *(v27 + 24) = v26;
  v38 = sub_10019CED8;
  v39 = v27;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_1001D41F8;
  v37 = &unk_1006AE698;
  v28 = _Block_copy(&aBlock);

  v29 = a1;
  sub_1000E672C(a9, a10);

  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = a11;
  v30[4] = a12;
  v30[5] = a13;
  v38 = sub_1004C8B38;
  v39 = v30;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10044E8C8;
  v37 = &unk_1006AE6E8;
  v31 = _Block_copy(&aBlock);
  v32 = v29;

  sub_1000E672C(a12, a13);

  [v32 performBatchUpdates:v28 completion:v31];
  _Block_release(v31);
  _Block_release(v28);

  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }
}

double sub_1004C1648(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, void *a6, uint64_t *a7, uint64_t a8, void *a9, void (*a10)(void), uint64_t a11)
{
  v127 = a8;
  v115 = a7;
  v126 = a6;
  v125 = a5;
  v123 = a4;
  v113 = a3;
  v122 = a2;
  v12 = sub_10056CE18();
  v120 = *(v12 - 8);
  __chkstk_darwin();
  v109 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v104 - v14;
  __chkstk_darwin();
  v124 = (&v104 - v16);
  v119 = sub_100009DCC(&qword_1006F8A18, &qword_1005A5C70);
  v121 = *(v119 - 8);
  __chkstk_darwin();
  v18 = &v104 - v17;
  v112 = sub_10056CD68();
  v19 = *(v112 - 8);
  __chkstk_darwin();
  v111 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AIDiffingUpdate(0);
  __chkstk_darwin();
  v23 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v26 = *(v21 + 72);
    do
    {
      sub_1004C27C0(v25, v23);
      v28 = *(v23 + 1);
      v27 = *(v23 + 2);
      sub_1000E672C(v28, v27);
      v29 = sub_1004C2824(v23);
      if (v28)
      {
        v28(v29);
        sub_1000F3E14(v28, v27);
      }

      v25 += v26;
      --v24;
    }

    while (v24);
  }

  v30 = v113;
  swift_beginAccess();
  v110 = *(v19 + 16);
  v31 = v111;
  v32 = v112;
  v110(v111, v30, v112);
  sub_10056CD18(v33);
  v35 = v34;
  v36 = *(v19 + 8);
  v36(v31, v32);
  v37 = v122;
  [v122 deleteSections:v35];

  v38 = v123;
  swift_beginAccess();
  v107 = v19 + 16;
  v110(v31, v38, v32);
  sub_10056CD18(v39);
  v41 = v40;
  v108 = v19 + 8;
  v106 = v36;
  v36(v31, v32);
  [v37 insertSections:v41];

  v42 = v125;
  swift_beginAccess();
  v43 = *v42;
  v44 = *(v43 + 16);
  if (v44)
  {

    v45 = (v43 + 40);
    do
    {
      [v37 moveSection:*(v45 - 1) toSection:*v45];
      v45 += 2;
      --v44;
    }

    while (v44);
  }

  swift_beginAccess();

  isa = sub_100572D08().super.isa;
  swift_endAccess();

  [v37 insertItemsAtIndexPaths:isa];

  swift_beginAccess();

  v47 = sub_100572D08().super.isa;
  swift_endAccess();

  [v37 deleteItemsAtIndexPaths:v47];

  v48 = v127;
  swift_beginAccess();
  v49 = *v48;
  v50 = *(*v48 + 16);
  if (v50)
  {
    v51 = *(v119 + 48);
    v52 = v49 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
    v127 = *(v121 + 72);
    v53 = (v120 + 8);
    v126 = v49;

    do
    {
      sub_1004C86B4(v52, v18);
      v54 = sub_10056CDA8().super.isa;
      v55 = *v53;
      (*v53)(v18, v12);
      v56 = sub_10056CDA8().super.isa;
      v55(&v18[v51], v12);
      [v122 moveItemAtIndexPath:v54 toIndexPath:v56];

      v52 += v127;
      --v50;
    }

    while (v50);

    v37 = v122;
  }

  v57 = [v37 _indexPathsForPreparedItems];
  v58 = sub_100572D28();

  v118 = *(v58 + 16);
  if (v118)
  {
    v59 = v120;
    v119 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v116 = v58 + v119;
    swift_beginAccess();
    swift_beginAccess();
    v60 = 0;
    v126 = a9;
    v127 = v59 + 16;
    v125 = a9 + 7;
    v37 = v59 + 8;
    v114 = _swiftEmptyArrayStorage;
    v105 = (v59 + 32);
    v61 = v124;
    v117 = v58;
    while (1)
    {
      if (v60 >= *(v58 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v63 = *(v120 + 72);
      v123 = v60;
      v64 = *(v120 + 16);
      v64(v61, v116 + v63 * v60, v12);
      if (v126[2])
      {
        v65 = v126;
        sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v66 = sub_100572738();
        v67 = -1 << *(v65 + 32);
        v68 = v66 & ~v67;
        if ((*(v125 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68))
        {
          v69 = ~v67;
          while (1)
          {
            v64(v15, v126[6] + v68 * v63, v12);
            sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v70 = sub_1005727E8();
            v71 = *v37;
            (*v37)(v15, v12);
            if (v70)
            {
              break;
            }

            v68 = (v68 + 1) & v69;
            if (((*(v125 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          v71(v61, v12);
          goto LABEL_17;
        }
      }

LABEL_25:
      v72 = *v115;
      v73 = v115[1];
      v74 = v73 + v119;
      v75 = *(v73 + 16);
      v121 = v37 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v72)
      {

        sub_1004C6E80(v61, v74, v75, (v72 + 16), v72 + 32);
        v77 = v76;

        if ((v77 & 1) == 0)
        {
          v78 = *v37;
LABEL_40:
          v89 = v124;
          v78(v124, v12);
          v61 = v89;
          goto LABEL_17;
        }
      }

      else
      {

        if (v75)
        {
          while (1)
          {
            v64(v15, v74, v12);
            sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v79 = sub_1005727E8();
            v78 = *v37;
            (*v37)(v15, v12);
            if (v79)
            {
              break;
            }

            v74 += v63;
            --v75;
            v61 = v124;
            if (!v75)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_40;
        }

LABEL_31:
      }

      v80 = v111;
      v81 = v112;
      v110(v111, v113, v112);
      v82 = sub_10056CDF8();
      v83 = sub_10056CD38(v82);
      v106(v80, v81);
      if (!v83)
      {
        v64(v109, v61, v12);
        v84 = v114;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v123;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v84 = sub_1004A828C(0, v84[2] + 1, 1, v84);
        }

        v114 = v84;
        v87 = v84[2];
        v86 = v84[3];
        if (v87 >= v86 >> 1)
        {
          v114 = sub_1004A828C((v86 > 1), v87 + 1, 1, v114);
        }

        v88 = v114;
        v114[2] = v87 + 1;
        (*v105)(&v88[v119 + v87 * v63], v109, v12);
        (*v37)(v61, v12);
        v58 = v117;
        goto LABEL_18;
      }

      (*v37)(v61, v12);
LABEL_17:
      v58 = v117;
      v62 = v123;
LABEL_18:
      v60 = v62 + 1;
      if (v60 == v118)
      {

        v37 = v122;
        goto LABEL_43;
      }
    }
  }

LABEL_43:
  v61 = a10;
  if (qword_1006F7F48 != -1)
  {
LABEL_52:
    swift_once();
  }

  v90 = sub_10056DF88();
  sub_10000C49C(v90, qword_1006F8C78);
  v91 = sub_10056DF68();
  v92 = sub_100573448();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v128 = v94;
    *v93 = 136315138;

    v95 = sub_100572D38();
    v97 = v96;

    v98 = sub_1004C2954(v95, v97, &v128);
    v37 = v122;

    *(v93 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v91, v92, "Cleaning up prefetched cells by reloading index paths: %s", v93, 0xCu);
    sub_100010474(v94);
  }

  v99 = sub_100572D08().super.isa;

  [v37 reloadItemsAtIndexPaths:v99];

  if (v61)
  {

    v100 = sub_10056DF68();
    v101 = sub_100573448();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&_mh_execute_header, v100, v101, "Performing alongside updates", v102, 2u);
    }

    v61();
    sub_1000F3E14(v61, a11);
  }

  return result;
}

id sub_1004C2460(char a1, id a2, uint64_t a3, void (*a4)(void))
{
  v7 = [a2 isPrefetchingEnabled];
  [a2 setPrefetchingEnabled:0];
  if (qword_1006F7F48 != -1)
  {
    swift_once();
  }

  v8 = sub_10056DF88();
  sub_10000C49C(v8, qword_1006F8C78);

  v9 = sub_10056DF68();
  v10 = sub_100573448();

  if (os_log_type_enabled(v9, v10))
  {
    buf = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22[0] = v20;
    *buf = 136315138;
    swift_beginAccess();
    v21 = a4;

    v12 = sub_1004C841C(v11);
    v18 = v10;
    v14 = v13;

    v15 = sub_1004C2954(v12, v14, v22);

    *(buf + 4) = v15;
    a4 = v21;
    _os_log_impl(&_mh_execute_header, v9, v18, "Reconfiguring index paths: %s", buf, 0xCu);
    sub_100010474(v20);
  }

  swift_beginAccess();
  sub_10056CE18();

  isa = sub_100572D08().super.isa;
  swift_endAccess();

  [a2 reconfigureItemsAtIndexPaths:isa];

  if (a4)
  {
    a4(a1 & 1);
  }

  return [a2 setPrefetchingEnabled:v7];
}

uint64_t sub_1004C2700()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006F8C78);
  sub_10000C49C(v0, qword_1006F8C78);
  return sub_10056DF78();
}

uint64_t type metadata accessor for AIDiffingUpdate(uint64_t a1)
{
  result = qword_1006F8D00;
  if (!qword_1006F8D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004C27C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIDiffingUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C2824(uint64_t a1)
{
  v2 = type metadata accessor for AIDiffingUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1004C2880(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1004C2954(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

uint64_t sub_1004C28DC()
{

  return swift_deallocObject();
}

uint64_t sub_1004C2914()
{

  return swift_deallocObject();
}

unint64_t sub_1004C2954(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1004C2A20(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100081F38(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100010474(v11);
  return v7;
}

unint64_t sub_1004C2A20(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1004C2B2C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100573F98();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1004C2B2C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1004C2B78(a1, a2);
  sub_1004C2CA8(&off_1006AC928);
  return v3;
}

void *sub_1004C2B78(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1004C2D94(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100573F98();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100572AB8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1004C2D94(v10, 0);
        result = sub_100573EC8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_1004C2CA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1004C2E08(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1004C2D94(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100009DCC(&qword_1006F8E30, &qword_1005A6508);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1004C2E08(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006F8E30, &qword_1005A6508);
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

uint64_t sub_1004C2EFC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10056CE18();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v33 = a2;
  v11 = sub_100572738();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = sub_1005727E8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1004C38E8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1004C31DC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100574678();
  sub_1005729F8();
  v8 = sub_1005746C8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100574498() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1004C3B8C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_1004C332C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_10056CE18();
  v3 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100009DCC(&qword_1006F8E40, &qword_1005A6518);
  v6 = sub_100573E98();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = sub_100572738();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1004C3688(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100009DCC(qword_1006F8E78, &unk_1005A6540);
  v4 = sub_100573E98();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_100574678();
      sub_1005729F8();
      v21 = sub_1005746C8();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

uint64_t sub_1004C38E8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_10056CE18();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1004C332C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1004C3D0C();
      goto LABEL_12;
    }

    sub_1004C40A0(v11 + 1);
  }

  v13 = *v3;
  sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v14 = sub_100572738();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v22 = sub_1005727E8();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100574568();
  __break(1u);
  return result;
}

void sub_1004C3B8C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1004C3688(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1004C3F44();
      goto LABEL_16;
    }

    sub_1004C43BC(v8 + 1);
  }

  v10 = *v4;
  sub_100574678();
  sub_1005729F8();
  v11 = sub_1005746C8();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_100574498() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_100574568();
  __break(1u);
}

void sub_1004C3D0C()
{
  v1 = v0;
  v2 = sub_10056CE18();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F8E40, &qword_1005A6518);
  v6 = *v0;
  v7 = sub_100573E88();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1004C3F44()
{
  v1 = v0;
  sub_100009DCC(qword_1006F8E78, &unk_1005A6540);
  v2 = *v0;
  v3 = sub_100573E88();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1004C40A0(uint64_t a1)
{
  v2 = v1;
  v34 = sub_10056CE18();
  v3 = *(v34 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100009DCC(&qword_1006F8E40, &qword_1005A6518);
  v7 = sub_100573E98();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = sub_100572738();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_1004C43BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100009DCC(qword_1006F8E78, &unk_1005A6540);
  v4 = sub_100573E98();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_100574678();

      sub_1005729F8();
      v20 = sub_1005746C8();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_1004C45F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100573DC8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_100574668();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1004C4764(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100573DC8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48) + 24 * v6;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      sub_100574678();
      if (v10)
      {
        sub_100574688(1uLL);
        v12 = v11;

        sub_1005729F8();
      }

      else
      {
        sub_100574688(0);
        v13 = v11;
      }

      v14 = sub_1005746C8();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v15)
      {
LABEL_13:
        v16 = *(a2 + 48);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v19 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

unint64_t sub_1004C4954(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1004B0DB8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1004D9310();
    result = v17;
    goto LABEL_8;
  }

  sub_1004D85C4(v14, a3 & 1);
  result = sub_1004B0DB8(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_100574578();
  __break(1u);
  return result;
}

void sub_1004C4A78(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1004B0CCC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1004D8828(v16, a4 & 1);
      v11 = sub_1004B0CCC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_100574578();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1004D945C();
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
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_1004C4BDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_1004B0E68(a2, a3, a4);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 < v17 || (a5 & 1) != 0)
    {
      sub_1004D8D88(v17, a5 & 1);
      v12 = sub_1004B0E68(a2, a3, a4);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_100574578();
        __break(1u);
        return;
      }
    }

    else
    {
      v20 = v12;
      sub_1004D973C();
      v12 = v20;
    }
  }

  v22 = *v6;
  if (v18)
  {
    *(v22[7] + 8 * v12) = a1;

    return;
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  v23 = (v22[6] + 24 * v12);
  *v23 = a2;
  v23[1] = a3;
  v23[2] = a4;
  *(v22[7] + 8 * v12) = a1;
  v24 = v22[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v25;

  v26 = a4;
}

void sub_1004C4D84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1004B0CCC(a2, a3);
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
      sub_1004D9068(v16, a4 & 1);
      v11 = sub_1004B0CCC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_100574578();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1004D98C4();
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

void sub_1004C4F00(uint64_t *a1)
{
  v2 = *(sub_10056CE18() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1004DA63C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1004C4FA8(v5);
  *a1 = v3;
}

void sub_1004C4FA8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_100574388(v2);
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
        sub_10056CE18();
        v6 = sub_100572D98();
        v6[2] = v5;
      }

      v7 = *(sub_10056CE18() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1004C5398(v8, v9, a1, v4);
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
    sub_1004C50D4(0, v2, 1, a1);
  }
}

void sub_1004C50D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10056CE18();
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
      v40(v42, v19, v8, v12);
      v23 = v43;
      v22(v43, v20, v8);
      sub_1004C8A8C(&qword_1006F8E70, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = sub_1005727B8();
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

void sub_1004C5398(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v119 = a1;
  v8 = sub_10056CE18();
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
      v17 = sub_1004DA510(v17);
    }

    v139 = v17;
    v112 = *(v17 + 2);
    if (v112 >= 2)
    {
      while (*a3)
      {
        v113 = *&v17[16 * v112];
        v114 = *&v17[16 * v112 + 24];
        sub_1004C5DC0(*a3 + v9[9] * v113, *a3 + v9[9] * *&v17[16 * v112 + 16], *a3 + v9[9] * v114, v18);
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
          v17 = sub_1004DA510(v17);
        }

        if (v112 - 2 >= *(v17 + 2))
        {
          goto LABEL_120;
        }

        v115 = &v17[16 * v112];
        *v115 = v113;
        *(v115 + 1) = v114;
        v139 = v17;
        sub_1004DA484(v112 - 1);
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
      v127 = sub_1004C8A8C(&qword_1006F8E70, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      LODWORD(v130) = sub_1005727B8();
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
        v37 = sub_1005727B8() & 1;
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
      v17 = sub_1004A816C(0, *(v17 + 2) + 1, 1, v17);
    }

    v51 = *(v17 + 2);
    v50 = *(v17 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v17 = sub_1004A816C((v50 > 1), v51 + 1, 1, v17);
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
        sub_1004C5DC0(*a3 + v9[9] * v93, *a3 + v9[9] * *&v17[16 * v54 + 32], *a3 + v9[9] * v94, v18);
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
          v17 = sub_1004DA510(v17);
        }

        if (v92 >= *(v17 + 2))
        {
          goto LABEL_107;
        }

        v95 = &v17[16 * v92];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        v139 = v17;
        sub_1004DA484(v54);
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
    sub_1004C8A8C(&qword_1006F8E70, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v106 = sub_1005727B8();
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

void sub_1004C5DC0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = sub_10056CE18();
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
          sub_1004C8A8C(&qword_1006F8E70, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          LOBYTE(v33) = sub_1005727B8();
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
        sub_1004C8A8C(&qword_1006F8E70, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        LOBYTE(v20) = sub_1005727B8();
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

  sub_1004C63B4(&v53, &v52, &v51);
}

uint64_t sub_1004C63B4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10056CE18();
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

uint64_t (*sub_1004C6498(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1004C7600(v5);
  v5[9] = sub_1004C70D0(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1004C653C;
}

uint64_t (*sub_1004C6540(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[8] = sub_1004C7634(v9);
  v9[9] = sub_1004C7330(v9 + 4, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  return sub_1004C8B74;
}

void sub_1004C65FC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_1004C665C(uint64_t a1)
{
  v3 = sub_10056CE18();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = v1[1];
  v10 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = *(v8 + 16);
  if (*v1)
  {

    sub_1004C6E80(a1, v10, v11, (v9 + 16), v9 + 32);
    v13 = v12;
    v15 = v14;

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v11)
    {
      v22[1] = v1;
      v17 = 0;
      v20 = *(v4 + 16);
      v19 = v4 + 16;
      v18 = v20;
      v23 = *(v19 + 56);
      v24 = v11;
      while (1)
      {
        v18(v7, v10, v3, v5);
        sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v21 = sub_1005727E8();
        (*(v19 - 8))(v7, v3);
        if (v21)
        {
          return 0;
        }

        ++v17;
        v10 += v23;
        if (v24 == v17)
        {
          v15 = 0;
          goto LABEL_10;
        }
      }
    }

    v15 = 0;
  }

LABEL_10:
  sub_1004C6864(a1, v15);
  return 1;
}

void sub_1004C6864(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056CE18();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = v2 + 1;
  v10 = v2[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[1] = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1004E1010(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_1004E1010((v12 > 1), v13 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v13 + 1;
  (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  v2[1] = v10;
  if (*v2)
  {
    swift_beginAccess();
    if (sub_10056DD78() > v13)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v16 = *v2;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v17 = sub_10056DD98();

        *v2 = v17;
        v16 = v17;
      }

      if (v16)
      {
        sub_10056DD38();
        return;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v13 < 0xF)
  {
    return;
  }

  sub_1004C6AAC(v14);
}

void sub_1004C6AAC(__n128 a1)
{
  v2 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 24) & 0x3FLL;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[1];
  if (v3 || *(v4 + 16) >= 0x10uLL)
  {
    v6 = sub_10056DDA8();
    if (v3 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    v5 = sub_1004C6B4C(v4, v8, 0, v3, v7);
  }

  else
  {
    v5 = 0;
  }

  *v1 = v5;
}

uint64_t sub_1004C6B4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = sub_10056DDA8();
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = sub_10056DDB8();
    sub_1004C6BCC(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

void sub_1004C6C68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a4;
  v32 = a1;
  v6 = sub_10056CE18();
  v8 = __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  if (a2)
  {
    if ((v40 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v13 = *(v7 + 16);
      v12 = v7 + 16;
      v28 = *(v12 + 56);
      v29 = v13;
      v30 = v12;
      v27 = (v12 - 8);
      v13(v10, v32, v6, v8);
      while (1)
      {
        sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v15 = sub_100572738();
        v16 = 1 << *a3;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
          break;
        }

        v19 = v18 & v15;
        v20 = v31;
        v21 = sub_10056DD18();
        v23 = v22;
        v25 = v24;
        (*v27)(v10, v6);
        v33 = a3;
        v34 = v20;
        v35 = v19;
        v36 = v21;
        v37 = v23;
        v38 = v25;
        v39 = 0;
        while (v36)
        {
          sub_10056DD68();
        }

        sub_10056DD58();
        if (++v11 == v40)
        {
          return;
        }

        v29(v10, v32 + v28 * v11, v6, v14);
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1004C6E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v29 = a2;
  v8 = sub_10056CE18();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v28[1] = a1;
  result = sub_100572738();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = sub_10056DD18();
    *&v34 = a4;
    *(&v34 + 1) = a5;
    *&v35 = v16;
    *(&v35 + 1) = v17;
    *&v36 = v18;
    *(&v36 + 1) = v19;
    v37 = 0;
    v20 = sub_10056DD48();
    if ((v21 & 1) == 0)
    {
      v24 = *(v9 + 16);
      v23 = v9 + 16;
      v22 = v24;
      v25 = *(v23 + 56);
      do
      {
        v22(v11, v29 + v25 * v20, v8);
        sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v26 = sub_1005727E8();
        (*(v23 - 8))(v11, v8);
        if (v26)
        {
          break;
        }

        sub_10056DD68();
        v30 = v34;
        v31 = v35;
        v32 = v36;
        v33 = v37;
        v20 = sub_10056DD48();
      }

      while ((v27 & 1) == 0);
    }

    return v20;
  }

  return result;
}

void (*sub_1004C70D0(uint64_t *a1, uint64_t a2, char a3))(void **a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = a2;
  *(v8 + 24) = v3;
  v10 = *v3;
  v11 = sub_1004B0DB8(a2);
  *(v9 + 9) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = v12 ^ 1;
  v15 = __OFADD__(v13, (v12 ^ 1) & 1);
  v16 = v13 + ((v12 ^ 1) & 1);
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1004D9310();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1004D85C4(v16, a3 & 1);
    v11 = sub_1004B0DB8(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_100574578();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 32) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  *(v9 + 8) = v14 & 1;
  return sub_1004C7220;
}

void sub_1004C7220(void **a1, char a2)
{
  v2 = *a1;
  v3 = *v2;
  LOBYTE(v4) = *(v2 + 8);
  LOBYTE(v5) = *(v2 + 9);
  if (a2)
  {
    if (v2[1])
    {
      goto LABEL_8;
    }

    v6 = v2[4];
    v4 = *v2[3];
    if (*(v2 + 9))
    {
      goto LABEL_11;
    }

    v7 = v2[2];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    *(v4[6] + 8 * v6) = v7;
    v5 = v4[7];
    *(v5 + 8 * v6) = v3;
    v8 = v4[2];
    v9 = __OFADD__(v8, 1);
    v3 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v4[2] = v3;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_8:
    if (v5)
    {
      v10 = v2;
      sub_1004C45F4(v2[4], *v2[3]);
      v2 = v10;
    }

    goto LABEL_14;
  }

  v6 = v2[4];
  v4 = *v2[3];
  if ((v5 & 1) == 0)
  {
    v11 = v2[2];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    *(v4[6] + 8 * v6) = v11;
    *(v4[7] + 8 * v6) = v3;
    v12 = v4[2];
    v9 = __OFADD__(v12, 1);
    v3 = v12 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  *(v4[7] + 8 * v6) = v3;
LABEL_14:

  free(v2);
}

void (*sub_1004C7330(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))(uint64_t **a1, char a2)
{
  v6 = v5;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x38uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a4;
  v12[4] = v5;
  v12[1] = a2;
  v12[2] = a3;
  v14 = *v5;
  v15 = sub_1004B0E68(a2, a3, a4);
  *(v13 + 48) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      sub_1004D973C();
      v15 = v23;
      goto LABEL_11;
    }

    sub_1004D8D88(v20, a5 & 1);
    v15 = sub_1004B0E68(a2, a3, a4);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_100574578();
    __break(1u);
    return result;
  }

LABEL_11:
  v13[5] = v15;
  if (v21)
  {
    v25 = *(*(*v6 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v13 = v25;
  return sub_1004C749C;
}

void sub_1004C749C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 48);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[5];
    v6 = *v2[4];
    if ((*a1)[6])
    {
      goto LABEL_9;
    }

    v7 = v2[3];
    v8 = v6[6] + 24 * v5;
    v9 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v8 = v9;
    *(v8 + 16) = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[3];
      v6[2] = v4;

      v19 = v18;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[5];
      v13 = *v2[4];
      sub_1004C8AD4(*(v13 + 48) + 24 * v12);
      sub_1004C4764(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[5];
  v6 = *v2[4];
  if ((v4 & 1) == 0)
  {
    v14 = v2[3];
    v15 = v6[6] + 24 * v5;
    v16 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v15 = v16;
    *(v15 + 16) = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_1004C7600(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1004C7628;
}

uint64_t (*sub_1004C7634(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1004C8B3C;
}

void sub_1004C765C(uint64_t a1)
{
  v2 = sub_10056CE18();
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v24 - v7;
  v27 = *(a1 + 16);
  if (v27)
  {
    v9 = 0;
    v12 = *(v5 + 16);
    v10 = v5 + 16;
    v11 = v12;
    v29 = *(v10 + 56);
    v13 = (v10 - 8);
    v26 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v25 = a1 + v26;
    (v12)(v8, a1 + v26, v2, v6);
    while (1)
    {
      v17 = *v28;
      v16 = v28[1];
      v18 = v16 + v26;
      v19 = *(v16 + 16);
      if (*v28)
      {

        sub_1004C6E80(v8, v18, v19, (v17 + 16), v17 + 32);
        v21 = v20;
        v14 = v22;

        if (v21)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (!v19)
        {
LABEL_3:
          v14 = 0;
LABEL_4:
          sub_1004C6864(v8, v14);
          goto LABEL_5;
        }

        while (1)
        {
          v11(v4, v18, v2);
          sub_1004C8A8C(&qword_1006F8BB0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v23 = sub_1005727E8();
          (*v13)(v4, v2);
          if (v23)
          {
            break;
          }

          v18 += v29;
          if (!--v19)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_5:
      ++v9;
      (*v13)(v8, v2);
      if (v9 == v27)
      {
        return;
      }

      (v11)(v8, v25 + v29 * v9, v2, v15);
    }
  }
}

uint64_t sub_1004C78C8()
{

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1004C79A0()
{

  return swift_deallocObject();
}

uint64_t sub_1004C79E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004C7A00(uint64_t a1)
{
  v2 = sub_10056CE18();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = *(a1 + 16);
  sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  result = sub_100573118();
  v16 = result;
  if (v8)
  {
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v5, v13, v2);
      sub_1004C2EFC(v7, v5);
      (*(v10 - 8))(v7, v2);
      v13 += v14;
      --v8;
    }

    while (v8);
    return v16;
  }

  return result;
}

uint64_t sub_1004C7BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056CD68();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1004C7C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056CD68();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_1004C7D58(uint64_t a1)
{
  sub_1004C7F54(319, &qword_1006F8D10, &qword_1006F8D18, &unk_1005A64B0, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10056CD68();
    if (v2 <= 0x3F)
    {
      sub_1004C7F54(319, &qword_1006F8D20, &qword_1006F8C98, &unk_1005A6470, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_1004C7EC0(319);
        if (v4 <= 0x3F)
        {
          sub_1004C7F54(319, &unk_1006F8D30, &qword_1006F8A18, &qword_1005A5C70, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1004C7EC0(uint64_t a1)
{
  if (!qword_1006F8D28)
  {
    sub_10056CE18();
    sub_1004C8A8C(&qword_1006F8BA8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v1 = sub_10056DD08();
    if (!v2)
    {
      atomic_store(v1, &qword_1006F8D28);
    }
  }
}

void sub_1004C7F54(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100010324(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1004C7FB8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004C8038(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1004C81BC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1004C841C(uint64_t a1)
{
  v2 = sub_10056CE18();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 91;
  v22 = 0xE100000000000000;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v3 + 72);
    v9 = *(v3 + 16);
    v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v9(v6, a1 + v19, v2, v4);
    sub_100009DCC(&qword_1006F8E38, &qword_1005A6510);
    v10 = swift_allocObject();
    v20 = xmmword_10057B510;
    *(v10 + 16) = xmmword_10057B510;
    *(v10 + 56) = v2;
    v11 = sub_10002AB7C((v10 + 32));
    (v9)(v11, v6, v2);
    sub_100573E48();

    v12 = *(v3 + 8);
    v12(v6, v2);
    v13 = v7 - 1;
    if (v13)
    {
      v14 = a1 + v8 + v19;
      do
      {
        (v9)(v6, v14, v2);
        v23._countAndFlagsBits = 8236;
        v23._object = 0xE200000000000000;
        sub_100572A98(v23);
        sub_100009DCC(&qword_1006F8E38, &qword_1005A6510);
        v15 = swift_allocObject();
        *(v15 + 16) = v20;
        *(v15 + 56) = v2;
        v16 = sub_10002AB7C((v15 + 32));
        (v9)(v16, v6, v2);
        sub_100573E48();

        v12(v6, v2);
        v14 += v8;
        --v13;
      }

      while (v13);
    }
  }

  v24._countAndFlagsBits = 93;
  v24._object = 0xE100000000000000;
  sub_100572A98(v24);
  return v21;
}

uint64_t sub_1004C86B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F8A18, &qword_1005A5C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C8724()
{

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1004C87BC()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1004C8814()
{

  return swift_deallocObject();
}

uint64_t sub_1004C88B4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v5(v6, &a1[*(TupleTypeMetadata2 + 48)]);
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_1004C8980(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F8E48, &qword_1005A6520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004C89E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F8A18, &qword_1005A5C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C8A58@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1004C8A8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004C8B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004CD768();

  return sub_10056CED8();
}

uint64_t static ApproximatelyComparable<>.<~ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_10056CEB8())
  {
    return 0;
  }

  else
  {
    return sub_1005727B8() & 1;
  }
}

uint64_t static ApproximatelyComparable<>.>~ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_10056CEB8())
  {
    return 0;
  }

  else
  {
    return sub_1005727A8() & 1;
  }
}

uint64_t Result.init(success:failure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v33 = a2;
  v35 = a6;
  v34 = sub_100573C28();
  v9 = *(v34 - 8);
  __chkstk_darwin();
  v11 = &v30 - v10;
  v32 = *(a4 - 8);
  __chkstk_darwin();
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  __chkstk_darwin();
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1005746D8();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin();
  v20 = &v30 - v19;
  if ((*(v13 + 48))(a1, 1, a3, v18) != 1)
  {
    (*(v9 + 8))(v33, v34);
    v26 = *(v13 + 32);
    v26(v15, a1, a3);
    v26(v20, v15, a3);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    v25 = v35;
    (*(v17 + 32))(v35, v20, v16);
    v24 = 0;
    return (*(v17 + 56))(v25, v24, 1, v16);
  }

  v21 = sub_100573C28();
  (*(*(v21 - 8) + 8))(a1, v21);
  v22 = v34;
  (*(v9 + 32))(v11, v33, v34);
  v23 = v32;
  if ((*(v32 + 48))(v11, 1, a4) != 1)
  {
    v27 = *(v23 + 32);
    v28 = v31;
    v27(v31, v11, a4);
    v27(v20, v28, a4);
    goto LABEL_6;
  }

  (*(v9 + 8))(v11, v22);
  v24 = 1;
  v25 = v35;
  return (*(v17 + 56))(v25, v24, 1, v16);
}

uint64_t Collection.limited(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __chkstk_darwin();
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2, v6);
  if (sub_1005731C8() > a1 && __OFSUB__(sub_1005731C8(), a1))
  {
    __break(1u);
  }

  return sub_100572C88();
}

uint64_t Collection.asyncForEach<A>(operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_1004C91AC, 0, 0);
}

uint64_t sub_1004C91AC()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v1[1] = *(v0 + 32);
  v1[2] = v2;
  v1[3] = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1004C9298;
  v5 = *(v0 + 40);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, v5, &type metadata for () + 1, 0, 0, &unk_1005A6560, v1, v5);
}

uint64_t sub_1004C9298()
{

  return _swift_task_switch(sub_100191ECC, 0, 0);
}

uint64_t sub_1004C93B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v8[9] = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[11] = v11;
  v8[12] = *(v11 + 64);
  v8[13] = swift_task_alloc();
  sub_100009DCC(&unk_1006F87E0, &qword_1005A5B88);
  v8[14] = swift_task_alloc();
  sub_100573C28();
  v8[15] = swift_task_alloc();
  v8[16] = *(a6 - 8);
  v8[17] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v8[18] = v12;
  v8[19] = *(v12 - 8);
  v8[20] = swift_task_alloc();

  return _swift_task_switch(sub_1004C95E4, 0, 0);
}

uint64_t sub_1004C95E4()
{
  v1 = *(v0 + 88);
  (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 24), *(v0 + 48));
  sub_100572B98();
  while (1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 80);
    swift_getAssociatedConformanceWitness();
    sub_100573C68();
    if ((*(v1 + 48))(v2, 1, v3) == 1)
    {
      break;
    }

    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v6 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = *(v0 + 40);
    v16 = *(v0 + 32);
    v17 = *(v0 + 48);
    v9 = sub_100572F48();
    v18 = *(v0 + 56);
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = *(v1 + 32);
    v10(v6, v5, v7);
    v11 = (*(v1 + 80) + 72) & ~*(v1 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v17;
    *(v12 + 40) = v18;
    *(v12 + 56) = v16;
    *(v12 + 64) = v8;
    v10(v12 + v11, v6, v7);
    v13 = sub_100572EC8();

    sub_1004C9A74(v4, &unk_1005A6710, v12, v13);
    sub_1004A3908(v4);
  }

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1004C988C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CB98;

  return sub_1004C93B0(a1, a2, v9, v11, v10, v6, v7, v8);
}

uint64_t sub_1004C9968(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10000CB98;

  return v11(a1, a6);
}

double sub_1004C9A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_100009DCC(&unk_1006F87E0, &qword_1005A5B88);
  __chkstk_darwin();
  v11 = v21 - v10;
  sub_1004A316C(a1, v21 - v10);
  v12 = sub_100572F48();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1004A3908(v11);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_100572E78();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_100572F38();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v5;
  v18 = swift_allocObject();
  v18[2] = *(a4 + 16);
  v18[3] = a2;
  v18[4] = a3;
  v19 = (v16 | v14);
  if (v16 | v14)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v14;
    v22[3] = v16;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v17;
  swift_task_create();

  return result;
}

uint64_t Collection.asyncMap<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_100573C28();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004C9D40, 0, 0);
}

void sub_1004C9D40()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  v12 = *(v0 + 32);
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v8 = sub_1005731C8();
  v9 = sub_1004A0568(v1, v8, v4);
  (*(v2 + 8))(v1, v4);
  *(v0 + 16) = v9;
  swift_getTupleTypeMetadata2();
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  *(v10 + 32) = v5;
  *(v10 + 40) = v3;
  *(v10 + 48) = v12;
  *(v10 + 64) = v0 + 16;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *v11 = v0;
  v11[1] = sub_1004C9F10;

  JUMPOUT(0x1004CB1D8);
}

uint64_t sub_1004C9F10()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1004CA15C;
  }

  else
  {

    v2 = sub_1004CA02C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004CA02C()
{
  v1 = *(v0 + 48);
  *(v0 + 24) = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = *(v0 + 56);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_100572E38();

  swift_getWitnessTable();
  v4 = sub_100572BB8();
  swift_bridgeObjectRelease_n();

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1004CA15C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004CA1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v17;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v9 = sub_100573C28();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[16] = v11;
  v8[17] = *(v11 + 64);
  v8[18] = swift_task_alloc();
  sub_100009DCC(&unk_1006F87E0, &qword_1005A5B88);
  v8[19] = swift_task_alloc();
  v8[20] = swift_getTupleTypeMetadata2();
  sub_100573C28();
  v8[21] = swift_task_alloc();
  v8[22] = sub_100010324(qword_1006F8140, &unk_1005A54E0);
  v12 = sub_100573008();
  v8[23] = v12;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = swift_getTupleTypeMetadata2();
  v13 = sub_100573C28();
  v8[27] = v13;
  v8[28] = *(v13 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = sub_100574168();
  v8[32] = swift_task_alloc();
  v14 = sub_100574158();
  v8[33] = v14;
  v8[34] = *(v14 - 8);
  v8[35] = swift_task_alloc();

  return _swift_task_switch(sub_1004CA584, 0, 0);
}

uint64_t sub_1004CA584()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 128);
  sub_100572BC8();
  sub_100574138();
  v26 = v3;
  v27 = v2;
  v28 = v2 - 8;
  while (1)
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    sub_100574148();
    (*(v1 + 32))(v4, v5, v6);
    if ((*(*v28 + 48))(v4, 1, v7) == 1)
    {
      break;
    }

    v8 = *(v0 + 240);
    v9 = *(v0 + 152);
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);
    v32 = *(v0 + 80);
    v12 = *(v0 + 48);
    v31 = *(v0 + 40);
    v30 = *v8;
    v13 = *(v27 + 48);
    v14 = sub_100572F48();
    v29 = *(v0 + 64);
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = *(v26 + 32);
    v15(v10, &v8[v13], v11);
    v16 = (*(v26 + 80) + 80) & ~*(v26 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = v29;
    *(v17 + 48) = v32;
    *(v17 + 56) = v30;
    *(v17 + 64) = v31;
    *(v17 + 72) = v12;
    v15((v17 + v16), v10, v11);
    v18 = sub_100573018();

    sub_1004CB004(v9, &unk_1005A6700, v17, v18);
    sub_1004A3908(v9);
  }

  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
  sub_100572FE8();
  v19 = sub_100572E38();
  *(v0 + 288) = v19;
  sub_100572D78();
  v20.location = v19;
  CFRange.init(_:)(v20);
  sub_100572D78();
  v21.location = v19;
  CFRange.init(_:)(v21);
  v22 = swift_task_alloc();
  *(v0 + 296) = v22;
  *v22 = v0;
  v22[1] = sub_1004CA8F0;
  v23 = *(v0 + 184);
  v24 = *(v0 + 168);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v24, 0, 0, v23, v0 + 16);
}

uint64_t sub_1004CA8F0()
{

  if (v0)
  {
    v1 = sub_1004CACB8;
  }

  else
  {
    v1 = sub_1004CAA00;
  }

  return _swift_task_switch(v1, 0, 0);
}