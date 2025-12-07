uint64_t sub_18901860C()
{
  v0 = qword_1EA93A2B8;

  return v0;
}

uint64_t sub_189018644()
{
  v0 = qword_1EA93A2A8;

  return v0;
}

uint64_t sub_18901867C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8))
  {
    result = sub_18A4A2388();
LABEL_4:
    *a2 = result;
    return result;
  }

  result = *a1;
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1890186BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = sub_18A4A2388();
  if (v4 == result)
  {
    v6 = 0;
LABEL_4:
    *a2 = v6;
    *(a2 + 8) = 0;
    *(a2 + 9) = v4 == result;
    return result;
  }

  v6 = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_189018714()
{
  v0 = qword_1EA93A2D8;

  return v0;
}

uint64_t sub_18901874C()
{
  v0 = qword_1EA93A2C8;

  return v0;
}

uint64_t sub_189018784()
{
  v0 = qword_1EA93A2F8;

  return v0;
}

uint64_t sub_1890187BC()
{
  v0 = qword_1EA93A2E8;

  return v0;
}

uint64_t sub_189018834@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  if (v4 == 2)
  {
    result = sub_18A4A2388();
  }

  else
  {
    result = v4 & 1;
  }

  *a2 = result;
  return result;
}

uint64_t sub_189018870@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  result = sub_18A4A2388();
  if (v4 == result)
  {
    v6 = 3;
LABEL_5:
    *a2 = v6;
    return result;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = v4 != 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1890188BC()
{
  v0 = qword_1EA93A318;

  return v0;
}

uint64_t sub_1890188F4()
{
  v0 = qword_1EA93A308;

  return v0;
}

BOOL sub_189018930(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_188C2F918(v7, v9);
}

uint64_t sub_18901899C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_18A4A7D38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, a1, a3, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v10, 0, 1, a2);
    (*(v14 + 32))(v18, v10, a2);
    v22 = sub_18A4A7248();
    (*(v14 + 8))(v18, a2);
  }

  else
  {
    v21(v10, 1, 1, a2);
    (*(v8 + 8))(v10, v7);
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_189018C3C(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v4);
  v6 = a2[3];
  v7 = __swift_project_boxed_opaque_existential_0(a2, v6);
  if ((sub_18901899C(v7, v4, v6, v5) & 1) == 0)
  {
    return 0;
  }

  v8 = a1[8];
  v9 = a1[9];
  __swift_project_boxed_opaque_existential_0(a1 + 5, v8);
  v10 = a2[8];
  v11 = __swift_project_boxed_opaque_existential_0(a2 + 5, v10);
  return sub_18901899C(v11, v8, v10, v9) & 1;
}

uint64_t sub_189018CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A328, &qword_18A65DDF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_189018D94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_189018DDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_189018E40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 89))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 88);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_189018E7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_189018ED0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 88) = a2;
  return result;
}

uint64_t _s18InProcessAnimationV10SpringTypeOwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t _s18InProcessAnimationV10SpringTypeOwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
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

double _s18InProcessAnimationV10SpringTypeOwst(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 2 * -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0;
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_189019018(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40) & 1 | (a2 << 63);
  *(result + 24) &= 1uLL;
  *(result + 40) = v2;
  return result;
}

uint64_t UIWindowScenePushPlacement.init(target:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_opt_self() placementTargetingSceneSession_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A330, &qword_18A65DF50);
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result;
  return result;
}

uint64_t UIWindowScenePushPlacement.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

uint64_t static UIWindowScenePlacement<>.push(onto:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() placementTargetingSceneSession_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A330, &qword_18A65DF50);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

uint64_t UIWindowScenePushPlacement._targetScenePersistentIdentifier.getter()
{
  v1 = [*(*v0 + 16) _targetSceneSessionPersistentIdentifier];
  v2 = sub_18A4A7288();

  return v2;
}

unint64_t sub_18901923C(uint64_t a1)
{
  result = sub_189019264();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_189019264()
{
  result = qword_1EA93A338;
  if (!qword_1EA93A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93A338);
  }

  return result;
}

unint64_t sub_1890192BC()
{
  result = qword_1EA93A340;
  if (!qword_1EA93A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93A340);
  }

  return result;
}

unint64_t sub_189019314()
{
  result = qword_1EA93A348;
  if (!qword_1EA93A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93A348);
  }

  return result;
}

double sub_189019468(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____UIBarBadgeView_text];
  v4 = *&v2[OBJC_IVAR____UIBarBadgeView_text];
  v5 = *&v2[OBJC_IVAR____UIBarBadgeView_text + 8];
  *v3 = a1;
  *(v3 + 1) = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == a1 && v5 == a2;
      if (v6 || (sub_18A4A86C8() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  [v2 _updateAttributedText];
LABEL_11:

  return result;
}

id sub_18901984C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 textLabel];
  v6 = [v5 *a3];

  return v6;
}

char *sub_189019998(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____UIBarBadgeView_text];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____UIBarBadgeView_textAttributes] = 0;
  *&v4[OBJC_IVAR____UIBarBadgeView_textOffset] = UIOffsetZero;
  v10 = OBJC_IVAR____UIBarBadgeView_textLabel;
  *&v4[v10] = [objc_allocWithZone(UILabel) init];
  v23.receiver = v4;
  v23.super_class = _UIBarBadgeView;
  v11 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setUserInteractionEnabled_];
  v12 = OBJC_IVAR____UIBarBadgeView_textLabel;
  [*&v11[OBJC_IVAR____UIBarBadgeView_textLabel] setTextAlignment_];
  v13 = *&v11[v12];
  v14 = [v11 _currentPlatformMetrics];
  v15 = [v14 badgeFont];

  [v13 setFont_];
  [*&v11[v12] setAdjustsFontForContentSizeCategory_];
  v16 = *&v11[v12];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 whiteColor];
  [v18 setTextColor_];

  [v11 addSubview_];
  v20 = [v17 systemRedColor];
  [v11 setBackgroundColor_];

  v21 = [v11 layer];
  [v21 setAllowsEdgeAntialiasing_];

  [v11 _setOverrideVibrancyTrait_];
  [v11 _setOverrideUserInterfaceRenderingMode_];

  return v11;
}

uint64_t sub_189019C40(void *a1)
{
  v3 = (v1 + OBJC_IVAR____UIBarBadgeView_text);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____UIBarBadgeView_textAttributes) = 0;
  *(v1 + OBJC_IVAR____UIBarBadgeView_textOffset) = UIOffsetZero;
  v4 = OBJC_IVAR____UIBarBadgeView_textLabel;
  v5 = [objc_allocWithZone(UILabel) init];

  *(v1 + v4) = v5;

  type metadata accessor for _UIBarBadgeView();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_189019D30(double a1, double a2)
{
  v5 = [v2 text];
  if (v5)
  {
    v6 = v5;
    v7 = sub_18A4A7288();
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v11 = [v2 _currentPlatformMetrics];
      [v11 badgeInsets];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [v2 textLabel];
      [v20 sizeThatFits_];
      v22 = v21;
      v24 = v23;

      v25 = v13 + v17 + v24;
      [v11 maximumBadgeWidth];
      v27 = v26;

      _UIClamp_0(v25, v15 + v19 + v22, v27);
    }
  }
}

void sub_189019ED4()
{
  v33.super_class = _UIBarBadgeView;
  objc_msgSendSuper2(&v33, sel_layoutSubviews);
  v1 = [v0 textLabel];
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 _currentPlatformMetrics];
  [v10 badgeInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = UIRectInset(v3, v5, v7, v9, v12, v18, v16, v14);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [v0 textOffset];
  v27 = v26;
  v29 = v28;
  v34.origin.x = v19;
  v34.origin.y = v21;
  v34.size.width = v23;
  v34.size.height = v25;
  v35 = CGRectOffset(v34, v27, v29);
  [v1 setFrame_];

  v30 = [v0 layer];
  [v0 bounds];
  Width = CGRectGetWidth(v36);
  [v0 bounds];
  Height = CGRectGetHeight(v37);
  if (Height >= Width)
  {
    Height = Width;
  }

  [v30 setCornerRadius_];
}

id sub_18901A0D4()
{
  v1 = [v0 text];
  v2 = [v0 textLabel];
  v3 = v2;
  if (v1)
  {
    v4 = [v0 textAttributes];
    if (v4)
    {
      type metadata accessor for Key(0);
      sub_188C5E0DC();
      sub_18A4A70A8();

      v4 = sub_18A4A7088();
    }

    v5 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString:v1 attributes:v4];

    [v3 setAttributedText_];
    v3 = v5;
  }

  else
  {
    [v2 setAttributedText_];
  }

  return [v0 setNeedsLayout];
}

unint64_t type metadata accessor for _UIBarBadgeView()
{
  result = qword_1EA93A370;
  if (!qword_1EA93A370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93A370);
  }

  return result;
}

