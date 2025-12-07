uint64_t sub_190977CF0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0, &unk_190DE0210);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = sub_190D51840();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = &v34 - v17;
  result = [a1 chat];
  if (result)
  {
    v20 = result;
    if ([result unreadMessageCount] >= 1)
    {

      return 1;
    }

    v21 = [v20 lastFinishedMessage];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 timeDelivered];
      if (v23)
      {
        v24 = v23;
        sub_190D517E0();

        v25 = *(v12 + 32);
        v25(v7, v14, v11);
        v35 = v22;
        v26 = *(v12 + 56);
        v26(v7, 0, 1, v11);
        v25(v10, v7, v11);
        v26(v10, 0, 1, v11);
        v22 = v35;
        v27 = (*(v12 + 48))(v10, 1, v11);
      }

      else
      {
        v28 = 1;
        v35 = *(v12 + 56);
        v35(v7, 1, 1, v11);
        v29 = [v22 time];
        if (v29)
        {
          v30 = v29;
          sub_190D517E0();

          v28 = 0;
        }

        v35(v4, v28, 1, v11);
        sub_19088090C(v4, v10);
        v31 = *(v12 + 48);
        if (v31(v7, 1, v11) != 1)
        {
          sub_19022EEA4(v7, &unk_1EAD5E5D0, &unk_190DE0210);
        }

        v27 = v31(v10, 1, v11);
      }

      if (v27 == 1)
      {

        sub_19022EEA4(v10, &unk_1EAD5E5D0, &unk_190DE0210);
      }

      else
      {
        (*(v12 + 32))(v18, v10, v11);
        sub_190D517B0();
        v33 = v32;

        (*(v12 + 8))(v18, v11);
        if (v33 > -86400.0)
        {
          return 1;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_190978100(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v1 = [a1 loadUserInfoWithError_];
  v2 = v12[0];
  if (v1)
  {
    v3 = v1;
    v4 = sub_190D56D90();
    v5 = v2;

    v11 = sub_190D56F10();
    sub_190D58230();
    if (*(v4 + 16) && (v6 = sub_190875C84(v12), (v7 & 1) != 0))
    {
      sub_19021834C(*(v4 + 56) + 32 * v6, v13);
      sub_19084CFD0(v12);

      if (swift_dynamicCast())
      {
        return v11;
      }
    }

    else
    {

      sub_19084CFD0(v12);
    }
  }

  else
  {
    v9 = v12[0];
    v10 = sub_190D51420();

    swift_willThrow();
  }

  return 0;
}

uint64_t sub_190978278(uint64_t a1)
{
  v2 = _s17BackgroundContentOMa(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1909788B0(a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        return 6;
      }

      v7 = *(v4 + 1);
      v8 = *(v4 + 2);
      v27 = v7;
      v28 = v8;
      v25 = 0x616C506567616D49;
      v26 = 0xEF646E756F726779;
      sub_19081E484();
      sub_190D52690();
      if ((sub_190D58110() & 1) == 0)
      {
        v27 = v7;
        v28 = v8;
        v25 = 0x616C706567616D69;
        v26 = 0xEF646E756F726779;
        v10 = sub_190D58110();
        swift_unknownObjectRelease();
        swift_bridgeObjectRelease_n();
        if (v10)
        {
          return 5;
        }

        else
        {
          return 6;
        }
      }

      swift_unknownObjectRelease();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      if ((EnumCaseMultiPayload - 7) >= 2)
      {
        return 1;
      }

      sub_190978914(v4);
    }

    return 5;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_190978914(v4);
      return 6;
    }

    v9 = *v4;
    if (sub_190978100(*v4))
    {

      return 5;
    }

    v11 = [v9 providerBundleIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = sub_190D56F10();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    if (sub_19088A008(0) == v13 && v16 == v15)
    {

LABEL_31:

      return 2;
    }

    v17 = sub_190D58760();

    if (v17)
    {

      goto LABEL_31;
    }

    if (sub_19088A008(3u) == v13 && v18 == v15)
    {
      goto LABEL_35;
    }

    v19 = sub_190D58760();

    if (v19)
    {
      goto LABEL_37;
    }

    if (sub_19088A008(1u) == v13 && v20 == v15)
    {
LABEL_35:

LABEL_38:

      return 3;
    }

    v21 = sub_190D58760();

    if (v21)
    {
LABEL_37:

      goto LABEL_38;
    }

    if (sub_19088A008(4u) == v13 && v22 == v15)
    {
    }

    else
    {
      v23 = sub_190D58760();

      if ((v23 & 1) == 0)
      {
        if (v13 == 0x6E776F6E6B6E75 && v15 == 0xE700000000000000)
        {

          return 3;
        }

        v24 = sub_190D58760();

        if (v24)
        {
          return 3;
        }

        else
        {
          return 6;
        }
      }
    }

    return 5;
  }

  if ((EnumCaseMultiPayload - 1) < 2)
  {
    sub_190978914(v4);
    return 3;
  }

  sub_190978914(v4);
  return 2;
}

uint64_t sub_1909786D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060, &qword_190DECD30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = _s17BackgroundContentOMa(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = _s21BackgroundGalleryItemVMa(0);
  sub_19083B610(a1 + *(v9 + 28), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_19022EEA4(v4, &unk_1EAD54060, &qword_190DECD30);
    sub_1909788B0(a1 + *(v9 + 32), v8);
  }

  else
  {
    sub_19083B788(v4, v8);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v12 = *v8;
    v11 = sub_190978100(*v8);
  }

  else if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 5)
  {
    sub_190978914(v8);
    v11 = 1;
  }

  else
  {
    sub_190978914(v8);
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1909788B0(uint64_t a1, uint64_t a2)
{
  v4 = _s17BackgroundContentOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190978914(uint64_t a1)
{
  v2 = _s17BackgroundContentOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1909789A4()
{
  result = qword_1EAD583C0;
  if (!qword_1EAD583C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD583C0);
  }

  return result;
}

unint64_t sub_1909789FC()
{
  result = qword_1EAD583C8;
  if (!qword_1EAD583C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD583C8);
  }

  return result;
}

unint64_t sub_190978A54()
{
  result = qword_1EAD583D0;
  if (!qword_1EAD583D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD583D0);
  }

  return result;
}

id sub_190978AE8()
{
  _s23ImagePlaygroundIconViewCMa();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_190978B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19097947C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190978B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19097947C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190978BEC(uint64_t a1)
{
  sub_19097947C();
  sub_190D54C10();
  __break(1u);
}

id sub_190978CE8(void *a1)
{
  v3 = OBJC_IVAR____TtCV7ChatKit7GalleryP33_F9FFDDFCD3D97E162E1C88AA3426E03A23ImagePlaygroundIconView_imagePlaygroundIconImageView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v4 = OBJC_IVAR____TtCV7ChatKit7GalleryP33_F9FFDDFCD3D97E162E1C88AA3426E03A23ImagePlaygroundIconView_imagePlaygroundBackgroundImageView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v9.receiver = v1;
  v9.super_class = _s23ImagePlaygroundIconViewCMa();
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_190978DC8();
  }

  return v6;
}

void sub_190978DC8()
{
  v1 = objc_opt_self();
  v2 = sub_190D56ED0();
  v3 = [v1 ckImageNamed_];

  v4 = *&v0[OBJC_IVAR____TtCV7ChatKit7GalleryP33_F9FFDDFCD3D97E162E1C88AA3426E03A23ImagePlaygroundIconView_imagePlaygroundBackgroundImageView];
  [v4 setImage_];
  [v4 setContentMode_];
  [v0 addSubview_];
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  v6 = [objc_opt_self() configurationWithFont:v5 scale:3];
  v7 = sub_190D56ED0();
  v10 = [v1 _systemImageNamed_withConfiguration_];

  v8 = *&v0[OBJC_IVAR____TtCV7ChatKit7GalleryP33_F9FFDDFCD3D97E162E1C88AA3426E03A23ImagePlaygroundIconView_imagePlaygroundIconImageView];
  [v8 setImage_];
  v9 = [objc_opt_self() whiteColor];
  [v8 setTintColor_];

  [v0 addSubview_];
}

void sub_190978FE4()
{
  v10.receiver = v0;
  v10.super_class = _s23ImagePlaygroundIconViewCMa();
  objc_msgSendSuper2(&v10, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    v2 = sub_190D56ED0();
    v3 = [objc_opt_self() animationWithKeyPath_];

    v4 = sub_190D51C70();
    [v3 setFromValue_];

    v5 = sub_190D51C70();
    [v3 setToValue_];

    v6 = v3;
    [v6 setDuration_];
    LODWORD(v7) = 2139095040;
    [v6 setRepeatCount_];

    v8 = [*&v0[OBJC_IVAR____TtCV7ChatKit7GalleryP33_F9FFDDFCD3D97E162E1C88AA3426E03A23ImagePlaygroundIconView_imagePlaygroundBackgroundImageView] layer];
    v9 = sub_190D56ED0();
    [v8 addAnimation:v6 forKey:v9];
  }

  else
  {
    v9 = [*&v0[OBJC_IVAR____TtCV7ChatKit7GalleryP33_F9FFDDFCD3D97E162E1C88AA3426E03A23ImagePlaygroundIconView_imagePlaygroundBackgroundImageView] layer];
    [v9 removeAllAnimations];
  }
}

id sub_190979200()
{
  v16.receiver = v0;
  v16.super_class = _s23ImagePlaygroundIconViewCMa();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v5 * 0.5;
  v10 = v7 * 0.5;
  v11 = *&v0[OBJC_IVAR____TtCV7ChatKit7GalleryP33_F9FFDDFCD3D97E162E1C88AA3426E03A23ImagePlaygroundIconView_imagePlaygroundIconImageView];
  [v11 sizeThatFits_];
  [v11 setBounds_];
  [v11 setCenter_];
  v14 = *&v0[OBJC_IVAR____TtCV7ChatKit7GalleryP33_F9FFDDFCD3D97E162E1C88AA3426E03A23ImagePlaygroundIconView_imagePlaygroundBackgroundImageView];
  [v14 setBounds_];
  return [v14 setCenter_];
}

id sub_19097936C()
{
  v2.receiver = v0;
  v2.super_class = _s23ImagePlaygroundIconViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_190979428()
{
  result = qword_1EAD583E8;
  if (!qword_1EAD583E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD583E8);
  }

  return result;
}

unint64_t sub_19097947C()
{
  result = qword_1EAD583F0;
  if (!qword_1EAD583F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD583F0);
  }

  return result;
}

void sub_1909794D0()
{
  v9 = MEMORY[0x1E69E7CC0];
  v1 = [v0 assets];
  sub_19097965C();
  v2 = sub_190D57180();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:

    return;
  }

  v3 = sub_190D581C0();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x193AF3B90](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      v7 = PXMessagesShareSheetItemProviderForAsset();
      if (v7)
      {
        v8 = v7;
        MEMORY[0x193AF29E0]();
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();
      }

      else
      {
      }
    }

    goto LABEL_15;
  }

  __break(1u);
}

unint64_t sub_19097965C()
{
  result = qword_1EAD583F8;
  if (!qword_1EAD583F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD583F8);
  }

  return result;
}

id sub_1909796A8(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  v4 = [objc_opt_self() configurationWithFont:v3 scale:3];
  v5 = sub_190D56ED0();
  v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  v7 = _s17SlideshowTileViewCMa();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_visibleImageViews] = MEMORY[0x1E69E7CC0];
  *&v8[OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_currentImageIndex] = 0;
  *&v8[OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_badgeIconImageView] = 0;
  *&v8[OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_images] = a2;
  v9 = &v8[OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_configuration];
  *v9 = 0x4014000000000000;
  *(v9 + 1) = v6;
  v13.receiver = v8;
  v13.super_class = v7;
  v10 = v6;
  sub_190D52690();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1909799C8();

  return v11;
}

uint64_t sub_190979850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19097B514();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1909798B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19097B514();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190979918(uint64_t a1)
{
  sub_19097B514();
  sub_190D54C10();
  __break(1u);
}

void sub_1909799C8()
{
  v5 = *&v0[OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_images];
  if (!(v5 >> 62))
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    goto LABEL_3;
  }

  if (v5 < 0)
  {
    v8 = *&v0[OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_images];
  }

  else
  {
    v8 = (v5 & 0xFFFFFFFFFFFFFF8);
  }

  if (sub_190D581C0())
  {
    v23 = sub_190D581C0();
    if (v23 < 0)
    {
      goto LABEL_22;
    }

    if (!v23)
    {
      __break(1u);
      goto LABEL_19;
    }

LABEL_3:
    v6 = sub_190B93088();
    v7 = OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_currentImageIndex;
    *&v0[OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_currentImageIndex] = v6;
    v1 = _s18BlurrableImageViewCMa();
    v3 = &selRef_indexDomainForResult_;
    v8 = [objc_allocWithZone(v1) initWithFrame_];
    v4 = &selRef_setBlurredEmojiLayer_;
    [v8 setContentMode_];
    v2 = *&v0[v7];
    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v2 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v9 = *(v5 + 8 * v2 + 32);
        v10 = v8;
        v11 = v9;
LABEL_7:
        v12 = v11;
        [v8 setImage_];

        [v0 addSubview_];
        v13 = [objc_allocWithZone(v1) v3[308]];
        [v13 v4[313]];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_190DD5CE0;
        *(v14 + 32) = v8;
        *(v14 + 40) = v13;
        v15 = OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_visibleImageViews;
        swift_beginAccess();
        *&v0[v15] = v14;
        v16 = v8;
        v17 = v13;

        sub_190979ED4();
        v18 = *&v0[OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_configuration + 8];
        if (v18)
        {
          v19 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
          v20 = v18;
          v21 = [v19 init];
          [v21 setImage_];
          v22 = [objc_opt_self() whiteColor];
          [v21 setTintColor_];

          [v0 addSubview_];
          v17 = *&v0[OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_badgeIconImageView];
          *&v0[OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_badgeIconImageView] = v21;
        }

        else
        {
        }

        return;
      }

      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

LABEL_19:
    v24 = v8;
    v11 = MEMORY[0x193AF3B90](v2, v5);
    goto LABEL_7;
  }
}

void sub_190979C90()
{
  v26.receiver = v0;
  v26.super_class = _s17SlideshowTileViewCMa();
  objc_msgSendSuper2(&v26, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_visibleImageViews;
  swift_beginAccess();
  v10 = *&v0[v9];
  if (v10 >> 62)
  {
    v11 = sub_190D581C0();
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
    return;
  }

  sub_190D52690();
  v12 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x193AF3B90](v12, v10);
    }

    else
    {
      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    ++v12;
    [v13 setBounds_];
    [v14 setCenter_];
  }

  while (v11 != v12);

LABEL_10:
  v15 = OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_badgeIconImageView;
  v16 = *&v0[OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_badgeIconImageView];
  if (v16)
  {
    v17 = v16;
    [v17 sizeThatFits_];
    v20 = *&v0[v15];
    if (v20)
    {
      v21 = v8 - v19 + -12.0;
      v22 = v6 - v18 + -12.0;
      v23 = v18;
      v24 = v19;
      v25 = v20;
      [v25 setFrame_];
    }
  }
}

uint64_t sub_190979ED4()
{
  v0 = sub_190D56770();
  v22 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_190D567A0();
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D567F0();
  v19 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  sub_1902188FC(0, &qword_1EAD46670, 0x1E69E9610);
  v13 = sub_190D57870();
  sub_190D567B0();
  sub_190D56820();
  v18 = *(v7 + 8);
  v18(v9, v6);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_19097B4A4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_54_0;
  v15 = _Block_copy(aBlock);

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0, &unk_190DD6E80);
  sub_190840E08();
  sub_190D58170();
  MEMORY[0x193AF30E0](v12, v5, v2, v15);
  _Block_release(v15);

  (*(v22 + 8))(v2, v0);
  (*(v20 + 8))(v5, v21);
  return (v18)(v12, v19);
}

void sub_19097A264(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_19097A2B8();
  }
}

void sub_19097A2B8()
{
  v4 = OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_currentImageIndex;
  v5 = *(v1 + OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_currentImageIndex);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v0 = v1;
    v1 = *(v1 + OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_images);
    if (!(v1 >> 62))
    {
      v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      v9 = MEMORY[0x193AF3B90](v6, v1);
      goto LABEL_12;
    }
  }

  v7 = sub_190D581C0();
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v6 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_44;
  }

  v6 %= v7;
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_20;
  }

  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_38;
  }

  v9 = v1[v6 + 4];
LABEL_12:
  v3 = v9;
  *&v4[v0] = v6;
  v6 = OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_visibleImageViews;
  swift_beginAccess();
  v1 = *(v0 + v6);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      if ((v1 & 0xC000000000000001) != 0)
      {
        goto LABEL_42;
      }

      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = v1[4];
        goto LABEL_24;
      }

      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    goto LABEL_23;
  }

LABEL_22:
  if (sub_190D581C0())
  {
    goto LABEL_14;
  }

LABEL_23:
  v4 = 0;
  while (1)
  {
LABEL_24:
    swift_beginAccess();
    v10 = *(v0 + v6);
    if (v10 >> 62)
    {
LABEL_38:
      if (!sub_190D581C0())
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_39;
    }

    v11 = sub_19097B3D8();
    if (!v11)
    {
      v12 = *(v0 + v6);
      if (v12 >> 62)
      {
LABEL_45:
        v57 = sub_190D581C0();
        v14 = __OFSUB__(v57, 1);
        v15 = v57 - 1;
        if (v14)
        {
LABEL_47:
          __break(1u);
          return;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = __OFSUB__(v13, 1);
        v15 = v13 - 1;
        if (v14)
        {
          goto LABEL_47;
        }
      }

      v11 = sub_190A0DBB8(v15);
    }

    v16 = v11;
    swift_endAccess();
    [v16 setImage_];
    v1 = v16;
    [v0 addSubview_];
    v2 = &selRef_beginGeneratingForKey_;
    [v0 bringSubviewToFront_];
    swift_beginAccess();
    if (!(*(v0 + v6) >> 62))
    {
      break;
    }

LABEL_40:
    if ((sub_190D581C0() & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_42:
    sub_190D52690();
    v4 = MEMORY[0x193AF3B90](0, v1);
  }

  v60 = v3;
  v17 = v1;
  sub_190A0F1A8(0, 0, v17);
  swift_endAccess();

  if (*(v0 + OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_badgeIconImageView))
  {
    [v0 v2[160]];
  }

  [v0 setNeedsLayout];
  [v0 layoutIfNeeded];
  [v17 setAlpha_];

  v18 = [v17 layer];
  v19 = sub_190D51C70();
  v20 = sub_190D56ED0();
  [v18 setValue:v19 forKeyPath:v20];

  v21 = [v17 layer];
  v22 = sub_190D51C70();
  v23 = sub_190D56ED0();
  [v21 setValue:v22 forKeyPath:v23];

  v24 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:27.41557 damping:10.47198 initialVelocity:{0.0, 0.0}];
  v25 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v24 timingParameters:0.0];

  v26 = swift_allocObject();
  *(v26 + 16) = v17;
  v65 = sub_19085EA24;
  v66 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_190840E6C;
  v64 = &block_descriptor_46;
  v27 = _Block_copy(&aBlock);
  v28 = v17;

  [v25 addAnimations_];
  _Block_release(v27);
  [v25 startAnimation];
  v29 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:9.8696 damping:6.28319 initialVelocity:{0.0, 0.0}];
  v30 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v29 timingParameters:0.0];

  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  v65 = sub_19085EA38;
  v66 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_190840E6C;
  v64 = &block_descriptor_24_0;
  v32 = _Block_copy(&aBlock);
  v33 = v28;

  [v30 addAnimations_];
  _Block_release(v32);
  v59 = v30;
  [v30 startAnimation];
  v34 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:0.39478 damping:0.87965 initialVelocity:{0.0, 0.0}];
  v35 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v34 timingParameters:0.0];

  v36 = swift_allocObject();
  *(v36 + 16) = v33;
  v65 = sub_19097B43C;
  v66 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_190840E6C;
  v64 = &block_descriptor_30_0;
  v37 = _Block_copy(&aBlock);
  v38 = v33;

  [v35 addAnimations_];
  _Block_release(v37);
  [v35 startAnimation];
  if (v4)
  {
    v39 = objc_allocWithZone(MEMORY[0x1E69DCF88]);
    v40 = v4;
    v41 = [v39 initWithMass:1.0 stiffness:39.47842 damping:12.56637 initialVelocity:{0.0, 0.0}];
    v42 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v41 timingParameters:0.0];

    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    v65 = sub_19097B460;
    v66 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_190840E6C;
    v64 = &block_descriptor_36_2;
    v44 = _Block_copy(&aBlock);
    v45 = v40;

    v58 = v42;
    [v42 addAnimations_];
    _Block_release(v44);
    [v42 startAnimation];
    v46 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:2.4674 damping:3.14159 initialVelocity:{0.0, 0.0}];
    v47 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v46 timingParameters:0.0];

    v48 = swift_allocObject();
    *(v48 + 16) = v45;
    v65 = sub_19097B480;
    v66 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_190840E6C;
    v64 = &block_descriptor_42_0;
    v49 = _Block_copy(&aBlock);
    v50 = v45;

    [v47 addAnimations_];
    _Block_release(v49);
    [v47 startAnimation];
    v51 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:3947.84 damping:125.664 initialVelocity:{0.0, 0.0}];
    v52 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v51 timingParameters:0.0];

    v53 = swift_allocObject();
    *(v53 + 16) = v50;
    v65 = sub_19085EA58;
    v66 = v53;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_190840E6C;
    v64 = &block_descriptor_48;
    v54 = _Block_copy(&aBlock);
    v55 = v50;

    [v52 addAnimations_];
    _Block_release(v54);
    [v52 startAnimationAfterDelay_];
    sub_190979ED4();

    v56 = v55;
    v38 = v55;
    v25 = v58;
    v35 = v52;
  }

  else
  {
    v56 = v60;
    v47 = v59;
  }
}

void sub_19097AD94(uint64_t a1, void *a2, double a3)
{
  if (a3 == 0.0)
  {
    a3 = 0.0;
  }

  MEMORY[0x193AF4130](*&a3);
  if (a2)
  {
    sub_190D58890();
    v4 = a2;
    sub_190D57DA0();
  }

  else
  {
    sub_190D58890();
  }
}

uint64_t sub_19097AE24(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (v3)
    {
      sub_1902188FC(0, &qword_1EAD44EB0, 0x1E69DCAB8);
      v4 = v3;
      v5 = v2;
      v6 = sub_190D57D90();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_19097AEC8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_190D58870();
  sub_19097AD94(v4, v2, v1);
  return sub_190D588C0();
}

uint64_t sub_19097AF2C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  sub_190D58870();
  sub_19097AD94(v5, v3, v2);
  return sub_190D588C0();
}

