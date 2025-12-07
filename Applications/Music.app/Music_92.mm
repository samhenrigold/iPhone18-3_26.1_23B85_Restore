uint64_t Notice.thumbnail.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Notice(0) + 20);

  return sub_100A1CFF8(a1, v3);
}

uint64_t Notice.message.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 24));

  return v1;
}

void Notice.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t Notice.headnote.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 28));

  return v1;
}

void Notice.headnote.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t Notice.link.getter()
{
  v1 = (v0 + *(type metadata accessor for Notice(0) + 32));
  v2 = *v1;
  sub_100030444(*v1, v1[1]);
  return v2;
}

uint64_t Notice.link.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 32));
  result = sub_100020438(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.hapticFeedback.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for Notice(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t Notice.isDismissable.setter(char a1)
{
  result = type metadata accessor for Notice(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t Notice.init(id:image:message:headnote:link:hapticFeedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v38 = a7;
  v39 = a8;
  v36 = a5;
  v37 = a6;
  v35 = a12;
  v33 = a11;
  v34 = a4;
  v32 = a10;
  sub_10010FC20(&qword_1011ABC70, &qword_100EF6198);
  __chkstk_darwin();
  v17 = &v32 - v16;
  *(&v32 - v16) = a3;
  v18 = type metadata accessor for Notice.Thumbnail(0);
  swift_storeEnumTagMultiPayload();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 0, 1, v18);
  v20 = type metadata accessor for Notice(0);
  v21 = v20[5];
  v19(&a9[v21], 1, 1, v18);
  v22 = &a9[v20[7]];
  v23 = &a9[v20[8]];
  v24 = v20[10];
  v25 = &a9[v20[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_100A1CFF8(v17, &a9[v21]);
  v27 = &a9[v20[6]];
  v28 = v36;
  *v27 = v34;
  *(v27 + 1) = v28;
  v29 = v38;
  *v22 = v37;
  *(v22 + 1) = v29;
  v31 = v32;
  v30 = v33;
  *v23 = v39;
  *(v23 + 1) = v31;
  *v25 = v30;
  v25[8] = v35 & 1;
  a9[v24] = 1;
  return result;
}

uint64_t Notice.init(id:thumbnail:message:headnote:link:hapticFeedback:isDismissable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13)
{
  v17 = type metadata accessor for Notice(0);
  v18 = v17[5];
  v19 = type metadata accessor for Notice.Thumbnail(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = &a9[v17[7]];
  v21 = &a9[v17[8]];
  v22 = v17[10];
  v23 = &a9[v17[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_100A1CFF8(a3, &a9[v18]);
  v25 = &a9[v17[6]];
  *v25 = a4;
  *(v25 + 1) = a5;
  *v20 = a6;
  *(v20 + 1) = a7;
  *v21 = a8;
  *(v21 + 1) = a10;
  *v23 = a11;
  v23[8] = a12 & 1;
  a9[v22] = a13;
  return result;
}

uint64_t Notice.init(id:symbol:message:headnote:link:hapticFeedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v37 = a7;
  v38 = a8;
  v36 = a6;
  v35 = a13;
  v33 = a12;
  v34 = a5;
  v31 = a10;
  v32 = a11;
  sub_10010FC20(&qword_1011ABC70, &qword_100EF6198);
  __chkstk_darwin();
  v17 = (&v31 - v16);
  *v17 = Image.init(_internalSystemName:)();
  v18 = type metadata accessor for Notice.Thumbnail(0);
  swift_storeEnumTagMultiPayload();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 0, 1, v18);
  v20 = type metadata accessor for Notice(0);
  v21 = v20[5];
  v19((a9 + v21), 1, 1, v18);
  v22 = (a9 + v20[7]);
  v23 = (a9 + v20[8]);
  v24 = v20[10];
  v25 = a9 + v20[9];
  *a9 = a1;
  a9[1] = a2;
  result = sub_100A1CFF8(v17, a9 + v21);
  v27 = (a9 + v20[6]);
  v28 = v36;
  *v27 = v34;
  v27[1] = v28;
  v29 = v38;
  *v22 = v37;
  v22[1] = v29;
  v30 = v32;
  *v23 = v31;
  v23[1] = v30;
  *v25 = v33;
  v25[8] = v35 & 1;
  *(a9 + v24) = 1;
  return result;
}

uint64_t Notice.withLink(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100A1D4A0(v4, a3, type metadata accessor for Notice);
  v8 = (a3 + *(type metadata accessor for Notice(0) + 32));
  v9 = *v8;
  v10 = v8[1];

  result = sub_100020438(v9, v10);
  *v8 = a1;
  v8[1] = a2;
  return result;
}

unint64_t Notice.Variant.id.getter()
{
  type metadata accessor for Notice.Variant(0);
  __chkstk_darwin();
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A1D4A0(v0, v2, type metadata accessor for Notice.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7478654E79616C70;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_100A1DB0C(v2, type metadata accessor for Notice.Variant);
      result = 0x466F546465766F6DLL;
      break;
    case 2:
      sub_100A1DB0C(v2, type metadata accessor for Notice.Variant);
      result = 0xD000000000000016;
      break;
    case 3:
      sub_100A1DB0C(v2, type metadata accessor for Notice.Variant);
      result = 0xD000000000000014;
      break;
    case 4:
      sub_100A1DB0C(v2, type metadata accessor for Notice.Variant);
      result = 0x726F727265;
      break;
    case 5:
      return result;
    case 6:
      result = 0x7473614C79616C70;
      break;
    case 7:
      result = 0x6575516F54646461;
      break;
    case 8:
      result = 0x6574664179616C70;
      break;
    case 9:
      result = 0x417972617262696CLL;
      break;
    case 10:
      result = 0x72437265646C6F66;
      break;
    case 11:
      result = 0x436E6F6974617473;
      break;
    case 12:
      result = 0x64656E6E6970;
      break;
    case 13:
      result = 0x64656E6E69706E75;
      break;
    case 14:
      result = 0x657469726F766166;
      break;
    case 15:
      result = 0x69726F7661666E75;
      break;
    case 16:
      result = 0x4C74736567677573;
      break;
    case 17:
      result = 0xD00000000000001DLL;
      break;
    default:

      v5 = sub_10010FC20(&qword_1011ABC78, &qword_100EF61A0);
      sub_1000095E8(&v2[*(v5 + 48)], &unk_1011AA940, &unk_100EF2908);
      result = 0x506F546465646461;
      break;
  }

  return result;
}

uint64_t sub_100A1CC8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v27 - v9;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    a1 = 0xD000000000000010;
    v11 = 0x8000000100E607A0;
  }

  v12 = sub_1000294C0(_swiftEmptyArrayStorage);
  sub_1009AC87C(a1, v11, 0xD000000000000032, 0x8000000100E5DA90, _swiftEmptyArrayStorage, v12, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v10, 1u);
  v13 = v4;

  sub_1000089F8(v10, v8, &qword_1011A77F0, &unk_100EEAA20);
  if ((*(v5 + 48))(v8, 1, v4) == 1)
  {
    sub_1000095E8(v10, &qword_1011A77F0, &unk_100EEAA20);
  }

  else
  {
    v14 = v28;
    (*(v5 + 32))(v28, v8, v4);
    v15 = objc_opt_self();
    v16 = [v15 sharedApplication];
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    v20 = [v16 canOpenURL:v18];

    if (v20)
    {
      v21 = [v15 sharedApplication];
      URL._bridgeToObjectiveC()(v22);
      v24 = v23;
      sub_1008BD18C(_swiftEmptyArrayStorage);
      _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
      sub_10093F848();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v21 openURL:v24 options:isa completionHandler:0];
    }

    (*(v5 + 8))(v14, v13);
    v8 = v10;
  }

  return sub_1000095E8(v8, &qword_1011A77F0, &unk_100EEAA20);
}

uint64_t sub_100A1CFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011ABC70, &qword_100EF6198);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A1D070(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011AA940, &unk_100EF2908);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A1D0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice.Thumbnail(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s9MusicCore6NoticeV9ThumbnailO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v21 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Notice.Thumbnail(0);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v20 - v9;
  sub_10010FC20(&qword_1011ABEB8, &unk_100EF6268);
  __chkstk_darwin();
  v12 = &v20 - v11;
  v14 = *(v13 + 56);
  sub_100A1D4A0(a1, &v20 - v11, type metadata accessor for Notice.Thumbnail);
  sub_100A1D4A0(a2, &v12[v14], type metadata accessor for Notice.Thumbnail);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100A1D4A0(v12, v10, type metadata accessor for Notice.Thumbnail);
    if (!swift_getEnumCaseMultiPayload())
    {
      v17 = static Image.== infix(_:_:)();

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100A1D4A0(v12, v8, type metadata accessor for Notice.Thumbnail);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = v21;
      (*(v21 + 32))(v6, &v12[v14], v4);
      v17 = static Artwork.== infix(_:_:)();
      v18 = *(v16 + 8);
      v18(v6, v4);
      v18(v8, v4);
LABEL_12:
      sub_100A1DB0C(v12, type metadata accessor for Notice.Thumbnail);
      return v17 & 1;
    }

    (*(v21 + 8))(v8, v4);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_1000095E8(v12, &qword_1011ABEB8, &unk_100EF6268);
    v17 = 0;
    return v17 & 1;
  }

  sub_100A1DB0C(v12, type metadata accessor for Notice.Thumbnail);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_100A1D4A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s9MusicCore6NoticeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Notice.Thumbnail(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011ABC70, &qword_100EF6198);
  __chkstk_darwin();
  v9 = &v37 - v8;
  v10 = sub_10010FC20(&qword_1011ABEB0, &qword_100EF6260);
  __chkstk_darwin();
  v12 = &v37 - v11;
  v13 = *a1;
  v14 = a1[1];
  v38 = a1;
  if ((v13 != *a2 || v14 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = a2;
  v37 = type metadata accessor for Notice(0);
  v16 = *(v37 + 20);
  v17 = *(v10 + 48);
  sub_1000089F8(v38 + v16, v12, &qword_1011ABC70, &qword_100EF6198);
  v18 = v15 + v16;
  v19 = v15;
  sub_1000089F8(v18, &v12[v17], &qword_1011ABC70, &qword_100EF6198);
  v20 = *(v5 + 48);
  if (v20(v12, 1, v4) == 1)
  {
    if (v20(&v12[v17], 1, v4) == 1)
    {
      sub_1000095E8(v12, &qword_1011ABC70, &qword_100EF6198);
      goto LABEL_13;
    }

LABEL_9:
    sub_1000095E8(v12, &qword_1011ABEB0, &qword_100EF6260);
    return 0;
  }

  sub_1000089F8(v12, v9, &qword_1011ABC70, &qword_100EF6198);
  if (v20(&v12[v17], 1, v4) == 1)
  {
    sub_100A1DB0C(v9, type metadata accessor for Notice.Thumbnail);
    goto LABEL_9;
  }

  sub_100A1D0E0(&v12[v17], v7);
  v22 = _s9MusicCore6NoticeV9ThumbnailO21__derived_enum_equalsySbAE_AEtFZ_0(v9, v7);
  sub_100A1DB0C(v7, type metadata accessor for Notice.Thumbnail);
  sub_100A1DB0C(v9, type metadata accessor for Notice.Thumbnail);
  sub_1000095E8(v12, &qword_1011ABC70, &qword_100EF6198);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v23 = v37;
  v24 = *(v37 + 24);
  v25 = (v38 + v24);
  v26 = *(v38 + v24 + 8);
  v27 = (v19 + v24);
  if ((*v25 != *v27 || v26 != v27[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v28 = *(v23 + 28);
  v29 = (v38 + v28);
  v30 = *(v38 + v28 + 8);
  v31 = (v19 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (v32 && (*v29 == *v31 && v30 == v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v32)
  {
    return 0;
  }

LABEL_23:
  v33 = *(v23 + 36);
  v34 = (v38 + v33);
  v35 = *(v38 + v33 + 8);
  v36 = v19 + v33;
  result = v36[8];
  if ((v35 & 1) == 0)
  {
    return (*v34 == *v36) & ~result;
  }

  return result;
}

void sub_100A1D8EC(uint64_t a1)
{
  sub_100A1D9CC(319);
  if (v1 <= 0x3F)
  {
    sub_100A1DAC4(319, &qword_1011ABE68);
    if (v2 <= 0x3F)
    {
      sub_100A1DA4C(319, &qword_1011ABE70, "playlistCount folderName ");
      if (v3 <= 0x3F)
      {
        sub_100A1DA4C(319, &qword_1011ABE78, "folderCount folderName ");
        if (v4 <= 0x3F)
        {
          sub_100A1DAC4(319, &unk_1011ABE80);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100A1D9CC(uint64_t a1)
{
  if (!qword_1011ABE60)
  {
    sub_1001109D0(&unk_1011AA940, &unk_100EF2908);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1011ABE60);
    }
  }
}

void sub_100A1DA4C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1001109D0(&unk_1011ACB70, &qword_100EEEF60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_100A1DAC4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_10002F6C8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100A1DB0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v13 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v14 = v13[7];
  v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = v13[8];
  a7[v13[9]] = 1;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  sub_100A21CC4(a4, &a7[v13[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_100A1DCB8(a5, &a7[v14]);
  *&a7[v16] = a6;
  return result;
}

uint64_t sub_100A1DCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011ABED8, &qword_100EF6288);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v21 = a3;
  v22 = a6;
  sub_10010FC20(&qword_1011ABED8, &qword_100EF6288);
  __chkstk_darwin();
  v13 = &v21 - v12;
  v14 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v15 = &a7[v14[6]];
  *v15 = a4;
  *(v15 + 1) = a5;
  v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v17 = *(*(v16 - 8) + 56);
  v17(v13, 1, 1, v16);
  v18 = v14[7];
  v17(&a7[v18], 1, 1, v16);
  v19 = v14[8];
  a7[v14[9]] = 1;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = v21;
  result = sub_100A1DCB8(v13, &a7[v18]);
  *&a7[v19] = v22;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v31 = a3;
  v32 = a7;
  v30 = a2;
  sub_10010FC20(&qword_1011ABED8, &qword_100EF6288);
  __chkstk_darwin();
  v14 = &v29 - v13;
  v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = a4;
  v18[1] = a5;
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for AttributedString();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(a6, 1, v19) == 1)
  {
    sub_1000095E8(a6, &qword_1011A7BF8, &qword_100EF3430);
    v21 = 1;
  }

  else
  {
    (*(v20 + 32))(v14, a6, v19);
    swift_storeEnumTagMultiPayload();
    v21 = 0;
  }

  v22 = *(v16 + 56);
  v22(v14, v21, 1, v15);
  v23 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v24 = v23[7];
  v22(&a8[v24], 1, 1, v15);
  v25 = v23[8];
  a8[v23[9]] = 1;
  v27 = v30;
  v26 = v31;
  *a8 = a1;
  *(a8 + 1) = v27;
  *(a8 + 2) = v26;
  sub_100A21CC4(v18, &a8[v23[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_100A1DCB8(v14, &a8[v24]);
  *&a8[v25] = v32;
  return result;
}

uint64_t NowPlaying.TrackMetadata.StringKind.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    sub_1000095E8(a1, &qword_1011A7BF8, &qword_100EF3430);
    v6 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v7 = *(*(v6 - 8) + 56);
    v8 = v6;
    v9 = a2;
    v10 = 1;
  }

  else
  {
    (*(v5 + 32))(a2, a1, v4);
    v11 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    swift_storeEnumTagMultiPayload();
    v7 = *(*(v11 - 8) + 56);
    v9 = a2;
    v10 = 0;
    v8 = v11;
  }

  return v7(v9, v10, 1, v8);
}

{
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v27 = a3;
  v28 = a7;
  sub_10010FC20(&qword_1011ABED8, &qword_100EF6288);
  __chkstk_darwin();
  v15 = (&v27 - v14);
  v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AttributedString();
  (*(*(v20 - 8) + 32))(v19, a4, v20);
  swift_storeEnumTagMultiPayload();
  if (a6)
  {
    *v15 = a5;
    v15[1] = a6;
    swift_storeEnumTagMultiPayload();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = *(v17 + 56);
  v22(v15, v21, 1, v16);
  v23 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v24 = v23[7];
  v22((a8 + v24), 1, 1, v16);
  v25 = v23[8];
  *(a8 + v23[9]) = 1;
  *a8 = a1;
  a8[1] = a2;
  a8[2] = v27;
  sub_100A21CC4(v19, a8 + v23[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_100A1DCB8(v15, a8 + v24);
  *(a8 + v25) = v28;
  return result;
}

uint64_t NowPlaying.TrackMetadata.StringKind.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    *a3 = a1;
    a3[1] = a2;
    v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    swift_storeEnumTagMultiPayload();
    v5 = *(*(v4 - 8) + 56);
    v6 = a3;
    v7 = 0;
    v8 = v4;
  }

  else
  {
    v9 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v5 = *(*(v9 - 8) + 56);
    v8 = v9;
    v6 = a3;
    v7 = 1;
  }

  return v5(v6, v7, 1, v8);
}

{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NowPlaying.TrackMetadata.title.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 24);

  return sub_100A1E8B4(a1, v3);
}

uint64_t NowPlaying.TrackMetadata.subtitle.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 28);

  return sub_100A1DCB8(a1, v3);
}

void *NowPlaying.TrackMetadata.artwork.getter()
{
  v1 = *(v0 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 32));
  v2 = v1;
  return v1;
}

void NowPlaying.TrackMetadata.artwork.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NowPlaying.TrackMetadata(0) + 32);

  *(v1 + v3) = a1;
}

uint64_t sub_100A1E8B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlaying.TrackMetadata.StringKind.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A21C5C(v1, v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v7;
  }

  (*(v3 + 32))(v5, v7, v2);
  sub_100A1EAA4();
  v8 = AttributedStringProtocol.description.getter();
  (*(v3 + 8))(v5, v2);
  return v8;
}

unint64_t sub_100A1EAA4()
{
  result = qword_1011AADB0;
  if (!qword_1011AADB0)
  {
    type metadata accessor for AttributedString();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AADB0);
  }

  return result;
}

uint64_t sub_100A1EB00(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A21C5C(v2, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v4 + 32))(v6, v8, v3);
  sub_100A1EAA4();
  v9 = AttributedStringProtocol.description.getter();
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t NowPlaying.TrackMetadata.isArtworkVisuallyEqual(to:)(uint64_t a1)
{
  sub_10010FC20(&qword_1011ABEE0, &qword_100EF6290);
  __chkstk_darwin();
  v4 = &v12 - v3;
  v5 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v6 = *(v1 + *(v5 + 32));
  sub_1000089F8(a1, v4, &qword_1011ABEE0, &qword_100EF6290);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    v7 = v6;
    sub_1000095E8(v4, &qword_1011ABEE0, &qword_100EF6290);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *&v4[*(v5 + 32)];
    v7 = v9;
    v10 = v6;
    sub_100A21D2C(v4, type metadata accessor for NowPlaying.TrackMetadata);
    if (v6)
    {
      if (v9)
      {
        if ([v10 isArtworkVisuallyIdenticalToCatalog:v7])
        {
          v8 = 1;
        }

        else
        {
          sub_100009F78(0, &qword_1011AAEA0, NSObject_ptr);
          v8 = static NSObject.== infix(_:_:)();
        }
      }

      else
      {
        v8 = 0;
        v7 = v10;
      }

      goto LABEL_13;
    }

    if (v9)
    {
LABEL_3:
      v8 = 0;
LABEL_13:

      return v8 & 1;
    }
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t NowPlaying.TrackMetadata.isEmpty.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1011A6A30 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v4 = sub_1000060E4(v3, static NowPlaying.TrackMetadata.notPlaying);
  if (v1 == *v4 && v2 == v4[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100A1EF10()
{
  sub_10010FC20(&qword_1011ABED8, &qword_100EF6288);
  __chkstk_darwin();
  v25 = &v23 - v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v23 - v5;
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for NowPlaying.TrackMetadata(0);
  sub_100006080(v11, static NowPlaying.TrackMetadata.notPlaying);
  v12 = sub_1000060E4(v11, static NowPlaying.TrackMetadata.notPlaying);
  String.LocalizationValue.init(stringLiteral:)();
  v13 = *(v2 + 16);
  v24 = v1;
  v13(v4, v6, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v14 = qword_101219808;
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  (*(v2 + 8))(v6, v24);
  *v10 = v15;
  v10[1] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = *(v8 + 56);
  v19 = v25;
  v18(v25, 1, 1, v7);
  v20 = v11[7];
  v18(&v12[v20], 1, 1, v7);
  v21 = v11[8];
  *&v12[v21] = 0;
  v12[v11[9]] = 1;
  *v12 = 0x79616C705F746F6ELL;
  *(v12 + 1) = 0xEB00000000676E69;
  *(v12 + 2) = 0;
  sub_100A21CC4(v10, &v12[v11[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_100A1DCB8(v19, &v12[v20]);
  v22 = *&v12[v21];
  *&v12[v21] = 0;
}

void sub_100A1F2E4()
{
  sub_10010FC20(&qword_1011ABED8, &qword_100EF6288);
  __chkstk_darwin();
  v25 = &v23 - v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v23 - v5;
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for NowPlaying.TrackMetadata(0);
  sub_100006080(v11, static NowPlaying.TrackMetadata.loading);
  v12 = sub_1000060E4(v11, static NowPlaying.TrackMetadata.loading);
  String.LocalizationValue.init(stringLiteral:)();
  v13 = *(v2 + 16);
  v24 = v1;
  v13(v4, v6, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v14 = qword_101219808;
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  (*(v2 + 8))(v6, v24);
  *v10 = v15;
  v10[1] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = *(v8 + 56);
  v19 = v25;
  v18(v25, 1, 1, v7);
  v20 = v11[7];
  v18((v12 + v20), 1, 1, v7);
  v21 = v11[8];
  *(v12 + v21) = 0;
  *(v12 + v11[9]) = 1;
  strcpy(v12, "i_am_loading");
  *(v12 + 13) = 0;
  *(v12 + 14) = -5120;
  *(v12 + 16) = 0;
  sub_100A21CC4(v10, v12 + v11[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_100A1DCB8(v19, v12 + v20);
  v22 = *(v12 + v21);
  *(v12 + v21) = 0;
}

uint64_t sub_100A1F6B4(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);

  return sub_1000060E4(v4, a2);
}

uint64_t sub_100A1F72C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v7 = sub_1000060E4(v6, a2);
  return sub_100A21C5C(v7, a4, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t NowPlaying.TrackMetadata.init(playerPath:item:subtitled:)@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v62) = a3;
  v69 = a2;
  v71 = a4;
  sub_10010FC20(&qword_1011ABED8, &qword_100EF6288);
  __chkstk_darwin();
  v68 = &v58 - v5;
  v70 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin();
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributeContainer();
  __chkstk_darwin();
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for AttributedString();
  v65 = *(v67 - 8);
  __chkstk_darwin();
  v63 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v58 - v9;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v58 - v14;
  String.LocalizationValue.init(stringLiteral:)();
  v16 = *(v11 + 16);
  v16(v13, v15, v10);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v17 = qword_101219808;
  static Locale.current.getter();
  v18 = v17;
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v59 = v20;
  v60 = v19;
  v21 = *(v11 + 8);
  v21(v15, v10);
  String.LocalizationValue.init(stringLiteral:)();
  v16(v13, v15, v10);
  static Locale.current.getter();
  v22 = String.init(localized:table:bundle:locale:comment:)();
  v24 = v23;
  v21(v15, v10);
  v25 = [a1 route];
  v26 = a1;
  if (v25)
  {
    v27 = v25;
    v28 = [v25 routeName];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [a1 representedBundleDisplayName];
  if (!v32)
  {
    if (v62)
    {
      goto LABEL_11;
    }

LABEL_12:

    v37 = v59;

    v31 = v37;
    v36 = v60;
    v29 = v60;
    goto LABEL_13;
  }

  v33 = v32;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if ((v62 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!v35)
  {
LABEL_11:

    v37 = v59;

    v36 = v60;
    goto LABEL_13;
  }

  v31 = v24;
  v29 = v22;
  v37 = v59;
  v36 = v60;
LABEL_13:
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v38 = [v26 representedBundleID];
  if (!v38)
  {
    v38 = [v26 bundleID];
    if (!v38)
    {
      v61 = 0xD000000000000013;
      v62 = 0x8000000100E607E0;
      v66 = v26;
      if (v31)
      {
        goto LABEL_16;
      }

LABEL_18:
      v29 = v36;
      goto LABEL_19;
    }
  }

  v39 = v38;
  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v40;

  v66 = v26;
  if (!v31)
  {
    goto LABEL_18;
  }

LABEL_16:

  v37 = v31;
LABEL_19:
  v41 = v65;
  v42 = v63;
  v43 = v67;
  (*(v65 + 16))(v63, v72, v67);
  v44 = v70;
  v45 = v64;
  v46 = &v64[*(v70 + 24)];
  *v46 = v29;
  v46[1] = v37;
  v47 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v48 = v68;
  (*(v41 + 32))(v68, v42, v43);
  swift_storeEnumTagMultiPayload();
  v49 = *(*(v47 - 8) + 56);
  v49(v48, 0, 1, v47);
  v50 = v44[7];
  v49(v45 + v50, 1, 1, v47);
  v51 = v44[8];
  *(v45 + v44[9]) = 1;
  v52 = v62;
  *v45 = v61;
  v45[1] = v52;
  v53 = v69;
  v45[2] = v69;
  v54 = v53;
  sub_100A1DCB8(v48, v45 + v50);
  *(v45 + v51) = 0;
  v55 = v71;
  sub_100A21CC4(v45, v71, type metadata accessor for NowPlaying.TrackMetadata);
  v56 = v66;
  LOBYTE(v46) = [v66 isSystemMusicPath];

  result = (*(v41 + 8))(v72, v43);
  *(v55 + v44[9]) = v46;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:)@<X0>(void *a1@<X0>, void *a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_10010FC20(&qword_1011A7BF8, &qword_100EF3430);
  __chkstk_darwin();
  v11 = (&v65 - v10);
  sub_10010FC20(&qword_1011ABED8, &qword_100EF6288);
  __chkstk_darwin();
  v73 = &v65 - v12;
  v13 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v71 = *(v13 - 8);
  v72 = v13;
  __chkstk_darwin();
  v76 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = (&v65 - v15);
  v17 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v18 = *(v17 - 1);
  __chkstk_darwin();
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v77 = a2;
    v78 = a3;
    v74 = v17;
    v75 = a4;
    v21 = a1;
    v22 = [v21 metadataObject];
    if (v22)
    {
      v68 = v22;
      v23 = [v22 innermostModelObject];
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      v67 = a5;
      v69 = v18;
      v70 = v24;
      v25 = v78;
      if (v24)
      {

        if (v77 && (v26 = [v77 items], v27 = objc_msgSend(v26, "firstSection"), v26, v27) && (v28 = objc_msgSend(v27, "metadataObject"), v27, v28))
        {
          v29 = [v28 anyObject];

          v30 = v72;
          if (v29)
          {
            objc_opt_self();
            v65 = v29;
            v29 = swift_dynamicCastObjCClass();
            if (!v29)
            {
            }
          }
        }

        else
        {
          v29 = 0;
          v30 = v72;
        }

        v66 = a1;
        if (v25)
        {
          MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(v29, v25, v75);
        }

        else
        {
          *v16 = MPModelSong.nowPlayingTitle(from:)(v29);
          v16[1] = v35;
        }

        swift_storeEnumTagMultiPayload();
        v36 = [v21 queueItemIdentifier];
        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v37;

        sub_100A21C5C(v16, v76, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        v38 = v29;
        MPModelSong.preferredBylineAttribution(with:from:)(&off_1010C8308, v29, v11);
        v39 = type metadata accessor for AttributedString();
        v40 = *(v39 - 8);
        if ((*(v40 + 48))(v11, 1, v39) == 1)
        {
          sub_1000095E8(v11, &qword_1011A7BF8, &qword_100EF3430);
          v41 = 1;
          v42 = v73;
        }

        else
        {
          v42 = v73;
          (*(v40 + 32))(v73, v11, v39);
          swift_storeEnumTagMultiPayload();
          v41 = 0;
        }

        v43 = v30;
        v44 = *(v71 + 56);
        v44(v42, v41, 1, v43);
        v45 = [v70 artworkCatalog];

        sub_100020438(v78, v75);
        sub_100A21D2C(v16, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        v17 = v74;
        v46 = v74[7];
        v44(v20 + v46, 1, 1, v43);
        v47 = v17[8];
        *(v20 + v17[9]) = 1;
        v49 = v65;
        v48 = v66;
        *v20 = v72;
        v20[1] = v49;
        v20[2] = v48;
        sub_100A21CC4(v76, v20 + v17[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        sub_100A1DCB8(v42, v20 + v46);
        *(v20 + v47) = v45;
        a5 = v67;
      }

      else
      {
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (v32)
        {
          v33 = v32;
          v34 = v23;
          NowPlaying.TrackMetadata.init(tvEpisode:item:)(v33, v21, v20);

          sub_100020438(v25, v75);
          v17 = v74;
        }

        else
        {
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          v17 = v74;
          v52 = v75;
          if (!v51)
          {

            if (qword_1011A6A40 != -1)
            {
              swift_once();
            }

            v55 = type metadata accessor for Logger();
            sub_1000060E4(v55, qword_1011ABEC0);
            v56 = v68;
            v57 = Logger.logObject.getter();
            v58 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v57, v58))
            {
              v59 = v21;
              v60 = swift_slowAlloc();
              v61 = swift_slowAlloc();
              v80 = v61;
              *v60 = 136315138;
              v79 = [v56 type];
              type metadata accessor for MPModelGenericObjectType(0);
              v62 = String.init<A>(describing:)();
              v64 = sub_100010678(v62, v63, &v80);
              a5 = v67;

              *(v60 + 4) = v64;
              _os_log_impl(&_mh_execute_header, v57, v58, "Unexpected metadataObject type %s", v60, 0xCu);
              sub_10000959C(v61);

              sub_100020438(v78, v52);
            }

            else
            {

              sub_100020438(v78, v52);
            }

            v31 = 1;
            goto LABEL_23;
          }

          v53 = v51;
          v54 = v23;
          NowPlaying.TrackMetadata.init(movie:item:)(v53, v21, v20);

          sub_100020438(v78, v52);
        }
      }

      sub_100A21CC4(v20, a5, type metadata accessor for NowPlaying.TrackMetadata);
      v31 = 0;
LABEL_23:
      v18 = v69;
      return (*(v18 + 56))(a5, v31, 1, v17);
    }

    sub_100020438(v78, v75);
    v31 = 1;
    v17 = v74;
  }

  else
  {
    sub_100020438(a3, a4);

    v31 = 1;
  }

  return (*(v18 + 56))(a5, v31, 1, v17);
}

uint64_t NowPlaying.TrackMetadata.init(song:from:item:explicitBadgeConfigurator:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  sub_10010FC20(&qword_1011A7BF8, &qword_100EF3430);
  __chkstk_darwin();
  v11 = (&v35 - v10);
  sub_10010FC20(&qword_1011ABED8, &qword_100EF6288);
  __chkstk_darwin();
  v13 = &v35 - v12;
  v14 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v42 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = (&v35 - v18);
  v39 = v17;
  v40 = a4;
  if (v17)
  {
    MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(a2, v17, a4);
  }

  else
  {
    *v19 = MPModelSong.nowPlayingTitle(from:)(a2);
    v19[1] = v20;
  }

  swift_storeEnumTagMultiPayload();
  v41 = a3;
  v21 = [a3 queueItemIdentifier];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v23;
  v37 = v22;

  sub_100A21C5C(v19, v42, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v38 = a2;
  MPModelSong.preferredBylineAttribution(with:from:)(&off_1010C8330, a2, v11);
  v24 = type metadata accessor for AttributedString();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v11, 1, v24) == 1)
  {
    sub_1000095E8(v11, &qword_1011A7BF8, &qword_100EF3430);
    v26 = 1;
  }

  else
  {
    (*(v25 + 32))(v13, v11, v24);
    swift_storeEnumTagMultiPayload();
    v26 = 0;
  }

  v27 = *(v15 + 56);
  v27(v13, v26, 1, v14);
  v28 = [a1 artworkCatalog];

  sub_100020438(v39, v40);
  sub_100A21D2C(v19, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v29 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v30 = v29[7];
  v27(&a5[v30], 1, 1, v14);
  v31 = v29[8];
  a5[v29[9]] = 1;
  v32 = v36;
  *a5 = v37;
  *(a5 + 1) = v32;
  v33 = v42;
  *(a5 + 2) = v41;
  sub_100A21CC4(v33, &a5[v29[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_100A1DCB8(v13, &a5[v30]);
  *&a5[v31] = v28;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(tvEpisode:item:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10010FC20(&qword_1011ABED8, &qword_100EF6288);
  __chkstk_darwin();
  v47 = &v42 - v6;
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin();
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011A7BF8, &qword_100EF3430);
  __chkstk_darwin();
  v11 = &v42 - v10;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v12 = type metadata accessor for String.LocalizationValue();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v18 = &v42 - v17;
  v48 = a2;
  v19 = [a2 queueItemIdentifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v21;
  v43 = v20;

  v44 = a1;
  v22 = [a1 title];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v13 + 16))(v15, v18, v12);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v27 = qword_101219808;
    static Locale.current.getter();
    v24 = String.init(localized:table:bundle:locale:comment:)();
    v26 = v28;
    (*(v13 + 8))(v18, v12);
  }

  v29 = type metadata accessor for AttributedString();
  v30 = *(v29 - 8);
  (*(v30 + 56))(v11, 1, 1, v29);
  v31 = v44;
  v32 = [v44 artworkCatalog];

  *v9 = v24;
  v9[1] = v26;
  v33 = v46;
  swift_storeEnumTagMultiPayload();
  if ((*(v30 + 48))(v11, 1, v29) == 1)
  {
    sub_1000095E8(v11, &qword_1011A7BF8, &qword_100EF3430);
    v34 = 1;
    v35 = v47;
  }

  else
  {
    v35 = v47;
    (*(v30 + 32))(v47, v11, v29);
    swift_storeEnumTagMultiPayload();
    v34 = 0;
  }

  v36 = *(v45 + 56);
  v36(v35, v34, 1, v33);
  v37 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v38 = v37[7];
  v36(a3 + v38, 1, 1, v33);
  v39 = v37[8];
  *(a3 + v37[9]) = 1;
  v40 = v42;
  *a3 = v43;
  a3[1] = v40;
  a3[2] = v48;
  sub_100A21CC4(v9, a3 + v37[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_100A1DCB8(v35, a3 + v38);
  *(a3 + v39) = v32;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(movie:item:)@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  sub_10010FC20(&qword_1011ABED8, &qword_100EF6288);
  __chkstk_darwin();
  v7 = &v34 - v6;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v34 - v13;
  v15 = [a2 queueItemIdentifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v17;
  v36 = v16;

  v18 = [a1 title];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v9 + 16))(v11, v14, v8);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v23 = qword_101219808;
    static Locale.current.getter();
    v20 = String.init(localized:table:bundle:locale:comment:)();
    v22 = v24;
    (*(v9 + 8))(v14, v8);
  }

  v25 = [a1 artworkCatalog];

  v26 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v27 = &a3[v26[6]];
  *v27 = v20;
  v27[1] = v22;
  v28 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v29 = *(*(v28 - 8) + 56);
  v29(v7, 1, 1, v28);
  v30 = v26[7];
  v29(&a3[v30], 1, 1, v28);
  v31 = v26[8];
  a3[v26[9]] = 1;
  v32 = v35;
  *a3 = v36;
  *(a3 + 1) = v32;
  *(a3 + 2) = a2;
  result = sub_100A1DCB8(v7, &a3[v30]);
  *&a3[v31] = v25;
  return result;
}

uint64_t sub_100A213B4()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011ABEC0);
  sub_1000060E4(v0, qword_1011ABEC0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100A21434(uint64_t a1, uint64_t a2)
{
  String.append(_:)(*&a1);

  return Logger.init(subsystem:category:)();
}

uint64_t _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v24 = type metadata accessor for AttributedString();
  v4 = *(v24 - 8);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v23 - v9);
  sub_10010FC20(&qword_1011AC060, &qword_100EF6388);
  __chkstk_darwin();
  v12 = &v23 - v11;
  v14 = (&v23 + *(v13 + 56) - v11);
  sub_100A21C5C(a1, &v23 - v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_100A21C5C(a2, v14, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100A21C5C(v12, v10, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v19 = *v10;
    v18 = v10[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v19 == *v14 && v18 == v14[1])
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          sub_100A21D2C(v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
          goto LABEL_8;
        }
      }

      sub_100A21D2C(v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      v16 = 1;
      return v16 & 1;
    }

LABEL_7:
    sub_1000095E8(v12, &qword_1011AC060, &qword_100EF6388);
LABEL_8:
    v16 = 0;
    return v16 & 1;
  }

  sub_100A21C5C(v12, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v8, v24);
    goto LABEL_7;
  }

  v15 = v24;
  (*(v4 + 32))(v6, v14, v24);
  v16 = static AttributedString.== infix(_:_:)();
  v17 = *(v4 + 8);
  v17(v6, v15);
  v17(v8, v15);
  sub_100A21D2C(v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  return v16 & 1;
}

uint64_t _s9MusicCore10NowPlayingO13TrackMetadataV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  sub_10010FC20(&qword_1011ABEE0, &qword_100EF6290);
  __chkstk_darwin();
  v5 = &v24 - v4;
  v6 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011ABED8, &qword_100EF6288);
  __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = sub_10010FC20(&qword_1011AC058, &qword_100EF6380);
  __chkstk_darwin();
  v14 = &v24 - v13;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v15 = type metadata accessor for NowPlaying.TrackMetadata(0);
  if ((_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(a1 + *(v15 + 24), a2 + *(v15 + 24)) & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v9;
  v26 = v15;
  v27 = v5;
  v16 = *(v15 + 28);
  v17 = *(v12 + 48);
  sub_1000089F8(a1 + v16, v14, &qword_1011ABED8, &qword_100EF6288);
  sub_1000089F8(a2 + v16, &v14[v17], &qword_1011ABED8, &qword_100EF6288);
  v18 = *(v7 + 48);
  if (v18(v14, 1, v6) == 1)
  {
    if (v18(&v14[v17], 1, v6) == 1)
    {
      sub_1000095E8(v14, &qword_1011ABED8, &qword_100EF6288);
LABEL_13:
      v23 = v27;
      sub_100A21C5C(a2, v27, type metadata accessor for NowPlaying.TrackMetadata);
      (*(*(v26 - 8) + 56))(v23, 0, 1);
      v19 = NowPlaying.TrackMetadata.isArtworkVisuallyEqual(to:)(v23);
      sub_1000095E8(v23, &qword_1011ABEE0, &qword_100EF6290);
      return v19 & 1;
    }

    goto LABEL_9;
  }

  sub_1000089F8(v14, v11, &qword_1011ABED8, &qword_100EF6288);
  if (v18(&v14[v17], 1, v6) == 1)
  {
    sub_100A21D2C(v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_9:
    sub_1000095E8(v14, &qword_1011AC058, &qword_100EF6380);
    goto LABEL_10;
  }

  v21 = v25;
  sub_100A21CC4(&v14[v17], v25, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v22 = _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(v11, v21);
  sub_100A21D2C(v21, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_100A21D2C(v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1000095E8(v14, &qword_1011ABED8, &qword_100EF6288);
  if (v22)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_100A21C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A21CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A21D2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100A21DB4(uint64_t a1)
{
  sub_100A21F08(319, &qword_1011ABF50, &qword_1011ABF58, MPCPlayerResponseItem_ptr);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(319);
    if (v2 <= 0x3F)
    {
      sub_100A21EB0(319);
      if (v3 <= 0x3F)
      {
        sub_100A21F08(319, &qword_1011ABF68, &unk_1011ABF70, MPArtworkCatalog_ptr);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100A21EB0(uint64_t a1)
{
  if (!qword_1011ABF60)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011ABF60);
    }
  }
}

void sub_100A21F08(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_100009F78(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100A21F60(uint64_t a1)
{
  result = type metadata accessor for AttributedString();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100A21FE0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = static Edge.Set.top.getter();
  sub_10010FC20(&qword_1011AC070, &qword_100EF6420);
  State.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_10010FC20(&qword_1011AC078, &qword_100EF6428);
  (*(*(v17 - 8) + 16))(a3, a1, v17);
  v18 = a3 + *(sub_10010FC20(&qword_1011AC080, &qword_100EF6430) + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  v19 = sub_100A224A8();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a2;
  v21 = sub_10010FC20(&qword_1011AC088, &qword_100EF6438);
  *(a3 + *(v21 + 52)) = v19;
  v22 = (a3 + *(v21 + 56));
  *v22 = sub_100A2291C;
  v22[1] = v20;
}

void sub_100A22168(uint64_t a1)
{
  static Animation.easeInOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t View.keyboardReactive()(uint64_t a1)
{
  v1 = __chkstk_darwin();
  (*(v3 + 16))(v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v5[1] = 0;
  State.init(wrappedValue:)();
  return ModifiedContent.init(content:modifier:)();
}

unint64_t sub_100A22300()
{
  result = qword_1011AC068;
  if (!qword_1011AC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC068);
  }

  return result;
}

CGFloat sub_100A223AC()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_1000160B4(&v5), (v3 & 1) == 0))
  {

    sub_10001621C(&v5);
LABEL_8:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  sub_10000DD18(*(v1 + 56) + 32 * v2, &v6);
  sub_10001621C(&v5);

  if (!*(&v7 + 1))
  {
LABEL_9:
    sub_100011E58(&v6);
    return 0.0;
  }

  _s3__C6CGRectVMa_0(0);
  if (swift_dynamicCast())
  {
    return CGRectGetHeight(v5);
  }

  return 0.0;
}

uint64_t sub_100A224A8()
{
  v0 = sub_10010FC20(&qword_1011AC090, &qword_100EF6440);
  v1 = *(v0 - 8);
  v31 = v0;
  v32 = v1;
  __chkstk_darwin();
  v30 = &v27 - v2;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011AC098, &qword_100EF6448);
  v29 = *(v7 - 8);
  v8 = v29;
  __chkstk_darwin();
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v27 - v10;
  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  sub_100A2298C();
  Publisher.map<A>(_:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  v14 = [v11 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v15 = v28;
  Publisher.map<A>(_:)();
  v13(v6, v3);
  sub_10010FC20(&qword_1011AC0A8, &unk_100EF6450);
  v16 = *(v29 + 72);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBDC20;
  v19 = v18 + v17;
  v20 = *(v8 + 16);
  v21 = v27;
  v20(v19, v27, v7);
  v20(v19 + v16, v15, v7);
  sub_100020674(&qword_1011AC0B0, &qword_1011AC098, &qword_100EF6448, &protocol conformance descriptor for Publishers.Map<A, B>);
  v22 = v30;
  Publishers.MergeMany.init(_:)();
  sub_100020674(&qword_1011AC0B8, &qword_1011AC090, &qword_100EF6440, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v23 = v31;
  v24 = Publisher.eraseToAnyPublisher()();
  (*(v32 + 8))(v22, v23);
  v25 = *(v8 + 8);
  v25(v15, v7);
  v25(v21, v7);
  return v24;
}

unint64_t sub_100A2298C()
{
  result = qword_1011AC0A0;
  if (!qword_1011AC0A0)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC0A0);
  }

  return result;
}

uint64_t property wrapper backing initializer of OptionalObservableObject.output(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, a1, v3, v5);
  sub_10003BE8C(v7, v3);
  return (*(v4 + 8))(a1, v3);
}

double OptionalObservableObject.output.getter@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

uint64_t OptionalObservableObject.output.setter(uint64_t a1)
{
  sub_100A23628(a1);
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*OptionalObservableObject.output.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin();
  v3[4] = swift_getKeyPath();
  __chkstk_darwin();
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return sub_10012FF30;
}

uint64_t OptionalObservableObject.$output.getter()
{
  swift_beginAccess();
  type metadata accessor for Optional();
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t OptionalObservableObject.$output.setter(uint64_t a1)
{
  sub_100A2375C(a1);
  type metadata accessor for Optional();
  v2 = type metadata accessor for Published.Publisher();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*OptionalObservableObject.$output.modify(void *a1))(uint64_t a1, char a2)
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
  *v3 = v1;
  type metadata accessor for Optional();
  v5 = type metadata accessor for Published.Publisher();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  OptionalObservableObject.$output.getter();
  return sub_100A22F5C;
}

void sub_100A22F5C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_100A2375C(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_100A2375C(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t OptionalObservableObject.__allocating_init(publisher:)(__int128 *a1)
{
  v2 = swift_allocObject();
  OptionalObservableObject.init(publisher:)(a1);
  return v2;
}

uint64_t *OptionalObservableObject.init(publisher:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  type metadata accessor for Optional();
  v6 = type metadata accessor for Published();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = __chkstk_darwin();
  v12 = &v21 - v11;
  v13 = *(v4 + 88);
  (*(*(v5 - 8) + 56))(&v21 - v11, 1, 1, v5, v10);
  property wrapper backing initializer of OptionalObservableObject.output(v12, v5);
  (*(v7 + 32))(v2 + v13, v9, v6);
  *(v2 + *(*v2 + 104)) = 0;
  v14 = v2 + *(*v2 + 96);
  if (!*(a1 + 3))
  {
    v18 = a1[1];
    *v14 = *a1;
    *(v14 + 16) = v18;
    *(v14 + 32) = *(a1 + 4);
LABEL_8:
    v19 = a1[1];
    v21 = *a1;
    v22 = v19;
    v23 = *(a1 + 4);
    v15 = *(&v19 + 1);
    if (!*(&v19 + 1))
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_10000954C(&v21, v15);

    v17 = Publisher.sink(receiveCompletion:receiveValue:)();

    if (*(a1 + 3))
    {
      sub_10000959C(a1);
    }

    goto LABEL_11;
  }

  sub_100008FE4(a1, v14);
  if (!*(a1 + 3))
  {
    goto LABEL_8;
  }

  sub_100008FE4(a1, &v21);
  v15 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    goto LABEL_9;
  }

LABEL_4:
  v16 = *(a1 + 3);
  if (v16)
  {
    sub_10000959C(a1);
    v17 = 0;
    v16 = 0;
    if (*(&v22 + 1))
    {
LABEL_11:
      sub_10000959C(&v21);
      v16 = v17;
    }
  }

  *(v2 + *(*v2 + 104)) = v16;

  return v2;
}

uint64_t sub_100A2335C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 - 8);
  (*(v9 + 16))(&v11 - v7, a1, v3, v6);
  (*(v9 + 56))(v8, 0, 1, v3);
  sub_100A23628(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t *OptionalObservableObject.deinit()
{
  v1 = *(*v0 + 88);
  type metadata accessor for Optional();
  v2 = type metadata accessor for Published();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = (v0 + *(*v0 + 96));
  if (v3[3])
  {
    sub_10000959C(v3);
  }

  return v0;
}

uint64_t OptionalObservableObject.__deallocating_deinit()
{
  OptionalObservableObject.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100A235E4@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t x2_0@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for OptionalObservableObject(0, *(a1 + 80), x2_0, a4);
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t sub_100A23628(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v9 - v6;
  v9[2] = v3;
  swift_getKeyPath();
  v9[0] = v3;
  swift_getKeyPath();
  (*(v5 + 16))(v7, a1, v4);

  return static Published.subscript.setter();
}

uint64_t sub_100A2375C(uint64_t a1)
{
  type metadata accessor for Optional();
  type metadata accessor for Published.Publisher();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - v3, a1, v2);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

uint64_t sub_100A23890(uint64_t a1)
{
  type metadata accessor for Optional();
  result = type metadata accessor for Published();
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

uint64_t PrivacyAcknowledgementObserver.__allocating_init(dispatchOnMainThread:handler:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(a1, a2, a3);
  return v6;
}

double sub_100A239B4(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 32) == 1)
    {
      sub_10002705C();
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = a2 & 1;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100A23D14, v7);
    }

    else
    {
      (*(Strong + 40))(a2 & 1);
    }
  }

  return result;
}

void sub_100A23AD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t PrivacyAcknowledgementObserver.deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 sharedPrivacyInfo];
    [v3 endObservingPrivacyAcknowledgementForIdentifier:*(v0 + 16) withToken:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return v0;
}

uint64_t PrivacyAcknowledgementObserver.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 sharedPrivacyInfo];
    [v3 endObservingPrivacyAcknowledgementForIdentifier:*(v0 + 16) withToken:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_100A23C94(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 40);

    v5(a2 & 1);
  }

  return result;
}

uint64_t sub_100A23D20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1008B9918(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1008B63F4(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1008BACE8();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100A6C29C(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

void sub_100A23EE0(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_100016270(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_1008B9AE4(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    sub_1000095E8(a1, &qword_1011ABB20, &unk_100EF1530);
    sub_100A6B964(a2, v6);

    sub_1000095E8(v6, &qword_1011ABB20, &unk_100EF1530);
  }
}

uint64_t sub_100A23F94(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011AC220, &qword_100EF65E8);
  __chkstk_darwin();
  v6 = &v15 - v5;
  type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  v7 = __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v7) == 1)
  {
    sub_1000095E8(a1, &unk_1011AC220, &qword_100EF65E8);
    sub_100A6BA04(a2, v6);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(a2, v11);
    return sub_1000095E8(v6, &unk_1011AC220, &qword_100EF65E8);
  }

  else
  {
    sub_1008BDD2C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1008B9C34(v9, a2, isUniquelyReferenced_nonNull_native);
    v14 = type metadata accessor for UUID();
    result = (*(*(v14 - 8) + 8))(a2, v14);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_100A241A0(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011AE080, &unk_100EF6758);
  __chkstk_darwin();
  v6 = &v16 - v5;
  v7 = sub_10010FC20(&qword_1011A85A0, &qword_100EED870);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v16 - v10;
  if ((*(v8 + 48))(a1, 1, v7, v9) == 1)
  {
    sub_1000095E8(a1, &unk_1011AE080, &unk_100EF6758);
    sub_100A6BCEC(a2, v6);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1000095E8(v6, &unk_1011AE080, &unk_100EF6758);
  }

  else
  {
    (*(v8 + 32))(v11, a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1008BA110(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

id sub_100A243D4()
{
  v0 = type metadata accessor for PushNotificationObserver();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_1008BD7C4(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static PushNotificationObserver.shared = result;
  return result;
}

id sub_100A24450()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_1008BD7C4(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t *PushNotificationObserver.shared.unsafeMutableAddressor()
{
  if (qword_1011A6A48 != -1)
  {
    swift_once();
  }

  return &static PushNotificationObserver.shared;
}

double static PushNotificationObserver.shared.getter()
{
  if (qword_1011A6A48 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t PushNotificationObserver.register(for:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  sub_10010FC20(&unk_1011AC220, &qword_100EF65E8);
  v6[11] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_100A2466C, v5, 0);
}

uint64_t sub_100A2466C()
{
  v1 = *(v0 + 80);
  if (*(v1 + 120))
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 72);
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    *v7 = *(v0 + 48);
    *(v7 + 8) = v8;
    *(v7 + 24) = v6;
    v9 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
    v10 = *(v9 + 24);

    UUID.init()();
    (*(v3 + 16))(v2, v7 + v10, v4);
    sub_1008BDDF4(v7, v5);
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    swift_beginAccess();
    sub_100A23F94(v5, v2);
    swift_endAccess();
    v11 = *(v1 + 120);
    if (v11)
    {
      v12 = *(v0 + 80);
      v14 = *(v12 + 128);
      v13 = *(v12 + 136);
      sub_100A260E4(*(v1 + 120), v14, v13);
      v15 = v11;
      sub_100344B48(v11, v14, v13);
      sub_100A25224();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v15 _setEnabledTopics:isa];
    }

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = swift_task_alloc();
    *(v0 + 120) = v19;
    *v19 = v0;
    v19[1] = sub_100A248CC;

    return sub_100A25C28();
  }
}

uint64_t sub_100A248CC()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_100A249DC, v1, 0);
}

uint64_t sub_100A249DC()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  v8 = *(v0 + 56);
  *v7 = *(v0 + 48);
  *(v7 + 8) = v8;
  *(v7 + 24) = v5;
  v9 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  v10 = *(v9 + 24);

  UUID.init()();
  (*(v2 + 16))(v1, v7 + v10, v3);
  sub_1008BDDF4(v7, v4);
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  swift_beginAccess();
  sub_100A23F94(v4, v1);
  swift_endAccess();
  v11 = *(v6 + 120);
  if (v11)
  {
    v12 = *(v0 + 80);
    v14 = *(v12 + 128);
    v13 = *(v12 + 136);
    sub_100A260E4(*(v6 + 120), v14, v13);
    v15 = v11;
    sub_100344B48(v11, v14, v13);
    sub_100A25224();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 _setEnabledTopics:isa];
  }

  v17 = *(v0 + 8);

  return v17();
}

double PushNotificationObserver.unregister(registeredHandler:)(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&unk_1011AC220, &qword_100EF65E8);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(v7 + 16))(v9, a1 + *(v10 + 24), v6);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  swift_beginAccess();
  sub_100A23F94(v5, v9);
  swift_endAccess();
  v13 = (v2 + 120);
  v12 = *(v2 + 120);
  if (v12)
  {
    v15 = *(v2 + 128);
    v14 = *(v2 + 136);
    sub_100A260E4(*(v2 + 120), v15, v14);
    v16 = v12;
    sub_100344B48(v12, v15, v14);
    sub_100A25224();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v16 _setEnabledTopics:isa];
  }

  if (!*(*(v2 + 112) + 16))
  {
    v18 = *v13;
    if (*v13)
    {
      [v18 setDelegate:0];
      v18 = *v13;
      if (*v13)
      {
        [v18 shutdown];
        v18 = *v13;
      }
    }

    v19 = *(v2 + 128);
    v20 = *(v2 + 136);
    *v13 = 0;
    *(v2 + 128) = 0;
    *(v2 + 136) = 0;
    return sub_100344B48(v18, v19, v20);
  }

  return result;
}

void PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v9 = &v12 - v8;
  if (a4)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v4;
    v11[5] = a2;
    v11[6] = a3;
    v11[7] = a4;

    sub_100969440(0, 0, v9, &unk_100EF6608, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100A24FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100A24FC8, 0, 0);
}

uint64_t sub_100A24FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 32))
  {
    return _swift_task_switch(sub_100A24FF0, *(v3 + 16), 0);
  }

  __break(1u);
  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100A24FF0()
{
  sub_100A256BC(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

void *sub_100A25224()
{
  v56 = sub_10010FC20(&qword_1011AC3E0, &qword_100EF6748);
  __chkstk_darwin();
  v55 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v46 - v2;
  __chkstk_darwin();
  v53 = &v46 - v3;
  __chkstk_darwin();
  v52 = &v46 - v4;
  if (!*(v0 + 152))
  {
    return _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v5 = *(*(v0 + 112) + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v60 = _swiftEmptyArrayStorage;

  sub_100015C24(0, v5, 0);
  v8 = v7;
  v6 = v60;
  v9 = v8 + 64;
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = 0;
  v13 = *(v8 + 36);
  v47 = v8 + 72;
  v48 = v5;
  v49 = v13;
  v50 = v8 + 64;
  v51 = v8;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v8 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_25;
    }

    if (v13 != *(v8 + 36))
    {
      goto LABEL_26;
    }

    v57 = v12;
    v58 = 1 << v11;
    v16 = v56;
    v17 = *(v56 + 48);
    v18 = *(v8 + 48);
    v19 = type metadata accessor for UUID();
    v20 = *(v19 - 8);
    v21 = v20;
    v22 = v18 + *(v20 + 72) * v11;
    v23 = *(v20 + 16);
    v59 = v6;
    v24 = v52;
    v23(v52, v22, v19);
    v25 = *(v8 + 56);
    v26 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
    sub_1008BDDF4(v25 + *(*(v26 - 8) + 72) * v11, &v24[v17]);
    v27 = *(v21 + 32);
    v28 = v53;
    v27(v53, v24, v19);
    sub_1008BDD2C(&v24[v17], v28 + *(v16 + 48));
    v29 = v54;
    sub_100A26E38(v28, v54);
    v30 = *(v16 + 48);
    v31 = v55;
    v32 = &v55[v30];
    v27(v55, v29, v19);
    v33 = v29 + v30;
    v6 = v59;
    sub_1008BDD2C(v33, v31 + v30);
    v34 = *v32;
    v35 = *(v32 + 1);

    sub_1000095E8(v31, &qword_1011AC3E0, &qword_100EF6748);
    result = sub_1000095E8(v28, &qword_1011AC3E0, &qword_100EF6748);
    v60 = v6;
    v37 = v6[2];
    v36 = v6[3];
    if (v37 >= v36 >> 1)
    {
      result = sub_100015C24((v36 > 1), v37 + 1, 1);
      v6 = v60;
    }

    v6[2] = v37 + 1;
    v38 = &v6[2 * v37];
    v38[4] = v34;
    v38[5] = v35;
    v8 = v51;
    v14 = 1 << *(v51 + 32);
    if (v11 >= v14)
    {
      goto LABEL_27;
    }

    v9 = v50;
    v39 = *(v50 + 8 * v15);
    if ((v39 & v58) == 0)
    {
      goto LABEL_28;
    }

    LODWORD(v13) = v49;
    if (v49 != *(v51 + 36))
    {
      goto LABEL_29;
    }

    v40 = v39 & (-2 << (v11 & 0x3F));
    if (v40)
    {
      v14 = __clz(__rbit64(v40)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v41 = v15 << 6;
      v42 = v15 + 1;
      v43 = (v47 + 8 * v15);
      while (v42 < (v14 + 63) >> 6)
      {
        v45 = *v43++;
        v44 = v45;
        v41 += 64;
        ++v42;
        if (v45)
        {
          result = sub_1000D8F7C(v11, v49, 0);
          v14 = __clz(__rbit64(v44)) + v41;
          goto LABEL_5;
        }
      }

      result = sub_1000D8F7C(v11, v49, 0);
    }

LABEL_5:
    v12 = v57 + 1;
    v11 = v14;
    if (v57 + 1 == v48)
    {

      return v6;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_100A256BC(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v36 = a3;
  v51 = a1;
  v46 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  __chkstk_darwin();
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v45 = &v34 - v7;
  v50 = type metadata accessor for UUID();
  v8 = *(v50 - 8);
  __chkstk_darwin();
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011AC3D8, &qword_100EF6740);
  __chkstk_darwin();
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v34 - v12;
  swift_beginAccess();
  v14 = *(v3 + 112);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v35 = (v15 + 63) >> 6;
  v38 = v8 + 32;
  v39 = v8 + 16;
  v44 = v8;
  v18 = (v8 + 8);
  v19 = v14 + 64;
  v48 = v14;
  v49 = v18;

  v20 = 0;
  v47 = a2;
  v41 = v11;
  v42 = v6;
  v40 = v13;
  v37 = v19;
  while (v17)
  {
    v21 = v20;
LABEL_16:
    v24 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = v24 | (v21 << 6);
    v26 = v48;
    v27 = v44;
    (*(v44 + 16))(v43, *(v48 + 48) + *(v44 + 72) * v25, v50);
    v28 = *(v26 + 56);
    v29 = v45;
    sub_1008BDDF4(v28 + *(v46 + 72) * v25, v45);
    v30 = sub_10010FC20(&qword_1011AC3E0, &qword_100EF6748);
    v31 = *(v30 + 48);
    v11 = v41;
    (*(v27 + 32))();
    sub_1008BDD2C(v29, &v11[v31]);
    (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
    a2 = v47;
    v6 = v42;
    v13 = v40;
    v19 = v37;
LABEL_17:
    sub_100A26CA4(v11, v13);
    v32 = sub_10010FC20(&qword_1011AC3E0, &qword_100EF6748);
    if ((*(*(v32 - 8) + 48))(v13, 1, v32) == 1)
    {

      return;
    }

    sub_1008BDD2C(&v13[*(v32 + 48)], v6);
    if (*v6 == v51 && v6[1] == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v6[2](v51, a2, v36);
    }

    sub_10072B45C(v6);
    (*v49)(v13, v50);
  }

  if (v35 <= v20 + 1)
  {
    v22 = v20 + 1;
  }

  else
  {
    v22 = v35;
  }

  v23 = v22 - 1;
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v35)
    {
      v33 = sub_10010FC20(&qword_1011AC3E0, &qword_100EF6748);
      (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
      v17 = 0;
      v20 = v23;
      goto LABEL_17;
    }

    v17 = *(v19 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_16;
    }
  }

  __break(1u);
}

double sub_100A25B90(id a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[15];
  if (v7)
  {
    [v7 setDelegate:0];
    v8 = v3[15];
    if (v8)
    {
      [v8 shutdown];
    }
  }

  if (a1)
  {
    [a1 setDelegate:v3];
  }

  v9 = v3[15];
  v10 = v3[16];
  v11 = v3[17];
  v3[15] = a1;
  v3[16] = a2;
  v3[17] = a3;

  return sub_100344B48(v9, v10, v11);
}

uint64_t sub_100A25C28()
{
  *(v1 + 32) = v0;
  v2 = sub_100A26EA8();
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = sub_100A25D14;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, v0, v2, 0xD000000000000017, 0x8000000100E60920, sub_100A261F8, 0, &type metadata for PushNotificationObserver.PushConfiguration);
}

uint64_t sub_100A25D14()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100A25E24, v1, 0);
}

uint64_t sub_100A25E24()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  *(v1 + 144) = v3;
  *(v1 + 152) = v2;

  if (v2)
  {
    v4 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v4 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10002705C();

      v5 = static OS_dispatch_queue.main.getter();
      v6 = objc_allocWithZone(APSConnection);
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();

      v9 = [v6 initWithEnvironmentName:v7 namedDelegatePort:v8 queue:v5];

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {

      v9 = 0;
    }

    v3 = 0;
    v2 = 0;
  }

  else
  {
    v9 = 0;
    v3 = 0;
  }

LABEL_10:
  v10 = v0[4];
  v11 = v10[15];
  v12 = v10[16];
  v13 = v10[17];
  if (v11)
  {

    v14 = v12;
    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  sub_100A260E4(v11, v12, v13);
  sub_100344B48(v11, v12, v13);
  if (!v9)
  {
    if (!v15)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (!v15)
  {
    if (!v2)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (!v2)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v14 != v3 || v15 != v2)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_25;
    }

LABEL_23:
    v16.n128_f64[0] = sub_100A25B90(v9, v3, v2);
    goto LABEL_26;
  }

LABEL_25:
  v16.n128_f64[0] = sub_100344B48(v9, v3, v2);
LABEL_26:
  v18 = v0[1];

  return v18(v16);
}

uint64_t type metadata accessor for PushNotificationObserver.RegisteredHandler(uint64_t a1)
{
  result = qword_1011AC310;
  if (!qword_1011AC310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100A260E4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
  }

  return result;
}

uint64_t sub_100A26124(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_100A24FA4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100A261F8(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AC3F8, &qword_100EF6768);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v21 - v6;
  if (qword_1011A68E8 != -1)
  {
    swift_once();
  }

  v8 = static BagProvider.shared;
  v9 = *(v3 + 16);
  v9(v7, a1, v2);
  v9(v5, v7, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v7, v2);
  v12 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;
  sub_10010FC20(&qword_1011A9F70, &qword_100EE9590);
  UnfairLock.locked<A>(_:)(sub_10000E338);
  v13 = v22;
  if (v22)
  {
    sub_100A26558(v22);
  }

  else
  {
    type metadata accessor for BagProvider.Observer();
    v14 = swift_allocObject();
    v21[1] = v12;
    v15 = v14;
    swift_weakInit();
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    swift_weakAssign();
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = sub_100A26EFC;
    v17[3] = v11;
    v17[4] = v16;
    v17[5] = v15;
    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    *(v15 + 24) = sub_1009613A8;
    *(v15 + 32) = v17;

    sub_100020438(v18, v19);

    __chkstk_darwin();
    v21[-2] = v8;
    v21[-1] = v15;
    UnfairLock.locked<A>(_:)(sub_1009613B4);
    sub_10000679C(0);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100A26558(void *a1)
{
  v1 = [a1 dictionaryForBagKey:ICURLBagKeyPushNotifications];
  if (!v1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_1000160B4(&v10), (v5 & 1) == 0))
  {

    sub_10001621C(&v10);
    goto LABEL_8;
  }

  sub_10000DD18(*(v3 + 56) + 32 * v4, v12);
  sub_10001621C(&v10);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v8;
    goto LABEL_10;
  }

  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  LODWORD(v6) = [v6 isValidEnvironment:v7];

  if (!v6)
  {

    goto LABEL_8;
  }

  v10 = 0x6D6E6F7269766E65;
  v11 = 0xEB00000000746E65;
LABEL_10:
  sub_10010FC20(&qword_1011AC3F8, &qword_100EF6768);
  return CheckedContinuation.resume(returning:)();
}

uint64_t PushNotificationObserver.deinit()
{

  sub_100344B48(*(v0 + 120), *(v0 + 128), *(v0 + 136));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PushNotificationObserver.__deallocating_deinit()
{

  sub_100344B48(*(v0 + 120), *(v0 + 128), *(v0 + 136));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_100A267EC(uint64_t a1)
{
  result = sub_10001F838();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100A26880(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_100A269C0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_100A26BE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100A26C30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100A26CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AC3D8, &qword_100EF6740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A26D14()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100A26D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_100A24FA4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100A26E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AC3E0, &qword_100EF6748);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100A26EA8()
{
  result = qword_1011AC3E8;
  if (!qword_1011AC3E8)
  {
    type metadata accessor for PushNotificationObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC3E8);
  }

  return result;
}

uint64_t sub_100A26EFC(void *a1)
{
  sub_10010FC20(&qword_1011AC3F8, &qword_100EF6768);

  return sub_100A26558(a1);
}

double Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v66 = a5;
  v67 = a6;
  v72 = a4;
  v64 = a9;
  v65 = a3;
  v69 = a2;
  v60 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v71 = *(v60 + 64);
  __chkstk_darwin();
  v63 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v52 - v14;
  v15 = *(a7 - 8);
  __chkstk_darwin();
  v62 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v52 - v17;
  v19 = v18;
  v59 = v18;
  __chkstk_darwin();
  v21 = &v52 - v20;
  v22 = a8;
  v68 = a8;
  sub_100A2828C(a7, a9);
  v53 = *(v15 + 16);
  v58 = a1;
  v53(v21, a1, a7);
  v23 = *(v15 + 80);
  v24 = (v23 + 32) & ~v23;
  v55 = v23 | 7;
  v25 = v19 + 7;
  v26 = (v19 + 7 + v24) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = a7;
  *(v27 + 24) = v22;
  v54 = *(v15 + 32);
  v56 = v15 + 32;
  v28 = v27 + v24;
  v29 = v27;
  v61 = v27;
  v54(v28, v21, a7);
  v30 = v69;
  *(v29 + v26) = v69;
  v31 = v57;
  v53(v57, a1, a7);
  sub_1000089F8(v72, v70, &qword_1011A8660, &unk_100EEDB60);
  v32 = (v23 + 40) & ~v23;
  v33 = (v25 + v32) & 0xFFFFFFFFFFFFFFF8;
  v34 = *(v60 + 80);
  v35 = swift_allocObject();
  v36 = v68;
  v35[2] = a7;
  v35[3] = v36;
  v35[4] = v30;
  v37 = v54;
  v54(v35 + v32, v31, a7);
  sub_10012B828(v65, v35 + v33);
  sub_10003D17C(v70, v35 + ((v33 + v34 + 96) & ~v34), &qword_1011A8660, &unk_100EEDB60);
  v38 = v63;
  sub_10003D17C(v72, v63, &qword_1011A8660, &unk_100EEDB60);
  v39 = v62;
  v37(v62, v58, a7);
  v40 = (v34 + 48) & ~v34;
  v41 = (v71 + v23 + v40) & ~v23;
  v42 = swift_allocObject();
  v43 = v68;
  *(v42 + 2) = a7;
  *(v42 + 3) = v43;
  v44 = v67;
  *(v42 + 4) = v66;
  *(v42 + 5) = v44;
  sub_10003D17C(v38, &v42[v40], &qword_1011A8660, &unk_100EEDB60);
  v37(&v42[v41], v39, a7);
  v45 = type metadata accessor for Actions.Pin.Context(0);
  v46 = v64;
  v47 = (v64 + v45[5]);
  v48 = v61;
  *v47 = sub_100A29828;
  v47[1] = v48;
  v49 = (v46 + v45[6]);
  *v49 = &unk_100EF6778;
  v49[1] = v35;
  v50 = (v46 + v45[7]);
  *v50 = &unk_100EF6788;
  v50[1] = v42;

  return result;
}

int *static Actions.Pin.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100A2F7E8(a1, a2, type metadata accessor for Actions.Pin.Context);
  result = sub_10010FC20(&qword_1011A8678, &qword_100EEDBC0);
  *(a2 + result[9]) = 7;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_100A278D0;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_100EF6790;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_100EF6798;
  v6[1] = 0;
  return result;
}

double Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v53 = a5;
  v54 = a6;
  v55 = a4;
  v50 = a3;
  v57 = a2;
  v52 = a9;
  v11 = *(a7 - 8);
  __chkstk_darwin();
  v49 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v46 = &v42 - v13;
  v15 = v14;
  v48 = v14;
  __chkstk_darwin();
  v17 = &v42 - v16;
  v19 = v18;
  v56 = v18;
  sub_100A2828C(v20, v21);
  v45 = *(v11 + 16);
  v45(v17, v19, a7);
  v47 = *(v11 + 80);
  v22 = (v47 + 40) & ~v47;
  v23 = swift_allocObject();
  v51 = v23;
  *(v23 + 2) = a7;
  *(v23 + 3) = a8;
  v24 = v57;
  *(v23 + 4) = v57;
  v43 = *(v11 + 32);
  v44 = v11 + 32;
  v43(v23 + v22, v17, a7);
  v25 = v46;
  v45(v46, v56, a7);
  v26 = swift_allocObject();
  *(v26 + 2) = a7;
  *(v26 + 3) = a8;
  *(v26 + 4) = v24;
  v27 = v25;
  v28 = v43;
  v43(&v26[v22], v27, a7);
  sub_10012B828(v50, &v26[(v22 + v15 + 7) & 0xFFFFFFFFFFFFFFF8]);
  v29 = v49;
  v28(v49, v56, a7);
  v30 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v31 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v32 = (*(v30 + 64) + v47 + v31) & ~v47;
  v33 = swift_allocObject();
  *(v33 + 2) = a7;
  *(v33 + 3) = a8;
  v34 = v54;
  *(v33 + 4) = v53;
  *(v33 + 5) = v34;
  sub_10003D17C(v55, &v33[v31], &qword_1011A8660, &unk_100EEDB60);
  v28(&v33[v32], v29, a7);
  v35 = type metadata accessor for Actions.Unpin.Context(0);
  v37 = v51;
  v36 = v52;
  v38 = (v52 + v35[5]);
  *v38 = sub_100A2DFC0;
  v38[1] = v37;
  v39 = (v36 + v35[6]);
  *v39 = &unk_100EF67A8;
  v39[1] = v26;
  v40 = (v36 + v35[7]);
  *v40 = &unk_100EF67B8;
  v40[1] = v33;

  return result;
}

int *static Actions.Unpin.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100A2F7E8(a1, a2, type metadata accessor for Actions.Unpin.Context);
  result = sub_10010FC20(&qword_1011A8670, &qword_100EF4CB0);
  *(a2 + result[9]) = 8;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_100A27B20;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_100EF67C0;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_100EF67C8;
  v6[1] = 0;
  return result;
}

uint64_t sub_100A27908()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Pin.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1008DB844;

  return v5();
}

uint64_t sub_100A27A24()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Pin.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1008DB844;

  return v5();
}

uint64_t sub_100A27B98()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Unpin.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1008DB844;

  return v5();
}

uint64_t sub_100A27CB4()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Unpin.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1008DB844;

  return v5();
}

int *static Actions.UpdatePinAction.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MusicPin.Action();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Actions.UpdatePinAction.Context(0) - 8;
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A2F7E8(a1, v10, type metadata accessor for Actions.UpdatePinAction.Context);
  (*(v5 + 16))(v7, a1 + *(v8 + 28), v4);
  v11 = (*(v5 + 88))(v7, v4);
  if (v11 != enum case for MusicPin.Action.navigate(_:))
  {
    if (v11 != enum case for MusicPin.Action.play(_:))
    {
      if (v11 == enum case for MusicPin.Action.shuffle(_:))
      {
        v12 = 45;
        goto LABEL_8;
      }

      (*(v5 + 8))(v7, v4);
    }

    v12 = 44;
    goto LABEL_8;
  }

  v12 = 46;
LABEL_8:
  sub_100A33818(v10, a2, type metadata accessor for Actions.UpdatePinAction.Context);
  result = sub_10010FC20(&qword_1011AC400, &qword_100EF67E0);
  *(a2 + result[9]) = v12;
  *(a2 + result[11]) = 0x4014000000000000;
  v14 = (a2 + result[10]);
  *v14 = sub_100A28014;
  v14[1] = 0;
  v15 = (a2 + result[12]);
  *v15 = &unk_100EF67D0;
  v15[1] = 0;
  v16 = (a2 + result[13]);
  *v16 = &unk_100EF67D8;
  v16[1] = 0;
  return result;
}

uint64_t sub_100A28070(__n128 a1)
{
  v2 = *(v1 + 16);
  v3 = (v2 + *(type metadata accessor for Actions.UpdatePinAction.Context(0) + 28));
  v6 = (*v3 + **v3);
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_1008DB254;

  return v6();
}

uint64_t sub_100A2818C(__n128 a1)
{
  v2 = *(v1 + 16);
  v3 = (v2 + *(type metadata accessor for Actions.UpdatePinAction.Context(0) + 32));
  v6 = (*v3 + **v3);
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_1008DB844;

  return v6();
}

uint64_t sub_100A2828C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v89 = type metadata accessor for MusicPin();
  v87 = *(v89 - 8);
  __chkstk_darwin();
  v86 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v86 - v4;
  v99 = type metadata accessor for RecentlyAddedMusicItem();
  v92 = *(v99 - 8);
  __chkstk_darwin();
  v90 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v86 - v6;
  __chkstk_darwin();
  v93 = &v86 - v7;
  v96 = type metadata accessor for Playlist.Entry.InternalItem();
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for Playlist.Entry();
  v98 = *(v104 - 8);
  __chkstk_darwin();
  v97 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v86 - v10;
  v106 = type metadata accessor for Track();
  v103 = *(v106 - 8);
  __chkstk_darwin();
  v101 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v86 - v12;
  __chkstk_darwin();
  v105 = &v86 - v13;
  v110 = type metadata accessor for Song();
  v107 = *(v110 - 8);
  __chkstk_darwin();
  v108 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for Playlist();
  v109 = *(v111 - 8);
  __chkstk_darwin();
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MusicVideo();
  v112 = *(v17 - 8);
  v113 = v17;
  __chkstk_darwin();
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Artist();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Album();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin();
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v31;
  (*(v31 + 16))(v30, v114, a1, v28);
  if (swift_dynamicCast())
  {
    v32 = v115;
    (*(v25 + 32))(v115, v27, v24);
    v33 = &enum case for MusicPin.Item.album(_:);
LABEL_3:
    v34 = *v33;
    v35 = type metadata accessor for MusicPin.Item();
    v36 = *(v35 - 8);
    (*(v36 + 104))(v32, v34, v35);
    (*(v36 + 56))(v32, 0, 1, v35);
    return (*(v116 + 8))(v30, a1);
  }

  v37 = v115;
  if (swift_dynamicCast())
  {
    v38 = v37;
    (*(v21 + 32))(v37, v23, v20);
    v39 = enum case for MusicPin.Item.artist(_:);
    v40 = type metadata accessor for MusicPin.Item();
    v41 = *(v40 - 8);
    (*(v41 + 104))(v38, v39, v40);
    (*(v41 + 56))(v38, 0, 1, v40);
    return (*(v116 + 8))(v30, a1);
  }

  v43 = v113;
  if (swift_dynamicCast())
  {
    v32 = v37;
    (*(v112 + 32))(v37, v19, v43);
    v33 = &enum case for MusicPin.Item.musicVideo(_:);
    goto LABEL_3;
  }

  v44 = v111;
  v32 = v37;
  if (swift_dynamicCast())
  {
    (*(v109 + 32))(v37, v16, v44);
    v33 = &enum case for MusicPin.Item.playlist(_:);
    goto LABEL_3;
  }

  v45 = v108;
  v46 = v110;
  if (swift_dynamicCast())
  {
    (*(v107 + 32))(v32, v45, v46);
    v33 = &enum case for MusicPin.Item.song(_:);
    goto LABEL_3;
  }

  v47 = v105;
  v48 = v106;
  if (swift_dynamicCast())
  {
    v50 = v102;
    v49 = v103;
    (*(v103 + 32))(v102, v47, v48);
    v51 = v101;
    (*(v49 + 16))(v101, v50, v48);
    v52 = (*(v49 + 88))(v51, v48);
    if (v52 == enum case for Track.song(_:))
    {
      (*(v49 + 96))(v51, v48);
      (*(v107 + 32))(v32, v51, v46);
LABEL_16:
      v53 = &enum case for MusicPin.Item.song(_:);
LABEL_29:
      v71 = *v53;
      v72 = type metadata accessor for MusicPin.Item();
      v73 = *(v72 - 8);
      (*(v73 + 104))(v32, v71, v72);
      (*(v73 + 56))(v32, 0, 1, v72);
      goto LABEL_30;
    }

    if (v52 != enum case for Track.musicVideo(_:))
    {
      v74 = type metadata accessor for MusicPin.Item();
      (*(*(v74 - 8) + 56))(v32, 1, 1, v74);
      v75 = *(v49 + 8);
      v75(v51, v48);
      v75(v50, v48);
      return (*(v116 + 8))(v30, a1);
    }

    (*(v49 + 96))(v51, v48);
    (*(v112 + 32))(v32, v51, v43);
LABEL_28:
    v53 = &enum case for MusicPin.Item.musicVideo(_:);
    goto LABEL_29;
  }

  v54 = v100;
  v48 = v104;
  if (swift_dynamicCast())
  {
    v50 = v97;
    v49 = v98;
    (*(v98 + 32))(v97, v54, v48);
    v55 = v94;
    Playlist.Entry.internalItem.getter();
    v56 = v95;
    v57 = v96;
    v58 = (*(v95 + 88))(v55, v96);
    if (v58 != enum case for Playlist.Entry.InternalItem.musicMovie(_:))
    {
      if (v58 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        (*(v56 + 96))(v55, v57);
        (*(v112 + 32))(v32, v55, v113);
        goto LABEL_28;
      }

      if (v58 == enum case for Playlist.Entry.InternalItem.song(_:))
      {
        (*(v56 + 96))(v55, v57);
        (*(v107 + 32))(v32, v55, v110);
        goto LABEL_16;
      }

      if (v58 != enum case for Playlist.Entry.InternalItem.tvEpisode(_:) && v58 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v58 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        v84 = type metadata accessor for MusicPin.Item();
        (*(*(v84 - 8) + 56))(v32, 1, 1, v84);
        (*(v56 + 8))(v55, v57);
        goto LABEL_30;
      }
    }

    (*(v56 + 8))(v55, v57);
    v59 = type metadata accessor for MusicPin.Item();
    (*(*(v59 - 8) + 56))(v32, 1, 1, v59);
LABEL_30:
    (*(v49 + 8))(v50, v48);
    return (*(v116 + 8))(v30, a1);
  }

  v60 = v93;
  v61 = v99;
  if (swift_dynamicCast())
  {
    v62 = v92;
    v63 = v91;
    (*(v92 + 32))(v91, v60, v61);
    v64 = v90;
    (*(v62 + 16))(v90, v63, v61);
    v65 = (*(v62 + 88))(v64, v61);
    if (v65 == enum case for RecentlyAddedMusicItem.album(_:))
    {
      (*(v62 + 96))(v64, v61);
      (*(v25 + 32))(v32, v64, v24);
      v66 = &enum case for MusicPin.Item.album(_:);
LABEL_25:
      v67 = *v66;
      v68 = v63;
      v69 = type metadata accessor for MusicPin.Item();
      v70 = *(v69 - 8);
      (*(v70 + 104))(v32, v67, v69);
      (*(v70 + 56))(v32, 0, 1, v69);
      (*(v62 + 8))(v68, v61);
      return (*(v116 + 8))(v30, a1);
    }

    if (v65 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
    {
      goto LABEL_35;
    }

    if (v65 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
    {
      (*(v62 + 96))(v64, v61);
      (*(v112 + 32))(v32, v64, v113);
      v66 = &enum case for MusicPin.Item.musicVideo(_:);
      goto LABEL_25;
    }

    if (v65 == enum case for RecentlyAddedMusicItem.playlist(_:))
    {
      (*(v62 + 96))(v64, v61);
      (*(v109 + 32))(v32, v64, v111);
      v66 = &enum case for MusicPin.Item.playlist(_:);
      goto LABEL_25;
    }

    if (v65 == enum case for RecentlyAddedMusicItem.tvSeason(_:) || v65 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
LABEL_35:
      v81 = *(v62 + 8);
      v81(v64, v61);
      v82 = type metadata accessor for MusicPin.Item();
      (*(*(v82 - 8) + 56))(v32, 1, 1, v82);
    }

    else
    {
      v85 = type metadata accessor for MusicPin.Item();
      (*(*(v85 - 8) + 56))(v32, 1, 1, v85);
      v81 = *(v62 + 8);
      v81(v64, v61);
    }

    v81(v63, v61);
    return (*(v116 + 8))(v30, a1);
  }

  v76 = v88;
  v77 = v89;
  if (swift_dynamicCast())
  {
    v78 = v87;
    v79 = v86;
    (*(v87 + 32))(v86, v76, v77);
    MusicPin.item.getter();
    (*(v78 + 8))(v79, v77);
    v80 = type metadata accessor for MusicPin.Item();
    (*(*(v80 - 8) + 56))(v32, 0, 1, v80);
  }

  else
  {
    v83 = type metadata accessor for MusicPin.Item();
    (*(*(v83 - 8) + 56))(v32, 1, 1, v83);
  }

  return (*(v116 + 8))(v30, a1);
}

uint64_t sub_100A29424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v36 = a2;
  v33 = type metadata accessor for MusicLibrary.PinAction();
  v35 = *(v33 - 8);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011AC670, &qword_100EF68B0);
  v30 = *(v8 - 8);
  v31 = v8;
  __chkstk_darwin();
  v10 = &v29 - v9;
  sub_10010FC20(&qword_1011A8858, &qword_100EEE0A0);
  __chkstk_darwin();
  v12 = &v29 - v11;
  v13 = *(a3 - 8);
  __chkstk_darwin();
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Album();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin();
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v13 + 16);
  v34 = a1;
  v21(v15, a1, a3, v18);
  v22 = swift_dynamicCast();
  v23 = *(v17 + 56);
  if ((v22 & 1) == 0)
  {
    v23(v12, 1, 1, v16);
    sub_1000095E8(v12, &qword_1011A8858, &qword_100EEE0A0);
    goto LABEL_5;
  }

  v23(v12, 0, 1, v16);
  v24.n128_f64[0] = (*(v17 + 32))(v20, v12, v16);
  v25 = Album.childrenAddStatus(_:)(v36, v24);
  (*(v17 + 8))(v20, v16);
  if (v25 != 1)
  {
LABEL_5:
    static MusicLibraryAction<>.pin.getter();
    v27 = v33;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v35 + 8))(v7, v27);
    v26 = sub_100A29890();
    (*(v30 + 8))(v10, v31);
    return v26;
  }

  return 0x206C616974726150;
}

uint64_t sub_100A29890()
{
  v1 = type metadata accessor for MusicLibrary.PinAction.UnsupportedReason();
  v27 = *(v1 - 8);
  __chkstk_darwin();
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v24 - v3;
  __chkstk_darwin();
  v6 = &v24 - v5;
  v7 = sub_10010FC20(&qword_1011AC670, &qword_100EF68B0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v24 - v11;
  v13 = *(v8 + 16);
  v26 = v0;
  v13(&v24 - v11, v0, v7, v10);
  v14 = (*(v8 + 88))(v12, v7);
  if (v14 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v14 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v29[0] = 0;
      *(&v29[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      *&v29[0] = 0xD000000000000019;
      *(&v29[0] + 1) = 0x8000000100E5BAC0;
      (v13)(v25, v26, v7);
      v20._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v20);

      v19 = *&v29[0];
      (*(v8 + 8))(v12, v7);
      return v19;
    }

    return 0;
  }

  (*(v8 + 96))(v12, v7);
  v15 = v27;
  (*(v27 + 32))(v6, v12, v1);
  v16 = *(v15 + 16);
  v16(v4, v6, v1);
  v17 = (*(v15 + 88))(v4, v1);
  v18 = v6;
  if (v17 != enum case for MusicLibrary.PinAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.alreadyPinned(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0x2079646165726C41;
    }

    if (v17 != enum case for MusicLibrary.PinAction.UnsupportedReason.allExplicitContentRestricted(_:))
    {
      if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryRequired(_:))
      {
        if (qword_1011A6820 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(v28);

        v29[4] = v28[4];
        v29[5] = v28[5];
        v29[6] = v28[6];
        v29[7] = v28[7];
        v29[0] = v28[0];
        v29[1] = v28[1];
        v29[2] = v28[2];
        v29[3] = v28[3];
        sub_100014984(v29);
        if ((WORD4(v29[0]) & 0x100) != 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = 0xD000000000000016;
        }
      }

      else
      {
        if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryInitialImport(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0xD00000000000001CLL;
        }

        if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryIneligible(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0xD000000000000018;
        }

        if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.sharedLibrary(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0x6C20646572616853;
        }

        if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.notInLibrary(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0x4C206E6920746F4ELL;
        }

        v19 = 0x206E776F6E6B6E55;
        if (v17 != enum case for MusicLibrary.PinAction.UnsupportedReason.unknown(_:))
        {
          *&v29[0] = 0;
          *(&v29[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(17);

          *&v29[0] = 0x206E776F6E6B6E55;
          *(&v29[0] + 1) = 0xEF206E6F73616572;
          v16(v24, v18, v1);
          v22._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v22);

          v19 = *&v29[0];
          v23 = *(v15 + 8);
          v23(v18, v1);
          v23(v4, v1);
          return v19;
        }
      }

      (*(v15 + 8))(v18, v1);
      return v19;
    }

    (*(v15 + 8))(v6, v1);
    return 0;
  }

  v19 = 0xD000000000000010;
  (*(v15 + 8))(v18, v1);
  return v19;
}

uint64_t sub_100A29FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[68] = a6;
  v6[67] = a5;
  v6[66] = a4;
  v6[65] = a3;
  v6[63] = a1;
  v6[64] = a2;
  v8 = type metadata accessor for MusicLibrary.InternalError();
  v6[69] = v8;
  v6[70] = *(v8 - 8);
  v6[71] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[72] = v9;
  v6[73] = *(v9 - 8);
  v6[74] = swift_task_alloc();
  v10 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v6[75] = v10;
  v6[76] = *(v10 + 64);
  v6[77] = swift_task_alloc();
  type metadata accessor for Locale();
  v6[78] = swift_task_alloc();
  v11 = type metadata accessor for String.LocalizationValue();
  v6[79] = v11;
  v6[80] = *(v11 - 8);
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v6[83] = swift_task_alloc();
  v12 = type metadata accessor for MusicLibrary.PinAction.UnsupportedReason();
  v6[84] = v12;
  v6[85] = *(v12 - 8);
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v13 = *(a5 - 8);
  v6[88] = v13;
  v6[89] = *(v13 + 64);
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  v6[92] = type metadata accessor for Notice.Variant(0);
  v6[93] = swift_task_alloc();
  v14 = type metadata accessor for MusicPin.Action();
  v6[94] = v14;
  v6[95] = *(v14 - 8);
  v6[96] = swift_task_alloc();
  v15 = type metadata accessor for MusicLibrary.PinAction();
  v6[97] = v15;
  v6[98] = *(v15 - 8);
  v6[99] = swift_task_alloc();
  v16 = sub_10010FC20(&qword_1011AC670, &qword_100EF68B0);
  v6[100] = v16;
  v6[101] = *(v16 - 8);
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();

  return _swift_task_switch(sub_100A2A450, 0, 0);
}

uint64_t sub_100A2A450(uint64_t a1)
{
  v2 = v1[103];
  v3 = v1[101];
  v35 = v1[100];
  v36 = v1[102];
  v4 = v1[99];
  v5 = v1[98];
  v6 = v1[97];
  static MusicLibraryAction<>.pin.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 16))(v36, v2, v35);
  v7 = (*(v3 + 88))(v36, v35);
  if (v7 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v8 = v1[102];
    v9 = v1[87];
    v10 = v1[86];
    v11 = v1[85];
    v12 = v1[84];
    (*(v1[101] + 96))(v8, v1[100]);
    (*(v11 + 32))(v9, v8, v12);
    (*(v11 + 16))(v10, v9, v12);
    v13 = (*(v11 + 88))(v10, v12);
    if (v13 == enum case for MusicLibrary.PinAction.UnsupportedReason.allExplicitContentRestricted(_:))
    {
      v1[118] = type metadata accessor for MainActor();
      v1[119] = static MainActor.shared.getter();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      v17 = sub_100A2B3CC;
      v18 = v14;
      v19 = v16;
LABEL_10:

      return _swift_task_switch(v17, v18, v19);
    }

    if (v13 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      v1[111] = type metadata accessor for MainActor();
      v1[112] = static MainActor.shared.getter();
      v28 = dispatch thunk of Actor.unownedExecutor.getter();
      v19 = v29;
      v1[113] = v28;
      v1[114] = v29;
      v17 = sub_100A2AF6C;
      v18 = v28;
      goto LABEL_10;
    }

    v30 = v1 + 87;
    v31 = v1 + 85;
    v32 = v1 + 84;
    (*(v1[85] + 8))(v1[86], v1[84]);
    goto LABEL_15;
  }

  if (v7 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v30 = v1 + 102;
    v31 = v1 + 101;
    v32 = v1 + 100;
LABEL_15:
    (*(*v31 + 8))(*v30, *v32);
    (*(v1[101] + 8))(v1[103], v1[100]);

    v33 = v1[1];

    return v33();
  }

  v20 = v1[96];
  v21 = enum case for MusicPin.Action.navigate(_:);
  v22 = type metadata accessor for MusicPin.Action();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = swift_task_alloc();
  v1[104] = v23;
  *v23 = v1;
  v23[1] = sub_100A2A944;
  v24 = v1[96];
  v25 = v1[68];
  v26 = v1[67];
  v27 = v1[64];

  return MusicLibrary.pin<A>(_:defaultAction:)(v27, v24, v26, v25);
}

uint64_t sub_100A2A944()
{
  v2 = *(*v1 + 768);
  v3 = *(*v1 + 760);
  v4 = *(*v1 + 752);
  *(*v1 + 840) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100A2BC0C;
  }

  else
  {
    v5 = sub_100A2AAB4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100A2AAB4()
{
  swift_storeEnumTagMultiPayload();
  *(v0 + 848) = type metadata accessor for MainActor();
  *(v0 + 856) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A2AB5C, v2, v1);
}

uint64_t sub_100A2AB5C()
{
  v1 = *(v0 + 744);

  sub_1009E0F34(v1, 0);
  sub_10093B238(v1, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_100A2ABF4, 0, 0);
}

uint64_t sub_100A2ABF4()
{
  (*(*(v0 + 704) + 16))(*(v0 + 728), *(v0 + 512), *(v0 + 536));
  sub_10010FC20(&qword_1011A7F28, &unk_100EECE00);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 472);
    v2 = *(v0 + 480);
    sub_10000954C((v0 + 448), v1);
    v3 = (*(v2 + 8))(v1, v2);
    v5 = v4;
    if (v4)
    {
      v6 = v3;
      sub_10000959C((v0 + 448));
    }

    else
    {
      sub_10000959C((v0 + 448));
      v6 = 0;
    }
  }

  else
  {
    *(v0 + 480) = 0;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    sub_1000095E8(v0 + 448, &unk_1011AD930, &qword_100EEEF90);
    v6 = 0;
    v5 = 0;
  }

  *(v0 + 872) = v5;
  *(v0 + 864) = v6;
  *(v0 + 880) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A2AD6C, v8, v7);
}

uint64_t sub_100A2AD6C()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[66];

  PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(v2, v1, v3);

  return _swift_task_switch(sub_100A2AE04, 0, 0);
}