id sub_18901A3DC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      v13 = objc_opt_self();
      v14 = sub_18A4A7258();
      v15 = sub_18A4A7258();
      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for UITraitResolvesNaturalAlignmentWithBaseWritingDirection, &protocol witness table for UITraitResolvesNaturalAlignmentWithBaseWritingDirection, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_18901A704(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      v13 = objc_opt_self();
      v14 = sub_18A4A7258();
      v15 = sub_18A4A7258();
      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for MorphableProviderTraitDefinition, &off_1EE43D620, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_18901AA2C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      v13 = objc_opt_self();
      v14 = sub_18A4A7258();
      v15 = sub_18A4A7258();
      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for GlassGroupBackdropNameTrait, &off_1EE43A6E8, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_18901AD54(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      v13 = objc_opt_self();
      v14 = sub_18A4A7258();
      v15 = sub_18A4A7258();
      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for MaterialBackdropContextTrait, &off_1ED48F1B8, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_18901B07C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      v13 = objc_opt_self();
      v14 = sub_18A4A7258();
      v15 = sub_18A4A7258();
      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for GlassFrostTrait, &off_1ED48EED8, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_18901B3A4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      v13 = objc_opt_self();
      v14 = sub_18A4A7258();
      v15 = sub_18A4A7258();
      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for GlassPocketContainerTrait, &off_1ED48EE98, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_18901B6CC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      v13 = objc_opt_self();
      v14 = sub_18A4A7258();
      v15 = sub_18A4A7258();
      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for _UICornerProvider.Trait, &off_1ED48EC48, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_18901B9F8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      v13 = objc_opt_self();
      v14 = sub_18A4A7258();
      v15 = sub_18A4A7258();
      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for GlassUserInterfaceStyleTrait, &off_1EE439CE8, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_18901BD20(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      if (qword_1ED490220 != -1)
      {
        swift_once();
      }

      if (qword_1ED48FCB8 != -1)
      {
        swift_once();
      }

      v13 = objc_opt_self();
      v14 = sub_18A4A7258();
      v15 = sub_18A4A7258();
      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for _UITraitColorMaterialRenderingMode, &off_1EE439290, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_18901C09C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      if (qword_1EA931A40 != -1)
      {
        swift_once();
      }

      if (qword_1EA931A48 != -1)
      {
        swift_once();
      }

      v13 = objc_opt_self();
      v14 = sub_18A4A7258();
      v15 = sub_18A4A7258();
      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for UITraitSemanticContext, &off_1EE43A4D8, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_18901C418(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      v13 = objc_opt_self();
      v14 = sub_18A4A7258();
      v15 = sub_18A4A7258();
      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for UIContainedInBarMaterialTraitDefinition, &off_1EE43F500, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_18901C740(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      v13 = objc_opt_self();
      v14 = sub_18A4A7258();
      v15 = sub_18A4A7258();
      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for _UIBarButtonItemMetricsTraitDefinition, &protocol witness table for _UIBarButtonItemMetricsTraitDefinition, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_18901CA68(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      if (qword_1EA931838 != -1)
      {
        swift_once();
      }

      if (qword_1EA931850 != -1)
      {
        swift_once();
      }

      v13 = objc_opt_self();
      v14 = sub_18A4A7258();
      v15 = sub_18A4A7258();
      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for UITraitActiveAppearance, &protocol witness table for UITraitActiveAppearance, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

void sub_18901CDE4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2))
  {
    v7 = sub_188A78D9C(a1);
    if (v8)
    {
      v9 = *(v6[7] + 8 * v7);
      swift_endAccess();
      if (a2)
      {
        v10 = objc_opt_self();
        sub_188A52E38(a2, a3);
        swift_unknownObjectRetain();
        if ([v10 _isPlaceholderTraitToken_])
        {
          v11 = swift_unknownObjectRetain();
          a2(v11);
          sub_188A55B8C(a2, a3);
          swift_unknownObjectRelease_n();
        }

        else
        {
          sub_188A55B8C(a2, a3);
        }
      }

      else
      {
        swift_unknownObjectRetain();
      }

      return;
    }
  }

  swift_endAccess();
  if (!a2)
  {
    v13 = objc_opt_self();
    v14 = &selRef_minimumContainerInsets;
    if ([v13 respondsToSelector_])
    {
      v14 = [v13 name];
      if (!v14)
      {
        sub_18A4A7288();
        v14 = sub_18A4A7258();
      }

      if ([v13 respondsToSelector_])
      {
        v15 = [v13 identifier];
        if (!v15)
        {
          sub_18A4A7288();
          v15 = sub_18A4A7258();
        }

        v12 = [objc_opt_self() _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];

        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v12 = (a2)(0);
  sub_188A55B8C(a2, a3);
LABEL_17:
  swift_beginAccess();
  swift_unknownObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = off_1ED491B18;
  off_1ED491B18 = 0x8000000000000000;
  swift_getObjectType();
  sub_188AC48E8(v12, a1, isUniquelyReferenced_nonNull_native, &v18);
  off_1ED491B18 = v18;
  swift_endAccess();
  if (qword_1ED491B00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_unknownObjectRetain();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v18 = off_1ED491B08;
  off_1ED491B08 = 0x8000000000000000;
  sub_188AC4FC4(&type metadata for _UITraitHiddenViewsContributeToPocket, &off_1EE43C548, v12, v17);
  swift_unknownObjectRelease();
  off_1ED491B08 = v18;
  swift_endAccess();
  swift_unknownObjectRelease();
}

id sub_18901D174(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      if (qword_1EA92E9F8 != -1)
      {
        swift_once();
      }

      if (qword_1EA92EA10 != -1)
      {
        swift_once();
      }

      v13 = objc_opt_self();
      v14 = sub_18A4A7258();
      v15 = sub_18A4A7258();
      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for UITraitTypesettingLanguageAwareLineHeightRatio, &protocol witness table for UITraitTypesettingLanguageAwareLineHeightRatio, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_18901D4F0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      v13 = objc_opt_self();
      v14 = sub_18A4A7258();
      v15 = sub_18A4A7258();
      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for _UITraitControlGlassStyle, &off_1EE43E408, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_18901D818(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      if (qword_1EA9317E8 != -1)
      {
        swift_once();
      }

      if (qword_1EA931800 != -1)
      {
        swift_once();
      }

      v13 = objc_opt_self();
      v14 = sub_18A4A7258();
      v15 = sub_18A4A7258();
      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for UITraitLegibilityWeight, &protocol witness table for UITraitLegibilityWeight, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_18901DB94(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      if (qword_1EA931798 != -1)
      {
        swift_once();
      }

      v13 = qword_1EA9317B0;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = objc_opt_self();

      v15 = sub_18A4A7258();

      v16 = sub_18A4A7258();

      v9 = [v14 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v20);
    off_1ED491B18 = v20;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v20 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for UITraitUserInterfaceLevel, &protocol witness table for UITraitUserInterfaceLevel, v9, v18);
    swift_unknownObjectRelease();
    off_1ED491B08 = v20;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

double sub_18901DF38(void *a1)
{
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93A580, &qword_18A648D48);
  v17[0] = a1;
  sub_188A55598(v17, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  swift_dynamicCast();
  v14[0] = v15;
  v14[1] = v16;
  v3 = *(&v16 + 1);
  sub_188A3F5FC(v14, &qword_1EA934050, qword_18A64CA10);
  if (v3)
  {
    *&v15 = a1;
    v4 = a1;
    v5 = sub_18A4A8778();
  }

  else
  {
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = [(_UITraitOverrides *)*(*v1 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    *v1 = v8;
  }

  v9 = qword_1ED491B40;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v11 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901A704(&type metadata for MorphableProviderTraitDefinition, sub_188E18DF8, 0);
  os_unfair_lock_unlock(v11[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970, &unk_18A651030);
  v12 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v10 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return result;
}

double sub_18901E1A8(uint64_t a1)
{
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933280, &qword_18A648D70);
  v16[0] = a1;
  sub_188A55598(v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  swift_dynamicCast();
  v13[0] = v14;
  v13[1] = v15;
  v3 = *(&v15 + 1);
  sub_188A3F5FC(v13, &qword_1EA934050, qword_18A64CA10);
  if (v3)
  {
    *&v14 = a1;

    v4 = sub_18A4A8778();
  }

  else
  {
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = [(_UITraitOverrides *)*(*v1 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;

    *v1 = v7;
  }

  v8 = qword_1ED491B40;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v10 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901B6CC(&type metadata for _UICornerProvider.Trait, sub_188E192C0, 0);
  os_unfair_lock_unlock(v10[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970, &unk_18A651030);
  v11 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v9 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return result;
}

double sub_18901E41C(uint64_t a1)
{
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9332F0, &qword_18A648D78);
  v3 = swift_allocObject();
  v17[0] = v3;
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  sub_188A55598(v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  swift_dynamicCast();
  v16[0] = v14;
  v16[1] = v15;
  sub_188A3F5FC(v16, &qword_1EA934050, qword_18A64CA10);
  if (*(&v15 + 1))
  {
    v5 = sub_18A4A8778();
  }

  else
  {
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = [(_UITraitOverrides *)*(*v1 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    *v1 = v8;
  }

  v9 = qword_1ED491B40;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v11 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901C740(&type metadata for _UIBarButtonItemMetricsTraitDefinition, sub_188E195F0, 0);
  os_unfair_lock_unlock(v11[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970, &unk_18A651030);
  v12 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v10 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return result;
}

double sub_18901E6BC(void *a1)
{
  v15[3] = type metadata accessor for MaterialBackdropContext(0);
  v15[0] = a1;
  sub_188A55598(v15, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  swift_dynamicCast();
  v13[0] = v13[2];
  v13[1] = v14;
  v3 = *(&v14 + 1);
  sub_188A3F5FC(v13, &qword_1EA934050, qword_18A64CA10);
  if (v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = [(_UITraitOverrides *)*(*v1 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;

    *v1 = v7;
  }

  v8 = qword_1ED491B40;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v10 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901AD54(&type metadata for MaterialBackdropContextTrait, sub_188E19110, 0);
  os_unfair_lock_unlock(v10[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970, &unk_18A651030);
  v11 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v9 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return result;
}

double sub_18901E90C(uint64_t a1, uint64_t a2)
{
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140, &qword_18A648D50);
  v18[0] = a1;
  v18[1] = a2;
  sub_188A55598(v18, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  swift_dynamicCast();
  v15[0] = v16;
  v15[1] = v17;
  v5 = *(&v17 + 1);
  sub_188A3F5FC(v15, &qword_1EA934050, qword_18A64CA10);
  if (v5)
  {
    *&v16 = a1;
    *(&v16 + 1) = a2;

    v6 = sub_18A4A8778();
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(*v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = [(_UITraitOverrides *)*(*v2 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    v9 = swift_allocObject();
    *(v9 + 16) = v8;

    *v2 = v9;
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
  sub_18901AA2C(&type metadata for GlassGroupBackdropNameTrait, sub_188E18F84, 0);
  os_unfair_lock_unlock(v12[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970, &unk_18A651030);
  v13 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v11 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return result;
}

void sub_18901EB8C(uint64_t a1@<X0>, uint64_t *boxed_opaque_existential_0@<X8>)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    boxed_opaque_existential_0[3] = &type metadata for _GlassGroup;
    boxed_opaque_existential_0[4] = &protocol witness table for _GlassGroup;
    v6 = OBJC_IVAR____UIViewGlassGroup__underlyingMaterial;
    v7 = v5;
LABEL_5:
    swift_beginAccess();
    sub_188A53994(v7 + v6, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
    swift_dynamicCast();
    return;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v7 = v8;
    boxed_opaque_existential_0[3] = type metadata accessor for _Glass(0);
    boxed_opaque_existential_0[4] = &protocol witness table for _Glass;
    __swift_allocate_boxed_opaque_existential_0(boxed_opaque_existential_0);
    v6 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
    goto LABEL_5;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
    v12 = &protocol witness table for UIColor;
  }

  else
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13)
    {
      v22 = v2;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A4E0, &qword_18A65E370);
      if (swift_dynamicCast())
      {
        sub_188A5EBAC(v21, v18);
        v14 = v19;
        v15 = v20;
        __swift_project_boxed_opaque_existential_0(v18, v19);
        (*(v15 + 8))(v14, v15);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        if ([v2 conformsToProtocol_])
        {
          boxed_opaque_existential_0[3] = type metadata accessor for _CustomObjCMaterial(0, a1, v16, v17);
          boxed_opaque_existential_0[4] = &off_1EFADB480;
          *boxed_opaque_existential_0 = v2;
          swift_unknownObjectRetain();
        }

        else
        {
          boxed_opaque_existential_0[4] = 0;
          *boxed_opaque_existential_0 = 0u;
          *(boxed_opaque_existential_0 + 1) = 0u;
        }
      }

      return;
    }

    v10 = v13;
    v11 = sub_188A34624(0, &unk_1EA931120, off_1E70EADD8);
    v12 = &protocol witness table for UIVisualEffect;
  }

  boxed_opaque_existential_0[3] = v11;
  boxed_opaque_existential_0[4] = v12;
  *boxed_opaque_existential_0 = v10;

  swift_unknownObjectRetain();
}

double sub_18901EE3C@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188A403F4(&type metadata for _Material.Layer.LastAppliedMaterialLayerKey), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    sub_188A3F29C(v7 + 16, a1, &qword_1EA939FB0, &qword_18A65CFE0);
  }

  else
  {
    swift_endAccess();
    *(a1 + 288) = 0;
    result = 0.0;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_18901EF08@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188A403F4(&_s19OverrideMaterialKeyVN), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = (v7 + 16);
  }

  else
  {
    swift_endAccess();
    if (qword_1EA932058 != -1)
    {
      swift_once();
    }

    v8 = &xmmword_1EA941128;
  }

  return sub_188A3F29C(v8, a1, &unk_1EA93C9A0, qword_18A6513A0);
}

uint64_t sub_18901EFEC()
{
  v1 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + 16) && (v3 = sub_188A403F4(&_s29SemanticIdentifierProviderKeyVN), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    v6 = *(v5 + 16);
    sub_188A52E38(v6, *(v5 + 24));
    return v6;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

void sub_18901F084(void *a1@<X8>)
{
  v3 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188A403F4(&_s8BadgeKeyVN), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = v7[2];
    v9 = v7[3];
    v10 = v7[4];
    v11 = v7[5];
    v12 = v7[6];
    v13 = v7[7];
    *a1 = v8;
    a1[1] = v9;
    a1[2] = v10;
    a1[3] = v11;
    a1[4] = v12;
    a1[5] = v13;
    sub_188EC2284(v8, v9, v10, v11, v12, v13);
  }

  else
  {
    swift_endAccess();
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 1;
    a1[4] = 0;
    a1[5] = 0;
  }
}

uint64_t sub_18901F140@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188A403F4(&_s17_UIViewGlassStateVN), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = v7 + *(*v7 + 96);
  }

  else
  {
    swift_endAccess();
    if (qword_1EA930B08 != -1)
    {
      swift_once();
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A490, &qword_18A65E310);
    v8 = __swift_project_value_buffer(v9, qword_1EA930B10);
  }

  return sub_188A3F29C(v8, a1, &qword_1EA93A490, &qword_18A65E310);
}

double sub_18901F268@<D0>(_OWORD *a1@<X8>)
{
  v3 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188A403F4(&_s29CornerMaskingConfigurationKeyVN), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = v7[2];
    v9 = v7[3];
    v10 = v7[4];
    *&v17[10] = *(v7 + 74);
    v11 = *&v17[10];
    v16[2] = v9;
    *v17 = v10;
    v16[1] = v8;
    v16[0] = v7[1];
    *(a1 + 58) = v11;
    v12 = v7[4];
    a1[2] = v7[3];
    a1[3] = v12;
    v13 = v7[2];
    *a1 = v7[1];
    a1[1] = v13;
    sub_188A3F29C(v16, &v15, &qword_1EA938E70, &qword_18A657580);
  }

  else
  {
    swift_endAccess();
    result = 0.0;
    *(a1 + 58) = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_18901F364(uint64_t a1)
{
  v3 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188A403F4(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    return *(v7 + 16);
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

void (*UIView._background.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 136) = v1;
  v5 = [(UIView *)v1 _typedStorage];
  sub_188A6852C(v4);

  if (*(v4 + 24))
  {
    sub_188A53994(v4, v4 + 96);
    sub_188ACE668(v4);
  }

  else
  {
    sub_188A3F5FC(v4, &unk_1EA933EC0, &qword_18A65E090);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 128) = 0;
  }

  return sub_18901F530;
}

void sub_18901F530(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_188A3F29C(v2 + 96, v2, &unk_1EA93C9A0, qword_18A6513A0);
    UIView._background.setter(v2);
    sub_188A3F5FC(v2 + 96, &unk_1EA93C9A0, qword_18A6513A0);
  }

  else
  {
    UIView._background.setter(v2 + 96);
  }

  free(v2);
}

double sub_18901F5BC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v94[5] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188A3F29C(a1, &v92, &unk_1EA93C9A0, qword_18A6513A0);
  if (v93)
  {
    sub_188A5EBAC(&v92, v94);
    _UIBeginTrackingTraitUsage(v2, 0, &v45);
    v89 = v53;
    v90 = v54;
    v91 = v55;
    v85 = v49;
    v86 = v50;
    v87 = v51;
    v88 = v52;
    v81 = v45;
    v82 = v46;
    v83 = v47;
    v84 = v48;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    v73 = v61;
    v74 = v62;
    v8 = v56;
    v80 = v68;
    v75 = v63;
    v76 = v64;
    v69 = v57;
    v70 = v58;
    v71 = v59;
    v72 = v60;
    v9 = [v2 traitCollection];
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    MEMORY[0x1EEE9AC00](v9);
    *(&v16 - 4) = &v42;
    *(&v16 - 3) = v94;
    *(&v16 - 2) = v10;
    *(&v16 - 1) = v2;
    sub_188AF3F08(sub_18902C2A4, (&v16 - 3));
    sub_188A3F29C(&v42, &v45, &unk_1EA93C9A0, qword_18A6513A0);
    if (*(&v46 + 1))
    {
      sub_188A5EBAC(&v45, v41);
      sub_188A53994(v41, &v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
      if (swift_dynamicCast())
      {
        sub_188A828FC(v7, type metadata accessor for _Glass);
        v11 = [v2 window];

        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        if (v11)
        {
        }

        else
        {
          sub_188A3F5FC(&v42, &unk_1EA93C9A0, qword_18A6513A0);
          v42 = 0u;
          v43 = 0u;
          v44 = 0;
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v41);
      }
    }

    else
    {

      sub_188A3F5FC(&v45, &unk_1EA93C9A0, qword_18A6513A0);
    }

    sub_188A53994(v94, a2);
    sub_188A3F29C(&v42, &v45, &unk_1EA93C9A0, qword_18A6513A0);
    *(a2 + 40) = 0u;
    v13 = a2 + 40;
    *(v13 + 1) = 0u;
    *(v13 + 4) = 0;
    v13[40] = 2;
    *(v13 + 6) = 0;
    sub_188AF50B0(&v45, v13);
    sub_188A3F5FC(&v42, &unk_1EA93C9A0, qword_18A6513A0);
    v53 = v89;
    v54 = v90;
    v55 = v91;
    v49 = v85;
    v50 = v86;
    v51 = v87;
    v52 = v88;
    v45 = v81;
    v46 = v82;
    v47 = v83;
    v48 = v84;
    v66 = v78;
    v67 = v79;
    v62 = v74;
    v63 = v75;
    v64 = v76;
    v65 = v77;
    v61 = v73;
    v57 = v69;
    v58 = v70;
    v59 = v71;
    v56 = v8;
    v68 = v80;
    v60 = v72;
    _UIEndTrackingTraitUsage(&v45, &v17);
    v53 = v25;
    v54 = v26;
    v55 = v27;
    v49 = v21;
    v50 = v22;
    v51 = v23;
    v52 = v24;
    v45 = v17;
    v46 = v18;
    v47 = v19;
    v48 = v20;
    v66 = v38;
    v67 = v39;
    v62 = v34;
    v63 = v35;
    v64 = v36;
    v65 = v37;
    v61 = v33;
    v57 = v29;
    v58 = v30;
    v59 = v31;
    v60 = v32;
    v68 = v40;
    v56 = v28;
    _UITrackedStateCompare(v8, v28, &v17);
    v16 = v17;
    v14 = v18;
    v15 = [v2 methodForSelector_];
    v17 = v16;
    *&v18 = v14;
    [(UIView *)v2 _recordTraitUsage:&v17 trackedStateDiff:v15 insideMethod:sel__invalidateBackground withInvalidationAction:?];
    _UITraitUsageTrackingResultDestroy(&v45);
    return __swift_destroy_boxed_opaque_existential_0Tm(v94);
  }

  else
  {
    sub_188A3F5FC(&v92, &unk_1EA93C9A0, qword_18A6513A0);
    result = 0.0;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_18901FAEC(uint64_t a1)
{
  v3 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(&v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v7);
  if (swift_dynamicCast())
  {
    sub_188A828FC(v5, type metadata accessor for _Glass);
  }
}

double sub_18901FC34@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10, &qword_18A6526E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17[-v4 - 8];
  v6 = type metadata accessor for _Glass(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *(v1 + 80);
  if (v11 == 2)
  {
    sub_188A3F29C(v1 + 40, a1, &unk_1EA93C9A0, qword_18A6513A0);
    return result;
  }

  if ((v11 & 1) == 0)
  {
    v13 = v8;
    sub_188A3F29C(v1 + 40, v17, &unk_1EA93C9A0, qword_18A6513A0);
    if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
      v14 = swift_dynamicCast();
      (*(v7 + 56))(v5, v14 ^ 1u, 1, v13);
      if ((*(v7 + 48))(v5, 1, v13) != 1)
      {
        sub_18902C0CC(v5, v10, type metadata accessor for _Glass);
        *(a1 + 24) = v13;
        *(a1 + 32) = &protocol witness table for _Glass;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
        sub_188A82098(v10, boxed_opaque_existential_0, type metadata accessor for _Glass);
        *(boxed_opaque_existential_0 + *(v13 + 32)) = 1;
        sub_188A828FC(v10, type metadata accessor for _Glass);
        return result;
      }
    }

    else
    {
      sub_188A3F5FC(v17, &unk_1EA93C9A0, qword_18A6513A0);
      (*(v7 + 56))(v5, 1, 1, v13);
    }

    sub_188A3F5FC(v5, &unk_1EA93BA10, &qword_18A6526E0);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_18901FEE0(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v111 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10, &qword_18A6526E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v107 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v105 - v10;
  v110 = type metadata accessor for _Glass(0);
  v109 = *(v110 - 8);
  v12 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v105 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v105 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v105 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v105 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v105 - v25;
  sub_188A3F29C(a1, &v125, &unk_1EA93C9A0, qword_18A6513A0);
  if (v126)
  {
    v106 = v20;
    sub_188A5EBAC(&v125, &aBlock);
    v27 = a2;
    sub_188A3F29C(a2, &v119, &unk_1EA93C9A0, qword_18A6513A0);
    if (v120)
    {
      v105 = v17;
      sub_188A5EBAC(&v119, &v125);
      __swift_project_boxed_opaque_existential_0(&aBlock, *(&v122 + 1));
      DynamicType = swift_getDynamicType();
      __swift_project_boxed_opaque_existential_0(&v125, v126);
      if (DynamicType != swift_getDynamicType())
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
        __swift_destroy_boxed_opaque_existential_0Tm(&v125);
        v17 = v105;
        goto LABEL_8;
      }

      sub_188A53994(&v125, &v119);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
      v63 = v110;
      v64 = v4;
      if (!swift_dynamicCast())
      {
        if (!swift_dynamicCast())
        {
          sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
          if (swift_dynamicCast())
          {
            v100 = *&v118[0];
            [v4 setBackgroundColor_];
          }

          else
          {
            sub_188A34624(0, &unk_1EA931120, off_1E70EADD8);
            if (swift_dynamicCast())
            {
              v101 = *&v118[0];
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
              v102 = swift_allocObject();
              *(v102 + 16) = xmmword_18A64B710;
              *(v102 + 32) = v101;
              v103 = v101;
              v104 = sub_18A4A7518();

              [v4 mt:v104 setBackgroundEffects:?];
            }
          }

          goto LABEL_74;
        }

        v71 = *(&v116 + 1);
        v72 = v117;
        v73 = sub_189021970();
        if (!v73)
        {
LABEL_74:
          __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
          __swift_destroy_boxed_opaque_existential_0Tm(&v125);
          v91 = &v119;
          goto LABEL_47;
        }

        v63 = v73;
        v64 = (v73 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_smoothness);
        *v64 = v71;
        *(v64 + 8) = v72;
        v74 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
        swift_beginAccess();
        v75 = *(v63 + v74);
        if (!(v75 >> 62))
        {
          v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v76)
          {
LABEL_73:

            goto LABEL_74;
          }

          goto LABEL_30;
        }

LABEL_72:
        v76 = sub_18A4A7F68();
        if (!v76)
        {
          goto LABEL_73;
        }

LABEL_30:
        v111 = v63;
        v77 = objc_opt_self();
        if (v76 < 1)
        {
          __break(1u);
          return;
        }

        v78 = v77;

        for (i = 0; i != v76; ++i)
        {
          if ((v75 & 0xC000000000000001) != 0)
          {
            v80 = sub_188E49160(i, v75);
          }

          else
          {
            v80 = *(v75 + 8 * i + 32);
          }

          v81 = v80;
          v82 = *(v64 + 8);
          v83 = &v80[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_smoothnessOverride];
          *v83 = *v64;
          v83[8] = v82;
          [v80 setNeedsLayout];
          if ([v78 _isInAnimationBlockWithAnimationsEnabled])
          {
            [v81 layoutIfNeeded];
          }
        }

        goto LABEL_74;
      }

      sub_18902C0CC(v26, v23, type metadata accessor for _Glass);
      sub_188A53994(&aBlock, v118);
      v65 = v106;
      swift_dynamicCast();
      if (v65[v63[7]] != v23[v63[7]])
      {
        v66 = v105;
        sub_188A82098(v65, v105, type metadata accessor for _Glass);
        v67 = v111;
        sub_189026F2C(v66, v111, 0, v4);
        sub_188A828FC(v66, type metadata accessor for _Glass);
        v68 = v126;
        v69 = v127;
        v70 = __swift_project_boxed_opaque_existential_0(&v125, v126);
        sub_18902A9A8(v70, v67, 0, v4, v68, v69);
LABEL_67:
        sub_188A828FC(v23, type metadata accessor for _Glass);
        __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
        __swift_destroy_boxed_opaque_existential_0Tm(&v125);
        sub_188A828FC(v65, type metadata accessor for _Glass);
        v91 = &v119;
        goto LABEL_47;
      }

      v75 = *v111;
      if (!*(*v111 + 16))
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v97 = sub_188B0944C(0x70756F7267, 0xE500000000000000);
      if ((v98 & 1) == 0)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      sub_188A55598(*(v75 + 56) + 32 * v97, &v116);
      sub_188A55538(&v116, v118);
      swift_dynamicCast();
      sub_188B602EC(v115, &v113);
      if (v114)
      {
        Strong = v113;
        sub_188B602B0(v115);
      }

      else
      {
        sub_188A3F704(&v113, v112, &qword_1EA93A4A0, &unk_18A65E320);
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_188A3F5FC(v112, &qword_1EA93A4A0, &unk_18A65E320);
        sub_188B602B0(v115);
        if (!Strong)
        {
LABEL_63:
          if (v23[v63[13]] == 1)
          {
            sub_189021FDC(v23);
          }

          else
          {
            sub_188B7064C(&_s18FlexInteractionKeyVN, &qword_1EA93A4F8, &unk_18A65E388);
          }

          v65 = v106;
          goto LABEL_67;
        }
      }

      Strong = Strong;
      sub_188B60324(v4, v106, v23);

      goto LABEL_63;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
    v29 = &v119;
  }

  else
  {
    v27 = a2;
    v29 = &v125;
  }

  sub_188A3F5FC(v29, &unk_1EA93C9A0, qword_18A6513A0);
LABEL_8:
  v30 = objc_opt_self();
  v31 = &selRef__isDictationButtonVisible;
  v32 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v30 _isInAnimationBlockWithAnimationsEnabled])
  {
    v33 = a1;
    v34 = v30;
    v106 = v33;
    sub_188A3F29C(v33, &aBlock, &unk_1EA93C9A0, qword_18A6513A0);
    v35 = v109;
    v36 = (v109 + 56);
    if (*(&v122 + 1))
    {
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
      v37 = v4;
      v38 = v110;
      v39 = swift_dynamicCast();
      (*(v35 + 56))(v11, v39 ^ 1u, 1, v38);
      v40 = v38;
      v4 = v37;
      v32 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      if ((*(v35 + 48))(v11, 1, v40) != 1)
      {
        v41 = v11;
        v42 = v108;
        sub_18902C0CC(v41, v108, type metadata accessor for _Glass);
        sub_188A3F29C(v27, &aBlock, &unk_1EA93C9A0, qword_18A6513A0);
        v30 = v34;
        v31 = &selRef__isDictationButtonVisible;
        if (*(&v122 + 1))
        {
          sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
          v43 = swift_dynamicCast();
          a1 = v106;
          if (v43)
          {
            v106 = v30;
            v44 = v17;
            v45 = v125;
            v46 = swift_allocObject();
            v47 = v42;
            v48 = v111;
            *(v46 + 16) = *v111;

            v49 = v45;
            sub_189028EFC(v49, v48, 1, v4);

            aBlock = 0u;
            v122 = 0u;
            sub_188B655D4(&aBlock, 0xD00000000000001BLL, 0x800000018A69FD40);
            aBlock = 0u;
            v122 = 0u;
            sub_188B655D4(&aBlock, 0x70756F7267, 0xE500000000000000);
            v50 = swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_188A82098(v47, v44, type metadata accessor for _Glass);
            v51 = (*(v109 + 80) + 24) & ~*(v109 + 80);
            v52 = swift_allocObject();
            *(v52 + 16) = v50;
            sub_18902C0CC(v44, v52 + v51, type metadata accessor for _Glass);
            *(v52 + ((v12 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = v46;
            v123 = sub_18902C1EC;
            v124 = v52;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v122 = sub_188ABD010;
            *(&v122 + 1) = &block_descriptor_120;
            v53 = _Block_copy(&aBlock);

            [v106 _addCompletion_];
            _Block_release(v53);

            sub_188A828FC(v47, type metadata accessor for _Glass);

            return;
          }

          sub_188A828FC(v42, type metadata accessor for _Glass);
        }

        else
        {
          sub_188A828FC(v42, type metadata accessor for _Glass);
          sub_188A3F5FC(&aBlock, &unk_1EA93C9A0, qword_18A6513A0);
          a1 = v106;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_188A3F5FC(&aBlock, &unk_1EA93C9A0, qword_18A6513A0);
      (*v36)(v11, 1, 1, v110);
    }

    sub_188A3F5FC(v11, &unk_1EA93BA10, &qword_18A6526E0);
    v30 = v34;
    a1 = v106;
    v31 = &selRef__isDictationButtonVisible;
  }

LABEL_16:
  if ([v30 v31[175]])
  {
    sub_188A3F29C(a1, &aBlock, &unk_1EA93C9A0, qword_18A6513A0);
    if (!*(&v122 + 1))
    {
      v60 = &unk_1EA93C9A0;
      v61 = qword_18A6513A0;
      p_aBlock = &aBlock;
LABEL_41:
      sub_188A3F5FC(p_aBlock, v60, v61);
      goto LABEL_42;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
    sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
    if (swift_dynamicCast())
    {
      v54 = v17;
      v55 = v125;
      sub_188A3F29C(v27, &aBlock, &unk_1EA93C9A0, qword_18A6513A0);
      if (!*(&v122 + 1))
      {

        sub_188A3F5FC(&aBlock, &unk_1EA93C9A0, qword_18A6513A0);
        v56 = v107;
        (*(v109 + 56))(v107, 1, 1, v110);
        goto LABEL_40;
      }

      v106 = v30;
      v56 = v107;
      v57 = v110;
      v58 = swift_dynamicCast();
      v59 = v109;
      (*(v109 + 56))(v56, v58 ^ 1u, 1, v57);
      if ((*(v59 + 48))(v56, 1, v57) == 1)
      {

LABEL_40:
        v60 = &unk_1EA93BA10;
        v61 = &qword_18A6526E0;
        p_aBlock = v56;
        goto LABEL_41;
      }

      sub_18902C0CC(v56, v32, type metadata accessor for _Glass);
      v92 = v54;
      sub_188A82098(v32, v54, type metadata accessor for _Glass);
      v93 = (*(v59 + 80) + 24) & ~*(v59 + 80);
      v94 = (v12 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      *(v75 + 16) = v4;
      sub_18902C0CC(v92, v75 + v93, type metadata accessor for _Glass);
      v64 = v111;
      *(v75 + v94) = v111;
      v95 = swift_allocObject();
      *(v95 + 16) = sub_18902C158;
      *(v95 + 24) = v75;
      v123 = sub_188E3FE50;
      v124 = v95;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v122 = sub_188A4A968;
      *(&v122 + 1) = &block_descriptor_110_0;
      v96 = _Block_copy(&aBlock);
      v63 = v4;

      [v106 performWithoutAnimation_];
      _Block_release(v96);
      LOBYTE(v96) = swift_isEscapingClosureAtFileLocation();

      if ((v96 & 1) == 0)
      {
        sub_1890279C4(v55, v64, 0, v63);

        sub_188A828FC(v32, type metadata accessor for _Glass);

        return;
      }

      __break(1u);
      goto LABEL_70;
    }
  }

LABEL_42:
  sub_188A3F29C(a1, &v125, &unk_1EA93C9A0, qword_18A6513A0);
  if (v126)
  {
    sub_188A5EBAC(&v125, &aBlock);
    v84 = *(&v122 + 1);
    v85 = v123;
    v86 = __swift_project_boxed_opaque_existential_0(&aBlock, *(&v122 + 1));
    v87 = v111;
    sub_189028440(v86, v111, 1, v4, v84, v85);
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  }

  else
  {
    sub_188A3F5FC(&v125, &unk_1EA93C9A0, qword_18A6513A0);
    v87 = v111;
  }

  sub_188A3F29C(v27, &v125, &unk_1EA93C9A0, qword_18A6513A0);
  if (v126)
  {
    sub_188A5EBAC(&v125, &aBlock);
    v88 = *(&v122 + 1);
    v89 = v123;
    v90 = __swift_project_boxed_opaque_existential_0(&aBlock, *(&v122 + 1));
    sub_18902A9A8(v90, v87, 1, v4, v88, v89);
    v91 = &aBlock;
LABEL_47:
    __swift_destroy_boxed_opaque_existential_0Tm(v91);
    return;
  }

  sub_188A3F5FC(&v125, &unk_1EA93C9A0, qword_18A6513A0);
}

uint64_t sub_189021058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v5 = type metadata accessor for _Glass(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10, &qword_18A6526E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  sub_188A3F29C(a1, v39, &unk_1EA93C9A0, qword_18A6513A0);
  v19 = (v6 + 56);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
    v20 = swift_dynamicCast();
    v21 = *v19;
    (*v19)(v18, v20 ^ 1u, 1, v5);
  }

  else
  {
    sub_188A3F5FC(v39, &unk_1EA93C9A0, qword_18A6513A0);
    v21 = *v19;
    (*v19)(v18, 1, 1, v5);
  }

  sub_188A3F29C(a2, v39, &unk_1EA93C9A0, qword_18A6513A0);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
    v22 = swift_dynamicCast() ^ 1;
    v23 = v15;
  }

  else
  {
    sub_188A3F5FC(v39, &unk_1EA93C9A0, qword_18A6513A0);
    v23 = v15;
    v22 = 1;
  }

  v21(v23, v22, 1, v5);
  sub_188A3F29C(v18, v12, &unk_1EA93BA10, &qword_18A6526E0);
  v24 = *(v6 + 48);
  v25 = v24(v12, 1, v5);
  sub_188A3F5FC(v12, &unk_1EA93BA10, &qword_18A6526E0);
  v26 = v38;
  if (v25 != 1)
  {
    v27 = sub_18A4A7258();
    [(UIView *)v26 _removeChildTraitCollectionTransformWithIdentifier:v27];
  }

  v28 = v37;
  sub_188A3F29C(v15, v37, &unk_1EA93BA10, &qword_18A6526E0);
  if (v24(v28, 1, v5) == 1)
  {
    sub_188A3F5FC(v28, &unk_1EA93BA10, &qword_18A6526E0);
  }

  else
  {
    v29 = v28;
    v30 = v35;
    sub_18902C0CC(v29, v35, type metadata accessor for _Glass);
    sub_1890223E0();
    sub_188A828FC(v30, type metadata accessor for _Glass);
  }

  v31 = v24(v18, 1, v5);
  v32 = v24(v15, 1, v5);
  if (v31 == 1)
  {
    if (v32 != 1)
    {
      sub_188B6EC20();
    }
  }

  else if (v32 == 1)
  {
    sub_188B7064C(&_s26ScrollPocketInteractionKeyVN_1, &qword_1EA937088, &unk_18A652330);
  }

  sub_188A3F5FC(v15, &unk_1EA93BA10, &qword_18A6526E0);
  return sub_188A3F5FC(v18, &unk_1EA93BA10, &qword_18A6526E0);
}

uint64_t sub_18902152C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v7);
  [a4 bounds];
  sub_188AF4F9C(a3, v7, v8, v12, v9, v10);
  return sub_188AF50B0(v12, a1);
}

uint64_t sub_1890215BC(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  UIView._background.setter(v4);
  sub_188A3F29C(a2, v4, &unk_1EA93C9A0, qword_18A6513A0);
  return UIView._background.setter(v4);
}

uint64_t sub_189021620@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_1ED4906C0 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_188A3F29C(&xmmword_1ED48CF70, v1, &unk_1EA933EC0, &qword_18A65E090);
}

uint64_t sub_189021694()
{
  v1 = [(UIView *)v0 _typedStorage];
  sub_188A6852C(v6);

  if (!v6[3] || (v2 = v7) == 0)
  {
    sub_188A3F5FC(v6, &unk_1EA933EC0, &qword_18A65E090);
    v8 = 0u;
    v9 = 0u;
LABEL_7:
    sub_188A3F5FC(&v8, &qword_1EA934050, qword_18A64CA10);
    return 0;
  }

  if (*(v7 + 16) && (v3 = sub_188B0944C(0x756F726765726F66, 0xEE0077656956646ELL), (v4 & 1) != 0))
  {
    sub_188A55598(*(v2 + 56) + 32 * v3, &v8);
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  sub_188A3F5FC(v6, &unk_1EA933EC0, &qword_18A65E090);
  if (!*(&v9 + 1))
  {
    goto LABEL_7;
  }

  sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
  if (swift_dynamicCast())
  {
    return v6[0];
  }

  else
  {
    return 0;
  }
}

void sub_1890217D8(id a1)
{
  v3 = [(UIView *)v1 _typedStorage];
  sub_188A6852C(v9);

  if (v10 && v11)
  {
    if (a1)
    {
      v8 = sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
      *&v7 = a1;
      sub_188A55538(&v7, v6);
      a1 = a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = v11;
      v11 = 0x8000000000000000;
      sub_188B65974(v6, 0x756F726765726F66, 0xEE0077656956646ELL, isUniquelyReferenced_nonNull_native);
      v11 = v5;
    }

    else
    {
      sub_188BBAF5C(0x756F726765726F66, 0xEE0077656956646ELL, &v7);
      sub_188A3F5FC(&v7, &qword_1EA934050, qword_18A64CA10);
    }

    sub_188AF4690(v9);
  }

  else
  {
    sub_188A3F29C(v9, &v7, &unk_1EA933EC0, &qword_18A65E090);
    sub_188AF4690(&v7);

    sub_188A3F5FC(v9, &unk_1EA933EC0, &qword_18A65E090);
  }
}

uint64_t sub_189021970()
{
  v1 = [(UIView *)v0 _typedStorage];
  sub_188A6852C(&v8);

  if (!v10 || (v2 = v11) == 0)
  {
    sub_188A3F5FC(&v8, &unk_1EA933EC0, &qword_18A65E090);
    v12 = 0u;
    v13 = 0u;
LABEL_7:
    sub_188A3F5FC(&v12, &qword_1EA934050, qword_18A64CA10);
LABEL_8:
    v8 = 0;
    v9 = -1;
LABEL_9:
    sub_188A3F5FC(&v8, &qword_1EA93A498, &qword_18A65E318);
    return 0;
  }

  if (*(v11 + 16) && (v3 = sub_188B0944C(0x70756F7267, 0xE500000000000000), (v4 & 1) != 0))
  {
    sub_188A55598(*(v2 + 56) + 32 * v3, &v12);
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  sub_188A3F5FC(&v8, &unk_1EA933EC0, &qword_18A65E090);
  if (!*(&v13 + 1))
  {
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v9 == 255)
  {
    goto LABEL_9;
  }

  sub_188B602EC(&v8, &v12);
  if (BYTE8(v12))
  {
    Strong = v12;
  }

  else
  {
    sub_188A3F704(&v12, v7, &qword_1EA93A4A0, &unk_18A65E320);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_188A3F5FC(v7, &qword_1EA93A4A0, &unk_18A65E320);
  }

  sub_188B602B0(&v8);
  return Strong;
}

uint64_t sub_189021B28(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A490, &qword_18A65E310);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for GlassState(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_189021970();
  if (!v10)
  {
    return sub_188A3F5FC(a1, &qword_1EA93A490, &qword_18A65E310);
  }

  v11 = v10;
  sub_188A3F29C(a1, v5, &qword_1EA93A490, &qword_18A65E310);
  v12 = *(v7 + 48);
  if (v12(v5, 1, v6) == 1)
  {
    sub_18A4A2DF8();
    v13 = &v9[*(v6 + 20)];
    *v13 = 0;
    v13[8] = 1;
    if (v12(v5, 1, v6) != 1)
    {
      sub_188A3F5FC(v5, &qword_1EA93A490, &qword_18A65E310);
    }
  }

  else
  {
    sub_18902C0CC(v5, v9, type metadata accessor for GlassState);
  }

  sub_18905BDCC(v9, v1);

  sub_188A3F5FC(a1, &qword_1EA93A490, &qword_18A65E310);
  return sub_188A828FC(v9, type metadata accessor for GlassState);
}

uint64_t sub_189021D88@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA930B08 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A490, &qword_18A65E310);
  v3 = __swift_project_value_buffer(v2, qword_1EA930B10);
  return sub_188A3F29C(v3, a1, &qword_1EA93A490, &qword_18A65E310);
}

uint64_t sub_189021E18(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A490, &qword_18A65E310);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = [(UIView *)v2 _typedStorage];
  sub_188A3F29C(a1, v9, &qword_1EA93A490, &qword_18A65E310);
  sub_188A3F29C(v9, v6, &qword_1EA93A490, &qword_18A65E310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A568, &qword_18A65E3A0);
  v11 = swift_allocObject();
  sub_188A3F704(v6, v11 + *(*v11 + 96), &qword_1EA93A490, &qword_18A65E310);
  v12 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(&v10->super.isa + v12);
  *(&v10->super.isa + v12) = 0x8000000000000000;
  sub_188A40430(v11, &_s17_UIViewGlassStateVN, isUniquelyReferenced_nonNull_native);
  *(&v10->super.isa + v12) = v15;
  swift_endAccess();

  sub_188A3F5FC(a1, &qword_1EA93A490, &qword_18A65E310);
  return sub_188A3F5FC(v9, &qword_1EA93A490, &qword_18A65E310);
}

double sub_189021FDC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = [(UIView *)v1 _typedStorage];
  v8 = sub_188A74A4C(&_s18FlexInteractionKeyVN);

  if (v8)
  {
  }

  else
  {
    v9 = [objc_allocWithZone(_UIFlexInteraction) init];
    [v2 addInteraction_];
    v10 = v9;
    v11 = [(UIView *)v2 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A4F8, &unk_18A65E388);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    v13 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v14 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(&v11->super.isa + v13);
    *(&v11->super.isa + v13) = 0x8000000000000000;
    sub_188A40430(v12, &_s18FlexInteractionKeyVN, isUniquelyReferenced_nonNull_native);
    *(&v11->super.isa + v13) = v26;
    swift_endAccess();
  }

  v16 = [(UIView *)v2 _typedStorage];
  v17 = sub_188A74A4C(&_s18FlexInteractionKeyVN);

  if (v17)
  {
    [v17 setPreferredVariant_];
  }

  v18 = [(UIView *)v2 _typedStorage];
  v19 = sub_188A74A4C(&_s18FlexInteractionKeyVN);

  if (v19)
  {
    sub_188A82098(a1, v6, type metadata accessor for _Glass);
    _s9GlassInfoCMa(0);
    v21 = swift_allocObject();
    v22 = *(v4 + 24);
    v23 = v21 + OBJC_IVAR____TtCE5UIKitCSo18_UIFlexInteraction9GlassInfo_variant;
    sub_188A82098(v6 + v22, v21 + OBJC_IVAR____TtCE5UIKitCSo18_UIFlexInteraction9GlassInfo_variant, type metadata accessor for _Glass._GlassVariant);
    *(v23 + *(type metadata accessor for _Glass._GlassVariant(0) + 24)) = 0;
    v24 = *v6;
    v25 = *v6;
    sub_188A828FC(v6, type metadata accessor for _Glass);
    *(v21 + OBJC_IVAR____TtCE5UIKitCSo18_UIFlexInteraction9GlassInfo_tint) = v24;
    *&v19[OBJC_IVAR____UIFlexInteraction_glassInfo] = v21;
  }

  return result;
}

void sub_1890222DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    sub_189026F2C(a3, (a4 + 16), 0, v7);
    swift_endAccess();
  }
}

void sub_18902236C(void *a1, id a2)
{
  v3 = [a2 colorWithAlphaComponent_];
  [a1 setBackgroundColor_];
}

uint64_t sub_1890223E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937038, &unk_18A6521E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v31 = sub_18A4A6B98();
  v7 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70, &unk_18A64FD50);
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = sub_18A4A3148();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v0 traitCollection];
  sub_188F6812C(v18, 1, v17, 0.0, 0.0);

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A4F0, &qword_18A65E380);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v31 - v21;
  (*(v14 + 16))(&v31 - v21, v17, v13, v20);
  sub_189062BDC(v1, v9);
  sub_18A4A2F88();
  (*(v7 + 8))(v9, v31);
  sub_188A3F5FC(v22, &qword_1EA93A4F0, &qword_18A65E380);
  (*(v14 + 8))(v17, v13);
  v23 = sub_18A4A2F68();
  (*(*(v23 - 8) + 56))(v12, 0, 1, v23);
  v24 = [(UIView *)v1 _typedStorage];
  sub_188A3F29C(v12, v6, &qword_1EA937E70, &unk_18A64FD50);
  (*(v32 + 56))(v6, 0, 2, v33);
  v25 = type metadata accessor for _GlassBackgroundStyle(0);
  (*(*(v25 - 8) + 56))(v6, 0, 1, v25);
  v26 = v34;
  sub_188A3F29C(v6, v34, &qword_1EA937038, &unk_18A6521E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A4D0, &unk_18A65E360);
  v27 = swift_allocObject();
  sub_188A3F704(v26, v27 + *(*v27 + 96), &qword_1EA937038, &unk_18A6521E0);
  v28 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(&v24->super.isa + v28);
  *(&v24->super.isa + v28) = 0x8000000000000000;
  sub_188A40430(v27, &_s24_GlassBackgroundStyleKeyVN, isUniquelyReferenced_nonNull_native);
  *(&v24->super.isa + v28) = v35;
  swift_endAccess();

  sub_188A3F5FC(v6, &qword_1EA937038, &unk_18A6521E0);
  sub_1890228E4();
  return sub_188A3F5FC(v12, &qword_1EA937E70, &unk_18A64FD50);
}

void sub_1890228E4()
{
  v1 = [(UIView *)v0 _traitOverridesIfExist];
  if (v1 && (v2 = v1, v3 = sub_18A4A7258(), v4 = [(_UITraitOverrides *)v2 _hasChildTransformWithIdentifier:v3], v2, v3, (v4 & 1) != 0))
  {

    [v0 _childTraitTransformDidChange];
  }

  else
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v6 = sub_18A4A7258();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18902C0C4;
    *(v7 + 24) = v5;
    v9[4] = sub_188A8EE7C;
    v9[5] = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_188A85DA8;
    v9[3] = &block_descriptor_90_3;
    v8 = _Block_copy(v9);

    [(UIView *)v0 _addChildTraitCollectionTransformWithIdentifier:v6 transform:v8];
    _Block_release(v8);
  }
}

uint64_t sub_189022AA8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_allocate_value_buffer(v7, a4);
  v8 = __swift_project_value_buffer(v7, a4);
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v8, 1, 1, v9);
}

uint64_t sub_189022B4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED490160 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937038, &unk_18A6521E0);
  v3 = __swift_project_value_buffer(v2, qword_1ED490168);
  return sub_188A3F29C(v3, a1, &qword_1EA937038, &unk_18A6521E0);
}

double sub_189022BDC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *__return_ptr), uint64_t a5, uint64_t a6)
{
  v59 = a5;
  v57 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937038, &unk_18A6521E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v56 - v8;
  v10 = type metadata accessor for _GlassBackgroundStyle(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v58 = &v56 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    type metadata accessor for _GlassGroupView();
    if (swift_dynamicCastClass())
    {

      return result;
    }

    v25 = [(UIView *)v24 _typedStorage];
    sub_188A61B4C(v9);

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      sub_188A3F5FC(v9, &qword_1EA937038, &unk_18A6521E0);
      return result;
    }

    v26 = v58;
    v27 = sub_18902C0CC(v9, v58, type metadata accessor for _GlassBackgroundStyle);
    v28 = a2(v27);
    sub_188E1B6FC(v19);
    v29 = sub_188A82354(v19, v26);
    v30 = v57;
    if ((v29 & 1) == 0)
    {
      v57(v60);
      sub_188A82098(v26, v16, type metadata accessor for _GlassBackgroundStyle);
      v31 = v61;
      v32 = v62;
      __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
      sub_188AC7FC4(v16, v31, v32);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
    }

    sub_188A82098(v26, v13, type metadata accessor for _GlassBackgroundStyle);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70, &unk_18A64FD50);
    v34 = *(v33 - 8);
    v35 = (*(v34 + 48))(v13, 2, v33);
    sub_188A828FC(v13, type metadata accessor for _GlassBackgroundStyle);
    if (v35)
    {
      (*(v34 + 56))(v16, 2, 2, v33);
      v36 = sub_188A82354(v26, v16);
      sub_188A828FC(v16, type metadata accessor for _GlassBackgroundStyle);
      if (v36)
      {
        v37 = [v28 _userInterfaceRenderingMode];
        if (qword_1ED48E708 != -1)
        {
          v54 = v37;
          swift_once();
          v37 = v54;
        }

        v39 = qword_1EA931B40;
        if (v37 != qword_1EA931B40)
        {
          v30(v60);
          v40 = v61;
          v41 = v62;
          __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
          v42 = v41;
          v26 = v58;
          UIMutableTraits._userInterfaceRenderingMode.setter(v39, v40, v42);
          v38 = __swift_destroy_boxed_opaque_existential_0Tm(v60);
        }

        v43 = [v28 _vibrancy];
        if (qword_1ED48E728 != -1)
        {
          v55 = v43;
          swift_once();
          v43 = v55;
        }

        v44 = qword_1ED48E730;
        if (v43 != qword_1ED48E730)
        {
          v30(v60);
          v45 = v26;
          v46 = v61;
          v47 = v62;
          __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
          UIMutableTraits._vibrancy.setter(v44, v46, v47);

          sub_188A828FC(v19, type metadata accessor for _GlassBackgroundStyle);
          v48 = v45;
LABEL_23:
          sub_188A828FC(v48, type metadata accessor for _GlassBackgroundStyle);
          return __swift_destroy_boxed_opaque_existential_0Tm(v60);
        }
      }
    }

    else
    {
      if ([v28 _userInterfaceRenderingMode] != 2)
      {
        v30(v60);
        v50 = v61;
        v51 = v62;
        __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
        UIMutableTraits._userInterfaceRenderingMode.setter(2, v50, v51);
        v49 = __swift_destroy_boxed_opaque_existential_0Tm(v60);
      }

      if ([v28 _vibrancy] != 1)
      {
        v30(v60);
        v52 = v61;
        v53 = v62;
        __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
        UIMutableTraits._vibrancy.setter(1, v52, v53);

        sub_188A828FC(v19, type metadata accessor for _GlassBackgroundStyle);
        v48 = v26;
        goto LABEL_23;
      }
    }

    sub_188A828FC(v19, type metadata accessor for _GlassBackgroundStyle);
    sub_188A828FC(v26, type metadata accessor for _GlassBackgroundStyle);
  }

  return result;
}

uint64_t sub_189023238@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  a1[3] = *(v3 + 0x50);
  a1[4] = *(v3 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v5 = *(*(*((*v2 & *v1) + 0x50) - 8) + 16);
  v6 = v1 + *((*v2 & *v1) + 0x60);

  return v5(boxed_opaque_existential_0, v6);
}

uint64_t sub_18902336C(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *(v3 + 0x50);
  v5 = sub_18A4A7D38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_188A3F29C(a1, v22, &qword_1EA934050, qword_18A64CA10);
  if (!v22[3])
  {
    sub_188A3F5FC(v22, &qword_1EA934050, qword_18A64CA10);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E40, &unk_18A654D00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v17 = 0;
    return v17 & 1;
  }

  v21 = v1;
  ObjectType = swift_getObjectType();
  sub_18901EB8C(ObjectType, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9A0, qword_18A6513A0);
  if (!swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    (*(v9 + 56))(v8, 1, 1, v4);
    (*(v6 + 8))(v8, v5);
    goto LABEL_7;
  }

  (*(v9 + 56))(v8, 0, 1, v4);
  (*(v9 + 32))(v15, v8, v4);
  (*(*(*((*MEMORY[0x1E69E7D40] & *v21) + 0x50) - 8) + 16))(v12, &v21[*((*MEMORY[0x1E69E7D40] & *v21) + 0x60)]);
  v17 = (*(*(v3 + 88) + 16))(v15, v4);
  swift_unknownObjectRelease();
  v18 = *(v9 + 8);
  v18(v12, v4);
  v18(v15, v4);
  return v17 & 1;
}

uint64_t sub_189023720(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_18902336C(v8);

  sub_188A3F5FC(v8, &qword_1EA934050, qword_18A64CA10);
  return v6 & 1;
}

id sub_1890237E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _UIViewAnyMaterial(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

double sub_1890238E0@<D0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_18902397C(a1, a4, a5);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  sub_18901EB8C(ObjectType, a3);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_18902397C(uint64_t a1, double a2, double a3)
{
  if ([v3 _resolvedMaterialUsingTraitCollection_size_])
  {
    swift_getObjectType();
    v7 = sub_18902397C(a1, a2, a3);
    swift_unknownObjectRelease();
    return v7;
  }

  else
  {

    return swift_unknownObjectRetain();
  }
}

uint64_t sub_189023A6C()
{
  signpost_c2_entryLock_start();

  return swift_unknownObjectRetain();
}

void sub_189023BD8()
{
  v1 = v0;
  v2 = type metadata accessor for _GlassBackgroundStyle(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = [(UIView *)v0 _traitOverrides];
  v9 = [(_UITraitOverrides *)v8 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
  inited = swift_initStackObject();
  *(inited + 16) = v9;
  v22 = inited;
  sub_188AF61EC(0);
  v11 = v22;
  v12 = [(UIView *)v1 _traitOverrides];
  v13 = *(v11 + 16);

  [(_UITraitOverrides *)v12 _replaceWithOverrides:v13];

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70, &unk_18A64FD50);
  (*(*(v14 - 8) + 56))(v7, 2, 2, v14);
  v15 = [(UIView *)v1 _traitOverrides];
  v16 = [(_UITraitOverrides *)v15 _swiftImplCopy];

  v17 = swift_initStackObject();
  *(v17 + 16) = v16;
  v22 = v17;
  sub_188A82098(v7, v4, type metadata accessor for _GlassBackgroundStyle);
  sub_1891F0B5C(v4);
  sub_188A828FC(v7, type metadata accessor for _GlassBackgroundStyle);
  v18 = v22;
  v19 = [(UIView *)v1 _traitOverrides];
  v20 = *(v18 + 16);

  [(_UITraitOverrides *)v19 _replaceWithOverrides:v20];
}

void sub_189023E70(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 glass];
    *(&v6 + 1) = type metadata accessor for _Glass(0);
    v7 = &protocol witness table for _Glass;
    __swift_allocate_boxed_opaque_existential_0(&v5);
    v3 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
    swift_beginAccess();
    sub_188A53994(v2 + v3, v4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
    swift_dynamicCast();
    UIView._background.setter(&v5);
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    UIView._background.setter(&v5);
  }
}

void sub_189023FD4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    [v1 spacing];
    *(&v4 + 1) = &type metadata for _GlassGroup;
    v5 = &protocol witness table for _GlassGroup;
    LOWORD(v3) = 256;
    *(&v3 + 1) = v2;
    LOWORD(v4) = 0;
    UIView._background.setter(&v3);
  }

  else
  {
    v5 = 0;
    v3 = 0u;
    v4 = 0u;
    UIView._background.setter(&v3);
  }
}

id sub_1890240C4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10, &qword_18A6526E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for _Glass(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [(UIView *)v0 _typedStorage];
  sub_188A6852C(&v28);

  if (!*(&v29 + 1))
  {
    sub_188A3F5FC(&v28, &unk_1EA933EC0, &qword_18A65E090);
    v19 = 0u;
    v20 = 0u;
    *&v21 = 0;
    goto LABEL_6;
  }

  sub_188A53994(&v28, &v19);
  sub_188ACE668(&v28);
  if (!*(&v20 + 1))
  {
LABEL_6:
    sub_188A3F5FC(&v19, &unk_1EA93C9A0, qword_18A6513A0);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
  v10 = swift_dynamicCast();
  (*(v6 + 56))(v4, v10 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_18902C0CC(v4, v8, type metadata accessor for _Glass);
    v11 = [objc_allocWithZone(UIGlassEffect) init];
    [v11 setInteractive_];
    [v11 setTintColor_];
    sub_188A828FC(v8, type metadata accessor for _Glass);
    return v11;
  }

LABEL_7:
  sub_188A3F5FC(v4, &unk_1EA93BA10, &qword_18A6526E0);
  v12 = [(UIView *)v1 _typedStorage];
  sub_188A6852C(&v28);

  v21 = v30;
  v22 = v31;
  v23 = v32;
  v24 = v33;
  v20 = v29;
  v19 = v28;
  if (!*(&v29 + 1))
  {
    sub_188A3F5FC(&v19, &unk_1EA933EC0, &qword_18A65E090);
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    goto LABEL_15;
  }

  sub_188A53994(&v19, &v25);
  sub_188ACE668(&v19);
  if (!*(&v26 + 1))
  {
LABEL_15:
    sub_188A3F5FC(&v25, &unk_1EA93C9A0, qword_18A6513A0);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
  if (swift_dynamicCast())
  {
    v13 = *(&v28 + 1);
    v14 = v29;
    v15 = objc_allocWithZone(UIGlassContainerEffect);
    v16 = [v15 init];
    v11 = v16;
    v17 = 0.0;
    if (!v14)
    {
      v17 = v13;
    }

    [v16 setSpacing_];
    return v11;
  }

  return 0;
}

BOOL sub_189024508()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10, &qword_18A6526E0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  if (![v0 _resolvedBackground])
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_5;
  }

  ObjectType = swift_getObjectType();
  sub_18901EB8C(ObjectType, &v10);
  swift_unknownObjectRelease();
  if (!*(&v11 + 1))
  {
LABEL_5:
    sub_188A3F5FC(&v10, &unk_1EA93C9A0, qword_18A6513A0);
    v6 = type metadata accessor for _Glass(0);
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
  v6 = type metadata accessor for _Glass(0);
  v7 = swift_dynamicCast();
  (*(*(v6 - 8) + 56))(v4, v7 ^ 1u, 1, v6);
LABEL_6:
  type metadata accessor for _Glass(0);
  v8 = (*(*(v6 - 8) + 48))(v4, 1, v6) == 0;
  sub_188A3F5FC(v4, &unk_1EA93BA10, &qword_18A6526E0);
  return v8;
}

uint64_t sub_189024750()
{
  v1 = type metadata accessor for _GlassBackgroundStyle(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A4C0, &unk_18A65E350);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937038, &unk_18A6521E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = [(UIView *)v0 _typedStorage];
  sub_188A61B4C(v16);

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70, &unk_18A64FD50);
  (*(*(v18 - 8) + 56))(v13, 2, 2, v18);
  (*(v2 + 56))(v13, 0, 1, v1);
  v19 = *(v5 + 56);
  sub_188A3F29C(v16, v7, &qword_1EA937038, &unk_18A6521E0);
  sub_188A3F29C(v13, &v7[v19], &qword_1EA937038, &unk_18A6521E0);
  v20 = *(v2 + 48);
  if (v20(v7, 1, v1) != 1)
  {
    sub_188A3F29C(v7, v10, &qword_1EA937038, &unk_18A6521E0);
    if (v20(&v7[v19], 1, v1) != 1)
    {
      v22 = v25;
      sub_18902C0CC(&v7[v19], v25, type metadata accessor for _GlassBackgroundStyle);
      v21 = sub_188A82354(v10, v22);
      sub_188A828FC(v22, type metadata accessor for _GlassBackgroundStyle);
      sub_188A3F5FC(v13, &qword_1EA937038, &unk_18A6521E0);
      sub_188A3F5FC(v16, &qword_1EA937038, &unk_18A6521E0);
      sub_188A828FC(v10, type metadata accessor for _GlassBackgroundStyle);
      sub_188A3F5FC(v7, &qword_1EA937038, &unk_18A6521E0);
      return v21 & 1;
    }

    sub_188A3F5FC(v13, &qword_1EA937038, &unk_18A6521E0);
    sub_188A3F5FC(v16, &qword_1EA937038, &unk_18A6521E0);
    sub_188A828FC(v10, type metadata accessor for _GlassBackgroundStyle);
    goto LABEL_6;
  }

  sub_188A3F5FC(v13, &qword_1EA937038, &unk_18A6521E0);
  sub_188A3F5FC(v16, &qword_1EA937038, &unk_18A6521E0);
  if (v20(&v7[v19], 1, v1) != 1)
  {
LABEL_6:
    sub_188A3F5FC(v7, &unk_1EA93A4C0, &unk_18A65E350);
    v21 = 0;
    return v21 & 1;
  }

  sub_188A3F5FC(v7, &qword_1EA937038, &unk_18A6521E0);
  v21 = 1;
  return v21 & 1;
}

void sub_189024BE8(int a1)
{
  LODWORD(v54) = a1;
  v2 = type metadata accessor for _GlassBackgroundStyle(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A4C0, &unk_18A65E350);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937038, &unk_18A6521E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v44[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44[-v20];
  v22 = [(UIView *)v1 _typedStorage];
  if (v54)
  {
    v50 = v1;
    v51 = v13;
    sub_188A61B4C(v21);

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70, &unk_18A64FD50);
    v24 = *(v23 - 8);
    v48 = *(v24 + 56);
    v49 = v23;
    v47 = v24 + 56;
    (v48)(v18, 2, 2);
    v46 = *(v3 + 56);
    v46(v18, 0, 1, v2);
    v25 = *(v5 + 48);
    v54 = v21;
    sub_188A3F29C(v21, v7, &qword_1EA937038, &unk_18A6521E0);
    sub_188A3F29C(v18, &v7[v25], &qword_1EA937038, &unk_18A6521E0);
    v26 = *(v3 + 48);
    v27 = v2;
    if (v26(v7, 1, v2) == 1)
    {
      sub_188A3F5FC(v18, &qword_1EA937038, &unk_18A6521E0);
      v28 = v26(&v7[v25], 1, v2);
      v29 = v51;
      if (v28 == 1)
      {
        sub_188A3F5FC(v7, &qword_1EA937038, &unk_18A6521E0);
        v30 = v54;
LABEL_13:
        sub_188A3F5FC(v30, &qword_1EA937038, &unk_18A6521E0);
        return;
      }
    }

    else
    {
      v35 = v53;
      sub_188A3F29C(v7, v53, &qword_1EA937038, &unk_18A6521E0);
      v36 = v26(&v7[v25], 1, v27);
      v29 = v51;
      if (v36 != 1)
      {
        v43 = v52;
        sub_18902C0CC(&v7[v25], v52, type metadata accessor for _GlassBackgroundStyle);
        v45 = sub_188A82354(v35, v43);
        sub_188A828FC(v43, type metadata accessor for _GlassBackgroundStyle);
        sub_188A3F5FC(v18, &qword_1EA937038, &unk_18A6521E0);
        sub_188A828FC(v35, type metadata accessor for _GlassBackgroundStyle);
        sub_188A3F5FC(v7, &qword_1EA937038, &unk_18A6521E0);
        v37 = v50;
        v30 = v54;
        v38 = v10;
        if (v45)
        {
          goto LABEL_13;
        }

LABEL_10:
        v39 = [(UIView *)v37 _typedStorage];
        v48(v29, 2, 2, v49);
        v46(v29, 0, 1, v27);
        sub_188A3F29C(v29, v38, &qword_1EA937038, &unk_18A6521E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A4D0, &unk_18A65E360);
        v40 = swift_allocObject();
        sub_188A3F704(v38, v40 + *(*v40 + 96), &qword_1EA937038, &unk_18A6521E0);
        v41 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = *(&v39->super.isa + v41);
        *(&v39->super.isa + v41) = 0x8000000000000000;
        sub_188A40430(v40, &_s24_GlassBackgroundStyleKeyVN, isUniquelyReferenced_nonNull_native);
        *(&v39->super.isa + v41) = v55;
        swift_endAccess();

        sub_188A3F5FC(v29, &qword_1EA937038, &unk_18A6521E0);
        if (_UISolariumEnabled())
        {
          sub_1890228E4();
        }

        goto LABEL_13;
      }

      sub_188A3F5FC(v18, &qword_1EA937038, &unk_18A6521E0);
      sub_188A828FC(v35, type metadata accessor for _GlassBackgroundStyle);
    }

    sub_188A3F5FC(v7, &unk_1EA93A4C0, &unk_18A65E350);
    v37 = v50;
    v30 = v54;
    v38 = v10;
    goto LABEL_10;
  }

  (*(v3 + 56))(v13, 1, 1, v2);
  sub_188A3F29C(v13, v10, &qword_1EA937038, &unk_18A6521E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A4D0, &unk_18A65E360);
  v31 = swift_allocObject();
  sub_188A3F704(v10, v31 + *(*v31 + 96), &qword_1EA937038, &unk_18A6521E0);
  v32 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *(&v22->super.isa + v32);
  *(&v22->super.isa + v32) = 0x8000000000000000;
  sub_188A40430(v31, &_s24_GlassBackgroundStyleKeyVN, v33);
  *(&v22->super.isa + v32) = v55;
  swift_endAccess();

  sub_188A3F5FC(v13, &qword_1EA937038, &unk_18A6521E0);
  if (_UISolariumEnabled())
  {
    v34 = sub_18A4A7258();
    [(UIView *)v1 _removeChildTraitCollectionTransformWithIdentifier:v34];
  }
}

char *sub_18902532C()
{
  v1 = v0;
  v2 = [(UIView *)v0 _typedStorage];
  sub_188A6852C(&v13);

  if (*(&v14 + 1))
  {
    v21[0] = v15;
    v21[1] = v16;
    v21[2] = v17;
    v21[3] = v18;
    v19 = v13;
    v20 = v14;
    sub_188A3F29C(v21 + 8, &v13, &unk_1EA93C9A0, qword_18A6513A0);
    if (*(&v14 + 1))
    {
      sub_188A5EBAC(&v13, v12);
    }

    else
    {
      sub_188A3F5FC(&v13, &unk_1EA93C9A0, qword_18A6513A0);
      v4 = *(&v20 + 1);
      v5 = *&v21[0];
      __swift_project_boxed_opaque_existential_0(&v19, *(&v20 + 1));
      v6 = [v1 traitCollection];
      [v1 bounds];
      sub_188AF4F9C(v6, v4, v5, v12, v7, v8);
    }

    sub_188A5EBAC(v12, &v13);
    v9 = *(&v14 + 1);
    v10 = v15;
    __swift_project_boxed_opaque_existential_0(&v13, *(&v14 + 1));
    v3 = sub_188C8D2B4(v9, v10);
    sub_188ACE668(&v19);
    __swift_destroy_boxed_opaque_existential_0Tm(&v13);
  }

  else
  {
    sub_188A3F5FC(&v13, &unk_1EA933EC0, &qword_18A65E090);
    return 0;
  }

  return v3;
}

uint64_t sub_18902550C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for _GlassBackgroundStyle(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188A82098(a1, v6, type metadata accessor for _GlassBackgroundStyle);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A470, &unk_18A65E2F0);
  v8 = objc_allocWithZone(v7);
  sub_188A82098(v6, v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60), type metadata accessor for _GlassBackgroundStyle);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  result = sub_188A828FC(v6, type metadata accessor for _GlassBackgroundStyle);
  *a2 = v9;
  return result;
}

uint64_t sub_18902563C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_188A82098(*a1 + *((*MEMORY[0x1E69E7D40] & **a1) + 0x60), a2, type metadata accessor for _GlassBackgroundStyle);
  v3 = type metadata accessor for _GlassBackgroundStyle(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_1890256F0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED4905B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _GlassBackgroundStyle(0);
  v3 = __swift_project_value_buffer(v2, qword_1ED4A3668);
  return sub_188A82098(v3, a1, type metadata accessor for _GlassBackgroundStyle);
}

void sub_1890257A8(uint64_t *a1)
{
  v2 = sub_188D72854();
  v3 = *&v2[OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_FE53B1CE385CEEC5B789D2CA9BD7C0EB31BackgroundSuppressionController_numberOfAssertions];
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  *&v2[OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_FE53B1CE385CEEC5B789D2CA9BD7C0EB31BackgroundSuppressionController_numberOfAssertions] = v3 + 1;
  sub_189025898(v3);
  v4 = *&v2[OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_FE53B1CE385CEEC5B789D2CA9BD7C0EB31BackgroundSuppressionController_assertionID];
  if (__OFADD__(v4, 1))
  {
LABEL_7:
    __break(1u);
    return;
  }

  *&v2[OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_FE53B1CE385CEEC5B789D2CA9BD7C0EB31BackgroundSuppressionController_assertionID] = v4 + 1;
  v5 = sub_188D72B90();
  v6 = sub_18A4A7258();
  v7 = [v5 vendAssertionOfType:v4 initialState:0 reason:v6 requiresExplicitInvalidation:0];

  *a1 = v7;

  swift_unknownObjectRelease();
}

void sub_189025898(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_FE53B1CE385CEEC5B789D2CA9BD7C0EB31BackgroundSuppressionController_numberOfAssertions);
  if (a1 < 1 == v2 > 0)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v4 = [Strong traitCollection];
    v5 = sub_188D8440C();

    if (v5 && (v6 = MEMORY[0x1E69E7D40], , v5, v7 = swift_unknownObjectWeakLoadStrong(), , v7))
    {
      v8 = swift_unknownObjectUnownedLoadStrong();

      if (v7 == v8)
      {
        v9 = swift_unknownObjectUnownedLoadStrong();
        v10 = [v9 traitCollection];
        v11 = sub_188D8440C();

        if (v11)
        {
          v12 = *(v11 + *((*v6 & *v11) + 0x58));

          *(v12 + OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7418GlassElementBridge_isGlassSuppressed) = v2 > 0;
          if (v2 < 1)
          {
            sub_18A4A5948();
          }

          else
          {
            sub_18A4A5938();
          }
        }
      }
    }

    else
    {
    }

    v13 = swift_unknownObjectUnownedLoadStrong();
    [v13 _invalidateBackground];

    v14 = swift_unknownObjectUnownedLoadStrong();
    [(UIView *)v14 _backing_unwrapIfPossible];
  }
}

