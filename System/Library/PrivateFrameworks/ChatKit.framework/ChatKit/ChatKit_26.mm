unint64_t sub_190A302D8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = MEMORY[0x1E69E7CC0];
  v4 = sub_190C21E14(10);
  v25 = v4;
  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v5 = sub_190D53040();
  __swift_project_value_buffer(v5, qword_1EAD9D790);
  v6 = sub_190D53020();
  v7 = sub_190D576C0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v4 + 2);
    _os_log_impl(&dword_19020E000, v6, v7, "Found %ld keyboard emojis", v8, 0xCu);
    MEMORY[0x193AF7A40](v8, -1, -1);
  }

  if (*(v4 + 2) < a3)
  {
    v9 = sub_190C22428();
    sub_190D52690();
    v10 = sub_190D53020();
    v11 = sub_190D576C0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *(v9 + 2);

      _os_log_impl(&dword_19020E000, v10, v11, "Adding %ld recent emojis", v12, 0xCu);
      MEMORY[0x193AF7A40](v12, -1, -1);
    }

    else
    {
    }

    sub_190CA9D08(&unk_1F0400C18);
    swift_beginAccess();
    sub_190CA9D08(v9);
    swift_endAccess();
  }

  swift_beginAccess();
  v13 = *(v25 + 2);
  if (!v13)
  {
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  sub_190D52690();
  v14 = v25 + 40;
  v15 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v15 >> 62)
    {
      if (sub_190D581C0() >= a3)
      {
        goto LABEL_13;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a3)
    {
      goto LABEL_13;
    }

    sub_190D52690();
    v16 = sub_190D56ED0();
    IsSingleEmoji = CEMStringIsSingleEmoji();

    if (IsSingleEmoji)
    {
      v18 = objc_allocWithZone(MEMORY[0x1E69A8060]);
      v19 = sub_190D56ED0();

      v20 = [v18 initWithEmoji:v19 isRemoved:0];

      if (v20)
      {
        v21 = sub_190C2260C(v20);
        if (sub_190A300B4(v21, a1) || sub_190A300B4(v21, v15))
        {
        }

        else
        {
          v22 = v21;
          MEMORY[0x193AF29E0]();
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          sub_190D571E0();

          v15 = v26;
        }
      }
    }

    else
    {
    }

LABEL_13:
    v14 += 16;
    --v13;
  }

  while (v13);

LABEL_28:

  return v15;
}

void sub_190A306D0()
{
  v0 = [objc_opt_self() sharedBehaviors];
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = v0;
  v2 = [v0 siriLogoImage];

  if (!v2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_190D55E90();
}

uint64_t sub_190A30788()
{
  v0 = sub_190D549D0();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_190D549C0();
  sub_190D549B0();
  swift_beginAccess();
  sub_190D52690();
  sub_190D549A0();

  sub_190D549B0();
  sub_190D549F0();
  v1 = sub_190D555D0();
  v3 = v2;
  v5 = v4;
  sub_190D55E00();
  v6 = sub_190D55580();
  sub_19081E474(v1, v3, v5 & 1);

  return v6;
}

Swift::Bool __swiftcall AudioMessageRecordingView.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer *a1)
{
  v3 = OBJC_IVAR___CKAudioMessageRecordingView_state;
  swift_beginAccess();
  result = 0;
  if ((*(v1 + v3) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v4 = *(v1 + OBJC_IVAR___CKAudioMessageRecordingView_waveformView);
    [(UIGestureRecognizer *)a1 locationInView:v4];
    if (v5 > 0.0)
    {
      v6 = v5;
      [v4 bounds];
      if (v6 < CGRectGetWidth(v8))
      {
        return 1;
      }
    }
  }

  return result;
}

Swift::Void __swiftcall AudioMessageRecordingView.scrub(from:)(UILongPressGestureRecognizer *from)
{
  [(UILongPressGestureRecognizer *)from locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = OBJC_IVAR___CKAudioMessageRecordingView_scrubStartTime;
  v8 = *&v1[OBJC_IVAR___CKAudioMessageRecordingView_scrubStartTime];
  v9 = OBJC_IVAR___CKAudioMessageRecordingView_playbackDuration;
  swift_beginAccess();
  v10 = v8 / *&v1[v9];
  v11 = &v1[OBJC_IVAR___CKAudioMessageRecordingView_scrubStartLocation];
  v12 = v4 - *&v1[OBJC_IVAR___CKAudioMessageRecordingView_scrubStartLocation];
  [*&v1[OBJC_IVAR___CKAudioMessageRecordingView_waveformView] bounds];
  v13 = v10 + v12 / CGRectGetWidth(v49);
  v14 = *&v1[v9];
  if (v14 >= v14 * v13)
  {
    v14 = v14 * v13;
  }

  if (v14 < 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v14;
  }

  v16 = [(UILongPressGestureRecognizer *)from state];
  if ((v16 - 3) < 3)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *&v1[OBJC_IVAR___CKAudioMessageRecordingView_scrubScale] = _Q0;
    v22 = &v1[OBJC_IVAR___CKAudioMessageRecordingView_scrubOffset];
    *v22 = 0;
    v22[1] = 0;
    v1[OBJC_IVAR___CKAudioMessageRecordingView_isScrubbing] = 0;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong audioMessageRecordingViewDidStopScrubbing:v1 atTime:v15];
      swift_unknownObjectRelease();
    }

    v24 = objc_opt_self();
    v25 = swift_allocObject();
    *(v25 + 16) = v1;
    v47 = sub_190A313D0;
    v48 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_190840E6C;
    v46 = &block_descriptor_60;
    v26 = _Block_copy(&aBlock);
    v27 = v1;

    [v24 animateWithDuration:2 delay:v26 usingSpringWithDamping:0 initialSpringVelocity:0.6 options:0.0 animations:0.82 completion:0.0];
    v28 = v26;
LABEL_15:
    _Block_release(v28);
    return;
  }

  if (v16 != 2)
  {
    if (v16 != 1)
    {
      return;
    }

    *v11 = v4;
    *(v11 + 1) = v6;
    v29 = OBJC_IVAR___CKAudioMessageRecordingView_playbackCurrentTime;
    swift_beginAccess();
    *&v1[v7] = *&v1[v29];
    v1[OBJC_IVAR___CKAudioMessageRecordingView_isScrubbing] = 1;
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      [v30 audioMessageRecordingViewDidStartScrubbing_];
      swift_unknownObjectRelease();
    }

    v31 = objc_opt_self();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = sub_190A3141C;
    v48 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_190840E6C;
    v46 = &block_descriptor_6_4;
    v33 = _Block_copy(&aBlock);

    [v31 animateWithDuration:2 delay:v33 usingSpringWithDamping:0 initialSpringVelocity:0.57 options:0.0 animations:0.86 completion:0.0];
    v28 = v33;
    goto LABEL_15;
  }

  if (v13 >= 0.0)
  {
    v34 = 0.0;
    if (v13 > 1.0)
    {
      v34 = v13 + -1.0;
    }
  }

  else
  {
    v34 = v13;
  }

  v35 = -1.0 / (fabs(v34) / 0.3 * 0.55 + 1.0) + 1.0;
  v36 = v35 * v35 * 0.1 + 1.0;
  v37 = &v1[OBJC_IVAR___CKAudioMessageRecordingView_scrubScale];
  *v37 = v36;
  v37[1] = 1.0 / v36;
  v38 = v36 + -1.0;
  if (v34 >= 0.0)
  {
    v39 = v38;
  }

  else
  {
    v39 = -v38;
  }

  [v1 bounds];
  Width = CGRectGetWidth(v50);
  v41 = &v1[OBJC_IVAR___CKAudioMessageRecordingView_scrubOffset];
  *v41 = Width * 0.5 * v39;
  *(v41 + 1) = 0;
  [v1 setNeedsLayout];
  swift_beginAccess();
  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {
    [v42 audioMessageRecordingViewDidUpdateScrubbing:v1 atTime:v15];
    swift_unknownObjectRelease();
  }
}

void sub_190A30F4C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setNeedsLayout];
    [v2 layoutIfNeeded];
  }
}

uint64_t sub_190A31070(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_190D58140();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_19021E7D8(v9);
}

double AudioMessageRecordingView.send(from:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong audioMessageRecordingViewDidSend_];
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_190A31220(uint64_t a1, const char **a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong *a2];
    swift_unknownObjectRelease();
  }

  v7 = OBJC_IVAR___CKAudioMessageRecordingView_state;
  swift_beginAccess();
  v8 = *(v3 + v7);
  *(v3 + v7) = a3;
  sub_190D0BD70(v8);
}

void AudioMessageRecordingView.play(from:)()
{
  v1 = OBJC_IVAR___CKAudioMessageRecordingView_state;
  swift_beginAccess();
  if (*(v0 + v1) == 3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = 2;
    if (Strong)
    {
      v4 = &selRef_audioMessageRecordingViewDidPause_;
LABEL_6:
      [Strong *v4];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = 3;
    if (Strong)
    {
      v4 = &selRef_audioMessageRecordingViewDidPlay_;
      goto LABEL_6;
    }
  }

  v5 = *(v0 + v1);
  *(v0 + v1) = v3;
  sub_190D0BD70(v5);
}

id sub_190A313D0()
{
  v1 = *(v0 + 16);
  [v1 setNeedsLayout];

  return [v1 layoutIfNeeded];
}

void *sub_190A31478()
{
  v1 = OBJC_IVAR____TtC7ChatKit32PosterEditorOverlaySceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_190A31524(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit32PosterEditorOverlaySceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_190A3157C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit32PosterEditorOverlaySceneDelegate_window;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void sub_190A316D0()
{
  v1 = OBJC_IVAR____TtC7ChatKit32PosterEditorOverlaySceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = [v2 rootViewController];
    if (v3)
    {
      v4 = v3;
      v5 = swift_dynamicCastObjCProtocolConditional();
      if (v5)
      {
        [v5 invalidate];
      }
    }
  }
}

id PosterEditorOverlaySceneDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PosterEditorOverlaySceneDelegate.init()()
{
  *&v0[OBJC_IVAR____TtC7ChatKit32PosterEditorOverlaySceneDelegate_window] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterEditorOverlaySceneDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

__n128 sub_190A31910@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
  sub_190D51C20();

  v3 = *(v1 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__safeAreaInsets + 32);
  result = *(v1 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__safeAreaInsets);
  v5 = *(v1 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__safeAreaInsets + 16);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_190A319CC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
  sub_190D51C20();

  v4 = *(v3 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__safeAreaInsets + 32);
  result = *(v3 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__safeAreaInsets);
  v6 = *(v3 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__safeAreaInsets + 16);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

float64_t sub_190A31A88(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__safeAreaInsets;
  if (*(v1 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__safeAreaInsets + 32))
  {
    if ((*(a1 + 32) & 1) == 0)
    {
LABEL_7:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
      sub_190D51C10();

      return v3.f64[0];
    }
  }

  else if ((*(a1 + 32) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*v2, *a1), vceqq_f64(*(v2 + 16), *(a1 + 16))), xmmword_190DE8800)) & 0xF) != 0)
  {
    goto LABEL_7;
  }

  v3 = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return v3.f64[0];
}

void *sub_190A31BF0()
{
  swift_getKeyPath();
  sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
  sub_190D51C20();

  v1 = *(v0 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__hostedContentSettings);
  v2 = v1;
  return v1;
}

id sub_190A31CA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
  sub_190D51C20();

  v4 = *(v3 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__hostedContentSettings);
  *a2 = v4;

  return v4;
}

void sub_190A31D60(void *a1, double a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__hostedContentSettings;
  v6 = *(v2 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__hostedContentSettings);
  if (!v6)
  {
    if (!a1)
    {
      v12 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
    sub_190D51C10();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  gotLoadHelper_x2__OBJC_CLASS___PRPosterHostedContentSettings(a2);
  sub_1902188FC(0, v8, (v7 + 784));
  v9 = v6;
  v10 = a1;
  v11 = sub_190D57D90();

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(v3 + v5);
LABEL_8:
  *(v3 + v5) = a1;
}

double sub_190A31EF8()
{
  swift_getKeyPath();
  sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
  sub_190D51C20();

  return *(v0 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__backgroundLuminance);
}

double sub_190A31FA0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
  sub_190D51C20();

  result = *(v3 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__backgroundLuminance);
  *a2 = result;
  return result;
}

void sub_190A32050(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__backgroundLuminance) == a1)
  {
    *(v1 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__backgroundLuminance) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
    sub_190D51C10();
  }
}

uint64_t sub_190A32170()
{
  swift_getKeyPath();
  sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
  sub_190D51C20();

  return swift_unknownObjectRetain();
}

uint64_t sub_190A3221C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
  sub_190D51C20();

  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__invalidatable);
  return swift_unknownObjectRetain();
}

double sub_190A322D0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
  sub_190D51C10();

  return result;
}

unsigned __int8 *sub_190A3239C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = &v4[OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__safeAreaInsets];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__hostedContentSettings;
  *&v4[OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__hostedContentSettings] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__invalidatable] = 0;
  sub_190D51C50();
  v10 = *(a1 + 16);
  *v8 = *a1;
  *(v8 + 1) = v10;
  v8[32] = *(a1 + 32);
  v11 = *&v4[v9];
  v12 = a2;

  *&v4[v9] = a2;
  type metadata accessor for ConversationNameTitleView.Configuration(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_190DE8810;
  *(v13 + 32) = xmmword_190DE8810;
  *(v13 + 48) = 256;
  sub_190D51C50();
  v14 = OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel_titleConfiguration;
  *&v4[OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel_titleConfiguration] = v13;
  if (a2)
  {
    v15 = [v12 otherSettings];
    sub_190A32974();
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  sub_190D50920();
  sub_1909FA924(v17, v19);

  v20 = *&v4[v14];
  if (v20[48] == 1)
  {
    v20[48] = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v39 = a3;
    MEMORY[0x1EEE9AC00](KeyPath);
    v41 = v20;
    sub_190A369C4(&qword_1EAD5ABD0, type metadata accessor for ConversationNameTitleView.Configuration, &unk_190DE651C);
    sub_190D50920();
    sub_190D51C10();
  }

  v22 = *&v4[v14];
  if ((v22[49] & 1) == 0)
  {
    v22[49] = 0;
    v24 = v12;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_14:
    v29 = 0;
    *&v4[OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel_headerImage] = 0;
    goto LABEL_17;
  }

  v23 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v23);
  v41 = v22;
  sub_190A369C4(&qword_1EAD5ABD0, type metadata accessor for ConversationNameTitleView.Configuration, &unk_190DE651C);
  sub_190D50920();
  sub_190D51C10();

  v24 = v12;
  if (!a2)
  {
    goto LABEL_14;
  }

LABEL_9:
  v25 = [v24 images];
  if (v25)
  {
    sub_1902188FC(0, &qword_1EAD44EB0, 0x1E69DCAB8);
    v26 = sub_190D56D90();

    if (*(v26 + 16) && (v27 = sub_19022DCEC(0x6D49726564616568, 0xEB00000000656761), (v28 & 1) != 0))
    {
      v25 = *(*(v26 + 56) + 8 * v27);
    }

    else
    {

      v25 = 0;
    }
  }

  *&v4[OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel_headerImage] = v25;
  v30 = [v24 otherSettings];
  sub_190A32B5C();
  v29 = v31;

LABEL_17:
  v4[OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel_isGroupConversation] = v29 & 1;
  *&v4[OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel_sampleContent] = sub_190A35FDC();
  v32 = [a3 pr_posterContentsLuminance];
  if (v32)
  {
    v33 = v32;
    [v32 doubleValue];
    v35 = v34;
  }

  else
  {
    v35 = 0.5;
  }

  *&v4[OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__backgroundLuminance] = v35;
  v40.receiver = v4;
  v40.super_class = type metadata accessor for EditorOverlayViewModel(0);
  v36 = objc_msgSendSuper2(&v40, sel_init);
  [a3 addEditorOverlaySceneObserver_];
  v37 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v37);
  v41 = v36;
  sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
  sub_190D51C10();

  swift_unknownObjectRelease();

  return v36;
}

void sub_190A32974()
{
  if (byte_1F0402B08)
  {
    v1 = 0x8000000190E6C750;
  }

  else
  {
    v1 = 0xEB00000000656C74;
  }

  if ((byte_1F0402B08 & 1) == 0 && v1 == 0xEB00000000656C74)
  {
    v2 = 0;
LABEL_7:

    goto LABEL_10;
  }

  v4 = sub_190D58760();

  if (v4)
  {
    v2 = 0;
  }

  else
  {
    if (byte_1F0402B09)
    {
      v6 = 0x8000000190E6C750;
    }

    else
    {
      v6 = 0xEB00000000656C74;
    }

    if ((byte_1F0402B09 & 1) == 0 && v6 == 0xEB00000000656C74)
    {
      v2 = 1;
      goto LABEL_7;
    }

    v7 = sub_190D58760();

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

    v2 = 1;
  }

LABEL_10:
  gotLoadHelper_x8__PRPosterHostedContentSettingsBase(v3);
  if (__OFADD__(**(v5 + 880), v2))
  {
    __break(1u);
    return;
  }

LABEL_11:
  if ([v0 objectForSetting_])
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_19022EEA4(v10, &unk_1EAD551C0, &unk_190DD9790);
  }
}

void sub_190A32B5C()
{
  if (byte_1F0402B30)
  {
    v1 = 0x8000000190E6C750;
  }

  else
  {
    v1 = 0xEB00000000656C74;
  }

  if (byte_1F0402B30 == 1 && 0x8000000190E6C750 == v1)
  {
    v5 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v3 = sub_190D58760();

  if (v3)
  {
    v5 = 0;
    goto LABEL_12;
  }

  if (byte_1F0402B31)
  {
    v7 = 0x8000000190E6C750;
  }

  else
  {
    v7 = 0xEB00000000656C74;
  }

  if (byte_1F0402B31 == 1 && 0x8000000190E6C750 == v7)
  {
    v5 = 1;
    goto LABEL_11;
  }

  v8 = sub_190D58760();

  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = 1;
LABEL_12:
  gotLoadHelper_x8__PRPosterHostedContentSettingsBase(v4);
  if (__OFADD__(**(v6 + 880), v5))
  {
    __break(1u);
    return;
  }

LABEL_13:
  if ([v0 objectForSetting_])
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      [v9 BOOLValue];
    }
  }

  else
  {
    sub_19022EEA4(v12, &unk_1EAD551C0, &unk_190DD9790);
  }
}

id sub_190A32D74()
{
  swift_getKeyPath();
  v5 = v0;
  sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
  sub_190D51C20();

  v1 = *&v0[OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__invalidatable];
  if (v1)
  {
    [v1 invalidate];
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v5 = v0;
  sub_190D51C10();

  v4.receiver = v0;
  v4.super_class = type metadata accessor for EditorOverlayViewModel(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_190A32FB8(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_190D52690();
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_190A32FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_190A35EB4(v5, v7) & 1;
}

void sub_190A33150(void *a1)
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for EditorOverlayHostingController(0);
  v1 = v12.receiver;
  objc_msgSendSuper2(&v12, sel_viewSafeAreaInsetsDidChange);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 safeAreaInsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v13[0] = v5;
    v13[1] = v7;
    v13[2] = v9;
    v13[3] = v11;
    v14 = 0;
    sub_190A31A88(v13);
  }

  else
  {
    __break(1u);
  }
}

id sub_190A332B0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_190A33358@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_190D55EB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-3] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;
  sub_190D55E90();
  (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
  v11 = sub_190D55F10();

  (*(v7 + 8))(v9, v6);
  sub_190D56500();
  sub_190D53C60();
  *&v18[3] = *&v18[27];
  *&v18[11] = *&v18[35];
  *&v18[19] = *&v18[43];
  *v19 = *(a2 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel_titleConfiguration);
  type metadata accessor for ConversationNameTitleView.Configuration(0);
  sub_190D50920();
  sub_190D55FC0();
  v12 = v20;
  v13 = *v21;
  *v19 = v11;
  *&v19[8] = 256;
  *&v19[10] = *v18;
  *&v19[26] = *&v18[8];
  *&v19[42] = *&v18[16];
  *&v19[56] = *&v18[23];
  v14 = *&v19[16];
  *a3 = *v19;
  *(a3 + 16) = v14;
  v15 = *&v19[48];
  *(a3 + 32) = *&v19[32];
  *(a3 + 48) = v15;
  *(a3 + 64) = v12;
  *(a3 + 72) = v13;
  *(a3 + 80) = xmmword_190DE8820;
  *(a3 + 96) = 0xBFF0000000000000;
  sub_19022FD14(v19, &v20, &qword_1EAD5AAF0, &qword_190DE8BA0);
  v20 = v11;
  *v21 = 256;
  *&v21[2] = *v18;
  v22 = *&v18[8];
  *v23 = *&v18[16];
  *&v23[14] = *&v18[23];
  return sub_19022EEA4(&v20, &qword_1EAD5AAF0, &qword_190DE8BA0);
}

uint64_t sub_190A335E4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_190D55290();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AAF8, &qword_190DE8BA8);
  sub_190A36870();
  sub_190D53A20();
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AB28, &qword_190DE8BC0) + 36)) = 0;
  KeyPath = swift_getKeyPath();
  v7 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AB30, &qword_190DE8BF0) + 36);
  *v7 = KeyPath;
  *(v7 + 8) = 1;
  v8 = swift_getKeyPath();
  swift_getKeyPath();
  sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
  sub_190D51C20();

  v9 = *(a2 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__backgroundLuminance);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AB38, &qword_190DE8C48);
  v11 = (a3 + *(result + 36));
  *v11 = v8;
  v11[1] = v9;
  return result;
}

uint64_t sub_190A33788@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_190D54DF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_190D54AC0();
  sub_190A369C4(&qword_1EAD5AB40, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_190D58970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AB48, &qword_190DE8C50);
  sub_190A36A0C();
  sub_190D53A10();
  v6 = sub_190D552A0();
  v7 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AB10, &qword_190DE8BB0) + 36);
  *v7 = v6;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 1;
  v8 = sub_190D552A0();
  sub_190D539C0();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AAF8, &qword_190DE8BA8);
  v18 = a3 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_190A33968(char *a1, uint64_t a2, double a3)
{
  v6 = sub_190D53D60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v14[1] = *&a1[OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel_sampleContent];
  (*(v7 + 16))(v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6, v9);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_190D52690();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AB78, &qword_190DE8C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AB60, &qword_190DE8C58);
  sub_190233640(&qword_1EAD5AB80, &qword_1EAD5AB78, &qword_190DE8C68, MEMORY[0x1E69E6338]);
  sub_190A36A90();
  sub_190A36BD0();
  return sub_190D56290();
}

