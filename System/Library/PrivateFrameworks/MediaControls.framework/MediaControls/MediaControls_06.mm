uint64_t sub_1A226147C()
{
  v1 = OBJC_IVAR____TtC13MediaControls13EqualizerView_isAnimating;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22614C0(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC13MediaControls13EqualizerView_isAnimating;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))(v5);
    if (*(v1 + v4))
    {
      sub_1A2262268();
    }

    else
    {
      sub_1A226268C();
    }
  }
}

void (*sub_1A2261570(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls13EqualizerView_isAnimating;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A2261604;
}

void sub_1A2261604(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_8;
    }

    v7 = v2[3];
    v8 = v2[4];
    (*((*MEMORY[0x1E69E7D40] & *v7) + 0x170))();
    if ((*(v7 + v8) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_8;
    }

    v9 = v2[3];
    v10 = v2[4];
    (*((*MEMORY[0x1E69E7D40] & *v9) + 0x170))();
    if (*(v9 + v10) != 1)
    {
LABEL_4:
      sub_1A226268C();
      goto LABEL_8;
    }
  }

  sub_1A2262268();
LABEL_8:

  free(v2);
}

uint64_t sub_1A2261708()
{
  v1 = OBJC_IVAR____TtC13MediaControls13EqualizerView_hidesWhenStopped;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A226174C(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls13EqualizerView_hidesWhenStopped;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))(v4);
}

uint64_t (*sub_1A22617E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2261848;
}

uint64_t sub_1A2261848(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x170))(result);
  }

  return result;
}

void *sub_1A226191C(uint64_t a1, double a2, double a3, uint64_t a4)
{
  v4[OBJC_IVAR____TtC13MediaControls13EqualizerView_isAnimating] = 0;
  v4[OBJC_IVAR____TtC13MediaControls13EqualizerView_hidesWhenStopped] = 1;
  *&v4[OBJC_IVAR____TtC13MediaControls13EqualizerView_barViews] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC13MediaControls13EqualizerView_stylingProvider] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls13EqualizerView_barCount] = a1;
  *&v4[OBJC_IVAR____TtC13MediaControls13EqualizerView_spacingRatio] = a2;
  *&v4[OBJC_IVAR____TtC13MediaControls13EqualizerView_cornerRadiusRatio] = a3;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for EqualizerView(a1, a4);
  v5 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = sub_1A2261D48();
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x170))(v6);

  return v5;
}

uint64_t sub_1A2261A28()
{
  ObjectType = swift_getObjectType();
  v1 = (*(ObjectType + 288))(6, 1.2, 0.5);
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t sub_1A2261B14(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for EqualizerView(a1, a2);
  v3 = objc_msgSendSuper2(&v5, sel_layoutSubviews);
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xD0))(v3);
  if (result)
  {
    return sub_1A2261D48();
  }

  return result;
}

void sub_1A2261C18()
{
  *(v0 + OBJC_IVAR____TtC13MediaControls13EqualizerView_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls13EqualizerView_hidesWhenStopped) = 1;
  *(v0 + OBJC_IVAR____TtC13MediaControls13EqualizerView_barViews) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC13MediaControls13EqualizerView_stylingProvider) = 0;
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A2261D48()
{
  v2 = v0;
  v41 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  v3 = v41();
  v4 = OBJC_IVAR____TtC13MediaControls13EqualizerView_barViews;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
    goto LABEL_44;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = v3 - result;
  if (__OFSUB__(v3, result))
  {
    goto LABEL_46;
  }

  while (2)
  {
    if (v7 >= 1)
    {
      do
      {
        v8 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        [v2 addSubview_];
        swift_beginAccess();
        v9 = v8;
        MEMORY[0x1A58DA960]();
        if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A22E6768();
        }

        v3 = v2 + v4;
        sub_1A22E67A8();
        swift_endAccess();

        --v7;
      }

      while (v7);
      goto LABEL_9;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_9:
      v1 = *(v2 + v4);
      if (v1 >> 62)
      {
        goto LABEL_47;
      }

      v40 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

    v34 = __OFSUB__(0, v7);
    v35 = -v7;
    if (v34)
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v35 < 0)
    {
LABEL_49:
      __break(1u);
      return result;
    }

    while (1)
    {
      swift_beginAccess();
      v3 = *(v2 + v4);
      v1 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

LABEL_32:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v2 + v4) = v3;
      if (v1 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        v3 = sub_1A220C880(v3);
      }

      v37 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v37)
      {
        goto LABEL_43;
      }

      v38 = v37 - 1;
      v39 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v38 + 0x20);
      *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v38;
      *(v2 + v4) = v3;
      swift_endAccess();
      [v39 removeFromSuperview];

      if (!--v35)
      {
        goto LABEL_9;
      }
    }

    if (sub_1A22E6DE8())
    {
      goto LABEL_32;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    result = sub_1A22E6DE8();
    v7 = v3 - result;
    if (!__OFSUB__(v3, result))
    {
      continue;
    }

    break;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  v40 = sub_1A22E6DE8();
LABEL_11:
  v10 = MEMORY[0x1E69E7D40];

  if (!v40)
  {
    goto LABEL_27;
  }

  v11 = 0;
  v12 = v1 & 0xC000000000000001;
  v13 = v1 & 0xFFFFFFFFFFFFFF8;
  v14 = &selRef__isReadyForAppearanceTransition;
  v15 = &selRef_routeType;
  while (2)
  {
    if (v12)
    {
      v18 = MEMORY[0x1A58DB0F0](v11, v1);
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      goto LABEL_18;
    }

    if (v11 >= *(v13 + 16))
    {
      goto LABEL_40;
    }

    v18 = *(v1 + 8 * v11 + 32);
    v4 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
LABEL_18:
      v43 = v18;
      v19 = 0.2;
      if (v11)
      {
        v3 = v2;
        v20 = v41();
        if (__OFSUB__(v20, 1))
        {
          goto LABEL_41;
        }

        v19 = dbl_1A230B9A0[v11 == v20 - 1];
      }

      v42 = v4;
      v21 = (*((*v10 & *v2) + 0xD0))();
      [v2 v14[449]];
      if (v21)
      {
        v16 = v19 * CGRectGetHeight(*&v22);
      }

      else
      {
        v26 = v13;
        v27 = v1;
        v1 = v12;
        Width = CGRectGetWidth(*&v22);
        v3 = v2;
        v4 = v41;
        v29 = v41();
        v30 = v41();
        if (__OFSUB__(v30, 1))
        {
          goto LABEL_42;
        }

        v32 = v29;
        v10 = MEMORY[0x1E69E7D40];
        v31 = v30 - 1;
        v16 = Width / ((*((*MEMORY[0x1E69E7D40] & *v2) + 0xA0))() * v31 + v32);
        v1 = v27;
        v13 = v26;
        v14 = &selRef__isReadyForAppearanceTransition;
        v15 = &selRef_routeType;
      }

      v3 = v2;
      sub_1A2262DA0(v11, v16);
      v4 = v43;
      [v43 v15[328]];
      [v43 v14[449]];
      v17 = CGRectGetWidth(v44);
      [v43 _setContinuousCornerRadius_];

      ++v11;
      if (v42 == v40)
      {
        goto LABEL_27;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_27:

  return (*((*v10 & *v2) + 0x190))(v33);
}

void sub_1A2262268()
{
  v1 = OBJC_IVAR____TtC13MediaControls13EqualizerView_barViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v22 = v2;

    if (!v3)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1A58DB0F0](v5, v22);
      }

      else
      {
        if (v5 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v22 + 32 + 8 * v5);
      }

      v7 = v6;
      v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
      if (v2 > 6)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0891A0, &unk_1A230BA80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A230B9B0;
      *(inited + 32) = sub_1A22635F4(&unk_1F143F0A8);
      *(inited + 40) = 0x3FECCCCCCCCCCCCDLL;
      *(inited + 48) = sub_1A22635F4(&unk_1F143F128);
      *(inited + 56) = 0x3FF2000000000000;
      *(inited + 64) = sub_1A22635F4(&unk_1F143F1C0);
      *(inited + 72) = 0x3FF599999999999ALL;
      *(inited + 80) = sub_1A22635F4(&unk_1F143F240);
      *(inited + 88) = 0x3FF599999999999ALL;
      *(inited + 96) = sub_1A22635F4(&unk_1F143F2D8);
      *(inited + 104) = 0x3FF2000000000000;
      v2 = sub_1A22635F4(&unk_1F143F358);
      *(inited + 112) = v2;
      *(inited + 120) = 0x3FECCCCCCCCCCCCDLL;
      if (v5 == 6)
      {
        goto LABEL_16;
      }

      v23 = v5 + 1;
      v9 = *(inited + v4 + 32);
      v10 = *(inited + v4 + 40);

      [v7 bounds];
      Height = CGRectGetHeight(v30);
      v12 = objc_opt_self();
      v13 = swift_allocObject();
      *(v13 + 2) = v9;
      *(v13 + 3) = v7;
      *(v13 + 4) = v0;
      *(v13 + 5) = v5;
      v13[6] = Height;
      v28 = sub_1A22639C8;
      v29 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v25 = 1107296256;
      v26 = sub_1A210E3F0;
      v27 = &block_descriptor_8;
      v14 = _Block_copy(&aBlock);
      v15 = v7;
      v16 = v0;

      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      *(v18 + 2) = v17;
      *(v18 + 3) = v15;
      *(v18 + 4) = v5;
      v28 = sub_1A22639CC;
      v29 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v25 = 1107296256;
      v26 = sub_1A2262D4C;
      v27 = &block_descriptor_39;
      v19 = _Block_copy(&aBlock);
      v20 = v15;

      [v12 animateKeyframesWithDuration:40 delay:v14 options:v19 animations:v10 completion:0.0];

      _Block_release(v19);
      _Block_release(v14);

      v4 += 16;
      v5 = v23;
      if (v3 == v23)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v21 = v2;
    v3 = sub_1A22E6DE8();
    v2 = v21;
  }

LABEL_13:
}

void sub_1A226268C()
{
  v1 = OBJC_IVAR____TtC13MediaControls13EqualizerView_barViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A22E6DE8())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v7 = MEMORY[0x1E69E7D40];
    v8 = &selRef__isReadyForAppearanceTransition;
    v23 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v10 = MEMORY[0x1A58DB0F0](v4, v2);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_21;
        }

        v10 = *(v2 + 8 * v4 + 32);
      }

      if (__OFADD__(v4, 1))
      {
        break;
      }

      v24 = v4 + 1;
      v25 = v10;
      if (v4)
      {
        v11 = (*((*v7 & *v0) + 0x88))();
        if (__OFSUB__(v11, 1))
        {
          goto LABEL_22;
        }

        v12 = dbl_1A230B9A0[v4 == v11 - 1];
      }

      else
      {
        v12 = 0.2;
      }

      v13 = (*((*v7 & *v0) + 0xD0))();
      [v0 v8[449]];
      if (v13)
      {
        v9 = v12 * CGRectGetHeight(*&v14);
      }

      else
      {
        v18 = v2;
        v2 = i;
        Width = CGRectGetWidth(*&v14);
        v20 = *((*v7 & *v0) + 0x88);
        v21 = v20();
        v22 = v20();
        if (__OFSUB__(v22, 1))
        {
          goto LABEL_23;
        }

        v9 = Width / ((*((*v7 & *v0) + 0xA0))() * (v22 - 1) + v21);
        i = v2;
        v2 = v18;
        v6 = v23;
        v8 = &selRef__isReadyForAppearanceTransition;
      }

      sub_1A2262DA0(v4, v9);
      [v25 setFrame_];

      ++v4;
      if (v24 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_19:
}

void sub_1A226291C(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v11 = objc_opt_self();
    v12 = (a1 + 56);
    do
    {
      v13 = *(v12 - 3);
      v14 = *(v12 - 2);
      v15 = *(v12 - 1);
      v16 = *v12;
      v12 += 4;
      v17 = swift_allocObject();
      *(v17 + 16) = a2;
      *(v17 + 24) = v13;
      *(v17 + 32) = v14;
      *(v17 + 40) = v15;
      *(v17 + 48) = v16;
      *(v17 + 56) = a3;
      *(v17 + 64) = a4;
      *(v17 + 72) = a5;
      v21[4] = sub_1A2263A70;
      v21[5] = v17;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 1107296256;
      v21[2] = sub_1A210E3F0;
      v21[3] = &block_descriptor_60;
      v18 = _Block_copy(v21);
      v19 = a2;
      v20 = a3;

      [v11 addKeyframeWithRelativeStartTime:v18 relativeDuration:v13 animations:v14];
      _Block_release(v18);
      --v5;
    }

    while (v5);
  }
}

void sub_1A2262A80(uint64_t a1, void *a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0xD0))())
    {
      v8 = (*((*v7 & *v6) + 0x88))();
      v9 = sub_1A22636E4(v8);
      if ((a3 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(v9 + 16) > a3)
      {
        v10 = v9 + 16 * a3;
        v11 = *(v10 + 32);
        v12 = *(v10 + 40);
        swift_bridgeObjectRetain_n();

        [a2 bounds];
        Height = CGRectGetHeight(v29);
        v14 = objc_opt_self();
        v15 = swift_allocObject();
        *(v15 + 2) = v11;
        *(v15 + 3) = a2;
        *(v15 + 4) = v6;
        *(v15 + 5) = a3;
        v15[6] = Height;
        v27 = sub_1A2263B14;
        v28 = v15;
        aBlock = MEMORY[0x1E69E9820];
        v24 = 1107296256;
        v25 = sub_1A210E3F0;
        v26 = &block_descriptor_46;
        v16 = _Block_copy(&aBlock);
        v17 = a2;
        v18 = v6;

        v19 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v20 = swift_allocObject();
        *(v20 + 2) = v19;
        *(v20 + 3) = v17;
        *(v20 + 4) = a3;
        v27 = sub_1A2263B18;
        v28 = v20;
        aBlock = MEMORY[0x1E69E9820];
        v24 = 1107296256;
        v25 = sub_1A2262D4C;
        v26 = &block_descriptor_54;
        v21 = _Block_copy(&aBlock);
        v22 = v17;

        [v14 animateKeyframesWithDuration:40 delay:v16 options:v21 animations:v12 completion:0.0];

        _Block_release(v21);
        _Block_release(v16);
        goto LABEL_6;
      }

      __break(1u);
      return;
    }

LABEL_6:
  }
}

double sub_1A2262D4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_1A2262DA0(uint64_t a1, double a2)
{
  [v2 bounds];
  CGRectGetWidth(v7);
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  v4();
  if (__OFSUB__((v4)(), 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *((*v3 & *v2) + 0xA0);
  v5();
  [v2 bounds];
  CGRectGetWidth(v8);
  v4();
  if (__OFSUB__((v4)(), 1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5();
  v5();
  [v2 bounds];
  CGRectGetWidth(v9);
  v4();
  if (__OFSUB__((v4)(), 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5();
  [v2 bounds];

  UIRectCenteredYInRect();
}

id sub_1A2262FE0()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v2 = v1();
  v3 = 0.0;
  if (v2)
  {
    v3 = 1.0;
  }

  v4 = ((v1)([v0 setAlpha_]) & 1) == 0;

  return [v0 setHidden_];
}

void *sub_1A2263088()
{
  v1 = OBJC_IVAR____TtC13MediaControls13EqualizerView_stylingProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A22630D4(void *a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls13EqualizerView_stylingProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x190))();
}

uint64_t (*sub_1A2263180(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22631E4;
}

uint64_t sub_1A22631E4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x190))(result);
  }

  return result;
}

double sub_1A2263250()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x178))();
  if (v1)
  {
    v3 = v1;
    v4 = OBJC_IVAR____TtC13MediaControls13EqualizerView_barViews;
    swift_beginAccess();
    v5 = *(v0 + v4);
    if (v5 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A22E6DE8())
    {

      if (!i)
      {
        break;
      }

      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1A58DB0F0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v0 traitCollection];
        [v3 applyStyle:0 toView:v9 traitCollection:v11];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_13:
  }

  return result;
}