void sub_189025BA4()
{
  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_188AF8408(0xD00000000000001BLL, 0x800000018A69FC60, 1u);

    byte_1EA93A380 = v2 & 1;
  }

  else
  {
    __break(1u);
  }
}

id sub_189025CAC()
{
  v0 = objc_allocWithZone(UIColor);
  v4[4] = sub_189025D70;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_188BC2240;
  v4[3] = &block_descriptor_74_1;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  return v2;
}

id sub_189025D70(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = objc_allocWithZone(UIColor);

    return [v1 initWithWhite:1.05263158 alpha:0.95];
  }

  else
  {
    v3 = [objc_opt_self() blackColor];

    return v3;
  }
}

void sub_189025E48(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = sub_18A4A7288();
  MEMORY[0x18CFE22D0](v6);

  *a3 = 0xD000000000000019;
  *a4 = 0x800000018A69FC20;
}

void sub_189025EC0()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong traitCollection];

  v2 = swift_allocObject();
  *(v2 + 16) = sub_188E36ADC;
  *(v2 + 24) = 0;
  v39 = sub_188EB96AC;
  v40 = v2;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_188A7AC24;
  v38 = &block_descriptor_64_2;
  v3 = _Block_copy(&aBlock);

  v4 = [v1 traitCollectionByModifyingTraits_];
  _Block_release(v3);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v5 = [v4 userInterfaceStyle];
  v6 = objc_opt_self();
  v7 = &selRef_whiteColor;
  if (v5 != 2)
  {
    v7 = &selRef_blackColor;
  }

  v8 = [v6 *v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70, &qword_18A654CE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v33 = v10;
  v11 = &v31 - v10;
  v12 = sub_18A4A2DB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v31 = v13 + 56;
  v32 = v14;
  v15 = (v14)(v11, 1, 1, v12);
  sub_18904F42C(v4, v8, v11, v15);
  v34 = v16;

  sub_188A3F5FC(v11, &qword_1EA935D70, &qword_18A654CE0);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_188E36AE0;
  *(v17 + 24) = 0;
  v39 = sub_188EB96AC;
  v40 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_188A7AC24;
  v38 = &block_descriptor_71_0;
  v18 = _Block_copy(&aBlock);

  v19 = [v1 traitCollectionByModifyingTraits_];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    goto LABEL_9;
  }

  v20 = [v19 userInterfaceStyle];
  v21 = objc_opt_self();
  v22 = &selRef_whiteColor;
  if (v20 != 2)
  {
    v22 = &selRef_blackColor;
  }

  v23 = [v21 *v22];
  v24 = MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v33;
  v26 = v32(&v31 - v33, 1, 1, v12, v24);
  sub_18904F42C(v19, v23, v25, v26);
  v28 = v27;

  sub_188A3F5FC(v25, &qword_1EA935D70, &qword_18A654CE0);
  v29 = objc_opt_self();
  v30 = v34;
  [v29 _vibrantEffectWithLightVibrantColorMatrix_darkVibrantColorMatrix_alpha_];
}

