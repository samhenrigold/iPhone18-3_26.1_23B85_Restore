uint64_t sub_10078E5C4()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];

  (*(v2 + 56))(v3, 1, 1, v1);
  sub_1000095E8(v0[39], &unk_101184730, &unk_100ECB920);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[43];
  if (Strong)
  {
    v8 = v0[26];
    v9 = enum case for MusicPropertySource.catalog(_:);
    v10 = type metadata accessor for MusicPropertySource();
    (*(*(v10 - 8) + 104))(v8, v9, v10);
    v11 = _s14descr101094081C15DataSourceErrorOMa(0);
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    sub_10028555C(v8);
    swift_unknownObjectRelease();

    sub_1000095E8(v8, &unk_101188900, &qword_100ED9260);
  }

  else
  {
  }

  (*(v6 + 8))(v5, v7);

  v12 = v0[1];

  return v12();
}

double sub_10078E82C(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v44 = &v40 - v3;
  v4 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v40 - v7;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v9 = &v40 - v8;
  sub_10010FC20(&qword_101192938, &qword_100ECFD38);
  __chkstk_darwin();
  v11 = &v40 - v10;
  v12 = sub_10010FC20(&qword_101192940, &qword_100ECFD40);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v40 - v14;
  v42 = type metadata accessor for Album();
  v47 = *(v42 - 8);
  __chkstk_darwin();
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v46 = &v40 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v40 = v5;
    v41 = v4;
    sub_1000089F8(a1, v11, &qword_101192938, &qword_100ECFD38);
    v22 = sub_10010FC20(&qword_101192948, &qword_100ECFD48);
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v11, 1, v22) == 1)
    {

      sub_1000095E8(v11, &qword_101192938, &qword_100ECFD38);
    }

    else
    {
      v24 = MusicLibraryMapping.Response.mappedItems.getter();
      (*(v23 + 8))(v11, v22);
      if (*(v24 + 16))
      {
        (*(v13 + 16))(v15, v24 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);

        MusicLibraryMapping.MappedItem.item.getter();
        (*(v13 + 8))(v15, v12);
        v26 = v46;
        v25 = v47;
        v27 = v42;
        (*(v47 + 32))(v46, v17, v42);
        (*(v25 + 16))(v9, v26, v27);
        (*(v25 + 56))(v9, 0, 1, v27);
        sub_10078C054(v9);
        v28 = v44;
        Album.tracks.getter();
        v30 = v40;
        v29 = v41;
        v31 = *(v40 + 48);
        if (v31(v28, 1, v41) == 1)
        {
          type metadata accessor for Track();
          v32 = v45;
          MusicItemCollection.init(arrayLiteral:)();
          if (v31(v28, 1, v29) != 1)
          {
            sub_1000095E8(v28, &unk_1011842D0, &qword_100ECBF00);
          }
        }

        else
        {
          v32 = v45;
          (*(v30 + 32))(v45, v28, v29);
        }

        v33 = v43;
        (*(v30 + 16))(v43, v32, v29);
        v34 = sub_100792B6C(v33);
        v36 = v35;
        v38 = v37;
        (*(v30 + 8))(v32, v29);
        (*(v47 + 8))(v46, v27);
        v39 = (v21 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data);
        *v39 = v34;
        v39[1] = v36;
        v39[2] = v38;
      }

      else
      {
      }
    }
  }

  return result;
}

