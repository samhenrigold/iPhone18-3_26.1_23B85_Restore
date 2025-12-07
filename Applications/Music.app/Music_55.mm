char *sub_100623D9C(uint64_t a1)
{
  v3 = *(type metadata accessor for TVEpisode() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_10061E048(a1, v4, v5, v6);
}

uint64_t sub_100623E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100623E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100623EC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14descr101092F61V12SongCellViewVMa(uint64_t a1)
{
  result = qword_101199798;
  if (!qword_101199798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100623FD4(uint64_t a1)
{
  sub_10001F7E8();
  if (v1 <= 0x3F)
  {
    sub_100465200(319);
    if (v2 <= 0x3F)
    {
      sub_1006240B8(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Playlist();
        if (v4 <= 0x3F)
        {
          type metadata accessor for Playlist.Entry();
          if (v5 <= 0x3F)
          {
            type metadata accessor for Song();
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

void sub_1006240B8(uint64_t a1)
{
  if (!qword_1011997A8)
  {
    type metadata accessor for PlaybackIndicator(255);
    sub_10062414C(&qword_101186998, type metadata accessor for PlaybackIndicator, &unk_100ED4320);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1011997A8);
    }
  }
}

uint64_t sub_10062414C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006241B0(uint64_t a1)
{
  sub_10010FC20(&qword_1011997F8, &qword_100ED8188);
  sub_10010FC20(&qword_101199800, &qword_100ED8190);
  sub_100020674(&qword_101199808, &qword_1011997F8, &qword_100ED8188, &protocol conformance descriptor for VStack<A>);
  sub_1006253FC();
  return Label.init(title:icon:)();
}

double sub_1006242A0@<D0>(uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  v26 = 1;
  sub_100624448(&v13);
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v39[8] = v21;
  v39[9] = v22;
  v39[10] = v23;
  v39[4] = v17;
  v39[5] = v18;
  v39[6] = v19;
  v39[7] = v20;
  v39[0] = v13;
  v39[1] = v14;
  v38 = v24;
  v40 = v24;
  v39[2] = v15;
  v39[3] = v16;
  sub_1000089F8(&v27, &v12, &qword_101199830, &qword_100ED81F0);
  sub_1000095E8(v39, &qword_101199830, &qword_100ED81F0);
  *&v25[135] = v35;
  *&v25[151] = v36;
  *&v25[167] = v37;
  *&v25[71] = v31;
  *&v25[87] = v32;
  *&v25[103] = v33;
  *&v25[119] = v34;
  *&v25[7] = v27;
  *&v25[23] = v28;
  *&v25[39] = v29;
  *&v25[55] = v30;
  v5 = *&v25[144];
  *(a2 + 145) = *&v25[128];
  *(a2 + 161) = v5;
  *(a2 + 177) = *&v25[160];
  v6 = *&v25[80];
  *(a2 + 81) = *&v25[64];
  *(a2 + 97) = v6;
  v7 = *&v25[112];
  *(a2 + 113) = *&v25[96];
  *(a2 + 129) = v7;
  v8 = *&v25[16];
  *(a2 + 17) = *v25;
  *(a2 + 33) = v8;
  result = *&v25[32];
  v10 = *&v25[48];
  *(a2 + 49) = *&v25[32];
  v25[183] = v38;
  v11 = v26;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 193) = *&v25[176];
  *(a2 + 65) = v10;
  return result;
}

__n128 sub_100624448@<Q0>(uint64_t a1@<X8>)
{
  _s14descr101092F61V12SongCellViewVMa(0);
  *&v14 = Song.title.getter();
  *(&v14 + 1) = v2;
  sub_100009838();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v13[55] = v17;
  *&v13[71] = v18;
  *&v13[87] = v19;
  *&v13[103] = v20;
  *&v13[7] = v14;
  *&v13[23] = v15;
  *&v13[39] = v16;
  v11 = swift_getKeyPath();
  *(a1 + 105) = *&v13[64];
  *(a1 + 121) = *&v13[80];
  *(a1 + 137) = *&v13[96];
  *(a1 + 41) = *v13;
  *(a1 + 57) = *&v13[16];
  result = *&v13[32];
  *(a1 + 73) = *&v13[32];
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 89) = *&v13[48];
  *(a1 + 152) = *(&v20 + 1);
  *(a1 + 160) = v11;
  *(a1 + 168) = 2;
  *(a1 + 176) = 0;
  return result;
}

uint64_t sub_1006245C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ArtworkImage.ReusePolicy();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v11 = &v28[-v10];
  _s14descr101092F61V12SongCellViewVMa(0);
  v12 = type metadata accessor for Song();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v12, &protocol witness table for Song, v11);
  v13 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v13 - 8) + 56))(v9, 1, 11, v13);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v42);
  (*(v5 + 104))(v7, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v4);
  v14 = static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v11, v9, v42, v7, a2);
  (*(v5 + 8))(v7, v4, v14);
  sub_100172200(v9);
  sub_1000095E8(v11, &unk_10118A5E0, &unk_100EBCD90);
  v15 = a2 + *(sub_10010FC20(&qword_1011968F0, &qword_100ED53A8) + 36);
  *v15 = 0;
  *(v15 + 8) = 257;
  v16 = static Alignment.center.getter();
  v18 = v17;
  sub_100624974(a1, &v29);
  v53 = v39;
  v54 = v40;
  v55 = v41;
  v49 = v35;
  v50 = v36;
  v51 = v37;
  v52 = v38;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v43 = v29;
  v44 = v30;
  *&v56 = v16;
  *(&v56 + 1) = v18;
  v19 = (a2 + *(sub_10010FC20(&qword_101199800, &qword_100ED8190) + 36));
  v20 = v54;
  v19[10] = v53;
  v19[11] = v20;
  v21 = v56;
  v19[12] = v55;
  v19[13] = v21;
  v22 = v50;
  v19[6] = v49;
  v19[7] = v22;
  v23 = v52;
  v19[8] = v51;
  v19[9] = v23;
  v24 = v46;
  v19[2] = v45;
  v19[3] = v24;
  v25 = v48;
  v19[4] = v47;
  v19[5] = v25;
  v26 = v44;
  *v19 = v43;
  v19[1] = v26;
  v57[10] = v39;
  v57[11] = v40;
  v57[12] = v41;
  v57[6] = v35;
  v57[7] = v36;
  v57[8] = v37;
  v57[9] = v38;
  v57[2] = v31;
  v57[3] = v32;
  v57[4] = v33;
  v57[5] = v34;
  v57[0] = v29;
  v57[1] = v30;
  v58 = v16;
  v59 = v18;
  sub_1000089F8(&v43, v28, &qword_101199820, &qword_100ED8198);
  return sub_1000095E8(v57, &qword_101199820, &qword_100ED8198);
}

__n128 sub_100624974@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *(_s14descr101092F61V12SongCellViewVMa(0) - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin();
  v28 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s14descr101092F61V20PlaybackStateManagerCMa(0);
  sub_10062414C(&qword_101190DA0, _s14descr101092F61V20PlaybackStateManagerCMa, &unk_100ECB248);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v84);

  v5 = v84;
  if (!v84)
  {

LABEL_6:
    sub_100625690(&v84);
    goto LABEL_7;
  }

  v6 = MPCPlayerResponse.playState(for:in:)();
  v8 = v7;

  if ((v8 & 1) != 0 || !v6)
  {
    goto LABEL_6;
  }

  static Color.black.getter();
  v9 = Color.opacity(_:)();

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v26 = sub_100586FC8();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v10 = v98;
  v24 = v99;
  v25 = v97;
  v11 = v100;
  v22 = v102;
  v23 = v101;
  v12 = v28;
  sub_1006252B8(a1, v28);
  v13 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v14 = swift_allocObject();
  sub_10062531C(v12, v14 + v13);
  LOBYTE(v71) = v10;
  LOBYTE(v63) = v11;
  *v44 = v9;
  *&v44[8] = v37;
  *&v44[72] = v41;
  *&v44[56] = v40;
  *&v44[88] = v42;
  *&v44[104] = v43;
  *&v44[24] = v38;
  *&v44[40] = v39;
  v31 = *&v44[32];
  v32 = *&v44[48];
  v29 = *v44;
  v30 = *&v44[16];
  *&v36[0] = *(&v43 + 1);
  v34 = *&v44[80];
  v35 = *&v44[96];
  v33 = *&v44[64];
  LOBYTE(v45) = v26;
  *(&v45 + 1) = v25;
  LOBYTE(v46) = v10;
  *(&v46 + 1) = v24;
  LOBYTE(v47) = v11;
  *(&v47 + 1) = v23;
  *&v48 = v22;
  *(&v48 + 1) = sub_100625630;
  v49 = v14;
  v51 = 0;
  v50 = 0;
  *(&v36[1] + 8) = v46;
  *(v36 + 8) = v45;
  *(&v36[5] + 1) = 0;
  *(&v36[4] + 8) = v14;
  *(&v36[3] + 8) = v48;
  *(&v36[2] + 8) = v47;
  v52[0] = v26;
  v53 = v25;
  v54 = v10;
  v55 = v24;
  v56 = v11;
  v57 = v23;
  v58 = v22;
  v59 = sub_100625630;
  v60 = v14;
  v62 = 0;
  v61 = 0;
  sub_1000089F8(v44, &v71, &qword_101196908, &qword_100ED53B8);
  sub_1000089F8(&v45, &v71, &qword_101199828, &qword_100ED81E8);
  sub_1000095E8(v52, &qword_101199828, &qword_100ED81E8);
  v67 = v40;
  v68 = v41;
  v69 = v42;
  v70 = v43;
  v64 = v37;
  v65 = v38;
  v63 = v9;
  v66 = v39;
  sub_1000095E8(&v63, &qword_101196908, &qword_100ED53B8);
  v81 = v36[3];
  v82 = v36[4];
  v83 = v36[5];
  v77 = v35;
  v78 = v36[0];
  v79 = v36[1];
  v80 = v36[2];
  v73 = v31;
  v74 = v32;
  v75 = v33;
  v76 = v34;
  v71 = v29;
  v72 = v30;
  UIScreen.Dimensions.size.getter();
  v94 = v81;
  v95 = v82;
  v96 = v83;
  v90 = v77;
  v91 = v78;
  v93 = v80;
  v92 = v79;
  v86 = v73;
  v87 = v74;
  v89 = v76;
  v88 = v75;
  v84 = v71;
  v85 = v72;
LABEL_7:
  v15 = v95;
  *(a2 + 160) = v94;
  *(a2 + 176) = v15;
  *(a2 + 192) = v96;
  v16 = v91;
  *(a2 + 96) = v90;
  *(a2 + 112) = v16;
  v17 = v93;
  *(a2 + 128) = v92;
  *(a2 + 144) = v17;
  v18 = v87;
  *(a2 + 32) = v86;
  *(a2 + 48) = v18;
  v19 = v89;
  *(a2 + 64) = v88;
  *(a2 + 80) = v19;
  result = v85;
  *a2 = v84;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_100624ECC(uint64_t a1)
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v3 = &v14 - v2;
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v5 = &v14 - v4;
  _s14descr101092F61V20PlaybackStateManagerCMa(0);
  sub_10062414C(&qword_101190DA0, _s14descr101092F61V20PlaybackStateManagerCMa, &unk_100ECB248);
  StateObject.wrappedValue.getter();
  v6 = _s14descr101092F61V12SongCellViewVMa(0);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for Playlist.Entry();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v5, a1 + v7, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  v10 = *(v6 + 28);
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v3, a1 + v10, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  sub_10040FFDC(v5, v3);

  sub_1000095E8(v3, &unk_1011814D0, &qword_100EC12A0);
  return sub_1000095E8(v5, &qword_101191570, &qword_100ECE0B0);
}

uint64_t sub_100625150(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  sub_1006252B8(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_10062531C(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4);
  v8 = v1;
  sub_10010FC20(&qword_1011997E8, &qword_100ED8180);
  sub_100020674(&qword_1011997F0, &qword_1011997E8, &qword_100ED8180, &protocol conformance descriptor for Label<A, B>);
  return Button.init(action:label:)();
}

uint64_t sub_1006252B8(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr101092F61V12SongCellViewVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10062531C(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr101092F61V12SongCellViewVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1006253FC()
{
  result = qword_101199810;
  if (!qword_101199810)
  {
    sub_1001109D0(&qword_101199800, &qword_100ED8190);
    sub_100597D0C();
    sub_100020674(&qword_101199818, &qword_101199820, &qword_100ED8198, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199810);
  }

  return result;
}

uint64_t sub_1006254B4()
{
  v1 = (_s14descr101092F61V12SongCellViewVMa(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_100465CCC(*(v2 + 16), *(v2 + 24));

  v3 = v1[9];
  v4 = type metadata accessor for Playlist();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[10];
  v6 = type metadata accessor for Playlist.Entry();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = v1[11];
  v8 = type metadata accessor for Song();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_100625630()
{
  v1 = *(_s14descr101092F61V12SongCellViewVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100624ECC(v2);
}

double sub_100625690(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

id sub_100625758(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *&v6[OBJC_IVAR____TtC5Music24NowPlayingAutoPlayButton_defaultColor] = 0;
  *&v6[OBJC_IVAR____TtC5Music24NowPlayingAutoPlayButton_selectedColor] = 0;
  v25.receiver = v6;
  v25.super_class = type metadata accessor for NowPlayingAutoPlayButton();
  v11 = objc_msgSendSuper2(&v25, "initWithFrame:", a3, a4, a5, a6);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 configurationWithPointSize:7 weight:15.0];
  v15 = v13;
  v16 = v14;
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

  [v15 setImage:v18 forState:0];
  [v15 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

  v19 = AccessibilityIdentifier.nowPlayingAutoPlayButton.unsafeMutableAddressor();
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v23 = v19[3];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v20, v21, v22, v23);

  return v15;
}

void sub_1006259A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for NowPlayingAutoPlayButton();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if (a1)
  {
    sub_100050078();
    v5 = UITraitCollection.subscript.getter() & 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v3 traitCollection];
  sub_100050078();
  v7 = UITraitCollection.subscript.getter();

  if (v5 == 2 || ((v7 ^ v5) & 1) != 0)
  {
    sub_100625AE0();
  }
}

void sub_100625AE0()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_100050078();
  v3 = UITraitCollection.subscript.getter();

  if (v3)
  {
    v4 = objc_opt_self();
    v5 = String._bridgeToObjectiveC()();
    if (qword_10117F878 != -1)
    {
      swift_once();
    }

    v6 = [v4 imageNamed:v5 inBundle:qword_101218F90 compatibleWithTraitCollection:0];

    if (!v6)
    {
      __break(1u);
      return;
    }

    [v1 setImage:v6 forState:4];

    if ([v1 isSelected])
    {
      if (qword_10117F8E8 != -1)
      {
        swift_once();
      }

      v7 = &qword_101219080;
    }

    else
    {
      if (qword_10117F900 != -1)
      {
        swift_once();
      }

      v7 = &qword_101219098;
    }

    [v1 setTintColor:*v7];
    v15 = [objc_opt_self() clearColor];
    [v1 setBackgroundColor:v15];

    v13 = [v1 layer];
    v14 = 0.0;
  }

  else
  {
    [v1 setImage:0 forState:4];
    v8 = [v1 isSelected];
    v9 = &OBJC_IVAR____TtC5Music24NowPlayingAutoPlayButton_selectedColor;
    if (!v8)
    {
      v9 = &OBJC_IVAR____TtC5Music24NowPlayingAutoPlayButton_defaultColor;
    }

    [v1 setTintColor:*&v1[*v9]];
    if ([v1 isSelected])
    {
      v10 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingAutoPlayButton_defaultColor];
    }

    else
    {
      v10 = [objc_opt_self() clearColor];
    }

    v11 = v10;
    [v1 setBackgroundColor:v10];

    v12 = [v1 layer];
    [v12 setCornerCurve:kCACornerCurveContinuous];

    v13 = [v1 layer];
    v14 = 7.0;
  }

  v16 = v13;
  [v16 setCornerRadius:v14];
}

id sub_100625E28(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NowPlayingAutoPlayButton();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100625ED8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100625EEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100625F34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100626004(uint64_t a1)
{
  result = type metadata accessor for DragDropToLibrary.Origin(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_1006260A0()
{
  Hasher.init(_seed:)();
  GenericMusicItem.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1006260FC(uint64_t a1)
{
  GenericMusicItem.id.getter();
  String.hash(into:)();

  return result;
}

Swift::Int sub_10062614C(uint64_t a1)
{
  Hasher.init(_seed:)();
  GenericMusicItem.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006261A4(uint64_t a1)
{
  v1 = GenericMusicItem.id.getter();
  v3 = v2;
  if (v1 == GenericMusicItem.id.getter() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100626278(uint64_t a1)
{
  result = sub_1006262D0(&qword_1011999A8, type metadata accessor for DragDropToLibrary.Origin, &unk_100ED83E4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1006262D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_100626318(void (**a1)(char *, uint64_t), __n128 a2)
{
  v42 = a1;
  v50 = type metadata accessor for MusicLibrary.AddAction();
  v41 = *(v50 - 8);
  __chkstk_darwin();
  v49 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DragDropToLibrary.Origin(0);
  __chkstk_darwin();
  v48 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10010FC20(&unk_101193E20, &qword_100EBF7D0);
  v5 = *(v47 - 8);
  __chkstk_darwin();
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v39 - v7;
  v8 = *(type metadata accessor for DragDropToLibrary(0) - 8);
  __chkstk_darwin();
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicAuthorization.Status();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v39 - v14;
  type metadata accessor for MusicLibrary();
  v16 = *v2;
  static MusicLibrary.shared.getter();
  v43 = v16;
  v17 = static MusicLibrary.== infix(_:_:)();

  if ((v17 & 1) == 0)
  {
    return 0;
  }

  static MusicAuthorization.currentStatus.getter();
  (*(v11 + 104))(v13, enum case for MusicAuthorization.Status.authorized(_:), v10);
  sub_1006262D0(&unk_1011948E0, &type metadata accessor for MusicAuthorization.Status, &protocol conformance descriptor for MusicAuthorization.Status);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v53 == v51 && v54 == v52)
  {
    v18 = *(v11 + 8);
    v18(v13, v10);
    v18(v15, v10);

    goto LABEL_6;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v20 = *(v11 + 8);
  v20(v13, v10);
  v20(v15, v10);

  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v21 = v42[2];
  if (!v21)
  {
    return 1;
  }

  v22 = v42 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v39 = *(v8 + 72);
  v23 = (v41 + 1);
  v41 = (v5 + 32);
  v42 = v23;
  v24 = (v5 + 88);
  v40 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  v25 = (v5 + 8);
  v26 = v21 - 1;
  v27 = v48;
  do
  {
    v28 = v44;
    sub_1006274F0(v22, v44, type metadata accessor for DragDropToLibrary);
    sub_1006274F0(v28, v27, type metadata accessor for DragDropToLibrary.Origin);
    v29 = v49;
    static MusicLibraryAction<>.add.getter();
    v30 = v45;
    v31 = v50;
    MusicLibrary.supportedStatus<A>(for:action:)();
    (*v42)(v29, v31);
    sub_100627558(v28, type metadata accessor for DragDropToLibrary);
    v32 = type metadata accessor for GenericMusicItem();
    (*(*(v32 - 8) + 8))(v27, v32);
    v34 = v46;
    v33 = v47;
    (*v41)(v46, v30, v47);
    v35 = (*v24)(v34, v33);
    (*v25)(v34, v33);
    v37 = v26-- != 0;
    result = v35 == v40;
    if (v35 != v40)
    {
      break;
    }

    v22 += v39;
  }

  while (v37);
  return result;
}

uint64_t sub_10062691C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for Notice.Variant(0);
  v3[6] = swift_task_alloc();
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  v3[7] = swift_task_alloc();
  type metadata accessor for DragDropToLibrary.Origin(0);
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for GenericMusicItem();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100626A74, 0, 0);
}

uint64_t sub_100626A74()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v0[12] = v2;
  if (v2)
  {
    v0[13] = 0;
    v4 = v0[10];
    v3 = v0[11];
    v6 = v0[8];
    v5 = v0[9];
    v7 = *(type metadata accessor for DragDropToLibrary(0) - 8);
    sub_1006274F0(v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6, type metadata accessor for DragDropToLibrary.Origin);
    (*(v4 + 32))(v3, v6, v5);
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_100626C98;
    v9 = v0[11];
    v10 = v0[7];

    return MusicLibrary.add(_:)(v10, v9);
  }

  else
  {
    v11 = v0[6];
    v12 = v0[2];
    swift_storeEnumTagMultiPayload();
    static Notice.variant(_:)(v11, v12);
    sub_100627558(v11, type metadata accessor for Notice.Variant);
    v13 = type metadata accessor for Notice(0);
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100626C98()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_100627024;
  }

  else
  {
    sub_100627488(*(v2 + 56));
    v3 = sub_100626DB4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100626DB4()
{
  v1 = v0[12];
  v2 = v0[13] + 1;
  (*(v0[10] + 8))(v0[11], v0[9]);
  if (v2 == v1)
  {
    v3 = v0[6];
    v4 = v0[2];
    swift_storeEnumTagMultiPayload();
    static Notice.variant(_:)(v3, v4);
    sub_100627558(v3, type metadata accessor for Notice.Variant);
    v5 = type metadata accessor for Notice(0);
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[13] + 1;
    v0[13] = v8;
    v10 = v0[10];
    v9 = v0[11];
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[3];
    v14 = *(type metadata accessor for DragDropToLibrary(0) - 8);
    sub_1006274F0(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v8, v12, type metadata accessor for DragDropToLibrary.Origin);
    (*(v10 + 32))(v9, v12, v11);
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_100626C98;
    v16 = v0[11];
    v17 = v0[7];

    return MusicLibrary.add(_:)(v17, v16);
  }
}

uint64_t sub_100627024()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

void sub_1006270C8(uint64_t a1)
{
  v4[0] = *v1;
  type metadata accessor for MusicLibrary();
  sub_1006262D0(&qword_101180378, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  sub_10012B7A8((v1 + 1), v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10012BA6C(v4);
  if (Strong)
  {
    Hasher._combine(_:)(1u);
    v3 = Strong;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

id sub_1006271B0()
{
  v0 = objc_allocWithZone(UICollectionViewDropProposal);

  return [v0 initWithDropOperation:2 intent:2];
}

uint64_t sub_1006271F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_10062691C(a1, a2);
}

Swift::Int sub_10062729C()
{
  Hasher.init(_seed:)();
  sub_1006270C8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1006272E0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1006270C8(v2);
  return Hasher._finalize()();
}

unint64_t sub_100627324()
{
  result = qword_1011999B0;
  if (!qword_1011999B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011999B0);
  }

  return result;
}

unint64_t sub_1006273C0(uint64_t a1)
{
  result = sub_1006273E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1006273E8()
{
  result = qword_1011999F0;
  if (!qword_1011999F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011999F0);
  }

  return result;
}

uint64_t sub_100627488(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006274F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100627558(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006275B8(void *a1, void *a2)
{
  type metadata accessor for MusicLibrary();
  if (static MusicLibrary.== infix(_:_:)())
  {
    sub_10012B7A8((a1 + 1), v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10012BA6C(v9);
    sub_10012B7A8((a2 + 1), v8);
    v5 = swift_unknownObjectWeakLoadStrong();
    sub_10012BA6C(v8);
    if (Strong)
    {
      if (v5)
      {
        sub_10016F3C8();
        v6 = static NSObject.== infix(_:_:)();
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      if (!v5)
      {
        v6 = 1;
        return v6 & 1;
      }

      v6 = 0;
      Strong = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

id sub_1006276A8()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101219120 = result;
  return result;
}

id sub_1006276FC()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1062501089;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101219128 = result;
  return result;
}

id sub_100627750()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101219130 = result;
  return result;
}

void sub_1006277A4()
{
  sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  v0 = UIFontTextStyleCaption1;
  v1 = static UIFont.preferredFont(forTextStyle:weight:)();

  qword_101219138 = v1;
}

id sub_10062781C()
{
  v1 = OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView;
  v2 = *&v0[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView];
  }

  else
  {
    v4 = sub_100627880(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100627880(void *a1)
{
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = [objc_allocWithZone(CAGradientLayer) init];
  v4 = [a1 traitCollection];
  v5 = [v4 accessibilityContrast];

  if (v5 == 1)
  {
    v6 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  }

  else
  {
    v6 = [objc_opt_self() whiteColor];
  }

  v7 = v6;
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EC6C60;
  v9 = [v7 colorWithAlphaComponent:0.0];
  v10 = [v9 CGColor];

  type metadata accessor for CGColor(0);
  v12 = v11;
  *(v8 + 56) = v11;
  *(v8 + 32) = v10;
  v13 = [v7 CGColor];
  *(v8 + 88) = v12;
  *(v8 + 64) = v13;
  v14 = [v7 CGColor];
  *(v8 + 120) = v12;
  *(v8 + 96) = v14;
  v15 = [v7 CGColor];
  *(v8 + 152) = v12;
  *(v8 + 128) = v15;
  v16 = [v7 colorWithAlphaComponent:0.0];
  v17 = [v16 CGColor];

  *(v8 + 184) = v12;
  *(v8 + 160) = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setColors:isa];

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EC3620;
  sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
  *(v19 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v19 + 40) = NSNumber.init(floatLiteral:)(0.25);
  *(v19 + 48) = NSNumber.init(floatLiteral:)(0.5);
  *(v19 + 56) = NSNumber.init(floatLiteral:)(0.75);
  *(v19 + 64) = NSNumber.init(integerLiteral:)(1);
  v20 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setLocations:v20];

  [v3 setStartPoint:{0.0, 0.5}];
  [v3 setEndPoint:{1.0, 0.5}];
  v21 = [v2 layer];
  [v21 addSublayer:v3];

  v22 = [v2 layer];
  [v22 setOpacity:0.0];

  v23 = [v2 layer];
  [a1 bounds];
  [v23 setPosition:{-(CGRectGetWidth(v25) + 48.0 + -5.0), 0.0}];

  return v2;
}

uint64_t sub_100627C68()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100627D00, v3, v2);
}

uint64_t sub_100627D00()
{
  [*(v0 + 16) bounds];
  Width = CGRectGetWidth(v13);
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() animationWithKeyPath:v2];
  *(v0 + 48) = v3;

  v4 = v3;
  [v4 setDuration:1.3];
  if (qword_10117F970 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 16);
  [v4 setTimingFunction:qword_101219120];
  isa = CGPoint._bridgeToObjectiveC()().super.isa;
  [v4 setFromValue:isa];

  v7 = CGPoint._bridgeToObjectiveC()().super.isa;
  [v4 setToValue:v7];

  [v4 setRemovedOnCompletion:0];
  [v4 setFillMode:kCAFillModeForwards];

  v8 = sub_10062781C();
  v9 = [v8 layer];

  [v9 setPosition:{-(Width + 48.0 + -5.0), 0.0}];
  *(v0 + 56) = [*(v5 + OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView) layer];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_10035BB8C;

  return CALayer.addAsyncAnimation(_:forKey:)(v4, 0x6E6F697469736F70, 0xE800000000000000);
}

uint64_t sub_100627F84()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10062801C, v3, v2);
}

uint64_t sub_10062801C()
{
  [*(v0 + 16) bounds];
  Width = CGRectGetWidth(v13);
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() animationWithKeyPath:v2];
  *(v0 + 48) = v3;

  v4 = v3;
  [v4 setDuration:1.3];
  if (qword_10117F978 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 16);
  [v4 setTimingFunction:qword_101219128];
  isa = CGPoint._bridgeToObjectiveC()().super.isa;
  [v4 setFromValue:isa];

  v7 = CGPoint._bridgeToObjectiveC()().super.isa;
  [v4 setToValue:v7];

  [v4 setBeginTime:CACurrentMediaTime()];
  v8 = sub_10062781C();
  v9 = [v8 layer];

  [v9 setPosition:{Width + 48.0 + -5.0, 0.0}];
  *(v0 + 56) = [*(v5 + OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView) layer];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_100628280;

  return CALayer.addAsyncAnimation(_:forKey:)(v4, 0x6E6F697469736F70, 0xE800000000000000);
}

uint64_t sub_100628280()
{
  v1 = *v0;
  v2 = *(*v0 + 56);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_10062AB1C, v4, v3);
}

double sub_1006283C0(uint64_t a1, void *a2)
{
  v4 = sub_10010FC20(&qword_101194000, &qword_100ED1BD0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - v6;
  sub_100009F78(0, &qword_101181620, UIView_ptr);
  if (qword_10117F980 != -1)
  {
    swift_once();
  }

  v8 = qword_101219130;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  v12 = a2;
  static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v8, 0, sub_10062A96C, v9, sub_10062A98C, v11, 0.65, 0.0);

  return result;
}

double sub_1006285BC()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v2 = &v15 - v1;
  v3 = sub_10062781C();
  v4 = [v3 layer];

  LODWORD(v5) = 1.0;
  [v4 setOpacity:v5];

  v6 = [v0 layer];
  [v6 removeAllAnimations];

  v7 = OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView;
  v8 = [*&v0[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView] layer];
  [v8 removeAllAnimations];

  v9 = [*&v0[v7] layer];
  [v0 bounds];
  [v9 setPosition:{-(CGRectGetWidth(v16) + 48.0 + -5.0), 0.0}];

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = v0;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  sub_1001F4CB8(0, 0, v2, &unk_100ED8530, v13);

  return result;
}

uint64_t sub_1006287D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v4[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v7;
  v4[10] = v6;

  return _swift_task_switch(sub_1006288D8, v7, v6);
}

uint64_t sub_1006288D8(uint64_t a1)
{
  v2 = v1[2];
  v3 = static MainActor.shared.getter();
  v1[11] = v3;
  v4 = swift_task_alloc();
  v1[12] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[13] = v5;
  *v5 = v1;
  v5[1] = sub_1006289E0;

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v3, &protocol witness table for MainActor, 0xD00000000000001ALL, 0x8000000100E529F0, sub_10062A464, v4, &type metadata for () + 1);
}

uint64_t sub_1006289E0()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_100628B40, v3, v2);
}

uint64_t sub_100628B40()
{

  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return _swift_task_switch(sub_100628BC4, v2, v1);
}

uint64_t sub_100628BC4(__n128 a1)
{
  if (static Task<>.isCancelled.getter())
  {

    v2 = v1[1];

    return v2();
  }

  else
  {
    v4 = OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_didCompleteOneCycleHandler;
    v1[16] = OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_hasCompletedOneCycle;
    v1[17] = v4;
    v5 = swift_task_alloc();
    v1[18] = v5;
    *v5 = v1;
    v5[1] = sub_100628CB4;

    return sub_100627C68();
  }
}

uint64_t sub_100628CB4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 152) = v3;
  *v3 = v2;
  v3[1] = sub_100628DF4;

  return sub_100627F84();
}

uint64_t sub_100628DF4()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_100628F14, v3, v2);
}

uint64_t sub_100628F14(__n128 a1)
{
  v2 = v1[16];
  v3 = v1[2];
  v4 = *(v3 + v2);
  *(v3 + v2) = 1;
  if (v4 != 1)
  {
    v5 = v1[2] + v1[17];
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 8);

      v6(v8);
      sub_100020438(v6, v7);
    }
  }

  v9 = static Duration.seconds(_:)();
  v11 = v10;
  static Clock<>.continuous.getter();
  v12 = swift_task_alloc();
  v1[20] = v12;
  *v12 = v1;
  v12[1] = sub_100629044;

  return sub_10062A46C(v9, v11, 0, 0, 1);
}

uint64_t sub_100629044()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  v7 = (v5 + 8);
  if (v0)
  {

    (*v7)(v4, v6);
    v8 = v3[14];
    v9 = v3[15];
    v10 = sub_10062AB20;
  }

  else
  {
    (*v7)(v4, v6);
    v8 = v3[14];
    v9 = v3[15];
    v10 = sub_1006291DC;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_1006291DC(__n128 a1)
{
  if (static Task<>.isCancelled.getter())
  {

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v1 + 144) = v4;
    *v4 = v1;
    v4[1] = sub_100628CB4;

    return sub_100627C68();
  }
}

char *sub_100629300(void *a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  *&v1[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView] = 0;
  v3 = OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_smartTransitionLabel;
  v4 = [objc_allocWithZone(UILabel) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_10117F988 != -1)
  {
    swift_once();
  }

  [v4 setFont:qword_101219138];
  [v4 setAdjustsFontForContentSizeCategory:1];
  *&v1[v3] = v4;
  v5 = &v1[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_didCompleteOneCycleHandler];
  *v5 = 0;
  v5[1] = 0;
  v1[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_hasCompletedOneCycle] = 0;
  v6 = type metadata accessor for SmartTransitionIndicatorView();
  v18.receiver = v1;
  v18.super_class = v6;
  v7 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v8 = sub_100025CE0();
  v9 = v7;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v8))
  {
    if (a1)
    {
      v10 = a1;
      sub_10034539C();
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = *&v9[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_smartTransitionLabel];
  }

  else
  {
    v11 = *&v9[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_smartTransitionLabel];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  v12 = String._bridgeToObjectiveC()();

  [v11 setText:v12];

  v13 = *&v9[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_smartTransitionLabel];
  v14 = v9;
  [v14 addSubview:v13];
  v15 = sub_10062781C();
  [v14 addSubview:v15];

  if (qword_10117F8E0 != -1)
  {
    swift_once();
  }

  [v14 setBackgroundColor:qword_101219078];

  [v14 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100EBC6B0;
  *(v16 + 32) = type metadata accessor for UITraitAccessibilityContrast();
  *(v16 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v14;
}

void sub_1006297F0(uint64_t a1)
{
  v42.receiver = v1;
  v42.super_class = type metadata accessor for SmartTransitionIndicatorView();
  objc_msgSendSuper2(&v42, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_smartTransitionLabel];
  [v2 bounds];
  CGRectGetWidth(v43);
  v3 = sub_10062781C();
  v4 = CGPoint.topLeft.unsafeMutableAddressor();
  swift_beginAccess();
  [v3 setAnchorPoint:{*v4, v4[1]}];

  v5 = OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView;
  v6 = *&v1[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView];
  [v1 bounds];
  v7 = -(CGRectGetWidth(v44) + 48.0 + -5.0);
  [v1 bounds];
  v8 = CGRectGetWidth(v45) + 48.0 + -5.0;
  [v1 bounds];
  [v6 setFrame:{v7, 0.0, v8, CGRectGetHeight(v46)}];

  [*&v1[v5] setClipsToBounds:0];
  [v1 setClipsToBounds:0];
  v9 = [*&v1[v5] layer];
  v10 = [v9 sublayers];

  if (!v10)
  {
    goto LABEL_12;
  }

  sub_100009F78(0, &unk_101199A90, CALayer_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_11:

LABEL_12:
    v21 = [v2 layer];
    [v21 setShadowOffset:{0.0, 0.0}];

    v22 = [v2 layer];
    LODWORD(v23) = 1058642330;
    [v22 setShadowOpacity:v23];

    v24 = [v2 layer];
    [v24 setShadowRadius:3.0];

    v25 = objc_opt_self();
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100EBDC10;
    v27 = [v1 leadingAnchor];
    v28 = [v2 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    *(v26 + 32) = v29;
    v30 = [v1 trailingAnchor];
    v31 = [v2 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v26 + 40) = v32;
    v33 = [v1 topAnchor];
    v34 = [v2 topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    *(v26 + 48) = v35;
    v36 = [v1 bottomAnchor];
    v37 = [v2 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    *(v26 + 56) = v38;
    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v25 activateConstraints:isa];

    v40 = [v1 layer];
    v41 = [v2 layer];
    [v40 setMask:v41];

    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = sub_1007E9C3C(0, v11);
LABEL_7:
    v13 = v12;

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v16 = *&v1[v5];
      v17 = v13;
      [v16 bounds];
      [v15 setFrame:?];

      [v1 bounds];
      v18 = 24.0 / (CGRectGetWidth(v47) + 48.0 + -5.0);
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100EC3620;
      *(v19 + 32) = [objc_allocWithZone(NSNumber) initWithDouble:0.0];
      *(v19 + 40) = [objc_allocWithZone(NSNumber) initWithDouble:v18];
      *(v19 + 48) = [objc_allocWithZone(NSNumber) initWithDouble:0.5];
      *(v19 + 56) = [objc_allocWithZone(NSNumber) initWithDouble:1.0 - v18];
      *(v19 + 64) = [objc_allocWithZone(NSNumber) initWithDouble:1.0];
      sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
      v20 = Array._bridgeToObjectiveC()().super.isa;

      [v15 setLocations:v20];
    }

    else
    {
    }

    goto LABEL_12;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100629ED8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a2 accessibilityContrast];
    v7 = v5;
    v8 = [v7 traitCollection];
    v9 = [v8 accessibilityContrast];

    if (v6 == v9)
    {

LABEL_19:
      return;
    }

    v10 = [v7 traitCollection];
    v11 = [v10 accessibilityContrast];

    v12 = [v7 layer];
    if (v11 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = kCAFilterPlusL;
    }

    [v12 setCompositingFilter:v13];

    swift_unknownObjectRelease();
    v14 = sub_10062781C();
    v15 = [v14 layer];

    v16 = [v15 sublayers];
    if (!v16)
    {
      goto LABEL_19;
    }

    sub_100009F78(0, &unk_101199A90, CALayer_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v17 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_10;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = sub_1007E9C3C(0, v17);
      }

      else
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v18 = *(v17 + 32);
      }

      v19 = v18;

      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (!v20)
      {

        return;
      }

      v21 = v20;
      if (v11 == 1)
      {
        v22 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
      }

      else
      {
        v22 = [objc_opt_self() whiteColor];
      }

      v23 = v22;
      sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100EC6C60;
      v25 = [v23 colorWithAlphaComponent:0.0];
      v26 = [v25 CGColor];

      type metadata accessor for CGColor(0);
      v28 = v27;
      *(v24 + 56) = v27;
      *(v24 + 32) = v26;
      v29 = [v23 CGColor];
      *(v24 + 88) = v28;
      *(v24 + 64) = v29;
      v30 = [v23 CGColor];
      *(v24 + 120) = v28;
      *(v24 + 96) = v30;
      v31 = [v23 CGColor];
      *(v24 + 152) = v28;
      *(v24 + 128) = v31;
      v32 = [v23 colorWithAlphaComponent:0.0];
      v33 = [v32 CGColor];

      *(v24 + 184) = v28;
      *(v24 + 160) = v33;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v21 setColors:isa];

      goto LABEL_19;
    }
  }
}

