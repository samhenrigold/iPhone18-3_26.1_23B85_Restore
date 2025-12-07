unint64_t sub_18BB37C8C()
{
  result = qword_1EA9D9978;
  if (!qword_1EA9D9978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9978);
  }

  return result;
}

unint64_t sub_18BB37CE4()
{
  result = qword_1EA9D9980;
  if (!qword_1EA9D9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9980);
  }

  return result;
}

uint64_t sub_18BB37D38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242338 && a2 == 0xE400000000000000;
  if (v3 || (sub_18BC21FD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E756F706D6F63 && a2 == 0xE800000000000000 || (sub_18BC21FD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (sub_18BC21FD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_18BC21FD8();

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

uint64_t sub_18BB37E94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_18BC21FD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000 || (sub_18BC21FD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885697139 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_18BC21FD8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_18BB37FA0()
{
  result = qword_1EA9D9988;
  if (!qword_1EA9D9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9988);
  }

  return result;
}

unint64_t sub_18BB37FF4()
{
  result = qword_1EA9D9998;
  if (!qword_1EA9D9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9998);
  }

  return result;
}

double sub_18BB38060(char a1, uint64_t a2, uint64_t a3, double result)
{
  v5 = v4 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_configuration;
  v6 = *(v4 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_configuration);
  v7 = *(v4 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_configuration + 8);
  v8 = *(v4 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_configuration + 16);
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  if (v6 == (a1 & 1))
  {
    if (a3)
    {
      if (v8)
      {
        v9 = v7 == a2 && v8 == a3;
        if (v9 || (sub_18BC21FD8() & 1) != 0)
        {
          goto LABEL_3;
        }
      }
    }

    else if (!v8)
    {
      return result;
    }
  }

  sub_18BB38BA0(result);
LABEL_3:

  return result;
}

void sub_18BB38100()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_iconRegistration;
  v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_iconRegistration);
  if (!v2 || (v3 = swift_allocObject(), swift_unknownObjectWeakInit(), swift_beginAccess(), *(v2 + 24) = sub_18BB392F0, *(v2 + 32) = v3, , (v4 = *(v0 + v1)) == 0))
  {
    v6 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_imageView);
    goto LABEL_6;
  }

  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_imageView);
  if (!v5)
  {
LABEL_6:
    v9 = sub_18BC20B98();
    v7 = [objc_opt_self() systemImageNamed_];

    v8 = 0;
    goto LABEL_7;
  }

  v7 = v5;
  v8 = v7;
LABEL_7:
  [v6 setImage_];
}

void sub_18BB38244(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_imageView);
    v6 = a1;
    if (!a1)
    {
      v7 = sub_18BC20B98();
      v6 = [objc_opt_self() systemImageNamed_];
    }

    v8 = a1;
    [v5 setImage_];
  }
}

id sub_18BB38348(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [*(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_imageView) *a2];
    v7 = [v6 constraintEqualToConstant_];

    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id sub_18BB38408(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_configuration];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_iconRegistration] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView____lazy_storage___imageHeightConstraint] = 0;
  v10 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_imageView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v4[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView____lazy_storage___imageWidthConstraint] = 0;
  v11 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_stackView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v12 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_titleLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v13 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_unreadIndicator;
  *&v4[v13] = [objc_allocWithZone(SFUnreadIndicator) init];
  v16.receiver = v4;
  v16.super_class = _s9TitleViewCMa();
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BB386C4();

  return v14;
}

id sub_18BB38574(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_configuration];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *&v1[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_iconRegistration] = 0;
  *&v1[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView____lazy_storage___imageHeightConstraint] = 0;
  v4 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_imageView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v1[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView____lazy_storage___imageWidthConstraint] = 0;
  v5 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_stackView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v6 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_titleLabel;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v7 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_unreadIndicator;
  *&v1[v7] = [objc_allocWithZone(SFUnreadIndicator) init];
  v12.receiver = v1;
  v12.super_class = _s9TitleViewCMa();
  v8 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_18BB386C4();
  }

  return v9;
}

id sub_18BB386C4()
{
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_imageView];
  [v1 setContentMode_];
  [v1 setTintAdjustmentMode_];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v1 setTintColor_];

  v3 = *&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_stackView];
  [v3 setAlignment_];
  [v3 setSpacing_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = *&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_titleLabel];
  v5 = sub_18BC20B98();
  [v4 setAccessibilityIdentifier_];

  [v4 setAdjustsFontForContentSizeCategory_];
  if (qword_1EA9D2348 != -1)
  {
    swift_once();
  }

  [v4 setFont_];
  [v0 addSubview_];
  [v3 addArrangedSubview_];
  [v3 addArrangedSubview_];
  [v3 addArrangedSubview_];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18BC4EA80;
  *(v7 + 32) = sub_18BB38334();
  *(v7 + 40) = sub_18BB38320();
  v8 = [v3 bottomAnchor];
  v9 = [v0 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 48) = v10;
  v11 = [v3 centerXAnchor];
  v12 = [v0 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  LODWORD(v14) = 1144750080;
  [v13 setPriority_];
  *(v7 + 56) = v13;
  v15 = [v3 leadingAnchor];
  v16 = [v0 leadingAnchor];
  v17 = [v15 constraintGreaterThanOrEqualToAnchor_];

  *(v7 + 64) = v17;
  v18 = [v3 topAnchor];
  v19 = [v0 topAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v7 + 72) = v20;
  v21 = [v3 trailingAnchor];
  v22 = [v0 trailingAnchor];
  v23 = [v21 constraintLessThanOrEqualToAnchor_];

  *(v7 + 80) = v23;
  sub_18BA497D0();
  v24 = sub_18BC20D88();

  [v6 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0, &unk_18BC44660);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_18BC3E410;
  v26 = sub_18BC1FF28();
  v27 = MEMORY[0x1E69DC2B0];
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  MEMORY[0x18CFFCA40](v25, sel_contentSizeCategoryDidChange);
  swift_unknownObjectRelease();

  sub_18BB38BA0(v28);
  sub_18BB38DF0();

  return [v0 tintColorDidChange];
}

void sub_18BB38BA0(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_titleLabel];
  if (*&v1[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_configuration + 16])
  {
    sub_18BC1E3F8();
    v3 = sub_18BC20B98();
  }

  else
  {
    v3 = 0;
  }

  [v2 setText_];

  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = inited;
  v7[3] = sub_18BB392F8;
  v7[4] = v5;
  v15 = sub_18B7D80AC;
  v16 = v7;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_18B7B0DB0;
  v14 = &block_descriptor_47;
  v8 = _Block_copy(&v11);
  swift_retain_n();
  v9 = v1;
  sub_18BC1E1A8();

  v15 = CGRectMake;
  v16 = 0;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_18B8043A0;
  v14 = &block_descriptor_24_0;
  v10 = _Block_copy(&v11);

  [v6 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v10);
  _Block_release(v8);
}

id sub_18BB38DF0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];
  v3 = sub_18BC21438();

  v4 = 16.0;
  if (v3)
  {
    v5 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDD08] compatibleWithTraitCollection:v1];
    [v5 capHeight];
    v4 = v6;
  }

  v7 = sub_18BB38334();
  [v7 setConstant_];

  v8 = sub_18BB38320();
  [v8 setConstant_];

  v9 = *&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_titleLabel];
  v10 = [v0 traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  v12 = sub_18BC21438();

  if (v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  return [v9 setNumberOfLines_];
}

id sub_18BB38FA4()
{
  v8.receiver = v0;
  v8.super_class = _s9TitleViewCMa();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_titleLabel];
  [v0 bounds];
  Width = CGRectGetWidth(v9);
  v3 = sub_18BB38334();
  [v3 constant];
  v5 = v4;

  [*&v0[OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_stackView] spacing];
  return [v1 setPreferredMaxLayoutWidth_];
}

void sub_18BB390A8()
{

  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_unreadIndicator);
}

id sub_18BB3914C()
{
  v2.receiver = v0;
  v2.super_class = _s9TitleViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_18BB39264(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_iconRegistration;
  v3 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewItemView9TitleView_iconRegistration);
  if (v3)
  {
    v4 = a1;
    swift_beginAccess();
    *(v3 + 24) = CGRectMake;
    *(v3 + 32) = 0;

    a1 = v4;
  }

  *(v1 + v2) = a1;
  sub_18BC1E1A8();

  sub_18BB38100();
}

uint64_t sub_18BB39364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_18BC21848();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, v7);
  return (*(**a2 + 1392))(v9);
}

void sub_18BB39468(uint64_t a1)
{
  v26 = a1;
  v23 = *v1;
  v2 = v23;
  v3 = *(v23 + 1328);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v22 = &v21 - v5;
  v6 = sub_18BC21848();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v21 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v21 - v10;
  v12 = *(v2 + 1352);
  swift_beginAccess();
  v13 = *(TupleTypeMetadata2 + 48);
  v25 = v7;
  v14 = *(v7 + 16);
  v14(v11, v1 + v12, v6);
  v14(&v11[v13], v26, v6);
  v26 = v4;
  v15 = *(v4 + 48);
  if (v15(v11, 1, v3) == 1)
  {
    if (v15(&v11[v13], 1, v3) == 1)
    {
      (*(v25 + 8))(v11, v6);
      return;
    }

    goto LABEL_6;
  }

  v14(v27, v11, v6);
  if (v15(&v11[v13], 1, v3) == 1)
  {
    (*(v26 + 8))(v27, v3);
LABEL_6:
    (*(v24 + 8))(v11, TupleTypeMetadata2);
LABEL_7:
    sub_18B8657E0();
    return;
  }

  v16 = v26;
  v17 = v22;
  (*(v26 + 32))(v22, &v11[v13], v3);
  v18 = v27;
  v19 = sub_18BC20AE8();
  v20 = *(v16 + 8);
  v20(v17, v3);
  v20(v18, v3);
  (*(v25 + 8))(v11, v6);
  if ((v19 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_18BB39848(uint64_t a1)
{
  sub_18BB3C1D0(a1);
  v2 = sub_18BC21848();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*sub_18BB398D0(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_18BC21848();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[7] = v10;
  v12 = *(*v1 + 1352);
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[8] = v13;
  v5[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_18BB39A48;
}

void sub_18BB39A48(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_18BB3C1D0(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_18BB3C1D0(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

void sub_18BB39B24(double a1)
{
  v3 = *(*v1 + 1360);
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    sub_18B8657E0();
  }
}

void sub_18BB39B8C(double a1)
{
  v3 = *(*v1 + 1360);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_18BB39B24(v4);
}

void (*sub_18BB39BF0(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 32) = v1;
  v5 = *(*v1 + 1360);
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_18BB39C90;
}

uint64_t sub_18BB39CA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 1368);
  swift_beginAccess();
  v5 = sub_18B8103B0();
  v8 = *(v3 + 1320);
  v9 = &type metadata for SFFluidTabOverviewSupplementary;
  v10 = *(v3 + 1336);
  v11 = v5;
  type metadata accessor for SFFluidCollectionView.LayoutAttributes(255, &v8);
  v6 = sub_18BC21848();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

void *sub_18BB39DAC()
{
  v1 = *v0;
  result = (*(*v0 + 456))();
  if (result)
  {
    v3 = result;
    v4 = sub_18B812A74();

    if (v4)
    {
      v5 = *(v1 + 1320);
      swift_getExtendedExistentialTypeMetadata();
      swift_getExtendedExistentialTypeMetadata();
      if (swift_dynamicCast())
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_18BB39EE0(double a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[165];
  v6 = v4[166];
  v7 = v4[167];
  v8 = v4[168];
  v9 = sub_18B8103B0();
  *&v95 = v5;
  *(&v95 + 1) = v6;
  *&v96 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v96 + 1) = v7;
  *v97 = v8;
  *&v97[8] = v9;
  v76 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v95);
  v88 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v71 - v10;
  *&v95 = v5;
  *(&v95 + 1) = v6;
  v85 = v7;
  v86 = v6;
  *&v96 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v96 + 1) = v7;
  v83 = v8;
  *v97 = v8;
  *&v97[8] = v9;
  v11 = type metadata accessor for SFFluidCollectionView.Element(0, &v95);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - v15;
  v17 = v5;
  v87 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v71 - v19;
  v21 = v4[172];
  v22 = swift_beginAccess();
  v89 = v2;
  if (*(v2 + v21) != a1)
  {
    v23 = (*(*v89 + 432))(v22);
    if (v23)
    {
      v25 = v24;
      v84 = v9;
      v26 = v23;
      ObjectType = swift_getObjectType();
      v28 = *(v25 + 16);
      v71 = v26;
      [v28(ObjectType v25)];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      swift_unknownObjectRelease();
      v104 = sub_18BC20DE8();
      sub_18B810930(&v95);
      v79 = v95;
      v37 = *v97;
      v38 = *&v97[8];
      sub_18BC1E1A8();

      if (*(v38 + 16))
      {
        v39 = 0;
        *&v79 = v12 + 8;
        *(&v79 + 1) = v87 + 32;
        v72 = (v12 + 16);
        v73 = (v88 + 8);
        v81 = v37;
        v82 = v20;
        v80 = v38;
        v77 = v11;
        v78 = v16;
        while (1)
        {
          sub_18BC21C08();
          if (__OFADD__(v39, 1))
          {
            break;
          }

          v87 = v39;
          v88 = v39 + 1;
          (**(&v79 + 1))(v16, v20, v17);
          swift_storeEnumTagMultiPayload();
          sub_18B810930(&v95);
          v92 = v95;
          v93 = v96;
          v94[0] = *v97;
          v98 = v17;
          v99 = v86;
          v100 = &type metadata for SFFluidTabOverviewSupplementary;
          v101 = v85;
          v41 = v83;
          v102 = v83;
          v103 = v84;
          v42 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot(0, &v98);
          v43 = SFFluidCollectionView.DataSource.Snapshot.supplementaries(for:)(v16, v42);

          *v97 = 0;
          v95 = 0u;
          v96 = 0u;
          v44 = sub_18B85CEA8(&v95, v43);

          sub_18B833D9C(&v95);
          if (v44)
          {
            sub_18B81D198(&v92);
            v91 = 0;
            memset(v90, 0, sizeof(v90));
            v98 = v17;
            v99 = v86;
            v100 = &type metadata for SFFluidTabOverviewSupplementary;
            v101 = v85;
            v102 = v41;
            v103 = v84;
            v45 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v98);
            v46 = v75;
            v16 = v78;
            SFFluidCollectionView.LayoutSnapshot.layoutAttributesForSupplementary(_:reference:)(v90, v78, v45, v75);
            sub_18B833D9C(v90);
            v95 = v92;
            v96 = v93;
            *v97 = v94[0];
            *&v97[9] = *(v94 + 9);
            (*(*(v45 - 1) + 8))(&v95, v45);
            v47 = v76;
            v48 = SFFluidCollectionView.LayoutAttributes.frame.getter(v76);
            v50 = v49;
            v52 = v51;
            v54 = v53;
            (*v73)(v46, v47);
            v105.origin.x = v48;
            v105.origin.y = v50;
            v105.size.width = v52;
            v105.size.height = v54;
            v108.origin.x = v30;
            v108.origin.y = v32;
            v108.size.width = v34;
            v108.size.height = v36;
            v55 = CGRectIntersectsRect(v105, v108);
            v56 = v77;
            if (v55)
            {
              (*v72)(v74, v16, v77);
              sub_18BC20E78();
              sub_18BC20E38();
            }

            v106.origin.x = v48;
            v106.origin.y = v50;
            v106.size.width = v52;
            v106.size.height = v54;
            MaxY = CGRectGetMaxY(v106);
            v107.origin.x = v30;
            v107.origin.y = v32;
            v107.size.width = v34;
            v107.size.height = v36;
            v58 = CGRectGetMaxY(v107);
            (*v79)(v16, v56);
            v20 = v82;
            v40 = v80;
            if (v58 <= MaxY)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v16 = v78;
            (*v79)(v78, v77);
            v20 = v82;
            v40 = v80;
          }

          v39 = v87 + 1;
          if (v88 == *(v40 + 16))
          {
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_13:

        v59 = v83;
        v60 = v104;
        *&v95 = v104;
        sub_18BC20E78();
        swift_getWitnessTable();
        if (sub_18BC21198())
        {

          swift_unknownObjectRelease();
        }

        else
        {
          v61 = v17;
          v62 = v17;
          v64 = v85;
          v63 = v86;
          SFFluidCollectionView.LayoutInvalidationContext.init()(v62, v86, &type metadata for SFFluidTabOverviewSupplementary, v85, v59, v84, &v92);
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA9D99E0, &qword_18BC4EB00);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18BC3E410;
          *(inited + 48) = 0u;
          *(inited + 64) = 0;
          *(inited + 32) = 0u;
          v66 = inited + 32;
          v67 = v59;
          v68 = v64;
          v69 = sub_18BA2A6A4(inited);
          swift_setDeallocating();
          sub_18B833D9C(v66);
          *&v95 = v61;
          *(&v95 + 1) = v63;
          *&v96 = &type metadata for SFFluidTabOverviewSupplementary;
          *(&v96 + 1) = v68;
          *v97 = v67;
          *&v97[8] = v84;
          v70 = type metadata accessor for SFFluidCollectionView.LayoutInvalidationContext(0, &v95);
          SFFluidCollectionView.LayoutInvalidationContext.invalidateSupplementaries(_:for:)(v69, v60, v70);

          *&v95 = v92;
          WORD4(v95) = WORD4(v92);
          BYTE10(v95) = BYTE10(v92);
          sub_18B82F6F4(&v95);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_18BB3A76C(double a1)
{
  v3 = *(*v1 + 1376);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_18BB39EE0(v4);
}

void (*sub_18BB3A7D0(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 32) = v1;
  v5 = *(*v1 + 1376);
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_18BB3A870;
}

void sub_18BB3A888(uint64_t a1, uint64_t a2, void (*a3)(double))
{
  v3 = *a1;
  a3(*(*a1 + 24));

  free(v3);
}

uint64_t sub_18BB3A8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v85 = a1;
  v82 = a2;
  v4 = *v2;
  v5 = v4[166];
  v76 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v71 = &v64 - v6;
  v7 = sub_18BC21848();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v83 = &v64 - v8;
  v84 = v7;
  v74 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  v16 = v4[165];
  v17 = v4[167];
  v18 = v4[168];
  v19 = sub_18B8103B0();
  v78 = v16;
  *&v88 = v16;
  *(&v88 + 1) = v5;
  *&v89 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v89 + 1) = v17;
  v79 = v17;
  v80 = v18;
  *v90 = v18;
  *&v90[8] = v19;
  v77 = v19;
  v20 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(255, &v88);
  v21 = sub_18BC21848();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v64 - v23;
  v25 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v64 - v27;
  sub_18BB39CA8(v24);
  if ((*(v25 + 48))(v24, 1, v20) != 1)
  {
    v67 = v25;
    v32 = *(v25 + 32);
    v69 = v28;
    v70 = v20;
    v66 = v25 + 32;
    v65 = v32;
    v32(v28, v24, v20);
    v33 = v76;
    (*(v76 + 16))(v15, v85, v5);
    v34 = (*(v33 + 56))(v15, 0, 1, v5);
    v35 = v15;
    v36 = v5;
    v37 = v81;
    (*(*v3 + 1384))(v34);
    v38 = *(TupleTypeMetadata2 + 48);
    v39 = v74;
    v40 = *(v74 + 16);
    v41 = v83;
    v68 = v35;
    v42 = v35;
    v43 = v84;
    (v40)(v83, v42, v84);
    v44 = v37;
    v5 = v36;
    (v40)(&v41[v38], v44, v43);
    v45 = *(v33 + 48);
    if (v45(v41, 1, v36) == 1)
    {
      v46 = *(v39 + 8);
      v47 = v84;
      v46(v81, v84);
      v46(v68, v47);
      v48 = v83;
      v49 = v45(&v83[v38], 1, v36) == 1;
      v31 = v82;
      v50 = v48;
      if (!v49)
      {
        goto LABEL_9;
      }

      v46(v48, v84);
      v51 = v69;
    }

    else
    {
      v52 = v72;
      v53 = v83;
      v40();
      if (v45(&v53[v38], 1, v5) == 1)
      {
        v54 = *(v39 + 8);
        v55 = v84;
        v54(v81, v84);
        v54(v68, v55);
        (*(v76 + 8))(v52, v5);
        v31 = v82;
        v50 = v83;
LABEL_9:
        (*(v73 + 8))(v50, TupleTypeMetadata2);
        v29 = v85;
        v30 = v80;
        v51 = v69;
LABEL_10:
        (*(v67 + 8))(v51, v70);
        goto LABEL_11;
      }

      v58 = v76;
      v59 = v83;
      v60 = v71;
      (*(v76 + 32))(v71, &v83[v38], v5);
      v30 = v80;
      LODWORD(TupleTypeMetadata2) = sub_18BC20AE8();
      v61 = *(v58 + 8);
      v61(v60, v5);
      v62 = *(v39 + 8);
      v63 = v84;
      v62(v81, v84);
      v62(v68, v63);
      v61(v52, v5);
      v62(v59, v63);
      v31 = v82;
      v29 = v85;
      v51 = v69;
      if ((TupleTypeMetadata2 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    return v65(v31, v51, v70);
  }

  (*(v22 + 8))(v24, v21);
  v29 = v85;
  v30 = v80;
  v31 = v82;
LABEL_11:
  sub_18B81D198(v86);
  *&v88 = v78;
  *(&v88 + 1) = v5;
  *&v89 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v89 + 1) = v79;
  *v90 = v30;
  *&v90[8] = v77;
  v56 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v88);
  SFFluidCollectionView.LayoutSnapshot.layoutAttributesForItem(_:)(v29, v56, v31);
  v88 = v86[0];
  v89 = v86[1];
  *v90 = v87[0];
  *&v90[9] = *(v87 + 9);
  return (*(*(v56 - 1) + 8))(&v88, v56);
}

void sub_18BB3B168(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 1320);
  v69 = *(*&v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v68 = &v62 - v6;
  v8 = v7[166];
  v9 = v7[167];
  v10 = v7[168];
  *&v11 = COERCE_DOUBLE(sub_18B8103B0());
  v74 = v5;
  v83.a = v5;
  v83.b = v8;
  *&v83.c = &type metadata for SFFluidTabOverviewSupplementary;
  v83.d = v9;
  v73 = v9;
  v72 = v10;
  v83.tx = v10;
  *&v83.ty = v11;
  v71 = *&v11;
  v12 = type metadata accessor for SFFluidCollectionView.Element(0, &v83);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - v14;
  v16 = *(*&v8 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v62 - v19;
  v21 = (*(v4 + 432))(v18);
  if (v21)
  {
    v23 = v22;
    v70 = v8;
    v24 = v21;
    v25 = (*(*v2 + 456))();
    if (v25)
    {
      v26 = v25;
      (*(v13 + 16))(v15, a1, v12);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v66 = v26;
        v64 = v16;
        v27 = *(v16 + 32);
        v67 = v20;
        v28 = v70;
        v27(v20, v15, *&v70);
        ObjectType = swift_getObjectType();
        v30 = *(v23 + 16);
        v65 = v24;
        [v30(ObjectType v23)];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        swift_unknownObjectRelease();
        v84.origin.x = v32;
        v84.origin.y = v34;
        v84.size.width = v36;
        v84.size.height = v38;
        MidX = CGRectGetMidX(v84);
        v85.origin.x = v32;
        v85.origin.y = v34;
        v85.size.width = v36;
        v85.size.height = v38;
        MidY = CGRectGetMidY(v85);
        v83.a = v74;
        v83.b = v28;
        v41 = v73;
        *&v83.c = &type metadata for SFFluidTabOverviewSupplementary;
        v83.d = v73;
        v42 = v72;
        v43 = v71;
        v83.tx = v72;
        v83.ty = v71;
        v44 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v83);
        SFFluidCollectionView.LayoutAttributes.center.setter(v44, MidX, MidY);
        v86.origin.x = v32;
        v86.origin.y = v34;
        v86.size.width = v36;
        v86.size.height = v38;
        Width = CGRectGetWidth(v86);
        v46 = v44[19];
        v47 = Width / *(a1 + v46);
        CGAffineTransformMakeScale(&v83, v47, v47);
        SFFluidCollectionView.LayoutAttributes.transform.setter(&v83, v44);
        SFFluidCollectionView.LayoutAttributes.size.setter(v44, *(a1 + v46), v38 * (*(a1 + v46) / v36));
        *(a1 + v44[21]) = 0x4000000000000000;
        v48 = v44[22];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79[0] = *(a1 + v48);
        sub_18B84E858(0xD000000000000014, 0x800000018BC65620, isUniquelyReferenced_nonNull_native, 1.0);
        *(a1 + v48) = v79[0];
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v79[0] = *(a1 + v48);
        sub_18B84E858(0x615272656E726F63, 0xEC00000073756964, v50, 0.0);
        *(a1 + v48) = v79[0];
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v79[0] = *(a1 + v48);
        sub_18B84E858(0xD000000000000012, 0x800000018BC65640, v51, 0.0);
        *(a1 + v48) = v79[0];
        if (sub_18BB39DAC())
        {
          v53 = v43;
          v63 = a1;
          v54 = v52;
          v62 = swift_getObjectType();
          sub_18B810930(v79);
          v75[6] = v79[0];
          v75[7] = v79[1];
          v76 = v80;
          v77 = v81;
          v78 = v82;
          v55 = v74;
          *v75 = v74;
          *&v75[1] = v70;
          v75[2] = &type metadata for SFFluidTabOverviewSupplementary;
          *&v75[3] = v41;
          *&v75[4] = v42;
          *&v75[5] = v53;
          v56 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot(0, v75);
          v57 = v68;
          SFFluidCollectionView.DataSource.Snapshot.section(for:)(v67, v56);
          v73 = v77;

          v58 = v66;
          v59 = (*(v54 + 16))(v66, v2, v57, v62, v54);
          (*(v69 + 8))(v57, COERCE_CGFLOAT(*&v55));
          v60 = v63;
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v79[0] = *(v60 + v48);
          sub_18B84E858(0xD000000000000018, 0x800000018BC655F0, v61, v59 / v47);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          (*(v64 + 8))(v67, COERCE_DOUBLE(*&v70));
          *(v60 + v48) = v79[0];
        }

        else
        {
          swift_unknownObjectRelease();

          (*(v64 + 8))(v67, COERCE_DOUBLE(*&v70));
        }
      }

      else
      {
        swift_unknownObjectRelease();

        (*(v13 + 8))(v15, v12);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_18BB3B934(uint64_t a1)
{
  v3 = *v1;
  v4 = (*(*v1 + 456))();
  if (v4)
  {
    v5 = v4;
    v6 = v3[165];
    v7 = v3[166];
    v8 = v3[167];
    v9 = v3[168];
    v10 = sub_18B8103B0();
    static SFFluidTabOverviewLayoutSupport.applyTransform<A, B, C>(to:forZPosition:in:)(a1, v5, v6, v7, &type metadata for SFFluidTabOverviewSupplementary, v8, v9, v10, -150.0);
    v15[0] = v6;
    v15[1] = v7;
    v15[2] = &type metadata for SFFluidTabOverviewSupplementary;
    v15[3] = v8;
    v15[4] = v9;
    v15[5] = v10;
    v11 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v15);
    *(a1 + *(v11 + 68)) = 0;
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 20.0;
    }

    v13 = *(v11 + 88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = *(a1 + v13);
    sub_18B84E858(0x6964615272756C62, 0xEA00000000007375, isUniquelyReferenced_nonNull_native, v12);

    *(a1 + v13) = v15[0];
  }
}

void sub_18BB3BAAC(uint64_t a1)
{
  v3 = *v1;
  if ((*(*v1 + 432))())
  {
    v5 = v4;
    v6 = (*v1 + 1464);
    v7 = *v6;
    if ((*v6)() <= 0.0)
    {
      v27 = sub_18B8103B0();
      v28 = *(v3 + 1320);
      v29 = &type metadata for SFFluidTabOverviewSupplementary;
      v30 = *(v3 + 1336);
      v31 = v27;
      v24 = *(type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v28) + 92);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v28 = *(a1 + v24);
      v26 = 1.0;
    }

    else
    {
      ObjectType = swift_getObjectType();
      [(*(v5 + 16))(ObjectType v5)];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      swift_unknownObjectRelease();
      v32.origin.x = v10;
      v32.origin.y = v12;
      v32.size.width = v14;
      v32.size.height = v16;
      MinY = CGRectGetMinY(v32);
      v18 = MinY + v7();
      v19 = sub_18B8103B0();
      v28 = *(v3 + 1320);
      v29 = &type metadata for SFFluidTabOverviewSupplementary;
      v30 = *(v3 + 1336);
      v31 = v19;
      v20 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v28);
      v33.origin.x = SFFluidCollectionView.LayoutAttributes.frame.getter(v20);
      v21 = CGRectGetMinY(v33);
      v34.origin.x = SFFluidCollectionView.LayoutAttributes.frame.getter(v20);
      MaxY = CGRectGetMaxY(v34);
      v23 = 1.0 - _SFClampPercent(v18, v21, MaxY);
      v24 = *(v20 + 92);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v28 = *(a1 + v24);
      v26 = v23;
    }

    sub_18B84E858(0xD000000000000018, 0x800000018BC65660, isUniquelyReferenced_nonNull_native, v26);
    swift_unknownObjectRelease();
    *(a1 + v24) = v28;
  }
}

uint64_t SFFluidCollectionView.TabOverviewZoomableGridLayout.init()()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 1328);
  (*(*(v1[166] - 8) + 56))(v0 + v1[169], 1, 1, v1[166]);
  *(v0 + *(*v0 + 1360)) = 0;
  v4 = *(*v0 + 1368);
  v5 = v1[165];
  v6 = sub_18B8103B0();
  v9[0] = v5;
  v9[1] = v3;
  v9[2] = &type metadata for SFFluidTabOverviewSupplementary;
  v10 = *(v2 + 167);
  v11 = v6;
  v7 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v9);
  (*(*(v7 - 8) + 56))(v0 + v4, 1, 1, v7);
  *(v0 + *(*v0 + 1376)) = 0;
  return SFFluidCollectionView.TabOverviewGridLayout.init()();
}

uint64_t sub_18BB3BEC0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 1352);
  v4 = *(*v0 + 1328);
  v5 = sub_18BC21848();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(*v0 + 1368);
  v7 = *(v1 + 1320);
  v8 = sub_18B8103B0();
  v11[0] = v7;
  v11[1] = v4;
  v11[2] = &type metadata for SFFluidTabOverviewSupplementary;
  v12 = *(v2 + 1336);
  v13 = v8;
  type metadata accessor for SFFluidCollectionView.LayoutAttributes(255, v11);
  v9 = sub_18BC21848();
  return (*(*(v9 - 8) + 8))(v0 + v6, v9);
}

char *SFFluidCollectionView.TabOverviewZoomableGridLayout.deinit()
{
  v1 = *v0;
  v2 = *v0;
  v3 = SFFluidCollectionView.TabOverviewGridLayout.deinit();
  v4 = *(*v3 + 1352);
  v5 = *(v1 + 1328);
  v6 = sub_18BC21848();
  (*(*(v6 - 8) + 8))(&v3[v4], v6);
  v7 = *(*v3 + 1368);
  v8 = *(v1 + 1320);
  v9 = sub_18B8103B0();
  v12[0] = v8;
  v12[1] = v5;
  v12[2] = &type metadata for SFFluidTabOverviewSupplementary;
  v13 = *(v2 + 1336);
  v14 = v9;
  type metadata accessor for SFFluidCollectionView.LayoutAttributes(255, v12);
  v10 = sub_18BC21848();
  (*(*(v10 - 8) + 8))(&v3[v7], v10);
  return v3;
}

uint64_t SFFluidCollectionView.TabOverviewZoomableGridLayout.__deallocating_deinit()
{
  SFFluidCollectionView.TabOverviewZoomableGridLayout.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_18BB3C1D0(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_18BC21848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *(v3 + 1352);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v8], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v1[v8], a1, v4);
  swift_endAccess();
  sub_18BB39468(v7);
  return (*(v5 + 8))(v7, v4);
}

double sub_18BB3C51C()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  v4 = sub_18B7C34FC();
  [v4 setClipsToBounds_];

  v5 = *((*v2 & *v0) + 0x80);
  [*(v0 + v5) setDelegate_];
  [v0 addSubview_];
  v6 = *(v0 + *((*v2 & *v0) + 0xA0));
  v7 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v8 = swift_allocObject();
  v8[2] = *((v3 & v1) + 0x50);
  v8[3] = *((v3 & v1) + 0x58);
  v8[4] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_18BB3F104;
  *(v9 + 24) = v8;
  swift_beginAccess();
  v10 = *(v6 + 16);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_18B7C358C(0, v10[2] + 1, 1, v10);
    *(v6 + 16) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_18B7C358C((v12 > 1), v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  v14 = &v10[2 * v13];
  v14[4] = sub_18B7FCC4C;
  v14[5] = v9;
  *(v6 + 16) = v10;
  swift_endAccess();

  return result;
}

id sub_18BB3C754(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v18[-1] - v7;
  v9 = *(v1 + *((v4 & v3) + 0x60));
  v10 = sub_18BC1E1A8();
  v9(v10);

  [a1 contentOffset];
  v12 = v11;
  v14 = v13;
  sub_18B7F4870(v8);
  (*(*((v4 & v3) + 0x58) + 72))(v18, v5);
  result = (*(v6 + 8))(v8, v5);
  if (v12 != *&v18[4] || v14 != *&v18[5])
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_18BB3C8F8(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  sub_18B7F4870(&v9 - v6);
  (*(*((v3 & v2) + 0x58) + 48))(v4);
  return (*(v5 + 8))(v7, v4);
}

void *sub_18BB3CA4C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v3 = sub_18B7C34FC();
    type metadata accessor for ScrollAnimator();
    swift_allocObject();
    v2 = sub_18B7E195C(v3);

    *(v0 + v1) = v2;
    sub_18BC1E1A8();
  }

  sub_18BC1E1A8();
  return v2;
}

uint64_t sub_18BB3CB04(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  swift_beginAccess();
  sub_18BB3F544(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_18BB3CB80(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  swift_beginAccess();
  type metadata accessor for CollectionView.SizeTransitionInfo(255, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v6);
  v7 = sub_18BC21848();
  (*(*(v7 - 8) + 40))(&v1[v5], a1, v7);
  return swift_endAccess();
}

double sub_18BB3CC78@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_18BB3CC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_18BC21098();
  if ((result & 1) == 0)
  {
    v12 = sub_18B7F5A78(a1, a2);
    MEMORY[0x1EEE9AC00](v12);
    sub_18BC1E3F8();
    v11 = sub_18BC21068();
    sub_18BC113A8(v11, a1, a2, v9, v8, v13);

    sub_18B7F5044(a1, a2, v13, a4, 0);

    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  return result;
}

void sub_18BB3CE3C()
{
  v0 = sub_18B7C34FC();
  [v0 stopScrollingAndZooming];

  v1 = sub_18BB3CA4C();
  type metadata accessor for Assertion();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 0;
  v1[5] = v2;

  [v1[6] contentOffset];
  v4 = v3;
  v6 = v5;
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v4;
  v7[4] = v6;
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_18BA5AAC4;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_18B9D53AC;
  *(v10 + 24) = v9;
  v12[4] = sub_18B9D53B0;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_18B7E3BF4;
  v12[3] = &block_descriptor_61_0;
  v11 = _Block_copy(v12);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v8 performWithoutAnimation_];
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }
}

double sub_18BB3D060(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  v3 = *(v2 + 0x50);
  v4 = *(v3 - 8);
  *&result = MEMORY[0x1EEE9AC00](a1).n128_u64[0];
  v7 = &v22 - v6;
  if (*(*(v1 + *((v9 & v8) + 0xA0)) + 24) >= 1)
  {
    sub_18B7F4870(v7);
    v10 = *(*(v2 + 88) + 56);
    v27 = *(v2 + 88);
    v11 = v10(v3);
    v14 = *(v4 + 8);
    v13 = v4 + 8;
    v12 = v14;
    v14(v7, v3);
    v23 = v11;
    v15 = *(v11 + 16);
    if (v15)
    {
      v24 = *(v27 + 128);
      v25 = v27 + 128;
      v16 = (v23 + 40);
      v26 = v12;
      do
      {
        v17 = v13;
        v18 = *(v16 - 1);
        v19 = *v16;
        sub_18BC1E3F8();
        sub_18B7F5A78(v18, v19);
        sub_18B7F4870(v7);
        v20 = v24(v18, v19, v3, v27);
        v13 = v17;
        v21 = v26;

        v21(v7, v3);
        sub_18BB936C4(v20);

        v16 += 2;
        --v15;
      }

      while (v15);
    }
  }

  return result;
}

double sub_18BB3D308(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - v6;
  v14 = 1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  sub_18BB3CB80(&v14);
  sub_18B7F4870(v7);
  v8 = (*(*((v3 & v2) + 0x58) + 56))(v4);
  (*(v5 + 8))(v7, v4);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      sub_18BC1E3F8();
      sub_18B7F5A78(v11, v12);

      sub_18BB9379C();

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  return result;
}

void *sub_18BB3D4A0(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v7 = &v2[*((*MEMORY[0x1E69E7D40] & v4) + 0x60)];
  *v7 = CGRectMake;
  v7[1] = 0;
  v8 = *((v6 & v4) + 0x50);
  (*(*(v8 - 8) + 56))(&v2[*((*v5 & *v2) + 0x68)], 1, 1, v8);
  v9 = &v2[*((*v5 & *v2) + 0x70)];
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = *((v6 & v4) + 0x58);
  *(v10 + 24) = v11;
  *v9 = CGRectMake;
  v9[1] = v10;
  *&v2[*((*v5 & *v2) + 0x78)] = 0;
  *&v2[*((*v5 & *v2) + 0x80)] = 0;
  v12 = &v2[*((*v5 & *v2) + 0x88)];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v15 = *((*v5 & *v2) + 0x98);
  v16 = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for CollectionItemViewManager(255, v16, v17, v18);
  swift_getTupleTypeMetadata2();
  v20 = sub_18BC20DE8();
  v21 = sub_18B7C2900();
  v22 = sub_18B7C29AC(v20, &type metadata for LayoutItemType, v19, v21);

  *&v2[v15] = v22;
  v23 = *((*v5 & *v2) + 0xA0);
  type metadata accessor for Assertion();
  v24 = swift_allocObject();
  *(v24 + 16) = MEMORY[0x1E69E7CC0];
  *(v24 + 24) = 0;
  *&v2[v23] = v24;
  v25 = &v2[*((*v5 & *v2) + 0xA8)];
  *v25 = 1;
  v27 = type metadata accessor for CollectionView(0, v8, v11, v26);
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 0u;
  *(v25 + 7) = 0;
  v33.receiver = v2;
  v33.super_class = v27;
  v28 = objc_msgSendSuper2(&v33, sel_initWithCoder_, a1);
  v29 = v28;
  if (v28)
  {
    v30 = *((*v5 & *v28) + 0x200);
    v31 = v28;
    v30();
  }

  return v29;
}

void sub_18BB3D8C0(char a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = Strong;
  if (a1)
  {
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x1F0))(v5);
    sub_18BB3CB80(v5);
  }

  else
  {
    sub_18BB3D308(Strong);
  }
}

void sub_18BB3D968(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18BB3C754(v4);
}

void sub_18BB3D9D0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18BB3F110();
}

