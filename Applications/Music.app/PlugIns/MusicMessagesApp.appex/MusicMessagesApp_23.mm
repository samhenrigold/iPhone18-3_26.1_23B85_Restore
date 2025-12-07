uint64_t sub_100240F68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) | (*(v1 + 44) << 32) | (*(v1 + 45) << 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035B28;

  return sub_100240630(a1, v4, v5, v6, v7);
}

uint64_t sub_100241044(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100635998, &unk_100522780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *PlaylistCovers.ArtworkDataSource.shared.unsafeMutableAddressor()
{
  if (qword_100633DE0 != -1)
  {
    swift_once();
  }

  return &static PlaylistCovers.ArtworkDataSource.shared;
}

__n128 PlaylistCovers.Recipe.init(_:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  v5 = sub_1002435B8(a2, a3);
  v7 = v6;
  sub_1004D7AAC();
  swift_allocObject();
  sub_1004D7A9C();
  sub_10024515C();
  sub_1004D7A8C();

  sub_100010598(v5, v7);
  if (!v3)
  {
    *(a1 + 64) = v13;
    *(a1 + 80) = v14;
    *(a1 + 96) = v15;
    *a1 = v9;
    *(a1 + 16) = v10;
    result = v12;
    *(a1 + 32) = v11;
    *(a1 + 48) = v12;
  }

  return result;
}

void PlaylistCovers.Recipe.asCoverRepresentation(_:)(void *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *v3 == 3157553 && v3[1] == 0xE300000000000000;
  if (v7 || (sub_1004DF08C() & 1) != 0)
  {
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    v11 = v3[8];
    v12 = v3[9];
    v13 = v3[10];
    v14 = _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(v3[3], v3[4]);
    if (!v14)
    {
      v19 = 0;
      v20 = 0;
      goto LABEL_14;
    }

    v15 = _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(v8, v9);
    if (!v15)
    {

      v19 = 0;
      v20 = 0;
      v14 = 0;
      goto LABEL_16;
    }

    v16 = _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(v10, v11);
    if (!v16)
    {

      v19 = 0;
      v20 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_17;
    }

    v17 = _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(v12, v13);
    if (!v17)
    {

      v19 = 0;
      v20 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_18;
    }

    v18 = _s9MusicCore14PlaylistCoversO10ExpressionO8rawValueAESgSi_tcfC_0(v3[2]);
    if (v18 != 8)
    {
      v22 = v18;
      sub_1002451B0();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v29 = v14;
      v27 = v15;
      v24 = v16;
      v28 = v17;
      v25 = [ObjCClassFromMetadata preferredFormat];
      v20 = PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(v29, v27, v24, v28, v25, v22, a2, a3);
      v21 = v26;

      v19 = v22;
      goto LABEL_19;
    }
  }

  v19 = 0;
  v20 = 0;
  v14 = 0;
LABEL_14:
  v15 = 0;
LABEL_16:
  v16 = 0;
LABEL_17:
  v17 = 0;
LABEL_18:
  v21 = 0;
LABEL_19:
  *a1 = v19;
  a1[1] = v20;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v17;
  a1[6] = v21;
}

id PlaylistCovers.ArtworkToken.__allocating_init(coverRepresentation:playlistTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
  v9 = *(a1 + 16);
  *v8 = *a1;
  *(v8 + 1) = v9;
  *(v8 + 2) = *(a1 + 32);
  *(v8 + 6) = *(a1 + 48);
  v10 = &v7[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  *v10 = a2;
  *(v10 + 1) = a3;
  v12.receiver = v7;
  v12.super_class = v3;
  return objc_msgSendSuper2(&v12, "init");
}

id PlaylistCovers.ArtworkToken.init(coverRepresentation:playlistTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 6) = *(a1 + 48);
  v6 = &v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  *v6 = a2;
  *(v6 + 1) = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for PlaylistCovers.ArtworkToken();
  return objc_msgSendSuper2(&v8, "init");
}

void *PlaylistCovers.ArtworkToken.copy(with:)@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation);
  v3 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 8);
  v4 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16);
  v5 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 24);
  v6 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32);
  v7 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 40);
  v8 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48);
  v10 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle);
  v9 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle + 8);
  v11 = type metadata accessor for PlaylistCovers.ArtworkToken();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
  *v13 = v2;
  *(v13 + 1) = v3;
  *(v13 + 2) = v4;
  *(v13 + 3) = v5;
  *(v13 + 4) = v6;
  *(v13 + 5) = v7;
  *(v13 + 6) = v8;
  v14 = &v12[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  *v14 = v10;
  *(v14 + 1) = v9;
  v23.receiver = v12;
  v23.super_class = v11;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;

  result = objc_msgSendSuper2(&v23, "init");
  a1[3] = v11;
  *a1 = result;
  return result;
}

Swift::String_optional __swiftcall PlaylistCovers.ArtworkToken.stringRepresentation()()
{
  v1 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16);
  v14[0] = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation);
  v14[1] = v1;
  v14[2] = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32);
  v15 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48);
  sub_100245220(v14, &v12);
  v2 = PlaylistCovers.Cover.Representation.stringRepresentation.getter();
  v4 = v3;
  sub_10024527C(v14);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1004DEAAC(19);

  v12 = 0xD000000000000011;
  v13 = 0x80000001004F21D0;
  v5 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle);
  v6 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle + 8);

  v16._countAndFlagsBits = v5;
  v16._object = v6;
  sub_1004DD5FC(v16);

  v7 = v12;
  v8 = v13;
  v12 = v2;
  v13 = v4;

  v17._countAndFlagsBits = v7;
  v17._object = v8;
  sub_1004DD5FC(v17);

  v9 = v12;
  v10 = v13;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

id sub_1002418F8()
{
  result = [objc_allocWithZone(type metadata accessor for PlaylistCovers.ArtworkDataSource()) init];
  static PlaylistCovers.ArtworkDataSource.shared = result;
  return result;
}

id static PlaylistCovers.ArtworkDataSource.shared.getter()
{
  if (qword_100633DE0 != -1)
  {
    swift_once();
  }

  v1 = static PlaylistCovers.ArtworkDataSource.shared;

  return v1;
}

id PlaylistCovers.ArtworkDataSource.existingRepresentation(for:)(void *a1)
{
  v3 = [a1 token];
  sub_1004DE8DC();
  swift_unknownObjectRelease();
  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (swift_dynamicCast())
  {
    [a1 fittingSize];
    v6 = sub_1002452D0(v10, v4, v5);
    if (v6)
    {
      v7 = v6;
      v8 = [*(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache) objectForKey:v6];

      return v8;
    }
  }

  return 0;
}

uint64_t PlaylistCovers.ArtworkDataSource.loadRepresentation(for:)(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  sub_1004D83FC();
  v2[27] = swift_task_alloc();
  v3 = sub_1004DD3EC();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_100241BD0, 0, 0);
}

uint64_t sub_100241BD0()
{
  v1 = [*(v0 + 200) token];
  sub_1004DE8DC();
  swift_unknownObjectRelease();
  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (!swift_dynamicCast())
  {
    v10 = *(v0 + 200);
    sub_1004DEAAC(58);
    *(v0 + 176) = 0;
    *(v0 + 184) = 0xE000000000000000;
    v71._countAndFlagsBits = 0x206E656B6F54;
    v71._object = 0xE600000000000000;
    sub_1004DD5FC(v71);
    v11 = [v10 token];
    sub_1004DE8DC();
    swift_unknownObjectRelease();
    sub_1004DEC6C();
    sub_100008D24((v0 + 144));
    v72._object = 0x80000001004F2210;
    v72._countAndFlagsBits = 0xD000000000000032;
    sub_1004DD5FC(v72);
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    sub_1002454B0();
    swift_allocError();
    *v14 = v12;
    v14[1] = v13;
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 192);
  [v2 fittingSize];
  v5 = v4;
  v7 = v6;
  v8 = PlaylistCovers.ArtworkDataSource.existingRepresentation(for:)(v2);
  if (v8)
  {
    v9 = v8;
LABEL_4:

    goto LABEL_28;
  }

  aBlock = (v0 + 16);
  v69 = v3;
  v17 = *(v0 + 200);
  v18 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 8];
  v19 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16];
  v20 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 24];
  v21 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32];
  v23 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 40];
  v22 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48];
  sub_1002451B0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v67 = v18;
  v63 = v19;
  v64 = v20;
  v65 = v21;
  v66 = v23;
  v25 = v22;
  v26 = [ObjCClassFromMetadata preferredFormat];
  [v17 destinationScale];
  [v26 setScale:?];
  [v17 fittingSize];
  v28 = v27;
  v30 = v29;
  v32 = *&v69[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  v31 = *&v69[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle + 8];

  v33 = String.trim()();

  v34 = (v33._object >> 56) & 0xF;
  if ((v33._object & 0x2000000000000000) == 0)
  {
    v34 = v33._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    goto LABEL_13;
  }

  v36 = *(v0 + 240);
  v35 = *(v0 + 248);
  v38 = *(v0 + 224);
  v37 = *(v0 + 232);

  sub_1004DD37C();
  (*(v37 + 16))(v36, v35, v38);
  if (qword_100633A80 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v39 = *(v0 + 248);
    v41 = *(v0 + 224);
    v40 = *(v0 + 232);
    v42 = qword_100671958;
    sub_1004D838C();
    v32 = sub_1004DD4AC();
    v31 = v43;
    (*(v40 + 8))(v39, v41);
LABEL_13:

    v44 = sub_1004DD3FC();

    v45 = [v44 _containsEmoji];

    v46 = 270.0;
    if (v28 > 270.0)
    {
      v46 = v28;
    }

    if (v45)
    {
      v47 = v46;
    }

    else
    {
      v47 = v28;
    }

    if (v45)
    {
      v48 = v46;
    }

    else
    {
      v48 = v30;
    }

    v49 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v26 format:{v47, v48}];
    v50 = swift_allocObject();
    *(v50 + 16) = v47;
    *(v50 + 24) = v48;
    *(v50 + 32) = v67;
    *(v50 + 40) = v26;
    *(v50 + 48) = v32;
    *(v50 + 56) = v31;
    *(v50 + 64) = v25;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_100245554;
    *(v51 + 24) = v50;
    *(v0 + 48) = sub_10001E39C;
    *(v0 + 56) = v51;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10001E3C4;
    *(v0 + 40) = &unk_1005E7650;
    v52 = _Block_copy(aBlock);
    v67 = v67;
    aBlock = v26;
    v26 = v25;

    v53 = v49;
    v25 = [v49 imageWithActions:v52];
    _Block_release(v52);
    LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

    if (v52)
    {
      __break(1u);
      goto LABEL_33;
    }

    v73.width = v47;
    v73.height = v48;
    v74.width = v28;
    v74.height = v30;
    if (CGSizeEqualToSize(v73, v74))
    {

      goto LABEL_26;
    }

    v62 = v26;
    v54 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:aBlock format:{v28, v30}];
    v55 = swift_allocObject();
    *(v55 + 16) = v25;
    *(v55 + 24) = v28;
    *(v55 + 32) = v30;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1002455C8;
    *(v56 + 24) = v55;
    *(v0 + 96) = sub_100146EC4;
    *(v0 + 104) = v56;
    *(v0 + 64) = _NSConcreteStackBlock;
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_10001E3C4;
    *(v0 + 88) = &unk_1005E76C8;
    v57 = _Block_copy((v0 + 64));
    v26 = *(v0 + 104);
    v58 = v25;

    v25 = [v54 imageWithActions:v57];

    _Block_release(v57);
    LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

    if ((v58 & 1) == 0)
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v26 = v62;
LABEL_26:
  v3 = v69;
  v9 = [objc_opt_self() representationForVisualIdentity:v69 withSize:v25 image:{v5, v7}];
  v59 = sub_1002452D0(v69, v5, v7);
  if (!v59)
  {

    goto LABEL_4;
  }

  v60 = v59;
  [*(*(v0 + 208) + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache) setObject:v9 forKey:v59];

LABEL_28:

  v61 = *(v0 + 8);

  return v61(v9);
}

uint64_t sub_100242618(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1002426DC;

  return PlaylistCovers.ArtworkDataSource.loadRepresentation(for:)(v6);
}

