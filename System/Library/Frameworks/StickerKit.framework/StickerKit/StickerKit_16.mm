char *sub_19A77CFB4(void *a1)
{
  v2 = v1;
  v60 = a1;
  v62 = sub_19A7AB6F4();
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19A7AB774();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A7AA7B4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____SKIStickerEffectViewInternal_isTargetDebugStickerView] = 0;
  v58 = OBJC_IVAR____SKIStickerEffectViewInternal_instanceLabel;
  *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_instanceLabel] = 0;
  v11 = OBJC_IVAR____SKIStickerEffectViewInternal_metalLayer;
  v12 = [objc_allocWithZone(MEMORY[0x1E69793F0]) init];
  v59 = v11;
  *&v1[v11] = v12;
  v13 = OBJC_IVAR____SKIStickerEffectViewInternal_metalLayerContainer;
  *&v1[v13] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v1[OBJC_IVAR____SKIStickerEffectViewInternal_needsRender] = 1;
  v1[OBJC_IVAR____SKIStickerEffectViewInternal_renderInProgress] = 0;
  v56 = OBJC_IVAR____SKIStickerEffectViewInternal_currentDrawable;
  v57 = v13;
  *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_currentDrawable] = 0;
  *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_scrollViewToObserveCount] = 0;
  v55 = OBJC_IVAR____SKIStickerEffectViewInternal_scrollViewToObserve;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_requiredScale] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_appliedScale] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_strokeScale] = 0x3FF0000000000000;
  v14 = OBJC_IVAR____SKIStickerEffectViewInternal_renderQueue;
  sub_19A5F5028(0, &qword_1ED8B2040, 0x1E69E9610);
  sub_19A7AA7A4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8098], v4);
  v64 = MEMORY[0x1E69E7CC0];
  sub_19A7821EC(&unk_1ED8B2050, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF150, &unk_19A7C1DB0);
  v15 = v14;
  sub_19A782234(&unk_1ED8B2070, &unk_1EAFCF150, &unk_19A7C1DB0);
  sub_19A7ABB54();
  *(v2 + v14) = sub_19A7AB7B4();
  *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_renderer) = 0;
  v16 = OBJC_IVAR____SKIStickerEffectViewInternal_displayLink;
  *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_displayLink) = 0;
  v17 = qword_1EAFCFAC8;
  if (__OFADD__(qword_1EAFCFAC8, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1EAFCFAC8;
    *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_instanceNumber) = v17;
    *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_displayLinkActive) = 0;
    *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_motionActive) = 0;
    *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_deviceOrientation) = xmmword_19A7BC150;
    *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingDuration1) = 0x3FF3333333333333;
    *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingDuration2) = 0x3FF999999999999ALL;
    *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingStartAngle) = xmmword_19A7C2770;
    *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingEndAngle) = xmmword_19A7BC150;
    *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingStartTime) = 0;
    *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingOrientation) = xmmword_19A7BC150;
    *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_screenCenterDuration) = 0x3FD999999999999ALL;
    *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_unitScreenCenter) = 0x3F0000003F000000;
    *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_boundsIncludeStroke) = 1;
    *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_reRenderOnMotion) = 1;
    *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_curlPosition) = 1065353216;
    v10 = OBJC_IVAR____SKIStickerEffectViewInternal_effect;
    if (qword_1EAFCB328 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v18 = qword_1EAFCB330;
  *&v10[v2] = qword_1EAFCB330;
  v19 = (v2 + OBJC_IVAR____SKIStickerEffectViewInternal_displayHandler);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____SKIStickerEffectViewInternal_image;
  *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_image) = 0;
  *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_isPaused) = 0;
  v21 = qword_1EAFCB6D8;
  v22 = v18;
  v23 = v60;
  if (v21 != -1)
  {
    swift_once();
  }

  v24 = qword_1EAFDD7A0;
  swift_unknownObjectRetain();
  v25 = [v24 objectForKey_];
  if (!v25)
  {
    v26 = [v23 newCommandQueue];
    [v24 setObject:v26 forKey:v23];
    if (!v26)
    {
      swift_unknownObjectRelease_n();

      swift_unknownObjectRelease();
      MEMORY[0x19A907B20](v2 + v55);

      sub_19A60126C(*v19, v19[1]);

      type metadata accessor for StickerEffectView();
      swift_deallocPartialClassInstance();
      return 0;
    }

    v25 = v26;
  }

  *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_device) = v23;
  *(v2 + OBJC_IVAR____SKIStickerEffectViewInternal_commandQueue) = v25;
  v27 = type metadata accessor for StickerEffectView();
  v63.receiver = v2;
  v63.super_class = v27;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v28 = objc_msgSendSuper2(&v63, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v28 setClipsToBounds_];
  v29 = OBJC_IVAR____SKIStickerEffectViewInternal_metalLayerContainer;
  [*&v28[OBJC_IVAR____SKIStickerEffectViewInternal_metalLayerContainer] setMasksToBounds_];
  v30 = *&v28[v29];
  v31 = [v28 layer];
  [v31 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [v30 setFrame_];
  v40 = [v28 layer];
  [v40 addSublayer_];

  v41 = OBJC_IVAR____SKIStickerEffectViewInternal_metalLayer;
  v42 = *&v28[OBJC_IVAR____SKIStickerEffectViewInternal_metalLayer];
  [v42 setDevice_];

  swift_unknownObjectRelease();
  [*&v28[v41] setHidden_];
  [*&v28[v41] setOpaque_];
  v43 = *&v28[v29];
  v44 = *&v28[v41];
  [v43 bounds];
  [v44 setFrame_];

  [*&v28[v41] setPresentsWithTransaction_];
  [*&v28[v29] addSublayer_];
  [*&v28[v41] setFramebufferOnly_];
  v45 = [objc_opt_self() defaultCenter];
  v46 = sub_19A7AAFE4();
  [v45 addObserver:v28 selector:sel_scrollViewWillChange_ name:v46 object:0];

  v47 = v28;
  v48 = sub_19A7AAFE4();
  [v45 addObserver:v47 selector:sel_scrollViewDidChange_ name:v48 object:0];

  v49 = v47;
  v50 = sub_19A7AAFE4();
  [v45 addObserver:v49 selector:sel_scrollViewWillChange_ name:v50 object:0];

  v51 = v49;
  v52 = sub_19A7AAFE4();
  [v45 addObserver:v51 selector:sel_scrollViewDidChange_ name:v52 object:0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v51;
}

void sub_19A77D990()
{
  v1 = *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_instanceLabel);
  if (v1)
  {
    sub_19A7822A0();
    v2 = v1;
    sub_19A7ABB34();

    MEMORY[0x19A905510](8250, 0xE200000000000000);

    v3 = [*(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_effect) description];
    v4 = sub_19A7AB014();
    v6 = v5;

    MEMORY[0x19A905510](v4, v6);

    v7 = sub_19A7AAFE4();

    [v2 setText_];
  }
}

void sub_19A77DB64()
{
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  v2 = *&v0[OBJC_IVAR____SKIStickerEffectViewInternal_metalLayerContainer];
  v3 = [v0 layer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame_];
  v12 = *&v0[OBJC_IVAR____SKIStickerEffectViewInternal_metalLayer];
  [v2 bounds];
  [v12 setFrame_];
  v13 = [v0 window];
  if (v13)
  {
    v14 = v13;
    [v13 itk_backingScaleFactor];
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
  }

  [v12 bounds];
  v17 = v16 * CGRectGetWidth(v26);
  [v12 bounds];
  v18 = v16 * CGRectGetHeight(v27);
  if (v17 * v18 > 2359296.0)
  {
    v19 = 2359296.0 / (v17 * v18);
    v17 = v17 * v19;
    v18 = v18 * v19;
  }

  v20 = floor(v17);
  v21 = floor(v18);
  [v12 drawableSize];
  if (v20 != v23 || v21 != v22)
  {
    [v12 setDrawableSize_];
    [v12 setContentsScale_];
    v0[OBJC_IVAR____SKIStickerEffectViewInternal_needsRender] = 1;
  }

  [v1 commit];
  if (!*&v0[OBJC_IVAR____SKIStickerEffectViewInternal_displayLink] && *&v0[OBJC_IVAR____SKIStickerEffectViewInternal_renderer] && v0[OBJC_IVAR____SKIStickerEffectViewInternal_needsRender] == 1 && (v0[OBJC_IVAR____SKIStickerEffectViewInternal_renderInProgress] & 1) == 0)
  {
    v0[OBJC_IVAR____SKIStickerEffectViewInternal_needsRender] = 0;

    sub_19A77F290();
  }
}

void sub_19A77DDE8(void *a1, uint64_t a2, const char **a3, void (*a4)(id))
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for StickerEffectView();
  v6 = *a3;
  v7 = v9.receiver;
  v8 = objc_msgSendSuper2(&v9, v6);
  a4(v8);
}

double sub_19A77DE50()
{
  v1 = sub_19A7AA764();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A7AA7B4();
  v34 = *(v5 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____SKIStickerEffectViewInternal_needsRender] = 1;
  if (!*&v0[OBJC_IVAR____SKIStickerEffectViewInternal_displayLink])
  {
    [v0 itk_setNeedsLayout];
  }

  sub_19A77EC24();
  v8 = [v0 window];
  if (!v8)
  {
    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

LABEL_6:
    v10 = [v0 window];
    if (v10)
    {

      v11 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      sub_19A77BF5C(v11);

      *&v0[OBJC_IVAR____SKIStickerEffectViewInternal_scrollViewToObserveCount] = 0;
    }

    goto LABEL_27;
  }

  v29 = v4;
  if (qword_1EAFCB6E0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v30 = v2;
    v31 = v1;
    v12 = [qword_1EAFCFAD0 allObjects];
    sub_19A5F5028(0, &qword_1EAFCFC68, 0x1E69DCEF8);
    v13 = sub_19A7AB254();

    v32 = v5;
    if (v13 >> 62)
    {
      break;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_25;
    }

LABEL_11:
    v5 = 0;
    v1 = v13 & 0xFFFFFFFFFFFFFF8;
    v2 = &selRef_mainQueue;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x19A906130](v5, v13);
      }

      else
      {
        if (v5 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v15 = *(v13 + 8 * v5 + 32);
      }

      v16 = v15;
      v17 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v0 isDescendantOfView_])
      {

        v18 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakAssign();
        v19 = v16;
        sub_19A77BF5C(v18);

        goto LABEL_26;
      }

      ++v5;
      if (v17 == v14)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v14 = sub_19A7ABBE4();
  if (v14)
  {
    goto LABEL_11;
  }

LABEL_25:

LABEL_26:
  v2 = v30;
  v1 = v31;
  v5 = v32;
  v4 = v29;
LABEL_27:
  v20 = [v0 window];
  if (v20)
  {

    if (!*&v0[OBJC_IVAR____SKIStickerEffectViewInternal_renderer])
    {
      v32 = v5;
      v22 = *&v0[OBJC_IVAR____SKIStickerEffectViewInternal_device];
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v0;
      aBlock[4] = sub_19A781C40;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19A6815D4;
      aBlock[3] = &block_descriptor_103;
      v24 = v4;
      v25 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v26 = v0;
      v27 = v33;
      sub_19A7AA784();
      v35 = MEMORY[0x1E69E7CC0];
      sub_19A7821EC(&qword_1ED8B20A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0, &unk_19A7B9A50);
      sub_19A782234(&qword_1ED8B2090, &unk_1EAFCECD0, &unk_19A7B9A50);
      sub_19A7ABB54();
      MEMORY[0x19A905BE0](0, v27, v24, v25);
      _Block_release(v25);
      (v2[1])(v24, v1);
      (*(v34 + 8))(v27, v32);
    }
  }

  return result;
}

uint64_t sub_19A77E3A4(uint64_t a1, void *a2)
{
  v3 = sub_19A7AA764();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_19A7AA7B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StickerEffectRenderer();
  swift_allocObject();
  v11 = swift_unknownObjectRetain();
  v12 = sub_19A782970(v11, 1);
  sub_19A5F5028(0, &qword_1ED8B2040, 0x1E69E9610);
  v21 = sub_19A7AB794();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = v12;
  v19 = v12;
  aBlock[4] = sub_19A781C48;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6815D4;
  aBlock[3] = &block_descriptor_109;
  v14 = _Block_copy(aBlock);
  v20 = v7;
  v15 = v14;
  v16 = a2;

  sub_19A7AA784();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_19A7821EC(&qword_1ED8B20A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0, &unk_19A7B9A50);
  sub_19A782234(&qword_1ED8B2090, &unk_1EAFCECD0, &unk_19A7B9A50);
  sub_19A7ABB54();
  v17 = v21;
  MEMORY[0x19A905BE0](0, v10, v6, v15);
  _Block_release(v15);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v20);
}

void sub_19A77E708(_BYTE *a1, uint64_t a2)
{
  *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_renderer] = a2;

  a1[OBJC_IVAR____SKIStickerEffectViewInternal_needsRender] = 1;
  if (!*&a1[OBJC_IVAR____SKIStickerEffectViewInternal_displayLink])
  {

    [a1 itk_setNeedsLayout];
  }
}

id sub_19A77E790()
{
  v1 = v0;
  v2 = sub_19A7AA764();
  v15 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_19A7AA7B4();
  v5 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultCenter];
  [v8 removeObserver_];

  sub_19A5F5028(0, &qword_1ED8B2040, 0x1E69E9610);
  v9 = sub_19A7AB794();
  aBlock[4] = sub_19A77EAA0;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6815D4;
  aBlock[3] = &block_descriptor_130;
  v10 = _Block_copy(aBlock);
  sub_19A7AA784();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_19A7821EC(&qword_1ED8B20A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0, &unk_19A7B9A50);
  sub_19A782234(&qword_1ED8B2090, &unk_1EAFCECD0, &unk_19A7B9A50);
  sub_19A7ABB54();
  MEMORY[0x19A905BE0](0, v7, v4, v10);
  _Block_release(v10);

  (*(v15 + 8))(v4, v2);
  (*(v5 + 8))(v7, v14);
  v11 = type metadata accessor for StickerEffectView();
  v16.receiver = v13[1];
  v16.super_class = v11;
  return objc_msgSendSuper2(&v16, sel_dealloc);
}

void sub_19A77EAA0()
{
  if (qword_1EAFCB590 != -1)
  {
    swift_once();
  }

  sub_19A6A675C();
}

void sub_19A77EC24()
{
  v1 = [v0 window];
  if (v1 && (v1, (v0[OBJC_IVAR____SKIStickerEffectViewInternal_isPaused] & 1) == 0) && sub_19A6BCC0C())
  {
    v2 = CACurrentMediaTime() < *&v0[OBJC_IVAR____SKIStickerEffectViewInternal_settlingStartTime] + 1.2 + 1.6;
    v3 = 1;
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  v4 = v0[OBJC_IVAR____SKIStickerEffectViewInternal_displayLinkActive];
  v0[OBJC_IVAR____SKIStickerEffectViewInternal_displayLinkActive] = v2;
  sub_19A77C1C4(v4);
  v0[OBJC_IVAR____SKIStickerEffectViewInternal_motionActive] = v3;

  sub_19A77C3E0(v5);
}

void sub_19A77ED64(void *a1)
{
  v2 = OBJC_IVAR____SKIStickerEffectViewInternal_renderInProgress;
  if ((*(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_renderInProgress) & 1) == 0)
  {
    [a1 targetTimestamp];
    v4 = v3;
    if (qword_1EAFCB6E8 != -1)
    {
      swift_once();
    }

    v5 = qword_1EAFCFAD8;
    [qword_1EAFCFAD8 settlingDuration];
    v7 = v6;
    if (qword_1EAFCB6F0 != -1)
    {
      swift_once();
    }

    v8 = qword_1EAFCFAE0;
    [qword_1EAFCFAE0 settlingDuration];
    v10 = v9;
    v11 = OBJC_IVAR____SKIStickerEffectViewInternal_settlingStartTime;
    v12 = (v4 - *(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingStartTime)) / v7;
    *&v12 = v12;
    *&v12 = fminf(fmaxf(*&v12, 0.0), 1.0);
    [v5 _solveForInput_];
    v14 = v13;
    v15 = (v4 - *(v1 + v11) + -1.2) / v10;
    *&v15 = v15;
    *&v15 = fminf(fmaxf(*&v15, 0.0), 1.0);
    [v8 _solveForInput_];
    if (v14 <= 0.999)
    {
      v17 = v14;
    }

    else
    {
      v17 = 1.0;
    }

    if (v16 <= 0.985)
    {
      v18 = v16;
    }

    else
    {
      v18 = 1.0;
    }

    v26 = *(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingEndAngle);
    simd_slerp(v26, *(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingStartAngle), v17);
    simd_slerp(v19, v26, v18);
    v20 = *(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingOrientation);
    *(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingOrientation) = v21;
    sub_19A77C694(v20);
    v22 = *(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_displayLink);
    v23 = v22;
    sub_19A77F05C(v22);
    v25 = v24;

    *(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_unitScreenCenter) = v25;
    if (CACurrentMediaTime() >= *(v1 + v11) + 1.2 + 1.6)
    {
      sub_19A77EC24();
    }

    if (*(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_needsRender) == 1 && (*(v1 + v2) & 1) == 0)
    {
      *(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_needsRender) = 0;

      sub_19A77F290();
    }
  }
}

void sub_19A77F05C(void *a1)
{
  v3 = [v1 window];
  if (!v3)
  {
    v12 = 0x3F0000003F000000;
    v13 = 1.0;
    if (!a1)
    {
      return;
    }

    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v1 layer];
  v6 = [v5 presentationLayer];

  if (v6)
  {
    [v6 bounds];
    MidX = CGRectGetMidX(v28);
    [v6 bounds];
    MidY = CGRectGetMidY(v29);
    v9 = [v4 layer];
    [v6 convertPoint:v9 toLayer:{MidX, MidY}];
    v26 = v11;
    v27 = v10;
  }

  else
  {
    [v1 bounds];
    v14 = CGRectGetMidX(v30);
    [v1 bounds];
    [v1 convertPoint:v4 toCoordinateSpace:{v14, CGRectGetMidY(v31)}];
    v26 = v16;
    v27 = v15;
  }

  [v4 itk_bounds];
  v24 = v18;
  v25 = v17;

  v19.f64[0] = v27;
  v19.f64[1] = v26;
  v20.f64[0] = v25;
  v20.f64[1] = v24;
  v12 = vcvt_f32_f64(vdivq_f64(v19, v20));
  if (v25 > v24)
  {
    v21 = v25;
  }

  else
  {
    v21 = v24;
  }

  v13 = 1.0 / v21;
  if (a1)
  {
LABEL_11:
    if (v1[OBJC_IVAR____SKIStickerEffectViewInternal_displayLinkActive] == 1)
    {
      v22 = vsub_f32(v12, *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_unitScreenCenter]);
      if (v13 < sqrtf(vaddv_f32(vmul_f32(v22, v22))))
      {
        v23 = a1;
        [v23 targetTimestamp];
        [v23 timestamp];
      }
    }
  }
}

void sub_19A77F290()
{
  v1 = sub_19A7AA764();
  v30 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19A7AA7B4();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_commandQueue);
  v8 = *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_deviceOrientation);
  v26 = *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingOrientation);
  v27 = v8;
  v9 = OBJC_IVAR____SKIStickerEffectViewInternal_image;
  v10 = *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_image);
  v11 = *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_effect);
  v12 = *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_metalLayer);
  v31 = v10;
  v13 = v11;
  [v12 contentsScale];
  if (*(v0 + v9) && (v15 = *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_renderer)) != 0)
  {
    v16 = vnegq_f32(v26);
    v17 = vtrn2q_s32(v26, vtrn1q_s32(v26, v16));
    v18 = vrev64q_s32(v26);
    v18.i32[0] = v16.i32[1];
    v18.i32[3] = v16.i32[2];
    v26 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v26, v27, 3), v18, v27, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v26, v16, 8uLL), *v27.f32, 1), vextq_s8(v17, v17, 8uLL), v27.f32[0]));
    v19 = v14;
    v20 = *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_unitScreenCenter);
    v21 = *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_curlPosition);
    *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_renderInProgress) = 1;
    v27.i64[0] = *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_renderQueue);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[1].i64[0] = v22;
    v23[1].i64[1] = v7;
    v23[2].i64[0] = v15;
    v23[3] = v26;
    v23[4].i64[0] = v10;
    v23[4].i64[1] = v13;
    v23[5].f32[0] = v19;
    v23[5].i64[1] = v20;
    v23[6].i32[0] = v21;
    aBlock[4] = sub_19A781180;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19A6815D4;
    aBlock[3] = &block_descriptor_36;
    v24 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    swift_retain_n();
    v26.i64[0] = v13;
    v31 = v31;

    sub_19A7AA784();
    v32 = MEMORY[0x1E69E7CC0];
    sub_19A7821EC(&qword_1ED8B20A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0, &unk_19A7B9A50);
    sub_19A782234(&qword_1ED8B2090, &unk_1EAFCECD0, &unk_19A7B9A50);
    sub_19A7ABB54();
    MEMORY[0x19A905BE0](0, v6, v3, v24);
    _Block_release(v24);

    (*(v30 + 8))(v3, v1);
    (*(v28 + 8))(v6, v29);
  }

  else
  {

    v25 = v31;
  }
}

void sub_19A77F71C(uint64_t a1, void *a2, uint64_t a3, __n128 *a4)
{
  v6 = sub_19A7AA764();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19A7AA7B4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v49 = v7;
    v16 = OBJC_IVAR____SKIStickerEffectViewInternal_metalLayer;
    if (![*(Strong + OBJC_IVAR____SKIStickerEffectViewInternal_metalLayer) isDrawableAvailable])
    {
      if (qword_1EAFCB6D0 != -1)
      {
        swift_once();
      }

      v23 = sub_19A7A9384();
      __swift_project_value_buffer(v23, qword_1EAFCFAB0);
      v24 = sub_19A7A9364();
      v25 = sub_19A7AB584();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_19A5EE000, v24, v25, "Error while rendering. Skipping render because no drawable is available", v26, 2u);
        MEMORY[0x19A907A30](v26, -1, -1);
      }

      goto LABEL_13;
    }

    v17 = [*&v15[v16] nextDrawable];
    if (!v17)
    {

      return;
    }

    v18 = v17;
    if (a2 && (v19 = [a2 commandBuffer]) != 0)
    {
      v47 = v11;
      v20 = v19;
      v21 = [v18 texture];
      v22 = v18;
      v48 = v20;
      sub_19A785194(a4, v20, v21);
      v28 = v27;
      swift_unknownObjectRelease();
      v29 = v48;
      [v48 commit];
      [v29 waitUntilScheduled];
      v30 = [v29 error];
      if (v30)
      {
        v31 = v30;
        if (qword_1EAFCB6D0 != -1)
        {
          swift_once();
        }

        v32 = sub_19A7A9384();
        __swift_project_value_buffer(v32, qword_1EAFCFAB0);
        v33 = v31;
        v24 = sub_19A7A9364();
        v34 = sub_19A7AB584();

        if (os_log_type_enabled(v24, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *v35 = 138412290;
          v37 = v33;
          v38 = _swift_stdlib_bridgeErrorToNSError();
          *(v35 + 4) = v38;
          *v36 = v38;
          _os_log_impl(&dword_19A5EE000, v24, v34, "Error in commandBuffer rendering sticker effect, bailing %@", v35, 0xCu);
          sub_19A5F2B54(v36, &unk_1EAFCD7D0, &qword_19A7BB5F0);
          MEMORY[0x19A907A30](v36, -1, -1);
          MEMORY[0x19A907A30](v35, -1, -1);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_13:

        return;
      }

      if ((v28 & 0x100000000) != 0)
      {
        v39 = 1.0;
      }

      else
      {
        v39 = *&v28;
      }

      sub_19A5F5028(0, &qword_1ED8B2040, 0x1E69E9610);
      v46 = sub_19A7AB794();
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *(v41 + 24) = v22;
      *(v41 + 32) = v39;
      *(v41 + 40) = 1065353216;
      aBlock[4] = sub_19A781C30;
      aBlock[5] = v41;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19A6815D4;
      aBlock[3] = &block_descriptor_97;
      v45 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      sub_19A7AA784();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      v44 = sub_19A7821EC(&qword_1ED8B20A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0, &unk_19A7B9A50);
      sub_19A782234(&qword_1ED8B2090, &unk_1EAFCECD0, &unk_19A7B9A50);
      sub_19A7ABB54();
      v43 = v45;
      v42 = v46;
      MEMORY[0x19A905BE0](0, v13, v9, v45);
      _Block_release(v43);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*(v49 + 8))(v9, v6);
      (*(v47 + 8))(v13, v10);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_19A77FEF8(uint64_t a1, void *a2, double a3, float a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = objc_opt_self();
    [v9 begin];
    [v9 setDisableActions_];
    [a2 present];
    v8[OBJC_IVAR____SKIStickerEffectViewInternal_renderInProgress] = 0;
    sub_19A77C0F4(a3);
    *&v8[OBJC_IVAR____SKIStickerEffectViewInternal_strokeScale] = a4;
    *&v8[OBJC_IVAR____SKIStickerEffectViewInternal_currentDrawable] = a2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v9 commit];
    v10 = &v8[OBJC_IVAR____SKIStickerEffectViewInternal_displayHandler];
    v11 = *&v8[OBJC_IVAR____SKIStickerEffectViewInternal_displayHandler];
    if (v11)
    {
      v12 = v10[1];

      v11(1);
      sub_19A60126C(v11, v12);
      v13 = *v10;
      v14 = v10[1];
      *v10 = 0;
      v10[1] = 0;
      sub_19A60126C(v13, v14);
    }
  }
}

void sub_19A780040(CGColorSpace *a1, _BYTE *a2, CGColorSpaceRef a3, __n128 *a4, __n128 a5, uint64_t a6, void (*a7)(void, void *), const __CFDictionary *a8)
{
  v13 = 0;
  v134 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = a1;
  }

  else
  {
    type metadata accessor for StickerEffectRenderer();
    swift_allocObject();
    v84 = swift_unknownObjectRetain();
    v14 = sub_19A782970(v84, 1);
  }

  [(CGColorSpace *)a3 size];
  v16 = v15;
  [(CGColorSpace *)a3 itk_scale];
  v18 = v16 * v17;
  if (COERCE__INT64(fabs(v16 * v17)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_58;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  [(CGColorSpace *)a3 size];
  v20 = v19;
  [(CGColorSpace *)a3 itk_scale];
  v22 = v20 * v21;
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v122 = a2;
  v23 = v18;
  v24 = v22;
  v25 = a4[1].n128_u64[1];
  v26 = a4[2].n128_f32[0];
  a2 = OBJC_IVAR___STKStickerEffect_isStroked;
  swift_beginAccess();
  if (v24 <= v18)
  {
    v27 = v18;
  }

  else
  {
    v27 = v24;
  }

  v28 = 0.0;
  v29 = fminf(fmaxf(((v27 / v26) + -30.0) / 90.0, 0.0), 1.0);
  v30 = (v29 * v29) * ((v29 * -2.0) + 3.0);
  if (a2[v25] == 1)
  {
    v31 = *(v25 + OBJC_IVAR___STKStickerEffect_smallStrokeRadiusMultiplier);
    if (!*(v25 + OBJC_IVAR___STKStickerEffect_forceSmallStrokeRadiusMultiplier))
    {
      v31 = v31 + (v30 * (1.0 - v31));
    }

    v28 = ((v31 * *(v25 + OBJC_IVAR___STKStickerEffect_strokeRadius)) + (v31 * *(v25 + OBJC_IVAR___STKStickerEffect_strokeBlurRadius))) + ((v31 * *(v25 + OBJC_IVAR___STKStickerEffect_strokeRadius)) + (v31 * *(v25 + OBJC_IVAR___STKStickerEffect_strokeBlurRadius)));
  }

  v32 = *(v25 + OBJC_IVAR___STKStickerEffect_smallShadowSizeMultiplier) + (v30 * (1.0 - *(v25 + OBJC_IVAR___STKStickerEffect_smallShadowSizeMultiplier)));
  v33 = *(v25 + OBJC_IVAR___STKStickerEffect_shadowRadius) * v32;
  v34 = *(v25 + OBJC_IVAR___STKStickerEffect_shadowOffset);
  v35 = *(v25 + OBJC_IVAR___STKStickerEffect_shadowParallax);
  v36 = 1.0 - v28;
  v37 = fabsf(v32 * *v34.i32) + fabsf(v32 * *v35.i32);
  v38 = vaddv_f32(vabs_f32(vmul_n_f32(vzip2_s32(v34, v35), v32)));
  if (v37 > v38)
  {
    v38 = v37;
  }

  v39 = 1.0 - ((v33 + v38) + (v33 + v38));
  v40 = (v24 / v23) / (v24 / v23);
  v41 = 1.0 / v40;
  if (v40 > 1.0)
  {
    v40 = 1.0;
  }

  else
  {
    v41 = 1.0;
  }

  v42 = v23 / (v39 * (v36 * v41));
  if (v42 <= -9.2234e18)
  {
    goto LABEL_63;
  }

  if (v42 >= 9.2234e18)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v43 = v24 / (v39 * (v36 * v40));
  if ((LODWORD(v43) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v42) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_65;
  }

  if (v43 <= -9.2234e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v43 >= 9.2234e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v118 = a3;
  v119 = a4;
  v126 = a8;
  v125 = a7;
  v44 = v42;
  v45 = v43;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEAE8, &qword_19A7C27D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7BE980;
  v47 = *MEMORY[0x1E6966208];
  *(inited + 32) = *MEMORY[0x1E6966208];
  v48 = MEMORY[0x1E69E6530];
  v120 = v44;
  *(inited + 40) = v44;
  v49 = *MEMORY[0x1E69660B8];
  *(inited + 64) = v48;
  *(inited + 72) = v49;
  v121 = v45;
  *(inited + 80) = v45;
  v50 = *MEMORY[0x1E6966130];
  *(inited + 104) = v48;
  *(inited + 112) = v50;
  v51 = MEMORY[0x1E69E7668];
  *(inited + 120) = 1111970369;
  v52 = *MEMORY[0x1E6966030];
  *(inited + 144) = v51;
  *(inited + 152) = v52;
  v53 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  v54 = *MEMORY[0x1E6966028];
  *(inited + 184) = v53;
  *(inited + 192) = v54;
  *(inited + 200) = 1;
  v55 = *MEMORY[0x1E6966100];
  *(inited + 224) = v53;
  *(inited + 232) = v55;
  *(inited + 240) = 1;
  v56 = *MEMORY[0x1E69660D8];
  *(inited + 264) = v53;
  *(inited + 272) = v56;
  v57 = v47;
  v58 = v49;
  v59 = v50;
  v60 = v52;
  v61 = v54;
  v62 = v55;
  v63 = v56;
  v64 = sub_19A69D6CC(MEMORY[0x1E69E7CC0]);
  *(inited + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCFC80, &unk_19A7C29F0);
  *(inited + 280) = v64;
  sub_19A69D6CC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD980, &unk_19A7BEAC0);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_19A7821EC(&qword_1EAFCBDE0, type metadata accessor for CFString, &unk_19A7B6820);
  a8 = sub_19A7AAF34();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCEAF0, &unk_19A7C2A00);
  v65 = swift_initStackObject();
  v66 = MEMORY[0x1E6966158];
  *(v65 + 16) = xmmword_19A7B6C30;
  v67 = *v66;
  *(v65 + 32) = v67;
  *(v65 + 40) = 1;
  v68 = v67;
  sub_19A69D7F4(v65);
  swift_setDeallocating();
  sub_19A5F2B54(v65 + 32, &unk_1EAFCFC90, &qword_19A7BEAD0);
  a4 = sub_19A7AAF34();

  poolOut = 0;
  v69 = *MEMORY[0x1E695E480];
  v70 = CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], a4, a8, &poolOut);
  if (!v70 && poolOut)
  {
    pixelBufferOut = 0;
    v71 = poolOut;
    v72 = CVPixelBufferPoolCreatePixelBuffer(v69, v71, &pixelBufferOut);
    if (v72 || !pixelBufferOut)
    {
      sub_19A78215C();
      v81 = swift_allocError();
      *v85 = v72;
      *(v85 + 4) = 0;
      swift_willThrow();

LABEL_55:

      goto LABEL_56;
    }

    cacheOut = 0;
    a2 = v122;
    v73 = *&v122[OBJC_IVAR____SKIStickerEffectViewInternal_device];
    v74 = pixelBufferOut;
    v75 = CVMetalTextureCacheCreate(v69, 0, v73, 0, &cacheOut);
    v14 = DeviceRGB;
    if (v75 || !cacheOut)
    {
      sub_19A78215C();
      v86 = v74;
      v81 = swift_allocError();
      *v87 = v75;
      *(v87 + 4) = 0;
      swift_willThrow();

LABEL_54:

      goto LABEL_55;
    }

    textureOut = 0;
    v76 = cacheOut;
    v77 = CVMetalTextureCacheCreateTextureFromImage(v69, v76, v74, 0, MTLPixelFormatBGRA8Unorm, v120, v121, 0, &textureOut);
    if (v77)
    {
      v78 = 1;
    }

    else
    {
      v78 = textureOut == 0;
    }

    if (v78)
    {
      v79 = v77;
      sub_19A78215C();
      v80 = v74;
      v81 = swift_allocError();
      *v82 = v79;
      *(v82 + 4) = 0;
      swift_willThrow();
    }

    else
    {
      v88 = textureOut;
      v89 = CVMetalTextureGetTexture(v88);
      if (v89)
      {
        v90 = v89;
        v116 = v74;
        CVBufferSetAttachment(v74, *MEMORY[0x1E6965CE8], DeviceRGB, kCVAttachmentMode_ShouldPropagate);
        v91 = *&v122[OBJC_IVAR____SKIStickerEffectViewInternal_commandQueue];
        v117 = v76;
        v115 = v88;
        if (v91)
        {
          v92 = [v91 commandBuffer];
          if (v92)
          {
            v93 = v92;
            sub_19A785194(v119, v92, v90);
            v110 = swift_allocObject();
            v124 = a8;
            *(v110 + 16) = v125;
            *(v110 + 24) = v126;
            *(v110 + 32) = v74;
            *(v110 + 40) = v120;
            *(v110 + 48) = v121;
            *(v110 + 56) = DeviceRGB;
            *(v110 + 64) = 8194;
            *(v110 + 72) = v118;
            aBlock[4] = sub_19A7821B4;
            aBlock[5] = v110;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_19A781060;
            aBlock[3] = &block_descriptor_124;
            v111 = _Block_copy(aBlock);
            v112 = v74;

            v113 = DeviceRGB;
            v114 = v118;

            [v93 addCompletedHandler_];
            _Block_release(v111);
            [v93 commit];

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            return;
          }

          goto LABEL_52;
        }

        v13 = v71;
        if (qword_1EAFCB6D0 == -1)
        {
LABEL_49:
          v97 = sub_19A7A9384();
          __swift_project_value_buffer(v97, qword_1EAFCFAB0);
          v98 = a2;
          v99 = sub_19A7A9364();
          v100 = sub_19A7AB584();

          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            v123 = a8;
            v102 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            aBlock[0] = v103;
            *v101 = 138412546;
            *(v101 + 4) = v98;
            *v102 = v98;
            *(v101 + 12) = 2080;
            v129 = 0;
            v104 = v98;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFCA0, &qword_19A7C27D8);
            v105 = sub_19A7AB064();
            v107 = sub_19A62540C(v105, v106, aBlock);

            *(v101 + 14) = v107;
            v14 = DeviceRGB;
            _os_log_impl(&dword_19A5EE000, v99, v100, "Attempting to snapshot a sticker effect view, but the view or command queue is nil. View: %@, commandQueue: %s", v101, 0x16u);
            sub_19A5F2B54(v102, &unk_1EAFCD7D0, &qword_19A7BB5F0);
            v108 = v102;
            a8 = v123;
            MEMORY[0x19A907A30](v108, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v103);
            MEMORY[0x19A907A30](v103, -1, -1);
            MEMORY[0x19A907A30](v101, -1, -1);
          }

          v71 = v13;
LABEL_52:
          type metadata accessor for MTLCommandBufferError(0);
          v129 = 1;
          sub_19A783A74(MEMORY[0x1E69E7CC0]);
          sub_19A7821EC(&qword_1EAFCC4F0, type metadata accessor for MTLCommandBufferError, &unk_19A7B66E4);
          sub_19A7A8D14();
          v81 = aBlock[0];
          swift_willThrow();
          swift_unknownObjectRelease();

          goto LABEL_53;
        }

LABEL_68:
        swift_once();
        goto LABEL_49;
      }

      sub_19A78215C();
      v94 = v88;
      v95 = v74;
      v81 = swift_allocError();
      *v96 = 2;
      *(v96 + 4) = 1;
      swift_willThrow();
    }

LABEL_53:

    goto LABEL_54;
  }

  sub_19A78215C();
  v81 = swift_allocError();
  *v83 = v70;
  *(v83 + 4) = 0;
  swift_willThrow();

LABEL_56:

  v109 = v81;
  v125(0, v81);
}

