id ProfileGradientWithFadeView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_1BA361998()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_delayAnimation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BA361A3C()
{
  v9 = [v0 layer];
  type metadata accessor for GradientLayer();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    v3 = CACurrentMediaTime();
    v4 = OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_lastAnimate;
    v5 = v3 - *&v0[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_lastAnimate];
    v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_angle] + (v5 * 12.0);
    *&v0[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_angle] = v6;
    if (!v0[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_staticAngle + 4])
    {
      v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_staticAngle];
    }

    v8 = COERCE_UNSIGNED_INT((v6 / 180.0) * 3.1416);
    v7 = OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms;
    swift_beginAccess();
    *&v2[v7] = v8;
    [v2 setNeedsDisplay];
    [v2 setNeedsDisplay];

    *&v0[v4] = v3;
  }

  else
  {
  }
}

void sub_1BA361BE0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_lastAnimate) = CACurrentMediaTime();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLink);
    v5 = v3;
    v6 = v4;

    if (v4)
    {
      v7 = [objc_opt_self() mainRunLoop];
      [v6 addToRunLoop:v7 forMode:*MEMORY[0x1E695DA28]];
    }

    else
    {
      __break(1u);
    }
  }
}

id ProfileGradientView.__deallocating_deinit()
{
  result = *&v0[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLink];
  if (result)
  {
    [result invalidate];
    v2.receiver = v0;
    v2.super_class = type metadata accessor for ProfileGradientView();
    return objc_msgSendSuper2(&v2, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1BA361FF8(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_commandQueue;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_commandQueue] = 0;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_texcoordsBuffer;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_texcoordsBuffer] = 0;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniformsBuffer;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniformsBuffer] = 0;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_pipelineState;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_pipelineState] = 0;
  sub_1B9F0AD9C(a1, v21);
  v8 = type metadata accessor for GradientLayer();
  if (swift_dynamicCast())
  {
    v9 = &v19[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms];
    swift_beginAccess();
    v17 = *(v9 + 1);
    v18 = *v9;
    v15 = *(v9 + 3);
    v16 = *(v9 + 2);
    v14 = *(v9 + 4);
    swift_beginAccess();
    *v3 = v18;
    *(v3 + 1) = v17;
    *(v3 + 2) = v16;
    *(v3 + 3) = v15;
    *(v3 + 4) = v14;
    *&v1[v4] = *&v19[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_commandQueue];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *&v1[v5] = *&v19[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_texcoordsBuffer];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *&v1[v6] = *&v19[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniformsBuffer];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v10 = *&v19[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_pipelineState];
    swift_unknownObjectRetain();

    *&v1[v7] = v10;
    swift_unknownObjectRelease();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1BA4A8328();
  v20.receiver = v1;
  v20.super_class = v8;
  v12 = objc_msgSendSuper2(&v20, sel_initWithLayer_, v11);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

id sub_1BA36225C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BA362300()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy80_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1BA3624D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA3624F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

void sub_1BA362544()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_delayAnimation) = 0;
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_lastAnimate;
  *(v0 + v1) = CACurrentMediaTime();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_angle) = 0;
  v2 = v0 + OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_staticAngle;
  *v2 = 0;
  *(v2 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLinkAdded) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLink) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA3625FC()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_commandQueue) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_texcoordsBuffer) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniformsBuffer) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_pipelineState) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA3626AC()
{
  v0 = *(sub_1BA4A7108() + 16);

  qword_1EBC09918 = v0;
}

void sub_1BA3626DC()
{
  v0 = *(sub_1BA4A6ED8() + 16);

  qword_1EBC09920 = v0;
}

void sub_1BA36270C()
{
  v0 = *(sub_1BA4A74E8() + 16);

  qword_1EBC09928 = v0;
}

void sub_1BA36273C()
{
  v0 = *(sub_1BA4A7118() + 16);

  qword_1EBC09930 = v0;
}

uint64_t sub_1BA36276C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(v8);
  if (v8[3])
  {
    sub_1B9FCD918();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for HealthDetailsDemographicsItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
    if (swift_dynamicCast())
    {
      v5 = *(v7 + 96);

      return v5;
    }
  }

  else
  {
    sub_1B9F444C4(v8, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  return 0;
}

uint64_t sub_1BA362880(uint64_t a1, uint64_t a2)
{
  sub_1B9F0D658(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - v6;
  v8 = sub_1BA4A3FB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A3F18();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1BA36276C(a1, a2) & 1) == 0)
  {
    sub_1B9F0D658(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1BA4A3FE8();
    *(swift_allocObject() + 16) = xmmword_1BA4B5480;
    (*(v14 + 104))(v17, *MEMORY[0x1E69DBF28], v13);
    v18 = sub_1BA4A3F48();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    sub_1BA4A3FA8();
    sub_1BA4A3F78();
    (*(v9 + 8))(v12, v8);
    (*(v14 + 8))(v17, v13);
  }

  return sub_1BA4A75F8();
}

uint64_t sub_1BA362BB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F0D658(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &aBlock - v12;
  *&v16 = MEMORY[0x1EEE9AC00](v14, v15).n128_u64[0];
  v18 = &aBlock - v17;
  v19 = [v2 viewController];
  if (v19)
  {
    v20 = v19;
    UIViewController.resolvedPresentation.getter(&aBlock);

    v21 = aBlock;
  }

  else
  {
    v21 = 7;
  }

  if ((sub_1BA36276C(a1, a2) & 1) == 0)
  {
    MEMORY[0x1BFAF1F00]();
    v25 = sub_1BA4A4168();
    if ((*(*(v25 - 8) + 48))(v18, 1, v25))
    {
      v23 = MEMORY[0x1E69DC0D8];
      sub_1BA367CC0(v18, v13, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
      MEMORY[0x1BFAF1F10](v13);
      v24 = v18;
      return sub_1B9F444C4(v24, &qword_1EDC6B770, v23);
    }

    if (([v3 isHighlighted] & 1) != 0 || objc_msgSend(v3, sel_isSelected))
    {
      if ((v21 - 6) < 2)
      {
        v37 = objc_opt_self();
        v38 = [v37 systemGray5Color];
        v39 = [v37 tertiarySystemGroupedBackgroundColor];
        v40 = swift_allocObject();
        v40[2] = 0;
        v40[3] = v39;
        v40[4] = 0;
        v40[5] = v38;
        v35 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v48 = sub_1B9FD7F54;
        v49 = v40;
        aBlock = MEMORY[0x1E69E9820];
        v45 = 1107296256;
        v36 = &block_descriptor_97;
        goto LABEL_20;
      }

      if (v21 == 4 || v21 == 12)
      {
        v31 = objc_opt_self();
        v32 = [v31 systemGray5Color];
        v33 = [v31 systemGray4Color];
        v34 = swift_allocObject();
        v34[2] = 0;
        v34[3] = v33;
        v34[4] = 0;
        v34[5] = v32;
        v35 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v48 = sub_1B9FE1088;
        v49 = v34;
        aBlock = MEMORY[0x1E69E9820];
        v45 = 1107296256;
        v36 = &block_descriptor_22_1;
LABEL_20:
        v46 = sub_1B9F7EBBC;
        v47 = v36;
        v41 = _Block_copy(&aBlock);
        [v35 initWithDynamicProvider_];
        _Block_release(v41);

LABEL_26:
        sub_1BA4A4118();
        v30 = v18;
        return MEMORY[0x1BFAF1F10](v30);
      }

      v42 = [objc_opt_self() systemGray5Color];
    }

    else if ((v21 | 8) == 0xC)
    {
      v42 = [objc_opt_self() tertiarySystemBackgroundColor];
    }

    else
    {
      v42 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    }

    v43 = v42;
    goto LABEL_26;
  }

  MEMORY[0x1BFAF1F00]();
  v22 = sub_1BA4A4168();
  if ((*(*(v22 - 8) + 48))(v9, 1, v22))
  {
    v23 = MEMORY[0x1E69DC0D8];
    sub_1BA367CC0(v9, v13, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v13);
    v24 = v9;
    return sub_1B9F444C4(v24, &qword_1EDC6B770, v23);
  }

  v27 = objc_opt_self();
  v28 = &selRef_tertiarySystemBackgroundColor;
  if (((v21 - 4) & 0xF7) != 0)
  {
    v28 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v29 = [v27 *v28];
  sub_1BA4A4118();
  v30 = v9;
  return MEMORY[0x1BFAF1F10](v30);
}

uint64_t (*sub_1BA363138(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA36319C;
}

char *sub_1BA3631B4(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  v10 = *MEMORY[0x1E69E7D40];
  v11 = v4 + qword_1EBBF11A0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = qword_1EBBF11A8;
  type metadata accessor for TitleDetailLabelsView();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v4 + v12) = v13;
  v15 = type metadata accessor for HealthDetailsDemographicsCell(0, *((v10 & v9) + 0x50), *((v10 & v9) + 0x58), v14);
  v20.receiver = v4;
  v20.super_class = v15;
  v16 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = *(*&v16[qword_1EBBF11A8] + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField);
  v18 = v16;
  [v17 setDelegate_];
  sub_1BA363348();
  sub_1BA363974();

  return v18;
}

void sub_1BA363348()
{
  sub_1B9F0D658(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v17 - v3;
  v5 = sub_1BA4A3FB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3F18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D658(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  *(swift_allocObject() + 16) = xmmword_1BA4B5480;
  (*(v11 + 104))(v14, *MEMORY[0x1E69DBF20], v10);
  v15 = sub_1BA4A3F48();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  sub_1BA4A75F8();
  v16 = [v0 contentView];
  [v16 addSubview_];
}

double sub_1BA363694()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = qword_1EBBF11A0;
  swift_beginAccess();
  sub_1BA367CC0(v1 + v3, v20, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v21)
  {
    sub_1B9FCD918();
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    type metadata accessor for HealthDetailsDemographicsItem(0, v4, v5, v6);
    if (swift_dynamicCast())
    {
      v8 = *(*(v1 + qword_1EBBF11A8) + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_titleLabel);

      v9 = sub_1BA4A6758();

      [v8 setText_];

      v10 = *(*(v1 + qword_1EBBF11A8) + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField);
      sub_1BA29518C();
      v11 = sub_1BA4A6758();

      [v10 setText_];

      v12 = *(*(v1 + qword_1EBBF11A8) + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField);
      v14 = type metadata accessor for HealthDetailsDemographicsCell(0, v4, v5, v13);
      v15 = v12;
      WitnessTable = swift_getWitnessTable();
      if (sub_1BA36276C(v14, WitnessTable))
      {
        v17 = HKHealthKeyColor();
      }

      else
      {
        v17 = [objc_opt_self() labelColor];
      }

      v18 = v17;
      [v15 setTextColor_];

      v19 = *(*(v1 + qword_1EBBF11A8) + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField);
      [v19 setUserInteractionEnabled_];

      sub_1BA362880(v14, WitnessTable);
    }
  }

  else
  {
    sub_1B9F444C4(v20, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  return result;
}

void sub_1BA363974()
{
  v37 = *v0;
  v1 = *MEMORY[0x1E69E7D40];
  v2 = [v0 contentView];
  LODWORD(v3) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v3];

  v4 = [v0 contentView];
  LODWORD(v5) = 1148846080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v5];

  v6 = [v0 contentView];
  v7 = [v6 heightAnchor];

  v8 = [v7 constraintGreaterThanOrEqualToConstant_];
  LODWORD(v9) = 1148829696;
  [v8 setPriority_];
  v36 = objc_opt_self();
  sub_1B9F216C8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B79E0;
  v11 = [*(v0 + qword_1EBBF11A8) leadingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:20.0];
  *(v10 + 32) = v14;
  v15 = [*(v0 + qword_1EBBF11A8) topAnchor];
  v16 = [v0 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintGreaterThanOrEqualToAnchor:v17 constant:20.0];
  *(v10 + 40) = v18;
  v19 = [v0 contentView];
  v20 = [v19 bottomAnchor];

  v21 = [*(v0 + qword_1EBBF11A8) bottomAnchor];
  v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21 constant:20.0];

  *(v10 + 48) = v22;
  v23 = [*(v0 + qword_1EBBF11A8) centerYAnchor];
  v24 = [v0 contentView];
  v25 = [v24 centerYAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v10 + 56) = v26;
  v27 = [v0 contentView];
  v28 = [v27 trailingAnchor];

  v29 = [*(v0 + qword_1EBBF11A8) trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:12.0];

  *(v10 + 64) = v30;
  *(v10 + 72) = v8;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v35 = v8;
  v31 = sub_1BA4A6AE8();

  [v36 activateConstraints_];

  v33 = type metadata accessor for HealthDetailsDemographicsCell(0, *((v1 & v37) + 0x50), *((v1 & v37) + 0x58), v32);
  WitnessTable = swift_getWitnessTable();
  sub_1BA362880(v33, WitnessTable);
}

uint64_t sub_1BA363E58(void *a1)
{
  v1 = a1;
  v2 = sub_1BA3656C0(type metadata accessor for HealthDetailsDemographicsCell);

  return v2 & 1;
}

void sub_1BA363EA0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_1BA3657B8(v3, type metadata accessor for HealthDetailsDemographicsCell, type metadata accessor for HealthDetailsDemographicsCell, &unk_1BA4D42AC);
}

uint64_t sub_1BA363F20(void *a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *(v3 + 0x50);
  v5 = sub_1BA4A7AA8();
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v37 - v11;
  v13 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v37 - v16;
  v18 = qword_1EBBF11A0;
  swift_beginAccess();
  sub_1BA367CC0(v1 + v18, v41, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v41[3])
  {
    return sub_1B9F444C4(v41, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1B9FCD918();
  type metadata accessor for HealthDetailsDemographicsItem(0, v4, *(v3 + 88), v19);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v40;
    v22 = [a1 text];
    if (v22)
    {
      v38 = v8;
      v23 = v5;
      v24 = v17;
      v25 = v21;
      v26 = v13;
      v27 = v22;
      v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v30 = v29;

      v13 = v26;
      v21 = v25;
      v17 = v24;
      v5 = v23;
      v8 = v38;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v41[0] = v28;
    v41[1] = v30;
    sub_1B9F216C8(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (swift_dynamicCast())
    {
      v31 = *(v13 + 56);
      v31(v12, 0, 1, v4);
      (*(v13 + 32))(v17, v12, v4);
      (*(v13 + 16))(v8, v17, v4);
      v31(v8, 0, 1, v4);
      v32 = *(*v21 + 152);
      swift_beginAccess();
      (*(v39 + 40))(v21 + v32, v8, v5);
      swift_endAccess();
      v33 = [v1 superview];
      if (v33)
      {
        v34 = v33;
        objc_opt_self();
        v35 = swift_dynamicCastObjCClass();
        if (v35)
        {
          v36 = [v35 collectionViewLayout];

          [v36 invalidateLayout];
        }

        else
        {
        }
      }

      else
      {
      }

      return (*(v13 + 8))(v17, v4);
    }

    else
    {

      (*(v13 + 56))(v12, 1, 1, v4);
      return (*(v39 + 8))(v12, v5);
    }
  }

  return result;
}

void sub_1BA3643D8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1BA363F20(v4);
}

void sub_1BA364458(uint64_t a1)
{
  sub_1B9F444C4(a1 + qword_1EBBF11A0, &qword_1EDC6E1A0, sub_1B9FCD918);
  v2 = *(a1 + qword_1EBBF11A8);
}

uint64_t (*sub_1BA36452C(uint64_t *a1))()
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
  *(v2 + 32) = sub_1BA363138(v2);
  return sub_1B9FCDCF4;
}

uint64_t sub_1BA364604@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1BA367CC0(v2 + v4, a2, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA364694(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  sub_1B9F63E74(a1, v3 + v6);
  v7 = swift_endAccess();
  a3(v7);
  return sub_1B9F444C4(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t (*sub_1BA364720(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA364784;
}

uint64_t sub_1BA36479C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

char *sub_1BA3647E0(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  v10 = *MEMORY[0x1E69E7D40];
  v11 = v4 + qword_1EBBF1230;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = qword_1EBBF1238;
  type metadata accessor for TitleDetailLabelsWithPickerView();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [*(*&v13[OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView] + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField) setUserInteractionEnabled_];
  *(v4 + v12) = v13;
  v15 = type metadata accessor for HealthDetailsDemographicsCellWithPicker(0, *((v10 & v9) + 0x50), *((v10 & v9) + 0x58), v14);
  v19.receiver = v4;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA3649B8();
  sub_1BA364EB8();
  v17 = qword_1EBBF1238;
  [*(*&v16[qword_1EBBF1238] + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_picker) setDelegate_];
  [*(*&v16[v17] + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_picker) setDataSource_];

  return v16;
}

void sub_1BA3649B8()
{
  v1 = [v0 contentView];
  [v1 addSubview_];
}

void sub_1BA364A1C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  v4 = *((*MEMORY[0x1E69E7D40] & v2) + 0x50);
  v5 = sub_1BA4A7AA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v29 - v8;
  v10 = qword_1EBBF1230;
  swift_beginAccess();
  sub_1BA367CC0(v1 + v10, v31, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v32)
  {
    sub_1B9F444C4(v31, &qword_1EDC6E1A0, sub_1B9FCD918);
    return;
  }

  sub_1B9FCD918();
  v11 = *(v3 + 88);
  type metadata accessor for HealthDetailsDemographicsItem(0, v4, v11, v12);
  if (swift_dynamicCast())
  {
    v29 = v6;
    v13 = v30;
    v14 = *(*(*(v1 + qword_1EBBF1238) + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView) + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_titleLabel);

    v15 = sub_1BA4A6758();

    [v14 setText_];

    v16 = *(*(*(v1 + qword_1EBBF1238) + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView) + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField);
    sub_1BA29518C();
    v17 = sub_1BA4A6758();

    [v16 setText_];

    v18 = *(*(*(v1 + qword_1EBBF1238) + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView) + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField);
    v20 = type metadata accessor for HealthDetailsDemographicsCellWithPicker(0, v4, v11, v19);
    v21 = v18;
    WitnessTable = swift_getWitnessTable();
    if (sub_1BA36276C(v20, WitnessTable))
    {
      v23 = HKHealthKeyColor();
    }

    else
    {
      v23 = [objc_opt_self() labelColor];
    }

    v24 = v29;
    v25 = v23;
    [v21 setTextColor_];

    [*(*(v1 + qword_1EBBF1238) + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_picker) reloadAllComponents];
    sub_1BA365290();
    v26 = *(*v13 + 152);
    swift_beginAccess();
    (*(v24 + 16))(v9, v13 + v26, v5);
    if ((*(*(v4 - 8) + 48))(v9, 1, v4) == 1)
    {

      (*(v24 + 8))(v9, v5);
      return;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_13;
    }

    v27 = v30;
    if (v30 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v30 <= 0x7FFFFFFF)
    {
      v28 = *(*(v1 + qword_1EBBF1238) + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_picker);
      [v28 selectRow:v27 inColumn:0 animated:0];

LABEL_13:

      return;
    }

    __break(1u);
  }
}

void sub_1BA364EB8()
{
  v1 = [v0 heightAnchor];
  v25 = [v1 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v2) = 1148829696;
  [v25 setPriority_];
  [v25 setActive_];
  v3 = objc_opt_self();
  sub_1B9F216C8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5880;
  v5 = [*&v0[qword_1EBBF1238] leadingAnchor];
  v6 = [v0 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:20.0];
  *(v4 + 32) = v8;
  v9 = [*&v0[qword_1EBBF1238] topAnchor];
  v10 = [v0 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintGreaterThanOrEqualToAnchor:v11 constant:20.0];
  *(v4 + 40) = v12;
  v13 = [v0 contentView];
  v14 = [v13 bottomAnchor];

  v15 = [*&v0[qword_1EBBF1238] bottomAnchor];
  v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15 constant:20.0];

  *(v4 + 48) = v16;
  v17 = [*&v0[qword_1EBBF1238] centerYAnchor];
  v18 = [v0 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v4 + 56) = v19;
  v20 = [v0 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [*&v0[qword_1EBBF1238] trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:12.0];

  *(v4 + 64) = v23;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v24 = sub_1BA4A6AE8();

  [v3 activateConstraints_];

  sub_1BA365290();
}

uint64_t sub_1BA365290()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1B9F0D658(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v24 = &v23 - v5;
  v6 = sub_1BA4A3FB8();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3F18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + qword_1EBBF1238);
  v16 = sub_1BA3658F4();
  v17 = sub_1BA3667E8();
  [v17 setActive_];

  v19 = type metadata accessor for HealthDetailsDemographicsCellWithPicker(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v18);
  WitnessTable = swift_getWitnessTable();
  if ((sub_1BA36276C(v19, WitnessTable) & 1) == 0)
  {
    sub_1B9F0D658(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1BA4A3FE8();
    *(swift_allocObject() + 16) = xmmword_1BA4B5480;
    (*(v11 + 104))(v14, *MEMORY[0x1E69DBF28], v10);
    v21 = sub_1BA4A3F48();
    (*(*(v21 - 8) + 56))(v24, 1, 1, v21);
    sub_1BA4A3FA8();
    sub_1BA4A3F78();
    (*(v25 + 8))(v9, v26);
    (*(v11 + 8))(v14, v10);
  }

  return sub_1BA4A75F8();
}

uint64_t sub_1BA365678(void *a1)
{
  v1 = a1;
  v2 = sub_1BA3656C0(type metadata accessor for HealthDetailsDemographicsCellWithPicker);

  return v2 & 1;
}

id sub_1BA3656C0(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_isSelected);
}

void sub_1BA365738(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_1BA3657B8(v3, type metadata accessor for HealthDetailsDemographicsCellWithPicker, type metadata accessor for HealthDetailsDemographicsCellWithPicker, &unk_1BA4D4260);
}

uint64_t sub_1BA3657B8(char a1, uint64_t (*a2)(void, void, void), uint64_t (*a3)(void, void, void), uint64_t a4)
{
  v8 = a2(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58));
  v10.receiver = v4;
  v10.super_class = v8;
  objc_msgSendSuper2(&v10, sel_setSelected_, a1 & 1);
  return sub_1BA36585C(a3, a4);
}

uint64_t sub_1BA36585C(uint64_t (*a1)(void, void, void), uint64_t a2)
{
  v3 = a1(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58));
  WitnessTable = swift_getWitnessTable();

  return sub_1BA362BB8(v3, WitnessTable);
}

uint64_t sub_1BA3658F4()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = qword_1EBBF1230;
  swift_beginAccess();
  sub_1BA367CC0(v0 + v2, v7, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v8)
  {
    sub_1B9FCD918();
    type metadata accessor for HealthDetailsDemographicsItem(0, *(v1 + 80), *(v1 + 88), v3);
    if (swift_dynamicCast())
    {
      v4 = *(v6 + *(*v6 + 160));

      if (v4)
      {
        return 1;
      }
    }
  }

  else
  {
    sub_1B9F444C4(v7, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  return 0;
}

uint64_t sub_1BA365A34(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1BA367198();

  return v6;
}

id sub_1BA365A80(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *))
{
  v6 = a3;
  v7 = a1;
  sub_1BA3672C0(a4);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1BA4A6758();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_1BA365B10(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_1BA36765C(a4);
}

id sub_1BA365B94(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BA365C0C(uint64_t a1)
{
  sub_1B9F444C4(a1 + qword_1EBBF1230, &qword_1EDC6E1A0, sub_1B9FCD918);
  v2 = *(a1 + qword_1EBBF1238);
}

uint64_t (*sub_1BA365C90(uint64_t *a1))()
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
  *(v2 + 32) = sub_1BA364720(v2);
  return sub_1B9FCF2C4;
}

id sub_1BA365D5C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setScrollEnabled_];
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor_];

  [v0 setTextContainerInset_];
  [v0 setTextAlignment_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v3 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:0];
  [v0 setFont_];

  v4 = [v0 textContainer];
  [v4 setLineBreakMode_];

  v5 = [v0 textContainer];
  [v5 setHeightTracksTextView_];

  v6 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v6 setAlignment_];
  sub_1B9F0D658(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v8 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v9 = v8;
  v10 = [v1 secondaryLabelColor];
  v11 = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *(inited + 40) = v10;
  v12 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC5E340, 0x1E69DB7C8);
  *(inited + 80) = v6;
  v13 = v12;
  v14 = v6;
  sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628(0);
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v16 = sub_1BA4A6758();
  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v17 = sub_1BA4A6618();

  v18 = [v15 initWithString:v16 attributes:v17];

  [v0 setAttributedPlaceholder_];
  return v0;
}

