uint64_t Reactions.StackView.Model.userImage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

void sub_1003C00DC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a2 = v3;
}

uint64_t sub_1003C0160(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_1004D9B7C();
}

uint64_t Reactions.StackView.Model.userImage.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

void (*Reactions.StackView.Model.userImage.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_1004D9B5C();
  return sub_1001F6F60;
}

uint64_t Reactions.StackView.Model.$userImage.setter(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_1006444A8, &qword_100532790);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100004CB8(&qword_100642940, &qword_10052FAD0);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$userImage.modify(uint64_t *a1))()
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
  v5 = sub_100004CB8(&qword_1006444A8, &qword_100532790);
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

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100004CB8(&qword_100642940, &qword_10052FAD0);
  sub_1004D9B3C();
  swift_endAccess();
  return sub_1001F5F34;
}

void (*Reactions.StackView.Model.isReacting.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_1004D9B5C();
  return sub_1001F5BF4;
}

uint64_t Reactions.StackView.Model.$isReacting.setter(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_1006444B8, &qword_1005327E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100004CB8(&qword_100641040, &unk_1005339B0);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$isReacting.modify(uint64_t *a1))()
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
  v5 = sub_100004CB8(&qword_1006444B8, &qword_1005327E0);
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

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100004CB8(&qword_100641040, &unk_1005339B0);
  sub_1004D9B3C();
  swift_endAccess();
  return sub_1001F6F64;
}

uint64_t sub_1003C0A0C(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

void (*Reactions.StackView.Model.hasAnimatedBackground.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_1004D9B5C();
  return sub_1001F6F60;
}

uint64_t Reactions.StackView.Model.$hasAnimatedBackground.setter(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_1006444B8, &qword_1005327E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100004CB8(&qword_100641040, &unk_1005339B0);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$hasAnimatedBackground.modify(uint64_t *a1))()
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
  v5 = sub_100004CB8(&qword_1006444B8, &qword_1005327E0);
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

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100004CB8(&qword_100641040, &unk_1005339B0);
  sub_1004D9B3C();
  swift_endAccess();
  return sub_1001F6F64;
}

uint64_t Reactions.StackView.Model.__allocating_init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = sub_100004CB8(&qword_100641040, &unk_1005339B0);
  v5 = *(v26 - 8);
  __chkstk_darwin();
  v7 = v24 - v6;
  v25 = sub_100004CB8(&qword_100642940, &qword_10052FAD0);
  v8 = *(v25 - 8);
  __chkstk_darwin();
  v10 = v24 - v9;
  v11 = sub_100004CB8(&qword_100644478, &qword_1005326E0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v24 - v13;
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v24[1] = sub_100004CB8(&qword_100644AB0, &qword_100531B80);
  sub_1004D9B2C();
  (*(v12 + 32))(v15 + v16, v14, v11);
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  sub_100004CB8(&qword_10063E4C0, &qword_100529168);
  sub_1004D9B2C();
  (*(v8 + 32))(v15 + v17, v10, v25);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  sub_1004D9B2C();
  v19 = *(v5 + 32);
  v20 = v26;
  v19(v15 + v18, v7, v26);
  v21 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  sub_1004D9B2C();
  v19(v15 + v21, v7, v20);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v15 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v12 + 8))(v15 + v16, v11);
  v32 = v27;
  v33 = v28;
  sub_1004D9B2C();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  sub_1004D9B2C();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  sub_1004D9B7C();
  *(v15 + v22) = v31;
  return v15;
}

uint64_t Reactions.StackView.Model.init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = sub_100004CB8(&qword_100641040, &unk_1005339B0);
  v6 = *(v26 - 8);
  __chkstk_darwin();
  v8 = &v25 - v7;
  v9 = sub_100004CB8(&qword_100642940, &qword_10052FAD0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v25 - v11;
  v13 = sub_100004CB8(&qword_100644478, &qword_1005326E0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v25 = sub_100004CB8(&qword_100644AB0, &qword_100531B80);
  sub_1004D9B2C();
  (*(v14 + 32))(v5 + v17, v16, v13);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  sub_100004CB8(&qword_10063E4C0, &qword_100529168);
  sub_1004D9B2C();
  (*(v10 + 32))(v5 + v18, v12, v9);
  v19 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  sub_1004D9B2C();
  v20 = *(v6 + 32);
  v21 = v26;
  v20(v5 + v19, v8, v26);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  sub_1004D9B2C();
  v20(v5 + v22, v8, v21);
  v23 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v5 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v14 + 8))(v5 + v17, v13);
  v32 = v27;
  v33 = v28;
  sub_1004D9B2C();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  sub_1004D9B2C();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  sub_1004D9B7C();
  *(v5 + v23) = v31;
  return v5;
}

uint64_t Reactions.StackView.Model.deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = sub_100004CB8(&qword_100644478, &qword_1005326E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = sub_100004CB8(&qword_100644490, &qword_100532738);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = sub_100004CB8(&qword_100642940, &qword_10052FAD0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = sub_100004CB8(&qword_100641040, &unk_1005339B0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);
  return v0;
}

uint64_t Reactions.StackView.Model.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = sub_100004CB8(&qword_100644478, &qword_1005326E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = sub_100004CB8(&qword_100644490, &qword_100532738);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = sub_100004CB8(&qword_100642940, &qword_10052FAD0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = sub_100004CB8(&qword_100641040, &unk_1005339B0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_1003C18DC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Reactions.StackView.Model(0);
  result = sub_1004D9AFC();
  *a2 = result;
  return result;
}

uint64_t property wrapper backing initializer of Reactions.StackView.model(uint64_t a1)
{
  type metadata accessor for Reactions.StackView.Model(0);
  sub_1003C5130(&qword_1006444C8, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);

  return sub_1004DA13C();
}

uint64_t Reactions.StackView.$model.getter()
{
  type metadata accessor for Reactions.StackView.Model(0);
  sub_1003C5130(&qword_1006444C8, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);

  return sub_1004DA14C();
}

double Reactions.StackView.specs.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 Reactions.StackView.init(model:specs:)@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Reactions.StackView(0);
  v6 = v5[6];
  *(a3 + v6) = swift_getKeyPath();
  sub_100004CB8(&qword_100641B60, &qword_100527748);
  swift_storeEnumTagMultiPayload();
  v7 = v5[7];
  *(a3 + v7) = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBC0, &unk_10052C4C0);
  swift_storeEnumTagMultiPayload();
  v8 = v5[8];
  *(a3 + v8) = swift_getKeyPath();
  sub_100004CB8(&unk_100641090, &qword_1005275B0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Reactions.StackView.Model(0);
  sub_1003C5130(&qword_1006444C8, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);
  *a3 = sub_1004DA13C();
  *(a3 + 8) = v9;
  result = *a2;
  v11 = *(a2 + 16);
  *(a3 + 16) = *a2;
  *(a3 + 32) = v11;
  *(a3 + 48) = *(a2 + 32);
  return result;
}

void Reactions.StackView.body.getter(uint64_t a1@<X8>)
{
  v106 = a1;
  sub_100004CB8(&qword_1006444D0, &qword_1005328C0);
  __chkstk_darwin();
  v92 = &v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = (&v83 - v3);
  v96 = *(type metadata accessor for Reactions.StackView(0) - 8);
  __chkstk_darwin();
  v97 = v4;
  v98 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004CB8(&qword_1006444D8, &qword_1005328C8);
  v101 = *(v5 - 8);
  v102 = v5;
  __chkstk_darwin();
  v100 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v83 - v7;
  sub_100004CB8(&qword_10063E7B8, &qword_100529878);
  __chkstk_darwin();
  v9 = &v83 - v8;
  v91 = sub_1004DA25C();
  v10 = *(v91 - 8);
  __chkstk_darwin();
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DBDAC();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v95 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v15;
  v16 = __chkstk_darwin();
  v17 = *(v14 + 104);
  v105 = &v83 - v18;
  v17(v16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v19 = v107;
  v20 = *(v1 + 16);
  if (v20 < v107)
  {
    v19 = *(v1 + 16);
  }

  v21 = __OFSUB__(v19, 1);
  v22 = v19 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v90 = v1;
    v88 = *(v1 + 48);
    v23 = *(v1 + 24);
    v24 = *(v1 + 32);
    v25 = *(v1 + 40);
    KeyPath = v22;
    v85 = v12;
    v87 = v20;
    sub_10032A4A4(v12);
    v103 = v14;
    v86 = *(v10 + 16);
    v26 = v12;
    v27 = v91;
    v86(v9, v26, v91);
    v104 = v13;
    v84 = *(v10 + 56);
    v84(v9, 0, 1, v27);
    v28 = sub_1004DE30C();
    v29 = objc_opt_self();
    v30 = [v29 traitCollectionWithPreferredContentSizeCategory:v28];
    v31 = objc_opt_self();
    v32 = [v31 defaultMetrics];
    [v32 scaledValueForValue:v30 compatibleWithTraitCollection:v23];
    v34 = v33;

    v35 = v9;
    v36 = v9;
    v37 = v85;
    v86(v35, v85, v27);
    v38 = v103;
    v39 = v106;
    v84(v36, 0, 1, v27);
    v40 = v104;
    v41 = sub_1004DE30C();
    v42 = [v29 traitCollectionWithPreferredContentSizeCategory:v41];
    v43 = [v31 defaultMetrics];
    [v43 scaledValueForValue:v42 compatibleWithTraitCollection:v25];
    v45 = v44;

    (*(v10 + 8))(v37, v27);
    v46 = v87;
    *&v110 = v87;
    *(&v110 + 1) = v34;
    *&v111 = v24;
    *(&v111 + 1) = v45;
    LODWORD(v42) = v88;
    v112 = v88;
    *v39 = sub_1004DA7CC();
    *(v39 + 8) = v24 - v34;
    *(v39 + 16) = 0;
    v86 = (v39 + *(sub_100004CB8(&qword_1006444E0, &unk_1005328D0) + 44));
    if (v42)
    {
      v47 = KeyPath & ~(KeyPath >> 63);
    }

    else
    {
      v47 = v46;
    }

    v91 = v47;
    *&v107 = 0;
    *(&v107 + 1) = KeyPath & ~(KeyPath >> 63);
    KeyPath = swift_getKeyPath();
    v48 = v90;
    v49 = v98;
    sub_1003C4020(v90, v98);
    v50 = v95;
    v51 = v105;
    (*(v38 + 16))(v95, v105, v40);
    v52 = (*(v96 + 80) + 49) & ~*(v96 + 80);
    v53 = (v97 + *(v38 + 80) + v52) & ~*(v38 + 80);
    v54 = swift_allocObject();
    v55 = v111;
    *(v54 + 16) = v110;
    *(v54 + 32) = v55;
    *(v54 + 48) = v112;
    sub_1003C4320(v49, v54 + v52);
    (*(v38 + 32))(v54 + v53, v50, v40);
    sub_100004CB8(&qword_1006444E8, &qword_1005328F8);
    sub_100004CB8(&qword_1006444F0, &qword_100532900);
    sub_1003C446C();
    sub_1003C45D0();
    v56 = v99;
    sub_1004DBC1C();
    v57 = sub_1004DBD1C();
    v58 = v93;
    *v93 = v57;
    *(v58 + 8) = v59;
    v60 = sub_100004CB8(&qword_100644530, &qword_100532918);
    sub_1003C317C(&v110, v48, v51, v58 + *(v60 + 44));
    v62 = v101;
    v61 = v102;
    v63 = *(v101 + 16);
    v64 = v100;
    v63(v100, v56, v102);
    v65 = v92;
    sub_1000108DC(v58, v92, &qword_1006444D0, &qword_1005328C0);
    v66 = v86;
    *v86 = 0;
    *(v66 + 8) = 1;
    v67 = sub_100004CB8(&qword_100644538, &qword_100532920);
    v63(v66 + *(v67 + 48), v64, v61);
    sub_1000108DC(v65, v66 + *(v67 + 64), &qword_1006444D0, &qword_1005328C0);
    sub_10001074C(v58, &qword_1006444D0, &qword_1005328C0);
    v68 = *(v62 + 8);
    v68(v56, v61);
    sub_10001074C(v65, &qword_1006444D0, &qword_1005328C0);
    v68(v64, v61);
    if (!__OFADD__(v91, 1))
    {
      Int.seconds.getter(v91 + 1);
      sub_1004DBD1C();
      sub_1004D9F5C();
      v69 = sub_100004CB8(&qword_100644540, &qword_100532928);
      v70 = v106;
      v71 = (v106 + *(v69 + 36));
      v72 = v108;
      *v71 = v107;
      v71[1] = v72;
      v71[2] = v109;
      v73 = sub_1004DAF2C();
      sub_1004D9C8C();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v82 = v70 + *(sub_100004CB8(&qword_100644548, &qword_100532930) + 36);
      *v82 = v73;
      *(v82 + 8) = v75;
      *(v82 + 16) = v77;
      *(v82 + 24) = v79;
      *(v82 + 32) = v81;
      *(v82 + 40) = 0;
      (*(v103 + 8))(v105, v104);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1003C2690@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v22 = a3;
  v6 = sub_1004DA35C();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004CB8(&qword_100644820, &qword_100532AB0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v21 - v14;
  *a4 = sub_1004DBD1C();
  a4[1] = v16;
  v17 = sub_100004CB8(&qword_1006448C8, &qword_100532B58);
  sub_1003C295C(a2, v22, a4 + *(v17 + 44));
  sub_1004DBE7C();
  sub_1004DA36C();
  sub_1004DBD8C();
  v18 = sub_1003C5130(&qword_100644868, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
  sub_1004D9D4C();

  (*(v7 + 8))(v9, v6);
  (*(v11 + 16))(v13, v15, v10);
  v23 = v6;
  v24 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = sub_1004D9FCC();
  (*(v11 + 8))(v15, v10);
  result = sub_100004CB8(&qword_1006444F0, &qword_100532900);
  *(a4 + *(result + 36)) = v19;
  return result;
}

uint64_t sub_1003C295C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a3;
  v43 = a4;
  v4 = sub_100004CB8(&qword_1006448D0, &qword_100532B60) - 8;
  __chkstk_darwin();
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v32 - v6;
  v8 = sub_100004CB8(&qword_100644830, &qword_100532AC0) - 8;
  __chkstk_darwin();
  v39 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v38 = sub_1004DB85C();
  sub_1004DBD1C();
  sub_1004D9F5C();
  v37 = v44[1];
  LODWORD(v36) = v45;
  v12 = v46;
  v35 = v47;
  v34 = v48;
  v33 = v49;
  v13 = sub_1004DB87C();
  v14 = &v11[*(v8 + 44)];
  v15 = *(sub_100004CB8(&qword_100644838, &qword_100532AC8) + 36);
  v16 = enum case for BlendMode.destinationOut(_:);
  v17 = sub_1004DBDAC();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v14 + v15, v16, v17);
  *v14 = v13;
  *(v14 + *(sub_100004CB8(&qword_100644840, &qword_100532AD0) + 56)) = 256;
  v19 = v37;
  *v11 = v38;
  *(v11 + 1) = v19;
  v11[16] = v36;
  *(v11 + 3) = v12;
  v11[32] = v35;
  v20 = v33;
  *(v11 + 5) = v34;
  *(v11 + 6) = v20;
  v38 = sub_1004DB85C();
  sub_1004DBD1C();
  sub_1004D9F5C();
  v21 = v50;
  LOBYTE(v12) = v51;
  v22 = v52;
  LOBYTE(v16) = v53;
  v37 = v54;
  v36 = v55;
  sub_1003C2DC4(v44);
  v23 = v44[0];
  v24 = &v7[*(v4 + 44)];
  v25 = sub_100004CB8(&qword_100644848, &qword_100532B08);
  (*(v18 + 16))(v24 + *(v25 + 36), v41, v17);
  *v24 = v23;
  *(v24 + *(sub_100004CB8(&qword_100644850, &qword_100532B10) + 56)) = 256;
  v26 = v39;
  *v7 = v38;
  *(v7 + 1) = v21;
  v7[16] = v12;
  *(v7 + 3) = v22;
  v7[32] = v16;
  v27 = v36;
  *(v7 + 5) = v37;
  *(v7 + 6) = v27;
  sub_1000108DC(v11, v26, &qword_100644830, &qword_100532AC0);
  v28 = v42;
  sub_1000108DC(v7, v42, &qword_1006448D0, &qword_100532B60);
  v29 = v43;
  sub_1000108DC(v26, v43, &qword_100644830, &qword_100532AC0);
  v30 = sub_100004CB8(&qword_1006448D8, &qword_100532B68);
  sub_1000108DC(v28, v29 + *(v30 + 48), &qword_1006448D0, &qword_100532B60);
  sub_10001074C(v7, &qword_1006448D0, &qword_100532B60);
  sub_10001074C(v11, &qword_100644830, &qword_100532AC0);
  sub_10001074C(v28, &qword_1006448D0, &qword_100532B60);
  return sub_10001074C(v26, &qword_100644830, &qword_100532AC0);
}

uint64_t sub_1003C2DC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = sub_100004CB8(&qword_100644870, &qword_100532B28) - 8;
  __chkstk_darwin();
  v21 = &v20 - v4;
  v5 = sub_1004DA8BC();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004D9D8C();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Reactions.StackView(0);
  sub_10032A924(v12);
  sub_10032A8D4(v8);
  v13 = *(v3 + 56);
  v14 = v10;
  v15 = v21;
  (*(v14 + 32))(v21, v12, v9);
  (*(v6 + 32))(v15 + v13, v8, v5);
  v16 = (*(v14 + 88))(v15, v9);
  if (v16 == enum case for ColorScheme.light(_:))
  {
    if ((*(v6 + 88))(v15 + v13, v5) == enum case for ColorSchemeContrast.increased(_:))
    {
      v17 = [objc_opt_self() secondarySystemFillColor];
      v23 = sub_1004DB8CC();
LABEL_7:
      *v22 = sub_1004D9F6C();
      return (*(v14 + 8))(v15, v9);
    }
  }

  else if (v16 == enum case for ColorScheme.dark(_:) && (*(v6 + 88))(v15 + v13, v5) == enum case for ColorSchemeContrast.increased(_:))
  {
    LODWORD(v23) = sub_1004DABFC();
    goto LABEL_7;
  }

  if (*(*(v2 + 8) + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) == 1)
  {
    LODWORD(v23) = sub_1004DABDC();
  }

  else
  {
    v19 = [objc_opt_self() secondarySystemFillColor];
    v23 = sub_1004DB8CC();
  }

  *v22 = sub_1004D9F6C();
  return sub_10001074C(v15, &qword_100644870, &qword_100532B28);
}

uint64_t sub_1003C317C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a2;
  v86 = a3;
  v80 = a1;
  v89 = a4;
  v76 = sub_1004DA35C();
  v73 = *(v76 - 8);
  __chkstk_darwin();
  v70 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&qword_100644820, &qword_100532AB0);
  v74 = *(v6 - 8);
  v75 = v6;
  __chkstk_darwin();
  v71 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v66 - v8;
  v9 = sub_1004DB8FC();
  v68 = *(v9 - 8);
  v69 = v9;
  __chkstk_darwin();
  v67 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100641CB0, &qword_10052D350);
  __chkstk_darwin();
  v83 = &v66 - v11;
  v84 = sub_100004CB8(&qword_100644828, &qword_100532AB8) - 8;
  __chkstk_darwin();
  v88 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v66 - v13;
  v15 = sub_100004CB8(&qword_100644830, &qword_100532AC0) - 8;
  __chkstk_darwin();
  v90 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v66 - v17;
  v87 = sub_1004DB85C();
  v19 = *(a1 + 8);
  sub_1004DBD1C();
  sub_1004D9F5C();
  v20 = v118;
  LODWORD(v82) = v119;
  v81 = v120;
  LODWORD(v79) = v121;
  v77 = v123;
  *&v78 = v122;
  v21 = sub_1004DB87C();
  v22 = &v18[*(v15 + 44)];
  v23 = *(sub_100004CB8(&qword_100644838, &qword_100532AC8) + 36);
  v24 = enum case for BlendMode.destinationOut(_:);
  v25 = sub_1004DBDAC();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v22 + v23, v24, v25);
  *v22 = v21;
  *(v22 + *(sub_100004CB8(&qword_100644840, &qword_100532AD0) + 56)) = 256;
  *v18 = v87;
  *(v18 + 1) = v20;
  v18[16] = v82;
  *(v18 + 3) = v81;
  v18[32] = v79;
  v27 = v77;
  *(v18 + 5) = v78;
  *(v18 + 6) = v27;
  v87 = v18;
  sub_1003C3CC4(&v124);
  v81 = *(&v126 + 1);
  v82 = v126;
  LOBYTE(v22) = v127;
  v28 = sub_1004DB02C();
  v78 = v125;
  v79 = v124;
  v29 = v83;
  (*(*(v28 - 8) + 56))(v83, 1, 1, v28);
  v30 = sub_1004DB07C();
  sub_10001074C(v29, &qword_100641CB0, &qword_10052D350);
  KeyPath = swift_getKeyPath();
  LOBYTE(v124) = v22;
  sub_1004DBD1C();
  v83 = v19;
  sub_1004D9F5C();
  sub_1003C2DC4(&v124);
  v32 = v124;
  v33 = &v14[*(v84 + 44)];
  v34 = sub_100004CB8(&qword_100644848, &qword_100532B08);
  (*(v26 + 16))(&v33[*(v34 + 36)], v86, v25);
  *v33 = v32;
  *&v33[*(sub_100004CB8(&qword_100644850, &qword_100532B10) + 56)] = 256;
  v35 = v78;
  *v14 = v79;
  *(v14 + 1) = v35;
  v36 = v81;
  *(v14 + 4) = v82;
  *(v14 + 5) = v36;
  v14[48] = v22;
  *(v14 + 7) = KeyPath;
  *(v14 + 8) = v30;
  v37 = v134[1];
  *(v14 + 72) = v134[0];
  *(v14 + 88) = v37;
  v38 = v14;
  *(v14 + 104) = v134[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v39 = v124;
  if (!v124)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v124 != 1)
  {

LABEL_5:
    sub_1003C5110(&v124);
    goto LABEL_6;
  }

  v40 = v39;
  sub_1004DB8DC();
  v42 = v67;
  v41 = v68;
  v43 = v69;
  (*(v68 + 104))(v67, enum case for Image.ResizingMode.stretch(_:), v69);
  v86 = sub_1004DB94C();

  (*(v41 + 8))(v42, v43);
  v44 = sub_1004DBD1C();
  v84 = v45;
  v85 = v44;
  sub_1004DB84C();
  v82 = sub_1004DB88C();

  sub_1004DBE7C();
  v46 = v70;
  sub_1004DA36C();
  sub_1004DBD8C();
  v47 = sub_1003C5130(&qword_100644868, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
  v48 = v72;
  v49 = v76;
  sub_1004D9D4C();

  (*(v73 + 8))(v46, v49);
  v50 = v74;
  v51 = v75;
  (*(v74 + 16))(v71, v48, v75);
  *&v124 = v49;
  *(&v124 + 1) = v47;
  swift_getOpaqueTypeConformance2();
  v52 = sub_1004D9FCC();
  (*(v50 + 8))(v48, v51);
  sub_1004DBD1C();
  sub_1004D9F5C();

  *(v117 + 8) = v101;
  v111 = v86;
  LOWORD(v112) = 257;
  *(&v112 + 1) = v85;
  *&v113 = v84;
  *(&v113 + 1) = v82;
  *&v114 = 0x3FE0000000000000;
  BYTE8(v114) = 0;
  v115 = 0uLL;
  LOBYTE(v116) = 2;
  *(&v116 + 1) = 0x3FF0000000000000;
  *&v117[0] = v52;
  *(&v117[1] + 8) = v102;
  *(&v117[2] + 8) = v103;
  v53.location = &v111;
  CFRange.init(_:)(v53);
  v130 = v117[0];
  v131 = v117[1];
  v132 = v117[2];
  v133 = *&v117[3];
  v126 = v113;
  v127 = v114;
  v128 = v115;
  v129 = v116;
  v124 = v111;
  v125 = v112;
LABEL_6:
  v54 = v87;
  v55 = v90;
  sub_1000108DC(v87, v90, &qword_100644830, &qword_100532AC0);
  v56 = v88;
  sub_1000108DC(v38, v88, &qword_100644828, &qword_100532AB8);
  v97 = v130;
  v98 = v131;
  v99 = v132;
  v100 = v133;
  v93 = v126;
  v94 = v127;
  v95 = v128;
  v96 = v129;
  v91 = v124;
  v92 = v125;
  v57 = v55;
  v58 = v89;
  sub_1000108DC(v57, v89, &qword_100644830, &qword_100532AC0);
  v59 = sub_100004CB8(&qword_100644858, &qword_100532B18);
  sub_1000108DC(v56, v58 + *(v59 + 48), &qword_100644828, &qword_100532AB8);
  v60 = v58 + *(v59 + 64);
  v107 = v97;
  v108 = v98;
  v109 = v99;
  v110 = v100;
  v105 = v95;
  v106 = v96;
  v103 = v93;
  v104 = v94;
  v101 = v91;
  v102 = v92;
  sub_1000108DC(&v101, &v111, &qword_100644860, &qword_100532B20);
  sub_10001074C(v38, &qword_100644828, &qword_100532AB8);
  sub_10001074C(v54, &qword_100644830, &qword_100532AC0);
  v61 = v108;
  *(v60 + 96) = v107;
  *(v60 + 112) = v61;
  *(v60 + 128) = v109;
  *(v60 + 144) = v110;
  v62 = v104;
  *(v60 + 32) = v103;
  *(v60 + 48) = v62;
  v63 = v106;
  *(v60 + 64) = v105;
  *(v60 + 80) = v63;
  v64 = v102;
  *v60 = v101;
  *(v60 + 16) = v64;
  v117[0] = v97;
  v117[1] = v98;
  v117[2] = v99;
  *&v117[3] = v100;
  v113 = v93;
  v114 = v94;
  v115 = v95;
  v116 = v96;
  v111 = v91;
  v112 = v92;
  sub_10001074C(&v111, &qword_100644860, &qword_100532B20);
  sub_10001074C(v56, &qword_100644828, &qword_100532AB8);
  return sub_10001074C(v90, &qword_100644830, &qword_100532AC0);
}

