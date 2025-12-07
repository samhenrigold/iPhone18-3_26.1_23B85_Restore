uint64_t sub_6A1A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB31C0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
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
    v11 = 0x8000000000B6FF70;
  }

  v12 = sub_52A450(_swiftEmptyArrayStorage);
  sub_62DE74(a1, v11, 0xD000000000000032, 0x8000000000B6D4B0, _swiftEmptyArrayStorage, v12, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v10, 1u);
  v13 = v4;

  sub_15F84(v10, v8, &qword_E0DC30, &unk_B15160);
  if ((*(v5 + 48))(v8, 1, v4) == 1)
  {
    sub_12E1C(v10, &qword_E0DC30, &unk_B15160);
  }

  else
  {
    v14 = v28;
    (*(v5 + 32))(v28, v8, v4);
    v15 = objc_opt_self();
    v16 = [v15 sharedApplication];
    sub_AB30F0(v17);
    v19 = v18;
    v20 = [v16 canOpenURL:v18];

    if (v20)
    {
      v21 = [v15 sharedApplication];
      sub_AB30F0(v22);
      v24 = v23;
      sub_52A314(_swiftEmptyArrayStorage);
      _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
      sub_5B52BC();
      isa = sub_AB8FD0().super.isa;

      [v21 openURL:v24 options:isa completionHandler:0];
    }

    (*(v5 + 8))(v14, v13);
    v8 = v10;
  }

  return sub_12E1C(v8, &qword_E0DC30, &unk_B15160);
}

uint64_t sub_6A1DB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E120B0, &qword_B208D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_6A1E20()
{

  return swift_deallocObject();
}

uint64_t sub_6A1E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10D80, &unk_B1D048);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6A1ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice.Thumbnail(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s9MusicCore6NoticeV9ThumbnailO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB8A60();
  v21 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Notice.Thumbnail(0);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v20 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E122F8, &unk_B209A8);
  __chkstk_darwin();
  v12 = &v20 - v11;
  v14 = *(v13 + 56);
  sub_6A2290(a1, &v20 - v11, type metadata accessor for Notice.Thumbnail);
  sub_6A2290(a2, &v12[v14], type metadata accessor for Notice.Thumbnail);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_6A2290(v12, v10, type metadata accessor for Notice.Thumbnail);
    if (!swift_getEnumCaseMultiPayload())
    {
      v17 = sub_AB7570();

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_6A2290(v12, v8, type metadata accessor for Notice.Thumbnail);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = v21;
      (*(v21 + 32))(v6, &v12[v14], v4);
      v17 = sub_AB8A40();
      v18 = *(v16 + 8);
      v18(v6, v4);
      v18(v8, v4);
LABEL_12:
      sub_6A2C40(v12, type metadata accessor for Notice.Thumbnail);
      return v17 & 1;
    }

    (*(v21 + 8))(v8, v4);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_12E1C(v12, &qword_E122F8, &unk_B209A8);
    v17 = 0;
    return v17 & 1;
  }

  sub_6A2C40(v12, type metadata accessor for Notice.Thumbnail);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_6A2290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E120B0, &qword_B208D8);
  __chkstk_darwin();
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E122F0, &qword_B209A0);
  __chkstk_darwin();
  v12 = &v37 - v11;
  v13 = *a1;
  v14 = a1[1];
  v38 = a1;
  if ((v13 != *a2 || v14 != a2[1]) && (sub_ABB3C0() & 1) == 0)
  {
    return 0;
  }

  v15 = a2;
  v37 = type metadata accessor for Notice(0);
  v16 = *(v37 + 20);
  v17 = *(v10 + 48);
  sub_15F84(v38 + v16, v12, &qword_E120B0, &qword_B208D8);
  v18 = v15 + v16;
  v19 = v15;
  sub_15F84(v18, &v12[v17], &qword_E120B0, &qword_B208D8);
  v20 = *(v5 + 48);
  if (v20(v12, 1, v4) == 1)
  {
    if (v20(&v12[v17], 1, v4) == 1)
    {
      sub_12E1C(v12, &qword_E120B0, &qword_B208D8);
      goto LABEL_13;
    }

LABEL_9:
    sub_12E1C(v12, &qword_E122F0, &qword_B209A0);
    return 0;
  }

  sub_15F84(v12, v9, &qword_E120B0, &qword_B208D8);
  if (v20(&v12[v17], 1, v4) == 1)
  {
    sub_6A2C40(v9, type metadata accessor for Notice.Thumbnail);
    goto LABEL_9;
  }

  sub_6A1ED0(&v12[v17], v7);
  v22 = _s9MusicCore6NoticeV9ThumbnailO21__derived_enum_equalsySbAE_AEtFZ_0(v9, v7);
  sub_6A2C40(v7, type metadata accessor for Notice.Thumbnail);
  sub_6A2C40(v9, type metadata accessor for Notice.Thumbnail);
  sub_12E1C(v12, &qword_E120B0, &qword_B208D8);
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
  if ((*v25 != *v27 || v26 != v27[1]) && (sub_ABB3C0() & 1) == 0)
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
    if (v32 && (*v29 == *v31 && v30 == v32 || (sub_ABB3C0() & 1) != 0))
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

