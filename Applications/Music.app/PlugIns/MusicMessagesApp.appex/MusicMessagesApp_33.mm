uint64_t sub_100339B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100640848, &qword_10052D360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100339BA0()
{
  v1 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_100004CB8(&unk_100641A80, &qword_10052C458);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 11, v3))
  {
    v4 = sub_1004DCEEC();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  return swift_deallocObject();
}

double sub_100339D1C@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ArtworkImage.Placeholder(0);

  return sub_10032DA90(a1);
}

double BadgedPunchOut.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_10033C9E0(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_100339E24(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1004D9C1C();
  return sub_1002D2FCC;
}

uint64_t sub_100339EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10033E51C();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100339F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10033E51C();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100339F74(uint64_t a1)
{
  v2 = sub_10033E51C();

  return Shape.body.getter(a1, v2);
}

uint64_t TextBadge.init(immersive:)(char a1)
{
  if (a1)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t TextBadge.view.getter(uint64_t a1)
{
  v1 = a1;
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:10.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  v11[3] = sub_1004DA1CC();
  v11[4] = &protocol witness table for TintShapeStyle;
  sub_1000357EC(v11);
  sub_1004DA1BC();
  v10 = v5;
  TextBadge.view(favoriteBadgeConfiguration:)(&v10, v1, v6);
  v8 = v7;
  sub_10033D3F4(&v10);
  return v8;
}

void TextBadge.view(favoriteBadgeConfiguration:)(void *a1, char a2, __n128 a3)
{
  if (a2 != 2)
  {
    if (a2 == 3)
    {
      sub_100035868((a1 + 1), v58);
      sub_100008C70(v58, v58[3]);
      String.nonBreakingSpace.unsafeMutableAddressor();

      v24 = sub_1004DD3FC();
      v25 = [objc_opt_self() systemImageNamed:v24];

      if (v25)
      {
        v26 = [v25 imageWithConfiguration:*a1];

        v27 = [v26 imageWithRenderingMode:2];
        sub_1004DB8DC();
        v28 = sub_1004DB35C();
        v30 = v29;
        v32 = v31;
        v33 = sub_1004DB27C();
        v35 = v34;
        v37 = v36;
        sub_100051E10(v28, v30, v32 & 1);

        v38 = sub_1004DB24C();
        v40 = v39;
        v42 = v41;
        v44 = v43;
        sub_100051E10(v33, v35, v37 & 1);

        v45 = AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor();
        v46 = *v45;
        v47 = v45[1];

        Text.accessibilityLabel(_:)(v46, v47, v38, v40, v42 & 1, v44);

        sub_100051E10(v38, v40, v42 & 1);

        sub_100008D24(v58);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (a2 == 4)
      {
        String.nonBreakingSpace.unsafeMutableAddressor();

        sub_1004DB90C();
        v3 = sub_1004DB35C();
        v5 = v4;
        v7 = v6;
        v8 = sub_1004DB27C();
        v10 = v9;
        v12 = v11;
        sub_100051E10(v3, v5, v7 & 1);

        LODWORD(v58[0]) = sub_1004DAC1C();
        v13 = sub_1004DB24C();
        v15 = v14;
        v17 = v16;
        v19 = v18;
        sub_100051E10(v8, v10, v12 & 1);

        v20 = AccessibilityString.immersiveBadgeLabel.unsafeMutableAddressor();
        v21 = *v20;
        v22 = v20[1];

        Text.accessibilityLabel(_:)(v21, v22, v13, v15, v17 & 1, v19);

        sub_100051E10(v13, v15, v17 & 1);
      }

      else
      {
        v49 = String.nonBreakingSpace.unsafeMutableAddressor();
        v51 = *v49;
        v50 = v49[1];
        v56 = v51;
        v57 = v50;

        v52 = (*ExplicitRestrictionsController.shared.unsafeMutableAddressor() + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
        swift_beginAccess();
        v54 = *v52;
        v53 = v52[1];

        v59._countAndFlagsBits = v54;
        v59._object = v53;
        sub_1004DD5FC(v59);

        v55 = v56;
        LODWORD(v56) = sub_1004DAC1C();
        Text.playableForegroundStyle<A>(_:isPlayable:)(&v56, a2 & 1, v55, v57, 0, _swiftEmptyArrayStorage, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle);
      }
    }
  }
}

uint64_t static FavoriteBadgeConfiguration.default.getter@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:10.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  a1[4] = sub_1004DA1CC();
  a1[5] = &protocol witness table for TintShapeStyle;
  sub_1000357EC(a1 + 1);
  result = sub_1004DA1BC();
  *a1 = v5;
  return result;
}

uint64_t sub_10033A634()
{
  v1 = 0x7974706D65;
  v2 = 0x657469726F766166;
  if (*v0 != 2)
  {
    v2 = 0x76697372656D6D69;
  }

  if (*v0)
  {
    v1 = 0x746963696C707865;
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

uint64_t sub_10033A6B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10033D5C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10033A6D8(uint64_t a1)
{
  v2 = sub_10033D424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033A714(uint64_t a1)
{
  v2 = sub_10033D424();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10033A750(uint64_t a1)
{
  v2 = sub_10033D574();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033A78C(uint64_t a1)
{
  v2 = sub_10033D574();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10033A7E4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x626179616C507369 && a2 == 0xEA0000000000656CLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1004DF08C();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_10033A874(uint64_t a1)
{
  v2 = sub_10033D520();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033A8B0(uint64_t a1)
{
  v2 = sub_10033D520();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10033A8EC(uint64_t a1)
{
  v2 = sub_10033D4CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033A928(uint64_t a1)
{
  v2 = sub_10033D4CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10033A964(uint64_t a1)
{
  v2 = sub_10033D478();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033A9A0(uint64_t a1)
{
  v2 = sub_10033D478();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TextBadge.encode(to:)(void *a1, int a2)
{
  v31 = a2;
  v3 = sub_100004CB8(&qword_1006408B8, &qword_10052D3F0);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin();
  v28 = &v22 - v4;
  v5 = sub_100004CB8(&qword_1006408C0, &qword_10052D3F8);
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin();
  v24 = &v22 - v6;
  v25 = sub_100004CB8(&qword_1006408C8, &qword_10052D400);
  v23 = *(v25 - 8);
  __chkstk_darwin();
  v8 = &v22 - v7;
  v9 = sub_100004CB8(&qword_1006408D0, &qword_10052D408);
  v22 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v22 - v10;
  v12 = sub_100004CB8(&qword_1006408D8, &qword_10052D410);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v22 - v14;
  sub_100008C70(a1, a1[3]);
  sub_10033D424();
  v16 = v31;
  sub_1004DF30C();
  switch(v16)
  {
    case 2:
      v32 = 0;
      sub_10033D574();
      sub_1004DEEEC();
      (*(v22 + 8))(v11, v9);
      return (*(v13 + 8))(v15, v12);
    case 3:
      v34 = 2;
      sub_10033D4CC();
      v17 = v24;
      sub_1004DEEEC();
      v19 = v26;
      v18 = v27;
      goto LABEL_6;
    case 4:
      v35 = 3;
      sub_10033D478();
      v17 = v28;
      sub_1004DEEEC();
      v19 = v29;
      v18 = v30;
LABEL_6:
      (*(v19 + 8))(v17, v18);
      return (*(v13 + 8))(v15, v12);
  }

  v33 = 1;
  sub_10033D520();
  sub_1004DEEEC();
  v21 = v25;
  sub_1004DEF2C();
  (*(v23 + 8))(v8, v21);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_10033AE88@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10033D730(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t GenericMusicItem.favoriteBadge.getter()
{
  v1 = v0;
  v58 = sub_1004D966C();
  v56 = *(v58 - 8);
  __chkstk_darwin();
  v57 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004DCB3C();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin();
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DD05C();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin();
  v62 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004DC95C();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin();
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DC2DC();
  isa = v10[-1].isa;
  v67 = v10;
  __chkstk_darwin();
  v65 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100640908, &qword_10052D418);
  __chkstk_darwin();
  v13 = &v53 - v12;
  v14 = sub_1004DCA0C();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004D8BFC();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v54 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin();
  v23 = &v53 - v22;
  v24 = *(v19 + 16);
  v55 = v1;
  v25 = v1;
  v26 = v24;
  (v24)(&v53 - v22, v25, v18, v21);
  v27 = (*(v19 + 88))(v23, v18);
  if (v27 != enum case for GenericMusicItem.album(_:))
  {
    if (v27 == enum case for GenericMusicItem.artist(_:))
    {
      (*(v19 + 96))(v23, v18);
      v31 = v68;
      v30 = v69;
      (*(v68 + 32))(v5, v23, v69);
      sub_1004DCACC();
      v32 = sub_1004D8CFC();
      (*(*(v32 - 8) + 56))(v13, 0, 1, v32);
      v29 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v13);
      (*(v31 + 8))(v5, v30);
      return v29;
    }

    if (v27 == enum case for GenericMusicItem.composer(_:) || v27 == enum case for GenericMusicItem.creditArtist(_:) || v27 == enum case for GenericMusicItem.curator(_:) || v27 == enum case for GenericMusicItem.editorialItem(_:) || v27 == enum case for GenericMusicItem.genre(_:) || v27 == enum case for GenericMusicItem.musicMovie(_:))
    {
      goto LABEL_32;
    }

    if (v27 == enum case for GenericMusicItem.musicVideo(_:))
    {
      (*(v19 + 96))(v23, v18);
      v33 = v65;
      v34 = isa;
      v35 = v67;
      (*(isa + 4))(v65, v23, v67);
      sub_1004DC27C();
LABEL_15:
      v36 = sub_1004D8CFC();
      (*(*(v36 - 8) + 56))(v13, 0, 1, v36);
      v29 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v13);
      (*(v34 + 1))(v33, v35);
      return v29;
    }

    if (v27 == enum case for GenericMusicItem.playlist(_:))
    {
      (*(v19 + 96))(v23, v18);
      v33 = v62;
      v34 = v63;
      v35 = v64;
      v63[4](v62, v23, v64);
      sub_1004DCE4C();
      goto LABEL_15;
    }

    if (v27 == enum case for GenericMusicItem.playlistFolder(_:) || v27 == enum case for GenericMusicItem.radioShow(_:) || v27 == enum case for GenericMusicItem.recordLabel(_:) || v27 == enum case for GenericMusicItem.socialProfile(_:))
    {
      goto LABEL_32;
    }

    if (v27 == enum case for GenericMusicItem.song(_:))
    {
      (*(v19 + 96))(v23, v18);
      v33 = v59;
      v34 = v60;
      v35 = v61;
      v60[4](v59, v23, v61);
      sub_1004DC84C();
      goto LABEL_15;
    }

    if (v27 == enum case for GenericMusicItem.station(_:) || v27 == enum case for GenericMusicItem.tvEpisode(_:) || v27 == enum case for GenericMusicItem.tvSeason(_:) || v27 == enum case for GenericMusicItem.tvShow(_:) || v27 == enum case for GenericMusicItem.uploadedAudio(_:) || v27 == enum case for GenericMusicItem.uploadedVideo(_:) || v27 == enum case for GenericMusicItem.other(_:))
    {
LABEL_32:
      (*(v19 + 8))(v23, v18);
    }

    else
    {
      v37 = Logger.badging.unsafeMutableAddressor();
      v39 = v56;
      v38 = v57;
      v40 = v58;
      (*(v56 + 16))(v57, v37, v58);
      v41 = v54;
      v26(v54, v55, v18);
      v42 = sub_1004D964C();
      v43 = sub_1004DDF8C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        LODWORD(v68) = v43;
        v45 = v44;
        v69 = swift_slowAlloc();
        v70 = v69;
        *v45 = 136315394;
        *(v45 + 4) = sub_1002E5CC4(0xD000000000000010, 0x80000001004F5210, &v70);
        *(v45 + 12) = 2080;
        sub_10033E570(&qword_10063E770, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
        v46 = sub_1004DEFFC();
        v48 = v47;
        v49 = *(v19 + 8);
        v67 = v42;
        v49(v41, v18);
        v50 = sub_1002E5CC4(v46, v48, &v70);

        *(v45 + 14) = v50;
        v51 = v67;
        _os_log_impl(&_mh_execute_header, v67, v68, "Unhandled case for favorite badge with item: %s, %s", v45, 0x16u);
        swift_arrayDestroy();

        (*(v39 + 8))(v57, v58);
      }

      else
      {

        v49 = *(v19 + 8);
        v49(v41, v18);
        (*(v39 + 8))(v38, v40);
      }

      v49(v23, v18);
    }

    return 2;
  }

  (*(v19 + 96))(v23, v18);
  (*(v15 + 32))(v17, v23, v14);
  sub_1004DC97C();
  v28 = sub_1004D8CFC();
  (*(*(v28 - 8) + 56))(v13, 0, 1, v28);
  v29 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v13);
  (*(v15 + 8))(v17, v14);
  return v29;
}

uint64_t GenericMusicItem.explicitBadge(_:)(int a1)
{
  LODWORD(v96) = a1;
  v68 = sub_1004D966C();
  v67 = *(v68 - 8);
  __chkstk_darwin();
  v66 = &v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1004D924C();
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v75 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004D8FEC();
  v93 = *(v3 - 8);
  v94 = v3;
  __chkstk_darwin();
  v92 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1004D91EC();
  v73 = *(v74 - 8);
  __chkstk_darwin();
  v72 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100640910, &qword_10052D420);
  __chkstk_darwin();
  v95 = &v62 - v6;
  v7 = sub_1004D92AC();
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin();
  v78 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1004D916C();
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v63 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1004D911C();
  v70 = *(v71 - 8);
  __chkstk_darwin();
  v69 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004DD05C();
  v88 = *(v11 - 8);
  v89 = v11;
  __chkstk_darwin();
  v87 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DCD1C();
  v82 = *(v13 - 8);
  v83 = v13;
  __chkstk_darwin();
  v81 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004DC95C();
  v85 = *(v15 - 8);
  v86 = v15;
  __chkstk_darwin();
  v84 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004DC2DC();
  v90 = *(v17 - 8);
  v91 = v17;
  __chkstk_darwin();
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100640918, &qword_10052D428);
  __chkstk_darwin();
  v21 = &v62 - v20;
  v22 = sub_1004DCA0C();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1004D8BFC();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v62 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin();
  v31 = &v62 - v30;
  v32 = *(v27 + 16);
  v32(&v62 - v30, v97, v26, v29);
  v33 = (*(v27 + 88))(v31, v26);
  if (v33 != enum case for GenericMusicItem.album(_:))
  {
    v35 = v96;
    if (v33 == enum case for GenericMusicItem.artist(_:) || v33 == enum case for GenericMusicItem.composer(_:) || v33 == enum case for GenericMusicItem.creditArtist(_:) || v33 == enum case for GenericMusicItem.curator(_:) || v33 == enum case for GenericMusicItem.editorialItem(_:) || v33 == enum case for GenericMusicItem.genre(_:))
    {
      goto LABEL_37;
    }

    if (v33 == enum case for GenericMusicItem.musicMovie(_:))
    {
      (*(v27 + 96))(v31, v26);
      v36 = v92;
      v37 = v93;
      v38 = v94;
      (*(v93 + 32))(v92, v31, v94);
      v39 = v95;
      sub_1004D8FAC();
LABEL_11:
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(v39, v35 & 1);
      (*(v37 + 8))(v36, v38);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.musicVideo(_:))
    {
      (*(v27 + 96))(v31, v26);
      v41 = v90;
      v40 = v91;
      (*(v90 + 32))(v19, v31, v91);
      sub_1004DC29C();
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v21, v35 & 1);
      (*(v41 + 8))(v19, v40);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.playlist(_:))
    {
      (*(v27 + 96))(v31, v26);
      v42 = v87;
      v43 = v88;
      v44 = v89;
      (*(v88 + 32))(v87, v31, v89);
      sub_1004DCE3C();
LABEL_16:
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v21, v35 & 1);
      (*(v43 + 8))(v42, v44);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.playlistFolder(_:) || v33 == enum case for GenericMusicItem.radioShow(_:) || v33 == enum case for GenericMusicItem.recordLabel(_:) || v33 == enum case for GenericMusicItem.socialProfile(_:))
    {
      goto LABEL_37;
    }

    if (v33 == enum case for GenericMusicItem.song(_:))
    {
      (*(v27 + 96))(v31, v26);
      v42 = v84;
      v43 = v85;
      v44 = v86;
      (*(v85 + 32))(v84, v31, v86);
      sub_1004DC8CC();
      goto LABEL_16;
    }

    if (v33 == enum case for GenericMusicItem.station(_:))
    {
      (*(v27 + 96))(v31, v26);
      v45 = v81;
      v46 = v82;
      v47 = v83;
      (*(v82 + 32))(v81, v31, v83);
      sub_1004DCCDC();
LABEL_25:
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v21, v35 & 1);
      (*(v46 + 8))(v45, v47);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v27 + 96))(v31, v26);
      v36 = v78;
      v37 = v79;
      v38 = v80;
      (*(v79 + 32))(v78, v31, v80);
      v39 = v95;
      sub_1004D925C();
      goto LABEL_11;
    }

    if (v33 == enum case for GenericMusicItem.tvSeason(_:))
    {
      (*(v27 + 96))(v31, v26);
      v48 = v76;
      v49 = v75;
      v50 = v77;
      (*(v76 + 32))(v75, v31, v77);
      v51 = v95;
      sub_1004D920C();
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(v51, v35 & 1);
      (*(v48 + 8))(v49, v50);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v27 + 96))(v31, v26);
      v37 = v73;
      v36 = v72;
      v38 = v74;
      (*(v73 + 32))(v72, v31, v74);
      v39 = v95;
      sub_1004D91AC();
      goto LABEL_11;
    }

    if (v33 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v27 + 96))(v31, v26);
      v46 = v70;
      v45 = v69;
      v47 = v71;
      (*(v70 + 32))(v69, v31, v71);
      sub_1004D90DC();
      goto LABEL_25;
    }

    if (v33 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v27 + 96))(v31, v26);
      v46 = v64;
      v45 = v63;
      v47 = v65;
      (*(v64 + 32))(v63, v31, v65);
      sub_1004D912C();
      goto LABEL_25;
    }

    if (v33 == enum case for GenericMusicItem.other(_:))
    {
LABEL_37:
      (*(v27 + 8))(v31, v26);
    }

    else
    {
      v53 = Logger.badging.unsafeMutableAddressor();
      (*(v67 + 16))(v66, v53, v68);
      (v32)(v62, v97, v26);
      v54 = sub_1004D964C();
      LODWORD(v97) = sub_1004DDF5C();
      if (os_log_type_enabled(v54, v97))
      {
        v55 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v98 = v96;
        *v55 = 136315394;
        *(v55 + 4) = sub_1002E5CC4(0xD000000000000010, 0x80000001004F5210, &v98);
        *(v55 + 12) = 2080;
        sub_10033E570(&qword_10063E770, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
        v56 = v62;
        v57 = sub_1004DEFFC();
        v59 = v58;
        v60 = *(v27 + 8);
        v60(v56, v26);
        v61 = sub_1002E5CC4(v57, v59, &v98);

        *(v55 + 14) = v61;
        _os_log_impl(&_mh_execute_header, v54, v97, "Unhandled case for explicit badge with item: %s, %s", v55, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v60 = *(v27 + 8);
        v60(v62, v26);
      }

      (*(v67 + 8))(v66, v68);
      v60(v31, v26);
    }

    return 2;
  }

  (*(v27 + 96))(v31, v26);
  (*(v23 + 32))(v25, v31, v22);
  sub_1004DC9CC();
  v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v21, v96 & 1);
  (*(v23 + 8))(v25, v22);
  return v34;
}

double sub_10033C9E0@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1004DB20C();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetHeight(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinX(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMaxY(v18);
  sub_1004DB1DC();
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMinX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinY(v20);
  sub_1004DB1FC();
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMaxX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);
  sub_1004DB1FC();
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetMaxX(v23);
  sub_1004DB1FC();
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetMaxY(v24);
  sub_1004DB1EC();
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMinX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMaxY(v26);
  sub_1004DB1FC();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(uint64_t a1, int a2)
{
  v21 = a2;
  v3 = sub_1004DC81C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100004CB8(&qword_1006409D0, &unk_10052DA88) - 8;
  __chkstk_darwin();
  v9 = &v20[-v8];
  sub_100004CB8(&qword_100640918, &qword_10052D428);
  __chkstk_darwin();
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin();
  v14 = &v20[-v13];
  (*(v4 + 104))(&v20[-v13], enum case for ContentRating.explicit(_:), v3, v12);
  (*(v4 + 56))(v14, 0, 1, v3);
  v15 = *(v7 + 56);
  sub_1000108DC(a1, v9, &qword_100640918, &qword_10052D428);
  sub_1000108DC(v14, &v9[v15], &qword_100640918, &qword_10052D428);
  v16 = *(v4 + 48);
  if (v16(v9, 1, v3) != 1)
  {
    sub_1000108DC(v9, v11, &qword_100640918, &qword_10052D428);
    if (v16(&v9[v15], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v9[v15], v3);
      sub_10033E570(&qword_1006409D8, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
      v18 = sub_1004DD35C();
      sub_10001074C(a1, &qword_100640918, &qword_10052D428);
      v19 = *(v4 + 8);
      v19(v6, v3);
      sub_10001074C(v14, &qword_100640918, &qword_10052D428);
      v19(v11, v3);
      sub_10001074C(v9, &qword_100640918, &qword_10052D428);
      if (v18)
      {
        return v21 & 1;
      }

      return 2;
    }

    sub_10001074C(a1, &qword_100640918, &qword_10052D428);
    sub_10001074C(v14, &qword_100640918, &qword_10052D428);
    (*(v4 + 8))(v11, v3);
LABEL_6:
    sub_10001074C(v9, &qword_1006409D0, &unk_10052DA88);
    return 2;
  }

  sub_10001074C(a1, &qword_100640918, &qword_10052D428);
  sub_10001074C(v14, &qword_100640918, &qword_10052D428);
  if (v16(&v9[v15], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_10001074C(v9, &qword_100640918, &qword_10052D428);
  return v21 & 1;
}

uint64_t _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(uint64_t a1, char a2)
{
  sub_100004CB8(&qword_100640910, &qword_10052D420);
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = sub_1004D918C();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000108DC(a1, v5, &qword_100640910, &qword_10052D420);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10001074C(a1, &qword_100640910, &qword_10052D420);
    sub_10001074C(v5, &qword_100640910, &qword_10052D420);
    return 2;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v11 = sub_1004D917C();
    sub_10001074C(a1, &qword_100640910, &qword_10052D420);
    (*(v7 + 8))(v9, v6);
    result = 2;
    if (v11 != 2)
    {
      if (v11)
      {
        return a2 & 1;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(uint64_t a1)
{
  sub_100004CB8(&qword_100640908, &qword_10052D418);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v11 - v4;
  sub_1000108DC(a1, &v11 - v4, &qword_100640908, &qword_10052D418);
  v6 = sub_1004D8CFC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_1000108DC(v5, v3, &qword_100640908, &qword_10052D418);
    v8 = (*(v7 + 88))(v3, v6);
    if (v8 != enum case for MusicFavoriteStatus.neutral(_:))
    {
      if (v8 == enum case for MusicFavoriteStatus.favorited(_:))
      {
        v9 = 3;
        goto LABEL_4;
      }

      if (v8 != enum case for MusicFavoriteStatus.disliked(_:))
      {
        (*(v7 + 8))(v3, v6);
      }
    }
  }

  v9 = 2;
LABEL_4:
  sub_10001074C(v5, &qword_100640908, &qword_10052D418);
  sub_10001074C(a1, &qword_100640908, &qword_10052D418);
  return v9;
}

unint64_t sub_10033D424()
{
  result = qword_1006408E0;
  if (!qword_1006408E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006408E0);
  }

  return result;
}

unint64_t sub_10033D478()
{
  result = qword_1006408E8;
  if (!qword_1006408E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006408E8);
  }

  return result;
}

unint64_t sub_10033D4CC()
{
  result = qword_1006408F0;
  if (!qword_1006408F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006408F0);
  }

  return result;
}

unint64_t sub_10033D520()
{
  result = qword_1006408F8;
  if (!qword_1006408F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006408F8);
  }

  return result;
}

unint64_t sub_10033D574()
{
  result = qword_100640900;
  if (!qword_100640900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640900);
  }

  return result;
}

uint64_t sub_10033D5C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_1004DF08C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xE800000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xE800000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x76697372656D6D69 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004DF08C();

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

uint64_t sub_10033D730(void *a1)
{
  v39 = sub_100004CB8(&qword_1006409A8, &qword_10052DA58);
  v43 = *(v39 - 8);
  __chkstk_darwin();
  v42 = &v32 - v2;
  v38 = sub_100004CB8(&qword_1006409B0, &qword_10052DA60);
  v40 = *(v38 - 8);
  __chkstk_darwin();
  v41 = &v32 - v3;
  v4 = sub_100004CB8(&qword_1006409B8, &qword_10052DA68);
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  __chkstk_darwin();
  v7 = &v32 - v6;
  v8 = sub_100004CB8(&qword_1006409C0, &qword_10052DA70);
  v35 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v32 - v9;
  v11 = sub_100004CB8(&qword_1006409C8, &unk_10052DA78);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v32 - v13;
  v15 = a1[3];
  v45 = a1;
  sub_100008C70(a1, v15);
  sub_10033D424();
  v16 = v44;
  sub_1004DF2FC();
  if (!v16)
  {
    v17 = v10;
    v33 = v8;
    v34 = v7;
    v19 = v41;
    v18 = v42;
    v20 = v43;
    v44 = v12;
    v21 = sub_1004DEEDC();
    v22 = (2 * *(v21 + 16)) | 1;
    v46 = v21;
    v47 = v21 + 32;
    v48 = 0;
    v49 = v22;
    v23 = sub_100332660();
    if (v23 == 4 || v48 != v49 >> 1)
    {
      v12 = sub_1004DEB5C();
      swift_allocError();
      v24 = v11;
      v26 = v25;
      sub_100004CB8(&qword_1006402B8, &qword_10052C5D0);
      *v26 = &type metadata for TextBadge;
      sub_1004DEE5C();
      sub_1004DEB4C();
      (*(*(v12 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v12);
      swift_willThrow();
      (*(v44 + 8))(v14, v24);
      swift_unknownObjectRelease();
    }

    else if (v23 > 1u)
    {
      v28 = v44;
      if (v23 == 2)
      {
        v50 = 2;
        sub_10033D4CC();
        sub_1004DEE4C();
        (*(v40 + 8))(v19, v38);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v12 = 3;
      }

      else
      {
        v50 = 3;
        sub_10033D478();
        sub_1004DEE4C();
        (*(v20 + 8))(v18, v39);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v12 = 4;
      }
    }

    else if (v23)
    {
      v50 = 1;
      sub_10033D520();
      v29 = v34;
      sub_1004DEE4C();
      v30 = v36;
      v31 = sub_1004DEE9C();
      (*(v37 + 8))(v29, v30);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v12 = v31 & 1;
    }

    else
    {
      v50 = 0;
      sub_10033D574();
      sub_1004DEE4C();
      (*(v35 + 8))(v17, v33);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v12 = 2;
    }
  }

  sub_100008D24(v45);
  return v12;
}

unint64_t sub_10033DE10()
{
  result = qword_100640920;
  if (!qword_100640920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640920);
  }

  return result;
}

unint64_t sub_10033DE68()
{
  result = qword_100640928;
  if (!qword_100640928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640928);
  }

  return result;
}

unint64_t sub_10033DEC0()
{
  result = qword_100640930;
  if (!qword_100640930)
  {
    sub_100008DE4(&qword_100640938, &qword_10052D4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640930);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextBadge(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TextBadge(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_10033E100()
{
  result = qword_100640940;
  if (!qword_100640940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640940);
  }

  return result;
}

unint64_t sub_10033E158()
{
  result = qword_100640948;
  if (!qword_100640948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640948);
  }

  return result;
}

unint64_t sub_10033E1B0()
{
  result = qword_100640950;
  if (!qword_100640950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640950);
  }

  return result;
}

unint64_t sub_10033E208()
{
  result = qword_100640958;
  if (!qword_100640958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640958);
  }

  return result;
}

unint64_t sub_10033E260()
{
  result = qword_100640960;
  if (!qword_100640960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640960);
  }

  return result;
}

unint64_t sub_10033E2B8()
{
  result = qword_100640968;
  if (!qword_100640968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640968);
  }

  return result;
}