uint64_t sub_19097B168(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD000000000000020 && 0x8000000190E5F000 == a2 || (sub_190D58760() & 1) != 0)
    {
      return 1;
    }

    v4 = sub_190D56ED0();
  }

  else
  {
    v4 = 0;
  }

  v6.receiver = v2;
  v6.super_class = _s18BlurrableImageViewCMa();
  v5 = objc_msgSendSuper2(&v6, sel__shouldAnimatePropertyWithKey_, v4);

  return v5;
}

id sub_19097B314(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_19097B384()
{
  result = qword_1EAD58428;
  if (!qword_1EAD58428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58428);
  }

  return result;
}

uint64_t sub_19097B3D8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_190A5E100();
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_19097B4C0()
{
  result = qword_1EAD58430;
  if (!qword_1EAD58430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58430);
  }

  return result;
}

unint64_t sub_19097B514()
{
  result = qword_1EAD58438;
  if (!qword_1EAD58438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58438);
  }

  return result;
}

uint64_t sub_19097B598()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DBD8);
  __swift_project_value_buffer(v0, qword_1EAD9DBD8);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_19097B604()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DBF0);
  __swift_project_value_buffer(v0, qword_1EAD9DBF0);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_19097B670()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DC08);
  __swift_project_value_buffer(v0, qword_1EAD9DC08);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_19097B6DC()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DC20);
  __swift_project_value_buffer(v0, qword_1EAD9DC20);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_19097B748()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DC38);
  __swift_project_value_buffer(v0, qword_1EAD9DC38);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_19097B7B4()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DC50);
  __swift_project_value_buffer(v0, qword_1EAD9DC50);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_19097B820@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v21 = sub_190D51840();
  v1 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D51AE0();
  v19 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_190D51B00();
  v8 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0, &unk_190DE0210);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - v12;
  sub_190D51AC0();
  (*(v5 + 104))(v7, *MEMORY[0x1E6969A88], v4);
  v14 = sub_190D56ED0();
  v15 = sub_190D56ED0();
  IMGetCachedDomainIntForKeyWithDefaultValue();

  sub_190D517F0();
  v16 = v21;
  sub_190D51AA0();
  (*(v1 + 8))(v3, v16);
  (*(v5 + 8))(v7, v19);
  (*(v8 + 8))(v10, v20);
  result = (*(v1 + 48))(v13, 1, v16);
  if (result != 1)
  {
    return (*(v1 + 32))(v18, v13, v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_19097BB68@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v24 = sub_190D51840();
  v1 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_190D51AE0();
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_190D51B00();
  v7 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0, &unk_190DE0210);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = [objc_opt_self() sharedInstanceForBagType_];
  v14 = sub_190D56ED0();
  v15 = [v13 objectForKey_];

  if (v15)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28[0] = v26;
  v28[1] = v27;
  if (*(&v27 + 1))
  {
    sub_19021DC70();
    if (swift_dynamicCast())
    {
      v16 = v25;
      [v25 integerValue];
    }
  }

  else
  {
    sub_19021E7D8(v28);
  }

  sub_190D51AC0();
  v17 = v23;
  (*(v4 + 104))(v6, *MEMORY[0x1E6969A48], v23);
  sub_190D517F0();
  sub_190D51AA0();
  v18 = v24;
  (*(v1 + 8))(v3, v24);
  (*(v4 + 8))(v6, v17);
  (*(v7 + 8))(v9, v22);
  result = (*(v1 + 48))(v12, 1, v18);
  if (result != 1)
  {
    return (*(v1 + 32))(v21, v12, v18);
  }

  __break(1u);
  return result;
}

void *sub_19097BF6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

double sub_19097C0BC(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_19097C11C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___CKSendMenuViewController_sendMenuViewControllerDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

char *sub_19097C1B4()
{
  v1 = OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView;
  v2 = *(v0 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView);
  }

  else
  {
    v4 = sub_19097C334();
    v5 = [objc_allocWithZone(type metadata accessor for SendMenuCollectionView()) initWithFrame:v4 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    v6 = &v5[OBJC_IVAR____TtC7ChatKit22SendMenuCollectionView_sendMenuCollectionViewDelegate];
    swift_beginAccess();
    *(v6 + 1) = &protocol witness table for SendMenuViewController;
    swift_unknownObjectWeakAssign();
    [v5 setContentInsetAdjustmentBehavior_];
    [v5 setDelegate_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_19097C2C0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView);
  *(v1 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView) = a1;
}

void (*sub_19097C2D4(char **a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_19097C1B4();
  return sub_19097C31C;
}

void sub_19097C31C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView);
  *(v1 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView) = v2;
}

id sub_19097C334()
{
  v1 = OBJC_IVAR___CKSendMenuViewController____lazy_storage___collectionViewLayout;
  v2 = *&v0[OBJC_IVAR___CKSendMenuViewController____lazy_storage___collectionViewLayout];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___CKSendMenuViewController____lazy_storage___collectionViewLayout];
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for SendMenuCollectionViewLayout());
    v5 = sub_190983D38(v0, v4);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_19097C3AC()
{
  v1 = OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuDataSource;
  v2 = *(v0 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuDataSource);
  }

  else
  {
    v4 = sub_19097C1B4();
    v5 = sub_190A02064(v4);

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_19097C424()
{
  v1 = OBJC_IVAR___CKSendMenuViewController____lazy_storage___backdropView;
  v2 = *(v0 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___backdropView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___backdropView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_19097C498()
{
  v1 = OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuParentView;
  v2 = *(v0 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuParentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuParentView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SendMenuParentView()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

double sub_19097C50C()
{
  v1 = v0 + OBJC_IVAR___CKSendMenuViewController_reorderGestureDragPointOffsetFromCellCenter;
  swift_beginAccess();
  return *v1;
}

void sub_19097C554(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___CKSendMenuViewController_reorderGestureDragPointOffsetFromCellCenter);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_19097C654()
{
  v1 = OBJC_IVAR___CKSendMenuViewController_isPresentingAudioRecordingQuickSend;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_19097C6EC(char a1)
{
  v3 = OBJC_IVAR___CKSendMenuViewController_isPresentingAudioRecordingQuickSend;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id SendMenuViewController.init(presentationContext:)(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR___CKSendMenuViewController_contentProvider];
  v4 = type metadata accessor for SendMenuViewControllerContentProvider();
  v5 = swift_allocObject();
  *(v5 + 16) = [objc_opt_self() createNetworkMonitorWithRemoteHost:0 delegate:0 allowsUltraConstrainedNetwork:1];
  v3[3] = v4;
  v3[4] = &protocol witness table for SendMenuViewControllerContentProvider;
  *v3 = v5;
  v1[OBJC_IVAR___CKSendMenuViewController_hasPerformedInitialContentAppearance] = 0;
  v6 = OBJC_IVAR___CKSendMenuViewController_activeDismissAnimationIdentifier;
  v7 = sub_190D518A0();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR___CKSendMenuViewController_sendMenuListItems;
  v9 = MEMORY[0x1E69E7CC0];
  *&v1[v8] = sub_19082256C(MEMORY[0x1E69E7CC0]);
  v10 = &v1[OBJC_IVAR___CKSendMenuViewController_sendMenuCellReuseIdentifier];
  strcpy(&v1[OBJC_IVAR___CKSendMenuViewController_sendMenuCellReuseIdentifier], "SendMenuCell");
  v10[13] = 0;
  *(v10 + 7) = -5120;
  *&v1[OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView] = 0;
  *&v1[OBJC_IVAR___CKSendMenuViewController____lazy_storage___collectionViewLayout] = 0;
  *&v1[OBJC_IVAR___CKSendMenuViewController_collectionViewDismissingLayout] = 0;
  *&v1[OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuDataSource] = 0;
  *&v1[OBJC_IVAR___CKSendMenuViewController____lazy_storage___backdropView] = 0;
  *&v1[OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuParentView] = 0;
  *&v1[OBJC_IVAR___CKSendMenuViewController_plusButtonPortalView] = 0;
  v11 = &v1[OBJC_IVAR___CKSendMenuViewController_reorderGestureDragPointOffsetFromCellCenter];
  *v11 = 0;
  v11[1] = 0;
  v1[OBJC_IVAR___CKSendMenuViewController_isPresentingAudioRecordingQuickSend] = 0;
  v12 = &v1[OBJC_IVAR___CKSendMenuViewController_collapsedMenuOrigin];
  *v12 = 0u;
  v12[1] = 0u;
  *&v1[OBJC_IVAR___CKSendMenuViewController_collectionViewTopConstraint] = 0;
  *&v1[OBJC_IVAR___CKSendMenuViewController_collectionViewBottomConstraint] = 0;
  v13 = &v1[OBJC_IVAR___CKSendMenuViewController____lazy_storage___plusButtonIdealPositionAvoidanceHeight];
  *v13 = 0;
  v13[8] = 1;
  v1[OBJC_IVAR___CKSendMenuViewController_plusButtonPortalViewShouldUserIdealFrame] = 0;
  v1[OBJC_IVAR___CKSendMenuViewController_plusButtonPortalViewShouldUsePlusLFilter] = 0;
  v14 = &v1[OBJC_IVAR___CKSendMenuViewController_sendMenuAutoScrollInsets];
  v15 = *(MEMORY[0x1E69DDCE0] + 16);
  *v14 = *MEMORY[0x1E69DDCE0];
  v14[1] = v15;
  v1[OBJC_IVAR___CKSendMenuViewController_isAppearanceAnimationActive] = 0;
  v1[OBJC_IVAR___CKSendMenuViewController_isInitialAppearanceAnimationActive] = 0;
  *&v1[OBJC_IVAR___CKSendMenuViewController_indexPathsToCollapseIntoPlusButton] = v9;
  *&v1[OBJC_IVAR___CKSendMenuViewController_presentationContext] = a1;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for SendMenuViewController(0);
  return objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
}

void sub_19097CB1C()
{
  v95.receiver = v0;
  v95.super_class = type metadata accessor for SendMenuViewController(0);
  objc_msgSendSuper2(&v95, sel_viewDidLoad);
  v94 = objc_opt_self();
  v1 = [v94 sharedFeatureFlags];
  v2 = [v1 isPopoverSendMenuEnabled];

  v3 = &selRef_beginGeneratingForKey_;
  if ((v2 & 1) == 0)
  {
    v4 = sub_19097C424();
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    v5 = [v0 view];
    if (!v5)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v6 = v5;
    v7 = OBJC_IVAR___CKSendMenuViewController____lazy_storage___backdropView;
    [v5 addSubview_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_190DD86A0;
    v9 = [*&v0[v7] topAnchor];
    v10 = [v0 view];
    if (!v10)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v11 = v10;
    v12 = [v10 topAnchor];

    v13 = [v9 constraintEqualToAnchor_];
    *(v8 + 32) = v13;
    v14 = [*&v0[v7] bottomAnchor];
    v15 = [v0 view];
    if (!v15)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v16 = v15;
    v17 = [v15 bottomAnchor];

    v18 = [v14 constraintEqualToAnchor_];
    *(v8 + 40) = v18;
    v19 = [*&v0[v7] leadingAnchor];
    v20 = [v0 view];
    if (!v20)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v21 = v20;
    v22 = [v20 leadingAnchor];

    v23 = [v19 constraintEqualToAnchor_];
    *(v8 + 48) = v23;
    v24 = [*&v0[v7] trailingAnchor];
    v25 = [v0 view];
    if (!v25)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v26 = v25;
    v27 = objc_opt_self();
    v28 = [v26 trailingAnchor];

    v29 = [v24 constraintEqualToAnchor_];
    *(v8 + 56) = v29;
    sub_1902188FC(0, &qword_1EAD45040, 0x1E696ACD8);
    v30 = sub_190D57160();

    [v27 activateConstraints_];

    v31 = [*&v0[OBJC_IVAR___CKSendMenuViewController_presentationContext] viewToPortal];
    v3 = 0x1FBB20000;
    if (v31)
    {
      v32 = v31;
      v33 = [objc_allocWithZone(MEMORY[0x1E69DD648]) initWithSourceView_];
      [v33 setHidesSourceView_];
      [v33 setMatchesPosition_];
      [v33 setMatchesTransform_];
      v34 = *&v0[OBJC_IVAR___CKSendMenuViewController_plusButtonPortalView];
      *&v0[OBJC_IVAR___CKSendMenuViewController_plusButtonPortalView] = v33;
      v35 = v33;

      [v35 &selRef:1 setSubtitleView:? + 2];
      v36 = [v0 view];
      if (!v36)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v37 = v36;
      [v36 addSubview_];
    }
  }

  v38 = v3;
  v39 = sub_19097C1B4();
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];

  v40 = [v0 view];
  if (!v40)
  {
    __break(1u);
    goto LABEL_21;
  }

  v41 = v40;
  v42 = OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView;
  [v40 addSubview_];

  v43 = *&v0[v42];
  v44 = objc_opt_self();
  v45 = v43;
  v46 = [v44 clearColor];
  [v45 setBackgroundColor_];

  [*&v0[v42] setShowsVerticalScrollIndicator_];
  [*&v0[v42] setShowsHorizontalScrollIndicator_];
  [*&v0[v42] setDelaysContentTouches_];
  v47 = [*&v0[v42] topAnchor];
  v48 = [v0 view];
  if (!v48)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v49 = v48;
  v50 = [v48 topAnchor];

  v51 = [v47 &selRef_conversationListPinnedConversationPreviewFontSizeOverrideStandard + 5];
  v52 = OBJC_IVAR___CKSendMenuViewController_collectionViewTopConstraint;
  v53 = *&v0[OBJC_IVAR___CKSendMenuViewController_collectionViewTopConstraint];
  *&v0[OBJC_IVAR___CKSendMenuViewController_collectionViewTopConstraint] = v51;

  v54 = [*&v0[v42] v38 + 3365];
  v55 = [v0 view];
  if (!v55)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v56 = v55;
  v57 = [v55 v38 + 3365];

  v58 = [v54 &selRef_conversationListPinnedConversationPreviewFontSizeOverrideStandard + 5];
  v59 = OBJC_IVAR___CKSendMenuViewController_collectionViewBottomConstraint;
  v60 = *&v0[OBJC_IVAR___CKSendMenuViewController_collectionViewBottomConstraint];
  *&v0[OBJC_IVAR___CKSendMenuViewController_collectionViewBottomConstraint] = v58;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_190DD86A0;
  v62 = *&v0[v59];
  if (!v62)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v63 = v61;
  *(v61 + 32) = v62;
  v64 = *&v0[v52];
  if (!v64)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v61 + 40) = v64;
  v65 = *&v0[v42];
  v66 = v64;
  v67 = v62;
  v68 = [v65 leadingAnchor];
  v69 = [v0 &selRef_usesUncollapsedSplitview];
  if (!v69)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v70 = v69;
  v71 = [v69 leadingAnchor];

  v72 = [v68 &selRef_conversationListPinnedConversationPreviewFontSizeOverrideStandard + 5];
  *(v63 + 48) = v72;
  v73 = [*&v0[v42] trailingAnchor];
  v74 = [v0 &selRef_usesUncollapsedSplitview];
  if (!v74)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v75 = v74;
  v76 = objc_opt_self();
  v77 = [v75 trailingAnchor];

  v78 = [v73 &selRef_conversationListPinnedConversationPreviewFontSizeOverrideStandard + 5];
  *(v63 + 56) = v78;
  sub_1902188FC(0, &qword_1EAD45040, 0x1E696ACD8);
  v79 = sub_190D57160();

  [v76 activateConstraints_];

  v80 = *&v0[v42];
  type metadata accessor for SendMenuCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v82 = v80;
  v83 = sub_190D56ED0();
  [v82 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v83];

  v84 = *&v0[v42];
  v85 = sub_19097C3AC();
  [v84 setDataSource_];

  sub_190A0221C();
  v86 = [objc_opt_self() defaultCenter];
  [v86 addObserver:v0 selector:sel_pluginIconUpdatedWithNotification_ name:*MEMORY[0x1E69A56D0] object:0];

  v87 = [v94 sharedFeatureFlags];
  LOBYTE(v86) = [v87 isPopoverSendMenuEnabled];

  if ((v86 & 1) == 0)
  {
    v88 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v89 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_collectionViewBackgroundTapped_];
    [v88 addGestureRecognizer_];
    [*&v0[v42] setBackgroundView_];
  }

  v90 = [objc_allocWithZone(MEMORY[0x1E69DCC48]) initWithTarget:v0 action:sel__handleReorderingGesture_];
  [*&v0[v42] addGestureRecognizer_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50, &unk_190DD5F90);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_190DD1D90;
  v92 = sub_190D53270();
  v93 = MEMORY[0x1E69DC0F8];
  *(v91 + 32) = v92;
  *(v91 + 40) = v93;
  sub_190D57810();
  swift_unknownObjectRelease();
}

void sub_19097D58C(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_19097D630(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SendMenuViewController(0);
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1 & 1);
  v3 = [*&v1[OBJC_IVAR___CKSendMenuViewController_presentationContext] presentationStyle];
  v4 = [objc_opt_self() sharedFeatureFlags];
  v5 = [v4 isPopoverSendMenuEnabled];

  if ((v5 & 1) == 0)
  {
    if (!v3)
    {
      return;
    }

    if (v3 != 1)
    {
      sub_190D58510();
      __break(1u);
      return;
    }
  }

  if ((v1[OBJC_IVAR___CKSendMenuViewController_hasPerformedInitialContentAppearance] & 1) == 0)
  {
    v1[OBJC_IVAR___CKSendMenuViewController_hasPerformedInitialContentAppearance] = 1;
    sub_19097D8C4(1);
  }
}

double sub_19097D7A4(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SendMenuViewController(0);
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1 & 1);
  if ((v1[OBJC_IVAR___CKSendMenuViewController_hasPerformedInitialContentAppearance] & 1) == 0)
  {
    v1[OBJC_IVAR___CKSendMenuViewController_hasPerformedInitialContentAppearance] = 1;
    sub_19097D8C4(1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong sendMenuDidAppear:v1 presentationStyle:{objc_msgSend(*&v1[OBJC_IVAR___CKSendMenuViewController_presentationContext], sel_presentationStyle)}];
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_19097D8C4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58480, &qword_190DE22B8);
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v12 - v6;
  v8 = [*(v1 + OBJC_IVAR___CKSendMenuViewController_presentationContext) presentationStyle];
  v9 = [objc_opt_self() sharedFeatureFlags];
  v10 = [v9 isPopoverSendMenuEnabled];

  if ((v10 & 1) != 0 || v8 == 1)
  {
    sub_190A03660(1);
    v11 = sub_19097C3AC();
    sub_190D53420();

    (*(v4 + 8))(v7, v3);
  }

  else if (v8)
  {
    sub_190D58510();
    __break(1u);
  }

  else
  {

    sub_19097E1C8(a1 & 1);
  }
}

double sub_19097DAAC()
{
  v1 = &v0[OBJC_IVAR___CKSendMenuViewController____lazy_storage___plusButtonIdealPositionAvoidanceHeight];
  if ((v0[OBJC_IVAR___CKSendMenuViewController____lazy_storage___plusButtonIdealPositionAvoidanceHeight + 8] & 1) == 0)
  {
    return *v1;
  }

  sub_19097DAF4(v0);
  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_19097DAF4(void *a1)
{
  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isPopoverSendMenuEnabled];

  if ((v3 & 1) == 0)
  {
    v4 = [objc_opt_self() currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5)
    {
      v6 = [a1 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v8 = CKNonFlatDeviceOrientation();
      [objc_opt_self() sizeForInterfaceOrientation:v8 inputDelegate:0];
    }
  }
}

void sub_19097DC10()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedFeatureFlags];
  v3 = [v2 isPopoverSendMenuEnabled];

  v4 = 0.0;
  v5 = 0.0;
  if ((v3 & 1) == 0)
  {
    v6 = [v1 sharedFeatureFlags];
    v7 = [v6 isPopoverSendMenuEnabled];

    v8 = 0.0;
    if ((v7 & 1) != 0 || (v9 = *&v0[OBJC_IVAR___CKSendMenuViewController_plusButtonPortalView]) == 0)
    {
      v11 = 0.0;
    }

    else
    {
      v10 = [v9 sourceView];
      v11 = 0.0;
      if (v10)
      {
        v12 = v10;
        [v10 bounds];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = [v0 view];
        [v12 convertRect:v21 toView:{v14, v16, v18, v20}];
        v8 = v22;
        v11 = v23;
        v4 = v24;
        v5 = v25;
      }
    }

    v26 = [v0 view];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 _shouldReverseLayoutDirection];

      if (v28)
      {
        v29 = [v0 view];
        if (!v29)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v30 = v29;
        [v29 bounds];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;

        v51.origin.x = v32;
        v51.origin.y = v34;
        v51.size.width = v36;
        v51.size.height = v38;
        CGRectGetMaxX(v51);
      }

      v49 = v11;
      v50 = v8;
      sub_19097DAAC();
      v39 = [v0 view];
      if (v39)
      {
        v40 = v39;
        [v39 bounds];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;

        v52.origin.x = v42;
        v52.origin.y = v44;
        v52.size.width = v46;
        v52.size.height = v48;
        CGRectGetMaxY(v52);
        v53.origin.x = v50;
        v53.origin.y = v49;
        v53.size.width = v4;
        v53.size.height = v5;
        CGRectGetMaxY(v53);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }
}

void sub_19097DEAC()
{
  v43.receiver = v0;
  v43.super_class = type metadata accessor for SendMenuViewController(0);
  objc_msgSendSuper2(&v43, sel_viewDidLayoutSubviews);
  v1 = objc_opt_self();
  v2 = [v1 sharedFeatureFlags];
  v3 = [v2 isPopoverSendMenuEnabled];

  if ((v3 & 1) == 0)
  {
    v4 = OBJC_IVAR___CKSendMenuViewController_plusButtonPortalView;
    v5 = *&v0[OBJC_IVAR___CKSendMenuViewController_plusButtonPortalView];
    if (v5)
    {
      v6 = OBJC_IVAR___CKSendMenuViewController_plusButtonPortalViewShouldUserIdealFrame;
      v7 = v0[OBJC_IVAR___CKSendMenuViewController_plusButtonPortalViewShouldUserIdealFrame];
      v8 = v5;
      if (v7 == 1)
      {
        sub_19097DC10();
      }

      else
      {
        v13 = [v1 sharedFeatureFlags];
        v14 = [v13 isPopoverSendMenuEnabled];

        v9 = 0.0;
        if ((v14 & 1) != 0 || (v15 = *&v0[v4]) == 0)
        {
          v10 = 0.0;
          v11 = 0.0;
          v12 = 0.0;
        }

        else
        {
          v16 = [v15 sourceView];
          v9 = 0.0;
          v10 = 0.0;
          v11 = 0.0;
          v12 = 0.0;
          if (v16)
          {
            v17 = v16;
            [v16 bounds];
            v19 = v18;
            v21 = v20;
            v23 = v22;
            v25 = v24;
            v26 = [v0 view];
            [v17 convertRect:v26 toView:{v19, v21, v23, v25}];
            v28 = v27;
            v30 = v29;
            v32 = v31;
            v34 = v33;

            v12 = v34;
            v11 = v32;
            v10 = v30;
            v9 = v28;
          }
        }
      }

      [v8 setFrame_];
      v35 = [v0 traitCollection];
      v36 = [v35 userInterfaceStyle];

      if (v36 == 2)
      {
        v37 = v0[v6];
        v38 = v0[OBJC_IVAR___CKSendMenuViewController_plusButtonPortalViewShouldUsePlusLFilter];
        v0[OBJC_IVAR___CKSendMenuViewController_plusButtonPortalViewShouldUsePlusLFilter] = v37;
        if (v37 != v38)
        {
          if (v37)
          {
            v39 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
            v40 = *&v0[v4];
            if (!v40)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }

LABEL_16:
          v39 = 0;
          v40 = *&v0[v4];
          if (!v40)
          {
LABEL_18:

            v8 = v39;
            goto LABEL_19;
          }

LABEL_17:
          v42 = [v40 layer];
          [v42 setCompositingFilter_];

          v8 = v39;
          v39 = v42;
          goto LABEL_18;
        }
      }

      else
      {
        v41 = v0[OBJC_IVAR___CKSendMenuViewController_plusButtonPortalViewShouldUsePlusLFilter];
        v0[OBJC_IVAR___CKSendMenuViewController_plusButtonPortalViewShouldUsePlusLFilter] = 0;
        if (v41)
        {
          goto LABEL_16;
        }
      }

LABEL_19:
    }
  }
}

void sub_19097E1C8(int a1)
{
  v114 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58480, &qword_190DE22B8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v105 - v3;
  v5 = [objc_opt_self() sharedFeatureFlags];
  v6 = [v5 isPopoverSendMenuEnabled];

  if (v6)
  {
    return;
  }

  v7 = [objc_opt_self() sharedBehaviors];
  if (!v7)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v8 = v7;
  v106 = [v7 sendMenuBackdropAnimator];
  if (!v106)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v9 = v107;
  v10 = sub_19097C424();
  v11 = [v8 sendMenuBackdropBackgroundColor];
  if (!v11)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v12 = v11;
  v13 = [v11 colorWithAlphaComponent_];

  [v10 setBackgroundColor_];
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v8;
  v120 = sub_190984E74;
  v121 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_190840E6C;
  v119 = &block_descriptor_181;
  v15 = _Block_copy(&aBlock);
  v105 = v10;
  v115 = v8;

  v16 = v106;
  [v106 addAnimations_];
  _Block_release(v15);
  [v16 startAnimation];
  v17 = OBJC_IVAR___CKSendMenuViewController_isAppearanceAnimationActive;
  swift_beginAccess();
  v9[v17] = 1;
  if (v114)
  {
    v18 = OBJC_IVAR___CKSendMenuViewController_isInitialAppearanceAnimationActive;
    swift_beginAccess();
    v9[v18] = 1;
    sub_190A03660(1);
    v19 = sub_19097C3AC();
    sub_190D53420();

    (*(v2 + 8))(v4, v1);
    v9[v18] = 0;
  }

  else
  {
    v20 = sub_19097C1B4();
    v21 = sub_19097C334();
    [v20 setCollectionViewLayout:v21 animated:1 completion:0];
  }

  v9[v17] = 0;
  v113 = [v115 sendMenuIconBlurAppearanceAnimator];
  if (!v113)
  {
    goto LABEL_80;
  }

  v112 = [v115 sendMenuTextBlurAnimator];
  if (!v112)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v111 = [v115 sendMenuTextBlurAnimator];
  if (!v111)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v22 = sub_19097C1B4();
  v23 = [v22 visibleCells];

  sub_1902188FC(0, &qword_1EAD44FF0, 0x1E69DC7F8);
  v24 = sub_190D57180();

  aBlock = MEMORY[0x1E69E7CC0];
  if (v24 >> 62)
  {
LABEL_29:
    v25 = sub_190D581C0();
    if (v25)
    {
LABEL_13:
      v26 = 0;
      p_aBlock = MEMORY[0x1E69E7CC0];
      do
      {
        v28 = v26;
        while (1)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v29 = MEMORY[0x193AF3B90](v28, v24);
          }

          else
          {
            if (v28 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v29 = *(v24 + 8 * v28 + 32);
          }

          v30 = v29;
          v26 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          type metadata accessor for SendMenuCollectionViewCell();
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v28;
          if (v26 == v25)
          {
            goto LABEL_31;
          }
        }

        MEMORY[0x193AF29E0]();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();
        p_aBlock = aBlock;
      }

      while (v26 != v25);
      goto LABEL_31;
    }
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_13;
    }
  }

  p_aBlock = MEMORY[0x1E69E7CC0];
LABEL_31:

  if (p_aBlock >> 62)
  {
    goto LABEL_67;
  }

  v31 = *((p_aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v31)
  {
    while (v31 >= 1)
    {
      v32 = 0;
      v110 = p_aBlock & 0xC000000000000001;
      v109 = xmmword_190DD1D90;
      v108 = p_aBlock;
      while (1)
      {
        if (v110)
        {
          v43 = MEMORY[0x193AF3B90](v32, p_aBlock);
        }

        else
        {
          v43 = *(p_aBlock + 8 * v32 + 32);
        }

        v44 = v43;
        if (v114)
        {
          [v115 sendMenuAppearAnimationIconBlurInitialRadius];
          v46 = v45;
          v47 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewSendMenuAppearanceAnimationBlurFilterRadius;
          swift_beginAccess();
          *&v44[v47] = v46;
          v48 = 0.0;
          IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
          v50 = 0.0;
          if (!IsReduceTransparencyEnabled)
          {
            v51 = *&v44[v47];
            v52 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeBlurFilterRadius;
            swift_beginAccess();
            v50 = *&v44[v52];
            if (v51 > v50)
            {
              v50 = v51;
            }
          }

          sub_190A18960(v50);
          [v115 sendMenuAppearAnimationTextBlurInitialRadius];
          v54 = v53;
          v55 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelSendMenuAppearanceAnimationBlurFilterRadius;
          swift_beginAccess();
          *&v44[v55] = v54;
          if (!UIAccessibilityIsReduceTransparencyEnabled())
          {
            v48 = *&v44[v55];
            v56 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeBlurFilterRadius;
            swift_beginAccess();
            if (v48 <= *&v44[v56])
            {
              v48 = *&v44[v56];
            }
          }

          sub_190A18960(v48);
          v57 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity;
          swift_beginAccess();
          *&v44[v57] = 0;
          v58 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity;
          swift_beginAccess();
          v59 = *&v44[v58];
          v60 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
          swift_beginAccess();
          v61 = *&v44[v60];
          v62 = fmin(v61, 0.0);
          if (v61 >= v59)
          {
            v61 = v59;
          }

          if (v59 <= 0.0)
          {
            v63 = v61;
          }

          else
          {
            v63 = v62;
          }

          [*&v44[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView] setAlpha_];
          v64 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
          swift_beginAccess();
          v66 = *&v44[v64];
          if (v66)
          {
            *&v65 = v63;
            [v66 setOpacity_];
          }

          v67 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelAppearanceAnimationOpacity;
          swift_beginAccess();
          *&v44[v67] = 0;
          v68 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeOpacity;
          swift_beginAccess();
          v69 = *&v44[v68];
          v70 = *&v44[v60];
          v71 = fmin(v70, 0.0);
          if (v70 >= v69)
          {
            v70 = *&v44[v68];
          }

          if (v69 <= 0.0)
          {
            v72 = v70;
          }

          else
          {
            v72 = v71;
          }

          [*&v44[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel] setAlpha_];
        }

        v73 = *&v44[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconBlurContainerView];
        v74 = *&v73[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount];
        v75 = __OFADD__(v74, 1);
        v76 = v74 + 1;
        if (v75)
        {
          break;
        }

        *&v73[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount] = v76;
        v77 = OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter;
        if ((v73[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter] & 1) == 0)
        {
          v78 = [v73 layer];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90, &qword_190DD63C0);
          v79 = swift_allocObject();
          *(v79 + 16) = v109;
          v80 = sub_190A18658();
          *(v79 + 56) = sub_1902188FC(0, &qword_1ED7769D0, 0x1E6979378);
          *(v79 + 32) = v80;
          v81 = sub_190D57160();

          [v78 setFilters_];

          v73[v77] = 1;
        }

        v82 = swift_allocObject();
        *(v82 + 16) = v44;
        v120 = sub_190984E7C;
        v121 = v82;
        p_aBlock = &aBlock;
        aBlock = MEMORY[0x1E69E9820];
        v117 = 1107296256;
        v118 = sub_190840E6C;
        v119 = &block_descriptor_187;
        v83 = _Block_copy(&aBlock);
        v84 = v44;

        v85 = v113;
        [v113 addAnimations_];
        _Block_release(v83);
        v86 = swift_allocObject();
        *(v86 + 16) = v84;
        v120 = sub_190984FB0;
        v121 = v86;
        aBlock = MEMORY[0x1E69E9820];
        v117 = 1107296256;
        v118 = sub_190893958;
        v119 = &block_descriptor_193;
        v87 = _Block_copy(&aBlock);
        v88 = v84;

        [v85 addCompletion_];
        _Block_release(v87);
        v89 = *&v88[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleBlurContainerView];
        v90 = *&v89[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount];
        v75 = __OFADD__(v90, 1);
        v91 = v90 + 1;
        if (v75)
        {
          goto LABEL_66;
        }

        *&v89[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount] = v91;
        v92 = OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter;
        if ((v89[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter] & 1) == 0)
        {
          v93 = [v89 layer];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90, &qword_190DD63C0);
          v94 = swift_allocObject();
          *(v94 + 16) = v109;
          v95 = sub_190A18658();
          *(v94 + 56) = sub_1902188FC(0, &qword_1ED7769D0, 0x1E6979378);
          *(v94 + 32) = v95;
          v96 = sub_190D57160();

          [v93 setFilters_];

          v89[v92] = 1;
        }

        ++v32;
        v33 = swift_allocObject();
        *(v33 + 16) = v88;
        v120 = sub_190984E84;
        v121 = v33;
        aBlock = MEMORY[0x1E69E9820];
        v117 = 1107296256;
        v118 = sub_190840E6C;
        v119 = &block_descriptor_199;
        v34 = _Block_copy(&aBlock);
        v35 = v88;

        v36 = v112;
        [v112 addAnimations_];
        _Block_release(v34);
        v37 = swift_allocObject();
        *(v37 + 16) = v35;
        v120 = sub_190984FB4;
        v121 = v37;
        aBlock = MEMORY[0x1E69E9820];
        v117 = 1107296256;
        v118 = sub_190893958;
        v119 = &block_descriptor_205;
        v38 = _Block_copy(&aBlock);
        v39 = v35;

        [v36 addCompletion_];
        _Block_release(v38);
        v40 = swift_allocObject();
        *(v40 + 16) = v39;
        v120 = sub_190984E8C;
        v121 = v40;
        aBlock = MEMORY[0x1E69E9820];
        v117 = 1107296256;
        v118 = sub_190840E6C;
        v119 = &block_descriptor_211;
        v41 = _Block_copy(&aBlock);
        v42 = v39;

        [v111 addAnimations_];
        _Block_release(v41);

        p_aBlock = v108;
        if (v31 == v32)
        {
          goto LABEL_68;
        }
      }

      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v31 = sub_190D581C0();
      if (!v31)
      {
        goto LABEL_68;
      }
    }

    __break(1u);
    goto LABEL_77;
  }