double sub_10078EE9C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_unknownObjectRelease();
    if (v4 == a1)
    {
      return v3.n128_f64[0];
    }
  }

  else if (!a1)
  {
    return v3.n128_f64[0];
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = sub_10028434C(v3);
    if (*(v6 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
    {
      v8 = *(v6 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
      ObjectType = swift_getObjectType();
      v10 = (*(v8 + 112))(ObjectType, v8);
    }

    else
    {
      v10 = 1;
    }

    [v7 setHidden:v10 & 1];

    sub_100283D74();
    [*(v6 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];

    swift_unknownObjectRelease();
  }

  return v3.n128_f64[0];
}

unint64_t sub_10078EFB4(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data + 8);
  if (*(v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_10078A674(*(v2 + 16 * result + 32), *(v2 + 16 * result + 40), *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data), v2, *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data + 16));
  if (!v3)
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = v3[2];

  return v4;
}

void sub_10078F02C(unint64_t a1)
{
  v21 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v20[2] = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v5 = (v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data);
  v6 = *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data + 8);
  v7 = *(v6 + 16);
  if (v7)
  {
    v20[0] = *v5;
    v20[1] = v3;

    v8 = 0;
    v9 = (v6 + 40);
    v10 = _swiftEmptyArrayStorage;
    while (v8 < *(v6 + 16))
    {
      if ((*v9 & 1) == 0)
      {
        v11 = *(v9 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1004995E0(0, *(v10 + 2) + 1, 1, v10);
        }

        v13 = *(v10 + 2);
        v12 = *(v10 + 3);
        if (v13 >= v12 >> 1)
        {
          v10 = sub_1004995E0((v12 > 1), v13 + 1, 1, v10);
        }

        *(v10 + 2) = v13 + 1;
        *&v10[8 * v13 + 32] = v11;
      }

      ++v8;
      v9 += 16;
      if (v7 == v8)
      {

        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_13:
  v14 = *(v10 + 2);

  if (v14 > 1)
  {
    if ((v21 & 0x8000000000000000) != 0)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v15 = v5[1];
    if (*(v15 + 16) <= v21)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v16 = v15 + 16 * v21;
    if ((*(v16 + 40) & 1) == 0)
    {
      v17 = *(v16 + 32);
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v18._countAndFlagsBits = 0x2063736944;
      v18._object = 0xE500000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
      v22 = v17;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
    }
  }
}

uint64_t sub_10078F320(__n128 a1)
{
  v79 = type metadata accessor for Date.FormatStyle();
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v77 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v4 = &v77 - v3;
  v5 = type metadata accessor for MusicFavoriteStatus();
  v86 = *(v5 - 8);
  __chkstk_darwin();
  v85 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v77 - v7;
  v8 = sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v83 = &v77 - v9;
  v82 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v10 = *(v82 - 8);
  __chkstk_darwin();
  v81 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v77 - v12;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v15 = &v77 - v14;
  v91 = type metadata accessor for Album();
  v16 = *(v91 - 8);
  __chkstk_darwin();
  v90 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel(0);
  v18 = swift_allocObject();
  if (qword_10117F408 != -1)
  {
LABEL_42:
    swift_once();
  }

  v87 = v5;
  v88 = v4;
  v19 = sub_1000060E4(v8, qword_101187268);
  sub_1000089F8(v19, v18 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artwork, &unk_101188920, &qword_100EBCC50);
  if (qword_10117F410 != -1)
  {
    swift_once();
  }

  v20 = sub_10010FC20(&qword_101187768, &qword_100EC2C70);
  v21 = sub_1000060E4(v20, qword_101187280);
  sub_1000089F8(v21, v18 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artworkShape, &qword_101187768, &qword_100EC2C70);
  v22 = (v18 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v18 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__titleAccessory);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v18 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  *v24 = 0;
  v24[1] = 0;
  v25 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable;
  *(v18 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable) = 0;
  v89 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel___observationRegistrar;
  ObservationRegistrar.init()();
  v26 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_loadedAlbum;
  swift_beginAccess();
  sub_1000089F8(&v1[v26], v15, &unk_101184730, &unk_100ECB920);
  v27 = *(v16 + 6);
  v28 = v91;
  v29 = v27(v15, 1, v91);
  v80 = v16;
  if (v29 == 1)
  {
    v30 = *(v16 + 2);
    v31 = v90;
    v30(v90, &v1[OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_album], v28);
    v32 = v27(v15, 1, v28);
    v33 = v31;
    if (v32 != 1)
    {
      v32 = sub_1000095E8(v15, &unk_101184730, &unk_100ECB920);
    }
  }

  else
  {
    v33 = v90;
    v32 = (*(v16 + 4))(v90, v15, v28);
  }

  (*(**&v1[OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_state] + 256))(v32);
  v34 = v81;
  v35 = v82;
  (*(v10 + 104))(v81, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v82);
  v36 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)() & 1;
  v37 = *(v10 + 8);
  v37(v34, v35);
  v37(v13, v35);
  if (v36 == *(v18 + v25))
  {
    v82 = 0;
    *(v18 + v25) = v36;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v77 - 2) = v18;
    *(&v77 - 8) = v36;
    v92 = v18;
    sub_10079392C(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v82 = 0;
  }

  v38 = v87;
  v39 = v88;
  v40 = v86;
  v41 = v85;
  v42 = v83;
  Album.artwork.getter();
  sub_100261718(v42);
  v43 = Album.title.getter();
  sub_100261EE0(v43, v44);
  v45 = v84;
  Album.favoriteStatus.getter();
  (*(v40 + 104))(v41, enum case for MusicFavoriteStatus.favorited(_:), v38);
  v46 = static MusicFavoriteStatus.== infix(_:_:)();
  v47 = *(v40 + 8);
  v47(v41, v38);
  v47(v45, v38);
  if (v46)
  {
    v48 = 0x6C69662E72617473;
  }

  else
  {
    v48 = 0;
  }

  if (v46)
  {
    v49 = 0xE90000000000006CLL;
  }

  else
  {
    v49 = 0;
  }

  swift_getKeyPath();
  v5 = &v77;
  __chkstk_darwin();
  *(&v77 - 4) = v18;
  *(&v77 - 3) = v48;
  *(&v77 - 2) = v49;
  v92 = v18;
  sub_10079392C(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  v50 = v82;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v15 = v50;

  v95 = Album.artistName.getter();
  v96 = v51;
  v52 = Album.genreNames.getter();
  if (v52[2])
  {
    v54 = v52[4];
    v53 = v52[5];
  }

  else
  {
    v54 = 0;
    v53 = 0;
  }

  v97 = v54;
  v98 = v53;
  Album.releaseDate.getter();
  v55 = type metadata accessor for Date();
  v10 = *(v55 - 8);
  v56 = (*(v10 + 48))(v39, 1, v55);
  v89 = v50;
  if (v56 == 1)
  {
    sub_1000095E8(v39, &qword_101188C20, &qword_100EC2030);
    v1 = v33;
    v57 = Album.releaseYearString.getter();
  }

  else
  {
    v5 = v77;
    static FormatStyle<>.musicReleaseYear.getter();
    sub_10079392C(&unk_1011A3900, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    v59 = v79;
    v1 = v39;
    Date.formatted<A>(_:)();
    (*(v78 + 8))(v5, v59);
    v60 = *(v10 + 8);
    v10 += 8;
    v60(v39, v55);
    v57 = v92;
    v58 = v93;
  }

  v13 = 0;
  v16 = v94;
  v99 = v57;
  v100 = v58;
  v8 = 3;
  v4 = _swiftEmptyArrayStorage;
LABEL_24:
  if (v13 <= 3)
  {
    v61 = 3;
  }

  else
  {
    v61 = v13;
  }

  v62 = v61 + 1;
  v63 = 16 * v13 + 40;
  while (v13 != 3)
  {
    if (v62 == ++v13)
    {
      __break(1u);
      goto LABEL_42;
    }

    v64 = v63 + 16;
    v1 = *&v94[v63];
    v63 += 16;
    if (v1)
    {
      v15 = *(&v91 + v64);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100498B7C(0, *(v4 + 2) + 1, 1, v4);
      }

      v5 = *(v4 + 2);
      v65 = *(v4 + 3);
      v10 = v5 + 1;
      if (v5 >= v65 >> 1)
      {
        v4 = sub_100498B7C((v65 > 1), v5 + 1, 1, v4);
      }

      *(v4 + 2) = v10;
      v66 = &v4[16 * v5];
      *(v66 + 4) = v15;
      *(v66 + 5) = v1;
      goto LABEL_24;
    }
  }

  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  swift_arrayDestroy();
  v92 = v4;
  sub_10010FC20(&qword_101183BC8, &unk_100EBF620);
  sub_100020674(&unk_101183BD0, &qword_101183BC8, &unk_100EBF620, &protocol conformance descriptor for [A]);
  v67 = BidirectionalCollection<>.joined(separator:)();
  v69 = v68;

  v70 = v69;
  v71 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v71 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v71)
  {

    v67 = 0;
    v70 = 0;
  }

  v73 = v90;
  v72 = v91;
  v74 = v80;
  v75 = sub_100262364(v67, v70);
  v74[1](v73, v72, v75);
  return v18;
}

uint64_t sub_10078FF60(uint64_t a1)
{
  v152 = a1;
  v144 = type metadata accessor for Logger();
  v143 = *(v144 - 8);
  __chkstk_darwin();
  v137 = &v119 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = &v119 - v3;
  v142 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v141 = *(v142 - 8);
  __chkstk_darwin();
  v122 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v146 = &v119 - v5;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v133 = &v119 - v6;
  v128 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v129 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  __chkstk_darwin();
  v132 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v8;
  __chkstk_darwin();
  v134 = &v119 - v9;
  v126 = type metadata accessor for MusicPropertySource();
  v125 = *(v126 - 8);
  __chkstk_darwin();
  v124 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101188910, &qword_100EBE7A0);
  __chkstk_darwin();
  v127 = &v119 - v11;
  v140 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v139 = *(v140 - 8);
  __chkstk_darwin();
  v138 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v145 = (&v119 - v13);
  v150 = type metadata accessor for Album();
  v154 = *(v150 - 8);
  __chkstk_darwin();
  v148 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v147 = *(v149 - 8);
  __chkstk_darwin();
  v135 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v153 = &v119 - v16;
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v18 = &v119 - v17;
  v19 = type metadata accessor for GenericMusicItem();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Track();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v151 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v119 - v26;
  v136 = v1;
  v28 = v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data;
  v29 = *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data);
  v30 = *(v28 + 8);
  v31 = *(v28 + 16);

  sub_10078A56C(v29, v30, v31, v27);

  v32 = v27;

  sub_10078AF90(v18);
  if ((*(v20 + 6))(v18, 1, v19) == 1)
  {
    sub_1000095E8(v18, &unk_101189DA0, &unk_100EBF370);
    v33 = v137;
    Logger.init(subsystem:category:)();
    (*(v24 + 16))(v151, v27, v23);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v36 = v24;
    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      *&v161 = v154;
      *v37 = 136446210;
      sub_10079392C(&qword_101181A08, &type metadata accessor for Track, &protocol conformance descriptor for Track);
      v152 = v32;
      v38 = v151;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v42 = *(v36 + 8);
      v42(v38, v23);
      v43 = sub_1000105AC(v39, v41, &v161);

      *(v37 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "Couldn't get generic music item from item: %{public}s", v37, 0xCu);
      sub_10000959C(v154);

      (*(v143 + 8))(v33, v144);
      return (v42)(v152, v23);
    }

    else
    {

      v62 = *(v24 + 8);
      v62(v151, v23);
      (*(v143 + 8))(v33, v144);
      return (v62)(v32, v23);
    }
  }

  else
  {
    v152 = v27;
    v45 = v23;
    v137 = v20;
    v46 = *(v20 + 4);
    v151 = v19;
    v46(v22, v18, v19);
    v47 = v153;
    v121 = v22;
    sub_100538C48(v22, v153);
    v48 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_loadedAlbum;
    v49 = v136;
    swift_beginAccess();
    v50 = v145;
    sub_1000089F8(v49 + v48, v145, &unk_101184730, &unk_100ECB920);
    v51 = v154;
    v52 = v154[6];
    v53 = v150;
    v54 = v52(v50, 1, v150);
    v55 = v51;
    v56 = v47;
    if (v54 == 1)
    {
      v57 = v49;
      v58 = v148;
      (v55[2])(v148, v49 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_album, v53);
      v59 = v52(v50, 1, v53);
      v60 = v149;
      v61 = v147;
      if (v59 != 1)
      {
        sub_1000095E8(v145, &unk_101184730, &unk_100ECB920);
      }
    }

    else
    {
      v57 = v49;
      v58 = v148;
      (v55[4])(v148, v50, v53);
      v60 = v149;
      v61 = v147;
    }

    v63 = v135;
    (*(v61 + 16))(v135, v56, v60);
    v64 = (*(v61 + 88))(v63, v60);
    if (v64 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
    {
      (*(v61 + 96))(v63, v60);
      (*(v141 + 32))(v146, v63, v142);
      Strong = swift_unknownObjectWeakLoadStrong();
      v120 = v24;
      if (Strong)
      {
        v66 = [Strong traitCollection];
        swift_unknownObjectRelease();
      }

      else
      {
        v66 = 0;
      }

      v95 = v146;
      sub_1005384B8(v66, &v155);

      if (v159)
      {
        v161 = v155;
        v162 = v156;
        v163 = v157;
        v164 = v158;
        v165 = v159;
        v166 = v160;
        v96 = Alert.uiAlertController.getter();
        sub_1000095E8(&v155, &qword_10118BFD0, &unk_100ED1B90);
        v97 = swift_unknownObjectWeakLoadStrong();
        if (v97)
        {
          [v97 presentViewController:v96 animated:1 completion:0];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v116 = v121;
        v117 = v120;
        (*(v141 + 8))(v146, v142);
        (v154[1])(v58, v53);
        (*(v61 + 8))(v153, v60);
        (*(v137 + 1))(v116, v151);
        return (*(v117 + 8))(v152, v45);
      }

      else
      {
        v147 = v45;
        v98 = v123;
        Logger.init(subsystem:category:)();
        v99 = v141;
        v100 = v122;
        v101 = v142;
        (*(v141 + 16))(v122, v95, v142);
        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v145 = v102;
          v105 = v104;
          v106 = swift_slowAlloc();
          *&v161 = v106;
          *v105 = 136446210;
          LODWORD(v140) = v103;
          v107 = MusicPlayer.PlayabilityStatus.UnplayableReason.debugDescription.getter();
          v108 = v101;
          v109 = v61;
          v111 = v110;
          v112 = *(v99 + 8);
          v112(v100, v108);
          v113 = sub_1000105AC(v107, v111, &v161);

          v114 = v105;
          *(v105 + 4) = v113;
          v115 = v145;
          _os_log_impl(&_mh_execute_header, v145, v140, "Couldn't create alert controller for reason: %{public}s", v114, 0xCu);
          sub_10000959C(v106);

          (*(v143 + 8))(v123, v144);
          v112(v95, v108);
          (v154[1])(v148, v150);
          (*(v109 + 8))(v153, v149);
        }

        else
        {

          v118 = *(v99 + 8);
          v118(v100, v101);
          (*(v143 + 8))(v98, v144);
          v118(v95, v101);
          (v154[1])(v58, v150);
          (*(v61 + 8))(v153, v60);
        }

        (*(v137 + 1))(v121, v151);
        return (*(v120 + 8))(v152, v147);
      }
    }

    else if (v64 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
    {
      *(&v162 + 1) = v53;
      *&v163 = &protocol witness table for Album;
      v67 = sub_10001C8B8(&v161);
      (v154[2])(v67, v58, v53);
      *(&v156 + 1) = v45;
      *&v157 = &protocol witness table for Track;
      v68 = sub_10001C8B8(&v155);
      v69 = *(v24 + 16);
      v70 = v152;
      v69(v68, v152, v45);
      v71 = v125;
      v72 = v124;
      v73 = v126;
      (*(v125 + 104))(v124, enum case for MusicPropertySource.catalog(_:), v126);
      v74 = static MusicPropertySource.== infix(_:_:)();
      (*(v71 + 8))(v72, v73);
      v75 = type metadata accessor for MusicPlaybackSource();
      v76 = *(v75 - 8);
      v77 = &enum case for MusicPlaybackSource.catalog(_:);
      if ((v74 & 1) == 0)
      {
        v77 = &enum case for MusicPlaybackSource.library(_:);
      }

      v78 = v127;
      (*(*(v75 - 8) + 104))(v127, *v77, v75);
      (*(v76 + 56))(v78, 0, 1, v75);
      v79 = v138;
      MusicPlaybackIntentDescriptor.init(container:startingAt:playbackSource:)();
      v80 = v129;
      (*(v139 + 16))(v129, v79, v140);
      swift_storeEnumTagMultiPayload();
      *(&v162 + 1) = v45;
      *&v163 = &protocol witness table for Track;
      v81 = sub_10001C8B8(&v161);
      v69(v81, v70, v45);
      v82 = swift_unknownObjectWeakLoadStrong();
      *(&v156 + 1) = _s10DataSourceCMa_1(0);
      *&v157 = &off_1010BEC68;
      *&v155 = v57;

      v83 = v134;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v80, &v161, 3, 1, 0, 1, 0, 1, v134, v82, &v155);
      v84 = type metadata accessor for TaskPriority();
      v85 = v133;
      (*(*(v84 - 8) + 56))(v133, 1, 1, v84);
      v86 = v132;
      sub_1001DFCE4(v83, v132);
      type metadata accessor for MainActor();
      v87 = static MainActor.shared.getter();
      v88 = (*(v130 + 80) + 32) & ~*(v130 + 80);
      v89 = swift_allocObject();
      *(v89 + 16) = v87;
      *(v89 + 24) = &protocol witness table for MainActor;
      sub_1001DFD58(v86, v89 + v88);
      sub_1001F4F78(0, 0, v85, &unk_100EE21F8, v89);

      v90 = swift_unknownObjectWeakLoadStrong();
      v91 = v149;
      v92 = v147;
      if (v90)
      {
        v93 = [v90 navigationController];
        if (v93)
        {
          v94 = v93;
          type metadata accessor for CarPlayRootNavigationController();
          if (swift_dynamicCastClass())
          {
            sub_1001D3268(0, 1);
          }

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      sub_100188CDC(v83);
      (*(v139 + 8))(v138, v140);
      (v154[1])(v148, v150);
      (*(v92 + 8))(v153, v91);
      (*(v137 + 1))(v121, v151);
      return (*(v24 + 8))(v70, v45);
    }

    else
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100791550@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101188E88, &unk_100ECBD70);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13[-v5];
  v7 = *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_autoupdatingResponse);
  if (v7 < 0)
  {
    v9 = type metadata accessor for MusicPlaybackIntentDescriptor();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }

  else
  {

    dispatch thunk of MusicAutoupdatingResponse.request.getter();
    MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
    v15[3] = v3;
    v15[4] = sub_100020674(&qword_101188E90, &qword_101188E88, &unk_100ECBD70, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v8 = sub_10001C8B8(v15);
    (*(v4 + 16))(v8, v6, v3);
    v14 = 0;
    memset(&v13[16], 0, 32);
    MusicPlaybackIntentDescriptor.init(request:startingAt:)();
    (*(v4 + 8))(v6, v3);
    sub_1004E6028(v7);
    v11 = type metadata accessor for MusicPlaybackIntentDescriptor();
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_1007917E8()
{
  v1 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_album;
  v2 = type metadata accessor for Album();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000095E8(v0 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_loadedAlbum, &unk_101184730, &unk_100ECB920);

  v3 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_preferredSource;
  v4 = type metadata accessor for MusicPropertySource();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectWeakDestroy();
  sub_1004E6028(*(v0 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_autoupdatingResponse));

  sub_1000D8F2C(v0 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_delegate);
  return v0;
}

uint64_t sub_100791928()
{
  sub_1007917E8();

  return swift_deallocClassInstance();
}

uint64_t _s10DataSourceCMa_1(uint64_t a1)
{
  result = qword_1011A2698;
  if (!qword_1011A2698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007919D4(uint64_t a1)
{
  type metadata accessor for Album();
  if (v1 <= 0x3F)
  {
    sub_100791B30(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MusicPropertySource();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100791B30(uint64_t a1)
{
  if (!qword_101192490)
  {
    type metadata accessor for Album();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101192490);
    }
  }
}

uint64_t sub_100791BB4@<X0>(uint64_t *a1@<X8>)
{
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_loadedAlbum;
  swift_beginAccess();
  sub_1000089F8(v1 + v5, v4, &unk_101184730, &unk_100ECB920);
  v6 = type metadata accessor for Album();
  a1[3] = v6;
  a1[4] = &off_1011A25E0;
  v7 = sub_10001C8B8(a1);
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  if (v9(v4, 1, v6) != 1)
  {
    return (*(v8 + 32))(v7, v4, v6);
  }

  (*(v8 + 16))(v7, v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_album, v6);
  result = (v9)(v4, 1, v6);
  if (result != 1)
  {
    return sub_1000095E8(v4, &unk_101184730, &unk_100ECB920);
  }

  return result;
}

uint64_t sub_100791D68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_preferredSource;
  v4 = type metadata accessor for MusicPropertySource();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_100791E04(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_10078EE9C(Strong);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return result;
}

void sub_100791E8C(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100791ED4()
{
  v4 = _typeName(_:qualified:)();
  v0._countAndFlagsBits = 0x203A6D65746928;
  v0._object = 0xE700000000000000;
  String.append(_:)(v0);
  type metadata accessor for Album();
  sub_10079392C(&unk_1011926D0, &type metadata accessor for Album, &protocol conformance descriptor for Album);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4;
}

id sub_100791FD4(void *a1, int a2, int a3)
{
  v28 = a3;
  v30 = a2;
  v4 = type metadata accessor for MusicPropertySource();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v29 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &ObjectType - v7;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v10 = &ObjectType - v9;
  v11 = type metadata accessor for Album();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = (&ObjectType - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v16 = &ObjectType - v15;
  __chkstk_darwin();
  v18 = &ObjectType - v17;
  v31 = a1;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_1000095E8(v10, &unk_101184730, &unk_100ECB920);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    ObjectType = swift_getObjectType();
    v20 = *(v12 + 16);
    v20(v16, v18, v11);
    v21 = &enum case for MusicPropertySource.catalog(_:);
    if ((v28 & 1) == 0)
    {
      v21 = &enum case for MusicPropertySource.library(_:);
    }

    (*(v5 + 104))(v8, *v21, v4);
    v20(v14, v16, v11);
    v22 = v29;
    (*(v5 + 16))(v29, v8, v4);
    _s10DataSourceCMa_1(0);
    v23 = swift_allocObject();
    sub_10078B958(v14, v30 & 1, v22);
    v24 = objc_allocWithZone(type metadata accessor for MCDItemDetailViewController());
    v25 = sub_1007934C4(v23, v24, &off_1010BEC78, &OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_playActivityFeature);

    (*(v5 + 8))(v8, v4);
    v26 = *(v12 + 8);
    v26(v16, v11);
    v26(v18, v11);
    swift_deallocPartialClassInstance();
    return v25;
  }
}

Swift::Int sub_10079243C(Swift::UInt a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a1);
  }

  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v11 & 1) == 0)
    {
      do
      {
        v13 = a3 + 16 * result;
        if (*(v13 + 8))
        {
          if (a2)
          {
            return result;
          }
        }

        else if ((a2 & 1) == 0 && *v13 == a1)
        {
          return result;
        }

        _HashTable.BucketIterator.advance()();
        result = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v12 & 1) == 0);
    }
  }

  return result;
}

void sub_100792570(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10066CB28(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v13 = *(v8 + 16);
  v12 = *(v8 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_10066CB28((v12 > 1), v13 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v13 + 1;
  v14 = v8 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2 & 1;
  v4[1] = v8;
  if (*v4)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v13)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v16 = *v4;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v17 = _HashTable.copy()();

        *v4 = v17;
        v16 = v17;
      }

      if (v16)
      {
        _HashTable.UnsafeHandle.subscript.setter();
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

  sub_1007926E8(v11);
}

void sub_1007926E8(__n128 a1)
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
    v6 = static _HashTable.scale(forCapacity:)();
    if (v3 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    v5 = sub_100792788(v4, v8, 0, v3, v7);
  }

  else
  {
    v5 = 0;
  }

  *v1 = v5;
}

uint64_t sub_100792788(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = static _HashTable.scale(forCapacity:)();
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
    v10 = _HashTable.init(scale:reservedScale:)();
    sub_100792808(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

Swift::Int sub_100792858(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = result;
      v7 = 0;
      while (1)
      {
        v8 = v6 + 16 * v7;
        v9 = *v8;
        v10 = *(v8 + 8);
        Hasher.init(_seed:)();
        if (v10 == 1)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v9);
        }

        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v7 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_10079298C(unint64_t a1, char a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && a1 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = *(v7 + 16);
    }

    sub_10066CB28(isUniquelyReferenced_nonNull_native, v15, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = static _HashTable.scale(forCapacity:)();
      if (a2)
      {
        v14 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v17 = v12;
        swift_beginAccess();
        v12 = v17;
        v14 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v14 <= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v14;
      }

      goto LABEL_30;
    }
  }

  v12 = static _HashTable.scale(forCapacity:)();
  v11 = 0;
  if (a2)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v14 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v14;
  }

  v19 = static _HashTable.scale(forCapacity:)();
  if (v19 <= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  if (v20 < v11)
  {
    if (v14 <= v20)
    {
      v16 = v20;
    }

    else
    {
      v16 = v14;
    }

LABEL_30:
    v21 = sub_100792788(v7, v16, 0, v14, v13);

    *v3 = v21;
    return;
  }

  if (!v10 || (swift_isUniquelyReferenced_native() & 1) != 0)
  {
    v22 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v14)
    {
      return;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v22 = _HashTable.copy()();

  *v3 = v22;
  if (!v22)
  {
    goto LABEL_39;
  }

LABEL_35:
  swift_beginAccess();
  if ((*(v22 + 24) & 0x3FLL) != v14)
  {
    *(v22 + 24) = *(v22 + 24) & 0xFFFFFFFFFFFFFFC0 | v14 & 0x3F;
  }
}

uint64_t sub_100792B6C(uint64_t a1)
{
  v69 = type metadata accessor for Song();
  v86 = *(v69 - 8);
  __chkstk_darwin();
  v68 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Track();
  v79 = *(v3 - 8);
  __chkstk_darwin();
  v80 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v62 - v5;
  __chkstk_darwin();
  v78 = &v62 - v6;
  __chkstk_darwin();
  v87 = &v62 - v7;
  __chkstk_darwin();
  v77 = &v62 - v8;
  v9 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v62 - v11;
  v13 = sub_10010FC20(&unk_10118C0B0, &qword_100ECFA00) - 8;
  v14 = __chkstk_darwin();
  v16 = &v62 - v15;
  v89 = 0;
  v90 = _swiftEmptyArrayStorage;
  v64 = v10;
  v17 = a1;
  (*(v10 + 16))(v12, a1, v9, v14);
  sub_100020674(&unk_10118C0A0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v18 = *(v13 + 44);
  v19 = sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v16[v18] == v88[0])
  {
    v20 = v9;
    v21 = 0;
    v22 = v17;
LABEL_40:
    (*(v64 + 8))(v22, v20);
    sub_1000095E8(v16, &unk_10118C0B0, &qword_100ECFA00);
    return v21;
  }

  v63 = v17;
  v84 = (v79 + 16);
  v23 = (v79 + 32);
  v74 = (v79 + 88);
  v73 = enum case for Track.song(_:);
  v81 = (v79 + 8);
  v67 = (v79 + 96);
  v66 = (v86 + 4);
  v65 = (v86 + 1);
  v85 = v9;
  v86 = _swiftEmptyArrayStorage;
  v24 = v87;
  v71 = (v79 + 32);
  v75 = v18;
  v76 = v19;
  v72 = v16;
  while (1)
  {
    v29 = dispatch thunk of Collection.subscript.read();
    v30 = *v84;
    v31 = v77;
    (*v84)(v77);
    v29(v88, 0);
    v32 = v72;
    dispatch thunk of Collection.formIndex(after:)();
    v83 = *v23;
    v83(v24, v31, v3);
    v33 = v78;
    v82 = v30;
    (v30)(v78, v24, v3);
    v34 = (*v74)(v33, v3);
    if (v34 == v73)
    {
      (*v67)(v33, v3);
      v35 = v68;
      v36 = v69;
      (*v66)(v68, v33, v69);
      v37 = Song.discNumber.getter();
      v39 = v38;
      (*v65)(v35, v36);
    }

    else
    {
      (*v81)(v33, v3);
      v37 = 0;
      v39 = 1;
    }

    v40 = v86;
    v41 = v90[2];
    v42 = v75;
    if (!v89)
    {
      v16 = v32;
      if (v41)
      {
        v46 = 0;
        v55 = v90 + 5;
        do
        {
          if (*v55)
          {
            if (v39)
            {
              goto LABEL_12;
            }
          }

          else if (!(v39 & 1 | (*(v55 - 1) != v37)))
          {
            goto LABEL_12;
          }

          ++v46;
          v55 += 16;
        }

        while (v41 != v46);
        v44 = 0;
      }

      else
      {
        v44 = 0;
      }

LABEL_31:
      sub_100792570(v37, v39 & 1, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10066CAE8(0, v40[2] + 1, 1);
        v40 = v91;
      }

      v58 = v40[2];
      v57 = v40[3];
      if (v58 >= v57 >> 1)
      {
        sub_10066CAE8((v57 > 1), v58 + 1, 1);
        v40 = v91;
      }

      v40[2] = v58 + 1;
      v59 = v40 + 4;
      v40[v58 + 4] = _swiftEmptyArrayStorage;
      v82(v80);
      v50 = v40[v58 + 4];
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v40[v58 + 4] = v50;
      v86 = v40;
      if ((v60 & 1) == 0)
      {
        v50 = sub_100499798(0, v50[2] + 1, 1, v50);
        v59[v58] = v50;
      }

      v53 = v50[2];
      v61 = v50[3];
      v54 = v53 + 1;
      if (v53 >= v61 >> 1)
      {
        v50 = sub_100499798((v61 > 1), v53 + 1, 1, v50);
        v59[v58] = v50;
      }

      v25 = v80;
      goto LABEL_5;
    }

    v43 = sub_10079243C(v37, v39 & 1, (v90 + 4), v41, (v89 + 16), v89 + 32);
    v16 = v32;
    if (v45)
    {
      goto LABEL_31;
    }

    v46 = v43;
LABEL_12:
    result = swift_isUniquelyReferenced_nonNull_native();
    v48 = v87;
    if ((result & 1) == 0)
    {
      result = sub_10059F0A8(v40);
      v40 = result;
    }

    if ((v46 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v46 >= v40[2])
    {
      goto LABEL_42;
    }

    v49 = v40 + 4;
    (v82)(v70, v48, v3);
    v50 = v40[v46 + 4];
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v40[v46 + 4] = v50;
    v86 = v40;
    if ((v51 & 1) == 0)
    {
      v50 = sub_100499798(0, v50[2] + 1, 1, v50);
      v49[v46] = v50;
    }

    v53 = v50[2];
    v52 = v50[3];
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v50 = sub_100499798((v52 > 1), v53 + 1, 1, v50);
      v49[v46] = v50;
    }

    v25 = v70;
LABEL_5:
    v50[2] = v54;
    v26 = v79;
    v27 = v50 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v79 + 72) * v53;
    v23 = v71;
    v83(v27, v25, v3);
    v24 = v87;
    (*(v26 + 8))(v87, v3);
    v28 = v85;
    dispatch thunk of Collection.endIndex.getter();
    if (*&v16[v42] == v88[0])
    {
      v20 = v28;
      v21 = v89;
      v22 = v63;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

id sub_1007934C4(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  v8 = OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView;
  *&a2[v8] = [objc_allocWithZone(MCDTableView) init];
  *&a2[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorLoadingTimeout] = 0;
  a2[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError] = 0;
  v9 = OBJC_IVAR____TtC5Music27MCDItemDetailViewController_mediaContainerHeader;
  type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView();
  *&a2[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = &a2[OBJC_IVAR____TtC5Music27MCDItemDetailViewController____lazy_storage___loadingView];
  *v10 = 0;
  v10[1] = 0;
  *&a2[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_errorView] = 0;
  v11 = &a2[OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource];
  *v11 = a1;
  v11[1] = a3;
  v15.receiver = a2;
  v15.super_class = type metadata accessor for MCDItemDetailViewController();

  v12 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  LOBYTE(a4) = *(a1 + *a4);
  v13 = v12;
  UIViewController.playActivityFeatureIdentifier.setter(a4);

  return v13;
}

void sub_1007935F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10079298C(v2, 0);
  sub_10066CAE8(0, v2, 0);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 32;
    do
    {
      v5 = v4 + 24 * v3;
      v6 = *v5;
      v7 = *(v5 + 16);
      v8 = *(v5 + 8);
      v9 = _swiftEmptyArrayStorage[2];
      if (v9)
      {
        v10 = &_swiftEmptyArrayStorage[5];
        do
        {
          if (*v10)
          {
            if (v8)
            {
              goto LABEL_15;
            }
          }

          else if ((v8 & 1) == 0 && *(v10 - 1) == v6)
          {
LABEL_15:
            __break(1u);
            return;
          }

          v10 += 16;
          --v9;
        }

        while (v9);
      }

      sub_100792570(v6, v8, 0);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_10066CAE8((v11 > 1), v12 + 1, 1);
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v12 + 1;
      _swiftEmptyArrayStorage[v12 + 4] = v7;
    }

    while (v3 != v2);
  }
}

uint64_t sub_100793780(uint64_t a1)
{
  v4 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100423504(a1, v6, v7, v1 + v5);
}

uint64_t sub_100793870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10078D278(a1, v4, v5, v6);
}

uint64_t sub_10079392C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10079397C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101184730, &unk_100ECB920);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PosterWidgetConfiguration.BasicMusicItem(uint64_t a1)
{
  result = qword_1011A28E8;
  if (!qword_1011A28E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100793A68(uint64_t a1)
{
  sub_10002F678();
  if (v1 <= 0x3F)
  {
    sub_1001E8510(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100793B30(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_1011A2950, &qword_100EE2528);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_10000954C(a1, a1[3]);
  sub_1007946E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = *(v3 + 48);
    v13 = 3;
    sub_10043CA24();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem(0);
    LOBYTE(v12) = 4;
    type metadata accessor for Date();
    sub_1007947F8(&qword_10118F0E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 40));
    v13 = 6;
    sub_10041E680();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100793E4C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v24 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = v22 - v4;
  v6 = sub_10010FC20(&qword_1011A2940, &qword_100EE2520);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin();
  v8 = v22 - v7;
  v9 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem(0);
  __chkstk_darwin();
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000954C(a1, a1[3]);
  sub_1007946E4();
  v12 = v27;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    sub_10000959C(a1);
  }

  else
  {
    v13 = v5;
    v14 = v25;
    LOBYTE(v28) = 0;
    *v11 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v11 + 1) = v15;
    v27 = v15;
    LOBYTE(v28) = 1;
    v16 = v14;
    *(v11 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v11 + 3) = v17;
    LOBYTE(v28) = 2;
    *(v11 + 4) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v11 + 5) = v18;
    v29 = 3;
    sub_10043C5AC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11[48] = v28;
    v22[1] = type metadata accessor for Date();
    LOBYTE(v28) = 4;
    v22[0] = sub_1007947F8(&qword_10118F0D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v11;
    sub_10041E7D4(v13, &v11[v9[8]]);
    LOBYTE(v28) = 5;
    v20 = v24;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10041E7D4(v20, v19 + v9[9]);
    v29 = 6;
    sub_10041E62C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = v9[10];
    (*(v16 + 8))(v8, v26);
    *(v19 + v21) = v28;
    sub_100794738(v19, v23);
    sub_10000959C(a1);
    sub_10079479C(v19);
  }
}

unint64_t sub_100794380()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x49656C6261646F63;
  }

  v4 = 1684957547;
  if (v1 != 3)
  {
    v4 = 0x79616C507473616CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10079445C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100794AA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100794490(uint64_t a1)
{
  v2 = sub_1007946E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007944CC(uint64_t a1)
{
  v2 = sub_1007946E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100794508()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100794558(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100794598(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100794614(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    if (a1[2] == a2[2] && a1[3] == a2[3])
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

unint64_t sub_1007946E4()
{
  result = qword_1011A2948;
  if (!qword_1011A2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2948);
  }

  return result;
}

uint64_t sub_100794738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10079479C(uint64_t a1)
{
  v2 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007947F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s14descr1010964D9O5StateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr1010964D9O5StateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1007949A4()
{
  result = qword_1011A2958;
  if (!qword_1011A2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2958);
  }

  return result;
}

unint64_t sub_1007949FC()
{
  result = qword_1011A2960;
  if (!qword_1011A2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2960);
  }

  return result;
}

unint64_t sub_100794A54()
{
  result = qword_1011A2968;
  if (!qword_1011A2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2968);
  }

  return result;
}

uint64_t sub_100794AA8(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79616C507473616CLL && a2 == 0xEE00657461446465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100E3C6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49656C6261646F63 && a2 == 0xEC0000006567616DLL)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_100794D4C()
{
  sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  v0 = UIFontTextStyleBody;
  v1 = static UIFont.preferredFont(forTextStyle:weight:)();

  qword_1012195B8 = v1;
}

void sub_100794DC4()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_1012195C0 = v2;
}

id sub_100794E30()
{
  sub_100009F78(0, &qword_101180C98, UIColor_ptr);
  result = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(60, 60, 67, 0.3);
  qword_1012195C8 = result;
  return result;
}

void sub_100794E8C(void *a1)
{
  v63 = String._bridgeToObjectiveC()();
  v64 = v1;
  v62 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() defaultParagraphStyle];
  [v2 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v3 = sub_100009F78(0, &qword_101194D60, NSMutableParagraphStyle_ptr);
  swift_dynamicCast();
  v4 = v66[0];
  [v66[0] setAlignment:0];
  sub_10010FC20(&qword_10119FB30, &unk_100EBC740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  *(inited + 32) = NSForegroundColorAttributeName;
  v6 = qword_10117FD40;
  v59 = NSForegroundColorAttributeName;
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1012195B0;
  v8 = sub_100009F78(0, &qword_101180C98, UIColor_ptr);
  *(inited + 40) = v7;
  *(inited + 64) = v8;
  *(inited + 72) = NSParagraphStyleAttributeName;
  *(inited + 80) = v4;
  *(inited + 104) = v3;
  *(inited + 112) = NSFontAttributeName;
  v9 = qword_10117FD48;
  v10 = v7;
  v57 = v3;
  v11 = NSParagraphStyleAttributeName;
  v12 = NSFontAttributeName;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  v16 = v4;
  if (v9 != -1)
  {
    swift_once();
  }

  v17 = qword_1012195B8;
  v18 = sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  *(inited + 144) = v18;
  *(inited + 120) = v17;
  v19 = v17;
  v20 = sub_10010BA14(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_101180420, &unk_100EDEFD0);
  swift_arrayDestroy();
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_100EBE260;
  *(v21 + 32) = v59;
  *(v21 + 40) = v13;
  *(v21 + 64) = v8;
  *(v21 + 72) = v14;
  *(v21 + 80) = v16;
  *(v21 + 104) = v57;
  *(v21 + 112) = v15;
  v22 = qword_10117FD50;
  v60 = v16;
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_1012195C0;
  *(v21 + 144) = v18;
  *(v21 + 120) = v23;
  v24 = v23;
  v58 = sub_10010BA14(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  v25 = *(v64 + 16);
  v26 = dbl_100EE26C0[v25];
  v27 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v27 setWantsNumberOfLineFragments:1];
  [v27 setMaximumNumberOfLines:3];
  type metadata accessor for Key(0);
  sub_10065AAEC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v63 boundingRectWithSize:1 options:isa attributes:v27 context:{218.0, INFINITY}];
  rect = v29;

  v30 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v30 setWantsNumberOfLineFragments:1];
  v31 = [v27 numberOfLineFragments];
  if (__OFSUB__(4, v31))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (4 - v31 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  [v30 setMaximumNumberOfLines:?];
  v32 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v62 boundingRectWithSize:1 options:v32 attributes:v30 context:{218.0, INFINITY}];
  v34 = v33;

  v54 = v30;
  if (v25 > 1u)
  {
    if (v25 == 2)
    {
      v36 = 15.0;
      v35 = 16.0;
    }

    else
    {
      v35 = Int.seconds.getter(0);
      v36 = 0.0;
    }
  }

  else
  {
    v35 = 16.0;
    if (v25)
    {
      v36 = 49.0;
    }

    else
    {
      v36 = 15.0;
    }
  }

  v66[0] = *&v36;
  v66[1] = *&v35;
  v66[2] = 0x406F400000000000;
  v37 = (v26 + -218.0) * 0.5;
  v67.origin.y = v35;
  v67.size.width = 250.0;
  v49 = v35;
  v55 = v26;
  v67.size.height = 0.0;
  v67.origin.x = v36;
  v38 = CGRectGetMinY(v67) + 16.0;
  v68.origin.x = v37;
  v68.origin.y = v38;
  v68.size.width = 218.0;
  v68.size.height = 218.0;
  MinX = CGRectGetMinX(v68);
  v69.origin.x = v37;
  v69.origin.y = v38;
  v69.size.width = 218.0;
  v69.size.height = 218.0;
  v52 = CGRectGetMaxY(v69) + 10.0;
  v70.origin.x = v37;
  v70.origin.y = v38;
  v70.size.width = 218.0;
  v70.size.height = 218.0;
  v51 = CGRectGetMinX(v70);
  v71.origin.x = MinX;
  v71.origin.y = v52;
  v71.size.width = 218.0;
  v71.size.height = rect;
  v50 = CGRectGetMaxY(v71) + 0.0;
  v72.origin.x = v37;
  v72.origin.y = v38;
  v72.size.width = 218.0;
  v72.size.height = 218.0;
  v39 = CGRectGetMinX(v72);
  v73.origin.x = v51;
  v73.origin.y = v50;
  v73.size.width = 218.0;
  v73.size.height = v34;
  v74.origin.y = CGRectGetMaxY(v73) + 6.0;
  y = v74.origin.y;
  v74.size.width = 52.0;
  v74.size.height = 12.0;
  v74.origin.x = v39;
  v40 = CGRectGetMaxY(v74) + 16.0;
  v75.size.height = 0.0;
  v75.origin.x = v36;
  v75.origin.y = v49;
  v75.size.width = 250.0;
  v76.size.height = v40 - CGRectGetMinY(v75);
  v66[3] = *&v76.size.height;
  v76.origin.x = v36;
  v76.origin.y = v49;
  v76.size.width = 250.0;
  v41 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v55, CGRectGetMaxY(v76) + 16.0}];
  v42 = swift_allocObject();
  *(v42 + 16) = v64;
  *(v42 + 24) = v66;
  *(v42 + 32) = v63;
  *(v42 + 40) = MinX;
  *(v42 + 48) = v52;
  *(v42 + 56) = 0x406B400000000000;
  *(v42 + 64) = rect;
  *(v42 + 72) = v20;
  *(v42 + 80) = v62;
  *(v42 + 88) = v51;
  *(v42 + 96) = v50;
  *(v42 + 104) = 0x406B400000000000;
  *(v42 + 112) = v34;
  *(v42 + 120) = v58;
  *(v42 + 128) = v39;
  *(v42 + 136) = y;
  *(v42 + 144) = xmmword_100EE2660;
  *(v42 + 160) = v37;
  *(v42 + 168) = v38;
  *(v42 + 176) = vdupq_n_s64(0x406B400000000000uLL);
  *(v42 + 192) = a1;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_100795EB8;
  *(v43 + 24) = v42;
  aBlock[4] = sub_1002CF914;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006BD7C;
  aBlock[3] = &unk_1010BEF18;
  v44 = _Block_copy(aBlock);

  v45 = v63;
  v46 = v62;
  v47 = a1;

  [v41 imageWithActions:v44];

  _Block_release(v44);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    goto LABEL_20;
  }
}

void sub_10079570C(void *a1, uint64_t a2, double *a3, void *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, uint64_t a13, void *a14, uint64_t a15, void *a16, double a17, double a18, double a19, double a20, CGFloat a21, CGFloat a22, CGFloat a23, CGFloat a24)
{
  v84 = a15;
  v85 = a14;
  v83 = a4;
  v36 = type metadata accessor for CGPathFillRule();
  v37 = *(v36 - 8);
  *&v38 = __chkstk_darwin().n128_u64[0];
  v40 = &v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) != 3)
  {
    v41 = [a1 CGContext];
    if (qword_10117FD30 != -1)
    {
      swift_once();
    }

    v42 = [qword_1012195A0 CGColor];
    v86.width = 0.0;
    v86.height = 4.0;
    CGContextSetShadowWithColor(v41, v86, 8.0, v42);
  }

  v43 = objc_opt_self();
  v44 = *a3;
  v45 = a3[1];
  v46 = a3[2];
  v47 = a3[3];
  v82 = v43;
  v48 = [v43 _bezierPathWithPillRect:v44 cornerRadius:{v45, v46, v47, 12.0}];
  if (!v48)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v49 = v48;
  v76 = a16;
  v50 = [a1 CGContext];
  v51 = [v49 CGPath];
  CGContextAddPath(v50, v51);

  v52 = [a1 CGContext];
  if (qword_10117FD28 != -1)
  {
    swift_once();
  }

  v53 = [qword_101219598 CGColor];
  CGContextSetFillColorWithColor(v52, v53);

  v54 = [a1 CGContext];
  v55 = *(v37 + 104);
  v79 = enum case for CGPathFillRule.winding(_:);
  v78 = v55;
  v55(v40);
  CGContextRef.fillPath(using:)();

  v56 = *(v37 + 8);
  v80 = v37 + 8;
  v81 = v36;
  v77 = v56;
  v56(v40, v36);
  [v49 addClip];
  v57 = [a1 CGContext];
  v87.width = 0.0;
  v87.height = 0.0;
  CGContextSetShadowWithColor(v57, v87, 0.0, 0);

  type metadata accessor for Key(0);
  sub_10065AAEC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v83 drawWithRect:33 options:isa attributes:0 context:{a5, a6, a7, a8}];

  v59 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v85 drawWithRect:33 options:v59 attributes:0 context:{a9, a10, a11, a12}];

  v60 = objc_opt_self();
  v61 = String._bridgeToObjectiveC()();
  if (qword_10117F878 != -1)
  {
    swift_once();
  }

  v62 = [v60 imageNamed:v61 inBundle:qword_101218F90 compatibleWithTraitCollection:0];

  if (!v62)
  {
    goto LABEL_19;
  }

  if (qword_10117FD58 != -1)
  {
    swift_once();
  }

  v85 = v49;
  v63 = [v62 flattenedImageWithColor:qword_1012195C8];

  [v63 drawInRect:{a17, a18, a19, a20}];
  v64 = [a1 CGContext];
  v65 = v82;
  if (qword_10117FD38 != -1)
  {
    swift_once();
  }

  v66 = [qword_1012195A8 CGColor];
  v88.width = 0.0;
  v88.height = 2.0;
  CGContextSetShadowWithColor(v64, v88, 20.0, v66);

  v89.origin.x = a21;
  v89.origin.y = a22;
  v89.size.width = a23;
  v89.size.height = a24;
  v90 = CGRectInset(v89, 1.0, 1.0);
  v67 = [v65 _bezierPathWithPillRect:v90.origin.x cornerRadius:{v90.origin.y, v90.size.width, v90.size.height, 6.0}];
  if (!v67)
  {
    goto LABEL_20;
  }

  v68 = v67;
  v69 = [a1 CGContext];
  v70 = [v68 CGPath];
  CGContextAddPath(v69, v70);

  v71 = [a1 CGContext];
  v72 = v81;
  v78(v40, v79, v81);
  CGContextRef.fillPath(using:)();

  v77(v40, v72);
  v73 = [v65 _bezierPathWithPillRect:a21 cornerRadius:{a22, a23, a24, 6.0}];
  if (v73)
  {
    v74 = v73;
    [v73 addClip];
    [v76 drawInRect:{a21, a22, a23, a24}];

    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_100795E48()
{

  return swift_deallocClassInstance();
}

void sub_100795F14(void *a1, uint64_t a2, int a3)
{
  v6 = OBJC_IVAR____TtC5Music20NavigationController__pushingViewController;
  v7 = *(v3 + OBJC_IVAR____TtC5Music20NavigationController__pushingViewController);
  *(v3 + OBJC_IVAR____TtC5Music20NavigationController__pushingViewController) = a1;
  v8 = a1;

  [v8 loadViewIfNeeded];
  v9 = [v8 navigationItem];
  sub_100795FE8(v9);

  v10 = [v8 navigationItem];
  sub_100796418(v10);

  sub_100037910(v8, a2, a3);
  v11 = *(v3 + v6);
  *(v3 + v6) = 0;
}

void sub_100795FE8(void *a1)
{
  v2 = v1;
  v4 = [v1 viewControllers];
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    v6 = &selRef_setPhotosHeaderMetadata_;
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  v6 = &selRef_setPhotosHeaderMetadata_;
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = sub_10004056C(0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;

  v9 = [v8 navigationItem];

  if (v9)
  {
    sub_100009F78(0, &unk_1011A2AE0, UINavigationItem_ptr);
    v10 = a1;
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {
LABEL_18:
      if ([a1 v6[496]] == 2)
      {
LABEL_25:
        v15 = 3;
        goto LABEL_26;
      }

      v21 = [v2 traitCollection];
      v22 = [v21 userInterfaceIdiom];

      if (v22)
      {
        v23 = [v2 traitCollection];
        v24 = [v23 userInterfaceIdiom];

        [a1 _setSupportsTwoLineLargeTitles:v24 == 1];
        if (v24 != 1)
        {
          v25 = 1;
LABEL_24:
          [a1 setLargeTitleDisplayMode:v25];
          goto LABEL_25;
        }
      }

      else
      {
        [a1 _setSupportsTwoLineLargeTitles:1];
      }

      v25 = 3;
      goto LABEL_24;
    }
  }

LABEL_11:
  v12 = [v2 viewControllers];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
    v16 = *&v2[OBJC_IVAR____TtC5Music20NavigationController__pushingViewController];
    if (v16)
    {
      v17 = [v16 navigationItem];
      if (v17)
      {
        v18 = v17;
        sub_100009F78(0, &unk_1011A2AE0, UINavigationItem_ptr);
        v19 = a1;
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v15 = 1;
LABEL_26:
  v26 = [a1 standardAppearance];
  if (!v26)
  {
    v26 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v36 = v26;
  v27 = [a1 scrollEdgeAppearance];
  if (!v27)
  {
    v27 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v28 = [a1 v6[496]];
  v29 = sub_1007E8C74();
  if (v28 == 3)
  {
    v30 = v15;
  }

  else
  {
    v30 = v28;
  }

  v31 = v30 > 3;
  v32 = 0x1000202u >> (8 * v30);
  if (v31)
  {
    LOBYTE(v32) = 0;
  }

  if (v29 == 3)
  {
    v33 = v32;
  }

  else
  {
    v33 = v29;
  }

  v34 = v33;
  [v36 _setTitleControlHidden:v33 != 0];
  [v27 _setTitleControlHidden:v34 == 2];
  [a1 setStandardAppearance:v36];
  v35 = v27;
  [a1 setScrollEdgeAppearance:v35];
}

id sub_100796418(void *a1)
{
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = result;
  [result bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  CGRectGetWidth(v19);
  result = [v1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  [result safeAreaInsets];

  UIEdgeInsets.horizontal.getter();
  v14 = HI.SizeClass.init(_:)();
  result = [v1 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = result;
  v16 = [result effectiveUserInterfaceLayoutDirection];

  HI.SizeClass.margin.getter(v14);
  result = [v1 view];
  v17 = result;
  if (v16 == 1)
  {
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

LABEL_8:
  [result safeAreaInsets];

  [a1 _titleMinimumMargins];

  return [a1 _setTitleMinimumMargins:?];
}

void sub_1007966E4(unint64_t a1)
{
  v3 = [v1 existingPaletteForEdge:2];
  if (v3)
  {
    v4 = v3;
    [v1 detachPalette:v3];
  }

  v5 = OBJC_IVAR____TtC5Music20NavigationController__pushingViewController;
  v21 = *&v1[OBJC_IVAR____TtC5Music20NavigationController__pushingViewController];
  if (a1 >> 62)
  {
LABEL_17:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v21;
  if (v6)
  {
    v7 = 0;
    v19 = a1 & 0xC000000000000001;
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v19)
      {
        v9 = sub_10004056C(v7, a1);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * v7 + 32);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      v11 = *&v1[v5];
      *&v1[v5] = v9;
      v12 = a1;
      v13 = v9;

      v14 = [v13 navigationItem];
      sub_100795FE8(v14);

      v15 = [v13 navigationItem];
      sub_100796418(v15);

      v16 = *&v1[v5];
      *&v1[v5] = v21;
      v17 = v20;

      a1 = v12;
      ++v7;
    }

    while (v10 != v6);
  }

  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22.receiver = v1;
  v22.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v22, "setViewControllers:", isa);
}

id sub_1007968E4(id result, char a2)
{
  if (result)
  {
    v4 = result;
    if ([result boundaryEdge] == 2)
    {
      v5 = [v2 topViewController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 navigationItem];
        v8 = [v6 parentViewController];
        if (v8)
        {
          v9 = v8;
          while (1)
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            v10 = v9;
            v11 = [v10 navigationItem];

            v9 = [v10 parentViewController];
            v7 = v11;
            if (!v9)
            {
              v9 = v6;
              v7 = v11;
              goto LABEL_11;
            }
          }
        }

        else
        {
          v9 = v6;
        }

LABEL_11:

        v12 = [v7 searchController];
        if (v12)
        {

          v13 = [v2 existingPaletteForEdge:2];
          if (v13)
          {
            v14 = v13;
            if ([v13 isPinned])
            {
              [v2 detachPalette:v14];
            }
          }
        }
      }
    }

    v15.receiver = v2;
    v15.super_class = type metadata accessor for NavigationController();
    return objc_msgSendSuper2(&v15, "attachPalette:isPinned:", v4, a2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100796B34(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Music20NavigationController_existingTopPalette;
  v5 = *&v1[OBJC_IVAR____TtC5Music20NavigationController_existingTopPalette];
  if (!a1)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    v9 = 0;
    goto LABEL_7;
  }

  if (v5)
  {
    sub_100009F78(0, &qword_1011A2B50, _UINavigationControllerPalette_ptr);
    v6 = v5;
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      v9 = *&v2[v4];
LABEL_7:
      *&v2[v4] = 0;
    }
  }

LABEL_8:
  v23.receiver = v2;
  v23.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v23, "detachPalette:", a1);
  v10 = [v2 navigationBar];
  v11 = [v10 subviews];

  sub_100009F78(0, &qword_101181620, UIView_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = sub_100062D50(i, v12);
    }

    else
    {
      v15 = *(v12 + 8 * i + 32);
    }

    v16 = v15;
    if (swift_dynamicCastObjCProtocolConditional() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v17 = v16;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

LABEL_23:

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_35;
  }

  for (j = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v19 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v20 = sub_100062D50(v19, _swiftEmptyArrayStorage);
      }

      else
      {
        if (v19 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v20 = _swiftEmptyArrayStorage[v19 + 4];
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      [v20 removeFromSuperview];

      ++v19;
      if (v22 == j)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:
}

void sub_100796EB8(void *a1, char a2)
{
  v4 = OBJC_IVAR____TtC5Music20NavigationController__pushingViewController;
  v5 = *&v2[OBJC_IVAR____TtC5Music20NavigationController__pushingViewController];
  *&v2[OBJC_IVAR____TtC5Music20NavigationController__pushingViewController] = a1;
  v6 = a1;

  [v6 loadViewIfNeeded];
  v7 = [v6 navigationItem];
  sub_100795FE8(v7);

  v8 = [v6 navigationItem];
  sub_100796418(v8);

  v10.receiver = v2;
  v10.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v10, "pushViewController:animated:", v6, a2 & 1);
  v9 = *&v2[v4];
  *&v2[v4] = 0;
}

void sub_10079709C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music20NavigationController_existingTopPalette);
}

id sub_1007970DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10079715C(void *a1, id a2)
{
  v3 = [a2 horizontalSizeClass];
  v4 = [a1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v3 != v5)
  {
    v6 = [a1 topViewController];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 navigationItem];
      sub_100795FE8(v8);
    }
  }
}

void *sub_100797240(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = (a1 + 32);
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v10 = v5 + 40 * v4++;
    sub_100008FE4(v10, &v20);
    v11 = v21;
    v12 = v22;
    sub_10000954C(&v20, v21);
    v13 = (*(v12 + 48))(v11, v12);
    v14 = *(a1 + 16);
    v15 = v6;
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == v13)
      {
        sub_10000959C(&v20);
        goto LABEL_6;
      }
    }

    sub_100059A8C(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10066C940(0, v7[2] + 1, 1);
      v7 = v23;
    }

    v9 = v7[2];
    v8 = v7[3];
    if (v9 >= v8 >> 1)
    {
      sub_10066C940((v8 > 1), v9 + 1, 1);
      v7 = v23;
    }

    v7[2] = v9 + 1;
    sub_100059A8C(v19, &v7[5 * v9 + 4]);
LABEL_6:
    ;
  }

  while (v4 != v2);
  return v7;
}