unint64_t sub_10033E310()
{
  result = qword_100640970;
  if (!qword_100640970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640970);
  }

  return result;
}

unint64_t sub_10033E368()
{
  result = qword_100640978;
  if (!qword_100640978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640978);
  }

  return result;
}

unint64_t sub_10033E3C0()
{
  result = qword_100640980;
  if (!qword_100640980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640980);
  }

  return result;
}

unint64_t sub_10033E418()
{
  result = qword_100640988;
  if (!qword_100640988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640988);
  }

  return result;
}

unint64_t sub_10033E470()
{
  result = qword_100640990;
  if (!qword_100640990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640990);
  }

  return result;
}

unint64_t sub_10033E4C8()
{
  result = qword_100640998;
  if (!qword_100640998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640998);
  }

  return result;
}

unint64_t sub_10033E51C()
{
  result = qword_1006409A0;
  if (!qword_1006409A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006409A0);
  }

  return result;
}

uint64_t sub_10033E570(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id CNSwiftUIAvatarView.makeUIView(context:)(uint64_t a1, uint64_t a2, NSString a3)
{
  v4 = [objc_opt_self() defaultSettings];
  v5 = [objc_allocWithZone(CNAvatarView) initWithSettings:v4];

  sub_100004CB8(&qword_100642970, &qword_100529AD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100511AB0;
  if (a3)
  {
    a3 = sub_1004DD3FC();
  }

  v7 = [objc_opt_self() contactWithDisplayName:a3 handleStrings:0];

  *(v6 + 32) = v7;
  sub_10033E7D8();
  isa = sub_1004DD85C().super.isa;

  [v5 setContacts:isa];

  return v5;
}

void CNSwiftUIAvatarView.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3, NSString a4)
{
  sub_100004CB8(&qword_100642970, &qword_100529AD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100511AB0;
  if (a4)
  {
    a4 = sub_1004DD3FC();
  }

  v7 = [objc_opt_self() contactWithDisplayName:a4 handleStrings:0];

  *(v6 + 32) = v7;
  sub_10033E7D8();
  isa = sub_1004DD85C().super.isa;

  [a1 setContacts:isa];
}

unint64_t sub_10033E7D8()
{
  result = qword_1006409E0;
  if (!qword_1006409E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006409E0);
  }

  return result;
}

uint64_t sub_10033E858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10033E958();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10033E8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10033E958();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10033E920(uint64_t a1)
{
  sub_10033E958();
  sub_1004DAA7C();
  __break(1u);
}

unint64_t sub_10033E958()
{
  result = qword_1006409E8;
  if (!qword_1006409E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006409E8);
  }

  return result;
}