id sub_10062A2F8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SmartTransitionIndicatorView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10062A3B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1006287D4(a1, v4, v5, v6);
}

uint64_t sub_10062A46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10062A56C, 0, 0);
}

uint64_t sub_10062A56C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10062A924(&qword_101199A80, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10062A924(&qword_101199A88, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10062A6FC;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10062A6FC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10062A8B8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10062A8B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10062A924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10062A9F8()
{
  *(v0 + OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView) = 0;
  v1 = OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_smartTransitionLabel;
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_10117F988 != -1)
  {
    swift_once();
  }

  [v2 setFont:qword_101219138];
  [v2 setAdjustsFontForContentSizeCategory:1];
  *(v0 + v1) = v2;
  v3 = (v0 + OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_didCompleteOneCycleHandler);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_hasCompletedOneCycle) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10062AB4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10062AB94(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_10062AC18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_10062AC74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10062ACE0@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = _s11ContentViewVMa(0) - 8;
  __chkstk_darwin();
  v4 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10010FC20(&qword_101199E58, &qword_100ED8940);
  __chkstk_darwin();
  v7 = &v39[-v6];
  v8 = sub_10010FC20(&qword_101199E60, &qword_100ED8948);
  __chkstk_darwin();
  v10 = &v39[-v9];
  v11 = sub_10010FC20(&qword_101199E68, &qword_100ED8950);
  __chkstk_darwin();
  v13 = &v39[-v12];
  v14 = *(v1 + *(_s10ImportViewVMa(0) + 20));
  sub_100633220(v1, v4, type metadata accessor for LibraryImport.ViewModel);
  v4[*(v2 + 28)] = v14;
  if ((v14 & 1) == 0)
  {
    if (qword_10117F990 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  if (qword_10117F998 != -1)
  {
LABEL_16:
    swift_once();
  }

LABEL_5:
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10063305C(v4, v7, _s11ContentViewVMa);
  v15 = &v7[*(v5 + 36)];
  v16 = v46;
  v15[4] = v45;
  v15[5] = v16;
  v15[6] = v47;
  v17 = v42;
  *v15 = v41;
  v15[1] = v17;
  v18 = v44;
  v15[2] = v43;
  v15[3] = v18;
  v19 = static SafeAreaRegions.all.getter();
  if (v14)
  {
    v20 = static Edge.Set.all.getter();
  }

  else
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  v21 = v20;
  sub_10003D17C(v7, v10, &qword_101199E58, &qword_100ED8940);
  v22 = &v10[*(v8 + 36)];
  *v22 = v19;
  v22[8] = v21;
  v23 = &v13[*(v11 + 36)];
  sub_10062B1B0();
  v24 = static Alignment.center.getter();
  v26 = v25;
  v27 = &v23[*(sub_10010FC20(&qword_101199E70, &qword_100ED8958) + 36)];
  *v27 = v24;
  v27[1] = v26;
  sub_10003D17C(v10, v13, &qword_101199E60, &qword_100ED8948);
  if (v14)
  {
    v28 = EdgeInsets.zero.unsafeMutableAddressor();
    v29 = *v28;
    v30 = v28[1];
    v31 = v28 + 2;
    v32 = v28[3];
  }

  else
  {
    if (qword_10117F9B0 != -1)
    {
      swift_once();
    }

    v29 = qword_101199AC0;
    if (qword_10117F9B8 != -1)
    {
      swift_once();
    }

    v30 = 0;
    v32 = 0;
    v31 = &qword_101199AC8;
  }

  v33 = *v31;
  v34 = static Edge.Set.all.getter();
  v35 = v13;
  v36 = v40;
  sub_10003D17C(v35, v40, &qword_101199E68, &qword_100ED8950);
  result = sub_10010FC20(&qword_101199E78, &qword_100ED8960);
  v38 = v36 + *(result + 36);
  *v38 = v34;
  *(v38 + 8) = v29;
  *(v38 + 16) = v30;
  *(v38 + 24) = v33;
  *(v38 + 32) = v32;
  *(v38 + 40) = 0;
  return result;
}

uint64_t sub_10062B1B0()
{
  sub_10010FC20(&qword_101199E80, &qword_100ED8968);
  __chkstk_darwin();
  v2 = &v11 - v1;
  v3 = sub_10010FC20(&qword_101199E88, &unk_100ED8970);
  __chkstk_darwin();
  v5 = (&v11 - v4);
  if (*(v0 + *(_s10ImportViewVMa(0) + 20)))
  {
    swift_storeEnumTagMultiPayload();
    sub_1006330C4();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    if (qword_10117F9A8 != -1)
    {
      swift_once();
    }

    v7 = qword_101199AB8;
    v8 = *(type metadata accessor for RoundedRectangle() + 20);
    v9 = enum case for RoundedCornerStyle.continuous(_:);
    v10 = type metadata accessor for RoundedCornerStyle();
    (*(*(v10 - 8) + 104))(v5 + v8, v9, v10);
    *v5 = v7;
    v5[1] = v7;
    if (qword_10117F9A0 != -1)
    {
      swift_once();
    }

    *(v5 + *(v3 + 36)) = qword_101199AB0;
    sub_1000089F8(v5, v2, &qword_101199E88, &unk_100ED8970);
    swift_storeEnumTagMultiPayload();
    sub_1006330C4();

    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v5, &qword_101199E88, &unk_100ED8970);
  }
}

uint64_t sub_10062B438@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v41 = sub_10010FC20(&qword_10119A2F8, &qword_100ED8F10);
  __chkstk_darwin();
  v4 = &v38 - v3;
  _s16ActionButtonViewV5ModelVMa(0);
  __chkstk_darwin();
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10010FC20(&qword_10119A300, &qword_100ED8F18);
  __chkstk_darwin();
  v7 = &v38 - v6;
  v40 = sub_10010FC20(&qword_10119A308, &qword_100ED8F20);
  __chkstk_darwin();
  v9 = &v38 - v8;
  v44 = sub_10010FC20(&unk_10119A310, &unk_100ED8F28);
  __chkstk_darwin();
  v42 = &v38 - v10;
  v11 = type metadata accessor for OpacityTransition();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v38 - v15;
  type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin();
  v18 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100633220(v2, v18, type metadata accessor for LibraryImport.ViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v39;
      sub_10063305C(v18, v39, _s16ActionButtonViewV5ModelVMa);
      v21 = *(v2 + *(_s11ContentViewVMa(0) + 20));
      sub_100633220(v20, v4, _s16ActionButtonViewV5ModelVMa);
      v4[*(_s16ActionButtonViewVMa(0) + 20)] = v21;
      OpacityTransition.init()();
      (*(v12 + 16))(v14, v16, v11);
      sub_1006304AC(&qword_101199EE8, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
      v22 = AnyTransition.init<A>(_:)();
      (*(v12 + 8))(v16, v11);
      *&v4[*(v41 + 36)] = v22;
      sub_1000089F8(v4, v9, &qword_10119A2F8, &qword_100ED8F10);
      swift_storeEnumTagMultiPayload();
      sub_10010FC20(&qword_10119A330, &qword_100ED8F38);
      sub_1006345D4();
      sub_1006346E0();
      v23 = v42;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v23, v7, &unk_10119A310, &unk_100ED8F28);
      swift_storeEnumTagMultiPayload();
      sub_10010FC20(&unk_10118A520, &unk_100EC5DA0);
      sub_100634548();
      sub_1002D8BFC();
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v23, &unk_10119A310, &unk_100ED8F28);
      sub_1000095E8(v4, &qword_10119A2F8, &qword_100ED8F10);
      v24 = _s16ActionButtonViewV5ModelVMa;
      v25 = v20;
    }

    else
    {
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v35 = v47;
      v36 = v48;
      v37 = v49;
      *v7 = v46;
      v7[8] = v35;
      *(v7 + 2) = v36;
      v7[24] = v37;
      *(v7 + 2) = v50;
      swift_storeEnumTagMultiPayload();
      sub_10010FC20(&unk_10118A520, &unk_100EC5DA0);
      sub_100634548();
      sub_1002D8BFC();
      _ConditionalContent<>.init(storage:)();
      v24 = type metadata accessor for LibraryImport.ViewModel;
      v25 = v18;
    }

    return sub_1006334B4(v25, v24);
  }

  else
  {
    v26 = *v18;
    v27 = v18[1];
    v28 = v18[3];
    v38 = v18[2];
    v39 = v26;
    v29 = v18[4];
    v30 = *(v2 + *(_s11ContentViewVMa(0) + 20));
    OpacityTransition.init()();
    (*(v12 + 16))(v14, v16, v11);
    sub_1006304AC(&qword_101199EE8, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v31 = AnyTransition.init<A>(_:)();
    (*(v12 + 8))(v16, v11);
    v32 = v38;
    *v9 = v39;
    *(v9 + 1) = v27;
    *(v9 + 2) = v32;
    *(v9 + 3) = v28;
    *(v9 + 4) = v29;
    v9[40] = v30;
    *(v9 + 6) = v31;
    swift_storeEnumTagMultiPayload();

    sub_10010FC20(&qword_10119A330, &qword_100ED8F38);
    sub_1006345D4();
    sub_1006346E0();
    v33 = v42;
    _ConditionalContent<>.init(storage:)();
    sub_1000089F8(v33, v7, &unk_10119A310, &unk_100ED8F28);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&unk_10118A520, &unk_100EC5DA0);
    sub_100634548();
    sub_1002D8BFC();
    _ConditionalContent<>.init(storage:)();

    return sub_1000095E8(v33, &unk_10119A310, &unk_100ED8F28);
  }
}

void sub_10062BBDC(uint64_t a1)
{
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 24))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 24))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  v2 = *(v1 + 32);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
}

Swift::Int sub_10062BC84()
{
  Hasher.init(_seed:)();
  sub_10062BBDC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10062BCC8(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10062BBDC(v2);
  return Hasher._finalize()();
}

BOOL sub_10062BD04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100631A70(v5, v7);
}

unint64_t sub_10062BD54()
{
  result = qword_101199CE8;
  if (!qword_101199CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199CE8);
  }

  return result;
}