void sub_18BB3DA30(void *a1, uint64_t a2, void *a3, double *a4)
{
  v6 = a3;
  v7 = a1;
  sub_18BB3F31C(a4);
}

double sub_18BB3DA9C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  v15 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x58);
  v13 = (*(v15 + 56))(v4);
  v5 = *(v13 + 16);
  if (v5)
  {
    v14 = *(v15 + 128);
    v6 = (v13 + 40);
    do
    {
      v7 = a3;
      v8 = *(v6 - 1);
      v9 = *v6;
      sub_18BC1E3F8();
      v10 = v14(v8, v9, v4, v15);
      v11 = v8;
      a3 = v7;
      sub_18BB3CC88(v11, v9, v10, v7);

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

id sub_18BB3DBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CollectionView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_18BB3DC58(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  v5 = *((*v2 & *a1) + 0x68);
  v6 = *((v4 & v3) + 0x50);
  v7 = sub_18BC21848();
  (*(*(v7 - 8) + 8))(&a1[v5], v7);

  sub_18B7F61D4(&a1[*((*v2 & *a1) + 0x88)]);
  v8 = *((*v2 & *a1) + 0x90);
  v9 = *((v4 & v3) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v8], AssociatedTypeWitness);

  v11 = *((*v2 & *a1) + 0xA8);
  type metadata accessor for CollectionView.SizeTransitionInfo(255, v6, v9, v12);
  v13 = sub_18BC21848();
  v14 = *(*(v13 - 8) + 8);

  return v14(&a1[v11], v13);
}

uint64_t sub_18BB3DEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8)
{
  v86 = a5;
  v83 = a4;
  v14 = _s4ItemVMa_4(0);
  v85 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v79 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78 - v17;
  v82 = sub_18BC1EDD8();
  v95 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v89 = &v78 - v22;
  v103 = a7;
  v104 = a8;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v102);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_0Tm, a3, a7);
  v24 = *((*MEMORY[0x1E69E7D40] & *a6) + 0x98);
  swift_beginAccess();
  v25 = *(a6 + v24);
  if (*(v25 + 16))
  {
    v90 = v20;
    sub_18BC1E3F8();
    v26 = sub_18B7C4104(a1, a2);
    if (v27)
    {
      v28 = *(*(v25 + 56) + 8 * v26);
      sub_18BC1E1A8();

      v29 = __swift_project_boxed_opaque_existential_1Tm(v102, v103);
      v30 = MEMORY[0x1EEE9AC00](v29);
      (*(v32 + 16))(&v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0Tm(v99);
      sub_18BC20CC8();
      v96 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content;
      swift_beginAccess();
      v97 = v28;
      swift_beginAccess();
      v87 = (v95 + 32);
      v88 = (v95 + 48);
      v84 = (v95 + 8);
      v33 = v82;
      v34 = v83;
      v36 = v89;
      v35 = v90;
      v81 = a6;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v99, AssociatedTypeWitness);
        sub_18BC21868();
        if ((*v88)(v36, 1, v33) == 1)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v99);
          return __swift_destroy_boxed_opaque_existential_1Tm(v102);
        }

        (*v87)(v35, v36, v33);
        v56 = *(v34 + v96);
        v57 = sub_18BC1EDE8();
        if ((v57 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v57 >= *(v56 + 16))
        {
          goto LABEL_25;
        }

        v95 = *(v85 + 80);
        sub_18B80EBD8(v56 + ((v95 + 32) & ~v95) + *(v85 + 72) * v57, v18, _s4ItemVMa_4);
        v58 = sub_18BC1EDE8();
        sub_18B9F0388(v58, v86, v105);
        v59 = v97;
        if (*(v97[10] + 16))
        {
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          sub_18BB8B258(v18);
          v61 = v60;

          v59 = v97;
        }

        else
        {
          v61 = 0;
        }

        v111 = v105[0];
        v112 = v105[1];
        v113[0] = (v61 | v106) & 1;
        *&v113[1] = v107;
        *&v113[64] = *&v110[15];
        *&v113[49] = *v110;
        *&v113[33] = v109;
        *&v113[17] = v108;
        if (v107 & 1) != 0 || *(v59[7] + 16) && (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18BB8B258(v18), v63 = v62, , , v59 = v97, (v63) || (v64 = v59[15], v65 = v59[16], __swift_project_boxed_opaque_existential_1Tm(v59 + 12, v64), v66 = v97[2], sub_18BC1E1A8(), v66(v98, v18), v36 = v89, , v35 = v90, v67 = sub_18B814A2C(v98, v64, v65), __swift_destroy_boxed_opaque_existential_1Tm(v98), v59 = v97, (v67))
        {
          v68 = sub_18BC09958(v18, v34 + v96, v59);
          v94 = v69;
          v71 = v70;
          v72 = sub_18B7C2E68();
          v73 = [v68 superview];
          if (!v73 || (v74 = v73, sub_18B7F4394(), v75 = v72, v76 = sub_18BC215C8(), v74, v75, (v76 & 1) == 0))
          {
            [v72 addSubview_];
          }

          v37 = v95;
          v38 = 0x8000000000000010;
          v91 = v71 & 1;
          if ((v71 & 1) == 0)
          {
            v38 = 0x8000000000000008;
          }

          v92 = v38;
          v39 = v18;
          v40 = v18;
          v41 = v79;
          sub_18B80EBD8(v39, v79, _s4ItemVMa_4);
          v42 = (v37 + 152) & ~v37;
          v43 = (v42 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
          v93 = v72;
          v44 = (v42 + v80 + 23) & 0xFFFFFFFFFFFFFFF8;
          v45 = swift_allocObject();
          v46 = v94;
          *(v45 + 16) = v68;
          *(v45 + 24) = v46;
          v47 = *&v113[48];
          *(v45 + 96) = *&v113[32];
          *(v45 + 112) = v47;
          *(v45 + 128) = *&v113[64];
          v48 = v112;
          *(v45 + 32) = v111;
          *(v45 + 48) = v48;
          v49 = *&v113[16];
          *(v45 + 64) = *v113;
          *(v45 + 80) = v49;
          *(v45 + 144) = v97;
          v50 = v41;
          v18 = v40;
          sub_18B80EC40(v50, v45 + v42, _s4ItemVMa_4);
          v51 = v45 + v43;
          v34 = v83;
          *v51 = v83;
          *(v51 + 8) = v91;
          v52 = v81;
          *(v45 + v44) = v81;
          sub_18BC1E1A8();
          v53 = v68;
          sub_18BC1E1A8();
          v54 = v52;
          v55 = v92;
          sub_18B80ECB4(sub_18BB3F5B4, v45, v92);

          sub_18B7EBAE8(v55);

          v33 = v82;
          v36 = v89;
          v35 = v90;
        }

        else
        {
          sub_18B7F4620(&v111);
          sub_18BBF2D58(v18);
        }

        sub_18B812EDC(v18, _s4ItemVMa_4);
        (*v84)(v35, v33);
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18BB3E7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8)
{
  v87 = a5;
  v15 = _s4ItemVMa_1(0);
  v86 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v79 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v78 - v18;
  v92 = sub_18BC1EDD8();
  v20 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v90 = &v78 - v23;
  v105 = a7;
  v106 = a8;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v104);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_0Tm, a3, a7);
  v25 = *((*MEMORY[0x1E69E7D40] & *a6) + 0x98);
  swift_beginAccess();
  v26 = *(a6 + v25);
  if (*(v26 + 16))
  {
    v97 = v20;
    sub_18BC1E3F8();
    v81 = a1;
    v27 = sub_18B7C4104(a1, a2);
    if (v28)
    {
      v29 = *(*(v26 + 56) + 8 * v27);
      sub_18BC1E1A8();

      v30 = __swift_project_boxed_opaque_existential_1Tm(v104, v105);
      v99 = &v78;
      v31 = MEMORY[0x1EEE9AC00](v30);
      (*(v33 + 16))(&v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0Tm(v101);
      sub_18BC20CC8();
      v98 = OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content;
      swift_beginAccess();
      v99 = v29;
      swift_beginAccess();
      v88 = (v97 + 32);
      v89 = (v97 + 48);
      v84 = a6;
      v85 = (v97 + 8);
      v35 = v91;
      v34 = v92;
      v82 = a2;
      v83 = a4;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v101, AssociatedTypeWitness);
        v55 = v90;
        sub_18BC21868();
        if ((*v89)(v55, 1, v34) == 1)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v101);
          return __swift_destroy_boxed_opaque_existential_1Tm(v104);
        }

        (*v88)(v35, v55, v34);
        v56 = *(a4 + v98);
        v57 = sub_18BC1EDE8();
        if ((v57 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v57 >= *(v56 + 16))
        {
          goto LABEL_25;
        }

        v97 = *(v86 + 80);
        sub_18B80EBD8(v56 + ((v97 + 32) & ~v97) + *(v86 + 72) * v57, v19, _s4ItemVMa_1);
        v58 = sub_18BC1EDE8();
        sub_18BAD4D08(v58, v87, v107);
        v59 = v99;
        if (*(v99[10] + 16))
        {
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          sub_18BB8B5B0(v19);
          v61 = v60;
        }

        else
        {
          v61 = 0;
        }

        v113 = v107[0];
        v114 = v107[1];
        v115[0] = (v61 | v108) & 1;
        *&v115[1] = v109;
        *&v115[64] = *&v112[15];
        *&v115[49] = *v112;
        *&v115[33] = v111;
        *&v115[17] = v110;
        if (v109 & 1) != 0 || *(v59[7] + 16) && (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18BB8B5B0(v19), v63 = v62, , , (v63) || (v64 = v59[15], v65 = v59[16], __swift_project_boxed_opaque_existential_1Tm(v59 + 12, v64), v66 = v99[2], sub_18BC1E1A8(), v66(v100, v19), v59 = v99, , v67 = sub_18B814A2C(v100, v64, v65), __swift_destroy_boxed_opaque_existential_1Tm(v100), (v67))
        {
          v68 = sub_18BC0A910(v19, a4 + v98, v59);
          v96 = v69;
          v71 = v70;
          v72 = (*((*MEMORY[0x1E69E7D40] & *a6) + 0x210))(v19, v81, a2);
          v73 = [v68 superview];
          if (!v73 || (v74 = v73, sub_18B7F4394(), v75 = v72, v76 = sub_18BC215C8(), v74, v75, (v76 & 1) == 0))
          {
            [v72 addSubview_];
          }

          v36 = v97;
          v37 = 0x8000000000000010;
          v93 = v71 & 1;
          if ((v71 & 1) == 0)
          {
            v37 = 0x8000000000000008;
          }

          v94 = v37;
          v38 = v19;
          v39 = v19;
          v40 = v79;
          sub_18B80EBD8(v38, v79, _s4ItemVMa_1);
          v41 = (v36 + 152) & ~v36;
          v95 = v72;
          v42 = (v41 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
          v43 = (v41 + v80 + 23) & 0xFFFFFFFFFFFFFFF8;
          v44 = swift_allocObject();
          v45 = v96;
          *(v44 + 16) = v68;
          *(v44 + 24) = v45;
          v46 = *&v115[48];
          *(v44 + 96) = *&v115[32];
          *(v44 + 112) = v46;
          *(v44 + 128) = *&v115[64];
          v47 = v114;
          *(v44 + 32) = v113;
          *(v44 + 48) = v47;
          v48 = *&v115[16];
          *(v44 + 64) = *v115;
          *(v44 + 80) = v48;
          *(v44 + 144) = v99;
          v49 = v40;
          v19 = v39;
          sub_18B80EC40(v49, v44 + v41, _s4ItemVMa_1);
          v50 = v44 + v42;
          a4 = v83;
          *v50 = v83;
          *(v50 + 8) = v93;
          v51 = v84;
          *(v44 + v43) = v84;
          a6 = v51;
          sub_18BC1E1A8();
          v52 = v68;
          sub_18BC1E1A8();
          v53 = a6;
          v54 = v94;
          sub_18B80ECB4(sub_18BB3F0D8, v44, v94);

          sub_18B7EBAE8(v54);

          a2 = v82;
        }

        else
        {
          sub_18B7F4620(&v113);
          sub_18BBF2FCC(v19);
        }

        sub_18B812EDC(v19, _s4ItemVMa_1);
        v35 = v91;
        v34 = v92;
        (*v85)(v91, v92);
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

void sub_18BB3F110()
{
  v0 = sub_18BB3CA4C();
  type metadata accessor for Assertion();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  v0[5] = v1;

  [v0[6] contentOffset];
  v3 = v2;
  v5 = v4;
  v6 = swift_allocObject();
  v6[2] = v0;
  v6[3] = v3;
  v6[4] = v5;
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_18B840544;
  *(v8 + 24) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_18B7D1EC4;
  *(v9 + 24) = v8;
  v11[4] = sub_18B7D1E94;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_18B7E3BF4;
  v11[3] = &block_descriptor_48;
  v10 = _Block_copy(v11);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v7 performWithoutAnimation_];
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

uint64_t sub_18BB3F31C(double *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - v7;
  sub_18B7F4870(&v13 - v7);
  v9 = (*(*(*((v4 & v3) + 0x58) + 8) + 24))(v5, *a1, a1[1]);
  v11 = v10;
  result = (*(v6 + 8))(v8, v5);
  *a1 = v9;
  *(a1 + 1) = v11;
  return result;
}

double sub_18BB3F450()
{
  v1 = *(*(*(v0 + 16) - 8) + 80);
  v2 = (v1 + 32) & ~v1;
  v3 = (*(*(*(v0 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_18BB3DA9C(v0 + v2, *(v0 + v3), v0 + ((v1 + v3 + 8) & ~v1));
}

BOOL sub_18BB3F504(uint64_t a1)
{
  v1 = sub_18BB93608(a1);
  v2 = v1;
  if (v1)
  {
  }

  return v2 == 0;
}

uint64_t sub_18BB3F544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D53A0, &qword_18BC4BFB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SFFluidCollectionView.Update.previousLayoutSnapshot.getter@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2[3];
  v10[0] = v2[2];
  v10[1] = v3;
  v11[0] = v2[4];
  v4 = v11[0];
  *(v11 + 9) = *(v2 + 73);
  v5 = *(v11 + 9);
  *a2 = v10[0];
  a2[1] = v3;
  a2[2] = v4;
  *(a2 + 41) = v5;
  v6 = a1[2];
  v9[0] = a1[1];
  v9[1] = v6;
  v9[2] = a1[3];
  v7 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, v9);
  return (*(*(v7 - 8) + 16))(v9, v10, v7);
}

double SFFluidCollectionView.Update.previousLayoutSnapshot.setter(__int128 *a1, _OWORD *a2)
{
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v12[0] = a1[2];
  *(v12 + 9) = *(a1 + 41);
  v4 = v2[3];
  v13[0] = v2[2];
  v13[1] = v4;
  v14[0] = v2[4];
  *(v14 + 9) = *(v2 + 73);
  v5 = a2[2];
  v9[0] = a2[1];
  v9[1] = v5;
  v9[2] = a2[3];
  v6 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, v9);
  (*(*(v6 - 8) + 8))(v13, v6);
  v7 = v11;
  v2[2] = v10;
  v2[3] = v7;
  v2[4] = v12[0];
  result = *(v12 + 9);
  *(v2 + 73) = *(v12 + 9);
  return result;
}

void SFFluidCollectionView.Update.previousBounds.setter(double a1, double a2, double a3, double a4)
{
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = a3;
  v4[15] = a4;
}

uint64_t SFFluidCollectionView.Update.transaction.getter@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2[17];
  v4 = v2[15];
  v28 = v2[16];
  v29 = v3;
  v5 = v2[17];
  v30[0] = v2[18];
  v6 = v2[13];
  v8 = v2[11];
  v24 = v2[12];
  v7 = v24;
  v25 = v6;
  v9 = v2[13];
  v10 = v2[15];
  v26 = v2[14];
  v11 = v26;
  v27 = v10;
  v12 = v2[9];
  v21[0] = v2[8];
  v21[1] = v12;
  v13 = v2[11];
  v15 = v2[8];
  v14 = v2[9];
  v22 = v2[10];
  v16 = v22;
  v23 = v13;
  *(v30 + 9) = *(v2 + 297);
  a2[8] = v28;
  a2[9] = v5;
  a2[10] = v2[18];
  *(a2 + 169) = *(v2 + 297);
  a2[4] = v7;
  a2[5] = v9;
  a2[6] = v11;
  a2[7] = v4;
  *a2 = v15;
  a2[1] = v14;
  a2[2] = v16;
  a2[3] = v8;
  v17 = a1[2];
  v20[0] = a1[1];
  v20[1] = v17;
  v20[2] = a1[3];
  v18 = type metadata accessor for SFFluidCollectionView.DataSource.Transaction(0, v20);
  return (*(*(v18 - 8) + 16))(v20, v21, v18);
}

double SFFluidCollectionView.Update.transaction.setter(__int128 *a1, _OWORD *a2)
{
  v3 = a1[9];
  v30 = a1[8];
  v31 = v3;
  v32[0] = a1[10];
  *(v32 + 9) = *(a1 + 169);
  v4 = a1[5];
  v26 = a1[4];
  v27 = v4;
  v5 = a1[7];
  v28 = a1[6];
  v29 = v5;
  v6 = a1[1];
  v22 = *a1;
  v23 = v6;
  v7 = a1[3];
  v24 = a1[2];
  v25 = v7;
  v8 = v2[17];
  v33[8] = v2[16];
  v33[9] = v8;
  v34[0] = v2[18];
  *(v34 + 9) = *(v2 + 297);
  v9 = v2[13];
  v33[4] = v2[12];
  v33[5] = v9;
  v10 = v2[15];
  v33[6] = v2[14];
  v33[7] = v10;
  v11 = v2[9];
  v33[0] = v2[8];
  v33[1] = v11;
  v12 = v2[11];
  v33[2] = v2[10];
  v33[3] = v12;
  v13 = a2[2];
  v21[0] = a2[1];
  v21[1] = v13;
  v21[2] = a2[3];
  v14 = type metadata accessor for SFFluidCollectionView.DataSource.Transaction(0, v21);
  (*(*(v14 - 8) + 8))(v33, v14);
  v15 = v31;
  v2[16] = v30;
  v2[17] = v15;
  v2[18] = v32[0];
  *(v2 + 297) = *(v32 + 9);
  v16 = v27;
  v2[12] = v26;
  v2[13] = v16;
  v17 = v29;
  v2[14] = v28;
  v2[15] = v17;
  v18 = v23;
  v2[8] = v22;
  v2[9] = v18;
  result = *&v24;
  v20 = v25;
  v2[10] = v24;
  v2[11] = v20;
  return result;
}

uint64_t sub_18BB3FA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18BB3FA8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 313) = 1;
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

    *(result + 313) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_18BB3FB20@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  v11 = a5[1];
  *(a7 + 32) = *a5;
  *(a7 + 48) = v11;
  *(a7 + 64) = a5[2];
  *(a7 + 73) = *(a5 + 41);
  *(a7 + 96) = a8;
  *(a7 + 104) = a9;
  *(a7 + 112) = a10;
  *(a7 + 120) = a11;
  v12 = *a6;
  v13 = a6[1];
  v14 = a6[3];
  *(a7 + 160) = a6[2];
  *(a7 + 176) = v14;
  *(a7 + 128) = v12;
  *(a7 + 144) = v13;
  v15 = a6[4];
  v16 = a6[5];
  v17 = a6[7];
  *(a7 + 224) = a6[6];
  *(a7 + 240) = v17;
  *(a7 + 192) = v15;
  *(a7 + 208) = v16;
  result = a6[8];
  v19 = a6[9];
  v20 = a6[10];
  *(a7 + 297) = *(a6 + 169);
  *(a7 + 272) = v19;
  *(a7 + 288) = v20;
  *(a7 + 256) = result;
  return result;
}

uint64_t sub_18BB3FB8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 72))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18BB3FBE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_18BB3FC44(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6964615272756C62;
    v6 = 0x7372657665527369;
    if (a1 != 2)
    {
      v6 = 0x65736E496B73616DLL;
    }

    if (a1)
    {
      v5 = 0x615272656E726F63;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x754F656372756F73;
    v2 = 0x6854656372756F73;
    if (a1 != 7)
    {
      v2 = 0x73656E6B63696874;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x696461526B73616DLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_18BB3FD88(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9BA0, &qword_18BC4EF68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18BB41614();
  sub_18BC221F8();
  v11 = *v3;
  HIBYTE(v10) = 0;
  sub_18B992D74();
  sub_18BC21F28();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = v3[1];
  HIBYTE(v10) = 1;
  sub_18BC21F28();
  LOBYTE(v11) = 2;
  sub_18BC21F08();
  v11 = v3[3];
  HIBYTE(v10) = 3;
  sub_18BC21F28();
  v11 = v3[4];
  HIBYTE(v10) = 4;
  sub_18BC21F28();
  LOBYTE(v11) = 5;
  sub_18BC21F18();
  v11 = v3[6];
  HIBYTE(v10) = 6;
  sub_18BC21F28();
  v11 = v3[7];
  HIBYTE(v10) = 7;
  sub_18BC21F28();
  v11 = v3[8];
  HIBYTE(v10) = 8;
  sub_18BC21F28();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18BB4007C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x18CFFD690](*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x18CFFD690](*&v2);
  sub_18BC22178();
  v3 = *(v0 + 24);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x18CFFD690](*&v3);
  v4 = *(v0 + 32);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x18CFFD690](*&v4);
  MEMORY[0x18CFFD660](*(v0 + 40));
  v5 = *(v0 + 48);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x18CFFD690](*&v5);
  v6 = *(v0 + 56);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x18CFFD690](*&v6);
  v7 = *(v0 + 64);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  return MEMORY[0x18CFFD690](*&v7);
}