id Card.ViewController.init(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *((swift_isaMask & *v4) + 0x50);
  v8 = *((swift_isaMask & *v4) + 0x58);
  type metadata accessor for Card.ViewController.RootViewController(0, v7, v8, a4);
  v12 = sub_100340478(a1, v9, v10, v11);
  *&v5[qword_1006409F0] = v12;
  v25.receiver = v5;
  v25.super_class = type metadata accessor for Card.ViewController(0, v7, v8, v13);
  v14 = v12;
  v15 = objc_msgSendSuper2(&v25, "initWithRootViewController:", v14);
  [v15 setModalPresentationStyle:{2, v25.receiver, v25.super_class}];
  v16 = [v15 sheetPresentationController];

  if (v16)
  {
    v17 = [objc_opt_self() systemBackgroundColor];
    [v16 _setNonLargeBackground:v17];

    sub_100004CB8(&qword_100642970, &qword_100529AD0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100511AB0;
    sub_100006F10(0, &qword_1006409F8, UISheetPresentationControllerDetent_ptr);
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    *(v19 + 24) = v15;
    v20 = v14;
    v21 = v15;
    v22 = sub_1004DE39C();

    *(v18 + 32) = v22;
    isa = sub_1004DD85C().super.isa;

    [v16 setDetents:isa];

    [v16 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    (*(*(v7 - 8) + 8))(a1, v7);
  }

  else
  {
    (*(*(v7 - 8) + 8))(a1, v7);
  }

  return v15;
}

id sub_10033ECB8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10033F9A8(0, 1);
  v5 = v4;
  result = [a3 view];
  if (*&result == 0.0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    [result safeAreaInsets];
    v9 = v8;

    *&result = v5 - v9;
  }

  return result;
}

Swift::Void __swiftcall Card.ViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Card.ViewController(0, *((swift_isaMask & *v0) + 0x50), *((swift_isaMask & *v0) + 0x58), v2);
  v5.receiver = v0;
  v5.super_class = v3;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  sub_10033F9A8(0, 1);
  [v0 setPreferredContentSize:?];
  sub_100004CB8(qword_100640A00, &unk_100532090);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100511DA0;
  *(v4 + 32) = sub_1004D999C();
  *(v4 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1004DE06C();
  swift_unknownObjectRelease();
}

void sub_10033EF18(void *a1)
{
  v1 = a1;
  Card.ViewController.viewDidLoad()();
}

id Card.ViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v7 = *v3;
  v8 = swift_isaMask;
  sub_10033F9A8(*&a2, 0);
  [v3 setPreferredContentSize:?];
  v10 = type metadata accessor for Card.ViewController(0, *((v8 & v7) + 0x50), *((v8 & v7) + 0x58), v9);
  v12.receiver = v3;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void sub_10033F034(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  Card.ViewController.viewWillTransition(to:with:)(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_10033F0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Card.ViewController.RootViewController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v14.receiver = v4;
  v14.super_class = v5;
  objc_msgSendSuper2(&v14, "viewDidLoad");
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    v8 = sub_10033F5AC();
    [v7 addSubview:v8];

    v9 = *(v4 + qword_100640A88);
    v10 = *(v4 + qword_100640A98);
    v11 = v9;
    v12 = [v10 view];
    if (v12)
    {
      v13 = v12;
      [v11 addSubview:v12];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10033F218(void *a1)
{
  v4 = a1;
  sub_10033F0F0(v4, v1, v2, v3);
}

id sub_10033F260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for Card.ViewController.RootViewController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v60.receiver = v4;
  v60.super_class = v6;
  objc_msgSendSuper2(&v60, "viewDidLayoutSubviews");
  sub_10033F7F8();
  v8 = v7;
  v9 = *&v4[qword_100640A98];
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  [result bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v61.origin.x = v13;
  v61.origin.y = v15;
  v61.size.width = v17;
  v61.size.height = v19;
  CGRectGetWidth(v61);
  sub_10033F7F8();
  sub_1004DE34C();
  sub_1004DA97C();
  v59 = v20;
  v22 = v21;

  result = [v5 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v23 = result;
  [result bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v62.origin.x = v25;
  v62.origin.y = v27;
  v62.size.width = v29;
  v62.size.height = v31;
  Height = CGRectGetHeight(v62);
  sub_10033F748(Height < v22);
  v34 = v33;
  v35 = sub_10033F5AC();
  result = [v5 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v36 = result;
  v37 = v8 + v34;
  [result bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v63.origin.x = v39;
  v63.origin.y = v41;
  v63.size.width = v43;
  v63.size.height = v45;
  Width = CGRectGetWidth(v63);
  sub_1004DE35C();
  [v35 setContentSize:{Width, v22 + v47}];

  result = [*&v5[qword_100640A98] view];
  if (result)
  {
    v48 = result;
    v49 = qword_100640A88;
    v50 = *&v5[qword_100640A88];
    sub_1004DE3BC(0.0, v37, v59, v22);
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    [v48 setFrame:{v52, v54, v56, v58}];
    return [*&v5[v49] _setPocketsEnabled:Height < v22];
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_10033F564(void *a1)
{
  v4 = a1;
  sub_10033F260(v4, v1, v2, v3);
}

id sub_10033F5AC()
{
  v1 = qword_100640A88;
  v2 = *&v0[qword_100640A88];
  if (v2)
  {
    v3 = *&v0[qword_100640A88];
  }

  else
  {
    v4 = sub_10033F610(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10033F610(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [objc_allocWithZone(UIScrollView) initWithFrame:{v4, v6, v8, v10}];
    [v11 setShowsVerticalScrollIndicator:0];
    [v11 setShowsHorizontalScrollIndicator:0];
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 clearColor];
    [v13 setBackgroundColor:v14];

    [v13 setAutoresizingMask:18];
    [v13 setContentInsetAdjustmentBehavior:2];
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10033F748(char a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6 || (v5 = 0.0, (a1 & 1) != 0))
  {
    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 safeAreaInsets];

      sub_10033F7F8();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10033F7F8()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 != 6)
  {
    v3 = [v0 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      v5 = [v0 presentationController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 containerView];

        if (v7)
        {
          v8 = [v7 superview];

          if (v8)
          {
            [v8 _cornerRadius];
            v10 = v9;

            if (v10 > 0.0)
            {
              v11 = [v0 view];
              UIRoundToViewScale();
            }
          }
        }
      }
    }
  }

  v12 = [v0 traitCollection];
  [v12 userInterfaceIdiom];
}

void sub_10033F9A8(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = [v2 presentationController];
    if (!v4 || (v5 = v4, v6 = [v4 containerView], v5, !v6))
    {
      v7 = [v3 view];
      if (!v7)
      {
        goto LABEL_16;
      }

      v6 = v7;
    }

    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v39.origin.x = v9;
    v39.origin.y = v11;
    v39.size.width = v13;
    v39.size.height = v15;
    CGRectGetWidth(v39);
  }

  v16 = [v3 presentingViewController];
  if (v16 && (v17 = v16, v18 = [v16 traitCollection], v17, v18) || (v19 = objc_msgSend(v3, "presentationController")) != 0 && (v20 = v19, v18 = objc_msgSend(v19, "traitCollection"), v20, v18))
  {
    v21 = v18;
    [v21 horizontalSizeClass];
  }

  else
  {
    v21 = 0;
  }

  v22 = *&v3[qword_100640A98];
  sub_10033F7F8();
  sub_1004DE34C();
  sub_1004DA97C();
  v24 = v23;

  sub_10033F7F8();
  sub_1004DE35C();
  v26 = v25;
  v27 = [v3 view];
  if (v27)
  {
    v28 = v27;
    v29 = v24 + v26;
    [v27 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v40.origin.x = v31;
    v40.origin.y = v33;
    v40.size.width = v35;
    v40.size.height = v37;
    v38 = CGRectGetHeight(v40) < v29;
    sub_10033F748(v38);

    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_10033FC50(uint64_t a1)
{
  v2 = *(a1 + qword_100640A98);
}

id Card.ViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id Card.ViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController:a1];

  return v3;
}

void sub_10033FE30(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1003406B4();
}

id SyncedLyricsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1004DD3FC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_10033FF6C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *((swift_isaMask & *a1) + 0x50);
  v6 = *((swift_isaMask & *a1) + 0x58);
  v7 = a4;

  return a5(v5, v6);
}

id sub_100340008(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((swift_isaMask & *v1) + 0x50), *((swift_isaMask & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_100340090(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  sub_1004DAEAC();
  __chkstk_darwin();
  v6 = *((v5 & v4) + 0x50);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - v8;
  *(v2 + qword_100640A88) = 0;
  *(v2 + qword_100640A90) = 0x4079E00000000000;
  v10 = *((v5 & v4) + 0x58);
  sub_1004DA9DC();
  (*(v7 + 16))(v9, a1, v6);
  v11 = sub_1004DA9AC();
  sub_1004DAE9C();
  sub_1004DA98C();
  sub_1004DA99C();
  result = [v11 view];
  if (result)
  {
    v13 = result;
    v14 = objc_opt_self();
    v15 = [v14 clearColor];
    [v13 setBackgroundColor:v15];

    *(v2 + qword_100640A98) = v11;
    v17 = type metadata accessor for Card.ViewController.RootViewController(0, v6, v10, v16);
    v26.receiver = v2;
    v26.super_class = v17;
    v18 = v11;
    v19 = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
    result = [v19 view];
    if (result)
    {
      v20 = result;
      v21 = [v14 clearColor];
      [v20 setBackgroundColor:v21];

      [v19 addChildViewController:*&v19[qword_100640A98]];
      v22 = [v19 navigationItem];
      sub_100006F10(0, &qword_10063E8F8, UIBarButtonItem_ptr);
      sub_100006F10(0, &qword_10063E980, UIAction_ptr);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v24 = swift_allocObject();
      v24[2] = v6;
      v24[3] = v10;
      v24[4] = v23;
      v27.value.super.super.isa = sub_1004DE62C();
      v27.is_nil = 0;
      isa = sub_1004DDFDC(UIBarButtonSystemItemClose, v27, v28).super.super.isa;
      [v22 setLeftBarButtonItem:isa];

      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003404CC()
{

  return swift_deallocObject();
}

id sub_100340584(void *a1)
{
  sub_10033F9A8(0, 1);

  return [a1 setPreferredContentSize:?];
}

void sub_1003405D8()
{
  *(v0 + qword_100640A88) = 0;
  *(v0 + qword_100640A90) = 0x4079E00000000000;
  sub_1004DECCC();
  __break(1u);
}

uint64_t sub_100340784()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1003407BC()
{

  return swift_deallocObject();
}

uint64_t sub_100340800(uint64_t a1)
{
  sub_1004DD98C();
  sub_1004DBBCC();
  sub_1004DBB5C();
  return v2;
}

uint64_t sub_10034085C(uint64_t a1)
{
  sub_1004DD98C();
  sub_1004DBBCC();
  sub_1004DBB7C();
  return v2;
}

double sub_100340940(uint64_t a1)
{
  sub_100004CB8(&qword_100640D08, &unk_10052DE68);
  sub_1004DBB5C();
  return v2;
}

uint64_t CarouselView.init(items:scrollPosition:itemSize:horizontalSpacing:carouselToPageIndicatorSpacing:content:didSelect:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  v47 = a7;
  v48 = a8;
  v45 = a5;
  v46 = a6;
  v44 = a15;
  v43[0] = a17;
  v43[1] = a18;
  sub_1004DE7CC();
  __chkstk_darwin();
  v29 = v43 - v28;
  v49 = a16;
  v50 = a17;
  v51 = a18;
  v52 = a19;
  v30 = type metadata accessor for CarouselView(0, &v49);
  (*(*(a16 - 8) + 56))(v29, 1, 1, a16);
  property wrapper backing initializer of CarouselView.previousItem(v29);
  v31 = (a9 + v30[24]);
  v53 = 0;
  sub_1004DB9DC();
  v32 = v50;
  *v31 = v49;
  v31[1] = v32;
  v33 = [objc_opt_self() currentTraitCollection];
  v34 = [v33 userInterfaceIdiom];

  v35 = 8.0;
  if (v34 == 6)
  {
    v35 = 10.0;
  }

  v36 = (a9 + v30[22]);
  *(a9 + v30[25]) = v35;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  result = sub_100346848(a4, a9 + v30[17]);
  v38 = a9 + v30[18];
  v39 = v46;
  *v38 = v45;
  *(v38 + 1) = v39;
  *(v38 + 2) = a10;
  *(v38 + 3) = a11;
  *(a9 + v30[20]) = a12;
  *(a9 + v30[21]) = a13;
  v40 = (a9 + v30[19]);
  v41 = v48;
  *v40 = v47;
  v40[1] = v41;
  v42 = v44;
  *v36 = a14;
  v36[1] = v42;
  return result;
}

uint64_t property wrapper backing initializer of CarouselView.previousItem(uint64_t a1)
{
  v4 = sub_1004DE7CC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  (*(v5 + 16))(&v9 - v7, a1, v4, v6);
  sub_1004DB9DC();
  return (*(v5 + 8))(a1, v4);
}

uint64_t CarouselView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v94 = sub_1004DA19C();
  v86 = *(v94 - 8);
  __chkstk_darwin();
  v85 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(a1 - 1);
  v93 = *(v83 + 64);
  __chkstk_darwin();
  v92 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[2];
  v6 = sub_1004DD98C();
  v90 = a1[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = a1;
  v8 = a1[7];
  v111 = a1[3];
  *&v112 = v8;
  v9 = v111;
  v96 = v111;
  v10 = v8;
  v91 = v8;
  swift_getOpaqueTypeMetadata2();
  v11 = sub_1004DA32C();
  WitnessTable = swift_getWitnessTable();
  v13 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v111 = v6;
  *&v112 = AssociatedTypeWitness;
  *(&v112 + 1) = v11;
  v113 = WitnessTable;
  v114 = AssociatedConformanceWitness;
  sub_1004DBC3C();
  v111 = v9;
  *&v112 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v110 = &protocol witness table for _FrameLayout;
  v108 = swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = sub_1004D9CBC();
  v16 = swift_getWitnessTable();
  v111 = v15;
  *&v112 = v16;
  swift_getOpaqueTypeMetadata2();
  v111 = v15;
  *&v112 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = sub_1004D9CFC();
  v18 = swift_getWitnessTable();
  v111 = v17;
  *&v112 = v18;
  swift_getOpaqueTypeMetadata2();
  sub_1004DAC5C();
  sub_1004DA32C();
  sub_100008DE4(&qword_100640B28, &qword_10052DC58);
  v19 = sub_1004DA32C();
  v20 = sub_1004DAE7C();
  v111 = v17;
  *&v112 = v18;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_100348194(&qword_100640B30, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  v106 = v21;
  v107 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1003468B8();
  v104 = v23;
  v105 = v24;
  v25 = swift_getWitnessTable();
  v111 = v19;
  *&v112 = v20;
  *(&v112 + 1) = v25;
  v113 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v111 = v19;
  *&v112 = v20;
  *(&v112 + 1) = v25;
  v113 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v27 = swift_getOpaqueTypeConformance2();
  v111 = OpaqueTypeMetadata2;
  *&v112 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v111 = OpaqueTypeMetadata2;
  *&v112 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v111 = v28;
  *&v112 = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v111 = v28;
  *&v112 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  v111 = v30;
  *&v112 = v31;
  swift_getOpaqueTypeMetadata2();
  sub_1004DA32C();
  v89 = v13;
  v111 = v13;
  v32 = v90;
  v113 = v90;
  *&v33 = v13;
  *(&v33 + 1) = v96;
  v73 = v33;
  v34 = v82;
  v95 = *(v82 + 2);
  v112 = v95;
  type metadata accessor for PageControl(255, &v111);
  sub_1004DA32C();
  sub_1004DE7CC();
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  v35 = sub_1004DBB2C();
  v77 = *(v35 - 8);
  __chkstk_darwin();
  v68 = &v67 - v36;
  v71 = v35;
  v37 = sub_1004DA32C();
  v76 = v37;
  v81 = *(v37 - 8);
  __chkstk_darwin();
  v88 = &v67 - v38;
  v69 = swift_getWitnessTable();
  v102 = v69;
  v103 = &protocol witness table for _AppearanceActionModifier;
  v39 = swift_getWitnessTable();
  v75 = v39;
  v74 = sub_100348194(qword_100640B40, &type metadata accessor for ScrollPosition, &protocol conformance descriptor for ScrollPosition);
  v111 = v37;
  *&v112 = v94;
  *(&v112 + 1) = v39;
  v113 = v74;
  v78 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v79 = swift_getOpaqueTypeMetadata2();
  v80 = *(v79 - 8);
  __chkstk_darwin();
  v70 = &v67 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v67 - v41;
  v42 = v84;
  v97 = v73;
  v98 = v95;
  v43 = v91;
  v99 = v32;
  v100 = v91;
  v101 = v84;
  sub_1004DA90C();
  sub_1004DBB1C();
  v44 = v83;
  *&v73 = *(v83 + 16);
  v45 = v92;
  (v73)(v92, v42, v34);
  v46 = (*(v44 + 80) + 64) & ~*(v44 + 80);
  v47 = swift_allocObject();
  v48 = v96;
  *(v47 + 16) = v89;
  *(v47 + 24) = v48;
  *(v47 + 32) = v95;
  *(v47 + 48) = v32;
  *(v47 + 56) = v43;
  v49 = *(v44 + 32);
  v49(v47 + v46, v45, v34);
  v50 = v71;
  v51 = v68;
  sub_1004DB6FC();

  (*(v77 + 8))(v51, v50);
  sub_100004CB8(&qword_100640B20, &qword_10052DC50);
  v52 = v85;
  sub_1004DBB5C();
  v53 = v92;
  (v73)(v92, v42, v34);
  v54 = swift_allocObject();
  v55 = v96;
  *(v54 + 16) = v89;
  *(v54 + 24) = v55;
  *(v54 + 32) = v95;
  v56 = v91;
  *(v54 + 48) = v90;
  *(v54 + 56) = v56;
  v49(v54 + v46, v53, v34);
  v57 = v70;
  v58 = v76;
  v59 = v94;
  v60 = v75;
  v61 = v74;
  v62 = v88;
  sub_1004DB70C();

  (*(v86 + 8))(v52, v59);
  (*(v81 + 8))(v62, v58);
  v111 = v58;
  *&v112 = v59;
  *(&v112 + 1) = v60;
  v113 = v61;
  swift_getOpaqueTypeConformance2();
  v63 = v72;
  v64 = v79;
  sub_100339DC8();
  v65 = *(v80 + 8);
  v65(v57, v64);
  sub_100339DC8();
  return (v65)(v63, v64);
}

uint64_t sub_100341984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v207 = a1;
  v195 = a8;
  v233 = a2;
  v234 = a4;
  v197 = a4;
  v198 = a5;
  v235 = a5;
  v236 = a6;
  v146 = *(type metadata accessor for PageControl(0, &v233) - 8);
  __chkstk_darwin();
  v144 = (&v143 - v14);
  v206 = v15;
  v189 = *(sub_1004DA32C() - 8);
  __chkstk_darwin();
  v147 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v145 = &v143 - v17;
  v193 = v18;
  *&v194 = COERCE_DOUBLE(sub_1004DE7CC());
  v190 = *(v194 - 8);
  __chkstk_darwin();
  v192 = &v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v191 = &v143 - v20;
  v21 = sub_1004DACFC();
  v187 = *(v21 - 8);
  v188 = v21;
  __chkstk_darwin();
  v182 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DAE5C();
  __chkstk_darwin();
  v184 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_1004DAE7C();
  v185 = *(v200 - 8);
  __chkstk_darwin();
  v183 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = a2;
  v234 = a3;
  v199 = a3;
  v235 = a4;
  v236 = a5;
  v237 = a6;
  v238 = a7;
  v205 = type metadata accessor for CarouselView(0, &v233);
  v180 = *(v205 - 8);
  v181 = *(v180 + 64);
  __chkstk_darwin();
  v179 = &v143 - v25;
  sub_100004CB8(&qword_100640B20, &qword_10052DC50);
  __chkstk_darwin();
  v196 = &v143 - v26;
  v27 = sub_1004DD98C();
  v208 = a6;
  v210 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v233 = a3;
  v234 = a7;
  v202 = a7;
  swift_getOpaqueTypeMetadata2();
  v29 = sub_1004DA32C();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v233 = v27;
  v234 = AssociatedTypeWitness;
  v235 = v29;
  v236 = WitnessTable;
  v237 = AssociatedConformanceWitness;
  sub_1004DBC3C();
  v32 = v199;
  v233 = v199;
  v234 = a7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v232 = &protocol witness table for _FrameLayout;
  v230 = swift_getWitnessTable();
  swift_getWitnessTable();
  v33 = sub_1004D9CBC();
  v34 = swift_getWitnessTable();
  v233 = v33;
  v234 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v233 = v33;
  v234 = v34;
  v155 = swift_getOpaqueTypeConformance2();
  v35 = sub_1004D9CFC();
  v160 = *(v35 - 8);
  __chkstk_darwin();
  v37 = &v143 - v36;
  v38 = swift_getWitnessTable();
  v233 = v35;
  v234 = v38;
  v39 = v38;
  v148 = v38;
  v158 = swift_getOpaqueTypeMetadata2();
  v161 = *(v158 - 8);
  __chkstk_darwin();
  v151 = &v143 - v40;
  sub_1004DAC5C();
  v41 = sub_1004DA32C();
  v163 = *(v41 - 8);
  __chkstk_darwin();
  v201 = &v143 - v42;
  sub_100008DE4(&qword_100640B28, &qword_10052DC58);
  v157 = v41;
  v43 = sub_1004DA32C();
  v162 = *(v43 - 8);
  __chkstk_darwin();
  v159 = &v143 - v44;
  v233 = v35;
  v234 = v39;
  v45 = swift_getOpaqueTypeConformance2();
  v150 = v45;
  v46 = sub_100348194(&qword_100640B30, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  v228 = v45;
  v229 = v46;
  v47 = swift_getWitnessTable();
  v154 = v47;
  v48 = sub_1003468B8();
  v226 = v47;
  v227 = v48;
  v49 = swift_getWitnessTable();
  v50 = v43;
  v152 = v43;
  v51 = v200;
  v233 = v43;
  v234 = v200;
  v235 = v49;
  v236 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v52 = v49;
  v153 = v49;
  v53 = swift_getOpaqueTypeMetadata2();
  v177 = *(v53 - 8);
  __chkstk_darwin();
  v149 = &v143 - v54;
  v233 = v50;
  v234 = v51;
  v235 = v52;
  v236 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v55 = swift_getOpaqueTypeConformance2();
  v233 = v53;
  v234 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  v174 = *(v56 - 8);
  __chkstk_darwin();
  v169 = &v143 - v57;
  v178 = v53;
  v233 = v53;
  v234 = v55;
  v171 = v55;
  v58 = swift_getOpaqueTypeConformance2();
  v233 = v56;
  v234 = v58;
  v59 = swift_getOpaqueTypeMetadata2();
  v170 = *(v59 - 8);
  __chkstk_darwin();
  v164 = v58;
  v165 = &v143 - v60;
  v175 = v56;
  v233 = v56;
  v234 = v58;
  v61 = swift_getOpaqueTypeConformance2();
  v176 = v59;
  v233 = v59;
  v234 = v61;
  v167 = v61;
  v172 = *(swift_getOpaqueTypeMetadata2() - 8);
  __chkstk_darwin();
  v166 = &v143 - v62;
  v173 = v63;
  *&v64 = COERCE_DOUBLE(sub_1004DA32C());
  v203 = *(v64 - 8);
  v204 = *&v64;
  __chkstk_darwin();
  v186 = &v143 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v168 = &v143 - v66;
  __chkstk_darwin();
  v209 = &v143 - v67;
  sub_1004DAEDC();
  v211 = v210;
  v212 = v32;
  v69 = v197;
  v68 = v198;
  v213 = v197;
  v214 = v198;
  v215 = v208;
  v216 = v202;
  v70 = v207;
  v217 = v207;
  sub_1004D9D0C();
  v71 = v205;
  sub_100004CB8(&qword_100640B20, &qword_10052DC50);
  v72 = v196;
  sub_1004DBB7C();
  sub_1004DBE7C();
  v73 = v151;
  sub_1004DB48C();
  sub_100347FC8(v72);
  (*(v160 + 8))(v37, v35);
  v74 = sub_1004DAF1C();
  v75 = v71;
  v76 = (v70 + *(v71 + 96));
  v77 = *v76;
  v78 = v76[1];
  v233 = v77;
  v234 = v78;
  sub_100004CB8(&qword_100640CF0, &qword_10052DE58);
  sub_1004DB9EC();
  v79 = v158;
  sub_100344048(v74, COERCE_UNSIGNED_INT64(round(v225[0])), 0, v158, v150);
  (*(v161 + 8))(v73, v79);
  _s3__C6CGSizeVMa_1(0);
  v81 = v80;
  v82 = v179;
  v83 = v180;
  v84 = v75;
  (*(v180 + 16))(v179, v70, v75);
  v85 = v83;
  v86 = (*(v83 + 80) + 64) & ~*(v83 + 80);
  v87 = swift_allocObject();
  v88 = v199;
  v87[2] = v210;
  v87[3] = v88;
  v87[4] = v69;
  v87[5] = v68;
  v89 = v149;
  v90 = v202;
  v87[6] = v208;
  v87[7] = v90;
  v91 = v87 + v86;
  v92 = v182;
  (*(v85 + 32))(v91, v82, v84);
  v142 = sub_100348194(&qword_100640CF8, _s3__C6CGSizeVMa_1, &protocol conformance descriptor for CGSize);
  v93 = v159;
  v94 = v81;
  v95 = v157;
  v96 = v81;
  v97 = v201;
  sub_10034444C(v94, sub_100344184, 0, sub_10034809C, v87, v157, v96, v154, v142);

  (*(v163 + 8))(v97, v95);
  sub_1004DAE4C();
  v98 = v183;
  sub_1004DAE6C();
  v99 = v152;
  v100 = v200;
  sub_1004DB5CC();
  (*(v185 + 8))(v98, v100);
  (*(v162 + 8))(v93, v99);
  sub_1004DACEC();
  sub_100004CB8(&qword_100640D00, &qword_10052DE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005126C0;
  LOBYTE(v98) = sub_1004DAEFC();
  *(inited + 32) = v98;
  v102 = sub_1004DAEDC();
  *(inited + 33) = v102;
  sub_1004DAEEC();
  sub_1004DAEEC();
  if (sub_1004DAEEC() != v98)
  {
    sub_1004DAEEC();
  }

  sub_1004DAEEC();
  if (sub_1004DAEEC() != v102)
  {
    sub_1004DAEEC();
  }

  v103 = v205;
  v104 = v169;
  v105 = v178;
  sub_1004DB52C();
  (*(v187 + 8))(v92, v188);
  (*(v177 + 8))(v89, v105);
  v106 = v165;
  v107 = v175;
  sub_1004DB58C();
  (*(v174 + 8))(v104, v107);
  sub_100340800(v103);
  sub_1004DD91C();

  v109 = v166;
  v108 = v167;
  v110 = v176;
  sub_1004DB47C();
  (*(v170 + 8))(v106, v110);
  sub_100340940(v103);
  sub_1004DBD1C();
  v233 = v110;
  v234 = v108;
  v111 = swift_getOpaqueTypeConformance2();
  v112 = v168;
  v113 = v173;
  sub_1004DB66C();
  (*(v172 + 8))(v109, v113);
  *&v225[4] = v111;
  *&v225[5] = &protocol witness table for _FrameLayout;
  v114 = v204;
  v200 = swift_getWitnessTable();
  sub_100339DC8();
  v115 = v112;
  v116 = v210;
  v201 = *(v203 + 8);
  v202 = v203 + 8;
  (v201)(v115, *&v114);
  sub_100340800(v103);
  v117 = sub_1004DD91C();

  if (v117 < 2)
  {
    v133 = v192;
    (*(v189 + 56))(v192, 1, 1, v193);
    *&v225[2] = swift_getWitnessTable();
    *&v225[3] = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
  }

  else
  {
    v118 = sub_10034085C(v103);
    v120 = v119;
    v122 = v121;
    sub_100004CB8(&qword_100640B20, &qword_10052DC50);
    v123 = v196;
    sub_1004DBB7C();
    v124 = v144;
    *v144 = v118;
    v124[1] = v120;
    v124[2] = v122;
    v233 = v116;
    v234 = v197;
    v235 = v198;
    v236 = v208;
    v125 = type metadata accessor for PageControl(0, &v233);
    sub_100346848(v123, v124 + *(v125 + 52));
    sub_1004DBD1C();
    v126 = v206;
    v127 = swift_getWitnessTable();
    v128 = v147;
    sub_1004DB66C();
    (*(v146 + 8))(v124, v126);
    v218 = v127;
    v219 = &protocol witness table for _FrameLayout;
    v129 = v193;
    swift_getWitnessTable();
    v130 = v145;
    sub_100339DC8();
    v131 = v189;
    v132 = *(v189 + 8);
    v132(v128, v129);
    sub_100339DC8();
    v132(v130, v129);
    v133 = v192;
    (*(v131 + 32))(v192, v128, v129);
    (*(v131 + 56))(v133, 0, 1, v129);
  }

  v134 = v191;
  sub_10039BC4C(v133, v191);
  v135 = v190;
  v136 = *(v190 + 8);
  v137 = *&v194;
  v136(v133, v194);
  v138 = v204;
  v139 = v186;
  (*(v203 + 16))(v186, v209, COERCE_DOUBLE(*&v204));
  v233 = v139;
  (*(v135 + 16))(v133, v134, COERCE_DOUBLE(*&v137));
  v234 = v133;
  v225[0] = v138;
  v225[1] = v137;
  v223 = v200;
  v221 = swift_getWitnessTable();
  v222 = &protocol witness table for _FrameLayout;
  v220 = swift_getWitnessTable();
  v224 = swift_getWitnessTable();
  sub_10039B8E8(&v233, 2uLL, v225);
  v136(v134, *&v137);
  v140 = v201;
  (v201)(v209, *&v138);
  v136(v133, *&v137);
  return v140(v139, *&v138);
}

uint64_t sub_100343020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a5;
  v44 = a4;
  v47 = a1;
  v48 = a8;
  sub_1004DABAC();
  __chkstk_darwin();
  v45 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DD98C();
  v43 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = a3;
  v57 = a7;
  swift_getOpaqueTypeMetadata2();
  v15 = sub_1004DA32C();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = v13;
  v57 = AssociatedTypeWitness;
  v58 = v15;
  v59 = WitnessTable;
  v60 = AssociatedConformanceWitness;
  v39 = sub_1004DBC3C();
  v56 = a3;
  v57 = a7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = &protocol witness table for _FrameLayout;
  v62 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v18 = sub_1004D9CBC();
  v42 = *(v18 - 8);
  __chkstk_darwin();
  v36 = v35 - v19;
  v37 = swift_getWitnessTable();
  v56 = v18;
  v57 = v37;
  v40 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = v35 - v23;
  v35[2] = sub_1004DA7CC();
  v25 = a2;
  v56 = a2;
  v57 = a3;
  v26 = a3;
  v27 = v44;
  v28 = v46;
  v58 = v44;
  v59 = v46;
  v29 = v43;
  v60 = v43;
  v61 = a7;
  v30 = type metadata accessor for CarouselView(0, &v56);
  v35[1] = *(v47 + *(v30 + 80));
  v49 = v25;
  v50 = v26;
  v51 = v27;
  v52 = v28;
  v53 = v29;
  v54 = a7;
  v55 = v47;
  sub_100343FC8();
  v31 = v36;
  sub_1004D9CAC();
  v32 = v37;
  sub_1004DB59C();
  (*(v42 + 8))(v31, v18);
  v56 = v18;
  v57 = v32;
  swift_getOpaqueTypeConformance2();
  sub_100339DC8();
  v33 = *(v41 + 8);
  v33(v22, OpaqueTypeMetadata2);
  sub_100339DC8();
  return (v33)(v24, OpaqueTypeMetadata2);
}

uint64_t sub_100343524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a4;
  v49 = a5;
  v47 = a1;
  v50 = a8;
  v55 = a2;
  v56 = a3;
  v39 = a3;
  v57 = a4;
  v58 = a5;
  v59 = a6;
  v60 = a7;
  v41 = a7;
  v12 = type metadata accessor for CarouselView(0, &v55);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v40 = v37 - v14;
  v15 = sub_1004DD98C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = AssociatedTypeWitness;
  v55 = a3;
  v56 = a7;
  v42 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  swift_getOpaqueTypeMetadata2();
  v17 = sub_1004DA32C();
  v37[1] = v17;
  v45 = v15;
  WitnessTable = swift_getWitnessTable();
  v43 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = v15;
  v56 = AssociatedTypeWitness;
  v57 = v17;
  v58 = WitnessTable;
  v59 = AssociatedConformanceWitness;
  v20 = sub_1004DBC3C();
  v46 = *(v20 - 8);
  __chkstk_darwin();
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = v37 - v23;
  v24 = v12;
  v25 = v47;
  v54 = sub_100340800(v12);
  v26 = v40;
  (*(v13 + 16))(v40, v25, v24);
  v27 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = a2;
  v29 = v39;
  v31 = v48;
  v30 = v49;
  *(v28 + 3) = v39;
  *(v28 + 4) = v31;
  *(v28 + 5) = v30;
  *(v28 + 6) = a6;
  v32 = v41;
  *(v28 + 7) = v41;
  (*(v13 + 32))(&v28[v27], v26, v24);
  v55 = v29;
  v56 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = &protocol witness table for _FrameLayout;
  v33 = swift_getWitnessTable();
  sub_1004DBC2C();
  v51 = v33;
  swift_getWitnessTable();
  v34 = v38;
  sub_100339DC8();
  v35 = *(v46 + 8);
  v35(v22, v20);
  sub_100339DC8();
  return (v35)(v34, v20);
}

uint64_t sub_100343940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v65 = a5;
  v66 = a6;
  v64 = a4;
  v71 = a7;
  v57 = a3;
  v59 = *(a3 - 8);
  v63 = *(v59 + 64);
  __chkstk_darwin();
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v10;
  v75 = v11;
  v12 = v11;
  v76 = v13;
  v77 = v14;
  v78 = v15;
  v79 = v16;
  v17 = v16;
  v55 = v16;
  v18 = type metadata accessor for CarouselView(0, &v74);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v22 = &v51 - v21;
  v67 = *(v12 - 8);
  __chkstk_darwin();
  v52 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v12;
  v75 = v17;
  v68 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v54 = &v51 - v24;
  v60 = sub_1004DA32C();
  v70 = *(v60 - 8);
  __chkstk_darwin();
  v56 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin();
  v62 = &v51 - v27;
  v28 = v18;
  v51 = v18;
  v29 = *(v18 + 76);
  v53 = a2;
  (*(a2 + v29))(a1, v26);
  v30 = v22;
  (*(v19 + 16))(v22, a2, v28);
  v31 = v59;
  v32 = v58;
  v33 = v57;
  (*(v59 + 16))(v58, a1, v57);
  v34 = (*(v19 + 80) + 64) & ~*(v19 + 80);
  v35 = (v20 + *(v31 + 80) + v34) & ~*(v31 + 80);
  v36 = swift_allocObject();
  *(v36 + 2) = v33;
  *(v36 + 3) = v12;
  v37 = v12;
  v38 = v65;
  *(v36 + 4) = v64;
  *(v36 + 5) = v38;
  v39 = v55;
  *(v36 + 6) = v66;
  *(v36 + 7) = v39;
  v40 = v30;
  v41 = v51;
  (*(v19 + 32))(&v36[v34], v40, v51);
  (*(v31 + 32))(&v36[v35], v32, v33);
  v42 = v54;
  v43 = v52;
  sub_1004DB42C();

  (*(v67 + 8))(v43, v37);
  sub_100340940(v41);
  sub_100340940(v41);
  sub_1004DBD1C();
  v74 = v37;
  v75 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v56;
  v46 = OpaqueTypeMetadata2;
  sub_1004DB66C();
  (*(v69 + 8))(v42, v46);
  v72 = OpaqueTypeConformance2;
  v73 = &protocol witness table for _FrameLayout;
  v47 = v60;
  swift_getWitnessTable();
  v48 = v62;
  sub_100339DC8();
  v49 = *(v70 + 8);
  v49(v45, v47);
  sub_100339DC8();
  return (v49)(v48, v47);
}

double sub_100343F20(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (a2)
  {
    sub_1004DBD7C();
  }

  __chkstk_darwin();
  sub_1004DA0EC();

  return result;
}

uint64_t sub_100343FC8()
{
  sub_1004DABAC();
  sub_100348194(&unk_100640D10, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  return sub_1004DF33C();
}

uint64_t sub_100344048(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1004DAC5C();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0uLL;
  v11 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_1004D9C8C();
    *(&v10 + 1) = v12;
    *(&v11 + 1) = v13;
  }

  v15[0] = v10;
  v15[1] = v11;
  v16 = a3 & 1;
  sub_1004DAC4C();
  sub_1004DB6EC();
  return (*(v7 + 8))(v9, v6);
}

void sub_100344184(void *a1@<X8>)
{
  sub_1004D9FFC();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1003441B0(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v15 = sub_1004DE7CC();
  v30 = *(v15 - 8);
  __chkstk_darwin();
  v17 = &v29 - v16;
  v18 = *(a3 - 8);
  __chkstk_darwin();
  v29 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = v31;
  v21 = type metadata accessor for CarouselView(0, &v33);
  v22 = (v20 - sub_100340940(v21)) * 0.5;
  v23 = (a2 + *(v21 + 96));
  v24 = *v23;
  v25 = v23[1];
  v33 = *v23;
  v34 = v25;
  sub_100004CB8(&qword_100640CF0, &qword_10052DE58);
  sub_1004DB9EC();
  if (v32 != v22)
  {
    v32 = v22;
    v33 = v24;
    v34 = v25;
    sub_1004DB9FC();
  }

  sub_1004DBA1C();
  sub_1004DB9EC();
  if ((*(v18 + 48))(v17, 1, a3) == 1)
  {
    return (*(v30 + 8))(v17, v15);
  }

  v27 = v29;
  (*(v18 + 32))(v29, v17, a3);
  v28 = sub_100343F20(v27, 0, v21);
  return (*(v18 + 8))(v27, a3, v28);
}

double sub_10034444C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_1004DAC6C();
  sub_1004DAC7C();
  sub_1004DB6EC();

  return result;
}

void sub_100344528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v34 = a5;
  v35 = a7;
  v33 = a4;
  v36 = a1;
  v10 = sub_1004DE7CC();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin();
  v32 = &v27 - v11;
  v31 = *(a2 - 8);
  __chkstk_darwin();
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DA19C();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_1004DE7CC();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v27 - v20;
  v37[0] = a2;
  v37[1] = a3;
  v37[2] = v33;
  v37[3] = v34;
  v37[4] = a6;
  v37[5] = v35;
  v35 = type metadata accessor for CarouselView(0, v37);
  sub_100004CB8(&qword_100640B20, &qword_10052DC50);
  sub_1004DBB5C();
  swift_getAssociatedConformanceWitness();
  sub_1004DA17C();
  (*(v14 + 8))(v16, v13);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v21, 1, AssociatedTypeWitness) == 1)
  {
    v22 = v18;
    v37[0] = sub_100340800(v35);
    sub_1004DD98C();
    swift_getWitnessTable();
    v23 = v32;
    sub_1004DDD8C();
    v24 = v31;
    if ((*(v31 + 48))(v23, 1, a2) == 1)
    {
      (*(v19 + 8))(v21, v22);
      (*(v29 + 8))(v23, v30);
    }

    else
    {
      v25 = v28;
      (*(v24 + 32))(v28, v23, a2);

      v26 = sub_100343F20(v25, 0, v35);
      (*(v24 + 8))(v25, a2, v26);
      (*(v19 + 8))(v21, v22);
    }
  }

  else
  {
    (*(v19 + 8))(v21, v18);
  }
}

uint64_t sub_100344998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = a6;
  v52 = a7;
  v50 = a5;
  v54 = a3;
  v11 = sub_1004DE7CC();
  v48 = *(v11 - 8);
  v49 = v11;
  __chkstk_darwin();
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v40 - v13;
  v47 = *(a4 - 8);
  __chkstk_darwin();
  v53 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1004DE7CC();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v40 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v22 = &v40 - v21;
  swift_getAssociatedConformanceWitness();
  sub_1004DA17C();
  if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v17 + 8))(v19, v16);
  }

  (*(v20 + 32))(v22, v19, AssociatedTypeWitness);
  v24 = a8;
  v25 = v50;
  v56 = a4;
  v57 = v50;
  v43 = v20;
  v44 = v22;
  v27 = v51;
  v26 = v52;
  v58 = v51;
  v59 = v52;
  v60 = v24;
  v61 = a9;
  v41 = type metadata accessor for CarouselView(0, &v56);
  v28 = sub_100340800(v41);
  v42 = &v40;
  v55 = v28;
  __chkstk_darwin();
  *(&v40 - 8) = a4;
  *(&v40 - 7) = v25;
  *(&v40 - 6) = v27;
  *(&v40 - 5) = v26;
  v29 = v44;
  *(&v40 - 4) = v24;
  *(&v40 - 3) = a9;
  *(&v40 - 2) = v29;
  sub_1004DD98C();
  swift_getWitnessTable();
  sub_1004DDD5C();

  if (v57 == 1)
  {
    return (*(v43 + 8))(v29, AssociatedTypeWitness);
  }

  v30 = v56;
  v31 = v41;
  v32 = v54;
  sub_100340800(v41);
  v33 = v53;
  v52 = v30;
  sub_1004DD99C();

  v34 = v47;
  v35 = v45;
  (*(v47 + 16))(v45, v33, a4);
  (*(v34 + 56))(v35, 0, 1, a4);
  v37 = v48;
  v36 = v49;
  (*(v48 + 16))(v46, v35, v49);
  sub_1004DBA1C();
  sub_1004DB9FC();
  (*(v37 + 8))(v35, v36);
  v38 = (v32 + *(v31 + 88));
  v39 = v53;
  if (*v38)
  {
    (*v38)(v52, v53);
  }

  (*(v34 + 8))(v39, a4);
  return (*(v43 + 8))(v44, AssociatedTypeWitness);
}

uint64_t sub_100344F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v10 = &v13 - v9;
  sub_1004DEACC();
  swift_getAssociatedConformanceWitness();
  v11 = sub_1004DD35C();
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v11 & 1;
}

uint64_t sub_100345048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a6;
  v20 = a8;
  sub_1004DA19C();
  __chkstk_darwin();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v14 = v18 - v13;
  sub_1004DEACC();
  sub_1004DBE7C();
  v18[1] = v16;
  v18[2] = v15;
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = v19;
  v22[4] = a7;
  v22[5] = v20;
  type metadata accessor for CarouselView(0, v22);
  sub_100004CB8(&qword_100640B20, &qword_10052DC50);
  sub_1004DBB5C();
  swift_getAssociatedConformanceWitness();
  sub_1004DA18C();
  (*(v21 + 8))(v14, AssociatedTypeWitness);
  return sub_1004DBB6C();
}

void *sub_100345248(uint64_t a1)
{
  sub_100004CB8(&qword_100640B20, &qword_10052DC50);
  __chkstk_darwin();
  v3 = v12 - v2;
  v4 = *(a1 + 32);
  v12[0] = *(a1 + 16);
  v12[1] = v4;
  type metadata accessor for PageControl.Coordinator(0, v12);
  v5 = sub_10034085C(a1);
  v7 = v6;
  v9 = v8;
  sub_100004CB8(&qword_100640B20, &qword_10052DC50);
  sub_1004DBB7C();
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = v7;
  v10[4] = v9;
  sub_100346848(v3, v10 + qword_100640BE8);
  return v10;
}

void *sub_100345360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_100346848(a4, v8 + qword_100640BE8);
  return v8;
}

uint64_t sub_1003453D0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1004DA19C();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin();
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v56 = *(a3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = sub_1004DE7CC();
  v46 = *(v47 - 8);
  __chkstk_darwin();
  v52 = &v45 - v11;
  v59 = AssociatedTypeWitness;
  v58 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v48 = &v45 - v12;
  v50 = *(v9 - 8);
  __chkstk_darwin();
  v65 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = sub_1004DE7CC();
  v49 = *(v62 - 8);
  __chkstk_darwin();
  v61 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v45 - v15;
  sub_100004CB8(&qword_100640B20, &qword_10052DC50);
  __chkstk_darwin();
  v18 = &v45 - v17;
  swift_getWitnessTable();
  sub_1004DAD3C();
  sub_1004DAD2C();
  v19 = v68;
  sub_100004CB8(&qword_100640B20, &qword_10052DC50);
  sub_1004DBB7C();
  v20 = qword_100640BE8;
  swift_beginAccess();
  v51 = v19;
  sub_100347D68(v18, v19 + v20);
  swift_endAccess();
  v21 = [a1 numberOfPages];
  sub_100340800(a3);
  v22 = sub_1004DD91C();

  if (v21 != v22)
  {
    sub_100340800(a3);
    v23 = sub_1004DD91C();

    [a1 setNumberOfPages:v23];
  }

  v60 = a1;
  v64 = a3;
  v57 = v4;
  v68 = sub_100340800(a3);
  v24 = v9;
  v25 = sub_1004DD98C();
  swift_getWitnessTable();
  sub_1004DD72C();

  v66 = v67;
  sub_1004DED4C();
  sub_1004DED1C();
  v45 = v25;
  sub_1004DED3C();
  v26 = (v49 + 32);
  v27 = TupleTypeMetadata2;
  v28 = (v50 + 32);
  v29 = (v50 + 8);
  while (1)
  {
    v30 = v61;
    sub_1004DED2C();
    (*v26)(v16, v30, v62);
    if ((*(*(v27 - 8) + 48))(v16, 1, v27) == 1)
    {
      break;
    }

    v31 = *v16;
    (*v28)(v65, &v16[*(v27 + 48)], v24);
    v32 = (*(*(v64 + 24) + 8))(v24);
    if (v32)
    {
      v33 = v32;
      [v60 setIndicatorImage:v32 forPage:v31];
    }

    (*v29)(v65, v24);
    v27 = TupleTypeMetadata2;
  }

  v34 = v64;
  sub_100004CB8(&qword_100640B20, &qword_10052DC50);
  v35 = v53;
  sub_1004DBB5C();
  v36 = v56;
  v37 = v24;
  v38 = v59;
  swift_getAssociatedConformanceWitness();
  v39 = v52;
  sub_1004DA17C();
  (*(v54 + 8))(v35, v55);
  v40 = v58;
  if ((*(v58 + 48))(v39, 1, v38) == 1)
  {

    return (*(v46 + 8))(v39, v47);
  }

  else
  {
    v42 = v48;
    (*(v40 + 32))(v48, v39, v38);
    v67 = sub_100340800(v34);
    __chkstk_darwin();
    *(&v45 - 6) = v37;
    *(&v45 - 5) = *(v34 + 24);
    *(&v45 - 3) = v36;
    *(&v45 - 2) = v42;
    swift_getWitnessTable();
    sub_1004DDD5C();

    if (v69 != 1)
    {
      v43 = v68;
      v44 = v60;
      if ([v60 currentPage] != v43)
      {
        [v44 setCurrentPage:v43];
      }
    }

    return (*(v40 + 8))(v42, v38);
  }
}

uint64_t sub_100345C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = &v12 - v8;
  sub_1004DEACC();
  swift_getAssociatedConformanceWitness();
  v10 = sub_1004DD35C();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v10 & 1;
}

void *sub_100345D84(void *a1)
{
  v2 = v1;
  v56 = *(*v2 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v48 = &v42 - v5;
  v6 = sub_1004DE7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v51 = &v42 - v8;
  v9 = sub_1004DA19C();
  v49 = *(v9 - 8);
  v50 = v9;
  __chkstk_darwin();
  v55 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100004CB8(&qword_100640B20, &qword_10052DC50);
  __chkstk_darwin();
  v53 = &v42 - v11;
  v60 = *(v6 - 8);
  __chkstk_darwin();
  v47 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v42 - v13;
  __chkstk_darwin();
  v58 = &v42 - v15;
  v59 = sub_1004DBBCC();
  v52 = *(v59 - 8);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v57 = &v42 - v17;
  v18 = [a1 currentPage];
  v64 = *(v2 + 16);
  v65 = *(v2 + 24);
  sub_1004DD98C();
  sub_1004DBBCC();
  swift_getWitnessTable();
  result = sub_1004DBB9C();
  if (v18 >= v62 && v18 < v63)
  {
    v64 = *(v2 + 16);
    v65 = *(v2 + 24);
    v62 = v18;
    v45 = TupleTypeMetadata2;
    sub_1004DBBAC();
    v20 = qword_100640BE8;
    swift_beginAccess();
    v43 = v20;
    v21 = v2 + v20;
    v22 = v53;
    sub_100347F58(v21, v53);
    v23 = v55;
    sub_1004DBB5C();
    sub_100347FC8(v22);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1004DA17C();
    (*(v49 + 8))(v23, v50);
    sub_1004DBBBC();
    v24 = v61;
    (*(v61 + 56))(v14, 0, 1, AssociatedTypeWitness);
    v25 = *(v45 + 48);
    v26 = v60;
    v27 = *(v60 + 16);
    v28 = v51;
    v27();
    v50 = v25;
    (v27)(&v28[v25], v14, v6);
    v29 = *(v24 + 48);
    if (v29(v28, 1, AssociatedTypeWitness) == 1)
    {
      v30 = *(v26 + 8);
      v30(v14, v6);
      if (v29(&v28[v50], 1, AssociatedTypeWitness) == 1)
      {
        v30(v28, v6);
LABEL_11:
        v30(v58, v6);
        return (*(v52 + 8))(v57, v59);
      }
    }

    else
    {
      v31 = v47;
      (v27)(v47, v28, v6);
      v32 = v50;
      if (v29(&v28[v50], 1, AssociatedTypeWitness) != 1)
      {
        v37 = v61;
        v38 = &v28[v32];
        v39 = v48;
        (*(v61 + 32))(v48, v38, AssociatedTypeWitness);
        v40 = sub_1004DD35C();
        v41 = *(v37 + 8);
        v41(v39, AssociatedTypeWitness);
        v30 = *(v60 + 8);
        v30(v14, v6);
        v41(v47, AssociatedTypeWitness);
        v30(v28, v6);
        if (v40)
        {
          goto LABEL_11;
        }

LABEL_9:
        v33 = v53;
        sub_100347F58(v2 + v43, v53);
        v34 = v48;
        v35 = v59;
        v36 = v57;
        sub_1004DBBBC();
        sub_1004DBB5C();
        sub_1004DA18C();
        (*(v61 + 8))(v34, AssociatedTypeWitness);
        sub_1004DBB6C();
        sub_100347FC8(v33);
        v30(v58, v6);
        return (*(v52 + 8))(v36, v35);
      }

      v30 = *(v60 + 8);
      v30(v14, v6);
      (*(v61 + 8))(v31, AssociatedTypeWitness);
    }

    (*(v46 + 8))(v28, v45);
    goto LABEL_9;
  }

  return result;
}

double sub_1003465DC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_100345D84(v3);

  return result;
}

void *sub_10034662C()
{

  sub_100347FC8(v0 + qword_100640BE8);
  return v0;
}

uint64_t sub_100346680()
{
  sub_10034662C();

  return swift_deallocClassInstance();
}

void *sub_1003466E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_100345248(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100346710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_10034678C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_100346808(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1004DAA7C();
  __break(1u);
}

uint64_t sub_100346848(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100640B20, &qword_10052DC50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003468B8()
{
  result = qword_100640B38;
  if (!qword_100640B38)
  {
    sub_100008DE4(&qword_100640B28, &qword_10052DC58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640B38);
  }

  return result;
}

void sub_100346950()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v9[0] = v0[2];
  v1 = v9[0];
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v9[5] = v6;
  v7 = *(type metadata accessor for CarouselView(0, v9) - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  sub_100344528(v8, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_100346A0C(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v10;
  v11 = *(type metadata accessor for CarouselView(0, v13) - 8);
  return sub_100344998(a1, a2, v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

void sub_100346B28(uint64_t a1)
{
  sub_1004DD98C();
  sub_1004DBBCC();
  if (v1 <= 0x3F)
  {
    sub_10034737C(319, &qword_100640BC8, &type metadata accessor for ScrollPosition);
    if (v2 <= 0x3F)
    {
      sub_10034737C(319, &qword_100640BD0, _s3__C6CGSizeVMa_1);
      if (v3 <= 0x3F)
      {
        sub_100338374();
        if (v4 <= 0x3F)
        {
          sub_1003473D0(319);
          if (v5 <= 0x3F)
          {
            sub_1004DE7CC();
            sub_1004DBA1C();
            if (v7 <= 0x3F)
            {
              sub_100347434(v6);
              if (v8 <= 0x3F)
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

uint64_t sub_100346C98(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1004DA19C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v7 + 80);
  v14 = v12 - 1;
  if (!v12)
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  if (v12)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v13 | 7;
  v17 = ((v13 + 16) & ~v13) + *(*(v6 - 8) + 64) + 7;
  v18 = *(v11 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 23;
  if (v14 >= a2)
  {
    goto LABEL_37;
  }

  v21 = ((((v15 + *(v11 + 64)) & 0xFFFFFFFFFFFFFFF8) + ((v20 + ((((((((((v17 + ((v13 + 24) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v14 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_37;
      }
    }

LABEL_34:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v14 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_34;
    }
  }

LABEL_37:
  if (v14 == 0x7FFFFFFF)
  {
    v30 = *(a1 + 1);
    if (v30 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    return (v30 + 1);
  }

  else
  {
    v31 = (a1 + v16 + 24) & ~v16;
    if (v14 == v9)
    {
      v32 = *(v7 + 48);

      return v32((v13 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13);
    }

    else
    {
      v33 = (*(v11 + 48))((v20 + ((((((((((v17 + v31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19, v12);
      if (v33 >= 2)
      {
        return v33 - 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_100346F80(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1004DA19C();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v11 >= 0)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v10 + 80);
  v17 = *(v14 + 80);
  v18 = v15 - 1;
  if (!v15)
  {
    v18 = 0;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = v19;
  }

  v21 = ((v16 + 16) & ~v16) + *(*(v8 - 8) + 64) + 7;
  v22 = ~(v17 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v17 & 0xF8) + 23;
  if (v15)
  {
    v24 = *(v14 + 64);
  }

  else
  {
    v24 = *(v14 + 64) + 1;
  }

  v25 = ((((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v22) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v20 < a3)
  {
    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v26 = a3 - v20 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v9 = v27;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v20)
  {
    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v28 = a2 - v20;
    }

    else
    {
      v28 = 1;
    }

    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v29 = ~v20 + a2;
      bzero(a1, v25);
      *a1 = v29;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v25) = v28;
      }

      else
      {
        *(a1 + v25) = v28;
      }
    }

    else if (v9)
    {
      *(a1 + v25) = v28;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v25) = 0;
LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!v9)
  {
    goto LABEL_47;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v20 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      a1[1] = 0;
      a1[2] = 0;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      a1[1] = (a2 - 1);
    }
  }

  else
  {
    v30 = (a1 + (v16 | 7) + 24) & ~(v16 | 7);
    if (v12 == v20)
    {
      v31 = *(v10 + 56);

      v31((v16 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16, a2, v11, v8);
    }

    else
    {
      v32 = v23 + ((((((((((v21 + v30) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      v33 = (v32 & v22);
      if (v19 >= a2)
      {
        if (v18 >= a2)
        {
          v39 = *(v14 + 56);

          v39(v32 & v22, (a2 + 1));
        }

        else
        {
          if (v24 <= 3)
          {
            v36 = ~(-1 << (8 * v24));
          }

          else
          {
            v36 = -1;
          }

          if (v24)
          {
            v37 = v36 & (~v18 + a2);
            if (v24 <= 3)
            {
              v38 = v24;
            }

            else
            {
              v38 = 4;
            }

            bzero(v33, v24);
            if (v38 > 2)
            {
              if (v38 == 3)
              {
                *v33 = v37;
                v33[2] = BYTE2(v37);
              }

              else
              {
                *v33 = v37;
              }
            }

            else if (v38 == 1)
            {
              *v33 = v37;
            }

            else
            {
              *v33 = v37;
            }
          }
        }
      }

      else
      {
        v34 = (v24 + 7) & 0xFFFFFFF8;
        if (v34 != -8)
        {
          v35 = ~v19 + a2;
          bzero(v33, (v34 + 8));
          *v33 = v35;
        }
      }
    }
  }
}

void sub_10034737C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004DBBCC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003473D0(uint64_t a1)
{
  if (!qword_100640BD8)
  {
    sub_100008DE4(&qword_100643390, &qword_1005307B0);
    v1 = sub_1004DE7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_100640BD8);
    }
  }
}

void sub_100347434(__n128 a1)
{
  if (!qword_100640BE0)
  {
    v1 = sub_1004DBA1C();
    if (!v2)
    {
      atomic_store(v1, &qword_100640BE0);
    }
  }
}

void sub_100347484(uint64_t a1)
{
  sub_10034737C(319, &qword_100640BC8, &type metadata accessor for ScrollPosition);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_100347554(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  sub_1004DD98C();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeMetadata2();
  sub_1004DA32C();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1004DBC3C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004D9CBC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1004D9CFC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1004DAC5C();
  sub_1004DA32C();
  sub_100008DE4(&qword_100640B28, &qword_10052DC58);
  sub_1004DA32C();
  sub_1004DAE7C();
  swift_getOpaqueTypeConformance2();
  sub_100348194(&qword_100640B30, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  swift_getWitnessTable();
  sub_1003468B8();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  *(&v11 + 1) = WitnessTable;
  v12 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  *&v11 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1004DA32C();
  v10 = v1;
  v11 = *(a1 + 1);
  v12 = v2;
  type metadata accessor for PageControl(255, &v10);
  sub_1004DA32C();
  sub_1004DE7CC();
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004DBB2C();
  v4 = sub_1004DA32C();
  v5 = sub_1004DA19C();
  swift_getWitnessTable();
  v6 = swift_getWitnessTable();
  v7 = sub_100348194(qword_100640B40, &type metadata accessor for ScrollPosition, &protocol conformance descriptor for ScrollPosition);
  v10 = v4;
  *&v11 = v5;
  *(&v11 + 1) = v6;
  v12 = v7;
  return swift_getOpaqueTypeConformance2();
}

void sub_100347B08(uint64_t a1)
{
  sub_1004DD98C();
  sub_1004DBBCC();
  if (v1 <= 0x3F)
  {
    sub_10034737C(319, &qword_100640BC8, &type metadata accessor for ScrollPosition);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100347BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004CB8(&qword_100640B20, &qword_10052DC50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100347C9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_100640B20, &qword_10052DC50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100347D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100640B20, &qword_10052DC50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100347E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(UIPageControl) init];
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for PageControl(255, v14);
  swift_getWitnessTable();
  sub_1004DAD3C();
  sub_1004DAD2C();
  [v9 addTarget:v14[0] action:"updateCurrentPage:" forControlEvents:4096];

  v10 = objc_opt_self();
  v11 = [v10 systemFillColor];
  [v9 setPageIndicatorTintColor:v11];

  v12 = [v10 labelColor];
  [v9 setCurrentPageIndicatorTintColor:v12];

  return v9;
}

uint64_t sub_100347F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100640B20, &qword_10052DC50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100347FC8(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100640B20, &qword_10052DC50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10034809C(double *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = *(type metadata accessor for CarouselView(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_1003441B0(a1, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100348194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003481DC()
{
  v1 = v0[2];
  v11 = v0[1];
  v12[0] = v11;
  v2 = v0[3];
  v12[1] = v1;
  v12[2] = v2;
  v3 = type metadata accessor for CarouselView(0, v12);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80));

  v5 = &v4[v3[17]];

  v6 = *(sub_100004CB8(&qword_100640B20, &qword_10052DC50) + 32);
  v7 = sub_1004DA19C();
  (*(*(v7 - 8) + 8))(&v5[v6], v7);

  if (*&v4[v3[22]])
  {
  }

  v8 = &v4[v3[23]];
  v9 = *(v11 - 8);
  if (!(*(v9 + 48))(v8, 1, v11))
  {
    (*(v9 + 8))(v8, v11);
  }

  sub_1004DE7CC();
  sub_1004DBA1C();

  return swift_deallocObject();
}

uint64_t sub_100348424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = *(type metadata accessor for CarouselView(0, v14) - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_100343940(a1, v12, v5, v7, v8, v9, a2);
}

uint64_t sub_1003484F8()
{
  v1 = *(v0 + 2);
  v14[0] = *(v0 + 1);
  v13 = *&v14[0];
  v2 = *(v0 + 3);
  v14[1] = v1;
  v14[2] = v2;
  v3 = type metadata accessor for CarouselView(0, v14);
  v12 = *(*(v3 - 1) + 64);
  v4 = (*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80);
  v5 = *(v13 - 8);
  v6 = *(v5 + 80);

  v7 = &v0[v4 + v3[17]];

  v8 = *(sub_100004CB8(&qword_100640B20, &qword_10052DC50) + 32);
  v9 = sub_1004DA19C();
  (*(*(v9 - 8) + 8))(&v7[v8], v9);

  if (*&v0[v4 + v3[22]])
  {
  }

  v10 = &v0[v4 + v3[23]];
  if (!(*(v5 + 48))(v10, 1, v13))
  {
    (*(v5 + 8))(v10, v13);
  }

  sub_1004DE7CC();
  sub_1004DBA1C();

  (*(v5 + 8))(&v0[(v4 + v12 + v6) & ~v6], v13);
  return swift_deallocObject();
}

double sub_100348784()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v14 = v0[2];
  v1 = v14;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v7 = *(type metadata accessor for CarouselView(0, &v14) - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(*(v1 - 8) + 80);
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v11 = (((v8 + 64) & ~v8) + v9 + v10) & ~v10;
  v18 = v5;
  v19 = v6;
  v12 = type metadata accessor for CarouselView(0, &v14);
  return sub_100343F20(v0 + v11, 1, v12);
}

void CircularProgressView.setState(_:animated:)(uint64_t a1, int a2, char a3)
{
  v5 = &v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  if ((a2 & 0x10000) != 0)
  {
    if (v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10])
    {
      return;
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 1;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      goto LABEL_13;
    }
  }

  else
  {
    if ((v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10] & 1) == 0)
    {
      v16 = *v5;
      v17 = *(v5 + 4);
      if ((a2 & 0x100) != 0)
      {
        if (a1 | a2)
        {
          if ((*(v5 + 4) & 0x100) != 0 && *&v16 | *(v5 + 4))
          {
            return;
          }
        }

        else if ((*(v5 + 4) & 0x100) != 0 && !(*&v16 | *(v5 + 4)))
        {
          return;
        }
      }

      else if ((*(v5 + 4) & 0x100) == 0)
      {
        if (a2)
        {
          if (v17)
          {
            return;
          }
        }

        else if ((v17 & 1) == 0 && *&a1 == v16)
        {
          return;
        }
      }
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 0;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      LOBYTE(v7) = a2;
      if ((a2 & 0x100) == 0)
      {
        goto LABEL_5;
      }

LABEL_23:
      if (a1 | v7)
      {
        [v6 setOpacity:0.0];
        if (a3)
        {
          return;
        }
      }

      else if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
      {
        v20 = swift_allocObject();
        *(v20 + 16) = v3;
        *(v20 + 24) = v6;
        v21 = v3;
        v22 = v6;

        sub_10034A5C8(sub_10034AADC, v20, 1.0);

        if (a3)
        {
          return;
        }
      }

      else
      {
        [v6 setStrokeEnd:1.0];
        sub_100004CB8(&qword_100642970, &qword_100529AD0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_100511AB0;
        sub_100006F10(0, &qword_100640D40, NSNumber_ptr);
        *(v23 + 32) = sub_1004DE5DC(4);
        isa = sub_1004DD85C().super.isa;

        [v6 setLineDashPattern:isa];

        if (a3)
        {
          return;
        }
      }

      goto LABEL_46;
    }
  }

  v13 = objc_opt_self();
  [v13 begin];
  [v13 setDisableActions:1];
  v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  if (v5[10])
  {
LABEL_13:
    [v6 setLineDashPattern:0];
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v3;
      v15 = v3;

      sub_10034A5C8(sub_100349B44, v14, 0.0);

      goto LABEL_15;
    }

LABEL_40:
    if (a3)
    {
      return;
    }

    goto LABEL_46;
  }

  a1 = *v5;
  v7 = *(v5 + 4);
  if ((v7 & 0x100) != 0)
  {
    goto LABEL_23;
  }

LABEL_5:
  v8 = *&a1;
  [v6 setLineDashPattern:0];
  LODWORD(v9) = 1.0;
  [v6 setOpacity:v9];
  if ((v7 & 1) == 0)
  {
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v3;

      v19 = v3;
      sub_10034A5C8(sub_10034B148, v18, v8);

      if (a3)
      {
        return;
      }

      goto LABEL_46;
    }

    [v6 setStrokeEnd:v8];
    goto LABEL_40;
  }

  v10 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator;
  v11 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator];
  if (!v11)
  {
    type metadata accessor for CircularProgressView.SpinAnimator();
    v11 = swift_allocObject();
    *(v11 + 40) = 0;
    *(v11 + 16) = 0xD000000000000010;
    *(v11 + 24) = 0x80000001004F6030;
    *(v11 + 32) = v6;
    v12 = v6;
  }

  *&v3[v10] = v11;

  sub_10034A2B0();
LABEL_15:

  if (a3)
  {
    return;
  }

LABEL_46:
  v25 = objc_opt_self();

  [v25 commit];
}

BOOL static CircularProgressView.State.__derived_enum_equals(_:_:)(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) != 0)
  {
    v5 = (a3 | a4) == 0;
    if ((a4 & 0x100) == 0)
    {
      v5 = 0;
    }

    v6 = (a3 | a4) != 0;
    if ((a4 & 0x100) == 0)
    {
      v6 = 0;
    }

    if (a1 | a2)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if ((a4 & 0x100) == 0)
    {
      if (a2)
      {
        if (a4)
        {
          return 1;
        }
      }

      else if ((a4 & 1) == 0 && *&a1 == *&a3)
      {
        return 1;
      }
    }

    return 0;
  }
}

BOOL sub_100348DE0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*(a2 + 9))
      {
        return (*&v4 | v5) != 0;
      }
    }

    else if (*(a2 + 9))
    {
      return (*&v4 | v5) == 0;
    }

    return 0;
  }

  if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

char *CircularProgressView.init(size:)(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  *v6 = 0;
  *(v6 + 4) = 0;
  v6[10] = 1;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale] = 0x3FE0000000000000;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator] = 0;
  v7 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *&v2[v7] = [objc_allocWithZone(CAShapeLayer) init];
  v8 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *&v2[v8] = [objc_allocWithZone(CAShapeLayer) init];
  v9 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  *v9 = a1;
  v9[1] = a2;
  v25.receiver = v2;
  v25.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, a1, a2);
  v11 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  v12 = *&v10[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 clearColor];
  v17 = [v16 CGColor];

  [v15 setFillColor:v17];
  [*&v10[v11] setLineWidth:2.5];
  v18 = [v14 layer];
  [v18 addSublayer:*&v10[v11]];

  v19 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  [*&v14[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer] setLineCap:kCALineCapRound];
  [*&v14[v19] setStrokeEnd:0.0];
  v20 = *&v14[v19];
  v21 = [v13 clearColor];
  v22 = [v21 CGColor];

  [v20 setFillColor:v22];
  [*&v14[v19] setLineWidth:2.5];
  [*&v14[v19] setLineDashPhase:6.0];
  v23 = [v14 layer];

  [v23 addSublayer:*&v14[v19]];
  sub_100349140();

  return v14;
}

void sub_100349140()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v2 = [objc_opt_self() tertiarySystemFillColor];
  v3 = [v2 CGColor];

  [v1 setStrokeColor:v3];
  v4 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v5 = [v0 tintColor];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 CGColor];

    [v4 setStrokeColor:v7];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CircularProgressView.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  sub_100349140();
}

Swift::Void __swiftcall CircularProgressView.layoutSubviews()()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  [v0 bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v5 = CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v6 = CGRectGetHeight(v26);
  if (v6 >= v5)
  {
    v6 = v5;
  }

  v7 = (v6 + -2.5) * 0.5;
  sub_1004DE41C();
  v10 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v8 startAngle:v9 endAngle:v7 clockwise:{-1.57079633, 4.71238898}];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v12 = [v10 CGPath];
  [v11 setPath:v12];

  v13 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v14 = [v10 CGPath];
  [v13 setPath:v14];

  [v13 setBounds:{x, y, width, height}];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v15 = CGRectGetWidth(v27) * 0.5;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  [v13 setPosition:{v15, CGRectGetHeight(v28) * 0.5}];
  v16 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v17 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v17)
  {
    [v17 setFrame:{x, y, width, height}];
    v18 = *&v0[v16];
    if (v18)
    {
      v19 = v18;
      [v19 frame];
      v20 = CGRectGetWidth(v29);
      [v19 frame];
      v21 = CGRectGetHeight(v30);
      if (v21 < v20)
      {
        v20 = v21;
      }

      v22 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v23 = [objc_opt_self() configurationWithPointSize:v20 * *&v0[v22]];
      [v19 setPreferredSymbolConfiguration:v23];
    }
  }
}

double CircularProgressView.sizeThatFits(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  swift_beginAccess();
  return *v1;
}

id CircularProgressView.preferredSize.setter(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (v7 != a1 || v8 != a2)
  {
    return [v2 invalidateIntrinsicContentSize];
  }

  return result;
}

void (*CircularProgressView.preferredSize.modify(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_100349804;
}

void sub_100349804(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v3 = ((*a1)[6] + (*a1)[5]);
  v4 = *(*a1 + 4);
  v5 = *v3;
  v6 = v3[1];
  *v3 = v2;
  v3[1] = v4;
  if (v2 != v5 || v4 != v6)
  {
    [v1[5] invalidateIntrinsicContentSize];
  }

  free(v1);
}

void (*CircularProgressView.state.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 8);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10);
  *a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state);
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
  return sub_1003498F4;
}

double sub_100349938(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  sub_100004CB8(&qword_100642970, &qword_100529AD0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100511AB0;
  sub_100006F10(0, &qword_100640D40, NSNumber_ptr);
  *(v8 + 32) = sub_1004DE5DC(4);
  isa = sub_1004DD85C().super.isa;

  [a3 setLineDashPattern:isa];

  v10 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v12 = *v10;
    v13 = *(v10 + 8);
    if ((v13 & 0x100) != 0)
    {
      if (!(*&v12 | v13))
      {
        return 1.0;
      }
    }

    else
    {
      result = v12;
      if (v13)
      {
        return 0.6;
      }
    }
  }

  return result;
}

double sub_100349A6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  v6 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v8 = *v6;
    v9 = *(v6 + 8);
    if ((v9 & 0x100) != 0)
    {
      if (!(*&v8 | v9))
      {
        return 1.0;
      }
    }

    else
    {
      result = v8;
      if (v9)
      {
        return 0.6;
      }
    }
  }

  return result;
}

uint64_t sub_100349B0C()
{

  return swift_deallocObject();
}

void sub_100349B60()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
    v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v4)
    {
      v5 = v2;
      v6 = v4;
    }

    else
    {
      v8 = objc_allocWithZone(UIImageView);
      v9 = v2;
      v6 = [v8 init];
    }

    v10 = v4;
    [v6 setImage:v2];
    v11 = *(v0 + v3);
    if (v11)
    {
      v12 = v11;
      [v12 frame];
      Width = CGRectGetWidth(v18);
      [v12 frame];
      Height = CGRectGetHeight(v19);
      if (Height < Width)
      {
        Width = Height;
      }

      v15 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v16 = [objc_opt_self() configurationWithPointSize:Width * *(v0 + v15)];
      [v12 setPreferredSymbolConfiguration:v16];

      v7 = *(v0 + v3);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v3) = v6;
    v17 = v6;
    sub_100349E5C(v7);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
    sub_100349E5C(v7);
  }
}

void *CircularProgressView.image.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CircularProgressView.image.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_100349B60();
}

void (*CircularProgressView.image.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100349E28;
}

void sub_100349E28(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100349B60();
  }
}

void sub_100349E5C(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v5)
  {
    if (!a1)
    {
LABEL_10:
      v13 = v5;
      [v13 setContentMode:4];
      [v2 addSubview:v13];

      return;
    }

    sub_100006F10(0, &unk_100640F10, UIImageView_ptr);
    v6 = v5;
    v3 = v3;
    v7 = sub_1004DE5FC();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v3;
  v9 = [v8 superview];
  if (v9)
  {
    v10 = v9;
    sub_100006F10(0, &qword_100644F50, UIView_ptr);
    v11 = v2;
    v12 = sub_1004DE5FC();

    if (v12)
    {
      [v8 removeFromSuperview];
    }
  }

  v5 = *&v2[v4];
  if (v5)
  {
    goto LABEL_10;
  }
}

double CircularProgressView.imageScale.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  return *(v0 + v1);
}

void CircularProgressView.imageScale.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v5)
    {
      v6 = v5;
      [v6 frame];
      Width = CGRectGetWidth(v10);
      [v6 frame];
      Height = CGRectGetHeight(v11);
      if (Height >= Width)
      {
        Height = Width;
      }

      v9 = [objc_opt_self() configurationWithPointSize:*(v1 + v3) * Height];
      [v6 setPreferredSymbolConfiguration:v9];
    }
  }
}

void (*CircularProgressView.imageScale.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_10034A1A0;
}

void sub_10034A1A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    CircularProgressView.imageScale.setter(v3);
  }

  else
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[4];
      v8 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
      if (v8)
      {
        v9 = v2[5];
        v10 = v8;
        [v10 frame];
        Width = CGRectGetWidth(v15);
        [v10 frame];
        Height = CGRectGetHeight(v16);
        if (Height >= Width)
        {
          Height = Width;
        }

        v13 = [objc_opt_self() configurationWithPointSize:*(v7 + v9) * Height];
        [v10 setPreferredSymbolConfiguration:v13];
      }
    }
  }

  free(v2);
}

void sub_10034A2B0()
{
  *(v0 + 40) = 0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = sub_1004DD3FC();
  [v1 removeAnimationForKey:v4];

  *&v20[0] = v3;
  *(&v20[0] + 1) = v2;

  v21._countAndFlagsBits = 0x676E69646E65;
  v21._object = 0xE600000000000000;
  sub_1004DD5FC(v21);
  v5 = sub_1004DD3FC();

  [v1 removeAnimationForKey:v5];

  [v1 setStrokeEnd:0.6];
  v6 = sub_1004DD3FC();
  v7 = [objc_opt_self() animationWithKeyPath:v6];

  v8 = [v1 presentationLayer];
  if (!v8)
  {
    v8 = v1;
  }

  v9 = sub_1004DD3FC();
  v10 = [v8 valueForKeyPath:v9];

  if (v10)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1002DFAAC(v20);
  }

  isa = sub_1004DDB7C().super.super.isa;
  [v7 setFromValue:isa];

  v12 = sub_1004DDB7C().super.super.isa;
  [v7 setToValue:v12];

  v13 = v7;
  [v13 setRemovedOnCompletion:1];
  [v13 setFillMode:kCAFillModeBoth];
  [v13 setDuration:1.0];
  LODWORD(v14) = 2139095040;
  [v13 setRepeatCount:v14];
  v15 = CACurrentMediaTime();
  [v13 duration];
  [v13 setBeginTime:{(v15 - fmod(v15, v16))}];

  v17 = sub_1004DD3FC();
  [v1 addAnimation:v13 forKey:v17];
}

void sub_10034A5C8(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(v3 + 40) & 1) == 0)
  {
    *(v3 + 40) = 1;
    v7 = *(v3 + 32);
    v8 = [v7 presentationLayer];
    if (!v8)
    {
      v8 = v7;
    }

    v9 = sub_1004DD3FC();
    v10 = [v8 valueForKeyPath:v9];

    if (v10)
    {
      sub_1004DE8DC();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
    }

    v11 = fmin(a3, 0.1);
    v42[0] = v40;
    v42[1] = v41;
    if (*(&v41 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_1002DFAAC(v42);
    }

    v12 = sub_1004DD3FC();
    v13 = objc_opt_self();
    v14 = [v13 animationWithKeyPath:v12];

    isa = sub_1004DDB7C().super.super.isa;
    [v14 setFromValue:isa];

    v16 = sub_1004DDB7C().super.super.isa;
    [v14 setToValue:v16];

    v17 = sub_1004DD3FC();
    v18 = [v13 animationWithKeyPath:v17];

    v19 = sub_1004D874C().super.super.isa;
    [v18 setToValue:v19];

    v20 = [objc_allocWithZone(CAAnimationGroup) init];
    sub_100004CB8(&qword_100642970, &qword_100529AD0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100511A20;
    *(v21 + 32) = v14;
    *(v21 + 40) = v18;
    sub_100006F10(0, &unk_100640F20, CAAnimation_ptr);
    v22 = v14;
    v23 = v18;
    v24 = sub_1004DD85C().super.isa;

    [v20 setAnimations:v24];

    v25 = v20;
    [v25 setDuration:((1.0 - (0.6 - v11)) * 6.28318531 + -6.28318531 + 6.28318531) * 0.159154943];
    [v25 setFillMode:kCAFillModeForwards];
    [v25 setRemovedOnCompletion:0];
    v26 = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
    v27 = objc_allocWithZone(v26);
    v28 = &v27[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    *v28 = 0;
    *(v28 + 1) = 0;
    v39.receiver = v27;
    v39.super_class = v26;
    v29 = objc_msgSendSuper2(&v39, "init");
    [v25 setDelegate:v29];

    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v3;
    *(v30 + 32) = v11;
    *(v30 + 40) = a1;
    *(v30 + 48) = a2;
    *(v30 + 56) = a3;
    v31 = &v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    v32 = *&v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    v33 = *&v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop + 8];
    *v31 = sub_10034B12C;
    v31[1] = v30;
    v34 = v29;

    sub_10000DE74(v32, v33);
    v36 = *(v3 + 16);
    v35 = *(v3 + 24);
    v37 = sub_1004DD3FC();
    [v7 removeAnimationForKey:v37];

    *&v42[0] = v36;
    *(&v42[0] + 1) = v35;

    v43._countAndFlagsBits = 0x676E69646E65;
    v43._object = 0xE600000000000000;
    sub_1004DD5FC(v43);
    v38 = sub_1004DD3FC();

    [v7 addAnimation:v25 forKey:v38];
  }
}

uint64_t sub_10034AA9C()
{

  return swift_deallocObject();
}

void sub_10034AB08(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (*(a5 + 40) == 1)
  {
    v11 = objc_opt_self();
    [v11 begin];
    [v11 setDisableActions:1];
    v12 = *(a5 + 32);
    v16 = *(a5 + 16);
    v17 = *(a5 + 24);

    v18._countAndFlagsBits = 0x676E69646E65;
    v18._object = 0xE600000000000000;
    sub_1004DD5FC(v18);
    v13 = sub_1004DD3FC();

    [v12 removeAnimationForKey:{v13, v16, v17}];

    [v12 setStrokeStart:0.0];
    [v12 setStrokeEnd:a1];
    [v11 commit];
    v14 = COERCE_DOUBLE(a6(a5));
    if (v15)
    {
      v14 = a2;
    }

    [v12 setStrokeEnd:v14];
  }
}

id sub_10034AD3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10034AD88()
{

  return swift_deallocClassInstance();
}

void _s11MusicCoreUI20CircularProgressViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 10) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *(v0 + v2) = [objc_allocWithZone(CAShapeLayer) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  sub_1004DECCC();
  __break(1u);
}

uint64_t initializeBufferWithCopyOfBuffer for CircularProgressView.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CircularProgressView.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CircularProgressView.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_10034B070(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10034B08C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t sub_10034B0E4()
{

  return swift_deallocObject();
}

uint64_t sub_10034B14C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1004DF08C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10034B1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DCC0C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100641A60, &qword_10052C450);
  __chkstk_darwin();
  v9 = &v51 - v8;
  v62 = sub_100004CB8(&qword_1006408A8, &unk_10052D3E0);
  __chkstk_darwin();
  v67 = &v51 - v10;
  v69 = type metadata accessor for ArtworkImage.ViewModel(0);
  v11 = *(v69 - 8);
  __chkstk_darwin();
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100642C70, &qword_100527540);
  __chkstk_darwin();
  v64 = &v51 - v14;
  v65 = sub_100004CB8(&unk_100641C70, &qword_10052EBF0);
  __chkstk_darwin();
  v71 = &v51 - v15;
  v70 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin();
  v17 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v66 = &v51 - v19;
  v20 = *(a1 + 16);
  if (v20 == *(a2 + 16))
  {
    if (v20 && a1 != a2)
    {
      v54 = v9;
      v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v22 = a1 + v21;
      v23 = a2 + v21;
      v63 = (v11 + 48);
      v57 = (v5 + 48);
      v58 = v4;
      v51 = (v5 + 32);
      v52 = v7;
      v53 = (v5 + 8);
      v61 = *(v18 + 72);
      v24 = v64;
      v25 = v66;
      v59 = v13;
      v56 = v17;
      while (1)
      {
        sub_10036D7CC(v22, v25, type metadata accessor for ArtworkImage.GridPreview.Item);
        v68 = v22;
        sub_10036D7CC(v23, v17, type metadata accessor for ArtworkImage.GridPreview.Item);
        v26 = *v25 == *v17 && v25[1] == v17[1];
        if (!v26 && (sub_1004DF08C() & 1) == 0)
        {
LABEL_32:
          sub_10036DD1C(v17, type metadata accessor for ArtworkImage.GridPreview.Item);
          sub_10036DD1C(v25, type metadata accessor for ArtworkImage.GridPreview.Item);
          goto LABEL_33;
        }

        v27 = v71;
        v28 = *(v70 + 20);
        v29 = *(v65 + 48);
        sub_1000108DC(v25 + v28, v71, &qword_100642C70, &qword_100527540);
        sub_1000108DC(v17 + v28, v27 + v29, &qword_100642C70, &qword_100527540);
        v30 = *v63;
        v31 = v27;
        v32 = v69;
        if ((*v63)(v31, 1, v69) == 1)
        {
          break;
        }

        v60 = v20;
        v34 = v71;
        sub_1000108DC(v71, v24, &qword_100642C70, &qword_100527540);
        if (v30(v34 + v29, 1, v32) == 1)
        {
          sub_10036DD1C(v24, type metadata accessor for ArtworkImage.ViewModel);
          v25 = v66;
LABEL_26:
          v48 = &unk_100641C70;
          v49 = &qword_10052EBF0;
          goto LABEL_31;
        }

        v35 = v59;
        sub_10036D838(v71 + v29, v59, type metadata accessor for ArtworkImage.ViewModel);
        if ((sub_1004DCC8C() & 1) == 0)
        {
          sub_10036DD1C(v35, type metadata accessor for ArtworkImage.ViewModel);
          goto LABEL_30;
        }

        v36 = *(v69 + 20);
        v37 = *(v62 + 48);
        v38 = v67;
        sub_1000108DC(v24 + v36, v67, &qword_100641A60, &qword_10052C450);
        sub_1000108DC(v35 + v36, v38 + v37, &qword_100641A60, &qword_10052C450);
        v39 = *v57;
        v40 = v38;
        v41 = v58;
        if ((*v57)(v40, 1, v58) == 1)
        {
          sub_10036DD1C(v35, type metadata accessor for ArtworkImage.ViewModel);
          v42 = v39(v67 + v37, 1, v41);
          v17 = v56;
          if (v42 != 1)
          {
            goto LABEL_29;
          }

          sub_10001074C(v67, &qword_100641A60, &qword_10052C450);
          v24 = v64;
          sub_10036DD1C(v64, type metadata accessor for ArtworkImage.ViewModel);
          v25 = v66;
          v20 = v60;
          goto LABEL_18;
        }

        v43 = v67;
        v44 = v54;
        sub_1000108DC(v67, v54, &qword_100641A60, &qword_10052C450);
        if (v39(v43 + v37, 1, v41) == 1)
        {
          sub_10036DD1C(v59, type metadata accessor for ArtworkImage.ViewModel);
          (*v53)(v44, v41);
          v17 = v56;
LABEL_29:
          sub_10001074C(v67, &qword_1006408A8, &unk_10052D3E0);
          v24 = v64;
LABEL_30:
          v25 = v66;
          sub_10036DD1C(v24, type metadata accessor for ArtworkImage.ViewModel);
          v48 = &qword_100642C70;
          v49 = &qword_100527540;
LABEL_31:
          sub_10001074C(v71, v48, v49);
          goto LABEL_32;
        }

        v45 = v52;
        (*v51)(v52, v43 + v37, v41);
        sub_10036BAE8(&qword_1006408B0, &type metadata accessor for Artwork.CropStyle, &protocol conformance descriptor for Artwork.CropStyle);
        v55 = sub_1004DD35C();
        v46 = *v53;
        (*v53)(v45, v41);
        sub_10036DD1C(v59, type metadata accessor for ArtworkImage.ViewModel);
        v46(v44, v41);
        sub_10001074C(v43, &qword_100641A60, &qword_10052C450);
        v24 = v64;
        sub_10036DD1C(v64, type metadata accessor for ArtworkImage.ViewModel);
        sub_10001074C(v71, &qword_100642C70, &qword_100527540);
        v17 = v56;
        v25 = v66;
        v20 = v60;
        if ((v55 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_21:
        v47 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(v25 + *(v70 + 24), v17 + *(v70 + 24));
        sub_10036DD1C(v17, type metadata accessor for ArtworkImage.GridPreview.Item);
        sub_10036DD1C(v25, type metadata accessor for ArtworkImage.GridPreview.Item);
        if (v47)
        {
          v23 += v61;
          v22 = v68 + v61;
          if (--v20)
          {
            continue;
          }
        }

        return v47 & 1;
      }

      v33 = v30(v71 + v29, 1, v32);
      v25 = v66;
      if (v33 != 1)
      {
        goto LABEL_26;
      }

LABEL_18:
      sub_10001074C(v71, &qword_100642C70, &qword_100527540);
      goto LABEL_21;
    }

    v47 = 1;
  }

  else
  {
LABEL_33:
    v47 = 0;
  }

  return v47 & 1;
}

uint64_t sub_10034BAF0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11MusicCoreUI16PlaylistCuratorsO4ViewV13ConfigurationV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = sub_1004DCC9C();
  v4 = *(v46 - 8);
  __chkstk_darwin();
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v44 = &v34 - v6;
  v43 = sub_100004CB8(&qword_100641D98, &qword_10052FA30);
  __chkstk_darwin();
  v8 = &v34 - v7;
  v42 = type metadata accessor for PlaylistCurators.Curator(0);
  __chkstk_darwin();
  v47 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v45 = (&v34 - v11);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = (v4 + 48);
    v35 = (v4 + 32);
    v36 = (v4 + 48);
    v37 = (v4 + 8);
    v41 = *(v10 + 72);
    v17 = v44;
    v18 = v45;
    while (1)
    {
      sub_10036D7CC(v14, v18, type metadata accessor for PlaylistCurators.Curator);
      v19 = v47;
      sub_10036D7CC(v15, v47, type metadata accessor for PlaylistCurators.Curator);
      v20 = *v18 == *v19 && v18[1] == v19[1];
      if (!v20 && (sub_1004DF08C() & 1) == 0)
      {
        break;
      }

      v21 = v18;
      v22 = v16;
      v23 = *(v42 + 20);
      v24 = *(v43 + 48);
      sub_1000108DC(v21 + v23, v8, &unk_100642930, &unk_1005294A0);
      sub_1000108DC(v47 + v23, &v8[v24], &unk_100642930, &unk_1005294A0);
      v25 = *v22;
      if ((*v22)(v8, 1, v46) == 1)
      {
        if (v25(&v8[v24], 1, v46) != 1)
        {
          goto LABEL_19;
        }

        v16 = v22;
        sub_10001074C(v8, &unk_100642930, &unk_1005294A0);
        sub_10036DD1C(v47, type metadata accessor for PlaylistCurators.Curator);
        v18 = v45;
        sub_10036DD1C(v45, type metadata accessor for PlaylistCurators.Curator);
      }

      else
      {
        v40 = v14;
        v26 = v8;
        sub_1000108DC(v8, v17, &unk_100642930, &unk_1005294A0);
        if (v25(&v8[v24], 1, v46) == 1)
        {
          (*v37)(v17, v46);
LABEL_19:
          sub_10001074C(v8, &qword_100641D98, &qword_10052FA30);
          v18 = v45;
          break;
        }

        v27 = &v8[v24];
        v28 = v38;
        v29 = v46;
        (*v35)(v38, v27, v46);
        sub_10036BAE8(&qword_100641DA0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        v39 = sub_1004DD35C();
        v30 = *v37;
        v31 = v28;
        v32 = v44;
        (*v37)(v31, v29);
        v17 = v32;
        v30(v32, v29);
        sub_10001074C(v26, &unk_100642930, &unk_1005294A0);
        sub_10036DD1C(v47, type metadata accessor for PlaylistCurators.Curator);
        v18 = v45;
        v16 = v36;
        sub_10036DD1C(v45, type metadata accessor for PlaylistCurators.Curator);
        v8 = v26;
        v14 = v40;
        if ((v39 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v41;
      v14 += v41;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_10036DD1C(v47, type metadata accessor for PlaylistCurators.Curator);
    sub_10036DD1C(v18, type metadata accessor for PlaylistCurators.Curator);
  }

  return 0;
}

uint64_t Collaboration.Management.Model.__allocating_init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_10036AED0(a1, a2);

  return v4;
}

uint64_t Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_10036AED0(a1, a2);

  return v2;
}

uint64_t property wrapper backing initializer of Collaboration.Management.Model.playlist(char *a1)
{
  v2 = sub_1004DD05C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v12 - v7;
  v9 = *(v3 + 16);
  v9(&v12 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  sub_1004D9B2C();
  v10 = *(v3 + 8);
  v10(a1, v2);
  return (v10)(v8, v2);
}

uint64_t sub_10034C2D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static ApplicationCapabilities.shared.getter(v3);
    sub_100073E60(v3);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1004D9B7C();
  }

  return result;
}

uint64_t sub_10034C370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_100004CB8(&qword_100642210, &qword_10052F1A8);
  v5[7] = swift_task_alloc();
  v6 = sub_100004CB8(&qword_100642218, &qword_10052F1B0);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_100004CB8(&qword_100642220, &qword_10052F1B8);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = sub_100004CB8(&qword_100642228, &qword_10052F1C0);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10034C544, 0, 0);
}

uint64_t sub_10034C544()
{
  sub_1004DD05C();
  sub_1004DCDAC();
  sub_10036BAE8(&qword_100642230, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  sub_1004DC20C();
  swift_getKeyPath();
  v0[2] = sub_1004DCF4C();
  v0[3] = v1;
  sub_1004DC1FC();

  sub_1004DDA4C();
  v0[17] = sub_1004DDA3C();
  v3 = sub_1004DD9BC();

  return _swift_task_switch(sub_10034C6B0, v3, v2);
}

uint64_t sub_10034C6B0()
{

  sub_100042B08(&qword_100642238, &qword_100642228, &qword_10052F1C0, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  *(v0 + 144) = sub_1004D8D2C();

  return _swift_task_switch(sub_10034C75C, 0, 0);
}

uint64_t sub_10034C75C()
{
  v1 = v0[13];
  v15 = v0[14];
  v16 = v0[16];
  v13 = v0[12];
  v14 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v11 = v0[8];
  v12 = v0[11];
  v5 = v0[6];
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = v0[18];

  sub_1004D8D4C();

  sub_100006F10(0, &qword_100642240, OS_dispatch_queue_ptr);
  v6 = sub_1004DE14C();
  v0[4] = v6;
  v7 = sub_1004DE12C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100042B08(&qword_100642248, &qword_100642218, &qword_10052F1B0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100371824();
  sub_1004D9BDC();
  sub_10001074C(v4, &qword_100642210, &qword_10052F1A8);

  (*(v3 + 8))(v2, v11);
  swift_allocObject();
  swift_weakInit();
  sub_100042B08(&qword_100642258, &qword_100642220, &qword_10052F1B8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v8 = sub_1004D9C0C();

  (*(v13 + 8))(v1, v12);
  (*(v14 + 8))(v16, v15);
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = v8;

  v9 = v0[1];

  return v9();
}

void sub_10034CA24(uint64_t a1, uint64_t a2)
{
  v220 = a1;
  sub_100004CB8(&unk_100641880, &qword_10052A7A0);
  __chkstk_darwin();
  v216 = &v182 - v3;
  v4 = sub_1004DCDAC();
  v214 = *(v4 - 8);
  __chkstk_darwin();
  v228 = &v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v213 = &v182 - v6;
  __chkstk_darwin();
  v231 = &v182 - v7;
  __chkstk_darwin();
  v223 = &v182 - v8;
  v225 = sub_100004CB8(&qword_100642260, &qword_10052F1F0);
  v205 = *(v225 - 8);
  __chkstk_darwin();
  v204 = &v182 - v9;
  v203 = sub_100004CB8(&qword_100642268, &qword_10052F1F8);
  __chkstk_darwin();
  v224 = &v182 - v10;
  v196 = sub_1004D826C();
  v194 = *(v196 - 8);
  __chkstk_darwin();
  v189 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_100004CB8(&qword_100642270, &qword_10052F200);
  __chkstk_darwin();
  v195 = &v182 - v12;
  v202 = sub_1004DD05C();
  v201 = *(v202 - 1);
  __chkstk_darwin();
  v199 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v200 = &v182 - v14;
  __chkstk_darwin();
  v192 = &v182 - v15;
  sub_100004CB8(&qword_100641C40, &qword_10052EA60);
  __chkstk_darwin();
  v190 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v197 = &v182 - v17;
  __chkstk_darwin();
  v198 = &v182 - v18;
  sub_100004CB8(&qword_100641C58, &qword_10052EB98);
  __chkstk_darwin();
  v222 = &v182 - v19;
  v215 = sub_1004DCD6C();
  v210 = *(v215 - 8);
  __chkstk_darwin();
  v208 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v209 = &v182 - v21;
  v229 = sub_1004DCE1C();
  v230 = *(v229 - 8);
  __chkstk_darwin();
  v211 = &v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_100004CB8(&qword_100642278, &qword_10052F208);
  v235 = *(v234 - 8);
  __chkstk_darwin();
  v217 = &v182 - v23;
  v232 = sub_1004D966C();
  v226 = *(v232 - 8);
  __chkstk_darwin();
  v218 = &v182 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v207 = &v182 - v25;
  __chkstk_darwin();
  v206 = &v182 - v26;
  __chkstk_darwin();
  v227 = &v182 - v27;
  v212 = sub_100004CB8(&qword_100641C38, &qword_10052EA58);
  __chkstk_darwin();
  v191 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v221 = &v182 - v29;
  __chkstk_darwin();
  v31 = &v182 - v30;
  __chkstk_darwin();
  v33 = &v182 - v32;
  __chkstk_darwin();
  v236 = &v182 - v34;
  sub_100004CB8(&qword_100642280, &qword_10052F210);
  __chkstk_darwin();
  v36 = &v182 - v35;
  sub_100004CB8(&qword_100642288, &qword_10052F218);
  __chkstk_darwin();
  v219 = (&v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v39 = &v182 - v38;
  __chkstk_darwin();
  v41 = &v182 - v40;
  __chkstk_darwin();
  v43 = &v182 - v42;
  __chkstk_darwin();
  v237 = &v182 - v44;
  swift_beginAccess();
  v233 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v46 = *(Strong + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse);

    if (v46)
    {
      v47 = sub_1004D8D3C();

      if (v47)
      {
        v188 = v4;
        sub_1000108DC(v220, v36, &qword_100642280, &qword_10052F210);
        v48 = sub_100004CB8(&qword_100642290, &qword_10052F220);
        v49 = *(v48 - 8);
        if ((*(v49 + 48))(v36, 1, v48) == 1)
        {
          sub_10001074C(v36, &qword_100642280, &qword_10052F210);
        }

        else
        {
          v50 = sub_1004DC22C();
          (*(v49 + 8))(v36, v48);
          if (*(v50 + 16))
          {
            v51 = v234;
            (*(v235 + 16))(v237, v50 + ((*(v235 + 80) + 32) & ~*(v235 + 80)), v234);

            v52 = 0;
            v53 = v236;
            goto LABEL_10;
          }
        }

        v52 = 1;
        v53 = v236;
        v51 = v234;
LABEL_10:
        v54 = v235;
        v55 = v237;
        (*(v235 + 56))(v237, v52, 1, v51);
        sub_1000108DC(v55, v43, &qword_100642288, &qword_10052F218);
        v56 = *(v54 + 48);
        v185 = v54 + 48;
        v184 = v56;
        if (v56(v43, 1, v51) == 1)
        {
          sub_10001074C(v43, &qword_100642288, &qword_10052F218);
          v57 = v230;
          (*(v230 + 56))(v53, 1, 1, v229);
        }

        else
        {
          swift_getKeyPath();
          sub_1004DC12C();
          v53 = v236;

          (*(v54 + 8))(v43, v51);
          v57 = v230;
        }

        v58 = v227;
        v59 = Logger.collaboration.unsafeMutableAddressor();
        v60 = v226;
        v61 = *(v226 + 16);
        v186 = v59;
        v62 = v232;
        v220 = v226 + 16;
        v187 = v61;
        v61(v58);
        sub_1000108DC(v237, v41, &qword_100642288, &qword_10052F218);
        sub_1000108DC(v53, v33, &qword_100641C38, &qword_10052EA58);
        v63 = sub_1004D964C();
        v183 = sub_1004DDF9C();
        if (os_log_type_enabled(v63, v183))
        {
          v64 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          v239 = v182;
          *v64 = 136446466;
          sub_1000108DC(v41, v39, &qword_100642288, &qword_10052F218);
          v65 = sub_1004DD4DC();
          v67 = v66;
          sub_10001074C(v41, &qword_100642288, &qword_10052F218);
          v68 = sub_1002E5CC4(v65, v67, &v239);

          *(v64 + 4) = v68;
          *(v64 + 12) = 2082;
          sub_1000108DC(v33, v31, &qword_100641C38, &qword_10052EA58);
          v69 = sub_1004DD4DC();
          v71 = v70;
          sub_10001074C(v33, &qword_100641C38, &qword_10052EA58);
          v72 = v69;
          v57 = v230;
          v73 = sub_1002E5CC4(v72, v71, &v239);

          *(v64 + 14) = v73;
          _os_log_impl(&_mh_execute_header, v63, v183, "    [Management] Did update collaborative playlist with:\n        playlist=%{public}s)\n        collaboration=%{public}s", v64, 0x16u);
          swift_arrayDestroy();

          v62 = v232;

          v74 = *(v60 + 8);
          v74(v227, v62);
        }

        else
        {

          sub_10001074C(v33, &qword_100641C38, &qword_10052EA58);
          sub_10001074C(v41, &qword_100642288, &qword_10052F218);
          v74 = *(v60 + 8);
          v74(v58, v62);
        }

        v75 = v235;
        v76 = v229;
        v77 = v219;
        sub_1000108DC(v237, v219, &qword_100642288, &qword_10052F218);
        v78 = v234;
        v79 = v184(v77, 1, v234);
        v80 = v222;
        v81 = v221;
        if (v79 == 1)
        {
          sub_10001074C(v77, &qword_100642288, &qword_10052F218);
LABEL_25:
          v97 = v218;
          v187(v218, v186, v62);
          v98 = sub_1004D964C();
          v99 = sub_1004DDF9C();
          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            *v100 = 0;
            _os_log_impl(&_mh_execute_header, v98, v99, "[Management] Dismissing management sheet", v100, 2u);
          }

          v74(v97, v62);
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v240[0] = 1;
            sub_1004D9B7C();
          }

LABEL_29:
          sub_10001074C(v236, &qword_100641C38, &qword_10052EA58);
          sub_10001074C(v237, &qword_100642288, &qword_10052F218);
          return;
        }

        v82 = v77;
        v83 = v217;
        (*(v75 + 32))(v217, v82, v78);
        sub_1000108DC(v236, v81, &qword_100641C38, &qword_10052EA58);
        v227 = *(v57 + 48);
        if ((v227)(v81, 1, v76) == 1)
        {
          (*(v75 + 8))(v83, v78);
          sub_10001074C(v81, &qword_100641C38, &qword_10052EA58);
          v62 = v232;
          goto LABEL_25;
        }

        v212 = v74;
        v84 = v211;
        (*(v57 + 32))(v211, v81, v76);
        sub_1004DCDEC();
        v85 = v210;
        v86 = v215;
        if ((*(v210 + 48))(v80, 1, v215) == 1)
        {
          (*(v57 + 8))(v84, v76);
          (*(v75 + 8))(v217, v234);
          sub_10001074C(v80, &qword_100641C58, &qword_10052EB98);
LABEL_24:
          v62 = v232;
          v74 = v212;
          goto LABEL_25;
        }

        v87 = v209;
        (*(v85 + 32))(v209, v80, v86);
        v88 = v208;
        (*(v85 + 104))(v208, enum case for Playlist.Collaborator.Status.notJoined(_:), v86);
        sub_10036BAE8(&unk_100641C60, &type metadata accessor for Playlist.Collaborator.Status, &protocol conformance descriptor for Playlist.Collaborator.Status);
        v89 = v85;
        v90 = sub_1004DD35C();
        v91 = v215;
        v92 = v90;
        v94 = *(v89 + 8);
        v93 = v89 + 8;
        v95 = v88;
        v96 = v94;
        v94(v95, v215);
        if (v92)
        {
          v96(v87, v91);
          (*(v230 + 8))(v211, v76);
          (*(v75 + 8))(v217, v234);
          goto LABEL_24;
        }

        v210 = v93;
        swift_beginAccess();
        v101 = swift_weakLoadStrong();
        v102 = v230;
        if (!v101 || (swift_getKeyPath(), swift_getKeyPath(), sub_1004D9B6C(), , , , v239 != 1))
        {
LABEL_47:
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            v120 = v200;
            sub_1004DC11C();
            swift_getKeyPath();
            swift_getKeyPath();
            v121 = v201;
            v122 = v202;
            (*(v201 + 16))(v199, v120, v202);
            sub_1004D9B7C();
            (*(v121 + 8))(v120, v122);
          }

          swift_beginAccess();
          v123 = swift_weakLoadStrong();
          v124 = v224;
          if (v123)
          {
            v125 = Playlist.Collaboration.isOpenInvitation.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v239) = v125 & 1;
            sub_1004D9B7C();
          }

          v202 = v96;
          v126 = v204;
          sub_1004DC13C();
          v127 = v205;
          v128 = v225;
          (*(v205 + 16))(v124, v126, v225);
          v129 = *(v203 + 36);
          v130 = sub_100042B08(&qword_100642298, &qword_100642260, &qword_10052F1F0, &protocol conformance descriptor for MusicItemCollection<A>);
          sub_1004DDCFC();
          (*(v127 + 8))(v126, v128);
          swift_beginAccess();
          sub_1004DDD3C();
          if (*&v129[v124] == v239)
          {
            v218 = _swiftEmptyArrayStorage;
            v222 = _swiftEmptyArrayStorage;
          }

          else
          {
            v145 = v214;
            v227 = (v214 + 16);
            v146 = (v214 + 32);
            v219 = (v214 + 8);
            v208 = (v214 + 56);
            v222 = _swiftEmptyArrayStorage;
            v218 = _swiftEmptyArrayStorage;
            v221 = v129;
            do
            {
              v152 = v130;
              v153 = sub_1004DDE1C();
              v154 = *v227;
              v155 = v223;
              v156 = v188;
              (*v227)(v223);
              v153(&v239, 0);
              v130 = v152;
              sub_1004DDD4C();
              v157 = *v146;
              v158 = v231;
              (*v146)(v231, v155, v156);
              v159 = sub_1004DCD9C();
              if (v159 == 2 || (v159 & 1) == 0)
              {
                v154(v228, v158, v156);
                v164 = v222;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v164 = sub_1003E0804(0, *(v164 + 2) + 1, 1, v164);
                }

                v166 = *(v164 + 2);
                v165 = *(v164 + 3);
                if (v166 >= v165 >> 1)
                {
                  v164 = sub_1003E0804((v165 > 1), v166 + 1, 1, v164);
                }

                *(v164 + 2) = v166 + 1;
                v167 = (*(v145 + 80) + 32) & ~*(v145 + 80);
                v222 = v164;
                v157(&v164[v167 + *(v145 + 72) * v166], v228, v156);
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v147 = sub_1004D9B5C();
                  v148 = v216;
                  v149 = v231;
                  sub_100369604(v231, v216);
                  v150 = v148;
                  v145 = v214;
                  sub_10001074C(v150, &unk_100641880, &qword_10052A7A0);
                  v147(&v239, 0);
                  v151 = v149;
                  v130 = v152;

                  (*v219)(v151, v188);
                }

                else
                {
                  (*v219)(v231, v156);
                  v168 = v216;
                  (*v208)(v216, 1, 1, v156);
                  sub_10001074C(v168, &unk_100641880, &qword_10052A7A0);
                }
              }

              else
              {
                v154(v213, v158, v156);
                v160 = v218;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v160 = sub_1003E0804(0, *(v160 + 2) + 1, 1, v160);
                }

                v218 = v160;
                v162 = *(v160 + 2);
                v161 = *(v160 + 3);
                if (v162 >= v161 >> 1)
                {
                  v218 = sub_1003E0804((v161 > 1), v162 + 1, 1, v218);
                }

                (*(v145 + 8))(v158, v156);
                v163 = v218;
                *(v218 + 2) = v162 + 1;
                v157(&v163[((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v162], v213, v156);
              }

              v124 = v224;
              sub_1004DDD3C();
            }

            while (*&v221[v124] != v239);
          }

          sub_10001074C(v124, &qword_100642268, &qword_10052F1F8);
          swift_beginAccess();
          v131 = swift_weakLoadStrong();
          v132 = v222;
          if (v131)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v238[1] = v132;

            sub_1004D9B7C();
          }

          swift_beginAccess();
          v133 = swift_weakLoadStrong();
          v134 = v206;
          v135 = v218;
          if (v133)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v238[0] = v135;

            sub_1004D9B7C();
          }

          v136 = v232;
          v187(v134, v186, v232);

          v137 = sub_1004D964C();
          v138 = sub_1004DDF6C();

          if (os_log_type_enabled(v137, v138))
          {
            v139 = swift_slowAlloc();
            v140 = swift_slowAlloc();
            v238[0] = v140;
            *v139 = 136315138;
            v141 = sub_1004DD88C();
            v143 = v142;

            v144 = sub_1002E5CC4(v141, v143, v238);

            *(v139 + 4) = v144;
            _os_log_impl(&_mh_execute_header, v137, v138, "[Management] pendingCollaborators=%s", v139, 0xCu);
            sub_100008D24(v140);
          }

          else
          {
          }

          v169 = v134;
          v170 = v212;
          v212(v169, v136);
          v171 = v207;
          v187(v207, v186, v136);

          v172 = sub_1004D964C();
          v173 = sub_1004DDF6C();

          if (os_log_type_enabled(v172, v173))
          {
            v174 = v171;
            v175 = swift_slowAlloc();
            v176 = swift_slowAlloc();
            v238[0] = v176;
            *v175 = 136315138;
            v177 = sub_1004DD88C();
            v178 = v170;
            v180 = v179;

            v181 = sub_1002E5CC4(v177, v180, v238);

            *(v175 + 4) = v181;
            _os_log_impl(&_mh_execute_header, v172, v173, "[Management] activeCollaborators=%s", v175, 0xCu);
            sub_100008D24(v176);

            v178(v174, v232);
          }

          else
          {

            v170(v171, v136);
          }

          (v202)(v209, v215);
          (*(v230 + 8))(v211, v229);
          (*(v235 + 8))(v217, v234);
          goto LABEL_29;
        }

        swift_beginAccess();
        v103 = swift_weakLoadStrong();
        v104 = v194;
        v105 = v197;
        if (v103)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v106 = v192;
          sub_1004D9B6C();

          v107 = v191;
          sub_1004DCE2C();
          (*(v201 + 8))(v106, v202);
          if ((v227)(v107, 1, v76) != 1)
          {
            v108 = v198;
            sub_1004DCE0C();
            (*(v102 + 8))(v107, v76);
            v109 = v196;
LABEL_38:
            sub_1004DCE0C();
            v110 = *(v193 + 48);
            v111 = v195;
            sub_1000108DC(v108, v195, &qword_100641C40, &qword_10052EA60);
            sub_1000108DC(v105, v111 + v110, &qword_100641C40, &qword_10052EA60);
            v112 = v104;
            v113 = *(v104 + 48);
            if (v113(v111, 1, v109) == 1)
            {
              sub_10001074C(v105, &qword_100641C40, &qword_10052EA60);
              sub_10001074C(v108, &qword_100641C40, &qword_10052EA60);
              if (v113(v111 + v110, 1, v109) == 1)
              {
                sub_10001074C(v111, &qword_100641C40, &qword_10052EA60);
                goto LABEL_47;
              }
            }

            else
            {
              v114 = v190;
              sub_1000108DC(v111, v190, &qword_100641C40, &qword_10052EA60);
              if (v113(v111 + v110, 1, v109) != 1)
              {
                v115 = v111 + v110;
                v116 = v189;
                (*(v112 + 32))(v189, v115, v109);
                sub_10036BAE8(&qword_1006422A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v117 = v114;
                v118 = sub_1004DD35C();
                v119 = *(v112 + 8);
                v119(v116, v109);
                sub_10001074C(v197, &qword_100641C40, &qword_10052EA60);
                sub_10001074C(v198, &qword_100641C40, &qword_10052EA60);
                v119(v117, v109);
                sub_10001074C(v111, &qword_100641C40, &qword_10052EA60);
                if (v118)
                {
                  goto LABEL_47;
                }

LABEL_44:
                swift_beginAccess();
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  LOBYTE(v239) = 0;
                  sub_1004D9B7C();
                }

                goto LABEL_47;
              }

              sub_10001074C(v197, &qword_100641C40, &qword_10052EA60);
              sub_10001074C(v198, &qword_100641C40, &qword_10052EA60);
              (*(v112 + 8))(v114, v109);
            }

            sub_10001074C(v111, &qword_100642270, &qword_10052F200);
            goto LABEL_44;
          }

          sub_10001074C(v107, &qword_100641C38, &qword_10052EA58);
        }

        v108 = v198;
        v109 = v196;
        (*(v104 + 56))(v198, 1, 1, v196);
        goto LABEL_38;
      }
    }
  }
}

double sub_10034EF30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return result;
}

double sub_10034EFA8(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return result;
}

uint64_t sub_10034F024(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1004DD05C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v6, v9, v3);

  sub_1004D9B7C();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_10034F1E4()
{
  v0 = sub_1004DCD6C();
  v29 = *(v0 - 8);
  __chkstk_darwin();
  v27 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100004CB8(&qword_100641C50, &qword_10052EB90);
  __chkstk_darwin();
  v3 = &v26 - v2;
  v4 = sub_1004DD05C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100641C38, &qword_10052EA58);
  __chkstk_darwin();
  v9 = &v26 - v8;
  sub_100004CB8(&qword_100641C58, &qword_10052EB98);
  __chkstk_darwin();
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v26 - v11;
  __chkstk_darwin();
  v14 = &v26 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_1004DCE2C();
  (*(v5 + 8))(v7, v4);
  v15 = sub_1004DCE1C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_10001074C(v9, &qword_100641C38, &qword_10052EA58);
    v17 = v29;
    (*(v29 + 56))(v14, 1, 1, v0);
  }

  else
  {
    sub_1004DCDEC();
    (*(v16 + 8))(v9, v15);
    v17 = v29;
  }

  (*(v17 + 104))(v12, enum case for Playlist.Collaborator.Status.pending(_:), v0);
  (*(v17 + 56))(v12, 0, 1, v0);
  v18 = *(v30 + 48);
  sub_1000108DC(v14, v3, &qword_100641C58, &qword_10052EB98);
  sub_1000108DC(v12, &v3[v18], &qword_100641C58, &qword_10052EB98);
  v19 = *(v17 + 48);
  if (v19(v3, 1, v0) != 1)
  {
    v21 = v28;
    sub_1000108DC(v3, v28, &qword_100641C58, &qword_10052EB98);
    if (v19(&v3[v18], 1, v0) != 1)
    {
      v22 = v27;
      (*(v17 + 32))(v27, &v3[v18], v0);
      sub_10036BAE8(&unk_100641C60, &type metadata accessor for Playlist.Collaborator.Status, &protocol conformance descriptor for Playlist.Collaborator.Status);
      v23 = v21;
      v20 = sub_1004DD35C();
      v24 = *(v17 + 8);
      v24(v22, v0);
      sub_10001074C(v12, &qword_100641C58, &qword_10052EB98);
      sub_10001074C(v14, &qword_100641C58, &qword_10052EB98);
      v24(v23, v0);
      sub_10001074C(v3, &qword_100641C58, &qword_10052EB98);
      return v20 & 1;
    }

    sub_10001074C(v12, &qword_100641C58, &qword_10052EB98);
    sub_10001074C(v14, &qword_100641C58, &qword_10052EB98);
    (*(v17 + 8))(v21, v0);
    goto LABEL_9;
  }

  sub_10001074C(v12, &qword_100641C58, &qword_10052EB98);
  sub_10001074C(v14, &qword_100641C58, &qword_10052EB98);
  if (v19(&v3[v18], 1, v0) != 1)
  {
LABEL_9:
    sub_10001074C(v3, &qword_100641C50, &qword_10052EB90);
    v20 = 0;
    return v20 & 1;
  }

  sub_10001074C(v3, &qword_100641C58, &qword_10052EB98);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_10034F820()
{
  v0 = sub_1004DD05C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v6[15] == 1 && (sub_10034FF40() & 1) == 0)
  {
    v4 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v4 = sub_1004DCEFC();
    (*(v1 + 8))(v3, v0);
  }

  return v4 & 1;
}

uint64_t sub_10034F998()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    sub_1002ED7DC(v1);
  }

  return v1;
}

uint64_t sub_10034FAFC()
{
  sub_1004D83FC();
  __chkstk_darwin();
  v0 = sub_1004DD3EC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v12 - v4;
  sub_1004DD3CC();
  __chkstk_darwin();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v6 = *(v13 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v7 = *(v13 + 16);

  if (v7 == 1)
  {
    if (!v6)
    {
      return 0;
    }

    sub_1004DD3BC();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    sub_1004DD3AC(v14);
    v13 = v6;
    sub_1004DD38C();
    v8._countAndFlagsBits = 0xD000000000000012;
    v8._object = 0x80000001004F6860;
  }

  else
  {
    sub_1004DD3BC();
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    sub_1004DD3AC(v15);
    v13 = v7;
    sub_1004DD38C();
    if (v6)
    {
      v16._countAndFlagsBits = 0x2064656E696F6A20;
      v16._object = 0xAC00000020A280E2;
      sub_1004DD3AC(v16);
      v13 = v6;
      sub_1004DD38C();
      v8._countAndFlagsBits = 0x676E69646E657020;
      v8._object = 0xE800000000000000;
    }

    else
    {
      v8._object = 0x80000001004F6840;
      v8._countAndFlagsBits = 0xD000000000000011;
    }
  }

  sub_1004DD3AC(v8);
  sub_1004DD3DC();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v10 = qword_1006734A0;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v1 + 8))(v5, v0);
  return v9;
}

uint64_t sub_10034FF40()
{
  v0 = sub_1004DD05C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100641C38, &qword_10052EA58);
  __chkstk_darwin();
  v5 = &v19 - v4;
  sub_100004CB8(&qword_100641C40, &qword_10052EA60);
  __chkstk_darwin();
  v7 = &v19 - v6;
  v8 = sub_1004D826C();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v20 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v19 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_1004DCE2C();
  (*(v1 + 8))(v3, v0);
  v12 = sub_1004DCE1C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    sub_10001074C(v5, &qword_100641C38, &qword_10052EA58);
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  else
  {
    sub_1004DCE0C();
    (*(v13 + 8))(v5, v12);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v15 = v19;
      (*(v9 + 32))(v19, v7, v8);
      v16 = v20;
      sub_1004D825C();
      v14 = sub_1004D81DC();
      v17 = *(v9 + 8);
      v17(v16, v8);
      v17(v15, v8);
      return v14 & 1;
    }
  }

  sub_10001074C(v7, &qword_100641C40, &qword_10052EA60);
  v14 = 1;
  return v14 & 1;
}

uint64_t sub_100350310()
{
  v1 = v0;
  sub_1004DD3CC();
  __chkstk_darwin();
  v60 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004D84CC();
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin();
  v68 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004D7D4C();
  v72 = *(v5 - 8);
  v73 = v5;
  __chkstk_darwin();
  v71 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D83FC();
  __chkstk_darwin();
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004DD3EC();
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin();
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v58 - v10;
  v11 = sub_1004DD05C();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v58 - v14;
  __chkstk_darwin();
  v16 = &v58 - v15;
  sub_100004CB8(&qword_100641C38, &qword_10052EA58);
  __chkstk_darwin();
  v18 = &v58 - v17;
  sub_100004CB8(&qword_100641C40, &qword_10052EA60);
  __chkstk_darwin();
  v20 = &v58 - v19;
  v21 = sub_1004D826C();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v67 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v58 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  v75 = v1;
  sub_1004D9B6C();

  sub_1004DCE2C();
  v25 = *(v12 + 8);
  v74 = v11;
  v25(v16, v11);
  v26 = sub_1004DCE1C();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v18, 1, v26) == 1)
  {
    sub_10001074C(v18, &qword_100641C38, &qword_10052EA58);
    (*(v22 + 56))(v20, 1, 1, v21);
LABEL_4:
    sub_10001074C(v20, &qword_100641C40, &qword_10052EA60);
    return 0;
  }

  sub_1004DCE0C();
  (*(v27 + 8))(v18, v26);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    goto LABEL_4;
  }

  v29 = *(v22 + 32);
  v58 = v21;
  v29(v76, v20, v21);
  v30 = v22;
  if (sub_10034FF40() & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), v31 = v61, sub_1004D9B6C(), , , v32 = sub_1004DCEFC(), v25(v31, v74), v32 != 2) && (v32)
  {
    v33 = v64;
    sub_1004DD37C();
    v35 = v65;
    v34 = v66;
    (*(v65 + 16))(v62, v33, v66);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v36 = qword_1006734A0;
    sub_1004D838C();
    v37 = sub_1004DD4AC();
    (*(v35 + 8))(v33, v34);
    (*(v30 + 8))(v76, v58);
  }

  else
  {
    v38 = v68;
    sub_1004D845C();
    sub_100004CB8(&qword_100641C48, &qword_10052EA68);
    v39 = sub_1004D84BC();
    v40 = *(v39 - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100511DA0;
    (*(v40 + 104))(v42 + v41, enum case for Calendar.Component.day(_:), v39);
    sub_1002E86BC(v42);
    swift_setDeallocating();
    (*(v40 + 8))(v42 + v41, v39);
    swift_deallocClassInstance();
    v43 = v67;
    sub_1004D825C();
    v44 = v71;
    v45 = v76;
    sub_1004D844C();

    v46 = *(v30 + 8);
    v47 = v58;
    v46(v43, v58);
    (*(v69 + 8))(v38, v70);
    v48 = sub_1004D7D1C();
    if (v49)
    {
      (*(v72 + 8))(v44, v73);
      v46(v45, v47);
      return 0;
    }

    v50 = v48;
    swift_getKeyPath();
    swift_getKeyPath();
    v51 = v59;
    sub_1004D9B6C();

    v52 = sub_1004DCEFC();
    v25(v51, v74);
    if (v52 == 2 || (v52 & 1) == 0)
    {
      sub_1004DD3BC();
      v79._object = 0x80000001004F6740;
      v79._countAndFlagsBits = 0xD000000000000010;
      sub_1004DD3AC(v79);
      v77 = v50;
      sub_1004DD38C();
      v53._countAndFlagsBits = 0x2E29732879616420;
      v53._object = 0xE800000000000000;
    }

    else
    {
      sub_1004DD3BC();
      v78._object = 0x80000001004F6740;
      v78._countAndFlagsBits = 0xD000000000000010;
      sub_1004DD3AC(v78);
      v77 = v50;
      sub_1004DD38C();
      v53._countAndFlagsBits = 0xD00000000000006CLL;
      v53._object = 0x80000001004F6760;
    }

    sub_1004DD3AC(v53);
    v54 = v64;
    sub_1004DD3DC();
    v56 = v65;
    v55 = v66;
    (*(v65 + 16))(v62, v54, v66);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v57 = qword_1006734A0;
    sub_1004D838C();
    v37 = sub_1004DD4AC();
    (*(v56 + 8))(v54, v55);
    (*(v72 + 8))(v44, v73);
    v46(v45, v58);
  }

  return v37;
}

uint64_t sub_100350E84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004DD05C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100641C38, &qword_10052EA58);
  __chkstk_darwin();
  v7 = &v14 - v6;
  if (sub_10034FF40())
  {
    v8 = sub_1004D809C();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    sub_1004DCE2C();
    (*(v3 + 8))(v5, v2);
    v11 = sub_1004DCE1C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v7, 1, v11) == 1)
    {
      sub_10001074C(v7, &qword_100641C38, &qword_10052EA58);
      v13 = sub_1004D809C();
      return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }

    else
    {
      sub_1004DCDBC();
      return (*(v12 + 8))(v7, v11);
    }
  }
}