id sub_1A2263434(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EqualizerView(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A22634BC(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

char *sub_1A22634F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089198, &qword_1A230BA78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1A22635F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 48);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0.0;
  do
  {
    v5 = *(v2 - 2);
    v6 = *(v2 - 1);
    v7 = *v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1A22634F4(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_1A22634F4((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[32 * v9];
    *(v10 + 4) = v4;
    *(v10 + 5) = v5;
    *(v10 + 6) = v6;
    v10[56] = v7;
    v4 = v4 + v5;
    v2 += 3;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1A22636E4(uint64_t result)
{
  if (result > 6)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0891A0, &unk_1A230BA80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1A230B9B0;
    *(v1 + 32) = sub_1A22635F4(&unk_1F143F0A8);
    *(v1 + 40) = 0x3FECCCCCCCCCCCCDLL;
    *(v1 + 48) = sub_1A22635F4(&unk_1F143F128);
    *(v1 + 56) = 0x3FF2000000000000;
    *(v1 + 64) = sub_1A22635F4(&unk_1F143F1C0);
    *(v1 + 72) = 0x3FF599999999999ALL;
    *(v1 + 80) = sub_1A22635F4(&unk_1F143F240);
    *(v1 + 88) = 0x3FF599999999999ALL;
    *(v1 + 96) = sub_1A22635F4(&unk_1F143F2D8);
    *(v1 + 104) = 0x3FF2000000000000;
    *(v1 + 112) = sub_1A22635F4(&unk_1F143F358);
    *(v1 + 120) = 0x3FECCCCCCCCCCCCDLL;
    return v1;
  }

  return result;
}

uint64_t sub_1A22637FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A2263844(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1A22638A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A22638C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EqualizerView.AnimationProperties.Keyframe.Value(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EqualizerView.AnimationProperties.Keyframe.Value(uint64_t result, int a2, int a3)
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1A226396C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A2263988(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_35Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1A2263A70()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v1 + 64);
  if (v3)
  {
    v6 = *(v1 + 72);
  }

  else
  {
    v7 = *(v1 + 40);
    [v4 bounds];
    v6 = fmin(v7, 1.0) * CGRectGetHeight(v10);
  }

  sub_1A2262DA0(v5, v6);

  return [v2 setFrame_];
}

uint64_t sub_1A2263B34(uint64_t a1)
{
  v2 = sub_1A22E5DD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A22E5D98();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2266F90(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v12, v2);
    MEMORY[0x1A58DB4F0](1);
    sub_1A2266FF4(&unk_1EB0891B0, MEMORY[0x1E69AE6B8], MEMORY[0x1E69AE6C0]);
    sub_1A22E6548();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0890C0, qword_1A230BAA0);
    (*(v7 + 32))(v9, v12, v6);
    MEMORY[0x1A58DB4F0](0);
    sub_1A2266FF4(&unk_1EB0891C0, MEMORY[0x1E69AE690], MEMORY[0x1E69AE698]);
    sub_1A22E6548();
    sub_1A22E72D8();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1A2263E2C()
{
  sub_1A22E72A8();
  sub_1A2263B34(v1);
  return sub_1A22E72F8();
}

uint64_t sub_1A2263E70(uint64_t a1)
{
  sub_1A22E72A8();
  sub_1A2263B34(v2);
  return sub_1A22E72F8();
}

void (*sub_1A2263EAC(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828, &qword_1A2308D10) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_viewModel;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1A2117CFC(v1 + v9, v8);
  return sub_1A2263FCC;
}

void sub_1A2263FCC(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_1A2117CFC(*(*a1 + 12), v6);
    sub_1A2117CFC(v7 + v4, v5);
    swift_beginAccess();
    sub_1A211854C(v6, v7 + v4);
    swift_endAccess();
    sub_1A21185BC(v5);
    sub_1A210D9B0(v5, &qword_1EB088828, &qword_1A2308D10);
  }

  else
  {
    sub_1A2117CFC(v7 + v4, v6);
    swift_beginAccess();
    sub_1A211854C(v3, v7 + v4);
    swift_endAccess();
    sub_1A21185BC(v6);
  }

  sub_1A210D9B0(v6, &qword_1EB088828, &qword_1A2308D10);
  sub_1A210D9B0(v3, &qword_1EB088828, &qword_1A2308D10);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1A2264158(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A22641C4(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2209C9C;
}

double sub_1A226426C@<D0>(uint64_t a1@<X8>)
{
  sub_1A224A928(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_1A22642B8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v3;
  result = *(v1 + 56);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 sub_1A22642D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  result = *(a1 + 32);
  *(v1 + 56) = result;
  *(v1 + 72) = *(a1 + 48);
  return result;
}

double sub_1A22642F8()
{
  sub_1A224A928(v1);
  xmmword_1ED9536E0 = xmmword_1A230BA90;
  qword_1ED9536F0 = 0x4040000000000000;
  *algn_1ED9536F8 = v1[0];
  *(&xmmword_1ED953700 + 8) = v1[1];
  result = *&v2;
  unk_1ED953718 = v2;
  byte_1ED953728 = v3;
  return result;
}

__n128 sub_1A2264354@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v5 = *(a1 + 48) & 1;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  v6 = *(a1 + 16);
  *(a2 + 24) = *a1;
  *(a2 + 40) = v6;
  result = *(a1 + 32);
  *(a2 + 56) = result;
  *(a2 + 72) = v5;
  return result;
}

__int128 *sub_1A2264380()
{
  if (qword_1ED9524D0 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED9536E0;
}

__n128 sub_1A22643D4@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1ED9524D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1ED953710;
  *(a1 + 32) = xmmword_1ED953700;
  *(a1 + 48) = v1;
  *(a1 + 57) = unk_1ED953719;
  result = *&qword_1ED9536F0;
  *a1 = xmmword_1ED9536E0;
  *(a1 + 16) = result;
  return result;
}

id sub_1A226444C(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_style];
  swift_beginAccess();
  v5 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v5;
  *(v4 + 57) = *(a1 + 57);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v7 = *&v1[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider];
  v8 = *(a1 + 24);
  v13 = *(a1 + 72);
  v9 = *(a1 + 56);
  v10 = *(a1 + 40);
  v12[0] = v8;
  v12[1] = v10;
  v12[2] = v9;
  (*((*MEMORY[0x1E69E7D40] & *v7) + 0xA8))(v12);
  return [v2 setNeedsLayout];
}

void (*sub_1A2264528(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_style;
  *(v3 + 80) = v1;
  *(v3 + 88) = v4;
  swift_beginAccess();
  return sub_1A22645B4;
}

void sub_1A22645B4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[10];
    v5 = &v4[v3[11]];
    v6 = *&v4[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider];
    v7 = *(v5 + 40);
    v8 = *(v5 + 56);
    v9 = *(v5 + 24);
    *(v3 + 48) = v5[72];
    *(v3 + 1) = v7;
    *(v3 + 2) = v8;
    *v3 = v9;
    (*((*MEMORY[0x1E69E7D40] & *v6) + 0xA8))(v3);
    [v4 setNeedsLayout];
  }

  free(v3);
}

id sub_1A22646B8(uint64_t (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

double sub_1A226470C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1A2264754(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper)) + 0x110))(a1);
}

uint64_t (*sub_1A2264810(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_visualStylingProvider;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2264898;
}

void sub_1A2264898(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & **(v3[3] + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper)) + 0x110);

    v4(v5);
  }

  free(v3);
}

void sub_1A2264938(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_onScreen;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    v6 = [objc_opt_self() sharedInstance];
    [v6 setNeedsUpdate];
  }
}

void (*sub_1A22649CC(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_onScreen;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A2264A60;
}

void sub_1A2264A60(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (v5 != v6)
  {
    v7 = [objc_opt_self() sharedInstance];
    [v7 setNeedsUpdate];
  }

  free(v2);
}

double sub_1A2264AE0()
{
  v1 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_contentScale;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A2264B24(double a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_contentScale;
  swift_beginAccess();
  *&v1[v3] = a1;
  return [v1 setNeedsLayout];
}

id (*sub_1A2264B84(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2264BE8;
}

id sub_1A2264BE8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

char *sub_1A2264C3C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_viewModel;
  v10 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_style;
  if (qword_1ED9524D0 != -1)
  {
    swift_once();
  }

  memmove(&v4[v11], &xmmword_1ED9536E0, 0x49uLL);
  v12 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider;
  type metadata accessor for Slider(0, v13);
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper;
  type metadata accessor for Stepper(0, v15);
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_visualStylingProvider] = 0;
  v4[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_onScreen] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_contentScale] = 0x3FF0000000000000;
  v63.receiver = v4;
  v63.super_class = type metadata accessor for NowPlayingVolumeControlsView(0);
  v16 = objc_msgSendSuper2(&v63, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 configurationWithPointSize:4 weight:14.0];
  v20 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider;
  v21 = *&v18[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 volumeMin];
  v25 = [v24 imageWithConfiguration_];

  [v23 setMinimumValueImage_];
  v26 = *&v18[v20];
  v27 = [v22 volumeMax];
  v28 = [v27 imageWithConfiguration_];

  [v26 setMaximumValueImage_];
  v29 = *&v18[v20];
  [v29 addTarget:v18 action:sel_sliderValueChangedWithSender_ forControlEvents:4096];

  v30 = *&v18[v20];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 accessibilityVolumeLabel];
  if (!v33)
  {
    sub_1A22E65C8();
    v33 = sub_1A22E6598();
  }

  [v32 setAccessibilityLabel_];

  v34 = *&v18[v20];
  v35 = MEMORY[0x1E69E7D40];
  v36 = *((*MEMORY[0x1E69E7D40] & *v34) + 0x90);
  v37 = v34;
  v36(v18, &off_1F143F818);

  [v18 addSubview_];
  v38 = *&v18[v20];
  v39 = *((*v35 & *v38) + 0x108);
  v40 = v38;
  v41 = v39();

  [v41 setMinimumPressDuration_];
  v42 = *&v18[v20];
  v43 = *((*v35 & *v42) + 0x108);
  v44 = v42;
  v45 = v43();

  if (v45)
  {
    [v45 setAllowableMovement_];
  }

  v46 = *&v18[v20];
  v47 = *((*v35 & *v46) + 0x108);
  v48 = v46;
  v49 = v47();

  if (v49)
  {
    [v49 addTarget:v18 action:sel_sliderLongPressActionWithSender_];
  }

  v50 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper;
  v51 = *&v18[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper];
  (*((*v35 & *v51) + 0xE0))([v22 volumeRelativeMinus]);

  v52 = *&v18[v50];
  (*((*v35 & *v52) + 0xF8))([v22 volumeRelativePlus]);

  v53 = *&v18[v50];
  (*((*v35 & *v53) + 0xC8))([v17 configurationWithPointSize:5 weight:13.0]);

  v54 = *&v18[v50];
  v55 = v18;
  [v54 addTarget:v55 action:sel_stepperValueChangedWithSender_ forControlEvents:4096];
  [v55 addSubview_];
  v56 = sub_1A2113F38();
  v57 = *&v18[v20];
  v58 = *(**v56 + 144);

  v59 = v57;
  v58();

  v60 = [objc_opt_self() sharedInstance];
  [v60 addVolumeDisplay_];

  sub_1A2115288(0, &qword_1ED94EA40, 0x1E69DD1B8);
  sub_1A22E6B58();
  MEMORY[0x1A58DAE60]();
  swift_unknownObjectRelease();

  (*((*v35 & *v55) + 0x140))(v61);

  return v55;
}

id sub_1A2265418()
{
  v1 = v0;
  v2 = sub_1A2113F38();
  v3 = *&v0[OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider];
  v4 = *(**v2 + 152);

  v5 = v3;
  v4();

  v6 = [objc_opt_self() sharedInstance];
  [v6 removeVolumeDisplay_];

  v8.receiver = v1;
  v8.super_class = type metadata accessor for NowPlayingVolumeControlsView(0);
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

id sub_1A22655B4()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for NowPlayingVolumeControlsView(0);
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  [v0 bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MinX = CGRectGetMinX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v6 = CGRectGetWidth(v16);
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0);
  v7(v13);
  sub_1A210F570(x, y, width, height, MinX, 0.0, v6, *&v13[1]);
  [*(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider) setFrame_];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v8 = CGRectGetMinX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MinY = CGRectGetMinY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v10 = CGRectGetWidth(v19);
  v7(v14);
  return [*(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper) setFrame_];
}

double sub_1A226578C(double a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))(v6);
  (*((*v3 & *v1) + 0x108))(v4);
  return a1;
}

uint64_t sub_1A2265840(void *a1)
{
  v21 = a1;
  v2 = sub_1A22E5738();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828, &qword_1A2308D10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &ObjectType - v7;
  v9 = sub_1A22E5D98();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v11);
  v15 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  if ((*(*(v15 - 8) + 48))(v8, 1, v15) == 1)
  {
    return sub_1A210D9B0(v8, &qword_1EB088828, &qword_1A2308D10);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A221CE2C(v8);
  }

  v17 = (*(v10 + 32))(v13, v8, v9);
  if ((*((*v14 & *v1) + 0xA8))(v17))
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    [v21 value];
    sub_1A22E5D88();
    (*(v19 + 8))(v1, v5, ObjectType, v19);
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v2);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1A2265BCC()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    [*(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider) value];
    (*(v3 + 16))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A2265D70(uint64_t a1)
{
  v34 = a1;
  v33 = sub_1A22E5DA8();
  v37 = *(v33 - 8);
  v2 = MEMORY[0x1EEE9AC00](v33);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - v5;
  v7 = sub_1A22E5738();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828, &qword_1A2308D10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_1A22E5DD8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v15);
  v19 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  if ((*(*(v19 - 8) + 48))(v12, 1, v19) == 1)
  {
    return sub_1A210D9B0(v12, &qword_1EB088828, &qword_1A2308D10);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1A221CE2C(v12);
  }

  v21 = (*(v14 + 32))(v17, v12, v13);
  if (!(*((*v18 & *v1) + 0xA8))(v21))
  {
    return (*(v14 + 8))(v17, v13);
  }

  v23 = *((*v18 & *v34) + 0x90);
  v32 = v22;
  v24 = v23();
  v25 = v37;
  v26 = *(v37 + 104);
  v27 = MEMORY[0x1E69AE6A8];
  if ((v24 & 1) == 0)
  {
    v27 = MEMORY[0x1E69AE6B0];
  }

  v28 = *v27;
  v34 = v14;
  v29 = v33;
  v26(v4, v28, v33);
  ObjectType = swift_getObjectType();
  (*(v25 + 32))(v6, v4, v29);
  sub_1A22E5DC8();
  (*(v25 + 8))(v6, v29);
  (*(v32 + 8))(v1, v9, ObjectType);
  swift_unknownObjectRelease();
  (*(v35 + 8))(v9, v36);
  return (*(v34 + 8))(v17, v13);
}

uint64_t sub_1A22661E8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1A22E5DA8();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E69AE6A8];
  if ((a1 & 1) == 0)
  {
    v6 = MEMORY[0x1E69AE6B0];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

void sub_1A22662D4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_1A22E62F8();
  v21[0] = 0;
  sub_1A2266FF4(&qword_1ED94E9D8, type metadata accessor for UIAccessibilityContrast, &unk_1A230BC24);
  v3 = sub_1A22E6B68();

  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v5 = v4();
  if (v5)
  {
    (*(*v5 + 168))(*(v1 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider), v3);
  }

  v6 = *(v1 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider);
  v7 = [v6 isTracking];
  v8 = v4();
  v9 = v8;
  if (v8)
  {
    (*(*v8 + 104))(v19);

    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = sub_1A22DF514(v10);

    v9 = [v11 resolvedColorWithTraitCollection_];
  }

  [v6 setTintColor_];

  v12 = [v6 isTracking];
  v13 = v4();
  if (v13)
  {
    (*(*v13 + 104))(v20);

    v14 = sub_1A22DF514(v12 ^ 1u);

    v15 = [v14 resolvedColorWithTraitCollection_];
  }

  else
  {
    v15 = 0;
  }

  v16 = (v4)([v6 setMinimumTrackTintColor_]);
  v17 = v16;
  if (v16)
  {
    (*(*v16 + 104))(v21);

    v18 = sub_1A22DF514(2u);

    v17 = [v18 resolvedColorWithTraitCollection_];
  }

  [v6 setMaximumTrackTintColor_];
}

uint64_t sub_1A22666D0(uint64_t a1)
{
  v2 = v1;
  v4 = *(**sub_1A2113F38() + 160);

  v4(a1, &off_1F143E218);

  sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
  sub_1A229BEB0(v8);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = v2;
  sub_1A21179EC(v8, sub_1A2267520, v5, 0, 0);

  return sub_1A2116928(v8);
}

uint64_t sub_1A22667D4(uint64_t a1)
{
  v2 = v1;
  v4 = *(**sub_1A2113F38() + 160);

  v4(a1, &off_1F143E218);

  sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
  sub_1A229BEE0(v8);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = v2;
  sub_1A21179EC(v8, sub_1A226722C, v5, 0, 0);

  return sub_1A2116928(v8);
}

uint64_t sub_1A22668D8(uint64_t a1)
{
  v2 = v1;
  v4 = *(**sub_1A2113F38() + 160);

  v4(a1, &off_1F143E218);

  sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
  sub_1A229BEB0(v8);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = v2;
  sub_1A21179EC(v8, sub_1A2267520, v5, 0, 0);

  return sub_1A2116928(v8);
}

uint64_t sub_1A22669DC(uint64_t a1)
{
  v2 = v1;
  v4 = *(**sub_1A2113F38() + 160);

  v4(a1, &off_1F143E218);

  sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
  sub_1A229BEE0(v8);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = v2;
  sub_1A21179EC(v8, sub_1A2267520, v5, 0, 0);

  return sub_1A2116928(v8);
}

id sub_1A2266B14()
{
  v1 = [v0 window];
  v2 = [v1 windowScene];

  return v2;
}

uint64_t sub_1A2266B6C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() audioCategory];
  v3 = sub_1A22E65C8();

  return v3;
}

uint64_t sub_1A2266BCC(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v30 = sub_1A22E5DD8();
  v2 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A22E5D98();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0891D8, &qword_1A230BC68);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29 - v17;
  v19 = &v29 + *(v16 + 56) - v17;
  sub_1A2266F90(v31, &v29 - v17);
  sub_1A2266F90(v32, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A2266F90(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v30;
      (*(v2 + 32))(v4, v19, v30);
      v21 = sub_1A22E5DB8();
      v22 = *(v2 + 8);
      v22(v4, v20);
      v22(v12, v20);
LABEL_11:
      sub_1A221CE2C(v18);
      return v21 & 1;
    }

    (*(v2 + 8))(v12, v30);
    goto LABEL_7;
  }

  sub_1A2266F90(v18, v14);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0890C0, qword_1A230BAA0) + 48);
  v24 = *&v14[v23];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 8))(v14, v5);
LABEL_7:
    sub_1A210D9B0(v18, &qword_1EB0891D8, &qword_1A230BC68);
    goto LABEL_8;
  }

  v25 = *&v19[v23];
  (*(v6 + 32))(v8, v19, v5);
  v26 = sub_1A22E5D78();
  v27 = *(v6 + 8);
  v27(v8, v5);
  v27(v14, v5);
  if (v26)
  {
    v21 = v24 == v25;
    goto LABEL_11;
  }

  sub_1A221CE2C(v18);
LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1A2266F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2266FF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A226705C()
{
  v1 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_viewModel;
  v2 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_style;
  if (qword_1ED9524D0 != -1)
  {
    swift_once();
  }

  memmove((v0 + v3), &xmmword_1ED9536E0, 0x49uLL);
  v4 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider;
  type metadata accessor for Slider(0, v5);
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper;
  type metadata accessor for Stepper(0, v7);
  *(v0 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_visualStylingProvider) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_onScreen) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_contentScale) = 0x3FF0000000000000;
  sub_1A22E7028();
  __break(1u);
}

void type metadata accessor for UIAccessibilityContrast()
{
  if (!qword_1ED94E9C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ED94E9C8);
    }
  }
}

void sub_1A2267280(uint64_t a1)
{
  sub_1A221CC64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A22673A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A22673F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A22674B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1A2267534(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return a1;
}

id sub_1A22675B4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0891E0, &qword_1A230BC70);
  inited = swift_initStackObject();
  v7 = *MEMORY[0x1E69DDCF0];
  *(inited + 32) = *MEMORY[0x1E69DDCF0];
  v8 = MEMORY[0x1E69E6530];
  *(inited + 40) = 6;
  v9 = MEMORY[0x1E69DDCE8];
  *(inited + 16) = xmmword_1A230A140;
  v10 = *v9;
  *(inited + 64) = v8;
  *(inited + 72) = v10;
  *(inited + 104) = v8;
  *(inited + 80) = 0;
  v11 = a1;

  v12 = v7;
  v13 = v10;
  v14 = sub_1A2127868(inited, &qword_1EB089318, &qword_1A230C6D8, &qword_1EB0891E8, &qword_1A230BC78);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0891E8, &qword_1A230BC78);
  swift_arrayDestroy();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a4 = sub_1A2268200(0, a4[2] + 1, 1, a4);
  }

  v16 = a4[2];
  v15 = a4[3];
  if (v16 >= v15 >> 1)
  {
    a4 = sub_1A2268200((v15 > 1), v16 + 1, 1, a4);
  }

  a4[2] = v16 + 1;
  a4[v16 + 4] = v14;
  return v11;
}

uint64_t sub_1A2267770(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1A58D9910](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1A22677C4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1A58D9920](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_1A22678C8(uint64_t a1, id *a2)
{
  v3 = sub_1A22E65B8();
  *a2 = 0;
  return v3 & 1;
}

void sub_1A2267948(uint64_t *a2@<X8>)
{
  sub_1A22E65C8();
  v3 = sub_1A22E6598();

  *a2 = v3;
}

_DWORD *sub_1A226798C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_1A22679EC(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1A2267A1C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1A2267A48@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1A2267B20(uint64_t a1)
{
  sub_1A2127994(&qword_1EB0892C0, type metadata accessor for TraitKey, &unk_1A230C2F0);
  sub_1A2127994(&qword_1EB0892C8, type metadata accessor for TraitKey, &unk_1A230C290);

  return sub_1A22E7098();
}

uint64_t sub_1A2267BDC(uint64_t a1)
{
  sub_1A2127994(&qword_1EB0892D8, type metadata accessor for FeatureKey, &unk_1A230C084);
  sub_1A2127994(&qword_1EB0892E0, type metadata accessor for FeatureKey, &unk_1A230C024);

  return sub_1A22E7098();
}

double sub_1A2267C98@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1A2267CA4(uint64_t a1)
{
  sub_1A2127994(&qword_1EB0892E8, type metadata accessor for Weight, &unk_1A230BF2C);
  sub_1A2127994(&qword_1EB0892F0, type metadata accessor for Weight, &unk_1A230BECC);
  sub_1A2268924();
  return sub_1A22E7098();
}

void sub_1A2267D80(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1A22688EC(a1);

  *a2 = v3;
}

uint64_t sub_1A2267DC0(uint64_t a1)
{
  sub_1A2127994(&qword_1EB0892B0, type metadata accessor for TextStyle, &unk_1A230C448);
  sub_1A2127994(&qword_1EB0892B8, type metadata accessor for TextStyle, &unk_1A230C3E8);

  return sub_1A22E7098();
}

void sub_1A2267E7C(uint64_t *a2@<X8>)
{
  v3 = sub_1A22E6598();

  *a2 = v3;
}

uint64_t sub_1A2267EC4(uint64_t a1)
{
  sub_1A2127994(&qword_1ED94E9A0, type metadata accessor for AttributeName, &unk_1A230C67C);
  sub_1A2127994(&qword_1EB0892D0, type metadata accessor for AttributeName, &unk_1A230C17C);

  return sub_1A22E7098();
}

uint64_t sub_1A2267F88()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1A58DB520](*&v1);
}