LABEL_68:
  v97 = 0.0;
  if (v114)
  {
    [v115 sendMenuTextOpacityAppearanceAnimationDelay];
    v97 = v98;
  }

  [v112 startAnimation];
  [v111 startAnimationAfterDelay_];
  [v113 startAnimation];
  v99 = v107;
  if (*&v107[OBJC_IVAR___CKSendMenuViewController_plusButtonPortalView])
  {
    v100 = [v115 sendMenuPlusButtonPortalViewPositionAnimator];
    if (!v100)
    {
LABEL_83:
      __break(1u);
      return;
    }

    v101 = v100;

    v102 = swift_allocObject();
    *(v102 + 16) = v99;
    v120 = sub_190984E94;
    v121 = v102;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_217;
    v103 = _Block_copy(&aBlock);
    v104 = v99;

    [v101 addAnimations_];
    _Block_release(v103);
    [v101 startAnimation];
  }

  else
  {
  }
}

void sub_19097F094(void *a1, id a2)
{
  v4 = [a2 sendMenuBackdropBackgroundColor];
  [a1 setBackgroundColor_];

  v5 = [a2 sendMenuBackdropBackgroundEffects];
  if (v5)
  {
    v6 = v5;
    [a1 setBackgroundEffects_];
  }

  else
  {
    __break(1u);
  }
}

id sub_19097F148(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewSendMenuAppearanceAnimationBlurFilterRadius;
  swift_beginAccess();
  *(a1 + v2) = 0;
  v3 = 0.0;
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    v3 = *(a1 + v2);
    v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeBlurFilterRadius;
    swift_beginAccess();
    if (v3 <= *(a1 + v4))
    {
      v3 = *(a1 + v4);
    }
  }

  sub_190A18960(v3);
  v5 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity;
  swift_beginAccess();
  *(a1 + v5) = 0x3FF0000000000000;
  v6 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v10 = fmin(v9, 1.0);
  if (v9 >= v7)
  {
    v9 = v7;
  }

  if (v7 <= 1.0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  [*(a1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView) setAlpha_];
  v12 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  swift_beginAccess();
  result = *(a1 + v12);
  if (result)
  {
    *&v13 = v11;
    return [result setOpacity_];
  }

  return result;
}

void sub_19097F2C8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelSendMenuAppearanceAnimationBlurFilterRadius;
  swift_beginAccess();
  *(a1 + v2) = 0;
  v3 = 0.0;
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    v3 = *(a1 + v2);
    v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeBlurFilterRadius;
    swift_beginAccess();
    if (v3 <= *(a1 + v4))
    {
      v3 = *(a1 + v4);
    }
  }

  sub_190A18960(v3);
}

id sub_19097F36C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelAppearanceAnimationOpacity;
  swift_beginAccess();
  *(a1 + v2) = 0x3FF0000000000000;
  v3 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeOpacity;
  swift_beginAccess();
  v4 = *(a1 + v3);
  v5 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = fmin(v6, 1.0);
  if (v6 >= v4)
  {
    v6 = v4;
  }

  if (v4 > 1.0)
  {
    v6 = v7;
  }

  return [*(a1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel) setAlpha_];
}

void sub_19097F43C(_BYTE *a1)
{
  a1[OBJC_IVAR___CKSendMenuViewController_plusButtonPortalViewShouldUserIdealFrame] = 1;
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [a1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

void sub_19097F4EC()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isPopoverSendMenuEnabled];

  if ((v2 & 1) == 0)
  {
    v3 = [*(v0 + OBJC_IVAR___CKSendMenuViewController_presentationContext) anchorView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = sub_19097C1B4();
    [v3 convertRect:v12 toCoordinateSpace:{v5, v7, v9, v11}];
  }
}

double sub_19097F600()
{
  v0 = sub_19097C1B4();
  [v0 safeAreaInsets];
  v2 = v1;

  return v2;
}

double sub_19097F664()
{
  v1 = v0 + OBJC_IVAR___CKSendMenuViewController_sendMenuAutoScrollInsets;
  swift_beginAccess();
  return *v1;
}

void sub_19097F6B0(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR___CKSendMenuViewController_sendMenuAutoScrollInsets);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
}

uint64_t sub_19097F77C()
{
  v1 = OBJC_IVAR___CKSendMenuViewController_isAppearanceAnimationActive;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_19097F7C0(char a1)
{
  v3 = OBJC_IVAR___CKSendMenuViewController_isAppearanceAnimationActive;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_19097F870()
{
  v1 = OBJC_IVAR___CKSendMenuViewController_isInitialAppearanceAnimationActive;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_19097F8B4(char a1)
{
  v3 = OBJC_IVAR___CKSendMenuViewController_isInitialAppearanceAnimationActive;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_19097F964(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKSendMenuViewController_indexPathsToCollapseIntoPlusButton;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_190D52690();

  return result;
}

double sub_19097F9CC()
{
  swift_beginAccess();
  sub_190D52690();
  return result;
}

double sub_19097FA14(uint64_t a1)
{
  v3 = OBJC_IVAR___CKSendMenuViewController_indexPathsToCollapseIntoPlusButton;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_19097FACC()
{
  if (qword_1EAD456D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_1EAD456E0;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 sharedBehaviors];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v4 sendMenuPrototypeCellMaximumWidth];
  v7 = v6;

  LODWORD(v8) = 1112014848;
  LODWORD(v9) = 1112014848;
  [v3 systemLayoutSizeFittingSize:v7 withHorizontalFittingPriority:*(MEMORY[0x1E69DE090] + 8) verticalFittingPriority:{v8, v9}];
  v11 = v10;
  v13 = v12;
  v14 = [v2 sharedBehaviors];
  if (!v14)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 sendMenuPreferredNumberOfItemsToDisplayOnOpen];
  v17 = v13 * v16;
  [v15 sendMenuCollectionViewBottomContentInset];
  v19 = v18;
  v20 = v17 + v18;
  v21 = [objc_opt_self() sharedFeatureFlags];
  v22 = [v21 isPopoverSendMenuEnabled];

  if (v22)
  {
    v23 = v20;
  }

  else
  {
    v23 = v19 + v20;
  }

  [v0 setPreferredContentSize_];
}

void sub_19097FCD4(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 64))(v4, v5);
  v8 = v7;
  v9 = [objc_opt_self() sharedFeatureFlags];
  v10 = [v9 isPopoverSendMenuEnabled];

  if ((v10 & 1) == 0)
  {
    aBlock = v6;
    v29 = v8;
    *&v35[0] = sub_190D56F10();
    *(&v35[0] + 1) = v11;
    sub_19081E484();
    v12 = sub_190D58110();

    v13 = OBJC_IVAR___CKSendMenuViewController_isPresentingAudioRecordingQuickSend;
    swift_beginAccess();
    v2[v13] = v12 & 1;
  }

  sub_19083B854(a1, v35);
  sub_19083B854(v35, v34);
  v14 = swift_allocObject();
  v14[2] = v2;
  sub_19029058C(v35, (v14 + 3));
  v14[8] = v6;
  v14[9] = v8;
  sub_190D52690();
  v15 = v2;
  v16 = sub_190D56ED0();
  v17 = sub_190D56ED0();
  v18 = IMGetCachedDomainBoolForKeyWithDefaultValue();

  if (v18 && (v19 = [objc_opt_self() sharedInstance], v20 = sub_190D56ED0(), v21 = objc_msgSend(v19, sel_viewControllerForPluginIdentifier_dataSource_, v20, 0), v19, v20, v21))
  {
    __swift_destroy_boxed_opaque_existential_0(v34);

    if ([v21 respondsToSelector_])
    {
      v22 = swift_allocObject();
      *(v22 + 16) = sub_190983F60;
      *(v22 + 24) = v14;
      v32 = sub_19089582C;
      v33 = v22;
      aBlock = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v30 = sub_190896518;
      v31 = &block_descriptor_47;
      v23 = _Block_copy(&aBlock);
      v24 = v21;
      sub_190D50920();
      sub_190D50920();

      [v24 loadRemoteViewWithCompletion_];
      _Block_release(v23);
    }

    else
    {
    }
  }

  else
  {
    sub_19099E9B8(v34);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      v27 = sub_190D56ED0();

      [v26 sendMenuViewController:v15 didSelectExtensionIdentifier:v27];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v34);
  }
}

double sub_1909800CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_19099E9B8(a2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_190D56ED0();
    [v7 sendMenuViewController:a1 didSelectExtensionIdentifier:v8];

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_19098016C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460, &qword_190DD8260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_190D518A0();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR___CKSendMenuViewController_activeDismissAnimationIdentifier;
  swift_beginAccess();
  sub_1909842FC(v3, v0 + v5);
  swift_endAccess();
  v6 = sub_19097C498();
  v7 = OBJC_IVAR____TtC7ChatKit18SendMenuParentView_allowsHitTesting;
  swift_beginAccess();
  v6[v7] = 1;

  sub_19097D8C4(0);
}