char *sub_1BA3660EC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_titleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setNumberOfLines_];
  [v10 setAdjustsFontForContentSizeCategory_];
  v11 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:0];
  [v10 setFont_];

  *&v4[v9] = v10;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField;
  *&v4[v12] = sub_1BA365D5C();
  v18.receiver = v4;
  v18.super_class = type metadata accessor for TitleDetailLabelsView();
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_titleLabel];
  v15 = v13;
  [v15 addSubview_];
  [v15 addSubview_];
  sub_1BA3662B0(v16);

  return v15;
}

void sub_1BA3662B0(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_titleLabel];
  LODWORD(a1) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:a1];
  LODWORD(v3) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v3];
  v4 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField];
  LODWORD(v5) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v5];
  v34 = objc_opt_self();
  sub_1B9F216C8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4C27B0;
  v7 = [v2 leadingAnchor];
  v8 = [v1 &selRef__totalDistance + 1];
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [v2 topAnchor];
  v11 = [v1 topAnchor];
  v12 = [v10 constraintGreaterThanOrEqualToAnchor_];

  *(v6 + 40) = v12;
  v13 = [v1 bottomAnchor];
  v14 = [v2 bottomAnchor];
  v15 = [v13 constraintGreaterThanOrEqualToAnchor_];

  *(v6 + 48) = v15;
  v16 = [v2 centerYAnchor];
  v17 = [v1 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v6 + 56) = v18;
  v19 = [v4 leadingAnchor];
  v20 = [v2 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v6 + 64) = v21;
  v22 = [v4 topAnchor];
  v23 = [v1 topAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v6 + 72) = v24;
  v25 = [v4 trailingAnchor];
  v26 = [v1 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v6 + 80) = v27;
  v28 = [v4 bottomAnchor];
  v29 = [v1 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v6 + 88) = v30;
  v31 = [v4 centerYAnchor];
  v32 = [v1 centerYAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v6 + 96) = v33;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v35 = sub_1BA4A6AE8();

  [v34 activateConstraints_];
}

id sub_1BA3667E8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView____lazy_storage___pickerHeightZeroConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView____lazy_storage___pickerHeightZeroConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView____lazy_storage___pickerHeightZeroConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_picker) heightAnchor];
    v5 = [v4 constraintEqualToConstant_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_1BA366890(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView;
  type metadata accessor for TitleDetailLabelsView();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_picker;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCD78]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView____lazy_storage___pickerHeightZeroConstraint] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TitleDetailLabelsWithPickerView();
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView];
  v15 = v13;
  [v15 addSubview_];
  [v15 addSubview_];
  sub_1BA366A14();

  return v15;
}

void sub_1BA366A14()
{
  v25 = objc_opt_self();
  sub_1B9F216C8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4C27A0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView];
  v3 = [v2 leadingAnchor];
  v4 = [v0 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = [v2 topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v1 + 40) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v1 + 48) = v11;
  v12 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_picker];
  v13 = [v12 topAnchor];
  v14 = [v2 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v1 + 56) = v15;
  v16 = [v12 leadingAnchor];
  v17 = [v0 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v1 + 64) = v18;
  v19 = [v12 trailingAnchor];
  v20 = [v0 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v1 + 72) = v21;
  v22 = [v12 bottomAnchor];
  v23 = [v0 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v1 + 80) = v24;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v26 = sub_1BA4A6AE8();

  [v25 activateConstraints_];
}

id sub_1BA366DBC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_1BA366E74(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_1BA36276C(a2, a3))
  {
    (*(a3 + 32))(v12, a2, a3);
    if (v12[3])
    {
      sub_1B9FCD918();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      type metadata accessor for HealthDetailsDemographicsItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
      if (swift_dynamicCast())
      {
        type metadata accessor for HealthDetailsViewController();
        if (swift_dynamicCastClass())
        {
          v10 = a1;
          _s18HealthExperienceUI0A21DetailsViewControllerC10dataSource3forAA021CompoundSectionedDataH0CSo06UIViewF0C_tF_0();

          sub_1BA2F0D34(v11);
        }
      }
    }

    else
    {
      sub_1B9F444C4(v12, &qword_1EDC6E1A0, sub_1B9FCD918);
    }
  }

  return result;
}

void sub_1BA367008()
{
  v1 = v0 + qword_1EBBF11A0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = qword_1EBBF11A8;
  type metadata accessor for TitleDetailLabelsView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA3670BC()
{
  v1 = v0 + qword_1EBBF1230;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = qword_1EBBF1238;
  type metadata accessor for TitleDetailLabelsWithPickerView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [*(*&v3[OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView] + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField) setUserInteractionEnabled_];
  *(v0 + v2) = v3;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA367198()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = qword_1EBBF1230;
  swift_beginAccess();
  sub_1BA367CC0(v0 + v2, v8, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v9)
  {
    sub_1B9F444C4(v8, &qword_1EDC6E1A0, sub_1B9FCD918);
    return 0;
  }

  sub_1B9FCD918();
  type metadata accessor for HealthDetailsDemographicsItem(0, *(v1 + 80), *(v1 + 88), v3);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v7 + 48);
  v5 = *(v7 + 56);

  if (v5)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1BA3672C0(uint64_t (*a1)(char *))
{
  v24[0] = a1;
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  v3 = *(v2 + 0x50);
  v4 = sub_1BA4A7AA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v24 - v11;
  v13 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v24 - v16;
  v18 = qword_1EBBF1230;
  swift_beginAccess();
  sub_1BA367CC0(v1 + v18, v25, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v25[3])
  {
    sub_1B9FCD918();
    type metadata accessor for HealthDetailsDemographicsItem(0, v3, *(v2 + 88), v19);
    if (swift_dynamicCast())
    {
      v20 = v24[1];
      v25[0] = v24[0];
      if (swift_dynamicCast())
      {
        v21 = *(v13 + 56);
        v21(v12, 0, 1, v3);
        (*(v13 + 32))(v17, v12, v3);
        v24[0] = *(v20 + 64);
        (*(v13 + 16))(v8, v17, v3);
        v21(v8, 0, 1, v3);
        v22 = (v24[0])(v8);
        (*(v5 + 8))(v8, v4);
        (*(v13 + 8))(v17, v3);

        return v22;
      }

      (*(v13 + 56))(v12, 1, 1, v3);
      (*(v5 + 8))(v12, v4);
    }
  }

  else
  {
    sub_1B9F444C4(v25, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  return 0;
}

void sub_1BA36765C(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *(v3 + 0x50);
  v5 = sub_1BA4A7AA8();
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v28 - v11;
  v13 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v28 - v16;
  v18 = qword_1EBBF1230;
  swift_beginAccess();
  sub_1BA367CC0(v1 + v18, v34, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v34[3])
  {
    sub_1B9FCD918();
    type metadata accessor for HealthDetailsDemographicsItem(0, v4, *(v3 + 88), v19);
    if (swift_dynamicCast())
    {
      v20 = v33;
      v34[0] = a1;
      if (swift_dynamicCast())
      {
        v21 = *(v13 + 56);
        v21(v12, 0, 1, v4);
        v22 = *(v13 + 32);
        v29 = v21;
        v30 = v22;
        v31 = v13 + 32;
        v22(v17, v12, v4);
        v23 = *(*(*(v1 + qword_1EBBF1238) + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView) + OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField);
        v28 = *(v20 + 8);
        (*(v13 + 16))(v8, v17, v4);
        v21(v8, 0, 1, v4);
        v24 = v23;
        v28(v8);
        v25 = v32;
        (*(v32 + 8))(v8, v5);
        v26 = sub_1BA4A6758();

        [v24 setText_];

        v30(v8, v17, v4);
        v29(v8, 0, 1, v4);
        v27 = *(*v20 + 152);
        swift_beginAccess();
        (*(v25 + 40))(&v20[v27], v8, v5);
        swift_endAccess();
      }

      else
      {

        (*(v13 + 56))(v12, 1, 1, v4);
        (*(v32 + 8))(v12, v5);
      }
    }
  }

  else
  {
    sub_1B9F444C4(v34, &qword_1EDC6E1A0, sub_1B9FCD918);
  }
}

void sub_1BA367AC4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_titleLabel;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setNumberOfLines_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v3 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:0];
  [v2 setFont_];

  *(v0 + v1) = v2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI21TitleDetailLabelsView_detailTextField;
  *(v0 + v4) = sub_1BA365D5C();
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA367BE4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_titleDetailLabelsView;
  type metadata accessor for TitleDetailLabelsView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView_picker;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCD78]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31TitleDetailLabelsWithPickerView____lazy_storage___pickerHeightZeroConstraint) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA367CC0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F0D658(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double sub_1BA367D58(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E48();
  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v33 = a2;
    v17 = v16;
    *&v35[0] = v16;
    *v15 = 136446210;
    *&v37[0] = v6;
    swift_getMetatypeMetadata();
    v18 = sub_1BA4A6808();
    v20 = sub_1B9F0B82C(v18, v19, v35);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1B9F07000, v12, v13, "[%{public}s]: Tapped end sharing relationship", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v21 = v17;
    a2 = v33;
    MEMORY[0x1BFAF43A0](v21, -1, -1);
    v22 = v15;
    a1 = v34;
    MEMORY[0x1BFAF43A0](v22, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v23 = [v3[25] profileIdentifier];
  sub_1BA071040((v3 + 26), v35);
  v24 = *(v3 + 19);
  v37[2] = *(v3 + 17);
  v37[3] = v24;
  v25 = *(v3 + 23);
  v37[4] = *(v3 + 21);
  v37[5] = v25;
  v26 = *(v3 + 15);
  v37[0] = *(v3 + 13);
  v37[1] = v26;
  type metadata accessor for EndSharingRelationshipFlow();
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  v28 = v35[1];
  *(v27 + 24) = v35[0];
  *(v27 + 40) = v28;
  *(v27 + 56) = v36;
  v29 = *(v3 + 19);
  *(v27 + 96) = *(v3 + 17);
  *(v27 + 112) = v29;
  v30 = *(v3 + 23);
  *(v27 + 128) = *(v3 + 21);
  *(v27 + 144) = v30;
  v31 = *(v3 + 15);
  *(v27 + 64) = *(v3 + 13);
  *(v27 + 80) = v31;
  v3[31] = v27;
  sub_1BA0711AC(v37, v35);

  sub_1BA15E280(a2, a1);

  return result;
}

id *sub_1BA368044()
{

  sub_1BA071124((v0 + 26));

  return v0;
}

uint64_t sub_1BA368100()
{
  sub_1BA368044();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA3681A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA36820C(uint64_t a1)
{
  result = sub_1BA3682C8(&qword_1EBBF12F0, &unk_1BA4D43F4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA368250(uint64_t a1)
{
  result = sub_1BA3682C8(&qword_1EBBF12F8, &unk_1BA4D437C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA3682C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EndSharingRelationshipItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA368308(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007265646165;
  v3 = 0x686E6F6974636573;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x666E6F6974636573;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 2)
    {
      v6 = 0xED00007265746F6FLL;
    }

    else
    {
      v6 = 0x80000001BA4E1560;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0x686E6F6974636573;
    }

    if (v4)
    {
      v6 = 0x80000001BA4E1530;
    }

    else
    {
      v6 = 0xED00007265646165;
    }
  }

  v7 = 0x666E6F6974636573;
  v8 = 0x80000001BA4E1560;
  if (a2 == 2)
  {
    v8 = 0xED00007265746F6FLL;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v3 = 0xD000000000000013;
    v2 = 0x80000001BA4E1530;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BA4A8338();
  }

  return v11 & 1;
}

uint64_t sub_1BA36846C(char a1, char a2)
{
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0, 0x1E696AEC0);
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = sub_1BA4A77C8("healthCanSendYouUpdates", 23, 2);
    }

    else
    {
      v4 = sub_1BA4A77C8("inviationAccepted", 17, 2);
    }
  }

  else
  {
    v4 = sub_1BA4A77C8("userWantsToShare", 16, 2);
  }

  v5 = v4;
  if (a2)
  {
    if (a2 == 1)
    {
      v6 = sub_1BA4A77C8("healthCanSendYouUpdates", 23, 2);
    }

    else
    {
      v6 = sub_1BA4A77C8("inviationAccepted", 17, 2);
    }
  }

  else
  {
    v6 = sub_1BA4A77C8("userWantsToShare", 16, 2);
  }

  v7 = v6;
  v8 = sub_1BA4A7798();

  return v8 & 1;
}

uint64_t sub_1BA368560(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007472656C41;
  v3 = 0xD000000000000015;
  v4 = 0x207972616D6D7553;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0x207972616D6D7553;
    }

    else
    {
      v6 = 0xD000000000000015;
    }

    if (v5 == 2)
    {
      v7 = 0xED00007472656C41;
    }

    else
    {
      v7 = 0x80000001BA4E1460;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000015;
    }

    if (v5)
    {
      v7 = 0x80000001BA4E1430;
    }

    else
    {
      v7 = 0x80000001BA4E1410;
    }
  }

  if (a2 != 2)
  {
    v4 = 0xD000000000000015;
    v2 = 0x80000001BA4E1460;
  }

  v8 = 0x80000001BA4E1430;
  if (a2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v8 = 0x80000001BA4E1410;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BA4A8338();
  }

  return v11 & 1;
}

uint64_t sub_1BA36868C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x776F6C6C41;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x73676E6974746553;
    }

    else
    {
      v4 = 0x664F20657661654CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE900000000000066;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x4120746F4E206F44;
    }

    else
    {
      v4 = 0x776F6C6C41;
    }

    if (v3)
    {
      v5 = 0xEC000000776F6C6CLL;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x73676E6974746553;
  if (a2 != 2)
  {
    v8 = 0x664F20657661654CLL;
    v7 = 0xE900000000000066;
  }

  if (a2)
  {
    v2 = 0x4120746F4E206F44;
    v6 = 0xEC000000776F6C6CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BA4A8338();
  }

  return v11 & 1;
}

uint64_t sub_1BA3687E4(char a1, char a2)
{
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0, 0x1E696AEC0);
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = sub_1BA4A77C8("sharingTab", 10, 2);
    }

    else
    {
      v4 = sub_1BA4A77C8("requestLink", 11, 2);
    }
  }

  else
  {
    v4 = sub_1BA4A77C8("summaryTab", 10, 2);
  }

  v5 = v4;
  if (a2)
  {
    if (a2 == 1)
    {
      v6 = sub_1BA4A77C8("sharingTab", 10, 2);
    }

    else
    {
      v6 = sub_1BA4A77C8("requestLink", 11, 2);
    }
  }

  else
  {
    v6 = sub_1BA4A77C8("summaryTab", 10, 2);
  }

  v7 = v6;
  v8 = sub_1BA4A7798();

  return v8 & 1;
}

uint64_t sub_1BA3688D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x7470697263736564;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v7 = 0xD000000000000019;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (v4)
    {
      v8 = 0x80000001BA4E1080;
    }

    else
    {
      v8 = 0x80000001BA4E1060;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x737574617473;
    if (a1 == 3)
    {
      v6 = 0x7470697263736564;
      v5 = 0xEB000000006E6F69;
    }

    if (a1 == 2)
    {
      v7 = 0xD00000000000001ALL;
    }

    else
    {
      v7 = v6;
    }

    if (v4 == 2)
    {
      v8 = 0x80000001BA4E10A0;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = 0xD000000000000019;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (a2)
    {
      v2 = 0x80000001BA4E1080;
    }

    else
    {
      v2 = 0x80000001BA4E1060;
    }
  }

  else
  {
    if (a2 == 2)
    {
      v2 = 0x80000001BA4E10A0;
      if (v7 != 0xD00000000000001ALL)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    if (a2 != 3)
    {
      v2 = 0xE600000000000000;
      if (v7 != 0x737574617473)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }
  }

  if (v7 != v3)
  {
LABEL_31:
    v9 = sub_1BA4A8338();
    goto LABEL_32;
  }

LABEL_28:
  if (v8 != v2)
  {
    goto LABEL_31;
  }

  v9 = 1;
LABEL_32:

  return v9 & 1;
}

uint64_t sub_1BA368A60(unsigned __int8 a1, unsigned __int8 a2)
{
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0, 0x1E696AEC0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = "accept";
    }

    else
    {
      v5 = "invite";
    }

    v4 = sub_1BA4A77C8(v5, 6, 2);
  }

  else if (a1 == 2)
  {
    v4 = sub_1BA4A77C8("decline", 7, 2);
  }

  else if (a1 == 3)
  {
    v4 = sub_1BA4A77C8("modifyPending", 13, 2);
  }

  else
  {
    v4 = sub_1BA4A77C8("modifyAccepted", 14, 2);
  }

  v6 = v4;
  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = "accept";
    }

    else
    {
      v8 = "invite";
    }

    v7 = sub_1BA4A77C8(v8, 6, 2);
  }

  else if (a2 == 2)
  {
    v7 = sub_1BA4A77C8("decline", 7, 2);
  }

  else if (a2 == 3)
  {
    v7 = sub_1BA4A77C8("modifyPending", 13, 2);
  }

  else
  {
    v7 = sub_1BA4A77C8("modifyAccepted", 14, 2);
  }

  v9 = v7;
  v10 = sub_1BA4A7798();

  return v10 & 1;
}

uint64_t sub_1BA368BAC(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
    v3 = sub_1BA4A7758();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (v3)
    {
      goto LABEL_8;
    }

LABEL_12:
    v7 = 1;
    return v7 & 1;
  }

  v3 = a1;
  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
  v4 = sub_1BA4A7758();
  v5 = v4;
  if (!v3)
  {
    if (v4)
    {
      v7 = 0;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!v4)
  {
LABEL_8:
    v7 = 0;
    v5 = v3;
    goto LABEL_11;
  }

  v6 = v3;
  v5 = v5;
  v7 = sub_1BA4A7798();

LABEL_11:
  return v7 & 1;
}

uint64_t sub_1BA368CBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E696F70;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1702125924;
    }

    else
    {
      v4 = 0x6968747972657665;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEA0000000000676ELL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x4C65676172657661;
    }

    else
    {
      v4 = 0x746E696F70;
    }

    if (v3)
    {
      v5 = 0xEB00000000656E69;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE400000000000000;
  v8 = 1702125924;
  if (a2 != 2)
  {
    v8 = 0x6968747972657665;
    v7 = 0xEA0000000000676ELL;
  }

  if (a2)
  {
    v2 = 0x4C65676172657661;
    v6 = 0xEB00000000656E69;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BA4A8338();
  }

  return v11 & 1;
}