void *sub_1007973A8(void *a1)
{
  v2 = v1;
  v86 = a1;
  v3 = type metadata accessor for TVSeason();
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin();
  v66 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TVEpisode();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin();
  v69 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicVideo();
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin();
  v80 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicMovie();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin();
  v83 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Song();
  v73 = *(v11 - 8);
  v74 = v11;
  __chkstk_darwin();
  v72 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Playlist.Folder();
  v76 = *(v13 - 8);
  v77 = v13;
  __chkstk_darwin();
  v75 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Playlist();
  v78 = *(v15 - 8);
  v79 = v15;
  __chkstk_darwin();
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Album();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for GenericMusicItem();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v64 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin();
  v27 = &v63 - v26;
  v28 = *(v23 + 16);
  v65 = v2;
  v28(&v63 - v26, v2, v22, v25);
  v29 = (*(v23 + 88))(v27, v22);
  if (v29 == enum case for GenericMusicItem.album(_:))
  {
    (*(v23 + 96))(v27, v22);
    (*(v19 + 32))(v21, v27, v18);
    v30 = sub_100799E1C(v86);
    (*(v19 + 8))(v21, v18);
    return v30;
  }

  v31 = v29;
  v32 = v86;
  if (v29 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v23 + 96))(v27, v22);
    v34 = v83;
    v33 = v84;
    v35 = v85;
    (*(v84 + 32))(v83, v27, v85);
    v36 = sub_10079A22C(v32);
LABEL_7:
    v30 = v36;
    (*(v33 + 8))(v34, v35);
    return v30;
  }

  if (v29 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v23 + 96))(v27, v22);
    v34 = v80;
    v33 = v81;
    v35 = v82;
    (*(v81 + 32))(v80, v27, v82);
    v36 = sub_10079A5F8(v32);
    goto LABEL_7;
  }

  if (v29 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v23 + 96))(v27, v22);
    v39 = v78;
    v38 = v79;
    (*(v78 + 32))(v17, v27, v79);
    v30 = sub_10079AA48(v32);
    (*(v39 + 8))(v17, v38);
    return v30;
  }

  if (v29 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    (*(v23 + 96))(v27, v22);
    v41 = v75;
    v40 = v76;
    v42 = v77;
    (*(v76 + 32))(v75, v27, v77);
    sub_10010FC20(&qword_101185210, &unk_100EC0C30);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100EBC6B0;
    v43 = type metadata accessor for DragDropToFolder(0);
    *(v30 + 56) = v43;
    *(v30 + 64) = sub_1007A51BC(&qword_10118D3B0, type metadata accessor for DragDropToFolder, &unk_100ED254C);
    v44 = sub_10001C8B8((v30 + 32));
    (*(v40 + 16))(v44, v41, v42);
    v45 = enum case for Playlist.Folder.Item.folder(_:);
    v46 = type metadata accessor for Playlist.Folder.Item();
    (*(*(v46 - 8) + 104))(v44, v45, v46);
    *(v44 + *(v43 + 20)) = 0;
    (*(v40 + 8))(v41, v42);
    return v30;
  }

  v47 = v22;
  if (v29 == enum case for GenericMusicItem.song(_:))
  {
    (*(v23 + 96))(v27, v22);
    v34 = v72;
    v33 = v73;
    v35 = v74;
    (*(v73 + 32))(v72, v27, v74);
    v36 = sub_10079AF28(v32);
    goto LABEL_7;
  }

  if (v29 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    (*(v23 + 96))(v27, v22);
    v34 = v69;
    v33 = v70;
    v35 = v71;
    (*(v70 + 32))(v69, v27, v71);
    v36 = sub_10079B338(v32);
    goto LABEL_7;
  }

  if (v29 == enum case for GenericMusicItem.tvSeason(_:))
  {
    (*(v23 + 96))(v27, v22);
    v49 = v67;
    v48 = v68;
    v50 = v66;
    (*(v67 + 32))(v66, v27, v68);
    sub_10010FC20(&qword_101185210, &unk_100EC0C30);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100EBC6B0;
    v51 = type metadata accessor for DragDropToLibrary(0);
    *(v30 + 56) = v51;
    *(v30 + 64) = sub_1007A51BC(&qword_101185218, type metadata accessor for DragDropToLibrary, &unk_100ED84CC);
    v52 = sub_10001C8B8((v30 + 32));
    (*(v49 + 16))(v52, v50, v48);
    (*(v23 + 104))(v52, v31, v47);
    *(v52 + *(v51 + 20)) = 1;
    (*(v49 + 8))(v50, v48);
  }

  else
  {
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000060E4(v53, qword_1012186C8);
    v54 = v64;
    (v28)(v64, v65, v22);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v87 = v86;
      *v57 = 136446210;
      sub_1007A51BC(&qword_101186698, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v61 = *(v23 + 8);
      v61(v54, v22);
      v62 = sub_1000105AC(v58, v60, &v87);
      v47 = v22;

      *(v57 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v55, v56, "No drop intents provided for GenericMusicItem: %{public}s", v57, 0xCu);
      sub_10000959C(v86);
    }

    else
    {

      v61 = *(v23 + 8);
      v61(v54, v22);
    }

    v61(v27, v47);
    return _swiftEmptyArrayStorage;
  }

  return v30;
}

id sub_100797FA0(void *a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v34 = a2;
  v4 = type metadata accessor for MusicVideo();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin();
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v31 - v7;
  v9 = type metadata accessor for Song();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v31 - v13;
  v15 = type metadata accessor for Track();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin();
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v3, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for Track.song(_:))
  {
    (*(v16 + 96))(v19, v15);
    (*(v10 + 32))(v14, v19, v9);
    v21 = sub_10079AF28(v33);
    v22 = sub_100797240(v34, v21);

    (*(v10 + 16))(v12, v14, v9);
    v23 = sub_10079D968(v22, v12);
    (*(v10 + 8))(v14, v9);
  }

  else
  {
    v25 = v33;
    v24 = v34;
    if (v20 == enum case for Track.musicVideo(_:))
    {
      (*(v16 + 96))(v19, v15);
      v27 = v31;
      v26 = v32;
      (*(v31 + 32))(v8, v19, v32);
      v28 = sub_10079A5F8(v25);
      v29 = sub_100797240(v24, v28);

      (*(v27 + 16))(v6, v8, v26);
      v23 = sub_10079C240(v29, v6);
      (*(v27 + 8))(v8, v26);
    }

    else
    {
      (*(v16 + 8))(v19, v15);
      return 0;
    }
  }

  return v23;
}

id sub_100798374(void *a1, uint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v50 = a2;
  v4 = type metadata accessor for MusicPin();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v47 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Song();
  v36 = *(v37 - 8);
  __chkstk_darwin();
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Playlist();
  v39 = *(v40 - 8);
  __chkstk_darwin();
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicVideo();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin();
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Album();
  v44 = *(v11 - 8);
  v45 = v11;
  __chkstk_darwin();
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicPin.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210, &unk_100EC0C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  v19 = type metadata accessor for DragDropPins(0);
  *(inited + 56) = v19;
  *(inited + 64) = sub_1007A51BC(&qword_1011895F0, type metadata accessor for DragDropPins, &unk_100EC505C);
  v20 = sub_10001C8B8((inited + 32));
  v21 = *(v5 + 16);
  v48 = v4;
  v46 = v21;
  v21(v20, v3, v4);
  *(v20 + *(v19 + 20)) = 4;
  v51 = inited;
  MusicPin.item.getter();
  v22 = (*(v15 + 88))(v17, v14);
  if (v22 == enum case for MusicPin.Item.album(_:))
  {
    (*(v15 + 96))(v17, v14);
    v24 = v44;
    v23 = v45;
    (*(v44 + 32))(v13, v17, v45);
    v25 = sub_100799E1C(v49);
    sub_1001253DC(v25);
    (*(v24 + 8))(v13, v23);
    goto LABEL_12;
  }

  v26 = v49;
  if (v22 == enum case for MusicPin.Item.artist(_:))
  {
    goto LABEL_4;
  }

  if (v22 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v15 + 96))(v17, v14);
    v28 = v41;
    v27 = v42;
    v29 = v43;
    (*(v42 + 32))(v41, v17, v43);
    v30 = sub_10079A5F8(v26);
  }

  else if (v22 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v27 = v39;
    v28 = v38;
    v29 = v40;
    (*(v39 + 32))(v38, v17, v40);
    v30 = sub_10079AA48(v26);
  }

  else
  {
    if (v22 != enum case for MusicPin.Item.song(_:))
    {
LABEL_4:
      (*(v15 + 8))(v17, v14);
      goto LABEL_12;
    }

    (*(v15 + 96))(v17, v14);
    v27 = v36;
    v28 = v35;
    v29 = v37;
    (*(v36 + 32))(v35, v17, v37);
    v30 = sub_10079AF28(v26);
  }

  sub_1001253DC(v30);
  (*(v27 + 8))(v28, v29);
LABEL_12:
  v31 = sub_100797240(v50, v51);

  if (v31[2])
  {
    v32 = v47;
    v46(v47, v3, v48);
    return sub_10079E0DC(v31, v32);
  }

  else
  {

    return 0;
  }
}

