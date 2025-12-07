void sub_24A5FAB80(uint64_t a1, uint64_t a2)
{
  v15 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel);
  [v15 alpha];
  if (v3 != 1.0)
  {
    sub_24A50D7EC(0, &qword_27EF50DB0, 0x277D82BB8);
    v4 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel);
    v5 = sub_24A62F164();

    if (v5)
    {
      v6 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint);
      if (!v6)
      {
        __break(1u);
        return;
      }

      [v6 setConstant_];
    }

    v7 = objc_opt_self();
    v9 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96);
    v8 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104);
    v10 = swift_allocObject();
    *(v10 + 16) = v15;
    *(v10 + 24) = 1;
    v20 = sub_24A5FBEB4;
    v21 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_24A5A8458;
    v19 = &unk_285DAAA00;
    v11 = _Block_copy(&aBlock);
    v12 = v15;

    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    v20 = sub_24A5FBF20;
    v21 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_24A5A1470;
    v19 = &unk_285DAAA50;
    v14 = _Block_copy(&aBlock);

    [v7 animateWithDuration:0 delay:v11 usingSpringWithDamping:v14 initialSpringVelocity:v8 options:0.0 animations:v9 completion:0.0];

    _Block_release(v14);
    _Block_release(v11);
    return;
  }
}

void sub_24A5FAE10(uint64_t a1, uint64_t a2)
{
  v15 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel);
  [v15 alpha];
  if (v3 != 1.0)
  {
    sub_24A50D7EC(0, &qword_27EF50DB0, 0x277D82BB8);
    v4 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel);
    v5 = sub_24A62F164();

    if (v5)
    {
      v6 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint);
      if (!v6)
      {
        __break(1u);
        return;
      }

      [v6 setConstant_];
    }

    v7 = objc_opt_self();
    v9 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96);
    v8 = *(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104);
    v10 = swift_allocObject();
    *(v10 + 16) = v15;
    *(v10 + 24) = 1;
    v20 = sub_24A5FBEB4;
    v21 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_24A5A8458;
    v19 = &unk_285DAAAC8;
    v11 = _Block_copy(&aBlock);
    v12 = v15;

    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    v20 = sub_24A5FBF20;
    v21 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_24A5A1470;
    v19 = &unk_285DAAB18;
    v14 = _Block_copy(&aBlock);

    [v7 animateWithDuration:0 delay:v11 usingSpringWithDamping:v14 initialSpringVelocity:v8 options:0.0 animations:v9 completion:0.0];

    _Block_release(v14);
    _Block_release(v11);
    return;
  }
}

void sub_24A5FB0A0(char a1, char *a2)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
    [*&a2[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel] setAttributedText_];
    v4 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel;
    v5 = *&a2[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel];
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    v7 = a2;
    v8 = v5;
    [v8 alpha];
    if (v9 == 0.0)
    {
      [*&a2[v4] setFont_];
      [*&a2[v4] setAttributedText_];
      sub_24A5F9824(0, 0, 1, 0, 0);
    }

    else
    {
      sub_24A50D7EC(0, &qword_27EF50DB0, 0x277D82BB8);
      v10 = *&a2[v3];
      v11 = sub_24A62F164();

      if (v11)
      {
        v12 = *&v7[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint];
        if (!v12)
        {

          __break(1u);
          return;
        }

        [v12 setConstant_];
      }

      v13 = objc_opt_self();
      v15 = *&v7[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 96];
      v14 = *&v7[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 104];
      v16 = swift_allocObject();
      *(v16 + 16) = v8;
      *(v16 + 24) = 0;
      v25 = sub_24A5FBEB4;
      v26 = v16;
      v21 = MEMORY[0x277D85DD0];
      v22 = 1107296256;
      v23 = sub_24A5A8458;
      v24 = &unk_285DAAB90;
      v17 = _Block_copy(&v21);
      v18 = v8;

      v19 = swift_allocObject();
      *(v19 + 16) = sub_24A5FBF24;
      *(v19 + 24) = v6;
      v25 = sub_24A5FBF20;
      v26 = v19;
      v21 = MEMORY[0x277D85DD0];
      v22 = 1107296256;
      v23 = sub_24A5A1470;
      v24 = &unk_285DAABE0;
      v20 = _Block_copy(&v21);

      [v13 animateWithDuration:0 delay:v17 usingSpringWithDamping:v20 initialSpringVelocity:v14 options:0.0 animations:v15 completion:0.0];

      _Block_release(v20);
      _Block_release(v17);
    }
  }
}

void sub_24A5FB3E4(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel;
    [*(a2 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel) setFont_];
    [*(a2 + v3) setAttributedText_];
    sub_24A5F9824(0, 0, 1, 0, 0);
  }
}

void sub_24A5FB45C(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceSpring);
  v4 = (v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  v5 = (v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  v6 = v4[35] + *(v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  if (v6 == 1.79769313e308)
  {
    v7 = 0;
    v8 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_presentedDistance;
    *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_presentedDistance) = 0;
  }

  else
  {
    sub_24A55C858(a1);
    *(v3 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
    v9 = *v4 + *v5;
    if (vabdd_f64(v4[35] + v5[5], v9) <= *(v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
    {
      v9 = v4[35] + v5[5];
    }

    v8 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_presentedDistance;
    *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_presentedDistance) = v9;
    v7 = *&v9;
  }

  *(v1 + v8 + 8) = v6 == 1.79769313e308;
  sub_24A5F9BF4(v7, v6 == 1.79769313e308, *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_guide) | (*(v1 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_guide + 4) << 32));
}

id sub_24A5FB5E0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMR1DistanceView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24A5FB768(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_24A5FB7B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A5FB81C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_24A5FB85C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_24A5FB894(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel;
  v9 = *&a1[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel];
  if ((a2 & 0x1FFFFFFFFLL) == 0x40)
  {
    v10 = *&a1[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style + 32];
  }

  else
  {
    v10 = *&a1[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabelFont];
  }

  v11 = v10;
  v12 = v9;
  [v12 setFont_];

  [*&a1[v8] setAttributedText_];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = a1;
  sub_24A5F9824(0, 1, 1, a5, v13);

  return result;
}

uint64_t sub_24A5FB9B4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A5FBA58()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

unint64_t sub_24A5FBAA4()
{
  result = qword_27EF4F200;
  if (!qword_27EF4F200)
  {
    _s3__C3KeyVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F200);
  }

  return result;
}

uint64_t sub_24A5FBAFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_24A5FBB34()
{
  v1 = *(v0 + 16);
  result = *&v1[OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelBottomConstraint];
  if (result)
  {
    [result setConstant_];

    return [v1 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5FBB98(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

unint64_t sub_24A5FBBCC()
{
  result = qword_27EF51F38;
  if (!qword_27EF51F38)
  {
    sub_24A50E1E0(&qword_27EF51F30, qword_24A63B9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51F38);
  }

  return result;
}

void sub_24A5FBC30()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_style;
  if (qword_27EF4EAD0 != -1)
  {
    swift_once();
  }

  v12[4] = xmmword_27EF5C7E8;
  v12[5] = unk_27EF5C7F8;
  v12[6] = xmmword_27EF5C808;
  v12[0] = xmmword_27EF5C7A8;
  v12[1] = *&qword_27EF5C7B8;
  v12[2] = xmmword_27EF5C7C8;
  v12[3] = *&qword_27EF5C7D8;
  memmove((v0 + v1), &xmmword_27EF5C7A8, 0x70uLL);
  v2 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabel;
  v3 = objc_allocWithZone(MEMORY[0x277D756B8]);
  sub_24A5FBE0C(v12, v11);
  *(v0 + v2) = [v3 init];
  v4 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_directionLabelFont) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceLabelBottomConstraint) = 0;
  v5 = v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_initialAboveOrBelowTimestamp;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_guide;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceSpring;
  *(v0 + v7) = sub_24A5B1F70(0, 1, 0, 1);
  *(v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_threshold) = 2;
  v8 = (v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_deviceName);
  *v8 = 0;
  v8[1] = 0;
  v9 = v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distance;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v0 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_presentedDistance;
  *v10 = 0;
  *(v10 + 8) = 1;
  sub_24A62F444();
  __break(1u);
}

double sub_24A5FBFB8(char a1)
{
  v2 = v1;
  [*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDebugNode) setHidden_];
  [*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasInsideBorderBezierNode) setHidden_];
  [*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode) setHidden_];
  v4 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode;
  v5 = *(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode);
  if (v5)
  {
    [v5 setHidden_];
  }

  v6 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode;
  v7 = *(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode);
  if (v7)
  {
    [v7 setHidden_];
  }

  [*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode) setHidden_];
  v8 = *(v1 + v4);
  if (v8)
  {
    if (a1)
    {
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 yellowColor];
      v12 = [v11 colorWithAlphaComponent_];

      v13 = v12;
    }

    else
    {
      v14 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonDotColor);
      v10 = v8;
      v13 = v14;
    }

    sub_24A51E82C(v13);
  }

  v15 = *(v2 + v6);
  if (v15)
  {
    if (a1)
    {
      v16 = objc_opt_self();
      v17 = v15;
      v18 = [v16 purpleColor];
      v19 = [v18 colorWithAlphaComponent_];

      v20 = v19;
    }

    else
    {
      v21 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeDotColor);
      v17 = v15;
      v20 = v21;
    }

    sub_24A51E82C(v20);
  }

  v22 = [*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasPatternSpinesNode) children];
  sub_24A5FD0E0();
  v23 = sub_24A62ED64();

  if (v23 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    v25 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x24C21ACB0](v25, v23);
      }

      else
      {
        if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        [v29 setLineWidth_];
      }

      ++v25;
      if (v28 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:

  return result;
}

void sub_24A5FC2BC(char a1, uint64_t a2, char a3)
{
  [v3 removeAllActions];
  if (a1)
  {
    if ((a3 & 1) != 0 || *&a2 <= 0.0)
    {
      [v3 setAlpha_];
      *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_forceHideNoonNode) = 0;
    }

    else
    {
      v7 = [objc_opt_self() fadeAlphaTo:1.0 duration:*&a2];
      [v7 setTimingMode_];
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      aBlock[4] = sub_24A5FD0B4;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A5A8458;
      aBlock[3] = &unk_285DAACD0;
      v9 = _Block_copy(aBlock);
      v10 = v3;

      [v10 runAction:v7 completion:v9];
      _Block_release(v9);
    }
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_forceHideNoonNode) = 1;
    if ((a3 & 1) != 0 || *&a2 <= 0.0)
    {

      [v3 setAlpha_];
    }

    else
    {
      v11 = [objc_opt_self() fadeAlphaTo:0.0 duration:*&a2];
      [v11 setTimingMode_];
      [v3 runAction_];
    }
  }
}

void sub_24A5FC508(char a1, uint64_t a2, double a3)
{
  v4 = v3;
  v6 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor;
  *v6 = a3;
  *(v6 + 8) = 0;
  v7 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor;
  if ((*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor + 8) & 1) == 0)
  {
    if (*v7 == 0.0 && a3 > 0.0)
    {
      v8 = a1;
      v9 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 8);
        ObjectType = swift_getObjectType();
        (*(v10 + 24))(ObjectType, v10);
        swift_unknownObjectRelease();
      }

      sub_24A5E272C(*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_track), *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_track + 8));
LABEL_15:
      a1 = v8;
      goto LABEL_16;
    }

    if (*v7 == 1.0 && a3 < 1.0)
    {
      v8 = a1;
      v13 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v13 + 8);
        v15 = swift_getObjectType();
        (*(v14 + 32))(v15, v14);
        swift_unknownObjectRelease();
      }

      sub_24A5E3D98();
      goto LABEL_15;
    }
  }

LABEL_16:
  if ((a1 & 1) != 0 && (v16 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactorSpring), v17 = v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v17 + 280) + *(v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v32 = v16 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v32 = a3;
    *(v32 + 8) = 0;
    sub_24A5B18FC();
  }

  else
  {
    v18 = *(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactorSpring);
    sub_24A55C6B4(a3);
    *(v18 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v19 = *(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 184);
    if ((a3 - v19) / (1.0 - v19) < 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = (a3 - v19) / (1.0 - v19);
    }

    *v7 = a3;
    *(v7 + 8) = 0;
    v21 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
    swift_beginAccess();
    v22 = *(v4 + v21);
    if (v22 >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
    {

      if (!i)
      {
        break;
      }

      v24 = 0;
      v19 = fmin(a3 / v19, 1.0);
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x24C21ACB0](v24, v22);
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v25 = *(v22 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v28 = &v25[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor];
        *v28 = v19;
        *(v28 + 8) = 0;
        sub_24A5DF354(v19);
        v29 = &v26[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor];
        *v29 = v20;
        *(v29 + 8) = 0;
        sub_24A5DF5EC(v20);
        sub_24A5A4E9C(1, a3);

        ++v24;
        if (v27 == i)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

LABEL_32:

    sub_24A60510C(v30, v31);
  }
}

void sub_24A5FC854(uint64_t a1, uint64_t a2, char a3, __n128 a4)
{
  if (a2)
  {
    v5 = v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing;
    *v5 = *&a1;
    *(v5 + 8) = 1;
    v6 = v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedEnergeticBearing;
    *v6 = 0;
    *(v6 + 8) = 1;
    v7 = v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLethargicBearing;
    *v7 = 0;
    *(v7 + 8) = 1;
    goto LABEL_25;
  }

  v8 = *&a1;
  v9 = v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing;
  v10 = *(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing);
  v11 = *(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing + 8);
  v12 = 0.0;
  if ((v11 & 1) == 0)
  {
    v13 = a3;
    v12 = fmod(*(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing), 360.0);
    if (v12 <= 180.0)
    {
      a3 = v13;
      if (v12 < -180.0)
      {
        v12 = v12 + 360.0;
      }
    }

    else
    {
      v12 = v12 + -360.0;
      a3 = v13;
    }
  }

  v14 = v8 - v12;
  if (vabdd_f64(v8, v12) > 180.0)
  {
    if (v12 >= 0.0 || v8 < 0.0)
    {
      if (v8 < 0.0 && v12 >= 0.0)
      {
        v14 = v14 + 360.0;
      }

      v15 = 0.0;
      if ((v11 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }

    v14 = v14 + -360.0;
  }

  v15 = 0.0;
  if ((v11 & 1) == 0)
  {
LABEL_13:
    if (fabs(v14) <= 2.22044605e-16)
    {
      goto LABEL_25;
    }

    v15 = v10;
  }

LABEL_21:
  v17 = v14 + v15;
  *v9 = v14 + v15;
  *(v9 + 8) = 0;
  v18 = (v14 + v15) / 180.0 * 3.14159265;
  if ((a3 & 1) == 0 || (v19 = *(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_energeticAngleSpring), v20 = v19 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), v21 = v19 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o, *(v20 + 280) + *(v19 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) == 1.79769313e308) || (v22 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lethargicAngleSpring, v23 = *(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lethargicAngleSpring), v24 = v23 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v24 + 280) + *(v23 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) == 1.79769313e308))
  {
    v25 = *(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_energeticAngleSpring);
    sub_24A55C6B4(v18);
    *(v25 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v26 = v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedEnergeticBearing;
    *v26 = v17;
    *(v26 + 8) = 0;
    v27 = *(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lethargicAngleSpring);
    sub_24A55C6B4(v18);
    *(v27 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v28 = v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLethargicBearing;
    *v28 = v17;
    *(v28 + 8) = 0;
  }

  else
  {
    v29 = v18 - *(v21 + 40);
    *(v20 + 280) = v29;
    *(v20 + 240) = v29;
    *(v20 + 248) = 0;
    v30 = *(v4 + v22);
    v31 = v30 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
    *&a1 = COERCE_DOUBLE(swift_beginAccess());
    v32 = v30 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
    v33 = *(v30 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    if (*(v31 + 280) + v33 == 1.79769313e308)
    {
      sub_24A55C6B4(v18);
      *(v30 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      v33 = *(v32 + 40);
    }

    v34 = v18 - v33;
    *(v31 + 280) = v34;
    *(v31 + 240) = v34;
    *(v31 + 248) = 0;
  }

LABEL_25:
  sub_24A60510C(a1, a2);
}

void sub_24A5FCBD0(char a1, double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactor;
  if ((*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactor + 8) & 1) == 0)
  {
    if (*v5 >= a2)
    {
      v6 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_derivativeCenterFactor;
      if (*v5 <= a2)
      {
        v7 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_derivativeCenterFactor);
      }

      else
      {
        v7 = -1;
      }
    }

    else
    {
      v6 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_derivativeCenterFactor;
      v7 = 1;
    }

    *(v2 + v6) = v7;
  }

  *v5 = a2;
  *(v5 + 8) = 0;
  if ((a1 & 1) != 0 && (v8 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactorSpring), v9 = v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v9 + 280) + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v14 = v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v14 = a2;
    *(v14 + 8) = 0;
    sub_24A5B18FC();
  }

  else
  {
    v10 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactorSpring);
    sub_24A55C6B4(a2);
    *(v10 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v13 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor;
    *v13 = a2;
    *(v13 + 8) = 0;
  }

  sub_24A60510C(v11, v12);
}

void sub_24A5FCD18(char a1, double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lookout;
  *v5 = a2;
  *(v5 + 8) = 0;
  if ((a1 & 1) != 0 && (v6 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lookoutSpring), v7 = v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v7 + 280) + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v12 = v6 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v12 = a2;
    *(v12 + 8) = 0;
    sub_24A5B18FC();
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lookoutSpring);
    sub_24A55C6B4(a2);
    *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v11 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLookout;
    *v11 = a2;
    *(v11 + 8) = 0;
  }

  sub_24A60510C(v9, v10);
}

id sub_24A5FCE50(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMPFSKPatternNode();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24A5FD07C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_24A5FD0C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_24A5FD0E0()
{
  result = qword_27EF4F948;
  if (!qword_27EF4F948)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF4F948);
  }

  return result;
}

void sub_24A5FD12C()
{
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_ringView) = 0;
  v1 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDebugNode;
  v2 = type metadata accessor for FMPFSKNode();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasInsideBorderBezierNode) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode) = 0;
  v3 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasPatternSpinesNode;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CDCF58]) init];
  v4 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode;
  *(v0 + v4) = [objc_allocWithZone(v2) init];
  v5 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode;
  *(v0 + v5) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes) = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsNode;
  *(v0 + v6) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_extraDiskRadiusWhenSnapping) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_forceHideNoonNode) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_allFragmentsAreOrbiting) = 0;
  v7 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_track;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackDidChange) = 0;
  v8 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackTop;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackBottom;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_needsRecomputeVisibleFragments) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_inFOV) = 2;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyConformedToExplodedFactor) = 1;
  v10 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactor;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyConformationFactor) = 1;
  v12 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyBearing) = 1;
  v14 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedEnergeticBearing;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLethargicBearing;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyCenterFactor) = 1;
  v17 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactor;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_derivativeCenterFactor) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldLookout) = 1;
  v19 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lookout;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLookout;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldLabelsOpacity) = 1;
  v21 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsOpacity;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLabelsOpacity;
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A5FD548()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  sub_24A62F384();

  v3 = sub_24A62F784();
  v5 = sub_24A516B88(6, v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x24C21A580](v5, v7, v9, v11);
  v14 = v13;

  MEMORY[0x24C21A5D0](v12, v14);

  MEMORY[0x24C21A5D0](30768, 0xE200000000000000);

  MEMORY[0x24C21A5D0](32, 0xE100000000000000);
  v15 = [v0 name];
  if (v15)
  {
    v16 = v15;
    v17 = sub_24A62EC14();
    v2 = v18;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x24C21A5D0](v17, v2);

  MEMORY[0x24C21A5D0](0x3E4025202CLL, 0xE500000000000000);
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24A633830;
  v20 = [v1 isHidden];
  v21 = sub_24A508FEC();
  v22 = 0x656C6269736976;
  if (v20)
  {
    v22 = 0x6E6564646968;
  }

  v23 = 0xE700000000000000;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = v21;
  if (v20)
  {
    v23 = 0xE600000000000000;
  }

  *(v19 + 32) = v22;
  *(v19 + 40) = v23;
  v24 = sub_24A62EC24();

  return v24;
}

void sub_24A5FD7C8()
{

  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMPFSKLabelNode_labelNode);
}

id sub_24A5FD81C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMPFSKLabelNode();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_24A5FD8E0(__int16 *a1)
{
  v3 = type metadata accessor for FMFindingViewState(0);
  v5 = a1 + *(v3 + 32);
  v6 = *(v5 + 24) | (v5[100] << 32);
  v7 = *(v5 + 24) & 0xFE000000;
  if (v7 == 0x4000000)
  {
    v8 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isBTConnected);
    *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isBTConnected) = 0;
    sub_24A5FF5BC(v8, v4);
    v9 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isRanging);
    *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isRanging) = 0;
    sub_24A5FFB58(v9);
    v10 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState;
    v11 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState);
    v12 = 1;
LABEL_6:
    *(v1 + v10) = v12;
