uint64_t sub_83370@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v6 = *(v1 + 2);
  v5 = *(v1 + 3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  v8 = objc_opt_self();

  v9 = [v8 defaultCenter];
  if (qword_F82C8 != -1)
  {
    swift_once();
  }

  v10 = sub_2E50(&qword_FAF80, &unk_C1E28);
  sub_BB400();

  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = v4;
  *(v11 + 32) = v6;
  *(v11 + 40) = v5;
  *a1 = sub_834FC;
  a1[1] = v7;
  v12 = (a1 + *(v10 + 56));
  *v12 = sub_8354C;
  v12[1] = v11;
}

uint64_t sub_8350C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_8355C(uint64_t a1, uint64_t a2)
{
  v4 = sub_B9F50();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_835C4()
{
  result = qword_FAFA8;
  if (!qword_FAFA8)
  {
    sub_5520(&qword_FAF80, &unk_C1E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FAFA8);
  }

  return result;
}

uint64_t sub_8362C(uint64_t a1)
{
  result = sub_BAAF0();
  microphoneColor = result;
  return result;
}

uint64_t *microphoneColor.unsafeMutableAddressor()
{
  if (qword_F8338 != -1)
  {
    swift_once();
  }

  return &microphoneColor;
}

void (*AudioHistogramConfig.levelBarMaxHeight.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$levelBarMaxHeight.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFC8, &qword_C1EC0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFC0, &qword_C1EB8);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$levelBarMaxHeight.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_2E50(&qword_FAFC8, &qword_C1EC0);
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

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarMaxHeight;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFC0, &qword_C1EB8);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.levelBarMinHeight.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$levelBarMinHeight.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFC8, &qword_C1EC0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFC0, &qword_C1EB8);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$levelBarMinHeight.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_2E50(&qword_FAFC8, &qword_C1EC0);
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

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarMinHeight;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFC0, &qword_C1EB8);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.levelBarWidth.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$levelBarWidth.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFC8, &qword_C1EC0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFC0, &qword_C1EB8);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$levelBarWidth.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_2E50(&qword_FAFC8, &qword_C1EC0);
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

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarWidth;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFC0, &qword_C1EB8);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.levelBarCount.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$levelBarCount.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFF0, &qword_C1FA8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFE8, &qword_C1FA0);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$levelBarCount.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_2E50(&qword_FAFF0, &qword_C1FA8);
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

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarCount;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFE8, &qword_C1FA0);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.levelBarKeys.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$levelBarKeys.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFF0, &qword_C1FA8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFE8, &qword_C1FA0);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$levelBarKeys.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_2E50(&qword_FAFF0, &qword_C1FA8);
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

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarKeys;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFE8, &qword_C1FA0);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.levelBarSpacing.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$levelBarSpacing.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFC8, &qword_C1EC0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFC0, &qword_C1EB8);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$levelBarSpacing.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_2E50(&qword_FAFC8, &qword_C1EC0);
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

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarSpacing;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFC0, &qword_C1EB8);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.animationTimerDuration.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$animationTimerDuration.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFC8, &qword_C1EC0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFC0, &qword_C1EB8);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$animationTimerDuration.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_2E50(&qword_FAFC8, &qword_C1EC0);
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

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__animationTimerDuration;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFC0, &qword_C1EB8);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.minBarScale.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$minBarScale.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFC8, &qword_C1EC0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFC0, &qword_C1EB8);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$minBarScale.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_2E50(&qword_FAFC8, &qword_C1EC0);
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

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__minBarScale;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFC0, &qword_C1EB8);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.maxBarScale.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_B9B00();
  return sub_71464;
}

uint64_t AudioHistogramConfig.$maxBarScale.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFC8, &qword_C1EC0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFC0, &qword_C1EB8);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$maxBarScale.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_2E50(&qword_FAFC8, &qword_C1EC0);
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

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__maxBarScale;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFC0, &qword_C1EB8);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

void (*AudioHistogramConfig.randomPower.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$randomPower.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFF0, &qword_C1FA8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFE8, &qword_C1FA0);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$randomPower.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_2E50(&qword_FAFF0, &qword_C1FA8);
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

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__randomPower;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFE8, &qword_C1FA0);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

uint64_t sub_85DF8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

void (*AudioHistogramConfig.jitter.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$jitter.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFF0, &qword_C1FA8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFE8, &qword_C1FA0);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$jitter.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_2E50(&qword_FAFF0, &qword_C1FA8);
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

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__jitter;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFE8, &qword_C1FA0);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

double sub_86220(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v3;
}

double sub_8628C@<D0>(double *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  result = v5;
  *a3 = v5;
  return result;
}

uint64_t sub_86330(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

uint64_t sub_863E4(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

void (*AudioHistogramConfig.magnitude.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$magnitude.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFC8, &qword_C1EC0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAFC0, &qword_C1EB8);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$magnitude.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_2E50(&qword_FAFC8, &qword_C1EC0);
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

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__magnitude;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAFC0, &qword_C1EB8);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

uint64_t sub_86828(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

uint64_t sub_868BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

void (*AudioHistogramConfig.levelBarColor.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$levelBarColor.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FB048, &qword_C2240);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FB040, &qword_C2238);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$levelBarColor.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_2E50(&qword_FB048, &qword_C2240);
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

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarColor;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FB040, &qword_C2238);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

uint64_t AudioHistogramConfig.histogram.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v1;
}

uint64_t sub_86D54@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  *a1 = v3;
  return result;
}

uint64_t sub_86DD8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

uint64_t AudioHistogramConfig.histogram.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

void (*AudioHistogramConfig.histogram.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t AudioHistogramConfig.$histogram.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FB068, &qword_C22A0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FB060, &qword_C2298);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AudioHistogramConfig.$histogram.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_2E50(&qword_FB068, &qword_C22A0);
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

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__histogram;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FB060, &qword_C2298);
  sub_B9AE0();
  swift_endAccess();
  return sub_7172C;
}

uint64_t sub_87230()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();
}