void sub_1909803CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v160 = a2;
  v159 = a1;
  v163 = sub_190D56770();
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v5 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D567A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v161 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460, &qword_190DD8260);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v142 - v10;
  v12 = sub_190D518A0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v158 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v142 - v16;
  v18 = [objc_opt_self() sharedFeatureFlags];
  v19 = [v18 isPopoverSendMenuEnabled];

  if (v19)
  {
    return;
  }

  sub_190D50450();
  v153 = *(v13 + 16);
  v153(v11, v17, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v20 = OBJC_IVAR___CKSendMenuViewController_activeDismissAnimationIdentifier;
  swift_beginAccess();
  sub_1909842FC(v11, v3 + v20);
  swift_endAccess();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong sendMenuViewControllerWillPerformFullScreenDismissAnimation_];
    swift_unknownObjectRelease();
  }

  v22 = sub_19097C498();
  v23 = OBJC_IVAR____TtC7ChatKit18SendMenuParentView_allowsHitTesting;
  swift_beginAccess();
  v22[v23] = 0;

  v24 = [objc_opt_self() sharedBehaviors];
  if (v24)
  {
    v25 = v24;
    v147 = v13 + 16;
    v156 = v17;
    v148 = v13;
    v149 = v12;
    v150 = v7;
    v151 = v5;
    v152 = v6;
    v26 = dispatch_group_create();
    v27 = [v25 sendMenuBackdropAnimator];
    if (v27)
    {
      v28 = v27;
      v29 = v25;
      v30 = sub_19097C424();
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      v179 = sub_19098436C;
      v180 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v176 = 1107296256;
      v177 = sub_190840E6C;
      v178 = &block_descriptor_11;
      v32 = _Block_copy(&aBlock);
      v146 = v30;

      [v28 addAnimations_];
      _Block_release(v32);
      dispatch_group_enter(v26);
      v33 = swift_allocObject();
      *(v33 + 16) = v26;
      v179 = sub_190851F0C;
      v180 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v176 = 1107296256;
      v177 = sub_190893958;
      v178 = &block_descriptor_17_1;
      v34 = _Block_copy(&aBlock);
      v35 = v26;

      [v28 addCompletion_];
      _Block_release(v34);
      [v28 startAnimation];
      v36 = sub_19097C1B4();
      v37 = [v36 visibleCells];

      sub_1902188FC(0, &qword_1EAD44FF0, 0x1E69DC7F8);
      v38 = sub_190D57180();

      aBlock = MEMORY[0x1E69E7CC0];
      v39 = v38 & 0xFFFFFFFFFFFFFF8;
      if (v38 >> 62)
      {
        goto LABEL_75;
      }

      for (i = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_190D581C0())
      {
        v154 = v28;
        v173 = v29;
        if (i)
        {
          v41 = 0;
          v28 = v38 & 0xC000000000000001;
          v172 = MEMORY[0x1E69E7CC0];
          do
          {
            v42 = v41;
            while (1)
            {
              if (v28)
              {
                v43 = MEMORY[0x193AF3B90](v42, v38);
              }

              else
              {
                if (v42 >= *(v39 + 16))
                {
                  goto LABEL_69;
                }

                v43 = *(v38 + 8 * v42 + 32);
              }

              v29 = v43;
              v41 = v42 + 1;
              if (__OFADD__(v42, 1))
              {
                __break(1u);
LABEL_69:
                __break(1u);
                goto LABEL_70;
              }

              type metadata accessor for SendMenuCollectionViewCell();
              v44 = swift_dynamicCastClass();
              if (v44)
              {
                break;
              }

              ++v42;
              if (v41 == i)
              {
                goto LABEL_24;
              }
            }

            v29 = v44;
            MEMORY[0x193AF29E0]();
            if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v172 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_190D571A0();
            }

            sub_190D571E0();
            v172 = aBlock;
          }

          while (v41 != i);
        }

        else
        {
          v172 = MEMORY[0x1E69E7CC0];
        }

LABEL_24:

        v45 = objc_allocWithZone(type metadata accessor for SendMenuDismissingCollectionViewLayout());
        v29 = v3;
        v46 = sub_190983D38(v29, v45);
        v47 = *(v29 + OBJC_IVAR___CKSendMenuViewController_collectionViewDismissingLayout);
        *(v29 + OBJC_IVAR___CKSendMenuViewController_collectionViewDismissingLayout) = v46;
        v28 = v46;

        v48 = sub_19097C334();
        [v48 collectionViewContentSize];
        v50 = v49;
        v52 = v51;

        v53 = v28 + OBJC_IVAR___CKSendMenuCollectionViewLayout_frozenCollectionViewContentSize;
        *v53 = v50;
        *(v53 + 8) = v52;
        *(v53 + 16) = 0;
        v38 = OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView;
        v54 = [*(v29 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView) indexPathsForVisibleItems];
        sub_190D51C00();
        v55 = sub_190D57180();

        v56 = OBJC_IVAR___CKSendMenuViewController_indexPathsToCollapseIntoPlusButton;
        swift_beginAccess();
        *(v29 + v56) = v55;
        v144 = v55;
        sub_190D52690();

        dispatch_group_enter(v35);
        v57 = *(v29 + v38);
        v58 = swift_allocObject();
        *(v58 + 16) = v35;
        v179 = sub_190851F0C;
        v180 = v58;
        aBlock = MEMORY[0x1E69E9820];
        v176 = 1107296256;
        v177 = sub_190896518;
        v178 = &block_descriptor_23_0;
        v59 = _Block_copy(&aBlock);
        v145 = v35;
        v35 = v57;

        [v35 setCollectionViewLayout:v28 animated:1 completion:v59];
        _Block_release(v59);

        v60 = v173;
        v166 = [v173 sendMenuIconBlurDismissAnimator];
        if (!v166)
        {
          break;
        }

        v165 = [v60 sendMenuTextBlurDismissAnimator];
        if (!v165)
        {
          goto LABEL_82;
        }

        v61 = [*(v29 + v38) visibleCells];
        v3 = sub_190D57180();

        aBlock = MEMORY[0x1E69E7CC0];
        if (v3 >> 62)
        {
          v62 = sub_190D581C0();
        }

        else
        {
          v62 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v39 = MEMORY[0x1E69E7CC0];
        if (!v62)
        {
LABEL_42:

          if (v39 >> 62)
          {
            v67 = sub_190D581C0();
          }

          else
          {
            v67 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v143 = v28;
          v155 = v29;
          if (v67)
          {
            if (v67 >= 1)
            {
              v171 = 0;
              v68 = 0;
              v28 = 0;
              v169 = v39 & 0xC000000000000001;
              v29 = &v177;
              v164 = xmmword_190DD1D90;
              v168 = v39;
              v167 = v67;
              while (1)
              {
                if (v169)
                {
                  v76 = MEMORY[0x193AF3B90](v28, v39);
                }

                else
                {
                  v76 = *(v39 + 8 * v28 + 32);
                }

                v35 = v76;
                v3 = &v142;
                aBlock = v76;
                MEMORY[0x1EEE9AC00](v76);
                *(&v142 - 2) = &aBlock;
                if (sub_190CACFA0(sub_190984374, (&v142 - 4), v172))
                {
                  v77 = *(&v35->isa + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconBlurContainerView);
                  v78 = *&v77[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount];
                  v79 = __OFADD__(v78, 1);
                  v80 = v78 + 1;
                  if (v79)
                  {
                    goto LABEL_72;
                  }

                  v170 = v68;
                  *&v77[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount] = v80;
                  v39 = OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter;
                  if ((v77[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter] & 1) == 0)
                  {
                    v81 = [v77 layer];
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90, &qword_190DD63C0);
                    v82 = swift_allocObject();
                    *(v82 + 16) = v164;
                    v83 = sub_190A18658();
                    *(v82 + 56) = sub_1902188FC(0, &qword_1ED7769D0, 0x1E6979378);
                    *(v82 + 32) = v83;
                    v84 = sub_190D57160();

                    [v81 setFilters_];

                    v77[v39] = 1;
                  }

                  v85 = swift_allocObject();
                  v86 = v173;
                  *(v85 + 16) = v35;
                  *(v85 + 24) = v86;
                  v179 = sub_190984470;
                  v180 = v85;
                  aBlock = MEMORY[0x1E69E9820];
                  v176 = 1107296256;
                  v177 = sub_190840E6C;
                  v178 = &block_descriptor_68_1;
                  v87 = _Block_copy(&aBlock);
                  v88 = v35;
                  v35 = v86;

                  v3 = v166;
                  [v166 addAnimations_];
                  _Block_release(v87);
                  v89 = swift_allocObject();
                  *(v89 + 16) = v88;
                  v179 = sub_190984478;
                  v180 = v89;
                  aBlock = MEMORY[0x1E69E9820];
                  v176 = 1107296256;
                  v177 = sub_190893958;
                  v178 = &block_descriptor_74;
                  v90 = _Block_copy(&aBlock);
                  v38 = v88;

                  [v3 addCompletion_];
                  _Block_release(v90);
                  v91 = *(v38 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleBlurContainerView);
                  v92 = *&v91[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount];
                  v79 = __OFADD__(v92, 1);
                  v93 = v92 + 1;
                  if (v79)
                  {
                    goto LABEL_74;
                  }

                  *&v91[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount] = v93;
                  v94 = OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter;
                  if ((v91[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter] & 1) == 0)
                  {
                    v95 = [v91 layer];
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90, &qword_190DD63C0);
                    v96 = swift_allocObject();
                    *(v96 + 16) = v164;
                    v97 = sub_190A18658();
                    *(v96 + 56) = sub_1902188FC(0, &qword_1ED7769D0, 0x1E6979378);
                    *(v96 + 32) = v97;
                    v98 = sub_190D57160();

                    [v95 setFilters_];

                    v91[v94] = 1;
                  }

                  v69 = swift_allocObject();
                  *(v69 + 16) = v38;
                  *(v69 + 24) = v35;
                  v179 = sub_19098449C;
                  v180 = v69;
                  aBlock = MEMORY[0x1E69E9820];
                  v176 = 1107296256;
                  v177 = sub_190840E6C;
                  v178 = &block_descriptor_80_0;
                  v70 = _Block_copy(&aBlock);
                  v38 = v38;
                  v71 = v35;

                  v72 = v165;
                  [v165 addAnimations_];
                  _Block_release(v70);
                  v73 = swift_allocObject();
                  *(v73 + 16) = v38;
                  v179 = sub_1909844A4;
                  v180 = v73;
                  aBlock = MEMORY[0x1E69E9820];
                  v176 = 1107296256;
                  v177 = sub_190893958;
                  v178 = &block_descriptor_86_0;
                  v74 = _Block_copy(&aBlock);
                  v75 = v38;

                  [v72 addCompletion_];

                  _Block_release(v74);
                  v68 = v170;
                }

                else
                {
                  v38 = objc_opt_self();
                  v99 = swift_allocObject();
                  v3 = v173;
                  *(v99 + 16) = v35;
                  *(v99 + 24) = v3;
                  v100 = v35;
                  v101 = v3;
                  sub_19022123C(v171, v68);
                  v35 = swift_allocObject();
                  v171 = sub_1909843CC;
                  v35[2].isa = sub_1909843CC;
                  v35[3].isa = v99;
                  v179 = sub_190838A04;
                  v180 = v35;
                  aBlock = MEMORY[0x1E69E9820];
                  v176 = 1107296256;
                  v177 = sub_19088B7B8;
                  v178 = &block_descriptor_32;
                  v102 = _Block_copy(&aBlock);
                  v39 = v180;
                  sub_190D50920();

                  [v38 performWithoutAnimation_];

                  _Block_release(v102);
                  LOBYTE(v102) = swift_isEscapingClosureAtFileLocation();

                  if (v102)
                  {
                    goto LABEL_73;
                  }

                  v68 = v99;
                }

                ++v28;
                v39 = v168;
                if (v167 == v28)
                {
                  goto LABEL_62;
                }
              }
            }

            __break(1u);
            goto LABEL_79;
          }

          v171 = 0;
          v68 = 0;
LABEL_62:
          v170 = v68;
          v103 = v145;
          dispatch_group_enter(v145);
          v104 = swift_allocObject();
          *(v104 + 16) = v103;
          v179 = sub_190851F54;
          v180 = v104;
          aBlock = MEMORY[0x1E69E9820];
          v176 = 1107296256;
          v177 = sub_190893958;
          v178 = &block_descriptor_38;
          v105 = _Block_copy(&aBlock);
          v106 = v103;

          v107 = v165;
          [v165 addCompletion_];
          _Block_release(v105);
          [v107 startAnimation];
          dispatch_group_enter(v106);
          v108 = swift_allocObject();
          *(v108 + 16) = v106;
          v179 = sub_190851F54;
          v180 = v108;
          aBlock = MEMORY[0x1E69E9820];
          v176 = 1107296256;
          v177 = sub_190893958;
          v178 = &block_descriptor_44;
          v109 = _Block_copy(&aBlock);
          v110 = v106;

          v111 = v166;
          [v166 addCompletion_];
          _Block_release(v109);
          [v111 startAnimation];
          v112 = *(v155 + OBJC_IVAR___CKSendMenuViewController_plusButtonPortalView);
          v169 = v110;
          if (v112)
          {
            v113 = v112;
            v114 = [v173 entryViewSendMenuPlusButtonDismissScaleAnimator];
            v115 = v163;
            v116 = v162;
            if (!v114)
            {
              goto LABEL_83;
            }

            v117 = v114;

            dispatch_group_enter(v110);
            v118 = swift_allocObject();
            v119 = v155;
            *(v118 + 16) = v155;
            *(v118 + 24) = v113;
            v179 = sub_190984468;
            v180 = v118;
            aBlock = MEMORY[0x1E69E9820];
            v176 = 1107296256;
            v177 = sub_190840E6C;
            v178 = &block_descriptor_56;
            v120 = _Block_copy(&aBlock);
            v121 = v119;
            v122 = v113;

            [v117 addAnimations_];
            _Block_release(v120);
            v123 = swift_allocObject();
            *(v123 + 16) = v110;
            v179 = sub_190851F54;
            v180 = v123;
            aBlock = MEMORY[0x1E69E9820];
            v176 = 1107296256;
            v177 = sub_190893958;
            v178 = &block_descriptor_62_0;
            v124 = _Block_copy(&aBlock);
            v125 = v110;

            [v154 addCompletion_];
            _Block_release(v124);
            [v117 startAnimation];

            v126 = v115;
          }

          else
          {

            v126 = v163;
            v116 = v162;
            v119 = v155;
          }

          sub_1902188FC(0, &qword_1EAD46670, 0x1E69E9610);
          v172 = sub_190D57870();
          v127 = v158;
          v128 = v149;
          v153(v158, v156, v149);
          v129 = v148;
          v130 = (*(v148 + 80) + 24) & ~*(v148 + 80);
          v131 = (v157 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
          v132 = swift_allocObject();
          *(v132 + 16) = v119;
          (*(v129 + 32))(v132 + v130, v127, v128);
          v133 = (v132 + v131);
          v134 = v159;
          v135 = v160;
          *v133 = v159;
          v133[1] = v135;
          v179 = sub_1909843D4;
          v180 = v132;
          aBlock = MEMORY[0x1E69E9820];
          v176 = 1107296256;
          v177 = sub_190840E6C;
          v178 = &block_descriptor_50_0;
          v136 = _Block_copy(&aBlock);
          v137 = v119;
          sub_19029063C(v134, v135);
          v138 = v161;
          sub_190D56790();
          v174 = MEMORY[0x1E69E7CC0];
          sub_190984E9C(&qword_1EAD46770, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0, &unk_190DD6E80);
          sub_190233640(&qword_1EAD46730, &unk_1EAD546A0, &unk_190DD6E80, MEMORY[0x1E69E6328]);
          v139 = v151;
          sub_190D58170();
          v140 = v172;
          v141 = v169;
          sub_190D57830();
          _Block_release(v136);

          (*(v116 + 8))(v139, v126);
          (*(v150 + 8))(v138, v152);
          (*(v129 + 8))(v156, v128);

          sub_19022123C(v171, v170);
          return;
        }

        v63 = 0;
        v38 = v3 & 0xC000000000000001;
LABEL_30:
        v64 = v63;
        while (1)
        {
          if (v38)
          {
            v65 = MEMORY[0x193AF3B90](v64, v3);
          }

          else
          {
            if (v64 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_71;
            }

            v65 = *(v3 + 8 * v64 + 32);
          }

          v35 = v65;
          v63 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            break;
          }

          type metadata accessor for SendMenuCollectionViewCell();
          v66 = swift_dynamicCastClass();
          if (v66)
          {
            v35 = v66;
            MEMORY[0x193AF29E0]();
            if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_190D571A0();
            }

            sub_190D571E0();
            v39 = aBlock;
            if (v63 != v62)
            {
              goto LABEL_30;
            }

            goto LABEL_42;
          }

          ++v64;
          if (v63 == v62)
          {
            goto LABEL_42;
          }
        }

LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        ;
      }

      goto LABEL_81;
    }
  }

  else
  {
LABEL_79:
    __break(1u);
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
}

void sub_190981C34(void *a1)
{
  [a1 setBackgroundColor_];
  sub_1902188FC(0, &unk_1EAD466A0, 0x1E69DD290);
  v2 = sub_190D57160();
  [a1 setBackgroundEffects_];
}

id sub_190981CC0(uint64_t a1, id a2)
{
  [a2 sendMenuDismissAnimationIconBlurFinalRadius];
  v4 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewSendMenuAppearanceAnimationBlurFilterRadius;
  swift_beginAccess();
  *(a1 + v5) = v4;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v7 = 0.0;
  if (!IsReduceTransparencyEnabled)
  {
    v8 = *(a1 + v5);
    v9 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeBlurFilterRadius;
    swift_beginAccess();
    v7 = *(a1 + v9);
    if (v8 > v7)
    {
      v7 = v8;
    }
  }

  sub_190A18960(v7);
  v10 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity;
  swift_beginAccess();
  *(a1 + v10) = 0;
  v11 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity;
  swift_beginAccess();
  v12 = *(a1 + v11);
  v13 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
  swift_beginAccess();
  v14 = *(a1 + v13);
  v15 = fmin(v14, 0.0);
  if (v14 >= v12)
  {
    v14 = v12;
  }

  if (v12 <= 0.0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  [*(a1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView) setAlpha_];
  v17 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  swift_beginAccess();
  result = *(a1 + v17);
  if (result)
  {
    *&v18 = v16;
    return [result setOpacity_];
  }

  return result;
}

id sub_190981E50(uint64_t a1, id a2)
{
  [a2 sendMenuDismissAnimationTextBlurFinalRadius];
  v4 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelSendMenuAppearanceAnimationBlurFilterRadius;
  swift_beginAccess();
  *(a1 + v5) = v4;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v7 = 0.0;
  if (!IsReduceTransparencyEnabled)
  {
    v8 = *(a1 + v5);
    v9 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeBlurFilterRadius;
    swift_beginAccess();
    v7 = *(a1 + v9);
    if (v8 > v7)
    {
      v7 = v8;
    }
  }

  sub_190A18960(v7);
  v10 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelAppearanceAnimationOpacity;
  swift_beginAccess();
  *(a1 + v10) = 0;
  v11 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeOpacity;
  swift_beginAccess();
  v12 = *(a1 + v11);
  v13 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
  swift_beginAccess();
  v14 = *(a1 + v13);
  v15 = fmin(v14, 0.0);
  if (v14 >= v12)
  {
    v14 = v12;
  }

  if (v12 > 0.0)
  {
    v14 = v15;
  }

  return [*(a1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel) setAlpha_];
}

void sub_190981FA4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + *a3);
  v4 = *&v3[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount];
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *&v3[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount] = v6;
    v7 = OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter;
    if (v3[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter] == 1 && v6 == 0 && sub_190A18840() == 0.0)
    {
      v9 = [v3 layer];
      v10 = sub_190D57160();
      [v9 setFilters_];

      v3[v7] = 0;
    }
  }
}

id sub_190982068(uint64_t a1, id a2)
{
  [a2 sendMenuDismissAnimationIconBlurFinalRadius];
  v5 = v4;
  v6 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewSendMenuAppearanceAnimationBlurFilterRadius;
  swift_beginAccess();
  *(a1 + v6) = v5;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v8 = 0.0;
  if (!IsReduceTransparencyEnabled)
  {
    v9 = *(a1 + v6);
    v10 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeBlurFilterRadius;
    swift_beginAccess();
    v8 = *(a1 + v10);
    if (v9 > v8)
    {
      v8 = v9;
    }
  }

  sub_190A18960(v8);
  v11 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity;
  swift_beginAccess();
  *(a1 + v11) = 0;
  v12 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity;
  swift_beginAccess();
  v13 = *(a1 + v12);
  v14 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = fmin(v15, 0.0);
  if (v15 >= v13)
  {
    v15 = v13;
  }

  if (v13 <= 0.0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  [*(a1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView) setAlpha_];
  v18 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  swift_beginAccess();
  v20 = *(a1 + v18);
  if (v20)
  {
    *&v19 = v17;
    [v20 setOpacity_];
  }

  [a2 sendMenuDismissAnimationTextBlurFinalRadius];
  v22 = v21;
  v23 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelSendMenuAppearanceAnimationBlurFilterRadius;
  swift_beginAccess();
  *(a1 + v23) = v22;
  v24 = UIAccessibilityIsReduceTransparencyEnabled();
  v25 = 0.0;
  if (!v24)
  {
    v26 = *(a1 + v23);
    v27 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeBlurFilterRadius;
    swift_beginAccess();
    v25 = *(a1 + v27);
    if (v26 > v25)
    {
      v25 = v26;
    }
  }

  sub_190A18960(v25);
  v28 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelAppearanceAnimationOpacity;
  swift_beginAccess();
  *(a1 + v28) = 0;
  v29 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeOpacity;
  swift_beginAccess();
  v30 = *(a1 + v29);
  v31 = *(a1 + v14);
  v32 = fmin(v31, 0.0);
  if (v31 >= v30)
  {
    v31 = *(a1 + v29);
  }

  if (v30 <= 0.0)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  return [*(a1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel) setAlpha_];
}

void sub_190982304(_BYTE *a1, void *a2)
{
  a1[OBJC_IVAR___CKSendMenuViewController_plusButtonPortalViewShouldUserIdealFrame] = 0;
  v4 = [a1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 setNeedsLayout];

  v6 = [a1 view];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 layoutIfNeeded];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = [Strong isAppCardPresentationStyleExpanded], swift_unknownObjectRelease(), (v9 & 1) != 0) || (v10 = OBJC_IVAR___CKSendMenuViewController_isPresentingAudioRecordingQuickSend, swift_beginAccess(), a1[v10] == 1))
  {
    [a2 setAlpha_];
  }
}

uint64_t sub_190982428(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v28 = a4;
  v29 = a3;
  v6 = sub_190D518A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58490, &qword_190DE22C0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460, &qword_190DD8260);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  v20 = OBJC_IVAR___CKSendMenuViewController_activeDismissAnimationIdentifier;
  swift_beginAccess();
  (*(v7 + 16))(v19, a2, v6);
  (*(v7 + 56))(v19, 0, 1, v6);
  v21 = *(v11 + 56);
  sub_190866DA0(v19, v13);
  sub_190866DA0(a1 + v20, &v13[v21]);
  v22 = *(v7 + 48);
  if (v22(v13, 1, v6) == 1)
  {
    sub_19022EEA4(v19, &unk_1EAD58460, &qword_190DD8260);
    if (v22(&v13[v21], 1, v6) == 1)
    {
      sub_19022EEA4(v13, &unk_1EAD58460, &qword_190DD8260);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_190866DA0(v13, v16);
  if (v22(&v13[v21], 1, v6) == 1)
  {
    sub_19022EEA4(v19, &unk_1EAD58460, &qword_190DD8260);
    (*(v7 + 8))(v16, v6);
LABEL_6:
    sub_19022EEA4(v13, &qword_1EAD58490, &qword_190DE22C0);
    goto LABEL_7;
  }

  (*(v7 + 32))(v9, &v13[v21], v6);
  sub_190984E9C(&qword_1EAD462D0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v25 = sub_190D56E30();
  v26 = *(v7 + 8);
  v26(v9, v6);
  sub_19022EEA4(v19, &unk_1EAD58460, &qword_190DD8260);
  v26(v16, v6);
  sub_19022EEA4(v13, &unk_1EAD58460, &qword_190DD8260);
  if ((v25 & 1) == 0)
  {
LABEL_7:
    result = 0;
    v24 = v29;
    if (!v29)
    {
      return result;
    }

    return v24(result);
  }

LABEL_11:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong sendMenuViewControllerDidFinishDismissAnimation_];
    swift_unknownObjectRelease();
  }

  result = 1;
  v24 = v29;
  if (v29)
  {
    return v24(result);
  }

  return result;
}