void sub_1BA368E04(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a3;
  v25 = a1;
  v23 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v26 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - v10;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      sub_1B9F63EF0(*(a2 + 48) + *(v26 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v11, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1B9F6307C(v11, v7, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v18 = v25(v7);
      if (v3)
      {
        sub_1B9F617A8(v7, type metadata accessor for SummarySharingSelectableDataTypeItem);

        return;
      }

      if (v18)
      {
        break;
      }

      v14 &= v14 - 1;
      sub_1B9F617A8(v7, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v16 = v17;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v21 = v24;
    sub_1B9F6307C(v7, v24, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v20 = v21;
    v19 = 0;
LABEL_13:
    (*(v26 + 56))(v20, v19, 1, v23);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        v19 = 1;
        v20 = v24;
        goto LABEL_13;
      }

      v14 = *(a2 + 56 + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1BA369090(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BA4A7C88();
    sub_1BA4A2EE8();
    sub_1B9F48334(&qword_1EBBF01E0, MEMORY[0x1E69A3368], MEMORY[0x1E69A3370]);
    sub_1BA4A6DA8();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_1BA4A7CF8())
        {
          goto LABEL_20;
        }

        sub_1BA4A2EE8();
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_1B9F52E48(v20);
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_20:
      sub_1B9F52E48(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BA3692EC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SwiftChartPoint(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_1B9F63EF0(v13, v11, type metadata accessor for SwiftChartPoint);
      v15 = a1(v11);
      if (v3)
      {
        return sub_1B9F617A8(v11, type metadata accessor for SwiftChartPoint);
      }

      if (v15)
      {
        break;
      }

      sub_1B9F617A8(v11, type metadata accessor for SwiftChartPoint);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_1B9F6307C(v11, v19, type metadata accessor for SwiftChartPoint);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t SnidgetSwiftChartView.ChartParameters.init(dateInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA4A0F98();
  v5 = v4;
  v6 = sub_1BA4A0FA8();
  result = (*(*(v6 - 8) + 8))(a1, v6);
  v8 = 4.0;
  if (v5 > 86400.0)
  {
    v8 = 6.0;
  }

  v9 = vdup_n_s32(v5 > 86400.0);
  v10.i64[0] = v9.u32[0];
  v10.i64[1] = v9.u32[1];
  v11 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v10, 0x3FuLL)), xmmword_1BA4D3280, xmmword_1BA4D3270);
  *a2 = v11.i64[0];
  *(a2 + 8) = v11;
  *(a2 + 24) = v8;
  *(a2 + 32) = 0x4000000000000000;
  return result;
}

uint64_t SnidgetSwiftChartView.$viewModel.getter()
{
  type metadata accessor for SnidgetSwiftChartViewModel(0);
  sub_1B9F48334(&qword_1EDC6C438, type metadata accessor for SnidgetSwiftChartViewModel, &protocol conformance descriptor for SnidgetSwiftChartViewModel);

  return sub_1BA4A5358();
}

uint64_t sub_1BA369660()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v8 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F84D1C(v7, v6, 0);
    (*(v2 + 8))(v5, v1);
    return v10;
  }

  return v7;
}

id sub_1BA3697C4()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {

    return v6;
  }

  else
  {
    v10[0] = *(v0 + 48);

    sub_1BA4A6FB8();
    v8 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    v9 = sub_1BA232F2C(v10[0], 0);
    (*(v2 + 8))(v5, v1, v9);
    return v10[1];
  }
}

uint64_t sub_1BA369930@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A5718();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F51630(0, &qword_1EDC6B6E8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for SnidgetSwiftChartView(0);
  sub_1BA36F574(v1 + *(v12 + 32), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BA4A51B8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1BA4A6FB8();
    v15 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

void SnidgetSwiftChartView.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  v4 = *(type metadata accessor for SnidgetSwiftChartView(0) + 32);
  *(a2 + v4) = swift_getKeyPath();
  sub_1B9F51630(0, &qword_1EDC6B6E8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SnidgetSwiftChartViewModel(0);
  sub_1B9F48334(&qword_1EDC6C438, type metadata accessor for SnidgetSwiftChartViewModel, &protocol conformance descriptor for SnidgetSwiftChartViewModel);

  *a2 = sub_1BA4A5348();
  *(a2 + 8) = v5;

  *(a2 + 16) = v3;
}

uint64_t sub_1BA369D68@<X0>(uint64_t a1@<X8>)
{
  v119 = a1;
  v120 = sub_1BA4A6418();
  v118 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v2);
  v117 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1BA4A51B8();
  v121 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v4);
  v115 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v114 = &v89 - v8;
  sub_1B9F7CB04();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v111 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A18A8();
  v89 = v12;
  v127 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v100 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7B6A0(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v98 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7CBC0(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1BA4A1728();
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v22);
  v122 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v89 - v26;
  sub_1B9F569EC(0, &qword_1EDC5F778, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v103 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v89 - v33;
  v108 = sub_1BA4A4A48();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v35);
  v104 = &v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36E05C(0);
  v124 = v37;
  v109 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v38);
  v106 = &v89 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36E0E0(0);
  v126 = v40;
  v110 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v41);
  v123 = &v89 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36E1A8(0);
  v113 = v43;
  v112 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v44);
  v125 = &v89 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A57F8();
  sub_1BA4A0F88();
  v101 = type metadata accessor for SnidgetSwiftChartView.AverageLine(0);
  v46 = *(v101 + 28);
  v47 = *(v127 + 56);
  v95 = v127 + 56;
  v94 = v47;
  v47(v21, 1, 1, v12);
  v102 = v34;
  v48 = v98;
  sub_1BA4A4978();

  v105 = v21;
  sub_1B9F617A8(v21, sub_1B9F7CBC0);
  v49 = v97;
  v50 = *(v97 + 8);
  v51 = v99;
  v50(v27, v99);
  v91 = sub_1BA4A57F8();
  v93 = v52;
  v90 = v53;
  v92 = v54;
  v55 = v100;
  sub_1BA4A1878();
  sub_1BA4A0F58();
  v96 = v46;
  sub_1BA4A1848();
  v50(v27, v51);
  v56 = v55;
  v57 = v89;
  (*(v127 + 8))(v56);
  v58 = *(v49 + 48);
  v59 = v58(v48, 1, v51);
  v127 = v1;
  if (v59 == 1)
  {
    sub_1BA4A0F58();
    if (v58(v48, 1, v51) != 1)
    {
      sub_1B9F617A8(v48, sub_1B9F7B6A0);
    }
  }

  else
  {
    (*(v49 + 32))(v122, v48, v51);
  }

  v60 = v105;
  v94(v105, 1, 1, v57);
  v61 = v127;
  v62 = v122;
  sub_1BA4A4978();

  sub_1B9F617A8(v60, sub_1B9F7CBC0);
  v50(v62, v51);
  sub_1BA4A57F8();
  v63 = v101;
  v133 = *(v61 + *(v101 + 20));
  sub_1BA4A4988();

  v64 = v104;
  sub_1BA4A4A38();
  sub_1BA4A51F8();
  v65 = MEMORY[0x1E695B2B8];
  v66 = v106;
  v67 = v108;
  sub_1BA4A4968();
  sub_1BA36E2A8(&v133);
  (*(v107 + 8))(v64, v67);
  v132 = *(v61 + *(v63 + 24));
  v128 = v67;
  v129 = v65;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = MEMORY[0x1E69815C0];
  v70 = v124;
  sub_1BA4A4918();
  (*(v109 + 8))(v66, v70);
  v71 = *(v63 + 36);
  v72 = *(v121 + 16);
  v73 = v121;
  v74 = v114;
  v75 = v116;
  v72(v114, v61 + v71, v116);
  v76 = *(v73 + 88);
  if (v76(v74, v75) != *MEMORY[0x1E697DBA8])
  {
    (*(v73 + 8))(v74, v75);
  }

  v128 = v124;
  v129 = v69;
  v130 = OpaqueTypeConformance2;
  v131 = MEMORY[0x1E6981568];
  v77 = swift_getOpaqueTypeConformance2();
  v78 = v126;
  v79 = v123;
  sub_1BA4A4948();
  (*(v110 + 8))(v79, v78);
  v80 = v115;
  v72(v115, v127 + v71, v75);
  v81 = v76(v80, v75);
  v82 = v118;
  v83 = *(v118 + 104);
  v84 = v117;
  v85 = v120;
  if (v81 == *MEMORY[0x1E697DBB8])
  {
    v83(v117, *MEMORY[0x1E6981DA0], v120);
  }

  else
  {
    v83(v117, *MEMORY[0x1E6981DF0], v120);
    (*(v121 + 8))(v80, v75);
  }

  v128 = v126;
  v129 = v77;
  swift_getOpaqueTypeConformance2();
  v86 = v113;
  v87 = v125;
  sub_1BA4A4958();
  (*(v82 + 8))(v84, v85);
  return (*(v112 + 8))(v87, v86);
}

uint64_t sub_1BA36AAC4@<X0>(uint64_t a1@<X8>)
{
  v169 = a1;
  sub_1BA36E2FC(0);
  v168 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v167 = v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36E63C(0);
  v156 = v5;
  v141 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v140 = v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7CB04();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v138 = v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7CBC0(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v127 = v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F569EC(0, &qword_1EDC5F778, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v128 = v124 - v16;
  v135 = sub_1BA4A4A68();
  v132 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135, v17);
  v129 = v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36EA8C(0, &qword_1EDC5F788, MEMORY[0x1E695B2F0], MEMORY[0x1E695B2E0]);
  v136 = v19;
  v133 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v130 = v124 - v22;
  sub_1BA36E958(0, v21);
  v139 = v23;
  v137 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v134 = v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36E7D8(0, v25);
  v147 = v27;
  v146 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v131 = v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36EB68(0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v144 = v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for SwiftChartPoint(0);
  v143 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148, v33);
  v149 = v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36E7A4(0);
  v164 = *(v35 - 8);
  v165 = v35;
  MEMORY[0x1EEE9AC00](v35, v36);
  v145 = v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7B6A0(0);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v150 = v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BA4A1728();
  v158 = *(v41 - 8);
  v159 = v41;
  MEMORY[0x1EEE9AC00](v41, v42);
  v126 = v124 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v151 = v124 - v46;
  sub_1BA36E770(0);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v166 = v124 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v163 = v124 - v52;
  v53 = type metadata accessor for SnidgetSwiftChartView.LineChartMarks(0);
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53, v56);
  sub_1B9F89A30(0, &qword_1EDC5EA20, sub_1BA36E388);
  v161 = *(v57 - 8);
  v162 = v57;
  MEMORY[0x1EEE9AC00](v57, v58);
  v160 = v124 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = v124 - v62;
  v64 = v1;
  v152 = v1;
  v65 = *v1;
  v174 = v65;
  sub_1B9F63EF0(v64, v124 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SnidgetSwiftChartView.LineChartMarks);
  v66 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v67 = swift_allocObject();
  sub_1B9F6307C(v124 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v67 + v66, type metadata accessor for SnidgetSwiftChartView.LineChartMarks);
  sub_1B9F53A5C(0);
  v155 = v68;
  sub_1BA36E388(0, v69);
  v154 = v70;
  v153 = sub_1B9F48334(&qword_1EDC5E6D8, sub_1B9F53A5C, MEMORY[0x1E69E6338]);
  sub_1BA36E508(255, v71);
  v73 = v72;
  v74 = MEMORY[0x1E695B2A0];
  sub_1BA36EA8C(255, &qword_1EDC5F798, MEMORY[0x1E695B2A8], MEMORY[0x1E695B2A0]);
  v76 = v75;
  v77 = sub_1BA4A4A18();
  v78 = sub_1BA36E6C8();
  v79 = sub_1BA36E71C();
  v142 = v65;

  v170 = MEMORY[0x1E69817E8];
  v171 = v78;
  v124[1] = v78;
  v124[0] = v79;
  v172 = v79;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v170 = v77;
  v81 = v156;
  v171 = v156;
  v172 = v74;
  v125 = OpaqueTypeConformance2;
  v173 = OpaqueTypeConformance2;
  v82 = swift_getOpaqueTypeConformance2();
  v170 = v76;
  v171 = v82;
  v83 = v152;
  v84 = swift_getOpaqueTypeConformance2();
  v170 = v73;
  v171 = MEMORY[0x1E69815C0];
  v172 = v84;
  v173 = MEMORY[0x1E6981568];
  swift_getOpaqueTypeConformance2();
  sub_1B9F48334(&qword_1EDC68E98, type metadata accessor for SwiftChartPoint, &protocol conformance descriptor for SwiftChartPoint);
  v157 = v63;
  sub_1BA4A62E8();
  v155 = v53;
  v85 = v83 + *(v53 + 20);
  v86 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  if (*(v85 + *(v86 + 20)) == 2)
  {

    v88 = v158;
    v87 = v159;
  }

  else
  {
    v88 = v158;
    v87 = v159;
    v89 = sub_1BA4A8338();

    if ((v89 & 1) == 0)
    {
LABEL_6:
      v91 = v163;
      (*(v164 + 56))(v163, 1, 1, v165);
      goto LABEL_11;
    }
  }

  v90 = v150;
  sub_1B9F63EF0(v85 + *(v86 + 24), v150, sub_1B9F7B6A0);
  if ((*(v88 + 48))(v90, 1, v87) == 1)
  {
    sub_1B9F617A8(v90, sub_1B9F7B6A0);
    goto LABEL_6;
  }

  v92 = (*(v88 + 32))(v151, v90, v87);
  MEMORY[0x1EEE9AC00](v92, v93);
  v94 = v144;
  sub_1BA3692EC(sub_1BA36EF2C, v142, v144);
  if ((*(v143 + 48))(v94, 1, v148) == 1)
  {
    sub_1B9F617A8(v94, sub_1BA36EB68);
    v95 = 1;
    v96 = v147;
    v97 = v146;
    v91 = v163;
    v98 = v145;
  }

  else
  {
    sub_1B9F6307C(v94, v149, type metadata accessor for SwiftChartPoint);
    v159 = sub_1BA4A57F8();
    v99 = v126;
    sub_1BA4A0F88();
    v100 = sub_1BA4A18A8();
    v101 = v127;
    (*(*(v100 - 8) + 56))(v127, 1, 1, v100);
    sub_1BA4A4978();

    sub_1B9F617A8(v101, sub_1B9F7CBC0);
    (*(v88 + 8))(v99, v87);
    sub_1BA4A57F8();
    v170 = *(v149 + *(v148 + 24));
    sub_1BA4A4988();

    v102 = v129;
    sub_1BA4A4A58();
    v103 = v140;
    sub_1BA4A49B8();
    v104 = v130;
    v105 = v135;
    v106 = v125;
    sub_1BA4A4938();
    (*(v141 + 8))(v103, v81);
    (*(v132 + 8))(v102, v105);
    v170 = v105;
    v171 = v81;
    v172 = MEMORY[0x1E695B2E0];
    v173 = v106;
    v107 = swift_getOpaqueTypeConformance2();
    v108 = v134;
    v109 = v136;
    sub_1BA4A4908();
    (*(v133 + 8))(v104, v109);
    v174 = *(v83 + *(v155 + 28));
    v170 = v109;
    v171 = v107;
    swift_getOpaqueTypeConformance2();
    v110 = v131;
    v111 = v139;
    sub_1BA4A4918();
    (*(v137 + 8))(v108, v111);
    sub_1B9F617A8(v149, type metadata accessor for SwiftChartPoint);
    v97 = v146;
    v98 = v145;
    v96 = v147;
    (*(v146 + 32))(v145, v110, v147);
    v95 = 0;
    v91 = v163;
  }

  (*(v97 + 56))(v98, v95, 1, v96);
  sub_1B9F643C4(v98, v91, sub_1BA36E7A4);
  (*(v164 + 56))(v91, 0, 1, v165);
  (*(v88 + 8))(v151, v87);
LABEL_11:
  v113 = v160;
  v112 = v161;
  v114 = *(v161 + 16);
  v115 = v157;
  v116 = v162;
  v114(v160, v157, v162);
  v117 = v166;
  sub_1B9F64138(v91, v166, sub_1BA36E770);
  sub_1BA36EBC8();
  v118 = v167;
  v114(v167, v113, v116);
  sub_1B9F58348(&qword_1EDC5F7C0, sub_1BA36E770, sub_1BA36ED88, MEMORY[0x1E695B488]);
  v119 = v168;
  v120 = *(v168 + 48);
  sub_1B9F64138(v117, &v118[v120], sub_1BA36E770);
  v121 = v169;
  (*(v112 + 32))(v169, v118, v116);
  sub_1B9F643C4(&v118[v120], v121 + *(v119 + 48), sub_1BA36E770);
  sub_1B9F6442C(v91, sub_1BA36E770);
  v122 = *(v112 + 8);
  v122(v115, v116);
  sub_1B9F6442C(v117, sub_1BA36E770);
  return (v122)(v113, v116);
}

uint64_t sub_1BA36BDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v54 = a1;
  v71 = a3;
  sub_1BA36E63C(0);
  v5 = *(v4 - 8);
  v67 = v4;
  v68 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v66 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7CB04();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v65 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7CBC0(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A1728();
  v59 = *(v15 - 8);
  v60 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F569EC(0, &qword_1EDC5F778, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v61 = sub_1BA4A4A18();
  v63 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v21);
  v56 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36EA8C(0, &qword_1EDC5F798, MEMORY[0x1E695B2A8], MEMORY[0x1E695B2A0]);
  v62 = v23;
  v64 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v58 = &v53 - v26;
  sub_1BA36E508(0, v25);
  v69 = *(v27 - 8);
  v70 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v57 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A57F8();
  v30 = type metadata accessor for SwiftChartPoint(0);
  sub_1BA4A0F88();
  v55 = type metadata accessor for SnidgetSwiftChartView.LineChartMarks(0);
  v31 = sub_1BA4A18A8();
  (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
  sub_1BA4A4978();

  sub_1B9F617A8(v14, sub_1B9F7CBC0);
  (*(v59 + 8))(v18, v60);
  sub_1BA4A57F8();
  v74 = *(v54 + *(v30 + 24));
  sub_1BA4A4988();

  v32 = v56;
  sub_1BA4A4A08();
  v33 = v55;
  v34 = sub_1BA36E6C8();
  v35 = sub_1BA36E71C();
  v36 = MEMORY[0x1E69817E8];
  v37 = v66;
  sub_1BA4A49B8();
  v74 = v36;
  v75 = v34;
  v76 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v58;
  v40 = v61;
  v41 = v67;
  v42 = MEMORY[0x1E695B2A0];
  sub_1BA4A4938();
  (*(v68 + 8))(v37, v41);
  v43 = v57;
  (*(v63 + 8))(v32, v40);
  v74 = v40;
  v75 = v41;
  v76 = v42;
  v77 = OpaqueTypeConformance2;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v62;
  sub_1BA4A4908();
  (*(v64 + 8))(v39, v45);
  v46 = v72;
  v47 = v72 + *(v33 + 20);
  if (*(v47 + *(type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0) + 20)) > 2u)
  {

    goto LABEL_7;
  }

  v48 = sub_1BA4A8338();

  if (v48)
  {
LABEL_7:
    v49 = (v46 + *(v33 + 28));
    goto LABEL_8;
  }

  if (qword_1EDC67350 != -1)
  {
    swift_once();
  }

  v49 = &qword_1EDC84C20;
LABEL_8:
  v50 = *v49;

  v73 = v50;
  v74 = v45;
  v75 = v44;
  swift_getOpaqueTypeConformance2();
  v51 = v70;
  sub_1BA4A4918();

  return (*(v69 + 8))(v43, v51);
}

uint64_t sub_1BA36C654(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA4A1728();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SwiftChartPoint(0);
  sub_1BA4A0F88();
  v7 = sub_1BA4A16E8();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_1BA36C754@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  sub_1B9F64E60(0, &qword_1EDC5EA30, sub_1BA36EF4C, sub_1BA36F044);
  v122 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v121 = &v96 - v4;
  sub_1B9F7CB04();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v109 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7CBC0(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v97 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F569EC(0, &qword_1EDC5F778, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v98 = &v96 - v13;
  v103 = sub_1BA4A4A68();
  v101 = *(v103 - 8);
  v15 = MEMORY[0x1EEE9AC00](v103, v14);
  v99 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36F25C(0, v15);
  v106 = v17;
  v104 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v100 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36F18C(0, v19);
  v108 = v21;
  v107 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v105 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36F078(0, v23);
  v118 = *(v25 - 8);
  v119 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v102 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7B6A0(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v113 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BA4A1728();
  v111 = *(v31 - 8);
  v112 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v110 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36F044(0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v120 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v117 = &v96 - v39;
  v40 = type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks(0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40, v43);
  sub_1BA36EF4C(0);
  v114 = *(v44 - 8);
  v115 = v44;
  MEMORY[0x1EEE9AC00](v44, v45);
  v116 = &v96 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v96 - v49;
  v125 = *v1;
  sub_1B9F63EF0(v1, &v96 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks);
  v51 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v52 = swift_allocObject();
  sub_1B9F6307C(&v96 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v52 + v51, type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks);
  sub_1B9F53A5C(0);
  sub_1B9F51630(0, &qword_1EDC5F808, sub_1BA36E0E0, MEMORY[0x1E69E6720]);
  sub_1B9F48334(&qword_1EDC5E6D8, sub_1B9F53A5C, MEMORY[0x1E69E6338]);
  sub_1BA36F320();
  sub_1B9F48334(&qword_1EDC68E98, type metadata accessor for SwiftChartPoint, &protocol conformance descriptor for SwiftChartPoint);

  v53 = v50;
  v54 = v1;
  sub_1BA4A62E8();
  v55 = v40;
  v56 = v1 + *(v40 + 20);
  v57 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  if (v56[v57[5]] > 1u)
  {
    v58 = v113;
LABEL_5:
    v59 = sub_1BA4A8338();

    if ((v59 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v58 = v113;
  if (v56[v57[5]])
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_1B9F63EF0(&v56[v57[6]], v58, sub_1B9F7B6A0);
  v60 = v111;
  v61 = v112;
  if ((*(v111 + 48))(v58, 1, v112) == 1)
  {
    sub_1B9F617A8(v58, sub_1B9F7B6A0);
  }

  else
  {
    v62 = v110;
    (*(v60 + 32))(v110, v58, v61);
    v63 = &v56[v57[7]];
    if ((v63[8] & 1) == 0)
    {
      v79 = *v63;
      sub_1BA4A57F8();
      v96 = v55;
      v80 = sub_1BA4A18A8();
      v81 = v97;
      (*(*(v80 - 8) + 56))(v97, 1, 1, v80);
      sub_1BA4A4978();

      sub_1B9F617A8(v81, sub_1B9F7CBC0);
      sub_1BA4A57F8();
      v125 = v79;
      sub_1BA4A4988();

      v82 = v99;
      v83 = v112;
      sub_1BA4A4A58();
      v84 = sub_1BA36E6C8();
      v85 = MEMORY[0x1E69817E8];
      v86 = MEMORY[0x1E695B2E0];
      v87 = v100;
      v88 = v103;
      sub_1BA4A4938();
      (*(v101 + 8))(v82, v88);
      v89 = v96;
      v125 = v88;
      v126 = v85;
      v127 = v86;
      v128 = v84;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v91 = v105;
      v92 = v106;
      sub_1BA4A4908();
      (*(v104 + 8))(v87, v92);
      v124 = *(v54 + *(v89 + 28));
      v125 = v92;
      v126 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v93 = v102;
      v94 = v108;
      sub_1BA4A4918();
      (*(v107 + 8))(v91, v94);
      (*(v111 + 8))(v110, v83);
      v67 = v117;
      v66 = v118;
      v95 = v119;
      (*(v118 + 32))(v117, v93, v119);
      v65 = v95;
      v64 = 0;
      goto LABEL_11;
    }

    (*(v60 + 8))(v62, v61);
  }

LABEL_10:
  v64 = 1;
  v66 = v118;
  v65 = v119;
  v67 = v117;
LABEL_11:
  (*(v66 + 56))(v67, v64, 1, v65);
  v68 = v114;
  v69 = v115;
  v70 = *(v114 + 16);
  v71 = v116;
  v70(v116, v53, v115);
  v72 = v120;
  sub_1B9F64138(v67, v120, sub_1BA36F044);
  sub_1B9F58348(&qword_1EDC5EA40, sub_1BA36EF4C, sub_1BA36F320, MEMORY[0x1E695B408]);
  v73 = v121;
  v70(v121, v71, v69);
  sub_1BA36F43C();
  v74 = v122;
  v75 = *(v122 + 48);
  sub_1B9F64138(v72, &v73[v75], sub_1BA36F044);
  v76 = v123;
  (*(v68 + 32))(v123, v73, v69);
  sub_1B9F643C4(&v73[v75], v76 + *(v74 + 48), sub_1BA36F044);
  sub_1B9F6442C(v67, sub_1BA36F044);
  v77 = *(v68 + 8);
  v77(v53, v69);
  sub_1B9F6442C(v72, sub_1BA36F044);
  return (v77)(v71, v69);
}

uint64_t sub_1BA36D538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B9F7CB04();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v52 - v12;
  sub_1B9F7CBC0(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1BA4A1728();
  v55 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v18);
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F569EC(0, &qword_1EDC5F778, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v56 = v52 - v23;
  v60 = sub_1BA4A4A48();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v24);
  v26 = v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36E05C(0);
  v61 = *(v27 - 8);
  v62 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA36E0E0(0);
  v32 = *(v31 - 8);
  v63 = v31;
  v64 = v32;
  MEMORY[0x1EEE9AC00](v31, v33);
  v57 = v52 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SwiftChartPoint(0);
  v36 = (a1 + *(v35 + 28));
  if (v36[1])
  {
    v37 = v63;
    v38 = *(v64 + 56);

    return v38(a3, 1, 1, v37);
  }

  else
  {
    v40 = v35;
    v41 = *v36;
    sub_1BA4A57F8();
    v52[2] = a2;
    v53 = v30;
    v52[3] = v9;
    v52[1] = v13;
    v52[0] = a1;
    v54 = a3;
    sub_1BA4A0F88();
    v52[4] = type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks(0);
    v42 = sub_1BA4A18A8();
    (*(*(v42 - 8) + 56))(v17, 1, 1, v42);
    sub_1BA4A4978();

    sub_1B9F617A8(v17, sub_1B9F7CBC0);
    (*(v55 + 8))(v20, v59);
    sub_1BA4A57F8();
    v43 = v52[0];
    v68[0] = *(v52[0] + *(v40 + 24));
    sub_1BA4A4988();

    sub_1BA4A57F8();
    v68[0] = v41;
    sub_1BA4A4988();

    sub_1BA4A4A28();
    sub_1BA4A51F8();
    v44 = MEMORY[0x1E695B2B8];
    v45 = v53;
    v46 = v60;
    sub_1BA4A4968();
    sub_1BA36E2A8(v68);
    (*(v58 + 8))(v26, v46);
    v47 = sub_1B9F7CBF4(v43, type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks);
    v66 = v44;
    v67 = v47;
    v65 = v46;
    swift_getOpaqueTypeConformance2();
    v48 = v57;
    v49 = v62;
    sub_1BA4A4918();
    (*(v61 + 8))(v45, v49);
    v50 = v63;
    v51 = v54;
    (*(v64 + 32))(v54, v48, v63);
    return (*(v64 + 56))(v51, 0, 1, v50);
  }
}

uint64_t sub_1BA36DC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, v10);
  return a6(v12);
}

uint64_t __swift_get_extra_inhabitant_index_49Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BA4A1898();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *__swift_store_extra_inhabitant_index_50Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BA4A1898();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1BA36E05C(uint64_t a1)
{
  if (!qword_1EDC5F780)
  {
    sub_1BA4A4A48();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F780);
    }
  }
}

void sub_1BA36E0E0(uint64_t a1)
{
  if (!qword_1EDC5F810)
  {
    sub_1BA36E05C(255);
    sub_1BA4A4A48();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F810);
    }
  }
}