uint64_t sub_1002426DC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_1004D7F3C();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t PlaylistCovers.ArtworkDataSource.visualIdenticalityIdentifier(for:)(void *a1)
{
  v1 = [a1 token];
  sub_1004DE8DC();
  swift_unknownObjectRelease();
  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

id PlaylistCovers.ArtworkDataSource.init()()
{
  v1 = OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache;
  *&v0[v1] = [objc_allocWithZone(NSCache) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlaylistCovers.ArtworkDataSource();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_100242A90(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t PlaylistCovers.Recipe.textColor.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t PlaylistCovers.Recipe.textColor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t SharedListening.Reaction.senderID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SharedListening.Reaction.senderID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_100242BF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002456BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100242C20(uint64_t a1)
{
  v2 = sub_100245668();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100242C5C(uint64_t a1)
{
  v2 = sub_100245668();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlaylistCovers.Recipe.HexColors.encode(to:)(void *a1)
{
  v3 = sub_100004CB8(&qword_10063B530, &qword_100522798);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8[-v5];
  sub_100008C70(a1, a1[3]);
  sub_100245668();
  sub_1004DF30C();
  v8[15] = 0;
  sub_1004DEF1C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1004DEF1C();
  v8[13] = 2;
  sub_1004DEF1C();
  v8[12] = 3;
  sub_1004DEF1C();
  return (*(v4 + 8))(v6, v3);
}

double PlaylistCovers.Recipe.HexColors.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100245810(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_100242EB8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s9MusicCore14PlaylistCoversO6RecipeV9HexColorsV23__derived_struct_equalsySbAG_AGtFZ_0(v7, v8) & 1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PlaylistCovers.Recipe.rawJSONRepresentation()()
{
  sub_1004DD48C();
  __chkstk_darwin();
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D7ADC();
  swift_allocObject();
  sub_1004D7ACC();
  v5 = *(v0 + 80);
  v15[4] = *(v0 + 64);
  v15[5] = v5;
  v16 = *(v0 + 96);
  v6 = *(v0 + 16);
  v15[0] = *v0;
  v15[1] = v6;
  v7 = *(v0 + 48);
  v15[2] = *(v0 + 32);
  v15[3] = v7;
  sub_100245B04();
  v8 = sub_1004D7ABC();
  if (v1)
  {
  }

  else
  {
    v10 = v8;
    v11 = v9;
    sub_1004DD47C();
    v12 = sub_1004DD45C();
    if (!v13)
    {
      __break(1u);
      goto LABEL_7;
    }

    v4 = v12;
    v2 = v13;
    sub_100010598(v10, v11);
  }

  v12 = v4;
  v13 = v2;
LABEL_7:
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t sub_100243044()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x666E49726F6C6F63;
  if (*v0 != 2)
  {
    v2 = 0x6F6C6F4374786574;
  }

  if (*v0)
  {
    v1 = 0x6973736572707865;
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

uint64_t sub_1002430CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100245C30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100243100(uint64_t a1)
{
  v2 = sub_100245B58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024313C(uint64_t a1)
{
  v2 = sub_100245B58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlaylistCovers.Recipe.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100004CB8(&qword_10063B548, &qword_1005227A0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v13[-v7];
  sub_100008C70(a1, a1[3]);
  sub_100245B58();
  sub_1004DF30C();
  LOBYTE(v16) = 0;
  sub_1004DEF1C();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_1004DEF4C();
    v10 = *(v3 + 24);
    v11 = *(v3 + 56);
    v20[1] = *(v3 + 40);
    v20[2] = v11;
    v20[3] = *(v3 + 72);
    v12 = *(v3 + 40);
    v16 = *(v3 + 24);
    v17 = v12;
    v18 = *(v3 + 56);
    v19 = *(v3 + 72);
    v20[0] = v10;
    v15 = 2;
    sub_1002455F8(v20, v14);
    sub_100245BAC();
    sub_1004DEF5C();
    v14[0] = v16;
    v14[1] = v17;
    v14[2] = v18;
    v14[3] = v19;
    sub_100245C00(v14);
    v13[15] = 3;
    sub_1004DEF1C();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 PlaylistCovers.Recipe.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100245DA4(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_100243494(uint64_t a1, uint64_t a2)
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
  return _s9MusicCore14PlaylistCoversO6RecipeV23__derived_struct_equalsySbAE_AEtFZ_0(v11, v13) & 1;
}

void PlaylistCovers.Recipe.HexColors.init(from:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v21 = v11;
  v22 = v10;
  v20 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v13 = v12;
  v14 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v16 = v15;
  v17 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v19 = v18;

  *a5 = v22;
  a5[1] = v21;
  a5[2] = v20;
  a5[3] = v13;
  a5[4] = v14;
  a5[5] = v16;
  a5[6] = v17;
  a5[7] = v19;
}

uint64_t sub_1002435B8(uint64_t a1, unint64_t a2)
{
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_100004CB8(&qword_10063B6C0, &qword_100522C48);
  if (swift_dynamicCast())
  {
    sub_100035850(__src, &v43);
    sub_100008C70(&v43, v44);
    sub_1004D7D8C();
    __src[0] = v42;
    sub_100008D24(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10001074C(__src, &qword_10063B6C8, &qword_100522C50);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1004DEB6C();
  }

  sub_100244124(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_100244AB4(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin();
  v34[2] = v39;
  sub_1002441EC(sub_1002469C0, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1004D80DC();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1002440A8(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1004DD61C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1004DD64C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1004DEB6C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1002440A8(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1004DD62C();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1004D80EC();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1004D80EC();
    sub_100010584(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_100010584(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_100010530(*&__src[0], *(&__src[0] + 1));

  sub_100010598(v32, *(&v32 + 1));
  return v32;
}

uint64_t PlaylistCovers.Recipe.init(from:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v29 = *a1 + 1;
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 2);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v27 = v12;
  v28 = v11;
  v13 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v25 = v14;
  v26 = v13;
  v15 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v17 = v16;
  v18 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v20 = v19;

  v21 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v23 = v22;
  result = sub_10024527C(a1);
  *a2 = 3157553;
  a2[1] = 0xE300000000000000;
  a2[2] = v29;
  a2[3] = v28;
  a2[4] = v27;
  a2[5] = v26;
  a2[6] = v25;
  a2[7] = v15;
  a2[8] = v17;
  a2[9] = v18;
  a2[10] = v20;
  a2[11] = v21;
  a2[12] = v23;
  return result;
}

uint64_t sub_100243BEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100035C88;

  return v6();
}

uint64_t sub_100243CD4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100035B28;

  return v7();
}

uint64_t sub_100243DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_1000435A8(a3, v22 - v9);
  v11 = sub_1004DDA8C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10001074C(v10, &qword_100635240, &qword_1005171A0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1004DDA7C();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_1004DD9BC();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_1004DD52C() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_10001074C(a3, &qword_100635240, &qword_1005171A0);

    return v20;
  }

LABEL_8:
  sub_10001074C(a3, &qword_100635240, &qword_1005171A0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

unint64_t sub_1002440A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1004DD66C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1004DD63C();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t *sub_100244124@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1002449FC(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1004D7CEC();
      swift_allocObject();
      v8 = sub_1004D7C9C();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1004D80CC();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

void sub_1002441EC(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      return;
    }

    sub_100010598(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_100512890;
    sub_100010598(0, 0xC000000000000000);
    sub_1004D80AC();
    sub_100244690(*(v17 + 16), *(v17 + 24), a1, v10);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return;
    }

    *v4 = v17;
    goto LABEL_18;
  }

  if (!v8)
  {
    sub_100010598(v7, v6);
    v19[0] = v7;
    LOWORD(v19[1]) = v6;
    BYTE2(v19[1]) = BYTE2(v6);
    BYTE3(v19[1]) = BYTE3(v6);
    BYTE4(v19[1]) = BYTE4(v6);
    BYTE5(v19[1]) = BYTE5(v6);
    BYTE6(v19[1]) = BYTE6(v6);
    a1(&v17, v19, v19 + BYTE6(v6));
    v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
    *v4 = v19[0];
    v4[1] = v9;
    return;
  }

  v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_100010598(v7, v6);
  *v4 = xmmword_100512890;
  sub_100010598(0, 0xC000000000000000);
  v13 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v13 < v7)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (sub_1004D7CAC() && __OFSUB__(v7, sub_1004D7CDC()))
    {
LABEL_22:
      __break(1u);
    }

    sub_1004D7CEC();
    swift_allocObject();
    v14 = sub_1004D7C8C();

    v12 = v14;
  }

  if (v13 < v7)
  {
    __break(1u);
    goto LABEL_21;
  }

  sub_100244690(v7, v7 >> 32, a1, v15);

  v11 = v12 | 0x4000000000000000;
  if (v3)
  {
    *v4 = v7;
LABEL_18:
    v4[1] = v11;
    return;
  }

  *v4 = v7;
  v4[1] = v11;
}

_BYTE *sub_100244590@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1002449FC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100244B54(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100244BD0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_100244624(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_100244690(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *), __n128 a4)
{
  result = sub_1004D7CAC();
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  result = sub_1004D7CDC();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = sub_1004D7CCC();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  result = a3(&v15, &v9[v10], &v9[v10 + v14]);
  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t sub_100244744@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1004DEABC();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s9MusicCore14PlaylistCoversO6RecipeV9HexColorsV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1004DF08C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1004DF08C() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1004DF08C() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 1;
  }

  return sub_1004DF08C();
}

uint64_t _s9MusicCore14PlaylistCoversO6RecipeV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1004DF08C() & 1) == 0)
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v16 = a1[10];
  v17 = a1[9];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v14 = a2[10];
  v15 = a2[9];
  if ((a1[3] != a2[3] || a1[4] != a2[4]) && (sub_1004DF08C() & 1) == 0)
  {
    return 0;
  }

  if ((v5 != v9 || v6 != v10) && (sub_1004DF08C() & 1) == 0 || (v7 != v11 || v8 != v12) && (sub_1004DF08C() & 1) == 0 || (v17 != v15 || v16 != v14) && (sub_1004DF08C() & 1) == 0)
  {
    return 0;
  }

  if (a1[11] == a2[11] && a1[12] == a2[12])
  {
    return 1;
  }

  return sub_1004DF08C();
}

uint64_t sub_1002449FC(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100244AB4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1004D7CEC();
      swift_allocObject();
      sub_1004D7CBC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1004D80CC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100244B54(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1004D7CEC();
  swift_allocObject();
  result = sub_1004D7C9C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1004D80CC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100244BD0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1004D7CEC();
  swift_allocObject();
  result = sub_1004D7C9C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

id _s9MusicCore14PlaylistCoversO12ArtworkTokenC7rawJSON13playlistTitleAESgSS_SStcfC_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{

  v8 = sub_1002435B8(a1, a2);
  v10 = v9;
  sub_1004D7AAC();
  swift_allocObject();
  sub_1004D7A9C();
  sub_10024515C();
  sub_1004D7A8C();

  sub_100010598(v8, v10);
  v30[4] = v24;
  v30[5] = v25;
  v31 = v26;
  v30[0] = v20;
  v30[1] = v21;
  v30[2] = v22;
  v30[3] = v23;
  PlaylistCovers.Recipe.asCoverRepresentation(_:)(&v20, 180.0, 180.0);
  sub_100246990(v30);
  v11 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    v12 = v20;
    v27 = v21;
    v28 = v22;
    v29 = v23;
    v13 = type metadata accessor for PlaylistCovers.ArtworkToken();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
    *v15 = v12;
    *(v15 + 1) = v11;
    v16 = v28;
    *(v15 + 1) = v27;
    *(v15 + 2) = v16;
    *(v15 + 6) = v29;
    v17 = &v14[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
    *v17 = a3;
    *(v17 + 1) = a4;
    v19.receiver = v14;
    v19.super_class = v13;
    return objc_msgSendSuper2(&v19, "init");
  }

  else
  {

    return 0;
  }
}

unint64_t sub_10024515C()
{
  result = qword_10063B500;
  if (!qword_10063B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B500);
  }

  return result;
}

unint64_t sub_1002451B0()
{
  result = qword_10063B508;
  if (!qword_10063B508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10063B508);
  }

  return result;
}

id sub_1002452D0(uint64_t a1, double a2, double a3)
{
  v4 = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16);
  v23[0] = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation);
  v23[1] = v4;
  v23[2] = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32);
  v24 = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48);
  sub_100245220(v23, &v21);
  v5 = PlaylistCovers.Cover.Representation.stringRepresentation.getter();
  v7 = v6;
  sub_10024527C(v23);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1004DEAAC(19);

  v21 = 0xD000000000000011;
  v22 = 0x80000001004F21D0;
  v8 = a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle;
  v9 = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle);
  v10 = *(v8 + 8);

  v25._countAndFlagsBits = v9;
  v25._object = v10;
  sub_1004DD5FC(v25);

  v11 = v21;
  v12 = v22;
  v21 = v5;
  v22 = v7;

  v26._countAndFlagsBits = v11;
  v26._object = v12;
  sub_1004DD5FC(v26);

  v14 = v21;
  v13 = v22;
  v21 = 0x203A657A6973202CLL;
  v22 = 0xE800000000000000;
  v27._countAndFlagsBits = sub_1004DE44C();
  sub_1004DD5FC(v27);

  v15 = v21;
  v16 = v22;
  v21 = v14;
  v22 = v13;

  v28._countAndFlagsBits = v15;
  v28._object = v16;
  sub_1004DD5FC(v28);

  v17 = objc_allocWithZone(NSString);
  v18 = sub_1004DD3FC();

  v19 = [v17 initWithString:v18];

  return v19;
}

unint64_t sub_1002454B0()
{
  result = qword_10063B528;
  if (!qword_10063B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B528);
  }

  return result;
}

uint64_t sub_100245504()
{

  return swift_deallocObject();
}

double sub_100245578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100245590()
{

  return swift_deallocObject();
}

unint64_t sub_100245668()
{
  result = qword_10063B538;
  if (!qword_10063B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B538);
  }

  return result;
}

uint64_t sub_1002456BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x31726F6C6F63 && a2 == 0xE600000000000000;
  if (v4 || (sub_1004DF08C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x32726F6C6F63 && a2 == 0xE600000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x33726F6C6F63 && a2 == 0xE600000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x34726F6C6F63 && a2 == 0xE600000000000000)
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

uint64_t sub_100245810@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100004CB8(&qword_10063B6B8, &qword_100522C40);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - v7;
  sub_100008C70(a1, a1[3]);
  sub_100245668();
  sub_1004DF2FC();
  if (v2)
  {
    return sub_100008D24(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_1004DEE8C();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_1004DEE8C();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_1004DEE8C();
  v25 = v13;
  v33 = 3;
  v14 = sub_1004DEE8C();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  sub_1002455F8(&v28, v32);
  sub_100008D24(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  result = sub_100245C00(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

unint64_t sub_100245B04()
{
  result = qword_10063B540;
  if (!qword_10063B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B540);
  }

  return result;
}

unint64_t sub_100245B58()
{
  result = qword_10063B550;
  if (!qword_10063B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B550);
  }

  return result;
}

unint64_t sub_100245BAC()
{
  result = qword_10063B558;
  if (!qword_10063B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B558);
  }

  return result;
}

uint64_t sub_100245C30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1004DF08C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEC00000064496E6FLL || (sub_1004DF08C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E49726F6C6F63 && a2 == 0xE90000000000006FLL || (sub_1004DF08C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xE900000000000072)
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

void sub_100245DA4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = sub_100004CB8(&qword_10063B6A8, &qword_100522C38);
  v5 = *(v39 - 8);
  __chkstk_darwin();
  v7 = &v19 - v6;
  sub_100008C70(a1, a1[3]);
  sub_100245B58();
  sub_1004DF2FC();
  if (v2)
  {
    sub_100008D24(a1);
  }

  else
  {
    LOBYTE(v25[0]) = 0;
    v8 = sub_1004DEE8C();
    v10 = v9;
    v21 = v8;
    LOBYTE(v25[0]) = 1;
    v20 = sub_1004DEEBC();
    v33 = 2;
    sub_100246904();
    sub_1004DEECC();
    v35 = v34[0];
    v36 = v34[1];
    v37 = v34[2];
    v38 = v34[3];
    v32 = 3;
    v11 = sub_1004DEE8C();
    v12 = *(v5 + 8);
    v14 = v13;
    v12(v7, v39);
    v15 = v21;
    *&v22 = v21;
    *(&v22 + 1) = v10;
    *&v23[0] = v20;
    *(v23 + 8) = v35;
    *(&v23[1] + 8) = v36;
    *(&v23[2] + 8) = v37;
    *(&v23[3] + 8) = v38;
    *(&v23[4] + 1) = v11;
    v24 = v14;
    sub_100246958(&v22, v25);
    sub_100008D24(a1);
    v25[0] = v15;
    v25[1] = v10;
    v26 = v35;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v25[2] = v20;
    v30 = v11;
    v31 = v14;
    sub_100246990(v25);
    v16 = v23[4];
    *(a2 + 64) = v23[3];
    *(a2 + 80) = v16;
    *(a2 + 96) = v24;
    v17 = v23[0];
    *a2 = v22;
    *(a2 + 16) = v17;
    v18 = v23[2];
    *(a2 + 32) = v23[1];
    *(a2 + 48) = v18;
  }
}

__n128 sub_1002460CC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1002460F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_100246140(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1002461A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1002461F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100246284()
{
  result = qword_10063B670;
  if (!qword_10063B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B670);
  }

  return result;
}

unint64_t sub_1002462DC()
{
  result = qword_10063B678;
  if (!qword_10063B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B678);
  }

  return result;
}

unint64_t sub_100246334()
{
  result = qword_10063B680;
  if (!qword_10063B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B680);
  }

  return result;
}

unint64_t sub_10024638C()
{
  result = qword_10063B688;
  if (!qword_10063B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B688);
  }

  return result;
}

unint64_t sub_1002463E4()
{
  result = qword_10063B690;
  if (!qword_10063B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B690);
  }

  return result;
}

unint64_t sub_10024643C()
{
  result = qword_10063B698;
  if (!qword_10063B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B698);
  }

  return result;
}

uint64_t sub_100246490()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1002464D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100035B28;

  return sub_100242618(v2, v3, v4);
}

uint64_t sub_100246590()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100035C88;

  return sub_100243BEC(v2, v3, v4);
}

uint64_t sub_100246650()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100246690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035C88;

  return sub_100243CD4(a1, v4, v5, v6);
}

uint64_t sub_10024675C()
{

  return swift_deallocObject();
}

uint64_t sub_100246794(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035C88;

  return sub_10012B324(a1, v4);
}

uint64_t sub_10024684C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035B28;

  return sub_10012B324(a1, v4);
}

unint64_t sub_100246904()
{
  result = qword_10063B6B0;
  if (!qword_10063B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B6B0);
  }

  return result;
}

void *sub_1002469C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_100244624(sub_100246A28, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t PlaylistCovers.Cover.Representation.stringRepresentation.getter()
{
  sub_1004DEAAC(68);
  v6._countAndFlagsBits = 0xD000000000000020;
  v6._object = 0x80000001004F2370;
  sub_1004DD5FC(v6);
  v7._countAndFlagsBits = sub_1004DEFFC();
  sub_1004DD5FC(v7);

  v8._object = 0x80000001004F23A0;
  v8._countAndFlagsBits = 0xD000000000000010;
  sub_1004DD5FC(v8);
  v9._countAndFlagsBits = PlaylistCovers.RecipeColors.description.getter(v0[2], v0[3], v0[4], v0[5]);
  sub_1004DD5FC(v9);

  v10._countAndFlagsBits = 0x6F4374786574202CLL;
  v10._object = 0xED0000203A726F6CLL;
  sub_1004DD5FC(v10);
  v1 = [v0[6] description];
  v2 = sub_1004DD43C();
  v4 = v3;

  v11._countAndFlagsBits = v2;
  v11._object = v4;
  sub_1004DD5FC(v11);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  sub_1004DD5FC(v12);
  return 0;
}

void static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:)(void *a1, char **a2, uint64_t a3, uint64_t a4, id a5, CGFloat a6, CGFloat a7)
{
  v43 = a1;
  sub_1004D83FC();
  __chkstk_darwin();
  v13 = sub_1004DD3EC();
  isEscapingClosureAtFileLocation = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v41 - v17;
  if (!a4)
  {
LABEL_7:
    sub_1004DD37C();
    (*(isEscapingClosureAtFileLocation + 16))(v16, v18, v13);
    if (qword_100633A80 != -1)
    {
      goto LABEL_23;
    }

    goto LABEL_8;
  }

  v42 = a5;

  v19 = String.trim()();

  v20 = (v19._object >> 56) & 0xF;
  if ((v19._object & 0x2000000000000000) == 0)
  {
    v20 = v19._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    a5 = v42;
    goto LABEL_7;
  }

  a5 = v42;
  while (1)
  {
    v23 = sub_1004DD3FC();

    v24 = [v23 _containsEmoji];

    v25 = 270.0;
    if (a6 > 270.0)
    {
      v25 = a6;
    }

    v26 = v24 ? v25 : a6;
    v27 = v24 ? v25 : a7;
    v18 = &_s7SwiftUI18RoundedCornerStyleO8circularyA2CmFWC_ptr;
    v28 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{v26, v27}];
    v13 = swift_allocObject();
    *(v13 + 16) = v26;
    *(v13 + 24) = v27;
    v29 = v43;
    *(v13 + 32) = v43;
    *(v13 + 40) = a5;
    *(v13 + 48) = a3;
    *(v13 + 56) = a4;
    *(v13 + 64) = a2;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_100245554;
    *(v30 + 24) = v13;
    v48 = sub_100215AE0;
    v49 = v30;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_10001E3C4;
    v47 = &unk_1005E7AC8;
    v31 = _Block_copy(&aBlock);
    v32 = v29;
    a5 = a5;
    v33 = a2;

    a2 = &selRef_scaledValueForValue_;
    v34 = [v28 imageWithActions:v31];
    _Block_release(v31);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_23:
    swift_once();
LABEL_8:
    v21 = qword_100671958;
    sub_1004D838C();
    a3 = sub_1004DD4AC();
    a4 = v22;
    (*(isEscapingClosureAtFileLocation + 8))(v18, v13);
  }

  v50.width = v26;
  v50.height = v27;
  v51.width = a6;
  v51.height = a7;
  if (CGSizeEqualToSize(v50, v51))
  {
  }

  else
  {
    v35 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = a6;
    *(v36 + 32) = a7;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_100247EB4;
    *(v37 + 24) = v36;
    v48 = sub_1002486C8;
    v49 = v37;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_10001E3C4;
    v47 = &unk_1005E7B40;
    v38 = _Block_copy(&aBlock);
    v39 = v34;

    [v35 imageWithActions:v38];

    _Block_release(v38);
    v40 = swift_isEscapingClosureAtFileLocation();

    if (v40)
    {
      __break(1u);
    }
  }
}

uint64_t PlaylistCovers.Cover.Representation.init(expression:backgroundImage:recipeColors:textColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t PlaylistCovers.Cover.accessibilityIdentifier.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

void *PlaylistCovers.Cover.Representation.recipeColors.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v1;
  v6 = v2;
  v7 = v4;
  v8 = v3;
  return v1;
}

uint64_t PlaylistCovers.Cover.Representation.hash(into:)(uint64_t a1)
{
  sub_1004DF27C(*v1 + 1);
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  return sub_1004DE60C();
}

Swift::Int PlaylistCovers.Cover.Representation.hashValue.getter()
{
  sub_1004DF26C();
  sub_1004DF27C(*v0 + 1);
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  return sub_1004DF2BC();
}

uint64_t sub_100247388(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s9MusicCore14PlaylistCoversO5CoverV14RepresentationV2eeoiySbAG_AGtFZ_0(v5, v7) & 1;
}

Swift::Int sub_1002473E4()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(v1 + 1);
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  return sub_1004DF2BC();
}

uint64_t sub_10024748C(uint64_t a1)
{
  sub_1004DF27C(*v1 + 1);
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  return sub_1004DE60C();
}

Swift::Int sub_10024751C()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(v1 + 1);
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  return sub_1004DF2BC();
}

__n128 PlaylistCovers.Cover.init(image:representation:)@<Q0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 5);
  v22 = *(a2 + 6);
  v20 = *(a2 + 24);
  v21 = *(a2 + 8);
  sub_100245220(a2, v23);
  v8 = PlaylistCovers.Cover.Representation.stringRepresentation.getter();
  v10 = v9;
  v11 = *a2;
  v12 = PlaylistCovers.Expression.accessibilityLabel.getter(*a2);
  v14 = v13;
  sub_10024527C(a2);
  v15 = PlaylistCovers.Expression.accessibilityIdentifier.getter(v11);
  *a3 = a1;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10;
  *(a3 + 24) = v6;
  result = v21;
  *(a3 + 32) = v21;
  *(a3 + 48) = v20;
  *(a3 + 64) = v7;
  *(a3 + 72) = v22;
  *(a3 + 80) = v12;
  *(a3 + 88) = v14;
  *(a3 + 96) = v15;
  *(a3 + 104) = v17;
  *(a3 + 112) = v18;
  *(a3 + 120) = v19;
  return result;
}

double PlaylistCovers.Cover.init(image:id:accessibilityLabel:accessibilityIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  result = 0.0;
  *(a9 + 24) = 0u;
  *(a9 + 40) = 0u;
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0;
  *(a9 + 80) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  return result;
}

double sub_1002476BC@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

uint64_t sub_1002476C8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s9MusicCore14PlaylistCoversO5CoverV23__derived_struct_equalsySbAE_AEtFZ_0(v13, v14) & 1;
}

id sub_100247750()
{
  v0 = [objc_opt_self() whiteColor];
  sub_100006F10(0, &qword_10063B6E0, UIColor_ptr);
  v1 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(255, 128, 128, 1.0);
  v2 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(255, 230, 230, 1.0);
  result = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(250, 35, 59, 1.0);
  qword_100671EB8 = v0;
  unk_100671EC0 = v1;
  qword_100671EC8 = v2;
  unk_100671ED0 = result;
  return result;
}