uint64_t sub_18BB40154@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18BB40F70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_18BB40188(uint64_t a1)
{
  v2 = sub_18BB41614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18BB401C4(uint64_t a1)
{
  v2 = sub_18BB41614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_18BB40200@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_18BB41278(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_18BB4026C()
{
  sub_18BC22158();
  sub_18BB4007C();
  return sub_18BC221A8();
}

uint64_t sub_18BB402B0(uint64_t a1)
{
  sub_18BC22158();
  sub_18BB4007C();
  return sub_18BC221A8();
}

BOOL sub_18BB402EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_18BB4041C(v7, v9);
}

unint64_t sub_18BB4034C()
{
  result = qword_1EA9D9B80;
  if (!qword_1EA9D9B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9B80);
  }

  return result;
}

unint64_t sub_18BB403A0(uint64_t a1)
{
  result = sub_18BB403C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18BB403C8()
{
  result = qword_1EA9D9B88;
  if (!qword_1EA9D9B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9B88);
  }

  return result;
}

void sub_18BB404B8(uint64_t a1, double a2, double a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69793F8]) init];
  v7 = _SFOnePixel();
  v8 = *(a1 + 8);
  v9 = *(a1 + 56);
  v10 = v8 - *(a1 + 64);
  v11 = *(a1 + 16);
  v12 = *(a1 + 48);
  v13 = v8 + v12;
  v14 = v8 + v12 + v9;
  if (v11)
  {
    v14 = v10 - v12;
    v13 = v10 - v12 - v9;
  }

  v15 = *(a1 + 40);
  v16 = v8 + v9 + v12;
  if (v11)
  {
    v16 = v8;
  }

  if (v15 < 0)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v15)
  {
    v17 = 0;
    v18 = v10 - v7;
    v19 = v18 / a2;
    v20 = v18 / a3;
    v21 = v7 + v8;
    v22 = v13 / a3;
    v23 = v13 / a2;
    v24 = v14 / a2;
    v25 = v14 / a3;
    v26 = v16 / a3;
    v99 = v16 / a2;
    v100 = v21 / a3;
    v103 = v19;
    v104 = 1.0 - v16 / a2;
    v101 = v21 / a2;
    v102 = v20;
    v114 = v25;
    v115 = v24;
    if (v11)
    {
      v27 = v21 / a2;
    }

    else
    {
      v27 = v24;
    }

    if (v11)
    {
      v28 = v21 / a3;
    }

    else
    {
      v28 = v25;
    }

    v112 = v28;
    v113 = v27;
    v116 = v23;
    v117 = v22;
    if (v11)
    {
      v29 = v19;
    }

    else
    {
      v29 = v23;
    }

    if (v11)
    {
      v30 = v20;
    }

    else
    {
      v30 = v22;
    }

    v110 = v30;
    v111 = v29;
    v109 = 3.14159265 / (v15 + v15);
    while (1)
    {
      v31 = v17 + 1;
      v32 = v109 * (v17 + 1) + 0.0;
      v33 = __sincos_stret(v109 * v17 + 0.0);
      v34 = __sincos_stret(v32);
      v35 = v116;
      v36 = v117;
      v37 = v114;
      v38 = v115;
      if ((v11 & 1) == 0)
      {
        v36 = v102;
        v35 = v103;
        v37 = v100;
        v38 = v101;
      }

      v39 = v104 + v33.__cosval * v35;
      v40 = v26 - v33.__sinval * v36;
      v41 = v104 + v34.__cosval * v35;
      v42 = v26 - v34.__sinval * v36;
      v105 = v104 + v34.__cosval * v38;
      *&v118 = v104 + v111 * v33.__cosval;
      *(&v118 + 1) = v26 - v110 * v33.__sinval;
      v43 = v26 - v34.__sinval * v37;
      *&v119 = v104 + v33.__cosval * v38;
      *(&v119 + 1) = v26 - v33.__sinval * v37;
      v120 = 0;
      [v6 addVertex_];
      *&v118 = v104 + v113 * v33.__cosval;
      *(&v118 + 1) = v26 - v112 * v33.__sinval;
      *&v119 = v39;
      *(&v119 + 1) = v40;
      v120 = 0;
      [v6 addVertex_];
      *&v118 = v104 + v113 * v34.__cosval;
      *(&v118 + 1) = v26 - v112 * v34.__sinval;
      *&v119 = v41;
      *(&v119 + 1) = v42;
      v120 = 0;
      [v6 addVertex_];
      *&v118 = v104 + v111 * v34.__cosval;
      *(&v118 + 1) = v26 - v110 * v34.__sinval;
      *&v119 = v105;
      *(&v119 + 1) = v43;
      v120 = 0;
      [v6 addVertex_];
      v44 = [v6 vertexCount];
      if ((v44 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }

      if (HIDWORD(v44))
      {
        goto LABEL_68;
      }

      if (v44 < 4)
      {
        goto LABEL_69;
      }

      LODWORD(v118) = v44 - 4;
      *(&v118 + 4) = vadd_s32(vdup_n_s32(v44), 0xFFFFFFFEFFFFFFFDLL);
      HIDWORD(v118) = v44 - 1;
      v119 = 0uLL;
      [v6 addFace_];
      v17 = v31;
      if (v15 == v31)
      {
        v45 = 0;
        while (1)
        {
          v46 = v45 + 1;
          v47 = v109 * (v45 + 1) + 1.57079633;
          v48 = __sincos_stret(v109 * v45 + 1.57079633);
          v49 = __sincos_stret(v47);
          v50 = v116;
          v51 = v117;
          v52 = v114;
          v53 = v115;
          if ((v11 & 1) == 0)
          {
            v51 = v102;
            v50 = v103;
            v52 = v100;
            v53 = v101;
          }

          v54 = v99 + v48.__cosval * v50;
          v55 = v26 - v48.__sinval * v51;
          v56 = v99 + v49.__cosval * v50;
          v57 = v26 - v49.__sinval * v51;
          v106 = v99 + v49.__cosval * v53;
          *&v118 = v99 + v111 * v48.__cosval;
          *(&v118 + 1) = v26 - v110 * v48.__sinval;
          v58 = v26 - v49.__sinval * v52;
          *&v119 = v99 + v48.__cosval * v53;
          *(&v119 + 1) = v26 - v48.__sinval * v52;
          v120 = 0;
          [v6 addVertex_];
          *&v118 = v99 + v113 * v48.__cosval;
          *(&v118 + 1) = v26 - v112 * v48.__sinval;
          *&v119 = v54;
          *(&v119 + 1) = v55;
          v120 = 0;
          [v6 addVertex_];
          *&v118 = v99 + v113 * v49.__cosval;
          *(&v118 + 1) = v26 - v112 * v49.__sinval;
          *&v119 = v56;
          *(&v119 + 1) = v57;
          v120 = 0;
          [v6 addVertex_];
          *&v118 = v99 + v111 * v49.__cosval;
          *(&v118 + 1) = v26 - v110 * v49.__sinval;
          *&v119 = v106;
          *(&v119 + 1) = v58;
          v120 = 0;
          [v6 addVertex_];
          v59 = [v6 vertexCount];
          if ((v59 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }

          if (HIDWORD(v59))
          {
            goto LABEL_71;
          }

          if (v59 < 4)
          {
            goto LABEL_72;
          }

          LODWORD(v118) = v59 - 4;
          *(&v118 + 4) = vadd_s32(vdup_n_s32(v59), 0xFFFFFFFEFFFFFFFDLL);
          HIDWORD(v118) = v59 - 1;
          v119 = 0uLL;
          [v6 addFace_];
          v45 = v46;
          if (v15 == v46)
          {
            v60 = 0;
            v61 = 1.0 - v26;
            while (1)
            {
              v62 = v60 + 1;
              v63 = v109 * (v60 + 1) + 3.14159265;
              v64 = __sincos_stret(v109 * v60 + 3.14159265);
              v65 = __sincos_stret(v63);
              v66 = v116;
              v67 = v117;
              v68 = v114;
              v69 = v115;
              if ((v11 & 1) == 0)
              {
                v67 = v102;
                v66 = v103;
                v68 = v100;
                v69 = v101;
              }

              v70 = v99 + v64.__cosval * v66;
              v71 = v61 - v64.__sinval * v67;
              v72 = v99 + v65.__cosval * v66;
              v73 = v61 - v65.__sinval * v67;
              v107 = v99 + v65.__cosval * v69;
              *&v118 = v99 + v111 * v64.__cosval;
              *(&v118 + 1) = v61 - v110 * v64.__sinval;
              v74 = v61 - v65.__sinval * v68;
              *&v119 = v99 + v64.__cosval * v69;
              *(&v119 + 1) = v61 - v64.__sinval * v68;
              v120 = 0;
              [v6 addVertex_];
              *&v118 = v99 + v113 * v64.__cosval;
              *(&v118 + 1) = v61 - v112 * v64.__sinval;
              *&v119 = v70;
              *(&v119 + 1) = v71;
              v120 = 0;
              [v6 addVertex_];
              *&v118 = v99 + v113 * v65.__cosval;
              *(&v118 + 1) = v61 - v112 * v65.__sinval;
              *&v119 = v72;
              *(&v119 + 1) = v73;
              v120 = 0;
              [v6 addVertex_];
              *&v118 = v99 + v111 * v65.__cosval;
              *(&v118 + 1) = v61 - v110 * v65.__sinval;
              *&v119 = v107;
              *(&v119 + 1) = v74;
              v120 = 0;
              [v6 addVertex_];
              v75 = [v6 vertexCount];
              if ((v75 & 0x8000000000000000) != 0)
              {
                goto LABEL_73;
              }

              if (HIDWORD(v75))
              {
                goto LABEL_74;
              }

              if (v75 < 4)
              {
                goto LABEL_75;
              }

              LODWORD(v118) = v75 - 4;
              *(&v118 + 4) = vadd_s32(vdup_n_s32(v75), 0xFFFFFFFEFFFFFFFDLL);
              HIDWORD(v118) = v75 - 1;
              v119 = 0uLL;
              [v6 addFace_];
              v60 = v62;
              if (v15 == v62)
              {
                v76 = 0;
                while (1)
                {
                  v77 = v76 + 1;
                  v78 = v109 * (v76 + 1) + 4.71238898;
                  v79 = __sincos_stret(v109 * v76 + 4.71238898);
                  v80 = __sincos_stret(v78);
                  v81 = v116;
                  v82 = v117;
                  v83 = v114;
                  v84 = v115;
                  if ((v11 & 1) == 0)
                  {
                    v82 = v102;
                    v81 = v103;
                    v83 = v100;
                    v84 = v101;
                  }

                  v85 = v104 + v79.__cosval * v81;
                  v86 = v61 - v79.__sinval * v82;
                  v87 = v104 + v80.__cosval * v81;
                  v88 = v61 - v80.__sinval * v82;
                  v108 = v104 + v80.__cosval * v84;
                  *&v118 = v104 + v111 * v79.__cosval;
                  *(&v118 + 1) = v61 - v110 * v79.__sinval;
                  v89 = v61 - v80.__sinval * v83;
                  *&v119 = v104 + v79.__cosval * v84;
                  *(&v119 + 1) = v61 - v79.__sinval * v83;
                  v120 = 0;
                  [v6 addVertex_];
                  *&v118 = v104 + v113 * v79.__cosval;
                  *(&v118 + 1) = v61 - v112 * v79.__sinval;
                  *&v119 = v85;
                  *(&v119 + 1) = v86;
                  v120 = 0;
                  [v6 addVertex_];
                  *&v118 = v104 + v113 * v80.__cosval;
                  *(&v118 + 1) = v61 - v112 * v80.__sinval;
                  *&v119 = v87;
                  *(&v119 + 1) = v88;
                  v120 = 0;
                  [v6 addVertex_];
                  *&v118 = v104 + v111 * v80.__cosval;
                  *(&v118 + 1) = v61 - v110 * v80.__sinval;
                  *&v119 = v108;
                  *(&v119 + 1) = v89;
                  v120 = 0;
                  [v6 addVertex_];
                  v90 = [v6 vertexCount];
                  if ((v90 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_76;
                  }

                  if (HIDWORD(v90))
                  {
                    goto LABEL_77;
                  }

                  if (v90 < 4)
                  {
                    goto LABEL_78;
                  }

                  LODWORD(v118) = v90 - 4;
                  *(&v118 + 4) = vadd_s32(vdup_n_s32(v90), 0xFFFFFFFEFFFFFFFDLL);
                  HIDWORD(v118) = v90 - 1;
                  v119 = 0uLL;
                  [v6 addFace_];
                  v76 = v77;
                  if (v15 == v77)
                  {
                    if (v15 > 0xFFFFFFFFLL)
                    {
                      goto LABEL_80;
                    }

                    if (!(v15 >> 30))
                    {
                      v91 = 4 * v15;
                      goto LABEL_51;
                    }

                    goto LABEL_81;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v91 = 0;
LABEL_51:
  v92 = v6;
  v93 = [v92 vertexCount];
  if ((v93 & 0x8000000000000000) != 0)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v94 = v93;
  if (HIDWORD(v93))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v93)
  {
    v95 = -3;
    v96 = v91;
    while (v96 >= 2)
    {
      [v92 vertexAtIndex_];
      [v92 addVertex_];
      [v92 vertexAtIndex_];
      [v92 addVertex_];
      [v92 vertexAtIndex_];
      [v92 addVertex_];
      [v92 vertexAtIndex_];
      [v92 addVertex_];
      v97 = [v92 vertexCount];
      if ((v97 & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }

      if (HIDWORD(v97))
      {
        goto LABEL_65;
      }

      if (v97 < 4)
      {
        goto LABEL_66;
      }

      LODWORD(v118) = v97 - 4;
      *(&v118 + 4) = vadd_s32(vdup_n_s32(v97), 0xFFFFFFFEFFFFFFFDLL);
      HIDWORD(v118) = v97 - 1;
      v119 = 0uLL;
      [v92 addFace_];
      if (!v95)
      {
        goto LABEL_62;
      }

      v98 = v91 * (v95 + 5);
      v96 += v91;
      ++v95;
      if ((v98 & 0xFFFFFFFF00000000) != 0)
      {
        __break(1u);
LABEL_62:

        return;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
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
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

LABEL_84:
  __break(1u);
}

uint64_t sub_18BB40F70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6964615272756C62 && a2 == 0xEA00000000007375;
  if (v4 || (sub_18BC21FD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964 || (sub_18BC21FD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7372657665527369 && a2 == 0xEA00000000006465 || (sub_18BC21FD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65736E496B73616DLL && a2 == 0xE900000000000074 || (sub_18BC21FD8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696461526B73616DLL && a2 == 0xEA00000000007375 || (sub_18BC21FD8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000018BC6D890 == a2 || (sub_18BC21FD8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x754F656372756F73 && a2 == 0xEC00000074657374 || (sub_18BC21FD8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6854656372756F73 && a2 == 0xEF7373656E6B6369 || (sub_18BC21FD8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73656E6B63696874 && a2 == 0xE900000000000073)
  {

    return 8;
  }

  else
  {
    v6 = sub_18BC21FD8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_18BB41278@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9B90, &qword_18BC4EF60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  _SFOnePixel();
  _SFOnePixel();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18BB41614();
  sub_18BC221D8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = 0;
  sub_18B992B4C();
  sub_18BC21EA8();
  v9 = v21;
  v20 = 1;
  sub_18BC21EA8();
  v10 = v21;
  LOBYTE(v21) = 2;
  v11 = sub_18BC21E88();
  v20 = 3;
  sub_18BC21EA8();
  v12 = v21;
  v20 = 4;
  sub_18BC21EA8();
  v13 = v21;
  LOBYTE(v21) = 5;
  v19 = sub_18BC21E98();
  v20 = 6;
  sub_18BC21EA8();
  v14 = v21;
  v20 = 7;
  sub_18BC21EA8();
  v15 = v21;
  v20 = 8;
  sub_18BC21EA8();
  (*(v6 + 8))(v8, v5);
  v16 = v21;
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v19;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  *(a2 + 64) = v16;
  return result;
}

unint64_t sub_18BB41614()
{
  result = qword_1EA9D9B98;
  if (!qword_1EA9D9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9B98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoundedRectangleReflection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RoundedRectangleReflection.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18BB417BC()
{
  result = qword_1EA9D9BA8;
  if (!qword_1EA9D9BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9BA8);
  }

  return result;
}

unint64_t sub_18BB41814()
{
  result = qword_1EA9D9BB0;
  if (!qword_1EA9D9BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9BB0);
  }

  return result;
}

unint64_t sub_18BB4186C()
{
  result = qword_1EA9D9BB8;
  if (!qword_1EA9D9BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9BB8);
  }

  return result;
}

uint64_t sub_18BB418C0()
{
  v25 = sub_18BC20B08();
  v0 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v24 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_18BC20B68();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = v19 - v4;
  v5 = sub_18BC1E8B8();
  v20 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_18BC1E8D8();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_18BC1E4F8();
  __swift_allocate_value_buffer(v12, qword_1EA9F82E0);
  v21 = __swift_project_value_buffer(v12, qword_1EA9F82E0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v13 = *MEMORY[0x1E6968DF0];
  v14 = *(v6 + 104);
  v19[1] = v6 + 104;
  v14(v8, v13, v5);
  sub_18BC1E8F8();
  sub_18BC20B58();
  sub_18BC20B48();
  v15 = v24;
  v16 = v25;
  (*(v0 + 104))(v24, *MEMORY[0x1E6969D68], v25);
  sub_18BC20B28();
  (*(v0 + 8))(v15, v16);
  sub_18BC20B48();
  sub_18BC20B78();
  sub_18BC1EC38();
  v14(v8, v13, v20);
  v17 = v26;
  sub_18BC1E8F8();
  (*(v22 + 56))(v17, 0, 1, v23);
  return sub_18BC1E4E8();
}

uint64_t sub_18BB41D78@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4608, &unk_18BC47050);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_18BC1E8B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_18BC1E8D8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v8 + 104))(v10, *MEMORY[0x1E6968DF0], v7);
  sub_18BC1E8F8();
  (*(v14 + 56))(v6, 1, 1, v13);
  v15 = sub_18BC1E398();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  return sub_18BC1E3A8();
}

uint64_t sub_18BB420D0(uint64_t a1)
{
  v2 = sub_18BB43488(&qword_1EA9D9C68, type metadata accessor for PrivateTabEntity, &unk_18BC4F0B0);

  return MEMORY[0x1EEDB29C0](a1, v2);
}

uint64_t sub_18BB4214C(uint64_t a1)
{
  sub_18BB43488(&qword_1EA9D9C68, type metadata accessor for PrivateTabEntity, &unk_18BC4F0B0);

  return sub_18BC1DE28();
}

uint64_t sub_18BB42200(uint64_t a1)
{
  v2 = sub_18BB43488(&qword_1EA9D9BC8, type metadata accessor for PrivateTabEntity, &unk_18BC4F0E8);

  return MEMORY[0x1EEDB2C50](a1, v2);
}

uint64_t sub_18BB4227C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18BC1E3B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_18BB422E4(uint64_t a1)
{
  v2 = sub_18BB43488(&qword_1EA9D9C10, type metadata accessor for PrivateTabEntity, &unk_18BC4F298);

  return MEMORY[0x1EEDB3F70](a1, v2);
}

uint64_t sub_18BB42360(__n128 a1)
{
  v1 = sub_18BC1E8B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v7, qword_1EA9F82F8);
  __swift_project_value_buffer(v7, qword_1EA9F82F8);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v2 + 104))(v4, *MEMORY[0x1E6968DF0], v1);
  return sub_18BC1E8F8();
}

id sub_18BB42558(void *a1)
{
  result = [a1 canCreateNewPrivateTab];
  if (!result)
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v2 = sub_18BC1DE48();
    v3 = __swift_project_value_buffer(v2, qword_1EA9F8578);
    sub_18BB43488(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v2 - 8) + 16))(v4, v3, v2);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_18BB426A0(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for PrivateTabEntity(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18BB42734, 0, 0);
}

uint64_t sub_18BB42734()
{
  v1 = *(v0 + 32);
  sub_18BB41D78(v1);
  sub_18BB43488(&qword_1EA9D9C08, type metadata accessor for PrivateTabEntity, &unk_18BC4F238);
  sub_18BC1DF88();
  sub_18BB4342C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t SFSiriLinkCoordinator.createNewPrivateTabInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC4F098;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B808924();
  return sub_18BC1F028();
}

uint64_t sub_18BB428B0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = type metadata accessor for PrivateTabEntity(0);
  v2[8] = swift_task_alloc();
  sub_18BC20F28();
  v2[9] = sub_18BC20F18();
  v4 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BB42978, v4, v3);
}

uint64_t sub_18BB42978()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "New Private Tab", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = v0[8];
    v9 = v0[5];

    [v3 createNewPrivateTab];
    sub_18BB41D78(v8);
    v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9C60, &qword_18BC4F498);
    v9[4] = sub_18B7B0B08(&unk_1EA9D9C70, &qword_1EA9D9C60, &qword_18BC4F498, MEMORY[0x1E695A418]);
    __swift_allocate_boxed_opaque_existential_0Tm(v9);
    sub_18BB43488(&qword_1EA9D9C08, type metadata accessor for PrivateTabEntity, &unk_18BC4F238);
    sub_18BC1DF88();
    swift_unknownObjectRelease();
    sub_18BB4342C(v8);

    v10 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v11 = sub_18BC1DE48();
    v12 = __swift_project_value_buffer(v11, qword_1EA9F8578);
    sub_18BB43488(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v11 - 8) + 16))(v13, v12, v11);
    swift_willThrow();

    v10 = v0[1];
  }

  return v10();
}

uint64_t sub_18BB42CB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B7B6968;

  return sub_18BB428B0(a1, v1);
}

uint64_t sub_18BB42D54(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_18B987B10;

  return v7(a1);
}

uint64_t sub_18BB42E4C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BB42D54(a1, a2, v6);
}

uint64_t type metadata accessor for PrivateTabEntity(uint64_t a1)
{
  result = qword_1EA9D9C48;
  if (!qword_1EA9D9C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_18BB431E4()
{
  result = qword_1EA9D9C30;
  if (!qword_1EA9D9C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9C30);
  }

  return result;
}

uint64_t sub_18BB432E8(uint64_t a1)
{
  result = sub_18BC1E3B8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18BB43364(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18BB42D54(a1, a2, v6);
}

uint64_t sub_18BB4342C(uint64_t a1)
{
  v2 = type metadata accessor for PrivateTabEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18BB43488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18BB434DC()
{
  v1 = _s7SectionVMa_1(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s4ItemVMa_2(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  sub_18B7CA054(v0, &v20 - v11, &unk_1EA9D92F0, &qword_18BC42990);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090, &unk_18BC4CB80);
      v16 = swift_projectBox();
      v17 = *(v15 + 48);
      sub_18B833990(v16, &v23);
      sub_18B7CA054(v16 + v17, v9, &unk_1EA9D92F0, &qword_18BC42990);
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_18BC21AD8();
      MEMORY[0x18CFFC150](0xD000000000000011, 0x800000018BC64120);
      sub_18BC21C58();
      MEMORY[0x18CFFC150](0x657265666572202CLL, 0xEE00203A7365636ELL);
      v18 = sub_18BB434DC();
      MEMORY[0x18CFFC150](v18);

      MEMORY[0x18CFFC150](32032, 0xE200000000000000);
      v14 = v21;
      sub_18B988BAC(v9, &unk_1EA9D92F0, &qword_18BC42990);
      sub_18B833D9C(&v23);
    }

    else
    {
      return 0x63656C6C6F63207BLL;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_18B85A83C(v12, v6, _s4ItemVMa_2);
    v23 = 0;
    v24 = 0xE000000000000000;
    MEMORY[0x18CFFC150](0x203A6D657469207BLL, 0xE800000000000000);
    sub_18BC21C58();
    MEMORY[0x18CFFC150](32032, 0xE200000000000000);
    v14 = v23;
    sub_18BB69570(v6, _s4ItemVMa_2);
  }

  else
  {
    sub_18B85A83C(v12, v3, _s7SectionVMa_1);
    v23 = 0;
    v24 = 0xE000000000000000;
    MEMORY[0x18CFFC150](0x6F6974636573207BLL, 0xEB00000000203A6ELL);
    sub_18BC21C58();
    MEMORY[0x18CFFC150](32032, 0xE200000000000000);
    v14 = v23;
    sub_18BB69570(v3, _s7SectionVMa_1);
  }

  return v14;
}

void sub_18BB438EC(_OWORD *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5048, &qword_18BC42F40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9300, &qword_18BC42E80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40, &unk_18BC42E70);
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v49 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  v56 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v55 = &v49 - v10;
  swift_beginAccess();
  v11 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v11;
  *(v1 + 48) = a1[2];

  *(v1 + 91) = 1;
  swift_beginAccess();
  if (*(v1 + 72) == 1)
  {
    sub_18B7CA054(a1, &v63, &unk_1EA9D4F90, &unk_18BC4F810);
    v12 = MEMORY[0x1E69E7CC0];
    v13 = sub_18B8509C8(MEMORY[0x1E69E7CC0]);
    v14 = sub_18B850C4C(v12);
    v57 = xmmword_18BC4F4B0;
    v15 = sub_18B850C04(v12);
    v16 = 1;
    v17 = 0;
    v18 = 1024.0;
  }

  else
  {
    swift_beginAccess();
    *(v65 + 9) = *(v1 + 137);
    v19 = *(v1 + 128);
    v64 = *(v1 + 112);
    v65[0] = v19;
    v63 = *(v1 + 96);
    v16 = BYTE8(v65[1]);
    v17 = *&v65[1];
    v18 = *(&v64 + 1);
    v57 = v19;
    v14 = *(&v63 + 1);
    v15 = v64;
    v13 = v63;
    sub_18B7CA054(a1, v62, &unk_1EA9D4F90, &unk_18BC4F810);
    sub_18B7CA054(&v63, v62, &unk_1EA9D50C0, &qword_18BC42F98);
  }

  *&v66 = v13;
  *(&v66 + 1) = v14;
  *&v67 = v15;
  *(&v67 + 1) = v18;
  *v68 = v57;
  *&v68[16] = v17;
  v68[24] = v16;
  if (*(v1 + 72))
  {
LABEL_28:
    (*(*v1 + 392))(&v66);
    swift_beginAccess();
    v47 = *(v1 + 112);
    v63 = *(v1 + 96);
    v64 = v47;
    v65[0] = *(v1 + 128);
    *(v65 + 9) = *(v1 + 137);
    v48 = v67;
    *(v1 + 96) = v66;
    *(v1 + 112) = v48;
    *(v1 + 128) = *v68;
    *(v1 + 137) = *&v68[9];
    sub_18B988BAC(&v63, &unk_1EA9D50C0, &qword_18BC42F98);
    sub_18BB440F8();
  }

  else
  {
    v49 = v1;
    v50 = v15;
    v20 = *(v1 + 64);
    v23 = *(v20 + 56);
    v22 = v20 + 56;
    v21 = v23;
    v24 = 1 << *(*(v1 + 64) + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v21;
    v27 = (v24 + 63) >> 6;
    v28 = v56;
    v58 = *(v1 + 64);
    v59 = (v56 + 56);
    sub_18BC1E3F8();
    v29 = 0;
    v30 = v55;
    while (v26)
    {
LABEL_15:
      v32 = *(v28 + 72);
      sub_18B7CA054(*(v58 + 48) + v32 * (__clz(__rbit64(v26)) | (v29 << 6)), v30, &unk_1EA9D92F0, &qword_18BC42990);
      v33 = v66;
      if (*(v66 + 16))
      {
        v34 = sub_18B83B1C8(v30);
        if (v35)
        {
          sub_18B7CA054(*(v33 + 56) + *(v51 + 72) * v34, v61, &unk_1EA9D4F40, &unk_18BC42E70);
          v36 = v53;
          sub_18BB5A168(v30, v53);
          sub_18B988BAC(v36, &unk_1EA9D9300, &qword_18BC42E80);
          v37 = sub_18B83B1C8(v30);
          if (v38)
          {
            v39 = v37;
            v40 = v67;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v63 = v40;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_18BB2B488();
              v40 = v63;
            }

            sub_18B988BAC(*(v40 + 48) + v39 * v32, &unk_1EA9D92F0, &qword_18BC42990);

            sub_18BB5C6F4(v39, v40);

            v50 = v40;
            *&v67 = v40;
          }

          sub_18B86B4C4(v18, *&v57, *(v61 + *(v52 + 96)), *(v61 + *(v52 + 96) + 8), *(v61 + *(v52 + 96) + 16), *(v61 + *(v52 + 96) + 24));
          v54 = v42;
          v43 = *(v42 + 16);
          if (v43)
          {
            v44 = (v54 + 56);
            do
            {
              v45 = sub_18BB59810(&v63, *(v44 - 3), *(v44 - 2), *(v44 - 1), *v44);
              if (*v46)
              {
                sub_18B9CE534(v61, v5);
                sub_18B988BAC(v5, &qword_1EA9D5048, &qword_18BC42F40);
                (v45)(&v63, 0);
              }

              else
              {
                (v45)(&v63, 0);
                (*v59)(v5, 1, 1, v60);
                sub_18B988BAC(v5, &qword_1EA9D5048, &qword_18BC42F40);
              }

              v44 += 4;
              --v43;
            }

            while (v43);
          }

          sub_18B988BAC(v61, &unk_1EA9D4F40, &unk_18BC42E70);
          v30 = v55;
          v28 = v56;
        }
      }

      v26 &= v26 - 1;
      sub_18B988BAC(v30, &unk_1EA9D92F0, &qword_18BC42990);
    }

    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v31 >= v27)
      {

        v1 = v49;
        goto LABEL_28;
      }

      v26 = *(v22 + 8 * v31);
      ++v29;
      if (v26)
      {
        v29 = v31;
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

double sub_18BB44000()
{
  sub_18B81F588(__src);
  swift_beginAccess();
  memcpy(__dst, (v0 + 168), 0x139uLL);
  memcpy((v0 + 168), __src, 0x139uLL);
  sub_18B988BAC(__dst, &qword_1EA9D5100, &unk_18BC42FC0);
  swift_beginAccess();
  *(v0 + 64) = MEMORY[0x1E69E7CD0];
  *(v0 + 72) = 0;
  *(v0 + 74) = 0;

  *(v0 + 91) = 0;
  swift_beginAccess();
  v2 = *(v0 + 80);
  if (v2)
  {
    v3 = *(v0 + 88) | (*(v0 + 90) << 16);
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    *(v0 + 90) = 0;
    sub_18B8487D0(v2, v3 & 0x1010101);
  }

  return result;
}

void sub_18BB440F8()
{
  v1 = v0;
  v2 = _s4ItemVMa_2(0);
  v120 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v128 = v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v133 = v114 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v129 = v114 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v114 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40, &unk_18BC42E70);
  v127 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v114 - v15;
  v17 = _s7SectionVMa_1(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v140 = v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v136 = v114 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v139 = v114 - v23;
  v24 = sub_18B850D54(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  *(v1 + 160) = v24;

  swift_beginAccess();
  v25 = *(v1 + 56);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = *(v1 + 48);
    v119 = v18;
    v118 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v117 = v25 + v118;
    v114[1] = v27;
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    v28 = 0;
    v123 = v6;
    v132 = v16;
    v29 = v139;
    v131 = v4;
    v125 = v14;
    v116 = v17;
    v115 = v25;
    v122 = v1;
    while (1)
    {
      if (v28 >= v26)
      {
        goto LABEL_61;
      }

      v31 = *(v119 + 72);
      v121 = v28;
      v134 = v31;
      sub_18B85A52C(v117 + v31 * v28, v29, _s7SectionVMa_1);
      v32 = *(v1 + 24);
      v138 = *(v1 + 16);
      v137.size.width = v32;
      v33 = *(v1 + 32);
      v137.origin.x = *(v1 + 40);
      v35 = *(v1 + 48);
      v34 = *(v1 + 56);
      v36 = v34 + v118;
      v37 = *(v34 + 16);
      v130 = v35;
      v135 = v33;
      v126 = v34;
      if (!v35)
      {
        sub_18BC1E1A8();
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v41 = v136;
        if (v37)
        {
          v38 = 0;
          while (1)
          {
            sub_18B85A52C(v36, v41, _s7SectionVMa_1);
            v42 = v139;
            if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
            {
              v43 = *(v136 + *(v17 + 20));
              sub_18BB69570(v136, _s7SectionVMa_1);
              v44 = v43 == *(v42 + *(v17 + 20));
              v41 = v136;
              if (v44)
              {
                goto LABEL_16;
              }
            }

            else
            {
              sub_18BB69570(v41, _s7SectionVMa_1);
            }

            ++v38;
            v36 += v134;
            if (v37 == v38)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_67;
      }

      sub_18BC1E1A8();
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      swift_retain_n();
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v38 = sub_18B9D0D54(v139, v36, v37, (v35 + 16), v35 + 32);
      v40 = v39;

      if (v40)
      {
        goto LABEL_67;
      }

      if ((v38 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

LABEL_16:
      if (v38 >= *(v138 + 16))
      {
        goto LABEL_63;
      }

      v45 = v138 + 16 * v38;
      v46 = *(v45 + 32);
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }

      v47 = v135;
      v48 = *(v135 + 16);
      if (v48 < v46)
      {
        goto LABEL_65;
      }

      v49 = *(v45 + 40);
      if (v48 < v49)
      {
        goto LABEL_65;
      }

      if (v49 < 0)
      {
        goto LABEL_66;
      }

      sub_18BC1E1A8();
      v50 = v47;
      if (v48 != v49 - v46)
      {
        sub_18BB59AB8(v47, v47 + ((*(v120 + 80) + 32) & ~*(v120 + 80)), v46, (2 * v49) | 1, &unk_1EA9D4FB0, &qword_18BC42888, _s4ItemVMa_2);
        v50 = v113;
      }

      v51 = *(v50 + 16);
      v52 = v125;
      if (v51)
      {
        break;
      }

LABEL_3:
      v30 = v121 + 1;
      v29 = v139;
      sub_18BB69570(v139, _s7SectionVMa_1);

      v28 = v30;
      v26 = *(v115 + 16);
      v17 = v116;
      if (v28 == v26)
      {

        return;
      }
    }

    v53 = *(v120 + 80);
    swift_beginAccess();
    if (*(v50 + 16))
    {
      v54 = 0;
      v55 = v50 + ((v53 + 32) & ~v53);
      v126 = *(v120 + 72);
      v130 = v51 - 1;
      v124 = v50;
      do
      {
        v138 = v54;
        v56 = *(v1 + 112);
        v143[0] = *(v1 + 96);
        v143[1] = v56;
        *v144 = *(v1 + 128);
        *&v144[9] = *(v1 + 137);
        v135 = v55;
        sub_18B85A52C(v55, v13, _s4ItemVMa_2);
        swift_storeEnumTagMultiPayload();
        v57 = v129;
        sub_18B7CA054(v13, v129, &unk_1EA9D92F0, &qword_18BC42990);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 2)
        {
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090, &unk_18BC4CB80);
          v60 = swift_projectBox();
          v61 = *(v59 + 48);
          sub_18B833990(v60, &v142);
          v62 = v133;
          sub_18B7CA054(v60 + v61, v133, &unk_1EA9D92F0, &qword_18BC42990);
          v63 = *&v143[0];
          v64 = swift_allocBox();
          v66 = v65;
          v67 = *(v59 + 48);
          sub_18B833990(&v142, v65);
          v68 = v66 + v67;
          v69 = v123;
          sub_18B7CA054(v62, v68, &unk_1EA9D92F0, &qword_18BC42990);
          *v69 = v64;
          swift_storeEnumTagMultiPayload();
          if (!*(v63 + 16))
          {
            goto LABEL_57;
          }

          sub_18B7CA054(v143, v141, &unk_1EA9D50C0, &qword_18BC42F98);
          v70 = sub_18B83B1C8(v69);
          if ((v71 & 1) == 0)
          {
            goto LABEL_58;
          }

          v72 = *(v63 + 56) + *(v127 + 72) * v70;
          v73 = v132;
          sub_18B7CA054(v72, v132, &unk_1EA9D4F40, &unk_18BC42E70);
          sub_18B988BAC(v143, &unk_1EA9D50C0, &qword_18BC42F98);
          v74 = v69;
          v16 = v73;
          sub_18B988BAC(v74, &unk_1EA9D92F0, &qword_18BC42990);
          sub_18B988BAC(v133, &unk_1EA9D92F0, &qword_18BC42990);
          sub_18B833D9C(&v142);
          sub_18B988BAC(v13, &unk_1EA9D92F0, &qword_18BC42990);

          v1 = v122;
          v52 = v125;
        }

        else
        {
          if (EnumCaseMultiPayload != 1)
          {
            goto LABEL_68;
          }

          v75 = v128;
          sub_18B85A83C(v57, v128, _s4ItemVMa_2);
          v76 = *&v143[0];
          v77 = v75;
          v78 = v133;
          sub_18B85A52C(v77, v133, _s4ItemVMa_2);
          swift_storeEnumTagMultiPayload();
          if (!*(v76 + 16))
          {
            goto LABEL_56;
          }

          sub_18B7CA054(v143, v141, &unk_1EA9D50C0, &qword_18BC42F98);
          v79 = sub_18B83B1C8(v78);
          if ((v80 & 1) == 0)
          {
            goto LABEL_59;
          }

          sub_18B7CA054(*(v76 + 56) + *(v127 + 72) * v79, v16, &unk_1EA9D4F40, &unk_18BC42E70);
          sub_18B988BAC(v143, &unk_1EA9D50C0, &qword_18BC42F98);
          sub_18B988BAC(v78, &unk_1EA9D92F0, &qword_18BC42990);
          sub_18BB69570(v128, _s4ItemVMa_2);
          sub_18B988BAC(v13, &unk_1EA9D92F0, &qword_18BC42990);
          v50 = v124;
        }

        v81 = *(v1 + 160);
        v82 = v139;
        if (*(v81 + 16))
        {
          sub_18BC1E3F8();
          v83 = sub_18BB8B3DC(v82);
          if (v84)
          {
            v85 = *(v81 + 56) + 32 * v83;
            v86 = *v85;
            v137.size = *(v85 + 16);
            v137.origin = v86;

            goto LABEL_39;
          }
        }

        v87 = &v16[*(v52 + 96)];
        v88 = *v87;
        v137.size = *(v87 + 1);
        v137.origin = v88;
LABEL_39:
        v89 = v82;
        v90 = v140;
        sub_18B85A52C(v89, v140, _s7SectionVMa_1);
        v145 = CGRectUnion(v137, *&v16[*(v52 + 96)]);
        x = v145.origin.x;
        y = v145.origin.y;
        width = v145.size.width;
        height = v145.size.height;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v142 = *(v1 + 160);
        v96 = v142;
        *(v1 + 160) = 0x8000000000000000;
        v97 = sub_18BB8B3DC(v90);
        v99 = v96[2];
        v100 = (v98 & 1) == 0;
        v101 = __OFADD__(v99, v100);
        v102 = v99 + v100;
        if (v101)
        {
          goto LABEL_55;
        }

        v103 = v98;
        if (v96[3] >= v102)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v112 = v97;
            sub_18BB2BA04();
            v97 = v112;
          }
        }

        else
        {
          sub_18BB30030(v102, isUniquelyReferenced_nonNull_native);
          v97 = sub_18BB8B3DC(v140);
          if ((v103 & 1) != (v104 & 1))
          {
            goto LABEL_69;
          }
        }

        v16 = v132;
        v105 = v142;
        if (v103)
        {
          v106 = (v142[7] + 32 * v97);
          *v106 = x;
          v106[1] = y;
          v106[2] = width;
          v106[3] = height;
          sub_18BB69570(v140, _s7SectionVMa_1);
        }

        else
        {
          v142[(v97 >> 6) + 8] |= 1 << v97;
          v107 = v97;
          v108 = v140;
          sub_18B85A52C(v140, v105[6] + v97 * v134, _s7SectionVMa_1);
          v109 = (v105[7] + 32 * v107);
          *v109 = x;
          v109[1] = y;
          v109[2] = width;
          v109[3] = height;
          sub_18BB69570(v108, _s7SectionVMa_1);
          v110 = v105[2];
          v101 = __OFADD__(v110, 1);
          v111 = v110 + 1;
          if (v101)
          {
            goto LABEL_60;
          }

          v105[2] = v111;
        }

        *(v1 + 160) = v105;

        swift_endAccess();
        sub_18B988BAC(v16, &unk_1EA9D4F40, &unk_18BC42E70);
        if (v130 == v138)
        {
          goto LABEL_3;
        }

        v54 = v138 + 1;
        v55 = v135 + v126;
      }

      while ((v138 + 1) < *(v50 + 16));
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    sub_18BC21CF8();
    __break(1u);
LABEL_69:
    sub_18BC22078();
    __break(1u);
  }
}

uint64_t sub_18BB44F94(uint64_t a1)
{
  v55 = a1;
  v51 = _s7SectionVMa_1(0);
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v2 = &v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v51 - v4;
  v6 = _s4ItemVMa_2(0);
  v52 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  sub_18B7CA054(v55, &v51 - v16, &unk_1EA9D92F0, &qword_18BC42990);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v20 = v54[4];
      v19 = v54[5];
      sub_18B85A83C(v17, v5, _s7SectionVMa_1);
      v21 = v19 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v22 = *(v19 + 16);
      if (v20)
      {
        sub_18BC1E1A8();
        sub_18B9D0D54(v5, v21, v22, (v20 + 16), v20 + 32);
        v24 = v23;

        v25 = v24 ^ 1;
        v26 = _s7SectionVMa_1;
        v27 = v5;
LABEL_11:
        sub_18BB69570(v27, v26);
        return v25 & 1;
      }

      v41 = v51;
      if (v22)
      {
        v42 = *(v53 + 72);
        do
        {
          sub_18B85A52C(v21, v2, _s7SectionVMa_1);
          if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
          {
            v43 = v2[*(v41 + 20)];
            sub_18BB69570(v2, _s7SectionVMa_1);
            if (v43 == v5[*(v41 + 20)])
            {
              v44 = _s7SectionVMa_1;
              v45 = v5;
              goto LABEL_29;
            }
          }

          else
          {
            sub_18BB69570(v2, _s7SectionVMa_1);
          }

          v21 += v42;
          --v22;
        }

        while (v22);
      }

      v48 = _s7SectionVMa_1;
      v49 = v5;
LABEL_27:
      sub_18BB69570(v49, v48);
      v25 = 0;
      return v25 & 1;
    }

    v36 = v54[1];
    v35 = v54[2];
    sub_18B85A83C(v17, v11, _s4ItemVMa_2);
    v37 = v35 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v38 = *(v35 + 16);
    if (v36)
    {
      sub_18BC1E1A8();
      sub_18B9D0B20(v11, v37, v38, (v36 + 16), v36 + 32);
      v40 = v39;

      v25 = v40 ^ 1;
      v26 = _s4ItemVMa_2;
      v27 = v11;
      goto LABEL_11;
    }

    if (!v38)
    {
LABEL_25:
      v48 = _s4ItemVMa_2;
      v49 = v11;
      goto LABEL_27;
    }

    v46 = *(v52 + 72);
    while (1)
    {
      sub_18B85A52C(v37, v8, _s4ItemVMa_2);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18BB69570(v8, _s4ItemVMa_2);
      if (updated)
      {
        break;
      }

      v37 += v46;
      if (!--v38)
      {
        goto LABEL_25;
      }
    }

    v44 = _s4ItemVMa_2;
    v45 = v11;
LABEL_29:
    sub_18BB69570(v45, v44);
LABEL_30:
    v25 = 1;
    return v25 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_30;
  }

  v28 = v54[3];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090, &unk_18BC4CB80);
  v30 = swift_projectBox();
  v31 = *(v29 + 48);
  sub_18B833990(v30, v56);
  sub_18B7CA054(v30 + v31, v14, &unk_1EA9D92F0, &qword_18BC42990);
  if (*(v28 + 16) && (v32 = sub_18B83B1C8(v14), (v33 & 1) != 0))
  {
    v34 = *(*(v28 + 56) + 8 * v32);
    sub_18BC1E3F8();
    v25 = sub_18B85CEA8(v56, v34);
  }

  else
  {
    v25 = 0;
  }

  sub_18B988BAC(v14, &unk_1EA9D92F0, &qword_18BC42990);
  sub_18B833D9C(v56);

  return v25 & 1;
}

uint64_t sub_18BB45524()
{
  result = sub_18BC20B98();
  qword_1EA9D9C80 = result;
  return result;
}

uint64_t sub_18BB45580()
{
  result = sub_18BC20B98();
  qword_1EA9D9C88 = result;
  return result;
}

uint64_t sub_18BB455DC()
{
  result = sub_18BC20B98();
  qword_1EA9D9C90 = result;
  return result;
}

id sub_18BB45638(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

void SFFluidCollectionView.init(frame:layout:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v11 = MEMORY[0x1E69E7D40];
  v12 = (*MEMORY[0x1E69E7D40] & *v5);
  v13 = v12[11];
  v14 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v15 = sub_18BB32DD8(v14, v13, *(v12[14] + 8));
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  *(v6 + *((*v11 & *v6) + 0x80)) = v15;
  *(v6 + *((*v11 & *v6) + 0x88) + 8) = 0;
  swift_unknownObjectWeakInit();
  v16 = *((*v11 & *v6) + 0x90);
  v17 = v12[10];
  v18 = v12[12];
  v19 = v12[13];
  v21 = v12[14];
  v20 = v12[15];
  *&__src[0] = v17;
  *(&__src[0] + 1) = v13;
  *&__src[1] = v18;
  *(&__src[1] + 1) = v19;
  *&__src[2] = v21;
  *(&__src[2] + 1) = v20;
  type metadata accessor for SFFluidCollectionView.DataSource(0, __src);
  *(v6 + v16) = SFFluidCollectionView.DataSource.__allocating_init()();
  v22 = v17;
  *(v6 + *((*v11 & *v6) + 0x98)) = 1;
  v23 = (v6 + *((*v11 & *v6) + 0xA0));
  *v23 = 0;
  v23[1] = 0;
  v24 = (v6 + *((*v11 & *v6) + 0xA8));
  *v24 = 0;
  v24[1] = 0;
  v25 = (v6 + *((*v11 & *v6) + 0xB0));
  *v25 = 0;
  v25[1] = 0;
  *(v6 + *((*v11 & *v6) + 0xB8) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + *((*v11 & *v6) + 0xC0) + 8) = 0;
  swift_unknownObjectWeakInit();
  v26 = (*(v13 - 8) + 56);
  v91 = *v26;
  (*v26)(v6 + *((*v11 & *v6) + 0xC8), 1, 1, v13);
  *(v6 + *((*v11 & *v6) + 0xD0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + *((*v11 & *v6) + 0xD8)) = 0;
  *(v6 + *((*v11 & *v6) + 0xE0)) = 0;
  *&__src[0] = v22;
  *(&__src[0] + 1) = v13;
  v95 = v19;
  v96 = v18;
  *&__src[1] = v18;
  *(&__src[1] + 1) = v19;
  v94 = v21;
  *&__src[2] = v21;
  *(&__src[2] + 1) = v20;
  v27 = v20;
  v28 = type metadata accessor for SFFluidCollectionView.Element(0, __src);
  v29 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    WitnessTable = swift_getWitnessTable();
    v31 = sub_18BB32DD8(v29, v28, WitnessTable);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CD0];
  }

  *(v6 + *((*v11 & *v6) + 0xE8)) = v31;
  *(v6 + *((*v11 & *v6) + 0xF0)) = 0;
  *(v6 + *((*v11 & *v6) + 0xF8)) = 0;
  v32 = v22;
  *&__src[0] = v22;
  *(&__src[0] + 1) = v13;
  *&__src[1] = v96;
  *(&__src[1] + 1) = v95;
  *&__src[2] = v94;
  *(&__src[2] + 1) = v27;
  v33 = _s8ItemInfoCMa(0, __src);
  v34 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v35 = swift_getWitnessTable();
    v36 = sub_18BB32DD8(v34, v33, v35);
  }

  else
  {
    v36 = MEMORY[0x1E69E7CD0];
  }

  *(v6 + *((*v11 & *v6) + 0x100)) = v36;
  *(v6 + *((*v11 & *v6) + 0x108)) = 0;
  *(v6 + *((*v11 & *v6) + 0x110)) = 0;
  v91(v6 + *((*v11 & *v6) + 0x118), 1, 1, v13);
  v37 = *((*v11 & *v6) + 0x120);
  *&__src[0] = v32;
  *(&__src[0] + 1) = v13;
  *&__src[1] = v96;
  *(&__src[1] + 1) = v95;
  *&__src[2] = v94;
  *(&__src[2] + 1) = v27;
  v90 = v27;
  type metadata accessor for SFFluidCollectionView.Interaction(0, __src);
  *(v6 + v37) = sub_18BC20DE8();
  *(v6 + *((*v11 & *v6) + 0x128)) = 0;
  *(v6 + *((*v11 & *v6) + 0x130)) = 0;
  *(v6 + *((*v11 & *v6) + 0x138)) = 0;
  *(v6 + *((*v11 & *v6) + 0x140)) = 0;
  v38 = *((*v11 & *v6) + 0x148);
  type metadata accessor for Assertion();
  v39 = swift_allocObject();
  v40 = MEMORY[0x1E69E7CC0];
  *(v39 + 16) = MEMORY[0x1E69E7CC0];
  *(v39 + 24) = 0;
  *(v6 + v38) = v39;
  v41 = *((*v11 & *v6) + 0x150);
  swift_getTupleTypeMetadata2();
  v42 = sub_18BC20DE8();
  v43 = swift_getWitnessTable();
  v44 = sub_18B7C29AC(v42, v28, v33, v43);

  *(v6 + v41) = v44;
  v45 = (v6 + *((*v11 & *v6) + 0x158));
  v46 = *(MEMORY[0x1E695F050] + 16);
  *v45 = *MEMORY[0x1E695F050];
  v45[1] = v46;
  v47 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v48 = sub_18BB32DD8(v47, v28, v43);
  }

  else
  {
    v48 = MEMORY[0x1E69E7CD0];
  }

  *(v6 + *((*v11 & *v6) + 0x160)) = v48;
  v49 = v6 + *((*v11 & *v6) + 0x168);
  *v49 = 0;
  v49[10] = 0;
  *(v49 + 4) = 0;
  v50 = (v6 + *((*v11 & *v6) + 0x170));
  v51 = *(MEMORY[0x1E69DDCE0] + 16);
  *v50 = *MEMORY[0x1E69DDCE0];
  v50[1] = v51;
  v52 = (v6 + *((*v11 & *v6) + 0x178));
  *v52 = 0;
  v52[1] = 0;
  *(v6 + *((*v11 & *v6) + 0x180)) = 0;
  *(v6 + *((*v11 & *v6) + 0x188)) = v40;
  *(v6 + *((*v11 & *v6) + 0x190)) = 0;
  v53 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v54 = sub_18BB32DD8(v53, v13, *(v94 + 8));
  }

  else
  {
    v54 = MEMORY[0x1E69E7CD0];
  }

  *(v6 + *((*v11 & *v6) + 0x198)) = v54;
  *(v6 + *((*v11 & *v6) + 0x1A0)) = 0;
  v55 = *((*v11 & *v6) + 0x1A8);
  updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken(0);
  (*(*(updated - 8) + 56))(v6 + v55, 1, 1, updated);
  v57 = *((*v11 & *v6) + 0x1B0);
  sub_18B81F588(__src);
  memcpy(v6 + v57, __src, 0x139uLL);
  *(v6 + *((*v11 & *v6) + 0x1C8)) = 0;
  sub_18B84A364(v32, v13, v96, v95, v94, v90, v6 + *((*v11 & *v6) + 0x1D0));
  *(v6 + *((*v11 & *v6) + 0x1D8)) = a1;
  v58 = objc_opt_self();
  sub_18BC1E1A8();
  v59 = [v58 behaviorWithDampingRatio:1.0 response:0.3];
  if (v59)
  {
    v60 = v59;
    [v59 setTrackingDampingRatio:1.0 response:0.08 dampingRatioSmoothing:0.08 responseSmoothing:0.08];
    *(v6 + *((*v11 & *v6) + 0x1B8)) = v60;
    v61 = v6 + *((*v11 & *v6) + 0x1C0);
    *v61 = 0;
    v61[2] = 0;
    v89 = v60;
    v97 = v32;
    v98 = v13;
    v99 = v96;
    v100 = v95;
    v101 = v94;
    v102 = v90;
    v62 = type metadata accessor for SFFluidCollectionView(0, &v97);
    v92 = v32;
    v103.receiver = v6;
    v103.super_class = v62;
    v63 = objc_msgSendSuper2(&v103, sel_initWithFrame_, a2, a3, a4, a5);
    v64 = v63;
    sub_18BB2431C(v63);
    v65 = *((*v11 & *v64) + 0x1D8);
    swift_beginAccess();
    v66 = *(v64 + v65);
    v67 = swift_getWitnessTable();
    v68 = *(*v66 + 440);
    v69 = v64;
    sub_18BC1E1A8();
    v68(v63, v67);

    v70 = *(**(v64 + v65) + 464);
    v71 = v69;
    v72 = MEMORY[0x1E69E7D40];
    v73 = v71;
    sub_18BC1E1A8();
    v70(v63);

    v97 = v92;
    v98 = v13;
    v99 = v96;
    v100 = v95;
    v101 = v94;
    v102 = v90;
    _s33SFFluidCollectionViewReuseManagerCMa(0, &v97);
    v74 = v73;
    v75 = sub_18BAC47C8(v74);

    *(v74 + *((*v72 & *v74) + 0x190)) = v75;

    sub_18B7B0AC0(0, &qword_1EA9D5C30, 0x1E69DC8E0);
    v76 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate_];

    v77 = *((*v72 & *v74) + 0xF0);
    v78 = *(v74 + v77);
    *(v74 + v77) = v76;
    v79 = v76;

    if (v79)
    {
      [v74 addInteraction_];

      v97 = v92;
      v98 = v13;
      v99 = v96;
      v100 = v95;
      v101 = v94;
      v102 = v90;
      _s15DragCoordinatorCMa(0, &v97);
      v80 = v74;
      v81 = sub_18BA1EDE0(v80);
      v82 = MEMORY[0x1E69E7D40];
      v83 = *((*MEMORY[0x1E69E7D40] & *v80) + 0x108);
      v84 = *(v80 + v83);
      *(v80 + v83) = v81;

      v97 = v92;
      v98 = v13;
      v99 = v96;
      v100 = v95;
      v101 = v94;
      v102 = v90;
      _s15DropCoordinatorCMa(0, &v97);
      v85 = sub_18BAD9B70(v80);
      v86 = *((*v82 & *v80) + 0x110);
      v87 = *(v80 + v86);
      *(v80 + v86) = v85;

      v88 = sub_18BB48194();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id SFFluidCollectionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

double sub_18BB46584(uint64_t a1)
{
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80)) = a1;

  return result;
}

uint64_t sub_18BB465B8()
{
  sub_18BB23214(&v1);
  sub_18BC1E1A8();

  sub_18BC1F0E8();
  swift_getWitnessTable();
  return sub_18BC20D28();
}

uint64_t sub_18BB466F4(uint64_t a1, void *a2)
{
  sub_18BC1E3F8();
  v2 = sub_18BC210B8();

  return v2 & 1;
}

double sub_18BB467A4(uint64_t a1, uint64_t a2)
{
  sub_18BB66844(a1, a2);

  swift_unknownObjectRelease();
  return result;
}

uint64_t (*sub_18BB467DC(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_18BB4689C;
}

uint64_t sub_18BB468CC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18BB4692C(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_18BB46A14@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v13 = *(a1 + a2 - 32);
  v14 = *(a1 + a2 - 48);
  v12 = *(a1 + a2 - 16);
  v4 = sub_18BB65E00();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v8 = swift_allocObject();
    v5 = v7;
    v9 = v8;
    v4 = v6;
    *(v9 + 16) = v14;
    *(v9 + 32) = v13;
    *(v9 + 48) = v12;
    *(v9 + 64) = v6;
    *(v9 + 72) = v7;
    v10 = sub_18BB696F0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a3 = v10;
  a3[1] = v9;

  return sub_18B824D48(v4, v5);
}

uint64_t sub_18BB46AD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = swift_allocObject();
    v8 = *(v6 - 32);
    *(v7 + 16) = *(v6 - 48);
    *(v7 + 32) = v8;
    *(v7 + 48) = *(v6 - 16);
    *(v7 + 64) = v4;
    *(v7 + 72) = v5;
    v9 = sub_18BB696B8;
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

  sub_18B824D48(v4, v5);
  return sub_18BB46BAC(v9, v7);
}

uint64_t sub_18BB46B78()
{
  v0 = sub_18BB65E00();
  sub_18B824D48(v0, v1);
  return v0;
}

uint64_t sub_18BB46BAC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xA0));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_18B7B171C(v6, v7);
}