void sub_1BA36E1A8(uint64_t a1)
{
  if (!qword_1EBBF1300)
  {
    sub_1BA36E0E0(255);
    sub_1BA36E05C(255);
    sub_1BA4A4A48();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBF1300);
    }
  }
}

void sub_1BA36E2FC(uint64_t a1)
{
  if (!qword_1EDC5EA18)
  {
    sub_1B9F89A30(255, &qword_1EDC5EA20, sub_1BA36E388);
    sub_1BA36E770(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5EA18);
    }
  }
}

void sub_1BA36E388(uint64_t a1, __n128 a2)
{
  if (!qword_1EDC5F7F8)
  {
    sub_1BA36E508(255, a2);
    sub_1BA36EA8C(255, &qword_1EDC5F798, MEMORY[0x1E695B2A8], MEMORY[0x1E695B2A0]);
    sub_1BA4A4A18();
    sub_1BA36E63C(255);
    sub_1BA36E6C8();
    sub_1BA36E71C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F7F8);
    }
  }
}

void sub_1BA36E508(uint64_t a1, __n128 a2)
{
  if (!qword_1EDC5F830)
  {
    sub_1BA36EA8C(255, &qword_1EDC5F798, MEMORY[0x1E695B2A8], MEMORY[0x1E695B2A0]);
    sub_1BA4A4A18();
    sub_1BA36E63C(255);
    sub_1BA36E6C8();
    sub_1BA36E71C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F830);
    }
  }
}

void sub_1BA36E63C(uint64_t a1)
{
  if (!qword_1EDC5F768)
  {
    sub_1BA36E6C8();
    sub_1BA36E71C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F768);
    }
  }
}

unint64_t sub_1BA36E6C8()
{
  result = qword_1EDC5EB68;
  if (!qword_1EDC5EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EB68);
  }

  return result;
}

unint64_t sub_1BA36E71C()
{
  result = qword_1EDC5EB60;
  if (!qword_1EDC5EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EB60);
  }

  return result;
}

void sub_1BA36E7D8(uint64_t a1, __n128 a2)
{
  if (!qword_1EDC5F7D8)
  {
    sub_1BA36E958(255, a2);
    sub_1BA36EA8C(255, &qword_1EDC5F788, MEMORY[0x1E695B2F0], MEMORY[0x1E695B2E0]);
    sub_1BA4A4A68();
    sub_1BA36E63C(255);
    sub_1BA36E6C8();
    sub_1BA36E71C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F7D8);
    }
  }
}

void sub_1BA36E958(uint64_t a1, __n128 a2)
{
  if (!qword_1EDC5F820)
  {
    sub_1BA36EA8C(255, &qword_1EDC5F788, MEMORY[0x1E695B2F0], MEMORY[0x1E695B2E0]);
    sub_1BA4A4A68();
    sub_1BA36E63C(255);
    sub_1BA36E6C8();
    sub_1BA36E71C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F820);
    }
  }
}

void sub_1BA36EA8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    sub_1BA36E63C(255);
    sub_1BA36E6C8();
    sub_1BA36E71C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1BA36EBC8()
{
  result = qword_1EDC5EA28;
  if (!qword_1EDC5EA28)
  {
    sub_1B9F89A30(255, &qword_1EDC5EA20, sub_1BA36E388);
    sub_1BA36E508(255, v1);
    sub_1BA36EA8C(255, &qword_1EDC5F798, MEMORY[0x1E695B2A8], MEMORY[0x1E695B2A0]);
    sub_1BA4A4A18();
    sub_1BA36E63C(255);
    sub_1BA36E6C8();
    sub_1BA36E71C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EA28);
  }

  return result;
}

unint64_t sub_1BA36ED88()
{
  result = qword_1EDC5F7B8;
  if (!qword_1EDC5F7B8)
  {
    sub_1BA36E7A4(255);
    sub_1BA36E958(255, v1);
    sub_1BA36EA8C(255, &qword_1EDC5F788, MEMORY[0x1E695B2F0], MEMORY[0x1E695B2E0]);
    sub_1BA4A4A68();
    sub_1BA36E63C(255);
    sub_1BA36E6C8();
    sub_1BA36E71C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F7B8);
  }

  return result;
}

void sub_1BA36EF4C(uint64_t a1)
{
  if (!qword_1EDC5EA38)
  {
    sub_1B9F53A5C(255);
    sub_1B9F51630(255, &qword_1EDC5F808, sub_1BA36E0E0, MEMORY[0x1E69E6720]);
    sub_1B9F48334(&qword_1EDC5E6D8, sub_1B9F53A5C, MEMORY[0x1E69E6338]);
    v1 = sub_1BA4A6318();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EA38);
    }
  }
}

void sub_1BA36F078(uint64_t a1, __n128 a2)
{
  if (!qword_1EDC5F7F0)
  {
    sub_1BA36F18C(255, a2);
    sub_1BA36F25C(255, v2);
    sub_1BA4A4A68();
    sub_1BA36E6C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F7F0);
    }
  }
}

void sub_1BA36F18C(uint64_t a1, __n128 a2)
{
  if (!qword_1EDC5F828)
  {
    sub_1BA36F25C(255, a2);
    sub_1BA4A4A68();
    sub_1BA36E6C8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F828);
    }
  }
}

void sub_1BA36F25C(uint64_t a1, __n128 a2)
{
  if (!qword_1EDC5F790)
  {
    sub_1BA4A4A68();
    sub_1BA36E6C8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F790);
    }
  }
}

unint64_t sub_1BA36F320()
{
  result = qword_1EDC5F800;
  if (!qword_1EDC5F800)
  {
    sub_1B9F51630(255, &qword_1EDC5F808, sub_1BA36E0E0, MEMORY[0x1E69E6720]);
    sub_1BA36E05C(255);
    sub_1BA4A4A48();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F800);
  }

  return result;
}

unint64_t sub_1BA36F43C()
{
  result = qword_1EDC5F7E0;
  if (!qword_1EDC5F7E0)
  {
    sub_1BA36F044(255);
    sub_1BA36F18C(255, v1);
    sub_1BA36F25C(255, v2);
    sub_1BA4A4A68();
    sub_1BA36E6C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F7E0);
  }

  return result;
}

uint64_t sub_1BA36F574(uint64_t a1, uint64_t a2)
{
  sub_1B9F51630(0, &qword_1EDC6B6E8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA36F608()
{
  result = qword_1EDC5F850;
  if (!qword_1EDC5F850)
  {
    sub_1BA36F6D4(255);
    sub_1BA36EBC8();
    sub_1B9F58348(&qword_1EDC5F7C0, sub_1BA36E770, sub_1BA36ED88, MEMORY[0x1E695B488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F850);
  }

  return result;
}

void sub_1BA36F6D4(uint64_t a1)
{
  if (!qword_1EDC5F848)
  {
    sub_1B9F89A30(255, &qword_1EDC5EA20, sub_1BA36E388);
    sub_1BA36E770(255);
    v1 = sub_1BA4A48A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F848);
    }
  }
}

unint64_t sub_1BA36F764()
{
  result = qword_1EDC5F860;
  if (!qword_1EDC5F860)
  {
    sub_1B9F56D28(255, &qword_1EDC5F858, sub_1BA36EF4C, sub_1BA36F044);
    sub_1B9F58348(&qword_1EDC5EA40, sub_1BA36EF4C, sub_1BA36F320, MEMORY[0x1E695B408]);
    sub_1BA36F43C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F860);
  }

  return result;
}

id sub_1BA36F870()
{
  sub_1B9F1D220(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v21 - v3;
  v5 = sub_1BA4A3FB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3F18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA31D5B4();
  sub_1B9F1D220(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  *(swift_allocObject() + 16) = xmmword_1BA4B5480;
  (*(v11 + 104))(v14, *MEMORY[0x1E69DBF28], v10);
  v15 = sub_1BA4A3F48();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  sub_1BA4A75F8();
  v16 = *MEMORY[0x1E69796E8];
  v17 = [v0 layer];
  [v17 setCornerCurve_];

  v18 = [v0 layer];
  [v18 setCornerRadius_];

  v19 = [v0 layer];
  [v19 setMaskedCorners_];

  return [v0 setClipsToBounds_];
}

uint64_t sub_1BA36FC30()
{
  v1 = sub_1BA4A4428();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v6, v16);
  if (v17)
  {
    sub_1B9FCD918();
    if (swift_dynamicCast())
    {
      if (v18)
      {
        v7 = *(&v23 + 1);

        sub_1BA180A38(&v18);
        if (v7)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
    }
  }

  else
  {
    sub_1B9F7B644(v16);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
  }

  sub_1BA3701BC(&v18);
LABEL_9:

LABEL_10:
  sub_1B9F68124(v0 + v6, v16);
  if (!v17)
  {
    sub_1B9F7B644(v16);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_17;
  }

  sub_1B9FCD918();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    goto LABEL_17;
  }

  if (!v18)
  {
LABEL_17:
    sub_1BA3701BC(&v18);
LABEL_18:
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    v9 = v10;
    goto LABEL_19;
  }

  v8 = v24;
  v9 = v24;
  v10 = sub_1BA180A38(&v18);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_19:
  MEMORY[0x1BFAF2040](v10);
  sub_1BA4A43B8();
  v11 = v9;
  sub_1BA4A43D8();
  v12 = sub_1BA4A42D8();
  sub_1BA4A4268();
  v12(&v18, 0);
  sub_1BA4A4348();
  *(&v19 + 1) = v1;
  *&v20 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(v2 + 16))(boxed_opaque_existential_1, v5, v1);
  MEMORY[0x1BFAF1EF0](&v18);

  return (*(v2 + 8))(v5, v1);
}

id sub_1BA370038(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProfileNavigationCollectionViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1BA370090()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGray5Color];
  v2 = [v0 tertiarySystemGroupedBackgroundColor];
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = v2;
  v3[4] = 0;
  v3[5] = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v8[4] = sub_1B9FD7F54;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B9F7EBBC;
  v8[3] = &block_descriptor_99;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

uint64_t sub_1BA3701BC(uint64_t a1)
{
  sub_1BA370218();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA370218()
{
  if (!qword_1EBBF1308[0])
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, qword_1EBBF1308);
    }
  }
}

uint64_t MappedDataSource.__allocating_init(dataSource:transformation:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1BA3718D4(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t MappedDataSource.init(dataSource:transformation:)(uint64_t a1, __int128 *a2)
{
  v2 = sub_1BA37189C(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

void sub_1BA370300(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v5) = a4;
  v8 = *v4;
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3D88();

  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6F88();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = v5;
    v5 = v18;
    v32 = v18;
    *v17 = 136315394;
    v19 = sub_1BA4A85D8();
    v30 = v10;
    v21 = sub_1B9F0B82C(v19, v20, &v32);
    v29 = v9;
    v22 = v8;
    v23 = v21;

    *(v17 + 4) = v23;
    v8 = v22;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1B9F0B82C(v28, a2, &v32);
    _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] snapshotDidChange for %s", v17, 0x16u);
    swift_arrayDestroy();
    v24 = v5;
    LOBYTE(v5) = v31;
    MEMORY[0x1BFAF43A0](v24, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);

    v25 = (*(v30 + 8))(v13, v29);
  }

  else
  {

    v25 = (*(v10 + 8))(v13, v9);
  }

  sub_1BA370794(v25, v26);
  type metadata accessor for MappedDataSourceWithContext(0, v8[59], v8[60], v8[61]);
  SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(v5 & 1);
}

uint64_t sub_1BA3705BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 512);
  swift_beginAccess();
  return (*(*(*(v3 + 480) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1BA37065C(uint64_t a1)
{
  v3 = *v1;
  sub_1BA371948(a1);
  v4 = *(*(*(v3 + 480) - 8) + 8);

  return v4(a1);
}

void (*sub_1BA3706D8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA370748;
}

void sub_1BA370748(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA370BB0();
  }
}

double sub_1BA370794(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*v2 + 480);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v17 - v6;
  v8 = *(v2 + qword_1EDC84BB8);
  v10 = *(v9 + 488);
  sub_1BA3705BC(&v17 - v6);
  v11 = *(v2 + *(*v2 + 520));
  v12 = *(v3 + qword_1EDC64EB0 + 8);
  v13 = *(v3 + qword_1EDC64EB0 + 16);
  v18 = *(v3 + qword_1EDC64EB0);
  v19 = v12;
  v20 = v13;
  sub_1B9F17BE8(v18, v12, v13);
  sub_1BA370EC0(v8, v10, v7, v11, &v18);
  v15 = v14;
  sub_1B9F18460(v18, v19, v20);
  (*(v5 + 8))(v7, v4);
  sub_1BA0E7F10(v15, 1);

  return result;
}

uint64_t MappedDataSourceWithContext.init(dataSource:context:allowEmptySections:transformation:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = sub_1BA371638(a1, a2, a3, a4);
  (*(*(*(v6 + 480) - 8) + 8))(a2);
  swift_unknownObjectRelease();
  return v7;
}

id *MappedDataSourceWithContext.deinit()
{
  v1 = *v0;

  v2 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));
  swift_unknownObjectRelease();
  (*(*(v1[60] - 8) + 8))(v0 + *(*v0 + 64));
  return v0;
}

uint64_t MappedDataSourceWithContext.__allocating_init(dataSource:context:allowEmptySections:transformation:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  swift_allocObject();
  v10 = sub_1BA371638(a1, a2, v7, a4);
  (*(*(*(v5 + 480) - 8) + 8))(a2);
  swift_unknownObjectRelease();
  return v10;
}

void sub_1BA370BB0()
{
  v1 = v0;
  sub_1B9F12538();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  v9 = sub_1BA4A4578();
  (*(v4 + 8))(v7, v3);
  v10 = *(v9 + 16);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  if (v10)
  {
    v12 = 0;
    v13 = v9 + 40;
    v38 = v10 - 1;
    v14 = MEMORY[0x1E69E7CC0];
    v39 = v9 + 40;
    while (1)
    {
      v15 = (v13 + 16 * v12);
      v16 = v12;
      while (1)
      {
        if (v16 >= *(v9 + 16))
        {
          __break(1u);
          return;
        }

        v17 = *(v1 + v11);
        if (*(v17 + 16))
        {
          break;
        }

LABEL_4:
        ++v16;
        v15 += 2;
        if (v10 == v16)
        {
          goto LABEL_16;
        }
      }

      v18 = *(v15 - 1);
      v19 = *v15;

      v20 = sub_1B9F24A34(v18, v19);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = (*(v17 + 56) + 48 * v20);
      v23 = v22[1];
      v37 = *v22;
      v24 = v22[2];
      v25 = v22[4];
      v26 = v22[5];
      v33 = v22[3];
      v34 = v25;
      v35 = v23;

      v36 = v24;
      v27 = v33;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1B9F21540(0, *(v14 + 2) + 1, 1, v14);
      }

      v29 = *(v14 + 2);
      v28 = *(v14 + 3);
      if (v29 >= v28 >> 1)
      {
        v14 = sub_1B9F21540((v28 > 1), v29 + 1, 1, v14);
      }

      v12 = v16 + 1;
      *(v14 + 2) = v29 + 1;
      v30 = &v14[48 * v29];
      v31 = v35;
      *(v30 + 4) = v37;
      *(v30 + 5) = v31;
      *(v30 + 6) = v36;
      *(v30 + 7) = v27;
      *(v30 + 8) = v34;
      *(v30 + 9) = v26;
      v13 = v39;
      if (v38 == v16)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_4;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_16:

  sub_1BA0E7F10(v14, 1);
}

void sub_1BA370EC0(uint64_t a1, uint64_t a2, void (*a3)(void, void), char a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a5;
  v10 = *(a5 + 8);
  v12 = *(a5 + 16);
  ObjectType = swift_getObjectType();
  v14 = SnapshotDataSource.contentsAsArray()(ObjectType, a2);
  v16 = v14;
  if (v12)
  {
    if (v12 == 1)
    {
      MEMORY[0x1EEE9AC00](v14, v15);
      v36 = *(v6 + 472);
      v37 = *(v6 + 488);
      v38 = v11;
      v39 = v10;
      v40 = a3;
      v17 = sub_1BA2F4270(sub_1BA371BB8, &v35, v16);
      v41 = 0;

      v18 = 0;
      v19 = *(v17 + 2);
      v20 = MEMORY[0x1E69E7CC0];
LABEL_4:
      v21 = &v17[48 * v18 + 16];
      while (1)
      {
        if (v19 == v18)
        {

          return;
        }

        if (v18 >= *(v17 + 2))
        {
          break;
        }

        ++v18;
        v22 = (v21 + 48);
        v23 = *(v21 + 32);
        v21 += 48;
        if (*(v23 + 16))
        {
          v24 = *(v22 - 3);
          v42 = *(v22 - 4);
          v25 = *(v22 - 1);
          v26 = *v22;
          v27 = v22[1];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = v25;
          v45 = v20;
          v43 = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B9F277B0(0, *(v20 + 16) + 1, 1);
            v20 = v45;
          }

          v30 = *(v20 + 16);
          v29 = *(v20 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1B9F277B0((v29 > 1), v30 + 1, 1);
            v20 = v45;
          }

          *(v20 + 16) = v30 + 1;
          v31 = (v20 + 48 * v30);
          v31[4] = v42;
          v31[5] = v24;
          v32 = v43;
          v33 = v44;
          v31[6] = v23;
          v31[7] = v33;
          v31[8] = v32;
          v31[9] = v27;
          goto LABEL_4;
        }
      }

      __break(1u);
    }

    else
    {
      v11(v14, a3);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14, v15);
    v35 = *(v6 + 472);
    *&v36 = *(v6 + 488);
    *(&v36 + 1) = v11;
    v37 = v10;
    v38 = a3;
    LOBYTE(v39) = a4 & 1;
    sub_1BA2F4270(sub_1BA371B90, &v34, v16);
  }
}

double sub_1BA371160@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, _OWORD *, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v13 = v5;
  v14 = v6;
  a2(v15, v12, a3);
  v8 = v16;
  v9 = v17;
  result = *v15;
  v11 = v15[1];
  *a4 = v15[0];
  *(a4 + 16) = v11;
  *(a4 + 32) = v8;
  *(a4 + 40) = v9;
  return result;
}

void sub_1BA3711D4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = a1[5];
  v30 = a1[4];
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a2;
  v28 = a3;
  v29 = a4;

  swift_bridgeObjectRetain_n();

  sub_1BA26CFFC(sub_1BA371BDC, v23, v13);
  v16 = v15;
  swift_bridgeObjectRelease_n();
  v17 = Array<A>.identifierToIndexDict()(v16);

  if (*(v16 + 16))
  {
    v18 = v12;
    v19 = v16;
    v20 = v17;
    v21 = v14;
  }

  else
  {
    if (a5)
    {
      v18 = v12;

      v22 = v11;
      v19 = v16;
      v20 = v17;
      v21 = v14;
    }

    else
    {
      v18 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
      v30 = 0;
      v21 = 0;
    }

    v11 = v22;
  }

  *a9 = v18;
  a9[1] = v11;
  a9[2] = v19;
  a9[3] = v20;
  a9[4] = v30;
  a9[5] = v21;
}

uint64_t sub_1BA371358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_1B9F12538();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v14 = v13;
  sub_1BA4A45C8();

  sub_1BA370300(v12, v14, v15, a5);

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1BA3714D4()
{
  v1 = *v0;
  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));
  swift_unknownObjectRelease();
  v2 = *(*(*(v1 + 480) - 8) + 8);
  v3 = v0 + *(*v0 + 512);

  return v2(v3);
}

uint64_t sub_1BA3715B0()
{
  MappedDataSourceWithContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA371638(uint64_t a1, void (*a2)(void, void), char a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v5;
  v9 = *a4;
  v10 = *(a4 + 8);
  v11 = v5 + qword_1EDC64EB0;
  *v11 = *a4;
  *(v11 + 8) = v10;
  v12 = *(a4 + 16);
  *(v11 + 16) = v12;
  *(v5 + qword_1EDC84BB8) = a1;
  (*(*(v8[60] - 8) + 16))(v5 + *(*v5 + 512));
  *(v5 + *(*v5 + 520)) = a3;
  v13 = v8[61];
  v23 = v9;
  v24 = v10;
  v25 = v12;
  sub_1B9F17BE8(v9, v10, v12);
  v14 = swift_unknownObjectRetain();
  sub_1BA370EC0(v14, v13, a2, a3, &v23);
  v16 = v15;
  sub_1B9F18460(v9, v10, v12);
  v23 = 0x534464657070614DLL;
  v24 = 0xE90000000000003CLL;
  v17 = v8[59];
  v18 = (*(v13 + 8))(v17, v13);
  MEMORY[0x1BFAF1350](v18);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v19 = MutableArrayDataSource.init(arrangedSections:identifier:)(v16, v23, v24);
  v20 = *(v13 + 40);

  swift_unknownObjectRetain();
  v21 = v20(v17, v13);
  swift_unknownObjectRelease();
  [v21 registerObserver_];

  return v19;
}

uint64_t sub_1BA37189C(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 16);
  v4 = *a2;
  v5 = v2;
  return sub_1BA371638(a1, a2, 0, &v4);
}

uint64_t sub_1BA3718D4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MappedDataSource(0, *(v4 + 576), *(v4 + 584), a4);
  swift_allocObject();
  v7 = *(a2 + 16);
  v10 = *a2;
  v11 = v7;
  return sub_1BA371638(a1, v8, 0, &v10);
}

void sub_1BA371948(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 512);
  swift_beginAccess();
  (*(*(*(v3 + 480) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  sub_1BA370BB0();
}

uint64_t sub_1BA371AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BA371BDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 40))(a1, *(v2 + 56));
  *a2 = result;
  return result;
}