uint64_t sub_19098290C(void *a1)
{
  v2 = sub_190D56770();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D567A0();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 userInfo];
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11;
  v13 = sub_190D56D90();

  v31 = 0xD000000000000025;
  v32 = 0x8000000190E69740;
  sub_190D58230();
  if (!*(v13 + 16) || (v14 = sub_190875C84(&aBlock), (v15 & 1) == 0))
  {

    sub_19084CFD0(&aBlock);
LABEL_8:
    v33 = 0u;
    v34 = 0u;
    return sub_19022EEA4(&v33, &unk_1EAD551C0, &unk_190DD9790);
  }

  sub_19021834C(*(v13 + 56) + 32 * v14, &v33);
  sub_19084CFD0(&aBlock);

  if (!*(&v34 + 1))
  {
    return sub_19022EEA4(&v33, &unk_1EAD551C0, &unk_190DD9790);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v18 = aBlock;
    v17 = v26;
    sub_1902188FC(0, &qword_1EAD46670, 0x1E69E9610);
    v24 = sub_190D57870();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = v18;
    v20[4] = v17;
    v29 = sub_1909844C8;
    v30 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_190840E6C;
    v28 = &block_descriptor_95_0;
    v23 = _Block_copy(&aBlock);

    sub_190D56790();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_190984E9C(&qword_1EAD46770, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0, &unk_190DD6E80);
    sub_190233640(&qword_1EAD46730, &unk_1EAD546A0, &unk_190DD6E80, MEMORY[0x1E69E6328]);
    sub_190D58170();
    v22 = v23;
    v21 = v24;
    MEMORY[0x193AF3110](0, v10, v5, v23);
    _Block_release(v22);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

void sub_190982D34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_190A02438(a2, a3);
  }
}

uint64_t sub_190982E40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460, &qword_190DD8260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = [objc_opt_self() sharedFeatureFlags];
  v5 = [v4 isPopoverSendMenuEnabled];

  if ((v5 & 1) == 0)
  {
    v6 = [*(v0 + OBJC_IVAR___CKSendMenuViewController_presentationContext) presentationStyle];
    if (v6 != 1)
    {
      if (v6)
      {
        result = sub_190D58510();
        __break(1u);
        return result;
      }

      v7 = [objc_opt_self() currentDevice];
      v8 = [v7 userInterfaceIdiom];

      if (!v8)
      {
        v10 = OBJC_IVAR___CKSendMenuViewController_activeDismissAnimationIdentifier;
        swift_beginAccess();
        sub_190866DA0(v0 + v10, v3);
        v11 = sub_190D518A0();
        v12 = (*(*(v11 - 8) + 48))(v3, 1, v11) == 1;
        sub_19022EEA4(v3, &unk_1EAD58460, &qword_190DD8260);
        return v12;
      }
    }
  }

  return 0;
}

uint64_t sub_190983124()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isPopoverSendMenuEnabled];

  if (v2)
  {
    return 0;
  }

  v3 = [*(v0 + OBJC_IVAR___CKSendMenuViewController_presentationContext) presentationStyle];
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  result = sub_190D58510();
  __break(1u);
  return result;
}

_OWORD *sub_190983288(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    if (!v5)
    {
      sub_190D56F10();
      v5 = sub_190D56ED0();
    }

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);
    v10[4] = sub_1909844D4;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_190983CE0;
    v10[3] = &block_descriptor_99_0;
    v8 = _Block_copy(v10);
    sub_190D50920();
    v9 = [v7 initWithName:v5 actionHandler:v8];

    _Block_release(v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
    result = swift_allocObject();
    result[1] = xmmword_190DD55F0;
    *(result + 4) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190983474(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong sendMenuViewControllerRequestDismiss_];

      swift_unknownObjectRelease();
      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_190983518(void *a1)
{
  v3 = [objc_opt_self() sharedFeatureFlags];
  v4 = [v3 isPopoverSendMenuEnabled];

  if ((v4 & 1) == 0)
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1909844DC;
    *(v7 + 24) = v6;
    v12[4] = sub_190984F4C;
    v12[5] = v7;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_19088B7B8;
    v12[3] = &block_descriptor_109;
    v8 = _Block_copy(v12);
    v9 = v1;
    v10 = a1;
    sub_190D50920();

    [v5 performWithoutAnimation_];
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1909836C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460, &qword_190DD8260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &aBlock[-1] - v2;
  v4 = [objc_opt_self() sharedFeatureFlags];
  v5 = [v4 isPopoverSendMenuEnabled];

  if (v5)
  {
    return;
  }

  if (*&v0[OBJC_IVAR___CKSendMenuViewController_plusButtonPortalView])
  {
    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 setNeedsLayout];

      v8 = [v0 view];
      if (v8)
      {
        v9 = v8;
        [v8 layoutIfNeeded];

        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_6:
  v10 = OBJC_IVAR___CKSendMenuViewController_activeDismissAnimationIdentifier;
  swift_beginAccess();
  sub_190866DA0(&v0[v10], v3);
  v11 = sub_190D518A0();
  LODWORD(v10) = (*(*(v11 - 8) + 48))(v3, 1, v11);
  sub_19022EEA4(v3, &unk_1EAD58460, &qword_190DD8260);
  if (v10 != 1)
  {
    v12 = OBJC_IVAR___CKSendMenuViewController_collectionViewDismissingLayout;
    v13 = *&v0[OBJC_IVAR___CKSendMenuViewController_collectionViewDismissingLayout];
    if (v13)
    {
      v14 = [v13 _invalidationContextForRefreshingVisibleElementAttributes];
      if (v14)
      {
        v15 = v14;
        v16 = *&v0[v12];
        if (v16)
        {
          [v16 invalidateLayoutWithContext_];
        }

        v17 = [objc_opt_self() sharedBehaviors];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 sendMenuAppearanceCollectionViewUpdateAnimator];
          if (v19)
          {
            v20 = v19;
            v21 = swift_allocObject();
            *(v21 + 16) = v0;
            aBlock[4] = sub_190984504;
            aBlock[5] = v21;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_190840E6C;
            aBlock[3] = &block_descriptor_115_0;
            v22 = _Block_copy(aBlock);
            v23 = v0;

            [v20 addAnimations_];
            _Block_release(v22);
            [v20 startAnimation];

            return;
          }

LABEL_18:
          __break(1u);
          return;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }
  }
}

id SendMenuViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_190D56ED0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SendMenuViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SendMenuViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190983C78()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D658);
  __swift_project_value_buffer(v0, qword_1EAD9D658);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190983CE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_190D50920();
  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

id sub_190983D38(void *a1, char *a2)
{
  *&a2[OBJC_IVAR___CKSendMenuCollectionViewLayout_sendMenuLayoutDelegate + 8] = 0;
  v4 = swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR___CKSendMenuCollectionViewLayout____lazy_storage___dynamicAnimator] = 0;
  v5 = &a2[OBJC_IVAR___CKSendMenuCollectionViewLayout_frozenCollectionViewContentSize];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &a2[OBJC_IVAR___CKSendMenuCollectionViewLayout_lastPanGestureRecognizerPositionInCollectionViewCoordinates];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v4 + 8) = &protocol witness table for SendMenuViewController;
  swift_unknownObjectWeakAssign();
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 24) = &protocol witness table for SendMenuViewController;
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v11 = objc_allocWithZone(MEMORY[0x1E69DC810]);
    sub_190D50920();
    v12 = v8;
    v13 = [v11 init];
    [v13 setContentInsetsReference_];
    aBlock[4] = sub_190984EE4;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19098AD9C;
    aBlock[3] = &block_descriptor_230;
    v14 = _Block_copy(aBlock);
    sub_190D50920();

    v16.receiver = a2;
    v16.super_class = type metadata accessor for SendMenuCollectionViewLayout();
    v15 = objc_msgSendSuper2(&v16, sel_initWithSectionProvider_configuration_, v14, v13);

    _Block_release(v14);

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _s7ChatKit22SendMenuViewControllerC04sendD23SafeAreaInsetsDidChangeyyAA0cd10CollectionE0CF_0()
{
  v0 = sub_19097C334();
  v1 = sub_19084E244();
  [v1 removeAllBehaviors];

  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
    v9 = 0.0;
    v11 = 0.0;
  }

  v12 = [v0 invalidationContextForBoundsChange_];
  [v0 invalidateLayoutWithContext_];
}

void sub_190984070()
{
  v1 = (v0 + OBJC_IVAR___CKSendMenuViewController_contentProvider);
  v2 = type metadata accessor for SendMenuViewControllerContentProvider();
  v3 = swift_allocObject();
  *(v3 + 16) = [objc_opt_self() createNetworkMonitorWithRemoteHost:0 delegate:0 allowsUltraConstrainedNetwork:1];
  v1[3] = v2;
  v1[4] = &protocol witness table for SendMenuViewControllerContentProvider;
  *v1 = v3;
  *(v0 + OBJC_IVAR___CKSendMenuViewController_hasPerformedInitialContentAppearance) = 0;
  v4 = OBJC_IVAR___CKSendMenuViewController_activeDismissAnimationIdentifier;
  v5 = sub_190D518A0();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR___CKSendMenuViewController_sendMenuListItems;
  v7 = MEMORY[0x1E69E7CC0];
  *(v0 + v6) = sub_19082256C(MEMORY[0x1E69E7CC0]);
  v8 = v0 + OBJC_IVAR___CKSendMenuViewController_sendMenuCellReuseIdentifier;
  strcpy((v0 + OBJC_IVAR___CKSendMenuViewController_sendMenuCellReuseIdentifier), "SendMenuCell");
  *(v8 + 13) = 0;
  *(v8 + 14) = -5120;
  *(v0 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView) = 0;
  *(v0 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___collectionViewLayout) = 0;
  *(v0 + OBJC_IVAR___CKSendMenuViewController_collectionViewDismissingLayout) = 0;
  *(v0 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuDataSource) = 0;
  *(v0 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___backdropView) = 0;
  *(v0 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuParentView) = 0;
  *(v0 + OBJC_IVAR___CKSendMenuViewController_plusButtonPortalView) = 0;
  v9 = (v0 + OBJC_IVAR___CKSendMenuViewController_reorderGestureDragPointOffsetFromCellCenter);
  *v9 = 0;
  v9[1] = 0;
  *(v0 + OBJC_IVAR___CKSendMenuViewController_isPresentingAudioRecordingQuickSend) = 0;
  v10 = (v0 + OBJC_IVAR___CKSendMenuViewController_collapsedMenuOrigin);
  *v10 = 0u;
  v10[1] = 0u;
  *(v0 + OBJC_IVAR___CKSendMenuViewController_collectionViewTopConstraint) = 0;
  *(v0 + OBJC_IVAR___CKSendMenuViewController_collectionViewBottomConstraint) = 0;
  v11 = v0 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___plusButtonIdealPositionAvoidanceHeight;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR___CKSendMenuViewController_plusButtonPortalViewShouldUserIdealFrame) = 0;
  *(v0 + OBJC_IVAR___CKSendMenuViewController_plusButtonPortalViewShouldUsePlusLFilter) = 0;
  v12 = (v0 + OBJC_IVAR___CKSendMenuViewController_sendMenuAutoScrollInsets);
  v13 = *(MEMORY[0x1E69DDCE0] + 16);
  *v12 = *MEMORY[0x1E69DDCE0];
  v12[1] = v13;
  *(v0 + OBJC_IVAR___CKSendMenuViewController_isAppearanceAnimationActive) = 0;
  *(v0 + OBJC_IVAR___CKSendMenuViewController_isInitialAppearanceAnimationActive) = 0;
  *(v0 + OBJC_IVAR___CKSendMenuViewController_indexPathsToCollapseIntoPlusButton) = v7;
  sub_190D58510();
  __break(1u);
}

uint64_t sub_1909842FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460, &qword_190DD8260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909843D4()
{
  v1 = *(sub_190D518A0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_190982428(v3, v0 + v2, v5, v6);
}

void sub_190984504()
{
  v0 = sub_19097C1B4();
  [v0 layoutIfNeeded];
}

unint64_t sub_190984558()
{
  result = qword_1EAD45978;
  if (!qword_1EAD45978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45978);
  }

  return result;
}

uint64_t sub_190984E9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_190984FB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_1902188FC(0, &qword_1EAD46500, 0x1E69E58C0);
  return sub_190D57D90() & ~(v2 ^ v3) & 1;
}

uint64_t CKRecipientAvailabilities.description.getter()
{
  swift_beginAccess();
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD584A0, &qword_190DE22C8);
  v0 = sub_190D56DA0();

  return v0;
}

uint64_t sub_190985274(void *a1)
{
  v1 = [a1 resultsByAccountID];
  sub_1902188FC(0, &qword_1EAD46550, 0x1E69A8260);
  v2 = sub_190D56D90();

  isUniquelyReferenced_nonNull_native = 0;
  LOBYTE(v4) = 0;
  v5 = 0;
  v6 = v2 + 64;
  v68 = v2 + 64;
  v69 = v2;
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  v79 = OBJC_IVAR___CKRecipientAvailabilities_reachabilities;
  v10 = (v7 + 63) >> 6;
  v67 = v10;
LABEL_6:
  if (v9)
  {
    v11 = v5;
  }

  else
  {
    do
    {
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_52;
      }

      if (v11 >= v10)
      {

        if (qword_1EAD46BB8 != -1)
        {
          goto LABEL_57;
        }

        goto LABEL_48;
      }

      v9 = *(v6 + 8 * v11);
      ++v5;
    }

    while (!v9);
  }

  v71 = v11;
  v72 = (v9 - 1) & v9;
  v70 = *(*(v69 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));
  v12 = [v70 handleResults];
  sub_1902188FC(0, &qword_1EAD46548, 0x1E69A8248);
  v13 = sub_190D56D90();

  v14 = 0;
  v15 = v13 + 64;
  v75 = v13 + 64;
  v76 = v13;
  v16 = 1 << *(v13 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v13 + 64);
  v19 = (v16 + 63) >> 6;
  v74 = v19;
  while (v18)
  {
    v77 = v4;
    v20 = v14;
LABEL_24:
    v21 = __clz(__rbit64(v18)) | (v20 << 6);
    v22 = (*(v76 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v4 = *(*(v76 + 56) + 8 * v21);
    sub_190D52690();
    v78 = [a1 isFinal];
    v25 = [v4 service];
    v81 = sub_190D56F10();
    v27 = v26;

    swift_beginAccess();
    sub_19022123C(isUniquelyReferenced_nonNull_native, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v80 + v79);
    *(v80 + v79) = 0x8000000000000000;
    v30 = sub_19022DCEC(v23, v24);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_53;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_190B69170();
      }
    }

    else
    {
      sub_190B64D68(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_19022DCEC(v23, v24);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_58;
      }

      v30 = v35;
    }

    *(v80 + v79) = v28;
    if ((v34 & 1) == 0)
    {
      v37 = sub_190822688(MEMORY[0x1E69E7CC0]);
      v28[(v30 >> 6) + 8] |= 1 << v30;
      v38 = (v28[6] + 16 * v30);
      *v38 = v23;
      v38[1] = v24;
      *(v28[7] + 8 * v30) = v37;
      v39 = v28[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_55;
      }

      v28[2] = v41;
      sub_190D52690();
    }

    v42 = v28[7];
    v4 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v42 + 8 * v30);
    v44 = sub_19022DCEC(v81, v27);
    v46 = v43[2];
    v47 = (v45 & 1) == 0;
    v40 = __OFADD__(v46, v47);
    v48 = v46 + v47;
    if (v40)
    {
      goto LABEL_54;
    }

    v49 = v45;
    if (v43[3] < v48)
    {
      sub_190B64AA4(v48, isUniquelyReferenced_nonNull_native);
      v44 = sub_19022DCEC(v81, v27);
      if ((v49 & 1) != (v50 & 1))
      {
LABEL_58:
        result = sub_190D587C0();
        __break(1u);
        return result;
      }

LABEL_38:
      if (v49)
      {
        goto LABEL_39;
      }

      goto LABEL_41;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_38;
    }

    isUniquelyReferenced_nonNull_native = v44;
    sub_190B68FF4();
    v44 = isUniquelyReferenced_nonNull_native;
    if (v49)
    {
LABEL_39:
      v51 = v43[7] + 16 * v44;
      v52 = *v51;
      *v51 = v4;
      *(v51 + 8) = v78;
      goto LABEL_43;
    }

LABEL_41:
    v43[(v44 >> 6) + 8] |= 1 << v44;
    v53 = (v43[6] + 16 * v44);
    *v53 = v81;
    v53[1] = v27;
    v54 = v43[7] + 16 * v44;
    *v54 = v4;
    *(v54 + 8) = v78;
    v55 = v43[2];
    v40 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v40)
    {
      goto LABEL_56;
    }

    v43[2] = v56;
    sub_190D52690();
    v52 = 0;
LABEL_43:
    v18 &= v18 - 1;
    *(v42 + 8 * v30) = v43;
    swift_endAccess();

    if (v77)
    {

LABEL_16:
      LOBYTE(v4) = 1;
      goto LABEL_17;
    }

    if (!v52)
    {

      goto LABEL_16;
    }

    v57 = v52;
    v58 = sub_190D57D90();

    LOBYTE(v4) = v58 ^ 1;
LABEL_17:
    isUniquelyReferenced_nonNull_native = sub_190987750;
    v14 = v20;
    v19 = v74;
    v15 = v75;
  }

  while (1)
  {
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      v5 = v71;
      v9 = v72;
      v10 = v67;
      v6 = v68;
      goto LABEL_6;
    }

    v18 = *(v15 + 8 * v20);
    ++v14;
    if (v18)
    {
      v77 = v4;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  swift_once();
LABEL_48:
  v59 = sub_190D53040();
  __swift_project_value_buffer(v59, qword_1EAD9D910);
  v60 = a1;
  v61 = sub_190D53020();
  v62 = sub_190D57680();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 138412546;
    *(v63 + 4) = v60;
    *v64 = v60;
    *(v63 + 12) = 1024;
    *(v63 + 14) = v4 & 1;
    v65 = v60;
    _os_log_impl(&dword_19020E000, v61, v62, "Ingested new result %@ resultsChanged %{BOOL}d", v63, 0x12u);
    sub_190830D58(v64);
    MEMORY[0x193AF7A40](v64, -1, -1);
    MEMORY[0x193AF7A40](v63, -1, -1);
  }

  sub_19022123C(isUniquelyReferenced_nonNull_native, 0);
  return v4 & 1;
}

void sub_190985938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1EAD46BB8 != -1)
  {
    swift_once();
  }

  v10 = sub_190D53040();
  __swift_project_value_buffer(v10, qword_1EAD9D910);
  sub_190D52690();
  v11 = sub_190D53020();
  v12 = sub_190D57680();

  if (os_log_type_enabled(v11, v12))
  {
    v25 = a3;
    v13 = a2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    v16 = MEMORY[0x193AF2A20](a1, MEMORY[0x1E69E6158]);
    v18 = sub_19021D9F8(v16, v17, aBlock);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_19020E000, v11, v12, "Refreshing availability for recipients %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x193AF7A40](v15, -1, -1);
    v19 = v14;
    a2 = v13;
    a3 = v25;
    MEMORY[0x193AF7A40](v19, -1, -1);
  }

  v20 = *(v5 + OBJC_IVAR___CKRecipientAvailabilities_reachabilityController);
  v21 = sub_190D57160();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a3;
  v23[4] = a4;
  aBlock[4] = sub_190987744;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_48;
  v24 = _Block_copy(aBlock);
  sub_190D50920();

  [v20 calculateServiceForSendingToHandles:v21 withContext:a2 completionBlock:v24];
  _Block_release(v24);
}

double sub_190985BC4(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void *, void, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_190985274(a1);
  }

  else
  {
    v7 = 0;
  }

  v8 = [a1 resultsByAccountID];
  sub_1902188FC(0, &qword_1EAD46550, 0x1E69A8260);
  v9 = sub_190D56D90();

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_190A946E0();
    v12 = sub_190C83508(&v22, (v11 + 32), v10, v9);
    sub_190219C78(v22);
    if (v12 == v10)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

LABEL_8:
  v13 = sub_190D57160();

  v14 = _IMChatServiceForSendingAvailabilityErrorFromReachabilityResults();

  v15 = [a1 bestResult];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 service];

    v18 = sub_190D56F10();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  a3(v18, v20, a1, v7 & 1, v14);

  return result;
}

void sub_190985E80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    a2 = sub_190D56ED0();
  }

  v7 = a2;
  (*(a6 + 16))(a6);
}

BOOL sub_190985EFC(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___CKRecipientAvailabilities_reachabilities;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_19022DCEC(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    return *(v9 + 16) != 0;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

void sub_190985FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = v3;
    v6 = 0;
    v7 = OBJC_IVAR___CKRecipientAvailabilities_reachabilities;
    v22 = a1 + 40;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v23 = v8;
      v9 = (v22 + 16 * v6);
      for (i = v6; ; ++i)
      {
        if (i >= v4)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_22;
        }

        v12 = *(v9 - 1);
        v11 = *v9;
        swift_beginAccess();
        v13 = *(v5 + v7);
        v14 = *(v13 + 16);
        sub_190D52690();
        if (!v14 || (v15 = sub_19022DCEC(v12, v11), (v16 & 1) == 0))
        {
          swift_endAccess();
          goto LABEL_14;
        }

        v17 = *(*(v13 + 56) + 8 * v15);
        swift_endAccess();
        if (!*(v17 + 16))
        {
          goto LABEL_14;
        }

        sub_190D52690();
        sub_19022DCEC(a2, a3);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v9 += 2;
        if (v6 == v4)
        {
          return;
        }
      }

LABEL_14:
      v8 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19082DBB4(0, *(v23 + 16) + 1, 1);
        v8 = v23;
      }

      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_19082DBB4((v19 > 1), v20 + 1, 1);
        v8 = v23;
      }

      *(v8 + 16) = v20 + 1;
      v21 = v8 + 16 * v20;
      *(v21 + 32) = v12;
      *(v21 + 40) = v11;
    }

    while (v6 != v4);
  }
}

