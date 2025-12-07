unint64_t type metadata accessor for _UISplitViewControllerAdaptiveImplStyle()
{
  result = qword_1EA9400A0;
  if (!qword_1EA9400A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9400A0);
  }

  return result;
}

void sub_1891F041C(CGPDFDocumentRef document@<X1>, const char *a2@<X0>, uint64_t *a3@<X8>)
{
  string[1] = *MEMORY[0x1E69E9840];
  Info = CGPDFDocumentGetInfo(document);
  if (Info && (string[0] = 0, CGPDFDictionaryGetString(Info, a2, string)) && (v6 = string[0]) != 0 && CGPDFStringGetLength(string[0]) >= 1 && (v7 = CGPDFStringCopyTextString(v6)) != 0)
  {
    v8 = v7;
    v9 = sub_18A4A7288();
    v11 = v10;

    *a3 = v9;
    a3[1] = v11;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1891F04F0(double a1, double a2, double a3, double a4)
{
  v5 = *v4;
  if (*v4 >= a1)
  {
    a3 = a4;
  }

  if ((*&a2 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v6 = *v4;
  }

  else
  {
    v6 = a2;
  }

  if ((~*&a2 & 0x7FF0000000000000) != 0)
  {
    v6 = a2;
  }

  if (v5 > a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = *v4;
  }

  if ((*&v7 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = v7;
  }

  if ((~*&v7 & 0x7FF0000000000000) != 0)
  {
    v8 = v7;
  }

  if (v7 >= a1)
  {
    a1 = v8;
  }

  if (a3 != 0.0)
  {
    a1 = a1 + a3 * (1.0 - 1.0 / ((v5 - a1) / a3 * 0.55 + 1.0));
  }

  *v4 = a1;
}

void sub_1891F0578(double a1, double a2)
{
  v3 = *v2;
  if (*v2 > a2)
  {
    if ((*&a2 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v3 = a2;
    }

    if ((~*&a2 & 0x7FF0000000000000) != 0)
    {
      v3 = a2;
    }
  }

  if (v3 < a1)
  {
    goto LABEL_12;
  }

  if ((~*&v3 & 0x7FF0000000000000) != 0)
  {
    a1 = v3;
LABEL_12:
    *v2 = a1;
    return;
  }

  if ((*&v3 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    a1 = v3;
  }

  *v2 = a1;
}

void sub_1891F05D0(double a1, double a2)
{
  v3 = *v2;
  v4 = (a2 - a1) / 3.0;
  if (*v2 >= a1)
  {
    if (v3 <= a2)
    {
      return;
    }

    if (v4 + a2 >= a2)
    {
      v5 = (v4 + a2 - a2) * tanh((v3 - a2) / (v4 + a2 - a2) * 0.55 + 0.0) + a2;
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (a1 - v4 > a1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = a1 - v4 + (a1 - (a1 - v4)) * (tanh((v3 - (a1 - v4)) / (a1 - (a1 - v4)) * 0.55 + -0.55) + 1.0);
LABEL_7:
  *v2 = v5;
}

id sub_1891F069C(uint64_t a1)
{
  v2 = type metadata accessor for _GlassBackgroundStyle(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - v6;
  v8 = sub_18A4A7258();
  v9 = sub_18A4A7258();
  if (qword_1ED4905B8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1ED4A3668);
  sub_188AD8D14(v10, v7, type metadata accessor for _GlassBackgroundStyle);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A470, &unk_18A65E2F0);
  v22[3] = v11;
  sub_188AD8D14(v7, v4, type metadata accessor for _GlassBackgroundStyle);
  v12 = objc_allocWithZone(v11);
  sub_188AD8D14(v4, v12 + *((*MEMORY[0x1E69E7D40] & *v12) + 0x60), type metadata accessor for _GlassBackgroundStyle);
  v21.receiver = v12;
  v21.super_class = v11;
  v13 = objc_msgSendSuper2(&v21, sel_init);
  sub_188B0CDD0(v4, type metadata accessor for _GlassBackgroundStyle);
  v22[0] = v13;
  sub_188B0CDD0(v7, type metadata accessor for _GlassBackgroundStyle);
  sub_188A55598(v22, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  swift_dynamicCast();
  v19[0] = v19[2];
  v19[1] = v20;
  v14 = *(&v20 + 1);
  sub_188A3F5FC(v19, &qword_1EA934050, qword_18A64CA10);
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_opt_self();
  v17 = [v16 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v17;
}

id sub_1891F096C(uint64_t a1)
{
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  if (qword_1ED48FC48 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0, &unk_18A648DA0);
  v5 = __swift_project_value_buffer(v4, qword_1EA994F18);
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933498, &qword_18A648D98);
  v6 = sub_188E69938(v5);
  v16[0] = v6;
  sub_188A55598(v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  swift_dynamicCast();
  v13[0] = v14;
  v13[1] = v15;
  v7 = *(&v15 + 1);
  sub_188A3F5FC(v13, &qword_1EA934050, qword_18A64CA10);
  if (v7)
  {
    *&v14 = v6;
    v8 = v6;
    v9 = sub_18A4A8778();
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_opt_self();
  v11 = [v10 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_1891F0B5C(uint64_t a1)
{
  v3 = type metadata accessor for _GlassBackgroundStyle(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A470, &unk_18A65E2F0);
  v23[3] = v6;
  sub_188AD8D14(a1, v5, type metadata accessor for _GlassBackgroundStyle);
  v7 = objc_allocWithZone(v6);
  sub_188AD8D14(v5, v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x60), type metadata accessor for _GlassBackgroundStyle);
  v22.receiver = v7;
  v22.super_class = v6;
  v8 = objc_msgSendSuper2(&v22, sel_init);
  sub_188B0CDD0(v5, type metadata accessor for _GlassBackgroundStyle);
  v23[0] = v8;
  sub_188A55598(v23, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  swift_dynamicCast();
  v20[0] = v20[2];
  v20[1] = v21;
  v9 = *(&v21 + 1);
  sub_188A3F5FC(v20, &qword_1EA934050, qword_18A64CA10);
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = [(_UITraitOverrides *)*(*v1 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;

    *v1 = v13;
  }

  v14 = qword_1ED491B40;
  v15 = v12;
  if (v14 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v16 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_188AC80DC(&type metadata for _GlassBackgroundStyleTrait, sub_1891F069C, 0);
  os_unfair_lock_unlock(v16[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970, &unk_18A651030);
  v17 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v15 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return sub_188B0CDD0(a1, type metadata accessor for _GlassBackgroundStyle);
}

uint64_t sub_1891F0EA4(uint64_t a1)
{
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933498, &qword_18A648D98);
  v3 = sub_188E69938(a1);
  v18[0] = v3;
  sub_188A55598(v18, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  swift_dynamicCast();
  v15[0] = v16;
  v15[1] = v17;
  v4 = *(&v17 + 1);
  sub_188A3F5FC(v15, &qword_1EA934050, qword_18A64CA10);
  if (v4)
  {
    *&v16 = v3;
    v5 = v3;
    v6 = sub_18A4A8778();
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = [(_UITraitOverrides *)*(*v1 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    v9 = swift_allocObject();
    *(v9 + 16) = v8;

    *v1 = v9;
  }

  v10 = qword_1ED491B40;
  v11 = v8;
  if (v10 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v12 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901B3A4(&type metadata for GlassPocketContainerTrait, sub_1891F096C, 0);
  os_unfair_lock_unlock(v12[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970, &unk_18A651030);
  v13 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v11 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return sub_188A3F5FC(a1, &unk_1EA9334A0, &unk_18A648DA0);
}

void sub_1891F154C()
{
  v1 = *&v0[OBJC_IVAR____UILiquidLensView_restingShadowProperties];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 restingBackground];
    v4 = [v3 layer];

    [v4 setShadowPathIsBounds_];
    v5 = [v0 restingBackground];
    v6 = [v5 layer];

    [v6 setPunchoutShadow_];
    v7 = [v0 restingBackground];
    v8 = [v7 layer];

    [v2 radius];
    [v8 setShadowRadius_];

    v9 = [v0 restingBackground];
    v10 = [v9 layer];

    v11 = [v2 color];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 CGColor];
    }

    else
    {
      v13 = 0;
    }

    [v10 setShadowColor_];

    v19 = [v0 restingBackground];
    v20 = [v19 layer];

    [v2 offset];
    [v20 setShadowOffset_];

    v21 = [v0 restingBackground];
    v23 = [v21 layer];

    [v2 opacity];
    *&v22 = v22;
    [v23 setShadowOpacity_];
  }

  else
  {
    v14 = [v0 restingBackground];
    v15 = [v14 layer];

    [v15 setShadowRadius_];
    v16 = [v0 restingBackground];
    v17 = [v16 layer];

    [v17 setShadowOffset_];
    v18 = [v0 restingBackground];
    v23 = [v18 layer];

    [v23 setShadowOpacity_];
  }
}

void sub_1891F19B8(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7)
{
  v15.receiver = a1;
  v15.super_class = _UILiquidLensView;
  v11 = *a7;
  v12 = a1;
  objc_msgSendSuper2(&v15, v11, a2, a3, a4, a5);
  v13 = [v12 liftedContentPunchout];
  if (v13)
  {
    v14 = v13;
    [v12 bounds];
    [v14 setFrame_];
  }
}

id sub_1891F1BC4()
{
  v1 = OBJC_IVAR____UILiquidLensView____lazy_storage___liftPortal;
  v2 = *&v0[OBJC_IVAR____UILiquidLensView____lazy_storage___liftPortal];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____UILiquidLensView____lazy_storage___liftPortal];
  }

  else
  {
    v4 = [v0 contentWrapper];
    v5 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];

    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1891F1E70(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0, &qword_18A64FA60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v99 - v4;
  v6 = type metadata accessor for _GlassBackgroundStyle(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v100 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v99 - v9;
  v1[OBJC_IVAR____UILiquidLensView__lifted] = 0;
  v1[OBJC_IVAR____UILiquidLensView_warpsContentBelow] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____UILiquidLensView_liftedContentView] = 0;
  *&v1[OBJC_IVAR____UILiquidLensView_liftedContentMode] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____UILiquidLensView_restingBackgroundColor] = 0;
  *&v1[OBJC_IVAR____UILiquidLensView_restingShadowProperties] = 0;
  v11 = OBJC_IVAR____UILiquidLensView_flexInteraction;
  *&v1[v11] = [objc_allocWithZone(_UIFlexInteraction) init];
  *&v1[OBJC_IVAR____UILiquidLensView____lazy_storage___liftPortal] = 0;
  *&v1[OBJC_IVAR____UILiquidLensView_belowGlassWarpBackdrop] = 0;
  *&v1[OBJC_IVAR____UILiquidLensView_liftedContentPunchout] = 0;
  v12 = OBJC_IVAR____UILiquidLensView_contentWrapper;
  v13 = [objc_allocWithZone(UIView) init];
  [v13 setUserInteractionEnabled_];
  *&v1[v12] = v13;
  v14 = OBJC_IVAR____UILiquidLensView_glass;
  _s14ClearGlassViewCMa();
  *&v1[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____UILiquidLensView_liftProgress;
  type metadata accessor for _UIDebouncingAnimatableFloat();
  v17 = v16;
  v18 = objc_allocWithZone(v16);
  v19 = &v18[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v19 = 0;
  *(v19 + 1) = 0;
  v109.receiver = v18;
  v109.super_class = v17;
  v20 = objc_msgSendSuper2(&v109, sel_init);
  v21 = &v20[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v21 = 0xD00000000000001ELL;
  *(v21 + 1) = 0x800000018A6B2110;

  *&v1[v15] = v20;
  *&v1[OBJC_IVAR____UILiquidLensView_unliftDelayTimer] = 0;
  v22 = &v1[OBJC_IVAR____UILiquidLensView_liftTimestamp];
  *v22 = 0;
  v22[8] = 1;
  v1[OBJC_IVAR____UILiquidLensView_forceUnliftTimerWithoutAnimations] = 0;
  v23 = OBJC_IVAR____UILiquidLensView_groupCompletion;
  *&v1[v23] = [objc_allocWithZone(_UIGroupCompletion) init];
  if (a1)
  {
    *&v1[OBJC_IVAR____UILiquidLensView_restingBackground] = a1;
    v1[OBJC_IVAR____UILiquidLensView_hasCustomRestingBackground] = 1;
  }

  else
  {
    v24 = [objc_allocWithZone(UIView) &selRef_inhibitSetupOrientation];
    [v24 setUserInteractionEnabled_];
    v25 = [objc_opt_self() _controlForegroundColor];
    [v24 setBackgroundColor_];

    *&v1[OBJC_IVAR____UILiquidLensView_restingBackground] = v24;
    v1[OBJC_IVAR____UILiquidLensView_hasCustomRestingBackground] = 0;
  }

  v108.receiver = v1;
  v108.super_class = _UILiquidLensView;
  v99 = a1;
  v26 = objc_msgSendSuper2(&v108, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v27 = [(UIView *)v26 _traitOverrides];
  v28 = [(_UITraitOverrides *)v27 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
  inited = swift_initStackObject();
  *(inited + 16) = v28;
  aBlock = inited;
  sub_188AF61EC(0);
  v30 = aBlock;
  v31 = [(UIView *)v26 _traitOverrides];
  v32 = *(v30 + 16);

  [(_UITraitOverrides *)v31 _replaceWithOverrides:v32];

  v33 = [(UIView *)v26 _traitOverrides];
  v34 = [(_UITraitOverrides *)v33 _swiftImplCopy];

  v35 = swift_initStackObject();
  *(v35 + 16) = v34;
  aBlock = v35;
  sub_188D635B0(1);
  v36 = aBlock;
  v37 = [(UIView *)v26 _traitOverrides];
  v38 = *(v36 + 16);

  [(_UITraitOverrides *)v37 _replaceWithOverrides:v38];

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70, &unk_18A64FD50);
  (*(*(v39 - 8) + 56))(v10, 2, 2, v39);
  v40 = [(UIView *)v26 _traitOverrides];
  v41 = [(_UITraitOverrides *)v40 _swiftImplCopy];

  v42 = swift_initStackObject();
  *(v42 + 16) = v41;
  aBlock = v42;
  v43 = v100;
  sub_188AD8D14(v10, v100, type metadata accessor for _GlassBackgroundStyle);
  sub_1891F0B5C(v43);
  sub_188B0CDD0(v10, type metadata accessor for _GlassBackgroundStyle);
  v44 = aBlock;
  v45 = [(UIView *)v26 _traitOverrides];
  v46 = *(v44 + 16);

  [(_UITraitOverrides *)v45 _replaceWithOverrides:v46];

  v47 = sub_18A4A56B8();
  v48 = *(*(v47 - 8) + 56);
  v48(v5, 1, 1, v47);
  v49 = type metadata accessor for MaterialBackdropContext(0);
  v50 = objc_allocWithZone(v49);
  v50[OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_flags] = 0;
  v51 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  v48(&v50[OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy], 1, 1, v47);
  swift_beginAccess();
  sub_188E69B8C(v5, &v50[v51]);
  swift_endAccess();
  v107.receiver = v50;
  v107.super_class = v49;
  v52 = objc_msgSendSuper2(&v107, &selRef_inhibitSetupOrientation);
  sub_188A3F5FC(v5, &qword_1EA935CD0, &qword_18A64FA60);
  v53 = [(UIView *)v26 _traitOverrides];
  v54 = [(_UITraitOverrides *)v53 _swiftImplCopy];

  v55 = swift_initStackObject();
  *(v55 + 16) = v54;
  aBlock = v55;
  sub_18901E6BC(v52);
  v56 = aBlock;
  v57 = [(UIView *)v26 _traitOverrides];
  v58 = *(v56 + 16);

  [(_UITraitOverrides *)v57 _replaceWithOverrides:v58];

  v59 = [(UIView *)v26 _traitOverrides];
  v60 = [(_UITraitOverrides *)v59 _swiftImplCopy];

  v61 = swift_initStackObject();
  *(v61 + 16) = v60;
  aBlock = v61;
  sub_18901E90C(0, 0xE000000000000000);
  v62 = aBlock;
  v63 = [(UIView *)v26 _traitOverrides];
  v64 = *(v62 + 16);

  [(_UITraitOverrides *)v63 _replaceWithOverrides:v64];

  v65 = OBJC_IVAR____UILiquidLensView_flexInteraction;
  [*&v26[OBJC_IVAR____UILiquidLensView_flexInteraction] setPreferredActivationMode_];
  [*&v26[v65] setPreferredFlexSources_];
  [*&v26[v65] setPreferredVariant_];
  [v26 addInteraction_];
  v66 = OBJC_IVAR____UILiquidLensView_contentWrapper;
  v67 = *&v26[OBJC_IVAR____UILiquidLensView_contentWrapper];
  [v26 bounds];
  [v67 setFrame_];

  [*&v26[v66] setAutoresizingMask_];
  [v26 addSubview_];
  v68 = [v26 layer];
  v69 = *MEMORY[0x1E69796E8];
  [v68 setCornerCurve_];

  v70 = [v26 layer];
  [v70 setAllowsEdgeAntialiasing_];

  v71 = [v26 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800, &unk_18A64D700);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_18A64BFB0;
  v73 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  *(v72 + 56) = sub_188A34624(0, &qword_1ED48EE50, 0x1E6979378);
  *(v72 + 32) = v73;
  v74 = sub_18A4A7518();

  [v71 setFilters_];

  v75 = *&v26[OBJC_IVAR____UILiquidLensView_restingBackground];
  [v26 bounds];
  [v75 setFrame_];
  [v75 setAutoresizingMask_];
  v76 = [v75 layer];
  [v76 setCornerCurve_];

  [*&v26[v66] addSubview_];
  v77 = objc_opt_self();
  v78 = swift_allocObject();
  *(v78 + 16) = v26;
  *(v78 + 24) = v75;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_1891F9538;
  *(v79 + 24) = v78;
  v105 = sub_188E3FE50;
  v106 = v79;
  aBlock = MEMORY[0x1E69E9820];
  v102 = 1107296256;
  v103 = sub_188A4A968;
  v104 = &block_descriptor_212_0;
  v80 = _Block_copy(&aBlock);
  v81 = v26;
  v82 = v75;

  [v77 performWithoutAnimation_];
  _Block_release(v80);
  LOBYTE(v75) = swift_isEscapingClosureAtFileLocation();

  if (v75)
  {
    __break(1u);
  }

  else
  {
    [*&v81[OBJC_IVAR____UILiquidLensView_glass] setAutoresizingMask_];
    v83 = [v81 liftPortal];
    v84 = sub_18A4A7258();
    [v83 setName_];

    v85 = [v81 liftPortal];
    [v85 setMatchesPosition_];

    v86 = [v81 liftPortal];
    [v86 setMatchesTransform_];

    v87 = [v81 liftPortal];
    [v87 setAllowsBackdropGroups_];

    v88 = [v81 liftPortal];
    [v88 setHidesSourceLayerInOtherPortals_];

    v89 = [v81 liftPortal];
    [v89 setAlpha_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_18A64B710;
    v91 = *&v81[OBJC_IVAR____UILiquidLensView_liftProgress];
    *(v90 + 32) = v91;
    sub_188A34624(0, &qword_1ED48F690, off_1E70E9410);
    v92 = v91;
    v93 = sub_18A4A7518();

    v94 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v105 = sub_1891F9540;
    v106 = v94;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_188A4A8F0;
    v104 = &block_descriptor_216_2;
    v95 = _Block_copy(&aBlock);
    v96 = v81;

    v97 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v105 = sub_1891F9560;
    v106 = v97;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_188A4A8F0;
    v104 = &block_descriptor_220;
    v98 = _Block_copy(&aBlock);

    [v77 _createTransformerWithInputAnimatableProperties_modelValueSetter_presentationValueSetter_];
    _Block_release(v98);
    _Block_release(v95);

    [(UIView *)v96 _setNeedsToBeNotifiedOfVisibilityChange:?];
  }
}

void sub_1891F2DBC(void *a1, void *a2)
{
  v3 = [a1 layer];
  v4 = *MEMORY[0x1E6979E40];
  [v3 setCornerRadius_];

  v5 = [a2 layer];
  [v5 setCornerRadius_];
}

void sub_1891F2E64(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = a2 & 1;
    v5 = Strong;
    [Strong updateProgressBasedAnimationsForPresentation_];
  }
}

void sub_1891F2EF8()
{
  v7.super_class = _UILiquidLensView;
  objc_msgSendSuper2(&v7, sel__visibilityDidChange);
  if ([(UIView *)v0 _isHiddenOrAncestorHidden])
  {
    v1 = [v0 unliftDelayTimer];
    if (v1)
    {

      v2 = UIApp;
      if (UIApp)
      {
        v3 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v6[4] = sub_1891F9530;
        v6[5] = v3;
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 1107296256;
        v6[2] = sub_188A4A8F0;
        v6[3] = &block_descriptor_202_1;
        v4 = _Block_copy(v6);
        v5 = v2;

        [v5 _performAfterCATransactionCommitsWithLegacyRunloopObserverBasedTiming_block_];
        _Block_release(v4);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      [v0 setLifted:0 animated:0 alongsideAnimations:0 completion:0];
    }
  }
}

void sub_1891F3064(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([(UIView *)Strong _isHiddenOrAncestorHidden])
    {
      [v2 forceUnliftWithoutAnimations];
    }
  }
}

void sub_1891F3114()
{
  v8.super_class = _UILiquidLensView;
  objc_msgSendSuper2(&v8, sel_didMoveToWindow);
  [v0 updatePunchoutView];
  v1 = [v0 window];
  if (v1)
  {
  }

  else
  {
    v2 = [v0 unliftDelayTimer];
    if (v2)
    {

      v3 = UIApp;
      if (UIApp)
      {
        v4 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v7[4] = sub_1891F9528;
        v7[5] = v4;
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 1107296256;
        v7[2] = sub_188A4A8F0;
        v7[3] = &block_descriptor_198_4;
        v5 = _Block_copy(v7);
        v6 = v3;

        [v6 _performAfterCATransactionCommitsWithLegacyRunloopObserverBasedTiming_block_];
        _Block_release(v5);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      [v0 setLifted:0 animated:0 alongsideAnimations:0 completion:0];
    }
  }
}

void sub_1891F32A8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong window];
    if (v3)
    {
      v4 = v3;

      v2 = v4;
    }

    else
    {
      [v2 forceUnliftWithoutAnimations];
    }
  }
}

void sub_1891F343C(char a1, char a2, void (*a3)(uint64_t a1), uint64_t a4, void (*a5)(uint64_t a1), uint64_t a6)
{
  if ([v6 _lifted] == (a1 & 1))
  {
    if (a3)
    {
      (a3)();
    }
  }

  else
  {
    v13 = [v6 unliftDelayTimer];
    [v13 invalidate];

    [v6 setUnliftDelayTimer_];
    if ((a2 & 1) != 0 && [objc_opt_self() areAnimationsEnabled])
    {
      if (a1)
      {
        sub_18A4A2938();
        v14 = &v6[OBJC_IVAR____UILiquidLensView_liftTimestamp];
        *v14 = v15;
        v14[8] = 0;
      }

      else if ((v6[OBJC_IVAR____UILiquidLensView_liftTimestamp + 8] & 1) == 0)
      {
        v16 = *&v6[OBJC_IVAR____UILiquidLensView_liftTimestamp];
        v17 = [v6 spec];
        v18 = *&v17[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_lensHangTime];

        v19 = v18 * UIAnimationDragCoefficient();
        sub_18A4A2938();
        v21 = v19 - (v20 - v16);
        if (v21 > 0.0)
        {
          v22 = objc_opt_self();
          v23 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v24 = swift_allocObject();
          *(v24 + 16) = 1;
          *(v24 + 24) = v23;
          *(v24 + 32) = 0;
          *(v24 + 40) = a3;
          *(v24 + 48) = a4;
          *(v24 + 56) = a5;
          *(v24 + 64) = a6;
          v32 = sub_1891F9510;
          v33 = v24;
          v28 = MEMORY[0x1E69E9820];
          v29 = 1107296256;
          v30 = sub_1890552D0;
          v31 = &block_descriptor_188_2;
          v25 = _Block_copy(&v28);
          sub_188A52E38(a3, a4);
          sub_188A52E38(a5, a6);

          v26 = [v22 scheduledTimerWithTimeInterval:0 repeats:v25 block:v21];
          _Block_release(v25);
          v27 = [objc_opt_self() currentRunLoop];
          [v27 addTimer:v26 forMode:*MEMORY[0x1E695DA28]];

          [v6 setUnliftDelayTimer_];
          return;
        }
      }
    }

    if (a3)
    {
      v32 = a3;
      v33 = a4;
      v28 = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v30 = sub_188A4A8F0;
      v31 = &block_descriptor_181_1;
      a3 = _Block_copy(&v28);
    }

    if (a5)
    {
      v32 = a5;
      v33 = a6;
      v28 = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v30 = sub_188C3DD6C;
      v31 = &block_descriptor_178_0;
      a5 = _Block_copy(&v28);
    }

    [v6 actuallySetLifted:a1 & 1 animated:a2 & 1 alongsideAnimations:a3 completion:a5];
    _Block_release(a5);
    _Block_release(a3);
  }
}

void sub_1891F382C(uint64_t a1, char a2, uint64_t a3, char a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  if ((a2 & 1) != 0 && (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v14 = Strong;
    v15 = [Strong forceUnliftTimerWithoutAnimations];

    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    if (a5)
    {
      v23 = a5;
      v24 = a6;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_188A4A8F0;
      v22 = &block_descriptor_194;
      a5 = _Block_copy(&aBlock);
    }

    if (a7)
    {
      v23 = a7;
      v24 = a8;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_188C3DD6C;
      v22 = &block_descriptor_191;
      a7 = _Block_copy(&aBlock);
    }

    [v18 actuallySetLifted:a4 & 1 animated:v16 alongsideAnimations:a5 completion:a7];
    _Block_release(a7);
    _Block_release(a5);
  }
}

void sub_1891F3B30(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  [v6 set:a1 & 1 lifted:?];
  v12 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1891F9420;
  *(v16 + 24) = v15;
  v77 = sub_188E3FE50;
  v78 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v74 = 1107296256;
  v75 = sub_188A4A968;
  v76 = &block_descriptor_93_2;
  v17 = _Block_copy(&aBlock);
  sub_188A52E38(a3, a4);
  v18 = v7;

  v72 = v14;
  [v14 performWithoutAnimation_];
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a1)
  {
    v19 = [v18 liftedContainerView];
    if (!v19)
    {
      v19 = [v18 window];
      if (!v19)
      {
        goto LABEL_24;
      }
    }

    v20 = v19;
    v21 = [v18 liftPortal];
    [v20 addSubview_];

    v22 = [v18 flexInteraction];
    [v22 setPreferredActivationMode_];

    [v18 updatePunchoutView];
    [v18 updateGlassPlacementIfNeededWithAnimated_];
    v23 = [v18 belowGlassWarpBackdrop];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 window];

      if (v25)
      {

        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        if (a2)
        {
LABEL_18:
          v69 = v26;
          v47 = [v18 groupCompletion];
          v48 = swift_allocObject();
          *(v48 + 16) = a5;
          *(v48 + 24) = a6;
          v77 = sub_1891F95BC;
          v78 = v48;
          aBlock = MEMORY[0x1E69E9820];
          v74 = 1107296256;
          v75 = sub_188A4A8F0;
          v76 = &block_descriptor_148_1;
          v49 = _Block_copy(&aBlock);
          sub_188A52E38(a5, a6);

          [v47 addCompletion_];
          _Block_release(v49);

          v50 = [v18 spec];
          v51 = *&v50[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_liftSpring];

          v77 = sub_1891F9410;
          v78 = v13;
          aBlock = MEMORY[0x1E69E9820];
          v74 = 1107296256;
          v75 = sub_188A4A8F0;
          v76 = &block_descriptor_151_1;
          v52 = _Block_copy(&aBlock);

          v53 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v77 = sub_1891F9488;
          v78 = v53;
          aBlock = MEMORY[0x1E69E9820];
          v74 = 1107296256;
          v75 = sub_188C3DD6C;
          v76 = &block_descriptor_155_1;
          v54 = _Block_copy(&aBlock);

          [v72 _animateUsingSpringBehavior_tracking_animations_completion_];

          _Block_release(v54);
          _Block_release(v52);

          sub_188A55B8C(v68, v69);
          goto LABEL_25;
        }

LABEL_22:
        v63 = swift_allocObject();
        v63[2] = v18;
        v63[3] = a5;
        v63[4] = a6;
        v63[5] = sub_1891F9410;
        v63[6] = v13;
        v64 = swift_allocObject();
        *(v64 + 16) = sub_1891F9458;
        *(v64 + 24) = v63;
        v77 = sub_188E3FE50;
        v78 = v64;
        aBlock = MEMORY[0x1E69E9820];
        v74 = 1107296256;
        v75 = sub_188A4A968;
        v76 = &block_descriptor_142_0;
        v65 = _Block_copy(&aBlock);
        v66 = v18;
        sub_188A52E38(a5, a6);

        [v72 performWithoutAnimation_];

        _Block_release(v65);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        sub_188A55B8C(v29, v28);

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          goto LABEL_25;
        }

        __break(1u);
LABEL_24:

        goto LABEL_25;
      }
    }

    v28 = swift_allocObject();
    *(v28 + 16) = v18;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1891F9450;
    *(v40 + 24) = v28;
    v77 = sub_188E3FE50;
    v78 = v40;
    aBlock = MEMORY[0x1E69E9820];
    v74 = 1107296256;
    v75 = sub_188A4A968;
    v76 = &block_descriptor_132_0;
    v41 = _Block_copy(&aBlock);
    v42 = v18;

    [v72 performWithoutAnimation_];
    _Block_release(v41);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if ((v41 & 1) == 0)
    {
      if (a2)
      {
        v43 = [v42 belowGlassWarpBackdrop];
        if (v43)
        {
          v44 = v43;
          [v42 bounds];
          [v44 setFrame_];
        }

        v45 = [v42 belowGlassWarpBackdrop];
        v27 = sub_1891F9450;
        if (v45)
        {
          v46 = v45;
          [v45 layoutIfNeeded];

          v27 = sub_1891F9450;
        }

        v26 = v28;
        goto LABEL_18;
      }

      v29 = sub_1891F9450;
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = a5;
  v31[4] = a6;
  if (a2)
  {
    sub_188A52E38(a5, a6);
    v32 = [v18 groupCompletion];
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1891F942C;
    *(v33 + 24) = v31;
    v77 = sub_1891F95C0;
    v78 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v74 = 1107296256;
    v75 = sub_188A4A8F0;
    v76 = &block_descriptor_115_1;
    v34 = _Block_copy(&aBlock);

    [v32 addCompletion_];
    _Block_release(v34);

    v35 = [v18 spec];
    v36 = *&v35[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unLiftSpring];

    v77 = sub_1891F9410;
    v78 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v74 = 1107296256;
    v75 = sub_188A4A8F0;
    v76 = &block_descriptor_118_5;
    v37 = _Block_copy(&aBlock);

    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v77 = sub_1891F95FC;
    v78 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v74 = 1107296256;
    v75 = sub_188C3DD6C;
    v76 = &block_descriptor_122_1;
    v39 = _Block_copy(&aBlock);

    [v14 _animateUsingSpringBehavior_tracking_animations_completion_];

    _Block_release(v39);
    _Block_release(v37);

LABEL_25:
    v62 = 0;
    v61 = 0;
    goto LABEL_26;
  }

  v55 = swift_allocObject();
  v55[2] = v18;
  v55[3] = sub_1891F942C;
  v55[4] = v31;
  v55[5] = sub_1891F9410;
  v55[6] = v13;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1891F9438;
  *(v56 + 24) = v55;
  v57 = v55;
  v77 = sub_188E3FE50;
  v78 = v56;
  aBlock = MEMORY[0x1E69E9820];
  v74 = 1107296256;
  v75 = sub_188A4A968;
  v76 = &block_descriptor_109_2;
  v58 = _Block_copy(&aBlock);
  v59 = v18;
  sub_188A52E38(a5, a6);

  [v14 performWithoutAnimation_];

  _Block_release(v58);
  v60 = swift_isEscapingClosureAtFileLocation();

  if ((v60 & 1) == 0)
  {
    v61 = v57;
    v62 = sub_1891F9438;
LABEL_26:
    sub_188A55B8C(v62, v61);
    return;
  }

LABEL_29:
  __break(1u);
}

void sub_1891F47F0(uint64_t a1, char a2, void (*a3)(void))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = [Strong liftProgress];

  if (a2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (a2)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  [v6 setValue_];

  v9 = swift_unknownObjectUnownedLoadStrong();
  v10 = [v9 restingBackground];

  [v10 setAlpha_];
  v11 = swift_unknownObjectUnownedLoadStrong();
  v12 = [v11 glass];

  v13 = v12[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_lifted];
  v12[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_lifted] = a2;
  if (v13 != (a2 & 1))
  {
    sub_1891F7824();
  }

  v14 = swift_unknownObjectUnownedLoadStrong();
  v26 = [v14 spec];

  v15 = swift_unknownObjectUnownedLoadStrong();
  [v15 warpsContentBelow];

  v16 = swift_unknownObjectUnownedLoadStrong();
  v17 = [v16 belowGlassWarpBackdrop];

  if (v17)
  {
    v18 = [v17 layer];

    v19 = sub_18A4A2D28();
    v20 = sub_18A4A7258();
    [v18 setValue:v19 forKeyPath:v20];
  }

  v21 = swift_unknownObjectUnownedLoadStrong();
  v22 = [v21 belowGlassWarpBackdrop];

  if (v22)
  {
    v23 = [v22 layer];

    v24 = sub_18A4A2D28();
    v25 = sub_18A4A7258();
    [v23 setValue:v24 forKeyPath:v25];
  }

  if (a3)
  {
    a3();
  }
}

void sub_1891F4B00(void *a1, int a2)
{
  v3 = [a1 glass];
  v4 = v3[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_animatesBackground];
  v3[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_animatesBackground] = a2;
  if (v3[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_lifted] & 1) == 0 && ((v4 ^ a2))
  {
    v5 = v3;
    sub_1891F7824();
    v3 = v5;
  }
}

void sub_1891F4B84(void *a1)
{
  v2 = [a1 layer];
  v3 = [v2 presentationLayer];

  if (!v3)
  {
    v3 = [a1 layer];
  }

  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  _s12BackdropViewCMa_0();
  v13 = [objc_allocWithZone(v12) initWithFrame_];
  [a1 setBelowGlassWarpBackdrop_];

  v14 = [a1 belowGlassWarpBackdrop];
  if (v14)
  {
    v15 = v14;
    [v14 setClipsToBounds_];
  }

  v16 = [a1 belowGlassWarpBackdrop];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 layer];

    [v18 setCornerRadius_];
  }

  v19 = [a1 belowGlassWarpBackdrop];
  if (v19)
  {
    v20 = v19;
    [v19 setAutoresizingMask_];
  }

  v21 = [a1 belowGlassWarpBackdrop];
  if (v21)
  {
    v22 = v21;
    v54 = [v21 layer];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800, &unk_18A64D700);
    v23 = swift_allocObject();
    v53 = xmmword_18A64BFA0;
    *(v23 + 16) = xmmword_18A64BFA0;
    v24 = sub_188A34624(0, &qword_1ED48EE50, 0x1E6979378);
    v25 = sub_18A4A7288();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9401B0, &unk_18A650B00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64BFA0;
    *(inited + 32) = sub_18A4A7288();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v29;
    *(inited + 48) = 0x46445370726177;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 80) = sub_18A4A7288();
    *(inited + 88) = v30;
    v31 = [a1 spec];
    v32 = *&v31[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unliftedDisplacement];

    *(inited + 120) = MEMORY[0x1E69E63B0];
    *(inited + 96) = v32;
    v33 = sub_188AF3DD8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934DB8, &unk_18A668600);
    swift_arrayDestroy();
    sub_188B7787C(v25, v27, v33);
    *(v23 + 56) = v24;
    *(v23 + 32) = v34;
    v35 = sub_18A4A7288();
    v37 = v36;
    v38 = swift_initStackObject();
    *(v38 + 16) = xmmword_18A64BFB0;
    *(v38 + 32) = sub_18A4A7288();
    *(v38 + 40) = v39;
    v40 = [a1 spec];
    v41 = *&v40[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unliftedBlurRadius];

    *(v38 + 72) = MEMORY[0x1E69E63B0];
    *(v38 + 48) = v41;
    v42 = sub_188AF3DD8(v38);
    swift_setDeallocating();
    sub_188A3F5FC(v38 + 32, &qword_1EA934DB8, &unk_18A668600);
    sub_188B7787C(v35, v37, v42);
    *(v23 + 88) = v24;
    *(v23 + 64) = v43;
    v44 = sub_18A4A7518();

    [v54 setFilters_];
  }

  v45 = [a1 belowGlassWarpBackdrop];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1891F7498(a1, 36.0);
    [v46 addSubview_];
  }

  v48 = [a1 contentWrapper];
  v49 = [a1 belowGlassWarpBackdrop];
  if (v49)
  {
    v50 = v49;
    [v48 insertSubview:v49 atIndex:0];

    v51 = [a1 belowGlassWarpBackdrop];
    if (v51)
    {
      v52 = v51;
      [v51 layoutIfNeeded];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1891F50DC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v8 = [a1 groupCompletion];
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v12[4] = sub_1891F94A4;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_188A4A8F0;
  v12[3] = &block_descriptor_161_1;
  v10 = _Block_copy(v12);
  sub_188A52E38(a2, a3);

  [v8 addCompletion_];
  _Block_release(v10);

  a4();
  v11 = [a1 groupCompletion];
  [v11 complete];
}

void sub_1891F5230(char a1, char a2, uint64_t a3, void (*a4)(void, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (([Strong lifted] & 1) == 0)
    {
      v9 = [v8 flexInteraction];
      [v9 setPreferredActivationMode_];

      v10 = [v8 liftPortal];
      [v10 removeFromSuperview];

      v11 = [v8 glass];
      v12 = v11[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_animatesBackground];
      v11[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_animatesBackground] = 0;
      if ((v11[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_lifted] & 1) == 0 && v12)
      {
        sub_1891F7824();
      }

      if (![v8 liftedContentMode])
      {
        v13 = [v8 liftedContentPunchout];
        if (v13)
        {
          v14 = v13;
          [v13 removeFromSuperview];
        }
      }

      v15 = [v8 belowGlassWarpBackdrop];
      if (v15)
      {
        v16 = v15;
        [v15 removeFromSuperview];
      }

      [v8 setBelowGlassWarpBackdrop_];
    }
  }

  if (a4)
  {
    a4(a1 & 1, a2 & 1);
  }
}

void sub_1891F53F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong groupCompletion];

    [v5 complete];
  }
}

void sub_1891F5470(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v8 = [a1 groupCompletion];
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v12[4] = sub_1891F94E0;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_188A4A8F0;
  v12[3] = &block_descriptor_167_2;
  v10 = _Block_copy(v12);

  [v8 addCompletion_];
  _Block_release(v10);

  a4();
  v11 = [a1 groupCompletion];
  [v11 complete];
}

void sub_1891F56EC(char a1)
{
  v2 = v1;
  v4 = [v2 glass];
  v5 = [v4 window];

  if (v5)
  {

    v6 = [v2 contentWrapper];
    v29 = [v2 glass];
    [v6 bringSubviewToFront_];

    return;
  }

  v7 = [v2 layer];
  v8 = [v7 presentationLayer];

  if (!v8)
  {
    v8 = [v2 layer];
  }

  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  v18[2] = v2;
  v18[3] = v10;
  v18[4] = v12;
  v18[5] = v14;
  v18[6] = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1891F93F8;
  *(v19 + 24) = v18;
  v34 = sub_188E3FE50;
  v35 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_188A4A968;
  v33 = &block_descriptor_61_4;
  v20 = _Block_copy(&aBlock);
  v21 = v2;

  [v17 performWithoutAnimation_];
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (a1)
  {
    v22 = [v21 glass];
    [v21 bounds];
    [v22 setFrame_];

    v23 = [v21 glass];
    [v23 layoutIfNeeded];

    return;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1891F9408;
  *(v25 + 24) = v24;
  v34 = sub_188E3FE50;
  v35 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_188A4A968;
  v33 = &block_descriptor_71_3;
  v26 = _Block_copy(&aBlock);
  v27 = v21;

  [v17 performWithoutAnimation_];
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_13;
  }
}

void sub_1891F5B40(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = [a1 glass];
  [v10 setFrame_];

  v11 = [a1 contentWrapper];
  v12 = [a1 glass];
  [v11 addSubview_];
}

void sub_1891F5C28(void *a1)
{
  v2 = [a1 glass];
  [a1 bounds];
  [v2 setFrame_];

  v3 = [a1 glass];
  [v3 layoutIfNeeded];
}

void sub_1891F5D20()
{
  v1 = [v0 overridePunchoutView];
  if (v1 || (v1 = [v0 liftedContentView]) != 0)
  {
    isEscapingClosureAtFileLocation = v1;
    v3 = [v1 superview];
    if (v3)
    {
      v4 = v3;
      if (![isEscapingClosureAtFileLocation _isInAWindow])
      {

        goto LABEL_9;
      }

      v5 = objc_opt_self();
      v6 = swift_allocObject();
      v6[2] = v0;
      v6[3] = v4;
      v6[4] = isEscapingClosureAtFileLocation;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_1891F93EC;
      *(v7 + 24) = v6;
      aBlock[4] = sub_188E3FE50;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A968;
      aBlock[3] = &block_descriptor_51_3;
      v8 = _Block_copy(aBlock);
      v9 = v0;
      v0 = v4;
      v10 = isEscapingClosureAtFileLocation;

      [v5 performWithoutAnimation_];

      _Block_release(v8);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    v4 = isEscapingClosureAtFileLocation;
LABEL_9:
  }

  v11 = [v0 liftedContentPunchout];
  if (v11)
  {
    v12 = v11;
    [v11 removeFromSuperview];
  }
}

void sub_1891F5F7C(void *a1, void *a2, uint64_t a3)
{
  v6 = [a1 liftedContentPunchout];
  v31 = v6;
  if (!v6)
  {
    [a1 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    _s11DestOutViewCMa();
    v31 = [objc_allocWithZone(v15) initWithFrame_];
    [v31 setUserInteractionEnabled_];
    v16 = [objc_opt_self() blackColor];
    [v31 setBackgroundColor_];

    v17 = [v31 layer];
    [v17 setCornerRadius_];

    v18 = [v31 layer];
    [v18 setCornerCurve_];

    v19 = [v31 layer];
    v20 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    [v19 setCompositingFilter_];

    if ([a1 liftedContentMode])
    {
      [a1 alpha];
    }

    else
    {
      v22 = [a1 liftProgress];
      [v22 value];
      v24 = v23;

      v21 = v24;
    }

    [v31 setAlpha_];

    [a1 setLiftedContentPunchout_];
    v25 = [objc_allocWithZone(MEMORY[0x1E69793B8]) init];
    [v25 setRemovedOnCompletion_];
    [v25 setUsesNormalizedCoordinates_];
    [v25 setDuration_];
    [v25 setFillMode_];

    v26 = [a1 layer];
    [v25 setSourceLayer_];

    sub_188FEB760(0.0, 0.0, 1.0, 1.0);
    sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
    v27 = sub_18A4A7518();

    [v25 setSourcePoints_];

    v28 = *&v31[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView_matchMoveAnimation];
    *&v31[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView_matchMoveAnimation] = v25;
    v29 = v25;

    sub_1891F8BC4();
  }

  v30 = v6;
  [a2 insertSubview:v31 aboveSubview:a3];
}

void sub_1891F63B0(char a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1891F93E4;
  *(v5 + 24) = v4;
  aBlock[4] = sub_188A4B574;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_151;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v8.receiver = v7;
    v8.super_class = _UILiquidLensView;
    objc_msgSendSuper2(&v8, sel__removeAllAnimations_, a1 & 1);
  }
}

id sub_1891F6540(void *a1)
{
  v2 = [a1 flexInteraction];
  [v2 setPreferredActivationMode_];

  v3 = [a1 unliftDelayTimer];
  [v3 fire];

  return [a1 setUnliftDelayTimer_];
}

void sub_1891F662C(char a1)
{
  v3 = [v1 liftProgress];
  v4 = v3;
  if (a1)
  {
    [v3 presentationValue];

    v12 = sub_18A4A2D28();
    v13 = sub_18A4A7258();
    [v1 _setPresentationValue_forKey_];

    v14 = [v1 liftPortal];
    v15 = sub_18A4A2D28();
    v16 = sub_18A4A7258();
    [v14 _setPresentationValue_forKey_];

    if ([v1 liftedContentMode])
    {
      return;
    }

    v17 = [v1 liftedContentPunchout];
    if (!v17)
    {
      return;
    }

    v18 = v17;
    v19 = sub_18A4A2D28();
    v20 = sub_18A4A7258();
    [v18 _setPresentationValue_forKey_];
  }

  else
  {
    [v3 value];
    v6 = v5;

    v7 = [v1 layer];
    v8 = sub_18A4A2D28();
    v9 = sub_18A4A7258();
    [v7 setValue:v8 forKeyPath:v9];

    v10 = [v1 liftPortal];
    [v10 setAlpha_];

    if ([v1 liftedContentMode])
    {
      return;
    }

    v11 = [v1 liftedContentPunchout];
    if (!v11)
    {
      return;
    }

    v20 = v11;
    [v11 setAlpha_];
  }
}

void sub_1891F6980()
{
  if (([v0 hasCustomRestingBackground] & 1) == 0)
  {
    v1 = [v0 restingBackground];
    v2 = [v0 restingBackgroundColor];
    if (!v2)
    {
      v2 = [objc_opt_self() _controlForegroundColor];
    }

    [v1 setBackgroundColor_];

    v3 = [v0 restingBackground];
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    UIView._background.setter(v4);
  }
}

id sub_1891F6AF8()
{
  type metadata accessor for _UIFlexInteractionSettingsDomain();
  v7.receiver = swift_getObjCClassFromMetadata();
  v7.super_class = &OBJC_METACLASS____TtC5UIKit32_UIFlexInteractionSettingsDomain;
  result = objc_msgSendSuper2(&v7, sel_rootSettings);
  if (result)
  {
    v2 = result;
    type metadata accessor for _UIFlexInteractionSettings();
    v3 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_liquidLensSpec);

    v4 = [v0 style];
    v5 = &OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_small;
    if (v4)
    {
      v5 = &OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_large;
    }

    v6 = *&v3[*v5];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1891F6D34(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_style] = 0;
  *&v4[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentView] = 0;
  v9 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_liftedContentPortalView;
  v10 = [objc_allocWithZone(_UIPortalView) init];
  [v10 setAutoresizingMask_];
  v11 = sub_18A4A7258();
  [v10 setName_];

  [v10 setMatchesAlpha_];
  [v10 setMatchesPosition_];
  [v10 setMatchesTransform_];
  [v10 setClipsToBounds_];
  v12 = [v10 layer];
  v13 = *MEMORY[0x1E6979E40];
  [v12 setCornerRadius_];

  v14 = [v10 &selRef_lastOperation];
  v15 = *MEMORY[0x1E69796E8];
  [v14 setCornerCurve_];

  v16 = [v10 &selRef_lastOperation];
  [v16 setAllowsEdgeAntialiasing_];

  *&v4[v9] = v10;
  v17 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_innerShadowView;
  *&v4[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentWrapper;
  *&v4[v18] = [objc_allocWithZone(UIView) init];
  v4[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_animatesBackground] = 0;
  v4[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_lifted] = 0;
  _s14ClearGlassViewCMa();
  v53.receiver = v4;
  v53.super_class = v19;
  v20 = objc_msgSendSuper2(&v53, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = [v20 &selRef_lastOperation];
  [v21 setCornerRadius_];

  v22 = [v20 &selRef_lastOperation];
  [v22 setCornerCurve_];

  v23 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentWrapper;
  v24 = *&v20[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentWrapper];
  [v20 bounds];
  [v24 setFrame_];

  v25 = [*&v20[v23] &selRef_lastOperation];
  v26 = sub_18A4A7258();
  [v25 setName_];

  [*&v20[v23] setAutoresizingMask_];
  v27 = [*&v20[v23] &selRef_lastOperation];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800, &unk_18A64D700);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_18A64BFB0;
  v29 = sub_188A34624(0, &qword_1ED48EE50, 0x1E6979378);
  v30 = sub_18A4A7288();
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9401B0, &unk_18A650B00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFA0;
  *(inited + 32) = sub_18A4A7288();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v34;
  *(inited + 48) = 0x46445370726177;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 80) = sub_18A4A7288();
  *(inited + 88) = v35;
  *(inited + 120) = MEMORY[0x1E69E6530];
  *(inited + 96) = 0;
  v36 = sub_188AF3DD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934DB8, &unk_18A668600);
  swift_arrayDestroy();
  sub_188B7787C(v30, v32, v36);
  *(v28 + 56) = v29;
  *(v28 + 32) = v37;
  v38 = sub_18A4A7518();

  [v27 setFilters_];

  v39 = *&v20[v23];
  v40 = sub_1891F7498(v20, 11.2);
  [v39 addSubview_];

  [*&v20[v23] addSubview_];
  [v20 addSubview_];
  v41 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_innerShadowView;
  v42 = *&v20[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_innerShadowView];
  [v20 bounds];
  [v42 setFrame_];

  v43 = [*&v20[v41] layer];
  v44 = sub_18A4A7258();
  [v43 setName_];

  [*&v20[v41] setAutoresizingMask_];
  [*&v20[v41] setClipsToBounds_];
  v45 = [*&v20[v41] layer];
  v46 = [v20 layer];
  [v46 cornerRadius];
  v48 = v47;

  [v45 setCornerRadius_];
  v49 = [*&v20[v41] layer];
  [v49 setInvertsShadow_];

  v50 = [*&v20[v41] layer];
  [v50 setShadowPathIsBounds_];

  [v20 addSubview_];
  sub_1891F7824();
  v51 = [objc_opt_self() defaultCenter];
  [v51 addObserver:v20 selector:sel_reduceTransparencyDidChange name:@"UIAccessibilityReduceTransparencyStatusDidChangeNotification" object:0];

  sub_1891F869C();
  return v20;
}

id sub_1891F7498(void *a1, double a2)
{
  [a1 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _s7SDFViewCMa();
  v13 = [objc_allocWithZone(v12) initWithFrame_];
  v14 = [v13 layer];
  v15 = sub_18A4A7258();
  [v14 setName_];

  [v13 setAutoresizingMask_];
  v16 = [v13 layer];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClassUnconditional();
  v18 = [objc_allocWithZone(MEMORY[0x1E6979458]) init];
  [v18 setHeight_];
  [v18 setCurvature_];
  [v18 setAngle_];
  [v17 setEffect_];

  [a1 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  _s14SDFElementViewCMa();
  v28 = [objc_allocWithZone(v27) initWithFrame_];
  v29 = [v28 layer];
  [v29 setCornerRadius_];

  v30 = [v28 layer];
  [v30 setCornerCurve_];

  v31 = [v28 layer];
  [v31 setAllowsEdgeAntialiasing_];

  [v28 setAutoresizingMask_];
  v32 = [v28 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setGradientOvalization_];

  [v13 addSubview_];
  return v13;
}

id sub_1891F7824()
{
  v1 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v95 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v95 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v95 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v95 - v13);
  v106 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v106);
  v98 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v110 = (&v95 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v111 = &v95 - v19;
  v112 = v0;
  v105 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_style;
  if (*&v0[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_style])
  {
    if (qword_1EA930C78 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v1, qword_1EA930C80);
    v109 = type metadata accessor for _Glass._GlassVariant;
    sub_188AD8D14(v20, v3, type metadata accessor for _Glass._GlassVariant);
    v21 = sub_18A4A3118();
    v104 = &v95;
    v22 = *(v21 - 8);
    v23 = v22[8];
    MEMORY[0x1EEE9AC00](v21);
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
    v108 = v3;
    v103 = &v95;
    MEMORY[0x1EEE9AC00](v25);
    v26 = sub_18A4A3108();
    v99 = &v95;
    MEMORY[0x1EEE9AC00](v26);
    sub_18A4A2F08();
    sub_188B647BC(&v95 - v24, &v95 - v24);
    v27 = v22[1];
    v27(&v95 - v24, v21);
    v28 = (v27)(&v95 - v24, v21);
    v29 = v27;
    v102 = v27;
    v30 = MEMORY[0x1EEE9AC00](v28);
    v31 = v22[2];
    v100 = (v22 + 2);
    v101 = v31;
    v31(&v95 - v24, &v95 - v24, v21, v30);
    v32 = v108;
    sub_18A4A2F18();
    v29(&v95 - v24, v21);
    v33 = v107;
    v34 = sub_188AD8D14(v32, v107, v109);
    v104 = &v95;
    MEMORY[0x1EEE9AC00](v34);
    v35 = sub_18A4A30E8();
    v103 = &v95;
    MEMORY[0x1EEE9AC00](v35);
    v36 = sub_18A4A2F08();
    v99 = &v95;
    v37 = MEMORY[0x1EEE9AC00](v36);
    v38 = v101;
    v101(&v95 - v24, &v95 - v24, v21, v37);
    sub_1891F8E84();
    sub_18A4A7E88();
    v39 = v102;
    v40 = (v102)(&v95 - v24, v21);
    v99 = &v95;
    v41 = MEMORY[0x1EEE9AC00](v40);
    v38(&v95 - v24, &v95 - v24, v21, v41);
    sub_18A4A2F18();
    v39(&v95 - v24, v21);
    sub_188B0CDD0(v108, v109);
    v42 = v33;
  }

  else
  {
    v101 = v14;
    v103 = v11;
    if (qword_1EA9310C0 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v1, qword_1EA9310C8);
    sub_188AD8D14(v43, v8, type metadata accessor for _Glass._GlassVariant);
    v44 = sub_18A4A3118();
    v109 = &v95;
    v45 = *(v44 - 8);
    v46 = v45[8];
    MEMORY[0x1EEE9AC00](v44);
    v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
    v108 = &v95;
    MEMORY[0x1EEE9AC00](v48);
    v49 = sub_18A4A3108();
    v104 = &v95;
    MEMORY[0x1EEE9AC00](v49);
    v96 = v1;
    sub_18A4A2F08();
    sub_188B647BC(&v95 - v47, &v95 - v47);
    v50 = v45[1];
    v50(&v95 - v47, v44);
    v51 = (v50)(&v95 - v47, v44);
    v52 = MEMORY[0x1EEE9AC00](v51);
    v53 = v45[2];
    v102 = (v45 + 2);
    v99 = v53;
    (v53)(&v95 - v47, &v95 - v47, v44, v52);
    sub_18A4A2F18();
    v100 = v50;
    v97 = v45 + 1;
    v50(&v95 - v47, v44);
    result = [v112 tintColor];
    if (!result)
    {
      goto LABEL_21;
    }

    v55 = result;
    v56 = v103;
    sub_188B6556C(v8, v103, type metadata accessor for _Glass._GlassVariant);
    v57 = *(v96 + 7);

    *(v56 + v57) = v55;
    v109 = type metadata accessor for _Glass._GlassVariant;
    v42 = v101;
    v58 = sub_188AD8D14(v56, v101, type metadata accessor for _Glass._GlassVariant);
    v108 = &v95;
    MEMORY[0x1EEE9AC00](v58);
    v59 = sub_18A4A30E8();
    v104 = &v95;
    MEMORY[0x1EEE9AC00](v59);
    v60 = sub_18A4A2F08();
    v96 = &v95;
    v61 = MEMORY[0x1EEE9AC00](v60);
    v62 = v99;
    (v99)(&v95 - v47, &v95 - v47, v44, v61);
    sub_1891F8E84();
    sub_18A4A7E88();
    v63 = v100;
    v64 = (v100)(&v95 - v47, v44);
    v96 = &v95;
    v65 = MEMORY[0x1EEE9AC00](v64);
    v62(&v95 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0), &v95 - v47, v44, v65);
    sub_18A4A2F18();
    v63(&v95 - v47, v44);
    sub_188B0CDD0(v56, v109);
  }

  v66 = v110;
  _Glass.init(_:smoothness:)(v42, v110, 0.0);
  v67 = v111;
  sub_188B6556C(v66, v111, type metadata accessor for _Glass);
  v68 = v112;
  if (v112[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_lifted] != 1)
  {
    if (v112[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_animatesBackground] == 1)
    {
      v82 = v98;
      sub_188AD8D14(v67, v98, type metadata accessor for _Glass);
      v84 = v106;
      v83 = v107;
      v85 = *(v106 + 24);
      sub_188AD8D14(v82 + v85, v107, type metadata accessor for _Glass._GlassVariant);
      v86 = sub_18A4A2F58();
      v87 = *(v86 - 8);
      MEMORY[0x1EEE9AC00](v86);
      v89 = &v95 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_18A4A2F48();
      (*(v87 + 40))(v83, v89, v86);
      sub_188F6D250(v83, v82 + v85);
      *(&v115 + 1) = v84;
      v116 = &protocol witness table for _Glass;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v114);
      sub_188B6556C(v82, boxed_opaque_existential_0, type metadata accessor for _Glass);
    }

    else
    {
      v116 = 0;
      v114 = 0u;
      v115 = 0u;
    }

    UIView._background.setter(&v114);
    v91 = *&v68[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_innerShadowView];
    v92 = [v91 layer];
    [v92 setShadowRadius_];

    v93 = [v91 layer];
    [v93 setShadowOpacity_];

    v94 = [v91 layer];
    [v94 setShadowOffset_];

    v79 = [*&v68[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentWrapper] layer];
    v80 = sub_18A4A77F8();
    v81 = sub_18A4A7258();
    [v79 setValue:v80 forKeyPath:v81];
    goto LABEL_19;
  }

  *(&v115 + 1) = v106;
  v116 = &protocol witness table for _Glass;
  v69 = __swift_allocate_boxed_opaque_existential_0(&v114);
  sub_188AD8D14(v67, v69, type metadata accessor for _Glass);
  UIView._background.setter(&v114);
  type metadata accessor for _UIFlexInteractionSettingsDomain();
  v113.receiver = swift_getObjCClassFromMetadata();
  v113.super_class = &OBJC_METACLASS____TtC5UIKit32_UIFlexInteractionSettingsDomain;
  result = objc_msgSendSuper2(&v113, sel_rootSettings);
  if (result)
  {
    v70 = result;
    type metadata accessor for _UIFlexInteractionSettings();
    v71 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_liquidLensSpec);

    if (*&v68[v105])
    {
      v72 = &OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_large;
    }

    else
    {
      v72 = &OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_small;
    }

    v73 = *&v71[*v72];
    v74 = *&v68[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_innerShadowView];
    v75 = [v74 layer];
    [v75 setShadowRadius_];

    v76 = [v74 layer];
    v77 = *&v73[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_innerShadowOpacity];
    *&v77 = v77;
    [v76 setShadowOpacity_];

    v78 = [v74 layer];
    [v78 setShadowOffset_];

    v79 = [*&v68[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentWrapper] layer];
    v80 = sub_18A4A2D28();
    v81 = sub_18A4A7258();
    [v79 setValue:v80 forKeyPath:v81];

LABEL_19:
    return sub_188B0CDD0(v67, type metadata accessor for _Glass);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1891F869C()
{
  v1 = [*(v0 + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentWrapper) layer];
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v3 = -17.5;
  if (IsReduceTransparencyEnabled)
  {
    v3 = 0.0;
  }

  v6[3] = MEMORY[0x1E69E63B0];
  *v6 = v3;
  __swift_project_boxed_opaque_existential_0(v6, MEMORY[0x1E69E63B0]);
  v4 = sub_18A4A86A8();
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  v5 = sub_18A4A7258();
  [v1 setValue:v4 forKeyPath:v5];

  swift_unknownObjectRelease();
}

id sub_1891F8A1C(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = (a7)(0, a6);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_1891F8AAC(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = (a4)(0, a2);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

void sub_1891F8BC4()
{
  v1 = *&v0[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView_matchMoveAnimation];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 window];
    if (v3)
    {

      v4 = [v0 layer];
      v5 = sub_18A4A7258();
      [v4 addAnimation:v2 forKey:?];

      goto LABEL_6;
    }
  }

  v4 = [v0 layer];
  v5 = sub_18A4A7258();
  [v4 removeAnimationForKey_];
LABEL_6:
}

id sub_1891F8E10(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1891F8E84()
{
  result = qword_1ED48D448;
  if (!qword_1ED48D448)
  {
    sub_18A4A3118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48D448);
  }

  return result;
}

void sub_1891F8ED0(void *a1)
{
  v2 = OBJC_IVAR____UILiquidLensView_liftedContentView;
  v3 = *&v1[OBJC_IVAR____UILiquidLensView_liftedContentView];
  *&v1[OBJC_IVAR____UILiquidLensView_liftedContentView] = a1;
  v4 = a1;

  v5 = [v1 glass];
  v6 = *&v1[v2];
  v7 = *&v5[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentView];
  *&v5[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentView] = v6;
  v8 = v6;

  [*&v5[OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_liftedContentPortalView] setSourceView_];
}

void sub_1891F8F88()
{
  *(v0 + OBJC_IVAR____UILiquidLensView__lifted) = 0;
  *(v0 + OBJC_IVAR____UILiquidLensView_warpsContentBelow) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____UILiquidLensView_liftedContentView) = 0;
  *(v0 + OBJC_IVAR____UILiquidLensView_liftedContentMode) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____UILiquidLensView_restingBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____UILiquidLensView_restingShadowProperties) = 0;
  v1 = OBJC_IVAR____UILiquidLensView_flexInteraction;
  *(v0 + v1) = [objc_allocWithZone(_UIFlexInteraction) init];
  *(v0 + OBJC_IVAR____UILiquidLensView____lazy_storage___liftPortal) = 0;
  *(v0 + OBJC_IVAR____UILiquidLensView_belowGlassWarpBackdrop) = 0;
  *(v0 + OBJC_IVAR____UILiquidLensView_liftedContentPunchout) = 0;
  v2 = OBJC_IVAR____UILiquidLensView_contentWrapper;
  v3 = [objc_allocWithZone(UIView) init];
  [v3 setUserInteractionEnabled_];
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____UILiquidLensView_glass;
  _s14ClearGlassViewCMa();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____UILiquidLensView_liftProgress;
  type metadata accessor for _UIDebouncingAnimatableFloat();
  v7 = v6;
  v8 = objc_allocWithZone(v6);
  v9 = &v8[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v9 = 0;
  *(v9 + 1) = 0;
  v14.receiver = v8;
  v14.super_class = v7;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = &v10[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v11 = 0xD00000000000001ELL;
  *(v11 + 1) = 0x800000018A6B2110;

  *(v0 + v5) = v10;
  *(v0 + OBJC_IVAR____UILiquidLensView_unliftDelayTimer) = 0;
  v12 = v0 + OBJC_IVAR____UILiquidLensView_liftTimestamp;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v0 + OBJC_IVAR____UILiquidLensView_forceUnliftTimerWithoutAnimations) = 0;
  v13 = OBJC_IVAR____UILiquidLensView_groupCompletion;
  *(v0 + v13) = [objc_allocWithZone(_UIGroupCompletion) init];
  sub_18A4A8398();
  __break(1u);
}

void sub_1891F91B4()
{
  *(v0 + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_style) = 0;
  *(v0 + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentView) = 0;
  v1 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_liftedContentPortalView;
  v2 = [objc_allocWithZone(_UIPortalView) init];
  [v2 setAutoresizingMask_];
  v3 = sub_18A4A7258();
  [v2 setName_];

  [v2 setMatchesAlpha_];
  [v2 setMatchesPosition_];
  [v2 setMatchesTransform_];
  [v2 setClipsToBounds_];
  v4 = [v2 layer];
  [v4 setCornerRadius_];

  v5 = [v2 layer];
  [v5 setCornerCurve_];

  v6 = [v2 layer];
  [v6 setAllowsEdgeAntialiasing_];

  *(v0 + v1) = v2;
  v7 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_innerShadowView;
  *(v0 + v7) = [objc_allocWithZone(UIView) init];
  v8 = OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_contentWrapper;
  *(v0 + v8) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_animatesBackground) = 0;
  *(v0 + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_lifted) = 0;
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_1891F94A8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1, 0);
  }

  return result;
}

void sub_1891F9600(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1891F9658(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1891FB67C(a1);

  *a2 = v3;
}

void sub_1891F96A0(id *a1, id *location)
{
  objc_storeStrong(location, *a1);
  v3 = location[6];
  if ((v3 & 1) == 0)
  {
    location[6] = (v3 | 1);
  }
}

void (*UIShadowProperties.color.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return sub_1891F972C;
}

void sub_1891F972C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v7 = v4;

    *v2 = v7;
    v5 = v2[6];
    if ((v5 & 1) == 0)
    {
      v2[6] = v5 | 1;
    }
  }

  else
  {

    *v2 = v4;
    v6 = v2[6];
    if ((v6 & 1) == 0)
    {
      v2[6] = v6 | 1;
    }
  }
}

uint64_t (*UIShadowProperties.opacity.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_1891F97F8;
}

void *sub_1891F97F8(void *result)
{
  v1 = result[1];
  *(v1 + 8) = *result;
  v2 = *(v1 + 48);
  if ((v2 & 2) == 0)
  {
    *(v1 + 48) = v2 | 2;
  }

  return result;
}

uint64_t (*UIShadowProperties.radius.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_1891F984C;
}

void *sub_1891F984C(void *result)
{
  v1 = result[1];
  *(v1 + 16) = *result;
  v2 = *(v1 + 48);
  if ((v2 & 4) == 0)
  {
    *(v1 + 48) = v2 | 4;
  }

  return result;
}

void UIShadowProperties.offset.setter(double a1, double a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  v3 = *(v2 + 48);
  if ((v3 & 8) == 0)
  {
    *(v2 + 48) = v3 | 8;
  }
}

void *UIShadowProperties.path.getter()
{
  result = *(v0 + 40);
  if (result)
  {
    [result copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92E890, off_1E70E94F8);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void UIShadowProperties.path.setter(void *a1)
{
  if (a1)
  {
    [a1 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();

    sub_188A34624(0, &qword_1EA92E890, off_1E70E94F8);
    if (swift_dynamicCast())
    {
      v3 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 40) = v3;
  v4 = *(v1 + 48);
  if ((v4 & 0x10) == 0)
  {
    *(v1 + 48) = v4 | 0x10;
  }
}

void (*UIShadowProperties.path.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 48) = v1;
  v5 = *(v1 + 40);
  if (v5)
  {
    [v5 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92E890, off_1E70E94F8);
    v6 = swift_dynamicCast();
    v7 = *(v4 + 40);
    if (!v6)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 32) = v7;
  return sub_1891F9AC4;
}

void sub_1891F9AC4(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 32);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    UIShadowProperties.path.setter(v3);
  }

  else
  {
    UIShadowProperties.path.setter(*(*a1 + 32));
  }

  free(v2);
}

void sub_1891F9B30(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(v1 + 48);
  if (v7)
  {
    if ((v7 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(a1 + 24);
    objc_storeStrong(v1, *a1);
    v4 = v8;
    if ((v7 & 2) != 0)
    {
LABEL_3:
      if ((v7 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  *(v1 + 8) = v3;
  if ((v7 & 4) != 0)
  {
LABEL_4:
    if ((v7 & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    *(v1 + 24) = v4;
    if ((v7 & 0x10) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

LABEL_9:
  *(v1 + 16) = v2;
  if ((v7 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v7 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (v5)
  {
    [v5 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92E890, off_1E70E94F8);
    if (swift_dynamicCast())
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }
  }

  *(v1 + 40) = v5;
LABEL_16:
  *(v1 + 56) = v6;
}

uint64_t UIShadowProperties.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x18CFE3810](*&v2);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x18CFE3810](*&v6);
  sub_18A4A7C98();
  sub_18A4A88A8();
  if (v4)
  {
    v7 = v4;
    sub_18A4A7C98();
  }

  return MEMORY[0x18CFE37E0](v5);
}

uint64_t UIShadowProperties.hashValue.getter()
{
  sub_18A4A8888();
  UIShadowProperties.hash(into:)(v1);
  return sub_18A4A88E8();
}

uint64_t sub_1891F9D3C()
{
  sub_18A4A8888();
  UIShadowProperties.hash(into:)(v1);
  return sub_18A4A88E8();
}

uint64_t sub_1891F9D80()
{
  sub_18A4A8888();
  UIShadowProperties.hash(into:)(v1);
  return sub_18A4A88E8();
}

uint64_t sub_1891F9DC0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *v0;
  v4 = [v3 description];
  v5 = sub_18A4A7288();
  v7 = v6;

  MEMORY[0x18CFE22D0](v5, v7);

  MEMORY[0x18CFE22D0](59, 0xE100000000000000);
  v8 = sub_188C8D8B4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_188C8D8B4((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[16 * v10];
  *(v11 + 4) = 0x203D20726F6C6F63;
  *(v11 + 5) = 0xE800000000000000;
  v12 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v12);

  v14 = *(v8 + 2);
  v13 = *(v8 + 3);
  if (v14 >= v13 >> 1)
  {
    v8 = sub_188C8D8B4((v13 > 1), v14 + 1, 1, v8);
  }

  *(v8 + 2) = v14 + 1;
  v15 = &v8[16 * v14];
  *(v15 + 4) = 0x207974696361706FLL;
  *(v15 + 5) = 0xEA0000000000203DLL;
  v16 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v16);

  v18 = *(v8 + 2);
  v17 = *(v8 + 3);
  if (v18 >= v17 >> 1)
  {
    v8 = sub_188C8D8B4((v17 > 1), v18 + 1, 1, v8);
  }

  *(v8 + 2) = v18 + 1;
  v19 = &v8[16 * v18];
  *(v19 + 4) = 0x3D20737569646172;
  *(v19 + 5) = 0xE900000000000020;
  MEMORY[0x18CFE22D0](0x3D2074657366666FLL, 0xE900000000000020);
  type metadata accessor for CGSize(0);
  sub_18A4A82D8();
  v21 = *(v8 + 2);
  v20 = *(v8 + 3);
  if (v21 >= v20 >> 1)
  {
    v8 = sub_188C8D8B4((v20 > 1), v21 + 1, 1, v8);
  }

  *(v8 + 2) = v21 + 1;
  v22 = &v8[16 * v21];
  *(v22 + 4) = 0;
  *(v22 + 5) = 0xE000000000000000;
  if (v2)
  {
    [v2 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA92E890, off_1E70E94F8);
    if (swift_dynamicCast())
    {
      v23 = [v1 description];
      v24 = sub_18A4A7288();
      v26 = v25;

      MEMORY[0x18CFE22D0](v24, v26);

      v28 = *(v8 + 2);
      v27 = *(v8 + 3);
      if (v28 >= v27 >> 1)
      {
        v8 = sub_188C8D8B4((v27 > 1), v28 + 1, 1, v8);
      }

      *(v8 + 2) = v28 + 1;
      v29 = &v8[16 * v28];
      *(v29 + 4) = 0x203D2068746170;
      *(v29 + 5) = 0xE700000000000000;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B0, &qword_18A65C630);
  sub_188A34360(&qword_1EA939C40, &qword_1EA93F3B0, &qword_18A65C630, MEMORY[0x1E69E6310]);
  v30 = sub_18A4A71F8();

  return v30;
}

unint64_t UIShadowProperties.description.getter()
{
  sub_18A4A80E8();

  v0 = sub_1891F9DC0();
  MEMORY[0x18CFE22D0](v0);

  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  return 0xD000000000000013;
}

unint64_t UIShadowProperties.debugDescription.getter()
{
  sub_18A4A80E8();

  v0 = sub_1891F9DC0();
  MEMORY[0x18CFE22D0](v0);

  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t UIShadowProperties.customMirror.getter()
{
  v1 = sub_18A4A8918();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510, &unk_18A643A10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16[-v6 - 8];
  v8 = v0[1];
  v22[0] = *v0;
  v22[1] = v8;
  v9 = v0[3];
  v11 = *v0;
  v10 = v0[1];
  v22[2] = v0[2];
  v22[3] = v9;
  v18 = v11;
  v19 = v10;
  v12 = v0[3];
  v20 = v0[2];
  v21 = v12;
  v17 = MEMORY[0x1E69E7CC0];
  v13 = sub_18A4A8908();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  sub_188BFAE70(v22, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220, &unk_18A658B90);
  sub_188A34360(&qword_1EA937520, &unk_1EA932220, &unk_18A658B90, MEMORY[0x1E69E6340]);
  return sub_18A4A8928();
}

uint64_t sub_1891FA53C(uint64_t a1)
{
  v2 = sub_18A4A8918();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510, &unk_18A643A10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17[-v7 - 8];
  v9 = v1[1];
  v23[0] = *v1;
  v23[1] = v9;
  v10 = v1[3];
  v12 = *v1;
  v11 = v1[1];
  v23[2] = v1[2];
  v23[3] = v10;
  v19 = v12;
  v20 = v11;
  v13 = v1[3];
  v21 = v1[2];
  v22 = v13;
  v18 = MEMORY[0x1E69E7CC0];
  v14 = sub_18A4A8908();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  sub_188BFAE70(v23, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220, &unk_18A658B90);
  sub_188A34360(&qword_1EA937520, &unk_1EA932220, &unk_18A658B90, MEMORY[0x1E69E6340]);
  return sub_18A4A8928();
}

void __swiftcall UIShadowProperties.init()(UIShadowProperties *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

double sub_1891FAB04(void *a1)
{
  v3 = v1 + OBJC_IVAR___UIShadowProperties__backingProperties;
  swift_beginAccess();
  if (a1)
  {
    [a1 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();

    sub_188A34624(0, &qword_1EA92E890, off_1E70E94F8);
    v4 = swift_dynamicCast();
    v5 = v9;
    if (!v4)
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 40);
  *(v3 + 40) = v5;

  v7 = *(v3 + 48);
  if ((v7 & 0x10) == 0)
  {
    *(v3 + 48) = v7 | 0x10;
  }

  swift_endAccess();
  return result;
}

BOOL UIShadowProperties.isEqual(_:)(uint64_t a1)
{
  v2 = sub_188C85D28(a1, v34);
  if (v35)
  {
    type metadata accessor for UIShadowProperties(v2);
    if (swift_dynamicCast())
    {
      v3 = v33;
      v4 = &v1[OBJC_IVAR___UIShadowProperties__backingProperties];
      swift_beginAccess();
      v5 = *(v4 + 1);
      v29[0] = *v4;
      v29[1] = v5;
      v6 = *(v4 + 3);
      v8 = *v4;
      v7 = *(v4 + 1);
      v29[2] = *(v4 + 2);
      v29[3] = v6;
      v25 = v8;
      v26 = v7;
      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      v11 = &v33[OBJC_IVAR___UIShadowProperties__backingProperties];
      v27 = v10;
      v28 = v9;
      swift_beginAccess();
      v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(v11 + 3);
      v30[2] = *(v11 + 2);
      v30[3] = v14;
      v30[0] = v12;
      v30[1] = v13;
      v15 = *(v11 + 1);
      v21 = *v11;
      v22 = v15;
      v16 = *(v11 + 3);
      v23 = *(v11 + 2);
      v24 = v16;
      sub_188BFAE70(v29, v20);
      sub_188BFAE70(v30, v20);
      LOBYTE(v11) = _s5UIKit18UIShadowPropertiesV2eeoiySbAC_ACtFZ_0(&v25, &v21);
      v31[0] = v21;
      v31[1] = v22;
      v31[2] = v23;
      v31[3] = v24;
      sub_188D0D8D0(v31);
      v32[0] = v25;
      v32[1] = v26;
      v32[2] = v27;
      v32[3] = v28;
      sub_188D0D8D0(v32);
      if (v11)
      {
        v17 = [v1 _backgroundConfigurationShadowType];
        v18 = [v3 _backgroundConfigurationShadowType];

        return v17 == v18;
      }
    }
  }

  else
  {
    sub_188A553EC(v34);
  }

  return 0;
}

uint64_t UIShadowProperties.description.getter()
{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000015, 0x800000018A6B2170);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](8251, 0xE200000000000000);
  swift_beginAccess();
  v0 = sub_1891F9DC0();
  MEMORY[0x18CFE22D0](v0);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

id UIShadowProperties.init(coder:)(void *a1)
{
  v2 = sub_1891FB6B4(a1);

  return v2;
}

void sub_1891FB1FC(void *a1)
{
  v3 = [v1 color];
  v4 = sub_18A4A7258();
  [a1 encodeObject:v3 forKey:v4];

  [v1 opacity];
  v6 = v5;
  v7 = sub_18A4A7258();
  [a1 encodeDouble:v7 forKey:v6];

  [v1 radius];
  v9 = v8;
  v10 = sub_18A4A7258();
  [a1 encodeDouble:v10 forKey:v9];

  [v1 offset];
  v11 = sub_18A4A7258();
  _UIEncodeCGSizeForKey(a1, v11);

  v12 = [v1 path];
  v13 = sub_18A4A7258();
  [a1 encodeObject:v12 forKey:v13];

  v14 = [v1 _backgroundConfigurationShadowType];
  v15 = sub_18A4A7258();
  [a1 encodeInteger:v14 forKey:v15];

  v16 = &v1[OBJC_IVAR___UIShadowProperties__backingProperties];
  swift_beginAccess();
  v17 = *(v16 + 6);
  v18 = sub_18A4A7258();
  [a1 encodeInteger:v17 forKey:v18];
}

BOOL _s5UIKit18UIShadowPropertiesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *a2;
  v8 = *a1;
  sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
  v9 = v8;
  v10 = v7;
  v11 = sub_18A4A7C88();

  if (v11)
  {
    if (v3)
    {
      if (v5)
      {
        sub_188A34624(0, &qword_1EA92E890, off_1E70E94F8);
        v12 = v5;
        v13 = v3;
        v14 = sub_18A4A7C88();

        if (v14)
        {
          return v4 == v6;
        }
      }
    }

    else if (!v5)
    {
      return v4 == v6;
    }
  }

  return 0;
}

uint64_t sub_1891FB60C(uint64_t result)
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

uint64_t sub_1891FB644(uint64_t result)
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

uint64_t sub_1891FB67C(uint64_t a1)
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

id sub_1891FB6B4(void *a1)
{
  v2 = v1;
  sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
  v4 = sub_18A4A7C18();
  if (!v4)
  {
    v4 = [objc_opt_self() blackColor];
  }

  v5 = v4;
  v6 = sub_18A4A7258();
  [a1 decodeDoubleForKey_];
  v8 = v7;

  v9 = sub_18A4A7258();
  [a1 decodeDoubleForKey_];
  v11 = v10;

  v12 = sub_18A4A7258();
  [a1 decodeCGSizeForKey_];
  v14 = v13;
  v16 = v15;

  sub_188A34624(0, &qword_1EA92E890, off_1E70E94F8);
  v17 = sub_18A4A7C18();
  v18 = sub_18A4A7258();
  v19 = [a1 decodeIntegerForKey_];

  v20 = &v2[OBJC_IVAR___UIShadowProperties__backingProperties];
  *v20 = v5;
  *(v20 + 1) = v8;
  *(v20 + 2) = v11;
  *(v20 + 3) = v14;
  *(v20 + 4) = v16;
  *(v20 + 6) = 0;
  *(v20 + 7) = 0;
  *(v20 + 5) = v17;
  swift_beginAccess();
  *(v20 + 7) = v19;
  v21 = v17;
  v22 = v5;
  v23 = sub_18A4A7258();
  v24 = [a1 decodeIntegerForKey_];

  *(v20 + 6) = v24;
  v26.receiver = v2;
  v26.super_class = UIShadowProperties;
  return objc_msgSendSuper2(&v26, sel_init);
}

unint64_t sub_1891FB91C()
{
  result = qword_1EA9401D0;
  if (!qword_1EA9401D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9401D0);
  }

  return result;
}

unint64_t sub_1891FB980()
{
  result = qword_1EA9401D8;
  if (!qword_1EA9401D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9401D8);
  }

  return result;
}

unint64_t sub_1891FB9D8()
{
  result = qword_1EA9401E0;
  if (!qword_1EA9401E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9401E0);
  }

  return result;
}

unint64_t sub_1891FBA30()
{
  result = qword_1EA9401E8;
  if (!qword_1EA9401E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9401E8);
  }

  return result;
}

unint64_t sub_1891FBA88()
{
  result = qword_1EA9401F0;
  if (!qword_1EA9401F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9401F0);
  }

  return result;
}

uint64_t sub_1891FBAF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  static UISceneConnectionOptionDefinition.definitionID.getter(v24);
  v11 = v24[0];
  v10 = v24[1];
  v13 = v24[2];
  v12 = v24[3];
  v14 = OBJC_IVAR____UISceneConnectionOptionDefinitionPayloadStorage_payloads;
  swift_beginAccess();
  if (!*(*(v5 + v14) + 16))
  {

    goto LABEL_6;
  }

  sub_188DCCD6C(v11, v10, v13, v12);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_6:
    swift_endAccess();
    goto LABEL_7;
  }

  swift_endAccess();
  _s13StoredPayloadCMa(0, a1, a3, v17);
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
LABEL_7:
    v21 = *(a2 - 8);
    v22 = 1;
    return (*(v21 + 56))(a4, v22, 1, a2);
  }

  v19 = *(*v18 + 120);
  v20 = v18;
  swift_beginAccess();
  v21 = *(a2 - 8);
  (*(v21 + 16))(a4, v20 + v19, a2);
  v22 = 0;
  return (*(v21 + 56))(a4, v22, 1, a2);
}

double sub_1891FBCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a2;
  v41 = a3;
  v38 = a1;
  v39 = a6;
  v37 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UISceneConnectionOptionDefinition.definitionID.getter(&v43);
  v13 = v43;
  v12 = v44;
  v15 = v45;
  v14 = v46;
  v16 = OBJC_IVAR____UISceneConnectionOptionDefinitionPayloadStorage_payloads;
  swift_beginAccess();
  if (!*(*(v7 + v16) + 16))
  {

    goto LABEL_8;
  }

  sub_188DCCD6C(v13, v12, v15, v14);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_8:
    swift_endAccess();
    goto LABEL_9;
  }

  swift_endAccess();
  _s13StoredPayloadCMa(0, a5, a7, v19);
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
LABEL_9:
    static UISceneConnectionOptionDefinition.definitionID.getter(&v43);
    v29 = v43;
    v30 = v44;
    v31 = v45;
    v32 = v46;
    _s13StoredPayloadCMa(0, a5, a7, v33);
    (*(v37 + 16))(v11, v38, v39);
    swift_allocObject();
    v34 = sub_1891FC704(a5, v11, v40, v41);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v7 + v16);
    *(v7 + v16) = 0x8000000000000000;
    sub_188E9F6A0(v34, v29, v30, v31, v32, isUniquelyReferenced_nonNull_native);

    *(v7 + v16) = v42;
    swift_endAccess();
    return result;
  }

  v21 = v20;
  v22 = *(*v20 + 120);
  swift_beginAccess();
  v23 = *(v37 + 24);

  v23(&v21[v22], v38, v39);
  swift_endAccess();
  v24 = *v21;
  v25 = v40;
  v26 = v41;
  if (!v41)
  {
    v25 = *&v21[*(v24 + 128)];
  }

  v27 = &v21[*(v24 + 128)];
  *v27 = v25;
  v27[1] = v26;

  return result;
}

void sub_1891FC000(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____UISceneConnectionOptionDefinitionPayloadStorage_payloads;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = *(**(*(v6 + 56) + ((v12 << 9) | (8 * v13))) + 88);

    LOBYTE(v14) = v14(a1, a2);

    if (v14)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_11;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
}

double sub_1891FC160(uint64_t a1)
{
  v3 = OBJC_IVAR____UISceneConnectionOptionDefinitionPayloadStorage_payloads;
  swift_beginAccess();
  v4 = *(a1 + v3);
  v5 = OBJC_IVAR____UISceneConnectionOptionDefinitionPayloadStorage_payloads;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  *(v1 + v5) = 0x8000000000000000;
  sub_1891FCC4C(v4, sub_1891FCBF4, 0, isUniquelyReferenced_nonNull_native, &v8);

  *(v1 + v5) = v8;
  swift_endAccess();
  return result;
}

uint64_t sub_1891FC2AC()
{
  v1 = OBJC_IVAR____UISceneConnectionOptionDefinitionPayloadStorage_payloads;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(**(*(v2 + 56) + ((v9 << 9) | (8 * v11))) + 80);

    v12(v13);

    MEMORY[0x18CFE2450](v14);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    result = sub_18A4A75F8();
    v3 = v16;
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      v15 = sub_188F99354(v3);

      return v15;
    }

    v6 = *(v2 + 64 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1891FC658(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
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

uint64_t *sub_1891FC704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v4 + *(*v4 + 128));
  *v8 = 0;
  v8[1] = 0;
  v9 = *(*v4 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v4 + v9, a2, AssociatedTypeWitness);
  *v8 = a3;
  v8[1] = a4;
  return v4;
}

uint64_t sub_1891FC7EC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v12 - v6;
  v8 = *(v1 + 120);
  swift_beginAccess();
  (*(v5 + 16))(v7, v0 + v8, AssociatedTypeWitness);
  static UISceneConnectionOptionDefinition.createAction(payload:responder:)(v7, 0, v3, v2);
  v10 = v9;
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v10;
}

uint64_t sub_1891FC970(uint64_t a1, uint64_t a2)
{
  if (*(v2 + *(*v2 + 128) + 8))
  {
    sub_188C72980();
    v3 = sub_18A4A7DC8();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

double sub_1891FC9F0()
{
  v1 = *(*v0 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return result;
}

uint64_t sub_1891FCAC0()
{
  v1 = *(*v0 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return v0;
}

uint64_t sub_1891FCB88()
{
  sub_1891FCAC0();

  return swift_deallocClassInstance();
}

double sub_1891FCBF4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;

  return result;
}

void sub_1891FCC4C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, __n128), uint64_t a3, char a4, void *a5)
{
  v49 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v37 = v10;
  for (i = v6; ; v6 = i)
  {
    v12 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 32 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v18 = v15[2];
    v19 = v15[3];
    v43[0] = *v15;
    v43[1] = v16;
    v43[2] = v18;
    v43[3] = v19;
    v43[4] = v17;

    (a2)(&v44, v43);

    v20 = v45;
    if (!v45)
    {
LABEL_22:
      sub_188E036A4(a1);

      return;
    }

    v21 = v44;
    v22 = v47;
    v42 = v48;
    v23 = *v49;
    v41 = v46;
    v25 = sub_188DCCD6C(v44, v45, v46, v47);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_24;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_188FA4100();
      }
    }

    else
    {
      sub_1890BD778(v28, a4 & 1);
      v30 = sub_188DCCD6C(v21, v20, v41, v22);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_26;
      }

      v25 = v30;
    }

    v9 &= v9 - 1;
    v32 = *v49;
    if (v29)
    {

      *(v32[7] + 8 * v25) = v42;
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      v33 = (v32[6] + 32 * v25);
      *v33 = v21;
      v33[1] = v20;
      v33[2] = v41;
      v33[3] = v22;
      *(v32[7] + 8 * v25) = v42;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v11 = v12;
    v10 = v37;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_22;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_18A4A87A8();
  __break(1u);
}

void sub_1891FCF18()
{
  v2 = *(v0 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator);
  v3 = [v2 state];
  v4 = &selRef_prefersHorizontalMenuAttachment;
  if (v3 != 1)
  {
    [*&v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_mainProgressValue] presentationValue];
    v6 = v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isProgressValueReversed] ? 1.0 - v5 : v5;
    if ([v2 _trackedAnimationsCount] < 3)
    {
      [v2 pauseAnimation];
    }

    else
    {
      [v2 setFractionComplete_];
    }

    v57 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning;
    v4 = &selRef_prefersHorizontalMenuAttachment;
    if (v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] == 1)
    {
      v7 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_keyframes;
      swift_beginAccess();
      v8 = *&v59[v7];
      if (!(v8 >> 62))
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v4 = &selRef_prefersHorizontalMenuAttachment;
        if (!v9)
        {
          goto LABEL_52;
        }

        goto LABEL_11;
      }

      v9 = sub_18A4A7F68();
      v4 = &selRef_prefersHorizontalMenuAttachment;
      if (v9)
      {
LABEL_11:
        v56 = v9 - 1;
        if (v9 >= 1)
        {
          v54 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued;
          v55 = v8 & 0xC000000000000001;
          v52 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed;
          v53 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior;

          v10 = 0;
          if ((v8 & 0xC000000000000001) == 0)
          {
            goto LABEL_14;
          }

LABEL_13:
          v11 = sub_188E48F98(v10, v8);
          while (1)
          {
            v12 = *(v11 + 24);
            v13 = swift_allocObject();
            *(v13 + 16) = v59;
            *(v13 + 24) = v6;
            *(v13 + 32) = v11;
            v14 = v59[v57];
            v15 = *&v59[v54];
            if (v15)
            {
              v16 = v59;
              swift_retain_n();
              v17 = v16;
              v18 = v15;
            }

            else
            {
              v18 = *&v59[v53];
              if (v18)
              {
                v19 = v59;
                swift_retain_n();
                swift_unknownObjectRetain_n();
                v20 = v19;
              }

              else
              {
                type metadata accessor for _UIFluidNavigationTransitionsDomain();
                v67.receiver = swift_getObjCClassFromMetadata();
                v67.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
                v21 = v59;
                swift_retain_n();
                v1 = v21;
                v22 = objc_msgSendSuper2(&v67, sel_rootSettings);
                if (!v22)
                {
                  goto LABEL_66;
                }

                v23 = v22;
                type metadata accessor for _UIFluidNavigationTransitionsSpec();
                v24 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

                v25 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
                if (!v14)
                {
                  v25 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
                }

                v26 = *&v24[*v25];

                v18 = v26;
              }
            }

            swift_unknownObjectRetain_n();
            v27 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v18, v12);
            swift_unknownObjectRelease();
            if (v14)
            {
              goto LABEL_29;
            }

            type metadata accessor for _UIFluidNavigationTransitionsDomain();
            v66.receiver = swift_getObjCClassFromMetadata();
            v66.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
            v28 = objc_msgSendSuper2(&v66, sel_rootSettings);
            if (!v28)
            {
              goto LABEL_65;
            }

            v29 = v28;
            type metadata accessor for _UIFluidNavigationTransitionsSpec();
            v1 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

            v30 = v1[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
            if ((v30 & 1) == 0)
            {
LABEL_29:
              v58 = objc_opt_self();
              v36 = swift_allocObject();
              v36[2] = sub_189202088;
              v36[3] = v13;
              v36[4] = v59;
              v64 = sub_1892022EC;
              v65 = v36;
              aBlock = MEMORY[0x1E69E9820];
              v61 = 1107296256;
              v62 = sub_188A4A8F0;
              v63 = &block_descriptor_80_5;
              v1 = v8;
              v37 = _Block_copy(&aBlock);
              v38 = v59;
              swift_unknownObjectRetain();

              v39 = swift_allocObject();
              *(v39 + 16) = 0;
              *(v39 + 24) = 0;
              v64 = sub_189202328;
              v65 = v39;
              aBlock = MEMORY[0x1E69E9820];
              v61 = 1107296256;
              v62 = sub_188C3DD6C;
              v63 = &block_descriptor_87_1;
              v40 = _Block_copy(&aBlock);

              [v58 _animateUsingSpringBehavior_tracking_animations_completion_];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              _Block_release(v40);
              v41 = v37;
              v8 = v1;
              _Block_release(v41);

              swift_unknownObjectRelease();
              goto LABEL_48;
            }

            v31 = *(v11 + 16);
            if (v59[v52] == 1)
            {
              v32 = v31 + *(v11 + 24);
              if (v6 > v32)
              {
                goto LABEL_45;
              }

              v33 = *(v11 + 48);
              v34 = *(v11 + 56);
              v35 = 0.0;
            }

            else
            {
              if (v31 > v6)
              {
                goto LABEL_45;
              }

              v33 = *(v11 + 48);
              v34 = *(v11 + 56);
              v32 = v31 + *(v11 + 24);
              v35 = 1.0;
            }

            v42 = _UIMap(v35, *(v11 + 16), v32);
            if (v42 < 0.0 && v31 > 0.0)
            {
              v42 = 0.0;
            }

            if (v42 > 1.0 && v32 < 1.0)
            {
              v45 = 1.0;
            }

            else
            {
              v45 = v42;
            }

            if ((v34 & 1) != 0 || v33 != v45)
            {
              *(v11 + 48) = v45;
              *(v11 + 56) = 0;
              v46 = *(v11 + 32);

              v46(v47, v45);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              goto LABEL_47;
            }

LABEL_45:
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
LABEL_47:

LABEL_48:
            if (v56 == v10)
            {

              v4 = &selRef_prefersHorizontalMenuAttachment;
              goto LABEL_52;
            }

            ++v10;
            if (v55)
            {
              goto LABEL_13;
            }

LABEL_14:
            v11 = *(v8 + 8 * v10 + 32);
          }
        }

        __break(1u);
LABEL_65:

        __break(1u);
LABEL_66:

        __break(1u);
        goto LABEL_67;
      }
    }
  }