uint64_t sub_190A33B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AB90, &qword_190DE8C70);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AB70, &qword_190DE8C60);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v16 = *(a1 + 32);
  if ((v16 & 0x80000000) != 0)
  {
    *v12 = 0x4034000000000000;
    v12[8] = 0;
    swift_storeEnumTagMultiPayload();
    sub_190233640(&qword_1EAD5AB68, &qword_1EAD5AB70, &qword_190DE8C60, MEMORY[0x1E69817F8]);
    return sub_190D54C50();
  }

  else
  {
    v22[1] = a4;
    v19 = a1 + 16;
    v17 = *(a1 + 16);
    v18 = *(v19 + 8);
    *v15 = sub_190D548C0();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AB98, &qword_190DE8C78);
    sub_190A33DE0(v16 & 1, a2, (v16 >> 8) & 1, a3, v17, v18, &v15[*(v20 + 44)], a5);
    sub_19022FD14(v15, v12, &qword_1EAD5AB70, &qword_190DE8C60);
    swift_storeEnumTagMultiPayload();
    sub_190233640(&qword_1EAD5AB68, &qword_1EAD5AB70, &qword_190DE8C60, MEMORY[0x1E69817F8]);
    sub_190D54C50();
    return sub_19022EEA4(v15, &qword_1EAD5AB70, &qword_190DE8C60);
  }
}

uint64_t sub_190A33DE0@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, double a8@<D0>)
{
  v62 = a7;
  v63 = a5;
  v60 = a4;
  LODWORD(v65) = a3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ABA0, &qword_190DE8C80);
  MEMORY[0x1EEE9AC00](v58);
  v13 = &v57 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ABA8, &qword_190DE8C88);
  v14 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ABB0, &qword_190DE8C90);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v67 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v25 = *(a2 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel_isGroupConversation);
  v66 = a6;
  v61 = a1;
  v64 = &v57 - v23;
  if (v25 != 1 || (a1 & 1) != 0)
  {
    v30 = &v57 - v23;
    (*(v14 + 56))(&v57 - v23, 1, 1, v59, v24);
  }

  else
  {
    swift_getKeyPath();
    v79[0] = a2;
    sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
    sub_190D51C20();

    sub_190D55DA0();
    sub_190D56A80();

    sub_190D564F0();
    sub_190D53C60();
    v26 = &v13[*(v58 + 36)];
    v27 = v94;
    *v26 = v93;
    *(v26 + 1) = v27;
    *(v26 + 2) = v95;
    if (v65)
    {
      v28 = 1.0;
    }

    else
    {
      v28 = 0.0;
    }

    sub_19081E40C(v13, v16, &qword_1EAD5ABA0, &qword_190DE8C80);
    v29 = v59;
    *&v16[*(v59 + 36)] = v28;
    sub_19081E40C(v16, v19, &qword_1EAD5ABA8, &qword_190DE8C88);
    v30 = v64;
    sub_19081E40C(v19, v64, &qword_1EAD5ABA8, &qword_190DE8C88);
    (*(v14 + 56))(v30, 0, 1, v29);
  }

  sub_190D53D30();
  v32 = v31 * 0.7;
  swift_getKeyPath();
  v79[0] = a2;
  sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
  sub_190D52690();
  sub_190D51C20();

  v33 = *(a2 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__backgroundLuminance);
  v34 = v61;
  if (v61)
  {
    sub_190D56520();
  }

  else
  {
    sub_190D56510();
  }

  sub_190D54430();
  v35 = v65 & 1;
  if (v65)
  {
    a8 = 0.0;
  }

  v37 = v34 & 1;
  v36 = (v34 & 1) == 0;
  v38 = 0x4030000000000000;
  v39 = v34;
  if (v34)
  {
    v40 = 0x4030000000000000;
  }

  else
  {
    v40 = 0;
  }

  if (!v36)
  {
    v38 = 0;
  }

  v65 = v38;
  v41 = v67;
  sub_19022FD14(v30, v67, &qword_1EAD5ABB0, &qword_190DE8C90);
  v42 = v62;
  *v62 = v40;
  *(v42 + 8) = 0;
  *(v42 + 9) = (v39 & 1) == 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ABB8, &qword_190DE8C98);
  sub_19022FD14(v41, v42 + v43[12], &qword_1EAD5ABB0, &qword_190DE8C90);
  v44 = v42 + v43[16];
  v45 = v63;
  v46 = v66;
  *&v75 = v63;
  *(&v75 + 1) = v66;
  LOBYTE(v76) = v37;
  BYTE1(v76) = v35;
  *(&v76 + 1) = v33;
  *v77 = v32;
  *(&v77[3] + 8) = v71;
  *(&v77[4] + 8) = v72;
  *(&v77[5] + 8) = v73;
  *(&v77[6] + 8) = v74;
  *(&v77[1] + 8) = v69;
  *(&v77[2] + 8) = v70;
  *(v77 + 8) = v68;
  *(&v77[7] + 1) = 0;
  v78 = a8;
  v47 = v76;
  *v44 = v75;
  *(v44 + 1) = v47;
  v48 = v77[0];
  v49 = v77[1];
  v50 = v77[3];
  *(v44 + 4) = v77[2];
  *(v44 + 5) = v50;
  *(v44 + 2) = v48;
  *(v44 + 3) = v49;
  v51 = v77[4];
  v52 = v77[5];
  v53 = v77[6];
  v54 = v77[7];
  *(v44 + 20) = v78;
  *(v44 + 8) = v53;
  *(v44 + 9) = v54;
  *(v44 + 6) = v51;
  *(v44 + 7) = v52;
  v55 = v42 + v43[20];
  *v55 = v65;
  v55[8] = 0;
  v55[9] = v37;
  sub_19022FD14(&v75, v79, &qword_1EAD5ABC0, &qword_190DE8CA0);
  sub_19022EEA4(v64, &qword_1EAD5ABB0, &qword_190DE8C90);
  v82 = v33;
  v83 = v32;
  v87 = v71;
  v88 = v72;
  v89 = v73;
  v90 = v74;
  v84 = v68;
  v79[0] = v45;
  v79[1] = v46;
  v80 = v37;
  v81 = v35;
  v85 = v69;
  v86 = v70;
  v91 = 0;
  v92 = a8;
  sub_19022EEA4(v79, &qword_1EAD5ABC0, &qword_190DE8CA0);
  return sub_19022EEA4(v67, &qword_1EAD5ABB0, &qword_190DE8C90);
}

double sub_190A34508@<D0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_190D54AC0();
  v30 = 1;
  sub_190A34770(a1, &v19, a3);
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v31 = v19;
  v32 = v20;
  v41[6] = v25;
  v41[7] = v26;
  v41[8] = v27;
  v41[9] = v28;
  v41[2] = v21;
  v41[3] = v22;
  v41[4] = v23;
  v41[5] = v24;
  v41[0] = v19;
  v41[1] = v20;
  sub_19022FD14(&v31, &v18, &qword_1EAD5AAC8, &qword_190DE8B58);
  sub_19022EEA4(v41, &qword_1EAD5AAC8, &qword_190DE8B58);
  *&v29[103] = v37;
  *&v29[119] = v38;
  *&v29[135] = v39;
  *&v29[151] = v40;
  *&v29[39] = v33;
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[87] = v36;
  *&v29[7] = v31;
  *&v29[23] = v32;
  v7 = v30;
  sub_190D552C0();
  swift_getKeyPath();
  *&v19 = a1;
  sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
  sub_190D51C20();

  sub_190D539C0();
  *&v19 = v8;
  *(&v19 + 1) = v9;
  *&v20 = v10;
  *(&v20 + 1) = v11;
  LOBYTE(v21) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AAD8, &qword_190DE8B88);
  sub_190D54F40();
  v12 = *&v29[96];
  *(a2 + 129) = *&v29[112];
  v13 = *&v29[144];
  *(a2 + 145) = *&v29[128];
  *(a2 + 161) = v13;
  v14 = *&v29[32];
  *(a2 + 65) = *&v29[48];
  v15 = *&v29[80];
  *(a2 + 81) = *&v29[64];
  *(a2 + 97) = v15;
  *(a2 + 113) = v12;
  result = *v29;
  v17 = *&v29[16];
  *(a2 + 17) = *v29;
  *(a2 + 33) = v17;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 176) = *&v29[159];
  *(a2 + 49) = v14;
  return result;
}

uint64_t sub_190A34770@<X0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *&a1[OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel_headerImage];
  if (v6)
  {
    v7 = v6;
    v8 = sub_190D54AC0();
    sub_190A33358(v7, a1, &v38);
    v23 = v41;
    v24 = v42;
    v25 = v43;
    *&v26 = v44;
    v20 = v38;
    v21 = v39;
    v22 = v40;
    v28 = v38;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    *&v34 = v44;
    sub_19022FD14(&v20, &v36, &qword_1EAD5AAE8, &qword_190DE8B98);
    sub_19022EEA4(&v28, &qword_1EAD5AAE8, &qword_190DE8B98);

    *&v19[55] = v23;
    *&v19[71] = v24;
    *&v19[87] = v25;
    *&v19[103] = v26;
    *&v19[7] = v20;
    *&v19[23] = v21;
    *&v19[39] = v22;
    v36 = v8;
    LOBYTE(v37[0]) = 0;
    *(&v37[2] + 1) = *&v19[32];
    *(&v37[1] + 1) = *&v19[16];
    *(v37 + 1) = *v19;
    v37[6] = *&v19[95];
    *(&v37[5] + 1) = *&v19[80];
    *(&v37[4] + 1) = *&v19[64];
    *(&v37[3] + 1) = *&v19[48];
    nullsub_10();
    v42 = v37[3];
    v43 = v37[4];
    v44 = v37[5];
    v45 = v37[6];
    v38 = v36;
    v39 = v37[0];
    v40 = v37[1];
    v41 = v37[2];
  }

  else
  {
    sub_190A3683C(&v38);
  }

  v9 = swift_allocObject();
  *(v9 + 24) = a3;
  v10 = v42;
  v11 = v43;
  v25 = v43;
  v26 = v44;
  v20 = v38;
  v12 = v38;
  v13 = v39;
  v14 = v41;
  v21 = v39;
  v22 = v40;
  v23 = v41;
  v24 = v42;
  v29 = v39;
  v30 = v40;
  v15 = v44;
  v27 = v45;
  v28 = v38;
  v35 = v45;
  v33 = v43;
  v34 = v44;
  v31 = v41;
  v32 = v42;
  *(a2 + 32) = v40;
  *(a2 + 48) = v14;
  *(v9 + 16) = a1;
  *a2 = v12;
  *(a2 + 16) = v13;
  v16 = v45;
  *(a2 + 96) = v15;
  *(a2 + 112) = v16;
  *(a2 + 64) = v10;
  *(a2 + 80) = v11;
  *(a2 + 128) = 0x4034000000000000;
  *(a2 + 136) = 0;
  *(a2 + 144) = sub_190A36854;
  *(a2 + 152) = v9;
  v17 = a1;
  sub_19022FD14(&v28, &v36, &qword_1EAD5AAE0, &qword_190DE8B90);
  v37[3] = v24;
  v37[4] = v25;
  v37[5] = v26;
  v37[6] = v27;
  v36 = v20;
  v37[0] = v21;
  v37[1] = v22;
  v37[2] = v23;
  return sub_19022EEA4(&v36, &qword_1EAD5AAE0, &qword_190DE8B90);
}

uint64_t sub_190A34A30@<X0>(_OWORD *a1@<X8>)
{
  v57 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AC50, &qword_190DE8EF8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  *&v55 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v53 - v5;
  v7 = sub_190D56A70();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_190D56AB0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  *&v56 = v1;
  sub_190D56AC0();
  sub_190D56A90();
  v20 = *(v12 + 8);
  v20(v19, v11);
  if ((*(v8 + 88))(v10, v7) != *MEMORY[0x1E698F590])
  {
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v62 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AC58, &qword_190DE8F00);
    sub_190A370DC();
    sub_190A37278();
    sub_190D54C50();
    v56 = v64;
    v55 = v63;
    v35 = v65;
    v36 = v66;
    v37 = v67;
    result = (*(v8 + 8))(v10, v7);
LABEL_12:
    v51 = v57;
    v52 = v56;
    *v57 = v55;
    v51[1] = v52;
    *(v51 + 4) = v35;
    *(v51 + 5) = v36;
    *(v51 + 48) = v37;
    return result;
  }

  (*(v8 + 96))(v10, v7);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ACB0, &qword_190DE8F28) + 48);
  sub_19029058C(v10, v58);
  sub_19081E40C(v10 + v21, v6, &qword_1EAD5AC50, &qword_190DE8EF8);
  v22 = __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  v23 = MEMORY[0x1EEE9AC00](v22);
  (*(v25 + 16))(&v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v26 = sub_190D53C70();
  sub_190D56AC0();
  sub_190D56AA0();
  v20(v16, v11);
  v27 = *(&v64 + 1);
  sub_19022EEA4(&v63, &qword_1EAD5ACB8, &qword_190DE8F30);
  if (v27)
  {
    v28 = v54;
    sub_190D56AC0();
    sub_190D56AA0();
    result = (v20)(v28, v11);
    if (!*(&v64 + 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    v30 = __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
    v31 = MEMORY[0x1EEE9AC00](v30);
    (*(v33 + 16))(&v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
    v34 = sub_190D53C70();
    __swift_destroy_boxed_opaque_existential_0(&v63);
  }

  else
  {
    *&v63 = sub_190D55DA0();
    v34 = sub_190D53C70();
  }

  v38 = v6;
  v39 = v55;
  v40 = sub_190D56500();
  v42 = v41;
  v43 = sub_190D56AE0();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  if (v45(v38, 1, v43) == 1)
  {
    *&v63 = sub_190D55DA0();
    v46 = sub_190D53C70();
LABEL_11:
    *&v59 = v26;
    *(&v59 + 1) = 256;
    *&v60 = v34;
    *(&v60 + 1) = v46;
    *&v61 = v40;
    *(&v61 + 1) = v42;
    v62 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AC58, &qword_190DE8F00);
    sub_190A370DC();
    sub_190A37278();
    sub_190D54C50();
    v56 = v64;
    v55 = v63;
    v35 = v65;
    v36 = v66;
    v37 = v67;
    sub_19022EEA4(v38, &qword_1EAD5AC50, &qword_190DE8EF8);
    result = __swift_destroy_boxed_opaque_existential_0(v58);
    goto LABEL_12;
  }

  sub_19022FD14(v38, v39, &qword_1EAD5AC50, &qword_190DE8EF8);
  result = (v45)(v39, 1, v43);
  if (result != 1)
  {
    sub_190D56AD0();
    (*(v44 + 8))(v39, v43);
    v47 = __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
    v48 = MEMORY[0x1EEE9AC00](v47);
    (*(v50 + 16))(&v53 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), v48);
    v46 = sub_190D53C70();
    __swift_destroy_boxed_opaque_existential_0(&v63);
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_190A352E8(uint64_t a1)
{
  v55 = a1;
  v75 = *MEMORY[0x1E69E9840];
  v2 = sub_190D53A60();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - v7;
  v54 = sub_190D54800();
  v9 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = [objc_allocWithZone(CKTextBalloonView) init];
  [v53 setTranslatesAutoresizingMaskIntoConstraints_];
  v57 = v1;
  v12 = *(v1 + 16);
  v52 = v12 & 1;
  v56 = objc_opt_self();
  v13 = [v56 sharedBehaviors];
  if (v13)
  {
    v14 = v13;
    [v13 balloonCornerRadius];
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
  }

  if (v12)
  {
    v17 = 1;
  }

  else
  {
    v17 = -1;
  }

  v51 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AC40, &qword_190DE8EF0);
  sub_190D55040();
  sub_190D54550();
  (*(v9 + 8))(v11, v54);
  (*(v3 + 104))(v5, *MEMORY[0x1E697DBB8], v2);
  v18 = sub_190D53A50();
  v19 = *(v3 + 8);
  v19(v5, v2);
  v19(v8, v2);
  if (v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  v21 = v57;
  v22 = *(v57 + 17);
  v23 = v53;
  LOWORD(v60) = 256;
  BYTE2(v60) = 0;
  BYTE3(v60) = v52;
  v61 = NAN;
  v62 = v16;
  LOBYTE(v63) = v51;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = (v12 & 1) == 0;
  v69 = v20;
  v70 = -1;
  v71 = 1;
  v72 = v22;
  v73 = 0;
  v74 = 0;
  [v23 setBalloonDescriptor_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5AC30, qword_190DDC340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1DA0;
  v25 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v26 = v25;
  v27 = v56;
  v28 = [v56 sharedBehaviors];
  if (!v28)
  {
    __break(1u);
    goto LABEL_16;
  }

  v29 = v28;
  v30 = [v28 balloonTextFont];

  if (!v30)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v31 = sub_1902188FC(0, &qword_1EAD46540, 0x1E69DB878);
  *(inited + 40) = v30;
  v32 = *MEMORY[0x1E69DB660];
  *(inited + 64) = v31;
  *(inited + 72) = v32;
  v33 = v32;
  v34 = [v27 sharedBehaviors];
  if (!v34)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v35 = v34;
  v36 = [v34 balloonTextFont];

  if (!v36)
  {
    goto LABEL_18;
  }

  [v36 pointSize];
  v38 = v37;

  *(inited + 104) = MEMORY[0x1E69E7DE0];
  *(inited + 80) = v38 * 0.03;
  sub_190821998(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A50, &unk_190DD8980);
  swift_arrayDestroy();
  v39 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v40 = sub_190D56ED0();
  type metadata accessor for Key(0);
  sub_190A369C4(&qword_1EAD46570, type metadata accessor for Key, &unk_190DD3BA8);
  v41 = sub_190D56D60();

  v42 = [v39 initWithString:v40 attributes:v41];

  [v23 setAttributedText_];
  [v23 setNeedsPrepareForDisplay];
  [v23 prepareForDisplayIfNeeded];
  v43 = *(MEMORY[0x1E69DDCE0] + 8);
  v44 = *(MEMORY[0x1E69DDCE0] + 16);
  v45 = *(MEMORY[0x1E69DDCE0] + 24);
  v60 = *MEMORY[0x1E69DDCE0];
  v61 = v43;
  v62 = v44;
  v63 = v45;
  *v59 = v60;
  *&v59[1] = v43;
  *&v59[2] = v44;
  *&v59[3] = v45;
  [v23 sizeThatFits:&v60 textAlignmentInsets:v59 tailInsets:{*(v21 + 32), 1.79769313e308}];
  [v23 frame];
  [v23 setFrame_];

  [v23 setTextAlignmentInsets_];
  v46 = type metadata accessor for TextBalloonWrapperView();
  v47 = objc_allocWithZone(v46);
  *&v47[OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22TextBalloonWrapperView_textView] = v23;
  v58.receiver = v47;
  v58.super_class = v46;
  v48 = v23;
  v49 = objc_msgSendSuper2(&v58, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v49 addSubview_];

  return v49;
}

id sub_190A35990(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22TextBalloonWrapperView_textView);
  [v2 setBackgroundLuminance_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5AC30, qword_190DDC340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1DA0;
  v4 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 sharedBehaviors];
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [v7 balloonTextFont];

  if (!v9)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = sub_1902188FC(0, &qword_1EAD46540, 0x1E69DB878);
  *(inited + 40) = v9;
  v11 = *MEMORY[0x1E69DB660];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = v11;
  v13 = [v5 sharedBehaviors];
  if (!v13)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v14 = v13;
  v15 = [v13 balloonTextFont];

  if (!v15)
  {
    goto LABEL_9;
  }

  [v15 pointSize];
  v17 = v16;

  *(inited + 104) = MEMORY[0x1E69E7DE0];
  *(inited + 80) = v17 * 0.03;
  sub_190821998(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A50, &unk_190DD8980);
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_190D56ED0();
  type metadata accessor for Key(0);
  sub_190A369C4(&qword_1EAD46570, type metadata accessor for Key, &unk_190DD3BA8);
  v20 = sub_190D56D60();

  v21 = [v18 initWithString:v19 attributes:v20];

  [v2 setAttributedText_];
  v22 = *(MEMORY[0x1E69DDCE0] + 8);
  v23 = *(MEMORY[0x1E69DDCE0] + 16);
  v24 = *(MEMORY[0x1E69DDCE0] + 24);
  v27 = *MEMORY[0x1E69DDCE0];
  v28 = v22;
  v29 = v23;
  v30 = v24;
  *v26 = v27;
  *&v26[1] = v22;
  *&v26[2] = v23;
  *&v26[3] = v24;
  [v2 sizeThatFits:&v27 textAlignmentInsets:v26 tailInsets:{*(v1 + 32), 1.79769313e308}];
  [v2 frame];
  [v2 setFrame_];
  [v2 setTextAlignmentInsets_];
  [v2 setNeedsPrepareForDisplay];
  return [v2 prepareForDisplayIfNeeded];
}

uint64_t sub_190A35DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190A37088();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190A35E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190A37088();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190A35E8C(uint64_t a1)
{
  sub_190A37088();
  sub_190D54C10();
  __break(1u);
}

uint64_t sub_190A35EB4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 33);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a2 + 33);
    if ((v7 & 0x80000000) == 0)
    {
      if (v8 = a1[2], v9 = a1[3], v10 = *(a1 + 32), v11 = a2[2], v12 = a2[3], v13 = *(a2 + 32), v4 == *a2) && v5 == a2[1] || (sub_190D58760())
      {
        if (v8 != v11 || v9 != v12)
        {
          v16 = sub_190D58760();
          v14 = 0;
          if (v16 & 1) == 0 || ((v10 ^ v13))
          {
            return v14 & 1;
          }

          goto LABEL_15;
        }

        if (((v10 ^ v13) & 1) == 0)
        {
LABEL_15:
          v14 = v6 ^ v7 ^ 1;
          return v14 & 1;
        }
      }
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  if ((a2[4] & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  if (v4 == *a2 && v5 == a2[1])
  {
    v14 = 1;
    return v14 & 1;
  }

  return sub_190D58760();
}

uint64_t sub_190A35FDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5ABE0, &qword_190DE8D50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DE4300;
  v9 = sub_190D570E0();
  v12 = v1;
  MEMORY[0x193AF28B0](10, 0xE100000000000000);
  *(v0 + 32) = xmmword_190DE8830;
  *(v0 + 48) = v9;
  *(v0 + 56) = v12;
  *(v0 + 64) = 257;
  *(v0 + 72) = xmmword_190DE8840;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0x8000;
  v2 = sub_190D570E0();
  *(v0 + 112) = xmmword_190DE8850;
  *(v0 + 128) = v2;
  *(v0 + 136) = v3;
  *(v0 + 144) = 256;
  *(v0 + 152) = xmmword_190DE8860;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0x8000;
  v4 = sub_190D570E0();
  *(v0 + 192) = xmmword_190DE8870;
  *(v0 + 208) = v4;
  *(v0 + 216) = v5;
  *(v0 + 224) = 0;
  v10 = sub_190D570E0();
  v13 = v6;
  MEMORY[0x193AF28B0](10, 0xE100000000000000);
  *(v0 + 232) = xmmword_190DE8880;
  *(v0 + 248) = v10;
  *(v0 + 256) = v13;
  *(v0 + 264) = 256;
  *(v0 + 272) = xmmword_190DE8890;
  *(v0 + 288) = 0;
  *(v0 + 296) = 0;
  *(v0 + 304) = 0x8000;
  v11 = sub_190D570E0();
  v14 = v7;
  MEMORY[0x193AF28B0](10, 0xE100000000000000);
  *(v0 + 312) = 56;
  *(v0 + 320) = 0xE100000000000000;
  *(v0 + 328) = v11;
  *(v0 + 336) = v14;
  *(v0 + 344) = 257;
  return v0;
}

void sub_190A36188(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_allocWithZone(MEMORY[0x1E69DD2E8]);
    v7 = a1;
    v8 = [v6 initWithWindowScene_];
    v9 = [v5 pr_posterHostedContentSettings];
    v10 = v8;
    [v10 safeAreaInsets];
    v29[0] = v11;
    v29[1] = v12;
    v29[2] = v13;
    v29[3] = v14;
    v30 = 0;
    v15 = objc_allocWithZone(type metadata accessor for EditorOverlayViewModel(0));
    v16 = v7;
    v17 = v9;
    v18 = sub_190A3239C(v29, v9, v5);
    *(objc_allocWithZone(type metadata accessor for EditorOverlayHostingController(0)) + qword_1EAD5AA90) = v18;
    v28 = v18;
    v19 = v18;
    v20 = sub_190D54B60();
    v21 = [v20 view];
    if (v21)
    {
      v22 = v21;
      v23 = [objc_opt_self() clearColor];
      [v22 setBackgroundColor_];

      [v10 setRootViewController_];
      v24 = [v10 layer];
      [v24 setHitTestsAsOpaque_];

      v25 = [v10 layer];
      [v25 setAllowsHitTesting_];

      [v10 setHidden_];
      v26 = OBJC_IVAR____TtC7ChatKit32PosterEditorOverlaySceneDelegate_window;
      swift_beginAccess();
      v27 = *(v2 + v26);
      *(v2 + v26) = v10;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_190A36568(uint64_t a1, __n128 a2)
{
  result = sub_190D51C60();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_190A36710(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 34))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (*(a1 + 32) & 0xFE | (*(a1 + 32) >> 15) | (*(a1 + 32) >> 1) & 0x3F00) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_190A36778(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

double sub_190A3683C(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_190A36870()
{
  result = qword_1EAD5AB00;
  if (!qword_1EAD5AB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AAF8, &qword_190DE8BA8);
    sub_190A368FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AB00);
  }

  return result;
}

unint64_t sub_190A368FC()
{
  result = qword_1EAD5AB08;
  if (!qword_1EAD5AB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AB10, &qword_190DE8BB0);
    sub_190233640(&qword_1EAD5AB18, &qword_1EAD5AB20, &qword_190DE8BB8, MEMORY[0x1E697DA90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AB08);
  }

  return result;
}

uint64_t sub_190A369C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_190A36A0C()
{
  result = qword_1EAD5AB50;
  if (!qword_1EAD5AB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AB48, &qword_190DE8C50);
    sub_190A36A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AB50);
  }

  return result;
}

unint64_t sub_190A36A90()
{
  result = qword_1EAD5AB58;
  if (!qword_1EAD5AB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AB60, &qword_190DE8C58);
    sub_190233640(&qword_1EAD5AB68, &qword_1EAD5AB70, &qword_190DE8C60, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AB58);
  }

  return result;
}

uint64_t sub_190A36B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_190D53D60() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_190A33B74(a1, v6, v8, a2, v7);
}