id sub_100247808()
{
  sub_100006F10(0, &qword_10063B6E0, UIColor_ptr);
  v0 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(238, 238, 238, 1.0);
  v1 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(187, 187, 187, 1.0);
  v2 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(70, 70, 70, 1.0);
  result = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(17, 17, 17, 1.0);
  qword_100671ED8 = v0;
  qword_100671EE0 = v1;
  qword_100671EE8 = v2;
  qword_100671EF0 = result;
  return result;
}

void sub_1002478B4(int a1, id a2, double a3, double a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  [a2 drawInRect:{0.0, 0.0, a3, a4}];
  v11 = sub_1004DD58C();
  v12 = objc_opt_self();
  [a5 scale];
  if (v11 <= 30)
  {
    v13 = 33.0;
  }

  else
  {
    v13 = 27.0;
  }

  sub_1004D872C();
  v14 = [v12 systemFontOfSize:? weight:?];
  v15 = [v14 fontDescriptor];

  v16 = kCTFontIgnoreLegibilityWeightAttribute;
  sub_100004CB8(&qword_10063B6E8, &qword_100522E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005126C0;
  *(inited + 32) = v16;
  *(inited + 40) = 1;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = kCTFontOpticalSizeAttribute;
  *(inited + 104) = &type metadata for CGFloat;
  *(inited + 80) = v13;
  v18 = v16;
  v19 = kCTFontOpticalSizeAttribute;
  v45 = v18;
  v44 = v19;
  v20 = v15;
  sub_10005FFD4(inited);
  swift_setDeallocating();
  sub_100004CB8(&qword_1006358D8, &qword_100516BE8);
  swift_arrayDestroy();
  type metadata accessor for AttributeName(0);
  sub_100248664();
  isa = sub_1004DD1FC().super.isa;

  v42 = [v20 fontDescriptorByAddingAttributes:isa];

  v22 = [v12 fontWithDescriptor:v42 size:0.0];
  [a5 scale];
  sub_1004D872C();
  v24 = v23;
  v25 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v25 setMinimumLineHeight:v24];
  [v25 setMaximumLineHeight:v24];
  sub_100004CB8(&qword_10063B6F0, &qword_100522E58);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_100511B10;
  *(v26 + 32) = NSFontAttributeName;
  v27 = sub_100006F10(0, &qword_10063B6F8, UIFont_ptr);
  *(v26 + 40) = v22;
  *(v26 + 64) = v27;
  *(v26 + 72) = NSForegroundColorAttributeName;
  v28 = sub_100006F10(0, &qword_10063B6E0, UIColor_ptr);
  *(v26 + 80) = a8;
  *(v26 + 104) = v28;
  *(v26 + 112) = NSKernAttributeName;
  *(v26 + 120) = -0.25 / (270.0 / a3);
  *(v26 + 144) = &type metadata for CGFloat;
  *(v26 + 152) = NSParagraphStyleAttributeName;
  *(v26 + 184) = sub_100006F10(0, &qword_10063B700, NSMutableParagraphStyle_ptr);
  *(v26 + 160) = v25;
  v29 = NSFontAttributeName;
  v30 = v22;
  v31 = NSForegroundColorAttributeName;
  v32 = a8;
  v33 = NSKernAttributeName;
  v34 = NSParagraphStyleAttributeName;
  v35 = v25;
  sub_10005FFF8(v26);
  swift_setDeallocating();
  sub_100004CB8(&qword_1006358C8, &qword_100516BD8);
  swift_arrayDestroy();
  v36 = sub_1004D96EC();
  sub_1004D96DC();
  v37 = objc_allocWithZone(v36);

  v38 = sub_1004D96FC();
  v39 = sub_1004D96CC();

  [a5 scale];
  sub_1004D872C();
  sub_1004DDF0C();
  [v39 drawWithRect:1 options:0 context:{sub_10001087C(0.0, 0.0, a3, a4, v40, v41)}];
}

uint64_t sub_100247DE4()
{

  return swift_deallocObject();
}

double sub_100247E44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100247E7C()
{

  return swift_deallocObject();
}

uint64_t sub_100247ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063B6D0, &qword_100522C68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s9MusicCore14PlaylistCoversO5CoverV14RepresentationV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v4 = v3;
  v26 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v27 = v5;
  v25 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v29 = v6;
  v23 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v30 = v7;
  v8 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v10 = v9;
  v11 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v13 = v12;
  v24 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v28 = v14;
  v22 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v16 = v15;
  if (v2 == v8 && v4 == v10)
  {
  }

  else
  {
    v17 = sub_1004DF08C();

    if ((v17 & 1) == 0)
    {

      goto LABEL_21;
    }
  }

  if (v26 == v11 && v27 == v13)
  {
  }

  else
  {
    v18 = sub_1004DF08C();

    if ((v18 & 1) == 0)
    {

      goto LABEL_21;
    }
  }

  if (v25 == v24 && v29 == v28)
  {

    goto LABEL_14;
  }

  v19 = sub_1004DF08C();

  if ((v19 & 1) == 0)
  {
LABEL_21:

    return 0;
  }

LABEL_14:
  if (v23 == v22 && v30 == v16)
  {

LABEL_19:
    sub_100006F10(0, &qword_1006381E0, NSObject_ptr);
    return sub_1004DE5FC() & 1;
  }

  v20 = sub_1004DF08C();

  if (v20)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t _s9MusicCore14PlaylistCoversO5CoverV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_100006F10(0, &qword_1006381E0, NSObject_ptr);
  if ((sub_1004DE5FC() & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1004DF08C() & 1) == 0)
  {
    goto LABEL_13;
  }

  v35 = *(a1 + 24);
  v5 = *(a1 + 56);
  v36 = *(a1 + 40);
  v37 = v5;
  v6 = *(a1 + 72);
  v38 = v6;
  v7 = *(a2 + 40);
  v32[0] = *(a2 + 24);
  v32[1] = v7;
  v33 = *(a2 + 56);
  v8 = *(a2 + 72);
  v34 = v8;
  v9 = v35;
  v10 = v36;
  v11 = v32[0];
  v12 = *(&v33 + 1);
  if (!*(&v35 + 1))
  {
    if (!*(&v32[0] + 1))
    {
      v18 = *(&v37 + 1);
      v19 = v36;
      v20 = v37;
      v21 = v35;
      v22 = *(&v36 + 1);
      sub_100247ED0(&v35, v43);
      sub_100247ED0(v32, v43);
      sub_1002485F4(v21, 0, v19, v22, v20, v18, v6);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (!*(&v32[0] + 1))
  {
LABEL_12:
    v13 = *(&v37 + 1);
    v14 = v37;
    v26 = *(&v33 + 1);
    v28 = v7;
    v15 = *(&v36 + 1);
    v30 = v33;
    sub_100247ED0(&v35, v43);
    sub_100247ED0(v32, v43);
    sub_1002485F4(v9, *(&v9 + 1), v10, v15, v14, v13, v6);
    sub_1002485F4(v11, *(&v11 + 1), v28, *(&v28 + 1), v30, v26, v8);
    goto LABEL_13;
  }

  LOBYTE(v43[0]) = v32[0];
  v43[1] = *(&v32[0] + 1);
  v44 = v7;
  v45 = v33;
  v46 = v8;
  LOBYTE(v39[0]) = v35;
  v39[1] = *(&v35 + 1);
  v40 = v36;
  v41 = v37;
  v42 = v6;
  v25 = v37;
  v24 = *(&v36 + 1);
  v29 = v33;
  v27 = v7;
  sub_100247ED0(&v35, v31);
  sub_100247ED0(v32, v31);
  v23 = _s9MusicCore14PlaylistCoversO5CoverV14RepresentationV2eeoiySbAG_AGtFZ_0(v39, v43);
  sub_1002485F4(v11, *(&v11 + 1), v27, *(&v27 + 1), v29, v12, v8);
  sub_1002485F4(v9, *(&v9 + 1), v10, v24, v25, *(&v25 + 1), v6);
  if ((v23 & 1) == 0)
  {
LABEL_13:
    v16 = 0;
    return v16 & 1;
  }

LABEL_16:
  if ((*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (sub_1004DF08C() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (*(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104))
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1004DF08C();
  }

  return v16 & 1;
}

unint64_t sub_1002484A0()
{
  result = qword_10063B6D8;
  if (!qword_10063B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B6D8);
  }

  return result;
}

uint64_t sub_100248504(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10024851C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_100248564(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1002485F4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (a2)
  {
  }
}

unint64_t sub_100248664()
{
  result = qword_100634D40;
  if (!qword_100634D40)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100634D40);
  }

  return result;
}

uint64_t PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, unsigned __int8 a6, double a7, double a8)
{
  if (a6 > 3u)
  {
    if (a6 > 5u)
    {
      if (a6 == 6)
      {
        sub_10024E460(a1, a2, a3, a4, a5, a7, a8);
        goto LABEL_12;
      }

      sub_100249854(a1, a2, a3, a4, a5, a7, a8);
    }

    else
    {
      if (a6 == 4)
      {
        sub_1002494AC(a1, a2, a3, a4, a5, a7, a8);
        goto LABEL_12;
      }

      sub_100249680(a1, a2, a3, a4, a5, a7, a8);
    }

LABEL_17:
    v9 = v11;
    v10 = &selRef_whiteColor;
    goto LABEL_18;
  }

  if (a6 > 1u)
  {
    if (a6 == 2)
    {
      sub_100249104(a1, a2, a3, a4, a5, a7, a8);
      goto LABEL_12;
    }

    sub_1002492D8(a1, a2, a3, a4, a5, a7, a8);
    goto LABEL_17;
  }

  if (a6)
  {
    sub_100248F24(a1, a2, a3, a4, a5, a7, a8);
    goto LABEL_17;
  }

  sub_100248D50(a1, a2, a3, a4, a5, a7, a8);
LABEL_12:
  v9 = v8;
  v10 = &selRef_blackColor;
LABEL_18:
  v12 = [objc_opt_self() *v10];
  return v9;
}

uint64_t PlaylistCovers.Expression.accessibilityLabel.getter(unsigned __int8 a1)
{
  sub_1004D83FC();
  __chkstk_darwin();
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_1004DD37C();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v7 = qword_100671958;
  sub_1004D838C();
  v8 = sub_1004DD4AC();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t PlaylistCovers.Expression.accessibilityIdentifier.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        if (qword_100634340 != -1)
        {
          swift_once();
        }

        v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7;
      }

      else
      {
        if (qword_100634348 != -1)
        {
          swift_once();
        }

        v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8;
      }
    }

    else if (a1 == 4)
    {
      if (qword_100634330 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5;
    }

    else
    {
      if (qword_100634338 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_100634320 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3;
    }

    else
    {
      if (qword_100634328 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4;
    }
  }

  else if (a1)
  {
    if (qword_100634318 != -1)
    {
      swift_once();
    }

    v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2;
  }

  else
  {
    if (qword_100634310 != -1)
    {
      swift_once();
    }

    v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1;
  }

  v2 = *v1;

  return v2;
}

id PlaylistCovers.Expression.textColor.getter(char a1)
{
  v1 = [objc_opt_self() *off_1005E8340[a1]];

  return v1;
}

void sub_100248D50(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10024EB74;
  *(v15 + 24) = v14;
  v21[4] = sub_100215AE0;
  v21[5] = v15;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_10001E3C4;
  v21[3] = &unk_1005E7DF0;
  v16 = _Block_copy(v21);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

void sub_100248F24(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  *(v14 + 64) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10024EBFC;
  *(v15 + 24) = v14;
  v22[4] = sub_1002486C8;
  v22[5] = v15;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10001E3C4;
  v22[3] = &unk_1005E7E68;
  v16 = _Block_copy(v22);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = v13;

  [v21 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }
}

void sub_100249104(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10024EC30;
  *(v15 + 24) = v14;
  v21[4] = sub_1002486C8;
  v21[5] = v15;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_10001E3C4;
  v21[3] = &unk_1005E7F58;
  v16 = _Block_copy(v21);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

void sub_1002492D8(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10024EC48;
  *(v15 + 24) = v14;
  v21[4] = sub_1002486C8;
  v21[5] = v15;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_10001E3C4;
  v21[3] = &unk_1005E7FD0;
  v16 = _Block_copy(v21);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

void sub_1002494AC(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10024EC60;
  *(v15 + 24) = v14;
  v21[4] = sub_1002486C8;
  v21[5] = v15;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_10001E3C4;
  v21[3] = &unk_1005E8048;
  v16 = _Block_copy(v21);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

void sub_100249680(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10024EC78;
  *(v15 + 24) = v14;
  v21[4] = sub_1002486C8;
  v21[5] = v15;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_10001E3C4;
  v21[3] = &unk_1005E80C0;
  v16 = _Block_copy(v21);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

void sub_100249854(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v15 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6 * 1.1, a7 * 1.1}];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a6 * 1.1;
  *(v16 + 56) = a7 * 1.1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10024ED94;
  *(v17 + 24) = v16;
  v52 = sub_1002486C8;
  v53 = v17;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10001E3C4;
  v51 = &unk_1005E8228;
  v18 = _Block_copy(&aBlock);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;

  v23 = [v15 imageWithActions:v18];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_8;
  }

  v46 = v21;
  v47 = v15;
  [v23 scale];
  v25 = v24;
  [v23 scale];
  v27 = v26;
  v28 = [v23 CGImage];
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v29 = v28;
  v30 = v14;
  v55.size.height = v27 * a7;
  v55.origin.y = v27 * a7 * 0.05;
  v55.size.width = v25 * a6;
  v55.origin.x = v25 * a6 * 0.05;
  v31 = CGImageCreateWithImageInRect(v28, v55);

  if (v31)
  {
    v32 = [objc_allocWithZone(UIImage) initWithCGImage:v31];

    v54 = v32;
    v33 = swift_allocObject();
    *(v33 + 16) = a6;
    *(v33 + 24) = a7;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_10024EDC4;
    *(v34 + 24) = v33;
    v52 = sub_1002486C8;
    v53 = v34;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_10001E3C4;
    v51 = &unk_1005E82A0;
    v35 = _Block_copy(&aBlock);

    v36 = [v14 imageWithActions:v35];
    _Block_release(v35);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if ((v35 & 1) == 0)
    {
      v37 = swift_allocObject();
      *(v37 + 16) = v19;
      *(v37 + 24) = v20;
      *(v37 + 32) = v46;
      *(v37 + 40) = v22;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = a6;
      *(v37 + 72) = a7;
      *(v37 + 80) = v36;
      *(v37 + 88) = &v54;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_10024EE24;
      *(v38 + 24) = v37;
      v52 = sub_1002486C8;
      v53 = v38;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = sub_10001E3C4;
      v51 = &unk_1005E8318;
      v39 = _Block_copy(&aBlock);
      v40 = v19;
      v41 = v20;
      v42 = v46;
      v43 = v22;
      v44 = v36;

      [v30 imageWithActions:v39];

      _Block_release(v39);
      LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

      if ((v39 & 1) == 0)
      {
        v45 = v54;

        return;
      }

      goto LABEL_9;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
}

Swift::Int sub_100249DA8()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(v1 + 1);
  return sub_1004DF2BC();
}

Swift::Int sub_100249E20()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(v1 + 1);
  return sub_1004DF2BC();
}

uint64_t sub_100249E64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore14PlaylistCoversO10ExpressionO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  return _swift_task_switch(sub_100249EDC, 0, 0);
}

uint64_t sub_100249EDC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = sub_100004CB8(&qword_10063B708, &qword_100522E68);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v7;
  *(v6 + 56) = v8;
  *(v6 + 72) = v1;
  v9 = sub_100004CB8(&qword_10063B710, &qword_100522E80);
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_10024A01C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v5, v9, 0, 0, &unk_100522E78, v6, v5);
}

uint64_t sub_10024A01C()
{

  return _swift_task_switch(sub_10024A134, 0, 0);
}

uint64_t sub_10024A14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  *(v10 + 168) = a7;
  *(v10 + 176) = a8;
  *(v10 + 152) = a5;
  *(v10 + 160) = a6;
  *(v10 + 144) = a4;
  *(v10 + 128) = a9;
  *(v10 + 136) = a10;
  *(v10 + 112) = a2;
  *(v10 + 120) = a3;
  *(v10 + 104) = a1;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v10 + 184) = swift_task_alloc();
  *(v10 + 192) = swift_task_alloc();
  v11 = sub_100004CB8(&qword_10063B730, &qword_100522F78);
  *(v10 + 200) = v11;
  *(v10 + 208) = *(v11 - 8);
  *(v10 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_10024A270, 0, 0);
}

uint64_t sub_10024A270()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v39 = **(v0 + 112);
    v3 = (v1 + 32);
    v38 = sub_1004DDA8C();
    v4 = *(v38 - 8);
    v37 = *(v4 + 56);
    v36 = (v4 + 48);
    v35 = (v4 + 8);
    do
    {
      v40 = v2;
      v6 = *(v0 + 168);
      v5 = *(v0 + 176);
      v7 = *(v0 + 152);
      v8 = *(v0 + 160);
      v9 = *(v0 + 144);
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v12 = v3 + 1;
      v13 = *v3;
      v41 = v12;
      v37(*(v0 + 192), 1, 1, v38);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = v13;
      *(v14 + 40) = v11;
      *(v14 + 48) = v10;
      *(v14 + 56) = v9;
      *(v14 + 64) = v7;
      *(v14 + 72) = v8;
      *(v14 + 80) = v6;
      *(v14 + 88) = v5;
      v15 = v9;
      v16 = v7;
      v17 = v8;
      v18 = v6;
      v19 = v5;
      v20 = swift_taskGroup_addPending();
      v21 = *(v0 + 192);
      if (v20)
      {
        v22 = *(v0 + 184);
        sub_1000435A8(v21, v22);
        v23 = (*v36)(v22, 1, v38);
        v24 = *(v0 + 184);
        if (v23 == 1)
        {
          sub_100046C18(*(v0 + 184));
        }

        else
        {
          sub_1004DDA7C();
          (*v35)(v24, v38);
        }

        v3 = v41;
        if (*(v14 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v25 = sub_1004DD9BC();
          v27 = v26;
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v28 = swift_allocObject();
        *(v28 + 16) = &unk_100522F88;
        *(v28 + 24) = v14;

        sub_100004CB8(&qword_10063B708, &qword_100522E68);
        v29 = v27 | v25;
        if (v27 | v25)
        {
          v29 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v25;
          *(v0 + 40) = v27;
        }

        v30 = *(v0 + 192);
        *(v0 + 72) = 1;
        *(v0 + 80) = v29;
        *(v0 + 88) = v39;
        swift_task_create();

        sub_100046C18(v30);
      }

      else
      {
        sub_100046C18(v21);

        v3 = v41;
      }

      v2 = v40 - 1;
    }

    while (v40 != 1);
  }

  sub_100004CB8(&qword_10063B708, &qword_100522E68);
  sub_1004DD9FC();
  *(v0 + 224) = _swiftEmptyDictionarySingleton;
  v31 = sub_100042B08(&qword_10063B738, &qword_10063B730, &qword_100522F78, &protocol conformance descriptor for TaskGroup<A>.Iterator);
  v32 = swift_task_alloc();
  *(v0 + 232) = v32;
  *v32 = v0;
  v32[1] = sub_10024A648;
  v33 = *(v0 + 200);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 48, v33, v31);
}