void sub_19A780E08(void *a1, void (*a2)(void), uint64_t a3, __CVBuffer *a4, size_t a5, size_t a6, CGColorSpace *a7, uint32_t a8, void *a9)
{
  v15 = [a1 error];
  if (v15)
  {
    v16 = v15;
    v30 = v15;
    (a2)(0, v16);

    goto LABEL_3;
  }

  CVPixelBufferLockBaseAddress(a4, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a4);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
  v20 = __CGBitmapContextCreate(BaseAddress, a5, a6, BytesPerRow, a7, a8);
  if (v20)
  {
    v21 = v20;
    Image = CGBitmapContextCreateImage(v20);
    if (Image)
    {
      v23 = Image;
      CVPixelBufferUnlockBaseAddress(a4, 0);
      v24 = objc_opt_self();
      [a9 itk_scale];
      v30 = [v24 itk:v23 imageWithCGImage:objc_msgSend(a9 scale:sel_itk_imageOrientation) orientation:v25];
      a2();

LABEL_3:
      v17 = v30;

      goto LABEL_5;
    }

    sub_19A78215C();
    v26 = swift_allocError();
    *v28 = 3;
    *(v28 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_19A78215C();
    v26 = swift_allocError();
    *v27 = 1;
    *(v27 + 4) = 1;
    swift_willThrow();
  }

  v29 = v26;
  (a2)(0, v26);

  v17 = v26;

LABEL_5:
}

double sub_19A781060(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  swift_unknownObjectRelease();
  return result;
}

double sub_19A781198(char *a1, void (*a2)(void, void *), uint64_t a3, void *a4, void *a5)
{
  v10 = sub_19A7AA764();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_19A7AA7B4();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v16 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_image];
  if (v16)
  {
    v17 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_settlingOrientation];
    v18 = vnegq_f32(v17);
    v19 = vtrn2q_s32(v17, vtrn1q_s32(v17, v18));
    v20 = vrev64q_s32(v17);
    v20.i32[0] = v18.i32[1];
    v20.i32[3] = v18.i32[2];
    v45 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v17, *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_deviceOrientation], 3), v20, *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_deviceOrientation], 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v17, v18, 8uLL), *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_deviceOrientation], 1), vextq_s8(v19, v19, 8uLL), COERCE_FLOAT(*&a1[OBJC_IVAR____SKIStickerEffectViewInternal_deviceOrientation])));
    v47 = v10;
    v48 = v11;
    v21 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_effect];
    v22 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_metalLayer];
    v23 = v16;

    v24 = a4;
    v25 = a5;
    v26 = v21;
    [v22 contentsScale];
    v28 = v27;
    v29 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_unitScreenCenter];
    v30 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_curlPosition];
    v31 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_renderer];
    v32 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_instanceNumber];
    v46 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_renderQueue];
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *(v33 + 24) = a1;
    *(v33 + 32) = v23;
    *(v33 + 48) = v45;
    *(v33 + 64) = v16;
    *(v33 + 72) = v26;
    *(v33 + 80) = v28;
    *(v33 + 88) = v29;
    *(v33 + 96) = v30;
    *(v33 + 104) = v32;
    *(v33 + 112) = sub_19A7822F4;
    *(v33 + 120) = v15;
    aBlock[4] = sub_19A782440;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19A6815D4;
    aBlock[3] = &block_descriptor_140;
    v34 = _Block_copy(aBlock);
    swift_retain_n();
    v35 = v23;
    v45.i64[0] = v26;
    v36 = a1;

    v37 = v35;
    sub_19A7AA784();
    v52 = MEMORY[0x1E69E7CC0];
    sub_19A7821EC(&qword_1ED8B20A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0, &unk_19A7B9A50);
    sub_19A782234(&qword_1ED8B2090, &unk_1EAFCECD0, &unk_19A7B9A50);
    v38 = v50;
    v39 = v47;
    sub_19A7ABB54();
    MEMORY[0x19A905BE0](0, v14, v38, v34);
    _Block_release(v34);

    (*(v48 + 8))(v38, v39);
    (*(v49 + 8))(v14, v51);
  }

  else
  {
    sub_19A78215C();
    v41 = swift_allocError();
    *v42 = 3;
    *(v42 + 4) = 1;

    v43 = a4;
    v44 = a5;
    a2(0, v41);
  }

  return result;
}

void sub_19A7816AC()
{
  v1 = v0;
  v2 = sub_19A7AB6F4();
  MEMORY[0x1EEE9AC00](v2);
  v17 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19A7AB774();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A7AA7B4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_isTargetDebugStickerView) = 0;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_instanceLabel) = 0;
  v9 = OBJC_IVAR____SKIStickerEffectViewInternal_metalLayer;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69793F0]) init];
  v10 = OBJC_IVAR____SKIStickerEffectViewInternal_metalLayerContainer;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_needsRender) = 1;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_renderInProgress) = 0;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_currentDrawable) = 0;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_scrollViewToObserveCount) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_requiredScale) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_appliedScale) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_strokeScale) = 0x3FF0000000000000;
  v16 = OBJC_IVAR____SKIStickerEffectViewInternal_renderQueue;
  sub_19A5F5028(0, &qword_1ED8B2040, 0x1E69E9610);
  sub_19A7AA7A4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8098], v4);
  v18 = MEMORY[0x1E69E7CC0];
  sub_19A7821EC(&unk_1ED8B2050, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF150, &unk_19A7C1DB0);
  sub_19A782234(&unk_1ED8B2070, &unk_1EAFCF150, &unk_19A7C1DB0);
  sub_19A7ABB54();
  *(v0 + v16) = sub_19A7AB7B4();
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_renderer) = 0;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_displayLink) = 0;
  v11 = qword_1EAFCFAC8;
  v12 = qword_1EAFCFAC8 + 1;
  if (__OFADD__(qword_1EAFCFAC8, 1))
  {
    __break(1u);
  }

  qword_1EAFCFAC8 = v12;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_instanceNumber) = v11;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_displayLinkActive) = 0;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_motionActive) = 0;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_deviceOrientation) = xmmword_19A7BC150;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingDuration1) = 0x3FF3333333333333;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingDuration2) = 0x3FF999999999999ALL;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingStartAngle) = xmmword_19A7C2770;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingEndAngle) = xmmword_19A7BC150;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingStartTime) = 0;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_settlingOrientation) = xmmword_19A7BC150;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_screenCenterDuration) = 0x3FD999999999999ALL;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_unitScreenCenter) = 0x3F0000003F000000;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_boundsIncludeStroke) = 1;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_reRenderOnMotion) = 1;
  *(v0 + OBJC_IVAR____SKIStickerEffectViewInternal_curlPosition) = 1065353216;
  v13 = OBJC_IVAR____SKIStickerEffectViewInternal_effect;
  if (qword_1EAFCB328 != -1)
  {
    swift_once();
  }

  *(v1 + v13) = qword_1EAFCB330;
  v14 = (v1 + OBJC_IVAR____SKIStickerEffectViewInternal_displayHandler);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_image) = 0;
  *(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_isPaused) = 0;
  sub_19A7ABE34();
  __break(1u);
}

double sub_19A781C50(char *a1, void (**a2)(void, void, void))
{
  v4 = sub_19A7AA764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A7AA7B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v13 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_image];
  if (v13)
  {
    v14 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_settlingOrientation];
    v15 = vnegq_f32(v14);
    v16 = vtrn2q_s32(v14, vtrn1q_s32(v14, v15));
    v17 = vrev64q_s32(v14);
    v17.i32[0] = v15.i32[1];
    v17.i32[3] = v15.i32[2];
    v40 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v14, *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_deviceOrientation], 3), v17, *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_deviceOrientation], 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v14, v15, 8uLL), *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_deviceOrientation], 1), vextq_s8(v16, v16, 8uLL), COERCE_FLOAT(*&a1[OBJC_IVAR____SKIStickerEffectViewInternal_deviceOrientation])));
    v42 = v4;
    v18 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_effect];
    v44 = v5;
    v19 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_metalLayer];
    v20 = v13;
    v45 = v8;
    v21 = v20;
    _Block_copy(a2);
    v22 = v18;
    v43 = v9;
    v23 = v22;
    [v19 contentsScale];
    v25 = v24;
    v26 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_unitScreenCenter];
    v27 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_curlPosition];
    v28 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_renderer];
    v29 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_instanceNumber];
    v41 = *&a1[OBJC_IVAR____SKIStickerEffectViewInternal_renderQueue];
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = a1;
    *(v30 + 32) = v21;
    *(v30 + 48) = v40;
    *(v30 + 64) = v13;
    *(v30 + 72) = v23;
    *(v30 + 80) = v25;
    *(v30 + 88) = v26;
    *(v30 + 96) = v27;
    *(v30 + 104) = v29;
    *(v30 + 112) = sub_19A612E9C;
    *(v30 + 120) = v12;
    aBlock[4] = sub_19A7821B0;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19A6815D4;
    aBlock[3] = &block_descriptor_118;
    v31 = _Block_copy(aBlock);
    swift_retain_n();
    v32 = v21;
    v40.i64[0] = v23;
    v33 = a1;

    v34 = v32;
    sub_19A7AA784();
    v46 = MEMORY[0x1E69E7CC0];
    sub_19A7821EC(&qword_1ED8B20A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0, &unk_19A7B9A50);
    sub_19A782234(&qword_1ED8B2090, &unk_1EAFCECD0, &unk_19A7B9A50);
    v35 = v42;
    sub_19A7ABB54();
    MEMORY[0x19A905BE0](0, v11, v7, v31);
    _Block_release(v31);

    (*(v44 + 8))(v7, v35);
    (*(v43 + 8))(v11, v45);
  }

  else
  {
    sub_19A78215C();
    v37 = swift_allocError();
    *v38 = 3;
    *(v38 + 4) = 1;
    _Block_copy(a2);
    v39 = sub_19A7A8D24();
    (a2)[2](a2, 0, v39);
  }

  return result;
}

unint64_t sub_19A78215C()
{
  result = qword_1EAFCFC70;
  if (!qword_1EAFCFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCFC70);
  }

  return result;
}

uint64_t sub_19A7821EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19A782234(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A7822A0()
{
  result = qword_1EAFCFCA8;
  if (!qword_1EAFCFCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCFCA8);
  }

  return result;
}

uint64_t objectdestroy_114Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 15);
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StickerEffectView.SnapshotError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StickerEffectView.SnapshotError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_19A7823D8(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19A7823F4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t STKStickerEffectType.string.getter(uint64_t a1)
{
  v1 = 1701736302;
  v2 = 0x7966667570;
  v3 = 0x6563736564697269;
  v4 = 1702259052;
  if (a1 != 5)
  {
    v4 = 1701736302;
  }

  if (a1 != 4)
  {
    v3 = v4;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 == 2)
  {
    v1 = 0x63696D6F63;
  }

  if (a1 == 1)
  {
    v1 = 0x656B6F727473;
  }

  if (a1 <= 2)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

id STKStickerEffectType.effect.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        if (qword_1EAFCB5B0 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EAFCE2D0;
        goto LABEL_26;
      case 4:
        if (qword_1EAFCB5B8 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EAFCE2D8;
        goto LABEL_26;
      case 5:
        if (qword_1EAFCB5C0 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EAFCE2E0;
        goto LABEL_26;
    }

LABEL_14:
    if (qword_1EAFCB328 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EAFCB330;
    goto LABEL_26;
  }

  if (!a1)
  {
    goto LABEL_14;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      if (qword_1EAFCB5A8 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EAFCE2C8;
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  if (qword_1EAFCB5A0 != -1)
  {
    swift_once();
  }

  v1 = &qword_1EAFCE2C0;
LABEL_26:
  v2 = *v1;

  return v2;
}

unint64_t sub_19A7826E0()
{
  result = qword_1EAFCFCB0;
  if (!qword_1EAFCFCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCFCB0);
  }

  return result;
}

uint64_t sub_19A782734(uint64_t a1)
{
  v1 = sub_19A7AAEB4();
  if (v1 <= 1)
  {
    if (v1 == 1)
    {
      if (qword_1EAFCB5A0 != -1)
      {
        swift_once();
      }

      v2 = &qword_1EAFCE2C0;
      return *v2;
    }

    goto LABEL_12;
  }

  switch(v1)
  {
    case 2:
      if (qword_1EAFCB5A8 != -1)
      {
        swift_once();
      }

      v2 = &qword_1EAFCE2C8;
      break;
    case 3:
      if (qword_1EAFCB5B0 != -1)
      {
        swift_once();
      }

      v2 = &qword_1EAFCE2D0;
      break;
    case 4:
      if (qword_1EAFCB5B8 != -1)
      {
        swift_once();
      }

      v2 = &qword_1EAFCE2D8;
      break;
    default:
LABEL_12:
      if (qword_1EAFCB328 != -1)
      {
        swift_once();
      }

      v2 = &qword_1EAFCB330;
      return *v2;
  }

  return *v2;
}

Swift::Void __swiftcall loadStickerEffectRenderer()()
{
  v0 = MTLCreateSystemDefaultDevice();
  if (v0)
  {
    v1 = v0;
    type metadata accessor for StickerEffectRenderer();
    swift_allocObject();
    sub_19A782970(v1, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19A782970(void *a1, char a2)
{
  v4 = v3;
  v5 = v2;
  v41[2] = *MEMORY[0x1E69E9840];
  if (qword_1EAFCB328 != -1)
  {
    swift_once();
  }

  v8 = qword_1EAFCB330;
  *(v5 + 48) = xmmword_19A7BC150;
  *(v5 + 64) = 0;
  *(v5 + 72) = v8;
  *(v5 + 80) = 1065353216;
  *(v5 + 88) = 0x3F0000003F000000;
  *(v5 + 96) = 1065353216;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 16) = a1;
  type metadata accessor for StickerEffectRenderer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = v8;
  swift_unknownObjectRetain();
  v12 = [v10 bundleForClass_];
  v41[0] = 0;
  v13 = [a1 newDefaultLibraryWithBundle:v12 error:v41];
  v14 = v41[0];
  if (!v13)
  {
    v30 = v41[0];
    sub_19A7A8D34();

    swift_willThrow();
    swift_unknownObjectRelease();

    v27 = 0;
    goto LABEL_15;
  }

  *(v5 + 24) = v13;
  if ((a2 & 1) != 0 && (v41[1] = &unk_1F0E36C68, (v15 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v16 = v15;
    swift_unknownObjectRetain();
    v17 = v14;
    v18 = sub_19A7AAFE4();
    v19 = sub_19A7AAFE4();
    v20 = [v12 pathForResource:v18 ofType:v19];

    if (v20)
    {
      v41[0] = 0;
      v21 = [v16 newPipelineLibraryWithFilePath:v20 error:v41];

      v22 = v41[0];
      if (v21)
      {
        swift_unknownObjectRelease();
        v23 = v21;
      }

      else
      {
        v35 = v22;
        v36 = sub_19A7A8D34();

        swift_willThrow();
        swift_unknownObjectRelease();

        v23 = 0;
        v4 = 0;
      }

      *(v5 + 32) = v23;
      swift_unknownObjectRetain();
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v24 = v14;
  }

  v23 = 0;
  *(v5 + 32) = 0;
LABEL_11:
  v25 = *(v5 + 24);
  type metadata accessor for StickerShaderAlphaToLumaGenerator();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v26 = sub_19A6194DC(a1, v25, v23);
  v27 = v4 == 0;
  if (!v4)
  {
    *(v5 + 200) = v26;
    v28 = *(v5 + 24);
    v29 = *(v5 + 32);
    type metadata accessor for StickerShaderStrokeGenerator();
    swift_allocObject();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    *(v5 + 208) = sub_19A619C84(a1, v28, v29);
    v33 = *(v5 + 24);
    v34 = *(v5 + 32);
    type metadata accessor for StickerShaderNormalGenerator();
    swift_allocObject();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    *(v5 + 216) = sub_19A618A0C(a1, v33, v34);
    type metadata accessor for StickerShaderShadowGenerator();
    v37 = swift_allocObject();
    *(v37 + 24) = 1036831949;
    *(v37 + 32) = 0;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 10;
    *(v37 + 16) = a1;
    *(v5 + 224) = v37;
    v38 = *(v5 + 32);
    type metadata accessor for StickerComicRenderer();
    swift_allocObject();
    swift_unknownObjectRetain();
    v39 = swift_unknownObjectRetain();
    v40 = sub_19A6FCFE4(v39, v38);

    *(v5 + 232) = v40;
    return v5;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_15:
  swift_unknownObjectRelease();
  v31 = *(v5 + 64);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v27)
  {
  }

  swift_deallocPartialClassInstance();
  return v5;
}

void sub_19A782F04(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 64);
  if (v5)
  {
    v9 = *(v4 + 72);
    v10 = v5;
    v12 = sub_19A783B84(v10, a2, a3);
    v13 = v11;
    v14 = *(v4 + 152);
    if (!v14)
    {
      v57 = sub_19A784964(v10, v12, v11, *(v4 + 16));
      if (v84 || (*(v4 + 152) = v57, swift_unknownObjectRelease(), *(v4 + 168) = 0, swift_unknownObjectRelease(), *(v4 + 176) = 0, swift_unknownObjectRelease(), *(v4 + 192) = 0, swift_unknownObjectRelease(), *(v4 + 184) = 0, swift_unknownObjectRelease(), (v14 = *(v4 + 152)) == 0))
      {

LABEL_52:
        return;
      }
    }

    v80 = a1;
    v81 = v10;
    if (*(v4 + 160) || (v15 = OBJC_IVAR___STKStickerEffect_isComicEnabled, swift_beginAccess(), (v9[v15] & 1) == 0))
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v16 = objc_opt_self();
      swift_unknownObjectRetain();
      v77 = v12;
      v10 = [v16 texture2DDescriptorWithPixelFormat:80 width:v12 height:v13 mipmapped:0];
      [v10 setStorageMode_];
      [v10 setUsage_];
      v17 = [*(v4 + 16) newTextureWithDescriptor_];
      *(v4 + 160) = v17;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (!v17)
      {

LABEL_51:
        swift_unknownObjectRelease();
        goto LABEL_52;
      }

      v78 = v10;
      v18 = *(v4 + 232);
      v19 = *&v9[OBJC_IVAR___STKStickerEffect_comicParameters + 16];
      v82[0] = *&v9[OBJC_IVAR___STKStickerEffect_comicParameters];
      v82[1] = v19;
      v83 = *&v9[OBJC_IVAR___STKStickerEffect_comicParameters + 32];
      if (!sub_19A6FEC80(v82))
      {
        sub_19A7850EC();
        swift_allocError();
        *v74 = 0;
        swift_willThrow();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return;
      }

      if ([v14 pixelFormat] != 80 || objc_msgSend(v17, sel_pixelFormat) != 80)
      {
        sub_19A7850EC();
        swift_allocError();
        *v75 = 1;
        swift_willThrow();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return;
      }

      if (v82[0])
      {
        v20 = 0;
      }

      else
      {
        v20 = sub_19A6FE4A8(0xD000000000000016, 0x800000019A7CE780);
      }

      sub_19A6FED1C(v14, v82);
      sub_19A6FD588(v82, v14, v17, v20, v80);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_beginAccess();
      v76 = MEMORY[0x1E69E7CC0];
      *(v18 + 32) = MEMORY[0x1E69E7CC0];

      swift_beginAccess();
      *(v18 + 40) = v76;

      v12 = v77;
    }

    v21 = *(v4 + 72);
    v22 = *(v4 + 80);
    v23 = OBJC_IVAR___STKStickerEffect_isStroked;
    swift_beginAccess();
    if (a3 <= a2)
    {
      v24 = a2;
    }

    else
    {
      v24 = a3;
    }

    v25 = v24;
    v26 = 0.0;
    v27 = 1.0;
    v28 = fminf(fmaxf(((v24 / v22) + -30.0) / 90.0, 0.0), 1.0);
    v29 = (v28 * v28) * ((v28 * -2.0) + 3.0);
    if (*(v21 + v23) == 1)
    {
      v30 = *(v21 + OBJC_IVAR___STKStickerEffect_smallStrokeRadiusMultiplier);
      if (!*(v21 + OBJC_IVAR___STKStickerEffect_forceSmallStrokeRadiusMultiplier))
      {
        v30 = v30 + (v29 * (1.0 - v30));
      }

      v26 = ((v30 * *(v21 + OBJC_IVAR___STKStickerEffect_strokeRadius)) + (v30 * *(v21 + OBJC_IVAR___STKStickerEffect_strokeBlurRadius))) + ((v30 * *(v21 + OBJC_IVAR___STKStickerEffect_strokeRadius)) + (v30 * *(v21 + OBJC_IVAR___STKStickerEffect_strokeBlurRadius)));
    }

    v31 = *(v21 + OBJC_IVAR___STKStickerEffect_smallShadowSizeMultiplier) + (v29 * (1.0 - *(v21 + OBJC_IVAR___STKStickerEffect_smallShadowSizeMultiplier)));
    v32 = *(v21 + OBJC_IVAR___STKStickerEffect_shadowRadius) * v31;
    v33 = *(v21 + OBJC_IVAR___STKStickerEffect_shadowOffset);
    v34 = *(v21 + OBJC_IVAR___STKStickerEffect_shadowParallax);
    v35 = 1.0 - v26;
    v36 = fabsf(v31 * *v33.i32) + fabsf(v31 * *v34.i32);
    v37 = vaddv_f32(vabs_f32(vmul_n_f32(vzip2_s32(v33, v34), v31)));
    if (v36 > v37)
    {
      v37 = v36;
    }

    v38 = 1.0 - ((v32 + v37) + (v32 + v37));
    v39 = (v13 / v12) / (a3 / a2);
    v40 = 1.0 / v39;
    if (v39 <= 1.0)
    {
      v40 = 1.0;
      v27 = (v13 / v12) / (a3 / a2);
    }

    v41 = v35 * v27;
    *&v42 = v38 * (v35 * v40);
    *(&v42 + 1) = v38 * v41;
    v79 = v42;
    if (!*(v4 + 168))
    {
      v43 = *(v4 + 200);
      *(v43 + 56) = v42;
      *(v43 + 48) = v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v44 = *(v4 + 200);
      v46 = v44[8];
      v45 = v44[9];
      v44[8] = a2;
      v44[9] = a3;
      if (v46 != a2 || v45 != a3)
      {
        v44[10] = 0;
        swift_unknownObjectRelease();
      }

      sub_19A619920(v80);
      v48 = v47;

      *(v4 + 168) = v48;
      swift_unknownObjectRelease();
      *(v4 + 176) = 0;
      swift_unknownObjectRelease();
    }

    v49 = OBJC_IVAR___STKStickerEffect_isStroked;
    swift_beginAccess();
    v50 = v9[v49];
    v10 = v81;
    if (v50 == 1 && !*(v4 + 176))
    {
      v58 = fminf(fmaxf(((v25 / *(v4 + 80)) + -30.0) / 90.0, 0.0), 1.0);
      v59 = *&v9[OBJC_IVAR___STKStickerEffect_smallStrokeRadiusMultiplier] + (((v58 * v58) * ((v58 * -2.0) + 3.0)) * (1.0 - *&v9[OBJC_IVAR___STKStickerEffect_smallStrokeRadiusMultiplier]));
      if (v9[OBJC_IVAR___STKStickerEffect_forceSmallStrokeRadiusMultiplier])
      {
        v59 = *&v9[OBJC_IVAR___STKStickerEffect_smallStrokeRadiusMultiplier];
      }

      v60 = *&v9[OBJC_IVAR___STKStickerEffect_strokeRadius] * v59;
      v61 = *&v9[OBJC_IVAR___STKStickerEffect_strokeBlurRadius] * v59;
      v62 = *(v4 + 208);
      *(v62 + 64) = v79;
      *(v62 + 48) = v60;
      *(v62 + 52) = v61;
      *(v62 + 56) = *(v4 + 168);

      swift_unknownObjectRetain();

      swift_unknownObjectRelease();
      v63 = *(v4 + 208);
      v65 = v63[9];
      v64 = v63[10];
      v63[9] = a2;
      v63[10] = a3;
      if (v65 != a2 || v64 != a3)
      {
        v63[12] = 0;
        swift_unknownObjectRelease();
      }

      sub_19A61A154(v80);
      v67 = v66;

      *(v4 + 176) = v67;
      swift_unknownObjectRelease();
      *(v4 + 192) = 0;
      swift_unknownObjectRelease();
      *(v4 + 184) = 0;
      swift_unknownObjectRelease();
      if (*(v4 + 192))
      {
        goto LABEL_48;
      }
    }

    else if (*(v4 + 192))
    {
LABEL_48:
      if (v9[OBJC_IVAR___STKStickerEffect_isPuffy] == 1 && !*(v4 + 184))
      {
        v70 = *(v4 + 216);
        *(v70 + 48) = *&v9[OBJC_IVAR___STKStickerEffect_normalsRadius];
        v71 = *(v70 + 56);
        *(v70 + 56) = *(v4 + 168);
        swift_unknownObjectRetain_n();

        sub_19A6189AC(v71);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_19A618E64(v80);
        v73 = v72;

        swift_unknownObjectRelease();
        *(v4 + 184) = v73;
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_51;
    }

    v51 = *(v4 + 224);
    v52 = *&v9[OBJC_IVAR___STKStickerEffect_shadowRadius];
    v53 = *(v51 + 24);
    *(v51 + 24) = v52;
    if (v52 != v53)
    {
      v54 = *(v51 + 48);
      *(v51 + 48) = 0;
    }

    v55 = *(v4 + 224);
    if (*(v4 + 176))
    {
      v56 = *(v4 + 176);
    }

    else
    {
      v56 = *(v4 + 168);
      swift_unknownObjectRetain();
    }

    v68 = *(v55 + 32);
    *(v55 + 32) = v56;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_19A61A880(v68);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v69 = sub_19A61A8A4(v80);

    *(v4 + 192) = v69;
    swift_unknownObjectRelease();
    *(v4 + 184) = 0;
    swift_unknownObjectRelease();
    goto LABEL_48;
  }
}

uint64_t sub_19A783840()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 64);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_19A783904()
{
  sub_19A783840();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy52_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_19A783954(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A78399C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19A7839FC(uint64_t a1, uint64_t a2)
{
  sub_19A7AC184();
  sub_19A7AB0B4();
  v4 = sub_19A7AC1B4();

  return sub_19A695A80(a1, a2, v4);
}

unint64_t sub_19A783A74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDAD8, &qword_19A7BBA50);
    v3 = sub_19A7ABE94();
    v4 = a1 + 32;

    while (1)
    {
      sub_19A7861B0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_19A7839FC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_19A625DC4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

id sub_19A783B84(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 size];
  v7 = v6;
  result = [a1 itk_scale];
  v10 = v7 * v9;
  if (COERCE__INT64(fabs(v7 * v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [a1 size];
  v12 = v11;
  result = [a1 itk_scale];
  v14 = v12 * v13;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = (v14 / v10) / (a3 / a2);
  v16 = 1.0;
  v17 = 1.0 / v15;
  if (v15 <= 1.0)
  {
    v17 = 1.0;
    v16 = v15;
  }

  v18 = ceilf(v17 * a2);
  if ((LODWORD(v18) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_22;
  }

  if (v18 <= -9.2234e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v18 >= 9.2234e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = ceilf(v16 * a3);
  if ((LODWORD(v19) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v19 <= -9.2234e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v19 < 9.2234e18)
  {
    return v18;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_19A783D5C()
{
  v1 = v0[9];
  v2 = OBJC_IVAR___STKStickerEffect_isCurlEnabled;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v40 = v0;
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = v3;
      *&v41 = ((v6 + v6) / 200.0) + -1.0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCFCD0, &qword_19A7C2A10);
      inited = swift_initStackObject();
      *(inited + 32) = __PAIR64__(-1.0, v41);
      v8 = (inited + 32);
      *(inited + 16) = xmmword_19A7B6C20;
      *(inited + 40) = __PAIR64__(1.0, v41);
      v9 = *(v5 + 2);
      v10 = v9 + 2;
      if (__OFADD__(v9, 2))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v12 = *(v5 + 3) >> 1, v12 < v10))
      {
        if (v9 <= v10)
        {
          v13 = v9 + 2;
        }

        else
        {
          v13 = v9;
        }

        v5 = sub_19A76C850(isUniquelyReferenced_nonNull_native, v13, 1, v5);
        v12 = *(v5 + 3) >> 1;
      }

      v14 = *(v5 + 2);
      if (v12 - v14 < 2)
      {
        goto LABEL_35;
      }

      *&v5[8 * v14 + 32] = *v8;

      v15 = *(v5 + 2);
      _VF = __OFADD__(v15, 2);
      v17 = v15 + 2;
      if (_VF)
      {
        goto LABEL_36;
      }

      *(v5 + 2) = v17;
      v18 = swift_initStackObject();
      *(v18 + 32) = __PAIR64__(1.0, v6 / 200.0);
      v19 = (v18 + 32);
      *(v18 + 16) = xmmword_19A7B6C20;
      *(v18 + 40) = COERCE_UNSIGNED_INT(v6 / 200.0);
      v20 = *(v4 + 2);
      v21 = v20 + 2;
      if (__OFADD__(v20, 2))
      {
        goto LABEL_37;
      }

      v22 = swift_isUniquelyReferenced_nonNull_native();
      if (!v22 || (v23 = *(v4 + 3) >> 1, v23 < v21))
      {
        if (v20 <= v21)
        {
          v24 = v20 + 2;
        }

        else
        {
          v24 = v20;
        }

        v4 = sub_19A76C850(v22, v24, 1, v4);
        v23 = *(v4 + 3) >> 1;
      }

      v25 = *(v4 + 2);
      if (v23 - v25 < 2)
      {
        goto LABEL_38;
      }

      *&v4[8 * v25 + 32] = *v19;

      v26 = *(v4 + 2);
      _VF = __OFADD__(v26, 2);
      v27 = v26 + 2;
      if (_VF)
      {
        goto LABEL_39;
      }

      *(v4 + 2) = v27;
      if (++v3 == 201)
      {
        v28 = *(v5 + 2);
        v40[13] = v28;
        if (!(v28 >> 60))
        {
          v29 = v40[2];
          v30 = [v29 newBufferWithBytes:v5 + 32 length:8 * v28 options:0];

          if (!v30)
          {

            v39 = 0;
            goto LABEL_32;
          }

          v40[14] = v30;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v31 = *(v4 + 2);
          if (!(v31 >> 60))
          {
            v32 = [v29 newBufferWithBytes:v4 + 32 length:8 * v31 options:0];

            if (v32)
            {
              swift_unknownObjectRelease();
              v40[15] = v32;
            }

            else
            {
              type metadata accessor for MTLCommandBufferError(0);
              v43 = 1;
              sub_19A783A74(MEMORY[0x1E69E7CC0]);
              sub_19A786168(&qword_1EAFCC4F0, type metadata accessor for MTLCommandBufferError, &unk_19A7B66E4);
              sub_19A7A8D14();
              swift_willThrow();
            }

            swift_unknownObjectRelease();
            return;
          }

LABEL_41:
          __break(1u);
          return;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
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

  v0[13] = 4;
  v33 = v0[2];
  __asm
  {
    FMOV            V0.2S, #-1.0
    FMOV            V8.2S, #1.0
  }

  *v44 = _D0;
  *&v44[1] = -_D8;
  *&v44[2] = -_D0;
  *&v44[3] = _D8;
  v39 = [v33 newBufferWithBytes:v44 length:32 options:0];
  if (v39 && (v0[14] = v39, swift_unknownObjectRelease(), v42[0] = 0x3F80000000000000, *&v42[1] = _D8, v42[2] = 0, v42[3] = 1065353216, (v39 = [v33 newBufferWithBytes:v42 length:32 options:0]) != 0))
  {
    v0[15] = v39;
    swift_unknownObjectRelease();
  }

  else
  {
LABEL_32:
    type metadata accessor for MTLCommandBufferError(v39);
    v43 = 1;
    sub_19A783A74(MEMORY[0x1E69E7CC0]);
    sub_19A786168(&qword_1EAFCC4F0, type metadata accessor for MTLCommandBufferError, &unk_19A7B66E4);
    sub_19A7A8D14();
    swift_willThrow();
  }
}

void sub_19A784250(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = OBJC_IVAR___STKStickerEffect_isStroked;
  swift_beginAccess();
  v43 = *(a3 + v7);
  v42 = *(a3 + OBJC_IVAR___STKStickerEffect_iridescence);
  v41 = *(a3 + OBJC_IVAR___STKStickerEffect_isPuffy);
  v40 = *(a3 + OBJC_IVAR___STKStickerEffect_isBrushed);
  v39 = *(a3 + OBJC_IVAR___STKStickerEffect_applyIridescenceBeforeStroke);
  v38 = *(a3 + OBJC_IVAR___STKStickerEffect_applyBrushBeforeStroke);
  v8 = OBJC_IVAR___STKStickerEffect_isCurlEnabled;
  swift_beginAccess();
  v37 = *(a3 + v8);
  v9 = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  [v9 setConstantValue:&v43 type:53 atIndex:0];
  [v9 setConstantValue:&v42 type:29 atIndex:1];
  [v9 setConstantValue:&v41 type:53 atIndex:2];
  [v9 setConstantValue:&v40 type:53 atIndex:3];
  [v9 setConstantValue:&v39 type:53 atIndex:4];
  [v9 setConstantValue:&v38 type:53 atIndex:5];
  [v9 setConstantValue:&v37 type:53 atIndex:6];
  v10 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  v11 = sub_19A7AAFE4();
  v36 = 0;
  v12 = [a2 newFunctionWithName:v11 constantValues:v9 error:&v36];

  if (!v12 || (v13 = v36, [v10 setVertexFunction_], swift_unknownObjectRelease(), v14 = sub_19A7AAFE4(), v36 = 0, v15 = objc_msgSend(a2, sel_newFunctionWithName_constantValues_error_, v14, v9, &v36), v14, !v15))
  {
LABEL_13:
    v34 = v36;
    sub_19A7A8D34();

    swift_willThrow();
    return;
  }

  v16 = v36;
  [v10 setFragmentFunction_];
  swift_unknownObjectRelease();
  v17 = [v10 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (!v18)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v18 setPixelFormat_];

  v19 = [v10 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v20 setBlendingEnabled_];

  v21 = [v10 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript_];

  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v22 setRgbBlendOperation_];

  v23 = [v10 colorAttachments];
  v24 = [v23 objectAtIndexedSubscript_];

  if (!v24)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v24 setSourceRGBBlendFactor_];

  v25 = [v10 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript_];

  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v26 setDestinationRGBBlendFactor_];

  v27 = [v10 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript_];

  if (!v28)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v28 setAlphaBlendOperation_];

  v29 = [v10 colorAttachments];
  v30 = [v29 objectAtIndexedSubscript_];

  if (!v30)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v30 setSourceAlphaBlendFactor_];

  v31 = [v10 colorAttachments];
  v32 = [v31 objectAtIndexedSubscript_];

  if (v32)
  {
    [v32 setDestinationAlphaBlendFactor_];

    [v10 setDepthAttachmentPixelFormat_];
    [v10 setPipelineLibrary_];
    v36 = 0;
    if ([a1 newRenderPipelineStateWithDescriptor:v10 error:&v36])
    {
      v33 = v36;

      return;
    }

    goto LABEL_13;
  }

LABEL_21:
  __break(1u);
}

id sub_19A78489C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() texture2DDescriptorWithPixelFormat:252 width:a2 height:a3 mipmapped:0];
  if ([a1 supportsFamily_])
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  [v4 setStorageMode_];
  [v4 setUsage_];
  v6 = [a1 newTextureWithDescriptor_];

  return v6;
}

int64_t sub_19A784964(void *a1, int64_t a2, int64_t a3, void *a4)
{
  cacheOut[1] = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  cacheOut[0] = 0;
  v9 = *MEMORY[0x1E695E480];
  v10 = CVMetalTextureCacheCreate(*MEMORY[0x1E695E480], 0, a4, 0, cacheOut);
  v11 = cacheOut[0];
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = cacheOut[0] == 0;
  }

  if (v12)
  {
    v13 = v10;
    sub_19A785140();
    swift_allocError();
    *v14 = v13;
    *(v14 + 4) = 0;
    swift_willThrow();

LABEL_29:
    return DeviceRGB;
  }

  v62 = a1;
  space = DeviceRGB;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEAE8, &qword_19A7C27D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7BE980;
  v16 = a3;
  v17 = *MEMORY[0x1E6966208];
  *(inited + 32) = *MEMORY[0x1E6966208];
  v18 = MEMORY[0x1E69E6530];
  v64 = a2;
  *(inited + 40) = a2;
  DeviceRGB = *MEMORY[0x1E69660B8];
  *(inited + 64) = v18;
  *(inited + 72) = DeviceRGB;
  v63 = v16;
  *(inited + 80) = v16;
  v19 = *MEMORY[0x1E6966130];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v20 = MEMORY[0x1E69E7668];
  *(inited + 120) = 1111970369;
  v21 = *MEMORY[0x1E6966030];
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  v22 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  v23 = *MEMORY[0x1E6966028];
  *(inited + 184) = v22;
  *(inited + 192) = v23;
  *(inited + 200) = 1;
  v66 = v9;
  v24 = *MEMORY[0x1E6966100];
  *(inited + 224) = v22;
  *(inited + 232) = v24;
  *(inited + 240) = 1;
  v25 = *MEMORY[0x1E69660D8];
  *(inited + 264) = v22;
  *(inited + 272) = v25;
  v67 = v11;
  v26 = v17;
  v27 = DeviceRGB;
  v28 = v19;
  v29 = v21;
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v33 = sub_19A69D6CC(MEMORY[0x1E69E7CC0]);
  *(inited + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCFC80, &unk_19A7C29F0);
  *(inited + 280) = v33;
  sub_19A69D6CC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD980, &unk_19A7BEAC0);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_19A786168(&qword_1EAFCBDE0, type metadata accessor for CFString, &unk_19A7B6820);
  v34 = sub_19A7AAF34();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCEAF0, &unk_19A7C2A00);
  v35 = swift_initStackObject();
  v36 = MEMORY[0x1E6966158];
  *(v35 + 16) = xmmword_19A7B6C30;
  v37 = *v36;
  *(v35 + 32) = v37;
  *(v35 + 40) = 1;
  v38 = v37;
  sub_19A69D7F4(v35);
  swift_setDeallocating();
  sub_19A6FF138(v35 + 32);
  v39 = sub_19A7AAF34();

  poolOut = 0;
  v40 = CVPixelBufferPoolCreate(v66, v39, v34, &poolOut);
  v41 = v40;
  if (v40 || !poolOut)
  {
    sub_19A785140();
    swift_allocError();
    *v55 = v41;
    *(v55 + 4) = 0;
    swift_willThrow();

LABEL_28:
    goto LABEL_29;
  }

  pixelBufferOut = 0;
  v42 = poolOut;
  v43 = CVPixelBufferPoolCreatePixelBuffer(v66, v42, &pixelBufferOut);
  if (v43 || !pixelBufferOut)
  {
    sub_19A785140();
    swift_allocError();
    *v56 = v43;
    *(v56 + 4) = 0;
    swift_willThrow();

LABEL_26:
LABEL_27:

    goto LABEL_28;
  }

  v44 = pixelBufferOut;
  CVPixelBufferLockBaseAddress(v44, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(v44);
  if (!BaseAddress)
  {
    sub_19A785140();
    swift_allocError();
    *v57 = 0;
    *(v57 + 4) = 1;
    swift_willThrow();

LABEL_25:
    goto LABEL_26;
  }

  v46 = BaseAddress;
  BytesPerRow = CVPixelBufferGetBytesPerRow(v44);
  DeviceRGB = v64;
  v48 = __CGBitmapContextCreate_1(v46, v64, v63, BytesPerRow, space);
  if (!v48)
  {
    sub_19A785140();
    swift_allocError();
    *v58 = 1;
    *(v58 + 4) = 1;
    swift_willThrow();

    goto LABEL_25;
  }

  v49 = v63;
  v50 = v48;
  CGContextTranslateCTM(v48, 0.0, v63);
  CGContextScaleCTM(v50, 1.0, -1.0);
  v51 = v64;
  v65 = v50;
  UIGraphicsPushContext(v50);
  [v62 drawInRect_];
  UIGraphicsPopContext();
  CVPixelBufferUnlockBaseAddress(v44, 0);
  textureOut = 0;
  if (v64 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v51 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v49 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  if (v49 >= 9.22337204e18)
  {
    goto LABEL_37;
  }

  DeviceRGB = CVMetalTextureCacheCreateTextureFromImage(v66, v67, v44, 0, MTLPixelFormatBGRA8Unorm, v51, v49, 0, &textureOut);
  if (DeviceRGB || !textureOut)
  {
    sub_19A785140();
    swift_allocError();
    *v60 = DeviceRGB;
    *(v60 + 4) = 0;
    swift_willThrow();

LABEL_33:
    goto LABEL_27;
  }

  v52 = v34;
  v53 = textureOut;
  v54 = CVMetalTextureGetTexture(v53);
  if (!v54)
  {
    sub_19A785140();
    swift_allocError();
    *v61 = 2;
    *(v61 + 4) = 1;
    swift_willThrow();

    goto LABEL_33;
  }

  DeviceRGB = v54;

  return DeviceRGB;
}

unint64_t sub_19A7850EC()
{
  result = qword_1EAFCFCB8;
  if (!qword_1EAFCFCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCFCB8);
  }

  return result;
}

unint64_t sub_19A785140()
{
  result = qword_1EAFCFCC0;
  if (!qword_1EAFCFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCFCC0);
  }

  return result;
}

void sub_19A785194(__n128 *a1, void *a2, id a3)
{
  v5 = v4;
  v134 = *MEMORY[0x1E69E9840];
  v123 = [a3 width];
  v122 = a3;
  v120 = [a3 height];
  v9 = *(v3 + 64);
  v10 = *(v3 + 72);
  v125 = a1;
  v11 = a1[1].n128_u64[1];
  if (v11 == v10)
  {
    v24 = v9;
    v25 = v10;
  }

  else
  {
    v12 = *(v3 + 80);
    *(v3 + 128) = 0;
    v13 = v9;
    v14 = v10;
    swift_unknownObjectRelease();
    *(v3 + 136) = 0;
    swift_unknownObjectRelease();
    v15 = OBJC_IVAR___STKStickerEffect_isCurlEnabled;
    swift_beginAccess();
    LODWORD(v15) = v11[v15];
    v16 = OBJC_IVAR___STKStickerEffect_isCurlEnabled;
    swift_beginAccess();
    if (v15 != v14[v16])
    {
      *(v3 + 112) = 0;
      swift_unknownObjectRelease();
      *(v3 + 120) = 0;
      swift_unknownObjectRelease();
    }

    v17 = OBJC_IVAR___STKStickerEffect_isStroked;
    swift_beginAccess();
    LODWORD(v17) = v11[v17];
    v18 = OBJC_IVAR___STKStickerEffect_isStroked;
    swift_beginAccess();
    if (v17 != v14[v18] || *&v11[OBJC_IVAR___STKStickerEffect_strokeRadius] != *&v14[OBJC_IVAR___STKStickerEffect_strokeRadius] || v125[2].n128_f32[0] != v12)
    {
      *(v3 + 168) = 0;
      swift_unknownObjectRelease();
      *(v3 + 176) = 0;
      swift_unknownObjectRelease();
      *(v3 + 192) = 0;
      swift_unknownObjectRelease();
      *(v3 + 184) = 0;
      swift_unknownObjectRelease();
    }

    v19 = OBJC_IVAR___STKStickerEffect_isComicEnabled;
    swift_beginAccess();
    LODWORD(v19) = v11[v19];
    v20 = OBJC_IVAR___STKStickerEffect_isComicEnabled;
    swift_beginAccess();
    if (v19 != v14[v20] || v11[OBJC_IVAR___STKStickerEffect_comicParameters] != v14[OBJC_IVAR___STKStickerEffect_comicParameters])
    {
      *(v3 + 160) = 0;
      swift_unknownObjectRelease();
    }

    if (*&v11[OBJC_IVAR___STKStickerEffect_normalsRadius] != *&v14[OBJC_IVAR___STKStickerEffect_normalsRadius])
    {
      *(v3 + 184) = 0;
      swift_unknownObjectRelease();
    }

    if (*&v11[OBJC_IVAR___STKStickerEffect_shadowRadius] != *&v14[OBJC_IVAR___STKStickerEffect_shadowRadius] || (v21 = *&v14[OBJC_IVAR___STKStickerEffect_shadowParallax], v22 = vceq_f32(*&v11[OBJC_IVAR___STKStickerEffect_shadowOffset], v21), (v22.i8[0] & 1) == 0) || (v22.i8[4] & 1) == 0 || (v23 = vceq_f32(*&v11[OBJC_IVAR___STKStickerEffect_shadowParallax], v21), (v23.i8[0] & 1) == 0) || (v23.i8[4] & 1) == 0 || v125[2].n128_f32[0] != v12)
    {
      *(v3 + 168) = 0;
      swift_unknownObjectRelease();
      *(v3 + 176) = 0;
      swift_unknownObjectRelease();
      *(v3 + 192) = 0;
      swift_unknownObjectRelease();
    }
  }

  v26 = v125[1].n128_u64[0];
  if (v26)
  {
    v27 = a2;
    v28 = v10;
    v29 = v26;
    v30 = sub_19A783B84(v29, v123, v120);
    v118 = v31;
    v32 = *(v3 + 152);
    if (v32 && v30 == [v32 width] && *(v3 + 152))
    {
      v116 = v9;
      v33 = [swift_unknownObjectRetain() height];
      swift_unknownObjectRelease();

      v5 = v4;
      v34 = v118 == v33;
      v9 = v116;
      v10 = v28;
      a2 = v27;
      if (v34)
      {
        goto LABEL_30;
      }
    }

    else
    {

      v10 = v28;
      a2 = v27;
    }

    *(v3 + 152) = 0;
    swift_unknownObjectRelease();
    *(v3 + 160) = 0;
    swift_unknownObjectRelease();
  }

LABEL_30:
  v35 = [v122 width];
  v36 = *(v3 + 192);
  if (!v36 || v35 != [v36 width] || (v37 = objc_msgSend(v122, sel_height), (v38 = *(v3 + 192)) == 0) || v37 != objc_msgSend(v38, sel_height))
  {
    *(v3 + 168) = 0;
    swift_unknownObjectRelease();
    *(v3 + 176) = 0;
    swift_unknownObjectRelease();
    *(v3 + 184) = 0;
    swift_unknownObjectRelease();
    *(v3 + 192) = 0;
    swift_unknownObjectRelease();
  }

  if (!v26)
  {
    if (!v9)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v26 != v9)
  {
LABEL_37:
    *(v3 + 152) = 0;
    swift_unknownObjectRelease();
    *(v3 + 160) = 0;
    swift_unknownObjectRelease();
    *(v3 + 168) = 0;
    swift_unknownObjectRelease();
    *(v3 + 176) = 0;
    swift_unknownObjectRelease();
    *(v3 + 184) = 0;
    swift_unknownObjectRelease();
    *(v3 + 192) = 0;
    swift_unknownObjectRelease();
  }

LABEL_38:
  v39 = *(v3 + 64);
  v40 = *(v3 + 72);
  v41 = v125[1];
  *(v3 + 48) = *v125;
  *(v3 + 64) = v41;
  *(v3 + 80) = v125[2];
  *(v3 + 96) = v125[3].n128_u32[0];
  v42 = v26;
  v43 = v11;

  if (*(v3 + 112) && *(v3 + 120))
  {
    v44 = v123;
  }

  else
  {
    sub_19A783D5C();
    v44 = v123;
    if (v5)
    {
      goto LABEL_48;
    }
  }

  v45 = *(v3 + 128);
  if (v45)
  {
    goto LABEL_43;
  }

  sub_19A784250(*(v3 + 16), *(v3 + 24), v43, *(v3 + 32));
  if (v5)
  {
LABEL_48:

    return;
  }

  *(v3 + 128) = v47;
  swift_unknownObjectRelease();
  v45 = *(v3 + 128);
  if (!v45)
  {

LABEL_101:
    v107 = 1;
LABEL_102:
    LOBYTE(v126[0]) = v107;
    return;
  }

LABEL_43:
  v46 = *(v3 + 136);
  if (v46)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v48 = *(v3 + 16);
    v49 = objc_allocWithZone(MEMORY[0x1E6974050]);
    swift_unknownObjectRetain();
    v50 = v10;
    v51 = [v49 init];
    [v51 setDepthCompareFunction_];
    [v51 setDepthWriteEnabled_];
    v52 = [v48 newDepthStencilStateWithDescriptor_];

    v10 = v50;
    v44 = v123;
    *(v3 + 136) = v52;
    swift_unknownObjectRelease();
    v46 = *(v3 + 136);
    if (!v46)
    {

      goto LABEL_100;
    }
  }

  v124 = v43;
  v53 = a2;
  v54 = *(v3 + 144);
  if (v54)
  {
    v55 = v45;
    swift_unknownObjectRetain();
    if (v44 == [v54 width])
    {
      v56 = *(v3 + 144);
      if (v56)
      {
        if (v120 == [v56 height])
        {
          v57 = *(v3 + 144);
          if (v57)
          {
            goto LABEL_55;
          }

          goto LABEL_59;
        }
      }
    }
  }

  else
  {
    v55 = v45;
    swift_unknownObjectRetain();
  }

  *(v3 + 144) = sub_19A78489C(*(v3 + 16), v44, v120);
  swift_unknownObjectRelease();
  v57 = *(v3 + 144);
  if (!v57)
  {
LABEL_59:

    swift_unknownObjectRelease();
LABEL_100:
    swift_unknownObjectRelease();
    goto LABEL_101;
  }

LABEL_55:
  swift_unknownObjectRetain();
  sub_19A782F04(v53, v44, v120);
  if (v5)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  v119 = v57;
  if (*(v3 + 160))
  {
    v114 = v55;
    v115 = v10;
    v58 = *(v3 + 160);
  }

  else
  {
    if (!*(v3 + 152))
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_100;
    }

    v114 = v55;
    v115 = v10;
    v58 = *(v3 + 152);
    swift_unknownObjectRetain();
  }

  v59 = v53;
  if (*(v3 + 176))
  {
    v112 = v46;
    v60 = *(v3 + 176);
    v61 = *(v3 + 184);
    if (v61)
    {
LABEL_69:
      v62 = v61;
      goto LABEL_74;
    }
  }

  else
  {
    v60 = *(v3 + 168);
    if (!v60)
    {
      swift_unknownObjectRetain();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_100;
    }

    v112 = v46;
    swift_unknownObjectRetain();
    v61 = *(v3 + 184);
    if (v61)
    {
      goto LABEL_69;
    }
  }

  if (!*(v3 + 168))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_100;
  }

  v62 = swift_unknownObjectRetain();
LABEL_74:
  v113 = v62;
  if (!*(v3 + 192))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_100;
  }

  v111 = v60;
  v117 = v9;
  v63 = *(v3 + 192);
  swift_unknownObjectRetain();
  v110 = v63;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v64 = [v58 width];
  v65 = [v58 height];
  v66 = v125[2].n128_f32[0];
  v67 = OBJC_IVAR___STKStickerEffect_isStroked;
  v68 = swift_beginAccess();
  if (v120 <= v44)
  {
    v69 = v44;
  }

  else
  {
    v69 = v120;
  }

  v70 = 0.0;
  v71 = fminf(fmaxf(((v69 / v66) + -30.0) / 90.0, 0.0), 1.0);
  v72 = (v71 * v71) * ((v71 * -2.0) + 3.0);
  if (v124[v67] == 1)
  {
    v73 = *&v124[OBJC_IVAR___STKStickerEffect_smallStrokeRadiusMultiplier];
    if (!v124[OBJC_IVAR___STKStickerEffect_forceSmallStrokeRadiusMultiplier])
    {
      v73 = v73 + (v72 * (1.0 - v73));
    }

    v70 = ((v73 * *&v124[OBJC_IVAR___STKStickerEffect_strokeRadius]) + (v73 * *&v124[OBJC_IVAR___STKStickerEffect_strokeBlurRadius])) + ((v73 * *&v124[OBJC_IVAR___STKStickerEffect_strokeRadius]) + (v73 * *&v124[OBJC_IVAR___STKStickerEffect_strokeBlurRadius]));
  }

  v74 = *&v124[OBJC_IVAR___STKStickerEffect_smallShadowSizeMultiplier] + (v72 * (1.0 - *&v124[OBJC_IVAR___STKStickerEffect_smallShadowSizeMultiplier]));
  v75 = *&v124[OBJC_IVAR___STKStickerEffect_shadowRadius] * v74;
  v108 = vmul_n_f32(*&v124[OBJC_IVAR___STKStickerEffect_shadowOffset], v74);
  v109 = vmul_n_f32(*&v124[OBJC_IVAR___STKStickerEffect_shadowParallax], v74);
  v76 = 1.0 - v70;
  v77 = fabsf(*v108.i32) + fabsf(*v109.i32);
  v78 = vaddv_f32(vabs_f32(vzip2_s32(v108, v109)));
  if (v77 <= v78)
  {
    v77 = v78;
  }

  v79 = 1.0 - ((v75 + v77) + (v75 + v77));
  v80 = v120;
  v81 = (v65 / v64) / (v120 / v44);
  v82 = 1.0 / v81;
  if (v81 > 1.0)
  {
    v83 = 1.0;
  }

  else
  {
    v82 = 1.0;
    v83 = (v65 / v64) / (v120 / v44);
  }

  *&v84 = v79 * (v76 * v82);
  *(&v84 + 1) = v79 * (v76 * v83);
  v121 = v84;
  v85 = *&v124[OBJC_IVAR___STKStickerEffect_shadowAlpha] * (*&v124[OBJC_IVAR___STKStickerEffect_smallShadowAlphaMultiplier] + (v72 * (1.0 - *&v124[OBJC_IVAR___STKStickerEffect_smallShadowAlphaMultiplier])));
  *&v86 = MEMORY[0x19A9059F0](v68, *v125);
  v87 = v125[2].n128_u64[1];
  v88 = v125[3].n128_u32[0];
  v126[0] = v86;
  v126[1] = v89;
  v126[2] = v90;
  v126[3] = v91;
  v127 = v87;
  v128 = v88;
  v129 = v121;
  v130 = v85;
  v131 = v108;
  v132 = v109;
  v133 = 1.0 / v80;
  v92 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
  v93 = [v92 colorAttachments];
  v94 = [v93 objectAtIndexedSubscript_];

  if (!v94)
  {
    __break(1u);
    goto LABEL_104;
  }

  [v94 setLoadAction_];

  v95 = [v92 colorAttachments];
  v96 = [v95 objectAtIndexedSubscript_];

  if (!v96)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  [v96 setClearColor_];

  v97 = [v92 colorAttachments];
  v98 = [v97 objectAtIndexedSubscript_];

  if (!v98)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  [v98 setTexture_];

  v99 = [v92 depthAttachment];
  if (!v99)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v100 = v99;
  [v99 setLoadAction_];

  v101 = [v92 depthAttachment];
  if (!v101)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v102 = v101;
  [v101 setClearDepth_];

  v103 = [v92 depthAttachment];
  if (v103)
  {
    v104 = v103;
    [v103 setTexture_];

    v105 = [v59 renderCommandEncoderWithDescriptor_];
    if (v105)
    {
      v106 = v105;
      [v105 setRenderPipelineState_];
      [v106 setDepthStencilState_];
      [v106 setVertexBuffer:*(v3 + 112) offset:0 atIndex:0];
      [v106 setVertexBuffer:*(v3 + 120) offset:0 atIndex:1];
      [v106 setVertexBytes:v126 length:128 atIndex:2];
      [v106 setFragmentBytes:v126 length:128 atIndex:0];
      [v106 setFragmentTexture:v58 atIndex:0];
      [v106 setFragmentTexture:v111 atIndex:1];
      [v106 setFragmentTexture:v113 atIndex:2];
      [v106 setFragmentTexture:v110 atIndex:3];
      [v106 drawPrimitives:4 vertexStart:0 vertexCount:*(v3 + 104)];
      [v106 endEncoding];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v107 = 0;
    goto LABEL_102;
  }

LABEL_108:
  __break(1u);
}

uint64_t sub_19A786168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19A7861B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFCE0, &unk_19A7BEE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_19A786230()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 24))
    {
      return;
    }