unint64_t sub_190A36BD0()
{
  result = qword_1EAD5AB88;
  if (!qword_1EAD5AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AB88);
  }

  return result;
}

void sub_190A36C24(void *a1)
{
  [a1 doubleValue];
  if (*(v1 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__backgroundLuminance) == v2)
  {
    *(v1 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__backgroundLuminance) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A369C4(&qword_1EAD5AAD0, type metadata accessor for EditorOverlayViewModel, &unk_190DE8B38);
    sub_190D51C10();
  }
}

double sub_190A36D50()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__backgroundLuminance) = result;
  return result;
}

void sub_190A36D80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__hostedContentSettings);
  *(v1 + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__hostedContentSettings) = v2;
  v4 = v2;
}

__n128 sub_190A36DC0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__safeAreaInsets;
  v3 = *(v1 + 32);
  result = *(v1 + 16);
  *v2 = *v1;
  *(v2 + 16) = result;
  *(v2 + 32) = v3;
  return result;
}

void sub_190A36E04(uint64_t a1, uint64_t a2)
{
  *(*(v2 + 16) + OBJC_IVAR____TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel__invalidatable) = *(v2 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

uint64_t sub_190A36EC0(uint64_t a1)
{
  result = sub_190D56AF0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_190A36F2C()
{
  result = qword_1EAD5AC08;
  if (!qword_1EAD5AC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AAD8, &qword_190DE8B88);
    sub_190233640(&qword_1EAD5AC10, &qword_1EAD5AC18, qword_190DE8DB8, MEMORY[0x1E6981870]);
    sub_190A369C4(&qword_1EAD5AC20, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AC08);
  }

  return result;
}

unint64_t sub_190A37034()
{
  result = qword_1EAD5AC28;
  if (!qword_1EAD5AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AC28);
  }

  return result;
}

unint64_t sub_190A37088()
{
  result = qword_1EAD5AC48;
  if (!qword_1EAD5AC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AC48);
  }

  return result;
}

unint64_t sub_190A370DC()
{
  result = qword_1EAD5AC60;
  if (!qword_1EAD5AC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AC58, &qword_190DE8F00);
    sub_190A37194();
    sub_190233640(&qword_1EAD5AC98, &qword_1EAD5ACA0, &qword_190DE8F20, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AC60);
  }

  return result;
}

unint64_t sub_190A37194()
{
  result = qword_1EAD5AC68;
  if (!qword_1EAD5AC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AC70, &qword_190DE8F08);
    sub_190233640(&qword_1EAD5AC78, &unk_1EAD5AC80, &unk_190DE8F10, MEMORY[0x1E697DB78]);
    sub_190233640(&qword_1EAD467B0, &qword_1EAD5AC90, &qword_190DE4B90, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AC68);
  }

  return result;
}

unint64_t sub_190A37278()
{
  result = qword_1EAD5ACA8;
  if (!qword_1EAD5ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5ACA8);
  }

  return result;
}

unint64_t sub_190A372CC()
{
  result = qword_1EAD5ACC0;
  if (!qword_1EAD5ACC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5ACC8, &unk_190DE8F38);
    sub_190A370DC();
    sub_190A37278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5ACC0);
  }

  return result;
}

id sub_190A37388(void *a1)
{
  v3 = [v1 collectionViewController];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  v6 = v4;
  result = [a1 message];
  if (result)
  {
    v8 = result;
    v9 = [result guid];

    if (v9)
    {
      v10 = sub_190D56F10();
      v12 = v11;

      v13 = [v6 cachedEmojiResponses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920, &unk_190DE8FC0);
      v14 = sub_190D56D90();

      if (*(v14 + 16))
      {
        v15 = sub_19022DCEC(v10, v12);
        v17 = v16;

        if (v17)
        {
          v18 = *(*(v14 + 56) + 8 * v15);
          sub_190D52690();

          return v18;
        }
      }

      else
      {
      }

      goto LABEL_16;
    }

LABEL_10:

    if (qword_1EAD46248 != -1)
    {
      swift_once();
    }

    v19 = sub_190D53040();
    __swift_project_value_buffer(v19, qword_1EAD9D790);
    v3 = sub_190D53020();
    v20 = sub_190D576C0();
    if (os_log_type_enabled(v3, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_19020E000, v3, v20, "Could not determine messageGUID. Returning no results for smart emoji responses.", v21, 2u);
      MEMORY[0x193AF7A40](v21, -1, -1);
    }

LABEL_16:

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

void CKCoreChatController.showFullScreenAcknowledgementPicker(for:displayConfiguration:)(void *a1, void *a2)
{
  v7 = [v2 collectionViewController];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      [v6 prepareTextEffectsForModalPresentation];
    }

    sub_190A376C0(a1, a2);
  }

  else
  {

    sub_190A376C0(a1, a2);
  }
}

void sub_190A376C0(void *a1, void *a2)
{
  v4 = v2;
  v7 = sub_190D53150();
  *&v8 = MEMORY[0x1EEE9AC00](v7 - 8).n128_u64[0];
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &selRef_updateCommSafety_forChatItems_;
  v12 = [v4 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_28;
  }

  v13 = v12;
  v14 = [v12 window];

  if (!v14)
  {
LABEL_34:
    sub_190D58510();
    __break(1u);
    return;
  }

  v15 = [v4 chat];
  if (v15)
  {
    v83 = v15;
    if (qword_1EAD46248 != -1)
    {
      swift_once();
    }

    v16 = sub_190D53040();
    v17 = __swift_project_value_buffer(v16, qword_1EAD9D790);
    v18 = a1;
    v3 = a2;
    v19 = sub_190D53020();
    v20 = sub_190D576C0();
    v21 = os_log_type_enabled(v19, v20);
    v82 = v10;
    if (v21)
    {
      v80 = v17;
      v81 = v14;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v84 = v79;
      *v22 = 136315394;
      v24 = [(SEL *)v18 IMChatItem];
      v11 = v18;
      if (!v24)
      {
LABEL_32:

        __break(1u);
        goto LABEL_33;
      }

      v25 = v24;
      v26 = [v24 guid];

      v78 = v11;
      if (!v26)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v27 = sub_190D56F10();
      v29 = v28;

      v30 = sub_19021D9F8(v27, v29, &v84);

      *(v22 + 4) = v30;
      *(v22 + 12) = 2112;
      *(v22 + 14) = v3;
      *v23 = v3;
      v31 = v3;
      _os_log_impl(&dword_19020E000, v19, v20, "Requsted presentation of fullScreenBalloonViewController. chatItem: %s, using displayConfiguration: %@", v22, 0x16u);
      sub_190830D58(v23);
      MEMORY[0x193AF7A40](v23, -1, -1);
      v32 = v79;
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x193AF7A40](v32, -1, -1);
      MEMORY[0x193AF7A40](v22, -1, -1);

      v14 = v81;
      v11 = &selRef_updateCommSafety_forChatItems_;
      v18 = v78;
    }

    else
    {
    }

    v40 = v83;
    [v83 beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57A0]];
    [v4 beginHoldingScrollGeometryUpdatesForReason_];
    v41 = [v4 generateFullScreenBalloonViewControllerWithChatItem:v18 displayConfiguration:v3];
    v42 = [objc_opt_self() sharedBehaviors];
    if (v42)
    {
      v43 = v42;
      v44 = [v42 usesTapbackRefreshStyling];

      if (v44)
      {
        v45 = v41;
        [v45 setOverrideUserInterfaceStyle_];
        sub_190D577F0();
        sub_190D57800();
      }

      v46 = [v4 v11[422]];
      if (v46)
      {
        v47 = v46;
        [v46 frame];
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v55 = v54;

        v56 = [v4 v11[422]];
        [v14 convertRect:v56 fromView:{v49, v51, v53, v55}];
        v58 = v57;
        v60 = v59;
        v62 = v61;
        v64 = v63;

        v65 = v41;
        v66 = [v65 v11[422]];
        if (v66)
        {
          v67 = v66;
          [v66 setFrame_];

          v68 = [v65 v11[422]];
          if (v68)
          {
            [v14 addSubview_];

            [v4 setFullScreenBalloonViewController_];
            v69 = v65;
            v70 = v4;
            v71 = sub_190D53020();
            v72 = sub_190D576C0();

            if (os_log_type_enabled(v71, v72))
            {
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              *v73 = 138412546;
              *(v73 + 4) = v69;
              *(v73 + 12) = 2112;
              *(v73 + 14) = v70;
              *v74 = v69;
              v74[1] = v70;
              v75 = v69;
              v76 = v70;
              _os_log_impl(&dword_19020E000, v71, v72, "Added fullscreenBalloonViewController: %@'s view to window and stored to chatController: %@", v73, 0x16u);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54610, &qword_190DD6010);
              swift_arrayDestroy();
              MEMORY[0x193AF7A40](v74, -1, -1);
              MEMORY[0x193AF7A40](v73, -1, -1);
            }

            else
            {
            }

            return;
          }

          goto LABEL_31;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v33 = sub_190D53040();
  __swift_project_value_buffer(v33, qword_1EAD9D790);
  v34 = v4;
  v83 = sub_190D53020();
  v35 = sub_190D576A0();

  if (os_log_type_enabled(v83, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v34;
    *v37 = v34;
    v38 = v34;
    _os_log_impl(&dword_19020E000, v83, v35, "Unexpected state: chat not found for coreChatController: %@", v36, 0xCu);
    sub_190830D58(v37);
    MEMORY[0x193AF7A40](v37, -1, -1);
    MEMORY[0x193AF7A40](v36, -1, -1);
  }

  v39 = v83;
}

void __swiftcall CKCoreChatController.generateDefaultFullScreenBalloonViewController(with:)(CKFullScreenBalloonViewController *__return_ptr retstr, CKMessagePartChatItem *with)
{
  v4 = _s7ChatKit41FullScreenBalloonViewDisplayConfigurationC20tapbackPickerContextACyFZ_0();
  v5 = [v2 generateFullScreenBalloonViewControllerWithChatItem:with displayConfiguration:v4];
}

id CKCoreChatController.generateFullScreenBalloonViewController(with:displayConfiguration:)(void *a1, char *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = a1;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_12;
  }

  v8 = [v2 collectionViewController];
  v9 = [v8 balloonViewForChatItem_];

  if (!v9)
  {
    goto LABEL_12;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

    goto LABEL_12;
  }

  v11 = v10;
  v12 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_supplementaryLayoutChatItem;
  swift_beginAccess();
  v13 = *&a2[v12];
  *&a2[v12] = a1;
  v14 = v7;

  v7 = [v11 currentAssetChatItem];
  v15 = [v11 currentAssetRegionOfInterest];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 placeholderViewFactory];
    if (v17)
    {
      _Block_release(v17);
      v18 = [v16 imageViewSpec];
      if (v18)
      {
        v19 = v18;
        v27[3] = sub_1902188FC(0, &qword_1EAD5AD30, 0x1E69C4610);

        v27[0] = v19;
        v20 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_supplementaryLayoutContext;
        swift_beginAccess();
        sub_190A3A620(v27, &a2[v20]);
        v6 = swift_endAccess();
        goto LABEL_11;
      }
    }
  }

LABEL_11:
  if (!v7)
  {
    result = sub_190D58510();
    __break(1u);
    return result;
  }

LABEL_12:
  v21 = CKIsRunningInMessagesTranscriptExtension(v6);
  v22 = off_1E72E4E38;
  if (v21)
  {
    v22 = off_1E72E4E40;
  }

  v23 = objc_allocWithZone(*v22);
  v24 = a2;
  v25 = [v23 initWithChatItem:v7 displayConfiguration:v24 delegate:v2];

  return v25;
}

Swift::Void __swiftcall CKCoreChatController.configureTapbackBackdropCaptureView()()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedBehaviors];
  if (!v2)
  {
    __break(1u);
    goto LABEL_26;
  }

  v3 = v2;
  v4 = [v2 usesTapbackRefreshStyling];

  if (!v4)
  {
    return;
  }

  v5 = [v1 collectionView];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = [v1 traitCollection];
  v8 = [v7 isTranscriptBackgroundActive];

  if (v8)
  {
    [v1 _updateBalloonBackdropGroupTrait];
    v9 = [v1 tapbackBackdropCaptureView];
    if (!v9)
    {
      [v6 frame];
      v14 = [objc_allocWithZone(type metadata accessor for CKTapbackBackdropCaptureView()) initWithFrame_];
      [v1 setTapbackBackdropCaptureView_];
      v9 = v14;
    }

    v15 = [v1 tapbackBackdropCaptureView];
    if (v15)
    {
      v24 = v15;
      v16 = [v15 superview];
      v17 = [v1 view];
      v18 = v17;
      if (v16)
      {
        if (v17)
        {
          sub_1902188FC(0, &qword_1EAD46530, 0x1E69DD250);
          v19 = sub_190D57D90();

          if (v19)
          {
            goto LABEL_21;
          }

LABEL_19:
          v22 = [v1 view];
          if (v22)
          {
            v23 = v22;
            [v22 insertSubview:v24 belowSubview:v6];

LABEL_21:
            v21 = v24;
            goto LABEL_22;
          }

LABEL_26:
          __break(1u);
          return;
        }

        v18 = v16;
      }

      else if (!v17)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v20 = [v1 tapbackBackdropCaptureView];
    [v20 removeFromSuperview];

    [v1 setTapbackBackdropCaptureView_];
  }

  v21 = v6;
LABEL_22:
}

Swift::Void __swiftcall CKCoreChatController.removeTapbackBackdropCaptureView()()
{
  v1 = [objc_opt_self() sharedBehaviors];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 usesTapbackRefreshStyling];

    if (v3)
    {
      v4 = [v0 tapbackBackdropCaptureView];
      [v4 removeFromSuperview];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_190A38878(void *a1, uint64_t a2, char a3)
{
  v7 = &selRef_removedTapbackCounterpart;
  if ((a3 & 1) == 0)
  {
    v7 = &selRef_visibleTapbackCounterpart;
  }

  v16 = [a1 *v7];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8 && (a3 & 1) == 0)
  {
    v9 = v8;
    v10 = a1;
    v11 = [v9 transferGUID];
    if (!v11)
    {
      sub_190D56F10();
      v11 = sub_190D56ED0();
    }

    v12 = [objc_opt_self() sharedInstance];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 mediaObjectWithTransferGUID:v11 imMessage:0];

      if (v14)
      {
        [v3 sendStickerTapback:v9 mediaObject:v14 parentMessagePartChatItem:a2];

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v15 = [v3 chat];
  if (v15)
  {
    v14 = v15;
    [v15 sendTapback:v16 forChatItem:a2];
    goto LABEL_12;
  }

LABEL_13:
}

void sub_190A38AA8(void *a1)
{
  v3 = v1;
  v5 = [v3 fullScreenBalloonViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 chatItem];

    if (v7)
    {
      v8 = [v7 IMChatItem];
      if (!v8)
      {
        __break(1u);
        goto LABEL_25;
      }

      v9 = v8;
      v10 = [v8 guid];

      if (v10)
      {
        v11 = [a1 chatItemForGUID_];

        if (v11)
        {
          objc_opt_self();
          v12 = swift_dynamicCastObjCClass();
          if (v12)
          {
            v13 = v12;
            if (qword_1EAD46248 != -1)
            {
              swift_once();
            }

            v14 = sub_190D53040();
            __swift_project_value_buffer(v14, qword_1EAD9D790);
            v2 = v11;
            v15 = sub_190D53020();
            v16 = sub_190D576C0();
            if (!os_log_type_enabled(v15, v16))
            {

              goto LABEL_23;
            }

            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v37 = v18;
            *v17 = 136315138;
            v19 = [v13 IMChatItem];
            if (v19)
            {
              v20 = v19;
              v21 = [v19 guid];

              if (v21)
              {
                v22 = sub_190D56F10();
                v24 = v23;

                v25 = sub_19021D9F8(v22, v24, &v37);

                *(v17 + 4) = v25;
                _os_log_impl(&dword_19020E000, v15, v16, "transcriptCollectionViewController requested currently focused chatItem for Tapback. Found: %s", v17, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v18);
                MEMORY[0x193AF7A40](v18, -1, -1);
                MEMORY[0x193AF7A40](v17, -1, -1);
LABEL_23:

                return;
              }

              goto LABEL_28;
            }

LABEL_27:

            __break(1u);
LABEL_28:
            __break(1u);
            return;
          }
        }
      }

      if (qword_1EAD46248 != -1)
      {
        swift_once();
      }

      v26 = sub_190D53040();
      __swift_project_value_buffer(v26, qword_1EAD9D790);
      v7 = v7;
      v27 = sub_190D53020();
      v28 = sub_190D576C0();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v37 = v30;
        *v29 = 136315138;
        v31 = [v7 IMChatItem];
        if (v31)
        {
          v2 = v31;
          v32 = [v31 guid];

          if (v32)
          {
            v33 = sub_190D56F10();
            v35 = v34;

            v36 = sub_19021D9F8(v33, v35, &v37);

            *(v29 + 4) = v36;
            _os_log_impl(&dword_19020E000, v27, v28, "transcriptCollectionViewController requested currently focused chatItem for Tapback: Not found for: %s", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v30);
            MEMORY[0x193AF7A40](v30, -1, -1);
            MEMORY[0x193AF7A40](v29, -1, -1);

            return;
          }

          goto LABEL_26;
        }

LABEL_25:

        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }
  }
}

uint64_t sub_190A38F2C()
{
  v1 = [v0 contextualChatItemsForTapbackPicker];
  sub_1902188FC(0, &qword_1EAD450F0, off_1E72E4A90);
  v2 = sub_190D57180();

  return v2;
}

void sub_190A38FC0(void *a1, uint64_t a2)
{
  v5 = [a1 chatItem];
  v6 = [v2 transcriptBackground];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  v8 = [v5 IMChatItem];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 guid];

    [v7 didAddTapbackToChatItemWithGUID_];
    swift_unknownObjectRelease();
LABEL_4:
    v11 = [v2 collectionView];
    [v11 setNeedsContentOffsetAdjustmentForNextContentSizeChange];

    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v15[4] = sub_190A3A7DC;
    v15[5] = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_190840E6C;
    v15[3] = &block_descriptor_15_0;
    v13 = _Block_copy(v15);
    v14 = a1;

    [v2 setInsertItemsEmojiTapbacksCallBack_];
    _Block_release(v13);
    [v2 sendTapback:a2 chatItem:v5 isRemoval:0];

    return;
  }

  __break(1u);
}

void sub_190A3920C(void *a1, uint64_t a2)
{
  v5 = [a1 chatItem];
  v6 = [v2 transcriptBackground];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  v8 = [v5 IMChatItem];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 guid];

    [v7 didRemoveTapbackFromChatItemWithGUID_];
    swift_unknownObjectRelease();
LABEL_4:
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    v14[4] = sub_190A3A7C4;
    v14[5] = v11;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_190840E6C;
    v14[3] = &block_descriptor_9_5;
    v12 = _Block_copy(v14);
    v13 = a1;

    [v2 setRemoveItemsEmojiTapbacksCallBack_];
    _Block_release(v12);
    [v2 sendTapback:a2 chatItem:v5 isRemoval:1];

    return;
  }

  __break(1u);
}