void sub_18902635C(uint64_t a1, uint64_t a2)
{
  v2 = sub_18A4A7288();
  MEMORY[0x18CFE22D0](v2);

  qword_1EA93A398 = 0xD000000000000018;
  unk_1EA93A3A0 = 0x800000018A69FC40;
}

void sub_1890263D0()
{
  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_1891783E8(0xD000000000000027, 0x800000018A69FB80, 1.0);

    dword_1EA93A3A8 = LODWORD(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18902643C(void *a1, char a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  swift_unknownObjectUnownedInit();
  *(v3 + 24) = a2;
  Strong = swift_unknownObjectUnownedLoadStrong();
  ObjCClassFromObject = swift_getObjCClassFromObject();

  if ([ObjCClassFromObject _autoApplyMonochromaticTreatment])
  {
    v8 = [a1 traitCollection];
    if ([v8 userInterfaceStyle] == 1)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    if (qword_1EA931DF8 != -1)
    {
      swift_once();
    }

    v10 = dword_1EA93A3A8;

    v11 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v12 = sub_18A4A7258();
    [v11 setName_];

    v20[0] = 0;
    v20[1] = 0;
    v21 = v9;
    v23 = 0;
    v22 = 0;
    v24 = v9;
    v25 = 0;
    v26 = 0;
    v27 = v9;
    v29 = 0;
    v28 = 0;
    v30 = v10;
    v31 = 0;
    v13 = [objc_opt_self() valueWithCAColorMatrix_];
    [v11 setValue:v13 forKey:*MEMORY[0x1E6979AC0]];

    [v11 setEnabled_];
    v14 = [a1 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800, &unk_18A64D700);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_18A64BFB0;
    *(v15 + 56) = sub_188A34624(0, &qword_1ED48EE50, 0x1E6979378);
    *(v15 + 32) = v11;
    v16 = v11;
    v17 = sub_18A4A7518();

    [v14 setFilters_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480, &unk_18A653360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64BFB0;
    *(inited + 32) = &type metadata for UITraitUserInterfaceStyle;
    *(inited + 40) = &protocol witness table for UITraitUserInterfaceStyle;
    sub_188F4D864(inited, sub_18902B720, 0);

    swift_unknownObjectRelease();
    swift_setDeallocating();
  }

  else
  {
  }

  return v3;
}

void sub_189026760()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong layer];

  v2 = sub_18A4A7668();
  v3 = sub_18A4A7258();
  [v1 setValue:v2 forKeyPath:v3];
}

void sub_189026814()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = [Strong traitCollection];

  v3 = swift_allocObject();
  v3[2] = sub_188E36ADC;
  v3[3] = 0;
  *&v25[16] = sub_188A86D40;
  *&v25[24] = v3;
  *&aBlock.f64[0] = MEMORY[0x1E69E9820];
  *&aBlock.f64[1] = 1107296256;
  *v25 = sub_188A7AC24;
  *&v25[8] = &block_descriptor_74;
  v4 = _Block_copy(&aBlock);

  v5 = [v2 traitCollectionByModifyingTraits_];
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v0 = &selRef_updateUnderlinesIfNeededAfterPosition_;
    v3 = [v5 userInterfaceStyle];
    if (qword_1EA931DF8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v6 = dword_1EA93A3A8;

  v7 = swift_allocObject();
  *(v7 + 16) = sub_188E36AE0;
  *(v7 + 24) = 0;
  *&v25[16] = sub_188EB96AC;
  *&v25[24] = v7;
  *&aBlock.f64[0] = MEMORY[0x1E69E9820];
  *&aBlock.f64[1] = 1107296256;
  *v25 = sub_188A7AC24;
  *&v25[8] = &block_descriptor_57_1;
  v8 = _Block_copy(&aBlock);

  v9 = [v2 traitCollectionByModifyingTraits_];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = 1.0;
    if (v3 == 1)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }

    v12 = [v9 v0[247]];

    if (v12 == 1)
    {
      v10 = 0.0;
    }

    aBlock = 0uLL;
    *&v25[12] = 0;
    *&v25[4] = 0;
    *v25 = v11;
    *&v25[20] = v11;
    *v26 = 0;
    *&v25[24] = 0;
    *&v26[8] = v11;
    *&v26[12] = 0;
    *&v26[20] = 0;
    *&v26[24] = v6;
    *&v26[28] = 0;
    _UIColorEffectMakeUIColorMatrixFromCA(&aBlock, v23);
    v15 = 0uLL;
    *&v16[12] = 0;
    *&v16[4] = 0;
    *v16 = v10;
    *&v16[20] = v10;
    *&v16[24] = 0;
    *v17 = 0;
    *&v17[8] = v10;
    *&v17[12] = 0;
    *&v17[20] = 0;
    *&v17[24] = v6;
    *&v17[28] = 0;
    _UIColorEffectMakeUIColorMatrixFromCA(&v15, &aBlock);
    v13 = objc_opt_self();
    v19 = v23[6];
    v20 = v23[7];
    v21 = v23[8];
    v22 = v23[9];
    *&v16[16] = v23[2];
    *v17 = v23[3];
    *&v17[16] = v23[4];
    v18 = v23[5];
    v15 = v23[0];
    *v16 = v23[1];
    v14[6] = v28;
    v14[7] = v29;
    v14[8] = v30;
    v14[9] = v31;
    v14[2] = *&v25[16];
    v14[3] = *v26;
    v14[4] = *&v26[16];
    v14[5] = v27;
    v14[0] = aBlock;
    v14[1] = *v25;
    [v13 colorEffectLightMatrix:&v15 darkMatrix:v14];
  }
}

void sub_189026C04()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong layer];

  [v1 setFilters_];
}