LABEL_5:
    [*(v0 + 16) userInteractionStarted];
    *(v0 + 24) = 1;
    return;
  }

  v1 = [objc_allocWithZone(MEMORY[0x1E69DCF40]) init];
  v2 = *(v0 + 16);
  *(v0 + 16) = v1;

  if ((*(v0 + 24) & 1) == 0)
  {
    goto LABEL_5;
  }
}

uint64_t sub_19A7862A0()
{

  return swift_deallocClassInstance();
}

void sub_19A7862FC(char a1)
{
  v2 = *(v1 + 48);
  if (v2 > 0xFD)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 40);
  if ((v2 & 0x80) == 0)
  {
    if ((v2 & 1) == 0)
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v3 < *(*(v1 + 32) + 16))
      {
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_6:

    return;
  }

  v5 = sub_19A7AAFE4();
  v6 = v5;
  v7 = *(v3 + 16);
  if (!v7)
  {
    goto LABEL_26;
  }

  v24 = v5;
  v26 = MEMORY[0x1E69E7CC0];
  sub_19A65ACD0(0, v7, 0);
  v25 = *MEMORY[0x1E699BAC0];
  v8 = (v3 + 40);
  do
  {
    if ((*v8 & 1) != 0 || (v9 = *(v8 - 1), v9 > 4))
    {
      v10 = *MEMORY[0x1E699BAB8];
      if ((a1 & 1) == 0)
      {
LABEL_12:
        v11 = v10;
        goto LABEL_22;
      }
    }

    else
    {
      v10 = **(&unk_1E751A970 + v9);
      if ((a1 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v12 = sub_19A7AB014();
    v14 = v13;
    if (v12 == sub_19A7AB014() && v14 == v15)
    {
      v18 = v10;

LABEL_21:
      v11 = v25;

      goto LABEL_22;
    }

    v17 = sub_19A7AC064();
    v11 = v10;

    if (v17)
    {
      goto LABEL_21;
    }

LABEL_22:
    v20 = *(v26 + 16);
    v19 = *(v26 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_19A65ACD0((v19 > 1), v20 + 1, 1);
    }

    *(v26 + 16) = v20 + 1;
    *(v26 + 8 * v20 + 32) = v11;
    v8 += 16;
    --v7;
  }

  while (v7);
  v6 = v24;
LABEL_26:
  v21 = objc_opt_self();
  type metadata accessor for EMFSkinToneSpecifierType(0);
  v22 = sub_19A7AB234();

  v23 = [v21 _multiPersonStringForString_skinToneVariantSpecifier_];

  if (v23)
  {
    sub_19A7AB014();

    return;
  }

LABEL_30:
  __break(1u);
}

void sub_19A786590(uint64_t a1@<X8>)
{
  v2 = sub_19A7AAED4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - v7;
  sub_19A7AAC04();
  if (!v9)
  {
    goto LABEL_6;
  }

  sub_19A7AAF14();
  sub_19A7AAEE4();
  (*(v3 + 16))(v5, v8, v2);
  if ((*(v3 + 88))(v5, v2) != *MEMORY[0x1E69D4750])
  {
    v14 = *(v3 + 8);
    v14(v8, v2);

    v14(v5, v2);
LABEL_6:
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  (*(v3 + 96))(v5, v2);

  v10 = sub_19A7AAFE4();

  v11 = [objc_opt_self() emojiTokenWithString:v10 localeData:0];

  if (v11)
  {

    sub_19A5F59D8(v11, 0x636974536D6F7266, 0xEB0000000072656BLL, 1, v15);

    (*(v3 + 8))(v8, v2);
    v12 = v16;
    v13 = v15[1];
    *a1 = v15[0];
    *(a1 + 16) = v13;
    *(a1 + 32) = v15[2];
    *(a1 + 48) = v12;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19A78681C()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1ED8B21E0);
  __swift_project_value_buffer(v0, qword_1ED8B21E0);
  return sub_19A7A9374();
}

uint64_t Emoji.id.getter()
{
  v1 = *v0;

  return v1;
}

void Emoji.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_19A786918(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_19A72AB7C(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_19A78697C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (!sub_19A72AA08(*a1, *a2))
  {
    return 0;
  }

  return sub_19A72AB08(v2, v3);
}

BOOL sub_19A7869D8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v6 < 0)
  {
    return v9 < 0 && sub_19A72AA08(v4, v7) && (sub_19A72AB08(v5, v8) & 1) != 0;
  }

  if (v9 < 0 || (sub_19A72AB7C(v4, v7) & 1) == 0)
  {
    return 0;
  }

  if ((v6 & 1) == 0)
  {
    return (v9 & 1) == 0 && v5 == v8;
  }

  return (v9 & 1) != 0;
}

uint64_t sub_19A786A78(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_19A7AC064() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_19A7AC064() & 1) == 0)
  {
    return 0;
  }

  return sub_19A72AC0C(v3, v7);
}

uint64_t sub_19A786B50()
{
  if (qword_1ED8B2260 != -1)
  {
    swift_once();
  }

  qword_1ED8B4248 = sub_19A5F4A54();

  v1 = *(v0 + 8);

  return v1();
}

char *sub_19A786BF0()
{
  result = sub_19A5F4A54();
  qword_1ED8B4248 = result;
  return result;
}

uint64_t sub_19A786C18(uint64_t a1)
{
  v1 = sub_19A7AB014();
  v3 = v2;
  if (v1 == sub_19A7AB014() && v3 == v4)
  {

    return 0;
  }

  v6 = sub_19A7AC064();

  if (v6)
  {
    return 0;
  }

  v7 = sub_19A7AB014();
  v9 = v8;
  if (v7 == sub_19A7AB014() && v9 == v10)
  {

    return 1;
  }

  v12 = sub_19A7AC064();

  if (v12)
  {
    return 1;
  }

  v13 = sub_19A7AB014();
  v15 = v14;
  if (v13 == sub_19A7AB014() && v15 == v16)
  {

    return 2;
  }

  v18 = sub_19A7AC064();

  if (v18)
  {
    return 2;
  }

  v19 = sub_19A7AB014();
  v21 = v20;
  if (v19 == sub_19A7AB014() && v21 == v22)
  {

    return 3;
  }

  v23 = sub_19A7AC064();

  if (v23)
  {
    return 3;
  }

  v24 = sub_19A7AB014();
  v26 = v25;
  if (v24 == sub_19A7AB014() && v26 == v27)
  {

    return 4;
  }

  else
  {
    v28 = sub_19A7AC064();

    if (v28)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}

void sub_19A786ED0()
{
  v0 = sub_19A7A8FB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A8FA4();
  sub_19A7A8F84();
  (*(v1 + 8))(v3, v0);
  v4 = sub_19A7AAFE4();

  v5 = CEMCreateEmojiLocaleData();

  qword_1EAFCFD50 = v5;
}

uint64_t sub_19A786FD4(_BYTE *a1, id a2)
{
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECA0, &unk_19A7B7020);
  result = swift_dynamicCast();
  *a1 = result ^ 1;
  return result;
}

uint64_t sub_19A787084(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_19A7ABBE4();
  }

  return sub_19A7ABD04();
}

uint64_t sub_19A7870E8(uint64_t a1, uint64_t a2)
{
  v4 = 0x6B636F6C63;
  if (sub_19A7AB014() == a1 && v5 == a2)
  {
    goto LABEL_40;
  }

  v7 = sub_19A7AC064();

  if (v7)
  {
    return v4;
  }

  if (sub_19A7AB014() == a1 && v8 == a2)
  {

    return 0xD000000000000013;
  }

  v10 = sub_19A7AC064();

  if (v10)
  {
    return 0xD000000000000013;
  }

  v4 = 0x6F642E696A6F6D65;
  if (sub_19A7AB014() == a1 && v11 == a2)
  {
    goto LABEL_40;
  }

  v13 = sub_19A7AC064();

  if ((v13 & 1) == 0)
  {
    v4 = 0x70612E696A6F6D65;
    if (sub_19A7AB014() == a1 && v14 == a2)
    {
      goto LABEL_40;
    }

    v16 = sub_19A7AC064();

    if ((v16 & 1) == 0)
    {
      if (sub_19A7AB014() == a1 && v17 == a2)
      {

        return 0xD000000000000011;
      }

      v18 = sub_19A7AC064();

      if (v18)
      {
        return 0xD000000000000011;
      }

      if (sub_19A7AB014() == a1 && v19 == a2)
      {

        return 0xD000000000000010;
      }

      v20 = sub_19A7AC064();

      if (v20)
      {
        return 0xD000000000000010;
      }

      v4 = 1734437990;
      if (sub_19A7AB014() == a1 && v21 == a2)
      {
        goto LABEL_40;
      }

      v22 = sub_19A7AC064();

      if (v22)
      {
        return v4;
      }

      v4 = 0x6C7562746867696CLL;
      if (sub_19A7AB014() == a1 && v23 == a2)
      {
LABEL_40:

        return v4;
      }

      v24 = sub_19A7AC064();

      if ((v24 & 1) == 0)
      {
        if (sub_19A7AB014() == a1 && v25 == a2)
        {
        }

        else
        {
          v26 = sub_19A7AC064();

          if ((v26 & 1) == 0)
          {
            return 0;
          }
        }

        return 0x65682E696A6F6D65;
      }
    }
  }

  return v4;
}

uint64_t sub_19A7874F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 < 0)
  {
    if (a6 < 0 && sub_19A72AA08(a1, a4) && (sub_19A72AB08(a2, a5) & 1) != 0)
    {
      return 1;
    }
  }

  else if (a6 & 0x80) == 0 && (sub_19A72AB7C(a1, a4))
  {
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s10StickerKit5EmojiV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v13 = a1[4];
  v4 = a1[5];
  v5 = *(a1 + 48);
  v14 = *(a1 + 49);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 49);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_19A7AC064() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_19A7AC064() & 1) == 0)
  {
    return 0;
  }

  if (v5 <= 0xFD)
  {
    if (v10 > 0xFD || (sub_19A7874F0(v13, v4, v5, v8, v9, v10) & 1) == 0)
    {
      return 0;
    }

    return v14 ^ v11 ^ 1u;
  }

  if (v10 > 0xFD)
  {
    return v14 ^ v11 ^ 1u;
  }

  return 0;
}

unint64_t sub_19A7876CC()
{
  result = qword_1EAFCFD58;
  if (!qword_1EAFCFD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCFD58);
  }

  return result;
}

uint64_t sub_19A787724(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_19A78776C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19A7877BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_19A78780C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_19A787898()
{
  result = qword_1EAFCFD60;
  if (!qword_1EAFCFD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCFD60);
  }

  return result;
}

uint64_t sub_19A787918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_19A787954()
{
  result = qword_1EAFCFD68;
  if (!qword_1EAFCFD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCFD68);
  }

  return result;
}

unint64_t sub_19A7879A8()
{
  result = qword_1EAFCFD70;
  if (!qword_1EAFCFD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCFD70);
  }

  return result;
}

uint64_t sub_19A787A28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_19A787A70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *StickerEditViewController.__allocating_init(image:animatedData:effect:)(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_19A78B2C4(a1, a2, a3, a4);

  sub_19A612F00(a2, a3);
  return v10;
}

void sub_19A787B4C()
{
  v1 = sub_19A7885C0();
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isPaused);
  v3 = OBJC_IVAR___STKStickerView_isPaused;
  swift_beginAccess();
  v1[v3] = v2;
  v4 = *&v1[OBJC_IVAR___STKStickerView_effectView];
  if (v4)
  {
    v5 = v4[OBJC_IVAR____SKIStickerEffectViewInternal_isPaused];
    v4[OBJC_IVAR____SKIStickerEffectViewInternal_isPaused] = v2;
    if (v2 != v5)
    {
      v6 = v4;
      sub_19A77EC24();
    }
  }
}

void sub_19A787BF0(uint64_t a1, __n128 a2)
{
  if (*(v2 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isLive) == 1)
  {
    v7 = sub_19A788CF0(a2);
    [v7 setAlpha_];
  }

  else
  {
    v3 = *(v2 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController__effect);
    if (v3)
    {
      v4 = OBJC_IVAR___STKStickerEffect_type;
      swift_beginAccess();
      a2.n128_u64[0] = 0.5;
      if (*(v3 + v4))
      {
        v5 = 0.5;
      }

      else
      {
        v5 = 1.0;
      }
    }

    else
    {
      v5 = 0.5;
    }

    v6 = sub_19A788CF0(a2);
    [v6 setAlpha_];
  }
}

uint64_t sub_19A787CE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController__animatedData);
  sub_19A69E0F4(v1, *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController__animatedData + 8));
  return v1;
}

void *sub_19A787D24()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController__image);
  v2 = v1;
  return v1;
}

void *sub_19A787D54()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController__effect);
  v2 = v1;
  return v1;
}

char *StickerEditViewController.init(image:animatedData:effect:)(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = sub_19A78B2C4(a1, a2, a3, a4);

  sub_19A612F00(a2, a3);
  return v8;
}

void sub_19A787DE8(uint64_t a1, unint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController__animatedData);
  v4 = *(v2 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController__animatedData);
  v5 = *(v2 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController__animatedData + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_19A612F68(a1, a2);
  sub_19A612F00(v4, v5);

  sub_19A787E40();
}

void sub_19A787E40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v49 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController__effect);
  if (v10)
  {
    v11 = OBJC_IVAR___STKStickerEffect_type;
    swift_beginAccess();
    if (*&v10[v11] == 5)
    {
      v12 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController__animatedData + 8);
      if (v12 >> 60 == 15)
      {
        return;
      }

      v55 = v3;
      v13 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController__animatedData);
      v14 = sub_19A7A8F64();
      v15 = *(v14 - 8);
      v50 = v14;
      v51 = v15;
      (*(v15 + 56))(v9, 1, 1, v14);
      v52 = objc_allocWithZone(type metadata accessor for AnimatedImage(0));
      v16 = objc_allocWithZone(STKImageData);
      sub_19A69E0F4(v13, v12);
      sub_19A69E0F4(v13, v12);
      sub_19A69E0F4(v13, v12);
      v54 = v10;
      v17 = sub_19A7A8E14();
      v18 = [v16 initWithData_];

      v53 = v13;
      sub_19A612F00(v13, v12);
      v19 = [v18 thumbnailsFitToSize:128 maxCount:{1024.0, 1024.0}];
      v20 = sub_19A7AB254();

      sub_19A623FA4(v20);

      v49 = v18;
      v21 = [v18 durationsWithMaxCount_];
      v22 = sub_19A7AB254();

      sub_19A6240A8(v22);

      sub_19A5F5028(0, &unk_1EAFCC1A0, 0x1E69DCAB8);
      v23 = sub_19A7AB234();

      sub_19A5F5028(0, &qword_1ED8B1FE0, 0x1E696AD98);
      v24 = sub_19A7AB234();
      v25 = v50;

      sub_19A6240BC(v9, v6);
      v26 = v51;
      v27 = 0;
      if ((*(v51 + 48))(v6, 1, v25) != 1)
      {
        v27 = sub_19A7A8F24();
        (*(v26 + 8))(v6, v25);
      }

      v28 = [v52 initWithImages:v23 durations:v24 identifier:v27];

      v29 = v53;
      sub_19A612F00(v53, v12);
      sub_19A62412C(v9);
      v30 = sub_19A7885C0();
      v31 = sub_19A7AB394();
      v32 = v55;
      (*(*(v31 - 8) + 56))(v55, 1, 1, v31);
      sub_19A7AB354();
      v33 = v54;
      v34 = v30;
      v35 = v28;
      v36 = sub_19A7AB344();
      v37 = swift_allocObject();
      v38 = MEMORY[0x1E69E85E0];
      v37[2] = v36;
      v37[3] = v38;
      v37[4] = v34;
      v37[5] = v28;
      v37[6] = 0;
      v37[7] = v10;
      sub_19A6816F0(0, 0, v32, &unk_19A7C2F58, v37);

      sub_19A612F00(v29, v12);
    }

    else
    {
      v39 = v10;
      v40 = sub_19A7885C0();
      v41 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController__image);
      v42 = sub_19A7AB394();
      (*(*(v42 - 8) + 56))(v3, 1, 1, v42);
      sub_19A7AB354();
      v43 = v41;
      v44 = v39;
      v45 = v43;
      v33 = v40;
      v46 = sub_19A7AB344();
      v47 = swift_allocObject();
      v48 = MEMORY[0x1E69E85E0];
      v47[2] = v46;
      v47[3] = v48;
      v47[4] = v33;
      v47[5] = v41;
      v47[6] = 0;
      v47[7] = v10;
      sub_19A6816F0(0, 0, v3, &unk_19A7C2F50, v47);
    }
  }
}

double sub_19A7884B4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_19A788520(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10StickerKit25StickerEditViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_19A64BD6C;
}

_BYTE *sub_19A7885E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  type metadata accessor for StickerView(0);
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR___STKStickerView_boundsIncludeStroke;
  swift_beginAccess();
  v5[v6] = 0;
  v7 = *&v5[OBJC_IVAR___STKStickerView_effectView];
  if (v7)
  {
    *(v7 + OBJC_IVAR____SKIStickerEffectViewInternal_boundsIncludeStroke) = 0;
  }

  v8 = *(a1 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController__effect);
  v9 = sub_19A7AB394();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_19A7AB354();
  v10 = v8;
  v11 = v5;
  v12 = sub_19A7AB344();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  v13[5] = 0;
  v13[6] = 0;
  v13[7] = v8;
  sub_19A6816F0(0, 0, v4, &unk_19A7C2F48, v13);

  v15 = v11;
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setContentMode_];

  v16 = v15;
  [v16 setIsAccessibilityElement_];
  [v16 setAccessibilityTraits_];
  sub_19A7AB0A4();
  v17 = sub_19A7AAFE4();

  [v16 setAccessibilityLabel_];

  return v16;
}