double sub_1003C3CC4@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1004DA35C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v27 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (*(&v35 + 1))
  {
    sub_1002E6780();
    v9 = sub_1004DB34C();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = sub_1004DBD8C();
    sub_1004DBE7C();
    sub_1004DA36C();
    (*(v4 + 16))(v6, v8, v3);
    sub_1003C5130(&qword_100644868, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
    v17 = sub_1004D9FCC();
    (*(v4 + 8))(v8, v3);
    v28 = v9;
    v29 = v11;
    v30 = v13 & 1;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = 0;
  }

  else
  {
    v18 = sub_1004DB90C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    if (v35 == 1)
    {
      v19 = sub_1004DB89C();
    }

    else
    {
      v19 = sub_1004DB7FC();
    }

    v20 = v19;
    v21 = sub_1004DB0DC();
    KeyPath = swift_getKeyPath();
    v28 = v18;
    v29 = v20;
    v30 = KeyPath;
    v31 = v21;
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  sub_100004CB8(&qword_100644878, &qword_100532B30);
  sub_100004CB8(&qword_100644880, &qword_100532B38);
  sub_1003C5178();
  sub_1003C525C();
  sub_1004DAADC();
  result = *&v35;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  *a2 = v35;
  *(a2 + 16) = v24;
  *(a2 + 32) = v25;
  *(a2 + 48) = v26;
  return result;
}

uint64_t Reactions.StackView.Specs.init(maxItemCount:platterLength:stackSpacing:fontSize:sizingMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = a2 & 1;
  return result;
}

uint64_t sub_1003C4020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C4084()
{
  v1 = type metadata accessor for Reactions.StackView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 49) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = sub_1004DBDAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;

  v8 = v1[6];
  sub_100004CB8(&qword_100641B60, &qword_100527748);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1004D9D8C();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v1[7];
  sub_100004CB8(&unk_10063DBC0, &unk_10052C4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1004DA8BC();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  sub_100004CB8(&unk_100641090, &qword_1005275B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1004DA25C();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v3 + v15 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1003C4320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C4384@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for Reactions.StackView(0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1004DBDAC() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1003C2690(v1 + v4, v7, a1);
}

unint64_t sub_1003C446C()
{
  result = qword_1006444F8;
  if (!qword_1006444F8)
  {
    sub_100008DE4(&qword_1006444E8, &qword_1005328F8);
    sub_1003C44F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006444F8);
  }

  return result;
}

unint64_t sub_1003C44F0()
{
  result = qword_100644500;
  if (!qword_100644500)
  {
    sub_100008DE4(&qword_100644508, &qword_100532908);
    sub_1003C457C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644500);
  }

  return result;
}

unint64_t sub_1003C457C()
{
  result = qword_100644510;
  if (!qword_100644510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644510);
  }

  return result;
}

unint64_t sub_1003C45D0()
{
  result = qword_100644518;
  if (!qword_100644518)
  {
    sub_100008DE4(&qword_1006444F0, &qword_100532900);
    sub_100042B08(&qword_100644520, &qword_100644528, &qword_100532910, &protocol conformance descriptor for ZStack<A>);
    sub_100042B08(&qword_100643218, &qword_100643220, &unk_100530570, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644518);
  }

  return result;
}

unint64_t sub_1003C46D4()
{
  result = qword_100644550;
  if (!qword_100644550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644550);
  }

  return result;
}

uint64_t sub_1003C476C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_100004CB8(&qword_1006418C0, &qword_10052E410);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100004CB8(&qword_1006404F0, &qword_10052C838);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_100004CB8(&qword_10063FF28, &qword_10052C140);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1003C4910(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100004CB8(&qword_1006418C0, &qword_10052E410);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100004CB8(&qword_1006404F0, &qword_10052C838);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_100004CB8(&qword_10063FF28, &qword_10052C140);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void sub_1003C4AA0(uint64_t a1)
{
  sub_1003C4BB0(319);
  if (v1 <= 0x3F)
  {
    sub_1003C4C44(319, &qword_100641938, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_1003C4C44(319, &unk_100640568, &type metadata accessor for ColorSchemeContrast);
      if (v3 <= 0x3F)
      {
        sub_1003C4C44(319, &qword_1006415A0, &type metadata accessor for DynamicTypeSize);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003C4BB0(uint64_t a1)
{
  if (!qword_1006445C0)
  {
    type metadata accessor for Reactions.StackView.Model(255);
    sub_1003C5130(&qword_1006444C8, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);
    v1 = sub_1004DA16C();
    if (!v2)
    {
      atomic_store(v1, &qword_1006445C0);
    }
  }
}

void sub_1003C4C44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004D9DCC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003C4CA0(uint64_t a1)
{
  sub_100236040(319, &qword_100644638, &qword_100644AB0, &qword_100531B80);
  if (v1 <= 0x3F)
  {
    sub_1003C4E3C(319, &unk_100644640, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_100236040(319, &unk_100642A80, &qword_10063E4C0, &qword_100529168);
      if (v3 <= 0x3F)
      {
        sub_1003C4E3C(319, &qword_1006411B8, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1003C4E3C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1004D9B9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1003C4E88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1003C4ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1003C4F38()
{
  result = qword_1006447F0;
  if (!qword_1006447F0)
  {
    sub_100008DE4(&qword_1006447F8, &qword_100532AA0);
    sub_1003C4FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006447F0);
  }

  return result;
}

unint64_t sub_1003C4FC4()
{
  result = qword_100644800;
  if (!qword_100644800)
  {
    sub_100008DE4(&qword_100644548, &qword_100532930);
    sub_1003C5050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644800);
  }

  return result;
}

unint64_t sub_1003C5050()
{
  result = qword_100644808;
  if (!qword_100644808)
  {
    sub_100008DE4(&qword_100644540, &qword_100532928);
    sub_100042B08(&qword_100644810, &qword_100644818, &qword_100532AA8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644808);
  }

  return result;
}

double sub_1003C5110(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1003C5130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1003C5178()
{
  result = qword_100644888;
  if (!qword_100644888)
  {
    sub_100008DE4(&qword_100644878, &qword_100532B30);
    sub_100042B08(&qword_100644890, &qword_100644898, &qword_100532B40, &protocol conformance descriptor for _AnimationView<A>);
    sub_100042B08(&qword_100643218, &qword_100643220, &unk_100530570, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644888);
  }

  return result;
}

unint64_t sub_1003C525C()
{
  result = qword_1006448A0;
  if (!qword_1006448A0)
  {
    sub_100008DE4(&qword_100644880, &qword_100532B38);
    sub_1003C5314();
    sub_100042B08(&unk_100641BF0, &qword_100640088, &qword_10052D3B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006448A0);
  }

  return result;
}

unint64_t sub_1003C5314()
{
  result = qword_1006448A8;
  if (!qword_1006448A8)
  {
    sub_100008DE4(&qword_1006448B0, &qword_100532B48);
    sub_100042B08(&qword_1006448B8, &qword_1006448C0, &qword_100532B50, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006448A8);
  }

  return result;
}

id sub_1003C54B4(uint64_t a1, uint64_t a2)
{
  sub_1003C979C(a1, v15);
  v5 = v16;
  if (v16)
  {
    sub_100008C70(v15, v16);
    v6 = *(v5 - 8);
    v7 = __chkstk_darwin();
    v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_1004DF06C();
    (*(v6 + 8))(v9, v5);
    sub_100008D24(v15);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for SliderView.PanGestureRecognizer();
  v14.receiver = v2;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, "initWithTarget:action:", v10, a2);
  swift_unknownObjectRelease();
  sub_1002DFAAC(a1);
  return v12;
}

uint64_t *SliderView.Specs.barHeight.unsafeMutableAddressor()
{
  if (qword_10063DAB8 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.barHeight;
}

uint64_t *SliderView.Specs.expandedBarHeight.unsafeMutableAddressor()
{
  if (qword_10063DAC0 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.expandedBarHeight;
}

CGFloat sub_1003C57D4()
{
  CGAffineTransformMakeScale(&v1, 1.05, 1.05);
  result = v1.a;
  *static SliderView.Specs.expandedTransform = v1;
  return result;
}

char *SliderView.Specs.expandedTransform.unsafeMutableAddressor()
{
  if (qword_10063DAC8 != -1)
  {
    swift_once();
  }

  return static SliderView.Specs.expandedTransform;
}

double static SliderView.Specs.expandedTransform.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_10063DAC8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&static SliderView.Specs.expandedTransform[16];
  *a1 = *static SliderView.Specs.expandedTransform;
  a1[1] = v1;
  result = *&static SliderView.Specs.expandedTransform[32];
  a1[2] = *&static SliderView.Specs.expandedTransform[32];
  return result;
}

uint64_t *SliderView.Specs.stretchLimit.unsafeMutableAddressor()
{
  if (qword_10063DAD0 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.stretchLimit;
}

uint64_t *SliderView.Specs.escapeHeight.unsafeMutableAddressor()
{
  if (qword_10063DAD8 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.escapeHeight;
}

id sub_1003C5A0C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_100673C20 = result;
  return result;
}

double sub_1003C5A60()
{
  v0 = Int.seconds.getter(1);
  result = v0 / Int.seconds.getter(100);
  qword_100673C28 = *&result;
  return result;
}

id SliderView.panRecognizer.getter(__n128 a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer;
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  }

  else
  {
    v5 = [objc_allocWithZone(type metadata accessor for SliderView.PanGestureRecognizer()) initWithTarget:v1 action:"panGestureRecognized:"];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void SliderView.panRecognizer.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = a1;
}

void (*SliderView.panRecognizer.modify(id *a1, __n128 a2))(uint64_t *a1)
{
  a1[1] = v2;
  *a1 = SliderView.panRecognizer.getter(a2);
  return sub_1003C5BA0;
}

void sub_1003C5BA0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = v2;
}

id SliderView.trackLayoutGuide.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.trackLayoutGuide.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SliderView.elapsedTrackColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.elapsedTrackColor.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
    swift_beginAccess();
  }

  [v6 setBackgroundColor:*v3];
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
  v9 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v8 setBackgroundColor:*(v1 + v9)];
}

uint64_t (*SliderView.elapsedTrackColor.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_1003C5EB0;
}

void sub_1003C5EB0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (*(v4 + v6))
    {
      v7 = (v3[9] + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
      swift_beginAccess();
      v8 = v3[9];
    }

    else
    {
      v8 = v3[9];
      v7 = (v8 + v3[10]);
    }

    [v5 setBackgroundColor:*v7];
    v9 = *(v8 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
    v10 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
    swift_beginAccess();
    [v9 setBackgroundColor:*(v8 + v10)];
  }

  free(v3);
}

id SliderView.remainingTrackColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.remainingTrackColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  }

  else
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  }

  v9 = (v1 + v8);
  swift_beginAccess();
  [v6 setBackgroundColor:*v9];
  [*(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack) setBackgroundColor:*(v1 + v3)];
}

uint64_t (*SliderView.remainingTrackColor.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_1003C618C;
}

void sub_1003C618C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    v7 = &OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
    if (!*(v4 + v6))
    {
      v7 = &OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
    }

    v8 = *v7;
    v10 = v3[9];
    v9 = v3[10];
    swift_beginAccess();
    [v5 setBackgroundColor:*(v10 + v8)];
    [*(v10 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack) setBackgroundColor:*(v10 + v9)];
  }

  free(v3);
}

id SliderView.trackingColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.trackingColor.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if ((*(v1 + v7) & 1) == 0)
  {
    v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
    swift_beginAccess();
  }

  [v6 setBackgroundColor:*v3];
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
  v9 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v8 setBackgroundColor:*(v1 + v9)];
}

uint64_t (*SliderView.trackingColor.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_1003C6464;
}

void sub_1003C6464(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (*(v4 + v6) == 1)
    {
      v7 = v3[9];
      v8 = (v7 + v3[10]);
    }

    else
    {
      v8 = (v3[9] + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
      swift_beginAccess();
      v7 = v3[9];
    }

    [v5 setBackgroundColor:*v8];
    v9 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
    v10 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
    swift_beginAccess();
    [v9 setBackgroundColor:*(v7 + v10)];
  }

  free(v3);
}

double SliderView.value.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SliderView.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void SliderView.isEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = SliderView.panRecognizer.getter(v4);
  [v5 setEnabled:*(v1 + v3)];
}

uint64_t (*SliderView.isEnabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1003C66EC;
}

void sub_1003C66EC(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v3[4];
    v7 = SliderView.panRecognizer.getter(v4);
    [v7 setEnabled:*(v5 + v6)];
  }

  free(v3);
}

uint64_t SliderView.isTracking.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SliderView.transitionStartValue.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  swift_beginAccess();
  return *v1;
}

void SliderView.transitionStartValue.setter(uint64_t a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = *&a1;
  *(v5 + 8) = a2 & 1;
  if (v7)
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && v6 == *&a1)
  {
    return;
  }

  sub_1003C8F54();
  if ((v5[1] & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
    if (v8)
    {
      v9 = *v5;
      v10 = v8;
      [v2 bounds];
      [v10 setConstant:v9 * CGRectGetWidth(v11)];
    }
  }
}

void (*SliderView.transitionStartValue.modify(uint64_t *a1))(uint64_t *a1, char a2, __n128 a3)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_1003C6968;
}

void sub_1003C6968(uint64_t *a1, char a2, __n128 a3)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(v4 + 32);
  if (a2)
  {
    SliderView.transitionStartValue.setter(*&v5, v6);
    goto LABEL_3;
  }

  v7 = *(v4 + 40) + *(v4 + 48);
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = v5;
  *(v7 + 8) = v6;
  if (v9)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (v8 == v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v11 = *(v4 + 40) + *(v4 + 48);
  sub_1003C8F54();
  if ((*(v11 + 8) & 1) == 0)
  {
    v12 = *(v4 + 40);
    v13 = *&v12[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
    if (v13)
    {
      v14 = *&v12[*(v4 + 48)];
      v15 = v13;
      [v12 bounds];
      [v15 setConstant:v14 * CGRectGetWidth(v17)];
    }
  }

LABEL_3:

  free(v4);
}

uint64_t sub_1003C6B24(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t sub_1003C6BAC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id SliderView.semanticContentAttribute.getter(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SliderView();
  return objc_msgSendSuper2(&v4, "semanticContentAttribute");
}

id SliderView.semanticContentAttribute.setter(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SliderView();
  objc_msgSendSuper2(&v5, "setSemanticContentAttribute:", a1);
  return [*&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] setSemanticContentAttribute:{objc_msgSend(v2, "semanticContentAttribute")}];
}

char *sub_1003C6DE8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1004DE4EC();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v15 = &v95 - v14;
  v16 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v17 = [objc_allocWithZone(UIStackView) init];
  v18 = UIView.forAutolayout.getter();

  *&v5[v16] = v18;
  v19 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  v20 = [objc_allocWithZone(UIView) init];
  v21 = UIView.forAutolayout.getter();

  *&v5[v19] = v21;
  v22 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack;
  v23 = [objc_allocWithZone(UIView) init];
  v24 = UIView.forAutolayout.getter();

  *&v5[v22] = v24;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = 0;
  v25 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator;
  *&v5[v25] = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  v26 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  *v27 = 0u;
  v27[1] = 0u;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer] = 0;
  v28 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  *&v5[v28] = [objc_allocWithZone(UILayoutGuide) init];
  v29 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  v30 = objc_opt_self();
  *&v5[v29] = [v30 whiteColor];
  v31 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *&v5[v31] = [v30 systemFillColor];
  v32 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  if (qword_10063D810 != -1)
  {
    swift_once();
  }

  v33 = static UIColor.MusicTint.normal;
  *&v5[v32] = static UIColor.MusicTint.normal;
  v34 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  *&v5[v34] = Int.seconds.getter(0);
  v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled] = 1;
  v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking] = 0;
  v35 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  *v36 = 0;
  v36[1] = 0;
  v37 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler];
  *v37 = 0;
  v37[1] = 0;
  v38 = type metadata accessor for SliderView();
  v96.receiver = v5;
  v96.super_class = v38;
  v39 = v33;
  v40 = objc_msgSendSuper2(&v96, "initWithFrame:", a1, a2, a3, a4);
  v42 = SliderView.panRecognizer.getter(v41);
  [v42 _setRequiresSystemGesturesToFail:0];

  v43 = *&v40[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer];
  v44 = v40;
  [v44 addGestureRecognizer:v43];
  v45 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  [v44 addLayoutGuide:*&v44[v45]];
  [v44 setExclusiveTouch:1];
  v46 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v47 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  [*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] addArrangedSubview:*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack]];
  [*&v44[v46] addArrangedSubview:*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack]];
  [*&v44[v46] setAxis:0];
  v48 = qword_10063DAB8;
  v49 = *&v44[v46];
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = *&static SliderView.Specs.barHeight;
  *v13 = *&static SliderView.Specs.barHeight * 0.5;
  *(v13 + 8) = 1;
  (*(v11 + 104))(v13, enum case for UIView.Corner.Radius.value(_:), v10);
  sub_1004DDE9C();
  sub_1004DE4FC();
  v51 = sub_1004DE53C();
  (*(*(v51 - 8) + 56))(v15, 0, 1, v51);
  sub_1004DE54C();

  v52 = [*&v44[v46] layer];
  [v52 setMasksToBounds:1];

  [v44 addSubview:*&v44[v46]];
  v53 = [*&v44[v47] widthAnchor];
  v54 = [v53 constraintEqualToConstant:0.0];

  v55 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint;
  v56 = *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
  *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = v54;

  v57 = [*&v44[v46] heightAnchor];
  v58 = [v57 constraintEqualToConstant:v50];

  v59 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint;
  v60 = *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = v58;

  sub_100004CB8(&qword_100642970, &qword_100529AD0);
  result = swift_allocObject();
  *(result + 1) = xmmword_1005272D0;
  v62 = *&v44[v55];
  if (v62)
  {
    v63 = result;
    *(result + 4) = v62;
    v64 = *&v44[v59];
    if (v64)
    {
      v95 = objc_opt_self();
      v63[5] = v64;
      v65 = *&v44[v46];
      v66 = v62;
      v67 = v64;
      v68 = [v65 leadingAnchor];
      v69 = [v44 leadingAnchor];

      v70 = [v68 constraintEqualToAnchor:v69];
      v63[6] = v70;
      v71 = [*&v44[v46] trailingAnchor];
      v72 = [v44 trailingAnchor];

      v73 = [v71 constraintEqualToAnchor:v72];
      v63[7] = v73;
      v74 = [*&v44[v46] topAnchor];
      v75 = [v44 topAnchor];

      v76 = [v74 constraintEqualToAnchor:v75];
      v63[8] = v76;
      v77 = [*&v44[v46] bottomAnchor];
      v78 = [v44 bottomAnchor];

      v79 = [v77 constraintEqualToAnchor:v78];
      v63[9] = v79;
      v80 = [*&v44[v46] centerYAnchor];
      v81 = [v44 centerYAnchor];

      v82 = [v80 constraintEqualToAnchor:v81];
      v63[10] = v82;
      v83 = [*&v44[v45] leadingAnchor];
      v84 = [v44 leadingAnchor];

      v85 = [v83 constraintEqualToAnchor:v84];
      v63[11] = v85;
      v86 = [*&v44[v45] trailingAnchor];
      v87 = [v44 trailingAnchor];

      v88 = [v86 constraintEqualToAnchor:v87];
      v63[12] = v88;
      v89 = [*&v44[v45] centerYAnchor];
      v90 = [v44 centerYAnchor];

      v91 = [v89 constraintEqualToAnchor:v90];
      v63[13] = v91;
      v92 = [*&v44[v45] heightAnchor];
      v93 = [v92 constraintEqualToConstant:v50];

      v63[14] = v93;
      sub_100006F10(0, qword_10063F500, NSLayoutConstraint_ptr);
      isa = sub_1004DD85C().super.isa;

      [v95 activateConstraints:isa];

      return v44;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SliderView.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SliderView();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 bounds];
  v1 = &v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  if (!CGRectEqualToRect(v11, *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds]))
  {
    v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v2)
    {
      v3 = v2;
      [v0 bounds];
      Width = CGRectGetWidth(v12);
      v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
      swift_beginAccess();
      [v3 setConstant:Width * *&v0[v5]];

      [v0 bounds];
      *v1 = v6;
      *(v1 + 1) = v7;
      *(v1 + 2) = v8;
      *(v1 + 3) = v9;
    }

    else
    {
      __break(1u);
    }
  }
}

void SliderView.setValue(_:animated:)(char a1, double a2)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a2 <= 1.0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v4 != *&v2[v5])
  {
    v6 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v6)
    {
      v7 = v6;
      [v2 bounds];
      [v7 setConstant:v4 * CGRectGetWidth(v16)];

      sub_1003C8808();
      v8 = swift_allocObject();
      *(v8 + 16) = v2;
      *(v8 + 24) = v4;
      if (a1)
      {
        v9 = vabdd_f64(*&v2[v5], v4) * 0.25;
        if (v9 > 0.1)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0.1;
        }

        v11 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = sub_1003C9364;
        *(v12 + 24) = v8;
        aBlock[4] = sub_10001185C;
        aBlock[5] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100012680;
        aBlock[3] = &unk_1005F2C30;
        v13 = _Block_copy(aBlock);
        v14 = v2;

        [v11 animateWithDuration:4 delay:v13 options:0 animations:v10 completion:0.0];

        _Block_release(v13);
      }

      else
      {
        *&v2[v5] = v4;
        [v2 layoutIfNeeded];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003C7BE0(void *a1)
{
  v3 = [a1 state];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v34 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v34] != 1)
      {
        return;
      }

      v35 = swift_allocObject();
      *(v35 + 16) = v1;
      v1[v34] = 0;
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = v1;
      *(v36 + 32) = sub_1003C9890;
      *(v36 + 40) = v35;
      v26 = objc_opt_self();
      v55 = sub_1003C9BFC;
      v56 = v36;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v27 = &unk_1005F2DD8;
    }

    else
    {
      if (v3 != 4)
      {
        return;
      }

      v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v23] != 1)
      {
        return;
      }

      v24 = swift_allocObject();
      *(v24 + 16) = v1;
      v1[v23] = 0;
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      *(v25 + 24) = v1;
      *(v25 + 32) = sub_1003C9874;
      *(v25 + 40) = v24;
      v26 = objc_opt_self();
      v55 = sub_1003C9880;
      v56 = v25;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v27 = &unk_1005F2D60;
    }

    v53 = sub_100012680;
    v54 = v27;
    v37 = _Block_copy(&aBlock);
    v38 = v1;

    [v26 _animateUsingSpringWithDuration:2 delay:v37 options:0 mass:1.0 stiffness:0.0 damping:2.0 initialVelocity:500.0 animations:40.0 completion:0.0];
    goto LABEL_39;
  }

  if (v3 == 1)
  {
    v28 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (!v28)
    {
      goto LABEL_54;
    }

    [v28 constant];
    v29 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
    *v29 = v30;
    v29[8] = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v1;
    v32 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (v1[v32] == 1)
    {
      v33 = v1;

      return;
    }

    v1[v32] = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = 1;
    *(v39 + 24) = v1;
    *(v39 + 32) = sub_1003C98B0;
    *(v39 + 40) = v31;
    v40 = objc_opt_self();
    v55 = sub_1003C9BFC;
    v56 = v39;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_100012680;
    v54 = &unk_1005F2E50;
    v37 = _Block_copy(&aBlock);
    v41 = v1;

    [v40 _animateUsingSpringWithDuration:2 delay:v37 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:288.0 animations:26.5 completion:0.0];
LABEL_39:

    _Block_release(v37);
    return;
  }

  if (v3 != 2)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (v1[v4] != 1 || (v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth + 8] & 1) != 0)
  {
    return;
  }

  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
  [a1 translationInView:v1];
  v6 = v8.n128_f64[0];
  v8.n128_f64[0] = fabs(v7);
  if (qword_10063DAD8 != -1)
  {
    v50 = v8.n128_u64[0];
    swift_once();
    v8.n128_u64[0] = v50;
  }

  if (v8.n128_f64[0] >= *&static SliderView.Specs.escapeHeight)
  {
    v42 = SliderView.panRecognizer.getter(v8);
    [v42 setState:4];

    return;
  }

  v9 = [v1 effectiveUserInterfaceLayoutDirection];
  v10 = -v6;
  if (v9 != 1)
  {
    v10 = v6;
  }

  v11 = v5 + v10;
  [v1 bounds];
  Width = CGRectGetWidth(v58);
  if (Width >= v11)
  {
    Width = v11;
  }

  if (Width < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = Width;
  }

  v14 = v1;
  [v1 bounds];
  v15 = v13 / CGRectGetWidth(v59);
  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  if (v15 <= 1.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1.0;
  }

  v57 = 14;
  v17 = sub_1002FEAD0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v17) & 1) == 0)
  {
    v22 = 0;
    v18 = v14;
    goto LABEL_43;
  }

  v18 = v1;
  v19 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  if ((v19[1] & 1) == 0)
  {
    v20 = *v19;
    if (qword_10063DAE8 != -1)
    {
      swift_once();
    }

    v21 = v20 + *&qword_100673C28;
    if (v20 - *&qword_100673C28 <= v20 + *&qword_100673C28)
    {
      if (v20 - *&qword_100673C28 <= v16)
      {
        v22 = v16 <= v21;
        if (v16 <= v21)
        {
          v16 = v20;
        }

        goto LABEL_43;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

LABEL_27:
  v22 = 0;
LABEL_43:
  v43 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v16 != *&v18[v43])
  {
    v44 = v16 == 1.0;
    if (v16 == 0.0)
    {
      v44 = 1;
    }

    if (v44 || v22)
    {
      [*&v18[OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator] impactOccurred];
    }
  }

  SliderView.setValue(_:animated:)(0, v16);
  v45 = v14;
  v46 = &v14[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  swift_beginAccess();
  v47 = *v46;
  if (*v46)
  {
    v48 = *(v46 + 1);
    v49 = *&v45[v43];

    v47(1, v49);
    sub_10000DE74(v47, v48);
  }
}

void sub_1003C82F4(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    sub_10000DE74(v2, v3);
  }
}

void sub_1003C8368(uint64_t a1, char a2)
{
  v4 = a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler;
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);
    v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
    swift_beginAccess();
    v8 = *(a1 + v7);

    v5(a2 & 1, v8);
    sub_10000DE74(v5, v6);
  }
}