uint64_t sub_6A26DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E120B0, &qword_B208D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_6A27AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E120B0, &qword_B208D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_6A285C(uint64_t a1)
{
  sub_6A2960(319, &qword_E12128, type metadata accessor for Notice.Thumbnail);
  if (v1 <= 0x3F)
  {
    sub_5D0388();
    if (v2 <= 0x3F)
    {
      sub_51BAD0(319);
      if (v3 <= 0x3F)
      {
        sub_6A2960(319, &unk_E12130, type metadata accessor for FeedbackType);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_6A2960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ABA9C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_6A29B4(uint64_t a1)
{
  result = sub_AB8A60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_6A2A20(uint64_t a1)
{
  sub_6A2B00(319);
  if (v1 <= 0x3F)
  {
    sub_6A2BF8(319, &qword_E122A8);
    if (v2 <= 0x3F)
    {
      sub_6A2B80(319, &qword_E122B0, "playlistCount folderName ");
      if (v3 <= 0x3F)
      {
        sub_6A2B80(319, &qword_E122B8, "folderCount folderName ");
        if (v4 <= 0x3F)
        {
          sub_6A2BF8(319, &unk_E122C0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_6A2B00(uint64_t a1)
{
  if (!qword_E122A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E10D80, &unk_B1D048);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_E122A0);
    }
  }
}

void sub_6A2B80(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E12FB0, &qword_B196A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_6A2BF8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_5D0388();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_6A2C40(uint64_t a1, uint64_t (*a2)(void))
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
  sub_6A6DF8(a4, &a7[v13[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_6A2DEC(a5, &a7[v14]);
  *&a7[v16] = a6;
  return result;
}

uint64_t sub_6A2DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12318, &qword_B209C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v21 = a3;
  v22 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12318, &qword_B209C8);
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
  result = sub_6A2DEC(v13, &a7[v18]);
  *&a7[v19] = v22;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v31 = a3;
  v32 = a7;
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12318, &qword_B209C8);
  __chkstk_darwin();
  v14 = &v29 - v13;
  v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = a4;
  v18[1] = a5;
  swift_storeEnumTagMultiPayload();
  v19 = sub_AB2F20();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(a6, 1, v19) == 1)
  {
    sub_12E1C(a6, &qword_E0E038, &qword_B1DB70);
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
  sub_6A6DF8(v18, &a8[v23[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_6A2DEC(v14, &a8[v24]);
  *&a8[v25] = v32;
  return result;
}

uint64_t NowPlaying.TrackMetadata.StringKind.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB2F20();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    sub_12E1C(a1, &qword_E0E038, &qword_B1DB70);
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
  v4 = sub_AB2F20();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v27 = a3;
  v28 = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12318, &qword_B209C8);
  __chkstk_darwin();
  v15 = (&v27 - v14);
  v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_AB2F20();
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
  sub_6A6DF8(v19, a8 + v23[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_6A2DEC(v15, a8 + v24);
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

  return sub_6A39E8(a1, v3);
}

uint64_t NowPlaying.TrackMetadata.subtitle.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 28);

  return sub_6A2DEC(a1, v3);
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

uint64_t sub_6A39E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlaying.TrackMetadata.StringKind.description.getter()
{
  v1 = v0;
  v2 = sub_AB2F20();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6A6D90(v1, v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v7;
  }

  (*(v3 + 32))(v5, v7, v2);
  sub_6A3BD8();
  v8 = sub_AB3060();
  (*(v3 + 8))(v5, v2);
  return v8;
}

unint64_t sub_6A3BD8()
{
  result = qword_E111F0;
  if (!qword_E111F0)
  {
    sub_AB2F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E111F0);
  }

  return result;
}

uint64_t sub_6A3C34(uint64_t a1)
{
  v2 = v1;
  v3 = sub_AB2F20();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6A6D90(v2, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v4 + 32))(v6, v8, v3);
  sub_6A3BD8();
  v9 = sub_AB3060();
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t NowPlaying.TrackMetadata.isArtworkVisuallyEqual(to:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12320, &qword_B209D0);
  __chkstk_darwin();
  v4 = &v12 - v3;
  v5 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v6 = *(v1 + *(v5 + 32));
  sub_15F84(a1, v4, &qword_E12320, &qword_B209D0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    v7 = v6;
    sub_12E1C(v4, &qword_E12320, &qword_B209D0);
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
    sub_6A6E60(v4, type metadata accessor for NowPlaying.TrackMetadata);
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
          sub_13C80(0, &qword_E112E0, NSObject_ptr);
          v8 = sub_ABA790();
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
  if (qword_E0CE70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v4 = __swift_project_value_buffer(v3, static NowPlaying.TrackMetadata.notPlaying);
  if (v1 == *v4 && v2 == v4[1])
  {
    return 1;
  }

  return sub_ABB3C0();
}

void sub_6A4044()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12318, &qword_B209C8);
  __chkstk_darwin();
  v25 = &v23 - v0;
  sub_AB35C0();
  __chkstk_darwin();
  v1 = sub_AB9250();
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
  __swift_allocate_value_buffer(v11, static NowPlaying.TrackMetadata.notPlaying);
  v12 = __swift_project_value_buffer(v11, static NowPlaying.TrackMetadata.notPlaying);
  sub_AB91E0();
  v13 = *(v2 + 16);
  v24 = v1;
  v13(v4, v6, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v14 = qword_E71B20;
  sub_AB3550();
  v15 = sub_AB9320();
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
  sub_6A6DF8(v10, &v12[v11[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_6A2DEC(v19, &v12[v20]);
  v22 = *&v12[v21];
  *&v12[v21] = 0;
}

void sub_6A4418()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12318, &qword_B209C8);
  __chkstk_darwin();
  v25 = &v23 - v0;
  sub_AB35C0();
  __chkstk_darwin();
  v1 = sub_AB9250();
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
  __swift_allocate_value_buffer(v11, static NowPlaying.TrackMetadata.loading);
  v12 = __swift_project_value_buffer(v11, static NowPlaying.TrackMetadata.loading);
  sub_AB91E0();
  v13 = *(v2 + 16);
  v24 = v1;
  v13(v4, v6, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v14 = qword_E71B20;
  sub_AB3550();
  v15 = sub_AB9320();
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
  sub_6A6DF8(v10, v12 + v11[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_6A2DEC(v19, v12 + v20);
  v22 = *(v12 + v21);
  *(v12 + v21) = 0;
}

uint64_t sub_6A47E8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_6A4860@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_6A6D90(v7, a4, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t NowPlaying.TrackMetadata.init(playerPath:item:subtitled:)@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v62) = a3;
  v69 = a2;
  v71 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12318, &qword_B209C8);
  __chkstk_darwin();
  v68 = &v58 - v5;
  v70 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin();
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2F50();
  __chkstk_darwin();
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_AB2F20();
  v65 = *(v67 - 8);
  __chkstk_darwin();
  v63 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v58 - v9;
  sub_AB35C0();
  __chkstk_darwin();
  v10 = sub_AB9250();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v58 - v14;
  sub_AB91E0();
  v16 = *(v11 + 16);
  v16(v13, v15, v10);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v17 = qword_E71B20;
  sub_AB3550();
  v18 = v17;
  v19 = sub_AB9320();
  v59 = v20;
  v60 = v19;
  v21 = *(v11 + 8);
  v21(v15, v10);
  sub_AB91E0();
  v16(v13, v15, v10);
  sub_AB3550();
  v22 = sub_AB9320();
  v24 = v23;
  v21(v15, v10);
  v25 = [a1 route];
  v26 = a1;
  if (v25)
  {
    v27 = v25;
    v28 = [v25 routeName];

    v29 = sub_AB92A0();
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
  sub_AB92A0();
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
  sub_AB2F40();
  sub_AB2F30();
  v38 = [v26 representedBundleID];
  if (!v38)
  {
    v38 = [v26 bundleID];
    if (!v38)
    {
      v61 = 0xD000000000000013;
      v62 = 0x8000000000B6FFB0;
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
  v61 = sub_AB92A0();
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
  sub_6A2DEC(v48, v45 + v50);
  *(v45 + v51) = 0;
  v55 = v71;
  sub_6A6DF8(v45, v71, type metadata accessor for NowPlaying.TrackMetadata);
  v56 = v66;
  LOBYTE(v46) = [v66 isSystemMusicPath];

  result = (*(v41 + 8))(v72, v43);
  *(v55 + v44[9]) = v46;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:)@<X0>(void *a1@<X0>, void *a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E038, &qword_B1DB70);
  __chkstk_darwin();
  v11 = (&v65 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12318, &qword_B209C8);
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
        v72 = sub_AB92A0();
        v65 = v37;

        sub_6A6D90(v16, v76, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        v38 = v29;
        MPModelSong.preferredBylineAttribution(with:from:)(&off_D1C638, v29, v11);
        v39 = sub_AB2F20();
        v40 = *(v39 - 8);
        if ((*(v40 + 48))(v11, 1, v39) == 1)
        {
          sub_12E1C(v11, &qword_E0E038, &qword_B1DB70);
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

        sub_17654(v78, v75);
        sub_6A6E60(v16, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
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
        sub_6A6DF8(v76, v20 + v17[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        sub_6A2DEC(v42, v20 + v46);
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

          sub_17654(v25, v75);
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

            if (qword_E0CE80 != -1)
            {
              swift_once();
            }

            v55 = sub_AB4BC0();
            __swift_project_value_buffer(v55, qword_E12300);
            v56 = v68;
            v57 = sub_AB4BA0();
            v58 = sub_AB9F40();

            if (os_log_type_enabled(v57, v58))
            {
              v59 = v21;
              v60 = swift_slowAlloc();
              v61 = swift_slowAlloc();
              v80 = v61;
              *v60 = 136315138;
              v79 = [v56 type];
              _s3__C24MPModelGenericObjectTypeOMa_0(0);
              v62 = sub_AB9350();
              v64 = sub_500C84(v62, v63, &v80);
              a5 = v67;

              *(v60 + 4) = v64;
              _os_log_impl(&dword_0, v57, v58, "Unexpected metadataObject type %s", v60, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v61);

              sub_17654(v78, v52);
            }

            else
            {

              sub_17654(v78, v52);
            }

            v31 = 1;
            goto LABEL_23;
          }

          v53 = v51;
          v54 = v23;
          NowPlaying.TrackMetadata.init(movie:item:)(v53, v21, v20);

          sub_17654(v78, v52);
        }
      }

      sub_6A6DF8(v20, a5, type metadata accessor for NowPlaying.TrackMetadata);
      v31 = 0;
LABEL_23:
      v18 = v69;
      return (*(v18 + 56))(a5, v31, 1, v17);
    }

    sub_17654(v78, v75);
    v31 = 1;
    v17 = v74;
  }

  else
  {
    sub_17654(a3, a4);

    v31 = 1;
  }

  return (*(v18 + 56))(a5, v31, 1, v17);
}

uint64_t NowPlaying.TrackMetadata.init(song:from:item:explicitBadgeConfigurator:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E038, &qword_B1DB70);
  __chkstk_darwin();
  v11 = (&v35 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12318, &qword_B209C8);
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
  v22 = sub_AB92A0();
  v36 = v23;
  v37 = v22;

  sub_6A6D90(v19, v42, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v38 = a2;
  MPModelSong.preferredBylineAttribution(with:from:)(&off_D1C660, a2, v11);
  v24 = sub_AB2F20();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v11, 1, v24) == 1)
  {
    sub_12E1C(v11, &qword_E0E038, &qword_B1DB70);
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

  sub_17654(v39, v40);
  sub_6A6E60(v19, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
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
  sub_6A6DF8(v33, &a5[v29[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_6A2DEC(v13, &a5[v30]);
  *&a5[v31] = v28;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(tvEpisode:item:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12318, &qword_B209C8);
  __chkstk_darwin();
  v47 = &v42 - v6;
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin();
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E038, &qword_B1DB70);
  __chkstk_darwin();
  v11 = &v42 - v10;
  sub_AB35C0();
  __chkstk_darwin();
  v12 = sub_AB9250();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v18 = &v42 - v17;
  v48 = a2;
  v19 = [a2 queueItemIdentifier];
  v20 = sub_AB92A0();
  v42 = v21;
  v43 = v20;

  v44 = a1;
  v22 = [a1 title];
  if (v22)
  {
    v23 = v22;
    v24 = sub_AB92A0();
    v26 = v25;
  }

  else
  {
    sub_AB91E0();
    (*(v13 + 16))(v15, v18, v12);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v27 = qword_E71B20;
    sub_AB3550();
    v24 = sub_AB9320();
    v26 = v28;
    (*(v13 + 8))(v18, v12);
  }

  v29 = sub_AB2F20();
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
    sub_12E1C(v11, &qword_E0E038, &qword_B1DB70);
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
  sub_6A6DF8(v9, a3 + v37[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_6A2DEC(v35, a3 + v38);
  *(a3 + v39) = v32;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(movie:item:)@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12318, &qword_B209C8);
  __chkstk_darwin();
  v7 = &v34 - v6;
  sub_AB35C0();
  __chkstk_darwin();
  v8 = sub_AB9250();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v34 - v13;
  v15 = [a2 queueItemIdentifier];
  v16 = sub_AB92A0();
  v35 = v17;
  v36 = v16;

  v18 = [a1 title];
  if (v18)
  {
    v19 = v18;
    v20 = sub_AB92A0();
    v22 = v21;
  }

  else
  {
    sub_AB91E0();
    (*(v9 + 16))(v11, v14, v8);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v23 = qword_E71B20;
    sub_AB3550();
    v20 = sub_AB9320();
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
  result = sub_6A2DEC(v7, &a3[v30]);
  *&a3[v31] = v25;
  return result;
}

uint64_t sub_6A64E8()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E12300);
  __swift_project_value_buffer(v0, qword_E12300);
  return sub_AB4BB0();
}

uint64_t sub_6A6568(Swift::String a1)
{
  sub_AB94A0(a1);

  return sub_AB4BB0();
}

uint64_t _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v24 = sub_AB2F20();
  v4 = *(v24 - 8);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v23 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E124A0, &qword_B20AC8);
  __chkstk_darwin();
  v12 = &v23 - v11;
  v14 = (&v23 + *(v13 + 56) - v11);
  sub_6A6D90(a1, &v23 - v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_6A6D90(a2, v14, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_6A6D90(v12, v10, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v19 = *v10;
    v18 = v10[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v19 == *v14 && v18 == v14[1])
      {
      }

      else
      {
        v21 = sub_ABB3C0();

        if ((v21 & 1) == 0)
        {
          sub_6A6E60(v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
          goto LABEL_8;
        }
      }

      sub_6A6E60(v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      v16 = 1;
      return v16 & 1;
    }

LABEL_7:
    sub_12E1C(v12, &qword_E124A0, &qword_B20AC8);
LABEL_8:
    v16 = 0;
    return v16 & 1;
  }

  sub_6A6D90(v12, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v8, v24);
    goto LABEL_7;
  }

  v15 = v24;
  (*(v4 + 32))(v6, v14, v24);
  v16 = sub_AB2EC0();
  v17 = *(v4 + 8);
  v17(v6, v15);
  v17(v8, v15);
  sub_6A6E60(v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  return v16 & 1;
}

uint64_t _s9MusicCore10NowPlayingO13TrackMetadataV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12320, &qword_B209D0);
  __chkstk_darwin();
  v5 = &v24 - v4;
  v6 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12318, &qword_B209C8);
  __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12498, &qword_B20AC0);
  __chkstk_darwin();
  v14 = &v24 - v13;
  if (*a1 != *a2 && (sub_ABB3C0() & 1) == 0)
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
  sub_15F84(a1 + v16, v14, &qword_E12318, &qword_B209C8);
  sub_15F84(a2 + v16, &v14[v17], &qword_E12318, &qword_B209C8);
  v18 = *(v7 + 48);
  if (v18(v14, 1, v6) == 1)
  {
    if (v18(&v14[v17], 1, v6) == 1)
    {
      sub_12E1C(v14, &qword_E12318, &qword_B209C8);
LABEL_13:
      v23 = v27;
      sub_6A6D90(a2, v27, type metadata accessor for NowPlaying.TrackMetadata);
      (*(*(v26 - 8) + 56))(v23, 0, 1);
      v19 = NowPlaying.TrackMetadata.isArtworkVisuallyEqual(to:)(v23);
      sub_12E1C(v23, &qword_E12320, &qword_B209D0);
      return v19 & 1;
    }

    goto LABEL_9;
  }

  sub_15F84(v14, v11, &qword_E12318, &qword_B209C8);
  if (v18(&v14[v17], 1, v6) == 1)
  {
    sub_6A6E60(v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_9:
    sub_12E1C(v14, &qword_E12498, &qword_B20AC0);
    goto LABEL_10;
  }

  v21 = v25;
  sub_6A6DF8(&v14[v17], v25, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v22 = _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(v11, v21);
  sub_6A6E60(v21, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_6A6E60(v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_12E1C(v14, &qword_E12318, &qword_B209C8);
  if (v22)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_6A6D90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_6A6DF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_6A6E60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_6A6ED4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12318, &qword_B209C8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_6A7018(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12318, &qword_B209C8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_6A7148(uint64_t a1)
{
  sub_6A729C(319, &qword_E12390, &qword_E12398, MPCPlayerResponseItem_ptr);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(319);
    if (v2 <= 0x3F)
    {
      sub_6A7244(319);
      if (v3 <= 0x3F)
      {
        sub_6A729C(319, &qword_E123A8, &unk_E123B0, MPArtworkCatalog_ptr);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_6A7244(uint64_t a1)
{
  if (!qword_E123A0)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(255);
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_E123A0);
    }
  }
}

void sub_6A729C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_13C80(255, a3, a4);
    v5 = sub_ABA9C0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_6A72F4(uint64_t a1)
{
  result = sub_AB2F20();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_6A7374(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_AB6AB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E124B0, &qword_B20B60);
  sub_AB7640();
  sub_AB5690();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E124B8, &qword_B20B68);
  (*(*(v17 - 8) + 16))(a3, a1, v17);
  v18 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E124C0, &qword_B20B70) + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  v19 = sub_6A78A0();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E124C8, &qword_B20B78);
  *(a3 + *(v21 + 52)) = v19;
  v22 = (a3 + *(v21 + 56));
  *v22 = sub_6A7D4C;
  v22[1] = v20;
}

void sub_6A74FC(uint64_t *a1, uint64_t a2, double a3)
{
  sub_AB7AA0();
  sub_AB5B00();
}

uint64_t View.keyboardReactive()(uint64_t a1)
{
  v1 = __chkstk_darwin();
  (*(v3 + 16))(v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v5[1] = 0;
  sub_AB7630();
  return sub_AB5D30();
}

uint64_t sub_6A7694(void *a1)
{
  sub_AB5D50();
  sub_6A76F8();
  return swift_getWitnessTable();
}

unint64_t sub_6A76F8()
{
  result = qword_E124A8;
  if (!qword_E124A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E124A8);
  }

  return result;
}

CGFloat sub_6A77A4(uint64_t a1)
{
  v1 = sub_AB2BC0();
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  sub_AB92A0();
  sub_ABAD10();
  if (!*(v2 + 16) || (v3 = sub_2EC004(&v6), (v4 & 1) == 0))
  {

    sub_8085C(&v6);
LABEL_8:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_9;
  }

  sub_808B0(*(v2 + 56) + 32 * v3, &v7);
  sub_8085C(&v6);

  if (!*(&v8 + 1))
  {
LABEL_9:
    sub_607768(&v7);
    return 0.0;
  }

  _s3__C6CGRectVMa_1(0);
  if (swift_dynamicCast())
  {
    return CGRectGetHeight(v6);
  }

  return 0.0;
}

uint64_t sub_6A78A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E124D0, &qword_B20B80);
  v1 = *(v0 - 8);
  v31 = v0;
  v32 = v1;
  __chkstk_darwin();
  v30 = &v27 - v2;
  v3 = sub_ABA280();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E124D8, &qword_B20B88);
  v29 = *(v7 - 8);
  v8 = v29;
  __chkstk_darwin();
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v27 - v10;
  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  sub_ABA290();

  sub_6A7DBC();
  sub_AB5570();
  v13 = *(v4 + 8);
  v13(v6, v3);
  v14 = [v11 defaultCenter];
  sub_ABA290();

  v15 = v28;
  sub_AB5570();
  v13(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E124E8, &unk_B20B90);
  v16 = *(v29 + 72);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_AF85F0;
  v19 = v18 + v17;
  v20 = *(v8 + 16);
  v21 = v27;
  v20(v19, v27, v7);
  v20(v19 + v16, v15, v7);
  sub_36A00(&qword_E124F0, &qword_E124D8, &qword_B20B88, &protocol conformance descriptor for Publishers.Map<A, B>);
  v22 = v30;
  sub_AB5430();
  sub_36A00(&qword_E124F8, &qword_E124D0, &qword_B20B80, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v23 = v31;
  v24 = sub_AB5550();
  (*(v32 + 8))(v22, v23);
  v25 = *(v8 + 8);
  v25(v15, v7);
  v25(v21, v7);
  return v24;
}

uint64_t sub_6A7D14()
{

  return swift_deallocObject();
}

unint64_t sub_6A7DBC()
{
  result = qword_E124E0;
  if (!qword_E124E0)
  {
    sub_ABA280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E124E0);
  }

  return result;
}

uint64_t sub_6A7E58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = __chkstk_darwin();
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_AB54D0();
  return (*(v4 + 8))(a1, a2);
}

uint64_t property wrapper backing initializer of OptionalObservableObject.output(uint64_t a1, uint64_t a2)
{
  v3 = sub_ABA9C0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, a1, v3, v5);
  sub_6A7E58(v7, v3);
  return (*(v4 + 8))(a1, v3);
}

double OptionalObservableObject.output.getter@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(a1);

  return result;
}

uint64_t OptionalObservableObject.output.setter(uint64_t a1)
{
  sub_6A8C54(a1);
  v2 = sub_ABA9C0();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t (*OptionalObservableObject.output.modify(uint64_t *a1))()
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
  v3[6] = sub_AB5500();
  return sub_6A82CC;
}

void sub_6A82CC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

double OptionalObservableObject.$output.getter()
{
  swift_beginAccess();
  sub_ABA9C0();
  sub_AB5540();
  sub_AB54E0();
  swift_endAccess();
  return result;
}

uint64_t OptionalObservableObject.$output.setter(uint64_t a1)
{
  sub_6A8D88(a1);
  sub_ABA9C0();
  v2 = sub_AB5530();
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
  sub_ABA9C0();
  v5 = sub_AB5530();
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
  return sub_6A8588;
}

void sub_6A8588(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    v7 = sub_6A8D88(v3);
    v8 = *(v6 + 8);
    v8(v3, v5, v7);
    (v8)(v4, v5);
  }

  else
  {
    v9 = sub_6A8D88(*(*a1 + 32));
    (*(v6 + 8))(v4, v5, v9);
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
  sub_ABA9C0();
  v6 = sub_AB5540();
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
    __swift_project_boxed_opaque_existential_1(&v21, v15);

    v17 = sub_AB5580();

    if (*(a1 + 3))
    {
      __swift_destroy_boxed_opaque_existential_0(a1);
    }

    goto LABEL_11;
  }

  sub_E8BA0(a1, v14);
  if (!*(a1 + 3))
  {
    goto LABEL_8;
  }

  sub_E8BA0(a1, &v21);
  v15 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    goto LABEL_9;
  }

LABEL_4:
  v16 = *(a1 + 3);
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v17 = 0;
    v16 = 0;
    if (*(&v22 + 1))
    {
LABEL_11:
      __swift_destroy_boxed_opaque_existential_0(&v21);
      v16 = v17;
    }
  }

  *(v2 + *(*v2 + 104)) = v16;

  return v2;
}

uint64_t sub_6A8988(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = sub_ABA9C0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 - 8);
  (*(v9 + 16))(&v11 - v7, a1, v3, v6);
  (*(v9 + 56))(v8, 0, 1, v3);
  sub_6A8C54(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t *OptionalObservableObject.deinit()
{
  v1 = *(*v0 + 88);
  sub_ABA9C0();
  v2 = sub_AB5540();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = (v0 + *(*v0 + 96));
  if (v3[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  return v0;
}

uint64_t OptionalObservableObject.__deallocating_deinit()
{
  OptionalObservableObject.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_6A8C10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for OptionalObservableObject(0, *(a1 + 80), a3, a4);
  result = sub_AB54A0();
  *a2 = result;
  return result;
}

uint64_t sub_6A8C54(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_ABA9C0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v9 - v6;
  v9[2] = v3;
  swift_getKeyPath();
  v9[0] = v3;
  swift_getKeyPath();
  (*(v5 + 16))(v7, a1, v4);

  return sub_AB5520();
}

double sub_6A8D88(uint64_t a1)
{
  sub_ABA9C0();
  sub_AB5530();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - v3, a1, v2);
  swift_beginAccess();
  sub_AB5540();
  sub_AB54F0();
  swift_endAccess();
  return result;
}

uint64_t sub_6A8EBC(uint64_t a1)
{
  sub_ABA9C0();
  result = sub_AB5540();
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

uint64_t PrivacyAcknowledgementObserver.__allocating_init(dispatchOnMainThread:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = swift_allocObject();
  PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(v5, a2, a3);
  return v6;
}

uint64_t PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = ICPrivacyIdentifierMusic;
  *(v3 + 16) = ICPrivacyIdentifierMusic;
  *(v3 + 24) = 0;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  v5 = objc_opt_self();
  v6 = v4;

  v7 = [v5 sharedPrivacyInfo];
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v14[4] = sub_6A92A0;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_6A92A8;
  v14[3] = &block_descriptor_191;
  v10 = _Block_copy(v14);
  v11 = v8;

  v12 = [v7 beginObservingPrivacyAcknowledgementForIdentifier:v11 handler:v10];

  _Block_release(v10);

  *(v3 + 24) = v12;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_6A9154()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_6A918C(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 32) == 1)
    {
      sub_58B7D4();
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = a2 & 1;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_6A9560, v7);
    }

    else
    {
      (*(Strong + 40))(a2 & 1);
    }
  }

  return result;
}

void sub_6A92A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

double block_copy_helper_191(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
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

double sub_6A94A8(uint64_t a1, char a2)
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

uint64_t sub_6A9528()
{

  return swift_deallocObject();
}

uint64_t sub_6A956C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_525C78(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_AB3470();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_522264(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_5271EC();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_AB3470();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_6F9710(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_AB3470();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

void sub_6A972C(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_9ACFC(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_525E44(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    sub_12E1C(a1, &qword_E11F60, &unk_B1BC70);
    sub_6F8F88(a2, v6);

    sub_12E1C(v6, &qword_E11F60, &unk_B1BC70);
  }
}

uint64_t sub_6A97E0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12660, &qword_B20D28);
  __chkstk_darwin();
  v6 = &v15 - v5;
  type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  v7 = __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v7) == 1)
  {
    sub_12E1C(a1, &unk_E12660, &qword_B20D28);
    sub_6F9028(a2, v6);
    v11 = sub_AB3470();
    (*(*(v11 - 8) + 8))(a2, v11);
    return sub_12E1C(v6, &unk_E12660, &qword_B20D28);
  }

  else
  {
    sub_52B328(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_525F94(v9, a2, isUniquelyReferenced_nonNull_native);
    v14 = sub_AB3470();
    result = (*(*(v14 - 8) + 8))(a2, v14);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_6A99EC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E144C0, &unk_B20E98);
  __chkstk_darwin();
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9E0, &qword_B17FB0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v16 - v10;
  if ((*(v8 + 48))(a1, 1, v7, v9) == 1)
  {
    sub_12E1C(a1, &unk_E144C0, &unk_B20E98);
    sub_6F9310(a2, v6);
    v12 = sub_AB3470();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_12E1C(v6, &unk_E144C0, &unk_B20E98);
  }

  else
  {
    (*(v8 + 32))(v11, a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_5265AC(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_AB3470();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

id sub_6A9C20()
{
  v0 = type metadata accessor for PushNotificationObserver();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_52ACC8(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static PushNotificationObserver.shared = result;
  return result;
}

id sub_6A9C9C()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_52ACC8(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t *PushNotificationObserver.shared.unsafeMutableAddressor()
{
  if (qword_E0CE88 != -1)
  {
    swift_once();
  }

  return &static PushNotificationObserver.shared;
}

double static PushNotificationObserver.shared.getter()
{
  if (qword_E0CE88 != -1)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12660, &qword_B20D28);
  v6[11] = swift_task_alloc();
  v7 = sub_AB3470();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_6A9EB8, v5, 0);
}

uint64_t sub_6A9EB8()
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

    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    (*(v3 + 16))(v2, v7 + v10, v4);
    sub_52B3F0(v7, v5);
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    swift_beginAccess();
    sub_6A97E0(v5, v2);
    swift_endAccess();
    v11 = *(v1 + 120);
    if (v11)
    {
      v12 = *(v0 + 80);
      v14 = *(v12 + 128);
      v13 = *(v12 + 136);
      sub_6AB930(*(v1 + 120), v14, v13);
      v15 = v11;
      sub_53EF78(v11, v14, v13);
      sub_6AAA70();
      isa = sub_AB9740().super.isa;

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
    v19[1] = sub_6AA118;

    return sub_6AB474();
  }
}

uint64_t sub_6AA118()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_6AA228, v1, 0);
}

uint64_t sub_6AA228()
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

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  (*(v2 + 16))(v1, v7 + v10, v3);
  sub_52B3F0(v7, v4);
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  swift_beginAccess();
  sub_6A97E0(v4, v1);
  swift_endAccess();
  v11 = *(v6 + 120);
  if (v11)
  {
    v12 = *(v0 + 80);
    v14 = *(v12 + 128);
    v13 = *(v12 + 136);
    sub_6AB930(*(v6 + 120), v14, v13);
    v15 = v11;
    sub_53EF78(v11, v14, v13);
    sub_6AAA70();
    isa = sub_AB9740().super.isa;

    [v15 _setEnabledTopics:isa];
  }

  v17 = *(v0 + 8);

  return v17();
}

double PushNotificationObserver.unregister(registeredHandler:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12660, &qword_B20D28);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = sub_AB3470();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(v7 + 16))(v9, a1 + *(v10 + 24), v6);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  swift_beginAccess();
  sub_6A97E0(v5, v9);
  swift_endAccess();
  v13 = (v2 + 120);
  v12 = *(v2 + 120);
  if (v12)
  {
    v15 = *(v2 + 128);
    v14 = *(v2 + 136);
    sub_6AB930(*(v2 + 120), v15, v14);
    v16 = v12;
    sub_53EF78(v12, v15, v14);
    sub_6AAA70();
    isa = sub_AB9740().super.isa;

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
    return sub_53EF78(v18, v19, v20);
  }

  return result;
}

void PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v9 = &v12 - v8;
  if (a4)
  {
    v10 = sub_AB9990();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v4;
    v11[5] = a2;
    v11[6] = a3;
    v11[7] = a4;

    sub_5E89D8(0, 0, v9, &unk_B20D48, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_6AA7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_6AA814, 0, 0);
}

uint64_t sub_6AA814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 32))
  {
    return _swift_task_switch(sub_6AA83C, *(v3 + 16), 0);
  }

  __break(1u);
  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_6AA83C()
{
  sub_6AAF08(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

void sub_6AAA70()
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12820, &qword_B20E88);
  __chkstk_darwin();
  v54 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = &v45 - v2;
  __chkstk_darwin();
  v52 = &v45 - v3;
  __chkstk_darwin();
  v51 = &v45 - v4;
  if (*(v0 + 152))
  {
    swift_beginAccess();
    v5 = *(*(v0 + 112) + 16);
    if (v5)
    {
      v59 = _swiftEmptyArrayStorage;

      sub_503918(0, v5, 0);
      v7 = v6;
      v8 = v59;
      v9 = v7 + 64;
      v10 = sub_ABABC0();
      v11 = 0;
      v12 = *(v7 + 36);
      v46 = v7 + 72;
      v47 = v5;
      v48 = v12;
      v49 = v7 + 64;
      v50 = v7;
      while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v7 + 32))
      {
        v14 = v10 >> 6;
        if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_25;
        }

        if (v12 != *(v7 + 36))
        {
          goto LABEL_26;
        }

        v56 = v11;
        v57 = 1 << v10;
        v15 = v55;
        v16 = *(v55 + 48);
        v17 = *(v7 + 48);
        v18 = sub_AB3470();
        v19 = *(v18 - 8);
        v20 = v19;
        v21 = v17 + *(v19 + 72) * v10;
        v22 = *(v19 + 16);
        v58 = v8;
        v23 = v51;
        v22(v51, v21, v18);
        v24 = *(v7 + 56);
        v25 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
        sub_52B3F0(v24 + *(*(v25 - 8) + 72) * v10, &v23[v16]);
        v26 = *(v20 + 32);
        v27 = v52;
        v26(v52, v23, v18);
        sub_52B328(&v23[v16], v27 + *(v15 + 48));
        v28 = v53;
        sub_6AC8B0(v27, v53);
        v29 = *(v15 + 48);
        v30 = v54;
        v31 = &v54[v29];
        v26(v54, v28, v18);
        v32 = v28 + v29;
        v8 = v58;
        sub_52B328(v32, v30 + v29);
        v33 = *v31;
        v34 = *(v31 + 1);

        sub_12E1C(v30, &qword_E12820, &qword_B20E88);
        sub_12E1C(v27, &qword_E12820, &qword_B20E88);
        v59 = v8;
        v36 = v8[2];
        v35 = v8[3];
        if (v36 >= v35 >> 1)
        {
          sub_503918((v35 > 1), v36 + 1, 1);
          v8 = v59;
        }

        v8[2] = v36 + 1;
        v37 = &v8[2 * v36];
        v37[4] = v33;
        v37[5] = v34;
        v7 = v50;
        v13 = 1 << *(v50 + 32);
        if (v10 >= v13)
        {
          goto LABEL_27;
        }

        v9 = v49;
        v38 = *(v49 + 8 * v14);
        if ((v38 & v57) == 0)
        {
          goto LABEL_28;
        }

        LODWORD(v12) = v48;
        if (v48 != *(v50 + 36))
        {
          goto LABEL_29;
        }

        v39 = v38 & (-2 << (v10 & 0x3F));
        if (v39)
        {
          v13 = __clz(__rbit64(v39)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v40 = v14 << 6;
          v41 = v14 + 1;
          v42 = (v46 + 8 * v14);
          while (v41 < (v13 + 63) >> 6)
          {
            v44 = *v42++;
            v43 = v44;
            v40 += 64;
            ++v41;
            if (v44)
            {
              sub_E1798(v10, v48, 0);
              v13 = __clz(__rbit64(v43)) + v40;
              goto LABEL_5;
            }
          }

          sub_E1798(v10, v48, 0);
        }

LABEL_5:
        v11 = v56 + 1;
        v10 = v13;
        if (v56 + 1 == v47)
        {

          return;
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
    }
  }
}

void sub_6AAF08(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v36 = a3;
  v51 = a1;
  v46 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  __chkstk_darwin();
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v45 = &v34 - v7;
  v50 = sub_AB3470();
  v8 = *(v50 - 8);
  __chkstk_darwin();
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12818, &qword_B20E80);
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
    sub_52B3F0(v28 + *(v46 + 72) * v25, v45);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12820, &qword_B20E88);
    v31 = *(v30 + 48);
    v11 = v41;
    (*(v27 + 32))();
    sub_52B328(v29, &v11[v31]);
    (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
    a2 = v47;
    v6 = v42;
    v13 = v40;
    v19 = v37;
LABEL_17:
    sub_6AC6C0(v11, v13);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12820, &qword_B20E88);
    if ((*(*(v32 - 8) + 48))(v13, 1, v32) == 1)
    {

      return;
    }

    sub_52B328(&v13[*(v32 + 48)], v6);
    if (*v6 == v51 && v6[1] == a2 || (sub_ABB3C0() & 1) != 0)
    {
      v6[2](v51, a2, v36);
    }

    sub_6AC730(v6);
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
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12820, &qword_B20E88);
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

double sub_6AB3DC(id a1, uint64_t a2, uint64_t a3)
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

  return sub_53EF78(v9, v10, v11);
}