char *sub_19A788850()
{
  v1 = OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___effectChooser;
  v2 = *&v0[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___effectChooser];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___effectChooser];
  }

  else
  {
    type metadata accessor for StickerEffectChooser();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v10[3] = type metadata accessor for StickerEditViewController();
    v10[4] = &off_1F0DCEB10;
    v10[0] = v0;
    v5 = OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_delegate;
    swift_beginAccess();
    v6 = v0;
    sub_19A78B9E4(v10, v4 + v5);
    swift_endAccess();
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_19A788954(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void *sub_19A7889B8(uint64_t a1)
{
  v22 = a1;
  v1 = sub_19A7AB974();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A7AB9E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19A7ABA34();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_19A7AB9F4();
  (*(v6 + 104))(v8, *MEMORY[0x1E69DC560], v5);
  sub_19A7AB964();
  v16 = objc_opt_self();
  v17 = [v16 tertiarySystemFillColor];
  sub_19A7AB9B4();
  v18 = [v16 labelColor];
  sub_19A7AB9C4();
  sub_19A7AB0A4();
  sub_19A7ABA24();
  (*(v2 + 104))(v4, *MEMORY[0x1E69DC508], v1);
  sub_19A7AB984();
  sub_19A5F5028(0, &qword_1EAFCD108, 0x1E69DC738);
  (*(v10 + 16))(v12, v15, v9);
  v19 = sub_19A7ABA44();
  [v19 addTarget:v22 action:sel_handleDoneButton forControlEvents:64];
  [v19 setAutomaticallyUpdatesConfiguration_];
  [v19 setRole_];
  (*(v10 + 8))(v15, v9);
  return v19;
}

_BYTE *sub_19A788CF0(__n128 a1)
{
  v2 = OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___liveButton;
  v3 = *(v1 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___liveButton);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___liveButton);
  }

  else
  {
    v5 = [objc_allocWithZone(type metadata accessor for LiveButton()) init];
    v6 = *(v1 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isLive);
    v7 = OBJC_IVAR____TtC10StickerKit10LiveButton_isLive;
    swift_beginAccess();
    v5[v7] = v6;
    [v5 setNeedsUpdateConfiguration];
    [v5 addTarget:v1 action:sel_handleLiveButton forControlEvents:64];
    v8 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

id sub_19A788E00(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = sub_19A7885C0();
    v8 = [v7 *a2];

    v9 = [v8 constraintEqualToConstant_];
    v10 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

void sub_19A788EAC(uint64_t a1)
{
  v98.receiver = v1;
  v98.super_class = type metadata accessor for StickerEditViewController();
  objc_msgSendSuper2(&v98, sel_loadView);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_27;
  }

  v3 = v2;
  v4 = sub_19A7885C0();
  [v3 addSubview_];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v6 = v5;
  v7 = sub_19A788850();
  [v6 addSubview_];

  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v9 = [v1 view];
  if (!v9)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v10 = v9;
  [v9 addLayoutGuide_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100, &unk_19A7B6CC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_19A7C2E90;
  v12 = [v8 leftAnchor];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = v13;
  v15 = [v13 safeAreaLayoutGuide];

  v16 = [v15 leftAnchor];
  v17 = [v12 constraintEqualToSystemSpacingAfterAnchor:v16 multiplier:1.0];

  *(v11 + 32) = v17;
  v18 = [v1 view];
  if (!v18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v19 = v18;
  v20 = [v18 safeAreaLayoutGuide];

  v21 = [v20 rightAnchor];
  v22 = [v8 rightAnchor];
  v23 = [v21 constraintEqualToSystemSpacingAfterAnchor:v22 multiplier:1.0];

  *(v11 + 40) = v23;
  v24 = [v8 topAnchor];
  v25 = [v1 view];
  if (!v25)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v26 = v25;
  v27 = [v25 safeAreaLayoutGuide];

  v28 = [v27 topAnchor];
  v29 = [v24 constraintEqualToSystemSpacingBelowAnchor:v28 multiplier:1.0];

  *(v11 + 48) = v29;
  v30 = OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___effectChooser;
  v31 = [*&v1[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___effectChooser] topAnchor];
  v32 = [v8 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v11 + 56) = v33;
  v34 = OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___previewView;
  v35 = [*&v1[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___previewView] centerXAnchor];
  v36 = [v8 centerXAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v11 + 64) = v37;
  v38 = [*&v1[v34] centerYAnchor];
  v39 = [v8 centerYAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v11 + 72) = v40;
  *(v11 + 80) = sub_19A788DD8();
  *(v11 + 88) = sub_19A788DEC();
  v41 = [*&v1[v30] centerXAnchor];
  v42 = [v1 view];
  if (!v42)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v43 = v42;
  v44 = [v42 safeAreaLayoutGuide];

  v45 = [v44 centerXAnchor];
  v46 = [v41 constraintEqualToAnchor_];

  *(v11 + 96) = v46;
  v47 = [v1 view];
  if (!v47)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v48 = v47;
  v49 = objc_opt_self();
  v50 = [v48 safeAreaLayoutGuide];

  v51 = [v50 bottomAnchor];
  v52 = [*&v1[v30] bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:8.0];

  *(v11 + 104) = v53;
  sub_19A5F5028(0, &qword_1ED8B2030, 0x1E696ACD8);
  v54 = sub_19A7AB234();

  [v49 activateConstraints_];

  v55 = [v1 navigationController];
  if (v55)
  {

    v57 = [v1 navigationItem];
    [v57 setHidesBackButton_];

    if (v1[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_canToggleLive] == 1)
    {
      v58 = [v1 navigationItem];
      v60 = sub_19A788CF0(v59);
      v61 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

      [v58 setLeftBarButtonItem_];
    }

    v62 = sub_19A7AA624();
    v63 = [v1 navigationItem];
    if (v62)
    {
      v64 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v1 action:sel_handleDoneButton];
    }

    else
    {
      v96 = sub_19A788934();
      v64 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
    }

    [v63 setRightBarButtonItem_];

    goto LABEL_25;
  }

  v97 = v49;
  if (v1[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_canToggleLive] != 1)
  {
LABEL_19:
    v81 = sub_19A788934();
    [v81 setTranslatesAutoresizingMaskIntoConstraints_];

    v82 = [v1 &selRef_initWithDataSources_];
    if (v82)
    {
      v83 = v82;
      v84 = OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___doneButton;
      [v82 addSubview_];

      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_19A7BE330;
      v86 = [*&v1[v84] topAnchor];
      v87 = [v1 &selRef_initWithDataSources_];
      if (v87)
      {
        v88 = v87;
        v89 = [v87 topAnchor];

        v90 = [v86 constraintEqualToAnchor:v89 constant:20.0];
        *(v85 + 32) = v90;
        v91 = [v1 &selRef_initWithDataSources_];
        if (v91)
        {
          v92 = v91;
          v93 = [v91 rightAnchor];

          v94 = [*&v1[v84] rightAnchor];
          v95 = [v93 constraintEqualToAnchor:v94 constant:20.0];

          *(v85 + 40) = v95;
          v64 = sub_19A7AB234();

          [v97 activateConstraints_];
LABEL_25:

          return;
        }

        goto LABEL_36;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v65 = sub_19A788CF0(v56);
  [v65 setTranslatesAutoresizingMaskIntoConstraints_];

  v66 = [v1 &selRef_initWithDataSources_];
  if (!v66)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v67 = v66;
  v68 = OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___liveButton;
  [v66 addSubview_];

  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_19A7BE330;
  v70 = [*&v1[v68] topAnchor];
  v71 = [v1 &selRef_initWithDataSources_];
  if (!v71)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v72 = v71;
  v73 = [v71 topAnchor];

  v74 = [v70 &selRef_attributionInfo + 6];
  *(v69 + 32) = v74;
  v75 = [*&v1[v68] leftAnchor];
  v76 = [v1 &selRef_initWithDataSources_];
  if (v76)
  {
    v77 = v76;
    v78 = [v76 leftAnchor];

    v79 = [v75 &selRef_attributionInfo + 6];
    *(v69 + 40) = v79;
    v80 = sub_19A7AB234();

    [v49 activateConstraints_];

    goto LABEL_19;
  }

LABEL_39:
  __break(1u);
}

void sub_19A7899F8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for StickerEditViewController();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, v3 & 1);
  *(v2 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isPaused) = 0;
  sub_19A787B4C();
  v4 = sub_19A788850();
  v4[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_isPaused] = 0;
  sub_19A72D6A0();

  v5 = sub_19A7885C0();
  v6 = *&v5[OBJC_IVAR___STKStickerView_effectView];
  if (v6)
  {
    v7 = v6;
    *&v7[OBJC_IVAR____SKIStickerEffectViewInternal_settlingStartTime] = CACurrentMediaTime();
    sub_19A77EC24();
  }
}

void sub_19A789B08(uint64_t a1)
{
  v2 = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StickerEditViewController();
  objc_msgSendSuper2(&v3, sel_viewWillDisappear_, v2 & 1);
  *(v1 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isPaused) = 1;
  sub_19A787B4C();
}

void sub_19A789BD4(uint64_t a1)
{
  v2 = v1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for StickerEditViewController();
  objc_msgSendSuper2(&v15, sel_viewDidLayoutSubviews);
  v3 = &v1[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 16))(v1, ObjectType, v4);
    swift_unknownObjectRelease();
    v7 = sub_19A788DEC();
    if (v6)
    {
      v8 = 240.0;
    }

    else
    {
      v8 = 120.0;
    }
  }

  else
  {
    v7 = sub_19A788DEC();
    v6 = 0;
    v8 = 120.0;
  }

  [v7 setConstant_];

  v9 = sub_19A788DD8();
  [v9 setConstant_];

  v10 = sub_19A788850();
  v11 = v10;
  v12 = v10[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_isExpanded];
  v10[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_isExpanded] = v6 & 1;
  if ((v6 & 1) != v12)
  {
    [v10 invalidateIntrinsicContentSize];
    [v11 setNeedsLayout];
    [v11 layoutIfNeeded];
  }

  v13 = [v2 view];
  if (v13)
  {
    v14 = v13;
    [v13 needsUpdateConstraints];
  }

  else
  {
    __break(1u);
  }
}

void sub_19A789DD8()
{
  v1 = sub_19A7885C0();
  v2 = OBJC_IVAR___STKStickerView_effect;
  swift_beginAccess();
  v3 = *&v1[v2];
  v4 = v3;

  if (v3)
  {

    v5 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___previewView);
    v6 = OBJC_IVAR___STKStickerView_effect;
    swift_beginAccess();
    v7 = *(v5 + v6);
  }

  else
  {
    if (qword_1EAFCB328 != -1)
    {
      swift_once();
    }

    v7 = qword_1EAFCB330;
  }

  v8 = v7;
  v9 = v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_9;
  }

  if (v7)
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 8);
    v7 = v7;
    v12(v0, v7, ObjectType, v10);
    swift_unknownObjectRelease();

LABEL_9:
    return;
  }

  __break(1u);
}

void sub_19A789F88()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v89 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v89 - v11;
  v13 = sub_19A788850();
  v14 = *&v13[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_selectedEffectIndex];
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v0 = v13;
  v15 = *&v13[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_effects];
  if (v14 >= *(v15 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v95 = v9;
  v16 = sub_19A6BE2A0(*(v15 + 8 * v14 + 32));

  v18 = OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isLive;
  v1 = &OBJC_IVAR___STKStickerSearchQuery_exactQuery;
  if (v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isLive])
  {
    v19 = 0;
  }

  else
  {
    v20 = OBJC_IVAR____TtC10StickerKit25StickerEditViewController_preLiveSickerEffect;
    v2 = *&v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_preLiveSickerEffect];
    if (v2)
    {
      v21 = v2;
      v22 = sub_19A7885C0();
      v94 = v12;
      v23 = OBJC_IVAR___STKStickerView_effect;
      swift_beginAccess();
      v24 = v6;
      v25 = v16;
      v26 = *&v22[v23];
      *&v22[v23] = v2;
      v27 = v21;

      v16 = v25;
      v6 = v24;
      v1 = &OBJC_IVAR___STKStickerSearchQuery_exactQuery;
      sub_19A6C31C4(v2);

      v28 = *&v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___effectChooser];
      v29 = OBJC_IVAR___STKStickerEffect_type;
      swift_beginAccess();
      v30 = *&v27[v29];
      v2 = v28;
      v31 = sub_19A6BE2A0(v30);
      sub_19A72F918(v31);

      v12 = v94;
      v32 = *&v3[v20];
      *&v3[v20] = 0;

      v19 = v3[v18] ^ 1;
    }

    else
    {
      v19 = 1;
    }
  }

  v3[v18] = v19 & 1;
  v33 = sub_19A788CF0(v17);
  v34 = v3[v18];
  v35 = OBJC_IVAR____TtC10StickerKit10LiveButton_isLive;
  swift_beginAccess();
  v33[v35] = v34;
  [v33 setNeedsUpdateConfiguration];

  sub_19A787BF0(v36, v37);
  if (v3[v18] == 1)
  {
    v2 = *&v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController__animatedData + 8];
    if (v2 >> 60 != 15)
    {
      v93 = v6;
      v94 = v16;
      v55 = *&v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController__animatedData];
      v56 = *&v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_preLiveSickerEffect];
      *&v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_preLiveSickerEffect] = v16;
      v57 = v16;
      sub_19A69E0F4(v55, v2);

      v58 = sub_19A7A8F64();
      v90 = *(v58 - 8);
      (*(v90 + 56))(v12, 1, 1, v58);
      v91 = objc_allocWithZone(type metadata accessor for AnimatedImage(0));
      v59 = objc_allocWithZone(STKImageData);
      sub_19A69E0F4(v55, v2);
      sub_19A612F68(v55, v2);
      v60 = sub_19A7A8E14();
      v61 = [v59 initWithData_];

      v92 = v55;
      sub_19A612F00(v55, v2);
      v62 = [v61 thumbnailsFitToSize:128 maxCount:{1024.0, 1024.0}];
      v63 = sub_19A7AB254();

      sub_19A623FA4(v63);

      v64 = [v61 durationsWithMaxCount_];
      v65 = v12;
      v66 = sub_19A7AB254();

      sub_19A6240A8(v66);

      sub_19A5F5028(0, &unk_1EAFCC1A0, 0x1E69DCAB8);
      v67 = sub_19A7AB234();

      sub_19A5F5028(0, &qword_1ED8B1FE0, 0x1E696AD98);
      v68 = sub_19A7AB234();
      v69 = v90;

      v70 = v65;
      v71 = v65;
      v72 = v95;
      sub_19A6240BC(v71, v95);
      v73 = 0;
      if ((*(v69 + 48))(v72, 1, v58) != 1)
      {
        v73 = sub_19A7A8F24();
        (*(v69 + 8))(v72, v58);
      }

      v1 = [v91 initWithImages:v67 durations:v68 identifier:v73];

      v6 = v92;
      sub_19A612F00(v92, v2);
      sub_19A62412C(v70);
      v0 = sub_19A7885C0();
      if (qword_1EAFCB5C0 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

  v0 = v3;
  v38 = sub_19A7885C0();
  v39 = *&v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___effectChooser];
  v40 = *(v39 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_selectedEffectIndex);
  if ((v40 & 0x8000000000000000) == 0)
  {
    v41 = *(v39 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_effects);
    if (v40 < *(v41 + 16))
    {
      v42 = v38;
      v43 = *&v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController__image];
      v44 = *(v41 + 8 * v40 + 32);
      v45 = v43;
      v46 = sub_19A6BE2A0(v44);
      v47 = sub_19A7AB394();
      (*(*(v47 - 8) + 56))(v6, 1, 1, v47);
      sub_19A7AB354();
      v48 = v46;
      v49 = v45;
      v50 = v48;
      v51 = v42;
      v52 = sub_19A7AB344();
      v53 = swift_allocObject();
      v54 = MEMORY[0x1E69E85E0];
      v53[2] = v52;
      v53[3] = v54;
      v53[4] = v51;
      v53[5] = v43;
      v53[6] = 0;
      v53[7] = v46;
      sub_19A6816F0(0, 0, v6, &unk_19A7BE500, v53);

      goto LABEL_19;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  swift_once();
LABEL_16:
  v74 = qword_1EAFCE2E0;
  v75 = sub_19A7AB394();
  v76 = v93;
  (*(*(v75 - 8) + 56))(v93, 1, 1, v75);
  sub_19A7AB354();
  v77 = v0;
  v78 = v1;
  v79 = v74;
  v80 = sub_19A7AB344();
  v81 = swift_allocObject();
  v82 = MEMORY[0x1E69E85E0];
  v81[2] = v80;
  v81[3] = v82;
  v81[4] = v77;
  v81[5] = v1;
  v81[6] = 0;
  v81[7] = v74;
  sub_19A6816F0(0, 0, v76, &unk_19A7BD708, v81);

  v83 = qword_1EAFCB328;
  v84 = *&v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___effectChooser];
  v16 = v94;
  if (v83 != -1)
  {
    swift_once();
  }

  v85 = qword_1EAFCB330;
  sub_19A72F918(v85);

  sub_19A612F00(v6, v2);
LABEL_19:
  v86 = [v3 navigationController];
  if (v86)
  {

    v87 = [v3 navigationItem];
    v88 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
    [v87 setLeftBarButtonItem_];
  }
}

id StickerEditViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id StickerEditViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StickerEditViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_19A78AAAC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v79 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v76 - v11;
  v12 = &v2[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isLive];
  v13 = v2[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isLive];
  v14 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  if (*(a1 + v14))
  {
    v16 = sub_19A788CF0(v15);
    v17 = OBJC_IVAR____TtC10StickerKit10LiveButton_isLive;
    swift_beginAccess();
    v16[v17] = 0;
    v18 = v12;
  }

  else
  {
    v18 = &v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_lastEffectWasLive];
    if (v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_lastEffectWasLive] != 1)
    {
      goto LABEL_6;
    }

    *v12 = 1;
    v16 = sub_19A788CF0(v15);
    v19 = OBJC_IVAR____TtC10StickerKit10LiveButton_isLive;
    swift_beginAccess();
    v16[v19] = 1;
  }

  [v16 setNeedsUpdateConfiguration];

  *v18 = 0;
LABEL_6:
  if (((a2 != 0) & v13) != 0)
  {
    v20 = OBJC_IVAR___STKStickerEffect_type;
    swift_beginAccess();
    v21 = OBJC_IVAR____TtC10StickerKit25StickerEditViewController_lastEffectWasLive;
    if (!*(a2 + v20))
    {
      v22 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    v21 = OBJC_IVAR____TtC10StickerKit25StickerEditViewController_lastEffectWasLive;
  }

  v22 = 0;
LABEL_11:
  v3[v21] = v22;
  v23 = sub_19A7885C0();
  v24 = OBJC_IVAR___STKStickerView_effect;
  swift_beginAccess();
  v25 = *&v23[v24];
  *&v23[v24] = a1;
  v26 = a1;

  sub_19A6C31C4(a1);
  v27 = &OBJC_IVAR___STKStickerSearchQuery_exactQuery;
  if (*v12 == 1)
  {
    a1 = *&v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController__animatedData + 8];
    if (a1 >> 60 == 15)
    {
      return;
    }

    v28 = *&v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController__animatedData];
    v29 = sub_19A7A8F64();
    v77 = *(v29 - 8);
    v30 = v80;
    (*(v77 + 56))(v80, 1, 1, v29);
    v78 = objc_allocWithZone(type metadata accessor for AnimatedImage(0));
    v31 = objc_allocWithZone(STKImageData);
    sub_19A69E0F4(v28, a1);
    sub_19A612F68(v28, a1);
    sub_19A612F68(v28, a1);
    v32 = sub_19A7A8E14();
    v33 = [v31 initWithData_];

    sub_19A612F00(v28, a1);
    v34 = [v33 thumbnailsFitToSize:128 maxCount:{1024.0, 1024.0}];
    v35 = sub_19A7AB254();

    sub_19A623FA4(v35);

    v36 = [v33 durationsWithMaxCount_];
    v37 = sub_19A7AB254();

    sub_19A6240A8(v37);

    sub_19A5F5028(0, &unk_1EAFCC1A0, 0x1E69DCAB8);
    v38 = sub_19A7AB234();

    sub_19A5F5028(0, &qword_1ED8B1FE0, 0x1E696AD98);
    v39 = sub_19A7AB234();

    v40 = v30;
    v41 = v77;
    v42 = v79;
    sub_19A6240BC(v40, v79);
    v43 = 0;
    if ((*(v41 + 48))(v42, 1, v29) != 1)
    {
      v43 = sub_19A7A8F24();
      (*(v41 + 8))(v42, v29);
    }

    v44 = [v78 initWithImages:v38 durations:v39 identifier:v43];

    sub_19A612F00(v28, a1);
    sub_19A62412C(v80);
    v45 = qword_1EAFCB5C0;
    v46 = *&v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___previewView];
    if (v45 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v58 = *&v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___previewView];
  v28 = *&v3[OBJC_IVAR____TtC10StickerKit25StickerEditViewController__image];
  v59 = v28;
  v44 = v58;
  v46 = v3;
  v60 = sub_19A788850();
  v61 = *&v60[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_selectedEffectIndex];
  if ((v61 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v46 = v60;
  v62 = *&v60[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_effects];
  if (v61 >= *(v62 + 16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
LABEL_16:
    v47 = qword_1EAFCE2E0;
    v48 = sub_19A7AB394();
    v49 = v81;
    (*(*(v48 - 8) + 56))(v81, 1, 1, v48);
    sub_19A7AB354();
    v50 = v46;
    v51 = v44;
    v52 = v47;
    v53 = sub_19A7AB344();
    v54 = swift_allocObject();
    v55 = MEMORY[0x1E69E85E0];
    v54[2] = v53;
    v54[3] = v55;
    v54[4] = v50;
    v54[5] = v44;
    v54[6] = 0;
    v54[7] = v47;
    sub_19A6816F0(0, 0, v49, &unk_19A7C2F38, v54);

    sub_19A612F00(v28, a1);

    v27 = &OBJC_IVAR___STKStickerSearchQuery_exactQuery;
    goto LABEL_20;
  }

  v63 = sub_19A6BE2A0(*(v62 + 8 * v61 + 32));

  v64 = sub_19A7AB394();
  v65 = v81;
  (*(*(v64 - 8) + 56))(v81, 1, 1, v64);
  sub_19A7AB354();
  v66 = v44;
  v67 = v59;
  v68 = v63;
  v69 = sub_19A7AB344();
  v70 = swift_allocObject();
  v71 = MEMORY[0x1E69E85E0];
  v70[2] = v69;
  v70[3] = v71;
  v70[4] = v66;
  v70[5] = v28;
  v70[6] = 0;
  v70[7] = v63;
  sub_19A6816F0(0, 0, v65, &unk_19A7C2F30, v70);

LABEL_20:
  sub_19A787BF0(v56, v57);
  v72 = *&v3[v27[436]];
  v73 = *&v72[OBJC_IVAR___STKStickerView_effectView];
  if (v73)
  {
    v74 = v72;
    v75 = v73;
    *&v75[OBJC_IVAR____SKIStickerEffectViewInternal_settlingStartTime] = CACurrentMediaTime();
    sub_19A77EC24();
  }
}

char *sub_19A78B2C4(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v9 = OBJC_IVAR____TtC10StickerKit25StickerEditViewController_canToggleLive;
  v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_canToggleLive] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_preLiveSickerEffect] = 0;
  v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_lastEffectWasLive] = 0;
  v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isPaused] = 1;
  v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isLive] = 0;
  v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_initialConfigurationComplete] = 0;
  v10 = &v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController__animatedData];
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController__animatedData] = xmmword_19A7BB5E0;
  v11 = OBJC_IVAR____TtC10StickerKit25StickerEditViewController__image;
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController__image] = 0;
  v12 = OBJC_IVAR____TtC10StickerKit25StickerEditViewController__effect;
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController__effect] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___previewView] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___effectChooser] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___doneButton] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___liveButton] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___previewWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___previewHeightConstraint] = 0;
  v13 = *&v4[v11];
  *&v4[v11] = a1;
  v43 = a1;
  v42 = a1;

  v14 = *v10;
  v15 = v10[1];
  *v10 = a2;
  v10[1] = a3;
  sub_19A69E0F4(a2, a3);
  sub_19A612F00(v14, v15);
  v4[v9] = a3 >> 60 != 15;
  v16 = a4;
  v17 = a4;
  if (!a4)
  {
    if (qword_1EAFCB328 != -1)
    {
      swift_once();
    }

    v17 = qword_1EAFCB330;
    v18 = qword_1EAFCB330;
  }

  v19 = *&v4[v12];
  *&v4[v12] = v17;
  v20 = a4;

  v44.receiver = v4;
  v44.super_class = type metadata accessor for StickerEditViewController();
  v21 = objc_msgSendSuper2(&v44, sel_initWithNibName_bundle_, 0, 0);
  if ((sub_19A7AA624() & 1) == 0)
  {
    result = [v21 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v23 = result;
    v24 = [objc_opt_self() systemBackgroundColor];
    [v23 setBackgroundColor_];
  }

  v25 = sub_19A788850();
  sub_19A72FA20(v43);

  v26 = *&v21[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___effectChooser];
  v27 = *&v21[OBJC_IVAR____TtC10StickerKit25StickerEditViewController__effect];
  if (v27)
  {
    v28 = *&v21[OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___effectChooser];
    v29 = *&v21[OBJC_IVAR____TtC10StickerKit25StickerEditViewController__effect];
  }

  else
  {
    v30 = qword_1EAFCB328;
    v31 = v26;
    if (v30 != -1)
    {
      swift_once();
    }

    v27 = 0;
    v28 = qword_1EAFCB330;
    v29 = qword_1EAFCB330;
  }

  v32 = v28;
  v33 = v27;
  sub_19A72F918(v29);

  sub_19A787E40();
  if (v16)
  {
    v35 = OBJC_IVAR___STKStickerEffect_type;
    swift_beginAccess();
    v36 = *&v20[v35] == 5;
  }

  else
  {
    v36 = 0;
  }

  v37 = OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isLive;
  v21[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isLive] = v36;
  v38 = sub_19A788CF0(v34);
  LOBYTE(v37) = v21[v37];
  v39 = OBJC_IVAR____TtC10StickerKit10LiveButton_isLive;
  swift_beginAccess();
  v38[v39] = v37;
  [v38 setNeedsUpdateConfiguration];

  sub_19A787BF0(v40, v41);
  return v21;
}

void sub_19A78B8A8()
{
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController_canToggleLive) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController_preLiveSickerEffect) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController_lastEffectWasLive) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isPaused) = 1;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isLive) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController_initialConfigurationComplete) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController__animatedData) = xmmword_19A7BB5E0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController__image) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController__effect) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___previewView) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___effectChooser) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___doneButton) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___liveButton) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___previewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController____lazy_storage___previewHeightConstraint) = 0;
  sub_19A7ABE34();
  __break(1u);
}

uint64_t sub_19A78B9E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF0C0, &qword_19A7C2F40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A78BA98(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_19A78BE04(a1);
  (*(*(*(v2 + qword_1EAFDD580) - 8) + 8))(a1);
  return v5;
}

void *sub_19A78BB64(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + qword_1EAFDD580);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v12 - v7, v6);
  v8 = sub_19A7A9C74();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_19A78BC9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SecureHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EAFDD580), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EAFDD580 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_19A78BD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SecureHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EAFDD580), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EAFDD580 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_19A78BE04(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return sub_19A7A9C84();
}

void sub_19A78BEEC()
{
  v1 = v0;
  v54.receiver = v0;
  v54.super_class = type metadata accessor for StickerPickerInProcessViewController();
  objc_msgSendSuper2(&v54, sel_loadView);
  v2 = [objc_opt_self() buttonWithType_];
  [v2 addTarget:v0 action:sel_handleCloseButton forControlEvents:64];
  v3 = [objc_allocWithZone(type metadata accessor for EmojiAndStickerCollectionViewConfiguration()) init];
  v4 = objc_allocWithZone(type metadata accessor for BridgingEmojiAndStickerCollectionViewController());
  v6 = sub_19A6613F4(v3, v5);

  v7 = v6;
  v8 = [v7 navigationItem];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
  [v8 setRightBarButtonItem_];

  v10 = sub_19A7AAFE4();
  [v7 setTitle_];

  v11 = OBJC_IVAR____TtC10StickerKit36StickerPickerInProcessViewController_nav;
  v12 = *&v1[OBJC_IVAR____TtC10StickerKit36StickerPickerInProcessViewController_nav];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100, &unk_19A7B6CC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_19A7B6C40;
  *(v13 + 32) = v7;
  sub_19A5F5028(0, &qword_1EAFCB0E0, 0x1E69DD258);
  v14 = v12;
  v15 = sub_19A7AB234();

  [v14 setViewControllers_];

  [v1 addChildViewController_];
  v16 = [*&v1[v11] view];
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = v16;
  [v16 setClipsToBounds_];
  v18 = [v1 view];
  if (!v18)
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v18;
  v53 = v2;
  [v18 addSubview_];

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [objc_opt_self() additionalInsets];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_19A7BB2E0;
  v29 = [v17 topAnchor];
  v30 = [v1 view];
  if (!v30)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v31 = v30;
  v32 = [v30 topAnchor];

  v33 = [v29 constraintEqualToAnchor:v32 constant:v21];
  *(v28 + 32) = v33;
  v34 = [v17 bottomAnchor];
  v35 = [v1 view];
  if (!v35)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v36 = v35;
  v37 = [v35 safeAreaLayoutGuide];

  v38 = [v37 bottomAnchor];
  v39 = [v34 constraintEqualToAnchor:v38 constant:-v25];

  *(v28 + 40) = v39;
  v40 = [v17 leftAnchor];
  v41 = [v1 view];
  if (!v41)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v42 = v41;
  v43 = [v41 leftAnchor];

  v44 = [v40 constraintEqualToAnchor:v43 constant:v23];
  *(v28 + 48) = v44;
  v45 = [v17 rightAnchor];
  v46 = [v1 view];
  if (v46)
  {
    v47 = v46;
    v48 = objc_opt_self();
    v49 = [v47 rightAnchor];

    v50 = [v45 constraintEqualToAnchor:v49 constant:-v27];
    *(v28 + 56) = v50;
    sub_19A5F5028(0, &qword_1ED8B2030, 0x1E696ACD8);
    v51 = sub_19A7AB234();

    [v48 activateConstraints_];

    v52 = sub_19A7AAFE4();
    [v17 setAccessibilityIdentifier_];

    v2 = v53;
LABEL_8:
    [*&v1[v11] didMoveToParentViewController_];

    return;
  }

LABEL_13:
  __break(1u);
}

id StickerPickerInProcessViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id StickerPickerInProcessViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC10StickerKit36StickerPickerInProcessViewController_nav;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
  if (a2)
  {
    v7 = sub_19A7AAFE4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for StickerPickerInProcessViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id StickerPickerInProcessViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id StickerPickerInProcessViewController.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC10StickerKit36StickerPickerInProcessViewController_nav;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for StickerPickerInProcessViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id StickerPickerInProcessViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerPickerInProcessViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_19A78CA00(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_19A78CA60(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___StickerPhotosViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_19A6267A8;
}

id sub_19A78CB68(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for StickerPhotosViewController();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR___StickerPhotosViewController_coordinator];
  *(v3 + OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_delegate + 8) = &off_1F0DCECF0;
  result = swift_unknownObjectWeakAssign();
  v5 = *(v3 + OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_picker);
  if (v5)
  {
    return [v1 presentViewController:v5 animated:1 completion:0];
  }

  __break(1u);
  return result;
}

id StickerPhotosViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id StickerPhotosViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR___StickerPhotosViewController_coordinator;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for StickerPhotosCoordinator()) init];
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v7 = sub_19A7AAFE4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for StickerPhotosViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id StickerPhotosViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id StickerPhotosViewController.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___StickerPhotosViewController_coordinator;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for StickerPhotosCoordinator()) init];
  swift_unknownObjectWeakInit();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for StickerPhotosViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_19A78CF1C(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for StickerPhotosViewController();
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_19A78D058(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v31 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      sub_19A7AAD24();
      v20 = sub_19A7AB234();
      [v19 stickerPhotosViewControllerWithDidCreate:v20 sourceFrame:{a2, a3, a4, a5}];

      swift_unknownObjectRelease();
    }

    v21 = [v17 _hostedWindowScene];
    if (v21)
    {
      v22 = v21;
      if (a1)
      {
        MEMORY[0x19A905020]();
        v23 = sub_19A7A8F64();
        (*(*(v23 - 8) + 56))(v15, 0, 1, v23);
      }

      else
      {
        v24 = sub_19A7A8F64();
        (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
      }

      v25 = [objc_allocWithZone(type metadata accessor for StickerPhotosCreationResult(0)) init];
      v26 = *&v25[OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_sticker];
      *&v25[OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_sticker] = a1;
      v27 = a1;

      v28 = OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_stickerUUID;
      swift_beginAccess();
      sub_19A70B7AC(v15, &v25[v28]);
      swift_endAccess();
      v25[OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_isLive] = 0;
      *&v25[OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_representations] = 0;

      v29 = &v25[OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_sourceFrame];
      *v29 = a2;
      v29[1] = a3;
      v29[2] = a4;
      v29[3] = a5;
      v30 = sub_19A6DF438(1, v25, 1, 0);

      sub_19A5F2B54(v15, &qword_1EAFCD800, &qword_19A7BCE60);
      [v22 sendAction_];
    }

    if (qword_1ED8B2D18 != -1)
    {
      swift_once();
    }

    sub_19A778B08(1);
  }
}

void sub_19A78D368(double a1, double a2, double a3, double a4)
{
  v9 = sub_19A7AABD4();
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD820, &qword_19A7BB660);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v41 - v13;
  v15 = sub_19A7A9304();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v52 = &v41 - v21;
  v53 = MEMORY[0x1E69E7CC0];
  if (v19 >> 62)
  {
    v39 = v19;
    v40 = sub_19A7ABBE4();
    v19 = v39;
    v22 = v40;
  }

  else
  {
    v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = v9;
  v44 = v4;
  v42 = v11;
  if (!v22)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_18:
    sub_19A7AAF14();
    (*(v41 + 104))(v42, *MEMORY[0x1E69D46E8], v43);

    v36 = sub_19A7AAE64();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v25;
    *(v38 + 32) = a1;
    *(v38 + 40) = a2;
    *(v38 + 48) = a3;
    *(v38 + 56) = a4;

    Sticker.saveToStore(completionHandler:)(sub_19A78D908, v38);

    return;
  }

  if (v22 >= 1)
  {
    v23 = 0;
    v24 = v19 & 0xC000000000000001;
    v50 = (v16 + 48);
    v46 = (v16 + 16);
    v47 = (v16 + 32);
    v45 = (v16 + 8);
    v25 = MEMORY[0x1E69E7CC0];
    v51 = v19;
    v48 = v19 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        v26 = MEMORY[0x19A906130](v23, v20);
      }

      else
      {
        v26 = *(v19 + 8 * v23 + 32);
      }

      v27 = v26;
      v28 = [v26 type];
      sub_19A7AB014();

      sub_19A7A9314();
      if ((*v50)(v14, 1, v15) == 1)
      {

        sub_19A5F2B54(v14, &qword_1EAFCD820, &qword_19A7BB660);
      }

      else
      {
        v29 = v52;
        (*v47)(v52, v14, v15);
        v30 = [v27 data];
        sub_19A7A8E34();

        (*v46)(v49, v29, v15);
        [v27 size];
        sub_19A7AACB4();
        v31 = objc_allocWithZone(sub_19A7AAD24());
        v32 = sub_19A7AACE4();
        v33 = [v27 role];
        if (v33)
        {
          v34 = v33;
          sub_19A7AB014();

          sub_19A7AAD04();
        }

        v35 = v32;
        MEMORY[0x19A905660]();
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_19A7AB274();
        }

        sub_19A7AB2A4();

        (*v45)(v52, v15);
        v25 = v53;
        v24 = v48;
      }

      ++v23;
      v19 = v51;
    }

    while (v22 != v23);
    goto LABEL_18;
  }

  __break(1u);
}

id sub_19A78D918(void *a1)
{

  return sub_19A78DA24(a1, &OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassOneShader_sigma, &OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassOneShader_sigmaColor);
}

id sub_19A78D9BC(void *a1)
{

  return sub_19A78DA24(a1, &OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassTwoShader_sigma, &OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassTwoShader_sigmaColor);
}

id sub_19A78DA24(void *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(v3 + *a2);
  v5 = *(v3 + *a3);
  v6 = vcvt_f32_f64(*(v3 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size));
  *v8 = v4;
  *&v8[1] = v5;
  v9 = v6;
  return [a1 setFragmentBytes:v8 length:16 atIndex:0];
}

id sub_19A78DAD0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_19A78DB2C()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCFE30);
  __swift_project_value_buffer(v0, qword_1EAFCFE30);
  return sub_19A7A9374();
}

uint64_t sub_19A78DBAC()
{
  v0 = sub_19A7AAA14();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D4638], v1);
  sub_19A7AAAC4();
  swift_allocObject();
  result = sub_19A7AAA04();
  qword_1EAFDD7A8 = result;
  return result;
}

uint64_t static StickersOnDemandReindexer.reindexStickersIfNecessary()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A60F860;

  return sub_19A78F920();
}

uint64_t sub_19A78DE98(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_19A78DF40;

  return sub_19A78F920();
}

uint64_t sub_19A78DF40()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

id sub_19A78E060(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFE70, &qword_19A7C3180);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  *(swift_allocObject() + 16) = a2;
  v8 = a2;
  v20 = a1;
  v21 = v8;
  v9 = a1;
  sub_19A7AB424();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v19 = *(v5 + 32);
  v19(v12 + v11, v7, v4);
  v26 = sub_19A7900C8;
  v27 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_19A78E520;
  v25 = &block_descriptor_37;
  v13 = _Block_copy(&aBlock);

  [v21 setFoundItemsHandler_];
  _Block_release(v13);
  v10(v7, v20, v4);
  v14 = swift_allocObject();
  v19(v14 + v11, v7, v4);
  v26 = sub_19A79017C;
  v27 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_19A6DECA4;
  v25 = &block_descriptor_39;
  v15 = _Block_copy(&aBlock);

  v16 = v21;
  [v21 setCompletionHandler_];
  _Block_release(v15);
  return [v16 start];
}

void sub_19A78E348(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFE80, qword_19A7C3188);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  if (a1 >> 62)
  {
    v7 = sub_19A7ABBE4();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v3 + 8);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        MEMORY[0x19A906130](v9, a1, v4);
        swift_unknownObjectRelease();
        ++v9;
        v11 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFE70, &qword_19A7C3180);
        sub_19A7AB434();
        (*v8)(v6, v2);
      }

      while (v7 != v9);
    }

    else
    {
      do
      {
        v11 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFE70, &qword_19A7C3180);
        sub_19A7AB434();
        (*v8)(v6, v2);
        --v7;
      }

      while (v7);
    }
  }
}

double sub_19A78E520(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_19A790224();
  v3 = sub_19A7AB254();

  v2(v3);

  return result;
}

uint64_t sub_19A78E594(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFE70, &qword_19A7C3180);
  return sub_19A7AB444();
}

id StickersOnDemandReindexer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StickersOnDemandReindexer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickersOnDemandReindexer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id StickersOnDemandReindexer.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for StickersOnDemandReindexer();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_19A78E6D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_19A60FB98;

  return v6();
}

uint64_t sub_19A78E7B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_19A60FB98;

  return v7();
}

uint64_t sub_19A78E8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_19A702E48(a3, v23 - v10);
  v12 = sub_19A7AB394();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_19A5F2B54(v11, &unk_1EAFCD690, &qword_19A7B6B00);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_19A7AB384();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_19A7AB2E4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_19A7AB074() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_19A5F2B54(a3, &unk_1EAFCD690, &qword_19A7B6B00);

    return v21;
  }

LABEL_8:
  sub_19A5F2B54(a3, &unk_1EAFCD690, &qword_19A7B6B00);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_19A78EB8C()
{
  v1 = sub_19A7AABD4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A78EC48, 0, 0);
}

uint64_t sub_19A78EC48()
{
  if (qword_1EAFCB708 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  (*(v2 + 104))(v1, *MEMORY[0x1E69D46E8], v3);
  v4 = sub_19A7AAA44();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_19A78EE94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFE48, &qword_19A7C3168);
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFE50, &qword_19A7C3170);
  v0[7] = v2;
  v0[8] = *(v2 - 8);
  v0[9] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFE58, &qword_19A7C3178);
  v0[10] = v3;
  v0[11] = *(v3 - 8);
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A78F038, 0, 0);
}