id sub_1007989EC(void *a1, uint64_t a2)
{
  v70 = a1;
  v71 = a2;
  v2 = type metadata accessor for UploadedVideo();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin();
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v56 = &v56 - v4;
  v5 = type metadata accessor for MusicMovie();
  v67 = *(v5 - 8);
  v68 = v5;
  __chkstk_darwin();
  v66 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v56 - v7;
  v9 = type metadata accessor for MusicVideo();
  v64 = *(v9 - 8);
  v65 = v9;
  __chkstk_darwin();
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v56 - v11;
  v13 = type metadata accessor for Playlist();
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin();
  v60 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v56 - v15;
  v17 = type metadata accessor for Album();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v56 - v21;
  v23 = type metadata accessor for RecentlyAddedMusicItem();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin();
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v69, v23, v25);
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v24 + 96))(v27, v23);
    (*(v18 + 32))(v22, v27, v17);
    v29 = sub_100799E1C(v70);
    v30 = sub_100797240(v71, v29);

    (*(v18 + 16))(v20, v22, v17);
    v31 = sub_10079BA94(v30, v20);
    (*(v18 + 8))(v22, v17);
  }

  else
  {
    v32 = v70;
    v33 = v71;
    if (v28 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
    {
      (*(v24 + 96))(v27, v23);
      v35 = v67;
      v34 = v68;
      (*(v67 + 32))(v8, v27, v68);
      v36 = sub_10079A22C(v32);
      v37 = sub_100797240(v33, v36);

      v38 = v66;
      (*(v35 + 16))(v66, v8, v34);
      v31 = sub_10079E8E4(v37, v38);
      (*(v35 + 8))(v8, v34);
    }

    else if (v28 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
    {
      (*(v24 + 96))(v27, v23);
      v40 = v64;
      v39 = v65;
      (*(v64 + 32))(v12, v27, v65);
      v41 = sub_10079A5F8(v32);
      v42 = sub_100797240(v33, v41);

      v43 = v63;
      (*(v40 + 16))(v63, v12, v39);
      v31 = sub_10079C240(v42, v43);
      (*(v40 + 8))(v12, v39);
    }

    else if (v28 == enum case for RecentlyAddedMusicItem.playlist(_:))
    {
      (*(v24 + 96))(v27, v23);
      v45 = v61;
      v44 = v62;
      (*(v61 + 32))(v16, v27, v62);
      v46 = sub_10079AA48(v32);
      v47 = sub_100797240(v33, v46);

      v48 = v60;
      (*(v45 + 16))(v60, v16, v44);
      v31 = sub_10079C9B4(v47, v48);
      (*(v45 + 8))(v16, v44);
    }

    else if (v28 == enum case for RecentlyAddedMusicItem.tvSeason(_:) || v28 != enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
      (*(v24 + 8))(v27, v23);
      return 0;
    }

    else
    {
      (*(v24 + 96))(v27, v23);
      v50 = v58;
      v49 = v59;
      v51 = v56;
      (*(v58 + 32))(v56, v27, v59);
      v52 = sub_10079B704(v32);
      v53 = sub_100797240(v33, v52);

      v54 = v57;
      (*(v50 + 16))(v57, v51, v49);
      v31 = sub_10079F0EC(v53, v54);
      (*(v50 + 8))(v51, v49);
    }
  }

  return v31;
}

id sub_1007991E0(void *a1, uint64_t a2)
{
  v78 = a1;
  v79 = a2;
  v2 = type metadata accessor for UploadedVideo();
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin();
  v61 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v59 - v4;
  v5 = type metadata accessor for UploadedAudio();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin();
  v65 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v59 - v7;
  v8 = type metadata accessor for TVEpisode();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin();
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v68 = &v59 - v10;
  v11 = type metadata accessor for MusicMovie();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v77 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v59 - v14;
  v16 = type metadata accessor for MusicVideo();
  v75 = *(v16 - 8);
  v76 = v16;
  __chkstk_darwin();
  v74 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v59 - v18;
  v20 = type metadata accessor for Song();
  v72 = *(v20 - 8);
  v73 = v20;
  __chkstk_darwin();
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v59 - v23;
  v25 = type metadata accessor for Playlist.Entry.InternalItem();
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.Entry.internalItem.getter();
  v29 = (*(v26 + 88))(v28, v25);
  if (v29 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v26 + 96))(v28, v25);
    (*(v12 + 32))(v15, v28, v11);
    v30 = sub_10079A22C(v78);
    v31 = sub_100797240(v79, v30);

    v32 = v77;
    (*(v12 + 16))(v77, v15, v11);
    v33 = sub_10079E8E4(v31, v32);
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v34 = v78;
    v35 = v79;
    if (v29 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
    {
      (*(v26 + 96))(v28, v25);
      v37 = v75;
      v36 = v76;
      (*(v75 + 32))(v19, v28, v76);
      v38 = sub_10079A5F8(v34);
      v39 = sub_100797240(v35, v38);

      v40 = v74;
      (*(v37 + 16))(v74, v19, v36);
      v33 = sub_10079C240(v39, v40);
      (*(v37 + 8))(v19, v36);
    }

    else if (v29 == enum case for Playlist.Entry.InternalItem.song(_:))
    {
      (*(v26 + 96))(v28, v25);
      v42 = v72;
      v41 = v73;
      (*(v72 + 32))(v24, v28, v73);
      v43 = sub_10079AF28(v34);
      v44 = sub_100797240(v35, v43);

      (*(v42 + 16))(v22, v24, v41);
      v33 = sub_10079D968(v44, v22);
      (*(v42 + 8))(v24, v41);
    }

    else
    {
      if (v29 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
      {
        (*(v26 + 96))(v28, v25);
        v46 = v70;
        v45 = v71;
        v47 = v68;
        (*(v70 + 32))(v68, v28, v71);
        v48 = sub_10079B338(v34);
        v49 = sub_100797240(v35, v48);

        v50 = v69;
        (*(v46 + 16))(v69, v47, v45);
        v51 = sub_10079F8F4(v49, v50);
      }

      else if (v29 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
      {
        (*(v26 + 96))(v28, v25);
        v46 = v66;
        v45 = v67;
        v47 = v64;
        (*(v66 + 32))(v64, v28, v67);
        v52 = sub_100799AF0(v34);
        v53 = sub_100797240(v35, v52);

        v54 = v65;
        (*(v46 + 16))(v65, v47, v45);
        v51 = sub_1007A00FC(v53, v54);
      }

      else
      {
        if (v29 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
        {
          (*(v26 + 8))(v28, v25);
          return 0;
        }

        (*(v26 + 96))(v28, v25);
        v46 = v62;
        v45 = v63;
        v47 = v60;
        (*(v62 + 32))(v60, v28, v63);
        v55 = sub_10079B704(v34);
        v56 = sub_100797240(v35, v55);

        v57 = v61;
        (*(v46 + 16))(v61, v47, v45);
        v51 = sub_10079F0EC(v56, v57);
      }

      v33 = v51;
      (*(v46 + 8))(v47, v45);
    }
  }

  return v33;
}

uint64_t sub_100799AF0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UploadedAudio();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenericMusicItem();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210, &unk_100EC0C30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBC6B0;
  v14 = *(v5 + 16);
  v22 = v2;
  v15 = v2;
  v16 = a1;
  v14(v10, v15, v4);
  v17 = *(v8 + 104);
  v25 = v7;
  v17(v10, enum case for GenericMusicItem.uploadedAudio(_:), v7);
  if (!a1)
  {
    sub_100188C90();
    v14(v23, v22, v4);
    sub_1007A51BC(&qword_101193FF8, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
    a1 = MPCPlaybackIntent.init<A>(_:)();
  }

  (*(v8 + 32))(v12, v10, v25);
  *&v12[*(v24 + 20)] = a1;
  v18 = type metadata accessor for DragDropToQueue(0);
  *(v13 + 56) = v18;
  *(v13 + 64) = sub_1007A51BC(&qword_101185228, type metadata accessor for DragDropToQueue, &unk_100EE1F7C);
  v19 = sub_10001C8B8((v13 + 32));
  sub_10079BA30(v12, v19);
  *(v19 + *(v18 + 20)) = 3;
  v20 = v16;
  return v13;
}

uint64_t sub_100799E1C(void *a1)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for Album();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenericMusicItem();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v30 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin();
  v33 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210, &unk_100EC0C30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100EBE260;
  v11 = type metadata accessor for DragDropToLibrary(0);
  *(v10 + 56) = v11;
  *(v10 + 64) = sub_1007A51BC(&qword_101185218, type metadata accessor for DragDropToLibrary, &unk_100ED84CC);
  v12 = sub_10001C8B8((v10 + 32));
  v13 = *(v4 + 16);
  v14 = v1;
  v15 = v3;
  v13(v12, v14, v3);
  v29 = enum case for GenericMusicItem.album(_:);
  v34 = v7;
  v16 = *(v7 + 104);
  v16(v12);
  *(v12 + *(v11 + 20)) = 1;
  *(v10 + 96) = &type metadata for DragDropToPlaylist;
  *(v10 + 104) = sub_100236D7C();
  v17 = swift_allocObject();
  *(v10 + 72) = v17;
  *(v17 + 40) = v15;
  *(v17 + 48) = &protocol witness table for Album;
  *(v17 + 56) = &protocol witness table for Album;
  v18 = sub_10001C8B8((v17 + 16));
  v13(v18, v2, v15);
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 80) = 2;
  v19 = v30;
  v13(v30, v2, v15);
  (v16)(v19, v29, v6);
  v20 = v32;
  if (v32)
  {
    v21 = v32;
  }

  else
  {
    sub_100188C90();
    v13(v28, v2, v15);
    v21 = MPCPlaybackIntent.init<A>(_:)();
  }

  v22 = v33;
  (*(v34 + 32))(v33, v19, v6);
  *(v22 + *(v31 + 20)) = v21;
  v23 = type metadata accessor for DragDropToQueue(0);
  *(v10 + 136) = v23;
  *(v10 + 144) = sub_1007A51BC(&qword_101185228, type metadata accessor for DragDropToQueue, &unk_100EE1F7C);
  v24 = sub_10001C8B8((v10 + 112));
  sub_10079BA30(v22, v24);
  *(v24 + *(v23 + 20)) = 3;
  v25 = v20;
  return v10;
}

uint64_t sub_10079A22C(void *a1)
{
  v27 = a1;
  v2 = type metadata accessor for MusicMovie();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for GenericMusicItem();
  v5 = *(v26 - 8);
  __chkstk_darwin();
  v31 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin();
  v29 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210, &unk_100EC0C30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBDC20;
  v9 = type metadata accessor for DragDropToLibrary(0);
  *(v8 + 56) = v9;
  *(v8 + 64) = sub_1007A51BC(&qword_101185218, type metadata accessor for DragDropToLibrary, &unk_100ED84CC);
  v25 = v8;
  v10 = sub_10001C8B8((v8 + 32));
  v11 = *(v3 + 16);
  v11(v10, v1, v2);
  v12 = enum case for GenericMusicItem.musicMovie(_:);
  v30 = v5;
  v13 = *(v5 + 104);
  v14 = v26;
  v13(v10, enum case for GenericMusicItem.musicMovie(_:), v26);
  *(v10 + *(v9 + 20)) = 1;
  v15 = v31;
  v11(v31, v1, v2);
  v13(v15, v12, v14);
  v16 = v27;
  if (v27)
  {
    v17 = v27;
  }

  else
  {
    sub_100188C90();
    v11(v24, v1, v2);
    sub_1007A51BC(&unk_1011A38E0, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    v17 = MPCPlaybackIntent.init<A>(_:)();
  }

  v18 = v29;
  (*(v30 + 32))(v29, v31, v14);
  *(v18 + *(v28 + 20)) = v17;
  v19 = type metadata accessor for DragDropToQueue(0);
  v20 = v25;
  *(v25 + 96) = v19;
  *(v20 + 104) = sub_1007A51BC(&qword_101185228, type metadata accessor for DragDropToQueue, &unk_100EE1F7C);
  v21 = sub_10001C8B8((v20 + 72));
  sub_10079BA30(v18, v21);
  *(v21 + *(v19 + 20)) = 3;
  v22 = v16;
  return v20;
}

uint64_t sub_10079A5F8(void *a1)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for MusicVideo();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for GenericMusicItem();
  v6 = *(v29 - 8);
  __chkstk_darwin();
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin();
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210, &unk_100EC0C30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBE260;
  v10 = type metadata accessor for DragDropToLibrary(0);
  *(v9 + 56) = v10;
  *(v9 + 64) = sub_1007A51BC(&qword_101185218, type metadata accessor for DragDropToLibrary, &unk_100ED84CC);
  v11 = sub_10001C8B8((v9 + 32));
  v12 = *(v4 + 16);
  v13 = v1;
  v14 = v3;
  v12(v11, v13, v3);
  v28 = enum case for GenericMusicItem.musicVideo(_:);
  v34 = v6;
  v15 = *(v6 + 104);
  v16 = v29;
  v15(v11);
  *(v11 + *(v10 + 20)) = 1;
  *(v9 + 96) = &type metadata for DragDropToPlaylist;
  *(v9 + 104) = sub_100236D7C();
  v17 = swift_allocObject();
  *(v9 + 72) = v17;
  *(v17 + 40) = v3;
  *(v17 + 48) = &protocol witness table for MusicVideo;
  *(v17 + 56) = &protocol witness table for MusicVideo;
  v18 = sub_10001C8B8((v17 + 16));
  v12(v18, v2, v3);
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 80) = 2;
  v19 = v30;
  v12(v30, v2, v3);
  (v15)(v19, v28, v16);
  v20 = v31;
  if (v31)
  {
    v21 = v31;
  }

  else
  {
    sub_100188C90();
    v12(v27, v2, v14);
    sub_1007A51BC(&unk_101193C00, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
    v21 = MPCPlaybackIntent.init<A>(_:)();
  }

  v22 = v33;
  (*(v34 + 32))(v33, v19, v16);
  *(v22 + *(v32 + 20)) = v21;
  v23 = type metadata accessor for DragDropToQueue(0);
  *(v9 + 136) = v23;
  *(v9 + 144) = sub_1007A51BC(&qword_101185228, type metadata accessor for DragDropToQueue, &unk_100EE1F7C);
  v24 = sub_10001C8B8((v9 + 112));
  sub_10079BA30(v22, v24);
  *(v24 + *(v23 + 20)) = 3;
  v25 = v20;
  return v9;
}

uint64_t sub_10079AA48(void *a1)
{
  v36 = a1;
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GenericMusicItem();
  v5 = *(v33 - 8);
  __chkstk_darwin();
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin();
  v37 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210, &unk_100EC0C30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBEF50;
  v9 = type metadata accessor for DragDropToFolder(0);
  *(v8 + 56) = v9;
  *(v8 + 64) = sub_1007A51BC(&qword_10118D3B0, type metadata accessor for DragDropToFolder, &unk_100ED254C);
  v10 = sub_10001C8B8((v8 + 32));
  v11 = *(v3 + 16);
  v11(v10, v1, v2);
  v39 = v3 + 16;
  v12 = enum case for Playlist.Folder.Item.playlist(_:);
  v13 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v13 - 8) + 104))(v10, v12, v13);
  *(v10 + *(v9 + 20)) = 0;
  v14 = type metadata accessor for DragDropToLibrary(0);
  *(v8 + 96) = v14;
  *(v8 + 104) = sub_1007A51BC(&qword_101185218, type metadata accessor for DragDropToLibrary, &unk_100ED84CC);
  v15 = sub_10001C8B8((v8 + 72));
  v16 = v2;
  v11(v15, v1, v2);
  v17 = enum case for GenericMusicItem.playlist(_:);
  v38 = v5;
  v18 = *(v5 + 104);
  v19 = v33;
  v18(v15, enum case for GenericMusicItem.playlist(_:), v33);
  *(v15 + *(v14 + 20)) = 1;
  *(v8 + 136) = &type metadata for DragDropToPlaylist;
  *(v8 + 144) = sub_100236D7C();
  v20 = swift_allocObject();
  *(v8 + 112) = v20;
  *(v20 + 40) = v16;
  *(v20 + 48) = &protocol witness table for Playlist;
  *(v20 + 56) = &protocol witness table for Playlist;
  v21 = sub_10001C8B8((v20 + 16));
  v11(v21, v1, v16);
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 80) = 2;
  v22 = v34;
  v31 = v16;
  v11(v34, v1, v16);
  v18(v22, v17, v19);
  v23 = v36;
  if (v36)
  {
    v24 = v36;
  }

  else
  {
    sub_100188C90();
    v11(v32, v1, v31);
    v24 = MPCPlaybackIntent.init<A>(_:)();
  }

  v25 = v37;
  (*(v38 + 32))(v37, v22, v19);
  *(v25 + *(v35 + 20)) = v24;
  v26 = type metadata accessor for DragDropToQueue(0);
  *(v8 + 176) = v26;
  *(v8 + 184) = sub_1007A51BC(&qword_101185228, type metadata accessor for DragDropToQueue, &unk_100EE1F7C);
  v27 = sub_10001C8B8((v8 + 152));
  sub_10079BA30(v25, v27);
  *(v27 + *(v26 + 20)) = 3;
  v28 = v23;
  return v8;
}

uint64_t sub_10079AF28(void *a1)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for Song();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenericMusicItem();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v30 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin();
  v33 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210, &unk_100EC0C30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100EBE260;
  v11 = type metadata accessor for DragDropToLibrary(0);
  *(v10 + 56) = v11;
  *(v10 + 64) = sub_1007A51BC(&qword_101185218, type metadata accessor for DragDropToLibrary, &unk_100ED84CC);
  v12 = sub_10001C8B8((v10 + 32));
  v13 = *(v4 + 16);
  v14 = v1;
  v15 = v3;
  v13(v12, v14, v3);
  v29 = enum case for GenericMusicItem.song(_:);
  v34 = v7;
  v16 = *(v7 + 104);
  v16(v12);
  *(v12 + *(v11 + 20)) = 1;
  *(v10 + 96) = &type metadata for DragDropToPlaylist;
  *(v10 + 104) = sub_100236D7C();
  v17 = swift_allocObject();
  *(v10 + 72) = v17;
  *(v17 + 40) = v15;
  *(v17 + 48) = &protocol witness table for Song;
  *(v17 + 56) = &protocol witness table for Song;
  v18 = sub_10001C8B8((v17 + 16));
  v13(v18, v2, v15);
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 80) = 2;
  v19 = v30;
  v13(v30, v2, v15);
  (v16)(v19, v29, v6);
  v20 = v32;
  if (v32)
  {
    v21 = v32;
  }

  else
  {
    sub_100188C90();
    v13(v28, v2, v15);
    v21 = MPCPlaybackIntent.init<A>(_:)();
  }

  v22 = v33;
  (*(v34 + 32))(v33, v19, v6);
  *(v22 + *(v31 + 20)) = v21;
  v23 = type metadata accessor for DragDropToQueue(0);
  *(v10 + 136) = v23;
  *(v10 + 144) = sub_1007A51BC(&qword_101185228, type metadata accessor for DragDropToQueue, &unk_100EE1F7C);
  v24 = sub_10001C8B8((v10 + 112));
  sub_10079BA30(v22, v24);
  *(v24 + *(v23 + 20)) = 3;
  v25 = v20;
  return v10;
}

uint64_t sub_10079B338(void *a1)
{
  v27 = a1;
  v2 = type metadata accessor for TVEpisode();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for GenericMusicItem();
  v5 = *(v26 - 8);
  __chkstk_darwin();
  v31 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin();
  v29 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210, &unk_100EC0C30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBDC20;
  v9 = type metadata accessor for DragDropToLibrary(0);
  *(v8 + 56) = v9;
  *(v8 + 64) = sub_1007A51BC(&qword_101185218, type metadata accessor for DragDropToLibrary, &unk_100ED84CC);
  v25 = v8;
  v10 = sub_10001C8B8((v8 + 32));
  v11 = *(v3 + 16);
  v11(v10, v1, v2);
  v12 = enum case for GenericMusicItem.tvEpisode(_:);
  v30 = v5;
  v13 = *(v5 + 104);
  v14 = v26;
  v13(v10, enum case for GenericMusicItem.tvEpisode(_:), v26);
  *(v10 + *(v9 + 20)) = 1;
  v15 = v31;
  v11(v31, v1, v2);
  v13(v15, v12, v14);
  v16 = v27;
  if (v27)
  {
    v17 = v27;
  }

  else
  {
    sub_100188C90();
    v11(v24, v1, v2);
    sub_1007A51BC(&qword_101199720, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    v17 = MPCPlaybackIntent.init<A>(_:)();
  }

  v18 = v29;
  (*(v30 + 32))(v29, v31, v14);
  *(v18 + *(v28 + 20)) = v17;
  v19 = type metadata accessor for DragDropToQueue(0);
  v20 = v25;
  *(v25 + 96) = v19;
  *(v20 + 104) = sub_1007A51BC(&qword_101185228, type metadata accessor for DragDropToQueue, &unk_100EE1F7C);
  v21 = sub_10001C8B8((v20 + 72));
  sub_10079BA30(v18, v21);
  *(v21 + *(v19 + 20)) = 3;
  v22 = v16;
  return v20;
}

uint64_t sub_10079B704(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UploadedVideo();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenericMusicItem();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210, &unk_100EC0C30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBC6B0;
  v14 = *(v5 + 16);
  v22 = v2;
  v15 = v2;
  v16 = a1;
  v14(v10, v15, v4);
  v17 = *(v8 + 104);
  v25 = v7;
  v17(v10, enum case for GenericMusicItem.uploadedVideo(_:), v7);
  if (!a1)
  {
    sub_100188C90();
    v14(v23, v22, v4);
    sub_1007A51BC(&qword_101181148, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
    a1 = MPCPlaybackIntent.init<A>(_:)();
  }

  (*(v8 + 32))(v12, v10, v25);
  *&v12[*(v24 + 20)] = a1;
  v18 = type metadata accessor for DragDropToQueue(0);
  *(v13 + 56) = v18;
  *(v13 + 64) = sub_1007A51BC(&qword_101185228, type metadata accessor for DragDropToQueue, &unk_100EE1F7C);
  v19 = sub_10001C8B8((v13 + 32));
  sub_10079BA30(v12, v19);
  *(v19 + *(v18 + 20)) = 3;
  v20 = v16;
  return v13;
}

uint64_t sub_10079BA30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragDropToQueue.Origin(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10079BA94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Album();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v61[3] = v4;
  v61[4] = &protocol witness table for Album;
  v10 = sub_10001C8B8(v61);
  v11 = *(v5 + 32);
  v55 = v10;
  v11(v10, a2, v4);
  v12 = [objc_allocWithZone(NSItemProvider) init];
  v13 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v12];
  sub_10031FDC4(a1);
  sub_100008FE4(v61, aBlock);
  v14 = v13;
  sub_10031FF04(aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_100008FE4(v61, v60);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&unk_1011814E0, &unk_100EBF9B0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v58, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
      sub_100008FE4(aBlock, v60);
      sub_100008FE4(v61, v58);
      type metadata accessor for MainActor();
      v17 = v12;
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      sub_100059A8C(v60, (v19 + 4));
      v19[9] = v17;
      sub_100059A8C(v58, (v19 + 10));
      sub_1001F4CB8(0, 0, v9, &unk_100EE2878, v19);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000060E4(v35, qword_1012186C8);
    sub_100008FE4(v61, v60);
    v21 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v36))
    {

      sub_10000959C(v60);
      goto LABEL_14;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v12;
    v39 = v38;
    v56 = v38;
    *v37 = 136446210;
    sub_100008FE4(v60, v58);
    v40 = String.init<A>(describing:)();
    v53 = v14;
    v41 = v15;
    v42 = v5;
    v43 = v4;
    v44 = v7;
    v46 = v45;
    sub_10000959C(v60);
    v47 = sub_1000105AC(v40, v46, &v56);
    v7 = v44;
    v4 = v43;
    v5 = v42;
    v15 = v41;
    v14 = v53;

    *(v37 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v21, v36, "Could not request share URL for item=%{public}s.", v37, 0xCu);
    sub_10000959C(v39);
    v12 = v54;

LABEL_12:

    goto LABEL_14;
  }

  v59 = 0;
  memset(v58, 0, sizeof(v58));
  sub_1000095E8(v58, &qword_10118E0A8, "\\k\t");
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000060E4(v20, qword_1012186C8);
  sub_100008FE4(v61, aBlock);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v21, v22))
  {
    goto LABEL_12;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v54 = v12;
  v25 = v24;
  *&v58[0] = v24;
  *v23 = 136446210;
  sub_100008FE4(aBlock, v60);
  v26 = String.init<A>(describing:)();
  v53 = v14;
  v27 = v15;
  v28 = v5;
  v29 = v4;
  v30 = v7;
  v31 = v26;
  v33 = v32;
  sub_10000959C(aBlock);
  v34 = sub_1000105AC(v31, v33, v58);

  *(v23 + 4) = v34;
  v7 = v30;
  v4 = v29;
  v5 = v28;
  v15 = v27;
  v14 = v53;
  _os_log_impl(&_mh_execute_header, v21, v22, "Item=%{public}s doesn't conform to ShareableMusicItem.", v23, 0xCu);
  sub_10000959C(v25);
  v12 = v54;

LABEL_15:
  (*(v5 + 16))(v7, v55, v4);

  v48 = sub_1007A172C(v7, sub_1007A5250, v15, &type metadata accessor for Album, &protocol witness table for Album, &unk_1010BF578, &unk_100EE2880);
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF518;
  v50 = _Block_copy(aBlock);
  v51 = v48;

  [v14 setPreviewProvider:v50];

  _Block_release(v50);

  sub_10000959C(v61);
  return v14;
}

id sub_10079C240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicVideo();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v61[3] = v4;
  v61[4] = &protocol witness table for MusicVideo;
  v10 = sub_10001C8B8(v61);
  v11 = *(v5 + 32);
  v55 = v10;
  v11(v10, a2, v4);
  v12 = [objc_allocWithZone(NSItemProvider) init];
  v13 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v12];
  sub_10031FDC4(a1);
  sub_100008FE4(v61, aBlock);
  v14 = v13;
  sub_10031FF04(aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_100008FE4(v61, v60);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&unk_1011814E0, &unk_100EBF9B0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v58, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
      sub_100008FE4(aBlock, v60);
      sub_100008FE4(v61, v58);
      type metadata accessor for MainActor();
      v17 = v12;
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      sub_100059A8C(v60, (v19 + 4));
      v19[9] = v17;
      sub_100059A8C(v58, (v19 + 10));
      sub_1001F4CB8(0, 0, v9, &unk_100EE2828, v19);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000060E4(v35, qword_1012186C8);
    sub_100008FE4(v61, v60);
    v21 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v36))
    {

      sub_10000959C(v60);
      goto LABEL_14;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v12;
    v39 = v38;
    v56 = v38;
    *v37 = 136446210;
    sub_100008FE4(v60, v58);
    v40 = String.init<A>(describing:)();
    v53 = v14;
    v41 = v15;
    v42 = v5;
    v43 = v4;
    v44 = v7;
    v46 = v45;
    sub_10000959C(v60);
    v47 = sub_1000105AC(v40, v46, &v56);
    v7 = v44;
    v4 = v43;
    v5 = v42;
    v15 = v41;
    v14 = v53;

    *(v37 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v21, v36, "Could not request share URL for item=%{public}s.", v37, 0xCu);
    sub_10000959C(v39);
    v12 = v54;

LABEL_12:

    goto LABEL_14;
  }

  v59 = 0;
  memset(v58, 0, sizeof(v58));
  sub_1000095E8(v58, &qword_10118E0A8, "\\k\t");
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000060E4(v20, qword_1012186C8);
  sub_100008FE4(v61, aBlock);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v21, v22))
  {
    goto LABEL_12;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v54 = v12;
  v25 = v24;
  *&v58[0] = v24;
  *v23 = 136446210;
  sub_100008FE4(aBlock, v60);
  v26 = String.init<A>(describing:)();
  v53 = v14;
  v27 = v15;
  v28 = v5;
  v29 = v4;
  v30 = v7;
  v31 = v26;
  v33 = v32;
  sub_10000959C(aBlock);
  v34 = sub_1000105AC(v31, v33, v58);

  *(v23 + 4) = v34;
  v7 = v30;
  v4 = v29;
  v5 = v28;
  v15 = v27;
  v14 = v53;
  _os_log_impl(&_mh_execute_header, v21, v22, "Item=%{public}s doesn't conform to ShareableMusicItem.", v23, 0xCu);
  sub_10000959C(v25);
  v12 = v54;

LABEL_15:
  (*(v5 + 16))(v7, v55, v4);

  v48 = sub_1007A0904(v7, sub_1007A5250, v15);
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF130;
  v50 = _Block_copy(aBlock);
  v51 = v48;

  [v14 setPreviewProvider:v50];

  _Block_release(v50);

  sub_10000959C(v61);
  return v14;
}

id sub_10079C9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v61[3] = v4;
  v61[4] = &protocol witness table for Playlist;
  v10 = sub_10001C8B8(v61);
  v11 = *(v5 + 32);
  v55 = v10;
  v11(v10, a2, v4);
  v12 = [objc_allocWithZone(NSItemProvider) init];
  v13 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v12];
  sub_10031FDC4(a1);
  sub_100008FE4(v61, aBlock);
  v14 = v13;
  sub_10031FF04(aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_100008FE4(v61, v60);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&unk_1011814E0, &unk_100EBF9B0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v58, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
      sub_100008FE4(aBlock, v60);
      sub_100008FE4(v61, v58);
      type metadata accessor for MainActor();
      v17 = v12;
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      sub_100059A8C(v60, (v19 + 4));
      v19[9] = v17;
      sub_100059A8C(v58, (v19 + 10));
      sub_1001F4CB8(0, 0, v9, &unk_100EE2888, v19);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000060E4(v35, qword_1012186C8);
    sub_100008FE4(v61, v60);
    v21 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v36))
    {

      sub_10000959C(v60);
      goto LABEL_14;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v12;
    v39 = v38;
    v56 = v38;
    *v37 = 136446210;
    sub_100008FE4(v60, v58);
    v40 = String.init<A>(describing:)();
    v53 = v14;
    v41 = v15;
    v42 = v5;
    v43 = v4;
    v44 = v7;
    v46 = v45;
    sub_10000959C(v60);
    v47 = sub_1000105AC(v40, v46, &v56);
    v7 = v44;
    v4 = v43;
    v5 = v42;
    v15 = v41;
    v14 = v53;

    *(v37 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v21, v36, "Could not request share URL for item=%{public}s.", v37, 0xCu);
    sub_10000959C(v39);
    v12 = v54;

LABEL_12:

    goto LABEL_14;
  }

  v59 = 0;
  memset(v58, 0, sizeof(v58));
  sub_1000095E8(v58, &qword_10118E0A8, "\\k\t");
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000060E4(v20, qword_1012186C8);
  sub_100008FE4(v61, aBlock);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v21, v22))
  {
    goto LABEL_12;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v54 = v12;
  v25 = v24;
  *&v58[0] = v24;
  *v23 = 136446210;
  sub_100008FE4(aBlock, v60);
  v26 = String.init<A>(describing:)();
  v53 = v14;
  v27 = v15;
  v28 = v5;
  v29 = v4;
  v30 = v7;
  v31 = v26;
  v33 = v32;
  sub_10000959C(aBlock);
  v34 = sub_1000105AC(v31, v33, v58);

  *(v23 + 4) = v34;
  v7 = v30;
  v4 = v29;
  v5 = v28;
  v15 = v27;
  v14 = v53;
  _os_log_impl(&_mh_execute_header, v21, v22, "Item=%{public}s doesn't conform to ShareableMusicItem.", v23, 0xCu);
  sub_10000959C(v25);
  v12 = v54;

LABEL_15:
  (*(v5 + 16))(v7, v55, v4);

  v48 = sub_1007A172C(v7, sub_1007A5250, v15, &type metadata accessor for Playlist, &protocol witness table for Playlist, &unk_1010BF640, &unk_100EE2890);
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF5E0;
  v50 = _Block_copy(aBlock);
  v51 = v48;

  [v14 setPreviewProvider:v50];

  _Block_release(v50);

  sub_10000959C(v61);
  return v14;
}

id sub_10079D160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v61[3] = v4;
  v61[4] = sub_1007A51BC(&qword_10118C1A0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  v10 = sub_10001C8B8(v61);
  v11 = *(v5 + 32);
  v55 = v10;
  v11(v10, a2, v4);
  v12 = [objc_allocWithZone(NSItemProvider) init];
  v13 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v12];
  sub_10031FDC4(a1);
  sub_100008FE4(v61, aBlock);
  v14 = v13;
  sub_10031FF04(aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_100008FE4(v61, v60);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&unk_1011814E0, &unk_100EBF9B0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v58, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
      sub_100008FE4(aBlock, v60);
      sub_100008FE4(v61, v58);
      type metadata accessor for MainActor();
      v17 = v12;
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      sub_100059A8C(v60, (v19 + 4));
      v19[9] = v17;
      sub_100059A8C(v58, (v19 + 10));
      sub_1001F4CB8(0, 0, v9, &unk_100EE2898, v19);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000060E4(v35, qword_1012186C8);
    sub_100008FE4(v61, v60);
    v21 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v36))
    {

      sub_10000959C(v60);
      goto LABEL_14;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v12;
    v39 = v38;
    v56 = v38;
    *v37 = 136446210;
    sub_100008FE4(v60, v58);
    v40 = String.init<A>(describing:)();
    v53 = v14;
    v41 = v15;
    v42 = v5;
    v43 = v4;
    v44 = v7;
    v46 = v45;
    sub_10000959C(v60);
    v47 = sub_1000105AC(v40, v46, &v56);
    v7 = v44;
    v4 = v43;
    v5 = v42;
    v15 = v41;
    v14 = v53;

    *(v37 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v21, v36, "Could not request share URL for item=%{public}s.", v37, 0xCu);
    sub_10000959C(v39);
    v12 = v54;

LABEL_12:

    goto LABEL_14;
  }

  v59 = 0;
  memset(v58, 0, sizeof(v58));
  sub_1000095E8(v58, &qword_10118E0A8, "\\k\t");
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000060E4(v20, qword_1012186C8);
  sub_100008FE4(v61, aBlock);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v21, v22))
  {
    goto LABEL_12;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v54 = v12;
  v25 = v24;
  *&v58[0] = v24;
  *v23 = 136446210;
  sub_100008FE4(aBlock, v60);
  v26 = String.init<A>(describing:)();
  v53 = v14;
  v27 = v15;
  v28 = v5;
  v29 = v4;
  v30 = v7;
  v31 = v26;
  v33 = v32;
  sub_10000959C(aBlock);
  v34 = sub_1000105AC(v31, v33, v58);

  *(v23 + 4) = v34;
  v7 = v30;
  v4 = v29;
  v5 = v28;
  v15 = v27;
  v14 = v53;
  _os_log_impl(&_mh_execute_header, v21, v22, "Item=%{public}s doesn't conform to ShareableMusicItem.", v23, 0xCu);
  sub_10000959C(v25);
  v12 = v54;

LABEL_15:
  (*(v5 + 16))(v7, v55, v4);

  v48 = sub_1007A3340(v7, sub_1007A5250, v15, &type metadata accessor for Playlist.Folder, &qword_10118C1A0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder, &unk_1010BF708, &unk_100EE28A0);
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF6A8;
  v50 = _Block_copy(aBlock);
  v51 = v48;

  [v14 setPreviewProvider:v50];

  _Block_release(v50);

  sub_10000959C(v61);
  return v14;
}