void NSUserActivityProtocol.makeModernActivity()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v20 = a3;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A36A8();
  v13 = sub_1BA4A8108();

  if (v13 > 1)
  {
    sub_1BA4A3E28();
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6F98();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1B9F07000, v16, v17, "Encountered an activity type that we didn't recognize when migrating to the new NSUserActivity format, assuming it's new and passing along", v18, 2u);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    (*(*(a1 - 8) + 16))(v20, v5, a1);
  }

  else
  {
    v14 = sub_1BA371E64();
    if (!v4)
    {
      v15 = sub_1BA3732E0(v14);

      sub_1BA371FAC(v15, a1, a2, v20);
    }
  }
}

uint64_t sub_1BA371E64()
{
  v0 = sub_1BA4A36B8();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_1BA4A7D58();
  if (!*(v1 + 16) || (v2 = sub_1B9FDA8E4(v6), (v3 & 1) == 0))
  {

    sub_1B9FDC768(v6);
LABEL_8:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_9;
  }

  sub_1B9F0AD9C(*(v1 + 56) + 32 * v2, &v7);
  sub_1B9FDC768(v6);

  if (!*(&v8 + 1))
  {
LABEL_9:
    sub_1B9F23224(&v7);
    goto LABEL_10;
  }

  sub_1BA3737D0(0);
  if (swift_dynamicCast())
  {
    return v6[0];
  }

LABEL_10:
  sub_1BA3734D4();
  swift_allocError();
  *v5 = 0xD000000000000049;
  v5[1] = 0x80000001BA5030D0;
  return swift_willThrow();
}

void sub_1BA371FAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v145 = a3;
  v144 = a2;
  v143 = a4;
  v5 = sub_1BA4A35F8();
  v146 = *(v5 - 8);
  v147 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v138 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v138 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v138 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v138 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v140 = &v138 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v141 = &v138 - v30;
  v31 = sub_1BA4A3678();
  v32 = *(v31 - 8);
  v149 = v31;
  v150 = v32;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v138 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v138 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v151 = &v138 - v42;
  v159 = a1;

  v43 = sub_1BA372E3C();
  if (v43 == 5)
  {

    v156 = 0;
    v157 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v156 = 0xD000000000000017;
    v157 = 0x80000001BA502F30;
    *&v154 = a1;
    sub_1B9F1D880(0, &qword_1EBBF1390, &type metadata for LegacyUserActivity.Breadcrumb, MEMORY[0x1E69E62F8]);
    sub_1BA373458();
    v45 = sub_1BA4A6E78();
    v46 = (v45 & 1) == 0;
    if (v45)
    {
      v47 = 0x6E756F6620746F4ELL;
    }

    else
    {
      v47 = 0x6E676F6365726E75;
    }

    if (v46)
    {
      v48 = 0xEC00000064657A69;
    }

    else
    {
      v48 = 0xE900000000000064;
    }

    MEMORY[0x1BFAF1350](v47, v48);

    v49 = v156;
    v50 = v157;
    sub_1BA3734D4();
    swift_allocError();
    *v51 = v49;
    v51[1] = v50;
    goto LABEL_9;
  }

  v52 = v43;
  v139 = v44;
  v53 = sub_1B9FDB524(MEMORY[0x1E69E7CC0]);
  v158 = v53;
  if (v52 <= 1u)
  {
    if (v52)
    {

      v67 = v150;
      v68 = v151;
      v84 = v149;
      (*(v150 + 104))(v151, *MEMORY[0x1E69A2C60], v149);
      v86 = v146;
      v85 = v147;
      (*(v146 + 104))(v24, *MEMORY[0x1E69A2B98], v147);
      v87 = sub_1BA4A35E8();
      v89 = v88;
      (*(v86 + 8))(v24, v85);
      *&v154 = v87;
      *(&v154 + 1) = v89;
      sub_1BA4A7D58();
      v155 = MEMORY[0x1E69E6530];
      *&v154 = v139;
      sub_1B9F46920(&v154, v153);
      v90 = v158;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v152 = v90;
      sub_1B9FF1AE4(v153, &v156, isUniquelyReferenced_nonNull_native);
      sub_1B9FDC768(&v156);
      v158 = v152;
    }

    else
    {

      v65 = v148;
      sub_1BA373118(v139, v35);
      v66 = v149;
      v67 = v150;
      v68 = v151;
      if (v65)
      {
        goto LABEL_42;
      }

      (*(v150 + 32))(v151, v35, v149);
      v84 = v66;
    }

    goto LABEL_36;
  }

  v138 = v53;
  if (v52 == 2)
  {

    v69 = v150;
    v70 = v149;
    (*(v150 + 104))(v151, *MEMORY[0x1E69A2C00], v149);
    v71 = *MEMORY[0x1E69A2B88];
    v72 = v146;
    v73 = v147;
    v142 = *(v146 + 104);
    v142(v20, v71, v147);
    v74 = sub_1BA4A35E8();
    v76 = v75;
    v146 = *(v72 + 8);
    (v146)(v20, v73);
    *&v154 = v74;
    *(&v154 + 1) = v76;
    sub_1BA4A7D58();
    v77 = v139;
    v78 = v148;
    sub_1BA373528(v139);
    if (v78)
    {
      sub_1B9FDC768(&v156);
      (*(v69 + 8))(v151, v70);
      goto LABEL_42;
    }

    v92 = v79;
    v93 = sub_1BA0B5A7C();
    v155 = v93;
    *&v154 = v92;
    sub_1B9F46920(&v154, v153);
    v94 = v158;
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v94;
    sub_1B9FF1AE4(v153, &v156, v95);
    sub_1B9FDC768(&v156);
    v158 = v152;
    v142(v16, *MEMORY[0x1E69A2B98], v73);
    v96 = sub_1BA4A35E8();
    v98 = v97;
    (v146)(v16, v73);
    *&v154 = v96;
    *(&v154 + 1) = v98;
    sub_1BA4A7D58();
    v99 = sub_1BA3736A0(v77);
    if (v99)
    {
      v155 = v93;
      *&v154 = v99;
      sub_1B9F46920(&v154, v153);
      v100 = v158;
      v101 = swift_isUniquelyReferenced_nonNull_native();
      v152 = v100;
      sub_1B9FF1AE4(v153, &v156, v101);
      sub_1B9FDC768(&v156);
      v158 = v152;
    }

    else
    {
      sub_1BA0F6614(&v156, v153);
      sub_1B9F23224(v153);
      sub_1B9FDC768(&v156);
    }

    v67 = v150;
    v68 = v151;
    v84 = v149;
LABEL_36:
    sub_1BA4A3658();
    sub_1BA4A3698();
    (*(v67 + 8))(v68, v84);
    return;
  }

  if (v52 != 3)
  {
    v80 = sub_1BA372E3C();
    v82 = v81;

    v67 = v150;
    v68 = v151;
    if (v80 == 5)
    {
      goto LABEL_43;
    }

    if (v80 > 1u)
    {
      if (v80 == 2)
      {
        v83 = "_HealthPushCategoryActivityKey";
LABEL_38:
        if ((v83 | 0x8000000000000000) == 0x80000001BA4E1310)
        {

LABEL_41:
          v114 = v148;
          sub_1BA372FD8(v139, v39);
          if (v114)
          {
            goto LABEL_42;
          }

          (*(v67 + 32))(v68, v39, v149);
          v116 = *MEMORY[0x1E69A2B88];
          v117 = v146;
          v118 = v147;
          v119 = *(v146 + 104);
          v120 = v141;
          v148 = v146 + 104;
          v142 = v119;
          v119(v141, v116, v147);
          v121 = sub_1BA4A35E8();
          v123 = v122;
          v146 = *(v117 + 8);
          (v146)(v120, v118);
          *&v154 = v121;
          *(&v154 + 1) = v123;
          sub_1BA4A7D58();
          sub_1BA373528(v82);
          v125 = v124;
          v126 = sub_1BA0B5A7C();
          v141 = 0;
          v127 = v126;
          v155 = v126;
          *&v154 = v125;
          sub_1B9F46920(&v154, v153);
          v128 = v158;
          v129 = swift_isUniquelyReferenced_nonNull_native();
          v152 = v128;
          sub_1B9FF1AE4(v153, &v156, v129);
          sub_1B9FDC768(&v156);
          v158 = v152;
          v130 = v140;
          v131 = v147;
          v142(v140, *MEMORY[0x1E69A2B98], v147);
          v132 = sub_1BA4A35E8();
          v134 = v133;
          (v146)(v130, v131);
          *&v154 = v132;
          *(&v154 + 1) = v134;
          sub_1BA4A7D58();
          v135 = sub_1BA3736A0(v141);
          if (v135)
          {
            v155 = v127;
            *&v154 = v135;
            sub_1B9F46920(&v154, v153);
            v136 = v158;
            v137 = swift_isUniquelyReferenced_nonNull_native();
            v152 = v136;
            sub_1B9FF1AE4(v153, &v156, v137);
            sub_1B9FDC768(&v156);
            v158 = v152;
          }

          else
          {
            sub_1BA0F6614(&v156, v153);
            sub_1B9F23224(v153);
            sub_1B9FDC768(&v156);
          }

          v84 = v149;
          goto LABEL_36;
        }

        goto LABEL_40;
      }

      if (v80 == 3)
      {
        v83 = "PushDataActivityKey";
        goto LABEL_38;
      }
    }

LABEL_40:
    v113 = sub_1BA4A8338();

    if (v113)
    {
      goto LABEL_41;
    }

LABEL_43:

    sub_1BA3734D4();
    swift_allocError();
    *v115 = 0xD000000000000076;
    v115[1] = 0x80000001BA502F50;
LABEL_9:
    swift_willThrow();
    return;
  }

  v54 = v150;
  v55 = v149;
  (*(v150 + 104))(v151, *MEMORY[0x1E69A2C00], v149);
  v56 = *MEMORY[0x1E69A2B88];
  v58 = v146;
  v57 = v147;
  v142 = *(v146 + 104);
  v142(v12, v56, v147);
  v59 = sub_1BA4A35E8();
  v61 = v60;
  v146 = *(v58 + 8);
  (v146)(v12, v57);
  *&v154 = v59;
  *(&v154 + 1) = v61;
  sub_1BA4A7D58();
  v62 = v139;
  v63 = v148;
  sub_1BA373528(v139);
  if (!v63)
  {
    v102 = v64;
    v103 = sub_1BA0B5A7C();
    v155 = v103;
    *&v154 = v102;
    sub_1B9F46920(&v154, v153);
    v104 = v158;
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v104;
    sub_1B9FF1AE4(v153, &v156, v105);
    sub_1B9FDC768(&v156);
    v158 = v152;
    v106 = v147;
    v142(v8, *MEMORY[0x1E69A2B98], v147);
    v107 = sub_1BA4A35E8();
    v109 = v108;
    (v146)(v8, v106);
    *&v154 = v107;
    *(&v154 + 1) = v109;
    sub_1BA4A7D58();
    v110 = sub_1BA3736A0(v62);
    if (v110)
    {
      v155 = v103;
      *&v154 = v110;
      sub_1B9F46920(&v154, v153);
      v111 = v158;
      v112 = swift_isUniquelyReferenced_nonNull_native();
      v152 = v111;
      sub_1B9FF1AE4(v153, &v156, v112);
      sub_1B9FDC768(&v156);
      v158 = v152;
    }

    else
    {
      sub_1BA0F6614(&v156, v153);
      sub_1B9F23224(v153);
      sub_1B9FDC768(&v156);
    }

    v84 = v149;
    v67 = v150;
    v68 = v151;
    goto LABEL_36;
  }

  sub_1B9FDC768(&v156);
  (*(v54 + 8))(v151, v55);
LABEL_42:
}

uint64_t sub_1BA372E3C()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BA373220())
  {
    v6 = v5;

    v7 = sub_1BA159278(v6);
    v9 = v8;

    if (v9)
    {
      LOBYTE(result) = sub_1BA373294(v7, v9);
      if (result != 5)
      {
        return result;
      }
    }
  }

  sub_1BA4A3E28();
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6F88();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B9F07000, v11, v12, "Encountered a breadcrumb with no discernable keys and values", v13, 2u);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 5;
}

uint64_t sub_1BA372FD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = MEMORY[0x1E69A2C08];
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v3 = MEMORY[0x1E69A2C10];
LABEL_5:
    v4 = *v3;
    v5 = sub_1BA4A3678();
    return (*(*(v5 - 8) + 104))(a2, v4, v5);
  }

  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000042, 0x80000001BA502FD0);
  v7 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v7);

  sub_1BA3734D4();
  swift_allocError();
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_1BA373118@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v4 = MEMORY[0x1E69A2C18];
      goto LABEL_11;
    }

    if (a2 == 3)
    {
      v4 = MEMORY[0x1E69A2C70];
      goto LABEL_11;
    }

LABEL_8:
    sub_1BA3734D4();
    swift_allocError();
    *v5 = 0xD000000000000033;
    v5[1] = 0x80000001BA503020;
    return swift_willThrow();
  }

  if (!a2)
  {
    v4 = MEMORY[0x1E69A2C58];
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    goto LABEL_8;
  }

  v4 = MEMORY[0x1E69A2BF0];
LABEL_11:
  v7 = *v4;
  v8 = sub_1BA4A3678();
  return (*(*(v8 - 8) + 104))(a3, v7, v8);
}

char *sub_1BA373220()
{
  v1 = *v0;
  if (!*(*v0 + 2))
  {
    return 0;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 2);
    if (v3)
    {
LABEL_4:
      v4 = v3 - 1;
      result = *&v1[16 * v4 + 32];
      *(v1 + 2) = v4;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = sub_1BA2F6860(v1);
    v1 = result;
    v3 = *(result + 2);
    if (v3)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BA373294(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA4A8108();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BA3732E0(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  if (v3 >= 2)
  {
    v4 = 0;
    v5 = v3 - 1;
    for (i = a1 + 40; ; i += 16)
    {

      sub_1BA3FD71C(v7);
      v9 = v8;

      if (!v9)
      {
        break;
      }

      sub_1BA3FD71C(v10);
      v12 = v11;

      if (!v12)
      {

        break;
      }

      v4 += 2;
      sub_1B9F1D880(0, &qword_1EBBF1390, &type metadata for LegacyUserActivity.Breadcrumb, MEMORY[0x1E69E62F8]);
      sub_1BA4A6BD8();
      if (v4 >= v5)
      {
        return v14;
      }
    }

    sub_1BA3734D4();
    swift_allocError();
    *v13 = 0xD00000000000004ELL;
    v13[1] = 0x80000001BA503080;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1BA373458()
{
  result = qword_1EBBF1398;
  if (!qword_1EBBF1398)
  {
    sub_1B9F1D880(255, &qword_1EBBF1390, &type metadata for LegacyUserActivity.Breadcrumb, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1398);
  }

  return result;
}

unint64_t sub_1BA3734D4()
{
  result = qword_1EBBF13A0;
  if (!qword_1EBBF13A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF13A0);
  }

  return result;
}

void sub_1BA373528(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v3 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v6 = [v4 displayTypeWithIdentifier_];

    if (v6)
    {
      v7 = [v6 objectType];
      v8 = [v7 code];

      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      return;
    }
  }

  sub_1BA3734D4();
  swift_allocError();
  *v9 = 0xD000000000000014;
  v9[1] = 0x80000001BA503060;
  swift_willThrow();
}

id sub_1BA3736A0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v3 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v6 = [v4 displayTypeWithIdentifier_];

    if (v6)
    {
      v7 = [v6 displayCategory];
      v8 = [v7 categoryID];

      v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      return v9;
    }
  }

  return 0;
}

void sub_1BA3737D0(uint64_t a1)
{
  if (!qword_1EBBF13A8)
  {
    sub_1BA2DE250();
    v1 = sub_1BA4A6BF8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF13A8);
    }
  }
}

uint64_t *DiffableTableViewAdaptor.__allocating_init(tableView:dataSource:allowAnimations:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  swift_allocObject();
  v8 = sub_1BA374C90(a1, a2, a3, v4);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t *DiffableTableViewAdaptor.init(tableView:dataSource:allowAnimations:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BA374C90(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v5;
}

id sub_1BA373904(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v64 = a7;
  v66 = a2;
  v11 = sub_1BA4A3EA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0AA6C(0, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = (&v63 - v18);
  ObjectType = swift_getObjectType();
  v21 = *(a6 + 24);
  v65 = ObjectType;
  v21(&aBlock, a3, a4);
  if (!v69)
  {
    v66 = v12;
    sub_1B9F43A50(&aBlock, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    sub_1BA4A3DD8();

    v50 = sub_1BA4A3E88();
    v51 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&aBlock = v53;
      *v52 = 136446722;
      v54 = sub_1BA4A85D8();
      v56 = sub_1B9F0B82C(v54, v55, &aBlock);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2082;
      *(v52 + 14) = sub_1B9F0B82C(0xD00000000000002BLL, 0x80000001BA5031B0, &aBlock);
      *(v52 + 22) = 2082;
      *(v52 + 24) = sub_1B9F0B82C(a3, a4, &aBlock);
      _os_log_impl(&dword_1B9F07000, v50, v51, "[%{public}s.%{public}s]: The CellProvider block called us back with an item that no longer exists. Item Identifier: %{public}s", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v53, -1, -1);
      MEMORY[0x1BFAF43A0](v52, -1, -1);
    }

    (*(v66 + 8))(v15, v11);
    return [objc_allocWithZone(MEMORY[0x1E69DD028]) init];
  }

  sub_1B9F1134C(&aBlock, v75);
  sub_1B9F0A534(v75, &aBlock);
  sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v72, v74);
    __swift_project_boxed_opaque_existential_1(v74, v74[3]);
    sub_1BA4A2E58();
    v22 = sub_1BA4A6758();

    v23 = [a1 dequeueReusableCellWithIdentifier_];

    if (v23)
    {
      v24 = swift_getObjectType();
      v25 = swift_conformsToProtocol2();
      if (v25)
      {
        v26 = v25;
        sub_1B9F0A534(v74, &aBlock);
        v64 = a6;
        v27 = a1;
        v28 = *(v26 + 16);
        v29 = v23;
        v28(&aBlock, v24, v26);
        a1 = v27;
      }

      v30 = swift_getObjectType();
      v31 = swift_conformsToProtocol2();
      if (v31)
      {
        v32 = v31;
        v33 = v23;
        v34 = v66;
        v35 = sub_1BA4A1968();
        v36 = SnapshotDataSource.numberOfItems(in:)(v35);
        v37 = type metadata accessor for SectionContext(0);
        v38 = a1;
        v39 = *(v37 + 20);
        v40 = sub_1BA4A1998();
        v41 = v19 + v39;
        a1 = v38;
        (*(*(v40 - 8) + 16))(v41, v34, v40);
        *v19 = v36;
        (*(*(v37 - 8) + 56))(v19, 0, 1, v37);
        (*(v32 + 16))(v19, v30, v32);
      }

      if ([a1 style] == 2)
      {
        v42 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v43 = v23;
        v44 = [v42 initWithRed:0.960784314 green:0.960784314 blue:0.976470588 alpha:1.0];
        v45 = [objc_opt_self() secondarySystemBackgroundColor];
        v46 = swift_allocObject();
        v46[2] = 0;
        v46[3] = v45;
        v46[4] = 0;
        v46[5] = v44;
        v47 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v70 = sub_1B9FD7F54;
        v71 = v46;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v68 = sub_1B9F7EBBC;
        v69 = &block_descriptor_28_2;
        v48 = _Block_copy(&aBlock);
        v49 = [v47 initWithDynamicProvider_];
        _Block_release(v48);

        [v43 setBackgroundColor_];
      }

      else
      {
        v57 = objc_opt_self();
        v58 = v23;
        v59 = [v57 systemBackgroundColor];
        [v58 setBackgroundColor_];
      }
    }

    else
    {
      [a1 style];
    }

    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(v75);
    return v23;
  }

  v73 = 0;
  memset(v72, 0, sizeof(v72));
  sub_1B9F43A50(v72, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](91, 0xE100000000000000);
  v61 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v61);

  MEMORY[0x1BFAF1350](46, 0xE100000000000000);
  MEMORY[0x1BFAF1350](0xD00000000000002BLL, 0x80000001BA5031B0);
  MEMORY[0x1BFAF1350](2112093, 0xE300000000000000);
  __swift_project_boxed_opaque_existential_1(v75, v75[3]);
  v62 = sub_1BA4A2D58();
  MEMORY[0x1BFAF1350](v62);

  MEMORY[0x1BFAF1350](0xD0000000000000AELL, 0x80000001BA503220);
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

double sub_1BA3741A8()
{
  v1 = *v0;
  v2 = sub_1BA4A6478();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A64C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F38BF4();
  v12 = sub_1BA4A7308();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v1;
  aBlock[4] = sub_1BA374E78;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_100;
  v14 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  v16[1] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0AA6C(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v11, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);

  return result;
}

void sub_1BA374478(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_1BA4A3EA8();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v42 = v6;
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  *(a1 + 41) = 1;
  v41 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45D8();
  v36 = a1;
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v39 = v9;
  v40 = v10;
  v11 = SnapshotDataSource.sectionIdentifiers.getter(ObjectType, v9);
  v12 = v11;
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (v11 + 40);
    v37 = xmmword_1BA4B5480;
    while (v14 < *(v12 + 16))
    {
      ++v14;
      v17 = *(v15 - 1);
      v16 = *v15;
      sub_1B9F25350();
      v18 = swift_allocObject();
      *(v18 + 16) = v37;
      *(v18 + 32) = v17;
      *(v18 + 40) = v16;
      swift_bridgeObjectRetain_n();
      sub_1BA4A44C8();

      SnapshotDataSource.itemIdentifiers(in:)(v17, v16, ObjectType, v39);

      v43[0] = v17;
      v43[1] = v16;
      sub_1BA4A4448();

      v15 += 2;
      if (v13 == v14)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v19 = v32;
    sub_1BA4A3DD8();
    v20 = sub_1BA4A3E88();
    v21 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43[0] = v23;
      *v22 = 136446466;
      v24 = sub_1BA4A85D8();
      v26 = sub_1B9F0B82C(v24, v25, v43);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_1B9F0B82C(0x614464616F6C6572, 0xEC00000029286174, v43);
      _os_log_impl(&dword_1B9F07000, v20, v21, "[%{public}s.%{public}s]: Applying diffable snapshot", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v23, -1, -1);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
    }

    (*(v33 + 8))(v19, v34);
    v27 = v36;
    v28 = v41;
    v29 = *(v36 + 40);
    *(v36 + 64) = v29;

    if (v29 == 1)
    {
      sub_1BA4A4678();
      v30 = v35;
      if ((*(v27 + 42) & 1) == 0 || sub_1BA4A4548() < 1)
      {
        (*(v30 + 8))(v28, v42);

        return;
      }
    }

    else
    {
      sub_1BA4A4648();
      v30 = v35;
      if (*(v27 + 42) == 1)
      {
        sub_1BA4A4548();
      }
    }

    sub_1BA4A4648();

    (*(v30 + 8))(v28, v42);
    *(v27 + 42) = 0;
  }
}

double sub_1BA374914()
{
  if ((*(v0 + 41) & 1) == 0)
  {
    return sub_1BA3741A8();
  }

  return result;
}