uint64_t sub_189026DA4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_189026DD4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_189026E8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_189026ED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_189026F2C(uint64_t a1, uint64_t *a2, int a3, void *a4)
{
  v61 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A490, &qword_18A65E310);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v60[-v8];
  v10 = type metadata accessor for _Glass(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v60[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10, &qword_18A6526E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v60[-v18];
  v74[3] = v10;
  v74[4] = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v74);
  sub_188A82098(a1, boxed_opaque_existential_0, type metadata accessor for _Glass);
  if (![a4 _isBackgroundSuppressed])
  {
    goto LABEL_8;
  }

  v21 = [(UIView *)a4 _typedStorage];
  sub_188A6852C(&v63);

  v62[2] = v65;
  v62[3] = v66;
  v62[4] = v67;
  v62[5] = v68;
  v62[0] = v63;
  v62[1] = v64;
  if (!*(&v64 + 1))
  {
    sub_188A3F5FC(v62, &unk_1EA933EC0, &qword_18A65E090);
    v69 = 0u;
    v70 = 0u;
    v71 = 0;
    goto LABEL_6;
  }

  sub_188A53994(v62, &v69);
  sub_188ACE668(v62);
  if (!*(&v70 + 1))
  {
LABEL_6:
    sub_188A3F5FC(&v69, &unk_1EA93C9A0, qword_18A6513A0);
    (*(v11 + 56))(v19, 1, 1, v10);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
  v22 = swift_dynamicCast();
  (*(v11 + 56))(v19, v22 ^ 1u, 1, v10);
LABEL_7:
  v23 = (*(v11 + 48))(v19, 1, v10);
  sub_188A3F5FC(v19, &unk_1EA93BA10, &qword_18A6526E0);
  if (v23 || (v44 = [a4 _window]) == 0)
  {
LABEL_8:
    sub_188B7064C(&_s18FlexInteractionKeyVN, &qword_1EA93A4F8, &unk_18A65E388);
    goto LABEL_9;
  }

LABEL_9:
  sub_188A53994(v74, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
  if (swift_dynamicCast())
  {
    v24 = sub_189021970();
    if (v24)
    {
      v25 = v24;
      [v24 removeFromSuperview];
    }

    v26 = [(UIView *)a4 _traitOverrides];
    v27 = [(_UITraitOverrides *)v26 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    inited = swift_initStackObject();
    *(inited + 16) = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(inited + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = [(_UITraitOverrides *)*(inited + 16) _swiftImplCopy];
      v31 = swift_allocObject();
      *(v31 + 16) = v30;

      inited = v31;
    }

    v32 = qword_1ED491B40;
    v33 = v30;
    if (v32 != -1)
    {
      swift_once();
    }

    if (qword_1ED491AF0 != -1)
    {
      swift_once();
    }

    v34 = off_1ED491B48;
    os_unfair_lock_lock(*(off_1ED491B48 + 2));
    v35 = sub_188AF5144(&type metadata for _GlassGroupTraitDefinition, 0, 0);
    os_unfair_lock_unlock(v34[2]);
    [(_UITraitOverrides *)v33 _removeTraitToken:v35];

    swift_unknownObjectRelease();
    v36 = [(UIView *)a4 _traitOverrides];
    v37 = *(inited + 16);

    [(_UITraitOverrides *)v36 _replaceWithOverrides:v37];

    v63 = 0u;
    v64 = 0u;
    sub_188B655D4(&v63, 0x70756F7267, 0xE500000000000000);
LABEL_50:
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    __swift_destroy_boxed_opaque_existential_0Tm(v74);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
    if (swift_dynamicCast())
    {
      v42 = v63;
      v43 = [v63 colorWithAlphaComponent_];
      [a4 setBackgroundColor_];
    }

    else
    {
      sub_188A34624(0, &unk_1EA931120, off_1E70EADD8);
      if (swift_dynamicCast())
      {

        [a4 mt:0 setBackgroundEffects:?];
      }
    }

    goto LABEL_50;
  }

  sub_18902C0CC(v16, v13, type metadata accessor for _Glass);
  v38 = *a2;
  if (*(*a2 + 16))
  {
    v10 = 0x70756F7267;
    v39 = sub_188B0944C(0x70756F7267, 0xE500000000000000);
    if (v40)
    {
      sub_188A55598(*(v38 + 56) + 32 * v39, &v69);
      sub_188A55538(&v69, &v63);
      swift_dynamicCast();
      sub_188B602EC(v73, &v63);
      if (BYTE8(v63))
      {
        Strong = v63;
      }

      else
      {
        sub_188A3F704(&v63, &v69, &qword_1EA93A4A0, &unk_18A65E320);
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_188A3F5FC(&v69, &qword_1EA93A4A0, &unk_18A65E320);
        if (!Strong)
        {
          goto LABEL_33;
        }
      }

      v45 = sub_188B622F4(a4);

      if (v45)
      {
        v46 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
        swift_beginAccess();
        sub_188A82098(&v45[v46], v9, type metadata accessor for GlassState);

        v47 = 0;
        goto LABEL_34;
      }

LABEL_33:
      v47 = 1;
LABEL_34:
      v48 = type metadata accessor for GlassState(0);
      (*(*(v48 - 8) + 56))(v9, v47, 1, v48);
      sub_189021E18(v9);
      sub_188B602EC(v73, &v63);
      if (BYTE8(v63))
      {
        v49 = v63;
      }

      else
      {
        sub_188A3F704(&v63, &v72, &qword_1EA93A4A0, &unk_18A65E320);
        v49 = swift_unknownObjectWeakLoadStrong();
        sub_188A3F5FC(&v72, &qword_1EA93A4A0, &unk_18A65E320);
        if (!v49)
        {
LABEL_40:
          v63 = 0u;
          v64 = 0u;
          sub_188B655D4(&v63, 0x70756F7267, 0xE500000000000000);
          sub_188B602EC(v73, &v63);
          if (BYTE8(v63) == 1)
          {
            v52 = v63;
            v53 = objc_opt_self();
            if ([v53 _isInAnimationBlockWithAnimationsEnabled])
            {
              v54 = swift_allocObject();
              *(v54 + 16) = v52;
              *&v65 = sub_18902C28C;
              *(&v65 + 1) = v54;
              *&v63 = MEMORY[0x1E69E9820];
              *(&v63 + 1) = 1107296256;
              *&v64 = sub_188ABD010;
              *(&v64 + 1) = &block_descriptor_126;
              v55 = _Block_copy(&v63);
              v56 = v52;

              [v53 _addCompletion_];

              _Block_release(v55);
            }

            else
            {
              [v52 removeFromSuperview];
            }
          }

          else
          {
            sub_188B602B0(&v63);
          }

          v57 = *a2;
          if (*(*a2 + 16))
          {
            v58 = sub_188B0944C(0xD00000000000001BLL, 0x800000018A69FD40);
            if (v59)
            {
              sub_188A55598(*(v57 + 56) + 32 * v58, &v63);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A560, &qword_18A65E398);
              if (swift_dynamicCast())
              {
                [a4 unregisterForTraitChanges_];
                v63 = 0u;
                v64 = 0u;
                sub_188B655D4(&v63, 0xD00000000000001BLL, 0x800000018A69FD40);
                swift_unknownObjectRelease();
              }
            }
          }

          sub_188A828FC(v13, type metadata accessor for _Glass);
          sub_188B602B0(v73);
          goto LABEL_50;
        }
      }

      v50 = sub_188B622F4(a4);
      if (v50)
      {
        v51 = v50;
        sub_18905DA8C(a4, v61 & 1);
      }

      goto LABEL_40;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  os_unfair_lock_unlock(*(v10 + 16));
  __break(1u);
}

void sub_1890279C4(void *a1, uint64_t *a2, int a3, void *a4)
{
  v62 = a3;
  v63 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A490, &qword_18A65E310);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v61[-v7];
  v9 = type metadata accessor for _Glass(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10, &qword_18A6526E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v61[-v17];
  v76[3] = sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
  v76[4] = &protocol witness table for UIColor;
  v76[0] = a1;
  v19 = a1;
  if (![a4 _isBackgroundSuppressed])
  {
    goto LABEL_8;
  }

  v20 = [(UIView *)a4 _typedStorage];
  sub_188A6852C(&v65);

  v64[2] = v67;
  v64[3] = v68;
  v64[4] = v69;
  v64[5] = v70;
  v64[0] = v65;
  v64[1] = v66;
  if (!*(&v66 + 1))
  {
    sub_188A3F5FC(v64, &unk_1EA933EC0, &qword_18A65E090);
    v71 = 0u;
    v72 = 0u;
    v73 = 0;
    goto LABEL_6;
  }

  sub_188A53994(v64, &v71);
  sub_188ACE668(v64);
  if (!*(&v72 + 1))
  {
LABEL_6:
    sub_188A3F5FC(&v71, &unk_1EA93C9A0, qword_18A6513A0);
    (*(v10 + 56))(v18, 1, 1, v9);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
  v21 = swift_dynamicCast();
  (*(v10 + 56))(v18, v21 ^ 1u, 1, v9);
LABEL_7:
  v22 = *(v10 + 48);
  v10 += 48;
  v23 = v22(v18, 1, v9);
  sub_188A3F5FC(v18, &unk_1EA93BA10, &qword_18A6526E0);
  if (v23 || (v45 = [a4 _window]) == 0)
  {
LABEL_8:
    sub_188B7064C(&_s18FlexInteractionKeyVN, &qword_1EA93A4F8, &unk_18A65E388);
    goto LABEL_9;
  }

LABEL_9:
  sub_188A53994(v76, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
  if (swift_dynamicCast())
  {
    v24 = sub_189021970();
    if (v24)
    {
      v25 = v24;
      [v24 removeFromSuperview];
    }

    v26 = [(UIView *)a4 _traitOverrides];
    v27 = [(_UITraitOverrides *)v26 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    inited = swift_initStackObject();
    *(inited + 16) = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(inited + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = [(_UITraitOverrides *)*(inited + 16) _swiftImplCopy];
      v31 = swift_allocObject();
      *(v31 + 16) = v30;

      inited = v31;
    }

    v32 = qword_1ED491B40;
    v33 = v30;
    if (v32 != -1)
    {
      swift_once();
    }

    if (qword_1ED491AF0 != -1)
    {
      swift_once();
    }

    v34 = off_1ED491B48;
    os_unfair_lock_lock(*(off_1ED491B48 + 2));
    v35 = sub_188AF5144(&type metadata for _GlassGroupTraitDefinition, 0, 0);
    os_unfair_lock_unlock(v34[2]);
    [(_UITraitOverrides *)v33 _removeTraitToken:v35];

    swift_unknownObjectRelease();
    v36 = [(UIView *)a4 _traitOverrides];
    v37 = *(inited + 16);

    [(_UITraitOverrides *)v36 _replaceWithOverrides:v37];

    v65 = 0u;
    v66 = 0u;
    sub_188B655D4(&v65, 0x70756F7267, 0xE500000000000000);
LABEL_50:
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    if (swift_dynamicCast())
    {
      v43 = v65;
      v44 = [v65 colorWithAlphaComponent_];
      [a4 setBackgroundColor_];
    }

    else
    {
      sub_188A34624(0, &unk_1EA931120, off_1E70EADD8);
      if (swift_dynamicCast())
      {

        [a4 mt:0 setBackgroundEffects:?];
      }
    }

    goto LABEL_50;
  }

  sub_18902C0CC(v15, v12, type metadata accessor for _Glass);
  v38 = v63;
  v39 = *v63;
  if (*(*v63 + 16))
  {
    v40 = sub_188B0944C(0x70756F7267, 0xE500000000000000);
    if (v41)
    {
      sub_188A55598(*(v39 + 56) + 32 * v40, &v71);
      sub_188A55538(&v71, &v65);
      swift_dynamicCast();
      sub_188B602EC(v75, &v65);
      if (BYTE8(v65))
      {
        Strong = v65;
      }

      else
      {
        sub_188A3F704(&v65, &v71, &qword_1EA93A4A0, &unk_18A65E320);
        Strong = swift_unknownObjectWeakLoadStrong();
        v38 = v63;
        sub_188A3F5FC(&v71, &qword_1EA93A4A0, &unk_18A65E320);
        if (!Strong)
        {
          goto LABEL_33;
        }
      }

      v46 = sub_188B622F4(a4);

      if (v46)
      {
        v47 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
        swift_beginAccess();
        sub_188A82098(&v46[v47], v8, type metadata accessor for GlassState);

        v48 = 0;
        goto LABEL_34;
      }

LABEL_33:
      v48 = 1;
LABEL_34:
      v49 = type metadata accessor for GlassState(0);
      (*(*(v49 - 8) + 56))(v8, v48, 1, v49);
      sub_189021E18(v8);
      sub_188B602EC(v75, &v65);
      if (BYTE8(v65))
      {
        v50 = v65;
      }

      else
      {
        sub_188A3F704(&v65, &v74, &qword_1EA93A4A0, &unk_18A65E320);
        v50 = swift_unknownObjectWeakLoadStrong();
        sub_188A3F5FC(&v74, &qword_1EA93A4A0, &unk_18A65E320);
        if (!v50)
        {
LABEL_40:
          v65 = 0u;
          v66 = 0u;
          sub_188B655D4(&v65, 0x70756F7267, 0xE500000000000000);
          sub_188B602EC(v75, &v65);
          if (BYTE8(v65) == 1)
          {
            v53 = v65;
            v54 = objc_opt_self();
            if ([v54 _isInAnimationBlockWithAnimationsEnabled])
            {
              v55 = swift_allocObject();
              *(v55 + 16) = v53;
              *&v67 = sub_18902C418;
              *(&v67 + 1) = v55;
              *&v65 = MEMORY[0x1E69E9820];
              *(&v65 + 1) = 1107296256;
              *&v66 = sub_188ABD010;
              *(&v66 + 1) = &block_descriptor_148_0;
              v56 = _Block_copy(&v65);
              v57 = v53;

              [v54 _addCompletion_];

              _Block_release(v56);
            }

            else
            {
              [v53 removeFromSuperview];
            }
          }

          else
          {
            sub_188B602B0(&v65);
          }

          v58 = *v38;
          if (*(*v38 + 16))
          {
            v59 = sub_188B0944C(0xD00000000000001BLL, 0x800000018A69FD40);
            if (v60)
            {
              sub_188A55598(*(v58 + 56) + 32 * v59, &v65);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A560, &qword_18A65E398);
              if (swift_dynamicCast())
              {
                [a4 unregisterForTraitChanges_];
                v65 = 0u;
                v66 = 0u;
                sub_188B655D4(&v65, 0xD00000000000001BLL, 0x800000018A69FD40);
                swift_unknownObjectRelease();
              }
            }
          }

          sub_188A828FC(v12, type metadata accessor for _Glass);
          sub_188B602B0(v75);
          goto LABEL_50;
        }
      }

      v51 = sub_188B622F4(a4);
      if (v51)
      {
        v52 = v51;
        sub_18905DA8C(a4, v62 & 1);
      }

      goto LABEL_40;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  os_unfair_lock_unlock(*(v10 + 16));
  __break(1u);
}

void sub_189028440(uint64_t a1, uint64_t *a2, int a3, void *a4, uint64_t a5, uint64_t a6)
{
  v67 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A490, &qword_18A65E310);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v68 = &v66[-v12];
  v13 = type metadata accessor for _Glass(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v66[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10, &qword_18A6526E0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v66[-v20];
  v82[3] = a5;
  v82[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v82);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
  if (![a4 _isBackgroundSuppressed])
  {
    goto LABEL_8;
  }

  v23 = [(UIView *)a4 _typedStorage];
  sub_188A6852C(&v71);

  v70[2] = v73;
  v70[3] = v74;
  v70[4] = v75;
  v70[5] = v76;
  v70[0] = v71;
  v70[1] = v72;
  if (!*(&v72 + 1))
  {
    sub_188A3F5FC(v70, &unk_1EA933EC0, &qword_18A65E090);
    v77 = 0u;
    v78 = 0u;
    v79 = 0;
    goto LABEL_6;
  }

  sub_188A53994(v70, &v77);
  sub_188ACE668(v70);
  if (!*(&v78 + 1))
  {
LABEL_6:
    sub_188A3F5FC(&v77, &unk_1EA93C9A0, qword_18A6513A0);
    (*(v14 + 56))(v21, 1, 1, v13);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
  v24 = swift_dynamicCast();
  (*(v14 + 56))(v21, v24 ^ 1u, 1, v13);
LABEL_7:
  v25 = *(v14 + 48);
  v14 += 48;
  v26 = v25(v21, 1, v13);
  sub_188A3F5FC(v21, &unk_1EA93BA10, &qword_18A6526E0);
  if (v26 || (v50 = [a4 _window]) == 0)
  {
LABEL_8:
    sub_188B7064C(&_s18FlexInteractionKeyVN, &qword_1EA93A4F8, &unk_18A65E388);
    goto LABEL_9;
  }

LABEL_9:
  sub_188A53994(v82, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
  v27 = a2;
  if (swift_dynamicCast())
  {
    v28 = sub_189021970();
    if (v28)
    {
      v29 = v28;
      [v28 removeFromSuperview];
    }

    v30 = [(UIView *)a4 _traitOverrides];
    v31 = [(_UITraitOverrides *)v30 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    inited = swift_initStackObject();
    *(inited + 16) = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(inited + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = [(_UITraitOverrides *)*(inited + 16) _swiftImplCopy];
      v35 = swift_allocObject();
      *(v35 + 16) = v34;

      inited = v35;
    }

    v36 = qword_1ED491B40;
    v37 = v34;
    if (v36 != -1)
    {
      swift_once();
    }

    if (qword_1ED491AF0 != -1)
    {
      swift_once();
    }

    v38 = off_1ED491B48;
    os_unfair_lock_lock(*(off_1ED491B48 + 2));
    v39 = sub_188AF5144(&type metadata for _GlassGroupTraitDefinition, 0, 0);
    os_unfair_lock_unlock(v38[2]);
    [(_UITraitOverrides *)v37 _removeTraitToken:v39];

    swift_unknownObjectRelease();
    v40 = [(UIView *)a4 _traitOverrides];
    v41 = *(inited + 16);

    [(_UITraitOverrides *)v40 _replaceWithOverrides:v41];

    v71 = 0u;
    v72 = 0u;
    sub_188B655D4(&v71, 0x70756F7267, 0xE500000000000000);
LABEL_50:
    __swift_destroy_boxed_opaque_existential_0Tm(v70);
    __swift_destroy_boxed_opaque_existential_0Tm(v82);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
    if (swift_dynamicCast())
    {
      v48 = v71;
      v49 = [v71 colorWithAlphaComponent_];
      [a4 setBackgroundColor_];
    }

    else
    {
      sub_188A34624(0, &unk_1EA931120, off_1E70EADD8);
      if (swift_dynamicCast())
      {

        [a4 mt:0 setBackgroundEffects:?];
      }
    }

    goto LABEL_50;
  }

  v42 = v69;
  sub_18902C0CC(v18, v69, type metadata accessor for _Glass);
  v43 = *v27;
  if (*(*v27 + 16))
  {
    v44 = sub_188B0944C(0x70756F7267, 0xE500000000000000);
    if (v45)
    {
      sub_188A55598(*(v43 + 56) + 32 * v44, &v77);
      sub_188A55538(&v77, &v71);
      swift_dynamicCast();
      sub_188B602EC(v81, &v71);
      if (BYTE8(v71))
      {
        Strong = v71;
        v47 = v68;
      }

      else
      {
        sub_188A3F704(&v71, &v77, &qword_1EA93A4A0, &unk_18A65E320);
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_188A3F5FC(&v77, &qword_1EA93A4A0, &unk_18A65E320);
        v47 = v68;
        if (!Strong)
        {
          goto LABEL_33;
        }
      }

      v51 = sub_188B622F4(a4);

      if (v51)
      {
        v52 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
        swift_beginAccess();
        sub_188A82098(&v51[v52], v47, type metadata accessor for GlassState);

        v53 = 0;
        goto LABEL_34;
      }

LABEL_33:
      v53 = 1;
LABEL_34:
      v54 = type metadata accessor for GlassState(0);
      (*(*(v54 - 8) + 56))(v47, v53, 1, v54);
      sub_189021E18(v47);
      sub_188B602EC(v81, &v71);
      if (BYTE8(v71))
      {
        v55 = v71;
      }

      else
      {
        sub_188A3F704(&v71, &v80, &qword_1EA93A4A0, &unk_18A65E320);
        v55 = swift_unknownObjectWeakLoadStrong();
        sub_188A3F5FC(&v80, &qword_1EA93A4A0, &unk_18A65E320);
        if (!v55)
        {
LABEL_40:
          v71 = 0u;
          v72 = 0u;
          sub_188B655D4(&v71, 0x70756F7267, 0xE500000000000000);
          sub_188B602EC(v81, &v71);
          if (BYTE8(v71) == 1)
          {
            v58 = v71;
            v59 = objc_opt_self();
            if ([v59 _isInAnimationBlockWithAnimationsEnabled])
            {
              v60 = swift_allocObject();
              *(v60 + 16) = v58;
              *&v73 = sub_18902C418;
              *(&v73 + 1) = v60;
              *&v71 = MEMORY[0x1E69E9820];
              *(&v71 + 1) = 1107296256;
              *&v72 = sub_188ABD010;
              *(&v72 + 1) = &block_descriptor_170_2;
              v61 = _Block_copy(&v71);
              v62 = v58;
              v42 = v69;

              [v59 _addCompletion_];

              _Block_release(v61);
            }

            else
            {
              [v58 removeFromSuperview];
            }
          }

          else
          {
            sub_188B602B0(&v71);
          }

          v63 = *v27;
          if (*(*v27 + 16))
          {
            v64 = sub_188B0944C(0xD00000000000001BLL, 0x800000018A69FD40);
            if (v65)
            {
              sub_188A55598(*(v63 + 56) + 32 * v64, &v71);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A560, &qword_18A65E398);
              if (swift_dynamicCast())
              {
                [a4 unregisterForTraitChanges_];
                v71 = 0u;
                v72 = 0u;
                sub_188B655D4(&v71, 0xD00000000000001BLL, 0x800000018A69FD40);
                swift_unknownObjectRelease();
              }
            }
          }

          sub_188A828FC(v42, type metadata accessor for _Glass);
          sub_188B602B0(v81);
          goto LABEL_50;
        }
      }

      v56 = sub_188B622F4(a4);
      if (v56)
      {
        v57 = v56;
        sub_18905DA8C(a4, v67 & 1);
      }

      goto LABEL_40;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  os_unfair_lock_unlock(v42[2]);
  __break(1u);
}

void sub_189028EFC(void *a1, uint64_t *a2, char a3, void *a4)
{
  v93 = a2;
  v7 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v86 - v11;
  v109[3] = sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
  v109[4] = &protocol witness table for UIColor;
  v109[0] = a1;
  sub_188A53994(v109, v108);
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
  if (!swift_dynamicCast())
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      v51 = a4;
      sub_188A34624(0, &unk_1EA931120, off_1E70EADD8);
      if (swift_dynamicCast())
      {
        v52 = v98;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_18A64B710;
        *(v53 + 32) = v52;
        v54 = v52;
        v55 = sub_18A4A7518();

        [v51 mt:v55 setBackgroundEffects:?];
      }

      else if (swift_dynamicCast())
      {
        v60 = v96;
        v61 = [a4 backgroundColor];
        if (v61)
        {

          v62 = 0;
          v63 = 0;
        }

        else
        {
          v81 = objc_opt_self();
          v63 = swift_allocObject();
          *(v63 + 16) = a4;
          *(v63 + 24) = v60;
          v82 = swift_allocObject();
          v62 = sub_18902C29C;
          *(v82 + 16) = sub_18902C29C;
          *(v82 + 24) = v63;
          v101 = sub_188E3FE50;
          v102 = v82;
          *&v98 = MEMORY[0x1E69E9820];
          *(&v98 + 1) = 1107296256;
          v99 = sub_188A4A968;
          ObjectType = &block_descriptor_136_0;
          v83 = _Block_copy(&v98);
          v84 = v51;
          v85 = v60;

          [v81 performWithoutAnimation_];
          _Block_release(v83);
          LOBYTE(v81) = swift_isEscapingClosureAtFileLocation();

          if (v81)
          {
            goto LABEL_58;
          }
        }

        [v51 setBackgroundColor_];

        goto LABEL_50;
      }

LABEL_49:
      v62 = 0;
      v63 = 0;
LABEL_50:
      __swift_destroy_boxed_opaque_existential_0Tm(v108);
      sub_188A55B8C(v62, v63);
      __swift_destroy_boxed_opaque_existential_0Tm(v109);
      return;
    }

    sub_18902C0CC(v12, v9, type metadata accessor for _Glass);
    v32 = *v93;
    if (*(*v93 + 16) && (v33 = sub_188B0944C(0x70756F7267, 0xE500000000000000), (v34 & 1) != 0) && (sub_188A55598(*(v32 + 56) + 32 * v33, &v98), (swift_dynamicCast() & 1) != 0))
    {
      if (v97 != 255)
      {
        sub_188B602EC(&v96, &v98);
        if (BYTE8(v98))
        {
          Strong = v98;
          sub_188B602B0(&v96);
LABEL_43:
          v72 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
          v73 = swift_beginAccess();
          v74 = *&Strong[v72];
          MEMORY[0x1EEE9AC00](v73);
          *(&v86 - 2) = v9;

          v76 = sub_188B656C4(sub_188B62608, v75, (&v86 - 8), v74);

          v77 = a3 & 1;
          if (v76)
          {
            sub_18905D7C8(a4, v9, v77);
            [v76 setNeedsLayout];
          }

          else
          {
            sub_18905CB84(v9, a4, v77);
            v76 = v78;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480, &unk_18A653360);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18A64BFB0;
          *(inited + 32) = &type metadata for _GlassGroupTraitDefinition;
          *(inited + 40) = &off_1EE43CE68;
          ObjectType = sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
          *&v98 = a4;
          a4;
          v80 = UIView.registerForTraitChanges(_:target:action:)();
          swift_setDeallocating();
          __swift_destroy_boxed_opaque_existential_0Tm(&v98);
          ObjectType = swift_getObjectType();
          *&v98 = v80;
          swift_unknownObjectRetain();
          sub_188B655D4(&v98, 0xD00000000000001BLL, 0x800000018A69FD40);
          if (v9[v7[13]] == 1)
          {
            sub_189021FDC(v9);
          }

          swift_unknownObjectRelease();
          sub_188A828FC(v9, type metadata accessor for _Glass);
          goto LABEL_49;
        }

        sub_188A3F704(&v98, v94, &qword_1EA93A4A0, &unk_18A65E320);
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_188A3F5FC(v94, &qword_1EA93A4A0, &unk_18A65E320);
        sub_188B602B0(&v96);
        if (Strong)
        {
          goto LABEL_43;
        }

LABEL_29:
        v56 = [a4 traitCollection];
        v57 = sub_188B657E8();
        if (v57)
        {
          v58 = v57;
          Strong = swift_unknownObjectWeakLoadStrong();

          if (!Strong)
          {
LABEL_38:
            type metadata accessor for _GlassGroupView();
            v64 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            v65 = v64;
            v66 = v9[v7[9]];
            *(v64 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_usesForeground) = v66;
            if ((v66 & 1) == 0)
            {
              v67 = [v64 layer];
              [v67 setZPosition_];
            }

            [v65 setUserInteractionEnabled_];
            v68 = [objc_allocWithZone(_UIViewGlassGroup) init];
            ObjectType = &type metadata for _GlassGroup;
            v101 = &protocol witness table for _GlassGroup;
            LOBYTE(v98) = v66;
            BYTE1(v98) = 1;
            *(&v98 + 1) = 0;
            LOWORD(v99) = 1;
            v69 = OBJC_IVAR____UIViewGlassGroup__underlyingMaterial;
            swift_beginAccess();
            __swift_destroy_boxed_opaque_existential_0Tm(&v68[v69]);
            sub_188A5EBAC(&v98, &v68[v69]);
            swift_endAccess();
            LOBYTE(v69) = [a4 _addGlassGroupView_material_];

            if ((v69 & 1) == 0)
            {
              v70 = [a4 layer];
              [(UIView *)a4 _backing_insertPrivateSubview:v65 aboveLayer:v70];
            }

            ObjectType = &_s15_GlassGroupTypeON;
            v71 = swift_allocObject();
            *&v98 = v71;
            *(v71 + 16) = v65;
            *(v71 + 24) = 1;
            Strong = v65;
            sub_188B655D4(&v98, 0x70756F7267, 0xE500000000000000);
            goto LABEL_43;
          }

          if (v9[v7[7]] == 1)
          {
            ObjectType = &_s15_GlassGroupTypeON;
            v59 = swift_allocObject();
            *&v98 = v59;
            swift_unknownObjectWeakInit();
            swift_unknownObjectWeakAssign();
            *(v59 + 24) = 0;
            sub_188B655D4(&v98, 0x70756F7267, 0xE500000000000000);
            goto LABEL_43;
          }

          v56 = Strong;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v96 = 0;
      v97 = -1;
    }

    sub_188A3F5FC(&v96, &qword_1EA93A498, &qword_18A65E318);
    goto LABEL_29;
  }

  v14 = v103;
  v15 = v104;
  v16 = v105;
  v17 = v106;
  v18 = v107;
  type metadata accessor for _GlassGroupView();
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19[OBJC_IVAR____TtC5UIKit15_GlassGroupView_usesForeground] = v14;
  v89 = v18;
  v19[OBJC_IVAR____TtC5UIKit15_GlassGroupView_applySmoothnessViaGaussianRadius] = v18;
  v19[OBJC_IVAR____TtC5UIKit15_GlassGroupView_addBackdropCaptureGroup] = v15;
  v20 = v19;
  [v20 setUserInteractionEnabled_];
  v21 = &v20[OBJC_IVAR____TtC5UIKit15_GlassGroupView_smoothness];
  v91 = v16;
  *v21 = v16;
  v90 = v17;
  v21[8] = v17;
  v22 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  swift_beginAccess();
  v92 = v20;
  v23 = *&v20[v22];
  if (v23 >> 62)
  {
    v24 = sub_18A4A7F68();
    if (v24)
    {
      goto LABEL_4;
    }

LABEL_20:
    v36 = v92;
    v37 = [(UIView *)a4 _traitOverrides];
    v38 = [(_UITraitOverrides *)v37 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    v39 = swift_initStackObject();
    *(v39 + 16) = v38;
    *&v98 = v39;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A570, &qword_18A65E3A8);
    v41 = objc_allocWithZone(v40);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v95.receiver = v41;
    v95.super_class = v40;
    v42 = objc_msgSendSuper2(&v95, sel_init);
    sub_188AF61EC(v42);

    v43 = v98;
    v44 = [(UIView *)a4 _traitOverrides];
    v45 = *(v43 + 16);

    [(_UITraitOverrides *)v44 _replaceWithOverrides:v45];

    v46 = v36;
    if ((v14 & 1) == 0)
    {
      v46 = [v36 layer];

      [v46 setZPosition_];
    }

    v47 = [objc_allocWithZone(_UIViewGlassGroup) init];
    ObjectType = &type metadata for _GlassGroup;
    v101 = &protocol witness table for _GlassGroup;
    LOBYTE(v98) = v14;
    BYTE1(v98) = v15;
    *(&v98 + 1) = v91;
    LOBYTE(v99) = v90;
    BYTE1(v99) = v89;
    v48 = OBJC_IVAR____UIViewGlassGroup__underlyingMaterial;
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0Tm(&v47[v48]);
    sub_188A5EBAC(&v98, &v47[v48]);
    swift_endAccess();
    LOBYTE(v48) = [a4 _addGlassGroupView_material_];

    if ((v48 & 1) == 0)
    {
      v49 = [a4 layer];
      [(UIView *)a4 _backing_insertPrivateSubview:v36 aboveLayer:v49];
    }

    ObjectType = &_s15_GlassGroupTypeON;
    v50 = swift_allocObject();
    *&v98 = v50;
    *(v50 + 16) = v36;
    *(v50 + 24) = 1;
    sub_188B655D4(&v98, 0x70756F7267, 0xE500000000000000);
    goto LABEL_49;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_20;
  }

LABEL_4:
  v25 = objc_opt_self();
  if (v24 >= 1)
  {
    v26 = v25;
    v86 = v15;
    v87 = v14;
    v88 = a4;

    for (i = 0; i != v24; ++i)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v28 = sub_188E49160(i, v23);
      }

      else
      {
        v28 = *(v23 + 8 * i + 32);
      }

      v29 = v28;
      v30 = v21[8];
      v31 = &v28[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_smoothnessOverride];
      *v31 = *v21;
      v31[8] = v30;
      [v28 setNeedsLayout];
      if ([v26 _isInAnimationBlockWithAnimationsEnabled])
      {
        [v29 layoutIfNeeded];
      }
    }

    a4 = v88;
    LOBYTE(v15) = v86;
    LOBYTE(v14) = v87;
    goto LABEL_20;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_189029C3C(uint64_t a1, uint64_t *a2, char a3, void *a4)
{
  v8 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v89[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v89[-v12];
  v113[3] = v14;
  v113[4] = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v113);
  sub_188A82098(a1, boxed_opaque_existential_0, type metadata accessor for _Glass);
  sub_188A53994(v113, v112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
  if (!swift_dynamicCast())
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      v54 = a4;
      sub_188A34624(0, &unk_1EA931120, off_1E70EADD8);
      if (swift_dynamicCast())
      {
        v55 = v102;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_18A64B710;
        *(v56 + 32) = v55;
        v57 = v55;
        v58 = sub_18A4A7518();

        [v54 mt:v58 setBackgroundEffects:?];
      }

      else
      {
        sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
        if (swift_dynamicCast())
        {
          v63 = v100;
          v64 = [a4 backgroundColor];
          if (v64)
          {

            v65 = 0;
            v66 = 0;
          }

          else
          {
            v84 = objc_opt_self();
            v66 = swift_allocObject();
            *(v66 + 16) = a4;
            *(v66 + 24) = v63;
            v85 = swift_allocObject();
            v65 = sub_18902C440;
            *(v85 + 16) = sub_18902C440;
            *(v85 + 24) = v66;
            v105 = sub_188E3FE50;
            v106 = v85;
            *&v102 = MEMORY[0x1E69E9820];
            *(&v102 + 1) = 1107296256;
            v103 = sub_188A4A968;
            ObjectType = &block_descriptor_159_1;
            v86 = _Block_copy(&v102);
            v87 = v54;
            v88 = v63;

            [v84 performWithoutAnimation_];
            _Block_release(v86);
            LOBYTE(v84) = swift_isEscapingClosureAtFileLocation();

            if (v84)
            {
              goto LABEL_58;
            }
          }

          [v54 setBackgroundColor_];

          goto LABEL_50;
        }
      }

LABEL_49:
      v65 = 0;
      v66 = 0;
LABEL_50:
      __swift_destroy_boxed_opaque_existential_0Tm(v112);
      sub_188A55B8C(v65, v66);
      __swift_destroy_boxed_opaque_existential_0Tm(v113);
      return;
    }

    sub_18902C0CC(v13, v10, type metadata accessor for _Glass);
    v34 = *a2;
    v35 = *(*a2 + 16);
    v97 = a2;
    if (v35 && (v36 = sub_188B0944C(0x70756F7267, 0xE500000000000000), (v37 & 1) != 0) && (sub_188A55598(*(v34 + 56) + 32 * v36, &v102), (swift_dynamicCast() & 1) != 0))
    {
      if (v101 != 255)
      {
        sub_188B602EC(&v100, &v102);
        if (BYTE8(v102))
        {
          Strong = v102;
          sub_188B602B0(&v100);
LABEL_43:
          v75 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
          v76 = swift_beginAccess();
          v77 = *&Strong[v75];
          MEMORY[0x1EEE9AC00](v76);
          *&v89[-16] = v10;

          v79 = sub_188B656C4(sub_18902C420, v78, &v89[-32], v77);

          v80 = a3 & 1;
          if (v79)
          {
            sub_18905D7C8(a4, v10, v80);
            [v79 setNeedsLayout];
          }

          else
          {
            sub_18905CB84(v10, a4, v80);
            v79 = v81;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480, &unk_18A653360);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18A64BFB0;
          *(inited + 32) = &type metadata for _GlassGroupTraitDefinition;
          *(inited + 40) = &off_1EE43CE68;
          ObjectType = sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
          *&v102 = a4;
          a4;
          v83 = UIView.registerForTraitChanges(_:target:action:)();
          swift_setDeallocating();
          __swift_destroy_boxed_opaque_existential_0Tm(&v102);
          ObjectType = swift_getObjectType();
          *&v102 = v83;
          swift_unknownObjectRetain();
          sub_188B655D4(&v102, 0xD00000000000001BLL, 0x800000018A69FD40);
          if (v10[v8[13]] == 1)
          {
            sub_189021FDC(v10);
          }

          swift_unknownObjectRelease();
          sub_188A828FC(v10, type metadata accessor for _Glass);
          goto LABEL_49;
        }

        sub_188A3F704(&v102, v98, &qword_1EA93A4A0, &unk_18A65E320);
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_188A3F5FC(v98, &qword_1EA93A4A0, &unk_18A65E320);
        sub_188B602B0(&v100);
        if (Strong)
        {
          goto LABEL_43;
        }

LABEL_29:
        v59 = [a4 traitCollection];
        v60 = sub_188B657E8();
        if (v60)
        {
          v61 = v60;
          Strong = swift_unknownObjectWeakLoadStrong();

          if (!Strong)
          {
LABEL_38:
            type metadata accessor for _GlassGroupView();
            v67 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            v68 = v67;
            v69 = v10[v8[9]];
            *(v67 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_usesForeground) = v69;
            if ((v69 & 1) == 0)
            {
              v70 = [v67 layer];
              [v70 setZPosition_];
            }

            [v68 setUserInteractionEnabled_];
            v71 = [objc_allocWithZone(_UIViewGlassGroup) init];
            ObjectType = &type metadata for _GlassGroup;
            v105 = &protocol witness table for _GlassGroup;
            LOBYTE(v102) = v69;
            BYTE1(v102) = 1;
            *(&v102 + 1) = 0;
            LOWORD(v103) = 1;
            v72 = OBJC_IVAR____UIViewGlassGroup__underlyingMaterial;
            swift_beginAccess();
            __swift_destroy_boxed_opaque_existential_0Tm(&v71[v72]);
            sub_188A5EBAC(&v102, &v71[v72]);
            swift_endAccess();
            LOBYTE(v72) = [a4 _addGlassGroupView_material_];

            if ((v72 & 1) == 0)
            {
              v73 = [a4 layer];
              [(UIView *)a4 _backing_insertPrivateSubview:v68 aboveLayer:v73];
            }

            ObjectType = &_s15_GlassGroupTypeON;
            v74 = swift_allocObject();
            *&v102 = v74;
            *(v74 + 16) = v68;
            *(v74 + 24) = 1;
            Strong = v68;
            sub_188B655D4(&v102, 0x70756F7267, 0xE500000000000000);
            goto LABEL_43;
          }

          if (v10[v8[7]] == 1)
          {
            ObjectType = &_s15_GlassGroupTypeON;
            v62 = swift_allocObject();
            *&v102 = v62;
            swift_unknownObjectWeakInit();
            swift_unknownObjectWeakAssign();
            *(v62 + 24) = 0;
            sub_188B655D4(&v102, 0x70756F7267, 0xE500000000000000);
            goto LABEL_43;
          }

          v59 = Strong;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v100 = 0;
      v101 = -1;
    }

    sub_188A3F5FC(&v100, &qword_1EA93A498, &qword_18A65E318);
    goto LABEL_29;
  }

  v16 = v107;
  v17 = v108;
  v18 = v109;
  v19 = v110;
  v20 = v111;
  type metadata accessor for _GlassGroupView();
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21[OBJC_IVAR____TtC5UIKit15_GlassGroupView_usesForeground] = v16;
  v92 = v20;
  v21[OBJC_IVAR____TtC5UIKit15_GlassGroupView_applySmoothnessViaGaussianRadius] = v20;
  v95 = v17;
  v21[OBJC_IVAR____TtC5UIKit15_GlassGroupView_addBackdropCaptureGroup] = v17;
  v22 = v21;
  [v22 setUserInteractionEnabled_];
  v23 = &v22[OBJC_IVAR____TtC5UIKit15_GlassGroupView_smoothness];
  v94 = v18;
  *v23 = v18;
  v93 = v19;
  v23[8] = v19;
  v24 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  swift_beginAccess();
  v96 = v22;
  v25 = *&v22[v24];
  if (v25 >> 62)
  {
    v26 = sub_18A4A7F68();
    if (v26)
    {
      goto LABEL_4;
    }

LABEL_20:
    v39 = v96;
    v40 = [(UIView *)a4 _traitOverrides];
    v41 = [(_UITraitOverrides *)v40 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    v42 = swift_initStackObject();
    *(v42 + 16) = v41;
    *&v102 = v42;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A570, &qword_18A65E3A8);
    v44 = objc_allocWithZone(v43);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v99.receiver = v44;
    v99.super_class = v43;
    v45 = objc_msgSendSuper2(&v99, sel_init);
    sub_188AF61EC(v45);

    v46 = v102;
    v47 = [(UIView *)a4 _traitOverrides];
    v48 = *(v46 + 16);

    [(_UITraitOverrides *)v47 _replaceWithOverrides:v48];

    v49 = v39;
    if ((v16 & 1) == 0)
    {
      v49 = [v39 layer];

      [v49 setZPosition_];
    }

    v50 = [objc_allocWithZone(_UIViewGlassGroup) init];
    ObjectType = &type metadata for _GlassGroup;
    v105 = &protocol witness table for _GlassGroup;
    LOBYTE(v102) = v16;
    BYTE1(v102) = v95;
    *(&v102 + 1) = v94;
    LOBYTE(v103) = v93;
    BYTE1(v103) = v92;
    v51 = OBJC_IVAR____UIViewGlassGroup__underlyingMaterial;
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0Tm(&v50[v51]);
    sub_188A5EBAC(&v102, &v50[v51]);
    swift_endAccess();
    LOBYTE(v51) = [a4 _addGlassGroupView_material_];

    if ((v51 & 1) == 0)
    {
      v52 = [a4 layer];
      [(UIView *)a4 _backing_insertPrivateSubview:v39 aboveLayer:v52];
    }

    ObjectType = &_s15_GlassGroupTypeON;
    v53 = swift_allocObject();
    *&v102 = v53;
    *(v53 + 16) = v39;
    *(v53 + 24) = 1;
    sub_188B655D4(&v102, 0x70756F7267, 0xE500000000000000);
    goto LABEL_49;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_20;
  }

LABEL_4:
  v27 = objc_opt_self();
  if (v26 >= 1)
  {
    v28 = v27;
    v90 = v16;
    v97 = a2;
    v91 = a4;

    for (i = 0; i != v26; ++i)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v30 = sub_188E49160(i, v25);
      }

      else
      {
        v30 = *(v25 + 8 * i + 32);
      }

      v31 = v30;
      v32 = v23[8];
      v33 = &v30[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_smoothnessOverride];
      *v33 = *v23;
      v33[8] = v32;
      [v30 setNeedsLayout];
      if ([v28 _isInAnimationBlockWithAnimationsEnabled])
      {
        [v31 layoutIfNeeded];
      }
    }

    a4 = v91;
    LOBYTE(v16) = v90;
    goto LABEL_20;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_18902A9A8(uint64_t a1, uint64_t *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v98 = a2;
  v11 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v90[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v90[-v15];
  v114[3] = a5;
  v114[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v114);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
  sub_188A53994(v114, v113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
  if (!swift_dynamicCast())
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      v55 = a4;
      sub_188A34624(0, &unk_1EA931120, off_1E70EADD8);
      if (swift_dynamicCast())
      {
        v56 = v103;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_18A64B710;
        *(v57 + 32) = v56;
        v58 = v56;
        v59 = sub_18A4A7518();

        [v55 mt:v59 setBackgroundEffects:?];
      }

      else
      {
        sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
        if (swift_dynamicCast())
        {
          v64 = v101;
          v65 = [a4 backgroundColor];
          if (v65)
          {

            v66 = 0;
            v67 = 0;
          }

          else
          {
            v85 = objc_opt_self();
            v67 = swift_allocObject();
            *(v67 + 16) = a4;
            *(v67 + 24) = v64;
            v86 = swift_allocObject();
            v66 = sub_18902C440;
            *(v86 + 16) = sub_18902C440;
            *(v86 + 24) = v67;
            v106 = sub_188E3FE50;
            v107 = v86;
            *&v103 = MEMORY[0x1E69E9820];
            *(&v103 + 1) = 1107296256;
            v104 = sub_188A4A968;
            ObjectType = &block_descriptor_181;
            v87 = _Block_copy(&v103);
            v88 = v55;
            v89 = v64;

            [v85 performWithoutAnimation_];
            _Block_release(v87);
            LOBYTE(v85) = swift_isEscapingClosureAtFileLocation();

            if (v85)
            {
              goto LABEL_58;
            }
          }

          [v55 setBackgroundColor_];

          goto LABEL_50;
        }
      }

LABEL_49:
      v66 = 0;
      v67 = 0;
LABEL_50:
      __swift_destroy_boxed_opaque_existential_0Tm(v113);
      sub_188A55B8C(v66, v67);
      __swift_destroy_boxed_opaque_existential_0Tm(v114);
      return;
    }

    sub_18902C0CC(v16, v13, type metadata accessor for _Glass);
    v36 = *v98;
    if (*(*v98 + 16) && (v37 = sub_188B0944C(0x70756F7267, 0xE500000000000000), (v38 & 1) != 0) && (sub_188A55598(*(v36 + 56) + 32 * v37, &v103), (swift_dynamicCast() & 1) != 0))
    {
      if (v102 != 255)
      {
        sub_188B602EC(&v101, &v103);
        if (BYTE8(v103))
        {
          Strong = v103;
          sub_188B602B0(&v101);
LABEL_43:
          v76 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
          v77 = swift_beginAccess();
          v78 = *&Strong[v76];
          MEMORY[0x1EEE9AC00](v77);
          *&v90[-16] = v13;

          v80 = sub_188B656C4(sub_18902C420, v79, &v90[-32], v78);

          v81 = a3 & 1;
          if (v80)
          {
            sub_18905D7C8(a4, v13, v81);
            [v80 setNeedsLayout];
          }

          else
          {
            sub_18905CB84(v13, a4, v81);
            v80 = v82;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480, &unk_18A653360);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18A64BFB0;
          *(inited + 32) = &type metadata for _GlassGroupTraitDefinition;
          *(inited + 40) = &off_1EE43CE68;
          ObjectType = sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
          *&v103 = a4;
          a4;
          v84 = UIView.registerForTraitChanges(_:target:action:)();
          swift_setDeallocating();
          __swift_destroy_boxed_opaque_existential_0Tm(&v103);
          ObjectType = swift_getObjectType();
          *&v103 = v84;
          swift_unknownObjectRetain();
          sub_188B655D4(&v103, 0xD00000000000001BLL, 0x800000018A69FD40);
          if (v13[v11[13]] == 1)
          {
            sub_189021FDC(v13);
          }

          swift_unknownObjectRelease();
          sub_188A828FC(v13, type metadata accessor for _Glass);
          goto LABEL_49;
        }

        sub_188A3F704(&v103, v99, &qword_1EA93A4A0, &unk_18A65E320);
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_188A3F5FC(v99, &qword_1EA93A4A0, &unk_18A65E320);
        sub_188B602B0(&v101);
        if (Strong)
        {
          goto LABEL_43;
        }

LABEL_29:
        v60 = [a4 traitCollection];
        v61 = sub_188B657E8();
        if (v61)
        {
          v62 = v61;
          Strong = swift_unknownObjectWeakLoadStrong();

          if (!Strong)
          {
LABEL_38:
            type metadata accessor for _GlassGroupView();
            v68 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            v69 = v68;
            v70 = v13[v11[9]];
            *(v68 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_usesForeground) = v70;
            if ((v70 & 1) == 0)
            {
              v71 = [v68 layer];
              [v71 setZPosition_];
            }

            [v69 setUserInteractionEnabled_];
            v72 = [objc_allocWithZone(_UIViewGlassGroup) init];
            ObjectType = &type metadata for _GlassGroup;
            v106 = &protocol witness table for _GlassGroup;
            LOBYTE(v103) = v70;
            BYTE1(v103) = 1;
            *(&v103 + 1) = 0;
            LOWORD(v104) = 1;
            v73 = OBJC_IVAR____UIViewGlassGroup__underlyingMaterial;
            swift_beginAccess();
            __swift_destroy_boxed_opaque_existential_0Tm(&v72[v73]);
            sub_188A5EBAC(&v103, &v72[v73]);
            swift_endAccess();
            LOBYTE(v73) = [a4 _addGlassGroupView_material_];

            if ((v73 & 1) == 0)
            {
              v74 = [a4 layer];
              [(UIView *)a4 _backing_insertPrivateSubview:v69 aboveLayer:v74];
            }

            ObjectType = &_s15_GlassGroupTypeON;
            v75 = swift_allocObject();
            *&v103 = v75;
            *(v75 + 16) = v69;
            *(v75 + 24) = 1;
            Strong = v69;
            sub_188B655D4(&v103, 0x70756F7267, 0xE500000000000000);
            goto LABEL_43;
          }

          if (v13[v11[7]] == 1)
          {
            ObjectType = &_s15_GlassGroupTypeON;
            v63 = swift_allocObject();
            *&v103 = v63;
            swift_unknownObjectWeakInit();
            swift_unknownObjectWeakAssign();
            *(v63 + 24) = 0;
            sub_188B655D4(&v103, 0x70756F7267, 0xE500000000000000);
            goto LABEL_43;
          }

          v60 = Strong;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v101 = 0;
      v102 = -1;
    }

    sub_188A3F5FC(&v101, &qword_1EA93A498, &qword_18A65E318);
    goto LABEL_29;
  }

  v18 = v108;
  v19 = v109;
  v20 = v110;
  v21 = v111;
  v22 = v112;
  type metadata accessor for _GlassGroupView();
  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23[OBJC_IVAR____TtC5UIKit15_GlassGroupView_usesForeground] = v18;
  v93 = v22;
  v23[OBJC_IVAR____TtC5UIKit15_GlassGroupView_applySmoothnessViaGaussianRadius] = v22;
  v96 = v19;
  v23[OBJC_IVAR____TtC5UIKit15_GlassGroupView_addBackdropCaptureGroup] = v19;
  v24 = v23;
  [v24 setUserInteractionEnabled_];
  v25 = &v24[OBJC_IVAR____TtC5UIKit15_GlassGroupView_smoothness];
  v95 = v20;
  *v25 = v20;
  v94 = v21;
  v25[8] = v21;
  v26 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  swift_beginAccess();
  v97 = v24;
  v27 = *&v24[v26];
  if (v27 >> 62)
  {
    v28 = sub_18A4A7F68();
    if (v28)
    {
      goto LABEL_4;
    }

LABEL_20:
    v40 = v97;
    v41 = [(UIView *)a4 _traitOverrides];
    v42 = [(_UITraitOverrides *)v41 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    v43 = swift_initStackObject();
    *(v43 + 16) = v42;
    *&v103 = v43;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A570, &qword_18A65E3A8);
    v45 = objc_allocWithZone(v44);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v100.receiver = v45;
    v100.super_class = v44;
    v46 = objc_msgSendSuper2(&v100, sel_init);
    sub_188AF61EC(v46);

    v47 = v103;
    v48 = [(UIView *)a4 _traitOverrides];
    v49 = *(v47 + 16);

    [(_UITraitOverrides *)v48 _replaceWithOverrides:v49];

    v50 = v40;
    if ((v18 & 1) == 0)
    {
      v50 = [v40 layer];

      [v50 setZPosition_];
    }

    v51 = [objc_allocWithZone(_UIViewGlassGroup) init];
    ObjectType = &type metadata for _GlassGroup;
    v106 = &protocol witness table for _GlassGroup;
    LOBYTE(v103) = v18;
    BYTE1(v103) = v96;
    *(&v103 + 1) = v95;
    LOBYTE(v104) = v94;
    BYTE1(v104) = v93;
    v52 = OBJC_IVAR____UIViewGlassGroup__underlyingMaterial;
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0Tm(&v51[v52]);
    sub_188A5EBAC(&v103, &v51[v52]);
    swift_endAccess();
    LOBYTE(v52) = [a4 _addGlassGroupView_material_];

    if ((v52 & 1) == 0)
    {
      v53 = [a4 layer];
      [(UIView *)a4 _backing_insertPrivateSubview:v40 aboveLayer:v53];
    }

    ObjectType = &_s15_GlassGroupTypeON;
    v54 = swift_allocObject();
    *&v103 = v54;
    *(v54 + 16) = v40;
    *(v54 + 24) = 1;
    sub_188B655D4(&v103, 0x70756F7267, 0xE500000000000000);
    goto LABEL_49;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    goto LABEL_20;
  }

LABEL_4:
  v29 = objc_opt_self();
  if (v28 >= 1)
  {
    v30 = v29;
    v91 = v18;
    v92 = a4;

    for (i = 0; i != v28; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v32 = sub_188E49160(i, v27);
      }

      else
      {
        v32 = *(v27 + 8 * i + 32);
      }

      v33 = v32;
      v34 = v25[8];
      v35 = &v32[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_smoothnessOverride];
      *v35 = *v25;
      v35[8] = v34;
      [v32 setNeedsLayout];
      if ([v30 _isInAnimationBlockWithAnimationsEnabled])
      {
        [v33 layoutIfNeeded];
      }
    }

    a4 = v92;
    LOBYTE(v18) = v91;
    goto LABEL_20;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

unint64_t sub_18902B724()
{
  result = qword_1ED48E130;
  if (!qword_1ED48E130)
  {
    sub_18A4A2F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48E130);
  }

  return result;
}

double sub_18902B770@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188A403F4(&_s16CornerBackingKeyVN), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = (v7 + 16);
    v9 = (v7 + 24);
    v10 = (v7 + 32);
    v11 = (v7 + 40);
    v12 = (v7 + 48);
  }

  else
  {
    swift_endAccess();
    v8 = &qword_1ED48F810;
    v12 = &ymmword_1ED48F818[24];
    v11 = &ymmword_1ED48F818[16];
    v10 = &ymmword_1ED48F818[8];
    v9 = ymmword_1ED48F818;
    if (qword_1ED48FCB0 != -1)
    {
      swift_once();
    }
  }

  result = *v12;
  v14 = *v11;
  v15 = *v10;
  v16 = *v9;
  *a1 = *v8;
  *(a1 + 8) = v16;
  *(a1 + 16) = v15;
  *(a1 + 24) = v14;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_18902B878()
{
  v1 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + 16) && (v3 = sub_188A403F4(&_s24LayoutGuideDictionaryKeyVN), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    v6 = (v5 + 16);
  }

  else
  {
    swift_endAccess();
    if (qword_1ED48FE20 != -1)
    {
      swift_once();
    }

    v6 = &qword_1ED48FE28;
  }

  return *v6;
}

uint64_t sub_18902B930()
{
  v1 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + 16) && (v3 = sub_188A403F4(&_s19OwningSuperviewsKeyVN), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    v6 = (v5 + 16);
  }

  else
  {
    swift_endAccess();
    if (qword_1EA92FB20 != -1)
    {
      swift_once();
    }

    v6 = &qword_1EA92FB30;
  }

  return *v6;
}

uint64_t sub_18902B9E8()
{
  v1 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + 16) && (v3 = sub_188A403F4(&_s31_ManagedContentStatesStorageKeyVN), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    v6 = (v5 + 16);
  }

  else
  {
    swift_endAccess();
    if (qword_1EA932018 != -1)
    {
      swift_once();
    }

    v6 = &qword_1EA93FF30;
  }

  return *v6;
}

id sub_18902BAA0(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  (*(*(v4 - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)], a1, v4);
  v6 = type metadata accessor for _UIViewAnyMaterial(0, v4, *((v3 & v2) + 0x58), v5);
  v8.receiver = v1;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_18902BBD8(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 userInterfaceStyle];
  v4 = objc_opt_self();
  v5 = &selRef_whiteColor;
  if (v3 != 2)
  {
    v5 = &selRef_blackColor;
  }

  v6 = [v4 *v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70, &qword_18A654CE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v24 - v8;
  v10 = sub_18A4A2DB8();
  v11 = (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_18904F42C(v2, v6, v9, v11);
  v13 = v12;

  sub_188A3F5FC(v9, &qword_1EA935D70, &qword_18A654CE0);
  v14 = [a1 layer];
  [v13 colorMatrix];
  v15 = objc_opt_self();
  v24[2] = v24[7];
  v24[3] = v24[8];
  v24[4] = v24[9];
  v24[0] = v24[5];
  v24[1] = v24[6];
  v16 = [v15 valueWithCAColorMatrix_];
  if (qword_1EA92FAD8 != -1)
  {
    swift_once();
  }

  v17 = sub_18A4A7258();
  [v14 setValue:v16 forKeyPath:v17];

  v18 = [a1 layer];
  [v13 maxColorComponent];
  v19 = sub_18A4A2D28();
  if (qword_1EA92FB00 != -1)
  {
    swift_once();
  }

  v20 = sub_18A4A7258();
  [v18 setValue:v19 forKeyPath:v20];

  v21 = [a1 layer];
  [v13 preservesHue];
  v22 = sub_18A4A7668();
  if (qword_1EA931DE8 != -1)
  {
    swift_once();
  }

  v23 = sub_18A4A7258();
  [v21 setValue:v22 forKeyPath:v23];
}

void sub_18902BF40(void *a1)
{
  v2 = [a1 traitCollection];
  if ([v2 userInterfaceStyle] == 1)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  if (qword_1EA931DF8 != -1)
  {
    swift_once();
  }

  v4 = dword_1EA93A3A8;

  v5 = [a1 layer];
  v8[0] = 0;
  v8[1] = 0;
  v9 = v3;
  v11 = 0;
  v10 = 0;
  v12 = v3;
  v13 = 0;
  v14 = 0;
  v15 = v3;
  v17 = 0;
  v16 = 0;
  v18 = v4;
  v19 = 0;
  v6 = [objc_opt_self() valueWithCAColorMatrix_];
  if (qword_1EA931DF0 != -1)
  {
    swift_once();
  }

  v7 = sub_18A4A7258();
  [v5 setValue:v6 forKeyPath:v7];
}

uint64_t sub_18902C0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_18902C158()
{
  v1 = *(type metadata accessor for _Glass(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_189029C3C(v0 + v2, v4, 0, v3);
}

void sub_18902C1EC(uint64_t a1)
{
  v3 = *(type metadata accessor for _Glass(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1890222DC(a1, v5, v1 + v4, v6);
}

uint64_t sub_18902C2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18902C35C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_18902C3A0()
{
  result = qword_1EA93A610;
  if (!qword_1EA93A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93A610);
  }

  return result;
}

uint64_t _UIWindowSceneReplacePlacement.init(replacing:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_opt_self() placementToReplaceSceneSession_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A618, &qword_18A65E6D0);
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result;
  return result;
}

uint64_t _UIWindowSceneReplacePlacement.targetScenePersistentIdentifier.getter()
{
  v1 = [*(*v0 + 16) targetSceneSessionPersistentIdentifier];
  v2 = sub_18A4A7288();

  return v2;
}

uint64_t _UIWindowSceneReplacePlacement.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

uint64_t static UIWindowScenePlacement<>._replacing(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() placementToReplaceSceneSession_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A618, &qword_18A65E6D0);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

unint64_t sub_18902C64C(uint64_t a1)
{
  result = sub_18902C674();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18902C674()
{
  result = qword_1EA93A620;
  if (!qword_1EA93A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93A620);
  }

  return result;
}

unint64_t sub_18902C6CC()
{
  result = qword_1EA93A628;
  if (!qword_1EA93A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93A628);
  }

  return result;
}

unint64_t sub_18902C724()
{
  result = qword_1EA93A630;
  if (!qword_1EA93A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93A630);
  }

  return result;
}

uint64_t sub_18902C788(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_18902CA5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(*v4 + 96);
    MEMORY[0x1EEE9AC00](Strong);
    swift_getAssociatedTypeWitness();
    sub_188FD0690(v4 + v9, a4);
  }

  else
  {
    (*(a3 + 16))(&v11, a2, a3);
  }

  return v11;
}

void sub_18902CBD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a1;
  v10 = *v5;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    v12 = *(v10 + 88);
    v14[2] = *(v10 + 80);
    v14[3] = a3;
    v14[4] = v12;
    v14[5] = a4;
    v14[6] = v15;
    v14[7] = a2;
    sub_188FD0810(v5 + v13, a5, v14, MEMORY[0x1E69E7CA8] + 8);
  }

  else
  {
  }
}

uint64_t sub_18902CD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12[1] = v12;
    v10 = *(*v5 + 96);
    MEMORY[0x1EEE9AC00](Strong);
    sub_18A4A7D38();
    sub_188FD0690(v5 + v10, a5);
  }

  else
  {
    (*(a4 + 16))(&v13, a2, a4);
  }

  return v13;
}

void sub_18902CEB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a1;
  v12 = *v6;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    v14 = *(v12 + 88);
    v16[2] = *(v12 + 80);
    v16[3] = a3;
    v16[4] = a4;
    v16[5] = v14;
    v16[6] = a5;
    v16[7] = v17;
    v16[8] = a2;
    sub_188FD0810(v6 + v15, a6, v16, MEMORY[0x1E69E7CA8] + 8);
  }

  else
  {
  }
}

uint64_t sub_18902D0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *v10;
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v24 = *(*v10 + 96);
  v17 = swift_allocObject();
  v18 = a5;
  v19 = *(v16 + 80);
  v17[2] = v19;
  v17[3] = a4;
  v17[4] = v18;
  v20 = *(v16 + 88);
  v17[5] = v20;
  v17[6] = a6;
  v17[7] = a1;
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = a4;
  v21[4] = v18;
  v21[5] = v20;
  v21[6] = a6;
  v21[7] = a2;
  v21[8] = a3;

  v22 = sub_188FD0F9C(v10 + v24, a1, a9, v17, a10, v21, a4, a6);

  return v22;
}

void sub_18902D250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = &v7;
    v8 = *(*v3 + 96);
    MEMORY[0x1EEE9AC00](Strong);
    swift_getAssociatedTypeWitness();
    sub_188FD0690(v3 + v8, sub_18902F060);
  }

  else
  {
    (*(a3 + 16))(a2, a3);
  }
}

uint64_t sub_18902D3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *v8;
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v30 = *(*v8 + 96);
  v28 = a2;
  v29 = a1;
  v18 = a6;
  v19 = swift_allocObject();
  v20 = a1;
  v21 = *(v17 + 80);
  v19[2] = v21;
  v19[3] = a4;
  v27 = a4;
  v22 = a8;
  v23 = *(v17 + 88);
  v19[4] = v23;
  v19[5] = a5;
  v19[6] = v18;
  v19[7] = a7;
  v19[8] = v22;
  v19[9] = v20;
  v24 = swift_allocObject();
  v24[2] = v21;
  v24[3] = v27;
  v24[4] = v23;
  v24[5] = a5;
  v24[6] = v18;
  v24[7] = a7;
  v24[8] = v22;
  v24[9] = v28;
  v24[10] = a3;

  v25 = sub_188FD0F9C(v8 + v30, v29, sub_18902EFFC, v19, sub_18902F034, v24, v27, a5);

  return v25;
}

uint64_t sub_18902D59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    sub_188FD0690(v3 + v7, sub_18902EFB4);
  }

  else
  {
    (*(a3 + 16))(&v9, a2, a3);
  }

  return v9;
}

double sub_18902D6E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    v13 = *(v11 + 88);
    v16[2] = *(v11 + 80);
    v16[3] = a4;
    v16[4] = v13;
    v16[5] = a5;
    v16[6] = a1;
    v16[7] = a2;
    v16[8] = a3;
    sub_188FD0810(v5 + v14, sub_18902EF78, v16, MEMORY[0x1E69E7CA8] + 8);

    return sub_188DC0F30(a1, a2);
  }

  else
  {

    return sub_188DC0F30(a1, a2);
  }
}