LABEL_52:
  [*&v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_backgroundProgressValue] v4[275]];
  if (v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isProgressValueReversed])
  {
    v48 = 1.0 - v48;
  }

  *&v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete] = v48;
  *&v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued] = 0;
  swift_unknownObjectRelease();
  v49 = *&v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state];
  if (!v49)
  {
    *&v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] = 1;
    v50 = &v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning];
LABEL_60:
    *v50 = 0;
    v51 = v59;
    sub_189200DAC(0, 0, v51, v51, 1.0);

    return;
  }

  if (v49 != 2)
  {
    if (v49 != 1)
    {
LABEL_67:
      sub_18A4A8398();
      __break(1u);
      return;
    }

    v50 = &v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning];
    if (v59[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning])
    {
      goto LABEL_60;
    }
  }
}

void sub_1891FD740()
{
  v1 = *&v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state];
  if (!v1)
  {
    goto LABEL_6;
  }

  if (v1 != 2)
  {
    if (v1 != 1)
    {
      sub_18A4A8398();
      __break(1u);
      return;
    }

    if ((v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] & 1) == 0)
    {
LABEL_6:
      *&v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] = 1;
      v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] = 1;
      *&v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued] = 0;
      swift_unknownObjectRelease();
      v2 = v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed];
      *&v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionPosition] = v2;
      v3 = 1.0;
      if (v2)
      {
        v3 = 0.0;
      }

      *&v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete] = v3;
      sub_1891FED38();
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      v5 = v0;
      sub_1892011D4(sub_189202208, v4, v5, v5, 1.0);
    }
  }
}