uint64_t DiffableTableViewAdaptor.deinit()
{
  swift_unknownObjectRelease();

  sub_1B9F0E310(*(v0 + 48), *(v0 + 56));
  return v0;
}

uint64_t DiffableTableViewAdaptor.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  sub_1B9F0E310(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1BA3749A4(uint64_t a1)
{
  sub_1B9F12538();
  v13 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 40);
  *(a1 + 64) = v7;
  v8 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 16);

  v10(ObjectType, v8);

  if (v7 == 1)
  {
    sub_1BA4A4678();
  }

  else
  {
    sub_1BA4A4648();
  }

  return (*(v3 + 8))(v6, v13);
}

uint64_t sub_1BA374B2C(uint64_t result)
{
  *(result + 64) = 0;
  v1 = *(result + 48);
  if (v1)
  {
    v2 = *(result + 56);

    v1(v3);

    return sub_1B9F0E310(v1, v2);
  }

  return result;
}

uint64_t *sub_1BA374C90(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v5;
  *(v5 + 41) = 256;
  v5[6] = 0;
  v5[7] = 0;
  *(v5 + 64) = 0;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v10;
  *(objc_allocWithZone(type metadata accessor for DiffableTableViewDataSource(0)) + qword_1EBBF23F0 + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BA3751CC;
  *(v12 + 24) = v11;
  swift_unknownObjectRetain();
  v13 = a1;

  v14 = sub_1BA4A4658();
  v5[3] = a3;
  v5[4] = v14;
  v5[2] = a2;
  *(v5 + 40) = a4;
  swift_unknownObjectRetain();
  v15 = v14;
  sub_1BA4A4668();

  v16 = v5[4] + qword_1EBBF23F0;
  swift_beginAccess();
  *(v16 + 8) = a3;
  swift_unknownObjectWeakAssign();
  ObjectType = swift_getObjectType();
  v18 = (*(a3 + 40))(ObjectType, a3);
  [v18 registerObserver_];

  return v5;
}

double sub_1BA374E80()
{
  v1 = sub_1BA4A6478();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A64C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F38BF4();
  v11 = sub_1BA4A7308();
  aBlock[4] = sub_1BA3751A8;
  v16 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_16_0;
  v12 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  v14[1] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0AA6C(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v10, v5, v12);
  _Block_release(v12);

  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);

  return result;
}

id HealthImageActivityItemProvider.__allocating_init(image:thumbnailImage:title:subtitle:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v32 = a6;
  sub_1BA011090(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A15D8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v7;
  v22 = objc_allocWithZone(v7);
  *&v22[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_image] = a1;
  *&v22[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_thumbnailImage] = a2;
  v23 = &v22[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_title];
  *v23 = a3;
  *(v23 + 1) = a4;
  v24 = &v22[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_subtitle];
  v25 = v32;
  *v24 = a5;
  *(v24 + 1) = v25;
  v26 = a2;
  v27 = a1;
  sub_1BA4A15C8();
  result = (*(v18 + 48))(v16, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v29 = sub_1BA4A1548();
    (*(v18 + 8))(v21, v17);
    v33.receiver = v22;
    v33.super_class = v31;
    v30 = objc_msgSendSuper2(&v33, sel_initWithPlaceholderItem_, v29);

    return v30;
  }

  return result;
}

double sub_1BA37542C()
{
  if (qword_1EBBE8588 != -1)
  {
    swift_once();
  }

  qword_1EBBF13B0 = qword_1EBBEF2A8;
  *algn_1EBBF13B8 = unk_1EBBEF2B0;

  return result;
}

uint64_t static String.defaultImageProviderSubtitle.getter()
{
  if (qword_1EBBE88B8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBBF13B0;

  return v0;
}

id HealthImageActivityItemProvider.init(image:thumbnailImage:title:subtitle:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v32 = a6;
  sub_1BA011090(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A15D8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_image] = a1;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_thumbnailImage] = a2;
  v22 = &v7[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_title];
  *v22 = a3;
  *(v22 + 1) = a4;
  v23 = &v7[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_subtitle];
  v24 = v32;
  *v23 = a5;
  *(v23 + 1) = v24;
  v25 = a2;
  v26 = a1;
  sub_1BA4A15C8();
  result = (*(v18 + 48))(v16, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v28 = sub_1BA4A1548();
    (*(v18 + 8))(v21, v17);
    v29 = type metadata accessor for HealthImageActivityItemProvider();
    v33.receiver = v7;
    v33.super_class = v29;
    v30 = objc_msgSendSuper2(&v33, sel_initWithPlaceholderItem_, v28);

    return v30;
  }

  return result;
}

id HealthImageActivityItemProvider.__allocating_init(placeholderItem:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [v3 initWithPlaceholderItem_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id HealthImageActivityItemProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthImageActivityItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA3759E8()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  v2 = sub_1BA4A6758();
  [v1 setTitle_];

  v3 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];
  [v1 setImageProvider_];

  v4 = sub_1BA4A6758();
  [v1 setSummary_];

  return v1;
}

id sub_1BA375AD0(double a1, double a2)
{
  swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_thumbnailImage);
  if (v5)
  {
    v6 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_thumbnailImage);
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_image);
    v5 = 0;
  }

  v7 = v5;
  v8 = UIImagePNGRepresentation(v6);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1BA4A1608();
    v12 = v11;

    type metadata accessor for CGImage(0);
    v13 = sub_1BA4A6EC8();
    v14 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

    sub_1B9F2BB4C(v10, v12);
    return v14;
  }

  else
  {

    return 0;
  }
}

id HeightPickerItem.__allocating_init(initialValue:valueFormatter:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight] = 0;
  v5[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem____lazy_storage___usesImperialUnits] = 2;
  *&v5[v6] = a1;
  sub_1B9F0A534(a2, &v5[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter]);
  v9.receiver = v5;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v7;
}

void sub_1BA375F0C()
{
  v0 = [objc_opt_self() meterUnitWithMetricPrefix_];
  [objc_opt_self() defaultCentimeterValue];
  v2 = [objc_opt_self() quantityWithUnit:v0 doubleValue:v1];

  qword_1EBC09938 = v2;
}

uint64_t sub_1BA375FAC()
{
  type metadata accessor for PickerTableViewCell();
  sub_1BA376354(0, &qword_1EBBF0850, 255, type metadata accessor for PickerTableViewCell);
  return sub_1BA4A6808();
}

uint64_t sub_1BA376008()
{
  swift_getObjectType();
  sub_1BA376354(0, &qword_1EBBF1408, v0, type metadata accessor for HeightPickerItem);
  return sub_1BA4A6808();
}

uint64_t sub_1BA3760B0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA37611C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

uint64_t sub_1BA3761BC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem____lazy_storage___usesImperialUnits;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem____lazy_storage___usesImperialUnits);
  if (v2 == 2)
  {
    sub_1BA1B75A0();
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter + 24);
    v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter), v3);
    v8 = 1;
    v5 = (*(v4 + 8))(&v8, v3, v4);
    v6 = [objc_opt_self() footUnit];
    LOBYTE(v2) = sub_1BA4A7798();

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

id HeightPickerItem.init(initialValue:valueFormatter:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight] = 0;
  v2[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem____lazy_storage___usesImperialUnits] = 2;
  *&v2[v5] = a1;
  sub_1B9F0A534(a2, &v2[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter]);
  v8.receiver = v2;
  v8.super_class = type metadata accessor for HeightPickerItem();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v6;
}

uint64_t sub_1BA376354(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a4(a3);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id HeightPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HeightPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeightPickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA3764E8()
{
  swift_getObjectType();
  sub_1BA376354(0, &qword_1EBBF1408, v0, type metadata accessor for HeightPickerItem);
  return sub_1BA4A6808();
}

uint64_t sub_1BA376540(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t HeightPickerItem.initialSelections.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight);
  if (!v1)
  {
    if (qword_1EBBE88C0 != -1)
    {
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight);
  while (1)
  {
    v3 = v1;
    if ((sub_1BA3761BC() & 1) == 0)
    {
      break;
    }

    sub_1BA3768F8(v2);
    v5 = v4;
    v7 = v6;
    sub_1BA31EC5C(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BA4B5460;
    if (!__OFSUB__(v5, 1))
    {
      v9 = v8;
      *(v8 + 32) = v5 - 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = v7;
      *(v8 + 56) = 1;
      goto LABEL_10;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
LABEL_4:
    v2 = qword_1EBC09938;
    v1 = 0;
  }

  sub_1BA31EC5C(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5480;
  sub_1BA376A04(v2);
  if (__OFSUB__(v10, 30))
  {
    goto LABEL_12;
  }

  *(v9 + 32) = v10 - 30;
  *(v9 + 40) = 0;
LABEL_10:

  return v9;
}

Swift::Int __swiftcall HeightPickerItem.numberOfComponents(in:)(UIPickerView *in)
{
  if (sub_1BA3761BC())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

Swift::Int __swiftcall HeightPickerItem.pickerView(_:numberOfRowsInComponent:)(UIPickerView *_, Swift::Int numberOfRowsInComponent)
{
  v3 = sub_1BA3761BC();
  v4 = 246;
  if (numberOfRowsInComponent)
  {
    v4 = 0;
  }

  v5 = 12;
  if (numberOfRowsInComponent != 1)
  {
    v5 = 0;
  }

  if (!numberOfRowsInComponent)
  {
    v5 = 9;
  }

  if (v3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

Swift::String_optional __swiftcall HeightPickerItem.pickerView(_:titleForRow:forComponent:)(UIPickerView *_, Swift::Int titleForRow, Swift::Int forComponent)
{
  v3 = sub_1BA376AF8(titleForRow, forComponent);
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

void sub_1BA3768F8(void *a1)
{
  v2 = [objc_opt_self() inchUnit];
  [a1 doubleValueForUnit_];
  v4 = v3;

  v5 = round(v4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    sub_1BA4A66E8();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1BA376A04(void *a1)
{
  v2 = [objc_opt_self() meterUnitWithMetricPrefix_];
  [a1 doubleValueForUnit_];
  v4 = v3;

  v5 = round(v4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    sub_1BA4A66E8();
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1BA376AF8(uint64_t a1, uint64_t a2)
{
  if ((sub_1BA3761BC() & 1) == 0)
  {
    if (!a2)
    {
      result = [objc_opt_self() meterUnitWithMetricPrefix_];
      if (!__OFADD__(a1, 30))
      {
        v8 = result;
        v9 = [objc_opt_self() quantityWithUnit:result doubleValue:(a1 + 30)];

        v10 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter + 24);
        v11 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter + 32);
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter), v10);
        v14 = 1;
        v12 = (*(v11 + 16))(&v14, v9, v10, v11);
LABEL_14:
        v13 = v12;

        return v13;
      }

      __break(1u);
      goto LABEL_17;
    }

    return 0;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      result = [objc_opt_self() sharedFormatter];
      if (!result)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (!__OFADD__(a1, 1))
      {
        v6 = result;
        v7 = [result formattedValueForFeet_];
        goto LABEL_12;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    return 0;
  }

  result = [objc_opt_self() sharedFormatter];
  if (result)
  {
    v6 = result;
    v7 = [result formattedValueForInches_];
LABEL_12:
    v9 = v7;

    if (v9)
    {
      v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      goto LABEL_14;
    }

    return 0;
  }

LABEL_19:
  __break(1u);
  return result;
}

void _s18HealthExperienceUI16HeightPickerItemC10pickerView_12didSelectRow11inComponentySo08UIPickerH0C_S2itF_0(void *a1, uint64_t a2)
{
  if (sub_1BA3761BC())
  {
    v5 = [a1 selectedRowInComponent_];
    v6 = (v5 + 1);
    if (!__OFADD__(v5, 1))
    {
      v7 = [a1 selectedRowInComponent_];
      v8 = 12 * v6;
      if ((v6 * 12) >> 64 == (12 * v6) >> 63)
      {
        v9 = v7 + v8;
        if (!__OFADD__(v8, v7))
        {
          v10 = [objc_opt_self() inchUnit];
          goto LABEL_8;
        }

LABEL_14:
        __break(1u);
        return;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = __OFADD__(a2, 30);
  v9 = a2 + 30;
  if (v11)
  {
    goto LABEL_12;
  }

  v10 = [objc_opt_self() meterUnitWithMetricPrefix_];
LABEL_8:
  v12 = v10;
  v13 = [objc_opt_self() quantityWithUnit:v12 doubleValue:v9];

  v14 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight) = v13;
  v15 = v13;

  v16 = v2 + OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(v2, v15, ObjectType, v17);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t sub_1BA376E78()
{
  result = qword_1EBBF1410;
  if (!qword_1EBBF1410)
  {
    type metadata accessor for HeightPickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1410);
  }

  return result;
}

uint64_t SegmentedControlItem.Segment.init(title:selectionHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t SegmentedControlItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SegmentedControlItem.selectedSegmentChanged.getter()
{
  v1 = *(v0 + 48);
  sub_1B9F0F1B8(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_1BA3770B8()
{
  v14 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_1B9F1C360((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_1B9F1D8D0(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B9F1D768();
  v9 = sub_1BA4A66D8();
  v11 = v10;

  MEMORY[0x1BFAF1350](v9, v11);

  return v14;
}

void *SegmentedControlItem.__allocating_init(segments:selectedSegmentIndex:selectedSegmentChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  type metadata accessor for SegmentedControlCell();
  sub_1BA3785A0();
  v8[2] = sub_1BA4A6808();
  v8[3] = v9;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a3;
  v8[7] = a4;
  return v8;
}

void *SegmentedControlItem.init(segments:selectedSegmentIndex:selectedSegmentChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SegmentedControlCell();
  sub_1BA3785A0();
  v4[2] = sub_1BA4A6808();
  v4[3] = v9;
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
  return v4;
}

void *SegmentedControlItem.deinit()
{

  sub_1B9F0E310(*(v0 + 48), *(v0 + 56));
  return v0;
}

uint64_t SegmentedControlItem.__deallocating_deinit()
{

  sub_1B9F0E310(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1BA3773D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA37743C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA3780F0();
  return sub_1B9F7B644(v6);
}

uint64_t sub_1BA3774AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA377504(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA3780F0();
  return sub_1B9F7B644(a1);
}

void (*sub_1BA377570(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA3775D4;
}

void sub_1BA3775D4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA3780F0();
  }
}

id SegmentedControlCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SegmentedControlCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_segmentedControl;
  v11 = objc_allocWithZone(MEMORY[0x1E69DCF38]);
  v12 = sub_1BA4A6AE8();
  v13 = [v11 initWithItems_];

  *&v4[v10] = v13;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for SegmentedControlCell();
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA3779BC();

  return v14;
}

id SegmentedControlCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SegmentedControlCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_segmentedControl;
  v5 = objc_allocWithZone(MEMORY[0x1E69DCF38]);
  v6 = sub_1BA4A6AE8();
  v7 = [v5 initWithItems_];

  *&v1[v4] = v7;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for SegmentedControlCell();
  v8 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_1BA3779BC();
  }

  return v9;
}

id sub_1BA3779BC()
{
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_segmentedControl];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v0 contentView];
  [v3 addSubview_];

  v4 = objc_opt_self();
  sub_1B9F1D8D0(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5890;
  v6 = [v2 topAnchor];
  v7 = [v0 contentView];
  v8 = [v7 topAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:16.0];
  *(v5 + 32) = v9;
  v10 = [v0 contentView];
  v11 = [v10 leadingAnchor];

  v12 = [v2 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v5 + 40) = v13;
  v14 = [v2 trailingAnchor];
  v15 = [v0 contentView];
  v16 = [v15 trailingAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v5 + 48) = v17;
  v18 = [v2 bottomAnchor];
  v19 = [v0 contentView];
  v20 = [v19 bottomAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v5 + 56) = v21;
  sub_1B9F740B0();
  v22 = sub_1BA4A6AE8();

  [v4 activateConstraints_];

  return [v2 addTarget:v0 action:sel_segmentedControlChanged_ forControlEvents:4096];
}

void sub_1BA377D20(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item;
  swift_beginAccess();
  sub_1B9F68124(v2 + v10, v30);
  if (!v30[3])
  {
    sub_1B9F7B644(v30);
    goto LABEL_9;
  }

  sub_1B9FCD918();
  type metadata accessor for SegmentedControlItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_1BA4A3E28();
    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      v30[0] = ObjectType;
      swift_getMetatypeMetadata();
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1B9F07000, v21, v22, "[%s]: Segmented control changed, but no viewmodel!", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v23, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return;
  }

  v11 = v29;
  v12 = v29[6];
  if (v12)
  {
    v12([a1 selectedSegmentIndex]);
  }

  sub_1B9F1D8D0(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5460;
  *(v13 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v13 + 40) = v14;
  *(v13 + 48) = 0xD00000000000001DLL;
  *(v13 + 56) = 0x80000001BA5034F0;
  v15 = sub_1BA4A6AE8();

  v16 = HKUIJoinStringsForAutomationIdentifier();

  [a1 setAccessibilityIdentifier_];
  v17 = *(v11 + 32);
  v18 = [a1 selectedSegmentIndex];
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v18 < *(v17 + 16))
  {
    v19 = *(v17 + 32 * v18 + 48);

    v19(v20);

    return;
  }

  __break(1u);
}

void sub_1BA3780F0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_segmentedControl);
  [v9 removeAllSegments];
  v10 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v10, v41);
  if (v41[3])
  {
    sub_1B9FCD918();
    type metadata accessor for SegmentedControlItem();
    if (swift_dynamicCast())
    {
      v35 = ObjectType;
      v36 = v4;
      v37 = v3;
      v38 = v8;
      v39 = v40;
      v11 = *(v40 + 32);
      v12 = *(v11 + 16);

      if (v12)
      {
        v13 = 0;
        v14 = v11 + 56;
        while (v13 < *(v11 + 16))
        {

          v15 = sub_1BA4A6758();
          [v9 insertSegmentWithTitle:v15 atIndex:v13 animated:0];

          v14 += 32;
          if (v12 == ++v13)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_7:

        v16 = v39;
        v17 = *(v39 + 40);
        if (v17 < 0 || v17 >= *(*(v39 + 32) + 16))
        {
          v18 = v38;
          sub_1BA4A3E28();

          v19 = sub_1BA4A3E88();
          v20 = sub_1BA4A6FA8();

          if (os_log_type_enabled(v19, v20))
          {
            v21 = v18;
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v40 = v23;
            *v22 = 136315650;
            v41[0] = v35;
            swift_getMetatypeMetadata();
            v24 = sub_1BA4A6808();
            v26 = sub_1B9F0B82C(v24, v25, &v40);

            *(v22 + 4) = v26;
            *(v22 + 12) = 2080;
            v41[0] = *(v16 + 40);
            v27 = sub_1BA4A82D8();
            v29 = sub_1B9F0B82C(v27, v28, &v40);

            *(v22 + 14) = v29;
            *(v22 + 22) = 2080;

            v31 = MEMORY[0x1BFAF1560](v30, &type metadata for SegmentedControlItem.Segment);
            v33 = v32;

            v34 = sub_1B9F0B82C(v31, v33, &v40);

            *(v22 + 24) = v34;
            _os_log_impl(&dword_1B9F07000, v19, v20, "[%s]: Incorrectly configured item: selectedIndex is %s, actions are %s", v22, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v23, -1, -1);
            MEMORY[0x1BFAF43A0](v22, -1, -1);

            (*(v36 + 8))(v21, v37);
          }

          else
          {

            (*(v36 + 8))(v18, v37);
          }
        }

        else
        {
          [v9 setSelectedSegmentIndex_];
        }
      }
    }
  }

  else
  {
    sub_1B9F7B644(v41);
  }
}

id SegmentedControlCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentedControlCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BA3785A0()
{
  result = qword_1EBBE9D98;
  if (!qword_1EBBE9D98)
  {
    type metadata accessor for SegmentedControlCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9D98);
  }

  return result;
}

unint64_t sub_1BA3785E8(uint64_t a1, uint64_t a2)
{
  result = qword_1EBBF1428;
  if (!qword_1EBBF1428)
  {
    type metadata accessor for SegmentedControlItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1428);
  }

  return result;
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.title.getter()
{
  v1 = *v0;

  return v1;
}

void FeatureInactiveWithNoDataTileView.ViewModel.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.imageRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel(0) + 20);
  v4 = sub_1BA4A2BF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel(uint64_t a1)
{
  result = qword_1EBBF1460;
  if (!qword_1EBBF1460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.imageRepresentation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel(0) + 20);
  v4 = sub_1BA4A2BF8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.body.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel(0) + 24));

  return v1;
}

void FeatureInactiveWithNoDataTileView.ViewModel.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.actionText.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel(0) + 28));

  return v1;
}

void FeatureInactiveWithNoDataTileView.ViewModel.actionText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.init(title:imageRepresentation:body:actionText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v14 = type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel(0);
  v15 = v14[5];
  v16 = sub_1BA4A2BF8();
  result = (*(*(v16 - 8) + 32))(&a8[v15], a3, v16);
  v18 = &a8[v14[6]];
  *v18 = a4;
  *(v18 + 1) = a5;
  v19 = &a8[v14[7]];
  *v19 = a6;
  *(v19 + 1) = a7;
  return result;
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.encode()()
{
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel(0);
  sub_1BA37AD08(&qword_1EBBF1430, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel, &protocol conformance descriptor for FeatureInactiveWithNoDataTileView.ViewModel);
  v0 = sub_1BA4A0EC8();

  return v0;
}

uint64_t static FeatureInactiveWithNoDataTileView.ViewModel.decode(from:)@<X0>(uint64_t a3@<X8>)
{
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  v4 = type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel(0);
  sub_1BA37AD08(&qword_1EBBEECA8, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel, &protocol conformance descriptor for FeatureInactiveWithNoDataTileView.ViewModel);
  sub_1BA4A0E98();

  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

unint64_t sub_1BA378E70()
{
  v1 = 0x656C746974;
  v2 = 2036625250;
  if (*v0 != 2)
  {
    v2 = 0x65546E6F69746361;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_1BA378EE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA37AA44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA378F10(uint64_t a1)
{
  v2 = sub_1BA3791B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA378F4C(uint64_t a1)
{
  v2 = sub_1BA3791B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureInactiveWithNoDataTileView.ViewModel.encode(to:)(void *a1)
{
  sub_1BA37962C(0, &qword_1EBBF1438, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA3791B4();
  sub_1BA4A8548();
  v10[15] = 0;
  sub_1BA4A8248();
  if (!v1)
  {
    type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel(0);
    v10[14] = 1;
    sub_1BA4A2BF8();
    sub_1BA37AD08(&qword_1EDC6AD68, MEMORY[0x1E69A32A0], MEMORY[0x1E69A32A8]);
    sub_1BA4A8288();
    v10[13] = 2;
    sub_1BA4A8248();
    v10[12] = 3;
    sub_1BA4A8248();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1BA3791B4()
{
  result = qword_1EBBF1440;
  if (!qword_1EBBF1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1440);
  }

  return result;
}

void FeatureInactiveWithNoDataTileView.ViewModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1BA4A2BF8();
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA37962C(0, &qword_1EBBF1448, MEMORY[0x1E69E6F48]);
  v30 = v7;
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA3791B4();
  v29 = v10;
  v15 = v31;
  sub_1BA4A8528();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = v27;
    v35 = 0;
    v17 = v14;
    *v14 = sub_1BA4A8188();
    v14[1] = v18;
    v31 = v18;
    v34 = 1;
    sub_1BA37AD08(&qword_1EDC6AD58, MEMORY[0x1E69A32A0], MEMORY[0x1E69A32B8]);
    sub_1BA4A81C8();
    (*(v16 + 32))(v14 + v11[5], v6, v3);
    v33 = 2;
    v19 = sub_1BA4A8188();
    v20 = (v14 + v11[6]);
    *v20 = v19;
    v20[1] = v21;
    v32 = 3;
    v22 = sub_1BA4A8188();
    v24 = v23;
    (*(v28 + 8))(v29, v30);
    v25 = (v17 + v11[7]);
    *v25 = v22;
    v25[1] = v24;
    sub_1BA3797E8(v17, v26, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1BA37A5A0(v17, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel);
  }
}

void sub_1BA37962C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA3791B4();
    v7 = a3(a1, &type metadata for FeatureInactiveWithNoDataTileView.ViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA3796E8(uint64_t a1, uint64_t *a2)
{
  sub_1BA3797E8(a1, v6, sub_1BA04B39C);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView_context;
  swift_beginAccess();
  sub_1BA0BACD4(v6, v3 + v4);
  swift_endAccess();
  sub_1BA379C5C();
  return sub_1BA37A5A0(v6, sub_1BA04B39C);
}

uint64_t sub_1BA37977C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView_context;
  swift_beginAccess();
  return sub_1BA3797E8(v1 + v3, a1, sub_1BA04B39C);
}

uint64_t sub_1BA3797E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA379850(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView_context;
  swift_beginAccess();
  sub_1BA0BACD4(a1, v1 + v3);
  swift_endAccess();
  sub_1BA379C5C();
  return sub_1BA37A5A0(a1, sub_1BA04B39C);
}

uint64_t (*sub_1BA3798D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA379934;
}

uint64_t sub_1BA379934(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA379C5C();
  }

  return result;
}

id sub_1BA379968()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView____lazy_storage___tileView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView____lazy_storage___tileView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView____lazy_storage___tileView);
  }

  else
  {
    type metadata accessor for MessageWithActionTileViewWithImage();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1BA3799FC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView_context];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView____lazy_storage___tileView] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for FeatureInactiveWithNoDataTileView();
  v10 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = sub_1BA379968();
  [v10 addSubview_];

  v12 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView____lazy_storage___tileView;
  [*&v10[OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView____lazy_storage___tileView] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v10[v12] hk:v10 alignConstraintsWithView:?];

  return v10;
}

id FeatureInactiveWithNoDataTileView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void FeatureInactiveWithNoDataTileView.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView_context;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView____lazy_storage___tileView) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA379C5C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v79 = *(v1 - 8);
  v80 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v78 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA37ABB4(0, &qword_1EBBF1488, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v69 - v6;
  v8 = type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel(0);
  v77 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v74 = (&v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureInactiveWithNoDataTileView_context;
  swift_beginAccess();
  v75 = v0;
  result = sub_1BA3797E8(v0 + v11, &v82, sub_1BA04B39C);
  v13 = *(&v83 + 1);
  if (!*(&v83 + 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v14 = v84;
  v15 = __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
  v16 = *(v13 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v15);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  v20 = (*(v14 + 8))(v13, v14);
  v22 = v21;
  (*(v16 + 8))(v19, v13);
  __swift_destroy_boxed_opaque_existential_1(&v82);
  if (v22 >> 60 != 15)
  {
    sub_1BA4A0EB8();
    swift_allocObject();
    sub_1BA4A0EA8();
    sub_1BA37AD08(&qword_1EBBEECA8, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel, &protocol conformance descriptor for FeatureInactiveWithNoDataTileView.ViewModel);
    sub_1BA4A0E98();

    (*(v77 + 56))(v7, 0, 1, v8);
    v31 = v74;
    sub_1BA37ACA4(v7, v74);
    v32 = sub_1BA4A2BB8();
    v80 = v32;
    if (!v32)
    {
      v80 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    }

    v78 = v22;
    v79 = v20;
    v33 = *v31;
    v72 = v31[1];
    v73 = v33;
    v34 = (v31 + *(v8 + 24));
    v35 = *v34;
    v36 = v34[1];
    v37 = (v31 + *(v8 + 28));
    v38 = v37[1];
    ObjectType = *v37;
    v77 = v35;
    result = sub_1BA3797E8(v75 + v11, v87, sub_1BA04B39C);
    v39 = v88;
    if (v88)
    {
      v40 = v89;
      v41 = __swift_project_boxed_opaque_existential_1(v87, v88);
      v71 = &v69;
      v42 = *(v39 - 8);
      v43 = MEMORY[0x1EEE9AC00](v41, v41);
      v45 = &v69 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v42 + 16))(v45, v43);
      v46 = *(v40 + 72);

      v47 = v46(v39, v40);
      v48 = v36;
      v50 = v49;
      (*(v42 + 8))(v45, v39);
      if (v50)
      {
        v51 = v47;
      }

      else
      {
        v51 = 0;
      }

      v70 = v51;
      if (v50)
      {
        v52 = v50;
      }

      else
      {
        v52 = 0xE000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(v87);
      v53 = objc_opt_self();
      v69 = [v53 clearColor];
      sub_1BA37ABB4(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BA4B5460;
      v55 = *MEMORY[0x1E69DB648];
      *(inited + 32) = *MEMORY[0x1E69DB648];
      v56 = *MEMORY[0x1E69DDCF8];
      v57 = *MEMORY[0x1E69DB980];
      v58 = v55;
      v59 = sub_1B9F6B774(v56, v57, 0, 0, 0, 0, 1);
      v60 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
      *(inited + 40) = v59;
      v61 = *MEMORY[0x1E69DB650];
      *(inited + 64) = v60;
      *(inited + 72) = v61;
      v62 = v61;
      v63 = [v53 labelColor];
      *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
      *(inited + 80) = v63;
      sub_1B9FDB1C4(inited);
      swift_setDeallocating();
      sub_1B9FE9628(0);
      swift_arrayDestroy();
      v64 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v65 = sub_1BA4A6758();
      type metadata accessor for Key(0);
      sub_1BA37AD08(&qword_1EDC5E3D0, type metadata accessor for Key, &unk_1BA4B4408);
      v66 = sub_1BA4A6618();

      v67 = [v64 initWithString:v65 attributes:v66];

      *&v82 = v80;
      *(&v82 + 1) = v67;
      *&v83 = v77;
      *(&v83 + 1) = v48;
      *&v84 = ObjectType;
      *(&v84 + 1) = v38;
      LOBYTE(v85) = 0;
      *(&v85 + 1) = v69;
      *&v86 = v70;
      *(&v86 + 1) = v52;
      v68 = sub_1BA379968();
      v81[2] = v84;
      v81[3] = v85;
      v81[4] = v86;
      v81[0] = v82;
      v81[1] = v83;
      (*((*MEMORY[0x1E69E7D40] & *v68) + 0xF8))(v81);
      sub_1B9F6AC8C(v79, v78);

      sub_1BA37A5A0(v74, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel);
      return sub_1BA37AD50(&v82);
    }

LABEL_19:
    __break(1u);
    return result;
  }

  v23 = v78;
  sub_1BA4A3DD8();
  v24 = sub_1BA4A3E88();
  v25 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v82 = v27;
    *v26 = 136315138;
    v28 = sub_1BA4A85D8();
    v30 = sub_1B9F0B82C(v28, v29, &v82);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1B9F07000, v24, v25, "[%s] Error occurred while decoding the user data.", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1BFAF43A0](v27, -1, -1);
    MEMORY[0x1BFAF43A0](v26, -1, -1);
  }

  return (*(v79 + 8))(v23, v80);
}

uint64_t sub_1BA37A5A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id FeatureInactiveWithNoDataTileView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureInactiveWithNoDataTileView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA37A658(uint64_t a1)
{
  *(a1 + 16) = sub_1BA37AD08(&qword_1EBBEECA8, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel, &protocol conformance descriptor for FeatureInactiveWithNoDataTileView.ViewModel);
  result = sub_1BA37AD08(&qword_1EBBF1430, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel, &protocol conformance descriptor for FeatureInactiveWithNoDataTileView.ViewModel);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1BA37A8A8(uint64_t a1)
{
  result = sub_1BA4A2BF8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BA37A940()
{
  result = qword_1EBBF1470;
  if (!qword_1EBBF1470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1470);
  }

  return result;
}

unint64_t sub_1BA37A998()
{
  result = qword_1EBBF1478;
  if (!qword_1EBBF1478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1478);
  }

  return result;
}

unint64_t sub_1BA37A9F0()
{
  result = qword_1EBBF1480;
  if (!qword_1EBBF1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1480);
  }

  return result;
}

uint64_t sub_1BA37AA44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4E1630 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65546E6F69746361 && a2 == 0xEA00000000007478)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BA4A8338();

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

void sub_1BA37ABB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA37AC18(uint64_t a1)
{
  sub_1BA37ABB4(0, &qword_1EBBF1488, type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA37ACA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureInactiveWithNoDataTileView.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA37AD08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall UINavigationController.restoreUserActivityState(_:)(NSUserActivity a1)
{
  v3 = [v1 viewControllers];
  sub_1B9F21ADC();
  v4 = sub_1BA4A6B08();

  if (v4 >> 62)
  {
    if (sub_1BA4A7CC8())
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1BFAF2860](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  [v6 restoreUserActivityState_];
}

void sub_1BA37AEC0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = a1;
  v5 = [v9 viewControllers];
  sub_1B9F21ADC();
  v6 = sub_1BA4A6B08();

  if (v6 >> 62)
  {
    if (sub_1BA4A7CC8())
    {
      goto LABEL_3;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1BFAF2860](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  [v8 restoreUserActivityState_];

LABEL_9:
}

Swift::String_optional __swiftcall UINavigationController.rootViewControllerType()()
{
  v1 = [v0 viewControllers];
  sub_1B9F21ADC();
  v2 = sub_1BA4A6B08();

  if (v2 >> 62)
  {
    v4 = sub_1BA4A7CC8();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    v7 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1BFAF2860](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_12;
    }

    v5 = *(v2 + 32);
  }

  v6 = v5;

  swift_getObjectType();
  sub_1B9FE957C();
  v7 = sub_1BA4A6808();
  v9 = v8;

LABEL_9:
  v4 = v7;
  v3 = v9;
LABEL_12:
  result.value._object = v3;
  result.value._countAndFlagsBits = v4;
  return result;
}

void sub_1BA37B0E4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a2;
  v52 = a3;
  v6 = sub_1BA4A6488();
  v49 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A6478();
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A64C8();
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A64F8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = (&v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v21 = sub_1BA4A7308();
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17);
  v22 = sub_1BA4A6528();
  (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v23 = *(v4 + 24);
  if (!v23)
  {
LABEL_8:
    v30 = sub_1BA4A7308();
    v37 = swift_allocObject();
    v38 = v52;
    *(v37 + 16) = v51;
    *(v37 + 24) = v38;
    v62 = sub_1BA37C404;
    v63 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v59 = 1107296256;
    v60 = sub_1B9F0B040;
    v61 = &block_descriptor_101;
    v39 = _Block_copy(&aBlock);

    sub_1BA4A64A8();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1B9F3F378(0);
    sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
    v35 = v50;
    v36 = v56;
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v16, v35, v39);
    _Block_release(v39);
    goto LABEL_9;
  }

  v24 = [v23 pageCount];
  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (v24 <= a1)
  {
    goto LABEL_8;
  }

  swift_beginAccess();
  v25 = *(v4 + 32);
  if (*(v25 + 16))
  {
    v26 = sub_1B9FDA928(a1);
    if (v27)
    {
      v28 = *(*(v25 + 56) + 8 * v26);
      swift_endAccess();
      v29 = v28;
      v30 = sub_1BA4A7308();
      v31 = swift_allocObject();
      v32 = v52;
      v31[2] = v51;
      v31[3] = v32;
      v31[4] = v29;
      v62 = sub_1BA37C43C;
      v63 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v59 = 1107296256;
      v60 = sub_1B9F0B040;
      v61 = &block_descriptor_17_0;
      v33 = _Block_copy(&aBlock);
      v34 = v29;

      sub_1BA4A64A8();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1B9F3F378(0);
      sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
      v35 = v50;
      v36 = v56;
      sub_1BA4A7C38();
      MEMORY[0x1BFAF1D50](0, v16, v35, v33);
      _Block_release(v33);

LABEL_9:
      (*(v55 + 8))(v35, v36);
      (*(v53 + 8))(v16, v54);
      return;
    }
  }

  swift_endAccess();
  v40 = v49;
  (*(v49 + 104))(v9, *MEMORY[0x1E69E7F98], v6);
  v41 = sub_1BA4A7338();
  (*(v40 + 8))(v9, v6);
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = a1;
  v44 = v52;
  v43[4] = v51;
  v43[5] = v44;
  v62 = sub_1BA37C430;
  v63 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v59 = 1107296256;
  v60 = sub_1B9F0B040;
  v61 = &block_descriptor_11_2;
  v45 = _Block_copy(&aBlock);

  sub_1BA4A64A8();
  v57 = MEMORY[0x1E69E7CC0];
  sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B9F3F378(0);
  sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
  v46 = v50;
  v47 = v56;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v16, v46, v45);
  _Block_release(v45);

  (*(v55 + 8))(v46, v47);
  (*(v53 + 8))(v16, v54);
}

void *PDFImagePreviews.__allocating_init(document:cacheSize:)(void *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1BA37C300(a1, a2);

  return v4;
}

void *PDFImagePreviews.init(document:cacheSize:)(void *a1, uint64_t a2)
{
  v3 = sub_1BA37C300(a1, a2);

  return v3;
}

uint64_t sub_1BA37B9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v7 = sub_1BA4A6478();
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BA4A64C8();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v15 = *(Strong + 24), v16 = v15, , v15) && (v17 = [v16 pageAtIndex_], v16, v17))
  {
    sub_1BA37BD84();
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v20 = sub_1BA4A7308();
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = v19;
  v21[4] = a2;
  v21[5] = a3;
  v21[6] = v27;
  aBlock[4] = sub_1BA37C46C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_23_1;
  v22 = _Block_copy(aBlock);
  v23 = v19;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B9F3F378(0);
  sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v13, v10, v22);
  _Block_release(v22);

  (*(v29 + 8))(v10, v7);
  return (*(v26 + 8))(v13, v28);
}

void sub_1BA37BD84()
{
  [v0 boundsForBox_];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v10 = swift_allocObject();
  *(v10 + 2) = v2;
  *(v10 + 3) = v4;
  v10[4] = v6;
  v10[5] = v8;
  *(v10 + 6) = v0;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1BA37C47C;
  *(v11 + 24) = v10;
  v14[4] = sub_1BA37C48C;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1BA20E308;
  v14[3] = &block_descriptor_32_0;
  v12 = _Block_copy(v14);
  v13 = v0;

  [v9 imageWithActions_];

  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }
}