void sub_1003C8488(char a1, _BYTE *a2, void (*a3)(id))
{
  v6 = sub_1004DE4EC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v12 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  if ((a1 & 1) == 0)
  {
    if (v12)
    {
      v16 = qword_10063DAB8;
      v14 = v12;
      if (v16 != -1)
      {
        swift_once();
      }

      v15 = &static SliderView.Specs.barHeight;
      goto LABEL_10;
    }

LABEL_21:
    __break(1u);
    return;
  }

  if (!v12)
  {
    __break(1u);
    goto LABEL_21;
  }

  v13 = qword_10063DAC0;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = &static SliderView.Specs.expandedBarHeight;
LABEL_10:
  v17 = *v15;
  [v14 setConstant:*v15];

  *v9 = v17 * 0.5;
  *(v9 + 8) = 1;
  (*(v7 + 104))(v9, enum case for UIView.Corner.Radius.value(_:), v6);
  sub_1004DDE9C();
  sub_1004DE4FC();
  v18 = sub_1004DE53C();
  (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  sub_1004DE54C();
  v19 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark];
  if (v19)
  {
    v20 = 0.0;
    if (a1)
    {
      v20 = 1.0;
    }

    v19 = [v19 setAlpha:v20];
  }

  if (a3)
  {
    a3(v19);
  }

  v21 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack];
  v22 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (a2[v22] == 1)
  {
    v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  }

  else
  {
    v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  }

  v24 = &a2[v23];
  swift_beginAccess();
  [v21 setBackgroundColor:*v24];
  v25 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack];
  v26 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v25 setBackgroundColor:*&a2[v26]];
  sub_1003C8808();
  [a2 layoutIfNeeded];
}

void sub_1003C8808()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint);
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v1;
  [v2 constant];
  v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint);
  if (!v5)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v6 = v4;
  v7 = v4 * 0.5;
  [v5 constant];
  v9 = v8;
  [*(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView) frame];
  Width = CGRectGetWidth(v24);
  v11 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v6 * 0.5 startAngle:v6 * 0.5 endAngle:v6 * 0.5 clockwise:{1.57079633, 4.71238898}];
  v12 = v11;
  v13 = Width - v7;
  if (v9 <= Width - v7)
  {
    [v11 addLineToPoint:{v9, 0.0}];
    [v12 addLineToPoint:{v9, v6}];
  }

  else if (v9 >= Width)
  {
    [v11 addLineToPoint:{Width - v7, 0.0}];
    [v12 addArcWithCenter:1 radius:Width - v7 startAngle:v6 * 0.5 endAngle:v6 * 0.5 clockwise:{4.71238898, 1.57079633}];
  }

  else
  {
    v14 = v7 - (Width - v9);
    v15 = 1.57079633 - acos(v14 / v7);
    v16 = sqrt(v7 * v7 - v14 * v14);
    v17 = v16 + v16;
    [v12 addLineToPoint:{v13, 0.0}];
    [v12 addArcWithCenter:1 radius:v13 startAngle:v7 endAngle:v7 clockwise:{4.71238898, (v15 + 4.71238898)}];
    [v12 currentPoint];
    v19 = v18;
    [v12 currentPoint];
    [v12 addLineToPoint:{v19, v17 + v20}];
    [v12 addArcWithCenter:1 radius:v13 startAngle:v7 endAngle:v7 clockwise:{(1.57079633 - v15), 1.57079633}];
  }

  [v12 closePath];
  v21 = [v3 layer];
  v22 = [v12 CGPath];
  [v21 setShadowPath:v22];
}

Swift::Void __swiftcall SliderView.addGlowIfNeeded()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow;
  if (!*&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow])
  {
    v2 = [objc_allocWithZone(UIView) init];
    v3 = v0;
    v4 = UIView.forAutolayout.getter();

    v5 = [v4 layer];
    v6 = [objc_opt_self() whiteColor];
    v7 = [v6 CGColor];

    [v5 setShadowColor:v7];
    v8 = [v4 layer];
    [v8 setShadowOpacity:0.0];

    v9 = [v4 layer];
    [v9 setShadowOffset:{0.0, 0.0}];

    v10 = [v4 layer];
    [v10 setShadowRadius:4.0];

    v11 = *&v3[v1];
    *&v3[v1] = v4;
    v12 = v4;

    [v3 addSubview:v12];
    sub_1003C8808();
    sub_100006F10(0, &qword_100644F50, UIView_ptr);
    if (qword_10063DAE0 != -1)
    {
      swift_once();
    }

    v13 = qword_100673C20;
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    v15 = v12;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v13, 0, sub_1003C959C, v14, 0, 0, 0.65, 0.0);
  }
}

Swift::Void __swiftcall SliderView.removeGlowIfNeeded()()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow];
  if (v1)
  {
    sub_100006F10(0, &qword_100644F50, UIView_ptr);
    v2 = qword_10063DAE0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = qword_100673C20;
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = v3;
    v8 = v0;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v4, 0, sub_1003C95FC, v5, sub_1003C961C, v6, 0.65, 0.0);
  }
}

void sub_1003C8EF0(void *a1, float a2)
{
  v4 = [a1 layer];
  *&v3 = a2;
  [v4 setShadowOpacity:v3];
}

void sub_1003C8F54()
{
  v1 = v0;
  v2 = sub_1002FEAD0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = &v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
    swift_beginAccess();
    v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark;
    v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark];
    if (v3[1])
    {
      [v5 removeFromSuperview];
      v6 = *&v1[v4];
      *&v1[v4] = 0;

      isa = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
      *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = 0;
    }

    else
    {
      if (v5)
      {
        return;
      }

      v8 = *v3;
      v9 = [objc_allocWithZone(UIView) init];
      v10 = UIView.forAutolayout.getter();

      v11 = [objc_opt_self() blackColor];
      [v10 setBackgroundColor:v11];

      v12 = [v10 layer];
      [v12 setCompositingFilter:kCAFilterDestOut];

      v13 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      v14 = 0.0;
      if (v1[v13])
      {
        v14 = 1.0;
      }

      [v10 setAlpha:v14];
      [v1 addSubview:v10];
      v15 = *&v1[v4];
      *&v1[v4] = v10;
      v16 = v10;

      v17 = [v16 leadingAnchor];
      v18 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView];
      v19 = [v18 leadingAnchor];
      [v1 bounds];
      v20 = [v17 constraintEqualToAnchor:v19 constant:v8 * CGRectGetWidth(v32)];

      v21 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint;
      v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
      *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = v20;

      sub_100004CB8(&qword_100642970, &qword_100529AD0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1005127F0;
      v24 = [v16 widthAnchor];
      v25 = [v24 constraintEqualToConstant:2.0];

      *(v23 + 32) = v25;
      v26 = [v16 heightAnchor];
      v27 = [v18 heightAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v23 + 40) = v28;
      v29 = *&v1[v21];
      if (!v29)
      {
        __break(1u);
        return;
      }

      v30 = objc_opt_self();
      *(v23 + 48) = v29;
      sub_100006F10(0, qword_10063F500, NSLayoutConstraint_ptr);
      v31 = v29;
      isa = sub_1004DD85C().super.isa;

      [v30 activateConstraints:isa];
    }
  }
}

uint64_t sub_1003C932C()
{

  return swift_deallocObject();
}

id sub_1003C9364()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  *&v1[v3] = v2;
  return [v1 layoutIfNeeded];
}

id sub_1003C93E0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1003C954C()
{

  return swift_deallocObject();
}

double sub_1003C9584(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003C95C4()
{

  return swift_deallocObject();
}

void sub_1003C961C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
}

double sub_1003C9634@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void sub_1003C968C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_1003C96E0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_1003C9738(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1003C979C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100644FB0, &unk_1005293E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003C980C()
{
  result = qword_1006449E8;
  if (!qword_1006449E8)
  {
    sub_100006F10(255, &qword_1006449E0, UITouch_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006449E8);
  }

  return result;
}

uint64_t sub_1003C98D0()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

void sub_1003C9918()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v3 = [objc_allocWithZone(UIStackView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  v6 = [objc_allocWithZone(UIView) init];
  v7 = UIView.forAutolayout.getter();

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack;
  v9 = [objc_allocWithZone(UIView) init];
  v10 = UIView.forAutolayout.getter();

  *(v1 + v8) = v10;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint) = 0;
  v11 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator;
  *(v1 + v11) = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  v12 = v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds);
  *v13 = 0u;
  v13[1] = 0u;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = 0;
  v14 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  *(v1 + v14) = [objc_allocWithZone(UILayoutGuide) init];
  v15 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  v16 = objc_opt_self();
  *(v1 + v15) = [v16 whiteColor];
  v17 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *(v1 + v17) = [v16 systemFillColor];
  v18 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  if (qword_10063D810 != -1)
  {
    swift_once();
  }

  *(v1 + v18) = static UIColor.MusicTint.normal;
  v19 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  *(v1 + v19) = Int.seconds.getter(0);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking) = 0;
  v20 = v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler);
  *v22 = 0;
  v22[1] = 0;
  sub_1004DECCC();
  __break(1u);
}

uint64_t SymbolButton.CustomView.init(view:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, int64x2_t a3@<Q0>, int64x2_t a4@<Q1>)
{
  a3.i64[0] = 0;
  *a2 = result;
  a4.i64[0] = result;
  v4 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(a4, a3)).i64[0], 0);
  v5 = vandq_s8(*&UIEdgeInsetsZero.bottom, v4);
  v6 = 0x3FF0000000000000;
  *(a2 + 8) = vandq_s8(*&UIEdgeInsetsZero.top, v4);
  if (!result)
  {
    v6 = 0;
  }

  *(a2 + 24) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = 0;
  return result;
}