uint64_t sub_1A2267FC4(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1EEE6B628](a1, *&v2);
}

uint64_t sub_1A2267FDC()
{
  v0 = sub_1A22E65C8();
  v1 = MEMORY[0x1A58DA900](v0);

  return v1;
}

double sub_1A2268018(uint64_t a1)
{
  sub_1A22E65C8();
  sub_1A22E6658();

  return result;
}

void sub_1A2268080()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089320, &unk_1A230C6E0);
  v2 = *v0;
  v3 = sub_1A22E7048();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1A21033A8(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1A210E174(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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
}

void *sub_1A2268200(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089308, &qword_1A230C6C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089310, &qword_1A230C6D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A22688EC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1A2268924()
{
  result = qword_1EB0892F8;
  if (!qword_1EB0892F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0892F8);
  }

  return result;
}

uint64_t sub_1A22689EC()
{
  type metadata accessor for MediaSuggestionsDataSource(0);
  v0 = swift_allocObject();
  result = sub_1A2269014();
  qword_1ED9535E8 = v0;
  return result;
}

uint64_t sub_1A2268A2C()
{
  v0 = swift_allocObject();
  sub_1A2269014();
  return v0;
}

uint64_t *sub_1A2268A64()
{
  if (qword_1ED952470 != -1)
  {
    swift_once();
  }

  return &qword_1ED9535E8;
}

double sub_1A2268AB4()
{
  if (qword_1ED952470 != -1)
  {
    swift_once();
  }

  return result;
}

id sub_1A2268B14(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() defaultRequestWithArtwork];

  return v2;
}

uint64_t sub_1A2268B54()
{
  v8 = sub_1A22E6B18();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A22E6B08();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A22E6488();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A210B4FC(0, v5);
  sub_1A22E6478();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A226AFD0(&qword_1ED94EA50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089330, &unk_1A230C700);
  sub_1A226AC04(&qword_1ED94EAC8, &qword_1EB089330, &unk_1A230C700);
  sub_1A22E6DA8();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  return sub_1A22E6B48();
}

id sub_1A2268D9C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69B0A68]);

  return [v0 init];
}

void sub_1A2268DD4()
{
  v1 = *(*v0[2] + 120);

  v3 = v1(v2);

  v11 = *(v3 + 16);
  if (v11)
  {
    v4 = 0;
    v5 = (v3 + 40);
    while (v4 < *(v3 + 16))
    {
      ++v4;
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = (*v0)[22];
      v9 = swift_unknownObjectRetain();
      v10 = v8(v9);
      (*(v6 + 8))(v0, v10, ObjectType, v6);
      swift_unknownObjectRelease();

      v5 += 2;
      if (v11 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

void sub_1A2268F20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_mediaSuggestions;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1A2268DD4();
}

void (*sub_1A2268F7C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2268FE0;
}

void sub_1A2268FE0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A2268DD4();
  }
}

uint64_t sub_1A2269014()
{
  v1 = v0;
  v2 = sub_1A22E6B18();
  v17 = *(v2 - 8);
  v18 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A22E6B08();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1A22E6488();
  MEMORY[0x1EEE9AC00](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089328, &qword_1A230C6F8);
  *(v0 + 16) = sub_1A22CE154();
  sub_1A22E5568();
  v7 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_request;
  *(v1 + v7) = [objc_opt_self() defaultRequestWithArtwork];
  v16 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_queue;
  v15 = sub_1A210B4FC(0, v8);
  sub_1A22E6478();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A226AFD0(&qword_1ED94EA50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089330, &unk_1A230C700);
  sub_1A226AC04(&qword_1ED94EAC8, &qword_1EB089330, &unk_1A230C700);
  sub_1A22E6DA8();
  (*(v17 + 104))(v4, *MEMORY[0x1E69E8090], v18);
  *(v1 + v16) = sub_1A22E6B48();
  v9 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_preferences;
  v10 = [objc_allocWithZone(MEMORY[0x1E69B0A68]) init];
  *(v1 + v9) = v10;
  *(v1 + OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_mediaSuggestions) = 0;
  v11 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A22693C4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A210E3F0;
  aBlock[3] = &block_descriptor_9;
  v12 = _Block_copy(aBlock);
  v13 = v10;

  [v13 setUserDisplayPreferencesDidChangeCallback_];
  _Block_release(v12);

  return v1;
}

double sub_1A22693C4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 224))(Strong);
  }

  return result;
}

double sub_1A2269438(uint64_t a1, uint64_t a2)
{
  v5 = *(**(v2 + 16) + 120);

  v7 = v5(v6);

  v8 = *(v7 + 16) + 1;
  v9 = 32;
  while (--v8)
  {
    v10 = *(v7 + v9);
    v9 += 16;
    if (v10 == a1)
    {

      return result;
    }
  }

  v12 = *(**(v2 + 16) + 136);

  v13 = v12(v21);
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1A226A568(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1A226A568((v18 > 1), v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  v20 = &v16[2 * v19];
  v20[4] = a1;
  v20[5] = a2;
  swift_unknownObjectRetain();
  v13(v21, 0);

  return result;
}

void sub_1A22695F4(uint64_t a1, uint64_t a2)
{
  v4 = *(**(v2 + 16) + 136);
  swift_unknownObjectRetain();

  v5 = v4(v10);
  v7 = v6;
  v8 = sub_1A226A744(v6, a1);
  swift_unknownObjectRelease();
  v9 = *(*v7 + 16);
  if (v9 < v8)
  {
    __break(1u);
  }

  else
  {
    sub_1A226A984(v8, v9);
    v5(v10, 0);
  }
}

void sub_1A22696D8()
{
  v1 = v0;
  v22 = *v0;
  v2 = sub_1A22E6468();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A22E6488();
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A22E55A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_lastRequestDate;
  swift_beginAccess();
  (*(v10 + 16))(v12, v1 + v13, v9);
  sub_1A22E5578();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  if (v15 <= -480.0)
  {
    sub_1A22E5588();
    v21 = v6;
    swift_beginAccess();
    (*(v10 + 40))(v1 + v13, v12, v9);
    swift_endAccess();
    v20 = *(v1 + OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_queue);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v18 = v22;
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    aBlock[4] = sub_1A226AA44;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A226B024;
    aBlock[3] = &block_descriptor_7;
    v19 = _Block_copy(aBlock);

    sub_1A22E6478();
    v24 = MEMORY[0x1E69E7CC0];
    sub_1A226AFD0(&qword_1ED94EB28, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C08, &unk_1A230FC00);
    sub_1A226AC04(&qword_1ED94EAF8, &qword_1EB088C08, &unk_1A230FC00);
    sub_1A22E6DA8();
    MEMORY[0x1A58DAD70](0, v8, v5, v19);
    _Block_release(v19);
    (*(v3 + 8))(v5, v2);
    (*(v23 + 8))(v8, v21);
  }
}

uint64_t sub_1A2269B30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v58 = a3;
  v6 = sub_1A22E6468();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A22E6488();
  v59 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A22E6248();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v53 - v18;
  if (a1)
  {
    v54 = v9;
    v55 = v7;
    v56 = v6;

    v20 = sub_1A2104EA0();
    (*(v13 + 16))(v19, v20, v12);

    v21 = sub_1A22E6238();
    v22 = sub_1A22E6A98();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v53 = v12;
      v25 = v24;
      aBlock[0] = v24;
      *v23 = 136315394;
      v26 = sub_1A22E7388();
      v28 = sub_1A2103450(v26, v27, aBlock);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      type metadata accessor for MRSuggestionContext();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089338, &qword_1A230C780);
      sub_1A226AFD0(&qword_1ED94EA20, type metadata accessor for MRSuggestionContext, &unk_1A230C8D8);
      v29 = sub_1A22E64D8();
      v31 = sub_1A2103450(v29, v30, aBlock);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_1A20FC000, v21, v22, "[%s] retrieved media suggestions: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v25, -1, -1);
      MEMORY[0x1A58DCD00](v23, -1, -1);

      (*(v13 + 8))(v19, v53);
    }

    else
    {

      (*(v13 + 8))(v19, v12);
    }

    sub_1A210B4FC(0, v32);
    v48 = sub_1A22E6B28();
    v49 = swift_allocObject();
    *(v49 + 16) = v58;
    *(v49 + 24) = a1;
    aBlock[4] = sub_1A226AE4C;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A210E3F0;
    aBlock[3] = &block_descriptor_27;
    v50 = _Block_copy(aBlock);

    sub_1A22E6478();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A226AFD0(&qword_1ED94EB28, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C08, &unk_1A230FC00);
    sub_1A226AC04(&qword_1ED94EAF8, &qword_1EB088C08, &unk_1A230FC00);
    v51 = v60;
    v52 = v56;
    sub_1A22E6DA8();
    MEMORY[0x1A58DAD70](0, v11, v51, v50);
    _Block_release(v50);

    (*(v55 + 8))(v51, v52);
    return (*(v59 + 8))(v11, v54);
  }

  else if (a2)
  {
    v33 = a2;
    v34 = sub_1A2104EA0();
    (*(v13 + 16))(v16, v34, v12);
    v35 = a2;
    v36 = sub_1A22E6238();
    v37 = v12;
    v38 = sub_1A22E6A78();

    if (os_log_type_enabled(v36, v38))
    {
      v39 = swift_slowAlloc();
      v53 = v37;
      v40 = v39;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v40 = 136315394;
      v43 = sub_1A22E7388();
      v45 = sub_1A2103450(v43, v44, aBlock);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2112;
      v46 = a2;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v47;
      *v41 = v47;
      _os_log_impl(&dword_1A20FC000, v36, v38, "[%s] error retrieving media suggestions: %@", v40, 0x16u);
      sub_1A226ADE4(v41);
      MEMORY[0x1A58DCD00](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1A58DCD00](v42, -1, -1);
      MEMORY[0x1A58DCD00](v40, -1, -1);

      return (*(v13 + 8))(v16, v53);
    }

    else
    {

      return (*(v13 + 8))(v16, v37);
    }
  }

  return result;
}

double sub_1A226A234(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for MRSuggestionContext();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089338, &qword_1A230C780);
    sub_1A226AFD0(&qword_1ED94EA20, type metadata accessor for MRSuggestionContext, &unk_1A230C8D8);
    v5 = sub_1A22E64C8();
  }

  v7 = a3;
  v6(v5, a3);

  return result;
}

uint64_t sub_1A226A320()
{

  v1 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_lastRequestDate;
  v2 = sub_1A22E55A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1A226A3C8()
{

  v1 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_lastRequestDate;
  v2 = sub_1A22E55A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1A226A4AC(uint64_t a1)
{
  sub_1A226AFD0(&qword_1ED94EA20, type metadata accessor for MRSuggestionContext, &unk_1A230C8D8);
  sub_1A226AFD0(&qword_1EB089360, type metadata accessor for MRSuggestionContext, &unk_1A230C838);

  return sub_1A22E7098();
}

void *sub_1A226A568(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089348, &qword_1A230C790);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089340, &qword_1A230C788);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A226A69C(uint64_t a1)
{
  sub_1A22E65C8();
  sub_1A22E72A8();
  sub_1A22E6658();
  v2 = sub_1A22E72F8();

  return sub_1A210E214(a1, v2);
}

void *sub_1A226A744(void *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = result;
  v7 = 0;
  for (i = 4; v3[i] != a2; i += 2)
  {
    if (v4 == ++v7)
    {
      return *(*result + 16);
    }
  }

  if (v2)
  {
    return v7;
  }

  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    if (v9 == v4)
    {
      return v7;
    }

    v10 = i * 8 + 16;
    while (v9 < v4)
    {
      if (*(v3 + v10) != a2)
      {
        if (v9 != v7)
        {
          if (v7 >= v4)
          {
            goto LABEL_23;
          }

          v12 = *(v3 + v10);
          v11 = *&v3[2 * v7 + 4];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_1A226A730(v3);
          }

          *&v3[2 * v7 + 4] = v12;
          result = swift_unknownObjectRelease();
          if (v9 >= v3[2])
          {
            goto LABEL_24;
          }

          *(v3 + v10) = v11;
          result = swift_unknownObjectRelease();
          *v6 = v3;
        }

        ++v7;
      }

      ++v9;
      v4 = v3[2];
      v10 += 16;
      if (v9 == v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A226A8B4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089340, &qword_1A230C788);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1A226A984(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A226A568(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A226A8B4(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1A226AA44()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_request);

    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC13MediaControls26MediaSuggestionsDataSource_preferences);

      v6 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();
      v7 = v5;

      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v1;
      aBlock[4] = sub_1A226AD8C;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A226A234;
      aBlock[3] = &block_descriptor_21_0;
      v9 = _Block_copy(aBlock);

      [v3 performWithPreferences:v7 completion:v9];
      _Block_release(v9);

      v3 = v7;
    }
  }
}

uint64_t sub_1A226AC04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for MediaSuggestionsDataSource(uint64_t a1)
{
  result = qword_1ED952448;
  if (!qword_1ED952448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A226ACAC(uint64_t a1)
{
  result = sub_1A22E55A8();
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

void type metadata accessor for MRSuggestionContext()
{
  if (!qword_1ED94EA10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ED94EA10);
    }
  }
}

uint64_t sub_1A226ADE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089E80, &qword_1A230DBA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1A226AE4C()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(v1 + 16) && (sub_1A226A69C(*MEMORY[0x1E69B0978]), (v5 & 1) != 0))
    {
    }

    else
    {
      v6 = 0;
    }

    (*(*v4 + 184))(v6);
  }

  return result;
}

uint64_t sub_1A226AFD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A226B034(uint64_t a1)
{
  v2 = sub_1A22E6158();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1A22E60A8();
  swift_allocObject();
  return sub_1A22E6098();
}

uint64_t sub_1A226B17C(char a1)
{
  if (!a1)
  {
    return 0x656C6553746F6E2ELL;
  }

  if (a1 == 1)
  {
    return 0x657463656C65732ELL;
  }

  return 0xD000000000000013;
}

unint64_t sub_1A226B1E4()
{
  v1 = 0x657463656C65732ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C6553746F6E2ELL;
  }
}

uint64_t sub_1A226B2A4(char a1, unsigned __int8 a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFF0000FE | (a3 << 16) | (a2 << 8) | a1 & 1;
}

uint64_t sub_1A226B2C4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = (a1[1] == a2[1]) & ~(*a1 ^ *a2);
  if (a1[2] != a2[2])
  {
    v2 = 0;
  }

  return v2 & (a2[3] ^ a1[3] ^ 1u);
}

void sub_1A226B314(unsigned int a1)
{
  v3 = a1 >> 8;
  v4 = HIWORD(a1);
  v5 = (v1 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_state);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  *v5 = a1 & 1;
  v5[1] = v3;
  v5[2] = v4;
  v5[3] = HIBYTE(a1) & 1;
  if (v6 != (a1 & 1) || v7 != v3 || v8 != v4 || ((HIBYTE(a1) & 1 ^ v9) & 1) != 0)
  {
    sub_1A226EA4C();
    sub_1A226ECC0();
  }
}

double sub_1A226B3EC()
{
  v0 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  __swift_allocate_value_buffer(v0, qword_1ED953218);
  v1 = __swift_project_value_buffer(v0, qword_1ED953218);
  v2 = [objc_opt_self() routingItemShowMoreTitle];
  v3 = sub_1A22E65C8();
  v5 = v4;

  v6 = *(v0 + 44);
  v7 = sub_1A22E5D98();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *v1 = 0x726F6D2D776F6873;
  *(v1 + 8) = 0xE900000000000065;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  result = 0.0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 131584;
  *(v1 + 88) = 1;
  *(v1 + *(v0 + 48)) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1A226B50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, int a11, int a12, char a13, uint64_t a14, uint64_t a15)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v16 = *(a7 + 16);
  *(a9 + 48) = *a7;
  *(a9 + 64) = v16;
  *(a9 + 80) = *(a7 + 32);
  *(a9 + 82) = a8;
  *(a9 + 83) = a10;
  *(a9 + 84) = a12;
  *(a9 + 88) = a13 & 1;
  v17 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  result = sub_1A2125248(a14, a9 + *(v17 + 44));
  *(a9 + *(v17 + 48)) = a15;
  return result;
}

uint64_t sub_1A226B594()
{
  if (qword_1ED951BA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for RoutePickerItemView.ViewModel(0);

  return __swift_project_value_buffer(v0, qword_1ED953218);
}

uint64_t sub_1A226B5F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED951BA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v3 = __swift_project_value_buffer(v2, qword_1ED953218);

  return sub_1A2123C78(v3, a1);
}

BOOL sub_1A226B670(int a1, int a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

uint64_t sub_1A226B6D0(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    v2 = 0;
    return MEMORY[0x1A58DB4F0](v2);
  }

  if (a2 == 3)
  {
    v2 = 1;
    return MEMORY[0x1A58DB4F0](v2);
  }

  MEMORY[0x1A58DB4F0](2);
  return sub_1A22E72C8();
}

uint64_t sub_1A226B72C(char a1)
{
  sub_1A22E72A8();
  if (a1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (a1 != 3)
    {
      MEMORY[0x1A58DB4F0](2);
      sub_1A22E72C8();
      return sub_1A22E72F8();
    }

    v2 = 1;
  }

  MEMORY[0x1A58DB4F0](v2);
  return sub_1A22E72F8();
}

uint64_t sub_1A226B7A8()
{
  v1 = *v0;
  sub_1A22E72A8();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x1A58DB4F0](2);
      sub_1A22E72C8();
      return sub_1A22E72F8();
    }

    v2 = 1;
  }

  MEMORY[0x1A58DB4F0](v2);
  return sub_1A22E72F8();
}

uint64_t sub_1A226B820()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
    return MEMORY[0x1A58DB4F0](v2);
  }

  if (v1 == 3)
  {
    v2 = 1;
    return MEMORY[0x1A58DB4F0](v2);
  }

  MEMORY[0x1A58DB4F0](2);
  return sub_1A22E72C8();
}

uint64_t sub_1A226B87C(uint64_t a1)
{
  v2 = *v1;
  sub_1A22E72A8();
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    if (v2 != 3)
    {
      MEMORY[0x1A58DB4F0](2);
      sub_1A22E72C8();
      return sub_1A22E72F8();
    }

    v3 = 1;
  }

  MEMORY[0x1A58DB4F0](v3);
  return sub_1A22E72F8();
}

BOOL sub_1A226B8F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_1A226B950(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      MEMORY[0x1A58DB4F0](2);
    }

    else
    {
      MEMORY[0x1A58DB4F0](3);
      MEMORY[0x1A58DB520](v4);
      if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = a3;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else if (a4)
  {
    MEMORY[0x1A58DB4F0](1);
  }

  else
  {
    MEMORY[0x1A58DB4F0](0);
  }

  return MEMORY[0x1A58DB520](v4);
}

uint64_t sub_1A226B9E0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1A22E72A8();
  sub_1A226B950(v7, a1, a2, a3);
  return sub_1A22E72F8();
}

uint64_t sub_1A226BA5C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1A22E72A8();
  sub_1A226B950(v5, v1, v2, v3);
  return sub_1A22E72F8();
}