uint64_t sub_6AB474()
{
  *(v1 + 32) = v0;
  v2 = sub_6AC920();
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = sub_6AB560;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, v0, v2, 0xD000000000000017, 0x8000000000B70110, sub_6ABA48, 0, &type metadata for PushNotificationObserver.PushConfiguration);
}

uint64_t sub_6AB560()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_6AB670, v1, 0);
}

uint64_t sub_6AB670()
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
      sub_AB92A0();
      sub_58B7D4();

      v5 = sub_ABA150();
      v6 = objc_allocWithZone(APSConnection);
      v7 = sub_AB9260();
      v8 = sub_AB9260();

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

  sub_6AB930(v11, v12, v13);
  sub_53EF78(v11, v12, v13);
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
    v17 = sub_ABB3C0();

    if (v17)
    {
      goto LABEL_25;
    }

LABEL_23:
    v16.n128_f64[0] = sub_6AB3DC(v9, v3, v2);
    goto LABEL_26;
  }

LABEL_25:
  v16.n128_f64[0] = sub_53EF78(v9, v3, v2);
LABEL_26:
  v18 = v0[1];

  return v18(v16);
}

uint64_t type metadata accessor for PushNotificationObserver.RegisteredHandler(uint64_t a1)
{
  result = qword_E12750;
  if (!qword_E12750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_6AB930(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
  }

  return result;
}

uint64_t sub_6AB974(uint64_t a1)
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
  v10[1] = sub_17CF8;

  return sub_6AA7F0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_6ABA48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12838, &qword_B20EA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v21 - v6;
  if (qword_E0CD28 != -1)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103B0, &qword_B13CD0);
  UnfairLock.locked<A>(_:)(sub_4FD6B0);
  v13 = v22;
  if (v22)
  {
    sub_6ABDA8(v22);
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
    v17[2] = sub_6ACA08;
    v17[3] = v11;
    v17[4] = v16;
    v17[5] = v15;
    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    *(v15 + 24) = sub_5DE660;
    *(v15 + 32) = v17;

    sub_17654(v18, v19);

    __chkstk_darwin();
    v21[-2] = v8;
    v21[-1] = v15;
    UnfairLock.locked<A>(_:)(sub_5DE66C);
    sub_5E5FD8(0);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_6ABDA8(void *a1)
{
  v1 = [a1 dictionaryForBagKey:ICURLBagKeyPushNotifications];
  if (!v1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_AB8FF0();

  sub_ABAD10();
  if (!*(v3 + 16) || (v4 = sub_2EC004(&v10), (v5 & 1) == 0))
  {

    sub_8085C(&v10);
    goto LABEL_8;
  }

  sub_808B0(*(v3 + 56) + 32 * v4, v12);
  sub_8085C(&v10);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v10 = sub_AB92A0();
    v11 = v8;
    goto LABEL_10;
  }

  v6 = objc_opt_self();
  v7 = sub_AB9260();
  LODWORD(v6) = [v6 isValidEnvironment:v7];

  if (!v6)
  {

    goto LABEL_8;
  }

  v10 = 0x6D6E6F7269766E65;
  v11 = 0xEB00000000746E65;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12838, &qword_B20EA8);
  return sub_AB98D0();
}