BOOL sub_1003C9C54(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1004DF26C();
  v4 = qword_100533448[a1];
  sub_1004DF27C(v4);
  v5 = sub_1004DF2BC();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_100533448[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1003C9D34(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004DCDAC();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1003DF6DC(&qword_100641C20, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator), v7 = sub_1004DD2AC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1003DF6DC(&qword_100641C28, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v15 = sub_1004DD35C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1003C9F4C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_1004DF26C();
    sub_1004DF27C(a1 & 1);
    v5 = sub_1004DF2BC();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t SymbolButton.updateConfigurationIfNeeded(_:animation:)(uint64_t a1, uint64_t a2, id a3, uint64_t a4, int a5)
{
  v6 = v5;
  v81 = a5;
  v82 = a4;
  v80 = a2;
  v79 = sub_1004D98EC();
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100644070, &unk_100531450);
  __chkstk_darwin();
  v11 = &v74 - v10;
  v12 = type metadata accessor for SymbolButton.Configuration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000108DC(a1, v11, &qword_100644070, &unk_100531450);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_1003DF60C(&v6[v17], v15, type metadata accessor for SymbolButton.Configuration);
    if (v16(v11, 1, v12) != 1)
    {
      sub_10001074C(v11, &qword_100644070, &unk_100531450);
    }
  }

  else
  {
    sub_1003DF674(v11, v15, type metadata accessor for SymbolButton.Configuration);
  }

  v18 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  if (v6[v18])
  {
    sub_1002E009C(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
    *(v15 + 200) = xmmword_100512770;
    *(v15 + 27) = 0;
    *(v15 + 28) = 0;
  }

  v19 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  v20 = &selRef_setShadowPathIsBounds_;
  if ((v6[v19] & 1) != 0 || *&v15[*(v12 + 68)] != 0.0)
  {
    [v6 state];
    v21 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
    swift_beginAccess();
    v22 = v6[v21];
    v83 = v12;
    v76 = v18;
    if (v22 & 1) != 0 || (v23 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted, swift_beginAccess(), (v6[v23]) || (v24 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected, swift_beginAccess(), v6[v24] == 1))
    {
      if ((v6[v18] & 1) == 0)
      {
        v74 = v21;
        v75 = a3;
        if (qword_10063DB28 != -1)
        {
          swift_once();
        }

        v26 = static SymbolButton.Background.normal;
        v25 = qword_100673CE8;
        v28 = qword_100673CF0;
        v27 = qword_100673CF8;
        v29 = *(v15 + 25);
        v30 = *(v15 + 26);
        v32 = *(v15 + 27);
        v31 = *(v15 + 28);

        v33 = v25;
        sub_1002E009C(v29, v30, v32, v31);
        *(v15 + 25) = v26;
        *(v15 + 26) = v25;
        *(v15 + 27) = v28;
        *(v15 + 28) = v27;
        a3 = v75;
        v12 = v83;
        v20 = &selRef_setShadowPathIsBounds_;
        v21 = v74;
      }

      v34 = [v6 v20[234]];
      v35 = [v34 userInterfaceIdiom];

      if (v35 == 6)
      {
        v36 = objc_opt_self();
        v37 = [v36 labelColor];

        *(v15 + 14) = v37;
        v12 = v83;
        v38 = [v36 labelColor];

        *(v15 + 22) = v38;
      }

      *&v15[*(v12 + 68)] = 0x3FF0000000000000;
      v18 = v76;
    }

    if (([v6 state] & 2) != 0 && v6[v21] == 1)
    {
      *&v15[*(v12 + 68)] = 0x3FD0000000000000;
    }

    if ([v6 state])
    {
      v39 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
      swift_beginAccess();
      v40 = v83;
      if (v6[v39] == 1)
      {
        if ((v6[v18] & 1) == 0)
        {
          v75 = a3;
          if (qword_10063DB30 != -1)
          {
            swift_once();
          }

          v41 = static SymbolButton.Background.highlighted;
          v42 = qword_100673D08;
          v43 = qword_100673D18;
          v74 = qword_100673D10;
          v44 = *(v15 + 25);
          v45 = *(v15 + 26);
          v46 = *(v15 + 27);
          v47 = *(v15 + 28);

          v48 = v42;
          sub_1002E009C(v44, v45, v46, v47);
          *(v15 + 25) = v41;
          *(v15 + 26) = v42;
          *(v15 + 27) = v74;
          *(v15 + 28) = v43;
          a3 = v75;
          v40 = v83;
          v20 = &selRef_setShadowPathIsBounds_;
        }

        v49 = *(v40 + 68);
        *&v15[v49] = 0x3FE0000000000000;
        v50 = [v6 v20[234]];
        v51 = [v50 userInterfaceIdiom];

        v52 = v51 == 6;
        v18 = v76;
        if (v52)
        {
          v53 = objc_opt_self();
          v54 = [v53 labelColor];

          *(v15 + 14) = v54;
          v55 = [v53 labelColor];

          *(v15 + 22) = v55;
          *&v15[v49] = 0x3FF0000000000000;
          if ([v6 showsMenuAsPrimaryAction])
          {
            if ([v6 isContextMenuInteractionEnabled])
            {
              v75 = v55;
              v56 = v54;
              if ((v6[v18] & 1) == 0)
              {
                sub_1002E009C(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
                *(v15 + 25) = 0x3FF0000000000000;
                *(v15 + 26) = 0;
                *(v15 + 27) = 0;
                *(v15 + 28) = 0;
              }

              v57 = [v53 blackColor];

              *(v15 + 14) = v57;
              v58 = [v53 blackColor];

              *(v15 + 22) = v58;
            }
          }
        }
      }
    }

    if (([v6 state] & 4) != 0)
    {
      v59 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
      swift_beginAccess();
      v60 = v6[v59];
      v61 = v83;
      if (v60 == 1)
      {
        if ((v6[v18] & 1) == 0)
        {
          sub_1002E009C(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
          *(v15 + 25) = 0x3FF0000000000000;
          *(v15 + 26) = 0;
          *(v15 + 27) = 0;
          *(v15 + 28) = 0;
        }

        v62 = *(v61 + 68);
        *&v15[v62] = 0x3FF0000000000000;
        v63 = [v6 v20[234]];
        v64 = [v63 userInterfaceIdiom];

        if (v64 == 6)
        {
          v65 = objc_opt_self();
          v66 = [v65 blackColor];

          *(v15 + 14) = v66;
          v67 = [v65 blackColor];

          *(v15 + 22) = v67;
        }

        else if ([v6 state])
        {
          *&v15[v62] = 0x3FE0000000000000;
        }
      }
    }
  }

  v68 = &v6[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v69 = *v68;
  if (*v68)
  {
    v70 = *(v68 + 1);

    v71 = [v6 v20[234]];
    v72 = v77;
    sub_1004D98CC();
    [v6 isEnabled];
    sub_1004D987C();
    [v6 isSelected];
    sub_1004D989C();
    [v6 isHighlighted];
    sub_1004D98BC();
    v69(v72, v15);
    sub_10000DE74(v69, v70);
    (*(v78 + 8))(v72, v79);
  }

  SymbolButton.setConfiguration(_:animation:updates:)(v15, v80, a3, v82, v81 & 1, _swiftEmptyArrayStorage);
  return sub_1003DD438(v15, type metadata accessor for SymbolButton.Configuration);
}

__n128 static SymbolButton.Material.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v6 = 0uLL;
  v7 = 0;
  v8 = 2;
  v9 = 0uLL;
  a1(&v6);
  v3 = v7;
  v4 = v8;
  result = v9;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = result;
  return result;
}

double static SymbolButton.Symbol.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v9 = 0uLL;
  v13 = 0uLL;
  v17 = 0;
  *&v16[7] = 0;
  *&v10 = 0;
  *(&v10 + 1) = UIFontTextStyleSubheadline;
  *&v11 = 0;
  BYTE8(v11) = 1;
  v12 = xmmword_1005272E0;
  v14[0] = -1;
  *&v14[16] = 0;
  *&v14[24] = 0x3FF0000000000000;
  *&v14[1] = *v16;
  v15 = 0;
  v4 = UIFontTextStyleSubheadline;
  a1(&v9);
  v5 = *v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v5;
  *(a2 + 96) = *&v14[16];
  *(a2 + 112) = v15;
  v6 = v10;
  *a2 = v9;
  *(a2 + 16) = v6;
  result = *&v11;
  v8 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v8;
  return result;
}

__n128 static SymbolButton.Title.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v7 = 0uLL;
  v8.n128_u64[0] = UIFontTextStyleSubheadline;
  v8.n128_f64[1] = UIFontWeightSemibold;
  v9 = 0uLL;
  v10 = 0x3FF0000000000000uLL;
  LOBYTE(v11) = 0;
  *(&v11 + 1) = 0;
  v4 = UIFontTextStyleSubheadline;
  a1(&v7);
  v5 = v10;
  *(a2 + 32) = v9;
  *(a2 + 48) = v5;
  *(a2 + 64) = v11;
  result = v8;
  *a2 = v7;
  *(a2 + 16) = result;
  return result;
}

uint64_t static SymbolButton.Background.with(_:)(void (*a1)(uint64_t *))
{
  v2 = 0x3FF0000000000000;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  a1(&v2);
  return v3;
}

char *SymbolButton.__allocating_init(configuration:handler:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1003DBAE0(a1, a2, a3);
  sub_10000DE74(a2, a3);
  return v8;
}

char *SymbolButton.init(configuration:handler:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1003DBAE0(a1, a2, a3);
  sub_10000DE74(a2, a3);
  return v5;
}

void sub_1003CACD8(void *a1, uint64_t a2)
{
  if ([a1 sender])
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      v2 = &v5[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler];
      swift_beginAccess();
      v3 = *v2;
      if (*v2)
      {
        v4 = *(v2 + 1);

        v3();

        sub_10000DE74(v3, v4);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_10001074C(v8, &qword_100644FB0, &unk_1005293E0);
  }
}

id SymbolButton._monochromaticTreatment.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SymbolButton(0);
  return objc_msgSendSuper2(&v2, "_monochromaticTreatment");
}

void SymbolButton._monochromaticTreatment.setter(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SymbolButton(0);
  objc_msgSendSuper2(&v5, "_setMonochromaticTreatment:", a1);
  v3 = sub_1003D386C();
  [v3 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];

  v4 = sub_1003D36F4();
  [v4 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];
}

uint64_t SymbolButton.debugLabel.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double SymbolButton.debugLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t SymbolButton.configurationProvider.setter(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_100644070, &unk_100531450);
  __chkstk_darwin();
  v6 = &v12 - v5;
  v7 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  sub_10000DE64(a1, a2);
  sub_10000DE74(v8, v9);
  v10 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
  sub_10000DE74(a1, a2);
  return sub_10001074C(v6, &qword_100644070, &unk_100531450);
}

uint64_t (*SymbolButton.configurationProvider.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  v5 = *(*(sub_100004CB8(&qword_100644070, &unk_100531450) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  *(v4 + 32) = v6;
  swift_beginAccess();
  return sub_1003CB348;
}

void sub_1003CB348(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v4, 0, 0, 0, 1);
    sub_10001074C(v4, &qword_100644070, &unk_100531450);
  }

  free(v4);

  free(v3);
}

uint64_t SymbolButton.configurationState.getter()
{
  v1 = [v0 traitCollection];
  sub_1004D98CC();
  [v0 isEnabled];
  sub_1004D987C();
  [v0 isSelected];
  sub_1004D989C();
  [v0 isHighlighted];
  return sub_1004D98BC();
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenHighlighted.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.automaticallyAdjustsAlphaWhenHighlighted.modify(uint64_t *a1))(void ***a1)
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
  *(v3 + 24) = v1;
  v5 = *(*(sub_100004CB8(&qword_100644070, &unk_100531450) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003DFF24;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenSelected.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1003CB6AC(char a1, uint64_t *a2)
{
  v5 = a1 & 1;
  sub_100004CB8(&qword_100644070, &unk_100531450);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  v9 = *(v2 + v8);
  *(v2 + v8) = a1;
  if (v9 != v5)
  {
    v10 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v7, 0, 0, 0, 1);
    sub_10001074C(v7, &qword_100644070, &unk_100531450);
  }
}

void (*SymbolButton.automaticallyAdjustsAlphaWhenSelected.modify(uint64_t *a1))(void ***a1)
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
  *(v3 + 24) = v1;
  v5 = *(*(sub_100004CB8(&qword_100644070, &unk_100531450) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003DFF24;
}

void sub_1003CB8A4(void ***a1)
{
  v1 = *a1;
  v2 = (*a1)[5];
  v3 = (*a1)[3];
  v4 = *(*a1 + 48);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    v6 = v1[4];
    v7 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
    sub_10001074C(v6, &qword_100644070, &unk_100531450);
  }

  free(v1[4]);

  free(v1);
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenDisabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.automaticallyAdjustsAlphaWhenDisabled.modify(uint64_t *a1))(void ***a1)
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
  *(v3 + 24) = v1;
  v5 = *(*(sub_100004CB8(&qword_100644070, &unk_100531450) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003DFF24;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenHidden.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.automaticallyAdjustsAlphaWhenHidden.modify(uint64_t *a1))(void ***a1)
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
  *(v3 + 24) = v1;
  v5 = *(*(sub_100004CB8(&qword_100644070, &unk_100531450) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003DFF24;
}

uint64_t SymbolButton.prefersSolariumTreatment.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.prefersSolariumTreatment.modify(uint64_t *a1))(void ***)
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
  *(v3 + 24) = v1;
  v5 = *(*(sub_100004CB8(&qword_100644070, &unk_100531450) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003CBCE4;
}

uint64_t SymbolButton.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  return sub_1003DF60C(v1 + v3, a1, type metadata accessor for SymbolButton.Configuration);
}

void (*SymbolButton.configuration.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
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
  *(v3 + 24) = v1;
  v5 = *(*(type metadata accessor for SymbolButton.Configuration(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 32) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 32) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 40) = v6;
  v8 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003DF60C(v1 + v8, v7, type metadata accessor for SymbolButton.Configuration);
  return sub_1003CBEB8;
}

void sub_1003CBEB8(uint64_t a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    sub_1003DF60C(*(*a1 + 40), v4, type metadata accessor for SymbolButton.Configuration);
    SymbolButton.setConfiguration(_:animation:updates:)(v4, 0, 0, 0, 1, _swiftEmptyArrayStorage);
    sub_1003DD438(v4, type metadata accessor for SymbolButton.Configuration);
  }

  else
  {
    SymbolButton.setConfiguration(_:animation:updates:)(*(*a1 + 40), 0, 0, 0, 1, _swiftEmptyArrayStorage);
  }

  sub_1003DD438(v5, type metadata accessor for SymbolButton.Configuration);
  free(v5);
  free(v4);

  free(v3);
}

uint64_t *SymbolButton.Background.normal.unsafeMutableAddressor()
{
  if (qword_10063DB28 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.normal;
}

uint64_t *SymbolButton.Background.highlighted.unsafeMutableAddressor()
{
  if (qword_10063DB30 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.highlighted;
}

uint64_t SymbolButton.Update.alongside.getter()
{
  v1 = *v0;
  sub_10000DE64(*v0, v0[1]);
  return v1;
}

uint64_t SymbolButton.Update.alongside.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10000DE74(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SymbolButton.Update.completion.getter()
{
  v1 = *(v0 + 32);
  sub_10000DE64(v1, *(v0 + 40));
  return v1;
}

uint64_t SymbolButton.Update.completion.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10000DE74(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SymbolButton.Update.init(alongside:animationOptions:completion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a7;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

void SymbolButton.setConfiguration(_:animation:updates:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v172 = a6;
  LODWORD(v171) = a5;
  v165 = a4;
  v163 = a3;
  v169 = *&a2;
  ObjectType = swift_getObjectType();
  v175 = sub_100004CB8(&qword_10063E4C8, &qword_100529170);
  __chkstk_darwin();
  v9 = &v159 - v8;
  v10 = sub_1004D82AC();
  v173 = *(v10 - 8);
  v174 = v10;
  __chkstk_darwin();
  v12 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v166 = *(v13 - 8);
  __chkstk_darwin();
  v176 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v170 = &v159 - v15;
  __chkstk_darwin();
  v168 = &v159 - v16;
  __chkstk_darwin();
  v18 = &v159 - v17;
  v167 = v19;
  __chkstk_darwin();
  v21 = &v159 - v20;
  v22 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003DF60C(v6 + v22, v21, type metadata accessor for SymbolButton.Configuration);
  v23 = a1;
  v24 = _s11MusicCoreUI12SymbolButtonC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(a1, v21);
  v25 = 0;
  v26 = 0;
  if (v24)
  {
    goto LABEL_62;
  }

  sub_1003DF60C(v23, v18, type metadata accessor for SymbolButton.Configuration);
  swift_beginAccess();
  v160 = v18;
  v161 = v6;
  sub_1003DC954(v18, v6 + v22);
  swift_endAccess();
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v162 = sub_1004D827C();
  v177 = v27;
  v173[1](v12, v174);
  v28 = *(v13 + 36);
  v29 = *(v175 + 12);
  v175 = v21;
  sub_1000108DC(&v21[v28], v9, &qword_100644A50, &qword_100528DC0);
  sub_1000108DC(v23 + v28, &v9[v29], &qword_100644A50, &qword_100528DC0);
  v30 = sub_1004DE53C();
  v31 = *(*(v30 - 8) + 48);
  v32 = v31(v9, 1, v30);
  v33 = v31(&v9[v29], 1, v30);
  v34 = v23;
  if (v32 == 1)
  {
    if (v33 != 1)
    {
      sub_10001074C(&v9[v29], &qword_100644A50, &qword_100528DC0);
LABEL_6:
      sub_10001074C(v9, &qword_100644A50, &qword_100528DC0);
      v35 = v161;
      *(v161 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) = 1;
      v36 = v177;
      goto LABEL_8;
    }
  }

  else if (v33 == 1)
  {
    goto LABEL_6;
  }

  sub_10001074C(v9, &qword_10063E4C8, &qword_100529170);
  v36 = v177;
  v35 = v161;
LABEL_8:
  v173 = v13;
  [v35 invalidateIntrinsicContentSize];
  [v35 accessibilityUpdateSymbolButton];
  v37 = *(v34 + 8);
  v178 = v34;
  if (v37)
  {
    v38 = *(v34 + 16);
    v39 = sub_1004DD3FC();
    v40 = objc_opt_self();
    v41 = [v40 _systemImageNamed:v39];

    if (!v41)
    {
      v42 = sub_1004DD3FC();
      v41 = [v40 imageNamed:v42 inBundle:v38];
    }
  }

  else
  {
    v41 = 0;
  }

  [v35 setLargeContentImage:v41];

  v43 = [v35 window];
  if (!v43 || (v43, (v171 & 1) != 0) || (v44 = v169, v169 <= 0.0))
  {
    v57 = v178;
    if (qword_10063D808 != -1)
    {
      swift_once();
    }

    v58 = sub_1004D966C();
    v59 = sub_100035430(v58, qword_1006736D8);
    v60 = v176;
    sub_1003DF60C(v57, v176, type metadata accessor for SymbolButton.Configuration);
    v61 = v35;

    v62 = sub_1004D964C();
    v63 = sub_1004DDF6C();

    v64 = os_log_type_enabled(v62, v63);
    v174 = v59;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      *&aBlock = v171;
      *v65 = 136446722;
      v66 = &v61[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
      swift_beginAccess();
      v67 = v66[1];
      if (v67)
      {
        v68 = *v66;
        v69 = v67;
      }

      else
      {
        v70 = v61;
        v71 = [v70 description];
        v68 = sub_1004DD43C();
        v69 = v72;

        v60 = v176;
      }

      v73 = sub_1002E5CC4(v68, v69, &aBlock);

      *(v65 + 4) = v73;
      *(v65 + 12) = 2082;
      *(v65 + 14) = sub_1002E5CC4(v162, v36, &aBlock);
      *(v65 + 22) = 2082;
      v74 = SymbolButton.Configuration.description.getter();
      v76 = v75;
      sub_1003DD438(v60, type metadata accessor for SymbolButton.Configuration);
      v77 = sub_1002E5CC4(v74, v76, &aBlock);

      *(v65 + 24) = v77;
      _os_log_impl(&_mh_execute_header, v62, v63, "[%{public}s] UpdateID=%{public}s — Applying new configuration=%{public}s", v65, 0x20u);
      swift_arrayDestroy();

      v57 = v178;
    }

    else
    {

      sub_1003DD438(v60, type metadata accessor for SymbolButton.Configuration);
    }

    sub_1003D4C48(v57);
    v78 = *(v172 + 16);
    v21 = v175;
    if (v78)
    {
      v79 = (v172 + 72);
      while (1)
      {
        v80 = *(v79 - 5);
        v81 = *(v79 - 4);
        v82 = *(v79 - 1);
        v83 = *v79;
        v84 = *v79;
        if (v80)
        {
          break;
        }

        sub_10000DE64(v82, v84);
        if (v82)
        {
          goto LABEL_35;
        }

LABEL_30:
        v79 += 6;
        sub_10000DE74(v80, v81);
        if (!--v78)
        {
          goto LABEL_36;
        }
      }

      sub_10000DE64(v82, v84);
      sub_10000DE64(v80, v81);
      v80(v61);
      if (!v82)
      {
        goto LABEL_30;
      }

LABEL_35:
      v82(v61);
      sub_10000DE74(v82, v83);
      goto LABEL_30;
    }

LABEL_36:
    v85 = *(v21 + 5);
    v192[4] = *(v21 + 4);
    v192[5] = v85;
    v192[6] = *(v21 + 6);
    v193 = *(v21 + 14);
    v86 = *(v21 + 1);
    v192[0] = *v21;
    v192[1] = v86;
    v87 = *(v21 + 3);
    v192[2] = *(v21 + 2);
    v192[3] = v87;
    v88 = v178;
    v89 = *v178;
    v90 = *(v178 + 16);
    v91 = *(v178 + 48);
    v196 = *(v178 + 32);
    v197 = v91;
    aBlock = v89;
    v195 = v90;
    v92 = *(v178 + 64);
    v93 = *(v178 + 80);
    v94 = *(v178 + 96);
    v201 = *(v178 + 112);
    v199 = v93;
    v200 = v94;
    v198 = v92;
    if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v192, &aBlock))
    {
      goto LABEL_48;
    }

    v95 = *(v21 + 15);
    v96 = *(v21 + 16);
    v97 = *(v21 + 152);
    v181 = *(v21 + 136);
    v182 = v97;
    v183 = *(v21 + 168);
    v98 = v21[184];
    v180[0] = v95;
    v180[1] = v96;
    v184 = v98;
    *v185 = *(v21 + 185);
    v99 = *(v21 + 24);
    v100 = *(v88 + 120);
    v101 = *(v88 + 128);
    v102 = *(v88 + 152);
    v187 = *(v88 + 136);
    v188 = v102;
    v189 = *(v88 + 168);
    v103 = *(v88 + 184);
    *&v185[7] = v99;
    v186[0] = v100;
    v186[1] = v101;
    v190 = v103;
    *v191 = *(v88 + 185);
    *&v191[7] = *(v88 + 192);
    if (sub_1003DC41C(v180, v186))
    {
      goto LABEL_48;
    }

    if (v101)
    {
      if ((((*&v96 != 0) & (v98 ^ 1) ^ v103) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (((*&v96 != 0) & (v98 ^ 1)) != 0)
    {
      goto LABEL_48;
    }

    v104 = *(v173 + 10);
    v105 = *&v21[v104];
    v106 = *(v88 + v104);
    if (v105)
    {
      if (v105 != v106)
      {
        goto LABEL_48;
      }

LABEL_47:
      if ((*&v21[*(v173 + 11) + 16] == 1) == (*(v88 + *(v173 + 11) + 16) == 1))
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (!v106)
    {
      goto LABEL_47;
    }

LABEL_48:
    [v61 setNeedsLayout];
LABEL_49:
    v107 = v61;

    v108 = sub_1004D964C();
    v109 = sub_1004DDF6C();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v179[0] = swift_slowAlloc();
      *v110 = 136446466;
      v111 = &v107[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
      swift_beginAccess();
      if (v111[1])
      {
        v112 = *v111;
        v113 = v111[1];
      }

      else
      {
        v114 = [v107 description];
        v112 = sub_1004DD43C();
        v113 = v115;
      }

      v116 = sub_1002E5CC4(v112, v113, v179);

      *(v110 + 4) = v116;
      *(v110 + 12) = 2082;
      v117 = sub_1002E5CC4(v162, v177, v179);

      *(v110 + 14) = v117;
      _os_log_impl(&_mh_execute_header, v108, v109, "[%{public}s] UpdateID=%{public}s — Updated ✅", v110, 0x16u);
      swift_arrayDestroy();

      v25 = 0;
      v26 = 0;
      v21 = v175;
    }

    else
    {

      v25 = 0;
      v26 = 0;
    }

    goto LABEL_62;
  }

  v45 = v178;
  if (qword_10063D808 != -1)
  {
    swift_once();
  }

  v46 = sub_1004D966C();
  sub_100035430(v46, qword_1006736D8);
  v47 = v168;
  sub_1003DF60C(v45, v168, type metadata accessor for SymbolButton.Configuration);
  v48 = v35;

  v49 = sub_1004D964C();
  LODWORD(v50) = sub_1004DDF6C();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    *&aBlock = v176;
    *v51 = 136446722;
    v52 = &v48[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v53 = v52[1];
    v54 = v170;
    if (v53)
    {
      v55 = *v52;
      v56 = v53;
    }

    else
    {
      v118 = v48;
      v119 = [v118 description];
      LODWORD(v174) = v50;
      v50 = v119;
      v55 = sub_1004DD43C();
      v56 = v120;

      v47 = v168;
      LOBYTE(v50) = v174;
    }

    v121 = sub_1002E5CC4(v55, v56, &aBlock);

    *(v51 + 4) = v121;
    *(v51 + 12) = 2082;
    *(v51 + 14) = sub_1002E5CC4(v162, v36, &aBlock);
    *(v51 + 22) = 2082;
    v122 = SymbolButton.Configuration.description.getter();
    v123 = v47;
    v125 = v124;
    sub_1003DD438(v123, type metadata accessor for SymbolButton.Configuration);
    v126 = sub_1002E5CC4(v122, v125, &aBlock);

    *(v51 + 24) = v126;
    _os_log_impl(&_mh_execute_header, v49, v50, "[%{public}s] UpdateID=%{public}s — Animating to new configuration=%{public}s", v51, 0x20u);
    swift_arrayDestroy();

    v45 = v178;
  }

  else
  {

    sub_1003DD438(v47, type metadata accessor for SymbolButton.Configuration);
    v54 = v170;
  }

  v127 = *&v48[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount];
  v128 = v127 + 1;
  v129 = v160;
  if (__OFADD__(v127, 1))
  {
    __break(1u);
  }

  else
  {
    *&v48[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = v128;
    if (v128 != v127)
    {
      sub_1003D56C0();
    }

    v130 = swift_allocObject();
    v171 = v130;
    *(v130 + 16) = _swiftEmptyArrayStorage;
    v174 = v130 + 16;
    v176 = objc_opt_self();
    v173 = v48;
    v21 = v175;
    sub_1003DF60C(v175, v129, type metadata accessor for SymbolButton.Configuration);
    sub_1003DF60C(v45, v54, type metadata accessor for SymbolButton.Configuration);
    v131 = *(v166 + 80);
    v132 = (v131 + 16) & ~v131;
    v166 = v167 + v131;
    v133 = (v167 + v131 + v132) & ~v131;
    v167 += 7;
    v168 = v131;
    v134 = (v167 + v133) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    sub_1003DF674(v129, v135 + v132, type metadata accessor for SymbolButton.Configuration);
    sub_1003DF674(v54, v135 + v133, type metadata accessor for SymbolButton.Configuration);
    v137 = v173;
    v136 = v174;
    *(v135 + v134) = v173;
    *(v135 + ((v134 + 15) & 0xFFFFFFFFFFFFFFF8)) = v136;
    v138 = swift_allocObject();
    *(v138 + 16) = sub_1003DCD70;
    *(v138 + 24) = v135;
    v174 = v135;
    *&v196 = sub_10001185C;
    *(&v196 + 1) = v138;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v169 = COERCE_DOUBLE(&v195);
    *&v195 = sub_1000121E8;
    *(&v195 + 1) = &unk_1005F2EF0;
    v139 = _Block_copy(&aBlock);
    v173 = v137;

    [v176 performWithoutAnimation:v139];
    _Block_release(v139);
    LOBYTE(v139) = swift_isEscapingClosureAtFileLocation();

    if ((v139 & 1) == 0)
    {
      v140 = *&v163;
      v141 = v168;
      v142 = ~v168;
      v143 = v160;
      sub_1003DF60C(v178, v160, type metadata accessor for SymbolButton.Configuration);
      sub_1003DF60C(v21, v170, type metadata accessor for SymbolButton.Configuration);
      v144 = (v141 + 24) & v142;
      v145 = (v166 + v144) & v142;
      v146 = (v167 + v145) & 0xFFFFFFFFFFFFFFF8;
      v147 = swift_allocObject();
      v148 = v173;
      *(v147 + 16) = v173;
      sub_1003DF674(v143, v147 + v144, type metadata accessor for SymbolButton.Configuration);
      sub_1003DF674(v170, v147 + v145, type metadata accessor for SymbolButton.Configuration);
      v149 = v171;
      v150 = v172;
      *(v147 + v146) = v171;
      *(v147 + ((v146 + 15) & 0xFFFFFFFFFFFFFFF8)) = v150;
      *&v196 = sub_1003DD1D4;
      *(&v196 + 1) = v147;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v195 = sub_100012680;
      *(&v195 + 1) = &unk_1005F2F40;
      v151 = _Block_copy(&aBlock);
      v152 = v148;

      v153 = swift_allocObject();
      v153[2] = v149;
      v153[3] = v152;
      v154 = v162;
      v153[4] = v150;
      v153[5] = v154;
      v155 = ObjectType;
      v153[6] = v177;
      v153[7] = v155;
      *&v196 = sub_1003DD2D0;
      *(&v196 + 1) = v153;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v195 = sub_100016298;
      *(&v195 + 1) = &unk_1005F2F90;
      v156 = _Block_copy(&aBlock);
      v157 = v152;

      [v176 animateKeyframesWithDuration:v165 delay:v151 options:v156 animations:v44 completion:v140];
      _Block_release(v156);
      _Block_release(v151);

      v25 = sub_1003DCD70;
      v26 = v174;
LABEL_62:
      v158 = v26;
      sub_1003DD438(v21, type metadata accessor for SymbolButton.Configuration);
      sub_10000DE74(v25, v158);
      return;
    }
  }

  __break(1u);
}

void sub_1003CD428(uint64_t *a1, __int128 *a2, char *a3, char **a4)
{
  v4 = a3;
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 6);
  v174 = *(a1 + 5);
  v175 = v9;
  v176 = a1[14];
  v10 = *(a1 + 2);
  v170 = *(a1 + 1);
  v171 = v10;
  v11 = *(a1 + 4);
  v172 = *(a1 + 3);
  v173 = v11;
  v169[0] = v7;
  v169[1] = v8;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[3];
  v177[2] = a2[2];
  v177[3] = v14;
  v177[0] = v12;
  v177[1] = v13;
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v178 = *(a2 + 14);
  v177[5] = v16;
  v177[6] = v17;
  v177[4] = v15;
  if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v169, v177))
  {
    v18 = sub_1003D36F4();
    v19 = a2[5];
    v166[4] = a2[4];
    v166[5] = v19;
    v167 = a2[6];
    v168 = *(a2 + 14);
    v20 = a2[1];
    v166[0] = *a2;
    v166[1] = v20;
    v21 = a2[3];
    v166[2] = a2[2];
    v166[3] = v21;
    v22 = type metadata accessor for SymbolButton.ImageView();
    v156.receiver = objc_allocWithZone(v22);
    v156.super_class = v22;
    v23 = objc_msgSendSuper2(&v156, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v23 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    [v23 setContentMode:4];
    sub_1003D71EC(v166);
    v24 = [v18 preferredSymbolConfiguration];
    [v23 setPreferredSymbolConfiguration:v24];

    [v18 frame];
    [v23 setFrame:?];

    v25 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView;
    v26 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView];
    *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] = v23;
    v27 = v23;

    [v27 setAlpha:0.0];
    v28 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v29 = *&a3[v25];
    if (([v29 isDescendantOfView:v28] & 1) == 0)
    {
      [v28 addSubview:v29];
    }

    if (!v8 && *(&v166[0] + 1))
    {
      [a3 setNeedsLayout];
      [a3 layoutIfNeeded];
    }

    v30 = *(&v167 + 1);
    v31 = *&a3[v25];
    v32 = *a4;
    v33 = v31;
    v34 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_1003E0B28(0, *(v32 + 2) + 1, 1, v32);
      *a4 = v32;
    }

    v37 = *(v32 + 2);
    v36 = *(v32 + 3);
    v4 = a3;
    if (v37 >= v36 >> 1)
    {
      *a4 = sub_1003E0B28((v36 > 1), v37 + 1, 1, v32);
    }

    v38 = *a4;
    *(v38 + 2) = v37 + 1;
    v39 = &v38[88 * v37];
    *(v39 + 4) = v31;
    *(v39 + 5) = v30;
    *(v39 + 6) = 0;
    *(v39 + 7) = 0;
    *(v39 + 8) = 0;
    *(v39 + 9) = v34;
    *(v39 + 5) = xmmword_100512770;
    *(v39 + 12) = 0;
    *(v39 + 13) = 0;
    v39[112] = 0;
  }

  v40 = *(a1 + 17);
  v41 = *(a1 + 21);
  v164[2] = *(a1 + 19);
  v164[3] = v41;
  v42 = *(a1 + 23);
  v164[0] = *(a1 + 15);
  v164[1] = v40;
  v43 = *(a2 + 136);
  v44 = *(a2 + 168);
  v165[2] = *(a2 + 152);
  v165[3] = v44;
  v165[4] = *(a2 + 184);
  v45 = *(a2 + 120);
  v165[1] = v43;
  v164[4] = v42;
  v165[0] = v45;
  if (sub_1003DC41C(v164, v165))
  {
    v46 = sub_1003D386C();
    v47 = *(a2 + 136);
    v48 = *(a2 + 168);
    v161[2] = *(a2 + 152);
    v162 = v48;
    v163 = *(a2 + 184);
    v161[0] = *(a2 + 120);
    v161[1] = v47;
    v49 = objc_allocWithZone(type metadata accessor for SymbolButton.Label());
    sub_1003DD350(v161, v160);
    v50 = sub_1003D7430(v161);
    v51 = [v46 font];
    [v50 setFont:v51];

    v52 = v50;
    v53 = v46;
    [v53 frame];
    [v52 setFrame:?];

    v54 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
    v55 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] = v52;
    v56 = v52;

    [v56 setAlpha:0.0];
    v57 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v58 = *&v4[v54];
    if (([v58 isDescendantOfView:v57] & 1) == 0)
    {
      [v57 addSubview:v58];
    }

    v59 = v162;
    v60 = *&v4[v54];
    v61 = *(a1 + 17);
    v62 = *(a1 + 21);
    v159[2] = *(a1 + 19);
    v159[3] = v62;
    v63 = *(a1 + 23);
    v159[0] = *(a1 + 15);
    v159[1] = v61;
    v64 = *(a2 + 136);
    v65 = *(a2 + 168);
    v160[2] = *(a2 + 152);
    v160[3] = v65;
    v160[4] = *(a2 + 184);
    v66 = *(a2 + 120);
    v160[1] = v64;
    v159[4] = v63;
    v160[0] = v66;
    v67 = v60;
    v68 = sub_1003DD4E4(v159, v160);
    v69 = *a4;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v69;
    if ((v70 & 1) == 0)
    {
      v69 = sub_1003E0B28(0, *(v69 + 2) + 1, 1, v69);
      *a4 = v69;
    }

    v72 = *(v69 + 2);
    v71 = *(v69 + 3);
    v4 = a3;
    if (v72 >= v71 >> 1)
    {
      *a4 = sub_1003E0B28((v71 > 1), v72 + 1, 1, v69);
    }

    v73 = *a4;
    *(v73 + 2) = v72 + 1;
    v74 = &v73[88 * v72];
    *(v74 + 4) = v60;
    *(v74 + 5) = v59;
    *(v74 + 6) = 0;
    *(v74 + 7) = 0;
    *(v74 + 8) = 0;
    *(v74 + 9) = v53;
    *(v74 + 5) = xmmword_100512770;
    *(v74 + 12) = 0;
    *(v74 + 13) = 0;
    v74[112] = v68;
  }

  v75 = type metadata accessor for SymbolButton.Configuration(0);
  v76 = *(v75 + 40);
  v77 = *(a1 + v76);
  v78 = a2 + v76;
  v79 = *(a2 + v76);
  if (v77)
  {
    if (v77 == v79)
    {
      goto LABEL_47;
    }

    if (!v79)
    {
      v153 = v75;
      v80 = 0;
      v151 = 1;
      goto LABEL_26;
    }
  }

  else if (!v79)
  {
    goto LABEL_47;
  }

  v153 = v75;
  v81 = v79;
  v151 = 0;
  v80 = v79;
LABEL_26:
  v82 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView;
  v83 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView];
  *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView] = v80;
  v84 = v80;

  v85 = a3;
  if (v80)
  {
    v86 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    if ([v86 isDescendantOfView:v86])
    {
      [v86 insertSubview:v84 aboveSubview:v86];
    }

    else
    {

      if (([v84 isDescendantOfView:v86] & 1) == 0)
      {
        [v86 addSubview:v84];
      }
    }

    v85 = a3;
    sub_1003D3B58();
  }

  v87 = *&v85[v82];
  if (v87)
  {
    [v87 setAlpha:0.0];
  }

  sub_1003D3B58();
  [*&v85[v82] layoutIfNeeded];
  if ((v151 & 1) == 0)
  {
    v89 = v79;
    if (v79)
    {
      v88 = *(v78 + 5);
      if (v77)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v88 = 0;
      if (v77)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    v91 = 0;
    goto LABEL_42;
  }

  v79 = 0;
  v88 = 0;
  if (!v77)
  {
    goto LABEL_41;
  }

LABEL_39:
  v90 = v77;
  v91 = 1;
LABEL_42:
  v92 = *a4;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v92;
  if ((v93 & 1) == 0)
  {
    v92 = sub_1003E0B28(0, *(v92 + 2) + 1, 1, v92);
    *a4 = v92;
  }

  v95 = *(v92 + 2);
  v94 = *(v92 + 3);
  if (v95 >= v94 >> 1)
  {
    v92 = sub_1003E0B28((v94 > 1), v95 + 1, 1, v92);
    *a4 = v92;
  }

  *(v92 + 2) = v95 + 1;
  v96 = &v92[88 * v95];
  *(v96 + 4) = v79;
  *(v96 + 5) = v88;
  *(v96 + 6) = 0;
  *(v96 + 7) = 0;
  *(v96 + 8) = 0;
  *(v96 + 9) = v77;
  *(v96 + 10) = 0;
  *(v96 + 11) = v91;
  *(v96 + 12) = 0;
  *(v96 + 13) = 0;
  v96[112] = 0;
  v4 = a3;
  v75 = v153;
LABEL_47:
  v97 = *(v75 + 44);
  v98 = *(a1 + v97 + 16);
  v99 = (a2 + v97);
  v100 = v99[2];
  if (v98 == 1)
  {
    if (v100 == 1)
    {
      return;
    }

    v105 = *v99;
    v104 = v99[1];
    v101 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v102 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v106 = type metadata accessor for SymbolButton.BadgeView();
    v107 = objc_allocWithZone(v106);
    v152 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
    v108 = objc_allocWithZone(UIView);
    if (v102)
    {
      v109 = v102;
      sub_1003DD408(v105, v104, v100);
      v110 = v105;
      v111 = [v108 init];
      v112 = objc_opt_self();
      v113 = [v112 blackColor];
      [v111 setBackgroundColor:v113];

      v114 = [v111 layer];
      [v114 setCompositingFilter:kCAFilterDestOut];

      *&v107[v152] = v111;
      v115 = &v107[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v115 = v110;
      v115[1] = v104;
      v115[2] = v100;
      v158.receiver = v107;
      v158.super_class = v106;
      v116 = v100;
      v117 = objc_msgSendSuper2(&v158, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v118 = v116;
      if (!v100)
      {
        v118 = [v112 tintColor];
      }

      v119 = v116;
      [v117 setBackgroundColor:v118];

      [v117 setAlpha:*&v104];
      [*(v117 + OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView) setAlpha:*&v104];
      sub_1003D7B6C();
      v120 = v110;
    }

    else
    {
      v150 = v100;
      v121 = [v108 init];
      v122 = v105;
      v123 = v121;
      v124 = objc_opt_self();
      v125 = [v124 blackColor];
      [v123 setBackgroundColor:v125];

      v126 = [v123 layer];
      [v126 setCompositingFilter:kCAFilterDestOut];

      *&v107[v152] = v123;
      v127 = &v107[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v127 = v122;
      v127[1] = v104;
      v127[2] = v100;
      v157.receiver = v107;
      v157.super_class = v106;
      v128 = v150;
      v117 = objc_msgSendSuper2(&v157, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v129 = v128;
      if (!v100)
      {
        v129 = [v124 tintColor];
      }

      v130 = v128;
      [v117 setBackgroundColor:v129];

      [v117 setAlpha:*&v104];
      [*(v117 + OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView) setAlpha:*&v104];
      sub_1003D7B6C();
      sub_1002EA654(v122, v104, v100);
      v120 = v122;
    }

    v131 = *v101;
    *v101 = v117;
    v132 = v117;
    sub_1003D3974(v131);

    if (*v101)
    {
      [*v101 setAlpha:0.0];
      if (*v101)
      {
        v133 = *v101;
        v134 = [a3 traitCollection];
        v135 = [v134 userInterfaceIdiom];

        if (v135 == 6)
        {
          v136 = 12.0;
        }

        else
        {
          v136 = 8.0;
        }

        [a3 bounds];
        MaxX = CGRectGetMaxX(v179);
        v180.origin.x = 0.0;
        v180.origin.y = 0.0;
        v180.size.width = v136;
        v180.size.height = v136;
        v138 = MaxX - CGRectGetWidth(v180) + 1.0;
        [a3 bounds];
        [v133 setFrame:{v138, CGRectGetMinY(v181) + -1.0, v136, v136}];
      }
    }

    sub_1002EA654(v120, v104, v100);
    v98 = 1;
  }

  else
  {
    if (v100 != 1)
    {
      return;
    }

    v101 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v102 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
    v103 = v102;
    sub_1003D3974(v102);

    v104 = 0;
  }

  v139 = *v101;
  if (*v101)
  {
    v140 = v104;
  }

  else
  {
    v140 = 0;
  }

  if (*v101)
  {
    v141 = v98 != 1;
  }

  else
  {
    v141 = 0;
  }

  v142 = *a4;
  v143 = v139;
  v144 = v102;
  v145 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v142;
  if ((v145 & 1) == 0)
  {
    v142 = sub_1003E0B28(0, *(v142 + 2) + 1, 1, v142);
    *a4 = v142;
  }

  v147 = *(v142 + 2);
  v146 = *(v142 + 3);
  if (v147 >= v146 >> 1)
  {
    *a4 = sub_1003E0B28((v146 > 1), v147 + 1, 1, v142);
  }

  v148 = *a4;
  *(v148 + 2) = v147 + 1;
  v149 = &v148[88 * v147];
  *(v149 + 4) = v139;
  *(v149 + 5) = v140;
  *(v149 + 6) = v141;
  *(v149 + 7) = 0;
  *(v149 + 8) = 0;
  *(v149 + 9) = v102;
  *(v149 + 10) = 0;
  *(v149 + 11) = v102 != 0;
  *(v149 + 12) = 0;
  *(v149 + 13) = 0;
  v149[112] = 0;
}

void sub_1003CE180(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v79 = a5;
  v9 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v66 - v12;
  v72 = objc_opt_self();
  sub_1003DF60C(a2, v13, type metadata accessor for SymbolButton.Configuration);
  sub_1003DF60C(a3, v11, type metadata accessor for SymbolButton.Configuration);
  v14 = *(v9 + 80);
  v15 = (v14 + 24) & ~v14;
  v16 = (v10 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  sub_1003DF674(v13, v17 + v15, type metadata accessor for SymbolButton.Configuration);
  sub_1003DF674(v11, v17 + v16, type metadata accessor for SymbolButton.Configuration);
  *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v85 = sub_1003DFB30;
  v86 = v17;
  aBlock = _NSConcreteStackBlock;
  v82 = 1107296256;
  v83 = sub_100012680;
  v84 = &unk_1005F3930;
  v18 = _Block_copy(&aBlock);
  v19 = a1;
  v80 = a4;

  [v72 addKeyframeWithRelativeStartTime:v18 relativeDuration:0.0 animations:1.0];
  _Block_release(v18);
  v20 = *(v79 + 16);
  if (v20)
  {
    v21 = (v79 + 40);
    do
    {
      v22 = *(v21 - 1);
      if (v22)
      {
        v24 = v21[3];
        v23 = v21[4];
        v26 = *(v21 + 1);
        v25 = *(v21 + 2);
        v27 = *v21;
        v28 = swift_allocObject();
        v28[2] = v22;
        v28[3] = v27;
        v28[4] = v19;
        v85 = sub_100027370;
        v86 = v28;
        aBlock = _NSConcreteStackBlock;
        v82 = 1107296256;
        v83 = sub_100012680;
        v84 = &unk_1005F3980;
        v29 = _Block_copy(&aBlock);
        sub_10000DE64(v22, v27);
        v30 = v19;
        sub_10000DE64(v22, v27);
        sub_10000DE64(v24, v23);

        [v72 addKeyframeWithRelativeStartTime:v29 relativeDuration:v26 animations:v25];
        sub_10000DE74(v24, v23);
        _Block_release(v29);
        sub_10000DE74(v22, v27);
      }

      v21 += 6;
      --v20;
    }

    while (v20);
  }

  v31 = v80;
  swift_beginAccess();
  v32 = v31[2];
  v33 = *(v32 + 16);
  v67 = v32;

  v66 = v33;
  if (!v33)
  {
LABEL_28:

    return;
  }

  v34 = 0;
  v70 = &v83;
  v35 = v67 + 56;
  while (v34 < *(v67 + 16))
  {
    v46 = *(v35 - 24);
    v45 = *(v35 - 16);
    v47 = *(v35 - 8);
    v48 = *v35;
    v49 = *(v35 + 8);
    v50 = *(v35 + 16);
    v52 = *(v35 + 24);
    v51 = *(v35 + 32);
    v53 = *(v35 + 40);
    v79 = *(v35 + 48);
    v54 = *(v35 + 56);
    v80 = v46;
    if ((v46 == 0) | v47 & 1)
    {
      v55 = 1.0;
    }

    else
    {
      v55 = *&v45;
    }

    v78 = v50;
    v77 = v45;
    v76 = v51;
    v75 = v52;
    v74 = v47;
    v73 = v48;
    v71 = v54;
    if (v50)
    {
      v90 = v51 & 1;
      if (v54)
      {
        v56 = 1.0;
      }

      else
      {
        v56 = 0.5;
      }

      v68 = v49;
      v57 = v45;
      v58 = swift_allocObject();
      *(v58 + 16) = v50;
      *(v58 + 24) = v52;
      *(v58 + 32) = v90;
      *(v58 + 33) = *v89;
      *(v58 + 36) = *&v89[3];
      v59 = v79;
      *(v58 + 40) = v53;
      *(v58 + 48) = v59;
      v85 = sub_1003DFC48;
      v86 = v58;
      aBlock = _NSConcreteStackBlock;
      v82 = 1107296256;
      v83 = sub_100012680;
      v84 = &unk_1005F3A20;
      v60 = _Block_copy(&aBlock);
      v69 = v34;
      v61 = v60;
      v62 = v48;
      v63 = v68;
      sub_1003DF724(v80, v57, v47, v62, v68);
      sub_1003DF724(v50, v52, v51, v53, v59);
      sub_1003DF724(v50, v52, v51, v53, v59);
      v64 = v50;
      sub_10000DE64(v53, v59);

      [v72 addKeyframeWithRelativeStartTime:v61 relativeDuration:0.0 animations:v56];
      v65 = v61;
      v34 = v69;
      _Block_release(v65);

      sub_10000DE74(v53, v59);
      if (v80)
      {
LABEL_8:
        v36 = v74;
        v88 = v74 & 1;
        if (v71)
        {
          v37 = 1.0;
        }

        else
        {
          v37 = 0.5;
        }

        if (v71)
        {
          v38 = 0.0;
        }

        else
        {
          v38 = 0.5;
        }

        v39 = swift_allocObject();
        v40 = v80;
        v41 = v77;
        *(v39 + 16) = v80;
        *(v39 + 24) = v41;
        *(v39 + 32) = v88;
        *(v39 + 33) = *v87;
        *(v39 + 36) = *&v87[3];
        v42 = v73;
        *(v39 + 40) = v73;
        *(v39 + 48) = v63;
        *(v39 + 56) = v55;
        v85 = sub_1003DFBD8;
        v86 = v39;
        aBlock = _NSConcreteStackBlock;
        v82 = 1107296256;
        v83 = sub_100012680;
        v84 = &unk_1005F39D0;
        v43 = _Block_copy(&aBlock);
        sub_1003DF724(v40, v41, v36, v42, v63);
        v44 = v40;
        sub_10000DE64(v42, v63);

        [v72 addKeyframeWithRelativeStartTime:v43 relativeDuration:v38 animations:v37];
        _Block_release(v43);

        sub_10000DE74(v42, v63);
        goto LABEL_15;
      }
    }

    else
    {
      sub_1003DF724(v80, v45, v47, v48, v49);
      sub_1003DF724(0, v52, v51, v53, v79);
      v63 = v49;
      if (v80)
      {
        goto LABEL_8;
      }
    }

    v80 = 0;
    v41 = v77;
    v36 = v74;
    v42 = v73;
LABEL_15:
    ++v34;
    sub_1003DF76C(v80, v41, v36, v42, v63);
    sub_1003DF76C(v78, v75, v76, v53, v79);
    v35 += 88;
    if (v66 == v34)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
}

void sub_1003CE980(char *a1, __int128 *a2, char **a3, uint64_t a4)
{
  v121 = a4;
  v122 = a1;
  v7 = v128;
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v124 = &v119 - v8;
  v126 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v10 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SymbolButton.Metrics(0);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  sub_1003D4740(v13);
  sub_1003DD438(v13, type metadata accessor for SymbolButton.Metrics);
  sub_1003DF60C(a2, v10, type metadata accessor for SymbolButton.Configuration);
  sub_1003D3D78(v10, v14, v13);
  v127 = v13;
  sub_1003D49E8(v13);
  v15 = *&a1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  v16 = *(a2 + 248);
  v135[0] = *(a2 + 232);
  v135[1] = v16;
  v135[2] = *(a2 + 264);
  v120 = v15;
  sub_1003D691C(v135);
  v125 = *&a1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v17 = *(a2 + 25);
  v18 = *(a2 + 26);
  v19 = *(a2 + 27);
  v20 = *(a2 + 28);
  if (v18 == 1)
  {
    v119 = *(a2 + 27);
    v123 = v17;
    if (qword_10063DAF8 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_3;
  }

  v21 = *(a2 + 25);
  v24 = *(a2 + 28);
  v25 = *(a2 + 26);
  v22 = v25;
  v23 = *(a2 + 27);
LABEL_5:
  sub_1003DD3C0(v17, v18, v19, v20);
  sub_1003D6D98(v22, v23, v24, v21);

  v26 = *(a3 + 17);
  v27 = *(a3 + 21);
  v7[31] = *(a3 + 19);
  v7[32] = v27;
  v28 = *(a3 + 23);
  v7[29] = *(a3 + 15);
  v7[30] = v26;
  v29 = *(a2 + 152);
  v7[35] = *(a2 + 136);
  v7[36] = v29;
  v30 = *(a2 + 184);
  v7[37] = *(a2 + 168);
  v7[38] = v30;
  v31 = *(a2 + 120);
  v7[33] = v28;
  v7[34] = v31;
  v32 = sub_1003DC41C(&v133, v134);
  v33 = v122;
  if ((v32 & 1) == 0)
  {
    v34 = sub_1003D386C();
    v35 = *(a2 + 136);
    v7[24] = *(a2 + 120);
    v7[25] = v35;
    v36 = *(a2 + 168);
    v7[26] = *(a2 + 152);
    v7[27] = v36;
    v7[28] = *(a2 + 184);
    v37 = v132[0];
    v38 = v132[1];
    sub_1003D75B8(v132);

    if (v38)
    {
      v39 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v39 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        v40 = sub_1004DD3FC();
        [v33 setAccessibilityLabel:v40];
      }
    }
  }

  v41 = *(a3 + 5);
  v7[12] = *(a3 + 4);
  v7[13] = v41;
  v7[14] = *(a3 + 6);
  v130[14] = a3[14];
  v42 = *(a3 + 1);
  v7[8] = *a3;
  v7[9] = v42;
  v43 = *(a3 + 3);
  v7[10] = *(a3 + 2);
  v7[11] = v43;
  v44 = *a2;
  v45 = a2[1];
  v46 = a2[3];
  v7[18] = a2[2];
  v7[19] = v46;
  v7[16] = v44;
  v7[17] = v45;
  v47 = a2[4];
  v48 = a2[5];
  v49 = a2[6];
  v131[14] = *(a2 + 14);
  v7[21] = v48;
  v7[22] = v49;
  v7[20] = v47;
  if (!_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v130, v131))
  {
    v50 = sub_1003D36F4();
    v51 = a2[5];
    v7[4] = a2[4];
    v7[5] = v51;
    v7[6] = a2[6];
    v129 = *(a2 + 14);
    v52 = a2[1];
    v128[0] = *a2;
    v128[1] = v52;
    v53 = a2[3];
    v128[2] = a2[2];
    v128[3] = v53;
    sub_1003D71EC(v128);
  }

  v54 = *(v126 + 11);
  v55 = (a2 + v54);
  v56 = *(a2 + v54 + 16);
  if (v56 != 1 && *(a3 + v54 + 16) != 1)
  {
    v57 = *&v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    if (v57)
    {
      v58 = *v55;
      a3 = v55[1];
      if (v56)
      {
        v59 = v57;
        v60 = v56;
        v61 = v56;
      }

      else
      {
        v62 = objc_opt_self();
        v63 = v57;
        sub_1003DD408(v58, a3, 0);
        v61 = [v62 tintColor];
        v60 = 0;
      }

      sub_1003DD408(v58, a3, v56);
      v64 = v60;
      [v57 setBackgroundColor:v61];

      [v57 setAlpha:*&a3];
      [*&v57[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:*&a3];
      sub_1003D7B6C();
      sub_1002EA654(v58, a3, v56);
    }
  }

  v65 = [v120 contentView];
  v66 = *(a2 + 35);
  v18 = *(a2 + 36);
  v7 = *(a2 + 37);
  v67 = v7;
  UIView.border.setter(v66, v18, v7);

  [v33 setAlpha:*(a2 + *(v126 + 17))];
  v68 = v127;
  sub_1003D4740(v127);
  sub_1003D5B88(v68);
  sub_1003DD438(v68, type metadata accessor for SymbolButton.Metrics);
  v69 = [v33 superview];
  [v69 layoutIfNeeded];

  [v33 layoutIfNeeded];
  if (v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated] == 1)
  {
    v119 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated;
    v70 = v120;
    [v120 _setAllowsGroupFiltering:1];
    v71 = [v70 contentView];
    v72 = [v71 subviews];

    sub_100006F10(0, &qword_100644F50, UIView_ptr);
    v73 = sub_1004DD87C();

    v127 = v73;
    if (v73 >> 62)
    {
      v20 = sub_1004DED5C();
    }

    else
    {
      v20 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a2 = v126;
    v125 = &v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
    swift_beginAccess();
    if (v20)
    {
      v74 = 0;
      v75 = v127 & 0xC000000000000001;
      v7 = (v127 & 0xFFFFFFFFFFFFFF8);
      a3 = &selRef_addTarget_action_forControlEvents_;
      v123 = v127 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v75)
        {
          v76 = sub_1004DEB2C();
        }

        else
        {
          if (v74 >= *(v7 + 2))
          {
            goto LABEL_55;
          }

          v76 = *(v127 + 8 * v74 + 32);
        }

        v77 = v76;
        v18 = (v74 + 1);
        if (__OFADD__(v74, 1))
        {
          goto LABEL_54;
        }

        type metadata accessor for SymbolButton.Label();
        if (([v77 a3[111]] & 1) == 0)
        {
          v78 = a3;
          v79 = *(v125 + *(a2 + 19));
          if (v79 == 2)
          {
            v80 = v125 + *(a2 + 9);
            v81 = v124;
            sub_1000108DC(v80, v124, &qword_100644A50, &qword_100528DC0);
            v82 = sub_1004DE53C();
            LOBYTE(v79) = (*(*(v82 - 8) + 48))(v81, 1, v82) != 1;
            v83 = v81;
            a2 = v126;
            v7 = v123;
            sub_10001074C(v83, &qword_100644A50, &qword_100528DC0);
          }

          [v77 setClipsToBounds:v79 & 1];
          a3 = v78;
        }

        ++v74;
      }

      while (v18 != v20);
    }

    v122[v119] = 0;
  }

  v84 = v121;
  swift_beginAccess();
  v85 = *(v84 + 16);
  v20 = *(v85 + 16);
  v122 = v85;

  v121 = v20;
  if (v20)
  {
    v18 = 0;
    v86 = v122 + 56;
    do
    {
      if (v18 >= *(v122 + 2))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
LABEL_3:
        swift_beginAccess();
        v21 = *&static SymbolButton.Background.clear;
        v22 = qword_100673C58;
        v23 = qword_100673C60;
        v24 = qword_100673C68;

        v25 = v22;
        v17 = v123;
        v19 = v119;
        goto LABEL_5;
      }

      v92 = *(v86 - 3);
      v91 = *(v86 - 2);
      v93 = *(v86 - 1);
      a3 = *v86;
      v94 = *(v86 + 1);
      v95 = *(v86 + 2);
      v96 = *(v86 + 3);
      v20 = *(v86 + 4);
      v126 = v94;
      v127 = v96;
      v97 = *(v86 + 5);
      v7 = *(v86 + 6);
      v124 = v93;
      v125 = a3;
      v123 = v91;
      if (v92)
      {
        if (a3)
        {
          sub_1003DF724(v92, v91, v93, a3, v94);
          sub_1003DF724(v95, v127, v20, v97, v7);
          v98 = [v120 contentView];
          v119 = v7;
          v99 = v20;
          v100 = v98;
          [v98 bounds];
          v102 = v101;
          v104 = v103;
          v106 = v105;
          v108 = v107;

          a2 = v97;
          (a3)(v102, v104, v106, v108);
          v20 = v99;
          v7 = v119;
          [v92 setFrame:?];
          if (!v95)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_1003DF724(v92, v91, v93, 0, v94);
          a2 = v97;
          sub_1003DF724(v95, v127, v20, v97, v7);
          if (!v95)
          {
LABEL_38:
            sub_1003DF76C(v92, v123, v124, v125, v126);
            v87 = 0;
            v88 = v127;
            v89 = v20;
            goto LABEL_39;
          }
        }
      }

      else
      {
        sub_1003DF724(0, v91, v93, a3, v94);
        sub_1003DF724(v95, v127, v20, v97, v7);
        a2 = v97;
        if (!v95)
        {
          goto LABEL_38;
        }
      }

      if (!a2)
      {
        sub_1003DF76C(v92, v123, v124, v125, v126);
        v87 = v95;
        v88 = v127;
        v89 = v20;
        v90 = 0;
        goto LABEL_40;
      }

      v109 = v20;
      v110 = [v120 contentView];
      [v110 bounds];
      v112 = v111;
      v114 = v113;
      v116 = v115;
      v118 = v117;

      v20 = v7;
      (a2)(v112, v114, v116, v118);
      [v95 setFrame:?];
      sub_1003DF76C(v92, v123, v124, v125, v126);
      v87 = v95;
      v88 = v127;
      v89 = v109;
LABEL_39:
      v90 = a2;
LABEL_40:
      sub_1003DF76C(v87, v88, v89, v90, v7);
      ++v18;
      v86 += 88;
    }

    while (v121 != v18);
  }
}

uint64_t *SymbolButton.Background.clear.unsafeMutableAddressor()
{
  if (qword_10063DAF8 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.clear;
}

void sub_1003CF4B4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = *(v8 + 16);
  v44 = v8;

  v43 = v9;
  if (v9)
  {
    v10 = 0;
    v6 = (v44 + 56);
    while (v10 < *(v44 + 16))
    {
      v11 = v6[2];
      if (v11)
      {
        v13 = *(v6 - 1);
        v12 = *v6;
        v14 = v6[1];
        v16 = v6[3];
        v15 = v6[4];
        v17 = v6[5];
        v18 = v6[6];
        v45 = *(v6 - 2);
        v46 = *(v6 - 3);
        sub_1003DF724(v46, v45, v13, *v6, v14);
        sub_1003DF724(v11, v16, v15, v17, v18);
        if ([v11 isDescendantOfView:a3])
        {
          [v11 removeFromSuperview];
        }

        sub_1003DF76C(v46, v45, v13, v12, v14);
        sub_1003DF76C(v11, v16, v15, v17, v18);
      }

      ++v10;
      v6 += 11;
      if (v43 == v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_9:

  v10 = a3;
  v19 = *(a4 + 16);
  if (v19)
  {
    v20 = (a4 + 72);
    do
    {
      v21 = *(v20 - 1);
      if (v21)
      {
        v22 = *v20;
        v24 = *(v20 - 5);
        v23 = *(v20 - 4);
        sub_10000DE64(v24, v23);
        sub_10000DE64(v21, v22);
        v21(a3);
        sub_10000DE74(v24, v23);
        sub_10000DE74(v21, v22);
      }

      v20 += 6;
      --v19;
    }

    while (v19);
  }

  v25 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount];
  v26 = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_18;
  }

  *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = v26;
  v6 = a6;
  if (v26 != v25)
  {
    sub_1003D56C0();
  }

  if (qword_10063D808 != -1)
  {
    goto LABEL_26;
  }

LABEL_18:
  v27 = sub_1004D966C();
  sub_100035430(v27, qword_1006736D8);
  v28 = v10;

  v29 = sub_1004D964C();
  v30 = sub_1004DDF6C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v31 = 136446466;
    v32 = &v28[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v33 = v32[1];
    if (v33)
    {
      v34 = *v32;
      v35 = v33;
    }

    else
    {
      v36 = [v28 description];
      v34 = sub_1004DD43C();
      v35 = v37;
    }

    v38 = sub_1002E5CC4(v34, v35, &v47);

    *(v31 + 4) = v38;
    *(v31 + 12) = 2082;
    *(v31 + 14) = sub_1002E5CC4(a5, v6, &v47);
    _os_log_impl(&_mh_execute_header, v29, v30, "[%{public}s] UpdateID=%{public}s — Updated ✅", v31, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t SymbolButton.Configuration.background.getter()
{
  v1 = *(v0 + 200);
  sub_1003DD3C0(v1, *(v0 + 208), *(v0 + 216), *(v0 + 224));
  return v1;
}

void SymbolButton.Configuration.background.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1002E009C(*(v4 + 200), *(v4 + 208), *(v4 + 216), *(v4 + 224));
  *(v4 + 200) = a1;
  *(v4 + 208) = a2;
  *(v4 + 216) = a3;
  *(v4 + 224) = a4;
}

uint64_t SymbolButton.Configuration.border.getter()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 296);
  return v1;
}

void SymbolButton.Configuration.border.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 280) = a1;
  *(v3 + 288) = a2;
  *(v3 + 296) = a3;
}

uint64_t SymbolButton.Configuration.badge.getter()
{
  v1 = v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 44);
  v2 = *v1;
  sub_1003DD408(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

void SymbolButton.Configuration.badge.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + *(type metadata accessor for SymbolButton.Configuration(0) + 44);
  sub_1002EA654(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
}

uint64_t SymbolButton.Configuration.symbolToTextSpacing.setter(double a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t SymbolButton.Configuration.minimumSize.setter(double a1, double a2)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v6 = (v2 + *(result + 52));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t SymbolButton.Configuration.maximumImageSize.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v8 = v3 + *(result + 56);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t SymbolButton.Configuration.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v10 = (v4 + *(result + 60));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t SymbolButton.Configuration.accessibility.getter()
{
  v1 = (v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 64));
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 1);
  v5 = v3;
  return v2;
}

void SymbolButton.Configuration.accessibility.setter(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *(type metadata accessor for SymbolButton.Configuration(0) + 64);

  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
}

UIContentSizeCategory sub_1003D0114()
{
  static SymbolButton.Configuration.Accessibility.forBarButtonItem = 1;
  qword_100673C38 = UIContentSizeCategoryLarge;
  unk_100673C40 = UIContentSizeCategoryExtraLarge;
  byte_100673C48 = 1;
  v0 = UIContentSizeCategoryLarge;

  return UIContentSizeCategoryExtraLarge;
}

char *SymbolButton.Configuration.Accessibility.forBarButtonItem.unsafeMutableAddressor()
{
  if (qword_10063DAF0 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Configuration.Accessibility.forBarButtonItem;
}

uint64_t static SymbolButton.Configuration.Accessibility.forBarButtonItem.getter()
{
  if (qword_10063DAF0 != -1)
  {
    swift_once();
  }

  v0 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v1 = unk_100673C40;
  v2 = qword_100673C38;
  v3 = v1;
  return v0;
}

uint64_t SymbolButton.Configuration.alpha.setter(double a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

void *SymbolButton.Configuration.tint.getter()
{
  v1 = *(v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 72));
  v2 = v1;
  return v1;
}

void SymbolButton.Configuration.tint.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolButton.Configuration(0) + 72);

  *(v1 + v3) = a1;
}

uint64_t SymbolButton.Configuration.shouldClipToBounds.setter(char a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

void SymbolButton.Configuration.init()(uint64_t a1@<X8>)
{
  HIBYTE(v30) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = UIFontTextStyleSubheadline;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = xmmword_1005272E0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 81) = v30;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3FF0000000000000;
  *(a1 + 112) = 0;
  v2 = UIFontTextStyleSubheadline;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = v2;
  *(a1 + 144) = UIFontWeightSemibold;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3FF0000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 232) = 1;
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  v4 = v3[9];
  v5 = sub_1004DE53C();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = a1 + v3[10];
  *(v6 + 48) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  v7 = (a1 + v3[11]);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 1;
  *(a1 + v3[12]) = 0x4010000000000000;
  *(a1 + v3[13]) = vdupq_n_s64(0x4040000000000000uLL);
  v8 = a1 + v3[14];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = (a1 + v3[15]);
  v10 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v9 = *&NSDirectionalEdgeInsetsZero.top;
  v9[1] = v10;
  v11 = a1 + v3[16];
  *v11 = 1;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(a1 + v3[17]) = 0x3FF0000000000000;
  *(a1 + v3[18]) = 0;
  *(a1 + v3[19]) = 2;
  v12 = qword_10063DB28;
  v13 = v2;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_100673CF8;
  *(a1 + 200) = static SymbolButton.Background.normal;
  v28 = qword_100673CE8;
  *(a1 + 208) = *&qword_100673CE8;
  *(a1 + 224) = v14;
  v15 = objc_opt_self();

  v16 = v28;
  v17 = [v15 currentTraitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 6)
  {
    if (qword_10063DB38 != -1)
    {
      swift_once();
    }

    v19 = static SymbolButton.Material.xr;
    v20 = qword_100673D28;
    v21 = qword_100673D30;
    v29 = qword_100673D30;
    v22 = byte_100673D38;
    v24 = qword_100673D40;
    v23 = unk_100673D48;
    *(a1 + 232) = static SymbolButton.Material.xr;
    *(a1 + 240) = v20;
    *(a1 + 248) = v21;
    *(a1 + 256) = v22;
    *(a1 + 264) = v24;
    *(a1 + 272) = v23;

    v25 = v19;
    v26 = v20;

    v27 = v29;
  }
}

uint64_t *SymbolButton.Material.xr.unsafeMutableAddressor()
{
  if (qword_10063DB38 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Material.xr;
}

uint64_t SymbolButton.Symbol.offset.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 64) = result;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  return result;
}

void *SymbolButton.Symbol.tint.getter()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

BOOL sub_1003D0870(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(v12, v14);
}

BOOL sub_1003D091C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(v8, v9);
}

id sub_1003D09C0()
{
  result = [objc_opt_self() clearColor];
  static SymbolButton.Background.clear = 0x3FF0000000000000;
  qword_100673C58 = result;
  qword_100673C60 = 0;
  qword_100673C68 = 0;
  return result;
}

uint64_t static SymbolButton.Background.clear.getter()
{
  if (qword_10063DAF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_100673C58;
  v1 = qword_100673C58;

  return v0;
}

void static SymbolButton.Background.clear.setter(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (qword_10063DAF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = qword_100673C58;
  static SymbolButton.Background.clear = *&a4;
  qword_100673C58 = a1;
  qword_100673C60 = a2;
  qword_100673C68 = a3;
}

uint64_t (*static SymbolButton.Background.clear.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_10063DAF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void SymbolButton.Material.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

BOOL sub_1003D0C34(_OWORD *a1, __int128 *a2)
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
  return _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8);
}

void SyncedLyricsViewController.BottomViewMetadata.insets.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

void *SymbolButton.CustomView.tint.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *static SymbolButton.CustomView.with(_:configurator:)@<X0>(void *result@<X0>, uint64_t (*a2)(void **)@<X1>, uint64_t a3@<X8>)
{
  if (result)
  {
    v11 = result;
    v5 = *&UIEdgeInsetsZero.bottom;
    v12 = *&UIEdgeInsetsZero.top;
    v13 = v5;
    v14 = 0x3FF0000000000000uLL;
    v6 = result;
    result = a2(&v11);
    v7 = v11;
    v8 = v12;
    v9 = v13;
    v10 = v14;
  }

  else
  {
    v7 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 24) = v9;
  *(a3 + 40) = v10;
  return result;
}

uint64_t sub_1003D0D60(uint64_t a1, uint64_t a2)
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
  return _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

uint64_t static SymbolButton.Badge.with(_:)(void (*a1)(__int128 *))
{
  v2 = xmmword_1005272F0;
  v3 = 0;
  a1(&v2);
  return v3;
}

Swift::Void __swiftcall SymbolButton.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v4 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1004DE4EC();
  v139 = *(v140 - 8);
  __chkstk_darwin();
  v138 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin();
  v8 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v137 - v9;
  __chkstk_darwin();
  v12 = &v137 - v11;
  v13 = type metadata accessor for SymbolButton(0);
  v150.receiver = v0;
  v150.super_class = v13;
  objc_msgSendSuper2(&v150, "layoutSubviews");
  v14 = *&v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView] bounds];
  [v14 setFrame:?];
  v15 = [v14 contentView];
  [v15 bounds];
  v17 = v16;

  sub_1003D4740(v12);
  v18 = *&v12[v6[12] + 16];
  [v1 effectiveUserInterfaceLayoutDirection];
  [v1 contentHorizontalAlignment];
  v141 = v2;
  v149 = v17;
  if ([v1 contentVerticalAlignment] == 2)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v18;
  }

  [v1 effectiveUserInterfaceLayoutDirection];
  sub_1004DE40C();
  v144 = v20;
  v22 = v21;
  v146 = v23;
  v147 = v24;
  sub_1003DD438(v12, type metadata accessor for SymbolButton.Metrics);
  sub_1003D4740(v10);
  v25 = *&v10[v6[8]];
  sub_1003DD438(v10, type metadata accessor for SymbolButton.Metrics);
  v26 = sub_1003D36F4();
  sub_1003D4740(v8);
  v27 = &v8[v6[11]];
  v28 = *v27;
  v29 = *(v27 + 1);
  v30 = v27[16];
  sub_1003DD438(v8, type metadata accessor for SymbolButton.Metrics);
  if (v30)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v28;
  }

  if (v30)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v29;
  }

  [v26 sizeThatFits:{v31, v32}];
  v149 = v33;
  v35 = v34;

  v36 = &v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
  swift_beginAccess();
  if (!*(v36 + 128) || (*(v36 + 184) & 1) != 0)
  {
    v43 = sub_1003D386C();
    [v43 frame];
    v45 = v47;
    v143 = v48;
  }

  else
  {
    v37 = v144;
    v157.origin.x = v144;
    v157.origin.y = v22;
    v38 = v146;
    v157.size.width = v146;
    v39 = v147;
    v157.size.height = v147;
    Width = CGRectGetWidth(v157);
    v158.origin.x = 0.0;
    v158.origin.y = 0.0;
    v158.size.width = v149;
    v158.size.height = v35;
    v41 = Width - (v25 + CGRectGetWidth(v158));
    v159.origin.x = v37;
    v159.origin.y = v22;
    v159.size.width = v38;
    v159.size.height = v39;
    Height = CGRectGetHeight(v159);
    v43 = sub_1003D386C();
    [v43 sizeThatFits:{v41, Height}];
    v45 = v44;
    v143 = v46;
  }

  v49 = &selRef_setShadowPathIsBounds_;
  v50 = &selRef_addTarget_action_forControlEvents_;
  v142 = v25;
  v145 = v45;
  if (*(v36 + 8))
  {
    v160.origin.x = 0.0;
    v160.origin.y = 0.0;
    v51 = v149;
    v160.size.width = v149;
    v160.size.height = v35;
    v52 = CGRectGetWidth(v160) + 0.0;
    v161.origin.x = 0.0;
    v161.origin.y = 0.0;
    v161.size.height = 0.0;
    v161.size.width = v52;
    v53 = CGRectGetHeight(v161);
    v162.origin.x = 0.0;
    v162.origin.y = 0.0;
    v162.size.width = v51;
    v162.size.height = v35;
    v54 = CGRectGetHeight(v162);
    if (v53 <= v54)
    {
      v53 = v54;
    }
  }

  else
  {
    v52 = 0.0;
    v53 = 0.0;
  }

  v55 = v144;
  if (*(v36 + 128))
  {
    if ((*(v36 + 184) & 1) == 0)
    {
      v163.origin.x = 0.0;
      v163.origin.y = 0.0;
      v56 = v145;
      v163.size.width = v145;
      v57 = v143;
      v163.size.height = v143;
      v52 = v52 + CGRectGetWidth(v163);
      v164.origin.x = 0.0;
      v164.origin.y = 0.0;
      v164.size.width = v52;
      v164.size.height = v53;
      v53 = CGRectGetHeight(v164);
      v165.origin.x = 0.0;
      v165.origin.y = 0.0;
      v165.size.width = v56;
      v165.size.height = v57;
      v58 = CGRectGetHeight(v165);
      if (v53 <= v58)
      {
        v53 = v58;
      }
    }
  }

  v59 = *(v36 + 8);
  v148 = v35;
  if (v59 && *(v36 + 128) && !*(v36 + 184))
  {
    v52 = v142 + v52;
  }

  v60 = [v1 contentHorizontalAlignment];
  MinY = 0.0;
  MinX = 0.0;
  if (v60 <= 5)
  {
    if (((1 << v60) & 9) != 0)
    {
      v166.origin.x = v55;
      v166.origin.y = v22;
      v166.size.width = v146;
      v166.size.height = v147;
      CGRectGetMidX(v166);
      v167.origin.x = 0.0;
      v167.origin.y = 0.0;
      v167.size.width = v52;
      v167.size.height = v53;
      CGRectGetWidth(v167);
      v67 = [v1 traitCollection];
      [v67 displayScale];

      sub_1004D872C();
      MinX = v68;
    }

    else
    {
      v63 = v55;
      v64 = v22;
      v65 = v146;
      v66 = v147;
      if (((1 << v60) & 0x12) != 0)
      {
        MinX = CGRectGetMinX(*&v63);
      }

      else
      {
        MaxX = CGRectGetMaxX(*&v63);
        v168.origin.x = 0.0;
        v168.origin.y = 0.0;
        v168.size.width = v52;
        v168.size.height = v53;
        MinX = MaxX - CGRectGetWidth(v168);
      }
    }
  }

  v70 = [v1 contentVerticalAlignment];
  if (v70 > 1)
  {
    if (v70 == 2)
    {
      v174.origin.x = v55;
      v174.origin.y = v22;
      v174.size.width = v146;
      v174.size.height = v147;
      MaxY = CGRectGetMaxY(v174);
      v175.origin.y = 0.0;
      v175.origin.x = MinX;
      v175.size.width = v52;
      v175.size.height = v53;
      MinY = MaxY - CGRectGetHeight(v175);
    }

    else if (v70 == 3)
    {
      v170.origin.x = v55;
      v170.origin.y = v22;
      v71 = v146;
      v170.size.width = v146;
      v72 = v147;
      v170.size.height = v147;
      MinY = CGRectGetMinY(v170);
      v171.origin.x = v55;
      v171.origin.y = v22;
      v171.size.width = v71;
      v171.size.height = v72;
      v53 = CGRectGetHeight(v171);
    }
  }

  else if (v70)
  {
    if (v70 == 1)
    {
      v169.origin.x = v55;
      v169.origin.y = v22;
      v169.size.width = v146;
      v169.size.height = v147;
      MinY = CGRectGetMinY(v169);
    }
  }

  else
  {
    v172.origin.x = v55;
    v172.origin.y = v22;
    v172.size.width = v146;
    v172.size.height = v147;
    CGRectGetMidY(v172);
    v173.origin.y = 0.0;
    v173.origin.x = MinX;
    v173.size.width = v52;
    v173.size.height = v53;
    CGRectGetHeight(v173);
    v73 = [v1 traitCollection];
    [v73 displayScale];

    sub_1004D872C();
    MinY = v74;
  }

  v76 = MinX;
  if (*(v36 + 8))
  {
    v176.origin.x = MinX;
    v176.origin.y = MinY;
    v176.size.width = v149;
    v176.size.height = v148;
    v76 = v142 + CGRectGetMaxX(v176);
  }

  v77 = [v1 contentVerticalAlignment];
  if (v77 == 3)
  {
    v181.origin.x = MinX;
    v181.origin.y = MinY;
    v181.size.width = v52;
    v181.size.height = v53;
    v148 = CGRectGetHeight(v181);
    v182.origin.x = MinX;
    v182.origin.y = MinY;
    v182.size.width = v52;
    v182.size.height = v53;
    v82 = CGRectGetHeight(v182);
    v80 = MinY;
    v81 = v145;
  }

  else if (v77)
  {
    v80 = MinY;
    v81 = v145;
    v82 = v143;
  }

  else
  {
    v177.origin.x = MinX;
    v177.origin.y = MinY;
    v177.size.width = v52;
    v177.size.height = v53;
    CGRectGetMidY(v177);
    v178.origin.x = MinX;
    v178.origin.y = MinY;
    v178.size.width = v149;
    v178.size.height = v148;
    CGRectGetHeight(v178);
    v78 = [v1 traitCollection];
    [v78 displayScale];

    sub_1004D872C();
    v80 = v79;
    v179.origin.x = MinX;
    v179.origin.y = MinY;
    v179.size.width = v52;
    v179.size.height = v53;
    CGRectGetMidY(v179);
    v180.origin.x = v76;
    v180.origin.y = MinY;
    v81 = v145;
    v180.size.width = v145;
    v82 = v143;
    v180.size.height = v143;
    CGRectGetHeight(v180);
    v50 = &selRef_addTarget_action_forControlEvents_;
    v83 = [v1 traitCollection];
    [v83 displayScale];

    sub_1004D872C();
    MinY = v84;
  }

  v85 = sub_1003D386C();
  if ([v1 v50[45]] == 4 || objc_msgSend(v1, v50[45]) == 5)
  {
    v154 = 0u;
    v155 = 0u;
    v156 = 1;
    sub_1004DE3DC();
    v76 = v86;
    MinY = v87;
    v81 = v88;
    v82 = v89;
  }

  [v85 setFrame:{v76, MinY, v81, v82}];

  if (*(v36 + 128))
  {
    if ((*(v36 + 184) & 1) == 0)
    {
      v90 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] image];
      if (v90)
      {
        v91 = v90;
        sub_1003D4740(v10);
        v92 = *&v10[v6[7]];
        sub_1003DD438(v10, type metadata accessor for SymbolButton.Metrics);
        v93 = [v91 imageByApplyingSymbolConfiguration:v92];

        if (v93)
        {
          sub_1004DE5BC();
          v49 = &selRef_setShadowPathIsBounds_;
          if ((v94 & 1) == 0)
          {
            v95 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
            [*&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] frame];
            CGRectGetMinY(v183);
            [*&v1[v95] _firstLineBaseline];
            v184.origin.x = MinX;
            v184.origin.y = v80;
            v184.size.width = v149;
            v184.size.height = v148;
            CGRectGetHeight(v184);
          }
        }

        else
        {
          v49 = &selRef_setShadowPathIsBounds_;
        }

        v50 = &selRef_addTarget_action_forControlEvents_;
      }
    }
  }

  sub_1003D4740(v10);
  sub_1003DD438(v10, type metadata accessor for SymbolButton.Metrics);
  sub_1004DE42C();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView];
  if ([v1 v50[45]] == 4 || objc_msgSend(v1, v50[45]) == 5)
  {
    v151 = 0u;
    v152 = 0u;
    v153 = 1;
    sub_1004DE3DC();
  }

  else
  {
    v105 = v97;
    v106 = v99;
    v107 = v101;
    v108 = v103;
  }

  v109 = v141;
  [v104 v49[212]];

  sub_1003D3B58();
  v110 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
  if (v110)
  {
    v111 = v110;
    v112 = [v1 traitCollection];
    v113 = [v112 userInterfaceIdiom];

    v114 = v113 == 6;
    v49 = &selRef_setShadowPathIsBounds_;
    if (v114)
    {
      v115 = 12.0;
    }

    else
    {
      v115 = 8.0;
    }

    [v1 bounds];
    v116 = CGRectGetMaxX(v185);
    v186.origin.x = 0.0;
    v186.origin.y = 0.0;
    v186.size.width = v115;
    v186.size.height = v115;
    v117 = v116 - CGRectGetWidth(v186) + 1.0;
    [v1 bounds];
    [v111 setFrame:{v117, CGRectGetMinY(v187) + -1.0, v115, v115}];
  }

  v118 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v119 = [v14 contentView];
  [v119 bounds];
  v121 = v120;
  v123 = v122;
  v125 = v124;
  v127 = v126;

  [v118 v49[212]];
  sub_1003DF60C(v36, v4, type metadata accessor for SymbolButton.Configuration);
  v128 = *(v109 + 36);
  v129 = sub_1004DE53C();
  if ((*(*(v129 - 8) + 48))(&v4[v128], 1, v129))
  {
    v130 = type metadata accessor for SymbolButton.Configuration;
    v131 = v4;
  }

  else
  {
    v132 = v138;
    sub_1004DE50C();
    sub_1003DD438(v4, type metadata accessor for SymbolButton.Configuration);
    v133 = v139;
    v134 = v140;
    v135 = (*(v139 + 88))(v132, v140);
    v136 = enum case for UIView.Corner.Radius.rounded(_:);
    (*(v133 + 8))(v132, v134);
    if (v135 != v136)
    {
      return;
    }

    sub_1003D4740(v10);
    sub_1003D5B88(v10);
    v130 = type metadata accessor for SymbolButton.Metrics;
    v131 = v10;
  }

  sub_1003DD438(v131, v130);
}