uint64_t sub_1A226BAC4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1A22E72A8();
  sub_1A226B950(v6, v2, v3, v4);
  return sub_1A22E72F8();
}

uint64_t sub_1A226BB28(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t sub_1A226BB40(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t sub_1A226BB84(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  if (v4 == 255)
  {
    sub_1A22E72C8();
  }

  else
  {
    v6 = *v2;
    v5 = *(v2 + 8);
    sub_1A22E72C8();
    sub_1A226B950(a1, v6, v5, v4);
  }

  if (*(v2 + 32) == 1)
  {
    sub_1A22E72C8();
  }

  else
  {
    v7 = *(v2 + 24);
    sub_1A22E72C8();
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1A58DB520](v8);
  }

  return sub_1A22E72C8();
}

uint64_t sub_1A226BC2C()
{
  sub_1A22E72A8();
  sub_1A226BB84(v1);
  return sub_1A22E72F8();
}

void sub_1A226BC6C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

uint64_t sub_1A226BC88@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5 & 1;
  *(a7 + 33) = a6;
  return result;
}

uint64_t sub_1A226BCA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1A226F788(v5, v7) & 1;
}

uint64_t sub_1A226BCF4(uint64_t a1)
{
  sub_1A22E72A8();
  sub_1A226BB84(v2);
  return sub_1A22E72F8();
}

uint64_t sub_1A226BD30()
{
  v1 = *(v0 + 32);

  return v1;
}

void sub_1A226BD60(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

double sub_1A226BD98@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 512;
  return result;
}

__n128 sub_1A226BDAC@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_1A226BDC0(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v3;
  *(v1 + 80) = *(a1 + 32);
  return result;
}

uint64_t sub_1A226BE54(uint64_t result)
{
  *(v1 + 84) = result;
  *(v1 + 88) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1A226BECC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RoutePickerItemView.ViewModel(0) + 44);

  return sub_1A21251D8(a1, v3);
}

uint64_t sub_1A226BF58()
{
  type metadata accessor for RoutePickerItemView.ViewModel(0);
}

void sub_1A226BF8C(uint64_t a1)
{
  v3 = *(type metadata accessor for RoutePickerItemView.ViewModel(0) + 48);

  *(v1 + v3) = a1;
}

uint64_t sub_1A226C014()
{
  v1 = *(v0 + 82);
  v2 = 0x656C63726963;
  v3 = 0x72616D6B63656863;
  if (v1)
  {
    v3 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  if (v1 == 2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A226C094()
{
  v1 = *(v0 + 80);
  if ((v1 & 0xFF00) == 0x200)
  {
    return 0;
  }

  if (v1)
  {
    v3 = (v1 >> 8) & 1;
  }

  else
  {
    v3 = 1;
  }

  if (*(v0 + 64) == 0xFF)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A226C0D4()
{
  v1 = *(v0 + *(type metadata accessor for RoutePickerItemView.ViewModel(0) + 48));
  v4 = v0;

  return sub_1A226C258(sub_1A226F870, &v3, v1);
}

BOOL sub_1A226C140(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A22E5858();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A22E5868();
  if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69AE548])
  {
    return (*(a2 + 82) & 0xFE) == 2;
  }

  (*(v4 + 8))(v6, v3);
  return 0;
}

uint64_t sub_1A226C258(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_1A22E5888();
  v7 = MEMORY[0x1EEE9AC00](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x1E69E7CC0];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A226F4F8(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1A226F4F8((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_1A226C528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A22E5888();
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
    sub_1A226F8A0(&qword_1EB089388, MEMORY[0x1E69AE550], MEMORY[0x1E69AE560]);
    v21 = sub_1A22E6568();
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

uint64_t sub_1A226C73C(uint64_t a1)
{
  v3 = sub_1A22E5888();
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A22E5D98();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8, &qword_1A230AB90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  sub_1A22E6658();
  if (*(v1 + 24))
  {
    sub_1A22E72C8();
    sub_1A22E6658();
  }

  else
  {
    sub_1A22E72C8();
  }

  sub_1A22E6658();
  v13 = *(v1 + 80);
  if ((v13 & 0xFF00) != 0x200)
  {
    v35 = v8;
    v14 = v7;
    v15 = *(v1 + 48);
    v34 = *(v1 + 56);
    v16 = *(v1 + 72);
    v17 = *(v1 + 64);
    sub_1A22E72C8();
    if (v17 == 255)
    {
      sub_1A22E72C8();
      if (v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1A22E72C8();
      sub_1A226B950(a1, v15, v34, v17);
      if (v13)
      {
LABEL_7:
        sub_1A22E72C8();
LABEL_13:
        v7 = v14;
        v8 = v35;
        goto LABEL_14;
      }
    }

    sub_1A22E72C8();
    if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    MEMORY[0x1A58DB520](v18);
    goto LABEL_13;
  }

LABEL_14:
  sub_1A22E72C8();
  v19 = *(v1 + 82);
  if (v19 == 2)
  {
    v20 = 0;
    goto LABEL_18;
  }

  if (v19 == 3)
  {
    v20 = 1;
LABEL_18:
    MEMORY[0x1A58DB4F0](v20);
    goto LABEL_20;
  }

  MEMORY[0x1A58DB4F0](2);
  sub_1A22E72C8();
LABEL_20:
  sub_1A22E72C8();
  if (*(v1 + 88) == 1)
  {
    sub_1A22E72C8();
  }

  else
  {
    sub_1A22E72C8();
    sub_1A22E72D8();
  }

  v21 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  sub_1A2214CF8(v1 + *(v21 + 44), v12, &qword_1EB088BE8, &qword_1A230AB90);
  if ((*(v8 + 48))(v12, 1, v7) == 1)
  {
    v22 = v37;
    sub_1A22E72C8();
  }

  else
  {
    v23 = v36;
    v22 = v37;
    (*(v8 + 32))(v36, v12, v7);
    sub_1A22E72C8();
    sub_1A226F8A0(&unk_1EB0891C0, MEMORY[0x1E69AE690], MEMORY[0x1E69AE698]);
    sub_1A22E6548();
    (*(v8 + 8))(v23, v7);
  }

  v24 = *(v1 + *(v21 + 48));
  result = MEMORY[0x1A58DB4F0](*(v24 + 16));
  v26 = *(v24 + 16);
  if (v26)
  {
    v27 = v38 + 16;
    v28 = *(v38 + 16);
    v29 = v24 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v30 = *(v38 + 72);
    v31 = (v38 + 8);
    do
    {
      v32 = v27;
      v28(v6, v29, v22);
      sub_1A226F8A0(&qword_1EB089368, MEMORY[0x1E69AE550], MEMORY[0x1E69AE558]);
      sub_1A22E6548();
      result = (*v31)(v6, v22);
      v27 = v32;
      v29 += v30;
      --v26;
    }

    while (v26);
  }

  return result;
}

uint64_t sub_1A226CC10()
{
  sub_1A22E72A8();
  sub_1A226C73C(v1);
  return sub_1A22E72F8();
}

uint64_t sub_1A226CC54(uint64_t a1)
{
  sub_1A22E72A8();
  sub_1A226C73C(v2);
  return sub_1A22E72F8();
}

void (*sub_1A226CCA8(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838, qword_1A2308EB0) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_viewModel;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v9, v8, &qword_1EB088838, qword_1A2308EB0);
  return sub_1A226CDD8;
}

void sub_1A226CDD8(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_1A2214CF8(*(*a1 + 12), v6, &qword_1EB088838, qword_1A2308EB0);
    sub_1A2214CF8(v7 + v4, v5, &qword_1EB088838, qword_1A2308EB0);
    swift_beginAccess();
    sub_1A2123DA8(v6, v7 + v4);
    swift_endAccess();
    sub_1A2124644(v5);
    sub_1A210D9B0(v5, &qword_1EB088838, qword_1A2308EB0);
  }

  else
  {
    sub_1A2214CF8(v7 + v4, v6, &qword_1EB088838, qword_1A2308EB0);
    swift_beginAccess();
    sub_1A2123DA8(v3, v7 + v4);
    swift_endAccess();
    sub_1A2124644(v6);
  }

  sub_1A210D9B0(v6, &qword_1EB088838, qword_1A2308EB0);
  sub_1A210D9B0(v3, &qword_1EB088838, qword_1A2308EB0);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1A226CF44()
{
  v1 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_isHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A226CF88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_isHighlighted;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_backgroundView)) + 0x80))(a1);
}

uint64_t (*sub_1A226D01C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_isHighlighted;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A226D0A4;
}

void sub_1A226D0A4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & **(v3[3] + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_backgroundView)) + 0x80))(*(v3[3] + v3[4]));
  }

  free(v3);
}

id sub_1A226D188(uint64_t (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

uint64_t sub_1A226D1CC()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_controlInteractionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A2111D40(*v1, v1[1]);
  return v2;
}

id sub_1A226D288()
{
  v1 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView____lazy_storage___numberFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView____lazy_storage___numberFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView____lazy_storage___numberFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v4 setNumberStyle_];
    [v4 setUsesSignificantDigits_];
    [v4 setUsesGroupingSeparator_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A226D388()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for RoutePickerItemView(0);
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_rubberbandInsets];
  [*&v0[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_backgroundView] setFrame_];
  [*&v0[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_volumeControlView] setFrame_];
  return [*&v0[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_contentView] setFrame_];
}

uint64_t sub_1A226D4D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838, qword_1A2308EB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  v4 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(v3);
}

uint64_t sub_1A226D5B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8, &qword_1A230AB90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v155 = &v151 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F58, qword_1A230AB98);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v163 = &v151 - v4;
  v5 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v156 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v158 = &v151 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088848, &unk_1A230CDF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v151 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838, qword_1A2308EB0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v162 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v161 = &v151 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v154 = &v151 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v167 = &v151 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v160 = &v151 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v166 = &v151 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v159 = &v151 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v151 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v151 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v151 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v151 - v38;
  v170 = *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_contentView);
  v40 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  v41 = (*MEMORY[0x1E69E7D40] & *v0) + 176;
  v165 = v0;
  v168 = v40;
  v169 = v41;
  (v40)(v37);
  if (qword_1ED951BA0 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v5, qword_1ED953218);
  sub_1A2123C78(v42, v36);
  (*(v6 + 56))(v36, 0, 1, v5);
  v43 = *(v10 + 48);
  sub_1A2214CF8(v39, v12, &qword_1EB088838, qword_1A2308EB0);
  sub_1A2214CF8(v36, &v12[v43], &qword_1EB088838, qword_1A2308EB0);
  v46 = *(v6 + 48);
  v44 = v6 + 48;
  v45 = v46;
  v47 = v46(v12, 1, v5);
  v164 = v5;
  v171 = v46;
  if (v47 != 1)
  {
    sub_1A2214CF8(v12, v33, &qword_1EB088838, qword_1A2308EB0);
    v157 = v44;
    if (v45(&v12[v43], 1, v5) != 1)
    {
      v53 = &v12[v43];
      v54 = v158;
      sub_1A21245E0(v53, v158);
      v50 = sub_1A2125B80(v33, v54);
      sub_1A2123CDC(v54);
      sub_1A210D9B0(v36, &qword_1EB088838, qword_1A2308EB0);
      sub_1A210D9B0(v39, &qword_1EB088838, qword_1A2308EB0);
      sub_1A2123CDC(v33);
      sub_1A210D9B0(v12, &qword_1EB088838, qword_1A2308EB0);
      v51 = v165;
      v49 = v157;
      v52 = MEMORY[0x1E69E7D40];
      goto LABEL_11;
    }

    sub_1A210D9B0(v36, &qword_1EB088838, qword_1A2308EB0);
    sub_1A210D9B0(v39, &qword_1EB088838, qword_1A2308EB0);
    sub_1A2123CDC(v33);
    v49 = v157;
    goto LABEL_8;
  }

  sub_1A210D9B0(v36, &qword_1EB088838, qword_1A2308EB0);
  sub_1A210D9B0(v39, &qword_1EB088838, qword_1A2308EB0);
  v48 = v45(&v12[v43], 1, v5);
  v49 = v44;
  if (v48 != 1)
  {
LABEL_8:
    sub_1A210D9B0(v12, &qword_1EB088848, &unk_1A230CDF0);
    v50 = 0;
    goto LABEL_9;
  }

  sub_1A210D9B0(v12, &qword_1EB088838, qword_1A2308EB0);
  v50 = 1;
LABEL_9:
  v51 = v165;
  v52 = MEMORY[0x1E69E7D40];
LABEL_11:
  v55 = v170;
  v56 = (*((*v52 & *v170) + 0xA8))(v172);
  *(v57 + 64) = v50 & 1;
  v56(v172, 0);
  v58 = *(v55 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_imageView);
  v168();
  v59 = v164;
  if (v171(v30, 1, v164) || (v61 = *(v30 + 3)) == 0)
  {
    sub_1A210D9B0(v30, &qword_1EB088838, qword_1A2308EB0);
    v60 = 0;
  }

  else
  {
    v62 = *(v30 + 2);

    sub_1A210D9B0(v30, &qword_1EB088838, qword_1A2308EB0);
    v60 = sub_1A22DC57C(v62, v61);
  }

  v63 = v166;
  [v58 setImage_];

  v64 = *(v170 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_titleLabel);
  v65 = v159;
  v66 = v168;
  v168();
  if (v171(v65, 1, v59))
  {
    sub_1A210D9B0(v65, &qword_1EB088838, qword_1A2308EB0);
    v67 = 0;
  }

  else
  {

    sub_1A210D9B0(v65, &qword_1EB088838, qword_1A2308EB0);
    v67 = sub_1A22E6598();
    v63 = v166;
  }

  [v64 setText_];

  v68 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_subtitleLabel;
  v69 = *(v170 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_subtitleLabel);
  v66();
  if (v171(v63, 1, v59))
  {
    sub_1A210D9B0(v63, &qword_1EB088838, qword_1A2308EB0);
    v70 = 0;
    goto LABEL_66;
  }

  v159 = v68;
  v71 = v158;
  sub_1A2123C78(v63, v158);
  sub_1A210D9B0(v63, &qword_1EB088838, qword_1A2308EB0);
  v166 = sub_1A226D288();
  v73 = [v51 traitCollection];
  v74 = *(v71 + 80);
  if ((v74 & 0xFF00) != 0x200)
  {
    v75 = v59;
    v76 = *(v71 + 48);
    v152 = *(v71 + 56);
    v77 = *(v71 + 72);
    v78 = *(v71 + 64);
    v153 = v69;
    v157 = v49;
    if (v78 >= 3 && v78 != 3)
    {
      v81 = MEMORY[0x1E69E7CC0];
      v51 = v165;
      v59 = v75;
      if ((v74 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_51;
    }

    v79 = sub_1A22E6598();
    v80 = [objc_opt_self() systemImageNamed_];

    if (v80)
    {
      v81 = sub_1A22421C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v83 = *(v81 + 2);
      v82 = *(v81 + 3);
      if (v83 >= v82 >> 1)
      {
        v81 = sub_1A22421C0((v82 > 1), v83 + 1, 1, v81);
      }

      *(v81 + 2) = v83 + 1;
      v84 = &v81[24 * v83];
      *(v84 + 4) = v80;
      *(v84 + 5) = 0;
      v84[48] = 1;
      v66 = v168;
    }

    else
    {
      v81 = MEMORY[0x1E69E7CC0];
    }

    v85 = v76;
    if (v78 <= 1)
    {
      v59 = v75;
      if (v78)
      {
        v86 = [objc_opt_self() accessoryBatteryWithFormatter:v166 right:v85];
      }

      else
      {
        v86 = [objc_opt_self() accessoryBatteryWithFormatter:v166 left:v85];
      }

      v92 = v86;
      v89 = sub_1A22E65C8();
      v91 = v93;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_1A22421C0(0, *(v81 + 2) + 1, 1, v81);
      }

      v51 = v165;
      goto LABEL_42;
    }

    v59 = v75;
    if (v78 == 2)
    {
      v87 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v88 = [v166 stringFromNumber_];

      v51 = v165;
      if (!v88)
      {
        goto LABEL_45;
      }

      v89 = sub_1A22E65C8();
      v91 = v90;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v94 = [objc_opt_self() accessoryBatteryWithFormatter:v166 left:v85 right:v152];
      v89 = sub_1A22E65C8();
      v91 = v95;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v165;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_95:
        v81 = sub_1A22421C0(0, *(v81 + 2) + 1, 1, v81);
      }
    }

LABEL_42:
    v98 = *(v81 + 2);
    v97 = *(v81 + 3);
    if (v98 >= v97 >> 1)
    {
      v81 = sub_1A22421C0((v97 > 1), v98 + 1, 1, v81);
    }

    *(v81 + 2) = v98 + 1;
    v99 = &v81[24 * v98];
    *(v99 + 4) = v89;
    *(v99 + 5) = v91;
    v99[48] = 0;
LABEL_45:
    v71 = v158;
    if ((v74 & 1) == 0)
    {
LABEL_46:
      v100 = [objc_opt_self() accessoryBatteryWithFormatter:v166 chargeCase:v77];
      v101 = sub_1A22E65C8();
      v103 = v102;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_1A22421C0(0, *(v81 + 2) + 1, 1, v81);
      }

      v105 = *(v81 + 2);
      v104 = *(v81 + 3);
      if (v105 >= v104 >> 1)
      {
        v81 = sub_1A22421C0((v104 > 1), v105 + 1, 1, v81);
      }

      *(v81 + 2) = v105 + 1;
      v106 = &v81[24 * v105];
      *(v106 + 4) = v101;
      *(v106 + 5) = v103;
      v106[48] = 0;
      v71 = v158;
    }

LABEL_51:
    if ((v74 & 0x100) != 0)
    {
      v107 = sub_1A22E6598();
      v108 = [objc_opt_self() _systemImageNamed_];

      if (v108)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1A22421C0(0, *(v81 + 2) + 1, 1, v81);
        }

        v110 = *(v81 + 2);
        v109 = *(v81 + 3);
        if (v110 >= v109 >> 1)
        {
          v81 = sub_1A22421C0((v109 > 1), v110 + 1, 1, v81);
        }

        *(v81 + 2) = v110 + 1;
        v111 = &v81[24 * v110];
        *(v111 + 4) = v108;
        *(v111 + 5) = 0;
        v111[48] = 1;
      }

      v112 = [objc_opt_self() USBAudio];
      v113 = sub_1A22E65C8();
      v115 = v114;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_1A22421C0(0, *(v81 + 2) + 1, 1, v81);
      }

      v52 = MEMORY[0x1E69E7D40];
      v117 = *(v81 + 2);
      v116 = *(v81 + 3);
      if (v117 >= v116 >> 1)
      {
        v81 = sub_1A22421C0((v116 > 1), v117 + 1, 1, v81);
      }

      *(v81 + 2) = v117 + 1;
      v118 = &v81[24 * v117];
      *(v118 + 4) = v113;
      *(v118 + 5) = v115;
      v118[48] = 0;
      v71 = v158;
    }

    else
    {
      v52 = MEMORY[0x1E69E7D40];
    }

    sub_1A22703C0(0, v72);
    v119 = sub_1A220C2CC();
    v70 = sub_1A220C2D8(v81, v119, v120, v73);

    v69 = v153;
    goto LABEL_65;
  }

  v70 = 0;
  v52 = MEMORY[0x1E69E7D40];
LABEL_65:

  sub_1A2123CDC(v71);
  v68 = v159;