uint64_t sub_100351138@<X0>(uint64_t a1@<X8>)
{
  sub_100004CB8(&qword_100641068, &qword_10052DF30);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  swift_beginAccess();
  sub_1000108DC(v1 + v7, v6, &qword_100641068, &qword_10052DF30);
  v8 = sub_100004CB8(&qword_100642C70, &qword_100527540);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return sub_100047F38(v6, a1, &qword_100642C70, &qword_100527540);
  }

  sub_10001074C(v6, &qword_100641068, &qword_10052DF30);
  sub_100351348(a1);
  sub_1000108DC(a1, v4, &qword_100642C70, &qword_100527540);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_1000107AC(v4, v1 + v7, &qword_100641068, &qword_10052DF30);
  return swift_endAccess();
}

uint64_t sub_100351348@<X0>(uint64_t a2@<X8>)
{
  v19 = a2;
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = sub_1004DD05C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004DCC9C();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_1004DD03C();
  (*(v5 + 8))(v7, v4);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_10001074C(v3, &unk_100642930, &unk_1005294A0);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v12 - 8) + 56))(v19, 1, 1, v12);
  }

  else
  {
    (*(v9 + 32))(v11, v3, v8);
    v14 = v19;
    (*(v9 + 16))(v19, v11, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    sub_1004DCB8C();
    (*(v9 + 8))(v11, v8);
    v17 = sub_1004DCC0C();
    (*(*(v17 - 8) + 56))(v14 + v16, 0, 1, v17);
    return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }
}