void *sub_190986274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___CKRecipientAvailabilities_reachabilities;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (*(v10 + 16))
  {
    v11 = sub_19022DCEC(a1, a2);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      if (*(v13 + 16))
      {
        sub_190D52690();
        v14 = sub_19022DCEC(a3, a4);
        if (v15)
        {
          v16 = *(*(v13 + 56) + 16 * v14);
          v17 = v16;
          swift_endAccess();

          return v16;
        }
      }
    }
  }

  swift_endAccess();
  return 0;
}

id sub_1909863FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v11 = OBJC_IVAR___CKRecipientAvailabilities_reachabilities;
  swift_beginAccess();
  v12 = *(v5 + v11);
  if (*(v12 + 16))
  {
    v13 = sub_19022DCEC(a1, a2);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);
      if (*(v15 + 16))
      {
        sub_190D52690();
        v16 = sub_19022DCEC(a3, a4);
        if (v17)
        {
          v18 = *(v15 + 56) + 16 * v16;
          v19 = *(v18 + 8);
          v20 = *v18;
          swift_endAccess();

          result = v20;
          *a5 = v19;
          return result;
        }
      }
    }
  }

  swift_endAccess();
  result = 0;
  *a5 = 0;
  return result;
}

void *sub_1909866A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1908227A4(MEMORY[0x1E69E7CC0]);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return v4;
  }

  v6 = 0;
  v7 = a1 + 40;
  v37 = a1 + 40;
  while (2)
  {
    v8 = (v7 + 16 * v6);
    for (i = v6; ; ++i)
    {
      if (i >= v5)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_26;
      }

      v11 = *(v8 - 1);
      v10 = *v8;
      sub_190D52690();
      v12 = sub_190D56ED0();
      v13 = sub_190D56ED0();
      v14 = [v38 idStatusForRecipient:v12 service:v13];

      v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      if (v15)
      {
        break;
      }

      v16 = sub_19022DCEC(v11, v10);
      if (v17)
      {
        v28 = v16;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_190B69184();
        }

        sub_190C83DFC();

        goto LABEL_23;
      }

      v8 += 2;
      if (v6 == v5)
      {
        return v4;
      }
    }

    v18 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_19022DCEC(v11, v10);
    v22 = v4[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v26 = v21;
    if (v4[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v20;
        sub_190B69184();
        v20 = v35;
      }
    }

    else
    {
      sub_190B64D7C(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_19022DCEC(v11, v10);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_29;
      }
    }

    v29 = v18;
    if ((v26 & 1) == 0)
    {
      v4[(v20 >> 6) + 8] |= 1 << v20;
      v32 = (v4[6] + 16 * v20);
      *v32 = v11;
      v32[1] = v10;
      *(v4[7] + 8 * v20) = v18;
      v33 = v4[2];
      v24 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (!v24)
      {
        v4[2] = v34;
        goto LABEL_23;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_190D587C0();
      __break(1u);
      return result;
    }

    v30 = v4[7];
    v31 = *(v30 + 8 * v20);
    *(v30 + 8 * v20) = v29;

LABEL_23:
    v7 = v37;
    if (v6 != v5)
    {
      continue;
    }

    return v4;
  }
}

void sub_190986A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = OBJC_IVAR___CKRecipientAvailabilities_reachabilities;
  swift_beginAccess();
  v10 = *(v5 + v9);
  if (*(v10 + 16) && (v11 = sub_19022DCEC(a2, a3), (v12 & 1) != 0))
  {
    v30 = a1;
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    v14 = 1 << *(v13 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v18 = 0;
    while (v16)
    {
LABEL_13:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = *(*(v13 + 56) + ((v18 << 10) | (16 * v20)));
      v22 = [v21 service];
      sub_190D56F10();

      v23 = sub_190D56ED0();

      v24 = [objc_opt_self() serviceWithName_];

      if (v24)
      {
        v25 = sub_190D56ED0();
        v26 = [v24 supportsCapability_];

        if (v26)
        {
          v27 = v21;
          v28 = [v27 isReachable];

          v29 = 1;
          if (!v28)
          {
            v29 = 2;
          }

          if (v29 == v30)
          {

            return;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v16 = *(v13 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_190986D28(uint64_t a1)
{
  v2 = sub_1909875B8(a1);
  sub_1909871A0(v2);
  v4 = v3;

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = v4 + 64;
  v9 = 1 << *(v4 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v4 + 64);
  v12 = OBJC_IVAR___CKRecipientAvailabilities_reachabilities;
  v13 = MEMORY[0x1E69A7AF0];
  v14 = (v9 + 63) >> 6;
  v15 = 0x1E69A8000uLL;
  if (v11)
  {
    while (1)
    {
LABEL_4:
      while (1)
      {
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v17 = v16 | (v7 << 6);
        v18 = *(*(v5 + 56) + 8 * v17);
        if (v18)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v62 = v5;
      v20 = (*(v5 + 48) + 16 * v17);
      v65 = *v20;
      v67 = v12;
      v68 = v1;
      v21 = v20[1];
      v22 = *v13;
      v64 = sub_190D56F10();
      v66 = v23;
      v24 = objc_allocWithZone(*(v15 + 584));
      sub_190D52690();
      v25 = v22;
      v26 = sub_190D56ED0();
      v63 = [v24 initWithHandleID:v26 service:v25 isReachable:v18 == 1 supportsEncryption:1];

      swift_beginAccess();
      sub_19022123C(v6, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = *(v68 + v67);
      v28 = v69;
      *(v68 + v67) = 0x8000000000000000;
      v30 = sub_19022DCEC(v65, v21);
      v31 = v69[2];
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_33;
      }

      v34 = v29;
      if (v69[3] >= v33)
      {
        v37 = v68;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_190B69170();
          v37 = v68;
          v28 = v69;
        }
      }

      else
      {
        sub_190B64D68(v33, isUniquelyReferenced_nonNull_native);
        v28 = v69;
        v35 = sub_19022DCEC(v65, v21);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_37;
        }

        v30 = v35;
        v37 = v68;
      }

      *(v37 + v67) = v28;
      if ((v34 & 1) == 0)
      {
        v38 = sub_190822688(MEMORY[0x1E69E7CC0]);
        v28[(v30 >> 6) + 8] |= 1 << v30;
        v39 = (v28[6] + 16 * v30);
        *v39 = v65;
        v39[1] = v21;
        *(v28[7] + 8 * v30) = v38;
        v40 = v28[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_35;
        }

        v28[2] = v42;
        sub_190D52690();
      }

      v43 = v28[7];
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(v43 + 8 * v30);
      *(v43 + 8 * v30) = 0x8000000000000000;
      v46 = sub_19022DCEC(v64, v66);
      v48 = v45[2];
      v49 = (v47 & 1) == 0;
      v41 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v41)
      {
        goto LABEL_34;
      }

      v51 = v47;
      if (v45[3] < v50)
      {
        break;
      }

      v53 = v68;
      if ((v44 & 1) == 0)
      {
        v60 = v46;
        sub_190B68FF4();
        v46 = v60;
LABEL_22:
        v53 = v68;
      }

      if (v51)
      {
        v54 = v45[7] + 16 * v46;
        v55 = *v54;
        *v54 = v63;
        *(v54 + 8) = 1;
      }

      else
      {
        v45[(v46 >> 6) + 8] |= 1 << v46;
        v56 = (v45[6] + 16 * v46);
        *v56 = v64;
        v56[1] = v66;
        v57 = v45[7] + 16 * v46;
        *v57 = v63;
        *(v57 + 8) = 1;
        v58 = v45[2];
        v41 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v41)
        {
          goto LABEL_36;
        }

        v45[2] = v59;
      }

      *(v43 + 8 * v30) = v45;
      swift_endAccess();

      v6 = sub_190987750;
      v5 = v62;
      v12 = v67;
      v13 = MEMORY[0x1E69A7AF0];
      v15 = 0x1E69A8000;
      v1 = v53;
      if (!v11)
      {
        goto LABEL_6;
      }
    }

    sub_190B64AA4(v50, v44);
    v46 = sub_19022DCEC(v64, v66);
    if ((v51 & 1) != (v52 & 1))
    {
      goto LABEL_37;
    }

    goto LABEL_22;
  }

LABEL_6:
  while (1)
  {
    v19 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v19 >= v14)
    {

      return sub_19022123C(v6, 0);
    }

    v11 = *(v8 + 8 * v19);
    ++v7;
    if (v11)
    {
      v7 = v19;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_190D587C0();
  __break(1u);
  return result;
}

void sub_1909871A0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v27 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  sub_190D52690();
  v8 = 0;
  while (v6)
  {
LABEL_12:
    v12 = __clz(__rbit64(v6)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v26 = *(*(a1 + 56) + 8 * v12);
    v16 = *(v2 + 16);
    if (*(v2 + 24) <= v16)
    {
      sub_190D52690();
      sub_190B64D90(v16 + 1, 1);
      v2 = v27;
    }

    else
    {
      sub_190D52690();
    }

    sub_190D58870();
    sub_190D56FC0();
    v17 = sub_190D588C0();
    v18 = v2 + 64;
    v19 = -1 << *(v2 + 32);
    v20 = v17 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *(v18 + 8 * v21);
        if (v25 != -1)
        {
          v9 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_6;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_6:
    v6 &= v6 - 1;
    *(v18 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = (*(v2 + 48) + 16 * v9);
    *v10 = v14;
    v10[1] = v15;
    *(*(v2 + 56) + 8 * v9) = v26;
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1909874A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1909874E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_190987538()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D910);
  __swift_project_value_buffer(v0, qword_1EAD9D910);
  return sub_190D53030();
}

void *sub_1909875B8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A58, &unk_190DD89A0);
  result = sub_190D58570();
  v3 = result;
  v4 = 0;
  v25 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v24 = result + 8;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v25 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v25 + 56) + 8 * v15);
      sub_190D52690();
      result = [v19 integerValue];
      *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v3[6] + 16 * v15);
      *v20 = v18;
      v20[1] = v17;
      *(v3[7] + 8 * v15) = result;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v3[2] = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall NSArray.ck_indexOfChatItemContaining(imChatItemGUID:associatedMessageRange:)(Swift::String imChatItemGUID, __C::_NSRange associatedMessageRange)
{
  sub_190863204();
  sub_190D57170();

  return sub_190D50E40();
}

id sub_190987810(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 >> 62)
  {
LABEL_27:
    v6 = sub_190D581C0();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v8 = a5 & 0xC000000000000001;
      v9 = a5 & 0xFFFFFFFFFFFFFF8;
      v10 = &selRef_isStewieActive;
      while (1)
      {
        if (v8)
        {
          v11 = MEMORY[0x193AF3B90](v7, a5, a3, a4);
        }

        else
        {
          if (v7 >= *(v9 + 16))
          {
            goto LABEL_26;
          }

          v11 = *(a5 + 8 * v7 + 32);
        }

        v12 = v11;
        v13 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if ([v11 v10[120]] & 1) != 0 || (objc_msgSend(v12, sel_isEditedMessageHistory))
        {
          break;
        }

        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (!v15 || (v16 = v15, (v17 = [v12 IMChatItem]) == 0))
        {
          v14 = v12;
          v10 = &selRef_isStewieActive;
          goto LABEL_11;
        }

        v14 = v17;
        result = [v17 guid];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v19 = result;
        sub_190D56F10();

        sub_19081E484();
        LOBYTE(v19) = sub_190D58110();

        if ((v19 & 1) == 0)
        {

          v9 = a5 & 0xFFFFFFFFFFFFFF8;
          v8 = a5 & 0xC000000000000001;
          v10 = &selRef_isStewieActive;
          goto LABEL_11;
        }

        v20 = [v16 originalMessagePartRange];
        v22 = v21;

        v9 = a5 & 0xFFFFFFFFFFFFFF8;
        v23 = a3 >= v20;
        v24 = a3 - v20;
        v8 = a5 & 0xC000000000000001;
        v10 = &selRef_isStewieActive;
        if (v23 && v24 < v22)
        {
          return v7;
        }

LABEL_12:
        ++v7;
        if (v13 == v6)
        {
          return sub_190D50E40();
        }
      }

      v14 = v12;
LABEL_11:

      goto LABEL_12;
    }
  }

  return sub_190D50E40();
}

uint64_t sub_190987A34(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  sub_190D56F10();
  sub_190863204();
  v6 = a1;
  sub_190D57170();

  v7 = sub_190D50E40();

  return v7;
}

uint64_t IMFocusStateManager.updateFocusStateForCurrentFocusFilterAction()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_190221DA4;

  return sub_19021EC00();
}

uint64_t sub_190987BA0(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = sub_190D53020();
  v4 = sub_190D576A0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "Error fetching current ConversationListFocusFilterAction", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_190987C84()
{

  v1 = *(v0 + 96);
  v2 = sub_190D53020();
  v3 = sub_190D576A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v2, v3, "Error fetching current ConversationListFocusFilterAction", v4, 2u);
    MEMORY[0x193AF7A40](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

double sub_190987DC0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_190987E2C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1908424BC;
}

void sub_190987ECC()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for CKSelectionViewController();
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 sharedBehaviors];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [v4 theme];

  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = [v6 transcriptBackgroundColor];

  [v2 setBackgroundColor_];
  v8 = [v0 navigationItem];
  [v8 setLeftItemsSupplementBackButton_];

  v9 = [v0 navigationItem];
  v10 = [v3 sharedBehaviors];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 newComposeImage];

    v13 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v12 style:0 target:v0 action:sel_handleNewComposeSelection];
    [v9 setLeftBarButtonItem_];

    return;
  }

LABEL_9:
  __break(1u);
}

id CKSelectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_190D56ED0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CKSelectionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_macToolbarController] = 0;
  *&v3[OBJC_IVAR____TtC7ChatKit25CKSelectionViewController____lazy_storage___composeToolbarItem] = 1;
  if (a2)
  {
    v6 = sub_190D56ED0();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CKSelectionViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id CKSelectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CKSelectionViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_macToolbarController] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit25CKSelectionViewController____lazy_storage___composeToolbarItem] = 1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CKSelectionViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CKSelectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSelectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CKSelectionViewController.updateContentUnavailableConfiguration(using:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD584D0, &qword_190DE2350);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  if (qword_1EAD461C8 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9D6E8);
  v9 = sub_190D53020();
  v10 = sub_190D576C0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_19020E000, v9, v10, "Updating content unavailable configuration", v11, 2u);
    MEMORY[0x193AF7A40](v11, -1, -1);
  }

  v12 = OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_macToolbarController;
  [*(v1 + OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_macToolbarController) reloadToolbarItems];
  v13 = *(v1 + v12);
  if (v13)
  {
    [v13 updateVirtualViewForProvider_];
  }

  v14 = v1 + OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    (*(v15 + 8))(ObjectType, v15);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = sub_190D533C0();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  }

  sub_19098A7AC(v7, v4);
  v18 = sub_190D533C0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v4, 1, v18) == 1)
  {
    sub_19098A81C(v4);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
  }

  else
  {
    *(&v23 + 1) = v18;
    v24 = MEMORY[0x1E69DC1D0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
    (*(v19 + 32))(boxed_opaque_existential_1, v4, v18);
  }

  sub_190D57820();
  return sub_19098A81C(v7);
}

Swift::Void __swiftcall CKSelectionViewController.configure(with:)(CKMacToolbarController *with)
{
  v2 = *(v1 + OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_macToolbarController);
  *(v1 + OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_macToolbarController) = with;
  v3 = with;

  [(CKMacToolbarController *)v3 setSecondaryItemProvider:v1];

  [(CKMacToolbarController *)v3 setShouldDrawPrimaryBlur:0];
}

Swift::Void __swiftcall CKSelectionViewController.handleNewComposeSelection()()
{
  v1 = v0;
  if (qword_1EAD461C8 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D6E8);
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "Handling new compose selection", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

CKMacToolbarItem_optional __swiftcall CKSelectionViewController.toolbarItem(forIdentifier:)(Swift::String forIdentifier)
{
  if (forIdentifier._countAndFlagsBits == 0xD000000000000024 && 0x8000000190E69E50 == forIdentifier._object || (sub_190D58760() & 1) != 0)
  {
    v3 = sub_19098A884();
    if (v3)
    {
      v4 = v3;
      v5 = v3;
      v3 = v4;
    }
  }

  else
  {
    v3 = 0;
  }

  result.value._itemIdentifier = v1;
  result.value.super.isa = v3;
  result.is_nil = v2;
  return result;
}

char *CKMessagesController.generateSelectionViewController()()
{
  if (qword_1EAD461C8 != -1)
  {
    swift_once();
  }

  v0 = sub_190D53040();
  __swift_project_value_buffer(v0, qword_1EAD9D6E8);
  v1 = sub_190D53020();
  v2 = sub_190D576C0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19020E000, v1, v2, "Generating selection view controller", v3, 2u);
    MEMORY[0x193AF7A40](v3, -1, -1);
  }

  type metadata accessor for CKSelectionViewController();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = &v4[OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_delegate];
  swift_beginAccess();
  *(v5 + 1) = &protocol witness table for CKMessagesController;
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t CKMessagesController.contentUnavailableConfiguration()@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 currentConversationListFilterMode];
  if (qword_1EAD461C8 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9D6E8);
  v5 = sub_190D53020();
  v6 = sub_190D576C0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    v9 = sub_190D57B00();
    v11 = sub_19021D9F8(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_19020E000, v5, v6, "generating content unavailable configuration with filter mode: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x193AF7A40](v8, -1, -1);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  v12 = sub_190D53020();
  v13 = sub_190D576C0();
  v14 = os_log_type_enabled(v12, v13);
  if (v3 == 9)
  {
    if (v14)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_19020E000, v12, v13, "Returning junk configuration", v16, 2u);
      MEMORY[0x193AF7A40](v16, -1, -1);
    }

    sub_190989710();
  }

  else if (v3 == 7)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_19020E000, v12, v13, "Returning recently deleted configuration", v15, 2u);
      MEMORY[0x193AF7A40](v15, -1, -1);
    }

    sub_19098905C();
  }

  else
  {
    if (v14)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_19020E000, v12, v13, "Returning base configuration", v17, 2u);
      MEMORY[0x193AF7A40](v17, -1, -1);
    }

    sub_190D53390();
    sub_190989D94();
    sub_190D53380();
  }

  v18 = sub_190D533C0();
  v19 = *(*(v18 - 8) + 56);

  return v19(a1, 0, 1, v18);
}

void sub_19098905C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E68, &unk_190DDC330);
  *&v2 = MEMORY[0x1EEE9AC00](v1 - 8).n128_u64[0];
  v4 = &v39 - v3;
  v40 = [v0 conversationListController];
  if (!v40)
  {
    goto LABEL_22;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
LABEL_21:

LABEL_22:
    sub_190D58510();
    __break(1u);
    return;
  }

  v6 = v5;
  sub_190D53390();
  sub_190989D94();
  sub_190D53380();
  v7 = [objc_opt_self() sharedFeatureFlags];
  v8 = [v7 isModernFilteringEnabled];

  if ((v8 & 1) == 0)
  {
    v9 = [v6 _recentlyDeletedDisclosureLabelText];
    sub_190D56F10();

    sub_190D53320();
  }

  if (CKIsRunningInMacCatalyst())
  {
    v10 = [v6 collectionView];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 indexPathsForSelectedItems];

      if (v12)
      {
        sub_190D51C00();
        v14 = sub_190D57180();

        v15 = *(v14 + 16);

        HIDWORD(v39) = v15 != 0;
      }

      else
      {
        HIDWORD(v39) = 0;
      }

      v17 = CKFrameworkBundle(v13);
      if (v17)
      {
        v18 = v17;
        v19 = sub_190D56ED0();
        v20 = sub_190D56ED0();
        v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

        sub_190D56F10();
        v22 = sub_190D533B0();
        sub_190D57F80();
        v22(v41, 0);
        sub_1902188FC(0, &qword_1EAD464F0, 0x1E69DC628);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_190D57DC0();
        v23 = sub_190D53360();
        sub_190D53340();
        v23(v41, 0);
        v24 = sub_190D53360();
        sub_190D53350();
        v25 = v24(v41, 0);
        v26 = CKFrameworkBundle(v25);
        if (v26)
        {
          v27 = v26;
          v28 = sub_190D56ED0();
          v29 = sub_190D56ED0();
          v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

          if (!v30)
          {
            sub_190D56F10();
            v30 = sub_190D56ED0();
          }

          v31 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithString_];

          v32 = *MEMORY[0x1E69DB650];
          v33 = [objc_opt_self() systemRedColor];
          v34 = v31;
          [v34 addAttribute:v32 value:v33 range:{0, objc_msgSend(v34, sel_length)}];

          sub_190D51200();
          v35 = sub_190D511C0();
          (*(*(v35 - 8) + 56))(v4, 0, 1, v35);
          v36 = sub_190D53330();
          sub_190D57EB0();
          v36(v41, 0);
          swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_190D57DC0();
          v37 = sub_190D53370();
          sub_190D53340();
          v37(v41, 0);
          v38 = sub_190D53370();
          sub_190D53350();
          v38(v41, 0);

          return;
        }

        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v40;
}

void sub_190989710()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E68, &unk_190DDC330);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v28[-v1];
  sub_190D53390();
  sub_190989D94();
  sub_190D53380();
  v3 = [objc_opt_self() sharedFeatureFlags];
  v4 = [v3 isModernFilteringEnabled];

  if ((v4 & 1) == 0)
  {
    v6 = CKFrameworkBundle(v5);
    if (!v6)
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = sub_190D56ED0();
    v9 = sub_190D56ED0();
    v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

    sub_190D56F10();
    sub_190D53320();
  }

  if (!CKIsRunningInMacCatalyst())
  {
    return;
  }

  v11 = [objc_opt_self() sharedConversationList];
  v12 = [v11 conversationsContainingFilterMode_];

  sub_1902188FC(0, &qword_1EAD466B0, off_1E72E4B40);
  v13 = sub_190D57180();

  if (v13 >> 62)
  {
    sub_190D581C0();
  }

  v15 = CKFrameworkBundle(v14);
  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v17 = sub_190D56ED0();
  v18 = sub_190D56ED0();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  if (!v19)
  {
    sub_190D56F10();
    v19 = sub_190D56ED0();
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithString_];

  v21 = *MEMORY[0x1E69DB650];
  v22 = [objc_opt_self() systemRedColor];
  v23 = v20;
  [v23 addAttribute:v21 value:v22 range:{0, objc_msgSend(v23, sel_length)}];

  sub_190D51200();
  v24 = sub_190D511C0();
  (*(*(v24 - 8) + 56))(v2, 0, 1, v24);
  v25 = sub_190D533B0();
  sub_190D57EB0();
  v25(v28, 0);
  sub_1902188FC(0, &qword_1EAD464F0, 0x1E69DC628);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_190D57DC0();
  v26 = sub_190D53360();
  sub_190D53340();
  v26(v28, 0);
  v27 = sub_190D53360();
  sub_190D53350();
  v27(v28, 0);
}