LABEL_66:
  [v69 setAttributedText_];

  v121 = *(v170 + v68);
  v122 = v160;
  v66();
  v123 = v171;
  if (v171(v122, 1, v59))
  {
    sub_1A210D9B0(v122, &qword_1EB088838, qword_1A2308EB0);
    v124 = 1;
    v125 = v163;
  }

  else
  {
    v126 = v156;
    sub_1A2123C78(v122, v156);
    sub_1A210D9B0(v122, &qword_1EB088838, qword_1A2308EB0);
    v127 = *(v126 + 64);
    v128 = *(v126 + 80);
    sub_1A2123CDC(v126);
    v125 = v163;
    if ((v128 & 0xFF00) == 0x200)
    {
      v124 = 1;
    }

    else if (v127 == 255)
    {
      v124 = (v128 & 1) != 0 && (v128 & 0x100) == 0;
    }

    else
    {
      v124 = 0;
    }
  }

  [v121 setHidden_];

  v129 = *(v51 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_volumeControlView);
  v66();
  v130 = v167;
  if (v123(v167, 1, v59))
  {
    sub_1A210D9B0(v130, &qword_1EB088838, qword_1A2308EB0);
LABEL_78:
    v134 = 1;
    goto LABEL_79;
  }

  v131 = *(v130 + 84);
  v132 = *(v130 + 88);
  v133 = sub_1A210D9B0(v130, &qword_1EB088838, qword_1A2308EB0);
  if (v132)
  {
    goto LABEL_78;
  }

  v146 = v154;
  (v66)(v133);
  if (v123(v146, 1, v59))
  {
    sub_1A210D9B0(v146, &qword_1EB088838, qword_1A2308EB0);
    v147 = sub_1A22E5D98();
    v148 = v155;
    (*(*(v147 - 8) + 56))(v155, 1, 1, v147);
  }

  else
  {
    v149 = v146 + *(v59 + 44);
    v150 = v146;
    v148 = v155;
    sub_1A2214CF8(v149, v155, &qword_1EB088BE8, &qword_1A230AB90);
    sub_1A210D9B0(v150, &qword_1EB088838, qword_1A2308EB0);
  }

  sub_1A224CF58(v148, v125, v131);
  v134 = 0;
LABEL_79:
  v135 = type metadata accessor for RoutePickerItemVolumeControl.ViewModel(0);
  v136 = 1;
  (*(*(v135 - 8) + 56))(v125, v134, 1, v135);
  v137 = (*((*v52 & *v129) + 0xA8))(v125);
  v138 = v161;
  (v66)(v137);
  if (!v123(v138, 1, v59))
  {
    v136 = *(v138 + 82) - 2 < 3;
  }

  v139 = sub_1A210D9B0(v138, &qword_1EB088838, qword_1A2308EB0);
  v140 = v162;
  (v66)(v139);
  v141 = 1;
  if (!v123(v140, 1, v59))
  {
    if (*(v140 + 88))
    {
      v141 = 1;
    }

    else
    {
      v141 = 2;
    }
  }

  sub_1A210D9B0(v140, &qword_1EB088838, qword_1A2308EB0);
  if (v136)
  {
    v142 = 0;
  }

  else
  {
    v142 = v141;
  }

  v143 = (*((*v52 & *v51) + 0xA8))(v172);
  *(v144 + 1) = v142;
  return v143(v172, 0);
}

uint64_t sub_1A226EA4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_backgroundView);
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v4 = v3();
  v5 = *((*v2 & *v1) + 0x70);
  v6 = v5(v28);
  *v7 = v4 & 1;
  v8 = v6(v28, 0);
  v9 = (v3)(v8) >> 8;
  v10 = v5(v28);
  *(v11 + 1) = v9;
  v12 = v10(v28, 0);
  v13 = (v3)(v12);
  v14 = 0;
  if (BYTE2(v13) - 1 <= 1)
  {
    v14 = ((v3)(v13) & 0xFF00) != 0;
  }

  v15 = v5(v28);
  *(v16 + 2) = v14;
  v17 = v15(v28, 0);
  v18 = *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_volumeControlView);
  v19 = (v3)(v17) >> 8;
  v20 = (*((*v2 & *v18) + 0x98))(v28);
  *v21 = v19;
  v22 = v20(v28, 0);
  v23 = *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_contentView);
  v24 = (v3)(v22) >> 8;
  v25 = (*((*v2 & *v23) + 0xC0))(v28);
  *v26 = v24;
  return v25(v28, 0);
}

double sub_1A226ECC0()
{
  v1 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838, qword_1A2308EB0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v35 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - v15;
  v17 = MEMORY[0x1E69E7D40];
  v18 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v19 = v18(v14);
  v40 = v2;
  if ((v19 & 0xFF0000) == 0x20000)
  {
    v20 = 0;
    v21 = 2;
    v22 = 1;
    goto LABEL_22;
  }

  v38 = v5;
  v36 = *((*v17 & *v0) + 0xB0);
  v36();
  v23 = *(v2 + 48);
  v37 = v1;
  if (v23(v16, 1, v1))
  {
    v24 = sub_1A210D9B0(v16, &qword_1EB088838, qword_1A2308EB0);
  }

  else
  {
    v35 = *(v16 + 21);
    v25 = v16[88];
    v24 = sub_1A210D9B0(v16, &qword_1EB088838, qword_1A2308EB0);
    if ((v25 & 1) == 0)
    {
      v24 = v18(v24);
      if ((v24 & 0x1000000) != 0)
      {
        v20 = 0;
        v21 = 1;
        v1 = v37;
        v5 = v38;
        v17 = MEMORY[0x1E69E7D40];
        v22 = v35;
        goto LABEL_22;
      }
    }
  }

  (v36)(v24);
  v1 = v37;
  if (v23(v13, 1, v37))
  {
    sub_1A210D9B0(v13, &qword_1EB088838, qword_1A2308EB0);
    v22 = 0;
    v20 = 0;
    v21 = 2;
    v5 = v38;
    v17 = MEMORY[0x1E69E7D40];
  }

  else
  {
    v26 = v39;
    sub_1A2123C78(v13, v39);
    sub_1A210D9B0(v13, &qword_1EB088838, qword_1A2308EB0);
    v27 = *(v26 + 82);
    v5 = v38;
    v17 = MEMORY[0x1E69E7D40];
    if (v27 == 2)
    {
      sub_1A2123CDC(v26);
      v22 = 0;
      v20 = 0;
      v21 = 2;
    }

    else
    {
      v28 = 0x80000001A2304CD0;
      v29 = 0x72616D6B63656863;
      if (v27)
      {
        v29 = 0xD000000000000015;
      }

      else
      {
        v28 = 0xE90000000000006BLL;
      }

      if (v27 == 3)
      {
        v22 = 0x656C63726963;
      }

      else
      {
        v22 = v29;
      }

      if (v27 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = v28;
      }

      sub_1A2123CDC(v26);
      v21 = 0;
    }
  }

LABEL_22:
  v30 = *((*v17 & *v0) + 0xB0);
  v31 = *(*(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_contentView) + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_accessoryView);
  v30();
  if ((*(v40 + 48))(v10, 1, v1))
  {
    sub_1A210D9B0(v10, &qword_1EB088838, qword_1A2308EB0);
    v32 = 1;
  }

  else
  {
    sub_1A2123C78(v10, v5);
    sub_1A210D9B0(v10, &qword_1EB088838, qword_1A2308EB0);
    v33 = v5[82];
    sub_1A2123CDC(v5);
    v32 = (v33 & 0xFE) != 2;
  }

  (*((*MEMORY[0x1E69E7D40] & *v31) + 0x88))(v22, v20, v21, v32);

  return sub_1A227040C(v22, v20, v21);
}

id sub_1A226F1A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutePickerItemView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1A226F284(float a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  v4 = v3;
  v6 = *(*(v3 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_contentView) + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_accessoryView);
  v7 = LODWORD(a1);
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x88);
  v10 = v6;
  v9(v7, 0, 1, 1);

  result = (*((*v8 & *v4) + 0xE0))();
  if (result)
  {
    v13 = result;
    v14 = v12;
    result(a3);

    return sub_1A210F5C0(v13, v14);
  }

  return result;
}

uint64_t sub_1A226F3B4(uint64_t a1, char a2)
{
  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA8))(v7);
  *(v5 + 3) = a2;
  return v4(v7, 0);
}

id sub_1A226F43C(double a1, double a2, double a3, double a4)
{
  v5 = &v4[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_rubberbandInsets];
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  return [v4 setNeedsLayout];
}

uint64_t sub_1A226F470(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xA8))(v9, a2, a3);
  *(v7 + 3) = a4;
  return v6(v9, 0);
}

void *sub_1A226F4F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A226F518(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A226F518(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089390, &qword_1A230CE08);
  v10 = *(sub_1A22E5888() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_1A22E5888() - 8);
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

BOOL sub_1A226F6F0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    v9 = *&a1 == *&a4;
    if (a6 != 2)
    {
      v9 = 0;
    }

    v10 = *&a2 == *&a5;
    if (*&a1 != *&a4)
    {
      v10 = 0;
    }

    v11 = a6 == 3 && v10;
    if (a3 == 2)
    {
      return v9;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    v6 = *&a1 == *&a4;
    if (a6)
    {
      v6 = 0;
    }

    v7 = a6 == 1 && *&a1 == *&a4;
    if (a3)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1A226F788(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == 255)
  {
    if (v3 != 255)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (v3 == 255)
  {
    return 0;
  }

  v5 = *a1;
  v6 = *a2;
  if (*(a1 + 16) > 1u)
  {
    if (v2 != 2)
    {
      if (v3 != 3)
      {
        return 0;
      }

      if (v5 != v6 || *(a1 + 8) != *(a2 + 8))
      {
        return 0;
      }

      goto LABEL_14;
    }

    LOBYTE(v2) = 0;
    if (v3 != 2)
    {
      return v2 & 1;
    }
  }

  else if (*(a1 + 16))
  {
    LOBYTE(v2) = 0;
    if (v3 != 1)
    {
      return v2 & 1;
    }
  }

  else if (*(a2 + 16))
  {
    return v2 & 1;
  }

  if (v5 != v6)
  {
    return v2 & 1;
  }

LABEL_14:
  LOBYTE(v2) = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return v2 & 1;
    }

    return (*(a1 + 33) ^ *(a2 + 33) ^ 1) & 1;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    LOBYTE(v2) = 1;
  }

  if ((v2 & 1) == 0)
  {
    return (*(a1 + 33) ^ *(a2 + 33) ^ 1) & 1;
  }

  return 0;
}

uint64_t sub_1A226F8A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A226F8E8()
{
  *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_state) = 0;
  v1 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_viewModel;
  v2 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_isHighlighted) = 0;
  v3 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_backgroundView;
  type metadata accessor for RoutePickerItemBackgroundView(0, v4);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_volumeControlView;
  type metadata accessor for RoutePickerItemVolumeControl(0);
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_contentView;
  type metadata accessor for RoutePickerItemContentView(0, v7);
  *(v0 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = (v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_controlInteractionHandler);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_rubberbandInsets);
  v10 = *(MEMORY[0x1E69DDCE0] + 16);
  *v9 = *MEMORY[0x1E69DDCE0];
  v9[1] = v10;
  *(v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView____lazy_storage___numberFormatter) = 0;
  sub_1A22E7028();
  __break(1u);
}

unint64_t sub_1A226FA58()
{
  result = qword_1ED94F640;
  if (!qword_1ED94F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94F640);
  }

  return result;
}

unint64_t sub_1A226FAB0()
{
  result = qword_1EB089FA0;
  if (!qword_1EB089FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089FA0);
  }

  return result;
}

unint64_t sub_1A226FB08()
{
  result = qword_1EB089370;
  if (!qword_1EB089370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089370);
  }

  return result;
}

unint64_t sub_1A226FB60()
{
  result = qword_1EB089378;
  if (!qword_1EB089378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089378);
  }

  return result;
}

unint64_t sub_1A226FBB8()
{
  result = qword_1EB089380;
  if (!qword_1EB089380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089380);
  }

  return result;
}

void sub_1A226FC5C(uint64_t a1)
{
  sub_1A226FFF0(319, &qword_1ED950A00, type metadata accessor for RoutePickerItemView.ViewModel, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for RoutePickerItemView.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RoutePickerItemView.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1A226FE34(uint64_t a1)
{
  sub_1A2270370(319, qword_1ED950878, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A2270370(319, qword_1ED950A50, &type metadata for RoutePickerItemView.ViewModel.Subtitle, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A2270370(319, &qword_1ED950868, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A226FFF0(319, &unk_1ED950C20, MEMORY[0x1E69AE690], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1A226FFF0(319, &qword_1ED950870, MEMORY[0x1E69AE550], MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A226FFF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for SessionHeaderView.Layout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
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
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for SessionHeaderView.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
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

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1A22701C0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1A22701DC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
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

uint64_t sub_1A2270218(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A227026C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoutePickerItemView.ViewModel.Subtitle.Battery(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RoutePickerItemView.ViewModel.Subtitle.Battery(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

void sub_1A2270370(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A22703C0(uint64_t a1, uint64_t a2)
{
  result = qword_1ED94EA38;
  if (!qword_1ED94EA38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94EA38);
  }

  return result;
}

double sub_1A227040C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

double sub_1A227042C(char a1)
{
  result = 34.0;
  if (a1)
  {
    return 24.0;
  }

  return result;
}

double sub_1A2270468()
{
  v0 = sub_1A2254C04();

  return sub_1A22D3E7C(0, v0);
}

double sub_1A2270494()
{
  v0 = sub_1A2254CC0();
  v1 = sub_1A211A6BC() & 1;

  return sub_1A22D3E7C(v1, v0);
}

double sub_1A22704D4(char a1)
{
  result = 0.0;
  if (a1)
  {
    return 24.0;
  }

  return result;
}

double sub_1A22704F8(char a1)
{
  result = 0.0;
  if (a1)
  {
    return 24.0;
  }

  return result;
}

double sub_1A227050C()
{
  v0 = sub_1A2254C04();
  v1 = sub_1A22D3E7C(0, v0);
  return v1 + sub_1A224F8A4(v2);
}

double sub_1A2270540()
{
  v0 = sub_1A2254C04();
  v1 = sub_1A22D3E7C(0, v0);
  v3 = v1 + sub_1A224F8A4(v2);
  v4 = sub_1A2254C04();
  v5 = sub_1A22D3E7C(0, v4);
  result = v5 + sub_1A224F8A4(v6);
  qword_1EB091478 = *&v3;
  unk_1EB091480 = *&result;
  return result;
}

uint64_t *sub_1A2270598()
{
  if (qword_1EB08E080 != -1)
  {
    swift_once();
  }

  return &qword_1EB091478;
}

double sub_1A22705E8()
{
  if (qword_1EB08E080 != -1)
  {
    swift_once();
  }

  return *&qword_1EB091478;
}

id sub_1A227063C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v1 = sub_1A2114DFC();

  return v1;
}

id sub_1A22706D4(uint64_t (*a1)(void))
{
  a1(0);
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = sub_1A2114DFC();

  return v2;
}

uint64_t sub_1A2270798(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls11SessionView_animationCoordinator;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v5 = *(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_itemsView);
  Strong = swift_unknownObjectWeakLoadStrong();
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x100))(Strong, *(v4 + 8));
  return swift_unknownObjectRelease();
}

void (*sub_1A2270860(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls11SessionView_animationCoordinator;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2270900;
}

void sub_1A2270900(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    v5 = v4 + v3[6];
    swift_endAccess();
    swift_unknownObjectRelease();
    v6 = *(v4 + OBJC_IVAR____TtC13MediaControls11SessionView_itemsView);
    Strong = swift_unknownObjectWeakLoadStrong();
    (*((*MEMORY[0x1E69E7D40] & *v6) + 0x100))(Strong, *(v5 + 8));
  }

  free(v3);
}

uint64_t sub_1A22709F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls11SessionView_viewModel;
  swift_beginAccess();
  return sub_1A227562C(v1 + v3, a1, type metadata accessor for SessionViewModel);
}

uint64_t sub_1A2270A5C(uint64_t a1)
{
  v3 = type metadata accessor for SessionViewModel(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC13MediaControls11SessionView_viewModel;
  swift_beginAccess();
  sub_1A227562C(v1 + v9, v8, type metadata accessor for SessionViewModel);
  swift_beginAccess();
  sub_1A2270C28(a1, v1 + v9);
  swift_endAccess();
  sub_1A227562C(v1 + v9, v6, type metadata accessor for SessionViewModel);
  sub_1A2272FEC(&qword_1EB0893C0, type metadata accessor for SessionViewModel, &unk_1A2308D40);
  v10 = sub_1A22E6568();
  sub_1A22754F4(v6, type metadata accessor for SessionViewModel);
  if ((v10 & 1) == 0)
  {
    sub_1A227207C(1);
  }

  sub_1A22754F4(a1, type metadata accessor for SessionViewModel);
  return sub_1A22754F4(v8, type metadata accessor for SessionViewModel);
}

uint64_t sub_1A2270C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionViewModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*sub_1A2270C8C(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for SessionViewModel(0) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = OBJC_IVAR____TtC13MediaControls11SessionView_viewModel;
  swift_beginAccess();
  sub_1A227562C(v1 + v9, v8, type metadata accessor for SessionViewModel);
  return sub_1A2270D98;
}

void sub_1A2270D98(uint64_t a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    sub_1A227562C(*(*a1 + 40), v4, type metadata accessor for SessionViewModel);
    sub_1A2270A5C(v4);
    sub_1A22754F4(v5, type metadata accessor for SessionViewModel);
  }

  else
  {
    sub_1A2270A5C(*(*a1 + 40));
  }

  free(v5);
  free(v4);

  free(v3);
}

uint64_t sub_1A2270E40()
{
  v1 = OBJC_IVAR____TtC13MediaControls11SessionView_layout;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A2270E84(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls11SessionView_layout;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1 & 1;
  if (v5 != (a1 & 1))
  {
    v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1E8))(v4);
    sub_1A2272580(v6 & 0x1010101010101);
  }
}

void (*sub_1A2270F30(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC13MediaControls11SessionView_layout;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A2270FC4;
}

void sub_1A2270FC4(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    v6 = (*((*MEMORY[0x1E69E7D40] & *v1[3]) + 0x1E8))();
    sub_1A2272580(v6 & 0x1010101010101);
  }

  free(v1);
}

char *sub_1A2271094(uint64_t a1)
{
  v2 = v1;
  v61 = type metadata accessor for SessionViewModel(0);
  MEMORY[0x1EEE9AC00](v61);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13MediaControls11SessionView_containerView;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v8 = sub_1A2114DFC();

  *&v2[v6] = v8;
  v9 = OBJC_IVAR____TtC13MediaControls11SessionView_contentView;
  type metadata accessor for SessionContentView(0);
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = sub_1A2114DFC();

  *&v2[v9] = v11;
  v12 = OBJC_IVAR____TtC13MediaControls11SessionView_itemsView;
  type metadata accessor for RoutePickerItemsView(0, v13);
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = sub_1A2114DFC();

  *&v2[v12] = v15;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_animationCoordinator + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC13MediaControls11SessionView_layout] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_greatestItemsFittingHeight] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_verticalHeaderConstraints] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_expandedConstraints] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_headerOnlyConstraints] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_verticalLayoutConstraints] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_horizontalLayoutConstraints] = 0;
  v16 = &v2[OBJC_IVAR____TtC13MediaControls11SessionView_sessionViewState];
  LOBYTE(v14) = sub_1A211A6BC();
  LOBYTE(v15) = sub_1A2113050();
  v17 = sub_1A2113050();
  LOBYTE(v12) = sub_1A211A6BC();
  v18 = sub_1A2113050();
  v19 = sub_1A2113050();
  v20 = sub_1A220CDA4(1, v14 & 1, v15 & 1, v17 & 1, v12 & 1, v18 & 1, v19 & 1);
  *v16 = v20 & 1;
  v21 = vdupq_n_s64(v20);
  *v21.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v21, xmmword_1A2308740), vshlq_u64(v21, xmmword_1A2308730))), 0x1000100010001);
  *(v16 + 1) = vuzp1_s8(*v21.i8, *v21.i8).u32[0];
  v16[5] = BYTE5(v20) & 1;
  v16[6] = BYTE6(v20) & 1;
  v22 = &v2[OBJC_IVAR____TtC13MediaControls11SessionView_selectionHandler];
  *v22 = 0;
  v22[1] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_visualStylingProvider] = 0;
  *&v2[OBJC_IVAR____TtC13MediaControls11SessionView_presenter] = a1;
  v23 = *(*a1 + 192);

  v23(v24);
  v62 = v5;
  sub_1A2275554(v5, &v2[OBJC_IVAR____TtC13MediaControls11SessionView_viewModel], type metadata accessor for SessionViewModel);
  v25 = type metadata accessor for SessionView(0);
  v64.receiver = v2;
  v64.super_class = v25;
  v26 = objc_msgSendSuper2(&v64, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v26 setClipsToBounds_];
  (*(*a1 + 144))(v26, &off_1F1440088);
  v63 = OBJC_IVAR____TtC13MediaControls11SessionView_containerView;
  v27 = [*&v26[OBJC_IVAR____TtC13MediaControls11SessionView_containerView] layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088918, &unk_1A230ACB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1A2308E80;
  v29 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  *(v28 + 56) = sub_1A2115288(0, &qword_1ED94E958, 0x1E6979378);
  *(v28 + 32) = v29;
  v30 = sub_1A22E6738();

  [v27 setFilters_];

  v31 = OBJC_IVAR____TtC13MediaControls11SessionView_contentView;
  v32 = *(*&v26[OBJC_IVAR____TtC13MediaControls11SessionView_contentView] + OBJC_IVAR____TtC13MediaControls18SessionContentView_volumeControlsView);
  v33 = MEMORY[0x1E69E7D40];
  v34 = *((*MEMORY[0x1E69E7D40] & *v32) + 0xB0);
  v35 = v26;
  v36 = v32;
  v34(v26, &off_1F1440100);

  v37 = *(*(*&v26[v31] + OBJC_IVAR____TtC13MediaControls18SessionContentView_headerView) + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView);
  v38 = *((*v33 & *v37) + 0xC8);
  v39 = v35;
  v40 = v37;
  v38(v26, &off_1F1440118);

  v41 = *(*a1 + 168);
  v42 = *(*(*(*&v26[v31] + OBJC_IVAR____TtC13MediaControls18SessionContentView_headerView) + OBJC_IVAR____TtC13MediaControls17SessionHeaderView_accessoryView) + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_waveformView);
  v43 = v41();
  (*((*v33 & *v42) + 0xB8))(v43);

  v44 = OBJC_IVAR____TtC13MediaControls11SessionView_itemsView;
  v45 = *(*a1 + 160);
  v46 = *&v39[OBJC_IVAR____TtC13MediaControls11SessionView_itemsView];
  v47 = v45();
  v48 = v33;
  (*((*v33 & *v46) + 0xE8))(v47);

  v49 = v63;
  [v39 addSubview_];
  [*&v26[v49] addSubview_];
  [*&v26[v49] addSubview_];
  v50 = *&v26[v31];
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = v50;

  v53 = *((*v48 & *v52) + 0x118);

  v53(sub_1A2272F10, v51);

  v54.n128_f64[0] = sub_1A2271E50();
  v55 = 0;
  v56 = 0;
  if (((*((*v48 & *v39) + 0x1E8))(v54) & 1) == 0)
  {
    v57 = v62;
    (*((*v48 & *v39) + 0xE8))();
    v58 = (v57 + *(v61 + 24));
    v55 = *v58;
    v56 = v58[1];

    sub_1A22754F4(v57, type metadata accessor for SessionViewModel);
  }

  sub_1A2272304(v39, v55, v56);
  sub_1A211BC80(v55, v56);
  sub_1A2272580(2);

  return v39;
}