uint64_t sub_100A2AE04()
{
  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100A2AF6C(uint64_t a1)
{
  v2 = v1[65];
  v3 = static MainActor.shared.getter();
  v1[115] = v3;
  v4 = swift_task_alloc();
  v1[116] = v4;
  *(v4 + 16) = 7;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[117] = v5;
  *v5 = v1;
  v5[1] = sub_100A2B080;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 122, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000100E5ABB0, sub_1008D09E4, v4, &type metadata for Bool);
}

uint64_t sub_100A2B080()
{
  v1 = *v0;

  v2 = *(v1 + 912);
  v3 = *(v1 + 904);

  return _swift_task_switch(sub_100A2B1E0, v3, v2);
}

uint64_t sub_100A2B1E0()
{

  return _swift_task_switch(sub_100A2B248, 0, 0);
}

uint64_t sub_100A2B248()
{
  (*(v0[85] + 8))(v0[87], v0[84]);
  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100A2B3CC()
{

  sub_10097F360(0, v0 + 280);

  return _swift_task_switch(sub_100A2B440, 0, 0);
}

uint64_t sub_100A2B440(uint64_t a1)
{
  *(v1 + 960) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A2B4CC, v3, v2);
}

uint64_t sub_100A2B4CC()
{
  v1 = *(v0 + 520);

  v2 = sub_10093F41C((v0 + 280), 0, 1);
  v3 = v2;
  v4 = *(v0 + 312);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = qword_1011A6AC8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_1011AE4E0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 520);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 384) = sub_100A8F4C0;
    *(v0 + 392) = 0;
    *(v0 + 352) = _NSConcreteStackBlock;
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = sub_100A90460;
    *(v0 + 376) = &unk_1010D9C00;
    v14 = _Block_copy((v0 + 352));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_10012B7A8(v12, v0 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_10012B828(v0 + 16, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, sub_1008D9CA4, v16);
    sub_100020438(v5, v6);

    sub_100344A84(v0 + 280);
  }

  else
  {
    sub_100A8D9A0(v2, *(v0 + 312), 1, 0, 0);

    sub_100344A84(v0 + 280);
  }

  return _swift_task_switch(sub_100A33AB0, 0, 0);
}