uint64_t PushNotificationObserver.deinit()
{

  sub_53EF78(*(v0 + 120), *(v0 + 128), *(v0 + 136));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PushNotificationObserver.__deallocating_deinit()
{

  sub_53EF78(*(v0 + 120), *(v0 + 128), *(v0 + 136));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_6AC034(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_AB3470();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_6AC0F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_AB3470();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_6AC198(uint64_t a1)
{
  result = sub_50EECC();
  if (v2 <= 0x3F)
  {
    result = sub_AB3470();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_6AC22C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_6AC29C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_6AC3DC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_6AC5FC(uint64_t a1, unsigned int a2)
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

uint64_t sub_6AC64C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_6AC6C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12818, &qword_B20E80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6AC730(uint64_t a1)
{
  v2 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_17()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_6AC7DC(uint64_t a1)
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
  v10[1] = sub_17BD0;

  return sub_6AA7F0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_6AC8B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12820, &qword_B20E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_6AC920()
{
  result = qword_E12828;
  if (!qword_E12828)
  {
    type metadata accessor for PushNotificationObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E12828);
  }

  return result;
}

uint64_t sub_6AC974()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12838, &qword_B20EA8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_6ACA08(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12838, &qword_B20EA8);

  return sub_6ABDA8(a1);
}

uint64_t sub_6ACA84()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_6ACABC()
{

  return swift_deallocObject();
}

double Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v66 = a5;
  v67 = a6;
  v72 = a4;
  v64 = a9;
  v65 = a3;
  v69 = a2;
  v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
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
  sub_6ADE1C(a7, a9);
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
  sub_15F84(v72, v70, &qword_E0EAA0, &unk_B182A0);
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
  sub_17704(v65, v35 + v33);
  sub_36B0C(v70, v35 + ((v33 + v34 + 96) & ~v34), &qword_E0EAA0, &unk_B182A0);
  v38 = v63;
  sub_36B0C(v72, v63, &qword_E0EAA0, &unk_B182A0);
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
  sub_36B0C(v38, &v42[v40], &qword_E0EAA0, &unk_B182A0);
  v37(&v42[v41], v39, a7);
  v45 = type metadata accessor for Actions.Pin.Context(0);
  v46 = v64;
  v47 = (v64 + v45[5]);
  v48 = v61;
  *v47 = sub_6AF44C;
  v47[1] = v48;
  v49 = (v46 + v45[6]);
  *v49 = &unk_B20EB8;
  v49[1] = v35;
  v50 = (v46 + v45[7]);
  *v50 = &unk_B20EC8;
  v50[1] = v42;

  return result;
}

int *static Actions.Pin.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_6B58FC(a1, a2, type metadata accessor for Actions.Pin.Context);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB8, &qword_B18300);
  *(a2 + result[9]) = 7;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_6AD460;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_B20ED0;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_B20ED8;
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
  sub_6ADE1C(v20, v21);
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
  sub_17704(v50, &v26[(v22 + v15 + 7) & 0xFFFFFFFFFFFFFFF8]);
  v29 = v49;
  v28(v49, v56, a7);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v31 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v32 = (*(v30 + 64) + v47 + v31) & ~v47;
  v33 = swift_allocObject();
  *(v33 + 2) = a7;
  *(v33 + 3) = a8;
  v34 = v54;
  *(v33 + 4) = v53;
  *(v33 + 5) = v34;
  sub_36B0C(v55, &v33[v31], &qword_E0EAA0, &unk_B182A0);
  v28(&v33[v32], v29, a7);
  v35 = type metadata accessor for Actions.Unpin.Context(0);
  v37 = v51;
  v36 = v52;
  v38 = (v52 + v35[5]);
  *v38 = sub_6B3FC0;
  v38[1] = v37;
  v39 = (v36 + v35[6]);
  *v39 = &unk_B20EE8;
  v39[1] = v26;
  v40 = (v36 + v35[7]);
  *v40 = &unk_B20EF8;
  v40[1] = v33;

  return result;
}

int *static Actions.Unpin.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_6B58FC(a1, a2, type metadata accessor for Actions.Unpin.Context);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB0, &qword_B1F3F0);
  *(a2 + result[9]) = 8;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_6AD6B0;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_B20F00;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_B20F08;
  v6[1] = 0;
  return result;
}

uint64_t sub_6AD498()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Pin.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_54A91C;

  return v5();
}

uint64_t sub_6AD5B4()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Pin.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_54A91C;

  return v5();
}

uint64_t sub_6AD728()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Unpin.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_54A91C;

  return v5();
}

uint64_t sub_6AD844()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Unpin.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_54A91C;

  return v5();
}

int *static Actions.UpdatePinAction.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB4440();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Actions.UpdatePinAction.Context(0) - 8;
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6B58FC(a1, v10, type metadata accessor for Actions.UpdatePinAction.Context);
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
  sub_6BA154(v10, a2, type metadata accessor for Actions.UpdatePinAction.Context);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12840, &qword_B20F20);
  *(a2 + result[9]) = v12;
  *(a2 + result[11]) = 0x4014000000000000;
  v14 = (a2 + result[10]);
  *v14 = sub_6ADBA4;
  v14[1] = 0;
  v15 = (a2 + result[12]);
  *v15 = &unk_B20F10;
  v15[1] = 0;
  v16 = (a2 + result[13]);
  *v16 = &unk_B20F18;
  v16[1] = 0;
  return result;
}

uint64_t sub_6ADC00()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.UpdatePinAction.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_54A180;

  return v5();
}

uint64_t sub_6ADD1C()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.UpdatePinAction.Context(0) + 32));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_54A91C;

  return v5();
}

uint64_t sub_6ADE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v89 = sub_AB4460();
  v87 = *(v89 - 8);
  __chkstk_darwin();
  v86 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v86 - v4;
  v99 = sub_AB3F20();
  v92 = *(v99 - 8);
  __chkstk_darwin();
  v90 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v86 - v6;
  __chkstk_darwin();
  v93 = &v86 - v7;
  v96 = sub_AB8D50();
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_AB8DE0();
  v98 = *(v104 - 8);
  __chkstk_darwin();
  v97 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v86 - v10;
  v106 = sub_AB8860();
  v103 = *(v106 - 8);
  __chkstk_darwin();
  v101 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v86 - v12;
  __chkstk_darwin();
  v105 = &v86 - v13;
  v110 = sub_AB86C0();
  v107 = *(v110 - 8);
  __chkstk_darwin();
  v108 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_AB8E20();
  v109 = *(v111 - 8);
  __chkstk_darwin();
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_AB8030();
  v112 = *(v17 - 8);
  v113 = v17;
  __chkstk_darwin();
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_AB88F0();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_AB8770();
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
    v35 = sub_AB4410();
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
    v40 = sub_AB4410();
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
      v72 = sub_AB4410();
      v73 = *(v72 - 8);
      (*(v73 + 104))(v32, v71, v72);
      (*(v73 + 56))(v32, 0, 1, v72);
      goto LABEL_30;
    }

    if (v52 != enum case for Track.musicVideo(_:))
    {
      v74 = sub_AB4410();
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
    sub_AB8D60();
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
        v84 = sub_AB4410();
        (*(*(v84 - 8) + 56))(v32, 1, 1, v84);
        (*(v56 + 8))(v55, v57);
        goto LABEL_30;
      }
    }

    (*(v56 + 8))(v55, v57);
    v59 = sub_AB4410();
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
      v69 = sub_AB4410();
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
      v82 = sub_AB4410();
      (*(*(v82 - 8) + 56))(v32, 1, 1, v82);
    }

    else
    {
      v85 = sub_AB4410();
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
    sub_AB4420();
    (*(v78 + 8))(v79, v77);
    v80 = sub_AB4410();
    (*(*(v80 - 8) + 56))(v32, 0, 1, v80);
  }

  else
  {
    v83 = sub_AB4410();
    (*(*(v83 - 8) + 56))(v32, 1, 1, v83);
  }

  return (*(v116 + 8))(v30, a1);
}

uint64_t sub_6AEFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v35 = a2;
  v32 = sub_AB84E0();
  v34 = *(v32 - 8);
  __chkstk_darwin();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12AB0, &qword_B20FF0);
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin();
  v10 = &v28 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC98, &qword_B187E0);
  __chkstk_darwin();
  v12 = &v28 - v11;
  v13 = *(a3 - 8);
  __chkstk_darwin();
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB8770();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin();
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v13 + 16);
  v33 = a1;
  v21(v15, a1, a3, v18);
  v22 = swift_dynamicCast();
  v23 = *(v17 + 56);
  if ((v22 & 1) == 0)
  {
    v23(v12, 1, 1, v16);
    sub_12E1C(v12, &qword_E0EC98, &qword_B187E0);
    goto LABEL_5;
  }

  v23(v12, 0, 1, v16);
  (*(v17 + 32))(v20, v12, v16);
  v24 = Album.childrenAddStatus(_:)(v35);
  (*(v17 + 8))(v20, v16);
  if (v24 != 1)
  {
LABEL_5:
    sub_AB4010();
    v26 = v32;
    sub_AB82C0();
    (*(v34 + 8))(v7, v26);
    v25 = sub_6AF4B4();
    (*(v29 + 8))(v10, v30);
    return v25;
  }

  return 0x206C616974726150;
}

uint64_t sub_6AF3B8()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_6AF4B4()
{
  v1 = sub_AB84D0();
  v25 = *(v1 - 8);
  __chkstk_darwin();
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v22 - v3;
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12AB0, &qword_B20FF0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v23 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v22 - v11;
  v13 = *(v8 + 16);
  v24 = v0;
  v13(&v22 - v11, v0, v7, v10);
  v14 = (*(v8 + 88))(v12, v7);
  if (v14 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v14 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v27[0] = 0;
      *(&v27[0] + 1) = 0xE000000000000000;
      sub_ABAD90(27);

      *&v27[0] = 0xD000000000000019;
      *(&v27[0] + 1) = 0x8000000000B6B4A0;
      (v13)(v23, v24, v7);
      v28._countAndFlagsBits = sub_AB9350();
      sub_AB94A0(v28);

      v19 = *&v27[0];
      (*(v8 + 8))(v12, v7);
      return v19;
    }

    return 0;
  }

  (*(v8 + 96))(v12, v7);
  v15 = v25;
  (*(v25 + 32))(v6, v12, v1);
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
        if (qword_E0CC60 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_AB5510(v26);

        v27[4] = v26[4];
        v27[5] = v26[5];
        v27[6] = v26[6];
        v27[7] = v26[7];
        v27[0] = v26[0];
        v27[1] = v26[1];
        v27[2] = v26[2];
        v27[3] = v26[3];
        sub_70C54(v27);
        if ((WORD4(v27[0]) & 0x100) != 0)
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
          *&v27[0] = 0;
          *(&v27[0] + 1) = 0xE000000000000000;
          sub_ABAD90(17);

          *&v27[0] = 0x206E776F6E6B6E55;
          *(&v27[0] + 1) = 0xEF206E6F73616572;
          v16(v22, v18, v1);
          v29._countAndFlagsBits = sub_AB9350();
          sub_AB94A0(v29);

          v19 = *&v27[0];
          v21 = *(v15 + 8);
          v21(v18, v1);
          v21(v4, v1);
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

uint64_t sub_6AFBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[68] = a6;
  v6[67] = a5;
  v6[66] = a4;
  v6[65] = a3;
  v6[63] = a1;
  v6[64] = a2;
  v8 = sub_AB8110();
  v6[69] = v8;
  v6[70] = *(v8 - 8);
  v6[71] = swift_task_alloc();
  v9 = sub_AB3470();
  v6[72] = v9;
  v6[73] = *(v9 - 8);
  v6[74] = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v6[75] = v10;
  v6[76] = *(v10 + 64);
  v6[77] = swift_task_alloc();
  sub_AB35C0();
  v6[78] = swift_task_alloc();
  v11 = sub_AB9250();
  v6[79] = v11;
  v6[80] = *(v11 - 8);
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  sub_AB9230();
  v6[83] = swift_task_alloc();
  v12 = sub_AB84D0();
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
  v14 = sub_AB4440();
  v6[94] = v14;
  v6[95] = *(v14 - 8);
  v6[96] = swift_task_alloc();
  v15 = sub_AB84E0();
  v6[97] = v15;
  v6[98] = *(v15 - 8);
  v6[99] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12AB0, &qword_B20FF0);
  v6[100] = v16;
  v6[101] = *(v16 - 8);
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();

  return _swift_task_switch(sub_6B0074, 0, 0);
}

uint64_t sub_6B0074(uint64_t a1)
{
  v2 = v1[103];
  v3 = v1[101];
  v35 = v1[100];
  v36 = v1[102];
  v4 = v1[99];
  v5 = v1[98];
  v6 = v1[97];
  sub_AB4010();
  sub_AB82C0();
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
      v1[118] = sub_AB9940();
      v1[119] = sub_AB9930();
      v14 = sub_AB98B0();
      v16 = v15;
      v17 = sub_6B0FF0;
      v18 = v14;
      v19 = v16;
LABEL_10:

      return _swift_task_switch(v17, v18, v19);
    }

    if (v13 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      v1[111] = sub_AB9940();
      v1[112] = sub_AB9930();
      v28 = sub_AB98B0();
      v19 = v29;
      v1[113] = v28;
      v1[114] = v29;
      v17 = sub_6B0B90;
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
  v22 = sub_AB4440();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = swift_task_alloc();
  v1[104] = v23;
  *v23 = v1;
  v23[1] = sub_6B0568;
  v24 = v1[96];
  v25 = v1[68];
  v26 = v1[67];
  v27 = v1[64];

  return MusicLibrary.pin<A>(_:defaultAction:)(v27, v24, v26, v25);
}

uint64_t sub_6B0568()
{
  v2 = *(*v1 + 768);
  v3 = *(*v1 + 760);
  v4 = *(*v1 + 752);
  *(*v1 + 840) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_6B1830;
  }

  else
  {
    v5 = sub_6B06D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_6B06D8()
{
  swift_storeEnumTagMultiPayload();
  *(v0 + 848) = sub_AB9940();
  *(v0 + 856) = sub_AB9930();
  v2 = sub_AB98B0();

  return _swift_task_switch(sub_6B0780, v2, v1);
}

uint64_t sub_6B0780()
{
  v1 = *(v0 + 744);

  sub_662620(v1, 0);
  sub_5B0254(v1, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_6B0818, 0, 0);
}

uint64_t sub_6B0818()
{
  (*(*(v0 + 704) + 16))(*(v0 + 728), *(v0 + 512), *(v0 + 536));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E368, &unk_B17540);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 472);
    v2 = *(v0 + 480);
    __swift_project_boxed_opaque_existential_1((v0 + 448), v1);
    v3 = (*(v2 + 8))(v1, v2);
    v5 = v4;
    if (v4)
    {
      v6 = v3;
      __swift_destroy_boxed_opaque_existential_0((v0 + 448));
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 448));
      v6 = 0;
    }
  }

  else
  {
    *(v0 + 480) = 0;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    sub_12E1C(v0 + 448, &unk_E13D70, &qword_B196D0);
    v6 = 0;
    v5 = 0;
  }

  *(v0 + 872) = v5;
  *(v0 + 864) = v6;
  *(v0 + 880) = sub_AB9930();
  v8 = sub_AB98B0();

  return _swift_task_switch(sub_6B0990, v8, v7);
}

uint64_t sub_6B0990()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[66];

  PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(v2, v1, v3);

  return _swift_task_switch(sub_6B0A28, 0, 0);
}

uint64_t sub_6B0A28()
{
  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_6B0B90(uint64_t a1)
{
  v2 = v1[65];
  v3 = sub_AB9930();
  v1[115] = v3;
  v4 = swift_task_alloc();
  v1[116] = v4;
  *(v4 + 16) = 7;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[117] = v5;
  *v5 = v1;
  v5[1] = sub_6B0CA4;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 122, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000000B6A730, sub_53F124, v4, &type metadata for Bool);
}

uint64_t sub_6B0CA4()
{
  v1 = *v0;

  v2 = *(v1 + 912);
  v3 = *(v1 + 904);

  return _swift_task_switch(sub_6B0E04, v3, v2);
}

uint64_t sub_6B0E04()
{

  return _swift_task_switch(sub_6B0E6C, 0, 0);
}