LABEL_7:

    sub_24A5FFD04(v11);
    return;
  }

  if ((*(v5 + 24) & 0xFF000000) == 0x6000000)
  {
    v13 = *a1;
    v14 = (v13 >> 13) & 3;
    if (v14 && (v14 == 1 || (v13 & 0x80000000) == 0))
    {
      return;
    }

    if (*(a1 + *(v3 + 44)))
    {
      goto LABEL_14;
    }

    if (v7 != 100663296 && (*(v5 + 24) & 0xFF0000) == 0x40000)
    {
      v20 = v5[40];
      v21 = v5[56];
      v22 = v5[57];
      if (*(v5 + 2) == 1)
      {
        v33 = *v5;
        v34 = 1;
        v35 = *(v5 + 24);
        v36 = v20;
        *v37 = *(v5 + 41);
        *&v37[7] = *(v5 + 6);
        v38 = v21;
        v39 = v22;
        *&v41[14] = *(v5 + 11);
        *v41 = *(v5 + 74);
        v40 = *(v5 + 58);
        v43 = BYTE4(v6);
        v42 = v6;
        sub_24A604158(&v33, v32);
      }

      else if (v5[40] & 1) != 0 || (v5[57])
      {
LABEL_14:
        v15 = sub_24A62F634();

        if ((v15 & 1) == 0)
        {
          return;
        }

        goto LABEL_27;
      }
    }

LABEL_27:
    v23 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState);
    *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState) = 2;
    sub_24A5FFD04(v23);
    return;
  }

  if ((*(v5 + 24) & 0xFF000000) == 0x7000000)
  {
    v10 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState;
    v11 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState);
    v12 = 4;
    goto LABEL_6;
  }

  v16 = v3;
  v17 = HIDWORD(v6);
  v18 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isBTConnected);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isBTConnected) = 1;
  sub_24A5FF5BC(v18, v4);
  v19 = sub_24A62715C();
  if (v19 > 1)
  {
    if (v19 != 2 && v19 != 3)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v19)
  {
LABEL_29:
    v24 = sub_24A62F634();

    if ((v24 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_30:
  v25 = *(a1 + *(v16 + 36));
  if (v25 != 10)
  {
    if (sub_24A596B24(v25) == 0xD000000000000018 && 0x800000024A63CCD0 == v30)
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_24A62F634();
    }

    if (v17 != 2)
    {
      goto LABEL_32;
    }

LABEL_49:
    if (v26)
    {
      v31 = 2;
    }

    else
    {
      v31 = 10;
    }

    v11 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState);
    *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState) = v31;
    goto LABEL_7;
  }

LABEL_31:
  v26 = 0;
  if (v17 == 2)
  {
    goto LABEL_49;
  }

LABEL_32:
  if (v17 == 3)
  {
    if (v26)
    {
      v27 = 1;
    }

    else
    {
      v27 = 10;
    }
  }

  else
  {
    if (v17)
    {
      v27 = 8;
    }

    else
    {
      v27 = 9;
    }

    if ((v26 & 1) == 0)
    {
      v27 = 10;
    }
  }

  v28 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState) = v27;
  sub_24A5FFD04(v28);
  v29 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isRanging);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isRanging) = (v26 & 1) == 0;

  sub_24A5FFB58(v29);
}

id sub_24A5FDD70(uint64_t a1, char a2, char a3)
{
  if ((a1 & 0x100000000) != 0)
  {
    return 0;
  }

  v4 = a1;
  v5 = 0;
  v6 = 0xD000000000000018;
  if (a1 > 127)
  {
    if (a1 > 1023)
    {
      if (a1 <= 4095)
      {
        if (a1 != 1024)
        {
          if (a1 == 2048)
          {
            v83 = sub_24A5D2200(0xD000000000000019, 0x800000024A6430C0);
            v84 = v7;

            MEMORY[0x24C21A5D0](10, 0xE100000000000000);

            v9 = v83;
            v8 = v84;
            v10 = "BT_DIRECTION_CLOSE_HINT_2";
LABEL_43:
            v29 = (v10 - 32);
            v15 = 0xD000000000000019;
            goto LABEL_46;
          }

          return v5;
        }

        v83 = sub_24A5D2200(0xD000000000000018, 0x800000024A643060);
        v84 = v30;

        MEMORY[0x24C21A5D0](10, 0xE100000000000000);

        v9 = v83;
        v8 = v84;
        v31 = "BT_DIRECTION_NEAR_HINT_2";
        goto LABEL_41;
      }

      if (a1 == 4096)
      {
        v83 = sub_24A5D2200(0xD00000000000001ALL, 0x800000024A643100);
        v84 = v32;

        MEMORY[0x24C21A5D0](10, 0xE100000000000000);

        v9 = v83;
        v8 = v84;
        v29 = "BT_DIRECTION_NEARBY_HINT_1";
        v15 = 0xD00000000000001ALL;
      }

      else
      {
        if (a1 != 0x2000)
        {
          return v5;
        }

        v9 = sub_24A5D2200(0xD000000000000028, 0x800000024A643180);
        v8 = v28;
        v29 = "DISTANCE_CONNECTED_HINT1";
        v15 = 0xD000000000000028;
      }

LABEL_46:
      v14 = v29 | 0x8000000000000000;
      goto LABEL_47;
    }

    switch(a1)
    {
      case 0x80:
        v9 = sub_24A5D2200(0xD00000000000001CLL, 0x800000024A643350);
        v8 = v33;
        v34 = "R1_DIRECTION_ABOVE_YOU_HINT2";
        break;
      case 0x100:
        v9 = sub_24A5D2200(0xD00000000000001CLL, 0x800000024A643310);
        v8 = v35;
        v34 = "R1_DIRECTION_BELOW_YOU_HINT2";
        break;
      case 0x200:
        v83 = sub_24A5D2200(0xD000000000000017, 0x800000024A643140);
        v84 = v13;

        MEMORY[0x24C21A5D0](10, 0xE100000000000000);

        v9 = v83;
        v8 = v84;
        v12 = "BT_DIRECTION_FAR_HINT_2";
LABEL_17:
        v14 = (v12 - 32) | 0x8000000000000000;
        v15 = 0xD000000000000017;
LABEL_47:
        v78 = sub_24A5D2200(v15, v14);
        v79 = v42;
LABEL_48:
        v43 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v43 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (v43)
        {
          goto LABEL_54;
        }

        v44 = HIBYTE(v79) & 0xF;
        if ((v79 & 0x2000000000000000) == 0)
        {
          v44 = v78 & 0xFFFFFFFFFFFFLL;
        }

        if (v44)
        {
LABEL_54:
          v77 = v4;
          sub_24A508FA4(&qword_27EF4F408, &qword_24A633B30);
          inited = swift_initStackObject();
          v80 = xmmword_24A633830;
          inited[1] = xmmword_24A633830;
          v46 = *MEMORY[0x277D740C0];
          *(inited + 4) = *MEMORY[0x277D740C0];
          v47 = inited + 2;
          v48 = qword_27EF4EAD0;
          v49 = v46;
          if (v48 != -1)
          {
            goto LABEL_93;
          }

          while (1)
          {
            v50 = qword_27EF5C7D8;
            v51 = sub_24A50D7EC(0, &qword_27EF4F418, 0x277D75348);
            *(inited + 8) = v51;
            *(inited + 5) = v50;
            v52 = v50;
            sub_24A59C378(inited);
            swift_setDeallocating();
            sub_24A50D6A4(v47, &qword_27EF4F420, qword_24A633B40);
            v53 = swift_initStackObject();
            *(v53 + 16) = v80;
            *(v53 + 32) = v49;
            v47 = (v53 + 32);
            v54 = qword_27EF5C7E0;
            *(v53 + 64) = v51;
            *(v53 + 40) = v54;
            v55 = v54;
            *&v80 = sub_24A59C378(v53);
            swift_setDeallocating();
            sub_24A50D6A4(v53 + 32, &qword_27EF4F420, qword_24A633B40);
            v5 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
            v56 = sub_24A5D2200(v6 - 5, 0x800000024A6430A0);
            inited = v57;
            v83 = v56;
            v84 = v57;
            v58 = sub_24A55BEBC();
            v59 = MEMORY[0x24C21AB40](124, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v58);

            v60 = *(v59 + 16);
            if (!v60)
            {
LABEL_80:

              return v5;
            }

            v6 = 0;
            v76 = *MEMORY[0x277D74118];
            v61 = (v59 + 56);
            while (v6 < *(v59 + 16))
            {
              v64 = *(v61 - 1);
              v49 = *v61;
              v47 = (*(v61 - 3) >> 16);
              inited = (*(v61 - 2) >> 16);
              if (v64 == 2371877)
              {
                v66 = v49 == 0xE300000000000000 && v47 == 0 && inited == 3;
                if (!v66 && (sub_24A62F604() & 1) == 0)
                {
                  goto LABEL_76;
                }
              }

              else
              {
                LOBYTE(v75) = 0;
                if ((sub_24A62F604() & 1) == 0)
                {
                  if (v64 != 2372133 || v49 != 0xE300000000000000 || v47 || inited != 3)
                  {
LABEL_76:
                    LOBYTE(v75) = 0;
                    if ((sub_24A62F604() & 1) == 0)
                    {
                      goto LABEL_59;
                    }
                  }

                  v67 = objc_allocWithZone(MEMORY[0x277CCAB48]);

                  v47 = sub_24A62EBE4();
                  _s3__C3KeyVMa_0(0);
                  sub_24A604110(&qword_27EF4F200, _s3__C3KeyVMa_0, &unk_24A6337AC);
                  v68 = sub_24A62EB74();
                  if (v77 == 64)
                  {
                    v69 = [v67 initWithString:v47 attributes:v68];

                    v70 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
                    [v70 setLineSpacing_];
                    inited = v70;
                    [v69 addAttribute:v76 value:inited range:{0, objc_msgSend(v69, sel_length)}];

                    [v5 appendAttributedString_];
                  }

                  else
                  {
                    inited = [v67 initWithString:v47 attributes:{v68, v75}];

                    [v5 appendAttributedString_];
                  }

                  goto LABEL_58;
                }
              }

              v62 = objc_allocWithZone(MEMORY[0x277CCA898]);

              v47 = sub_24A62EBE4();
              _s3__C3KeyVMa_0(0);
              sub_24A604110(&qword_27EF4F200, _s3__C3KeyVMa_0, &unk_24A6337AC);
              v63 = sub_24A62EB74();
              inited = [v62 initWithString:v47 attributes:v63];

              [v5 appendAttributedString_];
LABEL_58:

LABEL_59:
              ++v6;
              v61 += 4;
              if (v60 == v6)
              {
                goto LABEL_80;
              }
            }

            __break(1u);
LABEL_93:
            swift_once();
          }
        }

        return 0;
      default:
        return v5;
    }

    v29 = (v34 - 32);
    v15 = 0xD00000000000001CLL;
    goto LABEL_46;
  }

  if (a1 <= 15)
  {
    if (a1 == 2)
    {
      v9 = sub_24A5D2200(0xD00000000000001BLL, 0x800000024A643490);
      v8 = v37;
      if (a3)
      {
        v38 = "R1_DIRECTION_IN_FRONT_HINT3";
      }

      else
      {
        v38 = "R1_DIRECTION_IN_FRONT_HINT2";
      }

      v29 = (v38 - 32);
      v15 = 0xD00000000000001BLL;
      goto LABEL_46;
    }

    if (a1 != 4)
    {
      if (a1 != 8)
      {
        return v5;
      }

      v9 = sub_24A5D2200(0xD000000000000017, 0x800000024A643410);
      v8 = v11;
      v12 = "R1_DIRECTION_LEFT_HINT2";
      goto LABEL_17;
    }

    v9 = sub_24A5D2200(0xD000000000000018, 0x800000024A643450);
    v8 = v40;
    v31 = "R1_DIRECTION_AHEAD_HINT2";
LABEL_41:
    v14 = (v31 - 32) | 0x8000000000000000;
    v15 = 0xD000000000000018;
    goto LABEL_47;
  }

  switch(a1)
  {
    case 0x10:
      v9 = sub_24A5D2200(0xD000000000000018, 0x800000024A6433D0);
      v8 = v39;
      v31 = "R1_DIRECTION_RIGHT_HINT2";
      goto LABEL_41;
    case 0x20:
      v9 = sub_24A5D2200(0xD000000000000019, 0x800000024A643390);
      v8 = v41;
      v10 = "R1_DIRECTION_BEHIND_HINT2";
      goto LABEL_43;
    case 0x40:
      sub_24A508AE4(v3 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, &v83);
      v17 = v85;
      v18 = v86;
      sub_24A50A204(&v83, v85);
      (*(v18 + 24))(v81, v17, v18);
      v19 = v81[0];
      v20 = v81[1];
      v21 = v81[2];
      v22 = v82;
      sub_24A508C54(&v83);
      if (v22 == 1)
      {

        v9 = sub_24A5D22F4(0xD00000000000002CLL, 0x800000024A643270);
        v8 = v23;
        if (a2)
        {
          v24 = 0xD000000000000030;
        }

        else
        {
          v24 = 0xD00000000000002CLL;
        }

        if (a2)
        {
          v25 = "SON_ABOVE_OR_BELOW_YOU_HINT2";
        }

        else
        {
          v25 = "SON_ABOVE_OR_BELOW_YOU_HINT1";
        }

        v26 = sub_24A5D22F4(v24, v25 | 0x8000000000000000);
      }

      else
      {
        sub_24A55B284(v19, v20, v21, v22);
        v9 = sub_24A5D2200(0xD000000000000025, 0x800000024A6431E0);
        v8 = v72;
        if (a2)
        {
          v73 = 0xD000000000000029;
        }

        else
        {
          v73 = 0xD000000000000025;
        }

        if (a2)
        {
          v74 = "VE_OR_BELOW_YOU_HINT2";
        }

        else
        {
          v74 = "VE_OR_BELOW_YOU_HINT1";
        }

        v26 = sub_24A5D2200(v73, v74 | 0x8000000000000000);
      }

      v78 = v26;
      v79 = v27;

      goto LABEL_48;
  }

  return v5;
}

unint64_t sub_24A5FE88C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x65676E6168636E75;
    v7 = 0x6F4D7463656A626FLL;
    v8 = 0xD000000000000014;
    if (a1 != 3)
    {
      v8 = 0x6172656E65676564;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6E69686372616573;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0xD00000000000001ELL;
    if (a1 != 9)
    {
      v1 = 0x7974706D65;
    }

    if (a1 != 8)
    {
      v2 = v1;
    }

    v3 = 0xD000000000000014;
    v4 = 0xD000000000000019;
    if (a1 != 6)
    {
      v4 = 0x45676E69676E6172;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_24A5FEA14(char a1)
{
  result = 0x6F4D7463656A626FLL;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
    case 10:
      result = 0xD000000000000019;
      break;
    case 4:
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      return result;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x6172656E65676564;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x45676E69676E6172;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0x7974706D65;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

unint64_t sub_24A5FEC04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A603E7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24A5FEC34@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A5FE88C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A5FED70(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_24A62F634();
  }

  return v12 & 1;
}

unint64_t sub_24A5FEE04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A603EC8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24A5FEE34@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A5FEA14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A5FEE78(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_24A62F714();
  a3(v5);
  sub_24A62EC74();

  return sub_24A62F754();
}

double sub_24A5FEEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_24A62EC74();

  return result;
}

uint64_t sub_24A5FEF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_24A62F714();
  a4(v6);
  sub_24A62EC74();

  return sub_24A62F754();
}

void *sub_24A5FF084(void *a1, char *a2)
{
  v4 = *a2;
  v5 = &v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_constants];
  *v5 = xmmword_24A63BA20;
  *(v5 + 1) = xmmword_24A63BA30;
  *(v5 + 4) = 6;
  *&v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_previousInState] = 11;
  v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState] = 14;
  *&v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingDelayWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_tryMovingNoBTConnectionWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingWithBTConnectionWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_stillSearchingWithBTConnectionWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionCount] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isBTConnected] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isRanging] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState] = 10;
  sub_24A508AE4(a1, &v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable]);
  v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_experienceType] = v4;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for FMR1InstructionsController();
  v6 = objc_msgSendSuper2(&v16, sel_init);
  v7 = qword_27EF4E9A0;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_24A62E314();
  sub_24A506EB8(v9, qword_27EF5C118);
  v10 = sub_24A62E2F4();
  v11 = sub_24A62EF64();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v8;
    *v13 = v8;
    v14 = v8;
    _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMR1InstrCtrl%@: init", v12, 0xCu);
    sub_24A50D6A4(v13, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v13, -1, -1);
    MEMORY[0x24C21BBE0](v12, -1, -1);
  }

  sub_24A508C54(a1);
  return v8;
}

id sub_24A5FF2F4()
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24A62E314();
  sub_24A506EB8(v1, qword_27EF5C118);
  v2 = v0;
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = [v2 description];
    v8 = sub_24A62EC14();
    v10 = v9;

    v11 = sub_24A509BA8(v8, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMR1InstrCtrl%s: deinit", v5, 0xCu);
    sub_24A508C54(v6);
    MEMORY[0x24C21BBE0](v6, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v12 = type metadata accessor for FMR1InstructionsController();
  v15.receiver = v2;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

void sub_24A5FF5BC(char a1, __n128 result)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isBTConnected;
  if (v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isBTConnected] == (a1 & 1))
  {
    return;
  }

  v4 = v2;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v5 = sub_24A62E314();
  sub_24A506EB8(v5, qword_27EF5C118);
  v6 = v2;
  v7 = sub_24A62E2F4();
  v8 = sub_24A62EF64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v42 = v11;
    *v9 = 138412802;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v4[v3];
    *(v9 + 18) = 2080;
    v12 = sub_24A62EC44();
    v14 = sub_24A509BA8(v12, v13, &v42);

    *(v9 + 20) = v14;
    _os_log_impl(&dword_24A503000, v7, v8, "🧭 FMR1InstrCtrl%@: set isBTConnected to %{BOOL}d: outState: %s", v9, 0x1Cu);
    sub_24A50D6A4(v10, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v10, -1, -1);
    sub_24A508C54(v11);
    MEMORY[0x24C21BBE0](v11, -1, -1);
    MEMORY[0x24C21BBE0](v9, -1, -1);
  }

  else
  {
  }

  if (v4[v3] != 1)
  {
    v20 = v6;
    v21 = sub_24A62E2F4();
    v22 = sub_24A62EF64();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_24A503000, v21, v22, "🧭 FMR1InstrCtrl%@: bt connected false don't understand", v23, 0xCu);
      sub_24A50D6A4(v24, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v24, -1, -1);
      MEMORY[0x24C21BBE0](v23, -1, -1);
    }

    v26 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
    if (sub_24A5FEA14(v20[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState]) != 0xD000000000000019 || 0x800000024A63D030 != v27)
    {
      v28 = sub_24A62F634();

      if (v28)
      {
        goto LABEL_23;
      }

      if (sub_24A5FEA14(v20[v26]) != 0xD00000000000001ELL || 0x800000024A63D050 != v35)
      {
        v36 = sub_24A62F634();

        if (v36)
        {
          goto LABEL_23;
        }

        if (sub_24A5FEA14(v20[v26]) != 0xD000000000000016 || 0x800000024A63D070 != v37)
        {
          v38 = sub_24A62F634();

          if ((v38 & 1) == 0)
          {
            return;
          }

          goto LABEL_23;
        }
      }
    }

LABEL_23:
    v29 = v20;
    v30 = sub_24A62E2F4();
    v31 = sub_24A62EF64();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&dword_24A503000, v30, v31, "🧭 FMR1InstrCtrl%@: UPDATINGGGGGG", v32, 0xCu);
      sub_24A50D6A4(v33, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v33, -1, -1);
      MEMORY[0x24C21BBE0](v32, -1, -1);
    }

    sub_24A600A64();
    return;
  }

  v15 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  if (sub_24A5FEA14(v6[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState]) == 0xD000000000000017 && 0x800000024A63CFD0 == v16)
  {
    goto LABEL_15;
  }

  v18 = sub_24A62F634();

  if (v18)
  {
LABEL_16:
    sub_24A60177C();
    return;
  }

  if (sub_24A5FEA14(v6[v15]) == 0xD000000000000017 && 0x800000024A63CFF0 == v19)
  {
    goto LABEL_15;
  }

  v39 = sub_24A62F634();

  if (v39)
  {
    goto LABEL_16;
  }

  if (sub_24A5FEA14(v6[v15]) == 0xD000000000000014 && 0x800000024A63D010 == v40)
  {
LABEL_15:

    goto LABEL_16;
  }

  v41 = sub_24A62F634();

  if (v41)
  {
    goto LABEL_16;
  }
}

void sub_24A5FFB58(char a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isRanging;
  if (v1[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isRanging] != (a1 & 1))
  {
    v3 = v1;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v4 = sub_24A62E314();
    sub_24A506EB8(v4, qword_27EF5C118);
    v5 = v1;
    v6 = sub_24A62E2F4();
    v7 = sub_24A62EF64();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 1024;
      *(v8 + 14) = v3[v2];
      _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1InstrCtrl%@: set isRanging to %{BOOL}d", v8, 0x12u);
      sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }

    else
    {

      v6 = v5;
    }

    if (v3[v2] == 1)
    {
      sub_24A600574();
      *(&v5->isa + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 14;
      sub_24A6002CC(0, 0, 0, 0, 14);
    }
  }
}

