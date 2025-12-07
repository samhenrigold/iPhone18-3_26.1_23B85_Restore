uint64_t sub_1A93FE660@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2A0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FE6C4(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2A8);

  return v2(v3);
}

uint64_t (*sub_1A93FE730(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A93FE594();
  return sub_1A93FE778;
}

uint64_t sub_1A93FE9FC()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))();

  v1 = (v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__bundleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1A93FEB28(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__bundleIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1A957D3E8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  v10 = MEMORY[0x1EEE9AC00](KeyPath);
  v11 = v2;
  v12 = a1;
  v13 = a2;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x6A0))(v10, sub_1A9410064);
}

uint64_t sub_1A93FEC88@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A93FECEC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2D8);

  return v4(v2, v3);
}

uint64_t (*sub_1A93FED6C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FE898(v4);
  return sub_1A93FEECC;
}

uint64_t sub_1A93FEF38@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x300))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FEF9C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x308);

  return v2(v3);
}

uint64_t (*sub_1A93FF03C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FEED8(v4);
  return sub_1A93FF19C;
}

double sub_1A93FF294@<D0>(uint64_t a1@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x300))();
  if (*(v3 + 16) && (v4 = sub_1A94105F4(0x746C7561666564, 0xE700000000000000, sub_1A937A508), (v5 & 1) != 0) && (v6 = *(*(v3 + 56) + 8 * v4), , , *(v6 + 16)))
  {
    sub_1A9379534(v6 + 32, a1);
  }

  else
  {

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1A93FF3A0(uint64_t a1)
{
  sub_1A9391BAC(a1, &v11, &qword_1EB386A28, &qword_1A9587E50);
  if (v12)
  {
    sub_1A932D070(&v11, v13);
    sub_1A937829C(&qword_1EB3870A8, &qword_1A958B3F0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1A9587160;
    sub_1A9379534(v13, v3 + 32);
    v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x310))(&v11);
    v6 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v6;
    *v6 = 0x8000000000000000;
    sub_1A940F9D0(v3, 0x746C7561666564, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    *v6 = v10;
    v4(&v11, 0);
    sub_1A937B960(a1, &qword_1EB386A28, &qword_1A9587E50);
    return sub_1A9378138(v13);
  }

  else
  {
    sub_1A937B960(&v11, &qword_1EB386A28, &qword_1A9587E50);
    v9 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x310))(v13);
    sub_1A93FF5CC(0, 0x746C7561666564, 0xE700000000000000);
    v9(v13, 0);
    return sub_1A937B960(a1, &qword_1EB386A28, &qword_1A9587E50);
  }
}

uint64_t sub_1A93FF5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1A940F9D0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1A94105F4(a2, a3, sub_1A937A508);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1A940FB74();
        v14 = v16;
      }

      result = sub_1A939748C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void (*sub_1A93FF6D8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_1A93FF294(v3);
  return sub_1A93FF750;
}

void sub_1A93FF750(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A9391BAC(*a1, v2 + 40, &qword_1EB386A28, &qword_1A9587E50);
    sub_1A93FF3A0(v2 + 40);
    sub_1A937B960(v2, &qword_1EB386A28, &qword_1A9587E50);
  }

  else
  {
    sub_1A93FF3A0(*a1);
  }

  free(v2);
}

uint64_t sub_1A93FF854(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x698))();

  swift_beginAccess();
}

uint64_t sub_1A93FF8F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x348))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FF954(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x350);

  return v2(v3);
}

uint64_t sub_1A93FF9E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  swift_beginAccess();
  if (*(v4 + v7) == a1)
  {
  }

  KeyPath = swift_getKeyPath();
  v9 = MEMORY[0x1EEE9AC00](KeyPath);
  v11 = v4;
  v12 = a1;
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x6A0))(v9, a4);
}

uint64_t (*sub_1A93FFAF8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FF7E0(v4);
  return sub_1A93FFC58;
}

uint64_t sub_1A93FFE64()
{
  v1 = v0[2];
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x348))();
  v0[3] = v3;
  v0[4] = (*((*v2 & *v1) + 0x378))();
  v4 = (*v3 + 152) & 0xFFFFFFFFFFFFLL | 0x881C000000000000;
  v0[5] = *(*v3 + 152);
  v0[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A93FFF74, v3, 0);
}

uint64_t sub_1A93FFF74()
{
  (*(v0 + 40))(*(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_1A93FFFEC(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  *(v5 + 32) = v7;
  swift_beginAccess();
  return sub_1A94000B8;
}

void sub_1A94000B8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = sub_1A957C688();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    v8 = v5;
    sub_1A938A404(0, 0, v4, &unk_1A958BEF0, v7);
  }

  free(v4);

  free(v3);
}

uint64_t sub_1A9400320(uint64_t a1)
{
  v3 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__effects;
  swift_beginAccess();

  v8 = sub_1A94100D8(v7, a1);

  if (v8)
  {
    *(v1 + v6) = a1;

    v9 = sub_1A957C688();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v1;
    v11 = v1;
    sub_1A938A404(0, 0, v5, &unk_1A958B460, v10);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v14 = MEMORY[0x1EEE9AC00](KeyPath);
    *(&v15 - 2) = v1;
    *(&v15 - 1) = a1;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v14, sub_1A9410838);
  }
}

uint64_t sub_1A940053C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x378))();
  *a2 = result;
  return result;
}

uint64_t sub_1A94005A0(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x380);

  return v2(v3);
}

uint64_t sub_1A940060C(char *a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__effects;
  swift_beginAccess();
  *&a1[v7] = a2;

  v8 = sub_1A957C688();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v10 = a1;
  sub_1A938A404(0, 0, v6, &unk_1A958BF00, v9);
}

uint64_t (*sub_1A9400758(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FFFEC(v4);
  return sub_1A94008B8;
}

uint64_t sub_1A9400924@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3A8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A9400988(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3B0);

  return v2(v3);
}

uint64_t sub_1A9400A08(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x698))();

  swift_beginAccess();
}

uint64_t sub_1A9400AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v9 = v3;
  v10 = a1;
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x6A0))(KeyPath, a3, &v8, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t (*sub_1A9400B80(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A94008C4(v4);
  return sub_1A9400CE0;
}

uint64_t sub_1A9400CEC(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x3A8))();
  v4 = sub_1A9499920(a1, v3);

  return v4;
}

void (*sub_1A9400ED8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A9400F3C;
}

void sub_1A9400F3C(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = MEMORY[0x1E69E7D40];
    v8 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x1F8))(v4);
    v7 = (*((*v6 & *v5) + 0x410))();
    [v8 setAudioSession_];
  }
}

void sub_1A94010B8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioSession;
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_1A9387478(0, &qword_1EB385F30, 0x1E6958468);
  v6 = v5;
  v7 = sub_1A957CC18();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
    v9 = a1;

    v10 = MEMORY[0x1E69E7D40];
    v11 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1F8))();
    v12 = (*((*v10 & *v2) + 0x410))();
    [v11 setAudioSession_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v14 = MEMORY[0x1EEE9AC00](KeyPath);
    v15 = v2;
    v16 = a1;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x6A0))(v14, sub_1A9410A78);
  }
}

uint64_t sub_1A94012D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3E0))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A94013A0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A9400ED8(v4);
  return sub_1A9401500;
}

uint64_t sub_1A94015F0()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1F8))();
  v2 = [v1 channels];

  sub_1A9387478(0, &qword_1EB3870D0, 0x1E6958470);
  v3 = sub_1A957C4C8();

  return v3;
}

void sub_1A9401750(uint64_t a1)
{
  v2 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8))();
  sub_1A9387478(0, &qword_1EB3870D0, 0x1E6958470);
  v3 = sub_1A957C4B8();

  [v2 setChannels_];
}

uint64_t sub_1A9401814@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3F8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A9401878(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x400);

  return v2(v3);
}

void (*sub_1A94018E4(uint64_t **a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[1] = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8);
  v6 = ((*MEMORY[0x1E69E7D40] & *v1) + 504) & 0xFFFFFFFFFFFFLL | 0xF4A0000000000000;
  v3[2] = v5;
  v3[3] = v6;
  v7 = v5();
  v8 = [v7 channels];

  v4[4] = sub_1A9387478(0, &qword_1EB3870D0, 0x1E6958470);
  v9 = sub_1A957C4C8();

  *v4 = v9;
  return sub_1A94019F0;
}

void sub_1A94019F0(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 2);
  if (a2)
  {

    v5 = (v3)(v4);
    v6 = sub_1A957C4B8();

    [v5 setChannels_];
  }

  else
  {
    v7 = v3();
    v8 = sub_1A957C4B8();

    [v7 setChannels_];
  }

  free(v2);
}

uint64_t sub_1A9401AD0()
{
  swift_getKeyPath();
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))();

  v3 = *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  }

  else
  {
    v4 = (*((*v1 & *v0) + 0x3E0))(v2);
    v3 = 0;
  }

  v5 = v3;
  return v4;
}

id sub_1A9401C2C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1F8))();
  v2 = [v1 audioQueueFlags];

  return v2;
}

void sub_1A9401D44(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8))();
  [v3 setAudioQueueFlags_];
}

uint64_t sub_1A9401DD0@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x418))();
  *a2 = result;
  return result;
}

void (*sub_1A9401E94(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8);
  v4 = ((*MEMORY[0x1E69E7D40] & *v1) + 504) & 0xFFFFFFFFFFFFLL | 0xF4A0000000000000;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = v3();
  v6 = [v5 audioQueueFlags];

  *(a1 + 24) = v6;
  return sub_1A9401F40;
}

void sub_1A9401F40(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = (*(a1 + 8))();
  [v2 setAudioQueueFlags_];
}

void *CoreSynthesizer.init(voiceResolver:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A957C688();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTSExecutor();
  *&v1[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__executor] = TTSExecutor.__allocating_init()();
  v7 = type metadata accessor for TTSSpeechQueue(0);
  sub_1A952BDD0(v7);
  *&v1[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__queue] = TTSSpeechQueue.__allocating_init(priority:)(v6);
  v8 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__voices] = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer_schedulingQueue;
  sub_1A957B878();
  *&v1[v9] = sub_1A957B868();
  v10 = [objc_allocWithZone(TTSWrappedAudioQueue) init];
  v11 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioQueue;
  *&v1[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioQueue] = v10;
  type metadata accessor for TTSAURenderer();
  *&v1[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__speechRenderer] = TTSAURenderer.__allocating_init()();
  type metadata accessor for AudioRenderer();
  *&v1[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioRenderer] = sub_1A93F7048();
  *&v1[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer____lazy_storage___offlineChain] = 0;
  v12 = [objc_opt_self() mainBundle];
  v13 = [v12 bundleIdentifier];

  if (v13)
  {
    v14 = sub_1A957C0F8();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = &v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__bundleIdentifier];
  *v17 = v14;
  v17[1] = v16;
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__selectionProviders] = sub_1A9410678(v8);
  _s7ManagerCMa();
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__effectManager] = sub_1A944B4CC(v8);
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__effects] = v8;
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__substitutions] = sub_1A94108F8(v8);
  v18 = [objc_opt_self() sharedInstance];
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioSession] = v18;
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__speechStateObserver] = 0;
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__deactivateAudioSessionTimerTask] = 0;
  v19 = &v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__nextWordBlock];
  v20 = MEMORY[0x1E6958098];
  *v19 = 0;
  v19[1] = 0;
  v21 = *v20;
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategory] = *v20;
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategoryOptions] = 3;
  v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionParticipatesInNowPlayingAppPolicy] = 0;
  v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioSessionAutomaticallyDeactivatesAfterSpeaking] = 0;
  v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession] = 0;
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession] = 0;
  v22 = v21;
  sub_1A957B358();
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__voiceResolver] = a1;
  v23 = objc_allocWithZone(TTSWrappedAudioQueue);

  v24 = [v23 init];
  objc_storeStrong(&v2[v11], v24);
  type metadata accessor for BufferedAudioQueue();
  v25 = v24;
  *&v2[OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__bufferedAudioQueue] = BufferedAudioQueue.__allocating_init(queue:)(v25);
  v26 = type metadata accessor for CoreSynthesizer(0);
  v37.receiver = v2;
  v37.super_class = v26;
  v27 = objc_msgSendSuper2(&v37, sel_init);
  v28 = MEMORY[0x1E69E7D40];
  v29 = *((*MEMORY[0x1E69E7D40] & *v27) + 0x1F8);
  v30 = v27;
  v31 = v29();
  v32 = (*((*v28 & *v30) + 0x410))();
  [v31 setAudioSession_];

  v33 = *((*((*v28 & *v30) + 0x168))() + 24);

  v36[1] = v33;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1A937829C(&qword_1EB387128, &qword_1A958B510);
  sub_1A93B744C(&qword_1EB3862A0, &qword_1EB387128, &qword_1A958B510, MEMORY[0x1E695BFB0]);
  v34 = sub_1A957BEF8();

  sub_1A9402530(v34);

  return v30;
}

uint64_t sub_1A9402530(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__speechStateObserver;
  if (*(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__speechStateObserver))
  {
    if (a1)
    {
      sub_1A957BE38();
      sub_1A9412F70(&qword_1EB3871E8, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);

      v4 = sub_1A957C098();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v6, sub_1A941397C);
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1A94026D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__deactivateAudioSessionTimerTask;
  if (!*(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__deactivateAudioSessionTimerTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v6, sub_1A9413B5C);
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_1A957C728();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1A9402848(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x6A0))(KeyPath, sub_1A9410BF0, &v7, MEMORY[0x1E69E7CA8] + 8);
  sub_1A93CF5C8(a1, a2);
}

void sub_1A9402920(void *a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategory;
  swift_beginAccess();
  v4 = sub_1A957C0F8();
  v6 = v5;
  if (v4 == sub_1A957C0F8() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1A957D3E8();

    if ((v9 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      v11 = MEMORY[0x1EEE9AC00](KeyPath);
      v14 = v1;
      v15 = a1;
      (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v11, sub_1A9410C74);

      return;
    }
  }

  v12 = *(v1 + v3);
  *(v1 + v3) = a1;
  v13 = a1;

  sub_1A940B330();
}

void sub_1A9402AB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategoryOptions;
  swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
    sub_1A940BA24();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v5, sub_1A9410CE8);
  }
}

void sub_1A9402BC8(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionParticipatesInNowPlayingAppPolicy;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
    sub_1A940C0C0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v5, sub_1A9410D48);
  }
}

uint64_t sub_1A9402CE0(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioSessionAutomaticallyDeactivatesAfterSpeaking;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = v2;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v6, sub_1A9410DAC);
  }

  return result;
}

uint64_t sub_1A9402DF4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v3, sub_1A9413B40);
  }

  return result;
}

void sub_1A9402EF4(void *a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession;
  v4 = *(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v10, sub_1A9413540);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A9387478(0, &qword_1EB385F30, 0x1E6958468);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A957CC18();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v11 = v6;

  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8))();
  v14 = (*((*v12 & *v1) + 0x410))();
  [v13 setAudioSession_];
}

uint64_t CoreSynthesizer.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a3;
  v7 = *a4;
  v15 = *a2;
  v8 = sub_1A9493C84();
  sub_1A93B0A74(v14, *v8);
  type metadata accessor for VoiceResolver(0);
  sub_1A9379534(a1, v14);
  v12 = v7;
  v13 = v6;
  v9 = VoiceResolver.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(v14, &v15, &v13, &v12);
  v10 = (*(v4 + 1072))(v9);
  sub_1A9378138(a1);
  return v10;
}

uint64_t CoreSynthesizer.__allocating_init(voiceSource:requiredTraits:sortMode:)(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = sub_1A9396054(a1, v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_1A9410458(v11, a2, a3, v3, v7, v8);
  sub_1A9378138(a1);
  return v13;
}

uint64_t CoreSynthesizer.__allocating_init(requiredTraits:sortMode:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  type metadata accessor for VoiceDatabaseClient();
  v5 = sub_1A938983C();
  v6 = VoiceDatabaseClient.__allocating_init(readOnly:)(v5 & 1);

  return sub_1A94102EC(v6, v3, v4, v2);
}

id CoreSynthesizer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t CoreSynthesizer.init()()
{
  ObjectType = swift_getObjectType();
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690, MEMORY[0x1E69E6328]);
  sub_1A957CE08();
  type metadata accessor for VoiceDatabaseClient();
  v1 = sub_1A938983C();
  v2 = VoiceDatabaseClient.__allocating_init(readOnly:)(v1 & 1);
  v3 = sub_1A94102EC(v2, v5, 1, ObjectType);
  swift_deallocPartialClassInstance();
  return v3;
}

void *CoreSynthesizer.__allocating_init(voiceResolver:defaultSelectionProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 1072);

  v6 = v4(v5);
  sub_1A9391BAC(a2, v10, &qword_1EB386A28, &qword_1A9587E50);
  v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x320);
  v8 = v6;
  v7(v10);

  sub_1A937B960(a2, &qword_1EB386A28, &qword_1A9587E50);
  return v8;
}

void *CoreSynthesizer.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:defaultSelectionProvider:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  sub_1A9379534(a1, v22);
  v21 = v9;
  v12 = sub_1A9493C84();
  sub_1A93B0A74(v20, *v12);
  type metadata accessor for VoiceResolver(0);
  sub_1A9379534(v22, v20);
  v18 = v11;
  v19 = v10;
  v13 = VoiceResolver.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(v20, &v21, &v19, &v18);
  v14 = (*(v6 + 1072))(v13);
  sub_1A9378138(v22);
  sub_1A9391BAC(a5, v22, &qword_1EB386A28, &qword_1A9587E50);
  v15 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x320);
  v16 = v14;
  v15(v22);

  sub_1A937B960(a5, &qword_1EB386A28, &qword_1A9587E50);
  sub_1A9378138(a1);
  return v16;
}

void *CoreSynthesizer.__allocating_init(voiceSource:requiredTraits:sortMode:defaultSelectionProvider:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *a3;
  sub_1A9379534(a1, v22);
  v20 = v8;
  v21 = v7;
  v9 = v23;
  v10 = v24;
  v11 = sub_1A9396054(v22, v23);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_1A9410458(v13, &v21, &v20, v4, v9, v10);
  sub_1A9378138(v22);
  sub_1A9391BAC(a4, v22, &qword_1EB386A28, &qword_1A9587E50);
  v16 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x320);
  v17 = v15;
  v16(v22);

  sub_1A937B960(a4, &qword_1EB386A28, &qword_1A9587E50);
  sub_1A9378138(a1);
  return v17;
}

void *CoreSynthesizer.__allocating_init(requiredTraits:sortMode:defaultSelectionProvider:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *a2;
  type metadata accessor for VoiceDatabaseClient();
  v7 = sub_1A938983C();
  v8 = VoiceDatabaseClient.__allocating_init(readOnly:)(v7 & 1);
  v9 = sub_1A94102EC(v8, v5, v6, v3);
  sub_1A9391BAC(a3, v13, &qword_1EB386A28, &qword_1A9587E50);
  v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x320);
  v11 = v9;
  v10(v13);

  sub_1A937B960(a3, &qword_1EB386A28, &qword_1A9587E50);
  return v11;
}

void *CoreSynthesizer.__allocating_init(defaultSelectionProvider:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) init];
  sub_1A9391BAC(a1, v7, &qword_1EB386A28, &qword_1A9587E50);
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x320);
  v5 = v3;
  v4(v7);

  sub_1A937B960(a1, &qword_1EB386A28, &qword_1A9587E50);
  return v5;
}

uint64_t sub_1A9403C70(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x698))();
}

uint64_t sub_1A9403D10@<X0>(void **a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x698))();

  *a4 = *(v6 + *a3);
}

uint64_t sub_1A9403DD8(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v39 - v5;
  v6 = sub_1A957BC88();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x608);
  result = (v13)(v8);
  if (result)
  {
    v15 = sub_1A9391D1C();
    (*(v7 + 16))(v10, v15, v6);
    v16 = v2;
    v17 = sub_1A957BC68();
    v42 = sub_1A957CA98();
    v18 = os_log_type_enabled(v17, v42);
    v43 = v11;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46 = v41;
      *v19 = 136315650;
      v45 = v11;
      v20 = sub_1A957C198();
      v40 = v17;
      v22 = sub_1A937A5C0(v20, v21, &v46);

      *(v19 + 4) = v22;
      *(v19 + 12) = 1024;
      v24 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x680))(v23);

      *(v19 + 14) = v24 & 1;
      *(v19 + 18) = 1024;
      v25 = v13();

      *(v19 + 20) = v25 & 1;
      v26 = v40;
      _os_log_impl(&dword_1A9324000, v40, v42, "Handle state change: %s. useAuxiliarySession=%{BOOL}d audioSessionAutomaticallyDeactivatesAfterSpeaking=%{BOOL}d", v19, 0x18u);
      v27 = v41;
      sub_1A9378138(v41);
      MEMORY[0x1AC587CD0](v27, -1, -1);
      v28 = v19;
      v12 = MEMORY[0x1E69E7D40];
      MEMORY[0x1AC587CD0](v28, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v10, v6);
    KeyPath = swift_getKeyPath();
    (*((*v12 & *v16) + 0x698))(KeyPath);

    v30 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__deactivateAudioSessionTimerTask;
    if (*(v16 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__deactivateAudioSessionTimerTask))
    {

      sub_1A957C748();
    }

    if (v43 > 1)
    {
      if (v43 != 2)
      {
        return result;
      }
    }

    else if (v43)
    {
      return result;
    }

    v31 = sub_1A957C688();
    v32 = v44;
    (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v16;
    v34 = v16;
    v35 = sub_1A938A404(0, 0, v32, &unk_1A958BDA8, v33);
    if (*(v16 + v30) && (, v36 = sub_1A957C728(), , (v36 & 1) != 0))
    {
      *(v16 + v30) = v35;
    }

    else
    {
      v37 = swift_getKeyPath();
      v38 = MEMORY[0x1EEE9AC00](v37);
      *(&v39 - 2) = v34;
      *(&v39 - 1) = v35;
      (*((*v12 & *v34) + 0x6A0))(v38, sub_1A94131FC);
    }
  }

  return result;
}