uint64_t sub_10024A648()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 216);
    v6 = v2 + 200;
    v4 = *(v2 + 200);
    v5 = *(v6 + 8);

    (*(v5 + 8))(v3, v4);

    v7 = CFRange.init(_:);
  }

  else
  {
    v7 = sub_10024A798;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10024A798()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 224);
  if (v1)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v9 = v1;
    v10 = v7;
    v11 = v9;
    v12 = v10;
    v13 = v6;
    v14 = v5;
    v15 = v3;
    v16 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 96) = v2;
    v18 = sub_100056EC0(v8);
    v20 = *(v2 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v3) = v19;
      if (*(*(v0 + 224) + 24) < v23)
      {
        sub_100059BBC(v23, isUniquelyReferenced_nonNull_native);
        v18 = sub_100056EC0(v8);
        if ((v3 & 1) != (v24 & 1))
        {

          return sub_1004DF16C();
        }

LABEL_21:
        v46 = *(v0 + 96);
        v48 = *(v0 + 160);
        v47 = *(v0 + 168);
        v50 = *(v0 + 144);
        v49 = *(v0 + 152);
        if (v3)
        {
          v51 = v46[7] + 56 * v18;
          v52 = *(v51 + 8);
          v53 = *(v51 + 16);
          v54 = *(v51 + 24);
          v55 = *(v51 + 32);
          v56 = *(v51 + 40);
          v57 = *(v51 + 48);
          *v51 = v8;
          *(v51 + 8) = v11;
          *(v51 + 16) = v50;
          *(v51 + 24) = v49;
          *(v51 + 32) = v48;
          *(v51 + 40) = v47;
          *(v51 + 48) = v12;
        }

        else
        {
          v46[(v18 >> 6) + 8] |= 1 << v18;
          *(v46[6] + v18) = v8;
          v58 = v46[7] + 56 * v18;
          *v58 = v8;
          *(v58 + 8) = v11;
          *(v58 + 16) = v50;
          *(v58 + 24) = v49;
          *(v58 + 32) = v48;
          *(v58 + 40) = v47;
          *(v58 + 48) = v12;

          v62 = v46[2];
          v22 = __OFADD__(v62, 1);
          v63 = v62 + 1;
          if (v22)
          {
            __break(1u);
            return dispatch thunk of AsyncIteratorProtocol.next()(v59, v60, v61);
          }

          v46[2] = v63;
        }

        *(v0 + 224) = v46;
        v64 = sub_100042B08(&qword_10063B738, &qword_10063B730, &qword_100522F78, &protocol conformance descriptor for TaskGroup<A>.Iterator);
        v65 = swift_task_alloc();
        *(v0 + 232) = v65;
        *v65 = v0;
        v65[1] = sub_10024A648;
        v60 = *(v0 + 200);
        v59 = v0 + 48;
        v61 = v64;

        return dispatch thunk of AsyncIteratorProtocol.next()(v59, v60, v61);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }
    }

    v66 = v18;
    sub_10005CD80();
    v18 = v66;
    goto LABEL_21;
  }

  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
  v67 = v0;
  do
  {
    if (*(v2 + 16))
    {
      v29 = sub_100056EC0(*(&off_1005D3460 + v26 + 32));
      if (v30)
      {
        v31 = *(v2 + 56) + 56 * v29;
        v69 = *v31;
        v32 = *(v31 + 16);
        v33 = *(v31 + 24);
        v34 = *(v31 + 32);
        v35 = *(v31 + 40);
        v36 = *(v31 + 48);
        v68 = *(v31 + 8);
        v37 = v32;
        v38 = v33;
        v39 = v34;
        v40 = v35;
        v41 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_10003AEE8(0, *(v27 + 2) + 1, 1, v27);
        }

        v43 = *(v27 + 2);
        v42 = *(v27 + 3);
        if (v43 >= v42 >> 1)
        {
          v27 = sub_10003AEE8((v42 > 1), v43 + 1, 1, v27);
        }

        *(v27 + 2) = v43 + 1;
        v28 = &v27[56 * v43];
        v28[32] = v69;
        v0 = v67;
        *(v28 + 5) = v68;
        *(v28 + 6) = v37;
        *(v28 + 7) = v38;
        *(v28 + 8) = v39;
        *(v28 + 9) = v40;
        *(v28 + 10) = v41;
      }
    }

    ++v26;
  }

  while (v26 != 8);
  v44 = *(v0 + 104);

  *v44 = v27;

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_10024AC0C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 64) = a10;
  *(v10 + 72) = v12;
  *(v10 + 48) = a8;
  *(v10 + 56) = a9;
  *(v10 + 40) = a7;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 80) = a6;
  *(v10 + 16) = a1;
  return _swift_task_switch(sub_10024AC48, 0, 0);
}

uint64_t sub_10024AC48()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = *(v0 + 80);
  *v8 = v9;
  *(v8 + 8) = PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(v5, v3, v4, v1, v2, v9, v6, v7);
  *(v8 + 16) = v10;
  v11 = *(v0 + 8);

  return v11();
}

CGColorSpaceRef sub_10024ACC4()
{
  result = CGColorSpaceCreateDeviceRGB();
  qword_100671EF8 = result;
  return result;
}