Swift::Void __swiftcall SymbolButton.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SymbolButton.Configuration(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v16 - v9;
  sub_100004CB8(&qword_100644070, &unk_100531450);
  __chkstk_darwin();
  v12 = &v16 - v11;
  v13 = type metadata accessor for SymbolButton(0);
  v17.receiver = v1;
  v17.super_class = v13;
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", isa);
  (*(v6 + 56))(v12, 1, 1, v5);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v12, 0, 0, 0, 1);
  sub_10001074C(v12, &qword_100644070, &unk_100531450);
  v14 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003DF60C(v1 + v14, v10, type metadata accessor for SymbolButton.Configuration);
  v15 = [v1 traitCollection];
  sub_1003D4740(v4);
  sub_1003DD438(v4, type metadata accessor for SymbolButton.Metrics);
  sub_1003DF60C(v10, v8, type metadata accessor for SymbolButton.Configuration);
  sub_1003D3D78(v8, v15, v4);
  sub_1003DD438(v10, type metadata accessor for SymbolButton.Configuration);
  sub_1003D49E8(v4);
}

double SymbolButton.intrinsicContentSize.getter()
{
  v1 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin();
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v32 - v4;
  __chkstk_darwin();
  v7 = &v32 - v6;
  __chkstk_darwin();
  v9 = &v32 - v8;
  sub_1003D4740(&v32 - v8);
  sub_1003DD438(v9, type metadata accessor for SymbolButton.Metrics);
  sub_1004DE34C();
  v11 = v10;
  sub_1003D4740(v9);
  sub_1003DD438(v9, type metadata accessor for SymbolButton.Metrics);
  sub_1004DE35C();
  v12 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  if (!*(v12 + 8))
  {
    v20 = 0.0;
    if (!*(v12 + 128))
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_1003D4740(v7);
  v13 = &v7[v1[11]];
  v14 = *v13;
  v15 = v13[16];
  sub_1003DD438(v7, type metadata accessor for SymbolButton.Metrics);
  v16 = sub_1003D36F4();
  [v16 intrinsicContentSize];
  v18 = v17;

  if (v14 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  if (v15)
  {
    v19 = v18;
  }

  v20 = v19 + 0.0;
  if (*(v12 + 128))
  {
LABEL_10:
    if ((*(v12 + 184) & 1) == 0)
    {
      v21 = sub_1003D386C();
      [v21 intrinsicContentSize];
      v23 = v22;

      v20 = v20 + v23;
    }
  }

LABEL_12:
  if (*(v12 + 8) && *(v12 + 128) && (*(v12 + 184) & 1) == 0)
  {
    sub_1003D4740(v9);
    v24 = *&v9[v1[8]];
    sub_1003DD438(v9, type metadata accessor for SymbolButton.Metrics);
    v20 = v20 + v24;
  }

  v25 = *(v12 + *(type metadata accessor for SymbolButton.Configuration(0) + 40));
  if (v25)
  {
    [v25 intrinsicContentSize];
    if (v26 > v20)
    {
      v20 = v26;
    }
  }

  v27 = v11 + 0.0;
  sub_1003D4740(v5);
  v28 = *&v5[v1[10]];
  sub_1003DD438(v5, type metadata accessor for SymbolButton.Metrics);
  if (v20 > v28)
  {
    v29 = v20;
  }

  else
  {
    v29 = v28;
  }

  v30 = v27 + v29;
  sub_1003D4740(v3);
  sub_1003DD438(v3, type metadata accessor for SymbolButton.Metrics);
  return v30;
}

Swift::Void __swiftcall SymbolButton.tintColorDidChange()()
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for SymbolButton(0);
  v6.receiver = v0;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "tintColorDidChange");
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003DF60C(v0 + v4, v2, type metadata accessor for SymbolButton.Configuration);
  sub_1003D4C48(v2);
  sub_1003DD438(v2, type metadata accessor for SymbolButton.Configuration);
}