id sub_10079D968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v61[3] = v4;
  v61[4] = &protocol witness table for Song;
  v10 = sub_10001C8B8(v61);
  v11 = *(v5 + 32);
  v55 = v10;
  v11(v10, a2, v4);
  v12 = [objc_allocWithZone(NSItemProvider) init];
  v13 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v12];
  sub_10031FDC4(a1);
  sub_100008FE4(v61, aBlock);
  v14 = v13;
  sub_10031FF04(aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_100008FE4(v61, v60);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&unk_1011814E0, &unk_100EBF9B0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v58, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
      sub_100008FE4(aBlock, v60);
      sub_100008FE4(v61, v58);
      type metadata accessor for MainActor();
      v17 = v12;
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      sub_100059A8C(v60, (v19 + 4));
      v19[9] = v17;
      sub_100059A8C(v58, (v19 + 10));
      sub_1001F4CB8(0, 0, v9, &unk_100EE27D8, v19);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000060E4(v35, qword_1012186C8);
    sub_100008FE4(v61, v60);
    v21 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v36))
    {

      sub_10000959C(v60);
      goto LABEL_14;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v12;
    v39 = v38;
    v56 = v38;
    *v37 = 136446210;
    sub_100008FE4(v60, v58);
    v40 = String.init<A>(describing:)();
    v53 = v14;
    v41 = v15;
    v42 = v5;
    v43 = v4;
    v44 = v7;
    v46 = v45;
    sub_10000959C(v60);
    v47 = sub_1000105AC(v40, v46, &v56);
    v7 = v44;
    v4 = v43;
    v5 = v42;
    v15 = v41;
    v14 = v53;

    *(v37 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v21, v36, "Could not request share URL for item=%{public}s.", v37, 0xCu);
    sub_10000959C(v39);
    v12 = v54;

LABEL_12:

    goto LABEL_14;
  }

  v59 = 0;
  memset(v58, 0, sizeof(v58));
  sub_1000095E8(v58, &qword_10118E0A8, "\\k\t");
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000060E4(v20, qword_1012186C8);
  sub_100008FE4(v61, aBlock);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v21, v22))
  {
    goto LABEL_12;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v54 = v12;
  v25 = v24;
  *&v58[0] = v24;
  *v23 = 136446210;
  sub_100008FE4(aBlock, v60);
  v26 = String.init<A>(describing:)();
  v53 = v14;
  v27 = v15;
  v28 = v5;
  v29 = v4;
  v30 = v7;
  v31 = v26;
  v33 = v32;
  sub_10000959C(aBlock);
  v34 = sub_1000105AC(v31, v33, v58);

  *(v23 + 4) = v34;
  v7 = v30;
  v4 = v29;
  v5 = v28;
  v15 = v27;
  v14 = v53;
  _os_log_impl(&_mh_execute_header, v21, v22, "Item=%{public}s doesn't conform to ShareableMusicItem.", v23, 0xCu);
  sub_10000959C(v25);
  v12 = v54;

LABEL_15:
  (*(v5 + 16))(v7, v55, v4);

  v48 = sub_1007A250C(v7, sub_1007A4B84, v15);
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  aBlock[4] = sub_1007A4B8C;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF068;
  v50 = _Block_copy(aBlock);
  v51 = v48;

  [v14 setPreviewProvider:v50];

  _Block_release(v50);

  sub_10000959C(v61);
  return v14;
}

id sub_10079E0DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPin();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v61[3] = v4;
  v61[4] = sub_1007A51BC(&qword_101197100, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  v10 = sub_10001C8B8(v61);
  v11 = *(v5 + 32);
  v55 = v10;
  v11(v10, a2, v4);
  v12 = [objc_allocWithZone(NSItemProvider) init];
  v13 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v12];
  sub_10031FDC4(a1);
  sub_100008FE4(v61, aBlock);
  v14 = v13;
  sub_10031FF04(aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_100008FE4(v61, v60);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&unk_1011814E0, &unk_100EBF9B0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v58, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
      sub_100008FE4(aBlock, v60);
      sub_100008FE4(v61, v58);
      type metadata accessor for MainActor();
      v17 = v12;
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      sub_100059A8C(v60, (v19 + 4));
      v19[9] = v17;
      sub_100059A8C(v58, (v19 + 10));
      sub_1001F4CB8(0, 0, v9, &unk_100EE28A8, v19);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000060E4(v35, qword_1012186C8);
    sub_100008FE4(v61, v60);
    v21 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v36))
    {

      sub_10000959C(v60);
      goto LABEL_14;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v12;
    v39 = v38;
    v56 = v38;
    *v37 = 136446210;
    sub_100008FE4(v60, v58);
    v40 = String.init<A>(describing:)();
    v53 = v14;
    v41 = v15;
    v42 = v5;
    v43 = v4;
    v44 = v7;
    v46 = v45;
    sub_10000959C(v60);
    v47 = sub_1000105AC(v40, v46, &v56);
    v7 = v44;
    v4 = v43;
    v5 = v42;
    v15 = v41;
    v14 = v53;

    *(v37 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v21, v36, "Could not request share URL for item=%{public}s.", v37, 0xCu);
    sub_10000959C(v39);
    v12 = v54;

LABEL_12:

    goto LABEL_14;
  }

  v59 = 0;
  memset(v58, 0, sizeof(v58));
  sub_1000095E8(v58, &qword_10118E0A8, "\\k\t");
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000060E4(v20, qword_1012186C8);
  sub_100008FE4(v61, aBlock);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v21, v22))
  {
    goto LABEL_12;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v54 = v12;
  v25 = v24;
  *&v58[0] = v24;
  *v23 = 136446210;
  sub_100008FE4(aBlock, v60);
  v26 = String.init<A>(describing:)();
  v53 = v14;
  v27 = v15;
  v28 = v5;
  v29 = v4;
  v30 = v7;
  v31 = v26;
  v33 = v32;
  sub_10000959C(aBlock);
  v34 = sub_1000105AC(v31, v33, v58);

  *(v23 + 4) = v34;
  v7 = v30;
  v4 = v29;
  v5 = v28;
  v15 = v27;
  v14 = v53;
  _os_log_impl(&_mh_execute_header, v21, v22, "Item=%{public}s doesn't conform to ShareableMusicItem.", v23, 0xCu);
  sub_10000959C(v25);
  v12 = v54;

LABEL_15:
  (*(v5 + 16))(v7, v55, v4);

  v48 = sub_1007A3340(v7, sub_1007A5250, v15, &type metadata accessor for MusicPin, &qword_101197100, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin, &unk_1010BF7D0, &unk_100EE28B0);
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF770;
  v50 = _Block_copy(aBlock);
  v51 = v48;

  [v14 setPreviewProvider:v50];

  _Block_release(v50);

  sub_10000959C(v61);
  return v14;
}

id sub_10079E8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicMovie();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v61[3] = v4;
  v61[4] = sub_1007A51BC(&unk_10118AB60, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v10 = sub_10001C8B8(v61);
  v11 = *(v5 + 32);
  v55 = v10;
  v11(v10, a2, v4);
  v12 = [objc_allocWithZone(NSItemProvider) init];
  v13 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v12];
  sub_10031FDC4(a1);
  sub_100008FE4(v61, aBlock);
  v14 = v13;
  sub_10031FF04(aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_100008FE4(v61, v60);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&unk_1011814E0, &unk_100EBF9B0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v58, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
      sub_100008FE4(aBlock, v60);
      sub_100008FE4(v61, v58);
      type metadata accessor for MainActor();
      v17 = v12;
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      sub_100059A8C(v60, (v19 + 4));
      v19[9] = v17;
      sub_100059A8C(v58, (v19 + 10));
      sub_1001F4CB8(0, 0, v9, &unk_100EE2838, v19);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000060E4(v35, qword_1012186C8);
    sub_100008FE4(v61, v60);
    v21 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v36))
    {

      sub_10000959C(v60);
      goto LABEL_14;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v12;
    v39 = v38;
    v56 = v38;
    *v37 = 136446210;
    sub_100008FE4(v60, v58);
    v40 = String.init<A>(describing:)();
    v53 = v14;
    v41 = v15;
    v42 = v5;
    v43 = v4;
    v44 = v7;
    v46 = v45;
    sub_10000959C(v60);
    v47 = sub_1000105AC(v40, v46, &v56);
    v7 = v44;
    v4 = v43;
    v5 = v42;
    v15 = v41;
    v14 = v53;

    *(v37 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v21, v36, "Could not request share URL for item=%{public}s.", v37, 0xCu);
    sub_10000959C(v39);
    v12 = v54;

LABEL_12:

    goto LABEL_14;
  }

  v59 = 0;
  memset(v58, 0, sizeof(v58));
  sub_1000095E8(v58, &qword_10118E0A8, "\\k\t");
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000060E4(v20, qword_1012186C8);
  sub_100008FE4(v61, aBlock);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v21, v22))
  {
    goto LABEL_12;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v54 = v12;
  v25 = v24;
  *&v58[0] = v24;
  *v23 = 136446210;
  sub_100008FE4(aBlock, v60);
  v26 = String.init<A>(describing:)();
  v53 = v14;
  v27 = v15;
  v28 = v5;
  v29 = v4;
  v30 = v7;
  v31 = v26;
  v33 = v32;
  sub_10000959C(aBlock);
  v34 = sub_1000105AC(v31, v33, v58);

  *(v23 + 4) = v34;
  v7 = v30;
  v4 = v29;
  v5 = v28;
  v15 = v27;
  v14 = v53;
  _os_log_impl(&_mh_execute_header, v21, v22, "Item=%{public}s doesn't conform to ShareableMusicItem.", v23, 0xCu);
  sub_10000959C(v25);
  v12 = v54;

LABEL_15:
  (*(v5 + 16))(v7, v55, v4);

  v48 = sub_1007A3340(v7, sub_1007A5250, v15, &type metadata accessor for MusicMovie, &unk_10118AB60, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie, &unk_1010BF258, &unk_100EE2840);
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF1F8;
  v50 = _Block_copy(aBlock);
  v51 = v48;

  [v14 setPreviewProvider:v50];

  _Block_release(v50);

  sub_10000959C(v61);
  return v14;
}

id sub_10079F0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadedVideo();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v61[3] = v4;
  v61[4] = sub_1007A51BC(&unk_10118AB40, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  v10 = sub_10001C8B8(v61);
  v11 = *(v5 + 32);
  v55 = v10;
  v11(v10, a2, v4);
  v12 = [objc_allocWithZone(NSItemProvider) init];
  v13 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v12];
  sub_10031FDC4(a1);
  sub_100008FE4(v61, aBlock);
  v14 = v13;
  sub_10031FF04(aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_100008FE4(v61, v60);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&unk_1011814E0, &unk_100EBF9B0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v58, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
      sub_100008FE4(aBlock, v60);
      sub_100008FE4(v61, v58);
      type metadata accessor for MainActor();
      v17 = v12;
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      sub_100059A8C(v60, (v19 + 4));
      v19[9] = v17;
      sub_100059A8C(v58, (v19 + 10));
      sub_1001F4CB8(0, 0, v9, &unk_100EE2868, v19);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000060E4(v35, qword_1012186C8);
    sub_100008FE4(v61, v60);
    v21 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v36))
    {

      sub_10000959C(v60);
      goto LABEL_14;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v12;
    v39 = v38;
    v56 = v38;
    *v37 = 136446210;
    sub_100008FE4(v60, v58);
    v40 = String.init<A>(describing:)();
    v53 = v14;
    v41 = v15;
    v42 = v5;
    v43 = v4;
    v44 = v7;
    v46 = v45;
    sub_10000959C(v60);
    v47 = sub_1000105AC(v40, v46, &v56);
    v7 = v44;
    v4 = v43;
    v5 = v42;
    v15 = v41;
    v14 = v53;

    *(v37 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v21, v36, "Could not request share URL for item=%{public}s.", v37, 0xCu);
    sub_10000959C(v39);
    v12 = v54;

LABEL_12:

    goto LABEL_14;
  }

  v59 = 0;
  memset(v58, 0, sizeof(v58));
  sub_1000095E8(v58, &qword_10118E0A8, "\\k\t");
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000060E4(v20, qword_1012186C8);
  sub_100008FE4(v61, aBlock);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v21, v22))
  {
    goto LABEL_12;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v54 = v12;
  v25 = v24;
  *&v58[0] = v24;
  *v23 = 136446210;
  sub_100008FE4(aBlock, v60);
  v26 = String.init<A>(describing:)();
  v53 = v14;
  v27 = v15;
  v28 = v5;
  v29 = v4;
  v30 = v7;
  v31 = v26;
  v33 = v32;
  sub_10000959C(aBlock);
  v34 = sub_1000105AC(v31, v33, v58);

  *(v23 + 4) = v34;
  v7 = v30;
  v4 = v29;
  v5 = v28;
  v15 = v27;
  v14 = v53;
  _os_log_impl(&_mh_execute_header, v21, v22, "Item=%{public}s doesn't conform to ShareableMusicItem.", v23, 0xCu);
  sub_10000959C(v25);
  v12 = v54;

LABEL_15:
  (*(v5 + 16))(v7, v55, v4);

  v48 = sub_1007A3340(v7, sub_1007A5250, v15, &type metadata accessor for UploadedVideo, &unk_10118AB40, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo, &unk_1010BF4B0, &unk_100EE2870);
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF450;
  v50 = _Block_copy(aBlock);
  v51 = v48;

  [v14 setPreviewProvider:v50];

  _Block_release(v50);

  sub_10000959C(v61);
  return v14;
}

id sub_10079F8F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVEpisode();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v61[3] = v4;
  v61[4] = sub_1007A51BC(&unk_1011996E0, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v10 = sub_10001C8B8(v61);
  v11 = *(v5 + 32);
  v55 = v10;
  v11(v10, a2, v4);
  v12 = [objc_allocWithZone(NSItemProvider) init];
  v13 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v12];
  sub_10031FDC4(a1);
  sub_100008FE4(v61, aBlock);
  v14 = v13;
  sub_10031FF04(aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_100008FE4(v61, v60);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&unk_1011814E0, &unk_100EBF9B0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v58, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
      sub_100008FE4(aBlock, v60);
      sub_100008FE4(v61, v58);
      type metadata accessor for MainActor();
      v17 = v12;
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      sub_100059A8C(v60, (v19 + 4));
      v19[9] = v17;
      sub_100059A8C(v58, (v19 + 10));
      sub_1001F4CB8(0, 0, v9, &unk_100EE2848, v19);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000060E4(v35, qword_1012186C8);
    sub_100008FE4(v61, v60);
    v21 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v36))
    {

      sub_10000959C(v60);
      goto LABEL_14;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v12;
    v39 = v38;
    v56 = v38;
    *v37 = 136446210;
    sub_100008FE4(v60, v58);
    v40 = String.init<A>(describing:)();
    v53 = v14;
    v41 = v15;
    v42 = v5;
    v43 = v4;
    v44 = v7;
    v46 = v45;
    sub_10000959C(v60);
    v47 = sub_1000105AC(v40, v46, &v56);
    v7 = v44;
    v4 = v43;
    v5 = v42;
    v15 = v41;
    v14 = v53;

    *(v37 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v21, v36, "Could not request share URL for item=%{public}s.", v37, 0xCu);
    sub_10000959C(v39);
    v12 = v54;

LABEL_12:

    goto LABEL_14;
  }

  v59 = 0;
  memset(v58, 0, sizeof(v58));
  sub_1000095E8(v58, &qword_10118E0A8, "\\k\t");
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000060E4(v20, qword_1012186C8);
  sub_100008FE4(v61, aBlock);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v21, v22))
  {
    goto LABEL_12;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v54 = v12;
  v25 = v24;
  *&v58[0] = v24;
  *v23 = 136446210;
  sub_100008FE4(aBlock, v60);
  v26 = String.init<A>(describing:)();
  v53 = v14;
  v27 = v15;
  v28 = v5;
  v29 = v4;
  v30 = v7;
  v31 = v26;
  v33 = v32;
  sub_10000959C(aBlock);
  v34 = sub_1000105AC(v31, v33, v58);

  *(v23 + 4) = v34;
  v7 = v30;
  v4 = v29;
  v5 = v28;
  v15 = v27;
  v14 = v53;
  _os_log_impl(&_mh_execute_header, v21, v22, "Item=%{public}s doesn't conform to ShareableMusicItem.", v23, 0xCu);
  sub_10000959C(v25);
  v12 = v54;

LABEL_15:
  (*(v5 + 16))(v7, v55, v4);

  v48 = sub_1007A3340(v7, sub_1007A5250, v15, &type metadata accessor for TVEpisode, &unk_1011996E0, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode, &unk_1010BF320, &unk_100EE2850);
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF2C0;
  v50 = _Block_copy(aBlock);
  v51 = v48;

  [v14 setPreviewProvider:v50];

  _Block_release(v50);

  sub_10000959C(v61);
  return v14;
}

id sub_1007A00FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadedAudio();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v61[3] = v4;
  v61[4] = sub_1007A51BC(&qword_101181A58, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  v10 = sub_10001C8B8(v61);
  v11 = *(v5 + 32);
  v55 = v10;
  v11(v10, a2, v4);
  v12 = [objc_allocWithZone(NSItemProvider) init];
  v13 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v12];
  sub_10031FDC4(a1);
  sub_100008FE4(v61, aBlock);
  v14 = v13;
  sub_10031FF04(aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_100008FE4(v61, v60);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&unk_1011814E0, &unk_100EBF9B0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v58, aBlock);
    if (sub_10017AF54(aBlock))
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
      sub_100008FE4(aBlock, v60);
      sub_100008FE4(v61, v58);
      type metadata accessor for MainActor();
      v17 = v12;
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      sub_100059A8C(v60, (v19 + 4));
      v19[9] = v17;
      sub_100059A8C(v58, (v19 + 10));
      sub_1001F4CB8(0, 0, v9, &unk_100EE2858, v19);

LABEL_14:
      sub_10000959C(aBlock);
      goto LABEL_15;
    }

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000060E4(v35, qword_1012186C8);
    sub_100008FE4(v61, v60);
    v21 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v36))
    {

      sub_10000959C(v60);
      goto LABEL_14;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v12;
    v39 = v38;
    v56 = v38;
    *v37 = 136446210;
    sub_100008FE4(v60, v58);
    v40 = String.init<A>(describing:)();
    v53 = v14;
    v41 = v15;
    v42 = v5;
    v43 = v4;
    v44 = v7;
    v46 = v45;
    sub_10000959C(v60);
    v47 = sub_1000105AC(v40, v46, &v56);
    v7 = v44;
    v4 = v43;
    v5 = v42;
    v15 = v41;
    v14 = v53;

    *(v37 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v21, v36, "Could not request share URL for item=%{public}s.", v37, 0xCu);
    sub_10000959C(v39);
    v12 = v54;

LABEL_12:

    goto LABEL_14;
  }

  v59 = 0;
  memset(v58, 0, sizeof(v58));
  sub_1000095E8(v58, &qword_10118E0A8, "\\k\t");
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000060E4(v20, qword_1012186C8);
  sub_100008FE4(v61, aBlock);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v21, v22))
  {
    goto LABEL_12;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v54 = v12;
  v25 = v24;
  *&v58[0] = v24;
  *v23 = 136446210;
  sub_100008FE4(aBlock, v60);
  v26 = String.init<A>(describing:)();
  v53 = v14;
  v27 = v15;
  v28 = v5;
  v29 = v4;
  v30 = v7;
  v31 = v26;
  v33 = v32;
  sub_10000959C(aBlock);
  v34 = sub_1000105AC(v31, v33, v58);

  *(v23 + 4) = v34;
  v7 = v30;
  v4 = v29;
  v5 = v28;
  v15 = v27;
  v14 = v53;
  _os_log_impl(&_mh_execute_header, v21, v22, "Item=%{public}s doesn't conform to ShareableMusicItem.", v23, 0xCu);
  sub_10000959C(v25);
  v12 = v54;

LABEL_15:
  (*(v5 + 16))(v7, v55, v4);

  v48 = sub_1007A3340(v7, sub_1007A5250, v15, &type metadata accessor for UploadedAudio, &qword_101181A58, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio, &unk_1010BF3E8, &unk_100EE2860);
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  aBlock[4] = sub_1007A5228;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100747E6C;
  aBlock[3] = &unk_1010BF388;
  v50 = _Block_copy(aBlock);
  v51 = v48;

  [v14 setPreviewProvider:v50];

  _Block_release(v50);

  sub_10000959C(v61);
  return v14;
}

id sub_1007A0904(char *a1, uint64_t a2, uint64_t a3)
{
  v98 = a3;
  v97 = a2;
  v4 = type metadata accessor for MusicVideo();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v83 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = v81 - v7;
  v92 = type metadata accessor for Song();
  v87 = *(v92 - 8);
  __chkstk_darwin();
  v85 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = v81 - v9;
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v99 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = v81 - v11;
  v12 = type metadata accessor for ContextualPreview.Artwork(0);
  __chkstk_darwin();
  v14 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v81 - v15;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v18 = v81 - v17;
  v93 = *(sub_10010FC20(&unk_101188920, &qword_100EBCC50) - 8);
  __chkstk_darwin();
  v95 = v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = v81 - v20;
  v94 = v22;
  __chkstk_darwin();
  v24 = v81 - v23;
  v105[3] = v4;
  v105[4] = &protocol witness table for MusicVideo;
  v25 = sub_10001C8B8(v105);
  v84 = v5;
  v27 = *(v5 + 32);
  v26 = v5 + 32;
  v82 = v27;
  v27(v25, a1, v4);
  sub_100008FE4(v105, v101);
  v28 = sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&qword_1011A2B58, &qword_100EE27E8);
  v89 = v28;
  v29 = swift_dynamicCast();
  v96 = v24;
  v88 = v4;
  v90 = v21;
  if ((v29 & 1) == 0)
  {
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    sub_1000095E8(&v102, &qword_1011A2B60, &qword_100EE27F0);
    goto LABEL_6;
  }

  v31 = *(&v103 + 1);
  v30 = v104;
  sub_10000954C(&v102, *(&v103 + 1));
  v32 = (*(v30 + 8))(v31, v30);
  sub_10000959C(&v102);
  if (!v32)
  {
LABEL_6:
    v37 = v12;
    v38 = type metadata accessor for Artwork();
    v39 = 1;
    (*(*(v38 - 8) + 56))(v24, 1, 1, v38);
    v32 = 0;
    v40 = 1.0;
    goto LABEL_9;
  }

  v81[0] = v26;
  swift_getKeyPath();
  *&v102 = v32;
  v33 = sub_1007A51BC(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);

  v81[1] = v33;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v34 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_1007A4D84(v32 + v34, v16);

  sub_1000089F8(v16, v18, &unk_10118A5E0, &unk_100EBCD90);
  sub_1007A4DE8(v16, type metadata accessor for ContextualPreview.Artwork);
  v35 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v35 - 8) + 48))(v18, 1, v35) == 1)
  {
    sub_1000095E8(v18, &unk_10118A5E0, &unk_100EBCD90);
    v36 = type metadata accessor for Artwork();
    (*(*(v36 - 8) + 56))(v24, 1, 1, v36);
  }

  else
  {
    v41 = type metadata accessor for Artwork();
    v42 = *(v41 - 8);
    (*(v42 + 16))(v24, v18, v41);
    sub_1007A4DE8(v18, type metadata accessor for ArtworkImage.ViewModel);
    (*(v42 + 56))(v24, 0, 1, v41);
  }

  swift_getKeyPath();
  *&v102 = v32;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_1007A4D84(v32 + v43, v14);

  v37 = v12;
  v40 = *&v14[*(v12 + 32)];
  sub_1007A4DE8(v14, type metadata accessor for ContextualPreview.Artwork);
  v39 = 0;