uint64_t sub_100A2B7B4()
{
  v1 = *(v0 + 520);

  v2 = sub_10093F41C((v0 + 208), 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = qword_1011A6AC8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_1011AE4E0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 520);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 432) = sub_100A8F4C0;
    *(v0 + 440) = 0;
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_100A90460;
    *(v0 + 424) = &unk_1010D9C78;
    v14 = _Block_copy((v0 + 400));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_10012B7A8(v12, v0 + 112);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_10012B828(v0 + 112, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, sub_1008D9CA4, v16);
    sub_100020438(v5, v6);

    sub_100344A84(v0 + 208);
    v19 = sub_100A2BA9C;
  }

  else
  {
    sub_100A8D9A0(v2, *(v0 + 240), 1, 0, 0);

    sub_100344A84(v0 + 208);
    v19 = sub_100A33AB4;
  }

  return _swift_task_switch(v19, 0, 0);
}

uint64_t sub_100A2BA9C()
{

  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100A2BC0C()
{
  *(v0 + 488) = *(v0 + 840);
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 560) + 88))(*(v0 + 568), *(v0 + 552)) == enum case for MusicLibrary.InternalError.maximumPinCountReached(_:))
    {
      v1 = *(v0 + 656);
      v2 = *(v0 + 648);
      v3 = *(v0 + 640);
      v4 = *(v0 + 632);

      type metadata accessor for MusicLibrary();
      static MusicLibrary.shared.getter();
      MusicLibrary.pinsObserver.getter();

      v5 = dispatch thunk of MusicLibraryPinsObserver.maximumPinCount.getter();

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v6._countAndFlagsBits = 0xD000000000000035;
      v6._object = 0x8000000100E60960;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v6);
      v51 = v5;
      *(v0 + 496) = v5;
      sub_100A338D8();
      v7 = BinaryInteger.formatted()();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v7);

      v8._countAndFlagsBits = 0xD000000000000018;
      v8._object = 0x8000000100E609A0;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
      String.LocalizationValue.init(stringInterpolation:)();
      v41 = *(v3 + 16);
      v41(v2, v1, v4);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 656);
      v10 = *(v0 + 648);
      v11 = *(v0 + 640);
      v12 = *(v0 + 632);
      v43 = *(v0 + 720);
      v44 = *(v0 + 616);
      v46 = *(v0 + 712);
      v45 = *(v0 + 600);
      v47 = *(v0 + 592);
      v48 = *(v0 + 584);
      v49 = *(v0 + 576);
      v37 = *(v0 + 528);
      v38 = *(v0 + 704);
      v36 = *(v0 + 512);
      v13 = qword_101219808;
      v52 = *(v0 + 536);
      static Locale.current.getter();
      v14 = v13;
      v53 = String.init(localized:table:bundle:locale:comment:)();
      v35 = v15;
      v16 = *(v11 + 8);
      v16(v9, v12);
      v34 = v16;
      String.LocalizationValue.init(stringLiteral:)();
      v41(v10, v9, v12);
      static Locale.current.getter();
      v17 = String.init(localized:table:bundle:locale:comment:)();
      v39 = v18;
      v40 = v17;
      v16(v9, v12);
      sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100EBC6B0;
      String.LocalizationValue.init(stringLiteral:)();
      v41(v10, v9, v12);
      static Locale.current.getter();
      v50 = String.init(localized:table:bundle:locale:comment:)();
      v42 = v20;
      v34(v9, v12);
      (*(v38 + 16))(v43, v36, v52);
      sub_1000089F8(v37, v44, &qword_1011A8660, &unk_100EEDB60);
      v21 = (*(v38 + 80) + 56) & ~*(v38 + 80);
      v22 = (v46 + *(v45 + 80) + v21) & ~*(v45 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = v52;
      *(v23 + 32) = v53;
      *(v23 + 40) = v35;
      *(v23 + 48) = v51;
      (*(v38 + 32))(v23 + v21, v43, v52);
      sub_10003D17C(v44, v23 + v22, &qword_1011A8660, &unk_100EEDB60);

      UUID.init()();
      v24 = UUID.uuidString.getter();
      v26 = v25;
      (*(v48 + 8))(v47, v49);
      *(v19 + 32) = v24;
      *(v19 + 40) = v26;
      *(v19 + 48) = v50;
      *(v19 + 56) = v42;
      *(v19 + 64) = 2;
      *(v19 + 72) = &unk_100EF68C0;
      *(v19 + 80) = v23;
      *(v0 + 208) = v40;
      *(v0 + 216) = v39;
      *(v0 + 224) = v53;
      *(v0 + 232) = v35;
      *(v0 + 240) = 0;
      *(v0 + 248) = 0;
      *(v0 + 256) = 1;
      *(v0 + 264) = v19;
      *(v0 + 272) = 0;
      type metadata accessor for MainActor();
      *(v0 + 968) = static MainActor.shared.getter();
      v28 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100A2B7B4, v28, v27);
    }

    (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
  }

  v29 = *(v0 + 824);
  v30 = *(v0 + 808);
  v31 = *(v0 + 800);

  (*(v30 + 8))(v29, v31);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100A2C344()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = (*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v7 = (v5 + *(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = v0[4];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100008F30;

  return sub_100A29FCC(v8, v0 + v4, v0 + v5, v0 + v7, v3, v2);
}

void PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v5 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  __chkstk_darwin();
  v7 = &v40 - v6;
  v8 = sub_10010FC20(&qword_1011AC408, &qword_100EF67E8);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v40 - v10;
  v43 = objc_opt_self();
  v12 = [v43 standardUserDefaults];
  v13 = sub_10099D4CC();
  v14 = sub_10000988C();
  v44 = v13;
  v42 = v14;
  NSUserDefaults.subscript.getter(&aBlock);

  if (v48)
  {
    if (swift_dynamicCast() & 1) != 0 && (v51[0])
    {
      return;
    }
  }

  else
  {
    sub_1000095E8(&aBlock, &qword_1011ABB20, &unk_100EF1530);
  }

  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.pinsObserver.getter();

  dispatch thunk of MusicLibraryPinsObserver.pins.getter();

  sub_100A2F870();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v15 = dispatch thunk of Collection.distance(from:to:)();
  (*(v9 + 8))(v11, v8);
  if (v15 >= 2)
  {
    v16 = [objc_opt_self() sharedCloudController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 isAutomaticDownloadsEnabledForPinnedLibraryEntities];

      if ((v18 & 1) == 0)
      {
        sub_1000089F8(a3, v7, &qword_1011A8660, &unk_100EEDB60);
        v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v41;
        *(v20 + 24) = a2;
        sub_10003D17C(v7, v20 + v19, &qword_1011A8660, &unk_100EEDB60);

        sub_1009826E8(sub_100A32EE0, v20, v51);

        v21 = sub_10093F41C(v51, 0, 1);
        v22 = v21;
        v23 = v52;
        v24 = v45;
        v25 = *(v45 + 80);
        if (v25)
        {
          v26 = *(v45 + 88);
          v27 = qword_1011A6AC8;

          if (v27 != -1)
          {
            swift_once();
          }

          v28 = type metadata accessor for Logger();
          sub_1000060E4(v28, qword_1011AE4E0);
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&_mh_execute_header, v29, v30, "Deferring presentation…", v31, 2u);
          }

          v32 = objc_allocWithZone(MSVBlockGuard);
          v49 = sub_100A8F4C0;
          v50 = 0;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v47 = sub_100A90460;
          v48 = &unk_1010D98D8;
          v33 = _Block_copy(&aBlock);
          v34 = [v32 initWithTimeout:v33 interruptionHandler:10.0];
          _Block_release(v33);

          sub_10012B7A8(v24, &aBlock);
          v35 = swift_allocObject();
          *(v35 + 16) = v34;
          sub_10012B828(&aBlock, v35 + 24);
          *(v35 + 120) = v22;
          *(v35 + 128) = v23;
          *(v35 + 129) = 1;
          *(v35 + 136) = 0;
          *(v35 + 144) = 0;
          v36 = v34;
          v37 = v22;
          v25(v24, v37, sub_1008D9BB8, v35);
          sub_100020438(v25, v26);
        }

        else
        {
          sub_100A8D9A0(v21, v52, 1, 0, 0);
        }

        sub_100344A84(v51);
        v38 = [v43 standardUserDefaults];
        v48 = &type metadata for Bool;
        LOBYTE(aBlock) = 1;
        NSUserDefaults.subscript.setter(&aBlock, v39, &_s4KeysON, v44, v42);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100A2CADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = a7;
  v8[58] = a8;
  v8[55] = a5;
  v8[56] = a6;
  v8[53] = a3;
  v8[54] = a4;
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v8[59] = swift_task_alloc();
  v8[60] = *(a8 - 8);
  v8[61] = swift_task_alloc();

  return _swift_task_switch(sub_100A2CBD8, 0, 0);
}

uint64_t sub_100A2CBD8()
{
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  _StringGuts.grow(_:)(79);
  v6._countAndFlagsBits = 0xD000000000000035;
  v6._object = 0x8000000100E60960;
  String.append(_:)(v6);
  *(v0 + 416) = v5;
  sub_100A338D8();
  v7 = BinaryInteger.formatted()();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0xD000000000000018;
  v8._object = 0x8000000100E609A0;
  String.append(_:)(v8);
  (*(v2 + 16))(v1, v4, v3);
  sub_10010FC20(&qword_1011A7F28, &unk_100EECE00);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 400);
    v10 = *(v0 + 408);
    sub_10000954C((v0 + 376), v9);
    v11 = (*(v10 + 8))(v9, v10);
    if (v12)
    {
      v13 = v11;
      v14 = v12;
    }

    else
    {
      v14 = 0xEB000000006D6574;
      v13 = 0x497972617262694CLL;
    }

    sub_10000959C((v0 + 376));
  }

  else
  {
    v14 = 0xEB000000006D6574;
    v13 = 0x497972617262694CLL;
    *(v0 + 408) = 0;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    sub_1000095E8(v0 + 376, &unk_1011AD930, &qword_100EEEF90);
  }

  v16 = *(v0 + 424);
  v15 = *(v0 + 432);
  strcpy((v0 + 16), "PinnedContent");
  *(v0 + 30) = -4864;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x8000000100E609C0;
  *(v0 + 56) = v16;
  *(v0 + 64) = v15;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = &off_1010C8358;
  *(v0 + 96) = v13;
  *(v0 + 104) = v14;
  *(v0 + 112) = 19279;
  *(v0 + 120) = 0xE200000000000000;
  *(v0 + 128) = 0;
  strcpy((v0 + 136), "PinnedContent");
  *(v0 + 150) = -4864;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xD000000000000014;
  *(v0 + 168) = 0x8000000100E609C0;
  *(v0 + 176) = v16;
  *(v0 + 184) = v15;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  *(v0 + 208) = &off_1010C8358;
  *(v0 + 216) = v13;
  *(v0 + 224) = v14;
  *(v0 + 232) = 19279;
  *(v0 + 240) = 0xE200000000000000;
  *(v0 + 248) = 0;

  sub_10095272C(v0 + 16, v0 + 256);
  sub_100952764(v0 + 136);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 472);
  sub_1000089F8(*(v0 + 456), v17, &qword_1011A8660, &unk_100EEDB60);
  v18 = type metadata accessor for Actions.MetricsReportingContext(0);
  v19 = (*(*(v18 - 8) + 48))(v17, 1, v18);
  v20 = *(v0 + 472);
  if (v19 == 1)
  {
    sub_1000095E8(*(v0 + 472), &qword_1011A8660, &unk_100EEDB60);
  }

  else
  {

    sub_10093B238(v20, type metadata accessor for Actions.MetricsReportingContext);
  }

  _s9MusicCore26MetricsReportingControllerC17recordDialogEvent_11pageContextyAA0cH0V0G0V_SSSgtF_0(v0 + 16);

  sub_100952764(v0 + 16);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100A2CFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext(0);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_100A2D1CC, 0, 0);
}