uint64_t sub_1A2271874()
{
  v1 = sub_1A22E6468();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A22E6488();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SessionView(0);
  v16.receiver = v0;
  v16.super_class = v9;
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  sub_1A2115288(0, &qword_1ED94EA48, 0x1E69E9610);
  v10 = sub_1A22E6B28();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  aBlock[4] = sub_1A2272FC8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A210E3F0;
  aBlock[3] = &block_descriptor_10;
  v12 = _Block_copy(aBlock);
  v13 = v0;

  sub_1A22E6478();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2272FEC(&qword_1ED94EB28, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C08, &unk_1A230FC00);
  sub_1A210B498();
  sub_1A22E6DA8();
  MEMORY[0x1A58DAD70](0, v8, v4, v12);
  _Block_release(v12);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

double sub_1A2271B9C(double a1, double a2)
{
  [*(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_contentView) sizeThatFits_];
  [*(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_itemsView) sizeThatFits_];
  v6 = v5;
  v7 = sub_1A2254CC0();
  v8 = sub_1A211A6BC();
  if (v6 <= sub_1A22D3E7C(v8 & 1, v7))
  {
    v11 = sub_1A2254CC0();
    v10 = sub_1A211A6BC() & 1;
    v9 = v11;
  }

  else
  {
    v9 = sub_1A2254C04();
    v10 = 0;
  }

  v12 = sub_1A22D3E7C(v10, v9);
  if (*(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_greatestItemsFittingHeight) < v12)
  {
    *(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_greatestItemsFittingHeight) = v12;
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1E8))();
  return a1;
}

uint64_t sub_1A2271D0C()
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC13MediaControls11SessionView_contentView)) + 0xD0))(0);
  v2 = (*((*v1 & **(v0 + OBJC_IVAR____TtC13MediaControls11SessionView_itemsView)) + 0xB8))(v5);
  *(v3 + 8) = MEMORY[0x1E69E7CC8];

  return v2(v5, 0);
}

double sub_1A2271E50()
{
  v1 = sub_1A211A6BC();
  sub_1A211A6C4(v1 & 1, sub_1A2275694);

  v2 = sub_1A211A6BC();
  *(v0 + OBJC_IVAR____TtC13MediaControls11SessionView_verticalHeaderConstraints) = sub_1A211A6C4(v2 & 1, sub_1A2275754);

  *(v0 + OBJC_IVAR____TtC13MediaControls11SessionView_expandedConstraints) = sub_1A211A6C4(0, sub_1A2275A54);

  *(v0 + OBJC_IVAR____TtC13MediaControls11SessionView_headerOnlyConstraints) = sub_1A211A6C4(0, sub_1A2275A60);

  v3 = sub_1A211A6BC();
  *(v0 + OBJC_IVAR____TtC13MediaControls11SessionView_verticalLayoutConstraints) = sub_1A211A6C4(v3 & 1, sub_1A2275B88);

  v4 = sub_1A211A6BC();
  *(v0 + OBJC_IVAR____TtC13MediaControls11SessionView_horizontalLayoutConstraints) = sub_1A211A6C4(v4 & 1, sub_1A2275EF0);

  return result;
}

uint64_t sub_1A2271FD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_1A227201C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 256);
  v4 = *a1;
  return v3(v2);
}

double sub_1A227207C(char a1)
{
  v3 = type metadata accessor for SessionViewModel(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7D40];
  v8 = 0;
  v9 = 0;
  if (((*((*MEMORY[0x1E69E7D40] & *v1) + 0x1E8))(v4) & 1) == 0)
  {
    (*((*v7 & *v1) + 0xE8))();
    v10 = &v6[*(v3 + 24)];
    v8 = *v10;
    v9 = v10[1];

    sub_1A22754F4(v6, type metadata accessor for SessionViewModel);
  }

  v11 = swift_allocObject();
  v11[2] = v1;
  v11[3] = v8;
  v11[4] = v9;
  if (a1)
  {
    v12 = *((*v7 & *v1) + 0xD0);
    v13 = v1;
    v14 = sub_1A2124CD0(v8, v9);
    if (v12(v14))
    {
      v16 = v15;
      sub_1A211BC80(v8, v9);
      ObjectType = swift_getObjectType();
      v18 = swift_allocObject();
      v18[2] = sub_1A22763C8;
      v18[3] = v11;
      v18[4] = v13;
      v19 = v13;

      sub_1A22CD1DC(sub_1A2247C4C, v18, ObjectType, v16);
      swift_unknownObjectRelease();

      return result;
    }
  }

  else
  {
    v21 = v1;
    sub_1A2124CD0(v8, v9);
  }

  sub_1A2272304(v1, v8, v9);

  return sub_1A211BC80(v8, v9);
}

id sub_1A2272304(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SessionViewModel(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F80, &qword_1A230ACC0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  v14 = *(a1 + OBJC_IVAR____TtC13MediaControls11SessionView_contentView);
  v15 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v11);
  sub_1A227562C(&v9[*(v7 + 28)], v13, type metadata accessor for SessionContentViewModel);
  sub_1A22754F4(v9, type metadata accessor for SessionViewModel);
  v16 = type metadata accessor for SessionContentViewModel(0);
  (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  (*((*v15 & *v14) + 0xB8))(v13);
  v17 = *((*v15 & **(a1 + OBJC_IVAR____TtC13MediaControls11SessionView_itemsView)) + 0xC8);
  sub_1A2124CD0(a2, a3);
  v18 = v17(a2, a3);
  v19 = (*((*v15 & *a1) + 0x1E8))(v18);
  return sub_1A2272580(v19 & 0x1010101010101);
}

id sub_1A2272580(uint64_t a1)
{
  v2 = v1;
  v77 = a1;
  v3 = a1;
  v75 = type metadata accessor for SessionViewModel(0);
  MEMORY[0x1EEE9AC00](v75);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F80, &qword_1A230ACC0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v76 = &v74 - v8;
  v9 = *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_presenter);
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1E8);
  v12 = (v11)(v7);
  v13 = (*(*v9 + 232))((v12 >> 8) & 1);
  v14 = *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_contentView);
  v15 = (v11)(v13);
  v16 = *((*v10 & *v14) + 0xE8);
  v83 = v14;
  v17 = v16((v15 >> 8) & 1);
  v18 = *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_itemsView);
  if (((v11)(v17) & 0x100) != 0)
  {
    v20 = v11();
    v19 = sub_1A220C928(v20 & 1, 0);
  }

  else
  {
    v19 = 0;
  }

  v21 = (*((*v10 & *v18) + 0xB8))(v85);
  *v22 = v19;
  v23 = v21(v85, 0);
  v24 = MEMORY[0x1E69E7D40];
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_greatestItemsFittingHeight) = 0;
  v25 = (v11)(v23);
  (*((*v24 & *v1) + 0x258))(v85, v25 & 0x1010101010101);
  v26 = sub_1A22E6C18();
  v27 = (v11)(v26);
  v82 = v3;
  if (v3 == 2 || ((~v3 & 0x1000100) != 0) != ((~v27 & 0x1000100) != 0))
  {
    v28 = (v11)(v27) & 0x1000100;
    v29 = v28 != 16777472;
    if (v28 == 16777472)
    {
      v30 = 1.0;
    }

    else
    {
      v30 = 0.0;
    }

    [v83 setAlpha_];
    [v18 setAlpha_];
    v27 = (*((*v24 & *v2) + 0x220))(v29);
  }

  v31 = *((*v24 & *v2) + 0x100);
  v80 = (*v24 & *v2) + 256;
  v81 = v31;
  v32 = (v31)(v27);
  if (v11())
  {
    v33 = 24.0;
  }

  else
  {
    v33 = 34.0;
  }

  [v2 _setContinuousCornerRadius_];
  if (v32)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0.0;
  }

  v35 = *((*v24 & *v18) + 0xA0);
  v78 = (*v24 & *v18) + 160;
  v79 = v35;
  v36 = v35(v85);
  *(v37 + 32) = v34;
  *(v37 + 40) = 0;
  *(v37 + 48) = v33;
  *(v37 + 56) = 0;
  v38 = v36(v85, 0);
  v39 = OBJC_IVAR____TtC13MediaControls11SessionView_verticalHeaderConstraints;
  v40 = *(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_verticalHeaderConstraints);
  if (v40)
  {
    v41 = *(*v40 + 248);

    v43 = v41(v42);

    if (v43)
    {
      v74 = (v11)(v38);
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE8))();
      v44 = v76;
      sub_1A227562C(&v5[*(v75 + 20)], v76, type metadata accessor for SessionContentViewModel);
      sub_1A22754F4(v5, type metadata accessor for SessionViewModel);
      v45 = type metadata accessor for SessionContentViewModel(0);
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
      v46 = sub_1A224F768((v74 & 1) == 0, v44);
      sub_1A210D9B0(v44, &qword_1EB088F80, &qword_1A230ACC0);
      [v43 setConstant_];
    }

    v47 = *(v2 + v39);
    v24 = MEMORY[0x1E69E7D40];
    if (v47)
    {
      v48 = *(*v47 + 384);

      v48((v32 & 1) == 0);
    }
  }

  v49 = *(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_verticalLayoutConstraints);
  if (v49)
  {
    v50 = *(*v49 + 384);

    v50((v32 & 1) == 0);
  }

  v51 = *(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_horizontalLayoutConstraints);
  if (v51)
  {
    v52 = *(*v51 + 384);

    v52(v32 & 1);
  }

  v53 = *(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_expandedConstraints);
  if (v53)
  {

    v55 = (v11)(v54);
    v56 = sub_1A220C928(v55 & 1, 0);
    (*(*v53 + 384))(v56);
  }

  v57 = *(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_headerOnlyConstraints);
  if (v57)
  {

    v59 = (v11)(v58);
    v60 = sub_1A220C928(v59 & 1, 1);
    (*(*v57 + 384))(v60);
  }

  v61 = v81;
  v62 = (v81)(v38);
  v63 = (v11() & 1) == 0;
  if (v62)
  {
    v64 = 2;
  }

  else
  {
    v64 = v63;
  }

  v65 = (*((*v24 & *v83) + 0xA0))(v64);
  LOBYTE(v85[0]) = (v11)(v65) & 1;
  if (v82 == 2 || (v84 = v77 & 1, sub_1A2215518(), (sub_1A22E6568() & 1) == 0))
  {
    v67 = v11();
    v66.n128_f64[0] = sub_1A227207C(BYTE1(v67) & 1);
  }

  v68 = v61(v66);
  if (v68)
  {
    v69 = 24.0;
  }

  else
  {
    v69 = 0.0;
  }

  if (v68)
  {
    v70 = 24.0;
  }

  else
  {
    v70 = 16.0;
  }

  v71 = v79(v85);
  *v72 = v69;
  v72[1] = v70;
  v72[2] = v70;
  v72[3] = v70;
  v71(v85, 0);
  return [v2 setNeedsLayout];
}

uint64_t type metadata accessor for SessionView(uint64_t a1)
{
  result = qword_1ED952D50;
  if (!qword_1ED952D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A2272F10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x200))();
    if (v2)
    {
      v4 = v2;
      v5 = v3;
      v2(v1);
      sub_1A210F5C0(v4, v5);
    }
  }
}

uint64_t sub_1A2272FEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A2273034()
{
  swift_getObjectType();
  v1 = sub_1A22E6248();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(*&v0[OBJC_IVAR____TtC13MediaControls11SessionView_contentView] + OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkView) bounds];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v9 = CGRectGetWidth(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v10 = CGRectGetHeight(v30);
  if (v9 > v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v0 traitCollection];
  [v12 displayScale];
  v14 = v13;

  v15 = v11 * v14;
  if (COERCE__INT64(fabs(v11 * v14)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = *(**(*&v0[OBJC_IVAR____TtC13MediaControls11SessionView_presenter] + 32) + 192);

  v18 = v17(v28);
  *(v19 + *(type metadata accessor for SessionArtworkPresentationModel(0) + 20)) = v16;
  v18(v28, 0);

  v20 = sub_1A2104EA0();
  (*(v2 + 16))(v4, v20, v1);
  v21 = sub_1A22E6238();
  v22 = sub_1A22E6A68();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28[0] = v24;
    *v23 = 136315394;
    v25 = sub_1A22E7388();
    v27 = sub_1A2103450(v25, v26, v28);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v16;
    _os_log_impl(&dword_1A20FC000, v21, v22, "[%s] Did update artwork pixel size:%ld", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1A58DCD00](v24, -1, -1);
    MEMORY[0x1A58DCD00](v23, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
}

uint64_t sub_1A22733A4()
{
  v1 = type metadata accessor for SessionViewModel(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE8))(v2);
  v5 = *v4;

  sub_1A22754F4(v4, type metadata accessor for SessionViewModel);
  return v5;
}

uint64_t sub_1A2273478()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls11SessionView_sessionViewState);
  swift_beginAccess();
  v2 = 0x1000000000000;
  if (!v1[6])
  {
    v2 = 0;
  }

  v3 = 0x10000000000;
  if (!v1[5])
  {
    v3 = 0;
  }

  v4 = 0x100000000;
  if (!v1[4])
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!v1[3])
  {
    v5 = 0;
  }

  v6 = 0x10000;
  if (!v1[2])
  {
    v6 = 0;
  }

  v7 = 256;
  if (!v1[1])
  {
    v7 = 0;
  }

  return v7 | *v1 | v6 | v5 | v4 | v3 | v2;
}

uint64_t sub_1A2273538(uint64_t a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR____TtC13MediaControls11SessionView_sessionViewState);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  *v4 = a1 & 1;
  v4[1] = BYTE1(a1) & 1;
  v4[2] = BYTE2(a1) & 1;
  v4[3] = BYTE3(a1) & 1;
  v4[4] = BYTE4(a1) & 1;
  v4[5] = BYTE5(a1) & 1;
  v4[6] = BYTE6(a1) & 1;
  sub_1A221B544();
  result = sub_1A22E6568();
  if ((result & 1) == 0)
  {
    v13 = 256;
    if (!v6)
    {
      v13 = 0;
    }

    v14 = v13 | v5;
    v15 = 0x10000;
    if (!v7)
    {
      v15 = 0;
    }

    v16 = 0x1000000;
    if (!v8)
    {
      v16 = 0;
    }

    v17 = v14 | v15 | v16;
    v18 = 0x100000000;
    if (!v9)
    {
      v18 = 0;
    }

    v19 = 0x10000000000;
    if (!v10)
    {
      v19 = 0;
    }

    v20 = 0x1000000000000;
    if (!v11)
    {
      v20 = 0;
    }

    return sub_1A2272580(v17 | v18 | v19 | v20);
  }

  return result;
}

void (*sub_1A22736BC(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC13MediaControls11SessionView_sessionViewState;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[4];
  v11 = v6[5];
  v12 = v6[6];
  v4[40] = *v6;
  v4 += 40;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  v4[4] = v10;
  v4[5] = v11;
  v4[6] = v12;
  return sub_1A2273784;
}

void sub_1A2273784(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 24) + *(*a1 + 32));
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 41);
  v5 = *(*a1 + 42);
  v6 = *(*a1 + 43);
  v7 = *(*a1 + 44);
  v8 = *(*a1 + 45);
  v9 = *(*a1 + 46);
  v10 = *v2;
  v11 = v2[1];
  v12 = v2[2];
  v13 = v2[3];
  v14 = v2[4];
  v15 = v2[5];
  v16 = v2[6];
  *v2 = v3;
  v2[1] = v4;
  v2[2] = v5;
  v2[3] = v6;
  v2[4] = v7;
  v2[5] = v8;
  v2[6] = v9;
  v1[47] = v3;
  v1[48] = v4;
  v1[49] = v5;
  v1[50] = v6;
  v1[51] = v7;
  v1[52] = v8;
  v1[53] = v9;
  v1[54] = v10;
  v1[55] = v11;
  v1[56] = v12;
  v1[57] = v13;
  v1[58] = v14;
  v1[59] = v15;
  v1[60] = v16;
  sub_1A221B544();
  if ((sub_1A22E6568() & 1) == 0)
  {
    v17 = 256;
    if (!v11)
    {
      v17 = 0;
    }

    v18 = v17 | v10;
    v19 = 0x10000;
    if (!v12)
    {
      v19 = 0;
    }

    v20 = 0x1000000;
    if (!v13)
    {
      v20 = 0;
    }

    v21 = v18 | v19 | v20;
    v22 = 0x100000000;
    if (!v14)
    {
      v22 = 0;
    }

    v23 = 0x10000000000;
    if (!v15)
    {
      v23 = 0;
    }

    v24 = 0x1000000000000;
    if (!v16)
    {
      v24 = 0;
    }

    sub_1A2272580(v21 | v22 | v23 | v24);
  }

  free(v1);
}