uint64_t sub_1A940437C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_1A957BC88();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v6 = sub_1A957D018();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94044D0, 0, 0);
}

uint64_t sub_1A94044D0()
{
  if (sub_1A957C778())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1A957D468();
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_1A940463C;

    return sub_1A93CC26C(2000000000000000000, 0, 0, 0, 1);
  }
}

uint64_t sub_1A940463C()
{
  v2 = *v1;

  v3 = v2[10];
  v4 = v2[9];
  v5 = v2[8];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1A9413AC8;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1A9404800;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A9404800()
{
  if ((sub_1A957C778() & 1) == 0)
  {
    v1 = v0[7];
    v2 = v0[4];
    v3 = v0[5];
    v4 = sub_1A9391DC0();
    v5 = *(v3 + 16);
    v5(v1, v4, v2);
    v6 = sub_1A957BC68();
    v7 = sub_1A957CA98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1A9324000, v6, v7, "Will deactivate audio session after auto timeout", v8, 2u);
      MEMORY[0x1AC587CD0](v8, -1, -1);
    }

    v9 = v0[7];
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];

    v13 = *(v11 + 8);
    v14 = v13(v9, v10);
    v15 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x410))(v14);
    v0[2] = 0;
    LODWORD(v9) = [v15 setActive:0 error:v0 + 2];

    v16 = v0[2];
    if (v9)
    {
      v17 = v16;
    }

    else
    {
      v18 = v0[6];
      v19 = v0[4];
      v20 = v16;
      v21 = sub_1A957AEF8();

      swift_willThrow();
      v5(v18, v4, v19);
      v22 = sub_1A957BC68();
      v23 = sub_1A957CA78();
      v24 = os_log_type_enabled(v22, v23);
      v25 = v0[6];
      v26 = v0[4];
      if (v24)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1A9324000, v22, v23, "Could not deactivate audio session after auto timeout", v27, 2u);
        MEMORY[0x1AC587CD0](v27, -1, -1);
      }

      v13(v25, v26);
    }
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_1A9404ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A9404B00, 0, 0);
}

uint64_t sub_1A9404B00()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 40)) + 0x198))();
  *(v0 + 48) = v1;
  v7 = (*(*v1 + 360) + **(*v1 + 360));
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1A9404C78;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  return v7(v5, v3, v4);
}

uint64_t sub_1A9404C78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A9404F10(uint64_t a1, void *aBlock, void *a3)
{
  v3[107] = a3;
  v3[108] = _Block_copy(aBlock);
  v3[109] = sub_1A957C0F8();
  v3[110] = v5;
  v6 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1A9404FA0, 0, 0);
}

uint64_t sub_1A9404FA0()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 856)) + 0x198))();
  *(v0 + 888) = v1;
  v6 = (*(*v1 + 360) + **(*v1 + 360));
  v2 = swift_task_alloc();
  *(v0 + 896) = v2;
  *v2 = v0;
  v2[1] = sub_1A940511C;
  v3 = *(v0 + 880);
  v4 = *(v0 + 872);

  return v6(v0 + 576, v4, v3);
}

uint64_t sub_1A940511C()
{
  v11 = v0;
  v11 = *v0;
  v1 = v11;
  v2 = v11[107];
  v3 = *v0;
  v11 = *v0;

  memcpy(v1 + 37, v1 + 72, 0x118uLL);
  memcpy(v1 + 2, v1 + 72, 0x118uLL);
  if (sub_1A932D058((v1 + 2)) == 1)
  {
    v4 = 0;
  }

  else
  {
    memcpy(__dst, v1 + 2, sizeof(__dst));
    CoreSynthesizer.Voice._bridgeToObjectiveC()(v5);
    v4 = v6;
    sub_1A937B960((v1 + 37), &unk_1EB387BC0, &qword_1A9587E30);
  }

  v7 = v1[108];
  (v7)[2](v7, v4);

  _Block_release(v7);
  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_1A940530C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A9405330, 0, 0);
}

uint64_t sub_1A9405330()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 32)) + 0x198))();
  *(v0 + 40) = v1;
  v6 = (*(*v1 + 416) + **(*v1 + 416));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1A94054A4;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  return v6(v3, v4);
}

uint64_t sub_1A94054A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A940573C(uint64_t a1, const void *a2, void *a3)
{
  v3[107] = a3;
  v6 = sub_1A957B308();
  v3[108] = v6;
  v3[109] = *(v6 - 8);
  v3[110] = swift_task_alloc();
  v3[111] = _Block_copy(a2);
  sub_1A957B1F8();
  v7 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1A9405834, 0, 0);
}

uint64_t sub_1A9405834()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 856)) + 0x198))();
  *(v0 + 896) = v1;
  v5 = (*(*v1 + 416) + **(*v1 + 416));
  v2 = swift_task_alloc();
  *(v0 + 904) = v2;
  *v2 = v0;
  v2[1] = sub_1A94059AC;
  v3 = *(v0 + 880);

  return v5(v0 + 576, v3);
}

uint64_t sub_1A94059AC()
{
  v14 = v0;
  v14 = *v0;
  v1 = v14;
  v2 = v14[110];
  v3 = v14[109];
  v4 = v14[108];
  v5 = v14[107];
  v6 = *v0;
  v14 = *v0;

  (*(v3 + 8))(v2, v4);
  memcpy(v1 + 37, v1 + 72, 0x118uLL);
  memcpy(v1 + 2, v1 + 72, 0x118uLL);
  if (sub_1A932D058((v1 + 2)) == 1)
  {
    v7 = 0;
  }

  else
  {
    memcpy(__dst, v1 + 2, sizeof(__dst));
    CoreSynthesizer.Voice._bridgeToObjectiveC()(v8);
    v7 = v9;
    sub_1A937B960((v1 + 37), &unk_1EB387BC0, &qword_1A9587E30);
  }

  v10 = v1[111];
  (v10)[2](v10, v7);

  _Block_release(v10);

  v11 = *(v6 + 8);

  return v11();
}

uint64_t sub_1A9405BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1A957BC88();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A9391D1C();
  (*(v7 + 16))(v9, v10, v6);
  sub_1A9410E08(a1, v30);
  v11 = sub_1A957BC68();
  v12 = sub_1A957CA68();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = v6;
    v16 = v15;
    v29 = v15;
    *v14 = 136380675;
    sub_1A9410EB8();
    v17 = sub_1A957D3A8();
    v28 = a2;
    v18 = v3;
    v20 = v19;
    sub_1A9410E64(v30);
    v21 = sub_1A937A5C0(v17, v20, &v29);
    v3 = v18;

    *(v14 + 4) = v21;
    _os_log_impl(&dword_1A9324000, v11, v12, "Enqueue utterance: %{private}s", v14, 0xCu);
    sub_1A9378138(v16);
    MEMORY[0x1AC587CD0](v16, -1, -1);
    v22 = v14;
    a1 = v27;
    MEMORY[0x1AC587CD0](v22, -1, -1);

    (*(v7 + 8))(v9, v26);
  }

  else
  {

    sub_1A9410E64(v30);
    (*(v7 + 8))(v9, v6);
  }

  sub_1A937829C(&qword_1EB387130, &qword_1A958B6A8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A9587160;
  sub_1A9410E08(a1, v23 + 32);
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x4B8))(v23);
}

uint64_t sub_1A9405EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A937829C(&qword_1EB387140, qword_1A958B6B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - v6;
  v8 = sub_1A957BC88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A9391D1C();
  v13 = *(v9 + 16);
  v31 = v8;
  v13(v11, v12, v8);

  v14 = sub_1A957BC68();
  v15 = sub_1A957CA68();

  v16 = os_log_type_enabled(v14, v15);
  v32 = a2;
  v29 = v5;
  v30 = v4;
  v28 = v7;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v38[0]._countAndFlagsBits = v18;
    *v17 = 136380675;
    v19 = MEMORY[0x1AC585390](a1, &type metadata for CoreSynthesizer.Utterance);
    v21 = sub_1A937A5C0(v19, v20, &v38[0]._countAndFlagsBits);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1A9324000, v14, v15, "Enqueue utterances: %{private}s", v17, 0xCu);
    sub_1A9378138(v18);
    MEMORY[0x1AC587CD0](v18, -1, -1);
    MEMORY[0x1AC587CD0](v17, -1, -1);
  }

  (*(v9 + 8))(v11, v31);
  v22 = sub_1A9409FC8(a1);
  v23 = v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = a1 + 32;
    do
    {
      sub_1A9410E08(v25, v38);
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v37 = 10;
      TTSSpeechEvent.emit(forJob:)(v38[0]);
      v22 = sub_1A9410E64(v38);
      v25 += 384;
      --v24;
    }

    while (v24);
  }

  if (*(v23 + 16) == 1)
  {
    v26 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
    (*(*(v26 - 8) + 16))(v32, v23 + ((*(*(v26 - 8) + 80) + 32) & ~*(*(v26 - 8) + 80)), v26);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v22);
    *(&v28 - 2) = v23;
    (*(v29 + 104))(v28, *MEMORY[0x1E69E8790], v30);
    sub_1A957C878();
  }
}

uint64_t sub_1A9406280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1A957BC88();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9406344, 0, 0);
}

uint64_t sub_1A9406344()
{
  v27 = v0;
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = sub_1A9391D1C();
  (*(v2 + 16))(v1, v4, v3);
  swift_unknownObjectRetain();
  v5 = sub_1A957BC68();
  v6 = sub_1A957CA68();
  swift_unknownObjectRelease();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 48);
  if (v7)
  {
    v11 = *(v0 + 32);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    ObjectType = swift_getObjectType();
    v15 = (*(v11 + 32))(ObjectType, v11);
    v17 = sub_1A937A5C0(v15, v16, &v26);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1A9324000, v5, v6, "Enqueue queueable: %s", v12, 0xCu);
    sub_1A9378138(v13);
    MEMORY[0x1AC587CD0](v13, -1, -1);
    MEMORY[0x1AC587CD0](v12, -1, -1);
  }

  v18 = (*(v9 + 8))(v8, v10);
  v24 = *(v0 + 24);
  v19 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 40)) + 0x168))(v18);
  *(v0 + 72) = v19;
  sub_1A937829C(&qword_1EB387150, &qword_1A958B6C8);
  v20 = swift_allocObject();
  *(v0 + 80) = v20;
  *(v20 + 16) = xmmword_1A9587160;
  *(v20 + 32) = v24;
  v21 = *(*v19 + 328);
  swift_unknownObjectRetain();
  v25 = (v21 + *v21);
  v22 = swift_task_alloc();
  *(v0 + 88) = v22;
  *v22 = v0;
  v22[1] = sub_1A9406664;

  return v25(v20, 1);
}

uint64_t sub_1A9406664(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A94067A0, 0, 0);
}

uint64_t sub_1A94067A0()
{
  v1 = v0[12];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = sub_1A937829C(&qword_1EB387158, &unk_1A958B6D0);
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    v4 = v0[1];

    return v4();
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_1A9406884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1A957BC88();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A9391D1C();
  (*(v7 + 16))(v9, v10, v6);
  sub_1A9410E08(a1, v30);
  v11 = sub_1A957BC68();
  v12 = sub_1A957CA68();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = v6;
    v16 = v15;
    v29 = v15;
    *v14 = 136380675;
    sub_1A9410EB8();
    v17 = sub_1A957D3A8();
    v28 = a2;
    v18 = v3;
    v20 = v19;
    sub_1A9410E64(v30);
    v21 = sub_1A937A5C0(v17, v20, &v29);
    v3 = v18;

    *(v14 + 4) = v21;
    _os_log_impl(&dword_1A9324000, v11, v12, "Buffers for utterance: %{private}s", v14, 0xCu);
    sub_1A9378138(v16);
    MEMORY[0x1AC587CD0](v16, -1, -1);
    v22 = v14;
    a1 = v27;
    MEMORY[0x1AC587CD0](v22, -1, -1);

    (*(v7 + 8))(v9, v26);
  }

  else
  {

    sub_1A9410E64(v30);
    (*(v7 + 8))(v9, v6);
  }

  sub_1A937829C(&qword_1EB387130, &qword_1A958B6A8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A9587160;
  sub_1A9410E08(a1, v23 + 32);
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x4D0))(v23);
}

uint64_t sub_1A9406B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  v5 = sub_1A937829C(&qword_1EB387140, qword_1A958B6B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  v9 = sub_1A957BC88();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A9391D1C();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_1A957BC68();
  v15 = sub_1A957CA68();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v8;
    v17 = v16;
    v18 = swift_slowAlloc();
    v33 = v3;
    v19 = v18;
    v37 = v18;
    *v17 = 136380675;
    v20 = MEMORY[0x1AC585390](a1, &type metadata for CoreSynthesizer.Utterance);
    v35 = v6;
    v32 = v5;
    v22 = sub_1A937A5C0(v20, v21, &v37);
    v31 = v9;
    v23 = a1;
    v24 = v22;
    v5 = v32;
    v6 = v35;

    *(v17 + 4) = v24;
    a1 = v23;
    _os_log_impl(&dword_1A9324000, v14, v15, "Buffers for utterances: %{private}s", v17, 0xCu);
    sub_1A9378138(v19);
    MEMORY[0x1AC587CD0](v19, -1, -1);
    v25 = v17;
    v8 = v34;
    MEMORY[0x1AC587CD0](v25, -1, -1);

    (*(v10 + 8))(v12, v31);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v26 = sub_1A94097C0(a1);
  v27 = v26;
  if (v26[2] == 1)
  {
    v28 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
    (*(*(v28 - 8) + 16))(v36, v27 + ((*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80)), v28);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v26);
    *(&v30 - 2) = v27;
    (*(v6 + 104))(v8, *MEMORY[0x1E69E8790], v5);
    sub_1A957C878();
  }
}

uint64_t sub_1A9406EF8(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v4 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v5 = sub_1A937829C(&qword_1EB387BD0, &qword_1A958B6E0);
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A940705C, 0, 0);
}

uint64_t sub_1A940705C()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 208)) + 0x4C8))(*(v0 + 192));
  sub_1A957C6F8();
  (*(v2 + 8))(v1, v3);
  v4 = *MEMORY[0x1E69582F8];
  *(v0 + 264) = *MEMORY[0x1E69582C0];
  *(v0 + 272) = v4;
  *(v0 + 280) = *MEMORY[0x1E69582E0];
  *(v0 + 288) = 0;
  v5 = swift_task_alloc();
  *(v0 + 296) = v5;
  *v5 = v0;
  v5[1] = sub_1A94071E8;
  v6 = *(v0 + 240);

  return MEMORY[0x1EEE6DB90](v0 + 112, 0, 0, v6, v0 + 176);
}

uint64_t sub_1A94071E8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1A9407AE8;
  }

  else
  {
    v2 = sub_1A9407328;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A9407328()
{
  v1 = v0[14];
  v2 = v0[16];
  if (v2 >> 3 == 0xFFFFFFFF)
  {
    v3 = v0[36];
    (*(v0[31] + 8))(v0[32], v0[30]);
    [v3 close];

    v4 = v0[1];
LABEL_3:

    return v4();
  }

  v6 = v0[15];
  v7 = v0[17];
  if (v2 >> 61 != 2 || (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1A9410F4C(v1, v6, v2, v7);
    goto LABEL_13;
  }

  v9 = v8;
  sub_1A9410FA4(v1, v6, v2, v7);
  sub_1A9410FB8(v1, v6, v2);
  if (![v9 frameLength])
  {
    sub_1A9410F4C(v1, v6, v2, v7);
    sub_1A9410F4C(v1, v6, v2, v7);
    sub_1A9410F60(v1, v6, v2);
    goto LABEL_13;
  }

  v10 = v0[36];
  if (v10)
  {
    goto LABEL_10;
  }

  v58 = v9;
  v20 = [v9 format];
  v21 = [v20 settings];

  v22 = sub_1A957C038();
  v23 = sub_1A957C0F8();
  if (*(v22 + 16))
  {
    v25 = sub_1A94105F4(v23, v24, sub_1A937A508);
    v27 = v26;

    if (v27)
    {
      sub_1A937BA14(*(v22 + 56) + 32 * v25, (v0 + 2));
      sub_1A9387478(0, &qword_1ED96FCD8, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v28 = v0[21];
        v57 = [v28 integerValue];

        goto LABEL_24;
      }
    }
  }

  else
  {
  }

  v57 = 0;
LABEL_24:
  v29 = sub_1A957C0F8();
  if (*(v22 + 16))
  {
    v31 = sub_1A94105F4(v29, v30, sub_1A937A508);
    v33 = v32;

    if (v33)
    {
      sub_1A937BA14(*(v22 + 56) + 32 * v31, (v0 + 6));
      sub_1A9387478(0, &qword_1ED96FCD8, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v34 = v0[20];
        v35 = [v34 BOOLValue];

        v36 = v35 ^ 1;
        goto LABEL_30;
      }
    }
  }

  else
  {
  }

  v36 = 1;
LABEL_30:
  v56 = v36;
  v37 = sub_1A957C0F8();
  v60 = v22;
  if (*(v22 + 16))
  {
    v39 = sub_1A94105F4(v37, v38, sub_1A937A508);
    v41 = v40;

    if (v41)
    {
      sub_1A937BA14(*(v60 + 56) + 32 * v39, (v0 + 10));
      sub_1A9387478(0, &qword_1ED96FCD8, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v42 = v0[19];
        v43 = [v42 BOOLValue];

        if (v43)
        {
          v44 = 4;
          if (v57 == 64)
          {
            v44 = 2;
          }

          if (v57 == 32)
          {
            v45 = 1;
          }

          else
          {
            v45 = v44;
          }

          goto LABEL_43;
        }
      }
    }
  }

  else
  {
  }

  if (v57 == 16)
  {
    v45 = 3;
  }

  else
  {
    v45 = 4;
  }

LABEL_43:
  v46 = objc_allocWithZone(MEMORY[0x1E6958410]);
  v47 = sub_1A957AF58();
  v48 = sub_1A957C018();
  v0[18] = 0;
  v10 = [v46 initForWriting:v47 settings:v48 commonFormat:v45 interleaved:v56 error:v0 + 18];

  v49 = v0[18];
  if (v10)
  {
    v50 = v0[38];
    v51 = v49;
  }

  else
  {
    v52 = v49;
    v50 = sub_1A957AEF8();

    swift_willThrow();
  }

  v9 = v58;
  if (v50)
  {
    v54 = v0[31];
    v53 = v0[32];
    v55 = v0[30];
    sub_1A9410F4C(v1, v6, v2, v7);
    sub_1A9410F4C(v1, v6, v2, v7);

    sub_1A9410F4C(v1, v6, v2, v7);
    (*(v54 + 8))(v53, v55);
    goto LABEL_48;
  }

LABEL_10:
  v0[23] = 0;
  v11 = v10;
  v12 = [v11 writeFromBuffer:v9 error:v0 + 23];
  v13 = v0[23];
  if (!v12)
  {
    v17 = v0[31];
    v59 = v0[32];
    v18 = v0[30];
    v19 = v13;
    sub_1A957AEF8();

    swift_willThrow();
    sub_1A9410F4C(v1, v6, v2, v7);
    sub_1A9410F4C(v1, v6, v2, v7);
    sub_1A9410F60(v1, v6, v2);
    (*(v17 + 8))(v59, v18);
    [v11 close];

LABEL_48:

    v4 = v0[1];
    goto LABEL_3;
  }

  v14 = v13;
  sub_1A9410F4C(v1, v6, v2, v7);

  sub_1A9410F4C(v1, v6, v2, v7);
  sub_1A9410F4C(v1, v6, v2, v7);
  v0[36] = v10;
LABEL_13:
  v15 = swift_task_alloc();
  v0[37] = v15;
  *v15 = v0;
  v15[1] = sub_1A94071E8;
  v16 = v0[30];

  return MEMORY[0x1EEE6DB90](v0 + 14, 0, 0, v16, v0 + 22);
}

uint64_t sub_1A9407AE8()
{
  v1 = v0[36];
  (*(v0[31] + 8))(v0[32], v0[30]);
  if (v1)
  {
    v2 = v0[36];
    [v2 close];
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A9407BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[89] = v4;
  v5[88] = a4;
  v5[87] = a3;
  v5[86] = a2;
  v5[85] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A9407BF4, 0, 0);
}

uint64_t sub_1A9407BF4()
{
  v25 = v0;
  v1 = *(v0 + 712);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  *(v0 + 396) = 1;
  *(v0 + 736) = 1;
  *(v0 + 740) = 1;
  v11[0] = v3;
  v11[1] = v2;
  v12 = 0;
  v13 = 1;
  v14 = 0;
  v15 = 1;
  v16 = 0;
  v17 = 1;
  v18 = 1;
  sub_1A93847E0(v0 + 400);
  memcpy(__dst, (v0 + 400), 0x118uLL);

  v4 = sub_1A937838C();
  sub_1A937BA74(&v20);
  v21 = v20;
  sub_1A937BA74(&v22);
  v23 = v22;
  sub_1A937BA78(&v24);
  CoreSynthesizer.Utterance.init(id:speech:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:)(__dst, 0, 0, v11, v4, &v21, &v23, &v24, v0 + 16);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x4D8);
  v10 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 720) = v6;
  *v6 = v0;
  v6[1] = sub_1A9407DF8;
  v7 = *(v0 + 704);
  v8 = *(v0 + 696);

  return v10(v0 + 16, v8, v7);
}