uint64_t sub_100A2D1CC()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(7);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_1000089F8(*(v0 + 88), v4, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1000095E8(*(v0 + 232), &qword_1011A8660, &unk_100EEDB60);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_100A33818(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_1008AC260(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 328) = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100A2D4D8, v19, v18);
  }
}

uint64_t sub_100A2D4D8()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 7429;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0, &unk_100EEAA20);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08, &unk_100EECDE0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08, &unk_100EECDE0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_10093B238(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08, &unk_100EECDE0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08, &unk_100EECDE0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10093B238(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08, &unk_100EECDE0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08, &unk_100EECDE0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_1000089F8(v36 + v14[6], *(v0 + 208), &qword_1011A77F0, &unk_100EEAA20);
    sub_10093B238(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_10003D17C(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v37, v38, &qword_1011A7F08, &unk_100EECDE0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08, &unk_100EECDE0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10093B238(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08, &unk_100EECDE0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08, &unk_100EECDE0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10093B238(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08, &unk_100EECDE0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08, &unk_100EECDE0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10093B238(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08, &unk_100EECDE0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08, &unk_100EECDE0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10093B238(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100A33818(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_10093B238(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_1009369D8, 0, 0);
}

uint64_t sub_100A2DC8C()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100008F30;

  return sub_100A2CFB4(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

unint64_t sub_100A2DE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for MusicLibrary.UnpinAction();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011AC668, &qword_100EF68A8);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  static MusicLibraryAction<>.unpin.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v5 + 8))(v7, v4);
  v12 = sub_100A2E000();
  (*(v9 + 8))(v11, v8);
  return v12;
}

unint64_t sub_100A2E000()
{
  v1 = type metadata accessor for MusicLibrary.UnpinAction.UnsupportedReason();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v24 - v4;
  __chkstk_darwin();
  v6 = &v24 - v5;
  v7 = sub_10010FC20(&qword_1011AC668, &qword_100EF68A8);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v24 - v12;
  v14 = *(v8 + 16);
  v26 = v0;
  v14(&v24 - v12, v0, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v8 + 96))(v13, v7);
    (*(v2 + 32))(v6, v13, v1);
    v16 = *(v2 + 16);
    v17 = v27;
    v16(v27, v6, v1);
    v18 = (*(v2 + 88))(v17, v1);
    if (v18 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.notPinned(_:))
    {
      (*(v2 + 8))(v6, v1);
      return 0x6E6E695020746F4ELL;
    }

    else if (v18 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.sharedLibrary(_:))
    {
      (*(v2 + 8))(v6, v1);
      return 0x6C20646572616853;
    }

    else if (v18 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.unknown(_:))
    {
      v19 = 0x206E776F6E6B6E55;
      (*(v2 + 8))(v6, v1);
    }

    else if (v18 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.unsupportedType(_:))
    {
      v19 = 0xD000000000000010;
      (*(v2 + 8))(v6, v1);
    }

    else
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      v28 = 0x206E776F6E6B6E55;
      v29 = 0xEF206E6F73616572;
      v16(v25, v6, v1);
      v22._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v22);

      v19 = v28;
      v23 = *(v2 + 8);
      v23(v6, v1);
      v23(v27, v1);
    }
  }

  else if (v15 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v28 = 0xD000000000000019;
    v29 = 0x8000000100E5BAC0;
    (v14)(v10, v26, v7);
    v20._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v20);

    v19 = v28;
    (*(v8 + 8))(v13, v7);
  }

  return v19;
}