uint64_t sub_8739C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (__OFSUB__(*&v2, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v1 = v2 * *&v2 + v2 * (*&v2 - 1);
  if (COERCE__INT64(fabs(v1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t AudioHistogramConfig.deinit()
{
  v1 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarMaxHeight;
  v2 = sub_2E50(&qword_FAFC0, &qword_C1EB8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarMinHeight, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarWidth, v2);
  v4 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarCount;
  v5 = sub_2E50(&qword_FAFE8, &qword_C1FA0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarKeys, v5);
  v3(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarSpacing, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__animationTimerDuration, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__minBarScale, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__maxBarScale, v2);
  v6(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__randomPower, v5);
  v6(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__jitter, v5);
  v3(v0 + OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__magnitude, v2);
  v7 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarColor;
  v8 = sub_2E50(&qword_FB040, &qword_C2238);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__histogram;
  v10 = sub_2E50(&qword_FB060, &qword_C2298);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t AudioHistogramConfig.__deallocating_deinit()
{
  AudioHistogramConfig.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_87840()
{
  v1 = sub_2E50(&qword_FB060, &qword_C2298);
  v40 = *(v1 - 8);
  v41 = v1;
  __chkstk_darwin(v1);
  v39 = v34 - v2;
  v3 = sub_2E50(&qword_FB040, &qword_C2238);
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = v34 - v4;
  v35 = sub_2E50(&qword_FAFE8, &qword_C1FA0);
  v5 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = v34 - v6;
  v8 = sub_2E50(&qword_FAFC0, &qword_C1EB8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v34 - v10;
  v12 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarMaxHeight;
  v42 = 0x403C000000000000;
  sub_B9AD0();
  v13 = *(v9 + 32);
  v13(v0 + v12, v11, v8);
  v14 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarMinHeight;
  v42 = 0x4000000000000000;
  sub_B9AD0();
  v13(v0 + v14, v11, v8);
  v15 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarWidth;
  v42 = 0x4000000000000000;
  sub_B9AD0();
  v13(v0 + v15, v11, v8);
  v16 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarCount;
  v42 = 16;
  sub_B9AD0();
  v17 = *(v5 + 32);
  v18 = v35;
  v17(v0 + v16, v7, v35);
  v34[1] = v5 + 32;
  v19 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarKeys;
  v42 = 10;
  sub_B9AD0();
  v17(v0 + v19, v7, v18);
  v20 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarSpacing;
  v42 = 0x4000000000000000;
  sub_B9AD0();
  v13(v0 + v20, v11, v8);
  v21 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__animationTimerDuration;
  v42 = 0x401C000000000000;
  sub_B9AD0();
  v13(v0 + v21, v11, v8);
  v22 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__minBarScale;
  v42 = 0x3FB999999999999ALL;
  sub_B9AD0();
  v13(v0 + v22, v11, v8);
  v23 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__maxBarScale;
  v42 = 0x3FF0000000000000;
  sub_B9AD0();
  v13(v0 + v23, v11, v8);
  v24 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__randomPower;
  v42 = 80;
  sub_B9AD0();
  v17(v0 + v24, v7, v18);
  v25 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__jitter;
  v42 = 29;
  sub_B9AD0();
  v17(v0 + v25, v7, v18);
  v26 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__magnitude;
  v42 = 0x3FF0000000000000;
  sub_B9AD0();
  v13(v0 + v26, v11, v8);
  v27 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__levelBarColor;
  if (qword_F8338 != -1)
  {
    swift_once();
  }

  v42 = microphoneColor;

  v28 = v36;
  sub_B9AD0();
  (*(v37 + 32))(v0 + v27, v28, v38);
  v29 = OBJC_IVAR____TtC19LiveSpeechUIService20AudioHistogramConfig__histogram;
  v30 = sub_BB120();
  *(v30 + 16) = 16;
  v31 = vdupq_n_s64(0x3FB999999999999AuLL);
  *(v30 + 32) = v31;
  *(v30 + 48) = v31;
  *(v30 + 64) = v31;
  *(v30 + 80) = v31;
  *(v30 + 96) = v31;
  *(v30 + 112) = v31;
  *(v30 + 128) = v31;
  *(v30 + 144) = v31;
  v42 = v30;
  sub_2E50(&qword_FB050, &qword_C2248);
  v32 = v39;
  sub_B9AD0();
  (*(v40 + 32))(v0 + v29, v32, v41);
  return v0;
}

uint64_t sub_87E70@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AudioHistogramConfig(0);
  result = sub_B9AA0();
  *a2 = result;
  return result;
}

uint64_t sub_87EB0()
{
  v0 = sub_2E50(&qword_F8FA0, &unk_BE980);
  __chkstk_darwin(v0 - 8);
  v2 = v9 - v1;
  sub_8A3DC();
  v3 = [objc_opt_self() mainRunLoop];
  v4 = sub_BB4B0();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = NSRunLoopCommonModes;
  v6 = sub_BB440();

  sub_C5E8(v2, &qword_F8FA0, &unk_BE980);
  v9[1] = v6;
  sub_BB430();
  sub_8A428(&qword_FB4D8, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v7 = sub_B9AB0();

  qword_FAFB0 = v7;
  return result;
}

void *sub_8806C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v0 = 1.0;
  if (v11 > 0.0)
  {
    sub_2E50(&qword_FA208, &qword_C0480);
    sub_BABD0();
    v0 = v10 / v11;
  }

  sub_2E50(&qword_FB4C0, &qword_C2500);
  sub_BABD0();
  v1 = *(v10 + 16);

  if (v1)
  {
    v2 = sub_BB120();
    v2[2] = v1;
    v3 = v2 + 2;
    bzero(v2 + 4, 8 * v1);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
    v3 = &_swiftEmptyArrayStorage[2];
    v1 = _swiftEmptyArrayStorage[2];
    if (!v1)
    {
      return v2;
    }
  }

  v4 = 4;
  while (1)
  {
    v5 = v4 - 4;
    sub_BABD0();
    result = v10;
    if ((v4 - 4) >= *(v10 + 16))
    {
      break;
    }

    v7 = *(v10 + 8 * v4);

    sub_BABD0();
    result = v10;
    if (v5 >= *(v10 + 16))
    {
      goto LABEL_14;
    }

    v8 = *(v10 + 8 * v4);

    sub_BABD0();
    result = v10;
    if (v5 >= *(v10 + 16))
    {
      goto LABEL_15;
    }

    v9 = *(v10 + 8 * v4);

    if (v5 >= *v3)
    {
      goto LABEL_16;
    }

    *&v2[v4++] = v7 + v0 * (v8 - v9);
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_88298()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v35 = v3;
  v36 = v2;
  *&v34 = v2;
  *(&v34 + 1) = v3;
  sub_57A0(&v36, &v33, &qword_FB050, &qword_C2248);
  sub_57A0(&v35, &v33, &qword_FB4C8, &qword_C2508);
  sub_57A0(&v36, &v33, &qword_FB050, &qword_C2248);
  sub_57A0(&v35, &v33, &qword_FB4C8, &qword_C2508);
  sub_2E50(&qword_FB4C0, &qword_C2500);
  sub_BABD0();
  v4 = v33[2];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v4 != v34)
  {
    sub_87230();
    v31 = v5;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    v7 = v34;
    if ((v34 & 0x8000000000000000) != 0)
    {
LABEL_28:
      __break(1u);
      return result;
    }

    if (v34)
    {
      v8 = sub_BB120();
      v8[1].i64[0] = v7;
      i64 = v8[2].i64;
      if (v7 > 3)
      {
        v10 = v7 & 0x7FFFFFFFFFFFFFFCLL;
        i64 += v7 & 0x7FFFFFFFFFFFFFFCLL;
        v11 = v31;
        v12 = vdupq_lane_s64(v31, 0);
        v13 = v8 + 3;
        v14 = v7 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v13[-1] = v12;
          *v13 = v12;
          v13 += 2;
          v14 -= 4;
        }

        while (v14);
        if (v7 == v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = 0;
        v11 = v31;
      }

      v15 = v7 - v10;
      do
      {
        *i64++ = v11;
        --v15;
      }

      while (v15);
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

LABEL_12:
    *&v34 = v2;
    *(&v34 + 1) = v3;
    v33 = v8;
    sub_BABE0();
  }

  sub_C5E8(&v36, &qword_FB050, &qword_C2248);
  sub_C5E8(&v35, &qword_FB4C8, &qword_C2508);
  *&v34 = v2;
  *(&v34 + 1) = v3;
  sub_BABD0();
  v34 = *(v1 + 16);
  sub_BABE0();
  v34 = *(v1 + 64);
  v33 = 0;
  sub_2E50(&qword_FA208, &qword_C0480);
  sub_BABE0();
  *&v34 = v2;
  *(&v34 + 1) = v3;
  sub_BABD0();
  v16 = v33;
  v17 = v33[2];
  if (v17)
  {
    v33 = _swiftEmptyArrayStorage;
    v29 = v17;
    result = sub_7D48C(0, v17, 0);
    v18 = 0;
    v19 = v33;
    v30 = v16[2];
    while (v30 != v18)
    {
      if (v18 >= v16[2])
      {
        goto LABEL_27;
      }

      v20 = *&v16[v18 + 4];
      v21 = v2;
      *&v34 = v2;
      *(&v34 + 1) = v3;
      sub_BABD0();
      v22 = *(v32 + 16);

      v23 = sin(v18 / v22 * 3.14159265);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      v24 = *&v34;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      v25 = v23 * (v24 - *&v34);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      if (v20 * (v25 + *&v34) > 0.1)
      {
        v26 = v20 * (v25 + *&v34);
      }

      else
      {
        v26 = 0.1;
      }

      v33 = v19;
      v28 = v19[2];
      v27 = v19[3];
      if (v28 >= v27 >> 1)
      {
        result = sub_7D48C((v27 > 1), v28 + 1, 1);
        v19 = v33;
      }

      ++v18;
      v19[2] = v28 + 1;
      *&v19[v28 + 4] = v26;
      v2 = v21;
      if (v29 == v18)
      {

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_25:
  *&v34 = v2;
  *(&v34 + 1) = v3;
  v33 = v19;
  sub_BABE0();
  sub_C5E8(&v36, &qword_FB050, &qword_C2248);
  return sub_C5E8(&v35, &qword_FB4C8, &qword_C2508);
}

uint64_t sub_887F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_BA1D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  v9 = v2[3];
  v8[3] = v2[2];
  v8[4] = v9;
  v8[5] = v2[4];
  v10 = v2[1];
  v8[1] = *v2;
  v8[2] = v10;
  (*(v5 + 104))(v7, enum case for ColorRenderingMode.nonLinear(_:), v4);
  sub_89F50(v2, v20);
  sub_BAC50();
  sub_8739C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  sub_BADE0();
  sub_B9CF0();
  v11 = (a1 + *(sub_2E50(&qword_FB4A8, &qword_C24E0) + 36));
  v12 = v22;
  *v11 = v21;
  v11[1] = v12;
  v11[2] = v23;
  if (qword_F8340 != -1)
  {
    swift_once();
  }

  v13 = qword_FAFB0;
  v14 = swift_allocObject();
  v15 = v2[3];
  v14[3] = v2[2];
  v14[4] = v15;
  v14[5] = v2[4];
  v16 = v2[1];
  v14[1] = *v2;
  v14[2] = v16;
  v17 = sub_2E50(&qword_FB4B0, &qword_C24E8);
  *(a1 + *(v17 + 52)) = v13;
  v18 = (a1 + *(v17 + 56));
  *v18 = sub_8A3D4;
  v18[1] = v14;
  sub_89F50(v2, v20);
}

uint64_t sub_88A90(CGContext *a1, uint64_t a2, double a3, double a4)
{
  v17 = a1;
  v18 = sub_B9300();
  v16 = *(v18 - 8);
  __chkstk_darwin(v18);
  v15 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  Mutable = CGPathCreateMutable();
  v21 = *(a2 + 48);
  sub_2E50(&qword_FB4C0, &qword_C2500);
  sub_BABD0();
  v7 = *(v20 + 16);

  if (v7)
  {
    v8 = 0;
    v21 = 0x3FF0000000000000uLL;
    v22 = 0;
    v23 = 0x3FF0000000000000;
    v24 = 0;
    v25 = 0;
    while (1)
    {
      v20 = *(a2 + 48);
      sub_BABD0();
      result = v19;
      if (v8 >= *(v19 + 16))
      {
        break;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      sub_BB330();
      if (v7 == ++v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v10 = v17;
    CGContextAddPath(v17, Mutable);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    GenericGray = sub_BAA60();

    if (!GenericGray)
    {
      GenericGray = CGColorCreateGenericGray(1.0, 1.0);
    }

    CGContextSetFillColorWithColor(v10, GenericGray);

    CGContextSetLineWidth(v10, 0.0);
    v13 = v15;
    v12 = v16;
    v14 = v18;
    (*(v16 + 104))(v15, enum case for CGPathFillRule.winding(_:), v18);
    sub_BB2D0();

    return (*(v12 + 8))(v13, v14);
  }

  return result;
}

void *sub_88E3C(uint64_t a1, uint64_t a2)
{
  v9 = *(a2 + 64);
  *v7 = *(a2 + 64);
  v10 = *(&v9 + 1);
  sub_57A0(&v10, &v6, &qword_FB4B8, &unk_C24F0);
  sub_2E50(&qword_FA208, &qword_C0480);
  result = sub_BABD0();
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v9;
  sub_BABE0();
  sub_C5E8(&v9, &qword_FA208, &qword_C0480);
  *v7 = v9;
  sub_BABD0();
  v4 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if ((*&v7[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7[0] <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v7[0] >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v4 >= v7[0])
  {
    sub_88298();
  }

  v5 = sub_8806C();
  *v7 = *(a2 + 48);
  *&v6 = v5;
  sub_2E50(&qword_FB4C0, &qword_C2500);
  return sub_BABE0();
}

uint64_t type metadata accessor for AudioHistogramConfig(uint64_t a1)
{
  result = qword_FB0B8;
  if (!qword_FB0B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_890CC()
{
  type metadata accessor for AudioHistogramConfig(0);
  v0 = swift_allocObject();
  sub_87840();
  return v0;
}

uint64_t sub_89120(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v7 = type metadata accessor for AudioHistogramConfig(0);
  v8 = sub_8A428(&qword_FB070, type metadata accessor for AudioHistogramConfig, &protocol conformance descriptor for AudioHistogramConfig);

  return a4(a1, a2, a3 & 1, v7, v8);
}

__n128 AXLTAudioHistogramView.body.getter@<Q0>(uint64_t a4@<X8>)
{
  type metadata accessor for AudioHistogramConfig(0);
  sub_8A428(&qword_FB070, type metadata accessor for AudioHistogramConfig, &protocol conformance descriptor for AudioHistogramConfig);
  sub_B9C90();
  sub_89DF8(v7);
  v5 = v7[3];
  *(a4 + 32) = v7[2];
  *(a4 + 48) = v5;
  *(a4 + 64) = v7[4];
  result = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = result;
  return result;
}

__n128 sub_89284@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for AudioHistogramConfig(0);
  sub_8A428(&qword_FB070, type metadata accessor for AudioHistogramConfig, &protocol conformance descriptor for AudioHistogramConfig);
  sub_B9C90();
  sub_89DF8(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

double AXLTAudioHistogramViewGenerator.height.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_B9B10();

  return v1;
}

uint64_t AXLTAudioHistogramViewGenerator.height.setter(double a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

uint64_t (*AXLTAudioHistogramViewGenerator.height.modify(void *a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_config;
  a1[2] = v1;
  a1[3] = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_B9B10();

  *a1 = a1[1];
  return sub_89618;
}

uint64_t sub_89618(uint64_t *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v2;

  return sub_B9B20();
}

uint64_t AXLTAudioHistogramViewGenerator.histogram.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_B9B10();

  return v1;
}

uint64_t AXLTAudioHistogramViewGenerator.histogram.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_B9B20();
}

uint64_t (*AXLTAudioHistogramViewGenerator.histogram.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_config;
  a1[2] = v1;
  a1[3] = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_B9B10();

  *a1 = a1[1];
  return sub_899B0;
}

uint64_t sub_899B0(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  if (a2)
  {

    sub_B9B20();
  }

  else
  {

    return sub_B9B20();
  }
}

id AXLTAudioHistogramViewGenerator.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_config;
  type metadata accessor for AudioHistogramConfig(0);
  v3 = swift_allocObject();
  sub_87840();
  *&v1[v2] = v3;

  sub_89DF8(v9);
  v4 = &v1[OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView];
  v5 = v9[3];
  *(v4 + 2) = v9[2];
  *(v4 + 3) = v5;
  *(v4 + 4) = v9[4];
  v6 = v9[1];
  *v4 = v9[0];
  *(v4 + 1) = v6;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AXLTAudioHistogramViewGenerator();
  return objc_msgSendSuper2(&v8, "init");
}

UIViewController __swiftcall AXLTAudioHistogramViewGenerator.viewController()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 16);
  v2 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 48);
  v9 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 32);
  v10 = v2;
  v3 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 48);
  v11 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 64);
  v4 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView);
  v8[1] = v4;
  v7[7] = v9;
  v7[8] = v3;
  v7[9] = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService31AXLTAudioHistogramViewGenerator_audioHistogramView + 64);
  v7[5] = v8[0];
  v7[6] = v1;
  v5 = objc_allocWithZone(sub_2E50(&qword_FB088, &qword_C22A8));
  sub_89F50(v8, v7);
  return sub_BA370();
}

id AXLTAudioHistogramViewGenerator.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AXLTAudioHistogramViewGenerator();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_89DF8@<X0>(uint64_t *a2@<X8>)
{
  sub_2E50(&qword_FB050, &qword_C2248);
  sub_BABC0();
  sub_BABC0();
  sub_BABC0();
  sub_BABC0();
  type metadata accessor for AudioHistogramConfig(0);
  sub_8A428(&qword_FB070, type metadata accessor for AudioHistogramConfig, &protocol conformance descriptor for AudioHistogramConfig);
  result = sub_B9DC0();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v5;
  a2[5] = v6;
  a2[6] = v5;
  a2[7] = v6;
  a2[8] = v5;
  a2[9] = v6;
  return result;
}

void sub_89FAC(uint64_t a1)
{
  sub_8A130(319, &qword_FB0C8, &type metadata for Double);
  if (v1 <= 0x3F)
  {
    sub_8A130(319, &qword_FB0D0, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_8A130(319, &qword_FB0D8, &type metadata for Color);
      if (v3 <= 0x3F)
      {
        sub_8A17C(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_8A130(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_B9B30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_8A17C(uint64_t a1)
{
  if (!qword_FB0E0)
  {
    sub_5520(&qword_FB050, &qword_C2248);
    v1 = sub_B9B30();
    if (!v2)
    {
      atomic_store(v1, &qword_FB0E0);
    }
  }
}

uint64_t sub_8A1EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_8A234(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_8A28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_FB4A0;
  if (!qword_FB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB4A0);
  }

  return result;
}

uint64_t sub_8A364()
{

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_8A3DC()
{
  result = qword_FB4D0;
  if (!qword_FB4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_FB4D0);
  }

  return result;
}

uint64_t sub_8A428(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_8A494()
{
  result = qword_FB4E0;
  if (!qword_FB4E0)
  {
    sub_5520(&qword_FB4B0, &qword_C24E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB4E0);
  }

  return result;
}

uint64_t sub_8A504(uint64_t a1)
{
  v1 = sub_BA320();
  v9 = 1;
  sub_8A764(__src);
  memcpy(__dst, __src, 0x121uLL);
  memcpy(v11, __src, 0x121uLL);
  sub_57A0(__dst, v7, &qword_FB4F8, &qword_C2648);
  sub_C5E8(v11, &qword_FB4F8, &qword_C2648);
  memcpy(&v8[7], __dst, 0x121uLL);
  v7[0] = v1;
  v7[1] = 0;
  LOBYTE(v7[2]) = v9;
  memcpy(&v7[2] + 1, v8, 0x128uLL);
  sub_BAD80();
  v2 = sub_2E50(&qword_FB500, &qword_C2650);
  sub_2E50(&qword_FB508, &qword_C2658);
  sub_2E50(&qword_FB510, &qword_C2660);
  v3 = sub_D150(&qword_FB518, &qword_FB500, &qword_C2650, &protocol conformance descriptor for VStack<A>);
  v4 = sub_B9F50();
  v5 = sub_8D2BC(&qword_F8E40, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  __src[0] = v2;
  __src[1] = v4;
  __src[2] = v3;
  __src[3] = v5;
  swift_getOpaqueTypeConformance2();
  sub_8C44C();
  sub_BAA20();
  memcpy(__src, v7, 0x139uLL);
  return sub_C5E8(__src, &qword_FB500, &qword_C2650);
}

uint64_t sub_8A764@<X0>(uint64_t a1@<X8>)
{
  sub_BABC0();
  v33 = v68;
  v32 = *(&v68 + 1);
  sub_BADE0();
  sub_B9CF0();
  v34 = v44;
  v30 = v48;
  v31 = v46;
  [objc_allocWithZone(UIColor) initWithWhite:0.2 alpha:1.0];
  v27 = sub_BAB40();
  KeyPath = swift_getKeyPath();
  LOBYTE(v68) = v45;
  v28 = v45;
  v29 = v47;
  LOBYTE(v63) = v47;
  v26 = sub_BA320();
  LOBYTE(v35) = 1;
  sub_8ABAC(&v68);
  v55 = *&v69[80];
  v56 = *&v69[96];
  v51 = *&v69[16];
  v52 = *&v69[32];
  v53 = *&v69[48];
  v54 = *&v69[64];
  v49 = v68;
  v50 = *v69;
  v58[5] = *&v69[64];
  v58[6] = *&v69[80];
  v58[7] = *&v69[96];
  v58[8] = *&v69[112];
  v58[1] = *v69;
  v58[2] = *&v69[16];
  v58[3] = *&v69[32];
  v58[4] = *&v69[48];
  v57 = *&v69[112];
  v58[0] = v68;
  sub_57A0(&v49, &v63, &qword_FB550, &qword_C26B0);
  sub_C5E8(v58, &qword_FB550, &qword_C26B0);
  *(&v43[5] + 7) = v54;
  *(&v43[6] + 7) = v55;
  *(&v43[7] + 7) = v56;
  *(&v43[8] + 7) = v57;
  *(&v43[1] + 7) = v50;
  *(&v43[2] + 7) = v51;
  *(&v43[3] + 7) = v52;
  *(&v43[4] + 7) = v53;
  *(v43 + 7) = v49;
  v3 = sub_BA660();
  sub_B9B90();
  *&v59 = v44;
  BYTE8(v59) = v45;
  *&v60 = v46;
  BYTE8(v60) = v47;
  v61 = v48;
  v4 = *(&v48 + 1);
  *&v62 = KeyPath;
  *(&v62 + 1) = v27;
  v63 = v26;
  v64[0] = 1;
  *&v64[17] = v43[1];
  *&v64[1] = v43[0];
  v5 = v43[4];
  *&v64[81] = v43[5];
  v6 = v43[3];
  *&v64[65] = v43[4];
  v7 = v43[2];
  *&v64[49] = v43[3];
  v8 = v43[0];
  v9 = v43[1];
  *&v64[33] = v43[2];
  *&v64[144] = *(&v43[8] + 15);
  v10 = v43[7];
  *&v64[129] = v43[8];
  v11 = v43[6];
  *&v64[113] = v43[7];
  v12 = v43[5];
  *&v64[97] = v43[6];
  v64[152] = v3;
  *&v65 = v13;
  *(&v65 + 1) = v14;
  *&v66 = v15;
  *(&v66 + 1) = v16;
  v17 = v60;
  *(a1 + 16) = v59;
  *(a1 + 32) = v17;
  v18 = v62;
  *(a1 + 48) = v61;
  *(a1 + 64) = v18;
  v19 = *v64;
  *(a1 + 80) = v63;
  *(a1 + 96) = v19;
  v20 = *&v64[64];
  *(a1 + 144) = *&v64[48];
  *(a1 + 160) = v20;
  v21 = *&v64[32];
  *(a1 + 112) = *&v64[16];
  *(a1 + 128) = v21;
  v22 = *&v64[128];
  *(a1 + 208) = *&v64[112];
  *(a1 + 224) = v22;
  v23 = *&v64[96];
  *(a1 + 176) = *&v64[80];
  *(a1 + 192) = v23;
  v24 = v66;
  *(a1 + 256) = v65;
  *(a1 + 272) = v24;
  *(a1 + 240) = *&v64[144];
  *&v69[97] = v11;
  *&v69[113] = v10;
  *v70 = v43[8];
  *&v69[33] = v7;
  *&v69[49] = v6;
  v67 = 0;
  *a1 = v33;
  *(a1 + 8) = v32;
  *(a1 + 288) = 0;
  v68 = v26;
  v69[0] = 1;
  *&v70[15] = *(&v43[8] + 15);
  *&v69[65] = v5;
  *&v69[81] = v12;
  *&v69[1] = v8;
  *&v69[17] = v9;
  v71 = v3;
  v72 = v13;
  v73 = v14;
  v74 = v15;
  v75 = v16;
  v76 = 0;

  sub_57A0(&v59, &v35, &qword_FB558, &qword_C26B8);
  sub_57A0(&v63, &v35, &qword_FB560, &qword_C26C0);
  sub_C5E8(&v68, &qword_FB560, &qword_C26C0);
  v35 = v34;
  v36 = v28;
  v37 = v31;
  v38 = v29;
  v39 = v30;
  v40 = v4;
  v41 = KeyPath;
  v42 = v27;
  sub_C5E8(&v35, &qword_FB558, &qword_C26B8);
}

uint64_t sub_8ABAC@<X0>(uint64_t a1@<X8>)
{
  sub_BABC0();
  v13 = v22;
  v2 = v23;
  sub_BADE0();
  sub_B9CF0();
  v3 = sub_BAAE0();
  v4 = sub_BA640();
  LOBYTE(v22) = v15;
  sub_BABC0();
  v5 = v23;
  *&v19 = v14;
  BYTE8(v19) = v15;
  *&v20 = v16;
  BYTE8(v20) = v17;
  *v21 = v18;
  *&v21[16] = v3;
  v21[24] = v4;
  *a1 = 0;
  v6 = v20;
  *(a1 + 40) = v19;
  __asm { FMOV            V0.2D, #16.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 56) = v6;
  *(a1 + 72) = *v21;
  *(a1 + 81) = *&v21[9];
  *(a1 + 104) = 1;
  *(a1 + 112) = _Q0;
  *(a1 + 128) = v15;
  *(a1 + 136) = v5;

  sub_57A0(&v19, &v22, &qword_FB568, &qword_C26C8);
  v22 = v14;
  LOBYTE(v23) = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v27 = v3;
  v28 = v4;
  sub_C5E8(&v22, &qword_FB568, &qword_C26C8);
}

uint64_t sub_8AD58(const void *a1)
{
  v2 = sub_B9F50();
  __chkstk_darwin(v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v14, a1, sizeof(v14));
  v5 = *(v2 + 20);
  v6 = enum case for RoundedCornerStyle.continuous(_:);
  v7 = sub_BA270();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  sub_2E50(&qword_FB500, &qword_C2650);
  sub_D150(&qword_FB518, &qword_FB500, &qword_C2650, &protocol conformance descriptor for VStack<A>);
  sub_8D2BC(&qword_F8E40, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  sub_BA810();
  return sub_8C5E8(v4);
}

uint64_t sub_8AEF8@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(__dst, __src, 0x139uLL);
  v4 = &a2[*(sub_2E50(&qword_FB530, &qword_C2668) + 36)];
  sub_BAD50();
  v5 = sub_BA640();
  v4[*(sub_2E50(&qword_FB540, &unk_C2670) + 36)] = v5;
  memcpy(a2, __src, 0x139uLL);
  v6 = &a2[*(sub_2E50(&qword_FB510, &qword_C2660) + 36)];
  v7 = *(sub_B9F50() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = sub_BA270();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  *&v6[*(sub_2E50(&qword_FAF30, &qword_C1D50) + 36)] = 256;
  return sub_57A0(__dst, &v16, &qword_FB500, &qword_C2650);
}

uint64_t sub_8B054@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v59 = sub_BA2D0();
  v64 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BA5E0();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2E50(&qword_FB570, &qword_C2760);
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v52 = sub_2E50(&qword_FB578, &qword_C2768);
  __chkstk_darwin(v52);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v55 = &v48 - v12;
  v54 = sub_2E50(&qword_FB580, &qword_C2770);
  __chkstk_darwin(v54);
  v60 = &v48 - v13;
  v62 = sub_2E50(&qword_FB588, &qword_C2778);
  __chkstk_darwin(v62);
  v61 = &v48 - v14;
  v15 = sub_BA1C0();
  LOBYTE(v65) = 1;
  sub_8BA74(v2, v81);
  v76 = v81[8];
  v77 = v81[9];
  v78 = v81[10];
  v79 = v81[11];
  v72 = v81[4];
  v73 = v81[5];
  v74 = v81[6];
  v75 = v81[7];
  v68 = v81[0];
  v69 = v81[1];
  v70 = v81[2];
  v71 = v81[3];
  v80[8] = v81[8];
  v80[9] = v81[9];
  v80[10] = v81[10];
  v80[11] = v81[11];
  v80[4] = v81[4];
  v80[5] = v81[5];
  v80[6] = v81[6];
  v80[7] = v81[7];
  v80[0] = v81[0];
  v80[1] = v81[1];
  v80[2] = v81[2];
  v80[3] = v81[3];
  sub_57A0(&v68, v66, &qword_FB590, &qword_C2780);
  sub_C5E8(v80, &qword_FB590, &qword_C2780);
  *&v67[135] = v76;
  *&v67[151] = v77;
  *&v67[167] = v78;
  *&v67[183] = v79;
  *&v67[71] = v72;
  *&v67[87] = v73;
  *&v67[103] = v74;
  *&v67[119] = v75;
  *&v67[7] = v68;
  *&v67[23] = v69;
  *&v67[39] = v70;
  *&v67[55] = v71;
  v16 = v65;
  v17 = sub_BAAF0();
  KeyPath = swift_getKeyPath();
  v19 = sub_BA690();
  sub_B9B90();
  *(&v66[20] + 1) = *&v67[144];
  *(&v66[22] + 1) = *&v67[160];
  *(&v66[24] + 1) = *&v67[176];
  *(&v66[12] + 1) = *&v67[80];
  *(&v66[14] + 1) = *&v67[96];
  *(&v66[16] + 1) = *&v67[112];
  *(&v66[18] + 1) = *&v67[128];
  *(&v66[4] + 1) = *&v67[16];
  *(&v66[6] + 1) = *&v67[32];
  *(&v66[8] + 1) = *&v67[48];
  *(&v66[10] + 1) = *&v67[64];
  LOBYTE(v81[0]) = 0;
  v66[0] = v15;
  v66[1] = 0;
  LOBYTE(v66[2]) = v16;
  *(&v66[2] + 1) = *v67;
  v66[26] = *&v67[191];
  v66[27] = KeyPath;
  v66[28] = v17;
  LOBYTE(v66[29]) = v19;
  v66[30] = v20;
  v66[31] = v21;
  v66[32] = v22;
  v66[33] = v23;
  LOWORD(v66[34]) = 0;
  sub_BA5D0();
  v24 = sub_2E50(&qword_FB598, &qword_C2788);
  v25 = sub_8D0F4();
  v53 = v9;
  sub_BA950();
  (*(v49 + 8))(v6, v50);
  memcpy(v81, v66, 0x112uLL);
  sub_C5E8(v81, &qword_FB598, &qword_C2788);
  v26 = *(v2 + 32);
  v66[0] = *(v2 + 24);
  v66[1] = v26;
  sub_2E50(&qword_F96C8, &qword_BF3C0);
  sub_BABD0();
  if (v65 == 1)
  {
    sub_2E50(&qword_F8E08, &unk_BE730);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_C0020;
    sub_BA280();
    v66[0] = v27;
  }

  else
  {
    v66[0] = _swiftEmptyArrayStorage;
  }

  sub_8D2BC(&qword_F8E10, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_2E50(&qword_F8E18, &unk_C0B30);
  sub_D150(&qword_F8E20, &qword_F8E18, &unk_C0B30, &protocol conformance descriptor for [A]);
  v29 = v58;
  v28 = v59;
  sub_BB510();
  v66[0] = v24;
  v66[1] = v25;
  swift_getOpaqueTypeConformance2();
  v30 = v51;
  v31 = v57;
  v32 = v53;
  sub_BA990();
  (*(v64 + 8))(v29, v28);
  (*(v56 + 8))(v32, v31);
  v33 = v55;
  sub_B9E90();
  sub_C5E8(v30, &qword_FB578, &qword_C2768);
  v34 = swift_allocObject();
  v35 = *(v2 + 16);
  *(v34 + 16) = *v2;
  *(v34 + 32) = v35;
  *(v34 + 48) = *(v2 + 32);
  v36 = v60;
  sub_66B8(v33, v60, &qword_FB578, &qword_C2768);
  v37 = (v36 + *(v54 + 36));
  *v37 = sub_8D33C;
  v37[1] = v34;
  v37[2] = 0;
  v37[3] = 0;
  v38 = objc_opt_self();
  v66[0] = v26;
  sub_57A0(v66, &v65, &qword_FB5D8, &unk_C32F0);
  v39 = [v38 defaultCenter];
  if (qword_F82B0 != -1)
  {
    swift_once();
  }

  v41 = v61;
  v40 = v62;
  sub_BB400();

  v42 = swift_allocObject();
  v43 = *(v2 + 16);
  *(v42 + 16) = *v2;
  *(v42 + 32) = v43;
  *(v42 + 48) = *(v2 + 32);
  sub_66B8(v36, v41, &qword_FB580, &qword_C2770);
  v44 = (v41 + *(v40 + 56));
  *v44 = sub_8D344;
  v44[1] = v42;
  v45 = swift_allocObject();
  v46 = *(v2 + 16);
  *(v45 + 16) = *v2;
  *(v45 + 32) = v46;
  *(v45 + 48) = *(v2 + 32);
  sub_57A0(v66, &v65, &qword_FB5D8, &unk_C32F0);
  sub_57A0(v66, &v65, &qword_FB5D8, &unk_C32F0);
  sub_D150(&qword_FB5E0, &qword_FB588, &qword_C2778, &protocol conformance descriptor for SubscriptionView<A, B>);
  sub_BA860();

  return sub_C5E8(v41, &qword_FB588, &qword_C2778);
}

uint64_t sub_8BA74@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_BAB70();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[0] = *(a1 + 24);
  sub_2E50(&qword_F96C8, &qword_BF3C0);
  sub_BABD0();
  if (v64 == 1)
  {
    sub_BAB60();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v8 = sub_BABA0();

    (*(v5 + 8))(v7, v4);
    sub_BADE0();
    sub_B9CF0();
    LOBYTE(v54[0]) = 1;
    *&v41[6] = v61;
    *&v41[22] = v62;
    *&v41[38] = v63;
    v9 = sub_BA670();
    sub_B9B90();
    *(&v54[1] + 2) = *v41;
    LOBYTE(v58[0]) = 0;
    v54[0] = v8;
    LOWORD(v54[1]) = 1;
    *(&v54[2] + 2) = *&v41[16];
    *(&v54[3] + 2) = *&v41[32];
    *&v54[4] = *&v41[46];
    BYTE8(v54[4]) = v9;
    *&v55 = v10;
    *(&v55 + 1) = v11;
    *&v56 = v12;
    *(&v56 + 1) = v13;
    LOBYTE(v57) = 0;
    v14 = 0;
  }

  else
  {
    v15 = sub_BAAE0();
    sub_BADE0();
    sub_B9CF0();
    *&v60[6] = v61;
    *&v60[22] = v62;
    *&v60[38] = v63;
    v16 = sub_BA670();
    sub_B9B90();
    *(v54 + 10) = *v60;
    v14 = 1;
    LOBYTE(v58[0]) = 1;
    *&v54[0] = v15;
    WORD4(v54[0]) = 256;
    *(&v54[1] + 10) = *&v60[16];
    *(&v54[2] + 10) = *&v60[32];
    *(&v54[3] + 1) = *&v60[46];
    LOBYTE(v54[4]) = v16;
    *(&v54[4] + 1) = v17;
    *&v55 = v18;
    *(&v55 + 1) = v19;
    *&v56 = v20;
    BYTE8(v56) = 0;
  }

  BYTE1(v57) = v14;
  sub_2E50(&qword_FB5E8, &qword_C27A8);
  sub_2E50(&qword_FB5F0, &unk_C27B0);
  sub_8D354(&qword_FB5F8, &qword_FB5E8, &qword_C27A8, sub_3B098);
  sub_8D3D8();
  sub_BA430();
  v21 = *a1;
  *&v54[0] = sub_8D894(*a1);
  *(&v54[0] + 1) = v22;
  sub_B320(*&v54[0], v22, v23);
  v24 = sub_BA800();
  v26 = v25;
  v40 = v27;
  v29 = v28;
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  *&v58[0] = AXLTSettingsManager.buttonScaledHeight.getter();
  sub_BABC0();
  v30 = v54[0];
  v48 = v68;
  v49 = v69;
  v50 = v70;
  v51 = v71;
  v44 = v64;
  v45 = v65;
  v46 = v66;
  v47 = v67;
  v52[2] = v66;
  v52[3] = v67;
  v52[0] = v64;
  v52[1] = v65;
  v53 = v71;
  v52[5] = v69;
  v52[6] = v70;
  v52[4] = v68;
  v54[2] = v66;
  v54[3] = v67;
  v54[0] = v64;
  v54[1] = v65;
  LOWORD(v57) = v71;
  v55 = v69;
  v56 = v70;
  v54[4] = v68;
  v31 = v40 & 1;
  v43 = v40 & 1;
  v42 = 1;
  v32 = v64;
  v33 = v65;
  v34 = v67;
  *(a2 + 32) = v66;
  *(a2 + 48) = v34;
  *a2 = v32;
  *(a2 + 16) = v33;
  v35 = v54[4];
  v36 = v56;
  v37 = v57;
  *(a2 + 80) = v55;
  *(a2 + 96) = v36;
  *(a2 + 64) = v35;
  *(a2 + 112) = v37;
  *(a2 + 120) = v24;
  *(a2 + 128) = v26;
  *(a2 + 136) = v31;
  *(a2 + 144) = v29;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  *(a2 + 168) = v21;
  *(a2 + 176) = v30;
  sub_57A0(v52, v58, &qword_FB628, &qword_C27C8);
  sub_21808(v24, v26, v31);

  sub_C004(v24, v26, v31);

  v58[4] = v48;
  v58[5] = v49;
  v58[6] = v50;
  v59 = v51;
  v58[0] = v44;
  v58[1] = v45;
  v58[2] = v46;
  v58[3] = v47;
  return sub_C5E8(v58, &qword_FB628, &qword_C27C8);
}

uint64_t sub_8BFF4(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_F82A0 != -1)
    {
      swift_once();
    }

    if (qword_F82A8 != -1)
    {
      swift_once();
    }

    if (byte_FA364 == 1)
    {
LABEL_13:
      sub_B98B0();
      sub_B98B0();
    }
  }

  else
  {
    if (qword_F82A0 != -1)
    {
      swift_once();
    }

    if (qword_F82A8 != -1)
    {
      swift_once();
    }

    if (byte_FA364 == 1)
    {
      goto LABEL_13;
    }
  }

  sub_2E50(&qword_F96C8, &qword_BF3C0);
  return sub_BABE0();
}

uint64_t sub_8C1C0(uint64_t a1, uint64_t a2)
{
  result = sub_B8FE0();
  if (result)
  {
    v4 = result;
    v8 = sub_B9840();
    sub_BB550();
    if (*(v4 + 16) && (v5 = sub_7D058(v9), (v6 & 1) != 0))
    {
      sub_3ADF4(*(v4 + 56) + 32 * v5, v10);
      sub_3ADA0(v9);

      result = swift_dynamicCast();
      if (result)
      {
        v7 = v8;
        if (*a2)
        {
          v7 = v8 ^ 1;
        }

        v9[0] = *(a2 + 24);
        v10[0] = v7;
        sub_2E50(&qword_F96C8, &qword_BF3C0);
        return sub_BABE0();
      }
    }

    else
    {

      return sub_3ADA0(v9);
    }
  }

  return result;
}

uint64_t sub_8C2CC(_BYTE *a1)
{
  sub_2E50(&qword_F96C8, &qword_BF3C0);
  sub_BABD0();
  if ((v3 & 1) == 0)
  {
    if (qword_F8320 != -1)
    {
      swift_once();
    }

    sub_6643C((*a1 & 1) == 0, 1);
  }

  return _AXSLiveTranscriptionSetPaused();
}

unint64_t sub_8C3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_FB4F0;
  if (!qword_FB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB4F0);
  }

  return result;
}

unint64_t sub_8C44C()
{
  result = qword_FB520;
  if (!qword_FB520)
  {
    sub_5520(&qword_FB510, &qword_C2660);
    sub_8C504();
    sub_D150(&qword_FB548, &qword_FAF30, &qword_C1D50, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB520);
  }

  return result;
}

unint64_t sub_8C504()
{
  result = qword_FB528;
  if (!qword_FB528)
  {
    sub_5520(&qword_FB530, &qword_C2668);
    sub_D150(&qword_FB518, &qword_FB500, &qword_C2650, &protocol conformance descriptor for VStack<A>);
    sub_D150(&qword_FB538, &qword_FB540, &unk_C2670, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB528);
  }

  return result;
}

uint64_t sub_8C5E8(uint64_t a1)
{
  v2 = sub_B9F50();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8C644@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = sub_2E50(&qword_FB630, &qword_C2860);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = sub_BA250();
  v24[1] = v10;
  v24[2] = v9;
  v11 = a1 & 1;
  v30 = a1 & 1;
  v31 = a2;
  sub_2E50(&qword_FB638, &qword_C2868);
  sub_BABF0();
  v26 = a1 & 1;
  v27 = a2;
  v12 = sub_2E50(&qword_FB640, &unk_C2870);
  sub_8D6E8(v12, v13, v14);
  sub_8D73C();
  v15 = v25;
  sub_BAC60();
  LOBYTE(v28) = v11;
  v29 = a2;
  sub_BABD0();
  LOBYTE(v28) = v30;
  v16 = sub_D150(&qword_FB660, &qword_FB630, &qword_C2860, &protocol conformance descriptor for Picker<A, B, C>);
  sub_8C3DC(v16, v17, v18);
  sub_BAA00();
  (*(v6 + 8))(v8, v5);
  v19 = [objc_opt_self() defaultCenter];
  if (qword_F82B0 != -1)
  {
    swift_once();
  }

  v20 = sub_2E50(&qword_FB668, &unk_C2880);
  sub_BB400();

  v21 = swift_allocObject();
  *(v21 + 16) = v11;
  *(v21 + 24) = a2;
  v22 = (v15 + *(v20 + 56));
  *v22 = sub_8D87C;
  v22[1] = v21;
}

uint64_t sub_8C964(char a1, uint64_t a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1 & 1;
  *(v4 + 24) = a2;

  sub_2E50(&qword_FB670, &qword_C28A8);
  sub_2E50(&qword_FB678, &qword_C28B0);
  v5 = sub_D150(&qword_FB680, &qword_FB670, &qword_C28A8, &protocol conformance descriptor for [A]);
  sub_8D6E8(v5, v6, v7);
  sub_5520(&qword_F83D8, &unk_BCF40);
  sub_D150(&qword_FB658, &qword_F83D8, &unk_BCF40, &protocol conformance descriptor for HStack<A>);
  swift_getOpaqueTypeConformance2();
  return sub_BACD0();
}

double sub_8CB24@<D0>(char *a1@<X0>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = sub_BA1C0();
  v20 = 1;
  sub_8CBD4(v5, v14);
  v7 = v14[0];
  result = v15;
  v9 = v17;
  v10 = v18;
  v11 = v19;
  v12 = v16;
  v13 = v20;
  *a4 = v6;
  *(a4 + 8) = 0;
  *(a4 + 16) = v13;
  *(a4 + 24) = v7;
  *(a4 + 32) = result;
  *(a4 + 40) = v12;
  *(a4 + 56) = v9;
  *(a4 + 64) = v10;
  *(a4 + 72) = v11;
  *(a4 + 80) = v5;
  *(a4 + 81) = 1;
  return result;
}

uint64_t sub_8CBD4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  AXLTSettingsManager.buttonScaledHeight.getter();
  sub_BABC0();
  v4 = v14;
  v5 = a1 & 1;
  v15 = sub_8D894(v5);
  sub_B320(v15, v6, v7);
  v8 = sub_BA800();
  v10 = v9;
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v16;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  LOBYTE(v5) = v11 & 1;
  *(a2 + 40) = v11 & 1;
  *(a2 + 48) = v12;

  sub_21808(v8, v10, v5);

  sub_C004(v8, v10, v5);
}

uint64_t sub_8CD08(uint64_t a1, char *a2)
{
  v2 = *a2;
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  sub_6643C(v2 ^ 1, 1);

  return _AXSLiveTranscriptionSetPaused();
}

uint64_t sub_8CD84(uint64_t a1, char a2, uint64_t a3)
{
  result = sub_B8FE0();
  if (result)
  {
    v6 = result;
    v9 = sub_B9840();
    sub_BB550();
    if (*(v6 + 16) && (v7 = sub_7D058(v10), (v8 & 1) != 0))
    {
      sub_3ADF4(*(v6 + 56) + 32 * v7, v12);
      sub_3ADA0(v10);

      result = swift_dynamicCast();
      if (result)
      {
        v10[0] = a2 & 1;
        v11 = a3;
        v12[0] = (v9 & 1) == 0;
        sub_2E50(&qword_FB638, &qword_C2868);
        return sub_BABE0();
      }
    }

    else
    {

      return sub_3ADA0(v10);
    }
  }

  return result;
}

uint64_t sub_8CEB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_8CF0C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_8CF78()
{
  sub_5520(&qword_FB500, &qword_C2650);
  sub_5520(&qword_FB508, &qword_C2658);
  sub_5520(&qword_FB510, &qword_C2660);
  sub_D150(&qword_FB518, &qword_FB500, &qword_C2650, &protocol conformance descriptor for VStack<A>);
  sub_B9F50();
  sub_8D2BC(&qword_F8E40, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  swift_getOpaqueTypeConformance2();
  sub_8C44C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_8D0F4()
{
  result = qword_FB5A0;
  if (!qword_FB5A0)
  {
    sub_5520(&qword_FB598, &qword_C2788);
    sub_8D354(&qword_FB5A8, &qword_FB5B0, &qword_C2790, sub_8D1D8);
    sub_D150(&qword_F9C30, &qword_F9C38, &unk_C0B20, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB5A0);
  }

  return result;
}

unint64_t sub_8D1D8()
{
  result = qword_FB5B8;
  if (!qword_FB5B8)
  {
    sub_5520(&qword_FB5C0, &qword_C2798);
    sub_D150(&qword_FB5C8, &qword_FB5D0, &qword_C27A0, &protocol conformance descriptor for HStack<A>);
    sub_D150(&qword_F8DF0, &qword_F8DF8, &unk_BFE30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB5B8);
  }

  return result;
}

uint64_t sub_8D2BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_8D304()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_8D354(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5520(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_8D3D8()
{
  result = qword_FB600;
  if (!qword_FB600)
  {
    sub_5520(&qword_FB5F0, &unk_C27B0);
    sub_8D464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB600);
  }

  return result;
}

unint64_t sub_8D464()
{
  result = qword_FB608;
  if (!qword_FB608)
  {
    sub_5520(&qword_FB610, &unk_C2E40);
    sub_D150(&qword_FB618, &qword_FB620, &qword_C27C0, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB608);
  }

  return result;
}

uint64_t sub_8D51C()
{
  if (qword_F82A0 != -1)
  {
    swift_once();
  }

  if (qword_F82A8 != -1)
  {
    swift_once();
  }

  if (byte_FA364 == 1)
  {
    sub_B98B0();
    sub_B98B0();
  }

  sub_BABC0();
  return v1;
}

uint64_t sub_8D628()
{
  sub_5520(&qword_FB588, &qword_C2778);
  sub_D150(&qword_FB5E0, &qword_FB588, &qword_C2778, &protocol conformance descriptor for SubscriptionView<A, B>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_8D6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_FB648;
  if (!qword_FB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB648);
  }

  return result;
}

unint64_t sub_8D73C()
{
  result = qword_FB650;
  if (!qword_FB650)
  {
    sub_5520(&qword_FB640, &unk_C2870);
    sub_5520(&qword_F83D8, &unk_BCF40);
    v3 = sub_D150(&qword_FB658, &qword_F83D8, &unk_BCF40, &protocol conformance descriptor for HStack<A>);
    sub_8D6E8(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB650);
  }

  return result;
}

uint64_t sub_8D844()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8D894(uint64_t a1)
{
  v1 = 0xD000000000000016;
  if (a1)
  {
    if (AXDeviceIsPad())
    {
      v7 = "LiveCaptionsiPhoneAudio";
      v8 = 0xD000000000000015;
    }

    else
    {
      v7 = "istogram";
      v8 = 0xD000000000000017;
    }

    v9 = v7 | 0x8000000000000000;
    return LiveSpeechCaptionsLocString(_:)(*&v8)._countAndFlagsBits;
  }

  else
  {
    if (qword_F8220 != -1)
    {
      swift_once();
    }

    if (qword_F8228)
    {
      v2 = qword_F8228;
      v3 = sub_BAFA0();
      v4 = sub_BAFA0();
      v5 = sub_BAFA0();
      v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

      v1 = sub_BAFD0();
    }
  }

  return v1;
}

void *sub_8DA5C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2E50(&qword_FA6E0, &qword_BE3B0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for LiveCaptionsRootView(0);
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  *(a1 + v4) = swift_getKeyPath();
  sub_2E50(&qword_F8AF0, &qword_BE468);
  swift_storeEnumTagMultiPayload();
  v5 = a1 + v2[7];
  *v5 = swift_getKeyPath();
  *(v5 + 4) = 0;
  v6 = a1 + v2[8];
  sub_BABC0();
  *v6 = v39;
  *(v6 + 1) = *(&v39 + 1);
  v7 = a1 + v2[9];
  sub_BABC0();
  *v7 = v39;
  *(v7 + 1) = *(&v39 + 1);
  v8 = (a1 + v2[10]);
  sub_BABC0();
  *v8 = v39;
  v9 = a1 + v2[11];
  type metadata accessor for CGSize(0);
  sub_BABC0();
  *v9 = v39;
  *(v9 + 2) = v40;
  v10 = a1 + v2[12];
  sub_BABC0();
  *v10 = v39;
  *(v10 + 2) = v40;
  v11 = a1 + v2[13];
  sub_BABC0();
  *v11 = v39;
  *(v11 + 2) = v40;
  v12 = a1 + v2[14];
  sub_BABC0();
  *v12 = v39;
  *(v12 + 2) = v40;
  v13 = a1 + v2[15];
  sub_BABC0();
  *v13 = v39;
  *(v13 + 2) = v40;
  v14 = (a1 + v2[16]);
  sub_BABC0();
  *v14 = v39;
  v15 = a1 + v2[17];
  type metadata accessor for CGRect(0);
  sub_BABC0();
  *v15 = v39;
  *(v15 + 1) = v40;
  *(v15 + 4) = v41;
  v16 = (a1 + v2[18]);
  sub_BABC0();
  *v16 = v39;
  v17 = (a1 + v2[19]);
  sub_BABC0();
  *v17 = v39;
  v18 = v2[20];
  sub_2E50(&qword_F9020, &qword_BEA00);
  sub_BABC0();
  *(a1 + v18) = v39;
  v19 = a1 + v2[21];
  sub_BABC0();
  *v19 = v39;
  *(v19 + 1) = *(&v39 + 1);
  v20 = v2[22];
  sub_BABC0();
  *(a1 + v20) = v39;
  v21 = v2[23];
  *(a1 + v21) = [objc_allocWithZone(LCSystemUtilities) init];
  v22 = a1 + v2[24];
  sub_2E50(&qword_FB728, &qword_C2A50);
  sub_BABC0();
  *v22 = v39;
  *(v22 + 1) = *(&v39 + 1);
  v23 = a1 + v2[25];
  LOBYTE(v38) = 0;
  sub_BABC0();
  *v23 = v39;
  *(v23 + 1) = *(&v39 + 1);
  v24 = (a1 + v2[26]);
  [objc_allocWithZone(type metadata accessor for ForeheadWindow(0)) init];
  sub_A00C0(&qword_FB740, type metadata accessor for ForeheadWindow, &unk_C0808);
  *v24 = sub_B9DC0();
  v24[1] = v25;
  v26 = (a1 + v2[27]);
  if (qword_F82A0 != -1)
  {
    swift_once();
  }

  v27 = static AXLTCaptionsProvider.shared;
  type metadata accessor for AXLTCaptionsProvider(0);
  sub_A00C0(&unk_FB750, type metadata accessor for AXLTCaptionsProvider, &protocol conformance descriptor for AXLTCaptionsProvider);
  v28 = v27;
  *v26 = sub_B9DC0();
  v26[1] = v29;
  v30 = v2[28];
  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v31 = static LiveSpeechCaptionsViewsCoordinator.shared;
  *(a1 + v30) = static LiveSpeechCaptionsViewsCoordinator.shared;
  v32 = v2[29];
  v33 = qword_F8320;
  v34 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = a1 + v32;
  v36 = AXLTSettingsManager.contentCategory.getter();
  sub_BB410();

  result = sub_BABC0();
  *v35 = v39;
  *(v35 + 1) = *(&v39 + 1);
  return result;
}

unint64_t sub_8E098@<X0>(Swift::Int *a1@<X0>, LiveSpeechUIService::WindowState_optional *a2@<X8>)
{
  result = _s19LiveSpeechUIService11WindowStateO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

unint64_t *sub_8E0C4@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

NSString sub_8E0DC()
{
  result = sub_BAFA0();
  qword_100D78 = result;
  return result;
}

uint64_t sub_8E114(uint64_t a1)
{
  result = AXDeviceIsPad();
  v2 = 300.0;
  if (result)
  {
    v2 = 600.0;
  }

  qword_100D80 = *&v2;
  return result;
}

uint64_t sub_8E154()
{
  result = AXDeviceHasJindo();
  v1 = 0.0;
  if (result)
  {
    v1 = 10.0;
  }

  qword_100D88 = *&v1;
  return result;
}

Swift::Int IconDirection.hashValue.getter(unsigned __int8 a1)
{
  sub_BB790();
  sub_BB7A0(a1);
  return sub_BB7D0();
}

uint64_t sub_8E204()
{
  v1 = sub_BA180();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for LiveCaptionsRootView(0) + 28);
  result = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 9) != 1)
  {
    v8 = *v5;

    sub_BB310();
    v9 = sub_BA610();
    sub_B99F0();

    sub_BA170();
    swift_getAtKeyPath();
    sub_E538(v8, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return result;
}

uint64_t sub_8E370()
{
  v0 = sub_BA500();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2E50(&qword_FA6D8, &unk_C08D0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = sub_2E50(&qword_F8530, &unk_C3C70);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  if (!AXDeviceIsPhone())
  {
    return AXDeviceIsPad();
  }

  sub_B5A10(v15);
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 48);
  sub_57A0(v15, v6, &qword_F8530, &unk_C3C70);
  sub_57A0(v12, &v6[v16], &qword_F8530, &unk_C3C70);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_C5E8(v12, &qword_F8530, &unk_C3C70);
    sub_C5E8(v15, &qword_F8530, &unk_C3C70);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_C5E8(v6, &qword_F8530, &unk_C3C70);
      return 1;
    }

    goto LABEL_7;
  }

  sub_57A0(v6, v9, &qword_F8530, &unk_C3C70);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_C5E8(v12, &qword_F8530, &unk_C3C70);
    sub_C5E8(v15, &qword_F8530, &unk_C3C70);
    (*(v1 + 8))(v9, v0);
LABEL_7:
    sub_C5E8(v6, &qword_FA6D8, &unk_C08D0);
    return AXDeviceIsPad();
  }

  (*(v1 + 32))(v3, &v6[v16], v0);
  sub_A00C0(&qword_FA6E8, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v19 = sub_BAF90();
  v20 = *(v1 + 8);
  v20(v3, v0);
  sub_C5E8(v12, &qword_F8530, &unk_C3C70);
  sub_C5E8(v15, &qword_F8530, &unk_C3C70);
  v20(v9, v0);
  sub_C5E8(v6, &qword_F8530, &unk_C3C70);
  if (v19)
  {
    return 1;
  }

  return AXDeviceIsPad();
}

uint64_t sub_8E7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v158 = a1;
  v159 = a2;
  v148 = a3;
  v144 = sub_B9C10();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_2E50(&qword_FB830, &qword_C2B90);
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v117 - v5;
  v134 = sub_BA440();
  __chkstk_darwin(v134);
  v133 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_B9D40();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v150 = v7;
  v151 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_2E50(&qword_FB838, &qword_C2B98);
  __chkstk_darwin(v153);
  v156 = (&v117 - v8);
  v139 = sub_2E50(&qword_FB840, &qword_C2BA0);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = &v117 - v9;
  v141 = sub_2E50(&qword_FB848, &unk_C2BA8);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v155 = &v117 - v10;
  v11 = type metadata accessor for LiveCaptionsRootView(0);
  v12 = *(v11 - 8);
  v122 = (v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BA480();
  __chkstk_darwin(v15);
  v149 = sub_B9C60();
  v16 = *(v149 - 8);
  __chkstk_darwin(v149);
  v18 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_2E50(&qword_F9BB8, &qword_C2B70);
  v157 = *(v152 - 8);
  __chkstk_darwin(v152);
  v20 = &v117 - v19;
  v137 = sub_2E50(&qword_F9BC0, &qword_BFD60);
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v154 = (&v117 - v21);
  sub_BA570();
  sub_B9C20();
  v118 = v14;
  sub_A2438(a2, v14, type metadata accessor for LiveCaptionsRootView);
  v22 = *(v12 + 80);
  v23 = (v22 + 16) & ~v22;
  v24 = v23 + v13;
  v25 = v22 | 7;
  v161 = v24;
  v26 = swift_allocObject();
  sub_A2628(v14, v26 + v23, type metadata accessor for LiveCaptionsRootView);
  v27 = sub_A00C0(&qword_F9BF8, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  v28 = sub_A00C0(&qword_F9C00, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v29 = v149;
  v126 = v27;
  v125 = v28;
  sub_BAD00();

  v30 = *(v16 + 8);
  v128 = v18;
  v130 = v16 + 8;
  v124 = v30;
  v30(v18, v29);
  v31 = v159;
  v32 = v118;
  sub_A2438(v159, v118, type metadata accessor for LiveCaptionsRootView);
  v33 = swift_allocObject();
  v34 = v32;
  sub_A2628(v32, v33 + v23, type metadata accessor for LiveCaptionsRootView);
  v35 = sub_D150(&qword_F9C08, &qword_F9BB8, &qword_C2B70, &protocol conformance descriptor for _ChangedGesture<A>);
  v36 = v154;
  v37 = v152;
  v127 = v35;
  sub_BACF0();

  v38 = *(v157 + 8);
  v129 = v20;
  v157 += 8;
  v123 = v38;
  v38(v20, v37);
  v39 = sub_BADA0();
  v40 = v156;
  *v156 = v39;
  v40[1] = v41;
  v42 = sub_2E50(&qword_FB850, &qword_C2BB8);
  sub_917FC(v31, v158, v36, v40 + *(v42 + 44));
  sub_A2438(v31, v32, type metadata accessor for LiveCaptionsRootView);
  v160 = v25;
  v43 = swift_allocObject();
  v162 = v23;
  v44 = v43 + v23;
  v45 = v34;
  sub_A2628(v34, v44, type metadata accessor for LiveCaptionsRootView);
  v46 = sub_BADE0();
  v48 = v47;
  v49 = (v40 + *(sub_2E50(&qword_FB858, &qword_C2BC0) + 36));
  *v49 = sub_B58F8;
  v49[1] = 0;
  v49[2] = v46;
  v49[3] = v48;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_A03A4;
  *(v50 + 24) = v43;
  v51 = (v40 + *(sub_2E50(&qword_FB860, &qword_C2BC8) + 36));
  *v51 = sub_A0434;
  v51[1] = v50;
  v52 = v31 + v122[19];
  v53 = *(v52 + 32);
  v54 = *(v52 + 16);
  v167 = *v52;
  v168 = v54;
  v169 = v53;
  sub_2E50(&qword_FB868, &qword_C2BD0);
  sub_BABD0();
  v55 = v31;
  v56 = sub_93118(v163, v164, v165, v166);
  v58 = v57;
  v59 = v40;
  v60 = (v40 + *(sub_2E50(&qword_FB870, &qword_C2BD8) + 36));
  *v60 = v56;
  *(v60 + 1) = v58;
  v61 = objc_opt_self();
  v62 = [v61 defaultCenter];
  if (qword_F82D0 != -1)
  {
    swift_once();
  }

  v63 = sub_2E50(&qword_FB878, &qword_C2BE0);
  sub_BB400();

  sub_A2438(v55, v34, type metadata accessor for LiveCaptionsRootView);
  v64 = swift_allocObject();
  sub_A2628(v34, v64 + v162, type metadata accessor for LiveCaptionsRootView);
  v65 = (v40 + *(v63 + 56));
  *v65 = sub_A0464;
  v65[1] = v64;
  v66 = [v61 defaultCenter];
  if (qword_F8268 != -1)
  {
    swift_once();
  }

  v67 = sub_2E50(&qword_FB880, &qword_C2BE8);
  sub_BB400();

  sub_A2438(v55, v34, type metadata accessor for LiveCaptionsRootView);
  v68 = swift_allocObject();
  sub_A2628(v34, v68 + v162, type metadata accessor for LiveCaptionsRootView);
  v69 = (v40 + *(v67 + 56));
  *v69 = sub_A047C;
  v69[1] = v68;
  v70 = [v61 defaultCenter];
  if (qword_F8260 != -1)
  {
    swift_once();
  }

  v71 = sub_2E50(&qword_FB888, &qword_C2BF0);
  sub_BB400();

  v72 = v34;
  sub_A2438(v55, v34, type metadata accessor for LiveCaptionsRootView);
  v73 = swift_allocObject();
  v74 = v162;
  sub_A2628(v45, v73 + v162, type metadata accessor for LiveCaptionsRootView);
  v75 = (v59 + *(v71 + 56));
  *v75 = sub_A0494;
  v75[1] = v73;
  sub_A2438(v55, v45, type metadata accessor for LiveCaptionsRootView);
  v76 = v131;
  v77 = *(v131 + 16);
  v121 = v131 + 16;
  v122 = v77;
  v78 = v151;
  v79 = v132;
  (v77)(v151, v158, v132);
  v120 = *(v76 + 80);
  v80 = (v161 + v120) & ~v120;
  v119 = v80;
  v81 = swift_allocObject();
  sub_A2628(v72, v81 + v74, type metadata accessor for LiveCaptionsRootView);
  v82 = v156;
  v131 = *(v76 + 32);
  (v131)(v81 + v80, v78, v79);
  v83 = (v82 + *(sub_2E50(&qword_FB890, &qword_C2BF8) + 36));
  v84 = v82;
  *v83 = sub_A04B0;
  v83[1] = v81;
  v83[2] = 0;
  v83[3] = 0;
  v85 = v159;
  sub_A2438(v159, v72, type metadata accessor for LiveCaptionsRootView);
  v86 = swift_allocObject();
  v87 = v162;
  sub_A2628(v72, v86 + v162, type metadata accessor for LiveCaptionsRootView);
  v88 = (v84 + *(v153 + 36));
  *v88 = 0;
  v88[1] = 0;
  v88[2] = sub_A057C;
  v88[3] = v86;
  v89 = v158;
  sub_B9D20();
  *&v167 = v90;
  *(&v167 + 1) = v91;
  sub_A2438(v85, v72, type metadata accessor for LiveCaptionsRootView);
  v92 = v151;
  (v122)(v151, v89, v79);
  v93 = v119;
  v94 = swift_allocObject();
  sub_A2628(v72, v94 + v87, type metadata accessor for LiveCaptionsRootView);
  (v131)(v94 + v93, v92, v79);
  type metadata accessor for CGSize(0);
  v151 = v95;
  v150 = sub_A0B20();
  v158 = sub_A00C0(&qword_FB8B0, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  v96 = v136;
  v97 = v153;
  v98 = v156;
  sub_BAA00();

  sub_C5E8(v98, &qword_FB838, &qword_C2B98);
  sub_BA550();
  v99 = v128;
  sub_B9C20();
  sub_A2438(v159, v72, type metadata accessor for LiveCaptionsRootView);
  v100 = swift_allocObject();
  v101 = v72;
  sub_A2628(v72, v100 + v162, type metadata accessor for LiveCaptionsRootView);
  v102 = v129;
  v103 = v149;
  sub_BAD00();

  v124(v99, v103);
  sub_B9C80();
  *&v167 = v97;
  *(&v167 + 1) = v151;
  *&v168 = v150;
  *(&v168 + 1) = v158;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105 = v139;
  v106 = v152;
  v107 = v127;
  sub_BA940();
  v123(v102, v106);
  (*(v138 + 8))(v96, v105);
  v108 = v142;
  sub_B9C00();
  sub_A2438(v159, v101, type metadata accessor for LiveCaptionsRootView);
  v109 = swift_allocObject();
  sub_A2628(v101, v109 + v162, type metadata accessor for LiveCaptionsRootView);
  v110 = swift_allocObject();
  *(v110 + 16) = sub_A0D00;
  *(v110 + 24) = v109;
  v111 = v145;
  v112 = v144;
  sub_BACF0();

  (*(v143 + 8))(v108, v112);
  sub_B9C80();
  *&v167 = v105;
  *(&v167 + 1) = v106;
  *&v168 = OpaqueTypeConformance2;
  *(&v168 + 1) = v107;
  swift_getOpaqueTypeConformance2();
  sub_D150(&qword_FB8B8, &qword_FB830, &qword_C2B90, &protocol conformance descriptor for _EndedGesture<A>);
  v113 = v141;
  v114 = v147;
  v115 = v155;
  sub_BA940();
  (*(v146 + 8))(v111, v114);
  (*(v140 + 8))(v115, v113);
  return (*(v135 + 8))(v154, v137);
}

void sub_8FB44(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB868, &qword_C2BD0);
  sub_BABD0();
  sub_8FBCC(a1, v3, v4, v5, v6);
}

void sub_8FBCC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v169 = a1;
  v10 = sub_B9C50();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v164 = COERCE_DOUBLE(sub_B9A10());
  v14 = *(v164 - 8);
  __chkstk_darwin(v164);
  v16 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v150 - v18;
  v167 = type metadata accessor for LiveCaptionsRootView(0);
  v20 = v167[8];
  v168 = v5;
  v21 = (*&v5 + v20);
  v22 = *v21;
  v23 = v21[1];
  LODWORD(v165) = v22;
  LOBYTE(v175) = v22;
  v166 = v23;
  v176 = v23;
  v24 = sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  if (LOBYTE(v172.width) != 3)
  {
    v163 = v14;
    v162 = v24;
    v25 = v167;
    v26 = v168;
    v27 = (*&v168 + v167[14]);
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    v175 = *v27;
    v176 = v29;
    v177 = v30;
    *&v31 = COERCE_DOUBLE(sub_2E50(&qword_F8AE0, &unk_C3C60));
    sub_BABD0();
    v32 = 0.0;
    v179.width = 0.0;
    v179.height = 0.0;
    if (CGSizeEqualToSize(v172, v179))
    {
      v155 = v30;
      v160 = a2;
      v161 = a3;
      v33 = (*&v26 + v25[11]);
      v34 = v33[1];
      v35 = v33[2];
      v153 = *v33;
      v175 = v153;
      v176 = v34;
      v152 = v34;
      v177 = v35;
      sub_BABD0();
      height = v172.height;
      width = v172.width;
      v38 = (*&v26 + v25[25]);
      v39 = *v38;
      v40 = v38[1];
      LOBYTE(v175) = v39;
      v176 = v40;
      sub_2E50(&qword_FB820, &qword_C2B80);
      sub_BABD0();
      v41 = 0.0;
      if (LOBYTE(v172.width) != 1)
      {
        LOBYTE(v175) = LOBYTE(v165);
        v176 = v166;
        sub_BABD0();
        v32 = sub_9E5DC(LOBYTE(v172.width), v160, v161, a4, a5);
        v41 = v42;
      }

      if (qword_F8258 != -1)
      {
        swift_once();
      }

      v43 = static LiveSpeechCaptionsViewsCoordinator.shared;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      v157 = a5;
      v156 = a4;
      v154 = v29;
      if (v32 == 0.0 && v41 == 0.0)
      {
        v32 = *(v43 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
        v41 = *(v43 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
      }

      v44 = v175;
      v45 = v176;
      v159 = v177;
      v158 = v178;
      sub_B95F0();
      v46 = sub_B9A00();
      v47 = sub_BB2F0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *&v172.width = swift_slowAlloc();
        *v48 = 136315394;
        v175 = width;
        v176 = height;
        type metadata accessor for CGSize(0);
        v49 = sub_BAFF0();
        v151 = v35;
        v51 = sub_7A1D8(v49, v50, &v172);

        *(v48 + 4) = v51;
        v25 = v167;
        *(v48 + 12) = 2080;
        v175 = v32;
        v176 = v41;
        v52 = sub_BAFF0();
        v54 = sub_7A1D8(v52, v53, &v172);
        v26 = v168;

        *(v48 + 14) = v54;
        v35 = v151;
        _os_log_impl(&dword_0, v46, v47, "Calculate safeOffset offset: %s size: %s", v48, 0x16u);
        swift_arrayDestroy();
      }

      (*(v163 + 8))(v19, v164);
      v168 = v28;
      v55 = v155;
      if (qword_F8250 != -1)
      {
        swift_once();
      }

      v56 = *&qword_100C08;
      if (AXDeviceIsPad() && *(v43 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
      {
        v56 = 0.0;
      }

      HasJindo = AXDeviceHasJindo();
      v181.origin.x = v44;
      v181.origin.y = v45;
      v181.size.width = v159;
      v181.size.height = v158;
      if (height < v45 + CGRectGetHeight(v181) + -37.3333333 && HasJindo)
      {
        v182.origin.x = v44;
        v182.origin.y = v45;
        v182.size.width = v159;
        v182.size.height = v158;
        height = v45 + CGRectGetHeight(v182) + -37.3333333;
      }

      v58 = v156;
      v59 = v156 - v32 + v56;
      if (v59 >= width)
      {
        v59 = width;
      }

      v60 = v32;
      v61 = v160;
      v62 = v161;
      v63 = v157;
      v64 = sub_3C824(v59, height, v60, v41, v160, v161, v156);
      if (v63 - v41 + -4.0 < v65)
      {
        v65 = v63 - v41 + -4.0;
      }

      if (v64 < -v56)
      {
        v64 = -v56;
      }

      v175 = v153;
      v176 = v152;
      v177 = v35;
      if (v65 < 0.0)
      {
        v65 = 0.0;
      }

      v172.width = v64;
      v172.height = v65;
      sub_BABE0();
      LOBYTE(v175) = LOBYTE(v165);
      v176 = v166;
      sub_BABD0();
      if (LOBYTE(v172.width) == 2)
      {
        sub_9B2B4(v61, v62, v58, v63);
        v67 = v66;
        v68 = (*&v26 + v25[15]);
        v70 = v68[1];
        v71 = v68[2];
        v175 = *v68;
        v69 = v175;
        v176 = v70;
        v177 = v71;

        sub_BABD0();
        v172.width = v69;
        v172.height = v70;
        v173 = v71;
        v170 = v174;
        v171 = v67;
        sub_BABE0();
      }

      sub_B9C30();
      v175 = v168;
      v176 = v154;
      v177 = v55;
      v172.width = v72;
      v172.height = v73;
      sub_BABE0();
    }

    else
    {
      v175 = v28;
      v176 = v29;
      v177 = v30;
      sub_BABD0();
      v74 = v172.width;
      sub_B9C30();
      v76 = *&v16;
      if (vabdd_f64(v74, v75) >= 2.0 || (v175 = v28, v176 = v29, v177 = v30, sub_BABD0(), v77 = v28, v78 = v172.height, sub_B9C30(), v80 = vabdd_f64(v78, v79), v28 = v77, v80 >= 2.0))
      {
        v81 = sub_BB2F0();
        if (qword_F8278 != -1)
        {
          swift_once();
        }

        v82 = qword_100C30;
        (*(v11 + 16))(v13, v169, v10);
        v83 = a4;
        if (os_log_type_enabled(v82, v81))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v159 = *&v31;
          v86 = v85;
          *&v172.width = v85;
          *v84 = 136315138;
          v158 = v76;
          LODWORD(v161) = v81;
          sub_B9C30();
          v175 = v87;
          v176 = v88;
          type metadata accessor for CGSize(0);
          v89 = sub_BAFF0();
          v91 = v90;
          (*(v11 + 8))(v13, v10);
          v92 = sub_7A1D8(v89, v91, &v172);

          *(v84 + 4) = v92;
          v76 = v158;
          _os_log_impl(&dword_0, v82, LOBYTE(v161), "drag translation: %s", v84, 0xCu);
          sub_28020(v86);
          *&v31 = v159;
        }

        else
        {
          (*(v11 + 8))(v13, v10);
        }

        sub_B9C30();
        v175 = v28;
        v176 = v29;
        v177 = v30;
        v172.width = v93;
        v172.height = v94;
        sub_BABE0();
        sub_B9C40();
        v96 = v95;
        sub_B9C30();
        v98 = v97;
        sub_B9C40();
        v100 = v99;
        sub_B9C30();
        v102 = vabdd_f64(v96, v98);
        v103 = v163;
        if (qword_F8350 != -1)
        {
          v149 = v101;
          swift_once();
          v101 = v149;
        }

        if (v102 <= *&qword_100D80 && fabs(v100 - v101) <= *&qword_100D80)
        {
          v104 = v83;
          v105 = v167;
          v106 = v168;
          v107 = (*&v168 + v167[13]);
          v108 = *v107;
          v109 = v107[1];
          v110 = *(v107 + 2);
          v175 = *v107;
          v176 = v109;
          v177 = *&v110;
          sub_BABD0();
          v111 = 0.0;
          v180.width = 0.0;
          v180.height = 0.0;
          if (CGSizeEqualToSize(v172, v180))
          {
            v160 = a2;
            v161 = a3;
            v112 = (*&v106 + v105[11]);
            v113 = v112[1];
            v114 = v112[2];
            v154 = *v112;
            v175 = v154;
            v176 = v113;
            v153 = v113;
            v177 = v114;
            sub_BABD0();
            v155 = v172.height;
            v115 = v172.width;
            v116 = (*&v106 + v105[25]);
            v117 = *v116;
            v118 = v116[1];
            LOBYTE(v175) = v117;
            v176 = v118;
            sub_2E50(&qword_FB820, &qword_C2B80);
            sub_BABD0();
            v119 = 0.0;
            if (LOBYTE(v172.width) != 1)
            {
              LOBYTE(v175) = LOBYTE(v165);
              v176 = v166;
              sub_BABD0();
              v111 = sub_9E5DC(LOBYTE(v172.width), v160, v161, v104, a5);
              v119 = v120;
            }

            v159 = *&v31;
            if (qword_F8258 != -1)
            {
              swift_once();
            }

            v121 = static LiveSpeechCaptionsViewsCoordinator.shared;
            swift_getKeyPath();
            swift_getKeyPath();
            sub_B9B10();

            v157 = a5;
            if (v111 == 0.0)
            {
              v122 = v164;
              if (v119 == 0.0)
              {
                v111 = *(v121 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
                v119 = *(v121 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
              }
            }

            else
            {
              v122 = v164;
            }

            v123 = v176;
            v167 = *&v175;
            v166 = v177;
            v165 = v178;
            sub_B95F0();
            v124 = sub_B9A00();
            v125 = sub_BB2F0();
            if (os_log_type_enabled(v124, v125))
            {
              v126 = swift_slowAlloc();
              v127 = swift_slowAlloc();
              v162 = v121;
              *&v172.width = v127;
              *v126 = 136315394;
              v175 = v115;
              v176 = v155;
              type metadata accessor for CGSize(0);
              v128 = sub_BAFF0();
              v164 = v110;
              v158 = v76;
              v130 = v114;
              v131 = sub_7A1D8(v128, v129, &v172);

              *(v126 + 4) = v131;
              v114 = v130;
              *(v126 + 12) = 2080;
              v175 = v111;
              v176 = v119;
              v132 = sub_BAFF0();
              v134 = sub_7A1D8(v132, v133, &v172);

              *(v126 + 14) = v134;
              _os_log_impl(&dword_0, v124, v125, "Calculate safeOffset offset: %s size: %s", v126, 0x16u);
              swift_arrayDestroy();

              v110 = v164;
              (*(v103 + 8))(COERCE_CGFLOAT(*&v158), v122);
              v121 = v162;
            }

            else
            {

              (*(v103 + 8))(COERCE_DOUBLE(*&v76), v122);
            }

            v106 = v168;
            v168 = v109;
            if (qword_F8250 != -1)
            {
              swift_once();
            }

            v135 = v108;
            v136 = *&qword_100C08;
            if (AXDeviceIsPad() && *(v121 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
            {
              v136 = 0.0;
            }

            v137 = AXDeviceHasJindo();
            *&v183.origin.x = v167;
            v183.origin.y = v123;
            v183.size.width = v166;
            v183.size.height = v165;
            v138 = CGRectGetHeight(v183);
            v139 = v155;
            if (v155 < v123 + v138 + -37.3333333 && v137)
            {
              *&v184.origin.x = v167;
              v184.origin.y = v123;
              v184.size.width = v166;
              v184.size.height = v165;
              v139 = v123 + CGRectGetHeight(v184) + -37.3333333;
            }

            v140 = v104 - v111 + v136;
            if (v140 >= v115)
            {
              v140 = v115;
            }

            v141 = v160;
            a3 = v161;
            a5 = v157;
            v142 = sub_3C824(v140, v139, v111, v119, v160, v161, v104);
            v144 = a5 - v119;
            a2 = v141;
            v145 = v144 + -4.0;
            if (v145 < v143)
            {
              v143 = v145;
            }

            if (v142 < -v136)
            {
              v142 = -v136;
            }

            v146 = v154;
            v147 = v153;
            v175 = v154;
            v176 = v153;
            v177 = v114;
            if (v143 < 0.0)
            {
              v143 = 0.0;
            }

            v172.width = v142;
            v172.height = v143;
            sub_BABE0();
            v175 = v146;
            v176 = v147;
            v177 = v114;
            sub_BABD0();
            v175 = v135;
            v176 = v168;
            v177 = *&v110;
            sub_BABE0();
          }

          sub_BAE20();
          sub_BAE10();

          sub_BAE00();

          __chkstk_darwin(v148);
          *(&v150 - 6) = v169;
          *(&v150 - 5) = v106;
          *(&v150 - 4) = a2;
          *(&v150 - 3) = a3;
          *(&v150 - 2) = v104;
          *(&v150 - 1) = a5;
          sub_B9D80();
        }
      }
    }
  }
}

void sub_90CF4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_F8AE0, &unk_C3C60);
  sub_BABE0();
  sub_BABE0();
  sub_2E50(&qword_FB868, &qword_C2BD0);
  sub_BABD0();
  sub_90DFC(a1, 0.0, 0.0, v3, v4);
  sub_915B8();
}

void sub_90DFC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v71 = a3;
  v9 = sub_B9E70();
  v74 = *(v9 - 8);
  v75 = v9;
  __chkstk_darwin(v9);
  v73 = &v69[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v72 = &v69[-v12];
  v13 = sub_B9C50();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v69[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_B9C40();
  v18 = v17;
  sub_B9C30();
  v20 = v19;
  sub_B9C40();
  v22 = v21;
  sub_B9C30();
  v24 = v23;
  v25 = sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  v26 = v18 - v20;
  v27 = v22 - v24;
  v28 = qword_100C30;
  (*(v14 + 16))(v16, a1, v13);
  if (os_log_type_enabled(v28, v25))
  {
    v29 = swift_slowAlloc();
    v77[0] = swift_slowAlloc();
    *v29 = 136315394;
    v78 = v26;
    v79 = v22 - v24;
    type metadata accessor for CGSize(0);
    v30 = sub_BAFF0();
    v32 = sub_7A1D8(v30, v31, v77);
    v70 = v25;
    v33 = v32;

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    sub_B9C30();
    v78 = v34;
    v79 = v35;
    v36 = sub_BAFF0();
    v38 = v37;
    (*(v14 + 8))(v16, v13);
    v39 = sub_7A1D8(v36, v38, v77);

    *(v29 + 14) = v39;
    _os_log_impl(&dword_0, v28, v70, "handleFastSwipe velocity: %s, translation: %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    (*(v14 + 8))(v16, v13);
  }

  sub_B9C30();
  v41 = fabs(v40);
  sub_B9C30();
  v43 = fabs(v42);
  v44 = fabs(v26);
  v45 = v76;
  if (qword_F8350 != -1)
  {
    swift_once();
  }

  v46 = *&qword_100D80 < v44;
  v47 = *&qword_100D80 < fabs(v27);
  v48 = v43 < 50.0 && v47;
  sub_B9C30();
  v50 = fabs(v49) > 100.0;
  v51 = v41 < 50.0 && v46;
  v52 = v41 < 50.0 && v50;
  v53 = sub_BB2F0();
  if (os_log_type_enabled(v28, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 67110144;
    *(v54 + 4) = v41 < 50.0;
    *(v54 + 8) = 1024;
    *(v54 + 10) = v43 < 50.0;
    *(v54 + 14) = 1024;
    *(v54 + 16) = v51;
    *(v54 + 20) = 1024;
    *(v54 + 22) = v48;
    *(v54 + 26) = 1024;
    *(v54 + 28) = v52;
    _os_log_impl(&dword_0, v28, v53, "H: %{BOOL}d, V: %{BOOL}d fast H: %{BOOL}d, fast V: %{BOOL}d, long H: %{BOOL}d", v54, 0x20u);
  }

  if (v51)
  {
    if (sub_9A8B8())
    {
      return;
    }
  }

  else
  {
    if (!AXDeviceIsPhone() || (sub_8E370() & 1) != 0 || !v52)
    {
      v62 = (v45 + *(type metadata accessor for LiveCaptionsRootView(0) + 32));
      v63 = *v62;
      v64 = v62[1];
      LOBYTE(v78) = *v62;
      v79 = v64;
      sub_2E50(&qword_FB8C0, &qword_C2C08);
      sub_BABD0();
      if (LOBYTE(v77[0]) != 3)
      {
        LOBYTE(v78) = v63;
        v79 = v64;
        sub_BABD0();
        if (LOBYTE(v77[0]) != 2 && v48)
        {
          LOBYTE(v78) = v63;
          v79 = v64;
          sub_BABD0();
          v65 = v71;
          sub_9E5DC(v77[0], a2, v71, a4, a5);
          v67 = __chkstk_darwin(v66).n128_u64[0];
          *&v69[-64] = v45;
          v69[-56] = v27 < 0.0;
          *&v69[-48] = a2;
          *&v69[-40] = v65;
          *&v69[-32] = a4;
          *&v69[-24] = a5;
          *&v69[-16] = v67;
          *&v69[-8] = v68;
          sub_BAE30();
          sub_B9D80();
        }
      }

      goto LABEL_33;
    }

    if (sub_9A8B8())
    {
      return;
    }

    sub_B9C30();
  }

  v55 = type metadata accessor for LiveCaptionsRootView(0);
  v56 = v72;
  sub_B5C08(v72);
  v58 = v73;
  v57 = v74;
  v59 = v75;
  (*(v74 + 104))(v73, enum case for LayoutDirection.rightToLeft(_:), v75);
  sub_B9E60();
  v60 = *(v57 + 8);
  v60(v58, v59);
  v61 = (v60)(v56, v59);
  if (__chkstk_darwin(v61).n128_f64[0] <= 0.0)
  {
    v69[-32] = 1;
  }

  else
  {
    v69[-32] = 2;
  }

  *&v69[-24] = v45;
  *&v69[-16] = a4;
  *&v69[-8] = a5;
  sub_BAE30();
  sub_B9D80();

  sub_915B8();
  LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_pip);
  [*(v45 + *(v55 + 92)) idleSleepTimerDisabled:{0, sub_9D610()}];
LABEL_33:
  sub_915B8();
}

void sub_915B8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  v1 = sub_BAFA0();
  [v0 setInteger:LOBYTE(v6.width) forKey:v1];

  sub_2E50(&qword_F8AE0, &unk_C3C60);
  sub_BABD0();
  v2 = NSStringFromCGSize(v6);
  if (!v2)
  {
    sub_BAFD0();
    v2 = sub_BAFA0();
  }

  v3 = sub_BAFA0();
  [v0 setObject:v2 forKey:v3];

  sub_BABD0();
  v4 = NSStringFromCGSize(v6);
  if (!v4)
  {
    sub_BAFD0();
    v4 = sub_BAFA0();
  }

  v5 = sub_BAFA0();
  [v0 setObject:v4 forKey:v5];
}

uint64_t sub_917FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t a1)@<X2>, uint64_t a4@<X8>)
{
  v42 = a2;
  v43 = a3;
  v45 = a4;
  v44 = sub_2E50(&qword_FB8C8, &qword_C2C60);
  v5 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v40 - v6;
  v7 = sub_2E50(&qword_FB8D0, &qword_C2C68);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v13 = sub_2E50(&qword_FB8D8, &qword_C2C70);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  v19 = type metadata accessor for LiveCaptionsRootView(0);
  v20 = (a1 + *(v19 + 68));
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[2];
  v24 = v20[3];
  v25 = v20[4];
  v50 = *v20;
  v51 = v22;
  v52 = v23;
  v53 = v24;
  v54 = v25;
  sub_2E50(&qword_FB868, &qword_C2BD0);
  sub_BABD0();
  v26 = v46;
  v27 = v47;
  v28 = v48;
  v29 = v49;
  sub_B9D10();
  sub_91BEC(v43, v18, v26, v27, v28, v29, v30, v31);
  v32 = (a1 + *(v19 + 100));
  v33 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v50) = v33;
  v51 = v34;
  sub_2E50(&qword_FB820, &qword_C2B80);
  sub_BABD0();
  if (LOBYTE(v46) == 1)
  {
    v50 = v21;
    v51 = v22;
    v52 = v23;
    v53 = v24;
    v54 = v25;
    sub_BABD0();
    v35 = v41;
    sub_929EC(v41, v46, v47, v48, v49);
    sub_66B8(v35, v12, &qword_FB8C8, &qword_C2C60);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  (*(v5 + 56))(v12, v36, 1, v44);
  sub_57A0(v18, v15, &qword_FB8D8, &qword_C2C70);
  sub_57A0(v12, v9, &qword_FB8D0, &qword_C2C68);
  v37 = v45;
  sub_57A0(v15, v45, &qword_FB8D8, &qword_C2C70);
  v38 = sub_2E50(&qword_FB8E0, &qword_C2C78);
  sub_57A0(v9, v37 + *(v38 + 48), &qword_FB8D0, &qword_C2C68);
  sub_C5E8(v12, &qword_FB8D0, &qword_C2C68);
  sub_C5E8(v18, &qword_FB8D8, &qword_C2C70);
  sub_C5E8(v9, &qword_FB8D0, &qword_C2C68);
  return sub_C5E8(v15, &qword_FB8D8, &qword_C2C70);
}

uint64_t sub_91BEC@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a9@<D6>)
{
  v11 = v10;
  v105 = a2;
  v19 = type metadata accessor for LiveCaptionsRootView(0);
  v99 = *(v19 - 8);
  __chkstk_darwin(v19);
  v100 = v20;
  v104 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_BAA80();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2E50(&qword_FB918, &qword_C2C98);
  __chkstk_darwin(v22);
  v24 = (&v82 - v23);
  v83 = sub_2E50(&qword_FB920, &qword_C2CA0) - 8;
  __chkstk_darwin(v83);
  v82 = &v82 - v25;
  v86 = sub_2E50(&qword_FB928, &qword_C2CA8);
  __chkstk_darwin(v86);
  v85 = &v82 - v26;
  v84 = sub_2E50(&qword_FB930, &qword_C2CB0);
  __chkstk_darwin(v84);
  v87 = &v82 - v27;
  v89 = sub_2E50(&qword_FB938, &qword_C2CB8);
  __chkstk_darwin(v89);
  v88 = &v82 - v28;
  v93 = sub_2E50(&qword_FB940, &qword_C2CC0);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v82 - v29;
  v90 = sub_2E50(&qword_FB948, &qword_C2CC8);
  __chkstk_darwin(v90);
  v94 = &v82 - v30;
  v106 = sub_2E50(&qword_FB950, &qword_C2CD0);
  __chkstk_darwin(v106);
  v98 = &v82 - v31;
  v103 = sub_2E50(&qword_FB958, &qword_C2CD8);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v82 - v32;
  *v24 = sub_BADE0();
  v24[1] = v33;
  v34 = sub_2E50(&qword_FB960, &qword_C2CE0);
  sub_95E94(v11, a1, v24 + *(v34 + 44), a3, a4, a5, a6, a7, a9);
  v107 = v19;
  v35 = v11 + *(v19 + 32);
  v37 = *(v35 + 8);
  LOBYTE(v119) = *v35;
  v36 = v119;
  *(&v119 + 1) = v37;
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  sub_9E5DC(v115, a3, a4, a5, a6);
  LOBYTE(v119) = v36;
  *(&v119 + 1) = v37;
  sub_BABD0();
  sub_9E5DC(v115, a3, a4, a5, a6);
  sub_BADE0();
  sub_B9CF0();
  v38 = (v24 + *(v22 + 36));
  v39 = v120;
  *v38 = v119;
  v38[1] = v39;
  v38[2] = v121;
  sub_BAD80();
  v109 = v11;
  v110 = a3;
  v111 = a4;
  v112 = a5;
  v113 = a6;
  v108 = v11;
  sub_2E50(&qword_FB968, &qword_C2CE8);
  sub_2E50(&qword_FB970, &qword_C2CF0);
  v40 = sub_A1530();
  v41 = sub_B9F50();
  v42 = sub_A00C0(&qword_F8E40, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v115 = v22;
  v116 = v41;
  v117 = v40;
  v118 = v42;
  swift_getOpaqueTypeConformance2();
  sub_A15E8();
  v43 = v82;
  sub_BAA20();
  sub_C5E8(v24, &qword_FB918, &qword_C2C98);
  v44 = sub_99C7C();
  *(v43 + *(sub_2E50(&qword_FB998, &unk_C2D08) + 36)) = v44;
  v45 = (v43 + *(v83 + 44));
  v46 = v11;
  sub_99900(v45, a3, a4, a5, a6);
  *(v45 + *(sub_2E50(&qword_FAF30, &qword_C1D50) + 36)) = 256;
  LOBYTE(v115) = v36;
  v116 = v37;
  sub_BABD0();
  v47 = 0;
  if (v114 == 3)
  {
    v47 = sub_B9EF0();
  }

  v48 = sub_BA640();
  v49 = v85;
  sub_66B8(v43, v85, &qword_FB920, &qword_C2CA0);
  v50 = v49 + *(v86 + 36);
  *v50 = v47;
  *(v50 + 8) = v48;
  v51 = sub_BA640();
  v52 = v49;
  v53 = v87;
  sub_66B8(v52, v87, &qword_FB928, &qword_C2CA8);
  v54 = v53 + *(v84 + 36);
  *v54 = v51;
  *(v54 + 8) = 0u;
  *(v54 + 24) = 0u;
  *(v54 + 40) = 0;
  LOBYTE(v115) = v36;
  v116 = v37;
  sub_BABD0();
  if (v114)
  {
    LOBYTE(v115) = v36;
    v116 = v37;
    sub_BABD0();
    if (v114 == 1)
    {
      v55 = 5.0;
    }

    else
    {
      v55 = 0.0;
    }
  }

  else
  {
    v55 = 5.0;
  }

  (*(v96 + 104))(v95, enum case for Color.RGBColorSpace.sRGBLinear(_:), v97);
  v56 = sub_BAB30();
  v57 = v88;
  sub_66B8(v53, v88, &qword_FB930, &qword_C2CB0);
  v58 = v57 + *(v89 + 36);
  *v58 = v56;
  *(v58 + 8) = v55;
  sub_A16A0();
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  v59 = v91;
  sub_BA930();
  sub_C5E8(v57, &qword_FB938, &qword_C2CB8);
  v60 = v104;
  sub_A2438(v46, v104, type metadata accessor for LiveCaptionsRootView);
  v61 = *(v99 + 80);
  v62 = ((v61 + 16) & ~v61) + v100;
  v63 = swift_allocObject();
  sub_A2628(v60, v63 + ((v61 + 16) & ~v61), type metadata accessor for LiveCaptionsRootView);
  v64 = v94;
  (*(v92 + 32))(v94, v59, v93);
  v65 = (v64 + *(v90 + 36));
  *v65 = sub_A1A94;
  v65[1] = v63;
  v65[2] = 0;
  v65[3] = 0;
  v66 = v46;
  sub_A2438(v46, v60, type metadata accessor for LiveCaptionsRootView);
  v99 = v61;
  v67 = v62;
  v68 = swift_allocObject();
  v69 = (v61 + 16) & ~v61;
  v97 = v69;
  sub_A2628(v60, v68 + v69, type metadata accessor for LiveCaptionsRootView);
  v70 = v98;
  sub_66B8(v64, v98, &qword_FB948, &qword_C2CC8);
  v71 = (v70 + *(v106 + 36));
  *v71 = 0;
  v71[1] = 0;
  v71[2] = sub_A1AAC;
  v71[3] = v68;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  sub_A2438(v66, v60, type metadata accessor for LiveCaptionsRootView);
  v72 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  sub_A2628(v60, v73 + v69, type metadata accessor for LiveCaptionsRootView);
  v74 = (v73 + v72);
  *v74 = a3;
  v74[1] = a4;
  v74[2] = a5;
  v74[3] = a6;
  sub_2E50(&qword_FA368, &qword_C0590);
  sub_A1B44();
  sub_A1C98();
  v75 = v101;
  sub_BAA10();

  sub_C5E8(v70, &qword_FB950, &qword_C2CD0);
  swift_beginAccess();
  v76 = sub_2E50(&qword_FB8D8, &qword_C2C70);
  sub_2E50(&qword_FA700, &qword_BEA08);
  v77 = v105;
  sub_B9AE0();
  swift_endAccess();
  sub_A2438(v66, v60, type metadata accessor for LiveCaptionsRootView);
  v78 = swift_allocObject();
  sub_A2628(v60, v78 + v97, type metadata accessor for LiveCaptionsRootView);
  v79 = (v78 + v72);
  *v79 = a3;
  v79[1] = a4;
  v79[2] = a5;
  v79[3] = a6;
  result = (*(v102 + 32))(v77, v75, v103);
  v81 = (v77 + *(v76 + 56));
  *v81 = sub_A1D4C;
  v81[1] = v78;
  return result;
}

uint64_t sub_929EC@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v48 = a1;
  v10 = type metadata accessor for LiveCaptionsRootView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_B9C10();
  v14 = *(v41 - 8);
  __chkstk_darwin(v41);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2E50(&qword_FB830, &qword_C2B90);
  v44 = *(v17 - 8);
  v45 = v17;
  __chkstk_darwin(v17);
  v42 = &v39 - v18;
  v19 = sub_2E50(&qword_FB8E8, &qword_C2C80);
  v46 = *(v19 - 8);
  v47 = v19;
  __chkstk_darwin(v19);
  v43 = &v39 - v20;
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  AXLTSettingsManager.buttonScaledHeight.getter();
  v21 = v5 + *(v10 + 32);
  v22 = *v21;
  v23 = *(v21 + 8);
  LOBYTE(v49) = v22;
  v50 = v23;
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  LiveSpeechStore.SpeechContext.init(text:highlightRange:)();
  v25 = v24;
  v40 = v5;
  sub_9B970();
  sub_BADE0();
  sub_B9CF0();
  v49 = v25;
  v50 = 0x4020000000000000;
  sub_B9C00();
  sub_A2438(v5, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveCaptionsRootView);
  v26 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v39 = v26 + v12;
  v27 = swift_allocObject();
  sub_A2628(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for LiveCaptionsRootView);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_A3298;
  *(v28 + 24) = v27;
  v29 = v42;
  v30 = v41;
  sub_BACF0();

  (*(v14 + 8))(v16, v30);
  sub_B9C80();
  sub_2E50(&qword_FB8F0, &qword_C2C88);
  sub_A1370();
  sub_D150(&qword_FB8B8, &qword_FB830, &qword_C2B90, &protocol conformance descriptor for _EndedGesture<A>);
  v31 = v43;
  v32 = v45;
  sub_BA940();
  (*(v44 + 8))(v29, v32);
  sub_A2438(v40, v13, type metadata accessor for LiveCaptionsRootView);
  v33 = (v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_A2628(v13, v34 + v26, type metadata accessor for LiveCaptionsRootView);
  v35 = (v34 + v33);
  *v35 = a2;
  v35[1] = a3;
  v35[2] = a4;
  v35[3] = a5;
  v36 = v48;
  (*(v46 + 32))(v48, v31, v47);
  result = sub_2E50(&qword_FB8C8, &qword_C2C60);
  v38 = (v36 + *(result + 36));
  *v38 = sub_A14DC;
  v38[1] = v34;
  v38[2] = 0;
  v38[3] = 0;
  return result;
}

uint64_t sub_92F90(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  v10 = qword_100C30;
  if (os_log_type_enabled(qword_100C30, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    type metadata accessor for CGRect(0);
    v13 = sub_BAFF0();
    v15 = sub_7A1D8(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v10, v9, "New window frame: %s", v11, 0xCu);
    sub_28020(v12);
  }

  type metadata accessor for LiveCaptionsRootView(0);
  return LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsFrame(_:)(a2, a3, a4, a5);
}

double sub_93118(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_B9A10();
  v79 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LiveCaptionsRootView(0);
  v14 = (v4 + v13[8]);
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v80) = *v14;
  *(&v80 + 1) = v16;
  v17 = sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  v18 = 0.0;
  v19 = 0.0;
  if (LOBYTE(v83[0]) != 3)
  {
    LOBYTE(v80) = v15;
    *(&v80 + 1) = v16;
    sub_BABD0();
    if (LOBYTE(v83[0]) == 4)
    {
      v20 = v13[12];
    }

    else
    {
      v20 = v13[11];
    }

    v21 = (v4 + v20);
    v22 = v21[2];
    v80 = *v21;
    v81 = v22;
    sub_2E50(&qword_F8AE0, &unk_C3C60);
    sub_BABD0();
    v23 = *&v83[1];
    v78 = *v83;
    v24 = (v4 + v13[25]);
    v25 = *v24;
    v26 = *(v24 + 1);
    LOBYTE(v80) = v25;
    *(&v80 + 1) = v26;
    sub_2E50(&qword_FB820, &qword_C2B80);
    sub_BABD0();
    v27 = 0.0;
    if (LOBYTE(v83[0]) != 1)
    {
      LOBYTE(v80) = v15;
      *(&v80 + 1) = v16;
      sub_BABD0();
      v27 = sub_9E5DC(v83[0], a1, a2, a3, a4);
      v19 = v28;
    }

    if (qword_F8258 != -1)
    {
      swift_once();
    }

    v77 = static LiveSpeechCaptionsViewsCoordinator.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    v74 = a3;
    v73 = a2;
    v72 = a1;
    if (v27 == 0.0 && v19 == 0.0)
    {
      v27 = *(v77 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
      v19 = *(v77 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
    }

    v29 = *(&v80 + 1);
    v30 = v81;
    v75 = v82;
    v76 = *&v80;
    sub_B95F0();
    v31 = sub_B9A00();
    v32 = sub_BB2F0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v69 = v12;
      v34 = v33;
      v83[0] = swift_slowAlloc();
      *v34 = 136315394;
      *&v80 = v78;
      *(&v80 + 1) = v23;
      type metadata accessor for CGSize(0);
      v71 = v17;
      v35 = sub_BAFF0();
      v70 = v13;
      v37 = sub_7A1D8(v35, v36, v83);
      v68 = v10;
      v38 = v5;
      v39 = v15;
      v40 = v37;

      *(v34 + 4) = v40;
      *(v34 + 12) = 2080;
      *&v80 = v27;
      *(&v80 + 1) = v19;
      v41 = sub_BAFF0();
      v43 = sub_7A1D8(v41, v42, v83);
      v13 = v70;

      *(v34 + 14) = v43;
      v15 = v39;
      v5 = v38;
      _os_log_impl(&dword_0, v31, v32, "Calculate safeOffset offset: %s size: %s", v34, 0x16u);
      swift_arrayDestroy();

      (*(v79 + 8))(v69, v68);
    }

    else
    {

      (*(v79 + 8))(v12, v10);
    }

    v44 = v77;
    if (qword_F8250 != -1)
    {
      swift_once();
    }

    v45 = *&qword_100C08;
    if (AXDeviceIsPad() && *(v44 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
    {
      v45 = 0.0;
    }

    HasJindo = AXDeviceHasJindo();
    v84.size.height = v75;
    v84.origin.x = v76;
    v84.origin.y = v29;
    v84.size.width = v30;
    if (v23 < v29 + CGRectGetHeight(v84) + -37.3333333 && HasJindo)
    {
      v85.size.height = v75;
      v85.origin.x = v76;
      v85.origin.y = v29;
      v85.size.width = v30;
      v23 = v29 + CGRectGetHeight(v85) + -37.3333333;
    }

    v47 = v74;
    v48 = v74 - v27 + v45;
    if (v48 >= v78)
    {
      v48 = v78;
    }

    v49 = v27;
    v50 = v72;
    v51 = v73;
    v52 = sub_3C824(v48, v23, v49, v19, v72, v73, v74);
    if (a4 - v19 + -4.0 < v53)
    {
      v53 = a4 - v19 + -4.0;
    }

    if (v52 >= -v45)
    {
      v18 = v52;
    }

    else
    {
      v18 = -v45;
    }

    v54 = (v5 + v13[16]);
    v55 = *v54;
    v56 = v54[1];
    if (v53 >= 0.0)
    {
      v57 = v53;
    }

    else
    {
      v57 = 0.0;
    }

    *&v80 = *v54;
    *(&v80 + 1) = v56;
    sub_2E50(&qword_FA710, &unk_C0CA0);
    sub_BABD0();
    if (*v83 != 0.0)
    {
      LOBYTE(v80) = v15;
      *(&v80 + 1) = v16;
      sub_BABD0();
      sub_9E5DC(v83[0], v50, v51, v47, a4);
      v59 = v58;
      *&v80 = v55;
      *(&v80 + 1) = v56;
      sub_BABD0();
      if (*v83 - v59 < v57)
      {
        *&v80 = v55;
        *(&v80 + 1) = v56;
        sub_BABD0();
        v57 = *v83 - v59;
      }

      if (v57 < 0.0)
      {
        v57 = 0.0;
      }
    }

    LOBYTE(v80) = v15;
    *(&v80 + 1) = v16;
    sub_BABD0();
    if (LOBYTE(v83[0]) != 4 && (sub_8E370() & 1) == 0)
    {
      LOBYTE(v80) = v15;
      *(&v80 + 1) = v16;
      sub_BABD0();
      if (LOBYTE(v83[0]))
      {
        v18 = 12.0;
      }

      else
      {
        v18 = 16.0;
      }

      v60 = sub_BB2F0();
      if (qword_F8278 != -1)
      {
        swift_once();
      }

      v61 = qword_100C30;
      if (os_log_type_enabled(qword_100C30, v60))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v83[0] = v63;
        *v62 = 136315138;
        *&v80 = v18;
        *(&v80 + 1) = v57;
        type metadata accessor for CGSize(0);
        v64 = sub_BAFF0();
        v66 = sub_7A1D8(v64, v65, v83);

        *(v62 + 4) = v66;
        _os_log_impl(&dword_0, v61, v60, "currentStateOffset %s", v62, 0xCu);
        sub_28020(v63);
      }
    }
  }

  return v18;
}

uint64_t sub_9391C(uint64_t a1)
{
  sub_BAE30();
  sub_B9D80();
}

uint64_t sub_93988(uint64_t a1)
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v1 = AXLTSettingsManager.contentCategory.getter();
  sub_BB410();

  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_F96C8, &qword_BF3C0);
  return sub_BABE0();
}

void *sub_93A5C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  result = sub_BABD0();
  if (v7 != 4)
  {
    sub_BB320();
    result = AXLogLiveTranscription();
    if (result)
    {
      v5 = result;
      sub_B99F0();

      sub_2E50(&qword_FB868, &qword_C2BD0);
      v6 = sub_BABD0();
      __chkstk_darwin(v6);
      sub_BAE30();
      sub_B9D80();

      sub_915B8();
      LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_pip);
      return [*(a2 + *(v3 + 92)) idleSleepTimerDisabled:{0, sub_9D610()}];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_93C18(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  result = sub_BABD0();
  if (LOBYTE(v4) == 3)
  {
    sub_BB320();
    result = AXLogLiveTranscription();
    if (result)
    {
      v3 = result;
      sub_B99F0();

      sub_2E50(&qword_FB868, &qword_C2BD0);
      sub_BABD0();
      return sub_93D34(1, v4, v5, v6, v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_93D34(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a1 == 4)
  {
    __chkstk_darwin(a1);
    sub_BAE30();
    sub_B9D80();

    sub_915B8();
    v8 = type metadata accessor for LiveCaptionsRootView(0);
    LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_pip);
    return [*(v5 + *(v8 + 92)) idleSleepTimerDisabled:{0, sub_9D610()}];
  }

  else
  {
    sub_9A8B8();
    v10 = type metadata accessor for LiveCaptionsRootView(0);
    LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_compact);
    [*(v5 + *(v10 + 92)) idleSleepTimerDisabled:1];
    sub_2E50(&qword_F9C88, &qword_C2C00);
    sub_BABD0();
    [v12 invalidate];

    sub_BABE0();
    sub_2E50(&qword_F96C8, &qword_BF3C0);
    sub_BABD0();
    sub_95574(a4, a5);
    __chkstk_darwin(v11);
    sub_BAE30();
    sub_B9D80();
  }
}

void sub_94060(uint64_t a1)
{
  sub_B9D10();
  sub_B9D10();
  sub_B9D20();
  sub_B9D20();
  LiveSpeechStore.SpeechContext.init(text:highlightRange:)();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB868, &qword_C2BD0);
  sub_BABE0();
  sub_BABD0();
  sub_94198(v2, v4, v6, v8);
  AXLTCaptionsProvider.activate(_:)(1);
}

void sub_94198(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v102 = a2;
  v101 = a1;
  v95 = sub_B9A10();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v99 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  sub_B99F0();
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = sub_BAFA0();
  v11 = [v9 integerForKey:v10];

  if (v11 >= 5)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v13 = type metadata accessor for LiveCaptionsRootView(0);
  v14 = v5 + v13[8];
  v16 = *(v14 + 8);
  LOBYTE(v105) = *v14;
  v15 = v105;
  *(&v105 + 1) = v16;
  LOBYTE(v110.width) = v12;
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABE0();
  LOBYTE(v105) = v15;
  *(&v105 + 1) = v16;
  sub_BABD0();
  if (!LOBYTE(v110.width))
  {
    LOBYTE(v105) = v15;
    *(&v105 + 1) = v16;
    LOBYTE(v110.width) = 1;
    sub_BABE0();
  }

  v17 = sub_BAFA0();
  v18 = [v9 stringForKey:v17];

  v103 = v9;
  if (v18)
  {
    v19 = CGSizeFromString(v18);

    v20 = (v5 + v13[12]);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    *&v105 = *v20;
    *(&v105 + 1) = v22;
    v106 = v23;
    v110 = v19;
    sub_2E50(&qword_F8AE0, &unk_C3C60);
    sub_BABE0();
    if (!AXDeviceIsPad())
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v24 = -*&qword_100C08;
  v25 = (v5 + v13[12]);
  v22 = v25[1];
  v23 = v25[2];
  *&v105 = *v25;
  v21 = *&v105;
  *(&v105 + 1) = v22;
  v106 = v23;

  sub_2E50(&qword_F8AE0, &unk_C3C60);
  sub_BABD0();
  v110.width = v21;
  v110.height = v22;
  v111 = v23;
  v108 = v24;
  v109 = v113;
  sub_BABE0();

  if (AXDeviceIsPad())
  {
LABEL_14:
    v26 = sub_BAFA0();
    v27 = [v103 stringForKey:v26];

    if (v27)
    {
      v28 = CGSizeFromString(v27);

      v29 = (v5 + v13[15]);
      v30 = v29[2];
      v105 = *v29;
      v106 = v30;
      v110 = v28;
      sub_2E50(&qword_F8AE0, &unk_C3C60);
      sub_BABE0();
    }

    v31 = (v5 + v13[15]);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[2];
    *&v105 = *v31;
    *(&v105 + 1) = v33;
    v106 = v34;
    sub_2E50(&qword_F8AE0, &unk_C3C60);
    sub_BABD0();
    if (v110.height == 0.0)
    {
      v35 = sub_9EA78();
      *&v105 = v32;
      *(&v105 + 1) = v33;
      v106 = v34;

      sub_BABD0();
      v110.width = v32;
      v110.height = v33;
      v111 = v34;
      v108 = v112;
      v109 = v35;
      sub_BABE0();
    }
  }

LABEL_18:
  v36 = sub_BAFA0();
  v37 = [v103 stringForKey:v36];

  if (v37)
  {
    v38 = CGSizeFromString(v37);

    v39 = (v5 + v13[11]);
    v40 = *v39;
    v41 = v39[2];
    v104 = v39[1];
    *&v105 = v40;
    *(&v105 + 1) = v104;
    v106 = v41;
    v110 = v38;
  }

  else
  {
    LOBYTE(v105) = v15;
    *(&v105 + 1) = v16;
    sub_BABD0();
    if (LOBYTE(v110.width) == 2)
    {
      v42 = (v5 + v13[15]);
      v44 = *(v42 + 1);
      v45 = v42[2];
      *&v105 = *v42;
      v43 = v105;
      *(&v105 + 1) = v44;
      v106 = v45;
      sub_2E50(&qword_F8AE0, &unk_C3C60);
      sub_BABD0();
      v46 = (a3 - v110.width) * 0.5;
      *&v105 = v43;
      *(&v105 + 1) = v44;
      v106 = v45;
      sub_BABD0();
      v47 = (v5 + v13[11]);
      v40 = *v47;
      v41 = v47[2];
      v104 = v47[1];
      *&v105 = v40;
      *(&v105 + 1) = v104;
      v106 = v41;
      v110.width = v46;
      v110.height = a4 - v110.height + -24.0;
      goto LABEL_31;
    }

    LOBYTE(v105) = v15;
    *(&v105 + 1) = v16;
    sub_BABD0();
    if (LOBYTE(v110.width) && (LOBYTE(v105) = v15, *(&v105 + 1) = v16, sub_BABD0(), LOBYTE(v110.width) != 1))
    {
      LOBYTE(v105) = v15;
      *(&v105 + 1) = v16;
      v50 = sub_BABD0();
      if (LOBYTE(v110.width))
      {
        v51 = 24.0;
      }

      else
      {
        v51 = 32.0;
      }

      v49 = sub_9E83C(v50, a3, a4) - v51;
      v48 = sub_9E960();
    }

    else
    {
      LOBYTE(v105) = v15;
      *(&v105 + 1) = v16;
      sub_BABD0();
      v49 = sub_9E5DC(LOBYTE(v110.width), v101, v102, a3, a4);
    }

    v52 = (v5 + v13[11]);
    v40 = *v52;
    v41 = v52[2];
    v104 = v52[1];
    *&v105 = v40;
    *(&v105 + 1) = v104;
    v106 = v41;
    v110.width = (a3 - v49) * 0.5;
    v110.height = a4 - v48 + -24.0;
  }

  sub_2E50(&qword_F8AE0, &unk_C3C60);
LABEL_31:
  sub_BABE0();
  LOBYTE(v105) = v15;
  *(&v105 + 1) = v16;
  sub_BABD0();
  if (LOBYTE(v110.width) == 4)
  {
    width_low = 1;
  }

  else
  {
    LOBYTE(v105) = v15;
    *(&v105 + 1) = v16;
    sub_BABD0();
    width_low = LOBYTE(v110.width);
  }

  v54 = (v5 + v13[9]);
  v55 = *v54;
  v56 = *(v54 + 1);
  LOBYTE(v105) = v55;
  *(&v105 + 1) = v56;
  LOBYTE(v110.width) = width_low;
  sub_BABE0();
  LOBYTE(v105) = v15;
  *(&v105 + 1) = v16;
  sub_BABD0();
  if (LOBYTE(v110.width) == 4)
  {
    *&v105 = v21;
    *(&v105 + 1) = v22;
    v106 = v23;
    sub_2E50(&qword_F8AE0, &unk_C3C60);
    sub_BABD0();
    height = v110.height;
    v58 = v104;
    *&v105 = v40;
    *(&v105 + 1) = v104;
    v106 = v41;

    sub_BABD0();
    v110.width = v40;
    v110.height = v58;
    v111 = v41;
    v108 = v112;
    v109 = height;
    sub_BABE0();

    sub_9D610();
    v59 = LiveSpeechUIService_LiveSpeechCaptionsWindowState_pip;
  }

  else
  {
    *&v105 = v40;
    *(&v105 + 1) = v104;
    v106 = v41;
    sub_2E50(&qword_F8AE0, &unk_C3C60);
    sub_BABD0();
    v60 = v110.height;
    *&v105 = v21;
    *(&v105 + 1) = v22;
    v106 = v23;

    sub_BABD0();
    v110.width = v21;
    v110.height = v22;
    v111 = v23;
    v108 = v112;
    v109 = v60;
    sub_BABE0();

    sub_95574(a3, a4);
    [*(v5 + v13[23]) idleSleepTimerDisabled:1];
    v59 = LiveSpeechUIService_LiveSpeechCaptionsWindowState_compact;
  }

  LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsWindowState(_:)(v59);
  *&v105 = v21;
  *(&v105 + 1) = v22;
  v106 = v23;
  sub_2E50(&qword_F8AE0, &unk_C3C60);
  sub_BABD0();
  width = v110.width;
  v61 = v110.height;
  if (qword_F8240 != -1)
  {
    swift_once();
  }

  v63 = 0.0;
  if (v61 >= 0.0)
  {
    v63 = v61;
  }

  if (a4 - *&qword_100BF8 >= v61)
  {
    v64 = v63;
  }

  else
  {
    v64 = a4 - *&qword_100BF8;
  }

  v100 = a3;
  if (a3 * 0.5 >= width)
  {
    if (qword_F8250 != -1)
    {
      swift_once();
    }

    v65 = -*&qword_100C08;
  }

  else
  {
    v65 = a3 - *&qword_100BF0;
  }

  *&v105 = v21;
  *(&v105 + 1) = v22;
  v106 = v23;
  v110.width = v65;
  v110.height = v64;
  sub_BABE0();
  v93 = v40;
  *&v105 = v40;
  *(&v105 + 1) = v104;
  v106 = v41;
  sub_BABD0();
  v66 = v110.width;
  v67 = v110.height;
  v68 = (v5 + v13[25]);
  v69 = *v68;
  v70 = *(v68 + 1);
  LOBYTE(v105) = v69;
  *(&v105 + 1) = v70;
  sub_2E50(&qword_FB820, &qword_C2B80);
  sub_BABD0();
  v71 = 0.0;
  v72 = 0.0;
  if (LOBYTE(v110.width) != 1)
  {
    LOBYTE(v105) = v15;
    *(&v105 + 1) = v16;
    sub_BABD0();
    v71 = sub_9E5DC(LOBYTE(v110.width), v101, v102, v100, a4);
    v72 = v73;
  }

  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v74 = static LiveSpeechCaptionsViewsCoordinator.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v75 = v99;
  v96 = a4;
  if (v71 == 0.0 && v72 == 0.0)
  {
    v71 = *(v74 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
    v72 = *(v74 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
  }

  v76 = *(&v105 + 1);
  v98 = *&v105;
  v77 = v106;
  v97 = v107;
  sub_B95F0();
  v78 = sub_B9A00();
  v79 = sub_BB2F0();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *&v110.width = swift_slowAlloc();
    *v80 = 136315394;
    *&v105 = v66;
    *(&v105 + 1) = v67;
    type metadata accessor for CGSize(0);
    v81 = sub_BAFF0();
    v83 = sub_7A1D8(v81, v82, &v110);

    *(v80 + 4) = v83;
    *(v80 + 12) = 2080;
    *&v105 = v71;
    *(&v105 + 1) = v72;
    v84 = sub_BAFF0();
    v86 = sub_7A1D8(v84, v85, &v110);

    *(v80 + 14) = v86;
    _os_log_impl(&dword_0, v78, v79, "Calculate safeOffset offset: %s size: %s", v80, 0x16u);
    swift_arrayDestroy();

    (*(v94 + 8))(v99, v95);
  }

  else
  {

    (*(v94 + 8))(v75, v95);
  }

  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v87 = *&qword_100C08;
  if (AXDeviceIsPad() && *(v74 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v87 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v114.origin.x = v98;
  v114.origin.y = v76;
  v114.size.width = v77;
  v114.size.height = v97;
  if (v67 < v76 + CGRectGetHeight(v114) + -37.3333333 && HasJindo)
  {
    v115.origin.x = v98;
    v115.origin.y = v76;
    v115.size.width = v77;
    v115.size.height = v97;
    v67 = v76 + CGRectGetHeight(v115) + -37.3333333;
  }

  v89 = v100 - v71 + v87;
  if (v89 >= v66)
  {
    v89 = v66;
  }

  v90 = v96;
  v91 = sub_3C824(v89, v67, v71, v72, v101, v102, v100);
  if (v90 - v72 + -4.0 < v92)
  {
    v92 = v90 - v72 + -4.0;
  }

  if (v91 < -v87)
  {
    v91 = -v87;
  }

  *&v105 = v93;
  *(&v105 + 1) = v104;
  v106 = v41;
  if (v92 < 0.0)
  {
    v92 = 0.0;
  }

  v110.width = v91;
  v110.height = v92;

  sub_BABE0();
}

void sub_95028(uint64_t a1)
{
  type metadata accessor for LiveCaptionsRootView(0);
  AXLTCaptionsProvider.activate(_:)(0);
  sub_2E50(&qword_F9C88, &qword_C2C00);
  sub_BABD0();
  [v1 invalidate];

  sub_BABD0();
  [v1 invalidate];
}

double sub_950F8(uint64_t *a1, uint64_t *a2)
{
  v2 = sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  v3 = qword_100C30;
  v4 = os_log_type_enabled(qword_100C30, v2);
  if (v4)
  {
    v5 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    *v5 = 136315394;
    type metadata accessor for CGSize(0);
    v6 = sub_BAFF0();
    v8 = sub_7A1D8(v6, v7, v13);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = sub_BAFF0();
    v11 = sub_7A1D8(v9, v10, v13);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_0, v3, v2, "ContainerSize old: %s new: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  __chkstk_darwin(v4);
  sub_BAE30();
  sub_B9D80();

  return result;
}

void sub_95334(uint64_t a1, double a2, double a3, double a4)
{
  sub_B9D10();
  sub_B9D10();
  LiveSpeechStore.SpeechContext.init(text:highlightRange:)();
  v7 = v6;
  v9 = v8;
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB868, &qword_C2BD0);
  sub_BABE0();
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  if (LOBYTE(v7) == 4)
  {
    sub_2E50(&qword_F8AE0, &unk_C3C60);
    sub_BABD0();
    sub_BABD0();
    sub_363B8(2 * (a4 * 0.5 < v7), v7, v9, a2);
    sub_BABE0();
  }
}

void sub_95500(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB868, &qword_C2BD0);
  sub_BABD0();
  sub_95574(v2, v3);
}

void sub_95574(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for LiveCaptionsRootView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = (v2 + *(v9 + 96));
  v11 = *v10;
  v12 = v10[1];
  aBlock = *v10;
  v21 = v12;
  sub_2E50(&qword_F9C88, &qword_C2C00);
  sub_BABD0();
  [v26 invalidate];

  sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  sub_B99F0();
  v13 = objc_opt_self();
  sub_A2438(v3, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveCaptionsRootView);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_A2628(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for LiveCaptionsRootView);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a1;
  v16[1] = a2;
  v24 = sub_A11AC;
  v25 = v15;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_4E790;
  v23 = &unk_F2848;
  v17 = _Block_copy(&aBlock);

  v18 = [v13 scheduledTimerWithTimeInterval:0 repeats:v17 block:60.0];
  _Block_release(v17);
  aBlock = v11;
  v21 = v12;
  v26 = v18;
  sub_BABE0();
}

void sub_95828(uint64_t a1)
{
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB868, &qword_C2BD0);
  sub_BABD0();
  sub_95574(v1, v2);
}

uint64_t sub_9589C@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v46 = a1;
  v40 = sub_BA440();
  __chkstk_darwin(v40);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_B9C60();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2E50(&qword_F9BB8, &qword_C2B70);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = type metadata accessor for LiveCaptionsRootView(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v15 = sub_2E50(&qword_FB818, &qword_C2B78);
  v41 = *(v15 - 8);
  v42 = v15;
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v18 = v3;
  v19 = v3 + *(v12 + 108);
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v48) = v20;
  v49 = v21;
  sub_2E50(&qword_FB820, &qword_C2B80);
  sub_BABD0();
  if (v47)
  {
    sub_BAAC0();
    v22 = sub_BAB10();
    v36 = v10;
    v23 = v22;

    v48 = v23;
    v38 = v8;
    sub_A2438(v3, &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveCaptionsRootView);
    v37 = v7;
    v24 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v25 = swift_allocObject();
    sub_A2628(&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for LiveCaptionsRootView);
    sub_BA860();

    sub_BA550();
    v26 = v43;
    sub_B9C20();
    sub_A2438(v18, &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveCaptionsRootView);
    v27 = swift_allocObject();
    sub_A2628(&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v24, type metadata accessor for LiveCaptionsRootView);
    sub_A00C0(&qword_F9BF8, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
    sub_A00C0(&qword_F9C00, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
    v28 = v36;
    v29 = v45;
    sub_BAD00();

    (*(v44 + 8))(v26, v29);
    sub_B9C80();
    v48 = &type metadata for Color;
    v49 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    sub_D150(&qword_F9C08, &qword_F9BB8, &qword_C2B70, &protocol conformance descriptor for _ChangedGesture<A>);
    v30 = v28;
    v31 = v42;
    v32 = v37;
    sub_BA9F0();
    (*(v38 + 8))(v30, v32);
    (*(v41 + 8))(v17, v31);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = sub_2E50(&qword_FB828, &qword_C2B88);
  return (*(*(v34 - 8) + 56))(v46, v33, 1, v34);
}

uint64_t sub_95E94@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a10@<D6>)
{
  v144 = a2;
  v172 = a3;
  v171 = sub_2E50(&qword_FB9E0, &qword_C2D68);
  __chkstk_darwin(v171);
  v156 = &v143 - v18;
  v19 = sub_2E50(&qword_FB9E8, &qword_C2D70);
  __chkstk_darwin(v19 - 8);
  v146 = (&v143 - v20);
  v145 = sub_2E50(&qword_FB9F0, &qword_C2D78);
  __chkstk_darwin(v145);
  v148 = &v143 - v21;
  v147 = sub_2E50(&qword_FB9F8, &qword_C2D80);
  __chkstk_darwin(v147);
  v151 = &v143 - v22;
  v150 = sub_2E50(&qword_FBA00, &qword_C2D88);
  __chkstk_darwin(v150);
  v154 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v149 = &v143 - v25;
  __chkstk_darwin(v26);
  v155 = &v143 - v27;
  v169 = sub_2E50(&qword_FBA08, &unk_C2D90);
  __chkstk_darwin(v169);
  v170 = &v143 - v28;
  v143 = type metadata accessor for LiveSpeechCaptionsPipView(0);
  v164 = *(v143 - 8);
  __chkstk_darwin(v143);
  v165 = v29;
  v166 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2E50(&qword_F8FA0, &unk_BE980);
  __chkstk_darwin(v30 - 8);
  v159 = &v143 - v31;
  v160 = sub_2E50(&qword_F8FA8, &unk_C2DA0);
  v158 = *(v160 - 8);
  __chkstk_darwin(v160);
  v157 = &v143 - v32;
  v163 = sub_2E50(&qword_F8FB0, &unk_BE990);
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v161 = &v143 - v33;
  v153 = sub_B9A10();
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  *&v167 = &v143 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for LiveCaptionsRootView(0);
  v36 = *(v35 - 1);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v168 = sub_2E50(&qword_F8FB8, &qword_C2DB0);
  __chkstk_darwin(v168);
  v39 = &v143 - v38;
  v40 = (a1 + v35[8]);
  v41 = *v40;
  v42 = *(v40 + 1);
  LOBYTE(v174) = *v40;
  *(&v174 + 1) = v42;
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  if (v177 == 4)
  {
    v43 = (a1 + v35[19]);
    v44 = *v43;
    v45 = v43[1];
    v177 = v44;
    v178 = v45;
    sub_2E50(&qword_F9018, &qword_C2C10);
    sub_BABF0();
    v150 = *(&v174 + 1);
    v151 = v174;
    v46 = v175;
    v47 = a1 + v35[12];
    v48 = *(v47 + 8);
    v49 = *(v47 + 16);
    v156 = *v47;
    v177 = v156;
    v178 = v48;
    v179 = v49;
    v155 = sub_2E50(&qword_F8AE0, &unk_C3C60);
    sub_BABF0();
    v50 = v174;
    v52 = v175;
    v51 = v176;
    sub_A2438(a1, &v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveCaptionsRootView);
    v53 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v54 = swift_allocObject();
    sub_A2628(&v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v54 + v53, type metadata accessor for LiveCaptionsRootView);
    v55 = (v54 + ((v37 + v53 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v55 = a4;
    v55[1] = a5;
    v55[2] = a6;
    v55[3] = a7;
    type metadata accessor for CGSize(0);
    v177 = 0;
    v178 = 0;
    sub_BABC0();
    v56 = v175;
    *(v39 + 8) = v174;
    *(v39 + 18) = v56;
    *(v39 + 21) = 0x4024000000000000;
    v177 = 0;
    sub_2E50(&qword_F9020, &qword_BEA00);
    sub_BABC0();
    *(v39 + 11) = v174;
    if (qword_F8240 != -1)
    {
      swift_once();
    }

    *(v39 + 24) = *&qword_100BF0 / 1.2;
    *(v39 + 25) = 0x3FF0000000000000;
    v57 = v143;
    v58 = *(v143 + 64);
    *&v39[v58] = swift_getKeyPath();
    sub_2E50(&qword_F8AF0, &qword_BE468);
    swift_storeEnumTagMultiPayload();
    v59 = *(v57 + 68);
    v60 = [objc_allocWithZone(type metadata accessor for ForeheadWindow(0)) init];
    *&v39[v59] = v60;
    v154 = *(v57 + 72);
    *&v39[v154] = 0;
    v61 = v60;
    v62 = v167;
    sub_B95F0();

    v63 = sub_B9A00();
    v64 = sub_BB2F0();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v149 = v49;
      v66 = v65;
      v67 = swift_slowAlloc();
      v147 = v61;
      v177 = v67;
      *v66 = 136315650;
      LOBYTE(v174) = 1;
      v68 = sub_BAFF0();
      v70 = sub_7A1D8(v68, v69, &v177);
      v148 = v54;
      v71 = v70;

      *(v66 + 4) = v71;
      *(v66 + 12) = 2080;
      v174 = v50;
      v175 = v52;
      v176 = v51;

      sub_2E50(&qword_F9110, &qword_BEA50);
      v72 = sub_BAFF0();
      v74 = sub_7A1D8(v72, v73, &v177);

      *(v66 + 14) = v74;
      *(v66 + 22) = 2080;
      *&v174 = a4;
      *(&v174 + 1) = a5;
      v175 = a6;
      v176 = a7;
      type metadata accessor for CGRect(0);
      v75 = sub_BAFF0();
      v77 = sub_7A1D8(v75, v76, &v177);
      v54 = v148;

      *(v66 + 24) = v77;
      _os_log_impl(&dword_0, v63, v64, "Pip init %s iconOffset %s containerRect: %s", v66, 0x20u);
      swift_arrayDestroy();
      v61 = v147;

      v49 = v149;

      (*(v152 + 8))(COERCE_DOUBLE(*&v167), v153);
    }

    else
    {

      (*(v152 + 8))(COERCE_DOUBLE(*&v62), v153);
    }

    *v39 = 1;
    *(v39 + 8) = a4;
    *(v39 + 9) = a5;
    *(v39 + 10) = a6;
    *(v39 + 11) = a7;
    *(v39 + 12) = sub_A2308;
    *(v39 + 13) = v54;
    *(v39 + 14) = LiveSpeechStore.SpeechContext.init(text:highlightRange:);
    *(v39 + 15) = 0;
    v125 = v150;
    *(v39 + 1) = v151;
    *(v39 + 2) = v125;
    *(v39 + 3) = v46;
    *(v39 + 2) = v50;
    *(v39 + 6) = v52;
    *(v39 + 7) = v51;
    v126 = qword_F82A0;

    if (v126 != -1)
    {
      swift_once();
    }

    v127 = static AXLTCaptionsProvider.shared;
    v128 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
    swift_beginAccess();
    LOBYTE(v173) = *(v127 + v128);
    sub_BABC0();
    v129 = v178;
    v39[152] = v177;
    *(v39 + 20) = v129;
    swift_beginAccess();
    sub_2E50(&qword_FA700, &qword_BEA08);
    v130 = v157;
    sub_B9AE0();
    swift_endAccess();

    v131 = [objc_opt_self() mainRunLoop];
    v177 = v131;
    v132 = sub_BB4B0();
    v133 = v159;
    (*(*(v132 - 8) + 56))(v159, 1, 1, v132);
    sub_35DD4(0, &qword_F9028, NSRunLoop_ptr);
    sub_D150(&qword_F9030, &qword_F8FA8, &unk_C2DA0, &protocol conformance descriptor for Published<A>.Publisher);
    sub_A23D0();
    v134 = v161;
    v135 = v160;
    sub_B9B40();
    sub_C5E8(v133, &qword_F8FA0, &unk_BE980);

    (*(v158 + 8))(v130, v135);
    v136 = v166;
    sub_A2438(v39, v166, type metadata accessor for LiveSpeechCaptionsPipView);
    v137 = (*(v164 + 80) + 16) & ~*(v164 + 80);
    v138 = swift_allocObject();
    sub_A2628(v136, v138 + v137, type metadata accessor for LiveSpeechCaptionsPipView);
    sub_D150(&qword_F9040, &qword_F8FB0, &unk_BE990, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v139 = v163;
    v140 = sub_B9B50();

    (*(v162 + 8))(v134, v139);
    *&v39[v154] = v140;
    v177 = v156;
    v178 = v48;
    v179 = v49;
    sub_BABD0();
    sub_3A414(v173);
    v141 = &v39[*(v168 + 36)];
    *v141 = v142;
    *(v141 + 1) = 0;
    sub_57A0(v39, v170, &qword_F8FB8, &qword_C2DB0);
    swift_storeEnumTagMultiPayload();
    sub_23210();
    sub_D150(&qword_FBA20, &qword_FB9E0, &qword_C2D68, &protocol conformance descriptor for TupleView<A>);
    sub_BA430();
    return sub_C5E8(v39, &qword_F8FB8, &qword_C2DB0);
  }

  else
  {
    LOBYTE(v174) = v41;
    *(&v174 + 1) = v42;
    sub_BABD0();
    v78 = v177;
    if (qword_F8320 != -1)
    {
      swift_once();
    }

    v79 = static AXLTSettingsManager.shared;
    v167 = AXLTSettingsManager.buttonScaledHeight.getter() + 12.0 + 6.0;
    v80 = OBJC_IVAR___AXLTSettingsManager_backgroundColor;
    swift_beginAccess();
    v173 = *(v79 + v80);

    sub_BABC0();
    v81 = v177;
    v82 = v178;
    v83 = sub_BA320();
    v84 = v146;
    *v146 = v83;
    v84[1] = 0;
    *(v84 + 16) = 0;
    v85 = sub_2E50(&qword_FBA10, &qword_C2DB8);
    sub_97328(a1, v144, v84 + *(v85 + 44), a8, a10);
    v86 = sub_BA650();
    LOBYTE(v177) = v41;
    v178 = v42;
    sub_BABD0();
    if (LOBYTE(v173) == 3 && (sub_8E370() & 1) == 0 && qword_F8358 != -1)
    {
      swift_once();
    }

    sub_B9B90();
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v95 = v84;
    v96 = v148;
    sub_66B8(v95, v148, &qword_FB9E8, &qword_C2D70);
    v97 = v96 + *(v145 + 36);
    *v97 = v86;
    *(v97 + 8) = v88;
    *(v97 + 16) = v90;
    *(v97 + 24) = v92;
    *(v97 + 32) = v94;
    *(v97 + 40) = 0;
    v98 = sub_BA670();
    LOBYTE(v177) = v41;
    v178 = v42;
    sub_BABD0();
    sub_B9B90();
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v107 = v151;
    sub_66B8(v96, v151, &qword_FB9F0, &qword_C2D78);
    v108 = v107 + *(v147 + 36);
    *v108 = v98;
    *(v108 + 8) = v100;
    *(v108 + 16) = v102;
    *(v108 + 24) = v104;
    *(v108 + 32) = v106;
    *(v108 + 40) = 0;
    v109 = sub_BA690();
    LOBYTE(v177) = v41;
    v178 = v42;
    sub_BABD0();
    sub_B9B90();
    v111 = v110;
    v113 = v112;
    v115 = v114;
    v117 = v116;
    v118 = v149;
    sub_66B8(v107, v149, &qword_FB9F8, &qword_C2D80);
    v119 = v118 + *(v150 + 36);
    *v119 = v109;
    *(v119 + 8) = v111;
    *(v119 + 16) = v113;
    *(v119 + 24) = v115;
    *(v119 + 32) = v117;
    *(v119 + 40) = 0;
    v120 = v155;
    sub_66B8(v118, v155, &qword_FBA00, &qword_C2D88);
    v121 = v154;
    sub_57A0(v120, v154, &qword_FBA00, &qword_C2D88);
    v122 = v156;
    *v156 = v78;
    *(v122 + 8) = v167;
    *(v122 + 16) = v81;
    *(v122 + 24) = v82;
    v123 = sub_2E50(&qword_FBA18, &qword_C2DC0);
    sub_57A0(v121, v122 + *(v123 + 48), &qword_FBA00, &qword_C2D88);
    swift_retain_n();
    swift_retain_n();
    sub_C5E8(v121, &qword_FBA00, &qword_C2D88);

    sub_57A0(v122, v170, &qword_FB9E0, &qword_C2D68);
    swift_storeEnumTagMultiPayload();
    sub_23210();
    sub_D150(&qword_FBA20, &qword_FB9E0, &qword_C2D68, &protocol conformance descriptor for TupleView<A>);
    sub_BA430();

    sub_C5E8(v122, &qword_FB9E0, &qword_C2D68);
    return sub_C5E8(v120, &qword_FBA00, &qword_C2D88);
  }
}

id sub_97284(uint64_t a1, double a2, double a3, double a4, double a5)
{
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  return sub_93D34(v10, a2, a3, a4, a5);
}

uint64_t sub_97328@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X8>, double a4@<D4>, double a5@<D6>)
{
  v75 = a3;
  v9 = sub_2E50(&qword_FBA28, &qword_C2E00);
  __chkstk_darwin(v9 - 8);
  v77 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v63 - v12);
  v14 = sub_2E50(&qword_FBA30, &qword_C2E08);
  v72 = *(v14 - 8);
  v73 = v14;
  __chkstk_darwin(v14);
  v69 = &v63 - v15;
  v16 = sub_2E50(&qword_FBA38, &qword_C2E10);
  __chkstk_darwin(v16 - 8);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v63 - v20;
  v22 = sub_2E50(&qword_FBA40, &qword_C2E18);
  __chkstk_darwin(v22 - 8);
  v76 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v63 - v25;
  v27 = *(type metadata accessor for LiveCaptionsRootView(0) + 32);
  v78 = a1;
  v28 = a1 + v27;
  v30 = *(v28 + 8);
  LOBYTE(v117) = *v28;
  v29 = v117;
  *(&v117 + 1) = v30;
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  v79 = v26;
  v74 = a2;
  v71 = v29;
  v70 = v30;
  if (v104 == 1 || (LOBYTE(v117) = v29, *(&v117 + 1) = v30, sub_BABD0(), v104 == 3) || (LOBYTE(v117) = v29, *(&v117 + 1) = v30, sub_BABD0(), v104 == 2))
  {
    v68 = v13;
    sub_97C24(a2, v21);
    LOBYTE(v117) = v29;
    *(&v117 + 1) = v30;
    sub_BABD0();
    if (v104 == 3)
    {
      sub_BADE0();
      sub_B9CF0();
      v66 = 0;
      v67 = v130;
      v64 = v134;
      v65 = v132;
      v63 = v135;
      LOBYTE(v104) = 1;
      LOBYTE(v94[0]) = v131;
      LOBYTE(v81) = v133;
      v31 = 1;
      v32 = v131;
      v33 = v133;
      LOBYTE(v117) = 0;
    }

    else
    {
      v67 = 0;
      v64 = 0;
      v65 = 0;
      v63 = 0;
      v33 = 0;
      v32 = 0;
      v31 = 0;
      v66 = 1;
    }

    sub_57A0(v21, v18, &qword_FBA38, &qword_C2E10);
    v34 = v69;
    sub_57A0(v18, v69, &qword_FBA38, &qword_C2E10);
    v35 = v34 + *(sub_2E50(&qword_FBA78, &qword_C2E50) + 48);
    *v35 = 0;
    *(v35 + 8) = v31;
    *(v35 + 16) = v67;
    *(v35 + 24) = v32;
    v36 = v64;
    *(v35 + 32) = v65;
    *(v35 + 40) = v33;
    v37 = v63;
    *(v35 + 48) = v36;
    *(v35 + 56) = v37;
    *(v35 + 64) = v66;
    sub_C5E8(v21, &qword_FBA38, &qword_C2E10);
    sub_C5E8(v18, &qword_FBA38, &qword_C2E10);
    v26 = v79;
    sub_66B8(v34, v79, &qword_FBA30, &qword_C2E08);
    v38 = 0;
    v13 = v68;
  }

  else
  {
    v38 = 1;
  }

  (*(v72 + 56))(v26, v38, 1, v73);
  *v13 = sub_BADC0();
  v13[1] = v39;
  v40 = sub_2E50(&qword_FBA48, &qword_C2E20);
  sub_987C0(v74, v13 + *(v40 + 44));
  v41 = v71;
  LOBYTE(v117) = v71;
  v42 = v70;
  *(&v117 + 1) = v70;
  sub_BABD0();
  if (v104 == 2)
  {
    sub_99278(v94);
    sub_A27A4(v94);
  }

  else
  {
    LOBYTE(v117) = v41;
    *(&v117 + 1) = v42;
    sub_BABD0();
    if (v104 != 3)
    {
      sub_A2690(&v117);
      goto LABEL_14;
    }

    v43 = sub_BAAE0();
    sub_996C0(a4, v44, a5);
    sub_BADE0();
    sub_B9CF0();
    *&v80[22] = v137;
    *&v80[38] = v138;
    *&v80[6] = v136;
    *(v94 + 10) = *v80;
    *&v94[0] = v43;
    WORD4(v94[0]) = 256;
    *(&v94[1] + 10) = *&v80[16];
    *(&v94[2] + 10) = *&v80[32];
    *(&v94[3] + 1) = *(&v138 + 1);
    sub_A26B8(v94);
  }

  v114 = v101;
  v115 = v102;
  v116 = v103;
  v110 = v97;
  v111 = v98;
  v112 = v99;
  v113 = v100;
  v106 = v94[2];
  v107 = v94[3];
  v108 = v95;
  v109 = v96;
  v104 = v94[0];
  v105 = v94[1];
  sub_2E50(&qword_FBA60, &qword_C2E38);
  sub_2E50(&qword_FB610, &unk_C2E40);
  sub_A26C4();
  sub_8D464();
  sub_BA430();
  v114 = v127;
  v115 = v128;
  v116 = v129;
  v110 = v123;
  v111 = v124;
  v112 = v125;
  v113 = v126;
  v106 = v119;
  v107 = v120;
  v108 = v121;
  v109 = v122;
  v104 = v117;
  v105 = v118;
  LiveSpeechStore.SpeechContext.init(text:highlightRange:)();
  v127 = v114;
  v128 = v115;
  v129 = v116;
  v123 = v110;
  v124 = v111;
  v125 = v112;
  v126 = v113;
  v119 = v106;
  v120 = v107;
  v121 = v108;
  v122 = v109;
  v117 = v104;
  v118 = v105;
LABEL_14:
  v45 = v26;
  v46 = v76;
  sub_57A0(v45, v76, &qword_FBA40, &qword_C2E18);
  v47 = v77;
  sub_57A0(v13, v77, &qword_FBA28, &qword_C2E00);
  v90 = v126;
  v91 = v127;
  v92 = v128;
  v86 = v122;
  v87 = v123;
  v93 = v129;
  v88 = v124;
  v89 = v125;
  v83 = v119;
  v84 = v120;
  v85 = v121;
  v81 = v117;
  v82 = v118;
  v48 = v75;
  sub_57A0(v46, v75, &qword_FBA40, &qword_C2E18);
  v49 = sub_2E50(&qword_FBA50, &qword_C2E28);
  sub_57A0(v47, v48 + *(v49 + 48), &qword_FBA28, &qword_C2E00);
  v50 = v48 + *(v49 + 64);
  v51 = v90;
  v101 = v91;
  v102 = v92;
  v52 = v86;
  v53 = v87;
  v54 = v89;
  v97 = v87;
  v98 = v88;
  v55 = v88;
  v99 = v89;
  v100 = v90;
  v57 = v84;
  v56 = v85;
  v95 = v85;
  v96 = v86;
  v94[2] = v83;
  v94[3] = v84;
  v58 = v83;
  v59 = v82;
  v60 = v81;
  v94[0] = v81;
  v94[1] = v82;
  v61 = v92;
  *(v50 + 160) = v91;
  *(v50 + 176) = v61;
  *(v50 + 96) = v53;
  *(v50 + 112) = v55;
  *(v50 + 128) = v54;
  *(v50 + 144) = v51;
  *(v50 + 32) = v58;
  *(v50 + 48) = v57;
  *(v50 + 64) = v56;
  *(v50 + 80) = v52;
  v103 = v93;
  *(v50 + 192) = v93;
  *v50 = v60;
  *(v50 + 16) = v59;
  sub_57A0(v94, &v104, &qword_FBA58, &qword_C2E30);
  sub_C5E8(v13, &qword_FBA28, &qword_C2E00);
  sub_C5E8(v79, &qword_FBA40, &qword_C2E18);
  v114 = v91;
  v115 = v92;
  v110 = v87;
  v111 = v88;
  v116 = v93;
  v112 = v89;
  v113 = v90;
  v106 = v83;
  v107 = v84;
  v108 = v85;
  v109 = v86;
  v104 = v81;
  v105 = v82;
  sub_C5E8(&v104, &qword_FBA58, &qword_C2E30);
  sub_C5E8(v47, &qword_FBA28, &qword_C2E00);
  return sub_C5E8(v46, &qword_FBA40, &qword_C2E18);
}

uint64_t sub_97C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a1;
  v104 = a2;
  v3 = type metadata accessor for LiveCaptionsRootView(0);
  v4 = v3 - 8;
  v108 = *(v3 - 8);
  v5 = *(v108 + 64);
  __chkstk_darwin(v3);
  v98 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v77 - v7;
  __chkstk_darwin(v9);
  v11 = &v77 - v10;
  __chkstk_darwin(v12);
  v14 = &v77 - v13;
  v15 = sub_2E50(&qword_FBA80, &qword_C2E58);
  v102 = *(v15 - 8);
  v103 = v15;
  __chkstk_darwin(v15);
  v97 = &v77 - v16;
  v101 = sub_2E50(&qword_FBA88, &qword_C2E60);
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v96 = &v77 - v17;
  v18 = v2 + *(v4 + 104);
  v19 = *v18;
  v20 = *(v18 + 8);
  LOBYTE(v109) = v19;
  *(&v109 + 1) = v20;
  sub_2E50(&qword_FBA90, &qword_C2E68);
  sub_BABF0();
  v90 = *(&v122 + 1);
  v91 = v122;
  v89 = v123;
  v21 = v2 + *(v4 + 40);
  v23 = *(v21 + 8);
  LOBYTE(v122) = *v21;
  v22 = v122;
  *(&v122 + 1) = v23;
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  v87 = v109;
  LOBYTE(v122) = v22;
  *(&v122 + 1) = v23;
  sub_BABD0();
  v86 = v109;
  sub_A2438(v2, v14, type metadata accessor for LiveCaptionsRootView);
  v24 = *(v108 + 80);
  v25 = (v24 + 16) & ~v24;
  v88 = swift_allocObject();
  sub_A2628(v14, v88 + v25, type metadata accessor for LiveCaptionsRootView);
  sub_A2438(v2, v11, type metadata accessor for LiveCaptionsRootView);
  v26 = swift_allocObject();
  sub_A2628(v11, v26 + v25, type metadata accessor for LiveCaptionsRootView);
  v100 = v2;
  sub_A2438(v2, v8, type metadata accessor for LiveCaptionsRootView);
  v92 = v25 + v5;
  v93 = v24;
  v27 = swift_allocObject();
  v94 = v25;
  v85 = v27;
  sub_A2628(v8, v27 + v25, type metadata accessor for LiveCaptionsRootView);
  LOBYTE(v109) = 2;
  sub_2E50(&qword_FBA98, &qword_C2E70);
  sub_BABC0();
  v84 = v122;
  v83 = *(&v122 + 1);
  if (qword_F8320 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v108 = static AXLTSettingsManager.shared;
    v28 = AXLTSettingsManager.contentCategory.getter();
    v29 = qword_F8378;
    v30 = v28;
    if (v29 != -1)
    {
      swift_once();
    }

    v31 = sub_B9E30();
    sub_3CB8(v31, qword_100DA8);
    v32 = sub_1F22C();
    v33 = sub_BB420();

    if (v33)
    {
      v34 = sub_1F22C();

      v30 = v34;
    }

    if (qword_F8318 != -1)
    {
      swift_once();
    }

    sub_64E70(buttonFontStyle, UIFontWeightBold);

    *&v109 = sub_BA720();
    sub_BABC0();
    v81 = *(&v122 + 1);
    v82 = v122;
    if (qword_F82A0 != -1)
    {
      swift_once();
    }

    v35 = static AXLTCaptionsProvider.shared;
    LOBYTE(v109) = AXLTCaptionsProvider.canClearCaptions.getter() & 1;
    sub_BABC0();
    v80 = v122;
    v79 = *(&v122 + 1);
    if (*(v35 + OBJC_IVAR___AXLTCaptionsProvider_isDeviceLocked))
    {
      v36 = 0;
      goto LABEL_38;
    }

    v78 = v26;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    v26 = v122;
    if (v122 >> 62)
    {
      break;
    }

    v37 = *(&dword_10 + (v122 & 0xFFFFFFFFFFFFFF8));
    if (!v37)
    {
      goto LABEL_36;
    }

LABEL_14:
    v105 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
    swift_beginAccess();
    v38 = 0;
    v107 = v26 & 0xFFFFFFFFFFFFFF8;
    v106 = AXLTCallID;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v39 = sub_BB590();
      }

      else
      {
        if (v38 >= *(v107 + 16))
        {
          goto LABEL_33;
        }

        v39 = *(v26 + 8 * v38 + 32);
      }

      v40 = v39;
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      v42 = sub_B9700();
      v44 = v43;
      if (v42 == sub_B97B0() && v44 == v45)
      {
      }

      else
      {
        v46 = sub_BB700();

        if (v46)
        {
        }

        else
        {
          v47 = sub_B9700();
          v49 = v48;
          if (v47 == sub_BAFD0() && v49 == v50)
          {
          }

          else
          {
            v51 = sub_BB700();

            if ((v51 & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          if (*(v108 + v105))
          {
LABEL_31:
            v36 = 1;
            goto LABEL_37;
          }
        }
      }

      ++v38;
      if (v41 == v37)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v37 = sub_BB650();
  if (v37)
  {
    goto LABEL_14;
  }

LABEL_36:
  v36 = 0;
LABEL_37:

  v26 = v78;
LABEL_38:
  if (v86 == 3)
  {
    v52 = 24.0;
  }

  else
  {
    v52 = 12.0;
  }

  v53 = v87 != 1;
  LOBYTE(v109) = v36;
  sub_BABC0();
  v54 = v122;
  v55 = *(&v122 + 1);
  AXLTSettingsManager.buttonScaledHeight.getter();
  sub_BADE0();
  sub_B9CF0();
  *&v109 = v91;
  *(&v109 + 1) = v90;
  LOBYTE(v110) = v89;
  BYTE1(v110) = v53;
  *(&v110 + 1) = v52;
  *&v111 = sub_A27AC;
  *(&v111 + 1) = v88;
  *&v112 = sub_A27C4;
  *(&v112 + 1) = v26;
  *&v113 = sub_A27DC;
  *(&v113 + 1) = v85;
  LOBYTE(v114) = v84;
  *(&v114 + 1) = v83;
  *&v115 = v82;
  *(&v115 + 1) = v81;
  LOBYTE(v116) = v80;
  *(&v116 + 1) = v79;
  LOBYTE(v117) = v54;
  *(&v117 + 1) = v55;
  v121 = 0;
  sub_B9C80();
  v56 = sub_2E50(&qword_FBAA0, &qword_C2E78);
  v57 = sub_2E50(&qword_F9BC0, &qword_BFD60);
  v58 = sub_A27F4(&qword_FBAA8, &qword_FBAA0, &qword_C2E78, sub_A28A4);
  v59 = sub_D150(&qword_F9C40, &qword_F9BC0, &qword_BFD60, &protocol conformance descriptor for _EndedGesture<A>);
  v60 = v97;
  sub_BA9F0();
  v132 = v119;
  v133 = v120;
  v134 = v121;
  v128 = v115;
  v129 = v116;
  v130 = v117;
  v131 = v118;
  v124 = v111;
  v125 = v112;
  v126 = v113;
  v127 = v114;
  v122 = v109;
  v123 = v110;
  sub_C5E8(&v122, &qword_FBAA0, &qword_C2E78);
  v61 = v98;
  sub_A2438(v100, v98, type metadata accessor for LiveCaptionsRootView);
  v62 = swift_allocObject();
  sub_A2628(v61, v62 + v94, type metadata accessor for LiveCaptionsRootView);
  *&v109 = v56;
  *(&v109 + 1) = v57;
  *&v110 = v58;
  *(&v110 + 1) = v59;
  swift_getOpaqueTypeConformance2();
  v63 = v96;
  v64 = v103;
  sub_BA860();

  (*(v102 + 8))(v60, v64);
  v65 = sub_BA660();
  sub_B9B90();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v104;
  (*(v99 + 32))(v104, v63, v101);
  result = sub_2E50(&qword_FBA38, &qword_C2E10);
  v76 = v74 + *(result + 36);
  *v76 = v65;
  *(v76 + 8) = v67;
  *(v76 + 16) = v69;
  *(v76 + 24) = v71;
  *(v76 + 32) = v73;
  *(v76 + 40) = 0;
  return result;
}

uint64_t sub_987C0@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X8>)
{
  v86 = a1;
  v100 = a2;
  v5 = type metadata accessor for LiveCaptionsRootView(0);
  v6 = v5 - 8;
  v87 = *(v5 - 8);
  __chkstk_darwin(v5);
  v102 = v7;
  v99 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_B9C10();
  v89 = *(v91 - 1);
  __chkstk_darwin(v91);
  v88 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2E50(&qword_FB830, &qword_C2B90);
  v93 = *(v98 - 8);
  __chkstk_darwin(v98);
  v92 = &v68 - v9;
  v95 = sub_2E50(&qword_FBAC8, &qword_C2E90);
  v90 = *(v95 - 8);
  __chkstk_darwin(v95);
  v101 = &v68 - v10;
  v11 = sub_2E50(&qword_FBAD0, &qword_C2E98);
  v96 = *(v11 - 8);
  v97 = v11;
  __chkstk_darwin(v11);
  v94 = &v68 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v85 = v105[0];
  v13 = v4 + *(v6 + 40);
  v15 = *(v13 + 8);
  LOBYTE(v105[0]) = *v13;
  v14 = v105[0];
  v105[1] = v15;
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  LODWORD(v84) = LOBYTE(v104[0]);
  v16 = (v4 + *(v6 + 80));
  v17 = *v16;
  v18 = v16[1];
  v104[0] = v17;
  v104[1] = v18;
  sub_2E50(&qword_F9018, &qword_C2C10);
  sub_BABF0();
  v81 = v105[1];
  v82 = v105[0];
  v83 = v105[2];
  LOBYTE(v104[0]) = 0;
  sub_BABC0();
  v80 = LOBYTE(v105[0]);
  v79 = v105[1];
  LOBYTE(v104[0]) = 0;
  sub_BABC0();
  v78 = LOBYTE(v105[0]);
  v77 = v105[1];
  v104[0] = 0;
  sub_2E50(&qword_F9020, &qword_BEA00);
  sub_BABC0();
  v75 = v105[1];
  v76 = v105[0];
  LOBYTE(v104[0]) = 1;
  sub_BABC0();
  v74 = LOBYTE(v105[0]);
  v19 = v105[1];
  v104[0] = 0;
  sub_BABC0();
  v72 = v105[0];
  v20 = v105[1];
  v73 = sub_BA670();
  LOBYTE(v105[0]) = v14;
  v105[1] = v15;
  sub_BABD0();
  if (LOBYTE(v104[0]) == 3)
  {
    sub_8E370();
  }

  sub_B9B90();
  v70 = v22;
  v71 = v21;
  v68 = v24;
  v69 = v23;
  v106 = 0;
  v25 = sub_BA690();
  LOBYTE(v105[0]) = v14;
  v105[1] = v15;
  sub_BABD0();
  if (LOBYTE(v104[0]) == 3)
  {
    sub_8E370();
  }

  v103 = v4;
  sub_B9B90();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v107 = 0;
  v34 = sub_BA650();
  LOBYTE(v105[0]) = v14;
  v105[1] = v15;
  sub_BABD0();
  if (LOBYTE(v104[0]))
  {
    LOBYTE(v105[0]) = v14;
    v105[1] = v15;
    sub_BABD0();
    if (LOBYTE(v104[0]) != 1)
    {
      LOBYTE(v105[0]) = v14;
      v105[1] = v15;
      sub_BABD0();
      if (LOBYTE(v104[0]) != 2 && qword_F8358 != -1)
      {
        swift_once();
      }
    }
  }

  sub_B9B90();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v108 = 0;
  v43 = sub_BA660();
  LOBYTE(v105[0]) = v14;
  v105[1] = v15;
  sub_BABD0();
  if (LOBYTE(v104[0]))
  {
    LOBYTE(v105[0]) = v14;
    v105[1] = v15;
    sub_BABD0();
  }

  sub_B9B90();
  v109 = 0;
  v104[0] = v85;
  LOBYTE(v104[1]) = v84;
  v104[2] = v82;
  v104[3] = v81;
  v104[4] = v83;
  LOBYTE(v104[5]) = v80;
  v104[6] = v79;
  LOBYTE(v104[7]) = v78;
  v104[8] = v77;
  *&v104[9] = xmmword_C28E0;
  v104[11] = v76;
  v104[12] = v75;
  LOBYTE(v104[13]) = v74;
  v104[14] = v19;
  v104[15] = v72;
  v104[16] = v20;
  v104[17] = 0x4028000000000000;
  LOBYTE(v104[18]) = 0;
  LOBYTE(v104[19]) = v73;
  v104[20] = v71;
  v104[21] = v70;
  v104[22] = v69;
  v104[23] = v68;
  LOBYTE(v104[24]) = 0;
  LOBYTE(v104[25]) = v25;
  v104[26] = v27;
  v104[27] = v29;
  v104[28] = v31;
  v104[29] = v33;
  LOBYTE(v104[30]) = 0;
  LOBYTE(v104[31]) = v34;
  v104[32] = v36;
  v104[33] = v38;
  v104[34] = v40;
  v104[35] = v42;
  LOBYTE(v104[36]) = 0;
  LOBYTE(v104[37]) = v43;
  v104[38] = v44;
  v104[39] = v45;
  v104[40] = v46;
  v104[41] = v47;
  LOBYTE(v104[42]) = 0;
  sub_B9C80();
  v84 = sub_2E50(&qword_FBAD8, &qword_C2EA0);
  v83 = sub_2E50(&qword_F9BC0, &qword_BFD60);
  v48 = sub_A2A14();
  v85 = &protocol conformance descriptor for _EndedGesture<A>;
  v49 = sub_D150(&qword_F9C40, &qword_F9BC0, &qword_BFD60, &protocol conformance descriptor for _EndedGesture<A>);
  sub_BA940();
  memcpy(v105, v104, 0x151uLL);
  sub_C5E8(v105, &qword_FBAD8, &qword_C2EA0);
  v50 = v88;
  sub_B9C00();
  v51 = v99;
  v86 = type metadata accessor for LiveCaptionsRootView;
  sub_A2438(v103, v99, type metadata accessor for LiveCaptionsRootView);
  v87 = *(v87 + 80);
  v52 = (v87 + 16) & ~v87;
  v53 = swift_allocObject();
  v54 = v51;
  sub_A2628(v51, v53 + v52, type metadata accessor for LiveCaptionsRootView);
  v55 = swift_allocObject();
  *(v55 + 16) = sub_A32CC;
  *(v55 + 24) = v53;
  v57 = v91;
  v56 = v92;
  sub_BACF0();

  (*(v89 + 8))(v50, v57);
  sub_B9C80();
  v104[0] = v84;
  v104[1] = v83;
  v104[2] = v48;
  v104[3] = v49;
  v91 = &opaque type descriptor for <<opaque return type of View.simultaneousGesture<A>(_:including:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = sub_D150(&qword_FB8B8, &qword_FB830, &qword_C2B90, v85);
  v60 = v94;
  v61 = v95;
  v62 = v98;
  v63 = v101;
  sub_BA940();
  (*(v93 + 8))(v56, v62);
  (*(v90 + 8))(v63, v61);
  v64 = v86;
  sub_A2438(v103, v54, v86);
  v65 = swift_allocObject();
  sub_A2628(v54, v65 + v52, v64);
  v104[0] = v61;
  v104[1] = v62;
  v104[2] = OpaqueTypeConformance2;
  v104[3] = v59;
  swift_getOpaqueTypeConformance2();
  v66 = v97;
  sub_BA860();

  return (*(v96 + 8))(v60, v66);
}

__n128 sub_99278@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LiveCaptionsRootView(0);
  v46 = *(v3 - 1);
  __chkstk_darwin(v3);
  v47 = v4;
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + *(v5 + 68));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = v6[4];
  *&v58 = *v6;
  *(&v58 + 1) = v8;
  v59 = v9;
  v60 = v10;
  v61 = v11;
  sub_2E50(&qword_FB868, &qword_C2BD0);
  sub_BABD0();
  v12 = v52;
  v13 = (v1 + v3[16]);
  v14 = *v13;
  v15 = v13[1];
  *&v58 = *v13;
  *(&v58 + 1) = v15;
  sub_2E50(&qword_FA710, &unk_C0CA0);
  sub_BABD0();
  if (*&v51 == 0.0)
  {
    *&v58 = v7;
    *(&v58 + 1) = v8;
    v59 = v9;
    v60 = v10;
    v61 = v11;
    sub_BABD0();
    v16 = *(&v52 + 1);
  }

  else
  {
    *&v58 = v14;
    *(&v58 + 1) = v15;
    sub_BABD0();
    v16 = v51;
  }

  v17 = v1 + v3[15];
  v18 = *(v17 + 16);
  v51 = *v17;
  *&v52 = v18;
  sub_2E50(&qword_F8AE0, &unk_C3C60);
  sub_BABF0();
  v19 = *(&v58 + 1);
  v45 = v58;
  v20 = v59;
  v21 = v60;
  *&v58 = v7;
  *(&v58 + 1) = v8;
  v59 = v9;
  v60 = v10;
  v61 = v11;
  sub_BABD0();
  v22 = v51;
  v23 = v52;
  v24 = v1 + v3[8];
  v25 = *v24;
  v26 = *(v24 + 8);
  LOBYTE(v58) = v25;
  *(&v58 + 1) = v26;
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  v27 = sub_9E5DC(v51, *&v22, *(&v22 + 1), *&v23, *(&v23 + 1));
  v29 = v28;
  v30 = v1 + v3[11];
  v31 = *(v30 + 16);
  v58 = *v30;
  v59 = v31;
  sub_BABD0();
  v32 = v51;
  v33 = v48;
  sub_A2438(v1, v48, type metadata accessor for LiveCaptionsRootView);
  v34 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v35 = swift_allocObject();
  sub_A2628(v33, v35 + v34, type metadata accessor for LiveCaptionsRootView);
  type metadata accessor for CGSize(0);
  v51 = 0uLL;
  sub_BABC0();
  v51 = xmmword_C28F0;
  LOBYTE(v52) = 0;
  *(&v52 + 1) = *v50;
  DWORD1(v52) = *&v50[3];
  *(&v52 + 1) = v45;
  *&v53 = v19;
  *(&v53 + 1) = v20;
  *&v54 = v21;
  *(&v54 + 1) = v27;
  *v55 = v29;
  *&v55[8] = v32;
  *&v55[24] = v12;
  *v56 = v16;
  *&v56[8] = v58;
  *&v56[24] = v59;
  *&v57 = sub_A29A8;
  *(&v57 + 1) = v35;
  v58 = xmmword_C28F0;
  LOBYTE(v59) = 0;
  HIDWORD(v59) = *&v50[3];
  *(&v59 + 1) = *v50;
  v60 = v45;
  v61 = v19;
  v62 = v20;
  v63 = v21;
  v64 = v27;
  v65 = v29;
  v66 = v32;
  v67 = v12;
  v68 = __PAIR128__(*&v56[8], v16);
  v69 = *&v56[16];
  v70 = sub_A29A8;
  v71 = v35;
  sub_81CF4(&v51, v49);
  sub_A29C0(&v58);
  sub_BADE0();
  sub_B9CF0();
  v36 = *&v55[16];
  v37 = *&v56[16];
  *(a1 + 96) = *v56;
  *(a1 + 112) = v37;
  v38 = v57;
  v39 = v52;
  v40 = v54;
  *(a1 + 32) = v53;
  *(a1 + 48) = v40;
  *(a1 + 64) = *v55;
  *(a1 + 80) = v36;
  *a1 = v51;
  *(a1 + 16) = v39;
  v41 = v49[0];
  v42 = v49[1];
  *(a1 + 128) = v38;
  *(a1 + 144) = v41;
  result = v49[2];
  *(a1 + 160) = v42;
  *(a1 + 176) = result;
  return result;
}

double sub_996C0(double a1, double a2, double a3)
{
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FA710, &unk_C0CA0);
  sub_BABD0();
  if (v9 != 0.0)
  {
    v5 = [objc_opt_self() mainScreen];
    [v5 bounds];
    v7 = v6;

    sub_BABD0();
    a3 = v7 - v9;
  }

  return a3 + a1;
}

uint64_t sub_997B0(double a1, double a2, double a3, double a4)
{
  v8 = sub_B9F50();
  __chkstk_darwin(v8);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_99900(v10, a1, a2, a3, a4);
  sub_2E50(&qword_FB918, &qword_C2C98);
  sub_A1530();
  sub_A00C0(&qword_F8E40, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  sub_BA810();
  return sub_A1E88(v10, &type metadata accessor for RoundedRectangle);
}

uint64_t sub_99900@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  if (v18 == 4)
  {
    if (qword_F8248 != -1)
    {
      swift_once();
    }

    v10 = *&qword_100C00;
  }

  else
  {
    sub_BABD0();
    if (v18 == 3)
    {
      v11 = COERCE_DOUBLE(sub_8E204());
      if (v12)
      {
        v10 = 24.0;
      }

      else
      {
        v10 = v11;
      }
    }

    else if (_UISolariumEnabled())
    {
      sub_BABD0();
      sub_9E5DC(v18, a2, a3, a4, a5);
      AXCornerRadiusForBackgroundWithSize();
      v10 = v13;
    }

    else
    {
      sub_BABD0();
      v10 = 24.0;
    }
  }

  v14 = *(sub_B9F50() + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = sub_BA270();
  result = (*(*(v16 - 8) + 104))(a1 + v14, v15, v16);
  *a1 = v10;
  a1[1] = v10;
  return result;
}

uint64_t sub_99AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_BAD70();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = (a2 + *(type metadata accessor for LiveCaptionsRootView(0) + 32));
  v11 = *v10;
  v12 = *(v10 + 1);
  v16[16] = v11;
  v17 = v12;
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  if (v16[15] == 3)
  {
    sub_BAD60();
  }

  else
  {
    sub_BAD40();
  }

  v13 = sub_BA640();
  v14 = a3 + *(sub_2E50(&qword_FB970, &qword_C2CF0) + 36);
  (*(v7 + 32))(v14, v9, v6);
  *(v14 + *(sub_2E50(&qword_FB540, &unk_C2670) + 36)) = v13;
  return sub_57A0(a1, a3, &qword_FB918, &qword_C2C98);
}

double sub_99C7C()
{
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  result = 1.0;
  if (LOBYTE(v1) == 4)
  {
    sub_2E50(&qword_F9018, &qword_C2C10);
    sub_BABD0();
    return v1;
  }

  return result;
}

double sub_99D3C(uint64_t a1)
{
  v2 = type metadata accessor for LiveCaptionsRootView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = *(a1 + *(v5 + 120));
  sub_A2438(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveCaptionsRootView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_A2628(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LiveCaptionsRootView);
  v9 = (v6 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsAdjustFrame);
  *v9 = sub_A1DF0;
  v9[1] = v8;

  return result;
}

void sub_99E6C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = type metadata accessor for LiveCaptionsRootView(0);
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  v12 = qword_100C30;
  sub_A2438(a1, v10, type metadata accessor for LiveCaptionsRootView);
  if (!os_log_type_enabled(v12, v11))
  {
    sub_A1E88(v10, type metadata accessor for LiveCaptionsRootView);
    goto LABEL_16;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v32 = v14;
  *v13 = 136315138;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v15 = v33;
  if (!(v33 >> 62))
  {
    v16 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_14:

    v21 = 0;
    v23 = 0;
    goto LABEL_15;
  }

  v16 = sub_BB650();
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_6:
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v19 = sub_BB590();
    goto LABEL_11;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v18 >= *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_22:
    __break(1u);
    return;
  }

  v19 = *(v15 + 8 * v18 + 32);
LABEL_11:
  v20 = v19;

  v21 = sub_B96D0();
  v23 = v22;

LABEL_15:
  v33 = v21;
  v34 = v23;
  sub_2E50(&qword_F86B0, &qword_BDB80);
  v24 = sub_BAFF0();
  v26 = v25;
  sub_A1E88(v10, type metadata accessor for LiveCaptionsRootView);
  v27 = sub_7A1D8(v24, v26, &v32);

  *(v13 + 4) = v27;
  _os_log_impl(&dword_0, v12, v11, "RootView: onChange provider.captions %s", v13, 0xCu);
  sub_28020(v14);

LABEL_16:
  v28 = (a1 + *(v8 + 32));
  v29 = *v28;
  v30 = *(v28 + 1);
  LOBYTE(v33) = v29;
  v34 = v30;
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  if (v32 != 4)
  {
    sub_95574(a4, a5);
  }
}

void sub_9A1D0(CGFloat *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_B9A10();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v72 = a1[1];
  v17 = a1[2];
  v18 = a1[3];
  v19 = type metadata accessor for LiveCaptionsRootView(0);
  v20 = (a2 + v19[11]);
  v21 = *v20;
  v22 = v20[2];
  v73 = v20[1];
  v74 = v21;
  *&v80 = v21;
  *(&v80 + 1) = v73;
  v81 = v22;
  v23 = sub_2E50(&qword_F8AE0, &unk_C3C60);
  sub_BABD0();
  v76 = v79;
  v24 = v78;
  v25 = (a2 + v19[25]);
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v80) = v26;
  *(&v80 + 1) = v27;
  sub_2E50(&qword_FB820, &qword_C2B80);
  sub_BABD0();
  v28 = 0.0;
  v29 = 0.0;
  if (v78 != 1)
  {
    v30 = (a2 + v19[8]);
    v31 = *v30;
    v32 = *(v30 + 1);
    LOBYTE(v80) = v31;
    *(&v80 + 1) = v32;
    sub_2E50(&qword_FB8C0, &qword_C2C08);
    sub_BABD0();
    v28 = sub_9E5DC(v78, a3, a4, a5, a6);
  }

  if (qword_F8258 != -1)
  {
    *&v77 = v28;
    *(&v77 + 1) = v29;
    swift_once();
    v29 = *(&v77 + 1);
    v28 = *&v77;
  }

  v33 = static LiveSpeechCaptionsViewsCoordinator.shared;
  if (v28 == 0.0 && v29 == 0.0)
  {
    v28 = *(static LiveSpeechCaptionsViewsCoordinator.shared + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
    v29 = *(static LiveSpeechCaptionsViewsCoordinator.shared + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
  }

  *&v77 = v28;
  *(&v77 + 1) = v29;
  sub_B95F0();
  v34 = sub_B9A00();
  v35 = sub_BB2F0();
  v36 = os_log_type_enabled(v34, v35);
  v75 = a5;
  v71 = *&v24;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v67 = v15;
    v38 = v37;
    v39 = swift_slowAlloc();
    v68 = v33;
    v78 = v39;
    *v38 = 136315394;
    *&v80 = v24;
    *(&v80 + 1) = v76;
    type metadata accessor for CGSize(0);
    v70 = v22;
    v40 = sub_BAFF0();
    v66 = v12;
    v69 = v23;
    v42 = v13;
    v43 = sub_7A1D8(v40, v41, &v78);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    v80 = v77;
    v44 = sub_BAFF0();
    v46 = sub_7A1D8(v44, v45, &v78);

    *(v38 + 14) = v46;
    v22 = v70;
    _os_log_impl(&dword_0, v34, v35, "Calculate safeOffset offset: %s size: %s", v38, 0x16u);
    swift_arrayDestroy();
    v33 = v68;

    (*(v42 + 8))(v67, v66);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v47 = v18;
  v48 = a6;
  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v49 = a3;
  v50 = *&qword_100C08;
  v51 = a4;
  if (AXDeviceIsPad() && *(v33 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v50 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v82.origin.x = v16;
  v53 = v72;
  v82.origin.y = v72;
  v82.size.width = v17;
  v82.size.height = v47;
  Height = CGRectGetHeight(v82);
  v55 = v76;
  if (v76 < v53 + Height + -37.3333333 && HasJindo != 0)
  {
    v83.origin.x = v16;
    v83.origin.y = v53;
    v83.size.width = v17;
    v83.size.height = v47;
    v55 = v53 + CGRectGetHeight(v83) + -37.3333333;
  }

  v57 = *(&v77 + 1);
  v58 = v75 - *&v77 + v50;
  if (v58 >= v71)
  {
    v58 = v71;
  }

  v59 = sub_3C824(v58, v55, *&v77, *(&v77 + 1), v49, v51, v75);
  if (v48 - v57 + -4.0 < v60)
  {
    v60 = v48 - v57 + -4.0;
  }

  if (v59 < -v50)
  {
    v59 = -v50;
  }

  v62 = v73;
  v61 = v74;
  *&v80 = v74;
  *(&v80 + 1) = v73;
  v81 = v22;
  if (v60 < 0.0)
  {
    v60 = 0.0;
  }

  *&v78 = v59;
  v79 = v60;
  sub_BABE0();
  *&v80 = v61;
  *(&v80 + 1) = v62;
  v81 = v22;
  sub_BABD0();
  v63 = (a2 + v19[13]);
  v64 = *(v63 + 2);
  v80 = *v63;
  v81 = v64;
  sub_BABE0();
}

id sub_9A780()
{
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  if (LOBYTE(v2) == 3 || (sub_BABD0(), LOBYTE(v2) == 2) || (sub_BABD0(), LOBYTE(v2) != 1))
  {
    v0 = 1;
  }

  else if (AXDeviceIsPad())
  {
    v0 = 2;
  }

  else
  {
    v0 = 3;
  }

  sub_2E50(&qword_FB868, &qword_C2BD0);
  sub_BABD0();
  return sub_93D34(v0, v2, v3, v4, v5);
}

BOOL sub_9A8B8()
{
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB820, &qword_C2B80);
  v0 = sub_BABD0();
  if (v2)
  {
    __chkstk_darwin(v0);
    sub_BAE30();
    sub_B9D80();
  }

  return v2 != 0;
}

id sub_9A9A8(uint64_t a1)
{
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  if (LOBYTE(v3) == 1)
  {
    if (AXDeviceIsPad())
    {
      v1 = 2;
    }

    else
    {
      v1 = 3;
    }
  }

  else
  {
    v1 = 1;
  }

  sub_2E50(&qword_FB868, &qword_C2BD0);
  sub_BABD0();
  return sub_93D34(v1, v3, v4, v5, v6);
}

id sub_9AA8C(uint64_t a1)
{
  v2 = type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB868, &qword_C2BD0);
  sub_BABD0();
  sub_BAE30();
  sub_B9D80();

  sub_915B8();
  LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_pip);
  return [*(a1 + *(v2 + 92)) idleSleepTimerDisabled:{0, sub_9D610()}];
}

void sub_9AB88(uint64_t a1)
{
  v65 = sub_B9A10();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LiveCaptionsRootView(0);
  v5 = (a1 + v4[11]);
  v6 = v5[1];
  v7 = v5[2];
  v72 = *v5;
  v85 = v72;
  v86 = v6;
  v71 = v6;
  v87 = v7;
  sub_2E50(&qword_F8AE0, &unk_C3C60);
  sub_BABD0();
  v8 = v81;
  v77 = v82;
  v9 = (a1 + v4[17]);
  v10 = v9[1];
  v11 = v9[2];
  v12 = v9[3];
  v13 = *(v9 + 4);
  v70 = *v9;
  v85 = v70;
  v86 = v10;
  v69 = v10;
  v68 = v11;
  v87 = v11;
  v88 = v12;
  v67 = v12;
  v89 = v13;
  sub_2E50(&qword_FB868, &qword_C2BD0);
  sub_BABD0();
  v14 = v81;
  v15 = v82;
  v17 = v83;
  v16 = v84;
  v18 = (a1 + v4[25]);
  v19 = *v18;
  v20 = v18[1];
  LOBYTE(v85) = v19;
  v86 = v20;
  sub_2E50(&qword_FB820, &qword_C2B80);
  sub_BABD0();
  v21 = 0.0;
  v22 = 0.0;
  if (LOBYTE(v81) != 1)
  {
    v23 = (a1 + v4[8]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v85) = v24;
    v86 = v25;
    sub_2E50(&qword_FB8C0, &qword_C2C08);
    sub_BABD0();
    v21 = sub_9E5DC(LOBYTE(v81), v14, v15, v17, v16);
    v22 = v26;
  }

  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v76 = static LiveSpeechCaptionsViewsCoordinator.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v21 == 0.0 && v22 == 0.0)
  {
    v21 = *(v76 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
    v22 = *(v76 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
  }

  v27 = v86;
  v75 = v85;
  v74 = v87;
  v73 = v88;
  sub_B95F0();
  v28 = sub_B9A00();
  v29 = v3;
  v30 = sub_BB2F0();
  v31 = os_log_type_enabled(v28, v30);
  v66 = v15;
  v63 = v22;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *&v59 = COERCE_DOUBLE(swift_slowAlloc());
    v81 = *&v59;
    *v32 = 136315394;
    v85 = v8;
    v86 = v77;
    type metadata accessor for CGSize(0);
    v62 = v7;
    v33 = sub_BAFF0();
    v60 = v29;
    v35 = sub_7A1D8(v33, v34, &v81);
    v61 = a1;
    v36 = v35;

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v85 = v21;
    v86 = v22;
    v37 = sub_BAFF0();
    v39 = sub_7A1D8(v37, v38, &v81);
    a1 = v61;

    *(v32 + 14) = v39;
    v7 = v62;
    _os_log_impl(&dword_0, v28, v30, "Calculate safeOffset offset: %s size: %s", v32, 0x16u);
    swift_arrayDestroy();

    (*(v64 + 8))(v60, v65);
  }

  else
  {

    (*(v64 + 8))(v29, v65);
  }

  v40 = v76;
  v41 = v17;
  v42 = v14;
  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v43 = v16;
  v44 = *&qword_100C08;
  if (AXDeviceIsPad() && *(v40 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v44 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v90.origin.x = v75;
  v90.origin.y = v27;
  v90.size.width = v74;
  v90.size.height = v73;
  Height = CGRectGetHeight(v90);
  v47 = v77;
  if (v77 < v27 + Height + -37.3333333 && HasJindo)
  {
    v91.origin.x = v75;
    v91.origin.y = v27;
    v91.size.width = v74;
    v91.size.height = v73;
    v47 = v27 + CGRectGetHeight(v91) + -37.3333333;
  }

  v48 = v41 - v21 + v44;
  if (v48 >= v8)
  {
    v48 = v8;
  }

  v49 = v63;
  v50 = sub_3C824(v48, v47, v21, v63, v42, v66, v41);
  if (v43 - v49 + -4.0 < v51)
  {
    v51 = v43 - v49 + -4.0;
  }

  if (v50 < -v44)
  {
    v50 = -v44;
  }

  v85 = v72;
  v86 = v71;
  v87 = v7;
  if (v51 < 0.0)
  {
    v51 = 0.0;
  }

  v81 = v50;
  v82 = v51;
  sub_BABE0();
  v85 = v70;
  v86 = v69;
  v87 = v68;
  v88 = v67;
  v89 = v13;
  sub_BABD0();
  sub_9B2B4(v81, v82, v83, v84);
  v53 = v52;
  v54 = (a1 + v4[15]);
  v56 = v54[1];
  v57 = v54[2];
  v85 = *v54;
  v55 = v85;
  v86 = v56;
  v87 = v57;

  sub_BABD0();
  v81 = v55;
  v82 = v56;
  v83 = v57;
  v78 = v80;
  v79 = v53;
  sub_BABE0();
}

void sub_9B2B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_B9A10();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LiveCaptionsRootView(0);
  v15 = (v4 + v14[11]);
  v16 = v15[2];
  v72 = *v15;
  v73 = v16;
  sub_2E50(&qword_F8AE0, &unk_C3C60);
  sub_BABD0();
  v70 = v76;
  v71 = v75;
  v17 = (v4 + v14[15]);
  v18 = *(v17 + 1);
  v19 = v17[2];
  v64 = *v17;
  *&v72 = v64;
  *(&v72 + 1) = v18;
  v63 = v18;
  v73 = v19;
  sub_BABD0();
  v21 = v75;
  v20 = v76;
  v22 = (v4 + v14[25]);
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v72) = v23;
  *(&v72 + 1) = v24;
  sub_2E50(&qword_FB820, &qword_C2B80);
  sub_BABD0();
  v25 = 0.0;
  v26 = 0.0;
  if (LOBYTE(v75) != 1)
  {
    if (v21 == 0.0)
    {
      v25 = v21;
      v26 = v20;
      if (v20 == 0.0)
      {
        v27 = (v4 + v14[8]);
        v28 = *v27;
        v29 = *(v27 + 1);
        LOBYTE(v72) = v28;
        *(&v72 + 1) = v29;
        sub_2E50(&qword_FB8C0, &qword_C2C08);
        sub_BABD0();
        v25 = sub_9E5DC(LOBYTE(v75), a1, a2, a3, a4);
        v26 = v30;
      }
    }

    else
    {
      v25 = v21;
      v26 = v20;
    }
  }

  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v69 = static LiveSpeechCaptionsViewsCoordinator.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v66 = a3;
  v65 = a1;
  if (v25 == 0.0 && v26 == 0.0)
  {
    v25 = *(v69 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
    v26 = *(v69 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
  }

  v31 = *(&v72 + 1);
  v32 = v73;
  v67 = v74;
  v68 = *&v72;
  sub_B95F0();
  v33 = sub_B9A00();
  v34 = sub_BB2F0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *&v36 = COERCE_DOUBLE(swift_slowAlloc());
    v60 = v13;
    v75 = *&v36;
    *v35 = 136315394;
    *&v72 = v71;
    *(&v72 + 1) = v70;
    type metadata accessor for CGSize(0);
    v62 = v19;
    v37 = sub_BAFF0();
    v59 = v10;
    v61 = v14;
    v39 = v11;
    v40 = sub_7A1D8(v37, v38, &v75);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    *&v72 = v25;
    *(&v72 + 1) = v26;
    v41 = sub_BAFF0();
    v43 = sub_7A1D8(v41, v42, &v75);
    v14 = v61;

    *(v35 + 14) = v43;
    v19 = v62;
    _os_log_impl(&dword_0, v33, v34, "Calculate safeOffset offset: %s size: %s", v35, 0x16u);
    swift_arrayDestroy();

    (*(v39 + 8))(v60, v59);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v44 = a2;
  v45 = v69;
  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v46 = *&qword_100C08;
  if (AXDeviceIsPad() && *(v45 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v46 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v77.size.height = v67;
  v77.origin.x = v68;
  v77.origin.y = v31;
  v77.size.width = v32;
  Height = CGRectGetHeight(v77);
  v49 = v70;
  if (v70 < v31 + Height + -37.3333333 && HasJindo)
  {
    v78.size.height = v67;
    v78.origin.x = v68;
    v78.origin.y = v31;
    v78.size.width = v32;
    v49 = v31 + CGRectGetHeight(v78) + -37.3333333;
  }

  v50 = v66 - v25 + v46;
  if (v50 >= v71)
  {
    v50 = v71;
  }

  sub_3C824(v50, v49, v25, v26, v65, v44, v66);
  v52 = a4 - v26 + -4.0;
  if (v52 >= v51)
  {
    v52 = v51;
  }

  if (v52 >= 0.0)
  {
    v53 = v52;
  }

  else
  {
    v53 = 0.0;
  }

  *&v72 = v64;
  *(&v72 + 1) = v63;
  v73 = v19;
  sub_BABD0();
  if (v53 + v76 <= a4)
  {
    v54 = v76;
  }

  else
  {
    v54 = a4 - v53;
  }

  v55 = (v5 + v14[16]);
  v56 = *v55;
  v57 = v55[1];
  *&v72 = *v55;
  *(&v72 + 1) = v57;
  sub_2E50(&qword_FA710, &unk_C0CA0);
  sub_BABD0();
  if (v75 != 0.0)
  {
    *&v72 = v56;
    *(&v72 + 1) = v57;
    sub_BABD0();
    if (v75 - v54 < v53)
    {
      *&v72 = v56;
      *(&v72 + 1) = v57;
      sub_BABD0();
      if (v75 < v54)
      {
        *&v72 = v56;
        *(&v72 + 1) = v57;
        sub_BABD0();
      }
    }
  }

  sub_9EA78();
}

double sub_9B970()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v0 = AXLTSettingsManager.buttonScaledHeight.getter();
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABD0();
  v1 = 12.0;
  if (LOBYTE(v5) == 3)
  {
    v1 = 24.0;
  }

  v2 = v0 + v1 + 8.0 + -1.0;
  sub_2E50(&qword_F96C8, &qword_BF3C0);
  sub_BABD0();
  if (LOBYTE(v5))
  {
    v3 = v2;
  }

  else
  {
    v3 = v2 + v2;
  }

  sub_2E50(&qword_FB868, &qword_C2BD0);
  sub_BABD0();
  sub_BABD0();
  return sub_9E5DC(LOBYTE(v5), v5, v6, v7, v8) - v3;
}

double sub_9BB34(uint64_t a1)
{
  sub_BAE30();
  sub_B9D80();

  return result;
}

void sub_9BBA8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = sub_B9A10();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LiveCaptionsRootView(0);
  v16 = (a1 + v15[11]);
  v17 = v16[1];
  v18 = v16[2];
  v58 = *v16;
  v65 = v58;
  v66 = v17;
  v57 = v17;
  v67 = v18;
  sub_2E50(&qword_F8AE0, &unk_C3C60);
  sub_BABD0();
  v19 = v69;
  v71 = v70;
  v20 = (a1 + v15[25]);
  v21 = *v20;
  v22 = v20[1];
  LOBYTE(v65) = v21;
  v66 = v22;
  sub_2E50(&qword_FB820, &qword_C2B80);
  sub_BABD0();
  v23 = 0.0;
  v24 = 0.0;
  if (LOBYTE(v69) != 1)
  {
    v25 = (a1 + v15[8]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v65) = v26;
    v66 = v27;
    sub_2E50(&qword_FB8C0, &qword_C2C08);
    sub_BABD0();
    v23 = sub_9E5DC(LOBYTE(v69), a2, a3, a4, a5);
    v24 = v28;
  }

  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v64 = static LiveSpeechCaptionsViewsCoordinator.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v60 = a3;
  v61 = a5;
  v59 = a2;
  if (v23 == 0.0 && v24 == 0.0)
  {
    v23 = *(v64 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
    v24 = *(v64 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
  }

  v29 = v66;
  v30 = v67;
  v62 = v68;
  v63 = v65;
  sub_B95F0();
  v31 = sub_B9A00();
  v32 = sub_BB2F0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *&v34 = COERCE_DOUBLE(swift_slowAlloc());
    v54 = v14;
    v69 = *&v34;
    *v33 = 136315394;
    v65 = v19;
    v66 = v71;
    type metadata accessor for CGSize(0);
    v56 = v5;
    v35 = sub_BAFF0();
    v53 = v11;
    v55 = v18;
    v37 = sub_7A1D8(v35, v36, &v69);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    v65 = v23;
    v66 = v24;
    v38 = sub_BAFF0();
    v40 = sub_7A1D8(v38, v39, &v69);

    *(v33 + 14) = v40;
    v18 = v55;
    _os_log_impl(&dword_0, v31, v32, "Calculate safeOffset offset: %s size: %s", v33, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v54, v53);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v41 = a4;
  v42 = v64;
  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v43 = *&qword_100C08;
  if (AXDeviceIsPad() && *(v42 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v43 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v72.size.height = v62;
  v72.origin.x = v63;
  v72.origin.y = v29;
  v72.size.width = v30;
  Height = CGRectGetHeight(v72);
  v46 = v71;
  if (v71 < v29 + Height + -37.3333333 && HasJindo)
  {
    v73.size.height = v62;
    v73.origin.x = v63;
    v73.origin.y = v29;
    v73.size.width = v30;
    v46 = v29 + CGRectGetHeight(v73) + -37.3333333;
  }

  v47 = v41 - v23 + v43;
  if (v47 >= v19)
  {
    v47 = v19;
  }

  v48 = v41;
  v49 = v61;
  v50 = sub_3C824(v47, v46, v23, v24, v59, v60, v48);
  if (v49 - v24 + -4.0 < v51)
  {
    v51 = v49 - v24 + -4.0;
  }

  if (v50 < -v43)
  {
    v50 = -v43;
  }

  v65 = v58;
  v66 = v57;
  v67 = v18;
  if (v51 < 0.0)
  {
    v51 = 0.0;
  }

  v69 = v50;
  v70 = v51;
  sub_BABE0();
}

double sub_9C14C(uint64_t a1, char a2)
{
  type metadata accessor for LiveCaptionsRootView(0);
  sub_2E50(&qword_FB820, &qword_C2B80);
  sub_BABE0();
  return result;
}

void sub_9C1D0(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v142 = a4;
  v133 = a3;
  v10 = type metadata accessor for LiveCaptionsRootView(0);
  __chkstk_darwin(v10);
  v12 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_B9A10();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v132 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v128 = &v113 - v15;
  v16 = (a1 + v10[8]);
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v139) = *v16;
  *(&v139 + 1) = v18;
  *&v19 = COERCE_DOUBLE(sub_2E50(&qword_FB8C0, &qword_C2C08));
  sub_BABD0();
  v131 = a5;
  if (v136 == 4)
  {
    v20 = (a1 + v10[9]);
    v21 = *v20;
    v22 = *(v20 + 1);
    LOBYTE(v139) = v21;
    *(&v139 + 1) = v22;
    sub_BABD0();
    LOBYTE(v139) = v17;
    *(&v139 + 1) = v18;
    v127 = *&v19;
    sub_BABE0();
    v23 = (a1 + v10[12]);
    v24 = v23[2];
    v139 = *v23;
    v140 = v24;
    v25 = sub_2E50(&qword_F8AE0, &unk_C3C60);
    sub_BABD0();
    v26 = *(&v136 + 1);
    v27 = (a1 + v10[11]);
    v28 = *(v27 + 1);
    v30 = v27[2];
    *&v139 = *v27;
    v29 = v139;
    *(&v139 + 1) = v28;
    v140 = v30;

    sub_BABD0();
    *&v136 = v29;
    *(&v136 + 1) = v28;
    v137 = v30;
    v134 = v138;
    v135 = v26;
    sub_BABE0();
    *&v139 = v29;
    *(&v139 + 1) = v28;
    v114 = v28;
    v115 = v30;
    v140 = v30;
    v126 = v25;
    sub_BABD0();
    v125 = *(&v136 + 1);
    v31 = *&v136;
    v32 = (a1 + v10[25]);
    v33 = *v32;
    v34 = *(v32 + 1);
    LOBYTE(v139) = v33;
    *(&v139 + 1) = v34;
    sub_2E50(&qword_FB820, &qword_C2B80);
    sub_BABD0();
    v35 = 0.0;
    v36 = 0.0;
    if (v136 != 1)
    {
      LOBYTE(v139) = v17;
      *(&v139 + 1) = v18;
      sub_BABD0();
      v35 = sub_9E5DC(v136, v133, v142, a5, a6);
      v36 = v37;
    }

    v116 = v12;
    v38 = v128;
    if (qword_F8258 != -1)
    {
      swift_once();
    }

    v124 = static LiveSpeechCaptionsViewsCoordinator.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (v35 == 0.0 && v36 == 0.0)
    {
      v35 = *(v124 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
      v36 = *(v124 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
    }

    v39 = *(&v139 + 1);
    v123 = v139;
    v122 = v140;
    v121 = v141;
    sub_B95F0();
    v40 = sub_B9A00();
    v41 = sub_BB2F0();
    v42 = os_log_type_enabled(v40, v41);
    v118 = v17;
    v117 = v18;
    if (v42)
    {
      v43 = swift_slowAlloc();
      *&v136 = swift_slowAlloc();
      *v43 = 136315394;
      *&v139 = v31;
      *(&v139 + 1) = v125;
      type metadata accessor for CGSize(0);
      v44 = sub_BAFF0();
      v46 = sub_7A1D8(v44, v45, &v136);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2080;
      *&v139 = v35;
      *(&v139 + 1) = v36;
      v47 = sub_BAFF0();
      v49 = sub_7A1D8(v47, v48, &v136);

      *(v43 + 14) = v49;
      _os_log_impl(&dword_0, v40, v41, "Calculate safeOffset offset: %s size: %s", v43, 0x16u);
      swift_arrayDestroy();
      v18 = v117;

      (*(v129 + 8))(v128, v130);
    }

    else
    {

      (*(v129 + 8))(v38, v130);
    }

    v58 = v116;
    v59 = v124;
    if (qword_F8250 != -1)
    {
      swift_once();
    }

    v60 = *&qword_100C08;
    if (AXDeviceIsPad() && *(v59 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
    {
      v60 = 0.0;
    }

    HasJindo = AXDeviceHasJindo();
    *&v143.origin.x = v123;
    v143.origin.y = v39;
    v143.size.width = v122;
    v143.size.height = v121;
    Height = CGRectGetHeight(v143);
    v63 = v125;
    if (v125 < v39 + Height + -37.3333333 && HasJindo)
    {
      *&v144.origin.x = v123;
      v144.origin.y = v39;
      v144.size.width = v122;
      v144.size.height = v121;
      v63 = v39 + CGRectGetHeight(v144) + -37.3333333;
    }

    a5 = v131;
    v64 = v131 - v35 + v60;
    if (v64 >= v31)
    {
      v64 = v31;
    }

    v65 = sub_3C824(v64, v63, v35, v36, v133, v142, v131);
    if (a6 - v36 + -4.0 < v66)
    {
      v66 = a6 - v36 + -4.0;
    }

    if (v65 < -v60)
    {
      v65 = -v60;
    }

    *&v139 = v29;
    *(&v139 + 1) = v114;
    v140 = v115;
    if (v66 < 0.0)
    {
      v66 = 0.0;
    }

    *&v136 = v65;
    *(&v136 + 1) = v66;
    sub_BABE0();

    v67 = sub_BB2F0();
    if (qword_F8278 != -1)
    {
      swift_once();
    }

    v68 = qword_100C30;
    sub_A2438(a1, v58, type metadata accessor for LiveCaptionsRootView);
    if (os_log_type_enabled(v68, v67))
    {
      v69 = v58;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v138 = v71;
      *v70 = 136315138;
      v72 = v58 + v10[11];
      v73 = *(v72 + 16);
      v139 = *v72;
      v140 = v73;
      sub_BABD0();
      v139 = v136;
      type metadata accessor for CGSize(0);
      v74 = sub_BAFF0();
      v76 = v75;
      v77 = v69;
      v18 = v117;
      sub_A1E88(v77, type metadata accessor for LiveCaptionsRootView);
      v78 = sub_7A1D8(v74, v76, &v138);

      *(v70 + 4) = v78;
      _os_log_impl(&dword_0, v68, v67, "switchToState windowOffset: %s", v70, 0xCu);
      sub_28020(v71);
    }

    else
    {
      sub_A1E88(v58, type metadata accessor for LiveCaptionsRootView);
    }

    v57 = v132;
    v56 = v118;
  }

  else
  {
    LOBYTE(v139) = v17;
    *(&v139 + 1) = v18;
    LOBYTE(v136) = a2;
    sub_BABE0();
    if (a2 == 4)
    {
      v50 = (a1 + v10[9]);
      v51 = *v50;
      v52 = *(v50 + 1);
      LOBYTE(v139) = v51;
      *(&v139 + 1) = v52;
      sub_BABD0();
      a2 = v136;
    }

    v53 = (a1 + v10[9]);
    v54 = *v53;
    v55 = *(v53 + 1);
    LOBYTE(v139) = v54;
    *(&v139 + 1) = v55;
    LOBYTE(v136) = a2;
    sub_BABE0();
    v56 = v17;
    v57 = v132;
  }

  LOBYTE(v139) = v56;
  *(&v139 + 1) = v18;
  sub_BABD0();
  if (v136 != 3)
  {
    v79 = (a1 + v10[11]);
    v80 = *v79;
    v81 = v79[1];
    v82 = *(v79 + 2);
    v126 = *&v80;
    *&v139 = v80;
    *(&v139 + 1) = v81;
    v125 = v81;
    v124 = v82;
    v140 = *&v82;
    v123 = sub_2E50(&qword_F8AE0, &unk_C3C60);
    sub_BABD0();
    v84 = *(&v136 + 1);
    v83 = *&v136;
    v85 = (a1 + v10[25]);
    v86 = *v85;
    v87 = *(v85 + 1);
    LOBYTE(v139) = v86;
    *(&v139 + 1) = v87;
    sub_2E50(&qword_FB820, &qword_C2B80);
    sub_BABD0();
    v88 = 0.0;
    v89 = 0.0;
    if (v136 != 1)
    {
      LOBYTE(v139) = v56;
      *(&v139 + 1) = v18;
      sub_BABD0();
      v88 = sub_9E5DC(v136, v133, v142, a5, a6);
      v89 = v90;
    }

    if (qword_F8258 != -1)
    {
      swift_once();
    }

    v91 = static LiveSpeechCaptionsViewsCoordinator.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    v120 = v10;
    v119 = a6;
    if (v88 == 0.0 && v89 == 0.0)
    {
      v88 = *(v91 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
      v89 = *(v91 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
    }

    v92 = *(&v139 + 1);
    v128 = v139;
    v93 = v141;
    v127 = v140;
    sub_B95F0();
    v94 = sub_B9A00();
    v95 = sub_BB2F0();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *&v136 = swift_slowAlloc();
      *v96 = 136315394;
      *&v139 = v83;
      *(&v139 + 1) = v84;
      type metadata accessor for CGSize(0);
      v97 = sub_BAFF0();
      v99 = v91;
      v100 = sub_7A1D8(v97, v98, &v136);

      *(v96 + 4) = v100;
      *(v96 + 12) = 2080;
      *&v139 = v88;
      *(&v139 + 1) = v89;
      v101 = sub_BAFF0();
      v103 = sub_7A1D8(v101, v102, &v136);
      v91 = v99;

      *(v96 + 14) = v103;
      _os_log_impl(&dword_0, v94, v95, "Calculate safeOffset offset: %s size: %s", v96, 0x16u);
      swift_arrayDestroy();

      (*(v129 + 8))(v132, v130);
    }

    else
    {

      (*(v129 + 8))(v57, v130);
    }

    v10 = v120;
    if (qword_F8250 != -1)
    {
      swift_once();
    }

    v104 = *&qword_100C08;
    if (AXDeviceIsPad() && *(v91 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
    {
      v104 = 0.0;
    }

    v105 = AXDeviceHasJindo();
    *&v145.origin.x = v128;
    v145.origin.y = v92;
    v145.size.width = v127;
    v145.size.height = v93;
    if (v84 < v92 + CGRectGetHeight(v145) + -37.3333333 && v105)
    {
      *&v146.origin.x = v128;
      v146.origin.y = v92;
      v146.size.width = v127;
      v146.size.height = v93;
      v84 = v92 + CGRectGetHeight(v146) + -37.3333333;
    }

    v106 = v131 - v88 + v104;
    if (v106 >= v83)
    {
      v106 = v83;
    }

    v107 = v119;
    v108 = sub_3C824(v106, v84, v88, v89, v133, v142, v131);
    if (v107 - v89 + -4.0 < v109)
    {
      v109 = v107 - v89 + -4.0;
    }

    if (v108 < -v104)
    {
      v108 = -v104;
    }

    *&v139 = v126;
    *(&v139 + 1) = v125;
    v140 = *&v124;
    if (v109 < 0.0)
    {
      v109 = 0.0;
    }

    *&v136 = v108;
    *(&v136 + 1) = v109;
    sub_BABE0();
  }

  sub_915B8();
  v110 = (a1 + v10[19]);
  v111 = *v110;
  v112 = v110[1];
  *&v139 = v111;
  *(&v139 + 1) = v112;
  *&v136 = 0x3FF0000000000000;
  sub_2E50(&qword_F9018, &qword_C2C10);
  sub_BABE0();
}

void sub_9D09C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for LiveCaptionsRootView(0);
  __chkstk_darwin(v6);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v49[-v10];
  v12 = sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  v13 = qword_100C30;
  sub_A2438(a2, v11, type metadata accessor for LiveCaptionsRootView);
  v14 = os_log_type_enabled(v13, v12);
  v51 = v13;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v50 = a1;
    v55 = v16;
    *v15 = 136315394;
    LOBYTE(v53) = v50;
    v17 = sub_BAFF0();
    v19 = sub_7A1D8(v17, v18, &v55);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = &v11[v6[12]];
    v21 = *(v20 + 2);
    v53 = *v20;
    v54 = v21;
    sub_2E50(&qword_F8AE0, &unk_C3C60);
    sub_BABD0();
    v53 = v52;
    type metadata accessor for CGSize(0);
    v22 = sub_BAFF0();
    v24 = v23;
    sub_A1E88(v11, type metadata accessor for LiveCaptionsRootView);
    v25 = sub_7A1D8(v22, v24, &v55);
    v13 = v51;

    *(v15 + 14) = v25;
    _os_log_impl(&dword_0, v13, v12, "switchToIcon direction: %s iconOffset: %s", v15, 0x16u);
    swift_arrayDestroy();
    a1 = v50;
  }

  else
  {
    sub_A1E88(v11, type metadata accessor for LiveCaptionsRootView);
  }

  sub_9A8B8();
  v26 = (a2 + v6[12]);
  v28 = v26[1];
  v29 = v26[2];
  *&v53 = *v26;
  v27 = v53;
  *(&v53 + 1) = v28;
  v54 = v29;
  sub_2E50(&qword_F8AE0, &unk_C3C60);
  sub_BABD0();
  sub_363B8(a1, *&v52, *(&v52 + 1), a3);
  *&v53 = v27;
  *(&v53 + 1) = v28;
  v54 = v29;
  *&v52 = v30;
  *(&v52 + 1) = v31;
  sub_BABE0();
  v32 = sub_BB2F0();
  sub_A2438(a2, v8, type metadata accessor for LiveCaptionsRootView);
  if (os_log_type_enabled(v13, v32))
  {
    v33 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v33 = 136315394;
    LOBYTE(v53) = a1;
    v34 = sub_BAFF0();
    v36 = sub_7A1D8(v34, v35, &v55);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    v37 = &v8[v6[12]];
    v38 = *(v37 + 2);
    v53 = *v37;
    v54 = v38;
    sub_BABD0();
    v53 = v52;
    type metadata accessor for CGSize(0);
    v39 = sub_BAFF0();
    v41 = v40;
    sub_A1E88(v8, type metadata accessor for LiveCaptionsRootView);
    v42 = sub_7A1D8(v39, v41, &v55);

    *(v33 + 14) = v42;
    _os_log_impl(&dword_0, v51, v32, "adjusted iconOffset: %s iconOffset: %s", v33, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_A1E88(v8, type metadata accessor for LiveCaptionsRootView);
  }

  v43 = (a2 + v6[8]);
  v44 = *v43;
  v45 = *(v43 + 1);
  LOBYTE(v53) = v44;
  *(&v53 + 1) = v45;
  LOBYTE(v52) = 4;
  sub_2E50(&qword_FB8C0, &qword_C2C08);
  sub_BABE0();
  v46 = (a2 + v6[19]);
  v47 = *v46;
  v48 = v46[1];
  *&v53 = v47;
  *(&v53 + 1) = v48;
  *&v52 = 0x3FF0000000000000;
  sub_2E50(&qword_F9018, &qword_C2C10);
  sub_BABE0();
}

double sub_9D610()
{
  v1 = v0;
  v2 = type metadata accessor for LiveCaptionsRootView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  sub_B99F0();
  v5 = v0 + *(v2 + 80);
  v7 = *(v5 + 8);
  aBlock = *v5;
  v6 = aBlock;
  v16 = v7;
  sub_2E50(&qword_F9C88, &qword_C2C00);
  sub_BABD0();
  [v21 invalidate];

  v8 = objc_opt_self();
  sub_A2438(v1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveCaptionsRootView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_A2628(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LiveCaptionsRootView);
  v19 = sub_A1288;
  v20 = v10;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_4E790;
  v18 = &unk_F2898;
  v11 = _Block_copy(&aBlock);

  v12 = [v8 scheduledTimerWithTimeInterval:0 repeats:v11 block:30.0];
  _Block_release(v11);
  aBlock = v6;
  v16 = v7;
  v21 = v12;
  sub_BABE0();
  return result;
}

void sub_9D8A4(uint64_t a1, char a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v60 = sub_B9A10();
  v15 = *(v60 - 8);
  __chkstk_darwin(v60);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0.0;
  if (a2)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = a6 - a8;
  }

  v20 = type metadata accessor for LiveCaptionsRootView(0);
  v21 = (a1 + v20[11]);
  v23 = v21[1];
  v24 = v21[2];
  v67 = *v21;
  *&v22 = v67;
  v68 = v23;
  v69 = v24;

  sub_2E50(&qword_F8AE0, &unk_C3C60);
  sub_BABD0();
  v73 = *&v22;
  v74 = v23;
  v75 = v24;
  v71 = v76[0];
  v72 = v19;
  sub_BABE0();
  v63 = v22;
  v67 = *&v22;
  v68 = v23;
  v62 = v23;
  v69 = v24;
  sub_BABD0();
  *&v25 = v73;
  v77 = v74;
  v26 = (a1 + v20[25]);
  v27 = *v26;
  v28 = v26[1];
  LOBYTE(v67) = v27;
  v68 = v28;
  sub_2E50(&qword_FB820, &qword_C2B80);
  sub_BABD0();
  v29 = 0.0;
  if (LOBYTE(v73) != 1)
  {
    v30 = (a1 + v20[8]);
    v31 = *v30;
    v32 = v30[1];
    LOBYTE(v67) = v31;
    v68 = v32;
    sub_2E50(&qword_FB8C0, &qword_C2C08);
    sub_BABD0();
    v18 = sub_9E5DC(LOBYTE(v73), a3, a4, a5, a6);
    v29 = v33;
  }

  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v34 = static LiveSpeechCaptionsViewsCoordinator.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v18 == 0.0 && v29 == 0.0)
  {
    v18 = *(v34 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
    v29 = *(v34 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
  }

  v35 = v68;
  v65 = v69;
  v66 = v67;
  v64 = v70;
  sub_B95F0();
  v36 = sub_B9A00();
  v37 = sub_BB2F0();
  v38 = os_log_type_enabled(v36, v37);
  v61 = v18;
  v59 = v29;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v73 = COERCE_DOUBLE(swift_slowAlloc());
    *v39 = 136315394;
    v67 = *&v25;
    v68 = v77;
    type metadata accessor for CGSize(0);
    v58 = v24;
    v57 = v34;
    v40 = sub_BAFF0();
    v56 = v17;
    v42 = sub_7A1D8(v40, v41, &v73);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    v67 = v18;
    v68 = v29;
    v43 = sub_BAFF0();
    v45 = sub_7A1D8(v43, v44, &v73);

    *(v39 + 14) = v45;
    v34 = v57;
    v24 = v58;
    _os_log_impl(&dword_0, v36, v37, "Calculate safeOffset offset: %s size: %s", v39, 0x16u);
    swift_arrayDestroy();

    (*(v15 + 8))(v56, v60);
  }

  else
  {

    (*(v15 + 8))(v17, v60);
  }

  v46 = *&v25;
  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v47 = *&qword_100C08;
  if (AXDeviceIsPad() && *(v34 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v47 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v78.size.width = v65;
  v78.origin.x = v66;
  v78.origin.y = v35;
  v78.size.height = v64;
  Height = CGRectGetHeight(v78);
  v50 = v77;
  if (v77 < v35 + Height + -37.3333333 && HasJindo)
  {
    v79.size.width = v65;
    v79.origin.x = v66;
    v79.origin.y = v35;
    v79.size.height = v64;
    v50 = v35 + CGRectGetHeight(v79) + -37.3333333;
  }

  v51 = a5;
  v52 = a5 - v61 + v47;
  if (v52 >= v46)
  {
    v52 = v46;
  }

  v53 = v59;
  v54 = sub_3C824(v52, v50, v61, v59, a3, a4, v51);
  if (a6 - v53 + -4.0 < v55)
  {
    v55 = a6 - v53 + -4.0;
  }

  if (v54 < -v47)
  {
    v54 = -v47;
  }

  v67 = *&v63;
  v68 = v62;
  v69 = v24;
  if (v55 < 0.0)
  {
    v55 = 0.0;
  }

  v73 = v54;
  v74 = v55;
  sub_BABE0();
}

void sub_9DED8(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v78 = a4;
  v79 = a5;
  v77 = a3;
  v11 = sub_B9A10();
  v72 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LiveCaptionsRootView(0);
  v15 = (v6 + v14[13]);
  v17 = v15[1];
  v18 = v15[2];
  v80 = *v15;
  v16 = v80;
  v81 = v17;
  v82 = v18;
  sub_2E50(&qword_F8AE0, &unk_C3C60);
  sub_BABD0();
  v19 = v86 + a1;
  v20 = (v6 + v14[11]);
  v22 = v20[1];
  v23 = v20[2];
  v80 = *v20;
  v21 = v80;
  v81 = v22;
  v82 = v23;

  sub_BABD0();
  v86 = v21;
  v87 = v22;
  v88 = v23;
  v84 = v19;
  v85 = v90;
  sub_BABE0();
  v80 = v16;
  v81 = v17;
  v82 = v18;
  sub_BABD0();
  v24 = v87 + a2;
  v80 = v21;
  v81 = v22;
  v82 = v23;
  sub_BABD0();
  v86 = v21;
  v87 = v22;
  v88 = v23;
  v84 = v89;
  v85 = v24;
  sub_BABE0();
  v80 = v21;
  v81 = v22;
  v82 = v23;
  sub_BABD0();
  v25 = v86;
  v76 = v87;
  v26 = (v6 + v14[25]);
  v27 = *v26;
  v28 = v26[1];
  LOBYTE(v80) = v27;
  v81 = v28;
  sub_2E50(&qword_FB820, &qword_C2B80);
  sub_BABD0();
  v29 = 0.0;
  v30 = 0.0;
  if (LOBYTE(v86) != 1)
  {
    v31 = (v6 + v14[8]);
    v32 = *v31;
    v33 = v31[1];
    LOBYTE(v80) = v32;
    v81 = v33;
    sub_2E50(&qword_FB8C0, &qword_C2C08);
    sub_BABD0();
    v29 = sub_9E5DC(LOBYTE(v86), v77, v78, v79, a6);
    v30 = v34;
  }

  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v35 = static LiveSpeechCaptionsViewsCoordinator.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v73 = a6;
  if (v29 == 0.0 && v30 == 0.0)
  {
    v29 = *(v35 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 16);
    v30 = *(v35 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame + 24);
  }

  v36 = v80;
  v37 = v81;
  v75 = v82;
  v74 = v83;
  sub_B95F0();
  v38 = sub_B9A00();
  v39 = v13;
  v40 = sub_BB2F0();
  v41 = os_log_type_enabled(v38, v40);
  v71 = v30;
  if (v41)
  {
    v42 = swift_slowAlloc();
    *&v43 = COERCE_DOUBLE(swift_slowAlloc());
    v68 = v39;
    v86 = *&v43;
    *v42 = 136315394;
    v80 = v25;
    v81 = v76;
    type metadata accessor for CGSize(0);
    v67 = v11;
    v44 = sub_BAFF0();
    v70 = v14;
    v69 = v7;
    v46 = v35;
    v47 = sub_7A1D8(v44, v45, &v86);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    v80 = v29;
    v81 = v30;
    v48 = sub_BAFF0();
    v50 = sub_7A1D8(v48, v49, &v86);
    v35 = v46;

    *(v42 + 14) = v50;
    v7 = v69;
    v14 = v70;
    _os_log_impl(&dword_0, v38, v40, "Calculate safeOffset offset: %s size: %s", v42, 0x16u);
    swift_arrayDestroy();

    (*(v72 + 8))(v68, v67);
  }

  else
  {

    (*(v72 + 8))(v39, v11);
  }

  v51 = v25;
  if (qword_F8250 != -1)
  {
    swift_once();
  }

  v52 = *&qword_100C08;
  if (AXDeviceIsPad() && *(v35 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v52 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v91.origin.x = v36;
  v91.origin.y = v37;
  v91.size.width = v75;
  v91.size.height = v74;
  Height = CGRectGetHeight(v91);
  v55 = v76;
  if (v76 < v37 + Height + -37.3333333 && HasJindo)
  {
    v92.origin.x = v36;
    v92.origin.y = v37;
    v92.size.width = v75;
    v92.size.height = v74;
    v55 = v37 + CGRectGetHeight(v92) + -37.3333333;
  }

  v56 = v79 - v29 + v52;
  if (v56 >= v51)
  {
    v56 = v51;
  }

  v57 = v71;
  v58 = v73;
  v59 = sub_3C824(v56, v55, v29, v71, v77, v78, v79);
  if (v58 - v57 + -4.0 < v60)
  {
    v60 = v58 - v57 + -4.0;
  }

  if (v59 < -v52)
  {
    v59 = -v52;
  }

  v80 = v21;
  v81 = v22;
  v82 = v23;
  if (v60 < 0.0)
  {
    v60 = 0.0;
  }

  v86 = v59;
  v87 = v60;
  sub_BABE0();

  v80 = v21;
  v81 = v22;
  v82 = v23;
  sub_BABD0();
  v61 = v87;
  v62 = (v7 + v14[12]);
  v64 = v62[1];
  v65 = v62[2];
  v80 = *v62;
  v63 = v80;
  v81 = v64;
  v82 = v65;

  sub_BABD0();
  v86 = v63;
  v87 = v64;
  v88 = v65;
  v84 = v89;
  v85 = v61;
  sub_BABE0();
}