uint64_t sub_1A9407DF8()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_1A9407F70;
  }

  else
  {
    v2 = sub_1A9407F0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A9407F0C()
{
  sub_1A9410E64(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9407F70()
{
  sub_1A9410E64(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9408178(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a5;
  v8 = sub_1A957AFD8();
  v5[3] = v8;
  v5[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v5[5] = v9;
  v5[6] = _Block_copy(a4);
  v10 = sub_1A957C0F8();
  v12 = v11;
  v5[7] = v11;
  sub_1A957AF98();
  v13 = sub_1A957C038();
  v5[8] = v13;
  a5;
  v14 = swift_task_alloc();
  v5[9] = v14;
  *v14 = v5;
  v14[1] = sub_1A9408300;

  return sub_1A9407BC4(v10, v12, v9, v13);
}

uint64_t sub_1A9408300()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  (*(v6 + 8))(v5, v7);

  v10 = *(v3 + 48);
  if (v2)
  {
    v11 = sub_1A957AEE8();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1A9408530()
{
  v1[2] = v0;
  v2 = sub_1A957BC88();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94085F0, 0, 0);
}

uint64_t sub_1A94085F0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1A9391D1C();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1A957BC68();
  v6 = sub_1A957CA68();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A9324000, v5, v6, "Stop speaking", v7, 2u);
    MEMORY[0x1AC587CD0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  v12 = (*(v9 + 8))(v8, v10);
  v13 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x168))(v12);
  v0[6] = v13;
  v16 = (*(*v13 + 360) + **(*v13 + 360));
  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_1A940882C;

  return v16();
}

uint64_t sub_1A940882C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A9408ACC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1A9408B74;

  return sub_1A9408530();
}

uint64_t sub_1A9408B74()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1A9408CAC()
{
  v1[2] = v0;
  v2 = sub_1A957BC88();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9408D6C, 0, 0);
}

uint64_t sub_1A9408D6C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1A9391D1C();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1A957BC68();
  v6 = sub_1A957CA68();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A9324000, v5, v6, "Pause speaking", v7, 2u);
    MEMORY[0x1AC587CD0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  v12 = (*(v9 + 8))(v8, v10);
  v13 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x168))(v12);
  v0[6] = v13;
  v16 = (*(*v13 + 352) + **(*v13 + 352));
  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_1A9413B58;

  return v16();
}

uint64_t sub_1A9408FA8()
{
  v1[2] = v0;
  v2 = sub_1A957BC88();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9409068, 0, 0);
}

uint64_t sub_1A9409068()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1A9391D1C();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1A957BC68();
  v6 = sub_1A957CA68();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A9324000, v5, v6, "Resume speaking", v7, 2u);
    MEMORY[0x1AC587CD0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  v12 = (*(v9 + 8))(v8, v10);
  v13 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x168))(v12);
  v0[6] = v13;
  v16 = (*(*v13 + 344) + **(*v13 + 344));
  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_1A9413B58;

  return v16();
}

uint64_t sub_1A94092A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1A957BC88();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9409368, 0, 0);
}

uint64_t sub_1A9409368()
{
  v29 = v0;
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = sub_1A9391D1C();
  (*(v2 + 16))(v1, v4, v3);
  swift_unknownObjectRetain();
  v5 = sub_1A957BC68();
  v6 = sub_1A957CA68();
  swift_unknownObjectRelease();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 40);
  if (v7)
  {
    v11 = *(v0 + 24);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    ObjectType = swift_getObjectType();
    v15 = (*(v11 + 32))(ObjectType, v11);
    v17 = sub_1A937A5C0(v15, v16, &v28);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1A9324000, v5, v6, "Cancel queued %s", v12, 0xCu);
    sub_1A9378138(v13);
    MEMORY[0x1AC587CD0](v13, -1, -1);
    MEMORY[0x1AC587CD0](v12, -1, -1);
  }

  v18 = (*(v9 + 8))(v8, v10);
  v19 = *(v0 + 24);
  v20 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 32)) + 0x168))(v18);
  *(v0 + 64) = v20;
  v21 = swift_getObjectType();
  v22 = (*(v19 + 32))(v21, v19);
  v24 = v23;
  *(v0 + 72) = v23;
  v27 = (*(*v20 + 336) + **(*v20 + 336));
  v25 = swift_task_alloc();
  *(v0 + 80) = v25;
  *v25 = v0;
  v25[1] = sub_1A9409670;

  return v27(v22, v24);
}

uint64_t sub_1A9409670()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1A94097C0(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v58 = v44 - v6;
  v55 = sub_1A937829C(&qword_1EB387140, qword_1A958B6B0);
  v7 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = v44 - v8;
  v9 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = v44 - v14;
  v15 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v53 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v44 - v18;
  v20 = *(a1 + 16);
  if (!v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v44[0] = v5;
  v48 = type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  v21 = a1 + 32;
  v47 = (v7 + 104);
  v46 = *MEMORY[0x1E69E8790];
  v44[2] = v10 + 8;
  v45 = (v10 + 16);
  v44[1] = v10 + 32;
  v60 = MEMORY[0x1E69E7CC0];
  v51 = v10;
  v52 = v9;
  v49 = v19;
  v50 = v13;
  do
  {
    v57 = v20;
    v22 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
    v23 = (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
    MEMORY[0x1EEE9AC00](v23);
    v44[-2] = v19;
    (*v47)(v54, v46, v55);
    sub_1A957C878();
    sub_1A9410E08(v21, v65);
    v24 = v53;
    sub_1A9391BAC(v19, v53, &qword_1EB3871A8, &qword_1A958BE88);
    v25 = sub_1A94EBD90(v56, v65, 1, v24);
    v26 = sub_1A957C688();
    v27 = *(v26 - 8);
    v28 = v58;
    (*(v27 + 56))(v58, 1, 1, v26);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v25;
    v30 = v44[0];
    sub_1A9391BAC(v28, v44[0], &qword_1EB388000, &qword_1A9587710);
    LODWORD(v28) = (*(v27 + 48))(v30, 1, v26);

    if (v28 == 1)
    {
      sub_1A937B960(v30, &qword_1EB388000, &qword_1A9587710);
    }

    else
    {
      sub_1A957C678();
      (*(v27 + 8))(v30, v26);
    }

    v31 = v29[2];
    swift_unknownObjectRetain();

    v32 = v57;
    if (v31)
    {
      swift_getObjectType();
      v33 = sub_1A957C5A8();
      v35 = v34;
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    sub_1A937B960(v58, &qword_1EB388000, &qword_1A9587710);
    if (v35 | v33)
    {
      v61 = 0;
      v62 = 0;
      v63 = v33;
      v64 = v35;
    }

    swift_task_create();

    v36 = v50;
    v37 = v52;
    (*v45)(v50, v59, v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v51;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = sub_1A940F3E8(0, v60[2] + 1, 1, v60);
    }

    v41 = v60[2];
    v40 = v60[3];
    if (v41 >= v40 >> 1)
    {
      v60 = sub_1A940F3E8((v40 > 1), v41 + 1, 1, v60);
    }

    (*(v39 + 8))(v59, v37);
    v42 = v60;
    v60[2] = v41 + 1;
    (*(v39 + 32))(v42 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41, v36, v37);
    v19 = v49;
    sub_1A937B960(v49, &qword_1EB3871A8, &qword_1A958BE88);
    v21 += 384;
    v20 = v32 - 1;
  }

  while (v20);
  return v60;
}

uint64_t sub_1A9409EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a4 + 264) + **(*a4 + 264));
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1A9382328;

  return v7();
}

void *sub_1A9409FC8(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v45 = &v31 - v3;
  v44 = sub_1A937829C(&qword_1EB387140, qword_1A958B6B0);
  v4 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v31 - v5;
  v6 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  v10 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v47 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  v51 = MEMORY[0x1E69E7CC0];
  v16 = *(a1 + 16);
  if (v16)
  {
    v40 = type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
    v17 = a1 + 32;
    v39 = *MEMORY[0x1E69E8790];
    v37 = (v4 + 8);
    v38 = (v4 + 104);
    v35 = v11 + 32;
    v36 = (v11 + 16);
    v33 = (v7 + 56);
    v34 = (v7 + 16);
    v31 = (v11 + 8);
    v32 = (v7 + 8);
    v48 = MEMORY[0x1E69E7CC0];
    v41 = v15;
    v42 = v11;
    do
    {
      sub_1A9410E08(v17, v50);
      v19 = v43;
      v18 = v44;
      (*v38)(v43, v39, v44);
      sub_1A957C7E8();
      (*v37)(v19, v18);
      (*v36)(v47, v15, v10);
      v20 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1A940F3E8(0, v20[2] + 1, 1, v20);
      }

      v22 = v20[2];
      v21 = v20[3];
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1A940F3E8((v21 > 1), v22 + 1, 1, v20);
      }

      v20[2] = v22 + 1;
      v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v48 = v20;
      (*(v11 + 32))(v20 + v23 + *(v11 + 72) * v22, v47, v10);
      memcpy(v49, v50, 0x179uLL);
      v24 = v45;
      (*v34)(v45, v9, v6);
      (*v33)(v24, 0, 1, v6);
      sub_1A94EBD90(v46, v49, 0, v24);
      MEMORY[0x1AC585360]();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A957C4F8();
      }

      sub_1A957C538();
      (*v32)(v9, v6);
      v15 = v41;
      (*v31)(v41, v10);
      v17 += 384;
      --v16;
      v11 = v42;
    }

    while (v16);
    v25 = v51;
    v26 = v48;
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
  }

  v27 = v46;
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v25;
  v29 = v27;
  sub_1A957B858();

  return v26;
}

uint64_t sub_1A940A538(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A940A558, 0, 0);
}

uint64_t sub_1A940A558()
{
  v1 = *(v0 + 24);
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x168))();
  *(v0 + 32) = v2;
  v3 = sub_1A940A824(v1);
  *(v0 + 40) = v3;
  v6 = (*(*v2 + 328) + **(*v2 + 328));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1A940A6E4;

  return v6(v3, 1);
}

uint64_t sub_1A940A6E4(uint64_t a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_1A940A824(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1A957CE48();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1A940FCE4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1AC585DE0](v5, a1);
        v8 = *(v18 + 16);
        v7 = *(v18 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1A940FCE4((v7 > 1), v8 + 1, 1);
        }

        ++v5;
        v9 = sub_1A9412F70(&qword_1EB3871D8, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);
        *(v18 + 16) = v8 + 1;
        v10 = v18 + 16 * v8;
        *(v10 + 32) = v6;
        *(v10 + 40) = v9;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      v12 = *(v18 + 16);
      v13 = 16 * v12;
      do
      {
        v14 = *v11;
        v15 = *(v18 + 24);

        if (v12 >= v15 >> 1)
        {
          sub_1A940FCE4((v15 > 1), v12 + 1, 1);
        }

        v16 = sub_1A9412F70(&qword_1EB3871D8, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);
        *(v18 + 16) = v12 + 1;
        v17 = v18 + v13;
        *(v17 + 32) = v14;
        *(v17 + 40) = v16;
        v13 += 16;
        ++v11;
        ++v12;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A940AA74()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))();

  v1 = (v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__nextWordBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_1A932D0E4(*v1, v1[1]);
  return v2;
}

uint64_t sub_1A940AB24@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x530))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A9413954;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A940ABCC(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A941392C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x538);
  sub_1A932D0E4(v3, v4);
  return v7(v6, v5);
}

uint64_t (*sub_1A940AC9C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A940AA14(v4);
  return sub_1A940ADFC;
}

uint64_t sub_1A940AFC4(char a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x418))();
  v5 = *((*v3 & *v1) + 0x420);
  if (a1)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return v5(v4 & 0xFFFFFEFF | v6);
}

uint64_t sub_1A940B088@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x548))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A940B150(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x418);
  v3 = ((*MEMORY[0x1E69E7D40] & *v1) + 1048) & 0xFFFFFFFFFFFFLL | 0x2E0F000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = (v2() >> 8) & 1;
  return sub_1A940B1E0;
}

uint64_t sub_1A940B1E0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v3 = (*(a1 + 8))();
  if (v2)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x420))(v3 & 0xFFFFFEFF | v4);
}

void sub_1A940B330()
{
  v11[1] = *MEMORY[0x1E69E9840];
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))(KeyPath);

  v3 = *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  if (v3)
  {
    v4 = *((*v2 & *v0) + 0x578);
    v5 = v3;
    v6 = v4();
    v11[0] = 0;
    LODWORD(v4) = [v5 setCategory:v6 error:v11];

    v7 = v11[0];
    if (v4)
    {

      v8 = v7;
    }

    else
    {
      v9 = v11[0];
      v10 = sub_1A957AEF8();

      swift_willThrow();
    }
  }
}

uint64_t (*sub_1A940B4D0(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A940B534;
}

void *sub_1A940B560(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  KeyPath = swift_getKeyPath();
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x698);
  v8 = a1;
  v7(KeyPath);

  v9 = *a4;
  swift_beginAccess();
  v10 = *(v8 + v9);
  v11 = v10;

  return v10;
}

id sub_1A940B638(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x698))();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);

  return v5;
}

uint64_t sub_1A940B73C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x578))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A940B80C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A940B4D0(v4);
  return sub_1A940B96C;
}

void sub_1A940BA24()
{
  v11[1] = *MEMORY[0x1E69E9840];
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))(KeyPath);

  v3 = *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  if (v3)
  {
    v4 = *((*v2 & *v0) + 0x5A8);
    v5 = v3;
    v11[0] = 0;
    v6 = [v5 setCategoryOptions:v4() error:v11];

    v7 = v11[0];
    if (v6)
    {

      v8 = v7;
    }

    else
    {
      v9 = v11[0];
      v10 = sub_1A957AEF8();

      swift_willThrow();
    }
  }
}

uint64_t (*sub_1A940BBBC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A940BC20;
}

uint64_t sub_1A940BCF8()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))();

  v1 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategoryOptions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A940BDE4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5A8))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A940BEA8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A940BBBC(v4);
  return sub_1A940C008;
}

void sub_1A940C0C0()
{
  v11[1] = *MEMORY[0x1E69E9840];
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))(KeyPath);

  v3 = *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  if (v3)
  {
    v4 = *((*v2 & *v0) + 0x5D8);
    v5 = v3;
    v11[0] = 0;
    v6 = [v5 setParticipatesInNowPlayingAppPolicy:v4() & 1 error:v11];

    v7 = v11[0];
    if (v6)
    {

      v8 = v7;
    }

    else
    {
      v9 = v11[0];
      v10 = sub_1A957AEF8();

      swift_willThrow();
    }
  }
}

uint64_t (*sub_1A940C258(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A940C2BC;
}

uint64_t sub_1A940C2D4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1A940C394@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5D8))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A940C45C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A940C258(v4);
  return sub_1A940C5BC;
}

uint64_t sub_1A940C6D8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  KeyPath = swift_getKeyPath();
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x698);
  v8 = a1;
  v7(KeyPath);

  v9 = *a4;
  swift_beginAccess();
  v10 = *(v8 + v9);

  return v10;
}

uint64_t sub_1A940C7A8(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x698))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1A940C894@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x608))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A940C95C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A940C664(v4);
  return sub_1A940CABC;
}

void sub_1A940CAC8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_1A957B338();

  free(v3);
}

uint64_t sub_1A940CB5C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x698))(KeyPath);

  *a2 = *(v3 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession);
  return result;
}

void *sub_1A940CE08()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))();

  v1 = *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  v2 = v1;
  return v1;
}

id sub_1A940CEE8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x698))(KeyPath);

  v5 = *(v3 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  *a2 = v5;

  return v5;
}

void sub_1A940CF94(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A9402EF4(v1);
}

uint64_t sub_1A940D06C()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x698))();

  return *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession);
}

void sub_1A940D13C(char a1)
{
  v33[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    swift_getKeyPath();
    v2 = MEMORY[0x1E69E7D40];
    v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x698);
    v3();

    v4 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession;
    if (*(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession))
    {
      return;
    }

    v5 = [objc_opt_self() auxiliarySession];
    sub_1A9402EF4(v5);
    swift_getKeyPath();
    v3();

    v6 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession;
    v7 = *(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
    if (v7)
    {
      v8 = *((*v2 & *v1) + 0x578);
      v9 = v7;
      v10 = v8();
      v33[0] = 0;
      v11 = [v9 setCategory:v10 error:v33];

      if (v11)
      {
        v12 = v33[0];
      }

      else
      {
        v15 = v33[0];
        v16 = sub_1A957AEF8();

        swift_willThrow();
      }
    }

    swift_getKeyPath();
    v3();

    v17 = *(v1 + v6);
    if (v17)
    {
      v18 = *((*v2 & *v1) + 0x5A8);
      v19 = v17;
      v20 = v18();
      v33[0] = 0;
      LODWORD(v18) = [v19 setCategoryOptions:v20 error:v33];

      if (v18)
      {
        v21 = v33[0];
      }

      else
      {
        v22 = v33[0];
        v23 = sub_1A957AEF8();

        swift_willThrow();
      }
    }

    swift_getKeyPath();
    v3();

    v24 = *(v1 + v6);
    if (v24)
    {
      v25 = *((*v2 & *v1) + 0x5D8);
      v26 = v24;
      v27 = v25();
      v33[0] = 0;
      LODWORD(v25) = [v26 setParticipatesInNowPlayingAppPolicy:v27 & 1 error:v33];

      if (v25)
      {
        v28 = v33[0];
      }

      else
      {
        v29 = v33[0];
        v30 = sub_1A957AEF8();

        swift_willThrow();
      }
    }

    if (*(v1 + v4) == 1)
    {
      *(v1 + v4) = 1;
      return;
    }

    KeyPath = swift_getKeyPath();
    v32 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v2 & *v1) + 0x6A0))(v32, sub_1A9413B40);
  }

  else
  {
    sub_1A9402EF4(0);
    if ((*(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession) & 1) == 0)
    {
      *(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession) = 0;
      return;
    }

    v13 = swift_getKeyPath();
    v14 = MEMORY[0x1EEE9AC00](v13);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v14, sub_1A9410FFC);
  }
}

uint64_t sub_1A940D618@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x680))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A940D6E0(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___usingAuxiliarySession);
  return sub_1A940D798;
}

id CoreSynthesizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSynthesizer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A940DAFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_1A957C688();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_1A938A404(0, 0, v10, &unk_1A958BEB8, v13);
}

uint64_t sub_1A940DCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v6 = sub_1A937829C(&qword_1EB3871C0, &qword_1A958BEC0);
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v7 = sub_1A937829C(&qword_1EB387BD0, &qword_1A958B6E0);
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v8 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
  v5[29] = v8;
  v5[30] = *(v8 - 8);
  v5[31] = swift_task_alloc();
  v9 = sub_1A937829C(&qword_1EB3871C8, &qword_1A958BEC8);
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v5[34] = swift_task_alloc();
  sub_1A937829C(&qword_1EB3871D0, &qword_1A958BED0);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A940DF30, 0, 0);
}

uint64_t sub_1A940DF30()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[21];
  v4 = *(v3 + 16);
  v0[37] = v4;
  if (v4)
  {
    v6 = v0[34];
    v5 = v0[35];
    v7 = *(v2 + 16);
    v8 = v0[29];
    v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v10 = *(v1 + 48);
    *v6 = 0;
    v7(&v6[v10], v3 + v9, v8);
    sub_1A93A7460(v6, v5, &qword_1EB3871C8, &qword_1A958BEC8);
    v11 = 0;
    v1 = v0[32];
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v0[38] = v12;
  v14 = v0[35];
  v13 = v0[36];
  v15 = v0[33];
  (*(v15 + 56))(v14, v11, 1, v1);
  sub_1A93A7460(v14, v13, &qword_1EB3871D0, &qword_1A958BED0);
  v16 = (*(v15 + 48))(v13, 1, v1);
  v17 = v0[31];
  if (v16 == 1)
  {

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[36];
    v21 = v0[32];
    v23 = v0[29];
    v22 = v0[30];
    v0[39] = *v20;
    (*(v22 + 32))(v17, &v20[*(v21 + 48)], v23);
    sub_1A957C6F8();
    v24 = swift_task_alloc();
    v0[40] = v24;
    *v24 = v0;
    v24[1] = sub_1A940E194;
    v25 = v0[26];

    return MEMORY[0x1EEE6DB90](v0 + 2, 0, 0, v25, v0 + 18);
  }
}