uint64_t sub_6B0E6C()
{
  (*(v0[85] + 8))(v0[87], v0[84]);
  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_6B0FF0()
{

  sub_5FEC68(0, v0 + 280);

  return _swift_task_switch(sub_6B1064, 0, 0);
}

uint64_t sub_6B1064(uint64_t a1)
{
  *(v1 + 960) = sub_AB9930();
  v3 = sub_AB98B0();

  return _swift_task_switch(sub_6B10F0, v3, v2);
}

uint64_t sub_6B10F0()
{
  v1 = *(v0 + 520);

  v2 = sub_5B4DF0((v0 + 280), 0, 1);
  v3 = v2;
  v4 = *(v0 + 312);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = qword_E0CF08;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, qword_E14920);
    v9 = sub_AB4BA0();
    v10 = sub_AB9F50();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 520);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 384) = sub_71E354;
    *(v0 + 392) = 0;
    *(v0 + 352) = _NSConcreteStackBlock;
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = sub_71F2F4;
    *(v0 + 376) = &block_descriptor_100_1;
    v14 = _Block_copy((v0 + 352));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_15F28(v12, v0 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_17704(v0 + 16, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, sub_5488D0, v16);
    sub_17654(v5, v6);

    sub_111904(v0 + 280);
  }

  else
  {
    sub_71C834(v2, *(v0 + 312), &dword_0 + 1, 0, 0);

    sub_111904(v0 + 280);
  }

  return _swift_task_switch(sub_6BA6B8, 0, 0);
}

uint64_t sub_6B13D8()
{
  v1 = *(v0 + 520);

  v2 = sub_5B4DF0((v0 + 208), 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = qword_E0CF08;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, qword_E14920);
    v9 = sub_AB4BA0();
    v10 = sub_AB9F50();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 520);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 432) = sub_71E354;
    *(v0 + 440) = 0;
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_71F2F4;
    *(v0 + 424) = &block_descriptor_114_3;
    v14 = _Block_copy((v0 + 400));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_15F28(v12, v0 + 112);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_17704(v0 + 112, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, sub_5488D0, v16);
    sub_17654(v5, v6);

    sub_111904(v0 + 208);
    v19 = sub_6B16C0;
  }

  else
  {
    sub_71C834(v2, *(v0 + 240), &dword_0 + 1, 0, 0);

    sub_111904(v0 + 208);
    v19 = sub_6BA6EC;
  }

  return _swift_task_switch(v19, 0, 0);
}

uint64_t sub_6B16C0()
{

  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_6B1830()
{
  *(v0 + 488) = *(v0 + 840);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 560) + 88))(*(v0 + 568), *(v0 + 552)) == enum case for MusicLibrary.InternalError.maximumPinCountReached(_:))
    {
      v1 = *(v0 + 656);
      v2 = *(v0 + 648);
      v3 = *(v0 + 640);
      v4 = *(v0 + 632);

      sub_AB8510();
      sub_AB8500();
      sub_AB8190();

      v5 = sub_AB4150();

      sub_AB9220();
      v52._countAndFlagsBits = 0xD000000000000035;
      v52._object = 0x8000000000B70150;
      sub_AB9210(v52);
      v48 = v5;
      *(v0 + 496) = v5;
      sub_6BA218();
      v53._countAndFlagsBits = sub_ABAB30();
      sub_AB9200(v53);

      v54._countAndFlagsBits = 0xD000000000000018;
      v54._object = 0x8000000000B70190;
      sub_AB9210(v54);
      sub_AB9240();
      v38 = *(v3 + 16);
      v38(v2, v1, v4);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 656);
      v7 = *(v0 + 648);
      v8 = *(v0 + 640);
      v9 = *(v0 + 632);
      v40 = *(v0 + 720);
      v41 = *(v0 + 616);
      v43 = *(v0 + 712);
      v42 = *(v0 + 600);
      v44 = *(v0 + 592);
      v45 = *(v0 + 584);
      v46 = *(v0 + 576);
      v34 = *(v0 + 528);
      v35 = *(v0 + 704);
      v33 = *(v0 + 512);
      v10 = qword_E71B20;
      v49 = *(v0 + 536);
      sub_AB3550();
      v11 = v10;
      v50 = sub_AB9320();
      v32 = v12;
      v13 = *(v8 + 8);
      v13(v6, v9);
      v31 = v13;
      sub_AB91E0();
      v38(v7, v6, v9);
      sub_AB3550();
      v14 = sub_AB9320();
      v36 = v15;
      v37 = v14;
      v13(v6, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_AF4EC0;
      sub_AB91E0();
      v38(v7, v6, v9);
      sub_AB3550();
      v47 = sub_AB9320();
      v39 = v17;
      v31(v6, v9);
      (*(v35 + 16))(v40, v33, v49);
      sub_15F84(v34, v41, &qword_E0EAA0, &unk_B182A0);
      v18 = (*(v35 + 80) + 56) & ~*(v35 + 80);
      v19 = (v43 + *(v42 + 80) + v18) & ~*(v42 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v49;
      *(v20 + 32) = v50;
      *(v20 + 40) = v32;
      *(v20 + 48) = v48;
      (*(v35 + 32))(v20 + v18, v40, v49);
      sub_36B0C(v41, v20 + v19, &qword_E0EAA0, &unk_B182A0);

      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v21 = sub_AB3440();
      v23 = v22;
      (*(v45 + 8))(v44, v46);
      *(v16 + 32) = v21;
      *(v16 + 40) = v23;
      *(v16 + 48) = v47;
      *(v16 + 56) = v39;
      *(v16 + 64) = 2;
      *(v16 + 72) = &unk_B21000;
      *(v16 + 80) = v20;
      *(v0 + 208) = v37;
      *(v0 + 216) = v36;
      *(v0 + 224) = v50;
      *(v0 + 232) = v32;
      *(v0 + 240) = 0;
      *(v0 + 248) = 0;
      *(v0 + 256) = 1;
      *(v0 + 264) = v16;
      *(v0 + 272) = 0;
      sub_AB9940();
      *(v0 + 968) = sub_AB9930();
      v25 = sub_AB98B0();

      return _swift_task_switch(sub_6B13D8, v25, v24);
    }

    (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
  }

  v26 = *(v0 + 824);
  v27 = *(v0 + 808);
  v28 = *(v0 + 800);

  (*(v27 + 8))(v26, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_6B1F68()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8) + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v7 = *(v0 + v4 + 48);
  if (v7 != 255)
  {
    sub_17774(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  v8 = (v4 + v5 + 96) & ~v5;
  if (*(v6 + 80))
  {
  }

  v9 = v0 + v8;
  v10 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v10 - 8) + 48))(v0 + v8, 1, v10))
  {
    if (*(v9 + 8) >= 0xDuLL)
    {
    }

    v11 = v9 + *(v10 + 20);
    v12 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 24);
      v14 = sub_AB31C0();
      v15 = *(v14 - 8);
      v19 = v13;
      v16 = v11 + v13;
      v17 = v14;
      if (!(*(v15 + 48))(v16, 1, v14))
      {
        (*(v15 + 8))(v11 + v19, v17);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_6B2288()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = (*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v7 = (v5 + *(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = v0[4];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_17CF8;

  return sub_6AFBF0(v8, v0 + v4, v0 + v5, v0 + v7, v3, v2);
}

void PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  __chkstk_darwin();
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12848, &qword_B20F28);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v41 - v10;
  v44 = objc_opt_self();
  v12 = [v44 standardUserDefaults];
  v13 = sub_61D7A8();
  v14 = sub_4FD6CC();
  v45 = v13;
  v43 = v14;
  NSUserDefaults.subscript.getter(&aBlock);

  if (v49)
  {
    if (swift_dynamicCast() & 1) != 0 && (v52[0])
    {
      return;
    }
  }

  else
  {
    sub_12E1C(&aBlock, &qword_E11F60, &unk_B1BC70);
  }

  sub_AB8510();
  sub_AB8500();
  sub_AB8190();

  sub_AB4160();

  sub_6B5984();
  sub_AB9C60();
  sub_AB9CA0();
  v15 = sub_AB9C90();
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
        sub_15F84(a3, v7, &qword_E0EAA0, &unk_B182A0);
        v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v42;
        *(v20 + 24) = a2;
        sub_36B0C(v7, v20 + v19, &qword_E0EAA0, &unk_B182A0);

        sub_602078(sub_6B9244, v20, v52);

        v21 = sub_5B4DF0(v52, 0, 1);
        v22 = v21;
        v23 = v53;
        v24 = v46;
        v25 = *(v46 + 80);
        if (v25)
        {
          v26 = *(v46 + 88);
          v27 = qword_E0CF08;

          if (v27 != -1)
          {
            swift_once();
          }

          v28 = sub_AB4BC0();
          __swift_project_value_buffer(v28, qword_E14920);
          v29 = sub_AB4BA0();
          v30 = sub_AB9F50();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&dword_0, v29, v30, "Deferring presentation…", v31, 2u);
          }

          v32 = objc_allocWithZone(MSVBlockGuard);
          v50 = sub_71E354;
          v51 = 0;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v48 = sub_71F2F4;
          v49 = &block_descriptor_192;
          v33 = _Block_copy(&aBlock);
          v34 = [v32 initWithTimeout:v33 interruptionHandler:10.0];
          _Block_release(v33);

          sub_15F28(v24, &aBlock);
          v35 = swift_allocObject();
          *(v35 + 16) = v34;
          sub_17704(&aBlock, v35 + 24);
          *(v35 + 120) = v22;
          *(v35 + 128) = v23;
          *(v35 + 129) = 1;
          *(v35 + 136) = 0;
          *(v35 + 144) = 0;
          v36 = v34;
          v37 = v22;
          v25(v24, v37, sub_5487D4, v35);
          sub_17654(v25, v26);
        }

        else
        {
          sub_71C834(v21, v53, &dword_0 + 1, 0, 0);
        }

        sub_111904(v52);
        v38 = [v44 standardUserDefaults];
        v49 = &type metadata for Bool;
        LOBYTE(aBlock) = 1;
        NSUserDefaults.subscript.setter(&aBlock, v39, &_s4KeysON_0, v45, v43, v40);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_6B2A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = a7;
  v8[58] = a8;
  v8[55] = a5;
  v8[56] = a6;
  v8[53] = a3;
  v8[54] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0);
  v8[59] = swift_task_alloc();
  v8[60] = *(a8 - 8);
  v8[61] = swift_task_alloc();

  return _swift_task_switch(sub_6B2B1C, 0, 0);
}

uint64_t sub_6B2B1C()
{
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  sub_ABAD90(79);
  v21._countAndFlagsBits = 0xD000000000000035;
  v21._object = 0x8000000000B70150;
  sub_AB94A0(v21);
  *(v0 + 416) = v5;
  sub_6BA218();
  v22._countAndFlagsBits = sub_ABAB30();
  sub_AB94A0(v22);

  v23._countAndFlagsBits = 0xD000000000000018;
  v23._object = 0x8000000000B70190;
  sub_AB94A0(v23);
  (*(v2 + 16))(v1, v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E368, &unk_B17540);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 400);
    v7 = *(v0 + 408);
    __swift_project_boxed_opaque_existential_1((v0 + 376), v6);
    v8 = (*(v7 + 8))(v6, v7);
    if (v9)
    {
      v10 = v8;
      v11 = v9;
    }

    else
    {
      v11 = 0xEB000000006D6574;
      v10 = 0x497972617262694CLL;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  }

  else
  {
    v11 = 0xEB000000006D6574;
    v10 = 0x497972617262694CLL;
    *(v0 + 408) = 0;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    sub_12E1C(v0 + 376, &unk_E13D70, &qword_B196D0);
  }

  v13 = *(v0 + 424);
  v12 = *(v0 + 432);
  strcpy((v0 + 16), "PinnedContent");
  *(v0 + 30) = -4864;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x8000000000B701B0;
  *(v0 + 56) = v13;
  *(v0 + 64) = v12;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = &off_D1C688;
  *(v0 + 96) = v10;
  *(v0 + 104) = v11;
  *(v0 + 112) = 19279;
  *(v0 + 120) = 0xE200000000000000;
  *(v0 + 128) = 0;
  strcpy((v0 + 136), "PinnedContent");
  *(v0 + 150) = -4864;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xD000000000000014;
  *(v0 + 168) = 0x8000000000B701B0;
  *(v0 + 176) = v13;
  *(v0 + 184) = v12;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  *(v0 + 208) = &off_D1C688;
  *(v0 + 216) = v10;
  *(v0 + 224) = v11;
  *(v0 + 232) = 19279;
  *(v0 + 240) = 0xE200000000000000;
  *(v0 + 248) = 0;

  sub_5C96A8(v0 + 16, v0 + 256);
  sub_5C96E0(v0 + 136);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 472);
  sub_15F84(*(v0 + 456), v14, &qword_E0EAA0, &unk_B182A0);
  v15 = type metadata accessor for Actions.MetricsReportingContext(0);
  v16 = (*(*(v15 - 8) + 48))(v14, 1, v15);
  v17 = *(v0 + 472);
  if (v16 == 1)
  {
    sub_12E1C(*(v0 + 472), &qword_E0EAA0, &unk_B182A0);
  }

  else
  {

    sub_5B0254(v17, type metadata accessor for Actions.MetricsReportingContext);
  }

  _s9MusicCore26MetricsReportingControllerC17recordDialogEvent_11pageContextyAA0cH0V0G0V_SSSgtF_0(v0 + 16);

  sub_5C96E0(v0 + 16);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_6B2EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348, &unk_B17520);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext(0);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_6B3110, 0, 0);
}