uint64_t sub_10062BDA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_10010FC20(&qword_101199EB0, &qword_100ED8980);
  __chkstk_darwin();
  v5 = &v23 - v4;
  v6 = sub_10010FC20(&qword_101199EB8, &qword_100ED8988);
  __chkstk_darwin();
  v8 = &v23 - v7;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v9 = sub_10010FC20(&qword_101199EC0, &qword_100ED8990);
  sub_10062C094(v2, &v5[*(v9 + 44)]);
  if (*(v2 + 40))
  {
    v10 = EdgeInsets.zero.unsafeMutableAddressor();
    v11 = *v10;
    v12 = *(v10 + 1);
    v13 = *(v10 + 2);
    v14 = *(v10 + 3);
  }

  else if (*(v2 + 24))
  {
    if (qword_10117F9E0 != -1)
    {
      swift_once();
    }

    v11 = *&qword_101199AF0;
    if (qword_10117F9C8 != -1)
    {
      swift_once();
    }

    v12 = qword_101199AD8;
    if (qword_10117F9E8 != -1)
    {
      swift_once();
    }

    v13 = qword_101199AF8;
    v14 = v12;
  }

  else
  {
    if (qword_10117F9C8 != -1)
    {
      swift_once();
    }

    v15 = *&qword_101199AD8;
    if (qword_10117F9C0 != -1)
    {
      v22 = qword_101199AD8;
      swift_once();
      v15 = *&v22;
    }

    v11 = EdgeInsets.init(horizontal:vertical:)(v15, *&qword_101199AD0);
    v12 = v16;
    v13 = v17;
    v14 = v18;
  }

  v19 = static Edge.Set.all.getter();
  sub_10003D17C(v5, v8, &qword_101199EB0, &qword_100ED8980);
  v20 = &v8[*(v6 + 36)];
  *v20 = v19;
  *(v20 + 1) = v11;
  *(v20 + 2) = v12;
  *(v20 + 3) = v13;
  *(v20 + 4) = v14;
  v20[40] = 0;
  sub_10003D17C(v8, a1, &qword_101199EB8, &qword_100ED8988);
  result = sub_10010FC20(&qword_101199EC8, &qword_100ED8998);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_10062C094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v73 = sub_10010FC20(&qword_101199ED0, &qword_100ED89A0);
  v72 = *(v73 - 8);
  __chkstk_darwin();
  v71 = &v63 - v3;
  v78 = sub_10010FC20(&qword_101199ED8, &qword_100ED89A8);
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v76 = &v63 - v4;
  v75 = sub_10010FC20(&qword_101199EE0, &qword_100ED89B0);
  __chkstk_darwin();
  v80 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v74 = &v63 - v6;
  __chkstk_darwin();
  v79 = &v63 - v7;
  v8 = type metadata accessor for OpacityTransition();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v63 - v12;
  v15 = *a1;
  v14 = *(a1 + 8);
  v16 = *(a1 + 24);
  v83 = *(a1 + 16);
  v63 = *(a1 + 32);
  v17 = sub_100479D70(&off_10109BED8);
  swift_bridgeObjectRetain_n();
  v90 = Text.init(optional:options:)(v15, v14, v17);
  v89 = v18;
  v88 = v19;
  v87 = v20;
  OpacityTransition.init()();
  v66 = *(v9 + 16);
  v66(v11, v13, v8);
  v65 = sub_1006304AC(&qword_101199EE8, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v86 = AnyTransition.init<A>(_:)();
  v21 = *(v9 + 8);
  v21(v13, v8);
  v95 = 0x203A656C746954;
  v96 = 0xE700000000000000;
  if (v14)
  {
    v22 = v15;
  }

  else
  {
    v22 = 7104878;
  }

  if (v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = 0xE300000000000000;
  }

  v24 = v23;
  String.append(_:)(*&v22);

  v85 = v95;
  v84 = v96;
  v106 = *(a1 + 40);
  if (v106)
  {
    if (qword_10117FA00 != -1)
    {
      swift_once();
    }

    v25 = &dword_101199B0C;
  }

  else
  {
    if (qword_10117F9F8 != -1)
    {
      swift_once();
    }

    v25 = &dword_101199B08;
  }

  v26 = v16;
  v27 = 7104878;
  v28 = v83;
  LODWORD(v83) = *v25;
  if (v16)
  {
    swift_bridgeObjectRetain_n();
    static Font.Weight.semibold.getter();
    v30 = v29;
    v27 = v28;
  }

  else
  {
    v30 = 0;
    v16 = 0xE300000000000000;
  }

  v82 = v26 == 0;
  v105 = v26 == 0;
  v31 = sub_100479D70(&off_10109BF00);
  v70 = Text.init(optional:options:)(v28, v26, v31);
  v69 = v32;
  v68 = v33;
  v67 = v34;
  OpacityTransition.init()();
  v66(v11, v13, v8);
  v66 = AnyTransition.init<A>(_:)();
  v21(v13, v8);
  v95 = 0x656C746974627553;
  v96 = 0xEA0000000000203ALL;
  v35._countAndFlagsBits = v27;
  v35._object = v16;
  String.append(_:)(v35);

  v64 = v95;
  v65 = v96;
  v95 = v63;
  LOBYTE(v96) = 0;
  *&v91 = 0x3FF0000000000000;
  sub_100363C0C();
  v36 = v71;
  ProgressView.init<A>(value:total:)();
  if (v106)
  {
    v37 = v76;
    if (qword_10117FA08 != -1)
    {
      swift_once();
    }

    v38 = &qword_101199B10;
  }

  else
  {
    v37 = v76;
    if (qword_10117F9D8 != -1)
    {
      swift_once();
    }

    v38 = &qword_101199AE8;
  }

  v95 = *v38;
  sub_100020674(&qword_101180F58, &qword_101199ED0, &qword_100ED89A0, &protocol conformance descriptor for ProgressView<A, B>);
  sub_1006331AC();
  v39 = v73;
  View.progressViewStyle<A>(_:)();
  (*(v72 + 8))(v36, v39);
  v40 = static Edge.Set.top.getter();
  if (v26)
  {
    if (qword_10117F9F0 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (qword_10117F9D0 != -1)
  {
LABEL_29:
    swift_once();
  }

LABEL_28:
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v74;
  (*(v77 + 32))(v74, v37, v78);
  v50 = v49 + *(v75 + 36);
  *v50 = v40;
  *(v50 + 8) = v42;
  *(v50 + 16) = v44;
  *(v50 + 24) = v46;
  *(v50 + 32) = v48;
  *(v50 + 40) = 0;
  v51 = v79;
  sub_10003D17C(v49, v79, &qword_101199EE0, &qword_100ED89B0);
  v52 = v80;
  sub_1000089F8(v51, v80, &qword_101199EE0, &qword_100ED89B0);
  *&v91 = v90;
  *(&v91 + 1) = v89;
  *&v92 = v88;
  *(&v92 + 1) = v87;
  *&v93 = v86;
  *(&v93 + 1) = v85;
  *v94 = v84;
  *&v94[8] = v83;
  *&v94[16] = v30;
  v94[24] = v82;
  v53 = *v94;
  v54 = v81;
  *(v81 + 32) = v93;
  *(v54 + 48) = v53;
  *(v54 + 57) = *&v94[9];
  v55 = v92;
  *v54 = v91;
  *(v54 + 16) = v55;
  v56 = v70;
  v57 = v69;
  *(v54 + 80) = v70;
  *(v54 + 88) = v57;
  v58 = v68;
  v59 = v67;
  *(v54 + 96) = v68;
  *(v54 + 104) = v59;
  v60 = v64;
  *(v54 + 112) = v66;
  *(v54 + 120) = v60;
  *(v54 + 128) = v65;
  v61 = sub_10010FC20(&qword_101199EF8, &qword_100ED89B8);
  sub_1000089F8(v52, v54 + *(v61 + 64), &qword_101199EE0, &qword_100ED89B0);
  sub_1000089F8(&v91, &v95, &qword_101199F00, &qword_100ED89C0);
  sub_10024EA48(v56, v57, v58, v59);

  sub_1000095E8(v51, &qword_101199EE0, &qword_100ED89B0);
  sub_1000095E8(v52, &qword_101199EE0, &qword_100ED89B0);
  sub_10024EA04(v56, v57, v58, v59);

  v95 = v90;
  v96 = v89;
  v97 = v88;
  v98 = v87;
  v99 = v86;
  v100 = v85;
  v101 = v84;
  v102 = v83;
  v103 = v30;
  v104 = v82;
  return sub_1000095E8(&v95, &qword_101199F00, &qword_100ED89C0);
}

void sub_10062CB80(uint64_t a1)
{
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 24))
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 24))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (*(v1 + 40))
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  Hasher._combine(_:)(0);
  if (*(v1 + 40))
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 56))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  Hasher._combine(_:)(0);
  if (*(v1 + 56))
  {
LABEL_5:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (!*(v1 + 128))
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_10:
  Hasher._combine(_:)(0);
  if (!*(v1 + 128))
  {
    goto LABEL_15;
  }

LABEL_11:
  v3 = *(v1 + 104);
  v4 = *(v1 + 120);
  Hasher._combine(_:)(1u);
  if (!v3)
  {
    Hasher._combine(_:)(0);
    if (v4)
    {
      goto LABEL_13;
    }

LABEL_15:
    Hasher._combine(_:)(0);
    goto LABEL_16;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_13:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_16:
  Hasher._combine(_:)(*(v1 + 144));
  _s16ActionButtonViewV5ModelVMa(0);
  sub_10063166C(a1);
  sub_10063166C(a1);
}

uint64_t sub_10062CD98@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v49 = a1;
  v4 = type metadata accessor for OpacityTransition();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v47 - v8;
  v10 = sub_10010FC20(&qword_101199F08, &qword_100ED89C8) - 8;
  __chkstk_darwin();
  v12 = &v47 - v11;
  v13 = sub_10010FC20(&qword_101199F10, &qword_100ED89D0);
  __chkstk_darwin();
  v15 = &v47 - v14;
  v48 = sub_10010FC20(&qword_101199F18, &qword_100ED89D8);
  __chkstk_darwin();
  v17 = &v47 - v16;
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v18 = sub_10010FC20(&qword_101199F20, &qword_100ED89E0);
  sub_10062D320(v3, &v12[*(v18 + 44)]);
  OpacityTransition.init()();
  (*(v5 + 16))(v7, v9, v4);
  sub_1006304AC(&qword_101199EE8, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v19 = AnyTransition.init<A>(_:)();
  v20 = v4;
  v21 = v3;
  (*(v5 + 8))(v9, v20);
  *&v12[*(v10 + 44)] = v19;
  v22 = *(v3 + *(_s16ActionButtonViewVMa(0) + 20));
  if (v22)
  {
    v23 = EdgeInsets.zero.unsafeMutableAddressor();
    v24 = *v23;
    v25 = *(v23 + 1);
    v26 = *(v23 + 2);
    v27 = *(v23 + 3);
  }

  else
  {
    if (qword_10117FA28 != -1)
    {
      swift_once();
    }

    v28 = *&qword_101199B30;
    if (qword_10117FA20 != -1)
    {
      v46 = qword_101199B30;
      swift_once();
      v28 = *&v46;
    }

    v24 = EdgeInsets.init(horizontal:vertical:)(v28, *&qword_101199B28);
    v25 = v29;
    v26 = v30;
    v27 = v31;
  }

  v32 = static Edge.Set.all.getter();
  sub_10003D17C(v12, v15, &qword_101199F08, &qword_100ED89C8);
  v33 = &v15[*(v13 + 36)];
  *v33 = v32;
  *(v33 + 1) = v24;
  *(v33 + 2) = v25;
  *(v33 + 3) = v26;
  *(v33 + 4) = v27;
  v33[40] = 0;
  if (v22)
  {
    if (qword_10117F998 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (qword_10117F990 != -1)
  {
LABEL_13:
    swift_once();
  }

LABEL_12:
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v15, v17, &qword_101199F10, &qword_100ED89D0);
  v34 = &v17[*(v48 + 36)];
  v35 = v55;
  *(v34 + 4) = v54;
  *(v34 + 5) = v35;
  *(v34 + 6) = v56;
  v36 = v51;
  *v34 = v50;
  *(v34 + 1) = v36;
  v37 = v53;
  *(v34 + 2) = v52;
  *(v34 + 3) = v37;
  v38 = static Alignment.topTrailing.getter();
  v40 = v39;
  v41 = sub_10010FC20(&qword_101199F28, &qword_100ED89E8);
  v42 = v49;
  v43 = v49 + *(v41 + 36);
  sub_10062E7B8(v21, v43);
  v44 = (v43 + *(sub_10010FC20(&qword_101199F30, &qword_100ED89F0) + 36));
  *v44 = v38;
  v44[1] = v40;
  return sub_10003D17C(v17, v42, &qword_101199F18, &qword_100ED89D8);
}

uint64_t sub_10062D320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s16ActionButtonViewVMa(0) - 8;
  v89 = *v4;
  __chkstk_darwin();
  v90 = v5;
  v91 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10010FC20(&qword_101199F78, &qword_100ED8A18);
  v92 = *(v93 - 8);
  __chkstk_darwin();
  v97 = &v87 - v6;
  v7 = sub_10010FC20(&qword_101199F80, &qword_100ED8A20);
  __chkstk_darwin();
  v96 = &v87 - v8;
  v99 = sub_10010FC20(&qword_101199F88, &qword_100ED8A28);
  v112 = *(v99 - 8);
  __chkstk_darwin();
  v94 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = &v87 - v10;
  sub_10010FC20(&qword_101199F90, &qword_100ED8A30);
  __chkstk_darwin();
  v115 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v87 - v12;
  v13 = sub_10010FC20(&qword_101199F98, &qword_100ED8A38);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v87 - v15;
  sub_10010FC20(&qword_101199FA0, &qword_100ED8A40);
  __chkstk_darwin();
  v113 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v87 - v18;
  v88 = *(a1 + *(v4 + 28));
  if (v88 == 1)
  {
    *v16 = static VerticalAlignment.center.getter();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v20 = sub_10010FC20(&qword_101199FC8, &qword_100ED8A58);
    sub_10062DDDC(a1, &v16[*(v20 + 44)]);
    sub_10003D17C(v16, v19, &qword_101199F98, &qword_100ED8A38);
    (*(v14 + 56))(v19, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(&v87 - v18, 1, 1, v13);
  }

  v21 = *a1;
  v22 = a1[1];
  v23 = sub_100479D70(&off_10109BF28);
  swift_bridgeObjectRetain_n();
  v24 = Text.init(optional:options:)(v21, v22, v23);
  v110 = v25;
  v111 = v24;
  v108 = v27;
  v109 = v26;
  strcpy(v116, "Title: ");
  v116[1] = 0xE700000000000000;
  if (v22)
  {
    v28 = v21;
  }

  else
  {
    v28 = 7104878;
  }

  if (v22)
  {
    v29 = v22;
  }

  else
  {
    v29 = 0xE300000000000000;
  }

  v30 = v29;
  String.append(_:)(*&v28);

  v101 = v116[0];
  v107 = v116[1];
  v31 = a1[2];
  v32 = a1[3];
  v33 = sub_100479D70(&off_10109BF50);
  swift_bridgeObjectRetain_n();
  v34 = Text.init(optional:options:)(v31, v32, v33);
  v105 = v35;
  v106 = v34;
  v103 = v37;
  v104 = v36;
  strcpy(v116, "Subtitle: ");
  BYTE3(v116[1]) = 0;
  HIDWORD(v116[1]) = -369098752;
  if (v32)
  {
    v38 = v31;
  }

  else
  {
    v38 = 7104878;
  }

  if (v32)
  {
    v39 = v32;
  }

  else
  {
    v39 = 0xE300000000000000;
  }

  v40 = v39;
  String.append(_:)(*&v38);

  v100 = v116[0];
  v102 = v116[1];
  v41 = a1[8];
  if (!v41)
  {
    goto LABEL_21;
  }

  v42 = a1[9];
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v42;
  v44 = a1[5];
  if (!v44)
  {

LABEL_21:
    v53 = 1;
    v51 = v114;
    v52 = v99;
    goto LABEL_26;
  }

  v45 = v7;
  v87 = a2;
  v46 = a1[4];
  v47 = v91;
  sub_100633220(a1, v91, _s16ActionButtonViewVMa);
  v48 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = sub_10026A1C8;
  *(v49 + 24) = v43;
  sub_10063305C(v47, v49 + v48, _s16ActionButtonViewVMa);
  __chkstk_darwin();
  v91 = v46;
  *(&v87 - 2) = v46;
  *(&v87 - 1) = v44;
  sub_100030444(v41, v42);

  sub_10010FC20(&qword_101199FB0, &qword_100ED8A50);
  sub_1006333B0();
  Button.init(action:label:)();
  v50 = static Edge.Set.top.getter();
  if (v88)
  {
    Int.seconds.getter(0);
    a2 = v87;
    v51 = v114;
    v52 = v99;
  }

  else
  {
    v51 = v114;
    v52 = v99;
    if (qword_10117FA38 != -1)
    {
      swift_once();
    }

    a2 = v87;
  }

  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v96;
  (*(v92 + 32))(v96, v97, v93);
  v63 = v62 + *(v45 + 36);
  *v63 = v50;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  v116[0] = 0;
  v116[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v116, "Action label: ");
  HIBYTE(v116[1]) = -18;
  v64._countAndFlagsBits = v91;
  v64._object = v44;
  String.append(_:)(v64);

  v65 = v116[0];
  v66 = v116[1];
  v67 = v94;
  sub_10003D17C(v62, v94, &qword_101199F80, &qword_100ED8A20);
  v68 = (v67 + *(v52 + 52));
  *v68 = v65;
  v68[1] = v66;
  v69 = v67;
  v70 = v95;
  sub_10003D17C(v69, v95, &qword_101199F88, &qword_100ED8A28);
  sub_10003D17C(v70, v51, &qword_101199F88, &qword_100ED8A28);
  v53 = 0;
LABEL_26:
  (*(v112 + 56))(v51, v53, 1, v52);
  v98 = v19;
  v71 = v113;
  sub_1000089F8(v19, v113, &qword_101199FA0, &qword_100ED8A40);
  sub_1000089F8(v51, v115, &qword_101199F90, &qword_100ED8A30);
  sub_1000089F8(v71, a2, &qword_101199FA0, &qword_100ED8A40);
  v72 = sub_10010FC20(&qword_101199FA8, &qword_100ED8A48);
  v73 = (a2 + v72[12]);
  v74 = v110;
  v75 = v111;
  *v73 = v111;
  v73[1] = v74;
  v76 = a2;
  v77 = v108;
  v78 = v109;
  v73[2] = v109;
  v73[3] = v77;
  v79 = v102;
  v80 = v106;
  v81 = v107;
  v73[4] = v101;
  v73[5] = v81;
  v82 = (a2 + v72[16]);
  v84 = v104;
  v83 = v105;
  *v82 = v80;
  v82[1] = v83;
  v85 = v103;
  v82[2] = v84;
  v82[3] = v85;
  v82[4] = v100;
  v82[5] = v79;
  sub_1000089F8(v115, v76 + v72[20], &qword_101199F90, &qword_100ED8A30);
  sub_10024EA48(v75, v74, v78, v77);

  sub_10024EA48(v80, v83, v84, v85);

  sub_1000095E8(v114, &qword_101199F90, &qword_100ED8A30);
  sub_1000095E8(v98, &qword_101199FA0, &qword_100ED8A40);
  sub_1000095E8(v115, &qword_101199F90, &qword_100ED8A30);
  sub_10024EA04(v80, v83, v84, v85);

  sub_10024EA04(v75, v74, v78, v77);

  return sub_1000095E8(v113, &qword_101199FA0, &qword_100ED8A40);
}

uint64_t sub_10062DDDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v30 = sub_10010FC20(&qword_101199F38, &qword_100ED89F8);
  __chkstk_darwin();
  v4 = &v30 - v3;
  v5 = _s11CloseButtonVMa(0) - 8;
  __chkstk_darwin();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10010FC20(&qword_101199F40, &qword_100ED8A00);
  __chkstk_darwin();
  v9 = &v30 - v8;
  v10 = sub_10010FC20(&qword_101199F48, &qword_100ED8A08);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v30 - v14;
  v16 = *(a1 + *(_s16ActionButtonViewVMa(0) + 20));
  sub_100633220(a1, v7, _s16ActionButtonViewV5ModelVMa);
  v7[*(v5 + 28)] = v16;
  *&v34 = Int.seconds.getter(30);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();
  v17 = *(v5 + 36);
  v33 = 0;
  sub_10010FC20(&unk_101199F50, &qword_100ED8A10);
  State.init(wrappedValue:)();
  *&v7[v17] = v34;
  if ((v16 & 1) == 0)
  {
    if (qword_10117FA30 != -1)
    {
      swift_once();
    }

    v18 = &qword_101199B38;
    goto LABEL_7;
  }

  if (qword_10117FA40 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v18 = &qword_101199B48;
LABEL_7:
    v19 = v32;
    v20 = *v18;
    v21 = static Edge.Set.all.getter();
    sub_10063305C(v7, v9, _s11CloseButtonVMa);
    v22 = &v9[*(v19 + 36)];
    *v22 = v21;
    *(v22 + 1) = v20;
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 4) = v20;
    v22[40] = 0;
    v23 = enum case for DynamicTypeSize.accessibility1(_:);
    v24 = type metadata accessor for DynamicTypeSize();
    (*(*(v24 - 8) + 104))(v4, v23, v24);
    sub_1006304AC(&qword_1011A1490, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    v7 = v24;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    __break(1u);
LABEL_10:
    swift_once();
  }

  sub_100633288();
  sub_100020674(&qword_101199F70, &qword_101199F38, &qword_100ED89F8, &protocol conformance descriptor for PartialRangeUpTo<A>);
  View.dynamicTypeSize<A>(_:)();
  sub_1000095E8(v4, &qword_101199F38, &qword_100ED89F8);
  sub_1000095E8(v9, &qword_101199F40, &qword_100ED8A00);
  v25 = *(v11 + 16);
  v25(v13, v15, v10);
  v26 = v31;
  *v31 = 0;
  *(v26 + 8) = 1;
  v27 = sub_10010FC20(&unk_101199FD0, &qword_100ED8A60);
  v25(v26 + *(v27 + 48), v13, v10);
  v28 = *(v11 + 8);
  v28(v15, v10);
  return (v28)(v13, v10);
}

uint64_t sub_10062E2CC(void (*a1)(__n128), uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_101199B50, &qword_100ED8540);
  v5 = __chkstk_darwin();
  v7 = &v11 - v6;
  a1(v5);
  v8 = _s16ActionButtonViewV5ModelVMa(0);
  sub_1000089F8(a3 + *(v8 + 48), v7, &qword_101199B50, &qword_100ED8540);
  v9 = _s12ClickMetricsVMa(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    return sub_1000095E8(v7, &qword_101199B50, &qword_100ED8540);
  }

  sub_10062E408();
  return sub_1006334B4(v7, _s12ClickMetricsVMa);
}

uint64_t sub_10062E408()
{
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v6 = &v28 - v5;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s12ClickMetricsVMa(0);
  v10 = v9[5];
  v11 = &v0[v9[6]];
  v12 = v11[1];
  v28 = *v11;
  v13 = v0[v9[8]];
  v14 = *v0;
  sub_1000089F8(&v0[v10], v6, &qword_101183A20, &unk_100EBCF80);
  v15 = &v0[v9[7]];
  v17 = *v15;
  v16 = v15[1];

  sub_100633490(v17, v16);
  v18 = MetricsEvent.Page.libraryLanding.unsafeMutableAddressor();
  sub_100633220(v18, v4, type metadata accessor for MetricsEvent.Page);
  MetricsEvent.Page.metricsPageProperties.getter(v2);
  sub_1006334B4(v4, type metadata accessor for MetricsEvent.Page);
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v28, v12, v13, v14, v6, 0, v17, v16, v8, 0, 0, 0xFF00u, v2, 0);
  v19 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v20 = sub_10053771C();
  v22 = v21;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v23 = qword_101218AD0;
  v24 = GroupActivitiesManager.hasJoined.getter();
  v25 = GroupActivitiesManager.participantsCount.getter();
  v26 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v19) + 0xB8))(v8, v20, v22, v24 & 1, v25, *(v23 + v26));

  return sub_1006334B4(v8, type metadata accessor for MetricsEvent.Click);
}