double sub_24A5FFD04(unsigned __int8 a1)
{
  v1[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_previousInState] = a1;
  v3 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState;
  v4 = sub_24A5FE88C(v1[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState]);
  v6 = v5;
  if (v4 == sub_24A5FE88C(a1) && v6 == v7)
  {
  }

  else
  {
    v9 = sub_24A62F634();

    if (v9)
    {
      return result;
    }

    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v11 = sub_24A62E314();
    sub_24A506EB8(v11, qword_27EF5C118);
    v12 = v1;
    v13 = v1;
    v14 = sub_24A62E2F4();
    v15 = sub_24A62EF64();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43 = v18;
      *v16 = 138412546;
      *(v16 + 4) = v13;
      *v17 = v13;
      *(v16 + 12) = 2080;
      v19 = v13;
      v20 = sub_24A62EC44();
      v22 = sub_24A509BA8(v20, v21, &v43);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_24A503000, v14, v15, "🧭 FMR1InstrCtrl%@: asking state '%s'", v16, 0x16u);
      sub_24A50D6A4(v17, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v17, -1, -1);
      sub_24A508C54(v18);
      MEMORY[0x24C21BBE0](v18, -1, -1);
      MEMORY[0x24C21BBE0](v16, -1, -1);
    }

    v23 = v12[v3];
    if (v23 <= 4)
    {
      if (v12[v3] <= 1u)
      {
        if (!v12[v3])
        {
          return result;
        }

        v30 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
        if (sub_24A5FEA14(v13[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState]) == 0x6F4D7463656A626FLL && v31 == 0xEC000000676E6976)
        {
          goto LABEL_54;
        }

        v32 = sub_24A62F634();

        if (v32)
        {
          return result;
        }

        if (sub_24A5FEA14(v13[v30]) == 0x6172656E65676564 && v33 == 0xEF68746150646574)
        {
          goto LABEL_54;
        }

        v34 = sub_24A62F634();

        if ((v34 & 1) == 0)
        {
          *&v13[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionCount] = 0;
          sub_24A600684();
        }
      }

      else if (v23 == 2)
      {
        return sub_24A6026EC();
      }

      else if (v23 == 3)
      {
        v13[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState] = 7;
      }

      else
      {
        return sub_24A602B84();
      }
    }

    else
    {
      if (v12[v3] <= 7u)
      {
        if (v23 == 5)
        {
          return sub_24A602F00();
        }

        if (v23 == 6)
        {
          return sub_24A60327C();
        }

        return sub_24A603624();
      }

      if (v23 == 8)
      {
        v35 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
        if (sub_24A5FEA14(v13[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState]) != 0x6F4D7463656A626FLL || v36 != 0xEC000000676E6976)
        {
          v37 = sub_24A62F634();

          if (v37)
          {
            return result;
          }

          if (sub_24A5FEA14(v13[v35]) != 0x6172656E65676564 || v38 != 0xEF68746150646574)
          {
            v39 = sub_24A62F634();

            if (v39)
            {
              return result;
            }

            v29 = 1;
LABEL_49:
            sub_24A60220C(v29);
            return result;
          }
        }

LABEL_54:

        return result;
      }

      if (v23 == 9)
      {
        v24 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
        if (sub_24A5FEA14(v13[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState]) != 0x6F4D7463656A626FLL || v25 != 0xEC000000676E6976)
        {
          v26 = sub_24A62F634();

          if (v26)
          {
            return result;
          }

          if (sub_24A5FEA14(v13[v24]) != 0x6172656E65676564 || v27 != 0xEF68746150646574)
          {
            v28 = sub_24A62F634();

            if (v28)
            {
              return result;
            }

            v29 = 0;
            goto LABEL_49;
          }
        }

        goto LABEL_54;
      }

      v40 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
      if (sub_24A5FEA14(v13[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState]) == 0x6F4D7463656A626FLL && v41 == 0xEC000000676E6976)
      {
        goto LABEL_54;
      }

      v42 = sub_24A62F634();

      if ((v42 & 1) == 0)
      {
        sub_24A600574();
        v13[v40] = 14;
        sub_24A6002CC(0, 0, 0, 0, 14);
      }
    }
  }

  return result;
}

uint64_t sub_24A6002CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v11 = sub_24A62E314();
  sub_24A506EB8(v11, qword_27EF5C118);

  v12 = v5;
  v13 = sub_24A62E2F4();
  v14 = sub_24A62EF64();

  v32 = a1;
  if (os_log_type_enabled(v13, v14))
  {
    v30 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v17;
    *v15 = 138412802;
    *(v15 + 4) = v12;
    *v16 = v12;
    *(v15 + 12) = 2080;
    v31 = a4;
    if (a2)
    {
      v18 = a1;
    }

    else
    {
      v18 = 7104878;
    }

    if (a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = v12;

    v21 = sub_24A509BA8(v18, v19, &v33);

    *(v15 + 14) = v21;
    *(v15 + 22) = 2080;
    v22 = sub_24A62EC44();
    v24 = sub_24A509BA8(v22, v23, &v33);

    *(v15 + 24) = v24;
    a4 = v31;
    _os_log_impl(&dword_24A503000, v13, v14, "🧭 FMR1InstrCtrl%@: message=%s, state='%s'", v15, 0x20u);
    sub_24A50D6A4(v16, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v17, -1, -1);
    v25 = v15;
    a3 = v30;
    MEMORY[0x24C21BBE0](v25, -1, -1);
  }

  v26 = &v12[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 1);
    ObjectType = swift_getObjectType();
    (*(v28 + 8))(v12, v32, a2, a3, a4, a5, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_24A600574()
{
  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem))
  {

    sub_24A62EB34();
  }

  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_stillSearchingWithBTConnectionWorkItem))
  {

    sub_24A62EB34();
  }

  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingWithBTConnectionWorkItem))
  {

    sub_24A62EB34();
  }

  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_tryMovingNoBTConnectionWorkItem))
  {

    sub_24A62EB34();
  }

  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionWorkItem))
  {

    sub_24A62EB34();
  }

  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingDelayWorkItem))
  {

    sub_24A62EB34();
  }

  return result;
}

uint64_t sub_24A600684()
{
  v15[0] = sub_24A62EB14();
  v1 = *(v15[0] - 8);
  MEMORY[0x28223BE20](v15[0]);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v15 - v5;
  v7 = sub_24A62EA94();
  MEMORY[0x28223BE20](v7);
  sub_24A600574();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24A604108;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DAB0B0;
  _Block_copy(aBlock);
  v15[1] = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  sub_24A62EB44();
  swift_allocObject();
  v9 = sub_24A62EB24();

  *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingDelayWorkItem) = v9;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v10 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v11 = *(v1 + 8);
  v12 = v3;
  v13 = v15[0];
  v11(v12, v15[0]);
  sub_24A62EFE4();

  return v11(v6, v13);
}

void sub_24A6009A4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isRanging) == 1)
    {
      sub_24A600574();
      v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState] = 14;
      sub_24A6002CC(0, 0, 0, 0, 14);
    }

    else if (*(Strong + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_isBTConnected) == 1)
    {
      sub_24A60177C();
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionCount) = 0;
      sub_24A600A64();
    }
  }
}

void sub_24A600A64()
{
  v1 = v0;
  v2 = 0xD00000000000001BLL;
  v3 = sub_24A62EB14();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v43 = sub_24A62EA94();
  MEMORY[0x28223BE20](v43);
  sub_24A600574();
  v9 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable;
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, aBlock);
  v10 = v49;
  v11 = v50;
  sub_24A50A204(aBlock, v49);
  (*(v11 + 3))(&v52, v10, v11);
  v12 = v52;
  v13 = v53;
  v14 = v54;
  v15 = v55;
  sub_24A595770(v52, v53, v54, v55);
  sub_24A508C54(aBlock);
  if (v15 == 1)
  {

    v16 = sub_24A5D22F4(0xD000000000000021, 0x800000024A6440E0);
  }

  else
  {
    sub_24A55B284(v12, v13, v14, v15);
    v16 = sub_24A5D2200(0xD00000000000001FLL, 0x800000024A644150);
  }

  v18 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_experienceType);
  v44 = v16;
  v45 = v17;
  if (v18 == 2)
  {
    sub_24A55B284(v12, v13, v14, v15);
    sub_24A508AE4(v1 + v9, aBlock);
    v19 = v49;
    v20 = v50;
    sub_24A50A204(aBlock, v49);
    (*(v20 + 3))(&v52, v19, v20);
    v41 = v53;
    v42 = v52;
    v40 = v54;
    v21 = v55;
    sub_24A508C54(aBlock);
    sub_24A508AE4(v1 + v9, aBlock);
    v22 = v49;
    v23 = v50;
    sub_24A50A204(aBlock, v49);
    (*(v23 + 3))(&v52, v22, v23);
    v24 = v53;
    if (v55)
    {
      if (v55 == 1)
      {
        sub_24A55B284(v52, v53, v54, 1);
      }

      v24 = 0;
    }

    sub_24A508C54(aBlock);
    if (v21)
    {
      sub_24A55B284(v42, v41, v40, v21);
      v25 = "R1_SEARCHING_FOR_ITEM_NO_BT_TOP";
    }

    else
    {
      if (v24)
      {
        v2 = 0xD00000000000001ALL;
      }

      else
      {
        v2 = 0xD000000000000015;
      }

      if (v24)
      {
        v25 = "BT_SEARCHING_FOR_ITEM";
      }

      else
      {
        v25 = "R1_SEARCHING_FOR_ITEM_NO_BT";
      }
    }

    sub_24A508AE4(v1 + v9, aBlock);
    v42 = sub_24A604220(v2, v25 | 0x8000000000000000, aBlock);
    v31 = v32;

    sub_24A508C54(aBlock);
    goto LABEL_23;
  }

  v26 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionCount);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionCount) = v28;
    if (v15 == 1)
    {

      v29 = sub_24A5D22F4(0xD00000000000001DLL, 0x800000024A6440C0);
    }

    else
    {
      sub_24A55B284(v12, v13, v14, v15);
      v29 = sub_24A5D2200(0xD00000000000001BLL, 0x800000024A644170);
    }

    v42 = v29;
    v31 = v30;
LABEL_23:
    v33 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
    *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 0;
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = sub_24A6040D8;
    v51 = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    v49 = &unk_285DAB088;
    _Block_copy(aBlock);
    v52 = MEMORY[0x277D84F90];
    sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    sub_24A62EB44();
    swift_allocObject();
    v35 = sub_24A62EB24();

    *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionWorkItem) = v35;

    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v36 = sub_24A62F014();
    sub_24A62EB04();
    sub_24A62EB54();
    v37 = *(v46 + 8);
    v38 = v5;
    v39 = v47;
    v37(v38, v47);
    sub_24A62EFE4();

    v37(v8, v39);
    sub_24A6002CC(v42, v31, v44, v45, *(v1 + v33));

    return;
  }

  __break(1u);
}

double sub_24A60109C()
{
  v1 = v0;
  v2 = sub_24A62EB14();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = sub_24A62EA94();
  MEMORY[0x28223BE20](v8);
  sub_24A600574();
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, aBlock);
  v9 = v36;
  v10 = v37;
  sub_24A50A204(aBlock, v36);
  (*(v10 + 3))(&v39, v9, v10);
  v11 = v39;
  v12 = v40;
  v13 = v41;
  v14 = v42;
  sub_24A595770(v39, v40, v41, v42);
  sub_24A508C54(aBlock);
  if (v14 == 1)
  {

    v31 = sub_24A5D22F4(0xD000000000000021, 0x800000024A6440E0);
    v32 = v15;

    v16 = sub_24A5D22F4(0xD00000000000001DLL, 0x800000024A6440C0);
  }

  else
  {
    sub_24A55B284(v11, v12, v13, v14);
    v31 = sub_24A5D2200(0xD000000000000017, 0x800000024A644110);
    v32 = v18;
    sub_24A55B284(v11, v12, v13, v14);
    v16 = sub_24A5D2200(0xD000000000000013, 0x800000024A644130);
  }

  v29 = v16;
  v30 = v17;
  v19 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 1;
  v20 = *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingNoBTConnectionCount) < 6;
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v20;
  v37 = sub_24A6040CC;
  v38 = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  v36 = &unk_285DAB060;
  _Block_copy(aBlock);
  v39 = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  sub_24A62EB44();
  swift_allocObject();
  v23 = sub_24A62EB24();

  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_tryMovingNoBTConnectionWorkItem) = v23;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v24 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v25 = *(v33 + 8);
  v26 = v4;
  v27 = v34;
  v25(v26, v34);
  sub_24A62EFE4();

  v25(v7, v27);
  sub_24A6002CC(v29, v30, v31, v32, *(v1 + v19));

  return result;
}

void sub_24A601564(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      sub_24A600A64();
    }

    else
    {
      sub_24A6015C8();
    }
  }
}

double sub_24A6015C8()
{
  v1 = v0;
  sub_24A600574();
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, v19);
  v2 = v20;
  v3 = v21;
  sub_24A50A204(v19, v20);
  (*(v3 + 24))(&v15, v2, v3);
  v4 = v15;
  v5 = v16;
  v6 = v17;
  v7 = v18;
  sub_24A595770(v15, v16, v17, v18);
  sub_24A508C54(v19);
  if (v7 == 1)
  {

    v8 = sub_24A5D22F4(0xD000000000000021, 0x800000024A6440E0);
    v10 = v9;

    v11 = sub_24A5D22F4(0xD00000000000001DLL, 0x800000024A6440C0);
  }

  else
  {
    sub_24A55B284(v4, v5, v6, v7);
    v8 = sub_24A5D2200(0xD00000000000001ELL, 0x800000024A644080);
    v10 = v13;
    sub_24A55B284(v4, v5, v6, v7);
    v11 = sub_24A5D2200(0xD00000000000001ALL, 0x800000024A6440A0);
  }

  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 2;
  sub_24A6002CC(v11, v12, v8, v10, 2);

  return result;
}

double sub_24A60177C()
{
  v1 = v0;
  v2 = sub_24A62EB14();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_24A62EA94();
  MEMORY[0x28223BE20](v8);
  sub_24A600574();
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, aBlock);
  v9 = v34;
  v10 = v35;
  sub_24A50A204(aBlock, v34);
  (*(v10 + 3))(v37, v9, v10);
  v11 = v37[0];
  v12 = v37[1];
  v13 = v37[2];
  v14 = v38;
  sub_24A508C54(aBlock);
  if (v14 == 1)
  {

    v15 = sub_24A5D22F4(0xD000000000000023, 0x800000024A643F30);
  }

  else
  {
    sub_24A55B284(v11, v12, v13, v14);
    v15 = sub_24A5D2200(0xD000000000000021, 0x800000024A643EA0);
  }

  v29 = v15;
  v30 = v16;
  v17 = sub_24A5D2200(0xD00000000000001DLL, 0x800000024A644060);
  v27 = v18;
  v28 = v17;
  v19 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 3;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = sub_24A60409C;
  v36 = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  v34 = &unk_285DAB010;
  _Block_copy(aBlock);
  v37[0] = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  sub_24A62EB44();
  swift_allocObject();
  v21 = sub_24A62EB24();

  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingWithBTConnectionWorkItem) = v21;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v22 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v23 = *(v31 + 8);
  v24 = v4;
  v25 = v32;
  v23(v24, v32);
  sub_24A62EFE4();

  v23(v7, v25);
  sub_24A6002CC(v28, v27, v29, v30, *(v1 + v19));

  return result;
}

double sub_24A601BBC()
{
  v1 = v0;
  v2 = sub_24A62EB14();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_24A62EA94();
  MEMORY[0x28223BE20](v8);
  sub_24A600574();
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, aBlock);
  v9 = v34;
  v10 = v35;
  sub_24A50A204(aBlock, v34);
  (*(v10 + 3))(v37, v9, v10);
  v11 = v37[0];
  v12 = v37[1];
  v13 = v37[2];
  v14 = v38;
  sub_24A508C54(aBlock);
  if (v14 == 1)
  {

    v15 = sub_24A5D22F4(0xD000000000000029, 0x800000024A644030);
  }

  else
  {
    sub_24A55B284(v11, v12, v13, v14);
    v15 = sub_24A5D2200(0xD000000000000027, 0x800000024A643FD0);
  }

  v29 = v15;
  v30 = v16;
  v17 = sub_24A5D2200(0xD000000000000023, 0x800000024A644000);
  v27 = v18;
  v28 = v17;
  v19 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 4;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = sub_24A60406C;
  v36 = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  v34 = &unk_285DAAFE8;
  _Block_copy(aBlock);
  v37[0] = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  sub_24A62EB44();
  swift_allocObject();
  v21 = sub_24A62EB24();

  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_stillSearchingWithBTConnectionWorkItem) = v21;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v22 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v23 = *(v31 + 8);
  v24 = v4;
  v25 = v32;
  v23(v24, v32);
  sub_24A62EFE4();

  v23(v7, v25);
  sub_24A6002CC(v28, v27, v29, v30, *(v1 + v19));

  return result;
}

void sub_24A601FFC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

double sub_24A602058()
{
  v1 = v0;
  sub_24A600574();
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, v19);
  v2 = v20;
  v3 = v21;
  sub_24A50A204(v19, v20);
  (*(v3 + 24))(&v15, v2, v3);
  v4 = v15;
  v5 = v16;
  v6 = v17;
  v7 = v18;
  sub_24A595770(v15, v16, v17, v18);
  sub_24A508C54(v19);
  if (v7 == 1)
  {

    v8 = sub_24A5D22F4(0xD000000000000021, 0x800000024A643FA0);
    v10 = v9;

    v11 = sub_24A5D22F4(0xD00000000000001DLL, 0x800000024A643ED0);
  }

  else
  {
    sub_24A55B284(v4, v5, v6, v7);
    v8 = sub_24A5D2200(0xD00000000000001FLL, 0x800000024A643F60);
    v10 = v13;
    sub_24A55B284(v4, v5, v6, v7);
    v11 = sub_24A5D2200(0xD00000000000001BLL, 0x800000024A643F80);
  }

  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 5;
  sub_24A6002CC(v11, v12, v8, v10, 5);

  return result;
}

uint64_t sub_24A60220C(char a1)
{
  v18[0] = sub_24A62EB14();
  v3 = *(v18[0] - 8);
  MEMORY[0x28223BE20](v18[0]);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  v9 = sub_24A62EA94();
  MEMORY[0x28223BE20](v9);
  sub_24A600574();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_24A604060;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DAAFC0;
  _Block_copy(aBlock);
  v18[1] = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  sub_24A62EB44();
  swift_allocObject();
  v12 = sub_24A62EB24();

  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_searchingDelayWorkItem) = v12;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v13 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v14 = *(v3 + 8);
  v15 = v5;
  v16 = v18[0];
  v14(v15, v18[0]);
  sub_24A62EFE4();

  return v14(v8, v16);
}

double sub_24A60254C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24A508AE4(Strong + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, v23);
    v6 = v24;
    v7 = v25;
    sub_24A50A204(v23, v24);
    (*(v7 + 24))(v21, v6, v7);
    v8 = v21[0];
    v9 = v21[1];
    v10 = v21[2];
    v11 = v22;
    sub_24A508C54(v23);
    if (v11 == 1)
    {

      v12 = sub_24A5D22F4(0xD000000000000023, 0x800000024A643F30);
    }

    else
    {
      sub_24A55B284(v8, v9, v10, v11);
      v12 = sub_24A5D2200(0xD000000000000021, 0x800000024A643EA0);
    }

    v14 = v12;
    v15 = v13;
    v16 = "_ITEM_WITH_BT_TOP";
    if (a2)
    {
      v16 = "NI_UNREACHABLE_FRIEND_WITH_BT";
      v17 = 0xD000000000000032;
    }

    else
    {
      v17 = 0xD00000000000001DLL;
    }

    if (a2)
    {
      v18 = 12;
    }

    else
    {
      v18 = 13;
    }

    v19 = sub_24A5D22F4(v17, v16 | 0x8000000000000000);
    v5[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState] = v18;
    sub_24A6002CC(v19, v20, v14, v15, v18);
  }

  return result;
}

double sub_24A6026EC()
{
  v1 = v0;
  v2 = sub_24A62EB14();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_24A62EA94();
  MEMORY[0x28223BE20](v8);
  sub_24A600574();
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_findable, aBlock);
  v9 = v34;
  v10 = v35;
  sub_24A50A204(aBlock, v34);
  (*(v10 + 3))(&v37, v9, v10);
  v11 = v37;
  v12 = v38;
  v13 = v39;
  v14 = v40;
  sub_24A595770(v37, v38, v39, v40);
  sub_24A508C54(aBlock);
  if (v14 == 1)
  {

    v29 = sub_24A5D22F4(0xD000000000000026, 0x800000024A643E70);
    v30 = v15;

    v16 = sub_24A5D22F4(0xD00000000000002ELL, 0x800000024A643E40);
  }

  else
  {
    sub_24A55B284(v11, v12, v13, v14);
    v29 = sub_24A5D2200(0xD000000000000024, 0x800000024A643DE0);
    v30 = v18;
    sub_24A55B284(v11, v12, v13, v14);
    v16 = sub_24A5D2200(0xD00000000000002CLL, 0x800000024A643E10);
  }

  v27 = v16;
  v28 = v17;
  v19 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 6;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = sub_24A60400C;
  v36 = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  v34 = &unk_285DAAF70;
  _Block_copy(aBlock);
  v37 = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  sub_24A62EB44();
  swift_allocObject();
  v21 = sub_24A62EB24();

  *(v1 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem) = v21;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v22 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v23 = *(v31 + 8);
  v24 = v4;
  v25 = v32;
  v23(v24, v32);
  sub_24A62EFE4();

  v23(v7, v25);
  sub_24A6002CC(v27, v28, v29, v30, *(v1 + v19));

  return result;
}

double sub_24A602B84()
{
  v1 = v0;
  v22 = sub_24A62EB14();
  v2 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = sub_24A62EA94();
  MEMORY[0x28223BE20](v8);
  sub_24A600574();
  v9 = sub_24A5D2200(0xD000000000000020, 0x800000024A643DB0);
  v20 = v10;
  v21 = v9;
  v19 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 8;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24A6041F4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DAAF48;
  _Block_copy(aBlock);
  v23 = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  sub_24A62EB44();
  swift_allocObject();
  v12 = sub_24A62EB24();

  *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem) = v12;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v13 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v14 = *(v2 + 8);
  v15 = v4;
  v16 = v22;
  v14(v15, v22);
  sub_24A62EFE4();

  v14(v7, v16);
  sub_24A6002CC(v21, v20, 0, 0, *(v1 + v19));

  return result;
}

double sub_24A602F00()
{
  v1 = v0;
  v22 = sub_24A62EB14();
  v2 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = sub_24A62EA94();
  MEMORY[0x28223BE20](v8);
  sub_24A600574();
  v9 = sub_24A5D2200(0xD000000000000029, 0x800000024A643D80);
  v20 = v10;
  v21 = v9;
  v19 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 9;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24A6041F4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DAAF20;
  _Block_copy(aBlock);
  v23 = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  sub_24A62EB44();
  swift_allocObject();
  v12 = sub_24A62EB24();

  *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem) = v12;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v13 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v14 = *(v2 + 8);
  v15 = v4;
  v16 = v22;
  v14(v15, v22);
  sub_24A62EFE4();

  v14(v7, v16);
  sub_24A6002CC(v21, v20, 0, 0, *(v1 + v19));

  return result;
}

double sub_24A60327C()
{
  v1 = v0;
  v26 = sub_24A62EB14();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = sub_24A62EA94();
  MEMORY[0x28223BE20](v8);
  sub_24A600574();
  v9 = sub_24A5D2200(0xD00000000000002ELL, 0x800000024A643D10);
  v24 = v10;
  v25 = v9;
  v11 = sub_24A5D2200(0xD000000000000036, 0x800000024A643D40);
  v22 = v12;
  v23 = v11;
  v21 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState) = 10;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24A6041F4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DAAEF8;
  _Block_copy(aBlock);
  v27 = MEMORY[0x277D84F90];
  sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  sub_24A62EB44();
  swift_allocObject();
  v14 = sub_24A62EB24();

  *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem) = v14;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v15 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v16 = *(v2 + 8);
  v17 = v4;
  v18 = v26;
  v16(v17, v26);
  sub_24A62EFE4();

  v16(v7, v18);
  sub_24A6002CC(v23, v22, v25, v24, *(v1 + v21));

  return result;
}