uint64_t sub_1BA37BF48(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a2)
    {
      v7 = a2;
      sub_1BA37BFF4(a3, v7);
    }

    else
    {
    }
  }

  return a4(a2);
}

uint64_t sub_1BA37BFF4(uint64_t a1, void *a2)
{
  v7 = v3[6];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v3;
  v8 = v3[5];
  if (v7 >= *(v8 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = a2;
  v4 = a1;
  v9 = *(v8 + 8 * v7 + 32);
  swift_beginAccess();
  sub_1B9FEF934(0, v9);
  v3 = v3[5];
  v6 = v2[6];
  result = swift_isUniquelyReferenced_nonNull_native();
  v2[5] = v3;
  if (result)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_13:
  result = sub_1BA2F6874(v3);
  v3 = result;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v6 >= v3[2])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3[v6 + 4] = v4;
  v2[5] = v3;
  v11 = v2[6];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v2[2];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v13 != 0x8000000000000000 || v14 != -1)
  {
    v2[6] = v13 % v14;
    v15 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v2[4];
    v2[4] = 0x8000000000000000;
    sub_1B9FF23EC(v15, v4, isUniquelyReferenced_nonNull_native);
    v2[4] = v17;
    return swift_endAccess();
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t PDFImagePreviews.deinit()
{

  return v0;
}

uint64_t PDFImagePreviews.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1BA37C1C0(void *a1, void *a2, double a3, double a4, double a5, CGFloat a6)
{
  v12 = [objc_opt_self() whiteColor];
  [v12 set];

  [a1 fillRect_];
  v13 = [a1 CGContext];
  CGContextTranslateCTM(v13, 0.0, a6);

  v14 = [a1 CGContext];
  CGContextScaleCTM(v14, 1.0, -1.0);

  v15 = [a1 CGContext];
  [a2 drawWithBox:0 toContext:v15];
}

void *sub_1BA37C300(void *result, uint64_t a2)
{
  v2[6] = 0;
  v2[2] = a2;
  v2[3] = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a2)
    {
      v5 = sub_1BA4A6B98();
      *(v5 + 16) = a2;
      memset((v5 + 32), 255, 8 * a2);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v2[5] = v5;
    v6 = sub_1B9F0ADF8(0, &qword_1EDC6E370, 0x1E69DCAB8);
    v2[4] = MEMORY[0x1BFAF1080](a2, MEMORY[0x1E69E6530], v6, MEMORY[0x1E69E6540]);
    return v2;
  }

  return result;
}

uint64_t sub_1BA37C4A8(void *a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v114 = a5;
  v115 = a6;
  v111 = a3;
  v112 = a1;
  v97 = a2;
  sub_1BA142AEC();
  v109 = *(v7 - 8);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v106 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3EA8();
  v99 = *(v10 - 8);
  v100 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142B40(0);
  v101 = *(v14 - 8);
  v102 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142C90(0);
  v103 = *(v18 - 8);
  v104 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3805C4(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v95 - v24;
  sub_1BA142D3C(0);
  v27 = v26;
  v98 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142F4C(0);
  v107 = *(v31 - 8);
  v108 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v105 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1431B4(0);
  v35 = v34;
  v96 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v95 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1BA4A1798();
  *&v41 = MEMORY[0x1EEE9AC00](v39 - 8, v40).n128_u64[0];
  v43 = &v95 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v50 = objc_allocWithZone(MEMORY[0x1E696C408]);
      v51 = [v50 initWithHealthStore_];
      v52 = HKSharedSummaryCloudSyncManager.fetchProfileInformation()();

      v117 = v52;
      sub_1B9F38BF4();
      v53 = sub_1BA4A7308();
      v116 = v53;
      v54 = sub_1BA4A72A8();
      (*(*(v54 - 8) + 56))(v25, 1, 1, v54);
      sub_1BA1DAF04(0);
      sub_1BA380690(&qword_1EBBEC778, sub_1BA1DAF04, MEMORY[0x1E695C038]);
      sub_1BA380690(&qword_1EDC6B5B0, sub_1B9F38BF4, MEMORY[0x1E69E8028]);
      sub_1BA4A50A8();
      sub_1BA3808F8(v25, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1BA3805C4);

      sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
      sub_1BA380690(&qword_1EBBEC780, sub_1BA142D3C, MEMORY[0x1E695BE98]);
      sub_1BA4A4FE8();
      sub_1BA380690(&qword_1EBBEC7C8, sub_1BA142C90, MEMORY[0x1E695BD60]);
      v55 = v104;
      v56 = sub_1BA4A4F98();
      (*(v103 + 8))(v21, v55);
      (*(v98 + 8))(v30, v27);
      v117 = v56;
      v57 = swift_allocObject();
      v59 = v111;
      v58 = v112;
      *(v57 + 16) = v112;
      *(v57 + 24) = v59;
      sub_1BA3806D8(0);
      sub_1BA1430C4(0);
      v60 = MEMORY[0x1E695BED8];
      sub_1BA380690(&qword_1EBBEC7A0, sub_1BA3806D8, MEMORY[0x1E695BED8]);
      sub_1BA380690(&qword_1EBBEC7A8, sub_1BA1430C4, v60);
      v61 = v58;
      v62 = v59;
      v63 = v105;
      sub_1BA4A5018();

      sub_1BA380690(&qword_1EBBEC7D0, sub_1BA142F4C, MEMORY[0x1E695BDA0]);
      v64 = v108;
      v49 = sub_1BA4A4F98();
      (*(v107 + 8))(v63, v64);

      v65 = &selRef_systemWhiteColor;
LABEL_13:
      v81 = [objc_opt_self() *v65];
      v82 = [v113 navigationItem];
      v83 = objc_allocWithZone(type metadata accessor for TitleWithSubHeadingView());
      v84 = v81;
      v85 = [v83 initWithFrame_];
      v86 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel;
      [*&v85[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel] setText_];
      v87 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel;
      [*&v85[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel] setText_];
      v88 = *&v85[v86];
      v89 = v84;
      [v88 setTextColor_];
      v90 = *&v85[v87];
      [v90 setTextColor_];

      [v82 setTitleView_];
      v117 = v49;
      v91 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v92 = swift_allocObject();
      v93 = v114;
      v92[2] = v91;
      v92[3] = v93;
      v92[4] = v115;
      sub_1BA1430C4(0);
      sub_1BA380690(&qword_1EBBEC7A8, sub_1BA1430C4, MEMORY[0x1E695BED8]);

      v75 = sub_1BA4A5148();

      return v75;
    }

    v76 = [v111 identifier];
    sub_1BA4A1778();

    type metadata accessor for SharingEntryProfileInformationDataSource(0);
    swift_allocObject();
    v117 = *(sub_1BA19BEB8(v112, v43, 0, 0, 0, 0) + qword_1EDC6A560);
    v77 = MEMORY[0x1E69A3430];
    v78 = MEMORY[0x1E695BF98];
    sub_1BA380808(0, &qword_1EBBEE020, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E695BF98]);
    sub_1BA380894(&qword_1EBBEB080, &qword_1EBBEE020, v78, MEMORY[0x1E695BFB0]);
    v117 = sub_1BA4A4F98();
    v79 = MEMORY[0x1E695BED0];
    sub_1BA380808(0, &unk_1EBBEE000, &qword_1EBBEA318, v77, MEMORY[0x1E695BED0]);
    sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
    sub_1BA380894(&qword_1EBBEE010, &unk_1EBBEE000, v79, MEMORY[0x1E695BED8]);
    sub_1BA4A4FE8();
    sub_1BA380690(&qword_1EBBEC7D8, sub_1BA1431B4, MEMORY[0x1E695BD60]);
    v49 = sub_1BA4A4F98();

    (*(v96 + 8))(v38, v35);
LABEL_10:
    v80 = sub_1BA4A8338();

    if (v80)
    {
      v65 = &selRef_systemWhiteColor;
    }

    else
    {
      v65 = &selRef_labelColor;
    }

    goto LABEL_13;
  }

  if (!a4)
  {
    type metadata accessor for HealthKitProfileInformationDataSource(0);
    swift_allocObject();
    v44 = v112;
    v117 = *(sub_1BA2B8F0C(v44, v111, 0, 0, 0, 0) + qword_1EDC6A560);
    v45 = MEMORY[0x1E69A3108];
    v46 = MEMORY[0x1E695BF98];
    sub_1BA380808(0, &qword_1EDC6B720, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E695BF98]);
    sub_1BA380774(&qword_1EDC6B730, &qword_1EDC6B720, v46, MEMORY[0x1E695BFB0]);
    v117 = sub_1BA4A4F98();
    v47 = MEMORY[0x1E695BED0];
    sub_1BA380808(0, &qword_1EDC6B738, &qword_1EDC6E200, v45, MEMORY[0x1E695BED0]);
    sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
    sub_1BA380774(&qword_1EDC6B740, &qword_1EDC6B738, v47, MEMORY[0x1E695BED8]);
    sub_1BA4A4FE8();
    sub_1BA380690(&qword_1EBBEC7C0, sub_1BA142B40, MEMORY[0x1E695BD60]);
    v48 = v102;
    v49 = sub_1BA4A4F98();

    (*(v101 + 8))(v17, v48);
    goto LABEL_10;
  }

  sub_1BA4A3DD8();
  v66 = sub_1BA4A3E88();
  v67 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v117 = v69;
    *v68 = 136315138;
    v116 = type metadata accessor for DataTypeDetailViewController();
    sub_1BA380958(0, &qword_1EDC646D8, 255, type metadata accessor for DataTypeDetailViewController);
    v70 = sub_1BA4A6808();
    v72 = sub_1B9F0B82C(v70, v71, &v117);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_1B9F07000, v66, v67, "[%s]: Asking for profile context for the primary profile; why?", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x1BFAF43A0](v69, -1, -1);
    MEMORY[0x1BFAF43A0](v68, -1, -1);
  }

  (*(v99 + 8))(v13, v100);
  v73 = v106;
  sub_1BA4A4E78();
  sub_1BA380690(&qword_1EBBEC7B8, sub_1BA142AEC, MEMORY[0x1E695C008]);
  v74 = v110;
  v75 = sub_1BA4A5148();
  (*(v109 + 8))(v73, v74);
  return v75;
}