uint64_t sub_100A2E514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = type metadata accessor for Notice.Variant(0);
  v5[4] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[5] = v9;
  *v9 = v5;
  v9[1] = sub_100A2E600;

  return MusicLibrary.unpin<A>(_:)(a2, a4, a5);
}

uint64_t sub_100A2E600()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100A2E74C, 0, 0);
  }
}

uint64_t sub_100A2E74C()
{
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A2E7EC, v2, v1);
}

uint64_t sub_100A2E7EC()
{
  v1 = *(v0 + 32);

  sub_1009E0F34(v1, 0);
  sub_10093B238(v1, type metadata accessor for Notice.Variant);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A2E888()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_100A2E514(v6, v0 + v4, v0 + v5, v2, v3);
}

uint64_t sub_100A2E998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext(0);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_100A2EBB0, 0, 0);
}

uint64_t sub_100A2EBB0()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(8);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_1000089F8(*(v0 + 88), v4, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1000095E8(*(v0 + 232), &qword_1011A8660, &unk_100EEDB60);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_100A33818(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_1008AC260(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 328) = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100A2EEBC, v19, v18);
  }
}

uint64_t sub_100A2EEBC()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 7685;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0, &unk_100EEAA20);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08, &unk_100EECDE0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08, &unk_100EECDE0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_10093B238(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08, &unk_100EECDE0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08, &unk_100EECDE0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10093B238(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08, &unk_100EECDE0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08, &unk_100EECDE0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_1000089F8(v36 + v14[6], *(v0 + 208), &qword_1011A77F0, &unk_100EEAA20);
    sub_10093B238(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_10003D17C(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v37, v38, &qword_1011A7F08, &unk_100EECDE0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08, &unk_100EECDE0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10093B238(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08, &unk_100EECDE0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08, &unk_100EECDE0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10093B238(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08, &unk_100EECDE0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08, &unk_100EECDE0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10093B238(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08, &unk_100EECDE0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08, &unk_100EECDE0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10093B238(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100A33818(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_10093B238(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_10093B298, 0, 0);
}

uint64_t sub_100A2F670()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100008F30;

  return sub_100A2E998(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t sub_100A2F7E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100A2F870()
{
  result = qword_1011AC410;
  if (!qword_1011AC410)
  {
    sub_1001109D0(&qword_1011AC408, &qword_100EF67E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC410);
  }

  return result;
}

double Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v80 = a5;
  v81 = a6;
  v82 = a4;
  v88 = a3;
  v85 = a2;
  v9 = type metadata accessor for MusicPin.Action();
  v10 = *(v9 - 8);
  v74 = *(v10 + 64);
  __chkstk_darwin();
  v90 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v77 = &v67 - v12;
  __chkstk_darwin();
  v84 = &v67 - v13;
  v14 = type metadata accessor for MusicPin();
  v83 = v14;
  v92 = *(v14 - 8);
  v15 = v92;
  v89 = *(v92 + 64);
  __chkstk_darwin();
  v91 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = &v67 - v17;
  v18 = __chkstk_darwin();
  v20 = &v67 - v19;
  v21 = *(v15 + 16);
  v78 = a7;
  v86 = a1;
  v21(a7, a1, v14, v18);
  v72 = v21;
  updated = type metadata accessor for Actions.UpdatePinAction.Context(0);
  v22 = *(v10 + 16);
  v23 = (a7 + *(updated + 20));
  v24 = v85;
  v93 = v9;
  v25 = v22;
  v71 = v22;
  v22(v23, v85, v9);
  (v21)(v20, a1, v14);
  v25(v84, v24, v9);
  v26 = v92;
  v75 = *(v92 + 80);
  v27 = *(v10 + 80);
  v28 = v10;
  v29 = (v75 + 24) & ~v75;
  v70 = v29;
  v30 = (v89 + v27 + v29) & ~v27;
  v87 = v75 | v27 | 7;
  v31 = v74;
  v32 = swift_allocObject();
  v33 = v88;
  *(v32 + 16) = v88;
  v69 = *(v26 + 32);
  v92 = v26 + 32;
  v34 = v32 + v29;
  v35 = v32;
  v76 = v32;
  v36 = v20;
  v37 = v83;
  v69(v34, v36, v83);
  v38 = *(v28 + 32);
  v67 = v28 + 32;
  v68 = v38;
  v39 = v35 + v30;
  v40 = v93;
  v38(v39, v84, v93);
  v41 = v73;
  v72(v73, v86, v37);
  v42 = v77;
  v43 = v85;
  v71(v77, v85, v40);
  v44 = swift_allocObject();
  v84 = v44;
  *(v44 + 16) = v33;
  v45 = v41;
  v46 = v83;
  v47 = v69;
  v69(v44 + v70, v45, v83);
  v48 = v44 + v30;
  v49 = v42;
  v50 = v93;
  v51 = v68;
  v68(v48, v49, v93);
  v51(v90, v43, v50);
  v47(v91, v86, v46);
  v52 = v47;
  v53 = (v27 + 32) & ~v27;
  v54 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v55 = (v53 + v31 + *(v54 + 80)) & ~*(v54 + 80);
  v56 = (*(v54 + 64) + v75 + v55) & ~v75;
  v57 = swift_allocObject();
  v58 = v81;
  *(v57 + 16) = v80;
  *(v57 + 24) = v58;
  v51((v57 + v53), v90, v93);
  sub_10003D17C(v82, v57 + v55, &qword_1011A8660, &unk_100EEDB60);
  v52(v57 + v56, v91, v46);
  v59 = v78;
  v60 = updated;
  v61 = (v78 + *(updated + 24));
  v62 = v76;
  *v61 = sub_100A32F60;
  v61[1] = v62;
  v63 = (v59 + *(v60 + 28));
  v64 = v84;
  *v63 = &unk_100EF67F8;
  v63[1] = v64;
  v65 = (v59 + *(v60 + 32));
  *v65 = &unk_100EF6808;
  v65[1] = v57;

  return result;
}

uint64_t sub_100A2FE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for MusicLibrary.UpdatePinAction();
  v4 = *(updated - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011AC658, &qword_100EF68A0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v13 - v9;
  static MusicLibraryAction<>.update(pinAction:)();
  type metadata accessor for MusicPin();
  sub_100A33880();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v4 + 8))(v6, updated);
  v11 = sub_100A30054();
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_100A30054()
{
  updated = type metadata accessor for MusicLibrary.UpdatePinAction.UnsupportedReason();
  v2 = *(updated - 8);
  __chkstk_darwin();
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v28 - v4;
  __chkstk_darwin();
  v6 = &v28 - v5;
  v7 = sub_10010FC20(&qword_1011AC658, &qword_100EF68A0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v28 - v12;
  v14 = *(v8 + 16);
  v30 = v0;
  v14(&v28 - v12, v0, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v8 + 96))(v13, v7);
    (*(v2 + 32))(v6, v13, updated);
    v16 = *(v2 + 16);
    v17 = v31;
    v16(v31, v6, updated);
    v18 = (*(v2 + 88))(v17, updated);
    v19 = updated;
    v20 = v2;
    if (v18 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.notPinned(_:))
    {
      (*(v2 + 8))(v6, v19);
      return 0x6E6E695020746F4ELL;
    }

    else if (v18 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.sharedLibrary(_:))
    {
      (*(v2 + 8))(v6, v19);
      return 0x6C20646572616853;
    }

    else if (v18 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unsupportedAction(_:))
    {
      (*(v2 + 8))(v6, v19);
      return 0xD000000000000012;
    }

    else if (v18 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unsupportedType(_:))
    {
      (*(v2 + 8))(v6, v19);
      return 0xD000000000000010;
    }

    else if (v18 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unknown(_:))
    {
      (*(v2 + 8))(v6, v19);
      return 0x206E776F6E6B6E55;
    }

    else
    {
      v32 = 0;
      v33 = 0xE000000000000000;
      v24 = v19;
      _StringGuts.grow(_:)(17);

      v32 = 0x206E776F6E6B6E55;
      v33 = 0xEF206E6F73616572;
      v16(v29, v6, v24);
      v25._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v25);

      v26 = v32;
      v27 = *(v20 + 8);
      v27(v6, v24);
      v27(v31, v24);
      return v26;
    }
  }

  else if (v15 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v32 = 0xD000000000000019;
    v33 = 0x8000000100E5BAC0;
    (v14)(v10, v30, v7);
    v22._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v22);

    v23 = v32;
    (*(v8 + 8))(v13, v7);
    return v23;
  }
}

uint64_t sub_100A305A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10002F3F4;

  return MusicLibrary.updatePin(_:defaultAction:)(a2, a3);
}

uint64_t sub_100A30658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MetricsEvent.Click(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext(0);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v7 = type metadata accessor for MusicPin.Action();
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return _swift_task_switch(sub_100A308D8, 0, 0);
}

uint64_t sub_100A308D8()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 280);
    v3 = *(v0 + 256);
    v4 = *(v0 + 264);
    (*(v4 + 16))(v2, *(v0 + 88), v3);
    v5 = (*(v4 + 88))(v2, v3);
    if (v5 == enum case for MusicPin.Action.navigate(_:))
    {
      v6 = 46;
LABEL_9:
      v1(v6);
      goto LABEL_10;
    }

    if (v5 != enum case for MusicPin.Action.play(_:))
    {
      if (v5 == enum case for MusicPin.Action.shuffle(_:))
      {
        v6 = 45;
        goto LABEL_9;
      }

      (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
    }

    v6 = 44;
    goto LABEL_9;
  }

LABEL_10:
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v9 = *(v0 + 224);
  sub_1000089F8(*(v0 + 96), v9, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_1000095E8(*(v0 + 224), &qword_1011A8660, &unk_100EEDB60);

    v10 = *(v0 + 8);

    return v10();
  }

  v13 = *(v0 + 264);
  v12 = *(v0 + 272);
  v14 = *(v0 + 256);
  v15 = *(v0 + 88);
  sub_100A33818(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
  *(v0 + 288) = sub_1008ABC54();
  *(v0 + 296) = v16;
  (*(v13 + 16))(v12, v15, v14);
  v17 = (*(v13 + 88))(v12, v14);
  if (v17 != enum case for MusicPin.Action.navigate(_:))
  {
    if (v17 != enum case for MusicPin.Action.play(_:))
    {
      if (v17 == enum case for MusicPin.Action.shuffle(_:))
      {
        v18 = 46;
        goto LABEL_21;
      }

      (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    }

    v18 = 45;
    goto LABEL_21;
  }

  v18 = 47;
LABEL_21:
  *(v0 + 362) = v18;
  v19 = *(v0 + 216);
  v20 = type metadata accessor for URL();
  *(v0 + 304) = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  *(v0 + 312) = v22;
  *(v0 + 320) = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v22(v19, 1, 1, v20);
  sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = sub_1008AB360();
  *(inited + 40) = v24;
  *(inited + 48) = 0;
  *(v0 + 328) = sub_1008AC260(inited);
  *(v0 + 336) = v25;
  *(v0 + 344) = v26;
  *(v0 + 360) = v27;
  swift_setDeallocating();
  sub_1008DB7F0(inited + 32);
  type metadata accessor for MainActor();
  *(v0 + 352) = static MainActor.shared.getter();
  v29 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A30D2C, v29, v28);
}

uint64_t sub_100A30D2C()
{
  v83 = *(v0 + 360);
  v76 = *(v0 + 328);
  v81 = *(v0 + 362);
  v79 = *(v0 + 296);
  v77 = *(v0 + 344);
  v78 = *(v0 + 288);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);

  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = v78;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v81;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0, &unk_100EEAA20);
  v80 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v82 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v76;
  *(v14 + 16) = v77;
  *(v14 + 24) = v83;
  sub_1000089F8(v7, v75, &qword_1011A7F08, &unk_100EECDE0);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = *(*(v15 - 1) + 48);
  v17 = v16(v75, 1, v15);
  v18 = *(v0 + 360);
  v19 = *(v0 + 336);
  v20 = *(v0 + 344);
  v21 = *(v0 + 328);
  v22 = *(v0 + 160);
  v84 = v11;
  if (v17 == 1)
  {

    sub_100633490(v82, v80);

    sub_1005EA59C(v21, v19, v20, v18, SBYTE1(v18));
    sub_1000095E8(v22, &qword_1011A7F08, &unk_100EECDE0);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_100633490(v82, v80);

    sub_1005EA59C(v21, v19, v20, v18, SBYTE1(v18));

    sub_10093B238(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_1000089F8(v25, v26, &qword_1011A7F08, &unk_100EECDE0);
  v28 = v16(v26, 1, v15);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08, &unk_100EECDE0);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_10093B238(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_1000089F8(v32, v33, &qword_1011A7F08, &unk_100EECDE0);
  if (v16(v33, 1, v15) == 1)
  {
    v35 = v16;
    v36 = *(v0 + 312);
    v37 = *(v0 + 304);
    v38 = *(v0 + 200);
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08, &unk_100EECDE0);
    v36(v38, 1, 1, v37);
    v16 = v35;
  }

  else
  {
    v39 = *(v0 + 144);
    sub_1000089F8(v39 + v15[6], *(v0 + 200), &qword_1011A77F0, &unk_100EEAA20);
    sub_10093B238(v39, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 136);
  sub_10003D17C(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v40, v41, &qword_1011A7F08, &unk_100EECDE0);
  v42 = v16(v41, 1, v15);
  v43 = *(v0 + 136);
  if (v42 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08, &unk_100EECDE0);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    sub_10093B238(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 168);
  v46 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v44;
  sub_1000089F8(v45, v46, &qword_1011A7F08, &unk_100EECDE0);
  v47 = v16(v46, 1, v15);
  v48 = *(v0 + 128);
  if (v47 == 1)
  {
    sub_1000095E8(v48, &qword_1011A7F08, &unk_100EECDE0);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    sub_10093B238(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 168);
  v51 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v49;
  sub_1000089F8(v50, v51, &qword_1011A7F08, &unk_100EECDE0);
  v52 = v16(v51, 1, v15);
  v53 = *(v0 + 120);
  if (v52 == 1)
  {
    sub_1000095E8(*(v0 + 120), &qword_1011A7F08, &unk_100EECDE0);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    sub_10093B238(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 168);
  v58 = *(v0 + 112);
  v59 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v59 = v54;
  v59[1] = v55;
  sub_10003D17C(v57, v58, &qword_1011A7F08, &unk_100EECDE0);
  v60 = v16(v58, 1, v15);
  v61 = *(v0 + 112);
  if (v60 == 1)
  {
    sub_1000095E8(v61, &qword_1011A7F08, &unk_100EECDE0);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    sub_10093B238(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 184);
  v64 = *(v0 + 192);
  v65 = *(v0 + 176);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v84;
  sub_100A33818(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 336);
  v66 = *(v0 + 344);
  v68 = *(v0 + 328);
  v69 = *(v0 + 248);
  v70 = *(v0 + 232);
  v71 = *(v0 + 216);
  v72 = *(v0 + 192);
  v73 = *(v0 + 360);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v72, *(v69 + *(v70 + 24)), *(v69 + *(v70 + 24) + 8), *(v69 + *(v70 + 36)), *(v69 + *(v70 + 36) + 8), *(v69 + *(v70 + 36) + 16));
  sub_100344B1C(v68, v67, v66, v73, SBYTE1(v73));
  sub_10093B238(v72, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v71, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_100A31510, 0, 0);
}

uint64_t sub_100A31510()
{
  sub_10093B238(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Actions.Pin.Context.menuItemTitle.getter()
{
  v1 = v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v19[-v6];
  sub_10010FC20(&qword_1011AC418, &qword_100EF6810);
  __chkstk_darwin();
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v19[-v10];
  sub_1000089F8(v1, &v19[-v10], &qword_1011AC418, &qword_100EF6810);
  v12 = type metadata accessor for MusicPin.Item();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_2;
  }

  sub_1000089F8(v11, v9, &qword_1011AC418, &qword_100EF6810);
  v16 = (*(v13 + 88))(v9, v12);
  if (v16 != enum case for MusicPin.Item.album(_:) && v16 != enum case for MusicPin.Item.artist(_:) && v16 != enum case for MusicPin.Item.musicVideo(_:) && v16 != enum case for MusicPin.Item.playlist(_:) && v16 != enum case for MusicPin.Item.song(_:))
  {
    (*(v13 + 8))(v9, v12);
LABEL_2:
    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v14 = qword_101219808;
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    (*(v3 + 8))(v7, v2);
    goto LABEL_13;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v17 = qword_101219808;
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  (*(v13 + 8))(v9, v12);
LABEL_13:
  sub_1000095E8(v11, &qword_1011AC418, &qword_100EF6810);
  return v15;
}

uint64_t (*Actions.Pin.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 7235952;
  *(v0 + 24) = 0xE300000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 7235952;
  *(v1 + 24) = 0xE300000000000000;
  return sub_1008D04DC;
}

uint64_t (*sub_100A31C08())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 7235952;
  *(v0 + 24) = 0xE300000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 7235952;
  *(v1 + 24) = 0xE300000000000000;
  return sub_1008D0A40;
}

uint64_t Actions.Unpin.Context.menuItemTitle.getter()
{
  v1 = v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v19[-v6];
  sub_10010FC20(&qword_1011AC418, &qword_100EF6810);
  __chkstk_darwin();
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v19[-v10];
  sub_1000089F8(v1, &v19[-v10], &qword_1011AC418, &qword_100EF6810);
  v12 = type metadata accessor for MusicPin.Item();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_2;
  }

  sub_1000089F8(v11, v9, &qword_1011AC418, &qword_100EF6810);
  v16 = (*(v13 + 88))(v9, v12);
  if (v16 != enum case for MusicPin.Item.album(_:) && v16 != enum case for MusicPin.Item.artist(_:) && v16 != enum case for MusicPin.Item.musicVideo(_:) && v16 != enum case for MusicPin.Item.playlist(_:) && v16 != enum case for MusicPin.Item.song(_:))
  {
    (*(v13 + 8))(v9, v12);
LABEL_2:
    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v14 = qword_101219808;
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    (*(v3 + 8))(v7, v2);
    goto LABEL_10;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v17 = qword_101219808;
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  (*(v13 + 8))(v9, v12);
LABEL_10:
  sub_1000095E8(v11, &qword_1011AC418, &qword_100EF6810);
  return v15;
}

uint64_t (*Actions.Unpin.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x73616C732E6E6970;
  *(v0 + 24) = 0xE900000000000068;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x73616C732E6E6970;
  *(v1 + 24) = 0xE900000000000068;
  return sub_1008D0A40;
}

uint64_t (*sub_100A3225C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x73616C732E6E6970;
  *(v0 + 24) = 0xE900000000000068;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x73616C732E6E6970;
  *(v1 + 24) = 0xE900000000000068;
  return sub_1008D0A40;
}

uint64_t Actions.UpdatePinAction.Context.menuItemTitle.getter(__n128 a1)
{
  v1 = type metadata accessor for MusicPin.Item();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Actions.UpdatePinAction.Context(0);
  MusicPin.item.getter();
  v5 = MusicPin.Action.localizedTitle(for:)(v4);
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t Actions.UpdatePinAction.Context.menuItemState.getter()
{
  v0 = type metadata accessor for MusicPin.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.action.getter();
  type metadata accessor for Actions.UpdatePinAction.Context(0);
  v4 = static MusicPin.Action.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_100A324CC(__n128 a1)
{
  v1 = type metadata accessor for MusicPin.Item();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.item.getter();
  v5 = MusicPin.Action.localizedTitle(for:)(v4);
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_100A325B8(uint64_t a1)
{
  v1 = type metadata accessor for MusicPin.Action();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.action.getter();
  v5 = static MusicPin.Action.== infix(_:_:)();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

uint64_t MusicPin.genericMusicItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MusicPin.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.item.getter();
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for MusicPin.Item.album(_:))
  {
    (*(v4 + 96))(v6, v3);
    v8 = type metadata accessor for Album();
    (*(*(v8 - 8) + 32))(a1, v6, v8);
    v9 = &enum case for GenericMusicItem.album(_:);
  }

  else if (v7 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v4 + 96))(v6, v3);
    v10 = type metadata accessor for Artist();
    (*(*(v10 - 8) + 32))(a1, v6, v10);
    v9 = &enum case for GenericMusicItem.artist(_:);
  }

  else if (v7 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v4 + 96))(v6, v3);
    v11 = type metadata accessor for MusicVideo();
    (*(*(v11 - 8) + 32))(a1, v6, v11);
    v9 = &enum case for GenericMusicItem.musicVideo(_:);
  }

  else if (v7 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v4 + 96))(v6, v3);
    v12 = type metadata accessor for Playlist();
    (*(*(v12 - 8) + 32))(a1, v6, v12);
    v9 = &enum case for GenericMusicItem.playlist(_:);
  }

  else
  {
    if (v7 != enum case for MusicPin.Item.song(_:))
    {
      v18 = type metadata accessor for GenericMusicItem();
      (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
      return (*(v4 + 8))(v6, v3);
    }

    (*(v4 + 96))(v6, v3);
    v13 = type metadata accessor for Song();
    (*(*(v13 - 8) + 32))(a1, v6, v13);
    v9 = &enum case for GenericMusicItem.song(_:);
  }

  v14 = *v9;
  v15 = type metadata accessor for GenericMusicItem();
  v16 = *(v15 - 8);
  (*(v16 + 104))(a1, v14, v15);
  return (*(v16 + 56))(a1, 0, 1, v15);
}

uint64_t sub_100A32A80(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v25 = a4;
  v23 = a2;
  v24 = a1;
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  __chkstk_darwin();
  v6 = &v22 - v5;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v22 - v11;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v8 + 16))(v10, v12, v7);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v13 = qword_101219808;
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  (*(v8 + 8))(v12, v7);
  strcpy(v41, "DownloadPins");
  HIBYTE(v41[6]) = 0;
  v41[7] = -5120;
  v42 = 1;
  v43 = 0xD000000000000016;
  v44 = 0x8000000100E5DDD0;
  v17 = 0x497972617262694CLL;
  if (a3)
  {
    v17 = v23;
  }

  v18 = 0xEB000000006D6574;
  if (a3)
  {
    v18 = a3;
  }

  v45 = v14;
  v46 = v16;
  v19 = 0x776F4E20746F4ELL;
  if (v24)
  {
    v19 = 0x6E4F206E727554;
  }

  v47 = 0xD00000000000003CLL;
  v48 = 0x8000000100E5DDF0;
  v49 = &off_1010C8388;
  v50 = v17;
  v51 = v18;
  v52 = v19;
  v53 = 0xE700000000000000;
  v54 = (v24 & 1) == 0;
  strcpy(v27, "DownloadPins");
  HIBYTE(v27[6]) = 0;
  v27[7] = -5120;
  v28 = 1;
  v29 = 0xD000000000000016;
  v30 = 0x8000000100E5DDD0;
  v31 = v14;
  v32 = v16;
  v33 = 0xD00000000000003CLL;
  v34 = 0x8000000100E5DDF0;
  v35 = &off_1010C8388;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = 0xE700000000000000;
  v40 = v54;

  sub_10095272C(v41, &v26);
  sub_100952764(v27);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  sub_1000089F8(v25, v6, &qword_1011A8660, &unk_100EEDB60);
  v20 = type metadata accessor for Actions.MetricsReportingContext(0);
  if ((*(*(v20 - 8) + 48))(v6, 1, v20) == 1)
  {
    sub_1000095E8(v6, &qword_1011A8660, &unk_100EEDB60);
  }

  else
  {

    sub_10093B238(v6, type metadata accessor for Actions.MetricsReportingContext);
  }

  _s9MusicCore26MetricsReportingControllerC17recordDialogEvent_11pageContextyAA0cH0V0G0V_SSSgtF_0(v41);

  return sub_100952764(v41);
}