double sub_24A603624()
{
  v1 = sub_24A62EB14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - v6;
  v8 = sub_24A62EA94();
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState;
  if (sub_24A5FEA14(*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_outState)) == 0xD000000000000019 && 0x800000024A63CF60 == v10)
  {
  }

  else
  {
    v24 = v2;
    v12 = sub_24A62F634();

    if ((v12 & 1) == 0)
    {
      v14 = v0;
      sub_24A600574();
      v15 = sub_24A5D2200(0xD000000000000024, 0x800000024A643CE0);
      v22 = v16;
      v23 = v15;
      *(v0 + v9) = 11;
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_24A6041F4;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A5A8458;
      aBlock[3] = &unk_285DAAED0;
      v21[1] = _Block_copy(aBlock);
      v25 = MEMORY[0x277D84F90];
      sub_24A604110(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

      sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
      sub_24A529464();
      sub_24A62F254();
      sub_24A62EB44();
      swift_allocObject();
      v18 = sub_24A62EB24();

      *(v0 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_autoDismissWorkItem) = v18;

      sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
      v19 = sub_24A62F014();
      sub_24A62EB04();
      sub_24A62EB54();
      v20 = *(v24 + 8);
      v20(v4, v1);
      sub_24A62EFE4();

      v20(v7, v1);
      sub_24A6002CC(v23, v22, 0, 0, *(v14 + v9));
    }
  }

  return result;
}

void sub_24A603A1C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState);
    v2[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState] = 3;
    sub_24A5FFD04(v3);
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState);
    v5[OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState] = 1;
    sub_24A5FFD04(v6);
  }
}

uint64_t getEnumTagSinglePayload for FMR1InstructionsOutState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMR1InstructionsOutState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMR1InstructionsInState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMR1InstructionsInState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A603DD0()
{
  result = qword_27EF521C0;
  if (!qword_27EF521C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF521C0);
  }

  return result;
}

unint64_t sub_24A603E28()
{
  result = qword_27EF521C8;
  if (!qword_27EF521C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF521C8);
  }

  return result;
}

unint64_t sub_24A603E7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A62F4B4();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A603EC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A62F4B4();

  if (v2 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A603F14()
{
  result = qword_27EF521D0;
  if (!qword_27EF521D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF521D0);
  }

  return result;
}

unint64_t sub_24A603F68()
{
  result = qword_27EF521D8;
  if (!qword_27EF521D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF521D8);
  }

  return result;
}

uint64_t sub_24A603FBC()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_24A603FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24A604028()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A604110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A604158(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF4F670, &qword_24A634D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A604220(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  sub_24A50A204(a3, v5);
  (*(v6 + 24))(&v24, v5, v6);
  v22 = a1;
  v23 = a2;
  if (v26)
  {
    if (v26 == 1)
    {
    }

    sub_24A508FA4(&qword_27EF4F9A0, &unk_24A6349F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24A633830;

    MEMORY[0x24C21A5D0](0x4D4554495F5FLL, 0xE600000000000000);
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
  }

  else
  {
    sub_24A508FA4(&qword_27EF4F9A0, &unk_24A6349F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24A633A00;

    MEMORY[0x24C21A5D0](0x444F505249415F5FLL, 0xEA00000000005F53);
    v8 = sub_24A62F614();
    MEMORY[0x24C21A5D0](v8);

    *(v7 + 32) = a1;
    *(v7 + 40) = a2;

    MEMORY[0x24C21A5D0](0x444F505249415F5FLL, 0xE900000000000053);
    *(v7 + 48) = a1;
    *(v7 + 56) = a2;
  }

  v9 = *(v7 + 16);
  if (!v9)
  {
LABEL_16:

    return sub_24A5D2200(v22, v23);
  }

  type metadata accessor for FMFindingUILocalizer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = (v7 + 40);
  while (1)
  {
    v13 = *(v11 - 1);
    v12 = *v11;
    v14 = objc_opt_self();

    v15 = [v14 bundleForClass_];
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_24A62F384();

    v24 = 0xD000000000000019;
    v25 = 0x800000024A641DC0;
    MEMORY[0x24C21A5D0](v13, v12);
    v16 = sub_24A62E054();
    v18 = v17;

    if (v16 != v13 || v18 != v12)
    {
      break;
    }

LABEL_9:

    v11 += 2;
    if (!--v9)
    {
      goto LABEL_16;
    }
  }

  v20 = sub_24A62F634();

  if (v20)
  {
    goto LABEL_9;
  }

  return v16;
}

void sub_24A6045B0(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing + 8))
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 1;
    v8 = 1;
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedEnergeticBearing);
    v8 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedEnergeticBearing + 8);
    if ((v8 & 1) == 0)
    {
      v6 = v6 / 180.0 * 3.14159265;
    }

    v5 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLethargicBearing);
    if (*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLethargicBearing + 8))
    {
      v7 = 1;
    }

    else
    {
      v7 = 0;
      v5 = v5 / 180.0 * 3.14159265;
    }
  }

  v9 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor);
  v10 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor + 8);
  v11 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLookout);
  v12 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLookout + 8);
  if ((a2 & 1) == 0)
  {
    v103 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing + 8);
    v98 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLookout);
    v99 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor);
    v100 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLookout + 8);
    v101 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor + 8);
    v102 = v5;
    if (*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyConformedToExplodedFactor) == 1)
    {
      v13 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactorSpring;
      v14 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactorSpring);
      if (!sub_24A5B19C4())
      {
        v96 = v6;
        sub_24A55C858(*&a1);
        *(v14 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
        v15 = *(v3 + v13);
        v16 = (v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v17 = *v16 + *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v16[35] + *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v17) <= *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v17 = v16[35] + *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        v18 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor;
        *v18 = v17;
        *(v18 + 8) = 0;
        v19 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
        swift_beginAccess();
        v20 = *(v3 + v19);
        if (v20 >> 62)
        {
          v21 = sub_24A62F464();
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v22 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactor;

        if (v21)
        {
          v23 = 0;
          v24 = v3 + v22;
          do
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x24C21ACB0](v23, v20);
              v26 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                goto LABEL_24;
              }
            }

            else
            {
              if (v23 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_98;
              }

              v25 = *(v20 + 8 * v23 + 32);
              v26 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
LABEL_24:
                __break(1u);
                break;
              }
            }

            v27 = *(v24 + 8);
            v28 = &v25[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor];
            *v28 = *v24;
            v28[8] = v27;

            ++v23;
          }

          while (v26 != v21);
        }

        v6 = v96;
      }
    }

    if (*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyConformationFactor) == 1)
    {
      v29 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactorSpring;
      v30 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactorSpring);
      if (!sub_24A5B19C4())
      {
        v95 = v7;
        sub_24A55C858(*&a1);
        *(v30 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
        v31 = *(v3 + v29);
        v32 = (v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        if (vabdd_f64(v32[35] + *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v32 + *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v33 = *v32 + *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        }

        else
        {
          v33 = v32[35] + *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        v34 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 184);
        if ((v33 - v34) / (1.0 - v34) < 0.0)
        {
          v35 = 0.0;
        }

        else
        {
          v35 = (v33 - v34) / (1.0 - v34);
        }

        v36 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor;
        *v36 = v33;
        *(v36 + 8) = 0;
        v37 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
        swift_beginAccess();
        v38 = *(v3 + v37);
        v97 = v6;
        if (v38 >> 62)
        {
          v39 = sub_24A62F464();
        }

        else
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v39)
        {
          v40 = 0;
          v41 = fmin(v33 / v34, 1.0);
          v24 = &OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor;
          do
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v42 = MEMORY[0x24C21ACB0](v40, v38);
            }

            else
            {
              if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_100;
              }

              v42 = *(v38 + 8 * v40 + 32);
            }

            v43 = v42;
            v44 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_99;
            }

            v45 = &v42[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor];
            *v45 = v41;
            *(v45 + 8) = 0;
            sub_24A5DF354(v41);
            v46 = &v43[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor];
            *v46 = v35;
            *(v46 + 8) = 0;
            sub_24A5DF5EC(v35);
            sub_24A5A4E9C(1, v33);

            ++v40;
          }

          while (v44 != v39);
        }

        sub_24A60510C(v47, v48);
        v6 = v97;
        v7 = v95;
      }
    }

    v49 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyBearing;
    if (!(v103 & 1 | ((*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyBearing) & 1) == 0)))
    {
      v50 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_energeticAngleSpring;
      v51 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_energeticAngleSpring);
      if (!sub_24A5B19C4())
      {
        sub_24A55C858(*&a1);
        *(v51 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
        v52 = *(v3 + v50);
        v53 = (v52 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v8 = 0;
        v54 = *v53 + *(v52 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v53[35] + *(v52 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v54) <= *(v52 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v54 = v53[35] + *(v52 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        v6 = v54;
      }
    }

    if (!(v103 & 1 | ((*(v3 + v49) & 1) == 0)))
    {
      v55 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lethargicAngleSpring;
      v56 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lethargicAngleSpring);
      if (!sub_24A5B19C4())
      {
        sub_24A55C858(*&a1);
        *(v56 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
        v57 = *(v3 + v55);
        v58 = (v57 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v7 = 0;
        v59 = *v58 + *(v57 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v58[35] + *(v57 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v59) <= *(v57 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v59 = v58[35] + *(v57 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        v102 = v59;
      }
    }

    if (*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyCenterFactor) == 1)
    {
      v60 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactorSpring;
      v61 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactorSpring);
      if (!sub_24A5B19C4())
      {
        sub_24A55C858(*&a1);
        *(v61 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
        v62 = *(v3 + v60);
        v63 = (v62 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v101 = 0;
        v64 = *v63 + *(v62 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v63[35] + *(v62 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v64) <= *(v62 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v64 = v63[35] + *(v62 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        v99 = *&v64;
      }
    }

    if (*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldLookout) == 1)
    {
      v65 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lookoutSpring;
      v66 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lookoutSpring);
      if (!sub_24A5B19C4())
      {
        sub_24A55C858(*&a1);
        *(v66 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
        v67 = *(v3 + v65);
        v68 = (v67 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v100 = 0;
        v69 = *v68 + *(v67 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v68[35] + *(v67 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v69) <= *(v67 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v69 = v68[35] + *(v67 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        v98 = *&v69;
      }
    }

    if (*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldLabelsOpacity) == 1)
    {
      v70 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsOpacitySpring;
      v71 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsOpacitySpring);
      if (!sub_24A5B19C4())
      {
        sub_24A55C858(*&a1);
        *(v71 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
        v72 = *(v3 + v70);
        v73 = (v72 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v74 = *v73 + *(v72 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v73[35] + *(v72 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v74) <= *(v72 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v74 = v73[35] + *(v72 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        v75 = v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLabelsOpacity;
        *v75 = v74;
        *(v75 + 8) = 0;
        [*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsNode) setAlpha_];
      }
    }

    v76 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackSpring;
    v77 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackSpring);
    if (!sub_24A5B19C4())
    {
      sub_24A55C858(*&a1);
      *(v77 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v78 = *(v3 + v76);
      v79 = (v78 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v80 = *v79 + *(v78 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      if (vabdd_f64(v79[35] + *(v78 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v80) <= *(v78 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v80 = v79[35] + *(v78 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      sub_24A606E10(v80);
    }

    v5 = v102;
    v12 = v100;
    v10 = v101;
    v11 = v98;
    v9 = v99;
  }

  sub_24A605A48(*&v6, v8, *&v5, v7, v9, v10, v11, v12);
  v81 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v24 = *(v3 + v81);
  if (v24 >> 62)
  {
    goto LABEL_101;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (!i)
    {
      break;
    }

    v83 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v84 = MEMORY[0x24C21ACB0](v83, v24);
      }

      else
      {
        if (v83 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_97;
        }

        v84 = *(v24 + 8 * v83 + 32);
      }

      v85 = v84;
      v86 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if ((a2 & 1) == 0)
      {
        sub_24A5DF804(*&a1);
      }

      ++v83;
      if (v86 == i)
      {
        goto LABEL_88;
      }
    }

    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    ;
  }

LABEL_88:

  if ((a2 & 1) == 0)
  {
    v89 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode);
    if (v89)
    {
      v90 = v89;
      sub_24A5D26B4(*&a1);
    }

    v91 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode);
    if (v91)
    {
      v92 = v91;
      sub_24A5D26B4(*&a1);
    }

    v93 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_ringView);
    if (v93)
    {
      v94 = v93;
      sub_24A59DC58(*&a1);
    }
  }

  sub_24A60510C(v87, v88);
}

void sub_24A60510C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor;
  v6 = (*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor) > 0.0) & ~*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor + 8);
  v7 = v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor;
  if ((*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor + 8) & 1) == 0)
  {
    v8 = *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 184);
    v9 = *v7 - v8;
    if (v9 < 0.0)
    {
      v9 = 0.0;
    }

    if (*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 200) <= v9 / (1.0 - *v7 - v8) || (*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor + 8) & 1) != 0 || (v10 = (*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor) > 0.0) & ~*(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor + 8), *(v2 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor) >= 0.0))
    {
      v10 = 1;
    }

    v11 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
    swift_beginAccess();
    v12 = *(v2 + v11);
    v76 = v10;
    if (v12 >> 62)
    {
      v13 = sub_24A62F464();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13)
    {
      v14 = 0;
      v3 = v6 ^ 1u;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x24C21ACB0](v14, v12);
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_19:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

          v15 = *(v12 + 8 * v14 + 32);
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_19;
          }
        }

        v15[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceScatterOffset] = v6 ^ 1;

        ++v14;
      }

      while (v16 != v13);
    }

    v4 = v78;
    *(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyCenterFactor) = v76;
  }

  *(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyBearing) = 1;
  if (*(v7 + 8))
  {
LABEL_22:
    if ((*(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor + 8) & 1) == 0 && *(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor) >= 1.0)
    {
      goto LABEL_24;
    }

LABEL_51:
    *(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_needsRecomputeVisibleFragments) = 0;
    goto LABEL_52;
  }

  v20 = *v7;
  if (*v7 > 0.0)
  {
    if (*(v5 + 8))
    {
      goto LABEL_22;
    }

    if (v20 >= 1.0 && *v5 <= 0.0 && ((*(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor + 8) & 1) != 0 || *(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor) < 1.0))
    {
      v70 = v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v71 = *(v70 + 8);
        ObjectType = swift_getObjectType();
        (*(v71 + 48))(ObjectType, v71);
        goto LABEL_108;
      }
    }

    else
    {
      v21 = *(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor);
      v22 = *(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor + 8);
      if (v22 == 1 || v21 < 1.0)
      {
        if (*(v5 + 8))
        {
          goto LABEL_51;
        }
      }

      else if ((*(v5 + 8) & 1) != 0 || v20 < 1.0 || *v5 > 0.0)
      {
LABEL_24:
        v17 = v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v18 = *(v17 + 8);
          v19 = swift_getObjectType();
          (*(v18 + 56))(v19, v18);
LABEL_41:
          swift_unknownObjectRelease();
          goto LABEL_52;
        }

        goto LABEL_52;
      }

      v27 = v20 < 1.0;
      if (*v5 > 0.0)
      {
        v27 = 1;
      }

      if (((v22 | v27) & 1) != 0 || v21 < 1.0)
      {
        goto LABEL_51;
      }

      v28 = v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = *(v28 + 8);
        v30 = swift_getObjectType();
        (*(v29 + 64))(v30, v29);
LABEL_108:
        swift_unknownObjectRelease();
      }
    }

    *(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_needsRecomputeVisibleFragments) = 1;
    goto LABEL_52;
  }

  v24 = v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 8);
    v26 = swift_getObjectType();
    (*(v25 + 40))(v26, v25);
    goto LABEL_41;
  }

LABEL_52:
  v31 = 0.0;
  if ((*(v7 + 8) & 1) == 0)
  {
    v32 = (v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor);
    if ((*(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor + 8) & 1) == 0 && *v32 >= 0.0)
    {
      v31 = *v7 * *v32;
      if (((*(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_derivativeCenterFactor) != -1) & v6) == 0)
      {
        v31 = 0.0;
      }
    }
  }

  [*(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode) setAlpha_];
  if (*(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_needsRecomputeVisibleFragments) == 1)
  {
    [*(v4 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode) position];
    *&v34 = COERCE_DOUBLE(sub_24A5E3CE0(-v33));
    if ((v36 & 1) == 0)
    {
      v37 = *&v34;
      v38 = v35;
      v39 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
      swift_beginAccess();
      v12 = *(v4 + v39);
      if (v12 >> 62)
      {
        v40 = sub_24A62F464();
      }

      else
      {
        v40 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v40)
      {
        v41 = 0;
        v42 = v37 + 1.0;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v43 = MEMORY[0x24C21ACB0](v41, v12);
          }

          else
          {
            if (v41 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_115;
            }

            v43 = *(v12 + 8 * v41 + 32);
          }

          v44 = v43;
          v3 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            break;
          }

          if ((v43[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16] & 1) == 0)
          {
            v45 = *&v43[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 8];
            v46 = v38 + -1.0 > v45 || v45 > v42;
            [v43 setHidden_];
          }

          ++v41;
          if (v3 == v40)
          {
            goto LABEL_74;
          }
        }

LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

LABEL_74:
    }
  }

  v47 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v12 = *(v4 + v47);
  v75 = v47;
  v3 = v12 & 0xFFFFFFFFFFFFFF8;
  if (!(v12 >> 62))
  {
    v48 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_77;
  }

LABEL_116:
  v48 = sub_24A62F464();
LABEL_77:

  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
LABEL_78:
  v77 = v51;
  v79 = v50;
  v53 = v49;
  while (v48 != v53)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x24C21ACB0](v53, v12);
      v55 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        goto LABEL_110;
      }
    }

    else
    {
      if (v53 >= *(v3 + 16))
      {
        goto LABEL_111;
      }

      v54 = *(v12 + 8 * v53 + 32);
      v55 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }
    }

    v56 = *&v54[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction];

    if (!v56)
    {
      v49 = v55;
      v51 = v52;
      v50 = v79 + 1;
      if (!__OFADD__(v79, 1))
      {
        goto LABEL_78;
      }

      __break(1u);
      break;
    }

    ++v53;
    if (__OFADD__(v52++, 1))
    {
      goto LABEL_112;
    }
  }

  v58 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_allFragmentsAreOrbiting;
  v59 = *(v78 + v75);
  if (*(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_allFragmentsAreOrbiting))
  {
    if (!(v59 >> 62))
    {
LABEL_95:
      v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_96;
    }

LABEL_121:
    v60 = sub_24A62F464();
LABEL_96:
    if (v60 == v79)
    {
      *(v78 + v58) = 0;
      v61 = v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v62 = *(v61 + 8);
        v63 = swift_getObjectType();
        (*(v62 + 16))(v63, v62);
        swift_unknownObjectRelease();
      }

      if ((*(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_track + 8) & 1) == 0)
      {
        v64 = *(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackSpring);
        sub_24A55C6B4(*(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_track));
        *(v64 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      }

      return;
    }

    goto LABEL_122;
  }

  v65 = v48 + v77 - v49;
  if (v59 >> 62)
  {
    if (sub_24A62F464() == v65)
    {
      goto LABEL_103;
    }

LABEL_119:
    if (*(v78 + v58) != 1)
    {
LABEL_122:
      if (*(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackDidChange) == 1 && (*(v78 + v58) & 1) == 0 && (*(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_track + 8) & 1) == 0)
      {
        v73 = *(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_track);
        *(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackDidChange) = 0;
        v74 = *(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackSpring) + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
        *v74 = v73;
        *(v74 + 8) = 0;
        sub_24A5B18FC();
      }

      return;
    }

    v59 = *(v78 + v75);
    if (!(v59 >> 62))
    {
      goto LABEL_95;
    }

    goto LABEL_121;
  }

  if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) != v65)
  {
    goto LABEL_119;
  }

LABEL_103:
  *(v78 + v58) = 1;
  v66 = v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v67 = *(v66 + 8);
    v68 = swift_getObjectType();
    (*(v67 + 8))(v68, v67);
    swift_unknownObjectRelease();
  }

  v69 = *(v78 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackSpring);
  sub_24A55C6B4(0.5);
  *(v69 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
  sub_24A606E10(0.5);
}