uint64_t sub_1A940E194()
{

  if (v0)
  {
    v1 = sub_1A940E6A0;
  }

  else
  {
    v1 = sub_1A940E2A4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A940E2A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v2 >> 3 != 0xFFFFFFFF)
  {
    v14 = *(v0 + 24);
    v15 = *(v0 + 40);
    if (v2 >> 61 == 3)
    {
      if (*(v0 + 312) == *(v0 + 296) - 1)
      {
        v42 = *(v0 + 192);
        v41 = *(v0 + 200);
        v43 = *(v0 + 184);
        *(v0 + 80) = v1;
        *(v0 + 88) = v14;
        *(v0 + 96) = v2;
        *(v0 + 104) = v15;
        sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
        sub_1A957C818();
        (*(v42 + 8))(v41, v43);
        *(v0 + 160) = 0;
        sub_1A957C828();
      }

      goto LABEL_25;
    }

    if (v2 >> 61 == 4 && v2 == 0x8000000000000000 && (v14 | v1 | v15) == 0)
    {
      if (*(v0 + 312))
      {
LABEL_25:
        v44 = swift_task_alloc();
        *(v0 + 320) = v44;
        *v44 = v0;
        v44[1] = sub_1A940E194;
        v9 = *(v0 + 208);
        v10 = v0 + 144;
        v6 = v0 + 16;
        v7 = 0;
        v8 = 0;

        return MEMORY[0x1EEE6DB90](v6, v7, v8, v9, v10);
      }

      v19 = *(v0 + 192);
      v18 = *(v0 + 200);
      v20 = *(v0 + 184);
      *(v0 + 112) = 0;
      *(v0 + 120) = 0;
      *(v0 + 128) = xmmword_1A958B1E0;
      sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
    }

    else
    {
      v19 = *(v0 + 192);
      v18 = *(v0 + 200);
      v20 = *(v0 + 184);
      *(v0 + 48) = v1;
      *(v0 + 56) = v14;
      *(v0 + 64) = v2;
      *(v0 + 72) = v15;
      sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
    }

    sub_1A957C818();
    (*(v19 + 8))(v18, v20);
    goto LABEL_25;
  }

  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 232);
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  v6 = (*(v4 + 8))(v3, v5);
  v12 = *(v0 + 296);
  v11 = *(v0 + 304);
  if (v11 == v12)
  {
    v13 = 1;
    goto LABEL_17;
  }

  if (v11 >= v12)
  {
    __break(1u);
    goto LABEL_30;
  }

  v21 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
LABEL_30:
    __break(1u);
    return MEMORY[0x1EEE6DB90](v6, v7, v8, v9, v10);
  }

  v23 = *(v0 + 272);
  v22 = *(v0 + 280);
  v24 = *(v0 + 232);
  v25 = *(v0 + 240);
  v26 = *(v25 + 16);
  v27 = *(v0 + 168) + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v11;
  v28 = *(*(v0 + 256) + 48);
  *v23 = v11;
  v26(v23 + v28, v27, v24);
  sub_1A93A7460(v23, v22, &qword_1EB3871C8, &qword_1A958BEC8);
  v13 = 0;
  v11 = v21;
LABEL_17:
  *(v0 + 304) = v11;
  v30 = *(v0 + 280);
  v29 = *(v0 + 288);
  v31 = *(v0 + 256);
  v32 = *(v0 + 264);
  (*(v32 + 56))(v30, v13, 1, v31);
  sub_1A93A7460(v30, v29, &qword_1EB3871D0, &qword_1A958BED0);
  v33 = (*(v32 + 48))(v29, 1, v31);
  v34 = *(v0 + 288);
  if (v33 != 1)
  {
    v38 = *(v0 + 248);
    v37 = *(v0 + 256);
    v40 = *(v0 + 232);
    v39 = *(v0 + 240);
    *(v0 + 312) = *v34;
    (*(v39 + 32))(v38, &v34[*(v37 + 48)], v40);
    sub_1A957C6F8();
    goto LABEL_25;
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1A940E6A0()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  (*(v0[27] + 8))(v0[28], v0[26]);
  v0[19] = v0[18];
  sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  sub_1A957C828();
  v4 = (*(v2 + 8))(v1, v3);
  v10 = v0[37];
  v9 = v0[38];
  if (v9 == v10)
  {
    v11 = 1;
    goto LABEL_6;
  }

  if (v9 >= v10)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
LABEL_14:
    __break(1u);
    return MEMORY[0x1EEE6DB90](v4, v5, v6, v7, v8);
  }

  v14 = v0[34];
  v13 = v0[35];
  v15 = v0[29];
  v16 = v0[30];
  v17 = *(v16 + 16);
  v18 = v0[21] + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v9;
  v19 = *(v0[32] + 48);
  *v14 = v9;
  v17(v14 + v19, v18, v15);
  sub_1A93A7460(v14, v13, &qword_1EB3871C8, &qword_1A958BEC8);
  v11 = 0;
  v9 = v12;
LABEL_6:
  v0[38] = v9;
  v21 = v0[35];
  v20 = v0[36];
  v22 = v0[32];
  v23 = v0[33];
  (*(v23 + 56))(v21, v11, 1, v22);
  sub_1A93A7460(v21, v20, &qword_1EB3871D0, &qword_1A958BED0);
  v24 = (*(v23 + 48))(v20, 1, v22);
  v25 = v0[36];
  if (v24 != 1)
  {
    v29 = v0[31];
    v28 = v0[32];
    v31 = v0[29];
    v30 = v0[30];
    v0[39] = *v25;
    (*(v30 + 32))(v29, &v25[*(v28 + 48)], v31);
    sub_1A957C6F8();
    v32 = swift_task_alloc();
    v0[40] = v32;
    *v32 = v0;
    v32[1] = sub_1A940E194;
    v7 = v0[26];
    v4 = (v0 + 2);
    v5 = 0;
    v6 = 0;
    v8 = v0 + 18;

    return MEMORY[0x1EEE6DB90](v4, v5, v6, v7, v8);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_1A940E980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_1A937829C(&qword_1EB386A18, &qword_1A9587E40);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A940EA20, 0, 0);
}

uint64_t sub_1A940EA20()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  v0[11] = v2;
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      v0[12] = v3;
      sub_1A9379534(v1 + 40 * v3 + 32, (v0 + 2));
      v4 = v0[5];
      v5 = v0[6];
      sub_1A93780F4(v0 + 2, v4);
      if ((*(v5 + 8))(v4, v5))
      {
        break;
      }

      v6 = v0[11];
      v7 = v0[12] + 1;
      sub_1A9378138(v0 + 2);
      if (v7 == v6)
      {
        goto LABEL_6;
      }

      v3 = v0[12] + 1;
      v1 = v0[9];
    }

    v12 = v0[5];
    v13 = v0[6];
    sub_1A93780F4(v0 + 2, v12);
    v17 = (*(v13 + 16) + **(v13 + 16));
    v14 = swift_task_alloc();
    v0[13] = v14;
    *v14 = v0;
    v14[1] = sub_1A940EC64;
    v15 = v0[10];
    v16 = v0[8];

    return v17(v15, v16, v12, v13);
  }

  else
  {
LABEL_6:
    v8 = v0[7];
    v9 = sub_1A957B8C8();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1A940EC64()
{

  return MEMORY[0x1EEE6DFA0](sub_1A940ED60, 0, 0);
}

uint64_t sub_1A940ED60()
{
  v1 = v0[10];
  v2 = sub_1A957B8C8();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1A937B960(v1, &qword_1EB386A18, &qword_1A9587E40);
    do
    {
      v4 = v0[11];
      v5 = v0[12] + 1;
      sub_1A9378138(v0 + 2);
      if (v5 == v4)
      {
        (*(v3 + 56))(v0[7], 1, 1, v2);
        goto LABEL_10;
      }

      v6 = v0[12];
      v0[12] = v6 + 1;
      sub_1A9379534(v0[9] + 40 * v6 + 72, (v0 + 2));
      v7 = v0[5];
      v8 = v0[6];
      sub_1A93780F4(v0 + 2, v7);
    }

    while (((*(v8 + 8))(v7, v8) & 1) == 0);
    v9 = v0[5];
    v10 = v0[6];
    sub_1A93780F4(v0 + 2, v9);
    v17 = (*(v10 + 16) + **(v10 + 16));
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_1A940EC64;
    v12 = v0[10];
    v13 = v0[8];

    return v17(v12, v13, v9, v10);
  }

  else
  {
    v15 = v0[7];
    (*(v3 + 32))(v15, v1, v2);
    (*(v3 + 56))(v15, 0, 1, v2);
    sub_1A9378138(v0 + 2);
LABEL_10:

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1A940F054(uint64_t a1, id *a2)
{
  v3 = sub_1A957C0E8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1A940F0D4@<X0>(uint64_t *a2@<X8>)
{
  sub_1A957C0F8();
  v3 = sub_1A957C0C8();

  *a2 = v3;
  return result;
}

uint64_t sub_1A940F118(void *a1, uint64_t *a2)
{
  v2 = sub_1A957C0F8();
  v4 = v3;
  if (v2 == sub_1A957C0F8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1A957D3E8();
  }

  return v7 & 1;
}

uint64_t sub_1A940F1A0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1A957C0C8();

  *a2 = v3;
  return result;
}

uint64_t sub_1A940F1E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1A9410F14(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1A940F228(uint64_t a1)
{
  v2 = sub_1A9412F70(&qword_1EB387198, type metadata accessor for Category, &unk_1A958BB60);
  v3 = sub_1A9412F70(&qword_1EB3871A0, type metadata accessor for Category, &unk_1A958BB08);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A940F2E4()
{
  v0 = sub_1A957C0F8();
  v1 = MEMORY[0x1AC585220](v0);

  return v1;
}

uint64_t sub_1A940F320(uint64_t a1)
{
  sub_1A957C0F8();
  sub_1A957C228();
}

uint64_t sub_1A940F374(uint64_t a1)
{
  sub_1A957C0F8();
  sub_1A957D4F8();
  sub_1A957C228();
  v1 = sub_1A957D548();

  return v1;
}

void *sub_1A940F3E8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB3871B8, &qword_1A958BEA8);
  v10 = *(sub_1A937829C(&qword_1EB387148, &qword_1A95958D0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1A937829C(&qword_1EB387148, &qword_1A95958D0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_1A940F5D8(uint64_t a1)
{
  sub_1A94139E0();
  v1 = sub_1A957C058();
  return sub_1A940F640(a1, v1);
}

unint64_t sub_1A940F640(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A9413A34();
    do
    {

      v6 = sub_1A957C098();

      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A940F728(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB387208, &qword_1A958BF08);
  v34 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A940F9D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A94105F4(a2, a3, sub_1A937A508);
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
      sub_1A940F728(v16, a4 & 1);
      v11 = sub_1A94105F4(a2, a3, sub_1A937A508);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A940FB74();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_1A940FB74()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387208, &qword_1A958BF08);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

  return result;
}

void *sub_1A940FCE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A940FD04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A940FD04(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB387150, &qword_1A958B6C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB3871E0, &unk_1A9599720);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A940FE38(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    memcpy(__dst, v5, sizeof(__dst));
    memcpy(v12, v5, sizeof(v12));
    memcpy(v14, v6, sizeof(v14));
    memcpy(__src, v6, sizeof(__src));
    sub_1A937B3DC(__dst, v10);
    sub_1A937B3DC(v14, v10);
    sub_1A937B9C0();
    v8 = sub_1A957C098();
    memcpy(v15, __src, sizeof(v15));
    sub_1A937B48C(v15);
    memcpy(v16, v12, sizeof(v16));
    sub_1A937B48C(v16);
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 280;
    v5 += 280;
  }

  return 1;
}

void sub_1A940FF98()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioQueue;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;
}

uint64_t sub_1A9410064()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__bundleIdentifier);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t sub_1A94100D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A957BA58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1A9412F70(&qword_1EB387200, MEMORY[0x1E6988298], MEMORY[0x1E69882A0]);
    v21 = sub_1A957C098();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94102EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = type metadata accessor for VoiceDatabaseClient();
  v18[4] = &protocol witness table for VoiceDatabaseClient;
  v18[0] = a1;
  sub_1A9379534(v18, v17);
  v15[0] = MEMORY[0x1E69E7CC0];
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690, MEMORY[0x1E69E6328]);
  sub_1A957CE08();
  v8 = v16[1];
  v16[0] = a2;
  v9 = sub_1A9493C84();
  sub_1A93B0A74(v15, *v9);
  type metadata accessor for VoiceResolver(0);
  sub_1A9379534(v17, v15);
  v13 = a3;
  v14 = v8;
  v10 = VoiceResolver.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(v15, v16, &v14, &v13);
  v11 = (*(a4 + 1072))(v10);
  sub_1A9378138(v17);
  sub_1A9378138(v18);
  return v11;
}

uint64_t sub_1A9410458(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[3] = a5;
  v24[4] = a6;
  v11 = sub_1A93981E4(v24);
  (*(*(a5 - 8) + 32))(v11, a1, a5);
  v12 = *a2;
  v13 = *a3;
  sub_1A9379534(v24, v23);
  v21[0] = MEMORY[0x1E69E7CC0];
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690, MEMORY[0x1E69E6328]);
  sub_1A957CE08();
  v14 = v22[1];
  v22[0] = v12;
  v15 = sub_1A9493C84();
  sub_1A93B0A74(v21, *v15);
  type metadata accessor for VoiceResolver(0);
  sub_1A9379534(v23, v21);
  v19 = v13;
  v20 = v14;
  v16 = VoiceResolver.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(v21, v22, &v20, &v19);
  v17 = (*(a4 + 1072))(v16);
  sub_1A9378138(v23);
  sub_1A9378138(v24);
  return v17;
}

uint64_t sub_1A94105F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1A957D4F8();
  sub_1A957C228();
  v5 = sub_1A957D548();

  return a3(a1, a2, v5);
}

unint64_t sub_1A9410678(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB387208, &qword_1A958BF08);
    v3 = sub_1A957D128();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A94105F4(v5, v6, sub_1A937A508);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A94107D0(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1A9410864()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93FFE44(v3, v4, v5, v2);
}

unint64_t sub_1A94108F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB3871F0, &qword_1A958BEE8);
    v3 = sub_1A957D128();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1A940F5D8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A9410A10(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_1A9410A78()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioSession;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;

  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1F8))();
  v8 = (*((*v6 & *v2) + 0x410))();
  [v7 setAudioSession_];
}

void sub_1A9410B94(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v1;
    sub_1A9403DD8(&v4);
  }
}

uint64_t sub_1A9410BF0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__nextWordBlock);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1A932D0E4(v2, v3);
  return sub_1A93CF5C8(v5, v6);
}

void sub_1A9410C74()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategory;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;

  sub_1A940B330();
}

void sub_1A9410CE8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionCategoryOptions;
  swift_beginAccess();
  *(v2 + v3) = v1;
  sub_1A940BA24();
}

void sub_1A9410D48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxSessionParticipatesInNowPlayingAppPolicy;
  swift_beginAccess();
  *(v1 + v3) = v2;
  sub_1A940C0C0();
}

uint64_t sub_1A9410DAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioSessionAutomaticallyDeactivatesAfterSpeaking;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_1A9410EB8()
{
  result = qword_1EB387138;
  if (!qword_1EB387138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387138);
  }

  return result;
}

uint64_t sub_1A9410F14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1A9410F4C(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 3 != 0xFFFFFFFF)
  {
    sub_1A9410F60(result, a2, a3);
  }
}

void sub_1A9410F60(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 61;
  if (a3 >> 61 == 2)
  {
  }

  else if (v3 == 1)
  {
    sub_1A9410F88(a1, a2, a3);
  }

  else if (!v3)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1A9410F88(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 3 <= 1)
  {
  }

  return result;
}

id sub_1A9410FA4(id result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 3 != 0xFFFFFFFF)
  {
    return sub_1A9410FB8(result, a2, a3);
  }

  return result;
}

id sub_1A9410FB8(id result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 61;
  if (a3 >> 61 == 2)
  {
    return result;
  }

  if (v3 == 1)
  {
    return sub_1A9410FE0(result, a2, a3);
  }

  if (!v3)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1A9410FE0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 3 <= 1)
  {
  }

  return result;
}

uint64_t sub_1A941101C(uint64_t a1)
{
  result = sub_1A957B368();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of CoreSynthesizer.voice(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x4A0);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A93836DC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CoreSynthesizer.voice(locale:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x4A8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of CoreSynthesizer.enqueue(queueable:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x4C0);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A93836DC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CoreSynthesizer.buffers(forSpeech:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x4C8))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x4D0))();
}

uint64_t dispatch thunk of CoreSynthesizer.write(utterance:toAudioFile:withAudioSettings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x4D8);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A93836DC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CoreSynthesizer.write(speechPhrase:toAudioFile:withAudioSettings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x4E0);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A93836DC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CoreSynthesizer.stop()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x4E8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return v5();
}

uint64_t dispatch thunk of CoreSynthesizer.pause()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x4F0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return v5();
}

uint64_t dispatch thunk of CoreSynthesizer.resume()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x4F8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return v5();
}

uint64_t dispatch thunk of CoreSynthesizer.cancel(queueable:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x500);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return v9(a1, a2);
}

unint64_t sub_1A9412BB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1A9412BCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1A9412C1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A9412C74(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 7 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = xmmword_1A958B1F0;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_1A9412CB8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1A9412D08(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of VoiceSelectionProvider.selection(forLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A93836DC;

  return v11(a1, a2, a3, a4);
}

void sub_1A9412EDC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1A9412F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A9413168()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A9382328;

  return sub_1A940437C(v3, v4, v5, v2);
}

uint64_t sub_1A941321C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A9408ACC(v2, v3);
}

uint64_t sub_1A94132C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A93836DC;

  return sub_1A9408178(v2, v3, v4, v5, v6);
}

uint64_t sub_1A9413390()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A940573C(v2, v3, v4);
}

uint64_t sub_1A9413444()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A941348C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A9404F10(v2, v3, v4);
}

void sub_1A9413540()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession);
  *(v2 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__auxiliarySession) = v1;
  v4 = v1;

  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1F8))();
  v7 = (*((*v5 & *v2) + 0x410))();
  [v6 setAudioSession_];
}

uint64_t sub_1A9413640(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1A937B960(v3, &qword_1EB3871A8, &qword_1A958BE88);
  v4 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v7 = *(v4 - 8);
  (*(v7 + 16))(v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v3, 0, 1, v4);
}

uint64_t sub_1A941371C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A9382328;

  return sub_1A9409EAC(v3, v4, v5, v2);
}

uint64_t sub_1A94137B0()
{
  v2 = *(sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A940DCE8(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_1A9413894()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A940A538(v2, v3);
}

uint64_t sub_1A941399C(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

unint64_t sub_1A94139E0()
{
  result = qword_1EB3871F8;
  if (!qword_1EB3871F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3871F8);
  }

  return result;
}

unint64_t sub_1A9413A34()
{
  result = qword_1EB3860F8;
  if (!qword_1EB3860F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3860F8);
  }

  return result;
}

uint64_t sub_1A9413A88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A9413AC8()
{

  return sub_1A9404800();
}

uint64_t VoiceQueryCriteria.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for VoiceQueryCriteria(0) + 28));

  return v1;
}

void *sub_1A9413C38()
{
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690, MEMORY[0x1E69E6328]);
  return sub_1A957CE08();
}

uint64_t VoiceQueryCriteria.init(identifier:locale:forbiddenTraits:requiredTraits:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v10 = *a4;
  v11 = *a5;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  result = sub_1A93A7460(a3, a6 + *(Criteria + 24), &qword_1EB386988, &qword_1A9587830);
  *a6 = v10;
  a6[1] = v11;
  v14 = (a6 + *(Criteria + 28));
  *v14 = a1;
  v14[1] = a2;
  return result;
}