void sub_1891FD8A8(double a1)
{
  *&v1[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete] = a1;
  if (*&v1[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] == 1 && (v1[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] & 1) == 0)
  {
    v2 = v1;
    sub_189200DAC(0, 0, v2, v2, 1.0);
  }
}

void sub_1891FD934(id result)
{
  v2 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state;
  v3 = *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state);
  if (v3)
  {
    v4 = v3 == 2;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (v3 == 1)
    {
      v5 = result;
      *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning) = 0;
      *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued) = 0;
      swift_unknownObjectRelease();
      [*(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator) stopAnimation_];
      if (v5)
      {

        sub_1891FEB20();
      }

      else
      {
        *(v1 + v2) = 2;
      }
    }

    else
    {
      sub_18A4A8398();
      __break(1u);
    }
  }
}

void sub_1891FDA30(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state) == 2)
  {
    *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionPosition) = result;
    v2 = 0.0;
    if (!result)
    {
      v2 = 1.0;
    }

    *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete) = v2;
    [*(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator) finishAnimationAtPosition_];

    sub_1891FEB20();
  }
}

double sub_1891FDB50(double a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 16);
  v5 = v4 + *(v1 + 24);
  result = _UIMap(a1, v4, v5);
  if (result < 0.0 && v4 > 0.0)
  {
    result = 0.0;
  }

  if (result > 1.0 && v5 < 1.0)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = result;
  }

  if ((v3 & 1) != 0 || v2 != v9)
  {
    *(v1 + 48) = v9;
    *(v1 + 56) = 0;
    v10 = *(v1 + 32);

    v10(v11, v9);
  }

  return result;
}