uint64_t sub_1A2273900()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls11SessionView_selectionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A2111D40(*v1, v1[1]);
  return v2;
}

uint64_t sub_1A227395C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls11SessionView_selectionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A210F5C0(v6, v7);
}

void sub_1A2273A1C(char a1, uint64_t a2)
{
  v3 = v2;
  if ([objc_opt_self() _isInAnimationBlock])
  {
    v4 = sub_1A22E6598();
    v5 = [objc_opt_self() animationWithKeyPath_];

    sub_1A2115288(0, &qword_1ED94E980, 0x1E69DD250);
    v6 = v5;
    [v6 setDuration_];
    v7 = [objc_opt_self() functionWithName_];
    [v6 setTimingFunction_];

    v8 = sub_1A22E56C8();
    [v6 setFromValue_];

    v9 = sub_1A22E56C8();
    [v6 setToValue_];

    v10 = [*(v3 + OBJC_IVAR____TtC13MediaControls11SessionView_containerView) layer];
    [v10 addAnimation:v6 forKey:0];
  }

  v11 = [*(v3 + OBJC_IVAR____TtC13MediaControls11SessionView_containerView) layer];
  v12 = sub_1A22E56C8();
  v13 = sub_1A22E6598();
  [v11 setValue:v12 forKeyPath:v13];
}

uint64_t sub_1A2273C68(uint64_t a1)
{
  v3 = type metadata accessor for SessionViewModel(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A227562C(a1, v5, type metadata accessor for SessionViewModel);
  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))(v5);
}

uint64_t sub_1A2273D30(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_contentView)) + 0xD0);
  v4 = a1;
  return v3(a1);
}

double sub_1A2273E04()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1A2273E4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls11SessionView_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_contentView)) + 0x100))(a1);
}

uint64_t (*sub_1A2273F08(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls11SessionView_visualStylingProvider;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2273F90;
}

void sub_1A2273F90(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & **(v3[3] + OBJC_IVAR____TtC13MediaControls11SessionView_contentView)) + 0x100);

    v4(v5);
  }

  free(v3);
}

double sub_1A2274030@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((~a1 & 0x10100) != 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v3 = (a1 & 0x1000000000000) == 0;
    v4 = (a1 & 0x100000000) == 0;
    v5 = sub_1A22C0E98();
    sub_1A2299F04(v4 & (v5 ^ 1u), v3, v8);
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v7;
    *(a2 + 32) = v9;
  }

  return result;
}

id sub_1A2274120()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1A22743C4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))();
  return sub_1A221BA4C;
}

void (*sub_1A2274508(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8))();
  return sub_1A221ADB4;
}

void (*sub_1A227464C(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 48) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x210))();
  v4[7] = v5;
  if (*v5)
  {
    v6 = v5[1];
  }

  else
  {
    v6 = 0;
  }

  v4[4] = *v5;
  v4[5] = v6;
  return sub_1A221AF10;
}

uint64_t sub_1A2274710(uint64_t a1, uint64_t a2)
{
  result = (*(**(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_presenter) + 160))(a1);
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A22747BC(uint64_t a1, uint64_t a2)
{
  result = (*(**(v2 + OBJC_IVAR____TtC13MediaControls11SessionView_presenter) + 160))(a1);
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A2274868()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13MediaControls11SessionView_containerView;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v4 = sub_1A2114DFC();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC13MediaControls11SessionView_contentView;
  type metadata accessor for SessionContentView(0);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = sub_1A2114DFC();

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC13MediaControls11SessionView_itemsView;
  type metadata accessor for RoutePickerItemsView(0, v9);
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = sub_1A2114DFC();

  *(v1 + v8) = v11;
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_animationCoordinator + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_layout) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_greatestItemsFittingHeight) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_verticalHeaderConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_expandedConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_headerOnlyConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_verticalLayoutConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_horizontalLayoutConstraints) = 0;
  v12 = v1 + OBJC_IVAR____TtC13MediaControls11SessionView_sessionViewState;
  LOBYTE(v10) = sub_1A211A6BC();
  LOBYTE(v11) = sub_1A2113050();
  v13 = sub_1A2113050();
  LOBYTE(v8) = sub_1A211A6BC();
  v14 = sub_1A2113050();
  v15 = sub_1A2113050();
  v16 = sub_1A220CDA4(1, v10 & 1, v11 & 1, v13 & 1, v8 & 1, v14 & 1, v15 & 1);
  *v12 = v16 & 1;
  v17 = vdupq_n_s64(v16);
  *v17.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v17, xmmword_1A2308740), vshlq_u64(v17, xmmword_1A2308730))), 0x1000100010001);
  *(v12 + 1) = vuzp1_s8(*v17.i8, *v17.i8).u32[0];
  *(v12 + 5) = BYTE5(v16) & 1;
  *(v12 + 6) = BYTE6(v16) & 1;
  v18 = (v1 + OBJC_IVAR____TtC13MediaControls11SessionView_selectionHandler);
  *v18 = 0;
  v18[1] = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls11SessionView_visualStylingProvider) = 0;
  sub_1A22E7028();
  __break(1u);
}

void sub_1A2274AA0(float a1)
{
  v85 = sub_1A22E5738();
  v83 = *(v85 - 8);
  v2 = MEMORY[0x1EEE9AC00](v85);
  v73 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v72 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8, &qword_1A230AB90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v72 - v7;
  v9 = sub_1A22E5D98();
  v76 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v81 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v72 - v12;
  v72 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v13 = *(v72 - 8);
  v14 = MEMORY[0x1EEE9AC00](v72);
  v78 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v79 = (&v72 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v72 - v18;
  v20 = type metadata accessor for SessionViewModel(0);
  v21 = v20 - 8;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE8);
  v74 = v1;
  v25(v22);
  v26 = *(v21 + 32);
  v75 = v24;
  v27 = &v24[v26];
  v28 = *v27;
  sub_1A22D46C4(*v27, v27[1]);
  v29 = v28;
  v30 = *(v28 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  v82 = v5;
  v86 = v9;
  v84 = v8;
  v77 = v30;
  if (!v30)
  {
LABEL_12:

    sub_1A22754F4(v75, type metadata accessor for SessionViewModel);
    v38 = *(v31 + 16);
    if (v38)
    {
      v39 = *(v72 + 44);
      v40 = v31 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v77 = *(v13 + 72);
      v78 = v39;
      v41 = (v76 + 48);
      v42 = (v76 + 32);
      v43 = MEMORY[0x1E69E7CC0];
      v44 = v86;
      do
      {
        v45 = v79;
        sub_1A227562C(v40, v79, type metadata accessor for RoutePickerItemView.ViewModel);
        sub_1A22755BC(v45 + v78, v8);
        sub_1A22754F4(v45, type metadata accessor for RoutePickerItemView.ViewModel);
        if ((*v41)(v8, 1, v44) == 1)
        {
          sub_1A210D9B0(v8, &qword_1EB088BE8, &qword_1A230AB90);
        }

        else
        {
          v46 = *v42;
          (*v42)(v80, v8, v44);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v47 = v43;
          }

          else
          {
            v47 = sub_1A2231D44(0, v43[2] + 1, 1, v43);
          }

          v49 = v47[2];
          v48 = v47[3];
          if (v49 >= v48 >> 1)
          {
            v47 = sub_1A2231D44((v48 > 1), v49 + 1, 1, v47);
          }

          v47[2] = v49 + 1;
          v43 = v47;
          v46(v47 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v49, v80, v86);
          v5 = v82;
          v8 = v84;
        }

        v40 += v77;
        --v38;
      }

      while (v38);
    }

    else
    {

      v43 = MEMORY[0x1E69E7CC0];
    }

    v50 = v43[2];
    if (v50)
    {
      v87 = MEMORY[0x1E69E7CC0];
      sub_1A2231F1C(0, v50, 0);
      v51 = v87;
      v84 = *(v76 + 16);
      v52 = v43 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
      v53 = *(v76 + 72);
      v79 = v43;
      v80 = v53;
      v54 = (v76 + 8);
      v55 = v73;
      do
      {
        v56 = v81;
        v57 = v86;
        (v84)(v81, v52, v86);
        sub_1A22E5D88();
        (*v54)(v56, v57);
        v87 = v51;
        v59 = *(v51 + 16);
        v58 = *(v51 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_1A2231F1C((v58 > 1), v59 + 1, 1);
          v51 = v87;
        }

        *(v51 + 16) = v59 + 1;
        (*(v83 + 32))(v51 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v59, v55, v85);
        v52 = &v80[v52];
        --v50;
      }

      while (v50);

      v60 = v85;
      v5 = v82;
      v61 = *(v51 + 16);
      if (!v61)
      {
        goto LABEL_38;
      }
    }

    else
    {

      v51 = MEMORY[0x1E69E7CC0];
      v60 = v85;
      v61 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v61)
      {
LABEL_38:

        return;
      }
    }

    v62 = **(v74 + OBJC_IVAR____TtC13MediaControls11SessionView_presenter);
    v86 = *(v74 + OBJC_IVAR____TtC13MediaControls11SessionView_presenter);
    v84 = *(v62 + 160);
    v82 = (v62 + 160);
    v63 = *(v83 + 16);
    v64 = v51 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v65 = *(v83 + 72);
    v66 = (v83 + 8);
    for (i = v63(v5, v64, v60); ; i = v63(v5, v64, v68))
    {
      if ((v84)(i))
      {
        v70 = v69;
        ObjectType = swift_getObjectType();
        (*(v70 + 16))(v5, ObjectType, v70);
        swift_unknownObjectRelease();
      }

      v68 = v85;
      (*v66)(v5, v85);
      v64 += v65;
      if (!--v61)
      {
        break;
      }
    }

    goto LABEL_38;
  }

  v32 = 0;
  while (v32 < *(v29 + 16))
  {
    v33 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v34 = *(v13 + 72);
    sub_1A227562C(v29 + v33 + v34 * v32, v19, type metadata accessor for RoutePickerItemView.ViewModel);
    if (sub_1A226C080())
    {
      sub_1A2275554(v19, v78, type metadata accessor for RoutePickerItemView.ViewModel);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A2129B8C(0, *(v31 + 16) + 1, 1);
        v31 = v87;
      }

      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1A2129B8C((v36 > 1), v37 + 1, 1);
        v31 = v87;
      }

      *(v31 + 16) = v37 + 1;
      sub_1A2275554(v78, v31 + v33 + v37 * v34, type metadata accessor for RoutePickerItemView.ViewModel);
      v5 = v82;
    }

    else
    {
      sub_1A22754F4(v19, type metadata accessor for RoutePickerItemView.ViewModel);
    }

    ++v32;
    v8 = v84;
    if (v77 == v32)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t sub_1A2275360()
{
  result = qword_1EB0893C8;
  if (!qword_1EB0893C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0893C8);
  }

  return result;
}

uint64_t sub_1A22753BC(uint64_t a1)
{
  result = type metadata accessor for SessionViewModel(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1A22754F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2275554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A22755BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8, &qword_1A230AB90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A227562C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2275694()
{
  v1 = *(v0 + 16);
  sub_1A211A728(v8);
  v2 = sub_1A211A7DC(v8, v1);
  sub_1A211A9FC(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A2308E80;
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088840, &unk_1A2308EF0);
  *(v3 + 64) = &off_1F14441C0;
  *(v3 + 32) = v2;
  sub_1A211AB54(v3, v4);
  v6 = v5;

  return v6;
}

uint64_t sub_1A2275754()
{
  v1 = *(v0 + 16);
  sub_1A2115288(0, &qword_1ED94EA00, 0x1E696ACF0);
  v2 = *&v1[OBJC_IVAR____TtC13MediaControls11SessionView_contentView];
  v3 = [v2 topAnchor];
  v4 = [v1 topAnchor];
  v5 = sub_1A211AAD0();
  v7 = v6;

  sub_1A2115288(0, &qword_1ED94EA08, 0x1E696ACE8);

  v35 = v5;
  v8 = [v2 leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = sub_1A211AAD0();
  v12 = v11;

  v13 = v10;
  v14 = [v2 trailingAnchor];
  v15 = [v1 trailingAnchor];
  v16 = sub_1A211AAD0();
  v18 = v17;

  sub_1A2115288(0, &qword_1ED94EA58, 0x1E696ACE0);

  v19 = v16;
  v20 = [v2 heightAnchor];
  sub_1A2257F8C(v20);
  v22 = v21;
  v24 = v23;

  KeyPath = swift_getKeyPath();
  v26 = sub_1A2127238(v22, v24, KeyPath);
  v28 = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A230A780;
  *(v29 + 56) = &type metadata for Constraint;
  *(v29 + 64) = &off_1F14441B0;
  *(v29 + 32) = v35;
  *(v29 + 40) = v7;
  *(v29 + 96) = &type metadata for Constraint;
  *(v29 + 104) = &off_1F14441B0;
  *(v29 + 72) = v13;
  *(v29 + 80) = v12;
  *(v29 + 136) = &type metadata for Constraint;
  *(v29 + 144) = &off_1F14441B0;
  *(v29 + 112) = v19;
  *(v29 + 120) = v18;
  *(v29 + 176) = &type metadata for Constraint;
  *(v29 + 184) = &off_1F14441B0;
  *(v29 + 152) = v26;
  *(v29 + 160) = v28;

  v30 = v26;
  sub_1A211AB54(v29, v31);
  v33 = v32;

  return v33;
}

uint64_t sub_1A2275A6C(void *a1)
{
  v3 = *(v1 + 16);
  sub_1A2115288(0, &qword_1ED94EA00, 0x1E696ACF0);
  v4 = [*&v3[*a1] bottomAnchor];
  v5 = [v3 bottomAnchor];
  v6 = sub_1A211AAD0();
  v8 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A2308E80;
  *(v9 + 56) = &type metadata for Constraint;
  *(v9 + 64) = &off_1F14441B0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;

  v10 = v6;
  sub_1A211AB54(v9, v11);
  v13 = v12;

  return v13;
}

uint64_t sub_1A2275B88()
{
  v1 = *(v0 + 16);
  sub_1A2115288(0, &qword_1ED94EA00, 0x1E696ACF0);
  v2 = *&v1[OBJC_IVAR____TtC13MediaControls11SessionView_itemsView];
  v3 = [v2 topAnchor];
  v4 = [*&v1[OBJC_IVAR____TtC13MediaControls11SessionView_contentView] bottomAnchor];
  v5 = sub_1A211AAD0();
  v40 = v6;

  sub_1A2115288(0, &qword_1ED94EA08, 0x1E696ACE8);

  v39 = v5;
  v7 = [v2 leadingAnchor];
  v8 = [v1 leadingAnchor];
  v9 = sub_1A211AAD0();
  v38 = v10;

  v37 = v9;
  v11 = [v2 trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = sub_1A211AAD0();
  v36 = v14;

  sub_1A2115288(0, &qword_1ED94EA58, 0x1E696ACE0);

  v15 = v13;
  v16 = [v2 heightAnchor];
  v17 = sub_1A2254CC0();
  v18 = sub_1A211A6BC();
  sub_1A22D3E7C(v18 & 1, v17);
  sub_1A22584B4(v16);
  v20 = v19;
  v35 = v21;

  v22 = v20;
  v23 = [v2 heightAnchor];
  v24 = sub_1A2254C04();
  sub_1A22D3E7C(0, v24);
  sub_1A2258438(v23);
  v26 = v25;
  v28 = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A230A770;
  *(v29 + 56) = &type metadata for Constraint;
  *(v29 + 64) = &off_1F14441B0;
  *(v29 + 32) = v39;
  *(v29 + 40) = v40;
  *(v29 + 96) = &type metadata for Constraint;
  *(v29 + 104) = &off_1F14441B0;
  *(v29 + 72) = v37;
  *(v29 + 80) = v38;
  *(v29 + 136) = &type metadata for Constraint;
  *(v29 + 144) = &off_1F14441B0;
  *(v29 + 112) = v15;
  *(v29 + 120) = v36;
  *(v29 + 176) = &type metadata for Constraint;
  *(v29 + 184) = &off_1F14441B0;
  *(v29 + 152) = v22;
  *(v29 + 160) = v35;
  *(v29 + 216) = &type metadata for Constraint;
  *(v29 + 224) = &off_1F14441B0;
  *(v29 + 192) = v26;
  *(v29 + 200) = v28;

  v30 = v26;
  sub_1A211AB54(v29, v31);
  v33 = v32;

  return v33;
}

uint64_t sub_1A2275EF0()
{
  v1 = *(v0 + 16);
  sub_1A2115288(0, &qword_1ED94EA08, 0x1E696ACE8);
  v2 = *&v1[OBJC_IVAR____TtC13MediaControls11SessionView_contentView];
  v3 = [v2 leadingAnchor];
  v4 = [v1 leadingAnchor];
  v5 = sub_1A211AAD0();
  v56 = v6;

  sub_1A2115288(0, &qword_1ED94EA00, 0x1E696ACF0);

  v55 = v5;
  v7 = [v2 topAnchor];
  v8 = [v1 topAnchor];
  v9 = sub_1A211AAD0();
  v54 = v10;

  v53 = v9;
  v11 = [v2 bottomAnchor];
  v12 = [v1 bottomAnchor];
  v13 = sub_1A211AAD0();
  v52 = v14;

  v51 = v13;
  v15 = [v2 widthAnchor];
  sub_1A2115288(0, &qword_1ED94EA58, 0x1E696ACE0);
  v16 = [v1 widthAnchor];
  v17 = sub_1A2257D08(v16);
  v19 = v18;
  v21 = v20;

  sub_1A2257730(v15, v17, v19, v21);
  v23 = v22;
  v48 = v24;

  v25 = *&v1[OBJC_IVAR____TtC13MediaControls11SessionView_itemsView];

  v47 = v23;
  v26 = [v25 leadingAnchor];
  v27 = [v2 trailingAnchor];
  v28 = sub_1A211AAD0();
  v46 = v29;

  v43 = v28;
  v30 = [v25 topAnchor];
  v31 = [v1 topAnchor];
  v32 = sub_1A211AAD0();
  v45 = v33;

  v44 = v32;
  v34 = [v25 trailingAnchor];
  v35 = [v1 trailingAnchor];
  v49 = sub_1A211AAD0();
  v37 = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40, &unk_1A230A900);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1A230CE20;
  *(v38 + 56) = &type metadata for Constraint;
  *(v38 + 64) = &off_1F14441B0;
  *(v38 + 32) = v55;
  *(v38 + 40) = v56;
  *(v38 + 96) = &type metadata for Constraint;
  *(v38 + 104) = &off_1F14441B0;
  *(v38 + 72) = v53;
  *(v38 + 80) = v54;
  *(v38 + 136) = &type metadata for Constraint;
  *(v38 + 144) = &off_1F14441B0;
  *(v38 + 112) = v51;
  *(v38 + 120) = v52;
  *(v38 + 176) = &type metadata for Constraint;
  *(v38 + 184) = &off_1F14441B0;
  *(v38 + 152) = v47;
  *(v38 + 160) = v48;
  *(v38 + 216) = &type metadata for Constraint;
  *(v38 + 224) = &off_1F14441B0;
  *(v38 + 192) = v43;
  *(v38 + 200) = v46;
  *(v38 + 256) = &type metadata for Constraint;
  *(v38 + 264) = &off_1F14441B0;
  *(v38 + 232) = v44;
  *(v38 + 240) = v45;
  *(v38 + 296) = &type metadata for Constraint;
  *(v38 + 304) = &off_1F14441B0;
  *(v38 + 272) = v49;
  *(v38 + 280) = v37;

  v39 = v49;
  sub_1A211AB54(v38, v40);
  v50 = v41;

  return v50;
}

void (*sub_1A22763D8(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1A2255490;
}

uint64_t sub_1A227646C()
{
  v1 = *(v0 + 104);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_1A22764B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A221C278();

  return sub_1A221CB68(v2, a1);
}

double sub_1A22764F0@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[3];
  v7 = v1[2];
  v8 = v3;
  v9[0] = v1[4];
  *(v9 + 9) = *(v1 + 73);
  sub_1A221CB68(&v7, v6);
  v4 = v8;
  *a1 = v7;
  a1[1] = v4;
  a1[2] = v9[0];
  result = *(v9 + 9);
  *(a1 + 41) = *(v9 + 9);
  return result;
}

uint64_t sub_1A2276574(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[3];
  v15[0] = v1[2];
  v15[1] = v3;
  v16[0] = v1[4];
  *(v16 + 9) = *(v1 + 73);
  v4 = a1[1];
  v1[2] = *a1;
  v1[3] = v4;
  v1[4] = a1[2];
  *(v1 + 73) = *(a1 + 41);
  v5 = sub_1A2248550(v15);
  result = (*(*v1 + 112))(v5);
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    v10 = v1[3];
    v13[0] = v1[2];
    v13[1] = v10;
    v14[0] = v1[4];
    *(v14 + 9) = *(v1 + 73);
    v11 = *(v8 + 16);
    sub_1A221CB68(v13, v12);
    v11(v13, ObjectType, v8);
    swift_unknownObjectRelease();
    return sub_1A2248550(v13);
  }

  return result;
}

void (*sub_1A2276694(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  return sub_1A2276710;
}

void sub_1A2276710(char **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0 && (*(**(v3 + 16) + 112))(v4))
  {
    v6 = v5;
    v7 = *(v3 + 16);
    ObjectType = swift_getObjectType();
    v10 = v7[3];
    v9 = v7[4];
    v11 = v7[2];
    *(v3 + 41) = *(v7 + 73);
    *v3 = v11;
    *(v3 + 1) = v10;
    *(v3 + 2) = v9;
    v12 = *(v6 + 16);
    sub_1A221CB68(v3, (v3 + 64));
    v12(v3, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1A2248550(v3);
  }

  free(v3);
}

void *sub_1A22767F8(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1A2277274(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

void *sub_1A2276854(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A2277274(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1A2276888()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C40, &qword_1A230A1C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20[-v2];
  v4 = type metadata accessor for RoutePickerSnapshot(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-v9];
  v11 = v0[13];
  ObjectType = swift_getObjectType();
  (*(v11 + 16))(ObjectType, v11);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1A2277380(v3);
    v13 = sub_1A221C278();
    v15 = *(v13 + 1);
    v14 = *(v13 + 2);
    v16 = *v13;
    *&v22[9] = *(v13 + 41);
    v21[0] = v16;
    v21[1] = v15;
    *v22 = v14;
    v17 = *(*v0 + 152);
    sub_1A221CB68(v21, v20);
    return v17(v21);
  }

  else
  {
    sub_1A223CCFC(v3, v10);
    sub_1A22570C4(v10, v8);
    v19 = sub_1A22C17EC(v8, v21);
    (*(*v0 + 152))(v21, v19);
    return sub_1A2257128(v10);
  }
}

uint64_t sub_1A2276AB4()
{
  v1 = *(v0 + 104);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

uint64_t sub_1A2276B10(uint64_t a1)
{
  v3 = *(v1 + 104);
  ObjectType = swift_getObjectType();
  return (*(v3 + 80))(a1, ObjectType, v3);
}

uint64_t sub_1A2276B68()
{
  v1 = v0;
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A2104EA0();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_1A22E6238();
  v8 = sub_1A22E6A98();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v9 = 136315394;
    v10 = sub_1A22E7388();
    v12 = sub_1A2103450(v10, v11, &v23);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    swift_beginAccess();

    v13 = sub_1A22E6938();
    v15 = v14;

    v16 = sub_1A2103450(v13, v15, &v23);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1A20FC000, v7, v8, "[%s] Updating expandedSessionIdentifiers=%s", v9, 0x16u);
    v17 = v22;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v17, -1, -1);
    MEMORY[0x1A58DCD00](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v18 = *(v1 + 104);
  ObjectType = swift_getObjectType();
  return (*(v18 + 32))(ObjectType, v18);
}

uint64_t sub_1A2276E40(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;

  return sub_1A2276B68();
}

uint64_t (*sub_1A2276E8C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2276EE0;
}

uint64_t sub_1A2276EE0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A2276B68();
  }

  return result;
}

void *sub_1A2276F14()
{
  sub_1A210DA3C((v0 + 2));
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];

  sub_1A221467C(v1, v2, v3, v4);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1A2276F8C()
{
  sub_1A210DA3C((v0 + 2));
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];

  sub_1A221467C(v1, v2, v3, v4);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t sub_1A227701C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A22E58F8();
  v14 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v1 + 112))(v4))
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(ObjectType, v8);
    swift_unknownObjectRelease();
    return (*(v14 + 32))(a1, v6, v3);
  }

  else
  {
    v11 = *MEMORY[0x1E69AE580];
    v12 = *(v14 + 104);

    return v12(a1, v11, v3);
  }
}