uint64_t sub_10035169C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  v6 = sub_1004DD05C();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100351760, 0, 0);
}

uint64_t sub_100351760()
{
  *(v0 + 56) = *(*(v0 + 24) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B6C();

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100351868;
  v2 = *(v0 + 48);
  v3 = *(v0 + 80);

  return Collaboration.Manager.updateShareOption(_:for:)(v3, v2);
}

uint64_t sub_100351868()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1003722E8;
  }

  else
  {
    (*(v4 + 8))(v2[6], v2[4]);

    v6 = sub_100351A24;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100351A24()
{
  **(v0 + 16) = *(v0 + 72) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100351A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1004DD05C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100351B64, 0, 0);
}

uint64_t sub_100351B64()
{
  v0[7] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B6C();

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100351C68;
  v3 = v0[5];
  v2 = v0[6];

  return Collaboration.Manager.end(_:)(v2, v3);
}

uint64_t sub_100351C68()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_100351E64;
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v8 = v2 + 3;
    v6 = v2[3];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = sub_100351DFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100351DFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100351E64()
{
  v0[10] = *(v0[2] + 16);
  sub_1004DDA4C();

  v0[11] = sub_1004DDA3C();
  v2 = sub_1004DD9BC();

  return _swift_task_switch(sub_100351F0C, v2, v1);
}