uint64_t sub_19A78F038(uint64_t a1)
{
  sub_19A7AB3D4();
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[10];
  v5 = v1[11];
  v7 = v1[8];
  v6 = v1[9];
  v19 = v1[7];
  v8 = [objc_opt_self() emptySuggestion];
  v1[14] = v8;
  v9 = [objc_opt_self() userQueryContextWithCurrentSuggestion_];
  v1[15] = v9;
  v10 = v9;
  v11 = sub_19A7AB234();
  [v10 setFetchAttributes_];

  v12 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v13 = sub_19A7AAFE4();
  v14 = [v12 initWithQueryString:v13 queryContext:v10];
  v1[16] = v14;

  (*(v7 + 104))(v6, *MEMORY[0x1E69E8790], v19);
  *(swift_task_alloc() + 16) = v14;
  sub_19A7AB454();

  (*(v5 + 16))(v2, v3, v4);
  sub_19A623714(&qword_1EAFCFE60, &qword_1EAFCFE58, &qword_19A7C3178, MEMORY[0x1E69E87D0]);
  sub_19A7AB414();
  v1[17] = MEMORY[0x1E69E7CC0];
  v15 = sub_19A623714(&qword_1EAFCFE68, &qword_1EAFCFE48, &qword_19A7C3168, MEMORY[0x1E69E87C0]);
  v16 = swift_task_alloc();
  v1[18] = v16;
  *v16 = v1;
  v16[1] = sub_19A78F378;
  v17 = v1[4];

  return MEMORY[0x1EEE6D8C8](v1 + 2, v17, v15);
}

uint64_t sub_19A78F378()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = sub_19A78F700;
  }

  else
  {
    v3 = sub_19A78F4B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A78F4B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 136);
  if (*(v0 + 24))
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    v4 = *(v2 + 16);
    v1 = 0;
    if (!v4)
    {
LABEL_6:
      v8 = *(v0 + 128);
      v9 = *(v0 + 104);
      v10 = *(v0 + 112);
      v11 = *(v0 + 80);
      v12 = *(v0 + 88);

      (*(v12 + 8))(v9, v11);

      v13 = *(v0 + 8);

      return v13(v1);
    }

    v5 = (*(v0 + 136) + 32);
    while (1)
    {
      v6 = *v5++;
      v7 = __OFADD__(v1, v6);
      v1 += v6;
      if (v7)
      {
        break;
      }

      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 136);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_16:
    v3 = sub_19A76C954(0, *(v3 + 2) + 1, 1, v3);
  }

  v17 = *(v3 + 2);
  v16 = *(v3 + 3);
  if (v17 >= v16 >> 1)
  {
    v3 = sub_19A76C954((v16 > 1), v17 + 1, 1, v3);
  }

  *(v3 + 2) = v17 + 1;
  *&v3[8 * v17 + 32] = v1;
  *(v0 + 136) = v3;
  v18 = sub_19A623714(&qword_1EAFCFE68, &qword_1EAFCFE48, &qword_19A7C3168, MEMORY[0x1E69E87C0]);
  v19 = swift_task_alloc();
  *(v0 + 144) = v19;
  *v19 = v0;
  v19[1] = sub_19A78F378;
  v20 = *(v0 + 32);

  return MEMORY[0x1EEE6D8C8](v0 + 16, v20, v18);
}

uint64_t sub_19A78F700()
{
  if (qword_1EAFCB700 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCFE30);
  v3 = v1;
  v4 = sub_19A7A9364();
  v5 = sub_19A7AB584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_19A5EE000, v4, v5, "Could not fetch total sticker count: %@", v7, 0xCu);
    sub_19A5F2B54(v8, &unk_1EAFCD7D0, &qword_19A7BB5F0);
    MEMORY[0x19A907A30](v8, -1, -1);
    MEMORY[0x19A907A30](v7, -1, -1);
    v11 = v0 + 16;
    v12 = v0 + 15;
    v13 = v4;
    v4 = v0[14];
  }

  else
  {
    v12 = v0 + 16;
    v13 = v0[15];
    v11 = v0 + 14;
  }

  v14 = *v12;
  v15 = v0[19];
  v16 = v0[13];
  v17 = v0[10];
  v18 = v0[11];

  v18[1](v16, v17);

  v19 = v0[1];

  return v19(-1);
}

uint64_t sub_19A78F920()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A78F9AC;

  return sub_19A78EB8C();
}

uint64_t sub_19A78F9AC(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 24) = a1;

  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v5;
  v3[1] = sub_19A78FAD8;

  return sub_19A78EE94();
}

uint64_t sub_19A78FAD8(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A78FBD8, 0, 0);
}

uint64_t sub_19A78FBD8()
{
  if (v0[3] != v0[5])
  {
    if (qword_1EAFCB708 != -1)
    {
      swift_once();
    }

    sub_19A7AA994();
    if (qword_1EAFCB700 != -1)
    {
      swift_once();
    }

    v1 = sub_19A7A9384();
    __swift_project_value_buffer(v1, qword_1EAFCFE30);
    v2 = sub_19A7A9364();
    v3 = sub_19A7AB564();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_19A5EE000, v2, v3, "Finished reindexing all stickers", v4, 2u);
      MEMORY[0x19A907A30](v4, -1, -1);
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_19A78FE94()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A60F860;

  return sub_19A78DE98(v2);
}

uint64_t sub_19A78FF40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A60FB98;

  return sub_19A5F2D24(a1, v4);
}

uint64_t sub_19A78FFF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A60F860;

  return sub_19A5F2D24(a1, v4);
}

uint64_t objectdestroy_32Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFE70, &qword_19A7C3180);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19A790194(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFE70, &qword_19A7C3180) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_19A790224()
{
  result = qword_1EAFCFE78;
  if (!qword_1EAFCFE78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAFCFE78);
  }

  return result;
}

id sub_19A790278(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StickerComicColorStrokeShader();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_19A790320(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_19A79038C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_19A64BD6C;
}

id StickerRemotePhotosViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id StickerRemotePhotosViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for StickerRemotePhotosViewController(0);
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

uint64_t type metadata accessor for StickerRemotePhotosViewController(uint64_t a1)
{
  result = qword_1EAFCFE88;
  if (!qword_1EAFCFE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id StickerRemotePhotosViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id StickerRemotePhotosViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for StickerRemotePhotosViewController(0);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id StickerRemotePhotosViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerRemotePhotosViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall StickerRemotePhotosViewController.stickerPhotosViewControllerShouldDismiss()()
{
  v1 = v0 + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall StickerRemotePhotosViewController.stickerPhotosViewController(didCreate:sourceFrame:)(Swift::OpaquePointer didCreate, __C::CGRect sourceFrame)
{
  height = sourceFrame.size.height;
  width = sourceFrame.size.width;
  y = sourceFrame.origin.y;
  x = sourceFrame.origin.x;
  v8 = v2 + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(v2, didCreate._rawValue, ObjectType, v9, x, y, width, height);
    swift_unknownObjectRelease();
  }
}

void StickerRemotePhotosViewController.stickerPhotosViewController(didCreate:isLive:sourceFrame:)(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v13 = v6 + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 24))(v6, a1, a2 & 1, ObjectType, v14, a3, a4, a5, a6);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_19A790EC4(uint64_t a1)
{
  v3 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_19A793B90(a1, v5);
  v7 = sub_19A7A9C84();
  sub_19A794134(a1);
  return v7;
}

id sub_19A790F64(char a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for PhotoConfirmationTipHostingController(0);
  objc_msgSendSuper2(&v16, sel_viewWillAppear_, a1 & 1);
  result = [v1 view];
  if (result)
  {
    v4 = result;
    result = [v1 view];
    if (result)
    {
      v5 = result;
      [result frame];
      v7 = v6;
      v9 = v8;

      LODWORD(v10) = 1148846080;
      LODWORD(v11) = 1112014848;
      [v4 systemLayoutSizeFittingSize:v7 withHorizontalFittingPriority:v9 verticalFittingPriority:{v10, v11}];
      v13 = v12;
      v15 = v14;

      return [v1 setPreferredContentSize_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_19A791064(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_19A790F64(a3);
}

uint64_t sub_19A7910C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v2);
  sub_19A793B90(a2, v6);
  v8 = sub_19A7A9C74();
  sub_19A794134(a2);
  return v8;
}

id sub_19A791168(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for PhotoConfirmationTipHostingController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_19A7911E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoConfirmationTipHostingController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_19A79126C(uint64_t a1)
{
  sub_19A791440(319, &qword_1EAFCFF30, MEMORY[0x1E697E730]);
  if (v1 <= 0x3F)
  {
    sub_19A791320();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19A791320()
{
  if (!qword_1EAFCA680)
  {
    v0 = sub_19A7AA494();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCA680);
    }
  }
}

void sub_19A7913B8(uint64_t a1)
{
  sub_19A791440(319, &unk_1EAFCA830, MEMORY[0x1E697DBD0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_19A791440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19A7A97F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_19A7914BC@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v68 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v70 = v2;
  v71 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_19A7A9E64();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFF50, &qword_19A7C33D0);
  MEMORY[0x1EEE9AC00](v58);
  v5 = &v57 - v4;
  v6 = sub_19A7A9934();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFF58, &qword_19A7C33D8);
  MEMORY[0x1EEE9AC00](v60);
  v14 = (&v57 - v13);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFF60, &qword_19A7C33E0);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v57 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFF68, &qword_19A7C33E8);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v57 - v16;
  v17 = sub_19A7A9C44();
  v18 = v1;
  sub_19A79361C(&qword_1EAFCFFA8, &qword_19A7C3418, MEMORY[0x1E697E730], v12);
  (*(v7 + 104))(v9, *MEMORY[0x1E697E6E8], v6);
  sub_19A793B48(&qword_1EAFCFF70, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  v19 = sub_19A7AAFA4();
  v20 = *(v7 + 8);
  v20(v9, v6);
  v20(v12, v6);
  if (v19)
  {
    v21 = sub_19A7A9B94();
  }

  else
  {
    v21 = sub_19A7A9B84();
  }

  *v14 = v17;
  v14[1] = v21;
  *v5 = sub_19A7A9C24();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFF78, &qword_19A7C33F0);
  sub_19A791CA8(v18, &v5[*(v22 + 44)]);
  v23 = sub_19A7A9F14();
  sub_19A7A9754();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFF80, &qword_19A7C33F8) + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = sub_19A7A9F24();
  sub_19A7A9754();
  v34 = &v5[*(v58 + 36)];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  sub_19A7AA654();
  v39 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFF88, &qword_19A7C3400) + 44);
  sub_19A7A9A44();
  sub_19A62376C(v5, v39, &qword_1EAFCFF50, &qword_19A7C33D0);
  v40 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFF90, &qword_19A7C3408) + 36));
  v41 = v81;
  v40[4] = v80;
  v40[5] = v41;
  v40[6] = v82;
  v42 = v77;
  *v40 = v76;
  v40[1] = v42;
  v43 = v79;
  v40[2] = v78;
  v40[3] = v43;
  v44 = v65;
  sub_19A7A9E54();
  sub_19A623714(&unk_1EAFCFF98, &qword_1EAFCFF58, &qword_19A7C33D8, MEMORY[0x1E6981880]);
  v45 = v61;
  sub_19A7AA194();
  (*(v66 + 8))(v44, v67);
  sub_19A5F2B54(v14, &qword_1EAFCFF58, &qword_19A7C33D8);
  v46 = (v18 + *(v68 + 20));
  v47 = *v46;
  v48 = v46[1];
  v74 = v47;
  v75 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF460, &qword_19A7C3410);
  sub_19A7AA464();
  v49 = v73;
  v50 = v62;
  (*(v63 + 32))(v62, v45, v64);
  *(v50 + *(v59 + 36)) = v49;
  v51 = v71;
  sub_19A793B90(v18, v71);
  v52 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v53 = swift_allocObject();
  sub_19A793BF4(v51, v53 + v52);
  v54 = v72;
  sub_19A62376C(v50, v72, &qword_1EAFCFF68, &qword_19A7C33E8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFB0, &qword_19A7C3420);
  v56 = (v54 + *(result + 36));
  *v56 = sub_19A793C58;
  v56[1] = v53;
  v56[2] = 0;
  v56[3] = 0;
  return result;
}

uint64_t sub_19A791CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFB8, &qword_19A7C3428);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFC0, &qword_19A7C3430);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFC8, &qword_19A7C3438);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v39 - v13;
  *v6 = sub_19A7A9BA4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFD0, &qword_19A7C3440);
  sub_19A791F6C(a1, &v6[*(v15 + 44)]);
  sub_19A7AA664();
  sub_19A7A9A44();
  sub_19A62376C(v6, v10, &qword_1EAFCFFB8, &qword_19A7C3428);
  v16 = &v10[*(v8 + 44)];
  v17 = v39[5];
  *(v16 + 4) = v39[4];
  *(v16 + 5) = v17;
  *(v16 + 6) = v39[6];
  v18 = v39[1];
  *v16 = v39[0];
  *(v16 + 1) = v18;
  v19 = v39[3];
  *(v16 + 2) = v39[2];
  *(v16 + 3) = v19;
  LOBYTE(v6) = sub_19A7A9EF4();
  sub_19A7A9754();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_19A62376C(v10, v14, &qword_1EAFCFFC0, &qword_19A7C3430);
  v28 = &v14[*(v12 + 44)];
  *v28 = v6;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  LOBYTE(v6) = sub_19A7A9F24();
  sub_19A7A9754();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_19A62376C(v14, a2, &qword_1EAFCFFC8, &qword_19A7C3438);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFD8, &qword_19A7C3448);
  v38 = a2 + *(result + 36);
  *v38 = v6;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  return result;
}

uint64_t sub_19A791F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v59 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFE0, &qword_19A7C3450);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v54 = (&v49 - v3);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFE8, &unk_19A7C3458) - 8;
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v49 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFF0, &qword_19A7B7970);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_19A7AA024();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_19A7AA384();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFF8, &qword_19A7C3468);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v53 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v51 = &v49 - v23;
  sub_19A7AA3D4();
  (*(v17 + 104))(v19, *MEMORY[0x1E6981630], v16);
  v50 = sub_19A7AA3C4();

  (*(v17 + 8))(v19, v16);
  (*(v13 + 104))(v15, *MEMORY[0x1E6980EE8], v12);
  v24 = sub_19A7A9F84();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  sub_19A7A9FA4();
  v25 = sub_19A7A9FD4();
  sub_19A5F2B54(v11, &qword_1EAFCFFF0, &qword_19A7B7970);
  (*(v13 + 8))(v15, v12);
  KeyPath = swift_getKeyPath();
  v27 = sub_19A7AA314();
  type metadata accessor for PhotoConfirmationMiniTipView(0);
  v28 = v52;
  sub_19A7AA644();
  sub_19A7A9864();
  LOBYTE(v72[0]) = 1;
  LOBYTE(v11) = sub_19A7A9F14();
  sub_19A7A9754();
  v68 = 0;
  v60 = v50;
  LOWORD(v61) = 1;
  *(&v61 + 1) = KeyPath;
  *&v62 = v25;
  *(&v62 + 1) = v27;
  v63 = v69;
  v64 = v70;
  v65 = v71;
  LOBYTE(v66) = v11;
  *(&v66 + 1) = v29;
  *&v67[0] = v30;
  *(&v67[0] + 1) = v31;
  *&v67[1] = v32;
  BYTE8(v67[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD0000, &qword_19A7C34A0);
  sub_19A793CD4();
  v33 = v51;
  sub_19A7AA174();
  v72[6] = v66;
  v73[0] = v67[0];
  *(v73 + 9) = *(v67 + 9);
  v72[2] = v62;
  v72[3] = v63;
  v72[4] = v64;
  v72[5] = v65;
  v72[0] = v60;
  v72[1] = v61;
  sub_19A5F2B54(v72, &qword_1EAFD0000, &qword_19A7C34A0);
  v34 = sub_19A7A9C34();
  v35 = v54;
  *v54 = v34;
  v35[1] = 0x4010000000000000;
  *(v35 + 16) = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD0050, &qword_19A7C34C8);
  sub_19A792690(v28, v35 + *(v36 + 44));
  sub_19A7AA634();
  sub_19A7A9A44();
  v37 = v35;
  v38 = v55;
  sub_19A62376C(v37, v55, &qword_1EAFCFFE0, &qword_19A7C3450);
  v39 = v56;
  v40 = (v38 + *(v57 + 44));
  v41 = v65;
  v40[4] = v64;
  v40[5] = v41;
  v40[6] = v66;
  v42 = v61;
  *v40 = v60;
  v40[1] = v42;
  v43 = v63;
  v40[2] = v62;
  v40[3] = v43;
  sub_19A62376C(v38, v39, &qword_1EAFCFFE8, &unk_19A7C3458);
  v44 = v53;
  sub_19A60F0CC(v33, v53, &qword_1EAFCFFF8, &qword_19A7C3468);
  v45 = v58;
  sub_19A60F0CC(v39, v58, &qword_1EAFCFFE8, &unk_19A7C3458);
  v46 = v59;
  sub_19A60F0CC(v44, v59, &qword_1EAFCFFF8, &qword_19A7C3468);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD0058, &qword_19A7C34D0);
  sub_19A60F0CC(v45, v46 + *(v47 + 48), &qword_1EAFCFFE8, &unk_19A7C3458);
  sub_19A5F2B54(v39, &qword_1EAFCFFE8, &unk_19A7C3458);
  sub_19A5F2B54(v33, &qword_1EAFCFFF8, &qword_19A7C3468);
  sub_19A5F2B54(v45, &qword_1EAFCFFE8, &unk_19A7C3458);
  return sub_19A5F2B54(v44, &qword_1EAFCFFF8, &qword_19A7C3468);
}

uint64_t sub_19A792690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFF0, &qword_19A7B7970);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v150 = v126 - v4;
  v151 = sub_19A7AA024();
  v149 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v148 = v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD0060, &qword_19A7C34D8);
  MEMORY[0x1EEE9AC00](v157);
  v156 = v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v153 = v126 - v8;
  v164 = sub_19A7A9934();
  v161 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v163 = v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v162 = v126 - v11;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD0068, &qword_19A7C34E0);
  MEMORY[0x1EEE9AC00](v152);
  v159 = v126 - v12;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD0070, &qword_19A7C34E8);
  v160 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v136 = v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v146 = v126 - v15;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD0078, &qword_19A7C34F0);
  MEMORY[0x1EEE9AC00](v154);
  v139 = v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v135 = v126 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v138 = v126 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v145 = v126 - v22;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFD0080, &qword_19A7C34F8);
  MEMORY[0x1EEE9AC00](v144);
  v137 = v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v143 = v126 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v155 = v126 - v27;
  v141 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  v28 = *(v141 + 28);
  v147 = a1;
  v29 = (a1 + v28);
  v30 = v29[1];
  *&v174 = *v29;
  *(&v174 + 1) = v30;
  v31 = sub_19A639920();

  v142 = v31;
  v32 = sub_19A7AA094();
  v34 = v33;
  v36 = v35;
  sub_19A7AA304();
  v37 = sub_19A7AA044();
  v39 = v38;
  v41 = v40;
  v43 = v42;

  sub_19A642CC8(v32, v34, v36 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v174) = v41 & 1;
  LOBYTE(v167) = 1;
  v45 = sub_19A7AA014();
  v46 = swift_getKeyPath();
  *&v174 = v37;
  *(&v174 + 1) = v39;
  LOBYTE(v175) = v41 & 1;
  v47 = v161;
  *(&v175 + 1) = v43;
  v176 = KeyPath;
  LOBYTE(v177) = 1;
  *(&v177 + 1) = 256;
  *(&v177 + 1) = v46;
  *&v178 = v45;
  v48 = *MEMORY[0x1E697E6F8];
  v49 = *(v161 + 104);
  v50 = v164;
  v49(v162, *MEMORY[0x1E697E6F8], v164);
  v51 = *MEMORY[0x1E697E6D0];
  v49(v163, *MEMORY[0x1E697E6D0], v50);
  v52 = sub_19A793B48(&qword_1EAFCFF70, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  result = sub_19A7AAFC4();
  if (result)
  {
    v132 = v48;
    v133 = v51;
    v54 = *(v47 + 32);
    v55 = v153;
    v134 = v52;
    v56 = v164;
    v54(v153, v162, v164);
    v131 = v47 + 104;
    v57 = v157;
    v54((v55 + *(v157 + 48)), v163, v56);
    v130 = v49;
    v58 = v156;
    sub_19A60F0CC(v55, v156, &qword_1EAFD0060, &qword_19A7C34D8);
    v129 = *(v57 + 48);
    v59 = v159;
    v54(v159, v58, v56);
    v60 = *(v47 + 8);
    v60(v58 + v129, v56);
    sub_19A793F80(v55, v58);
    v61 = &v59[*(v152 + 36)];
    v62 = v58 + *(v57 + 48);
    v128 = v54;
    v129 = v47 + 32;
    v54(v61, v62, v56);
    v161 = v47 + 8;
    v127 = v60;
    v60(v58, v56);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD0090, &qword_19A7C3530);
    v64 = sub_19A793ED0(&qword_1EAFD0098, &qword_1EAFD0090, &qword_19A7C3530, sub_19A793FF0);
    v65 = sub_19A623714(&qword_1EAFD00D0, &qword_1EAFD0068, &qword_19A7C34E0, MEMORY[0x1E69E5FB8]);
    v66 = v146;
    v67 = v159;
    v126[2] = v64;
    v126[3] = v63;
    v126[1] = v65;
    sub_19A7AA134();
    sub_19A5F2B54(v67, &qword_1EAFD0068, &qword_19A7C34E0);
    v181[2] = v176;
    v181[3] = v177;
    v182 = v178;
    v181[0] = v174;
    v181[1] = v175;
    sub_19A5F2B54(v181, &qword_1EAFD0090, &qword_19A7C3530);
    sub_19A7AA634();
    sub_19A7A9A44();
    v68 = *(v160 + 32);
    v69 = v145;
    v160 += 32;
    v126[0] = v68;
    v68(v145, v66, v158);
    v70 = &v69[*(v154 + 36)];
    v71 = v170;
    v72 = v172;
    v73 = v173;
    *(v70 + 4) = v171;
    *(v70 + 5) = v72;
    *(v70 + 6) = v73;
    v74 = v168;
    *v70 = v167;
    *(v70 + 1) = v74;
    *(v70 + 2) = v169;
    *(v70 + 3) = v71;
    LOBYTE(v59) = sub_19A7A9F54();
    sub_19A7A9754();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v83 = v69;
    v84 = v143;
    sub_19A62376C(v83, v143, &qword_1EAFD0078, &qword_19A7C34F0);
    v85 = v84 + *(v144 + 36);
    *v85 = v59;
    *(v85 + 8) = v76;
    *(v85 + 16) = v78;
    *(v85 + 24) = v80;
    *(v85 + 32) = v82;
    *(v85 + 40) = 0;
    sub_19A62376C(v84, v155, &unk_1EAFD0080, &qword_19A7C34F8);
    v86 = (v147 + *(v141 + 32));
    v87 = v86[1];
    *&v174 = *v86;
    *(&v174 + 1) = v87;

    v88 = sub_19A7AA094();
    v90 = v89;
    LOBYTE(v55) = v91;
    sub_19A7AA314();
    v92 = sub_19A7AA044();
    v146 = v93;
    v147 = v92;
    LOBYTE(v63) = v94;
    v145 = v95;

    sub_19A642CC8(v88, v90, v55 & 1);

    v96 = swift_getKeyPath();
    LOBYTE(v55) = v63 & 1;
    LOBYTE(v174) = v63 & 1;
    LOBYTE(v165[0]) = 1;
    v97 = v148;
    v98 = v149;
    v99 = v151;
    (*(v149 + 104))(v148, *MEMORY[0x1E6980EF0], v151);
    v100 = sub_19A7A9F84();
    v101 = v150;
    (*(*(v100 - 8) + 56))(v150, 1, 1, v100);
    sub_19A7A9FA4();
    v102 = sub_19A7A9FD4();
    sub_19A5F2B54(v101, &qword_1EAFCFFF0, &qword_19A7B7970);
    (*(v98 + 8))(v97, v99);
    v103 = swift_getKeyPath();
    *&v174 = v147;
    *(&v174 + 1) = v146;
    LOBYTE(v175) = v55;
    *(&v175 + 1) = v145;
    v176 = v96;
    LOBYTE(v177) = 1;
    *(&v177 + 1) = 256;
    *(&v177 + 1) = v103;
    *&v178 = v102;
    v104 = v164;
    v105 = v130;
    v130(v162, v132, v164);
    v105(v163, v133, v104);
    result = sub_19A7AAFC4();
    if (result)
    {
      v106 = v153;
      v107 = v164;
      v108 = v128;
      v128(v153, v162, v164);
      v109 = v157;
      v108(v106 + *(v157 + 48), v163, v107);
      v110 = v156;
      sub_19A60F0CC(v106, v156, &qword_1EAFD0060, &qword_19A7C34D8);
      v111 = *(v109 + 48);
      v112 = v159;
      v108(v159, v110, v107);
      v113 = v127;
      v127(v110 + v111, v107);
      sub_19A793F80(v106, v110);
      v108(v112 + *(v152 + 36), (v110 + *(v109 + 48)), v107);
      v113(v110, v107);
      v114 = v136;
      sub_19A7AA134();
      sub_19A5F2B54(v112, &qword_1EAFD0068, &qword_19A7C34E0);
      v165[2] = v176;
      v165[3] = v177;
      v166 = v178;
      v165[0] = v174;
      v165[1] = v175;
      sub_19A5F2B54(v165, &qword_1EAFD0090, &qword_19A7C3530);
      sub_19A7AA634();
      sub_19A7A9A44();
      v115 = v135;
      (v126[0])(v135, v114, v158);
      v116 = (v115 + *(v154 + 36));
      v117 = v179;
      v116[4] = v178;
      v116[5] = v117;
      v116[6] = v180;
      v118 = v175;
      *v116 = v174;
      v116[1] = v118;
      v119 = v177;
      v116[2] = v176;
      v116[3] = v119;
      v120 = v138;
      sub_19A62376C(v115, v138, &qword_1EAFD0078, &qword_19A7C34F0);
      v121 = v155;
      v122 = v137;
      sub_19A60F0CC(v155, v137, &unk_1EAFD0080, &qword_19A7C34F8);
      v123 = v139;
      sub_19A60F0CC(v120, v139, &qword_1EAFD0078, &qword_19A7C34F0);
      v124 = v140;
      sub_19A60F0CC(v122, v140, &unk_1EAFD0080, &qword_19A7C34F8);
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFD00D8, &unk_19A7C3550);
      sub_19A60F0CC(v123, v124 + *(v125 + 48), &qword_1EAFD0078, &qword_19A7C34F0);
      sub_19A5F2B54(v120, &qword_1EAFD0078, &qword_19A7C34F0);
      sub_19A5F2B54(v121, &unk_1EAFD0080, &qword_19A7C34F8);
      sub_19A5F2B54(v123, &qword_1EAFD0078, &qword_19A7C34F0);
      return sub_19A5F2B54(v122, &unk_1EAFD0080, &qword_19A7C34F8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_19A793508()
{
  sub_19A7AA6C4();
  sub_19A7A98C4();

  return result;
}

uint64_t sub_19A793574(uint64_t a1)
{
  type metadata accessor for PhotoConfirmationMiniTipView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF460, &qword_19A7C3410);
  return sub_19A7AA474();
}

uint64_t sub_19A79361C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_19A7A9B34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_19A60F0CC(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_19A7AB594();
    v19 = sub_19A7A9EB4();
    sub_19A7A9324();

    sub_19A7A9B24();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_19A793820()
{
  sub_19A7AB0A4();
  sub_19A639920();
  return sub_19A7AA094();
}

uint64_t sub_19A793878()
{
  sub_19A7AB0A4();
  sub_19A639920();
  return sub_19A7AA094();
}

uint64_t sub_19A7938D0()
{
  v0 = sub_19A7A97A4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  sub_19A79361C(&qword_1EAFCD0F0, &qword_19A7B9B50, MEMORY[0x1E697DBD0], &v9 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x1E697DBB8], v0);
  sub_19A7A9794();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return sub_19A7AA3A4();
}

uint64_t sub_19A793A74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_19A793B48(&qword_1EAFCD0F8, type metadata accessor for StickerNotAvailableTip, &unk_19A7C3320);
  result = MEMORY[0x19A903A00](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_19A793B48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19A793B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A793BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_19A793C58()
{
  type metadata accessor for PhotoConfirmationMiniTipView(0);

  return sub_19A793508();
}

unint64_t sub_19A793CD4()
{
  result = qword_1EAFD0008;
  if (!qword_1EAFD0008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFD0000, &qword_19A7C34A0);
    sub_19A793D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD0008);
  }

  return result;
}

unint64_t sub_19A793D60()
{
  result = qword_1EAFD0010;
  if (!qword_1EAFD0010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFD0018, &qword_19A7C34A8);
    sub_19A793DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD0010);
  }

  return result;
}

unint64_t sub_19A793DEC()
{
  result = qword_1EAFD0020;
  if (!qword_1EAFD0020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFD0028, &qword_19A7C34B0);
    sub_19A793ED0(&qword_1EAFD0030, &qword_1EAFD0038, &qword_19A7C34B8, sub_19A618760);
    sub_19A623714(&qword_1EAFCA6D0, &qword_1EAFCDEF8, &qword_19A7C34C0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD0020);
  }

  return result;
}

uint64_t sub_19A793ED0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_19A623714(&unk_1EAFCA6C0, &qword_1EAFCC7A0, &qword_19A7B84E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A793F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD0060, &qword_19A7C34D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A793FF0()
{
  result = qword_1EAFD00A0;
  if (!qword_1EAFD00A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFD00A8, &qword_19A7C3538);
    sub_19A79407C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD00A0);
  }

  return result;
}

unint64_t sub_19A79407C()
{
  result = qword_1EAFD00B0;
  if (!qword_1EAFD00B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFD00B8, &qword_19A7C3540);
    sub_19A623714(&qword_1EAFD00C0, &qword_1EAFD00C8, &qword_19A7C3548, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD00B0);
  }

  return result;
}

uint64_t sub_19A794134(uint64_t a1)
{
  v2 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_19A794190(uint64_t a1, uint64_t a2)
{
  v28[0] = a2;
  v3 = type metadata accessor for PhotoConfirmationMiniTipView(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v28 - v11);
  v13 = sub_19A7AB0A4();
  v15 = v14;
  v16 = sub_19A7AB0A4();
  v18 = v17;
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFA8, &qword_19A7C3418);
  swift_storeEnumTagMultiPayload();
  v19 = (v12 + v4[7]);
  v28[1] = 0;
  sub_19A7AA454();
  v20 = v28[3];
  *v19 = v28[2];
  v19[1] = v20;
  *(v12 + v4[8]) = 0x4046800000000000;
  v21 = (v12 + v4[9]);
  *v21 = v13;
  v21[1] = v15;
  v22 = (v12 + v4[10]);
  *v22 = v16;
  v22[1] = v18;
  sub_19A793B90(v12, v9);
  objc_allocWithZone(type metadata accessor for PhotoConfirmationTipHostingController(0));
  sub_19A793B90(v9, v6);
  v23 = sub_19A7A9C84();
  sub_19A794134(v9);
  v24 = v23;
  [v24 setModalPresentationStyle_];
  v25 = [v24 popoverPresentationController];

  if (v25)
  {
    [v25 setPermittedArrowDirections_];
    [v25 setSourceView_];
    sub_19A794448();
    v26 = sub_19A7AB234();
    [v25 setPassthroughViews_];

    [v25 setDelegate_];
    sub_19A794134(v12);
  }

  else
  {
    sub_19A794134(v12);

    return 0;
  }

  return v24;
}

unint64_t sub_19A794448()
{
  result = qword_1EAFCA430;
  if (!qword_1EAFCA430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAFCA430);
  }

  return result;
}

unint64_t sub_19A794494()
{
  result = qword_1EAFD00E8;
  if (!qword_1EAFD00E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCFFB0, &qword_19A7C3420);
    sub_19A794520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD00E8);
  }

  return result;
}

unint64_t sub_19A794520()
{
  result = qword_1EAFD00F0;
  if (!qword_1EAFD00F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCFF68, &qword_19A7C33E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCFF58, &qword_19A7C33D8);
    sub_19A623714(&unk_1EAFCFF98, &qword_1EAFCFF58, &qword_19A7C33D8, MEMORY[0x1E6981880]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD00F0);
  }

  return result;
}

uint64_t sub_19A794620()
{
  swift_getKeyPath();
  sub_19A794A9C();
  sub_19A7A90C4();

  v1 = *(v0 + 16);

  return v1;
}

double sub_19A7946A0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19A794A9C();
  sub_19A7A90C4();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;

  return result;
}

double sub_19A79471C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_19A79475C(v1, v2);
}

double sub_19A79475C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_19A7AC064() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19A794A9C();
    sub_19A7A90B4();
  }

  return result;
}

uint64_t sub_19A79488C()
{

  v1 = OBJC_IVAR____TtC10StickerKit29UnicodeCharacterCellViewModel___observationRegistrar;
  v2 = sub_19A7A9104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnicodeCharacterCellViewModel(uint64_t a1)
{
  result = qword_1EAFD0108;
  if (!qword_1EAFD0108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A794984(uint64_t a1)
{
  result = sub_19A7A9104();
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

double sub_19A794A20@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_19A794A9C();
  sub_19A7A90C4();

  v4 = *(v3 + 24);
  *a1 = *(v3 + 16);
  a1[1] = v4;

  return result;
}

unint64_t sub_19A794A9C()
{
  result = qword_1EAFD0118;
  if (!qword_1EAFD0118)
  {
    type metadata accessor for UnicodeCharacterCellViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD0118);
  }

  return result;
}

void sub_19A794AF4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_19A794B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFF0, &qword_19A7B7970);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v9 = sub_19A7AA654();
  v11 = v10;
  v19 = a1;
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD0120, &qword_19A7C3700);
  sub_19A7AA464();
  v12 = v18[1];
  swift_getKeyPath();
  v19 = v12;
  sub_19A794A9C();
  sub_19A7A90C4();

  v14 = *(v12 + 16);
  v13 = *(v12 + 24);

  v15 = sub_19A7A9F84();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = sub_19A7A9FC4();
  sub_19A794D10(v8);
  result = swift_getKeyPath();
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v14;
  *(a3 + 24) = v13;
  *(a3 + 32) = 0;
  *(a3 + 40) = MEMORY[0x1E69E7CC0];
  *(a3 + 48) = result;
  *(a3 + 56) = v16;
  return result;
}

uint64_t sub_19A794D10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFF0, &qword_19A7B7970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A794D78()
{
  result = qword_1EAFD0128;
  if (!qword_1EAFD0128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFD0130, &qword_19A7C3738);
    sub_19A623714(&qword_1EAFD0138, &qword_1EAFD0140, &unk_19A7C3740, MEMORY[0x1E6981880]);
    sub_19A623714(&unk_1EAFCA6C0, &qword_1EAFCC7A0, &qword_19A7B84E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD0128);
  }

  return result;
}

__n128 __swift_memcpy130_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_19A794EEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 130))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A794F34(uint64_t result, int a2, int a3)
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
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 130) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 130) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_19A794FA8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 5)
  {
    goto LABEL_8;
  }

  v3 = 16.0;
  if (a1 == 2)
  {
    v12 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v14 = 1;
    v13 = 5;
    v15 = 16.0;
    goto LABEL_10;
  }

  if (a1 != 1)
  {
LABEL_8:
    v12 = 0;
    v14 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v15 = 8.0;
    v3 = 0.0;
    v13 = 6;
  }

  else
  {
    v4 = a3;
    v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportStickersApp;
    swift_beginAccess();
    v7 = a2;
    v8 = *(a2 + v5);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8 == 1)
    {
      v10 = OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji;
      v11 = v7;
      swift_beginAccess();
      if (!*(v11 + v10))
      {
        v9 = &unk_1F0DC48C8;
      }
    }

    v12 = 1;
    v13 = 5;
    v14 = 1;
    v15 = 16.0;
    a3 = v4;
  }