uint64_t sub_10062E74C@<X0>(uint64_t a3@<X8>)
{
  sub_100009838();

  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10062E7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10010FC20(&qword_101199F38, &qword_100ED89F8);
  __chkstk_darwin();
  v5 = v23 - v4;
  v6 = _s11CloseButtonVMa(0);
  __chkstk_darwin();
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_101199F40, &qword_100ED8A00);
  __chkstk_darwin();
  v11 = v23 - v10;
  v12 = sub_10010FC20(&qword_101199F48, &qword_100ED8A08);
  v23[0] = *(v12 - 8);
  __chkstk_darwin();
  v14 = v23 - v13;
  if (*(a1 + *(_s16ActionButtonViewVMa(0) + 20)))
  {
    v15 = *(v23[0] + 56);

    return v15(a2, 1, 1, v12);
  }

  else
  {
    sub_100633220(a1, v8, _s16ActionButtonViewV5ModelVMa);
    v8[*(v6 + 20)] = 0;
    *&v24 = Int.seconds.getter(30);
    sub_100363C0C();
    ScaledMetric.init(wrappedValue:)();
    v17 = *(v6 + 28);
    v23[1] = 0;
    sub_10010FC20(&unk_101199F50, &qword_100ED8A10);
    State.init(wrappedValue:)();
    *&v8[v17] = v24;
    if (qword_10117FA30 != -1)
    {
      swift_once();
    }

    v18 = qword_101199B38;
    v19 = static Edge.Set.all.getter();
    sub_10063305C(v8, v11, _s11CloseButtonVMa);
    v20 = &v11[*(v9 + 36)];
    *v20 = v19;
    *(v20 + 1) = v18;
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    *(v20 + 4) = v18;
    v20[40] = 0;
    v21 = enum case for DynamicTypeSize.accessibility3(_:);
    v22 = type metadata accessor for DynamicTypeSize();
    (*(*(v22 - 8) + 104))(v5, v21, v22);
    sub_1006304AC(&qword_1011A1490, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      sub_100633288();
      sub_100020674(&qword_101199F70, &qword_101199F38, &qword_100ED89F8, &protocol conformance descriptor for PartialRangeUpTo<A>);
      View.dynamicTypeSize<A>(_:)();
      sub_1000095E8(v5, &qword_101199F38, &qword_100ED89F8);
      sub_1000095E8(v11, &qword_101199F40, &qword_100ED8A00);
      (*(v23[0] + 32))(a2, v14, v12);
      return (*(v23[0] + 56))(a2, 0, 1, v12);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10062EC4C@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  v47 = v2;
  v48 = v3;
  __chkstk_darwin();
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s11CloseButtonVMa(0);
  v7 = *(v6 - 8);
  v49 = v6 - 8;
  v8 = v7;
  v9 = *(v7 + 64);
  __chkstk_darwin();
  v43 = sub_10010FC20(&qword_10119A1D8, &qword_100ED8DF0);
  v46 = *(v43 - 8);
  __chkstk_darwin();
  v11 = &v39 - v10;
  v45 = sub_10010FC20(&qword_10119A1E0, &qword_100ED8DF8);
  v42 = *(v45 - 8);
  __chkstk_darwin();
  v13 = &v39 - v12;
  v14 = sub_10010FC20(&qword_10119A1E8, &qword_100ED8E00);
  __chkstk_darwin();
  v16 = &v39 - v15;
  v44 = sub_10010FC20(&qword_10119A1F0, &qword_100ED8E08);
  __chkstk_darwin();
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v39 - v19;
  v40 = v1;
  sub_100633220(v1, &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s11CloseButtonVMa);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  sub_10063305C(&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, _s11CloseButtonVMa);
  v51 = v1;
  sub_10010FC20(&qword_10119A1F8, &qword_100ED8E10);
  sub_100633EE4();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100020674(&qword_10119A258, &qword_10119A1D8, &qword_100ED8DF0, &protocol conformance descriptor for Button<A>);
  sub_1006304AC(&qword_10119A260, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v22 = v43;
  v23 = v47;
  View.buttonStyle<A>(_:)();
  (*(v48 + 8))(v5, v23);
  (*(v46 + 8))(v11, v22);
  v24 = v40;
  if (*(v40 + 144))
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  (*(v42 + 32))(v16, v13, v45);
  *&v16[*(v14 + 36)] = v25;
  sub_10063411C();
  View.accessibilityHidden(_:)();
  sub_1000095E8(v16, &qword_10119A1E8, &qword_100ED8E00);
  LocalizedStringKey.init(stringLiteral:)();
  v26 = v41;
  ModifiedContent<>.accessibilityLabel(_:)();

  sub_1000095E8(v18, &qword_10119A1F0, &qword_100ED8E08);
  v27 = static Alignment.center.getter();
  v29 = v28;
  v52 = *(v24 + *(v49 + 36));
  sub_10010FC20(&qword_10119A270, &qword_100ED8E38);
  State.projectedValue.getter();
  UIScreen.Dimensions.size.getter();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v50;
  sub_10003D17C(v26, v50, &qword_10119A1F0, &qword_100ED8E08);
  result = sub_10010FC20(&qword_10119A278, &unk_100ED8E40);
  v38 = (v36 + *(result + 36));
  *v38 = v31;
  v38[1] = v33;
  v38[2] = v35;
  v38[3] = v27;
  v38[4] = v29;
  return result;
}

uint64_t sub_10062F264(uint64_t a1)
{
  sub_10010FC20(&qword_101199B50, &qword_100ED8540);
  __chkstk_darwin();
  v3 = v26 - v2;
  v4 = *(*(type metadata accessor for AppInterfaceContext.Activity(0) - 8) + 64);
  __chkstk_darwin();
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = __chkstk_darwin();
  v10 = v26 - v9;
  v11 = *(a1 + 128);
  if (v11)
  {
    v27 = v7;
    v28 = v6;
    v12 = *(a1 + 136);
    v13 = *(a1 + 120);
    v34 = *(a1 + 96);
    v29 = *(a1 + 104);
    v35 = v29;
    v36 = v13;
    v37 = v11;
    v38 = v12;
    v30 = *(a1 + *(_s11CloseButtonVMa(0) + 28));
    v14 = v29;

    sub_10010FC20(&qword_10119A270, &qword_100ED8E38);
    State.wrappedValue.getter();
    v15 = v33;
    if (!v33)
    {
LABEL_10:

      goto LABEL_15;
    }

    *&v29 = v14;
    v16 = [v33 delegate];

    if (v16)
    {
      v33 = v16;
      sub_10010FC20(&unk_101184050, &unk_100EBFA30);
      sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
      if (swift_dynamicCast())
      {
        if (*(&v31 + 1))
        {
          v17 = *(*sub_10000954C(&v30, *(&v31 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

          sub_10000959C(&v30);
          if (v17)
          {
            v26[1] = v17;
            v26[0] = sub_10062F784();
            *v10 = v26[0];
            v10[8] = 1;
            *(v10 + 2) = &_swiftEmptySetSingleton;
            swift_storeEnumTagMultiPayload();
            v18 = v28;
            sub_100633220(v10, v28, type metadata accessor for AppInterfaceContext.Activity);
            sub_100633220(v18, v5, type metadata accessor for AppInterfaceContext.Activity);
            v19 = (*(v27 + 80) + 32) & ~*(v27 + 80);
            v20 = swift_allocObject();
            *(v20 + 16) = 0;
            *(v20 + 24) = 0;
            sub_10063305C(v5, v20 + v19, type metadata accessor for AppInterfaceContext.Activity);
            v21 = v26[0];
            sub_100706900(v18, sub_100115C18, v20);

            sub_1006334B4(v18, type metadata accessor for AppInterfaceContext.Activity);
            sub_1006334B4(v10, type metadata accessor for AppInterfaceContext.Activity);

            goto LABEL_15;
          }

          goto LABEL_10;
        }
      }

      else
      {
        v32 = 0;
        v30 = 0u;
        v31 = 0u;
      }
    }

    else
    {

      v32 = 0;
      v30 = 0u;
      v31 = 0u;
    }

    sub_1000095E8(&v30, &unk_101184EA0, &unk_100EBFA20);
  }

  else
  {
    v22 = *(a1 + 80);
    if (v22)
    {
      v22(v8);
    }
  }

LABEL_15:
  v23 = _s16ActionButtonViewV5ModelVMa(0);
  sub_1000089F8(a1 + *(v23 + 52), v3, &qword_101199B50, &qword_100ED8540);
  v24 = _s12ClickMetricsVMa(0);
  if ((*(*(v24 - 8) + 48))(v3, 1, v24) == 1)
  {
    return sub_1000095E8(v3, &qword_101199B50, &qword_100ED8540);
  }

  sub_10062E408();
  return sub_1006334B4(v3, _s12ClickMetricsVMa);
}

id sub_10062F784()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v15 = *v0;
  if (*(&v15 + 1))
  {
    v1 = String._bridgeToObjectiveC()();
  }

  else
  {
    v1 = 0;
  }

  v14 = v0[1];
  if (*(&v14 + 1))
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  v5 = objc_opt_self();
  v6 = [v5 actionWithTitle:v4 style:1 handler:0];

  [v3 addAction:v6];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v7 = swift_allocObject();
  v8 = v0[1];
  v7[1] = *v0;
  v7[2] = v8;
  v7[3] = v0[2];
  sub_1000089F8(&v15, aBlock, &qword_1011815E0, &qword_100EBD050);
  sub_1000089F8(&v14, aBlock, &qword_1011815E0, &qword_100EBD050);

  v9 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100118E6C;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  aBlock[3] = &unk_1010B8248;
  v10 = _Block_copy(aBlock);

  v11 = [v5 actionWithTitle:v9 style:2 handler:v10];
  _Block_release(v10);

  [v3 addAction:v11];
  return v3;
}

uint64_t sub_10062FAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_10010FC20(&qword_10119A280, &qword_100EC11C0);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin();
  v5 = &v27 - v4;
  v28 = sub_10010FC20(&unk_10119A220, &unk_100ED8E20);
  __chkstk_darwin();
  v7 = &v27 - v6;
  v31 = sub_10010FC20(&qword_10119A210, &qword_100ED8E18);
  __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = Image.init(systemName:)();
  v11 = static Font.callout.getter();
  KeyPath = swift_getKeyPath();
  *&v35 = v10;
  *(&v35 + 1) = KeyPath;
  *&v36 = v11;
  v13 = *(_s11CloseButtonVMa(0) + 20);
  v32 = a1;
  v33 = v9;
  v14 = *(a1 + v13);
  if (v14)
  {
    static Font.Weight.semibold.getter();
  }

  else
  {
    static Font.Weight.bold.getter();
  }

  sub_10010FC20(&unk_1011A1100, &unk_100ED3F40);
  sub_100238768();
  View.fontWeight(_:)();

  if (v14)
  {
    v15 = static HierarchicalShapeStyle.tertiary.getter();
  }

  else
  {
    v15 = static HierarchicalShapeStyle.secondary.getter();
  }

  v16 = v15;
  (*(v29 + 32))(v7, v5, v30);
  *&v7[*(v28 + 36)] = v16;
  sub_10010FC20(&qword_10119A070, "@R\n");
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = v33;
  sub_10003D17C(v7, v33, &unk_10119A220, &unk_100ED8E20);
  v18 = (v17 + *(v31 + 36));
  v19 = v36;
  *v18 = v35;
  v18[1] = v19;
  v18[2] = v37;
  if (v14)
  {
    v20 = static Color.clear.getter();
  }

  else
  {
    v21 = [objc_opt_self() quaternarySystemFillColor];
    v20 = Color.init(_:)();
  }

  v22 = v20;
  v23 = v17;
  v24 = v34;
  sub_10003D17C(v23, v34, &qword_10119A210, &qword_100ED8E18);
  result = sub_10010FC20(&qword_10119A1F8, &qword_100ED8E10);
  v26 = v24 + *(result + 36);
  *v26 = v22;
  *(v26 + 8) = 256;
  return result;
}

void sub_10062FE88(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    Hasher._combine(_:)(0);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int sub_10062FF40(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  Hasher.init(_seed:)();
  if (!v2)
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10062FFE8(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (!v3)
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  v9 = *a1 == *a2 && v3 == v6;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  result = (v5 | v8) == 0;
  if (v5)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    if (v4 == v7 && v5 == v8)
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

double sub_1006300B0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v9 = &v15 - v8;
  MetricsEvent.Click.ActionType.rawValue.getter(*v2);
  String.hash(into:)();

  v10 = _s12ClickMetricsVMa(0);
  sub_1000089F8(&v2[v10[5]], v9, &qword_101183A20, &unk_100EBCF80);
  if ((*(v5 + 48))(v9, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v9, v4);
    Hasher._combine(_:)(1u);
    sub_1006304AC(&qword_10118E048, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  String.hash(into:)();
  v11 = &v2[v10[7]];
  v12 = v11[1];
  if (v12 == 12)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v13 = *v11;
    Hasher._combine(_:)(1u);
    MetricsEvent.Click.ActionContext.hash(into:)(a1, v13, v12);
  }

  MetricsEvent.TargetType.rawValue.getter(v2[v10[8]]);
  String.hash(into:)();

  return result;
}

Swift::Int sub_100630370(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1006303D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1006304AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1006304F8()
{
  result = qword_101199D00;
  if (!qword_101199D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199D00);
  }

  return result;
}

uint64_t sub_100630710(uint64_t a1)
{
  result = static HierarchicalShapeStyle.primary.getter();
  dword_101199B08 = result;
  return result;
}

uint64_t sub_100630730(uint64_t a1)
{
  result = static HierarchicalShapeStyle.secondary.getter();
  dword_101199B0C = result;
  return result;
}

uint64_t sub_100630788(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(_:)();
  *a3 = result;
  return result;
}

double sub_1006307D0()
{
  qword_101199B20 = *Color.MusicTint.normal.unsafeMutableAddressor();

  return result;
}

uint64_t sub_100630804(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v6 = sub_10010FC20(&qword_10119A388, &qword_100ED8F70);
  __chkstk_darwin();
  v8 = &v18 - v7;
  v9 = sub_10010FC20(&qword_10119A390, &qword_100ED8F78);
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  *&v8[*(sub_10010FC20(&qword_10119A398, &qword_100ED8F80) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v11 = &v8[*(sub_10010FC20(&qword_10119A3A0, &qword_100ED8F88) + 36)];
  *v11 = KeyPath;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = swift_getKeyPath();
  v13 = &v8[*(sub_10010FC20(&qword_10119A3A8, &qword_100ED8F90) + 36)];
  *v13 = v12;
  v13[8] = 1;
  *&v8[*(sub_10010FC20(&qword_10119A3B0, &qword_100ED8F98) + 36)] = a2;
  v14 = static Font.subheadline.getter();
  v15 = swift_getKeyPath();
  v16 = &v8[*(v6 + 36)];
  *v16 = v15;
  v16[1] = v14;
  sub_1006347C8();
  View.fontWeight(_:)();
  return sub_1000095E8(v8, &qword_10119A388, &qword_100ED8F70);
}

uint64_t sub_100630A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_10119A358, &qword_100ED8F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  *(a2 + *(sub_10010FC20(&qword_10119A360, &qword_100ED8F48) + 36)) = 256;
  KeyPath = swift_getKeyPath();
  v6 = a2 + *(sub_10010FC20(&qword_10119A368, &qword_100ED8F50) + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = swift_getKeyPath();
  v8 = a2 + *(sub_10010FC20(&qword_10119A370, &qword_100ED8F58) + 36);
  *v8 = v7;
  *(v8 + 8) = 1;
  LODWORD(v7) = static HierarchicalShapeStyle.secondary.getter();
  *(a2 + *(sub_10010FC20(&qword_10119A378, &qword_100ED8F60) + 36)) = v7;
  v9 = static Font.subheadline.getter();
  v10 = swift_getKeyPath();
  result = sub_10010FC20(&qword_10119A380, &qword_100ED8F68);
  v12 = (a2 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

uint64_t sub_100630C14(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10119A418, &qword_100ED8FD0);
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = sub_10010FC20(&qword_10119A420, &qword_100ED8FD8);
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  *&v4[*(sub_10010FC20(&qword_10119A428, &qword_100ED8FE0) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v7 = &v4[*(sub_10010FC20(&qword_10119A430, &qword_100ED8FE8) + 36)];
  *v7 = KeyPath;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = swift_getKeyPath();
  v9 = &v4[*(sub_10010FC20(&qword_10119A438, &qword_100ED8FF0) + 36)];
  *v9 = v8;
  v9[8] = 1;
  LODWORD(v8) = static HierarchicalShapeStyle.primary.getter();
  *&v4[*(sub_10010FC20(&qword_10119A440, &qword_100ED8FF8) + 36)] = v8;
  v10 = static Font.subheadline.getter();
  v11 = swift_getKeyPath();
  v12 = &v4[*(v2 + 36)];
  *v12 = v11;
  v12[1] = v10;
  static Font.Weight.semibold.getter();
  sub_100634B60();
  View.fontWeight(_:)();
  return sub_1000095E8(v4, &qword_10119A418, &qword_100ED8FD0);
}

uint64_t sub_100630E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_10119A3E8, &qword_100ED8FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  *(a2 + *(sub_10010FC20(&qword_10119A3F0, &qword_100ED8FA8) + 36)) = 256;
  KeyPath = swift_getKeyPath();
  v6 = a2 + *(sub_10010FC20(&qword_10119A3F8, &qword_100ED8FB0) + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = swift_getKeyPath();
  v8 = a2 + *(sub_10010FC20(&qword_10119A400, &qword_100ED8FB8) + 36);
  *v8 = v7;
  *(v8 + 8) = 1;
  LODWORD(v7) = static HierarchicalShapeStyle.secondary.getter();
  *(a2 + *(sub_10010FC20(&qword_10119A408, &qword_100ED8FC0) + 36)) = v7;
  v9 = static Font.subheadline.getter();
  v10 = swift_getKeyPath();
  result = sub_10010FC20(&qword_10119A410, &qword_100ED8FC8);
  v12 = (a2 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

uint64_t sub_100630F60(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10119A288, &qword_100ED8E88);
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = sub_10010FC20(&qword_10119A290, &qword_100ED8E90);
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  *&v4[*(sub_10010FC20(&qword_10119A298, &qword_100ED8E98) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v7 = &v4[*(sub_10010FC20(&qword_10119A2A0, &qword_100ED8ED0) + 36)];
  *v7 = KeyPath;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = swift_getKeyPath();
  v9 = &v4[*(sub_10010FC20(&qword_10119A2A8, &qword_100ED8F08) + 36)];
  *v9 = v8;
  v9[8] = 1;
  v10 = static Font.subheadline.getter();
  v11 = swift_getKeyPath();
  v12 = &v4[*(v2 + 36)];
  *v12 = v11;
  v12[1] = v10;
  static Font.Weight.semibold.getter();
  sub_100634268();
  View.fontWeight(_:)();
  return sub_1000095E8(v4, &qword_10119A288, &qword_100ED8E88);
}

uint64_t sub_10063112C(uint64_t a1, double a2)
{
  v2 = static Alignment.leading.getter();
  v4 = v3;
  sub_100631308(&v34);
  v29 = v42;
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v33[8] = v42;
  v33[9] = v43;
  v33[10] = v44;
  v33[11] = v45;
  v33[4] = v38;
  v33[5] = v39;
  v33[6] = v40;
  v33[7] = v41;
  v33[0] = v34;
  v33[1] = v35;
  v33[2] = v36;
  v33[3] = v37;
  sub_1000089F8(&v21, &v8, &qword_10119A1B0, &qword_100ED8DA0);
  sub_1000095E8(v33, &qword_10119A1B0, &qword_100ED8DA0);
  v17 = v29;
  v18 = v30;
  v19 = v31;
  v20 = v32;
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v16 = v28;
  v9 = v21;
  v10 = v22;
  v11 = v23;
  v12 = v24;
  *&v8 = v2;
  *(&v8 + 1) = v4;
  v5 = sub_10010FC20(&qword_10119A1B8, &qword_100ED8DA8);
  v6 = sub_100020674(&qword_10119A1C0, &qword_10119A1B8, &qword_100ED8DA8, &protocol conformance descriptor for ZStack<A>);
  View.corner(_:)(0, 0, 2, v5, v6);
  v44 = v18;
  v45 = v19;
  v46 = v20;
  v40 = v14;
  v41 = v15;
  v42 = v16;
  v43 = v17;
  v36 = v10;
  v37 = v11;
  v38 = v12;
  v39 = v13;
  v34 = v8;
  v35 = v9;
  return sub_1000095E8(&v34, &qword_10119A1B8, &qword_100ED8DA8);
}

uint64_t sub_100631308@<X0>(_OWORD *a1@<X8>)
{
  if (qword_10117FA10 != -1)
  {
    swift_once();
  }

  v3 = qword_101199B18;
  KeyPath = swift_getKeyPath();

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  if (qword_10117FA18 != -1)
  {
    swift_once();
  }

  v5 = qword_101199B20;
  v6 = swift_getKeyPath();

  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v20[0] = KeyPath;
  *(&v20[0] + 1) = v3;
  v20[1] = v13;
  v20[2] = v14;
  v20[5] = v17;
  v20[6] = v18;
  v20[7] = v19;
  v20[3] = v15;
  v20[4] = v16;
  v9 = v20[0];
  *&v21[0] = v6;
  *(&v21[0] + 1) = v5;
  v21[2] = v11;
  v21[3] = v12;
  v21[1] = v10;
  v7 = v21[0];
  a1[10] = v11;
  a1[11] = v12;
  a1[8] = v7;
  a1[9] = v10;
  a1[2] = v14;
  a1[3] = v15;
  *a1 = v9;
  a1[1] = v13;
  a1[6] = v18;
  a1[7] = v19;
  a1[4] = v16;
  a1[5] = v17;
  v22[0] = v6;
  v22[1] = v5;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  sub_1000089F8(v20, v26, &qword_10119A1C8, &qword_100ED8DE0);
  sub_1000089F8(v21, v26, &qword_10119A1D0, &qword_100ED8DE8);
  sub_1000095E8(v22, &qword_10119A1D0, &qword_100ED8DE8);
  v26[0] = KeyPath;
  v26[1] = v3;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  return sub_1000095E8(v26, &qword_10119A1C8, &qword_100ED8DE0);
}

double sub_100631594@<D0>(uint64_t a1@<X8>)
{
  v2 = COERCE_DOUBLE(ProgressViewStyleConfiguration.fractionCompleted.getter());
  if (v3)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = sub_100633E74;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  result = *&v11;
  *(a1 + 48) = v11;
  return result;
}

void sub_10063166C(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v19 = *(v3 - 8);
  __chkstk_darwin();
  v18 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v6 = &v18 - v5;
  v7 = _s12ClickMetricsVMa(0);
  v8 = *(v7 - 1);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101199B50, &qword_100ED8540);
  __chkstk_darwin();
  v12 = &v18 - v11;
  sub_1000089F8(v1, &v18 - v11, &qword_101199B50, &qword_100ED8540);
  if ((*(v8 + 48))(v12, 1, v7) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_10063305C(v12, v10, _s12ClickMetricsVMa);
    Hasher._combine(_:)(1u);
    MetricsEvent.Click.ActionType.rawValue.getter(*v10);
    String.hash(into:)();

    sub_1000089F8(&v10[v7[5]], v6, &qword_101183A20, &unk_100EBCF80);
    v13 = v19;
    if ((*(v19 + 48))(v6, 1, v3) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v14 = v18;
      (*(v13 + 32))(v18, v6, v3);
      Hasher._combine(_:)(1u);
      sub_1006304AC(&qword_10118E048, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      dispatch thunk of Hashable.hash(into:)();
      (*(v13 + 8))(v14, v3);
    }

    String.hash(into:)();
    v15 = &v10[v7[7]];
    v16 = v15[1];
    if (v16 == 12)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v17 = *v15;
      Hasher._combine(_:)(1u);
      MetricsEvent.Click.ActionContext.hash(into:)(a1, v17, v16);
    }

    MetricsEvent.TargetType.rawValue.getter(v10[v7[8]]);
    String.hash(into:)();

    sub_1006334B4(v10, _s12ClickMetricsVMa);
  }
}

BOOL sub_100631A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (v10)
    {
      if (*(a1 + 16) == *(a2 + 16) && v9 == v10)
      {
        return *(a1 + 32) == *(a2 + 32);
      }

      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if (v14)
      {
        return *(a1 + 32) == *(a2 + 32);
      }
    }
  }

  else if (!v10)
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return 0;
}

BOOL sub_100631B4C(uint64_t a1, uint64_t a2)
{
  v4 = _s12ClickMetricsVMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v85[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&qword_101199B50, &qword_100ED8540);
  __chkstk_darwin();
  v9 = &v85[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v85[-v10];
  sub_10010FC20(&qword_101199D08, &qword_100ED87B8);
  __chkstk_darwin();
  v13 = &v85[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v16 = &v85[-v15];
  v17 = *(a1 + 8);
  v18 = *(a2 + 8);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (*a1 != *a2 || v17 != v18)
    {
      v19 = v14;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v21 = *(a1 + 24);
  v22 = *(a2 + 24);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v21 != v22)
    {
      v23 = v14;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v23;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v25 = *(a1 + 40);
  v26 = *(a2 + 40);
  if (v25)
  {
    if (!v26)
    {
      return 0;
    }

    if (*(a1 + 32) != *(a2 + 32) || v25 != v26)
    {
      v27 = v14;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  v29 = *(a1 + 56);
  v30 = *(a2 + 56);
  if (v29)
  {
    if (!v30)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || v29 != v30)
    {
      v31 = v14;
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v31;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_29:
    v33 = *(a1 + 96);
    v34 = *(a1 + 104);
    v35 = *(a1 + 112);
    v36 = *(a1 + 120);
    v38 = *(a1 + 128);
    v37 = *(a1 + 136);
    v40 = *(a2 + 96);
    v39 = *(a2 + 104);
    v41 = *(a2 + 112);
    v42 = *(a2 + 120);
    v44 = *(a2 + 128);
    v43 = *(a2 + 136);
    if (v38)
    {
      if (v44)
      {
        v96 = *(a1 + 136);
        v97 = v35;
        v98 = v36;
        if (v34)
        {
          if (!v39)
          {
            v47 = v34;
            v50 = v35;
            v48 = v38;
            v49 = v33;
            sub_10037292C(v40, 0, v41, v42, v44, v43);
            v51 = v98;
            v52 = v96;
            sub_10037292C(v49, v47, v50, v98, v48, v96);

            goto LABEL_51;
          }

          if (v33 != v40 || v34 != v39)
          {
            v92 = v14;
            v95 = v34;
            v88 = v41;
            v91 = v39;
            v89 = v42;
            v93 = v33;
            v94 = v38;
            v90 = v43;
            v87 = v40;
            v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v40 = v87;
            v41 = v88;
            v42 = v89;
            v43 = v90;
            v39 = v91;
            v38 = v94;
            v34 = v95;
            v46 = v45;
            v14 = v92;
            v33 = v93;
            if ((v46 & 1) == 0)
            {
              v47 = v95;
              v48 = v94;
              v49 = v93;
              sub_10037292C(v87, v91, v88, v89, v44, v90);
              v50 = v97;
              v51 = v98;
              v52 = v96;
              sub_10037292C(v49, v47, v97, v98, v48, v96);

LABEL_51:

              v65 = v49;
              v66 = v47;
              v67 = v50;
              v68 = v51;
              goto LABEL_52;
            }
          }
        }

        else if (v39)
        {
          v48 = v38;
          v62 = v33;
          sub_10037292C(v40, v39, v41, v42, v44, v43);
          v63 = v97;
          v64 = v98;
          v52 = v96;
          sub_10037292C(v62, 0, v97, v98, v48, v96);

          v65 = v62;
          v66 = 0;
          v67 = v63;
          v68 = v64;
          goto LABEL_52;
        }

        if (v98)
        {
          if (!v42)
          {
            v47 = v34;
            v51 = v98;
            v48 = v38;
            v49 = v33;
            sub_10037292C(v40, v39, v41, 0, v44, v43);
            v52 = v96;
            v50 = v97;
            sub_10037292C(v49, v47, v97, v51, v48, v96);

            goto LABEL_51;
          }

          v94 = v38;
          v95 = v34;
          v92 = v14;
          v93 = v33;
          v90 = v43;
          v91 = v39;
          v89 = v42;
          if (v97 != v41 || v98 != v42)
          {
            v88 = v41;
            v87 = v40;
            v86 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_10037292C(v87, v91, v88, v89, v44, v90);
            sub_10037292C(v93, v95, v97, v98, v94, v96);

            sub_10063265C(v93, v95, v97, v98, v94, v96);
            v14 = v92;
            if ((v86 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_57;
          }

          sub_10037292C(v40, v39, v97, v98, v44, v43);
          v69 = v96;
          sub_10037292C(v93, v95, v97, v98, v94, v96);

          goto LABEL_56;
        }

        v94 = v38;
        v95 = v34;
        v93 = v33;
        if (!v42)
        {
          v91 = v39;
          v92 = v14;
          v90 = v43;
          sub_10037292C(v40, v39, v41, 0, v44, v43);
          v69 = v96;
          sub_10037292C(v93, v95, v97, 0, v94, v96);

          v98 = 0;
LABEL_56:

          sub_10063265C(v93, v95, v97, v98, v94, v69);
          v14 = v92;
          goto LABEL_57;
        }

        sub_10037292C(v40, v39, v41, v42, v44, v43);
        v70 = v93;
        v48 = v94;
        v71 = v95;
        v52 = v96;
        v72 = v97;
        sub_10037292C(v93, v95, v97, 0, v94, v96);

        v65 = v70;
        v66 = v71;
        v67 = v72;
        v68 = 0;
LABEL_52:
        sub_10063265C(v65, v66, v67, v68, v48, v52);
        return 0;
      }
    }

    else if (!v44)
    {
LABEL_57:
      if (*(a1 + 144) != *(a2 + 144))
      {
        return 0;
      }

      v74 = v14;
      v75 = _s16ActionButtonViewV5ModelVMa(0);
      v76 = *(v75 + 48);
      v97 = v75;
      v98 = v76;
      v92 = v74;
      v77 = *(v74 + 48);
      sub_1000089F8(a1 + v76, v16, &qword_101199B50, &qword_100ED8540);
      v78 = a2 + v98;
      v98 = v77;
      sub_1000089F8(v78, &v16[v77], &qword_101199B50, &qword_100ED8540);
      v79 = *(v5 + 48);
      if (v79(v16, 1, v4) == 1)
      {
        if (v79(&v16[v98], 1, v4) == 1)
        {
          v96 = v79;
          sub_1000095E8(v16, &qword_101199B50, &qword_100ED8540);
LABEL_67:
          v80 = *(v97 + 52);
          v81 = a1 + v80;
          v82 = *(v92 + 48);
          sub_1000089F8(v81, v13, &qword_101199B50, &qword_100ED8540);
          sub_1000089F8(a2 + v80, &v13[v82], &qword_101199B50, &qword_100ED8540);
          v83 = v96;
          if (v96(v13, 1, v4) == 1)
          {
            if (v83(&v13[v82], 1, v4) == 1)
            {
              sub_1000095E8(v13, &qword_101199B50, &qword_100ED8540);
              return 1;
            }
          }

          else
          {
            sub_1000089F8(v13, v9, &qword_101199B50, &qword_100ED8540);
            if (v83(&v13[v82], 1, v4) != 1)
            {
              sub_10063305C(&v13[v82], v7, _s12ClickMetricsVMa);
              v84 = sub_1006326AC(v9, v7);
              sub_1006334B4(v7, _s12ClickMetricsVMa);
              sub_1006334B4(v9, _s12ClickMetricsVMa);
              sub_1000095E8(v13, &qword_101199B50, &qword_100ED8540);
              return (v84 & 1) != 0;
            }

            sub_1006334B4(v9, _s12ClickMetricsVMa);
          }

          v59 = &qword_101199D08;
          v60 = &qword_100ED87B8;
          v61 = v13;
          goto LABEL_39;
        }
      }

      else
      {
        sub_1000089F8(v16, v11, &qword_101199B50, &qword_100ED8540);
        if (v79(&v16[v98], 1, v4) != 1)
        {
          v96 = v79;
          sub_10063305C(&v16[v98], v7, _s12ClickMetricsVMa);
          LODWORD(v98) = sub_1006326AC(v11, v7);
          sub_1006334B4(v7, _s12ClickMetricsVMa);
          sub_1006334B4(v11, _s12ClickMetricsVMa);
          sub_1000095E8(v16, &qword_101199B50, &qword_100ED8540);
          if ((v98 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_67;
        }

        sub_1006334B4(v11, _s12ClickMetricsVMa);
      }

      v59 = &qword_101199D08;
      v60 = &qword_100ED87B8;
      v61 = v16;
LABEL_39:
      sub_1000095E8(v61, v59, v60);
      return 0;
    }

    v99[0] = *(a1 + 96);
    v99[1] = v34;
    v99[2] = v35;
    v99[3] = v36;
    v99[4] = v38;
    v99[5] = v37;
    v99[6] = v40;
    v99[7] = v39;
    v99[8] = v41;
    v99[9] = v42;
    v99[10] = v44;
    v99[11] = v43;
    v53 = v34;
    v54 = v35;
    v55 = v36;
    v56 = v38;
    v57 = v37;
    v58 = v33;
    sub_10037292C(v40, v39, v41, v42, v44, v43);
    sub_10037292C(v58, v53, v54, v55, v56, v57);
    v59 = &unk_101199D10;
    v60 = &unk_100ED87C0;
    v61 = v99;
    goto LABEL_39;
  }

  if (!v30)
  {
    goto LABEL_29;
  }

  return 0;
}

double sub_10063265C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1006326AC(char *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v9 = &v42 - v8;
  v10 = sub_10010FC20(&qword_10118CA90, &unk_100ECA330);
  __chkstk_darwin();
  v12 = &v42 - v11;
  v43 = a1;
  v13 = *a1;
  LOBYTE(a1) = *a2;
  v14 = MetricsEvent.Click.ActionType.rawValue.getter(v13);
  v16 = v15;
  if (v14 == MetricsEvent.Click.ActionType.rawValue.getter(a1) && v16 == v17)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v19 = a2;
  v42 = _s12ClickMetricsVMa(0);
  v20 = *(v42 + 20);
  v21 = *(v10 + 48);
  sub_1000089F8(&v43[v20], v12, &qword_101183A20, &unk_100EBCF80);
  v22 = &v19[v20];
  v23 = v19;
  sub_1000089F8(v22, &v12[v21], &qword_101183A20, &unk_100EBCF80);
  v24 = *(v5 + 48);
  if (v24(v12, 1, v4) == 1)
  {
    if (v24(&v12[v21], 1, v4) == 1)
    {
      sub_1000095E8(v12, &qword_101183A20, &unk_100EBCF80);
      goto LABEL_14;
    }

LABEL_10:
    sub_1000095E8(v12, &qword_10118CA90, &unk_100ECA330);
    goto LABEL_11;
  }

  sub_1000089F8(v12, v9, &qword_101183A20, &unk_100EBCF80);
  if (v24(&v12[v21], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
    goto LABEL_10;
  }

  (*(v5 + 32))(v7, &v12[v21], v4);
  sub_1006304AC(&qword_101199D20, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v5 + 8);
  v28(v7, v4);
  v28(v9, v4);
  v23 = v19;
  sub_1000095E8(v12, &qword_101183A20, &unk_100EBCF80);
  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v29 = v42;
  v30 = *(v42 + 24);
  v31 = &v43[v30];
  v32 = *&v43[v30 + 8];
  v33 = &v23[v30];
  if ((*v31 != *v33 || v32 != *(v33 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_11;
  }

  v34 = *(v29 + 28);
  v35 = *&v23[v34 + 8];
  if (*&v43[v34 + 8] == 12)
  {
    if (v35 == 12)
    {
      goto LABEL_22;
    }

LABEL_11:
    v25 = 0;
    return v25 & 1;
  }

  if (v35 == 12 || (static MetricsEvent.Click.ActionContext.__derived_enum_equals(_:_:)(*&v43[v34]) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v36 = *(v29 + 32);
  v37 = v23[v36];
  v38 = MetricsEvent.TargetType.rawValue.getter(v43[v36]);
  v40 = v39;
  if (v38 == MetricsEvent.TargetType.rawValue.getter(v37) && v40 == v41)
  {

    v25 = 1;
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v25 & 1;
}

Swift::Int sub_100632B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  if (!a2)
  {
    Hasher._combine(_:)(0);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100632C64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_100632CC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100632D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 2)
    {
      return v11 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100632E24(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100632F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100632FB0()
{
  result = qword_101199E50;
  if (!qword_101199E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199E50);
  }

  return result;
}

uint64_t sub_10063305C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1006330C4()
{
  result = qword_101199E90;
  if (!qword_101199E90)
  {
    sub_1001109D0(&qword_101199E88, &unk_100ED8970);
    sub_1006304AC(&qword_101196818, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    sub_100020674(&unk_101199EA0, &qword_1011879C8, &qword_100EE1C80, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199E90);
  }

  return result;
}

unint64_t sub_1006331AC()
{
  result = qword_101199EF0;
  if (!qword_101199EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199EF0);
  }

  return result;
}

uint64_t sub_100633220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100633288()
{
  result = qword_101199F60;
  if (!qword_101199F60)
  {
    sub_1001109D0(&qword_101199F40, &qword_100ED8A00);
    sub_1006304AC(&qword_101199F68, _s11CloseButtonVMa, &unk_100ED8D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199F60);
  }

  return result;
}

uint64_t sub_100633344()
{
  v1 = *(_s16ActionButtonViewVMa(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10062E2CC(v2, v3, v4);
}

unint64_t sub_1006333B0()
{
  result = qword_101199FB8;
  if (!qword_101199FB8)
  {
    sub_1001109D0(&qword_101199FB0, &qword_100ED8A50);
    sub_10063343C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199FB8);
  }

  return result;
}

unint64_t sub_10063343C()
{
  result = qword_101199FC0;
  if (!qword_101199FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199FC0);
  }

  return result;
}

double sub_100633490(uint64_t a1, unint64_t a2)
{
  if (a2 != 12)
  {
    return sub_1006334A0(a1, a2);
  }

  return result;
}

double sub_1006334A0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t sub_1006334B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for Specs.InProgressView.TitleModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Specs.InProgressView.TitleModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

void sub_100633640(uint64_t a1)
{
  _s16ActionButtonViewV5ModelVMa(319);
  if (v1 <= 0x3F)
  {
    sub_100402A50(319);
    if (v2 <= 0x3F)
    {
      sub_10003093C(319, &unk_10119A0E8, &unk_101199F50, &qword_100ED8A10, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100633710()
{
  result = qword_10119A120;
  if (!qword_10119A120)
  {
    sub_1001109D0(&qword_101199E78, &qword_100ED8960);
    sub_10063379C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A120);
  }

  return result;
}

unint64_t sub_10063379C()
{
  result = qword_10119A128;
  if (!qword_10119A128)
  {
    sub_1001109D0(&qword_101199E68, &qword_100ED8950);
    sub_100633854();
    sub_100020674(&qword_10119A148, &qword_101199E70, &qword_100ED8958, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A128);
  }

  return result;
}

unint64_t sub_100633854()
{
  result = qword_10119A130;
  if (!qword_10119A130)
  {
    sub_1001109D0(&qword_101199E60, &qword_100ED8948);
    sub_1006338E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A130);
  }

  return result;
}

unint64_t sub_1006338E0()
{
  result = qword_10119A138;
  if (!qword_10119A138)
  {
    sub_1001109D0(&qword_101199E58, &qword_100ED8940);
    sub_1006304AC(&qword_10119A140, _s11ContentViewVMa, &unk_100ED8C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A138);
  }

  return result;
}

unint64_t sub_10063399C()
{
  result = qword_10119A150;
  if (!qword_10119A150)
  {
    sub_1001109D0(&qword_101199EC8, &qword_100ED8998);
    sub_100633A28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A150);
  }

  return result;
}

unint64_t sub_100633A28()
{
  result = qword_10119A158;
  if (!qword_10119A158)
  {
    sub_1001109D0(&qword_101199EB8, &qword_100ED8988);
    sub_100020674(&qword_10119A160, &qword_101199EB0, &qword_100ED8980, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A158);
  }

  return result;
}

unint64_t sub_100633AE0()
{
  result = qword_10119A168;
  if (!qword_10119A168)
  {
    sub_1001109D0(&qword_101199F28, &qword_100ED89E8);
    sub_100633B98();
    sub_100020674(&qword_10119A1A8, &qword_101199F30, &qword_100ED89F0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A168);
  }

  return result;
}

unint64_t sub_100633B98()
{
  result = qword_10119A170;
  if (!qword_10119A170)
  {
    sub_1001109D0(&qword_101199F18, &qword_100ED89D8);
    sub_100633C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A170);
  }

  return result;
}

unint64_t sub_100633C24()
{
  result = qword_10119A178;
  if (!qword_10119A178)
  {
    sub_1001109D0(&qword_101199F10, &qword_100ED89D0);
    sub_100633CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A178);
  }

  return result;
}

unint64_t sub_100633CB0()
{
  result = qword_10119A180;
  if (!qword_10119A180)
  {
    sub_1001109D0(&qword_101199F08, &qword_100ED89C8);
    sub_100020674(&qword_10119A188, &unk_10119A190, qword_100ED8B28, &protocol conformance descriptor for VStack<A>);
    sub_100020674(&qword_101185858, &qword_10119A1A0, &qword_100EC1180, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A180);
  }

  return result;
}

uint64_t sub_100633E7C()
{
  v1 = *(_s11CloseButtonVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10062F264(v2);
}

unint64_t sub_100633EE4()
{
  result = qword_10119A200;
  if (!qword_10119A200)
  {
    sub_1001109D0(&qword_10119A1F8, &qword_100ED8E10);
    sub_100633F9C();
    sub_100020674(&qword_10119A248, &qword_10119A250, &qword_100ED8E30, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A200);
  }

  return result;
}

unint64_t sub_100633F9C()
{
  result = qword_10119A208;
  if (!qword_10119A208)
  {
    sub_1001109D0(&qword_10119A210, &qword_100ED8E18);
    sub_100634028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A208);
  }

  return result;
}

unint64_t sub_100634028()
{
  result = qword_10119A218;
  if (!qword_10119A218)
  {
    sub_1001109D0(&unk_10119A220, &unk_100ED8E20);
    sub_1001109D0(&unk_1011A1100, &unk_100ED3F40);
    sub_100238768();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_101184E40, &qword_10119A240, &qword_100EC09F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A218);
  }

  return result;
}

unint64_t sub_10063411C()
{
  result = qword_10119A268;
  if (!qword_10119A268)
  {
    sub_1001109D0(&qword_10119A1E8, &qword_100ED8E00);
    sub_1001109D0(&qword_10119A1D8, &qword_100ED8DF0);
    type metadata accessor for PlainButtonStyle();
    sub_100020674(&qword_10119A258, &qword_10119A1D8, &qword_100ED8DF0, &protocol conformance descriptor for Button<A>);
    sub_1006304AC(&qword_10119A260, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A268);
  }

  return result;
}

unint64_t sub_100634268()
{
  result = qword_10119A2B0;
  if (!qword_10119A2B0)
  {
    sub_1001109D0(&qword_10119A288, &qword_100ED8E88);
    sub_100634320();
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A2B0);
  }

  return result;
}

unint64_t sub_100634320()
{
  result = qword_10119A2B8;
  if (!qword_10119A2B8)
  {
    sub_1001109D0(&qword_10119A2A8, &qword_100ED8F08);
    sub_1006343D8();
    sub_100020674(&unk_10118A590, &qword_10119A2F0, &unk_100EC4E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A2B8);
  }

  return result;
}

unint64_t sub_1006343D8()
{
  result = qword_10119A2C0;
  if (!qword_10119A2C0)
  {
    sub_1001109D0(&qword_10119A2A0, &qword_100ED8ED0);
    sub_100634490();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0, &qword_100ED53A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A2C0);
  }

  return result;
}

unint64_t sub_100634490()
{
  result = qword_10119A2C8;
  if (!qword_10119A2C8)
  {
    sub_1001109D0(&qword_10119A298, &qword_100ED8E98);
    sub_100020674(&unk_10119A2D0, &qword_10119A290, &qword_100ED8E90, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A2C8);
  }

  return result;
}

unint64_t sub_100634548()
{
  result = qword_10119A320;
  if (!qword_10119A320)
  {
    sub_1001109D0(&unk_10119A310, &unk_100ED8F28);
    sub_1006345D4();
    sub_1006346E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A320);
  }

  return result;
}

unint64_t sub_1006345D4()
{
  result = qword_10119A328;
  if (!qword_10119A328)
  {
    sub_1001109D0(&qword_10119A330, &qword_100ED8F38);
    sub_10063468C();
    sub_100020674(&qword_101185858, &qword_10119A1A0, &qword_100EC1180, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A328);
  }

  return result;
}

unint64_t sub_10063468C()
{
  result = qword_10119A338;
  if (!qword_10119A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A338);
  }

  return result;
}

unint64_t sub_1006346E0()
{
  result = qword_10119A340;
  if (!qword_10119A340)
  {
    sub_1001109D0(&qword_10119A2F8, &qword_100ED8F10);
    sub_1006304AC(&qword_10119A348, _s16ActionButtonViewVMa, &unk_100ED87E4);
    sub_100020674(&qword_101185858, &qword_10119A1A0, &qword_100EC1180, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A340);
  }

  return result;
}

unint64_t sub_1006347C8()
{
  result = qword_10119A3B8;
  if (!qword_10119A3B8)
  {
    sub_1001109D0(&qword_10119A388, &qword_100ED8F70);
    sub_100634880();
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A3B8);
  }

  return result;
}

unint64_t sub_100634880()
{
  result = qword_10119A3C0;
  if (!qword_10119A3C0)
  {
    sub_1001109D0(&qword_10119A3B0, &qword_100ED8F98);
    sub_100634938();
    sub_100020674(&unk_101184E40, &qword_10119A240, &qword_100EC09F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A3C0);
  }

  return result;
}

unint64_t sub_100634938()
{
  result = qword_10119A3C8;
  if (!qword_10119A3C8)
  {
    sub_1001109D0(&qword_10119A3A8, &qword_100ED8F90);
    sub_1006349F0();
    sub_100020674(&unk_10118A590, &qword_10119A2F0, &unk_100EC4E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A3C8);
  }

  return result;
}

unint64_t sub_1006349F0()
{
  result = qword_10119A3D0;
  if (!qword_10119A3D0)
  {
    sub_1001109D0(&qword_10119A3A0, &qword_100ED8F88);
    sub_100634AA8();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0, &qword_100ED53A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A3D0);
  }

  return result;
}

unint64_t sub_100634AA8()
{
  result = qword_10119A3D8;
  if (!qword_10119A3D8)
  {
    sub_1001109D0(&qword_10119A398, &qword_100ED8F80);
    sub_100020674(&qword_10119A3E0, &qword_10119A390, &qword_100ED8F78, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A3D8);
  }

  return result;
}

unint64_t sub_100634B60()
{
  result = qword_10119A448;
  if (!qword_10119A448)
  {
    sub_1001109D0(&qword_10119A418, &qword_100ED8FD0);
    sub_100634C18();
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A448);
  }

  return result;
}

unint64_t sub_100634C18()
{
  result = qword_10119A450;
  if (!qword_10119A450)
  {
    sub_1001109D0(&qword_10119A440, &qword_100ED8FF8);
    sub_100634CD0();
    sub_100020674(&unk_101184E40, &qword_10119A240, &qword_100EC09F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A450);
  }

  return result;
}

unint64_t sub_100634CD0()
{
  result = qword_10119A458;
  if (!qword_10119A458)
  {
    sub_1001109D0(&qword_10119A438, &qword_100ED8FF0);
    sub_100634D88();
    sub_100020674(&unk_10118A590, &qword_10119A2F0, &unk_100EC4E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A458);
  }

  return result;
}

unint64_t sub_100634D88()
{
  result = qword_10119A460;
  if (!qword_10119A460)
  {
    sub_1001109D0(&qword_10119A430, &qword_100ED8FE8);
    sub_100634E40();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0, &qword_100ED53A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A460);
  }

  return result;
}

unint64_t sub_100634E40()
{
  result = qword_10119A468;
  if (!qword_10119A468)
  {
    sub_1001109D0(&qword_10119A428, &qword_100ED8FE0);
    sub_100020674(&qword_10119A470, &qword_10119A420, &qword_100ED8FD8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A468);
  }

  return result;
}

unint64_t sub_100634EF8()
{
  result = qword_10119A478;
  if (!qword_10119A478)
  {
    sub_1001109D0(&qword_10119A480, &qword_100ED9000);
    sub_100020674(&qword_10119A488, &qword_10119A490, &qword_100ED9008, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A478);
  }

  return result;
}

unint64_t sub_100634FB0()
{
  result = qword_10119A498;
  if (!qword_10119A498)
  {
    sub_1001109D0(&qword_10119A278, &unk_100ED8E40);
    sub_100635068();
    sub_100020674(&qword_10119A4B0, &qword_10119A4B8, &qword_100ED9010, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A498);
  }

  return result;
}

unint64_t sub_100635068()
{
  result = qword_10119A4A0;
  if (!qword_10119A4A0)
  {
    sub_1001109D0(&qword_10119A1F0, &qword_100ED8E08);
    sub_10063411C();
    sub_1006304AC(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A4A0);
  }

  return result;
}

unint64_t sub_100635124()
{
  result = qword_10119A4C0;
  if (!qword_10119A4C0)
  {
    sub_1001109D0(&qword_10119A4C8, &qword_100ED9018);
    sub_100634548();
    sub_1002D8BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A4C0);
  }

  return result;
}

unint64_t sub_1006351B0()
{
  result = qword_10119A4D0;
  if (!qword_10119A4D0)
  {
    sub_1001109D0(&qword_10119A380, &qword_100ED8F68);
    sub_100635268();
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A4D0);
  }

  return result;
}

unint64_t sub_100635268()
{
  result = qword_10119A4D8;
  if (!qword_10119A4D8)
  {
    sub_1001109D0(&qword_10119A378, &qword_100ED8F60);
    sub_100635320();
    sub_100020674(&unk_101184E40, &qword_10119A240, &qword_100EC09F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A4D8);
  }

  return result;
}

unint64_t sub_100635320()
{
  result = qword_10119A4E0;
  if (!qword_10119A4E0)
  {
    sub_1001109D0(&qword_10119A370, &qword_100ED8F58);
    sub_1006353D8();
    sub_100020674(&unk_10118A590, &qword_10119A2F0, &unk_100EC4E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A4E0);
  }

  return result;
}

unint64_t sub_1006353D8()
{
  result = qword_10119A4E8;
  if (!qword_10119A4E8)
  {
    sub_1001109D0(&qword_10119A368, &qword_100ED8F50);
    sub_100635490();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0, &qword_100ED53A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A4E8);
  }

  return result;
}

unint64_t sub_100635490()
{
  result = qword_10119A4F0;
  if (!qword_10119A4F0)
  {
    sub_1001109D0(&qword_10119A360, &qword_100ED8F48);
    sub_100020674(&qword_10119A4F8, &qword_10119A358, &qword_100ED8F40, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A4F0);
  }

  return result;
}

uint64_t sub_100635548(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  sub_1001109D0(a2, a3);
  a4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1006355AC()
{
  result = qword_10119A500;
  if (!qword_10119A500)
  {
    sub_1001109D0(&qword_10119A410, &qword_100ED8FC8);
    sub_100635664();
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A500);
  }

  return result;
}

unint64_t sub_100635664()
{
  result = qword_10119A508;
  if (!qword_10119A508)
  {
    sub_1001109D0(&qword_10119A408, &qword_100ED8FC0);
    sub_10063571C();
    sub_100020674(&unk_101184E40, &qword_10119A240, &qword_100EC09F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A508);
  }

  return result;
}

unint64_t sub_10063571C()
{
  result = qword_10119A510;
  if (!qword_10119A510)
  {
    sub_1001109D0(&qword_10119A400, &qword_100ED8FB8);
    sub_1006357D4();
    sub_100020674(&unk_10118A590, &qword_10119A2F0, &unk_100EC4E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A510);
  }

  return result;
}

unint64_t sub_1006357D4()
{
  result = qword_10119A518;
  if (!qword_10119A518)
  {
    sub_1001109D0(&qword_10119A3F8, &qword_100ED8FB0);
    sub_10063588C();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0, &qword_100ED53A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A518);
  }

  return result;
}

unint64_t sub_10063588C()
{
  result = qword_10119A520;
  if (!qword_10119A520)
  {
    sub_1001109D0(&qword_10119A3F0, &qword_100ED8FA8);
    sub_100020674(&qword_10119A528, &qword_10119A3E8, &qword_100ED8FA0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A520);
  }

  return result;
}

uint64_t sub_100635948@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Playlist.Entry.InternalItem();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.Entry.internalItem.getter();
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v4 + 96))(v6, v3);
    v8 = type metadata accessor for MusicMovie();
    (*(*(v8 - 8) + 32))(a1, v6, v8);
    v9 = &enum case for GenericMusicItem.musicMovie(_:);
  }

  else if (v7 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v4 + 96))(v6, v3);
    v10 = type metadata accessor for MusicVideo();
    (*(*(v10 - 8) + 32))(a1, v6, v10);
    v9 = &enum case for GenericMusicItem.musicVideo(_:);
  }

  else if (v7 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v4 + 96))(v6, v3);
    v11 = type metadata accessor for Song();
    (*(*(v11 - 8) + 32))(a1, v6, v11);
    v9 = &enum case for GenericMusicItem.song(_:);
  }

  else if (v7 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v4 + 96))(v6, v3);
    v12 = type metadata accessor for TVEpisode();
    (*(*(v12 - 8) + 32))(a1, v6, v12);
    v9 = &enum case for GenericMusicItem.tvEpisode(_:);
  }

  else if (v7 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v4 + 96))(v6, v3);
    v13 = type metadata accessor for UploadedAudio();
    (*(*(v13 - 8) + 32))(a1, v6, v13);
    v9 = &enum case for GenericMusicItem.uploadedAudio(_:);
  }

  else
  {
    if (v7 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
    {
      v19 = type metadata accessor for GenericMusicItem();
      (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
      return (*(v4 + 8))(v6, v3);
    }

    (*(v4 + 96))(v6, v3);
    v14 = type metadata accessor for UploadedVideo();
    (*(*(v14 - 8) + 32))(a1, v6, v14);
    v9 = &enum case for GenericMusicItem.uploadedVideo(_:);
  }

  v15 = *v9;
  v16 = type metadata accessor for GenericMusicItem();
  v17 = *(v16 - 8);
  (*(v17 + 104))(a1, v15, v16);
  return (*(v17 + 56))(a1, 0, 1, v16);
}

BOOL sub_100635DA0()
{
  sub_10010FC20(&qword_101190E70, &unk_100ECE090);
  __chkstk_darwin();
  v1 = &v8 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v3 = &v8 - v2;
  Playlist.Entry.item.getter();
  v4 = type metadata accessor for Playlist.Entry.Item();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v6 = 0;
  }

  else
  {
    sub_1000089F8(v3, v1, &qword_101190E70, &unk_100ECE090);
    v6 = (*(v5 + 88))(v1, v4) == enum case for Playlist.Entry.Item.musicVideo(_:);
    (*(v5 + 8))(v1, v4);
  }

  sub_1000095E8(v3, &qword_101190E70, &unk_100ECE090);
  return v6;
}

uint64_t sub_100635F3C()
{
  v0 = Playlist.Entry.position.getter();
  v1 = __OFADD__(v0, 1);
  result = v0 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100635F7C()
{
  if (sub_10026A6F8())
  {
    v0 = &off_10109BF78;
  }

  else
  {
    v0 = &off_10109BFA0;
  }

  return sub_100110504(v0);
}

uint64_t sub_100635FC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21[1] = a2;
  v24 = a1;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v5 = v21 - v4;
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v21 - v12;
  v14 = type metadata accessor for Playlist.Entry();
  v22 = *(v14 - 8);
  v23 = v14;
  __chkstk_darwin();
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  (*(v11 + 16))(v13, v3 + v17, v10);
  IndexPath.row.getter();
  MusicItemCollection.subscript.getter();
  (*(v11 + 8))(v13, v10);
  v18 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1000089F8(v3 + v18, v5, &unk_1011814D0, &qword_100EC12A0);
  v19 = *(v7 + 48);
  if (v19(v5, 1, v6) == 1)
  {
    (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playlist, v6);
    if (v19(v5, 1, v6) != 1)
    {
      sub_1000095E8(v5, &unk_1011814D0, &qword_100EC12A0);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  __chkstk_darwin();
  v21[-2] = v16;
  v21[-1] = v9;
  v25[3] = sub_10010FC20(&qword_10119A870, &qword_100ED92F0);
  v25[4] = sub_100020674(&qword_10119A878, &qword_10119A870, &qword_100ED92F0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(v25);
  sub_10010FC20(&qword_10119A880, &qword_100EE23F0);
  sub_100020674(&qword_10119A888, &qword_10119A880, &qword_100EE23F0, &unk_100EDE7B8);
  UIHostingConfiguration<>.init(content:)();
  UITableViewCell.contentConfiguration.setter();
  (*(v7 + 8))(v9, v6);
  return (*(v22 + 8))(v16, v23);
}

uint64_t sub_100636450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Playlist.Entry();
  v10 = __chkstk_darwin();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a1, v10);
  (*(v7 + 16))(v9, a2, v6);
  return sub_10078A730(v12, v9, a3);
}

uint64_t sub_1006365C8(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v46 = a3;
  LODWORD(v36) = a2;
  v34 = a1;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v41 = &v34 - v5;
  v42 = sub_10010FC20(&qword_101199728, &unk_100ED91C0);
  v40 = *(v42 - 8);
  __chkstk_darwin();
  v39 = &v34 - v6;
  v7 = sub_10010FC20(&qword_10119A800, &unk_100EE21E0);
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin();
  v43 = &v34 - v8;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v10 = &v34 - v9;
  v11 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v34 - v13;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  v16 = type metadata accessor for Playlist();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v4 + v15, 1, 1, v16);
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_sortingController) = 0;
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse) = 0xF000000000000007;
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_observers) = &_swiftEmptySetSingleton;
  v18 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  type metadata accessor for Playlist.Entry();
  MusicItemCollection.init(arrayLiteral:)();
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playActivityFeature) = 12;
  v37 = v17;
  v38 = v16;
  v19 = v34;
  (*(v17 + 16))(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playlist, v34, v16);
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_onlyDownloaded) = v36;
  v20 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_preferredSource;
  v21 = type metadata accessor for MusicPropertySource();
  v35 = *(v21 - 8);
  v36 = v21;
  (*(v35 + 16))(v4 + v20, v46);
  Playlist.entries.getter();
  v22 = *(v12 + 48);
  if (v22(v10, 1, v11) == 1)
  {
    MusicItemCollection.init(arrayLiteral:)();
    if (v22(v10, 1, v11) != 1)
    {
      sub_1000095E8(v10, &qword_10119A808, &unk_100ED91D0);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  swift_beginAccess();
  (*(v12 + 40))(v4 + v18, v14, v11);
  swift_endAccess();
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v23 = v19;
  v24 = v38;
  v25 = Player.state<A>(for:)(v19, v38, &protocol witness table for Playlist);
  *(v4 + 16) = v25;
  v26 = v39;
  (*(*v25 + 280))();
  sub_100027010();
  v27 = static OS_dispatch_queue.main.getter();
  v47 = v27;
  v28 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v29 = v41;
  (*(*(v28 - 8) + 56))(v41, 1, 1, v28);
  sub_100020674(&qword_101199730, &qword_101199728, &unk_100ED91C0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1006401FC(&qword_101184920, sub_100027010, &protocol conformance descriptor for OS_dispatch_queue);
  v30 = v42;
  v31 = v43;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v29, &qword_101182140, &unk_100EBD2A0);

  (*(v40 + 8))(v26, v30);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&qword_10119A810, &qword_10119A800, &unk_100EE21E0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v32 = v45;
  Publisher<>.sink(receiveValue:)();

  (*(v44 + 8))(v31, v32);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_1006377AC();
  (*(v35 + 8))(v46, v36);
  (*(v37 + 8))(v23, v24);
  return v4;
}

double sub_100636D7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v4 = sub_10028434C(v2);
      if (*(Strong + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
      {
        v5 = *(Strong + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
        ObjectType = swift_getObjectType();
        v7 = (*(v5 + 112))(ObjectType, v5);
      }

      else
      {
        v7 = 1;
      }

      [v4 setHidden:v7 & 1];

      sub_100283D74();
      [*(Strong + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];
      swift_unknownObjectRelease();
    }
  }

  return v2.n128_f64[0];
}

double sub_100636E80(uint64_t a1)
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

uint64_t sub_100636F90()
{
  v1 = v0;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v19 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v4, &unk_1011814D0, &qword_100EC12A0);
  v12 = *(v6 + 48);
  if (v12(v4, 1, v5) == 1)
  {
    v13 = *(v6 + 16);
    v13(v10, v1 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playlist, v5);
    if (v12(v4, 1, v5) != 1)
    {
      sub_1000095E8(v4, &unk_1011814D0, &qword_100EC12A0);
    }
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    v13 = *(v6 + 16);
  }

  v14 = *(v1 + 16);
  v13(v8, v10, v5);
  (*(*v14 + 224))(v8);
  if (!*(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_sortingController))
  {
    v16 = v19;
    v13(v19, v10, v5);
    (*(v6 + 56))(v16, 0, 1, v5);
    type metadata accessor for PlaylistSortingController(0);
    swift_allocObject();
    v17 = PlaylistSortingController.init(_:)(v16);
    v15.n128_f64[0] = sub_1006374BC(v17);
  }

  return (*(v6 + 8))(v10, v5, v15);
}

double sub_1006372A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse);
    if ((v4 & 0x8000000000000000) == 0)
    {

      dispatch thunk of MusicAutoupdatingResponse.update(_:)();
      sub_1004E6028(v4);
    }
  }

  return result;
}