double sub_18BB46CA4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v13 = *(a1 + a2 - 32);
  v14 = *(a1 + a2 - 48);
  v12 = *(a1 + a2 - 16);
  v4 = sub_18BB668C4();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v8 = swift_allocObject();
    v5 = v7;
    v9 = v8;
    v4 = v6;
    *(v9 + 16) = v14;
    *(v9 + 32) = v13;
    *(v9 + 48) = v12;
    *(v9 + 64) = v6;
    *(v9 + 72) = v7;
    v10 = sub_18BB69684;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a3 = v10;
  a3[1] = v9;

  return sub_18B824D48(v4, v5);
}

uint64_t sub_18BB46D64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18BB69644;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_18B824D48(v1, v2);
  return sub_18BB46E28(v4, v3);
}

uint64_t sub_18BB46DF4()
{
  v0 = sub_18BB668C4();
  sub_18B824D48(v0, v1);
  return v0;
}

uint64_t sub_18BB46E28(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xA8));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_18B7B171C(v6, v7);
}

double sub_18BB46F20@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v13 = *(a1 + a2 - 32);
  v14 = *(a1 + a2 - 48);
  v12 = *(a1 + a2 - 16);
  v4 = sub_18BB66928();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v8 = swift_allocObject();
    v5 = v7;
    v9 = v8;
    v4 = v6;
    *(v9 + 16) = v14;
    *(v9 + 32) = v13;
    *(v9 + 48) = v12;
    *(v9 + 64) = v6;
    *(v9 + 72) = v7;
    v10 = sub_18BB69610;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a3 = v10;
  a3[1] = v9;

  return sub_18B824D48(v4, v5);
}