LABEL_10:
  *a3 = 1;
  *(a3 + 8) = v13;
  *(a3 + 16) = 0;
  __asm { FMOV            V1.2D, #8.0 }

  *(a3 + 24) = _Q1;
  *(a3 + 40) = _Q1;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = v15;
  *(a3 + 80) = 0;
  *(a3 + 88) = v3;
  __asm { FMOV            V0.2D, #18.0 }

  *(a3 + 96) = result;
  *(a3 + 112) = 0x4032000000000000;
  *(a3 + 120) = v9;
  *(a3 + 128) = v14;
  *(a3 + 129) = v12;
  return result;
}

uint64_t sub_19A795104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = OBJC_IVAR___STKImageGlyphViewConfiguration_userInterfaceIdiom;
  swift_beginAccess();
  if (*(a2 + v6) != 2)
  {
    v20 = OBJC_IVAR___STKImageGlyphViewConfiguration_isKeyboardMinorEdgeWidth;
    swift_beginAccess();
    v10 = *(a2 + v20);
LABEL_15:
    if (v10)
    {
      v13 = 16.0;
    }

    else
    {
      v13 = 8.0;
    }

    v21 = OBJC_IVAR___STKImageGlyphViewConfiguration_screenToNativeScaleRatio;
    swift_beginAccess();
    v12 = 0;
    v22 = *(a2 + v21);
    if (v22 != 0.0 && v22 < 1.0)
    {
      v11 = v22 * 0.5;
    }

    else
    {
      v11 = *(a2 + v21);
    }

    if (a1 == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  v7 = OBJC_IVAR___STKImageGlyphViewConfiguration_keyboardWidth;
  swift_beginAccess();
  v8 = *(a2 + v7);
  v9 = OBJC_IVAR___STKImageGlyphViewConfiguration_isKeyboardMinorEdgeWidth;
  swift_beginAccess();
  v10 = *(a2 + v9);
  if (v8 <= 430.0)
  {
    goto LABEL_15;
  }

  v11 = 1.0;
  v12 = 1;
  v13 = 56.0;
  if (a1 == 1)
  {
LABEL_4:
    v14 = 3;
    if (!v10)
    {
      v14 = 4;
    }

    v15 = 2;
    if (v10)
    {
      v15 = 3;
    }

    if (v12)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    v17 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportStickersApp;
    swift_beginAccess();
    if (*(a2 + v17) == 1 && (v18 = OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji, swift_beginAccess(), (*(a2 + v18) & 1) == 0))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF1B0, &unk_19A7B93D0);
      result = swift_allocObject();
      *(result + 16) = xmmword_19A7B6C30;
      *(result + 32) = v16 - 1;
    }

    else
    {
      result = MEMORY[0x1E69E7CC0];
    }

    v34 = 27.0;
    v27 = 20.0;
    if (v10)
    {
      v34 = 20.0;
    }

    v24 = v34 * v11;
    v26 = 13.0;
    v29 = 1;
    v25 = 1;
    v30 = 1;
    goto LABEL_48;
  }

LABEL_25:
  v24 = v11 * 13.0;
  if (a1 == 2)
  {
    v25 = v12 ^ 1;
    v24 = v11 * 20.0;
    v26 = 12.0;
    v27 = 18.0;
    if (v12)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    v29 = 0;
    if ((v10 & 1) == 0)
    {
      v26 = 14.0;
      v24 = v11 * 27.0;
    }

    v30 = 1;
    if (v10)
    {
      v16 = 3;
    }

    else
    {
      v16 = v28;
    }

    result = MEMORY[0x1E69E7CC0];
  }

  else
  {
    if (v10)
    {
      v31 = 4;
    }

    else
    {
      v31 = 3;
    }

    v26 = 13.0;
    v27 = 18.0;
    v32 = 3;
    v29 = 0;
    if (!v10)
    {
      v32 = 5;
    }

    v33 = v12 == 0;
    v25 = 0;
    v30 = 0;
    if (v33)
    {
      v16 = v31;
    }

    else
    {
      v16 = v32;
    }

    result = MEMORY[0x1E69E7CC0];
  }

LABEL_48:
  *a3 = 0;
  *(a3 + 8) = v16;
  *(a3 + 16) = v30;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = v24;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = v26;
  *(a3 + 88) = v13;
  *(a3 + 96) = xmmword_19A7C3750;
  *(a3 + 112) = v27;
  *(a3 + 120) = result;
  *(a3 + 128) = v25;
  *(a3 + 129) = v29;
  return result;
}

unint64_t sub_19A795464()
{
  result = qword_1EAFD0148;
  if (!qword_1EAFD0148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD0148);
  }

  return result;
}

id sub_19A7954B8(void *a1)
{

  return sub_19A7173C4(a1, &OBJC_IVAR____TtC10StickerKit24StickerComicStrokeShader_sigma);
}

id sub_19A795554(void *a1)
{

  return sub_19A7173C4(a1, OBJC_IVAR____TtC10StickerKit32StickerComicStrokeAndBlendShader_sigma);
}

id sub_19A7955CC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_19A795628(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_19A795708()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 112));

  return v0;
}

uint64_t sub_19A79580C()
{
  sub_19A795708();

  return swift_deallocClassInstance();
}

void sub_19A7958EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*v2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v8 = *(TupleTypeMetadata2 + 48);
    v9 = *(*v4 + 104);
    swift_beginAccess();
    (*(*(v5 - 8) + 16))(a2, v4 + v9, v5);
    (*(*(v6 - 8) + 16))(a2 + v8, v4 + *(*v4 + 112), v6);
    (*(*(TupleTypeMetadata2 - 8) + 56))(a2, 0, 1, TupleTypeMetadata2);
    *v2 = *(v4 + *(*v4 + 128));
  }

  else
  {
    v10 = swift_getTupleTypeMetadata2();
    v11 = *(*(v10 - 8) + 56);

    v11(a2, 1, 1, v10);
  }
}

void *sub_19A795AD4()
{

  sub_19A60126C(*(v0 + 48), *(v0 + 56));
  return v0;
}

uint64_t sub_19A795B0C()
{
  sub_19A795AD4();

  return swift_deallocClassInstance();
}

void sub_19A795B74(void *a1@<X8>)
{
  sub_19A7958E4();
  v3 = v2;

  *a1 = v3;
}

uint64_t sub_19A795BB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_19A795C1C(v2, a1, a2);

  return v3;
}

uint64_t sub_19A795C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_19A795C5C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_19A795CB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_19A795D24(uint64_t a1)
{
  result = sub_19A795E84(&qword_1ED8B33F8, MEMORY[0x1E6968010], MEMORY[0x1E6967FF0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A795D7C(uint64_t a1)
{
  result = sub_19A795E84(&qword_1ED8B3408, MEMORY[0x1E6967F70], MEMORY[0x1E6967F50]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A795DD4(uint64_t a1)
{
  result = sub_19A795E84(&unk_1EAFCB0A0, MEMORY[0x1E69689D8], MEMORY[0x1E69689B8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A795E2C(uint64_t a1)
{
  result = sub_19A795E84(&qword_1EAFCB0B8, MEMORY[0x1E69689B0], MEMORY[0x1E6968990]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A795E84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19A795F10()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFD01E0);
  __swift_project_value_buffer(v0, qword_1EAFD01E0);
  return sub_19A7A9374();
}

StickerKit::ImageGlyphInterfaceIdiom_optional __swiftcall ImageGlyphInterfaceIdiom.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if ((rawValue + 1) < 7)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_19A795FB0()
{
  v1 = *v0;
  sub_19A7AC184();
  MEMORY[0x19A9065D0](v1 - 1);
  return sub_19A7AC1B4();
}

uint64_t sub_19A796028(uint64_t a1)
{
  v2 = *v1;
  sub_19A7AC184();
  MEMORY[0x19A9065D0](v2 - 1);
  return sub_19A7AC1B4();
}

uint64_t sub_19A796084@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_userInterfaceIdiom;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_19A7960D8(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_userInterfaceIdiom;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

double sub_19A7961D0()
{
  v1 = OBJC_IVAR___STKImageGlyphViewConfiguration_keyboardWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A796268(double a1)
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_keyboardWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19A796360()
{
  v1 = OBJC_IVAR___STKImageGlyphViewConfiguration_isKeyboardMinorEdgeWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A7963F8(char a1)
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_isKeyboardMinorEdgeWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19A7964F0()
{
  v1 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A796588(char a1)
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19A796680()
{
  v1 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A796718(char a1)
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_19A796810()
{
  v1 = OBJC_IVAR___STKImageGlyphViewConfiguration_scale;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A7968A8(double a1)
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_scale;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_19A7969A0()
{
  v1 = OBJC_IVAR___STKImageGlyphViewConfiguration_screenToNativeScaleRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A796A38(double a1)
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_screenToNativeScaleRatio;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19A796B30()
{
  v1 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportStickersApp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A796BC8(char a1)
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportStickersApp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19A796CC0()
{
  v1 = OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A796D58(char a1)
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ImageGlyphViewConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ImageGlyphViewConfiguration.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ImageGlyphViewConfiguration();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_19A796EF8()
{
  result = qword_1EAFD0240;
  if (!qword_1EAFD0240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD0240);
  }

  return result;
}

double keypath_get_7Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_set_8Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_19A797604(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___STKImageGlyphViewConfiguration_userInterfaceIdiom;
  swift_beginAccess();
  LODWORD(v4) = *(a1 + v4);
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_userInterfaceIdiom;
  swift_beginAccess();
  if (v4 == *(a2 + v5) && (v6 = OBJC_IVAR___STKImageGlyphViewConfiguration_keyboardWidth, swift_beginAccess(), v7 = *(a1 + v6), v8 = OBJC_IVAR___STKImageGlyphViewConfiguration_keyboardWidth, swift_beginAccess(), v7 == *(a2 + v8)) && (v9 = OBJC_IVAR___STKImageGlyphViewConfiguration_isKeyboardMinorEdgeWidth, swift_beginAccess(), LODWORD(v9) = *(a1 + v9), v10 = OBJC_IVAR___STKImageGlyphViewConfiguration_isKeyboardMinorEdgeWidth, swift_beginAccess(), v9 == *(a2 + v10)) && (v11 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover, swift_beginAccess(), LODWORD(v11) = *(a1 + v11), v12 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover, swift_beginAccess(), v11 == *(a2 + v12)) && (v13 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph, swift_beginAccess(), LODWORD(v13) = *(a1 + v13), v14 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph, swift_beginAccess(), v13 == *(a2 + v14)) && (v15 = OBJC_IVAR___STKImageGlyphViewConfiguration_scale, swift_beginAccess(), v16 = *(a1 + v15), v17 = OBJC_IVAR___STKImageGlyphViewConfiguration_scale, swift_beginAccess(), v16 == *(a2 + v17)) && (v18 = OBJC_IVAR___STKImageGlyphViewConfiguration_screenToNativeScaleRatio, swift_beginAccess(), v19 = *(a1 + v18), v20 = OBJC_IVAR___STKImageGlyphViewConfiguration_screenToNativeScaleRatio, swift_beginAccess(), v19 == *(a2 + v20)) && (v21 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportStickersApp, swift_beginAccess(), LODWORD(v21) = *(a1 + v21), v22 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportStickersApp, swift_beginAccess(), v21 == *(a2 + v22)))
  {
    v25 = OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji;
    swift_beginAccess();
    v26 = *(a1 + v25);
    v27 = OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji;
    swift_beginAccess();
    v23 = v26 ^ *(a2 + v27) ^ 1;
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

id sub_19A7978B8(uint64_t a1, double a2)
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_userInterfaceIdiom;
  v2[OBJC_IVAR___STKImageGlyphViewConfiguration_userInterfaceIdiom] = 0;
  v4 = OBJC_IVAR___STKImageGlyphViewConfiguration_keyboardWidth;
  *&v2[OBJC_IVAR___STKImageGlyphViewConfiguration_keyboardWidth] = 0;
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_isKeyboardMinorEdgeWidth;
  v2[OBJC_IVAR___STKImageGlyphViewConfiguration_isKeyboardMinorEdgeWidth] = 0;
  v6 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover;
  v2[OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover] = 0;
  v7 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph;
  v2[OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph] = 0;
  v8 = OBJC_IVAR___STKImageGlyphViewConfiguration_scale;
  *&v2[OBJC_IVAR___STKImageGlyphViewConfiguration_scale] = 0x3FF0000000000000;
  v9 = OBJC_IVAR___STKImageGlyphViewConfiguration_screenToNativeScaleRatio;
  *&v2[OBJC_IVAR___STKImageGlyphViewConfiguration_screenToNativeScaleRatio] = 0x3FF0000000000000;
  v10 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportStickersApp;
  v2[OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportStickersApp] = 1;
  v11 = OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji;
  v2[OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji] = 0;
  if (a1)
  {
    v27 = v11;
    v13 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_userInterfaceIdiom;
    v26 = v10;
    swift_beginAccess();
    ImageGlyphInterfaceIdiom.init(rawValue:)(*(a1 + v13));
    if (v28 == 7)
    {
      v15 = 0;
    }

    else
    {
      v15 = v28;
    }

    swift_beginAccess();
    v2[v3] = v15;
    v16 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_keyboardWidth;
    swift_beginAccess();
    v17 = *(a1 + v16);
    swift_beginAccess();
    *&v2[v4] = v17;
    v18 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isKeyboardMinorEdgeWidth;
    swift_beginAccess();
    LOBYTE(v18) = *(a1 + v18);
    swift_beginAccess();
    v2[v5] = v18;
    v19 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isInPopover;
    swift_beginAccess();
    LOBYTE(v19) = *(a1 + v19);
    swift_beginAccess();
    v2[v6] = v19;
    v20 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportImageGlyph;
    swift_beginAccess();
    LOBYTE(v20) = *(a1 + v20);
    swift_beginAccess();
    v2[v7] = v20;
    swift_beginAccess();
    *&v2[v8] = a2;
    v21 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_screenToNativeScaleRatio;
    swift_beginAccess();
    v22 = *(a1 + v21);
    swift_beginAccess();
    *&v2[v9] = v22;
    v23 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportStickersApp;
    swift_beginAccess();
    LOBYTE(v23) = *(a1 + v23);
    swift_beginAccess();
    v2[v26] = v23;
    v24 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isRunningInGenmoji;
    swift_beginAccess();
    LOBYTE(v24) = *(a1 + v24);
    swift_beginAccess();
    v2[v27] = v24;
  }

  v29.receiver = v2;
  v29.super_class = type metadata accessor for ImageGlyphViewConfiguration();
  return objc_msgSendSuper2(&v29, sel_init);
}

uint64_t sub_19A797BB8()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFD0250);
  __swift_project_value_buffer(v0, qword_1EAFD0250);
  return sub_19A7A9374();
}

uint64_t *sub_19A797C38()
{
  type metadata accessor for AvatarStickerImageProvider();
  v0 = swift_allocObject();
  result = sub_19A797C74();
  qword_1EAFDD668 = v0;
  return result;
}

uint64_t *sub_19A797C74()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v0[2] = sub_19A69C688(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF140, &qword_19A7B6AE8);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v0[3] = v5;
  v0[4] = [objc_allocWithZone(MEMORY[0x1E698E348]) init];
  v0[5] = [objc_opt_self() thumbnailScope];
  if (!qword_1EAFDD670)
  {
    v6 = sub_19A7AB394();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v1;
    sub_19A6816F0(0, 0, v4, &unk_19A7C3E20, v7);
  }

  return v0;
}

uint64_t sub_19A797E3C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E698E370]) init];
  v2 = qword_1EAFDD670;
  qword_1EAFDD670 = v1;

  v3 = *(v0 + 8);

  return v3();
}

void sub_19A797EBC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (*(v8 + 16))
  {

    v9 = sub_19A6955C0(a2, a3);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  *a4 = v11;
}

double sub_19A797F6C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AvatarItem();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  v5[5] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF140, &qword_19A7B6AE8);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v5[6] = v7;
  v8 = [swift_unknownObjectRetain() identifier];
  v9 = sub_19A7AB014();
  v11 = v10;

  v5[2] = v9;
  v5[3] = v11;
  v5[4] = a1;
  v12 = *(a2 + 16);
  if (v12)
  {
    v24 = v2;
    sub_19A65AEB0(0, v12, 0);
    v13 = (a2 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      v17 = *(v6 + 16);
      v16 = *(v6 + 24);

      if (v17 >= v16 >> 1)
      {
        sub_19A65AEB0((v16 > 1), v17 + 1, 1);
      }

      *(v6 + 16) = v17 + 1;
      v18 = (v6 + 24 * v17);
      v18[4] = v14;
      v18[5] = v15;
      v18[6] = 0;
      v13 += 2;
      --v12;
    }

    while (v12);
    v2 = v24;
  }

  swift_beginAccess();
  v5[5] = v6;

  v20 = *(v2 + 24);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v21);
  os_unfair_lock_lock(v20 + 4);
  sub_19A5F57B8(v22);
  os_unfair_lock_unlock(v20 + 4);

  return result;
}

double sub_19A79816C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_19A650FD4(a2, v4, v5, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v8;
  swift_endAccess();
  return result;
}

uint64_t sub_19A798220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A798248, 0, 0);
}

uint64_t sub_19A798248()
{
  v25 = v0;
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + 24);
  *(v0 + 56) = v4;
  v5 = swift_task_alloc();
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_19A798CE0;
  *(v6 + 24) = v5;
  os_unfair_lock_lock(v4 + 4);
  sub_19A60F150(v24);
  *(v0 + 64) = 0;
  os_unfair_lock_unlock(v4 + 4);
  v7 = v24[0];
  *(v0 + 72) = v24[0];

  if (!v7)
  {
    if (qword_1EAFCB718 != -1)
    {
      swift_once();
    }

    v11 = sub_19A7A9384();
    __swift_project_value_buffer(v11, qword_1EAFD0250);

    v12 = sub_19A7A9364();
    v13 = sub_19A7AB584();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = *(v0 + 16);
      v14 = *(v0 + 24);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_19A62540C(v15, v14, v24);
      _os_log_impl(&dword_19A5EE000, v12, v13, "Requested sticker is unavailable. Avatar %s could not be found.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x19A907A30](v17, -1, -1);
      MEMORY[0x19A907A30](v16, -1, -1);
    }

    v10 = 0;
    goto LABEL_9;
  }

  v8 = sub_19A798BA8(*(v0 + 32), *(v0 + 40));
  if (v8)
  {
    v9 = v8;

    v10 = v9;
LABEL_9:
    v18 = *(v0 + 8);

    return v18(v10);
  }

  v20 = *(v7 + 32);
  *(v0 + 80) = v20;
  swift_unknownObjectRetain();
  v21 = swift_task_alloc();
  *(v0 + 88) = v21;
  *v21 = v0;
  v21[1] = sub_19A798534;
  v22 = *(v0 + 32);
  v23 = *(v0 + 40);

  return sub_19A798D00(v20, v22, v23);
}

uint64_t sub_19A798534(uint64_t a1)
{
  *(*v1 + 96) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_19A798654, 0, 0);
}

uint64_t sub_19A798654()
{
  v1 = v0[12];
  v2 = v0[9];
  if (v1)
  {
    v4 = v0[7];
    v3 = v0[8];
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_task_alloc();
    v7[2] = v2;
    v7[3] = v1;
    v7[4] = v6;
    v7[5] = v5;
    v8 = swift_task_alloc();
    *(v8 + 16) = sub_19A799358;
    *(v8 + 24) = v7;
    os_unfair_lock_lock(v4 + 4);
    sub_19A5F5774(v9);
    os_unfair_lock_unlock(v4 + 4);
    if (v3)
    {
    }

    v11 = v0[12];
  }

  else
  {

    v11 = 0;
  }

  v12 = v0[1];

  return v12(v11);
}

void sub_19A798780(uint64_t a1)
{
  v2 = *(a1 + 48);
  os_unfair_lock_lock(v2 + 4);
  sub_19A5F57B8(v3);
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_19A798808(uint64_t result, void *a2)
{
  if (result)
  {
    *a2 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

void sub_19A798868(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = *(a1 + 32);
  v12 = a2;
  v11(a2, a3, a4, a5, a6);
}

uint64_t sub_19A7988F4()
{

  return swift_deallocClassInstance();
}

double sub_19A798968(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  v8 = *(a1 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 40) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_19A76CA58(0, *(v8 + 2) + 1, 1, v8);
    *(a1 + 40) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_19A76CA58((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[24 * v11];
  *(v12 + 4) = a2;
  *(v12 + 5) = a3;
  *(v12 + 6) = a4;
  *(a1 + 40) = v8;
  swift_endAccess();
  v13 = a4;

  return result;
}

void sub_19A798A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_beginAccess();
  v8 = *(a1 + 40);
  v9 = (v8 + 40);
  v10 = *(v8 + 16) + 1;
  while (--v10)
  {
    if (*(v9 - 1) != a2 || *v9 != a3)
    {
      v9 += 3;
      v7 = sub_19A7AC064();
      if ((v7 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }

  v12 = *(a1 + 48);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v13);

  os_unfair_lock_lock(v12 + 4);
  sub_19A5F57B8(v14);
  if (v3)
  {
    os_unfair_lock_unlock(v12 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v12 + 4);
  }
}

void *sub_19A798BA8(void *a1, void *a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = (v5 + 48);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = *v6;
    if (*(v6 - 2) != a1 || *(v6 - 1) != a2)
    {
      v6 += 3;
      if ((sub_19A7AC064() & 1) == 0)
      {
        continue;
      }
    }

    v10 = v8;
    return v8;
  }

  return 0;
}

uint64_t sub_19A798C4C()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_19A798CD0@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t sub_19A798D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A798D24, 0, 0);
}

uint64_t sub_19A798D24()
{
  v1 = qword_1EAFDD670;
  v0[22] = qword_1EAFDD670;
  if (v1)
  {
    v2 = v0[19];
    v3 = v1;
    v4 = sub_19A7AAFE4();
    v0[23] = v4;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_19A798EC4;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD0270, &qword_19A7C3E10);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_19A654A0C;
    v0[13] = &block_descriptor_38;
    v0[14] = v5;
    [v3 imageForAvatarRecord:v2 poseName:v4 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_19A798EC4()
{

  return MEMORY[0x1EEE6DFA0](sub_19A798FA4, 0, 0);
}

uint64_t sub_19A798FA4()
{
  v30 = v0;
  v2 = (v0 + 144);
  v1 = *(v0 + 144);

  if (!v1)
  {
    if (qword_1EAFCB718 == -1)
    {
LABEL_6:
      v12 = sub_19A7A9384();
      __swift_project_value_buffer(v12, qword_1EAFD0250);
      swift_unknownObjectRetain();

      v13 = sub_19A7A9364();
      v14 = sub_19A7AB584();
      swift_unknownObjectRelease();

      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 176);
      if (v15)
      {
        v17 = *(v0 + 160);
        v28 = *(v0 + 168);
        v18 = *(v0 + 152);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v29 = v20;
        *v19 = 136315394;
        v21 = [v18 identifier];
        v22 = sub_19A7AB014();
        v24 = v23;

        v25 = sub_19A62540C(v22, v24, &v29);

        *(v19 + 4) = v25;
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_19A62540C(v17, v28, &v29);
        _os_log_impl(&dword_19A5EE000, v13, v14, "Could not render requested image for %s/%s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x19A907A30](v20, -1, -1);
        MEMORY[0x19A907A30](v19, -1, -1);
      }

      else
      {
      }

      v10 = 0;
      goto LABEL_12;
    }

LABEL_16:
    swift_once();
    goto LABEL_6;
  }

  *(v0 + 144) = 0;
  v3 = [v1 CGImage];
  v4 = *(v0 + 176);
  if (!v3)
  {

    v10 = 0;
    v11 = 0;
    v6 = 0;
    goto LABEL_9;
  }

  v5 = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_19A7993C0;
  *(v7 + 24) = v6;
  *(v0 + 112) = sub_19A7993C8;
  *(v0 + 120) = v7;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_19A798868;
  *(v0 + 104) = &block_descriptor_28_0;
  v8 = _Block_copy((v0 + 80));

  itk_cgImageCropZeroAlpha();

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = *v2;
  v11 = sub_19A7993C0;
LABEL_9:
  sub_19A60126C(v11, v6);
LABEL_12:
  v26 = *(v0 + 8);

  return v26(v10);
}

double block_copy_helper_26_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_19A799424()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A60F860;

  return sub_19A797E20();
}

id sub_19A7994EC()
{
  v1 = OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell____lazy_storage___hostingController;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell____lazy_storage___hostingController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell____lazy_storage___hostingController);
  }

  else
  {
    type metadata accessor for UnicodeCharacterCellViewModel(0);

    sub_19A7AA454();
    v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD0298, &qword_19A7C3EF8));
    v5 = v0;
    v6 = sub_19A7A9C84();
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_19A7995B8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell_indexPath;
  v11 = sub_19A7A9094();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell_viewModel;
  type metadata accessor for UnicodeCharacterCellViewModel(0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0xE000000000000000;
  sub_19A7A90F4();
  *&v4[v12] = v13;
  *&v4[OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell____lazy_storage___hostingController] = 0;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = sub_19A7994EC();
  v16 = [v15 view];

  if (v16)
  {
    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor_];

    v18 = [v14 contentView];
    v19 = [*&v14[OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell____lazy_storage___hostingController] view];
    if (v19)
    {
      v20 = v19;
      [v18 addSubview_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_19A79988C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v0 + OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell_viewModel);
      swift_getKeyPath();
      sub_19A794A9C();

      sub_19A7A90C4();

      v3 = *(v2 + 16);
      v4 = *(v2 + 24);

      sub_19A7A1064(v3, v4);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_19A799A20()
{
  sub_19A601244(v0 + OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell_delegate);
  sub_19A66C0CC(v0 + OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell_indexPath);

  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell____lazy_storage___hostingController);
}

uint64_t type metadata accessor for UnicodeCharacterCollectionViewCell(uint64_t a1)
{
  result = qword_1EAFD0288;
  if (!qword_1EAFD0288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A799B40(uint64_t a1)
{
  sub_19A67BB78(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_19A799BF4()
{
  *(v0 + OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell_indexPath;
  v2 = sub_19A7A9094();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell_viewModel;
  type metadata accessor for UnicodeCharacterCellViewModel(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_19A7A90F4();
  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell____lazy_storage___hostingController) = 0;
  sub_19A7ABE34();
  __break(1u);
}

id LiveButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_19A799D34()
{
  v1 = OBJC_IVAR____TtC10StickerKit10LiveButton_isLive;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_19A799D78(char a1)
{
  v3 = OBJC_IVAR____TtC10StickerKit10LiveButton_isLive;
  swift_beginAccess();
  v1[v3] = a1;
  return [v1 setNeedsUpdateConfiguration];
}

void (*sub_19A799DD8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_19A799E3C;
}

void sub_19A799E3C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);

    [v4 setNeedsUpdateConfiguration];
  }
}

id LiveButton.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD02A8, &qword_19A7C3F00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v56 = &v49 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD02B0, &qword_19A7C3F08);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v49 - v4;
  v54 = sub_19A7AB9E4();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_19A7AB974();
  v7 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_19A7ABA34();
  v10 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC10StickerKit10LiveButton_isLive] = 0;
  v13 = *MEMORY[0x1E695F058];
  v14 = *(MEMORY[0x1E695F058] + 8);
  v15 = *(MEMORY[0x1E695F058] + 16);
  v16 = *(MEMORY[0x1E695F058] + 24);
  v17 = type metadata accessor for LiveButton();
  v58.receiver = v0;
  v58.super_class = v17;
  v18 = objc_msgSendSuper2(&v58, sel_initWithFrame_, v13, v14, v15, v16);
  v19 = objc_opt_self();
  v20 = *MEMORY[0x1E69DDD28];
  v51 = v18;
  v21 = [v19 preferredFontDescriptorWithTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD02B8, &qword_19A7C3F10);
  inited = swift_initStackObject();
  v49 = xmmword_19A7B6C30;
  *(inited + 16) = xmmword_19A7B6C30;
  v23 = *MEMORY[0x1E69DB990];
  *(inited + 32) = *MEMORY[0x1E69DB990];
  *(inited + 40) = *MEMORY[0x1E69DB970];
  v24 = v21;
  v25 = v23;
  v26 = sub_19A69DAF0(inited);
  swift_setDeallocating();
  sub_19A5F2B54(inited + 32, &qword_1EAFD02C0, &qword_19A7C3F18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC6F0, &qword_19A7B7A68);
  v27 = swift_initStackObject();
  *(v27 + 16) = v49;
  v28 = *MEMORY[0x1E69DB8F0];
  *(v27 + 32) = *MEMORY[0x1E69DB8F0];
  *(v27 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD02C8, &unk_19A7C3F20);
  *(v27 + 40) = v26;
  v29 = v28;
  sub_19A69C9C4(v27);
  swift_setDeallocating();
  sub_19A5F2B54(v27 + 32, &qword_1EAFCC700, &qword_19A7BB9E0);
  type metadata accessor for AttributeName(0);
  sub_19A79AC40();
  v30 = sub_19A7AAF34();

  v31 = [v24 fontDescriptorByAddingAttributes_];

  v32 = v31;
  [v32 pointSize];
  v34 = [objc_opt_self() fontWithDescriptor:v32 size:v33];

  sub_19A7AB9F4();
  v35 = objc_opt_self();
  v36 = [v35 tertiarySystemFillColor];
  sub_19A7AB9B4();
  v37 = [v35 secondaryLabelColor];
  sub_19A7AB9C4();
  sub_19A7AB0A4();
  sub_19A7ABA24();
  sub_19A7AB994();
  (*(v7 + 104))(v9, *MEMORY[0x1E69DC508], v50);
  sub_19A7AB984();
  (*(v53 + 104))(v52, *MEMORY[0x1E69DC560], v54);
  sub_19A7AB964();
  *(swift_allocObject() + 16) = v34;
  v38 = v34;
  sub_19A7A95A4();
  v39 = sub_19A7A9594();
  (*(*(v39 - 8) + 56))(v5, 0, 1, v39);
  sub_19A7AB9D4();
  v40 = v56;
  v41 = v55;
  (*(v10 + 16))(v56, v12, v55);
  (*(v10 + 56))(v40, 0, 1, v41);
  v42 = v51;
  sub_19A7ABA64();
  v43 = swift_allocObject();
  *(v43 + 16) = v38;
  *(v43 + 24) = v42;
  v44 = v42;
  aBlock[4] = sub_19A79ACA0;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6DB1A8;
  aBlock[3] = &block_descriptor_39;
  v45 = _Block_copy(aBlock);
  v46 = v44;
  v47 = v38;

  [v46 setConfigurationUpdateHandler_];

  _Block_release(v45);
  (*(v10 + 8))(v12, v41);
  return v46;
}

uint64_t sub_19A79A660@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_19A7A8C54();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_19A79AD64();
  v7 = a2;
  return sub_19A7A8C64();
}

uint64_t sub_19A79A700(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD02A8, &qword_19A7C3F00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = sub_19A7ABA34();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7ABA54();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_19A5F2B54(v10, &qword_1EAFD02A8, &qword_19A7C3F00);
  }

  (*(v12 + 32))(v14, v10, v11);
  v16 = objc_opt_self();
  v17 = [v16 tertiarySystemFillColor];
  sub_19A7AB9B4();
  v18 = [v16 secondaryLabelColor];
  sub_19A7AB9C4();
  [a2 pointSize];
  v20 = [objc_opt_self() configurationWithPointSize:5 weight:1 scale:v19];
  v25 = a1;
  swift_beginAccess();
  v21 = v20;
  v22 = sub_19A7AAFE4();

  v23 = [objc_opt_self() systemImageNamed:v22 withConfiguration:v21];

  v24 = v23;
  sub_19A7ABA04();
  sub_19A7AB0A4();

  sub_19A7ABA24();
  (*(v12 + 16))(v7, v14, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  sub_19A7ABA64();

  return (*(v12 + 8))(v14, v11);
}

id LiveButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LiveButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_19A79AC40()
{
  result = qword_1EAFCA468;
  if (!qword_1EAFCA468)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA468);
  }

  return result;
}

unint64_t sub_19A79AD64()
{
  result = qword_1EAFD02D0;
  if (!qword_1EAFD02D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD02D0);
  }

  return result;
}

void sub_19A79ADE0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19A757DD8();
  sub_19A7A90C4();

  *a2 = *(v3 + 41);
}

double sub_19A79AE80@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19A757DD8();
  sub_19A7A90C4();

  result = *(v3 + 48);
  *a2 = result;
  return result;
}

uint64_t sub_19A79AF20()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFD02D8);
  __swift_project_value_buffer(v0, qword_1EAFD02D8);
  return sub_19A7A9374();
}