uint64_t sub_100A32EE0(int a1)
{
  v3 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100A32A80(a1, v4, v5, v6);
}

uint64_t sub_100A32F60()
{
  v1 = *(type metadata accessor for MusicPin() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for MusicPin.Action() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100A2FE88(v5, v0 + v2, v6);
}

uint64_t sub_100A33030()
{
  v1 = type metadata accessor for MusicPin();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for MusicPin.Action();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100A33180()
{
  v2 = *(type metadata accessor for MusicPin() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for MusicPin.Action() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10002F3F4;

  return sub_100A305A8(v7, v0 + v3, v0 + v6);
}

uint64_t sub_100A332B4()
{
  v2 = *(type metadata accessor for MusicPin.Action() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MusicPin() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100008F30;

  return sub_100A30658(v10, v11, v0 + v3, v0 + v6, v0 + v9);
}

void sub_100A33494(uint64_t a1, __n128 a2)
{
  if (!qword_1011AC4E8)
  {
    type metadata accessor for MusicPin.Item();
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &qword_1011AC4E8);
    }
  }
}

uint64_t sub_100A33510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_1011AC418, &qword_100EF6810);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100A335EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10010FC20(&qword_1011AC418, &qword_100EF6810);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100A336B0(uint64_t a1, __n128 a2)
{
  sub_100A33494(319, a2);
  if (v2 <= 0x3F)
  {
    sub_10001F838();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100A33774(uint64_t a1)
{
  result = type metadata accessor for MusicPin();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MusicPin.Action();
    if (v3 <= 0x3F)
    {
      result = sub_10001F838();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100A33818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100A33880()
{
  result = qword_1011AC660;
  if (!qword_1011AC660)
  {
    type metadata accessor for MusicPin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC660);
  }

  return result;
}

unint64_t sub_100A338D8()
{
  result = qword_1011AC678;
  if (!qword_1011AC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC678);
  }

  return result;
}

uint64_t sub_100A3392C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = *(*(v5 - 8) + 64);
  v7 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v8 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v9 = (v7 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002F3F4;

  return sub_100A2CADC(a1, a2, v10, v11, v12, v2 + v7, v2 + v9, v5);
}

id MPCPlaybackEngine.init(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithPlayerID:v7];

  v9 = v8;
  sub_10000FB18(a3, a4);

  return v9;
}

uint64_t MPCPlaybackEngine.configuration.getter()
{
  v1 = [v0 playerID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000CD9C(v0);
  v3 = [v0 fallbackPlaybackIntent];
  return v2;
}

void MPCPlaybackEngine.configuration.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10000FB18(a3, a4);
}

void (*MPCPlaybackEngine.configuration.modify(uint64_t **a1))(uint64_t a1, char a2)
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
  v5 = [v1 playerID];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = sub_10000CD9C(v1);
  v10 = [v1 fallbackPlaybackIntent];
  *v4 = v6;
  v4[1] = v8;
  v4[2] = v9;
  v4[3] = v10;
  return sub_100A33DC0;
}

void sub_100A33DC0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = v3;

    sub_10000FB18(v5, v3);

    v3 = v2[3];
  }

  else
  {
    sub_10000FB18(*(*a1 + 16), v3);
  }

  free(v2);
}