double SymbolButton.hitRectMinimumSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize;
  swift_beginAccess();
  return *v1;
}

void SymbolButton.hitRectMinimumSize.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

double SymbolButton.hitRect()()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for SymbolButton(0);
  objc_msgSendSuper2(&v15, "hitRect");
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize];
  swift_beginAccess();
  v10 = *v9;
  v16.origin.x = v2;
  v16.origin.y = v4;
  v16.size.width = v6;
  v16.size.height = v8;
  Width = CGRectGetWidth(v16);
  if (Width > v10)
  {
    v10 = Width;
  }

  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  CGRectGetHeight(v17);
  sub_1004DE41C();
  v13 = v12 - v10 * 0.5;
  sub_1004DE41C();
  return v13;
}

id SymbolButton.isHighlighted.setter(char a1)
{
  v3 = type metadata accessor for SymbolButton(0);
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, "isHighlighted");
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "setHighlighted:", a1 & 1);
  return sub_1003D2B24(v4);
}

id sub_1003D2B24(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  sub_100004CB8(&qword_100644070, &unk_100531450);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &aBlock - v5;
  result = [v2 isHighlighted];
  if (result != v3)
  {
    v8 = [v2 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 6)
    {
      v10 = objc_opt_self();
      if ([v10 areAnimationsEnabled])
      {
        if ([v2 isHighlighted])
        {
          v11 = swift_allocObject();
          *(v11 + 16) = v2;
          v28 = sub_1003DF5DC;
          v29 = v11;
          aBlock = _NSConcreteStackBlock;
          v25 = 1107296256;
          v26 = sub_100012680;
          v27 = &unk_1005F3868;
          v12 = _Block_copy(&aBlock);
          v13 = v2;

          v14 = swift_allocObject();
          *(v14 + 16) = v13;
          v28 = sub_1003DF604;
          v29 = v14;
          aBlock = _NSConcreteStackBlock;
          v25 = 1107296256;
          v26 = sub_100016298;
          v27 = &unk_1005F38B8;
          v15 = _Block_copy(&aBlock);
          v16 = v13;

          [v10 animateWithDuration:0x20000 delay:v12 options:v15 animations:0.1 completion:0.0];
          _Block_release(v15);
          _Block_release(v12);
        }

        else
        {
          sub_100006F10(0, &qword_100644F50, UIView_ptr);
          sub_100006F10(0, &qword_100644F78, UISpringTimingParameters_ptr);
          v17 = UISpringTimingParameters.init(dampingRatio:response:)(0.7, 0.4);
          v18 = swift_allocObject();
          *(v18 + 16) = v2;
          v19 = v2;
          static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v17, 0, sub_1003DF5BC, v18, 0, 0, 0.0);
        }
      }
    }

    v20 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = [objc_opt_self() areAnimationsEnabled];
    if (v21)
    {
      v22 = 0x3FD0000000000000;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = 3075;
    }

    else
    {
      v23 = 0;
    }

    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, v22, 0, v23, v21 ^ 1);
    return sub_10001074C(v6, &qword_100644070, &unk_100531450);
  }

  return result;
}