uint64_t sub_100351F0C()
{
  v1 = *(v0 + 72);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100351F88, 0, 0);
}

uint64_t sub_100351F88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100351FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1004DD05C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_1004D809C();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100352114, 0, 0);
}

uint64_t sub_100352114()
{
  v0[9] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B6C();

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_10035221C;
  v2 = v0[8];
  v3 = v0[5];

  return Collaboration.Manager.resetInvitationURL(_:)(v2, v3);
}

uint64_t sub_10035221C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_10035242C;
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v10 = v2 + 3;
    v8 = v2[3];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v3 = sub_1003523C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003523C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10035242C()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = 0;

  sub_1004D9B7C();
  *(v0 + 96) = *(v1 + 16);
  sub_1004DDA4C();

  *(v0 + 104) = sub_1004DDA3C();
  v3 = sub_1004DD9BC();

  return _swift_task_switch(sub_100352520, v3, v2);
}

uint64_t sub_100352520()
{
  v1 = *(v0 + 88);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_10035259C, 0, 0);
}

uint64_t sub_10035259C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100352610(uint64_t a1)
{
  sub_100004CB8(&qword_100643620, &qword_10052F9C0);
  __chkstk_darwin();
  v3 = v17 - v2;
  sub_100004CB8(&unk_100641880, &qword_10052A7A0);
  __chkstk_darwin();
  v5 = v17 - v4;
  v6 = sub_1004DCDAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v17 - v10;
  sub_1000108DC(a1, v5, &unk_100641880, &qword_10052A7A0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10001074C(v5, &unk_100641880, &qword_10052A7A0);
    result = sub_1004DECCC();
    __break(1u);
  }

  else
  {
    v12 = *(v7 + 32);
    v12(v11, v5, v6);
    v13 = sub_1004DDA8C();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    (*(v7 + 16))(v9, v11, v6);
    v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 4) = v17[1];
    v12(&v15[v14], v9, v6);

    sub_100302950(0, 0, v3, &unk_10052EA50, v15);

    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

uint64_t sub_100352954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1004DD05C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100352A20, 0, 0);
}