uint64_t sub_1891FDC0C()
{

  return swift_deallocClassInstance();
}

char *sub_1891FDCEC(void *a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued] = 0;
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionPosition] = 2;
  v13 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations] = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionHandlers] = v13;
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_keyframes] = v13;
  v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isC2Finished] = 0;
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete] = 0;
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] = 0;
  v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] = 0;
  v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed] = 0;
  v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__pausesOnCompletion] = 0;
  if (a1)
  {
    v14 = a1;
  }

  else
  {
    v14 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  }

  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_backgroundProgressValue] = v14;
  v15 = objc_allocWithZone(UIViewFloatAnimatableProperty);
  v16 = a1;
  v17 = [v15 init];
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_mainProgressValue] = v17;
  v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isProgressValueReversed] = a2 & 1;
  v18 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:3 curve:0 animations:a5];
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator] = v18;
  *&v6[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior] = a4;
  v35.receiver = v6;
  v35.super_class = ObjectType;
  swift_unknownObjectRetain();
  v19 = objc_msgSendSuper2(&v35, sel_init);
  v20 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator;
  v21 = *&v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator];
  v22 = v19;
  [v21 setPausesOnCompletion_];
  [*&v19[v20] setScrubsLinearly_];
  [*&v19[v20] _setShouldLayoutSubviews_];
  [*&v19[v20] _setShouldBeginFromCurrentState_];
  [*&v19[v20] set:0 updatesModelValues:?];
  v23 = *&v19[v20];
  v24 = sub_18A4A7258();
  [v23 set:v24 name:?];

  v25 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_18A64B710;
  v27 = *&v22[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_mainProgressValue];
  *(v26 + 32) = v27;
  sub_188BFDA00();
  v28 = v27;
  v29 = sub_18A4A7518();

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34[4] = sub_188E3FCF4;
  v34[5] = v30;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 1107296256;
  v34[2] = sub_188A4A8F0;
  v34[3] = &block_descriptor_186_0;
  v31 = _Block_copy(v34);

  [v25 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v31);

  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_189200BA0(v22, v32, a3);

  swift_unknownObjectRelease();

  return v22;
}