id sub_1003D2ED0(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

void sub_1003D2F30(int a1, id a2)
{
  if ([a2 showsMenuAsPrimaryAction] && objc_msgSend(a2, "isContextMenuInteractionEnabled"))
  {
    sub_100006F10(0, &qword_100644F50, UIView_ptr);
    sub_100006F10(0, &qword_100644F78, UISpringTimingParameters_ptr);
    v5 = UISpringTimingParameters.init(dampingRatio:response:)(0.7, 0.4);
    v3 = swift_allocObject();
    *(v3 + 16) = a2;
    v4 = a2;
    static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v5, 0, sub_1003DFF0C, v3, 0, 0, 0.0);
  }
}

id sub_1003D3080(void *a1, uint64_t a2, uint64_t (*a3)(void), SEL *a4)
{
  v6.receiver = a1;
  v6.super_class = (a3)(0, a2);
  return objc_msgSendSuper2(&v6, *a4);
}

id sub_1003D30D4(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SymbolButton(0);
  return objc_msgSendSuper2(&v4, *a1);
}

id sub_1003D3210(char a1, SEL *a2, SEL *a3)
{
  sub_100004CB8(&qword_100644070, &unk_100531450);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = type metadata accessor for SymbolButton(0);
  v17.receiver = v3;
  v17.super_class = v9;
  v10 = objc_msgSendSuper2(&v17, *a2);
  v16.receiver = v3;
  v16.super_class = v9;
  objc_msgSendSuper2(&v16, *a3, a1 & 1);
  result = [v3 *a2];
  if (v10 != result)
  {
    v12 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    v13 = [objc_opt_self() areAnimationsEnabled];
    if (v13)
    {
      v14 = 0x3FD0000000000000;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = 3075;
    }

    else
    {
      v15 = 0;
    }

    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v8, v14, 0, v15, v13 ^ 1);
    return sub_10001074C(v8, &qword_100644070, &unk_100531450);
  }

  return result;
}

Swift::Void __swiftcall SymbolButton.setEnabled(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  if (animated)
  {

    [v2 setEnabled:_];
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = _;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1003DD4D0;
    *(v6 + 24) = v5;
    v10[4] = sub_100051F90;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1000121E8;
    v10[3] = &unk_1005F3008;
    v7 = _Block_copy(v10);
    v8 = v2;

    [v4 performWithoutAnimation:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1003D3548(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t sub_1003D35D0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id sub_1003D36F4()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView);
  }

  else
  {
    v4 = v0;
    v5 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    v6 = *(v5 + 80);
    v18[4] = *(v5 + 64);
    v18[5] = v6;
    v18[6] = *(v5 + 96);
    v19 = *(v5 + 112);
    v7 = *(v5 + 16);
    v18[0] = *v5;
    v18[1] = v7;
    v8 = *(v5 + 48);
    v18[2] = *(v5 + 32);
    v18[3] = v8;
    v9 = type metadata accessor for SymbolButton.ImageView();
    v10 = objc_allocWithZone(v9);
    sub_1003DD2E0(v18, v17);
    v16.receiver = v10;
    v16.super_class = v9;
    v11 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v11 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    [v11 setContentMode:4];
    sub_1003D71EC(v18);
    sub_1003B411C(v18);

    v12 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
    if (([v11 isDescendantOfView:v12] & 1) == 0)
    {
      [v12 addSubview:v11];
    }

    v13 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_1003D386C()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    v6 = *(v5 + 136);
    v7 = *(v5 + 168);
    v15[2] = *(v5 + 152);
    v15[3] = v7;
    v15[4] = *(v5 + 184);
    v15[0] = *(v5 + 120);
    v15[1] = v6;
    v8 = objc_allocWithZone(type metadata accessor for SymbolButton.Label());
    sub_1003DD350(v15, v14);
    v9 = sub_1003D7430(v15);
    v10 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
    if (([v9 isDescendantOfView:v10] & 1) == 0)
    {
      [v10 addSubview:v9];
    }

    v11 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_1003D3974(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView;
  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    [v3 removeFromSuperview];
    v5 = *&v2[v4];
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a1)
  {
    type metadata accessor for SymbolButton.BadgeView();
    v6 = v5;
    v3 = v3;
    v7 = sub_1004DE5FC();

    if (v7)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView];
  v17 = v5;
  [v8 insertSubview:? aboveSubview:?];
  v9 = *&v2[v4];
  if (v9)
  {
    v10 = v9;
    v11 = [v2 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 6)
    {
      v13 = 12.0;
    }

    else
    {
      v13 = 8.0;
    }

    [v2 bounds];
    MaxX = CGRectGetMaxX(v19);
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = v13;
    v20.size.height = v13;
    v15 = MaxX - CGRectGetWidth(v20) + 1.0;
    [v2 bounds];
    [v10 setFrame:{v15, CGRectGetMinY(v21) + -1.0, v13, v13}];

    v16 = v10;
  }

  else
  {
    v16 = v17;
  }
}

void sub_1003D3B58()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
    v6 = v4;
    v7 = [v5 contentView];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_1003DF60C(v0 + v16, v3, type metadata accessor for SymbolButton.Configuration);
    v17 = &v3[*(v1 + 40)];
    if (*v17)
    {
      v18 = (v17 + 8);
    }

    else
    {
      v18 = &UIEdgeInsetsZero;
    }

    if (*v17)
    {
      p_left = (v17 + 16);
    }

    else
    {
      p_left = &UIEdgeInsetsZero.left;
    }

    v20 = *p_left;
    top = v18->top;
    sub_1003DD438(v3, type metadata accessor for SymbolButton.Configuration);
    [v6 setFrame:{sub_10001087C(v9, v11, v13, v15, top, v20)}];
  }
}

id sub_1003D3D3C()
{
  result = [objc_opt_self() defaultMetrics];
  qword_1006449F0 = result;
  return result;
}

void sub_1003D3D78(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v73 = &v72 - v6;
  v7 = type metadata accessor for SymbolButton.Metrics(0);
  v8 = v7[5];
  v9 = sub_1004DE53C();
  v10 = *(*(v9 - 8) + 56);
  v79 = v8;
  v10(&a3[v8], 1, 1, v9);
  v11 = &a3[v7[11]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v74 = v11;
  v11[16] = 1;
  v12 = type metadata accessor for SymbolButton.Configuration(0);
  v13 = (a1 + v12[16]);
  v75 = *v13;
  v78 = a2;
  if (v75 == 1)
  {
    v14 = [a2 preferredContentSizeCategory];
    v15 = *(v13 + 1);
    if (v15)
    {
      v16 = v15;
      v17 = sub_1004DE2FC();
      if (v17)
      {
        v18 = v14;
      }

      else
      {
        v18 = v16;
      }

      if (v17)
      {
        v14 = v16;
      }
    }

    v19 = *(v13 + 2);
    if (v19)
    {
      v20 = v19;
      if (sub_1004DE2EC())
      {

        goto LABEL_15;
      }
    }

    v20 = v14;
  }

  else
  {
    v20 = UIContentSizeCategoryLarge;
  }

LABEL_15:
  v21 = objc_opt_self();
  v77 = v20;
  v22 = [v21 traitCollectionWithPreferredContentSizeCategory:v20];
  *a3 = v22;
  v23 = objc_opt_self();
  v24 = *(a1 + 136);
  v72 = v22;
  v25 = v22;
  v26 = [v23 preferredFontDescriptorWithTextStyle:v24 compatibleWithTraitCollection:v25];
  v27 = objc_opt_self();
  v76 = v26;
  [v26 pointSize];
  *&a3[v7[6]] = [v27 systemFontOfSize:? weight:?];
  if (*(a1 + 40))
  {
    v28 = [v23 preferredFontDescriptorWithTextStyle:*(a1 + 24) compatibleWithTraitCollection:v25];
    [v28 pointSize];
    v30 = [objc_opt_self() configurationWithPointSize:*(a1 + 48) weight:*(a1 + 56) scale:v29];
  }

  else
  {
    v30 = [objc_opt_self() configurationWithPointSize:*(a1 + 48) weight:*(a1 + 56) scale:*(a1 + 32)];
  }

  *&a3[v7[7]] = v30;
  *&a3[v7[8]] = *(a1 + v12[12]);
  v31 = *(a1 + 80);
  v32 = v78;
  if (v31 == 255)
  {
    *&a3[v7[9]] = UIOffsetZero;
    if (v75)
    {
      goto LABEL_23;
    }

LABEL_29:

    v64 = (a1 + v12[15]);
    v65 = &a3[v7[12]];
    v66 = v64[1];
    *v65 = *v64;
    *(v65 + 1) = v66;
    *&a3[v7[10]] = *(a1 + v12[13]);
    v67 = (a1 + v12[14]);
    LOBYTE(v65) = *(v67 + 16);
    v68 = *v67;
    v69 = v74;
    *v74 = v68;
    v69[16] = v65;
    v70 = v12[9];
    v71 = v79;
    sub_10001074C(&a3[v79], &qword_100644A50, &qword_100528DC0);
    sub_1000108DC(a1 + v70, &a3[v71], &qword_100644A50, &qword_100528DC0);
    sub_1003DD438(a1, type metadata accessor for SymbolButton.Configuration);
    return;
  }

  v33 = *(a1 + 72);
  if ((v31 & 1) == 0)
  {
    [v78 displayScale];
    sub_1004DE71C();
    v61 = &a3[v7[9]];
    *v61 = v62;
    *(v61 + 1) = v63;
    if (v75)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  v34 = &a3[v7[9]];
  *v34 = *(a1 + 64);
  *(v34 + 1) = v33;
  if (!v75)
  {
    goto LABEL_29;
  }

LABEL_23:
  if (qword_10063DB00 != -1)
  {
    swift_once();
  }

  v35 = qword_1006449F0;
  v36 = (a1 + v12[15]);
  v37 = v36[1];
  v38 = v36[2];
  v39 = v36[3];
  [qword_1006449F0 scaledValueForValue:v25 compatibleWithTraitCollection:*v36];
  v41 = v40;
  [v35 scaledValueForValue:v25 compatibleWithTraitCollection:v37];
  v43 = v42;
  [v35 scaledValueForValue:v25 compatibleWithTraitCollection:v38];
  v45 = v44;
  [v35 scaledValueForValue:v25 compatibleWithTraitCollection:v39];
  v46 = &a3[v7[12]];
  *v46 = v41;
  *(v46 + 1) = v43;
  *(v46 + 2) = v45;
  *(v46 + 3) = v47;
  v48 = (a1 + v12[13]);
  v49 = v48[1];
  [v35 scaledValueForValue:v25 compatibleWithTraitCollection:*v48];
  v51 = v50;
  [v35 scaledValueForValue:v25 compatibleWithTraitCollection:v49];
  v52 = &a3[v7[10]];
  *v52 = v51;
  *(v52 + 1) = v53;
  v54 = a1 + v12[14];
  if ((*(v54 + 16) & 1) == 0)
  {
    v55 = *(v54 + 8);
    [v35 scaledValueForValue:v25 compatibleWithTraitCollection:*v54];
    v57 = v56;
    [v35 scaledValueForValue:v25 compatibleWithTraitCollection:v55];
    v58 = v74;
    *v74 = v57;
    *(v58 + 1) = v59;
    v58[16] = 0;
  }

  v60 = v73;
  sub_1003D43AC(a1 + v12[9], v72, v73);

  sub_1003DD438(a1, type metadata accessor for SymbolButton.Configuration);
  sub_1000107AC(v60, &a3[v79], &qword_100644A50, &qword_100528DC0);
}

uint64_t sub_1003D43AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v27 = a3;
  v25 = sub_1004DE4EC();
  v4 = *(v25 - 8);
  __chkstk_darwin();
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v23 - v7;
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v10 = v23 - v9;
  v11 = sub_1004DE53C();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_1000108DC(a1, v10, &qword_100644A50, &qword_100528DC0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10001074C(v10, &qword_100644A50, &qword_100528DC0);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_1004DE50C();
    v15 = v25;
    v16 = (*(v4 + 88))(v8, v25);
    if (v16 == enum case for UIView.Corner.Radius.value(_:))
    {
      v17 = v16;
      (*(v4 + 96))(v8, v15);
      v18 = *v8;
      v19 = v8[8];
      v20 = v27;
      (*(v12 + 16))(v27, v14, v11);
      [v23[1] scaledValueForValue:v24 compatibleWithTraitCollection:v18];
      *v6 = v21;
      v6[8] = v19;
      (*(v4 + 104))(v6, v17, v15);
      sub_1004DE51C();
      (*(v12 + 8))(v14, v11);
      return (*(v12 + 56))(v20, 0, 1, v11);
    }

    (*(v12 + 8))(v14, v11);
    (*(v4 + 8))(v8, v15);
  }

  return sub_1000108DC(v26, v27, &qword_100644A50, &qword_100528DC0);
}

uint64_t sub_1003D4740@<X0>(char *a1@<X8>)
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100644F58, &unk_100533358);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  swift_beginAccess();
  sub_1000108DC(v1 + v9, v8, &qword_100644F58, &unk_100533358);
  v10 = type metadata accessor for SymbolButton.Metrics(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_1003DF674(v8, a1, type metadata accessor for SymbolButton.Metrics);
  }

  sub_10001074C(v8, &qword_100644F58, &unk_100533358);
  v12 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003DF60C(v1 + v12, v4, type metadata accessor for SymbolButton.Configuration);
  sub_1003D3D78(v4, [v1 traitCollection], a1);
  sub_1003DF60C(a1, v6, type metadata accessor for SymbolButton.Metrics);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1000107AC(v6, v1 + v9, &qword_100644F58, &unk_100533358);
  return swift_endAccess();
}

double sub_1003D49E8(uint64_t a1)
{
  sub_100004CB8(&qword_100644F58, &unk_100533358);
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = type metadata accessor for SymbolButton.Metrics(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v14 - v9);
  sub_1003D4740(&v14 - v9);
  sub_1003DF60C(a1, v4, type metadata accessor for SymbolButton.Metrics);
  (*(v6 + 56))(v4, 0, 1, v5);
  v11 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  swift_beginAccess();
  sub_1000107AC(v4, v1 + v11, &qword_100644F58, &unk_100533358);
  swift_endAccess();
  sub_1003D4740(v8);
  v12 = sub_1003DAA08(v8, v10);
  sub_1003DD438(v8, type metadata accessor for SymbolButton.Metrics);
  if ((v12 & 1) == 0)
  {
    sub_1003D4740(v8);
    sub_1003D5A50();
    sub_1003DD438(v8, type metadata accessor for SymbolButton.Metrics);
    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsLayout];
  }

  sub_1003DD438(a1, type metadata accessor for SymbolButton.Metrics);
  sub_1003DD438(v10, type metadata accessor for SymbolButton.Metrics);
  return result;
}