LABEL_9:
  v44 = type metadata accessor for UIView.Corner();
  v45 = *(*(v44 - 8) + 56);
  v45(v100, 1, 1, v44);
  if ((v39 & 1) == 0)
  {
    swift_getKeyPath();
    *&v102 = v32;
    sub_1007A51BC(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v46 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
    swift_beginAccess();
    sub_1007A4D84(v32 + v46, v14);

    v47 = &v14[*(v37 + 36)];
    v48 = *v47;
    v49 = *(v47 + 1);
    v50 = v47[16];
    sub_1007A4DE8(v14, type metadata accessor for ContextualPreview.Artwork);
    if (static Corner.__derived_enum_equals(_:_:)(v48, v49, v50, 0, 0, 2))
    {
      v51 = v99;
      static UIView.Corner.rounded.getter();
      v52 = v100;
      sub_1000095E8(v100, &qword_101183A90, &unk_100EBE340);
      v45(v51, 0, 1, v44);
      sub_10003D17C(v51, v52, &qword_101183A90, &unk_100EBE340);
    }
  }

  sub_100008FE4(v105, &v102);
  v53 = v91;
  v54 = v92;
  if (swift_dynamicCast())
  {
    v55 = v87;
    v56 = v85;
    (*(v87 + 32))(v85, v53, v54);
    v91 = Song.title.getter();
    v89 = v57;
    v58 = v96;
    v59 = v90;
    if (qword_10117F250 != -1)
    {
      swift_once();
    }

    v60 = *&qword_1012186B0;
    (*(v55 + 8))(v56, v54);
LABEL_20:
    v66 = v40 * v60;
    goto LABEL_24;
  }

  v61 = v86;
  v62 = v88;
  v63 = swift_dynamicCast();
  v58 = v96;
  v59 = v90;
  if (v63)
  {
    v64 = v83;
    v82(v83, v61, v62);
    v91 = MusicVideo.title.getter();
    v89 = v65;
    if (qword_10117F250 != -1)
    {
      swift_once();
    }

    v60 = *&qword_1012186B0;
    (*(v84 + 8))(v64, v62);
    goto LABEL_20;
  }

  if (qword_10117F240 != -1)
  {
    swift_once();
  }

  v91 = 0;
  v89 = 0;
  v66 = *&qword_1012186A0;
  v60 = 1.0 / v40 * *&qword_1012186A0;
LABEL_24:
  sub_10000959C(&v102);
  sub_1000089F8(v58, v59, &unk_101188920, &qword_100EBCC50);
  v67 = type metadata accessor for Artwork();
  v68 = *(v67 - 8);
  if ((*(v68 + 48))(v59, 1, v67) == 1)
  {
    sub_1000095E8(v59, &unk_101188920, &qword_100EBCC50);
LABEL_28:
    v70 = 0;
    goto LABEL_29;
  }

  v69 = Artwork.backgroundColor.getter();
  (*(v68 + 8))(v59, v67);
  if (!v69)
  {
    goto LABEL_28;
  }

  v70 = [objc_allocWithZone(UIColor) initWithCGColor:v69];

LABEL_29:
  v71 = v95;
  sub_1000089F8(v58, v95, &unk_101188920, &qword_100EBCC50);
  sub_100008FE4(v105, &v102);
  v72 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v73 = (v94 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  sub_10003D17C(v71, v74 + v72, &unk_101188920, &qword_100EBCC50);
  sub_100059A8C(&v102, v74 + v73);
  v75 = (v74 + ((v73 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v75 = v66;
  v75[1] = v60;
  v76 = v100;
  v77 = v99;
  sub_1000089F8(v100, v99, &qword_101183A90, &unk_100EBE340);
  v78 = objc_allocWithZone(type metadata accessor for DragPreview());
  v79 = sub_100179BDC(v91, v89, v77, v70, &unk_100EE2830, v74, v97, v98, v40);

  sub_1000095E8(v76, &qword_101183A90, &unk_100EBE340);
  sub_1000095E8(v58, &unk_101188920, &qword_100EBCC50);
  sub_10000959C(v105);
  return v79;
}

id sub_1007A172C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, __n128), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v97 = a7;
  v94 = a6;
  v96 = a3;
  v95 = a2;
  v86 = type metadata accessor for MusicVideo();
  v82 = *(v86 - 8);
  __chkstk_darwin();
  v81 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = v80 - v11;
  v89 = type metadata accessor for Song();
  v85 = *(v89 - 8);
  __chkstk_darwin();
  v83 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = v80 - v13;
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v98 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = v80 - v15;
  v90 = type metadata accessor for ContextualPreview.Artwork(0);
  __chkstk_darwin();
  v17 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = v80 - v18;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v21 = v80 - v20;
  v91 = *(sub_10010FC20(&unk_101188920, &qword_100EBCC50) - 8);
  v22 = *(v91 + 64);
  __chkstk_darwin();
  v92 = v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = v80 - v23;
  v25 = __chkstk_darwin();
  v27 = v80 - v26;
  v28 = a4(0, v25);
  v104[3] = v28;
  v104[4] = a5;
  v29 = sub_10001C8B8(v104);
  (*(*(v28 - 8) + 32))(v29, a1, v28);
  sub_100008FE4(v104, v100);
  v30 = sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&qword_1011A2B58, &qword_100EE27E8);
  v31 = swift_dynamicCast();
  v93 = v27;
  v87 = v30;
  if ((v31 & 1) == 0)
  {
    v103 = 0;
    v101 = 0u;
    v102 = 0u;
    sub_1000095E8(&v101, &qword_1011A2B60, &qword_100EE27F0);
    goto LABEL_6;
  }

  v32 = *(&v102 + 1);
  v33 = v103;
  sub_10000954C(&v101, *(&v102 + 1));
  v34 = (*(v33 + 8))(v32, v33);
  sub_10000959C(&v101);
  if (!v34)
  {
LABEL_6:
    v39 = type metadata accessor for Artwork();
    v40 = 1;
    (*(*(v39 - 8) + 56))(v27, 1, 1, v39);
    v34 = 0;
    v41 = 1.0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  *&v101 = v34;
  v35 = sub_1007A51BC(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);

  v80[1] = v35;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_1007A4D84(v34 + v36, v19);

  sub_1000089F8(v19, v21, &unk_10118A5E0, &unk_100EBCD90);
  sub_1007A4DE8(v19, type metadata accessor for ContextualPreview.Artwork);
  v37 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v37 - 8) + 48))(v21, 1, v37) == 1)
  {
    sub_1000095E8(v21, &unk_10118A5E0, &unk_100EBCD90);
    v38 = type metadata accessor for Artwork();
    (*(*(v38 - 8) + 56))(v27, 1, 1, v38);
  }

  else
  {
    v42 = type metadata accessor for Artwork();
    v43 = *(v42 - 8);
    (*(v43 + 16))(v27, v21, v42);
    sub_1007A4DE8(v21, type metadata accessor for ArtworkImage.ViewModel);
    (*(v43 + 56))(v27, 0, 1, v42);
  }

  swift_getKeyPath();
  *&v101 = v34;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_1007A4D84(v34 + v44, v17);

  v41 = *&v17[*(v90 + 32)];
  sub_1007A4DE8(v17, type metadata accessor for ContextualPreview.Artwork);
  v40 = 0;
LABEL_9:
  v45 = type metadata accessor for UIView.Corner();
  v46 = *(*(v45 - 8) + 56);
  v46(v99, 1, 1, v45);
  if ((v40 & 1) == 0)
  {
    swift_getKeyPath();
    *&v101 = v34;
    sub_1007A51BC(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v47 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
    swift_beginAccess();
    sub_1007A4D84(v34 + v47, v17);

    v48 = &v17[*(v90 + 36)];
    v49 = *v48;
    v50 = *(v48 + 1);
    v51 = v48[16];
    sub_1007A4DE8(v17, type metadata accessor for ContextualPreview.Artwork);
    if (static Corner.__derived_enum_equals(_:_:)(v49, v50, v51, 0, 0, 2))
    {
      v52 = v98;
      static UIView.Corner.rounded.getter();
      v53 = v99;
      sub_1000095E8(v99, &qword_101183A90, &unk_100EBE340);
      v46(v52, 0, 1, v45);
      sub_10003D17C(v52, v53, &qword_101183A90, &unk_100EBE340);
    }
  }

  sub_100008FE4(v104, &v101);
  v54 = v88;
  v55 = v89;
  v56 = swift_dynamicCast();
  v90 = v34;
  if (v56)
  {
    v57 = v85;
    v58 = v83;
    (*(v85 + 32))(v83, v54, v55);
    v88 = Song.title.getter();
    v87 = v59;
    v60 = v93;
    if (qword_10117F250 == -1)
    {
LABEL_14:
      v61 = *&qword_1012186B0;
      (*(v57 + 8))(v58, v55);
      v62 = v41 * v61;
      goto LABEL_21;
    }

LABEL_17:
    swift_once();
    goto LABEL_14;
  }

  v63 = v84;
  v55 = v86;
  v64 = swift_dynamicCast();
  v60 = v93;
  if (v64)
  {
    v57 = v82;
    v58 = v81;
    (*(v82 + 32))(v81, v63, v55);
    v88 = MusicVideo.title.getter();
    v87 = v65;
    if (qword_10117F250 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (qword_10117F240 != -1)
  {
    swift_once();
  }

  v88 = 0;
  v87 = 0;
  v62 = *&qword_1012186A0;
  v61 = 1.0 / v41 * *&qword_1012186A0;
LABEL_21:
  sub_10000959C(&v101);
  sub_1000089F8(v60, v24, &unk_101188920, &qword_100EBCC50);
  v66 = type metadata accessor for Artwork();
  v67 = *(v66 - 8);
  if ((*(v67 + 48))(v24, 1, v66) == 1)
  {
    sub_1000095E8(v24, &unk_101188920, &qword_100EBCC50);
LABEL_25:
    v69 = 0;
    goto LABEL_26;
  }

  v68 = Artwork.backgroundColor.getter();
  (*(v67 + 8))(v24, v66);
  if (!v68)
  {
    goto LABEL_25;
  }

  v69 = [objc_allocWithZone(UIColor) initWithCGColor:v68];

LABEL_26:
  v70 = v92;
  sub_1000089F8(v60, v92, &unk_101188920, &qword_100EBCC50);
  sub_100008FE4(v104, &v101);
  v71 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v72 = (v22 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  sub_10003D17C(v70, v73 + v71, &unk_101188920, &qword_100EBCC50);
  sub_100059A8C(&v101, v73 + v72);
  v74 = (v73 + ((v72 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v74 = v62;
  v74[1] = v61;
  v75 = v99;
  v76 = v98;
  sub_1000089F8(v99, v98, &qword_101183A90, &unk_100EBE340);
  v77 = objc_allocWithZone(type metadata accessor for DragPreview());
  v78 = sub_100179BDC(v88, v87, v76, v69, v97, v73, v95, v96, v41);

  sub_1000095E8(v75, &qword_101183A90, &unk_100EBE340);
  sub_1000095E8(v60, &unk_101188920, &qword_100EBCC50);
  sub_10000959C(v104);
  return v78;
}

id sub_1007A250C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = a3;
  v95 = a2;
  v4 = type metadata accessor for MusicVideo();
  v80 = *(v4 - 8);
  __chkstk_darwin();
  v79 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v78 - v6;
  v7 = type metadata accessor for Song();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v82 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v78 - v10;
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v97 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v98 = &v78 - v12;
  v86 = type metadata accessor for ContextualPreview.Artwork(0);
  __chkstk_darwin();
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v78 - v15;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v18 = &v78 - v17;
  v91 = *(sub_10010FC20(&unk_101188920, &qword_100EBCC50) - 8);
  __chkstk_darwin();
  v93 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = &v78 - v20;
  v92 = v21;
  __chkstk_darwin();
  v23 = &v78 - v22;
  v103[3] = v7;
  v103[4] = &protocol witness table for Song;
  v24 = sub_10001C8B8(v103);
  v84 = v8;
  v81 = *(v8 + 32);
  v81(v24, a1, v7);
  sub_100008FE4(v103, v99);
  v25 = sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&qword_1011A2B58, &qword_100EE27E8);
  v87 = v25;
  v26 = swift_dynamicCast();
  v94 = v23;
  v85 = v4;
  if ((v26 & 1) == 0)
  {
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    sub_1000095E8(&v100, &qword_1011A2B60, &qword_100EE27F0);
    goto LABEL_6;
  }

  v28 = *(&v101 + 1);
  v27 = v102;
  sub_10000954C(&v100, *(&v101 + 1));
  v29 = (*(v27 + 8))(v28, v27);
  sub_10000959C(&v100);
  if (!v29)
  {
LABEL_6:
    v34 = type metadata accessor for Artwork();
    v35 = 1;
    (*(*(v34 - 8) + 56))(v23, 1, 1, v34);
    v29 = 0;
    v36 = 1.0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  *&v100 = v29;
  v30 = sub_1007A51BC(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);

  v90 = v30;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_1007A4D84(v29 + v31, v16);

  sub_1000089F8(v16, v18, &unk_10118A5E0, &unk_100EBCD90);
  sub_1007A4DE8(v16, type metadata accessor for ContextualPreview.Artwork);
  v32 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v32 - 8) + 48))(v18, 1, v32) == 1)
  {
    sub_1000095E8(v18, &unk_10118A5E0, &unk_100EBCD90);
    v33 = type metadata accessor for Artwork();
    (*(*(v33 - 8) + 56))(v23, 1, 1, v33);
  }

  else
  {
    v37 = type metadata accessor for Artwork();
    v38 = *(v37 - 8);
    (*(v38 + 16))(v23, v18, v37);
    sub_1007A4DE8(v18, type metadata accessor for ArtworkImage.ViewModel);
    (*(v38 + 56))(v23, 0, 1, v37);
  }

  swift_getKeyPath();
  *&v100 = v29;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_1007A4D84(v29 + v39, v14);

  v36 = *&v14[*(v86 + 32)];
  sub_1007A4DE8(v14, type metadata accessor for ContextualPreview.Artwork);
  v35 = 0;
LABEL_9:
  v40 = type metadata accessor for UIView.Corner();
  v41 = *(*(v40 - 8) + 56);
  v41(v98, 1, 1, v40);
  if ((v35 & 1) == 0)
  {
    swift_getKeyPath();
    *&v100 = v29;
    sub_1007A51BC(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
    swift_beginAccess();
    sub_1007A4D84(v29 + v42, v14);

    v43 = &v14[*(v86 + 36)];
    v44 = *v43;
    v45 = *(v43 + 1);
    v46 = v43[16];
    sub_1007A4DE8(v14, type metadata accessor for ContextualPreview.Artwork);
    if (static Corner.__derived_enum_equals(_:_:)(v44, v45, v46, 0, 0, 2))
    {
      v47 = v97;
      static UIView.Corner.rounded.getter();
      v48 = v98;
      sub_1000095E8(v98, &qword_101183A90, &unk_100EBE340);
      v41(v47, 0, 1, v40);
      sub_10003D17C(v47, v48, &qword_101183A90, &unk_100EBE340);
    }
  }

  sub_100008FE4(v103, &v100);
  v49 = v88;
  if (swift_dynamicCast())
  {
    v50 = v82;
    v81(v82, v49, v7);
    v88 = Song.title.getter();
    v87 = v51;
    v52 = v94;
    if (qword_10117F250 != -1)
    {
      swift_once();
    }

    v53 = *&qword_1012186B0;
    (*(v84 + 8))(v50, v7);
    v54 = v36 * v53;
    v55 = v89;
  }

  else
  {
    v56 = v83;
    v57 = v85;
    v58 = swift_dynamicCast();
    v52 = v94;
    if (v58)
    {
      v59 = v80;
      v60 = v79;
      (*(v80 + 32))(v79, v56, v57);
      v88 = MusicVideo.title.getter();
      v87 = v61;
      v55 = v89;
      if (qword_10117F250 != -1)
      {
        swift_once();
      }

      v53 = *&qword_1012186B0;
      (*(v59 + 8))(v60, v57);
      v54 = v36 * v53;
    }

    else
    {
      v55 = v89;
      if (qword_10117F240 != -1)
      {
        swift_once();
      }

      v88 = 0;
      v87 = 0;
      v54 = *&qword_1012186A0;
      v53 = 1.0 / v36 * *&qword_1012186A0;
    }
  }

  sub_10000959C(&v100);
  sub_1000089F8(v52, v55, &unk_101188920, &qword_100EBCC50);
  v62 = type metadata accessor for Artwork();
  v63 = *(v62 - 8);
  v64 = (*(v63 + 48))(v55, 1, v62);
  v90 = v29;
  if (v64 == 1)
  {
    sub_1000095E8(v55, &unk_101188920, &qword_100EBCC50);
LABEL_27:
    v66 = 0;
    goto LABEL_28;
  }

  v65 = Artwork.backgroundColor.getter();
  (*(v63 + 8))(v55, v62);
  if (!v65)
  {
    goto LABEL_27;
  }

  v66 = [objc_allocWithZone(UIColor) initWithCGColor:v65];

LABEL_28:
  v67 = v93;
  sub_1000089F8(v52, v93, &unk_101188920, &qword_100EBCC50);
  sub_100008FE4(v103, &v100);
  v68 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v69 = v52;
  v70 = (v92 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  sub_10003D17C(v67, v71 + v68, &unk_101188920, &qword_100EBCC50);
  sub_100059A8C(&v100, v71 + v70);
  v72 = (v71 + ((v70 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v72 = v54;
  v72[1] = v53;
  v73 = v98;
  v74 = v97;
  sub_1000089F8(v98, v97, &qword_101183A90, &unk_100EBE340);
  v75 = objc_allocWithZone(type metadata accessor for DragPreview());
  v76 = sub_100179BDC(v88, v87, v74, v66, &unk_100EE27F8, v71, v95, v96, v36);

  sub_1000095E8(v73, &qword_101183A90, &unk_100EBE340);
  sub_1000095E8(v69, &unk_101188920, &qword_100EBCC50);
  sub_10000959C(v103);
  return v76;
}

id sub_1007A3340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, __n128), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v94 = a8;
  v96 = a3;
  v95 = a2;
  v87 = type metadata accessor for MusicVideo();
  v83 = *(v87 - 8);
  __chkstk_darwin();
  v82 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = &v81 - v15;
  v91 = type metadata accessor for Song();
  v86 = *(v91 - 8);
  __chkstk_darwin();
  v84 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v90 = &v81 - v17;
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v97 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v98 = &v81 - v19;
  v88 = type metadata accessor for ContextualPreview.Artwork(0);
  __chkstk_darwin();
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v81 - v22;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v25 = &v81 - v24;
  v92 = *(sub_10010FC20(&unk_101188920, &qword_100EBCC50) - 8);
  v26 = *(v92 + 64);
  __chkstk_darwin();
  v93 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = &v81 - v27;
  v29 = __chkstk_darwin();
  v99 = &v81 - v30;
  v31 = a4(0, v29);
  v104[3] = v31;
  v104[4] = sub_1007A51BC(a5, a6, a7);
  v32 = sub_10001C8B8(v104);
  (*(*(v31 - 8) + 32))(v32, a1, v31);
  sub_100008FE4(v104, v100);
  v33 = sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&qword_1011A2B58, &qword_100EE27E8);
  v34 = swift_dynamicCast();
  v89 = v33;
  if ((v34 & 1) == 0)
  {
    v103 = 0;
    v101 = 0u;
    v102 = 0u;
    sub_1000095E8(&v101, &qword_1011A2B60, &qword_100EE27F0);
    goto LABEL_6;
  }

  v35 = *(&v102 + 1);
  v36 = v103;
  sub_10000954C(&v101, *(&v102 + 1));
  v37 = (*(v36 + 8))(v35, v36);
  sub_10000959C(&v101);
  if (!v37)
  {
LABEL_6:
    v41 = type metadata accessor for Artwork();
    v42 = 1;
    (*(*(v41 - 8) + 56))(v99, 1, 1, v41);
    v37 = 0;
    v43 = 1.0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  *&v101 = v37;
  sub_1007A51BC(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_1007A4D84(v37 + v38, v23);

  sub_1000089F8(v23, v25, &unk_10118A5E0, &unk_100EBCD90);
  sub_1007A4DE8(v23, type metadata accessor for ContextualPreview.Artwork);
  v39 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v39 - 8) + 48))(v25, 1, v39) == 1)
  {
    sub_1000095E8(v25, &unk_10118A5E0, &unk_100EBCD90);
    v40 = type metadata accessor for Artwork();
    (*(*(v40 - 8) + 56))(v99, 1, 1, v40);
  }

  else
  {
    v44 = type metadata accessor for Artwork();
    v45 = *(v44 - 8);
    v46 = v99;
    (*(v45 + 16))(v99, v25, v44);
    sub_1007A4DE8(v25, type metadata accessor for ArtworkImage.ViewModel);
    (*(v45 + 56))(v46, 0, 1, v44);
  }

  swift_getKeyPath();
  *&v101 = v37;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_1007A4D84(v37 + v47, v21);

  v43 = *&v21[*(v88 + 32)];
  sub_1007A4DE8(v21, type metadata accessor for ContextualPreview.Artwork);
  v42 = 0;
LABEL_9:
  v48 = type metadata accessor for UIView.Corner();
  v49 = *(*(v48 - 8) + 56);
  v49(v98, 1, 1, v48);
  if ((v42 & 1) == 0)
  {
    swift_getKeyPath();
    *&v101 = v37;
    sub_1007A51BC(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v50 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
    swift_beginAccess();
    sub_1007A4D84(v37 + v50, v21);

    v51 = &v21[*(v88 + 36)];
    v52 = *v51;
    v53 = *(v51 + 1);
    v54 = v51[16];
    sub_1007A4DE8(v21, type metadata accessor for ContextualPreview.Artwork);
    if (static Corner.__derived_enum_equals(_:_:)(v52, v53, v54, 0, 0, 2))
    {
      v55 = v97;
      static UIView.Corner.rounded.getter();
      v56 = v98;
      sub_1000095E8(v98, &qword_101183A90, &unk_100EBE340);
      v49(v55, 0, 1, v48);
      sub_10003D17C(v55, v56, &qword_101183A90, &unk_100EBE340);
    }
  }

  v88 = a9;
  sub_100008FE4(v104, &v101);
  v57 = v90;
  v58 = v91;
  if (swift_dynamicCast())
  {
    v59 = v86;
    v60 = v84;
    (*(v86 + 32))(v84, v57, v58);
    v61 = Song.title.getter();
LABEL_16:
    v90 = v61;
    v89 = v62;
    if (qword_10117F250 != -1)
    {
      swift_once();
    }

    v64 = *&qword_1012186B0;
    (*(v59 + 8))(v60, v58);
    v65 = v43 * v64;
    goto LABEL_22;
  }

  v63 = v85;
  v58 = v87;
  if (swift_dynamicCast())
  {
    v59 = v83;
    v60 = v82;
    (*(v83 + 32))(v82, v63, v58);
    v61 = MusicVideo.title.getter();
    goto LABEL_16;
  }

  if (qword_10117F240 != -1)
  {
    swift_once();
  }

  v90 = 0;
  v89 = 0;
  v65 = *&qword_1012186A0;
  v64 = 1.0 / v43 * *&qword_1012186A0;
LABEL_22:
  sub_10000959C(&v101);
  sub_1000089F8(v99, v28, &unk_101188920, &qword_100EBCC50);
  v66 = type metadata accessor for Artwork();
  v67 = *(v66 - 8);
  if ((*(v67 + 48))(v28, 1, v66) == 1)
  {
    sub_1000095E8(v28, &unk_101188920, &qword_100EBCC50);
LABEL_26:
    v69 = 0;
    goto LABEL_27;
  }

  v68 = Artwork.backgroundColor.getter();
  (*(v67 + 8))(v28, v66);
  if (!v68)
  {
    goto LABEL_26;
  }

  v69 = [objc_allocWithZone(UIColor) initWithCGColor:v68];

LABEL_27:
  v70 = v99;
  v71 = v93;
  sub_1000089F8(v99, v93, &unk_101188920, &qword_100EBCC50);
  sub_100008FE4(v104, &v101);
  v72 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v73 = (v26 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  sub_10003D17C(v71, v74 + v72, &unk_101188920, &qword_100EBCC50);
  sub_100059A8C(&v101, v74 + v73);
  v75 = (v74 + ((v73 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v75 = v65;
  v75[1] = v64;
  v76 = v98;
  v77 = v97;
  sub_1000089F8(v98, v97, &qword_101183A90, &unk_100EBE340);
  v78 = objc_allocWithZone(type metadata accessor for DragPreview());
  v79 = sub_100179BDC(v90, v89, v77, v69, v88, v74, v95, v96, v43);

  sub_1000095E8(v76, &qword_101183A90, &unk_100EBE340);
  sub_1000095E8(v70, &unk_101188920, &qword_100EBCC50);
  sub_10000959C(v104);
  return v79;
}

uint64_t sub_1007A411C(uint64_t a1)
{
  v41 = type metadata accessor for MusicPin();
  v38 = *(v41 - 8);
  __chkstk_darwin();
  v40 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Curator();
  v39 = *(v44 - 8);
  __chkstk_darwin();
  v43 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Composer();
  v42 = *(v47 - 8);
  __chkstk_darwin();
  v46 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Artist();
  v45 = *(v50 - 8);
  __chkstk_darwin();
  v49 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for Station();
  v48 = *(v53 - 8);
  __chkstk_darwin();
  v52 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TVSeason();
  v51 = *(v56 - 8);
  __chkstk_darwin();
  v55 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Playlist.Folder();
  v54 = *(v59 - 8);
  __chkstk_darwin();
  v58 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Playlist();
  v57 = *(v62 - 8);
  __chkstk_darwin();
  v61 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Album();
  v60 = *(v65 - 8);
  __chkstk_darwin();
  v64 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicMovie();
  v63 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TVEpisode();
  v66 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicVideo();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Song();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v22 + 24))
  {
    sub_1000095E8(v22, &qword_10118B990, &unk_100EBE7B0);
    return 4;
  }

  v37 = v10;
  sub_100059A8C(v22, &v69);
  sub_100008FE4(&v69, v67);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      (*(v17 + 8))(v19, v16);
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      (*(v66 + 8))(v15, v13);
      goto LABEL_12;
    }

    v26 = v37;
    if (swift_dynamicCast())
    {
      (*(v63 + 8))(v12, v26);
      goto LABEL_12;
    }

    v28 = v64;
    v27 = v65;
    if (swift_dynamicCast())
    {
      v29 = v60;
LABEL_25:
      (*(v29 + 8))(v28, v27);
      sub_10000959C(v67);
      sub_10000959C(&v69);
      return 1;
    }

    v28 = v61;
    v27 = v62;
    if (swift_dynamicCast())
    {
      v29 = v57;
      goto LABEL_25;
    }

    v28 = v58;
    v27 = v59;
    if (swift_dynamicCast())
    {
      v30 = &v74;
LABEL_24:
      v29 = *(v30 - 32);
      goto LABEL_25;
    }

    v28 = v55;
    v27 = v56;
    if (swift_dynamicCast())
    {
      v30 = &v73;
      goto LABEL_24;
    }

    v28 = v52;
    v27 = v53;
    if (swift_dynamicCast())
    {
      v30 = &v72;
      goto LABEL_24;
    }

    v31 = v49;
    v32 = v50;
    if (swift_dynamicCast())
    {
      v33 = &v71;
LABEL_32:
      (*(*(v33 - 32) + 8))(v31, v32);
      sub_10000959C(v67);
      sub_10000959C(&v69);
      return 2;
    }

    v31 = v46;
    v32 = v47;
    if (swift_dynamicCast())
    {
      v33 = &v70;
      goto LABEL_32;
    }

    v31 = v43;
    v32 = v44;
    if (swift_dynamicCast())
    {
      v33 = &v68;
      goto LABEL_32;
    }

    v34 = v40;
    v35 = v41;
    if (swift_dynamicCast())
    {
      (*(v38 + 8))(v34, v35);
      sub_10000959C(v67);
      sub_10000959C(&v69);
      return 3;
    }

    sub_10000959C(v67);
    sub_10000959C(&v69);
    return 4;
  }

  (*(v21 + 8))(v24, v20);
LABEL_12:
  sub_10000959C(v67);
  sub_10000959C(&v69);
  return 0;
}

uint64_t sub_1007A4B94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10017B360(a1, v4, v5, (v1 + 4), v6, (v1 + 10));
}

uint64_t sub_1007A4C58()
{
  v2 = *(sub_10010FC20(&unk_101188920, &qword_100EBCC50) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + ((v4 + 47) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1007A5224;

  return sub_1001790FC(v0 + v3, v0 + v4, v6, v7);
}

uint64_t sub_1007A4D84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualPreview.Artwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007A4DE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007A4E48()
{
  swift_unknownObjectRelease();
  sub_10000959C((v0 + 32));

  sub_10000959C((v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_1007A4E98()
{
  v1 = *(sub_10010FC20(&unk_101188920, &qword_100EBCC50) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  sub_10000959C((v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1007A4FCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10017B360(a1, v4, v5, (v1 + 4), v6, (v1 + 10));
}

uint64_t sub_1007A5090()
{
  v2 = *(sub_10010FC20(&unk_101188920, &qword_100EBCC50) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + ((v4 + 47) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1001F6C0C;

  return sub_1001790FC(v0 + v3, v0 + v4, v6, v7);
}

uint64_t sub_1007A51BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1007A529C(uint64_t a1)
{
  _s13ConfigurationCMa(319);
  if (v1 <= 0x3F)
  {
    sub_1007B5E88(319, &qword_1011A2BD0, &unk_101192B80, &qword_100ED0200, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_1007B7D14(319, &qword_1011878B0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1007B5E34(319, &unk_1011A2BD8, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1007A5484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a6(v10);
}

double sub_1007A5554@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

double sub_1007A5624@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

double sub_1007A56F4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

void sub_1007A57C4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

double sub_1007A5920@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__title + 8);
  *a2 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__title);
  a2[1] = v4;

  return result;
}

double sub_1007A59D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1005F42E0(v1, v2);
}

uint64_t sub_1007A5A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  sub_10010FC20(a5, a6);
  __chkstk_darwin();
  v12 = &v14 - v11;
  sub_1000089F8(a1, &v14 - v11, a5, a6);
  return a7(v12);
}

double sub_1007A5B10@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution;
  v5 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution);
  v6 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution + 8);
  *a2 = v5;
  *(a2 + 8) = v6;
  v7 = *(v4 + 16);
  *(a2 + 16) = v7;
  return sub_1005F94C0(v5, v6, v7);
}

double sub_1007A5BD0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_1005F94C0(*a1, v2, v3);
  return sub_1005F4744(v1, v2, v3);
}

double sub_1007A5C20@<D0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attributionAction);
  v4 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attributionAction + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_100029B94;
  a2[1] = v6;

  return result;
}

double sub_1007A5D04(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_1007A5E20@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkAction);
  v5 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkAction + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10018A020;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_100030444(v4, v5);
}

double sub_1007A5F18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1007B86AC;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_getKeyPath();
  __chkstk_darwin();
  sub_100030444(v2, v3);
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100020438(v5, v4);

  return result;
}

uint64_t sub_1007A6098@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *a3;
  swift_beginAccess();
  return sub_1000089F8(v10 + v11, a6, a4, a5);
}

uint64_t sub_1007A617C(uint64_t a1, uint64_t *a2)
{
  sub_10010FC20(&unk_1011A4760, &qword_100ED6BD8);
  __chkstk_darwin();
  v5 = &v8[-v4];
  sub_1000089F8(a1, &v8[-v4], &unk_1011A4760, &qword_100ED6BD8);
  v6 = *a2;
  swift_getKeyPath();
  v9 = v6;
  v10 = v5;
  v11 = v6;
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000095E8(v5, &unk_1011A4760, &qword_100ED6BD8);
}

void sub_1007A62CC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v5 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8);
  v6 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16);
  v7 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 24);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  sub_1004E5E44(v4, v5, v6, v7);
}