void sub_190A39604(void *a1)
{
  v3 = [v1 collectionViewController];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = [a1 chatItem];
  v7 = [v6 IMChatItem];

  if (!v7)
  {
    __break(1u);
    return;
  }

  v8 = [v7 guid];

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = [v5 chatItemForGUID_];

  if (!v9)
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10 || (v11 = [v10 tapbacksChatItem]) == 0)
  {

    return;
  }

  v12 = v11;
  v13 = [v1 collectionViewController];
  v14 = [v13 cellForAssociatedChatItem_];

  if (!v14)
  {

LABEL_14:
    return;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = [v15 balloonView];

    if (v16)
    {
      type metadata accessor for AggregateAcknowledgmentBalloonView();
      if (!swift_dynamicCastClass())
      {
      }
    }
  }

  else
  {
  }
}

void sub_190A39868(void *a1, char a2)
{
  v4 = [a1 chatItem];
  v5 = [v4 IMChatItem];
  if (!v5)
  {
    if (qword_1EAD46248 != -1)
    {
      swift_once();
    }

    v12 = sub_190D53040();
    __swift_project_value_buffer(v12, qword_1EAD9D790);
    v13 = v4;
    oslog = sub_190D53020();
    v14 = sub_190D576A0();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v13;
      *v16 = v13;
      v17 = v13;
      _os_log_impl(&dword_19020E000, oslog, v14, "Could not determine imChatItem from chatItem: %@", v15, 0xCu);
      sub_190830D58(v16);
      MEMORY[0x193AF7A40](v16, -1, -1);
      MEMORY[0x193AF7A40](v15, -1, -1);

      v18 = v17;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v6 = v5;
  v7 = [v5 guid];
  if (v7)
  {
    v8 = v7;
    v9 = sub_190D56F10();
    v11 = v10;

    oslog = [v2 collectionViewController];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_190B293D8(v9, v11, a2 & 1);
    }

LABEL_16:
    v18 = oslog;
    goto LABEL_17;
  }

  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v19 = sub_190D53040();
  __swift_project_value_buffer(v19, qword_1EAD9D790);
  v20 = v6;
  v21 = sub_190D53020();
  v22 = sub_190D576A0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v6;
    v25 = v20;
    _os_log_impl(&dword_19020E000, v21, v22, "Could not determine guid on imChatItem: %@", v23, 0xCu);
    sub_190830D58(v24);
    MEMORY[0x193AF7A40](v24, -1, -1);
    MEMORY[0x193AF7A40](v23, -1, -1);
  }

  else
  {
  }

  v18 = v4;
LABEL_17:
}

void sub_190A39C18(void *a1, char a2)
{
  v11 = [v2 collectionViewController];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [a1 chatItem];
  v8 = [v7 IMChatItem];

  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = [v8 guid];

  if (v9)
  {
    [v6 setChatItemHidden:a2 & 1 forChatItemGUID:v9];

    v10 = v9;
  }

  else
  {
LABEL_5:
    v10 = v11;
  }
}

char *sub_190A39EC4(double a1, double a2, double a3, double a4)
{
  v32 = sub_190D56B90();
  v9 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_190D56BB0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC7ChatKit28CKTapbackBackdropCaptureView_backdropLayer;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for CKTapbackBackdropCaptureLayer()) init];
  v17 = type metadata accessor for CKTapbackBackdropCaptureView();
  v33.receiver = v4;
  v33.super_class = v17;
  v18 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = [v18 layer];
  v20 = OBJC_IVAR____TtC7ChatKit28CKTapbackBackdropCaptureView_backdropLayer;
  [v19 addSublayer_];

  v21 = [v18 traitCollection];
  v22 = [v21 tapbackBackdropGroupName];

  v23 = *&v18[v20];
  [v23 setGroupName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50, &unk_190DD5F90);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_190DD1D90;
  v25 = sub_1908B1EA8();
  *(v24 + 32) = &type metadata for CKBalloonBackdropGroupTrait;
  *(v24 + 40) = v25;
  sub_190D57CE0();
  swift_unknownObjectRelease();

  v26 = *&v18[v20];
  sub_190D56B10();
  v27 = [v18 traitCollection];
  sub_190D56BA0();
  sub_190D56B40();
  v29 = v28;

  (*(v9 + 8))(v11, v32);
  (*(v13 + 8))(v15, v12);
  [v26 setScale_];

  [v18 setAutoresizingMask_];
  return v18;
}

void sub_190A3A22C(char *a1)
{
  v2 = [a1 traitCollection];
  v4 = [v2 tapbackBackdropGroupName];

  v3 = *&a1[OBJC_IVAR____TtC7ChatKit28CKTapbackBackdropCaptureView_backdropLayer];
  [v3 setGroupName_];
}

id sub_190A3A5E8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_190A3A620(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0, &unk_190DD9790);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_190A3A6D8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [v4 inputController];
  if (v7)
  {
    v8 = v7;
    if (a1)
    {
      a1 = sub_190D56D60();
    }

    if (a3)
    {
      v9 = sub_190D56ED0();
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    [v8 _presentPluginIfNecessaryWithPayload_withPayloadID_];
  }
}

uint64_t NewSendersOnboardingVisual.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_190D54AC0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AD40, &qword_190DE8FD0);
  return sub_190A3A83C(a2 + *(v3 + 44));
}

uint64_t sub_190A3A83C@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AD58, &qword_190DE9058) - 8;
  MEMORY[0x1EEE9AC00](v79);
  v2 = &v74 - v1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AD60, &qword_190DE9060) - 8;
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v80 = &v74 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AD68, &qword_190DE9068);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AD70, &qword_190DE9070);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v78 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74 - v18;
  *v19 = sub_190D548D0();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v76 = v19;
  v20 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AD78, &qword_190DE9078) + 44)];
  *v14 = sub_190D56500();
  *(v14 + 1) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AD80, &qword_190DE9080);
  sub_190A3AFEC(&v14[*(v22 + 44)]);
  KeyPath = swift_getKeyPath();
  v24 = &v14[*(v9 + 44)];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AD88, &qword_190DE90B8);
  v25 = *(v77 + 28);
  v26 = *MEMORY[0x1E697F680];
  v75 = sub_190D54A90();
  v27 = *(*(v75 - 8) + 104);
  v27(v24 + v25, v26, v75);
  *v24 = KeyPath;
  sub_19022FD14(v14, v11, &qword_1EAD5AD68, &qword_190DE9068);
  *v20 = 0;
  v20[8] = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AD90, &qword_190DE90C0);
  sub_19022FD14(v11, &v20[*(v28 + 48)], &qword_1EAD5AD68, &qword_190DE9068);
  sub_19022EEA4(v14, &qword_1EAD5AD68, &qword_190DE9068);
  sub_19022EEA4(v11, &qword_1EAD5AD68, &qword_190DE9068);
  *v2 = sub_190D54AD0();
  *(v2 + 1) = 0x4036000000000000;
  v2[16] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AD98, &qword_190DE90C8);
  sub_190A3B420(&v2[*(v29 + 44)]);
  LOBYTE(v11) = sub_190D552B0();
  v30 = &v2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ADA0, &qword_190DE90D0) + 36)];
  *v30 = v11;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  v30[40] = 1;
  LOBYTE(v11) = sub_190D552C0();
  sub_190D539C0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = &v2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ADA8, &qword_190DE90D8) + 36)];
  *v39 = v11;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  LOBYTE(v11) = sub_190D55300();
  sub_190D539C0();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = &v2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ADB0, &qword_190DE90E0) + 36)];
  *v48 = v11;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  v49 = &v2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ADB8, &qword_190DE90E8) + 36)];
  v50 = *(sub_190D543E0() + 20);
  v51 = *MEMORY[0x1E697F468];
  v52 = sub_190D54A20();
  (*(*(v52 - 8) + 104))(&v49->i8[v50], v51, v52);
  *v49 = vdupq_n_s64(0x4040000000000000uLL);
  v53 = [objc_opt_self() systemBackgroundColor];
  v54 = sub_190D55CE0();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B18, &unk_190DE90F0);
  *(v49->i64 + *(v55 + 52)) = v54;
  *(v49->i16 + *(v55 + 56)) = 256;
  v56 = sub_190D56500();
  v58 = v57;
  v59 = (v49->i64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B20, &unk_190DD8640) + 36));
  *v59 = v56;
  v59[1] = v58;
  v60 = swift_getKeyPath();
  v61 = &v2[*(v79 + 44)];
  v27(v61 + *(v77 + 28), v26, v75);
  *v61 = v60;
  sub_190D56500();
  sub_190D54430();
  v62 = v80;
  sub_19081E40C(v2, v80, &qword_1EAD5AD58, &qword_190DE9058);
  v63 = (v62 + *(v82 + 44));
  v64 = v90;
  v63[4] = v89;
  v63[5] = v64;
  v63[6] = v91;
  v65 = v86;
  *v63 = v85;
  v63[1] = v65;
  v66 = v88;
  v63[2] = v87;
  v63[3] = v66;
  v67 = v81;
  sub_19081E40C(v62, v81, &qword_1EAD5AD60, &qword_190DE9060);
  v68 = v76;
  v69 = v78;
  sub_19022FD14(v76, v78, &qword_1EAD5AD70, &qword_190DE9070);
  v70 = v83;
  sub_19022FD14(v67, v83, &qword_1EAD5AD60, &qword_190DE9060);
  v71 = v84;
  sub_19022FD14(v69, v84, &qword_1EAD5AD70, &qword_190DE9070);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ADC0, &qword_190DE9100);
  sub_19022FD14(v70, v71 + *(v72 + 48), &qword_1EAD5AD60, &qword_190DE9060);
  sub_19022EEA4(v67, &qword_1EAD5AD60, &qword_190DE9060);
  sub_19022EEA4(v68, &qword_1EAD5AD70, &qword_190DE9070);
  sub_19022EEA4(v70, &qword_1EAD5AD60, &qword_190DE9060);
  return sub_19022EEA4(v69, &qword_1EAD5AD70, &qword_190DE9070);
}

uint64_t sub_190A3AFEC@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE30, &qword_190DE91D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v20 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = [objc_opt_self() systemBackgroundColor];
  v19 = sub_190D55CE0();
  sub_190D56500();
  sub_190D53C60();
  *&v21[3] = *&v21[27];
  *&v21[11] = *&v21[35];
  *&v21[19] = *&v21[43];
  v9 = sub_190D55EA0();
  v10 = sub_190D54E80();
  sub_190D56500();
  sub_190D53C60();
  v28 = v23;
  v27 = v25;
  v30 = v9;
  *v31 = v10;
  *&v31[8] = v22;
  v31[16] = v23;
  *(&v32 + 6) = v24;
  BYTE14(v32) = v25;
  *&v33[6] = v26;
  sub_190D553B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE38, &qword_190DE91D8);
  sub_190A3CF24();
  sub_190D556F0();

  v11 = *(v3 + 16);
  v12 = v20;
  v11(v20, v7, v2);
  v13 = v19;
  *&v29[0] = v19;
  WORD4(v29[0]) = 256;
  *(v29 + 10) = *v21;
  *(&v29[1] + 10) = *&v21[8];
  *(&v29[2] + 10) = *&v21[16];
  *(&v29[3] + 1) = *&v21[23];
  v14 = v29[1];
  *a1 = v29[0];
  *(a1 + 1) = v14;
  v15 = v29[3];
  *(a1 + 2) = v29[2];
  *(a1 + 3) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE48, &qword_190DE91E0);
  v11(&a1[*(v16 + 48)], v12, v2);
  sub_19022FD14(v29, &v30, &qword_1EAD5AE50, &qword_190DE91E8);
  v17 = *(v3 + 8);
  v17(v7, v2);
  v17(v12, v2);
  v30 = v13;
  *v31 = 256;
  *&v31[2] = *v21;
  v32 = *&v21[8];
  *v33 = *&v21[16];
  *&v33[14] = *&v21[23];
  return sub_19022EEA4(&v30, &qword_1EAD5AE50, &qword_190DE91E8);
}

uint64_t sub_190A3B358(uint64_t a1)
{
  v2 = sub_190D54A90();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_190D545A0();
}

id sub_190A3B420@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ADC8, &qword_190DE9108);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v110 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v93 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ADD0, &qword_190DE9110);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v109 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v93 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ADD8, &qword_190DE9118);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v103 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v93 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v93 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v93 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v97 = (&v93 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v93 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v93 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v93 - v29;
  *v30 = sub_190D548D0();
  *(v30 + 1) = 0;
  v30[16] = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ADE0, &qword_190DE9120);
  v32 = *(v31 + 44);
  v102 = v30;
  sub_190A3C57C(sub_190A3BE1C, &v30[v32]);
  *v11 = sub_190D548D0();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ADE8, &qword_190DE9128) + 44);
  v104 = v11;
  sub_190A3C004(&v11[v33]);
  *v27 = sub_190D548D0();
  *(v27 + 1) = 0;
  v27[16] = 1;
  v34 = *(v31 + 44);
  v100 = v27;
  sub_190A3C57C(sub_190A3C908, &v27[v34]);
  *v24 = sub_190D548D0();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v35 = *(v31 + 44);
  v101 = v24;
  sub_190A3C57C(sub_190A3CAF4, &v24[v35]);
  sub_190D56260();
  LOBYTE(v27) = sub_190D55300();
  v36 = sub_190D539C0();
  v37 = *(v2 + 44);
  v105 = v6;
  v38 = &v6[v37];
  *v38 = v27;
  *(v38 + 1) = v39;
  *(v38 + 2) = v40;
  *(v38 + 3) = v41;
  *(v38 + 4) = v42;
  v38[40] = 0;
  result = CKFrameworkBundle(v36);
  if (result)
  {
    v44 = result;
    v45 = sub_190D56ED0();
    v46 = sub_190D56ED0();
    v47 = [v44 localizedStringForKey:v45 value:0 table:v46];

    v48 = sub_190D56F10();
    v50 = v49;

    v115 = v48;
    v116 = v50;
    sub_19081E484();
    v51 = sub_190D555F0();
    v53 = v52;
    LOBYTE(v47) = v54;
    LODWORD(v115) = sub_190D54EB0();
    v55 = sub_190D55580();
    v57 = v56;
    v59 = v58;
    sub_19081E474(v51, v53, v47 & 1);

    sub_190D55320();
    v60 = sub_190D555B0();
    v62 = v61;
    LOBYTE(v46) = v63;

    sub_19081E474(v55, v57, v59 & 1);

    sub_190D553B0();
    v99 = sub_190D55540();
    v95 = v64;
    v66 = v65;
    v96 = v67;
    sub_19081E474(v60, v62, v46 & 1);

    v94 = sub_190D552E0();
    sub_190D539C0();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v93 = v66 & 1;
    v130 = v66 & 1;
    v127 = 0;
    v76 = sub_190D548D0();
    v77 = v97;
    *v97 = v76;
    *(v77 + 8) = 0;
    *(v77 + 16) = 1;
    sub_190A3C57C(sub_190A3CCD8, v77 + *(v31 + 44));
    v78 = v108;
    sub_19022FD14(v102, v108, &qword_1EAD5ADD8, &qword_190DE9118);
    v79 = v109;
    sub_19022FD14(v104, v109, &qword_1EAD5ADD0, &qword_190DE9110);
    v80 = v106;
    sub_19022FD14(v100, v106, &qword_1EAD5ADD8, &qword_190DE9118);
    v81 = v107;
    sub_19022FD14(v101, v107, &qword_1EAD5ADD8, &qword_190DE9118);
    v82 = v110;
    sub_19022FD14(v105, v110, &qword_1EAD5ADC8, &qword_190DE9108);
    sub_19022FD14(v77, v103, &qword_1EAD5ADD8, &qword_190DE9118);
    v83 = v98;
    sub_19022FD14(v78, v98, &qword_1EAD5ADD8, &qword_190DE9118);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ADF0, &unk_190DE9130);
    sub_19022FD14(v79, v83 + v84[12], &qword_1EAD5ADD0, &qword_190DE9110);
    sub_19022FD14(v80, v83 + v84[16], &qword_1EAD5ADD8, &qword_190DE9118);
    sub_19022FD14(v81, v83 + v84[20], &qword_1EAD5ADD8, &qword_190DE9118);
    sub_19022FD14(v82, v83 + v84[24], &qword_1EAD5ADC8, &qword_190DE9108);
    v85 = (v83 + v84[28]);
    *&v111 = v99;
    v86 = v95;
    *(&v111 + 1) = v95;
    LOBYTE(v80) = v93;
    LOBYTE(v112) = v93;
    *(&v112 + 1) = *v129;
    DWORD1(v112) = *&v129[3];
    v87 = v96;
    *(&v112 + 1) = v96;
    LOBYTE(v81) = v94;
    LOBYTE(v113) = v94;
    *(&v113 + 1) = *v128;
    DWORD1(v113) = *&v128[3];
    *(&v113 + 1) = v69;
    *v114 = v71;
    *&v114[8] = v73;
    *&v114[16] = v75;
    v114[24] = 0;
    v88 = v111;
    v89 = v112;
    *(v85 + 57) = *&v114[9];
    v90 = *v114;
    v85[2] = v113;
    v85[3] = v90;
    *v85 = v88;
    v85[1] = v89;
    v91 = v103;
    sub_19022FD14(v103, v83 + v84[32], &qword_1EAD5ADD8, &qword_190DE9118);
    v92 = v83 + v84[36];
    *v92 = 0x4034000000000000;
    *(v92 + 8) = 0;
    sub_19022FD14(&v111, &v115, &qword_1EAD596C0, &unk_190DDAEA0);
    sub_19022EEA4(v77, &qword_1EAD5ADD8, &qword_190DE9118);
    sub_19022EEA4(v105, &qword_1EAD5ADC8, &qword_190DE9108);
    sub_19022EEA4(v101, &qword_1EAD5ADD8, &qword_190DE9118);
    sub_19022EEA4(v100, &qword_1EAD5ADD8, &qword_190DE9118);
    sub_19022EEA4(v104, &qword_1EAD5ADD0, &qword_190DE9110);
    sub_19022EEA4(v102, &qword_1EAD5ADD8, &qword_190DE9118);
    sub_19022EEA4(v91, &qword_1EAD5ADD8, &qword_190DE9118);
    v115 = v99;
    v116 = v86;
    v117 = v80;
    *v118 = *v129;
    *&v118[3] = *&v129[3];
    v119 = v87;
    v120 = v81;
    *v121 = *v128;
    *&v121[3] = *&v128[3];
    v122 = v69;
    v123 = v71;
    v124 = v73;
    v125 = v75;
    v126 = 0;
    sub_19022EEA4(&v115, &qword_1EAD596C0, &unk_190DDAEA0);
    sub_19022EEA4(v110, &qword_1EAD5ADC8, &qword_190DE9108);
    sub_19022EEA4(v107, &qword_1EAD5ADD8, &qword_190DE9118);
    sub_19022EEA4(v106, &qword_1EAD5ADD8, &qword_190DE9118);
    sub_19022EEA4(v109, &qword_1EAD5ADD0, &qword_190DE9110);
    return sub_19022EEA4(v108, &qword_1EAD5ADD8, &qword_190DE9118);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190A3BE1C(uint64_t a1@<X8>)
{
  v2 = sub_190D55ED0();
  v3 = sub_190D54E80();
  v20 = v3;
  v4 = CKFrameworkBundle(v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_190D56ED0();
    v7 = sub_190D56ED0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_190D56F10();
    sub_19081E484();
    v9 = sub_190D555F0();
    v11 = v10;
    LOBYTE(v7) = v12;
    sub_190D54E80();
    v13 = sub_190D55580();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_19081E474(v9, v11, v7 & 1);

    *a1 = v2;
    *(a1 + 8) = v20;
    *(a1 + 16) = v13;
    *(a1 + 24) = v15;
    *(a1 + 32) = v17 & 1;
    *(a1 + 40) = v19;
    sub_190D50920();
    sub_19081BE48(v13, v15, v17 & 1);
    sub_190D52690();
    sub_19081E474(v13, v15, v17 & 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190A3C004@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE20, &qword_190DE91C0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v29 - v5);
  v7 = sub_190D55EA0();
  v8 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE00, &unk_190E063B0) + 36));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F78, &qword_190DD3DD0) + 28);
  v10 = *MEMORY[0x1E69816C8];
  v11 = sub_190D55F00();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = swift_getKeyPath();
  *v6 = v7;
  sub_190D55320();
  sub_190D553D0();
  v12 = sub_190D55420();

  KeyPath = swift_getKeyPath();
  v14 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE08, &qword_190DE91A8) + 36));
  *v14 = KeyPath;
  v14[1] = v12;
  *(v6 + *(v2 + 44)) = sub_190D54E80();
  v15 = sub_190D548D0();
  LOBYTE(v36) = 1;
  sub_190A3C388(&v41);
  v16 = v41;
  v17 = v42;
  v18 = v43;
  v30 = v44;
  v19 = v45;
  v31 = v46;
  LOBYTE(v41) = v45;
  LOBYTE(v12) = v36;
  v20 = v33;
  sub_19022FD14(v6, v33, &qword_1EAD5AE20, &qword_190DE91C0);
  v21 = v20;
  v22 = v32;
  sub_19022FD14(v21, v32, &qword_1EAD5AE20, &qword_190DE91C0);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE28, &qword_190DE91C8) + 48);
  v36 = v15;
  LOBYTE(v37) = v12;
  *(&v37 + 1) = *v35;
  DWORD1(v37) = *&v35[3];
  *(&v37 + 1) = v16;
  LODWORD(v38) = v17;
  v24 = v30;
  *(&v38 + 1) = v18;
  *&v39 = v30;
  BYTE8(v39) = v19;
  *(&v39 + 9) = *v34;
  HIDWORD(v39) = *&v34[3];
  v25 = v31;
  v40 = v31;
  *(v23 + 64) = v31;
  v26 = v37;
  *v23 = v36;
  *(v23 + 16) = v26;
  v27 = v39;
  *(v23 + 32) = v38;
  *(v23 + 48) = v27;
  sub_19022FD14(&v36, &v41, &qword_1EAD5AE18, &qword_190DE91B8);
  sub_19022EEA4(v6, &qword_1EAD5AE20, &qword_190DE91C0);
  v41 = v15;
  v42 = 0;
  LOBYTE(v43) = v12;
  *(&v43 + 1) = *v35;
  HIDWORD(v43) = *&v35[3];
  v44 = v16;
  v45 = v17;
  v46 = v18;
  v47 = v24;
  v48 = v19;
  *v49 = *v34;
  *&v49[3] = *&v34[3];
  v50 = v25;
  sub_19022EEA4(&v41, &qword_1EAD5AE18, &qword_190DE91B8);
  return sub_19022EEA4(v33, &qword_1EAD5AE20, &qword_190DE91C0);
}