uint64_t sub_1A9413D7C()
{
  v1 = 0x6564646962726F66;
  v2 = 0x656C61636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = 0x6465726975716572;
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

uint64_t sub_1A9413E10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A942C484(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9413E38(uint64_t a1)
{
  v2 = sub_1A942C2EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9413E74(uint64_t a1)
{
  v2 = sub_1A942C2EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VoiceQueryCriteria.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A937829C(&qword_1EB387210, &qword_1A958BF30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1A93780F4(a1, a1[3]);
  sub_1A942C2EC();
  sub_1A957D598();
  v11 = *v3;
  HIBYTE(v10) = 0;
  sub_1A942C340();
  sub_1A957D338();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    sub_1A957D338();
    type metadata accessor for VoiceQueryCriteria(0);
    LOBYTE(v11) = 2;
    sub_1A957B308();
    sub_1A942C3E8(&qword_1EB386420, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1A957D2B8();
    LOBYTE(v11) = 3;
    sub_1A957D298();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t VoiceQueryCriteria.hash(into:)(uint64_t a1)
{
  v2 = sub_1A957B308();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  v12 = *v1;
  sub_1A942C394();
  sub_1A957C068();
  v12 = v1[1];
  sub_1A957C068();
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  sub_1A9391BAC(v1 + *(Criteria + 24), v8, &qword_1EB386988, &qword_1A9587830);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1A957D518();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1A957D518();
    sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
    sub_1A957C068();
    (*(v3 + 8))(v5, v2);
  }

  if (!*(v1 + *(Criteria + 28) + 8))
  {
    return sub_1A957D518();
  }

  sub_1A957D518();
  return sub_1A957C228();
}

uint64_t VoiceQueryCriteria.hashValue.getter()
{
  sub_1A957D4F8();
  VoiceQueryCriteria.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t VoiceQueryCriteria.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v27 = sub_1A937829C(&qword_1EB387218, &qword_1A958BF38);
  v7 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v24 - v8;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  MEMORY[0x1EEE9AC00](Criteria);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v28 = a1;
  sub_1A93780F4(a1, v13);
  sub_1A942C2EC();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(v28);
  }

  v25 = v6;
  v14 = v12;
  v15 = v26;
  v29 = 0;
  sub_1A942C430();
  v16 = v27;
  sub_1A957D238();
  *v14 = v30;
  v29 = 1;
  sub_1A957D238();
  v14[1] = v30;
  sub_1A957B308();
  LOBYTE(v30) = 2;
  sub_1A942C3E8(&qword_1EB386360, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  v17 = v25;
  sub_1A957D1B8();
  sub_1A93A7460(v17, v14 + *(Criteria + 24), &qword_1EB386988, &qword_1A9587830);
  LOBYTE(v30) = 3;
  v18 = sub_1A957D198();
  v25 = v19;
  v20 = v18;
  (*(v7 + 8))(v9, v16);
  v21 = (v14 + *(Criteria + 28));
  v22 = v25;
  *v21 = v20;
  v21[1] = v22;
  sub_1A9390AA4(v14, v15);
  sub_1A9378138(v28);
  return sub_1A9391040(v14);
}

uint64_t sub_1A94147F0()
{
  sub_1A957D4F8();
  VoiceQueryCriteria.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t sub_1A9414834(uint64_t a1)
{
  sub_1A957D4F8();
  VoiceQueryCriteria.hash(into:)(v2);
  return sub_1A957D548();
}

uint64_t VoiceSource.voicesStream.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a1;
  v18 = a2;
  v20 = a3;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v4 = Criteria - 8;
  MEMORY[0x1EEE9AC00](Criteria);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A937829C(&qword_1EB387220, &qword_1A958BF40);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = *(v4 + 32);
  v12 = sub_1A957B308();
  (*(*(v12 - 8) + 56))(&v6[v11], 1, 1, v12);
  v22 = MEMORY[0x1E69E7CC0];
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690, MEMORY[0x1E69E6328]);
  sub_1A957CE08();
  v13 = v23;
  v21 = MEMORY[0x1E69E7CC0];
  sub_1A957CE08();
  v14 = v22;
  *v6 = v13;
  *(v6 + 1) = v14;
  v15 = &v6[*(v4 + 36)];
  *v15 = 0;
  *(v15 + 1) = 0;
  (*(v18 + 40))(v6, v19);
  sub_1A9391040(v6);
  sub_1A937829C(&qword_1EB387228, &qword_1A958BF50);
  sub_1A957B958();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A9414B30(uint64_t a1, void *a2)
{
  *(v2 + 576) = a1;
  *(v2 + 584) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1A9414B58, 0, 0);
}

unint64_t sub_1A9414B58()
{
  v1 = *(v0 + 584);
  result = sub_1A93EE428(MEMORY[0x1E69E7CC0]);
  v3 = result;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (*(v0 + 584) + 32);
    while (1)
    {
      if (v5 >= *(v1 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      memcpy((v0 + 16), v6, 0x118uLL);
      v9 = sub_1A957C1A8();
      v11 = v10;
      sub_1A937B3DC(v0 + 16, v0 + 296);
      sub_1A937B3DC(v0 + 16, v0 + 296);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_1A937A490(v9, v11);
      v14 = v3[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_23;
      }

      v18 = v13;
      if (v3[3] < v17)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v23 = result;
      sub_1A93ED3EC();
      result = v23;
      if (v18)
      {
LABEL_3:
        v7 = result;

        v8 = (v3[7] + 280 * v7);
        memcpy((v0 + 296), v8, 0x118uLL);
        memcpy(v8, (v0 + 16), 0x118uLL);
        sub_1A937B48C(v0 + 296);
        result = sub_1A937B48C(v0 + 16);
        goto LABEL_4;
      }

LABEL_12:
      v3[(result >> 6) + 8] |= 1 << result;
      v20 = (v3[6] + 16 * result);
      *v20 = v9;
      v20[1] = v11;
      memcpy((v3[7] + 280 * result), (v0 + 16), 0x118uLL);
      result = sub_1A937B48C(v0 + 16);
      v21 = v3[2];
      v16 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v16)
      {
        goto LABEL_24;
      }

      v3[2] = v22;
LABEL_4:
      ++v5;
      v6 += 280;
      if (v4 == v5)
      {
        goto LABEL_16;
      }
    }

    sub_1A93EBE70(v17, isUniquelyReferenced_nonNull_native);
    result = sub_1A937A490(v9, v11);
    if ((v18 & 1) != (v19 & 1))
    {

      return sub_1A957D438();
    }

LABEL_11:
    if (v18)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_16:
  **(v0 + 576) = v3;
  v24 = *(v0 + 8);

  return v24();
}

uint64_t VoiceSource.voices.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB387230, &qword_1A958BF58);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  VoiceSource.voicesStream.getter(a1, a2, &v9 - v6);
  sub_1A957B948();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A9414EE0()
{
  type metadata accessor for VoiceResolver(0);
  swift_allocObject();
  result = VoiceResolver.init()();
  qword_1EB390CF8 = result;
  return result;
}

uint64_t static VoiceResolver.shared.getter()
{
  if (qword_1EB390CF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static VoiceResolver.shared.setter(uint64_t a1)
{
  if (qword_1EB390CF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB390CF8 = a1;
}

uint64_t (*static VoiceResolver.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB390CF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A94151E4@<X0>(void *a1@<X8>)
{
  if (qword_1EB390CF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EB390CF8;
}

uint64_t sub_1A9415264(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EB390CF0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB390CF8 = v1;
}

unint64_t VoiceResolver.sortMode.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = v2;
  return sub_1A942C5FC(v2);
}

uint64_t sub_1A941531C()
{
  v1 = sub_1A937829C(&qword_1EB387238, &qword_1A958BF60);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - v3;
  v5 = sub_1A937829C(&qword_1EB387240, &qword_1A958BF68);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  (*(*v0 + 328))(v7);
  sub_1A937829C(&qword_1EB386EA0, qword_1A9589F08);
  sub_1A957B958();
  (*(v2 + 8))(v4, v1);
  sub_1A957B948();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1A9415514(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1A9415538, 0, 0);
}

uint64_t sub_1A9415538()
{
  **(v0 + 16) = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A94155A4()
{
  v1 = sub_1A937829C(&qword_1EB387248, &qword_1A958BF80);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - v4;
  (*(*v0 + 336))(v3);
  sub_1A957B948();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1A94156BC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1A937829C(&qword_1EB387248, &qword_1A958BF80);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  type metadata accessor for VoiceResolver(0);
  sub_1A942C3E8(&qword_1ED96FD78, type metadata accessor for VoiceResolver, &protocol conformance descriptor for VoiceResolver);
  v5 = sub_1A957C5A8();
  v2[15] = v5;
  v2[16] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A9415820, v5, v4);
}

uint64_t sub_1A9415820()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedSystemLocale;
  v0[17] = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedSystemLocale;
  swift_beginAccess();
  sub_1A9391BAC(v2 + v3, v1, &qword_1EB386988, &qword_1A9587830);
  v4 = sub_1A957B308();
  v0[18] = v4;
  v5 = *(v4 - 8);
  v0[19] = v5;
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v6 = v0[9];
    v7 = sub_1A937B960(v0[14], &qword_1EB386988, &qword_1A9587830);
    (*(*v6 + 336))(v7);
    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    v8[1] = sub_1A9415A40;
    v9 = v0[10];
    v10 = v0[8];

    return MEMORY[0x1EEDE9B80](v10, v9);
  }

  else
  {
    (*(v5 + 32))(v0[8], v0[14], v4);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1A9415A40()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 128);
  v6 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1A9415BC4, v6, v5);
}

uint64_t sub_1A9415BC4()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[9];
  (*(v2 + 16))(v4, v0[8], v1);
  (*(v2 + 56))(v4, 0, 1, v1);
  swift_beginAccess();
  sub_1A942C62C(v4, v5 + v3);
  swift_endAccess();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A9415E34(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = sub_1A957B308();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[5] = v5;
  v2[6] = _Block_copy(a1);

  v6 = swift_task_alloc();
  v2[7] = v6;
  *v6 = v2;
  v6[1] = sub_1A9415F54;

  return sub_1A94156BC(v5);
}

uint64_t sub_1A9415F54()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v8 = *v0;

  v5 = sub_1A957B1D8();
  (*(v3 + 8))(v2, v4);
  (v1)[2](v1, v5);

  _Block_release(v1);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1A941610C()
{
  v1[4] = v0;
  v2 = sub_1A937829C(&qword_1EB387238, &qword_1A958BF60);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  type metadata accessor for VoiceResolver(0);
  sub_1A942C3E8(&qword_1ED96FD78, type metadata accessor for VoiceResolver, &protocol conformance descriptor for VoiceResolver);
  v4 = sub_1A957C5A8();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A941622C, v4, v3);
}

uint64_t sub_1A941622C()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales;
  v0[10] = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales;
  v3 = *(v1 + v2);
  if (v3)
  {

    v5 = sub_1A94165A8(v4, v3);

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    (*(*v1 + 328))();
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = sub_1A9416374;
    v9 = v0[5];

    return MEMORY[0x1EEDE9B80](v0 + 2, v9);
  }
}

uint64_t sub_1A9416374()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 72);
  v6 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1A94164F8, v6, v5);
}

uint64_t sub_1A94164F8()
{
  v1 = v0[3];
  v2 = (v0[4] + v0[10]);
  v3 = v0[2];
  v4 = *v2;
  v5 = v2[1];
  *v2 = v3;
  v2[1] = v1;

  sub_1A942C69C(v4, v5);
  v6 = sub_1A94165A8(v1, v3);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1A94165A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A957B308();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v25 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_1A94265A0(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94167C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  v12 = *(v3 + 16);
  v13 = sub_1A957C688();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v11, 1, 1, v13);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v3;
  sub_1A9391BAC(v11, v9, &qword_1EB388000, &qword_1A9587710);
  v16 = (*(v14 + 48))(v9, 1, v13);

  if (v16 == 1)
  {
    sub_1A937B960(v9, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v14 + 8))(v9, v13);
  }

  v17 = sub_1A942C3E8(&qword_1ED96FE68, type metadata accessor for TTSExecutor, &_s12TextToSpeech11TTSExecutorCSchAAMc);
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_1A958BFA8;
  *(v18 + 24) = v15;
  v20[0] = 6;
  v20[1] = 0;
  v20[2] = v12;
  v20[3] = v17;

  swift_task_create();
  sub_1A937B960(v11, &qword_1EB388000, &qword_1A9587710);
}

uint64_t sub_1A9416A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v7 = (*(*a4 + 248) + **(*a4 + 248));
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_1A9416BA4;

  return v7();
}

uint64_t sub_1A9416BA4(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A9416CA4, 0, 0);
}

uint64_t sub_1A9416CA4()
{
  (*(v0 + 16))(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9416EC4()
{
  v4 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A9416FD4;

  return v4();
}

uint64_t sub_1A9416FD4(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A94170D4, 0, 0);
}

uint64_t sub_1A94170D4()
{
  v1 = sub_1A9417154(*(v0 + 24));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A9417154(uint64_t a1)
{
  v35 = sub_1A957B308();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB68(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_1A957CE18();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_1A957B1A8();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1A93ABB68((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1A932D0A4(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1A932D0A4(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A941745C()
{
  v2 = sub_1A957B308();
  v1[2] = v2;
  v1[3] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[4] = v3;
  v6 = (*(*v0 + 200) + **(*v0 + 200));
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = sub_1A94175DC;

  return v6(v3);
}

uint64_t sub_1A94175DC()
{

  return MEMORY[0x1EEE6DFA0](sub_1A94176D8, 0, 0);
}

uint64_t sub_1A94176D8(uint64_t a1)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  v5 = sub_1A957B1A8();
  v7 = v6;
  (*(v3 + 8))(v2, v4);

  v8 = v1[1];

  return v8(v5, v7);
}

uint64_t sub_1A94178F4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v5 = sub_1A957B308();
  v2[3] = v5;
  v2[4] = *(v5 - 8);
  v6 = swift_task_alloc();
  v2[5] = v6;
  v2[6] = _Block_copy(a1);
  v7 = *(*a2 + 200);

  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  v2[7] = v8;
  *v8 = v2;
  v8[1] = sub_1A9417A94;

  return v10(v6);
}

uint64_t sub_1A9417A94()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9417B90, 0, 0);
}

uint64_t sub_1A9417B90(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[3];
  v5 = v1[4];
  sub_1A957B1A8();

  (*(v5 + 8))(v3, v4);
  v6 = sub_1A957C0C8();

  (v2)[2](v2, v6);

  _Block_release(v2);

  v7 = v1[1];

  return v7();
}

uint64_t VoiceResolver.init()()
{
  v1 = *v0;
  v2 = type metadata accessor for VoiceDatabaseClient();
  v3 = sub_1A938983C();
  v10[3] = v2;
  v10[4] = &protocol witness table for VoiceDatabaseClient;
  v10[0] = VoiceDatabaseClient.__allocating_init(readOnly:)(v3 & 1);
  v9 = *sub_1A9493C84();
  sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A9587160;
  *(v4 + 32) = *sub_1A9493D5C();
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690, MEMORY[0x1E69E6328]);
  sub_1A957CE08();
  v7 = 1;
  v8[0] = v8[1];
  v5 = (*(v1 + 344))(v10, &v9, v8, &v7);
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_1A9417ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v4[9] = swift_task_alloc();
  v5 = sub_1A937829C(&qword_1EB3869A8, &qword_1A9587928);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_1A937829C(&qword_1EB386970, &qword_1A95877D0);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A941803C, 0, 0);
}

uint64_t sub_1A941803C()
{
  sub_1A957BA68();
  sub_1A957C6F8();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1A941814C;
  v2 = *(v0 + 80);

  return MEMORY[0x1EEE6D9C8](v0 + 160, 0, 0, v2);
}

uint64_t sub_1A941814C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9418248, 0, 0);
}

uint64_t sub_1A9418248()
{
  if ((*(v0 + 160) & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v0 + 136) = Strong) == 0))
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 104);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    (*(v6 + 8))(v5, v7);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v2 = *Strong + 304;
    *(v0 + 144) = *v2;
    *(v0 + 152) = v2 & 0xFFFFFFFFFFFFLL | 0xA7B5000000000000;
    type metadata accessor for VoiceResolver(0);
    sub_1A942C3E8(&qword_1ED96FD78, type metadata accessor for VoiceResolver, &protocol conformance descriptor for VoiceResolver);
    v4 = sub_1A957C5A8();

    return MEMORY[0x1EEE6DFA0](sub_1A94183DC, v4, v3);
  }
}

uint64_t sub_1A94183DC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  (*(v0 + 144))();
  v3 = sub_1A957B308();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedSystemLocale;
  swift_beginAccess();
  sub_1A942C62C(v2, v1 + v4);
  swift_endAccess();
  v5 = (v1 + OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales);
  v6 = *(v1 + OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales);
  v7 = *(v1 + OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales + 8);
  *v5 = 0;
  v5[1] = 0;
  sub_1A942C69C(v6, v7);
  (*(*v1 + 400))(MEMORY[0x1E69E7CC8]);

  return MEMORY[0x1EEE6DFA0](sub_1A941851C, 0, 0);
}

uint64_t sub_1A941851C()
{

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1A941814C;
  v2 = *(v0 + 80);

  return MEMORY[0x1EEE6D9C8](v0 + 160, 0, 0, v2);
}

uint64_t sub_1A94185CC()
{
  v1 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_1A957B308();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedSystemLocale;
  swift_beginAccess();
  sub_1A942C62C(v3, v0 + v5);
  return swift_endAccess();
}

uint64_t VoiceResolver.__allocating_init(voiceSource:requiredTraits:sortMode:)(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *a2;
  v7 = *a3;
  sub_1A9379534(a1, v13);
  v12 = v6;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690, MEMORY[0x1E69E6328]);
  sub_1A957CE08();
  v10 = v7;
  v11[0] = v11[1];
  v8 = (*(v4 + 344))(v13, &v12, v11, &v10);
  sub_1A9378138(a1);
  return v8;
}

uint64_t sub_1A94187CC()
{
  v1[4] = v0;
  v1[5] = type metadata accessor for VoiceQueryCriteria(0);
  v1[6] = swift_task_alloc();
  v2 = sub_1A937829C(&qword_1EB387238, &qword_1A958BF60);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94188C8, 0, 0);
}

uint64_t sub_1A94188C8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v3[3].i64[0];
  v5 = v3[3].i64[1];
  sub_1A93780F4(&v3[1].i64[1], v4);
  v6 = *(v2 + 24);
  v7 = sub_1A957B308();
  (*(*(v7 - 8) + 56))(&v1->i8[v6], 1, 1, v7);
  *v1 = vextq_s8(v3[4], v3[4], 8uLL);
  v8 = (v1->i64 + *(v2 + 28));
  *v8 = 0;
  v8[1] = 0;
  (*(v5 + 32))(v1, v4, v5);
  sub_1A9391040(v1);
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1A9418A2C;
  v10 = v0[7];

  return MEMORY[0x1EEDE9B80](v0 + 2, v10);
}

uint64_t sub_1A9418A2C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A9418B84, 0, 0);
}

uint64_t sub_1A9418B84()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_1A9418C04()
{
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v2 = Criteria - 8;
  MEMORY[0x1EEE9AC00](Criteria);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v0[3].i64[0];
  v6 = v0[3].i64[1];
  sub_1A93780F4(&v0[1].i64[1], v5);
  v7 = *(v2 + 32);
  v8 = sub_1A957B308();
  (*(*(v8 - 8) + 56))(&v4->i8[v7], 1, 1, v8);
  *v4 = vextq_s8(v0[4], v0[4], 8uLL);
  v9 = (v4->i64 + *(v2 + 36));
  *v9 = 0;
  v9[1] = 0;
  (*(v6 + 32))(v4, v5, v6);
  return sub_1A9391040(v4);
}

uint64_t sub_1A9418D28()
{
  v1 = *v0;
  v2 = sub_1A937829C(&qword_1EB387238, &qword_1A958BF60);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  (*(v1 + 328))(v4);
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  *(v7 + 24) = v1;
  sub_1A957B308();

  sub_1A957B958();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1A9418EA0(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  *(v4 + 56) = a1;
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1A9418F4C, 0, 0);
}