uint64_t *MPCPlaybackEngine.Configuration.systemMusic.unsafeMutableAddressor()
{
  if (qword_1011A6A50 != -1)
  {
    swift_once();
  }

  return &static MPCPlaybackEngine.Configuration.systemMusic;
}

uint64_t static MPCPlaybackEngine.Configuration.systemMusic.getter()
{
  if (qword_1011A6A50 != -1)
  {
    swift_once();
  }

  v0 = static MPCPlaybackEngine.Configuration.systemMusic;
  v1 = unk_101219CD8;

  v2 = v1;
  return v0;
}

Swift::Int MPCPlayerRequestTracklistRange.hashValue.getter(Swift::UInt a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_100A3404C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100A340A8()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_100A340E4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_100A3413C()
{
  sub_10010FC20(&qword_1011AAC20, &unk_100EF8210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  v2 = objc_opt_self();
  *(inited + 48) = [v2 emptyPropertySet];
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v3;
  *(inited + 72) = [v2 emptyPropertySet];
  sub_10000C0A4(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011AAC28, qword_100EF30B0);
  swift_arrayDestroy();
  v4 = objc_allocWithZone(MPPropertySet);
  isa = Array._bridgeToObjectiveC()().super.isa;
  sub_100009F78(0, &qword_1011AC8D0, MPPropertySet_ptr);
  v6 = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v4 initWithProperties:isa relationships:v6];

  static MPCPlayerResponse.playStateSectionProperties = v7;
}

uint64_t *MPCPlayerResponse.playStateSectionProperties.unsafeMutableAddressor()
{
  if (qword_1011A6A58 != -1)
  {
    swift_once();
  }

  return &static MPCPlayerResponse.playStateSectionProperties;
}

id static MPCPlayerResponse.playStateSectionProperties.getter()
{
  if (qword_1011A6A58 != -1)
  {
    swift_once();
  }

  v1 = static MPCPlayerResponse.playStateSectionProperties;

  return v1;
}

id sub_100A34380()
{
  v1 = v0;
  sub_10010FC20(&qword_1011AC8C8, &unk_100EF6CA0);
  __chkstk_darwin();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v20 - v5;
  v7 = [v1 tracklist];
  v8 = [v7 playingItem];

  if (v8)
  {
    v9 = [v8 metadataObject];

    if (!v9)
    {
      return 0;
    }

    v10 = [v1 tracklist];
    v11 = [v10 playingItemIndexPath];

    if (v11)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = type metadata accessor for IndexPath();
      (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
    }

    else
    {
      v12 = type metadata accessor for IndexPath();
      (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    }

    sub_100A36D44(v3, v6);
    type metadata accessor for IndexPath();
    v14 = *(v12 - 8);
    if ((*(v14 + 48))(v6, 1, v12) != 1)
    {
      v15 = IndexPath.section.getter();
      (*(v14 + 8))(v6, v12);
      v16 = [v1 tracklist];
      v17 = [v16 items];

      v18 = [v17 sectionAtIndex:v15];
      v19 = [v18 metadataObject];

      [v1 state];
      return v19;
    }

    sub_100A36DB4(v6);
  }

  return 0;
}

uint64_t MPCPlayerResponse.playState(for:in:)(void *a1, void *a2)
{
  v4 = sub_100A34380();
  if (!v5)
  {
    return 0;
  }

  v7 = v4;
  v8 = v5;
  v9 = v6;
  v10 = [v5 identifiers];
  v11 = [a1 identifiers];
  v12 = [v10 intersectsSet:v11];

  if (!v12)
  {
    goto LABEL_9;
  }

  if (v7)
  {
    if (!a2)
    {

      return 0;
    }

    v13 = a2;
    v14 = v7;
    v15 = v13;
    v7 = v14;
    if ([v7 type] != 2 || (v16 = objc_msgSend(v7, "album")) == 0)
    {

      goto LABEL_14;
    }

    v17 = v16;
    v18 = [v16 identifiers];
    v19 = [v15 identifiers];
    v20 = [v18 intersectsSet:v19];

    if (v20)
    {

      return v9;
    }

LABEL_9:

LABEL_14:
    return 0;
  }

  if (a2)
  {
    return 0;
  }

  return v9;
}

{
  v4 = sub_100A34380();
  if (v5)
  {
    v7 = v4;
    v8 = v5;
    v9 = v6;
    v10 = [v5 innermostModelObject];
    v11 = [v10 identifiers];

    v12 = [v8 identifiers];
    v13 = [v11 unionSet:v12];

    v14 = [a1 identifiers];
    LODWORD(v12) = [v13 intersectsSet:v14];

    if (v12)
    {
      if (!v7)
      {
        v9 = 0;
        v7 = v8;
        goto LABEL_12;
      }

      v7 = v7;
      if ([v7 type] != 4 || (v15 = objc_msgSend(v7, "playlist")) == 0)
      {

        goto LABEL_11;
      }

      v16 = v15;
      v17 = [v15 identifiers];
      v18 = [a2 identifiers];
      v19 = [v17 intersectsSet:v18];

      if (v19)
      {

        v7 = v8;
LABEL_12:

        return v9;
      }
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  return 0;
}

uint64_t MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v20[-v7];
  result = [v1 playingItem];
  if (result)
  {
    v10 = result;
    [result duration];
    if (v20[56] == 1)
    {
LABEL_3:

      return 0;
    }

    v11 = [v1 playingItemIndexPath];
    if (v11)
    {
      v12 = v11;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 32))(v8, v5, v2);
      v13 = [v1 items];
      v14 = [v13 sectionAtIndex:IndexPath.section.getter()];

      v15 = [v14 metadataObject];
      if (v15)
      {
        v16 = [v15 innermostModelObject];
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = v17;
          if ([v17 type] == 4)
          {
            (*(v3 + 8))(v8, v2);

            goto LABEL_3;
          }

          v19 = [v18 subtype];

          (*(v3 + 8))(v8, v2);
          if (v19 == 1)
          {
            return 0;
          }
        }

        else
        {

          (*(v3 + 8))(v8, v2);
        }

        return 1;
      }

      (*(v3 + 8))(v8, v2);
    }

    return 1;
  }

  return result;
}

void MPCPlayerResponseTracklist.currentPlayEvent.getter()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &aBlock[-1] - v7;
  v9 = [v1 playingItemIndexPath];
  if (v9)
  {
    v10 = v9;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v8, v5, v2);
    v11 = [v1 items];
    v12 = [v11 sectionAtIndex:IndexPath.section.getter()];

    v13 = [v12 metadataObject];
    if (v13)
    {
      v22 = 0;
      v14 = [v13 identifiers];
      __chkstk_darwin();
      *(&v20 - 2) = v13;
      *(&v20 - 1) = &v22;
      v15 = objc_allocWithZone(MPModelPlayEvent);
      v16 = swift_allocObject();
      *(v16 + 16) = sub_100A36C9C;
      *(v16 + 24) = &v20 - 4;
      aBlock[4] = sub_1002CF914;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10006BD7C;
      aBlock[3] = &unk_1010D9CF0;
      v17 = _Block_copy(aBlock);

      v18 = [v15 initWithIdentifiers:v14 block:v17];

      _Block_release(v17);
      (*(v3 + 8))(v8, v2);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else if (v22 == 1)
      {
      }
    }

    else
    {
      (*(v3 + 8))(v8, v2);
    }
  }
}