void sub_24A605A48(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, int a8)
{
  v9 = v8;
  v194 = a2;
  v17 = sub_24A62EA94();
  v191 = *(v17 - 8);
  v192 = v17;
  MEMORY[0x28223BE20](v17);
  v190 = &v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A62EAD4();
  MEMORY[0x28223BE20](v19);
  v23 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode);
  if (v23)
  {
    v24 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode);
    if (v24)
    {
      if ((*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor + 8) & 1) == 0)
      {
        v173 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        v174 = v22;
        v186 = a8;
        v175 = v20;
        v25 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor);
        v26 = v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor;
        *v26 = *&a5;
        *(v26 + 8) = a6 & 1;
        if (a6)
        {
          v27 = 0.0;
        }

        else
        {
          v27 = *&a5;
        }

        v28 = objc_opt_self();
        v189 = v23;
        v193 = v24;
        v29 = [v28 standardUserDefaults];
        v30 = [v29 fmpfDebugMode];

        v31 = 1.0;
        if (!v30)
        {
          v31 = 0.0;
        }

        [*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasPatternSpinesNode) setAlpha_];
        v32 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode);
        if (a4)
        {
          [*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode) zRotation];
        }

        else
        {
          v33 = *&a3;
        }

        v34 = v194;
        [v32 setZRotation_];
        v35 = *&a1;
        if ((v34 & 1) == 0)
        {
          v35 = *&a1 / 3.14159265 * 180.0;
        }

        v36 = v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedEnergeticBearing;
        *v36 = v35;
        *(v36 + 8) = v34 & 1;
        if ((a4 & 1) == 0)
        {
          *&a3 = *&a3 / 3.14159265 * 180.0;
        }

        v37 = v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLethargicBearing;
        *v37 = *&a3;
        *(v37 + 8) = a4 & 1;
        [*&v193[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode] zRotation];
        v38 = 6.28318531;
        v40 = fmod(v39, 6.28318531);
        v188 = 3.14159265;
        if (v40 <= 3.14159265)
        {
          v41 = v186;
          if (v40 < -3.14159265)
          {
            v40 = v40 + 6.28318531;
          }
        }

        else
        {
          v40 = v40 + -6.28318531;
          v41 = v186;
        }

        v42 = fmod(v40, 6.28318531);
        if (v42 <= v188)
        {
          if (v42 < -3.14159265)
          {
            v42 = v42 + 6.28318531;
          }
        }

        else
        {
          v42 = v42 + -6.28318531;
        }

        if ((v34 & 1) == 0)
        {
          v42 = *&a1;
        }

        v43 = (v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style);
        v44 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 112);
        v45 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 120);
        v47 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 96);
        v46 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 104);
        v48 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 136);
        v172 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 144);
        v171 = v48;
        v185 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 128);
        v49 = v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLookout;
        *v49 = *&a7;
        *(v49 + 8) = v41 & 1;
        v50 = remainder(v42, 6.28318531);
        v51 = fmod(v50, 6.28318531);
        v52 = v51;
        if (v51 <= v188)
        {
          if (v51 < -3.14159265)
          {
            v52 = v51 + 6.28318531;
          }
        }

        else
        {
          v52 = v51 + -6.28318531;
        }

        v53 = (v25 - v43[20]) / (1.0 - v43[20]);
        if (v53 < 0.0)
        {
          v53 = 0.0;
        }

        v177 = *&a7;
        if (v41)
        {
          v54 = 0.0;
        }

        else
        {
          v54 = *&a7;
        }

        v56 = (1.0 - v27) * v53;
        v57 = (1.0 - v54) * v56;
        v58 = v25;
        if (*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_forceHideNoonNode))
        {
          v59 = 0.0;
        }

        else
        {
          v59 = v53;
        }

        v60 = (v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor);
        v61 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor + 8);
        v183 = v58;
        if (v61)
        {
          v181 = (1.0 - v54) * v56;
          v62 = 1.0;
        }

        else
        {
          v62 = 1.0 - *v60;
          v63 = v58 * *v60;
          v53 = v63 + v53 * v62;
          v54 = v63 + v54 * v62;
          v181 = v57 * v62;
        }

        v55 = 1.0 - v27;
        v178 = v62 * -(*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_sceneSize + 8) * (v27 * (v27 * v27) + v27 * v27 * (v55 * 0.0) + v55 * (v55 * v55) * 0.0 + v27 * (v55 * v55 * 0.0)));
        v184 = v46 * v53 + v47 * (1.0 - v53);
        v180 = v45 * v53 + v44 * (1.0 - v53);
        v187 = v54;
        v64 = v185 * v54;
        v170 = v43[21];
        v169 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pixelsPerInch);
        v65 = [objc_opt_self() mainScreen];
        [v65 scale];
        v67 = v66;

        v68 = v43[2];
        v69 = v193;
        v70 = &v193[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacity];
        *v70 = 0x3FF0000000000000;
        v70[8] = 0;
        v71 = *&v69[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacitySpring];
        sub_24A55C6B4(1.0);
        *(v71 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        v72 = &v69[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOpacity];
        *v72 = 0x3FF0000000000000;
        v72[8] = 0;
        v176 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode;
        [*&v69[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode] setAlpha_];
        [*&v69[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode] setAlpha_];
        v73 = v189;
        v74 = &v189[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacity];
        *v74 = v59;
        *(v74 + 8) = 0;
        v75 = *&v73[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacitySpring];
        sub_24A55C6B4(v59);
        *(v75 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        v76 = &v73[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOpacity];
        *v76 = v59;
        *(v76 + 8) = 0;
        v77 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode;
        [*&v73[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode] setAlpha_];
        [*&v73[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode] setAlpha_];
        v78 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactor + 8);
        v182 = v64;
        if ((v78 & 1) != 0 || (v79 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_inFOV), v79 == 2) || (v80 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactor), (v79 & 1) == 0) && v27 < 2.22044605e-16)
        {
          v81 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_extraDiskRadiusWhenSnapping;
          v82 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_extraDiskRadiusWhenSnapping);
          v83 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode;
          v84 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode) == 1;
          *&v179 = 6.28318531;
          if (v84)
          {
            v85 = 0.0;
            sub_24A5FCD18(1, 0.0);
            if (v82 <= 0.0)
            {
              *(v9 + v83) = 0;
              v89 = v187;
            }

            else
            {
              v86 = v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
              if (swift_unknownObjectWeakLoadStrong())
              {
                v87 = *(v86 + 8);
                ObjectType = swift_getObjectType();
                (*(v87 + 80))(ObjectType, v87);
                swift_unknownObjectRelease();
              }

              *(v9 + v83) = 0;
              v89 = v187;
              v85 = v52 * v187;
            }
          }

          else
          {
            *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode) = 0;
            v85 = 0.0;
            v89 = v187;
            if (v82 > 0.0)
            {
              v85 = v52 * v187;
            }
          }

          v90 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius;
          v91 = v89 * *(v9 + v81);
          v92 = -((v91 + *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius)) * v27);
          v93 = -(v92 * cos(1.57079633 - v52));
          v94 = sin(1.57079633 - fabs(v52)) * v92;
          if (*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType) != 1)
          {
            [*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode) setPosition_];
          }

          v95 = v193;
          sub_24A51F790(0, v93, v94);
          v96 = v189;
          sub_24A51F790(0, v93, v94);
          sub_24A51F53C(1, v180);
          sub_24A51F664(0, v85);
          v97 = v91 + *(v9 + v90);
          v98 = &v96[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius];
          *v98 = v97;
          *(v98 + 8) = 0;
          v99 = *&v96[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadiusSpring];
          sub_24A55C6B4(v97);
          *(v99 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
          v100 = &v96[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
          *v100 = v97;
          *(v100 + 8) = 0;
          [*&v96[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskNode] setPosition_];
          sub_24A51F53C(1, v184);
          v101 = v91 + *(v9 + v90);
          v102 = &v95[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius];
          *v102 = v101;
          v102[8] = 0;
          v103 = *&v95[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadiusSpring];
          sub_24A55C6B4(v101);
          *(v103 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
          v104 = &v95[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
          *v104 = v101;
          v104[8] = 0;
          [*&v95[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskNode] setPosition_];
          v96[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyRadiusFactor] = 0;
          sub_24A51EF90(0, 0);
          v105 = v182;
          if (v82 <= 0.0)
          {
            v105 = 0.0;
          }

          v106 = v194;
          v107 = v183;
          v38 = *&v179;
          goto LABEL_59;
        }

        v121 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode;
        if (*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode))
        {
          *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode) = 1;
          v122 = v80 >= 0.5;
          if (v79)
          {
            v106 = v194;
            v123 = v187;
            if (v80 >= 0.5)
            {
              v122 = 1;
              v124 = v52;
LABEL_100:
              v168 = v124;
              v137 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType;
              v138 = 0.0;
              v139 = 1.0;
              v140 = 0.0;
              if (*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType) != 2)
              {
                v141 = 1.0;
                v142 = 0.0;
                if (v122)
                {
                  v142 = v123;
                  v141 = 1.0 - v123;
                }

                v140 = 1.0 - v123 + v171 * v142;
                v139 = v27 * (v170 * v169 / v67 / v68 / v184 - v172) + v141 + v172 * v142;
              }

              v171 = v140;
              v172 = v139;
              v143 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius;
              v144 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius);
              if (v79)
              {
                v138 = v123;
              }

              v145 = v138 * (v185 * v144);
              *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_extraDiskRadiusWhenSnapping) = v145;
              v146 = -((v144 + v145) * v27);
              v147 = -(v146 * cos(1.57079633 - v52));
              v148 = sin(1.57079633 - fabs(v52)) * v146;
              if (*(v9 + v137) != 1)
              {
                [*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode) setPosition_];
              }

              v149 = v193;
              sub_24A51F790(0, v147, v148);
              v150 = v189;
              sub_24A51F790(0, v147, v148);
              v151 = v180 * v171;
              v152 = &v150[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScale];
              *v152 = v180 * v171;
              *(v152 + 8) = 0;
              v153 = *&v150[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScaleSpring];
              sub_24A55C6B4(v151);
              *(v153 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
              v154 = &v150[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDotScale];
              *v154 = v151;
              *(v154 + 8) = 0;
              [*&v150[v77] setScale_];
              sub_24A51F664(0, v168);
              v155 = v145 + *(v9 + v143);
              v156 = &v150[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius];
              *v156 = v155;
              *(v156 + 8) = 0;
              v157 = *&v150[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadiusSpring];
              sub_24A55C6B4(v155);
              *(v157 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
              v158 = &v150[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
              *v158 = v155;
              *(v158 + 8) = 0;
              [*&v150[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskNode] setPosition_];
              v159 = v184 * v172;
              v160 = &v149[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScale];
              *v160 = v184 * v172;
              v160[8] = 0;
              v161 = *&v149[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScaleSpring];
              sub_24A55C6B4(v159);
              *(v161 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
              v162 = &v149[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDotScale];
              *v162 = v159;
              v162[8] = 0;
              [*&v149[v176] setScale_];
              v163 = v145 + *(v9 + v143);
              v164 = &v149[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius];
              *v164 = v163;
              v164[8] = 0;
              v165 = *&v149[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadiusSpring];
              sub_24A55C6B4(v163);
              *(v165 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
              v166 = &v149[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
              *v166 = v163;
              v166[8] = 0;
              [*&v149[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskNode] setPosition_];
              v167 = 0;
              if (v27 >= 1.0)
              {
                v167 = sub_24A51ED78() == 0;
              }

              v189[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyRadiusFactor] = v167;
              v107 = v183;
              v105 = v182;
LABEL_59:
              v108 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_ringView;
              v109 = *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_ringView);
              if (v109)
              {
                v110 = *&v181;
                v111 = v109;
                sub_24A59E410(v110, 0, 1);
              }

              if ((v189[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAngle + 8] & 1) == 0)
              {
                v112 = fmod(*&v189[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAngle], v38);
                if (v112 <= v188)
                {
                  if (v112 < -3.14159265)
                  {
                    v112 = v112 + v38;
                  }
                }

                else
                {
                  v112 = v112 + -6.28318531;
                }

                v113 = *(v9 + v108);
                if (v113 && v112 <= fabs(v52))
                {
                  v114 = swift_allocObject();
                  *(v114 + 16) = v105;
                  *(v114 + 24) = 0;
                  *(v114 + 32) = v113;
                  *(v114 + 40) = v112;
                  *(v114 + 48) = v52;
                  v115 = objc_opt_self();
                  v116 = v113;
                  if ([v115 isMainThread])
                  {
                    v117 = *&v116[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_startAngleSpring];
                    sub_24A55C6B4(v112);
                    *(v117 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
                    v118 = *&v116[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_endAngleSpring];
                    sub_24A55C6B4(v52);
                    *(v118 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
                    v119 = *&v116[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_additionalRadiusScaleSpring];
                    v120 = sub_24A55C6B4(v105);
                    *(v119 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
                    *&v116[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_startAngle] = v112;
                    *&v116[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_endAngle] = v52;
                    *&v116[OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_additionalRadiusScale] = v105;
                    [v116 bounds];
                    [v116 drawRect_];
                  }

                  else
                  {
                    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
                    v125 = sub_24A62F014();
                    v126 = swift_allocObject();
                    *(v126 + 16) = sub_24A6073E4;
                    *(v126 + 24) = v114;
                    aBlock[4] = sub_24A517E48;
                    aBlock[5] = v126;
                    aBlock[0] = MEMORY[0x277D85DD0];
                    aBlock[1] = 1107296256;
                    aBlock[2] = sub_24A5A8458;
                    aBlock[3] = &unk_285DAB128;
                    v127 = _Block_copy(aBlock);

                    v128 = v173;
                    sub_24A62EAB4();
                    aBlock[0] = MEMORY[0x277D84F90];
                    sub_24A545F60();
                    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
                    sub_24A529464();
                    v129 = v190;
                    v130 = v192;
                    sub_24A62F254();
                    MEMORY[0x24C21A950](0, v128, v129, v127);
                    _Block_release(v127);

                    (*(v191 + 8))(v129, v130);
                    (*(v174 + 8))(v128, v175);
                  }

                  v106 = v194;
                }
              }

              if (v187 <= 0.0)
              {
                v131 = v106 ^ 1;
                if ((v186 & 1) == 0 && v177 > 0.0)
                {
LABEL_81:
                  if (*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType) == 1)
                  {
                    if (v107 > 0.0)
                    {
                      goto LABEL_88;
                    }
                  }

                  else if (v107 > 0.75)
                  {
                    goto LABEL_88;
                  }

                  if ((*(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor + 8) & 1) == 0 && *(v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor) == 0.0)
                  {
                    v132 = &v193[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interactiveAngleFactor];
                    *v132 = 0;
                    v132[8] = 1;
                    sub_24A51E8F0();
LABEL_89:

                    return;
                  }

LABEL_88:
                  sub_24A51EB58();
                  sub_24A51FA00(COERCE_ID(v107 * (v107 * v107) + v107 * v107 * ((1.0 - v107) * 3.0) + (1.0 - v107) * ((1.0 - v107) * (1.0 - v107)) * 0.0 + v107 * ((1.0 - v107) * (1.0 - v107) * 3.0)), 0);
                  goto LABEL_89;
                }
              }

              else
              {
                v131 = 0;
              }

              sub_24A51F664(v131 & 1, v52);
              goto LABEL_81;
            }

LABEL_95:
            v124 = v52 * v123;
            v122 = 1;
            goto LABEL_100;
          }

          v106 = v194;
          v123 = v187;
        }

        else
        {
          sub_24A5FCD18(1, 1.0);
          if (v79)
          {
            v133 = v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate;
            Strong = swift_unknownObjectWeakLoadStrong();
            v106 = v194;
            if (Strong)
            {
              v135 = *(v133 + 8);
              v136 = swift_getObjectType();
              (*(v135 + 72))(v136, v135);
              swift_unknownObjectRelease();
            }

            v122 = 1;
            *(v9 + v121) = 1;
            v124 = v52;
            v123 = v187;
            if (v80 >= 0.5)
            {
              goto LABEL_100;
            }

            goto LABEL_95;
          }

          *(v9 + v121) = 1;
          v122 = v80 >= 0.5;
          v106 = v194;
          v123 = v187;
        }

        v124 = 0.0;
        if (v122)
        {
          v124 = v52;
        }

        goto LABEL_100;
      }
    }
  }
}

void sub_24A606E10(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config;
  v4 = 0.0;
  if ((*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config + 32) & 1) == 0)
  {
    v4 = (a1 + -0.5) * ((*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius) + *(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius)) * *v3 / *(v3 + 24));
  }

  v5 = *(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode);
  [v5 position];
  [v5 setPosition_];
  v6 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v22 = v1;
  v7 = *(v1 + v6);
  if (v7 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (i)
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C21ACB0](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = &v10[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_trackOffset];
        *v13 = v4;
        *(v13 + 8) = 0;
        if ((v10[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor + 8] & 1) == 0)
        {
          sub_24A5DF354(*&v10[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor]);
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_15:

    if (*(v3 + 112))
    {
      return;
    }

    v4 = *(v3 + 104);
    v14 = [*(v22 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsNode) children];
    sub_24A50D7EC(0, &qword_27EF4F948, 0x277CDCF58);
    v15 = sub_24A62ED64();

    v16 = sub_24A607140(v15);

    if (!v16)
    {
      return;
    }

    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        break;
      }

      goto LABEL_19;
    }

    v17 = sub_24A62F464();
    if (!v17)
    {
      break;
    }

LABEL_19:
    v7 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x24C21ACB0](v7, v16);
      }

      else
      {
        if (v7 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v18 = *(v16 + 8 * v7 + 32);
      }

      v19 = v18;
      v20 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v21 = v4 * ((*&v18[OBJC_IVAR____TtC11FMFindingUI15FMPFSKLabelNode_normalizedIndex] - a1) * *v3);
      if (v21 < 0.0)
      {
        v21 = 0.0;
      }

      [v18 setAlpha_];

      ++v7;
      if (v20 == v17)
      {
        goto LABEL_35;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_35:
}

uint64_t sub_24A607140(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_24A62F404();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x24C21ACB0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for FMPFSKLabelNode();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      sub_24A62F3E4();
      sub_24A62F414();
      sub_24A62F424();
      sub_24A62F3F4();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_24A62F464();
    sub_24A62F404();
  }

  return v8;
}

void (*sub_24A6072A4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C21ACB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24A60744C;
  }

  __break(1u);
  return result;
}

void (*sub_24A607324(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C21ACB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24A6073A4;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A6073AC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6073FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_24A607434(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_24A6074C0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 fmpfEcoMode];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = &OBJC_METACLASS____TtC11FMFindingUI27FMPFARTrackingConfiguration;
  v50.receiver = ObjCClassFromMetadata;
  v50.super_class = &OBJC_METACLASS____TtC11FMFindingUI27FMPFARTrackingConfiguration;
  v4 = &selRef_effectForBlurEffect_style_;
  v5 = objc_msgSendSuper2(&v50, sel_supportedVideoFormats);
  sub_24A50D7EC(0, &qword_27EF521E0, 0x277CE5398);
  v6 = sub_24A62ED64();

  v7 = MEMORY[0x277D84F90];
  v45 = v6;
  if (!v1)
  {
    goto LABEL_28;
  }

  if (v6 >> 62)
  {
    goto LABEL_27;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_28;
  }

LABEL_4:
  v3 = (v6 & 0xC000000000000001);
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);

      __break(1u);
      return;
    }

    v9 = *(v6 + 32);
    goto LABEL_7;
  }

LABEL_92:
  v9 = MEMORY[0x24C21ACB0](0, v6);
LABEL_7:
  ObjCClassFromMetadata = v9;
  if (v8 == 1)
  {
    goto LABEL_8;
  }

  v4 = (v6 & 0xFFFFFFFFFFFFFF8);
  v11 = 1;
  do
  {
    while (1)
    {
      if (v3)
      {
        v12 = MEMORY[0x24C21ACB0](v11, v6);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        if (v11 >= v4[2])
        {
          goto LABEL_26;
        }

        v12 = *(v6 + 8 * v11 + 32);
      }

      v10 = v12;
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v8 = sub_24A62F464();
        if (v8)
        {
          goto LABEL_4;
        }

LABEL_28:
        v49.receiver = ObjCClassFromMetadata;
        v49.super_class = v3;
        v21 = objc_msgSendSuper2(&v49, v4[132]);
        v22 = sub_24A62ED64();

        v48 = v7;
        if (v22 >> 62)
        {
          goto LABEL_46;
        }

        for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
        {
          v24 = 0;
          v7 = v22 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if ((v22 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x24C21ACB0](v24, v22);
            }

            else
            {
              if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_45;
              }

              v25 = *(v22 + 8 * v24 + 32);
            }

            v3 = v25;
            v6 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            [(objc_class *)v25 imageResolution];
            v27 = v26;
            [(objc_class *)v3 imageResolution];
            if (v27 > v28)
            {
              v29 = v27;
            }

            else
            {
              v29 = v28;
            }

            if (v29 > 1920.0)
            {
            }

            else
            {
              sub_24A62F3E4();
              sub_24A62F414();
              sub_24A62F424();
              sub_24A62F3F4();
            }

            ++v24;
            v20 = v6 == i;
            v6 = v45;
            if (v20)
            {
              v8 = v48;
              v7 = MEMORY[0x277D84F90];
              goto LABEL_48;
            }
          }

          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          ;
        }

        v8 = MEMORY[0x277D84F90];
LABEL_48:

        if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
        {
          goto LABEL_85;
        }

        for (ObjCClassFromMetadata = *(v8 + 16); !ObjCClassFromMetadata; ObjCClassFromMetadata = sub_24A62F464())
        {

          if (!(v6 >> 62))
          {
            goto LABEL_58;
          }

LABEL_87:
          v32 = sub_24A62F464();
          if (!v32)
          {
            goto LABEL_67;
          }

LABEL_59:
          v48 = v7;
          v8 = &v48;
          sub_24A62F404();
          if (v32 < 0)
          {
            __break(1u);
LABEL_90:
            v30 = MEMORY[0x24C21ACB0](0, v8);
            goto LABEL_54;
          }

          v33 = 0;
          while (1)
          {
            v7 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            if ((v6 & 0xC000000000000001) != 0)
            {
              v34 = MEMORY[0x24C21ACB0](v33, v6);
            }

            else
            {
              if (v33 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_81;
              }

              v34 = *(v6 + 8 * v33 + 32);
            }

            v35 = v34;
            v46 = v34;
            sub_24A607AE4(&v46, &v47);

            v3 = v47;
            sub_24A62F3E4();
            sub_24A62F414();
            sub_24A62F424();
            v8 = &v48;
            sub_24A62F3F4();
            ++v33;
            if (v7 == v32)
            {
              goto LABEL_67;
            }
          }

          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          ;
        }

        v3 = (v8 & 0xC000000000000001);
        if ((v8 & 0xC000000000000001) != 0)
        {
          goto LABEL_90;
        }

        if (*(v8 + 16))
        {
          v30 = *(v8 + 32);
LABEL_54:
          v31 = v30;

          if (ObjCClassFromMetadata != 1)
          {
            v6 = 1;
            while (1)
            {
              if (v3)
              {
                v36 = MEMORY[0x24C21ACB0](v6, v8);
              }

              else
              {
                if ((v6 & 0x8000000000000000) != 0)
                {
                  goto LABEL_83;
                }

                if (v6 >= *(v8 + 16))
                {
                  goto LABEL_84;
                }

                v36 = *(v8 + 8 * v6 + 32);
              }

              v10 = v36;
              v37 = (v6 + 1);
              if (__OFADD__(v6, 1))
              {
                goto LABEL_82;
              }

              [v31 imageResolution];
              v39 = v38;
              [v31 imageResolution];
              v41 = v39 * v40;
              [v10 imageResolution];
              v43 = v42;
              [v10 imageResolution];
              if (v41 < v43 * v44)
              {

                v31 = v10;
                ++v6;
                if (v37 == ObjCClassFromMetadata)
                {
                  goto LABEL_56;
                }
              }

              else
              {

                ++v6;
                if (v37 == ObjCClassFromMetadata)
                {
                  break;
                }
              }
            }
          }

          v10 = v31;
LABEL_56:

          goto LABEL_57;
        }

        __break(1u);
        goto LABEL_92;
      }

      [v12 imageResolution];
      v14 = v13;
      [v10 imageResolution];
      v16 = v14 * v15;
      [ObjCClassFromMetadata imageResolution];
      v18 = v17;
      [ObjCClassFromMetadata imageResolution];
      if (v16 >= v18 * v19)
      {
        break;
      }

      ObjCClassFromMetadata = v10;
      ++v11;
      v20 = v6 == v8;
      v6 = v45;
      if (v20)
      {
        goto LABEL_9;
      }
    }

    ++v11;
    v20 = v6 == v8;
    v6 = v45;
  }

  while (!v20);