void sub_1891FE0F4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  [*(Strong + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_mainProgressValue) presentationValue];
  if (v3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isProgressValueReversed])
  {
    v5 = 1.0 - v4;
  }

  else
  {
    v5 = v4;
  }

  v6 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator;
  v7 = [*&v3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator] _trackedAnimationsCount];
  v8 = *&v3[v6];
  if (v7 < 3)
  {
    [v8 pauseAnimation];
  }

  else
  {
    [v8 setFractionComplete_];
  }

  v52 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning;
  if (v3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] != 1)
  {
    goto LABEL_54;
  }

  v9 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_keyframes;
  swift_beginAccess();
  v53 = *&v3[v9];
  if (v53 >> 62)
  {
    v10 = sub_18A4A7F68();
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_54:

    return;
  }

  v10 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_54;
  }

LABEL_11:
  v51 = v10 - 1;
  if (v10 < 1)
  {
    __break(1u);
LABEL_57:

    __break(1u);
LABEL_58:

    __break(1u);
    return;
  }

  v50 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued;
  v48 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed;
  v49 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior;

  for (i = 0; ; ++i)
  {
    if ((v53 & 0xC000000000000001) != 0)
    {
      v17 = sub_188E48F98(i, v53);
    }

    else
    {
      v17 = *(v53 + 8 * i + 32);
    }

    v18 = *(v17 + 24);
    v19 = swift_allocObject();
    *(v19 + 16) = v3;
    *(v19 + 24) = v5;
    *(v19 + 32) = v17;
    v1 = v3[v52];
    v20 = *&v3[v50];
    if (v20)
    {
      v21 = v3;
      swift_retain_n();
      v22 = v21;
      v23 = v20;
    }

    else
    {
      v23 = *&v3[v49];
      if (v23)
      {
        v24 = v3;
        swift_retain_n();
        swift_unknownObjectRetain_n();
        v25 = v24;
      }

      else
      {
        v26 = v3[v52];
        type metadata accessor for _UIFluidNavigationTransitionsDomain();
        v62.receiver = swift_getObjCClassFromMetadata();
        v62.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
        v27 = v3;
        swift_retain_n();
        v1 = v27;
        v28 = objc_msgSendSuper2(&v62, sel_rootSettings);
        if (!v28)
        {
          goto LABEL_58;
        }

        v29 = v28;
        type metadata accessor for _UIFluidNavigationTransitionsSpec();
        v30 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

        v1 = v26;
        v31 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
        if (!v26)
        {
          v31 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
        }

        v32 = *&v30[*v31];

        v23 = v32;
      }
    }

    swift_unknownObjectRetain_n();
    v33 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v23, v18);
    swift_unknownObjectRelease();
    if (v1)
    {
      break;
    }

    type metadata accessor for _UIFluidNavigationTransitionsDomain();
    v61.receiver = swift_getObjCClassFromMetadata();
    v61.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
    v34 = objc_msgSendSuper2(&v61, sel_rootSettings);
    if (!v34)
    {
      goto LABEL_57;
    }

    v35 = v34;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v36 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

    LOBYTE(v35) = v36[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
    if ((v35 & 1) == 0)
    {
      break;
    }

    v37 = *(v17 + 16);
    if (v3[v48] == 1)
    {
      v38 = v37 + *(v17 + 24);
      if (v5 > v38)
      {
        goto LABEL_47;
      }

      v39 = *(v17 + 48);
      v40 = *(v17 + 56);
      v41 = 0.0;
    }

    else
    {
      if (v37 > v5)
      {
        goto LABEL_47;
      }

      v39 = *(v17 + 48);
      v40 = *(v17 + 56);
      v38 = v37 + *(v17 + 24);
      v41 = 1.0;
    }

    v42 = _UIMap(v41, *(v17 + 16), v38);
    if (v42 < 0.0 && v37 > 0.0)
    {
      v42 = 0.0;
    }

    if (v42 > 1.0 && v38 < 1.0)
    {
      v45 = 1.0;
    }

    else
    {
      v45 = v42;
    }

    if ((v40 & 1) == 0 && v39 == v45)
    {
LABEL_47:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_49;
    }

    *(v17 + 48) = v45;
    *(v17 + 56) = 0;
    v46 = *(v17 + 32);

    v46(v47, v45);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_49:

    if (v51 == i)
    {

      goto LABEL_52;
    }

LABEL_14:
    ;
  }

  v54 = objc_opt_self();
  v12 = swift_allocObject();
  v12[2] = sub_1892022F0;
  v12[3] = v19;
  v12[4] = v3;
  v59 = sub_1892022EC;
  v60 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_188A4A8F0;
  v58 = &block_descriptor_234_1;
  v13 = _Block_copy(&aBlock);
  v14 = v3;
  swift_unknownObjectRetain();

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v59 = sub_189202328;
  v60 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_188C3DD6C;
  v58 = &block_descriptor_241_0;
  v16 = _Block_copy(&aBlock);

  [v54 _animateUsingSpringBehavior_tracking_animations_completion_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(v16);
  _Block_release(v13);

  swift_unknownObjectRelease();
  if (v51 != i)
  {
    goto LABEL_14;
  }

LABEL_52:
}

void sub_1891FE7F8(uint64_t a1, uint64_t a2, double a3)
{
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = a3;
  if (a2)
  {
    v8 = objc_opt_self();
    sub_18A4A79D8();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = swift_allocObject();
    v16 = sub_189202238;
    *(v15 + 16) = sub_189202238;
    *(v15 + 24) = v7;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_223_0;
    v17 = _Block_copy(aBlock);

    LODWORD(v18) = v10;
    LODWORD(v19) = v12;
    LODWORD(v20) = v14;
    [v8 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
    _Block_release(v17);
  }

  else
  {

    sub_1891FEA00(v21, a3);

    v16 = 0;
    v7 = 0;
  }

  sub_188A55B8C(v16, v7);
}

void sub_1891FEA00(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isProgressValueReversed))
    {
      a2 = 1.0 - a2;
    }

    [*(Strong + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_backgroundProgressValue) setValue_];
    if ([*&v4[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator] _trackedAnimationsCount] <= 2)
    {
      v5 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_keyframes;
      swift_beginAccess();
      v6 = *&v4[v5];
      if (v6 >> 62)
      {
        if (!sub_18A4A7F68())
        {
          goto LABEL_8;
        }
      }

      else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:

        return;
      }
    }

    [*&v4[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_mainProgressValue] setValue_];
    goto LABEL_8;
  }
}

void sub_1891FEB20()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state;
  if ((*(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state) - 1) > 1)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000032, 0x800000018A6B2790);
    type metadata accessor for UIViewAnimatingState(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](0x2E657461747320, 0xE700000000000000);
    sub_18A4A8398();
    __break(1u);
  }

  else
  {
    v3 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionHandlers;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *(v1 + v3) = MEMORY[0x1E69E7CC0];
    *(v1 + v2) = 0;
    v5 = *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator);
    v6 = 1.0;
    if (*(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed))
    {
      v6 = 0.0;
    }

    [*(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator) setFractionComplete_];
    if ([v5 state] == 1)
    {
      [v5 stopAnimation_];
      [v5 finishAnimationAtPosition_];
    }

    v7 = *(v4 + 16);
    if (v7)
    {
      v8 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionPosition;
      v9 = v4 + 40;
      do
      {
        v10 = *(v9 - 8);
        v11 = *(v1 + v8);

        v10(&v11);

        v9 += 16;
        --v7;
      }

      while (v7);
    }
  }
}

void sub_1891FED38()
{
  if ([*&v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator] state] != 1)
  {
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1892020AC;
    *(v3 + 24) = v2;
    v6[4] = sub_188E3FE50;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_188A4A968;
    v6[3] = &block_descriptor_123_0;
    v4 = _Block_copy(v6);
    v5 = v0;

    [v1 _performWithInProcessProgressAnimating_block_];
    _Block_release(v4);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }
}

void sub_1891FEEC0(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);
      v9 = a2;

      v8(&v9);

      v7 += 16;
      --v6;
    }

    while (v6);
  }
}

void sub_1891FF108(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);
      v24[0] = a2;

      v8(v24);

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  v9 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_keyframes;
  swift_beginAccess();
  v10 = *(a1 + v9);
  if (v10 >> 62)
  {
    v11 = sub_18A4A7F68();
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = sub_188E48F98(i, v10);
      }

      else
      {
        v15 = *(v10 + 8 * i + 32);
      }

      v16 = *(v15 + 48);
      v17 = *(v15 + 56);
      v18 = *(v15 + 16);
      v19 = v18 + *(v15 + 24);
      v20 = _UIMap(a2, v18, v19);
      if (v20 < 0.0 && v18 > 0.0)
      {
        v20 = 0.0;
      }

      if (v20 > 1.0 && v19 < 1.0)
      {
        v23 = 1.0;
      }

      else
      {
        v23 = v20;
      }

      if ((v17 & 1) != 0 || v16 != v23)
      {
        *(v15 + 48) = v23;
        *(v15 + 56) = 0;
        v13 = *(v15 + 32);

        v13(v14, v23);
      }
    }
  }
}

void sub_1891FF464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_188E3FE50;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_188A4A968;
  v9[3] = &block_descriptor_148_2;
  v8 = _Block_copy(v9);

  [v5 _performWithInProcessProgressAnimating_block_];

  _Block_release(v8);
  LOBYTE(Strong) = swift_isEscapingClosureAtFileLocation();

  if (Strong)
  {
    __break(1u);
  }
}

id sub_1891FF87C(double a1)
{
  if (*&v1[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior])
  {
    goto LABEL_4;
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v8.receiver = swift_getObjCClassFromMetadata();
  v8.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  result = objc_msgSendSuper2(&v8, sel_rootSettings);
  if (result)
  {
    v4 = result;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

    v6 = *&v5[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring];
LABEL_4:
    swift_getObjectType();
    swift_unknownObjectRetain();
    v7 = swift_unknownObjectRetain();
    sub_189200184(v7, v1, a1);
    return swift_unknownObjectRelease_n();
  }

  __break(1u);
  return result;
}

void sub_1891FFAC0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  _s22HybridPropertyAnimatorC8KeyframeCMa();
  v10 = swift_allocObject();
  *(v10 + 40) = a2;
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = a1;
  v11 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_keyframes;
  swift_beginAccess();

  MEMORY[0x18CFE2450](v12);
  if (*((*&v5[v11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v5[v11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18A4A7588();
  }

  sub_18A4A75F8();
  swift_endAccess();
  if (*&v5[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] == 1 && (v5[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] & 1) == 0)
  {

    sub_189201C3C(0, 0, v5, v10, 1.0);
  }
}

void sub_1891FFCB8(uint64_t isEscapingClosureAtFileLocation, double a2, double a3, double a4)
{
  if (a4 != 0.0)
  {
    v6 = a2 - a3;
    if (a2 - a3 != 0.0)
    {
      v7 = a4 / v6;
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = isEscapingClosureAtFileLocation;
      *(v9 + 24) = a2;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1892020A0;
      *(v10 + 24) = v9;
      aBlock[4] = sub_188A4B574;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A968;
      aBlock[3] = &block_descriptor_113_1;
      v11 = _Block_copy(aBlock);
      v12 = isEscapingClosureAtFileLocation;

      [v8 _performWithStartingVelocity_actionsWithAnimation_];
      _Block_release(v11);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }

  v13 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations;
  swift_beginAccess();
  v14 = *(isEscapingClosureAtFileLocation + v13);
  v15 = *(v14 + 16);
  if (v15)
  {

    v16 = v14 + 40;
    do
    {
      v17 = *(v16 - 8);
      v18 = a2;

      v17(&v18);

      v16 += 16;
      --v15;
    }

    while (v15);
  }
}

void sub_1891FFEB4(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);
      v9 = a2;

      v8(&v9);

      v7 += 16;
      --v6;
    }

    while (v6);
  }
}

void sub_1891FFF68(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isC2Finished) & 1) == 0 && (*(a1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning))
  {
    *(a1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isC2Finished) = 1;
    if (*(a1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state) == 1)
    {
      if (*(a1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__pausesOnCompletion) == 1)
      {
        sub_1891FCF18();
      }

      else
      {
        sub_1891FEB20();
      }
    }
  }
}

uint64_t sub_189200018(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a3)
  {
    return a3(a1, a2);
  }

  return a1;
}

void sub_189200184(uint64_t a1, _BYTE *a2, double a3)
{
  v3 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state;
  v4 = *&a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state];
  if (v4)
  {
    v5 = v4 == 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return;
  }

  if (v4 != 1)
  {
LABEL_32:
    sub_18A4A8398();
    __break(1u);
    return;
  }

  v6 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning;
  if (a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning])
  {
    return;
  }

  v7 = a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed];
  *&a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionPosition] = v7;
  v8 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete;
  v9 = *&a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete];
  v10 = 1.0;
  if (v7)
  {
    v10 = 0.0;
  }

  *&a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete] = v10;
  sub_1891FED38();
  a2[v6] = 1;
  v14 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued;
  *&a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued] = a1;
  swift_unknownObjectRelease();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = a3;
  *(v16 + 32) = a2;
  v17 = a2[v6];
  v18 = *&a2[v14];
  v40 = a2;
  v19 = a2;
  v20 = v19;
  v41 = v17;
  if (v18)
  {
    v21 = v19;
    swift_unknownObjectRetain();
    v22 = v18;
  }

  else
  {
    v22 = *&v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior];
    if (v22)
    {
      v23 = v19;
      swift_unknownObjectRetain_n();
      v24 = v23;
      swift_unknownObjectRetain();
      v17 = v41;
    }

    else
    {
      type metadata accessor for _UIFluidNavigationTransitionsDomain();
      v49.receiver = swift_getObjCClassFromMetadata();
      v49.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
      v17 = v20;
      swift_unknownObjectRetain();
      v25 = objc_msgSendSuper2(&v49, sel_rootSettings);
      if (!v25)
      {
LABEL_31:

        __break(1u);
        goto LABEL_32;
      }

      v26 = v25;
      type metadata accessor for _UIFluidNavigationTransitionsSpec();
      v27 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

      v28 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
      v17 = v41;
      if (!v41)
      {
        v28 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
      }

      v29 = *&v27[*v28];

      v22 = v29;
    }
  }

  swift_unknownObjectRetain_n();
  v30 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v22, 1.0);
  swift_unknownObjectRelease();
  if (v17)
  {
LABEL_27:
    v34 = objc_opt_self();
    v35 = swift_allocObject();
    v35[2] = sub_188E3FB24;
    v35[3] = v16;
    v35[4] = v20;
    v46 = sub_1892022EC;
    v47 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_188A4A8F0;
    v45 = &block_descriptor_63_5;
    v36 = _Block_copy(&aBlock);
    v37 = v20;
    swift_unknownObjectRetain();

    v38 = swift_allocObject();
    *(v38 + 16) = sub_189202308;
    *(v38 + 24) = v15;
    v46 = sub_189202328;
    v47 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_188C3DD6C;
    v45 = &block_descriptor_70_6;
    v39 = _Block_copy(&aBlock);

    [v34 _animateUsingSpringBehavior_tracking_animations_completion_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v39);
    _Block_release(v36);

    swift_unknownObjectRelease();
    return;
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v48.receiver = swift_getObjCClassFromMetadata();
  v48.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  v31 = objc_msgSendSuper2(&v48, sel_rootSettings);
  if (!v31)
  {

    __break(1u);
    goto LABEL_31;
  }

  v32 = v31;
  type metadata accessor for _UIFluidNavigationTransitionsSpec();
  v33 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

  LOBYTE(v32) = v33[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
  if ((v32 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1891FFCB8(v20, *&v40[v8], v9, a3);
  if (*(v20 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isC2Finished) & 1) == 0 && (v40[v6])
  {
    *(v20 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isC2Finished) = 1;
    if (*&v40[v3] == 1)
    {
      if (*(v20 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__pausesOnCompletion) == 1)
      {
        sub_1891FCF18();
      }

      else
      {
        sub_1891FEB20();
      }
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_18920075C(void (*a1)(void), uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v13 = a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning];
  v14 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued];
  v33 = a1;
  if (v14)
  {

    v15 = v14;
  }

  else
  {
    v15 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior];
    if (v15)
    {
      swift_unknownObjectRetain_n();
    }

    else
    {
      type metadata accessor for _UIFluidNavigationTransitionsDomain();
      v41.receiver = swift_getObjCClassFromMetadata();
      v41.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;

      v16 = objc_msgSendSuper2(&v41, sel_rootSettings);
      if (!v16)
      {
        goto LABEL_18;
      }

      v17 = v16;
      type metadata accessor for _UIFluidNavigationTransitionsSpec();
      v18 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

      v19 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
      if (!v13)
      {
        v19 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
      }

      v20 = *&v18[*v19];

      v15 = v20;
    }
  }

  swift_unknownObjectRetain_n();
  v21 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v15, a6);
  swift_unknownObjectRelease();
  v32 = v13;
  if (v13)
  {
    goto LABEL_15;
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v40.receiver = swift_getObjCClassFromMetadata();
  v40.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  v22 = objc_msgSendSuper2(&v40, sel_rootSettings);
  if (v22)
  {
    v23 = v22;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v24 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

    v25 = v24[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
    if (v25)
    {
      sub_1891FE7F8(a4, a5, *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete]);
      if (v33)
      {
        v33();
      }

      swift_unknownObjectRelease();
      goto LABEL_16;
    }

LABEL_15:
    v31 = objc_opt_self();
    v26 = swift_allocObject();
    v26[2] = sub_18920232C;
    v26[3] = v12;
    v26[4] = a3;
    v38 = sub_1892022EC;
    v39 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_188A4A8F0;
    v37 = &block_descriptor_205_1;
    v27 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v28 = a3;

    v29 = swift_allocObject();
    *(v29 + 16) = v33;
    *(v29 + 24) = a2;
    v38 = sub_189202328;
    v39 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_188C3DD6C;
    v37 = &block_descriptor_212_1;
    v30 = _Block_copy(&aBlock);
    sub_188D738F4(v33, a2);

    [v31 _animateUsingSpringBehavior_tracking_animations_completion_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v30);
    _Block_release(v27);

LABEL_16:
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
LABEL_18:

  __break(1u);
}

double sub_189200BA0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_18920222C;
  *(v7 + 24) = v6;
  v8 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations;
  swift_beginAccess();
  v9 = *&a1[v8];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v8] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_188E4B4D8(0, v9[2] + 1, 1, v9);
    *&a1[v8] = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_188E4B4D8((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  v13 = &v9[2 * v12];
  v13[4] = sub_189202324;
  v13[5] = v7;
  *&a1[v8] = v9;
  swift_endAccess();
  if (*&a1[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] == 1)
  {

    sub_18920075C(0, 0, a1, a2, a3, 1.0);
  }

  return result;
}

void sub_189200D48(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a2 + 16);
  if (*(a1 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed) == 1)
  {
    v4 = 0.0;
    if (v3 + *(a2 + 24) < a3)
    {
      return;
    }

    goto LABEL_3;
  }

  v4 = 1.0;
  if (v3 <= a3)
  {
LABEL_3:
    sub_1891FDB50(v4);
  }
}

void sub_189200DAC(void (*a1)(void), uint64_t a2, unsigned __int8 *a3, void *a4, double a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning];
  v13 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued];
  if (v13)
  {
    v14 = a4;
    v15 = v13;
  }

  else
  {
    v15 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior];
    if (v15)
    {
      swift_unknownObjectRetain_n();
      v16 = a4;
    }

    else
    {
      type metadata accessor for _UIFluidNavigationTransitionsDomain();
      v40.receiver = swift_getObjCClassFromMetadata();
      v40.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
      v5 = a4;
      v17 = objc_msgSendSuper2(&v40, sel_rootSettings);
      if (!v17)
      {
        goto LABEL_18;
      }

      v18 = v17;
      type metadata accessor for _UIFluidNavigationTransitionsSpec();
      v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

      v19 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
      if (!v12)
      {
        v19 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
      }

      v20 = *&v5[*v19];

      v15 = v20;
    }
  }

  swift_unknownObjectRetain_n();
  v21 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v15, a5);
  swift_unknownObjectRelease();
  v32 = v12;
  if (v12)
  {
    goto LABEL_15;
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v39.receiver = swift_getObjCClassFromMetadata();
  v39.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  v22 = objc_msgSendSuper2(&v39, sel_rootSettings);
  if (v22)
  {
    v23 = v22;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v24 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

    v25 = v24[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
    if (v25)
    {
      sub_1891FF108(a4, *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete]);
      if (a1)
      {
        a1();
      }

      swift_unknownObjectRelease();
      goto LABEL_16;
    }

LABEL_15:
    v31 = objc_opt_self();
    v26 = swift_allocObject();
    v26[2] = sub_189202098;
    v26[3] = v11;
    v26[4] = a3;
    v37 = sub_1892022EC;
    v38 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_188A4A8F0;
    v36 = &block_descriptor_97_1;
    v27 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v28 = a3;

    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    *(v29 + 24) = a2;
    v37 = sub_189202328;
    v38 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_188C3DD6C;
    v36 = &block_descriptor_104_1;
    v30 = _Block_copy(&aBlock);
    sub_188D738F4(a1, a2);

    [v31 _animateUsingSpringBehavior_tracking_animations_completion_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v30);
    _Block_release(v27);

LABEL_16:
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
LABEL_18:

  __break(1u);
}

void sub_1892011D4(void (*a1)(uint64_t), uint64_t a2, unsigned __int8 *a3, char *a4, double a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning];
  v13 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued];
  v39 = a2;
  if (v13)
  {
    v14 = a4;
    v15 = v13;
  }

  else
  {
    v15 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior];
    if (v15)
    {
      swift_unknownObjectRetain_n();
      v16 = a4;
    }

    else
    {
      type metadata accessor for _UIFluidNavigationTransitionsDomain();
      v48.receiver = swift_getObjCClassFromMetadata();
      v48.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
      v5 = a4;
      v17 = objc_msgSendSuper2(&v48, sel_rootSettings);
      if (!v17)
      {
        goto LABEL_22;
      }

      v18 = v17;
      type metadata accessor for _UIFluidNavigationTransitionsSpec();
      v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

      v19 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
      if (!v12)
      {
        v19 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
      }

      v20 = *&v5[*v19];

      v15 = v20;
    }
  }

  swift_unknownObjectRetain_n();
  v21 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v15, a5);
  swift_unknownObjectRelease();
  if (v12)
  {
    goto LABEL_19;
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v47.receiver = swift_getObjCClassFromMetadata();
  v47.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  v22 = objc_msgSendSuper2(&v47, sel_rootSettings);
  if (v22)
  {
    v23 = v22;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v24 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

    v25 = v24[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
    if (v25)
    {
      v26 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete];
      v27 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations;
      v28 = swift_beginAccess();
      v29 = *&a4[v27];
      v30 = *(v29 + 16);
      if (v30)
      {

        v31 = v29 + 40;
        do
        {
          v32 = *(v31 - 8);
          v40 = v26;

          v32(&v40);

          v31 += 16;
          --v30;
        }

        while (v30);
      }

      if (a1)
      {
        a1(v28);
      }

      swift_unknownObjectRelease();
      goto LABEL_20;
    }

LABEL_19:
    v38 = objc_opt_self();
    v33 = swift_allocObject();
    v33[2] = sub_189202224;
    v33[3] = v11;
    v33[4] = a3;
    v45 = sub_1892022EC;
    v46 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_188A4A8F0;
    v44 = &block_descriptor_173_1;
    v34 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v35 = a3;

    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    *(v36 + 24) = v39;
    v45 = sub_189202328;
    v46 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_188C3DD6C;
    v44 = &block_descriptor_180_1;
    v37 = _Block_copy(&aBlock);
    sub_188D738F4(a1, v39);

    [v38 _animateUsingSpringBehavior_tracking_animations_completion_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v37);
    _Block_release(v34);

LABEL_20:
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
LABEL_22:

  __break(1u);
}

void sub_18920166C(void (*a1)(uint64_t), uint64_t a2, unsigned __int8 *a3, uint64_t (**a4)(void, double), double a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  v11 = a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning];
  v12 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued];
  if (v12)
  {
    _Block_copy(a4);
    v13 = v12;
  }

  else
  {
    v13 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior];
    if (v13)
    {
      swift_unknownObjectRetain();
      _Block_copy(a4);
      swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _UIFluidNavigationTransitionsDomain();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      _Block_copy(a4);
      v40.receiver = ObjCClassFromMetadata;
      v40.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
      v15 = objc_msgSendSuper2(&v40, sel_rootSettings);
      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = v15;
      type metadata accessor for _UIFluidNavigationTransitionsSpec();
      v17 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

      v18 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
      if (!v11)
      {
        v18 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
      }

      v19 = *&v17[*v18];

      v13 = v19;
    }
  }

  swift_unknownObjectRetain_n();
  v20 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v13, a5);
  swift_unknownObjectRelease();
  v32 = v11;
  if (v11)
  {
    goto LABEL_15;
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v39.receiver = swift_getObjCClassFromMetadata();
  v39.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  v21 = objc_msgSendSuper2(&v39, sel_rootSettings);
  if (v21)
  {
    v22 = v21;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v23 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

    v24 = v23[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
    if (v24)
    {
      v25 = a4[2](a4, *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete]);
      if (a1)
      {
        a1(v25);
      }

      swift_unknownObjectRelease();
      goto LABEL_16;
    }

LABEL_15:
    v31 = objc_opt_self();
    v26 = swift_allocObject();
    v26[2] = sub_188EB2CC4;
    v26[3] = v10;
    v26[4] = a3;
    v37 = sub_1892022EC;
    v38 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_188A4A8F0;
    v36 = &block_descriptor_43_3;
    v27 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v28 = a3;

    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    *(v29 + 24) = a2;
    v37 = sub_189202328;
    v38 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_188C3DD6C;
    v36 = &block_descriptor_50_4;
    v30 = _Block_copy(&aBlock);
    sub_188D738F4(a1, a2);

    [v31 _animateUsingSpringBehavior_tracking_animations_completion_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v30);
    _Block_release(v27);

LABEL_16:
    swift_unknownObjectRelease();
    return;
  }

  _Block_release(a4);
  __break(1u);
LABEL_18:
  _Block_release(a4);
  __break(1u);
}