void sub_190A3C388(uint64_t a1@<X8>)
{
  v2 = sub_190D55EA0();
  v3 = sub_190D54E80();
  v20 = v3;
  v4 = CKFrameworkBundle(v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_190D56ED0();
    v7 = sub_190D56ED0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_190D56F10();
    sub_19081E484();
    v9 = sub_190D555F0();
    v11 = v10;
    LOBYTE(v7) = v12;
    sub_190D54E80();
    v13 = sub_190D55580();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_19081E474(v9, v11, v7 & 1);

    *a1 = v2;
    *(a1 + 8) = v20;
    *(a1 + 16) = v13;
    *(a1 + 24) = v15;
    *(a1 + 32) = v17 & 1;
    *(a1 + 40) = v19;
    sub_190D50920();
    sub_19081BE48(v13, v15, v17 & 1);
    sub_190D52690();
    sub_19081E474(v13, v15, v17 & 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190A3C57C@<X0>(void (*a1)(uint64_t *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ADF8, &qword_190DE9140);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v30 - v8);
  v10 = sub_190D55EA0();
  v11 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE00, &unk_190E063B0) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F78, &qword_190DD3DD0) + 28);
  v13 = *MEMORY[0x1E69816C8];
  v14 = sub_190D55F00();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = swift_getKeyPath();
  *v9 = v10;
  sub_190D55320();
  sub_190D553D0();
  v15 = sub_190D55420();

  KeyPath = swift_getKeyPath();
  v17 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE08, &qword_190DE91A8) + 36));
  *v17 = KeyPath;
  v17[1] = v15;
  *(v9 + *(v4 + 44)) = sub_190D55DA0();
  v18 = sub_190D548D0();
  LOBYTE(v37) = 1;
  a1(&v42);
  v19 = v42;
  LODWORD(v4) = v43;
  v32 = v44;
  v31 = v45;
  LOBYTE(v12) = v46;
  v20 = v47;
  LOBYTE(v42) = v46;
  LOBYTE(v15) = v37;
  v33 = v6;
  sub_19022FD14(v9, v6, &qword_1EAD5ADF8, &qword_190DE9140);
  v21 = v6;
  v22 = v34;
  sub_19022FD14(v21, v34, &qword_1EAD5ADF8, &qword_190DE9140);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE10, &qword_190DE91B0) + 48);
  v37 = v18;
  LOBYTE(v38) = v15;
  *(&v38 + 1) = *v36;
  DWORD1(v38) = *&v36[3];
  v24 = v19;
  *(&v38 + 1) = v19;
  LODWORD(v39) = v4;
  v25 = v32;
  v26 = v31;
  *(&v39 + 1) = v32;
  *&v40 = v31;
  BYTE8(v40) = v12;
  *(&v40 + 9) = *v35;
  HIDWORD(v40) = *&v35[3];
  v41 = v20;
  *(v23 + 64) = v20;
  v27 = v38;
  *v23 = v37;
  *(v23 + 16) = v27;
  v28 = v40;
  *(v23 + 32) = v39;
  *(v23 + 48) = v28;
  sub_19022FD14(&v37, &v42, &qword_1EAD5AE18, &qword_190DE91B8);
  sub_19022EEA4(v9, &qword_1EAD5ADF8, &qword_190DE9140);
  v42 = v18;
  v43 = 0;
  LOBYTE(v44) = v15;
  *(&v44 + 1) = *v36;
  HIDWORD(v44) = *&v36[3];
  v45 = v24;
  v46 = v4;
  v47 = v25;
  v48 = v26;
  v49 = v12;
  *v50 = *v35;
  *&v50[3] = *&v35[3];
  v51 = v20;
  sub_19022EEA4(&v42, &qword_1EAD5AE18, &qword_190DE91B8);
  return sub_19022EEA4(v33, &qword_1EAD5ADF8, &qword_190DE9140);
}

void sub_190A3C908(uint64_t a1@<X8>)
{
  v2 = sub_190D55EA0();
  v3 = sub_190D54E80();
  v20 = v3;
  v4 = CKFrameworkBundle(v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_190D56ED0();
    v7 = sub_190D56ED0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_190D56F10();
    sub_19081E484();
    v9 = sub_190D555F0();
    v11 = v10;
    LOBYTE(v7) = v12;
    sub_190D54E80();
    v13 = sub_190D55580();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_19081E474(v9, v11, v7 & 1);

    *a1 = v2;
    *(a1 + 8) = v20;
    *(a1 + 16) = v13;
    *(a1 + 24) = v15;
    *(a1 + 32) = v17 & 1;
    *(a1 + 40) = v19;
    sub_190D50920();
    sub_19081BE48(v13, v15, v17 & 1);
    sub_190D52690();
    sub_19081E474(v13, v15, v17 & 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_190A3CAF4(uint64_t a1@<X8>)
{
  v2 = sub_190D55EA0();
  v3 = sub_190D54E80();
  v20 = v3;
  v4 = CKFrameworkBundle(v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_190D56ED0();
    v7 = sub_190D56ED0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_190D56F10();
    sub_19081E484();
    v9 = sub_190D555F0();
    v11 = v10;
    LOBYTE(v7) = v12;
    sub_190D54E80();
    v13 = sub_190D55580();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_19081E474(v9, v11, v7 & 1);

    *a1 = v2;
    *(a1 + 8) = v20;
    *(a1 + 16) = v13;
    *(a1 + 24) = v15;
    *(a1 + 32) = v17 & 1;
    *(a1 + 40) = v19;
    sub_190D50920();
    sub_19081BE48(v13, v15, v17 & 1);
    sub_190D52690();
    sub_19081E474(v13, v15, v17 & 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_190A3CCD8(uint64_t a1@<X8>)
{
  v2 = sub_190D55EA0();
  v3 = sub_190D54E80();
  v20 = v3;
  v4 = CKFrameworkBundle(v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_190D56ED0();
    v7 = sub_190D56ED0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_190D56F10();
    sub_19081E484();
    v9 = sub_190D555F0();
    v11 = v10;
    LOBYTE(v7) = v12;
    sub_190D54E80();
    v13 = sub_190D55580();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_19081E474(v9, v11, v7 & 1);

    *a1 = v2;
    *(a1 + 8) = v20;
    *(a1 + 16) = v13;
    *(a1 + 24) = v15;
    *(a1 + 32) = v17 & 1;
    *(a1 + 40) = v19;
    sub_190D50920();
    sub_19081BE48(v13, v15, v17 & 1);
    sub_190D52690();
    sub_19081E474(v13, v15, v17 & 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190A3CEC4@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_190D54AC0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AD40, &qword_190DE8FD0);
  return sub_190A3A83C(a2 + *(v3 + 44));
}

unint64_t sub_190A3CF24()
{
  result = qword_1EAD5AE40;
  if (!qword_1EAD5AE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AE38, &qword_190DE91D8);
    sub_1908B1228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AE40);
  }

  return result;
}

id sub_190A3CFB0()
{
  v1 = v0;
  if ([v0 supportsMutatingGroupMembers])
  {
    goto LABEL_2;
  }

  v3 = [v0 sendingService];
  v4 = [objc_opt_self() smsService];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      sub_190A3EB74();
      v6 = sub_190D57D90();

      v2 = v6 ^ 1;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v4)
    {
LABEL_2:
      v2 = 0;
      goto LABEL_10;
    }
  }

  v2 = 1;
LABEL_10:
  result = [v1 isGroupConversation];
  if (result)
  {
    if (([v1 hasLeftGroupChat] | v2))
    {
      return 0;
    }

    else
    {
      return [v1 canInsertMoreRecipients];
    }
  }

  return result;
}

uint64_t sub_190A3D0C0()
{
  v1[26] = v0;
  sub_190D572A0();
  v1[27] = sub_190D57290();
  v3 = sub_190D57240();
  v1[28] = v3;
  v1[29] = v2;

  return MEMORY[0x1EEE6DFA0](sub_190A3D158, v3, v2);
}

uint64_t sub_190A3D158()
{
  v1 = v0[26];
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_190A3D274;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD551D0, &qword_190DD97D8);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_190892610;
  v0[21] = &block_descriptor_6_5;
  v0[22] = v2;
  [v1 canShareFocusStatusWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_190A3D274()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return MEMORY[0x1EEE6DFA0](sub_190A3D37C, v2, v1);
}

uint64_t sub_190A3D37C()
{
  v1 = *(v0 + 248);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isSatelliteConnectionActive];

  if (v3)
  {

    if (qword_1EAD461D0 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD9D700);
    v5 = sub_190D53020();
    v6 = sub_190D576C0();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_15;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Sharing focus status is unsupported because satellite connection is active.";
LABEL_14:
    _os_log_impl(&dword_19020E000, v5, v6, v8, v7, 2u);
    MEMORY[0x193AF7A40](v7, -1, -1);
LABEL_15:

    v12 = *(v0 + 8);

    return v12(0);
  }

  if ((v1 & 1) == 0)
  {

    if (qword_1EAD461D0 != -1)
    {
      swift_once();
    }

    v11 = sub_190D53040();
    __swift_project_value_buffer(v11, qword_1EAD9D700);
    v5 = sub_190D53020();
    v6 = sub_190D576C0();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_15;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Cannot share focus status with chat, not checking to see if focus status is already shared.";
    goto LABEL_14;
  }

  v9 = *(v0 + 208);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 248;
  *(v0 + 88) = sub_190A3D664;
  v10 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE68, &qword_190DE9210);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_190A3DA74;
  *(v0 + 168) = &block_descriptor_9_6;
  *(v0 + 176) = v10;
  [v9 isInvitedToViewMyFocusStatusWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_190A3D664()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_190A3D8CC;
  }

  else
  {
    v5 = sub_190A3D794;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_190A3D794()
{

  v1 = *(v0 + 248);
  if (qword_1EAD461D0 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D700);
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_19020E000, v3, v4, "Determined focus status is shared: %{BOOL}d", v5, 8u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  v6 = *(v0 + 8);
  if (v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  return v6(v7);
}

uint64_t sub_190A3D8CC()
{

  swift_willThrow();
  if (qword_1EAD461D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D700);
  v3 = v1;
  v4 = sub_190D53020();
  v5 = sub_190D576A0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 240);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_19020E000, v4, v5, "Failed to determine focus status with error %@", v8, 0xCu);
    sub_190830D58(v9);
    MEMORY[0x193AF7A40](v9, -1, -1);
    MEMORY[0x193AF7A40](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(2);
}

uint64_t sub_190A3DA74(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020, &qword_190DD6530);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_190A3DB40(char a1)
{
  *(v2 + 208) = v1;
  *(v2 + 306) = a1;
  sub_190D572A0();
  *(v2 + 216) = sub_190D57290();
  v4 = sub_190D57240();
  *(v2 + 224) = v4;
  *(v2 + 232) = v3;

  return MEMORY[0x1EEE6DFA0](sub_190A3DBDC, v4, v3);
}

uint64_t sub_190A3DBDC()
{
  v1 = [*(v0 + 208) recipient];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 defaultIMHandle];

    if (!v3)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v4);
    }

    v5 = [v3 normalizedID];
    *(v0 + 240) = v5;

    if (v5)
    {
      v6 = *(v0 + 306);
      *(v0 + 248) = sub_190D56F10();
      *(v0 + 256) = v7;
      if ((v6 & 1) == 0)
      {
        v14 = [objc_opt_self() sharedInstance];
        *(v0 + 288) = v14;
        *(v0 + 16) = v0;
        *(v0 + 24) = sub_190A3E218;
        v15 = swift_continuation_init();
        *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE58, &qword_190DE91F8);
        *(v0 + 144) = MEMORY[0x1E69E9820];
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = sub_190A3EA5C;
        *(v0 + 168) = &block_descriptor_62;
        *(v0 + 176) = v15;
        [v14 manuallyRemoveSharingOfFocusStatusWithHandleID:v5 completion:v0 + 144];
        v4 = v0 + 16;
LABEL_11:

        return MEMORY[0x1EEE6DEC8](v4);
      }

      v8 = [*(v0 + 208) lastAddressedHandle];
      *(v0 + 264) = v8;
      if (v8)
      {
        v9 = v8;
        v10 = [objc_opt_self() sharedInstance];
        *(v0 + 272) = v10;
        *(v0 + 80) = v0;
        *(v0 + 120) = v0 + 304;
        *(v0 + 88) = sub_190A3DF14;
        v11 = swift_continuation_init();
        *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE60, &qword_190DE9200);
        *(v0 + 144) = MEMORY[0x1E69E9820];
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = sub_190A3E988;
        *(v0 + 168) = &block_descriptor_3_1;
        *(v0 + 176) = v11;
        [v10 manuallyShareFocusStatusWithHandleID:v5 fromHandleID:v9 completion:v0 + 144];
        v4 = v0 + 80;
        goto LABEL_11;
      }
    }
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_190A3DF14()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_190A3E508;
  }

  else
  {
    v5 = sub_190A3E044;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_190A3E044()
{
  v17 = v0;
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 240);

  v4 = *(v0 + 305);

  if (qword_1EAD461D0 != -1)
  {
    swift_once();
  }

  v5 = sub_190D53040();
  __swift_project_value_buffer(v5, qword_1EAD9D700);
  sub_190D52690();
  v6 = sub_190D53020();
  v7 = sub_190D576C0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 256);
  if (v8)
  {
    v10 = *(v0 + 248);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    v13 = sub_19021D9F8(v10, v9, &v16);

    *(v11 + 4) = v13;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v4;
    _os_log_impl(&dword_19020E000, v6, v7, "Manually tried to shared focus status with handle %s, success: %{BOOL}d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x193AF7A40](v12, -1, -1);
    MEMORY[0x193AF7A40](v11, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14(v4);
}

uint64_t sub_190A3E218()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_190A3E74C;
  }

  else
  {
    v5 = sub_190A3E348;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_190A3E348()
{
  v15 = v0;
  v1 = v0[36];
  v2 = v0[30];

  if (qword_1EAD461D0 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  __swift_project_value_buffer(v3, qword_1EAD9D700);
  sub_190D52690();
  v4 = sub_190D53020();
  v5 = sub_190D576A0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  if (v6)
  {
    v8 = v0[31];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    v11 = sub_19021D9F8(v8, v7, &v14);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_19020E000, v4, v5, "Successfully unshared focus status with handle %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x193AF7A40](v10, -1, -1);
    MEMORY[0x193AF7A40](v9, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_190A3E508()
{
  v22 = v0;
  v1 = v0[34];
  v2 = v0[33];
  v3 = v0[30];

  swift_willThrow();

  if (qword_1EAD461D0 != -1)
  {
    swift_once();
  }

  v4 = v0[35];
  v5 = sub_190D53040();
  __swift_project_value_buffer(v5, qword_1EAD9D700);
  sub_190D52690();
  v6 = v4;
  v7 = sub_190D53020();
  v8 = sub_190D576A0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[35];
  v11 = v0[32];
  if (v9)
  {
    v12 = v0[31];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v13 = 136315394;
    v16 = sub_19021D9F8(v12, v11, &v21);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2112;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v14 = v18;
    _os_log_impl(&dword_19020E000, v7, v8, "Failed to manually share focus status with handle %s, error: %@", v13, 0x16u);
    sub_190830D58(v14);
    MEMORY[0x193AF7A40](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x193AF7A40](v15, -1, -1);
    MEMORY[0x193AF7A40](v13, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_190A3E74C()
{
  v21 = v0;
  v1 = v0[36];
  v2 = v0[30];

  swift_willThrow();

  if (qword_1EAD461D0 != -1)
  {
    swift_once();
  }

  v3 = v0[37];
  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9D700);
  sub_190D52690();
  v5 = v3;
  v6 = sub_190D53020();
  v7 = sub_190D576A0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[37];
  v10 = v0[32];
  if (v8)
  {
    v11 = v0[31];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v12 = 136315394;
    v15 = sub_19021D9F8(v11, v10, &v20);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2112;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v13 = v17;
    _os_log_impl(&dword_19020E000, v6, v7, "Failed to manually unshare focus status with handle %s, error: %@", v12, 0x16u);
    sub_190830D58(v13);
    MEMORY[0x193AF7A40](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x193AF7A40](v14, -1, -1);
    MEMORY[0x193AF7A40](v12, -1, -1);
  }

  else
  {
  }

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_190A3E988(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020, &qword_190DD6530);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x1EEE6DEE8](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;

    return MEMORY[0x1EEE6DEE0](v7);
  }
}

uint64_t sub_190A3EA5C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020, &qword_190DD6530);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_190A3EB08()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D700);
  __swift_project_value_buffer(v0, qword_1EAD9D700);
  sub_190D53010();
  return sub_190D53030();
}

unint64_t sub_190A3EB74()
{
  result = qword_1EAD5AE70;
  if (!qword_1EAD5AE70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD5AE70);
  }

  return result;
}

id sub_190A3ED04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_190D51B70();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a3;
  swift_beginAccess();
  (*(v6 + 16))(v8, a1 + v9, v5);
  v10 = sub_190D51B10();
  (*(v6 + 8))(v8, v5);

  return v10;
}

uint64_t sub_190A3EE34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_190D51B70();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

void sub_190A3EEC4(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_190D51B70();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51B20();
  v10 = *a4;
  swift_beginAccess();
  v11 = *(v7 + 40);
  v12 = a1;
  v11(&a1[v10], v9, v6);
  swift_endAccess();
}

uint64_t sub_190A3EFE4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_190D51B70();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t sub_190A3F070@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = sub_190D51B70();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

uint64_t sub_190A3F0F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_190D51B70();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = *a2;
  v14 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v13 + v14, v12, v8);
  return swift_endAccess();
}

uint64_t sub_190A3F298()
{
  v1 = v0;
  v2 = sub_190D51B70();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___CKChatItemDiff_inserted;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v5, v1 + v6, v2);
  LOBYTE(v6) = sub_190D51B40();
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v6 & 1) != 0 && (v9 = OBJC_IVAR___CKChatItemDiff_removed, swift_beginAccess(), v7(v5, v1 + v9, v2), LOBYTE(v9) = sub_190D51B40(), v8(v5, v2), (v9))
  {
    v10 = OBJC_IVAR___CKChatItemDiff_parentItemsToReload;
    swift_beginAccess();
    v7(v5, v1 + v10, v2);
    v11 = sub_190D51B40();
    v8(v5, v2);
    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

id ChatItemDiff.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ChatItemDiff.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChatItemDiff(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ChatItemDiff(uint64_t a1)
{
  result = qword_1EAD46148;
  if (!qword_1EAD46148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190A3F64C(uint64_t a1)
{
  result = sub_190D51B70();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_190A3F8CC(uint64_t a1)
{
  v2 = sub_190D51B70();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v33 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v33 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  sub_190D51B60();
  sub_190D51B60();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A408, &qword_190DE7600);
  v16 = sub_190D585B0();
  v34 = v15;
  v38 = a1;
  v17 = sub_190D585C0();
  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = (v16 + 57);
    while (v19 < *(v16 + 16))
    {
      if (*v20)
      {
        goto LABEL_14;
      }

      ++v19;
      sub_190D51B30();
      v20 += 32;
      if (v18 == v19)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v21 = *(v17 + 16);
    if (!v21)
    {
LABEL_11:

      v24 = *(v3 + 16);
      v25 = v36;
      v24(v36, v14, v2);
      v26 = v37;
      v24(v37, v11, v2);
      v27 = type metadata accessor for ChatItemDiff(0);
      v28 = objc_allocWithZone(v27);
      v24(&v28[OBJC_IVAR___CKChatItemDiff_inserted], v25, v2);
      v24(&v28[OBJC_IVAR___CKChatItemDiff_removed], v26, v2);
      v29 = v35;
      sub_190D51B60();
      (*(v3 + 32))(&v28[OBJC_IVAR___CKChatItemDiff_parentItemsToReload], v29, v2);
      v39.receiver = v28;
      v39.super_class = v27;
      v30 = objc_msgSendSuper2(&v39, sel_init);
      (*(*(v34 - 8) + 8))(v38);
      v31 = *(v3 + 8);
      v31(v26, v2);
      v31(v25, v2);
      v31(v11, v2);
      v31(v14, v2);
      return v30;
    }

    v22 = 0;
    v23 = (v17 + 57);
    while (v22 < *(v17 + 16))
    {
      if ((*v23 & 1) == 0)
      {
        goto LABEL_14;
      }

      ++v22;
      sub_190D51B30();
      v23 += 32;
      if (v21 == v22)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_14:
  result = sub_190D58510();
  __break(1u);
  return result;
}

id CKBackdropMaterialVibrantOuterStrokeLayer.__allocating_init(userInterfaceStyle:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer_userInterfaceStyle] = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  v5 = sub_190D56ED0();
  [v4 setName_];

  [v4 setNeedsLayout];
  return v4;
}

id CKBackdropMaterialVibrantOuterStrokeLayer.init(userInterfaceStyle:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer_userInterfaceStyle] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CKBackdropMaterialVibrantOuterStrokeLayer();
  v2 = objc_msgSendSuper2(&v5, sel_init);
  v3 = sub_190D56ED0();
  [v2 setName_];

  [v2 setNeedsLayout];
  return v2;
}

void *sub_190A3FF20(void *a1)
{
  sub_19021834C(a1, v11);
  v3 = type metadata accessor for CKBackdropMaterialVibrantOuterStrokeLayer();
  swift_dynamicCast();
  v4 = v10;
  v5 = OBJC_IVAR____TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer_userInterfaceStyle;
  swift_beginAccess();
  *&v1[OBJC_IVAR____TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer_userInterfaceStyle] = *&v10[v5];
  v9.receiver = v1;
  v9.super_class = v3;
  v6 = objc_msgSendSuper2(&v9, sel_initWithLayer_, v4);
  [v4 frame];
  [v6 setFrame_];
  v7 = sub_190D56ED0();
  [v6 setName_];

  [v6 setNeedsLayout];
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

uint64_t sub_190A40150()
{
  v1 = OBJC_IVAR____TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer_userInterfaceStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190A401F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer_userInterfaceStyle;
  swift_beginAccess();
  *&v1[v3] = a1;
  return [v1 setNeedsLayout];
}

id (*sub_190A40258(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_19083274C;
}

void sub_190A402BC()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for CKBackdropMaterialVibrantOuterStrokeLayer();
  objc_msgSendSuper2(&v29, sel_layoutSublayers);
  [v0 setFillColor_];
  [v0 setLineWidth_];
  v1 = [objc_opt_self() redColor];
  v2 = [v1 CGColor];

  [v0 setStrokeColor_];
  v3 = OBJC_IVAR____TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer_userInterfaceStyle;
  swift_beginAccess();
  v4 = *&v0[v3] == 1;
  v5 = v4;
  if (v4)
  {
    v6 = 0.575;
  }

  else
  {
    v6 = 1.0;
  }

  if (v4)
  {
    v7 = -0.144;
  }

  else
  {
    v7 = 0.0;
  }

  if (v4)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 0.375;
  }

  v9 = objc_opt_self();
  v10 = vcltz_s32(vshl_n_s32(vdup_n_s32(v5), 0x1FuLL));
  v11 = vbsl_s8(v10, 0xBEDC28F6BED9999ALL, 0x3F80000000000000);
  v12 = vbsl_s8(v10, 0x3F5B22D1BFB70A3DLL, 0x3F80000000000000);
  v19[1] = v12.i32[0];
  *&v19[2] = v7;
  v19[3] = 0;
  v20 = v11;
  v21 = v7;
  v22 = 0;
  *v19 = v6;
  v24 = v12;
  v25 = 0;
  v13 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v5)), 0x1FuLL)), xmmword_190DE9260, xmmword_190DE9250);
  v19[4] = v13.i32[0];
  v23 = vzip1_s32(*v13.i8, v11);
  v26 = v13;
  v27 = v8;
  v28 = 0;
  v14 = [v9 valueWithCAColorMatrix_];
  v15 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  [v15 setValue:v14 forKey:*MEMORY[0x1E6979AC0]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90, &qword_190DD63C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_190DD1D90;
  *(v16 + 56) = sub_1909515A4();
  *(v16 + 32) = v15;
  v17 = v15;
  v18 = sub_190D57160();

  [v0 setFilters_];
}