void sub_10024ACE4(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, uint64_t a6, void *a7)
{
  v13 = [a1 CGContext];
  v14 = [a2 CGColor];
  CGContextSetFillColorWithColor(v13, v14);

  [a1 fillRect:{0.0, 0.0, a4, a5}];
  if (qword_100633DF8 != -1)
  {
    swift_once();
  }

  v15 = qword_100671EF8;
  sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100511A20;
  *(v16 + 32) = [a2 CGColor];
  *(v16 + 40) = [a7 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_1004DD85C().super.isa;

  v18 = CGGradientCreateWithColors(v15, isa, dbl_1005D34A8);

  if (v18)
  {
    v19 = [a1 CGContext];
    v49.x = 0.0;
    v49.y = 0.0;
    v54.x = a4;
    v54.y = a5;
    CGContextDrawLinearGradient(v19, v18, v49, v54, 0);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1005127F0;
  *(v20 + 32) = [a7 CGColor];
  *(v20 + 40) = [a7 CGColor];
  v21 = [a7 colorWithAlphaComponent:0.0];
  v22 = [v21 CGColor];

  *(v20 + 48) = v22;
  v23 = sub_1004DD85C().super.isa;

  v24 = CGGradientCreateWithColors(v15, v23, dbl_1005D34D8);

  if (v24)
  {
    v25 = [a1 CGContext];
    v50.x = a4;
    v50.y = a5;
    v55.x = a4;
    v55.y = a5;
    CGContextDrawRadialGradient(v25, v24, v50, 0.0, v55, a4, 0);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1005127F0;
  *(v26 + 32) = [a3 CGColor];
  v27 = [a3 colorWithAlphaComponent:0.0];
  v28 = [v27 CGColor];

  *(v26 + 40) = v28;
  v29 = [a3 colorWithAlphaComponent:0.0];
  v30 = [v29 CGColor];

  *(v26 + 48) = v30;
  v31 = sub_1004DD85C().super.isa;

  v32 = CGGradientCreateWithColors(v15, v31, dbl_1005D3510);

  if (v32)
  {
    v33 = [a1 CGContext];
    v51.x = 0.0;
    v56.x = 0.0;
    v51.y = a5;
    v56.y = a5;
    CGContextDrawRadialGradient(v33, v32, v51, 0.0, v56, a4, 0);
  }

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1005127F0;
  *(v34 + 32) = [a3 CGColor];
  v35 = [a3 colorWithAlphaComponent:0.0];
  v36 = [v35 CGColor];

  *(v34 + 40) = v36;
  v37 = [a3 colorWithAlphaComponent:0.0];
  v38 = [v37 CGColor];

  *(v34 + 48) = v38;
  v39 = sub_1004DD85C().super.isa;

  v40 = CGGradientCreateWithColors(v15, v39, dbl_1005D3548);

  if (v40)
  {
    v41 = [a1 CGContext];
    v52.y = 0.0;
    v57.y = 0.0;
    v52.x = a4;
    v57.x = a4;
    CGContextDrawRadialGradient(v41, v40, v52, 0.0, v57, a4, 0);
  }

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100511A20;
  *(v42 + 32) = [a2 CGColor];
  v43 = [a2 colorWithAlphaComponent:0.0];
  v44 = [v43 CGColor];

  *(v42 + 40) = v44;
  v45 = sub_1004DD85C().super.isa;

  v46 = CGGradientCreateWithColors(v15, v45, dbl_1005D3580);

  if (v46)
  {
    v47 = [a1 CGContext];
    v53.x = 0.0;
    v53.y = 0.0;
    v58.x = 0.0;
    v58.y = 0.0;
    CGContextDrawRadialGradient(v47, v46, v53, 0.0, v58, a4, 0);
  }
}

void sub_10024B354(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, CGFloat a7, CGFloat a8)
{
  v121 = a6;
  v119 = a3;
  v127 = sub_1004D870C();
  v129 = *(v127 - 8);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = a2;
  v17 = [a2 CGColor];
  v120 = a4;
  v18 = [a4 CGColor];
  v122 = a5;
  v19 = [a5 CGColor];
  if (qword_100633DF8 != -1)
  {
    swift_once();
  }

  v20 = qword_100671EF8;
  v126 = sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100511D90;
  *(v21 + 32) = v19;
  *(v21 + 40) = v19;
  *(v21 + 48) = v17;
  *(v21 + 56) = v17;
  type metadata accessor for CGColor(0);
  v23 = v22;
  v24 = v19;
  v25 = v17;
  v26 = v24;
  v27 = v25;
  v123 = v23;
  isa = sub_1004DD85C().super.isa;

  v124 = v20;
  v29 = CGGradientCreateWithColors(v20, isa, dbl_1005D35B0);

  if (v29)
  {
    v30 = [a1 CGContext];
    v134.x = 0.0;
    v134.y = 0.0;
    v137.x = a7;
    v137.y = a8;
    CGContextDrawLinearGradient(v30, v29, v134, v137, 0);
  }

  v31 = [a1 CGContext];
  CGContextSaveGState(v31);

  v32 = a7 * -0.235;
  v33 = a7 * 1.47;
  v139.origin.x = a7 * -0.235;
  v139.origin.y = a8 * 0.15;
  v139.size.width = a7 * 1.47;
  v139.size.height = a8 * 0.7;
  v34 = -CGRectGetMidX(v139);
  v140.origin.x = a7 * -0.235;
  v140.origin.y = a8 * 0.15;
  v140.size.width = a7 * 1.47;
  v140.size.height = a8 * 0.7;
  MidY = CGRectGetMidY(v140);
  CGAffineTransformMakeTranslation(&t1, v34, -MidY);
  tx = t1.tx;
  ty = t1.ty;
  v128 = *&t1.a;
  v125 = *&t1.c;
  *&v113 = 0xBFE0C152382D7365;
  CGAffineTransformMakeRotation(&t1, -0.523598776);
  v38 = *&t1.a;
  v39 = *&t1.c;
  v40 = *&t1.tx;
  *&t1.a = v128;
  *&t1.c = v125;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v38;
  *&t2.c = v39;
  *&t2.tx = v40;
  CGAffineTransformConcat(&v131, &t1, &t2);
  v41 = v131.tx;
  *&v128 = a7;
  v42 = v131.ty;
  v125 = *&v131.a;
  v117 = *&v131.c;
  v141.origin.x = v32;
  v141.origin.y = a8 * 0.15;
  v141.size.width = v33;
  v141.size.height = a8 * 0.7;
  MidX = CGRectGetMidX(v141);
  v142.origin.x = v32;
  v142.origin.y = a8 * 0.15;
  v142.size.width = v33;
  v142.size.height = a8 * 0.7;
  v44 = CGRectGetMidY(v142);
  CGAffineTransformMakeTranslation(&t1, MidX, v44);
  *&t2.a = v125;
  *&t2.c = v117;
  t2.tx = v41;
  t2.ty = v42;
  v45 = *&v128;
  v131 = t1;
  CGAffineTransformConcat(&t1, &t2, &v131);
  Mutable = CGPathCreateMutable();
  sub_1004DE01C();
  v47 = [a1 CGContext];
  *&v117 = Mutable;
  CGContextAddPath(v47, Mutable);

  v48 = [a1 CGContext];
  v49 = v129;
  v50 = *(v129 + 104);
  v116 = enum case for CGPathFillRule.winding(_:);
  v51 = v127;
  v115 = v50;
  v50(v16);
  sub_1004DDEAC();

  v52 = *(v49 + 8);
  v112 = v16;
  v129 = v49 + 8;
  v114 = v52;
  v52(v16, v51);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1005128A0;
  *(v53 + 32) = v18;
  *(v53 + 40) = v18;
  *(v53 + 48) = v26;
  *(v53 + 56) = v26;
  *(v53 + 64) = v27;
  *(v53 + 72) = v27;
  *(v53 + 80) = v26;
  *(v53 + 88) = v26;
  *(v53 + 96) = v18;
  *(v53 + 104) = v18;
  *(v53 + 112) = v26;
  v54 = v26;
  v55 = v18;
  v56 = v54;
  v57 = v55;
  v58 = v56;
  v59 = v27;
  v60 = v57;
  v61 = v58;
  *&v125 = v59;
  v62 = v60;
  v63 = v61;
  v64 = v122;
  v65 = [v122 colorWithAlphaComponent:0.8];
  v66 = [v65 CGColor];

  *(v53 + 120) = v66;
  v67 = [v64 colorWithAlphaComponent:0.5];
  v68 = [v67 CGColor];

  *(v53 + 128) = v68;
  v69 = [v64 colorWithAlphaComponent:0.5];
  v70 = [v69 CGColor];

  *(v53 + 136) = v70;
  v71 = [v64 colorWithAlphaComponent:0.8];
  v72 = [v71 CGColor];

  *(v53 + 144) = v72;
  *(v53 + 152) = v63;
  *(v53 + 160) = v62;
  *(v53 + 168) = v62;
  v73 = v62;
  v74 = v63;
  v111 = v73;
  v75 = sub_1004DD85C().super.isa;

  v76 = v124;
  v77 = CGGradientCreateWithColors(v124, v75, dbl_1005D35F0);

  if (v77)
  {
    v78 = [a1 CGContext];
    v135.x = v45 * 0.5;
    v135.y = a8 * 0.5;
    CGContextDrawConicGradient(v78, v77, v135, 0.0);
  }

  v79 = [a1 CGContext];
  CGContextRestoreGState(v79);

  v80 = v45 * 0.26375;
  v81 = v45 * 0.4725;
  v143.origin.x = v45 * 0.26375;
  v143.origin.y = a8 * 0.388888889;
  v143.size.width = v45 * 0.4725;
  v143.size.height = a8 * 0.2225;
  v82 = -CGRectGetMidX(v143);
  v144.origin.x = v45 * 0.26375;
  v144.origin.y = a8 * 0.388888889;
  v144.size.width = v45 * 0.4725;
  v144.size.height = a8 * 0.2225;
  v83 = CGRectGetMidY(v144);
  CGAffineTransformMakeTranslation(&t2, v82, -v83);
  v84 = t2.tx;
  v85 = t2.ty;
  v110 = *&t2.a;
  v109 = *&t2.c;
  CGAffineTransformMakeRotation(&t2, *&v113);
  v86 = *&t2.a;
  v87 = *&t2.c;
  v88 = *&t2.tx;
  *&t2.a = v110;
  *&t2.c = v109;
  t2.tx = v84;
  t2.ty = v85;
  *&v131.a = v86;
  *&v131.c = v87;
  *&v131.tx = v88;
  CGAffineTransformConcat(&v130, &t2, &v131);
  v89 = v130.tx;
  v90 = v130.ty;
  v113 = *&v130.a;
  v110 = *&v130.c;
  v145.origin.x = v80;
  v145.origin.y = a8 * 0.388888889;
  v145.size.width = v81;
  v145.size.height = a8 * 0.2225;
  v91 = CGRectGetMidX(v145);
  v146.origin.x = v80;
  v146.origin.y = a8 * 0.388888889;
  v146.size.width = v81;
  v146.size.height = a8 * 0.2225;
  v92 = CGRectGetMidY(v146);
  CGAffineTransformMakeTranslation(&t2, v91, v92);
  *&v131.c = v110;
  *&v131.a = v113;
  v131.tx = v89;
  v93 = *&v128;
  v131.ty = v90;
  v130 = t2;
  CGAffineTransformConcat(&t2, &v131, &v130);
  sub_10024BF34(v121, v118, v119, v120, v64, &t2, v80, a8 * 0.388888889, v81, a8 * 0.2225);
  v95 = v94;
  [v94 drawInRect:{0.0, 0.0, v93, a8}];

  v96 = [a1 CGContext];
  CGContextSetFillColorWithColor(v96, v125);

  v97 = CGPathCreateMutable();
  sub_1004DE01C();
  v98 = [a1 CGContext];
  CGContextAddPath(v98, v97);

  v99 = [a1 CGContext];
  v100 = v112;
  v101 = v127;
  v115(v112, v116, v127);
  sub_1004DDECC();

  v114(v100, v101);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_100511A20;
  *(v102 + 32) = v74;
  v103 = v74;
  v104 = [v64 colorWithAlphaComponent:0.0];
  v105 = [v104 CGColor];

  *(v102 + 40) = v105;
  v106 = sub_1004DD85C().super.isa;

  v107 = CGGradientCreateWithColors(v76, v106, dbl_1005D36A0);

  if (v107)
  {
    v108 = [a1 CGContext];
    v136.y = 0.0;
    v138.y = 0.0;
    v136.x = v93 * 0.5;
    v138.x = v93 * 0.5;
    CGContextDrawRadialGradient(v108, v107, v136, 0.0, v138, v136.x, 0);

    v97 = v108;
  }

  else
  {
    v107 = v117;
  }
}

void sub_10024BF34(void *a1, void *a2, void *a3, void *a4, void *a5, _OWORD *a6, double a7, double a8, double a9, double a10)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a7;
  *(v20 + 56) = a8;
  *(v20 + 64) = a9;
  *(v20 + 72) = a10;
  v21 = a6[1];
  *(v20 + 80) = *a6;
  *(v20 + 96) = v21;
  *(v20 + 112) = a6[2];
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10024EC18;
  *(v22 + 24) = v20;
  v35[4] = sub_1002486C8;
  v35[5] = v22;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 1107296256;
  v35[2] = sub_10001E3C4;
  v35[3] = &unk_1005E7EE0;
  v23 = _Block_copy(v35);
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;

  v28 = [a1 imageWithActions:v23];
  _Block_release(v23);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  else
  {
    v29 = [v28 CGImage];
    if (v29)
    {
      v30 = v29;
      v31 = [objc_allocWithZone(CIImage) initWithCGImage:v29];
      v32 = [v31 imageByClampingToExtent];
      v33 = [v32 imageByApplyingGaussianBlurWithSigma:20.0];
      [v31 extent];
      v34 = [v33 imageByCroppingToRect:?];
      [objc_allocWithZone(UIImage) initWithCIImage:v34];
    }

    else
    {
    }
  }
}

uint64_t sub_10024C1EC(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v12 = sub_1004D870C();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 CGContext];
  v18 = [a9 colorWithAlphaComponent:0.55];
  v19 = [v18 CGColor];

  CGContextSetFillColorWithColor(v17, v19);
  Mutable = CGPathCreateMutable();
  sub_1004DE01C();
  v21 = [a1 CGContext];
  CGContextAddPath(v21, Mutable);

  v22 = [a1 CGContext];
  (*(v13 + 104))(v16, enum case for CGPathFillRule.winding(_:), v12);
  sub_1004DDECC();

  return (*(v13 + 8))(v16, v12);
}

void sub_10024C3F0(void *a1, void *a2, void *a3, void *a4, double a5, CGFloat a6)
{
  if (qword_100633DF8 != -1)
  {
    swift_once();
  }

  v12 = qword_100671EF8;
  sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1005128B0;
  *(v13 + 32) = [a2 CGColor];
  *(v13 + 40) = [a2 CGColor];
  *(v13 + 48) = [a3 CGColor];
  *(v13 + 56) = [a4 CGColor];
  *(v13 + 64) = [a3 CGColor];
  *(v13 + 72) = [a3 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_1004DD85C().super.isa;

  v15 = CGGradientCreateWithColors(v12, isa, dbl_1005D36D0);

  if (v15)
  {
    v16 = [a1 CGContext];
    v31.x = 0.0;
    v31.y = 0.0;
    v34.x = 0.0;
    v34.y = a6;
    CGContextDrawLinearGradient(v16, v15, v31, v34, 0);
  }

  v17 = [a1 CGContext];
  CGContextSaveGState(v17);

  v18 = a5 * 0.5;
  [a1 clipToRect:{v18, 0.0, v18, a6}];
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1005128B0;
  *(v19 + 32) = [a2 CGColor];
  *(v19 + 40) = [a2 CGColor];
  *(v19 + 48) = [a3 CGColor];
  *(v19 + 56) = [a4 CGColor];
  *(v19 + 64) = [a3 CGColor];
  *(v19 + 72) = [a3 CGColor];
  v20 = sub_1004DD85C().super.isa;

  v21 = CGGradientCreateWithColors(v12, v20, dbl_1005D3720);

  if (v21)
  {
    v22 = [a1 CGContext];
    v35.y = 0.0;
    v32.x = v18;
    v32.y = a6;
    v35.x = v18;
    CGContextDrawLinearGradient(v22, v21, v32, v35, 0);
  }

  v23 = [a1 CGContext];
  CGContextRestoreGState(v23);

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100511A20;
  *(v24 + 32) = [a2 CGColor];
  v25 = [a2 colorWithAlphaComponent:0.0];
  v26 = [v25 CGColor];

  *(v24 + 40) = v26;
  v27 = sub_1004DD85C().super.isa;

  v28 = CGGradientCreateWithColors(v12, v27, dbl_1005D3770);

  if (v28)
  {
    v29 = [a1 CGContext];
    v36.y = a6 * 0.5;
    v33.x = 0.0;
    v33.y = 0.0;
    v36.x = 0.0;
    CGContextDrawLinearGradient(v29, v28, v33, v36, 0);
  }
}

void sub_10024C888(void *a1, void *a2, void *a3, double a4, CGFloat a5, uint64_t a6, void *a7)
{
  v13 = [a1 CGContext];
  v14 = [a7 CGColor];
  CGContextSetFillColorWithColor(v13, v14);

  v15 = 0.0;
  [a1 fillRect:{0.0, 0.0, a4, a5}];
  sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1005127F0;
  *(v16 + 32) = [a2 CGColor];
  *(v16 + 40) = [a3 CGColor];
  v17 = [a7 colorWithAlphaComponent:0.0];
  v18 = [v17 CGColor];

  *(v16 + 48) = v18;
  type metadata accessor for CGColor(0);
  colors = sub_1004DD85C().super.isa;

  if (qword_100633DF8 != -1)
  {
    swift_once();
  }

  v19 = 0;
  v20 = qword_100671EF8;
  v21 = a4 / 9.0;
  while (1)
  {
    v22 = *(&off_1005D3780 + v19 + 32);
    v23 = CGGradientCreateWithColors(v20, colors, *(&off_1005D3A10 + v19 + 32) + 4);
    if (v23)
    {
      v24 = v23;
      v25 = v22 * a5;
      v26 = [a1 CGContext];
      CGContextSaveGState(v26);

      [a1 clipToRect:{v15, a5 - v25, v21, v25}];
      v27 = [a1 CGContext];
      v38.x = v15;
      v38.y = a5;
      v40.x = v15;
      v40.y = a5 - v25;
      CGContextDrawLinearGradient(v27, v24, v38, v40, 0);

      v28 = [a1 CGContext];
      CGContextRestoreGState(v28);
    }

    if (v19 == 64)
    {
      break;
    }

    v15 = v21 + v15;
    v19 += 8;
  }

  sub_100004CB8(&qword_10063B740, &qword_100522FA0);
  swift_arrayDestroy();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100511A20;
  *(v29 + 32) = [a7 CGColor];
  v30 = [a7 colorWithAlphaComponent:0.0];
  v31 = [v30 CGColor];

  *(v29 + 40) = v31;
  isa = sub_1004DD85C().super.isa;

  v33 = CGGradientCreateWithColors(v20, isa, dbl_1005D3A00);

  if (v33)
  {
    v34 = [a1 CGContext];
    v39.x = a4 * 0.145;
    v39.y = a5 * 0.23;
    v41.x = a4 * 0.145;
    v41.y = a5 * 0.23;
    CGContextDrawRadialGradient(v34, v33, v39, 0.0, v41, a4 * 0.3715, 0);

    v35 = v34;
  }

  else
  {
    v35 = colors;
  }
}

void sub_10024CCD4(void *a1, void *a2, double a3, double a4, uint64_t a5, void *a6, void *a7)
{
  if (qword_100633DF8 != -1)
  {
    swift_once();
  }

  v13 = qword_100671EF8;
  sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1005128B0;
  *(v14 + 32) = [a2 CGColor];
  *(v14 + 40) = [a6 CGColor];
  *(v14 + 48) = [a7 CGColor];
  *(v14 + 56) = [a2 CGColor];
  *(v14 + 64) = [a6 CGColor];
  *(v14 + 72) = [a7 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_1004DD85C().super.isa;

  v16 = CGGradientCreateWithColors(v13, isa, dbl_1005D3A98);

  if (v16)
  {
    v17 = [a1 CGContext];
    v27.x = a3 * 0.5;
    v27.y = a4 * 0.5;
    CGContextDrawConicGradient(v17, v16, v27, -0.77562432);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1005127F0;
  *(v18 + 32) = [a2 CGColor];
  v19 = [a2 colorWithAlphaComponent:0.7];
  v20 = [v19 CGColor];

  *(v18 + 40) = v20;
  v21 = [a2 colorWithAlphaComponent:0.0];
  v22 = [v21 CGColor];

  *(v18 + 48) = v22;
  v23 = sub_1004DD85C().super.isa;

  v24 = CGGradientCreateWithColors(v13, v23, dbl_1005D3AE8);

  if (v24)
  {
    v25 = [a1 CGContext];
    v29.y = a4 * 0.5;
    v28.x = 0.0;
    v28.y = 0.0;
    v29.x = 0.0;
    CGContextDrawLinearGradient(v25, v24, v28, v29, 0);
  }
}

void sub_10024D030(void *a1, void *a2, void *a3, double a4, CGFloat a5, uint64_t a6, void *a7)
{
  if (qword_100633DF8 != -1)
  {
    swift_once();
  }

  v12 = qword_100671EF8;
  sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1005127F0;
  *(v13 + 32) = [a7 CGColor];
  *(v13 + 40) = [a2 CGColor];
  *(v13 + 48) = [a3 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_1004DD85C().super.isa;

  v15 = CGGradientCreateWithColors(v12, isa, dbl_1005D3B20);

  if (v15)
  {
    v16 = [a1 CGContext];
    v35.x = 0.0;
    v35.y = 0.0;
    v38.x = 0.0;
    v38.y = a5;
    CGContextDrawLinearGradient(v16, v15, v35, v38, 0);
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1005127F0;
  *(v18 + 32) = [a7 CGColor];
  *(v18 + 40) = [a7 CGColor];
  v19 = [a7 colorWithAlphaComponent:0.0];
  v20 = [v19 CGColor];

  *(v18 + 48) = v20;
  v21 = sub_1004DD85C().super.isa;

  v22 = CGGradientCreateWithColors(DeviceRGB, v21, dbl_1005D3B58);

  if (v22)
  {
    v23 = [a1 CGContext];
    v36.x = a4 * 0.5;
    v36.y = a5 * 0.907407407;
    v39.y = a5 * 0.5;
    v39.x = a4 * 0.5;
    CGContextDrawRadialGradient(v23, v22, v36, a4 * 0.0185185185, v39, a4 * 0.472222222, 3u);
  }

  v24 = CGColorSpaceCreateDeviceRGB();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100511D90;
  *(v25 + 32) = [a2 CGColor];
  *(v25 + 40) = [a2 CGColor];
  v26 = [a7 colorWithAlphaComponent:0.0];
  v27 = [v26 CGColor];

  *(v25 + 48) = v27;
  v28 = [a7 colorWithAlphaComponent:0.0];
  v29 = [v28 CGColor];

  *(v25 + 56) = v29;
  v30 = sub_1004DD85C().super.isa;

  v31 = CGGradientCreateWithColors(v24, v30, dbl_1005D3B90);

  if (v31)
  {
    v33 = [a1 CGContext];
    v37.x = a4 * 0.5;
    v37.y = a5 * 0.907407407;
    v40.y = a5 * 0.5;
    v40.x = a4 * 0.5;
    CGContextDrawRadialGradient(v33, v31, v37, a4 * 0.0185185185, v40, a4 * 0.472222222, 3u);
  }
}

void sub_10024D4A0(double a1, double a2, double a3, double a4)
{
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  v9 = sub_1004DD3FC();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

  if (v10)
  {
    [v10 drawInRect:{a1, a2, a3, a4}];
  }

  else
  {
    __break(1u);
  }
}

void sub_10024D5B8(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, void *a11, void *a12)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100511D90;
  *(v24 + 32) = [a2 CGColor];
  *(v24 + 40) = [a2 CGColor];
  *(v24 + 48) = [a3 CGColor];
  *(v24 + 56) = [a11 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_1004DD85C().super.isa;

  v26 = CGGradientCreateWithColors(DeviceRGB, isa, dbl_1005D3BD0);

  if (v26)
  {
    v27 = [a1 CGContext];
    v48.x = a4 * 0.324074074;
    v51.x = a4 * 0.724074074;
    v48.y = 0.0;
    v51.y = a5;
    CGContextDrawLinearGradient(v27, v26, v48, v51, 3u);
  }

  v28 = [a1 CGContext];
  CGContextSaveGState(v28);

  v29 = [a1 CGContext];
  CGContextTranslateCTM(v29, 0.0, a9);

  v30 = [a1 CGContext];
  CGContextScaleCTM(v30, 1.0, -1.0);

  v31 = [a1 CGContext];
  v32 = [a12 CGImage];
  if (v32)
  {
    v33 = v32;
    v54.origin.x = a6;
    v54.origin.y = a7;
    v54.size.width = a8;
    v54.size.height = a9;
    CGContextClipToMask(v31, v54, v32);

    v34 = CGColorSpaceCreateDeviceRGB();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100511D90;
    *(v35 + 32) = [a11 CGColor];
    *(v35 + 40) = [a3 CGColor];
    *(v35 + 48) = [a2 CGColor];
    *(v35 + 56) = [a2 CGColor];
    v36 = sub_1004DD85C().super.isa;

    v37 = CGGradientCreateWithColors(v34, v36, dbl_1005D3C10);

    if (v37)
    {
      v38 = [a1 CGContext];
      v49.y = 0.0;
      v52.x = 0.0;
      v49.x = a4;
      v52.y = a5;
      CGContextDrawLinearGradient(v38, v37, v49, v52, 0);
    }

    v39 = [a1 CGContext];
    CGContextRestoreGState(v39);

    v40 = CGColorSpaceCreateDeviceRGB();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100511A20;
    *(v41 + 32) = [a2 CGColor];
    v42 = [a3 colorWithAlphaComponent:0.0];
    v43 = [v42 CGColor];

    *(v41 + 40) = v43;
    v44 = sub_1004DD85C().super.isa;

    v45 = CGGradientCreateWithColors(v40, v44, dbl_1005D3C50);

    if (v45)
    {
      v46 = [a1 CGContext];
      v53.y = a5 * 0.5;
      v50.x = 0.0;
      v50.y = 0.0;
      v53.x = 0.0;
      CGContextDrawLinearGradient(v46, v45, v50, v53, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10024DA9C(void *a1, void *a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6, void *a7)
{
  v13 = [a1 CGContext];
  CGContextSetBlendMode(v13, kCGBlendModeNormal);

  [a2 setFill];
  [a1 fillRect:{0.0, 0.0, a3, a4}];
  if (qword_100633DF8 != -1)
  {
    swift_once();
  }

  v14 = qword_100671EF8;
  sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100512860;
  *(v15 + 32) = [a2 CGColor];
  *(v15 + 40) = [a2 CGColor];
  *(v15 + 48) = [a6 CGColor];
  v16 = [a7 colorWithAlphaComponent:0.9];
  v17 = [v16 CGColor];

  *(v15 + 56) = v17;
  *(v15 + 64) = [a7 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_1004DD85C().super.isa;

  v19 = CGGradientCreateWithColors(v14, isa, dbl_1005D3C80);

  if (v19)
  {
    v20 = [a1 CGContext];
    v30.x = 0.0;
    v30.y = 0.0;
    v28.x = a3;
    v28.y = a4;
    CGContextDrawLinearGradient(v20, v19, v28, v30, 3u);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100511A20;
  *(v21 + 32) = [a7 CGColor];
  v22 = [a7 colorWithAlphaComponent:0.0];
  v23 = [v22 CGColor];

  *(v21 + 40) = v23;
  v24 = sub_1004DD85C().super.isa;

  v25 = CGGradientCreateWithColors(v14, v24, dbl_1005D3CC8);

  if (v25)
  {
    v26 = [a1 CGContext];
    v31.y = a4 * 0.5;
    v29.x = 0.0;
    v29.y = 0.0;
    v31.x = 0.0;
    CGContextDrawLinearGradient(v26, v25, v29, v31, 3u);
  }
}

void sub_10024DE00(void *a1, double a2, double a3)
{
  v6 = sub_1004D870C();
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 / 3.0;
  if (a2 / 3.0 == 0.0)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v11 = a2 >= 0.0;
  if (v10 > 0.0)
  {
    v11 = a2 <= 0.0;
  }

  if (!v11)
  {
    v12 = 0;
    v13 = a3 / 3.0;
    v14 = a3 >= 0.0;
    if (a3 / 3.0 > 0.0)
    {
      v14 = a3 <= 0.0;
    }

    v28 = v14;
    v30 = enum case for CGPathFillRule.winding(_:);
    v15 = (v7 + 104);
    v16 = (v7 + 8);
    v27 = a2;
    while (1)
    {
      v19 = __OFADD__(v12, 1);
      v20 = v12 + 1;
      if (v19)
      {
        break;
      }

      if (v13 == 0.0)
      {
        goto LABEL_23;
      }

      v29 = v20;
      if (!v28)
      {
        v21 = 0;
        while (!__OFADD__(v21, 1))
        {
          v22 = (v21 + 1) * v13 + 0.0;
          Mutable = CGPathCreateMutable();
          v32 = 0;
          v33 = 0;
          v31 = 0x3FF0000000000000;
          v34 = 0x3FF0000000000000;
          v35 = 0;
          v36 = 0;
          sub_1004DE02C();
          v24 = [a1 CGContext];
          CGContextAddPath(v24, Mutable);

          v25 = [a1 CGContext];
          (*v15)(v9, v30, v6);
          sub_1004DDECC();

          (*v16)(v9, v6);
          v26 = v22 <= a3;
          if (v13 > 0.0)
          {
            v26 = v22 >= a3;
          }

          ++v21;
          if (v26)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
        break;
      }

LABEL_9:
      v12 = v29;
      v17 = v29 * v10 + 0.0;
      v18 = v17 <= v27;
      if (v10 > 0.0)
      {
        v18 = v17 >= v27;
      }

      if (v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }
}

void sub_10024E0CC(void *a1, int a2, uint64_t a3, uint64_t a4, id a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, void *a10, id *a11)
{
  [a5 setFill];
  [a1 fillRect:0 blendMode:{a6, a7, a8, a9}];
  v18 = [a1 CGContext];
  CGContextSaveGState(v18);

  v19 = [a1 CGContext];
  v20 = [a10 CGImage];
  if (v20)
  {
    v21 = v20;
    v24.origin.x = a6;
    v24.origin.y = a7;
    v24.size.width = a8;
    v24.size.height = a9;
    CGContextClipToMask(v19, v24, v20);

    [*a11 drawInRect:0 blendMode:a6 alpha:{a7, a8, a9, 1.0}];
    v22 = [a1 CGContext];
    CGContextRestoreGState(v22);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10024E23C(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_10024E330;

  return v5(v2 + 16);
}

uint64_t sub_10024E330()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v3 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v3;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t _s9MusicCore14PlaylistCoversO10ExpressionO8rawValueAESgSi_tcfC_0(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

void sub_10024E460(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a6;
  *(v13 + 40) = a7;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10024ECA0;
  *(v14 + 24) = v13;
  v31 = sub_1002486C8;
  v32 = v14;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10001E3C4;
  v30 = &unk_1005E8138;
  v15 = _Block_copy(&aBlock);

  v16 = [v12 imageWithActions:v15];
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
    goto LABEL_5;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 80) = a6;
  *(v17 + 88) = a7;
  *(v17 + 96) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10024ED14;
  *(v18 + 24) = v17;
  v31 = sub_1002486C8;
  v32 = v18;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10001E3C4;
  v30 = &unk_1005E81B0;
  v19 = _Block_copy(&aBlock);
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = v16;

  [v12 imageWithActions:v19];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_10024E780(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v9 = *(v2 + 5);
  v10 = *(v2 + 6);
  v11 = *(v2 + 7);
  v12 = *(v2 + 8);
  v13 = *(v2 + 9);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100035C88;

  return sub_10024A14C(a1, a2, v6, v9, v10, v11, v12, v13, v7, v8);
}

unint64_t sub_10024E878()
{
  result = qword_10063B718;
  if (!qword_10063B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B718);
  }

  return result;
}

uint64_t sub_10024E920()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10024E980(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = *(v1 + 32);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_100035B28;

  return sub_10024AC0C(a1, v6, v7, v4, v5, v12, v8, v9, v10, v11);
}

uint64_t sub_10024EA84()
{

  return swift_deallocObject();
}

uint64_t sub_10024EABC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035B28;

  return sub_10024E23C(a1, v4);
}

double sub_10024EB8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10024EBA4()
{

  return swift_deallocObject();
}

uint64_t sub_10024ECBC()
{

  return swift_deallocObject();
}

uint64_t sub_10024ED38(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_10024EDCC()
{

  return swift_deallocObject();
}

uint64_t Logger.playlistCovers.unsafeMutableAddressor()
{
  if (qword_100633E00 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.playlistCovers);
}

uint64_t PlaylistCovers.RecipeColors.description.getter(void *a1, void *a2, void *a3, void *a4)
{
  sub_1004DEAAC(60);
  v25._object = 0x80000001004F2440;
  v25._countAndFlagsBits = 0xD000000000000015;
  sub_1004DD5FC(v25);
  v8 = [a1 description];
  v9 = sub_1004DD43C();
  v11 = v10;

  v26._countAndFlagsBits = v9;
  v26._object = v11;
  sub_1004DD5FC(v26);

  v27._countAndFlagsBits = 0x32726F6C6F63202CLL;
  v27._object = 0xEA0000000000203ALL;
  sub_1004DD5FC(v27);
  v12 = [a2 description];
  v13 = sub_1004DD43C();
  v15 = v14;

  v28._countAndFlagsBits = v13;
  v28._object = v15;
  sub_1004DD5FC(v28);

  v29._countAndFlagsBits = 0x33726F6C6F63202CLL;
  v29._object = 0xEA0000000000203ALL;
  sub_1004DD5FC(v29);
  v16 = [a3 description];
  v17 = sub_1004DD43C();
  v19 = v18;

  v30._countAndFlagsBits = v17;
  v30._object = v19;
  sub_1004DD5FC(v30);

  v31._countAndFlagsBits = 0x34726F6C6F63202CLL;
  v31._object = 0xEA0000000000203ALL;
  sub_1004DD5FC(v31);
  v20 = [a4 description];
  v21 = sub_1004DD43C();
  v23 = v22;

  v32._countAndFlagsBits = v21;
  v32._object = v23;
  sub_1004DD5FC(v32);

  v33._countAndFlagsBits = 41;
  v33._object = 0xE100000000000000;
  sub_1004DD5FC(v33);
  return 0;
}

uint64_t static PlaylistCovers.RecipeColors.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100108ACC();
  if (sub_1004DE5FC() & 1) != 0 && (sub_1004DE5FC() & 1) != 0 && (sub_1004DE5FC())
  {
    return sub_1004DE5FC() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t PlaylistCovers.RecipeColors.hash(into:)(uint64_t a1)
{
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  return sub_1004DE60C();
}

Swift::Int PlaylistCovers.RecipeColors.hashValue.getter()
{
  sub_1004DF26C();
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  return sub_1004DF2BC();
}

uint64_t sub_10024F2E4(uint64_t *a1, uint64_t *a2)
{
  sub_100108ACC();
  if (sub_1004DE5FC() & 1) != 0 && (sub_1004DE5FC() & 1) != 0 && (sub_1004DE5FC())
  {
    return sub_1004DE5FC() & 1;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_10024F384()
{
  sub_1004DF26C();
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  return sub_1004DF2BC();
}

uint64_t sub_10024F404(uint64_t a1)
{
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  return sub_1004DE60C();
}

Swift::Int sub_10024F468()
{
  sub_1004DF26C();
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  sub_1004DE60C();
  return sub_1004DF2BC();
}

uint64_t static PlaylistCovers.recipeColorsForSource(_:)(uint64_t a1)
{
  v1[17] = a1;
  v2 = sub_1004DCF8C();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = sub_1004DD01C();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  sub_100004CB8(&unk_100637C80, &unk_10051BD48);
  v1[24] = swift_task_alloc();
  v4 = sub_1004DCAAC();
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = sub_100004CB8(&qword_100635B40, &qword_100517320);
  v1[31] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_100635B50, &qword_100517330);
  v1[32] = v5;
  v1[33] = *(v5 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = type metadata accessor for PlaylistCovers.Source(0);
  v1[36] = swift_task_alloc();

  return _swift_task_switch(sub_10024F780, 0, 0);
}

uint64_t sub_10024F780()
{
  sub_1002540D4(*(v0 + 136), *(v0 + 288));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 288);
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    *(v0 + 344) = *v2;
    v4 = *(v3 + 16);
    *(v0 + 352) = v4;
    if (!v4)
    {
LABEL_19:

      goto LABEL_20;
    }

    *(v0 + 404) = *(*(v0 + 176) + 80);
    *(v0 + 408) = enum case for Playlist.Entry.InternalItem.musicMovie(_:);
    *(v0 + 412) = enum case for Playlist.Entry.InternalItem.musicVideo(_:);
    *(v0 + 416) = enum case for Playlist.Entry.InternalItem.song(_:);
    *(v0 + 360) = 0;
    if (*(v3 + 16))
    {
      v5 = 0;
      do
      {
        (*(*(v0 + 176) + 16))(*(v0 + 184), v3 + ((*(v0 + 404) + 32) & ~*(v0 + 404)) + *(*(v0 + 176) + 72) * v5, *(v0 + 168));
        v6 = sub_1004DCFBC();
        *(v0 + 368) = v7;
        if (v7)
        {
          v8 = v7;
          v9 = v6;
          v10 = *(v0 + 408);
          v12 = *(v0 + 152);
          v11 = *(v0 + 160);
          v13 = *(v0 + 144);
          sub_1004DCF9C();
          v14 = (*(v12 + 88))(v11, v13);
          if (v14 != v10)
          {
            v15 = *(v0 + 412);
            if (v14 == v15 || v14 == *(v0 + 416))
            {
              v63 = v14 == v15;
              (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
              sub_1004DD00C();
              v64 = swift_task_alloc();
              *(v0 + 376) = v64;
              *v64 = v0;
              v64[1] = sub_100250320;
              v59 = *(v0 + 192);
              v60 = v9;
              v61 = v8;
              v62 = v63;
              goto LABEL_33;
            }
          }

          v18 = *(v0 + 152);
          v17 = *(v0 + 160);
          v19 = *(v0 + 144);

          (*(v18 + 8))(v17, v19);
        }

        v20 = *(v0 + 352);
        v21 = *(v0 + 360) + 1;
        (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
        if (v21 == v20)
        {
          goto LABEL_19;
        }

        v5 = *(v0 + 360) + 1;
        *(v0 + 360) = v5;
        v3 = *(v0 + 344);
      }

      while (v5 < *(v3 + 16));
    }

    __break(1u);
  }

  v23 = *(v0 + 264);
  v22 = *(v0 + 272);
  v25 = *(v0 + 248);
  v24 = *(v0 + 256);
  v26 = *(v0 + 240);
  (*(v23 + 32))(v22, v2, v24);
  (*(v23 + 16))(v25, v22, v24);
  *(v0 + 392) = *(v26 + 36);
  *(v0 + 296) = sub_100254138();
  sub_1004DDCFC();
  *(v0 + 396) = enum case for Track.song(_:);
  *(v0 + 400) = enum case for Track.musicVideo(_:);
  v27 = *(v0 + 392);
  v28 = *(v0 + 248);
  sub_1004DDD3C();
  if (*(v28 + v27) == *(v0 + 128))
  {
LABEL_18:
    v41 = *(v0 + 264);
    v40 = *(v0 + 272);
    v42 = *(v0 + 256);
    sub_10001074C(*(v0 + 248), &qword_100635B40, &qword_100517320);
    (*(v41 + 8))(v40, v42);
LABEL_20:
    if (qword_100633DE8 != -1)
    {
      swift_once();
    }

    v43 = unk_100671EC0;
    v45 = qword_100671EC8;
    v44 = unk_100671ED0;
    v68 = qword_100671EB8;
    v66 = v43;
    v46 = v45;
    v47 = v44;

    v48 = *(v0 + 8);

    return v48(v68, v66, v46, v47);
  }

  while (1)
  {
    v29 = *(v0 + 232);
    v67 = *(v0 + 224);
    v30 = *(v0 + 208);
    v65 = *(v0 + 200);
    v31 = sub_1004DDE1C();
    v32 = *(v30 + 16);
    v32(v29);
    v31(v0 + 96, 0);
    sub_1004DDD4C();
    (*(v30 + 32))(v67, v29, v65);
    v33 = sub_1004DCA5C();
    v35 = v34;
    *(v0 + 304) = v34;
    v36 = *(v0 + 200);
    v37 = *(v0 + 208);
    if (v35)
    {
      break;
    }

    v38 = *(v0 + 392);
    v39 = *(v0 + 248);
    (*(v37 + 8))(*(v0 + 224), v36);
    sub_1004DDD3C();
    if (*(v39 + v38) == *(v0 + 128))
    {
      goto LABEL_18;
    }
  }

  v50 = *(v0 + 400);
  v51 = *(v0 + 396);
  v52 = *(v0 + 216);
  v69 = v33;
  v53 = *(v0 + 200);
  (v32)(v52, *(v0 + 224), v36);
  v54 = (*(v37 + 88))(v52, v53);
  v56 = v54 != v51 && v54 == v50;
  v57 = *(v37 + 8);
  *(v0 + 312) = v57;
  *(v0 + 320) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v57(v52, v53);
  sub_1004DCA9C();
  v58 = swift_task_alloc();
  *(v0 + 328) = v58;
  *v58 = v0;
  v58[1] = sub_10024FDCC;
  v59 = *(v0 + 192);
  v60 = v69;
  v61 = v35;
  v62 = v56;
LABEL_33:

  return sub_1002507BC(v60, v61, v62, v59);
}

uint64_t sub_10024FDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v7 = v5[24];
  v6[42] = a1;

  sub_10001074C(v7, &unk_100637C80, &unk_10051BD48);

  return _swift_task_switch(sub_10024FF24, 0, 0);
}

uint64_t sub_10024FF24()
{
  v1 = *(v0 + 336);
  (*(v0 + 312))(*(v0 + 224), *(v0 + 200));
  if (v1)
  {
    v37 = *(v0 + 32);
    v39 = *(v0 + 336);
    v36 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = *(v0 + 264);
    v4 = *(v0 + 272);
    v5 = *(v0 + 256);
    sub_10001074C(*(v0 + 248), &qword_100635B40, &qword_100517320);
    (*(v3 + 8))(v4, v5);
LABEL_9:

    v22 = *(v0 + 8);

    return v22(v39, v37, v36, v2);
  }

  v6 = *(v0 + 392);
  v7 = *(v0 + 248);
  sub_1004DDD3C();
  if (*(v7 + v6) == *(v0 + 128))
  {
LABEL_6:
    v17 = *(v0 + 264);
    v16 = *(v0 + 272);
    v18 = *(v0 + 256);
    sub_10001074C(*(v0 + 248), &qword_100635B40, &qword_100517320);
    (*(v17 + 8))(v16, v18);
    if (qword_100633DE8 != -1)
    {
      swift_once();
    }

    v19 = unk_100671EC0;
    v20 = qword_100671EC8;
    v21 = unk_100671ED0;
    v39 = qword_100671EB8;
    v37 = v19;
    v36 = v20;
    v2 = v21;
    goto LABEL_9;
  }

  while (1)
  {
    v8 = *(v0 + 232);
    v40 = *(v0 + 224);
    v9 = *(v0 + 208);
    v35 = *(v0 + 200);
    v10 = sub_1004DDE1C();
    v11 = *(v9 + 16);
    v11(v8);
    v10(v0 + 96, 0);
    sub_1004DDD4C();
    (*(v9 + 32))(v40, v8, v35);
    v12 = sub_1004DCA5C();
    *(v0 + 304) = v13;
    if (v13)
    {
      break;
    }

    v14 = *(v0 + 392);
    v15 = *(v0 + 248);
    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    sub_1004DDD3C();
    if (*(v15 + v14) == *(v0 + 128))
    {
      goto LABEL_6;
    }
  }

  v24 = *(v0 + 400);
  v25 = *(v0 + 396);
  v26 = *(v0 + 208);
  v27 = *(v0 + 216);
  v28 = *(v0 + 200);
  v38 = v13;
  v41 = v12;
  (v11)(v27, *(v0 + 224), v28);
  v29 = (*(v26 + 88))(v27, v28);
  v31 = v29 != v25 && v29 == v24;
  v32 = *(v26 + 8);
  *(v0 + 312) = v32;
  *(v0 + 320) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v27, v28);
  sub_1004DCA9C();
  v33 = swift_task_alloc();
  *(v0 + 328) = v33;
  *v33 = v0;
  v33[1] = sub_10024FDCC;
  v34 = *(v0 + 192);

  return sub_1002507BC(v41, v38, v31, v34);
}

uint64_t sub_100250320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[7] = v4;
  v6[8] = a1;
  v6[9] = a2;
  v6[10] = a3;
  v6[11] = a4;
  v7 = v5[24];
  v6[48] = a1;

  sub_10001074C(v7, &unk_100637C80, &unk_10051BD48);

  return _swift_task_switch(sub_100250478, 0, 0);
}

uint64_t sub_100250478()
{
  v1 = *(v0 + 384);
  if (!v1)
  {
    while (1)
    {
      v8 = *(v0 + 352);
      v9 = *(v0 + 360) + 1;
      (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
      if (v9 == v8)
      {
        break;
      }

      v10 = *(v0 + 360) + 1;
      *(v0 + 360) = v10;
      v11 = *(v0 + 344);
      if (v10 >= *(v11 + 16))
      {
        __break(1u);
LABEL_22:
        swift_once();
LABEL_17:
        v27 = unk_100671EC0;
        v28 = qword_100671EC8;
        v29 = unk_100671ED0;
        v1 = qword_100671EB8;
        v33 = v27;
        v32 = v28;
        v31 = v29;
        goto LABEL_18;
      }

      (*(*(v0 + 176) + 16))(*(v0 + 184), v11 + ((*(v0 + 404) + 32) & ~*(v0 + 404)) + *(*(v0 + 176) + 72) * v10, *(v0 + 168));
      v12 = sub_1004DCFBC();
      *(v0 + 368) = v13;
      if (v13)
      {
        v14 = v13;
        v15 = v12;
        v16 = *(v0 + 408);
        v18 = *(v0 + 152);
        v17 = *(v0 + 160);
        v19 = *(v0 + 144);
        sub_1004DCF9C();
        v20 = (*(v18 + 88))(v17, v19);
        if (v20 != v16)
        {
          v21 = *(v0 + 412);
          if (v20 == v21 || v20 == *(v0 + 416))
          {
            v23 = v20 == v21;
            (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
            sub_1004DD00C();
            v24 = swift_task_alloc();
            *(v0 + 376) = v24;
            *v24 = v0;
            v24[1] = sub_100250320;
            v25 = *(v0 + 192);

            return sub_1002507BC(v15, v14, v23, v25);
          }
        }

        v6 = *(v0 + 152);
        v5 = *(v0 + 160);
        v7 = *(v0 + 144);

        (*(v6 + 8))(v5, v7);
      }
    }

    if (qword_100633DE8 != -1)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v32 = *(v0 + 80);
  v33 = *(v0 + 72);
  v31 = *(v0 + 88);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);

  (*(v2 + 8))(v3, v4);
LABEL_18:

  v30 = *(v0 + 8);

  return v30(v1, v33, v32, v31);
}

uint64_t sub_1002507BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 256) = a3;
  *(v4 + 16) = a1;
  sub_100004CB8(&unk_100637C80, &unk_10051BD48);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();
  v5 = sub_1004DCC9C();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1002508D4, 0, 0);
}

uint64_t sub_1002508D4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_100254330(*(v0 + 32), v3);
  v4 = *(v2 + 48);
  *(v0 + 88) = v4;
  *(v0 + 96) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 48), &unk_100637C80, &unk_10051BD48);
LABEL_16:
    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v15[1] = sub_100250D1C;
    v16 = *(v0 + 40);
    v17 = *(v0 + 256);
    v18 = *(v0 + 16);
    v19 = *(v0 + 24);

    return sub_100251234(v16, v18, v19, v17);
  }

  (*(*(v0 + 64) + 32))(*(v0 + 80), *(v0 + 48), *(v0 + 56));
  v5 = sub_1004DCC4C();
  *(v0 + 104) = v5;
  if (!v5)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
    goto LABEL_16;
  }

  v6 = v5;
  v7 = sub_1004DCC5C();
  *(v0 + 112) = v7;
  if (!v7)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
LABEL_15:

    goto LABEL_16;
  }

  v8 = v7;
  v9 = sub_1004DCC7C();
  *(v0 + 120) = v9;
  if (!v9)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
LABEL_14:

    goto LABEL_15;
  }

  v10 = v9;
  v11 = sub_1004DCC6C();
  *(v0 + 128) = v11;
  if (!v11)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));

    goto LABEL_14;
  }

  v12 = v11;
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_100250B34;

  return sub_1002547B8(v6, v8, v10, v12);
}

uint64_t sub_100250B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;
  v5[21] = a4;

  return _swift_task_switch(sub_100250C38, 0, 0);
}

uint64_t sub_100250C38()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  (*(v6 + 8))(v4, v5);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);

  v11 = *(v0 + 8);

  return v11(v10, v9, v7, v8);
}

uint64_t sub_100250D1C()
{

  return _swift_task_switch(sub_100250E18, 0, 0);
}

uint64_t sub_100250E18()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  if ((*(v0 + 88))(v2, 1, v1) == 1)
  {
    sub_10001074C(v2, &unk_100637C80, &unk_10051BD48);
LABEL_16:

    v13 = *(v0 + 8);

    return v13(0, 0, 0, 0);
  }

  (*(*(v0 + 64) + 32))(*(v0 + 72), v2, v1);
  v3 = sub_1004DCC4C();
  *(v0 + 184) = v3;
  if (!v3)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_16;
  }

  v4 = v3;
  v5 = sub_1004DCC5C();
  *(v0 + 192) = v5;
  if (!v5)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_15:

    goto LABEL_16;
  }

  v6 = v5;
  v7 = sub_1004DCC7C();
  *(v0 + 200) = v7;
  if (!v7)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_14:

    goto LABEL_15;
  }

  v8 = v7;
  v9 = sub_1004DCC6C();
  *(v0 + 208) = v9;
  if (!v9)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    goto LABEL_14;
  }

  v10 = v9;
  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  v11[1] = sub_10025104C;

  return sub_1002547B8(v4, v6, v8, v10);
}