LABEL_8:
  v10 = ObjCClassFromMetadata;
LABEL_9:

LABEL_57:
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A6339F0;
  *(v6 + 32) = v10;
  if (v6 >> 62)
  {
    goto LABEL_87;
  }

LABEL_58:
  v32 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v32)
  {
    goto LABEL_59;
  }

LABEL_67:
}

void sub_24A607AE4(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  if (qword_27EF4E988 != -1)
  {
    swift_once();
  }

  if (byte_27EF5C0A0 == 1)
  {
    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_24A636580;
    v4 = [v2 captureDeviceType];
    v5 = sub_24A62EC14();
    v7 = v6;

    v8 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v9 = sub_24A508FEC();
    *(v3 + 64) = v9;
    *(v3 + 32) = v5;
    *(v3 + 40) = v7;
    [v2 imageResolution];
    v10 = sub_24A62F0E4();
    *(v3 + 96) = v8;
    *(v3 + 104) = v9;
    *(v3 + 72) = v10;
    *(v3 + 80) = v11;
    v12 = [v2 frameRatesByPowerUsage];
    v13 = sub_24A50D7EC(0, &qword_27EF4F428, 0x277CCABB0);
    v14 = sub_24A62ED64();

    v15 = MEMORY[0x24C21A690](v14, v13);
    v17 = v16;

    *(v3 + 136) = v8;
    *(v3 + 144) = v9;
    *(v3 + 112) = v15;
    *(v3 + 120) = v17;
    v18 = sub_24A62EC24();
    v20 = v19;
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v21 = sub_24A62E314();
    sub_24A506EB8(v21, qword_27EF5C0E8);

    v22 = sub_24A62E2F4();
    v23 = sub_24A62EF64();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v54 = v25;
      *v24 = 136315138;
      v26 = sub_24A509BA8(v18, v20, &v54);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_24A503000, v22, v23, "%s", v24, 0xCu);
      sub_24A508C54(v25);
      MEMORY[0x24C21BBE0](v25, -1, -1);
      MEMORY[0x24C21BBE0](v24, -1, -1);
    }

    else
    {
    }

    *a2 = v2;
    v52 = v2;
  }

  else
  {
    v27 = [v2 videoFormatWithUnthrottledLowPowerUsageFramerate];
    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_24A636580;
    v29 = [v27 captureDeviceType];
    v30 = sub_24A62EC14();
    v32 = v31;

    v33 = MEMORY[0x277D837D0];
    *(v28 + 56) = MEMORY[0x277D837D0];
    v34 = sub_24A508FEC();
    *(v28 + 64) = v34;
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    [v27 imageResolution];
    v35 = sub_24A62F0E4();
    *(v28 + 96) = v33;
    *(v28 + 104) = v34;
    *(v28 + 72) = v35;
    *(v28 + 80) = v36;
    v37 = [v27 frameRatesByPowerUsage];
    v38 = sub_24A50D7EC(0, &qword_27EF4F428, 0x277CCABB0);
    v39 = sub_24A62ED64();

    v40 = MEMORY[0x24C21A690](v39, v38);
    v42 = v41;

    *(v28 + 136) = v33;
    *(v28 + 144) = v34;
    *(v28 + 112) = v40;
    *(v28 + 120) = v42;
    v43 = sub_24A62EC24();
    v45 = v44;
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v46 = sub_24A62E314();
    sub_24A506EB8(v46, qword_27EF5C0E8);

    v47 = sub_24A62E2F4();
    v48 = sub_24A62EF64();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v54 = v50;
      *v49 = 136315138;
      v51 = sub_24A509BA8(v43, v45, &v54);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_24A503000, v47, v48, "%s", v49, 0xCu);
      sub_24A508C54(v50);
      MEMORY[0x24C21BBE0](v50, -1, -1);
      MEMORY[0x24C21BBE0](v49, -1, -1);
    }

    else
    {
    }

    *a2 = v27;
  }
}

id sub_24A608078(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for FMPFARTrackingConfiguration();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_24A6080B8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMPFARTrackingConfiguration();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_24A608110()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI20FMPFSKBTRangeDotNode_sizeSpring;
  *&v0[v1] = sub_24A5B1B2C(0, 0, 0x3F50624DD2F1A9FCLL, 0);
  v2 = sub_24A5F1D08(0xD000000000000016, 0x800000024A63E380);
  v3 = [objc_opt_self() whiteColor];
  [v2 size];
  v5 = v4;
  v7 = v6;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for FMPFSKBTRangeDotNode();
  v8 = objc_msgSendSuper2(&v10, sel_initWithTexture_color_size_, v2, v3, v5, v7);

  return v8;
}

id sub_24A6082B8(double a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC11FMFindingUI20FMPFSKBTRangeDotNode_sizeSpring];
  sub_24A55C858(a1);
  *(v3 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
  v4 = (v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  if (vabdd_f64(v4[35] + *(v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v4 + *(v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
  {
    v5 = *v4 + *(v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  }

  else
  {
    v5 = v4[35] + *(v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  }

  v6 = [v2 scene];
  v7 = 1.0;
  if (v6)
  {
    v8 = v6;
    [v6 size];
    v10 = v9;

    v11 = [v2 texture];
    if (v11)
    {
      v12 = v11;
      [v11 size];
      v14 = v13;

      v7 = round(v5 * v10) / v14;
    }
  }

  return [v2 setScale_];
}

void sub_24A608408(char a1, double a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC11FMFindingUI20FMPFSKBTRangeDotNode_sizeSpring];
  if (a1)
  {
    v5 = v4 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v5 = a2;
    *(v5 + 8) = 0;
    sub_24A5B18FC();
  }

  else
  {
    sub_24A55C6B4(a2);
    *(v4 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v6 = (v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
    swift_beginAccess();
    if (vabdd_f64(v6[35] + *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v6 + *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
    {
      v7 = *v6 + *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
    }

    else
    {
      v7 = v6[35] + *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    }

    v8 = [v3 scene];
    v9 = 1.0;
    if (v8)
    {
      v10 = v8;
      [v8 size];
      v12 = v11;

      v13 = [v3 texture];
      if (v13)
      {
        v14 = v13;
        [v13 size];
        v16 = v15;

        v9 = round(v7 * v12) / v16;
      }
    }

    [v3 setScale_];
  }
}

void sub_24A608578()
{
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v1 = [v0 texture];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for FMPFSKSpriteNode();
      v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_24A6339F0;
      v5 = objc_opt_self();
      v6 = objc_opt_self();
      v7 = v3;
      v8 = [v6 rangeWithConstantValue_];
      v9 = [v5 distance:v8 toNode:v0];

      *(v4 + 32) = v9;
      sub_24A50D7EC(0, &qword_27EF4F940, 0x277CDCF38);
      v10 = sub_24A62ED54();

      [v7 setConstraints_];

      v11 = v7;
      [v11 setTexture_];
      [v2 size];
      [v11 setSize_];

      [v11 setScale_];
      v12 = objc_opt_self();
      v13 = [v12 scaleTo:2.0 duration:0.5];
      [v13 setTimingMode_];
      v14 = [v12 fadeAlphaTo:0.0 duration:0.5];
      [v14 setTimingMode_];
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_24A633810;
      *(v15 + 32) = v14;
      *(v15 + 40) = v13;
      sub_24A50D7EC(0, &unk_27EF4F950, 0x277CDCF30);
      v16 = v14;
      v17 = v13;
      v18 = sub_24A62ED54();

      v19 = [v12 group_];

      [v0 addChild_];
      v20 = swift_allocObject();
      *(v20 + 16) = v11;
      v23[4] = sub_24A520304;
      v23[5] = v20;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 1107296256;
      v23[2] = sub_24A5A8458;
      v23[3] = &unk_285DAB178;
      v21 = _Block_copy(v23);
      v22 = v11;

      [v22 runAction:v19 completion:v21];
      _Block_release(v21);
    }
  }
}

id sub_24A60895C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMPFSKBTRangeDotNode();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24A6089C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_24A6089FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_24A608A14()
{
  v1 = v0;
  v2 = sub_24A62E1A4();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 timestamp];
  sub_24A62E174();

  [v1 coordinate];
  v36 = v8;
  [v1 coordinate];
  v35 = v9;
  [v1 altitude];
  v11 = v10;
  [v1 ellipsoidalAltitude];
  v13 = v12;
  [v1 horizontalAccuracy];
  v15 = v14;
  [v1 verticalAccuracy];
  v17 = v16;
  [v1 speed];
  v19 = v18;
  [v1 speedAccuracy];
  v21 = v20;
  [v1 course];
  v23 = v22;
  [v1 courseAccuracy];
  v25 = v24;
  v26 = [v1 floor];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 level];
  }

  else
  {
    v28 = 0;
  }

  v29 = [v1 type];
  v30 = [v1 signalEnvironmentType];
  v31 = objc_allocWithZone(MEMORY[0x277CD8A50]);
  v32 = sub_24A62E154();
  v33 = [v31 initWithTimestamp:v32 latitude:v28 longitude:v29 altitude:v30 ellipsoidalAltitude:v36 horizontalAccuracy:v35 verticalAccuracy:v11 speed:v13 speedAccuracy:v15 course:v17 courseAccuracy:v19 floor:v21 locationType:v23 signalEnvironment:v25];

  (*(v3 + 8))(v6, v2);
  return v33;
}

id sub_24A608CBC()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_titleLabel;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_subtitleLabel;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_style;
  if (qword_27EF4EA38 != -1)
  {
    swift_once();
  }

  v14[8] = xmmword_27EF5C5E0;
  v14[9] = unk_27EF5C5F0;
  v14[10] = xmmword_27EF5C600;
  v15 = qword_27EF5C610;
  v14[4] = xmmword_27EF5C5A0;
  v14[5] = unk_27EF5C5B0;
  v14[6] = xmmword_27EF5C5C0;
  v14[7] = unk_27EF5C5D0;
  v14[0] = xmmword_27EF5C560;
  v14[1] = *&qword_27EF5C570;
  v14[2] = xmmword_27EF5C580;
  v14[3] = unk_27EF5C590;
  memmove(&v0[v3], &xmmword_27EF5C560, 0xB8uLL);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  sub_24A5D1AFC(v14, v13);
  v6 = [v5 bundleForClass_];
  v7 = sub_24A62EBE4();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6 withConfiguration:0];

  v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v0[OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_imageView] = v9;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for FMIncorrectOrientationView();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_24A608FE0();
  sub_24A6093AC();

  return v10;
}

id sub_24A608FE0()
{
  v1 = v0;
  [v0 addSubview_];
  v2 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_titleLabel;
  v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_titleLabel];
  v4 = objc_opt_self();
  v5 = *MEMORY[0x277D76A28];
  v6 = v3;
  v7 = [v4 preferredFontForTextStyle_];
  v8 = sub_24A59679C(2);

  [v6 setFont_];
  [*&v1[v2] setAdjustsFontForContentSizeCategory_];
  [*&v1[v2] setAdjustsFontSizeToFitWidth_];
  [*&v1[v2] setNumberOfLines_];
  v9 = *&v1[v2];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 whiteColor];
  [v11 setTextColor_];

  [*&v1[v2] setTextAlignment_];
  v13 = *&v1[v2];
  v14 = [v10 clearColor];
  [v13 setBackgroundColor_];

  v15 = *&v1[v2];
  sub_24A5D2428(0xD00000000000001DLL, 0x800000024A644410);
  v16 = sub_24A62EBE4();

  [v15 setText_];

  [v1 addSubview_];
  v17 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_subtitleLabel;
  v18 = *MEMORY[0x277D76918];
  v19 = *&v1[OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_subtitleLabel];
  v20 = [v4 preferredFontForTextStyle_];
  [v19 setFont_];

  [*&v1[v17] setAdjustsFontForContentSizeCategory_];
  [*&v1[v17] setAdjustsFontSizeToFitWidth_];
  [*&v1[v17] setNumberOfLines_];
  v21 = *&v1[v17];
  v22 = [v10 whiteColor];
  [v21 setTextColor_];

  [*&v1[v17] setTextAlignment_];
  v23 = *&v1[v17];
  v24 = [v10 clearColor];
  [v23 setBackgroundColor_];

  v25 = *&v1[v17];
  sub_24A5D2428(0xD000000000000020, 0x800000024A644430);
  v26 = sub_24A62EBE4();

  [v25 setText_];

  v27 = *&v1[v17];

  return [v1 addSubview_];
}

void sub_24A6093AC()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_imageView;
  [*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_imageView) setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_titleLabel;
  [*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_titleLabel) setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_subtitleLabel;
  [*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_subtitleLabel) setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = objc_opt_self();
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24A633810;
  v3 = [*(v0 + v1) centerXAnchor];
  v4 = [v0 centerXAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v2 + 32) = v5;
  v6 = [*(v0 + v1) centerYAnchor];
  v7 = [v0 centerYAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v2 + 40) = v8;
  sub_24A509158();
  v9 = sub_24A62ED54();

  [v30 activateConstraints_];

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24A633810;
  v11 = [*&v32[v0] centerXAnchor];
  v12 = [v0 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v10 + 32) = v13;
  v14 = [*&v32[v0] topAnchor];
  v15 = [*(v0 + v1) bottomAnchor];
  v16 = (v0 + OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_style);
  v17 = [v14 constraintEqualToAnchor:v15 constant:*(v0 + OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_style + 88)];

  *(v10 + 40) = v17;
  v18 = sub_24A62ED54();

  [v30 activateConstraints_];

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24A635FE0;
  v20 = [*(v0 + v31) topAnchor];
  v21 = [*&v32[v0] bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:v16[22]];

  *(v19 + 32) = v22;
  v23 = [*(v0 + v31) leadingAnchor];
  v24 = [v0 leadingAnchor];
  v25 = v16[16];
  v26 = [v23 constraintEqualToAnchor:v24 constant:v25];

  *(v19 + 40) = v26;
  v27 = [*(v0 + v31) trailingAnchor];
  v28 = [v0 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-v25];

  *(v19 + 48) = v29;
  v33 = sub_24A62ED54();

  [v30 activateConstraints_];
}

id sub_24A609874(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMIncorrectOrientationView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24A6099C0(uint64_t a1)
{
  v3 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMFindingViewState(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 56))(v1 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingState, 1, 1, v7);
  sub_24A62E194();
  *(v1 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingStateTimer) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_24A60BEB8(a1, v5, type metadata accessor for FMFindingSessionState);
  sub_24A626F08(v5, 10, v9);
  sub_24A529028(v9, v1 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_currentState);
  sub_24A60BEB8(a1, v5, type metadata accessor for FMFindingSessionState);
  sub_24A626F08(v5, 10, v9);
  sub_24A60BF20(a1, type metadata accessor for FMFindingSessionState);
  sub_24A529028(v9, v1 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_previousState);
  return v1;
}

uint64_t sub_24A609B94(uint64_t a1)
{
  v3 = sub_24A508FA4(&qword_27EF4FA80, &qword_24A634D40);
  MEMORY[0x28223BE20](v3 - 8);
  v140 = &v127 - v4;
  v5 = sub_24A62E1A4();
  v134 = *(v5 - 8);
  v135 = v5;
  MEMORY[0x28223BE20](v5);
  v133 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62E214();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMFindingViewState(0);
  v139 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v128 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v130 = &v127 - v14;
  MEMORY[0x28223BE20](v15);
  v129 = &v127 - v16;
  MEMORY[0x28223BE20](v17);
  v138 = &v127 - v18;
  MEMORY[0x28223BE20](v19);
  v132 = &v127 - v20;
  MEMORY[0x28223BE20](v21);
  v146 = a1;
  v143 = &v127 - v22;
  sub_24A60BEB8(a1, &v127 - v22, type metadata accessor for FMFindingViewState);
  v23 = v1 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_currentState;
  swift_beginAccess();
  v144 = v23;
  v145 = v11;
  v24 = *(v11 + 32);
  v25 = *(v23 + v24 + 96);
  v141 = v1;
  LODWORD(v142) = (v25 & 0xFC000000 | 0x2000000) != 0x6000000 && (*&v25 & 0xFF0000) == 0x30000 && *(v146 + v24 + 99) << 24 == 0x4000000;
  v26 = v144;
  v27 = v145;
  (*(v8 + 16))(v10, v144 + *(v145 + 20), v7);
  sub_24A5B7014();
  v28 = v146;
  v29 = sub_24A62EBD4();
  (*(v8 + 8))(v10, v7);
  v30 = *(v27 + 28);
  v31 = *(v26 + v30);
  v137 = v29;
  if (v31)
  {
    v131 = 0;
  }

  else
  {
    v131 = *(v28 + v30) ^ 1;
  }

  v32 = v142;
  v33 = v141;
  v34 = v143;
  if (v29)
  {
    v32 = 0;
  }

  v136 = v32;
  v35 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_lastStateUpdateTime;
  swift_beginAccess();
  v37 = v134;
  v36 = v135;
  v38 = v33 + v35;
  v39 = v133;
  (*(v134 + 16))(v133, v38, v135);
  sub_24A62E164();
  v41 = v40;
  (*(v37 + 8))(v39, v36);
  v42 = v132;
  sub_24A60BEB8(v144, v132, type metadata accessor for FMFindingViewState);
  v43 = v145;
  v44 = v42 + *(v145 + 32);
  v45 = *(v44 + 64);
  v46 = *(v44 + 80);
  v47 = *(v44 + 32);
  v159 = *(v44 + 48);
  v160 = v45;
  v161[0] = v46;
  *(v161 + 13) = *(v44 + 93);
  v48 = *(v44 + 16);
  v156 = *v44;
  v157 = v48;
  v158 = v47;
  sub_24A508CE4(&v156, v153);
  sub_24A60BF20(v42, type metadata accessor for FMFindingViewState);
  v49 = v34 + *(v43 + 32);
  v50 = *(v49 + 5);
  v162[4] = *(v49 + 4);
  *v163 = v50;
  *&v163[13] = *(v49 + 93);
  v51 = *(v49 + 3);
  v162[2] = *(v49 + 2);
  v162[3] = v51;
  v52 = *(v49 + 1);
  v162[0] = *v49;
  v162[1] = v52;
  if ((v161[1] & 0xFF000000) == 0x4000000)
  {
    LODWORD(v135) = v163[19] << 24 != 0x4000000;
    v53 = v146;
    v54 = v138;
  }

  else
  {
    v53 = v146;
    v54 = v138;
    if ((v161[1] & 0xFF000000) == 0x5000000)
    {
      v55 = v163[19] << 24 != 83886080;
    }

    else
    {
      v55 = (v161[1] & 0xFE000000) == 0x6000000 || (*&v163[16] & 0xFC000000) == 0x4000000;
    }

    LODWORD(v135) = v55;
  }

  v153[4] = v160;
  *v154 = v161[0];
  *(&v154[1] + 5) = *(v161 + 13);
  v153[0] = v156;
  v153[1] = v157;
  v153[2] = v158;
  v153[3] = v159;
  v56 = *(v49 + 3);
  *&v154[7] = *(v49 + 2);
  v57 = *v49;
  *&v154[5] = *(v49 + 1);
  *&v154[3] = v57;
  v58 = *(v49 + 4);
  v59 = *(v49 + 5);
  *(v155 + 13) = *(v49 + 93);
  v155[0] = v59;
  *&v154[11] = v58;
  *&v154[9] = v56;
  sub_24A508CE4(v162, &v147);
  sub_24A50D6A4(v153, &qword_27EF52250, qword_24A63BE30);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v60 = fabs(v41);
  v61 = sub_24A62E314();
  v62 = sub_24A506EB8(v61, qword_27EF5C118);
  sub_24A60BEB8(v53, v54, type metadata accessor for FMFindingViewState);
  v63 = sub_24A62E2F4();
  v64 = sub_24A62EF34();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = v33;
    v67 = swift_slowAlloc();
    v147 = v67;
    *v65 = 136316674;
    v68 = sub_24A628E50();
    v69 = v54;
    v70 = v62;
    v72 = v71;
    sub_24A60BF20(v69, type metadata accessor for FMFindingViewState);
    v73 = sub_24A509BA8(v68, v72, &v147);
    v62 = v70;

    *(v65 + 4) = v73;
    *(v65 + 12) = 1024;
    *(v65 + 14) = v142;
    *(v65 + 18) = 1024;
    LODWORD(v70) = v136;
    v74 = v137;
    *(v65 + 20) = (v137 & 1) == 0;
    *(v65 + 24) = 1024;
    *(v65 + 26) = v131 & 1;
    *(v65 + 30) = 1024;
    *(v65 + 32) = v70;
    *(v65 + 36) = 1024;
    *(v65 + 38) = v60 < 1.0;
    v34 = v143;
    *(v65 + 42) = 1024;
    *(v65 + 44) = v135;
    _os_log_impl(&dword_24A503000, v63, v64, "    FMFindingStateTransCoord: Enqueuing state update: %s.\n    didTransitionFromFoundToNonFound: %{BOOL}d\n    didTransitionToDifferentBeacon: %{BOOL}d\n    groupedStateTransition: %{BOOL}d\n    shouldShowAutomaticReconnection: %{BOOL}d\n    isQuickUpdate: %{BOOL}d\n    isDifferentLevel: %{BOOL}d", v65, 0x30u);
    sub_24A508C54(v67);
    v75 = v67;
    v33 = v66;
    MEMORY[0x24C21BBE0](v75, -1, -1);
    v76 = v65;
    v53 = v146;
    MEMORY[0x24C21BBE0](v76, -1, -1);

    if (!v70)
    {
      goto LABEL_22;
    }

LABEL_27:
    v86 = v129;
    sub_24A60BEB8(v53, v129, type metadata accessor for FMFindingViewState);
    v142 = v62;
    v87 = sub_24A62E2F4();
    v88 = sub_24A62EF34();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v147 = v90;
      *v89 = 136315138;
      v91 = sub_24A628E50();
      v93 = v92;
      sub_24A60BF20(v86, type metadata accessor for FMFindingViewState);
      v94 = sub_24A509BA8(v91, v93, &v147);
      v53 = v146;

      *(v89 + 4) = v94;
      _os_log_impl(&dword_24A503000, v87, v88, "FMFindingStateTransCoord: Delaying state update to: %s.", v89, 0xCu);
      sub_24A508C54(v90);
      MEMORY[0x24C21BBE0](v90, -1, -1);
      MEMORY[0x24C21BBE0](v89, -1, -1);
    }

    else
    {

      sub_24A60BF20(v86, type metadata accessor for FMFindingViewState);
    }

    v97 = v140;
    sub_24A60BEB8(v53, v140, type metadata accessor for FMFindingViewState);
    v98 = v145;
    (*(v139 + 56))(v97, 0, 1, v145);
    v99 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingState;
    swift_beginAccess();
    sub_24A60B788(v97, v33 + v99);
    swift_endAccess();
    v100 = objc_opt_self();
    v151 = sub_24A60BF88;
    v152 = v33;
    v147 = MEMORY[0x277D85DD0];
    v148 = 1107296256;
    v149 = sub_24A5BE9EC;
    v150 = &unk_285DAB1F0;
    v101 = _Block_copy(&v147);

    v102 = [v100 scheduledTimerWithTimeInterval:0 repeats:v101 block:2.0];
    _Block_release(v101);
    v103 = *(v33 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingStateTimer);
    *(v33 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingStateTimer) = v102;

    v104 = v144;
    swift_beginAccess();
    sub_24A60BF20(v34, type metadata accessor for FMFindingViewState);
    sub_24A60BEB8(v104, v34, type metadata accessor for FMFindingViewState);
    swift_endAccess();
    v105 = (v53 + *(v98 + 24));
    v106 = *v105;
    v107 = v105[1];
    v108 = (v34 + *(v98 + 60));

    *v108 = v106;
    v108[1] = v107;
    v109 = v130;
    sub_24A60BEB8(v53, v130, type metadata accessor for FMFindingViewState);
    v110 = sub_24A62E2F4();
    v111 = sub_24A62EF34();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v147 = v113;
      *v112 = 136315138;
      v114 = sub_24A628E50();
      v116 = v115;
      sub_24A60BF20(v109, type metadata accessor for FMFindingViewState);
      v117 = sub_24A509BA8(v114, v116, &v147);

      *(v112 + 4) = v117;
      _os_log_impl(&dword_24A503000, v110, v111, "FMFindingStateTransCoord: Transitional state will be displayed: %s.", v112, 0xCu);
      sub_24A508C54(v113);
      v118 = v113;
      v34 = v143;
      MEMORY[0x24C21BBE0](v118, -1, -1);
      MEMORY[0x24C21BBE0](v112, -1, -1);
    }

    else
    {

      sub_24A60BF20(v109, type metadata accessor for FMFindingViewState);
    }

    goto LABEL_37;
  }

  sub_24A60BF20(v54, type metadata accessor for FMFindingViewState);
  v74 = v137;
  if (v136)
  {
    goto LABEL_27;
  }