id CKBackdropMaterialVibrantOuterStrokeLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKBackdropMaterialVibrantOuterStrokeLayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKBackdropMaterialVibrantOuterStrokeLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s14descr1F03EB3E1C22ContactCreationSectionO11ContentViewVMa(uint64_t a1)
{
  result = qword_1EAD5AE80;
  if (!qword_1EAD5AE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190A407C0(uint64_t a1)
{
  result = sub_190D52930();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DetailsViewCoordinator();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_190A40860@<X0>(char *a1@<X8>)
{
  v72 = a1;
  v2 = _s14descr1F03EB3E1C22ContactCreationSectionO11ContentViewVMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v75 = v4;
  v5 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v78 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v68 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v61 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57B28, &qword_190DE9330);
  v77 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v67 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v61 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE90, &qword_190DE9338);
  v71 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v70 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v69 = v61 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v66 = v61 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v74 = v61 - v21;
  result = CKFrameworkBundle(v22);
  if (result)
  {
    v24 = result;
    v25 = sub_190D56ED0();
    v26 = sub_190D56ED0();
    v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

    v28 = sub_190D56F10();
    v30 = v29;

    v79 = v28;
    v80 = v30;
    v65 = v1;
    sub_190A41158(v1, v5);
    v31 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v32 = swift_allocObject();
    v64 = v5;
    sub_190A411BC(v5, v32 + v31);
    v63 = sub_19081E484();
    sub_190D56080();
    v33 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
    v34 = v76;
    sub_190D55670();
    v35 = *(v78 + 8);
    v78 += 8;
    v62 = v35;
    v35(v9, v34);
    v79 = v34;
    v80 = v33;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = v73;
    v61[1] = OpaqueTypeConformance2;
    sub_190D55640();
    v38 = *(v77 + 8);
    v77 += 8;
    v39 = v38(v13, v37);
    result = CKFrameworkBundle(v39);
    if (result)
    {
      v40 = result;
      v41 = sub_190D56ED0();
      v42 = sub_190D56ED0();
      v43 = [v40 localizedStringForKey:v41 value:0 table:v42];

      v44 = sub_190D56F10();
      v46 = v45;

      v79 = v44;
      v80 = v46;
      v47 = v64;
      sub_190A41158(v65, v64);
      v48 = swift_allocObject();
      sub_190A411BC(v47, v48 + v31);
      v49 = v68;
      sub_190D56080();
      v50 = v67;
      v51 = v76;
      sub_190D55670();
      v62(v49, v51);
      v52 = v66;
      sub_190D55640();
      v38(v50, v37);
      v53 = v71;
      v54 = *(v71 + 16);
      v55 = v69;
      v56 = v74;
      v54(v69, v74, v14);
      v57 = v70;
      v54(v70, v52, v14);
      v58 = v72;
      v54(v72, v55, v14);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE98, &unk_190DE9340);
      v54(&v58[*(v59 + 48)], v57, v14);
      v60 = *(v53 + 8);
      v60(v52, v14);
      v60(v56, v14);
      v60(v57, v14);
      return (v60)(v55, v14);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190A40FBC(uint64_t a1)
{
  v2 = type metadata accessor for DetailsViewCoordinator.PresentationAction(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s14descr1F03EB3E1C22ContactCreationSectionO11ContentViewVMa(0);
  v5 = sub_190D52930();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  swift_storeEnumTagMultiPayload();
  sub_190BE66F8(v4);
  return sub_190A413AC(v4);
}

uint64_t sub_190A410A0()
{
  v0 = type metadata accessor for DetailsViewCoordinator.PresentationAction(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s14descr1F03EB3E1C22ContactCreationSectionO11ContentViewVMa(0);
  *v2 = sub_190D52910();
  swift_storeEnumTagMultiPayload();
  sub_190BE66F8(v2);
  return sub_190A413AC(v2);
}

uint64_t sub_190A41158(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr1F03EB3E1C22ContactCreationSectionO11ContentViewVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A411BC(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr1F03EB3E1C22ContactCreationSectionO11ContentViewVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_21()
{
  v1 = (_s14descr1F03EB3E1C22ContactCreationSectionO11ContentViewVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_190D52930();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190A41338(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s14descr1F03EB3E1C22ContactCreationSectionO11ContentViewVMa(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_190A413AC(uint64_t a1)
{
  v2 = type metadata accessor for DetailsViewCoordinator.PresentationAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ParticipantGridSectionContent(uint64_t a1)
{
  result = qword_1EAD5AEB0;
  if (!qword_1EAD5AEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190A4147C(uint64_t a1)
{
  _s14descr1F03EB3E1C9ViewModelCMa(319);
  if (v1 <= 0x3F)
  {
    sub_190A41518(319);
    if (v2 <= 0x3F)
    {
      sub_190D529D0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_190A41518(uint64_t a1)
{
  if (!qword_1EAD58BB8)
  {
    sub_190D52840();
    v1 = sub_190D58050();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD58BB8);
    }
  }
}

uint64_t sub_190A4158C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for ParticipantGridSectionContent(0);
  v28 = *(v3 - 8);
  v27 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D529D0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = sub_190D52A80();
  v6 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v1 + 88);
  v10 = *(*(*v1 + 80) + OBJC_IVAR____TtC7ChatKit21DetailsActionHandlers_participantActionHandlers);
  sub_190A41B28(&qword_1EAD5AEC0, type metadata accessor for DetailsViewCoordinator, &protocol conformance descriptor for DetailsViewCoordinator);
  sub_190D50920();
  v11 = v9;
  sub_190D50920();
  v12 = v10;
  sub_190D529C0();
  sub_190D529E0();
  v13 = v25;
  sub_190A41944(v2, v25);
  v14 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v15 = swift_allocObject();
  sub_190A419A8(v13, v15 + v14);
  v16 = v29;
  sub_190D52A70();

  (*(v6 + 8))(v8, v26);
  sub_190D529B0();
  v18 = v17;
  sub_190D529B0();
  v20 = v19;
  v21 = sub_190D552B0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AEC8, qword_190DE93D0);
  v23 = v16 + *(result + 36);
  *v23 = v21;
  *(v23 + 8) = 0;
  *(v23 + 16) = v18;
  *(v23 + 24) = 0;
  *(v23 + 32) = v20;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_190A41898(uint64_t a1)
{
  v2 = type metadata accessor for DetailsViewCoordinator.PresentationAction(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*a1 + 88);
  swift_storeEnumTagMultiPayload();
  v6 = v5;
  sub_190BE66F8(v4);

  return sub_190A413AC(v4);
}

uint64_t sub_190A41944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantGridSectionContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A419A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantGridSectionContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A41A0C()
{
  v1 = *(type metadata accessor for ParticipantGridSectionContent(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_190A41898(v2);
}

unint64_t sub_190A41A6C()
{
  result = qword_1EAD5AED0;
  if (!qword_1EAD5AED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AEC8, qword_190DE93D0);
    sub_190A41B28(&qword_1EAD5AED8, MEMORY[0x1E6995830], MEMORY[0x1E6995828]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AED0);
  }

  return result;
}

uint64_t sub_190A41B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall CKConversationListCollectionViewController.setAppIntentsDataSource()()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    sub_19021DE7C(&qword_1EAD44EF8, &qword_1EAD44EF0, off_1E72E4B88, &protocol conformance descriptor for CKConversationListCollectionViewController);
    swift_unknownObjectRetain();
    sub_190D577C0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t CKConversationListCollectionViewController.collectionView(_:appEntityIdentifierForItemAt:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_190D51C00();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v45 - v12;
  v14 = [v3 dataSource];
  v15 = sub_190D51BB0();
  v16 = [v14 itemIdentifierForIndexPath_];

  if (v16)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49[0] = v47;
  v49[1] = v48;
  if (*(&v48 + 1))
  {
    if (swift_dynamicCast())
    {
      v17 = sub_190D56ED0();

      v18 = [v3 conversationForItemIdentifier_];

      if (v18)
      {
        if (qword_1EAD521B0 != -1)
        {
          swift_once();
        }

        v19 = sub_190D53040();
        __swift_project_value_buffer(v19, qword_1EAD9E840);
        (*(v7 + 16))(v13, a1, v6);
        v20 = sub_190D53020();
        v21 = sub_190D576C0();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *&v49[0] = v46;
          *v22 = 136315138;
          sub_190A42234(&qword_1EAD554A0, MEMORY[0x1E6969C28], MEMORY[0x1E6969C70]);
          v23 = sub_190D58720();
          v24 = a2;
          v26 = v25;
          (*(v7 + 8))(v13, v6);
          v27 = sub_19021D9F8(v23, v26, v49);
          a2 = v24;

          *(v22 + 4) = v27;
          _os_log_impl(&dword_19020E000, v20, v21, "Returning EntityIdentifier for CKConversationListCollectionViewController item at indexPath: %s", v22, 0xCu);
          v28 = v46;
          __swift_destroy_boxed_opaque_existential_0(v46);
          MEMORY[0x193AF7A40](v28, -1, -1);
          MEMORY[0x193AF7A40](v22, -1, -1);
        }

        else
        {

          (*(v7 + 8))(v13, v6);
        }

        type metadata accessor for ConversationEntity(0);
        v41 = [v18 uniqueIdentifier];
        v42 = sub_190D56F10();
        v44 = v43;

        *&v49[0] = v42;
        *(&v49[0] + 1) = v44;
        sub_190A42234(&qword_1EAD45D90, type metadata accessor for ConversationEntity, &protocol conformance descriptor for ConversationEntity);
        sub_190D50900();

        v38 = 0;
        goto LABEL_18;
      }
    }
  }

  else
  {
    sub_19021E7D8(v49);
  }

  if (qword_1EAD521B0 != -1)
  {
    swift_once();
  }

  v29 = sub_190D53040();
  __swift_project_value_buffer(v29, qword_1EAD9E840);
  (*(v7 + 16))(v9, a1, v6);
  v30 = sub_190D53020();
  v31 = sub_190D576C0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v49[0] = v33;
    *v32 = 136315138;
    sub_190A42234(&qword_1EAD554A0, MEMORY[0x1E6969C28], MEMORY[0x1E6969C70]);
    v34 = sub_190D58720();
    v36 = v35;
    (*(v7 + 8))(v9, v6);
    v37 = sub_19021D9F8(v34, v36, v49);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_19020E000, v30, v31, "Unable to determine EntityIdentifier for CKConversationListCollectionViewController item at indexPath: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x193AF7A40](v33, -1, -1);
    MEMORY[0x193AF7A40](v32, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v38 = 1;
LABEL_18:
  v39 = sub_190D50910();
  return (*(*(v39 - 8) + 56))(a2, v38, 1, v39);
}

uint64_t sub_190A42234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_190A42290()
{
  result = qword_1EAD5AEE0;
  if (!qword_1EAD5AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AEE0);
  }

  return result;
}

id sub_190A422E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() defaultSettings];
  v4 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) initWithSettings_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AEF0, &qword_190DE9570);
  sub_190D55FD0();
  sub_1908C9E7C();
  v5 = sub_190D57160();

  [v4 setContacts_];

  v6 = [v4 view];
  return v6;
}

uint64_t sub_190A423EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190A424DC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190A42450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190A424DC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190A424B4(uint64_t a1)
{
  sub_190A424DC();
  sub_190D54C10();
  __break(1u);
}

unint64_t sub_190A424DC()
{
  result = qword_1EAD5AEE8;
  if (!qword_1EAD5AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AEE8);
  }

  return result;
}

unint64_t sub_190A42544()
{
  result = qword_1EAD5AEF8;
  if (!qword_1EAD5AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AEF8);
  }

  return result;
}

id sub_190A42598()
{
  v0 = [objc_allocWithZone(CKAvatarView) init];
  sub_1908C9E7C();
  v1 = v0;
  v2 = sub_190D57160();
  [v1 setContacts_];

  return v1;
}

void sub_190A42620(void *a1)
{
  sub_1908C9E7C();
  v2 = sub_190D57160();
  [a1 setContacts_];
}

uint64_t sub_190A4268C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190A4277C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190A426F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190A4277C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190A42754(uint64_t a1)
{
  sub_190A4277C();
  sub_190D54C10();
  __break(1u);
}

unint64_t sub_190A4277C()
{
  result = qword_1EAD5AF00;
  if (!qword_1EAD5AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AF00);
  }

  return result;
}

uint64_t sub_190A427F0()
{
  v1 = [v0 browserShortDisplayName];
  if (v1 || (v1 = [v0 browserDisplayName]) != 0)
  {
    v2 = v1;
    v3 = sub_190D56F10();

    v13 = v3;
  }

  else
  {
    v3 = 0x656D614E206F4ELL;
    v13 = 0x656D614E206F4ELL;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_190D56ED0();
  v6 = [v4 BOOLForKey_];

  if (v6)
  {
    v7 = [v0 appStoreGenre];
    if (v7)
    {
      v8 = v7;
      v9 = sub_190D56F10();
      v11 = v10;

      MEMORY[0x193AF28B0](v9, v11);

      MEMORY[0x193AF28B0](41, 0xE100000000000000);
      MEMORY[0x193AF28B0](10272, 0xE200000000000000);

      return v13;
    }
  }

  return v3;
}

uint64_t (*sub_190A42984(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = sub_190A427D8();
  a1[1] = v3;
  return sub_190A4A90C;
}

id sub_190A429CC()
{
  v1 = *(v0 + 32);
  v2 = v1;
  if (!v1)
  {
    v3 = sub_190A42C24();
    v2 = [v3 __ck_browserImageGenerateSynchronously_interfaceStyle_allowPlaceholder_];

    v4 = *(v0 + 32);
    *(v0 + 32) = v2;
    v5 = v2;

    if (!v5)
    {
      v2 = [objc_opt_self() __ck_placeholderImageForInterfaceStyle_];
    }
  }

  v6 = v1;
  return v2;
}

id sub_190A42A74()
{
  v1 = *(v0 + 40);
  v2 = v1;
  if (!v1)
  {
    v3 = sub_190A42C24();
    v2 = [v3 __ck_browserImageGenerateSynchronously_interfaceStyle_allowPlaceholder_];

    v4 = *(v0 + 40);
    *(v0 + 40) = v2;
    v5 = v2;

    if (!v5)
    {
      v2 = [objc_opt_self() __ck_placeholderImageForInterfaceStyle_];
    }
  }

  v6 = v1;
  return v2;
}

uint64_t sub_190A42B30()
{
  v1 = *(v0 + 80);
  sub_190D52690();
  return v1;
}

id sub_190A42C24()
{
  v1 = *(v0 + 96);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = [objc_opt_self() sharedInstance];
    v4 = sub_190D56ED0();
    v2 = [v3 pluginForExtensionIdentifier_];

    v5 = *(v0 + 96);
    *(v0 + 96) = v2;
    v6 = v2;
    sub_1902905D8(v5);
  }

  sub_190275648(v1);
  return v2;
}

double DefaultSendMenuListItem.__allocating_init(extensionIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  result = 0.0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  *(v4 + 72) = 1;
  *(v4 + 88) = a2;
  *(v4 + 96) = 1;
  *(v4 + 80) = a1;
  return result;
}

uint64_t DefaultSendMenuListItem.init(extensionIdentifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 72) = 1;
  *(v2 + 88) = a2;
  *(v2 + 96) = 1;
  *(v2 + 80) = a1;
  return v2;
}

id *DefaultSendMenuListItem.deinit()
{

  sub_1902905D8(v0[12]);
  return v0;
}

uint64_t DefaultSendMenuListItem.__deallocating_deinit()
{
  DefaultSendMenuListItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_190A42ED8()
{
  v1 = *(*v0 + 80);
  sub_190D52690();
  return v1;
}

uint64_t sub_190A42F0C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 72);
}

void sub_190A42F4C(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 72) = a1;
}

id sub_190A42FFC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
LABEL_5:
    sub_190D52690();
    return v1;
  }

  result = CKFrameworkBundle(0);
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v1 = sub_190D56F10();
    v8 = v7;

    *(v0 + 16) = v1;
    *(v0 + 24) = v8;
    sub_190D52690();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_190A43100(id *a1))()
{
  a1[2] = v1;
  *a1 = sub_190A42FFC();
  a1[1] = v3;
  return sub_190A4A90C;
}

uint64_t (*sub_190A43160(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A43148();
  return sub_190A4A910;
}

void sub_190A431C0()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_190A432B8(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A431A8();
  return sub_190A4A914;
}

void *CameraSendMenuListItem.customIconLayer.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

id *CameraSendMenuListItem.deinit()
{

  sub_1902905D8(v0[4]);
  sub_1902905D8(v0[5]);

  return v0;
}

uint64_t CameraSendMenuListItem.__deallocating_deinit()
{

  sub_1902905D8(v0[4]);
  sub_1902905D8(v0[5]);

  return swift_deallocClassInstance();
}

__n128 sub_190A43454()
{
  v1 = MEMORY[0x1E69DC5C0];
  *(v0 + 32) = vdupq_n_s64(1uLL);
  result = *v1;
  v3 = *(v1 + 16);
  *(v0 + 72) = *v1;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 0;
  *(v0 + 88) = v3;
  *(v0 + 104) = 1;
  return result;
}

id sub_190A4359C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
LABEL_5:
    sub_190D52690();
    return v1;
  }

  result = CKFrameworkBundle(0);
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v1 = sub_190D56F10();
    v8 = v7;

    *(v0 + 16) = v1;
    *(v0 + 24) = v8;
    sub_190D52690();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_190A436A0(id *a1))()
{
  a1[2] = v1;
  *a1 = sub_190A4359C();
  a1[1] = v3;
  return sub_190A4A90C;
}

void *sub_190A43700(uint64_t (*a1)(void))
{
  v2 = *(v1 + 32);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = a1();
    v4 = *(v1 + 32);
    *(v1 + 32) = v3;
    v5 = v3;
    sub_1902905D8(v4);
  }

  sub_190275648(v2);
  return v3;
}

uint64_t (*sub_190A43760(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A436E8();
  return sub_190A4A910;
}

void *sub_190A437C0(uint64_t (*a1)(void))
{
  v2 = *(v1 + 40);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = a1();
    v4 = *(v1 + 40);
    *(v1 + 40) = v3;
    v5 = v3;
    sub_1902905D8(v4);
  }

  sub_190275648(v2);
  return v3;
}

void sub_190A43820()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_190A43918(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A437A8();
  return sub_190A4A914;
}

void *sub_190A43960()
{
  v0 = sub_190A4852C();
  v1 = v0;
  return v0;
}

void sub_190A4398C(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  sub_1902905D8(v2);
}

void (*sub_190A4399C(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = sub_190A4852C();
  *a1 = v3;
  v4 = v3;
  return sub_190A439EC;
}

id sub_190A43A04()
{
  v1 = *(v0 + 64);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = [objc_opt_self() cameraRollMostRecentImage];
    v3 = *(v0 + 64);
    *(v0 + 64) = v2;
    v4 = v2;
    sub_1902905D8(v3);
  }

  sub_190275648(v1);
  return v2;
}

void sub_190A43A7C(uint64_t a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  sub_1902905D8(v2);
}

void (*sub_190A43A8C(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_190A43A04();
  return sub_190A43AD4;
}

void sub_190A43AD4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + 64);
  *(v3 + 64) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_1902905D8(v4);
  }

  else
  {

    sub_1902905D8(v4);
  }
}

void *PhotosSendMenuListItem.lightModeImageCompositingFilter.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void *PhotosSendMenuListItem.darkModeImageCompositingFilter.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id *PhotosSendMenuListItem.deinit()
{

  sub_1902905D8(v0[4]);
  sub_1902905D8(v0[5]);
  sub_1902905D8(v0[7]);
  sub_1902905D8(v0[8]);

  return v0;
}

uint64_t PhotosSendMenuListItem.__deallocating_deinit()
{
  PhotosSendMenuListItem.deinit();

  return swift_deallocClassInstance();
}

__n128 sub_190A43D1C()
{
  v1 = vdupq_n_s64(1uLL);
  *(v0 + 32) = v1;
  v2 = MEMORY[0x1E69DC5C0];
  *(v0 + 56) = v1;
  result = *v2;
  v4 = *(v2 + 16);
  *(v0 + 88) = *v2;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 104) = v4;
  *(v0 + 120) = 1;
  return result;
}

void *sub_190A43DC4()
{
  v1 = *(*v0 + 72);
  v2 = v1;
  return v1;
}

void *sub_190A43DF0()
{
  v1 = *(*v0 + 80);
  v2 = v1;
  return v1;
}

void *sub_190A43E2C()
{
  v0 = sub_190A4852C();
  v1 = v0;
  return v0;
}

uint64_t sub_190A43E84()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 120);
}

void sub_190A43EC4(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 120) = a1;
}

void sub_190A43F5C(uint64_t a1)
{
  v1 = IMStickersExtensionIdentifier();
  v2 = IMBalloonExtensionIDWithSuffix();

  if (v2)
  {
    v3 = sub_190D56F10();
    v5 = v4;

    qword_1EAD45830 = v3;
    *algn_1EAD45838 = v5;
  }

  else
  {
    __break(1u);
  }
}

id sub_190A43FCC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
LABEL_5:
    sub_190D52690();
    return v1;
  }

  result = CKFrameworkBundle(0);
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v1 = sub_190D56F10();
    v8 = v7;

    *(v0 + 16) = v1;
    *(v0 + 24) = v8;
    sub_190D52690();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_190A440D0(id *a1))()
{
  a1[2] = v1;
  *a1 = sub_190A43FCC();
  a1[1] = v3;
  return sub_190A4A90C;
}

uint64_t (*sub_190A44130(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A44118();
  return sub_190A4A910;
}

void sub_190A44190()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_190A44288(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A44178();
  return sub_190A4A914;
}

id sub_190A443A4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
LABEL_5:
    sub_190D52690();
    return v1;
  }

  result = CKFrameworkBundle(0);
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v1 = sub_190D56F10();
    v8 = v7;

    *(v0 + 16) = v1;
    *(v0 + 24) = v8;
    sub_190D52690();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_190A444A8(id *a1))()
{
  a1[2] = v1;
  *a1 = sub_190A443A4();
  a1[1] = v3;
  return sub_190A4A90C;
}