uint64_t sub_100637330(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v10 - v7;
  (*(v5 + 8))(a1, v4, v6);
  type metadata accessor for Playlist();
  type metadata accessor for Playlist.Entry();
  MusicLibrarySectionedRequest.init()();
  MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
  if (*(a2 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_sortingController))
  {

    PlaylistSortingController.apply(to:)();
  }

  return (*(v5 + 32))(a1, v8, v4);
}

double sub_1006374BC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_sortingController;
  *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_sortingController) = a1;

  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = (v4 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];
    *v6 = sub_100640244;
    v6[1] = v5;

    sub_100020438(v7, v8);
  }

  return result;
}

uint64_t sub_10063759C(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MusicPropertySource();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_preferredSource;
  swift_beginAccess();
  v11 = *(v5 + 16);
  v11(v9, v2 + v10, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v10, a1, v4);
  swift_endAccess();
  v11(v7, v2 + v10, v4);
  sub_1006401FC(&qword_10119A868, &type metadata accessor for MusicPropertySource, &protocol conformance descriptor for MusicPropertySource);
  LOBYTE(v10) = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  if ((v10 & 1) == 0)
  {
    sub_1006377AC();
  }

  v12(a1, v4);
  return (v12)(v9, v4);
}

void sub_1006377AC()
{
  v1 = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = &v33 - v2;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v36 = &v33 - v4;
  v37 = sub_10010FC20(&qword_10119A820, &unk_100ED9240);
  v35 = *(v37 - 8);
  __chkstk_darwin();
  v34 = &v33 - v5;
  v6 = sub_10010FC20(&unk_1011A48E0, &qword_100EE4FA0);
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin();
  v38 = &v33 - v7;
  v8 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v33 - v12;
  v14 = type metadata accessor for MusicPropertySource();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_preferredSource;
  swift_beginAccess();
  (*(v15 + 16))(v17, v1 + v18, v14);
  v19 = (*(v15 + 88))(v17, v14);
  if (v19 == enum case for MusicPropertySource.catalog(_:))
  {
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
    v21 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v22 = static MainActor.shared.getter();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v21;

    sub_1001F4CB8(0, 0, v3, &unk_100ED9258, v23);
  }

  else if (v19 == enum case for MusicPropertySource.library(_:))
  {
    type metadata accessor for Playlist();
    type metadata accessor for Playlist.Entry();
    MusicLibrarySectionedRequest.init()();
    MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
    if (*(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_sortingController))
    {

      PlaylistSortingController.apply(to:)();
    }

    (*(v9 + 32))(v13, v11, v8);
    sub_100020674(&qword_10119A828, &qword_10118A3B0, &qword_100EE4B40, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v24 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v9 + 8))(v13, v8);
    v25 = *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse);
    *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse) = v24;

    sub_1004E6028(v25);
    v26 = v34;
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100027010();
    v27 = static OS_dispatch_queue.main.getter();
    v41 = v27;
    v28 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v29 = v36;
    (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
    sub_100020674(&unk_1011A48F0, &qword_10119A820, &unk_100ED9240, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1006401FC(&qword_101184920, sub_100027010, &protocol conformance descriptor for OS_dispatch_queue);
    v30 = v37;
    v31 = v38;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v29, &qword_101182140, &unk_100EBD2A0);

    (*(v35 + 8))(v26, v30);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&qword_10119A830, &unk_1011A48E0, &qword_100EE4FA0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v32 = v40;
    Publisher<>.sink(receiveValue:)();

    (*(v39 + 8))(v31, v32);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    (*(v15 + 8))(v17, v14);
  }
}