Swift::Void __swiftcall CKMessagesController.selectionViewControllerSelectedCompose()()
{
  v1 = v0;
  if (qword_1EAD461C8 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D6E8);
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "selectionViewControllerSelectedCompose", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  v7 = [v1 conversationListController];
  if (!v7)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

LABEL_11:
    sub_190D58510();
    __break(1u);
    return;
  }

  [v6 composeButtonClicked_];
}

uint64_t sub_190989D94()
{
  v1 = [v0 conversationListController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 selectedConversations];
      sub_1902188FC(0, &qword_1EAD466B0, off_1E72E4B40);
      v5 = sub_190D57180();

      if (v5 >> 62)
      {
        v6 = sub_190D581C0();
      }

      else
      {
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = sub_19098A01C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
      v8 = swift_allocObject();
      v9 = MEMORY[0x1E69E6530];
      *(v8 + 16) = xmmword_190DD1D90;
      v10 = MEMORY[0x1E69E65A8];
      *(v8 + 56) = v9;
      *(v8 + 64) = v10;
      *(v8 + 32) = v6;
      v11 = CKFrameworkBundle(v8);
      v12 = v11;
      if (v7)
      {
        if (v11)
        {
          goto LABEL_9;
        }

        __break(1u);
      }

      else if (v11)
      {
LABEL_9:
        v13 = sub_190D56ED0();
        v14 = sub_190D56ED0();
        v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

        sub_190D56F10();
        v16 = sub_190D56EE0();

        return v16;
      }

      __break(1u);
    }
  }

  result = sub_190D58510();
  __break(1u);
  return result;
}

uint64_t sub_19098A01C()
{
  v1 = [v0 conversationListController];
  if (!v1)
  {
    goto LABEL_24;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

LABEL_24:
    result = sub_190D58510();
    __break(1u);
    return result;
  }

  v4 = [v3 selectedConversations];
  sub_1902188FC(0, &qword_1EAD466B0, off_1E72E4B40);
  v5 = sub_190D57180();

  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v14 = v2;
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x193AF3B90](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v2 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v10 = [v8 chat];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 isDeletingIncomingMessages];

        if ((v12 & 1) == 0)
        {
          i = 0;
LABEL_17:
          v2 = v14;
          goto LABEL_18;
        }
      }

      else
      {
      }

      ++v7;
      if (v2 == i)
      {
        i = 1;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_18:

  return i;
}

void sub_19098A224(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = [Strong conversationListController];
  if (!v4)
  {
LABEL_15:
    sub_190D58510();
    __break(1u);
    return;
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    goto LABEL_15;
  }

  v7 = v6;
  if (qword_1EAD461C8 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9D6E8);
  v9 = sub_190D53020();
  v10 = sub_190D576C0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_19020E000, v9, v10, "executing deleteAction", v11, 2u);
    MEMORY[0x193AF7A40](v11, -1, -1);
  }

  v12 = [v3 currentConversationListFilterMode];
  if (v12 == 9)
  {
    [v7 _permanentDeleteSelectedJunkButtonTapped_];
  }

  else if (v12 == 7)
  {
    [v7 _permanentDeleteSelectedConversations];
  }
}

void sub_19098A410(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = [Strong conversationListController];
  if (!v4)
  {
LABEL_13:
    sub_190D58510();
    __break(1u);
    return;
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    goto LABEL_13;
  }

  v7 = v6;
  if (qword_1EAD461C8 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9D6E8);
  v9 = sub_190D53020();
  v10 = sub_190D576C0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_19020E000, v9, v10, "executing deleteAllAction", v11, 2u);
    MEMORY[0x193AF7A40](v11, -1, -1);
  }

  if ([v3 currentConversationListFilterMode] == 9)
  {
    [v7 _permanentDeleteAllJunkButtonTapped_];
  }
}

void sub_19098A5E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = [Strong conversationListController];
  if (!v4)
  {
LABEL_13:
    sub_190D58510();
    __break(1u);
    return;
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    goto LABEL_13;
  }

  v7 = v6;
  if (qword_1EAD461C8 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9D6E8);
  v9 = sub_190D53020();
  v10 = sub_190D576C0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_19020E000, v9, v10, "executing recoverAction", v11, 2u);
    MEMORY[0x193AF7A40](v11, -1, -1);
  }

  if ([v3 currentConversationListFilterMode] == 7)
  {
    [v7 _recoverSelectedConversations];
  }
}

uint64_t sub_19098A7AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD584D0, &qword_190DE2350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19098A81C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD584D0, &qword_190DE2350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19098A884()
{
  result = *(v0 + OBJC_IVAR____TtC7ChatKit25CKSelectionViewController____lazy_storage___composeToolbarItem);
  if (result == 1)
  {
    result = 0;
    *(v0 + OBJC_IVAR____TtC7ChatKit25CKSelectionViewController____lazy_storage___composeToolbarItem) = 0;
  }

  return result;
}

id CKSuggestedRepliesMessagePartChatItem.__allocating_init(imChatItem:maxWidth:)(void *a1, double a2)
{
  v4 = [objc_allocWithZone(v2) initWithIMChatItem:a1 maxWidth:a2];

  return v4;
}

id CKSuggestedRepliesMessagePartChatItem.init(imChatItem:maxWidth:)(void *a1, double a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    type metadata accessor for CKSuggestedRepliesMessagePartChatItem();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6 = v5;
  v7 = a1;
  result = [v6 suggestedRepliesList];
  if (result)
  {
    v9 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD584E8, &unk_190DE23F0);
    v10 = sub_190D57180();

    *&v2[OBJC_IVAR____TtC7ChatKit37CKSuggestedRepliesMessagePartChatItem_suggestedRepliesList] = v10;
    v11 = [v6 selectedIndex];

    *&v2[OBJC_IVAR____TtC7ChatKit37CKSuggestedRepliesMessagePartChatItem_selectedIndex] = v11;
    v14.receiver = v2;
    v14.super_class = type metadata accessor for CKSuggestedRepliesMessagePartChatItem();
    v12 = v7;
    v13 = objc_msgSendSuper2(&v14, sel_initWithIMChatItem_maxWidth_, v12, a2);

    if (v13)
    {
    }

    return v13;
  }

  __break(1u);
  return result;
}

id CKSuggestedRepliesMessagePartChatItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKSuggestedRepliesMessagePartChatItem.__allocating_init(notification:maxWidth:)(void *a1, double a2)
{
  v4 = [objc_allocWithZone(v2) initWithNotification:a1 maxWidth:a2];

  return v4;
}

id CKSuggestedRepliesMessagePartChatItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSuggestedRepliesMessagePartChatItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_19098AD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  sub_190D50920();
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_19098AE18()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return swift_deallocClassInstance();
}

ChatKit::TapbackPickerViewController::Section_optional __swiftcall TapbackPickerViewController.Section.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_19098AE74@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

double sub_19098AF7C(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_19098AFDC(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___CKTapbackPickerViewController_tapbackPickerViewControllerDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

id sub_19098B074(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR___CKTapbackPickerViewController__xPointForBoundaryBetweenSections;
  *v4 = *a1;
  *(v4 + 8) = v3;
  v5 = sub_19098B380();
  v6 = &v5[OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections];
  *v6 = v2;
  v6[8] = v3;

  return sub_19098C7B0();
}

id sub_19098B0F4(uint64_t a1, char a2)
{
  v4 = v2 + OBJC_IVAR___CKTapbackPickerViewController__xPointForBoundaryBetweenSections;
  *v4 = a1;
  v5 = a2 & 1;
  *(v4 + 8) = a2 & 1;
  v6 = sub_19098B380();
  v7 = &v6[OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections];
  *v7 = a1;
  v7[8] = v5;

  return sub_19098C7B0();
}

id (*sub_19098B164(uint64_t a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR___CKTapbackPickerViewController__xPointForBoundaryBetweenSections;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v3 = (v1 + v2);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a1 = v4;
  *(a1 + 8) = v3;
  return sub_19098B1A4;
}

id sub_19098B1A4(uint64_t *a1)
{
  v1 = a1[2] + a1[3];
  v2 = *a1;
  v3 = *(a1 + 8);
  *v1 = *a1;
  *(v1 + 8) = v3;
  v4 = sub_19098B380();
  v5 = &v4[OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections];
  *v5 = v2;
  v5[8] = v3;

  return sub_19098C7B0();
}

void sub_19098B210(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_19098B26C(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR___CKTapbackPickerViewController_gradientReferenceView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_19098B304;
}

void sub_19098B304(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_19098B380()
{
  v1 = OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionView);
  }

  else
  {
    v4 = sub_19098B448();
    v5 = [objc_allocWithZone(type metadata accessor for TapbackPickerCollectionView()) initWithFrame:v4 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    [v5 setContentInsetAdjustmentBehavior_];
    [v5 setDelegate_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_19098B448()
{
  v1 = OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionViewLayout;
  v2 = *&v0[OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionViewLayout];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionViewLayout];
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for TapbackPickerCollectionViewLayout());
    v5 = sub_19098CFB4(v0, v4);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_19098B4C0()
{
  v1 = OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionViewDataSource;
  v2 = *(v0 + OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionViewDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionViewDataSource);
  }

  else
  {
    v4 = v0;
    sub_19098B380();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58630, &qword_190DE2638));
    v6 = sub_190D533D0();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id TapbackPickerViewController.init(chatItem:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___CKTapbackPickerViewController_tapbackPickerViewControllerEmojiKeyboardCellDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR___CKTapbackPickerViewController_tapbackPickerItems;
  *&v1[v3] = sub_190821C10(MEMORY[0x1E69E7CC0]);
  v4 = &v1[OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackItemIdentifier];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackBackgroundColor] = 1;
  v5 = &v1[OBJC_IVAR___CKTapbackPickerViewController__xPointForBoundaryBetweenSections];
  *v5 = 0;
  v5[8] = 1;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR___CKTapbackPickerViewController_needsPresentationAnimation] = 0;
  *&v1[OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionView] = 0;
  *&v1[OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionViewLayout] = 0;
  *&v1[OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionViewDataSource] = 0;
  *&v1[OBJC_IVAR___CKTapbackPickerViewController_collectionViewTopConstraint] = 0;
  *&v1[OBJC_IVAR___CKTapbackPickerViewController_collectionViewBottomConstraint] = 0;
  v1[OBJC_IVAR___CKTapbackPickerViewController_sectionForPreferredContentSize] = 0;
  *&v1[OBJC_IVAR___CKTapbackPickerViewController_numberOfClassicItemsShown] = 0x4018000000000000;
  *&v1[OBJC_IVAR___CKTapbackPickerViewController_numberOfItemsToPeek] = 0x3FF8000000000000;
  v6 = type metadata accessor for TapbackPickerContentProvider();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  v8 = &v1[OBJC_IVAR___CKTapbackPickerViewController_contentProvider];
  v8[3] = v6;
  v8[4] = &off_1F0413298;
  *v8 = v7;
  *&v1[OBJC_IVAR___CKTapbackPickerViewController_ckChatItem] = a1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for TapbackPickerViewController();
  sub_190D50920();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
  *(v7 + 24) = &off_1F040FB70;
  swift_unknownObjectWeakAssign();

  return v9;
}

void sub_19098B858(uint64_t a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for TapbackPickerViewController();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v2 = sub_19098B380();
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  v3 = OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionView;
  v4 = *&v1[OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionView];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor_];

  [*&v1[v3] setShowsVerticalScrollIndicator_];
  [*&v1[v3] setShowsHorizontalScrollIndicator_];
  [*&v1[v3] setDelaysContentTouches_];
  sub_19082824C();
  sub_190828A74();
  v8 = *&v1[v3];
  sub_190829A4C(v8);

  v9 = *&v1[v3];
  v10 = sub_19098B4C0();
  [v9 setDataSource_];

  v15 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 1;
  sub_19098C510(&v15, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50, &unk_190DD5F90);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_190DD1D90;
  v12 = sub_190D53270();
  v13 = MEMORY[0x1E69DC0F8];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  sub_190D57810();
  swift_unknownObjectRelease();

  v14 = [objc_opt_self() defaultCenter];
  [v14 addObserver:v1 selector:sel_tapbackPreviewDidChange_ name:@"CKPreviewDidChangeNotification" object:0];
}

double sub_19098BB3C()
{
  v0 = sub_19098B380();
  [v0 safeAreaInsets];
  v2 = v1;

  return v2;
}

uint64_t sub_19098BBA0()
{
  v0 = sub_190D56770();
  v11 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D567A0();
  v3 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670, 0x1E69E9610);
  v6 = sub_190D57870();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_19098D838;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_62_1;
  v8 = _Block_copy(aBlock);

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0, &unk_190DD6E80);
  sub_190233640(&qword_1EAD46730, &unk_1EAD546A0, &unk_190DD6E80, MEMORY[0x1E69E6328]);
  sub_190D58170();
  MEMORY[0x193AF3110](0, v5, v2, v8);
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

void sub_19098BE68(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490, &qword_190E08180);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v28 - v2;
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58620, &qword_190DE2630);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_190828028();
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_190828E38();
    v16 = sub_19098B4C0();
    sub_190D53420();

    (*(v9 + 8))(v11, v8);
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19 && (v21 = *(v19 + OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackItemIdentifier), v20 = *(v19 + OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackItemIdentifier + 8), v22 = v19, sub_190D52690(), v22, v20))
    {
      v23 = sub_19098B4C0();
      v28[1] = v21;
      v28[2] = v20;
      sub_190D53440();

      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {

        sub_19098D840(v3);
      }

      else
      {
        (*(v5 + 32))(v7, v3, v4);
        v24 = sub_19098B380();
        v25 = sub_190D51BB0();
        [v24 selectItemAtIndexPath:v25 animated:0 scrollPosition:0];

        (*(v5 + 8))(v7, v4);
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    sub_190AEA8BC(0.0);
  }
}

void sub_19098C20C()
{
  v1 = sub_19098B380();
  v2 = *&v1[OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections];
  v3 = v1[OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections + 8];
  v4 = [v1 collectionViewLayout];
  type metadata accessor for TapbackPickerCollectionViewLayout();
  if (swift_dynamicCastClass())
  {
    v5 = 0.0;
    if (!v3)
    {
      v5 = v2;
    }

    LOBYTE(v9[0]) = 0;
    v6 = sub_190CA70AC(v9, v5);

    if (v6 > 0.5)
    {
      if ((*(v0 + OBJC_IVAR___CKTapbackPickerViewController_sectionForPreferredContentSize) & 1) == 0)
      {
        return;
      }

      v7 = 0;
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (*(v0 + OBJC_IVAR___CKTapbackPickerViewController_sectionForPreferredContentSize))
  {
    return;
  }

  v7 = 1;
LABEL_10:
  v8 = v7;
  memset(v9, 0, sizeof(v9));
  v10 = 1;
  sub_19098C510(&v8, v9);
}

double sub_19098C328()
{
  v1 = OBJC_IVAR___CKTapbackPickerViewController_numberOfClassicItemsShown;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_19098C36C(double a1)
{
  v3 = OBJC_IVAR___CKTapbackPickerViewController_numberOfClassicItemsShown;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_19098C41C()
{
  v1 = OBJC_IVAR___CKTapbackPickerViewController_numberOfItemsToPeek;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_19098C460(double a1)
{
  v3 = OBJC_IVAR___CKTapbackPickerViewController_numberOfItemsToPeek;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_19098C510(char *a1, uint64_t a2)
{
  v4 = *a1;
  [v2 preferredContentSize];
  v6 = v5;
  v8 = v7;
  v2[OBJC_IVAR___CKTapbackPickerViewController_sectionForPreferredContentSize] = v4;
  v20[0] = v4;
  v9 = OBJC_IVAR___CKTapbackPickerViewController_numberOfClassicItemsShown;
  swift_beginAccess();
  v10 = *&v2[v9];
  v11 = OBJC_IVAR___CKTapbackPickerViewController_numberOfItemsToPeek;
  swift_beginAccess();
  Width = sub_19098C6A0(v20, v10 + *&v2[v11]);
  v14 = v13;
  if ((*(a2 + 32) & 1) == 0)
  {
    v16 = *(a2 + 16);
    v15 = *(a2 + 24);
    v18 = *a2;
    v17 = *(a2 + 8);
    v21.origin.x = *a2;
    v21.origin.y = v17;
    v21.size.width = v16;
    v21.size.height = v15;
    if (CGRectGetWidth(v21) < Width)
    {
      v22.origin.x = v18;
      v22.origin.y = v17;
      v22.size.width = v16;
      v22.size.height = v15;
      Width = CGRectGetWidth(v22);
    }
  }

  [v2 setPreferredContentSize_];
  if (vabdd_f64(v6, Width) > 0.001 || vabdd_f64(v8, v14) > 0.001)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong tapbackPickerViewControllerDidChangePreferredContentSize_];
      swift_unknownObjectRelease();
    }
  }
}

double sub_19098C6A0(_BYTE *a1, double a2)
{
  if (*a1 != 1)
  {
    goto LABEL_9;
  }

  v4 = OBJC_IVAR___CKTapbackPickerViewController_tapbackPickerItems;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!*(v5 + 16) || (v6 = sub_1908789E4(), (v7 & 1) == 0))
  {
    v10 = 0.0;
    if (a2 >= 0.0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v10 = a2;
    goto LABEL_10;
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  if (v8 >> 62)
  {
    v9 = sub_190D581C0();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v9;
  if (v9 > a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_190CA73FC();
  sub_190CA7A78();
  v11 = sub_190CA73FC() * 44.0;
  v12 = sub_190CA8000();
  v13 = v10 * (v11 + v12 + v12);
  v14 = sub_190CA7A78();
  return v13 + v14 - sub_190CA8000();
}

id sub_19098C7B0()
{
  v1 = &v0[OBJC_IVAR___CKTapbackPickerViewController__xPointForBoundaryBetweenSections];
  v2 = *&v0[OBJC_IVAR___CKTapbackPickerViewController__xPointForBoundaryBetweenSections];
  v3 = v0[OBJC_IVAR___CKTapbackPickerViewController__xPointForBoundaryBetweenSections + 8];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v5 = result;
  if (v3)
  {
    v2 = 0.0;
  }

  [result bounds];
  v7 = v6;

  v8 = fmod(v2, v7);
  v9 = sub_19098B380();
  [v9 _setPagingOrigin_];

  v10 = OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionView;
  v11 = *&v0[OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionView];
  [v11 contentOffset];
  v13 = v12;
  result = [v0 view];
  if (!result)
  {
    goto LABEL_15;
  }

  v14 = result;
  [result frame];
  v16 = v15;

  [v11 contentSize];
  v18 = v17;

  v19 = v16 + v16;
  if (v16 + v16 >= v18)
  {
    goto LABEL_10;
  }

  if ((v1[1] & 1) == 0)
  {
    v19 = *v1;
    if (*v1 < v13)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 1;
    goto LABEL_11;
  }

  if (v13 <= 0.0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = 0;
LABEL_11:
  v21 = *&v0[v10];

  return [v21 setPagingEnabled_];
}

void sub_19098C934(void *a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_19098D184;
  *(v5 + 24) = v4;
  v10[4] = sub_190838A04;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_19088B7B8;
  v10[3] = &block_descriptor_49;
  v6 = _Block_copy(v10);
  v7 = v1;
  v8 = a1;
  sub_190D50920();

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id TapbackPickerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_190D56ED0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TapbackPickerViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TapbackPickerViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void (*sub_19098CD08(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_19098B164(v2);
  return sub_190854AE0;
}

uint64_t sub_19098CDD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = [Strong contextualCKChatItemsForTapbackPickerViewController_];
  swift_unknownObjectRelease();
  sub_1902188FC(0, &qword_1EAD450F0, off_1E72E4A90);
  v3 = sub_190D57180();

  return v3;
}

id sub_19098CE88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = [Strong shouldShowStickerSuggestionsFor_];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_19098CF08(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = [Strong smartEmojiResponses:v2 chatItem:a2];
  swift_unknownObjectRelease();
  v6 = sub_190D57180();

  return v6;
}

id sub_19098CFB4(void *a1, char *a2)
{
  *&a2[OBJC_IVAR___CKTapbackPickerCollectionViewLayout_tapbackPickerLayoutDelegate + 8] = 0;
  v4 = swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR___CKTapbackPickerCollectionViewLayout____lazy_storage___dynamicAnimator] = 0;
  v5 = &a2[OBJC_IVAR___CKTapbackPickerCollectionViewLayout_lastPanGestureRecognizerPositionInCollectionViewCoordinates];
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v4 + 8) = &protocol witness table for TapbackPickerViewController;
  swift_unknownObjectWeakAssign();
  v6 = swift_allocObject();
  *(v6 + 24) = &protocol witness table for TapbackPickerViewController;
  swift_unknownObjectWeakInit();
  v7 = [objc_allocWithZone(MEMORY[0x1E69DC810]) init];
  [v7 setContentInsetsReference_];
  [v7 setScrollDirection_];
  aBlock[4] = sub_19098D8A8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19098AD9C;
  aBlock[3] = &block_descriptor_68_2;
  v8 = _Block_copy(aBlock);
  sub_190D50920();

  v11.receiver = a2;
  v11.super_class = type metadata accessor for TapbackPickerCollectionViewLayout();
  v9 = objc_msgSendSuper2(&v11, sel_initWithSectionProvider_configuration_, v8, v7);

  _Block_release(v8);
  return v9;
}

void sub_19098D184()
{
  v1 = *(v0 + 24);
  TapbackPickerViewController.updateScrollViewEdgeEffects(forCell:)(v1);
  TapbackPickerViewController.updateSectionVisiblity(forCell:)(v1);
}

unint64_t sub_19098D1C4()
{
  result = qword_1EAD58588;
  if (!qword_1EAD58588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58588);
  }

  return result;
}

double keypath_setTm_2(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return result;
}

uint64_t dispatch thunk of TapbackPickerViewController.updatePreferredContentSize(forSection:presentationBounds:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x2C0);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return v4(a1, v7);
}

uint64_t sub_19098D840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490, &qword_190E08180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_19098D8B0()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___CKTapbackPickerViewController_tapbackPickerViewControllerEmojiKeyboardCellDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR___CKTapbackPickerViewController_tapbackPickerItems;
  *(v0 + v1) = sub_190821C10(MEMORY[0x1E69E7CC0]);
  v2 = (v0 + OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackItemIdentifier);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackBackgroundColor) = 1;
  v3 = v0 + OBJC_IVAR___CKTapbackPickerViewController__xPointForBoundaryBetweenSections;
  *v3 = 0;
  *(v3 + 8) = 1;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___CKTapbackPickerViewController_needsPresentationAnimation) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionViewLayout) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionViewDataSource) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPickerViewController_collectionViewTopConstraint) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPickerViewController_collectionViewBottomConstraint) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPickerViewController_sectionForPreferredContentSize) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPickerViewController_numberOfClassicItemsShown) = 0x4018000000000000;
  *(v0 + OBJC_IVAR___CKTapbackPickerViewController_numberOfItemsToPeek) = 0x3FF8000000000000;
  sub_190D58510();
  __break(1u);
}