uint64_t sub_6B3110()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(7);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_15F84(*(v0 + 88), v4, &qword_E0EAA0, &unk_B182A0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_12E1C(*(v0 + 232), &qword_E0EAA0, &unk_B182A0);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_6BA154(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = sub_AB31C0();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8, &qword_B18DA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_51717C(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_54A8C8(inited + 32);
    sub_AB9940();
    *(v0 + 328) = sub_AB9930();
    v19 = sub_AB98B0();

    return _swift_task_switch(sub_6B341C, v19, v18);
  }
}

uint64_t sub_6B341C()
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

  sub_15F84(v3, v4, &qword_E0DC30, &unk_B15160);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_15F84(v1 + v2[5], v7, &qword_E0E348, &unk_B17520);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 7429;
  sub_36B0C(v4, v6 + v5[7], &qword_E0DC30, &unk_B15160);
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
  sub_15F84(v7, v72, &qword_E0E348, &unk_B17520);
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

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));
    sub_12E1C(v20, &qword_E0E348, &unk_B17520);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));

    sub_5B0254(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348, &unk_B17520);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 160), &qword_E0E348, &unk_B17520);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_5B0254(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348, &unk_B17520);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_12E1C(*(v0 + 152), &qword_E0E348, &unk_B17520);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_15F84(v36 + v14[6], *(v0 + 208), &qword_E0DC30, &unk_B15160);
    sub_5B0254(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_36B0C(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_E0DC30, &unk_B15160);
  sub_15F84(v37, v38, &qword_E0E348, &unk_B17520);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 144), &qword_E0E348, &unk_B17520);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_5B0254(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348, &unk_B17520);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_12E1C(v45, &qword_E0E348, &unk_B17520);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_5B0254(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348, &unk_B17520);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 128), &qword_E0E348, &unk_B17520);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_5B0254(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348, &unk_B17520);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_12E1C(v58, &qword_E0E348, &unk_B17520);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_5B0254(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_6BA154(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
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
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_5B0254(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30, &unk_B15160);

  return _swift_task_switch(sub_5AB8DC, 0, 0);
}

uint64_t sub_6B3BD0()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_17CF8;

  return sub_6B2EF8(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

unint64_t sub_6B3D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_AB8150();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12AA8, &qword_B20FE8);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  sub_AB4030();
  sub_AB82C0();
  (*(v5 + 8))(v7, v4);
  v12 = sub_6B4000();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_6B3F04()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

unint64_t sub_6B4000()
{
  v1 = sub_AB8140();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v22 - v4;
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12AA8, &qword_B20FE8);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v22 - v12;
  v14 = *(v8 + 16);
  v24 = v0;
  v14(&v22 - v12, v0, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v8 + 96))(v13, v7);
    (*(v2 + 32))(v6, v13, v1);
    v16 = *(v2 + 16);
    v17 = v25;
    v16(v25, v6, v1);
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
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_ABAD90(17);

      v26 = 0x206E776F6E6B6E55;
      v27 = 0xEF206E6F73616572;
      v16(v23, v6, v1);
      v29._countAndFlagsBits = sub_AB9350();
      sub_AB94A0(v29);

      v19 = v26;
      v21 = *(v2 + 8);
      v21(v6, v1);
      v21(v25, v1);
    }
  }

  else if (v15 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_ABAD90(27);

    v26 = 0xD000000000000019;
    v27 = 0x8000000000B6B4A0;
    (v14)(v10, v24, v7);
    v28._countAndFlagsBits = sub_AB9350();
    sub_AB94A0(v28);

    v19 = v26;
    (*(v8 + 8))(v13, v7);
  }

  return v19;
}

uint64_t sub_6B4514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = type metadata accessor for Notice.Variant(0);
  v5[4] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[5] = v9;
  *v9 = v5;
  v9[1] = sub_6B4600;

  return MusicLibrary.unpin<A>(_:)(a2, a4, a5);
}

uint64_t sub_6B4600()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_6B474C, 0, 0);
  }
}

uint64_t sub_6B474C()
{
  swift_storeEnumTagMultiPayload();
  sub_AB9940();
  *(v0 + 48) = sub_AB9930();
  v2 = sub_AB98B0();

  return _swift_task_switch(sub_6B47EC, v2, v1);
}

uint64_t sub_6B47EC()
{
  v1 = *(v0 + 32);

  sub_662620(v1, 0);
  sub_5B0254(v1, type metadata accessor for Notice.Variant);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6B4888()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_17774(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_6B4998()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_6B4514(v6, v0 + v4, v0 + v5, v2, v3);
}

uint64_t sub_6B4AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348, &unk_B17520);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext(0);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_6B4CC0, 0, 0);
}

uint64_t sub_6B4CC0()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(8);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_15F84(*(v0 + 88), v4, &qword_E0EAA0, &unk_B182A0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_12E1C(*(v0 + 232), &qword_E0EAA0, &unk_B182A0);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_6BA154(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = sub_AB31C0();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8, &qword_B18DA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_51717C(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_54A8C8(inited + 32);
    sub_AB9940();
    *(v0 + 328) = sub_AB9930();
    v19 = sub_AB98B0();

    return _swift_task_switch(sub_6B4FCC, v19, v18);
  }
}

uint64_t sub_6B4FCC()
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

  sub_15F84(v3, v4, &qword_E0DC30, &unk_B15160);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_15F84(v1 + v2[5], v7, &qword_E0E348, &unk_B17520);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 7685;
  sub_36B0C(v4, v6 + v5[7], &qword_E0DC30, &unk_B15160);
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
  sub_15F84(v7, v72, &qword_E0E348, &unk_B17520);
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

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));
    sub_12E1C(v20, &qword_E0E348, &unk_B17520);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));

    sub_5B0254(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348, &unk_B17520);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 160), &qword_E0E348, &unk_B17520);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_5B0254(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348, &unk_B17520);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_12E1C(*(v0 + 152), &qword_E0E348, &unk_B17520);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_15F84(v36 + v14[6], *(v0 + 208), &qword_E0DC30, &unk_B15160);
    sub_5B0254(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_36B0C(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_E0DC30, &unk_B15160);
  sub_15F84(v37, v38, &qword_E0E348, &unk_B17520);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 144), &qword_E0E348, &unk_B17520);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_5B0254(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348, &unk_B17520);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_12E1C(v45, &qword_E0E348, &unk_B17520);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_5B0254(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348, &unk_B17520);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 128), &qword_E0E348, &unk_B17520);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_5B0254(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348, &unk_B17520);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_12E1C(v58, &qword_E0E348, &unk_B17520);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_5B0254(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_6BA154(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
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
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_5B0254(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30, &unk_B15160);

  return _swift_task_switch(sub_5B02BC, 0, 0);
}

uint64_t sub_6B5784()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_17CF8;

  return sub_6B4AA8(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t sub_6B58FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_6B5984()
{
  result = qword_E12850;
  if (!qword_E12850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E12848, &qword_B20F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E12850);
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
  v9 = sub_AB4440();
  v10 = *(v9 - 8);
  v74 = *(v10 + 64);
  __chkstk_darwin();
  v90 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v77 = &v67 - v12;
  __chkstk_darwin();
  v84 = &v67 - v13;
  v14 = sub_AB4460();
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
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v55 = (v53 + v31 + *(v54 + 80)) & ~*(v54 + 80);
  v56 = (*(v54 + 64) + v75 + v55) & ~v75;
  v57 = swift_allocObject();
  v58 = v81;
  *(v57 + 16) = v80;
  *(v57 + 24) = v58;
  v51((v57 + v53), v90, v93);
  sub_36B0C(v82, v57 + v55, &qword_E0EAA0, &unk_B182A0);
  v52(v57 + v56, v91, v46);
  v59 = v78;
  v60 = updated;
  v61 = (v78 + *(updated + 24));
  v62 = v76;
  *v61 = sub_6B92E0;
  v61[1] = v62;
  v63 = (v59 + *(v60 + 28));
  v64 = v84;
  *v63 = &unk_B20F38;
  v63[1] = v64;
  v65 = (v59 + *(v60 + 32));
  *v65 = &unk_B20F48;
  v65[1] = v57;

  return result;
}

uint64_t sub_6B5F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_AB82A0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12A98, &qword_B20FE0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v13 - v9;
  sub_AB4080();
  sub_AB4460();
  sub_6BA1BC();
  sub_AB82C0();
  (*(v4 + 8))(v6, v3);
  v11 = sub_6B6168();
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_6B6168()
{
  v1 = sub_AB8290();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v26 - v4;
  __chkstk_darwin();
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12A98, &qword_B20FE0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v26 - v12;
  v14 = *(v8 + 16);
  v28 = v0;
  v14(&v26 - v12, v0, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v8 + 96))(v13, v7);
    (*(v2 + 32))(v6, v13, v1);
    v16 = *(v2 + 16);
    v17 = v29;
    v16(v29, v6, v1);
    v18 = (*(v2 + 88))(v17, v1);
    v19 = v1;
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
      v30 = 0;
      v31 = 0xE000000000000000;
      v23 = v19;
      sub_ABAD90(17);

      v30 = 0x206E776F6E6B6E55;
      v31 = 0xEF206E6F73616572;
      v16(v27, v6, v23);
      v33._countAndFlagsBits = sub_AB9350();
      sub_AB94A0(v33);

      v24 = v30;
      v25 = *(v20 + 8);
      v25(v6, v23);
      v25(v29, v23);
      return v24;
    }
  }

  else if (v15 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_ABAD90(27);

    v30 = 0xD000000000000019;
    v31 = 0x8000000000B6B4A0;
    (v14)(v10, v28, v7);
    v32._countAndFlagsBits = sub_AB9350();
    sub_AB94A0(v32);

    v22 = v30;
    (*(v8 + 8))(v13, v7);
    return v22;
  }
}

uint64_t sub_6B66BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_17BD0;

  return MusicLibrary.updatePin(_:defaultAction:)(a2, a3);
}

uint64_t sub_6B676C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348, &unk_B17520);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext(0);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v7 = sub_AB4440();
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return _swift_task_switch(sub_6B69EC, 0, 0);
}