uint64_t sub_10025104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[28] = a1;
  v5[29] = a2;
  v5[30] = a3;
  v5[31] = a4;

  return _swift_task_switch(sub_100251150, 0, 0);
}

uint64_t sub_100251150()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  v10 = *(v0 + 224);
  v9 = *(v0 + 232);

  v11 = *(v0 + 8);

  return v11(v10, v9, v7, v8);
}

uint64_t sub_100251234(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 288) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  v5 = sub_100004CB8(&qword_100636518, &qword_100518D78);
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  sub_100004CB8(&qword_100635BE0, &qword_100518D80);
  *(v4 + 96) = swift_task_alloc();
  v6 = sub_100004CB8(&qword_100636520, &qword_100518D88);
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  v7 = sub_100004CB8(&qword_100636528, &qword_100518D90);
  *(v4 + 128) = v7;
  *(v4 + 136) = *(v7 - 8);
  *(v4 + 144) = swift_task_alloc();
  v8 = sub_100004CB8(&qword_1006364C0, &qword_100518CA8);
  *(v4 + 152) = v8;
  *(v4 + 160) = *(v8 - 8);
  *(v4 + 168) = swift_task_alloc();
  sub_100004CB8(&qword_100635BD8, &qword_100518CB0);
  *(v4 + 176) = swift_task_alloc();
  v9 = sub_100004CB8(&qword_1006364C8, &qword_100518CB8);
  *(v4 + 184) = v9;
  *(v4 + 192) = *(v9 - 8);
  *(v4 + 200) = swift_task_alloc();
  v10 = sub_100004CB8(&qword_1006364D0, &qword_100518CC0);
  *(v4 + 208) = v10;
  *(v4 + 216) = *(v10 - 8);
  *(v4 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_100251580, 0, 0);
}