uint64_t sub_18BB46FE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18BB695D0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_18B824D48(v1, v2);
  return sub_18BB470A4(v4, v3);
}

uint64_t sub_18BB47070()
{
  v0 = sub_18BB66928();
  sub_18B824D48(v0, v1);
  return v0;
}

uint64_t sub_18BB470A4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xB0));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_18B7B171C(v6, v7);
}

double sub_18BB47208(uint64_t a1, uint64_t a2)
{
  sub_18BB6698C(a1, a2);

  swift_unknownObjectRelease();
  return result;
}

uint64_t (*sub_18BB47240(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_18BB69910;
}

double sub_18BB4736C(uint64_t a1, uint64_t a2)
{
  sub_18BB66A0C(a1, a2);

  swift_unknownObjectRelease();
  return result;
}

uint64_t (*sub_18BB473A4(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_18BB69910;
}

uint64_t sub_18BB47464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_18BC21848();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return sub_18BB475F4(v8);
}

uint64_t sub_18BB47534@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  swift_beginAccess();
  v4 = sub_18BC21848();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_18BB475F4(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  swift_beginAccess();
  v4 = sub_18BC21848();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

double sub_18BB477A4(uint64_t a1, uint64_t a2)
{
  sub_18BB66A8C(a1, a2);

  swift_unknownObjectRelease();
  return result;
}

uint64_t (*sub_18BB477DC(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_18BB69910;
}

void sub_18BB4789C(uint64_t a1, char a2)
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
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_18BB47924()
{
  v0 = sub_18BB48194();
  v1 = *&v0[qword_1EA9D4750];

  return v1;
}

void sub_18BB47968(char a1)
{
  v2 = a1 & 1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    swift_beginAccess();
    sub_18BC1E1A8();
    sub_18B8657E0();

    if ((*(v1 + v3) & 1) == 0)
    {
      v4 = sub_18BB48194();
      sub_18B9A45D8();
    }
  }
}

uint64_t sub_18BB47A44()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18BB47AA4(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_18BB47968(v4);
}

void (*sub_18BB47B18(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_18BB47BC8;
}

void sub_18BB47BC8(uint64_t a1)
{
  v1 = *a1;
  sub_18BB47AA4(*(*a1 + 32));

  free(v1);
}

void *sub_18BB47C08()
{
  v0 = sub_18BB65B38();
  v1 = v0;
  return v0;
}

void sub_18BB47C34(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_18BB47CA8(uint64_t a1)
{
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xE8)) = a1;

  return result;
}

void sub_18BB47CDC(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF8);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_18BB47D0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x118);
  swift_beginAccess();
  v4 = sub_18BC21848();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_18BB47DCC(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x118);
  swift_beginAccess();
  v4 = sub_18BC21848();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void sub_18BB47E94(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x128);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_18BB47EC4(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x130);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_18BB47FD8(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x158));
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

double sub_18BB4800C(uint64_t a1)
{
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x160)) = a1;

  return result;
}

double sub_18BB48040@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x168);
  v3 = *v2;
  v4 = *(v2 + 4);
  LOBYTE(v2) = v2[10];
  *a1 = v3;
  *(a1 + 10) = v2;
  *(a1 + 8) = v4;
  sub_18BC1E3F8();
  return result;
}

double sub_18BB48084(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 10);
  v4 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x168);
  *v4 = *a1;
  v4[10] = v3;
  *(v4 + 4) = v2;

  return result;
}

void sub_18BB48100(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x170));
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

void sub_18BB48164(double a1, double a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x178));
  *v3 = a1;
  v3[1] = a2;
}

char *sub_18BB48194()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = *(v1 + 0x180);
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *(v0 + v2);
  }

  else
  {
    v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
    v11[0] = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
    v11[1] = v5;
    v11[2] = *(v1 + 112);
    _s21MultiSelectControllerCMa(0, v11);
    v6 = v0;
    v7 = sub_18B9A3C38(v0);
    v8 = *(v0 + v2);
    *(v6 + v2) = v7;
    v4 = v7;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

double sub_18BB4826C(uint64_t a1)
{
  swift_beginAccess();
  sub_18BC1E3F8();
  v2 = sub_18BC21028();

  if ((v2 & 1) == 0)
  {
    sub_18BB542F0(a1);
    swift_beginAccess();
    sub_18BC1E1A8();
    sub_18B8657E0();
  }

  return result;
}

double sub_18BB4838C()
{
  sub_18BB65A78();

  sub_18BC1E3F8();
  return result;
}

double sub_18BB483B4(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x198);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_18BB4826C(v4);

  return result;
}

void (*sub_18BB48434(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 32) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x198);
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_18BC1E3F8();
  return sub_18BB484EC;
}

void sub_18BB484EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = sub_18BC1E3F8();
    sub_18BB483B4(v4);
  }

  else
  {
    sub_18BB483B4(v3);
  }

  free(v2);
}

uint64_t sub_18BB48550@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1A8);
  swift_beginAccess();
  return sub_18B7CA054(v1 + v3, a1, &unk_1EA9D9CA0, &unk_18BC42FB0);
}

uint64_t sub_18BB485D4(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1A8);
  swift_beginAccess();
  sub_18B7FD070(a1, v1 + v3, &unk_1EA9D9CA0, &unk_18BC42FB0);
  return swift_endAccess();
}

uint64_t sub_18BB486DC()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0);
  v2 = *v1;
  v3 = v1[1];
  if (v1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return v5 | v2 | v4;
}

void sub_18BB48734(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1D8);
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    sub_18BB55208();
  }
}

void sub_18BB487AC(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = *(v5 + 0x1D8);
  swift_beginAccess();
  v7 = *&v1[v6];
  if (v7 != a1)
  {
    v8 = *(v5 + 96);
    v16[0] = *(v5 + 80);
    v16[1] = v8;
    v16[2] = *(v5 + 112);
    type metadata accessor for SFFluidCollectionView(255, v16);
    WitnessTable = swift_getWitnessTable();
    v10 = *(*v7 + 440);
    sub_18BC1E1A8();
    v11 = v2;
    v10(v2, WitnessTable);

    v12 = *(**&v2[v6] + 464);
    v13 = v11;
    sub_18BC1E1A8();
    v12(v2);

    sub_18BC1E1A8();
    sub_18B8657E0();

    v14 = &v13[*((*v4 & *v13) + 0x158)];
    v15 = *(MEMORY[0x1E695F050] + 16);
    *v14 = *MEMORY[0x1E695F050];
    *(v14 + 1) = v15;
    [v13 setNeedsLayout];
  }
}

double sub_18BB489A0(uint64_t a1)
{
  sub_18BB65AD8();

  sub_18BC1E1A8();
  return result;
}

double sub_18BB489C8(__n128 a1, uint64_t a2)
{
  sub_18BB66B0C(a2);

  return result;
}

void (*sub_18BB48A00(uint64_t *a1))(void **a1, char a2, __n128 a3)
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
  *(v3 + 32) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1D8);
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_18BC1E1A8();
  return sub_18BB48AB8;
}