id sub_19A79AFA0()
{
  v1 = OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell____lazy_storage___hostingController;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell____lazy_storage___hostingController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell____lazy_storage___hostingController);
  }

  else
  {
    v4 = v0;
    v13[4] = *(v0 + OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_viewModel);
    type metadata accessor for EmojiCellViewModel(0);

    sub_19A7AA454();
    v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFD02F8, &qword_19A7C4008));
    v6 = sub_19A7A9C84();
    v7 = sub_19A7A99B4();
    v9 = sub_19A7A9C64();
    if ((*v8 & v7) != 0)
    {
      *v8 &= ~v7;
    }

    v9(v13, 0);

    v10 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_19A79B0D8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_indexPath;
  v12 = sub_19A7A9094();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell____lazy_storage___hostingController] = 0;
  v13 = OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_viewModel;
  type metadata accessor for EmojiCellViewModel(0);
  swift_allocObject();
  *&v5[v13] = sub_19A63FE08();
  v26.receiver = v5;
  v26.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_viewModel;
  *(*&v14[OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_viewModel] + 24) = &off_1F0DCF550;
  swift_unknownObjectWeakAssign();
  v16 = *&v14[v15];
  if (*(v16 + 41))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19A757DD8();
    v18 = v14;

    sub_19A7A90B4();
  }

  else
  {
    *(v16 + 41) = 0;
    v19 = v14;
  }

  v20 = sub_19A79AFA0();
  v21 = [v20 view];

  if (v21)
  {
    v22 = [objc_opt_self() clearColor];
    [v21 setBackgroundColor_];

    v23 = [v14 contentView];
    v24 = [*&v14[OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell____lazy_storage___hostingController] view];
    if (v24)
    {
      v25 = v24;
      [v23 addSubview_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_19A79B4D8()
{

  v0 = sub_19A63F5C4();

  if ((v0 & 1) == 0)
  {
    v1 = [objc_opt_self() sharedPreferencesController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 preferencesActions];

      if (v3)
      {
        [v3 BOOLForPreferenceKey_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_19A79B59C()
{
  [v0 frame];
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = *&qword_1F0DC5038;
  if (*&qword_1F0DC5038 > v2)
  {
    v3 = *&qword_1F0DC5040;
    if (*&qword_1F0DC5040 > v2)
    {
      if (*&qword_1F0DC5048 > v2)
      {
        v3 = v1;
      }

      else
      {
        v3 = *&qword_1F0DC5048;
      }
    }
  }

  v4 = OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_viewModel;
  v5 = *&v0[OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_viewModel];
  swift_getKeyPath();
  sub_19A757DD8();

  sub_19A7A90C4();

  v6 = *(v5 + 48);

  if (v3 != v6)
  {
    v7 = *&v0[v4];
    if (*(v7 + 48) == v3)
    {
      *(v7 + 48) = v3;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);

      sub_19A7A90B4();
    }
  }
}

double sub_19A79B838()
{
  v1 = v0;
  if (qword_1EAFCB728 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFD02D8);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "handleTap", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  v6 = sub_19A63F5C4();

  if ((v6 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    sub_19A67AAEC(v1, 0, 1);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_19A79B9D0()
{
  sub_19A601244(v0 + OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_delegate);
  sub_19A66C0CC(v0 + OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_indexPath);

  return result;
}

uint64_t type metadata accessor for EmojiCollectionViewCell(uint64_t a1)
{
  result = qword_1ED8B3550;
  if (!qword_1ED8B3550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A79BAF0(uint64_t a1)
{
  sub_19A67BB78(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_19A79BBA4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_19A67AAEC(v4, a3 & 1, a4 & 1);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_19A79BC28(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-v4];
  v6 = v1[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_showsPaddle];
  v1[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_showsPaddle] = 0;
  sub_19A710240(v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [v1 setSelected_];
    if (a1)
    {
      v10 = OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_indexPath;
      swift_beginAccess();
      sub_19A72A628(&v1[v10], v5);
      v11 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_selectedIndexPath;
      swift_beginAccess();
      sub_19A754254(v5, v9 + v11);
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_19A677EBC();

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_19A79BDD8()
{
  v1 = [v0 info];
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_10:
    sub_19A5F2B54(&v7, &unk_1EAFCD750, &unk_19A7B87D0);
    return 0;
  }

  v2 = v1;
  v3 = [v1 objectForSetting_];

  if (v3)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_10;
  }

  sub_19A5F5028(0, &qword_1EAFD0450, 0x1E698E388);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19A79BEE0()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCAA30);
  __swift_project_value_buffer(v0, qword_1EAFCAA30);
  return sub_19A7A9374();
}

uint64_t sub_19A79BF60()
{
  if (*v0)
  {
    return 0x7373696D736964;
  }

  else
  {
    return 0x696A6F6D65;
  }
}

void sub_19A79BF98(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696A6F6D65 && a2 == 0xE500000000000000;
  if (v6 || (sub_19A7AC064() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7373696D736964 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_19A7AC064();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_19A79C070(uint64_t a1)
{
  v2 = sub_19A7A7F58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A79C0AC(uint64_t a1)
{
  v2 = sub_19A7A7F58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A79C0E8()
{

  return swift_deallocClassInstance();
}

void sub_19A79C120(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD0478, &qword_19A7C43F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A7A7F58();
  sub_19A7AC1D4();
  v7[15] = 0;

  sub_19A7ABFB4();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    v7[14] = 1;
    sub_19A7ABFC4();
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_19A79C2C0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD03A0, &qword_19A7C4388);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  *(v1 + 32) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A7A7F58();
  sub_19A7AC1C4();
  if (v2)
  {
    type metadata accessor for EmojiSelection();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = 0;
    *(v1 + 16) = sub_19A7ABF34();
    *(v1 + 24) = v9;
    v12 = 1;
    v10 = sub_19A7ABF44();
    (*(v5 + 8))(v7, v4);
    *(v1 + 32) = v10 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_19A79C510()
{
  if (*v0)
  {
    return 0x6552656372756F73;
  }

  else
  {
    return 0x72656B63697473;
  }
}

void sub_19A79C550(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656B63697473 && a2 == 0xE700000000000000;
  if (v6 || (sub_19A7AC064() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6552656372756F73 && a2 == 0xEA00000000007463)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_19A7AC064();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_19A79C634(uint64_t a1)
{
  v2 = sub_19A7A7FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A79C670(uint64_t a1)
{
  v2 = sub_19A7A7FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A79C6AC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_19A79C6E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFD0468, &qword_19A7C43E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A7A7FAC();
  sub_19A7AC1D4();
  *&v11[0] = *(v3 + 16);
  v12 = 0;
  sub_19A7AAF14();
  sub_19A7A8000(&qword_1EAFCA600, 255, MEMORY[0x1E69D4758], MEMORY[0x1E69D4760]);
  sub_19A7ABFE4();
  if (!v2)
  {
    v9 = *(v3 + 40);
    v11[0] = *(v3 + 24);
    v11[1] = v9;
    v12 = 1;
    type metadata accessor for CGRect(0);
    sub_19A7A8000(&qword_1EAFCF2D0, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_19A7ABFE4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19A79C8F4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD03B0, &qword_19A7C4390);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A7A7FAC();
  sub_19A7AC1C4();
  if (v2)
  {
    type metadata accessor for SharedSticker();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_19A7AAF14();
    v11 = 0;
    sub_19A7A8000(&unk_1EAFCA5F0, 255, MEMORY[0x1E69D4758], MEMORY[0x1E69D4768]);
    sub_19A7ABF64();
    *(v1 + 16) = *&v10[0];
    type metadata accessor for CGRect(0);
    v11 = 1;
    sub_19A7A8000(&qword_1EAFCF2C0, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_19A7ABF64();
    (*(v5 + 8))(v7, v4);
    v9 = v10[1];
    *(v1 + 24) = v10[0];
    *(v1 + 40) = v9;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_19A79CBCC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  a2();
  v9 = swift_allocObject();
  result = a4(a1);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t sub_19A79CC60()
{
  if (*v0)
  {
    return 0x6552656372756F73;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_19A79CCA4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000019A7C4F50 == a2 || (sub_19A7AC064() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x6552656372756F73 && a2 == 0xEA00000000007463)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_19A7AC064();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_19A79CD94(uint64_t a1)
{
  v2 = sub_19A7A8048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A79CDD0(uint64_t a1)
{
  v2 = sub_19A7A8048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A79CE0C()
{
  v1 = OBJC_IVAR____TtC10StickerKit11EditSticker_stickerIdentifier;
  v2 = sub_19A7A8F64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_19A79CEA8(void *a1)
{
  v2 = v1;
  v4 = sub_19A7A8F64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFD0458, &qword_19A7C43E0);
  v15 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A7A8048();
  sub_19A7AC1D4();
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC10StickerKit11EditSticker_stickerIdentifier, v4);
  LOBYTE(v16) = 0;
  sub_19A7A8000(&unk_1EAFCB088, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  v11 = v14;
  sub_19A7ABFE4();
  (*(v5 + 8))(v7, v4);
  if (!v11)
  {
    v12 = *(v2 + OBJC_IVAR____TtC10StickerKit11EditSticker_sourceRect + 16);
    v16 = *(v2 + OBJC_IVAR____TtC10StickerKit11EditSticker_sourceRect);
    v17 = v12;
    v18 = 1;
    type metadata accessor for CGRect(0);
    sub_19A7A8000(&qword_1EAFCF2D0, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_19A7ABFE4();
  }

  return (*(v15 + 8))(v10, v8);
}

uint64_t sub_19A79D190(void *a1)
{
  v20 = sub_19A7A8F64();
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD03C0, &qword_19A7C4398);
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A7A8048();
  sub_19A7AC1C4();
  if (v2)
  {
    type metadata accessor for EditSticker(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v6;
    v9 = v18;
    LOBYTE(v21) = 0;
    sub_19A7A8000(&qword_1EAFCB080, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v10 = v19;
    v11 = v20;
    sub_19A7ABF64();
    v12 = *(v9 + 32);
    v16[1] = OBJC_IVAR____TtC10StickerKit11EditSticker_stickerIdentifier;
    v12(v1 + OBJC_IVAR____TtC10StickerKit11EditSticker_stickerIdentifier, v5, v11);
    type metadata accessor for CGRect(0);
    v23 = 1;
    sub_19A7A8000(&qword_1EAFCF2C0, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_19A7ABF64();
    (*(v17 + 8))(v8, v10);
    v14 = (v1 + OBJC_IVAR____TtC10StickerKit11EditSticker_sourceRect);
    v15 = v22;
    *v14 = v21;
    v14[1] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_19A79D510@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for EditSticker(0);
  v5 = swift_allocObject();
  result = sub_19A79D190(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void sub_19A79D590(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v60 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v60 - v7;
  v9 = sub_19A7A8F64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  v16 = sub_19A79BDD8();
  [v16 invalidate];

  v17 = [a1 delegate];
  if (v17)
  {
    v18 = v17;
    v65 = &unk_1F0E17B60;
    v19 = swift_dynamicCastObjCProtocolConditional();
    if (!v19)
    {
      goto LABEL_52;
    }

    *&v61 = v19;
    v20 = [v1 info];
    if (v20)
    {
      *&v60 = v10;
      v62 = v18;
      v21 = v20;
      v22 = [v20 objectForSetting_];

      if (v22)
      {
        sub_19A7ABB44();
        swift_unknownObjectRelease();
      }

      else
      {
        v63 = 0u;
        v64 = 0u;
      }

      v66 = v63;
      v67 = v64;
      if (*(&v64 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_52;
        }

        v23 = sub_19A7A688C(v63);
        if (v23 > 5)
        {
          if (v23 > 8)
          {
            if (v23 == 9)
            {
              v41 = sub_19A6EAF00();
              if (v41 != 2)
              {
                [v61 didBeingDrag_];
              }

              goto LABEL_52;
            }

            if (v23 == 10)
            {
              v27 = sub_19A6E765C(0);
              if (v27)
              {
                [v61 didSelectShareWithSticker:*(v27 + 16) sourceRect:{*(v27 + 24), *(v27 + 32), *(v27 + 40), *(v27 + 48)}];
LABEL_48:
              }
            }

LABEL_52:
            swift_unknownObjectRelease();
            return;
          }

          if (v23 == 6)
          {
            v31 = sub_19A6E688C(0);
            v33 = v32;
            v34 = sub_19A7AAFE4();
            v35 = [objc_opt_self() defaultCenter];
            if (v33 >= 2)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFD0440, &qword_19A7BB9F0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_19A7B6C30;
              *&v66 = 0x6C6F686563616C50;
              *(&v66 + 1) = 0xEB00000000726564;
              sub_19A7ABC54();
              *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCEEB0, &unk_19A7B9800);
              *(inited + 72) = v31;
              *(inited + 80) = v33;
              sub_19A69C0E4(inited);
              swift_setDeallocating();
              sub_19A5F2B54(inited + 32, &qword_1EAFCD958, &qword_19A7BB838);
              v36 = sub_19A7AAF34();
            }

            else
            {
              v36 = 0;
            }

            [v35 postNotificationName:v34 object:0 userInfo:v36];

            goto LABEL_52;
          }

          if (v23 != 7)
          {
            v46 = sub_19A6E6FC0(0);
            if ((v47 & 1) == 0)
            {
              [v61 didPinch_];
            }

            goto LABEL_52;
          }

          sub_19A6E6C24(0, &v66);
          if (v68)
          {
            goto LABEL_52;
          }

          v60 = v67;
          v61 = v66;
          v51 = [a1 sceneView];
          v52 = [v51 window];

          if (v52)
          {

            v53 = sub_19A7AB394();
            (*(*(v53 - 8) + 56))(v5, 1, 1, v53);
            v54 = swift_allocObject();
            *(v54 + 16) = 0;
            *(v54 + 24) = 0;
            *(v54 + 32) = a1;
            *(v54 + 56) = v60;
            *(v54 + 40) = v61;
            v55 = a1;
            sub_19A6816F0(0, 0, v5, &unk_19A7C43D8, v54);
            goto LABEL_56;
          }

          if (qword_1EAFCAA20 != -1)
          {
            swift_once();
          }

          v57 = sub_19A7A9384();
          __swift_project_value_buffer(v57, qword_1EAFCAA30);
          v40 = sub_19A7A9364();
          v58 = sub_19A7AB584();
          if (os_log_type_enabled(v40, v58))
          {
            v59 = swift_slowAlloc();
            *v59 = 0;
            _os_log_impl(&dword_19A5EE000, v40, v58, "Scene view is not in a window. Ignoring didScrollToLastCreatedSticker", v59, 2u);
            MEMORY[0x19A907A30](v59, -1, -1);
          }
        }

        else
        {
          if (v23 <= 2)
          {
            if (!v23)
            {
              v28 = sub_19A6E565C(0);
              if (v28)
              {
                v29 = v28;

                v30 = sub_19A7AAFE4();

                [v61 didSelectEmoji:v30 dismiss:*(v29 + 32)];
              }

              goto LABEL_52;
            }

            if (v23 == 1)
            {
              sub_19A6E59F0(0);
              if (v24)
              {
                v25 = sub_19A7AAFE4();

                [v61 didSelectEmoji_];
                swift_unknownObjectRelease();

                return;
              }

              goto LABEL_52;
            }

            v42 = sub_19A6E5D3C(0);
            if (v42)
            {
              v43 = v42;
              v44 = sub_19A7A4494();
              if (v44)
              {
                v45 = v44;
                [v61 didSelectSticker:v44 dismiss:*(v43 + 32)];

LABEL_56:
                swift_unknownObjectRelease();

                return;
              }

              goto LABEL_48;
            }

            goto LABEL_52;
          }

          if (v23 == 3)
          {
            v37 = sub_19A6E60C8(0);
            v38 = v60;
            if (!v37)
            {
              goto LABEL_52;
            }

            v39 = v37;
            (*(v60 + 16))(v15, v37 + OBJC_IVAR____TtC10StickerKit11EditSticker_stickerIdentifier, v9);
            v40 = sub_19A7A8F24();
            (*(v38 + 8))(v15, v9);
            [v61 didSelectEditWithStickerIdentifer:v40 sourceRect:{*(v39 + OBJC_IVAR____TtC10StickerKit11EditSticker_sourceRect), *(v39 + OBJC_IVAR____TtC10StickerKit11EditSticker_sourceRect + 8), *(v39 + OBJC_IVAR____TtC10StickerKit11EditSticker_sourceRect + 16), *(v39 + OBJC_IVAR____TtC10StickerKit11EditSticker_sourceRect + 24)}];
          }

          else
          {
            v26 = v60;
            if (v23 == 4)
            {
              [v61 didSelectPresentPicker];
              goto LABEL_52;
            }

            sub_19A6E6458(0, v8);
            v48 = (*(v26 + 48))(v8, 1, v9);
            if (v48 != 1)
            {
              (*(v26 + 32))(v12, v8, v9);
              v56 = sub_19A7A8F24();
              [v61 didSelectCreate:v56 queryString:0];
              swift_unknownObjectRelease();

              (*(v26 + 8))(v12, v9);
              return;
            }

            sub_19A5F2B54(v8, &qword_1EAFCD800, &qword_19A7BCE60);
            sub_19A6E59F0(0);
            if (v49)
            {
              v40 = sub_19A7AAFE4();
            }

            else
            {
              v40 = 0;
            }

            [v61 didSelectCreate:0 queryString:v40];
          }
        }

        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v66 = 0u;
      v67 = 0u;
    }

    sub_19A5F2B54(&v66, &unk_1EAFCD750, &unk_19A7B87D0);
  }
}

uint64_t sub_19A79DF90(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 192) = a3;
  *(v8 + 200) = a4;
  *(v8 + 176) = a1;
  *(v8 + 184) = a2;
  *(v8 + 168) = a8;
  return MEMORY[0x1EEE6DFA0](sub_19A79DFB8, 0, 0);
}

uint64_t sub_19A79DFB8()
{
  *(v0 + 208) = [*(v0 + 168) sceneView];
  sub_19A7AB354();
  *(v0 + 216) = sub_19A7AB344();
  v2 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A79E068, v2, v1);
}

uint64_t sub_19A79E068()
{
  v1 = *(v0 + 26);
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];

  v0[15] = v5;
  v0[16] = v4;
  v0[17] = v3;
  v0[18] = v2;
  [v1 convertRect:0 toView:{v5, v4, v3, v2}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *(v0 + 28) = v7;
  *(v0 + 29) = v9;
  *(v0 + 30) = v11;
  *(v0 + 31) = v13;

  return MEMORY[0x1EEE6DFA0](sub_19A79E130, 0, 0);
}

uint64_t sub_19A79E130()
{
  v35 = v0;
  if (qword_1EAFCAA20 != -1)
  {
    swift_once();
  }

  v1 = sub_19A7A9384();
  __swift_project_value_buffer(v1, qword_1EAFCAA30);
  v2 = sub_19A7A9364();
  v3 = sub_19A7AB574();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[30];
    v4 = v0[31];
    v7 = v0[28];
    v6 = v0[29];
    v8 = v0[15];
    v9 = v0[16];
    v10 = v0[17];
    v11 = v0[18];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *v12 = 136315394;
    v37.origin.x = v8;
    v37.origin.y = v9;
    v37.size.width = v10;
    v37.size.height = v11;
    v14 = NSStringFromCGRect(v37);
    v15 = sub_19A7AB014();
    v17 = v16;

    v18 = sub_19A62540C(v15, v17, &v34);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    v38.origin.x = v7;
    v38.origin.y = v6;
    v38.size.width = v5;
    v38.size.height = v4;
    v19 = NSStringFromCGRect(v38);
    v20 = sub_19A7AB014();
    v22 = v21;

    v23 = sub_19A62540C(v20, v22, &v34);

    *(v12 + 14) = v23;
    _os_log_impl(&dword_19A5EE000, v2, v3, "EmojiAndStickerClientToHostAction didScrollToLastCreatedSticker, frame: %s, frameInWindow: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A907A30](v13, -1, -1);
    MEMORY[0x19A907A30](v12, -1, -1);
  }

  v32 = *(v0 + 14);
  v33 = *(v0 + 15);
  v24 = sub_19A7AAFE4();
  v25 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFD0440, &qword_19A7BB9F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7B6C30;
  v0[19] = -2.31584178e77;
  *(v0 + 20) = 0x800000019A7CC290;
  sub_19A7ABC54();
  type metadata accessor for CGRect(0);
  *(inited + 96) = v27;
  v28 = swift_allocObject();
  *(inited + 72) = v28;
  *(v28 + 16) = v32;
  *(v28 + 32) = v33;
  sub_19A69C0E4(inited);
  swift_setDeallocating();
  sub_19A5F2B54(inited + 32, &qword_1EAFCD958, &qword_19A7BB838);
  v29 = sub_19A7AAF34();

  [v25 postNotificationName:v24 object:0 userInfo:v29];

  v30 = *(v0 + 1);

  return v30();
}

id sub_19A79E6BC(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a3)
  {
    v15[4] = a3;
    v15[5] = a4;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_19A6DB1A8;
    v15[3] = &block_descriptor_40;
    v11 = _Block_copy(v15);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for EmojiAndStickerClientToHostAction();
  v16.receiver = v5;
  v16.super_class = v12;
  v13 = objc_msgSendSuper2(&v16, sel_initWithInfo_timeout_forResponseOnQueue_withHandler_, a1, a2, v11, a5);
  sub_19A60126C(a3, a4);

  _Block_release(v11);
  return v13;
}

id sub_19A79E880(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EmojiAndStickerClientToHostAction();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_19A79E8B8()
{
  v1 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_disableInsets;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19A79E8FC(char a1)
{
  v3 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_disableInsets;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_19A79E9AC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_19A79EA0C()
{
  v1 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_19A79EA58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_19A79EB10()
{
  v1 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController____lazy_storage___dataSource;
  if (*(v0 + OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController____lazy_storage___dataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController____lazy_storage___dataSource);
  }

  else
  {
    v3 = v0;
    type metadata accessor for CombinedSearchDataSource();
    swift_allocObject();
    sub_19A720884();
    v2 = v4;
    *(v3 + v1) = v4;
  }

  return v2;
}

uint64_t sub_19A79EB8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&v1);

  return v1;
}

double sub_19A79EC00(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_hostAppID);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_19A79EC6C()
{
  v1 = (v0 + OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_hostAppID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_19A79ECC4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_hostAppID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void sub_19A79ED84()
{
  v1 = v0;
  if (qword_1EAFCAA20 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCAA30);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB5A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "viewDidLoad", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  if (qword_1EAFCA8E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Signposts.Signpost(0);
  v7 = __swift_project_value_buffer(v6, qword_1EAFDD518);
  sub_19A7140AC(v7, v8, v9, v10, v11, v12, v13, v14, v37);
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCD80]) initWithTarget:v1 action:sel_handleWithPinch_];
  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v15;
  v16 = v1;
  sub_19A7AB654();
  v17 = [v16 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&v38);

  v19 = v38;
  [v18 addGestureRecognizer_];

  v20 = [v16 view];
  if (!v20)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = [objc_opt_self() clearColor];
  [v21 setBackgroundColor_];

  v23 = objc_opt_self();
  v24 = [v23 defaultCenter];
  v25 = sub_19A7AAFE4();
  [v24 addObserver:v16 selector:sel_didTapToInsertStickerNotification_ name:v25 object:0];

  v26 = [v23 defaultCenter];
  v27 = sub_19A7AAFE4();
  [v26 addObserver:v16 selector:sel_didTapToEditNotification_ name:v27 object:0];

  v28 = [v23 defaultCenter];
  v29 = sub_19A7AAFE4();
  [v28 addObserver:v16 selector:sel_didTapToPresentPickerNotification_ name:v29 object:0];

  v30 = [v23 defaultCenter];
  v31 = sub_19A7AAFE4();
  [v30 addObserver:v16 selector:sel_didTapToPresentRestrictedContentAlertNotification_ name:v31 object:0];

  v32 = [v23 defaultCenter];
  v33 = sub_19A7AAFE4();
  [v32 addObserver:v16 selector:sel_didTapToCreateNewNotification_ name:v33 object:0];

  v34 = [v23 defaultCenter];
  v35 = sub_19A7AAFE4();
  [v34 addObserver:v16 selector:sel_didChangePlaceholderNotification_ name:v35 object:0];

  v36 = [v23 defaultCenter];
  if (qword_1EAFCAFF0 != -1)
  {
    swift_once();
  }

  [v36 addObserver:v16 selector:? name:? object:?];
}

char *sub_19A79F344(uint64_t a1)
{
  if ([objc_opt_self() useNewCollectionView])
  {
    v2 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_configuration;
    swift_beginAccess();
    v3 = *(a1 + v2);
    v4 = objc_allocWithZone(type metadata accessor for BridgingEmojiAndStickerCollectionViewController());
    v5 = v3;
    v7 = sub_19A6613F4(v3, v6);

    v8 = OBJC_IVAR____TtC10StickerKit47BridgingEmojiAndStickerCollectionViewController_collectionInputView;
    *(*&v7[OBJC_IVAR____TtC10StickerKit47BridgingEmojiAndStickerCollectionViewController_collectionInputView] + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_delegate + 8) = &off_1F0DCF608;
    swift_unknownObjectWeakAssign();
    v9 = (a1 + OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_hostAppID);
    swift_beginAccess();
    v11 = *v9;
    v10 = v9[1];
    v12 = &v7[OBJC_IVAR____TtC10StickerKit47BridgingEmojiAndStickerCollectionViewController_bundleId];
    *v12 = v11;
    *(v12 + 1) = v10;

    v13 = (*&v7[v8] + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_hostAppID);
    *v13 = v11;
    v13[1] = v10;
  }

  else
  {
    v14 = objc_opt_self();
    v15 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_configuration;
    swift_beginAccess();
    v7 = [v14 newInstanceWithConfiguration_];
    [v7 setDelegate_];
    if ([v7 respondsToSelector_])
    {
      v16 = a1 + OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_hostAppID;
      swift_beginAccess();
      if (*(v16 + 8))
      {

        v17 = sub_19A7AAFE4();
      }

      else
      {
        v17 = 0;
      }

      [v7 setBundleId_];
    }
  }

  return v7;
}

void sub_19A79F5C0(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  if (qword_1EAFCAA20 != -1)
  {
    swift_once();
  }

  v7 = sub_19A7A9384();
  __swift_project_value_buffer(v7, qword_1EAFCAA30);
  v8 = sub_19A7A9364();
  v9 = sub_19A7AB574();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_19A5EE000, v8, v9, "search", v10, 2u);
    MEMORY[0x19A907A30](v10, -1, -1);
  }

  v11 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_searchTask;
  if (*(v2 + OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_searchTask))
  {

    sub_19A7AB3B4();
  }

  v12 = &a1[OBJC_IVAR___STKStickerSearchQuery_exactQuery];
  swift_beginAccess();
  v13 = *(v12 + 1);
  if (v13 && ((v13 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(v13) & 0xF) : (v14 = *v12 & 0xFFFFFFFFFFFFLL), v14))
  {
    v15 = sub_19A7AB394();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_19A7AB354();

    v17 = a1;
    v18 = sub_19A7AB344();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v16;
    v19[5] = v17;

    *(v2 + v11) = sub_19A6816F0(0, 0, v6, &unk_19A7C4098, v19);
  }

  else
  {
    v21 = *(v2 + OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_uiEmojiAndStickerCollectionViewController);
    if (v21)
    {
      [v21 setSearchResults_];
    }
  }
}

uint64_t sub_19A79F89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[31] = a4;
  v5[32] = a5;
  v6 = sub_19A7A9094();
  v5[33] = v6;
  v5[34] = *(v6 - 8);
  v5[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  v5[38] = swift_task_alloc();
  sub_19A7AB354();
  v5[39] = sub_19A7AB344();
  v8 = sub_19A7AB2E4();
  v5[40] = v8;
  v5[41] = v7;

  return MEMORY[0x1EEE6DFA0](sub_19A79FA0C, v8, v7);
}

uint64_t sub_19A79FA0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[42] = Strong;
  if (Strong)
  {
    v0[43] = sub_19A79EB10();
    v2 = swift_task_alloc();
    v0[44] = v2;
    *v2 = v0;
    v2[1] = sub_19A79FB40;
    v3 = v0[32];

    return sub_19A71F5FC(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_19A79FB40(uint64_t a1)
{
  v3 = *v2;
  v3[45] = a1;
  v3[46] = v1;

  if (v1)
  {
    v4 = v3[40];
    v5 = v3[41];
    v6 = sub_19A7A026C;
  }

  else
  {

    v4 = v3[40];
    v5 = v3[41];
    v6 = sub_19A79FC5C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_19A79FC5C()
{
  v1 = *(v0 + 368);

  sub_19A7AB3D4();
  v2 = *(v0 + 360);
  if (v1)
  {
  }

  else
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v0 + 272);
      v62 = MEMORY[0x1E69E7CC0];
      sub_19A7ABD84();
      v48 = (v4 + 48);
      v49 = (v4 + 56);
      v46 = (v4 + 8);
      v47 = (v4 + 32);
      v5 = v2 + 40;
      v45 = xmmword_19A7B6C20;
      do
      {
        v7 = *(v5 - 8);
        v8 = *(v5 + 40);
        if (v8 < 0)
        {
          v6 = v7;
        }

        else
        {
          v61 = v3;
          v10 = *(v0 + 296);
          v9 = *(v0 + 304);
          v58 = v10;
          v59 = *(v0 + 288);
          v11 = *(v0 + 264);
          v56 = *(v5 + 24);
          v57 = *(v5 + 32);
          v54 = *(v5 + 8);
          v55 = *(v5 + 16);
          v53 = *v5;
          v12 = *v5;
          *(v0 + 72) = v7;
          *(v0 + 80) = v12;
          *(v0 + 88) = v54;
          *(v0 + 96) = v55;
          *(v0 + 104) = v56;
          *(v0 + 112) = v57;
          *(v0 + 120) = v8;
          *(v0 + 121) = BYTE1(v8) & 1;
          v13 = sub_19A7A8F64();
          (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
          v15 = *(v0 + 104);
          v14 = *(v0 + 112);
          v16 = *(v0 + 120);
          v51 = *(v0 + 88);
          v52 = *(v0 + 72);
          v17 = v10;
          v18 = v11;
          (*v49)(v17, 1, 1, v11);
          v60 = type metadata accessor for ImageGlyph(0);
          v19 = objc_allocWithZone(v60);
          v50 = &v19[OBJC_IVAR___STKImageGlyph_optionalData];
          *v50 = 0;
          v50[1] = 0xE000000000000000;
          *&v19[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
          v19[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
          sub_19A60F0CC(v9, &v19[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800, &qword_19A7BCE60);
          *&v19[OBJC_IVAR___STKImageGlyph_stickerEffectType] = 0;
          *&v19[OBJC_IVAR___STKImageGlyph_stickerSourceType] = 0;
          v20 = &v19[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
          *v20 = 0;
          v20[1] = 0;
          v21 = &v19[OBJC_IVAR___STKImageGlyph_poseIdentifier];
          *v21 = 0;
          v21[1] = 0;
          v22 = &v19[OBJC_IVAR___STKImageGlyph_emoji];
          *v22 = v52;
          *(v22 + 1) = v51;
          *(v22 + 4) = v15;
          *(v22 + 5) = v14;
          *(v22 + 24) = v16;
          v63 = *(v0 + 72);
          v64 = *(v0 + 88);
          v65 = *(v0 + 104);
          v66 = *(v0 + 120);
          sub_19A6BAFA4(v7, v53, v54, v55, v56, v57, v8);
          sub_19A60F01C(v0 + 72, v0 + 128);
          sub_19A7862FC(0);
          v24 = v23;
          v26 = v25;
          *(v0 + 16) = v63;
          *(v0 + 32) = v64;
          *(v0 + 48) = v65;
          *(v0 + 64) = v66;
          sub_19A60F078(v0 + 16);
          v27 = &v19[OBJC_IVAR___STKImageGlyph_emojiString];
          *v27 = v24;
          v27[1] = v26;
          sub_19A60F0CC(v58, v59, &unk_1EAFCF110, &unk_19A7B6AF0);
          if ((*v48)(v59, 1, v18) == 1)
          {
            sub_19A5F2B54(*(v0 + 288), &unk_1EAFCF110, &unk_19A7B6AF0);
          }

          else
          {
            v28 = *(v0 + 280);
            v29 = *(v0 + 264);
            (*v47)(v28, *(v0 + 288), v29);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120, &qword_19A7B6F90);
            v30 = swift_allocObject();
            *(v30 + 16) = v45;
            *(v0 + 224) = sub_19A7A9064();
            *(v30 + 32) = sub_19A7AC024();
            *(v30 + 40) = v31;
            *(v0 + 232) = sub_19A7A9044();
            *(v30 + 48) = sub_19A7AC024();
            *(v30 + 56) = v32;
            *(v0 + 240) = v30;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0, &qword_19A7BE0D0);
            sub_19A6179D4();
            v33 = sub_19A7AAF94();
            v35 = v34;

            (*v46)(v28, v29);
            *v50 = v33;
            v50[1] = v35;
          }

          v37 = *(v0 + 296);
          v36 = *(v0 + 304);
          v38 = &v19[OBJC_IVAR___STKImageGlyph_character];
          *v38 = 0;
          v38[1] = 0;
          v3 = v61;
          *(v0 + 208) = v19;
          *(v0 + 216) = v60;
          objc_msgSendSuper2((v0 + 208), sel_init, v45);
          sub_19A5F2B54(v37, &unk_1EAFCF110, &unk_19A7B6AF0);
          sub_19A5F2B54(v36, &qword_1EAFCD800, &qword_19A7BCE60);
        }

        sub_19A7ABD64();
        sub_19A7ABD94();
        sub_19A7ABDA4();
        sub_19A7ABD74();
        v5 += 56;
        --v3;
      }

      while (v3);

      v39 = v62;
    }

    else
    {

      v39 = MEMORY[0x1E69E7CC0];
    }

    v40 = *(v0 + 336);
    v41 = *&v40[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_uiEmojiAndStickerCollectionViewController];
    if (v41)
    {
      swift_unknownObjectRetain();
      sub_19A624194(v39);

      v42 = sub_19A7AB234();

      [v41 setSearchResults_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_19A7A026C()
{
  v1 = v0[46];
  v2 = v0[42];

  v3 = v0[1];

  return v3();
}

id sub_19A7A0314(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_uiEmojiAndStickerCollectionViewController);
  if (result)
  {
    return [result handleKeyEvent_];
  }

  return result;
}

double sub_19A7A0358(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_hideShortDescriptionTask;
  if (*(v3 + OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_hideShortDescriptionTask))
  {

    sub_19A7AB3B4();
  }

  sub_19A69DBE0(a1, a2);
  v10 = sub_19A7AB394();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_19A7AB354();
  v11 = sub_19A7AB344();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v3 + v9) = sub_19A6816F0(0, 0, v8, &unk_19A7C4408, v12);

  return result;
}

uint64_t sub_19A7A04D8()
{
  v1 = sub_19A7ABDC4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_19A7AB354();
  v0[5] = sub_19A7AB344();
  v3 = sub_19A7AB2E4();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_19A7A05C8, v3, v2);
}

uint64_t sub_19A7A05C8(uint64_t a1)
{
  sub_19A7AC0F4();
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_19A7A0694;

  return sub_19A776184(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_19A7A0694()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 56);
  v7 = *(v2 + 48);
  if (v0)
  {
    v8 = sub_19A7A082C;
  }

  else
  {
    v8 = sub_19A7A08A0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19A7A082C()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A7A08A0()
{

  v1 = sub_19A7AAFE4();
  v2 = [objc_opt_self() defaultCenter];
  [v2 postNotificationName:v1 object:0 userInfo:0];

  v3 = *(v0 + 8);

  return v3();
}

void sub_19A7A096C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 _hostedWindowScene];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for EmojiSelection();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    *(v8 + 32) = 1;

    v9 = sub_19A7A5F14(0, v8, 0, 0, type metadata accessor for EmojiSelection, &unk_1EAFD0480, type metadata accessor for EmojiSelection, &unk_19A7C4334);

    [v7 sendAction_];
  }
}

void sub_19A7A0AF8(uint64_t a1, void *a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_19A7AB394();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  v12 = v3;

  sub_19A755BF4(0, 0, v9, &unk_19A7C40A8, v11);

  sub_19A5F2B54(v9, &unk_1EAFCD690, &qword_19A7B6B00);
  v13 = sub_19A7AAFE4();
  if (qword_1EAFCB6F8 != -1)
  {
    swift_once();
  }

  v14 = CEMCreateStringByTranslatingEmojiCharactersToNameInString();

  if (v14)
  {
    v15 = sub_19A7AB014();
    v17 = v16;
  }

  else
  {

    v15 = a1;
    v17 = a2;
  }

  sub_19A7A0358(v15, v17);

  v18 = [v12 _hostedWindowScene];
  if (v18)
  {
    v19 = v18;
    type metadata accessor for EmojiSelection();
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    *(v20 + 32) = a3 & 1;

    v21 = sub_19A7A5F14(0, v20, 0, 0, type metadata accessor for EmojiSelection, &unk_1EAFD0480, type metadata accessor for EmojiSelection, &unk_19A7C4334);

    [v19 sendAction_];
  }
}

uint64_t sub_19A7A0DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_19A7A0DC8, 0, 0);
}

uint64_t sub_19A7A0DC8()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_19A7A0E70;
  v3 = v0[4];
  v2 = v0[5];

  return MEMORY[0x1EEE42808](v3, v2);
}

uint64_t sub_19A7A0E70(double a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    v5 = sub_19A7A0FCC;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_19A7A0FA0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_19A7A0FA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56) != 0;
  *v1 = *(v0 + 64);
  *(v1 + 8) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_19A7A0FCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56) != 0;
  *v1 = 0;
  *(v1 + 8) = v2;
  return (*(v0 + 8))();
}

void sub_19A7A1064(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_19A7AB394();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;

  sub_19A755BF4(0, 0, v7, &unk_19A7C40B8, v9);

  sub_19A5F2B54(v7, &unk_1EAFCD690, &qword_19A7B6B00);
  v11 = [v10 _hostedWindowScene];
  if (v11)
  {
    v12 = v11;
    v13 = sub_19A7A583C(1, a1, a2, 0, 0);
    [v12 sendAction_];
  }
}

uint64_t sub_19A7A1200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_19A7A1224, 0, 0);
}

uint64_t sub_19A7A1224()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_19A7A12CC;
  v3 = v0[4];
  v2 = v0[5];

  return MEMORY[0x1EEE42800](v3, v2);
}

uint64_t sub_19A7A12CC(double a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    v5 = sub_19A7A8894;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_19A7A8890;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_19A7A13FC(char a1)
{
  v2 = v1;
  v4 = [v2 _hostedWindowScene];
  if (v4)
  {
    v5 = v4;
    v6 = sub_19A7A6270(9, a1 & 1, 0, 0);
    [v5 sendAction_];
  }
}

void sub_19A7A1530()
{
  v1 = v0;
  sub_19A7A8BE4();
  if (!v24[3])
  {
    sub_19A5F2B54(v24, &unk_1EAFCD750, &unk_19A7B87D0);
    return;
  }

  sub_19A5F5028(0, &unk_1EAFD0408, 0x1E69DD750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v2 = v25;
  v3 = sub_19A7A8BF4();
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = v3;
  sub_19A7ABC54();
  if (!*(v4 + 16) || (v5 = sub_19A6955D8(v24), (v6 & 1) == 0))
  {

    sub_19A6A0B0C(v24);
LABEL_14:
    v25 = 0u;
    v26 = 0u;
    goto LABEL_15;
  }

  sub_19A6120B4(*(v4 + 56) + 32 * v5, &v25);
  sub_19A6A0B0C(v24);

  if (!*(&v26 + 1))
  {
LABEL_15:
    sub_19A5F2B54(&v25, &unk_1EAFCD750, &unk_19A7B87D0);
LABEL_16:
    v15 = sub_19A7A8BF4();
    if (v15)
    {
      v16 = v15;
      *&v25 = 0xD000000000000041;
      *(&v25 + 1) = 0x800000019A7CF540;
      sub_19A7ABC54();
      if (*(v16 + 16))
      {
        v17 = sub_19A6955D8(v24);
        if (v18)
        {
          sub_19A6120B4(*(v16 + 56) + 32 * v17, &v25);
          sub_19A6A0B0C(v24);

          if (*(&v26 + 1))
          {
            if (swift_dynamicCast())
            {
              v19 = LOBYTE(v24[0]);
LABEL_26:
              sub_19A7A193C(v2, v19);

              return;
            }

LABEL_25:
            v19 = 1;
            goto LABEL_26;
          }

LABEL_24:
          sub_19A5F2B54(&v25, &unk_1EAFCD750, &unk_19A7B87D0);
          goto LABEL_25;
        }
      }

      sub_19A6A0B0C(v24);
    }

    v25 = 0u;
    v26 = 0u;
    goto LABEL_24;
  }

  sub_19A5F5028(0, &unk_1EAFCA548, 0x1E69DD2F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v7 = v24[0];
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 window];

  v11 = [v10 windowScene];
  if (v11)
  {
    v12 = v7;
    v13 = v11;
    v14 = sub_19A7AB924();

    if (v14)
    {

      goto LABEL_16;
    }
  }

  if (qword_1EAFCAA20 != -1)
  {
    swift_once();
  }

  v20 = sub_19A7A9384();
  __swift_project_value_buffer(v20, qword_1EAFCAA30);
  v21 = sub_19A7A9364();
  v22 = sub_19A7AB5A4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_19A5EE000, v21, v22, "Ignoring sticker insertion from a different scene", v23, 2u);
    MEMORY[0x19A907A30](v23, -1, -1);
  }
}

void sub_19A7A193C(NSObject *a1, int a2)
{
  v33 = a2;
  v3 = sub_19A7AAC14();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_19A7A8F64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19A7AAA14();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8Stickers7StickerC0B3KitE24donateUIStickerToRecentsyySo01_E0CFZ_0(a1);
  (*(v14 + 104))(v16, *MEMORY[0x1E69D4638], v13);
  sub_19A7AAAC4();
  swift_allocObject();
  sub_19A7AAA04();
  v34 = a1;
  v17 = [a1 identifier];
  sub_19A7AB014();

  sub_19A7A8F04();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_19A5F2B54(v8, &qword_1EAFCD800, &qword_19A7BCE60);
    v18 = v35;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v20 = v31;
    v19 = v32;
    (*(v31 + 104))(v5, *MEMORY[0x1E69D4728], v32);
    v21 = sub_19A7AAA54();
    (*(v20 + 8))(v5, v19);
    v22 = v35;
    if (v21)
    {
      v23 = sub_19A7AADC4();
      if (!v24)
      {
        v23 = sub_19A7AABF4();
        if (!v24)
        {
          v23 = sub_19A7AB0A4();
        }
      }

      sub_19A7A0358(v23, v24);

      (*(v10 + 8))(v12, v9);
    }

    else
    {
      (*(v10 + 8))(v12, v9);
    }

    v18 = v22;
  }

  v25 = [v18 _hostedWindowScene];
  if (v25)
  {
    v26 = v25;
    type metadata accessor for UIStickerWrapper();
    swift_allocObject();
    v27 = v34;
    v28 = sub_19A7A4244(v27, v33 & 1);
    v29 = sub_19A7A5BB0(2, v28, 0, 0, type metadata accessor for UIStickerWrapper, &qword_1EAFD0430, type metadata accessor for UIStickerWrapper, &unk_19A7C4234);

    [v26 sendAction_];
  }
}

uint64_t sub_19A7A2008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 128) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v7 = sub_19A7AAC14();
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 - 8);
  *(v6 + 48) = swift_task_alloc();
  sub_19A7AB354();
  *(v6 + 56) = sub_19A7AB344();
  v9 = sub_19A7AB2E4();
  *(v6 + 64) = v9;
  *(v6 + 72) = v8;

  return MEMORY[0x1EEE6DFA0](sub_19A7A2100, v9, v8);
}

uint64_t sub_19A7A2100()
{
  (*(v0[5] + 104))(v0[6], *MEMORY[0x1E69D4708], v0[4]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_19A7A21BC;
  v2 = v0[6];

  return sub_19A7697C0(v2);
}

uint64_t sub_19A7A21BC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 88) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 72);
  v7 = *(v2 + 64);

  return MEMORY[0x1EEE6DFA0](sub_19A7A2348, v7, v6);
}

uint64_t sub_19A7A2348(__n128 a1)
{
  if (v1[11])
  {
    v2 = sub_19A7AADC4();
    if (!v3)
    {
      v2 = sub_19A7AABF4();
      if (!v3)
      {
        v2 = sub_19A7AB0A4();
      }
    }

    sub_19A7A0358(v2, v3);

    v4 = swift_task_alloc();
    v1[12] = v4;
    *v4 = v1;
    v4[1] = sub_19A7A2470;

    return Sticker.uiSticker()();
  }

  else
  {

    v6 = v1[1];

    return v6();
  }
}

uint64_t sub_19A7A2470(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x1EEE6DFA0](sub_19A7A2598, v4, v3);
}

uint64_t sub_19A7A2598()
{
  v1 = [*(v0 + 24) _hostedWindowScene];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 104);
    v4 = *(v0 + 128);
    type metadata accessor for UIStickerWrapper();
    swift_allocObject();
    v5 = sub_19A7A4244(v3, v4);
    v6 = sub_19A7A5BB0(2, v5, 0, 0, type metadata accessor for UIStickerWrapper, &qword_1EAFD0430, type metadata accessor for UIStickerWrapper, &unk_19A7C4234);

    [v2 sendAction_];
  }

  v7 = sub_19A7669B0();
  v8 = *(v0 + 104);
  if (v7 == 2)
  {
    v9 = *(v0 + 88);

    _s8Stickers7StickerC0B3KitE24donateUIStickerToRecentsyySo01_E0CFZ_0(v8);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = [*(v0 + 104) identifier];
    v13 = sub_19A7AB014();
    v15 = v14;

    *(v0 + 112) = v15;
    v16 = swift_task_alloc();
    *(v0 + 120) = v16;
    *v16 = v0;
    v16[1] = sub_19A7A27C0;

    return sub_19A6A0544(v13, v15);
  }
}

uint64_t sub_19A7A27C0()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_19A7A2904, v3, v2);
}

uint64_t sub_19A7A2904()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_19A7A297C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v36 - v3;
  v5 = sub_19A7A8F64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v36 - v10;
  sub_19A7A8BE4();
  if (!v37[3])
  {
    sub_19A5F2B54(v37, &unk_1EAFCD750, &unk_19A7B87D0);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_11;
  }

  v12 = swift_dynamicCast();
  (*(v6 + 56))(v4, v12 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_11:
    v32 = &qword_1EAFCD800;
    v33 = &qword_19A7BCE60;
    v34 = v4;
    return sub_19A5F2B54(v34, v32, v33);
  }

  v13 = *(v6 + 32);
  v13(v11, v4, v5);
  v14 = sub_19A7A8BF4();
  if (!v14)
  {
    (*(v6 + 8))(v11, v5);
    v38 = 0u;
    v39 = 0u;
    goto LABEL_15;
  }

  v15 = v14;
  v36[1] = 0xD00000000000003CLL;
  v36[2] = 0x800000019A7CF500;
  sub_19A7ABC54();
  if (!*(v15 + 16) || (v16 = sub_19A6955D8(v37), (v17 & 1) == 0))
  {

    sub_19A6A0B0C(v37);
    v38 = 0u;
    v39 = 0u;
    goto LABEL_13;
  }

  sub_19A6120B4(*(v15 + 56) + 32 * v16, &v38);
  sub_19A6A0B0C(v37);

  if (!*(&v39 + 1))
  {
LABEL_13:
    (*(v6 + 8))(v11, v5);
LABEL_15:
    v32 = &unk_1EAFCD750;
    v33 = &unk_19A7B87D0;
    v34 = &v38;
    return sub_19A5F2B54(v34, v32, v33);
  }

  sub_19A5F5028(0, &qword_1EAFCDAD0, 0x1E696B098);
  if (swift_dynamicCast())
  {
    v18 = v37[0];
    [v37[0] CGRectValue];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [v1 _hostedWindowScene];
    if (v27)
    {
      v28 = v27;
      (*(v6 + 16))(v8, v11, v5);
      type metadata accessor for EditSticker(0);
      v29 = swift_allocObject();
      v13((v29 + OBJC_IVAR____TtC10StickerKit11EditSticker_stickerIdentifier), v8, v5);
      v30 = (v29 + OBJC_IVAR____TtC10StickerKit11EditSticker_sourceRect);
      *v30 = v20;
      v30[1] = v22;
      v30[2] = v24;
      v30[3] = v26;
      v31 = sub_19A7A5BB0(3, v29, 0, 1, type metadata accessor for EditSticker, &qword_1EAFD0428, type metadata accessor for EditSticker, &unk_19A7C4294);

      [v28 sendAction_];
    }

    else
    {
    }
  }

  return (*(v6 + 8))(v11, v5);
}

double sub_19A7A2E40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  if ([objc_opt_self() isInternalBuild])
  {
    if ((sub_19A6DBCD4() & 1) == 0)
    {
      v5 = sub_19A7AB394();
      (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
      sub_19A7AB354();
      v6 = v0;
      v7 = sub_19A7AB344();
      v8 = swift_allocObject();
      v9 = MEMORY[0x1E69E85E0];
      v8[2] = v7;
      v8[3] = v9;
      v8[4] = v6;
      sub_19A6816F0(0, 0, v3, &unk_19A7C43C0, v8);
    }
  }

  return result;
}

uint64_t sub_19A7A306C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_19A7AB354();
  *(v4 + 72) = sub_19A7AB344();
  v6 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A7A3104, v6, v5);
}

uint64_t sub_19A7A3104()
{
  v1 = *(v0 + 64);

  v2 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_configuration;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isInPopover;
    swift_beginAccess();
    LOBYTE(v3) = *(v3 + v4);
  }

  v5 = *(v0 + 64);
  type metadata accessor for RestrictedDistributionManager();
  static RestrictedDistributionManager.presentRestrictedDistributionTermsAlertIfNecessary(for:isInPopover:completion:)(v5, v3, 0, 0);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_19A7A31D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v10 - v1;
  sub_19A7A8BE4();
  if (v12)
  {
    v3 = sub_19A7A8F64();
    v4 = swift_dynamicCast();
    (*(*(v3 - 8) + 56))(v2, v4 ^ 1u, 1, v3);
  }

  else
  {
    sub_19A5F2B54(v11, &unk_1EAFCD750, &unk_19A7B87D0);
    v5 = sub_19A7A8F64();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  }

  sub_19A7A8BE4();
  if (v12)
  {
    v6 = swift_dynamicCast();
    if (v6)
    {
      v7 = v10[0];
    }

    else
    {
      v7 = 0;
    }

    if (v6)
    {
      v8 = v10[1];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    sub_19A5F2B54(v11, &unk_1EAFCD750, &unk_19A7B87D0);
    v7 = 0;
    v8 = 0;
  }

  sub_19A7A33C8(v2, v7, v8);

  return sub_19A5F2B54(v2, &qword_1EAFCD800, &qword_19A7BCE60);
}

void sub_19A7A33C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_19A7A8F64();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v4 _hostedWindowScene];
  if (v16)
  {
    v17 = v16;
    sub_19A60F0CC(a1, v10, &qword_1EAFCD800, &qword_19A7BCE60);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_19A5F2B54(v10, &qword_1EAFCD800, &qword_19A7BCE60);
      v18 = sub_19A7A51A8(5, a2, a3, 0, 0);
    }

    else
    {
      (*(v12 + 32))(v15, v10, v11);
      v18 = sub_19A7A4D98(5, v15, 0, 0);
      (*(v12 + 8))(v15, v11);
    }

    [v17 sendAction_];
  }
}

double sub_19A7A35DC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_19A7A8BF4();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  sub_19A7ABC54();
  if (!*(v4 + 16) || (v5 = sub_19A6955D8(v13), (v6 & 1) == 0))
  {

    sub_19A6A0B0C(v13);
LABEL_8:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_9;
  }

  sub_19A6120B4(*(v4 + 56) + 32 * v5, &v14);
  sub_19A6A0B0C(v13);

  if (!*(&v15 + 1))
  {
LABEL_9:
    sub_19A5F2B54(&v14, &unk_1EAFCD750, &unk_19A7B87D0);
    v9 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return result;
  }

  v9 = v13[0];
  v8 = v13[1];
LABEL_10:
  v10 = [v2 _hostedWindowScene];
  if (v10)
  {
    v11 = v10;
    v12 = sub_19A7A51A8(6, v9, v8, 0, 0);

    [v11 sendAction_];
  }

  else
  {
  }

  return result;
}

uint64_t sub_19A7A3780(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_19A7A8C04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A8BC4();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_19A7A3878(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_19A7A8C04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A8BC4();
  v10 = a1;
  v11 = [v10 _hostedWindowScene];
  if (v11)
  {
    v12 = v11;
    v13 = sub_19A7A6270(a4, 1, 0, 0);
    [v12 sendAction_];

    v10 = v13;
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_19A7A39B0(void *a1, void *a2)
{
  v3 = v2;
  v6 = [v3 _hostedWindowScene];
  if (v6)
  {
    v7 = v6;
    [a2 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [v7 screen];
    v17 = [v16 coordinateSpace];

    [a2 convertRect:v17 toCoordinateSpace:{v9, v11, v13, v15}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    type metadata accessor for SharedSticker();
    v26 = swift_allocObject();
    v26[2] = a1;
    v26[3] = v19;
    v26[4] = v21;
    v26[5] = v23;
    v26[6] = v25;
    v27 = a1;
    v28 = sub_19A7A5F14(10, v26, 0, 0, type metadata accessor for SharedSticker, &unk_1EAFD0418, type metadata accessor for SharedSticker, "uHmT");

    [v7 sendAction_];
  }
}

id LocalEmojiAndStickerCollectionViewController.__deallocating_deinit()
{
  v1 = v0;
  if (qword_1EAFCAA20 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCAA30);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB5A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver_];

  v8.receiver = v1;
  v8.super_class = type metadata accessor for LocalEmojiAndStickerCollectionViewController(0);
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

id LocalEmojiAndStickerCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id LocalEmojiAndStickerCollectionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_uiEmojiAndStickerCollectionViewController] = 0;
  v3[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_disableInsets] = 0;
  *&v3[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_configuration] = 0;
  *&v3[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_searchTask] = 0;
  *&v3[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController____lazy_storage___dataSource] = 0;
  sub_19A5F5028(0, &qword_1EAFCA4C0, 0x1E69DCA60);
  sub_19A7AB664();
  v7 = &v3[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_hostAppID];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_hideShortDescriptionTask] = 0;
  v8 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_recencyService;
  sub_19A7AAB34();
  *&v3[v8] = sub_19A7AAB24();
  if (a2)
  {
    v9 = sub_19A7AAFE4();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = type metadata accessor for LocalEmojiAndStickerCollectionViewController(0);
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id LocalEmojiAndStickerCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LocalEmojiAndStickerCollectionViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_uiEmojiAndStickerCollectionViewController] = 0;
  v1[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_disableInsets] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_configuration] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_searchTask] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController____lazy_storage___dataSource] = 0;
  sub_19A5F5028(0, &qword_1EAFCA4C0, 0x1E69DCA60);
  sub_19A7AB664();
  v3 = &v1[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_hostAppID];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_hideShortDescriptionTask] = 0;
  v4 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_recencyService;
  sub_19A7AAB34();
  *&v1[v4] = sub_19A7AAB24();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for LocalEmojiAndStickerCollectionViewController(0);
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_19A7A4244(void *a1, char a2)
{
  v3 = v2;
  v22[1] = *MEMORY[0x1E69E9840];
  *(v2 + 32) = a2;
  v22[0] = 0;
  v5 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v22];
  v6 = v22[0];
  if (v5)
  {
    v7 = sub_19A7A8E34();
    v9 = v8;
  }

  else
  {
    v10 = v6;
    v11 = sub_19A7A8D34();

    swift_willThrow();
    if (qword_1EAFCAA20 != -1)
    {
      swift_once();
    }

    v12 = sub_19A7A9384();
    __swift_project_value_buffer(v12, qword_1EAFCAA30);
    v13 = v11;
    v14 = sub_19A7A9364();
    v15 = sub_19A7AB584();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_19A7AC124();
      v20 = sub_19A62540C(v18, v19, v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_19A5EE000, v14, v15, "Failed to encode sticker: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x19A907A30](v17, -1, -1);
      MEMORY[0x19A907A30](v16, -1, -1);
    }

    else
    {
    }

    v7 = 0;
    v9 = 0xF000000000000000;
  }

  *(v3 + 16) = v7;
  *(v3 + 24) = v9;
  return v3;
}

uint64_t sub_19A7A4494()
{
  result = 0;
  v2 = *(v0 + 24);
  if (v2 >> 60 != 15)
  {
    v3 = *(v0 + 16);
    sub_19A5F5028(0, &qword_1EAFD0400, 0x1E696ACD0);
    sub_19A5F5028(0, &unk_1EAFD0408, 0x1E69DD750);
    sub_19A612F68(v3, v2);
    v4 = sub_19A7AB6C4();
    sub_19A612F00(v3, v2);
    return v4;
  }

  return result;
}

uint64_t sub_19A7A46CC()
{
  if (*v0)
  {
    return 0x7373696D736964;
  }

  else
  {
    return 1635017060;
  }
}

void sub_19A7A4700(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_19A7AC064() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7373696D736964 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_19A7AC064();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_19A7A47DC(uint64_t a1)
{
  v2 = sub_19A7A809C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A7A4818(uint64_t a1)
{
  v2 = sub_19A7A809C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A7A4854()
{
  sub_19A612F00(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_19A7A488C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD03F0, &unk_19A7C43A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A7A809C();
  sub_19A7AC1D4();
  v9 = *(v3 + 24);
  v12 = *(v3 + 16);
  v13 = v9;
  v11[15] = 0;
  sub_19A69E0F4(v12, v9);
  sub_19A7A8144();
  sub_19A7ABFA4();
  sub_19A612F00(v12, v13);
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_19A7ABFC4();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 *sub_19A7A4A14(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFD03D8, &qword_19A7C43A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A7A809C();
  sub_19A7AC1C4();
  if (v2)
  {
    type metadata accessor for UIStickerWrapper();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = 0;
    sub_19A7A80F0();
    sub_19A7ABF24();
    *(v1 + 16) = v11;
    LOBYTE(v11) = 1;
    v10 = sub_19A7ABF44();
    (*(v6 + 8))(v8, v5);
    *(v3 + 32) = v10 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

__n128 *sub_19A7A4C1C@<X0>(void *a1@<X0>, __n128 **a2@<X8>)
{
  type metadata accessor for UIStickerWrapper();
  swift_allocObject();
  result = sub_19A7A4A14(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_19A7A4CA0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&v3);

  *a2 = v3;
}

uint64_t sub_19A7A4D20(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_19A7AB654();
}

id sub_19A7A4D98(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = sub_19A7A8F64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a2, v7, v9);
  v12 = [objc_allocWithZone(MEMORY[0x1E698E700]) init];
  if (a3)
  {
    v13 = sub_19A7A8CA4();
    swift_allocObject();
    v14 = sub_19A7A8C94();
    v15 = &unk_1EAFCB0B0;
    v16 = MEMORY[0x1E69689D8];
    v17 = &unk_19A7C3B38;
  }

  else
  {
    v13 = sub_19A7A8B84();
    swift_allocObject();
    v14 = sub_19A7A8B74();
    v15 = &unk_1ED8B3400;
    v16 = MEMORY[0x1E6968010];
    v17 = &unk_19A7C3B00;
  }

  v18 = sub_19A7A8000(v15, 255, v16, v17);
  v27[3] = v13;
  v27[4] = v18;
  v27[0] = v14;
  __swift_project_boxed_opaque_existential_1(v27, v13);
  sub_19A7A8000(&unk_1EAFCB088, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_19A7A9644();
  (*(v8 + 8))(v11, v7);
  v19 = v26[1];
  v20 = v26[2];
  __swift_destroy_boxed_opaque_existential_1(v27);
  v21 = sub_19A7A8E14();
  [v12 setObject:v21 forSetting:1];

  if (a4)
  {
    v22 = [objc_opt_self() _synchronizedDrawingFence];
    [v12 setObject:v22 forSetting:2];
    sub_19A612F14(v19, v20);
  }

  else
  {
    sub_19A612F14(v19, v20);
  }

  v23 = sub_19A7AB4B4();
  [v12 setObject:v23 forSetting:0];

  type metadata accessor for EmojiAndStickerClientToHostAction();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v12 responder:0];

  return v24;
}

id sub_19A7A51A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v21[5] = a2;
  v21[6] = a3;
  v7 = objc_allocWithZone(MEMORY[0x1E698E700]);

  v8 = [v7 init];
  if (a4)
  {
    v9 = sub_19A7A8CA4();
    swift_allocObject();
    v10 = sub_19A7A8C94();
    v11 = &unk_1EAFCB0B0;
    v12 = MEMORY[0x1E69689D8];
    v13 = &unk_19A7C3B38;
  }

  else
  {
    v9 = sub_19A7A8B84();
    swift_allocObject();
    v10 = sub_19A7A8B74();
    v11 = &unk_1ED8B3400;
    v12 = MEMORY[0x1E6968010];
    v13 = &unk_19A7C3B00;
  }

  v21[3] = v9;
  v21[4] = sub_19A7A8000(v11, 255, v12, v13);
  v21[0] = v10;
  __swift_project_boxed_opaque_existential_1(v21, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCEEB0, &unk_19A7B9800);
  sub_19A6AA95C();
  sub_19A7A9644();

  __swift_destroy_boxed_opaque_existential_1(v21);
  v14 = sub_19A7A8E14();
  [v8 setObject:v14 forSetting:1];

  if (a5)
  {
    v15 = [objc_opt_self() _synchronizedDrawingFence];
    [v8 setObject:v15 forSetting:2];
    sub_19A612F14(v19, v20);
  }

  else
  {
    sub_19A612F14(v19, v20);
  }

  v16 = sub_19A7AB4B4();
  [v8 setObject:v16 forSetting:0];

  type metadata accessor for EmojiAndStickerClientToHostAction();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v8 responder:0];

  return v17;
}

id sub_19A7A54EC(uint64_t a1, char a2, char a3, double a4, double a5, double a6, double a7)
{
  *&v22[5] = a4;
  *&v22[6] = a5;
  *&v22[7] = a6;
  *&v22[8] = a7;
  v9 = [objc_allocWithZone(MEMORY[0x1E698E700]) init];
  if (a2)
  {
    v10 = sub_19A7A8CA4();
    swift_allocObject();
    v11 = sub_19A7A8C94();
    v12 = &unk_1EAFCB0B0;
    v13 = MEMORY[0x1E69689D8];
    v14 = &unk_19A7C3B38;
  }

  else
  {
    v10 = sub_19A7A8B84();
    swift_allocObject();
    v11 = sub_19A7A8B74();
    v12 = &unk_1ED8B3400;
    v13 = MEMORY[0x1E6968010];
    v14 = &unk_19A7C3B00;
  }

  v22[3] = v10;
  v22[4] = sub_19A7A8000(v12, 255, v13, v14);
  v22[0] = v11;
  __swift_project_boxed_opaque_existential_1(v22, v10);
  type metadata accessor for CGRect(0);
  sub_19A7A8000(&qword_1EAFCF2D0, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_19A7A9644();
  __swift_destroy_boxed_opaque_existential_1(v22);
  v15 = sub_19A7A8E14();
  [v9 setObject:v15 forSetting:1];

  if (a3)
  {
    v16 = [objc_opt_self() _synchronizedDrawingFence];
    [v9 setObject:v16 forSetting:2];
    sub_19A612F14(v20, v21);
  }

  else
  {
    sub_19A612F14(v20, v21);
  }

  v17 = sub_19A7AB4B4();
  [v9 setObject:v17 forSetting:0];

  type metadata accessor for EmojiAndStickerClientToHostAction();
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v9 responder:0];

  return v18;
}

id sub_19A7A583C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v21[5] = a2;
  v21[6] = a3;
  v7 = objc_allocWithZone(MEMORY[0x1E698E700]);

  v8 = [v7 init];
  if (a4)
  {
    v9 = sub_19A7A8CA4();
    swift_allocObject();
    v10 = sub_19A7A8C94();
    v11 = &unk_1EAFCB0B0;
    v12 = MEMORY[0x1E69689D8];
    v13 = &unk_19A7C3B38;
  }

  else
  {
    v9 = sub_19A7A8B84();
    swift_allocObject();
    v10 = sub_19A7A8B74();
    v11 = &unk_1ED8B3400;
    v12 = MEMORY[0x1E6968010];
    v13 = &unk_19A7C3B00;
  }

  v21[3] = v9;
  v21[4] = sub_19A7A8000(v11, 255, v12, v13);
  v21[0] = v10;
  __swift_project_boxed_opaque_existential_1(v21, v9);
  sub_19A7A9644();

  __swift_destroy_boxed_opaque_existential_1(v21);
  v14 = sub_19A7A8E14();
  [v8 setObject:v14 forSetting:1];

  if (a5)
  {
    v15 = [objc_opt_self() _synchronizedDrawingFence];
    [v8 setObject:v15 forSetting:2];
    sub_19A612F14(v19, v20);
  }

  else
  {
    sub_19A612F14(v19, v20);
  }

  v16 = sub_19A7AB4B4();
  [v8 setObject:v16 forSetting:0];

  type metadata accessor for EmojiAndStickerClientToHostAction();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v8 responder:0];

  return v17;
}

id sub_19A7A5BB0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v28[5] = a2;
  v14 = objc_allocWithZone(MEMORY[0x1E698E700]);

  v15 = [v14 init];
  if (a3)
  {
    v16 = sub_19A7A8CA4();
    swift_allocObject();
    v17 = sub_19A7A8C94();
    v18 = &unk_1EAFCB0B0;
    v19 = MEMORY[0x1E69689D8];
    v20 = &unk_19A7C3B38;
  }

  else
  {
    v16 = sub_19A7A8B84();
    swift_allocObject();
    v17 = sub_19A7A8B74();
    v18 = &unk_1ED8B3400;
    v19 = MEMORY[0x1E6968010];
    v20 = &unk_19A7C3B00;
  }

  v28[3] = v16;
  v28[4] = sub_19A7A8000(v18, 255, v19, v20);
  v28[0] = v17;
  __swift_project_boxed_opaque_existential_1(v28, v16);
  a5(0);
  sub_19A7A8000(a6, 255, a7, a8);
  sub_19A7A9644();

  __swift_destroy_boxed_opaque_existential_1(v28);
  v21 = sub_19A7A8E14();
  [v15 setObject:v21 forSetting:1];

  if (a4)
  {
    v22 = [objc_opt_self() _synchronizedDrawingFence];
    [v15 setObject:v22 forSetting:2];
    sub_19A612F14(v26, v27);
  }

  else
  {
    sub_19A612F14(v26, v27);
  }

  v23 = sub_19A7AB4B4();
  [v15 setObject:v23 forSetting:0];

  type metadata accessor for EmojiAndStickerClientToHostAction();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v15 responder:0];

  return v24;
}

id sub_19A7A5F14(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v29[5] = a2;
  v14 = objc_allocWithZone(MEMORY[0x1E698E700]);

  v15 = [v14 init];
  if (a3)
  {
    v16 = sub_19A7A8CA4();
    swift_allocObject();
    v17 = sub_19A7A8C94();
    v18 = &unk_1EAFCB0B0;
    v19 = MEMORY[0x1E69689D8];
    v20 = &unk_19A7C3B38;
  }

  else
  {
    v16 = sub_19A7A8B84();
    swift_allocObject();
    v17 = sub_19A7A8B74();
    v18 = &unk_1ED8B3400;
    v19 = MEMORY[0x1E6968010];
    v20 = &unk_19A7C3B00;
  }

  v29[3] = v16;
  v29[4] = sub_19A7A8000(v18, 255, v19, v20);
  v29[0] = v17;
  __swift_project_boxed_opaque_existential_1(v29, v16);
  a5();
  sub_19A7A8000(a6, v21, a7, a8);
  sub_19A7A9644();

  __swift_destroy_boxed_opaque_existential_1(v29);
  v22 = sub_19A7A8E14();
  [v15 setObject:v22 forSetting:1];

  if (a4)
  {
    v23 = [objc_opt_self() _synchronizedDrawingFence];
    [v15 setObject:v23 forSetting:2];
    sub_19A612F14(v27, v28);
  }

  else
  {
    sub_19A612F14(v27, v28);
  }

  v24 = sub_19A7AB4B4();
  [v15 setObject:v24 forSetting:0];

  type metadata accessor for EmojiAndStickerClientToHostAction();
  v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v15 responder:0];

  return v25;
}

id sub_19A7A6270(uint64_t a1, char a2, char a3, char a4)
{
  v20 = a2;
  v6 = [objc_allocWithZone(MEMORY[0x1E698E700]) init];
  if (a3)
  {
    v7 = sub_19A7A8CA4();
    swift_allocObject();
    v8 = sub_19A7A8C94();
    v9 = &unk_1EAFCB0B0;
    v10 = MEMORY[0x1E69689D8];
    v11 = &unk_19A7C3B38;
  }

  else
  {
    v7 = sub_19A7A8B84();
    swift_allocObject();
    v8 = sub_19A7A8B74();
    v9 = &unk_1ED8B3400;
    v10 = MEMORY[0x1E6968010];
    v11 = &unk_19A7C3B00;
  }

  v19[3] = v7;
  v19[4] = sub_19A7A8000(v9, 255, v10, v11);
  v19[0] = v8;
  __swift_project_boxed_opaque_existential_1(v19, v7);
  sub_19A7A9644();
  __swift_destroy_boxed_opaque_existential_1(v19);
  v12 = sub_19A7A8E14();
  [v6 setObject:v12 forSetting:1];

  if (a4)
  {
    v13 = [objc_opt_self() _synchronizedDrawingFence];
    [v6 setObject:v13 forSetting:2];
    sub_19A612F14(v17, v18);
  }

  else
  {
    sub_19A612F14(v17, v18);
  }

  v14 = sub_19A7AB4B4();
  [v6 setObject:v14 forSetting:0];

  type metadata accessor for EmojiAndStickerClientToHostAction();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v6 responder:0];

  return v15;
}

id sub_19A7A657C(uint64_t a1, char a2, char a3, double a4)
{
  *&v19[5] = a4;
  v6 = [objc_allocWithZone(MEMORY[0x1E698E700]) init];
  if (a2)
  {
    v7 = sub_19A7A8CA4();
    swift_allocObject();
    v8 = sub_19A7A8C94();
    v9 = &unk_1EAFCB0B0;
    v10 = MEMORY[0x1E69689D8];
    v11 = &unk_19A7C3B38;
  }

  else
  {
    v7 = sub_19A7A8B84();
    swift_allocObject();
    v8 = sub_19A7A8B74();
    v9 = &unk_1ED8B3400;
    v10 = MEMORY[0x1E6968010];
    v11 = &unk_19A7C3B00;
  }

  v19[3] = v7;
  v19[4] = sub_19A7A8000(v9, 255, v10, v11);
  v19[0] = v8;
  __swift_project_boxed_opaque_existential_1(v19, v7);
  sub_19A7722B8();
  sub_19A7A9644();
  __swift_destroy_boxed_opaque_existential_1(v19);
  v12 = sub_19A7A8E14();
  [v6 setObject:v12 forSetting:1];

  if (a3)
  {
    v13 = [objc_opt_self() _synchronizedDrawingFence];
    [v6 setObject:v13 forSetting:2];
    sub_19A612F14(v17, v18);
  }

  else
  {
    sub_19A612F14(v17, v18);
  }

  v14 = sub_19A7AB4B4();
  [v6 setObject:v14 forSetting:0];

  type metadata accessor for EmojiAndStickerClientToHostAction();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v6 responder:0];

  return v15;
}

unint64_t sub_19A7A688C(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

void sub_19A7A689C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v84 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDC18, &unk_19A7BBF60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v84 - v6;
  if (qword_1EAFCAA20 != -1)
  {
    swift_once();
  }

  v8 = sub_19A7A9384();
  __swift_project_value_buffer(v8, qword_1EAFCAA30);
  v9 = sub_19A7A9364();
  v10 = sub_19A7AB5A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_19A5EE000, v9, v10, "viewIsAppearing", v11, 2u);
    MEMORY[0x19A907A30](v11, -1, -1);
  }

  if (!*&v1[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_uiEmojiAndStickerCollectionViewController])
  {
    v86 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_uiEmojiAndStickerCollectionViewController;
    v12 = [v1 view];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 window];

      if (v14)
      {
        v15 = [v14 windowScene];

        if (v15)
        {
          v16 = v15;
          sub_19A7AB8F4();

          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDC20, &unk_19A7BC840);
          v18 = *(v17 - 8);
          if ((*(v18 + 48))(v7, 1, v17) == 1)
          {
            sub_19A5FA874(v7);
            v19 = 0;
          }

          else
          {
            swift_getOpaqueTypeConformance2();
            sub_19A6D50E0();
            v19 = sub_19A7A93D4();
            (*(v18 + 8))(v7, v17);
          }

          v20 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_configuration;
          swift_beginAccess();
          v21 = *&v1[v20];
          *&v1[v20] = v19;
          v22 = v19;

          if (v19)
          {
            if (qword_1ED8B2D18 != -1)
            {
              swift_once();
            }

            v23 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_didCreateSticker;
            swift_beginAccess();
            sub_19A778B08(v22[v23]);
          }
        }
      }

      if (qword_1ED8B2A98 != -1)
      {
        swift_once();
      }

      v24 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_configuration;
      swift_beginAccess();
      v25 = *&v1[v24];
      v26 = v25;
      v27 = [v1 view];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 window];

        if (v29)
        {
          v30 = [v29 screen];

          [v30 scale];
          v32 = v31;
        }

        else
        {
          v32 = 1.0;
        }

        v33 = objc_allocWithZone(type metadata accessor for ImageGlyphViewConfiguration());
        v34 = sub_19A7978B8(v25, v32);

        sub_19A75AFA0(v34);
        v35 = objc_opt_self();
        if (([v35 useNewCollectionView] & 1) == 0)
        {
          v36 = sub_19A7AB394();
          (*(*(v36 - 8) + 56))(v4, 1, 1, v36);
          v37 = swift_allocObject();
          *(v37 + 16) = 0;
          *(v37 + 24) = 0;
          sub_19A755944(0, 0, v4, &unk_19A7C4410, v37);

          sub_19A5F2B54(v4, &unk_1EAFCD690, &qword_19A7B6B00);
        }

        sub_19A652D38();
        if (qword_1ED8B2D18 != -1)
        {
          swift_once();
        }

        v38 = qword_1ED8B2D20;
        sub_19A77AAA0();
        v39 = sub_19A79F344(v1);
        [v1 addChildViewController_];
        v40 = [v39 view];
        if (!v40)
        {
          goto LABEL_36;
        }

        v41 = v40;
        v42 = [objc_opt_self() clearColor];
        [v41 setBackgroundColor_];

        v43 = [v41 layer];
        v44 = [objc_opt_self() currentDevice];
        v45 = [v44 userInterfaceIdiom];

        [v43 setHitTestsAsOpaque_];
        v46 = [v1 view];
        if (v46)
        {
          v47 = v46;
          [v46 addSubview_];

          [v41 setTranslatesAutoresizingMaskIntoConstraints_];
          v48 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_disableInsets;
          swift_beginAccess();
          v49 = 0.0;
          v50 = 0.0;
          v51 = 0.0;
          v52 = 0.0;
          if ((v1[v48] & 1) == 0)
          {
            [objc_opt_self() additionalInsets];
            v49 = v53;
            v50 = v54;
            v51 = v55;
            v52 = v56;
          }

          v84[1] = v38;
          v85 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100, &unk_19A7B6CC0);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_19A7BB2E0;
          v58 = [v41 topAnchor];
          v59 = [v1 view];
          if (v59)
          {
            v60 = v59;
            v61 = [v59 topAnchor];

            v62 = [v58 constraintEqualToAnchor:v61 constant:v49];
            *(v57 + 32) = v62;
            v63 = [v41 bottomAnchor];
            v64 = [v1 view];
            if (v64)
            {
              v65 = v64;
              v66 = [v64 bottomAnchor];

              v67 = [v63 constraintEqualToAnchor:v66 constant:-v51];
              *(v57 + 40) = v67;
              v68 = [v41 leftAnchor];
              v69 = [v1 view];
              if (v69)
              {
                v70 = v69;
                v71 = [v69 leftAnchor];

                v72 = [v68 constraintEqualToAnchor:v71 constant:v50];
                *(v57 + 48) = v72;
                v73 = [v41 rightAnchor];
                v74 = [v1 view];
                if (v74)
                {
                  v75 = v74;
                  v76 = objc_opt_self();
                  v77 = [v75 rightAnchor];

                  v78 = [v73 constraintEqualToAnchor:v77 constant:-v52];
                  *(v57 + 56) = v78;
                  sub_19A5F5028(0, &qword_1ED8B2030, 0x1E696ACD8);
                  v79 = sub_19A7AB234();

                  [v76 activateConstraints_];

                  v80 = sub_19A7AAFE4();
                  [v41 setAccessibilityIdentifier_];

                  v35 = v85;
LABEL_36:
                  [v39 didMoveToParentViewController_];
                  if (([v35 useNewCollectionView] & 1) == 0)
                  {
                    sub_19A779F18([v39 emojiKeyManager]);
                    swift_unknownObjectRelease();
                  }

                  if (qword_1EAFCAD68 != -1)
                  {
                    swift_once();
                  }

                  v81 = &v1[OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_hostAppID];
                  swift_beginAccess();
                  v83 = *v81;
                  v82 = v81[1];

                  sub_19A661A40(v83, v82);
                  *&v1[v86] = v39;
                  swift_unknownObjectRelease();
                  return;
                }

LABEL_48:
                __break(1u);
                return;
              }

LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_44;
  }
}

uint64_t sub_19A7A76B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19A60FB98;

  return sub_19A79F89C(a1, v4, v5, v7, v6);
}

uint64_t sub_19A7A7794(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60F860;

  return sub_19A7A0DA4(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A7A78A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60FB98;

  return sub_19A7A1200(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19A7A79D8(uint64_t a1)
{
  result = sub_19A7A8F64();
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

void sub_19A7A7A9C(uint64_t a1)
{
  sub_19A7A7ECC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_19A7A7ECC(uint64_t a1)
{
  if (!qword_1EAFCA510)
  {
    sub_19A5F5028(255, &qword_1EAFCA4C0, 0x1E69DCA60);
    v1 = sub_19A7AB674();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAFCA510);
    }
  }
}

unint64_t sub_19A7A7F58()
{
  result = qword_1EAFD03A8;
  if (!qword_1EAFD03A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD03A8);
  }

  return result;
}

unint64_t sub_19A7A7FAC()
{
  result = qword_1EAFD03B8;
  if (!qword_1EAFD03B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD03B8);
  }

  return result;
}

uint64_t sub_19A7A8000(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A7A8048()
{
  result = qword_1EAFD03C8;
  if (!qword_1EAFD03C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD03C8);
  }

  return result;
}

unint64_t sub_19A7A809C()
{
  result = qword_1EAFD03E0;
  if (!qword_1EAFD03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD03E0);
  }

  return result;
}

unint64_t sub_19A7A80F0()
{
  result = qword_1EAFD03E8;
  if (!qword_1EAFD03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD03E8);
  }

  return result;
}