double sub_1007A638C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_1004E5E44(*a1, v2, v3, v4);
  return sub_1005F4CC8(v1, v2, v3, v4);
}

double sub_1007A6400@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);

  return result;
}

uint64_t sub_1007A64E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__playbackIntentProvider);
  v5 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__playbackIntentProvider + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = &unk_100EDFA20;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_100030444(v4, v5);
}

double sub_1007A65DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = &unk_100EE2BB0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_getKeyPath();
  __chkstk_darwin();
  sub_100030444(v2, v3);
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100020438(v5, v4);

  return result;
}

double sub_1007A6738@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

  return result;
}

void sub_1007A68E0(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

uint64_t sub_1007A69BC@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v85 = type metadata accessor for ColorScheme();
  v84 = *(v85 - 8);
  __chkstk_darwin();
  v82 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v66 - v3;
  v68 = type metadata accessor for EnvironmentValues();
  v67 = *(v68 - 8);
  __chkstk_darwin();
  v66 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Header(0);
  v89 = *(v81 - 8);
  v5 = *(v89 + 64);
  __chkstk_darwin();
  v70 = (sub_10010FC20(&qword_1011A2C10, &qword_100EE2930) - 8);
  __chkstk_darwin();
  v7 = &v66 - v6;
  v73 = sub_10010FC20(&qword_1011A2C18, &qword_100EE2938);
  __chkstk_darwin();
  v75 = &v66 - v8;
  v74 = sub_10010FC20(&qword_1011A2C20, &qword_100EE2940);
  __chkstk_darwin();
  v78 = &v66 - v9;
  v76 = sub_10010FC20(&qword_1011A2C28, &qword_100EE2948);
  __chkstk_darwin();
  v80 = &v66 - v10;
  v11 = *v1;
  swift_getKeyPath();
  v90 = OBJC_IVAR____TtCV5Music6Header13Configuration___observationRegistrar;
  *&v93 = v11;
  v91 = sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v88 = OBJC_IVAR____TtCV5Music6Header13Configuration__metrics;
  v12 = *(v11 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);
  swift_getKeyPath();
  *&v93 = v12;
  v87 = sub_1007B46CC(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v69 = *(v12 + 24);

  v13 = v1;
  sub_1007B4EC8(v1, &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Header);
  v14 = *(v89 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = swift_allocObject();
  sub_1007B4A28(&v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for Header);
  v89 = v13;
  sub_1007B4EC8(v13, &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Header);
  v77 = v5;
  v71 = v14;
  v17 = swift_allocObject();
  v72 = v15;
  v79 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007B4A28(v79, v17 + v15, type metadata accessor for Header);
  v18 = sub_10010FC20(&qword_1011A2C30, &qword_100EE29A8);
  v19 = *(v18 + 60);
  *&v7[v19] = swift_getKeyPath();
  sub_10010FC20(&unk_10118F250, &qword_100EC45B0);
  swift_storeEnumTagMultiPayload();
  v20 = &v7[*(v18 + 64)];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  *v7 = v69;
  v7[8] = 0;
  *(v7 + 2) = sub_1007B4714;
  *(v7 + 3) = v16;
  *(v7 + 4) = sub_1007B4878;
  *(v7 + 5) = v17;
  LOBYTE(v17) = static Edge.Set.horizontal.getter();
  swift_getKeyPath();
  *&v93 = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(v11 + v88);
  swift_getKeyPath();
  *&v93 = v21;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  EdgeInsets.init(_all:)();
  v22 = *(v70 + 11);
  v70 = v7;
  v23 = &v7[v22];
  *v23 = v17;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  swift_getKeyPath();
  *&v93 = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v11 + 16) != 2)
  {
    LODWORD(v69) = *(v11 + 16);
    swift_getKeyPath();
    *&v93 = v11;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v28 = v88;
    v29 = *(v11 + v88);
    swift_getKeyPath();
    *&v93 = v29;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    *&v93 = v11;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = *(v11 + v28);
    swift_getKeyPath();
    *&v93 = v30;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = v89 + *(v81 + 28);
    v32 = *v31;
    if (*(v31 + 8) != 1)
    {

      v33 = static os_log_type_t.fault.getter();
      v34 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v34, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v35 = v66;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v36 = sub_1000D8F20(v32, 0);
      (*(v67 + 8))(v35, v68, v36);
    }
  }

  static Alignment.bottom.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v37 = v75;
  sub_10003D17C(v70, v75, &qword_1011A2C10, &qword_100EE2930);
  v38 = (v37 + *(v73 + 36));
  v39 = v98;
  v38[4] = v97;
  v38[5] = v39;
  v38[6] = v99;
  v40 = v94;
  *v38 = v93;
  v38[1] = v40;
  v41 = v96;
  v38[2] = v95;
  v38[3] = v41;
  v42 = v79;
  sub_1007B4EC8(v89, v79, type metadata accessor for Header);
  v43 = v72;
  v44 = swift_allocObject();
  sub_1007B4A28(v42, v44 + v43, type metadata accessor for Header);
  v45 = static Alignment.center.getter();
  v47 = v46;
  v48 = v78;
  sub_10003D17C(v37, v78, &qword_1011A2C18, &qword_100EE2938);
  v49 = (v48 + *(v74 + 36));
  *v49 = sub_1007B4924;
  v49[1] = v44;
  v49[2] = v45;
  v49[3] = v47;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v92 = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v45) = *(v11 + 16);
  v51 = v80;
  sub_10003D17C(v48, v80, &qword_1011A2C20, &qword_100EE2940);
  v52 = v51 + *(v76 + 36);
  *v52 = KeyPath;
  *(v52 + 8) = v45;
  v53 = swift_getKeyPath();
  swift_getKeyPath();
  v92 = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v54 = *(v11 + 16);
  if (v54 == 2)
  {
    v55 = v82;
    sub_10056CEEC(v82);
    v56 = v85;
    v57 = v84;
  }

  else
  {
    v57 = v84;
    v56 = v85;
    v55 = v82;
    if (v54)
    {
      v58 = &enum case for ColorScheme.light(_:);
    }

    else
    {
      v58 = &enum case for ColorScheme.dark(_:);
    }

    (*(v84 + 104))(v82, *v58, v85);
  }

  v59 = *(v57 + 32);
  v60 = v83;
  v59(v83, v55, v56);
  v61 = sub_10010FC20(&qword_1011A2C38, &unk_100EE2A80);
  v62 = v86;
  v63 = (v86 + *(v61 + 36));
  v64 = sub_10010FC20(&qword_10118F360, &qword_100ECBB40);
  v59(v63 + *(v64 + 28), v60, v56);
  *v63 = v53;
  return sub_10003D17C(v51, v62, &qword_1011A2C28, &qword_100EE2948);
}

uint64_t sub_1007A76DC@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10010FC20(&qword_1011A2C60, &qword_100EE2D48);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v13 - v8;
  v10 = *a2;
  swift_getKeyPath();
  v13[1] = v10;
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v10 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork))
  {
    v11 = 1;
  }

  else
  {
    sub_1007A7880(a2, a1 & 1, v9);
    sub_10003D17C(v9, a3, &qword_1011A2C60, &qword_100EE2D48);
    v11 = 0;
  }

  return (*(v7 + 56))(a3, v11, 1, v6);
}

uint64_t sub_1007A7880@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v104) = a2;
  v108 = a3;
  v106 = sub_10010FC20(&qword_1011A2C68, &qword_100EE2D50);
  __chkstk_darwin();
  v107 = (&v77 - v4);
  v92 = type metadata accessor for AccessibilityTraits();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v90 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for PlainButtonStyle();
  v86 = *(v89 - 8);
  __chkstk_darwin();
  v81 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10010FC20(&qword_1011A2C70, &qword_100EE2D58);
  v79 = *(v83 - 8);
  __chkstk_darwin();
  v78 = &v77 - v7;
  v87 = sub_10010FC20(&qword_1011A2C78, &qword_100EE2D60);
  v85 = *(v87 - 8);
  __chkstk_darwin();
  v80 = &v77 - v8;
  v82 = sub_10010FC20(&qword_1011A2C80, &qword_100EE2D68);
  __chkstk_darwin();
  v84 = &v77 - v9;
  v98 = sub_10010FC20(&qword_1011A2C88, &qword_100EE2D70);
  __chkstk_darwin();
  v88 = &v77 - v10;
  v96 = sub_10010FC20(&qword_1011A2C90, &qword_100EE2D78);
  __chkstk_darwin();
  v97 = &v77 - v11;
  v105 = sub_10010FC20(&qword_1011A2C98, &unk_100EE2D80);
  __chkstk_darwin();
  v99 = &v77 - v12;
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v95 = &v77 - v13;
  v94 = type metadata accessor for EditorialVideoArtworkFlavor();
  v93 = *(v94 - 8);
  __chkstk_darwin();
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Header.AdaptativeArtwork(0);
  __chkstk_darwin();
  v101 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v18 = &v77 - v17;
  v19 = type metadata accessor for ArtworkImage.Info(0);
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v77 - v23;
  v102 = a1;
  v24 = *a1;
  swift_getKeyPath();
  v110 = v24;
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v24 + 16) != 2)
  {
LABEL_4:
    v26 = static Color.clear.getter();
    swift_getKeyPath();
    v110 = v24;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v104)
    {
      v27 = &v115;
      v28 = 300.0;
      v29 = 300.0;
    }

    else
    {
      v30 = *(v24 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);
      swift_getKeyPath();
      v110 = v30;
      sub_1007B46CC(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v31 = *(v30 + 16);

      v28 = v31 + -136.0;
      v27 = &v109;
      v29 = v31 + -136.0;
    }

    ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(*&v28, 0, *&v29, 0, 0, 1, 2, v27);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v32 = v110;
    v33 = v111;
    v34 = v112;
    v35 = v113;
    v36 = v107;
    *v107 = v26;
    v36[1] = v32;
    *(v36 + 16) = v33;
    v36[3] = v34;
    *(v36 + 32) = v35;
    *(v36 + 5) = v114;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_1011950E8, &qword_100ED3148);
    sub_1007B4BD4();
    sub_1007B7AFC(&qword_1011950F0, &qword_1011950E8, &qword_100ED3148);
    return _ConditionalContent<>.init(storage:)();
  }

  swift_getKeyPath();
  v110 = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = OBJC_IVAR____TtCV5Music6Header13Configuration__artworkInfo;
  swift_beginAccess();
  sub_1000089F8(v24 + v25, v18, &unk_10119F000, &qword_100EC31D0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1000095E8(v18, &unk_10119F000, &qword_100EC31D0);
    goto LABEL_4;
  }

  v38 = v103;
  sub_1007B4A28(v18, v103, type metadata accessor for ArtworkImage.Info);
  sub_1007B4EC8(v38, v22, type metadata accessor for ArtworkImage.Info);
  static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
  swift_getKeyPath();
  v110 = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = *(v24 + OBJC_IVAR____TtCV5Music6Header13Configuration__videoArtworks);
  if (!*(v39 + 16))
  {
    goto LABEL_12;
  }

  v40 = sub_1006BE63C(v15);
  if ((v41 & 1) == 0)
  {

LABEL_12:
    (*(v93 + 8))(v15, v94);
    v50 = type metadata accessor for VideoArtwork();
    v49 = v95;
    (*(*(v50 - 8) + 56))(v95, 1, 1, v50);
    goto LABEL_13;
  }

  v42 = v40;
  v43 = *(v39 + 56);
  v44 = type metadata accessor for VideoArtwork();
  v45 = *(v44 - 8);
  v46 = v45;
  v47 = v43 + *(v45 + 72) * v42;
  v48 = v95;
  (*(v45 + 16))(v95, v47, v44);
  (*(v93 + 8))(v15, v94);

  (*(v46 + 56))(v48, 0, 1, v44);
  v49 = v48;
LABEL_13:
  v51 = v100;
  swift_getKeyPath();
  v110 = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = *(v24 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

  v53 = sub_1007A8A48();
  v55 = v54;
  v56 = v101;
  sub_1007B4A28(v22, v101, type metadata accessor for ArtworkImage.Info);
  sub_10003D17C(v49, v56 + v51[5], &unk_101192950, &unk_100EBDF40);
  *(v56 + v51[6]) = v52;
  v57 = (v56 + v51[7]);
  *v57 = v53;
  v57[1] = v55;
  v58 = v56 + v51[8];
  *v58 = swift_getKeyPath();
  *(v58 + 8) = 0;
  swift_getKeyPath();
  v110 = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v59 = *(v24 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkAction);
  if (v59)
  {
    v60 = *(v24 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkAction + 8);
    __chkstk_darwin();
    *(&v77 - 2) = v56;
    sub_100030444(v59, v60);
    v104 = sub_1007B46CC(qword_1011A2CC0, type metadata accessor for Header.AdaptativeArtwork, &unk_100EE2F80);

    v61 = v78;
    Button.init(action:label:)();
    v62 = v81;
    PlainButtonStyle.init()();
    v63 = sub_100020674(&qword_1011A2CB8, &qword_1011A2C70, &qword_100EE2D58, &protocol conformance descriptor for Button<A>);
    v64 = sub_1007B46CC(&qword_10119A260, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v65 = v80;
    v66 = v83;
    v67 = v89;
    View.buttonStyle<A>(_:)();
    (*(v86 + 8))(v62, v67);
    (*(v79 + 8))(v61, v66);
    v68 = sub_1007A8A48();
    v70 = v69;
    v110 = v66;
    v111 = v67;
    v112 = v63;
    v113 = v64;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v72 = v84;
    v73 = v87;
    View.accessibilityLabel(_:)(v68, v70, v87, OpaqueTypeConformance2);

    (*(v85 + 8))(v65, v73);
    v74 = v90;
    static AccessibilityTraits.isImage.getter();
    sub_1007B4D4C();
    v75 = v88;
    View.accessibilityAddTraits(_:)();
    (*(v91 + 8))(v74, v92);
    sub_1000095E8(v72, &qword_1011A2C80, &qword_100EE2D68);
    sub_1000089F8(v75, v97, &qword_1011A2C88, &qword_100EE2D70);
    swift_storeEnumTagMultiPayload();
    sub_1007B4C90();
    v76 = v99;
    v56 = v101;
    _ConditionalContent<>.init(storage:)();
    sub_100020438(v59, v60);
    sub_1000095E8(v75, &qword_1011A2C88, &qword_100EE2D70);
  }

  else
  {
    sub_1007B4EC8(v56, v97, type metadata accessor for Header.AdaptativeArtwork);
    swift_storeEnumTagMultiPayload();
    sub_1007B4C90();
    sub_1007B46CC(qword_1011A2CC0, type metadata accessor for Header.AdaptativeArtwork, &unk_100EE2F80);
    v76 = v99;
    _ConditionalContent<>.init(storage:)();
  }

  sub_1000089F8(v76, v107, &qword_1011A2C98, &unk_100EE2D80);
  swift_storeEnumTagMultiPayload();
  sub_10010FC20(&qword_1011950E8, &qword_100ED3148);
  sub_1007B4BD4();
  sub_1007B7AFC(&qword_1011950F0, &qword_1011950E8, &qword_100ED3148);
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v76, &qword_1011A2C98, &unk_100EE2D80);
  sub_1007B4F64(v103, type metadata accessor for ArtworkImage.Info);
  return sub_1007B4F64(v56, type metadata accessor for Header.AdaptativeArtwork);
}

uint64_t sub_1007A8A48()
{
  sub_10010FC20(&unk_1011A4760, &qword_100ED6BD8);
  __chkstk_darwin();
  v2 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = v12 - v3;
  v5 = *v0;
  swift_getKeyPath();
  v12[1] = v5;
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtCV5Music6Header13Configuration__metadata;
  swift_beginAccess();
  sub_1000089F8(v5 + v6, v4, &unk_1011A4760, &qword_100ED6BD8);
  v7 = _s8MetadataV13ConfigurationOMa(0);
  if ((*(*(v7 - 8) + 48))(v4, 1, v7) == 1 || (sub_1000089F8(v4, v2, &unk_1011A4760, &qword_100ED6BD8), EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), sub_1007B4F64(v2, _s8MetadataV13ConfigurationOMa), EnumCaseMultiPayload == 1))
  {
    if (qword_10117F700 != -1)
    {
      swift_once();
    }

    v9 = &qword_101218CB8;
  }

  else
  {
    if (qword_10117F6F8 != -1)
    {
      swift_once();
    }

    v9 = &qword_101218CA8;
  }

  v10 = *v9;

  sub_1000095E8(v4, &unk_1011A4760, &qword_100ED6BD8);
  return v10;
}

uint64_t sub_1007A8CD4@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = sub_10010FC20(&qword_1011A2C48, &qword_100EE2A98);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v8 = sub_10010FC20(&qword_1011A2C50, &qword_100EE2AA0);
  __chkstk_darwin();
  v10 = &v23 - v9;
  if (a1)
  {
    v11 = static HorizontalAlignment.leading.getter();
  }

  else
  {
    v11 = static HorizontalAlignment.center.getter();
  }

  v12 = v11;
  v13 = *a2;
  swift_getKeyPath();
  *&v25 = v13;
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v13) = *(v13 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork);
  v14 = &v7[v5[31]];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  *v7 = v12;
  v7[8] = v13;
  sub_1007A8FC8(a2, &v7[v5[26]]);
  sub_1007A92B4(a2, &v7[v5[27]]);
  sub_1007A94BC(a2, &v7[v5[28]]);
  sub_1007A981C(a2, &v7[v5[29]]);
  sub_1007A99A0(a2, &v7[v5[30]]);
  if (a1)
  {
    static Alignment.leading.getter();
  }

  else
  {
    static Alignment.center.getter();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v7, v10, &qword_1011A2C48, &qword_100EE2A98);
  v15 = &v10[*(v8 + 36)];
  v16 = v30;
  *(v15 + 4) = v29;
  *(v15 + 5) = v16;
  *(v15 + 6) = v31;
  v17 = v26;
  *v15 = v25;
  *(v15 + 1) = v17;
  v18 = v28;
  *(v15 + 2) = v27;
  *(v15 + 3) = v18;
  v19 = static Anchor.Source<A>.top.getter();
  v20 = v24;
  sub_10003D17C(v10, v24, &qword_1011A2C50, &qword_100EE2AA0);
  result = sub_10010FC20(&qword_1011A2C58, &qword_100EE2AF8);
  v22 = (v20 + *(result + 36));
  *v22 = v19;
  v22[1] = sub_10060FBA8;
  v22[2] = 0;
  return result;
}

uint64_t sub_1007A8FC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s5TitleVMa(0);
  v5 = *(v4 - 1);
  __chkstk_darwin();
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  swift_getKeyPath();
  v19 = v8;
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = (v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__title);
  v10 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__title + 8);
  v11 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__title) & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v10) & 0xF;
  }

  if (v11 && (swift_getKeyPath(), v19 = v8, ObservationRegistrar.access<A, B>(_:keyPath:)(), , (*(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer) & 1) == 0))
  {
    swift_getKeyPath();
    v19 = v8;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = v9[1];
    v18 = *v9;
    swift_getKeyPath();
    v19 = v8;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = OBJC_IVAR____TtCV5Music6Header13Configuration__favoriteStatus;
    swift_beginAccess();
    sub_1000089F8(v8 + v14, v7 + v4[5], &qword_1011831D0, &unk_100EC4CD0);
    v15 = v7 + v4[6];
    *v15 = swift_getKeyPath();
    v15[8] = 0;
    v16 = v4[7];
    *(v7 + v16) = swift_getKeyPath();
    sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
    swift_storeEnumTagMultiPayload();
    *v7 = v18;
    v7[1] = v13;
    sub_1007B4A28(v7, a2, _s5TitleVMa);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return (*(v5 + 56))(a2, v12, 1, v4);
}

void sub_1007A92B4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer) & 1) != 0 || (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v4 = (v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution), v5 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution + 16), v5 == 255))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
LABEL_9:
    v10 = 0;
    v9 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v6 = *v4;
  v7 = v4[1];
  if (v5)
  {
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v8 = *(v6 + 16);
  if (!v8)
  {
LABEL_12:
    v6 = 0;
    v7 = 0;
    goto LABEL_9;
  }

LABEL_7:
  swift_getKeyPath();
  sub_1005F94B4(v6, v7, v5 & 1);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attributionAction);
  v9 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attributionAction + 8);
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution);
  v8 = v5 & 1;
LABEL_10:
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
}

uint64_t sub_1007A94BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21[0] = a2;
  v3 = _s8MetadataVMa(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011A4760, &qword_100ED6BD8);
  __chkstk_darwin();
  v8 = v21 - v7;
  v9 = _s8MetadataV13ConfigurationOMa(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_getKeyPath();
  v21[1] = v13;
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtCV5Music6Header13Configuration__metadata;
  swift_beginAccess();
  sub_1000089F8(v13 + v14, v8, &unk_1011A4760, &qword_100ED6BD8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &unk_1011A4760, &qword_100ED6BD8);
LABEL_6:
    v19 = 1;
    v18 = v21[0];
    return (*(v4 + 56))(v18, v19, 1, v3);
  }

  sub_1007B4A28(v8, v12, _s8MetadataV13ConfigurationOMa);
  if ((sub_1005FD7A8() & 1) == 0)
  {
    sub_1007B4F64(v12, _s8MetadataV13ConfigurationOMa);
    goto LABEL_6;
  }

  sub_1007B4A28(v12, v6, _s8MetadataV13ConfigurationOMa);
  v15 = &v6[*(v3 + 20)];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = &v6[*(v3 + 24)];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = v21[0];
  sub_1007B4A28(v6, v21[0], _s8MetadataVMa);
  v18 = v17;
  v19 = 0;
  return (*(v4 + 56))(v18, v19, 1, v3);
}