uint64_t sub_1BA37D5B4(void *a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v115 = a5;
  v116 = a6;
  v112 = a3;
  v113 = a1;
  v98 = a2;
  sub_1BA142AEC();
  v111 = v7;
  v109 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v107 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3EA8();
  v100 = *(v10 - 8);
  v101 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142B40(0);
  v102 = *(v14 - 8);
  v103 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142C90(0);
  v104 = *(v18 - 8);
  v105 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3805C4(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v96 - v24;
  sub_1BA142D3C(0);
  v27 = v26;
  v99 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA142F4C(0);
  v110 = v31;
  v108 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v106 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1431B4(0);
  v35 = v34;
  v97 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1BA4A1798();
  *&v41 = MEMORY[0x1EEE9AC00](v39 - 8, v40).n128_u64[0];
  v43 = &v96 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v50 = objc_allocWithZone(MEMORY[0x1E696C408]);
      v51 = [v50 initWithHealthStore_];
      v52 = HKSharedSummaryCloudSyncManager.fetchProfileInformation()();

      v118 = v52;
      sub_1B9F38BF4();
      v53 = sub_1BA4A7308();
      v117 = v53;
      v54 = sub_1BA4A72A8();
      (*(*(v54 - 8) + 56))(v25, 1, 1, v54);
      sub_1BA1DAF04(0);
      sub_1BA380690(&qword_1EBBEC778, sub_1BA1DAF04, MEMORY[0x1E695C038]);
      sub_1BA380690(&qword_1EDC6B5B0, sub_1B9F38BF4, MEMORY[0x1E69E8028]);
      sub_1BA4A50A8();
      sub_1BA3808F8(v25, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1BA3805C4);

      sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
      sub_1BA380690(&qword_1EBBEC780, sub_1BA142D3C, MEMORY[0x1E695BE98]);
      sub_1BA4A4FE8();
      sub_1BA380690(&qword_1EBBEC7C8, sub_1BA142C90, MEMORY[0x1E695BD60]);
      v55 = v105;
      v56 = sub_1BA4A4F98();
      (*(v104 + 8))(v21, v55);
      (*(v99 + 8))(v30, v27);
      v118 = v56;
      v57 = swift_allocObject();
      v59 = v112;
      v58 = v113;
      *(v57 + 16) = v113;
      *(v57 + 24) = v59;
      sub_1BA3806D8(0);
      sub_1BA1430C4(0);
      v60 = MEMORY[0x1E695BED8];
      sub_1BA380690(&qword_1EBBEC7A0, sub_1BA3806D8, MEMORY[0x1E695BED8]);
      sub_1BA380690(&qword_1EBBEC7A8, sub_1BA1430C4, v60);
      v61 = v58;
      v62 = v59;
      v63 = v106;
      sub_1BA4A5018();

      sub_1BA380690(&qword_1EBBEC7D0, sub_1BA142F4C, MEMORY[0x1E695BDA0]);
      v64 = v110;
      v49 = sub_1BA4A4F98();
      (*(v108 + 8))(v63, v64);

      v65 = &selRef_systemWhiteColor;
LABEL_13:
      v82 = [objc_opt_self() *v65];
      v83 = [v114 navigationItem];
      v84 = objc_allocWithZone(type metadata accessor for TitleWithSubHeadingView());
      v85 = v82;
      v86 = [v84 initWithFrame_];
      v87 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel;
      [*&v86[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel] setText_];
      v88 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel;
      [*&v86[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel] setText_];
      v89 = *&v86[v87];
      v90 = v85;
      [v89 setTextColor_];
      v91 = *&v86[v88];
      [v91 setTextColor_];

      [v83 setTitleView_];
      v118 = v49;
      v92 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v93 = swift_allocObject();
      v94 = v115;
      v93[2] = v92;
      v93[3] = v94;
      v93[4] = v116;
      sub_1BA1430C4(0);
      sub_1BA380690(&qword_1EBBEC7A8, sub_1BA1430C4, MEMORY[0x1E695BED8]);

      v76 = sub_1BA4A5148();

      return v76;
    }

    v77 = [v112 identifier];
    sub_1BA4A1778();

    type metadata accessor for SharingEntryProfileInformationDataSource(0);
    swift_allocObject();
    v118 = *(sub_1BA19BEB8(v113, v43, 0, 0, 0, 0) + qword_1EDC6A560);
    v78 = MEMORY[0x1E69A3430];
    v79 = MEMORY[0x1E695BF98];
    sub_1BA380808(0, &qword_1EBBEE020, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E695BF98]);
    sub_1BA380894(&qword_1EBBEB080, &qword_1EBBEE020, v79, MEMORY[0x1E695BFB0]);
    v118 = sub_1BA4A4F98();
    v80 = MEMORY[0x1E695BED0];
    sub_1BA380808(0, &unk_1EBBEE000, &qword_1EBBEA318, v78, MEMORY[0x1E695BED0]);
    sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
    sub_1BA380894(&qword_1EBBEE010, &unk_1EBBEE000, v80, MEMORY[0x1E695BED8]);
    sub_1BA4A4FE8();
    sub_1BA380690(&qword_1EBBEC7D8, sub_1BA1431B4, MEMORY[0x1E695BD60]);
    v49 = sub_1BA4A4F98();

    (*(v97 + 8))(v38, v35);
LABEL_10:
    v81 = sub_1BA4A8338();

    if (v81)
    {
      v65 = &selRef_systemWhiteColor;
    }

    else
    {
      v65 = &selRef_labelColor;
    }

    goto LABEL_13;
  }

  if (!a4)
  {
    type metadata accessor for HealthKitProfileInformationDataSource(0);
    swift_allocObject();
    v44 = v113;
    v118 = *(sub_1BA2B8F0C(v44, v112, 0, 0, 0, 0) + qword_1EDC6A560);
    v45 = MEMORY[0x1E69A3108];
    v46 = MEMORY[0x1E695BF98];
    sub_1BA380808(0, &qword_1EDC6B720, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E695BF98]);
    sub_1BA380774(&qword_1EDC6B730, &qword_1EDC6B720, v46, MEMORY[0x1E695BFB0]);
    v118 = sub_1BA4A4F98();
    v47 = MEMORY[0x1E695BED0];
    sub_1BA380808(0, &qword_1EDC6B738, &qword_1EDC6E200, v45, MEMORY[0x1E695BED0]);
    sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
    sub_1BA380774(&qword_1EDC6B740, &qword_1EDC6B738, v47, MEMORY[0x1E695BED8]);
    sub_1BA4A4FE8();
    sub_1BA380690(&qword_1EBBEC7C0, sub_1BA142B40, MEMORY[0x1E695BD60]);
    v48 = v103;
    v49 = sub_1BA4A4F98();

    (*(v102 + 8))(v17, v48);
    goto LABEL_10;
  }

  sub_1BA4A3DD8();
  v66 = sub_1BA4A3E88();
  v67 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v118 = v69;
    *v68 = 136315138;
    v117 = type metadata accessor for AllTrendsViewController();
    sub_1BA380958(0, &qword_1EBBF14B8, v70, type metadata accessor for AllTrendsViewController);
    v71 = sub_1BA4A6808();
    v73 = sub_1B9F0B82C(v71, v72, &v118);

    *(v68 + 4) = v73;
    _os_log_impl(&dword_1B9F07000, v66, v67, "[%s]: Asking for profile context for the primary profile; why?", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x1BFAF43A0](v69, -1, -1);
    MEMORY[0x1BFAF43A0](v68, -1, -1);
  }

  (*(v100 + 8))(v13, v101);
  v74 = v107;
  sub_1BA4A4E78();
  sub_1BA380690(&qword_1EBBEC7B8, sub_1BA142AEC, MEMORY[0x1E695C008]);
  v75 = v111;
  v76 = sub_1BA4A5148();
  (*(v109 + 8))(v74, v75);
  return v76;
}

uint64_t sub_1BA37E6C0(void *a1, void *a2, void *a3)
{
  sub_1BA142B40(0);
  v7 = v6;
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E28();
  v15 = a1;
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v41 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v40 = a3;
    v21 = v20;
    v45 = v20;
    *v19 = 136315394;
    v44 = type metadata accessor for DataTypeDetailViewController();
    sub_1BA380958(0, &qword_1EDC646D8, 255, type metadata accessor for DataTypeDetailViewController);
    v22 = sub_1BA4A6808();
    v39 = v10;
    v24 = sub_1B9F0B82C(v22, v23, &v45);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v44 = a1;
    v25 = a1;
    sub_1B9F0D9AC(0, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
    v26 = sub_1BA4A6808();
    v28 = sub_1B9F0B82C(v26, v27, &v45);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_1B9F07000, v16, v17, "[%s]: Unable to fetch iCloud name for profile context: %s", v19, 0x16u);
    swift_arrayDestroy();
    v29 = v21;
    a3 = v40;
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    v30 = v19;
    v7 = v41;
    MEMORY[0x1BFAF43A0](v30, -1, -1);

    (*(v11 + 8))(v14, v39);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  type metadata accessor for HealthKitProfileInformationDataSource(0);
  swift_allocObject();
  v45 = *(sub_1BA2B8F0C(a2, a3, 0, 0, 0, 0) + qword_1EDC6A560);
  v31 = MEMORY[0x1E69A3108];
  v32 = MEMORY[0x1E695BF98];
  sub_1BA380808(0, &qword_1EDC6B720, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E695BF98]);
  sub_1BA380774(&qword_1EDC6B730, &qword_1EDC6B720, v32, MEMORY[0x1E695BFB0]);

  v33 = sub_1BA4A4F98();

  v45 = v33;
  v34 = MEMORY[0x1E695BED0];
  sub_1BA380808(0, &qword_1EDC6B738, &qword_1EDC6E200, v31, MEMORY[0x1E695BED0]);
  sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
  sub_1BA380774(&qword_1EDC6B740, &qword_1EDC6B738, v34, MEMORY[0x1E695BED8]);
  v35 = v42;
  sub_1BA4A4FE8();
  sub_1BA380690(&qword_1EBBEC7C0, sub_1BA142B40, MEMORY[0x1E695BD60]);
  v36 = sub_1BA4A4F98();

  (*(v43 + 8))(v35, v7);
  return v36;
}

uint64_t sub_1BA37EBEC(void *a1, void *a2, void *a3)
{
  sub_1BA142B40(0);
  v7 = v6;
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E28();
  v15 = a1;
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v42 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v41 = a3;
    v21 = v20;
    v46 = v20;
    *v19 = 136315394;
    v45 = type metadata accessor for AllTrendsViewController();
    sub_1BA380958(0, &qword_1EBBF14B8, v22, type metadata accessor for AllTrendsViewController);
    v23 = sub_1BA4A6808();
    v40 = v10;
    v25 = sub_1B9F0B82C(v23, v24, &v46);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v45 = a1;
    v26 = a1;
    sub_1B9F0D9AC(0, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
    v27 = sub_1BA4A6808();
    v29 = sub_1B9F0B82C(v27, v28, &v46);

    *(v19 + 14) = v29;
    _os_log_impl(&dword_1B9F07000, v16, v17, "[%s]: Unable to fetch iCloud name for profile context: %s", v19, 0x16u);
    swift_arrayDestroy();
    v30 = v21;
    a3 = v41;
    MEMORY[0x1BFAF43A0](v30, -1, -1);
    v31 = v19;
    v7 = v42;
    MEMORY[0x1BFAF43A0](v31, -1, -1);

    (*(v11 + 8))(v14, v40);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  type metadata accessor for HealthKitProfileInformationDataSource(0);
  swift_allocObject();
  v46 = *(sub_1BA2B8F0C(a2, a3, 0, 0, 0, 0) + qword_1EDC6A560);
  v32 = MEMORY[0x1E69A3108];
  v33 = MEMORY[0x1E695BF98];
  sub_1BA380808(0, &qword_1EDC6B720, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E695BF98]);
  sub_1BA380774(&qword_1EDC6B730, &qword_1EDC6B720, v33, MEMORY[0x1E695BFB0]);

  v34 = sub_1BA4A4F98();

  v46 = v34;
  v35 = MEMORY[0x1E695BED0];
  sub_1BA380808(0, &qword_1EDC6B738, &qword_1EDC6E200, v32, MEMORY[0x1E695BED0]);
  sub_1B9F0CE40(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
  sub_1BA380774(&qword_1EDC6B740, &qword_1EDC6B738, v35, MEMORY[0x1E695BED8]);
  v36 = v43;
  sub_1BA4A4FE8();
  sub_1BA380690(&qword_1EBBEC7C0, sub_1BA142B40, MEMORY[0x1E695BD60]);
  v37 = sub_1BA4A4F98();

  (*(v44 + 8))(v36, v7);
  return v37;
}

double sub_1BA37F110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v26 = a4;
  sub_1BA3805C4(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v27[-1] - v9;
  v11 = sub_1BA4A33C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v27[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA071040(a1, v27);
  v16 = v28;
  if (v28)
  {
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v17 = sub_1BA4A2AB8();
    v16 = v18;
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_1BA3808F8(v27, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], sub_1B9F0CE40);
    v17 = 0;
  }

  sub_1BA071040(a1, v27);
  if (!v28)
  {
    sub_1BA3808F8(v27, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], sub_1B9F0CE40);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_8;
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], 1);
  v19 = swift_dynamicCast();
  (*(v12 + 56))(v10, v19 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_8:
    sub_1BA3808F8(v10, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720], sub_1BA3805C4);
    goto LABEL_9;
  }

  (*(v12 + 32))(v15, v10, v11);
  v17 = sub_1BA4A3328();
  v16 = v20;
  (*(v12 + 8))(v15, v11);
LABEL_9:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = [Strong navigationItem];

    v24 = [v23 titleView];
    if (v24)
    {
      type metadata accessor for TitleWithSubHeadingView();
      if (swift_dynamicCastClass())
      {
        sub_1BA31BD44(a3, v26, v17, v16);
      }
    }
  }

  return result;
}

char *AllTrendsViewController.__allocating_init(healthStore:healthExperienceStore:additionalPredicates:presentation:customProvenance:)(void *a1, void *a2, unint64_t a3, char *a4, unint64_t a5, unint64_t a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  v15 = *a4;
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_cancellables] = MEMORY[0x1E69E7CD0];
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthStore] = a1;
  sub_1B9F0A534(a2, &v14[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthExperienceStore]);
  if (!a6)
  {
    LOBYTE(v32[0]) = v15;
    a5 = Presentation.description.getter();
    a6 = v16;
  }

  v17 = &v14[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_provenance];
  *v17 = a5;
  *(v17 + 1) = a6;
  sub_1B9F0A534(a2, v32);
  type metadata accessor for AllTrendsDataSource(0);
  swift_allocObject();
  sub_1B9F0A534(v32, v31);
  v30 = v15;
  type metadata accessor for AllTrendsHeaderDataSource(0);
  swift_allocObject();
  v18 = a1;
  v19 = sub_1BA297AC0(v18, v31, &v30);

  sub_1B9F0A534(v32, v31);
  type metadata accessor for AllTrendsSectionedDataSource(0);
  swift_allocObject();
  v20 = v18;
  v21 = sub_1BA296558(v20, v31, a3);
  type metadata accessor for NoDataDataSource(0);
  swift_allocObject();

  v22 = NoDataDataSource.init()();
  sub_1BA1E8DB4(0);
  swift_allocObject();
  v24 = sub_1BA063C54(v23, v21, v22);

  swift_beginAccess();
  v24[5] = sub_1BA29613C;
  v24[6] = 0;

  sub_1B9F1DEA0(0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BA4B5460;
  *(v25 + 32) = v19;
  *(v25 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v25 + 48) = v24;
  *(v25 + 56) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  v26 = CompoundSectionedDataSource.init(_:)(v25);

  __swift_destroy_boxed_opaque_existential_1(v32);
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_trendDataSource] = v26;

  v28 = CompoundDataSourceCollectionViewController.init(dataSource:)(v27);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v28;
}

char *AllTrendsViewController.init(healthStore:healthExperienceStore:additionalPredicates:presentation:customProvenance:)(void *a1, void *a2, unint64_t a3, char *a4, unint64_t a5, unint64_t a6)
{
  v7 = v6;
  v13 = *a4;
  *(v7 + OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v7 + OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthStore) = a1;
  sub_1B9F0A534(a2, v7 + OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthExperienceStore);
  if (!a6)
  {
    LOBYTE(v30[0]) = v13;
    a5 = Presentation.description.getter();
    a6 = v14;
  }

  v15 = (v7 + OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_provenance);
  *v15 = a5;
  v15[1] = a6;
  sub_1B9F0A534(a2, v30);
  type metadata accessor for AllTrendsDataSource(0);
  swift_allocObject();
  sub_1B9F0A534(v30, v29);
  v28 = v13;
  type metadata accessor for AllTrendsHeaderDataSource(0);
  swift_allocObject();
  v16 = a1;
  v17 = sub_1BA297AC0(v16, v29, &v28);

  sub_1B9F0A534(v30, v29);
  type metadata accessor for AllTrendsSectionedDataSource(0);
  swift_allocObject();
  v18 = v16;
  v19 = sub_1BA296558(v18, v29, a3);
  type metadata accessor for NoDataDataSource(0);
  swift_allocObject();

  v20 = NoDataDataSource.init()();
  sub_1BA1E8DB4(0);
  swift_allocObject();
  v22 = sub_1BA063C54(v21, v19, v20);

  swift_beginAccess();
  v22[5] = sub_1BA29613C;
  v22[6] = 0;

  sub_1B9F1DEA0(0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BA4B5460;
  *(v23 + 32) = v17;
  *(v23 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v23 + 48) = v22;
  *(v23 + 56) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  v24 = CompoundSectionedDataSource.init(_:)(v23);

  __swift_destroy_boxed_opaque_existential_1(v30);
  *(v7 + OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_trendDataSource) = v24;

  v26 = CompoundDataSourceCollectionViewController.init(dataSource:)(v25);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v26;
}

id sub_1BA37FB78()
{
  sub_1BA37FD5C();
  v11.receiver = v0;
  v11.super_class = type metadata accessor for AllTrendsViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  [result setPreservesSuperviewLayoutMargins_];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = sub_1BA4A6AE8();
  v5 = HKUIJoinStringsForAutomationIdentifier();

  [v3 setAccessibilityIdentifier_];
  v10 = 9;
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_provenance + 8])
  {
    v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_provenance];
    v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_provenance + 8];
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  type metadata accessor for HealthAppAnalyticsManager();
  v9 = 0;
  memset(v8, 0, sizeof(v8));

  static HealthAppAnalyticsManager.submitInteraction(action:viewController:analyticProvenance:pinnedContentManager:)(&v10, v0, v6, v7, v8);

  return sub_1BA3808F8(v8, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0CE40);
}

void sub_1BA37FD5C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthStore];
  v3 = [v2 profileIdentifier];
  UIViewController.resolvedPresentation.getter(v13);
  v4 = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v3, v13);

  UIViewController.resolvedHealthExperienceStore.getter(v13);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v5 = sub_1BA4A1B68();
  v6 = [v2 profileIdentifier];
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v12 = 0xE000000000000000;
  v8 = sub_1BA4A1318();
  if (v4 == 1)
  {
    v9 = [v1 navigationItem];
    v10 = sub_1BA4A6758();
    [v9 setTitle_];

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1BA37D5B4(v5, v2, v6, v4, v8, v7);

    __swift_destroy_boxed_opaque_existential_1(v13);
    swift_beginAccess();
    sub_1BA4A4D28();
    swift_endAccess();
  }

  v11 = [v1 navigationItem];
  [v11 setLargeTitleDisplayMode_];
}

void sub_1BA37FFBC()
{
  v1 = v0;
  v26[0] = sub_1BA4A3618();
  v2 = *(v26[0] - 8);
  MEMORY[0x1EEE9AC00](v26[0], v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A3678();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v6, v8).n128_u64[0];
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthStore] profileIdentifier];
  v13 = [v1 title];
  if (v13)
  {
    v14 = v13;
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  (*(v7 + 104))(v11, *MEMORY[0x1E69A2C68], v6);
  v15 = v12;
  v16 = sub_1BA4A35B8();

  (*(v7 + 8))(v11, v6);
  [v1 setUserActivity_];

  v17 = [v1 userActivity];
  if (v17)
  {
    v18 = v17;
    sub_1BA3805C4(0, &qword_1EDC6B418, sub_1BA1284D4, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5480;
    v20 = v26[0];
    (*(v2 + 104))(v5, *MEMORY[0x1E69A2BE0], v26[0]);
    v21 = sub_1BA4A3608();
    v23 = v22;
    (*(v2 + 8))(v5, v20);
    v26[1] = v21;
    v26[2] = v23;
    v24 = MEMORY[0x1E69E6158];
    sub_1BA4A7D58();
    *(inited + 96) = v24;
    strcpy((inited + 72), "alltrendsview");
    *(inited + 86) = -4864;
    sub_1B9FDB524(inited);
    swift_setDeallocating();
    sub_1BA128538(inited + 32);
    v25 = sub_1BA4A6618();

    [v18 addUserInfoEntriesFromDictionary_];
  }
}