uint64_t sub_100251580()
{
  v20 = v0;
  if (qword_100633E00 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  *(v0 + 232) = sub_100035430(v1, static Logger.playlistCovers);

  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v5 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v5 = 136315394;
    if (v4)
    {
      v6 = 0x697620636973756DLL;
    }

    else
    {
      v6 = 1735290739;
    }

    if (v4)
    {
      v7 = 0xEB000000006F6564;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    v8 = sub_1000343A8(v6, v7, &v19);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    v9 = sub_1004DC2EC();
    v11 = sub_1000343A8(v9, v10, &v19);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Media API request for %s with catalogID=%{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  if (*(v0 + 288) == 1)
  {
    swift_getKeyPath();
    *(v0 + 32) = v13;
    *(v0 + 40) = v12;
    *(v0 + 240) = sub_1004DC2DC();
    sub_1002554F0(&qword_1006364D8, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);

    sub_1004DC1AC();
    v14 = swift_task_alloc();
    *(v0 + 248) = v14;
    *v14 = v0;
    v14[1] = sub_100251958;
    v15 = *(v0 + 200);
    v16 = *(v0 + 208);
  }

  else
  {
    swift_getKeyPath();
    *(v0 + 16) = v13;
    *(v0 + 24) = v12;
    *(v0 + 264) = sub_1004DC95C();
    sub_1002554F0(&qword_100636530, &type metadata accessor for Song, &protocol conformance descriptor for Song);

    sub_1004DC1AC();
    v17 = swift_task_alloc();
    *(v0 + 272) = v17;
    *v17 = v0;
    v17[1] = sub_100251CC4;
    v15 = *(v0 + 120);
    v16 = *(v0 + 128);
  }

  return MusicCatalogResourceRequest.response()(v15, v16);
}

uint64_t sub_100251958()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100252030;
  }

  else
  {
    v2 = sub_100251A6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100251A6C()
{
  v1 = v0[30];
  v2 = v0[22];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  sub_1004DC1DC();
  sub_1000C14A8(v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[26];
    v10 = v0[22];
    v11 = v0[6];
    (*(v0[24] + 8))(v0[25], v0[23]);
    (*(v8 + 8))(v7, v9);
    sub_10001074C(v10, &qword_100635BD8, &qword_100518CB0);
    v12 = sub_1004DCC9C();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v13 = v0[30];
    v15 = v0[27];
    v14 = v0[28];
    v17 = v0[25];
    v16 = v0[26];
    v18 = v0[23];
    v19 = v0[24];
    v20 = v0[22];
    sub_1004DC2CC();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    (*(v6 + 8))(v20, v13);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100251CC4()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1002522DC;
  }

  else
  {
    v2 = sub_100251DD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100251DD8()
{
  v1 = v0[33];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  sub_1004DC1DC();
  sub_1000C14D8(v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[16];
    v10 = v0[12];
    v11 = v0[6];
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v8 + 8))(v7, v9);
    sub_10001074C(v10, &qword_100635BE0, &qword_100518D80);
    v12 = sub_1004DCC9C();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v13 = v0[33];
    v15 = v0[17];
    v14 = v0[18];
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[13];
    v19 = v0[14];
    v20 = v0[12];
    sub_1004DC93C();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    (*(v6 + 8))(v20, v13);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100252030()
{
  v21 = v0;

  swift_errorRetain();
  v1 = sub_1004D964C();
  v2 = sub_1004DDF7C();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  if (v3)
  {
    v19 = v0[28];
    v18 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136446466;
    v10 = sub_1004DC2EC();
    v12 = sub_1000343A8(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch music video from Media API with catalogID=%{public}s: %@", v7, 0x16u);
    sub_10001074C(v8, &qword_100636460, &qword_100518BE0);

    sub_100008D24(v9);

    (*(v5 + 8))(v19, v18);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = v0[6];
  v15 = sub_1004DCC9C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002522DC()
{
  v21 = v0;

  swift_errorRetain();
  v1 = sub_1004D964C();
  v2 = sub_1004DDF7C();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  if (v3)
  {
    v19 = v0[18];
    v18 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136446466;
    v10 = sub_1004DC2EC();
    v12 = sub_1000343A8(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch song from Media API with catalogID=%{public}s: %@", v7, 0x16u);
    sub_10001074C(v8, &qword_100636460, &qword_100518BE0);

    sub_100008D24(v9);

    (*(v5 + 8))(v19, v18);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = v0[6];
  v15 = sub_1004DCC9C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100252588()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.playlistCovers);
  sub_100035430(v0, static Logger.playlistCovers);
  return sub_1004D965C();
}

uint64_t static Logger.playlistCovers.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100633E00 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.playlistCovers);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1002526B4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10026F75C(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_10025287C(v4);
  *a1 = v2;
}

void sub_100252720(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10026F75C(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  v4 = sub_1004DEF7C(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (*v12 >= v13)
          {
            break;
          }

          v14 = *(v12 + 5);
          v15 = *(v12 + 1);
          v16 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v13;
          *(v12 + 1) = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_100004CB8(&qword_10063B808, &qword_1005230B0);
      v7 = sub_1004DD8EC();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = (v7 + 4);
    v18[1] = v6;
    sub_100252A18(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_10025287C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1004DEF7C(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100004CB8(&qword_10063B808, &qword_1005230B0);
        v5 = sub_1004DD8EC();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_100252FA8(v7, v8, a1, v4);
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
    sub_100252984(0, v2, 1, a1);
  }
}

uint64_t sub_100252984(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v4 + 32 * a3;
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = *(v11 - 24);
      v13 = *(v11 - 16) < v9;
      if (v8 != v12)
      {
        v13 = v8 < v12;
      }

      if (!v13)
      {
LABEL_4:
        ++a3;
        v5 += 32;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v14 = *v11;
      v15 = *(v11 + 24);
      v16 = *(v11 - 16);
      *v11 = *(v11 - 32);
      *(v11 + 16) = v16;
      *(v11 - 24) = v8;
      *(v11 - 16) = v9;
      *(v11 - 8) = v15;
      *(v11 - 32) = v14;
      v11 -= 32;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100252A18(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_10026F720(v8);
    }

    v84 = v8 + 16;
    v85 = *(v8 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v8[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_100253564((*a3 + 32 * *v86), (*a3 + 32 * *v88), (*a3 + 32 * v89), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 16);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 16);
      v14 = v9 + 2;
      v15 = (v12 + 80);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 32 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v11);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = v22[1];
            v26 = *(v23 - 16);
            *v22 = *(v23 - 32);
            v22[1] = v26;
            *(v23 - 32) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 32;
          v11 += 32;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10003A490(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v38 = *(v8 + 3);
    v39 = v5 + 1;
    if (v5 >= v38 >> 1)
    {
      v8 = sub_10003A490((v38 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v39;
    v40 = v8 + 32;
    v41 = &v8[16 * v5 + 32];
    *v41 = v9;
    *(v41 + 1) = v7;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v8[16 * v39];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v40[16 * v5];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v5 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v8[16 * v39];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v40[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v40[16 * v5 - 16];
        v80 = *v79;
        v81 = &v40[16 * v5];
        v82 = *(v81 + 1);
        sub_100253564((*a3 + 32 * *v79), (*a3 + 32 * *v81), (*a3 + 32 * v82), v93);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *(v8 + 2);
        if (v5 >= v83)
        {
          goto LABEL_101;
        }

        v39 = v83 - 1;
        memmove(&v40[16 * v5], v81 + 16, 16 * (v83 - 1 - v5));
        *(v8 + 2) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v40[16 * v39];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v8[16 * v39];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v40[16 * v5];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v5 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v91;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v7;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 32 * v7 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 16) >= v31)
    {
LABEL_29:
      ++v7;
      v29 += 32;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    v35 = *v33;
    v36 = *(v33 - 16);
    *v33 = *(v33 - 32);
    *(v33 + 16) = v36;
    *(v33 - 16) = v31;
    *(v33 - 8) = v34;
    *(v33 - 32) = v35;
    v33 -= 32;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

void sub_100252FA8(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v10 = sub_10026F720(v10);
    }

    v92 = *(v10 + 2);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = *&v10[16 * v92];
        v94 = *&v10[16 * v92 + 24];
        sub_100253768((*a3 + 32 * v93), (*a3 + 32 * *&v10[16 * v92 + 16]), (*a3 + 32 * v94), v5);
        if (v4)
        {
          goto LABEL_104;
        }

        if (v94 < v93)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_10026F720(v10);
        }

        if (v92 - 2 >= *(v10 + 2))
        {
          goto LABEL_120;
        }

        v95 = &v10[16 * v92];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_10026F694(v92 - 1);
        v92 = *(v10 + 2);
        if (v92 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = 32 * v11;
      v16 = *a3 + 32 * v11;
      v17 = *(v16 + 8);
      v18 = *(v16 + 16) < v14;
      if (v13 != v17)
      {
        v18 = v13 < v17;
      }

      v19 = v11 + 2;
      v20 = (v16 + 80);
      while (v7 != v19)
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v23 = v14 >= *v20;
        if (v21 != v13)
        {
          v23 = v21 >= v13;
        }

        ++v19;
        v20 += 4;
        v14 = v22;
        v13 = v21;
        if (v18 == v23)
        {
          v9 = v19 - 1;
          if (!v18)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }
      }

      v9 = v7;
      if (!v18)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v9 < v11)
      {
        goto LABEL_123;
      }

      if (v11 < v9)
      {
        v24 = 0;
        v25 = 32 * v9;
        v26 = v11;
        do
        {
          if (v26 != v9 + v24 - 1)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_129;
            }

            v27 = (v32 + v15);
            v28 = v32 + v25;
            v29 = *v27;
            v30 = v27[1];
            v31 = *(v28 - 16);
            *v27 = *(v28 - 32);
            v27[1] = v31;
            *(v28 - 32) = v29;
            *(v28 - 16) = v30;
          }

          ++v26;
          --v24;
          v25 -= 32;
          v15 += 32;
        }

        while (v26 < v9 + v24);
        v7 = a3[1];
      }
    }

LABEL_24:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_122;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_124;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v9 < v11)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10003A490(0, *(v10 + 2) + 1, 1, v10);
    }

    v5 = *(v10 + 2);
    v47 = *(v10 + 3);
    v48 = v5 + 1;
    if (v5 >= v47 >> 1)
    {
      v10 = sub_10003A490((v47 > 1), v5 + 1, 1, v10);
    }

    *(v10 + 2) = v48;
    v49 = &v10[16 * v5];
    *(v49 + 4) = v11;
    *(v49 + 5) = v9;
    v50 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v5)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v10 + 4);
          v53 = *(v10 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_63:
          if (v55)
          {
            goto LABEL_110;
          }

          v68 = &v10[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_113;
          }

          v74 = &v10[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_117;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v78 = &v10[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_77:
        if (v73)
        {
          goto LABEL_112;
        }

        v81 = &v10[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_115;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_84:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
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

        v90 = *&v10[16 * v89 + 32];
        v5 = *&v10[16 * v51 + 40];
        sub_100253768((*a3 + 32 * v90), (*a3 + 32 * *&v10[16 * v51 + 32]), (*a3 + 32 * v5), v50);
        if (v4)
        {
          goto LABEL_104;
        }

        if (v5 < v90)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_10026F720(v10);
        }

        if (v89 >= *(v10 + 2))
        {
          goto LABEL_107;
        }

        v91 = &v10[16 * v89];
        *(v91 + 4) = v90;
        *(v91 + 5) = v5;
        sub_10026F694(v51);
        v48 = *(v10 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v10[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_108;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_109;
      }

      v63 = &v10[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_111;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_114;
      }

      if (v67 >= v59)
      {
        v85 = &v10[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_94;
    }
  }

  v33 = *a3;
  v34 = *a3 + 32 * v9;
  v35 = v11 - v9;
LABEL_34:
  v36 = v33 + 32 * v9;
  v37 = *(v36 + 8);
  v38 = *(v36 + 16);
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = *(v40 - 24);
    v42 = *(v40 - 16) < v38;
    if (v37 != v41)
    {
      v42 = v37 < v41;
    }

    if (!v42)
    {
LABEL_33:
      ++v9;
      v34 += 32;
      --v35;
      if (v9 != v7)
      {
        goto LABEL_34;
      }

      v9 = v7;
      goto LABEL_43;
    }

    if (!v33)
    {
      break;
    }

    v43 = *v40;
    v44 = *(v40 + 24);
    v45 = *(v40 - 16);
    *v40 = *(v40 - 32);
    *(v40 + 16) = v45;
    *(v40 - 24) = v37;
    *(v40 - 16) = v38;
    *(v40 - 8) = v44;
    *(v40 - 32) = v43;
    v40 -= 32;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_33;
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

uint64_t sub_100253564(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v6 - 2) < *(v14 - 2))
      {
        v21 = v6 - 4;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t sub_100253768(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v18 = v6[1];
      v19 = v4[1];
      v20 = v4[2] < v6[2];
      if (v18 != v19)
      {
        v20 = v18 < v19;
      }

      if (v20)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_26:
    v5 -= 4;
    do
    {
      v21 = v5 + 4;
      v22 = *(v14 - 3);
      v23 = *(v6 - 3);
      v24 = *(v6 - 2) < *(v14 - 2);
      if (v22 != v23)
      {
        v24 = v22 < v23;
      }

      if (v24)
      {
        v27 = v6 - 4;
        if (v21 != v6)
        {
          v28 = *(v6 - 1);
          *v5 = *v27;
          *(v5 + 1) = v28;
        }

        if (v14 <= v4 || (v6 -= 4, v27 <= v7))
        {
          v6 = v27;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      v25 = v14 - 4;
      if (v21 != v14)
      {
        v26 = *(v14 - 1);
        *v5 = *v25;
        *(v5 + 1) = v26;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v25 > v4);
    v14 = v25;
  }

LABEL_39:
  v29 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v29 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v29 >> 5));
  }

  return 1;
}

uint64_t _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0()
{
  v0 = UIColor.rgba.getter();
  v2 = v1;
  v4 = v3;
  sub_100004CB8(&qword_100636BE0, &qword_10051A170);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100511A40;
  v6 = lround(v0 * 255.0);
  *(v5 + 56) = &type metadata for Int;
  *(v5 + 64) = &protocol witness table for Int;
  *(v5 + 32) = v6;
  v7 = lround(v2 * 255.0);
  *(v5 + 96) = &type metadata for Int;
  *(v5 + 104) = &protocol witness table for Int;
  *(v5 + 72) = v7;
  v8 = lround(v4 * 255.0);
  *(v5 + 136) = &type metadata for Int;
  *(v5 + 144) = &protocol witness table for Int;
  *(v5 + 112) = v8;

  return sub_1004DD46C();
}

uint64_t _s9MusicCore14PlaylistCoversO6SourceO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100635B50, &qword_100517330);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - v6;
  type metadata accessor for PlaylistCovers.Source(0);
  __chkstk_darwin();
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v11 = &v20 - v10;
  sub_100004CB8(&qword_10063B810, &qword_100523108);
  __chkstk_darwin();
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1002540D4(a1, &v20 - v12);
  sub_1002540D4(a2, &v13[v15]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1002540D4(v13, v9);
    v16 = *v9;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = sub_10010B810(v16, *&v13[v15]);

LABEL_9:
      sub_100255494(v13);
      return v17 & 1;
    }
  }

  else
  {
    sub_1002540D4(v13, v11);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1004DCAAC();
      sub_1002554F0(&qword_10063B818, &type metadata accessor for Track, &protocol conformance descriptor for Track);
      v17 = sub_1004DC0AC();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v11, v4);
      goto LABEL_9;
    }

    (*(v5 + 8))(v11, v4);
  }

  sub_10001074C(v13, &qword_10063B810, &qword_100523108);
  v17 = 0;
  return v17 & 1;
}

id _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1004DE77C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(NSScanner);
  v9 = sub_1004DD3FC();
  v10 = [v8 initWithString:v9];

  (*(v5 + 104))(v7, enum case for NSScanner.NumberRepresentation.hexadecimal(_:), v4);
  v11 = sub_1004DE75C();
  v13 = v12;
  result = (*(v5 + 8))(v7, v4);
  if (v13)
  {
    if (qword_100633E00 != -1)
    {
      swift_once();
    }

    v15 = sub_1004D966C();
    sub_100035430(v15, static Logger.playlistCovers);

    v16 = sub_1004D964C();
    v17 = sub_1004DDF9C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1000343A8(a1, a2, &v22);
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to decode hexadecimal string representation=%{public}s as UInt64.", v18, 0xCu);
      sub_100008D24(v19);
    }

    return 0;
  }

  else if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = [objc_allocWithZone(UIColor) initWithRed:BYTE2(v11) / 255.0 green:BYTE1(v11) / 255.0 blue:v11 / 255.0 alpha:1.0];

    return v20;
  }

  return result;
}

uint64_t type metadata accessor for PlaylistCovers.Source(uint64_t a1)
{
  result = qword_10063B7C0;
  if (!qword_10063B7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002540D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCovers.Source(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100254138()
{
  result = qword_100635B58;
  if (!qword_100635B58)
  {
    sub_100008DE4(&qword_100635B50, &qword_100517330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635B58);
  }

  return result;
}

unint64_t sub_1002541A0()
{
  result = qword_10063B748;
  if (!qword_10063B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063B748);
  }

  return result;
}

void sub_1002541F4(uint64_t a1)
{
  sub_100254268(319);
  if (v1 <= 0x3F)
  {
    sub_1002542C8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100254268(uint64_t a1)
{
  if (!qword_10063B7D0)
  {
    sub_1004DCAAC();
    v1 = sub_1004DC0BC();
    if (!v2)
    {
      atomic_store(v1, &qword_10063B7D0);
    }
  }
}

void sub_1002542C8(uint64_t a1)
{
  if (!qword_10063B7D8)
  {
    sub_1004DD01C();
    v1 = sub_1004DD98C();
    if (!v2)
    {
      atomic_store(v1, &qword_10063B7D8);
    }
  }
}

uint64_t sub_100254330(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&unk_100637C80, &unk_10051BD48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1002543A0(char *a1)
{
  v40 = a1;

  sub_1002526B4(&v40);
  v1 = v40;
  v2 = *(v40 + 16);
  if (v2)
  {
    v3 = (v40 + 48);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      if (*v3 < 0.5)
      {
        v38 = *v3;
        v36 = *(v3 - 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000375FC(0, *(v4 + 2) + 1, 1);
          v4 = v40;
        }

        v6 = *(v4 + 2);
        v5 = *(v4 + 3);
        v7 = v38;
        if (v6 >= v5 >> 1)
        {
          sub_1000375FC((v5 > 1), v6 + 1, 1);
          v7 = v38;
          v4 = v40;
        }

        *(v4 + 2) = v6 + 1;
        v8 = &v4[32 * v6];
        *(v8 + 2) = v36;
        *(v8 + 3) = v7;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v40 = v4;

  sub_100252720(&v40);

  v10 = v40;
  v11 = *(v1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = *(v40 + 16);
    v14 = _swiftEmptyArrayStorage;
    while (v12 < *(v1 + 16))
    {
      v20 = (v1 + 32 + 32 * v12);
      v21 = *v20;
      v22 = v20[1];
      if (v13)
      {
        v23 = *(v10 + 2);
        v24 = (v10 + 32);
        v25 = v13;
        while (v23)
        {
          if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v21, *v24), vceqq_f64(v22, v24[1])))))
          {
            goto LABEL_16;
          }

          --v23;
          v24 += 2;
          if (!--v25)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        break;
      }

LABEL_23:
      v37 = v22;
      v39 = v21;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v14;
      if ((v26 & 1) == 0)
      {
        sub_1000375FC(0, *(v14 + 2) + 1, 1);
        v14 = v40;
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      v18 = v37;
      v17 = v39;
      if (v16 >= v15 >> 1)
      {
        sub_1000375FC((v15 > 1), v16 + 1, 1);
        v18 = v37;
        v17 = v39;
        v14 = v40;
      }

      *(v14 + 2) = v16 + 1;
      v19 = &v14[32 * v16];
      *(v19 + 2) = v17;
      *(v19 + 3) = v18;
LABEL_16:
      if (++v12 == v11)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_27:
  v40 = v14;
  sub_1000458E8(v10);
  v27 = v40;
  v28 = *(v40 + 16);
  if (!v28)
  {

    v30 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0)
    {
      goto LABEL_31;
    }

LABEL_38:
    sub_1004DEB2C();
    sub_1004DEB2C();
    sub_1004DEB2C();
    sub_1004DEB2C();
    goto LABEL_36;
  }

  v40 = _swiftEmptyArrayStorage;
  sub_1004DEBCC();
  v29 = (v27 + 56);
  do
  {
    [objc_allocWithZone(UIColor) initWithHue:*(v29 - 3) saturation:*(v29 - 2) brightness:*(v29 - 1) alpha:*v29];
    sub_1004DEB9C();
    sub_1004DEBDC();
    sub_1004DEBEC();
    sub_1004DEBAC();
    v29 += 4;
    --v28;
  }

  while (v28);

  v30 = v40;
  if ((v40 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v31 == 1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v31 < 3)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v31 != 3)
  {
    v32 = *(v30 + 40);
    v33 = *(v30 + 48);
    v34 = *(v30 + 56);
    *(v30 + 32);
    v32;
    v33;
    v35 = v34;
LABEL_36:

    return;
  }

LABEL_44:
  __break(1u);

  __break(1u);
}

uint64_t sub_1002547B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1002547DC, 0, 0);
}

uint64_t sub_1002547DC()
{
  v125 = v0;
  v1 = v0;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = [objc_allocWithZone(UIColor) initWithCGColor:v0[2]];
  v118 = UIColor.hsba.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_allocWithZone(UIColor) initWithCGColor:v4];
  v120 = UIColor.hsba.getter();
  v14 = v13;
  v16 = v15;

  v17 = [objc_allocWithZone(UIColor) initWithCGColor:v3];
  v119 = UIColor.hsba.getter();
  v19 = v18;
  v21 = v20;

  v22 = [objc_allocWithZone(UIColor) initWithCGColor:v2];
  v115 = UIColor.hsba.getter();
  v116 = v23;
  v25 = v24;

  v121 = v7;
  if (v7 > 0.05 && v9 > 0.2)
  {
    if (v16 < 0.3)
    {
      if (v21 >= 0.3)
      {
        goto LABEL_17;
      }

      goto LABEL_38;
    }

    if (v16 <= 0.3)
    {
LABEL_53:
      v59 = v14 + 0.2;
      v60 = v16 + 0.1;
      v61 = 1.0;
      if (v59 > 1.0)
      {
LABEL_54:
        if (v60 <= v61)
        {
          v62 = v19 + 0.1;
          v59 = 1.0;
          if (v62 <= 1.0)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }

LABEL_59:
        v62 = v19 + 0.1;
        v60 = 1.0;
        v59 = v61;
        if (v62 <= 1.0)
        {
LABEL_64:
          v61 = v21 + 0.2;
          if (v21 + 0.2 > 1.0)
          {
            v61 = 1.0;
          }

          goto LABEL_66;
        }

LABEL_63:
        v62 = 1.0;
        goto LABEL_64;
      }

      if (v60 > 1.0)
      {
        v61 = v59;
        goto LABEL_59;
      }

      v62 = v19 + 0.1;
LABEL_62:
      if (v62 <= v61)
      {
        v67 = v21 + 0.2;
        if (v67 <= v61)
        {
          v66 = v25 + 0.2;
          v63 = 1.0;
          v64 = v9;
          if (v66 <= 1.0)
          {
            v65 = v116 + 0.6;
            if (v116 + 0.6 <= 1.0)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          v61 = v67;
LABEL_68:
          v65 = v116 + 0.6;
          v66 = v63;
          v67 = v61;
          if (v116 + 0.6 <= 1.0)
          {
LABEL_70:
            sub_100004CB8(&qword_100634F18, &qword_100515420);
            v68 = swift_allocObject();
            *(v68 + 16) = xmmword_100511B10;
            *(v68 + 32) = v118;
            *(v68 + 40) = v121;
            *(v68 + 48) = v64;
            *(v68 + 56) = v11;
            *(v68 + 64) = v120;
            *(v68 + 72) = v59;
            *(v68 + 80) = v60;
            *(v68 + 88) = 0x3FF0000000000000;
            *(v68 + 96) = v119;
            *(v68 + 104) = v62;
            *(v68 + 112) = v67;
            *(v68 + 120) = 0x3FF0000000000000;
            *(v68 + 128) = v115;
            *(v68 + 136) = v66;
            *(v68 + 144) = v65;
            *(v68 + 152) = 0x3FF0000000000000;
            sub_1002543A0(v68);
            v70 = v69;
            v72 = v71;
            v74 = v73;
            v76 = v75;

            if (qword_100633E00 != -1)
            {
              swift_once();
            }

            v77 = sub_1004D966C();
            sub_100035430(v77, static Logger.playlistCovers);
            v39 = v70;
            v40 = v72;
            v41 = v74;
            v42 = v76;
            v43 = sub_1004D964C();
            v78 = sub_1004DDF9C();

            if (!os_log_type_enabled(v43, v78))
            {
              goto LABEL_97;
            }

            v45 = swift_slowAlloc();
            v122 = v78;
            v46 = swift_slowAlloc();
            v124 = v46;
            *v45 = 136446210;
            v79 = PlaylistCovers.RecipeColors.description.getter(v39, v40, v41, v42);
            v81 = sub_1000343A8(v79, v80, &v124);

            *(v45 + 4) = v81;
            v50 = "Using recipe 3 colors=%{public}s";
            goto LABEL_74;
          }

LABEL_69:
          v65 = 1.0;
          goto LABEL_70;
        }

LABEL_66:
        v63 = v25 + 0.2;
        v64 = v9;
        if (v63 > 1.0)
        {
          v63 = 1.0;
        }

        goto LABEL_68;
      }

      goto LABEL_63;
    }

LABEL_21:
    if (v21 > 0.3)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

  if (v14 > 0.05 && v16 > 0.2)
  {
    if (v16 >= 0.3)
    {
LABEL_17:
      if (v16 <= 0.3 || v21 <= 0.3)
      {
        goto LABEL_53;
      }

LABEL_22:
      v26 = v19 + 0.4;
      if (v14 + 0.1 <= 1.0)
      {
        v27 = v14 + 0.1;
      }

      else
      {
        v27 = 1.0;
      }

      if (v26 > 1.0)
      {
        v26 = 1.0;
      }

      if (v25 + -0.2 < 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v25 + -0.2;
      }

      sub_100004CB8(&qword_100634F18, &qword_100515420);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_100511B10;
      *(v29 + 32) = v118;
      *(v29 + 40) = v7;
      *(v29 + 48) = v9;
      *(v29 + 56) = v11;
      *(v29 + 64) = v120;
      *(v29 + 72) = v27;
      *(v29 + 80) = v16;
      *(v29 + 88) = 0x3FF0000000000000;
      *(v29 + 96) = v119;
      *(v29 + 104) = v26;
      *(v29 + 112) = v21;
      *(v29 + 120) = 0x3FF0000000000000;
      *(v29 + 128) = v115;
      *(v29 + 136) = v28;
      *(v29 + 144) = v116;
      *(v29 + 152) = 0x3FF0000000000000;
      sub_1002543A0(v29);
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      if (qword_100633E00 != -1)
      {
        swift_once();
      }

      v38 = sub_1004D966C();
      sub_100035430(v38, static Logger.playlistCovers);
      v39 = v31;
      v40 = v33;
      v41 = v35;
      v42 = v37;
      v43 = sub_1004D964C();
      v44 = sub_1004DDF9C();

      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_97;
      }

      v45 = swift_slowAlloc();
      v122 = v44;
      v46 = swift_slowAlloc();
      v124 = v46;
      *v45 = 136446210;
      v47 = PlaylistCovers.RecipeColors.description.getter(v39, v40, v41, v42);
      v49 = sub_1000343A8(v47, v48, &v124);

      *(v45 + 4) = v49;
      v50 = "Using recipe 2 colors=%{public}s";
LABEL_74:
      _os_log_impl(&_mh_execute_header, v43, v122, v50, v45, 0xCu);
      sub_100008D24(v46);
LABEL_96:

LABEL_97:

      goto LABEL_98;
    }

    if (v21 < 0.3)
    {
LABEL_38:
      v117 = v9;
      v51 = v14 + 0.3;
      v52 = v16 + 0.2;
      v53 = 1.0;
      if (v14 + 0.3 <= 1.0)
      {
        v54 = v119;
        if (v52 <= 1.0)
        {
          v55 = v121 + 0.5;
          v56 = v117 + 0.2;
          v57 = 1.0;
          v114 = v11;
          if (v121 + 0.5 <= 1.0)
          {
            if (v56 <= 1.0)
            {
              v58 = v118;
              v93 = -0.5;
              if (v119 >= 0.5)
              {
                goto LABEL_89;
              }

              goto LABEL_88;
            }

            v58 = v118;
            goto LABEL_87;
          }

          v58 = v118;
          v55 = 1.0;
          if (v56 > 1.0)
          {
            goto LABEL_87;
          }

LABEL_86:
          v57 = v56;
          goto LABEL_87;
        }
      }

      else
      {
        v51 = 1.0;
        v54 = v119;
        if (v52 <= 1.0)
        {
          v53 = v16 + 0.2;
        }
      }

      v55 = v121 + 0.5;
      v56 = v117 + 0.2;
      v57 = 1.0;
      v114 = v11;
      if (v121 + 0.5 <= 1.0)
      {
        if (v56 <= 1.0)
        {
          v58 = v118;
          v93 = -0.5;
          v52 = v53;
          if (v54 >= 0.5)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        v58 = v118;
        v52 = v53;
        goto LABEL_87;
      }

      v58 = v118;
      v52 = v53;
      v55 = 1.0;
      if (v56 > 1.0)
      {
LABEL_87:
        v93 = -0.5;
        v56 = v57;
        if (v54 >= 0.5)
        {
LABEL_89:
          v94 = v54 + v93;
          if (v21 + 0.8 <= 1.0)
          {
            v95 = v21 + 0.8;
          }

          else
          {
            v95 = 1.0;
          }

          sub_100004CB8(&qword_100634F18, &qword_100515420);
          v96 = swift_allocObject();
          *(v96 + 16) = xmmword_100511B10;
          *(v96 + 32) = v58;
          *(v96 + 40) = v121;
          *(v96 + 48) = v117;
          *(v96 + 56) = v114;
          *(v96 + 64) = v120;
          *(v96 + 72) = v51;
          *(v96 + 80) = v52;
          *(v96 + 88) = 0x3FF0000000000000;
          *(v96 + 96) = v58;
          *(v96 + 104) = v55;
          *(v96 + 112) = v56;
          *(v96 + 120) = 0x3FF0000000000000;
          *(v96 + 128) = v94;
          *(v96 + 136) = v19;
          *(v96 + 144) = v95;
          *(v96 + 152) = 0x3FF0000000000000;
          sub_1002543A0(v96);
          v98 = v97;
          v100 = v99;
          v102 = v101;
          v104 = v103;

          if (qword_100633E00 != -1)
          {
            swift_once();
          }

          v105 = sub_1004D966C();
          sub_100035430(v105, static Logger.playlistCovers);
          v39 = v98;
          v40 = v100;
          v41 = v102;
          v42 = v104;
          v43 = sub_1004D964C();
          v106 = sub_1004DDF9C();

          if (!os_log_type_enabled(v43, v106))
          {
            goto LABEL_97;
          }

          v107 = swift_slowAlloc();
          v123 = v1;
          v124 = swift_slowAlloc();
          v108 = v124;
          *v107 = 136446210;
          v109 = PlaylistCovers.RecipeColors.description.getter(v39, v40, v41, v42);
          v111 = sub_1000343A8(v109, v110, &v124);

          *(v107 + 4) = v111;
          _os_log_impl(&_mh_execute_header, v43, v106, "Using recipe 1 colors=%{public}s", v107, 0xCu);
          sub_100008D24(v108);
          v1 = v123;
          goto LABEL_96;
        }

LABEL_88:
        v93 = 0.5;
        goto LABEL_89;
      }

      goto LABEL_86;
    }

    if (v16 > 0.3)
    {
LABEL_48:
      if (v21 > 0.3)
      {
        goto LABEL_22;
      }
    }

LABEL_49:
    v59 = v14 + 0.2;
    v60 = v16 + 0.1;
    v61 = 1.0;
    if (v59 > 1.0)
    {
      goto LABEL_54;
    }

    v62 = v19 + 0.1;
    if (v60 > 1.0)
    {
      v60 = 1.0;
      if (v62 <= 1.0)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v19 > 0.05 && v21 > 0.2)
  {
    if (v16 >= 0.3)
    {
      if (v16 > 0.3)
      {
        goto LABEL_21;
      }

      goto LABEL_49;
    }

LABEL_37:
    if (v21 < 0.3)
    {
      goto LABEL_38;
    }

LABEL_47:
    if (v16 <= 0.3)
    {
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  if (v25 > 0.05 && v116 > 0.2)
  {
    if (v16 >= 0.3)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

  if (qword_100633E00 != -1)
  {
    swift_once();
  }

  v82 = sub_1004D966C();
  sub_100035430(v82, static Logger.playlistCovers);
  v83 = sub_1004D964C();
  v84 = sub_1004DDF9C();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v124 = v86;
    *v85 = 136446210;
    if (qword_100633DF0 != -1)
    {
      swift_once();
    }

    v87 = PlaylistCovers.RecipeColors.description.getter(qword_100671ED8, qword_100671EE0, qword_100671EE8, qword_100671EF0);
    v89 = sub_1000343A8(v87, v88, &v124);

    *(v85 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v83, v84, "Using black and white colors=%{public}s", v85, 0xCu);
    sub_100008D24(v86);
  }

  if (qword_100633DF0 != -1)
  {
    swift_once();
  }

  v90 = qword_100671EE0;
  v92 = qword_100671EE8;
  v91 = qword_100671EF0;
  v39 = qword_100671ED8;
  v40 = v90;
  v41 = v92;
  v42 = v91;
LABEL_98:
  v112 = v1[1];

  return v112(v39, v40, v41, v42);
}

uint64_t sub_100255494(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCovers.Source(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002554F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall PresentationSource.present(_:)(MusicCore::Alert *a1)
{
  v2 = v1;
  v4 = sub_1000EA900(&a1->title.value._countAndFlagsBits, 0, 1);
  style = a1->style;
  v6 = *(v2 + 80);
  v19 = v4;
  if (v6)
  {
    v7 = *(v2 + 88);
    v8 = qword_100633E08;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_1004D966C();
    sub_100035430(v9, qword_10063B820);
    v10 = sub_1004D964C();
    v11 = sub_1004DDF9C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Deferring presentation…", v12, 2u);
    }

    v13 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_100257E18;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100258DB8;
    aBlock[3] = &unk_1005E8408;
    v14 = _Block_copy(aBlock);
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_1000699E8(v2, aBlock);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_10006A8BC(aBlock, v16 + 24);
    *(v16 + 120) = v19;
    *(v16 + 128) = style;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v19;
    v6(v2, v18, sub_10007DB94, v16);
    sub_10000DE74(v6, v7);
  }

  else
  {
    sub_1002562F8(v4, style, 1, 0, 0);
  }
}

void *PresentationSource.present(_:internalOnly:)(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_10025A524(v8);

    v6 = v9;
    if (v9)
    {
      v7 = v10;
      sub_100008C70(v8, v9);
      (*(v7 + 8))(a1, a2 & 1, v6, v7);
      return sub_100008D24(v8);
    }

    else
    {
      return sub_10001074C(v8, &qword_100635A30, &qword_100517090);
    }
  }

  return result;
}

void PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(void *a1, char a2, char a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v11 = *(v5 + 80);
  if (v11)
  {
    v12 = *(v5 + 88);
    v13 = qword_100633E08;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_1004D966C();
    sub_100035430(v14, qword_10063B820);
    v15 = sub_1004D964C();
    v16 = sub_1004DDF9C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Deferring presentation…", v17, 2u);
    }

    v18 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_100257E18;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100258DB8;
    aBlock[3] = &unk_1005E8458;
    v19 = _Block_copy(aBlock);
    v20 = [v18 initWithTimeout:v19 interruptionHandler:10.0];
    _Block_release(v19);

    sub_1000699E8(v6, aBlock);
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    sub_10006A8BC(aBlock, v21 + 24);
    *(v21 + 120) = a1;
    *(v21 + 128) = a2 & 1;
    *(v21 + 129) = a3 & 1;
    *(v21 + 136) = a4;
    *(v21 + 144) = a5;
    v22 = v20;
    v23 = a1;
    sub_10000DE64(a4, a5);
    v11(v6, v23, sub_10007DCE4, v21);
    sub_10000DE74(v11, v12);
  }

  else
  {
    v24 = (a2 & 1);
    v25 = (a3 & 1);

    sub_1002562F8(a1, v24, v25, a4, a5);
  }
}

__n128 PresentationSource.Position.init(source:permittedArrowDirections:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  result = *a1;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  *(a3 + 48) = a2;
  return result;
}

Swift::Void __swiftcall PresentationSource.Position.configure(_:)(UIViewController a1)
{
  v2 = [(objc_class *)a1.super.super.isa popoverPresentationController];
  if (v2)
  {
    v3 = *v1;
    v8 = v2;
    if (*(v1 + 40))
    {
      if (*(v1 + 40) == 1)
      {
        [v2 setBarButtonItem:v3];
      }

      else
      {
        [v2 setSourceItem:v3];
      }
    }

    else
    {
      v5 = *(v1 + 24);
      v4 = *(v1 + 32);
      v7 = *(v1 + 8);
      v6 = *(v1 + 16);
      [v2 setSourceView:v3];
      [v8 setSourceRect:{v7, v6, v5, v4}];
      sub_100258E28(v1);
    }

    [v8 setPermittedArrowDirections:*(v1 + 48)];
  }
}