void sub_100637F7C(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v49 = &v46 - v3;
  v4 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v46 - v6;
  sub_10010FC20(&unk_101188900, &qword_100ED9260);
  __chkstk_darwin();
  v9 = &v46 - v8;
  sub_10010FC20(&unk_1011A4900, &qword_100ED9268);
  __chkstk_darwin();
  v11 = &v46 - v10;
  sub_10010FC20(&qword_10119A838, &qword_100ED9270);
  __chkstk_darwin();
  v13 = &v46 - v12;
  v14 = sub_10010FC20(&unk_1011A4910, &qword_100ED9278);
  v51 = *(v14 - 8);
  __chkstk_darwin();
  v50 = &v46 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_10:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v27 = swift_unknownObjectWeakLoadStrong();

      if (v27)
      {
        v28 = enum case for MusicPropertySource.library(_:);
        v29 = type metadata accessor for MusicPropertySource();
        (*(*(v29 - 8) + 104))(v9, v28, v29);
        v30 = _s14descr101094081C15DataSourceErrorOMa(0);
        (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
        sub_10028555C(v9);
        swift_unknownObjectRelease();
        sub_1000095E8(v9, &unk_101188900, &qword_100ED9260);
      }
    }

    return;
  }

  v17 = Strong;
  v47 = v7;
  v48 = v5;
  v18 = v4;
  sub_1000089F8(a1, v11, &unk_1011A4900, &qword_100ED9268);
  v19 = sub_10010FC20(&qword_10119A840, &qword_100ED9280);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v11, 1, v19) == 1)
  {

    sub_1000095E8(v11, &unk_1011A4900, &qword_100ED9268);
    (*(v51 + 56))(v13, 1, 1, v14);
LABEL_9:
    sub_1000095E8(v13, &qword_10119A838, &qword_100ED9270);
    goto LABEL_10;
  }

  v21 = MusicLibrarySectionedResponse.sections.getter();
  (*(v20 + 8))(v11, v19);
  if (*(v21 + 16))
  {
    v22 = v51;
    (*(v51 + 16))(v13, v21 + ((*(v51 + 80) + 32) & ~*(v51 + 80)), v14);
    v23 = 0;
    v24 = v18;
  }

  else
  {
    v23 = 1;
    v24 = v18;
    v22 = v51;
  }

  (*(v22 + 56))(v13, v23, 1, v14);
  v25 = (*(v22 + 48))(v13, 1, v14);
  v26 = v48;
  if (v25 == 1)
  {

    goto LABEL_9;
  }

  v31 = v50;
  (*(v22 + 32))(v50, v13, v14);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = _s14descr101094081C15DataSourceErrorOMa(0);
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
    sub_10028555C(v9);
    swift_unknownObjectRelease();
    sub_1000095E8(v9, &unk_101188900, &qword_100ED9260);
  }

  v33 = v47;
  MusicLibrarySection.items.getter();
  v34 = v49;
  MusicLibrarySection.item.getter();
  v35 = type metadata accessor for Playlist();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v36 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1003E12C8(v34, v17 + v36);
  swift_endAccess();
  sub_100636F90();
  sub_1000095E8(v34, &unk_1011814D0, &qword_100EC12A0);
  v37 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  (*(v26 + 24))(v17 + v37, v33, v24);
  swift_endAccess();
  v38 = swift_unknownObjectWeakLoadStrong();
  if (v38)
  {
    v40 = v38;
    v41 = sub_10028434C(v39);
    if (*(v40 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
    {
      v42 = *(v40 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
      ObjectType = swift_getObjectType();
      v44 = (*(v42 + 112))(ObjectType, v42);
    }

    else
    {
      v44 = 1;
    }

    v45 = v51;
    [v41 setHidden:v44 & 1];

    sub_100283D74();
    [*(v40 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];

    swift_unknownObjectRelease();
  }

  else
  {

    v45 = v51;
  }

  (*(v26 + 8))(v47, v24);
  (*(v45 + 8))(v31, v14);
}

uint64_t sub_10063875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  v4[20] = swift_task_alloc();
  v5 = sub_10010FC20(&unk_1011A4920, &qword_100ED9288);
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_10119A848, &qword_100ED9290);
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v7 = sub_10010FC20(&unk_1011A4930, &qword_100ED9298);
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  sub_10010FC20(&unk_101188900, &qword_100ED9260);
  v4[30] = swift_task_alloc();
  v8 = type metadata accessor for Playlist();
  v4[31] = v8;
  v4[32] = *(v8 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  v4[35] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v4[36] = v9;
  v4[37] = *(v9 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v10 = sub_10010FC20(&qword_101181BE8, &unk_100EBD710);
  v4[40] = v10;
  v4[41] = *(v10 - 8);
  v4[42] = swift_task_alloc();
  v11 = sub_10010FC20(&unk_1011A4990, &unk_100EE5070);
  v4[43] = v11;
  v4[44] = *(v11 - 8);
  v4[45] = swift_task_alloc();
  v12 = sub_10010FC20(&qword_101181BF0, &unk_100EBD720);
  v4[46] = v12;
  v4[47] = *(v12 - 8);
  v4[48] = swift_task_alloc();
  v13 = type metadata accessor for MusicPropertySource();
  v4[49] = v13;
  v4[50] = *(v13 - 8);
  v4[51] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[57] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[58] = v15;
  v4[59] = v14;

  return _swift_task_switch(sub_100638CAC, v15, v14);
}

uint64_t sub_100638CAC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 480) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 400);
    v2 = *(v0 + 408);
    *(v0 + 488) = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playlist;
    *(v0 + 496) = sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v4 = swift_allocObject();
    *(v0 + 504) = v4;
    *(v4 + 16) = xmmword_100EBC6C0;
    *(v0 + 512) = sub_10010FC20(&unk_10118C1C0, &qword_100ED92A0);
    *(v4 + 32) = static PartialMusicProperty<A>.entries.getter();
    *(v0 + 584) = enum case for MusicPropertySource.catalog(_:);
    v5 = *(v3 + 104);
    *(v0 + 520) = v5;
    *(v0 + 528) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v5(v2);
    v6 = swift_task_alloc();
    *(v0 + 536) = v6;
    v7 = sub_1006401FC(&unk_1011A47F0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    *(v0 + 544) = v7;
    *v6 = v0;
    v6[1] = sub_100638FB8;
    v8 = *(v0 + 448);
    v9 = *(v0 + 408);
    v10 = *(v0 + 248);

    return MusicItem<>.with(_:preferredSource:)(v8, v4, v9, v10, &protocol witness table for Playlist, &protocol witness table for Playlist, v7);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100638FB8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[51];
  v5 = v2[50];
  v6 = v2[49];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[58];
    v8 = v3[59];
    v9 = sub_10063A7F8;
  }

  else
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[58];
    v8 = v3[59];
    v9 = sub_100639178;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100639178()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v4 + 56);
  *(v0 + 552) = v5;
  v5(v2, 0, 1, v3);
  sub_1000089F8(v2, v1, &unk_1011814D0, &qword_100EC12A0);
  v6 = *(v4 + 48);
  *(v0 + 560) = v6;
  *(v0 + 568) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v1, 1, v3) == 1)
  {
    sub_1000095E8(*(v0 + 440), &unk_1011814D0, &qword_100EC12A0);
    swift_getKeyPath();
    *(v0 + 112) = Playlist.id.getter();
    *(v0 + 120) = v7;
    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100EBC6C0;
    *(v8 + 32) = static PartialMusicProperty<A>.entries.getter();
    MusicCatalogResourceRequest.properties.setter();
    v9 = swift_task_alloc();
    *(v0 + 576) = v9;
    *v9 = v0;
    v9[1] = sub_100639CC8;
    v10 = *(v0 + 360);
    v11 = *(v0 + 368);

    return MusicCatalogResourceRequest.response()(v10, v11);
  }

  v12 = *(v0 + 440);

  sub_1000095E8(v12, &unk_1011814D0, &qword_100EC12A0);
  v13 = *(v0 + 560);
  v14 = *(v0 + 480);
  v15 = *(v0 + 448);
  v16 = *(v0 + 424);
  v17 = *(v0 + 248);
  sub_1000089F8(v15, v16, &unk_1011814D0, &qword_100EC12A0);
  v18 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1003E12C8(v16, v14 + v18);
  swift_endAccess();
  sub_100636F90();
  sub_1000095E8(v16, &unk_1011814D0, &qword_100EC12A0);
  if (v13(v15, 1, v17))
  {
    (*(*(v0 + 296) + 56))(*(v0 + 280), 1, 1, *(v0 + 288));
    goto LABEL_8;
  }

  v19 = *(v0 + 288);
  v20 = *(v0 + 296);
  v21 = *(v0 + 272);
  v22 = *(v0 + 280);
  v23 = *(v0 + 248);
  v24 = *(v0 + 256);
  (*(v24 + 16))(v21, *(v0 + 448), v23);
  Playlist.entries.getter();
  (*(v24 + 8))(v21, v23);
  if ((*(v20 + 48))(v22, 1, v19) == 1)
  {
LABEL_8:
    v25 = *(v0 + 288);
    v26 = *(v0 + 296);
    v27 = *(v0 + 280);
    type metadata accessor for Playlist.Entry();
    MusicItemCollection.init(arrayLiteral:)();
    if ((*(v26 + 48))(v27, 1, v25) != 1)
    {
      sub_1000095E8(*(v0 + 280), &qword_10119A808, &unk_100ED91D0);
    }

    goto LABEL_11;
  }

  (*(*(v0 + 296) + 32))(*(v0 + 312), *(v0 + 280), *(v0 + 288));
LABEL_11:
  v28 = *(v0 + 480);
  v29 = *(v0 + 304);
  v30 = *(v0 + 312);
  v31 = *(v0 + 288);
  v32 = *(v0 + 296);
  v33 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  (*(v32 + 40))(v28 + v33, v30, v31);
  swift_endAccess();
  (*(v32 + 16))(v29, v28 + v33, v31);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v32 + 8))(v29, v31);
  if (*(v0 + 128) == *(v0 + 136) && swift_unknownObjectWeakLoadStrong())
  {
    v34 = *(v0 + 240);
    (*(v0 + 520))(v34, *(v0 + 584), *(v0 + 392));
    v35 = _s14descr101094081C15DataSourceErrorOMa(0);
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    sub_10028555C(v34);
    swift_unknownObjectRelease();
    sub_1000095E8(v34, &unk_101188900, &qword_100ED9260);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    v39 = sub_10028434C(v37);
    if (*(v38 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
    {
      v40 = *(v38 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
      ObjectType = swift_getObjectType();
      v42 = (*(v40 + 112))(ObjectType, v40);
    }

    else
    {
      v42 = 1;
    }

    [v39 setHidden:v42 & 1];

    sub_100283D74();
    [*(v38 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];
    swift_unknownObjectRelease();
  }

  v43 = *(v0 + 560);
  v44 = *(v0 + 416);
  v45 = *(v0 + 248);
  sub_1000089F8(*(v0 + 448), v44, &unk_1011814D0, &qword_100EC12A0);
  v46 = v43(v44, 1, v45);
  v47 = *(v0 + 480);
  v48 = *(v0 + 448);
  v49 = *(v0 + 416);
  if (v46 == 1)
  {

    sub_1000095E8(v49, &unk_1011814D0, &qword_100EC12A0);
  }

  else
  {
    v50 = *(v0 + 256);
    v51 = *(v0 + 264);
    v52 = *(v0 + 248);
    v53 = *(v0 + 232);
    v67 = *(v0 + 216);
    v70 = *(v0 + 200);
    v71 = *(v0 + 224);
    v69 = *(v0 + 192);
    v54 = *(v0 + 184);
    v66 = *(v0 + 176);
    v64 = *(v0 + 168);
    v65 = *(v0 + 208);
    v63 = *(v0 + 160);
    (*(v50 + 32))(v51, v49, v52);
    sub_10010FC20(&qword_101191FC0, &unk_100ED92D0);
    v72 = v48;
    v55 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_100EBC6B0;
    v68 = v52;
    (*(v50 + 16))(v56 + v55, v51, v52);
    sub_1006401FC(&unk_1011A4940, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    MusicLibraryMapping.Request.init(mappingItems:)();
    sub_100020674(&qword_10119A850, &unk_1011A4930, &qword_100ED9298, &protocol conformance descriptor for MusicLibraryMapping.Request<A>);
    v57 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    v58 = *(v47 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse);
    *(v47 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse) = v57 | 0x8000000000000000;

    sub_1004E6028(v58);
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100027010();
    v59 = static OS_dispatch_queue.main.getter();
    *(v0 + 144) = v59;
    v60 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v60 - 8) + 56))(v63, 1, 1, v60);
    sub_100020674(&unk_1011A4950, &unk_1011A4920, &qword_100ED9288, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1006401FC(&qword_101184920, sub_100027010, &protocol conformance descriptor for OS_dispatch_queue);
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v63, &qword_101182140, &unk_100EBD2A0);

    (*(v66 + 8))(v54, v64);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&qword_10119A858, &qword_10119A848, &qword_100ED9290, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    Publisher<>.sink(receiveValue:)();

    (*(v70 + 8))(v65, v69);
    swift_beginAccess();
    v48 = v72;
    AnyCancellable.store(in:)();
    swift_endAccess();

    (*(v71 + 8))(v53, v67);
    (*(v50 + 8))(v51, v68);
  }

  sub_1000095E8(v48, &unk_1011814D0, &qword_100EC12A0);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_100639CC8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_10063B348;
  }

  else
  {
    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_100639DEC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100639DEC()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 376);
  v69 = *(v0 + 384);
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  v5 = *(v0 + 344);
  v6 = *(v0 + 352);
  v7 = *(v0 + 328);
  v8 = *(v0 + 336);
  v9 = *(v0 + 320);

  MusicCatalogResourceResponse.items.getter();
  (*(v6 + 8))(v3, v5);
  sub_10034DCDC(v1);
  (*(v7 + 8))(v8, v9);
  (*(v2 + 8))(v69, v4);
  sub_10049DCC0(*(v0 + 432), *(v0 + 448));
  v10 = *(v0 + 560);
  v11 = *(v0 + 480);
  v12 = *(v0 + 448);
  v13 = *(v0 + 424);
  v14 = *(v0 + 248);
  sub_1000089F8(v12, v13, &unk_1011814D0, &qword_100EC12A0);
  v15 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1003E12C8(v13, v11 + v15);
  swift_endAccess();
  sub_100636F90();
  sub_1000095E8(v13, &unk_1011814D0, &qword_100EC12A0);
  if (v10(v12, 1, v14))
  {
    (*(*(v0 + 296) + 56))(*(v0 + 280), 1, 1, *(v0 + 288));
  }

  else
  {
    v16 = *(v0 + 288);
    v17 = *(v0 + 296);
    v18 = *(v0 + 272);
    v19 = *(v0 + 280);
    v20 = *(v0 + 248);
    v21 = *(v0 + 256);
    (*(v21 + 16))(v18, *(v0 + 448), v20);
    Playlist.entries.getter();
    (*(v21 + 8))(v18, v20);
    if ((*(v17 + 48))(v19, 1, v16) != 1)
    {
      (*(*(v0 + 296) + 32))(*(v0 + 312), *(v0 + 280), *(v0 + 288));
      goto LABEL_7;
    }
  }

  v22 = *(v0 + 288);
  v23 = *(v0 + 296);
  v24 = *(v0 + 280);
  type metadata accessor for Playlist.Entry();
  MusicItemCollection.init(arrayLiteral:)();
  if ((*(v23 + 48))(v24, 1, v22) != 1)
  {
    sub_1000095E8(*(v0 + 280), &qword_10119A808, &unk_100ED91D0);
  }

LABEL_7:
  v25 = *(v0 + 480);
  v26 = *(v0 + 304);
  v27 = *(v0 + 312);
  v28 = *(v0 + 288);
  v29 = *(v0 + 296);
  v30 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  (*(v29 + 40))(v25 + v30, v27, v28);
  swift_endAccess();
  (*(v29 + 16))(v26, v25 + v30, v28);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v29 + 8))(v26, v28);
  if (*(v0 + 128) == *(v0 + 136) && swift_unknownObjectWeakLoadStrong())
  {
    v31 = *(v0 + 240);
    (*(v0 + 520))(v31, *(v0 + 584), *(v0 + 392));
    v32 = _s14descr101094081C15DataSourceErrorOMa(0);
    (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    sub_10028555C(v31);
    swift_unknownObjectRelease();
    sub_1000095E8(v31, &unk_101188900, &qword_100ED9260);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v36 = sub_10028434C(v34);
    if (*(v35 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
    {
      v37 = *(v35 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
      ObjectType = swift_getObjectType();
      v39 = (*(v37 + 112))(ObjectType, v37);
    }

    else
    {
      v39 = 1;
    }

    [v36 setHidden:v39 & 1];

    sub_100283D74();
    [*(v35 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];
    swift_unknownObjectRelease();
  }

  v40 = *(v0 + 560);
  v41 = *(v0 + 416);
  v42 = *(v0 + 248);
  sub_1000089F8(*(v0 + 448), v41, &unk_1011814D0, &qword_100EC12A0);
  v43 = v40(v41, 1, v42);
  v44 = *(v0 + 480);
  v45 = *(v0 + 448);
  v46 = *(v0 + 416);
  if (v43 == 1)
  {

    sub_1000095E8(v46, &unk_1011814D0, &qword_100EC12A0);
  }

  else
  {
    v47 = *(v0 + 256);
    v48 = *(v0 + 264);
    v49 = *(v0 + 248);
    v50 = *(v0 + 232);
    v64 = *(v0 + 216);
    v67 = *(v0 + 200);
    v68 = *(v0 + 224);
    v66 = *(v0 + 192);
    v51 = *(v0 + 184);
    v63 = *(v0 + 176);
    v61 = *(v0 + 168);
    v62 = *(v0 + 208);
    v60 = *(v0 + 160);
    (*(v47 + 32))(v48, v46, v49);
    sub_10010FC20(&qword_101191FC0, &unk_100ED92D0);
    v70 = v45;
    v52 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_100EBC6B0;
    v65 = v49;
    (*(v47 + 16))(v53 + v52, v48, v49);
    sub_1006401FC(&unk_1011A4940, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    MusicLibraryMapping.Request.init(mappingItems:)();
    sub_100020674(&qword_10119A850, &unk_1011A4930, &qword_100ED9298, &protocol conformance descriptor for MusicLibraryMapping.Request<A>);
    v54 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    v55 = *(v44 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse);
    *(v44 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse) = v54 | 0x8000000000000000;

    sub_1004E6028(v55);
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100027010();
    v56 = static OS_dispatch_queue.main.getter();
    *(v0 + 144) = v56;
    v57 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v57 - 8) + 56))(v60, 1, 1, v57);
    sub_100020674(&unk_1011A4950, &unk_1011A4920, &qword_100ED9288, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1006401FC(&qword_101184920, sub_100027010, &protocol conformance descriptor for OS_dispatch_queue);
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v60, &qword_101182140, &unk_100EBD2A0);

    (*(v63 + 8))(v51, v61);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&qword_10119A858, &qword_10119A848, &qword_100ED9290, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    Publisher<>.sink(receiveValue:)();

    (*(v67 + 8))(v62, v66);
    swift_beginAccess();
    v45 = v70;
    AnyCancellable.store(in:)();
    swift_endAccess();

    (*(v68 + 8))(v50, v64);
    (*(v47 + 8))(v48, v65);
  }

  sub_1000095E8(v45, &unk_1011814D0, &qword_100EC12A0);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_10063A7F8()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v4 + 56);
  *(v0 + 552) = v5;
  v5(v2, 1, 1, v3);
  sub_1000089F8(v2, v1, &unk_1011814D0, &qword_100EC12A0);
  v6 = *(v4 + 48);
  *(v0 + 560) = v6;
  *(v0 + 568) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v1, 1, v3) == 1)
  {
    sub_1000095E8(*(v0 + 440), &unk_1011814D0, &qword_100EC12A0);
    swift_getKeyPath();
    *(v0 + 112) = Playlist.id.getter();
    *(v0 + 120) = v7;
    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100EBC6C0;
    *(v8 + 32) = static PartialMusicProperty<A>.entries.getter();
    MusicCatalogResourceRequest.properties.setter();
    v9 = swift_task_alloc();
    *(v0 + 576) = v9;
    *v9 = v0;
    v9[1] = sub_100639CC8;
    v10 = *(v0 + 360);
    v11 = *(v0 + 368);

    return MusicCatalogResourceRequest.response()(v10, v11);
  }

  v12 = *(v0 + 440);

  sub_1000095E8(v12, &unk_1011814D0, &qword_100EC12A0);
  v13 = *(v0 + 560);
  v14 = *(v0 + 480);
  v15 = *(v0 + 448);
  v16 = *(v0 + 424);
  v17 = *(v0 + 248);
  sub_1000089F8(v15, v16, &unk_1011814D0, &qword_100EC12A0);
  v18 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1003E12C8(v16, v14 + v18);
  swift_endAccess();
  sub_100636F90();
  sub_1000095E8(v16, &unk_1011814D0, &qword_100EC12A0);
  if (v13(v15, 1, v17))
  {
    (*(*(v0 + 296) + 56))(*(v0 + 280), 1, 1, *(v0 + 288));
    goto LABEL_8;
  }

  v19 = *(v0 + 288);
  v20 = *(v0 + 296);
  v21 = *(v0 + 272);
  v22 = *(v0 + 280);
  v23 = *(v0 + 248);
  v24 = *(v0 + 256);
  (*(v24 + 16))(v21, *(v0 + 448), v23);
  Playlist.entries.getter();
  (*(v24 + 8))(v21, v23);
  if ((*(v20 + 48))(v22, 1, v19) == 1)
  {
LABEL_8:
    v25 = *(v0 + 288);
    v26 = *(v0 + 296);
    v27 = *(v0 + 280);
    type metadata accessor for Playlist.Entry();
    MusicItemCollection.init(arrayLiteral:)();
    if ((*(v26 + 48))(v27, 1, v25) != 1)
    {
      sub_1000095E8(*(v0 + 280), &qword_10119A808, &unk_100ED91D0);
    }

    goto LABEL_11;
  }

  (*(*(v0 + 296) + 32))(*(v0 + 312), *(v0 + 280), *(v0 + 288));