uint64_t sub_18902D8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    sub_188FD0690(v3 + v7, sub_18902EEB8);

    return v9;
  }

  else
  {
    (*(a3 + 16))(&v10, a2, a3);
    return v10;
  }
}

double sub_18902D9FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    v12 = *(v9 + 88);
    v14[2] = *(v9 + 80);
    v14[3] = a3;
    v14[4] = v12;
    v14[5] = a4;
    v15 = a1 & 1;
    v16 = a2;
    sub_188FD0810(v4 + v13, sub_18902EE78, v14, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t sub_18902DB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *v9;
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v25 = *(*v9 + 96);
  v17 = swift_allocObject();
  v23 = a2;
  v24 = a8;
  v18 = *(v16 + 80);
  v17[2] = v18;
  v17[3] = a4;
  v19 = *(v16 + 88);
  v17[4] = v19;
  v17[5] = a5;
  v17[6] = a1;
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = a4;
  v20[4] = v19;
  v20[5] = a5;
  v20[6] = v23;
  v20[7] = a3;

  v21 = sub_188FD0F9C(v9 + v25, a1, v24, v17, a9, v20, a4, a5);

  return v21;
}

double sub_18902DCF8(void (*a1)(void))
{
  if (swift_weakLoadStrong())
  {
    v4 = sub_188FD12C0(v1 + *(*v1 + 96));
    a1();
    [v4 invalidate];

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_18902DDC0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  swift_weakDestroy();
  return v0;
}

uint64_t sub_18902DE4C()
{
  sub_18902DDC0();

  return swift_deallocClassInstance();
}

void (*sub_18902DEE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void ***a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  v9[1] = a2;
  v9[2] = a3;
  v10 = *v4;
  v9[3] = a4;
  v9[4] = v10;
  *v9 = sub_18902C824(a2, a3, a4);
  return sub_18902DF80;
}

void (*sub_18902DFBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void ***a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x30uLL);
  }

  *a1 = v11;
  v11[3] = a4;
  v11[4] = a5;
  v11[1] = a2;
  v11[2] = a3;
  v11[5] = *v5;
  *v11 = sub_18902C854(a2, a3, a4, a5);
  return sub_18902E070;
}