void sub_18BB48AB8(void **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 3);
  if (a2)
  {
    v5 = sub_18BC1E1A8();
    sub_18BB66B0C(v5);
  }

  else
  {
    sub_18BB66B0C(v4);
  }

  free(v3);
}

void sub_18BB48B2C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*MEMORY[0x1E69E7D40] & *v1);
  v6 = v5[6];
  v19[0] = v5[5];
  v19[1] = v6;
  v19[2] = v5[7];
  v7 = type metadata accessor for SFFluidCollectionView(0, v19);
  v20.receiver = v1;
  v20.super_class = v7;
  objc_msgSendSuper2(&v20, sel_traitCollectionDidChange_, a1);
  v8 = *((*v4 & *v1) + 0x1D8);
  swift_beginAccess();
  if (a1)
  {
    v9 = *(**(v2 + v8) + 544);
    sub_18BC1E1A8();
    LOBYTE(v9) = v9(a1);

    if (v9)
    {
      v10 = *((*v4 & *v2) + 0x1D8);
      swift_beginAccess();
      v11 = *(**(v2 + v10) + 552);
      sub_18BC1E1A8();
      v11(v19, a1);

      v12 = *&v19[0];
      v13 = BYTE8(v19[0]);
      LOBYTE(v11) = BYTE9(v19[0]);
      v14 = BYTE10(v19[0]);
      swift_beginAccess();
      v15 = v12;
      v16 = v13;
      v17 = v11;
      v18 = v14;
      sub_18BC1E1A8();
      sub_18B82F6F4(&v15);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_18BB48D54(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_18BB48B2C(a3);
}

void sub_18BB48DC0()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*MEMORY[0x1E69E7D40] & *v0);
  v4 = v3[6];
  v30[0] = v3[5];
  v30[1] = v4;
  v30[2] = v3[7];
  v5 = type metadata accessor for SFFluidCollectionView(0, v30);
  v31.receiver = v0;
  v31.super_class = v5;
  objc_msgSendSuper2(&v31, sel_safeAreaInsetsDidChange);
  v6 = *((*v2 & *v0) + 0x1D8);
  swift_beginAccess();
  v7 = (v1 + *((*v2 & *v1) + 0x170));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = *(**(v1 + v6) + 560);
  v13 = sub_18BC1E1A8();
  v14 = v12(v13, v8, v9, v10, v11);

  if (v14)
  {
    v15 = *((*v2 & *v1) + 0x1D8);
    swift_beginAccess();
    v16 = (v1 + *((*v2 & *v1) + 0x170));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    v21 = *(**(v1 + v15) + 568);
    v22 = sub_18BC1E1A8();
    v21(v30, v22, v17, v18, v19, v20);

    v23 = *&v30[0];
    LOBYTE(v21) = BYTE8(v30[0]);
    v24 = BYTE9(v30[0]);
    v25 = BYTE10(v30[0]);
    swift_beginAccess();
    v26 = v23;
    v27 = v21;
    v28 = v24;
    v29 = v25;
    sub_18BC1E1A8();
    sub_18B82F6F4(&v26);
  }
}

void sub_18BB4905C(void *a1)
{
  v1 = a1;
  sub_18BB48DC0();
}

uint64_t sub_18BB490A4(void *a1)
{
  v1 = a1;
  v2 = sub_18BB490D8();

  return v2 & 1;
}

uint64_t sub_18BB490D8()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 adjustedContentInset];
  v12 = UIEdgeInsetsInsetRect(v3, v5, v7, v9, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v0 contentSize];
  v20 = v19;
  v31.origin.x = v12;
  v31.origin.y = v14;
  v31.size.width = v16;
  v31.size.height = v18;
  Width = CGRectGetWidth(v31);
  if (v20 > Width)
  {
    Width = v20;
  }

  v22 = _SFRoundFloatToPixels(Width);
  [v0 contentSize];
  v24 = v23;
  v32.origin.x = v12;
  v32.origin.y = v14;
  v32.size.width = v16;
  v32.size.height = v18;
  Height = CGRectGetHeight(v32);
  if (v24 > Height)
  {
    Height = v24;
  }

  v33.size.height = _SFRoundFloatToPixels(Height);
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = v22;
  v34.origin.x = v12;
  v34.origin.y = v14;
  v34.size.width = v16;
  v34.size.height = v18;
  if (!CGRectContainsRect(v33, v34))
  {
    return 1;
  }

  v26 = v1[6];
  v29[0] = v1[5];
  v29[1] = v26;
  v29[2] = v1[7];
  v27 = type metadata accessor for SFFluidCollectionView(0, v29);
  v30.receiver = v0;
  v30.super_class = v27;
  return objc_msgSendSuper2(&v30, sel_tracksImmediatelyWhileDecelerating);
}

void sub_18BB49280(uint64_t a1, double a2, double a3)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40] & *v3;
  if (!*(v3 + *(v8 + 0x128)))
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
    v10 = *((*v7 & *v3) + 0x128);
    v11 = *(v3 + v10);
    *(v3 + v10) = v9;
    v12 = v9;

    v13 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
    v14 = *((*v7 & *v3) + 0x130);
    v15 = *(v3 + v14);
    *(v3 + v14) = v13;
    v16 = v13;

    v17 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18BC41E60;
    *(v18 + 32) = v12;
    *(v18 + 40) = v16;
    sub_18B7B0AC0(0, &qword_1EA9D50B0, 0x1E69DC658);
    v19 = v12;
    v20 = v16;
    v21 = sub_18BC20D88();

    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = *(v8 + 80);
    *(v23 + 32) = *(v8 + 96);
    *(v23 + 40) = *(v8 + 104);
    *(v23 + 56) = *(v8 + 120);
    *(v23 + 64) = v22;
    v61 = sub_18BB694F4;
    v62 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_18B7B0DB0;
    v60 = &block_descriptor_100;
    v24 = _Block_copy(&aBlock);

    [v17 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
    _Block_release(v24);

    v25 = swift_allocObject();
    v25[2] = v3;
    v25[3] = v19;
    v25[4] = v20;
    v61 = sub_18B9D4EAC;
    v62 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_18B7B0DB0;
    v60 = &block_descriptor_106_0;
    v26 = _Block_copy(&aBlock);
    v27 = v19;
    v28 = v20;
    v29 = v3;
    v7 = MEMORY[0x1E69E7D40];

    [v17 _performWithoutRetargetingAnimations_];
    _Block_release(v26);
  }

  v30 = swift_allocObject();
  *(v30 + 16) = v3;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3;
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = *(v8 + 80);
  *(v32 + 32) = *(v8 + 96);
  *(v32 + 40) = *(v8 + 104);
  *(v32 + 56) = *(v8 + 120);
  *(v32 + 64) = v31;
  sub_18B7CA054(a1, &v55, &unk_1EA9D5060, &unk_18BC41870);
  if (v56)
  {
    sub_18B7C3FA4(&v55, &aBlock);
    v33 = *__swift_project_boxed_opaque_existential_1Tm(&aBlock, v60);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_18B9D4F1C;
    *(v34 + 24) = v30;
    swift_beginAccess();
    v35 = *(v33 + 24);
    v36 = v3;
    sub_18BC1E1A8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 24) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_18B9B5814(0, v35[2] + 1, 1, v35);
      *(v33 + 24) = v35;
    }

    v39 = v35[2];
    v38 = v35[3];
    if (v39 >= v38 >> 1)
    {
      v35 = sub_18B9B5814((v38 > 1), v39 + 1, 1, v35);
    }

    v35[2] = v39 + 1;
    v40 = &v35[2 * v39];
    v40[4] = sub_18B7D1E94;
    v40[5] = v34;
    *(v33 + 24) = v35;
    swift_endAccess();
    v41 = __swift_project_boxed_opaque_existential_1Tm(&aBlock, v60);
    v42 = swift_allocObject();
    *(v42 + 16) = sub_18BB6950C;
    *(v42 + 24) = v32;
    v43 = *v41;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_18BB69540;
    *(v44 + 24) = v42;
    swift_beginAccess();
    v45 = *(v43 + 32);
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *(v43 + 32) = v45;
    if ((v46 & 1) == 0)
    {
      v45 = sub_18B9B5814(0, v45[2] + 1, 1, v45);
      *(v43 + 32) = v45;
    }

    v48 = v45[2];
    v47 = v45[3];
    if (v48 >= v47 >> 1)
    {
      v45 = sub_18B9B5814((v47 > 1), v48 + 1, 1, v45);
    }

    v45[2] = v48 + 1;
    v49 = &v45[2 * v48];
    v49[4] = sub_18B9D53B0;
    v49[5] = v44;
    *(v43 + 32) = v45;
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  }

  else
  {
    v50 = v3;
    sub_18B988BAC(&v55, &unk_1EA9D5060, &unk_18BC41870);
    v51 = objc_opt_self();
    v52 = *(v50 + *((*v7 & *v50) + 0x1B8));
    v61 = sub_18B9D4F1C;
    v62 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_18B7B0DB0;
    v60 = &block_descriptor_116;
    v53 = _Block_copy(&aBlock);
    sub_18BC1E1A8();
    swift_unknownObjectRetain();

    v61 = sub_18BB6950C;
    v62 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_18B8043A0;
    v60 = &block_descriptor_119;
    v54 = _Block_copy(&aBlock);
    sub_18BC1E1A8();

    [v51 _animateUsingSpringBehavior_tracking_animations_completion_];

    _Block_release(v54);
    _Block_release(v53);
    swift_unknownObjectRelease();
  }
}

void sub_18BB49A44(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_18BB49B28();
  }
}

void sub_18BB49A98(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_18B82A0C0();
    }
  }
}

void sub_18BB49B28()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x128));
  if (v2)
  {
    v13 = v2;
    if (([v13 isInvalidated] & 1) != 0 || (v3 = *(v0 + *((*v1 & *v0) + 0x130))) == 0)
    {
      v4 = v13;
    }

    else
    {
      v12 = v3;
      if (([v12 isInvalidated] & 1) == 0)
      {
        *(v0 + *((*v1 & *v0) + 0x138)) = 1;
        v5 = objc_opt_self();
        v6 = swift_allocObject();
        v6[2] = v0;
        v6[3] = v13;
        v6[4] = v12;
        v7 = swift_allocObject();
        *(v7 + 16) = sub_18B9D4F80;
        *(v7 + 24) = v6;
        aBlock[4] = sub_18B7D1E94;
        aBlock[5] = v7;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_18B7E3BF4;
        aBlock[3] = &block_descriptor_91;
        v8 = _Block_copy(aBlock);
        v9 = v13;
        v10 = v12;
        v11 = v0;
        sub_18BC1E1A8();

        [v5 performWithoutAnimation_];

        _Block_release(v8);
        LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

        if (v5)
        {
          __break(1u);
        }

        else
        {
          *(v11 + *((*v1 & *v11) + 0x138)) = 0;
        }

        return;
      }

      v4 = v12;
    }
  }
}

double sub_18BB49DC8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0);
  if (*v3 == 1)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0);
    swift_beginAccess();
    memcpy(__dst, v1 + v4, 0x139uLL);
    memcpy(__src, v1 + v4, 0x139uLL);
    if (sub_18B81CA10(__src) != 1)
    {
      v5 = *((*v2 & *v1) + 0x1D8);
      swift_beginAccess();
      v6 = *(v1 + v5);
      memcpy(v18, __src, 0x139uLL);
      v7 = *(*v6 + 416);
      sub_18B7CA054(__dst, v17, &qword_1EA9D5100, &unk_18BC42FC0);
      sub_18BC1E1A8();
      v7(v18);

      sub_18B988BAC(__dst, &qword_1EA9D5100, &unk_18BC42FC0);
      v3[2] = 1;
    }

    *v3 = 0;
    swift_beginAccess();
    v8 = (*(v1 + *((*v2 & *v1) + 0x90)) + qword_1EA9D95C0);
    swift_beginAccess();
    v9 = *v8;
    v10 = v8[2];
    v18[1] = v8[1];
    v18[2] = v10;
    v18[0] = v9;
    sub_18BC1E1A8();
    sub_18B7CA054(v18, v17, &unk_1EA9D4F90, &unk_18BC4F810);
    sub_18BB438EC(v18);

    sub_18B988BAC(v18, &unk_1EA9D4F90, &unk_18BC4F810);
    [v1 safeAreaInsets];
    v11 = (v1 + *((*v2 & *v1) + 0x170));
    *v11 = v12;
    v11[1] = v13;
    v11[2] = v14;
    v11[3] = v15;
    v3[1] = 1;
    return sub_18BB4A0D0(v1);
  }

  else
  {

    return sub_18BB4A0D0(v0);
  }
}

double sub_18BB4A0D0(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1D8);
  swift_beginAccess();
  v4 = *(a1 + v3);
  swift_beginAccess();
  v5 = v4[7];
  v15 = v4[6];
  v16 = v5;
  v17[0] = v4[8];
  *(v17 + 9) = *(v4 + 137);
  v6 = a1 + *((*v2 & *a1) + 0x1D0);
  swift_beginAccess();
  v7 = *(v6 + 1);
  v18[0] = *v6;
  v18[1] = v7;
  v19[0] = *(v6 + 2);
  *(v19 + 9) = *(v6 + 41);
  v8 = v16;
  *v6 = v15;
  *(v6 + 1) = v8;
  *(v6 + 2) = v17[0];
  *(v6 + 41) = *(v17 + 9);
  sub_18B7CA054(&v15, v14, &unk_1EA9D50C0, &qword_18BC42F98);
  sub_18B988BAC(v18, &unk_1EA9D50C0, &qword_18BC42F98);
  v9 = *((*v2 & *a1) + 0xE0);
  swift_beginAccess();
  v11 = *(a1 + v9);
  if (v11)
  {
    swift_beginAccess();
    v12 = v11;
    v13 = sub_18BC1E3F8();
    sub_18BBA6EF8(v13, v6, v12);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_18BB4A2A8(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*MEMORY[0x1E69E7D40] & *a2);
  v6 = v5[6];
  v13[0] = v5[5];
  v13[1] = v6;
  v13[2] = v5[7];
  v7 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v13);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v13 - v10;
  (*(v8 + 32))(v13 - v10, a1, v7, v9);
  (*((*v4 & *a2) + 0xB0))(v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_18BB4A40C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = (*MEMORY[0x1E69E7D40] & *v2);
  sub_18B81FB48(__src);
  memcpy(__dst, __src, 0x139uLL);
  if (sub_18B81CA10(__dst) == 1)
  {
    memcpy(v30, __src, 0x139uLL);
    v6 = v5[10];
    v7 = v5[11];
    v8 = v5[12];
    v9 = v5[13];
    v11 = v5[14];
    v10 = v5[15];
    *&v31 = v6;
    *(&v31 + 1) = v7;
    *&v32 = v8;
    *(&v32 + 1) = v9;
    *&v33[0] = v11;
    *(&v33[0] + 1) = v10;
    type metadata accessor for SFFluidCollectionView.Update(255, &v31);
    v12 = sub_18BC21848();
    (*(*(v12 - 8) + 8))(v30, v12);
    *&v31 = v6;
    *(&v31 + 1) = v7;
    *&v32 = v8;
    *(&v32 + 1) = v9;
    *&v33[0] = v11;
    *(&v33[0] + 1) = v10;
    v13 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v31);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  else
  {
    v27 = __src[2];
    v28 = __src[3];
    v29[0] = __src[4];
    *(v29 + 9) = *(&__src[4] + 9);
    memcpy(v30, __src, 0x139uLL);
    v16 = v5[11];
    v17 = v5[12];
    v18 = v5[13];
    v20 = v5[14];
    v19 = v5[15];
    *&v31 = v5[10];
    v15 = v31;
    *(&v31 + 1) = v16;
    *&v32 = v17;
    *(&v32 + 1) = v18;
    *&v33[0] = v20;
    *(&v33[0] + 1) = v19;
    v21 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v31);
    v22 = *(v21 - 1);
    (*(v22 + 16))(&v31, &v27, v21);
    *&v31 = v15;
    *(&v31 + 1) = v16;
    *&v32 = v17;
    *(&v32 + 1) = v18;
    *&v33[0] = v20;
    *(&v33[0] + 1) = v19;
    type metadata accessor for SFFluidCollectionView.Update(255, &v31);
    v23 = sub_18BC21848();
    (*(*(v23 - 8) + 8))(v30, v23);
    v24 = v27;
    v25 = v28;
    *v26 = v29[0];
    *&v26[9] = *(v29 + 9);
    sub_18BBA56B0(a1, v21, a2);
    v31 = v24;
    v32 = v25;
    v33[0] = *v26;
    *(v33 + 9) = *&v26[9];
    return (*(v22 + 8))(&v31, v21);
  }
}

uint64_t sub_18BB4A6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  sub_18B7CA054(a1, &v17 - v6, &unk_1EA9D92F0, &qword_18BC42990);
  if (swift_getEnumCaseMultiPayload() - 1 >= 2)
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  else
  {
    v8 = *v2;
    sub_18B988BAC(v7, &unk_1EA9D92F0, &qword_18BC42990);
    if (*(v8 + 16) && (v9 = sub_18B83B1C8(a1), (v10 & 1) != 0))
    {
      v11 = v9;
      v12 = *(v8 + 56);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40, &unk_18BC42E70);
      v14 = *(v13 - 8);
      sub_18B7CA054(v12 + *(v14 + 72) * v11, a2, &unk_1EA9D4F40, &unk_18BC42E70);
      return (*(v14 + 56))(a2, 0, 1, v13);
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40, &unk_18BC42E70);
      return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
    }
  }

  return result;
}

void sub_18BB4A908()
{
  v1 = v0;
  v2 = _s4ItemVMa_2(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v163 = &v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9300, &qword_18BC42E80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v164 = &v156 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v156 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v189 = &v156 - v13;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  MEMORY[0x1EEE9AC00](v175);
  v15 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v179 = &v156 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v185 = &v156 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v190 = &v156 - v21;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40, &unk_18BC42E70);
  v181 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v23 = &v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v156 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v156 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v156 - v31;
  *&v34 = MEMORY[0x1EEE9AC00](v33).n128_u64[0];
  v178 = &v156 - v35;
  [v1 bounds];
  v36 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x158));
  if (CGRectEqualToRect(v201, *v36))
  {
    return;
  }

  v165 = v26;
  v170 = v15;
  v167 = v6;
  if (qword_1EA9D2280 == -1)
  {
    goto LABEL_3;
  }

LABEL_63:
  swift_once();