double sub_189201AB0(unsigned __int8 *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188EB2CC4;
  *(v5 + 24) = v4;
  v6 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations;
  swift_beginAccess();
  v7 = *&a1[v6];
  _Block_copy(a2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v6] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_188E4B4D8(0, v7[2] + 1, 1, v7);
    *&a1[v6] = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_188E4B4D8((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_18920205C;
  v11[5] = v5;
  *&a1[v6] = v7;
  swift_endAccess();
  if (*&a1[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] == 1)
  {
    _Block_copy(a2);
    sub_18920166C(0, 0, a1, a2, 1.0);
    _Block_release(a2);
  }

  return result;
}

void sub_189201C3C(void (*a1)(double), uint64_t a2, unsigned __int8 *a3, uint64_t a4, double a5)
{
  v10 = a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning];
  v11 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued];
  if (v11)
  {

    v12 = v11;
  }

  else
  {
    v12 = *&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior];
    if (v12)
    {
      swift_unknownObjectRetain_n();
    }

    else
    {
      type metadata accessor for _UIFluidNavigationTransitionsDomain();
      v37.receiver = swift_getObjCClassFromMetadata();
      v37.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;

      v13 = objc_msgSendSuper2(&v37, sel_rootSettings);
      if (!v13)
      {
        goto LABEL_18;
      }

      v14 = v13;
      type metadata accessor for _UIFluidNavigationTransitionsSpec();
      v15 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

      v16 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
      if (!v10)
      {
        v16 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
      }

      v17 = *&v15[*v16];

      v12 = v17;
    }
  }

  swift_unknownObjectRetain_n();
  v18 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v12, a5);
  swift_unknownObjectRelease();
  if (v10)
  {
    goto LABEL_15;
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v36.receiver = swift_getObjCClassFromMetadata();
  v36.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  v19 = objc_msgSendSuper2(&v36, sel_rootSettings);
  if (v19)
  {
    v20 = v19;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v21 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

    v22 = v21[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
    if (v22)
    {
      v23 = sub_1891FDB50(*&a3[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete]);
      if (a1)
      {
        a1(v23);
      }

      swift_unknownObjectRelease();
      goto LABEL_16;
    }

LABEL_15:
    v29 = objc_opt_self();
    v24 = swift_allocObject();
    v24[2] = sub_189202054;
    v24[3] = a4;
    v24[4] = a3;
    v34 = sub_189202058;
    v35 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_188A4A8F0;
    v33 = &block_descriptor_152;
    v25 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v26 = a3;

    v27 = swift_allocObject();
    *(v27 + 16) = a1;
    *(v27 + 24) = a2;
    v34 = sub_188FE62EC;
    v35 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_188C3DD6C;
    v33 = &block_descriptor_25_6;
    v28 = _Block_copy(&aBlock);
    sub_188D738F4(a1, a2);

    [v29 _animateUsingSpringBehavior_tracking_animations_completion_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v28);
    _Block_release(v25);

LABEL_16:
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
LABEL_18:

  __break(1u);
}

id sub_1892020C8()
{
  if (*&v0[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior])
  {
    goto LABEL_4;
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v6.receiver = swift_getObjCClassFromMetadata();
  v6.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  result = objc_msgSendSuper2(&v6, sel_rootSettings);
  if (result)
  {
    v2 = result;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v3 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

    v4 = *&v3[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring];
LABEL_4:
    swift_getObjectType();
    swift_unknownObjectRetain();
    v5 = swift_unknownObjectRetain();
    sub_189200184(v5, v0, 0.0);
    return swift_unknownObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_18Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_189202334@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 32);
  (v14)((AssociatedTypeWitness - 8), a5, a1, AssociatedTypeWitness);
  v12 = a5 + *(type metadata accessor for UITypedKeyDiff(0, a3, a4, v11) + 36);

  return v14(v12, a2, AssociatedTypeWitness);
}

uint64_t UITypedKeyDiff.oldValue.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t UITypedKeyDiff.newValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t sub_189202528(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1892025A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
LABEL_23:
    v13 = *(v6 + 48);

    return v13(a1);
  }

  v8 = ((*(*(AssociatedTypeWitness - 8) + 64) + *(v6 + 80)) & ~*(v6 + 80)) + *(*(AssociatedTypeWitness - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((a2 - v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v7)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v7 + (v8 | v12) + 1;
}

void sub_18920274C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = ((*(v7 + 64) + *(v7 + 80)) & ~*(v7 + 80)) + *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
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

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

void sub_1892029B4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    if (Strong)
    {
      sub_188A34624(0, &qword_1EA9306B0, off_1E70EA8F0);
      v4 = Strong;
      v5 = sub_18A4A7C88();

      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    sub_189205920();
    v4 = Strong;
LABEL_9:

    goto LABEL_10;
  }

  if (Strong)
  {
    goto LABEL_8;
  }

LABEL_10:
}

void sub_189202A9C(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____UITabButton_appearanceData;
  v4 = *(v1 + OBJC_IVAR____UITabButton_appearanceData);
  sub_188A34624(0, qword_1EA930628, off_1E70EC550);
  v5 = v4;
  v6 = sub_18A4A7C88();

  if ((v6 & 1) == 0)
  {
    v7 = *(v2 + OBJC_IVAR____UITabButton_imageView);
    if (*(v2 + OBJC_IVAR____UITabButton_configuration) == 1)
    {
      v8 = sub_18920362C();
      v9 = sub_18920371C();
      v10 = sub_1892062B8(v8, v9);
      v11 = [objc_opt_self() configurationWithFont_];
    }

    else
    {
      v11 = [*(v2 + v3) preferredSymbolConfiguration];
    }

    [v7 setPreferredSymbolConfiguration_];

    sub_189205B48();
    v12 = v2 + OBJC_IVAR____UITabButton_sizeCache;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = *(v2 + v3);
      v16 = *(Strong + OBJC_IVAR____UITabButton_appearanceData);
      *(Strong + OBJC_IVAR____UITabButton_appearanceData) = v15;
      v17 = v15;
      sub_189202A9C(v16);
    }
  }
}

void sub_189202C38(double a1)
{
  v2 = v1;
  if (v1[OBJC_IVAR____UITabButton_ignoresSelectedState] == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v37 = Strong;
      if ([v1 isSelected])
      {
        [*&v1[OBJC_IVAR____UITabButton_imageView] _setMatchedViewIdentifier_];
        v4 = *&v1[OBJC_IVAR____UITabButton_badgeView];
        if (v4)
        {
          [v4 _setMatchedViewIdentifier_];
        }

        v5 = *&v1[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage + 8];
        v6 = &v37[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage];
        *v6 = *&v1[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage];
        *(v6 + 1) = v5;

        sub_189202C38(v7);
        v8 = *&v1[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge + 8];
        v9 = &v37[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge];
        *v9 = *&v1[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge];
        *(v9 + 1) = v8;
        goto LABEL_26;
      }
    }

    v16 = *&v1[OBJC_IVAR____UITabButton_imageView];
    if (*&v2[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage + 8])
    {

      v17 = sub_18A4A7258();
    }

    else
    {
      v17 = 0;
    }

    [v16 _setMatchedViewIdentifier_];

    v18 = *&v2[OBJC_IVAR____UITabButton_badgeView];
    if (v18)
    {
      if (*&v2[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge + 8])
      {
        v19 = v18;

        v20 = sub_18A4A7258();
      }

      else
      {
        v19 = v18;
        v20 = 0;
      }

      [v19 _setMatchedViewIdentifier_];
    }

    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      v32 = (v30 + OBJC_IVAR____UITabButton_matchMoveIdentifierForImage);
      *v32 = 0;
      v32[1] = 0;

      sub_189202C38(v33);
    }

    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = (v34 + OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge);
      *v35 = 0;
      v35[1] = 0;
      v37 = v34;
      goto LABEL_33;
    }
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____UITabButton_imageView];
    v11 = &v2[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage];
    if (*&v2[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage + 8])
    {

      v12 = sub_18A4A7258();
    }

    else
    {
      v12 = 0;
    }

    [v10 _setMatchedViewIdentifier_];

    v13 = *&v2[OBJC_IVAR____UITabButton_badgeView];
    if (v13)
    {
      if (*&v2[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge + 8])
      {
        v14 = v13;

        v15 = sub_18A4A7258();
      }

      else
      {
        v14 = v13;
        v15 = 0;
      }

      [v14 _setMatchedViewIdentifier_];
    }

    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v23 = *(v11 + 1);
      v24 = &v22[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage];
      *v24 = *v11;
      *(v24 + 1) = v23;

      sub_189202C38(v25);
    }

    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      v28 = *&v2[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge + 8];
      v29 = &v27[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge];
      *v29 = *&v2[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge];
      *(v29 + 1) = v28;
      v37 = v27;
LABEL_26:

LABEL_33:

      sub_189202C38(v36);
    }
  }
}

id sub_1892030E4(void *a1, uint64_t a2, SEL *a3)
{
  v5 = type metadata accessor for _UITabButton();
  v8.receiver = a1;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, *a3, v5);
}

void sub_1892031B0(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  type metadata accessor for _UITabButton();
  v16.receiver = v6;
  v16.super_class = v13;
  objc_msgSendSuper2(&v16, *a1, a3, a4, a5, a6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (*(v6 + OBJC_IVAR____UITabButton_synchronizeAppearanceAndLayoutChangesToLinkedButton) == 1)
    {
      [v6 *a2];
      [v15 *a1];
    }
  }
}

void sub_189203310(uint64_t a1, double a2, double a3)
{
  type metadata accessor for _UITabButton();
  v9.receiver = v3;
  v9.super_class = v6;
  objc_msgSendSuper2(&v9, sel_setCenter_, a2, a3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(v3 + OBJC_IVAR____UITabButton_synchronizeAppearanceAndLayoutChangesToLinkedButton) == 1)
    {
      [v3 center];
      [v8 setCenter_];
    }
  }
}

void sub_189203450(uint64_t a1, double a2)
{
  type metadata accessor for _UITabButton();
  v7.receiver = v2;
  v7.super_class = v4;
  objc_msgSendSuper2(&v7, sel_setAlpha_, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(v2 + OBJC_IVAR____UITabButton_synchronizeAppearanceAndLayoutChangesToLinkedButton) == 1)
    {
      [v2 alpha];
      [v6 setAlpha_];
    }
  }
}

id sub_189203534()
{
  v1 = OBJC_IVAR____UITabButton_contentTintColorForState;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + 16) && (v3 = sub_188B85570(0), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    return [objc_opt_self() secondaryLabelColor];
  }
}

uint64_t sub_18920362C()
{
  if (![v0 isEnabled])
  {
    return 3;
  }

  if (v0[OBJC_IVAR____UITabButton_overrideItemState + 8] != 1)
  {
    return *&v0[OBJC_IVAR____UITabButton_overrideItemState];
  }

  if ([v0 isFocused] & 1) != 0 || (v0[OBJC_IVAR____UITabButton_hasFocusAppearance])
  {
    return 4;
  }

  if ([v0 isHighlighted] && (v0[OBJC_IVAR____UITabButton__showsHighlightedState] & 1) != 0)
  {
    return 1;
  }

  if ([v0 isSelected] && v0[OBJC_IVAR____UITabButton_ignoresSelectedState] != 1)
  {
    return 2;
  }

  return 0;
}

unint64_t sub_18920371C()
{
  v1 = [v0 state];
  if (v0[OBJC_IVAR____UITabButton_ignoresSelectedState])
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v2 = v1;
  }

  if ((v0[OBJC_IVAR____UITabButton_overrideItemState + 8] & 1) == 0)
  {
    v3 = *&v0[OBJC_IVAR____UITabButton_overrideItemState] - 1;
    if (v3 > 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = qword_18A674F78[v3];
    }

    if ((v4 & ~v2) == 0)
    {
      v4 = 0;
    }

    v2 |= v4;
  }

  if (v0[OBJC_IVAR____UITabButton_hasFocusAppearance])
  {
    return v2 | 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1892037B4()
{
  if (*(v0 + OBJC_IVAR____UITabButton_overrideItemDisplayMode) == 3)
  {
    v1 = *(v0 + OBJC_IVAR____UITabButton_configuration);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____UITabButton_overrideItemDisplayMode);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong _internalTitle];
    if (v4)
    {
      v5 = v4;
      v6 = sub_18A4A7288();
      v8 = v7;

      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        return v1;
      }

      else
      {
        return 2;
      }
    }

    else
    {

      return 2;
    }
  }

  return v1;
}

void sub_18920387C(__n128 a1)
{
  sub_189205B48();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____UITabButton_hasFocusAppearance) = *(v1 + OBJC_IVAR____UITabButton_hasFocusAppearance);
    v4 = Strong;
    sub_18920387C(v3);
  }
}

id sub_189203A18(__n128 a1)
{
  if (*(v1 + OBJC_IVAR____UITabButton_configuration + 361) == 1)
  {
    v2 = [v1 isHighlighted];
    v3 = 1.0;
    if (v2)
    {
      v4 = [v1 traitCollection];
      v5 = [v4 userInterfaceStyle] == 2;

      v3 = dbl_18A674F10[v5];
    }

    [v1 setAlpha_];
  }

  return sub_189205B48();
}

id sub_189203ACC()
{
  result = [v0 _focusBehavior];
  if (result)
  {
    v2 = [result focusGroupContainmentBehavior];
    swift_unknownObjectRelease();
    if ((v2 & 0x20) != 0)
    {
      return 0;
    }

    else
    {
      v3 = type metadata accessor for _UITabButton();
      v7.receiver = v0;
      v7.super_class = v4;
      result = objc_msgSendSuper2(&v7, sel__systemDefaultFocusGroupIdentifier, v3);
      if (result)
      {
        v5 = result;
        v6 = sub_18A4A7288();

        return v6;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_189203C98(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for _UITabButton();
  v13.receiver = v3;
  v13.super_class = v7;
  objc_msgSendSuper2(&v13, sel_didUpdateFocusInContext_withAnimationCoordinator_, a1, a2, v6);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v12[4] = sub_18920842C;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_188A4A8F0;
  v12[3] = &block_descriptor_112_4;
  v10 = _Block_copy(v12);
  v11 = a1;

  [a2 addCoordinatedAnimations:v10 completion:0];
  _Block_release(v10);
}

void sub_189203DC0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 nextFocusedItem];
    if (v5)
    {
      v7 = v5;
      swift_unknownObjectRelease();
      v8 = v7 == v4;
    }

    else
    {
      v8 = 0;
    }

    v4[OBJC_IVAR____UITabButton_hasFocusAppearance] = v8;
    sub_18920387C(v6);
  }
}

id sub_189203EDC(void *a1, const void *a2, uint64_t a3, void *a4)
{
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v4[OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____UITabButton_tabBarButtonDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v11 = &v4[OBJC_IVAR____UITabButton_overrideItemState];
  *v11 = 0;
  v11[8] = 1;
  v4[OBJC_IVAR____UITabButton_ignoresSelectedState] = 0;
  v4[OBJC_IVAR____UITabButton_synchronizeAppearanceAndLayoutChangesToLinkedButton] = 0;
  v12 = OBJC_IVAR____UITabButton_imageView;
  *&v4[v12] = [objc_allocWithZone(UIImageView) init];
  v13 = OBJC_IVAR____UITabButton_titleLabel;
  type metadata accessor for _UITabButton.Label();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____UITabButton_badgeView] = 0;
  v14 = &v4[OBJC_IVAR____UITabButton_sizeCache];
  v26 = 1;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *(v14 + 3) = 0u;
  v14[64] = 1;
  *&v4[OBJC_IVAR____UITabButton_unselectedLabelTintColor] = 0;
  v15 = OBJC_IVAR____UITabButton_contentTintColorForState;
  *&v4[v15] = sub_188B86168(MEMORY[0x1E69E7CC0]);
  *&v4[OBJC_IVAR____UITabButton_itemContentInsets] = UIEdgeInsetsZero;
  *&v4[OBJC_IVAR____UITabButton_itemTitleStyle] = 0;
  v4[OBJC_IVAR____UITabButton_overrideItemDisplayMode] = 3;
  v4[OBJC_IVAR____UITabButton_hasFocusAppearance] = 0;
  v16 = OBJC_IVAR____UITabButton__showsHighlightedState;
  v4[OBJC_IVAR____UITabButton__showsHighlightedState] = 0;
  *&v4[OBJC_IVAR____UITabButton_springLoadedInteraction] = 0;
  v4[OBJC_IVAR____UITabButton_isSpringLoaded] = 0;
  swift_unknownObjectWeakAssign();
  memcpy(&v4[OBJC_IVAR____UITabButton_configuration], a2, 0x178uLL);
  swift_unknownObjectUnownedInit();
  sub_188B7E138(a2, v24);
  v17 = [a4 standardAppearance];
  v18 = [v17 _dataForItemStyle_];

  *&v4[OBJC_IVAR____UITabButton_appearanceData] = v18;
  v4[v16] = [a4 _showsHighlightedState];
  type metadata accessor for _UITabButton();
  v23.receiver = v4;
  v23.super_class = v19;
  v20 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  memset(v24, 0, sizeof(v24));
  v25 = 1;
  v21 = v20;
  sub_1892045F0(a3, v24);
  sub_189205244();
  sub_189205920();

  sub_188B7FF64(a3);
  sub_188B82BE8(a2);

  return v21;
}

void sub_1892041F8(double a1, double a2)
{
  v3 = v2;
  if (a1 != 0.0 || a2 != 0.0)
  {
    v6 = &v2[OBJC_IVAR____UITabButton_sizeCache];
    if (v2[OBJC_IVAR____UITabButton_sizeCache + 64])
    {
      v7 = *&v2[OBJC_IVAR____UITabButton_titleLabel];
      v8 = [v7 font];
      v9 = sub_1892062B8(0, 0);
      [v7 setFont_];
      v10 = sub_1892037B4();
      if (v10)
      {
        if (v10 == 1)
        {
          v11 = 0.0;
          [v7 textRectForBounds:1 limitedToNumberOfLines:{0.0, 0.0, a1, a2}];
          v13 = v12;
          v15 = v14;
          if (v8 && (sub_188A34624(0, &qword_1ED48C4A0, &off_1E70ECC18), v16 = v8, v17 = sub_18A4A7C88(), v16, (v17 & 1) != 0))
          {
            v18 = v13;
            v19 = v15;
          }

          else
          {
            [v7 setFont_];
            [v7 textRectForBounds:1 limitedToNumberOfLines:{0.0, 0.0, a1, a2}];
            v18 = v35;
            v19 = v36;
          }

          v29 = 0.0;
          v31 = v15;
          v30 = v13;
        }

        else
        {
          v32 = *&v2[OBJC_IVAR____UITabButton_imageView];
          [*&v3[OBJC_IVAR____UITabButton_imageView] intrinsicContentSize];
          v11 = v33;
          v29 = v34;
          v18 = 0.0;
          [v32 frameForAlignmentRect_];
          v19 = 0.0;
          v13 = 0.0;
          v15 = 0.0;
        }
      }

      else
      {
        [v7 textRectForBounds:1 limitedToNumberOfLines:{0.0, 0.0, a1, a2}];
        v13 = v20;
        v15 = v21;
        if (!v8 || (sub_188A34624(0, &qword_1ED48C4A0, &off_1E70ECC18), v22 = v8, v23 = sub_18A4A7C88(), v22, v18 = v13, v19 = v15, (v23 & 1) == 0))
        {
          [v7 setFont_];
          [v7 textRectForBounds:1 limitedToNumberOfLines:{0.0, 0.0, a1, a2}];
          v18 = v24;
          v19 = v25;
        }

        v26 = *&v3[OBJC_IVAR____UITabButton_imageView];
        [v26 intrinsicContentSize];
        v11 = v27;
        v29 = v28;
        [v26 frameForAlignmentRect_];
        if (*&v3[OBJC_IVAR____UITabButton_itemTitleStyle])
        {
          v30 = v13 + v30 + 8.0;
          if (v31 <= v15)
          {
            v31 = v15;
          }
        }

        else
        {
          if (v30 <= v13)
          {
            v30 = v13;
          }

          v31 = v15 + v31 + 8.0;
        }
      }

      v37 = UISizeRoundToViewScale(v3, v30 + *&v3[OBJC_IVAR____UITabButton_itemContentInsets + 8] + *&v3[OBJC_IVAR____UITabButton_itemContentInsets + 24], v31 + *&v3[OBJC_IVAR____UITabButton_itemContentInsets] + *&v3[OBJC_IVAR____UITabButton_itemContentInsets + 16]);
      v39 = v38;

      *v6 = v37;
      *(v6 + 1) = v39;
      *(v6 + 2) = v11;
      *(v6 + 3) = v29;
      *(v6 + 4) = v13;
      *(v6 + 5) = v15;
      *(v6 + 6) = v18;
      *(v6 + 7) = v19;
      v6[64] = 0;
    }
  }
}

void sub_1892045F0(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v5 = (a2 + 16);
  v6 = (a2 + 24);
  if (*(a2 + 32))
  {
    v7 = (a1 + 24);
  }

  else
  {
    v7 = a2;
  }

  if (*(a2 + 32))
  {
    v4 = (a1 + 32);
    v5 = (a1 + 40);
    v6 = (a1 + 48);
  }

  v8 = *v6;
  v9 = *v5;
  v10 = *v4;
  v11 = (v2 + OBJC_IVAR____UITabButton_itemContentInsets);
  v12.f64[0] = *v7;
  v12.f64[1] = *v4;
  v13.f64[0] = v9;
  v13.f64[1] = *v6;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v12, *(v2 + OBJC_IVAR____UITabButton_itemContentInsets)), vceqq_f64(v13, *(v2 + OBJC_IVAR____UITabButton_itemContentInsets + 16))))) & 1) == 0)
  {
    *v11 = *v7;
    v11[1] = v10;
    v11[2] = v9;
    v11[3] = v8;
    LOBYTE(v19[0]) = 1;
    v14 = v2 + OBJC_IVAR____UITabButton_sizeCache;
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 1;
  }

  v15 = *(a1 + 56);
  if (*(v2 + OBJC_IVAR____UITabButton_itemTitleStyle) != v15)
  {
    *(v2 + OBJC_IVAR____UITabButton_itemTitleStyle) = v15;
    LOBYTE(v19[0]) = 1;
    v16 = v2 + OBJC_IVAR____UITabButton_sizeCache;
    *v16 = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 0u;
    *(v16 + 64) = 1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    memset(v19, 0, sizeof(v19));
    v20 = 1;
    v18 = Strong;
    sub_1892045F0(a1, v19);
  }
}