uint64_t (*sub_190A44508(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A444F0();
  return sub_190A4A910;
}

void sub_190A44568()
{
  strcpy(v5, "send-menu-pay");
  HIWORD(v5[1]) = -4864;
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_190A44668(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A44550();
  return sub_190A4A914;
}

id sub_190A44788()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
LABEL_5:
    sub_190D52690();
    return v1;
  }

  result = CKFrameworkBundle(0);
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v1 = sub_190D56F10();
    v8 = v7;

    *(v0 + 16) = v1;
    *(v0 + 24) = v8;
    sub_190D52690();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_190A4488C(id *a1))()
{
  a1[2] = v1;
  *a1 = sub_190A44788();
  a1[1] = v3;
  return sub_190A4A90C;
}

uint64_t (*sub_190A448EC(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A448D4();
  return sub_190A4A910;
}

void sub_190A4494C()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_190A44A4C(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A44934();
  return sub_190A4A914;
}

id sub_190A44B6C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
LABEL_5:
    sub_190D52690();
    return v1;
  }

  result = CKFrameworkBundle(0);
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v1 = sub_190D56F10();
    v8 = v7;

    *(v0 + 16) = v1;
    *(v0 + 24) = v8;
    sub_190D52690();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_190A44C70(id *a1))()
{
  a1[2] = v1;
  *a1 = sub_190A44B6C();
  a1[1] = v3;
  return sub_190A4A90C;
}

uint64_t (*sub_190A44CD0(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A44CB8();
  return sub_190A4A910;
}

void sub_190A44D30()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_190A44E28(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A44D18();
  return sub_190A4A914;
}

id sub_190A44F44()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
LABEL_5:
    sub_190D52690();
    return v1;
  }

  result = CKFrameworkBundle(0);
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v1 = sub_190D56F10();
    v8 = v7;

    *(v0 + 16) = v1;
    *(v0 + 24) = v8;
    sub_190D52690();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_190A45048(id *a1))()
{
  a1[2] = v1;
  *a1 = sub_190A44F44();
  a1[1] = v3;
  return sub_190A4A90C;
}

uint64_t (*sub_190A450A8(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A45090();
  return sub_190A4A910;
}

void sub_190A45108()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_190A45200(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A450F0();
  return sub_190A4A914;
}

id sub_190A45248()
{
  v1 = *(v0 + 48);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = [objc_opt_self() sharedFeatureFlags];
    v4 = [v3 isPopoverSendMenuEnabled];

    if (v4)
    {
      v2 = 0;
    }

    else
    {
      v2 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    }

    v5 = *(v0 + 48);
    *(v0 + 48) = v2;
    v6 = v2;
    sub_1902905D8(v5);
  }

  sub_190275648(v1);
  return v2;
}

void sub_190A4530C(uint64_t a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  sub_1902905D8(v2);
}

void (*sub_190A4531C(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_190A45248();
  return sub_190A45364;
}

void sub_190A45364(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + 48);
  *(v3 + 48) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_1902905D8(v4);
  }

  else
  {

    sub_1902905D8(v4);
  }
}

id sub_190A453E0()
{
  v1 = *(v0 + 56);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = [objc_opt_self() sharedFeatureFlags];
    v4 = [v3 isPopoverSendMenuEnabled];

    if (v4)
    {
      v2 = 0;
    }

    else
    {
      v2 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    }

    v5 = *(v0 + 56);
    *(v0 + 56) = v2;
    v6 = v2;
    sub_1902905D8(v5);
  }

  sub_190275648(v1);
  return v2;
}

void (*sub_190A454A4(id *a1))(uint64_t a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_190A453E0();
  return sub_190A439EC;
}

void sub_190A454EC(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v4 + 56);
  *(v4 + 56) = *a1;
  if (a2)
  {
    v7 = v3;
    a3(v5);
  }

  else
  {

    a3(v5);
  }
}

id static AppStoreSendMenuListItem.isAppStoreAppInstalled.getter()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = [v1 applicationIsInstalled_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id *AppStoreSendMenuListItem.deinit()
{

  sub_1902905D8(v0[4]);
  sub_1902905D8(v0[5]);
  sub_1902905D8(v0[6]);
  sub_1902905D8(v0[7]);

  return v0;
}

uint64_t AppStoreSendMenuListItem.__deallocating_deinit()
{

  sub_1902905D8(v0[4]);
  sub_1902905D8(v0[5]);
  sub_1902905D8(v0[6]);
  sub_1902905D8(v0[7]);

  return swift_deallocClassInstance();
}

__n128 sub_190A456E0()
{
  v1 = vdupq_n_s64(1uLL);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  *(v0 + 48) = v1;
  result = *MEMORY[0x1E69DC5C0];
  v3 = *(MEMORY[0x1E69DC5C0] + 16);
  *(v0 + 64) = *MEMORY[0x1E69DC5C0];
  *(v0 + 80) = v3;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  return result;
}

id sub_190A45804()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
LABEL_5:
    sub_190D52690();
    return v1;
  }

  result = CKFrameworkBundle(0);
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v1 = sub_190D56F10();
    v8 = v7;

    *(v0 + 16) = v1;
    *(v0 + 24) = v8;
    sub_190D52690();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_190A45908(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t (*sub_190A45918(id *a1))()
{
  a1[2] = v1;
  *a1 = sub_190A45804();
  a1[1] = v3;
  return sub_190A45960;
}

void sub_190A4597C(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  sub_1902905D8(v2);
}

uint64_t (*sub_190A4598C(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A45964();
  return sub_190A459D4;
}

void sub_190A459F0()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_190A45AE8(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
  sub_1902905D8(v2);
}

uint64_t (*sub_190A45AF8(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A459D8();
  return sub_190A45B40;
}

void *SendLaterSendMenuListItem.lightModeImageCompositingFilter.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *SendLaterSendMenuListItem.darkModeImageCompositingFilter.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *SendLaterSendMenuListItem.customIconLayer.getter()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

uint64_t sub_190A45CC0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = vdupq_n_s64(1uLL);
  v1 = objc_opt_self();
  v2 = [v1 sharedFeatureFlags];
  v3 = [v2 isPopoverSendMenuEnabled];

  v4 = 0;
  if ((v3 & 1) == 0)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  }

  *(v0 + 48) = v4;
  v5 = [v1 sharedFeatureFlags];
  v6 = [v5 isPopoverSendMenuEnabled];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  }

  *(v0 + 56) = v7;
  v8 = *(MEMORY[0x1E69DC5C0] + 16);
  *(v0 + 64) = *MEMORY[0x1E69DC5C0];
  *(v0 + 80) = v8;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  return v0;
}

void sub_190A45F28()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

void (*sub_190A46020(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_190A45F10();
  return sub_190A4A900;
}

void sub_190A46144()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

void (*sub_190A4623C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_190A4612C();
  return sub_190A4A900;
}

void sub_190A46360()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

void (*sub_190A46458(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_190A46348();
  return sub_190A4A900;
}

void sub_190A4657C()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_190A4667C(uint64_t a1)
{
  v2 = *(v1 + 104);
  *(v1 + 104) = a1;
}

void (*sub_190A46688(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_190A46564();
  return sub_190A466D0;
}

void sub_190A466D0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 104);
  *(v1 + 104) = v2;
}

uint64_t MusicSendMenuListItem.deinit()
{
  DefaultSendMenuListItem.deinit();

  return v0;
}

void sub_190A46800()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

void (*sub_190A468F8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_190A467E8();
  return sub_190A4A900;
}

id sub_190A4698C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
LABEL_5:
    sub_190D52690();
    return v1;
  }

  result = CKFrameworkBundle(0);
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v1 = sub_190D56F10();
    v8 = v7;

    *(v0 + 16) = v1;
    *(v0 + 24) = v8;
    sub_190D52690();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_190A46A90(id *a1))()
{
  a1[2] = v1;
  *a1 = sub_190A4698C();
  a1[1] = v3;
  return sub_190A4A90C;
}

uint64_t (*sub_190A46AF0(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A46AD8();
  return sub_190A4A910;
}

void sub_190A46B50()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_190A46C48(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A46B38();
  return sub_190A4A914;
}

uint64_t sub_190A46D80(uint64_t (*a1)(void))
{
  v2 = v1;
  if (*(v1 + 24))
  {
    v3 = *(v1 + 16);
  }

  else
  {
    v4 = a1();
    if (v4)
    {
      v5 = v4;
      v3 = sub_190A427F0();
      v7 = v6;
    }

    else
    {
      v7 = 0xE700000000000000;
      v3 = 0x656D614E206F4ELL;
    }

    *(v2 + 16) = v3;
    *(v2 + 24) = v7;
    sub_190D52690();
  }

  sub_190D52690();
  return v3;
}

uint64_t (*sub_190A46E28(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = sub_190A46D68();
  a1[1] = v3;
  return sub_190A4A90C;
}

uint64_t (*sub_190A46E88(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A46E70();
  return sub_190A4A910;
}

void sub_190A46EE8()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_190A46FE0(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A46ED0();
  return sub_190A4A914;
}

id sub_190A47050()
{
  v1 = *(v0 + 112);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = [objc_opt_self() sharedInstance];
    if (qword_1EAD453B8 != -1)
    {
      swift_once();
    }

    v4 = sub_190D56ED0();
    v2 = [v3 pluginForExtensionIdentifier_];

    v5 = *(v0 + 112);
    *(v0 + 112) = v2;
    v6 = v2;
    sub_1902905D8(v5);
  }

  sub_190275648(v1);
  return v2;
}

id static GenerativePlaygroundSendMenuListItem.isVisibleInConversation(_:)()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isGenPlaygroundEnabled];

  return v1;
}

id *GenerativePlaygroundSendMenuListItem.deinit()
{

  sub_1902905D8(v0[4]);
  sub_1902905D8(v0[5]);

  sub_1902905D8(v0[14]);
  return v0;
}

uint64_t GenerativePlaygroundSendMenuListItem.__deallocating_deinit()
{
  GenerativePlaygroundSendMenuListItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_190A47218()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = vdupq_n_s64(1uLL);
  v1 = objc_opt_self();
  v2 = [v1 sharedFeatureFlags];
  v3 = [v2 isPopoverSendMenuEnabled];

  v4 = 0;
  if ((v3 & 1) == 0)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  }

  *(v0 + 48) = v4;
  v5 = [v1 sharedFeatureFlags];
  v6 = [v5 isPopoverSendMenuEnabled];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  }

  *(v0 + 56) = v7;
  v8 = *(MEMORY[0x1E69DC5C0] + 16);
  *(v0 + 64) = *MEMORY[0x1E69DC5C0];
  *(v0 + 80) = v8;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  *(v0 + 112) = 1;
  return v0;
}

uint64_t sub_190A47444(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 104) = 0;
  if (*a1 != -1)
  {
    v12 = v7;
    swift_once();
    v7 = v12;
  }

  v8 = *a2;
  v9 = *a3;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 1;
  *(v7 + 88) = v9;
  *(v7 + 96) = 1;
  *(v7 + 80) = v8;
  v10 = v7;
  sub_190D52690();
  return v10;
}

uint64_t sub_190A47518(void *a1, void *a2, void *a3, uint64_t a4)
{
  *(v4 + 104) = 0;
  if (*a1 != -1)
  {
    v8 = a2;
    v9 = a3;
    swift_once();
    a2 = v8;
    a3 = v9;
  }

  v5 = *a2;
  v6 = *a3;
  *(v4 + 64) = 0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 72) = 1;
  *(v4 + 88) = v6;
  *(v4 + 96) = 1;
  *(v4 + 80) = v5;
  sub_190D52690();
  return v4;
}

id sub_190A475B0(uint64_t (*a1)(void))
{
  v2 = *(v1 + 104);
  if (v2)
  {
    v3 = *(v1 + 104);
  }

  else
  {
    v4 = a1();
    v5 = *(v1 + 104);
    *(v1 + 104) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_190A4760C()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

void (*sub_190A4770C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_190A47598();
  return sub_190A4A900;
}

BOOL static PollsAppSendMenuListItem.isVisibleInConversation(_:)(void *a1)
{
  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isPollsEnabled];

  return v3 && a1 && ([a1 supportsPolls] & 1) != 0;
}

uint64_t _s7ChatKit21MusicSendMenuListItemCfD_0()
{
  DefaultSendMenuListItem.deinit();

  return swift_deallocClassInstance();
}

void sub_190A47864(uint64_t a1, id *a2, uint64_t *a3, void *a4)
{
  v6 = *a2;
  v7 = IMBalloonExtensionIDWithSuffix();

  if (v7)
  {
    v8 = sub_190D56F10();
    v10 = v9;

    *a3 = v8;
    *a4 = v10;
  }

  else
  {
    __break(1u);
  }
}

id sub_190A478DC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
LABEL_5:
    sub_190D52690();
    return v1;
  }

  result = CKFrameworkBundle(0);
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v1 = sub_190D56F10();
    v8 = v7;

    *(v0 + 16) = v1;
    *(v0 + 24) = v8;
    sub_190D52690();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_190A479E0(id *a1))()
{
  a1[2] = v1;
  *a1 = sub_190A478DC();
  a1[1] = v3;
  return sub_190A4A90C;
}

double sub_190A47A28(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;

  return result;
}

uint64_t (*sub_190A47A54(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A47A3C();
  return sub_190A4A910;
}

void sub_190A47A9C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + 32);
  *(v3 + 32) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_1902905D8(v4);
  }

  else
  {

    sub_1902905D8(v4);
  }
}

void sub_190A47B30()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    MEMORY[0x193AF28B0](0x7373616C672DLL, 0xE600000000000000);
  }

  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  if (v4)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_190A47C28(void **a1))()
{
  a1[1] = v1;
  *a1 = sub_190A47B18();
  return sub_190A4A914;
}

void sub_190A47C70(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_1902905D8(v4);
  }

  else
  {

    sub_1902905D8(v4);
  }
}

uint64_t sub_190A47D14(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;
  sub_190D52690();
  return v4;
}

id *_s7ChatKit09SendLaterC12MenuListItemCfd_0()
{

  sub_1902905D8(v0[4]);
  sub_1902905D8(v0[5]);

  return v0;
}

uint64_t _s7ChatKit09SendLaterC12MenuListItemCfD_0()
{

  sub_1902905D8(v0[4]);
  sub_1902905D8(v0[5]);

  return swift_deallocClassInstance();
}

__n128 sub_190A47E30()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = vdupq_n_s64(1uLL);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  result = *MEMORY[0x1E69DC5C0];
  v2 = *(MEMORY[0x1E69DC5C0] + 16);
  *(v0 + 64) = *MEMORY[0x1E69DC5C0];
  *(v0 + 80) = v2;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  return result;
}

uint64_t sub_190A47EF8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;
  sub_190D52690();
  return v6;
}

BOOL _s7ChatKit24ApplePaySendMenuListItemC23isVisibleInConversationySbSo14CKConversationCSgFZ_0()
{
  result = CKShouldShowSURF();
  if (!result)
  {
    v1 = result;
    if (qword_1EAD46180 != -1)
    {
      swift_once();
    }

    v2 = sub_190D53040();
    __swift_project_value_buffer(v2, qword_1EAD9D658);
    v3 = sub_190D53020();
    v4 = sub_190D57680();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v3, v4, "Hiding Apple Pay due to PassKit visibility flag (e.g. in an unsupported region)", v5, 2u);
      MEMORY[0x193AF7A40](v5, -1, -1);
    }

    return v1;
  }

  return result;
}

uint64_t _s7ChatKit09SendLaterC12MenuListItemC23isVisibleInConversationySbSo14CKConversationCSgFZ_0(void *a1)
{
  if (!a1)
  {
    if (qword_1EAD46180 != -1)
    {
      swift_once();
    }

    v7 = sub_190D53040();
    __swift_project_value_buffer(v7, qword_1EAD9D658);
    v2 = sub_190D53020();
    v8 = sub_190D57680();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v2, v8, "Allowing Send Later to be shown without a conversation", v9, 2u);
      MEMORY[0x193AF7A40](v9, -1, -1);
    }

    goto LABEL_12;
  }

  v2 = a1;
  if ([v2 supportsSendLater])
  {
    if (qword_1EAD46180 != -1)
    {
      swift_once();
    }

    v3 = sub_190D53040();
    __swift_project_value_buffer(v3, qword_1EAD9D658);
    v4 = sub_190D53020();
    v5 = sub_190D57680();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v4, v5, "Allowing Send Later to be shown", v6, 2u);
      MEMORY[0x193AF7A40](v6, -1, -1);
    }

LABEL_12:
    v10 = 1;
    goto LABEL_13;
  }

  if (qword_1EAD46180 != -1)
  {
    swift_once();
  }

  v12 = sub_190D53040();
  __swift_project_value_buffer(v12, qword_1EAD9D658);
  v13 = v2;
  v2 = sub_190D53020();
  v14 = sub_190D57680();

  if (os_log_type_enabled(v2, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v13;
    *v16 = a1;
    v17 = v13;
    _os_log_impl(&dword_19020E000, v2, v14, "Not allowing Send Later in conversation: %@", v15, 0xCu);
    sub_190830D58(v16);
    MEMORY[0x193AF7A40](v16, -1, -1);
    MEMORY[0x193AF7A40](v15, -1, -1);

    v10 = 0;
    v2 = v17;
  }

  else
  {

    v10 = 0;
  }

LABEL_13:

  return v10;
}

uint64_t _s7ChatKit24AppStoreSendMenuListItemC23isVisibleInConversationySbSo14CKConversationCSgFZ_0()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = [v1 applicationIsInstalled_];

    if (v3)
    {
      v4 = [objc_opt_self() sharedInstance];
      v5 = [v4 isAppInstallationEnabled];

      if (v5)
      {
        return 1;
      }

      if (qword_1EAD46180 != -1)
      {
        swift_once();
      }

      v11 = sub_190D53040();
      __swift_project_value_buffer(v11, qword_1EAD9D658);
      v7 = sub_190D53020();
      v8 = sub_190D57680();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_14;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Not showing App Store because MDM restrictions prevent installing apps.";
    }

    else
    {
      if (qword_1EAD46180 != -1)
      {
        swift_once();
      }

      v6 = sub_190D53040();
      __swift_project_value_buffer(v6, qword_1EAD9D658);
      v7 = sub_190D53020();
      v8 = sub_190D57680();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_14;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Not showing App Store because App Store is uninstalled.";
    }

    _os_log_impl(&dword_19020E000, v7, v8, v10, v9, 2u);
    MEMORY[0x193AF7A40](v9, -1, -1);
LABEL_14:

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_190A4852C()
{
  result = *(v0 + 56);
  if (result == 1)
  {
    result = 0;
    *(v0 + 56) = 0;
  }

  return result;
}

uint64_t keypath_set_31Tm(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v5 = *a1;
  v6 = *(*a2 + 56);
  *(*a2 + 56) = *a1;
  v7 = v5;

  return a5(v6);
}

double keypath_setTm_4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_190D52690();

  return result;
}

void keypath_set_19Tm_0(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 32);
  *(*a2 + 32) = *a1;
  v4 = v2;

  sub_1902905D8(v3);
}

void keypath_set_21Tm(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 40);
  *(*a2 + 40) = *a1;
  v4 = v2;

  sub_1902905D8(v3);
}

void keypath_get_22Tm(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 104);
}

void keypath_set_23Tm(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 104) = v2;
}

id CKTextEffectCoordinator.ContinuationState.__allocating_init(textViewIdentifier:locationInAttributedText:ignoreTextViewEligibilityCheck:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___CKTextEffectCoordinatorContinuationState_textViewIdentifier];
  *v10 = a1;
  v10[1] = a2;
  *&v9[OBJC_IVAR___CKTextEffectCoordinatorContinuationState_locationInAttributedText] = a3;
  v9[OBJC_IVAR___CKTextEffectCoordinatorContinuationState_ignoreTextViewEligibilityCheck] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id CKTextEffectCoordinator.ContinuationState.init(textViewIdentifier:locationInAttributedText:ignoreTextViewEligibilityCheck:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = &v4[OBJC_IVAR___CKTextEffectCoordinatorContinuationState_textViewIdentifier];
  *v5 = a1;
  v5[1] = a2;
  *&v4[OBJC_IVAR___CKTextEffectCoordinatorContinuationState_locationInAttributedText] = a3;
  v4[OBJC_IVAR___CKTextEffectCoordinatorContinuationState_ignoreTextViewEligibilityCheck] = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for CKTextEffectCoordinator.ContinuationState();
  return objc_msgSendSuper2(&v7, sel_init);
}

id CKTextEffectCoordinator.ContinuationState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTextEffectCoordinator.ContinuationState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CKTextEffectCoordinator.ContinuationState.debugDescription.getter()
{
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000020, 0x8000000190E6EED0);
  MEMORY[0x193AF28B0](*(v0 + OBJC_IVAR___CKTextEffectCoordinatorContinuationState_textViewIdentifier), *(v0 + OBJC_IVAR___CKTextEffectCoordinatorContinuationState_textViewIdentifier + 8));
  MEMORY[0x193AF28B0](0x100000000000001FLL, 0x8000000190E6EF00);
  v1 = sub_190D58720();
  MEMORY[0x193AF28B0](v1);

  MEMORY[0x193AF28B0](0xD000000000000023, 0x8000000190E6EF20);
  if (*(v0 + OBJC_IVAR___CKTextEffectCoordinatorContinuationState_ignoreTextViewEligibilityCheck))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CKTextEffectCoordinatorContinuationState_ignoreTextViewEligibilityCheck))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x193AF28B0](v2, v3);

  return 0;
}