uint64_t sub_6B69EC()
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
  sub_15F84(*(v0 + 96), v9, &qword_E0EAA0, &unk_B182A0);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_12E1C(*(v0 + 224), &qword_E0EAA0, &unk_B182A0);

    v10 = *(v0 + 8);

    return v10();
  }

  v13 = *(v0 + 264);
  v12 = *(v0 + 272);
  v14 = *(v0 + 256);
  v15 = *(v0 + 88);
  sub_6BA154(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
  *(v0 + 288) = sub_516B10();
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
  v20 = sub_AB31C0();
  *(v0 + 304) = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  *(v0 + 312) = v22;
  *(v0 + 320) = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v22(v19, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8, &qword_B18DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_51621C();
  *(inited + 40) = v24;
  *(inited + 48) = 0;
  *(v0 + 328) = sub_51717C(inited);
  *(v0 + 336) = v25;
  *(v0 + 344) = v26;
  *(v0 + 360) = v27;
  swift_setDeallocating();
  sub_54A8C8(inited + 32);
  sub_AB9940();
  *(v0 + 352) = sub_AB9930();
  v29 = sub_AB98B0();

  return _swift_task_switch(sub_6B6E40, v29, v28);
}

uint64_t sub_6B6E40()
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

  sub_15F84(v3, v4, &qword_E0DC30, &unk_B15160);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_15F84(v1 + v2[5], v7, &qword_E0E348, &unk_B17520);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = v78;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v81;
  sub_36B0C(v4, v6 + v5[7], &qword_E0DC30, &unk_B15160);
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
  sub_15F84(v7, v75, &qword_E0E348, &unk_B17520);
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

    sub_512C64(v82, v80);

    sub_513BF8(v21, v19, v20, v18, SBYTE1(v18));
    sub_12E1C(v22, &qword_E0E348, &unk_B17520);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_512C64(v82, v80);

    sub_513BF8(v21, v19, v20, v18, SBYTE1(v18));

    sub_5B0254(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_15F84(v25, v26, &qword_E0E348, &unk_B17520);
  v28 = v16(v26, 1, v15);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_12E1C(*(v0 + 152), &qword_E0E348, &unk_B17520);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_5B0254(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_15F84(v32, v33, &qword_E0E348, &unk_B17520);
  if (v16(v33, 1, v15) == 1)
  {
    v35 = v16;
    v36 = *(v0 + 312);
    v37 = *(v0 + 304);
    v38 = *(v0 + 200);
    sub_12E1C(*(v0 + 144), &qword_E0E348, &unk_B17520);
    v36(v38, 1, 1, v37);
    v16 = v35;
  }

  else
  {
    v39 = *(v0 + 144);
    sub_15F84(v39 + v15[6], *(v0 + 200), &qword_E0DC30, &unk_B15160);
    sub_5B0254(v39, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 136);
  sub_36B0C(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_E0DC30, &unk_B15160);
  sub_15F84(v40, v41, &qword_E0E348, &unk_B17520);
  v42 = v16(v41, 1, v15);
  v43 = *(v0 + 136);
  if (v42 == 1)
  {
    sub_12E1C(*(v0 + 136), &qword_E0E348, &unk_B17520);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    sub_5B0254(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 168);
  v46 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v44;
  sub_15F84(v45, v46, &qword_E0E348, &unk_B17520);
  v47 = v16(v46, 1, v15);
  v48 = *(v0 + 128);
  if (v47 == 1)
  {
    sub_12E1C(v48, &qword_E0E348, &unk_B17520);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    sub_5B0254(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 168);
  v51 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v49;
  sub_15F84(v50, v51, &qword_E0E348, &unk_B17520);
  v52 = v16(v51, 1, v15);
  v53 = *(v0 + 120);
  if (v52 == 1)
  {
    sub_12E1C(*(v0 + 120), &qword_E0E348, &unk_B17520);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    sub_5B0254(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 168);
  v58 = *(v0 + 112);
  v59 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v59 = v54;
  v59[1] = v55;
  sub_36B0C(v57, v58, &qword_E0E348, &unk_B17520);
  v60 = v16(v58, 1, v15);
  v61 = *(v0 + 112);
  if (v60 == 1)
  {
    sub_12E1C(v61, &qword_E0E348, &unk_B17520);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    sub_5B0254(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 184);
  v64 = *(v0 + 192);
  v65 = *(v0 + 176);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v84;
  sub_6BA154(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
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
  sub_53EF4C(v68, v67, v66, v73, SBYTE1(v73));
  sub_5B0254(v72, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v71, &qword_E0DC30, &unk_B15160);

  return _swift_task_switch(sub_6B7624, 0, 0);
}

uint64_t sub_6B7624()
{
  sub_5B0254(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Actions.Pin.Context.menuItemTitle.getter()
{
  v1 = v0;
  sub_AB35C0();
  __chkstk_darwin();
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v19[-v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12858, &qword_B20F50);
  __chkstk_darwin();
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v19[-v10];
  sub_15F84(v1, &v19[-v10], &qword_E12858, &qword_B20F50);
  v12 = sub_AB4410();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_2;
  }

  sub_15F84(v11, v9, &qword_E12858, &qword_B20F50);
  v16 = (*(v13 + 88))(v9, v12);
  if (v16 != enum case for MusicPin.Item.album(_:) && v16 != enum case for MusicPin.Item.artist(_:) && v16 != enum case for MusicPin.Item.musicVideo(_:) && v16 != enum case for MusicPin.Item.playlist(_:) && v16 != enum case for MusicPin.Item.song(_:))
  {
    (*(v13 + 8))(v9, v12);
LABEL_2:
    sub_AB91E0();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v14 = qword_E71B20;
    sub_AB3550();
    v15 = sub_AB9320();
    (*(v3 + 8))(v7, v2);
    goto LABEL_13;
  }

  sub_AB91E0();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v17 = qword_E71B20;
  sub_AB3550();
  v15 = sub_AB9320();
  (*(v3 + 8))(v7, v2);
  (*(v13 + 8))(v9, v12);
LABEL_13:
  sub_12E1C(v11, &qword_E12858, &qword_B20F50);
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
  return sub_53EAA8;
}

uint64_t (*sub_6B7D1C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 7235952;
  *(v0 + 24) = 0xE300000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 7235952;
  *(v1 + 24) = 0xE300000000000000;
  return sub_53F19C;
}

uint64_t Actions.Unpin.Context.menuItemTitle.getter()
{
  v1 = v0;
  sub_AB35C0();
  __chkstk_darwin();
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v19[-v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12858, &qword_B20F50);
  __chkstk_darwin();
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v19[-v10];
  sub_15F84(v1, &v19[-v10], &qword_E12858, &qword_B20F50);
  v12 = sub_AB4410();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_2;
  }

  sub_15F84(v11, v9, &qword_E12858, &qword_B20F50);
  v16 = (*(v13 + 88))(v9, v12);
  if (v16 != enum case for MusicPin.Item.album(_:) && v16 != enum case for MusicPin.Item.artist(_:) && v16 != enum case for MusicPin.Item.musicVideo(_:) && v16 != enum case for MusicPin.Item.playlist(_:) && v16 != enum case for MusicPin.Item.song(_:))
  {
    (*(v13 + 8))(v9, v12);
LABEL_2:
    sub_AB91E0();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v14 = qword_E71B20;
    sub_AB3550();
    v15 = sub_AB9320();
    (*(v3 + 8))(v7, v2);
    goto LABEL_10;
  }

  sub_AB91E0();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v17 = qword_E71B20;
  sub_AB3550();
  v15 = sub_AB9320();
  (*(v3 + 8))(v7, v2);
  (*(v13 + 8))(v9, v12);
LABEL_10:
  sub_12E1C(v11, &qword_E12858, &qword_B20F50);
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
  return sub_53F19C;
}

uint64_t (*sub_6B8370())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x73616C732E6E6970;
  *(v0 + 24) = 0xE900000000000068;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x73616C732E6E6970;
  *(v1 + 24) = 0xE900000000000068;
  return sub_53F19C;
}

uint64_t Actions.UpdatePinAction.Context.menuItemTitle.getter()
{
  v0 = sub_AB4410();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Actions.UpdatePinAction.Context(0);
  sub_AB4420();
  v4 = MusicPin.Action.localizedTitle(for:)(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t Actions.UpdatePinAction.Context.menuItemState.getter()
{
  v0 = sub_AB4440();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB4450();
  type metadata accessor for Actions.UpdatePinAction.Context(0);
  v4 = sub_AB4430();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_6B85E0()
{
  v0 = sub_AB4410();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB4420();
  v4 = MusicPin.Action.localizedTitle(for:)(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_6B86CC(uint64_t a1)
{
  v1 = sub_AB4440();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB4450();
  v5 = sub_AB4430();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

uint64_t MusicPin.genericMusicItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB4410();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB4420();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for MusicPin.Item.album(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = sub_AB8770();
    (*(*(v7 - 8) + 32))(a1, v5, v7);
    v8 = &enum case for GenericMusicItem.album(_:);
  }

  else if (v6 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v3 + 96))(v5, v2);
    v9 = sub_AB88F0();
    (*(*(v9 - 8) + 32))(a1, v5, v9);
    v8 = &enum case for GenericMusicItem.artist(_:);
  }

  else if (v6 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v3 + 96))(v5, v2);
    v10 = sub_AB8030();
    (*(*(v10 - 8) + 32))(a1, v5, v10);
    v8 = &enum case for GenericMusicItem.musicVideo(_:);
  }

  else if (v6 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v3 + 96))(v5, v2);
    v11 = sub_AB8E20();
    (*(*(v11 - 8) + 32))(a1, v5, v11);
    v8 = &enum case for GenericMusicItem.playlist(_:);
  }

  else
  {
    if (v6 != enum case for MusicPin.Item.song(_:))
    {
      v17 = sub_AB3F80();
      (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
      return (*(v3 + 8))(v5, v2);
    }

    (*(v3 + 96))(v5, v2);
    v12 = sub_AB86C0();
    (*(*(v12 - 8) + 32))(a1, v5, v12);
    v8 = &enum case for GenericMusicItem.song(_:);
  }

  v13 = *v8;
  v14 = sub_AB3F80();
  v15 = *(v14 - 8);
  (*(v15 + 104))(a1, v13, v14);
  return (*(v15 + 56))(a1, 0, 1, v14);
}

uint64_t sub_6B8B94(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v25 = a4;
  v23 = a2;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0);
  __chkstk_darwin();
  v6 = &v22 - v5;
  sub_AB35C0();
  __chkstk_darwin();
  v7 = sub_AB9250();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v22 - v11;
  sub_AB91E0();
  (*(v8 + 16))(v10, v12, v7);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v13 = qword_E71B20;
  sub_AB3550();
  v14 = sub_AB9320();
  v16 = v15;
  (*(v8 + 8))(v12, v7);
  strcpy(v41, "DownloadPins");
  HIBYTE(v41[6]) = 0;
  v41[7] = -5120;
  v42 = 1;
  v43 = 0xD000000000000016;
  v44 = 0x8000000000B6D7B0;
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
  v48 = 0x8000000000B6D7D0;
  v49 = &off_D1C6B8;
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
  v30 = 0x8000000000B6D7B0;
  v31 = v14;
  v32 = v16;
  v33 = 0xD00000000000003CLL;
  v34 = 0x8000000000B6D7D0;
  v35 = &off_D1C6B8;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = 0xE700000000000000;
  v40 = v54;

  sub_5C96A8(v41, &v26);
  sub_5C96E0(v27);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  sub_15F84(v25, v6, &qword_E0EAA0, &unk_B182A0);
  v20 = type metadata accessor for Actions.MetricsReportingContext(0);
  if ((*(*(v20 - 8) + 48))(v6, 1, v20) == 1)
  {
    sub_12E1C(v6, &qword_E0EAA0, &unk_B182A0);
  }

  else
  {

    sub_5B0254(v6, type metadata accessor for Actions.MetricsReportingContext);
  }

  _s9MusicCore26MetricsReportingControllerC17recordDialogEvent_11pageContextyAA0cH0V0G0V_SSSgtF_0(v41);

  return sub_5C96E0(v41);
}

uint64_t sub_6B8FF4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = v0 + v2;
  v4 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 8) >= 0xDuLL)
    {
    }

    v5 = v3 + *(v4 + 20);
    v6 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = sub_AB31C0();
      v9 = *(v8 - 8);
      v13 = v7;
      v10 = v5 + v7;
      v11 = v8;
      if (!(*(v9 + 48))(v10, 1, v8))
      {
        (*(v9 + 8))(v5 + v13, v11);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_6B9244(int a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_6B8B94(a1, v4, v5, v6);
}

double block_copy_helper_192(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_6B92E0()
{
  v1 = *(sub_AB4460() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_AB4440() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_6B5F9C(v5, v0 + v2, v6);
}

uint64_t objectdestroy_27Tm()
{
  v1 = sub_AB4460();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_AB4440();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_6B9500()
{
  v2 = *(sub_AB4460() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_AB4440() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_17BD0;

  return sub_6B66BC(v7, v0 + v3, v0 + v6);
}

uint64_t sub_6B9634()
{
  v1 = sub_AB4440();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v20 = *(v5 + 64);
  v7 = sub_AB4460();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  if (*(v0 + 16))
  {
  }

  (*(v2 + 8))(v0 + v3, v1);
  v10 = v0 + v6;
  v11 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v11 - 8) + 48))(v0 + v6, 1, v11))
  {
    v19 = v6;
    if (*(v10 + 8) >= 0xDuLL)
    {
    }

    v12 = v10 + *(v11 + 20);
    v13 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v18 = *(v13 + 24);
      v14 = sub_AB31C0();
      v16 = *(v14 - 8);
      v17 = v14;
      if (!(*(v16 + 48))(v12 + v18, 1))
      {
        (*(v16 + 8))(v12 + v18, v17);
      }
    }

    v6 = v19;
  }

  (*(v8 + 8))(v0 + ((v6 + v20 + v9) & ~v9), v7);

  return swift_deallocObject();
}

uint64_t sub_6B9998()
{
  v2 = *(sub_AB4440() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_AB4460() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_17CF8;

  return sub_6B676C(v10, v11, v0 + v3, v0 + v6, v0 + v9);
}

uint64_t sub_6B9B40()
{

  return swift_deallocObject();
}

void sub_6B9BBC(uint64_t a1)
{
  if (!qword_E12928)
  {
    sub_AB4410();
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_E12928);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12858, &qword_B20F50);
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

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12858, &qword_B20F50);
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

void sub_6B9DD8(uint64_t a1)
{
  sub_6B9BBC(319);
  if (v1 <= 0x3F)
  {
    sub_50EECC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_6B9E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB4460();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_AB4440();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_6B9FA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_AB4460();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_AB4440();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

unint64_t sub_6BA0B0(uint64_t a1)
{
  result = sub_AB4460();
  if (v2 <= 0x3F)
  {
    result = sub_AB4440();
    if (v3 <= 0x3F)
    {
      result = sub_50EECC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_6BA154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_6BA1BC()
{
  result = qword_E12AA0;
  if (!qword_E12AA0)
  {
    sub_AB4460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E12AA0);
  }

  return result;
}

unint64_t sub_6BA218()
{
  result = qword_E12AB8;
  if (!qword_E12AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E12AB8);
  }

  return result;
}

uint64_t sub_6BA26C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v6, 1, v8))
  {
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_AB31C0();
      v16 = *(v12 - 8);
      v17 = v11;
      v13 = v9 + v11;
      v14 = v12;
      if (!(*(v16 + 48))(v13, 1, v12))
      {
        (*(v16 + 8))(v9 + v17, v14);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_6BA52C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = *(*(v5 - 8) + 64);
  v7 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v9 = (v7 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_17BD0;

  return sub_6B2A20(a1, a2, v10, v11, v12, v2 + v7, v2 + v9, v5);
}

id MPCPlaybackEngine.init(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_AB9260();
  v8 = [v6 initWithPlayerID:v7];

  v9 = v8;
  sub_6BDB68(a3, a4);

  return v9;
}

uint64_t MPCPlaybackEngine.configuration.getter()
{
  v1 = [v0 playerID];
  v2 = sub_AB92A0();

  sub_6BDA80(v0);
  v3 = [v0 fallbackPlaybackIntent];
  return v2;
}

void MPCPlaybackEngine.configuration.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_6BDB68(a3, a4);
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
  v6 = sub_AB92A0();
  v8 = v7;

  v9 = sub_6BDA80(v1);
  v10 = [v1 fallbackPlaybackIntent];
  *v4 = v6;
  v4[1] = v8;
  v4[2] = v9;
  v4[3] = v10;
  return sub_6BA9C8;
}

void sub_6BA9C8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = v3;

    sub_6BDB68(v5, v3);

    v3 = v2[3];
  }

  else
  {
    sub_6BDB68(*(*a1 + 16), v3);
  }

  free(v2);
}

void sub_6BAA78()
{
  v0 = sub_507F7C(&off_D1A8A0);
  v1 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v2 = sub_AB9260();
  [v1 setLabel:v2];

  v3 = [objc_opt_self() kindWithVariants:3];
  [v1 setItemKind:v3];

  v4 = [v1 playbackIntentWithStartItemIdentifiers:0];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [v6 setShuffleMode:1];
  }

  static MPCPlaybackEngine.Configuration.systemMusic = 0x636973754DLL;
  unk_E71FE0 = 0xE500000000000000;
  qword_E71FE8 = v0;
  unk_E71FF0 = v5;
}

uint64_t *MPCPlaybackEngine.Configuration.systemMusic.unsafeMutableAddressor()
{
  if (qword_E0CE90 != -1)
  {
    swift_once();
  }

  return &static MPCPlaybackEngine.Configuration.systemMusic;
}

uint64_t static MPCPlaybackEngine.Configuration.systemMusic.getter()
{
  if (qword_E0CE90 != -1)
  {
    swift_once();
  }

  v0 = static MPCPlaybackEngine.Configuration.systemMusic;
  v1 = unk_E71FF0;

  v2 = v1;
  return v0;
}

Swift::Int MPCPlayerRequestTracklistRange.hashValue.getter(Swift::UInt a1, Swift::UInt a2)
{
  sub_ABB5C0();
  sub_ABB5D0(a1);
  sub_ABB5D0(a2);
  return sub_ABB610();
}

Swift::Int sub_6BAD88()
{
  v1 = *v0;
  v2 = v0[1];
  sub_ABB5C0();
  sub_ABB5D0(v1);
  sub_ABB5D0(v2);
  return sub_ABB610();
}

void sub_6BADE4()
{
  v1 = v0[1];
  sub_ABB5D0(*v0);
  sub_ABB5D0(v1);
}

Swift::Int sub_6BAE20(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_ABB5C0();
  sub_ABB5D0(v2);
  sub_ABB5D0(v3);
  return sub_ABB610();
}

id MPCPlayerResponse.playingModelObject.getter()
{
  v1 = [v0 tracklist];
  v2 = [v1 playingItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 metadataObject];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 innermostModelObject];

  return v4;
}

void sub_6BAF20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11060, &unk_B22950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v1;
  v2 = objc_opt_self();
  *(inited + 48) = [v2 emptyPropertySet];
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v3;
  *(inited + 72) = [v2 emptyPropertySet];
  sub_52A338(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11068, qword_B1D7F0);
  swift_arrayDestroy();
  v4 = objc_allocWithZone(MPPropertySet);
  isa = sub_AB9740().super.isa;
  sub_13C80(0, &qword_E12D10, MPPropertySet_ptr);
  v6 = sub_AB8FD0().super.isa;

  v7 = [v4 initWithProperties:isa relationships:v6];

  static MPCPlayerResponse.playStateSectionProperties = v7;
}

uint64_t *MPCPlayerResponse.playStateSectionProperties.unsafeMutableAddressor()
{
  if (qword_E0CE98 != -1)
  {
    swift_once();
  }

  return &static MPCPlayerResponse.playStateSectionProperties;
}

id static MPCPlayerResponse.playStateSectionProperties.getter()
{
  if (qword_E0CE98 != -1)
  {
    swift_once();
  }

  v1 = static MPCPlayerResponse.playStateSectionProperties;

  return v1;
}

id sub_6BB164()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12D08, &unk_B213E0);
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
      sub_AB3790();

      v12 = sub_AB3820();
      (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
    }

    else
    {
      v12 = sub_AB3820();
      (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    }

    sub_6BE020(v3, v6);
    sub_AB3820();
    v14 = *(v12 - 8);
    if ((*(v14 + 48))(v6, 1, v12) != 1)
    {
      v15 = sub_AB37F0();
      (*(v14 + 8))(v6, v12);
      v16 = [v1 tracklist];
      v17 = [v16 items];

      v18 = [v17 sectionAtIndex:v15];
      v19 = [v18 metadataObject];

      [v1 state];
      return v19;
    }

    sub_6BE090(v6);
  }

  return 0;
}

uint64_t MPCPlayerResponse.playState(for:in:)(void *a1, void *a2)
{
  v4 = sub_6BB164();
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
    if ([v7 type] != &dword_0 + 2 || (v16 = objc_msgSend(v7, "album")) == 0)
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
  v4 = sub_6BB164();
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
      if ([v7 type] != &dword_4 || (v15 = objc_msgSend(v7, "playlist")) == 0)
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

id MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter()
{
  v1 = v0;
  v2 = sub_AB3820();
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
      sub_AB3790();

      (*(v3 + 32))(v8, v5, v2);
      v13 = [v1 items];
      v14 = [v13 sectionAtIndex:sub_AB37F0()];

      v15 = [v14 metadataObject];
      if (v15)
      {
        v16 = [v15 innermostModelObject];
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = v17;
          if ([v17 type] == &dword_4)
          {
            (*(v3 + 8))(v8, v2);

            goto LABEL_3;
          }

          v19 = [v18 subtype];

          (*(v3 + 8))(v8, v2);
          if (v19 == &dword_0 + 1)
          {
            return 0;
          }
        }

        else
        {

          (*(v3 + 8))(v8, v2);
        }

        return &dword_0 + 1;
      }

      (*(v3 + 8))(v8, v2);
    }

    return &dword_0 + 1;
  }

  return result;
}