uint64_t sub_1A22771C4()
{
  result = (*(*v0 + 112))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 40))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1A2277274(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v6 = sub_1A221C278();
  v8 = *(v6 + 1);
  v7 = *(v6 + 2);
  v9 = *v6;
  *&v18[9] = *(v6 + 41);
  v17[1] = v8;
  *v18 = v7;
  v17[0] = v9;
  memmove(v3 + 4, v6, 0x39uLL);
  v10 = MEMORY[0x1E69E7CD0];
  v3[13] = a2;
  v3[14] = v10;
  v3[12] = a1;
  ObjectType = swift_getObjectType();
  v12 = *(a2 + 56);
  sub_1A221CB68(v17, &v16);
  swift_unknownObjectRetain();

  v12(v13, &off_1F1440298, ObjectType, a2);

  (*(*v3 + 176))(v14);
  return v3;
}

uint64_t sub_1A2277380(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C40, &qword_1A230A1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A22773E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1A22E6248();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A2104EA0();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_1A22E6238();
  v14 = sub_1A22E6A58();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = a3;
    v33 = v17;
    v30 = v17;
    *v16 = 136315138;
    v18 = sub_1A22E7388();
    v20 = a1;
    v21 = a2;
    v22 = sub_1A2103450(v18, v19, &v33);

    *(v16 + 4) = v22;
    a2 = v21;
    a1 = v20;
    _os_log_impl(&dword_1A20FC000, v13, v14, "[%s] requestsToPresent dialog", v16, 0xCu);
    v23 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    v24 = v23;
    a3 = v32;
    MEMORY[0x1A58DCD00](v24, -1, -1);
    MEMORY[0x1A58DCD00](v16, -1, -1);

    v25 = (*(v9 + 8))(v11, v31);
  }

  else
  {

    v25 = (*(v9 + 8))(v11, v8);
  }

  result = (*(*v4 + 112))(v25);
  if (result)
  {
    v28 = v27;
    ObjectType = swift_getObjectType();
    (*(v28 + 24))(a1, a2, a3, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A2277678()
{
  v1 = *v0;
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 112))(v4))
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(ObjectType, v8);
    swift_unknownObjectRelease();
  }

  v10 = sub_1A2104EA0();
  (*(v3 + 16))(v6, v10, v2);
  v11 = sub_1A22E6238();
  v12 = sub_1A22E6A58();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v15 = sub_1A22E7388();
    v17 = sub_1A2103450(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1A20FC000, v11, v12, "[%s] controllerRequestsToPresentAudioSharingUI", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1A58DCD00](v14, -1, -1);
    MEMORY[0x1A58DCD00](v13, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1A22778E0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 56);
  v5 = *(a3 + 16);
  v7 = *a1;
  v8 = v3;
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  v11 = v4;
  return v5(&v7, a2);
}

uint64_t sub_1A22779A8()
{
  v1 = *(v0 + 96);

  return v1;
}

__n128 sub_1A22779D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v4;
  v5 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 96) = a2;
  *(a4 + 104) = a3;
  return result;
}

double sub_1A22779F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 96) = a1;
  *(a3 + 104) = a2;
  return result;
}

double sub_1A2277A10@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  return result;
}

uint64_t sub_1A2277A30(__int128 *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_1A227BFF8(v13, v14) & 1;
}

uint64_t sub_1A2277A98()
{
  if (qword_1ED952040 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1ED9533E8;
  v2[3] = *&qword_1ED9533F8;
  v2[4] = xmmword_1ED953408;
  v2[5] = *&qword_1ED953418;
  v2[0] = xmmword_1ED9533C8;
  v2[1] = *algn_1ED9533D8;
  xmmword_1ED953068 = xmmword_1ED9533E8;
  unk_1ED953078 = *&qword_1ED9533F8;
  xmmword_1ED953088 = xmmword_1ED953408;
  unk_1ED953098 = *&qword_1ED953418;
  xmmword_1ED953048 = xmmword_1ED9533C8;
  unk_1ED953058 = *algn_1ED9533D8;
  qword_1ED9530A8 = 0x6C69662E79616C70;
  unk_1ED9530B0 = 0xE90000000000006CLL;
  return sub_1A2116FC8(v2, &v1);
}

__int128 *sub_1A2277B40()
{
  if (qword_1ED952040 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED9533C8;
}

uint64_t sub_1A2277BB4()
{
  if (qword_1ED952038 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1ED953388;
  v2[3] = *&qword_1ED953398;
  v2[4] = xmmword_1ED9533A8;
  v2[5] = *&qword_1ED9533B8;
  v2[0] = xmmword_1ED953368;
  v2[1] = *algn_1ED953378;
  xmmword_1ED952FF8 = xmmword_1ED953388;
  unk_1ED953008 = *&qword_1ED953398;
  xmmword_1ED953018 = xmmword_1ED9533A8;
  unk_1ED953028 = *&qword_1ED9533B8;
  xmmword_1ED952FD8 = xmmword_1ED953368;
  unk_1ED952FE8 = *algn_1ED953378;
  qword_1ED953038 = 0x69662E6573756170;
  unk_1ED953040 = 0xEA00000000006C6CLL;
  return sub_1A2116FC8(v2, &v1);
}

__int128 *sub_1A2277C5C()
{
  if (qword_1ED952038 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED953368;
}

__int128 *sub_1A2277CAC()
{
  if (qword_1ED951298 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED952FD8;
}

uint64_t sub_1A2277D20()
{
  if (qword_1EB08E1C0 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1EB0915F8;
  v2[3] = *&qword_1EB091608;
  v2[4] = xmmword_1EB091618;
  v2[5] = *&qword_1EB091628;
  v2[0] = xmmword_1EB0915D8;
  v2[1] = *algn_1EB0915E8;
  xmmword_1EB0914A8 = xmmword_1EB0915F8;
  unk_1EB0914B8 = *&qword_1EB091608;
  xmmword_1EB0914C8 = xmmword_1EB091618;
  unk_1EB0914D8 = *&qword_1EB091628;
  xmmword_1EB091488 = xmmword_1EB0915D8;
  unk_1EB091498 = *algn_1EB0915E8;
  qword_1EB0914E8 = 0x6C69662E706F7473;
  unk_1EB0914F0 = 0xE90000000000006CLL;
  return sub_1A2116FC8(v2, &v1);
}

__int128 *sub_1A2277DC8()
{
  if (qword_1EB08E1C0 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB0915D8;
}

__int128 *sub_1A2277E18()
{
  if (qword_1EB08E1A0 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB091488;
}

uint64_t sub_1A2277E8C()
{
  if (qword_1ED952018 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1ED9532C8;
  v2[3] = unk_1ED9532D8;
  v2[4] = xmmword_1ED9532E8;
  v2[5] = unk_1ED9532F8;
  v2[0] = xmmword_1ED9532A8;
  v2[1] = unk_1ED9532B8;
  xmmword_1ED952F18 = xmmword_1ED9532C8;
  unk_1ED952F28 = unk_1ED9532D8;
  xmmword_1ED952F38 = xmmword_1ED9532E8;
  unk_1ED952F48 = unk_1ED9532F8;
  xmmword_1ED952EF8 = xmmword_1ED9532A8;
  unk_1ED952F08 = unk_1ED9532B8;
  strcpy(&qword_1ED952F58, "backward.fill");
  unk_1ED952F66 = -4864;
  return sub_1A2116FC8(v2, &v1);
}

__int128 *sub_1A2277F3C()
{
  if (qword_1ED952018 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED9532A8;
}

uint64_t sub_1A2277FB0()
{
  if (qword_1ED952050 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1ED953448;
  v2[3] = unk_1ED953458;
  v2[4] = xmmword_1ED953468;
  v2[5] = unk_1ED953478;
  v2[0] = xmmword_1ED953428;
  v2[1] = unk_1ED953438;
  xmmword_1ED9530D8 = xmmword_1ED953448;
  unk_1ED9530E8 = unk_1ED953458;
  xmmword_1ED9530F8 = xmmword_1ED953468;
  unk_1ED953108 = unk_1ED953478;
  xmmword_1ED9530B8 = xmmword_1ED953428;
  unk_1ED9530C8 = unk_1ED953438;
  strcpy(&qword_1ED953118, "forward.fill");
  unk_1ED953125 = 0;
  unk_1ED953126 = -5120;
  return sub_1A2116FC8(v2, &v1);
}

__int128 *sub_1A227805C()
{
  if (qword_1ED952050 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED953428;
}

uint64_t sub_1A22780D0()
{
  if (qword_1ED952028 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1ED953328;
  v2[3] = unk_1ED953338;
  v2[4] = xmmword_1ED953348;
  v2[5] = unk_1ED953358;
  v2[0] = xmmword_1ED953308;
  v2[1] = unk_1ED953318;
  xmmword_1ED952F88 = xmmword_1ED953328;
  unk_1ED952F98 = unk_1ED953338;
  xmmword_1ED952FA8 = xmmword_1ED953348;
  unk_1ED952FB8 = unk_1ED953358;
  xmmword_1ED952F68 = xmmword_1ED953308;
  unk_1ED952F78 = unk_1ED953318;
  qword_1ED952FC8 = 1918989427;
  unk_1ED952FD0 = 0xE400000000000000;
  return sub_1A2116FC8(v2, &v1);
}

__int128 *sub_1A227816C()
{
  if (qword_1ED952028 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED953308;
}

__int128 *sub_1A22781BC()
{
  if (qword_1ED951288 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED952F68;
}

uint64_t sub_1A2278230()
{
  if (qword_1EB08E1D0 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1EB091658;
  v2[3] = unk_1EB091668;
  v2[4] = xmmword_1EB091678;
  v2[5] = unk_1EB091688;
  v2[0] = xmmword_1EB091638;
  v2[1] = unk_1EB091648;
  xmmword_1EB091518 = xmmword_1EB091658;
  unk_1EB091528 = unk_1EB091668;
  xmmword_1EB091538 = xmmword_1EB091678;
  unk_1EB091548 = unk_1EB091688;
  xmmword_1EB0914F8 = xmmword_1EB091638;
  unk_1EB091508 = unk_1EB091648;
  qword_1EB091558 = 0x6C69662E72617473;
  unk_1EB091560 = 0xE90000000000006CLL;
  return sub_1A2116FC8(v2, &v1);
}

__int128 *sub_1A22782D8()
{
  if (qword_1EB08E1D0 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB091638;
}

__int128 *sub_1A2278328()
{
  if (qword_1EB08E1B0 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB0914F8;
}

double sub_1A227839C()
{
  result = 0.0;
  xmmword_1EB0915A8 = 0u;
  unk_1EB0915B8 = 0u;
  xmmword_1EB091588 = 0u;
  unk_1EB091598 = 0u;
  xmmword_1EB091568 = 0u;
  unk_1EB091578 = 0u;
  qword_1EB0915C8 = 0xD000000000000012;
  unk_1EB0915D0 = 0x80000001A23050D0;
  return result;
}

__int128 *sub_1A22783D4()
{
  if (qword_1EB08E1B8 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB091568;
}

uint64_t sub_1A2278448@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return sub_1A213045C(a2, v5);
}

uint64_t sub_1A22784A4(unsigned __int8 a1)
{
  v1 = 0x7375615079616C50;
  v2 = 1885956947;
  v3 = 0x656D756C6F56;
  if (a1 != 3)
  {
    v3 = 0x657469726F766146;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x4264726177726F46;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A227854C()
{
  sub_1A22E72A8();
  sub_1A22E6658();

  return sub_1A22E72F8();
}

double sub_1A227863C(uint64_t a1)
{
  sub_1A22E6658();

  return result;
}

uint64_t sub_1A2278718(uint64_t a1)
{
  sub_1A22E72A8();
  sub_1A22E6658();

  return sub_1A22E72F8();
}

unint64_t sub_1A2278804@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A227CAB0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1A2278834(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000706F745365;
  v4 = 0x7375615079616C50;
  v5 = 0xE400000000000000;
  v6 = 1885956947;
  v7 = 0xE600000000000000;
  v8 = 0x656D756C6F56;
  if (v2 != 3)
  {
    v8 = 0x657469726F766146;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x4264726177726F46;
    v3 = 0xEF647261776B6361;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1A22788E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 != a5 || a2 != a6) && (sub_1A22E71E8() & 1) == 0)
  {
    return 0;
  }

  return sub_1A22E7338();
}

uint64_t sub_1A227896C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a2 + 56;
    for (i = a1 + 56; ; i += 32)
    {
      v5 = *(i - 24) == *(v3 - 24) && *(i - 16) == *(v3 - 16);
      if (!v5 && (sub_1A22E71E8() & 1) == 0 || (sub_1A22E7338() & 1) == 0)
      {
        break;
      }

      v3 += 32;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1A2278A28(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if ((*(a1 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      v6 = v3 == *a2 && *(a1 + 8) == *(a2 + 8);
      if (v6 || (sub_1A22E71E8()) && (sub_1A22E7338())
      {
        return 1;
      }
    }

    return 0;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

  v4 = *a2;

  return sub_1A227896C(v3, v4);
}

double sub_1A2278AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x1A58DA8D0](58, 0xE100000000000000);
  v4 = sub_1A22E7328();
  MEMORY[0x1A58DA8D0](v4);

  return result;
}

uint64_t sub_1A2278B64(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1A22E71E8() & 1) == 0)
  {
    return 0;
  }

  return sub_1A22E7338();
}

uint64_t sub_1A2278BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1A22E71E8();
  }
}

uint64_t sub_1A2278C10(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A22E71E8();
  }
}

uint64_t sub_1A2278CDC()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1A2278D0C()
{
  v1 = *(v0 + 64);

  return v1;
}