id sub_1003D4C48(__int128 *a1)
{
  type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin();
  v111 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v110 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v102 - v5;
  if (qword_10063D808 != -1)
  {
    swift_once();
  }

  v7 = sub_1004D966C();
  sub_100035430(v7, qword_1006736D8);
  sub_1003DF60C(a1, v6, type metadata accessor for SymbolButton.Configuration);
  v8 = v1;
  v9 = sub_1004D964C();
  v10 = sub_1004DDF6C();

  v11 = os_log_type_enabled(v9, v10);
  v113 = v8;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v118 = v13;
    *v12 = 136446466;
    v14 = &v8[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v15 = v14[1];
    if (v15)
    {
      v16 = *v14;
      v17 = v15;
    }

    else
    {
      v18 = v8;
      v109 = v13;
      v19 = v18;
      v20 = [v18 description];
      v16 = sub_1004DD43C();
      v17 = v21;
    }

    v22 = sub_1002E5CC4(v16, v17, &v118);

    *(v12 + 4) = v22;
    *(v12 + 12) = 2082;
    v23 = SymbolButton.Configuration.description.getter();
    v25 = v24;
    sub_1003DD438(v6, type metadata accessor for SymbolButton.Configuration);
    v26 = sub_1002E5CC4(v23, v25, &v118);

    *(v12 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s] Applying configuration=%{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1003DD438(v6, type metadata accessor for SymbolButton.Configuration);
  }

  v27 = v113;
  v28 = *&v113[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  v29 = *(a1 + 248);
  v126[0] = *(a1 + 232);
  v126[1] = v29;
  v126[2] = *(a1 + 264);
  sub_1003D691C(v126);
  v30 = [v28 contentView];
  v31 = *(a1 + 35);
  v32 = *(a1 + 36);
  v33 = *(a1 + 37);
  v34 = v33;
  UIView.border.setter(v31, v32, v33);

  v109 = *&v27[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v35 = *(a1 + 25);
  v36 = *(a1 + 26);
  v37 = *(a1 + 27);
  v38 = *(a1 + 28);
  if (v36 == 1)
  {
    if (qword_10063DAF8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v39 = *&static SymbolButton.Background.clear;
    v40 = qword_100673C58;
    v41 = qword_100673C60;
    v42 = qword_100673C68;

    v43 = v40;
  }

  else
  {
    v39 = *(a1 + 25);
    v42 = *(a1 + 28);
    v43 = *(a1 + 26);
    v40 = v43;
    v41 = *(a1 + 27);
  }

  sub_1003DD3C0(v35, v36, v37, v38);
  sub_1003D6D98(v40, v41, v42, v39);

  v44 = v113;
  v45 = sub_1003D36F4();
  v46 = a1[5];
  v122 = a1[4];
  v123 = v46;
  v124 = a1[6];
  v125 = *(a1 + 14);
  v47 = a1[1];
  v118 = *a1;
  v119 = v47;
  v48 = a1[3];
  v120 = a1[2];
  v121 = v48;
  sub_1003D71EC(&v118);

  v49 = sub_1003D386C();
  v50 = *(a1 + 136);
  v117[0] = *(a1 + 120);
  v117[1] = v50;
  v51 = *(a1 + 168);
  v117[2] = *(a1 + 152);
  v117[3] = v51;
  v117[4] = *(a1 + 184);
  v52 = v117[0];
  sub_1003D75B8(v117);

  if (*(&v52 + 1))
  {
    v53 = HIBYTE(*(&v52 + 1)) & 0xFLL;
    if ((*(&v52 + 1) & 0x2000000000000000) == 0)
    {
      v53 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      v54 = sub_1004DD3FC();
      [v44 setAccessibilityLabel:v54];
    }
  }

  v55 = (a1 + *(v112 + 44));
  v56 = v55[2];
  v57 = &selRef_scaledValueForValue_;
  v109 = v52;
  if (v56 == 1)
  {
    v58 = *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
    sub_1003D3974(v58);
  }

  else
  {
    v59 = *v55;
    v60 = v55[1];
    v61 = *&v60;
    v62 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView;
    v63 = *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v107 = v60;
    v108 = v59;
    if (v63)
    {
      v64 = v56;
      v65 = v44;
      v66 = v63;
      v67 = v63;
    }

    else
    {
      v106 = type metadata accessor for SymbolButton.BadgeView();
      v68 = objc_allocWithZone(v106);
      v105 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
      v69 = objc_allocWithZone(UIView);
      v104 = v56;
      v70 = [v69 init];
      v103 = objc_opt_self();
      v71 = v59;
      v72 = [v103 blackColor];
      [v70 setBackgroundColor:v72];

      v73 = [v70 layer];
      [v73 setCompositingFilter:kCAFilterDestOut];

      *&v68[v105] = v70;
      v74 = &v68[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v74 = v71;
      v74[1] = v60;
      v74[2] = v56;
      v114.receiver = v68;
      v114.super_class = v106;
      v75 = v104;
      v76 = v60;
      v67 = objc_msgSendSuper2(&v114, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v77 = v75;
      if (!v56)
      {
        v77 = [v103 tintColor];
      }

      v78 = v75;
      [v67 setBackgroundColor:v77];

      [v67 setAlpha:v61];
      [*(v67 + OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView) setAlpha:v61];
      sub_1003D7B6C();
      sub_1002EA654(v108, v76, v56);

      v66 = 0;
      v65 = v113;
      v63 = *&v113[v62];
    }

    *&v65[v62] = v67;
    v79 = v67;
    v80 = v66;
    sub_1003D3974(v63);

    v81 = *&v65[v62];
    v44 = v65;
    if (v81)
    {
      v57 = &selRef_scaledValueForValue_;
      if (v56)
      {
        v82 = v81;
        v83 = v56;
        v84 = v56;
      }

      else
      {
        v85 = objc_opt_self();
        v86 = v81;
        v84 = [v85 tintColor];
        v83 = 0;
      }

      v87 = v83;
      [v81 setBackgroundColor:v84];

      [v81 setAlpha:v61];
      [*&v81[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:v61];
      sub_1003D7B6C();
      sub_1002EA654(v108, v107, v56);
    }

    else
    {
      sub_1002EA654(v108, v107, v56);
      v57 = &selRef_scaledValueForValue_;
    }
  }

  v88 = v112;
  v89 = a1 + *(v112 + 40);
  v90 = *(v89 + 1);
  v115[0] = *v89;
  v115[1] = v90;
  v115[2] = *(v89 + 2);
  v116 = *(v89 + 6);
  sub_1003D584C(v115);
  [v44 v57[32]];
  [v44 setTintColor:*(a1 + v88[18])];
  v91 = [v44 traitCollection];
  v92 = v111;
  sub_1003D4740(v111);
  sub_1003DD438(v92, type metadata accessor for SymbolButton.Metrics);
  v93 = v110;
  sub_1003DF60C(a1, v110, type metadata accessor for SymbolButton.Configuration);
  sub_1003D3D78(v93, v91, v92);
  sub_1003D49E8(v92);
  sub_1003D4740(v92);
  sub_1003D5B88(v92);
  sub_1003DD438(v92, type metadata accessor for SymbolButton.Metrics);
  sub_1003D56C0();
  [v44 setShowsLargeContentViewer:*(a1 + v88[16] + 24)];
  if (*(&v52 + 1))
  {
    v94 = sub_1004DD3FC();
  }

  else
  {
    v94 = 0;
  }

  v95 = *(&v118 + 1);
  [v44 setLargeContentTitle:v94];

  if (v95)
  {
    v96 = sub_1004DD3FC();
    v97 = objc_opt_self();
    v98 = [v97 _systemImageNamed:v96];

    if (!v98)
    {
      v99 = v119;
      v100 = sub_1004DD3FC();
      v98 = [v97 imageNamed:v100 inBundle:v99];
    }
  }

  else
  {
    v98 = 0;
  }

  [v44 setLargeContentImage:v98];

  return [v44 setScalesLargeContentImage:1];
}

void sub_1003D56C0()
{
  type metadata accessor for SymbolButton.Configuration(0);
  *&v1 = __chkstk_darwin().n128_u64[0];
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
  if (!*(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount))
  {
    v6 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_1003DF60C(v0 + v6, v3, type metadata accessor for SymbolButton.Configuration);
    if (*(v3 + 29) == 1)
    {
      sub_1003DD438(v3, type metadata accessor for SymbolButton.Configuration);
    }

    else
    {
      v7 = *(v3 + 34);

      sub_1003DD438(v3, type metadata accessor for SymbolButton.Configuration);
      if (v7)
      {
        v8 = sub_1004DD3FC();

LABEL_10:
        [v4 _setGroupName:v8];

        return;
      }
    }

    v8 = 0;
    goto LABEL_10;
  }

  v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);

  [v5 _setGroupName:{0, v1}];
}

void **sub_1003D584C(void **result)
{
  v2 = v1;
  v3 = result;
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView;
  v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView);
  v6 = *result;
  if (!*result)
  {
    if (!v5)
    {
      return result;
    }

LABEL_10:
    if ([v5 isDescendantOfView:v2])
    {
      [*(v2 + v4) removeFromSuperview];
    }

    v8 = v6;
    if (!v6)
    {
      v15 = *(v2 + v4);
      *(v2 + v4) = 0;
      v16 = 0;

      result = *(v2 + v4);
      if (!result)
      {
        return result;
      }

      v14 = 1.0;
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v7 = v6;
  v8 = v7;
  if (v5)
  {
    sub_100006F10(0, &qword_100644F50, UIView_ptr);
    v9 = v5;
    v10 = sub_1004DE5FC();

    if (v10)
    {
      result = *(v2 + v4);
      if (!result)
      {
        return result;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v5 = *(v2 + v4);
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_13:
  v11 = *(v2 + v4);
  *(v2 + v4) = v6;
  v12 = v8;

  v13 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
  if ([v13 isDescendantOfView:v13])
  {
    [v13 insertSubview:v12 aboveSubview:v13];
  }

  else
  {

    if (([v12 isDescendantOfView:v13] & 1) == 0)
    {
      [v13 addSubview:v12];
    }
  }

  sub_1003D3B58();

  result = *(v2 + v4);
  if (result)
  {
LABEL_18:
    v14 = *(v3 + 5);
LABEL_21:
    [result setAlpha:v14];
    result = *(v2 + v4);
    if (result)
    {
      if (v6)
      {
        v17 = v3[6];
      }

      else
      {
        v17 = 0;
      }

      return [result setTintColor:v17];
    }
  }

  return result;
}

double sub_1003D5A50()
{
  v0 = type metadata accessor for SymbolButton.Metrics(0) - 8;
  __chkstk_darwin();
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1003D36F4();
  sub_1003D4740(v2);
  v4 = *&v2[*(v0 + 36)];
  sub_1003DD438(v2, type metadata accessor for SymbolButton.Metrics);
  [v3 setPreferredSymbolConfiguration:v4];

  v5 = sub_1003D386C();
  sub_1003D4740(v2);
  v6 = *&v2[*(v0 + 32)];
  sub_1003DD438(v2, type metadata accessor for SymbolButton.Metrics);
  [v5 setFont:v6];

  sub_1003D4740(v2);
  sub_1003D5B88(v2);
  sub_1003DD438(v2, type metadata accessor for SymbolButton.Metrics);
  return result;
}

uint64_t sub_1003D5B88(uint64_t a1)
{
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v39 - v4;
  __chkstk_darwin();
  v7 = &v39 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
  v9 = *(type metadata accessor for SymbolButton.Metrics(0) + 20);
  sub_1000108DC(a1 + v9, v7, &qword_100644A50, &qword_100528DC0);
  sub_1004DE54C();
  v41 = v1;
  sub_1000108DC(a1 + v9, v7, &qword_100644A50, &qword_100528DC0);
  sub_1004DE54C();
  v10 = [v8 contentView];
  v11 = [v10 clipsToBounds];

  if (v11)
  {
    sub_1000108DC(a1 + v9, v5, &qword_100644A50, &qword_100528DC0);
    v12 = sub_1004DE53C();
    v13 = (*(*(v12 - 8) + 48))(v5, 1, v12);
    sub_10001074C(v5, &qword_100644A50, &qword_100528DC0);
    if (v13 != 1)
    {
      v14 = [v8 contentView];
      [v14 setClipsToBounds:0];
    }
  }

  v15 = v41;
  if (*(v41 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) == 1)
  {
    v40 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated;
    [v8 _setAllowsGroupFiltering:1];
    v16 = [v8 contentView];
    v17 = [v16 subviews];

    sub_100006F10(0, &qword_100644F50, UIView_ptr);
    v18 = sub_1004DD87C();

    if (v18 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1004DED5C())
    {
      v20 = v15 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
      swift_beginAccess();
      if (!i)
      {
        break;
      }

      v21 = 0;
      v22 = v18 & 0xC000000000000001;
      v23 = v18 & 0xFFFFFFFFFFFFFF8;
      v15 = &selRef_addTarget_action_forControlEvents_;
      v42 = v18 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v22)
        {
          v24 = sub_1004DEB2C();
        }

        else
        {
          if (v21 >= *(v23 + 16))
          {
            goto LABEL_22;
          }

          v24 = *(v18 + 8 * v21 + 32);
        }

        v25 = v24;
        v26 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        type metadata accessor for SymbolButton.Label();
        if (([v25 v15[111]] & 1) == 0)
        {
          v27 = type metadata accessor for SymbolButton.Configuration(0);
          v28 = v20[*(v27 + 76)];
          if (v28 == 2)
          {
            v29 = &v20[*(v27 + 36)];
            v30 = v22;
            v31 = v18;
            v32 = i;
            v33 = v20;
            v34 = v15;
            v35 = v43;
            sub_1000108DC(v29, v43, &qword_100644A50, &qword_100528DC0);
            v36 = sub_1004DE53C();
            LOBYTE(v28) = (*(*(v36 - 8) + 48))(v35, 1, v36) != 1;
            v37 = v35;
            v15 = v34;
            v20 = v33;
            i = v32;
            v18 = v31;
            v22 = v30;
            v23 = v42;
            sub_10001074C(v37, &qword_100644A50, &qword_100528DC0);
          }

          [v25 setClipsToBounds:v28 & 1];
        }

        ++v21;
        if (v26 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_19:

    *(v41 + v40) = 0;
  }

  return sub_1003D6004();
}

uint64_t sub_1003D6004()
{
  v1 = v0;
  v2 = sub_1004DE4EC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v27 - v8;
  sub_100004CB8(&qword_100644F80, &qword_100533368);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v12 = [v0 traitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 6)
  {
    *(&v38 + 1) = sub_1004D97FC();
    v39 = &protocol witness table for UIHoverHighlightEffect;
    sub_1000357EC(&v37);
    sub_1004D973C();
  }

  else
  {
    *(&v38 + 1) = sub_1004D979C();
    v39 = &protocol witness table for UIHoverLiftEffect;
    sub_1000357EC(&v37);
    sub_1004D972C();
  }

  sub_10001074C(&v40, &qword_100644F88, &qword_100533370);
  v40 = v37;
  v41 = v38;
  v42 = v39;
  sub_1000108DC(&v40, &v35, &qword_100644F88, &qword_100533370);
  if (v36)
  {
    v27 = v3;
    v28 = v2;
    v33 = v11;
    sub_100035850(&v35, &v37);
    v31 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView];
    v30 = v39;
    sub_100008C70(&v37, *(&v38 + 1));
    v29 = &v27;
    v14 = __chkstk_darwin();
    (*(v16 + 16))(&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
    v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_1003DF60C(&v1[v17], v9, type metadata accessor for SymbolButton.Configuration);
    v32 = v6;
    v18 = *(v6 + 36);
    v19 = sub_1004DE53C();
    v20 = *(*(v19 - 8) + 48);
    if (v20(&v9[v18], 1, v19))
    {
      sub_1003DD438(v9, type metadata accessor for SymbolButton.Configuration);
      sub_1004D974C();
    }

    else
    {
      sub_1004DE50C();
      sub_1003DD438(v9, type metadata accessor for SymbolButton.Configuration);
      [v1 bounds];
      sub_1004DE4DC();
      (*(v27 + 8))(v5, v28);
    }

    v22 = v34;
    sub_1003DF60C(&v1[v17], v34, type metadata accessor for SymbolButton.Configuration);
    if (v20((v22 + *(v32 + 36)), 1, v19))
    {
      v23 = 0;
    }

    else
    {
      v23 = sub_1004DE4BC();
    }

    v24 = v33;
    sub_100006F10(0, &qword_100644F90, UIHoverStyle_ptr);
    sub_1003DD438(v22, type metadata accessor for SymbolButton.Configuration);
    sub_1004DDF3C(v23);
    sub_1004D9A1C();
    v25 = sub_1004D9A2C();
    (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
    v26 = sub_1004DDF2C();
    [v31 setHoverStyle:v26];

    sub_10001074C(&v40, &qword_100644F88, &qword_100533370);
    return sub_100008D24(&v37);
  }

  else
  {
    sub_10001074C(&v35, &qword_100644F88, &qword_100533370);
    [v1 setHoverStyle:0];
    return sub_10001074C(&v40, &qword_100644F88, &qword_100533370);
  }
}

void sub_1003D691C(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  [v2 setEffect:0];
  v6 = *a1;
  if (*a1 < 2uLL)
  {
    sub_100006F10(0, &qword_100644F98, UIVisualEffect_ptr);
    isa = sub_1004DD85C().super.isa;
    [v2 setBackgroundEffects:isa];

    if (*a1 == 1)
    {
LABEL_6:
      sub_100006F10(0, &qword_100644F98, UIVisualEffect_ptr);
      v8.super.isa = sub_1004DD85C().super.isa;
      [v2 setContentEffects:v8.super.isa];
      goto LABEL_12;
    }

    v5 = *(a1 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_8:
    v12 = v5;
    v13 = [v2 backgroundEffects];
    sub_100006F10(0, &qword_100644F98, UIVisualEffect_ptr);
    v14 = sub_1004DD87C();

    sub_1004DD84C();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1004DD8BC();
    }

    sub_1004DD90C();
    v15 = sub_1004DD85C().super.isa;

    [v2 setBackgroundEffects:v15];

    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  sub_100004CB8(&qword_100642970, &qword_100529AD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100511AB0;
  *(v9 + 32) = v6;
  sub_100006F10(0, &qword_100644F98, UIVisualEffect_ptr);
  v10 = v6;
  v11 = sub_1004DD85C().super.isa;

  [v2 setBackgroundEffects:v11];

  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (*a1 == 1)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_11:
  sub_100004CB8(&qword_100642970, &qword_100529AD0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100511AB0;
  *(v16 + 32) = v4;
  sub_100006F10(0, &qword_100644F98, UIVisualEffect_ptr);
  v17 = v4;
  v8.super.isa = sub_1004DD85C().super.isa;

  [v2 setContentEffects:v8.super.isa];

LABEL_12:
  v18 = [v2 contentView];
  v19 = [v18 layer];

  [v19 setAllowsGroupBlending:0];
}

id sub_1003D6CE8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003D6D98(void *a1, uint64_t a2, NSString a3, double a4)
{
  v8 = [v4 layer];
  if (a3)
  {
    a3 = sub_1004DD3FC();
  }

  [v8 setCompositingFilter:a3];

  swift_unknownObjectRelease();
  v9 = &v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v10 = *&v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v11 = *&v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration + 8];
  *v9 = a1;
  v9[1] = a4;
  if (!a1)
  {
    a1 = v10;
    if (!v10)
    {
      if (v11 == a4)
      {
        v14 = 0;
        goto LABEL_11;
      }

LABEL_10:
      sub_1003D6F58();
      v14 = v10;
      goto LABEL_11;
    }

LABEL_9:
    v15 = a1;
    goto LABEL_10;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  sub_100006F10(0, &qword_100641C80, UIColor_ptr);
  v12 = a1;
  v16 = v10;
  v13 = sub_1004DE5FC();

  v14 = v16;
  if ((v13 & 1) == 0 || v11 != a4)
  {
    goto LABEL_10;
  }

LABEL_11:
  v17 = v14;
}

void sub_1003D6F58()
{
  v1 = &v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v2 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  }

  else
  {
    v3 = [objc_opt_self() tintColor];
  }

  v4 = *(v1 + 1);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = objc_allocWithZone(UIColor);
  v11[4] = sub_1003DFD04;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1003BB590;
  v11[3] = &unk_1005F3A70;
  v7 = _Block_copy(v11);
  v8 = v2;
  v9 = v3;
  v10 = [v6 initWithDynamicProvider:v7];
  _Block_release(v7);

  [v0 setBackgroundColor:v10];
}

id sub_1003D70B8(uint64_t a1, id a2, double a3)
{
  v4 = [a2 resolvedColorWithTraitCollection:a1];
  [v4 alphaComponent];
  v6 = [v4 colorWithAlphaComponent:v5 * a3];

  return v6;
}

id sub_1003D71EC(double *a1)
{
  if (*(a1 + 1))
  {
    v3 = sub_1004DD3FC();
    v4 = objc_opt_self();
    v5 = [v4 _systemImageNamed:v3];

    if (!v5)
    {
      v6 = *(a1 + 2);
      v7 = sub_1004DD3FC();
      v5 = [v4 imageNamed:v7 inBundle:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  [v1 setImage:v5];

  v8 = [v1 layer];
  if (*(a1 + 12))
  {
    v9 = sub_1004DD3FC();
  }

  else
  {
    v9 = 0;
  }

  [v8 setCompositingFilter:v9];

  swift_unknownObjectRelease();
  v10 = [v1 layer];
  [v10 setAllowsGroupOpacity:0];

  [v1 setTintColor:*(a1 + 14)];
  v11 = a1[13];

  return [v1 setAlpha:v11];
}

id sub_1003D7430(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SymbolButton.Label();
  v3 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v3 setLineBreakMode:5];
  v4 = v3;
  [v4 setNumberOfLines:1];
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setAdjustsFontForContentSizeCategory:0];
  [v4 setClipsToBounds:0];

  [v4 _setTextColorFollowsTintColor:1];
  sub_1003D75B8(a1);
  sub_1003B4170(a1);

  return v4;
}

id sub_1003D75B8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v3 = sub_1004DD3FC();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText:v3];

  v4 = [v1 layer];
  if (*(a1 + 40))
  {
    v5 = sub_1004DD3FC();
  }

  else
  {
    v5 = 0;
  }

  [v4 setCompositingFilter:v5];

  swift_unknownObjectRelease();
  v6 = [v1 layer];
  [v6 setAllowsGroupOpacity:0];

  [v1 setTintColor:*(a1 + 56)];
  [v1 setSizingRule:*(a1 + 72)];
  v7 = 0.0;
  if ((*(a1 + 64) & 1) == 0)
  {
    v7 = *(a1 + 48);
  }

  return [v1 setAlpha:v7];
}

void sub_1003D7B6C()
{
  v1 = v0;
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  *&v2 = __chkstk_darwin().n128_u64[0];
  v4 = &v17 - v3;
  [v1 bounds];
  v5 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration;
  sub_1004DDF0C();
  sub_1004DE45C();
  v7 = v6;
  v9 = v8;
  [v1 frame];
  v11 = v10 - *&v1[v5];
  [v1 frame];
  v13 = v12 - *&v1[v5];
  v14 = *&v1[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView];
  [v14 setFrame:{v11, v13, v7, v9}];
  sub_1004DE52C();
  v15 = sub_1004DE53C();
  (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
  sub_1004DE54C();
  v16 = [v1 superview];
  [v16 insertSubview:v14 belowSubview:v1];
}

Swift::Void __swiftcall SymbolButton.configureForToolbar(_:)(UITraitCollection a1)
{
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v25 - v5;
  __chkstk_darwin();
  v8 = (&v25 - v7);
  v9 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  v27 = v1;
  sub_1003DF60C(v1 + v9, v6, type metadata accessor for SymbolButton.Configuration);
  if (qword_10063DAF0 != -1)
  {
    swift_once();
  }

  v10 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v11 = qword_100673C38;
  v12 = unk_100673C40;
  v13 = byte_100673C48;
  sub_1003DF60C(v6, v4, type metadata accessor for SymbolButton.Configuration);
  v14 = *(v2 + 64);
  v26 = v2;
  v15 = &v4[v14];
  v16 = *&v4[v14 + 8];
  v17 = v11;
  v18 = v12;

  *v15 = v10;
  *(v15 + 1) = v11;
  *(v15 + 2) = v12;
  v15[24] = v13;
  v19 = UITraitCollection.supportedMaterials.getter();
  LOBYTE(v11) = sub_1003C9F4C(1, v19);

  if (v11)
  {
    v20 = [objc_opt_self() labelColor];
    sub_1003DD438(v6, type metadata accessor for SymbolButton.Configuration);
    v21 = *(v26 + 72);

    *&v4[v21] = v20;
    sub_1002E009C(*(v4 + 25), *(v4 + 26), *(v4 + 27), *(v4 + 28));
    *(v4 + 200) = xmmword_100512770;
    *(v4 + 27) = 0;
    *(v4 + 28) = 0;
  }

  else
  {
    sub_1003DD438(v6, type metadata accessor for SymbolButton.Configuration);
  }

  sub_1003DF674(v4, v8, type metadata accessor for SymbolButton.Configuration);
  v22 = v27;
  SymbolButton.setConfiguration(_:animation:updates:)(v8, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_1003DD438(v8, type metadata accessor for SymbolButton.Configuration);
  v23 = UITraitCollection.supportedMaterials.getter();
  v24 = sub_1003C9F4C(1, v23);

  if (v24)
  {
    [v22 _setMonochromaticTreatment:2];
  }
}

double SymbolButton.Configuration.forBarButtonItem(_:)@<D0>(uint64_t a1@<X8>)
{
  if (qword_10063DAF0 != -1)
  {
    swift_once();
  }

  v4 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v5 = qword_100673C38;
  v6 = unk_100673C40;
  v7 = byte_100673C48;
  sub_1003DF60C(v2, a1, type metadata accessor for SymbolButton.Configuration);
  v8 = type metadata accessor for SymbolButton.Configuration(0);
  v9 = a1 + *(v8 + 64);
  v10 = *(v9 + 8);
  v11 = v5;
  v12 = v6;

  *v9 = v4;
  *(v9 + 8) = v5;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  v13 = UITraitCollection.supportedMaterials.getter();
  v14 = sub_1003C9F4C(1, v13);

  if (v14)
  {
    v16 = [objc_opt_self() labelColor];
    v17 = *(v8 + 72);

    *(a1 + v17) = v16;
    sub_1002E009C(*(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
    result = 0.0;
    *(a1 + 200) = xmmword_100512770;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
  }

  return result;
}

int64x2_t sub_1003D8204()
{
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v1 = v20 - v0;
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  sub_100035718(v2, static SymbolButton.Configuration.contextualAction);
  v3 = sub_100035430(v2, static SymbolButton.Configuration.contextualAction);
  SymbolButton.Configuration.init()(v3);
  v23[0] = 0;
  v23[1] = 0;
  *&v22[15] = 0;
  *&v22[7] = 0;
  v24[0] = UIFontTextStyleSubheadline;
  v4 = UIFontTextStyleSubheadline;
  sub_10001074C(v23, &qword_100644AB0, &qword_100531B80);
  v5 = [objc_opt_self() currentTraitCollection];
  v6 = [v5 userInterfaceIdiom];

  v7 = v6 == 6;
  if (v6 == 6)
  {
    v8 = 5;
  }

  else
  {
    v8 = 6;
  }

  v9 = &UIFontTextStyleTitle3;
  if (!v7)
  {
    v9 = &UIFontTextStyleCallout;
  }

  v10 = *v9;
  sub_1003DD438(v24, type metadata accessor for TextStyle);
  v11 = *v3;
  v12 = *(v3 + 16);
  v13 = *(v3 + 48);
  v20[2] = *(v3 + 32);
  v20[3] = v13;
  v20[0] = v11;
  v20[1] = v12;
  v14 = *(v3 + 64);
  v15 = *(v3 + 80);
  v16 = *(v3 + 96);
  v21 = *(v3 + 112);
  v20[5] = v15;
  v20[6] = v16;
  v20[4] = v14;
  *v3 = xmmword_100527300;
  *(v3 + 16) = 0;
  *(v3 + 24) = v10;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 48) = v8;
  *(v3 + 56) = 2;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = -1;
  v17 = *v22;
  *(v3 + 96) = *&v22[15];
  *(v3 + 104) = 0x3FF0000000000000;
  *(v3 + 81) = v17;
  *(v3 + 112) = 0;
  sub_1003B411C(v20);
  sub_1004DE52C();
  v18 = sub_1004DE53C();
  (*(*(v18 - 8) + 56))(v1, 0, 1, v18);
  sub_1000107AC(v1, v3 + *(v2 + 36), &qword_100644A50, &qword_100528DC0);
  result = vdupq_n_s64(0x4040000000000000uLL);
  *(v3 + *(v2 + 52)) = result;
  return result;
}

uint64_t sub_1003D84AC(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return sub_100035430(v5, a3);
}

double sub_1003D8530()
{
  v0 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v20 - v3;
  sub_100035718(v5, static SymbolButton.Configuration.barButtonContextualAction);
  v21 = sub_100035430(v0, static SymbolButton.Configuration.barButtonContextualAction);
  if (qword_10063DB08 != -1)
  {
    swift_once();
  }

  v6 = sub_100035430(v0, static SymbolButton.Configuration.contextualAction);
  sub_1003DF60C(v6, v4, type metadata accessor for SymbolButton.Configuration);
  v7 = [objc_opt_self() currentTraitCollection];
  if (qword_10063DAF0 != -1)
  {
    swift_once();
  }

  v8 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v9 = qword_100673C38;
  v10 = unk_100673C40;
  v11 = byte_100673C48;
  sub_1003DF60C(v4, v2, type metadata accessor for SymbolButton.Configuration);
  v12 = &v2[*(v0 + 64)];
  v13 = *(v12 + 1);
  v14 = v9;
  v15 = v10;

  *v12 = v8;
  *(v12 + 1) = v9;
  *(v12 + 2) = v10;
  v12[24] = v11;
  v16 = UITraitCollection.supportedMaterials.getter();
  LOBYTE(v9) = sub_1003C9F4C(1, v16);

  if (v9)
  {
    v17 = [objc_opt_self() labelColor];
    v18 = *(v0 + 72);

    *&v2[v18] = v17;
    sub_1002E009C(*(v2 + 25), *(v2 + 26), *(v2 + 27), *(v2 + 28));
    *(v2 + 200) = xmmword_100512770;
    *(v2 + 27) = 0;
    *(v2 + 28) = 0;
  }

  sub_1003DF674(v2, v21, type metadata accessor for SymbolButton.Configuration);

  sub_1003DD438(v4, type metadata accessor for SymbolButton.Configuration);
  return result;
}

uint64_t sub_1003D8820@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v7 = sub_100035430(v6, a2);
  return sub_1003DF60C(v7, a4, type metadata accessor for SymbolButton.Configuration);
}

void SymbolButton.Configuration.adding(_:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v14 = *(a1 + 24);
  v12 = a1[5];
  v13 = a1[4];
  sub_1003DF60C(v3, a2, type metadata accessor for SymbolButton.Configuration);
  v9 = a2[29];
  v10 = a2[31];
  v11 = a2[30];
  v19 = v7;
  v17 = v8;
  v18 = v6;
  v16 = *(a1 + 2);
  sub_1000108DC(&v19, v15, &qword_100644AA8, &unk_100532C38);
  sub_1000108DC(&v18, v15, &qword_100644AA8, &unk_100532C38);
  sub_1000108DC(&v17, v15, &qword_100644AA8, &unk_100532C38);
  sub_1000108DC(&v16, v15, &qword_100644AB0, &qword_100531B80);
  sub_1003B28AC(v9, v11, v10);
  a2[29] = v7;
  a2[30] = v6;
  a2[31] = v8;
  a2[32] = v14;
  a2[33] = v13;
  a2[34] = v12;
}