void sub_100A35094(uint64_t a1, void *a2, _BYTE *a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  v10 = [a2 anyObject];
  if (!v10)
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v5 setPlaylist:v7];
      goto LABEL_10;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      [v5 setArtist:v8];
      goto LABEL_10;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v5 setRadioStation:v9];
      goto LABEL_10;
    }

LABEL_14:
    *a3 = 1;
    return;
  }

  [v5 setAlbum:v6];
LABEL_10:
}

id MPCVocalsControlCommand.isTrulyActive.getter()
{
  result = [v0 isActive];
  if (result)
  {
    return ([v0 isDisabled] ^ 1);
  }

  return result;
}

id MPCPlayerResponse.VideoContext.__allocating_init(playerResponse:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 videoOutput];
  if (v2)
  {
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      swift_getObjectType();
      sub_100009F78(0, &qword_1011AAEA0, NSObject_ptr);
      if (swift_dynamicCastMetatype())
      {
        type metadata accessor for MPCPlayerResponse.VideoContext(0);
        v2 = swift_allocObject();
        MPCPlayerResponse.VideoContext.init(output:)(v4);
        goto LABEL_6;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

LABEL_6:

  return v2;
}

uint64_t MPCPlayerResponse.VideoContext.__allocating_init(output:)(void *a1)
{
  v2 = swift_allocObject();
  MPCPlayerResponse.VideoContext.init(output:)(a1);
  return v2;
}

uint64_t MPCPlayerResponse.VideoContext.init(output:)(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_binding;
  *(v1 + OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_binding) = 0;
  *(v1 + OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output) = a1;
  v4 = a1;
  [v4 videoBounds];
  swift_beginAccess();
  _s3__C6CGRectVMa_0(0);
  Published.init(initialValue:)();
  swift_endAccess();
  [v4 isReadyForDisplay];
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  sub_10010FC20(&unk_1011A9FB0, &unk_100EF1D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  KeyPath = swift_getKeyPath();
  *(inited + 56) = sub_10010FC20(&qword_1011AC708, qword_100EF6990);
  *(inited + 64) = &protocol witness table for KeyValueObservationTrigger<A, B>;
  *(inited + 32) = v4;
  *(inited + 40) = KeyPath;
  v7 = swift_getKeyPath();
  *(inited + 96) = sub_10010FC20(&unk_1011AC710, &qword_100EF69D0);
  *(inited + 104) = &protocol witness table for KeyValueObservationTrigger<A, B>;
  *(inited + 72) = v4;
  *(inited + 80) = v7;
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v9 = v4;

  v10 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 0, sub_100A36CBC, v8);

  *(v2 + v3) = v10;

  return v2;
}

double property wrapper backing initializer of MPCPlayerResponse.VideoContext.videoBounds(double a1, double a2, double a3, double a4)
{
  _s3__C6CGRectVMa_0(0);
  Published.init(initialValue:)();
  return result;
}

uint64_t MPCPlayerResponse.VideoContext.videoBounds.setter(double a1, double a2, double a3, double a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t MPCPlayerResponse.VideoContext.isReadyForDisplay.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100A356E4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
    swift_beginAccess();
    [*(v2 + v3) videoBounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [*(v2 + v3) isReadyForDisplay];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v15);

    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    if (!CGRectEqualToRect(v16, v15))
    {
      v17.origin.x = v5;
      v17.origin.y = v7;
      v17.size.width = v9;
      v17.size.height = v11;
      Width = CGRectGetWidth(v17);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v15);

      if (vabdd_f64(Width, CGRectGetWidth(v15)) > 1.0)
      {
        v18.origin.x = v5;
        v18.origin.y = v7;
        v18.size.width = v9;
        v18.size.height = v11;
        Height = CGRectGetHeight(v18);
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&v15);

        if (vabdd_f64(Height, CGRectGetHeight(v15)) > 1.0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v15.origin.x = v5;
          v15.origin.y = v7;
          v15.size.width = v9;
          v15.size.height = v11;

          static Published.subscript.setter();
        }
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v15);

    if (v12 == LOBYTE(v15.origin.x))
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v15.origin.x) = v12;
      static Published.subscript.setter();
    }
  }
}

uint64_t MPCPlayerResponse.VideoContext.isReadyForDisplay.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_100A35A38(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_100A35AB8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*MPCPlayerResponse.VideoContext.isReadyForDisplay.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t MPCPlayerResponse.VideoContext.$isReadyForDisplay.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AC720, &qword_100EFA120);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011AC720, &qword_100EFA120);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

double MPCPlayerResponse.VideoContext.videoBounds.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double sub_100A35F0C@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v5);

  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_100A35F8C(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*MPCPlayerResponse.VideoContext.videoBounds.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A360A8;
}

uint64_t MPCPlayerResponse.VideoContext.$videoBounds.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AC730, &qword_100EF6A70);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011AC728, &qword_100EF6A68);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MPCPlayerResponse.VideoContext.$videoBounds.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011AC730, &qword_100EF6A70);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011AC728, &qword_100EF6A68);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36370;
}

void sub_100A36374(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id MPCPlayerResponse.VideoContext.output.getter()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MPCPlayerResponse.VideoContext.output.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

unint64_t MPCPlayerResponse.VideoContext.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(40);

  v2 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getObjectType();
  v4 = v3;
  swift_getWitnessTable();
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  return 0xD000000000000026;
}

uint64_t MPCPlayerResponse.VideoContext.deinit()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v2 = sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4 = sub_10010FC20(&qword_1011AC728, &qword_100EF6A68);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t MPCPlayerResponse.VideoContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v2 = sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4 = sub_10010FC20(&qword_1011AC728, &qword_100EF6A68);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

id MPCPlayerResponse.videoContext.getter()
{
  result = [v0 videoOutput];
  if (result)
  {
    v2 = swift_dynamicCastObjCProtocolConditional();
    if (v2 && (v3 = v2, swift_getObjectType(), sub_100009F78(0, &qword_1011AAEA0, NSObject_ptr), swift_dynamicCastMetatype()))
    {
      type metadata accessor for MPCPlayerResponse.VideoContext(0);
      v4 = swift_allocObject();
      MPCPlayerResponse.VideoContext.init(output:)(v3);
      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t _sSo17MPCPlaybackEngineC9MusicCoreE13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, Swift::Int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a1 == a5 && a2 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100190304(a3, a7))
  {
    if (a4)
    {
      if (a8)
      {
        sub_100009F78(0, &qword_1011AC8D8, MPCPlaybackIntent_ptr);
        v12 = a8;
        v13 = a4;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _sSo17MPCPlayerResponseC9MusicCoreE12VideoContextC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_100009F78(0, &qword_1011AAEA0, NSObject_ptr);
  v4 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v8 = v5;
  v9 = v7;
  v10 = static NSObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v16);

  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v16);

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  result = CGRectEqualToRect(v17, v16);
  if (!result)
  {
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v16);

  if (LOBYTE(v16.origin.x) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v16);

  return LOBYTE(v16.origin.x);
}

unint64_t sub_100A36CC8()
{
  result = qword_1011AC740;
  if (!qword_1011AC740)
  {
    sub_1001109D0(&qword_1011AC748, &qword_100EF6B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC740);
  }

  return result;
}

uint64_t sub_100A36D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AC8C8, &unk_100EF6CA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A36DB4(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AC8C8, &unk_100EF6CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Player.SnapshotController.__allocating_init(windowScene:player:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Player.SnapshotController.init(windowScene:player:)(a1, a2);
  return v4;
}

void sub_100A36EB4(void *a1, char a2)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v6 = &v30 - v5;
  v7 = *(v2 + 48);
  v31 = v7;
  if ((a2 & 1) == 0)
  {
    if (v7)
    {
      v10 = [v7 tracklist];
      v11 = [v10 playingItem];

      if (!a1)
      {
        v12 = 0;
        if (!v11)
        {
          v11 = 0;
          v13 = 0;
LABEL_24:
          if ((sub_100A372E8(v11, v13) & 1) == 0)
          {

LABEL_30:
            v28 = *(v2 + 48);
            *(v2 + 48) = a1;
            v29 = a1;

            return;
          }

          v12 = v13;
LABEL_26:
          static TaskPriority.userInitiated.getter();
          v24 = type metadata accessor for TaskPriority();
          (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
          v25 = swift_allocObject();
          *(v25 + 16) = &unk_100EF6DA8;
          *(v25 + 24) = v2;

          v26 = static Task<>.delayed(by:priority:task:)(v6, &unk_100EF6DB8, v25, (&type metadata for () + 1), 1.0);

          sub_1000095E8(v6, &qword_1011A7F00, &qword_100EEDE10);
          v27 = *(v2 + 56);
          *(v2 + 56) = v26;
          if (v27)
          {

            sub_10010FC20(&qword_1011AB640, L"D\v\a");
            Task.cancel()();
          }

          goto LABEL_30;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v11 = 0;
      v13 = 0;
      if (!a1)
      {
        goto LABEL_24;
      }
    }

    v14 = [a1 tracklist];
    v12 = [v14 playingItem];

    if (!v11)
    {
      v18 = 0;
      v16 = 0;
      v13 = 0;
      if (!v12)
      {
        goto LABEL_24;
      }

      goto LABEL_15;
    }

LABEL_11:
    v15 = [v11 contentItemIdentifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (!v12)
    {
      v13 = 0;
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

LABEL_15:
    v19 = [v12 contentItemIdentifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (v18)
    {
      if (v22)
      {
        if (v16 == v20 && v18 == v22)
        {

          v13 = v12;
        }

        else
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v13 = v12;
          if ((v23 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_24;
      }
    }

    else
    {
      v13 = v12;
      if (!v22)
      {
        goto LABEL_24;
      }
    }

LABEL_22:

    goto LABEL_26;
  }

  *(v2 + 48) = a1;
  v8 = a1;
  v9 = v31;
}

double sub_100A37284(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100A36EB4(v2, 0);
  }

  return result;
}

uint64_t sub_100A372E8(void *a1, id a2)
{
  if (a1)
  {
    v3 = [a1 metadataObject];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 innermostModelObject];

      if (!a2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v10 = [a2 metadataObject];
      if (v10)
      {
        v11 = v10;
        a2 = [v10 innermostModelObject];

        if (v5)
        {
          goto LABEL_5;
        }
      }

      else
      {
        a2 = 0;
        if (v5)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_10;
    }
  }

  v5 = 0;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v5)
  {
LABEL_5:
    if (a2)
    {
      v6 = [v5 identifiers];
      v7 = [a2 identifiers];
      v8 = [v6 intersectsSet:v7];

      return v8 ^ 1;
    }

    return 1;
  }

LABEL_10:
  if (a2)
  {

    return 1;
  }

  return 0;
}

uint64_t sub_100A37430(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A374C8, v3, v2);
}

uint64_t sub_100A374C8()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v1.n128_f64[0] = sub_100A3753C(2);
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

double sub_100A3753C(char a1)
{
  v2 = v1;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *&result = __chkstk_darwin().n128_u64[0];
  v6 = &v18[-v5];
  if ((*(v1 + 64) & 1) == 0)
  {
    *(v1 + 64) = 1;
    *(v1 + 72) = 0;
    *(v1 + 80) = 1;
    if (qword_1011A6A80 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_101219D38);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      v18[7] = a1;
      v12 = String.init<A>(describing:)();
      v14 = sub_100010678(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "[📸] Set Needs Snapshot for Reason=%{public}s", v10, 0xCu);
      sub_10000959C(v11);
    }

    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    type metadata accessor for MainActor();

    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = &protocol witness table for MainActor;
    *(v17 + 32) = v2;
    *(v17 + 40) = a1;
    sub_100969440(0, 0, v6, &unk_100EF6DD0, v17);
  }

  return result;
}

uint64_t sub_100A377B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A37850, v7, v6);
}

uint64_t sub_100A37850()
{
  v1 = *(v0 + 32);

  sub_10005D6A0(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t Player.SnapshotController.deinit()
{
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t Player.SnapshotController.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_100A37964()
{
  result = qword_1011AC9D8;
  if (!qword_1011AC9D8)
  {
    sub_1001109D0(&qword_1011AD040, &unk_100EF6D90);
    sub_10001C070(&qword_1011AC9E0, &qword_1011AC9E8, MPCPlayerResponse_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC9D8);
  }

  return result;
}

uint64_t sub_100A37A1C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_100A37430(v0);
}

uint64_t sub_100A37AAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_1006B9D38(a1, v4);
}

uint64_t sub_100A37B64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100A377B4(a1, v4, v5, v6, v7);
}

unint64_t sub_100A37C3C()
{
  result = qword_1011ACA00;
  if (!qword_1011ACA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ACA00);
  }

  return result;
}

uint64_t PlaybackController.insert(_:location:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = type metadata accessor for UUID();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[25] = v7;
  v4[26] = v6;

  return _swift_task_switch(sub_100A37D8C, v7, v6);
}

uint64_t sub_100A37D8C(__n128 a1)
{
  v36 = v1;
  v3 = v1[21];
  v2 = v1[22];
  v4 = v1[20];
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  v1[27] = v5;
  v1[28] = v6;
  (*(v3 + 8))(v2, v4);
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v8 = v1[16];
  v9 = type metadata accessor for Logger();
  v1[29] = sub_1000060E4(v9, static Logger.playbackController);

  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v1[16];
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_100010678(v5, v7, &v35);
    *(v14 + 12) = 2082;
    v15 = v13;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_100010678(v17, v19, &v35);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "⤵️ Inserting new intent with ID=%{public}s, intent=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v21 = v1[19];
  v22 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v23 = *(v21 + v22);
  v25 = v1[16];
  v24 = v1[17];
  if (v23)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v25;

    sub_1001DFD48(v24);
    static Published.subscript.getter(v1 + 14);

    v27 = v1[14];
    if (v27)
    {
    }
  }

  else
  {
    v28 = v25;
    sub_1001DFD48(v24);
  }

  v29 = v1[16];
  v30 = v1[17];
  MPCPlaybackIntent.isInGroupSession.setter();
  v1[5] = &type metadata for Player.InsertCommand;
  v1[6] = &protocol witness table for Player.InsertCommand;
  v1[2] = v29;
  v1[3] = v30;
  v31 = v29;
  sub_1001DFD48(v30);
  v1[30] = static MainActor.shared.getter();
  v33 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[31] = v33;
  v1[32] = v32;

  return _swift_task_switch(sub_100A380DC, v33, v32);
}

uint64_t sub_100A380DC()
{
  v1 = v0[16];
  sub_10010FC20(&unk_1011ACA30, &unk_100EEC4D0);
  v2 = swift_allocObject();
  v0[33] = v2;
  *(v2 + 16) = xmmword_100EBC6B0;
  sub_100008FE4((v0 + 2), v2 + 32);
  v0[34] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_100A381D8;
  v4 = v0[18];

  return sub_100A43F80(v2, 0x10000, 1, 0, v1, v4);
}

uint64_t sub_100A381D8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = sub_100A38494;
  }

  else
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = sub_100A38350;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100A38350()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_100A383BC, v1, v2);
}

uint64_t sub_100A383BC()
{
  v1 = v0[36];

  if (v1 >> 62)
  {
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((v1 & 0xC000000000000001) == 0)
    {
      v1 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v1)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_6:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_9;
      }
    }

    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
  }

LABEL_9:

LABEL_10:
  sub_10000959C(v0 + 2);
  v2 = v0[25];
  v3 = v0[26];

  return _swift_task_switch(sub_100A389F8, v2, v3);
}

uint64_t sub_100A38494()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_100A384F8, v1, v2);
}

uint64_t sub_100A384F8()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return _swift_task_switch(sub_100A3855C, v1, v2);
}

uint64_t sub_100A3855C()
{
  v33 = v0;
  v1 = *(v0 + 296);
  sub_10000959C((v0 + 16));
  *(v0 + 120) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    *(v0 + 304) = v3;
    *(v0 + 312) = v2;
    v4 = _convertErrorToNSError(_:)();
    v5 = [v4 code];

    if (v5 == 3)
    {

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v9 = *(v0 + 216);
        v8 = *(v0 + 224);
        v10 = swift_slowAlloc();
        v32[0] = swift_slowAlloc();
        *v10 = 136446466;
        *(v10 + 4) = sub_100010678(v9, v8, v32);
        *(v10 + 12) = 2082;
        *(v10 + 14) = sub_100010678(0xD00000000000001FLL, 0x8000000100E60B40, v32);
        _os_log_impl(&_mh_execute_header, v6, v7, "❌ Insert failed for intent with ID=%{public}s, error=%{public}s", v10, 0x16u);
        swift_arrayDestroy();
      }

      v11 = swift_task_alloc();
      *(v0 + 320) = v11;
      *v11 = v0;
      v11[1] = sub_100A38B90;
      v12 = *(v0 + 216);
      v13 = *(v0 + 224);
      v14 = *(v0 + 144);
      v15 = *(v0 + 128);

      return sub_100A3B22C(v15, v12, v13, v14);
    }

    swift_errorRetain();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 224);
    if (v20)
    {
      v22 = *(v0 + 216);
      v23 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v23 = 136446466;
      v24 = sub_100010678(v22, v21, v32);

      *(v23 + 4) = v24;
      *(v23 + 12) = 2082;
      *(v0 + 96) = v3;
      *(v0 + 104) = v2;
      swift_errorRetain();

      v25 = String.init<A>(describing:)();
      v27 = sub_100010678(v25, v26, v32);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "❌ Insert failed for intent with ID=%{public}s, error=%{public}s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v29 = *(v0 + 128);
    v28 = *(v0 + 136);
    sub_100A516D8();
    swift_allocError();
    *v30 = v3;
    v30[1] = v2;
    swift_willThrow();
    swift_errorRetain();

    sub_100309AD8(v28);
  }

  else
  {
    v17 = *(v0 + 136);

    sub_100309AD8(v17);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100A389F8()
{
  v15 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 224);
  if (v3)
  {
    v5 = *(v0 + 216);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = sub_100010678(v5, v4, &v14);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "✅ Successfully inserted intent with ID=%{public}s", v8, 0xCu);
    sub_10000959C(v9);

    sub_100309AD8(v6);
  }

  else
  {
    v11 = *(v0 + 136);

    sub_100309AD8(v11);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100A38B90()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_100A53DB8;
  }

  else
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_100A38CD4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100A38CD4()
{
  v2 = v0[16];
  v1 = v0[17];

  sub_100A5172C();
  swift_allocError();
  *v3 = 3;
  *(v3 + 8) = 2;
  swift_willThrow();

  sub_100309AD8(v1);

  v4 = v0[1];

  return v4();
}

uint64_t PlaybackController.add(_:route:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = type metadata accessor for CocoaError.Code();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = type metadata accessor for PlaybackIntentDescriptor(0);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[34] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[35] = v8;
  v3[36] = v7;

  return _swift_task_switch(sub_100A38FF4, v8, v7);
}

uint64_t sub_100A38FF4()
{
  v40 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = (v0[17] + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[4] = 0;
  sub_100065164(v5, v6, v7, v8, v9);
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  v0[37] = v10;
  v0[38] = v11;
  (*(v2 + 8))(v1, v3);
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v13 = v0[30];
  v14 = v0[15];
  v15 = type metadata accessor for Logger();
  v0[39] = v15;
  v0[40] = sub_1000060E4(v15, static Logger.playbackController);
  sub_100A51780(v14, v13, type metadata accessor for PlaybackIntentDescriptor);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[30];
  if (v18)
  {
    v20 = v0[29];
    v21 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v21 = 136446466;
    *(v21 + 4) = sub_100010678(v10, v12, &v39);
    *(v21 + 12) = 2082;
    sub_100A51780(v19, v20, type metadata accessor for PlaybackIntentDescriptor);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    sub_100A51DF4(v19, type metadata accessor for PlaybackIntentDescriptor);
    v25 = sub_100010678(v22, v24, &v39);

    *(v21 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "➕ Adding new playback intent with ID=%{public}s, descriptor=%{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100A51DF4(v19, type metadata accessor for PlaybackIntentDescriptor);
  }

  sub_100A51780(v0[15], v0[27], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = v0[27];
  if (EnumCaseMultiPayload == 1)
  {
    v28 = v0[24];
    v29 = v0[21];
    v30 = v0[22];
    (*(v30 + 32))(v28, v27, v29);
    v31 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v30 + 8))(v28, v29);
  }

  else
  {
    v31 = *v27;
  }

  v32 = v0[17];
  v33 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v32 + v33))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(v0 + 9);

    v34 = v0[9];
    if (v34)
    {
    }
  }

  MPCPlaybackIntent.isInGroupSession.setter();

  v35 = swift_task_alloc();
  v0[41] = v35;
  *v35 = v0;
  v35[1] = sub_100A39434;
  v36 = v0[16];
  v37 = v0[15];

  return sub_100A3C668(v37, v10, v12, v36);
}