void sub_1007A981C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v5 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8);
  if (!v5)
  {
    v6 = 0;
LABEL_8:
    v7 = 0;
    v8 = 0;
    KeyPath = 0;
    v11 = 0;
    goto LABEL_9;
  }

  v6 = *v4;
  v7 = v4[2];
  v8 = v4[3];
  v9 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    sub_100030444(v7, v8);

    sub_100020438(v7, v8);
    v6 = 0;
    v5 = 0;
    goto LABEL_8;
  }

  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();

  sub_100030444(v7, v8);
LABEL_9:
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = v11;
  *(a2 + 56) = 0;
}

double sub_1007A99A0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s16PlaybackControlsVMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_getKeyPath();
  v16 = v8;
  sub_1007B46CC(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls))
  {
    (*(v5 + 56))(a2, 1, 1, v4);
  }

  else
  {
    swift_getKeyPath();
    v16 = v8;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = a2;
    v10 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__playbackIntentProvider);
    v11 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__playbackIntentProvider + 8);
    swift_getKeyPath();
    v16 = v8;
    sub_100030444(v10, v11);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__playIntentButtonIntents);
    *(v7 + 3) = swift_getKeyPath();
    v7[32] = 0;
    v13 = *(v4 + 28);
    *&v7[v13] = swift_getKeyPath();
    sub_10010FC20(&qword_10118E3F8, &qword_100ECA6A0);
    swift_storeEnumTagMultiPayload();
    *v7 = v10;
    *(v7 + 1) = v11;
    *(v7 + 2) = v12;
    v14 = v15;
    sub_1007B4A28(v7, v15, _s16PlaybackControlsVMa);
    (*(v5 + 56))(v14, 0, 1, v4);
  }

  return result;
}

double sub_1007A9C38@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t *a1@<X8>)@<X8>)
{
  v6 = *(type metadata accessor for Header(0) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = *a1;
  sub_1007B4EC8(a2, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Header);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  sub_1007B4A28(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for Header);
  *a3 = sub_1007B49A4;
  a3[1] = v10;

  return result;
}

void sub_1007A9D6C(uint64_t a1@<X1>, uint64_t *a3@<X8>)
{
  v6 = static Color.clear.getter();
  if (a1)
  {
    type metadata accessor for CGPoint(0);

    GeometryProxy.subscript.getter();

    sub_10010FC20(&qword_1011A2C40, &qword_100EE2A90);
    Binding.wrappedValue.setter();
  }

  else
  {
    sub_10010FC20(&qword_1011A2C40, &qword_100EE2A90);
    Binding.wrappedValue.setter();
  }

  *a3 = v6;
}

uint64_t sub_1007A9EA4(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v5);
  v3 = v5;
  result = *a1;
  if (v5)
  {

    result = v3;
  }

  *a1 = result;
  return result;
}

uint64_t sub_1007A9EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v8 + 16);
  sub_1001109D0(&qword_1011A2EF0, &qword_100EE2FE8);
  type metadata accessor for ModifiedContent();
  v29 = *(a1 + 24);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for AdaptativeContainerStack(255, v9, WitnessTable, v11);
  type metadata accessor for ModifiedContent();
  v12 = type metadata accessor for ModifiedContent();
  v34 = swift_getWitnessTable();
  v35 = &protocol witness table for _PaddingLayout;
  v32 = swift_getWitnessTable();
  v33 = &protocol witness table for _PaddingLayout;
  v28 = v12;
  v13 = swift_getWitnessTable();
  v15 = type metadata accessor for AdaptativeContainer(0, v12, v13, v14);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin();
  v21 = &v28 - v20;
  (*(v5 + 16))(v7, v3, a1, v19);
  v22 = v5;
  v23 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v24 = swift_allocObject();
  v25 = v29;
  *(v24 + 16) = v30;
  *(v24 + 24) = v25;
  *(v24 + 32) = *(a1 + 32);
  (*(v22 + 32))(v24 + v23, v7, a1);
  sub_1006E3E84(sub_1007B652C, v24, v28, v13, v18);
  swift_getWitnessTable();
  sub_100663950();
  v26 = *(v16 + 8);
  v26(v18, v15);
  sub_100663950();
  return v26(v21, v15);
}

uint64_t sub_1007AA2A0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v64 = a6;
  v65 = a7;
  v70[0] = a3;
  v70[1] = a4;
  v63 = a5;
  v70[2] = a5;
  v70[3] = a6;
  v11 = type metadata accessor for Header.Content(0, v70);
  v12 = *(v11 - 8);
  v57 = *(v12 + 64);
  __chkstk_darwin();
  v14 = &v47[-v13];
  sub_1001109D0(&qword_1011A2EF0, &qword_100EE2FE8);
  v61 = a3;
  type metadata accessor for ModifiedContent();
  v62 = a4;
  type metadata accessor for ModifiedContent();
  v15 = a2;
  swift_getTupleTypeMetadata2();
  v16 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v52 = v16;
  v50 = WitnessTable;
  v19 = type metadata accessor for AdaptativeContainerStack(0, v16, WitnessTable, v18);
  v55 = *(v19 - 8);
  __chkstk_darwin();
  v51 = &v47[-v20];
  v58 = *(type metadata accessor for ModifiedContent() - 8);
  __chkstk_darwin();
  v54 = &v47[-v21];
  v59 = v22;
  v23 = type metadata accessor for ModifiedContent();
  v60 = *(v23 - 8);
  __chkstk_darwin();
  v53 = &v47[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __chkstk_darwin();
  v56 = &v47[-v26];
  v27 = a1 & 1;
  sub_1007AA874(a1 & 1, v11, v25);
  if (a1)
  {
    v49 = *v15;
    v48 = *(v15 + 8);
  }

  else
  {
    v49 = 0;
    v48 = 0;
  }

  v28 = static Alignment.bottom.getter();
  v30 = v29;
  (*(v12 + 16))(v14, v15, v11);
  v31 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v32 = v31 + v57;
  v33 = swift_allocObject();
  v34 = v11;
  v35 = v33;
  v36 = v62;
  *(v33 + 2) = v61;
  *(v33 + 3) = v36;
  v37 = v64;
  *(v33 + 4) = v63;
  *(v33 + 5) = v37;
  (*(v12 + 32))(&v33[v31], v14, v34);
  *(v35 + v32) = v27;
  v38 = v51;
  sub_100667C08(v28, v30, v49, v48, sub_1007B65E8, v35, v52, v50, v51);
  static Edge.Set.top.getter();
  v39 = swift_getWitnessTable();
  v40 = v54;
  View.padding(_:_:)();
  (*(v55 + 8))(v38, v19);
  static Edge.Set.bottom.getter();
  v68 = v39;
  v69 = &protocol witness table for _PaddingLayout;
  v41 = v59;
  v42 = swift_getWitnessTable();
  v43 = v53;
  View.padding(_:_:)();
  (*(v58 + 8))(v40, v41);
  v66 = v42;
  v67 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  v44 = v56;
  sub_100663950();
  v45 = *(v60 + 8);
  v45(v43, v23);
  sub_100663950();
  return (v45)(v44, v23);
}

double sub_1007AA874(char a1, uint64_t a2, __n128 a3)
{
  v6 = *(type metadata accessor for EnvironmentValues() - 8);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 14.0;
  if ((a1 & 1) == 0)
  {
    v11 = v3 + *(a2 + 64);
    v12 = *v11;
    if (*(v11 + 8) != 1)
    {
      v13 = v7;

      v14 = static os_log_type_t.fault.getter();
      v15 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v16 = sub_1000D8F20(v12, 0);
      (*(v6 + 8))(v9, v13, v16);
      return 14.0;
    }
  }

  return result;
}

uint64_t sub_1007AAA00@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a6;
  v52 = a7;
  v47 = a4;
  v51 = *(a4 - 8);
  __chkstk_darwin();
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ModifiedContent();
  v50 = *(v44 - 8);
  __chkstk_darwin();
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v39 - v13;
  v14 = *(a3 - 8);
  __chkstk_darwin();
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001109D0(&qword_1011A2EF0, &qword_100EE2FE8);
  v17 = type metadata accessor for ModifiedContent();
  v53 = *(v17 - 8);
  __chkstk_darwin();
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin();
  v22 = &v39 - v21;
  (*(a1 + 16))(a2 & 1, v20);
  sub_100667294(a3, a5);
  (*(v14 + 8))(v16, a3);
  v23 = sub_100020674(qword_1011A2EF8, &qword_1011A2EF0, &qword_100EE2FE8, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v57[4] = a5;
  v57[5] = v23;
  WitnessTable = swift_getWitnessTable();
  v24 = v22;
  v40 = v17;
  sub_100663950();
  v42 = *(v53 + 8);
  v43 = v53 + 8;
  v42(v19, v17);
  v25 = v46;
  (*(a1 + 32))(a2 & 1);
  static Alignment.bottomLeading.getter();
  v26 = v49;
  v27 = v47;
  v28 = v45;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v51 + 8))(v25, v27);
  v57[2] = v26;
  v57[3] = &protocol witness table for _FlexFrameLayout;
  v29 = v44;
  v30 = swift_getWitnessTable();
  v31 = v48;
  sub_100663950();
  v32 = v50;
  v33 = *(v50 + 8);
  v33(v28, v29);
  v34 = v24;
  v35 = v24;
  v36 = v40;
  (*(v53 + 16))(v19, v35, v40);
  v57[0] = v19;
  (*(v32 + 16))(v28, v31, v29);
  v57[1] = v28;
  v56[0] = v36;
  v56[1] = v29;
  v54 = WitnessTable;
  v55 = v30;
  sub_1006769F4(v57, 2uLL, v56);
  v33(v31, v29);
  v37 = v42;
  v42(v34, v36);
  v33(v28, v29);
  return v37(v19, v36);
}

uint64_t sub_1007AAF54@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a1;
  v116 = a2;
  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v6 = *(a1 + 7);
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v10 = *(a1 + 10);
  v9 = *(a1 + 11);
  v133 = *(a1 + 2);
  v134 = v2;
  v11 = v133;
  v12 = v2;
  v135 = v3;
  v136 = v4;
  v13 = v3;
  *&v137 = v5;
  *(&v137 + 1) = v6;
  v14 = v5;
  v15 = v6;
  v138 = v7;
  v139 = v8;
  v140 = v10;
  v141 = v9;
  v16 = v9;
  v128 = type metadata accessor for Header.TextVStack.TitleAttributionStack(255, &v133);
  v133 = v11;
  v134 = v12;
  v135 = v13;
  v136 = v4;
  *&v137 = v14;
  *(&v137 + 1) = v15;
  v138 = v7;
  v139 = v8;
  v140 = v10;
  v141 = v16;
  v129 = type metadata accessor for Header.TextVStack.MetadataContainer(255, &v133);
  v133 = v11;
  v134 = v12;
  v135 = v13;
  v136 = v4;
  *&v137 = v14;
  *(&v137 + 1) = v15;
  v138 = v7;
  v139 = v8;
  v140 = v10;
  v141 = v16;
  v125 = v16;
  v130 = type metadata accessor for Header.TextVStack.PlaybackControlContainer(255, &v133);
  v133 = v11;
  v134 = v12;
  v135 = v13;
  v136 = v4;
  *&v137 = v14;
  *(&v137 + 1) = v15;
  v138 = v7;
  v139 = v8;
  v140 = v10;
  v141 = v16;
  v131 = type metadata accessor for Header.TextVStack.DescriptionContainer(255, &v133);
  swift_getTupleTypeMetadata();
  v115 = &protocol conformance descriptor for TupleView<A>;
  v98 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v122 = type metadata accessor for VStack();
  v101 = *(v122 - 8);
  __chkstk_darwin();
  v100 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = v90 - v18;
  v133 = v11;
  v134 = v12;
  v135 = v13;
  v136 = v4;
  *&v137 = v14;
  *(&v137 + 1) = v15;
  v138 = v7;
  v139 = v8;
  v19 = v125;
  v140 = v10;
  v141 = v125;
  v128 = type metadata accessor for Header.TextVStack.TitleAttributionStack(255, &v133);
  v133 = v11;
  v134 = v12;
  v135 = v13;
  v136 = v4;
  *&v137 = v14;
  *(&v137 + 1) = v15;
  v138 = v7;
  v139 = v8;
  v140 = v10;
  v141 = v19;
  v129 = type metadata accessor for Header.TextVStack.MetadataContainer(255, &v133);
  v130 = sub_1001109D0(&qword_1011A2EE0, &qword_100EE2FE0);
  v133 = v11;
  v134 = v12;
  v20 = v11;
  v118 = v12;
  v119 = v13;
  v135 = v13;
  v136 = v4;
  *&v124 = v14;
  *(&v124 + 1) = v15;
  *&v137 = v14;
  *(&v137 + 1) = v15;
  v123 = v7;
  v138 = v7;
  v139 = v8;
  v21 = v125;
  v140 = v10;
  v141 = v125;
  v131 = type metadata accessor for Header.TextVStack.DescriptionContainer(255, &v133);
  v133 = v20;
  v134 = v12;
  v135 = v13;
  v136 = v4;
  v22 = v4;
  *&v137 = v14;
  *(&v137 + 1) = v15;
  v138 = v7;
  v139 = v8;
  v121 = v8;
  v140 = v10;
  v141 = v21;
  v117 = v10;
  v132 = type metadata accessor for Header.TextVStack.PlaybackControlContainer(255, &v133);
  swift_getTupleTypeMetadata();
  v23 = type metadata accessor for TupleView();
  v24 = swift_getWitnessTable();
  v90[1] = v23;
  v90[0] = v24;
  v25 = type metadata accessor for VStack();
  v93 = *(v25 - 8);
  __chkstk_darwin();
  v92 = v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = v90 - v27;
  v96 = type metadata accessor for EnvironmentValues();
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v25;
  v114 = type metadata accessor for _ConditionalContent();
  v113 = *(v114 - 8);
  __chkstk_darwin();
  v112 = v90 - v29;
  v103 = v22;
  v107 = type metadata accessor for Optional();
  v105 = *(v107 - 8);
  __chkstk_darwin();
  v106 = v90 - v30;
  v31 = v118;
  v32 = type metadata accessor for Optional();
  v33 = *(v32 - 8);
  __chkstk_darwin();
  v104 = v90 - v34;
  v35 = v20;
  v120 = v20;
  v36 = type metadata accessor for Optional();
  v37 = *(v36 - 8);
  __chkstk_darwin();
  v39 = v90 - v38;
  v102 = v90 - v38;
  v133 = v35;
  v134 = v31;
  v135 = v119;
  v136 = v22;
  v137 = v124;
  v138 = v123;
  v139 = v8;
  v140 = v10;
  v40 = v125;
  v141 = v125;
  v110 = type metadata accessor for Header.TextVStack.TitleAttributionStack(0, &v133);
  v108 = *(v110 - 8);
  v41 = __chkstk_darwin();
  v43 = v90 - v42;
  v44 = v109;
  v45 = v111;
  (*(v37 + 16))(v39, v111 + v109[26], v36, v41);
  v46 = v104;
  (*(v33 + 16))(v104, v45 + v44[27], v32);
  v47 = v40;
  v48 = v105;
  v49 = v106;
  v50 = v107;
  (*(v105 + 16))(v106, v45 + v44[29], v107);
  v51 = v103;
  LOBYTE(v36) = (*(*(v103 - 8) + 48))(v49, 1, v103) != 1;
  (*(v48 + 8))(v49, v50);
  v52 = v45;
  v53 = *v45;
  *(&v87 + 1) = v121;
  *&v87 = v123;
  v107 = v43;
  v54 = v43;
  v55 = v118;
  v56 = v119;
  sub_1007ABCD4(v102, v46, v36, v53, v120, v118, v119, v51, v54, v124, v87, v117, v47);
  v57 = v52 + v44[31];
  v58 = *v57;
  if (v57[8] != 1)
  {

    v59 = static os_log_type_t.fault.getter();
    v60 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v59, &_mh_execute_header, v60, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v61 = v94;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v62 = sub_1000D8F20(v58, 0);
    (*(v95 + 8))(v61, v96, v62);
    LOBYTE(v58) = v133;
  }

  v63 = v122;
  if (v58 == 2 || (v58 & 1) == 0)
  {
    __chkstk_darwin();
    v90[-12] = v120;
    v90[-11] = v55;
    v90[-10] = v56;
    v90[-9] = v51;
    v75 = *(&v124 + 1);
    v90[-8] = v124;
    v90[-7] = v75;
    v85 = v123;
    v86 = v121;
    *&v87 = v117;
    *(&v87 + 1) = v125;
    v65 = v107;
    v88 = v107;
    v89 = v52;
    v76 = v100;
    VStack.init(alignment:spacing:content:)();
    v77 = swift_getWitnessTable();
    v78 = v99;
    sub_100663950();
    v70 = *(v101 + 8);
    v70(v76, v63);
    sub_100663950();
    v79 = v115;
    v80 = swift_getWitnessTable();
    v72 = v112;
    sub_100653878(v76, v63, v79, v77, v80);
    v70(v76, v63);
    v73 = v78;
    v74 = v63;
  }

  else
  {
    __chkstk_darwin();
    v90[-12] = v120;
    v90[-11] = v55;
    v90[-10] = v56;
    v90[-9] = v51;
    v64 = *(&v124 + 1);
    v90[-8] = v124;
    v90[-7] = v64;
    v85 = v123;
    v86 = v121;
    *&v87 = v117;
    *(&v87 + 1) = v125;
    v65 = v107;
    v88 = v107;
    v89 = v52;
    v66 = v92;
    VStack.init(alignment:spacing:content:)();
    v67 = v115;
    v68 = swift_getWitnessTable();
    v69 = v91;
    sub_100663950();
    v70 = *(v93 + 8);
    v70(v66, v67);
    sub_100663950();
    v71 = swift_getWitnessTable();
    v72 = v112;
    sub_100653970(v66, v63, v67, v71, v68);
    v70(v66, v67);
    v73 = v69;
    v74 = v67;
  }

  v70(v73, v74);
  v81 = swift_getWitnessTable();
  v82 = swift_getWitnessTable();
  v126 = v81;
  v127 = v82;
  v83 = v114;
  swift_getWitnessTable();
  sub_100663950();
  (*(v113 + 8))(v72, v83);
  return (*(v108 + 8))(v65, v110);
}

uint64_t sub_1007ABCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v21 = type metadata accessor for Optional();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v28[0] = a5;
  v28[1] = a6;
  v28[2] = a7;
  v28[3] = a8;
  v29 = a10;
  v30 = a11;
  v31 = a12;
  v32 = a13;
  v22 = type metadata accessor for Header.TextVStack.TitleAttributionStack(0, v28);
  v23 = v22[25];
  v24 = type metadata accessor for Optional();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  *(a9 + v22[26]) = a3;
  *(a9 + v22[27]) = a4;
  v25 = a9 + v22[28];
  result = swift_getKeyPath();
  *v25 = result;
  *(v25 + 8) = 0;
  return result;
}

uint64_t sub_1007ABE2C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X4>, char *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v140 = a2;
  v119 = a1;
  v126 = a8;
  v124 = *(a6 - 8);
  __chkstk_darwin();
  v122 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v17;
  v162 = v18;
  v19 = v18;
  v149 = v18;
  v163 = v20;
  v164 = v21;
  v165 = v22;
  v166 = v23;
  v24 = v22;
  v129 = v22;
  v167 = v26;
  v168 = v25;
  v27 = v26;
  v28 = v25;
  v169 = v29;
  v170 = a12;
  v30 = v29;
  v147 = v29;
  v144 = type metadata accessor for Header.TextVStack.PlaybackControlContainer(0, &v161);
  v125 = *(v144 - 8);
  __chkstk_darwin();
  v145 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v121 = &v106 - v32;
  __chkstk_darwin();
  v123 = &v106 - v33;
  v137 = type metadata accessor for Optional();
  v136 = *(v137 - 8);
  __chkstk_darwin();
  v120 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v117 = &v106 - v35;
  v161 = a3;
  v162 = v19;
  v163 = a4;
  v164 = a5;
  v165 = v24;
  v166 = a7;
  v128 = v27;
  v167 = v27;
  v168 = v28;
  v36 = v28;
  v169 = v30;
  v170 = a12;
  v151 = type metadata accessor for Header.TextVStack.DescriptionContainer(0, &v161);
  v143 = *(v151 - 8);
  __chkstk_darwin();
  v134 = &v106 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v142 = &v106 - v38;
  v116 = type metadata accessor for Optional();
  v115 = *(v116 - 8);
  __chkstk_darwin();
  v114 = &v106 - v39;
  v40 = a3;
  v130 = a3;
  v41 = v149;
  v161 = a3;
  v162 = v149;
  v163 = a4;
  v164 = a5;
  v42 = v129;
  v165 = v129;
  v166 = a7;
  v167 = v27;
  v168 = v36;
  v148 = v36;
  v43 = v147;
  v169 = v147;
  v170 = a12;
  v146 = a12;
  v131 = type metadata accessor for Header.TextVStack.MetadataContainer(0, &v161);
  v138 = *(v131 - 8);
  __chkstk_darwin();
  v150 = &v106 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = &v106 - v45;
  v161 = v40;
  v162 = v41;
  v163 = a4;
  v164 = a5;
  v127 = a5;
  v165 = v42;
  v166 = a7;
  v46 = v128;
  v167 = v128;
  v168 = v36;
  v169 = v43;
  v170 = a12;
  v47 = v43;
  v133 = type metadata accessor for Header.TextVStack.TitleAttributionStack(0, &v161);
  v141 = *(v133 - 8);
  __chkstk_darwin();
  v135 = &v106 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v139 = &v106 - v49;
  WitnessTable = swift_getWitnessTable();
  sub_100663950();
  v50 = v130;
  v161 = v130;
  v162 = v41;
  v163 = a4;
  v164 = a5;
  v165 = v42;
  v166 = a7;
  v51 = v46;
  v52 = v148;
  v167 = v46;
  v168 = v148;
  v53 = v146;
  v169 = v47;
  v170 = v146;
  v107 = type metadata accessor for Header.TextVStack(0, &v161);
  v54 = v114;
  (*(v115 + 16))(v114, v140 + *(v107 + 112), v116);
  *(&v103 + 1) = v47;
  *&v103 = v52;
  v55 = v150;
  v56 = v54;
  v57 = v50;
  v58 = v41;
  v109 = a4;
  v59 = v127;
  v60 = v42;
  v61 = a7;
  v110 = a7;
  sub_1007ACB18(v56, v50, v58, a4, v127, v60, a7, v51, v150, v103, v53);
  v62 = v131;
  v115 = swift_getWitnessTable();
  sub_100663950();
  v63 = *(v138 + 8);
  v116 = v138 + 8;
  v119 = v63;
  v63(v55, v62);
  v112 = *(v140 + 8);
  v111 = v112 ^ 1;
  v64 = v107;
  v108 = *(v107 + 116);
  v65 = *(v136 + 16);
  v66 = v140;
  v67 = v117;
  v65(v117, v140 + v108, v137);
  *(&v104 + 1) = v147;
  *&v104 = v148;
  v68 = v134;
  v69 = v67;
  v70 = v129;
  v71 = v128;
  sub_1007ACBD8(v69, v57, v149, a4, v59, v129, v61, v128, v134, v104, v146);
  v72 = v151;
  v113 = swift_getWitnessTable();
  sub_100663950();
  v73 = *(v143 + 8);
  v114 = (v143 + 8);
  v117 = v73;
  (v73)(v68, v72);
  v74 = v122;
  (*(v124 + 16))(v122, v66 + *(v64 + 120), v70);
  v75 = v66 + v108;
  v76 = v120;
  v77 = v137;
  v65(v120, v75, v137);
  v78 = v127;
  LOBYTE(a4) = (*(*(v127 - 1) + 48))(v76, 1, v127) != 1;
  (*(v136 + 8))(v76, v77);
  *&v105 = v71;
  *(&v105 + 1) = v148;
  v79 = v121;
  sub_1007ACC98(v74, a4, v130, v149, v109, v78, v70, v110, v121, v105, v147, v146);
  v80 = v144;
  v148 = swift_getWitnessTable();
  v81 = v123;
  sub_100663950();
  v82 = v125;
  v149 = *(v125 + 8);
  v149(v79, v80);
  v83 = v135;
  v84 = v133;
  (*(v141 + 16))(v135, v139, v133);
  v161 = v83;
  v85 = v150;
  v86 = v132;
  v87 = v131;
  (*(v138 + 16))(v150, v132, v131);
  v158 = 0;
  v159 = v111;
  v160 = v112;
  v162 = v85;
  v163 = &v158;
  v88 = v68;
  v89 = v68;
  v90 = v142;
  v91 = v151;
  (*(v143 + 16))(v89, v142, v151);
  v164 = v88;
  v92 = *(v82 + 16);
  v93 = v145;
  v92(v145, v81, v80);
  v165 = v93;
  v157[0] = v84;
  v157[1] = v87;
  v157[2] = sub_10010FC20(&qword_1011A2EE0, &qword_100EE2FE0);
  v157[3] = v91;
  v157[4] = v80;
  v152 = WitnessTable;
  v153 = v115;
  v154 = sub_1007B64B0();
  v155 = v113;
  v156 = v148;
  sub_1006769F4(&v161, 5uLL, v157);
  v94 = v80;
  v95 = v149;
  v149(v81, v94);
  v96 = v91;
  v97 = v117;
  (v117)(v90, v96);
  v98 = v87;
  v99 = v119;
  v119(v86, v87);
  v100 = *(v141 + 8);
  v101 = v133;
  v100(v139, v133);
  v95(v145, v144);
  v97(v134, v151);
  v99(v150, v98);
  return (v100)(v135, v101);
}