LABEL_11:
  v28 = *(v0 + 480);
  v29 = *(v0 + 304);
  v30 = *(v0 + 312);
  v31 = *(v0 + 288);
  v32 = *(v0 + 296);
  v33 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  (*(v32 + 40))(v28 + v33, v30, v31);
  swift_endAccess();
  (*(v32 + 16))(v29, v28 + v33, v31);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v32 + 8))(v29, v31);
  if (*(v0 + 128) == *(v0 + 136) && swift_unknownObjectWeakLoadStrong())
  {
    v34 = *(v0 + 240);
    (*(v0 + 520))(v34, *(v0 + 584), *(v0 + 392));
    v35 = _s14descr101094081C15DataSourceErrorOMa(0);
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    sub_10028555C(v34);
    swift_unknownObjectRelease();
    sub_1000095E8(v34, &unk_101188900, &qword_100ED9260);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    v39 = sub_10028434C(v37);
    if (*(v38 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
    {
      v40 = *(v38 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
      ObjectType = swift_getObjectType();
      v42 = (*(v40 + 112))(ObjectType, v40);
    }

    else
    {
      v42 = 1;
    }

    [v39 setHidden:v42 & 1];

    sub_100283D74();
    [*(v38 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];
    swift_unknownObjectRelease();
  }

  v43 = *(v0 + 560);
  v44 = *(v0 + 416);
  v45 = *(v0 + 248);
  sub_1000089F8(*(v0 + 448), v44, &unk_1011814D0, &qword_100EC12A0);
  v46 = v43(v44, 1, v45);
  v47 = *(v0 + 480);
  v48 = *(v0 + 448);
  v49 = *(v0 + 416);
  if (v46 == 1)
  {

    sub_1000095E8(v49, &unk_1011814D0, &qword_100EC12A0);
  }

  else
  {
    v50 = *(v0 + 256);
    v51 = *(v0 + 264);
    v52 = *(v0 + 248);
    v53 = *(v0 + 232);
    v67 = *(v0 + 216);
    v70 = *(v0 + 200);
    v71 = *(v0 + 224);
    v69 = *(v0 + 192);
    v54 = *(v0 + 184);
    v66 = *(v0 + 176);
    v64 = *(v0 + 168);
    v65 = *(v0 + 208);
    v63 = *(v0 + 160);
    (*(v50 + 32))(v51, v49, v52);
    sub_10010FC20(&qword_101191FC0, &unk_100ED92D0);
    v72 = v48;
    v55 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_100EBC6B0;
    v68 = v52;
    (*(v50 + 16))(v56 + v55, v51, v52);
    sub_1006401FC(&unk_1011A4940, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    MusicLibraryMapping.Request.init(mappingItems:)();
    sub_100020674(&qword_10119A850, &unk_1011A4930, &qword_100ED9298, &protocol conformance descriptor for MusicLibraryMapping.Request<A>);
    v57 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    v58 = *(v47 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse);
    *(v47 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse) = v57 | 0x8000000000000000;

    sub_1004E6028(v58);
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100027010();
    v59 = static OS_dispatch_queue.main.getter();
    *(v0 + 144) = v59;
    v60 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v60 - 8) + 56))(v63, 1, 1, v60);
    sub_100020674(&unk_1011A4950, &unk_1011A4920, &qword_100ED9288, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1006401FC(&qword_101184920, sub_100027010, &protocol conformance descriptor for OS_dispatch_queue);
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v63, &qword_101182140, &unk_100EBD2A0);

    (*(v66 + 8))(v54, v64);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&qword_10119A858, &qword_10119A848, &qword_100ED9290, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    Publisher<>.sink(receiveValue:)();

    (*(v70 + 8))(v65, v69);
    swift_beginAccess();
    v48 = v72;
    AnyCancellable.store(in:)();
    swift_endAccess();

    (*(v71 + 8))(v53, v67);
    (*(v50 + 8))(v51, v68);
  }

  sub_1000095E8(v48, &unk_1011814D0, &qword_100EC12A0);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_10063B348()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 432);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 368);
  v6 = *(v0 + 248);

  (*(v4 + 8))(v3, v5);
  v1(v2, 1, 1, v6);
  sub_10049DCC0(*(v0 + 432), *(v0 + 448));
  v7 = *(v0 + 560);
  v8 = *(v0 + 480);
  v9 = *(v0 + 448);
  v10 = *(v0 + 424);
  v11 = *(v0 + 248);
  sub_1000089F8(v9, v10, &unk_1011814D0, &qword_100EC12A0);
  v12 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1003E12C8(v10, v8 + v12);
  swift_endAccess();
  sub_100636F90();
  sub_1000095E8(v10, &unk_1011814D0, &qword_100EC12A0);
  if (v7(v9, 1, v11))
  {
    (*(*(v0 + 296) + 56))(*(v0 + 280), 1, 1, *(v0 + 288));
  }

  else
  {
    v13 = *(v0 + 288);
    v14 = *(v0 + 296);
    v15 = *(v0 + 272);
    v16 = *(v0 + 280);
    v17 = *(v0 + 248);
    v18 = *(v0 + 256);
    (*(v18 + 16))(v15, *(v0 + 448), v17);
    Playlist.entries.getter();
    (*(v18 + 8))(v15, v17);
    if ((*(v14 + 48))(v16, 1, v13) != 1)
    {
      (*(*(v0 + 296) + 32))(*(v0 + 312), *(v0 + 280), *(v0 + 288));
      goto LABEL_7;
    }
  }

  v19 = *(v0 + 288);
  v20 = *(v0 + 296);
  v21 = *(v0 + 280);
  type metadata accessor for Playlist.Entry();
  MusicItemCollection.init(arrayLiteral:)();
  if ((*(v20 + 48))(v21, 1, v19) != 1)
  {
    sub_1000095E8(*(v0 + 280), &qword_10119A808, &unk_100ED91D0);
  }

LABEL_7:
  v22 = *(v0 + 480);
  v23 = *(v0 + 304);
  v24 = *(v0 + 312);
  v25 = *(v0 + 288);
  v26 = *(v0 + 296);
  v27 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  (*(v26 + 40))(v22 + v27, v24, v25);
  swift_endAccess();
  (*(v26 + 16))(v23, v22 + v27, v25);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v26 + 8))(v23, v25);
  if (*(v0 + 128) == *(v0 + 136) && swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(v0 + 240);
    (*(v0 + 520))(v28, *(v0 + 584), *(v0 + 392));
    v29 = _s14descr101094081C15DataSourceErrorOMa(0);
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    sub_10028555C(v28);
    swift_unknownObjectRelease();
    sub_1000095E8(v28, &unk_101188900, &qword_100ED9260);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v33 = sub_10028434C(v31);
    if (*(v32 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
    {
      v34 = *(v32 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
      ObjectType = swift_getObjectType();
      v36 = (*(v34 + 112))(ObjectType, v34);
    }

    else
    {
      v36 = 1;
    }

    [v33 setHidden:v36 & 1];

    sub_100283D74();
    [*(v32 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];
    swift_unknownObjectRelease();
  }

  v37 = *(v0 + 560);
  v38 = *(v0 + 416);
  v39 = *(v0 + 248);
  sub_1000089F8(*(v0 + 448), v38, &unk_1011814D0, &qword_100EC12A0);
  v40 = v37(v38, 1, v39);
  v41 = *(v0 + 480);
  v42 = *(v0 + 448);
  v43 = *(v0 + 416);
  if (v40 == 1)
  {

    sub_1000095E8(v43, &unk_1011814D0, &qword_100EC12A0);
  }

  else
  {
    v44 = *(v0 + 256);
    v45 = *(v0 + 264);
    v46 = *(v0 + 248);
    v47 = *(v0 + 232);
    v61 = *(v0 + 216);
    v64 = *(v0 + 200);
    v65 = *(v0 + 224);
    v63 = *(v0 + 192);
    v48 = *(v0 + 184);
    v60 = *(v0 + 176);
    v58 = *(v0 + 168);
    v59 = *(v0 + 208);
    v57 = *(v0 + 160);
    (*(v44 + 32))(v45, v43, v46);
    sub_10010FC20(&qword_101191FC0, &unk_100ED92D0);
    v66 = v42;
    v49 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100EBC6B0;
    v62 = v46;
    (*(v44 + 16))(v50 + v49, v45, v46);
    sub_1006401FC(&unk_1011A4940, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    MusicLibraryMapping.Request.init(mappingItems:)();
    sub_100020674(&qword_10119A850, &unk_1011A4930, &qword_100ED9298, &protocol conformance descriptor for MusicLibraryMapping.Request<A>);
    v51 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    v52 = *(v41 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse);
    *(v41 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse) = v51 | 0x8000000000000000;

    sub_1004E6028(v52);
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100027010();
    v53 = static OS_dispatch_queue.main.getter();
    *(v0 + 144) = v53;
    v54 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v54 - 8) + 56))(v57, 1, 1, v54);
    sub_100020674(&unk_1011A4950, &unk_1011A4920, &qword_100ED9288, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1006401FC(&qword_101184920, sub_100027010, &protocol conformance descriptor for OS_dispatch_queue);
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v57, &qword_101182140, &unk_100EBD2A0);

    (*(v60 + 8))(v48, v58);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&qword_10119A858, &qword_10119A848, &qword_100ED9290, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    Publisher<>.sink(receiveValue:)();

    (*(v64 + 8))(v59, v63);
    swift_beginAccess();
    v42 = v66;
    AnyCancellable.store(in:)();
    swift_endAccess();

    (*(v65 + 8))(v47, v61);
    (*(v44 + 8))(v45, v62);
  }

  sub_1000095E8(v42, &unk_1011814D0, &qword_100EC12A0);

  v55 = *(v0 + 8);

  return v55();
}

void sub_10063BD24(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MusicPropertySource();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicLibrary.AddStatus();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin();
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = &v54 - v8;
  sub_10010FC20(&qword_10119A808, &unk_100ED91D0);
  __chkstk_darwin();
  v58 = &v54 - v9;
  v10 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v60 = *(v10 - 8);
  v61 = v10;
  __chkstk_darwin();
  v59 = &v54 - v11;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v13 = &v54 - v12;
  sub_10010FC20(&qword_10119A860, &unk_100EE4FC0);
  __chkstk_darwin();
  v15 = &v54 - v14;
  v16 = sub_10010FC20(&unk_1011A4960, &qword_100ED92E0);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v54 - v18;
  v62 = type metadata accessor for Playlist();
  v67 = *(v62 - 8);
  __chkstk_darwin();
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v68 = &v54 - v22;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v55 = v4;
    v56 = v3;
    sub_1000089F8(a1, v15, &qword_10119A860, &unk_100EE4FC0);
    v25 = sub_10010FC20(&unk_1011A4970, &qword_100ED92E8);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v15, 1, v25) == 1)
    {

      sub_1000095E8(v15, &qword_10119A860, &unk_100EE4FC0);
    }

    else
    {
      v27 = MusicLibraryMapping.Response.mappedItems.getter();
      (*(v26 + 8))(v15, v25);
      if (*(v27 + 16))
      {
        (*(v17 + 16))(v19, v27 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);

        MusicLibraryMapping.MappedItem.item.getter();
        (*(v17 + 8))(v19, v16);
        v28 = v67;
        v29 = v68;
        v30 = v62;
        (*(v67 + 32))(v68, v21, v62);
        (*(v28 + 16))(v13, v29, v30);
        (*(v28 + 56))(v13, 0, 1, v30);
        v31 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
        swift_beginAccess();
        sub_1003E12C8(v13, v24 + v31);
        swift_endAccess();
        sub_100636F90();
        sub_1000095E8(v13, &unk_1011814D0, &qword_100EC12A0);
        v32 = v58;
        Playlist.entries.getter();
        v34 = v60;
        v33 = v61;
        v35 = *(v60 + 48);
        if (v35(v32, 1, v61) == 1)
        {
          type metadata accessor for Playlist.Entry();
          v36 = v59;
          MusicItemCollection.init(arrayLiteral:)();
          v37 = v35(v32, 1, v33);
          v39 = v55;
          v38 = v56;
          if (v37 != 1)
          {
            sub_1000095E8(v32, &qword_10119A808, &unk_100ED91D0);
          }
        }

        else
        {
          v36 = v59;
          (*(v34 + 32))(v59, v32, v33);
          v39 = v55;
          v38 = v56;
        }

        v40 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
        swift_beginAccess();
        (*(v34 + 40))(v24 + v40, v36, v33);
        swift_endAccess();
        type metadata accessor for MusicLibrary();
        static MusicLibrary.shared.getter();
        MusicLibrary.state<A>(for:)();

        v41 = v63;
        dispatch thunk of MusicLibrary.ItemState.addStatus.getter();

        v43 = v64;
        v42 = v65;
        v44 = v66;
        (*(v65 + 104))(v64, enum case for MusicLibrary.AddStatus.added(_:), v66);
        LOBYTE(v40) = static MusicLibrary.AddStatus.== infix(_:_:)();
        v45 = *(v42 + 8);
        v45(v43, v44);
        v45(v41, v44);
        if (v40)
        {
          v46 = v57;
          (*(v39 + 104))(v57, enum case for MusicPropertySource.library(_:), v38);
          sub_10063759C(v46);
        }

        v47 = swift_unknownObjectWeakLoadStrong();
        if (v47)
        {
          v49 = v47;
          v50 = sub_10028434C(v48);
          if (*(v49 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
          {
            v51 = *(v49 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
            ObjectType = swift_getObjectType();
            v53 = (*(v51 + 112))(ObjectType, v51);
          }

          else
          {
            v53 = 1;
          }

          [v50 setHidden:v53 & 1];

          sub_100283D74();
          [*(v49 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        (*(v67 + 8))(v68, v30);
      }

      else
      {
      }
    }
  }
}

BOOL sub_10063C604()
{
  v1 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v7 - v3;
  v5 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v2 + 8))(v4, v1);
  return v7[2] != v7[1];
}

uint64_t sub_10063C778@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13[-v5];
  v7 = *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse);
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
    v15[4] = sub_100020674(&qword_1011831B8, &qword_10118A3B0, &qword_100EE4B40, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
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

uint64_t sub_10063CA10()
{
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v78 = &v67 - v1;
  v2 = type metadata accessor for MusicFavoriteStatus();
  v76 = *(v2 - 8);
  v77 = v2;
  __chkstk_darwin();
  v75 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v74 = &v67 - v4;
  v5 = sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v73 = &v67 - v6;
  v72 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v7 = *(v72 - 8);
  __chkstk_darwin();
  v69 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v68 = &v67 - v9;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v11 = &v67 - v10;
  v79 = type metadata accessor for Playlist();
  v12 = *(v79 - 8);
  __chkstk_darwin();
  v80 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel(0);
  v14 = swift_allocObject();
  if (qword_10117F408 != -1)
  {
    swift_once();
  }

  v15 = sub_1000060E4(v5, qword_101187268);
  sub_1000089F8(v15, v14 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artwork, &unk_101188920, &qword_100EBCC50);
  if (qword_10117F410 != -1)
  {
    swift_once();
  }

  v16 = sub_10010FC20(&qword_101187768, &qword_100EC2C70);
  v17 = sub_1000060E4(v16, qword_101187280);
  sub_1000089F8(v17, v14 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artworkShape, &qword_101187768, &qword_100EC2C70);
  v18 = (v14 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = (v14 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__titleAccessory);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v14 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable;
  *(v14 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable) = 0;
  v71 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel___observationRegistrar;
  ObservationRegistrar.init()();
  v22 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1000089F8(v0 + v22, v11, &unk_1011814D0, &qword_100EC12A0);
  v23 = *(v12 + 48);
  v24 = v79;
  v25 = v23(v11, 1, v79);
  v70 = v12;
  if (v25 == 1)
  {
    v26 = v0;
    (*(v12 + 16))(v80, v0 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playlist, v24);
    v27 = v23(v11, 1, v24);
    if (v27 != 1)
    {
      v27 = sub_1000095E8(v11, &unk_1011814D0, &qword_100EC12A0);
    }
  }

  else
  {
    v26 = v0;
    v27 = (*(v12 + 32))(v80, v11, v24);
  }

  v28 = v68;
  (*(**(v26 + 16) + 256))(v27);
  v29 = v69;
  v30 = v72;
  (*(v7 + 104))(v69, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v72);
  v31 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)() & 1;
  v32 = *(v7 + 8);
  v32(v29, v30);
  v32(v28, v30);
  if (v31 == *(v14 + v21))
  {
    v72 = 0;
    *(v14 + v21) = v31;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v67 - 2) = v14;
    *(&v67 - 8) = v31;
    v85 = v14;
    sub_1006401FC(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v72 = 0;
  }

  v33 = v73;
  Playlist.artwork.getter();
  sub_100261718(v33);
  v34 = Playlist.name.getter();
  sub_100261EE0(v34, v35);
  v36 = v74;
  Playlist.favoriteStatus.getter();
  v38 = v75;
  v37 = v76;
  v39 = v77;
  (*(v76 + 104))(v75, enum case for MusicFavoriteStatus.favorited(_:), v77);
  v40 = static MusicFavoriteStatus.== infix(_:_:)();
  v41 = *(v37 + 8);
  v41(v38, v39);
  v41(v36, v39);
  if (v40)
  {
    v42 = 0x6C69662E72617473;
  }

  else
  {
    v42 = 0;
  }

  if (v40)
  {
    v43 = 0xE90000000000006CLL;
  }

  else
  {
    v43 = 0;
  }

  swift_getKeyPath();
  __chkstk_darwin();
  *(&v67 - 4) = v14;
  *(&v67 - 3) = v42;
  *(&v67 - 2) = v43;
  v85 = v14;
  sub_1006401FC(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel, &unk_100EC2C20);
  v44 = v72;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v77 = v44;

  v81 = Playlist.curatorName.getter();
  v82 = v45;
  v46 = v78;
  Playlist.lastModifiedDate.getter();
  v47 = type metadata accessor for Date();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    sub_1000095E8(v46, &qword_101188C20, &qword_100EC2030);
    v83 = 0;
    v84 = 0;
  }

  else
  {
    v83 = Date.lastUpdatedDateString.getter();
    v84 = v49;
    (*(v48 + 8))(v46, v47);
  }

  v50 = 0;
  v51 = _swiftEmptyArrayStorage;
  v52 = v70;
LABEL_22:
  v53 = &v82 + 2 * v50;
  while (++v50 != 3)
  {
    v54 = v53 + 2;
    v55 = *v53;
    v53 += 2;
    if (v55)
    {
      v56 = *(v54 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_100498B7C(0, *(v51 + 2) + 1, 1, v51);
      }

      v58 = *(v51 + 2);
      v57 = *(v51 + 3);
      if (v58 >= v57 >> 1)
      {
        v51 = sub_100498B7C((v57 > 1), v58 + 1, 1, v51);
      }

      *(v51 + 2) = v58 + 1;
      v59 = &v51[16 * v58];
      *(v59 + 4) = v56;
      *(v59 + 5) = v55;
      goto LABEL_22;
    }
  }

  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  swift_arrayDestroy();
  v85 = v51;
  sub_10010FC20(&qword_101183BC8, &unk_100EBF620);
  sub_100020674(&unk_101183BD0, &qword_101183BC8, &unk_100EBF620, &protocol conformance descriptor for [A]);
  v60 = BidirectionalCollection<>.joined(separator:)();
  v62 = v61;

  v63 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v63 = v60 & 0xFFFFFFFFFFFFLL;
  }

  if (!v63)
  {

    v60 = 0;
    v62 = 0;
  }

  v64 = v79;
  v65 = sub_100262364(v60, v62);
  (*(v52 + 8))(v80, v64, v65);
  return v14;
}