unint64_t sub_19A7A8144()
{
  result = qword_1EAFD03F8;
  if (!qword_1EAFD03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD03F8);
  }

  return result;
}

uint64_t sub_19A7A8198(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60FB98;

  return sub_19A7A306C(a1, v4, v5, v6);
}

uint64_t objectdestroy_116Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_19A7A82A0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_19A60FB98;

  return sub_19A79DF90(v7, v8, v9, v10, a1, v4, v5, v6);
}

uint64_t sub_19A7A8384()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A60FB98;

  return sub_19A7A04D8();
}

unint64_t sub_19A7A8474()
{
  result = qword_1EAFD0490;
  if (!qword_1EAFD0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD0490);
  }

  return result;
}

unint64_t sub_19A7A84CC()
{
  result = qword_1EAFD0498;
  if (!qword_1EAFD0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD0498);
  }

  return result;
}

unint64_t sub_19A7A8524()
{
  result = qword_1EAFD04A0;
  if (!qword_1EAFD04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD04A0);
  }

  return result;
}

unint64_t sub_19A7A857C()
{
  result = qword_1EAFD04A8;
  if (!qword_1EAFD04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD04A8);
  }

  return result;
}

unint64_t sub_19A7A85D4()
{
  result = qword_1EAFD04B0;
  if (!qword_1EAFD04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD04B0);
  }

  return result;
}

unint64_t sub_19A7A862C()
{
  result = qword_1EAFD04B8;
  if (!qword_1EAFD04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD04B8);
  }

  return result;
}

unint64_t sub_19A7A8684()
{
  result = qword_1EAFD04C0;
  if (!qword_1EAFD04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD04C0);
  }

  return result;
}

unint64_t sub_19A7A86DC()
{
  result = qword_1EAFD04C8;
  if (!qword_1EAFD04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD04C8);
  }

  return result;
}

unint64_t sub_19A7A8734()
{
  result = qword_1EAFD04D0;
  if (!qword_1EAFD04D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD04D0);
  }

  return result;
}

unint64_t sub_19A7A878C()
{
  result = qword_1EAFD04D8;
  if (!qword_1EAFD04D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD04D8);
  }

  return result;
}

unint64_t sub_19A7A87E4()
{
  result = qword_1EAFD04E0;
  if (!qword_1EAFD04E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD04E0);
  }

  return result;
}

unint64_t sub_19A7A883C()
{
  result = qword_1EAFD04E8;
  if (!qword_1EAFD04E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFD04E8);
  }

  return result;
}

id sub_19A7A88BC()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EAFD04F0 = result;
  return result;
}

uint64_t sub_19A7A8974(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_19A7A9274();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  if (qword_1EAFCB738 != -1)
  {
    swift_once();
  }

  v5 = qword_1EAFD04F0;
  return sub_19A7A9264();
}

uint64_t sub_19A7A8A14()
{
  v0 = sub_19A7A9274();
  __swift_allocate_value_buffer(v0, qword_1EAFDD848);
  __swift_project_value_buffer(v0, qword_1EAFDD848);
  if (qword_1EAFCB738 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAFD04F0;
  return sub_19A7A9264();
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAFE0](t, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}