uint64_t sub_100352A20()
{
  v0[8] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B6C();

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100352B28;
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];

  return Collaboration.Manager.remove(collaborator:in:)(v2, v4, v3);
}

uint64_t sub_100352B28()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = sub_100352D24;
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v8 = v2 + 4;
    v6 = v2[4];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = sub_100352CBC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100352CBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100352D24()
{
  v0[11] = *(v0[2] + 16);
  sub_1004DDA4C();

  v0[12] = sub_1004DDA3C();
  v2 = sub_1004DD9BC();

  return _swift_task_switch(sub_100352DCC, v2, v1);
}

uint64_t sub_100352DCC()
{
  v1 = *(v0 + 80);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100352E48, 0, 0);
}

uint64_t sub_100352E48()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_100352EB8(uint64_t a1, int a2)
{
  v19 = a1;
  v21 = a2;
  sub_100004CB8(&qword_100643620, &qword_10052F9C0);
  __chkstk_darwin();
  v20 = &v18 - v3;
  v4 = sub_1004DCDAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = *(v5 + 16);
  v11(v7, a1, v4, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = sub_1004D9B5C();
  sub_10036A464(v10, v7);
  (*(v5 + 8))(v10, v4);
  v12(v22, 0);

  v13 = sub_1004DDA8C();
  v14 = v20;
  (*(*(v13 - 8) + 56))(v20, 1, 1, v13);
  (v11)(v10, v19, v4);
  v15 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v18;
  *(v16 + 40) = v21 & 1;
  (*(v5 + 32))(v16 + v15, v10, v4);

  sub_100302950(0, 0, v14, &unk_10052EA28, v16);

  return result;
}

uint64_t sub_10035318C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 136) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = sub_1004DCDAC();
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  *(v6 + 48) = *(v8 + 64);
  *(v6 + 56) = swift_task_alloc();
  sub_100004CB8(&qword_100643620, &qword_10052F9C0);
  *(v6 + 64) = swift_task_alloc();
  v9 = sub_1004DD05C();
  *(v6 + 72) = v9;
  *(v6 + 80) = *(v9 - 8);
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1003532EC, 0, 0);
}

uint64_t sub_1003532EC()
{
  v1 = *(v0 + 136);
  *(v0 + 96) = *(*(v0 + 16) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B6C();

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1003533FC;
  v3 = *(v0 + 88);
  v4 = *(v0 + 24);

  return Collaboration.Manager.moderate(_:collaborator:in:)(v1 & 1, v4, v3);
}

uint64_t sub_1003533FC()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_1003535E8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1003535E8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = sub_1004DDA8C();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v4, v5);
  sub_1004DDA4C();

  v8 = sub_1004DDA3C();
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = &protocol witness table for MainActor;
  *(v10 + 4) = v6;
  (*(v3 + 32))(&v10[v9], v2, v5);
  sub_100302F64(0, 0, v1, &unk_10052EA38, v10);

  v0[15] = *(v6 + 16);

  v0[16] = sub_1004DDA3C();
  v12 = sub_1004DD9BC();

  return _swift_task_switch(sub_1003537A8, v12, v11);
}

uint64_t sub_1003537A8()
{
  v1 = *(v0 + 112);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100353824, 0, 0);
}

uint64_t sub_100353824()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003538A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  sub_1004DDA4C();
  v5[9] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();

  return _swift_task_switch(sub_10035393C, v7, v6);
}

uint64_t sub_10035393C()
{
  v1 = v0[8];
  v2 = v0[6];

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = sub_1004D9B5C();
  sub_100369604(v1, v2);
  v3(v0 + 2, 0);

  v4 = v0[1];

  return v4();
}

uint64_t Collaboration.Management.Model.deinit()
{

  v1 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  v2 = sub_100004CB8(&qword_100641008, &qword_10052DF10);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators, v2);
  v4 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  v5 = sub_100004CB8(&qword_100641020, &qword_10052DF18);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__playlist;
  v7 = sub_100004CB8(&qword_100641030, &unk_10052DF20);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isOpen;
  v9 = sub_100004CB8(&qword_100641040, &unk_1005339B0);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity, v9);
  sub_10001074C(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel, &qword_100641068, &qword_10052DF30);

  return v0;
}

uint64_t Collaboration.Management.Model.__deallocating_deinit()
{
  Collaboration.Management.Model.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100353CA8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Collaboration.Management.Model(0);
  result = sub_1004D9AFC();
  *a2 = result;
  return result;
}

uint64_t Collaboration.Management.View.init(model:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBD0, &qword_100530610);
  swift_storeEnumTagMultiPayload();
  v5 = v3[6];
  *(a2 + v5) = swift_getKeyPath();
  sub_100004CB8(&unk_100641090, &qword_1005275B0);
  swift_storeEnumTagMultiPayload();
  v6 = v3[7];
  *(a2 + v6) = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBE0, &qword_1005275E8);
  swift_storeEnumTagMultiPayload();
  v7 = v3[8];
  sub_100004CB8(&qword_1006410A0, &qword_10052DFE0);
  sub_1004DB9DC();
  *(a2 + v7) = v14;
  v8 = a2 + v3[9];
  sub_1004DB9DC();
  *v8 = v14;
  *(v8 + 1) = *(&v14 + 1);
  v9 = a2 + v3[10];
  sub_1004DB9DC();
  *v9 = v14;
  *(v9 + 1) = *(&v14 + 1);
  v10 = a2 + v3[11];
  sub_1004DB9DC();
  *v10 = v14;
  *(v10 + 1) = *(&v14 + 1);
  v11 = a2 + v3[12];
  sub_1004DB9DC();
  *v11 = v14;
  *(v11 + 1) = *(&v14 + 1);
  type metadata accessor for Collaboration.Management.Model(0);
  sub_10036BAE8(&qword_1006410A8, type metadata accessor for Collaboration.Management.Model, &protocol conformance descriptor for Collaboration.Management.Model);
  result = sub_1004DA13C();
  *a2 = result;
  a2[1] = v13;
  return result;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.shareSheet(uint64_t a1)
{
  sub_100004CB8(&qword_1006410A0, &qword_10052DFE0);
  sub_1004DB9DC();
  return v2;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.viewModel(uint64_t a1)
{
  type metadata accessor for Collaboration.Management.Model(0);
  sub_10036BAE8(&qword_1006410A8, type metadata accessor for Collaboration.Management.Model, &protocol conformance descriptor for Collaboration.Management.Model);

  return sub_1004DA13C();
}

uint64_t Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v22 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin();
  v4 = sub_100004CB8(&qword_1006410B0, &qword_10052DFE8);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  __chkstk_darwin();
  v7 = v21 - v6;
  v26 = v2;
  v21[1] = sub_100004CB8(&qword_1006410B8, &qword_10052DFF0);
  v8 = sub_100008DE4(&qword_1006410C0, &qword_10052DFF8);
  v9 = sub_100008DE4(&qword_1006410C8, &qword_10052E000);
  v10 = sub_100008DE4(&qword_1006410D0, &qword_10052E008);
  v11 = sub_1004DAB7C();
  v12 = sub_10036B8C8();
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v30 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_100008DE4(&qword_100641100, &qword_10052E020);
  v15 = sub_100042B08(&qword_100641108, &qword_100641100, &qword_10052E020, &protocol conformance descriptor for ToolbarItem<A, B>);
  v27 = v14;
  v28 = v15;
  v16 = swift_getOpaqueTypeConformance2();
  v27 = v8;
  v28 = v9;
  v29 = OpaqueTypeConformance2;
  v30 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1004DA33C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_10036D7CC(v2, v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v17 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v18 = swift_allocObject();
  sub_10036D838(v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for Collaboration.Management.View);
  sub_100042B08(&unk_100641110, &qword_1006410B0, &qword_10052DFE8, &protocol conformance descriptor for NavigationStack<A, B>);
  v19 = v23;
  sub_1004DB70C();

  return (*(v24 + 8))(v7, v19);
}

uint64_t sub_1003543CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_1004DAB7C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004CB8(&qword_1006410D0, &qword_10052E008);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v24 = sub_100004CB8(&qword_1006410C0, &qword_10052DFF8);
  v10 = *(v24 - 8);
  __chkstk_darwin();
  v12 = &v22 - v11;
  v23 = a1;
  v26 = a1;
  sub_100004CB8(&qword_100641DA8, &qword_10052ED60);
  sub_100042B08(&qword_100641DB0, &qword_100641DA8, &qword_10052ED60, &protocol conformance descriptor for TupleView<A>);
  sub_1004DB12C();
  KeyPath = swift_getKeyPath();
  if (qword_10063D990 != -1)
  {
    v21 = KeyPath;
    swift_once();
    KeyPath = v21;
  }

  v14 = qword_100640F48;
  v15 = &v9[*(v7 + 36)];
  *v15 = KeyPath;
  v15[1] = v14;
  sub_1004DAB6C();
  v16 = sub_10036B8C8();
  sub_1004DB76C();
  (*(v4 + 8))(v6, v3);
  sub_10001074C(v9, &qword_1006410D0, &qword_10052E008);
  __chkstk_darwin();
  *(&v22 - 2) = v23;
  sub_100004CB8(&qword_1006410C8, &qword_10052E000);
  v27 = v7;
  v28 = v3;
  v29 = v16;
  v30 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v17 = sub_100008DE4(&qword_100641100, &qword_10052E020);
  v18 = sub_100042B08(&qword_100641108, &qword_100641100, &qword_10052E020, &protocol conformance descriptor for ToolbarItem<A, B>);
  v27 = v17;
  v28 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v24;
  sub_1004DB6DC();
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_1003547CC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v152 = a2;
  v150 = sub_100004CB8(&qword_100641DC8, &qword_10052EDA0);
  v149 = *(v150 - 8);
  __chkstk_darwin();
  v115 = &v114 - v3;
  v146 = sub_1004DD05C();
  v145 = *(v146 - 8);
  __chkstk_darwin();
  v144 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100641DD0, &qword_10052EDA8);
  __chkstk_darwin();
  v151 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v148 = &v114 - v6;
  v7 = sub_100004CB8(&qword_100641DD8, &qword_10052EDB0);
  v155 = *(v7 - 8);
  v156 = v7;
  __chkstk_darwin();
  v123 = &v114 - v8;
  v122 = sub_100004CB8(&qword_100641DE0, &qword_10052EDB8);
  v121 = *(v122 - 8);
  __chkstk_darwin();
  v135 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v114 - v10;
  v119 = sub_100004CB8(&qword_100641DE8, &qword_10052EDC0);
  v118 = *(v119 - 8);
  __chkstk_darwin();
  v116 = &v114 - v11;
  sub_100004CB8(&qword_100641DF0, &qword_10052EDC8);
  __chkstk_darwin();
  v120 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v133 = &v114 - v13;
  sub_1004D83FC();
  __chkstk_darwin();
  v125 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1004DD3EC();
  v124 = *(v126 - 8);
  __chkstk_darwin();
  v153 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v154 = &v114 - v16;
  v132 = sub_100004CB8(&qword_100641DF8, &qword_10052EDD0);
  v130 = *(v132 - 8);
  __chkstk_darwin();
  v128 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v136 = &v114 - v18;
  v131 = sub_1004DCDAC();
  v129 = *(v131 - 8);
  __chkstk_darwin();
  v117 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v127 = &v114 - v20;
  sub_100004CB8(&qword_100641E00, &qword_10052EDD8);
  __chkstk_darwin();
  v147 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v159 = &v114 - v22;
  v140 = sub_1004D9CCC();
  v23 = *(v140 - 8);
  __chkstk_darwin();
  v25 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_100004CB8(&qword_100641E08, &qword_10052EDE0);
  __chkstk_darwin();
  v27 = &v114 - v26;
  v138 = sub_100004CB8(&qword_100641E10, &qword_10052EDE8);
  v139 = *(v138 - 8);
  __chkstk_darwin();
  v29 = &v114 - v28;
  v143 = sub_100004CB8(&qword_100641E18, &qword_10052EDF0);
  v142 = *(v143 - 8);
  __chkstk_darwin();
  v141 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = &v114 - v31;
  v158 = a1;
  v160 = a1;
  sub_10035881C(a1, v27);
  v137 = sub_100004CB8(&qword_100641E20, &qword_10052EDF8);
  v33 = sub_100008DE4(&qword_100641E28, &qword_10052EE00);
  v34 = sub_100008DE4(&qword_100641E30, &qword_10052EE08);
  v35 = sub_10036FB78();
  v36 = sub_10036FC5C(&qword_100641E60, &qword_100641E30, &qword_10052EE08, sub_10036FCD8);
  v161 = v33;
  v162 = v34;
  v163 = v35;
  v164 = v36;
  swift_getOpaqueTypeConformance2();
  sub_10036FE1C();
  sub_1004DBC6C();
  v37 = v140;
  (*(v23 + 104))(v25, enum case for Prominence.increased(_:), v140);
  sub_10036FECC();
  v157 = v32;
  v38 = v138;
  sub_1004DB4FC();
  v39 = v25;
  v40 = v159;
  (*(v23 + 8))(v39, v37);
  (*(v139 + 8))(v29, v38);
  v41 = *(v158 + 8);
  v42 = sub_10034F1E4();
  v44 = v155;
  v43 = v156;
  if ((v42 & 1) == 0)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (!*(v161 + 16))
  {

    v40 = v159;
    v44 = v155;
    v43 = v156;
LABEL_9:
    (*(v44 + 56))(v40, 1, 1, v43);
    v65 = v148;
    v66 = v154;
    goto LABEL_11;
  }

  v45 = v129;
  v46 = v117;
  v47 = v131;
  (*(v129 + 16))(v117, v161 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v131);

  (*(v45 + 32))(v127, v46, v47);
  __chkstk_darwin();
  v48 = v154;
  sub_1004DD37C();
  v49 = v124;
  v50 = v126;
  (*(v124 + 16))(v153, v48, v126);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v51 = qword_1006734A0;
  sub_1004D838C();
  v52 = sub_1004DD4AC();
  v54 = v53;
  (*(v49 + 8))(v48, v50);
  v161 = v52;
  v162 = v54;
  sub_1002E6780();
  v161 = sub_1004DB34C();
  v162 = v55;
  LOBYTE(v163) = v56 & 1;
  v164 = v57;
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_10036BAE8(&qword_100641EF0, _s10ManagementO4ViewV19CollaboratorRowViewVMa, &unk_10052E730);
  sub_1004DBC6C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v140 = v41;
  if (v161 == 1)
  {
    __chkstk_darwin();
    sub_100004CB8(&qword_100641F10, &qword_10052EE70);
    v58 = sub_100008DE4(&qword_100641F18, &qword_10052EE78);
    v59 = sub_100008DE4(&qword_100641F20, &qword_10052EE80);
    v60 = sub_1004DAB5C();
    v61 = sub_100042B08(&qword_100641F28, &qword_100641F20, &qword_10052EE80, &protocol conformance descriptor for Button<A>);
    v62 = sub_10036BAE8(&qword_100641F30, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    v161 = v59;
    v162 = v60;
    v163 = v61;
    v164 = v62;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v161 = v58;
    v162 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v64 = v116;
    sub_1004DBC8C();
    v70 = v118;
    v68 = v133;
    v69 = v119;
    (*(v118 + 32))(v133, v64, v119);
    v67 = 0;
  }

  else
  {
    v67 = 1;
    v68 = v133;
    v69 = v119;
    v70 = v118;
  }

  (*(v70 + 56))(v68, v67, 1, v69);
  __chkstk_darwin();
  sub_10035D9D0(&v161);
  sub_100004CB8(&qword_100641EF8, &qword_10052EE60);
  sub_10037002C();
  v71 = v134;
  sub_1004DBC6C();
  v72 = *(v130 + 16);
  v73 = v128;
  v74 = v132;
  v72(v128, v136, v132);
  v75 = v68;
  v76 = v120;
  sub_1000108DC(v75, v120, &qword_100641DF0, &qword_10052EDC8);
  v77 = v121;
  v78 = *(v121 + 16);
  v79 = v122;
  v78(v135, v71, v122);
  v80 = v123;
  v72(v123, v73, v74);
  v81 = sub_100004CB8(&qword_100641F08, &qword_10052EE68);
  sub_1000108DC(v76, v80 + *(v81 + 48), &qword_100641DF0, &qword_10052EDC8);
  v82 = v135;
  v78((v80 + *(v81 + 64)), v135, v79);
  v83 = *(v77 + 8);
  v83(v134, v79);
  sub_10001074C(v133, &qword_100641DF0, &qword_10052EDC8);
  v84 = *(v130 + 8);
  v85 = v132;
  v84(v136, v132);
  v83(v82, v79);
  sub_10001074C(v76, &qword_100641DF0, &qword_10052EDC8);
  v84(v128, v85);
  v40 = v159;
  sub_100047F38(v80, v159, &qword_100641DD8, &qword_10052EDB0);
  (*(v155 + 56))(v40, 0, 1, v156);
  (*(v129 + 8))(v127, v131);
  v66 = v154;
  v65 = v148;
LABEL_11:
  v86 = v153;
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v144;
  sub_1004D9B6C();

  v88 = sub_1004DCEFC();
  (*(v145 + 8))(v87, v146);
  if (v88 != 2 && (v88 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), sub_1004D9B6C(), , , v161 == 1))
  {
    __chkstk_darwin();
    sub_1004DD37C();
    v89 = v124;
    v90 = v126;
    (*(v124 + 16))(v86, v66, v126);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v91 = qword_1006734A0;
    sub_1004D838C();
    v92 = sub_1004DD4AC();
    v94 = v93;
    (*(v89 + 8))(v66, v90);
    v161 = v92;
    v162 = v94;
    sub_1002E6780();
    v165 = sub_1004DB34C();
    v166 = v95;
    v167 = v96 & 1;
    v168 = v97;
    sub_10035E318(&v161);
    sub_100004CB8(&unk_100641EC0, &qword_10052EE48);
    sub_100004CB8(&qword_100640078, &unk_10052EE50);
    sub_100042B08(&unk_100641ED0, &unk_100641EC0, &qword_10052EE48, &protocol conformance descriptor for HStack<A>);
    sub_1003292D4();
    v98 = v115;
    sub_1004DBC7C();
    v99 = v149;
    v100 = v98;
    v101 = v150;
    (*(v149 + 32))(v65, v100, v150);
    v102 = v101;
    v103 = 0;
  }

  else
  {
    v103 = 1;
    v102 = v150;
    v99 = v149;
  }

  (*(v99 + 56))(v65, v103, 1, v102);
  v104 = v142;
  v105 = *(v142 + 16);
  v106 = v141;
  v107 = v143;
  v105(v141, v157, v143);
  v108 = v147;
  sub_1000108DC(v40, v147, &qword_100641E00, &qword_10052EDD8);
  v109 = v151;
  sub_1000108DC(v65, v151, &qword_100641DD0, &qword_10052EDA8);
  v110 = v152;
  v105(v152, v106, v107);
  v111 = sub_100004CB8(&qword_100641EB8, &qword_10052EE40);
  sub_1000108DC(v108, &v110[*(v111 + 48)], &qword_100641E00, &qword_10052EDD8);
  sub_1000108DC(v109, &v110[*(v111 + 64)], &qword_100641DD0, &qword_10052EDA8);
  sub_10001074C(v65, &qword_100641DD0, &qword_10052EDA8);
  sub_10001074C(v159, &qword_100641E00, &qword_10052EDD8);
  v112 = *(v104 + 8);
  v112(v157, v107);
  sub_10001074C(v109, &qword_100641DD0, &qword_10052EDA8);
  sub_10001074C(v108, &qword_100641E00, &qword_10052EDD8);
  return (v112)(v106, v107);
}