void (*sub_18902E0AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void ***a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  v9[1] = a2;
  v9[2] = a3;
  v10 = *v4;
  v9[3] = a4;
  v9[4] = v10;
  *v9 = sub_18902C934(a2, a3, a4);
  return sub_18902E14C;
}

void sub_18902E164(void ***a1, char a2, void (*a3)(void *, void *, void *, void *))
{
  v3 = *a1;
  v4 = (*a1)[3];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    a3(v7, v6, v5, v4);
  }

  else
  {
    a3(v7, v6, v5, v4);
  }

  free(v3);
}

void (*sub_18902E218(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void ***a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x30uLL);
  }

  *a1 = v11;
  v11[3] = a4;
  v11[4] = a5;
  v11[1] = a2;
  v11[2] = a3;
  v11[5] = *v5;
  *v11 = sub_18902C964(a2, a3, a4, a5);
  return sub_18902E2CC;
}

void sub_18902E2E4(void ***a1, char a2, void (*a3)(void *, void *, void *, void *, void *))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    v10 = v9;
    a3(v9, v8, v7, v6, v5);
  }

  else
  {
    a3(**a1, v8, v7, v6, v5);
  }

  free(v4);
}

void (*sub_18902E3B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  v9[1] = a2;
  v9[2] = a3;
  v10 = *v4;
  v9[3] = a4;
  v9[4] = v10;
  *v9 = sub_18902CA44(a2, a3, a4);
  return sub_18902E450;
}

void (*sub_18902E48C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x30uLL);
  }

  *a1 = v11;
  v11[3] = a4;
  v11[4] = a5;
  v11[1] = a2;
  v11[2] = a3;
  v11[5] = *v5;
  *v11 = sub_18902CD28(a2, a3, a4, a5);
  return sub_18902E540;
}

uint64_t sub_18902E558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_18902EC74(a1, a2, a3, a4, a5, a6, a7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 8);

  return v9(a1, AssociatedTypeWitness);
}

void (*sub_18902E5EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t **a1, char a2)
{
  v14 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(0x58uLL);
  }

  v16 = v15;
  *a1 = v15;
  v15[4] = a6;
  v15[5] = a7;
  v15[2] = a4;
  v15[3] = a5;
  *v15 = a2;
  v15[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16[6] = AssociatedTypeWitness;
  v18 = *(AssociatedTypeWitness - 8);
  v16[7] = v18;
  v19 = *(v18 + 64);
  if (v14)
  {
    v16[8] = swift_coroFrameAlloc();
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v16[8] = malloc(*(v18 + 64));
    v20 = malloc(v19);
  }

  v21 = *v23;
  v16[9] = v20;
  v16[10] = v21;
  sub_18902D250(a2, a3, a4);
  return sub_18902E768;
}

void sub_18902E768(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  v5 = (*a1)[7];
  v4 = (*a1)[8];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v9 = (*a1)[1];
  v8 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    v15 = (*a1)[5];
    v11 = (*a1)[4];
    (*(v5 + 16))(v4, v3, v6);
    v12 = sub_18902EC74(v4, v10, v9, v8, v7, v11, v15);
    v13 = *(v5 + 8);
    v13(v4, v6, v12);
    (v13)(v3, v6);
  }

  else
  {
    v14 = sub_18902EC74((*a1)[9], v10, v9, v8, v7, (*a1)[4], (*a1)[5]);
    (*(v5 + 8))(v3, v6, v14);
  }

  free(v3);
  free(v4);

  free(v2);
}

void (*sub_18902E8BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x30uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[2] = a2;
  v9[3] = a3;
  v11 = *v4;
  v9[4] = a4;
  v9[5] = v11;
  *v9 = sub_18902D59C(a2, a3, a4);
  v10[1] = v12;
  return sub_18902E95C;
}

void sub_18902E95C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[4];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    sub_188DBF7D8(**a1, v4);
    sub_18902D6E4(v3, v4, v7, v6, v5);
    sub_188DC0F30(*v2, v2[1]);
  }

  else
  {
    sub_18902D6E4(**a1, v4, v7, v6, v5);
  }

  free(v2);
}

void (*sub_18902EA24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  *v9 = a2;
  *(v9 + 8) = a3;
  v10 = *v4;
  *(v9 + 16) = a4;
  *(v9 + 24) = v10;
  *(v9 + 32) = sub_18902D8B0(a2, a3, a4) & 1;
  return sub_18902EAC8;
}

void sub_18902EAC8(uint64_t **a1)
{
  v1 = *a1;
  sub_18902D9FC(*(*a1 + 32), **a1, (*a1)[1], (*a1)[2]);

  free(v1);
}

double sub_18902EC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *v7;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = &v21;
    MEMORY[0x1EEE9AC00](Strong);
    v18 = *(v15 + 88);
    v20[2] = *(v15 + 80);
    v20[3] = a3;
    v20[4] = v18;
    v20[5] = a4;
    v20[6] = a5;
    v20[7] = a6;
    v20[8] = a7;
    v20[9] = a1;
    v20[10] = a2;
    sub_188FD0810(v7 + v19, sub_18902EDB8, v20, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t sub_18902EDF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_189092150(v1[6], v1[3], v1[5]);
  *a1 = result & 1;
  return result;
}

uint64_t sub_18902EE34(uint64_t a1, _BYTE *a2)
{
  v3 = *(v2 + 48);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return v3(v6);
}

uint64_t sub_18902EEB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_189092150(v1[6], v1[3], v1[5]);
  *a1 = result & 1;
  return result;
}

uint64_t sub_18902EF04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1890920D0(v1[6], v1[3], v1[5]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18902EF3C(uint64_t a1, _OWORD *a2)
{
  v3 = *(v2 + 48);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return v3(v6);
}

uint64_t sub_18902EFB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1890920D0(v1[6], v1[3], v1[5]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18902F0B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_189091EB8(v1[6], v1[3], v1[5]);
  *a1 = result;
  return result;
}

uint64_t sub_18902F184@<X0>(uint64_t *a1@<X8>)
{
  result = sub_189091EB8(v1[6], v1[3], v1[5]);
  *a1 = result;
  return result;
}

uint64_t sub_18902F1E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_189091CA8(v1[6], v1[3], v1[5]);
  *a1 = result;
  return result;
}

uint64_t sub_18902F2B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_189091CA8(v1[6], v1[3], v1[5]);
  *a1 = result;
  return result;
}

uint64_t sub_18902F318@<X0>(uint64_t (*a1)(void, void, void, void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1(v2[7], v2[3], v2[4], v2[6]);
  *a2 = result;
  return result;
}

uint64_t sub_18902F358(uint64_t a1, __int128 *a2)
{
  v3 = *(v2 + 56);
  v5 = *a2;
  return v3(&v5);
}

uint64_t sub_18902F394@<X0>(uint64_t *a1@<X8>)
{
  result = sub_189095CFC();
  *a1 = result;
  return result;
}

uint64_t sub_18902F3CC(uint64_t a1, __int128 *a2)
{
  v3 = *(v2 + 48);
  v5 = *a2;
  return v3(&v5);
}

uint64_t sub_18902F4A4@<X0>(uint64_t (*a1)(void, void, void, void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1(v2[7], v2[3], v2[4], v2[6]);
  *a2 = result;
  return result;
}

uint64_t sub_18902F530@<X0>(uint64_t *a1@<X8>)
{
  result = sub_189095CFC();
  *a1 = result;
  return result;
}

id sub_18902F5A4()
{
  v13.super_class = _UIButtonBarButtonSelectedIndicatorView;
  v0 = objc_msgSendSuper2(&v13, sel_initWithFrame_);
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 tintColor];
  [v2 setBackgroundColor_];

  *&v5 = 0x7FEFFFFFFFFFFFFFLL;
  BYTE8(v5) = 0;
  v6 = 0x7FEFFFFFFFFFFFFFLL;
  v7 = 0;
  v8 = 0x7FEFFFFFFFFFFFFFLL;
  v9 = 0;
  v10 = 0x7FEFFFFFFFFFFFFFLL;
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  UIView.cornerConfiguration.setter(&v5);

  return v2;
}

unint64_t type metadata accessor for _UIButtonBarButtonSelectedIndicatorView()
{
  result = qword_1EA93A638;
  if (!qword_1EA93A638)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93A638);
  }

  return result;
}

void sub_18902F744()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment);
  v3 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColor;
  v4 = *(v2 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColor);
  v5 = *(v1 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect);
  v6 = v4;
  v7 = [v5 _color];
  if (!v7)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v7 = Strong;
    if (!Strong)
    {
      goto LABEL_8;
    }

    v10 = [Strong backgroundColor];
    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = v10;
    v12 = [(UIView *)v7 _willInterpretColorAsMaterial:v10];

    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  [v7 alphaComponent];
  if (v8 < 1.0)
  {
LABEL_7:

    v7 = 0;
  }

LABEL_8:
  if (v4)
  {
    if (!v7)
    {
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        [v13 setNeedsLayout];
      }
    }
  }

  else if (v7)
  {
    [*(v1 + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_backgroundCapture) removeFromSuperview];
  }

  v15 = *(v2 + v3);
  *(v2 + v3) = v7;
  v16 = v7;

  sub_188FF8C48();
  sub_189034138();
}

id sub_18902F8E4(unsigned int a1, uint64_t a2, double a3)
{
  if (a3 <= 0.0)
  {
    return 0;
  }

  sub_18A4A7288();
  v3 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v4 = sub_18A4A7258();

  v5 = [v3 initWithType_];

  v6 = sub_18A4A7668();
  [v5 setValue:v6 forKey:*MEMORY[0x1E6979B20]];

  v7 = sub_18A4A2D28();
  [v5 setValue:v7 forKey:*MEMORY[0x1E6979BA8]];

  v8 = sub_18A4A7668();
  [v5 setValue:v8 forKey:*MEMORY[0x1E6979B78]];

  v9 = sub_18A4A7668();
  [v5 setValue:v9 forKey:*MEMORY[0x1E6979AC8]];

  return v5;
}