uint64_t sub_1A9418F4C()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = v0[8];

  v5 = sub_1A94165A8(v4, v1);
  v0[5] = sub_1A937829C(&qword_1EB386EA0, qword_1A9589F08);
  v6 = sub_1A93B744C(&qword_1ED96FEA0, &qword_1EB386EA0, qword_1A9589F08, MEMORY[0x1E69E6518]);
  v0[2] = v5;
  v0[6] = v6;
  v7 = v3[6];
  v8 = v3[7];
  sub_1A93780F4(v3 + 3, v7);
  v9 = (*(v8 + 16))(v7, v8);
  sub_1A9419174(v0 + 2, v3 + 3, v9, v2);

  sub_1A9378138(v0 + 2);
  v10 = sub_1A957B308();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v2, 1, v10);
  v14 = v0[10];
  if (v13 == 1)
  {
    sub_1A957B1B8();
    if (v12(v14, 1, v10) != 1)
    {
      sub_1A937B960(v0[10], &qword_1EB386988, &qword_1A9587830);
    }
  }

  else
  {
    (*(v11 + 32))(v0[7], v0[10], v10);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1A9419174@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v82 = sub_1A957B2E8();
  v87 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v80 = &v69 - v12;
  v13 = sub_1A957B308();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v75 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v76 = &v69 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v78 = &v69 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v69 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v84 = (&v69 - v24);
  v25 = sub_1A93780F4(a1, a1[3]);
  MEMORY[0x1EEE9AC00](v25);
  (*(v27 + 16))(&v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_1A957C3F8();
  if (!v28[2])
  {
    (*(v14 + 56))(a4, 1, 1, v13);
  }

  v71 = 0;
  v72 = v5;
  v77 = a3;
  v73 = a4;
  v29 = a2[3];
  v30 = a2[4];
  sub_1A93780F4(a2, v29);
  v31 = (*(v30 + 8))(v29, v30);
  v32 = *(v31 + 16);
  v74 = v28;
  if (v32)
  {
    v89 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB88(0, v32, 0);
    v33 = v89;
    v88 = v31;
    v34 = v31 + 40;
    do
    {

      sub_1A957B1B8();
      v89 = v33;
      v36 = v33[2];
      v35 = v33[3];
      if (v36 >= v35 >> 1)
      {
        sub_1A93ABB88((v35 > 1), v36 + 1, 1);
        v33 = v89;
      }

      v33[2] = v36 + 1;
      (*(v14 + 32))(v33 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v36, v23, v13);
      v34 += 16;
      --v32;
    }

    while (v32);

    v28 = v74;
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  v90[0] = v33;
  v37 = v33[2];
  v83 = v14;
  v38 = v84;
  v79 = v37;
  if (v37)
  {
    v70 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v39 = v33 + v70;
    v40 = v87 + 1;
    v87 = (v14 + 8);
    v88 = v14 + 16;

    v41 = 0;
    while (v41 < v33[2])
    {
      v86 = *(v14 + 72);
      v85 = *(v14 + 16);
      v85(v38, &v39[v86 * v41], v13);
      v42 = v81;
      sub_1A957B2F8();
      v43 = v80;
      sub_1A957B2B8();
      (*v40)(v42, v82);
      v32 = sub_1A957B188();
      v44 = v13;
      v45 = *(v32 - 1);
      if ((*(v45 + 48))(v43, 1, v32) == 1)
      {
        (*v87)(v38, v44);
        sub_1A937B960(v43, &qword_1EB386A68, &qword_1A9587F40);
        v13 = v44;
      }

      else
      {
        v46 = Locale.LanguageCode.isMacroLanguage.getter();
        v47 = v38;
        v48 = *v87;
        (*v87)(v47, v44);
        (*(v45 + 8))(v43, v32);
        v13 = v44;
        v32 = v78;
        if (v46)
        {

          v49 = v33[2];
          if (v49)
          {
            v89 = MEMORY[0x1E69E7CC0];
            sub_1A93ABB88(0, v49, 0);
            v50 = v89;
            v84 = (v83 + 32);
            v51 = v70;
            do
            {
              v52 = v76;
              v85(v76, v39, v13);
              Locale.withTTSLanguageDisambiguation(overrides:)(v77, v32);
              v48(v52, v13);
              v89 = v50;
              v53 = v13;
              v55 = v50[2];
              v54 = v50[3];
              v56 = v55 + 1;
              if (v55 >= v54 >> 1)
              {
                sub_1A93ABB88((v54 > 1), v55 + 1, 1);
                v56 = v55 + 1;
                v50 = v89;
              }

              v50[2] = v56;
              v57 = v86;
              (*v84)(v50 + v51 + v55 * v86, v32, v53);
              v39 += v57;
              --v49;
              v13 = v53;
            }

            while (v49);
          }

          else
          {

            v50 = MEMORY[0x1E69E7CC0];
          }

          v58 = v13;
          v90[0] = v50;
          v59 = 1;
          goto LABEL_27;
        }
      }

      ++v41;
      v14 = v83;
      v38 = v84;
      if (v79 == v41)
      {
        v58 = v13;

        v59 = 0;
LABEL_27:
        v28 = v74;
        v60 = v75;
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  v58 = v13;
  v59 = 0;
  v60 = v75;
LABEL_28:
  v89 = v28;
  v61 = v77;

  v32 = v71;
  sub_1A943159C(&v89, v90, v72, v61);
  v62 = v73;
  if (v32)
  {
    goto LABEL_39;
  }

  v63 = v89;
  if (!v89[2])
  {
    v67 = 1;
LABEL_35:

    (*(v83 + 56))(v62, v67, 1, v58);
  }

  v64 = v83;
  v32 = (v83 + 16);
  v65 = *(v83 + 16);
  v66 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v65(v60, v89 + v66, v58);
  if (v59)
  {

    Locale.withTTSLanguageDisambiguation(overrides:)(v61, v62);
    (*(v64 + 8))(v60, v58);
    (*(v64 + 56))(v62, 0, 1, v58);
  }

  (*(v64 + 8))(v60, v58);
  if (*(v63 + 2))
  {
    v65(v62, &v63[v66], v58);
    v67 = 0;
    goto LABEL_35;
  }

LABEL_38:
  __break(1u);
LABEL_39:

  __break(1u);
  return result;
}

char *VoiceResolver.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - v12;
  v14 = swift_allocObject();
  v15 = *a2;
  v16 = *a3;
  v17 = *a4;
  type metadata accessor for TTSExecutor();
  *(v14 + 2) = TTSExecutor.__allocating_init()();
  v18 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedSystemLocale;
  v19 = sub_1A957B308();
  (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
  v20 = &v14[OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v14[OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_languageChangeTask] = 0;
  *&v14[OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_voiceCacheTask] = 0;
  v21 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_voiceResolutionCache;
  *&v14[v21] = sub_1A942C838(MEMORY[0x1E69E7CC0]);
  sub_1A9379534(a1, (v14 + 24));
  *(v14 + 8) = v15;
  *(v14 + 9) = v16;
  *(v14 + 10) = v17;
  v22 = *(v14 + 2);
  v23 = sub_1A957C688();
  v24 = *(v23 - 8);
  (*(v24 + 56))(v13, 1, 1, v23);
  v25 = swift_allocObject();
  swift_weakInit();
  sub_1A9391BAC(v13, v11, &qword_1EB388000, &qword_1A9587710);
  LODWORD(v21) = (*(v24 + 48))(v11, 1, v23);

  if (v21 == 1)
  {
    sub_1A937B960(v11, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v24 + 8))(v11, v23);
  }

  v26 = sub_1A942C3E8(&qword_1ED96FE68, type metadata accessor for TTSExecutor, &_s12TextToSpeech11TTSExecutorCSchAAMc);
  v27 = swift_allocObject();
  *(v27 + 16) = &unk_1A958BFF8;
  *(v27 + 24) = v25;
  swift_unknownObjectRetain();
  sub_1A937829C(&qword_1EB387250, &qword_1A958C010);
  v29[0] = 6;
  v29[1] = 0;
  v29[2] = v22;
  v29[3] = v26;
  swift_task_create();
  sub_1A937B960(v13, &qword_1EB388000, &qword_1A9587710);

  sub_1A9378138(a1);
  return v14;
}

char *VoiceResolver.init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v10 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v30 - v14;
  v16 = *a2;
  v17 = *a3;
  v18 = *a4;
  type metadata accessor for TTSExecutor();
  *(v5 + 2) = TTSExecutor.__allocating_init()();
  v19 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedSystemLocale;
  v20 = sub_1A957B308();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v5[OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_languageChangeTask] = 0;
  *&v5[OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_voiceCacheTask] = 0;
  v22 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_voiceResolutionCache;
  *&v5[v22] = sub_1A942C838(MEMORY[0x1E69E7CC0]);
  sub_1A9379534(a1, (v5 + 24));
  *(v5 + 8) = v16;
  *(v5 + 9) = v17;
  *(v5 + 10) = v18;
  v23 = *(v5 + 2);
  v24 = sub_1A957C688();
  v25 = *(v24 - 8);
  (*(v25 + 56))(v15, 1, 1, v24);
  v26 = swift_allocObject();
  swift_weakInit();
  sub_1A9391BAC(v15, v13, &qword_1EB388000, &qword_1A9587710);
  LODWORD(v22) = (*(v25 + 48))(v13, 1, v24);

  if (v22 == 1)
  {
    sub_1A937B960(v13, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v25 + 8))(v13, v24);
  }

  v27 = sub_1A942C3E8(&qword_1ED96FE68, type metadata accessor for TTSExecutor, &_s12TextToSpeech11TTSExecutorCSchAAMc);
  v28 = swift_allocObject();
  *(v28 + 16) = &unk_1A958C018;
  *(v28 + 24) = v26;
  swift_unknownObjectRetain();
  sub_1A937829C(&qword_1EB387250, &qword_1A958C010);
  v30[0] = 6;
  v30[1] = 0;
  v30[2] = v23;
  v30[3] = v27;
  swift_task_create();
  sub_1A937B960(v15, &qword_1EB388000, &qword_1A9587710);

  sub_1A9378138(a1);
  return v5;
}

uint64_t sub_1A941A184(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A941A220, 0, 0);
}

uint64_t sub_1A941A220()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    type metadata accessor for VoiceResolver(0);
    sub_1A942C3E8(&qword_1ED96FD78, type metadata accessor for VoiceResolver, &protocol conformance descriptor for VoiceResolver);
    v3 = sub_1A957C5A8();

    return MEMORY[0x1EEE6DFA0](sub_1A941A344, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1A941A344()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = sub_1A957C688();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_1A938A404(0, 0, v1, &unk_1A958C760, v5);
  (*(*v2 + 280))(v6);

  return MEMORY[0x1EEE6DFA0](sub_1A941A498, 0, 0);
}

uint64_t sub_1A941A498()
{
  **(v0 + 40) = *(v0 + 64) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A941A508@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v17[1] = a1;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v4 = Criteria - 8;
  MEMORY[0x1EEE9AC00](Criteria);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1A937829C(&qword_1EB387220, &qword_1A958BF40);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v11 = v2[3].i64[0];
  v12 = v2[3].i64[1];
  sub_1A93780F4(&v2[1].i64[1], v11);
  v13 = *(v4 + 32);
  v14 = sub_1A957B308();
  (*(*(v14 - 8) + 56))(&v6->i8[v13], 1, 1, v14);
  *v6 = vextq_s8(v2[4], v2[4], 8uLL);
  v15 = (v6->i64 + *(v4 + 36));
  *v15 = 0;
  v15[1] = 0;
  (*(v12 + 40))(v6, v11, v12);
  sub_1A9391040(v6);

  sub_1A937829C(&qword_1EB386958, &qword_1A9587790);
  sub_1A957B958();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A941A724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A941A7C0, 0, 0);
}

uint64_t sub_1A941A7C0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1A957B308();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = *(v1 + 80);
  v0[2] = v4;
  sub_1A942C5FC(v4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1A941A8AC;
  v6 = v0[5];

  return sub_1A941FCF8(v6, v0 + 2);
}

uint64_t sub_1A941A8AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  *(*v1 + 56) = a1;

  sub_1A942CD04(*(v2 + 16));
  sub_1A937B960(v3, &qword_1EB386988, &qword_1A9587830);

  return MEMORY[0x1EEE6DFA0](sub_1A941AA00, 0, 0);
}

uint64_t sub_1A941AA00()
{
  **(v0 + 24) = *(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

void *VoiceResolver.deinit()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_languageChangeTask;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_1A957C748();
  }

  v2 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_voiceCacheTask;
  swift_beginAccess();
  if (*(v0 + v2))
  {

    sub_1A957C748();
  }

  sub_1A9378138((v0 + 24));
  sub_1A942CD04(*(v0 + 80));
  sub_1A937B960(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedSystemLocale, &qword_1EB386988, &qword_1A9587830);
  sub_1A942C69C(*(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales), *(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales + 8));

  return v0;
}

uint64_t VoiceResolver.__deallocating_deinit()
{
  VoiceResolver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A941AC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[111] = v3;
  v4[110] = a3;
  v4[109] = a2;
  v4[108] = a1;
  v4[112] = type metadata accessor for VoiceQueryCriteria(0);
  v4[113] = swift_task_alloc();
  v5 = sub_1A937829C(&qword_1EB387220, &qword_1A958BF40);
  v4[114] = v5;
  v4[115] = *(v5 - 8);
  v4[116] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A941AD10, 0, 0);
}

uint64_t sub_1A941AD10()
{
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[109];
  v6 = v3[3].i64[0];
  v7 = v3[3].i64[1];
  sub_1A93780F4(&v3[1].i64[1], v6);
  v8 = *(v2 + 24);
  v9 = sub_1A957B308();
  (*(*(v9 - 8) + 56))(&v1->i8[v8], 1, 1, v9);
  *v1 = vextq_s8(v3[4], v3[4], 8uLL);
  v10 = (v1->i64 + *(v2 + 28));
  *v10 = v5;
  v10[1] = v4;
  v11 = *(v7 + 40);

  v11(v1, v6, v7);
  sub_1A9391040(v1);
  v12 = swift_task_alloc();
  v0[117] = v12;
  *v12 = v0;
  v12[1] = sub_1A941AE94;
  v13 = v0[114];

  return MEMORY[0x1EEDE9B80](v0 + 107, v13);
}

uint64_t sub_1A941AE94()
{
  v1 = *(*v0 + 928);
  v2 = *(*v0 + 920);
  v3 = *(*v0 + 912);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A941AFEC, 0, 0);
}

uint64_t sub_1A941AFEC()
{
  v1 = v0[107];
  v2 = v0[108];
  if (*(v1 + 16))
  {
    memcpy(v0 + 2, (v1 + 32), 0x118uLL);
    sub_1A937B3DC((v0 + 2), (v0 + 37));

    memcpy(v2, v0 + 2, 0x118uLL);
    nullsub_23();
  }

  else
  {

    sub_1A93847E0((v0 + 72));
    memcpy(v2, v0 + 72, 0x118uLL);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A941B258(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[107] = a3;
  v3[108] = _Block_copy(aBlock);
  v4 = sub_1A957C0F8();
  v6 = v5;
  v3[109] = v5;

  v7 = swift_task_alloc();
  v3[110] = v7;
  *v7 = v3;
  v7[1] = sub_1A941B334;

  return sub_1A941AC08((v3 + 72), v4, v6);
}

uint64_t sub_1A941B334()
{
  v10 = v0;
  v10 = *v0;
  v1 = v10;
  v2 = *v0;
  v10 = *v0;

  memcpy(v1 + 37, v1 + 72, 0x118uLL);
  memcpy(v1 + 2, v1 + 72, 0x118uLL);
  if (sub_1A932D058((v1 + 2)) == 1)
  {
    v3 = 0;
  }

  else
  {
    memcpy(v9, v1 + 2, sizeof(v9));
    CoreSynthesizer.Voice._bridgeToObjectiveC()(v4);
    v3 = v5;
    sub_1A937B960((v1 + 37), &unk_1EB387BC0, &qword_1A9587E30);
  }

  v6 = v1[108];
  (v6)[2](v6, v3);

  _Block_release(v6);
  v7 = *(v2 + 8);

  return v7();
}

uint64_t sub_1A941B560(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_1A941B65C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_voiceResolutionCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A941B714(uint64_t a1, uint64_t a2)
{
  v3[394] = v2;
  v3[393] = a2;
  v3[392] = a1;
  v4 = sub_1A957B308();
  v3[395] = v4;
  v3[396] = *(v4 - 8);
  v3[397] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v3[398] = swift_task_alloc();
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v3[399] = swift_task_alloc();
  type metadata accessor for VoiceResolver(0);
  v3[400] = sub_1A942C3E8(&qword_1ED96FD78, type metadata accessor for VoiceResolver, &protocol conformance descriptor for VoiceResolver);
  v6 = sub_1A957C5A8();
  v3[401] = v6;
  v3[402] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A941B8A8, v6, v5);
}

uint64_t sub_1A941B8A8()
{
  v1 = v0[394];
  v2 = (*(*v1 + 392))();
  if (*(v2 + 16) && (v3 = sub_1A9425364(v0[393]), (v4 & 1) != 0))
  {
    v5 = v0[392];
    memcpy(v0 + 317, (*(v2 + 56) + 280 * v3), 0x118uLL);
    sub_1A937B3DC((v0 + 317), (v0 + 352));

    memcpy(v0 + 282, v0 + 317, 0x118uLL);
    nullsub_23();
    memcpy(v5, v0 + 282, 0x118uLL);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[394];

    if ((*(*v8 + 368))(v9))
    {
    }

    else
    {
      v10 = v0[400];
      v11 = v0[399];
      v12 = v0[394];
      v13 = sub_1A957C688();
      (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = v1;
      v14[3] = v10;
      v14[4] = v12;
      swift_retain_n();
      v15 = sub_1A938A404(0, 0, v11, &unk_1A958C058, v14);
      (*(*v12 + 376))(v15);
    }

    v16 = v0[398];
    v17 = v0[396];
    v18 = v0[395];
    v19 = v0[394];
    v20 = v0[393];
    v21 = *(v17 + 16);
    v0[403] = v21;
    v0[404] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v16, v20, v18);
    (*(v17 + 56))(v16, 0, 1, v18);
    v22 = *(v19 + 80);
    v0[391] = v22;
    sub_1A942C5FC(v22);
    v23 = swift_task_alloc();
    v0[405] = v23;
    *v23 = v0;
    v23[1] = sub_1A941BBD8;
    v24 = v0[398];

    return sub_1A941FCF8(v24, v0 + 391);
  }
}

uint64_t sub_1A941BBD8(unint64_t a1)
{
  v2 = *v1;
  v3 = (*v1)[398];
  (*v1)[406] = a1;

  sub_1A942CD04(v2[391]);
  sub_1A937B960(v3, &qword_1EB386988, &qword_1A9587830);
  v4 = v2[402];
  v5 = v2[401];

  return MEMORY[0x1EEE6DFA0](sub_1A941BD4C, v5, v4);
}

uint64_t sub_1A941BD4C()
{
  v17 = v0;
  v1 = *(v0 + 3248);
  if (*(v1 + 16))
  {
    memcpy((v0 + 856), (v1 + 32), 0x118uLL);
    memmove((v0 + 576), (v1 + 32), 0x118uLL);
    nullsub_23();
    sub_1A937B3DC(v0 + 856, v0 + 1136);

    memcpy((v0 + 296), (v0 + 576), 0x118uLL);
  }

  else
  {

    v2.n128_f64[0] = sub_1A93847E0(v0 + 296);
  }

  v3 = *(v0 + 3152);
  (*(v0 + 3224))(*(v0 + 3176), *(v0 + 3144), *(v0 + 3160), v2);
  v4 = *(*v3 + 408);
  sub_1A9391BAC(v0 + 296, v0 + 1696, &unk_1EB387BC0, &qword_1A9587E30);
  v5 = v4(v0 + 3096);
  v7 = v6;
  memcpy((v0 + 1416), (v0 + 296), 0x118uLL);
  v8 = sub_1A932D058(v0 + 1416);
  v9 = *(v0 + 3176);
  v10 = *(v0 + 3168);
  v11 = *(v0 + 3160);
  if (v8 == 1)
  {
    sub_1A94255D8(*(v0 + 3176), __src);
    (*(v10 + 8))(v9, v11);
    memcpy((v0 + 1976), __src, 0x118uLL);
    sub_1A937B960(v0 + 1976, &unk_1EB387BC0, &qword_1A9587E30);
  }

  else
  {
    memcpy((v0 + 16), (v0 + 296), 0x118uLL);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __src[0] = *v7;
    sub_1A9426068((v0 + 16), v9, isUniquelyReferenced_nonNull_native);
    (*(v10 + 8))(v9, v11);
    *v7 = __src[0];
  }

  v13 = *(v0 + 3136);
  v5(v0 + 3096, 0);
  memcpy(v13, (v0 + 296), 0x118uLL);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1A941BFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v4[11] = swift_task_alloc();
  v4[12] = type metadata accessor for VoiceQueryCriteria(0);
  v4[13] = swift_task_alloc();
  v5 = sub_1A937829C(&qword_1EB387220, &qword_1A958BF40);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_1A937829C(&qword_1EB387298, &qword_1A958C750);
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  type metadata accessor for VoiceResolver(0);
  v4[20] = sub_1A942C3E8(&qword_1ED96FD78, type metadata accessor for VoiceResolver, &protocol conformance descriptor for VoiceResolver);
  v8 = sub_1A957C5A8();
  v4[21] = v8;
  v4[22] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A941C1C4, v8, v7);
}

uint64_t sub_1A941C1C4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v22 = v0[14];
  v4 = v0[12];
  v19 = v4;
  v5 = v0[10];
  v20 = v5[7];
  v21 = v5[6];
  sub_1A93780F4(v5 + 3, v21);
  v6 = *(v4 + 24);
  v7 = sub_1A957B308();
  v0[23] = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v0[24] = v9;
  v0[25] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(&v3[v6], 1, 1, v7);
  v0[6] = MEMORY[0x1E69E7CC0];
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690, MEMORY[0x1E69E6328]);
  sub_1A957CE08();
  v10 = v0[5];
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1A957CE08();
  v11 = v0[7];
  *v3 = v10;
  *(v3 + 1) = v11;
  v12 = &v3[*(v19 + 28)];
  *v12 = 0;
  *(v12 + 1) = 0;
  (*(v20 + 40))(v3, v21);
  sub_1A9391040(v3);
  sub_1A957B918();
  (*(v2 + 8))(v1, v22);
  v13 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales;
  v0[26] = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedSystemLocale;
  v0[27] = v13;
  v14 = v0[20];
  v15 = v0[10];
  v16 = swift_task_alloc();
  v0[28] = v16;
  *v16 = v0;
  v16[1] = sub_1A941C44C;
  v17 = v0[17];

  return MEMORY[0x1EEE6D9C8](v0 + 9, v15, v14, v17);
}