LABEL_22:
  if ((v60 < 1.0) & v135) == 1 && ((v74 | v131))
  {
    v77 = v128;
    sub_24A60BEB8(v53, v128, type metadata accessor for FMFindingViewState);
    v78 = sub_24A62E2F4();
    v79 = sub_24A62EF34();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v147 = v81;
      *v80 = 136315138;
      v82 = sub_24A628E50();
      v84 = v83;
      sub_24A60BF20(v77, type metadata accessor for FMFindingViewState);
      v85 = sub_24A509BA8(v82, v84, &v147);
      v53 = v146;

      *(v80 + 4) = v85;
      _os_log_impl(&dword_24A503000, v78, v79, "FMFindingStateTransCoord: Delaying State Update to: %s.", v80, 0xCu);
      sub_24A508C54(v81);
      MEMORY[0x24C21BBE0](v81, -1, -1);
      MEMORY[0x24C21BBE0](v80, -1, -1);
    }

    else
    {

      sub_24A60BF20(v77, type metadata accessor for FMFindingViewState);
    }

    v119 = v140;
    sub_24A60BEB8(v53, v140, type metadata accessor for FMFindingViewState);
    (*(v139 + 56))(v119, 0, 1, v145);
    v120 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingState;
    swift_beginAccess();
    sub_24A60B788(v119, v33 + v120);
    swift_endAccess();
    v121 = objc_opt_self();
    v151 = sub_24A60BC04;
    v152 = v33;
    v147 = MEMORY[0x277D85DD0];
    v148 = 1107296256;
    v149 = sub_24A5BE9EC;
    v150 = &unk_285DAB1C8;
    v122 = _Block_copy(&v147);

    v123 = [v121 scheduledTimerWithTimeInterval:0 repeats:v122 block:1.0];
    _Block_release(v122);
    v124 = *(v33 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingStateTimer);
    *(v33 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingStateTimer) = v123;

    v125 = v144;
    swift_beginAccess();
    sub_24A60BF20(v34, type metadata accessor for FMFindingViewState);
    sub_24A60BEB8(v125, v34, type metadata accessor for FMFindingViewState);
  }

  else
  {
    [*(v33 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingStateTimer) invalidate];
    v95 = v140;
    (*(v139 + 56))(v140, 1, 1, v145);
    v96 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingState;
    swift_beginAccess();
    sub_24A60B788(v95, v33 + v96);
  }

  swift_endAccess();
LABEL_37:
  sub_24A60AB3C(v34);
  return sub_24A60BF20(v34, type metadata accessor for FMFindingViewState);
}

uint64_t sub_24A60AB3C(_WORD *a1)
{
  v2 = v1;
  v4 = sub_24A62E1A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v42 - v12);
  v14 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_currentState;
  swift_beginAccess();
  sub_24A60BEB8(v2 + v14, v13, type metadata accessor for FMFindingViewState);
  v15 = sub_24A629198(a1, v13);
  result = sub_24A60BF20(v13, type metadata accessor for FMFindingViewState);
  if (v15)
  {
    return result;
  }

  v47 = v10;
  sub_24A60BEB8(v2 + v14, v13, type metadata accessor for FMFindingViewState);
  v17 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_previousState;
  swift_beginAccess();
  sub_24A60BBA0(v13, v2 + v17);
  swift_endAccess();
  swift_beginAccess();
  sub_24A5D0FCC(a1, v2 + v14);
  swift_endAccess();
  v18 = sub_24A62715C();
  v46 = v17;
  v19 = sub_24A62715C();
  if (v18 != 4)
  {
    if (v19 == 4 || (sub_24A60D8D4(v18, v19) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_7:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v20 = sub_24A62E314();
    sub_24A506EB8(v20, qword_27EF5C118);

    v21 = sub_24A62E2F4();
    v22 = sub_24A62EF34();
    goto LABEL_13;
  }

  if (v19 == 4)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v23 = sub_24A62E314();
  sub_24A506EB8(v23, qword_27EF5C118);

  v21 = sub_24A62E2F4();
  v22 = sub_24A62EF64();
LABEL_13:
  v24 = v22;

  if (os_log_type_enabled(v21, v24))
  {
    v25 = swift_slowAlloc();
    v45 = v4;
    v26 = v25;
    v27 = swift_slowAlloc();
    v44 = v5;
    v28 = v27;
    v48[0] = v27;
    *v26 = 136315138;
    sub_24A60BEB8(v2 + v14, v13, type metadata accessor for FMFindingViewState);
    v29 = sub_24A628E50();
    v43 = v7;
    v31 = v30;
    sub_24A60BF20(v13, type metadata accessor for FMFindingViewState);
    v32 = sub_24A509BA8(v29, v31, v48);
    v7 = v43;

    *(v26 + 4) = v32;
    _os_log_impl(&dword_24A503000, v21, v24, "🧭 FMFindingStateTransCoord: %s", v26, 0xCu);
    sub_24A508C54(v28);
    v33 = v28;
    v5 = v44;
    MEMORY[0x24C21BBE0](v33, -1, -1);
    v34 = v26;
    v4 = v45;
    MEMORY[0x24C21BBE0](v34, -1, -1);
  }

  v35 = v2 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v36 = *(v35 + 8);
    v37 = v7;
    ObjectType = swift_getObjectType();
    sub_24A60BEB8(v2 + v14, v13, type metadata accessor for FMFindingViewState);
    v39 = v47;
    sub_24A60BEB8(v2 + v46, v47, type metadata accessor for FMFindingViewState);
    v40 = ObjectType;
    v7 = v37;
    (*(v36 + 16))(v2, v13, v39, v40, v36);
    swift_unknownObjectRelease();
    sub_24A60BF20(v39, type metadata accessor for FMFindingViewState);
    sub_24A60BF20(v13, type metadata accessor for FMFindingViewState);
  }

  sub_24A62E194();
  v41 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_lastStateUpdateTime;
  swift_beginAccess();
  (*(v5 + 40))(v2 + v41, v7, v4);
  return swift_endAccess();
}

void sub_24A60B054()
{
  v1 = v0;
  v2 = sub_24A508FA4(&qword_27EF4FA80, &qword_24A634D40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = type metadata accessor for FMFindingViewState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v29 - v13);
  v15 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingState;
  swift_beginAccess();
  sub_24A60B718(v1 + v15, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24A50D6A4(v7, &qword_27EF4FA80, &qword_24A634D40);
  }

  else
  {
    sub_24A529028(v7, v14);
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v16 = sub_24A62E314();
    sub_24A506EB8(v16, qword_27EF5C118);
    sub_24A60BEB8(v14, v11, type metadata accessor for FMFindingViewState);
    v17 = sub_24A62E2F4();
    v18 = sub_24A62EF34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v30 = v19;
      v31 = swift_slowAlloc();
      v33[0] = v31;
      *v19 = 136315138;
      v20 = sub_24A628E50();
      v32 = v4;
      v22 = v21;
      sub_24A60BF20(v11, type metadata accessor for FMFindingViewState);
      v23 = sub_24A509BA8(v20, v22, v33);
      v4 = v32;

      v24 = v30;
      *(v30 + 1) = v23;
      v25 = v24;
      _os_log_impl(&dword_24A503000, v17, v18, "FMFindingStateTransCoord: Commiting delayed state update to: %s.", v24, 0xCu);
      v26 = v31;
      sub_24A508C54(v31);
      MEMORY[0x24C21BBE0](v26, -1, -1);
      MEMORY[0x24C21BBE0](v25, -1, -1);
    }

    else
    {

      sub_24A60BF20(v11, type metadata accessor for FMFindingViewState);
    }

    sub_24A60AB3C(v14);
    (*(v9 + 56))(v4, 1, 1, v8);
    swift_beginAccess();
    sub_24A60B788(v4, v1 + v15);
    swift_endAccess();
    v27 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingStateTimer;
    [*(v1 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingStateTimer) invalidate];
    sub_24A60BF20(v14, type metadata accessor for FMFindingViewState);
    v28 = *(v1 + v27);
    *(v1 + v27) = 0;
  }
}

uint64_t sub_24A60B43C()
{
  sub_24A60BF20(v0 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_currentState, type metadata accessor for FMFindingViewState);
  sub_24A50D6A4(v0 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_pendingState, &qword_27EF4FA80, &qword_24A634D40);
  sub_24A60BF20(v0 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_previousState, type metadata accessor for FMFindingViewState);
  v1 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_lastStateUpdateTime;
  v2 = sub_24A62E1A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24A52358C(v0 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_delegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFindingStateTransitionCoordinator(uint64_t a1)
{
  result = qword_27EF52238;
  if (!qword_27EF52238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A60B5A8(uint64_t a1)
{
  type metadata accessor for FMFindingViewState(319);
  if (v1 <= 0x3F)
  {
    sub_24A60B6C0(319);
    if (v2 <= 0x3F)
    {
      sub_24A62E1A4();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24A60B6C0(uint64_t a1)
{
  if (!qword_27EF52248)
  {
    type metadata accessor for FMFindingViewState(255);
    v1 = sub_24A62F1C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF52248);
    }
  }
}

uint64_t sub_24A60B718(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF4FA80, &qword_24A634D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A60B788(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF4FA80, &qword_24A634D40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A60B7F8(uint64_t a1, unsigned __int16 *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_currentState;
  swift_beginAccess();
  sub_24A60BEB8(v3 + v15, v11, type metadata accessor for FMFindingViewState);
  sub_24A628644(a2, v14);
  sub_24A60BF20(v11, type metadata accessor for FMFindingViewState);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v16 = sub_24A62E314();
  sub_24A506EB8(v16, qword_27EF5C118);
  sub_24A60BEB8(v14, v8, type metadata accessor for FMFindingViewState);
  v17 = sub_24A62E2F4();
  v18 = sub_24A62EF34();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v21 = sub_24A628E50();
    v23 = v22;
    sub_24A60BF20(v8, type metadata accessor for FMFindingViewState);
    v24 = sub_24A509BA8(v21, v23, &v28);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_24A503000, v17, v18, "FMFindingStateTransCoord: Received new session state: %s.", v19, 0xCu);
    sub_24A508C54(v20);
    MEMORY[0x24C21BBE0](v20, -1, -1);
    MEMORY[0x24C21BBE0](v19, -1, -1);
  }

  else
  {

    sub_24A60BF20(v8, type metadata accessor for FMFindingViewState);
  }

  v25 = *(a1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v26 = (v25 >> 13) & 3;
  if (v26 && (v26 == 1 || (v25 & 0x80000000) == 0))
  {
    sub_24A609B94(v14);
  }

  else
  {
    sub_24A60AB3C(v14);
  }

  return sub_24A60BF20(v14, type metadata accessor for FMFindingViewState);
}

void *sub_24A60BAFC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_24A60BB70@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24A60BBA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingViewState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_24A60BC08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24A60BC20(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMFindingSession.Error(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v10 = sub_24A62E314();
  sub_24A506EB8(v10, qword_27EF5C118);
  sub_24A60BEB8(a1, v9, type metadata accessor for FMFindingSession.Error);
  v11 = sub_24A62E2F4();
  v12 = sub_24A62EF64();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    sub_24A60BEB8(v9, v6, type metadata accessor for FMFindingSession.Error);
    v15 = sub_24A62EC44();
    v17 = v16;
    sub_24A60BF20(v9, type metadata accessor for FMFindingSession.Error);
    v18 = sub_24A509BA8(v15, v17, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_24A503000, v11, v12, "FMFindingStateTransCoord: Forwarding error from finding session: %s.", v13, 0xCu);
    sub_24A508C54(v14);
    MEMORY[0x24C21BBE0](v14, -1, -1);
    MEMORY[0x24C21BBE0](v13, -1, -1);
  }

  else
  {

    sub_24A60BF20(v9, type metadata accessor for FMFindingSession.Error);
  }

  v19 = v2 + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(v21 + 24))(v2, a1, ObjectType, v21);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A60BEB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A60BF20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_24A60BF8C(double a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value;
  LODWORD(a1) = *&v1[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value];
  [*&v1[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_slider] setValue_];
  [*&v2[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepper] setValue_];
  v4 = roundf(fabsf(log10f(*&v1[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepValue])));
  if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.2234e18)
  {
    v5 = sub_24A62F614();
    MEMORY[0x24C21A5D0](v5);

    MEMORY[0x24C21A5D0](102, 0xE100000000000000);
    v6 = *&v1[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_valueLabel];
    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v7 = swift_allocObject();
    v8 = *&v1[v3];
    v9 = MEMORY[0x277D83A90];
    *(v7 + 16) = xmmword_24A633830;
    v10 = MEMORY[0x277D83B08];
    *(v7 + 56) = v9;
    *(v7 + 64) = v10;
    *(v7 + 32) = v8;
    sub_24A62EC24();

    v11 = sub_24A62EBE4();

    [v6 setText_];

    [v2 sendActionsForControlEvents_];
    return;
  }

LABEL_7:
  __break(1u);
}

char *sub_24A60C168(uint64_t a1, uint64_t a2, float a3, float a4, float a5)
{
  v11 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_titleLabel;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v12 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_valueLabel;
  *&v5[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v13 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_slider;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x277D75A30]) init];
  v14 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepper;
  *&v5[v14] = [objc_allocWithZone(MEMORY[0x277D75AC0]) init];
  v15 = &v5[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_title];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v5[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepValue] = 1008981770;
  *&v5[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_minimumValue] = 0;
  *&v5[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_maximumValue] = 1065353216;
  *&v5[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value] = 0;
  v28.receiver = v5;
  v28.super_class = type metadata accessor for FMFindingDebugSlider();
  v16 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_24A60C3EC();
  v17 = &v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_title];
  *v17 = a1;
  *(v17 + 1) = a2;

  v18 = *&v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_titleLabel];

  v19 = sub_24A62EBE4();
  [v18 setText_];

  *&v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value] = a3;
  sub_24A60BF8C(v20);
  v21 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_minimumValue;
  *&v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_minimumValue] = a3;
  v22 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_slider;
  *&v23 = a3;
  [*&v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_slider] setMinimumValue_];
  v24 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepper;
  [*&v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepper] setMinimumValue_];
  v25 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_maximumValue;
  *&v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_maximumValue] = a4;
  *&v26 = a4;
  [*&v16[v22] setMaximumValue_];
  [*&v16[v24] setMaximumValue_];
  *&v16[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepValue] = a5;
  [*&v16[v24] setStepValue_];

  return v16;
}

void sub_24A60C3EC()
{
  [v0 setLayoutMargins_];
  v61 = v0;
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_titleLabel];
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  v60 = v1;
  [v1 setFont_];

  v3 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v5 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v3 setAxis_];
  [v4 setAxis_];
  [v5 setAxis_];
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A635FE0;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  v7 = inited & 0xC000000000000001;
  v8 = inited & 0xFFFFFFFFFFFFFF8;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

  for (i = v9; ; i = MEMORY[0x24C21ACB0](0, inited))
  {
    v13 = i;
    [i setSpacing_];

    if (v7)
    {
      v14 = MEMORY[0x24C21ACB0](1, inited);
    }

    else
    {
      if (*(v8 + 16) < 2uLL)
      {
        goto LABEL_33;
      }

      v14 = *(inited + 40);
    }

    v15 = v14;
    [v14 setSpacing_];

    if (v7)
    {
      break;
    }

    if (*(v8 + 16) >= 3uLL)
    {
      v16 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v16 = MEMORY[0x24C21ACB0](2, inited);
LABEL_10:
  v17 = v16;
  [v16 setSpacing_];

  swift_setDeallocating();
  swift_arrayDestroy();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A63AC60;
  *(inited + 32) = v9;
  v57 = (inited + 32);
  *(inited + 40) = v10;
  *(inited + 48) = v11;
  *(inited + 56) = v60;
  v18 = *&v61[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_valueLabel];
  *(inited + 64) = v18;
  v19 = *&v61[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_slider];
  *(inited + 72) = v19;
  v20 = *&v61[OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepper];
  *(inited + 80) = v20;
  v8 = inited & 0xC000000000000001;
  v7 = inited & 0xFFFFFFFFFFFFFF8;
  v9 = v9;
  v10 = v10;
  v59 = v11;
  v21 = v60;
  v11 = v18;
  v60 = v19;
  v22 = v20;
  if ((inited & 0xC000000000000001) == 0)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = v9;
      goto LABEL_13;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = MEMORY[0x24C21ACB0](0, inited);
LABEL_13:
  v24 = v23;
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];

  if (v8)
  {
    v25 = MEMORY[0x24C21ACB0](1, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      goto LABEL_32;
    }

    v25 = *(inited + 40);
  }

  v26 = v25;
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];

  if (v8)
  {
    v27 = MEMORY[0x24C21ACB0](2, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
      goto LABEL_32;
    }

    v27 = *(inited + 48);
  }

  v28 = v27;
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];

  if (v8)
  {
    v29 = MEMORY[0x24C21ACB0](3, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
    {
      goto LABEL_32;
    }

    v29 = *(inited + 56);
  }

  v30 = v29;
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];

  if (v8)
  {
    v31 = MEMORY[0x24C21ACB0](4, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
    {
      goto LABEL_32;
    }

    v31 = *(inited + 64);
  }

  v32 = v31;
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];

  if (v8)
  {
    v33 = MEMORY[0x24C21ACB0](5, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
    {
      goto LABEL_32;
    }

    v33 = *(inited + 72);
  }

  v34 = v33;
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];

  if (!v8)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 7uLL)
    {
      v35 = v11;
      v36 = *(inited + 80);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v35 = v11;
  v36 = MEMORY[0x24C21ACB0](6, inited);
LABEL_31:
  v37 = v36;
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];

  swift_setDeallocating();
  swift_arrayDestroy();
  [v10 addArrangedSubview_];
  v38 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v10 addArrangedSubview_];

  [v10 addArrangedSubview_];
  [v59 addArrangedSubview_];
  [v59 addArrangedSubview_];
  [v9 addArrangedSubview_];
  [v9 addArrangedSubview_];
  [v61 addSubview_];
  v58 = objc_opt_self();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_24A633820;
  v40 = [v9 topAnchor];
  v62 = v22;
  v41 = [v61 layoutMarginsGuide];
  v42 = [v41 topAnchor];

  v43 = [v40 constraintEqualToAnchor_];
  *(v39 + 32) = v43;
  v44 = [v9 bottomAnchor];
  v45 = [v61 layoutMarginsGuide];
  v46 = [v45 bottomAnchor];

  v47 = [v44 constraintEqualToAnchor_];
  *(v39 + 40) = v47;
  v48 = [v9 leadingAnchor];
  v49 = [v61 layoutMarginsGuide];
  v50 = [v49 leadingAnchor];

  v51 = [v48 constraintEqualToAnchor_];
  *(v39 + 48) = v51;
  v52 = [v9 trailingAnchor];

  v53 = [v61 layoutMarginsGuide];
  v54 = [v53 trailingAnchor];

  v55 = [v52 constraintEqualToAnchor_];
  *(v39 + 56) = v55;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v56 = sub_24A62ED54();

  [v58 activateConstraints_];

  [v60 addTarget:v61 action:sel_handleValueChangedWithSender_ forControlEvents:4096];
  [v62 addTarget:v61 action:sel_handleValueChangedWithSender_ forControlEvents:4096];
}