uint64_t sub_19098DA28()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD58640);
  __swift_project_value_buffer(v0, qword_1EAD58640);
  return sub_190D53030();
}

Swift::Void __swiftcall CKChatController.configureFooterIfNeeded()()
{
  v1 = v0;
  v2 = [v0 chat];
  if (v2)
  {
    v3 = v2;
    if ([v2 allowedByScreenTime])
    {
    }

    else
    {
      v4 = [v1 previewingChatForScreenTime];

      if ((v4 & 1) == 0)
      {
        return;
      }
    }
  }

  v5 = [v1 chatFooterView];
  if (!v5)
  {
    v9 = [v1 conversation];
    v10 = [v9 chat];

    if (v10)
    {
      if (([(objc_class *)v10 allowedByScreenTime]& 1) == 0)
      {
        v146 = v10;
        v65 = [v1 deleteAlertFor_];
        v142 = sub_19098EC9C(v65);
        v66 = swift_allocObject();
        *(v66 + 16) = v1;
        *(v66 + 24) = v65;
        v67 = type metadata accessor for FooterButtonAction();
        v68 = objc_allocWithZone(v67);
        swift_getObjectType();
        v69 = v1;
        v70 = v65;
        v71 = CKFrameworkBundle(v70);
        if (!v71)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v72 = v71;
        v73 = sub_190D56ED0();
        v74 = sub_190D56ED0();
        v75 = [v72 localizedStringForKey:v73 value:0 table:v74];

        sub_190D56F10();
        v138 = v66;
        v76 = sub_190D57DC0();

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        v77 = OBJC_IVAR___CKFooterButtonAction_type;
        swift_beginAccess();
        *&v76[v77] = 2;
        v78 = [v69 deleteAlertFor_];
        v79 = sub_19098EC9C(v78);
        v80 = swift_allocObject();
        *(v80 + 16) = v69;
        v81 = objc_allocWithZone(v67);
        swift_getObjectType();
        v82 = v69;
        sub_190BDE144(5);
        v139 = v80;
        v83 = sub_190D57DC0();

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        v84 = OBJC_IVAR___CKFooterButtonAction_type;
        swift_beginAccess();
        *&v83[v84] = 5;
        [v76 setAttributes_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_190DD5CE0;
        *(inited + 32) = v76;
        *(inited + 40) = v83;
        v86 = type metadata accessor for FooterButtonsContainer();
        v87 = objc_allocWithZone(v86);
        v88 = OBJC_IVAR___CKFooterButtonsContainer_stackView;
        v89 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
        v90 = v76;
        v58 = v83;
        *&v87[v88] = [v89 init];
        *&v87[OBJC_IVAR___CKFooterButtonsContainer_buttons] = MEMORY[0x1E69E7CC0];
        v147.receiver = v87;
        v147.super_class = v86;
        v61 = v90;
        v62 = objc_msgSendSuper2(&v147, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
        v64 = v62;
        sub_190CD61C8(inited, 0);

        goto LABEL_30;
      }
    }

    v11 = [v1 conversation];
    v12 = [v11 inUnknownSendersFilter];

    if (v12)
    {
      v13 = [v1 chat];
      if (v13 && (v14 = v13, v15 = [v13 canUnsubscribe], v14, v15))
      {
        v16 = [v1 deleteAlertFor_];
        v17 = sub_19098EC9C(v16);
        v18 = swift_allocObject();
        *(v18 + 16) = v1;
        *(v18 + 24) = v16;
        v144 = type metadata accessor for FooterButtonAction();
        v19 = objc_allocWithZone(v144);
        swift_getObjectType();
        v20 = v1;
        v21 = v16;
        v22 = CKFrameworkBundle(v21);
        if (!v22)
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v23 = v22;
        v24 = sub_190D56ED0();
        v25 = sub_190D56ED0();
        v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

        sub_190D56F10();
        v134 = sub_190992070;
        v135 = v18;
        v27 = sub_190D57DC0();

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        v28 = OBJC_IVAR___CKFooterButtonAction_type;
        swift_beginAccess();
        v29 = 3;
      }

      else
      {
        v91 = [v1 deleteAlertFor_];
        v92 = sub_19098EC9C(v91);
        v93 = swift_allocObject();
        *(v93 + 16) = v1;
        *(v93 + 24) = v91;
        v144 = type metadata accessor for FooterButtonAction();
        v94 = objc_allocWithZone(v144);
        swift_getObjectType();
        v95 = v1;
        v96 = v91;
        v97 = CKFrameworkBundle(v96);
        if (!v97)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v98 = v97;
        v99 = sub_190D56ED0();
        v100 = sub_190D56ED0();
        v101 = [v98 localizedStringForKey:v99 value:0 table:v100];

        sub_190D56F10();
        v134 = sub_190991A78;
        v135 = v93;
        v27 = sub_190D57DC0();

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        v28 = OBJC_IVAR___CKFooterButtonAction_type;
        swift_beginAccess();
        v29 = 2;
      }

      *&v27[v28] = v29;
      v62 = v27;
      [v62 setAttributes_];
      v102 = [v1 deleteAlertFor_];
      v103 = sub_19098EC9C(v102);
      v104 = swift_allocObject();
      *(v104 + 16) = v1;
      type metadata accessor for FooterButtonAction();
      v105 = objc_allocWithZone(v144);
      swift_getObjectType();
      v106 = v1;
      sub_190BDE144(0);
      v140 = v104;
      v107 = sub_190D57DC0();

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      v108 = OBJC_IVAR___CKFooterButtonAction_type;
      swift_beginAccess();
      *&v107[v108] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
      v109 = swift_initStackObject();
      *(v109 + 16) = xmmword_190DD5CE0;
      *(v109 + 32) = v62;
      *(v109 + 40) = v107;
      v110 = type metadata accessor for FooterButtonsContainer();
      v111 = objc_allocWithZone(v110);
      v112 = OBJC_IVAR___CKFooterButtonsContainer_stackView;
      v113 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
      v61 = v107;
      *&v111[v112] = [v113 init];
      *&v111[OBJC_IVAR___CKFooterButtonsContainer_buttons] = MEMORY[0x1E69E7CC0];
      v148.receiver = v111;
      v148.super_class = v110;
      v58 = objc_msgSendSuper2(&v148, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      v63 = v109;
      v64 = v58;
    }

    else
    {
      v30 = [v1 conversation];
      v31 = [v30 chat];

      if (!v31)
      {
        goto LABEL_36;
      }

      v32 = [v31 isFiltered];

      if (v32 != 2)
      {
        goto LABEL_36;
      }

      v33 = [v1 deleteAlertFor_];
      v141 = sub_19098EC9C(v33);
      v34 = swift_allocObject();
      *(v34 + 16) = v1;
      *(v34 + 24) = v33;
      v145 = type metadata accessor for FooterButtonAction();
      v35 = objc_allocWithZone(v145);
      swift_getObjectType();
      v36 = v1;
      v37 = v33;
      v38 = CKFrameworkBundle(v37);
      if (!v38)
      {
LABEL_46:
        __break(1u);
        return;
      }

      v39 = v38;
      v40 = sub_190D56ED0();
      v41 = sub_190D56ED0();
      v42 = [v39 localizedStringForKey:v40 value:0 table:v41];

      sub_190D56F10();
      v136 = v34;
      v43 = sub_190D57DC0();

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      v44 = OBJC_IVAR___CKFooterButtonAction_type;
      swift_beginAccess();
      *&v43[v44] = 4;
      [v43 setAttributes_];
      v45 = [v36 deleteAlertFor_];
      v46 = sub_19098EC9C(v45);
      v47 = swift_allocObject();
      *(v47 + 16) = v36;
      *(v47 + 24) = v46;
      v48 = objc_allocWithZone(v145);
      swift_getObjectType();
      v49 = v36;
      v50 = v46;
      sub_190BDE144(1);
      v137 = v47;
      v51 = sub_190D57DC0();

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      v52 = OBJC_IVAR___CKFooterButtonAction_type;
      swift_beginAccess();
      *&v51[v52] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
      v53 = swift_initStackObject();
      *(v53 + 16) = xmmword_190DD5CE0;
      *(v53 + 32) = v51;
      *(v53 + 40) = v43;
      v54 = type metadata accessor for FooterButtonsContainer();
      v55 = objc_allocWithZone(v54);
      v56 = OBJC_IVAR___CKFooterButtonsContainer_stackView;
      v57 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
      v58 = v51;
      v59 = v43;
      v60 = v57;
      v61 = v59;
      *&v55[v56] = [v60 init];
      *&v55[OBJC_IVAR___CKFooterButtonsContainer_buttons] = MEMORY[0x1E69E7CC0];
      v149.receiver = v55;
      v149.super_class = v54;
      v62 = objc_msgSendSuper2(&v149, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      v63 = v53;
      v64 = v62;
    }

    sub_190CD61C8(v63, 0);
LABEL_30:

    swift_setDeallocating();
    swift_arrayDestroy();
    if (v64)
    {
      v114 = [v1 view];
      if (v114)
      {
        v115 = v114;
        v116 = v64;
        [v115 addSubview_];

        [v116 setTranslatesAutoresizingMaskIntoConstraints_];
        v117 = [v116 bottomAnchor];

        v118 = [v1 view];
        if (v118)
        {
          v119 = v118;
          v120 = [v118 bottomAnchor];

          v121 = [v117 constraintEqualToAnchor_];
          [v121 setActive_];

          v122 = [v116 leadingAnchor];
          v123 = [v1 view];
          if (v123)
          {
            v124 = v123;
            v125 = [v123 safeAreaLayoutGuide];

            v126 = [v125 leadingAnchor];
            v127 = [v122 constraintEqualToAnchor_];

            [v127 setActive_];
            v128 = [v116 trailingAnchor];

            v129 = [v1 view];
            if (v129)
            {
              v130 = v129;
              v131 = [v129 safeAreaLayoutGuide];

              v132 = [v131 trailingAnchor];
              v133 = [v128 constraintEqualToAnchor_];

              [v133 setActive_];
              [v1 setChatFooterView_];

              return;
            }

            goto LABEL_42;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_36:
    [v1 setChatFooterView_];
    return;
  }

  v6 = v5;
  if (([v1 needsFooter] & 1) == 0)
  {
    v7 = [v1 chatFooterView];
    [v7 removeFromSuperview];

    [v1 setChatFooterView_];
    [v1 reloadEntryViewIfNeeded];
  }

  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_39;
  }

  v143 = v8;
  [(objc_class *)v8 bringSubviewToFront:v6];
}

id sub_19098EC9C(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  v4 = sub_190D56ED0();
  v5 = sub_190D56ED0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_190D56F10();
  v7 = sub_190D56ED0();

  v8 = [objc_opt_self() alertControllerWithTitle:0 message:v7 preferredStyle:0];

  result = CKFrameworkBundle(v9);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  v11 = sub_190D56ED0();
  v12 = sub_190D56ED0();
  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  sub_190D56F10();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v15 = v1;
  v16 = sub_190D56ED0();

  v41 = sub_190992034;
  v42 = v14;
  v37 = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_19084156C;
  v40 = &block_descriptor_76;
  v17 = _Block_copy(&v37);

  v18 = objc_opt_self();
  v19 = [v18 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  result = CKFrameworkBundle([v8 addAction_]);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = result;
  v21 = sub_190D56ED0();
  v22 = sub_190D56ED0();
  v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

  sub_190D56F10();
  v24 = swift_allocObject();
  *(v24 + 16) = v15;
  v25 = v15;
  v26 = sub_190D56ED0();

  v41 = sub_19099203C;
  v42 = v24;
  v37 = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_19084156C;
  v40 = &block_descriptor_82;
  v27 = _Block_copy(&v37);

  v28 = [v18 actionWithTitle:v26 style:0 handler:v27];
  _Block_release(v27);

  result = CKFrameworkBundle([v8 addAction_]);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v29 = result;
  v30 = sub_190D56ED0();
  v31 = sub_190D56ED0();
  v32 = [v29 localizedStringForKey:v30 value:0 table:v31];

  sub_190D56F10();
  v33 = sub_190D56ED0();

  v41 = nullsub_10;
  v42 = 0;
  v37 = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_19084156C;
  v40 = &block_descriptor_85_0;
  v34 = _Block_copy(&v37);

  v35 = 1;
  v36 = [v18 actionWithTitle:v33 style:1 handler:v34];
  _Block_release(v34);

  [v8 addAction_];
  if ((IMSharedHelperDeviceIsiPad() & 1) == 0)
  {
    v35 = CKIsRunningInMacCatalyst() != 0;
  }

  [v8 setPreferredStyle_];
  [v8 setPreferredAction_];

  return v8;
}

void sub_19098F270(char a1, void *a2, void *a3)
{
  if (a1)
  {
    if (qword_1EAD51A88 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD58640);
    v5 = a3;
    v6 = sub_190D53020();
    v7 = sub_190D57680();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = [v5 chat];
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_19020E000, v6, v7, "Chat marked as known: %@", v8, 0xCu);
      sub_19022EEA4(v9, &unk_1EAD54610, &qword_190DD6010);
      MEMORY[0x193AF7A40](v9, -1, -1);
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

    [v5 showOrHideAcceptedContactBannerIfNeeded];
  }

  else
  {
    if (qword_1EAD51A88 != -1)
    {
      swift_once();
    }

    v12 = sub_190D53040();
    __swift_project_value_buffer(v12, qword_1EAD58640);
    v13 = a2;
    v14 = sub_190D53020();
    v15 = sub_190D576A0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_190D58800();
      v20 = sub_19021D9F8(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_19020E000, v14, v15, "Failed to mark as known: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x193AF7A40](v17, -1, -1);
      MEMORY[0x193AF7A40](v16, -1, -1);
    }
  }

  v21 = [a3 chat];
  [v21 _reloadChatItemsForFilteringChange];
}

void sub_19098F53C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_190D50920();
  v6 = a3;
  v5(a2, v6);
}

id sub_19098F63C(int a1, id a2)
{
  v3 = [a2 chat];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    v10[4] = sub_19099202C;
    v10[5] = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_19098F53C;
    v10[3] = &block_descriptor_70;
    v6 = _Block_copy(v10);
    v7 = a2;

    [v4 markAsKnownAndSaveInContacts:1 completion:v6];
    _Block_release(v6);
  }

  [a2 setNeedsEntryViewUpdateForDismissedFooter_];
  v8 = [a2 chatFooterView];
  [v8 removeFromSuperview];

  [a2 setChatFooterView_];
  return [a2 reloadEntryViewIfNeeded];
}

void sub_19098F7A0(char a1, void *a2, void *a3)
{
  if (a1)
  {
    if (qword_1EAD51A88 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD58640);
    v5 = a3;
    v6 = sub_190D53020();
    v7 = sub_190D57680();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = [v5 chat];
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_19020E000, v6, v7, "Chat marked as known: %@", v8, 0xCu);
      sub_19022EEA4(v9, &unk_1EAD54610, &qword_190DD6010);
      MEMORY[0x193AF7A40](v9, -1, -1);
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

    [v5 showOrHideAcceptedContactBannerIfNeeded];
  }

  else
  {
    if (qword_1EAD51A88 != -1)
    {
      swift_once();
    }

    v12 = sub_190D53040();
    __swift_project_value_buffer(v12, qword_1EAD58640);
    v13 = a2;
    oslog = sub_190D53020();
    v14 = sub_190D576A0();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_190D58800();
      v19 = sub_19021D9F8(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_19020E000, oslog, v14, "Failed to mark as known: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x193AF7A40](v16, -1, -1);
      MEMORY[0x193AF7A40](v15, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_19098FA90(void *a1, id a2)
{
  v4 = [a2 conversation];
  if ([a1 sender])
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_190D2B464(v4, a2);

  return sub_19022EEA4(v6, &unk_1EAD551C0, &unk_190DD9790);
}

id sub_19098FB48(int a1, id a2)
{
  v3 = [a2 chat];
  if (v3)
  {
    v4 = v3;
    [v3 recoverFromJunkTo_];
  }

  v5 = [a2 chatFooterView];
  [v5 removeFromSuperview];

  [a2 setChatFooterView_];

  return [a2 reloadEntryViewIfNeeded];
}

id sub_19098FBF8(int a1, id a2)
{
  v3 = [a2 chat];
  [v3 reportNotJunkToTrustKit];

  v4 = [a2 chat];
  if (v4)
  {
    v5 = v4;
    [v4 recoverFromJunkTo_];
  }

  v6 = [a2 chatFooterView];
  [v6 removeFromSuperview];

  [a2 setChatFooterView_];

  return [a2 reloadEntryViewIfNeeded];
}

id CKChatController.deleteAlert(for:)(uint64_t a1)
{
  sub_1909903A0(a1);
  v3 = sub_190D56ED0();

  v4 = [objc_opt_self() alertControllerWithTitle:0 message:v3 preferredStyle:0];

  result = CKFrameworkBundle(v5);
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  v8 = sub_190D56ED0();
  v9 = sub_190D56ED0();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  sub_190D56F10();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v12 = v1;
  v13 = sub_190D56ED0();

  v48 = sub_190991D20;
  v49 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_19084156C;
  v47 = &block_descriptor_50;
  v14 = _Block_copy(&aBlock);

  v15 = objc_opt_self();
  v16 = [v15 actionWithTitle:v13 style:2 handler:v14];
  _Block_release(v14);

  v17 = [v4 addAction_];
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    result = CKFrameworkBundle(v17);
    if (!result)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v18 = result;
    v19 = sub_190D56ED0();
    v20 = sub_190D56ED0();
    v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

    sub_190D56F10();
    v22 = swift_allocObject();
    *(v22 + 16) = v12;
    v23 = v12;
    v24 = sub_190D56ED0();

    v48 = sub_190991D30;
    v49 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = sub_19084156C;
    v47 = &block_descriptor_37;
    v25 = _Block_copy(&aBlock);

    v26 = [v15 actionWithTitle:v24 style:2 handler:v25];
    _Block_release(v25);

    [v4 addAction_];
    if (a1 == 3)
    {
      result = CKFrameworkBundle(v17);
      if (!result)
      {
LABEL_14:
        __break(1u);
        return result;
      }

      v27 = result;
      v28 = sub_190D56ED0();
      v29 = sub_190D56ED0();
      v30 = [v27 &selRef_messageContext + 4];

      sub_190D56F10();
      v31 = swift_allocObject();
      *(v31 + 16) = v23;
      v32 = v23;
      v33 = sub_190D56ED0();

      v48 = sub_190991D28;
      v49 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v45 = 1107296256;
      v46 = sub_19084156C;
      v47 = &block_descriptor_31_0;
      v34 = _Block_copy(&aBlock);

      v35 = [v15 actionWithTitle:v33 style:0 handler:v34];
      _Block_release(v34);

      [v4 addAction_];
    }
  }

  result = CKFrameworkBundle(v17);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v36 = result;
  v37 = sub_190D56ED0();
  v38 = sub_190D56ED0();
  v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

  sub_190D56F10();
  v40 = sub_190D56ED0();

  v48 = nullsub_10;
  v49 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_19084156C;
  v47 = &block_descriptor_25;
  v41 = _Block_copy(&aBlock);

  v42 = 1;
  v43 = [v15 actionWithTitle:v40 style:1 handler:v41];
  _Block_release(v41);

  [v4 addAction_];
  if ((IMSharedHelperDeviceIsiPad() & 1) == 0)
  {
    v42 = CKIsRunningInMacCatalyst() != 0;
  }

  [v4 setPreferredStyle_];

  return v4;
}

id sub_1909903A0(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v6 = result;
      v7 = [result isEnabled];

      result = CKFrameworkBundle(v8);
      v9 = result;
      if (v7)
      {
        if (!result)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      else if (!result)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v10 = sub_190D56ED0();
      v11 = sub_190D56ED0();
      v12 = [v9 localizedStringForKey:v10 value:0 table:v11];
LABEL_22:
      v36 = v12;

      v35 = sub_190D56F10();
      return v35;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v1 = sub_190990F14();
  if ((v1 & 1) == 0)
  {
    result = CKFrameworkBundle(v1);
    if (result)
    {
      v9 = result;
      v10 = sub_190D56ED0();
      v11 = sub_190D56ED0();
      v12 = [v9 localizedStringForKey:v10 value:0 table:v11];
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v2 = sub_190D56ED0();
  v3 = sub_190D56ED0();
  v4 = MEMORY[0x193AF5640](v2, v3);

  if (v4)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41[0] = v39;
  v41[1] = v40;
  if (!*(&v40 + 1))
  {
    v14 = sub_19022EEA4(v41, &unk_1EAD551C0, &unk_190DD9790);
LABEL_20:
    result = CKFrameworkBundle(v14);
    if (result)
    {
      v9 = result;
      v10 = sub_190D56ED0();
      v11 = sub_190D56ED0();
      v12 = [v9 localizedStringForKey:v10 value:0 table:v11];
      goto LABEL_22;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = MEMORY[0x1E69E6158];
  v14 = swift_dynamicCast();
  if ((v14 & 1) == 0)
  {
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80, &unk_190DD64E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_190DD1DA0;
  *(v15 + 32) = v37;
  *(v15 + 40) = v38;
  result = CKFrameworkBundle(v15);
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v16 = result;
  v17 = sub_190D56ED0();
  v18 = sub_190D56ED0();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  v20 = sub_190D56F10();
  v22 = v21;

  *(v15 + 48) = v20;
  *(v15 + 56) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_190DD1D90;
  v24 = objc_opt_self();
  v25 = sub_190D57160();

  v26 = [v24 localizedStringByJoiningStrings_];

  v27 = sub_190D56F10();
  v29 = v28;

  *(v23 + 56) = v13;
  v30 = sub_19081EA10();
  *(v23 + 64) = v30;
  *(v23 + 32) = v27;
  *(v23 + 40) = v29;
  result = CKFrameworkBundle(v30);
  if (result)
  {
    v31 = result;
    v32 = sub_190D56ED0();
    v33 = sub_190D56ED0();
    v34 = [v31 localizedStringForKey:v32 value:0 table:v33];

    sub_190D56F10();
    v35 = sub_190D56EE0();

    return v35;
  }

LABEL_30:
  __break(1u);
  return result;
}