uint64_t sub_1A941C44C()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1A941C56C, v3, v2);
}

uint64_t sub_1A941C56C()
{
  if (v0[9])
  {
    v1 = v0[26];
    v2 = v0[24];
    v3 = v0[23];
    v5 = v0[10];
    v4 = v0[11];
    v6 = (v5 + v0[27]);

    v2(v4, 1, 1, v3);
    swift_beginAccess();
    sub_1A942C62C(v4, v5 + v1);
    swift_endAccess();
    v7 = *v6;
    v8 = v6[1];
    *v6 = 0;
    v6[1] = 0;
    sub_1A942C69C(v7, v8);
    (*(*v5 + 400))(MEMORY[0x1E69E7CC8]);
    v9 = v0[20];
    v10 = v0[10];
    v11 = swift_task_alloc();
    v0[28] = v11;
    *v11 = v0;
    v11[1] = sub_1A941C44C;
    v12 = v0[17];

    return MEMORY[0x1EEE6D9C8](v0 + 9, v10, v9, v12);
  }

  else
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1A941C8F0(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[107] = a3;
  v5 = sub_1A957B308();
  v3[108] = v5;
  v3[109] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[110] = v6;
  v3[111] = _Block_copy(a2);
  sub_1A957B1F8();

  v7 = swift_task_alloc();
  v3[112] = v7;
  *v7 = v3;
  v7[1] = sub_1A941CA24;

  return sub_1A941B714((v3 + 72), v6);
}

uint64_t sub_1A941CA24()
{
  v13 = v0;
  v13 = *v0;
  v1 = v13;
  v2 = v13[110];
  v3 = v13[109];
  v4 = v13[108];
  v5 = *v0;
  v13 = *v0;

  (*(v3 + 8))(v2, v4);
  memcpy(v1 + 37, v1 + 72, 0x118uLL);
  memcpy(v1 + 2, v1 + 72, 0x118uLL);
  if (sub_1A932D058((v1 + 2)) == 1)
  {
    v6 = 0;
  }

  else
  {
    memcpy(v12, v1 + 2, sizeof(v12));
    CoreSynthesizer.Voice._bridgeToObjectiveC()(v7);
    v6 = v8;
    sub_1A937B960((v1 + 37), &unk_1EB387BC0, &qword_1A9587E30);
  }

  v9 = v1[111];
  (v9)[2](v9, v6);

  _Block_release(v9);

  v10 = *(v5 + 8);

  return v10();
}

uint64_t sub_1A941CC40(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A941CCDC, 0, 0);
}

uint64_t sub_1A941CCDC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1A957B308();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = *(v2 + 80);
  v0[2] = v6;
  sub_1A942C5FC(v6);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1A941CE10;
  v8 = v0[5];

  return sub_1A941FCF8(v8, v0 + 2);
}

uint64_t sub_1A941CE10(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v7 = *v1;

  sub_1A942CD04(*(v3 + 16));
  sub_1A937B960(v4, &qword_1EB386988, &qword_1A9587830);

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_1A941CF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1A957B308();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A941D028, 0, 0);
}

uint64_t sub_1A941D028()
{
  v1 = v0[5];

  sub_1A957B1B8();
  v6 = (*(*v1 + 416) + **(*v1 + 416));
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1A941D190;
  v3 = v0[8];
  v4 = v0[2];

  return v6(v4, v3);
}

uint64_t sub_1A941D190()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1A941D2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a1;
  v9 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = *(v5 + 16);
  v16 = sub_1A957C688();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v14, 1, 1, v16);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v19 = v24;
  v18[4] = v5;
  v18[5] = v19;
  v18[6] = a2;
  sub_1A9391BAC(v14, v12, &qword_1EB388000, &qword_1A9587710);
  LODWORD(a3) = (*(v17 + 48))(v12, 1, v16);

  if (a3 == 1)
  {
    sub_1A937B960(v12, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v17 + 8))(v12, v16);
  }

  v20 = sub_1A942C3E8(&qword_1ED96FE68, type metadata accessor for TTSExecutor, &_s12TextToSpeech11TTSExecutorCSchAAMc);
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1A958C088;
  *(v21 + 24) = v18;
  v25 = 6;
  v26 = 0;
  v27 = v15;
  v28 = v20;

  swift_task_create();
  sub_1A937B960(v14, &qword_1EB388000, &qword_1A9587710);
}

uint64_t sub_1A941D5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[73] = a3;
  v6[72] = a2;
  v11 = (*(*a4 + 432) + **(*a4 + 432));
  v9 = swift_task_alloc();
  v6[74] = v9;
  *v9 = v6;
  v9[1] = sub_1A941D710;

  return v11(v6 + 37, a5, a6);
}

uint64_t sub_1A941D710()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9431DA0, 0, 0);
}

void sub_1A941D9D8(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  memcpy(v10, __src, sizeof(v10));
  if (sub_1A932D058(v10) == 1)
  {
    sub_1A9391BAC(__dst, v7, &unk_1EB387BC0, &qword_1A9587E30);
    v4 = 0;
  }

  else
  {
    sub_1A9391BAC(__dst, v7, &unk_1EB387BC0, &qword_1A9587E30);
    CoreSynthesizer.Voice._bridgeToObjectiveC()(v5);
    v4 = v6;
    memcpy(v7, __srca, sizeof(v7));
    sub_1A937B48C(v7);
  }

  (*(a2 + 16))(a2, v4);
}

uint64_t sub_1A941DAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v28 = a2;
  v29 = a3;
  v12 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  v27 = *(v7 + 16);
  v18 = sub_1A957C688();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  v20 = swift_allocObject();
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = v7;
  v20[5] = a1;
  v21 = v29;
  v20[6] = v28;
  v20[7] = v21;
  v20[8] = a4;
  sub_1A9391BAC(v17, v15, &qword_1EB388000, &qword_1A9587710);
  LODWORD(a1) = (*(v19 + 48))(v15, 1, v18);
  v22 = v27;

  if (a1 == 1)
  {
    sub_1A937B960(v15, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v19 + 8))(v15, v18);
  }

  v23 = sub_1A942C3E8(&qword_1ED96FE68, type metadata accessor for TTSExecutor, &_s12TextToSpeech11TTSExecutorCSchAAMc);
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_1A958C0A0;
  *(v24 + 24) = v20;
  v30 = 6;
  v31 = 0;
  v32 = v22;
  v33 = v23;

  swift_task_create();
  sub_1A937B960(v17, &qword_1EB388000, &qword_1A9587710);
}

uint64_t sub_1A941DDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[73] = a3;
  v8[72] = a2;
  v15 = (*(*a4 + 456) + **(*a4 + 456));
  v13 = swift_task_alloc();
  v8[74] = v13;
  *v13 = v8;
  v13[1] = sub_1A941DF14;

  return v15(v8 + 37, a5, a6, a7, a8);
}

uint64_t sub_1A941DF14()
{

  return MEMORY[0x1EEE6DFA0](sub_1A941E010, 0, 0);
}

uint64_t sub_1A941E010()
{
  v5 = v0;
  v1 = v0[72];
  memcpy(v4, v0 + 37, sizeof(v4));
  v1(v4);
  memcpy(v0 + 2, v4, 0x118uLL);
  sub_1A937B960((v0 + 2), &unk_1EB387BC0, &qword_1A9587E30);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1A941E2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[145] = v5;
  v6[144] = a5;
  v6[143] = a4;
  v6[142] = a1;
  v10 = sub_1A957B308();
  v6[146] = v10;
  v6[147] = *(v10 - 8);
  v6[148] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[149] = v11;
  if (a3)
  {
    v21 = (*(*v5 + 360) + **(*v5 + 360));
    v12 = swift_task_alloc();
    v6[153] = v12;
    *v12 = v6;
    v12[1] = sub_1A941EA94;
    v13 = v6 + 72;
    v14 = a2;
    v15 = a3;
    v16 = v21;

    return v16(v13, v14, v15);
  }

  if (a5)
  {
    v22 = (*(*v5 + 432) + **(*v5 + 432));
    v18 = swift_task_alloc();
    v6[156] = v18;
    *v18 = v6;
    v18[1] = sub_1A941F330;
    v14 = v6[143];
    v13 = v6[142];
    v15 = a5;
    v16 = v22;

    return v16(v13, v14, v15);
  }

  v23 = (*(*v5 + 200) + **(*v5 + 200));
  v19 = v11;
  v20 = swift_task_alloc();
  v6[150] = v20;
  *v20 = v6;
  v20[1] = sub_1A941E690;

  return v23(v19);
}

uint64_t sub_1A941E690()
{

  return MEMORY[0x1EEE6DFA0](sub_1A941E78C, 0, 0);
}

uint64_t sub_1A941E78C(uint64_t a1)
{
  v2 = v1[145];
  v3 = sub_1A957B1A8();
  v5 = v4;
  v1[151] = v4;
  v10 = (*(*v2 + 456) + **(*v2 + 456));
  v6 = swift_task_alloc();
  v1[152] = v6;
  *v6 = v1;
  v6[1] = sub_1A941E8F4;
  v7 = v1[143];
  v8 = v1[142];

  return v10(v8, v7, 0, v3, v5);
}

uint64_t sub_1A941E8F4()
{

  return MEMORY[0x1EEE6DFA0](sub_1A941EA0C, 0, 0);
}

uint64_t sub_1A941EA0C()
{
  (*(v0[147] + 8))(v0[149], v0[146]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A941EA94()
{

  return MEMORY[0x1EEE6DFA0](sub_1A941EB90, 0, 0);
}

uint64_t sub_1A941EB90()
{
  v27 = v0;
  v1 = *(v0 + 1152);
  memcpy((v0 + 296), (v0 + 576), 0x118uLL);
  memcpy((v0 + 16), (v0 + 296), 0x118uLL);
  if (sub_1A932D058(v0 + 16) == 1)
  {
    if (v1)
    {
      v2 = *(v0 + 1152);
      v3 = *(**(v0 + 1160) + 432);
      v24 = (v3 + *v3);
      v4 = swift_task_alloc();
      *(v0 + 1248) = v4;
      *v4 = v0;
      v5 = sub_1A941F330;
LABEL_14:
      v4[1] = v5;
      v22 = *(v0 + 1144);
      v23 = *(v0 + 1136);

      return v24(v23, v22, v2);
    }

    v18 = *(**(v0 + 1160) + 456);
    v25 = (v18 + *v18);
    v19 = swift_task_alloc();
    *(v0 + 1240) = v19;
    *v19 = v0;
    v19[1] = sub_1A941F204;
    v20 = *(v0 + 1136);

    return v25(v20);
  }

  else
  {
    if (v1)
    {
      v6 = *(v0 + 1192);
      v7 = *(v0 + 1184);
      v8 = *(v0 + 1176);
      v9 = *(v0 + 1168);
      v10 = *(v0 + 1160);
      v2 = *(v0 + 1152);
      memcpy(__dst, (v0 + 16), sizeof(__dst));
      sub_1A9391BAC(v0 + 296, v0 + 856, &unk_1EB387BC0, &qword_1A9587E30);

      sub_1A957B1B8();
      v11 = v10[6];
      v12 = v10[7];
      sub_1A93780F4(v10 + 3, v11);
      v13 = (*(v12 + 16))(v11, v12);
      Locale.withTTSLanguageDisambiguation(overrides:)(v13, v6);

      v14 = *(v8 + 8);
      v14(v7, v9);
      v15 = CoreSynthesizer.Voice.speaksLanguage(locale:)();
      v14(v6, v9);
      if (!v15)
      {
        v21 = *(**(v0 + 1160) + 432);
        v24 = (v21 + *v21);
        v4 = swift_task_alloc();
        *(v0 + 1232) = v4;
        *v4 = v0;
        v5 = sub_1A941F06C;
        goto LABEL_14;
      }

      sub_1A937B960(v0 + 296, &unk_1EB387BC0, &qword_1A9587E30);
    }

    memcpy(*(v0 + 1136), (v0 + 296), 0x118uLL);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1A941F06C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A941F168, 0, 0);
}

uint64_t sub_1A941F168()
{
  sub_1A937B960(v0 + 296, &unk_1EB387BC0, &qword_1A9587E30);
  sub_1A937B960(v0 + 296, &unk_1EB387BC0, &qword_1A9587E30);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A941F204()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A941F330()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A941F45C(uint64_t a1, const void *a2)
{
  v3[144] = v2;
  v3[143] = a1;
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v3[145] = swift_task_alloc();
  memcpy(v3 + 2, a2, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1A941F510, 0, 0);
}

uint64_t sub_1A941F510(uint64_t a1)
{
  v2 = v1[145];
  CoreSynthesizer.Voice.primaryLocale.getter(v2);
  v3 = sub_1A957B308();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_1A937829C(&qword_1EB387258, &qword_1A958C0C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A958BF10;
  *(v4 + 32) = *sub_1A9493C9C();
  *(v4 + 65) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 88) = *sub_1A9493C3C();
  *(v4 + 121) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 144) = *sub_1A9493C54();
  *(v4 + 177) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 200) = 1;
  *(v4 + 240) = 0;
  *(v4 + 208) = 0u;
  *(v4 + 224) = 0u;
  *(v4 + 248) = -64;
  v1[142] = v4;
  v5 = swift_task_alloc();
  v1[146] = v5;
  *v5 = v1;
  v5[1] = sub_1A941F6A0;
  v6 = v1[145];

  return sub_1A941FCF8(v6, v1 + 142);
}

uint64_t sub_1A941F6A0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1160);
  *(*v1 + 1176) = a1;

  sub_1A942CD04(*(v2 + 1136));
  sub_1A937B960(v3, &qword_1EB386988, &qword_1A9587830);

  return MEMORY[0x1EEE6DFA0](sub_1A941F7F4, 0, 0);
}

uint64_t sub_1A941F7F4()
{
  v1 = v0[147];
  v2 = v0[143];
  if (*(v1 + 16))
  {
    memcpy(v0 + 37, (v1 + 32), 0x118uLL);
    sub_1A937B3DC((v0 + 37), (v0 + 72));

    memcpy(v2, v0 + 37, 0x118uLL);
    nullsub_23();
  }

  else
  {

    sub_1A93847E0((v0 + 107));
    memcpy(v2, v0 + 107, 0x118uLL);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A941FA54(void *a1, void *aBlock, uint64_t a3)
{
  v3[177] = a3;
  v3[178] = _Block_copy(aBlock);
  v5 = a1;

  static CoreSynthesizer.Voice._unconditionallyBridgeFromObjectiveC(_:)(a1, v3 + 142);

  v6 = swift_task_alloc();
  v3[179] = v6;
  *v6 = v3;
  v6[1] = sub_1A941FB2C;

  return sub_1A941F45C((v3 + 107), v3 + 142);
}

uint64_t sub_1A941FB2C()
{
  v10 = v0;
  v10 = *v0;
  v1 = v10;
  v2 = *v0;
  v10 = *v0;

  memcpy(v1 + 72, v1 + 142, 0x118uLL);
  sub_1A937B48C((v1 + 72));
  memcpy(v1 + 37, v1 + 107, 0x118uLL);
  memcpy(v1 + 2, v1 + 107, 0x118uLL);
  if (sub_1A932D058((v1 + 2)) == 1)
  {
    v3 = 0;
  }

  else
  {
    memcpy(__dst, v1 + 2, sizeof(__dst));
    CoreSynthesizer.Voice._bridgeToObjectiveC()(v4);
    v3 = v5;
    sub_1A937B960((v1 + 37), &unk_1EB387BC0, &qword_1A9587E30);
  }

  v6 = v1[178];
  (v6)[2](v6, v3);

  _Block_release(v6);
  v7 = *(v2 + 8);

  return v7();
}

uint64_t sub_1A941FCF8(uint64_t a1, void *a2)
{
  v3[144] = v2;
  v3[143] = a1;
  v5 = sub_1A937829C(&qword_1EB387248, &qword_1A958BF80);
  v3[145] = v5;
  v3[146] = *(v5 - 8);
  v3[147] = swift_task_alloc();
  v3[148] = type metadata accessor for VoiceQueryCriteria(0);
  v3[149] = swift_task_alloc();
  v6 = sub_1A937829C(&qword_1EB387220, &qword_1A958BF40);
  v3[150] = v6;
  v3[151] = *(v6 - 8);
  v3[152] = swift_task_alloc();
  v7 = sub_1A957B2E8();
  v3[153] = v7;
  v3[154] = *(v7 - 8);
  v3[155] = swift_task_alloc();
  v3[156] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v3[157] = swift_task_alloc();
  v3[158] = swift_task_alloc();
  v8 = sub_1A957B188();
  v3[159] = v8;
  v3[160] = *(v8 - 8);
  v3[161] = swift_task_alloc();
  v3[162] = swift_task_alloc();
  v9 = sub_1A957B308();
  v3[163] = v9;
  v3[164] = *(v9 - 8);
  v3[165] = swift_task_alloc();
  v3[166] = swift_task_alloc();
  v3[167] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386AF0, &unk_1A958C740);
  v3[168] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v3[169] = swift_task_alloc();
  v3[170] = swift_task_alloc();
  v3[171] = swift_task_alloc();
  v3[172] = swift_task_alloc();
  v3[173] = swift_task_alloc();
  v3[174] = swift_task_alloc();
  v3[175] = swift_task_alloc();
  v3[176] = swift_task_alloc();
  v3[177] = swift_task_alloc();
  v3[178] = swift_task_alloc();
  v3[179] = swift_task_alloc();
  v3[180] = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1A94200DC, 0, 0);
}

uint64_t sub_1A94200DC()
{
  v1 = v0[179];
  v2 = v0[164];
  v3 = v0[163];
  sub_1A9391BAC(v0[143], v1, &qword_1EB386988, &qword_1A9587830);
  v4 = *(v2 + 48);
  v0[181] = v4;
  v0[182] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v3))
  {
    v5 = v0[168];
    v6 = sub_1A957B218();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    v7 = v0[168];
    v8 = v0[167];
    v9 = v0[164];
    v10 = v0[163];
    (*(v9 + 16))(v8, v0[179], v10);
    sub_1A957B248();
    (*(v9 + 8))(v8, v10);
    v11 = sub_1A957B218();
    if ((*(*(v11 - 8) + 48))(v7, 1, v11) != 1)
    {
      v21 = v0[168];
      v22 = &qword_1EB386AF0;
      v23 = &unk_1A958C740;
      goto LABEL_9;
    }
  }

  v12 = v0[179];
  v13 = v0[163];
  sub_1A937B960(v0[168], &qword_1EB386AF0, &unk_1A958C740);
  if (v4(v12, 1, v13))
  {
    (*(v0[160] + 56))(v0[158], 1, 1, v0[159]);
LABEL_7:
    v21 = v0[158];
    v22 = &qword_1EB386A68;
    v23 = &qword_1A9587F40;
LABEL_9:
    sub_1A937B960(v21, v22, v23);
    v24 = v0[175];
    v25 = v0[163];
    sub_1A9391BAC(v0[143], v24, &qword_1EB386988, &qword_1A9587830);
    if (v4(v24, 1, v25) == 1)
    {
      sub_1A937B960(v0[175], &qword_1EB386988, &qword_1A9587830);
      v26 = 1;
    }

    else
    {
      v27 = v0[176];
      v28 = v0[175];
      v29 = v0[164];
      v30 = v0[163];
      v31 = v0[144];
      v32 = v31[6];
      v33 = v31[7];
      sub_1A93780F4(v31 + 3, v32);
      v34 = (*(v33 + 16))(v32, v33);
      Locale.withTTSLanguageDisambiguation(overrides:)(v34, v27);

      (*(v29 + 8))(v28, v30);
      v26 = 0;
    }

    (*(v0[164] + 56))(v0[176], v26, 1, v0[163]);
    v35 = v0[179];
    v36 = v0[149];
    v37 = v0[148];
    v38 = v0[144];
    sub_1A942C62C(v0[176], v35);
    v39 = v38[3].i64[0];
    v40 = v38[3].i64[1];
    sub_1A93780F4(&v38[1].i64[1], v39);
    sub_1A9391BAC(v35, v36->i64 + *(v37 + 24), &qword_1EB386988, &qword_1A9587830);
    *v36 = vextq_s8(v38[4], v38[4], 8uLL);
    v41 = (v36->i64 + *(v37 + 28));
    *v41 = 0;
    v41[1] = 0;
    (*(v40 + 40))(v36, v39, v40);
    sub_1A9391040(v36);
    v42 = swift_task_alloc();
    v0[184] = v42;
    *v42 = v0;
    v42[1] = sub_1A9420990;
    v43 = v0[150];

    return MEMORY[0x1EEDE9B80](v0 + 142, v43);
  }

  v14 = v0[167];
  v15 = v0[164];
  v16 = v0[163];
  v17 = v0[160];
  v18 = v0[158];
  v19 = v0[156];
  v20 = v0[154];
  v48 = v0[153];
  v49 = v0[159];
  (*(v15 + 16))(v14, v0[179], v16);
  sub_1A957B2F8();
  (*(v15 + 8))(v14, v16);
  sub_1A957B2B8();
  (*(v20 + 8))(v19, v48);
  if ((*(v17 + 48))(v18, 1, v49) == 1)
  {
    goto LABEL_7;
  }

  (*(v0[160] + 32))(v0[162], v0[158], v0[159]);
  v44 = swift_task_alloc();
  v0[183] = v44;
  *v44 = v0;
  v44[1] = sub_1A9420650;
  v45 = v0[177];
  v46 = v0[162];

  return sub_1A9423148(v45, v46);
}