uint64_t sub_100355F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_100004CB8(&qword_100641EA8, &qword_10052EE38);
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin();
  v68 = &v58 - v4;
  v59 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v5 = *(v59 + 64);
  __chkstk_darwin();
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&qword_100641EF8, &qword_10052EE60);
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin();
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v58 - v8;
  v9 = sub_1004DAD1C();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004CB8(&qword_1006420D8, &qword_10052F088);
  __chkstk_darwin();
  v15 = &v58 - v14;
  v16 = sub_100004CB8(&qword_1006420E0, &qword_10052F090);
  v61 = *(v16 - 8);
  v62 = v16;
  __chkstk_darwin();
  v66 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v58 - v18;
  v20 = a1;
  if (sub_10034F1E4())
  {
    v21 = v70;
    v22 = *(v69 + 56);
    v23 = v71;

    return v22(v23, 1, 1, v21);
  }

  else
  {
    *v15 = sub_1004DA7CC();
    *(v15 + 1) = 0x4028000000000000;
    v15[16] = 0;
    v25 = sub_100004CB8(&qword_1006420E8, &qword_10052F098);
    sub_1003566CC(a1, &v15[*(v25 + 44)]);
    v26 = sub_1004DAF1C();
    sub_1004D9C8C();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = &v15[*(sub_100004CB8(&qword_1006420F0, &qword_10052F0A0) + 36)];
    *v35 = v26;
    *(v35 + 1) = v28;
    *(v35 + 2) = v30;
    *(v35 + 3) = v32;
    *(v35 + 4) = v34;
    v35[40] = 0;
    v36 = &v15[*(sub_100004CB8(&qword_1006420F8, &qword_10052F0A8) + 36)];
    v36[32] = 0;
    *v36 = 0u;
    *(v36 + 1) = 0u;
    v37 = sub_1004DA8FC();
    v38 = &v15[*(v13 + 36)];
    *v38 = v37;
    v38[1] = sub_1003587F4;
    v38[2] = 0;
    sub_1004DAD0C();
    sub_100370D18();
    v58 = v19;
    sub_1004DB5BC();
    (*(v10 + 8))(v12, v9);
    sub_10001074C(v15, &qword_1006420D8, &qword_10052F088);
    v72 = sub_10034F998();
    v39 = v20;
    v40 = v60;
    sub_10036D7CC(v39, v60, type metadata accessor for Collaboration.Management.View);
    v41 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v42 = swift_allocObject();
    sub_10036D838(v40, v42 + v41, type metadata accessor for Collaboration.Management.View);
    sub_100004CB8(&qword_100640FF0, &qword_10052DF00);
    _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
    sub_100042B08(&qword_100641F58, &qword_100640FF0, &qword_10052DF00, &protocol conformance descriptor for [A]);
    sub_10036BAE8(&qword_100641EF0, _s10ManagementO4ViewV19CollaboratorRowViewVMa, &unk_10052E730);
    sub_10036BAE8(&qword_100641F60, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    v43 = v67;
    sub_1004DBC2C();
    v45 = v61;
    v44 = v62;
    v46 = *(v61 + 16);
    v47 = v66;
    v46(v66, v58, v62);
    v49 = v63;
    v48 = v64;
    v50 = *(v64 + 16);
    v51 = v43;
    v52 = v65;
    v50(v63, v51, v65);
    v46(v68, v47, v44);
    v53 = sub_100004CB8(&qword_100642128, &qword_10052F0B8);
    v54 = v68;
    v50(&v68[*(v53 + 48)], v49, v52);
    v55 = *(v48 + 8);
    v55(v67, v52);
    v56 = *(v45 + 8);
    v56(v58, v44);
    v55(v49, v52);
    v56(v66, v44);
    v57 = v71;
    sub_100047F38(v54, v71, &qword_100641EA8, &qword_10052EE38);
    return (*(v69 + 56))(v57, 0, 1, v70);
  }
}

uint64_t sub_1003566CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v3 = sub_100004CB8(&qword_100642130, &qword_10052F0C0);
  v158 = *(v3 - 8);
  v159 = v3;
  __chkstk_darwin();
  v153 = (&v129 - v4);
  v152 = sub_100004CB8(&qword_100641BC8, &qword_10052E9B8);
  __chkstk_darwin();
  v144 = &v129 - v5;
  v6 = type metadata accessor for Collaboration.Management.View(0);
  v137 = *(v6 - 8);
  __chkstk_darwin();
  v138 = v7;
  v139 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_100004CB8(&qword_100642138, &qword_10052F0C8);
  __chkstk_darwin();
  v140 = &v129 - v8;
  v136 = sub_100004CB8(&qword_100642140, &qword_10052F0D0);
  __chkstk_darwin();
  v142 = &v129 - v9;
  v149 = sub_100004CB8(&qword_100642148, &qword_10052F0D8);
  v147 = *(v149 - 8);
  __chkstk_darwin();
  v143 = &v129 - v10;
  v11 = sub_100004CB8(&qword_100642150, &qword_10052F0E0);
  v150 = *(v11 - 8);
  v151 = v11;
  __chkstk_darwin();
  v148 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v146 = &v129 - v13;
  sub_1004D83FC();
  __chkstk_darwin();
  v133 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004DD3EC();
  v134 = *(v15 - 8);
  v135 = v15;
  __chkstk_darwin();
  v17 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = &v129 - v18;
  v19 = sub_1004DD05C();
  v130 = *(v19 - 8);
  v131 = v19;
  __chkstk_darwin();
  v129 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100642158, &qword_10052F0E8);
  __chkstk_darwin();
  v157 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v161 = &v129 - v22;
  v155 = sub_100004CB8(&qword_100642160, &qword_10052F0F0);
  v23 = *(v155 - 8);
  __chkstk_darwin();
  v25 = &v129 - v24;
  v26 = sub_1004DA25C();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v29 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v129 - v30;
  sub_100004CB8(&qword_100642168, &qword_10052F0F8);
  __chkstk_darwin();
  v156 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v162 = a1;
  v163 = &v129 - v33;
  v145 = v6;
  sub_10032A4A4(v31);
  if (qword_10063D9E8 != -1)
  {
    swift_once();
  }

  v34 = sub_100035430(v26, qword_100640FA0);
  (*(v27 + 16))(v29, v34, v26);
  sub_10036BAE8(&qword_10063E998, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v35 = sub_1004DD32C();
  v36 = *(v27 + 8);
  v36(v29, v26);
  v36(v31, v26);
  if (v35)
  {
    (*(v23 + 56))(v163, 1, 1, v155);
    v37 = v17;
  }

  else
  {
    v38 = sub_1004DB8EC();
    v37 = v17;
    if (qword_10063D988 != -1)
    {
      swift_once();
    }

    v39 = qword_100640F40;
    KeyPath = swift_getKeyPath();
    v41 = qword_10063D9D8;

    if (v41 != -1)
    {
      swift_once();
    }

    sub_1004DBD1C();
    sub_1004D9F5C();
    v42 = &v25[*(sub_100004CB8(&qword_100642170, &qword_10052F100) + 36)];
    v43 = *(sub_100004CB8(&qword_100642178, &qword_10052F108) + 28);
    sub_1004DA93C();
    v44 = sub_1004DA94C();
    (*(*(v44 - 8) + 56))(v42 + v43, 0, 1, v44);
    *v42 = swift_getKeyPath();
    *v25 = v38;
    *(v25 + 1) = KeyPath;
    *(v25 + 2) = v39;
    *(v25 + 56) = *&v168[16];
    v45 = v167;
    *(v25 + 40) = *v168;
    *(v25 + 24) = v45;
    if (qword_10063D9E0 != -1)
    {
      swift_once();
    }

    v46 = qword_100640F98;
    v47 = swift_getKeyPath();
    v48 = v155;
    v49 = &v25[*(v155 + 36)];
    *v49 = v47;
    v49[1] = v46;
    v50 = v163;
    sub_100047F38(v25, v163, &qword_100642160, &qword_10052F0F0);
    (*(v23 + 56))(v50, 0, 1, v48);
  }

  v155 = sub_1004DA91C();
  v51 = 1;
  LOBYTE(v167) = 1;
  v52 = v162;
  sub_100357ADC(v162, v171);
  *&v170[7] = v171[0];
  *&v170[23] = v171[1];
  *&v170[39] = v171[2];
  *&v170[55] = v171[3];
  v154 = v167;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v167 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v53 = v129;
    sub_1004D9B6C();

    v54 = sub_1004DCEFC();
    (*(v130 + 8))(v53, v131);
    if (v54 == 2 || (v54 & 1) == 0)
    {
      v55 = v132;
    }

    else
    {
      v55 = v132;
    }

    sub_1004DD37C();
    v57 = v134;
    v56 = v135;
    (*(v134 + 16))(v37, v55, v135);
    v58 = v136;
    v59 = v142;
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v60 = qword_1006734A0;
    sub_1004D838C();
    v61 = sub_1004DD4AC();
    v63 = v62;
    (*(v57 + 8))(v55, v56);
    v136 = v61;
    *&v167 = v61;
    *(&v167 + 1) = v63;
    v64 = v139;
    sub_10036D7CC(v52, v139, type metadata accessor for Collaboration.Management.View);
    v65 = (*(v137 + 80) + 16) & ~*(v137 + 80);
    v66 = swift_allocObject();
    sub_10036D838(v64, v66 + v65, type metadata accessor for Collaboration.Management.View);
    sub_1002E6780();

    v67 = v140;
    sub_1004DBA6C();
    v68 = sub_1004DAFFC();
    v69 = swift_getKeyPath();
    v70 = (v67 + *(v141 + 36));
    *v70 = v69;
    v70[1] = v68;
    sub_1004DB06C();
    sub_100371058();
    sub_1004DB3AC();
    sub_10001074C(v67, &qword_100642138, &qword_10052F0C8);
    v71 = sub_1004DB87C();
    v72 = swift_getKeyPath();
    v73 = &v59[*(sub_100004CB8(&qword_100642198, &qword_10052F150) + 36)];
    *v73 = v72;
    v73[1] = v71;
    if (qword_10063D9C8 != -1)
    {
      swift_once();
    }

    sub_1004DBD1C();
    sub_1004D9F5C();
    v74 = &v59[*(sub_100004CB8(&qword_1006421A0, &qword_10052F158) + 36)];
    v75 = v171[5];
    *v74 = v171[4];
    *(v74 + 1) = v75;
    *(v74 + 2) = v171[6];
    v76 = sub_1004DAF1C();
    sub_1004D9C8C();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = &v59[*(sub_100004CB8(&qword_1006421A8, &qword_10052F160) + 36)];
    *v85 = v76;
    *(v85 + 1) = v78;
    *(v85 + 2) = v80;
    *(v85 + 3) = v82;
    *(v85 + 4) = v84;
    v85[40] = 0;
    if (qword_10063D810 != -1)
    {
      swift_once();
    }

    v142 = v63;
    v86 = static UIColor.MusicTint.normal;
    v87 = sub_1004DB8CC();
    v88 = sub_1004DAF2C();
    v89 = &v59[*(sub_100004CB8(&qword_1006421B0, &qword_10052F168) + 36)];
    *v89 = v87;
    v89[8] = v88;
    v90 = &v59[*(v58 + 36)];
    v91 = enum case for RoundedCornerStyle.continuous(_:);
    v92 = sub_1004DA88C();
    (*(*(v92 - 8) + 104))(v90, v91, v92);
    *&v90[*(sub_100004CB8(&qword_1006421B8, &unk_10052F170) + 36)] = 256;
    v93 = v58;
    v94 = v59;
    if (qword_10063D9F0 != -1)
    {
      swift_once();
    }

    v95 = v152;
    v96 = sub_100035430(v152, qword_100640FB8);
    v97 = v144;
    sub_1000108DC(v96, v144, &qword_100641BC8, &qword_10052E9B8);
    v141 = sub_10037113C();
    v98 = sub_100042B08(&qword_100641C00, &qword_100641BC8, &qword_10052E9B8, &protocol conformance descriptor for PartialRangeThrough<A>);
    v99 = v143;
    sub_1004DB4AC();
    sub_10001074C(v97, &qword_100641BC8, &qword_10052E9B8);
    sub_10001074C(v94, &qword_100642140, &qword_10052F0D0);
    v100 = (v162 + *(v145 + 11));
    v101 = *v100;
    v102 = *(v100 + 1);
    LOBYTE(v164) = v101;
    v165 = v102;
    sub_100004CB8(&qword_100640118, &qword_10052F6B0);
    sub_1004DBA0C();
    v145 = &v129;
    __chkstk_darwin();
    v103 = v136;
    *(&v129 - 4) = v104;
    *(&v129 - 3) = v103;
    *(&v129 - 2) = v142;
    *&v167 = v93;
    *(&v167 + 1) = v95;
    *v168 = v141;
    *&v168[8] = v98;
    swift_getOpaqueTypeConformance2();
    v105 = v146;
    v106 = v149;
    sub_1004DB63C();

    (*(v147 + 8))(v99, v106);
    v108 = v150;
    v107 = v151;
    v109 = *(v150 + 16);
    v110 = v148;
    v109(v148, v105, v151);
    v111 = v153;
    *v153 = 0;
    *(v111 + 8) = 1;
    v112 = sub_100004CB8(&qword_100642200, &qword_10052F180);
    v109((v111 + *(v112 + 48)), v110, v107);
    v113 = *(v108 + 8);
    v113(v105, v107);
    v113(v110, v107);
    sub_100047F38(v111, v161, &qword_100642130, &qword_10052F0C0);
    v51 = 0;
  }

  v114 = v161;
  (*(v158 + 56))(v161, v51, 1, v159);
  v115 = v163;
  v116 = v156;
  sub_1000108DC(v163, v156, &qword_100642168, &qword_10052F0F8);
  v117 = v157;
  sub_1000108DC(v114, v157, &qword_100642158, &qword_10052F0E8);
  v118 = v160;
  sub_1000108DC(v116, v160, &qword_100642168, &qword_10052F0F8);
  v119 = sub_100004CB8(&qword_100642180, &qword_10052F140);
  v120 = v118 + *(v119 + 48);
  v121 = v155;
  v164 = v155;
  v165 = 0;
  v122 = v154;
  v166[0] = v154;
  *&v166[1] = *v170;
  *&v166[17] = *&v170[16];
  *&v166[33] = *&v170[32];
  *&v166[49] = *&v170[48];
  v123 = *&v170[63];
  *&v166[64] = *&v170[63];
  v124 = *v166;
  *v120 = v155;
  *(v120 + 16) = v124;
  v125 = *&v166[16];
  v126 = *&v166[32];
  v127 = *&v166[48];
  *(v120 + 80) = v123;
  *(v120 + 48) = v126;
  *(v120 + 64) = v127;
  *(v120 + 32) = v125;
  sub_1000108DC(v117, v118 + *(v119 + 64), &qword_100642158, &qword_10052F0E8);
  sub_1000108DC(&v164, &v167, &qword_100642188, &qword_10052F148);
  sub_10001074C(v114, &qword_100642158, &qword_10052F0E8);
  sub_10001074C(v115, &qword_100642168, &qword_10052F0F8);
  sub_10001074C(v117, &qword_100642158, &qword_10052F0E8);
  v167 = v121;
  v168[0] = v122;
  *&v168[17] = *&v170[16];
  *&v168[33] = *&v170[32];
  *v169 = *&v170[48];
  *&v169[15] = *&v170[63];
  *&v168[1] = *v170;
  sub_10001074C(&v167, &qword_100642188, &qword_10052F148);
  return sub_10001074C(v116, &qword_100642168, &qword_10052F0F8);
}

double sub_100357ADC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  sub_1004D83FC();
  __chkstk_darwin();
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v54[-v7];
  sub_1004DD37C();
  (*(v4 + 16))(v6, v8, v3);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v9 = qword_1006734A0;
  sub_1004D838C();
  v10 = sub_1004DD4AC();
  v12 = v11;
  (*(v4 + 8))(v8, v3);
  v59 = v10;
  v60 = v12;
  sub_1002E6780();
  v13 = sub_1004DB34C();
  v15 = v14;
  v17 = v16;
  LODWORD(v59) = sub_1004DABEC();
  v18 = sub_1004DB24C();
  v20 = v19;
  v22 = v21;
  sub_100051E10(v13, v15, v17 & 1);

  sub_1004DB0DC();
  v23 = sub_1004DB2AC();
  v57 = v24;
  v26 = v25;
  v28 = v27;

  sub_100051E10(v18, v20, v22 & 1);

  v29 = sub_10034FAFC();
  if (v30)
  {
    v59 = v29;
    v60 = v30;
    v31 = sub_1004DB34C();
    v33 = v32;
    v35 = v34;
    LODWORD(v59) = sub_1004DAC1C();
    v36 = sub_1004DB24C();
    v38 = v37;
    v55 = v26;
    v40 = v39;
    v58 = v28;
    sub_100051E10(v31, v33, v35 & 1);

    sub_1004DB0EC();
    v41 = sub_1004DB2AC();
    v43 = v42;
    v56 = a2;
    v44 = v23;
    v46 = v45;
    v48 = v47;

    v49 = v40 & 1;
    LOBYTE(v26) = v55;
    sub_100051E10(v36, v38, v49);
    v28 = v58;

    v50 = v46 & 1;
    v23 = v44;
    a2 = v56;
    sub_100051E00(v41, v43, v50);
  }

  else
  {
    v41 = 0;
    v43 = 0;
    v50 = 0;
    v48 = 0;
  }

  v51 = v26 & 1;
  v52 = v57;
  sub_100051E00(v23, v57, v51);

  sub_10036DD7C(v41, v43, v50, v48);
  sub_10036DE14(v41, v43, v50, v48);
  LOBYTE(v59) = v51;
  *a2 = v23;
  *(a2 + 8) = v52;
  *(a2 + 16) = v51;
  *(a2 + 24) = v28;
  *(a2 + 32) = v41;
  *(a2 + 40) = v43;
  *(a2 + 48) = v50;
  *(a2 + 56) = v48;
  sub_10036DE14(v41, v43, v50, v48);
  sub_100051E10(v23, v52, v51);

  return result;
}

uint64_t sub_100357F60(uint64_t a1)
{
  v2 = sub_1004D966C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 44));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_100004CB8(&qword_100640118, &qword_10052F6B0);
  sub_1004DB9FC();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Stop/Leave button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100358108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v47 = a3;
  v54 = a4;
  v48 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  __chkstk_darwin();
  v49 = v5;
  v50 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DB7DC();
  __chkstk_darwin();
  v53 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = v41 - v7;
  sub_1004D83FC();
  __chkstk_darwin();
  v45 = sub_1004DD3EC();
  v8 = *(v45 - 8);
  __chkstk_darwin();
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v41 - v11;
  v13 = sub_1004DD05C();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v17 = sub_1004DCEFC();
  (*(v14 + 8))(v16, v13);
  if (v17 != 2 && (v17 & 1) != 0)
  {
    sub_1004DD37C();
    v18 = *(v8 + 16);
    v19 = v45;
    v18(v10, v12, v45);
    if (qword_10063D770 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  sub_1004DD37C();
  v18 = *(v8 + 16);
  v19 = v45;
  v18(v10, v12, v45);
  if (qword_10063D770 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v20 = qword_1006734A0;
  sub_1004D838C();
  v21 = v20;
  v44 = sub_1004DD4AC();
  v23 = v22;
  v24 = *(v8 + 8);
  v24(v12, v19);
  sub_1004DD37C();
  v18(v10, v12, v19);
  sub_1004D838C();
  v25 = sub_1004DD4AC();
  v27 = v26;
  v24(v12, v19);
  v55 = v44;
  v56 = v23;
  sub_1002E6780();
  v28 = sub_1004DB34C();
  v44 = v29;
  v45 = v28;
  v42 = v30;
  v43 = v31;
  v55 = v25;
  v56 = v27;
  sub_1004DB34C();
  v41[1] = v32;
  v55 = v46;
  v56 = v47;

  v33 = sub_1004DB34C();
  v35 = v34;
  LOBYTE(v23) = v36;
  v37 = v50;
  sub_10036D7CC(v51, v50, type metadata accessor for Collaboration.Management.View);
  v38 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v39 = swift_allocObject();
  sub_10036D838(v37, v39 + v38, type metadata accessor for Collaboration.Management.View);
  sub_1004DB7AC();
  sub_100051E10(v33, v35, v23 & 1);

  sub_1004DB7BC();
  return sub_1004DB79C();
}

uint64_t sub_10035881C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = (type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = *v3;
  v5 = *(*v3 + 64);
  __chkstk_darwin();
  v6 = sub_100004CB8(&qword_100641E28, &qword_10052EE00);
  __chkstk_darwin();
  v8 = &v17 - v7;
  *v8 = sub_1004DA90C();
  *(v8 + 1) = 0x4028000000000000;
  v8[16] = 0;
  v9 = sub_100004CB8(&unk_100641F70, &unk_10052EEC0);
  sub_100358AE8(a1, &v8[*(v9 + 44)]);
  v10 = &v8[*(v6 + 36)];
  v10[32] = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = (a1 + v3[12]);
  v12 = *v11;
  v13 = *(v11 + 1);
  v18 = v12;
  v19 = v13;
  sub_100004CB8(&qword_100640118, &qword_10052F6B0);
  sub_1004DBA0C();
  sub_10036D7CC(a1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_10036D838(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for Collaboration.Management.View);
  sub_100004CB8(&qword_100641E30, &qword_10052EE08);
  sub_10036FB78();
  sub_10036FC5C(&qword_100641E60, &qword_100641E30, &qword_10052EE08, sub_10036FCD8);
  sub_1004DB4DC();

  return sub_10001074C(v8, &qword_100641E28, &qword_10052EE00);
}