uint64_t sub_10063D4E8(void (*a1)(uint64_t *, char *, uint64_t))
{
  v2 = v1;
  v180 = a1;
  v176 = type metadata accessor for Logger();
  v175 = *(v176 - 8);
  __chkstk_darwin();
  v150 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v181 = &v139 - v4;
  __chkstk_darwin();
  v168 = &v139 - v5;
  v172 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v171 = *(v172 - 8);
  __chkstk_darwin();
  v161 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v173 = &v139 - v7;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v156 = &v139 - v8;
  v151 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v152 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  __chkstk_darwin();
  v155 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v10;
  __chkstk_darwin();
  v157 = &v139 - v11;
  v148 = type metadata accessor for MusicPropertySource();
  v146 = *(v148 - 8);
  __chkstk_darwin();
  v145 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v144 = &v139 - v13;
  sub_10010FC20(&unk_101188910, &qword_100EBE7A0);
  __chkstk_darwin();
  v147 = &v139 - v14;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v142 = &v139 - v15;
  v160 = type metadata accessor for Playlist();
  v143 = *(v160 - 8);
  __chkstk_darwin();
  v159 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  v163 = *(v164 - 8);
  __chkstk_darwin();
  v162 = &v139 - v17;
  v167 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v166 = *(v167 - 8);
  __chkstk_darwin();
  v158 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v165 = &v139 - v19;
  v177 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v178 = *(v177 - 8);
  __chkstk_darwin();
  v170 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v179 = &v139 - v21;
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v23 = &v139 - v22;
  v24 = type metadata accessor for GenericMusicItem();
  v183 = *(v24 - 8);
  __chkstk_darwin();
  v26 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v139 - v29;
  v31 = type metadata accessor for Playlist.Entry();
  v182 = *(v31 - 8);
  __chkstk_darwin();
  v149 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v169 = &v139 - v33;
  __chkstk_darwin();
  v35 = &v139 - v34;
  v36 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  v37 = *(v28 + 16);
  v174 = v2;
  v37(v30, v2 + v36, v27);
  IndexPath.row.getter();
  MusicItemCollection.subscript.getter();
  (*(v28 + 8))(v30, v27);
  sub_100635948(v23);
  v38 = v183;
  if ((*(v183 + 48))(v23, 1, v24) == 1)
  {
    sub_1000095E8(v23, &unk_101189DA0, &unk_100EBF370);
    Logger.init(subsystem:category:)();
    v39 = v182;
    v40 = v169;
    (*(v182 + 16))(v169, v35, v31);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v43 = v31;
    if (os_log_type_enabled(v41, v42))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v141 = v35;
      v46 = v45;
      *&v190 = v45;
      *v44 = 136446210;
      sub_1006401FC(&qword_10119A818, &type metadata accessor for Playlist.Entry, &protocol conformance descriptor for Playlist.Entry);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      v50 = *(v39 + 8);
      v50(v40, v43);
      v51 = sub_1000105AC(v47, v49, &v190);

      *(v44 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "Couldn't get generic music item from item: %{public}s", v44, 0xCu);
      sub_10000959C(v46);

      (*(v175 + 8))(v181, v176);
      return (v50)(v141, v43);
    }

    else
    {

      v63 = *(v39 + 8);
      v63(v40, v31);
      (*(v175 + 8))(v181, v176);
      return (v63)(v35, v31);
    }
  }

  else
  {
    v53 = v31;
    (*(v38 + 32))(v26, v23, v24);
    v54 = v179;
    sub_100538C48(v26, v179);
    v55 = v178;
    v56 = v170;
    v57 = v177;
    (*(v178 + 16))(v170, v54, v177);
    v58 = (*(v55 + 88))(v56, v57);
    v59 = v26;
    if (v58 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
    {
      (*(v55 + 96))(v56, v57);
      v60 = v173;
      (*(v171 + 32))(v173, v56, v172);
      Strong = swift_unknownObjectWeakLoadStrong();
      v140 = v53;
      if (Strong)
      {
        v62 = [Strong traitCollection];
        v60 = v173;
        swift_unknownObjectRelease();
      }

      else
      {
        v62 = 0;
      }

      v74 = v182;
      sub_1005384B8(v62, &v184);

      v75 = v172;
      if (v188)
      {
        v190 = v184;
        v191 = v185;
        v192 = v186;
        v193 = v187;
        v194 = v188;
        v195 = v189;
        v76 = Alert.uiAlertController.getter();
        sub_1000095E8(&v184, &qword_10118BFD0, &unk_100ED1B90);
        v77 = swift_unknownObjectWeakLoadStrong();
        if (v77)
        {
          [v77 presentViewController:v76 animated:1 completion:0];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v93 = v178;
        (*(v171 + 8))(v173, v75);
        (*(v93 + 8))(v179, v57);
        (*(v183 + 8))(v26, v24);
      }

      else
      {
        v181 = v26;
        Logger.init(subsystem:category:)();
        v78 = v171;
        v79 = v161;
        (*(v171 + 16))(v161, v60, v75);
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v139 = v24;
          v83 = v82;
          v84 = swift_slowAlloc();
          *&v190 = v84;
          *v83 = 136446210;
          LODWORD(v180) = v81;
          v85 = MusicPlayer.PlayabilityStatus.UnplayableReason.debugDescription.getter();
          v86 = v78;
          v88 = v87;
          v141 = v35;
          v89 = *(v86 + 8);
          v90 = v79;
          v91 = v172;
          v89(v90, v172);
          v92 = sub_1000105AC(v85, v88, &v190);

          *(v83 + 4) = v92;
          _os_log_impl(&_mh_execute_header, v80, v180, "Couldn't create alert controller for reason: %{public}s", v83, 0xCu);
          sub_10000959C(v84);

          (*(v175 + 8))(v168, v176);
          v89(v60, v91);
          (*(v178 + 8))(v179, v177);
          (*(v183 + 8))(v181, v139);
          return (*(v74 + 8))(v141, v140);
        }

        v103 = *(v78 + 8);
        v103(v79, v75);
        (*(v175 + 8))(v168, v176);
        v103(v60, v75);
        (*(v178 + 8))(v179, v57);
        (*(v183 + 8))(v181, v24);
      }

      return (*(v74 + 8))(v35, v140);
    }

    else if (v58 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
    {
      v64 = *(v174 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse);
      v139 = v24;
      v141 = v35;
      v140 = v53;
      if (v64 < 0)
      {
        v94 = v174;
        v181 = v26;
        v95 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
        swift_beginAccess();
        v96 = v142;
        sub_1000089F8(v94 + v95, v142, &unk_1011814D0, &qword_100EC12A0);
        v97 = v143;
        v98 = *(v143 + 48);
        v99 = v160;
        if (v98(v96, 1, v160) == 1)
        {
          v100 = v159;
          (*(v97 + 16))(v159, v94 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playlist, v99);
          v101 = v98(v96, 1, v99);
          v102 = v182;
          if (v101 != 1)
          {
            sub_1000095E8(v96, &unk_1011814D0, &qword_100EC12A0);
          }
        }

        else
        {
          v100 = v159;
          (*(v97 + 32))(v159, v96, v99);
          v102 = v182;
        }

        *(&v191 + 1) = v99;
        *&v192 = &protocol witness table for Playlist;
        v110 = sub_10001C8B8(&v190);
        (*(v97 + 16))(v110, v100, v99);
        *(&v185 + 1) = v53;
        *&v186 = &protocol witness table for Playlist.Entry;
        v111 = sub_10001C8B8(&v184);
        v112 = v53;
        v71 = v141;
        v180 = *(v102 + 16);
        v180(v111, v141, v112);
        v113 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_preferredSource;
        v109 = v174;
        swift_beginAccess();
        v114 = v146;
        v115 = v144;
        v116 = v148;
        (*(v146 + 16))(v144, v109 + v113, v148);
        v117 = v145;
        (*(v114 + 104))(v145, enum case for MusicPropertySource.catalog(_:), v116);
        LOBYTE(v113) = static MusicPropertySource.== infix(_:_:)();
        v118 = *(v114 + 8);
        v118(v117, v116);
        v118(v115, v116);
        v119 = type metadata accessor for MusicPlaybackSource();
        v120 = *(v119 - 8);
        v121 = &enum case for MusicPlaybackSource.catalog(_:);
        if ((v113 & 1) == 0)
        {
          v121 = &enum case for MusicPlaybackSource.library(_:);
        }

        v122 = v147;
        (*(*(v119 - 8) + 104))(v147, *v121, v119);
        (*(v120 + 56))(v122, 0, 1, v119);
        v106 = v165;
        MusicPlaybackIntentDescriptor.init(container:startingAt:playbackSource:)();
        (*(v97 + 8))(v159, v160);
        v107 = v167;
        v105 = v166;
        v108 = v140;
      }

      else
      {

        v65 = v162;
        dispatch thunk of MusicAutoupdatingResponse.request.getter();
        v66 = v164;
        MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
        *(&v191 + 1) = v66;
        *&v192 = sub_100020674(&qword_1011831B8, &qword_10118A3B0, &qword_100EE4B40, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
        v67 = sub_10001C8B8(&v190);
        v68 = v163;
        (*(v163 + 16))(v67, v65, v66);
        v69 = v53;
        *(&v185 + 1) = v53;
        *&v186 = &protocol witness table for Playlist.Entry;
        v70 = sub_10001C8B8(&v184);
        v71 = v35;
        v180 = *(v182 + 16);
        v180(v70, v35, v69);
        v72 = v158;
        MusicPlaybackIntentDescriptor.init(request:startingAt:)();
        v181 = v59;
        (*(v68 + 8))(v65, v66);
        v104 = sub_1004E6028(v64);
        v105 = v166;
        v106 = v165;
        v107 = v167;
        (*(v166 + 32))(v165, v72, v167, v104);
        v108 = v140;
        v109 = v174;
      }

      v123 = *(v105 + 16);
      v124 = v152;
      v123(v152, v106, v107);
      swift_storeEnumTagMultiPayload();
      *(&v191 + 1) = v108;
      *&v192 = &protocol witness table for Playlist.Entry;
      v125 = sub_10001C8B8(&v190);
      v180(v125, v71, v108);
      v126 = swift_unknownObjectWeakLoadStrong();
      *(&v185 + 1) = _s10DataSourceCMa_0(0);
      *&v186 = &off_1010B8358;
      *&v184 = v109;

      v127 = v157;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v124, &v190, 3, 1, 0, 1, 0, 1, v157, v126, &v184);
      v128 = type metadata accessor for TaskPriority();
      v129 = v156;
      (*(*(v128 - 8) + 56))(v156, 1, 1, v128);
      v130 = v155;
      sub_1001DFCE4(v127, v155);
      type metadata accessor for MainActor();
      v131 = static MainActor.shared.getter();
      v132 = (*(v153 + 80) + 32) & ~*(v153 + 80);
      v133 = swift_allocObject();
      *(v133 + 16) = v131;
      *(v133 + 24) = &protocol witness table for MainActor;
      sub_1001DFD58(v130, v133 + v132);
      sub_1001F4F78(0, 0, v129, &unk_100ED91E8, v133);

      v134 = swift_unknownObjectWeakLoadStrong();
      v135 = v183;
      v136 = v182;
      if (v134)
      {
        v137 = [v134 navigationController];
        if (v137)
        {
          v138 = v137;
          type metadata accessor for CarPlayRootNavigationController();
          if (swift_dynamicCastClass())
          {
            sub_1001D3268(0, 1);
          }

          swift_unknownObjectRelease();

          v135 = v183;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      sub_100188CDC(v127);
      (*(v166 + 8))(v165, v167);
      (*(v178 + 8))(v179, v177);
      (*(v135 + 8))(v181, v139);
      return (*(v136 + 8))(v141, v108);
    }

    else
    {
      v73 = *(v55 + 8);
      v73(v54, v57);
      (*(v38 + 8))(v26, v24);
      (*(v182 + 8))(v35, v53);
      return (v73)(v56, v57);
    }
  }
}

uint64_t sub_10063F260()
{

  swift_unknownObjectWeakDestroy();
  sub_1000D8F2C(v0 + 32);
  v1 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playlist;
  v2 = type metadata accessor for Playlist();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000095E8(v0 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist, &unk_1011814D0, &qword_100EC12A0);

  v3 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_preferredSource;
  v4 = type metadata accessor for MusicPropertySource();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1004E6028(*(v0 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse));

  v5 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  v6 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_10063F3B4()
{
  sub_10063F260();

  return swift_deallocClassInstance();
}

uint64_t _s10DataSourceCMa_0(uint64_t a1)
{
  result = qword_10119A5E8;
  if (!qword_10119A5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10063F460(uint64_t a1)
{
  type metadata accessor for Playlist();
  if (v1 <= 0x3F)
  {
    sub_100039144(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MusicPropertySource();
      if (v3 <= 0x3F)
      {
        sub_10063F5F8(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10063F5F8(uint64_t a1)
{
  if (!qword_10119A5F8)
  {
    type metadata accessor for Playlist.Entry();
    v1 = type metadata accessor for MusicItemCollection();
    if (!v2)
    {
      atomic_store(v1, &qword_10119A5F8);
    }
  }
}

uint64_t sub_10063F658()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v7 = dispatch thunk of Collection.distance(from:to:)();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_10063F7E8@<X0>(uint64_t *a1@<X8>)
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1000089F8(v1 + v5, v4, &unk_1011814D0, &qword_100EC12A0);
  v6 = type metadata accessor for Playlist();
  a1[3] = v6;
  a1[4] = &off_10119A530;
  v7 = sub_10001C8B8(a1);
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  if (v9(v4, 1, v6) != 1)
  {
    return (*(v8 + 32))(v7, v4, v6);
  }

  (*(v8 + 16))(v7, v1 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playlist, v6);
  result = (v9)(v4, 1, v6);
  if (result != 1)
  {
    return sub_1000095E8(v4, &unk_1011814D0, &qword_100EC12A0);
  }

  return result;
}

uint64_t sub_10063F99C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_preferredSource;
  swift_beginAccess();
  v4 = type metadata accessor for MusicPropertySource();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

double sub_10063FA2C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  sub_100636E80(Strong);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return result;
}

void sub_10063FAA8(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_10063FAE8()
{
  v4 = _typeName(_:qualified:)();
  v0._countAndFlagsBits = 0x203A6D65746928;
  v0._object = 0xE700000000000000;
  String.append(_:)(v0);
  type metadata accessor for Playlist();
  sub_1006401FC(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4;
}

id sub_10063FBE8(void *a1, int a2, int a3)
{
  v28 = a3;
  v30 = a2;
  v4 = type metadata accessor for MusicPropertySource();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v29 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &ObjectType - v7;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v10 = &ObjectType - v9;
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &ObjectType - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &ObjectType - v15;
  __chkstk_darwin();
  v18 = &ObjectType - v17;
  v31 = a1;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_1000095E8(v10, &unk_1011814D0, &qword_100EC12A0);
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
    _s10DataSourceCMa_0(0);
    v23 = swift_allocObject();
    sub_1006365C8(v14, v30 & 1, v22);
    v24 = objc_allocWithZone(type metadata accessor for MCDItemDetailViewController());
    v25 = sub_10079349C(v23, v24);

    (*(v5 + 8))(v8, v4);
    v26 = *(v12 + 8);
    v26(v16, v11);
    v26(v18, v11);
    swift_deallocPartialClassInstance();
    return v25;
  }
}

uint64_t sub_100640048(uint64_t a1)
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

uint64_t sub_100640138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10063875C(a1, v4, v5, v6);
}

uint64_t sub_1006401FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100640260@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of StationFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1006402A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = type metadata accessor for Artwork.ImageFormat();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for Artwork.CropStyle();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = type metadata accessor for Artwork();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v8 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v4[24] = v8;
  v4[25] = *(v8 - 8);
  v4[26] = swift_task_alloc();
  sub_10010FC20(&unk_1011838C0, &qword_100EBD688);
  v4[27] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_10118C190, &qword_100EBD690);
  v4[28] = v9;
  v4[29] = *(v9 - 8);
  v4[30] = swift_task_alloc();
  v10 = type metadata accessor for Station();
  v4[31] = v10;
  v4[32] = *(v10 - 8);
  v4[33] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_101181BA8, &qword_100EBD698);
  v4[34] = v11;
  v4[35] = *(v11 - 8);
  v4[36] = swift_task_alloc();
  v12 = sub_10010FC20(&qword_101181BB0, &unk_100EBD6A0);
  v4[37] = v12;
  v4[38] = *(v12 - 8);
  v4[39] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v4[40] = swift_task_alloc();
  v13 = sub_10010FC20(&qword_101181BE8, &unk_100EBD710);
  v4[41] = v13;
  v4[42] = *(v13 - 8);
  v4[43] = swift_task_alloc();
  v14 = type metadata accessor for Playlist();
  v4[44] = v14;
  v4[45] = *(v14 - 8);
  v4[46] = swift_task_alloc();
  v15 = sub_10010FC20(&unk_1011A4990, &unk_100EE5070);
  v4[47] = v15;
  v4[48] = *(v15 - 8);
  v4[49] = swift_task_alloc();
  v16 = sub_10010FC20(&qword_101181BF0, &unk_100EBD720);
  v4[50] = v16;
  v4[51] = *(v16 - 8);
  v4[52] = swift_task_alloc();
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  v4[53] = swift_task_alloc();
  v17 = sub_10010FC20(&qword_10118D1A0, &qword_100EBD6B0);
  v4[54] = v17;
  v4[55] = *(v17 - 8);
  v4[56] = swift_task_alloc();
  v18 = type metadata accessor for Song();
  v4[57] = v18;
  v4[58] = *(v18 - 8);
  v4[59] = swift_task_alloc();
  v19 = sub_10010FC20(&unk_10118A320, &qword_100EBD6B8);
  v4[60] = v19;
  v4[61] = *(v19 - 8);
  v4[62] = swift_task_alloc();
  v20 = sub_10010FC20(&unk_10118A310, &qword_100EBD6C0);
  v4[63] = v20;
  v4[64] = *(v20 - 8);
  v4[65] = swift_task_alloc();
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  v4[66] = swift_task_alloc();
  v21 = sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  v4[67] = v21;
  v4[68] = *(v21 - 8);
  v4[69] = swift_task_alloc();
  v22 = type metadata accessor for Album();
  v4[70] = v22;
  v4[71] = *(v22 - 8);
  v4[72] = swift_task_alloc();
  v23 = sub_10010FC20(&qword_101181C50, &qword_100EBD7B8);
  v4[73] = v23;
  v4[74] = *(v23 - 8);
  v4[75] = swift_task_alloc();
  v24 = sub_10010FC20(&unk_101192970, &qword_100EBD7C0);
  v4[76] = v24;
  v4[77] = *(v24 - 8);
  v4[78] = swift_task_alloc();
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v25 = type metadata accessor for Logger();
  v4[81] = v25;
  v4[82] = *(v25 - 8);
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = type metadata accessor for MainActor();
  v4[89] = static MainActor.shared.getter();
  v27 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[90] = v27;
  v4[91] = v26;

  return _swift_task_switch(sub_100640CBC, v27, v26);
}

uint64_t sub_100640CBC()
{
  if ([*(v0 + 96) hasLoadedValuesForPropertySet:*(v0 + 112)])
  {
    v1 = *(v0 + 96);
    v2 = swift_task_alloc();
    *(v0 + 904) = v2;
    *v2 = v0;
    v2[1] = sub_1006440E8;
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);

    return GroupActivitiesManager.Activity.Metadata.init(modelObject:)(v3, v4);
  }

  v6 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
  MPModelObject.bestIdentifier(for:)(*v6, 1u);
  v7 = *(v0 + 96);
  if (v8)
  {
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);

    v11 = [objc_allocWithZone(MPModelLibraryRequest) init];
    *(v0 + 736) = v11;
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100EBC6C0;
    *(v12 + 32) = [v7 identifiers];
    sub_1006470B8();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 setAllowedItemIdentifiers:isa];

    v14 = v11;
    v15 = String._bridgeToObjectiveC()();
    [v14 setLabel:v15];

    [v14 setItemKind:v10];
    [v14 setItemProperties:v9];

    v16 = static MainActor.shared.getter();
    *(v0 + 744) = v16;
    v17 = swift_task_alloc();
    *(v0 + 752) = v17;
    *(v17 + 16) = v14;
    v18 = swift_task_alloc();
    *(v0 + 760) = v18;
    v19 = sub_10010FC20(&qword_10119A9C0, &qword_100ED9430);
    *v18 = v0;
    v18[1] = sub_100641748;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 80, v16, &protocol witness table for MainActor, 0xD000000000000026, 0x8000000100E52BD0, sub_100647104, v17, v19);
  }

  v20 = *(v0 + 696);
  v21 = *(v0 + 656);
  v22 = *(v0 + 648);
  v23 = Logger.groupActivities.unsafeMutableAddressor();
  *(v0 + 784) = v23;
  v24 = *(v21 + 16);
  *(v0 + 792) = v24;
  *(v0 + 800) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v20, v23, v22);
  v25 = v7;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 96);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    *(v29 + 4) = v28;
    *v30 = v28;
    v31 = v28;
    _os_log_impl(&_mh_execute_header, v26, v27, "Fetching metadata for modelObject=%{public}@", v29, 0xCu);
    sub_1000095E8(v30, &unk_101183D70, &unk_100EC6540);
  }

  v32 = *(v0 + 696);
  v33 = *(v0 + 656);
  v34 = *(v0 + 648);

  v35 = *(v33 + 8);
  *(v0 + 808) = v35;
  *(v0 + 816) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v32, v34);
  v36 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  MPModelObject.bestIdentifier(for:)(*v36, 1u);
  if (v37)
  {
    v38 = MusicItemID.init(rawValue:)();
    v40 = v39;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_getKeyPath();
      *(v0 + 64) = v38;
      *(v0 + 72) = v40;
      sub_100647070(&qword_101192880, &type metadata accessor for Album, &protocol conformance descriptor for Album);
      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v41 = swift_task_alloc();
      *(v0 + 824) = v41;
      *v41 = v0;
      v41[1] = sub_100641EF4;
      v42 = *(v0 + 608);
      v43 = *(v0 + 600);
LABEL_24:

      return MusicCatalogResourceRequest.response()(v43, v42);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_getKeyPath();
      *(v0 + 48) = v38;
      *(v0 + 56) = v40;
      sub_100647070(&unk_1011929D0, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v48 = swift_task_alloc();
      *(v0 + 840) = v48;
      *v48 = v0;
      v48[1] = sub_10064263C;
      v43 = *(v0 + 496);
      v42 = *(v0 + 504);
      goto LABEL_24;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_getKeyPath();
      *(v0 + 32) = v38;
      *(v0 + 40) = v40;
      sub_100647070(&unk_1011A47F0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v49 = swift_task_alloc();
      *(v0 + 856) = v49;
      *v49 = v0;
      v49[1] = sub_100642D6C;
      v43 = *(v0 + 392);
      v42 = *(v0 + 400);
      goto LABEL_24;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_getKeyPath();
      *(v0 + 16) = v38;
      *(v0 + 24) = v40;
      sub_100647070(&qword_101181CD0, &type metadata accessor for Station, &protocol conformance descriptor for Station);
      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v50 = swift_task_alloc();
      *(v0 + 872) = v50;
      *v50 = v0;
      v50[1] = sub_1006434B4;
      v43 = *(v0 + 288);
      v42 = *(v0 + 296);
      goto LABEL_24;
    }

    v51 = *(v0 + 192);
    v52 = *(v0 + 200);
    v53 = *(v0 + 88);

    (*(v52 + 56))(v53, 1, 1, v51);
  }

  else
  {
    v44 = *(v0 + 192);
    v45 = *(v0 + 200);
    v46 = *(v0 + 88);

    (*(v45 + 56))(v46, 1, 1, v44);
  }

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_100641748()
{
  v1 = *v0;

  v2 = *(v1 + 728);
  v3 = *(v1 + 720);

  return _swift_task_switch(sub_1006418A8, v3, v2);
}

uint64_t sub_1006418A8()
{
  v1 = *(v0 + 80);
  *(v0 + 768) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 776) = v3;
    *v3 = v0;
    v3[1] = sub_100641B88;
    v4 = *(v0 + 88);

    return GroupActivitiesManager.Activity.Metadata.init(modelObject:)(v4, v2);
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 200);
    v8 = *(v0 + 88);

    (*(v7 + 56))(v8, 1, 1, v6);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100641B88()
{
  v1 = *v0;

  v2 = *(v1 + 728);
  v3 = *(v1 + 720);

  return _swift_task_switch(sub_100641CA8, v3, v2);
}

uint64_t sub_100641CA8()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 88);

  (*(v3 + 56))(v4, 0, 1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100641EF4()
{
  v2 = *v1;
  *(*v1 + 832) = v0;

  v3 = *(v2 + 728);
  v4 = *(v2 + 720);
  if (v0)
  {
    v5 = sub_100644440;
  }

  else
  {
    v5 = sub_100642030;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100642030()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DA18(v6);
  (*(v4 + 8))(v3, v5);
  v7 = (*(v1 + 48))(v6, 1, v2);
  v55 = v0[78];
  v8 = v0[77];
  v9 = v0[76];
  v10 = v0[75];
  v11 = v0[74];
  v12 = v0[73];
  if (v7 != 1)
  {
    v17 = v0[72];
    v18 = v0[71];
    v19 = v0[70];
    (*(v18 + 32))(v17, v0[66], v19);
    v20 = Album.title.getter();
    v51 = v21;
    v52 = v20;
    v22 = Album.artistName.getter();
    v53 = v23;
    v54 = v22;
    Album.artwork.getter();
    (*(v18 + 8))(v17, v19);
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v55, v9);
    v24 = v0[80];
    v25 = v0[79];
    v26 = v0[26];
    v27 = v0[21];
    v28 = v0[22];
    GroupActivitiesManager.Activity.Metadata.init()(v26);

    *v26 = v52;
    v26[1] = v51;

    v26[2] = v54;
    v26[3] = v53;
    sub_100646F40(v24, v25);
    if ((*(v28 + 48))(v25, 1, v27) == 1)
    {
      v29 = v0[79];
      sub_1000095E8(v0[80], &unk_101188920, &qword_100EBCC50);

      sub_1000095E8(v29, &unk_101188920, &qword_100EBCC50);
      v31 = v0[25];
      v30 = v0[26];
      v32 = v0[24];
      v33 = v0[11];
      sub_100646FB0(v30, v33);
      (*(v31 + 56))(v33, 0, 1, v32);
      sub_100647014(v30);
      goto LABEL_5;
    }

    v36 = v0[26];
    v37 = v0[24];
    v38 = (*(v0[22] + 32))(v0[23], v0[79], v0[21]);
    v42 = (v36 + *(v37 + 32));
    v43 = *v42;
    if ((*v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v43 > -9.22337204e18)
    {
      if (v43 < 9.22337204e18)
      {
        v44 = v42[1];
        if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v44 > -9.22337204e18)
          {
            if (v44 < 9.22337204e18)
            {
              v45 = v43;
              v47 = v0[16];
              v46 = v0[17];
              v48 = v0[15];
              v49 = v44;
              static Artwork.CropStyle.sourceSize.getter();
              (*(v47 + 104))(v46, enum case for Artwork.ImageFormat.jpeg(_:), v48);
              v50 = swift_task_alloc();
              v0[111] = v50;
              *v50 = v0;
              v50[1] = sub_100643BFC;
              v40 = v0[20];
              v41 = v0[17];
              v38 = v45;
              v39 = v49;

              return Artwork.image(width:height:cropStyle:format:)(v38, v39, v40, v41);
            }

LABEL_22:
            __break(1u);
            return Artwork.image(width:height:cropStyle:format:)(v38, v39, v40, v41);
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  v13 = v0[66];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[11];

  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v55, v9);
  sub_1000095E8(v13, &unk_101184730, &unk_100ECB920);
  (*(v14 + 56))(v16, 1, 1, v15);
LABEL_5:

  v34 = v0[1];

  return v34();
}

uint64_t sub_10064263C()
{
  v2 = *v1;
  *(*v1 + 848) = v0;

  v3 = *(v2 + 728);
  v4 = *(v2 + 720);
  if (v0)
  {
    v5 = sub_1006447B4;
  }

  else
  {
    v5 = sub_100642778;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100642778()
{
  v1 = v0[57];
  v2 = v0[58];
  v4 = v0[55];
  v3 = v0[56];
  v6 = v0[53];
  v5 = v0[54];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DD6C(v6);
  (*(v4 + 8))(v3, v5);
  v7 = (*(v2 + 48))(v6, 1, v1);
  v55 = v0[65];
  v8 = v0[63];
  v9 = v0[64];
  v11 = v0[61];
  v10 = v0[62];
  v12 = v0[60];
  if (v7 != 1)
  {
    v17 = v0[58];
    v18 = v0[59];
    v19 = v0[57];
    (*(v17 + 32))(v18, v0[53], v19);
    v20 = Song.title.getter();
    v51 = v21;
    v52 = v20;
    v22 = Song.artistName.getter();
    v53 = v23;
    v54 = v22;
    Song.artwork.getter();
    (*(v17 + 8))(v18, v19);
    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v55, v8);
    v24 = v0[80];
    v25 = v0[79];
    v26 = v0[26];
    v27 = v0[21];
    v28 = v0[22];
    GroupActivitiesManager.Activity.Metadata.init()(v26);

    *v26 = v52;
    v26[1] = v51;

    v26[2] = v54;
    v26[3] = v53;
    sub_100646F40(v24, v25);
    if ((*(v28 + 48))(v25, 1, v27) == 1)
    {
      v29 = v0[79];
      sub_1000095E8(v0[80], &unk_101188920, &qword_100EBCC50);

      sub_1000095E8(v29, &unk_101188920, &qword_100EBCC50);
      v31 = v0[25];
      v30 = v0[26];
      v32 = v0[24];
      v33 = v0[11];
      sub_100646FB0(v30, v33);
      (*(v31 + 56))(v33, 0, 1, v32);
      sub_100647014(v30);
      goto LABEL_5;
    }

    v36 = v0[26];
    v37 = v0[24];
    v38 = (*(v0[22] + 32))(v0[23], v0[79], v0[21]);
    v42 = (v36 + *(v37 + 32));
    v43 = *v42;
    if ((*v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v43 > -9.22337204e18)
    {
      if (v43 < 9.22337204e18)
      {
        v44 = v42[1];
        if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v44 > -9.22337204e18)
          {
            if (v44 < 9.22337204e18)
            {
              v45 = v43;
              v47 = v0[16];
              v46 = v0[17];
              v48 = v0[15];
              v49 = v44;
              static Artwork.CropStyle.sourceSize.getter();
              (*(v47 + 104))(v46, enum case for Artwork.ImageFormat.jpeg(_:), v48);
              v50 = swift_task_alloc();
              v0[111] = v50;
              *v50 = v0;
              v50[1] = sub_100643BFC;
              v40 = v0[20];
              v41 = v0[17];
              v38 = v45;
              v39 = v49;

              return Artwork.image(width:height:cropStyle:format:)(v38, v39, v40, v41);
            }

LABEL_22:
            __break(1u);
            return Artwork.image(width:height:cropStyle:format:)(v38, v39, v40, v41);
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  v13 = v0[53];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[11];

  (*(v11 + 8))(v10, v12);
  (*(v9 + 8))(v55, v8);
  sub_1000095E8(v13, &unk_101183960, &unk_100EBCF90);
  (*(v14 + 56))(v16, 1, 1, v15);
LABEL_5:

  v34 = v0[1];

  return v34();
}