void MPCPlayerResponseTracklist.currentPlayEvent.getter()
{
  v1 = v0;
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &aBlock[-1] - v7;
  v9 = [v1 playingItemIndexPath];
  if (v9)
  {
    v10 = v9;
    sub_AB3790();

    (*(v3 + 32))(v8, v5, v2);
    v11 = [v1 items];
    v12 = [v11 sectionAtIndex:sub_AB37F0()];

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
      *(v16 + 16) = sub_6BDC54;
      *(v16 + 24) = &v20 - 4;
      aBlock[4] = sub_3F328C;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_41A314;
      aBlock[3] = &block_descriptor_193;
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

void sub_6BBE78(uint64_t a1, void *a2, _BYTE *a3)
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
      sub_13C80(0, &qword_E112E0, NSObject_ptr);
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
  _s3__C6CGRectVMa_1(0);
  sub_AB54D0();
  swift_endAccess();
  [v4 isReadyForDisplay];
  swift_beginAccess();
  sub_AB54D0();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103F0, &unk_B1C490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  KeyPath = swift_getKeyPath();
  *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B48, qword_B210D0);
  *(inited + 64) = &protocol witness table for KeyValueObservationTrigger<A, B>;
  *(inited + 32) = v4;
  *(inited + 40) = KeyPath;
  v7 = swift_getKeyPath();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12B50, &qword_B21110);
  *(inited + 104) = &protocol witness table for KeyValueObservationTrigger<A, B>;
  *(inited + 72) = v4;
  *(inited + 80) = v7;
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v9 = v4;

  v10 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 0, sub_6BDD8C, v8);

  *(v2 + v3) = v10;

  return v2;
}

uint64_t MPCPlayerResponse.VideoContext.videoBounds.setter(double a1, double a2, double a3, double a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t MPCPlayerResponse.VideoContext.isReadyForDisplay.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

void sub_6BC4C8(uint64_t a1)
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
    sub_AB5510(&v15);

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
      sub_AB5510(&v15);

      if (vabdd_f64(Width, CGRectGetWidth(v15)) > 1.0)
      {
        v18.origin.x = v5;
        v18.origin.y = v7;
        v18.size.width = v9;
        v18.size.height = v11;
        Height = CGRectGetHeight(v18);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_AB5510(&v15);

        if (vabdd_f64(Height, CGRectGetHeight(v15)) > 1.0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v15.origin.x = v5;
          v15.origin.y = v7;
          v15.size.width = v9;
          v15.size.height = v11;

          sub_AB5520();
        }
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v15);

    if (v12 == LOBYTE(v15.origin.x))
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v15.origin.x) = v12;
      sub_AB5520();
    }
  }
}

uint64_t MPCPlayerResponse.VideoContext.isReadyForDisplay.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

void sub_6BC81C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

uint64_t sub_6BC89C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
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
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t MPCPlayerResponse.VideoContext.$isReadyForDisplay.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B60, &qword_B24860);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8, &qword_B27800);
  sub_AB54F0();
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B60, &qword_B24860);
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
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8, &qword_B27800);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

double MPCPlayerResponse.VideoContext.videoBounds.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

double sub_6BCCF0@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v5);

  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_6BCD70(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
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
  *(v3 + 48) = sub_AB5500();
  return sub_6BCE8C;
}

uint64_t MPCPlayerResponse.VideoContext.$videoBounds.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B70, &qword_B211B0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B68, &qword_B211A8);
  sub_AB54F0();
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B70, &qword_B211B0);
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
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B68, &qword_B211A8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD154;
}

void sub_6BD158(uint64_t a1, char a2)
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
    sub_AB54F0();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_AB54F0();
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
  sub_ABAD90(40);

  v2 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getObjectType();
  v4 = v3;
  swift_getWitnessTable();
  v6._countAndFlagsBits = sub_AB9360();
  sub_AB94A0(v6);

  return 0xD000000000000026;
}

uint64_t MPCPlayerResponse.VideoContext.deinit()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8, &qword_B27800);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B68, &qword_B211A8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t MPCPlayerResponse.VideoContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8, &qword_B27800);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B68, &qword_B211A8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

id MPCPlayerResponse.videoContext.getter()
{
  result = [v0 videoOutput];
  if (result)
  {
    v2 = swift_dynamicCastObjCProtocolConditional();
    if (v2 && (v3 = v2, swift_getObjectType(), sub_13C80(0, &qword_E112E0, NSObject_ptr), swift_dynamicCastMetatype()))
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
  if (a1 == a5 && a2 == a6 || (sub_ABB3C0()) && (sub_4CA358(a3, a7))
  {
    if (a4)
    {
      if (a8)
      {
        sub_13C80(0, &qword_E12D18, MPCPlaybackIntent_ptr);
        v12 = a8;
        v13 = a4;
        v14 = sub_ABA790();

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
  sub_13C80(0, &qword_E112E0, NSObject_ptr);
  v4 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v8 = v5;
  v9 = v7;
  v10 = sub_ABA790();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v16);

  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v16);

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
  sub_AB5510(&v16);

  if (LOBYTE(v16.origin.x) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v16);

  return LOBYTE(v16.origin.x);
}

void *sub_6BDA80(void *a1)
{
  v8 = &_swiftEmptySetSingleton;
  if ([a1 isSystemMusicApplication])
  {
    sub_683ACC(&v3, 0);
  }

  if ([a1 isAudioAnalyzerEnabled])
  {
    sub_683ACC(&v4, 1);
  }

  if ([a1 isPictureInPictureSupported])
  {
    sub_683ACC(&v5, 2);
  }

  if ([a1 isVideoSupported])
  {
    sub_683ACC(&v6, 3);
  }

  if ([a1 isStateRestorationSupported])
  {
    sub_683ACC(&v7, 4);
  }

  return v8;
}

id sub_6BDB68(uint64_t a1, uint64_t a2)
{
  [v2 setSystemMusicApplication:{sub_473110(0, a1)}];
  [v2 setAudioAnalyzerEnabled:{sub_473110(1u, a1)}];
  [v2 setPictureInPictureSupported:{sub_473110(2u, a1)}];
  [v2 setVideoSupported:{sub_473110(3u, a1)}];
  [v2 setStateRestorationSupported:{sub_473110(4u, a1)}];

  return [v2 setFallbackPlaybackIntent:a2];
}

double block_copy_helper_193(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t type metadata accessor for MPCPlayerResponse.VideoContext(uint64_t a1)
{
  result = qword_E12BC0;
  if (!qword_E12BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_6BDCDC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isReadyForDisplay];
  *a2 = result;
  return result;
}

id sub_6BDD1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoBounds];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_6BDD54()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_6BDDA8()
{
  result = qword_E12B78;
  if (!qword_E12B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E12B78);
  }

  return result;
}

unint64_t sub_6BDE00()
{
  result = qword_E12B80;
  if (!qword_E12B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E12B88, &qword_B21248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E12B80);
  }

  return result;
}

unint64_t sub_6BDE68()
{
  result = qword_E12B90;
  if (!qword_E12B90)
  {
    type metadata accessor for MPCPlayerRequestTracklistRange(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E12B90);
  }

  return result;
}

void sub_6BDEE8(uint64_t a1)
{
  sub_69ED3C();
  if (v1 <= 0x3F)
  {
    sub_6BDFC8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_6BDFC8(uint64_t a1)
{
  if (!qword_E12BD8)
  {
    _s3__C6CGRectVMa_1(255);
    v1 = sub_AB5540();
    if (!v2)
    {
      atomic_store(v1, &qword_E12BD8);
    }
  }
}

uint64_t sub_6BE020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12D08, &unk_B213E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6BE090(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12D08, &unk_B213E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Player.SnapshotController.__allocating_init(windowScene:player:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Player.SnapshotController.init(windowScene:player:)(a1, a2);
  return v4;
}

uint64_t Player.SnapshotController.init(windowScene:player:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  *(v3 + 72) = 0;
  *(v3 + 32) = _swiftEmptyArrayStorage;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 80) = 1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v3 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF82E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103F0, &unk_B1C490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  UIScreen.Dimensions.size.getter();
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  UIScreen.Dimensions.size.getter();
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  v11 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  v12 = UISceneDidEnterBackgroundNotification;
  v13 = UISceneWillEnterForegroundNotification;

  v14 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_6BE5C0, v11);

  *(v5 + 32) = v14;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_AF4EC0;
  UIScreen.Dimensions.size.getter();
  *(v15 + 56) = &type metadata for NotificationTrigger;
  *(v15 + 64) = &protocol witness table for NotificationTrigger;
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  v18 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v19 = UIScreenBrightnessDidChangeNotification;

  v20 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v15, 1, sub_6BED7C, v18);

  *(v5 + 40) = v20;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_AF4EC0;
  UIScreen.Dimensions.size.getter();
  *(v21 + 56) = &type metadata for NotificationTrigger;
  *(v21 + 64) = &protocol witness table for NotificationTrigger;
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = UIApplicationProtectedDataDidBecomeAvailable;

  swift_allocObject();

  v26 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v21, 1, sub_6BF3E8, v24);

  *(v5 + 48) = v26;

  *(v3 + 32) = v5;

  return v3;
}

uint64_t sub_6BE530()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_6BE568(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_6BE5C8();
  }

  return result;
}

double sub_6BE5C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F510, &qword_B19DB8);
  __chkstk_darwin();
  v3 = &v36 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15EA0, &qword_B21460);
  v38 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12DF8, &qword_B21468);
  v39 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12E00, &qword_B21470);
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin();
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12E08, &qword_B21478);
  v42 = *(v13 - 8);
  v43 = v13;
  __chkstk_darwin();
  v15 = &v36 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v17 = Strong, v18 = [Strong activationState], v17, v18 == &dword_0 + 2))
  {
    if (*(v1 + 40))
    {
      return result;
    }

    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v37 = v3;
    v20 = sub_AB4BC0();
    __swift_project_value_buffer(v20, qword_E72050);
    v21 = sub_AB4BA0();
    v22 = sub_AB9F50();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "[📸👁️] App is backgrounded: Observing for now playing changes", v23, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v44);

    v24 = *(v1 + 48);
    *(v1 + 48) = v44;

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13090, &qword_B21AB0);
    sub_AB54E0();
    swift_endAccess();
    sub_36A00(&qword_E13570, &unk_E15EA0, &qword_B21460, &protocol conformance descriptor for Published<A>.Publisher);
    sub_AB55A0();
    (*(v38 + 8))(v6, v4);
    sub_36A00(&qword_E12E10, &qword_E12DF8, &qword_B21468, &protocol conformance descriptor for Publishers.Drop<A>);
    sub_6BFF7C();
    sub_AB55B0();
    (*(v39 + 8))(v9, v7);
    sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
    v25 = sub_ABA150();
    v44 = v25;
    v26 = sub_ABA130();
    v27 = v37;
    (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
    sub_36A00(&qword_E12E30, &qword_E12E00, &qword_B21470, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    sub_6C002C(&qword_E13540, &qword_E103C0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v28 = v41;
    sub_AB5590();
    sub_12E1C(v27, &qword_E0F510, &qword_B19DB8);

    (*(v40 + 8))(v12, v28);
    swift_allocObject();
    swift_weakInit();
    sub_36A00(&qword_E12E38, &qword_E12E08, &qword_B21478, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v29 = v43;
    v30 = sub_AB55C0();

    (*(v42 + 8))(v15, v29);
    *(v1 + 40) = v30;
  }

  else
  {
    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v31 = sub_AB4BC0();
    __swift_project_value_buffer(v31, qword_E72050);
    v32 = sub_AB4BA0();
    v33 = sub_AB9F50();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "[📸👁️] App is foregrounded: Stopping now playing changes observation", v34, 2u);
    }

    v35 = *(v1 + 64);
    *(v1 + 64) = 0;
    if (v35 == 1)
    {
      *(v1 + 72) = 0;
      *(v1 + 80) = 1;
    }

    *(v1 + 40) = 0;
  }

  return result;
}

void sub_6BED9C(char a1)
{
  if (*(v1 + 64) == 1)
  {
    v3 = objc_opt_self();
    v4 = [v3 sharedApplication];
    v5 = [v4 isProtectedDataAvailable];

    if (v5)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v7 = Strong, v8 = [Strong screen], v7, objc_msgSend(v8, "brightness"), v10 = v9, v8, v10 > 0.0))
      {
        v11 = *(v1 + 64);
        *(v1 + 64) = 0;
        if (v11 == 1)
        {
          *(v1 + 72) = 0;
          *(v1 + 80) = 1;
        }

        if (qword_E0CEC0 != -1)
        {
          swift_once();
        }

        v12 = sub_AB4BC0();
        __swift_project_value_buffer(v12, qword_E72050);
        v13 = sub_AB4BA0();
        v14 = sub_AB9F50();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v46 = v16;
          *v15 = 134349314;
          *(v15 + 4) = v10;
          *(v15 + 12) = 2080;
          v17 = [v3 sharedApplication];
          v18 = [v17 isProtectedDataAvailable];

          if (v18)
          {
            v19 = 0x64656B636F6C6E75;
          }

          else
          {
            v19 = 0x64656B636F6CLL;
          }

          if (v18)
          {
            v20 = 0xE800000000000000;
          }

          else
          {
            v20 = 0xE600000000000000;
          }

          v21 = sub_500C84(v19, v20, &v46);

          *(v15 + 14) = v21;
          _os_log_impl(&dword_0, v13, v14, "[📸] Brightness is at %{public}f, device is %s", v15, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v16);
        }

        v22 = sub_AB4BA0();
        v23 = sub_AB9F50();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v46 = v25;
          *v24 = 136446210;
          v26 = sub_AB9350();
          v28 = sub_500C84(v26, v27, &v46);

          *(v24 + 4) = v28;
          _os_log_impl(&dword_0, v22, v23, "[📸✅:%{public}s] Taking Snapshot!", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
        }

        v29 = [v3 sharedApplication];
        [v29 _updateSnapshotForBackgroundApplication:0];
      }

      else
      {
        if (qword_E0CEC0 != -1)
        {
          swift_once();
        }

        v37 = sub_AB4BC0();
        __swift_project_value_buffer(v37, qword_E72050);
        v38 = sub_AB4BA0();
        v39 = sub_AB9F50();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v46 = v41;
          *v40 = 136446210;
          v42 = sub_AB9350();
          v44 = sub_500C84(v42, v43, &v46);

          *(v40 + 4) = v44;
          _os_log_impl(&dword_0, v38, v39, "[📸❌:%{public}s] Skipping: Screen brightness is 0", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
        }
      }
    }

    else
    {
      if (qword_E0CEC0 != -1)
      {
        swift_once();
      }

      v30 = sub_AB4BC0();
      __swift_project_value_buffer(v30, qword_E72050);
      oslog = sub_AB4BA0();
      v31 = sub_AB9F50();
      if (os_log_type_enabled(oslog, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v47[0] = v33;
        *v32 = 136446210;
        LOBYTE(v46) = a1;
        v34 = sub_AB9350();
        v36 = sub_500C84(v34, v35, v47);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_0, oslog, v31, "[📸❌:%{public}s] Skipping Snapshot Request: Device is locked", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
      }

      else
      {
      }
    }
  }
}