void sub_18902FA64(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  if (qword_1EA931E00 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ScrollEdgeEffectView.Params(0);
  __swift_project_value_buffer(v5, qword_1EA995128);
  sub_18A4A79D8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v18[4] = sub_188A4B574;
  v18[5] = v12;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_188A4A968;
  v18[3] = &block_descriptor_75;
  v13 = _Block_copy(v18);

  LODWORD(v14) = v7;
  LODWORD(v15) = v9;
  LODWORD(v16) = v11;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id sub_18902FC24()
{
  v0 = [objc_opt_self() systemBlackColor];
  v1 = [v0 CGColor];

  return v1;
}

float sub_18902FCC8()
{
  v0 = type metadata accessor for ScrollEdgeEffectView.Params(0);
  __swift_allocate_value_buffer(v0, qword_1EA995128);
  v1 = __swift_project_value_buffer(v0, qword_1EA995128);
  return sub_18902FD14(v1);
}

float sub_18902FD14@<S0>(uint64_t a1@<X8>)
{
  *a1 = sub_189035DB8(0xD000000000000013, 0x800000018A6A0160, 0) & 1;
  *(a1 + 1) = _UIShowPocketMask();
  *(a1 + 2) = sub_189035DB8(0xD000000000000017, 0x800000018A6A0180, 0) & 1;
  sub_189035EDC(0xD000000000000011, 0x800000018A6A01A0);
  if (v2 <= 0.0)
  {
    v2 = 0.0;
  }

  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  *(a1 + 8) = v2;
  *(a1 + 16) = sub_189035DB8(0xD000000000000013, 0x800000018A6A01C0, 1u) & 1;
  sub_189035EDC(0x746365666645504DLL, 0xED0000656C616353);
  if (v3 <= 0.0)
  {
    v3 = 0.0;
  }

  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  *(a1 + 24) = v3;
  *(a1 + 32) = 1067450368;
  v4 = sub_189036008(0xD000000000000012, 0x800000018A6A01E0, 0x101u);
  *(a1 + 40) = v5;
  *(a1 + 48) = v4 & 1;
  *(a1 + 49) = BYTE1(v4) & 1;
  *(a1 + 50) = BYTE2(v4) & 1;
  v6 = sub_189036008(0xD000000000000012, 0x800000018A6A0200, 0x100u);
  *(a1 + 56) = v7;
  *(a1 + 64) = v6 & 1;
  *(a1 + 65) = BYTE1(v6) & 1;
  *(a1 + 66) = BYTE2(v6) & 1;
  sub_189035EDC(0xD000000000000011, 0x800000018A6A0220);
  if (v8 <= 0.0)
  {
    v8 = 0.0;
  }

  if (v8 > 1.0)
  {
    v8 = 1.0;
  }

  *(a1 + 72) = v8;
  sub_189035EDC(0xD000000000000014, 0x800000018A6A0240);
  if (v9 <= 0.0)
  {
    v9 = 0.0;
  }

  if (v9 > 1.0)
  {
    v9 = 1.0;
  }

  *(a1 + 80) = v9;
  *(a1 + 88) = sub_189035DB8(0xD000000000000012, 0x800000018A6A0260, 1u) & 1;
  sub_189035EDC(0xD000000000000013, 0x800000018A6A0280);
  if (v10 <= 0.0)
  {
    v10 = 0.0;
  }

  *(a1 + 96) = v10;
  v11 = type metadata accessor for ScrollEdgeEffectView.Params(0);
  sub_18A4A2FC8();
  v12 = a1 + v11[21];
  *v12 = xmmword_18A65E850;
  *(v12 + 16) = xmmword_18A65E860;
  *(v12 + 32) = 0x3FE3333333333333;
  *(v12 + 40) = 1056964608;
  *(v12 + 48) = vdupq_n_s64(0x3FEB333333333333uLL);
  sub_189035EDC(0xD00000000000001FLL, 0x800000018A6A02A0);
  if (v13 <= 0.0)
  {
    v13 = 0.0;
  }

  *(a1 + v11[18]) = v13;
  sub_189035EDC(0xD000000000000017, 0x800000018A6A02C0);
  *(a1 + v11[19]) = _UIClamp_0(0.0, v14, 1.0);
  sub_189035EDC(0xD00000000000001CLL, 0x800000018A6A02E0);
  *(a1 + v11[20]) = _UIClamp_0(0.0, v15, 1.0);
  sub_189035EDC(0xD000000000000015, 0x800000018A6A0300);
  result = _UIClamp_0(1.0, v16, 120.0);
  *(a1 + v11[22]) = result;
  return result;
}

char *sub_18903023C(void *a1, int a2)
{
  v3 = v2;
  v101 = a2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for ScrollEdgeEffectView.Params(0);
  MEMORY[0x1EEE9AC00](v6);
  v105 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_backgroundCapture;
  _s12BackdropViewCMa();
  *&v3[v8] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_pocketMask;
  _s10PocketMaskCMa();
  *&v3[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_pocketMaskedBlur;
  _s10PocketBlurCMa();
  *&v3[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment;
  _s19LuminanceAdjustmentCMa();
  *&v3[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_additionalDimming;
  v13 = [objc_allocWithZone(UIImageView) initWithFrame_];
  v14 = objc_opt_self();
  v15 = sub_18A4A7258();
  v16 = [v14 kitImageNamed_];

  [v13 setImage_];
  [v13 setAlpha_];
  *&v3[v12] = v13;
  v17 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_touchBlocker;
  type metadata accessor for ScrollEdgeEffectView.TouchBlocker();
  *&v3[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_debugOverlay] = 0;
  v18 = &v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_previousEffectiveLuma];
  *v18 = 0;
  v18[8] = 1;
  *&v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_lumaUpdateSettleTimer] = 0;
  *&v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_edge] = 1;
  v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency] = 0;
  v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_isOwningViewEffectivelyHidden] = 0;
  *&v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_blurAlpha] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_scrollVelocity] = 0;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_elementModel;
  _s18PocketElementModelCMa();
  v20 = swift_allocObject();
  *(v20 + 16) = 2;
  *(v20 + 18) = 0;
  *(v20 + 24) = MEMORY[0x1E69E7CC8];
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *(v20 + 64) = 1;
  *&v3[v19] = v20;
  v21 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_observableState;
  type metadata accessor for ScrollEdgeEffectView.ObservableState(0);
  v22 = swift_allocObject();
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0;
  *(v22 + 56) = 1;
  *(v22 + 57) = 2;
  sub_18A4A2C38();
  *&v3[v21] = v22;
  *&v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect] = a1;
  v113.receiver = v3;
  v113.super_class = ObjectType;
  v103 = ObjectType;
  v23 = a1;
  v24 = objc_msgSendSuper2(&v113, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakAssign();
  v25 = qword_1ED48D588;
  v26 = v24;
  if (v25 != -1)
  {
    swift_once();
  }

  v104 = v23;
  [qword_1EA937CF0 addObject_];
  [v26 _setIgnoreBackdropViewsWhenHiding_];
  v27 = [v26 layer];
  [v27 setSkipHitTesting_];

  v28 = [v26 layer];
  [v28 setAllowsGroupOpacity_];

  _UIScrollEdgeEffectDisableMaterialsInSubtree(v26, v29);
  if (qword_1EA931E00 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v6, qword_1EA995128);
  v31 = v105;
  sub_188FFA2B0(v30, v105);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 1;
  v33 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_pocketMaskedBlur;
  v34 = *&v26[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_pocketMaskedBlur];
  v35 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v32;
  *(v36 + 24) = v35;
  v37 = &v34[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_lumaDidChangeHandler];
  v38 = *&v34[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_lumaDidChangeHandler];
  v39 = *&v34[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_lumaDidChangeHandler + 8];
  *v37 = sub_18903681C;
  v37[1] = v36;
  v40 = v34;
  v102 = v32;

  sub_188A55B8C(v38, v39);

  sub_1890310FC();
  [v26 addSubview_];
  v41 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_pocketMask;
  [*&v26[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_pocketMask] setUserInteractionEnabled_];
  v42 = [*&v26[v41] layer];
  [v42 setAllowsHitTesting_];

  [v26 addSubview_];
  v43 = v31[2];
  if ((v43 & 1) == 0)
  {
    if ((v101 & 1) == 0)
    {
      [*&v26[v33] setUserInteractionEnabled_];
      v44 = [*&v26[v33] layer];
      [v44 setAllowsHitTesting_];

      [v26 addSubview_];
    }

    v45 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment;
    [*&v26[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment] setUserInteractionEnabled_];
    v46 = [*&v26[v45] layer];
    [v46 setAllowsHitTesting_];

    [v26 addSubview_];
    v47 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_additionalDimming;
    [*&v26[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_additionalDimming] setUserInteractionEnabled_];
    v48 = [*&v26[v47] layer];
    [v48 setAllowsHitTesting_];

    [v26 addSubview_];
    if (v101)
    {
      [*&v26[v33] setUserInteractionEnabled_];
      v49 = [*&v26[v33] layer];
      [v49 setAllowsHitTesting_];

      [v26 addSubview_];
    }
  }

  v50 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_backgroundCapture;
  v51 = *&v26[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_backgroundCapture];
  v52 = [v51 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setCaptureOnly_];

  if ((v105[16] & 1) == 0)
  {
    v53 = *&v26[v50];
    v54 = [v53 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEnabled_];

    v55 = [objc_opt_self() systemBackgroundColor];
    v56 = v104;
    [v104 _setColor_];

    v57 = *&v26[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment];
    v58 = [v56 _color];
    v59 = *&v57[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColor];
    *&v57[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColor] = v58;
    v60 = v58;

    sub_188FF8C48();
  }

  [*&v26[v50] setUserInteractionEnabled_];
  v61 = [*&v26[v50] layer];
  [v61 setAllowsHitTesting_];

  v62 = *&v26[v50];
  aBlock = 0;
  v107 = 0xE000000000000000;
  v63 = v62;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000016, 0x800000018A6A0340);
  v112 = v26;
  sub_18A4A82D8();
  v64 = sub_18A4A7258();

  [v63 _setIdentifier_];

  v65 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment;
  v66 = *&v26[v50];
  v67 = *&v26[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment];
  v68 = v66;
  sub_188FF9B44(v68);

  v69 = *&v26[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_additionalDimming];
  v70 = sub_18A4A7258();
  [v69 _setIdentifier_];

  if ((v43 & 1) == 0)
  {
    v71 = *&v26[v41];
    v72 = *&v26[v65];
    v73 = v71;
    sub_188FF8F8C(v71);

    v74 = *&v26[v41];
    v75 = *&v26[v33];
    v76 = v74;
    sub_188FFA594(v74);
  }

  v77 = [objc_opt_self() _systemTraitTokensAffectingColorAppearance];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932200, &unk_18A650580);
  v78 = sub_18A4A7548();

  if (v78 >> 62)
  {
    sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);

    v99 = sub_18A4A83B8();
    swift_bridgeObjectRelease_n();
    v78 = v99;
    v81 = v104;
  }

  else
  {
    v79 = v78 & 0xFFFFFFFFFFFFFF8;

    sub_18A4A8738();
    sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
    v80 = swift_dynamicCastMetatype();
    v81 = v104;
    if (v80 || (v97 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_16:
    }

    else
    {
      v98 = v79 + 32;
      while (1)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v98 += 8;
        if (!--v97)
        {
          goto LABEL_16;
        }
      }

      v78 = v79 | 1;
    }
  }

  v82 = sub_188BEE3B4(v78);

  v83 = v103;
  UIView.registerForTraitChanges<A>(_:handler:)(v82, sub_189035D04, 0, v103);
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480, &unk_18A653360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  *(inited + 32) = &type metadata for UITraitUserInterfaceStyle;
  *(inited + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)(inited, sub_189035D28, 0, v83);
  swift_unknownObjectRelease();
  swift_setDeallocating();
  v85 = swift_allocObject();
  *(v85 + 16) = v83;
  v110 = sub_189036824;
  v111 = v85;
  aBlock = MEMORY[0x1E69E9820];
  v107 = 1107296256;
  v108 = sub_189031424;
  v109 = &block_descriptor_57_2;
  v86 = _Block_copy(&aBlock);
  v87 = v26;

  _UIScrollEdgeEffectOnRenderingModeChange(v87, v86);
  _Block_release(v86);

  v88 = [objc_opt_self() defaultCenter];
  v89 = sub_18A4A7258();
  [v88 addObserver:v87 selector:sel_updateDebugView name:v89 object:0];

  v90 = _UIShowPocketMask();
  if ((*v105 & 1) != 0 || v90)
  {
    _s9DebugViewCMa();
    v91 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v92 = *&v26[v41];
    v93 = v92;
    sub_188FF7D10(v92);
    v94 = v91;
    [v94 setAlpha_];
    [v94 setUserInteractionEnabled_];

    sub_188FFA314(v105);
    v95 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_debugOverlay;
    swift_beginAccess();
    v81 = *&v87[v95];
    *&v87[v95] = v94;
  }

  else
  {
    sub_188FFA314(v105);
  }

  return v87;
}

void sub_189031064(uint64_t a1, uint64_t a2, double a3)
{
  swift_beginAccess();
  if ((*(a1 + 24) & 1) != 0 || *(a1 + 16) != a3)
  {
    swift_beginAccess();
    *(a1 + 16) = a3;
    *(a1 + 24) = 0;
    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong setNeedsLayout];
  }
}

void sub_1890310FC()
{
  v1 = v0;
  type metadata accessor for UIScrollEdgeEffectStyle(0);
  v2 = *&v0[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect];
  v3 = [v2 style];
  v4 = objc_opt_self();
  v5 = [v4 hardStyle];
  v6 = sub_18A4A7C88();

  if (v6)
  {
    v7 = 0;
  }

  else if (v0[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency])
  {
    v7 = 0;
  }

  else
  {
    v7 = v0[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_isOwningViewEffectivelyHidden] ^ 1;
  }

  v8 = *&v0[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_pocketMaskedBlur];
  v9 = [v8 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setTracksLuma_];

  v10 = [v8 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setAllowsFilteredLuma_];

  if ((v7 & 1) == 0)
  {
    v11 = &v8[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_currentLuma];
    *v11 = 0;
    v11[8] = 1;
  }

  v12 = [v2 style];
  v13 = [v4 hardStyle];
  v14 = sub_18A4A7C88();

  if ((v14 & 1) != 0 || v1[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency] == 1)
  {
    sub_1890314C4(0, 0.0);
  }

  if (v8[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_currentLuma + 8])
  {
    v15 = [v1 traitCollection];
    v16 = [v15 userInterfaceStyle];

    v17 = 0.0;
    if (v16 == 1)
    {
      v17 = 1.0;
    }

    v18 = 0;
  }

  else
  {
    v17 = *&v8[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_currentLuma];
    v18 = 1;
  }

  sub_1890314C4(v18, v17);
}

_BYTE *sub_18903139C(_BYTE *result, char a2, uint64_t a3)
{
  if (result)
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      result = *&result[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment];
      v4 = result[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_enableDimming];
      result[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_enableDimming] = (a2 & 1) == 0;
      if (v4 == (a2 & 1))
      {

        return [result setNeedsLayout];
      }
    }
  }

  return result;
}

void sub_189031424(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

void sub_1890314C4(char a1, double a2)
{
  v3 = v2;
  v6 = sub_18A4A6E18();
  v105 = *(v6 - 8);
  v106 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_18A4A6E58();
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ScrollEdgeEffectView.Params(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIScrollEdgeEffectStyle(0);
  v13 = *&v2[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect];
  v14 = [v13 style];
  v15 = [objc_opt_self() hardStyle];
  v16 = sub_18A4A7C88();

  if ((v16 & 1) != 0 || v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_reducedTransparency] == 1)
  {
    v17 = [v13 _preferredUserInterfaceStyle];
    if (!v17)
    {
      v18 = [*&v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment] traitCollection];
      v19 = [v18 userInterfaceStyle];

      v17 = v19;
    }

    if (v17 == 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    v21 = *&v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment];
    v22 = sub_188FF8B68();
    v23 = sub_1890321B4(v20, v22);
    if (qword_1EA931E00 != -1)
    {
      swift_once();
    }

    v24 = *(__swift_project_value_buffer(v10, qword_1EA995128) + 56);
    aBlock = LODWORD(v22);
    v108 = 0;
    v109 = v24;
    v110 = v23;
    v111 = v23;
    LOBYTE(v112) = 0;
    sub_18903499C(&aBlock);
    v25 = v21 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle;
    v26 = *(v21 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle + 8);
    v27 = *(v21 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle + 16);
    v28 = *(v21 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle);
    *v25 = LODWORD(v22);
    *(v25 + 8) = v20;
    *(v25 + 16) = 0;
    if ((v27 & 1) != 0 || v22 != v28 || v20 != v26)
    {
      sub_188FF9CF8();
    }

    return;
  }

  v99 = *&v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_pocketMaskedBlur];
  _UISignpostScrollPocketLumaTrackingTicked(v3, v99, a2);
  isEffectively = [(UIView *)v3 _isEffectivelyHidden];
  if (qword_1EA931E00 != -1)
  {
    swift_once();
  }

  v100 = __swift_project_value_buffer(v10, qword_1EA995128);
  sub_188FFA2B0(v100, v12);
  v30 = &v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_previousEffectiveLuma];
  v31 = a2;
  if (((v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_previousEffectiveLuma + 8] | isEffectively) & 1) == 0)
  {
    v31 = a2;
    if (a1)
    {
      v32 = *&v12[v10[19]];
      v31 = v32 * a2 + *v30 * (1.0 - v32);
    }
  }

  v101 = isEffectively;
  if (v31 == a2)
  {
    v33 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_lumaUpdateSettleTimer;
    v34 = *&v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_lumaUpdateSettleTimer];
    if (v34)
    {
      [v34 invalidate];
      v35 = *&v3[v33];
    }

    else
    {
      v35 = 0;
    }

    *&v3[v33] = 0;
    goto LABEL_27;
  }

  v36 = *&v12[v10[20]];
  if (v36 > 0.0)
  {
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = a2;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_189036854;
    *(v39 + 24) = v38;
    v111 = sub_189036860;
    v112 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v108 = 1107296256;
    v109 = sub_1890552D0;
    v110 = &block_descriptor_82_1;
    v40 = _Block_copy(&aBlock);
    v41 = objc_opt_self();

    v42 = [v41 timerWithTimeInterval:0 repeats:v40 block:v36];
    _Block_release(v40);

    v43 = [objc_opt_self() mainRunLoop];
    [v43 addTimer:v42 forMode:*MEMORY[0x1E695DA28]];

    v44 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_lumaUpdateSettleTimer;
    v45 = *&v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_lumaUpdateSettleTimer];
    if (v45)
    {
      [v45 invalidate];
      v35 = *&v3[v44];
      *&v3[v44] = v42;
    }

    else
    {
      v35 = 0;
      *&v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_lumaUpdateSettleTimer] = v42;
    }

LABEL_27:

    goto LABEL_28;
  }

  sub_1890314C4(0, a2);
LABEL_28:
  v98 = v12;
  *v30 = v31;
  *(v30 + 8) = 0;
  v46 = v31;
  if ([v13 _fixedUserInterfaceStyle])
  {
    v47 = [v13 _fixedUserInterfaceStyle];
  }

  else
  {
    v48 = *&v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment] + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle;
    if (*(v48 + 16))
    {
      v49 = 0;
    }

    else
    {
      v49 = *(v48 + 8);
    }

    v50 = v31;
    v47 = sub_1890321B4(v49, v50);
  }

  v51 = v47;
  v52 = *&v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment];
  v53 = &selRef_trackSubstitution_originalText_originalTextRange_replacementText_replacementTextRange_;
  v54 = [v52 traitCollection];
  v55 = [v54 userInterfaceStyle];

  v56 = sub_188FF8B68();
  v57 = sub_1890321B4(v55, v56);
  v58 = *(v100 + v10[18]);
  MEMORY[0x1EEE9AC00](v57);
  *(&v97 - 4) = v3;
  v60 = v101;
  *(&v97 - 24) = v101;
  *(&v97 - 4) = v46;
  *(&v97 - 1) = v51;
  if (v58 <= 0.0)
  {
    v65 = 0;
    if (!v60)
    {
      v65 = *&v3[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_scrollVelocity];
    }

    *&v52[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_scrollVelocity] = v65;
    v66 = &v52[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle];
    v67 = *&v52[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle + 8];
    v68 = v52[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle + 16];
    v69 = *&v52[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle];
    *v66 = LODWORD(v46);
    *(v66 + 1) = v51;
    v66[16] = 0;
    if ((v68 & 1) != 0 || v46 != v69 || v51 != v67)
    {
      sub_188FF9CF8();
    }
  }

  else
  {
    v97 = &v97;
    MEMORY[0x1EEE9AC00](v59);
    *(&v97 - 2) = sub_18903682C;
    *(&v97 - 1) = v61;
    v62 = objc_opt_self();
    v63 = swift_allocObject();
    *(v63 + 16) = sub_18903684C;
    *(v63 + 24) = &v97 - 4;
    v111 = sub_188E3FE50;
    v112 = v63;
    aBlock = MEMORY[0x1E69E9820];
    v108 = 1107296256;
    v109 = sub_188A4A968;
    v110 = &block_descriptor_70_5;
    v64 = _Block_copy(&aBlock);

    [v62 animateWithSpringDuration:4 bounce:v64 initialSpringVelocity:0 delay:v58 options:0.0 animations:0.0 completion:0.0];
    _Block_release(v64);
    LOBYTE(v64) = swift_isEscapingClosureAtFileLocation();

    if (v64)
    {
      __break(1u);
      return;
    }

    v53 = &selRef_trackSubstitution_originalText_originalTextRange_replacementText_replacementTextRange_;
  }

  v70 = &v52[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_alphaValues];
  v71 = 0;
  if (*(v99 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurEnabled) == 1)
  {
    v72 = 40;
    if (*(v99 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_useHardEdges))
    {
      v72 = 56;
    }

    v71 = *(v100 + v72);
  }

  v73 = *v70;
  v74 = v70[1];
  v75 = [v52 v53[106]];
  v76 = [v75 userInterfaceStyle];

  v77 = v46;
  if (v51 == 1)
  {
    v77 = (1.0 - v77) * v74 + v77;
    v78 = 0.75;
    v79 = v101;
    if (v77 <= 0.75)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v78 = 0.4;
  v79 = v101;
  if (v77 <= 0.4)
  {
LABEL_51:
    v78 = v77;
  }

LABEL_52:
  if (v76 == 1)
  {
    v80 = v73;
    if (v79)
    {
      v57 = 1;
    }

    else if (v80 > 0.0)
    {
      v57 = 1;
    }

    else
    {
      v57 = 2;
    }

    v73 = v74;
  }

  else
  {
    if (v79)
    {
      v57 = v76;
    }

    v80 = 0.0;
  }

  v81 = v73;
  v82 = v78;
  *&v113 = __PAIR64__(LODWORD(v81), LODWORD(v82));
  *(&v113 + 2) = v80;
  *&v114 = v71;
  *(&v114 + 1) = v57;
  v115 = v51;
  sub_188A34624(0, &qword_1ED490540, 0x1E69E9610);
  v83 = sub_18A4A7A68();
  v84 = swift_allocObject();
  v85 = v114;
  *(v84 + 24) = v113;
  *(v84 + 16) = v3;
  *(v84 + 40) = v85;
  *(v84 + 56) = v115;
  v111 = sub_189036840;
  v112 = v84;
  aBlock = MEMORY[0x1E69E9820];
  v108 = 1107296256;
  v109 = sub_188A4A8F0;
  v110 = &block_descriptor_63_4;
  v86 = _Block_copy(&aBlock);
  v87 = v3;

  sub_18A4A6E38();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_188B5510C(&qword_1ED490560, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0, &qword_18A64F960);
  sub_188BA3728();
  v88 = v103;
  v89 = v106;
  sub_18A4A7EB8();
  MEMORY[0x18CFE29D0](0, v9, v88, v86);
  _Block_release(v86);

  (*(v105 + 8))(v88, v89);
  (*(v102 + 8))(v9, v104);
  v90 = OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_debugOverlay;
  swift_beginAccess();
  v91 = *&v87[v90];
  if (v91)
  {
    swift_endAccess();
    v92 = &v91[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_luma];
    *v92 = LODWORD(v82) | (LODWORD(v81) << 32);
    *(v92 + 1) = LODWORD(v80);
    *(v92 + 2) = v71;
    *(v92 + 3) = v57;
    *(v92 + 4) = v51;
    v92[40] = 0;
    v93 = *&v91[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_lumaLabel];
    aBlock = 0;
    v108 = 0xE000000000000000;
    v94 = v91;
    v95 = sub_189035AF8();
    MEMORY[0x18CFE22D0](v95);

    v96 = sub_18A4A7258();

    [v93 setText_];

    sub_188FFA314(v98);
  }

  else
  {
    sub_188FFA314(v98);
    swift_endAccess();
  }
}