id sub_190A4ADB4()
{
  v1 = [*(v0 + 16) recipients];
  v2 = sub_190D57180();

  if (*(v2 + 16))
  {
    sub_19021834C(v2 + 32, v7);

    sub_19084E158();
    if (swift_dynamicCast())
    {
      v3 = v6;
    }

    else
    {
      v3 = 0;
    }

    v4 = [v3 defaultIMHandle];
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_190A4AE90()
{
  v1 = *(v0 + 16);
  if (([v1 isGroupConversation] & 1) == 0)
  {
    v5 = sub_190A4ADB4();
    if (v5)
    {
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_190DD55F0;
      *(inited + 32) = v6;
      v8 = v6;
      v10 = sub_190C15BE4(inited, 0, v9);
      swift_setDeallocating();
      swift_arrayDestroy();
      if (*(v10 + 2))
      {
        v4 = *(v10 + 4);
        sub_190D52690();
LABEL_10:

        return v4;
      }
    }

    return 0;
  }

  v2 = [v1 displayName];
  if (!v2)
  {
    v11 = sub_190A4ADB4();
    if (v11)
    {
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_190DD55F0;
      *(v13 + 32) = v12;
      v8 = v12;
      v15 = sub_190C15BE4(v13, 1, v14);
      swift_setDeallocating();
      swift_arrayDestroy();
      if (*(v15 + 2))
      {
        v17 = *(v15 + 4);
        v16 = *(v15 + 5);
        sub_190D52690();

        v18 = [v1 recipients];
        v19 = sub_190D57180();

        v20 = *(v19 + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_190DD1DA0;
        *(v21 + 56) = MEMORY[0x1E69E6158];
        v22 = sub_19081EA10();
        *(v21 + 32) = v17;
        *(v21 + 40) = v16;
        v23 = MEMORY[0x1E69E65A8];
        *(v21 + 96) = MEMORY[0x1E69E6530];
        *(v21 + 104) = v23;
        *(v21 + 64) = v22;
        *(v21 + 72) = v20 - 1;
        v4 = sub_1908E9FA4(0x5F4E5F444E415F58, 0xEE00454C504F4550, v21);
        goto LABEL_10;
      }
    }

    return 0;
  }

  v3 = v2;
  v4 = sub_190D56F10();

  return v4;
}

id sub_190A4B140()
{
  v1 = v0;
  swift_getKeyPath();
  sub_190A4B6B8();
  sub_190D51C20();

  v3 = *(v0 + 58);
  if (v3 > 3)
  {
    goto LABEL_6;
  }

  if (*(v0 + 58) > 1u)
  {
    if (v3 == 2)
    {
      v5 = *(v0 + 16);
      v6 = [*(v1 + 16) isGroupConversation];
      if (v6)
      {
        v7 = sub_190C68E5C();
        if (v7)
        {
          v8 = v7;
        }

        else
        {
          v8 = MEMORY[0x1E69E7CC0];
        }

        v9 = [v5 recipients];
        v10 = sub_190D57180();

        v11 = *(v10 + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_190DD1DA0;
        if (v8 >> 62)
        {
          v13 = sub_190D581C0();
        }

        else
        {
          v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 = MEMORY[0x1E69E6530];
        v15 = MEMORY[0x1E69E65A8];
        *(v12 + 56) = MEMORY[0x1E69E6530];
        *(v12 + 64) = v15;
        *(v12 + 32) = v13;
        *(v12 + 96) = v14;
        *(v12 + 104) = v15;
        *(v12 + 72) = v11;
        v16 = sub_1908E9FA4(0x565F4E5F464F5F4ELL, 0xEF44454946495245, v12);

        return v16;
      }

      result = CKFrameworkBundle(v6);
      if (result)
      {
        v4 = result;
        goto LABEL_29;
      }

      goto LABEL_39;
    }

    result = CKFrameworkBundle(result);
    if (result)
    {
      v4 = result;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if (!*(v0 + 58))
  {
    result = CKFrameworkBundle(result);
    if (result)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_6:
    if (v3 - 6 < 2)
    {
      result = CKFrameworkBundle(result);
      if (result)
      {
        v4 = result;
LABEL_29:
        v16 = sub_190D51210();

        return v16;
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v3 != 4)
    {
      result = CKFrameworkBundle(result);
      if (result)
      {
        v4 = result;
        goto LABEL_29;
      }

      goto LABEL_37;
    }

    result = CKFrameworkBundle(result);
    if (!result)
    {
      goto LABEL_35;
    }

LABEL_19:
    v4 = result;
    goto LABEL_29;
  }

  v17 = [*(v0 + 16) isGroupConversation];
  v18 = v17;
  result = CKFrameworkBundle(v17);
  v4 = result;
  if (v18)
  {
    if (result)
    {
      goto LABEL_29;
    }

    goto LABEL_38;
  }

  if (result)
  {
    goto LABEL_29;
  }

LABEL_40:
  __break(1u);
  return result;
}

id sub_190A4B524()
{
  swift_getKeyPath();
  sub_190A4B6B8();
  sub_190D51C20();

  if ((*(v0 + 40) & 1) != 0 || *(v0 + 32) != 4) && ((swift_getKeyPath(), sub_190D51C20(), v1 = , (*(v0 + 40)) || *(v0 + 32) != 18))
  {
    result = CKFrameworkBundle(v1);
    if (result)
    {
      v3 = result;
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    result = CKFrameworkBundle(v1);
    if (result)
    {
      v3 = result;
LABEL_9:
      v4 = sub_190D51210();

      return v4;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_190A4B6B8()
{
  result = qword_1EAD45CD0;
  if (!qword_1EAD45CD0)
  {
    _s9ViewModelCMa_5(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45CD0);
  }

  return result;
}

void CKTextEffectCoordinator.Configuration.init(logIdentifier:timeAfterLastAnimationInSeconds:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_190D56760();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v15.receiver - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a3 * 1000.0;
  if (COERCE__INT64(fabs(a3 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v10 < 9.22337204e18)
  {
    *v9 = v10;
    (*(v7 + 104))(v9, *MEMORY[0x1E69E7F38], v6);
    v11 = sub_190B0FFAC();
    v17[3] = &_s25ConstantLoopDelayProviderVN;
    v17[4] = &off_1F0419648;
    *v17 = v11;
    sub_19083B854(v17, v16);
    v12 = type metadata accessor for CKTextEffectCoordinator.Configuration();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR___CKTextEffectCoordinatorConfiguration_logIdentifier];
    *v14 = a1;
    *(v14 + 1) = a2;
    sub_19083B854(v16, &v13[OBJC_IVAR___CKTextEffectCoordinatorConfiguration_loopDelayProvider]);
    v15.receiver = v13;
    v15.super_class = v12;
    objc_msgSendSuper2(&v15, sel_init);
    __swift_destroy_boxed_opaque_existential_0(v16);
    (*(v7 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_0(v17);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return;
  }

LABEL_7:
  __break(1u);
}

id CKTextEffectCoordinator.Configuration.__allocating_init(logIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_190D56760();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = objc_allocWithZone(v2);
  swift_getObjectType();
  *v8 = 5;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E7F48], v5);
  v10 = sub_190A4BE60(a1, a2, v8, 1);
  swift_deallocPartialClassInstance();
  return v10;
}

id CKTextEffectCoordinator.Configuration.init(logIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D56760();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  *v7 = 5;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F48], v4);
  v8 = sub_190A4BE60(a1, a2, v7, 1);
  swift_deallocPartialClassInstance();
  return v8;
}

id CKTextEffectCoordinator.Configuration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKTextEffectCoordinator.Configuration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTextEffectCoordinator.Configuration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190A4BE60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_190B0FFAC();
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56768, &qword_190DDD108);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_190DDD0F0;
    *(v9 + 32) = v8;
    *(v9 + 40) = v8;
    *(v9 + 48) = v8;
    *(v9 + 56) = v8;
    *(v9 + 64) = v8 + 2.0;
    v20[1] = v9;
    v8 = 10.0;
    v10 = &off_1F0419628;
    v11 = &_s22SmartLoopDelayProviderVN;
  }

  else
  {
    v10 = &off_1F0419648;
    v11 = &_s25ConstantLoopDelayProviderVN;
  }

  v20[3] = v11;
  v20[4] = v10;
  *v20 = v8;
  sub_19083B854(v20, v19);
  v12 = type metadata accessor for CKTextEffectCoordinator.Configuration();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR___CKTextEffectCoordinatorConfiguration_logIdentifier];
  *v14 = a1;
  *(v14 + 1) = a2;
  sub_19083B854(v19, &v13[OBJC_IVAR___CKTextEffectCoordinatorConfiguration_loopDelayProvider]);
  v18.receiver = v13;
  v18.super_class = v12;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  v16 = sub_190D56760();
  (*(*(v16 - 8) + 8))(a3, v16);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return v15;
}

id sub_190A4BFE8(uint64_t a1)
{
  v1 = a1;
  result = CKFrameworkBundle(a1);
  v3 = result;
  if (v1 <= 1u)
  {
    if (v1)
    {
      if (result)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    if (result)
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v1 == 2)
  {
    if (result)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (result)
  {
LABEL_11:
    v4 = sub_190D51210();

    return v4;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_190A4C110@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_190A4C194(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_190A4C140()
{
  result = qword_1EAD5AF30;
  if (!qword_1EAD5AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AF30);
  }

  return result;
}

unint64_t sub_190A4C194(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

id CKMonoskiBadgeViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKMonoskiBadgeViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKMonoskiBadgeViewFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKMonoskiBadgeViewFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CKMonoskiBadgeViewFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_190A4C2B0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v66 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AF40, &qword_190DEA138);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v57 - v2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AF48, &qword_190DEA140);
  MEMORY[0x1EEE9AC00](v64);
  v57 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AF50, &qword_190DEA148);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v57 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AF58, &qword_190DEA150);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AF60, &qword_190DEA158);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AF68, &qword_190DEA160);
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v57 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AF70, &qword_190DEA168);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v61 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v62 = &v57 - v21;
  v58 = sub_190D55ED0();
  sub_190D564B0();
  sub_190D54430();
  v22 = sub_190D54EB0();
  KeyPath = swift_getKeyPath();
  v24 = &v7[*(v5 + 44)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AF78, &qword_190DEA1A0) + 28);
  sub_190D563F0();
  v26 = sub_190D564A0();
  (*(*(v26 - 8) + 56))(v24 + v25, 0, 1, v26);
  *v24 = KeyPath;
  v27 = v69;
  *(v7 + 56) = v70;
  v28 = v72;
  *(v7 + 72) = v71;
  *(v7 + 88) = v28;
  *(v7 + 104) = v73;
  v29 = v68;
  *(v7 + 8) = v67;
  *(v7 + 24) = v29;
  *v7 = v58;
  *(v7 + 40) = v27;
  *(v7 + 30) = v22;
  sub_190D55360();
  sub_190D553B0();
  v30 = sub_190D55420();

  v31 = swift_getKeyPath();
  sub_19081E40C(v7, v11, &qword_1EAD5AF50, &qword_190DEA148);
  v32 = &v11[*(v9 + 44)];
  *v32 = v31;
  v32[1] = v30;
  v33 = v59;
  v34 = swift_getKeyPath();
  v35 = &v15[*(v13 + 44)];
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AF80, &qword_190DEA208) + 28);
  v37 = *MEMORY[0x1E697DBA8];
  v38 = sub_190D53A60();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = v34;
  sub_19081E40C(v11, v15, &qword_1EAD5AF58, &qword_190DEA150);
  LOBYTE(v11) = sub_190D552B0();
  sub_19081E40C(v15, v33, &qword_1EAD5AF60, &qword_190DEA158);
  v39 = v33 + *(v16 + 36);
  *v39 = v11;
  *(v39 + 8) = 0u;
  *(v39 + 24) = 0u;
  *(v39 + 40) = 1;
  if (v60)
  {
    v40 = sub_190D56500();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AFF8, &qword_190DEA230);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_190DD1DA0;
    sub_190D55D90();
    v44 = sub_190D55DF0();

    *(v43 + 32) = v44;
    *(v43 + 40) = sub_190D55DA0();
    MEMORY[0x193AF1C40](v43);
    sub_190D53EE0();
    v45 = v74;
    v46 = v57;
    sub_19022FD14(v33, v57, &qword_1EAD5AF68, &qword_190DEA160);
    v47 = v46 + *(v64 + 36);
    *v47 = v45;
    v48 = v75;
    *(v47 + 24) = v76;
    *(v47 + 8) = v48;
    *(v47 + 40) = v40;
    *(v47 + 48) = v42;
    sub_19022FD14(v46, v65, &qword_1EAD5AF48, &qword_190DEA140);
    swift_storeEnumTagMultiPayload();
    sub_190A4CE8C();
    sub_190A4CF44();
    v49 = v61;
    sub_190D54C50();
    sub_19022EEA4(v46, &qword_1EAD5AF48, &qword_190DEA140);
  }

  else
  {
    sub_19022FD14(v33, v65, &qword_1EAD5AF68, &qword_190DEA160);
    swift_storeEnumTagMultiPayload();
    sub_190A4CE8C();
    sub_190A4CF44();
    v49 = v61;
    sub_190D54C50();
  }

  sub_19022EEA4(v33, &qword_1EAD5AF68, &qword_190DEA160);
  v50 = v62;
  sub_19081E40C(v49, v62, &qword_1EAD5AF70, &qword_190DEA168);
  v51 = sub_190D54240();
  v52 = sub_190D552B0();
  v53 = v50;
  v54 = v66;
  sub_19081E40C(v53, v66, &qword_1EAD5AF70, &qword_190DEA168);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AFF0, &qword_190DEA228);
  v56 = v54 + *(result + 36);
  *v56 = v51;
  *(v56 + 8) = v52;
  return result;
}

uint64_t sub_190A4CA50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B000, &qword_190DEA238);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_19022FD14(a1, &v5 - v3, &qword_1EAD5B000, &qword_190DEA238);
  return sub_190D54680();
}

void sub_190A4CB00(char a1)
{
  v1 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AF38, &unk_190DEA0A0));
  v2 = sub_190D54B60();
  v3 = [v2 view];

  if (v3)
  {
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];

    v5 = objc_allocWithZone(MEMORY[0x1E69DD250]);
    v6 = v3;
    v7 = [v5 init];
    [v7 addSubview_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_190DD86A0;
    v10 = [v6 topAnchor];
    v11 = [v7 topAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v9 + 32) = v12;
    v13 = [v6 leftAnchor];
    v14 = [v7 leftAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v9 + 40) = v15;
    v16 = [v6 bottomAnchor];
    v17 = [v7 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor_];

    *(v9 + 48) = v18;
    v19 = [v6 rightAnchor];
    v20 = [v7 rightAnchor];
    v21 = [v19 constraintEqualToAnchor_];

    *(v9 + 56) = v21;
    sub_19086225C();
    v22 = sub_190D57160();

    [v8 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_190A4CE8C()
{
  result = qword_1EAD5AF88;
  if (!qword_1EAD5AF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AF48, &qword_190DEA140);
    sub_190A4CF44();
    sub_190233640(&qword_1EAD5AFE0, &qword_1EAD5AFE8, &qword_190DEA220, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AF88);
  }

  return result;
}

unint64_t sub_190A4CF44()
{
  result = qword_1EAD5AF90;
  if (!qword_1EAD5AF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AF68, &qword_190DEA160);
    sub_190A4CFD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AF90);
  }

  return result;
}

unint64_t sub_190A4CFD0()
{
  result = qword_1EAD5AF98;
  if (!qword_1EAD5AF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AF60, &qword_190DEA158);
    sub_190A4D088();
    sub_190233640(&qword_1EAD5AFD8, &qword_1EAD5AF80, &qword_190DEA208, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AF98);
  }

  return result;
}

unint64_t sub_190A4D088()
{
  result = qword_1EAD5AFA0;
  if (!qword_1EAD5AFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AF58, &qword_190DEA150);
    sub_190A4D140();
    sub_190233640(&unk_1EAD46798, &qword_1EAD52F70, &qword_190DDA2F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AFA0);
  }

  return result;
}

unint64_t sub_190A4D140()
{
  result = qword_1EAD5AFA8;
  if (!qword_1EAD5AFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AF50, &qword_190DEA148);
    sub_190A4D1F8();
    sub_190233640(&qword_1EAD5AFD0, &qword_1EAD5AF78, &qword_190DEA1A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AFA8);
  }

  return result;
}

unint64_t sub_190A4D1F8()
{
  result = qword_1EAD5AFB0;
  if (!qword_1EAD5AFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AFB8, &qword_190DEA210);
    sub_190A4D2B0();
    sub_190233640(&qword_1EAD45208, &qword_1EAD53160, &qword_190DD4100, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AFB0);
  }

  return result;
}

unint64_t sub_190A4D2B0()
{
  result = qword_1EAD5AFC0;
  if (!qword_1EAD5AFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AFC8, &qword_190DEA218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5AFC0);
  }

  return result;
}

unint64_t sub_190A4D334()
{
  result = qword_1EAD5B008;
  if (!qword_1EAD5B008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AFF0, &qword_190DEA228);
    sub_190A4D3C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B008);
  }

  return result;
}

unint64_t sub_190A4D3C0()
{
  result = qword_1EAD5B010;
  if (!qword_1EAD5B010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5AF70, &qword_190DEA168);
    sub_190A4CE8C();
    sub_190A4CF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B010);
  }

  return result;
}

uint64_t type metadata accessor for DetailsLocationsTabView(uint64_t a1)
{
  result = qword_1EAD5B018;
  if (!qword_1EAD5B018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190A4D4C0(uint64_t a1)
{
  sub_190A4D6B4(319, &qword_1EAD52C10, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_190A4D6B4(319, &qword_1EAD5F6C0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_190A4D6B4(319, &qword_1EAD57640, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_190D52850();
        if (v4 <= 0x3F)
        {
          sub_190A4D6B4(319, &qword_1EAD5B028, _s9ViewModelCMa_8, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_190951D74(319);
            if (v6 <= 0x3F)
            {
              sub_190A4D6B4(319, &qword_1EAD58FB0, MEMORY[0x1E697D750], MEMORY[0x1E69E62F8]);
              if (v7 <= 0x3F)
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

void sub_190A4D6B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_190A4D760(void *a1)
{
  v2 = v1;
  v4 = _s4LinkVMa(0);
  v64 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v63 = (v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = v54 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v62 = v54 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v54 - v12);
  v65 = v14;
  v15 = sub_190A5DFF0(&qword_1EAD555A8, _s4LinkVMa, &unk_190DF1828);
  v66 = v15;
  swift_getKeyPath();
  v16 = qword_1EAD629D8;
  v67 = v1;
  v17 = sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8, &unk_190DDCF50, &unk_190E038D8);
  sub_190D51C20();

  if (*(v1 + qword_1EAD629B0) == 1)
  {
    v60 = v8;
    MEMORY[0x1EEE9AC00](v18);
    v54[-2] = v4;
    v54[-1] = v15;
    swift_getKeyPath();
    v67 = v1;
    sub_190D51C20();

    v19 = qword_1EAD629B8;
    v20 = *(v1 + qword_1EAD629B8);
    sub_190D52690();
    v21 = sub_190A4FC2C(a1, v20, _s4LinkVMa, _s4LinkVMa, _s4LinkVMa);

    if (!v21)
    {
      v32 = sub_190A5E038(a1, v63, _s4LinkVMa);
      MEMORY[0x1EEE9AC00](v32);
      v54[-2] = v4;
      v54[-1] = v15;
      swift_getKeyPath();
      v67 = v2;
      sub_190D51C20();

      v67 = v2;
      MEMORY[0x1EEE9AC00](v33);
      v54[-2] = v4;
      v54[-1] = v15;
      swift_getKeyPath();
      sub_190D51C40();

      v26 = *(v2 + v19);
      sub_190D52690();
      v13 = v19;
      v24 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_43:
        v26 = sub_190835D04(0, *(v26 + 16) + 1, 1, v26);
      }

      v35 = *(v26 + 16);
      v34 = *(v26 + 24);
      if (v35 >= v34 >> 1)
      {
        v26 = sub_190835D04((v34 > 1), v35 + 1, 1, v26);
      }

      *(v26 + 16) = v35 + 1;
      sub_190A5D874(v63, v26 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v35, _s4LinkVMa);
      v36 = *(v13 + v2);
      *(v13 + v2) = v26;
      sub_1908EDAFC(v36);

      v67 = v2;
      MEMORY[0x1EEE9AC00](v37);
      v54[-2] = v4;
      v54[-1] = v24;
      swift_getKeyPath();
      goto LABEL_40;
    }

    v54[1] = v54;
    MEMORY[0x1EEE9AC00](v22);
    v61 = &v54[-4];
    v63 = a1;
    v54[-2] = a1;
    MEMORY[0x1EEE9AC00](v23);
    v54[-2] = v4;
    v54[-1] = v15;
    swift_getKeyPath();
    v59 = v17;
    v67 = v2;
    sub_190D51C20();
    v24 = v15;

    v67 = v2;
    MEMORY[0x1EEE9AC00](v25);
    v58 = v4;
    v54[-2] = v4;
    v54[-1] = v15;
    v56 = v15;
    swift_getKeyPath();
    v57 = v16;
    v26 = v2 + v16;
    sub_190D51C40();

    v55 = v19;
    v27 = *(v2 + v19);
    sub_190D52690();
    v28 = sub_190A54EBC(sub_190A5E154, v61, v27, _s4LinkVMa);
    if (v29)
    {
      v30 = v27[2];
      v31 = v30;
LABEL_32:
      v45 = v31;
      v46 = v31 - v30;
      v47 = v30 + v46;
      if (!__OFADD__(v30, v46))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v27;
        if (!isUniquelyReferenced_nonNull_native || v47 > v27[3] >> 1)
        {
          if (v30 <= v47)
          {
            v49 = v47;
          }

          else
          {
            v49 = v30;
          }

          v27 = sub_190835D04(isUniquelyReferenced_nonNull_native, v49, 1, v27);
          v67 = v27;
        }

        v50 = v55;
        sub_190CAC618(v45, v30, 0);
        v51 = *(v2 + v50);
        *(v2 + v50) = v27;
        sub_1908EDAFC(v51);

        v67 = v2;
        MEMORY[0x1EEE9AC00](v52);
        v53 = v56;
        v54[-2] = v58;
        v54[-1] = v53;
        swift_getKeyPath();
LABEL_40:
        sub_190D51C30();

        return;
      }
    }

    else
    {
      v61 = v28;
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_12;
      }

      while (1)
      {
        v38 = v27[2];
        if (v30 == v38)
        {
          break;
        }

        if (v30 >= v38)
        {
          __break(1u);
          goto LABEL_43;
        }

        v39 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v40 = v27 + v39;
        v24 = *(v64 + 72);
        v4 = v24 * v30;
        sub_190A5E038(v27 + v39 + v24 * v30, v13, _s4LinkVMa);
        if (*v13 == *v63 && v13[1] == v63[1])
        {
LABEL_12:
          sub_190A5E0A0(v13, _s4LinkVMa);
          ++v30;
        }

        else
        {
          v26 = sub_190D58760();
          sub_190A5E0A0(v13, _s4LinkVMa);
          if ((v26 & 1) == 0)
          {
            v42 = v61;
            if (v30 != v61)
            {
              if ((v61 & 0x8000000000000000) != 0)
              {
                goto LABEL_47;
              }

              v43 = v27[2];
              if (v61 >= v43)
              {
                goto LABEL_48;
              }

              v26 = v24 * v61;
              sub_190A5E038(&v40[v24 * v61], v62, _s4LinkVMa);
              if (v30 >= v43)
              {
                goto LABEL_49;
              }

              sub_190A5E038(&v40[v4], v60, _s4LinkVMa);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = sub_190A5BC88(v27);
              }

              v44 = v27 + v39;
              sub_190A5D80C(v60, &v44[v26], _s4LinkVMa);
              if (v30 >= v27[2])
              {
                goto LABEL_50;
              }

              sub_190A5D80C(v62, &v44[v4], _s4LinkVMa);
              v42 = v61;
            }

            v61 = v42 + 1;
          }

          ++v30;
        }
      }

      v31 = v61;
      if (v30 < v61)
      {
        __break(1u);
      }

      else if ((v61 & 0x8000000000000000) == 0)
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }
}