LABEL_3:
  v37 = sub_18BC1F2C8();
  v38 = __swift_project_value_buffer(v37, qword_1EA9F7E38);
  v39 = v1;
  v171 = v38;
  v40 = sub_18BC1F2A8();
  v41 = sub_18BC21228();

  v42 = os_log_type_enabled(v40, v41);
  v180 = v39;
  v166 = v23;
  v159 = v29;
  v157 = v36;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v194[0] = v44;
    *v43 = 136446210;
    [v39 bounds];
    v195[0] = v45;
    v195[1] = v46;
    v195[2] = v47;
    v195[3] = v48;
    type metadata accessor for CGRect(0);
    v49 = sub_18BC20BF8();
    v51 = sub_18B7EA850(v49, v50, v194);

    *(v43 + 4) = v51;
    v39 = v180;
    _os_log_impl(&dword_18B7AC000, v40, v41, "Getting layout attributes for elements in %{public}s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v52 = v44;
    v53 = &selRef_accessoryButtonAlpha;
    MEMORY[0x18CFFEEE0](v52, -1, -1);
    MEMORY[0x18CFFEEE0](v43, -1, -1);
  }

  else
  {

    v53 = &selRef_accessoryButtonAlpha;
  }

  v196 = MEMORY[0x1E69E7CD0];
  v54 = MEMORY[0x1E69E7D40];
  v55 = (v39 + *((*MEMORY[0x1E69E7D40] & *v39) + 0x1D0));
  swift_beginAccess();
  v56 = *v55;
  v57 = v55[1];
  v58 = v55[2];
  *(v200 + 9) = *(v55 + 41);
  v199[1] = v57;
  v200[0] = v58;
  v199[0] = v56;
  sub_18B7CA054(v199, v195, &unk_1EA9D50C0, &qword_18BC42F98);
  [v39 v53[265]];
  v63 = sub_18B86A664(v59, v60, v61, v62);
  sub_18B988BAC(v199, &unk_1EA9D50C0, &qword_18BC42F98);
  v36 = (v63 + 56);
  v64 = *(v63 + 56);
  v177 = v63;
  v65 = 1 << *(v63 + 32);
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  else
  {
    v66 = -1;
  }

  v23 = v66 & v64;
  v67 = *v54;
  v68 = *((*v54 & *v39) + 0x150);
  v69 = *((*v54 & *v39) + 0x100);
  v70 = *((v67 & *v39) + 0x1B0);
  v71 = v67 & *v39;
  v158 = v1;
  v72 = *(v71 + 472);
  v187 = v68;
  swift_beginAccess();
  v172 = v70;
  swift_beginAccess();
  v169 = v72;
  swift_beginAccess();
  v176 = v69;
  swift_beginAccess();
  v1 = 0;
  v73 = (v65 + 63) >> 6;
  v182 = (v181 + 48);
  v168 = (v181 + 56);
  v29 = &unk_18BC42E70;
  *&v74 = 136446210;
  v160 = v74;
  v173 = v73;
  v174 = v36;
  v183 = v11;
  v186 = v32;
  if (v23)
  {
    while (1)
    {
      v79 = v39;
      v80 = v32;
      v81 = v11;
LABEL_18:
      v83 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v84 = v178;
      sub_18B7CA054(*(v177 + 48) + *(v181 + 72) * (v83 | (v1 << 6)), v178, &unk_1EA9D4F40, &unk_18BC42E70);
      sub_18B7CF39C(v84, v80, &unk_1EA9D4F40, &unk_18BC42E70);
      v85 = v190;
      sub_18B7CA054(v80, v190, &unk_1EA9D92F0, &qword_18BC42990);
      v86 = v179;
      sub_18B7CA054(v85, v179, &unk_1EA9D92F0, &qword_18BC42990);
      v87 = v185;
      sub_18B842590(v185, v86);
      sub_18B988BAC(v87, &unk_1EA9D92F0, &qword_18BC42990);
      v88 = v188;
      v39 = v79;
      v89 = *(v79 + v187);
      v11 = v81;
      if (!*(v89 + 16))
      {
        goto LABEL_31;
      }

      sub_18BC1E3F8();
      v90 = sub_18B83B1C8(v190);
      if ((v91 & 1) == 0)
      {

        goto LABEL_31;
      }

      v92 = *(*(v89 + 56) + 8 * v90);
      sub_18BC1E1A8();

      v93 = *(v39 + v176);
      if ((v93 & 0xC000000000000001) != 0)
      {
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v94 = sub_18BC219E8();

        if ((v94 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_22:
        sub_18B988BAC(v190, &unk_1EA9D92F0, &qword_18BC42990);
        v32 = v186;
        v29 = &unk_18BC42E70;
        sub_18B988BAC(v186, &unk_1EA9D4F40, &unk_18BC42E70);
        v73 = v173;
        v36 = v174;
        if (!v23)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (*(v93 + 16))
        {
          sub_18BC22158();
          MEMORY[0x18CFFD660](v92);
          v95 = sub_18BC221A8();
          v96 = -1 << *(v93 + 32);
          v97 = v95 & ~v96;
          if ((*(v93 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97))
          {
            v98 = ~v96;
            while (*(*(v93 + 48) + 8 * v97) != v92)
            {
              v97 = (v97 + 1) & v98;
              if (((*(v93 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            goto LABEL_22;
          }
        }

LABEL_30:

LABEL_31:
        memcpy(v194, v39 + v172, 0x139uLL);
        memcpy(v193, v39 + v172, 0x139uLL);
        memcpy(v195, v39 + v172, 0x139uLL);
        if (sub_18B81CA10(v195) == 1)
        {
          memcpy(v192, v193, 0x139uLL);
          sub_18B7CA054(v194, v191, &qword_1EA9D5100, &unk_18BC42FC0);
          sub_18B988BAC(v192, &qword_1EA9D5100, &unk_18BC42FC0);
          (*v168)(v81, 1, 1, v88);
        }

        else
        {
          v197[0] = v193[2];
          v197[1] = v193[3];
          v198[0] = v193[4];
          *(v198 + 9) = *(&v193[4] + 9);
          memcpy(v192, v193, 0x139uLL);
          sub_18B7CA054(v194, v191, &qword_1EA9D5100, &unk_18BC42FC0);
          sub_18B7CA054(v197, v191, &unk_1EA9D50C0, &qword_18BC42F98);
          sub_18B988BAC(v192, &qword_1EA9D5100, &unk_18BC42FC0);
          sub_18BB4A6CC(v190, v81);
          sub_18B988BAC(v197, &unk_1EA9D50C0, &qword_18BC42F98);
          v99 = *v182;
          if ((*v182)(v81, 1, v88) != 1)
          {
            v184 = v99;
            v113 = v189;
            sub_18B7CF39C(v81, v189, &unk_1EA9D4F40, &unk_18BC42E70);
            (*v168)(v113, 0, 1, v88);
            v112 = v186;
            goto LABEL_42;
          }
        }

        v100 = v170;
        v101 = *(v39 + v169);
        sub_18B7CA054(v190, v170, &unk_1EA9D92F0, &qword_18BC42990);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 2)
        {
          v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090, &unk_18BC4CB80);
          v104 = swift_projectBox();
          v105 = *(v103 + 48);
          sub_18B833990(v104, v193);
          v106 = v185;
          sub_18B7CA054(v104 + v105, v185, &unk_1EA9D92F0, &qword_18BC42990);
          v107 = *(*v101 + 496);
          sub_18BC1E1A8();
          v107(v193, v106);

          sub_18B988BAC(v106, &unk_1EA9D92F0, &qword_18BC42990);
          sub_18B833D9C(v193);
        }

        else
        {
          if (EnumCaseMultiPayload != 1)
          {
            sub_18BC21CF8();
            __break(1u);
            return;
          }

          v108 = v163;
          sub_18B85A83C(v100, v163, _s4ItemVMa_2);
          v109 = *(*v101 + 488);
          sub_18BC1E1A8();
          v109(v108);

          sub_18BB69570(v108, _s4ItemVMa_2);
        }

        v110 = v183;
        v88 = v188;
        v184 = *v182;
        v111 = v184(v183, 1, v188);
        v112 = v186;
        if (v111 != 1)
        {
          sub_18B988BAC(v110, &unk_1EA9D9300, &qword_18BC42E80);
        }

        v39 = v180;
LABEL_42:
        v114 = *(v39 + v187);
        if (!*(v114 + 16))
        {
          goto LABEL_48;
        }

        sub_18BC1E3F8();
        v115 = sub_18B83B1C8(v190);
        if ((v116 & 1) == 0)
        {

LABEL_48:
          v122 = v112;
          v123 = v165;
          sub_18B7CA054(v122, v165, &unk_1EA9D4F40, &unk_18BC42E70);
          v124 = sub_18BC1F2A8();
          v125 = sub_18BC21228();
          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            v127 = swift_slowAlloc();
            v161 = v124;
            v162 = v127;
            *&v193[0] = v127;
            *v126 = v160;
            v128 = v185;
            sub_18B7CA054(v123, v185, &unk_1EA9D92F0, &qword_18BC42990);
            sub_18B988BAC(v123, &unk_1EA9D4F40, &unk_18BC42E70);
            v129 = sub_18BB434DC();
            v131 = v130;
            sub_18B988BAC(v128, &unk_1EA9D92F0, &qword_18BC42990);
            v132 = v188;
            v133 = sub_18B7EA850(v129, v131, v193);
            v39 = v180;

            *(v126 + 4) = v133;
            v134 = v161;
            _os_log_impl(&dword_18B7AC000, v161, v125, "Creating info for %{public}s", v126, 0xCu);
            v135 = v162;
            __swift_destroy_boxed_opaque_existential_1Tm(v162);
            MEMORY[0x18CFFEEE0](v135, -1, -1);
            MEMORY[0x18CFFEEE0](v126, -1, -1);

            v136 = v167;
          }

          else
          {
            sub_18B988BAC(v123, &unk_1EA9D4F40, &unk_18BC42E70);

            v136 = v167;
            v132 = v188;
          }

          sub_18B7CA054(v189, v136, &unk_1EA9D9300, &qword_18BC42E80);
          v137 = v184;
          v138 = v184(v136, 1, v132) == 1;
          v139 = v166;
          if (v138)
          {
            v75 = v186;
            sub_18B7CA054(v186, v166, &unk_1EA9D4F40, &unk_18BC42E70);
            v140 = v137(v136, 1, v132);
            v36 = v174;
            if (v140 != 1)
            {
              sub_18B988BAC(v136, &unk_1EA9D9300, &qword_18BC42E80);
            }
          }

          else
          {
            v75 = v186;
            sub_18B7CF39C(v136, v166, &unk_1EA9D4F40, &unk_18BC42E70);
            v36 = v174;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D50F0, &unk_18BC4CB90);
          swift_allocObject();
          v76 = sub_18BB65BC4(v139, v39);
          v77 = v187;
          swift_beginAccess();
          swift_retain_n();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v192[0] = *(v39 + v77);
          *(v39 + v77) = 0x8000000000000000;
          sub_18BAA7FE0(v76, v190, isUniquelyReferenced_nonNull_native);
          *(v39 + v77) = v192[0];
          swift_endAccess();
          v32 = v75;
          v11 = v183;
          goto LABEL_12;
        }

        v76 = *(*(v114 + 56) + 8 * v115);
        sub_18BC1E1A8();

        v117 = v164;
        sub_18B7CA054(v189, v164, &unk_1EA9D9300, &qword_18BC42E80);
        v118 = v184;
        if (v184(v117, 1, v88) == 1)
        {
          v119 = v112;
          v120 = v159;
          v184 = v118;
          sub_18B7CA054(v119, v159, &unk_1EA9D4F40, &unk_18BC42E70);
          v121 = v184(v117, 1, v88);
          sub_18BC1E1A8();
          v36 = v174;
          if (v121 != 1)
          {
            sub_18B988BAC(v164, &unk_1EA9D9300, &qword_18BC42E80);
          }
        }

        else
        {
          v120 = v159;
          sub_18B7CF39C(v117, v159, &unk_1EA9D4F40, &unk_18BC42E70);
          sub_18BC1E1A8();
          v36 = v174;
        }

        v141 = *(*v76 + 184);
        swift_beginAccess();
        sub_18B7FD070(v120, &v76[v141], &unk_1EA9D4F40, &unk_18BC42E70);
        swift_endAccess();
        v11 = v183;
        v32 = v186;
LABEL_12:
        swift_beginAccess();
        sub_18BB5E9EC(v192, v76);
        swift_endAccess();

        sub_18B988BAC(v189, &unk_1EA9D9300, &qword_18BC42E80);
        sub_18B988BAC(v190, &unk_1EA9D92F0, &qword_18BC42990);
        v29 = &unk_18BC42E70;
        sub_18B988BAC(v32, &unk_1EA9D4F40, &unk_18BC42E70);
        v73 = v173;
        if (!v23)
        {
          goto LABEL_14;
        }
      }
    }
  }

  while (1)
  {
LABEL_14:
    v82 = (v1 + 1);
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v82 >= v73)
    {
      break;
    }

    v23 = *(&v36->origin.x + v82);
    v1 = (v1 + 1);
    if (v23)
    {
      v79 = v39;
      v80 = v32;
      v81 = v11;
      v1 = v82;
      goto LABEL_18;
    }
  }

  v142 = sub_18BC1F2A8();
  v143 = sub_18BC21228();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v195[0] = v145;
    *v144 = 136315138;
    swift_beginAccess();
    sub_18B8441B4();
    sub_18BC1E3F8();
    v146 = sub_18BC20FE8();
    v148 = v147;

    v149 = sub_18B7EA850(v146, v148, v195);

    *(v144 + 4) = v149;
    _os_log_impl(&dword_18B7AC000, v142, v143, "Elements in bounds: %s", v144, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v145);
    MEMORY[0x18CFFEEE0](v145, -1, -1);
    MEMORY[0x18CFFEEE0](v144, -1, -1);
  }

  p_x = &v157->origin.x;
  swift_beginAccess();
  v151 = v180;
  *(v180 + *((*MEMORY[0x1E69E7D40] & *v180) + 0x160)) = v196;
  sub_18BC1E3F8();

  [v151 bounds];
  *p_x = v152;
  p_x[1] = v153;
  p_x[2] = v154;
  p_x[3] = v155;
}

void sub_18BB4BD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18BC21958();
    v34 = a2;
    v35 = a3;
    v36 = a4;
    v37 = a5;
    v38 = a6;
    v39 = a7;
    _s8ItemInfoCMa(0, &v34);
    swift_getWitnessTable();
    sub_18BC210A8();
    v9 = v40;
    v14 = v41;
    v15 = v42;
    v16 = v43;
    v17 = v44;
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v14 = a1 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(a1 + 56);
    sub_18BC1E3F8();
    v16 = 0;
  }

  v21 = (v15 + 64) >> 6;
  if (v9 < 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v22 = v17;
    v23 = v16;
    if (!v17)
    {
      break;
    }

LABEL_13:
    v25 = (v22 - 1) & v22;
    v26 = *(*(v9 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    sub_18BC1E1A8();
    if (!v26)
    {
LABEL_19:
      sub_18B7D2E34(v9);
      return;
    }

    while (1)
    {
      v27 = *(*v26 + 208);
      v28 = *(v26 + v27);
      *(v26 + v27) = 0;

      sub_18BAC0220();
      sub_18BABFFF0();

      v16 = v23;
      v17 = v25;
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_15:
      if (sub_18BC219D8())
      {
        v34 = a2;
        v35 = a3;
        v36 = a4;
        v37 = a5;
        v38 = a6;
        v39 = a7;
        _s8ItemInfoCMa(0, &v34);
        sub_18BC21FA8();
        swift_unknownObjectRelease();
        v26 = v33;
        v23 = v16;
        v25 = v17;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  v24 = v16;
  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v21)
    {
      goto LABEL_19;
    }

    v22 = *(v14 + 8 * v23);
    ++v24;
    if (v22)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_18BB4BF4C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xA8);
  swift_beginAccess();
  v8 = *v7;
  if (!*v7)
  {
    return 0;
  }

  v9 = *(v7 + 1);
  v10 = sub_18B824D48(v8, v9);
  v11 = v8(v3, a1, v10);
  sub_18B7B171C(v8, v9);
  v12 = v3 + *((*v6 & *v3) + 0xA0);
  swift_beginAccess();
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 1);
    v15 = sub_18B824D48(v13, v14);
    v13(a1, v11, v15);
    sub_18B7B171C(v13, v14);
  }

  swift_beginAccess();
  sub_18BC1E3F8();
  v16 = sub_18BC210B8();

  (*((*v6 & *v11) + 0xB0))(v16 & 1);
  (*((*v6 & *v11) + 0xC8))(0);
  v17 = v11;
  sub_18BB4F0C8(a2, v11, a1);

  return v11;
}

BOOL sub_18BB4C190(uint64_t a1)
{
  v2 = v1;
  v4 = (*MEMORY[0x1E69E7D40] & *v2);
  v5 = v4[6];
  v20[0] = v4[5];
  v20[1] = v5;
  v20[2] = v4[7];
  v6 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v20);
  if (*(a1 + *(v6 + 68)) == 0.0)
  {
    return 0;
  }

  v8 = v6;
  [v2 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v22.origin.x = SFFluidCollectionView.LayoutAttributes.frame.getter(v8);
  v22.origin.y = v17;
  v22.size.width = v18;
  v22.size.height = v19;
  v21.origin.x = v10;
  v21.origin.y = v12;
  v21.size.width = v14;
  v21.size.height = v16;
  return CGRectIntersectsRect(v21, v22);
}

void sub_18BB4C28C(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v85 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  aBlock = v85;
  v92 = v4;
  v84 = v4;
  v83 = v5;
  v93 = v5;
  v94 = v6;
  v82 = v6;
  v81 = v7;
  v95 = v7;
  v96 = v8;
  v80 = v8;
  v79 = type metadata accessor for SFFluidCollectionView.Element(0, &aBlock);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v68 - v9;
  v90 = a1;
  v76 = (v10 + 16);
  v75 = (v10 + 8);
  v72 = &v93;
  v71 = *MEMORY[0x1E695DA28];
  sub_18BC1E3F8();
  v86 = 0;
  v11.n128_u64[0] = 134218242;
  v68 = v11;
  v73 = v1;
  while (1)
  {
LABEL_3:
    v89 = a1;
    sub_18BC1E3F8();
    aBlock = v85;
    v92 = v84;
    v93 = v83;
    v94 = v82;
    v95 = v81;
    v96 = v80;
    v12 = _s8ItemInfoCMa(255, &aBlock);
    WitnessTable = swift_getWitnessTable();
    v14 = sub_18BC210E8();
    v15 = swift_getWitnessTable();
    sub_18BC21188();
    v16 = v88;

    if (!v16)
    {

      return;
    }

    v78 = v15;
    v17 = *(*v16 + 184);
    swift_beginAccess();
    v18 = v16 + v17;
    v19 = v77;
    v20 = v79;
    (*v76)(v77, v18, v79);
    sub_18BC1E3F8();
    swift_getWitnessTable();
    v21 = sub_18BC210B8();

    (*v75)(v19, v20);
    v22 = sub_18BB4EC98(v16);
    v24 = v23;
    v25 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
    *(&v68 - 4) = v16;
    *(&v68 - 3) = v2;
    v26 = v21 & 1;
    v27 = WitnessTable;
    *(&v68 - 16) = v26;
    *(&v68 - 1) = v25;
    sub_18BC1E3F8();
    v87 = v12;
    v28 = v86;
    v29 = sub_18BC21068();
    v86 = v28;
    sub_18BC210C8();
    if (v24 > 0.0)
    {
      break;
    }

    sub_18BB4CC10(v29, 0, v26, v2);

    a1 = v90;
  }

  v74 = v16;
  if (qword_1EA9D2280 != -1)
  {
    swift_once();
  }

  v30 = sub_18BC1F2C8();
  __swift_project_value_buffer(v30, qword_1EA9F7E38);
  sub_18BC1E3F8();
  v31 = sub_18BC1F2A8();
  v32 = sub_18BC21228();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v69 = v32;
    v34 = v33;
    v35 = swift_slowAlloc();
    aBlock = v35;
    v70 = v27;
    v36 = v35;
    *v34 = v68.n128_u32[0];
    *(v34 + 4) = v24;
    *(v34 + 12) = 2082;
    v89 = v29;
    MEMORY[0x1EEE9AC00](v35);
    v37 = v84;
    *(&v68 - 6) = v85;
    *(&v68 - 5) = v37;
    v38 = v82;
    *(&v68 - 4) = v83;
    *(&v68 - 3) = v38;
    v39 = v80;
    *(&v68 - 2) = v81;
    *(&v68 - 1) = v39;
    v40 = v86;
    sub_18B82DECC(sub_18BB697AC, (&v68 - 4), v14, v79, MEMORY[0x1E69E73E0], v78, MEMORY[0x1E69E7410], v41);
    v86 = v40;
    v2 = v73;
    v42 = MEMORY[0x18CFFC2A0]();
    v44 = v43;

    v45 = sub_18B7EA850(v42, v44, &aBlock);

    *(v34 + 14) = v45;
    _os_log_impl(&dword_18B7AC000, v31, v69, "Animating after %fs delay:     %{public}s", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x18CFFEEE0](v36, -1, -1);
    MEMORY[0x18CFFEEE0](v34, -1, -1);
  }

  else
  {
  }

  v46 = swift_allocObject();
  *(v46 + 16) = v2;
  *(v46 + 24) = v29;
  *(v46 + 32) = v26;
  v95 = sub_18BB6979C;
  v96 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v92 = 1107296256;
  v93 = sub_18B8370D4;
  v94 = &block_descriptor_159;
  v47 = _Block_copy(&aBlock);
  v48 = objc_opt_self();
  sub_18BC1E3F8();
  v49 = v2;
  v50 = [v48 timerWithTimeInterval:0 repeats:v47 block:v24];
  _Block_release(v47);

  v51 = [objc_opt_self() mainRunLoop];
  [v51 addTimer:v50 forMode:v71];

  if ((v29 & 0xC000000000000001) != 0)
  {
    sub_18BC21958();
    sub_18BC210A8();
    v29 = v97;
    v52 = v98;
    v53 = v99;
    v54 = v100;
    v55 = v101;
  }

  else
  {
    v54 = 0;
    v56 = -1 << *(v29 + 32);
    v52 = v29 + 56;
    v53 = ~v56;
    v57 = -v56;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    else
    {
      v58 = -1;
    }

    v55 = v58 & *(v29 + 56);
  }

  v59 = (v53 + 64) >> 6;
  if (v29 < 0)
  {
    goto LABEL_19;
  }

  while (v55)
  {
    v60 = v55;
    v61 = v54;
LABEL_26:
    v63 = (v60 - 1) & v60;
    v62 = *(*(v29 + 48) + ((v61 << 9) | (8 * __clz(__rbit64(v60)))));
    sub_18BC1E1A8();
    if (!v62)
    {
LABEL_29:
      sub_18B7D2E34(v29);

      v2 = v73;
      a1 = v90;
      goto LABEL_3;
    }

    while (1)
    {
      v65 = *(*v62 + 208);
      v66 = *(v62 + v65);
      *(v62 + v65) = v50;
      v67 = v50;

      v54 = v61;
      v55 = v63;
      if ((v29 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      if (sub_18BC219D8())
      {
        sub_18BC21FA8();
        swift_unknownObjectRelease();
        v62 = aBlock;
        v61 = v54;
        v63 = v55;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_29;
    }
  }

  v64 = v54;
  while (1)
  {
    v61 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      break;
    }

    if (v61 >= v59)
    {
      goto LABEL_29;
    }

    v60 = *(v52 + 8 * v61);
    ++v64;
    if (v60)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
}

void sub_18BB4CC10(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = (*MEMORY[0x1E69E7D40] & *a4);
  v46 = a4;
  v8 = v7;
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = a1;
  if (a2)
  {
    v44[2] = v44;
    MEMORY[0x1EEE9AC00](v9);
    v44[1] = &v36;
    v12 = v8[11];
    v37 = v8[10];
    v11 = v37;
    v38 = v12;
    v13 = v8[13];
    v39 = v8[12];
    v14 = v39;
    v40 = v13;
    v45 = v10;
    v15 = a3;
    v17 = v8[15];
    v41 = v8[14];
    v16 = v41;
    v42 = v17;
    v43 = a2;
    swift_bridgeObjectRetain_n();
    v18 = a2;
    aBlock = v11;
    v48 = v12;
    v49 = v14;
    v50 = v13;
    v51 = v16;
    v52 = v17;
    v10 = v45;
    a3 = v15;
    _s8ItemInfoCMa(0, &aBlock);
    swift_getWitnessTable();
    v19 = sub_18BC21068();

    v10[2] = v19;
  }

  else
  {
    sub_18BC1E3F8();
  }

  v20 = v8[10];
  v21 = v8[11];
  v23 = v8[12];
  v22 = v8[13];
  v25 = v8[14];
  v24 = v8[15];
  sub_18BC1E3F8();
  aBlock = v20;
  v48 = v21;
  v49 = v23;
  v50 = v22;
  v51 = v25;
  v52 = v24;
  _s8ItemInfoCMa(0, &aBlock);
  swift_getWitnessTable();
  v26 = sub_18BC21098();

  if (v26)
  {
  }

  else
  {
    v27 = sub_18BC1E3F8();
    v28 = v10;
    v29 = v46;
    sub_18BB4D8E0(v27);

    v45 = objc_opt_self();
    v30 = *(v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x1B8));
    v31 = swift_allocObject();
    v31[2] = v20;
    v31[3] = v21;
    v31[4] = v23;
    v31[5] = v22;
    v31[6] = v25;
    v31[7] = v24;
    v31[8] = v28;
    v51 = sub_18BB697D4;
    v52 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_18B7B0DB0;
    v50 = &block_descriptor_168;
    v32 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    sub_18BC1E1A8();

    v33 = swift_allocObject();
    *(v33 + 16) = v29;
    *(v33 + 24) = v28;
    v51 = sub_18BB69864;
    v52 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_18B8043A0;
    v50 = &block_descriptor_174;
    v34 = _Block_copy(&aBlock);
    sub_18BC1E1A8();
    v35 = v29;

    [v45 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v34);
    _Block_release(v32);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_18BB4CFF4(uint64_t a1, void *a2)
{
  v2 = *(*a1 + *(**a1 + 208));
  if (!v2)
  {
    return 0;
  }

  sub_18B7B0AC0(0, &unk_1EA9D9FF0, 0x1E695DFF0);
  v4 = v2;
  v5 = a2;
  v6 = sub_18BC215C8();

  return v6 & 1;
}

void sub_18BB4D094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1 + 16;
  v14 = objc_opt_self();
  sub_18BC21288();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = a6;
  v21[7] = a7;
  v21[8] = v13;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_18BB69898;
  *(v22 + 24) = v21;
  v27[4] = sub_18B9D53B0;
  v27[5] = v22;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_18B7E3BF4;
  v27[3] = &block_descriptor_184;
  v23 = _Block_copy(v27);
  sub_18BC1E1A8();

  LODWORD(v24) = v16;
  LODWORD(v25) = v18;
  LODWORD(v26) = v20;
  [v14 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v23);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }
}

void sub_18BB4D27C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v14 = *a1;
  v35 = a6;
  v36 = a7;
  v34 = a4;
  v33 = a3;
  if ((*a1 & 0xC000000000000001) != 0)
  {
    sub_18BC1E3F8();
    sub_18BC21958();
    v38 = a2;
    v39 = a3;
    v40 = a4;
    v41 = a5;
    v42 = a6;
    v43 = a7;
    _s8ItemInfoCMa(0, &v38);
    swift_getWitnessTable();
    sub_18BC210A8();
    v14 = v44;
    v15 = v45;
    v16 = v46;
    v17 = v47;
    v18 = v48;
  }

  else
  {
    v19 = -1 << *(v14 + 32);
    v15 = v14 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v14 + 56);
    sub_18BC1E3F8();
    v17 = 0;
  }

  v32 = v16;
  v22 = (v16 + 64) >> 6;
  while (v14 < 0)
  {
    if (!sub_18BC219D8() || (v38 = a2, v39 = v33, v40 = v34, v41 = a5, v42 = v35, v43 = v36, _s8ItemInfoCMa(0, &v38), sub_18BC21FA8(), swift_unknownObjectRelease(), v27 = v37, v24 = v17, v26 = v18, !v37))
    {
LABEL_21:
      sub_18B7D2E34(v14);
      return;
    }

LABEL_19:
    v28 = *(*v27 + 208);
    [*(v27 + v28) invalidate];
    v29 = *(v27 + v28);
    *(v27 + v28) = 0;

    sub_18BAC0220();
    sub_18BABFFF0();
    v30 = sub_18BAC12A8();
    if (v30)
    {
      v31 = v30;
      [v31 layoutIfNeeded];
    }

    v17 = v24;
    v18 = v26;
  }

  v23 = v18;
  v24 = v17;
  if (v18)
  {
LABEL_15:
    v26 = (v23 - 1) & v23;
    v27 = *(*(v14 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    sub_18BC1E1A8();
    if (!v27)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v25 = v17;
  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v22)
    {
      goto LABEL_21;
    }

    v23 = *(v15 + 8 * v24);
    ++v25;
    if (v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

double sub_18BB4D514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v4 = sub_18BC1E3F8();
  sub_18BB4DF3C(v4);

  return result;
}

uint64_t sub_18BB4D56C(uint64_t *a1, uint64_t a2, void *a3, unsigned int a4, double a5)
{
  v29 = a4;
  v28 = a3;
  v9 = *(*a2 + 96);
  v10 = *(*a2 + 104);
  v11 = *(*a2 + 112);
  v12 = *(*a2 + 120);
  v13 = *(*a2 + 128);
  v30 = *(*a2 + 88);
  v8 = v30;
  v31 = v9;
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v14 = type metadata accessor for SFFluidCollectionView.Element(0, &v30);
  v26 = *(v14 - 8);
  v27 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *a1;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  _s8ItemInfoCMa(0, &v30);
  if (sub_18BAC05B0(v17, a2))
  {
    return 1;
  }

  v19 = *(*v17 + 184);
  swift_beginAccess();
  v20 = v26;
  v21 = v17 + v19;
  v22 = v27;
  (*(v26 + 16))(v16, v21, v27);
  sub_18BC1E3F8();
  swift_getWitnessTable();
  v23 = sub_18BC210B8();

  (*(v20 + 8))(v16, v22);
  sub_18BB4EC98(v17);
  return (v24 == a5) & ~(v23 ^ v29);
}

uint64_t sub_18BB4D800@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a1;
  v16 = *(**a1 + 184);
  swift_beginAccess();
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v17 = type metadata accessor for SFFluidCollectionView.Element(0, v19);
  return (*(*(v17 - 8) + 16))(a8, v15 + v16, v17);
}

void sub_18BB4D8E0(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v63 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v64 = v3;
  v67 = v3;
  v68 = v4;
  v69 = v63;
  v70 = v5;
  v61 = v7;
  v62 = v5;
  v71 = v6;
  v72 = v7;
  v8 = type metadata accessor for SFFluidCollectionView.Element(0, &v67);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v47 = v1;
  v16 = sub_18B812A74();
  v59 = v16;
  if (v16)
  {
    v18 = v16;
    v19 = v17;
    v16 = swift_allocObject();
    *(v16 + 16) = v18;
    *(v16 + 24) = v19;
    v57 = sub_18BB69484;
  }

  else
  {
    v57 = 0;
  }

  v58 = v16;
  v53 = v15;
  v54 = v11;
  v55 = v8;
  v65 = v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18BC21958();
    v67 = v64;
    v68 = v4;
    v69 = v63;
    v70 = v62;
    v71 = v6;
    v72 = v61;
    _s8ItemInfoCMa(0, &v67);
    swift_getWitnessTable();
    sub_18BC210A8();
    a1 = v73;
    v20 = v74;
    v21 = v75;
    v22 = v76;
    v23 = v77;
  }

  else
  {
    v24 = -1 << *(a1 + 32);
    v20 = a1 + 56;
    v21 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = v26 & *(a1 + 56);
    sub_18BC1E3F8();
    v22 = 0;
  }

  v56 = v21;
  v27 = (v21 + 64) >> 6;
  v52 = (v9 + 16);
  v51 = (v9 + 8);
  v50 = (v12 + 32);
  v60 = v6;
  v49 = v6 + 24;
  v48 = (v12 + 8);
LABEL_11:
  v28 = v59;
  while (a1 < 0)
  {
    if (!sub_18BC219D8() || (v67 = v64, v68 = v65, v69 = v63, v70 = v62, v71 = v60, v72 = v61, _s8ItemInfoCMa(0, &v67), sub_18BC21FA8(), swift_unknownObjectRelease(), v33 = v66, v30 = v22, v32 = v23, !v66))
    {
LABEL_33:
      sub_18B7D2E34(a1);
      sub_18B7B171C(v57, v58);
      return;
    }

LABEL_23:
    v34 = sub_18BAC01FC();
    sub_18BAC04F0();
    if (v28 && !v34 && (*(v33 + *(*v33 + 200)) & 1) == 0)
    {
      v35 = *(*v33 + 184);
      swift_beginAccess();
      v36 = v33 + v35;
      v37 = v54;
      v38 = v55;
      (*v52)(v54, v36, v55);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = v65;
        (*v50)(v53, v37, v65);
        v40 = v60;
        v46 = *(v60 + 24);
        sub_18BC1E1A8();
        if (v46(v39, v40))
        {
          sub_18B7B171C(v57, v58);

          v41 = *v48;
          v42 = v53;
        }

        else
        {
          v43 = v53;
          v44 = v58;
          v45 = v57;
          v57(v47, v53);
          sub_18B7B171C(v45, v44);

          v41 = *v48;
          v42 = v43;
        }

        v41(v42, v65);
      }

      else
      {

        (*v51)(v37, v38);
      }

      v22 = v30;
      v23 = v32;
      goto LABEL_11;
    }

    v22 = v30;
    v23 = v32;
  }

  v29 = v23;
  v30 = v22;
  if (v23)
  {
LABEL_19:
    v32 = (v29 - 1) & v29;
    v33 = *(*(a1 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
    sub_18BC1E1A8();
    if (!v33)
    {
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  v31 = v22;
  while (1)
  {
    v30 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      goto LABEL_33;
    }

    v29 = *(v20 + 8 * v30);
    ++v31;
    if (v29)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_18BB4DF3C(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v76 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v3 = v76;
  v77 = v4;
  v78 = v5;
  v79 = v6;
  v80 = v7;
  v81 = v8;
  v67 = type metadata accessor for SFFluidCollectionView.Element(0, &v76);
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = v59 - v9;
  v64 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v61 = v59 - v11;
  v63 = (a1 & 0xC000000000000001);
  v69 = v3;
  v74 = v7;
  v73 = v4;
  v72 = v5;
  v71 = v6;
  v70 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18BC21958();
    v76 = v3;
    v77 = v4;
    v78 = v5;
    v79 = v6;
    v80 = v7;
    v81 = v8;
    _s8ItemInfoCMa(0, &v76);
    swift_getWitnessTable();
    sub_18BC210A8();
    v13 = v82;
    v12 = v83;
    v15 = v84;
    v14 = v85;
    v16 = v86;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v15 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(a1 + 56);
    sub_18BC1E3F8();
    v14 = 0;
    v13 = a1;
  }

  if (v13 < 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v20 = v16;
    v21 = v14;
    if (!v16)
    {
      break;
    }

LABEL_13:
    v23 = (v20 - 1) & v20;
    v24 = *(*(v13 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    sub_18BC1E1A8();
    if (!v24)
    {
      goto LABEL_19;
    }

    while (1)
    {
      sub_18BAC051C();

      v14 = v21;
      v16 = v23;
      if ((v13 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_15:
      if (sub_18BC219D8())
      {
        v76 = v69;
        v77 = v73;
        v78 = v72;
        v79 = v71;
        v80 = v74;
        v81 = v70;
        _s8ItemInfoCMa(0, &v76);
        sub_18BC21FA8();
        swift_unknownObjectRelease();
        v21 = v14;
        v23 = v16;
        if (v87)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  v22 = v14;
  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v21 >= ((v15 + 64) >> 6))
    {
      break;
    }

    v20 = *(v12 + 8 * v21);
    ++v22;
    if (v20)
    {
      goto LABEL_13;
    }
  }

LABEL_19:
  sub_18B7D2E34(v13);
  v25 = sub_18B812A74();
  if (!v25)
  {
LABEL_47:
    sub_18B826338(v25);
    return;
  }

  v27 = v25;
  v28 = v26;
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v62 = v29;
  if (v63)
  {
    swift_unknownObjectRetain();
    sub_18BC21958();
    v30 = v69;
    v76 = v69;
    v77 = v73;
    v78 = v72;
    v31 = v74;
    v79 = v71;
    v80 = v74;
    v81 = v70;
    _s8ItemInfoCMa(0, &v76);
    swift_getWitnessTable();
    sub_18BC210A8();
    a1 = v87;
    v32 = v88;
    v33 = v89;
    v34 = v90;
    v35 = v91;
  }

  else
  {
    v36 = -1 << *(a1 + 32);
    v32 = a1 + 56;
    v33 = ~v36;
    v37 = -v36;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v35 = v38 & *(a1 + 56);
    sub_18BC1E3F8();
    v34 = 0;
    v30 = v69;
    v31 = v74;
  }

  v39 = v65;
  v40 = v64;
  v64 = v33;
  v41 = (v33 + 64) >> 6;
  v65 += 2;
  v63 = (v39 + 1);
  v60 = (v40 + 32);
  v59[1] = v31 + 24;
  v59[0] = v40 + 8;
  v42 = v30;
  while (a1 < 0)
  {
    if (!sub_18BC219D8() || (v76 = v42, v77 = v73, v78 = v72, v79 = v71, v80 = v74, v81 = v70, _s8ItemInfoCMa(0, &v76), sub_18BC21FA8(), swift_unknownObjectRelease(), v47 = v75, v44 = v34, v46 = v35, !v75))
    {
LABEL_46:
      sub_18B7D2E34(a1);

      goto LABEL_47;
    }

LABEL_37:
    if (sub_18BAC01FC() || (*(v47 + *(*v47 + 200)) & 1) != 0)
    {

      goto LABEL_40;
    }

    v48 = *(*v47 + 184);
    swift_beginAccess();
    v49 = v47 + v48;
    v50 = v66;
    v51 = v67;
    (*v65)(v66, v49, v67);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v52 = v61;
      v53 = v73;
      (*v60)(v61, v50, v73);
      v54 = (*(v74 + 24))(v53);
      v42 = v69;
      if (v54)
      {

        (*v59[0])(v52, v53);
      }

      else
      {
        v55 = v52;
        v56 = *(v62 + 24);
        ObjectType = swift_getObjectType();
        (*(v56 + 144))(v68, v55, ObjectType, v56);

        v58 = v55;
        v42 = v69;
        (*v59[0])(v58, v53);
      }

LABEL_40:
      v34 = v44;
      v35 = v46;
    }

    else
    {

      (*v63)(v50, v51);
      v34 = v44;
      v35 = v46;
      v42 = v69;
    }
  }

  v43 = v35;
  v44 = v34;
  if (v35)
  {
LABEL_33:
    v46 = (v43 - 1) & v43;
    v47 = *(*(a1 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v43)))));
    sub_18BC1E1A8();
    if (!v47)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  v45 = v34;
  while (1)
  {
    v44 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v44 >= v41)
    {
      goto LABEL_46;
    }

    v43 = *(v32 + 8 * v44);
    ++v45;
    if (v43)
    {
      goto LABEL_33;
    }
  }

LABEL_49:
  __break(1u);
}

id sub_18BB4E7C4(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v45 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v43 - v5;
  v8 = *((v7 & v6) + 0x58);
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v14 = *((v13 & v12) + 0x50);
  v46 = v15;
  v16 = *((v13 & v12) + 0x78);
  v47[0] = v14;
  v47[1] = v8;
  v47[2] = v4;
  v48 = *(v17 + 104);
  v49 = v16;
  v18 = type metadata accessor for SFFluidCollectionView.Element(0, v47);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - v24;
  v26 = *(v19 + 16);
  v26(&v43 - v24, a1, v18, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v34 = swift_projectBox();
    v35 = *(TupleTypeMetadata2 + 48);
    (*(v45 + 16))(v44, v34, v4);
    (v26)(v21, v34 + v35, v18);
    if (sub_18B812A74())
    {
      v37 = v36;
      ObjectType = swift_getObjectType();
      v39 = v44;
      v32 = (*(v37 + 160))(v46, v44, v21, ObjectType, v37);
      swift_unknownObjectRelease();
      (*(v19 + 8))(v21, v18);
      (*(v45 + 8))(v39, v4);

      return v32;
    }

    (*(v19 + 8))(v21, v18);
    (*(v45 + 8))(v44, v4);
    v42 = v46;

    return v42;
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v43;
      (*(v43 + 32))(v11, v25, v8);
      if (sub_18B812A74())
      {
        v30 = v29;
        v31 = swift_getObjectType();
        v32 = (*(v30 + 152))(v46, v11, v31, v30);
        swift_unknownObjectRelease();
        (*(v28 + 8))(v11, v8);
        return v32;
      }

      (*(v28 + 8))(v11, v8);
    }

    else
    {
      (*(v19 + 8))(v25, v18);
    }

    v41 = v46;

    return v41;
  }
}

uint64_t sub_18BB4EC98(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v30 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v31 = v3;
  v34[0] = v3;
  v34[1] = v4;
  v34[2] = v30;
  v28 = v6;
  v29 = v5;
  v34[3] = v5;
  v34[4] = v6;
  v27 = v7;
  v34[5] = v7;
  v8 = type metadata accessor for SFFluidCollectionView.Element(0, v34);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = *(*a1 + 184);
  swift_beginAccess();
  (*(v9 + 16))(v11, a1 + v16, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v9 + 8))(v11, v8);
  }

  (*(v12 + 32))(v15, v11, v4);
  sub_18B81FB48(v32);
  memcpy(v33, v32, 0x139uLL);
  if (sub_18B81CA10(v33) != 1)
  {
    v17 = sub_18B812A74();
    if (v17)
    {
      v19 = v17;
      v20 = v18;
      v21 = swift_allocObject();
      *(v21 + 16) = v19;
      *(v21 + 24) = v20;
      memcpy(v34, v33, 0x139uLL);
      ObjectType = swift_getObjectType();
      (*(v20 + 72))(v1, v15, v34, ObjectType, v20);

      (*(v12 + 8))(v15, v4);
      v34[0] = v31;
      v34[1] = v4;
      v34[2] = v30;
      v34[3] = v29;
      v34[4] = v28;
      v34[5] = v27;
      type metadata accessor for SFFluidCollectionView.Update(255, v34);
      v23 = sub_18BC21848();
      return (*(*(v23 - 8) + 8))(v32, v23);
    }

    v34[0] = v31;
    v34[1] = v4;
    v34[2] = v30;
    v34[3] = v29;
    v34[4] = v28;
    v34[5] = v27;
    type metadata accessor for SFFluidCollectionView.Update(255, v34);
    v25 = sub_18BC21848();
    (*(*(v25 - 8) + 8))(v32, v25);
  }

  return (*(v12 + 8))(v15, v4);
}

double sub_18BB4F0C8(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    if (a1)
    {
      type metadata accessor for SFFluidCollectionReusableView();
      v8 = a2;
      v9 = a1;
      v10 = sub_18BC215C8();

      if (v10)
      {
        return result;
      }
    }
  }

  else if (!a1)
  {
    return result;
  }

  v12 = sub_18B812A74();
  v13 = v12;
  v15 = v14;
  if (a1 && v12)
  {
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 128);
    v18 = a1;
    swift_unknownObjectRetain();
    v17(v4, v18, a3, ObjectType, v15);

    swift_unknownObjectRelease();
  }

  if (a2)
  {
    if (v13)
    {
      v19 = swift_getObjectType();
      v20 = *(v15 + 120);
      v21 = a2;
      swift_unknownObjectRetain();
      v20(v4, v21, a3, v19, v15);

      swift_unknownObjectRelease_n();
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_18BB4F250(void *a1, uint64_t a2, double *a3, CGFloat a4, CGFloat a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30, &unk_18BC42E60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v79 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v79 - v13;
  v86 = _s4ItemVMa_2(0);
  v14 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v95 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9300, &qword_18BC42E80);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v79 - v17;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40, &unk_18BC42E70);
  v19 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v79 - v20;
  v21 = MEMORY[0x1E69E7D40];
  v22 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x98);
  swift_beginAccess();
  v96 = a1;
  if (*(a1 + v22) == 1)
  {
    v83 = a3;
    v84 = a2;
    v23 = v96;
    v24 = *((*v21 & *v96) + 0x150);
    swift_beginAccess();
    v25 = *(*(v23 + v24) + 16);
    v82 = v12;
    if (!v25)
    {
      v26 = v96;
      sub_18BB49DC8();
      sub_18BB4A908();
      v27 = v26 + *((*v21 & *v26) + 0x1C0);
      if (v27[2] == 1)
      {
        v28 = *((*v21 & *v26) + 0x1D8);
        v29 = v96;
        swift_beginAccess();
        v30 = *(**(v29 + v28) + 424);
        v31 = sub_18BC1E1A8();
        v30(v31);

        v27[2] = 0;
      }

      if (v27[1] == 1)
      {
        swift_beginAccess();
        sub_18BC1E1A8();
        sub_18BB44000();

        v27[1] = 0;
      }
    }

    v32 = *(v96 + v24);
    v33 = *(v32 + 64);
    v87 = v32 + 64;
    v34 = 1 << *(v32 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & v33;
    v85 = *((*v21 & *v96) + 0x90);
    v37 = (v34 + 63) >> 6;
    v38 = (v19 + 48);
    v80 = (v14 + 56);
    v81 = (v14 + 48);
    v39 = sub_18BC1E3F8();
    v40 = 0;
    v94 = v18;
    v88 = (v19 + 48);
    v89 = v39;
    while (v36)
    {
LABEL_17:
      v45 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v46 = *(*(v39 + 56) + ((v40 << 9) | (8 * v45)));
      v97 = v46[3];
      if (v97)
      {
        v47 = *(*v46 + 176);
        swift_beginAccess();
        sub_18B7CA054(v46 + v47, v18, &unk_1EA9D9300, &qword_18BC42E80);
        v48 = *v38;
        v49 = v91;
        if ((*v38)(v18, 1, v91) == 1)
        {
          v50 = *(*v46 + 184);
          swift_beginAccess();
          v51 = v46 + v50;
          v52 = v94;
          v53 = v90;
          sub_18B7CA054(v51, v90, &unk_1EA9D4F40, &unk_18BC42E70);
          v54 = v48(v52, 1, v49);
          sub_18BC1E1A8();
          v55 = v97;
          if (v54 != 1)
          {
            sub_18B988BAC(v52, &unk_1EA9D9300, &qword_18BC42E80);
          }
        }

        else
        {
          v53 = v90;
          sub_18B7CF39C(v18, v90, &unk_1EA9D4F40, &unk_18BC42E70);
          sub_18BC1E1A8();
          v56 = v97;
        }

        v57 = v92;
        sub_18B7CA054(v53, v92, &unk_1EA9D92F0, &qword_18BC42990);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v59 = v95;
        if (EnumCaseMultiPayload == 1)
        {
          sub_18B85A83C(v57, v95, _s4ItemVMa_2);
          v60 = *(v96 + v85) + qword_1EA9D95C8;
          swift_beginAccess();
          v61 = *v60;
          v62 = *(v60 + 32);
          v99[1] = *(v60 + 16);
          v99[2] = v62;
          v99[0] = v61;
          sub_18B7CA054(v99, &v98, &unk_1EA9D4F90, &unk_18BC4F810);
          LOBYTE(v60) = sub_18BB44F94(v53);
          sub_18B988BAC(v99, &unk_1EA9D4F90, &unk_18BC4F810);
          if (v60)
          {
            v63 = v97;
            [v63 frame];
            v65 = v64;
            v67 = v66;
            v69 = v68;
            v71 = v70;
            v72 = [v63 layer];

            [v72 zPosition];
            v74 = v73;

            v101.origin.x = v65;
            v101.origin.y = v67;
            v101.size.width = v69;
            v101.size.height = v71;
            v100.x = a4;
            v100.y = a5;
            if (CGRectContainsPoint(v101, v100))
            {
              v75 = v82;
              sub_18B7CA054(v84, v82, &unk_1EA9D4F30, &unk_18BC42E60);
              v76 = (*v81)(v75, 1, v86);
              sub_18B988BAC(v75, &unk_1EA9D4F30, &unk_18BC42E60);
              if (v76 == 1 || *v83 < v74)
              {
                v77 = v84;
                sub_18B988BAC(v84, &unk_1EA9D4F30, &unk_18BC42E60);
                sub_18B85A52C(v95, v77, _s4ItemVMa_2);
                (*v80)(v77, 0, 1, v86);
                *v83 = v74;
              }
            }

            v78 = v95;
          }

          else
          {

            v78 = v59;
          }

          sub_18BB69570(v78, _s4ItemVMa_2);
          v41 = v53;
          v42 = &unk_1EA9D4F40;
          v43 = &unk_18BC42E70;
        }

        else
        {
          sub_18B988BAC(v53, &unk_1EA9D4F40, &unk_18BC42E70);

          v41 = v57;
          v42 = &unk_1EA9D92F0;
          v43 = &qword_18BC42990;
        }

        sub_18B988BAC(v41, v42, v43);
        v18 = v94;
        v38 = v88;
        v39 = v89;
      }
    }

    while (1)
    {
      v44 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v44 >= v37)
      {

        return;
      }

      v36 = *(v87 + 8 * v44);
      ++v40;
      if (v36)
      {
        v40 = v44;
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

void sub_18BB4FB78(void (*a1)(char *, double, double, double, double, double), uint64_t a2)
{
  v3 = v2;
  v69 = a2;
  v68 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & v4) + 0x58);
  v8 = *((*MEMORY[0x1E69E7D40] & v4) + 0x60);
  v9 = *((*MEMORY[0x1E69E7D40] & v4) + 0x68);
  v10 = *((*MEMORY[0x1E69E7D40] & v4) + 0x70);
  v11 = *((*MEMORY[0x1E69E7D40] & v4) + 0x78);
  v84 = *((*MEMORY[0x1E69E7D40] & v4) + 0x50);
  v6 = v84;
  v85 = v7;
  *&v86 = v8;
  *(&v86 + 1) = v9;
  v87 = v10;
  v88 = v11;
  v12 = type metadata accessor for SFFluidCollectionView.Element(0, &v84);
  v78 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v56 - v13;
  v70 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v56 - v15;
  v84 = v6;
  v85 = v7;
  *&v86 = v8;
  *(&v86 + 1) = v9;
  v87 = v10;
  v88 = v11;
  v74 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v84);
  v71 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v79 = &v56 - v16;
  v17 = *((v5 & v4) + 0x98);
  swift_beginAccess();
  if (*(v3 + v17) == 1)
  {
    v18 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x150);
    swift_beginAccess();
    v19 = *(v3 + v18);
    sub_18BC1E3F8();
    v65 = v6;
    v84 = v6;
    v85 = v7;
    v75 = v7;
    *&v86 = v8;
    *(&v86 + 1) = v9;
    v63 = v9;
    v62 = v10;
    v87 = v10;
    v88 = v11;
    v61 = v11;
    v20 = _s8ItemInfoCMa(0, &v84);
    WitnessTable = swift_getWitnessTable();
    v73 = v12;
    LOBYTE(v20) = MEMORY[0x18CFFBED0](v19, v12, v20, WitnessTable);

    v64 = v8;
    if (v20)
    {
      sub_18B81C6D0();
      sub_18B821348();
      sub_18B825434();
    }

    v22 = MEMORY[0x1E69E7D40];
    v23 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x150);
    swift_beginAccess();
    v24 = *(v3 + v23);
    v25 = v24 + 64;
    v26 = 1 << *(v24 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 64);
    v60 = *((*v22 & *v3) + 0x90);
    v29 = (v26 + 63) >> 6;
    v72 = (v78 + 16);
    ++v71;
    v59 = (v78 + 8);
    v58 = (v70 + 32);
    v57 = v70 + 8;
    v78 = v24;
    sub_18BC1E3F8();
    v30 = 0;
    v31 = v75;
    v32 = v79;
    while (v28)
    {
LABEL_13:
      v28 &= v28 - 1;
      v35 = sub_18BAC12A8();
      if (v35)
      {
        v36 = v35;
        sub_18BC1E1A8();
        sub_18BABE7E4(v32);
        v37 = v32;
        v38 = v77;
        v39 = v73;
        (*v72)(v77, v37, v73);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v70 = v36;
          (*v58)(v76, v38, v31);
          sub_18BB23214(&v84);
          v80[6] = v84;
          v80[7] = v85;
          v81 = v86;
          v82 = v87;
          v83 = v88;
          v80[0] = v65;
          v80[1] = v31;
          v80[2] = v64;
          v80[3] = v63;
          v80[4] = v62;
          v80[5] = v61;
          v40 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot(0, v80);
          v67 = SFFluidCollectionView.DataSource.Snapshot.contains(_:)(v79, v40);
          v66 = v82;

          if (v67)
          {
            v41 = v70;
            [v41 frame];
            v43 = v42;
            v45 = v44;
            v47 = v46;
            v49 = v48;
            v50 = [v41 layer];

            [v50 zPosition];
            v52 = v51;

            v53 = v76;
            v68(v76, v43, v45, v47, v49, v52);

            v54 = *v57;
            v55 = v53;
          }

          else
          {

            v54 = *v57;
            v55 = v76;
          }

          v31 = v75;
          v54(v55, v75);
          v32 = v79;
          (*v71)(v79, v74);
        }

        else
        {
          v33 = v79;
          (*v71)(v79, v74);

          (*v59)(v38, v39);
          v32 = v33;
          v31 = v75;
        }
      }
    }

    while (1)
    {
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v34 >= v29)
      {

        return;
      }

      v28 = *(v25 + 8 * v34);
      ++v30;
      if (v28)
      {
        v30 = v34;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_18BB503F4(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *v3;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40] & *v3;
  v10 = *(v9 + 0x58);
  (*(*(*((v8 & v7) + 0x58) - 8) + 56))(a1, 1, 1, *((v8 & v7) + 0x58));
  v19 = 0x10000000000000;
  v12[2] = *((v8 & v7) + 0x50);
  v12[3] = v10;
  v11 = *(v9 + 112);
  v13 = *(v9 + 96);
  v14 = v11;
  v15 = a2;
  v16 = a3;
  v17 = a1;
  v18 = &v19;
  sub_18BB4FB78(sub_18BB66BE4, v12);
}