void sub_24A60CC1C(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepper);
  sub_24A50D7EC(0, &qword_27EF522A0, 0x277D753C8);
  v4 = v3;
  v5 = sub_24A62F164();

  if (v5)
  {
    [v4 value];
    *&v6 = v6;
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_slider);
    v8 = sub_24A62F164();

    if ((v8 & 1) == 0)
    {
      return;
    }

    [v7 value];
    *&v6 = *(v2 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepValue) * roundf(*&v6 / *(v2 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepValue));
  }

  *(v2 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value) = LODWORD(v6);

  sub_24A60BF8C(v6);
}

id sub_24A60CDC4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMFindingDebugSlider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_24A60CE9C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_valueLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_slider;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75A30]) init];
  v4 = OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepper;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75AC0]) init];
  v5 = (v0 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_title);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_stepValue) = 1008981770;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_minimumValue) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_maximumValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value) = 0;
  sub_24A62F444();
  __break(1u);
}

void sub_24A60CFCC(void *a1, double a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = &v2[OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_brightness];
  *v4 = a2;
  *(v4 + 8) = 0;
  v5 = &v2[OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_previousBrightness];
  if ((v2[OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_previousBrightness + 8] & 1) != 0 || vabdd_f64(*v5, a2) >= 2.22044605e-16)
  {
    *v5 = a2;
    *(v5 + 8) = 0;
    v9 = 1.0;
    v10[0] = 1.0;
    v7 = 1.0;
    v8 = 1.0;
    [a1 getRed:v10 green:&v9 blue:&v8 alpha:&v7];
    v9 = v9 * a2;
    v10[0] = v10[0] * a2;
    v8 = v8 * a2;
    v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v10[0] green:v9 blue:v8 alpha:v7];
    [v2 setColor_];
  }
}

id sub_24A60D464(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24A60D4D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF656C62616C6961;
  v3 = 0x76616E755F627775;
  v4 = a1;
  v5 = 0x800000024A63CE70;
  v6 = 0xD00000000000001CLL;
  if (a1 == 5)
  {
    v6 = 0xD000000000000012;
    v5 = 0x800000024A63CE50;
  }

  v7 = 0x800000024A63CE30;
  v8 = 0xD000000000000017;
  if (a1 != 3)
  {
    v8 = 0x73736563637573;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v9 = v7;
  }

  else
  {
    v8 = v6;
    v9 = v5;
  }

  v10 = 0x800000024A63CDF0;
  if (v4 == 1)
  {
    v11 = 0xD000000000000012;
  }

  else
  {
    v11 = 0xD000000000000010;
  }

  if (v4 != 1)
  {
    v10 = 0x800000024A63CE10;
  }

  if (v4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x76616E755F627775;
  }

  if (v4)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xEF656C62616C6961;
  }

  if (v4 <= 2)
  {
    v14 = v12;
  }

  else
  {
    v14 = v8;
  }

  if (v4 <= 2)
  {
    v15 = v13;
  }

  else
  {
    v15 = v9;
  }

  if (a2 > 2u)
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v2 = 0x800000024A63CE30;
        if (v14 != 0xD000000000000017)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v2 = 0xE700000000000000;
      v3 = 0x73736563637573;
      goto LABEL_40;
    }

    if (a2 != 5)
    {
      v2 = 0x800000024A63CE70;
      if (v14 != 0xD00000000000001CLL)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v2 = 0x800000024A63CE50;
LABEL_35:
    if (v14 != 0xD000000000000012)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      v2 = 0x800000024A63CE10;
      if (v14 != 0xD000000000000010)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v2 = 0x800000024A63CDF0;
    goto LABEL_35;
  }

LABEL_40:
  if (v14 != v3)
  {
LABEL_44:
    v16 = sub_24A62F634();
    goto LABEL_45;
  }

LABEL_41:
  if (v15 != v2)
  {
    goto LABEL_44;
  }

  v16 = 1;
LABEL_45:

  return v16 & 1;
}

uint64_t sub_24A60D6B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006E6F6974;
  v3 = 0x63656E6E6F436F6ELL;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x6C616974696E69;
  if (a1 != 6)
  {
    v6 = 0x726F727265;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1918985582;
  if (a1 != 4)
  {
    v8 = 0x646E756F66;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 6517345;
  if (a1 != 2)
  {
    v10 = 0x776F727261;
    v9 = 0xE500000000000000;
  }

  v11 = 0xE300000000000000;
  v12 = 7496038;
  if (!a1)
  {
    v12 = 0x63656E6E6F436F6ELL;
    v11 = 0xEC0000006E6F6974;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x6C616974696E69)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v13 != 0x726F727265)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE400000000000000;
      if (v13 != 1918985582)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x646E756F66)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE300000000000000;
        if (v13 != 6517345)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE500000000000000;
      v3 = 0x776F727261;
    }

    else if (a2)
    {
      v2 = 0xE300000000000000;
      if (v13 != 7496038)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_24A62F634();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_24A60D8D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF65646F4D6E6F69;
  v3 = 0x74617262696C6163;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0x800000024A63DD60;
    }

    else
    {
      v6 = 0x800000024A63DD40;
    }

    v5 = 0xD000000000000010;
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x74617262696C6163;
    }

    if (v4)
    {
      v6 = 0x800000024A63DD80;
    }

    else
    {
      v6 = 0xEF65646F4D6E6F69;
    }
  }

  v7 = 0x800000024A63DD60;
  if (a2 != 2)
  {
    v7 = 0x800000024A63DD40;
  }

  if (a2)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000024A63DD80;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24A62F634();
  }

  return v10 & 1;
}

uint64_t sub_24A60D9F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656ELL;
  v3 = 0x6F6C61646E617473;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1702060387;
    }

    else
    {
      v5 = 0x6F6C61646E617473;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEA0000000000656ELL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE700000000000000;
    v5 = 0x6475427466656CLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6475427468676972;
    }

    else
    {
      v5 = 0x636972656E6567;
    }

    if (v4 == 3)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x6475427466656CLL;
  v9 = 0xE800000000000000;
  v10 = 0x6475427468676972;
  if (a2 != 3)
  {
    v10 = 0x636972656E6567;
    v9 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 1702060387;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_24A62F634();
  }

  return v13 & 1;
}

uint64_t sub_24A60DB6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701869940;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x646E657274;
    }

    else
    {
      v4 = 1953393000;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D6572757361656DLL;
    }

    else
    {
      v4 = 1701869940;
    }

    if (v3)
    {
      v5 = 0xEB00000000746E65;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x646E657274;
  if (a2 != 2)
  {
    v8 = 1953393000;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x6D6572757361656DLL;
    v6 = 0xEB00000000746E65;
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
    v11 = sub_24A62F634();
  }

  return v11 & 1;
}

uint64_t (*sub_24A60DCA0@<X0>(uint64_t (*result)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>))(__int128 *)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_24A508AE4(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return sub_24A508C54(v9);
      }

      if (v8)
      {
        return sub_24A508CA0(v9, a3);
      }

      result = sub_24A508C54(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_24A60DD58(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));

      v13 = a1(&v14);
      if (v3)
      {
        break;
      }

      if (v13)
      {
        goto LABEL_12;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
LABEL_12:

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void *sub_24A60DE9C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C21ACB0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

char *sub_24A60DFB0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24A62F464();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_24A58D8C8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x24C21ACB0](i, a1);
        sub_24A50D7EC(0, &qword_27EF502B0, 0x277CD9EA0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_24A58D8C8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_24A582FBC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_24A50D7EC(0, &qword_27EF502B0, 0x277CD9EA0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_24A58D8C8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_24A582FBC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A60E1AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_24A58D908(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_24A508AE4(v4, v8);
      sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
      sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24A58D908((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_24A508CA0(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t (*sub_24A60E2E4(uint64_t (*result)(void *), uint64_t a2, uint64_t a3, void (*a4)(void *, _BYTE *), void (*a5)(BOOL, uint64_t, uint64_t)))(void *)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = a4;
    v9 = result;
    v10 = 0;
    v11 = a3 + 32;
    v12 = MEMORY[0x277D84F90];
    v18 = result;
    while (v10 < *(a3 + 16))
    {
      sub_24A508AE4(v11, v21);
      v13 = v9(v21);
      if (v5)
      {
        sub_24A508C54(v21);

        goto LABEL_15;
      }

      if (v13)
      {
        v8(v21, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          a5(0, *(v12 + 16) + 1, 1);
          v12 = v22;
        }

        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          a5(v15 > 1, v16 + 1, 1);
          v12 = v22;
        }

        *(v12 + 16) = v16 + 1;
        v8 = a4;
        result = (a4)(v20, v12 + 40 * v16 + 32);
        v9 = v18;
      }

      else
      {
        result = sub_24A508C54(v21);
      }

      ++v10;
      v11 += 40;
      if (v7 == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
LABEL_15:

    return v12;
  }

  return result;
}

uint64_t (*sub_24A60E484(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = a3;
  v5 = result;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = MEMORY[0x277D84F90];
  v18 = result;
  if (v10)
  {
LABEL_10:
    while (1)
    {
      sub_24A508AE4(*(v4 + 56) + 40 * (__clz(__rbit64(v10)) | (v6 << 6)), v20);
      sub_24A508CA0(v20, v21);
      v14 = v5(v21);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;
      if (v14)
      {
        sub_24A508CA0(v21, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A58D908(0, *(v12 + 16) + 1, 1);
          v12 = v22;
        }

        v17 = *(v12 + 16);
        v16 = *(v12 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_24A58D908((v16 > 1), v17 + 1, 1);
          v12 = v22;
        }

        *(v12 + 16) = v17 + 1;
        result = sub_24A508CA0(v20, v12 + 40 * v17 + 32);
        v4 = a3;
        v5 = v18;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = sub_24A508C54(v21);
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    sub_24A508C54(v21);

LABEL_19:

    return v12;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_19;
      }

      v10 = *(v7 + 8 * v13);
      ++v6;
      if (v10)
      {
        v6 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A60E654(uint64_t a1, uint64_t a2, unsigned __int16 *a3, char *a4, void *a5)
{
  v6 = v5;
  v56 = a5;
  v67 = a4;
  v10 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v49[-v11];
  v54 = sub_24A62E214();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v14 - 8);
  v51 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a3;
  v17 = v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession____lazy_storage___findingLocalizer;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v18 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession;
  *(v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession) = 0;
  v19 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_uwbAvailabilityHelper;
  *(v6 + v19) = [objc_allocWithZone(type metadata accessor for FMUWBAvailabilityHelper()) init];
  v20 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_stateUpdateLock;
  sub_24A508FA4(&unk_27EF52470, &unk_24A63C130);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v6 + v20) = v21;
  *(v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (*(a1 + 16))
  {
    v22 = v67;
    v50 = v16;
    LOWORD(v57[0]) = v16;
    v23 = &unk_27EF522E0;
    sub_24A50D63C(a2, &v64, &unk_27EF522E0, qword_24A637660);
    v55 = a2;
    sub_24A50D63C(a2, &v61, &unk_27EF522E0, qword_24A637660);
    v24 = v62;
    if (v62)
    {
      v25 = v63;
      v23 = sub_24A50A204(&v61, v62);
      (*(v25 + 16))(v24, v25);
      v26 = v53;
      v27 = v54;
      v53[7](v12, 0, 1, v54);
      sub_24A508C54(&v61);
      if ((*(v26 + 6))(v12, 1, v27) != 1)
      {
        v28 = v22;
        v29 = v52;
        (*(v26 + 4))(v52, v12, v27);
        goto LABEL_14;
      }
    }

    else
    {
      sub_24A50D6A4(&v61, &unk_27EF522E0, qword_24A637660);
      v26 = v53;
      v27 = v54;
      v53[7](v12, 1, 1, v54);
    }

    if (!*(a1 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    sub_24A508AE4(a1 + 32, &v61);
    v35 = v62;
    v36 = v63;
    sub_24A50A204(&v61, v62);
    v37 = *(v36 + 16);
    v38 = v36;
    v29 = v52;
    v37(v35, v38);
    v28 = v22;
    sub_24A508C54(&v61);
    if ((*(v26 + 6))(v12, 1, v27) != 1)
    {
      sub_24A50D6A4(v12, &unk_27EF4FEE0, &qword_24A6369F0);
    }

LABEL_14:
    v39 = v51;
    sub_24A5AC844(v57, a1, &v64, v29, v28, v51);
    sub_24A61C230(v39, v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state);
    *(v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType) = v50;
    v40 = *(v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession);
    v41 = v56;
    *(v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession) = v56;
    v26 = v41;

    v42 = v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    v43 = swift_beginAccess();
    v44 = *(v42 + 8);
    MEMORY[0x28223BE20](v43);
    v45 = v55;
    *&v49[-16] = v55;

    v24 = sub_24A60E484(sub_24A61C294, &v49[-32], v44);
    v22 = &v59;
    sub_24A50D63C(v45, v60, &unk_27EF522E0, qword_24A637660);
    sub_24A50D63C(v60, &v64, &unk_27EF522E0, qword_24A637660);
    v57[1] = v65;
    v57[0] = v64;
    v58 = v66;
    if (!*(&v65 + 1))
    {
      sub_24A50D6A4(v57, &unk_27EF522E0, qword_24A637660);
      v23 = MEMORY[0x277D84F90];
LABEL_20:
      sub_24A50D6A4((v22 + 32), &unk_27EF522E0, qword_24A637660);
      *&v64 = v23;
      sub_24A5E5DDC(v24);

      v34 = v55;
      goto LABEL_21;
    }

    sub_24A508CA0(v57, &v61);
    v23 = MEMORY[0x277D84F90];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_16:
      v47 = v23[2];
      v46 = v23[3];
      if (v47 >= v46 >> 1)
      {
        v23 = sub_24A617B34((v46 > 1), v47 + 1, 1, v23, &unk_27EF4FF40, &unk_24A635E60, &unk_27EF501B0, &unk_24A633B00);
      }

      v23[2] = v47 + 1;
      sub_24A508CA0(&v61, &v23[5 * v47 + 4]);
      goto LABEL_20;
    }

LABEL_23:
    v23 = sub_24A617B34(0, v23[2] + 1, 1, v23, &unk_27EF4FF40, &unk_24A635E60, &unk_27EF501B0, &unk_24A633B00);
    goto LABEL_16;
  }

  v55 = v20;

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v30 = sub_24A62E314();
  sub_24A506EB8(v30, qword_27EF5C118);
  v31 = sub_24A62E2F4();
  v32 = sub_24A62EF44();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_24A503000, v31, v32, "🧭 FMFindingSession: Empty findables list passed in.", v33, 2u);
    MEMORY[0x24C21BBE0](v33, -1, -1);
  }

  type metadata accessor for FMFindingSession.Error(0);
  sub_24A61BDB4(&qword_27EF4F668, type metadata accessor for FMFindingSession.Error, &unk_24A63C080);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_24A50D6A4(v17, &qword_27EF522C8, &qword_24A63BF10);

  sub_24A52358C(v6 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_delegate);
  type metadata accessor for FMFindingSession(0);
  swift_deallocPartialClassInstance();
  v34 = a2;
LABEL_21:
  sub_24A50D6A4(v34, &unk_27EF522E0, qword_24A637660);
  return v6;
}

uint64_t FMFindingSession.deinit()
{
  v1 = v0;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C118);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A503000, v3, v4, "FMFindingSession deinit", v5, 2u);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  sub_24A61B070(v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state, type metadata accessor for FMFindingSessionState);
  sub_24A50D6A4(v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession____lazy_storage___findingLocalizer, &qword_27EF522C8, &qword_24A63BF10);

  sub_24A52358C(v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_delegate);
  return v1;
}

uint64_t sub_24A60F078()
{
  v1 = sub_24A62E214();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A61C0D4(v0 + v8, v7, type metadata accessor for FMFindingSessionState);
  v9 = *(v7 + 1);
  if (*(v9 + 16) && (v10 = sub_24A515AC8(&v7[*(v5 + 36)]), (v11 & 1) != 0))
  {
    sub_24A508AE4(*(v9 + 56) + 40 * v10, v17);
    sub_24A508CA0(v17, v18);
    sub_24A61B070(v7, type metadata accessor for FMFindingSessionState);
    v12 = v19;
    v13 = v20;
    sub_24A50A204(v18, v19);
    (*(v13 + 16))(v12, v13);
    v14 = sub_24A62E1C4();
    (*(v2 + 8))(v4, v1);
    sub_24A508C54(v18);
    return v14;
  }

  else
  {
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A60F2CC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A61C0D4(v1 + v6, v5, type metadata accessor for FMFindingSessionState);
  v7 = *(v5 + 1);
  if (*(v7 + 16) && (v8 = sub_24A515AC8(&v5[*(v3 + 36)]), (v9 & 1) != 0))
  {
    sub_24A508AE4(*(v7 + 56) + 40 * v8, v11);
    sub_24A508CA0(v11, a1);
    return sub_24A61B070(v5, type metadata accessor for FMFindingSessionState);
  }

  else
  {
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A60F438(unsigned __int16 *a1)
{
  v3 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A61C1CC(a1, v1 + v6);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A61C0D4(v1 + v6, v5, type metadata accessor for FMFindingSessionState);
    sub_24A60B7F8(v1, v5);
    swift_unknownObjectRelease();
    sub_24A61B070(a1, type metadata accessor for FMFindingSessionState);
    a1 = v5;
  }

  return sub_24A61B070(a1, type metadata accessor for FMFindingSessionState);
}

void sub_24A60F570(char **a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession____lazy_storage___findingLocalizer;
  swift_beginAccess();
  sub_24A50D63C(v1 + v3, &v15, &qword_27EF522C8, &qword_24A63BF10);
  if (v16)
  {
    sub_24A508CA0(&v15, a1);
    return;
  }

  sub_24A50D6A4(&v15, &qword_27EF522C8, &qword_24A63BF10);
  v4 = v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  v5 = *(v4 + 8);
  v6 = *(v5 + 16);
  if (v6)
  {
    v13 = sub_24A5E4FC4(*(v5 + 16), 0);
    v14 = sub_24A5CE86C(&v15, (v13 + 4), v6, v5);
    v7 = v15;

    sub_24A55B6D4(v7);
    if (v14 != v6)
    {
      __break(1u);
      return;
    }

    v8 = v13;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  LOWORD(v15) = *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v9 = *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession);
  v10 = type metadata accessor for FMFindingLocalizer();
  objc_allocWithZone(v10);
  v11 = v9;

  v12 = sub_24A54A8E8(v8, &v15, v9, v1, &off_285DAB2A0);
  a1[3] = v10;
  a1[4] = &off_285DA5430;
  *a1 = v12;
  sub_24A508AE4(a1, &v15);
  swift_beginAccess();
  sub_24A61C13C(&v15, v1 + v3);
  swift_endAccess();
}

void sub_24A60F768(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  v11 = *(v10 + 16);

  sub_24A616CC8(a1, v11);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v14 = sub_24A62E314();
    sub_24A506EB8(v14, qword_27EF5C118);

    v15 = sub_24A62E2F4();
    v16 = sub_24A62EF64();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v2;
      v32 = v18;
      v19 = v18;
      *v17 = 136315138;
      sub_24A508FA4(&qword_27EF51130, &qword_24A6389E0);
      v30 = v4;
      sub_24A5ABA0C();
      v20 = sub_24A62EE74();
      v22 = sub_24A509BA8(v20, v21, &v32);
      v4 = v30;

      *(v17 + 4) = v22;
      _os_log_impl(&dword_24A503000, v15, v16, "🧭 FMFindingSession: Updating grouped items: %s", v17, 0xCu);
      sub_24A508C54(v19);
      v23 = v19;
      v2 = v31;
      MEMORY[0x24C21BBE0](v23, -1, -1);
      MEMORY[0x24C21BBE0](v17, -1, -1);
    }

    v24 = *(v2 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_stateUpdateLock);
    os_unfair_lock_lock(v24 + 4);
    sub_24A61C0D4(v10, v6, type metadata accessor for FMFindingSessionState);
    v25 = *v6;
    v26 = *(v6 + 1);
    sub_24A50D63C((v6 + 24), (v9 + 24), &unk_27EF522E0, qword_24A637660);
    v27 = *(v4 + 36);
    v28 = sub_24A62E214();
    (*(*(v28 - 8) + 16))(&v9[v27], &v6[v27], v28);
    v29 = *(v6 + 8);

    sub_24A61B070(v6, type metadata accessor for FMFindingSessionState);
    *v9 = v25;
    *(v9 + 8) = v29;
    *(v9 + 1) = v26;
    *(v9 + 2) = a1;

    os_unfair_lock_unlock(v24 + 4);
    sub_24A61C0D4(v9, v6, type metadata accessor for FMFindingSessionState);
    sub_24A60F438(v6);
    sub_24A6104A8();
    sub_24A61B070(v9, type metadata accessor for FMFindingSessionState);
  }
}