uint64_t sub_1A9420650()
{

  return MEMORY[0x1EEE6DFA0](sub_1A942074C, 0, 0);
}

uint64_t sub_1A942074C()
{
  v1 = v0[181];
  v2 = v0[177];
  v3 = v0[163];
  (*(v0[160] + 8))(v0[162], v0[159]);
  if (v1(v2, 1, v3) == 1)
  {
    v4 = v0[181];
    v5 = v0[177];
    v6 = v0[163];
    sub_1A9391BAC(v0[179], v0[178], &qword_1EB386988, &qword_1A9587830);
    if (v4(v5, 1, v6) != 1)
    {
      sub_1A937B960(v0[177], &qword_1EB386988, &qword_1A9587830);
    }
  }

  else
  {
    v7 = v0[178];
    v8 = v0[164];
    v9 = v0[163];
    (*(v8 + 32))(v7, v0[177], v9);
    (*(v8 + 56))(v7, 0, 1, v9);
  }

  v10 = v0[179];
  v11 = v0[149];
  v12 = v0[148];
  v13 = v0[144];
  sub_1A942C62C(v0[178], v10);
  v14 = v13[3].i64[0];
  v15 = v13[3].i64[1];
  sub_1A93780F4(&v13[1].i64[1], v14);
  sub_1A9391BAC(v10, v11->i64 + *(v12 + 24), &qword_1EB386988, &qword_1A9587830);
  *v11 = vextq_s8(v13[4], v13[4], 8uLL);
  v16 = (v11->i64 + *(v12 + 28));
  *v16 = 0;
  v16[1] = 0;
  (*(v15 + 40))(v11, v14, v15);
  sub_1A9391040(v11);
  v17 = swift_task_alloc();
  v0[184] = v17;
  *v17 = v0;
  v17[1] = sub_1A9420990;
  v18 = v0[150];

  return MEMORY[0x1EEDE9B80](v0 + 142, v18);
}

uint64_t sub_1A9420990()
{
  v1 = *(*v0 + 1216);
  v2 = *(*v0 + 1208);
  v3 = *(*v0 + 1200);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A9420AE8, 0, 0);
}

uint64_t sub_1A9420AE8()
{
  v57 = v0;
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1392);
  v4 = *(v0 + 1304);
  v5 = *(v0 + 1136);
  *(v0 + 1480) = v5;
  sub_1A9391BAC(v2, v3, &qword_1EB386988, &qword_1A9587830);
  v6 = v1(v3, 1, v4);
  v7 = *(v0 + 1392);
  if (v6 == 1)
  {
    sub_1A937B960(*(v0 + 1392), &qword_1EB386988, &qword_1A9587830);
  }

  else
  {
    v8 = *(v0 + 1328);
    v9 = *(v0 + 1312);
    v10 = *(v0 + 1304);
    v11 = *(v0 + 1280);
    v12 = *(v0 + 1272);
    v13 = *(v0 + 1256);
    v14 = *(v0 + 1240);
    v15 = *(v0 + 1232);
    v16 = *(v0 + 1224);
    v17 = *(v9 + 32);
    *(v0 + 1488) = v17;
    *(v0 + 1496) = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v17(v8, v7, v10);
    sub_1A957B2F8();
    sub_1A957B2B8();
    (*(v15 + 8))(v14, v16);
    if ((*(v11 + 48))(v13, 1, v12) == 1)
    {
      v18 = *(v0 + 1256);
      (*(*(v0 + 1312) + 8))(*(v0 + 1328), *(v0 + 1304));
      sub_1A937B960(v18, &qword_1EB386A68, &qword_1A9587F40);
    }

    else
    {
      (*(*(v0 + 1280) + 32))(*(v0 + 1288), *(v0 + 1256), *(v0 + 1272));
      v19 = MEMORY[0x1E69E7CD0];
      v55 = MEMORY[0x1E69E7CD0];
      v20 = *(v5 + 16);
      if (v20)
      {
        v21 = 0;
        v22 = (v5 + 32);
        v23 = v20 - 1;
        while (1)
        {
          memcpy((v0 + 16), v22, 0x118uLL);
          memcpy(__dst, v22, 0x118uLL);
          sub_1A937B3DC(v0 + 16, v0 + 296);
          sub_1A9421D68(&v55, __dst);
          memcpy((v0 + 856), __dst, 0x118uLL);
          sub_1A937B48C(v0 + 856);
          if (v23 == v21)
          {
            break;
          }

          ++v21;
          v22 += 280;
          if (v21 >= *(v5 + 16))
          {
            __break(1u);
            break;
          }
        }

        v19 = v55;
      }

      *(v0 + 1504) = 0;
      v24 = sub_1A957B1A8();
      v26 = sub_1A93A8204(v24, v25, v19);

      if ((v26 & 1) == 0)
      {
        v46 = swift_task_alloc();
        *(v0 + 1512) = v46;
        *v46 = v0;
        v46[1] = sub_1A942123C;
        v47 = *(v0 + 1376);
        v48 = *(v0 + 1288);

        return sub_1A9423148(v47, v48);
      }

      v27 = *(v0 + 1328);
      v28 = *(v0 + 1312);
      v29 = *(v0 + 1304);
      (*(*(v0 + 1280) + 8))(*(v0 + 1288), *(v0 + 1272));
      (*(v28 + 8))(v27, v29);
    }
  }

  *(v0 + 1520) = 0;
  v30 = *(v0 + 1448);
  v31 = *(v0 + 1368);
  v32 = *(v0 + 1304);
  sub_1A9391BAC(*(v0 + 1432), v31, &qword_1EB386988, &qword_1A9587830);
  LODWORD(v32) = v30(v31, 1, v32);
  v33 = sub_1A937B960(v31, &qword_1EB386988, &qword_1A9587830);
  if (v32 == 1)
  {
    (*(**(v0 + 1152) + 336))(v33);
    v34 = swift_task_alloc();
    *(v0 + 1528) = v34;
    *v34 = v0;
    v34[1] = sub_1A94218A4;
    v35 = *(v0 + 1360);
    v36 = *(v0 + 1160);

    return MEMORY[0x1EEDE9B70](v35, v36);
  }

  v37 = *(v0 + 1448);
  v38 = *(v0 + 1352);
  v39 = *(v0 + 1304);
  sub_1A9391BAC(*(v0 + 1432), v38, &qword_1EB386988, &qword_1A9587830);
  if (v37(v38, 1, v39) == 1)
  {
    v40 = *(v0 + 1352);

    sub_1A937B960(v40, &qword_1EB386988, &qword_1A9587830);
    v54 = MEMORY[0x1E69E7CC0];
LABEL_27:
    sub_1A937B960(*(v0 + 1432), &qword_1EB386988, &qword_1A9587830);

    v52 = *(v0 + 8);

    return v52(v54);
  }

  v41 = *(v0 + 1520);
  v42 = *(v0 + 1480);
  v43 = *(v0 + 1440);
  v44 = *(v0 + 1320);
  (*(*(v0 + 1312) + 32))(v44, *(v0 + 1352), *(v0 + 1304));
  v45 = swift_task_alloc();
  *(v45 + 16) = v44;
  *(v45 + 24) = v43;
  __dst[0] = v42;

  sub_1A942778C(sub_1A9431BC8, v45);
  if (!v41)
  {
    v49 = *(v0 + 1320);
    v50 = *(v0 + 1312);
    v51 = *(v0 + 1304);

    v54 = __dst[0];

    (*(v50 + 8))(v49, v51);
    goto LABEL_27;
  }
}

uint64_t sub_1A942123C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9421338, 0, 0);
}

uint64_t sub_1A9421338()
{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1376);
  v3 = *(v0 + 1328);
  v4 = *(v0 + 1312);
  v5 = *(v0 + 1304);
  (*(*(v0 + 1280) + 8))(*(v0 + 1288), *(v0 + 1272));
  (*(v4 + 8))(v3, v5);
  v6 = v1(v2, 1, v5);
  v7 = *(v0 + 1384);
  v8 = *(v0 + 1376);
  if (v6 == 1)
  {
    v9 = *(v0 + 1448);
    v10 = *(v0 + 1304);
    sub_1A9391BAC(*(v0 + 1432), *(v0 + 1384), &qword_1EB386988, &qword_1A9587830);
    if (v9(v8, 1, v10) != 1)
    {
      sub_1A937B960(*(v0 + 1376), &qword_1EB386988, &qword_1A9587830);
    }
  }

  else
  {
    v11 = *(v0 + 1312);
    v12 = *(v0 + 1304);
    (*(v0 + 1488))(*(v0 + 1384), *(v0 + 1376), v12);
    (*(v11 + 56))(v7, 0, 1, v12);
  }

  sub_1A942C62C(*(v0 + 1384), *(v0 + 1432));
  *(v0 + 1520) = *(v0 + 1504);
  v13 = *(v0 + 1448);
  v14 = *(v0 + 1368);
  v15 = *(v0 + 1304);
  sub_1A9391BAC(*(v0 + 1432), v14, &qword_1EB386988, &qword_1A9587830);
  LODWORD(v15) = v13(v14, 1, v15);
  v16 = sub_1A937B960(v14, &qword_1EB386988, &qword_1A9587830);
  if (v15 == 1)
  {
    (*(**(v0 + 1152) + 336))(v16);
    v17 = swift_task_alloc();
    *(v0 + 1528) = v17;
    *v17 = v0;
    v17[1] = sub_1A94218A4;
    v18 = *(v0 + 1360);
    v19 = *(v0 + 1160);

    return MEMORY[0x1EEDE9B70](v18, v19);
  }

  v20 = *(v0 + 1448);
  v21 = *(v0 + 1352);
  v22 = *(v0 + 1304);
  sub_1A9391BAC(*(v0 + 1432), v21, &qword_1EB386988, &qword_1A9587830);
  if (v20(v21, 1, v22) == 1)
  {
    v23 = *(v0 + 1352);

    sub_1A937B960(v23, &qword_1EB386988, &qword_1A9587830);
    v34 = MEMORY[0x1E69E7CC0];
LABEL_16:
    sub_1A937B960(*(v0 + 1432), &qword_1EB386988, &qword_1A9587830);

    v32 = *(v0 + 8);

    return v32(v34);
  }

  v24 = *(v0 + 1520);
  v25 = *(v0 + 1480);
  v26 = *(v0 + 1440);
  v27 = *(v0 + 1320);
  (*(*(v0 + 1312) + 32))(v27, *(v0 + 1352), *(v0 + 1304));
  v28 = swift_task_alloc();
  *(v28 + 16) = v27;
  *(v28 + 24) = v26;
  v35 = v25;

  sub_1A942778C(sub_1A9431BC8, v28);
  if (!v24)
  {
    v29 = *(v0 + 1320);
    v30 = *(v0 + 1312);
    v31 = *(v0 + 1304);

    v34 = v35;

    (*(v30 + 8))(v29, v31);
    goto LABEL_16;
  }
}

uint64_t sub_1A94218A4()
{
  v1 = *(*v0 + 1176);
  v2 = *(*v0 + 1168);
  v3 = *(*v0 + 1160);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A94219FC, 0, 0);
}

uint64_t sub_1A94219FC()
{
  v1 = v0[179];
  v2 = v0[170];
  (*(v0[164] + 56))(v2, 0, 1, v0[163]);
  sub_1A942C62C(v2, v1);
  v3 = v0[181];
  v4 = v0[169];
  v5 = v0[163];
  sub_1A9391BAC(v0[179], v4, &qword_1EB386988, &qword_1A9587830);
  if (v3(v4, 1, v5) == 1)
  {
    v6 = v0[169];

    sub_1A937B960(v6, &qword_1EB386988, &qword_1A9587830);
    v17 = MEMORY[0x1E69E7CC0];
LABEL_8:
    sub_1A937B960(v0[179], &qword_1EB386988, &qword_1A9587830);

    v16 = v0[1];

    return v16(v17);
  }

  v7 = v0[190];
  v8 = v0[185];
  v9 = v0[180];
  v10 = v0[165];
  (*(v0[164] + 32))(v10, v0[169], v0[163]);
  v11 = swift_task_alloc();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v18 = v8;

  sub_1A942778C(sub_1A9431BC8, v11);
  if (!v7)
  {
    v13 = v0[165];
    v14 = v0[164];
    v15 = v0[163];

    v17 = v18;

    (*(v14 + 8))(v13, v15);
    goto LABEL_8;
  }
}

uint64_t sub_1A9421D68(uint64_t a1, const void *a2)
{
  v4 = sub_1A957B308();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v37, a2, sizeof(v37));
  memcpy(v36, a2, sizeof(v36));
  CoreSynthesizer.Voice.primaryLocales.getter(v35);
  v8 = sub_1A93780F4(v35, v35[3]);
  MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 16))(v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1A957C598();
  CoreSynthesizer.Voice.secondaryLocales.getter(v34);
  v12 = sub_1A93780F4(v34, v34[3]);
  MEMORY[0x1EEE9AC00](v12);
  (*(v14 + 16))(v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1A957C598();
  v33 = v11;
  sub_1A942AF14(v15);
  v16 = v33;
  sub_1A9378138(v34);
  sub_1A9378138(v35);
  v17 = *(v16 + 16);
  if (v17)
  {
    v19 = *(v5 + 16);
    v18 = v5 + 16;
    v20 = *(v18 + 64);
    v30[1] = v16;
    v21 = v16 + ((v20 + 32) & ~v20);
    v31 = *(v18 + 56);
    v32 = v19;
    v22 = v4;
    v23 = (v18 - 8);
    do
    {
      v32(v7, v21, v22);
      v24 = sub_1A957B1A8();
      v25 = a1;
      v27 = v26;
      (*v23)(v7, v22);
      v28 = v27;
      a1 = v25;
      sub_1A93AB260(v36, v24, v28);

      v21 += v31;
      --v17;
    }

    while (v17);
  }
}

uint64_t sub_1A94220A0(uint64_t *a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v63 = a4;
  v8 = sub_1A957B308();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v58 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v57 = &v57 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v60 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v57 - v15;
  v17 = *a1;
  v16 = a1[1];
  memcpy(v82, a1 + 2, sizeof(v82));
  v19 = *a2;
  v18 = a2[1];
  memcpy(v83, a2 + 2, sizeof(v83));
  v68 = v17;
  v79 = v17;
  v84 = v16;
  v80 = v16;
  v64 = a1;
  memcpy(v81, a1 + 2, sizeof(v81));
  CoreSynthesizer.Voice.primaryLocales.getter(&v71);
  sub_1A93780F4(&v71, *(&v72 + 1));
  v70 = a3;
  v20 = sub_1A957C428();
  v66 = v18;
  v67 = v19;
  *&v77 = v19;
  *(&v77 + 1) = v18;
  memcpy(v78, a2 + 2, sizeof(v78));
  CoreSynthesizer.Voice.primaryLocales.getter(v75);
  sub_1A93780F4(v75, v76);
  v65 = a3;
  v69 = a3;
  LODWORD(a1) = sub_1A957C428();
  sub_1A9378138(v75);
  sub_1A9378138(&v71);
  if (((v20 ^ a1) & 1) == 0)
  {
    v79 = v68;
    v80 = v84;
    v21 = v64;
    memcpy(v81, v64 + 2, sizeof(v81));
    CoreSynthesizer.Voice.primaryLocales.getter(&v71);
    v22 = sub_1A93780F4(&v71, *(&v72 + 1));
    MEMORY[0x1EEE9AC00](v22);
    v23 = v65;
    *(&v57 - 2) = v65;
    v20 = sub_1A957C428();
    *&v77 = v67;
    *(&v77 + 1) = v66;
    memcpy(v78, a2 + 2, sizeof(v78));
    CoreSynthesizer.Voice.primaryLocales.getter(v75);
    v24 = sub_1A93780F4(v75, v76);
    MEMORY[0x1EEE9AC00](v24);
    *(&v57 - 2) = v23;
    v25 = sub_1A957C428();
    sub_1A9378138(v75);
    sub_1A9378138(&v71);
    if (((v20 ^ v25) & 1) == 0)
    {
      v65 = v4;
      v79 = v63;
      result = sub_1A9422ACC();
      v27 = result;
      v28 = (result + 80);
      v29 = -*(result + 16);
      v30 = -1;
      do
      {
        if (v29 + v30 == -1)
        {

          v79 = v68;
          v80 = v84;
          memcpy(v81, v21 + 2, sizeof(v81));
          v34 = v59;
          CoreSynthesizer.Voice.primaryLocale.getter(v59);
          v64 = sub_1A957B118();
          v36 = v35;
          v37 = v62;
          v38 = *(v61 + 8);
          v38(v34, v62);
          v39 = v66;
          *&v77 = v67;
          *(&v77 + 1) = v66;
          memcpy(v78, v83, sizeof(v78));
          v40 = v60;
          CoreSynthesizer.Voice.primaryLocale.getter(v60);
          v41 = sub_1A957B118();
          v43 = v42;
          v44 = v40;
          v45 = v38;
          v38(v44, v37);
          if (v64 == v41 && v36 == v43)
          {
          }

          else
          {
            v46 = sub_1A957D3E8();

            if ((v46 & 1) == 0)
            {
              v79 = v68;
              v80 = v84;
              memcpy(v81, v82, sizeof(v81));
              v48 = v39;
              v49 = v57;
              CoreSynthesizer.Voice.primaryLocale.getter(v57);
              v50 = sub_1A957B118();
              v52 = v51;
              v45(v49, v37);
              *&v71 = v50;
              *(&v71 + 1) = v52;
              *&v77 = v67;
              *(&v77 + 1) = v48;
              memcpy(v78, v83, sizeof(v78));
              v53 = v58;
              CoreSynthesizer.Voice.primaryLocale.getter(v58);
              v54 = sub_1A957B118();
              v56 = v55;
              v45(v53, v37);
              v75[0] = v54;
              v75[1] = v56;
              sub_1A93820F4();
              v33 = sub_1A957CD18();

              goto LABEL_14;
            }
          }

          v79 = v68;
          v80 = v84;
          *&v77 = v67;
          *(&v77 + 1) = v39;
          sub_1A93820F4();
          v47 = sub_1A957CD18() == -1;
          goto LABEL_15;
        }

        if (++v30 >= *(v27 + 16))
        {
          __break(1u);
          return result;
        }

        v31 = v28 + 56;
        v32 = *v28;
        v71 = *(v28 - 3);
        v72 = *(v28 - 2);
        v73 = *(v28 - 1);
        v74 = v32;
        v79 = v68;
        v80 = v84;
        memcpy(v81, v21 + 2, sizeof(v81));
        *&v77 = v67;
        *(&v77 + 1) = v66;
        memcpy(v78, a2 + 2, sizeof(v78));
        result = sub_1A9422C00(&v79, &v77);
        v28 = v31;
      }

      while (!result);
      v33 = result;
LABEL_14:

      v47 = v33 == -1;
LABEL_15:
      LOBYTE(v20) = v47;
    }
  }

  return v20 & 1;
}

uint64_t sub_1A9422794(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v2 = sub_1A957B2E8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  sub_1A957B2F8();
  sub_1A957B2B8();
  v15 = *(v3 + 8);
  v31 = v2;
  v15(v8, v2);
  v16 = sub_1A957B188();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v14, 1, v16) == 1)
  {
    sub_1A937B960(v14, &qword_1EB386A68, &qword_1A9587F40);
    v29 = 0;
    v19 = 0;
  }

  else
  {
    v29 = sub_1A957B148();
    v20 = v14;
    v19 = v21;
    (*(v17 + 8))(v20, v16);
  }

  sub_1A957B2F8();
  sub_1A957B2B8();
  v15(v6, v31);
  if (v18(v12, 1, v16) == 1)
  {
    sub_1A937B960(v12, &qword_1EB386A68, &qword_1A9587F40);
    if (!v19)
    {
      goto LABEL_17;
    }

LABEL_14:
    v26 = 0;
LABEL_19:

    return v26 & 1;
  }

  v22 = sub_1A957B148();
  v24 = v23;
  (*(v17 + 8))(v12, v16);
  if (v19)
  {
    if (v24)
    {
      if (v29 == v22 && v19 == v24)
      {

        v26 = 1;
      }

      else
      {
        v26 = sub_1A957D3E8();
      }

      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v24)
  {
    v26 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v26 = 1;
  return v26 & 1;
}