void sub_189204760(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for _UITabButton();
  v146.receiver = v1;
  v146.super_class = v4;
  objc_msgSendSuper2(&v146, sel_layoutSubviews, v3);
  v5 = sub_18920362C();
  v6 = *&v2[OBJC_IVAR____UITabButton_itemTitleStyle];
  [v2 bounds];
  [v2 sizeThatFits_];
  v9 = &v2[OBJC_IVAR____UITabButton_sizeCache];
  if (v2[OBJC_IVAR____UITabButton_sizeCache + 64])
  {
    return;
  }

  v11 = v9[2];
  v10 = v9[3];
  v12 = v9[7];
  v143 = v9[6];
  v13 = OBJC_IVAR____UITabButton_appearanceData;
  [*&v2[OBJC_IVAR____UITabButton_appearanceData] titlePositionAdjustmentForState_];
  v141 = v14;
  v142 = v15;
  [v2 bounds];
  v16 = &v2[OBJC_IVAR____UITabButton_itemContentInsets];
  v21 = UIRectInset(v17, v18, v19, v20, *&v2[OBJC_IVAR____UITabButton_itemContentInsets], *&v2[OBJC_IVAR____UITabButton_itemContentInsets + 24], *&v2[OBJC_IVAR____UITabButton_itemContentInsets + 16], *&v2[OBJC_IVAR____UITabButton_itemContentInsets + 8]);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_1892037B4();
  if (!v28)
  {
    v140 = v12;
    if (v6)
    {
      v36 = v16[1];
      v147.origin.x = UIRectCenteredYInRectScale(0.0, 0.0, v11, v10, v21, v23, v25, v27, 1.0);
      v148 = CGRectOffset(v147, v36, 0.0);
      x = v148.origin.x;
      height = v148.size.height;
      y = v148.origin.y;
      width = v148.size.width;
      v37 = CGRectGetMaxX(v148) + 8.0;
      v29 = v143;
      v38 = UIRectCenteredYInRectScale(0.0, 0.0, v143, v140, v21, v23, v25, v27, 1.0);
      v42 = 0.0;
      v43 = v37;
    }

    else
    {
      UIRectCenteredXInRectScale(0.0, 0.0, v11, v10, v21, v23, v25, v27, 1.0);
      v151 = CGRectOffset(v150, 0.0, v10 * -0.5 + 20.0);
      x = v151.origin.x;
      height = v151.size.height;
      y = v151.origin.y;
      width = v151.size.width;
      v151.origin.x = v21;
      v151.origin.y = v23;
      v151.size.width = v25;
      v151.size.height = v27;
      v55 = CGRectGetMaxY(v151) - v140 + -7.0;
      v29 = v143;
      UIRectCenteredXInRectScale(0.0, 0.0, v143, v140, v21, v23, v25, v27, 1.0);
      v43 = 0.0;
      v42 = v55;
    }

LABEL_12:
    v153 = CGRectOffset(*&v38, v43, v42);
    *&v30 = CGRectOffset(v153, v141, v142);
    goto LABEL_13;
  }

  if (v28 != 1)
  {
    x = UIRectCenteredRect(0.0, 0.0, v11, v10, v21, v23, v25);
    height = v44;
    v46 = v45;
    width = v47;
    v29 = v143;
    if (v6)
    {
      v48 = UIRectCenteredYInRectScale(0.0, 0.0, v143, v12, v21, v23, v25, v27, 1.0);
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v149.origin.x = x;
      v149.size.height = height;
      y = v46;
      v149.origin.y = v46;
      v149.size.width = width;
      v43 = CGRectGetMaxX(v149) + 8.0;
      v42 = 0.0;
    }

    else
    {
      UIRectCenteredXInRectScale(0.0, 0.0, v143, v12, v21, v23, v25, v27, 1.0);
      v48 = v56;
      v50 = v57;
      v52 = v58;
      v54 = v59;
      v152.origin.x = x;
      v152.size.height = height;
      y = v46;
      v152.origin.y = v46;
      v152.size.width = width;
      v42 = CGRectGetMaxY(v152) + 8.0;
      v43 = 0.0;
    }

    v38 = v48;
    v39 = v50;
    v40 = v52;
    v41 = v54;
    goto LABEL_12;
  }

  x = 0.0;
  v29 = v143;
  v30 = UIRectCenteredRect(0.0, 0.0, v143, v12, v21, v23, v25);
  y = 0.0;
  width = 0.0;
  height = 0.0;
LABEL_13:
  v60 = UIRectRoundToViewScale(v2, v30, v31, v32, v33);
  sub_189204F44(v60, v61, v62, v63);
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = *&v2[OBJC_IVAR____UITabButton_imageView];
  [v72 frameForAlignmentRect_];
  [v72 setFrame_];
  [*&v2[OBJC_IVAR____UITabButton_titleLabel] setFrame_];
  sub_1892075DC(v29);
  v77 = *&v2[OBJC_IVAR____UITabButton_badgeView];
  if (v77)
  {
    v78 = v77;
    [v78 sizeToFit];
    v79 = *&v2[v13];
    [v79 badgePositionAdjustmentForState_];

    [sub_189208014() frame];
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = [v2 _shouldReverseLayoutDirection];
    UIRoundToViewScale(v2);
    v90 = v89;
    v91 = v81;
    v92 = v83;
    v93 = v85;
    v94 = v87;
    if (v88)
    {
      CGRectGetMinX(*&v91);
      UIRoundToViewScale(v2);
      v96 = v95;
      [v78 bounds];
      v97 = v90 + v96 - CGRectGetWidth(v154);
    }

    else
    {
      CGRectGetMaxX(*&v91);
      UIRoundToViewScale(v2);
      v97 = v98 - v90;
    }

    v99 = -*&v2[OBJC_IVAR____UITabButton_configuration + 304];
    v100 = [v2 superview];
    if (v100)
    {
      v101 = v100;
      [v100 bounds];
      v103 = v102;
      v105 = v104;
      v107 = v106;
      v109 = v108;

      v155.origin.x = v103;
      v155.origin.y = v105;
      v155.size.width = v107;
      v155.size.height = v109;
      v156 = CGRectInset(v155, 6.0, 0.0);
      v110 = v156.origin.x;
      v111 = v156.origin.y;
      v112 = v156.size.width;
      v113 = v156.size.height;
    }

    else
    {
      v110 = 0.0;
      v111 = 0.0;
      v112 = 0.0;
      v113 = 0.0;
    }

    v114 = [v2 superview];
    [v2 convertRect:v114 fromView:{v110, v111, v112, v113}];
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;

    [v2 bounds];
    v162 = CGRectInset(v157, v99, 0.0);
    v158.origin.x = v116;
    v158.origin.y = v118;
    v158.size.width = v120;
    v158.size.height = v122;
    v159 = CGRectIntersection(v158, v162);
    v123 = v159.origin.x;
    v124 = v159.origin.y;
    v125 = v159.size.width;
    v126 = v159.size.height;
    MinX = CGRectGetMinX(v159);
    v160.origin.x = v123;
    v160.origin.y = v124;
    v160.size.width = v125;
    v160.size.height = v126;
    MaxX = CGRectGetMaxX(v160);
    [v78 bounds];
    v130 = v129;
    v132 = v131;
    v134 = v133;
    v136 = v135;

    v161.origin.x = v130;
    v161.origin.y = v132;
    v161.size.width = v134;
    v161.size.height = v136;
    v137 = MaxX - CGRectGetWidth(v161);
    [v78 bounds];

    _UIClamp_0(MinX, v97, v137);
    UIRoundToViewScale(v2);
    [v78 setFrame_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v2[OBJC_IVAR____UITabButton_synchronizeAppearanceAndLayoutChangesToLinkedButton] == 1)
    {
      v139 = Strong;
      [Strong layoutIfNeeded];
      Strong = v139;
    }
  }
}

BOOL sub_189204F44(CGFloat a1, CGFloat a2, CGFloat a3, double a4)
{
  *&v35[24] = a4;
  [v4 bounds];
  v8 = CGRectGetHeight(v36) * 0.5;
  [v4 bounds];
  v9 = CGRectGetWidth(v37) * 0.5;
  if (v9 >= v8)
  {
    v9 = v8;
  }

  v33 = v9;
  [v4 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = *&v35[24];
  *&v35[16] = CGRectGetMinY(v38);
  v31 = v11;
  v39.origin.x = v11;
  v39.origin.y = v13;
  v39.size.width = v15;
  v39.size.height = v17;
  v32 = *&v35[16] - CGRectGetMinY(v39);
  v40.origin.x = v11;
  v40.origin.y = v13;
  v18 = v15;
  v40.size.width = v15;
  v40.size.height = v17;
  MaxY = CGRectGetMaxY(v40);
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v41.size.height = *&v35[24];
  v34 = MaxY - CGRectGetMaxY(v41);
  v42.origin.x = a1;
  v42.origin.y = a2;
  v42.size.width = a3;
  v42.size.height = *&v35[24];
  MinX = CGRectGetMinX(v42);
  *v35 = a1;
  *&v35[8] = a2;
  v43.origin.x = a1;
  v43.origin.y = a2;
  *&v35[16] = a3;
  v43.size.width = a3;
  v43.size.height = *&v35[24];
  MaxX = CGRectGetMaxX(v43);
  v44.origin.x = v31;
  v44.origin.y = v13;
  v44.size.width = v18;
  v44.size.height = v17;
  if (v32 < CGRectGetHeight(v44) * 0.5)
  {
    v25 = v33;
    v22 = v33 - sqrt(v33 * v33 - (v33 - v32) * (v33 - v32));
    v45.origin.x = v31;
    v45.origin.y = v13;
    v45.size.width = v18;
    v45.size.height = v17;
    v23 = CGRectGetMaxX(v45) - v22;
    if (MinX <= v22 + -2.0)
    {
      MinX = v22 + -2.0;
    }

    v24 = v23 + 2.0;
    if (v24 < MaxX)
    {
      MaxX = v24;
    }
  }

  else
  {
    v25 = v33;
  }

  v46.origin.x = v31;
  v46.origin.y = v13;
  v46.size.width = v18;
  v46.size.height = v17;
  if (v34 < CGRectGetHeight(v46) * 0.5)
  {
    v26 = v25 - sqrt(v33 * v33 - (v25 - v34) * (v25 - v34));
    v47.origin.x = v31;
    v47.origin.y = v13;
    v47.size.width = v18;
    v47.size.height = v17;
    v27 = CGRectGetMaxX(v47) - v26;
    if (MinX <= v26 + 2.0)
    {
      MinX = v26 + 2.0;
    }

    v28 = v27 + -2.0;
    if (v28 < MaxX)
    {
      MaxX = v28;
    }
  }

  v48.origin.x = v31;
  v48.origin.y = v13;
  v48.size.width = v18;
  v48.size.height = v17;
  MinY = CGRectGetMinY(v48);
  v49.origin.x = v31;
  v49.origin.y = v13;
  v49.size.width = v18;
  v49.size.height = v17;
  v50.size.height = CGRectGetHeight(v49);
  v50.origin.x = MinX;
  v50.origin.y = MinY;
  v50.size.width = MaxX - MinX;
  v51 = CGRectIntersection(v50, *v35);
  return CGRectEqualToRect(v51, *MEMORY[0x1E695F050]);
}

void sub_189205244()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_189208424;
  *(v3 + 24) = v2;
  v23 = sub_188A4B574;
  v24 = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  v22 = &block_descriptor_103_7;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 _performSystemAppearanceModifications_];
  _Block_release(v4);
  v6 = *&v5[OBJC_IVAR____UITabButton_imageView];
  [v6 _setDefaultRenderingMode_];
  [v5 addSubview_];
  v7 = *&v5[OBJC_IVAR____UITabButton_titleLabel];
  v8 = sub_18920362C();
  v9 = sub_18920371C();
  v10 = sub_1892062B8(v8, v9);
  [v7 setFont_];

  [v7 setNumberOfLines_];
  [v7 setLineBreakMode_];
  [v7 setAdjustsFontForContentSizeCategory_];
  [v5 addSubview_];
  v11 = &v5[OBJC_IVAR____UITabButton_configuration];
  if (v5[OBJC_IVAR____UITabButton_configuration] == 1)
  {
    v12 = sub_18920362C();
    v13 = sub_18920371C();
    v14 = sub_1892062B8(v12, v13);
    v15 = [objc_opt_self() configurationWithFont_];
  }

  else
  {
    v15 = [*&v5[OBJC_IVAR____UITabButton_appearanceData] preferredSymbolConfiguration];
  }

  [v6 setPreferredSymbolConfiguration_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480, &unk_18A653360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFA0;
  *(inited + 32) = &type metadata for UITraitLegibilityWeight;
  *(inited + 40) = &protocol witness table for UITraitLegibilityWeight;
  *(inited + 48) = &type metadata for UITraitPreferredContentSizeCategory;
  *(inited + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  type metadata accessor for _UITabButton();
  v22 = v17;
  aBlock[0] = v5;
  v18 = v5;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_setDeallocating();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  if (v11[360] == 1)
  {
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_18A64BFB0;
    *(v19 + 32) = &type metadata for UITraitUserInterfaceStyle;
    *(v19 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
    UIView.registerForTraitChanges(_:action:)();
    swift_unknownObjectRelease();
    swift_setDeallocating();
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_189205604(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = [Strong _effectiveUnselectedLabelTintColor];

  v4 = *(a1 + OBJC_IVAR____UITabButton_unselectedLabelTintColor);
  *(a1 + OBJC_IVAR____UITabButton_unselectedLabelTintColor) = v3;

  v5 = swift_unknownObjectUnownedLoadStrong();
  v6 = [v5 _effectiveUnselectedTintColor];

  v7 = OBJC_IVAR____UITabButton_contentTintColorForState;
  swift_beginAccess();
  v8 = *(a1 + v7);
  if (*(v8 + 16))
  {
    v9 = sub_188B85570(0);
    if (v10)
    {
      if (v6)
      {
        v11 = *(*(v8 + 56) + 8 * v9);
        sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
        v12 = v6;
        v13 = v11;
        v14 = sub_18A4A7C88();

        if (v14)
        {
          goto LABEL_8;
        }
      }

      goto LABEL_7;
    }
  }

  if (v6)
  {
LABEL_7:
    swift_beginAccess();
    v12 = v6;
    sub_188B854B0(v6, 0);
    swift_endAccess();
    sub_189205B48();
LABEL_8:
  }

  v15 = objc_opt_self();
  v16 = [v15 labelColor];
  v17 = *(a1 + v7);
  if (*(v17 + 16))
  {
    v18 = sub_188B85570(1);
    if (v19)
    {
      if (v16)
      {
        v20 = *(*(v17 + 56) + 8 * v18);
        sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
        v21 = v16;
        v22 = v20;
        v23 = sub_18A4A7C88();

        if (v23)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

  if (v16)
  {
LABEL_15:
    swift_beginAccess();
    v21 = v16;
    sub_188B854B0(v16, 1);
    swift_endAccess();
    sub_189205B48();
LABEL_16:
  }

  v24 = [v15 tertiaryLabelColor];
  v25 = *(a1 + v7);
  if (*(v25 + 16) && (v26 = sub_188B85570(3), (v27 & 1) != 0))
  {
    if (v24)
    {
      v28 = *(*(v25 + 56) + 8 * v26);
      sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
      v29 = v24;
      v30 = v28;
      v31 = sub_18A4A7C88();

      if (v31)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v24)
  {
    return;
  }

  swift_beginAccess();
  v29 = v24;
  sub_188B854B0(v24, 3);
  swift_endAccess();
  sub_189205B48();
LABEL_24:
}

void sub_189205920()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [v0 setEnabled_];
    sub_189206D2C([v17 isSpringLoaded]);
    v2 = *&v0[OBJC_IVAR____UITabButton_imageView];
    v3 = [v17 _internalTemplateImage];
    [v2 setImage_];

    v4 = *&v0[OBJC_IVAR____UITabButton_titleLabel];
    v5 = [v17 _internalTitle];
    [v4 setText_];

    v6 = [v17 badgeValue];
    v7 = OBJC_IVAR____UITabButton_badgeView;
    v8 = *&v0[OBJC_IVAR____UITabButton_badgeView];
    if (v6)
    {
      if (v8)
      {
        v9 = *&v0[OBJC_IVAR____UITabButton_badgeView];
      }

      else
      {
        v9 = [objc_allocWithZone(_UIBarBadgeView) init];
        v8 = 0;
      }

      v11 = v8;
      [v9 setText_];

      [v0 addSubview_];
      v12 = *&v0[v7];
      *&v0[v7] = v9;
      v10 = v9;

      sub_189202C38(v13);
    }

    else
    {
      if (v8)
      {
        [v8 removeFromSuperview];
        v10 = *&v0[v7];
      }

      else
      {
        v10 = 0;
      }

      *&v0[v7] = 0;
    }

    sub_189205B48();
    v14 = swift_unknownObjectWeakLoadStrong();
    v15 = v17;
    if (v14)
    {
      v16 = v17;
      sub_1892029B4(v17);
      sub_189205920();

      v15 = v17;
    }
  }
}

id sub_189205B48()
{
  v1 = v0;
  v2 = sub_18920362C();
  v3 = sub_18920371C();
  v4 = sub_18920641C(v2);
  [v1 setTintColor_];

  if (v2)
  {
    if (v2 != 2)
    {
      goto LABEL_9;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_9;
    }

    v6 = &selRef_selectedImage;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_9;
    }

    v6 = &selRef__internalTemplateImage;
  }

  v7 = Strong;
  v8 = [Strong *v6];

  if (v8)
  {
    [*&v1[OBJC_IVAR____UITabButton_imageView] setImage_];
  }

LABEL_9:
  v9 = *&v1[OBJC_IVAR____UITabButton_titleLabel];
  v10 = [v9 text];
  if (v10)
  {
    v11 = v10;
    v12 = *&v1[OBJC_IVAR____UITabButton_appearanceData];
    v13 = [v1 traitCollection];
    v14 = v3;
    v15 = [v12 titleTextAttributesForState:v2 compatibleWithTraitCollection:v13];

    type metadata accessor for Key(0);
    sub_188C5E0DC();
    sub_18A4A70A8();

    v3 = v14;
    v16 = sub_1892062B8(v2, v14);
    [v9 setFont_];

    v17 = sub_189206578(v2);
    [v9 setTextColor_];

    v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v19 = sub_18A4A7088();

    v20 = [v18 initWithString:v11 attributes:v19];

    [v9 setAttributedText_];
  }

  sub_189205F28(v2);
  v21 = &v1[OBJC_IVAR____UITabButton_configuration];
  v22 = (*&v1[OBJC_IVAR____UITabButton_configuration + 328])(v3);
  v23 = v22;
  if (v22)
  {
    v22 = sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
    v24 = &protocol witness table for UIColor;
  }

  else
  {
    v24 = 0;
    v30[1] = 0;
    v30[2] = 0;
  }

  v30[0] = v23;
  v30[3] = v22;
  v30[4] = v24;
  UIView._background.setter(v30);
  if (v21[360] == 1)
  {
    if (v1[OBJC_IVAR____UITabButton_hasFocusAppearance] == 1)
    {
      v25 = [v1 traitCollection];
      v26 = [v25 userInterfaceStyle];

      v27 = _UIUserInterfaceStyleInverted(v26);
    }

    else
    {
      v27 = 0;
    }

    [v9 setOverrideUserInterfaceStyle_];
    [*&v1[OBJC_IVAR____UITabButton_imageView] setOverrideUserInterfaceStyle_];
  }

  sub_18920678C(v2);
  LOBYTE(v30[0]) = 1;
  v28 = &v1[OBJC_IVAR____UITabButton_sizeCache];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *(v28 + 3) = 0u;
  v28[64] = 1;

  return [v1 setNeedsLayout];
}

void sub_189205F28(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____UITabButton_badgeView);
  if (v2)
  {
    v4 = *(v1 + OBJC_IVAR____UITabButton_configuration + 368);
    v11 = v2;
    [v11 setFont_];
    v5 = OBJC_IVAR____UITabButton_appearanceData;
    v6 = [*(v1 + OBJC_IVAR____UITabButton_appearanceData) badgeBackgroundColorForState_];
    [v11 setBadgeColor_];

    v7 = [*(v1 + v5) badgeTextAttributesForState_];
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    sub_18A4A70A8();

    v8 = sub_18A4A7088();

    [v11 setTextAttributes_];

    [*(v1 + v5) badgeTitlePositionAdjustmentForState_];
    [v11 setTextOffset_];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_189205F28(a1);
    }
  }
}

double sub_1892060EC(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  if (a1)
  {
    v4 = objc_opt_self();
    v5 = v1;
    if (([v4 _isInAnimationBlockWithAnimationsEnabled] & 1) == 0)
    {
      v6 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.2];
      v14[4] = sub_1892083C4;
      v14[5] = v3;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 1107296256;
      v14[2] = sub_188A4A8F0;
      v14[3] = &block_descriptor_94_2;
      v7 = _Block_copy(v14);
      v8 = v6;

      [v4 _animateUsingSpringBehavior_tracking_animations_completion_];

      _Block_release(v7);

      return result;
    }
  }

  else
  {
    v10 = v1;
  }

  v11 = *&v1[OBJC_IVAR____UITabButton_titleLabel];
  v12 = sub_1892037B4();
  v13 = 1.0;
  if (v12 == 2)
  {
    v13 = 0.0;
  }

  [v11 setAlpha_];

  return result;
}

uint64_t sub_1892062B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v3[OBJC_IVAR____UITabButton_appearanceData];
  v7 = [v3 traitCollection];
  v8 = [v6 titleTextAttributesForState:a1 compatibleWithTraitCollection:v7];

  type metadata accessor for Key(0);
  sub_188C5E0DC();
  v9 = sub_18A4A70A8();

  if (*(v9 + 16) && (v10 = sub_188B00858(*off_1E70EC918), (v11 & 1) != 0))
  {
    sub_188A55598(*(v9 + 56) + 32 * v10, v14);

    sub_188A34624(0, &qword_1ED48C4A0, &off_1E70ECC18);
    if (swift_dynamicCast())
    {
      return v13;
    }
  }

  else
  {
  }

  return (*&v3[OBJC_IVAR____UITabButton_configuration + 232])(a2);
}

id sub_18920641C(uint64_t a1)
{
  if (v1[OBJC_IVAR____UITabButton_configuration] != 1)
  {
    v4 = OBJC_IVAR____UITabButton_appearanceData;
    result = [*&v1[OBJC_IVAR____UITabButton_appearanceData] iconColorForState_];
    if (result)
    {
      return result;
    }

    if (a1 == 3)
    {
      v5 = [objc_opt_self() tertiaryLabelColor];
      return v5;
    }

    if ([v1 isSelected] && a1 == 4)
    {
      if ([v1 accessibilityShouldUseSelectedColorWhileFocused])
      {
        v5 = [*&v1[v4] iconColorForState_];
        return v5;
      }
    }

    else if (a1 == 2)
    {
      return 0;
    }

    v6 = [*&v1[OBJC_IVAR____UITabButton_imageView] _allowsMonochromaticTreatment];
    v7 = objc_opt_self();
    if (v6)
    {
      v5 = [v7 labelColor];
    }

    else
    {
      v5 = [v7 secondaryLabelColor];
    }

    return v5;
  }

  return sub_189206578(a1);
}

id sub_189206578(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____UITabButton_configuration;
  v4 = *(v1 + OBJC_IVAR____UITabButton_configuration + 248);
  v5 = sub_18920371C();
  result = v4(v5);
  if (!result)
  {
    if (a1 == 2)
    {
      v8 = *(v3 + 320);
    }

    else
    {
      if (a1 == 3)
      {
        v7 = [objc_opt_self() tertiaryLabelColor];
        return v7;
      }

      if (!*(v1 + OBJC_IVAR____UITabButton_unselectedLabelTintColor))
      {
        v10 = [*(v1 + OBJC_IVAR____UITabButton_titleLabel) _allowsMonochromaticTreatment];
        v11 = objc_opt_self();
        if (v10)
        {
          v7 = [v11 labelColor];
        }

        else
        {
          v7 = [v11 secondaryLabelColor];
        }

        return v7;
      }

      v8 = *(v1 + OBJC_IVAR____UITabButton_unselectedLabelTintColor);
    }

    v9 = v8;
    return v8;
  }

  return result;
}

void sub_18920667C(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____UITabButton_contentTintColorForState;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16) || (v7 = sub_188B85570(a2), (v8 & 1) == 0))
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!a1 || (v9 = *(*(v6 + 56) + 8 * v7), sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8), v10 = v9, v11 = a1, v12 = sub_18A4A7C88(), v10, v11, (v12 & 1) == 0))
  {
LABEL_7:
    swift_beginAccess();
    v13 = a1;
    sub_188B854B0(a1, a2);
    swift_endAccess();
    sub_189205B48();
  }
}