uint64_t sub_18BB50510(uint64_t a1, char *a2, double *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, CGFloat a9, CGFloat a10, uint64_t a11, uint64_t a12)
{
  v23 = sub_18BC21848();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v31 - v25;
  v33.origin.x = a4;
  v33.origin.y = a5;
  v33.size.width = a6;
  v33.size.height = a7;
  v32.x = a9;
  v32.y = a10;
  result = CGRectContainsPoint(v33, v32);
  if (result)
  {
    (*(v24 + 16))(v26, a2, v23);
    v28 = *(a12 - 8);
    v29 = (*(v28 + 48))(v26, 1, a12);
    v30 = *(v24 + 8);
    result = v30(v26, v23);
    if (v29 == 1 || *a3 < a8)
    {
      v30(a2, v23);
      (*(v28 + 16))(a2, a1, a12);
      result = (*(v28 + 56))(a2, 0, 1, a12);
      *a3 = a8;
    }
  }

  return result;
}

void sub_18BB50724(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *v3;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40] & *v3;
  v10 = *(v9 + 0x58);
  (*(*(*((v8 & v7) + 0x58) - 8) + 56))(a1, 1, 1, *((v8 & v7) + 0x58));
  v20 = 0x10000000000000;
  v21 = 0x7FEFFFFFFFFFFFFFLL;
  v12[2] = *((v8 & v7) + 0x50);
  v12[3] = v10;
  v11 = *(v9 + 112);
  v13 = *(v9 + 96);
  v14 = v11;
  v15 = a2;
  v16 = a3;
  v17 = &v21;
  v18 = &v20;
  v19 = a1;
  sub_18BB4FB78(sub_18BB66C1C, v12);
}

void sub_18BB5084C(uint64_t a1, double *a2, double *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13)
{
  UIDistanceBetweenPointAndRect();
  v20 = v19;
  if (v19 < *a2 || v19 == *a2 && *a3 < a9)
  {
    v21 = sub_18BC21848();
    (*(*(v21 - 8) + 8))(a4, v21);
    v22 = *(a13 - 8);
    (*(v22 + 16))(a4, a1, a13);
    (*(v22 + 56))(a4, 0, 1, a13);
    *a2 = v20;
    *a3 = a9;
  }
}

void *sub_18BB50984(uint64_t a1)
{
  v18 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v19 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *((v3 & v2) + 0x58);
  v5 = *((v3 & v2) + 0x60);
  v6 = *((v3 & v2) + 0x68);
  v7 = *((v3 & v2) + 0x70);
  v8 = *((v3 & v2) + 0x78);
  v20 = v19;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v9 = type metadata accessor for SFFluidCollectionView.Element(0, &v20);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(*(v4 - 8) + 16))(&v17 - v12, v18, v4, v11);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_18BC1E3F8();
  v20 = v19;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  _s8ItemInfoCMa(0, &v20);
  swift_getWitnessTable();
  sub_18BC20A28();

  (*(v10 + 8))(v13, v9);
  if (!v20)
  {
    return 0;
  }

  v14 = sub_18BAC12A8();
  v15 = v14;

  return v14;
}