id sub_18920678C(uint64_t a1)
{
  v3 = [objc_opt_self() _glassMonochromaticTreatment];
  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(v1 + OBJC_IVAR____UITabButton_imageView);
  [v5 _setMonochromaticTreatment_];
  v6 = *(v1 + OBJC_IVAR____UITabButton_titleLabel);
  [v6 _setMonochromaticTreatment_];
  v7 = (a1 - 4) < 0xFFFFFFFFFFFFFFFELL;
  [v5 _setEnableMonochromaticTreatment_];

  return [v6 _setEnableMonochromaticTreatment_];
}

void sub_189206854()
{
  if (v0[OBJC_IVAR____UITabButton_configuration + 360] == 1)
  {
    if (v0[OBJC_IVAR____UITabButton_hasFocusAppearance] == 1)
    {
      v1 = [v0 traitCollection];
      v2 = [v1 userInterfaceStyle];

      v3 = _UIUserInterfaceStyleInverted(v2);
    }

    else
    {
      v3 = 0;
    }

    [*&v0[OBJC_IVAR____UITabButton_titleLabel] setOverrideUserInterfaceStyle_];
    v4 = *&v0[OBJC_IVAR____UITabButton_imageView];

    [v4 setOverrideUserInterfaceStyle_];
  }
}

void sub_189206D2C(char a1)
{
  v3 = OBJC_IVAR____UITabButton_isSpringLoaded;
  v4 = v1[OBJC_IVAR____UITabButton_isSpringLoaded];
  v5 = OBJC_IVAR____UITabButton_springLoadedInteraction;
  if (*&v1[OBJC_IVAR____UITabButton_springLoadedInteraction])
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && (a1 & 1) == 0)
  {
    [v1 removeInteraction_];
    v7 = *&v1[v5];
    *&v1[v5] = 0;
  }

  v1[v3] = a1 & 1;
  if (!(v4 & 1 | ((a1 & 1) == 0)) && !*&v1[v5])
  {
    v8 = objc_allocWithZone(UISpringLoadedInteraction);
    v12[4] = sub_189206E7C;
    v12[5] = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_189207D98;
    v12[3] = &block_descriptor_153;
    v9 = _Block_copy(v12);
    v10 = [v8 initWithActivationHandler_];
    _Block_release(v9);

    [v1 addInteraction_];
    v11 = *&v1[v5];
    *&v1[v5] = v10;
  }
}

void sub_189206E7C(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v3 = v1;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 sendActionsForControlEvents_];
    }
  }
}

double sub_189207068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _UITabButton.Label();
  v6 = v5;
  v15.receiver = v2;
  v15.super_class = v5;
  v7 = objc_msgSendSuper2(&v15, sel_text, v4);
  if (!v7)
  {
    v9 = 0;
    v11 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v8 = v7;
  v9 = sub_18A4A7288();
  v11 = v10;

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_18A4A7258();

LABEL_6:
  v14.receiver = v2;
  v14.super_class = v6;
  objc_msgSendSuper2(&v14, sel_setText_, v12);

  sub_18920714C(v9, v11);

  return result;
}

double sub_18920714C(uint64_t a1, uint64_t a2)
{
  v5 = [v2 text];
  if (!v5)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_12;
  }

  v7 = v5;
  v8 = sub_18A4A7288();
  v10 = v9;

  if (!a2)
  {

LABEL_12:
    *&v2[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_widthForKerningAdjustment] = 0;
    v13 = &v2[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment];
    *v13 = 0;
    v13[8] = 1;

    sub_189207458();
    return result;
  }

  if (v8 != a1 || v10 != a2)
  {
    v12 = sub_18A4A86C8();

    if (v12)
    {
      return result;
    }

    goto LABEL_12;
  }

  return result;
}

void sub_189207364(void *a1)
{
  v3 = [v1 attributedText];
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      sub_188A34624(0, &qword_1EA930C60, 0x1E696AAB0);
      v5 = a1;
      v6 = sub_18A4A7C88();

      if (v6)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  *&v1[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_widthForKerningAdjustment] = 0;
  v7 = &v1[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment];
  *v7 = 0;
  v7[8] = 1;

  sub_189207458();
}

void sub_189207458()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment + 8];
  if (v2)
  {
    v3 = 0;
    *(&v14 + 1) = 0;
    v15 = 0;
    v4 = 0;
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment];
    v3 = MEMORY[0x1E69E63B0];
  }

  *&v14 = v4;
  v16 = v3;
  v5 = [v0 _defaultAttributes];
  if (v5)
  {
    v6 = v5;
    v7 = *off_1E70EC950;
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v8 = sub_18A4A70A8();

    v13 = v8;
    if (v2)
    {
      sub_188A553EC(&v14);
      sub_1891E9B7C(v7, v12);
      sub_188A553EC(v12);
      if (v13)
      {
LABEL_7:
        v9 = sub_18A4A7088();

LABEL_10:
        [v1 _setDefaultAttributes_];

        return;
      }
    }

    else
    {
      sub_188A55538(&v14, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = v8;
      sub_188B32C50(v12, v7, isUniquelyReferenced_nonNull_native);
      v13 = v8;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    v9 = 0;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1892075DC(CGFloat a1)
{
  v3 = [v1 attributedText];
  if (!v3)
  {
    goto LABEL_19;
  }

  v27 = v3;
  [v1 bounds];
  if (CGRectGetWidth(v29) >= a1)
  {

LABEL_19:
    v25 = &v1[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment];
    *v25 = 0;
    v25[8] = 1;

    sub_189207458();
    return;
  }

  [v1 bounds];
  Width = CGRectGetWidth(v30);
  v5 = OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_widthForKerningAdjustment;
  if (Width != *&v1[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_widthForKerningAdjustment])
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v7 = [v6 length];
    v8 = [v1 font];
    if (v8)
    {
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E6D0, &qword_18A66AFB8);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_18A64BFB0;
      v11 = *off_1E70EC918;
      *(v10 + 32) = *off_1E70EC918;
      type metadata accessor for Key(0);
      v12 = v11;
      v13 = sub_18A4A7518();

      v14 = [v6 containsAttributes_];

      if ((v14 & 1) == 0)
      {
        [v6 addAttribute:v12 value:v9 range:{0, v7}];
      }
    }

    v15 = *off_1E70EC950;
    v16 = -1.2;
    v17 = sub_18A4A2D28();
    [v6 addAttribute:v15 value:v17 range:{0, v7}];

    [v6 boundingRectWithSize:0 options:0 context:{1.79769313e308, 1.79769313e308}];
    CGRectGetWidth(v31);
    UICeilToViewScale(v1);
    if (v18 < Width)
    {
      if (qword_1EA932028 != -1)
      {
        swift_once();
      }

      v19 = *&qword_1EA940480;
      if (v19 < CGFAbs(1.2))
      {
        v20 = 0.0;
        v21 = 1.2;
        while (1)
        {
          v22 = (v20 + v21) * 0.5;
          v16 = -v22;
          v23 = sub_18A4A2D28();
          [v6 addAttribute:v15 value:v23 range:{0, v7}];

          [v6 boundingRectWithSize:0 options:0 context:{1.79769313e308, 1.79769313e308}];
          CGRectGetWidth(v32);
          UICeilToViewScale(v1);
          if (Width < v24)
          {
            v20 = (v20 + v21) * 0.5;
            v22 = v21;
          }

          else if (v24 >= Width)
          {
            goto LABEL_23;
          }

          v21 = v22;
          if (v19 >= CGFAbs(v22 - v20))
          {
            goto LABEL_23;
          }
        }
      }

      v16 = -1.2;
    }

LABEL_23:
    *&v1[v5] = Width;
    v26 = &v1[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment];
    *v26 = v16;
    *(v26 + 8) = 0;
    sub_189207458();
  }
}

id sub_189207BE8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_189207D98(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

void sub_189207E20()
{
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____UITabButton_matchMoveIdentifierForImage);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____UITabButton_matchMoveIdentifierForBadge);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____UITabButton_tabBarButtonDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3 = v0 + OBJC_IVAR____UITabButton_overrideItemState;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____UITabButton_ignoresSelectedState) = 0;
  *(v0 + OBJC_IVAR____UITabButton_synchronizeAppearanceAndLayoutChangesToLinkedButton) = 0;
  v4 = OBJC_IVAR____UITabButton_imageView;
  *(v0 + v4) = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____UITabButton_titleLabel;
  type metadata accessor for _UITabButton.Label();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____UITabButton_badgeView) = 0;
  v6 = v0 + OBJC_IVAR____UITabButton_sizeCache;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 1;
  *(v0 + OBJC_IVAR____UITabButton_unselectedLabelTintColor) = 0;
  v7 = OBJC_IVAR____UITabButton_contentTintColorForState;
  *(v0 + v7) = sub_188B86168(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____UITabButton_itemContentInsets) = UIEdgeInsetsZero;
  *(v0 + OBJC_IVAR____UITabButton_itemTitleStyle) = 0;
  *(v0 + OBJC_IVAR____UITabButton_overrideItemDisplayMode) = 3;
  *(v0 + OBJC_IVAR____UITabButton_hasFocusAppearance) = 0;
  *(v0 + OBJC_IVAR____UITabButton__showsHighlightedState) = 0;
  *(v0 + OBJC_IVAR____UITabButton_springLoadedInteraction) = 0;
  *(v0 + OBJC_IVAR____UITabButton_isSpringLoaded) = 0;
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_189208014()
{
  if (*(v0 + OBJC_IVAR____UITabButton_overrideItemDisplayMode) == 3)
  {
    v1 = *(v0 + OBJC_IVAR____UITabButton_configuration);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____UITabButton_overrideItemDisplayMode);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong _internalTitle];
    if (v4)
    {
      v5 = v4;
      v6 = sub_18A4A7288();
      v8 = v7;

      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        v10 = v1 == 1;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
        goto LABEL_17;
      }

LABEL_15:
      v11 = &OBJC_IVAR____UITabButton_titleLabel;
      return *(v0 + *v11);
    }
  }

  else if (v1 == 1)
  {
    goto LABEL_15;
  }

LABEL_17:
  v11 = &OBJC_IVAR____UITabButton_titleLabel;
  if (!*(v0 + OBJC_IVAR____UITabButton_itemTitleStyle))
  {
    v11 = &OBJC_IVAR____UITabButton_imageView;
  }

  return *(v0 + *v11);
}

void sub_189208114(char *a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v31 = 0u;
  v32 = 0u;
  v14 = [a1 _defaultAttributes];
  if (v14)
  {
    v15 = v14;
    v16 = *off_1E70EC950;
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v17 = sub_18A4A70A8();

    v30 = v17;
    sub_188A553EC(&v31);
    sub_1891E9B7C(v16, v29);
    sub_188A553EC(v29);
    if (v30)
    {
      v18 = sub_18A4A7088();
    }

    else
    {
      v18 = 0;
    }

    [a1 _setDefaultAttributes_];

    type metadata accessor for _UITabButton.Label();
    v28.receiver = a2;
    v28.super_class = v19;
    objc_msgSendSuper2(&v28, sel_textRectForBounds_limitedToNumberOfLines_, a3, a4, a5, a6, a7);
    if (a1[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment + 8])
    {
      v20 = 0;
      *(&v31 + 1) = 0;
      *&v32 = 0;
      v21 = 0;
    }

    else
    {
      v21 = *&a1[OBJC_IVAR____TtCC5UIKit12_UITabButtonP33_4EA307C86E0356016F55ED2F1518661D5Label_appliedKerningAdjustment];
      v20 = MEMORY[0x1E69E63B0];
    }

    *&v31 = v21;
    *(&v32 + 1) = v20;
    v22 = [a1 _defaultAttributes];
    if (v22)
    {
      v23 = v22;
      v24 = sub_18A4A70A8();

      v30 = v24;
      if (*(&v32 + 1))
      {
        sub_188A55538(&v31, v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v24;
        sub_188B32C50(v29, v16, isUniquelyReferenced_nonNull_native);
        v30 = v24;
        if (v24)
        {
LABEL_11:
          v26 = sub_18A4A7088();

LABEL_14:
          [a1 _setDefaultAttributes_];

          return;
        }
      }

      else
      {
        sub_188A553EC(&v31);
        sub_1891E9B7C(v16, v29);
        sub_188A553EC(v29);
        if (v30)
        {
          goto LABEL_11;
        }
      }

      v26 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1892083C4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____UITabButton_titleLabel);
  v2 = sub_1892037B4();
  v3 = 1.0;
  if (v2 == 2)
  {
    v3 = 0.0;
  }

  return [v1 setAlpha_];
}

void _UIComponentGestureRecognizer.managedNode.getter()
{
  if (*(v0 + qword_1EA940620))
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_189208458@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = (*a1 + qword_1EA940628);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = v7;
    *(v9 + 32) = v8;
    v10 = sub_189209EAC;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a4 = v10;
  a4[1] = v9;
  return sub_188A52E38(v7, v8);
}

double sub_189208504(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = *(a3 + a4 - 8);
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v5;
    v8[4] = v6;
    v9 = sub_189209E84;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = (*a2 + qword_1EA940628);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v8;
  sub_188A52E38(v5, v6);
  return sub_188A55B8C(v11, v12);
}

uint64_t _UIComponentGestureRecognizer.phaseListener.getter()
{
  v1 = (v0 + qword_1EA940628);
  swift_beginAccess();
  v2 = *v1;
  sub_188A52E38(*v1, v1[1]);
  return v2;
}

double _UIComponentGestureRecognizer.phaseListener.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EA940628);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_188A55B8C(v6, v7);
}

id _UIComponentGestureRecognizer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _UIComponentGestureRecognizer.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[qword_1EA940628];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[qword_1EA940620] = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_initWithTarget_action_, 0, 0);
  [v3 addTarget:v3 action:sel__gestureAction];
  return v3;
}

uint64_t _UIComponentGestureRecognizer.componentController.getter()
{
  if ([(UIGestureRecognizer *)v0 _componentController])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_188A55538(v5, &v6);
    sub_18A4A7038();
    swift_dynamicCast();
    return v2;
  }

  else
  {
    sub_188A3F5FC(v5, &qword_1EA934050, qword_18A64CA10);
    return 0;
  }
}

double _UIComponentGestureRecognizer.componentController.setter(void *a1)
{
  sub_189209D40(a1);

  return result;
}

double (*_UIComponentGestureRecognizer.componentController.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = _UIComponentGestureRecognizer.componentController.getter();
  return sub_189208910;
}

double sub_189208910(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {

    [(UIGestureRecognizer *)v3 _setComponentController:v2];
  }

  else
  {
    [(UIGestureRecognizer *)*(a1 + 8) _setComponentController:v2];
  }

  return result;
}

void sub_189208974()
{
  v1 = sub_18A4A6F58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - v3;
  v5 = v0 + qword_1EA940628;
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    if (*(v0 + qword_1EA940620))
    {
      v7 = *(v5 + 8);
      sub_188A52E38(v6, v7);

      sub_18A4A6F28();

      v6(v4);
      v8 = sub_188A55B8C(v6, v7);
      (*(v2 + 8))(v4, v1, v8);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_189208AD8(void *a1)
{
  v1 = a1;
  sub_189208974();
}

uint64_t sub_189208B20()
{
  sub_18A4A6F48();
  *(v0 + qword_1EA940620) = sub_18A4A6F38();

  _UIGestureNodeKey();
  v1 = sub_18A4A6F18();

  return v1;
}

id sub_189208BBC(void *a1)
{
  v1 = a1;
  v2 = sub_189208B20();

  return v2;
}

uint64_t _UIComponentGestureRecognizer.isKind(of:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v78 = sub_18A4A6FA8();
  v80 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v79 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v77 = v58 - v6;
  v7 = sub_18A4A6F78();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18A4A6FD8();
  v63 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940630, &qword_18A674F98);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940638, &qword_18A674FA0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v58 - v21;
  if (sub_189209D4C() != a1)
  {
LABEL_7:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v86.receiver = v2;
    v86.super_class = ObjectType;
    return objc_msgSendSuper2(&v86, sel_isKindOfClass_, ObjCClassFromMetadata);
  }

  v75 = v13;
  v76 = v19;
  v60 = v16;
  v62 = v22;
  v61 = v11;
  v23 = v2;
  if (!_UIComponentGestureRecognizer.componentController.getter())
  {
LABEL_5:
    v26 = v62;
    (*(v8 + 56))(v62, 1, 1, v7);
LABEL_6:
    sub_188A3F5FC(v26, &qword_1EA940638, &qword_18A674FA0);
    v2 = v23;
    goto LABEL_7;
  }

  v24 = v60;
  sub_18A4A7028();

  v25 = v61;
  if ((*(v63 + 48))(v24, 1, v61) == 1)
  {
    sub_188A3F5FC(v24, &qword_1EA940630, &qword_18A674F98);
    goto LABEL_5;
  }

  v58[1] = a1;
  v59 = v23;
  v29 = (*(v63 + 16))(v75, v24, v25);
  sub_189209D98(v29);
  result = sub_18A4A7458();
  v74 = (v8 + 56);
  v64 = v8 + 16;
  v75 = (v8 + 48);
  v71 = (v8 + 32);
  v68 = v8;
  v69 = (v80 + 8);
  v67 = (v8 + 8);
  for (i = v10; ; i = v48)
  {
    v31 = v82;
    v80 = v83;
    v32 = v85;
    v33 = v84;
    v34 = v79;
    v35 = v76;
    v72 = v85;
    if (!v85)
    {
      v36 = (v80 + 64) >> 6;
      if (v36 <= (v84 + 1))
      {
        v37 = v84 + 1;
      }

      else
      {
        v37 = (v80 + 64) >> 6;
      }

      v38 = v37 - 1;
      v39 = v84;
      while (1)
      {
        v33 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v33 >= v36)
        {
          v40 = 0;
          v44 = 1;
          v43 = v81;
          goto LABEL_19;
        }

        v32 = *(v82 + 8 * v33);
        ++v39;
        if (v32)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      return result;
    }

LABEL_18:
    v40 = (v32 - 1) & v32;
    v41 = *(v81 + 56) + *(v8 + 72) * (__clz(__rbit64(v32)) | (v33 << 6));
    v42 = *(v8 + 16);
    v43 = v81;
    v42(v76, v41, v7);
    v44 = 0;
    v38 = v33;
LABEL_19:
    v45 = *v74;
    (*v74)(v35, v44, 1, v7);
    v70 = v43;
    v81 = v43;
    v82 = v31;
    v83 = v80;
    v84 = v38;
    v85 = v40;
    v46 = *v75;
    if ((*v75)(v35, 1, v7) == 1)
    {
      v55 = sub_188E036A4(v70);
      v26 = v62;
      (v45)(v62, 1, 1, v7, v55);
      goto LABEL_25;
    }

    v65 = v45;
    v66 = v46;
    v47 = *v71;
    (*v71)(i, v35, v7);
    v48 = i;
    v49 = v77;
    sub_18A4A6F68();
    sub_18A4A6F98();
    v50 = sub_18A4A6F88();
    v51 = v7;
    v52 = *v69;
    v53 = v34;
    v54 = v78;
    (*v69)(v53, v78);
    v52(v49, v54);
    if (v50)
    {
      break;
    }

    result = (*v67)(v48, v51);
    v7 = v51;
    v8 = v68;
  }

  v56 = sub_188E036A4(v70);
  v26 = v62;
  (v47)(v62, v48, v51, v56);
  v65(v26, 0, 1, v51);
  v7 = v51;
  v46 = v66;
LABEL_25:
  (*(v63 + 8))(v60, v61);
  v57 = v46(v26, 1, v7);
  v23 = v59;
  if (v57 == 1)
  {
    goto LABEL_6;
  }

  sub_188A3F5FC(v26, &qword_1EA940638, &qword_18A674FA0);
  return 1;
}